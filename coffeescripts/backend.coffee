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

    ###
    constructor: (args) ->
        # args
        @server = args.server
        @builders = args.builders
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

        @setupHandlers()
        @setupUI()

        $.ajaxSetup
            xhrFields:
                withCredentials: true

        # Check initial authentication status
        @authenticate $.noop

        # Finally, hook up the builders
        for builder in @builders
            builder.setBackend this

    save: (serialized, id=null, name, faction, additional_data={}, cb) ->
        post_args =
            name: $.trim name
            faction: $.trim faction
            additional_data: additional_data
        if id?
            post_url = "#{@server}/#{id}"
        else
            post_url = "#{@server}/new"
            post_args['_method'] = 'put'
        $.post post_args, (data, textStatus, jqXHR) =>
            cb
                id: data.id
                success: data.success
                error: data.error

    delete: (id, cb) ->
        post_args =
            '_method': 'delete'
        $.post "#{@server}/#{id}", post_args, (data, textStatus, jqXHR) =>
            cb
                success: data.success
                error: data.error

    list: () ->
        await $.get "#{@server}/squads/list", defer data
        data

    listAll: () ->
        await $.get "#{@server}/all", defer data
        data

    authenticate: (cb=$.noop) ->
        old_auth_state = @authenticated
        await $.get "#{@server}/ping", defer data
        if data?.success
            @authenticated = true
            cb()
        else
            @authenticated = false
        if old_auth_state != @authenticated
            $(window).trigger 'xwing-backend:authenticationChanged', @authenticated
        @oauth_window = null
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

    setupUI: () ->
        @login_modal = $ document.createElement('DIV')
        @login_modal.addClass 'modal hide fade'
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
                <ul class="login-providers inline"></ul>
                <p>
                    This will cause a new window to pop up and authenticate with the chosen provider.  You may have to allow pop ups just this time.  (Sorry.)
                </p>
            </div>
            <div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        """
        $.get "#{@server}/methods", (data, textStatus, jqXHR) =>
            methods_ul = $ @login_modal.find('ul.login-providers')
            for method in data.methods
                a = $ document.createElement('A')
                a.addClass 'btn btn-inverse'
                a.data 'url', "#{@server}/auth/#{method}"
                a.append """<i class="#{@method_metadata[method].icon}"></i>&nbsp;#{@method_metadata[method].text}"""
                a.click (e) =>
                    e.preventDefault()
                    @oauth_window = window.open $(e.target).data('url'), "xwing_login"
                li = $ document.createElement('LI')
                li.append a
                methods_ul.append li
            @ui_ready = true

    setupHandlers: () ->
        $(window).on 'message', (e) =>
            ev = e.originalEvent
            if ev.origin == @server
                switch ev.data?.command
                    when 'auth_successful'
                        @authenticate $.noop
                        @login_modal.modal 'hide'
                        ev.source.close()
                    else
                        console.log "Unexpected command #{ev.data?.command}"
            else
                console.log "Message received from unapproved origin #{ev.origin}"
                window.last_ev = e
