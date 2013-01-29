###
    X-Wing Squad Builder
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
###
exportObj = exports ? this

class exportObj.SquadBuilderBackend
    ###
        Usage:

            rebel_builder = new SquadBuilder
                faction: 'Rebel Alliance'
                ...
            empire_builder = new SquadBuilder
                faction: 'Galactic Empire'
                ...
            backend = new SquadBuilderBackend
                server: 'https://xwing.example.com'
                builders: [ rebel_builder, empire_builder ]
                login_logout_button: '#login-logout'

    ###
    constructor: (args) ->
        # Might as well do this right away
        $.ajaxSetup
            dataType: "json" # Because Firefox sucks for some reason
            xhrFields:
                withCredentials: true

        # args
        @server = args.server
        @builders = args.builders
        @login_logout_button = $ args.login_logout_button
        @authenticated = false
        @ui_ready = false
        @oauth_window = null

        @method_metadata =
            google_oauth2:
                icon: 'icon-google-plus-sign'
                text: 'Google'
            facebook:
                icon: 'icon-facebook-sign'
                text: 'Facebook'
            twitter:
                icon: 'icon-twitter-sign'
                text: 'Twitter'

        @setupHandlers()
        @setupUI()

        # Check initial authentication status
        @authenticate () =>
            @login_logout_button.removeClass 'hidden'

        # Finally, hook up the builders
        for builder in @builders
            builder.setBackend this

        @updateAuthenticationVisibility()

    updateAuthenticationVisibility: () ->
        if @authenticated
            $('.show-authenticated').show()
            $('.hide-authenticated').hide()
        else
            $('.show-authenticated').hide()
            $('.hide-authenticated').show()

    save: (serialized, id=null, name, faction, additional_data={}, cb) ->
        if serialized == ""
            cb
                id: null
                success: false
                error: "You cannot save an empty squad"
        else if $.trim(name) == ""
            cb
                id: null
                success: false
                error: "Squad name cannot be empty"
        else if not faction? or faction == ""
            throw "Faction unspecified to save()"
        else
            post_args =
                name: $.trim(name)
                faction: $.trim(faction)
                serialized: serialized
                additional_data: additional_data
            if id?
                post_url = "#{@server}/squads/#{id}"
            else
                post_url = "#{@server}/squads/new"
                post_args['_method'] = 'put'
            $.post post_url, post_args, (data, textStatus, jqXHR) =>
                cb
                    id: data.id
                    success: data.success
                    error: data.error

    delete: (id, cb) ->
        post_args =
            '_method': 'delete'
        $.post "#{@server}/squads/#{id}", post_args, (data, textStatus, jqXHR) =>
            cb
                success: data.success
                error: data.error

    list: (builder, all=false) ->
        # TODO: Pagination
        if all
            @squad_list_modal.find('.modal-header h3').text("Everyone's #{builder.faction} Squads")
        else
            @squad_list_modal.find('.modal-header h3').text("Your #{builder.faction} Squads")
        list_ul = $ @squad_list_modal.find('ul.squad-list')
        list_ul.text ''
        list_ul.hide()
        loading_pane = $ @squad_list_modal.find('p.squad-list-loading')
        loading_pane.show()
        @squad_list_modal.modal 'show'

        url = if all then "#{@server}/all" else "#{@server}/squads/list"
        $.get url, (data, textStatus, jqXHR) =>
            if data[builder.faction].length == 0
                list_ul.append $.trim """
                    <li>You have no squads saved.  Go save one!</li>
                """
            else
                for squad in data[builder.faction]
                    li = $ document.createElement('LI')
                    li.data 'squad', squad
                    li.data 'builder', builder
                    list_ul.append li
                    li.append $.trim """
                        <div class="row-fluid">
                            <div class="span9">
                                <h4>#{squad.name}</h4>
                            </div>
                            <div class="span3">
                                <h5>#{squad.additional_data.points} Points</h5>
                            </div>
                        </div>
                        <div class="row-fluid">
                            <div class="span10">
                                #{squad.additional_data.description}
                            </div>
                            <div class="span2">
                                <button class="btn load-squad">Load</button>
                            </div>
                        </div>
                    """
                    li.find('button.load-squad').click (e) =>
                        e.preventDefault()
                        button = $ e.target
                        li = button.closest 'li'
                        builder = li.data('builder')
                        @squad_list_modal.modal 'hide'
                        if builder.current_squad.dirty
                            @warnUnsaved builder, () =>
                                builder.container.trigger 'xwing-backend:squadLoadRequested', li.data('squad')
                        else
                            builder.container.trigger 'xwing-backend:squadLoadRequested', li.data('squad')

            loading_pane.fadeOut 'fast'
            list_ul.fadeIn 'fast'

    authenticate: (cb=$.noop) ->
        old_auth_state = @authenticated

        $.ajax
            url: "#{@server}/ping"
            success: (data) =>
                if data?.success
                    @authenticated = true
                else
                    @authenticated = false
                @maybeAuthenticationChanged old_auth_state, cb
            error: (jqXHR, textStatus, errorThrown) =>
                @authenticated = false
                @maybeAuthenticationChanged old_auth_state, cb

    maybeAuthenticationChanged: (old_auth_state, cb) =>
        if old_auth_state != @authenticated
            $(window).trigger 'xwing-backend:authenticationChanged', @authenticated
        @oauth_window = null
        cb @authenticated
        @authenticated

    login: () ->
        # Display login dialog.
        if @ui_ready
            @login_modal.modal 'show'

    logout: (cb=$.noop) ->
        $.get "#{@server}/auth/logout", (data, textStatus, jqXHR) =>
            @authenticated = false
            $(window).trigger 'xwing-backend:authenticationChanged', @authenticated
            cb()

    showSaveAsModal: (builder) ->
        @save_as_modal.data 'builder', builder
        @save_as_input.val builder.current_squad.name
        @save_as_save_button.addClass 'disabled'
        @nameCheck()
        @save_as_modal.modal 'show'

    showDeleteModal: (builder) ->
        @delete_modal.data 'builder', builder
        @delete_name_container.text builder.current_squad.name
        @delete_modal.modal 'show'

    nameCheck: () =>
        window.clearInterval @save_as_modal.data('timer')
        # trivial check
        name = $.trim(@save_as_input.val())
        if name.length == 0
            @name_availability_container.text ''
            @name_availability_container.append $.trim """
                <i class="icon-thumbs-down"> A name is required
            """
        else
            $.post "#{@server}/squads/namecheck", { name: name }, (data) =>
                @name_availability_container.text ''
                if data.available
                    @name_availability_container.append $.trim """
                        <i class="icon-thumbs-up"> Name is available
                    """
                    @save_as_save_button.removeClass 'disabled'
                else
                    @name_availability_container.append $.trim """
                        <i class="icon-thumbs-down"> You already have a squad with that name
                    """
                    @save_as_save_button.addClass 'disabled'

    warnUnsaved: (builder, action) ->
        @unsaved_modal.data 'builder', builder
        @unsaved_modal.data 'callback', action
        @unsaved_modal.modal 'show'

    setupUI: () ->
        @login_modal = $ document.createElement('DIV')
        @login_modal.addClass 'modal hide fade hide-on-print'
        $(document.body).append @login_modal
        @login_modal.append $.trim """
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3>Log in with OAuth</h3>
            </div>
            <div class="modal-body">
                <p>
                    Select one of the OAuth providers below to log in and start saving squads.
                    <a class="login-help" href="#">What's this?</a>
                </p>
                <div class="well well-small oauth-explanation">
                    <p>
                        <a href="http://en.wikipedia.org/wiki/OAuth" target="_blank">OAuth</a> is an authorization system which lets you prove your identity at a web site without having to create a new account.  Instead, you tell some provider with whom you already have an account (e.g. Google or Facebook) to prove to this web site that you say who you are.  That way, the next time you visit, this site remembers that you're that user from Google.
                    </p>
                    <p>
                        The best part about this is that you don't have to come up with a new username and password to remember.  And don't worry, I'm not collecting any data from the providers about you.  I've tried to set the scope of data to be as small as possible, but some places send a bunch of data at minimum.  I throw it away.  All I look at is a unique identifier (usually some giant number).
                    </p>
                    <p>
                        For more information, check out this <a href="http://hueniverse.com/oauth/guide/intro/" target="_blank">introduction to OAuth</a>.
                    </p>
                    <button class="btn">Got it!</button>
                </div>
                <ul class="login-providers inline"></ul>
                <p>
                    This will open a new window to let you authenticate with the chosen provider.  You may have to allow pop ups for this site.  (Sorry.)
                </p>
                <p class="login-in-progress">
                    <em>OAuth login is in progress.  Please finish authorization at the specified provider using the window that was just created.</em>
                </p>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        """
        oauth_explanation = $ @login_modal.find('.oauth-explanation')
        oauth_explanation.hide()
        @login_modal.find('.login-in-progress').hide()
        @login_modal.find('a.login-help').click (e) =>
            e.preventDefault()
            unless oauth_explanation.is ':visible'
                oauth_explanation.slideDown 'fast'
        oauth_explanation.find('button').click (e) =>
            e.preventDefault()
            oauth_explanation.slideUp 'fast'
        $.get "#{@server}/methods", (data, textStatus, jqXHR) =>
            methods_ul = $ @login_modal.find('ul.login-providers')
            for method in data.methods
                a = $ document.createElement('A')
                a.addClass 'btn btn-inverse'
                a.data 'url', "#{@server}/auth/#{method}"
                a.append """<i class="#{@method_metadata[method].icon}"></i>&nbsp;#{@method_metadata[method].text}"""
                a.click (e) =>
                    e.preventDefault()
                    methods_ul.slideUp 'fast'
                    @login_modal.find('.login-in-progress').slideDown 'fast'
                    @oauth_window = window.open $(e.target).data('url'), "xwing_login"
                li = $ document.createElement('LI')
                li.append a
                methods_ul.append li
            @ui_ready = true

        @squad_list_modal = $ document.createElement('DIV')
        @squad_list_modal.addClass 'modal hide fade hide-on-print squad-list'
        $(document.body).append @squad_list_modal
        @squad_list_modal.append $.trim """
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3></h3>
            </div>
            <div class="modal-body">
                <ul class="squad-list"></ul>
                <p class="pagination-centered squad-list-loading">
                    <i class="icon-spinner icon-spin icon-3x"></i>
                    <br />
                    Fetching squads...
                </p>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        """
        @squad_list_modal.find('ul.squad-list').hide()

        @save_as_modal = $ document.createElement('DIV')
        @save_as_modal.addClass 'modal hide fade hide-on-print'
        $(document.body).append @save_as_modal
        @save_as_modal.append $.trim """
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3>Save Squad As...</h3>
            </div>
            <div class="modal-body">
                <label for="xw-be-squad-save-as">
                    New Squad Name
                    <input id="xw-be-squad-save-as"></input>
                </label>
                <span class="name-availability"></span>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary save" aria-hidden="true">Save</button>
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        """
        @save_as_modal.on 'shown', () =>
            # Because Firefox handles this badly
            window.setTimeout () =>
                @save_as_input.focus()
                @save_as_input.select()
            , 100

        @save_as_save_button = @save_as_modal.find('button.save')
        @save_as_save_button.click (e) =>
            e.preventDefault()
            unless @save_as_save_button.hasClass('disabled')
                timer = @save_as_modal.data('timer')
                window.clearInterval(timer) if timer?
                @save_as_modal.modal 'hide'
                builder = @save_as_modal.data 'builder'
                additional_data =
                    points: builder.total_points
                    description: builder.describeSquad()
                    cards: builder.listCards()
                builder.backend_save_list_as_button.addClass 'disabled'
                builder.backend_status.html $.trim """
                    <i class="icon-refresh icon-spin"></i>&nbsp;Saving squad...
                """
                builder.backend_status.show()
                new_name = $.trim @save_as_input.val()
                @save builder.serialize(), null, new_name, builder.faction, additional_data, (results) =>
                    if results.success
                        builder.current_squad.id = results.id
                        builder.current_squad.name = new_name
                        builder.current_squad.dirty = false
                        builder.container.trigger 'xwing-backend:squadDirtinessChanged'
                        builder.container.trigger 'xwing-backend:squadNameChanged'
                        builder.backend_status.html $.trim """
                            <i class="icon-ok"></i>&nbsp;New squad saved successfully.
                        """
                    else
                        builder.backend_status.html $.trim """
                            <i class="icon-exclamation-sign"></i>&nbsp;#{results.error}
                        """
                    builder.backend_save_list_as_button.removeClass 'disabled'

        @save_as_input = $ @save_as_modal.find('input')
        @save_as_input.keypress (e) =>
            if e.which == 13
                @save_as_save_button.click()
                false
            else
                @name_availability_container.text ''
                @name_availability_container.append $.trim """
                    <i class="icon-spin icon-spinner"></i> Checking name availability...
                """
                timer = @save_as_modal.data('timer')
                window.clearInterval(timer) if timer?
                @save_as_modal.data 'timer', window.setInterval(@nameCheck, 500)

        @name_availability_container = $ @save_as_modal.find('.name-availability')

        @delete_modal = $ document.createElement('DIV')
        @delete_modal.addClass 'modal hide fade hide-on-print'
        $(document.body).append @delete_modal
        @delete_modal.append $.trim """
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3>Really Delete <span class="squad-name-placeholder"></span>?</h3>
            </div>
            <div class="modal-body">
                <p>Are you sure you want to delete this squad?</p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger delete" aria-hidden="true">Yes, Delete <i class="squad-name-placeholder"></i></button>
                <button class="btn" data-dismiss="modal" aria-hidden="true">Never Mind</button>
            </div>
        """

        @delete_name_container = $ @delete_modal.find('.squad-name-placeholder')
        @delete_button = $ @delete_modal.find('button.delete')
        @delete_button.click (e) =>
            e.preventDefault()
            builder = @delete_modal.data 'builder'
            builder.backend_status.html $.trim """
                <i class="icon-refresh icon-spin"></i>&nbsp;Deleting squad...
            """
            builder.backend_status.show()
            builder.backend_delete_list_button.addClass 'disabled'
            @delete_modal.modal 'hide'
            @delete builder.current_squad.id, (results) =>
                if results.success
                    builder.resetCurrentSquad()
                    builder.current_squad.dirty = true
                    builder.container.trigger 'xwing-backend:squadDirtinessChanged'
                    builder.backend_status.html $.trim """
                        <i class="icon-ok"></i>&nbsp;Squad deleted.
                    """
                else
                    builder.backend_status.html $.trim """
                        <i class="icon-exclamation-sign"></i>&nbsp;#{results.error}
                    """
                    # Failed, so offer chance to delete again
                    builder.backend_delete_list_button.removeClass 'disabled'

        @unsaved_modal = $ document.createElement('DIV')
        @unsaved_modal.addClass 'modal hide fade hide-on-print'
        $(document.body).append @unsaved_modal
        @unsaved_modal.append $.trim """
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3>Unsaved Changes</h3>
            </div>
            <div class="modal-body">
                <p>You have not saved changes to this squad.  Do you want to go back and save?</p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" aria-hidden="true" data-dismiss="modal">Go Back</button>
                <button class="btn btn-danger discard" aria-hidden="true">Discard Changes</button>
            </div>
        """
        @unsaved_discard_button = $ @unsaved_modal.find('button.discard')
        @unsaved_discard_button.click (e) =>
            e.preventDefault()
            @unsaved_modal.data('builder').current_squad.dirty = false
            @unsaved_modal.data('callback')()
            @unsaved_modal.modal 'hide'

    setupHandlers: () ->
        $(window).on 'xwing-backend:authenticationChanged', () =>
            @updateAuthenticationVisibility()

        @login_logout_button.click (e) =>
            e.preventDefault()
            if @authenticated
                @logout()
            else
                @login()

        $(window).on 'message', (e) =>
            ev = e.originalEvent
            if ev.origin == @server
                switch ev.data?.command
                    when 'auth_successful'
                        @authenticate()
                        @login_modal.modal 'hide'
                        @login_modal.find('.login-in-progress').hide()
                        @login_modal.find('ul.login-providers').show()
                        ev.source.close()
                    else
                        console.log "Unexpected command #{ev.data?.command}"
            else
                console.log "Message received from unapproved origin #{ev.origin}"
                window.last_ev = e
