###
    X-Wing Squad Builder 2.0
    Stephen Kim <raithos@gmail.com>
    https://raithos.github.io
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
                auth_status: '#auth-status'

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
        @auth_status = $ args.auth_status

        @authenticated = false
        @ui_ready = false
        @oauth_window = null

        @method_metadata =
            google_oauth2:
                icon: 'fab fa-google'
                text: 'Google'
            facebook:
                icon: 'fab fa-facebook'
                text: 'Facebook'
            twitter:
                icon: 'fab fa-twitter'
                text: 'Twitter'
            discord:
                icon: 'fab fa-discord'
                text: 'Discord'

        @squad_display_mode = 'all'

        @show_archived = false

        @collection_save_timer = null

        @setupHandlers()
        @setupUI()

        # Check initial authentication status
        @authenticate () =>
            @auth_status.hide()
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

    archive: (data, faction, cb) ->
        data.additional_data["archived"] = true
        @save(data.serialized, data.id, data.name, faction, data.additional_data, cb)

    list: (builder, all=false) ->
        # TODO: Pagination
        if all
            @squad_list_modal.find('.modal-header .squad-list-header-placeholder').text("Everyone's #{builder.faction} Squads")
        else
            @squad_list_modal.find('.modal-header .squad-list-header-placeholder').text("Your #{builder.faction} Squads")
        list_ul = $ @squad_list_modal.find('ul.squad-list')
        list_ul.text ''
        list_ul.hide()
        loading_pane = $ @squad_list_modal.find('p.squad-list-loading')
        loading_pane.show()
        @show_all_squads_button.click()
        @squad_list_modal.modal 'show'

        # This counter keeps tracked of the number of squads marked to be deleted (to hide the delete-selected button if none is selected)
        @number_of_selected_squads_to_be_deleted = 0

        url = if all then "#{@server}/all" else "#{@server}/squads/list"
        $.get url, (data, textStatus, jqXHR) =>
            hasNotArchivedSquads = false
            for squad in data[builder.faction]
                li = $ document.createElement('LI')
                li.addClass 'squad-summary'
                li.data 'squad', squad
                li.data 'builder', builder
                li.data 'selectedForDeletion', false
                list_ul.append li
                if squad.additional_data?.archived?
                    li.hide()
                else
                    hasNotArchivedSquads = true
                li.append $.trim """
                    <div class="row-fluid">
                        <div class="span9">
                            <h4>#{squad.name}</h4>
                        </div>
                        <div class="span3">
                            <h5>#{squad.additional_data?.points} Points</h5>
                        </div>
                    </div>
                    <div class="row-fluid squad-description">
                        <div class="span8">
                            #{squad.additional_data?.description}
                        </div>
                        <div class="span4">
                            <button class="btn load-squad">Load</button>
                            &nbsp;
                            <button class="btn btn-danger delete-squad">Delete</button>
                        </div>
                    </div>
                    <div class="row-fluid squad-delete-confirm">
                        <div class="span8">
                            Really delete <em>#{squad.name}</em>?
                        </div>
                        <div class="span4">
                            <button class="btn btn-danger confirm-delete-squad">Delete</button>
                            &nbsp;
                            <button class="btn cancel-delete-squad">Cancel</button>
                        </div>
                    </div>
                """
                li.find('.squad-delete-confirm').hide()

                li.find('button.load-squad').click (e) =>
                    e.preventDefault()
                    button = $ e.target
                    li = button.closest 'li'
                    builder = li.data('builder')
                    @squad_list_modal.modal 'hide'
                    if builder.current_squad.dirty
                        @warnUnsaved builder, () ->
                            builder.container.trigger 'xwing-backend:squadLoadRequested', li.data('squad')
                    else
                        builder.container.trigger 'xwing-backend:squadLoadRequested', li.data('squad')

                li.find('button.delete-squad').click (e) =>
                    e.preventDefault()
                    button = $ e.target
                    li = button.closest 'li'
                    builder = li.data('builder')
                    li.data 'selectedForDeletion', true
                    do (li) =>
                        li.find('.squad-description').fadeOut 'fast', ->
                            li.find('.squad-delete-confirm').fadeIn 'fast'
                        # show delete multiple section if not yet shown
                        if not @number_of_selected_squads_to_be_deleted
                            @squad_list_modal.find('div.delete-multiple-squads').show()
                    # increment counter
                    @number_of_selected_squads_to_be_deleted += 1


                li.find('button.cancel-delete-squad').click (e) =>
                    e.preventDefault()
                    button = $ e.target
                    li = button.closest 'li'
                    builder = li.data('builder')
                    li.data 'selectedForDeletion', false
                    # decrement counter
                    @number_of_selected_squads_to_be_deleted -= 1
                    do (li) =>
                        li.find('.squad-delete-confirm').fadeOut 'fast', ->
                            li.find('.squad-description').fadeIn 'fast'
                        # hide delete multiple section if this was the last selected squad
                        if not @number_of_selected_squads_to_be_deleted
                            @squad_list_modal.find('div.delete-multiple-squads').hide()

                li.find('button.confirm-delete-squad').click (e) =>
                    e.preventDefault()
                    button = $ e.target
                    li = button.closest 'li'
                    builder = li.data('builder')
                    li.find('.cancel-delete-squad').fadeOut 'fast'
                    li.find('.confirm-delete-squad').addClass 'disabled'
                    li.find('.confirm-delete-squad').text 'Deleting...'
                    @delete li.data('squad').id, (results) =>
                        if results.success
                            li.slideUp 'fast', ->
                                $(li).remove()
                            # decrement counter
                            @number_of_selected_squads_to_be_deleted -= 1
                            # hide delete multiple section if this was the last selected squad
                            if not @number_of_selected_squads_to_be_deleted
                                @squad_list_modal.find('div.delete-multiple-squads').hide()
                        else
                            li.html $.trim """
                                Error deleting #{li.data('squad').name}: <em>#{results.error}</em>
                            """
            if not hasNotArchivedSquads
                list_ul.append $.trim """
                    <li>Nothing to see here. Go save a squad!</li>
                """

            loading_pane.fadeOut 'fast'
            list_ul.fadeIn 'fast'

    authenticate: (cb=$.noop) ->
        $(@auth_status.find('.payload')).text 'Checking auth status...'
        @auth_status.show()
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
            $(window).trigger 'xwing-backend:authenticationChanged', [ @authenticated, this ]
        @oauth_window = null
        @auth_status.hide()
        cb @authenticated
        @authenticated

    login: () ->
        # Display login dialog.
        if @ui_ready
            @login_modal.modal 'show'

    logout: (cb=$.noop) ->
        $(@auth_status.find('.payload')).text 'Logging out...'
        @auth_status.show()
        $.get "#{@server}/auth/logout", (data, textStatus, jqXHR) =>
            @authenticated = false
            $(window).trigger 'xwing-backend:authenticationChanged', [ @authenticated, this ]
            @auth_status.hide()
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
                <i class="fa fa-thumbs-down"> A name is required
            """
        else
            $.post "#{@server}/squads/namecheck", { name: name }, (data) =>
                @name_availability_container.text ''
                if data.available
                    @name_availability_container.append $.trim """
                        <i class="fa fa-thumbs-up"> Name is available
                    """
                    @save_as_save_button.removeClass 'disabled'
                else
                    @name_availability_container.append $.trim """
                        <i class="fa fa-thumbs-down"> You already have a squad with that name
                    """
                    @save_as_save_button.addClass 'disabled'

    warnUnsaved: (builder, action) ->
        @unsaved_modal.data 'builder', builder
        @unsaved_modal.data 'callback', action
        @unsaved_modal.modal 'show'

    setupUI: () ->
        @auth_status.addClass 'disabled'
        @auth_status.click (e) =>
            false

        @login_modal = $ document.createElement('DIV')
        @login_modal.addClass 'modal hide fade hidden-print'
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

        @reload_done_modal = $ document.createElement('DIV')
        @reload_done_modal.addClass 'modal hide fade hidden-print'
        $(document.body).append @reload_done_modal
        @reload_done_modal.append $.trim """
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3>Reload Done</h3>
            </div>
            <div class="modal-body">
                <p>All squads of that faction have been reloaded.</p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" aria-hidden="true" data-dismiss="modal">Well done!</button>
            </div>
        """

        @squad_list_modal = $ document.createElement('DIV')
        @squad_list_modal.addClass 'modal hide fade hidden-print squad-list'
        $(document.body).append @squad_list_modal
        @squad_list_modal.append $.trim """
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3 class="squad-list-header-placeholder hidden-phone hidden-tablet"></h3>
                <h4 class="squad-list-header-placeholder hidden-desktop"></h4>
            </div>
            <div class="modal-body">
                <ul class="squad-list"></ul>
                <p class="pagination-centered squad-list-loading">
                    <i class="fa fa-spinner fa-spin fa-3x"></i>
                    <br />
                    Fetching squads...
                </p>
            </div>
            <div class="modal-footer">
                <div class="btn-group delete-multiple-squads">
                    <button class="btn select-all">Select All</button>
                    <button class="btn archive-selected">Archive Selected</button>
                    <button class="btn btn-danger delete-selected">Delete Selected</button>
                </div>
                <div class="btn-group squad-display-mode">
                    <button class="btn btn-inverse show-all-squads">All</button>
                    <button class="btn show-extended-squads">Ext<span class="hidden-phone">ended</span></button>
                    <button class="btn show-hyperspace-squads">Hyper<span class="hidden-phone">space</span></button>
                    <button class="btn show-quickbuild-squads">Quick<span class="hidden-phone">build</span></button>
                    <button class="btn show-epic-squads">Epic</button>
                    <button class="btn show-archived-squads">Archived</button>
                </div>
                <button class="btn btn reload-all">Reload<span class="hidden-phone"> all squads (this might take a while)</span></button>
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        """
        @squad_list_modal.find('ul.squad-list').hide()

        # The delete multiple section only appeares, when somebody hits the delete button of one squad. 
        @squad_list_modal.find('div.delete-multiple-squads').hide() 

        @delete_selected_button = $ @squad_list_modal.find('button.delete-selected')
        @delete_selected_button.click (e) =>
            ul = @squad_list_modal.find('ul.squad-list') 
            for li in ul.find('li')
                li = $ li
                if li.data 'selectedForDeletion'
                    do (li) =>
                        li.find('.cancel-delete-squad').fadeOut 'fast'
                        li.find('.confirm-delete-squad').addClass 'disabled'
                        li.find('.confirm-delete-squad').text 'Deleting...'
                        @delete li.data('squad').id, (results) =>
                            if results.success
                                li.slideUp 'fast', ->
                                    $(li).remove()
                                # decrement counter
                                @number_of_selected_squads_to_be_deleted -= 1
                                # hide delete multiple section if this was the last selected squad
                                if not @number_of_selected_squads_to_be_deleted
                                    @squad_list_modal.find('div.delete-multiple-squads').hide()
                            else
                                li.html $.trim """
                                    Error deleting #{li.data('squad').name}: <em>#{results.error}</em>
                                """

        @archive_selected_button = $ @squad_list_modal.find('button.archive-selected')
        @archive_selected_button.click (e) =>
            ul = @squad_list_modal.find('ul.squad-list') 
            for li in ul.find('li')
                li = $ li
                if li.data 'selectedForDeletion'
                    do (li) =>
                        li.find('.confirm-delete-squad').addClass 'disabled'
                        li.find('.confirm-delete-squad').text 'Archiving...'
                        @archive li.data('squad'), li.data('builder').faction, (results) =>
                            if results.success
                                li.slideUp 'fast', ->
                                    $(li).hide()
                                    $(li).find('.confirm-delete-squad').removeClass 'disabled'
                                    $(li).find('.confirm-delete-squad').text 'Delete'
                                    $(li).data 'selectedForDeletion', false
                                    $(li).find('.squad-delete-confirm').fadeOut 'fast', ->
                                        $(li).find('.squad-description').fadeIn 'fast'
                                # decrement counter
                                @number_of_selected_squads_to_be_deleted -= 1
                                # hide delete multiple section if this was the last selected squad
                                if not @number_of_selected_squads_to_be_deleted
                                    @squad_list_modal.find('div.delete-multiple-squads').hide()
                            else
                                li.html $.trim """
                                    Error archiving #{li.data('squad').name}: <em>#{results.error}</em>
                                """

        @squad_list_modal.find('button.reload-all').click (e) =>
            ul = @squad_list_modal.find('ul.squad-list') 
            squadProcessingStack = [ () =>
                @reload_done_modal.modal 'show' ]
            squadDataStack = []
            for li in ul.find('li')
                li = $ li
                squadDataStack.push li.data('squad')
                builder = li.data('builder')
                squadProcessingStack.push () => 
                    sqd = squadDataStack.pop()
                    # console.log("loading " + sqd.name)
                    builder.container.trigger 'xwing-backend:squadLoadRequested', [ sqd, () =>
                        additional_data =
                            points: builder.total_points
                            description: builder.describeSquad()
                            cards: builder.listCards()
                            notes: builder.notes.val().substr(0, 1024)
                            obstacles: builder.getObstacles()
                        # console.log("saving " + builder.current_squad.name)
                        @save builder.serialize(), builder.current_squad.id, builder.current_squad.name, builder.faction, additional_data, squadProcessingStack.pop() ]
                        
            @squad_list_modal.modal 'hide'
            if builder.current_squad.dirty
                    @warnUnsaved builder, squadProcessingStack.pop()
            else
                squadProcessingStack.pop()()


        @select_all_button = $ @squad_list_modal.find('button.select-all')
        @select_all_button.click (e) =>
            ul = @squad_list_modal.find('ul.squad-list') 
            for li in ul.find('li')
                li = $ li
                if not li.data 'selectedForDeletion'
                    li.data 'selectedForDeletion', true
                    do (li) =>
                        li.find('.squad-description').fadeOut 'fast', ->
                             li.find('.squad-delete-confirm').fadeIn 'fast'
                    @number_of_selected_squads_to_be_deleted += 1

        @show_all_squads_button = $ @squad_list_modal.find('.show-all-squads')
        @show_all_squads_button.click (e) =>
            unless @squad_display_mode == 'all'
                @squad_display_mode = 'all'
                @squad_list_modal.find('.squad-display-mode .btn').removeClass 'btn-inverse'
                @show_all_squads_button.addClass 'btn-inverse'
                @squad_list_modal.find('.squad-list li').show()

        @show_extended_squads_button = $ @squad_list_modal.find('.show-extended-squads')
        @show_extended_squads_button.click (e) =>
            unless @squad_display_mode == 'extended'
                @squad_display_mode = 'extended'
                @squad_list_modal.find('.squad-display-mode .btn').removeClass 'btn-inverse'
                @show_extended_squads_button.addClass 'btn-inverse'
                @squad_list_modal.find('.squad-list li').each (idx, elem) ->
                    $(elem).toggle $(elem).data().squad.serialized.search(/v\d+Zs/) != -1

        @show_epic_squads_button = $ @squad_list_modal.find('.show-epic-squads')
        @show_epic_squads_button.click (e) =>
            unless @squad_display_mode == 'epic'
                @squad_display_mode = 'epic'
                @squad_list_modal.find('.squad-display-mode .btn').removeClass 'btn-inverse'
                @show_epic_squads_button.addClass 'btn-inverse'
                @squad_list_modal.find('.squad-list li').each (idx, elem) ->
                    $(elem).toggle $(elem).data().squad.serialized.search(/v\d+Ze/) != -1

        @show_hyperspace_squads_button = $ @squad_list_modal.find('.show-hyperspace-squads')
        @show_hyperspace_squads_button.click (e) =>
            unless @squad_display_mode == 'hyperspace'
                @squad_display_mode = 'hyperspace'
                @squad_list_modal.find('.squad-display-mode .btn').removeClass 'btn-inverse'
                @show_hyperspace_squads_button.addClass 'btn-inverse'
                @squad_list_modal.find('.squad-list li').each (idx, elem) ->
                    $(elem).toggle $(elem).data().squad.serialized.search(/v\d+Zh/) != -1

        @show_quickbuild_squads_button = $ @squad_list_modal.find('.show-quickbuild-squads')
        @show_quickbuild_squads_button.click (e) =>
            unless @squad_display_mode == 'quickbuild'
                @squad_display_mode = 'quickbuild'
                @squad_list_modal.find('.squad-display-mode .btn').removeClass 'btn-inverse'
                @show_quickbuild_squads_button.addClass 'btn-inverse'
                @squad_list_modal.find('.squad-list li').each (idx, elem) ->
                    $(elem).toggle $(elem).data().squad.serialized.search(/v\d+Zq/) != -1
                    
        @show_archived_squads_button = $ @squad_list_modal.find('.show-archived-squads')
        @show_archived_squads_button.click (e) =>
            @show_archived = not @show_archived
            if @show_archived
                @show_archived_squads_button.addClass 'btn-inverse'
            else
                @show_archived_squads_button.removeClass 'btn-inverse'
            @squad_list_modal.find('.squad-list li').each (idx, elem) =>
                $(elem).toggle (($(elem).data().squad.additional_data.archived?) == @show_archived)

        @save_as_modal = $ document.createElement('DIV')
        @save_as_modal.addClass 'modal hide fade hidden-print'
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
                    notes: builder.getNotes()
                    obstacles: builder.getObstacles()
                builder.backend_save_list_as_button.addClass 'disabled'
                builder.backend_status.html $.trim """
                    <i class="fa fa-sync fa-spin"></i>&nbsp;Saving squad...
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
                            <i class="fa fa-check"></i>&nbsp;New squad saved successfully.
                        """
                    else
                        builder.backend_status.html $.trim """
                            <i class="fa fa-exclamation-circle"></i>&nbsp;#{results.error}
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
                    <i class="fa fa-spin fa-spinner"></i> Checking name availability...
                """
                timer = @save_as_modal.data('timer')
                window.clearInterval(timer) if timer?
                @save_as_modal.data 'timer', window.setInterval(@nameCheck, 500)

        @name_availability_container = $ @save_as_modal.find('.name-availability')

        @delete_modal = $ document.createElement('DIV')
        @delete_modal.addClass 'modal hide fade hidden-print'
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
                <i class="fa fa-sync fa-spin"></i>&nbsp;Deleting squad...
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
                        <i class="fa fa-check"></i>&nbsp;Squad deleted.
                    """
                else
                    builder.backend_status.html $.trim """
                        <i class="fa fa-exclamation-circle"></i>&nbsp;#{results.error}
                    """
                    # Failed, so offer chance to delete again
                    builder.backend_delete_list_button.removeClass 'disabled'

        @unsaved_modal = $ document.createElement('DIV')
        @unsaved_modal.addClass 'modal hide fade hidden-print'
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
        $(window).on 'xwing-backend:authenticationChanged', (e, authenticated, backend) =>
            @updateAuthenticationVisibility()
            if authenticated
                @loadCollection()

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
        .on 'xwing-collection:changed', (e, collection) =>
            clearTimeout(@collection_save_timer) if @collection_save_timer?
            @collection_save_timer = setTimeout =>
                @saveCollection collection, (res) ->
                    if res
                        $(window).trigger 'xwing-collection:saved', collection
            , 1000
        
    getSettings: (cb=$.noop) ->
        $.get("#{@server}/settings").done (data, textStatus, jqXHR) =>
            cb data.settings

    set: (setting, value, cb=$.noop) ->
        post_args =
            "_method": "PUT"
        post_args[setting] = value
        $.post("#{@server}/settings", post_args).done (data, textStatus, jqXHR) =>
            cb data.set

    deleteSetting: (setting, cb=$.noop) ->
        $.post("#{@server}/settings/#{setting}", {"_method": "DELETE"}).done (data, textStatus, jqXHR) =>
            cb data.deleted

    getHeaders: (cb=$.noop) ->
        $.get("#{@server}/headers").done (data, textStatus, jqXHR) =>
            cb data.headers

    getLanguagePreference: (settings, cb=$.noop) =>
        # Check session, then headers
        if settings?.language?
            cb settings.language
        else
            await @getHeaders defer(headers)
            if headers?.HTTP_ACCEPT_LANGUAGE?
                # Need to parse out language preferences
                # I'm going to be lazy and only output the first one we encounter
                for language_range in headers.HTTP_ACCEPT_LANGUAGE.split(',')
                    [ language_tag, quality ] = language_range.split ';'
                    if language_tag == '*'
                        cb 'English'
                    else
                        language_code = language_tag.split('-')[0]
                        cb(exportObj.codeToLanguage[language_code] ? 'English')
                    break
            else
                cb 'English'

    getCollectionCheck: (settings, cb=$.noop) =>
        if settings?.collectioncheck?
            cb settings.collectioncheck
        else
            @collectioncheck = true
            cb true
                
    saveCollection: (collection, cb=$.noop) ->
        post_args =
            expansions: collection.expansions
            singletons: collection.singletons
            checks: collection.checks
        $.post("#{@server}/collection", post_args).done (data, textStatus, jqXHR) ->
            cb data.success

    loadCollection: ->
        # Backend provides an empty collection if none exists yet for the user.
        $.get("#{@server}/collection").done (data, textStatus, jqXHR) ->
            collection = data.collection
            new exportObj.Collection
                expansions: collection.expansions
                singletons: collection.singletons
                checks: collection.checks
            
