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
            @login_logout_button.removeClass 'd-none'

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

    list: (builder) ->
        # TODO: Pagination
        @squad_list_modal.find('.modal-header .squad-list-header-placeholder').text(exportObj.translate('ui', "yourXYsquads", builder.faction))
        list_ul = $ @squad_list_modal.find('ul.squad-list')
        list_ul.text ''
        list_ul.hide()
        loading_pane = $ @squad_list_modal.find('p.squad-list-loading')
        loading_pane.show()
        @show_all_squads_button.click()
        @squad_list_modal.modal 'show'

        # This counter keeps tracked of the number of squads marked to be deleted (to hide the delete-selected button if none is selected)
        @number_of_selected_squads_to_be_deleted = 0

        #setup tag list
        tag_list = []

        url = "#{@server}/squads/list"
        $.get url, (data, textStatus, jqXHR) =>
            hasNotArchivedSquads = false
            for squad in data[builder.faction]
                li = $ document.createElement('LI')
                li.addClass 'squad-summary'
                li.data 'squad', squad
                li.data 'builder', builder
                li.data 'selectedForDeletion', false
                list_ul.append li
                
                if squad.additional_data?.tag? and (squad.additional_data?.tag != "") and (tag_list.indexOf(squad.additional_data.tag) == -1)
                    tag_array = squad.additional_data?.tag.split(",")
                    for tag_entry in tag_array
                        tag_list.push tag_entry
                
                if squad.additional_data?.archived?
                    li.hide()
                else
                    hasNotArchivedSquads = true
                li.append $.trim """
                    <div class="row">
                        <div class="col-md-9">
                            <h4>#{squad.name}</h4>
                        </div>
                        <div class="col-md-3">
                            <h5>#{squad.additional_data?.points} #{exportObj.translate('ui', "Points")}</h5>
                        </div>
                    </div>
                    <div class="row squad-description">
                        <div class="col-md-9">
                            #{squad.additional_data?.description}
                        </div>
                        <div class="squad-buttons col-md-3">
                            <button class="btn btn-modal convert-squad"><i class="xwing-miniatures-font xwing-miniatures-font-first-player-1"></i></button>
                            &nbsp;
                            <button class="btn btn-modal load-squad"><i class="fa fa-download"></i></button>
                            &nbsp;
                            <button class="btn btn-danger delete-squad"><i class="fa fa-times"></i></button>
                        </div>
                    </div>
                    <div class="row squad-convert-confirm">
                        <div class="col-md-9 translated" defaultText="Convert to Extended?">
                        </div>
                        <div class="squad-buttons col-md-3">
                            <button class="btn btn-danger confirm-convert-squad translated" defaultText="Convert"></button>
                            &nbsp;
                            <button class="btn btn-modal cancel-convert-squad translated" defaultText="Cancel"></button>
                        </div>
                    </div>
                    <div class="row squad-delete-confirm">
                        <div class="col-md-9">
                            #{exportObj.translate('ui', 'reallyDeleteSquadXY', "<em>#{squad.name}</em>")}
                        </div>
                        <div class="col-md-3">
                            <button class="btn btn-danger confirm-delete-squad translated" defaultText="Delete"></button>
                            &nbsp;
                            <button class="btn btn-modal cancel-delete-squad translated" defaultText="Cancel"></button>
                        </div>
                    </div>
                """
                li.find('.squad-convert-confirm').hide()
                li.find('.squad-delete-confirm').hide()
                
                if squad.serialized.search(/v\d+Zh/) == -1
                    li.find('button.convert-squad').hide()
                
                li.find('button.convert-squad').click (e) =>
                    e.preventDefault()
                    button = $ e.target
                    li = button.closest 'li'
                    builder = li.data('builder')
                    li.data 'selectedToConvert', true
                    do (li) =>
                        li.find('.squad-description').fadeOut 'fast', ->
                            li.find('.squad-convert-confirm').fadeIn 'fast'
                        
                li.find('button.cancel-convert-squad').click (e) =>
                    e.preventDefault()
                    button = $ e.target
                    li = button.closest 'li'
                    builder = li.data('builder')
                    li.data 'selectedToConvert', false
                    do (li) =>
                        li.find('.squad-convert-confirm').fadeOut 'fast', ->
                            li.find('.squad-description').fadeIn 'fast'

                li.find('button.confirm-convert-squad').click (e) =>
                    e.preventDefault()
                    button = $ e.target
                    li = button.closest 'li'
                    builder = li.data('builder')
                    li.find('.cancel-convert-squad').fadeOut 'fast'
                    li.find('.confirm-convert-squad').addClass 'disabled'
                    li.find('.confirm-convert-squad').text 'Converting...'
                    new_serialized = li.data('squad').serialized.replace('Zh','Zs')
                    @save new_serialized, li.data('squad').id, li.data('squad').name, li.data('builder').faction, li.data('squad').additional_data, (results) =>
                        if results.success
                            li.data('squad').serialized = new_serialized 
                            li.find('.squad-convert-confirm').fadeOut 'fast', ->
                                li.find('.squad-description').fadeIn 'fast'
                                li.find('button.convert-squad').fadeOut 'fast'
                        else
                            li.html $.trim """
                                Error converting #{li.data('squad').name}: <em>#{results.error}</em>
                            """
                    
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
                    <li class="translated" defaultText="No saved squads"></li>
                """
                
            #setup Tags
            @squad_list_tags.empty()
            for tag in tag_list
                tagclean = tag.toLowerCase().replace(/[^a-z0-9]/g, '').replace(/\s+/g, '-')
                
                @squad_list_tags.append $.trim """ 
                    <button class="btn #{tagclean}">#{tag}</button>
                """
                tag_button = $ @squad_list_tags.find(".#{tagclean}")
                tag_button.click (e) =>
                    button = $ e.target
                    buttontag = button.attr('class').replace('btn ','')
                    @squad_list_modal.find('.squad-display-mode .btn').removeClass 'btn-inverse'
                    @squad_list_tags.find('.btn').removeClass 'btn-inverse'
                    button.addClass 'btn-inverse'
                    @squad_list_modal.find('.squad-list li').each (idx, elem) ->
                        if $(elem).data().squad.additional_data.tag?
                            tag_array = $(elem).data().squad.additional_data.tag.split(",")
                            found_tag = false
                            for tag in tag_array
                                if buttontag == tag.toLowerCase().replace(/[^a-z0-9]/g, '').replace(/\s+/g, '-') then found_tag = true
                            if found_tag then $(elem).show() else $(elem).hide()
                        else
                            $(elem).hide()

            # some of the created html needs translation (e.g. buttons). Do that now.
            exportObj.translateUIElements(list_ul)
            loading_pane.fadeOut 'fast'
            list_ul.fadeIn 'fast'

    authenticate: (cb=$.noop) ->
        $(@auth_status.find('.payload')).text exportObj.translate('ui', 'Checking auth status...')
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
        $(@auth_status.find('.payload')).text exportObj.translate('ui', 'Logging out...')
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
                <i class="fa fa-thumbs-down"></i> #{exportObj.translate('ui', "name required")}
            """
        else
            $.post "#{@server}/squads/namecheck", { name: name }, (data) =>
                @name_availability_container.text ''
                if data.available
                    @name_availability_container.append $.trim """
                        <i class="fa fa-thumbs-up"></i> #{exportObj.translate('ui', "Name is available")}
                    """
                    @save_as_save_button.removeClass 'disabled'
                else
                    @name_availability_container.append $.trim """
                        <i class="fa fa-thumbs-down"></i> #{exportObj.translate('ui', "Name in use")}
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
        @login_modal.addClass 'modal fade d-print-none'
        @login_modal.tabindex = "-1"
        @login_modal.role = "dialog"
        $(document.body).append @login_modal
        @login_modal.append $.trim """
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="translated" defaultText="Log in with OAuth"></h3>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <p>
                    <span class="translated" defaultText="select OAuth provider"></span>
                    <a class="login-help translated" href="#" defaultText="What's this?"></a>
                </p>
                <div class="well well-small oauth-explanation">
                    <span class="translated" defaultText="OAuth explanation"></span>
                    <button class="btn btn-modal translated" defaultText="Got it!"></button>
                </div>
                <ul class="login-providers inline"></ul>
                <p class="translated" defaultText="Continue to OAuth provider"></p>
                <p class="translated" defaultText="iOS requires cross-site control"></p>
                <p class="login-in-progress">
                    <em class="translated" defaultText="login in progress"></em>
                </p>
            </div>
        </div>
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
                a.addClass 'btn btn-modal'
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

        # this is dynamically created UI, so we need to translate it after creation
        exportObj.translateUIElements(@login_modal)

        @reload_done_modal = $ document.createElement('DIV')
        @reload_done_modal.addClass 'modal fade d-print-none'
        @reload_done_modal.tabindex = "-1"
        @reload_done_modal.role = "dialog"
        $(document.body).append @reload_done_modal
        @reload_done_modal.append $.trim """
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Reload Done</h3>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <p class="translated" defaultText="Squads reloaded"></p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-modal btn-primary translated" aria-hidden="true" data-dismiss="modal" defaultText="Well done!"></button>
            </div>
        </div>
    </div>
        """

        # this is dynamically created UI, so we need to translate it after creation
        exportObj.translateUIElements(@reload_done_modal)

        @squad_list_modal = $ document.createElement('DIV')
        @squad_list_modal.addClass 'modal fade d-print-none squad-list'
        @squad_list_modal.tabindex = "-1"
        @squad_list_modal.role = "dialog"
        $(document.body).append @squad_list_modal
        @squad_list_modal.append $.trim """
    <div class="modal-dialog modal-lg modal-dialog-scrollable modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="squad-list-header-placeholder d-none d-lg-block"></h3>
                <h4 class="squad-list-header-placeholder d-lg-none"></h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <ul class="squad-list"></ul>
                <p class="pagination-centered squad-list-loading">
                    <i class="fa fa-spinner fa-spin fa-3x"></i>
                    <br />
                    <span class="translated" defaultText="Fetching squads..."></span>
                </p>
            </div>
            <div class="modal-footer">
                <div class="btn-group delete-multiple-squads full-row">
                    <button class="btn btn-modal select-all translated" defaultText="Select All"></button>
                    <button class="btn btn-modal archive-selected translated" defaultText="Archive Selected"></button>
                    <button class="btn btn-modal btn-danger delete-selected translated" defaultText="Delete Selected"></button>
                </div>
                <div class="btn-group squad-display-mode full-row">
                    <button class="btn btn-modal btn-inverse show-all-squads translated" defaultText="All"></button>
                    <button class="btn btn-modal show-extended-squads"><span class="d-none d-lg-block translated" defaultText="Extended"></span><span class="d-lg-none translated" defaultText="Ext"></span></button>
                    <button class="btn btn-modal show-hyperspace-squads"><span class="d-none d-lg-block translated" defaultText="Hyperspace"></span><span class="d-lg-none translated" defaultText="Hyper"></span></button>
                    <button class="btn btn-modal show-quickbuild-squads"><span class="d-none d-lg-block translated" defaultText="Quickbuild"></span><span class="d-lg-none translated" defaultText="QB"></span></button>
                    <button class="btn btn-modal show-epic-squads translated" defaultText="Epic"></button>
                    <button class="btn btn-modal show-archived-squads translated" defaultText="Archived"></button>
                    <button class="btn btn-modal reload-all translated" defaultText="Recalculate Points"></button>
                </div>
                <div class="btn-group tags-display full-row">
                </div>
            </div>
        </div>
    </div>
        """
        @squad_list_modal.find('ul.squad-list').hide()

        @squad_list_tags = $ @squad_list_modal.find('div.tags-display')
        
        # The delete multiple section only appeares, when somebody hits the delete button of one squad. 
        @squad_list_modal.find('div.delete-multiple-squads').hide() 

        # this is dynamically created UI, so we need to translate it after creation
        exportObj.translateUIElements(@squad_list_modal)

        @delete_selected_button = $ @squad_list_modal.find('button.delete-selected')
        @delete_selected_button.click (e) =>
            ul = @squad_list_modal.find('ul.squad-list') 
            for li in ul.find('li')
                li = $ li
                if li.data 'selectedForDeletion'
                    do (li) =>
                        li.find('.cancel-delete-squad').fadeOut 'fast'
                        li.find('.confirm-delete-squad').addClass 'disabled'
                        li.find('.confirm-delete-squad').text exportObj.translate('ui', 'Deleting...')
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
                        li.find('.confirm-delete-squad').text exportObj.translate('ui', 'Archiving...')
                        @archive li.data('squad'), li.data('builder').faction, (results) =>
                            if results.success
                                li.slideUp 'fast', ->
                                    $(li).hide()
                                    $(li).find('.confirm-delete-squad').removeClass 'disabled'
                                    $(li).find('.confirm-delete-squad').text exportObj.translate('ui', 'Delete')
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
                            tag: builder.tag.val().substr(0, 1024)
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
                @squad_list_tags.find('.btn').removeClass 'btn-inverse'
                @show_all_squads_button.addClass 'btn-inverse'
                @squad_list_modal.find('.squad-list li').show()

        @show_extended_squads_button = $ @squad_list_modal.find('.show-extended-squads')
        @show_extended_squads_button.click (e) =>
            unless @squad_display_mode == 'extended'
                @squad_display_mode = 'extended'
                @squad_list_modal.find('.squad-display-mode .btn').removeClass 'btn-inverse'
                @squad_list_tags.find('.btn').removeClass 'btn-inverse'
                @show_extended_squads_button.addClass 'btn-inverse'
                @squad_list_modal.find('.squad-list li').each (idx, elem) ->
                    $(elem).toggle $(elem).data().squad.serialized.search(/v\d+Zs/) != -1

        @show_epic_squads_button = $ @squad_list_modal.find('.show-epic-squads')
        @show_epic_squads_button.click (e) =>
            unless @squad_display_mode == 'epic'
                @squad_display_mode = 'epic'
                @squad_list_modal.find('.squad-display-mode .btn').removeClass 'btn-inverse'
                @squad_list_tags.find('.btn').removeClass 'btn-inverse'
                @show_epic_squads_button.addClass 'btn-inverse'
                @squad_list_modal.find('.squad-list li').each (idx, elem) ->
                    $(elem).toggle $(elem).data().squad.serialized.search(/v\d+Ze/) != -1

        @show_hyperspace_squads_button = $ @squad_list_modal.find('.show-hyperspace-squads')
        @show_hyperspace_squads_button.click (e) =>
            unless @squad_display_mode == 'hyperspace'
                @squad_display_mode = 'hyperspace'
                @squad_list_modal.find('.squad-display-mode .btn').removeClass 'btn-inverse'
                @squad_list_tags.find('.btn').removeClass 'btn-inverse'
                @show_hyperspace_squads_button.addClass 'btn-inverse'
                @squad_list_modal.find('.squad-list li').each (idx, elem) ->
                    $(elem).toggle $(elem).data().squad.serialized.search(/v\d+Zh/) != -1

        @show_quickbuild_squads_button = $ @squad_list_modal.find('.show-quickbuild-squads')
        @show_quickbuild_squads_button.click (e) =>
            unless @squad_display_mode == 'quickbuild'
                @squad_display_mode = 'quickbuild'
                @squad_list_modal.find('.squad-display-mode .btn').removeClass 'btn-inverse'
                @squad_list_tags.find('.btn').removeClass 'btn-inverse'
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
            @squad_list_tags.find('.btn').removeClass 'btn-inverse'
            @squad_list_modal.find('.squad-list li').each (idx, elem) =>
                $(elem).toggle (($(elem).data().squad.additional_data.archived?) == @show_archived)

        @save_as_modal = $ document.createElement('DIV')
        @save_as_modal.addClass 'modal fade d-print-none'
        @save_as_modal.tabindex = "-1"
        @save_as_modal.role = "dialog"
        $(document.body).append @save_as_modal
        @save_as_modal.append $.trim """
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="translated" defaultText="Save Squad As..."></h3>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <label for="xw-be-squad-save-as">
                    <span class="translated" defaultText="New Squad Name"></span>
                    <input id="xw-be-squad-save-as"></input>
                </label>
                <span class="name-availability"></span>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary save translated" aria-hidden="true" defaultText="Save"></button>
            </div>
        </div>
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
                    tag: builder.getTag()
                builder.backend_save_list_as_button.addClass 'disabled'
                builder.backend_status.html $.trim """
                    <i class="fa fa-sync fa-spin"></i>&nbsp;#{exportObj.translate('ui', 'Saving squad...')}
                """
                builder.backend_status.show()
                new_name = $.trim @save_as_input.val()
                @save builder.serialize(), null, new_name, builder.faction, additional_data, (results) =>
                    if results.success
                        builder.current_squad.id = results.id
                        builder.current_squad.name = new_name
                        builder.current_squad.dirty = false
                        builder.container.trigger 'xwing-backend:squadNameChanged'
                        builder.container.trigger 'xwing-backend:squadDirtinessChanged'
                        builder.backend_status.html $.trim """
                            <i class="fa fa-check"></i>&nbsp;#{exportObj.translate('ui', 'New squad saved successfully.')}
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
                    <i class="fa fa-spin fa-spinner"></i> #{exportObj.translate('ui', 'Checking name availability...')}
                """
                timer = @save_as_modal.data('timer')
                window.clearInterval(timer) if timer?
                @save_as_modal.data 'timer', window.setInterval(@nameCheck, 500)

        @name_availability_container = $ @save_as_modal.find('.name-availability')

        # this is dynamically created UI, so we need to translate it after creation
        exportObj.translateUIElements(@squad_list_modal)

        @delete_modal = $ document.createElement('DIV')
        @delete_modal.addClass 'modal fade d-print-none'
        @delete_modal.tabindex = "-1"
        @delete_modal.role = "dialog"
        $(document.body).append @delete_modal
        @delete_modal.append $.trim """
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3><span class="translated" defaultText="Really Delete"></span> <span class="squad-name-placeholder"></span>?</h3>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <p class="translated" defaultText="Sure to delete?"></p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger delete" aria-hidden="true"><span class="translated" defaultText="Yes, Delete"></span> <i class="squad-name-placeholder"></i></button>
                <button class="btn btn-modal translated" data-dismiss="modal" aria-hidden="true" defaultText="Never Mind"></button>
            </div>
        </div>
    </div>
        """

        @delete_name_container = $ @delete_modal.find('.squad-name-placeholder')
        @delete_button = $ @delete_modal.find('button.delete')
        @delete_button.click (e) =>
            e.preventDefault()
            builder = @delete_modal.data 'builder'
            builder.backend_status.html $.trim """
                <i class="fa fa-sync fa-spin"></i>&nbsp;#{exportObj.translate('ui', "Deleting squad...")}
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
                        <i class="fa fa-check"></i>&nbsp;#{exportObj.translate('ui', "Squad deleted.")}
                    """
                else
                    builder.backend_status.html $.trim """
                        <i class="fa fa-exclamation-circle"></i>&nbsp;#{results.error}
                    """
                    # Failed, so offer chance to delete again
                    builder.backend_delete_list_button.removeClass 'disabled'

        # this is dynamically created UI, so we need to translate it after creation
        exportObj.translateUIElements(@delete_modal)

        @unsaved_modal = $ document.createElement('DIV')
        @unsaved_modal.addClass 'modal fade d-print-none'
        @unsaved_modal.tabindex = "-1"
        @unsaved_modal.role = "dialog"
        $(document.body).append @unsaved_modal
        @unsaved_modal.append $.trim """
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="translated" defaultText="Unsaved Changes"></h3>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <p class="translated" defaultText="Unsaved Changes Warning"></p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-modal btn-primary translated" aria-hidden="true" data-dismiss="modal" defaultText="Go Back"></button>
                <button class="btn btn-danger discard translated" aria-hidden="true" defaultText="Discard Changes"></button>
            </div>
        </div>
    </div>
        """
        @unsaved_discard_button = $ @unsaved_modal.find('button.discard')
        @unsaved_discard_button.click (e) =>
            e.preventDefault()
            @unsaved_modal.data('builder').current_squad.dirty = false
            @unsaved_modal.data('callback')()
            @unsaved_modal.modal 'hide'
            
        # this is dynamically created UI, so we need to translate it after creation
        exportObj.translateUIElements(@unsaved_modal)

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
        # check if user provided a language preference. If yes, this will override the browser preference queried in translate.coffee
        if settings?.language?
            # we found a language, provide it with priority 10
            cb settings.language, 10
        # otherwise we may parse a language out of the headers 
        else
            await @getHeaders defer(headers)
            if headers?.HTTP_ACCEPT_LANGUAGE?
                # Need to parse out language preferences
                console.log "#{headers.HTTP_ACCEPT_LANGUAGE}"
                for language_range in headers.HTTP_ACCEPT_LANGUAGE.split(',')
                    [ language_tag, quality ] = language_range.split ';'
                    console.log "#{language_tag}, #{quality}"
                    if language_tag == '*'
                        # let's give that half priority
                        cb 'English', -0.5
                    else
                        language_code = language_tag.split('-')[0]
                        # check if the language code is available
                        if langc of exportObj.codeToLanguage
                            # yep - use as language with reasonable priority
                            cb(exportObj.codeToLanguage[language_code], 8)
                        else
                            # bullshit priority - we can't support what the user wants
                            # (maybe he gave another option though in his browser settings)
                            cb 'English', -1
                    break
            else
                # no headers, callback with bullshit priority
                cb 'English', -1

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
            
