###
    X-Wing Squad Builder 2.0
    Stephen Kim <raithos@gmail.com>
    https://raithos.github.io
###
exportObj = exports ? this

exportObj.sortHelper = (a, b) ->
    if a.points == b.points
        a_name = a.text.replace(/[^a-z0-9]/ig, '')
        b_name = b.text.replace(/[^a-z0-9]/ig, '')
        if a_name == b_name
            0
        else
            if a_name > b_name then 1 else -1
    else if typeof(a.points) == "string" # handling cases where points value is "*" instead of a number
        1
    else 
        if a.points > b.points then 1 else -1

exportObj.toTTS = (txt) ->
    if not txt?
        null
    else 
        txt.replace(/\(.*\)/g,"").replace("�",'"').replace("�",'"')

exportObj.slotsMatching = (slota, slotb) ->
    return true if slota == slotb
    return false if slota != 'HardpointShip' and slotb != 'HardpointShip'
    return true if slota == 'Torpedo' or slota == 'Cannon' or slota == 'Missile'
    return true if slotb == 'Torpedo' or slotb == 'Cannon' or slotb == 'Missile'
    return false

$.isMobile = ->
    if (navigator.userAgent.match /(iPhone|iPod|iPad|Android)/i) or navigator.maxTouchPoints > 1
        return true
    return false
    

$.randomInt = (n) ->
    Math.floor(Math.random() * n)

$.isElementInView = (element, fullyInView) ->
    pageTop = $(window).scrollTop()
    pageBottom = pageTop + $(window).height()
    elementTop = $(element).offset().top
    elementBottom = elementTop + $(element).height()

    if fullyInView
        return ((pageTop < elementTop) && (pageBottom > elementBottom))
    else
        return ((elementTop <= pageBottom) && (elementBottom >= pageTop))


# ripped from http://stackoverflow.com/questions/901115/how-can-i-get-query-string-values
$.getParameterByName = (name) ->
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]")
    regexS = "[\\?&]" + name + "=([^&#]*)"
    regex = new RegExp(regexS)
    results = regex.exec(window.location.search)
    if results == null
        return ""
    else
        return decodeURIComponent(results[1].replace(/\+/g, " "))

#jQuery.event.special.touchstart = setup: (_, ns, handle) ->
#  if ns.includes('noPreventDefault')
#    @addEventListener 'touchstart', handle, passive: false
#  else
#    @addEventListener 'touchstart', handle, passive: true
#  return
    
Array::intersects = (other) ->
    for item in this
        if item in other
            return true
    return false

Array::removeItem = (item) ->
    idx = @indexOf item
    @splice(idx, 1) unless idx == -1
    this

String::capitalize = ->
    @charAt(0).toUpperCase() + @slice(1)

String::getXWSBaseName = ->
    @split('-')[0]

URL_BASE = "#{window.location.protocol}//#{window.location.host}#{window.location.pathname}"
SQUAD_DISPLAY_NAME_MAX_LENGTH = 24

statAndEffectiveStat = (base_stat, effective_stats, key) ->
    if base_stat?
        """#{base_stat}#{if (effective_stats? and effective_stats[key]? and effective_stats[key] != base_stat) then " (#{effective_stats[key]})" else ""}"""
    else if effective_stats? and effective_stats[key]?
        """0 (#{effective_stats[key]})"""
    else
        "0"

getPrimaryFaction = (faction) ->
    switch faction
        when 'Rebel Alliance'
            'Rebel Alliance'
        when 'Galactic Empire'
            'Galactic Empire'
        else
            faction

conditionToHTML = (condition) ->
    html = $.trim """
        <div class="condition">
            <div class="name">#{if condition.unique then "&middot;&nbsp;" else ""}#{if condition.display_name then condition.display_name else condition.name}</div>
            <div class="text">#{condition.text}</div>
        </div>
    """

# Assumes cards.js will be loaded

class exportObj.SquadBuilder
    constructor: (args) ->
        # args
        @container = $ args.container
        @faction = $.trim args.faction
        @printable_container = $ args.printable_container
        @tab = $ args.tab

        # internal state
        @ships = []
        @uniques_in_use =
            Pilot:
                []
            Upgrade:
                []
            Slot:
                []
        @standard_list =
            Upgrade:
                []
            Ship:
                []
        @suppress_automatic_new_ship = false
        @tooltip_currently_displaying = null
        @randomizer_options =
            sources: null
            points: 200
            bid_goal: 5
            ships_or_upgrades: 3
            ship_limit: 0
            collection_only: true
            fill_zero_pts: false
        @total_points = 0
        # a squad given in the link is loaded on construction of that builder. It will set all gamemodes of already existing builders accordingly, but we did not exists back than. So we copy over the gamemode
        @isHyperspace = exportObj.builders[0]?.isHyperspace ? false
        @isEpic = exportObj.builders[0]?.isEpic ? false
        @isQuickbuild = exportObj.builders[0]?.isQuickbuild ? false

        @backend = null
        @current_squad = {}
        @language = 'English'

        @collection = null

        @current_obstacles = []

        @setupUI()
        @game_type_selector.val (exportObj.builders[0] ? @).game_type_selector.val()
        @setupEventHandlers()

        window.setInterval @updatePermaLink, 250

        @isUpdatingPoints = false

        if $.getParameterByName('f') == @faction
            @resetCurrentSquad(true)
            @loadFromSerialized $.getParameterByName('d')
        else
            @resetCurrentSquad()
            @addShip()

    resetCurrentSquad: (initial_load=false) ->
        default_squad_name = 'Unnamed Squadron'

        squad_name = $.trim(@squad_name_input.val()) or default_squad_name
        if initial_load and $.trim $.getParameterByName('sn')
            squad_name = $.trim $.getParameterByName('sn')

        squad_obstacles = []
        if initial_load and $.trim $.getParameterByName('obs')
            squad_obstacles = ($.trim $.getParameterByName('obs')).split(",").slice(0, 3)
            @current_obstacles = squad_obstacles
        else if @current_obstacles
            squad_obstacles = @current_obstacles

        @current_squad =
            id: null
            name: squad_name
            dirty: false
            additional_data:
                points: @total_points
                description: ''
                cards: []
                notes: ''
                obstacles: squad_obstacles
                tag: ''
            faction: @faction

        if @total_points > 0
            if squad_name == default_squad_name
                @current_squad.name = 'Unsaved Squadron'
            @current_squad.dirty = true

        @container.trigger 'xwing-backend:squadNameChanged'
        @container.trigger 'xwing-backend:squadDirtinessChanged'

    newSquadFromScratch: (squad_name = 'New Squadron') ->
        @squad_name_input.val squad_name
        @removeAllShips()
        @addShip() if not @suppress_automatic_new_ship
        @current_obstacles = []
        @resetCurrentSquad()
        @notes.val ''
        @tag.val ''

    setupUI: ->
        DEFAULT_RANDOMIZER_POINTS = 200
        DEFAULT_RANDOMIZER_TIMEOUT_SEC = 4
        DEFAULT_RANDOMIZER_BID_GOAL = 5
        DEFAULT_RANDOMIZER_SHIPS_OR_UPGRADES = 3
        DEFAULT_RANDOMIZER_SHIP_LIMIT = 0

        @status_container = $ document.createElement 'DIV'
        @status_container.addClass 'container-fluid'
        @status_container.append $.trim '''
            <div class="row squad-name-and-points-row">
                <div class="col-md-3 squad-name-container">
                    <div class="display-name">
                        <span class="squad-name"></span>
                        <i class="far fa-edit"></i>
                    </div>
                    <div class="input-append">
                        <input type="text" maxlength="64" placeholder="Name your squad..." />
                        <button class="btn save"><i class="fa fa-pen-square"></i></button>
                    </div>
                    <br />
                    <select class="game-type-selector">
                        <option value="standard">Extended</option>
                        <option value="hyperspace">Hyperspace</option>
                        <option value="epic">Epic</option>
                        <option value="quickbuild">Quickbuild</option>
                    </select>
                </div>
                <div class="col-md-4 points-display-container">
                    Points: <span class="total-points">0</span> / <input type="number" class="desired-points" value="200">
                    <span class="points-remaining-container">(<span class="points-remaining"></span>&nbsp;left) <span class="points-destroyed red"></span></span>
                    <span class="content-warning unreleased-content-used d-none"><br /><i class="fa fa-exclamation-circle"></i>&nbsp;<span class="translated"></span></span>
                    <span class="content-warning loading-failed-container d-none"><br /><i class="fa fa-exclamation-circle"></i>&nbsp;<span class="translated"></span></span>
                    <span class="content-warning collection-invalid d-none"><br /><i class="fa fa-exclamation-circle"></i>&nbsp;<span class="translated"></span></span>
                    <span class="content-warning ship-number-invalid-container d-none"><br /><i class="fa fa-exclamation-circle"></i>&nbsp;<span class="translated">A tournament legal squad must contain 2-8 ships!</span></span>
                </div>
                <div class="col-md-5 float-right button-container">
                    <div class="btn-group float-right">

                        <button class="btn btn-info view-as-text"><span class="d-none d-lg-block"><i class="fa fa-print"></i>&nbsp;Print/Export</span><span class="d-lg-none"><i class="fa fa-print"></i></span></button>
                        <a class="btn btn-primary d-none collection"><span class="d-none d-lg-block"><i class="fa fa-folder-open"></i> Your Collection</span><span class="d-lg-none"><i class="fa fa-folder-open"></i></span></a>
                        <!-- Randomize button is marked as danger, since it creates a new squad -->
                        <button class="btn btn-danger randomize"><span class="d-none d-lg-block"><i class="fa fa-random"></i> Randomize!</span><span class="d-lg-none"><i class="fa fa-random"></i></span></button>
                        <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item randomize-options">Randomizer Options</a></li>
                            <li><a class="dropdown-item misc-settings">Misc Settings</a></li>
                        </ul>
                        

                    </div>
                </div>
            </div>

            <div class="row squad-save-buttons">
                <div class="col-md-12">
                    <button class="show-authenticated btn btn-primary save-list"><i class="far fa-save"></i>&nbsp;Save</button>
                    <button class="show-authenticated btn btn-primary save-list-as"><i class="far fa-file"></i>&nbsp;Save As...</button>
                    <button class="show-authenticated btn btn-primary delete-list disabled"><i class="fa fa-trash"></i>&nbsp;Delete</button>
                    <button class="show-authenticated btn btn-info backend-list-my-squads show-authenticated"><i class="fa fa-download"></i>&nbsp;Load Squad</button>
                    <button class="btn btn-info import-squad"><i class="fa fa-file-import"></i>&nbsp;Import</button>
                    <button class="btn btn-danger clear-squad"><i class="fa fa-plus-circle"></i>&nbsp;New Squad</button>
                    <span class="show-authenticated backend-status"></span>
                </div>
            </div>
        '''
        @container.append @status_container

        @xws_import_modal = $ document.createElement 'DIV'
        @xws_import_modal.addClass 'modal fade import-modal d-print-none'
        @xws_import_modal.tabindex = "-1"
        @xws_import_modal.role = "dialog"
        @xws_import_modal.append $.trim """
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3>XWS Import</h3>
                <button type="button" class="close d-print-none" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                Import your list via XWS into YASB.<br>
                <i>XWS is a common format to share lists between applications.</i>
                <div class="container-fluid">
                    <textarea class="xws-content" placeholder="Paste XWS here"></textarea>
                </div>
            </div>
            <div class="modal-footer d-print-none">
                <span class="xws-import-status"></span>&nbsp;
                <button class="btn btn-danger import-xws">Import</button>
            </div>
        </div>
    </div>
        """
        @from_xws_button = @container.find('button.import-squad')
        @from_xws_button.click (e) =>
            e.preventDefault()
            @xws_import_modal.find('.xws-import-status').text ' '
            @xws_import_modal.modal 'show'

        @load_xws_button = $ @xws_import_modal.find('button.import-xws')
        @load_xws_button.click (e) =>
            e.preventDefault()
            exportObj.loadXWSButton(@xws_import_modal)
        @container.append @xws_import_modal

        @list_modal = $ document.createElement 'DIV'
        @list_modal.addClass 'modal fade text-list-modal'
        @list_modal.tabindex = "-1"
        @list_modal.role = "dialog"
        @container.append @list_modal
        @list_modal.append $.trim """
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <div class="d-print-none">
                    <h4 class="modal-title"><span class="squad-name"></span> (<span class="total-points"></span>)</h4>
                </div>
                <div class="d-none d-print-block">
                    <div class="fancy-header">
                        <div class="squad-name"></div>
                        <div class="squad-faction"></div>
                        <div class="mask">
                            <div class="outer-circle">
                                <div class="inner-circle">
                                    <span class="total-points"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="fancy-under-header"></div>
                </div>
                <button type="button" class="close d-print-none" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <div class="fancy-list"></div>
                <div class="simple-list"></div>
                <div class="simplecopy-list">
                    <p>Copy the below and paste it elsewhere.</p>
                    <textarea></textarea><button class="btn btn-modal btn-copy">Copy</button>
                </div>
                <div class="reddit-list">
                    <p>Copy the below and paste it into your reddit post.</p>
                    <p>Make sure that the post editor is set to markdown mode.</p>
                    <textarea></textarea><button class="btn btn-modal btn-copy">Copy</button>
                </div>
                <div class="tts-list">
                    <p>Copy the below and paste it into the Tabletop Simulator.</p>
                    <textarea></textarea><br /><button class="btn btn-modal btn-copy">Copy</button>
                </div>
                <div class="bbcode-list">
                    <p>Copy the BBCode below and paste it into your forum post.</p>
                    <textarea></textarea><button class="btn btn-modal btn-copy">Copy</button>
                </div>
                <div class="html-list">
                    <textarea></textarea><button class="btn btn-modal btn-copy">Copy</button>
                </div>
                <div class="xws-list">
                    <p>Copy and paste this into an XWS-compliant application.
                    <div class="row full-row">
                        <div class="col d-inline-block d-none d-sm-block"><textarea></textarea><br /><button class="btn btn-modal btn-copy">Copy</button></div>
                        <div class="col d-inline-block d-none d-sm-block qrcode-container" id="xws-qrcode-container"></div>
                    </div>
                </div>
            </div>
            <div class="container-fluid modal-footer d-print-none">
                <div class="row full-row">
                    <div class="col d-inline-block d-none d-sm-block right-col">
                        <label class="color-skip-text-checkbox">
                            Skip Card Text <input type="checkbox" class="toggle-skip-text-print" />
                        </label><br />
                        <label class="vertical-space-checkbox">
                            Add Space for Cards <input type="checkbox" class="toggle-vertical-space" />
                        </label><br />
                        <label class="maneuver-print-checkbox">
                            Include Maneuvers Chart <input type="checkbox" class="toggle-maneuver-print" />
                        </label><br />
                        <label class="expanded-shield-hull-print-checkbox">
                            Expand Shield and Hull <input type="checkbox" class="toggle-expanded-shield-hull-print" />
                        </label>
                    </div>
                    <div class="col d-inline-block d-none d-sm-block right-col">
                        <label class="color-print-checkbox">
                            Print Color <input type="checkbox" class="toggle-color-print" checked="checked" />
                        </label><br />
                        <label class="qrcode-checkbox">
                            Include QR codes <input type="checkbox" class="toggle-juggler-qrcode" checked="checked" />
                        </label><br />
                        <label class="obstacles-checkbox">
                            Include Obstacle Choices <input type="checkbox" class="toggle-obstacles" />
                        </label>
                    </div>
                </div>
                <div class="row btn-group list-display-mode">
                    <button class="btn btn-modal select-simple-view">Simple</button>
                    <button class="btn btn-modal select-fancy-view d-none d-sm-block">Fancy</button>
                    <button class="btn btn-modal select-simplecopy-view">Text</button>
                    <button class="btn btn-modal select-tts-view">TTS</button>
                    <button class="btn btn-modal select-reddit-view">Reddit</button>
                    <button class="btn btn-modal select-bbcode-view">BBCode</button>
                    <button class="btn btn-modal select-html-view">HTML</button>
                    <button class="btn btn-modal select-xws-view">XWS</button>
                </div>
                <button class="btn btn-modal print-list d-none d-sm-block"><i class="fa fa-print"></i>&nbsp;Print</button>
            </div>
        </div>
    </div>
        """
        @fancy_container = $ @list_modal.find('.fancy-list')
        @fancy_total_points_container = $ @list_modal.find('div.modal-header .total-points')
        @simple_container = $ @list_modal.find('div.modal-body .simple-list')
        @reddit_container = $ @list_modal.find('div.modal-body .reddit-list')
        @reddit_textarea = $ @reddit_container.find('textarea')
        @reddit_textarea.attr 'readonly', 'readonly'
        @simplecopy_container = $ @list_modal.find('div.modal-body .simplecopy-list')
        @simplecopy_textarea = $ @simplecopy_container.find('textarea')
        @simplecopy_textarea.attr 'readonly', 'readonly'
        @tts_container = $ @list_modal.find('div.modal-body .tts-list')
        @tts_textarea = $ @tts_container.find('textarea')
        @tts_textarea.attr 'readonly', 'readonly'
        @xws_container = $ @list_modal.find('div.modal-body .xws-list')
        @xws_textarea = $ @xws_container.find('textarea')
        @xws_textarea.attr 'readonly', 'readonly'
        @bbcode_container = $ @list_modal.find('div.modal-body .bbcode-list')
        @bbcode_textarea = $ @bbcode_container.find('textarea')
        @bbcode_textarea.attr 'readonly', 'readonly'
        @htmlview_container = $ @list_modal.find('div.modal-body .html-list')
        @html_textarea = $ @htmlview_container.find('textarea')
        @html_textarea.attr 'readonly', 'readonly'
        @toggle_vertical_space_container = $ @list_modal.find('.vertical-space-checkbox')
        @toggle_color_print_container = $ @list_modal.find('.color-print-checkbox')
        @toggle_color_skip_text = $ @list_modal.find('.color-skip-text-checkbox')
        @toggle_maneuver_dial_container = $ @list_modal.find('.maneuver-print-checkbox')
        @toggle_expanded_shield_hull_container = $ @list_modal.find('.expanded-shield-hull-print-checkbox')
        @toggle_qrcode_container = $ @list_modal.find('.qrcode-checkbox')
        @toggle_obstacle_container = $ @list_modal.find('.obstacles-checkbox')
        @btn_print_list = ($ @list_modal.find('.print-list'))[0]

        @list_modal.on 'click', 'button.btn-copy', (e) =>
            @self = $(e.currentTarget)
            @self.siblings('textarea').select()
            @success = document.execCommand('copy')
            if @success
                @self.addClass 'btn-success'
                setTimeout ( =>
                    @self.removeClass 'btn-success'
                ), 1000

        @select_simple_view_button = $ @list_modal.find('.select-simple-view')
        @select_simple_view_button.click (e) =>
            @select_simple_view_button.blur()
            unless @list_display_mode == 'simple'
                @list_modal.find('.list-display-mode .btn').removeClass 'btn-inverse'
                @select_simple_view_button.addClass 'btn-inverse'
                @list_display_mode = 'simple'
                @simple_container.show()
                @fancy_container.hide()
                @simplecopy_container.hide()
                @reddit_container.hide()
                @tts_container.hide()
                @xws_container.hide()
                @bbcode_container.hide()
                @htmlview_container.hide()
                @toggle_vertical_space_container.hide()
                @toggle_color_print_container.hide()
                @toggle_color_skip_text.hide()
                @toggle_maneuver_dial_container.hide()
                @toggle_expanded_shield_hull_container.hide()
                @toggle_qrcode_container.show()
                @toggle_obstacle_container.show()
                @btn_print_list.disabled = false;

        @select_fancy_view_button = $ @list_modal.find('.select-fancy-view')
        @select_fancy_view_button.click (e) =>
            @select_fancy_view_button.blur()
            unless @list_display_mode == 'fancy'
                @list_modal.find('.list-display-mode .btn').removeClass 'btn-inverse'
                @select_fancy_view_button.addClass 'btn-inverse'
                @list_display_mode = 'fancy'
                @fancy_container.show()
                @simple_container.hide()
                @simplecopy_container.hide()
                @reddit_container.hide()
                @tts_container.hide()
                @bbcode_container.hide()
                @htmlview_container.hide()
                @xws_container.hide()
                @toggle_vertical_space_container.show()
                @toggle_color_print_container.show()
                @toggle_color_skip_text.show()
                @toggle_maneuver_dial_container.show()
                @toggle_expanded_shield_hull_container.show()
                @toggle_qrcode_container.show()
                @toggle_obstacle_container.show()
                @btn_print_list.disabled = false;
                
        @select_reddit_view_button = $ @list_modal.find('.select-reddit-view')
        @select_reddit_view_button.click (e) =>
            @select_reddit_view_button.blur()
            unless @list_display_mode == 'reddit'
                @list_modal.find('.list-display-mode .btn').removeClass 'btn-inverse'
                @select_reddit_view_button.addClass 'btn-inverse'
                @list_display_mode = 'reddit'
                @reddit_container.show()
                @simplecopy_container.hide()
                @bbcode_container.hide()
                @tts_container.hide()
                @htmlview_container.hide()
                @xws_container.hide()
                @simple_container.hide()
                @fancy_container.hide()
                @reddit_textarea.select()
                @reddit_textarea.focus()
                @toggle_vertical_space_container.hide()
                @toggle_color_print_container.hide()
                @toggle_color_skip_text.hide()
                @toggle_maneuver_dial_container.hide()
                @toggle_expanded_shield_hull_container.hide()
                @toggle_qrcode_container.hide()
                @toggle_obstacle_container.hide()
                @btn_print_list.disabled = true;

        @select_simplecopy_view_button = $ @list_modal.find('.select-simplecopy-view')
        @select_simplecopy_view_button.click (e) =>
            @select_simplecopy_view_button.blur()
            unless @list_display_mode == 'simplecopy'
                @list_modal.find('.list-display-mode .btn').removeClass 'btn-inverse'
                @select_simplecopy_view_button.addClass 'btn-inverse'
                @list_display_mode = 'simplecopy'
                @reddit_container.hide()
                @simplecopy_container.show()
                @bbcode_container.hide()
                @tts_container.hide()
                @htmlview_container.hide()
                @xws_container.hide()
                @simple_container.hide()
                @fancy_container.hide()
                @simplecopy_textarea.select()
                @simplecopy_textarea.focus()
                @toggle_vertical_space_container.hide()
                @toggle_color_print_container.hide()
                @toggle_color_skip_text.hide()
                @toggle_maneuver_dial_container.hide()
                @toggle_expanded_shield_hull_container.hide()
                @toggle_qrcode_container.hide()
                @toggle_obstacle_container.hide()
                @btn_print_list.disabled = true;
                
                
        @select_tts_view_button = $ @list_modal.find('.select-tts-view')
        @select_tts_view_button.click (e) =>
            @select_tts_view_button.blur()
            unless @list_display_mode == 'tts'
                @list_modal.find('.list-display-mode .btn').removeClass 'btn-inverse'
                @select_tts_view_button.addClass 'btn-inverse'
                @list_display_mode = 'tts'
                @tts_container.show()
                @bbcode_container.hide()
                @htmlview_container.hide()
                @xws_container.hide()
                @simple_container.hide()
                @simplecopy_container.hide()
                @reddit_container.hide()
                @fancy_container.hide()
                @tts_textarea.select()
                @tts_textarea.focus()
                @toggle_vertical_space_container.hide()
                @toggle_color_print_container.hide()
                @toggle_color_skip_text.hide()
                @toggle_maneuver_dial_container.hide()
                @toggle_expanded_shield_hull_container.hide()
                @toggle_qrcode_container.hide()
                @toggle_obstacle_container.hide()
                @btn_print_list.disabled = true;

        @select_bbcode_view_button = $ @list_modal.find('.select-bbcode-view')
        @select_bbcode_view_button.click (e) =>
            @select_bbcode_view_button.blur()
            unless @list_display_mode == 'bbcode'
                @list_modal.find('.list-display-mode .btn').removeClass 'btn-inverse'
                @select_bbcode_view_button.addClass 'btn-inverse'
                @list_display_mode = 'bbcode'
                @bbcode_container.show()
                @simplecopy_container.hide()
                @reddit_container.hide()
                @tts_container.hide()
                @htmlview_container.hide()
                @xws_container.hide()
                @simple_container.hide()
                @fancy_container.hide()
                @bbcode_textarea.select()
                @bbcode_textarea.focus()
                @toggle_vertical_space_container.hide()
                @toggle_color_print_container.hide()
                @toggle_color_skip_text.hide()
                @toggle_maneuver_dial_container.hide()
                @toggle_expanded_shield_hull_container.hide()
                @toggle_qrcode_container.hide()
                @toggle_obstacle_container.hide()
                @btn_print_list.disabled = true;

        @select_html_view_button = $ @list_modal.find('.select-html-view')
        @select_html_view_button.click (e) =>
            @select_html_view_button.blur()
            unless @list_display_mode == 'html'
                @list_modal.find('.list-display-mode .btn').removeClass 'btn-inverse'
                @select_html_view_button.addClass 'btn-inverse'
                @list_display_mode = 'html'
                @reddit_container.hide()
                @simplecopy_container.hide()
                @tts_container.hide()
                @bbcode_container.hide()
                @htmlview_container.show()
                @simple_container.hide()
                @fancy_container.hide()
                @xws_container.hide()
                @html_textarea.select()
                @html_textarea.focus()
                @toggle_vertical_space_container.hide()
                @toggle_color_print_container.hide()
                @toggle_color_skip_text.hide()
                @toggle_maneuver_dial_container.hide()
                @toggle_expanded_shield_hull_container.hide()
                @toggle_qrcode_container.hide()
                @toggle_obstacle_container.hide()
                @btn_print_list.disabled = true;

        @select_xws_view_button = $ @list_modal.find('.select-xws-view')
        @select_xws_view_button.click (e) =>
            @select_xws_view()

        if $(window).width() >= 768
            @simple_container.hide()
            @select_fancy_view_button.click()
        else
            @select_simple_view_button.click()

        @clear_squad_button = $ @status_container.find('.clear-squad')
        @clear_squad_button.click (e) =>
            if @current_squad.dirty and @backend?
                @backend.warnUnsaved this, () =>
                    @newSquadFromScratch()
            else
                @newSquadFromScratch()

        @squad_name_container = $ @status_container.find('div.squad-name-container')
        @squad_name_display = $ @container.find('.display-name')
        @squad_name_placeholder = $ @container.find('.squad-name')
        @squad_name_input = $ @squad_name_container.find('input')
        @squad_name_save_button = $ @squad_name_container.find('button.save')
        @squad_name_input.closest('div').hide()
        @points_container = $ @status_container.find('div.points-display-container')
        @total_points_span = $ @points_container.find('.total-points')
        @game_type_selector = $ @status_container.find('.game-type-selector')
        @game_type_selector.select2
            minimumResultsForSearch: -1
        @game_type_selector.change (e) =>
            # $(window).trigger 'xwing:gameTypeChanged', @game_type_selector.val()
            @onGameTypeChanged @game_type_selector.val()
        @desired_points_input = $ @points_container.find('.desired-points')
        @desired_points_input.change (e) =>
            @onPointsUpdated $.noop
        @points_remaining_span = $ @points_container.find('.points-remaining')
        @points_destroyed_span = $ @points_container.find('.points-destroyed')
        @points_remaining_container = $ @points_container.find('.points-remaining-container')
        @unreleased_content_used_container = $ @points_container.find('.unreleased-content-used')
        @loading_failed_container = $ @points_container.find('.loading-failed-container')
        @ship_number_invalid_container = $ @points_container.find('.ship-number-invalid-container')
        @collection_invalid_container = $ @points_container.find('.collection-invalid')
        @view_list_button = $ @status_container.find('div.button-container button.view-as-text')
        @randomize_button = $ @status_container.find('div.button-container button.randomize')
        @customize_randomizer = $ @status_container.find('div.button-container a.randomize-options')
        @misc_settings = $ @status_container.find('div.button-container a.misc-settings')
        @backend_status = $ @status_container.find('.backend-status')
        @backend_status.hide()

        @collection_button = $ @status_container.find('div.button-container a.collection')
        @collection_button.click (e) =>
            e.preventDefault()
            unless @collection_button.prop('disabled')
                @collection.modal.modal 'show'

        @squad_name_input.keypress (e) =>
            if e.which == 13
                @squad_name_save_button.click()
                false

        @squad_name_input.change (e) =>
            @backend_status.fadeOut 'slow'

        @squad_name_input.blur (e) =>
            @squad_name_input.change()
            @squad_name_save_button.click()

        @squad_name_display.click (e) =>
            e.preventDefault()
            @squad_name_display.hide()
            @squad_name_input.val $.trim(@current_squad.name)
            # Because Firefox handles this badly
            window.setTimeout () =>
                @squad_name_input.focus()
                @squad_name_input.select()
            , 100
            @squad_name_input.closest('div').show()
        @squad_name_save_button.click (e) =>
            e.preventDefault()
            @current_squad.dirty = true
            @container.trigger 'xwing-backend:squadDirtinessChanged'
            name = @current_squad.name = $.trim(@squad_name_input.val())
            if name.length > 0
                @squad_name_display.show()
                @container.trigger 'xwing-backend:squadNameChanged'
                @squad_name_input.closest('div').hide()

        @randomizer_options_modal = $ document.createElement('DIV')
        @randomizer_options_modal.addClass 'modal fade randomizer-modal'
        @randomizer_options_modal.tabindex = "-1"
        @randomizer_options_modal.role = "dialog"
        $('body').append @randomizer_options_modal
        @randomizer_options_modal.append $.trim """
            <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3>Random Squad Builder Options</h3>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <label>
                                Maximal desired bid
                                <input type="number" class="randomizer-bid-goal" value="#{DEFAULT_RANDOMIZER_BID_GOAL}" placeholder="#{DEFAULT_RANDOMIZER_BID_GOAL}" />
                            </label><br />
                            <label>
                                Maximum Ship Count (0 for no limit)
                                <input type="number" class="randomizer-ship-limit" value="#{DEFAULT_RANDOMIZER_SHIP_LIMIT}" placeholder="#{DEFAULT_RANDOMIZER_SHIP_LIMIT}" />
                            </label><br />
                            <label>
                                More upgrades
                                <input type="range" min="0" max="10" class="randomizer-ships-or-upgrades" value="#{DEFAULT_RANDOMIZER_SHIPS_OR_UPGRADES}" placeholder="#{DEFAULT_RANDOMIZER_SHIPS_OR_UPGRADES}" />
                                Less upgrades
                            </label><br />
                            <label>
                                <input type="checkbox" class="randomizer-collection-only" checked="checked"/> 
                                Only use items from collection
                            </label><br />
                            <label>
                                Sets and Expansions (default all)
                                <select class="randomizer-sources" multiple="1" data-placeholder="Use all sets and expansions">
                                </select>
                            </label><br />
                            <label>
                                <input type="checkbox" class="randomizer-fill-zero-pts" /> 
                                Always fill 0-point slots
                            </label><br />
                            <label>
                                Maximum Seconds to Spend Randomizing
                                <input type="number" class="randomizer-timeout" value="#{DEFAULT_RANDOMIZER_TIMEOUT_SEC}" placeholder="#{DEFAULT_RANDOMIZER_TIMEOUT_SEC}" />
                            </label>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-primary do-randomize" aria-hidden="true">Randomize!</button>
                        <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                    </div>
                </div>
            </div>
        """
        @randomizer_source_selector = $ @randomizer_options_modal.find('select.randomizer-sources')
        for expansion in exportObj.expansions
            opt = $ document.createElement('OPTION')
            opt.text expansion
            @randomizer_source_selector.append opt
        @randomizer_source_selector.select2
            width: "100%"
            minimumResultsForSearch: if $.isMobile() then -1 else 0
        @randomizer_collection_selector = ($ @randomizer_options_modal.find('.randomizer-collection-only'))[0]
        @randomizer_fill_zero_pts = ($ @randomizer_options_modal.find('.randomizer-fill-zero-pts'))[0]

        @randomize_button.click (e) =>
            e.preventDefault()
            if @current_squad.dirty and @backend?
                @backend.warnUnsaved this, () =>
                    @randomize_button.click()
            else
                points = parseInt @desired_points_input.val()
                points = DEFAULT_RANDOMIZER_POINTS if (isNaN(points) or points <= 0)
                bid_goal = parseInt $(@randomizer_options_modal.find('.randomizer-bid-goal')).val()
                bid_goal = DEFAULT_RANDOMIZER_BID_GOAL if (isNaN(bid_goal) or bid_goal < 0)
                ship_limit = parseInt $(@randomizer_options_modal.find('.randomizer-ship-limit')).val()
                ship_limit = DEFAULT_RANDOMIZER_SHIP_LIMIT if (isNaN(ship_limit) or ship_limit < 0)
                ships_or_upgrades = parseInt $(@randomizer_options_modal.find('.randomizer-ships-or-upgrades')).val()
                ships_or_upgrades = DEFAULT_RANDOMIZER_SHIPS_OR_UPGRADES if (isNaN(ships_or_upgrades) or ships_or_upgrades < 0)
                timeout_sec = parseInt $(@randomizer_options_modal.find('.randomizer-timeout')).val()
                timeout_sec = DEFAULT_RANDOMIZER_TIMEOUT_SEC if (isNaN(timeout_sec) or timeout_sec <= 0)
                # console.log "points=#{points}, sources=#{@randomizer_source_selector.val()}, timeout=#{timeout_sec}"
                @randomSquad(points, @randomizer_source_selector.val(), timeout_sec * 1000, bid_goal, ship_limit, ships_or_upgrades, @randomizer_collection_selector.checked, @randomizer_fill_zero_pts.checked)

        @randomizer_options_modal.find('button.do-randomize').click (e) =>
            e.preventDefault()
            @randomizer_options_modal.modal('hide')
            @randomize_button.click()
            
        @customize_randomizer.click (e) =>
            e.preventDefault()
            @randomizer_options_modal.modal()

        @misc_settings_modal = $ document.createElement('DIV')
        @misc_settings_modal.addClass 'modal fade'
        @misc_settings_modal.tabindex = "-1"
        @misc_settings_modal.role = "dialog"
        $('body').append @misc_settings_modal
        @misc_settings_modal.append $.trim """
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3>Miscellaneous Settings</h3>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <label class = "toggle-initiative-prefix-names misc-settings-label">
                    <input type="checkbox" class="initiative-prefix-names-checkbox misc-settings-checkbox" /> Put INI as prefix in front of names. 
                </label><br />
                <label>
                    <input type="checkbox" checked /> Is Dee Yun the worst?
                </label>
            </div>
            <div class="modal-footer">
                <span class="misc-settings-infoline"></span>
                &nbsp;
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        </div>
    </div>
        """
        @misc_settings_infoline = $ @misc_settings_modal.find('.misc-settings-infoline')
        @misc_settings_initiative_prefix = $ @misc_settings_modal.find('.initiative-prefix-names-checkbox')
        if @backend? 
            @backend.getSettings (st) =>
                exportObj.settings ?= []
                exportObj.settings.initiative_prefix = st.showInitiativeInFrontOfPilotName?
                if st.showInitiativeInFrontOfPilotName? 
                    @misc_settings_initiative_prefix.prop('checked', true)
        else 
            @waiting_for_backend ?= []
            @waiting_for_backend.push => 
                @backend.getSettings (st) =>
                    exportObj.settings ?= []
                    exportObj.settings.initiative_prefix = st.showInitiativeInFrontOfPilotName?
                    if st.showInitiativeInFrontOfPilotName? 
                        @misc_settings_initiative_prefix.prop('checked', true)
                        
        @misc_settings_initiative_prefix.click (e) =>
            exportObj.settings ?= []
            exportObj.settings.initiative_prefix = @misc_settings_initiative_prefix.prop('checked')
            if @backend? 
                if @misc_settings_initiative_prefix.prop('checked')
                    @backend.set 'showInitiativeInFrontOfPilotName', '1', (ds) =>
                        @misc_settings_infoline.text "Changes Saved"
                        @misc_settings_infoline.fadeIn 100, =>
                            @misc_settings_infoline.fadeOut 3000
                else 
                    @backend.deleteSetting 'showInitiativeInFrontOfPilotName', (dd) =>
                        @misc_settings_infoline.text "Changes Saved"
                        @misc_settings_infoline.fadeIn 100, =>
                            @misc_settings_infoline.fadeOut 3000

        @misc_settings.click (e) =>
            e.preventDefault()
            @misc_settings_modal.modal()
            @misc_settings_initiative_prefix.prop('checked', exportObj.settings?.initiative_prefix? and exportObj.settings.initiative_prefix)

        @choose_obstacles_modal = $ document.createElement 'DIV'
        @choose_obstacles_modal.addClass 'modal fade choose-obstacles-modal'
        @choose_obstacles_modal.tabindex = "-1"
        @choose_obstacles_modal.role = "dialog"
        @container.append @choose_obstacles_modal
        @choose_obstacles_modal.append $.trim """
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <label class='choose-obstacles-description'>Choose up to three obstacles, to include in the permalink for use in external programs</label>
            </div>
            <div class="modal-body">
                <div class="obstacle-select-container" style="float:left">
                    <select multiple class='obstacle-select' size="18">
                        <option class="coreasteroid0-select" value="coreasteroid0">Core Asteroid 0</option>
                        <option class="coreasteroid1-select" value="coreasteroid1">Core Asteroid 1</option>
                        <option class="coreasteroid2-select" value="coreasteroid2">Core Asteroid 2</option>
                        <option class="coreasteroid3-select" value="coreasteroid3">Core Asteroid 3</option>
                        <option class="coreasteroid4-select" value="coreasteroid4">Core Asteroid 4</option>
                        <option class="coreasteroid5-select" value="coreasteroid5">Core Asteroid 5</option>
                        <option class="yt2400debris0-select" value="yt2400debris0">YT2400 Debris 0</option>
                        <option class="yt2400debris1-select" value="yt2400debris1">YT2400 Debris 1</option>
                        <option class="yt2400debris2-select" value="yt2400debris2">YT2400 Debris 2</option>
                        <option class="vt49decimatordebris0-select" value="vt49decimatordebris0">VT49 Debris 0</option>
                        <option class="vt49decimatordebris1-select" value="vt49decimatordebris1">VT49 Debris 1</option>
                        <option class="vt49decimatordebris2-select" value="vt49decimatordebris2">VT49 Debris 2</option>
                        <option class="core2asteroid0-select" value="core2asteroid0">Force Awakens Asteroid 0</option>
                        <option class="core2asteroid1-select" value="core2asteroid1">Force Awakens Asteroid 1</option>
                        <option class="core2asteroid2-select" value="core2asteroid2">Force Awakens Asteroid 2</option>
                        <option class="core2asteroid3-select" value="core2asteroid3">Force Awakens Asteroid 3</option>
                        <option class="core2asteroid4-select" value="core2asteroid4">Force Awakens Asteroid 4</option>
                        <option class="core2asteroid5-select" value="core2asteroid5">Force Awakens Asteroid 5</option>
                        <option class="gascloud1-select" value="gascloud1">Gas Cloud 1</option>
                        <option class="gascloud2-select" value="gascloud2">Gas Cloud 2</option>
                        <option class="gascloud3-select" value="gascloud3">Gas Cloud 3</option>
                        <option class="gascloud4-select" value="gascloud4">Gas Cloud 4</option>
                        <option class="gascloud5-select" value="gascloud5">Gas Cloud 5</option>
                        <option class="gascloud6-select" value="gascloud6">Gas Cloud 6</option>
                    </select>
                </div>
                <div class="obstacle-image-container" style="display:none;">
                    <img class="obstacle-image" src="images/core2asteroid0.png" />
                </div>
            </div>
            <div class="modal-footer d-print-none">
                <button class="btn close-print-dialog" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        </div>
    </div>
        """
        @obstacles_select = @choose_obstacles_modal.find('.obstacle-select')
        @obstacles_select_image = @choose_obstacles_modal.find('.obstacle-image-container')

        # Backend

        @backend_list_squads_button = $ @container.find('button.backend-list-my-squads')
        @backend_list_squads_button.click (e) =>
            e.preventDefault()
            if @backend?
                @backend.list this
        @backend_save_list_button = $ @container.find('button.save-list')
        @backend_save_list_button.click (e) =>
            e.preventDefault()
            if @backend? and not @backend_save_list_button.hasClass('disabled')
                additional_data =
                    points: @total_points
                    description: @describeSquad()
                    cards: @listCards()
                    notes: @notes.val().substr(0, 1024)
                    obstacles: @getObstacles()
                    tag: @tag.val().substr(0, 1024)
                @backend_status.html $.trim """
                    <i class="fa fa-sync fa-spin"></i>&nbsp;Saving squad...
                """
                @backend_status.show()
                @backend_save_list_button.addClass 'disabled'
                await @backend.save @serialize(), @current_squad.id, @current_squad.name, @faction, additional_data, defer(results)
                if results.success
                    @current_squad.dirty = false
                    if @current_squad.id?
                        @backend_status.html $.trim """
                            <i class="fa fa-check"></i>&nbsp;Squad updated successfully.
                        """
                    else
                        @backend_status.html $.trim """
                            <i class="fa fa-check"></i>&nbsp;New squad saved successfully.
                        """
                        @current_squad.id = results.id
                    @container.trigger 'xwing-backend:squadDirtinessChanged'
                else
                    @backend_status.html $.trim """
                        <i class="fa fa-exclamation-circle"></i>&nbsp;#{results.error}
                    """
                    @backend_save_list_button.removeClass 'disabled'
        @backend_save_list_as_button = $ @container.find('button.save-list-as')
        @backend_save_list_as_button.addClass 'disabled'
        @backend_save_list_as_button.click (e) =>
            e.preventDefault()
            if @backend? and not @backend_save_list_as_button.hasClass('disabled')
                @backend.showSaveAsModal this
        @backend_delete_list_button = $ @container.find('button.delete-list')
        @backend_delete_list_button.click (e) =>
            e.preventDefault()
            if @backend? and not @backend_delete_list_button.hasClass('disabled')

                @backend.showDeleteModal this

        content_container = $ document.createElement 'DIV'
        content_container.addClass 'container-fluid'
        @container.append content_container
        content_container.append $.trim """
            <div class="row">
                <div class="col-md-9 ship-container">
                    <label class="notes-container show-authenticated col-md-10">
                        <span class="notes-name">Squad Notes:</span>
                        <br />
                        <textarea class="squad-notes"></textarea>
                        <br />
                        <span class="tag-name">Tag:</span>
                        <input type="search" class="squad-tag"></input>
                    </label>
                    <div class="obstacles-container">
                            <button class="btn btn-info choose-obstacles"><i class="fa fa-cloud"></i>&nbsp;Choose Obstacles</button>
                    </div>
                </div>
                <div class="col-md-3 info-container" id="info-container">
                </div>
            </div>
        """

        @ship_container = $ content_container.find('div.ship-container')
        @info_container = $ content_container.find('div.info-container')
        @obstacles_container = content_container.find('.obstacles-container')
        @notes_container = $ content_container.find('.notes-container')
        @notes = $ @notes_container.find('textarea.squad-notes')
        @tag = $ @notes_container.find('input.squad-tag')

        @info_container.append $.trim @createInfoContainerUI()
        @info_container.hide()

        @print_list_button = $ @container.find('button.print-list')

        @container.find('[rel=tooltip]').tooltip()

        # obstacles
        @obstacles_button = $ @container.find('button.choose-obstacles')
        @obstacles_button.click (e) =>
            e.preventDefault()
            @showChooseObstaclesModal()

        # conditions
        @condition_container = $ document.createElement('div')
        @condition_container.addClass 'conditions-container d-flex flex-wrap'
        @container.append @condition_container

        @mobile_tooltip_modal = $ document.createElement 'DIV'
        @mobile_tooltip_modal.addClass 'modal fade choose-obstacles-modal d-print-none'
        @mobile_tooltip_modal.tabindex = "-1"
        @mobile_tooltip_modal.role = "dialog"
        @container.append @mobile_tooltip_modal
        @mobile_tooltip_modal.append $.trim """
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
            </div>
            <div class="modal-body">
                """ + @createInfoContainerUI() + """
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger close-print-dialog" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        </div>
    </div>
        """        
        
    createInfoContainerUI: ->
        return """
            <div class="card info-well">
                <div class="info-name"></div>
                <div class="info-type"></div>
                <span class="info-collection"></span>
                <table class="table-sm">
                    <tbody>
                        <tr class="info-ship">
                            <td class="info-header">Ship</td>
                            <td class="info-data"></td>
                        </tr>
                        <tr class="info-base">
                            <td class="info-header">Base</td>
                            <td class="info-data"></td> 
                        </tr>
                        <tr class="info-skill">
                            <td class="info-header">Initiative</td>
                            <td class="info-data info-skill"></td>
                        </tr>
                        <tr class="info-engagement">
                            <td class="info-header">Engagement</td>
                            <td class="info-data info-engagement"></td>
                        </tr>
                        <tr class="info-attack-bullseye">
                            <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-bullseyearc"></i></td>
                            <td class="info-data info-attack"></td>
                        </tr>
                        <tr class="info-attack">
                            <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-frontarc"></i></td>
                            <td class="info-data info-attack"></td>
                        </tr>
                        <tr class="info-attack-fullfront">
                            <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-fullfrontarc"></i></td>
                            <td class="info-data info-attack"></td>
                        </tr>
                        <tr class="info-attack-left">
                            <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-leftarc"></i></td>
                            <td class="info-data info-attack"></td>
                        </tr>
                        <tr class="info-attack-right">
                            <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-rightarc"></i></td>
                            <td class="info-data info-attack"></td>
                        </tr>
                        <tr class="info-attack-back">
                            <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-reararc"></i></td>
                            <td class="info-data info-attack"></td>
                        </tr>
                        <tr class="info-attack-turret">
                            <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-singleturretarc"></i></td>
                            <td class="info-data info-attack"></td>
                        </tr>
                        <tr class="info-attack-doubleturret">
                            <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-doubleturretarc"></i></td>
                            <td class="info-data info-attack"></td>
                        </tr>
                        <tr class="info-agility">
                            <td class="info-header"><i class="xwing-miniatures-font header-agility xwing-miniatures-font-agility"></i></td>
                            <td class="info-data info-agility"></td>
                        </tr>
                        <tr class="info-hull">
                            <td class="info-header"><i class="xwing-miniatures-font header-hull xwing-miniatures-font-hull"></i></td>
                            <td class="info-data info-hull"></td>
                        </tr>
                        <tr class="info-shields">
                            <td class="info-header"><i class="xwing-miniatures-font header-shield xwing-miniatures-font-shield"></i></td>
                            <td class="info-data info-shields"></td>
                        </tr>
                        <tr class="info-force">
                            <td class="info-header"><i class="xwing-miniatures-font header-force xwing-miniatures-font-forcecharge"></i></td>
                            <td class="info-data info-force"></td>
                        </tr>
                        <tr class="info-charge">
                            <td class="info-header"><i class="xwing-miniatures-font header-charge xwing-miniatures-font-charge"></i></td>
                            <td class="info-data info-charge"></td>
                        </tr>
                        <tr class="info-energy">
                            <td class="info-header"><i class="xwing-miniatures-font header-energy xwing-miniatures-font-energy"></i></td>
                            <td class="info-data info-energy"></td>
                        </tr>
                        <tr class="info-range">
                            <td class="info-header">Range</td>
                            <td class="info-data info-range"></td><td class="info-rangebonus"><i class="xwing-miniatures-font red header-range xwing-miniatures-font-rangebonusindicator"></i></td>
                        </tr>
                        <tr class="info-actions">
                            <td class="info-header">Actions</td>
                            <td class="info-data"></td>
                        </tr>
                        <tr class="info-upgrades">
                            <td class="info-header">Upgrades</td>
                            <td class="info-data"></td>
                        </tr>
                    </tbody>
                </table>
                <p class="info-restrictions"></p>
                <p class="info-text"></p>
                <p class="info-maneuvers"></p>
                <br />
                <span class="info-header info-sources">Sources:</span> 
                <span class="info-data info-sources"></span>
            </div>
        """

    setupEventHandlers: ->
        @container.on 'xwing:claimUnique', (e, unique, type, cb) =>
            @claimUnique unique, type, cb
        .on 'xwing:releaseUnique', (e, unique, type, cb) =>
            @releaseUnique unique, type, cb
        .on 'xwing:pointsUpdated', (e, cb=$.noop) =>
            if @isUpdatingPoints
                cb()
            else
                @isUpdatingPoints = true
                @onPointsUpdated () =>
                    @isUpdatingPoints = false
                    cb()
        .on 'xwing-backend:squadLoadRequested', (e, squad, cb=$.noop) =>
            @onSquadLoadRequested squad
            cb()
        .on 'xwing-backend:squadDirtinessChanged', (e) =>
            @onSquadDirtinessChanged()
        .on 'xwing-backend:squadNameChanged', (e) =>
            @onSquadNameChanged()
        .on 'xwing:beforeLanguageLoad', (e, cb=$.noop) =>
            @pretranslation_serialized = @serialize()
            cb()
        .on 'xwing:afterLanguageLoad', (e, language, cb=$.noop) =>
            if @language != language
                @language = language
                old_dirty = @current_squad.dirty
                if @pretranslation_serialized.length?
                    @removeAllShips()
                    @loadFromSerialized @pretranslation_serialized
                for ship in @ships
                    ship.updateSelections()
                @current_squad.dirty = old_dirty
                @pretranslation_serialized = undefined
                cb()
        # Recently moved this here.  Did this ever work?
        .on 'xwing:shipUpdated', (e, cb=$.noop) =>
            all_allocated = true
            for ship in @ships
                ship.updateSelections()
                if ship.ship_selector.val() == ''
                    all_allocated = false
            #console.log "all_allocated is #{all_allocated}, suppress_automatic_new_ship is #{@suppress_automatic_new_ship}"
            #console.log "should we add ship: #{all_allocated and not @suppress_automatic_new_ship}"
            @addShip() if all_allocated and not @suppress_automatic_new_ship

        $(window).on 'xwing-backend:authenticationChanged', (e) =>
            @resetCurrentSquad()
        .on 'xwing-collection:created', (e, collection) =>
            # console.log "#{@faction}: collection was created"
            @collection = collection
            # console.log "#{@faction}: Collection created, checking squad"
            @collection.onLanguageChange null, @language
            # @checkCollection()
            @collection_button.removeClass 'd-none'
        .on 'xwing-collection:changed', (e, collection) =>
            # console.log "#{@faction}: Collection changed, checking squad"
            @checkCollection()
        .on 'xwing-collection:destroyed', (e, collection) =>
            @collection = null
            @collection_button.addClass 'd-none'
        .on 'xwing:pingActiveBuilder', (e, cb) =>
            cb(this) if @container.is(':visible')
        .on 'xwing:activateBuilder', (e, faction, cb) =>
            if faction == @faction
                @tab.tab('show')
                cb this
        .on 'xwing:gameTypeChanged', (e, gameType, cb=$.noop) =>
            @onGameTypeChanged gameType, cb
            if @game_type_selector.val() != gameType
                @game_type_selector.val(gameType).trigger('change')

        @obstacles_select.change (e) =>
            if @obstacles_select.val().length > 3
                @obstacles_select.val(@current_squad.additional_data.obstacles)
            else
                previous_obstacles = @current_squad.additional_data.obstacles
                @current_obstacles = (o for o in @obstacles_select.val())
                if (previous_obstacles?)
                    new_selection = @current_obstacles.filter((element) => return previous_obstacles.indexOf(element) == -1)
                else
                    new_selection = @current_obstacles
                if new_selection.length > 0
                    @showChooseObstaclesSelectImage(new_selection[0])
                @current_squad.additional_data.obstacles = @current_obstacles
                @current_squad.dirty = true
                @container.trigger 'xwing-backend:squadDirtinessChanged'
                @container.trigger 'xwing:pointsUpdated'

        @view_list_button.click (e) =>
            e.preventDefault()
            @showTextListModal()

        @print_list_button.click (e) =>
            e.preventDefault()
            # Copy text list to printable
            @printable_container.find('.printable-header').html @list_modal.find('.modal-header').html()
            @printable_container.find('.printable-body').text ''
            switch @list_display_mode
                when 'simple'
                    @printable_container.find('.printable-body').html @simple_container.html()
                else
                    for ship in @ships
                        @printable_container.find('.printable-body').append ship.toHTML() if ship.pilot?
                    @printable_container.find('.fancy-ship').toggleClass 'tall', @list_modal.find('.toggle-vertical-space').prop('checked')
                    @printable_container.find('.printable-body').toggleClass 'bw', not @list_modal.find('.toggle-color-print').prop('checked')
                    if @list_modal.find('.toggle-skip-text-print').prop('checked')
                        for text in @printable_container.find('.upgrade-text, .fancy-pilot-text')
                            text.hidden = true
                    if @list_modal.find('.toggle-maneuver-print').prop('checked')
                        @printable_container.find('.printable-body').append @getSquadDialsAsHTML()
                    expanded_hull_and_shield = @list_modal.find('.toggle-expanded-shield-hull-print').prop('checked')
                    for container in @printable_container.find('.expanded-hull-or-shield')
                        container.hidden = not expanded_hull_and_shield
                    for container in @printable_container.find('.simple-hull-or-shield')
                        container.hidden = expanded_hull_and_shield

                    faction = switch @faction
                        when 'Rebel Alliance'
                            'rebel'
                        when 'Galactic Empire'
                            'empire'
                        when 'Scum and Villainy'
                            'scum'
                        when 'Resistance'
                            'rebel-outline'
                        when 'First Order'
                            'firstorder'
                        when 'Galactic Republic'
                            'republic'
                        when 'Separatist Alliance'
                            'separatists'
                    @printable_container.find('.squad-faction').html """<i class="xwing-miniatures-font xwing-miniatures-font-#{faction}"></i>"""
            # List type
            if @isHyperspace
                @printable_container.find('.squad-name').append """ <i class="xwing-miniatures-font xwing-miniatures-font-first-player-1"></i>"""
            if @isEpic
                @printable_container.find('.squad-name').append """ <i class="xwing-miniatures-font xwing-miniatures-font-energy"></i>""" 

                    
            # Notes, if present
            @printable_container.find('.printable-body').append $.trim """
                <div class="version">Points Version: 1.8.0 November 2020</div>
            """            
            if $.trim(@notes.val()) != ''
                @printable_container.find('.printable-body').append $.trim """
                    <h5 class="print-notes">Notes:</h5>
                    <pre class="print-notes"></pre>
                """            
                @printable_container.find('.printable-body pre.print-notes').text @notes.val()
            else

            # Conditions
            @printable_container.find('.printable-body').append $.trim """
                <div class="print-conditions"></div>
            """
            @printable_container.find('.printable-body .print-conditions').html @condition_container.html()
                
            # Obstacles
            if @list_modal.find('.toggle-obstacles').prop('checked')
                @printable_container.find('.printable-body').append $.trim """
                    <div class="obstacles">
                        <div>Mark the three obstacles you are using.</div>
                        <img class="obstacle-silhouettes" src="images/xws-obstacles.png" />
                    </div>
                """

            # Add List Juggler QR code
            query = @getPermaLinkParams(['sn', 'obs'])
            if query? and @list_modal.find('.toggle-juggler-qrcode').prop('checked')
                @printable_container.find('.printable-body').append $.trim """
                <div class="qrcode-container">
                    <div class="permalink-container">
                        <div class="qrcode"></div>
                        <div class="qrcode-text">Scan to open this list in the builder</div>
                    </div>
                    <div class="juggler-container">
                        <div class="qrcode"></div>
                        <div class="qrcode-text">For List Juggler (When it's updated for 2.0)</div>
                    </div>
                </div>
                """
                text = "https://yasb-xws.herokuapp.com/juggler#{query}"
                @printable_container.find('.juggler-container .qrcode').qrcode
                    render: 'div'
                    ec: 'M'
                    size: if text.length < 144 then 144 else 160
                    text: text
                text = "https://raithos.github.io/#{query}"
                @printable_container.find('.permalink-container .qrcode').qrcode
                    render: 'div'
                    ec: 'M'
                    size: if text.length < 144 then 144 else 160
                    text: text

            window.print()

        $(window).resize =>
            @select_simple_view_button.click() if $(window).width() < 768 and @list_display_mode != 'simple'
            for ship in @ships
                ship.checkPilotSelectorQueryModal()



         @notes.change @onNotesUpdated
                
         @tag.change @onNotesUpdated

         @notes.on 'keyup', @onNotesUpdated
         @tag.on 'keyup', @onNotesUpdated

    getPermaLinkParams: (ignored_params=[]) =>
        params = {}
        params.f = encodeURI(@faction) unless 'f' in ignored_params
        params.d = encodeURI(@serialize()) unless 'd' in ignored_params
        params.sn = encodeURIComponent(@current_squad.name) unless 'sn' in ignored_params
        params.obs = encodeURI(@current_squad.additional_data.obstacles || '') unless 'obs' in ignored_params
        return "?" + ("#{k}=#{v}" for k, v of params).join("&")

    getPermaLink: (params=@getPermaLinkParams()) => "#{URL_BASE}#{params}"

    updatePermaLink: () =>
        return unless @container.is(':visible') # gross but couldn't make clearInterval work
        next_params = @getPermaLinkParams()
        if window.location.search != next_params
          window.history.replaceState(next_params, '', @getPermaLink(next_params))

    onNotesUpdated: =>
        if @total_points > 0
            @current_squad.dirty = true
            @container.trigger 'xwing-backend:squadDirtinessChanged'

    onGameTypeChanged: (gametype, cb=$.noop) =>
        oldHyperspace = @isHyperspace
        oldEpic = @isEpic
        oldQuickbuild = @isQuickbuild
        @isHyperspace = false
        @isEpic = false
        @isQuickbuild = false
        switch gametype
            when 'standard'
                @desired_points_input.val 200
            when 'hyperspace'
                @isHyperspace = true
                @desired_points_input.val 200
            when 'epic'
                @isEpic = true
                @desired_points_input.val 500
            when 'quickbuild'
                @isQuickbuild = true
                @desired_points_input.val 8
        if oldQuickbuild != @isQuickbuild
            old_id = @current_squad.id
            @newSquadFromScratch($.trim(@current_squad.name))
            @current_squad.id = old_id # we want to keep the ID, so we allow people to use the save button
        else
            old_id = @current_squad.id
            @container.trigger 'xwing:pointsUpdated', $.noop
            @container.trigger 'xwing:shipUpdated'
        cb()

    addStandardizedToList: (ship) ->
        if ship.data?.name?
            idx = @standard_list['Ship'].indexOf ship.data.name
            if idx > -1
                for ship_upgrade in ship.upgrades
                    if ship_upgrade.slot == @standard_list['Upgrade'][idx].slot
                        ship_upgrade.setData @standard_list['Upgrade'][idx]
                        break

    onPointsUpdated: (cb=$.noop) =>
        tot_points = 0
        points_dest = 0
        unreleased_content_used = false
        # validating may remove the ship, if not only some upgrade, but the pilot himself is not valid. Thus iterate backwards over the array, so that is probably fine?
        
        for i in [@ships.length - 1 ... -1]
            ship = @ships[i]
            ship.validate()
            continue unless ship # if the ship has been removed, we no longer care about it
            # Standardized Loop, will integrate later for efficiency
            @addStandardizedToList(ship)

            tot_points += ship.getPoints()
            if ship.destroystate == 1
                points_dest += Math.ceil ship.getPoints() / 2
            else if ship.destroystate == 2
                points_dest += ship.getPoints()
            ship_uses_unreleased_content = ship.checkUnreleasedContent()
            unreleased_content_used = ship_uses_unreleased_content if ship_uses_unreleased_content
        

        @total_points = tot_points
        @points_destroyed = points_dest
        @total_points_span.text @total_points
        points_left = parseInt(@desired_points_input.val()) - @total_points
        points_destroyed = parseInt(@total_points)
        @points_remaining_span.text points_left
        @points_destroyed_span.html if points_dest != 0 then """<i class="xwing-miniatures-font xwing-miniatures-font-hit"></i>#{points_dest}""" else ""
        @points_remaining_container.toggleClass 'red', (points_left < 0)
        @unreleased_content_used_container.toggleClass 'd-none', not unreleased_content_used

        @fancy_total_points_container.text @total_points

        # update text list
        @fancy_container.text ''
        @simple_container.html '<table class="simple-table"></table>'
        simplecopy_ships = []
        reddit_ships = []
        tts_ships = []
        bbcode_ships = []
        htmlview_ships = []
        for ship in @ships
            if ship.pilot?
                @fancy_container.append ship.toHTML()
                
                #for dial in @fancy_container.find('.fancy-dial')
                    #dial.hidden = true

                @simple_container.find('table').append ship.toTableRow()
                simplecopy_ships.push ship.toSimpleCopy()
                reddit_ships.push ship.toRedditText()
                tts_ships.push ship.toTTSText()
                bbcode_ships.push ship.toBBCode()
                htmlview_ships.push ship.toSimpleHTML()
        @htmlview_container.find('textarea').val $.trim """#{htmlview_ships.join '<br />'}
<br />
<b><i>Total: #{@total_points}</i></b>
<br />
<a href="#{@getPermaLink()}">View in Yet Another Squad Builder 2.0</a>
        """

        @reddit_container.find('textarea').val $.trim """#{reddit_ships.join "    \n"}    \n**Total:** *#{@total_points}*    \n    \n[View in Yet Another Squad Builder 2.0](#{@getPermaLink()})"""
        @simplecopy_container.find('textarea').val $.trim """#{simplecopy_ships.join ""}    \nTotal: #{@total_points}    \n    \nView in Yet Another Squad Builder 2.0: #{@getPermaLink()}"""
        

        #Additional code to add obstacles to TTS
        obstacles = @getObstacles()
        if (obstacles? and obstacles.length > 0) and (tts_ships.length > 0)
            tts_ships[tts_ships.length - 1] = tts_ships[tts_ships.length - 1].slice(0, -2)
            tts_obstacles = ' |'
            for obstacle in obstacles
                if obstacle?
                    tts_obstacles +=  """ #{obstacle} /"""
            tts_obstacles = tts_obstacles.slice(0, -1)
            tts_ships.push tts_obstacles

        @tts_textarea.val $.trim """#{tts_ships.join ""}"""
        
        @bbcode_container.find('textarea').val $.trim """#{bbcode_ships.join "\n\n"}\n[b][i]Total: #{@total_points}[/i][/b]\n\n[url=#{@getPermaLink()}]View in Yet Another Squad Builder 2.0[/url]"""

        @xws_textarea.val $.trim JSON.stringify(@toXWS())
        $('#xws-qrcode-container').text ''
        $('#xws-qrcode-container').qrcode
            render: 'canvas'
            text: JSON.stringify(@toMinimalXWS())
            ec: 'L'
            size: 128

        # console.log "#{@faction}: Squad updated, checking collection"
        @checkCollection()

        # update conditions used
        # this old version of phantomjs i'm using doesn't support Set
        if Set?
            conditions_set = new Set()
            for ship in @ships
                # shouldn't there be a set union
                ship.getConditions().forEach (condition) ->
                    conditions_set.add(condition)
            conditions = []
            conditions_set.forEach (condition) ->
                conditions.push(condition)
            conditions.sort (a, b) ->
                if a.name.canonicalize() < b.name.canonicalize()
                    -1
                else if b.name.canonicalize() > a.name.canonicalize()
                    1
                else
                    0
            @condition_container.text ''
            conditions.forEach (condition) =>
                @condition_container.append conditionToHTML(condition)

        cb @total_points

    onSquadLoadRequested: (squad) =>
        # console.log(squad.additional_data.obstacles)
        @current_squad = squad
        @backend_delete_list_button.removeClass 'disabled'
        @squad_name_input.val @current_squad.name
        @squad_name_placeholder.text @current_squad.name
        @current_obstacles = @current_squad.additional_data.obstacles
        @updateObstacleSelect(@current_squad.additional_data.obstacles)
        if squad.serialized.length?
            @loadFromSerialized squad.serialized
        @notes.val(squad.additional_data.notes ? '')
        @tag.val(squad.additional_data.tag ? '')
        @backend_status.fadeOut 'slow'
        @current_squad.dirty = false
        @container.trigger 'xwing-backend:squadDirtinessChanged'
        @container.trigger 'xwing-backend:squadNameChanged'

    onSquadDirtinessChanged: () =>
        @backend_save_list_button.toggleClass 'disabled', not (@current_squad.dirty and @total_points > 0)
        @backend_save_list_as_button.toggleClass 'disabled', @total_points == 0
        @backend_delete_list_button.toggleClass 'disabled', not @current_squad.id?
        if @ships.length > 1
            $('meta[property="og:description"]').attr("content", "X-Wing Squadron by YASB 2.0: " + @current_squad.name + ": " + @describeSquad())
        else
            $('meta[property="og:description"]').attr("content", "YASB 2.0 is a simple, fast, and easy to use squad builder for X-Wing Miniatures by Fantasy Flight Games.")

    onSquadNameChanged: () =>
        if @current_squad.name.length > SQUAD_DISPLAY_NAME_MAX_LENGTH
            short_name = "#{@current_squad.name.substr(0, SQUAD_DISPLAY_NAME_MAX_LENGTH)}&hellip;"
        else
            short_name = @current_squad.name
        @squad_name_placeholder.text ''
        @squad_name_placeholder.append short_name
        @squad_name_input.val @current_squad.name
        return unless $.getParameterByName('f') == @faction
        if @current_squad.name != "Unnamed Squadron" and @current_squad.name != "Unsaved Squadron"
            if (document.title != "YASB 2.0 - " + @current_squad.name) 
                document.title = "YASB 2.0 - " + @current_squad.name
        else
            document.title = "YASB 2.0"

    removeAllShips: ->
        while @ships.length > 0
            @removeShip @ships[0]
        throw new Error("Ships not emptied") if @ships.length > 0

    showTextListModal: ->
        # Display print/text view modal
        @list_modal.modal 'show'

    showXWSModal: (xws) ->
        # Display xws view modal
        @select_xws_view()
        @showTextListModal()

    showChooseObstaclesModal: ->
        @obstacles_select.val(@current_squad.additional_data.obstacles)
        @choose_obstacles_modal.modal 'show'

    showChooseObstaclesSelectImage: (obstacle) ->
        @image_name = 'images/' + obstacle + '.png'
        @obstacles_select_image.find('.obstacle-image').attr 'src', @image_name
        @obstacles_select_image.show()

    updateObstacleSelect: (obstacles) ->
        @current_obstacles = obstacles
        @obstacles_select.val(obstacles)

    serialize: ->

        serialization_version = 8
        game_type_abbrev = switch @game_type_selector.val()
            when 'standard'
                's'
            when 'hyperspace'
                'h'
            when 'epic'
                'e'
            when 'quickbuild'
                'q'
        selected_points = $.trim @desired_points_input.val()
        """v#{serialization_version}Z#{game_type_abbrev}Z#{selected_points}Z#{( ship.toSerialized() for ship in @ships when ship.pilot? and (not @isQuickbuild or ship.primary) ).join 'Y'}"""

    changeGameTypeOnSquadLoad: (gametype) ->
        if @game_type_selector.val() != gametype
            $(window).trigger 'xwing:gameTypeChanged', gametype


    loadFromSerialized: (serialized) ->
        @suppress_automatic_new_ship = true
        # Clear all existing ships
        @removeAllShips()

        re = if "Z" in serialized then /^v(\d+)Z(.*)/ else /^v(\d+)!(.*)/
        matches = re.exec serialized
        if matches?
            # versioned
            version = parseInt matches[1]
            # version 1-3 are 1st edition only (may be removed here)
            # version 4 is the final version of 1st edition x-wing, and has been the first few weeks of YASB 2.0
            # version 5 is the first version for 2nd edtition x-wing only, it features extended (=standard), hyperspace, quickbuild and custom mode
            # version 6 has the only difference to version 5 is, that custom (=extended with != 200 points) has been removed and points are specified for all modes. 
            # version 7 has arbitrary ordering of upgrades additionally supported
            # version 8 is the current version, replacing "!" with "Z" in the serialzed string, and 'Y' etc
            ship_splitter = if version > 7 then 'Y' else ';'
            # parse out game type
            [ game_type_abbrev, desired_points, serialized_ships ] =
                if version > 7
                     [g, p, s] = matches[2].split('Z')
                     [g, parseInt(p), s]
                else
                    [ game_type_and_point_abbrev, s ] = matches[2].split('!')
                    if parseInt(game_type_and_point_abbrev.split('=')[1])
                        p = parseInt(game_type_and_point_abbrev.split('=')[1])
                    else
                        p = 200
                    g = game_type_and_point_abbrev.split('=')[0]
                    [ g, p, s ]

            # check if there are serialized ships to load
            if !serialized_ships? # something went wrong, we can't load that serialization
                @loading_failed_container.toggleClass 'd-none', false
                return
            switch game_type_abbrev
                when 's'
                    @changeGameTypeOnSquadLoad 'standard'
                when 'h'
                    @changeGameTypeOnSquadLoad 'hyperspace'
                when 'e'
                    @changeGameTypeOnSquadLoad 'epic'
                when 'q'
                    @changeGameTypeOnSquadLoad 'quickbuild'
            @desired_points_input.val desired_points
            @desired_points_input.change()
            ships_with_unmet_dependencies = []
            if serialized_ships.length?
                for serialized_ship in serialized_ships.split(ship_splitter)
                    unless serialized_ship == ''
                        new_ship = @addShip()
                        # try to create ship. fromSerialized returns false, if some upgrade have been skipped as they are not legal until now (e.g. 0-0-0 but vader is not yet in the squad)
                        # if not the entire ship is valid, we'll try again later - but keep the valid part added, so other ships may already see some upgrades
                        if (not new_ship.fromSerialized version, serialized_ship) or not new_ship.pilot # also check, if the pilot has been set (the pilot himself was not invalid)
                            ships_with_unmet_dependencies.push [new_ship, serialized_ship]
                for ship in ships_with_unmet_dependencies
                    # 2nd attempt to load ships with unmet dependencies.
                    if not ship[0].pilot
                        # create ship, if the ship was so invalid, that it in fact decided to not exist
                        ship[0] = @addShip()
                    ship[0].fromSerialized version, ship[1]

        @suppress_automatic_new_ship = false
        # Finally, the unassigned ship
        @addShip()


    select_xws_view: () ->
        @select_xws_view_button.blur()
        unless @list_display_mode == 'xws'
            @list_modal.find('.list-display-mode .btn').removeClass 'btn-inverse'
            @select_xws_view_button.addClass 'btn-inverse'
            @list_display_mode = 'xws'
            @xws_container.show()
            @bbcode_container.hide()
            @htmlview_container.hide()
            @simple_container.hide()
            @simplecopy_container.hide()
            @reddit_container.hide()
            @fancy_container.hide()
            @tts_container.hide()
            @xws_textarea.select()
            @xws_textarea.focus()
            @toggle_vertical_space_container.hide()
            @toggle_color_print_container.hide()
            @toggle_color_skip_text.hide()
            @toggle_maneuver_dial_container.hide()
            @toggle_expanded_shield_hull_container.hide()
            @toggle_qrcode_container.hide()
            @toggle_obstacle_container.hide()
            @btn_print_list.disabled = true;


    uniqueIndex: (unique, type) ->
        if type not of @uniques_in_use
            throw new Error("Invalid unique type '#{type}'")
        @uniques_in_use[type].indexOf unique

    claimUnique: (unique, type, cb) =>
        if @uniqueIndex(unique, type) < 0
            # Claim pilots with the same canonical name
            for other in (exportObj.pilotsByUniqueName[unique.canonical_name.getXWSBaseName()] or [])
                if unique != other
                    if @uniqueIndex(other, 'Pilot') < 0
                        # console.log "Also claiming unique pilot #{other.canonical_name} in use"
                        @uniques_in_use['Pilot'].push other
                    else
                        throw new Error("Unique #{type} '#{unique.name}' already claimed as pilot")

            # Claim other upgrades with the same canonical name
            for otherslot, bycanonical of exportObj.upgradesBySlotUniqueName
                for canonical, other of bycanonical
                    if canonical.getXWSBaseName() == unique.canonical_name.getXWSBaseName() and unique != other
                        if @uniqueIndex(other, 'Upgrade') < 0
                            # console.log "Also claiming unique #{other.canonical_name} (#{otherslot}) in use"
                            @uniques_in_use['Upgrade'].push other
                        # else
                        #     throw new Error("Unique #{type} '#{unique.name}' already claimed as #{otherslot}")

            # Solitary Check
            if unique.solitary?
                @uniques_in_use['Slot'].push unique.slot

            @uniques_in_use[type].push unique
        else
            throw new Error("Unique #{type} '#{unique.name}' already claimed")
        cb()

    releaseUnique: (unique, type, cb) =>
        idx = @uniqueIndex(unique, type)
        if idx >= 0
            # Release all uniques with the same canonical name and base name
            for type, uniques of @uniques_in_use
                # Removing stuff in a loop sucks, so we'll construct a new list
                if type == 'Slot'
                    if unique.solitary?
                        @uniques_in_use[type] = []
                        for u in uniques
                            if u != unique.slot
                                # Keep this one
                                @uniques_in_use[type].push u.slot
                else
                    @uniques_in_use[type] = []
                    for u in uniques
                        if u.canonical_name.getXWSBaseName() != unique.canonical_name.getXWSBaseName()
                            # Keep this one
                            @uniques_in_use[type].push u
                        # else
                        #     console.log "Releasing #{u.name} (#{type}) with canonical name #{unique.canonical_name}"
        else
            throw new Error("Unique #{type} '#{unique.name}' not in use")
        cb()

    addShip: ->
        new_ship = new Ship
            builder: this
            container: @ship_container
        @ships.push new_ship
        @ship_number_invalid_container.toggleClass 'd-none', (@ships.length < 10 and @ships.length > 2) # bounds are 2..10 as we always have a "empty" ship at the bottom
        new_ship

    removeShip: (ship, cb=$.noop) ->
        if ship?.destroy?
            await ship.destroy defer()
            await @container.trigger 'xwing:pointsUpdated', defer()
            @current_squad.dirty = true
            @container.trigger 'xwing-backend:squadDirtinessChanged'
            @ship_number_invalid_container.toggleClass 'd-none', (@ships.length < 10 and @ships.length > 2)
        cb()
    
    matcher: (item, term) ->
        item.toUpperCase().indexOf(term.toUpperCase()) >= 0

    isOurFaction: (faction) ->
        if faction instanceof Array
            for f in faction
                if getPrimaryFaction(f) == @faction
                    return true
            false
        else
            getPrimaryFaction(faction) == @faction

    isItemAvailable: (item_data, shipCheck=false) ->
        # this method is not even invoked by most quickbuild stuff to check availability for quickbuild squads, as the method was formerly just telling apart extended/hyperspace
        if @isQuickbuild
            return true
        else if @isHyperspace
            return exportObj.hyperspaceCheck(item_data, @faction, shipCheck)
        else if (not @isEpic)
            return exportObj.epicExclusions(item_data)
        else
            return true

    getAvailableShipsMatching: (term='',sorted = true, collection_only = false) ->
        ships = []
        for ship_name, ship_data of exportObj.ships
            if @isOurFaction(ship_data.factions) and (@matcher(ship_data.name, term) or (ship_data.display_name and @matcher(ship_data.display_name, term)))
                if (@isItemAvailable(ship_data, true))
                    if (not collection_only or (@collection? and (@collection.checks.collectioncheck == "true") and @collection.checkShelf('ship', ship_data.name)))
                        ships.push
                            id: ship_data.name
                            text: if ship_data.display_name then ship_data.display_name else ship_data.name
                            name: ship_data.name
                            display_name: ship_data.display_name
                            canonical_name: ship_data.canonical_name
                            xws: ship_data.xws
                            icon: if ship_data.icon then ship_data.icon else ship_data.xws
        if sorted
            ships.sort exportObj.sortHelper
        return ships

    getAvailableShipsMatchingAndCheapEnough: (points, term='', sorted=false, collection_only = false) ->
        # returns a list of ships that have at least one pilot cheaper than the given points value
        possible_ships = @getAvailableShipsMatching(term, sorted, collection_only)
        cheap_ships = []
        for ship in possible_ships
            pilots = @getAvailablePilotsForShipIncluding(ship.name, null, '', true)
            if pilots.length and pilots[0].points <= points
                cheap_ships.push(ship)
                
        return cheap_ships
        
    getAvailablePilotsForShipIncluding: (ship, include_pilot, term='', sorted = true, ship_selector = null) ->
        # Returns data formatted for Select2
        retval = []
        if not @isQuickbuild
            # select available pilots according to ususal pilot selection
            available_faction_pilots = (pilot for pilot_name, pilot of exportObj.pilots when (not ship? or pilot.ship == ship) and @isOurFaction(pilot.faction) and (@matcher(pilot_name, term) or (pilot.display_name and @matcher(pilot.display_name, term)) ) and (@isItemAvailable(pilot, true)))

            eligible_faction_pilots = (pilot for pilot_name, pilot of available_faction_pilots when (not pilot.unique? or pilot not in @uniques_in_use['Pilot'] or pilot.canonical_name.getXWSBaseName() == include_pilot?.canonical_name.getXWSBaseName()) and (not pilot.max_per_squad? or @countPilots(pilot.canonical_name) < pilot.max_per_squad or pilot.canonical_name.getXWSBaseName() == include_pilot?.canonical_name.getXWSBaseName()) and (not pilot.restriction_func? or pilot.restriction_func((builder: @) , pilot)))

            # Re-add selected pilot
            if include_pilot? and include_pilot.unique? and (@matcher(include_pilot.name, term) or (include_pilot.display_name and @matcher(include_pilot.display_name, term)) )
                eligible_faction_pilots.push include_pilot

            retval = ({ id: pilot.id, text: "#{if exportObj.settings?.initiative_prefix? and exportObj.settings.initiative_prefix then pilot.skill + ' - ' else ''}#{if pilot.display_name then pilot.display_name else pilot.name} (#{pilot.points})", points: pilot.points, ship: pilot.ship, name: pilot.name, display_name: pilot.display_name, disabled: pilot not in eligible_faction_pilots } for pilot in available_faction_pilots)
        else
            # select according to quickbuild cards
            # filter for faction and ship
            quickbuilds_matching_ship_and_faction = (quickbuild for id, quickbuild of exportObj.quickbuildsById when (not ship? or quickbuild.ship == ship) and @isOurFaction(quickbuild.faction) and (@matcher(quickbuild.pilot, term) or (exportObj.pilots[quickbuild.pilot].display_name? and @matcher(exportObj.pilots[quickbuild.pilot].display_name, term)) ))

            # create a list of the uniques belonging to the currently selected pilot
            uniques_in_use_by_pilot_in_use = []
            if include_pilot? and include_pilot != -1
                include_quickbuild = exportObj.quickbuildsById[include_pilot]
                include_pilot_pilot = exportObj.pilots[include_quickbuild.pilot]
                if include_pilot_pilot.unique?
                    uniques_in_use_by_pilot_in_use.push include_pilot_pilot
                    for other in (exportObj.pilotsByUniqueName[include_pilot_pilot.canonical_name.getXWSBaseName()] or [])
                        if other?
                            uniques_in_use_by_pilot_in_use.push other
                for include_upgrade_name in include_quickbuild.upgrades ? []
                    include_upgrade = exportObj.upgrades[include_upgrade_name]
                    if include_upgrade.unique? 
                        uniques_in_use_by_pilot_in_use.push other
                        for other in (exportObj.pilotsByUniqueName[include_upgrade.canonical_name.getXWSBaseName()] or [])
                            if other? 
                                uniques_in_use_by_pilot_in_use.push other
                    if include_upgrade.solitary?
                        uniques_in_use_by_pilot_in_use.push include_upgrade.slot
                # we should also add upgrades with the same unique name like some selected upgrades or the pilot. However, finding them is teadious
                # we should also add uniques used by a linked ship. however, while it is easy to allow selecting them, it is harder to properly add them - as one need to make sure the order of selecting ship + linked ship matters

            # filter for uniques in use
            allowed_quickbuilds_containing_uniques_in_use = []
            loop: for id, quickbuild of quickbuilds_matching_ship_and_faction
                if exportObj.pilots[quickbuild.pilot]?.unique? and exportObj.pilots[quickbuild.pilot] in @uniques_in_use.Pilot and not (exportObj.pilots[quickbuild.pilot] in uniques_in_use_by_pilot_in_use)
                    allowed_quickbuilds_containing_uniques_in_use.push quickbuild.id
                    continue
                if exportObj.pilots[quickbuild.pilot]?.max_per_squad? and @countPilots(exportObj.pilots[quickbuild.pilot].canonical_name) >= exportObj.pilots[quickbuild.pilot].max_per_squad and not (exportObj.pilots[quickbuild.pilot] in uniques_in_use_by_pilot_in_use)
                    allowed_quickbuilds_containing_uniques_in_use.push quickbuild.id
                    continue
                if quickbuild.upgrades? 
                    for upgrade in quickbuild.upgrades
                        upgradedata = exportObj.upgrades[upgrade]
                        if not upgradedata?
                            console.log("There was an Issue including the upgrade " + upgrade + " in some quickbuild. Please report that Issue!")
                            continue
                        if upgradedata.unique? and upgradedata in @uniques_in_use.Upgrade and not (upgradedata in uniques_in_use_by_pilot_in_use)
                            # check, if unique is used by this ship or it's linked ship
                            if ship_selector == null or not (upgrade in exportObj.quickbuildsById[ship_selector.quickbuildId].upgrades or (ship_selector.linkedShip and upgrade in (exportObj.quickbuildsById[ship_selector.linkedShip?.quickbuildId].upgrades ? [])))
                                allowed_quickbuilds_containing_uniques_in_use.push quickbuild.id
                                break
                        # check if solitary type is already claimed
                        if upgradedata.solitary? and upgradedata.slot in @uniques_in_use['Slot'] and not (upgradedata.slot in uniques_in_use_by_pilot_in_use)
                            allowed_quickbuilds_containing_uniques_in_use.push quickbuild.id
                            break
            
            retval = ({id: quickbuild.id, text: "#{if exportObj.settings?.initiative_prefix? and exportObj.settings.initiative_prefix then exportObj.pilots[quickbuild.pilot].skill + ' - ' else ''}#{if exportObj.pilots[quickbuild.pilot].display_name then exportObj.pilots[quickbuild.pilot].display_name else quickbuild.pilot}#{quickbuild.suffix} (#{quickbuild.threat})", points: quickbuild.threat, ship: quickbuild.ship, disabled: quickbuild.id in allowed_quickbuilds_containing_uniques_in_use} for quickbuild in quickbuilds_matching_ship_and_faction)

        if sorted
            retval = retval.sort exportObj.sortHelper
        retval


    dfl_filter_func = ->
        true

    countUpgrades: (canonical_name) ->
        # returns number of upgrades with given canonical name equipped
        count = 0
        for ship in @ships
            for upgrade in ship.upgrades
                if upgrade?.data?.canonical_name == canonical_name
                    count++
        count

    countPilots: (canonical_name) ->
        # returns number of pilots with given canonical name
        count = 0
        for ship in @ships
            if ship?.pilot?.canonical_name.getXWSBaseName() == canonical_name.getXWSBaseName()
                count++
        count

    isShip: (ship, name) ->
        # console.log "returning #{f} #{name}"
        if ship instanceof Array
            for f in ship
                if f == name
                    return true
            false
        else
            ship == name

    getAvailableUpgradesIncluding: (slot, include_upgrade, ship, this_upgrade_obj, term='', filter_func=@dfl_filter_func, sorted=true) ->
        # Returns data formatted for Select2
        upgrades_in_use = (upgrade.data for upgrade in ship.upgrades)

        available_upgrades = (upgrade for upgrade_name, upgrade of exportObj.upgrades when exportObj.slotsMatching(upgrade.slot, slot) and ( @matcher(upgrade_name, term) or (upgrade.display_name and @matcher(upgrade.display_name, term)) ) and (not upgrade.ship? or @isShip(upgrade.ship, ship.data.name)) and (not upgrade.faction? or @isOurFaction(upgrade.faction)) and (@isItemAvailable(upgrade)))

        if filter_func != @dfl_filter_func
            available_upgrades = (upgrade for upgrade in available_upgrades when filter_func(upgrade))

        eligible_upgrades = (upgrade for upgrade_name, upgrade of available_upgrades when (not upgrade.unique? or upgrade not in @uniques_in_use['Upgrade']) and (not (ship? and upgrade.restrictions?) or ship.restriction_check(upgrade.restrictions, this_upgrade_obj)) and upgrade not in upgrades_in_use and ((not upgrade.max_per_squad?) or ship.builder.countUpgrades(upgrade.canonical_name) < upgrade.max_per_squad) and (not upgrade.solitary? or (upgrade.slot not in @uniques_in_use['Slot'] or include_upgrade?.solitary?)))
        
        

        for equipped_upgrade in (upgrade.data for upgrade in ship.upgrades when upgrade?.data?)
            eligible_upgrades.removeItem equipped_upgrade

        # Re-enable selected upgrade
        if include_upgrade? and ((( @matcher(include_upgrade.name, term) or (include_upgrade.display_name and @matcher(include_upgrade.display_name, term))) ))# or current_upgrade_forcibly_removed)
            # available_upgrades.push include_upgrade
            eligible_upgrades.push include_upgrade

        retval = ({ id: upgrade.id, text: "#{if upgrade.display_name then upgrade.display_name else upgrade.name} (#{this_upgrade_obj.getPoints(upgrade)}#{if upgrade.pointsarray then '*' else ''})", points: this_upgrade_obj.getPoints(upgrade), name: upgrade.name, display_name: upgrade.display_name, disabled: upgrade not in eligible_upgrades } for upgrade in available_upgrades)
        if sorted
            retval = retval.sort exportObj.sortHelper

        # Possibly adjust the upgrade
        if this_upgrade_obj?adjustment_func?
            (this_upgrade_obj.adjustment_func(upgrade) for upgrade in retval)
        else
            retval

    getSquadDialsAsHTML: () ->
        dialHTML = ""
        added_dials = {}
        for ship in @ships
            if ship.pilot? # There is always one "empty" ship at the bottom of each squad, that we want to skip. 
                maneuvers_unmodified = ship.data.maneuvers
                maneuvers_modified = ship.effectiveStats().maneuvers
                if not added_dials[ship.data.name]? or not (maneuvers_modified.toString() in added_dials[ship.data.name]) # we only want to add each dial once per ship (if two ships share a dial, add two copies of the dial)
                    added_dials[ship.data.name] = (added_dials[ship.data.name] ? []).concat [maneuvers_modified.toString()] # save maneuver as string, as that is easier to compare than arrays (if e.g. two ships of same type, one with and one without R4 are in a squad, we add 2 dials)
                    dialHTML += '<div class="fancy-dial">' + 
                                """<h4 class="ship-name-dial">#{if ship.data.display_name? then ship.data.display_name else ship.data.name}""" +
                                """#{if maneuvers_modified.toString() != maneuvers_unmodified.toString() then " (upgraded)" else ""}</h4>""" +
                                @getManeuverTableHTML(maneuvers_modified, maneuvers_unmodified) + '</div>'

        return """
                    <div class="print-dials-container">
                        #{dialHTML}
                    </div>
                """
                # dialHTML = @builder.getManeuverTableHTML(effective_stats.maneuvers, @data.maneuvers)


    # Converts a maneuver table for into an HTML table.
    getManeuverTableHTML: (maneuvers, baseManeuvers) ->
        if not maneuvers? or maneuvers.length == 0
            return "Missing maneuver info."

        # Preprocess maneuvers to see which bearings are never used so we
        # don't render them.
        bearings_without_maneuvers = [0...maneuvers[0].length]
        for bearings in maneuvers
            for difficulty, bearing in bearings
                if difficulty > 0
                    bearings_without_maneuvers.removeItem bearing
        # console.log "bearings without maneuvers:"
        # console.dir bearings_without_maneuvers

        outTable = "<table><tbody>"

        for speed in [maneuvers.length - 1 .. 0]

            haveManeuver = false
            for v in maneuvers[speed]
                if v > 0
                    haveManeuver = true
                    break

            continue if not haveManeuver

            outTable += "<tr><td>#{speed}</td>"
            for turn in [0 ... maneuvers[speed].length]
                continue if turn in bearings_without_maneuvers

                outTable += "<td>"
                if maneuvers[speed][turn] > 0

                    color = switch maneuvers[speed][turn]
                        when 1 then "dodgerblue"
                        when 2 then "white"
                        when 3 then "red"
                        when 4 then "purple"

                     # we need this to change the color to b/w in case we want to print b/w

                    maneuverClass = switch maneuvers[speed][turn]
                        when 1 then "svg-blue-maneuver"
                        when 2 then "svg-white-maneuver"
                        when 3 then "svg-red-maneuver"
                        when 4 then "svg-purple-maneuver"

                    outTable += """<svg xmlns="http://www.w3.org/2000/svg" width="30px" height="30px" viewBox="0 0 200 200">"""

                    outlineColor = "black"
                    maneuverClass2 = "svg-base-maneuver"
                    if maneuvers[speed][turn] != baseManeuvers[speed][turn]
                        outlineColor = "DarkSlateGrey" # highlight manuevers modified by another card (e.g. R2 Astromech makes all 1 & 2 speed maneuvers green)
                        maneuverClass2 = "svg-modified-maneuver"

                    if speed == 0 and turn == 2
                        outTable += """<rect class="svg-maneuver-stop #{maneuverClass} #{maneuverClass2}" x="50" y="50" width="100" height="100" style="fill:#{color}" />"""
                    else
                        transform = ""
                        className = ""
                        switch turn
                            when 0
                                # turn left
                                linePath = "M160,180 L160,70 80,70"
                                trianglePath = "M80,100 V40 L30,70 Z"
                            when 1
                                # bank left
                                linePath = "M150,180 S150,120 80,60"
                                trianglePath = "M80,100 V40 L30,70 Z"
                                transform = "transform='translate(-5 -15) rotate(45 70 90)' "
                            when 2
                                # straight
                                linePath = "M100,180 L100,100 100,80"
                                trianglePath = "M70,80 H130 L100,30 Z"
                            when 3
                                # bank right
                                linePath = "M50,180 S50,120 120,60"
                                trianglePath = "M120,100 V40 L170,70 Z"
                                transform = "transform='translate(5 -15) rotate(-45 130 90)' "
                            when 4
                                # turn right
                                linePath = "M40,180 L40,70 120,70"
                                trianglePath = "M120,100 V40 L170,70 Z"
                            when 5
                                # k-turn/u-turn
                                linePath = "M50,180 L50,100 C50,10 140,10 140,100 L140,120"
                                trianglePath = "M170,120 H110 L140,180 Z"
                            when 6
                                # segnor's loop left
                                linePath = "M150,180 S150,120 80,60"
                                trianglePath = "M80,100 V40 L30,70 Z"
                                transform = "transform='translate(0 50)'"
                            when 7
                                # segnor's loop right
                                linePath = "M50,180 S50,120 120,60"
                                trianglePath = "M120,100 V40 L170,70 Z"
                                transform = "transform='translate(0 50)'"
                            when 8
                                # tallon roll left
                                linePath = "M160,180 L160,70 80,70"
                                trianglePath = "M60,100 H100 L80,140 Z"
                            when 9
                                # tallon roll right
                                linePath = "M40,180 L40,70 120,70"
                                trianglePath = "M100,100 H140 L120,140 Z"
                            when 10
                                # backward left
                                linePath = "M50,180 S50,120 120,60"
                                trianglePath = "M120,100 V40 L170,70 Z"
                                transform = "transform='translate(5 -15) rotate(-45 130 90)' "
                                className = 'backwards'
                            when 11
                                # backward straight
                                linePath = "M100,180 L100,100 100,80"
                                trianglePath = "M70,80 H130 L100,30 Z"
                                className = 'backwards'
                            when 12
                                # backward right
                                linePath = "M150,180 S150,120 80,60"
                                trianglePath = "M80,100 V40 L30,70 Z"
                                transform = "transform='translate(-5 -15) rotate(45 70 90)' "
                                className = 'backwards'

                        outTable += $.trim """
                          <g class="maneuver #{className}">
                            <path class = 'svg-maneuver-outer #{maneuverClass} #{maneuverClass2}' stroke-width='25' fill='none' stroke='#{outlineColor}' d='#{linePath}' />
                            <path class = 'svg-maneuver-triangle #{maneuverClass} #{maneuverClass2}' d='#{trianglePath}' fill='#{color}' stroke-width='5' stroke='#{outlineColor}' #{transform}/>
                            <path class = 'svg-maneuver-inner #{maneuverClass} #{maneuverClass2}' stroke-width='15' fill='none' stroke='#{color}' d='#{linePath}' />
                          </g>
                        """

                    outTable += "</svg>"
                outTable += "</td>"
            outTable += "</tr>"
        outTable += "</tbody></table>"
        outTable

    formatActions: (actions,seperation,keyword=[]) ->
        action_icons = []
        for action in actions
            color = ""
            prefix = seperation
            if "Droid" in keyword
                action = action.replace('Focus', 'Calculate')
            # Search and filter each type of action by its prefix and then reformat it for html
            if action.search('> ') != -1
                action = action.replace(/> /gi, '')
                prefix = """ <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> """
            if action.search('F-') != -1 
                color = "force "
                action = action.replace(/F-/gi, '')
            else if action.search('R-') != -1 
                color = "red "
                action = action.replace(/R-/gi, '')
            action = action.toLowerCase().replace(/[^0-9a-z]/gi, '')
            action_icons.push """#{prefix}<i class="xwing-miniatures-font #{color}xwing-miniatures-font-#{action}"></i>"""
        actionlist = action_icons.join ''
        return actionlist.replace(seperation,'')

    showTooltip: (type, data, additional_opts, container = @info_container, force_update = false) ->

        if data != @tooltip_currently_displaying or force_update
            switch type
                when 'Ship'
            # we get all pilots for the ship, to display stuff like available slots which are treated as pilot properties, not ship properties (which makes sense, as they depend on the pilot, e.g. talent or force slots)
                    possible_inis = []
                    slot_types = {} # one number per slot: 0: not available for that ship. 1: always available for that ship. 2: available for some pilots on that ship. 3: slot two times availabel for that ship 4: slot one or two times available (depending on pilot) 5: slot zero to two times available 6: slot three times available (no mixed-case implemented) -1: undefined
                    for slot of exportObj.upgradesBySlotCanonicalName
                        slot_types[slot] = -1
                    for name, pilot of exportObj.pilots
                        if pilot.ship != data.name 
                            continue
                        if not (pilot.skill in possible_inis)
                            possible_inis.push(pilot.skill)
                        for slot, state of slot_types
                            switch pilot.slots.filter((item) => item == slot).length
                                when 1
                                    switch state
                                        when -1
                                            slot_types[slot] = 1
                                        when 0
                                            slot_types[slot] = 2
                                        when 3
                                            slot_types[slot] = 4
                                when 0
                                    switch state
                                        when -1
                                            slot_types[slot] = 0
                                        when 1
                                            slot_types[slot] = 2
                                        when 3,4
                                            slot_types[slot] = 5
                                when 2
                                    switch state
                                        when -1
                                            slot_types[slot] = 3
                                        when 0,2
                                            slot_types[slot] = 5
                                        when 1
                                            slot_types[slot] = 4
                                when 3
                                    slot_types[slot] = 6
                                
                    possible_inis.sort()
        
                    container.find('.info-type').text type
                    container.find('.info-name').html """#{if data.display_name then data.display_name else data.name}#{if exportObj.isReleased(data) then "" else " (#{exportObj.translate(@language, 'ui', 'unreleased')})"}"""
                    if @collection?.counts?
                        ship_count = @collection.counts?.ship?[data.name] ? 0
                        container.find('.info-collection').text """You have #{ship_count} ship model#{if ship_count > 1 then 's' else ''} in your collection."""
                        container.find('.info-collection').show()
                    else
                        container.find('.info-collection').hide()
                    first = true
                    inis = String(possible_inis[0])
                    for ini in possible_inis
                        if not first
                            inis += ", " + ini
                        first = false
                    container.find('tr.info-skill td.info-data').text inis
                    container.find('tr.info-skill').show()
                    
                    container.find('tr.info-engagement').hide()
                
                    container.find('tr.info-attack td.info-data').text(data.attack)
                    container.find('tr.info-attack-bullseye td.info-data').text(data.attackbull)
                    container.find('tr.info-attack-fullfront td.info-data').text(data.attackf)
                    container.find('tr.info-attack-left td.info-data').text(data.attackl)
                    container.find('tr.info-attack-right td.info-data').text(data.attackr)
                    container.find('tr.info-attack-back td.info-data').text(data.attackb)
                    container.find('tr.info-attack-turret td.info-data').text(data.attackt)
                    container.find('tr.info-attack-doubleturret td.info-data').text(data.attackdt)
        
                    container.find('tr.info-attack').toggle(data.attack?)
                    container.find('tr.info-attack-bullseye').toggle(data.attackbull?)
                    container.find('tr.info-attack-fullfront').toggle(data.attackf?)
                    container.find('tr.info-attack-left').toggle(data.attackl?)
                    container.find('tr.info-attack-right').toggle(data.attackr?)
                    container.find('tr.info-attack-back').toggle(data.attackb?)
                    container.find('tr.info-attack-turret').toggle(data.attackt?)
                    container.find('tr.info-attack-doubleturret').toggle(data.attackdt?)
                
                    container.find('tr.info-ship').hide()        
                    if data.large?
                        container.find('tr.info-base td.info-data').text "Large"
                    else if data.medium?
                        container.find('tr.info-base td.info-data').text "Medium"
                    else if data.huge?
                        container.find('tr.info-base td.info-data').text "Huge"
                    else
                        container.find('tr.info-base td.info-data').text "Small"
                    container.find('tr.info-base').show()

                
                
                    for cls in container.find('tr.info-attack td.info-header i.xwing-miniatures-font')[0].classList
                        container.find('tr.info-attack td.info-header i.xwing-miniatures-font').removeClass(cls) if cls.startsWith('xwing-miniatures-font-attack')
                    container.find('tr.info-attack td.info-header i.xwing-miniatures-font').addClass(data.attack_icon ? 'xwing-miniatures-font-attack')
        
                    container.find('tr.info-range').hide()
                    container.find('tr.info-agility td.info-data').text(data.agility)
                    container.find('tr.info-agility').show()
                    container.find('tr.info-hull td.info-data').text(data.hull)
                    container.find('tr.info-hull').show()
                    
                    recurringicon = ''
                    if data.shieldrecurr?
                        count = 0
                        while count < data.shieldrecurr
                            recurringicon += '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>'
                            ++count
                    container.find('tr.info-shields td.info-data').html (data.shields + recurringicon)
                    container.find('tr.info-shields').show()

                    recurringicon = ''
                    if data.energyrecurr?
                        count = 0
                        while count < data.energyrecurr
                            recurringicon += '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>'
                            ++count
                    container.find('tr.info-energy td.info-data').html (data.energy + recurringicon)
                    container.find('tr.info-energy').toggle(data.energy?)
                    
                    
                    # One may want to check for force sensitive pilots and display the possible values here (like done for ini), but I'll skip this for now. 
                    container.find('tr.info-force').hide() 
        
                    container.find('tr.info-charge').hide()
        
                    container.find('tr.info-actions td.info-data').html @formatActions(data.actions, ", ", data.keyword ? [])
                    container.find('tr.info-actions').show()

                    # Display all available slots, put brackets around slots that are only available for some pilots
                    container.find('tr.info-upgrades').show()
                    container.find('tr.info-upgrades td.info-data').html(((if state == 1 then exportObj.translate(@language, 'sloticon', slot) else (if state == 2 then '('+exportObj.translate(@language, 'sloticon', slot)+')' else (if state == 3 then (exportObj.translate(@language, 'sloticon', slot) + exportObj.translate(@language, 'sloticon', slot)) else (if state == 4 then (exportObj.translate(@language, 'sloticon', slot) + '(' + exportObj.translate(@language, 'sloticon', slot) + ')') else (if state == 5 then ('(' + exportObj.translate(@language, 'sloticon', slot) + exportObj.translate(@language, 'sloticon', slot) + ')') else (if state == 6 then (exportObj.translate(@language, 'sloticon',slot) + exportObj.translate(@language, 'sloticon',slot) + exportObj.translate(@language, 'sloticon',slot)))))))) for slot, state of slot_types).join(' ') or 'None')
                
                    container.find('p.info-text').hide()
                    container.find('p.info-maneuvers').show()
                    container.find('p.info-maneuvers').html(@getManeuverTableHTML(data.maneuvers, data.maneuvers))
                    
                    sources = (exportObj.translate(@language, 'sources', source) for source in data.sources).sort()
                    container.find('.info-sources.info-data').text if (sources.length > 1) or (not ('Loose Ships' in sources)) then (if sources.length > 0 then sources.join(', ') else exportObj.translate(@language, 'ui', 'unreleased')) else "Only available from 1st edition"
                    container.find('.info-sources').show()
                when 'Pilot'
                    container.find('.info-type').text type
                    container.find('.info-sources.info-data').text (exportObj.translate(@language, 'sources', source) for source in data.sources).sort().join(', ')
                    container.find('.info-sources').show()
                    if @collection?.counts?
                        pilot_count = @collection.counts?.pilot?[data.name] ? 0
                        ship_count = @collection.counts.ship?[data.ship] ? 0
                        container.find('.info-collection').text """You have #{ship_count} ship model#{if ship_count > 1 then 's' else ''} and #{pilot_count} pilot card#{if pilot_count > 1 then 's' else ''} in your collection."""
                        container.find('.info-collection').show()
                    else
                        container.find('.info-collection').hide()
                        
                    # if the pilot is already selected and has uprades, some stats may be modified
                    if additional_opts?.effectiveStats?
                        effective_stats = additional_opts.effectiveStats()
                    #logic to determine how many dots to use for uniqueness
                    if data.unique?
                        uniquedots = "&middot;&nbsp;"
                    else if data.max_per_squad?
                        count = 0
                        uniquedots = ""
                        while (count < data.max_per_squad)
                            uniquedots = uniquedots.concat("&middot;")
                            ++count
                        uniquedots = uniquedots.concat("&nbsp;")
                    else
                        uniquedots = ""
                        
                    container.find('.info-name').html """#{uniquedots}#{if data.display_name then data.display_name else data.name}#{if exportObj.isReleased(data) then "" else " (#{exportObj.translate(@language, 'ui', 'unreleased')})"}"""

                    restriction_info = @restriction_text(data) + @upgrade_effect(data)
                    if restriction_info != ''
                        container.find('p.info-restrictions').html restriction_info ? ''
                        container.find('p.info-restrictions').show()
                    else
                        container.find('p.info-restrictions').hide()

                    container.find('p.info-text').html data.text ? ''
                    container.find('p.info-text').show()
                    ship = exportObj.ships[data.ship]
                    container.find('tr.info-ship td.info-data').text data.ship
                    container.find('tr.info-ship').show()
                    
                    if ship.large?
                        container.find('tr.info-base td.info-data').text "Large"
                    else if ship.medium?
                        container.find('tr.info-base td.info-data').text "Medium"
                    else if ship.huge?
                        container.find('tr.info-base td.info-data').text "Huge"
                    else
                        container.find('tr.info-base td.info-data').text "Small"
                    container.find('tr.info-base').show()

                    
                    container.find('tr.info-skill td.info-data').text data.skill
                    container.find('tr.info-skill').show()
                    if data.engagement?
                        container.find('tr.info-engagement td.info-data').text data.engagement
                        container.find('tr.info-engagement').show()
                    else
                        container.find('tr.info-engagement').hide()
                    
                    
#                    for cls in container.find('tr.info-attack td.info-header i.xwing-miniatures-font')[0].classList
#                        container.find('tr.info-attack td.info-header i.xwing-miniatures-font').removeClass(cls) if cls.startsWith('xwing-miniatures-font-attack')
                    container.find('tr.info-attack td.info-header i.xwing-miniatures-font').addClass(ship.attack_icon ? 'xwing-miniatures-font-attack')

                    container.find('tr.info-attack td.info-data').text statAndEffectiveStat((data.ship_override?.attack ? ship.attack), effective_stats, 'attack')
                    container.find('tr.info-attack').toggle(ship.attack? or effective_stats?.attack?)

                    container.find('tr.info-attack-fullfront td.info-data').text statAndEffectiveStat((data.ship_override?.attackf ? ship.attackf), effective_stats, 'attackf')
                    container.find('tr.info-attack-fullfront').toggle(ship.attackf? or effective_stats?.attackf?)
                    
                    container.find('tr.info-attack-bullseye td.info-data').text statAndEffectiveStat((data.ship_override?.attackbull ? ship.attackbull), effective_stats, 'attackbull')
                    container.find('tr.info-attack-bullseye').toggle(ship.attackbull? or effective_stats?.attackbull?)

                    container.find('tr.info-attack-left td.info-data').text statAndEffectiveStat((data.ship_override?.attackl ? ship.attackl), effective_stats, 'attackl')
                    container.find('tr.info-attack-left').toggle(ship.attackl? or effective_stats?.attackl?)

                    container.find('tr.info-attack-right td.info-data').text statAndEffectiveStat((data.ship_override?.attackr ? ship.attackr), effective_stats, 'attackr')
                    container.find('tr.info-attack-right').toggle(ship.attackr? or effective_stats?.attackr?)
                    
                    container.find('tr.info-attack-back td.info-data').text statAndEffectiveStat((data.ship_override?.attackb ? ship.attackb), effective_stats, 'attackb')
                    container.find('tr.info-attack-back').toggle(ship.attackb? or effective_stats?.attackb?)

                    container.find('tr.info-attack-turret td.info-data').text statAndEffectiveStat((data.ship_override?.attackt ? ship.attackt), effective_stats, 'attackt')
                    container.find('tr.info-attack-turret').toggle(ship.attackt? or effective_stats?.attackt?)

                    container.find('tr.info-attack-doubleturret td.info-data').text statAndEffectiveStat((data.ship_override?.attackdt ? ship.attackdt), effective_stats, 'attackdt')
                    container.find('tr.info-attack-doubleturret').toggle(ship.attackdt? or effective_stats?.attackdt?)

                    container.find('tr.info-range').hide()
                    container.find('td.info-rangebonus').hide()
                    container.find('tr.info-agility td.info-data').text statAndEffectiveStat((data.ship_override?.agility ? ship.agility), effective_stats, 'agility')
                    container.find('tr.info-agility').show()
                    container.find('tr.info-hull td.info-data').text statAndEffectiveStat((data.ship_override?.hull ? ship.hull), effective_stats, 'hull')
                    container.find('tr.info-hull').show()

                    recurringicon = ''
                    if ship.shieldrecurr?
                        count = 0
                        while count < ship.shieldrecurr
                            recurringicon += '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>'
                            ++count
                    container.find('tr.info-shields td.info-data').html (statAndEffectiveStat((data.ship_override?.shields ? ship.shields), effective_stats, 'shields') + recurringicon)
                    container.find('tr.info-shields').show()

                    recurringicon = ''
                    if ship.energyrecurr?
                        count = 0
                        while count < ship.energyrecurr
                            recurringicon += '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>'
                            ++count
                    container.find('tr.info-energy td.info-data').html (statAndEffectiveStat((data.ship_override?.energy ? ship.energy), effective_stats, 'energy') + recurringicon)
                    container.find('tr.info-energy').toggle(data.ship_override?.energy? or ship.energy?)
                    
                    
                    if (effective_stats?.force? and effective_stats.force > 0) or data.force?
                        container.find('tr.info-force td.info-data').html (statAndEffectiveStat((data.ship_override?.force ? data.force), effective_stats, 'force') + '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>')
                        container.find('tr.info-force').show()
                    else
                        container.find('tr.info-force').hide()

                    if data.charge?
                        if data.recurring?
                            container.find('tr.info-charge td.info-data').html (data.charge + '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>')
                        else
                            container.find('tr.info-charge td.info-data').text data.charge
                        container.find('tr.info-charge').show()
                    else
                        container.find('tr.info-charge').hide()

                    container.find('tr.info-actions td.info-data').html @formatActions(data.ship_override?.actions ? (effective_stats?.actions ? ship.actions), ", ", data.keyword ? [])
                    
                    container.find('tr.info-actions').show()
                    if @isQuickbuild
                        container.find('tr.info-upgrades').hide()
                    else
                        container.find('tr.info-upgrades').show()
                        container.find('tr.info-upgrades td.info-data').html((exportObj.translate(@language, 'sloticon', slot) for slot in data.slots).join(' ') or 'None')
                    container.find('p.info-maneuvers').show()
                    container.find('p.info-maneuvers').html(@getManeuverTableHTML(effective_stats?.maneuvers ? ship.maneuvers, ship.maneuvers))
                when 'Quickbuild'
                    container.find('.info-type').text 'Quickbuild'
                    container.find('.info-sources').hide() # there are different sources for the pilot and the upgrade cards, so we won't display any
                    container.find('.info-collection').hide() # same here, hard to give a single number telling a user how often he ownes all required cards
                    
                    pilot = exportObj.pilots[data.pilot]
                    ship = exportObj.ships[data.ship]

                    #logic to determine how many dots to use for uniqueness
                    if pilot.unique?
                        uniquedots = "&middot;&nbsp;"
                    else if pilot.max_per_squad?
                        count = 0
                        uniquedots = ""
                        while (count < data.max_per_squad)
                            uniquedots = uniquedots.concat("&middot;")
                            ++count
                        uniquedots = uniquedots.concat("&nbsp;")
                    else
                        uniquedots = ""
                        
                    container.find('.info-name').html """#{uniquedots}#{if pilot.display_name then pilot.display_name else pilot.name}#{if data.suffix? then data.suffix else ""}#{if exportObj.isReleased(pilot) then "" else " (#{exportObj.translate(@language, 'ui', 'unreleased')})"}"""


                    restriction_info = @restriction_text(data) + @upgrade_effect(data)
                    if restriction_info != ''
                        container.find('p.info-restrictions').html restriction_info ? ''
                        container.find('p.info-restrictions').show()
                    else
                        container.find('p.info-restrictions').hide()

                    container.find('p.info-text').html pilot.text ? ''
                    container.find('p.info-text').show()
                    container.find('tr.info-ship td.info-data').text data.ship
                    container.find('tr.info-ship').show()

                    if ship.large?
                        container.find('tr.info-base td.info-data').text "Large"
                    else if ship.medium?
                        container.find('tr.info-base td.info-data').text "Medium"
                    else
                        container.find('tr.info-base td.info-data').text "Small"
                    container.find('tr.info-base').show()

                    container.find('tr.info-skill td.info-data').text pilot.skill
                    container.find('tr.info-skill').show()
                    container.find('tr.info-engagement td.info-data').text pilot.skill
                    container.find('tr.info-engagement').show()

                    container.find('tr.info-attack td.info-data').text(pilot.ship_override?.attack ? ship.attack)
                    container.find('tr.info-attack').toggle(pilot.ship_override?.attack? or ship.attack?)

                    container.find('tr.info-attack-fullfront td.info-data').text(ship.attackf)
                    container.find('tr.info-attack-fullfront').toggle(ship.attackf?)
                    
                    container.find('tr.info-attack-bullseye td.info-data').text(ship.attackbull)
                    container.find('tr.info-attack-bullseye').toggle(ship.attackbull?)
                    container.find('tr.info-attack-left td.info-data').text(ship.attackl)
                    container.find('tr.info-attack-left').toggle(ship.attackl?)
                    container.find('tr.info-attack-right td.info-data').text(ship.attackr)
                    container.find('tr.info-attack-right').toggle(ship.attackr?)
                    container.find('tr.info-attack-back td.info-data').text(ship.attackb?)
                    container.find('tr.info-attack-back').toggle(ship.attackb?)
                    container.find('tr.info-attack-turret td.info-data').text(ship.attackt?)
                    container.find('tr.info-attack-turret').toggle(ship.attackt?)
                    container.find('tr.info-attack-doubleturret td.info-data').text(ship.attackdt)
                    container.find('tr.info-attack-doubleturret').toggle(ship.attackdt?)
                    
#                    for cls in container.find('tr.info-attack td.info-header i.xwing-miniatures-font')[0].classList
#                        container.find('tr.info-attack td.info-header i.xwing-miniatures-font').removeClass(cls) if cls.startsWith('xwing-miniatures-font-frontarc')
                    container.find('tr.info-attack td.info-header i.xwing-miniatures-font').addClass(ship.attack_icon ? 'xwing-miniatures-font-frontarc')

                    container.find('tr.info-energy td.info-data').text(pilot.ship_override?.energy ? ship.energy)
                    container.find('tr.info-energy').toggle(pilot.ship_override?.energy? or ship.energy?)
                    container.find('tr.info-range').hide()
                    container.find('td.info-rangebonus').hide()
                    container.find('tr.info-agility td.info-data').text(pilot.ship_override?.agility ? ship.agility)
                    container.find('tr.info-agility').show()
                    container.find('tr.info-hull td.info-data').text(pilot.ship_override?.hull ? ship.hull)
                    container.find('tr.info-hull').show()
                    container.find('tr.info-shields td.info-data').text(pilot.ship_override?.shields ? ship.shields)
                    container.find('tr.info-shields').show()

                    if effective_stats?.force? or data.force?
                        container.find('tr.info-force td.info-data').html ((pilot.ship_override?.force ? pilot.force)+ '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>')
                        container.find('tr.info-force').show()
                    else
                        container.find('tr.info-force').hide()

                    if data.charge?
                        if data.recurring?
                            container.find('tr.info-charge td.info-data').html (pilot.charge + '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>')
                        else
                            container.find('tr.info-charge td.info-data').text pilot.charge
                        container.find('tr.info-charge').show()
                    else
                        container.find('tr.info-charge').hide()

                    container.find('tr.info-actions td.info-data').html @formatActions(pilot.ship_override?.actions ? exportObj.ships[data.ship].actions, ", ", pilot.keyword ? [])
    
                    container.find('tr.info-actions').show()
                    container.find('tr.info-upgrades').show()
                    container.find('tr.info-upgrades td.info-data').html(((if exportObj.upgrades[upgrade].display_name? then exportObj.upgrades[upgrade].display_name else upgrade) for upgrade in (data.upgrades ? [])).join(', ') or 'None')
                    container.find('p.info-maneuvers').show()
                    container.find('p.info-maneuvers').html(@getManeuverTableHTML(ship.maneuvers, ship.maneuvers))
                when 'Addon'
                    container.find('.info-type').text additional_opts.addon_type
                    container.find('.info-sources.info-data').text (exportObj.translate(@language, 'sources', source) for source in data.sources).sort().join(', ')
                    container.find('.info-sources').show()
                    
                    #logic to determine how many dots to use for uniqueness
                    if data.unique?
                        uniquedots = "&middot;&nbsp;"
                    else if data.max_per_squad?
                        count = 0
                        uniquedots = ""
                        while (count < data.max_per_squad)
                            uniquedots = uniquedots.concat("&middot;")
                            ++count
                        uniquedots = uniquedots.concat("&nbsp;")
                    else
                        uniquedots = ""
                    
                    
                    if @collection?.counts?
                        addon_count = @collection.counts?['upgrade']?[data.name] ? 0
                        container.find('.info-collection').text """You have #{addon_count} in your collection."""
                        container.find('.info-collection').show()
                    else
                        container.find('.info-collection').hide()
                    container.find('.info-name').html """#{uniquedots}#{if data.display_name then data.display_name else data.name}#{if exportObj.isReleased(data) then  "" else " (#{exportObj.translate(@language, 'ui', 'unreleased')})"}"""
                    if data.pointsarray? 
                        point_info = "<i><b>Point cost:</b> " + data.pointsarray + " when "
                        if data.variableagility? and data.variableagility
                            point_info += "agility is " + [0..data.pointsarray.length-1]
                        else if data.variableinit? and data.variableinit
                            point_info += "initiative is " + [0..data.pointsarray.length-1]
                        else if data.variablebase? and data.variablebase
                            point_info += " base size is small, medium, large or huge"
                        point_info += "</i>"

                    restriction_info = @restriction_text(data) + @upgrade_effect(data)
                    if point_info? or (restriction_info != '')
                        if point_info? and (restriction_info != '')
                            point_info += "<br/>"
                        container.find('p.info-restrictions').html (point_info ? '') + restriction_info
                        container.find('p.info-restrictions').show()
                    else
                        container.find('p.info-restrictions').hide()

                    container.find('p.info-text').html (data.text ? '')
                    container.find('p.info-text').show()
                    container.find('tr.info-ship').hide()
                    container.find('tr.info-base').hide()
                    container.find('tr.info-skill').hide()
                    container.find('tr.info-engagement').hide()
                    if data.energy?
                        container.find('tr.info-energy td.info-data').text data.energy
                        container.find('tr.info-energy').show()
                    else
                        container.find('tr.info-energy').hide()
                    if data.attack?
                        container.find('tr.info-attack td.info-data').text data.attack
                        container.find('tr.info-attack').show()
                    else
                        container.find('tr.info-attack').hide()

                    if data.attackt?
                        container.find('tr.info-attack-turret td.info-data').text data.attackt
                        container.find('tr.info-attack-turret').show()
                    else
                        container.find('tr.info-attack-turret').hide()

                    if data.attackr?
                        container.find('tr.info-attack-right td.info-data').text data.attackr
                        container.find('tr.info-attack-right').show()
                    else
                        container.find('tr.info-attack-right').hide()

                    if data.attackl?
                        container.find('tr.info-attack-left td.info-data').text data.attackl
                        container.find('tr.info-attack-left').show()
                    else
                        container.find('tr.info-attack-right').hide()

                    if data.attackdt?
                        container.find('tr.info-attack-doubleturret td.info-data').text data.attackdt
                        container.find('tr.info-attack-doubleturret').show()
                    else
                        container.find('tr.info-attack-doubleturret').hide()
                        
                    if data.attackbull?
                        container.find('tr.info-attack-bullseye td.info-data').text data.attackbull
                        container.find('tr.info-attack-bullseye').show()
                    else
                        container.find('tr.info-attack-bullseye').hide()

                    if data.attackf?
                        container.find('tr.info-attack-fullfront td.info-data').text data.attackf
                        container.find('tr.info-attack-fullfront').show()
                    else
                        container.find('tr.info-attack-fullfront').hide()
                        
                    container.find('tr.info-attack-right').hide()
                    container.find('tr.info-attack-left').hide()
                    container.find('tr.info-attack-back').hide()

                    if data.recurring?
                        container.find('tr.info-charge td.info-data').html (data.charge + """<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>""")
                    else                
                        container.find('tr.info-charge td.info-data').text data.charge
                    container.find('tr.info-charge').toggle(data.charge?)                        
                    
                    if data.range?
                        container.find('tr.info-range td.info-data').text data.range
                        container.find('tr.info-range').show()
                    else
                        container.find('tr.info-range').hide()

                    if data.rangebonus?
                        container.find('td.info-rangebonus').show()
                    else
                        container.find('td.info-rangebonus').hide()
                        
                        
                    container.find('tr.info-force td.info-data').html (data.force + '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>')
                    container.find('tr.info-force').toggle(data.force?)                        

                    container.find('tr.info-agility').hide()
                    container.find('tr.info-hull').hide()
                    container.find('tr.info-shields').hide()
                    container.find('tr.info-actions').hide()
                    container.find('tr.info-upgrades').hide()
                    container.find('p.info-maneuvers').hide()
                when 'Rules'
                    container.find('.info-type').hide()
                    container.find('.info-sources').hide()
                    container.find('.info-collection').hide()
                    container.find('.info-name').html data.name
                    container.find('.info-name').show()
                    container.find('p.info-restrictions').hide()
                    container.find('p.info-text').html data.text
                    container.find('p.info-text').show()
                    container.find('tr.info-ship').hide()
                    container.find('tr.info-base').hide()
                    container.find('tr.info-skill').hide()
                    container.find('tr.info-agility').hide()
                    container.find('tr.info-hull').hide()
                    container.find('tr.info-shields').hide()
                    container.find('tr.info-actions').hide()
                    container.find('tr.info-upgrades').hide()
                    container.find('p.info-maneuvers').hide()
                    container.find('tr.info-energy').hide()
                    container.find('tr.info-attack').hide()
                    container.find('tr.info-attack-turret').hide()
                    container.find('tr.info-attack-bullseye').hide()
                    container.find('tr.info-attack-fullfront').hide()
                    container.find('tr.info-attack-back').hide()
                    container.find('tr.info-attack-doubleturret').hide()
                    container.find('tr.info-charge').hide()
                    container.find('td.info-rangebonus').hide()
                    container.find('tr.info-range').hide()
                    container.find('tr.info-force').hide()
                when 'MissingStuff'
                    container.find('.info-type').text "List of Missing items"
                    container.find('.info-sources').hide()
                    container.find('.info-collection').hide()
                    container.find('.info-name').html "Missing items"
                    container.find('.info-name').show()
                    missingStuffInfoText = "To field this squad you need the following additional items: <ul>"
                    for item in data
                        missingStuffInfoText += """<li><strong>#{(if item.display_name? then item.display_name else item.name)}</strong> ("""
                        first = true
                        for source in item.sources
                            if not first
                                missingStuffInfoText += ", "
                            missingStuffInfoText += source
                            first = false
                        missingStuffInfoText += ")</li>"
                    missingStuffInfoText +="</ul>"
                    container.find('p.info-restrictions').hide()
                    container.find('p.info-text').html missingStuffInfoText
                    container.find('p.info-text').show()
                    container.find('tr.info-ship').hide()
                    container.find('tr.info-base').hide()
                    container.find('tr.info-skill').hide()
                    container.find('tr.info-agility').hide()
                    container.find('tr.info-hull').hide()
                    container.find('tr.info-shields').hide()
                    container.find('tr.info-actions').hide()
                    container.find('tr.info-upgrades').hide()
                    container.find('p.info-maneuvers').hide()
                    container.find('tr.info-energy').hide()
                    container.find('tr.info-attack').hide()
                    container.find('tr.info-attack-turret').hide()
                    container.find('tr.info-attack-bullseye').hide()
                    container.find('tr.info-attack-fullfront').hide()
                    container.find('tr.info-attack-back').hide()
                    container.find('tr.info-attack-doubleturret').hide()
                    container.find('tr.info-charge').hide()
                    container.find('td.info-rangebonus').hide()
                    container.find('tr.info-range').hide()
                    container.find('tr.info-force').hide()

            if container != @mobile_tooltip_modal
                container.show()
            @tooltip_currently_displaying = data

            # fix card viewer to view, if it is fully visible (it might not be e.g. on mobile devices. In that case keep it on its static position, so you can scroll to see it)
            
            if $(window).width() >= 768
                well = container.find('.info-well')
                if $.isElementInView(well, true)
                    well.css('position','fixed')
                else
                    well.css('position','static')
        
    _randomizerLoopBody: (data) =>
        if data.keep_running
            #console.log "Current points: #{@total_points} of #{data.max_points}, iteration=#{data.iterations} of #{data.max_iterations}, keep_running=#{data.keep_running}"
            if data.max_points - @total_points <= data.bid_goal and @total_points <= data.max_points
                # Hit bid range
                #console.log "Points reached exactly"
                data.keep_running = false
            else if @total_points < data.max_points
                #console.log "Need to add something"
                # Add something
                # Possible options: ship or empty addon slot
                unused_addons = []
                for ship in @ships
                    for upgrade in ship.upgrades
                        unused_addons.push upgrade unless upgrade.data? or (upgrade.occupied_by? and upgrade.occupied_by != null)
                        
                # 0 is ship, otherwise addon
                idx = $.randomInt(data.ships_or_upgrades + unused_addons.length)
                if idx < data.ships_or_upgrades or unused_addons.length == 0
                    # Add random ship
                    #console.log "Add ship"
                    available_ships = @getAvailableShipsMatchingAndCheapEnough(data.max_points - @total_points, '', false, data.collection_only)
                    if available_ships.length == 0
                        if unused_addons.length > 0
                            idx = $.randomInt(unused_addons.length) + data.ships_or_upgrades
                        else 
                            available_ships = @getAvailableShipsMatching('', false, data.collection_only)
                    if (available_ships.length > 0) and ((@ships.length < data.ship_limit) or (data.ship_limit == 0))
                        ship_type = available_ships[$.randomInt available_ships.length].name
                        available_pilots = @getAvailablePilotsForShipIncluding(ship_type)
                        if available_pilots.length == 0 
                            # edge case: It might have been a ship selected, that has only unique pilots - which all have been already selected 
                            return
                        pilot = available_pilots[$.randomInt available_pilots.length]
                        if not pilot.disabled and (if @isQuickbuild then exportObj.pilots[exportObj.quickbuildsById[pilot.id].pilot] else exportObj.pilotsById[pilot.id]).sources.intersects(data.allowed_sources) and ((not data.collection_only) or @collection.checkShelf('pilot', (if @isQuickbuild then exportObj.quickbuildsById[pilot.id] else pilot.name)))
                            new_ship = @addShip()
                            new_ship.setPilotById pilot.id
                if idx >= data.ships_or_upgrades and unused_addons.length != 0
                    # Add upgrade
                    #console.log "Add addon"
                    addon = unused_addons[idx - data.ships_or_upgrades]
                    switch addon.type
                        when 'Upgrade'
                            available_upgrades = (upgrade for upgrade in @getAvailableUpgradesIncluding(addon.slot, null, addon.ship, addon,'', @dfl_filter_func, sorted = false) when (exportObj.upgradesById[upgrade.id].sources.intersects(data.allowed_sources) and ((not data.collection_only) or @collection.checkShelf('upgrade', upgrade.name))))
                            upgrade = if available_upgrades.length > 0 then available_upgrades[$.randomInt available_upgrades.length] else undefined
                            if upgrade and not upgrade.disabled
                                addon.setById upgrade.id
                        else
                            throw new Error("Invalid addon type #{addon.type}")

            else
                #console.log "Need to remove something"
                # Remove something
                removable_things = []
                for ship in @ships
                    for _ in [0...(11-data.ships_or_upgrades)]
                        removable_things.push ship
                    for upgrade in ship.upgrades
                        removable_things.push upgrade if upgrade.data?
                if removable_things.length > 0
                    thing_to_remove = removable_things[$.randomInt removable_things.length]
                    #console.log "Removing #{thing_to_remove}"
                    if thing_to_remove instanceof Ship
                        @removeShip thing_to_remove
                    else if thing_to_remove instanceof GenericAddon
                        thing_to_remove.setData null
                    else
                        throw new Error("Unknown thing to remove #{thing_to_remove}")
            # continue the "loop"
            window.setTimeout @_makeRandomizerLoopFunc(data), 0
        else
            #console.log "Clearing timer #{data.timer}, iterations=#{data.iterations}, keep_running=#{data.keep_running}"
            # we have to stop randomizing, but should do a final check on our point costs.
            while @total_points > data.max_points
                removable_things = []
                for ship in @ships
                    # removable_things.push ship
                    for upgrade in ship.upgrades
                        removable_things.push upgrade if upgrade.data?
                if removable_things.length == 0
                    for ship in @ships
                        removable_things.push ship
                if removable_things.length > 0
                    thing_to_remove = removable_things[$.randomInt removable_things.length]
                    #console.log "Removing #{thing_to_remove}"
                    if thing_to_remove instanceof Ship
                        @removeShip thing_to_remove
                    else if thing_to_remove instanceof GenericAddon
                        thing_to_remove.setData null
                    else
                        throw new Error("Unknown thing to remove #{thing_to_remove}")

            if data.fill_zero_pts
                for ship in @ships
                    for addon in ship.upgrades
                        continue unless not (addon.data? or (addon.occupied_by? and addon.occupied_by != null))
                        available_upgrades = (upgrade for upgrade in @getAvailableUpgradesIncluding(addon.slot, null, addon.ship, addon,'', @dfl_filter_func, sorted = false) when (exportObj.upgradesById[upgrade.id].sources.intersects(data.allowed_sources) and (upgrade.points < 1) and ((not data.collection_only) or @collection.checkShelf('upgrade', upgrade.name))))
                        upgrade = if available_upgrades.length > 0 then available_upgrades[$.randomInt available_upgrades.length] else undefined
                        if upgrade and not upgrade.disabled
                            addon.setById upgrade.id
                        


            window.clearTimeout data.timer
            # Update all selectors
            for ship in @ships
                ship.updateSelections()
            @suppress_automatic_new_ship = false
            @addShip()

    _makeRandomizerLoopFunc: (data) =>
        () =>
            @_randomizerLoopBody(data)

    randomSquad: (max_points=200, allowed_sources=null, timeout_ms=1000, bid_goal=5, ship_limit=0, ships_or_upgrades=3, collection_only=true, fill_zero_pts=false) ->
        @backend_status.fadeOut 'slow'
        @suppress_automatic_new_ship = true
        
        if allowed_sources.length < 1
            allowed_sources = null
        
        # Clear all existing ships
        while @ships.length > 0
            @removeShip @ships[0]
        throw new Error("Ships not emptied") if @ships.length > 0
        data =
            max_points: max_points
            bid_goal: bid_goal
            ship_limit: ship_limit
            ships_or_upgrades: ships_or_upgrades
            keep_running: true
            allowed_sources: allowed_sources ? exportObj.expansions
            collection_only: @collection? and (@collection.checks.collectioncheck == "true") and collection_only
            fill_zero_pts: fill_zero_pts
        stopHandler = () =>
            #console.log "*** TIMEOUT *** TIMEOUT *** TIMEOUT ***"
            data.keep_running = false
        data.timer = window.setTimeout stopHandler , timeout_ms
        #console.log "Timer set for #{timeout_ms}ms, timer is #{data.timer}"
        window.setTimeout @_makeRandomizerLoopFunc(data), 0
        @resetCurrentSquad()
        @current_squad.name = 'Random Squad'
        @container.trigger 'xwing-backend:squadNameChanged'

    setBackend: (backend) ->
        @backend = backend
        if @waiting_for_backend?
            for meth in @waiting_for_backend
                meth()

    upgrade_effect: (card) ->
        removestext = text = comma = ''
        if card.modifier_func
            statchange =
                attack: 0
                attackf: 0
                attackbull: 0
                attackb: 0
                attackt: 0
                attackl: 0
                attackr: 0
                attackdt: 0
                energy: 0
                agility: 0
                hull: 0
                shields: 0
                force: 0
                actions: []
                maneuvers: [0, 0]
            card.modifier_func(statchange)
            if statchange.attack != 0
                text += comma + "%FRONTARC% (#{statchange.attack})"
                comma = ', '
            if statchange.attackf != 0
                text += comma + "%FULLFRONTARC% (#{statchange.attackf})"
                comma = ', '
            if statchange.attackbull != 0
                text += comma + "%BULLSEYEARC% (#{statchange.attackbull})"
                comma = ', '
            if statchange.attackb != 0
                text += comma + "%REARARC% (#{statchange.attackb})"
                comma = ', '
            if statchange.attackt != 0
                text += comma + "%SINGLETURRETARC% (#{statchange.attackt})"
                comma = ', '
            if statchange.attackl != 0
                text += comma + "%LEFTARC% (#{statchange.attackl})"
                comma = ', '
            if statchange.attackr != 0
                text += comma + "%RIGHTARC% (#{statchange.attackr})"
                comma = ', '
            if statchange.attackdt != 0
                text += comma + "%DOUBLETURRETARC% (#{statchange.attackdt})"
                comma = ', '
            if statchange.energy != 0
                text += comma + "%ENERGY% (#{statchange.energy})"
                comma = ', '
            if statchange.agility != 0
                text += comma + "%AGILITY% (#{statchange.agility})"
                comma = ', '
            if statchange.hull != 0
                text += comma + "%HULL% (#{statchange.hull})"
                comma = ', '
            if statchange.shields != 0
                text += comma + "%SHIELD% (#{statchange.shields})"
                comma = ', '
            if statchange.actions.length > 0
                text += comma + @formatActions(statchange.actions, ", ", [])
                comma = ', '
        if card.confersAddons
            for addonname in card.confersAddons
                text += comma + "%#{addonname.slot.toUpperCase().replace(/[^a-z0-9]/gi, '')}%" 
                comma = ', '
        if card.unequips_upgrades
            comma = ''
            for slot in card.unequips_upgrades
                removestext += comma + "%#{slot.toUpperCase().replace(/[^a-z0-9]/gi, '')}%" 
                comma = ', '
        if text != ''
            data = 
                text: "</br><b>Adds:</b> #{text}"
            if removestext != ''
                data.text += "</br><b>Removes:</b> #{removestext}"
            return exportObj.fixIcons(data)
        else
            return ''

    restriction_text: (card) ->
        uniquetext = comma = othertext = text = ''
        if card.restrictions
            for r in card.restrictions
                if r[0] == "orUnique"
                    uniquetext = exportObj.translate(@language, 'restrictions', " or Squad Including") + " #{r[1]}"
                    continue
                switch r[0]
                    when "Base"
                        text += comma + "#{r[1]} " + exportObj.translate(@language, 'restrictions', "Ship")
                    when "Action"
                        array = [r[1]]
                        text += comma + @formatActions(array,"", [])
                    when "Equipped"
                        text += comma + "%#{r[1].toUpperCase().replace(/[^a-z0-9]/gi, '')}% Equipped"
                    when "Slot"
                        text += comma + exportObj.translate(@language, 'restrictions', "Extra") + " %#{r[1].toUpperCase().replace(/[^a-z0-9]/gi, '')}%"
                    when "Keyword"
                        text += comma + exportObj.translate(@language, 'restrictions', "#{r[1]}")
                    when "AttackArc"
                        text += comma + "%REARARC%"
                    when "ShieldsGreaterThan"
                        text += comma + "%SHIELD% > #{r[1]}"
                    when "EnergyGreatterThan"
                        text += comma + "%ENERGY% > #{r[1]}"
                    when "InitiativeGreaterThan"
                        text += comma + exportObj.translate(@language, 'restrictions', "Initiative") + " > #{r[1]}"
                    when "InitiativeLessThan"
                        text += comma + exportObj.translate(@language, 'restrictions', "Initiative")+ " < #{r[1]}"
                    when "AgilityEquals"
                        text += comma + exportObj.translate(@language, 'restrictions', "Agility") + " = #{r[1]}"
                    when "notUnique"
                        text += comma + exportObj.translate(@language, 'restrictions', "Non-Limited")
                    when "Faction"
                        othertext += comma + exportObj.translate(@language, 'faction', "#{r[1]}")
                comma = ', '
        if not card.skill
            if othertext == ''
                if card.faction
                    if card.faction instanceof Array
                        for factionitem in card.faction
                            othertext += comma + exportObj.translate(@language, 'faction', "#{factionitem}")
                            comma = ' or '
                    else
                        othertext += comma + exportObj.translate(@language, 'faction', "#{card.faction}")
                    comma = ', '
            if card.ship
                if card.ship instanceof Array
                    for shipname in card.ship
                        othertext += comma + shipname
                        comma = ' or '
                else
                    othertext += comma + card.ship
                comma = ', '
            if card.solitary
                othertext += comma + exportObj.translate(@language, 'faction', "Solitary")
                comma = ', '
            if card.standardized
                othertext += comma + exportObj.translate(@language, 'faction', "Standardized")
                comma = ', '
        text += othertext + uniquetext
        if text != ''
            data = 
                text: "<i><b>" + exportObj.translate(@language, 'restrictions', "Restrictions") + ":</b> " + text + "</i>"
            return exportObj.fixIcons(data)
        else
            return ''


    describeSquad: ->
        if @getNotes().trim() == '' then  ((ship.pilot.name for ship in @ships when ship.pilot?).join ', ') else @getNotes()

    listCards: ->
        card_obj = {}
        for ship in @ships
            if ship.pilot?
                card_obj[ship.pilot.name] = null
                for upgrade in ship.upgrades
                    card_obj[upgrade.data.name] = null if upgrade.data?
        return Object.keys(card_obj).sort()

    getNotes: ->
        @notes.val()

    getTag: ->
        @tag.val()
        
    getObstacles: ->
        @current_obstacles

    isSquadPossibleWithCollection: ->
        # console.log "#{@faction}: isSquadPossibleWithCollection()"
        # If the collection is uninitialized or empty, don't actually check it.
        if Object.keys(@collection?.expansions ? {}).length == 0
            # console.log "collection not ready or is empty"
            return [true, []]
        @collection.reset()
        if @collection?.checks.collectioncheck != "true"
            # console.log "collection check not enabled"
            return [true, []]
        @collection.reset()
        validity = true
        missingStuff = []
        for ship in @ships
            if ship.pilot?
                # Try to get both the physical model and the pilot card.
                ship_is_available = @collection.use('ship', ship.pilot.ship)
                pilot_is_available = @collection.use('pilot', ship.pilot.name)
                # console.log "#{@faction}: Ship #{ship.pilot.ship} available: #{ship_is_available}"
                # console.log "#{@faction}: Pilot #{ship.pilot.name} available: #{pilot_is_available}"
                validity = false unless ship_is_available and pilot_is_available
                missingStuff.push ship.data unless ship_is_available
                missingStuff.push ship.pilot unless pilot_is_available
                for upgrade in ship.upgrades
                    if upgrade.data?
                        upgrade_is_available = @collection.use('upgrade', upgrade.data.name)
                        # console.log "#{@faction}: Upgrade #{upgrade.data.name} available: #{upgrade_is_available}"
                        validity = false unless upgrade_is_available
                        missingStuff.push upgrade.data unless upgrade_is_available
        [validity, missingStuff]

    checkCollection: ->
        # console.log "#{@faction}: Checking validity of squad against collection..."
        if @collection?
            [squadPossible, missingStuff] = @isSquadPossibleWithCollection()
            @collection_invalid_container.toggleClass 'd-none', squadPossible
            @collection_invalid_container.on 'mouseover', (e) =>
                @showTooltip 'MissingStuff', missingStuff
            @collection_invalid_container.on 'touchstart', (e) =>
                @showTooltip 'MissingStuff', missingStuff

    toXWS: ->
        # Often you will want JSON.stringify(builder.toXWS())
        xws =
            description: @getNotes()
            faction: exportObj.toXWSFaction[@faction]
            name: @current_squad.name
            pilots: []
            points: @total_points
            vendor:
                yasb:
                    builder: 'Yet Another Squad Builder 2.0'
                    builder_url: window.location.href.split('?')[0]
                    link: @getPermaLink()
            version: '2.0.0'

        for ship in @ships
            if ship.pilot?
                xws.pilots.push ship.toXWS()

        # Associate multisection ships
        # This maps id to list of pilots it comprises
        multisection_id_to_pilots = {}
        last_id = 0
        unmatched = (pilot for pilot in xws.pilots when pilot.multisection?)
        for _ in [0...(unmatched.length ** 2)]
            break if unmatched.length == 0
            # console.log "Top of loop, unmatched: #{m.name for m in unmatched}"
            unmatched_pilot = unmatched.shift()
            unmatched_pilot.multisection_id ?= last_id++
            multisection_id_to_pilots[unmatched_pilot.multisection_id] ?= [unmatched_pilot]
            break if unmatched.length == 0
            # console.log "Finding matches for #{unmatched_pilot.name} (assigned id=#{unmatched_pilot.multisection_id})"
            matches = []
            for candidate in unmatched
                # console.log "-> examine #{candidate.name}"
                if unmatched_pilot.name in candidate.multisection
                    matches.push candidate
                    unmatched_pilot.multisection.removeItem candidate.name
                    candidate.multisection.removeItem unmatched_pilot.name
                    candidate.multisection_id = unmatched_pilot.multisection_id
                    # console.log "-> MATCH FOUND #{candidate.name}, assigned id=#{candidate.multisection_id}"
                    multisection_id_to_pilots[candidate.multisection_id].push candidate
                    if unmatched_pilot.multisection.length == 0
                        # console.log "-> No more sections to match for #{unmatched_pilot.name}"
                        break
            for match in matches
                if match.multisection.length == 0
                    # console.log "Dequeue #{match.name} since it has no more sections to match"
                    unmatched.removeItem match

        for pilot in xws.pilots
            delete pilot.multisection if pilot.multisection?

        obstacles = @getObstacles()
        if obstacles? and obstacles.length > 0
            xws.obstacles = obstacles

        xws

    toMinimalXWS: ->
        # Just what's necessary
        xws = @toXWS()

        # Keep mandatory stuff only
        for own k, v of xws
            delete xws[k] unless k in ['faction', 'pilots', 'version']

        for own k, v of xws.pilots
            delete xws[k] unless k in ['id', 'upgrades', 'multisection_id']

        xws

    loadFromXWS: (xws, cb) ->
        success = null
        error = null
        
        if xws.version?
            version_list = (parseInt x for x in xws.version.split('.'))
        else
            version_list = [0,2] # Version tag is optional, so let's just assume it is some 2.0 xws if no version is given

        switch
            # Not doing backward compatibility pre-1.x
            when version_list > [0, 1]
                xws_faction = exportObj.fromXWSFaction[xws.faction]

                if @faction != xws_faction
                        throw new Error("Attempted to load XWS for #{xws.faction} but builder is #{@faction}")

                if xws.name?
                    @current_squad.name = xws.name
                if xws.description?
                    @notes.val xws.description

                if xws.obstacles?
                    @current_squad.additional_data.obstacles = xws.obstacles

                @suppress_automatic_new_ship = true
                @removeAllShips()

                success = true
                error = ""

                serialized_squad = "v8ZsZ200Z" # serialization version 7, standard squad, 200 points
                # serialization schema SHIPID:UPGRADEID,UPGRADEID,...,UPGRADEID:;SHIPID:UPGRADEID,...

                for pilot in xws.pilots
                    new_ship = @addShip()
                    # we add some backward compatibility here, to allow imports from Launch Bay Next Squad Builder
                    # According to xws-spec, for 2nd edition we use id instead of name
                    # however, we will accept a name instead of an id as well.
                    
                    if pilot.id
                        pilotxws = pilot.id
                    else if pilot.name
                       pilotxws = pilot.name
                    else
                        success = false
                        error = "Pilot without identifier"
                        break

                    # add pilot id
                    if exportObj.pilotsByFactionXWS[xws_faction][pilotxws]? 
                        serialized_squad +=  exportObj.pilotsByFactionXWS[xws_faction][pilotxws][0].id
                    else if exportObj.pilotsByUniqueName[pilotxws] and exportObj.pilotsByUniqueName[pilotxws].length == 1
                        serialized_squad +=  exportObj.pilotsByUniqueName[pilotxws][0].id
                    
                    else
                        for key, possible_pilots of exportObj.pilotsByUniqueName
                            for possible_pilot in possible_pilots
                                if (possible_pilot.xws and possible_pilot.xws == pilotxws) or (not possible_pilot.xws and key == pilotxws)
                                    serialized_squad += possible_pilot.id
                                    break

                    serialized_squad += "X"

                    # add upgrade ids
                    # Turn all the upgrades into a flat list so we can keep trying to add them
                    addons = []
                    for upgrade_type, upgrade_canonicals of pilot.upgrades ? {}
                        for upgrade_canonical in upgrade_canonicals
                            # console.log upgrade_type, upgrade_canonical
                            slot = null
                            slot = exportObj.fromXWSUpgrade[upgrade_type] ? upgrade_type.capitalize()
                            upgrade = exportObj.upgradesBySlotXWSName[slot][upgrade_canonical] ?= exportObj.upgradesBySlotCanonicalName[slot][upgrade_canonical]
                            if not upgrade?
                                console.log("Failed to load xws upgrade: " + upgrade_canonical)
                                error += "Skipped upgrade " + upgrade_canonical
                                success = false
                                continue
                            serialized_squad += upgrade.id
                            serialized_squad += "W"
                    serialized_squad += "XY"

                @loadFromSerialized(serialized_squad)

                @current_squad.dirty = true
                @container.trigger 'xwing-backend:squadNameChanged'
                @container.trigger 'xwing-backend:squadDirtinessChanged'


        cb
            success: success
            error: error

class Ship
    constructor: (args) ->
        # args
        @builder = args.builder
        @container = args.container

        # internal state
        @pilot = null
        @data = null # ship data
        @quickbuildId = -1
        @linkedShip = null # some quickbuilds contain two ships, this variable may reference a Ship beeing part of the same quickbuild card
        @primary = true # only the primary ship of a linked ship pair will contribute points and serialization id
        @upgrades = []
        @wingmates = [] # stores wingmates (quickbuild stuff only) 
        @destroystate = null

        @setupUI()

    destroy: (cb) ->
        @resetPilot()
        @resetAddons()
        @teardownUI()
        idx = @builder.ships.indexOf this
        if idx < 0
            throw new Error("Ship not registered with builder")
        @builder.ships.splice idx, 1
        if @wingmates.length > 0
            @setWingmates(0)
        else if @linkedShip != null
            @linkedShip.linkedShip = null
            if @linkedShip.wingmates?.length > 0
                @linkedShip.removeFromWing(this)
            else
                await @builder.removeShip @linkedShip, defer()
        cb()

    copyFrom: (other) ->
        throw new Error("Cannot copy from self") if other is this
        #console.log "Attempt to copy #{other?.pilot?.name}"
        return unless other.pilot? and other.data?
        #console.log "Setting pilot to ID=#{other.pilot.id}"
        if @builder.isQuickbuild        
            if not (other.pilot.unique or (other.pilot.max_per_squad? and @builder.countPilots(other.pilot.canonical_name) >= other.pilot.max_per_squad))
                # check if any upgrades are unique. In that case the whole ship may not be copied
                no_uniques_involved = true
                for upgrade in other.upgrades
                    if (upgrade.data?.unique? and upgrade.data.unique) or (upgrade.data?.max_per_squad? and @builder.countUpgrades(upgrade.data.canonical_name) >= upgrade.data.max_per_squad) or upgrade.data?.solitary?
                        no_uniques_involved = false
                        # select cheapest generic like above
                        available_pilots = (pilot_data for pilot_data in @builder.getAvailablePilotsForShipIncluding(other.data.name) when not pilot_data.disabled)
                        if available_pilots.length > 0
                            @setPilotById available_pilots[0].id, true
                            break
                        else
                            return
                if no_uniques_involved
                    @setPilotById other.quickbuildId
        else 
            if other.pilot.unique or (other.pilot.max_per_squad? and @builder.countPilots(other.pilot.canonical_name) >= other.pilot.max_per_squad)
                # Look for cheapest generic or available unique, otherwise do nothing
                available_pilots = (pilot_data for pilot_data in @builder.getAvailablePilotsForShipIncluding(other.data.name) when not pilot_data.disabled)
                if available_pilots.length > 0
                    @setPilotById available_pilots[0].id, true

                else
                    return
            else
                @setPilotById other.pilot.id, true

            # Can't just copy upgrades since slots may be different
            other_upgrades = {}
            for upgrade in other.upgrades
                if upgrade?.data? and not upgrade.data.unique and ((not upgrade.data.max_per_squad?) or @builder.countUpgrades(upgrade.data.canonical_name) < upgrade.data.max_per_squad)
                    other_upgrades[upgrade.slot] ?= []
                    other_upgrades[upgrade.slot].push upgrade
            delayed_upgrades = {}
            for upgrade in @upgrades
                other_upgrade = (other_upgrades[upgrade.slot] ? []).shift()
                if other_upgrade?
                    upgrade.setById other_upgrade.data.id
                    if not upgrades.lastSetValid
                        delayed_upgrades[other_upgrade.data.id] = upgrade
            for id, upgrade of delayed_upgrades
                upgrade.setById id
            @addStandardizedUpgrades()
        @updateSelections()
        @builder.container.trigger 'xwing:pointsUpdated'
        @builder.current_squad.dirty = true
        @builder.container.trigger 'xwing-backend:squadDirtinessChanged'

    setShipType: (ship_type) ->
        @pilot_selector.data('select2').container.show()
        if ship_type != @pilot?.ship
            if not @builder.isQuickbuild
                # Ship changed; select first non-unique
                pilot = (exportObj.pilotsById[result.id] for result in @builder.getAvailablePilotsForShipIncluding(ship_type) when not exportObj.pilotsById[result.id].unique)[0]
                if pilot # if there is a non-unique, use this one
                    @setPilot pilot
                else # otherwise just set it to the first available pilot
                    @setPilot (exportObj.pilotsById[result.id] for result in @builder.getAvailablePilotsForShipIncluding(ship_type) when ((not exportObj.pilotsById[result.id].restriction_func? or exportObj.pilotsById[result.id].restriction_func(@)) and not (exportObj.pilotsById[result.id] in @builder.uniques_in_use.Pilot)))[0]
            else
                # get the first available pilot
                quickbuild_id = (result.id for result in @builder.getAvailablePilotsForShipIncluding(ship_type) when not result.disabled)[0]
                @setPilotById quickbuild_id
                
        @checkPilotSelectorQueryModal()
                
        # Clear ship background class
        for cls in @row.attr('class').split(/\s+/)
            if cls.indexOf('ship-') == 0
                @row.removeClass cls

        # Show delete button
        @remove_button.fadeIn 'fast'
        @copy_button.fadeIn 'fast'
        @points_destroyed_button.fadeIn 'fast'

        # Ship background
        @row.addClass "ship-#{ship_type.toLowerCase().replace(/[^a-z0-9]/gi, '')}"

        @builder.container.trigger 'xwing:shipUpdated'

    setPilotById: (id, noautoequip = false) ->
        #sets pilot of this ship according to given id. Id might be pilotId or quickbuildId depending on mode. 
        if not @builder.isQuickbuild
            @setPilot exportObj.pilotsById[parseInt id], noautoequip
        else
            if id != @quickbuildId
                @wingmate_selector.parent().hide()
                if @wingmates? and @wingmates.length > 0
                    # remove any wingmates, as the wing leader was just removed from the list
                    @setWingmates(0)
                    @linkedShip = null
                @quickbuildId = id
                @builder.current_squad.dirty = true
                @resetPilot()
                @resetAddons()
                if id? and id > -1
                    quickbuild = exportObj.quickbuildsById[parseInt id]
                    new_pilot = exportObj.pilots[quickbuild.pilot]
                    @data = exportObj.ships[quickbuild.ship]
                    @builder.isUpdatingPoints = true # prevents unneccesary validations while still adding stuff
                    if new_pilot?.unique?
                        await @builder.container.trigger 'xwing:claimUnique', [ new_pilot, 'Pilot', defer() ]
                    @pilot = new_pilot
                    @setupAddons() if @pilot?
                    @copy_button.show()
                    @setShipType @pilot.ship

                    # if this card contains more than one ship, make sure the other one is added as well
                    if quickbuild.wingmate? && not @linkedShip?
                        # try to join wingleader, if we have not been created by him
                        for ship in @builder.ships
                            if ship.quickbuildId == quickbuild.linkedId
                                # found our leader. join him.
                                ship.joinWing(this)
                                @linkedShip = ship
                                @primary = false
                                @builder.isUpdatingPoints = false
                                @builder.container.trigger 'xwing:pointsUpdated'
                                @builder.container.trigger 'xwing-backend:squadDirtinessChanged'
                                return # we are done.
                    if @linkedShip
                        # we are already linked to some other ship
                        if quickbuild.linkedId? 
                            # we will stay linked to another ship, so just set the linked one to an new pilot es well
                            @linkedShip.setPilotById quickbuild.linkedId
                            @linkedShip.primary = false unless quickbuild.wingmate?
                        else
                            # take care of associated ship
                            if @linkedShip.wingmates?.length > 0
                                # we are no longer part of a wing
                                @linkedShip.removeFromWing(this)
                            else
                                # we are no longer part of a linked pair, so the linked ship should be removed
                                @linkedShip.linkedShip = null
                                await @builder.removeShip @linkedShip, defer()
                            @linkedShip = null
                    else if quickbuild.linkedId?
                        # we nare not already linked to another ship, but need one. Let's set one up
                        @linkedShip = @builder.ships.slice(-1)[0]
                        # during squad building there is an empty ship at the bottom, use that one and add a new empty one. 
                        # during squad loading there is no empty ship at the bottom, so we just create a new one and use it
                        if @linkedShip.data != null
                            @linkedShip = @builder.addShip()
                        else 
                            @builder.addShip()
                        @linkedShip.linkedShip = this
                        @linkedShip.setPilotById quickbuild.linkedId
                        # for pairs the first selected ship is master, so as we have been created first, we set the other ship to false
                        # for wings the wingleader is always master, so we don't set the other ship to false, if we are just a wingmate
                        @linkedShip.primary = false unless quickbuild.wingmate?
                    @primary = !quickbuild.wingmate?
                    if quickbuild?.wingleader? 
                        @wingmate_selector.parent().show()
                        @wingmate_selector.val quickbuild.wingmates[0]
                        @wingmate_selector.attr "min", quickbuild.wingmates[0]
                        @wingmate_selector.attr "max", quickbuild.wingmates[quickbuild.wingmates.length - 1]
                        @setWingmates quickbuild.wingmates[0]
                    @builder.isUpdatingPoints = false
                    @builder.container.trigger 'xwing:pointsUpdated'


                else
                    @copy_button.hide()
                @builder.container.trigger 'xwing:pointsUpdated'
                @builder.container.trigger 'xwing-backend:squadDirtinessChanged'

    addStandardizedUpgrades: ->
        idx = @builder.standard_list['Ship'].indexOf @data.name
        if idx > -1
            for upgrade in @upgrades
                if exportObj.slotsMatching(upgrade.slot, @builder.standard_list['Upgrade'][idx].slot)
                    upgrade.setData @builder.standard_list['Upgrade'][idx]
                    break

    setPilot: (new_pilot, noautoequip = false) ->
        # don't call this method directly, unless you know what you do. Use setPilotById for proper quickbuild handling

        if new_pilot != @pilot
            @builder.current_squad.dirty = true
            same_ship = @pilot? and new_pilot?.ship == @pilot.ship
            old_upgrades = {}
            if same_ship
                # track addons and try to reassign them
                for upgrade in @upgrades
                    if upgrade?.data?
                        old_upgrades[upgrade.slot] ?= []
                        old_upgrades[upgrade.slot].push upgrade
            @resetPilot()
            @resetAddons()
            if new_pilot?
                @data = exportObj.ships[new_pilot?.ship]
                if new_pilot?.unique?
                    await @builder.container.trigger 'xwing:claimUnique', [ new_pilot, 'Pilot', defer() ]
                @pilot = new_pilot
                @setupAddons() if @pilot?
                @copy_button.show()
                @setShipType @pilot.ship
                @addStandardizedUpgrades()
                if (@pilot.autoequip? or (exportObj.ships[@pilot.ship].autoequip? and not same_ship)) and not noautoequip
                    autoequip = (@pilot.autoequip ? []).concat(exportObj.ships[@pilot.ship].autoequip ? [])
                    for upgrade_name in autoequip
                        auto_equip_upgrade = exportObj.upgrades[upgrade_name]
                        for upgrade in @upgrades
                            if exportObj.slotsMatching(upgrade.slot, auto_equip_upgrade.slot)
                                upgrade.setData auto_equip_upgrade
                if same_ship
                    delayed_upgrades = {}
                    for upgrade in @upgrades
                        old_upgrade = (old_upgrades[upgrade.slot] ? []).shift()
                        if old_upgrade?
                            upgrade.setById old_upgrade.data.id
                            if not upgrade.lastSetValid
                                delayed_upgrades[old_upgrade.data.id] = upgrade
                    for id, upgrade of delayed_upgrades
                        upgrade.setById id
            else
                @copy_button.hide()
            @builder.container.trigger 'xwing:pointsUpdated'
            @builder.container.trigger 'xwing-backend:squadDirtinessChanged'

    resetPilot: ->
        if @pilot?.unique?
            await @builder.container.trigger 'xwing:releaseUnique', [ @pilot, 'Pilot', defer() ]
        @pilot = null

    setupAddons: ->
        if not @builder.isQuickbuild
            # Upgrades from pilot
            for slot in @pilot.slots ? []
                @upgrades.push new exportObj.Upgrade
                    ship: this
                    container: @addon_container
                    slot: slot
        else 
            # Upgrades from quickbuild
            for upgrade_name in exportObj.quickbuildsById[@quickbuildId].upgrades ? []
                upgrade_data = exportObj.upgrades[upgrade_name]
                if not upgrade_data?
                    console.log("Unknown Upgrade: " + upgrade_name)
                    continue
                upgrade = new exportObj.QuickbuildUpgrade
                    ship: this
                    container: @addon_container
                    slot: upgrade_data.slot
                    upgrade: upgrade_data
                upgrade.setData upgrade_data
                @upgrades.push upgrade

    resetAddons: ->
        await
            for upgrade in @upgrades
                upgrade.destroy defer() if upgrade?
        @upgrades = []

    getPoints: ->
        if not @builder.isQuickbuild
            points = @pilot?.points ? 0
            for upgrade in @upgrades
                points += upgrade.getPoints()
            @points_container.find('span').text points
            if points > 0
                @points_container.fadeTo 'fast', 1
            else
                @points_container.fadeTo 0, 0
            points
        else    
            quickbuild = exportObj.quickbuildsById[@quickbuildId]
            threat = if @primary then quickbuild?.threat ? 0 else 0 
            if quickbuild?.wingleader?
                threat = quickbuild.threat[quickbuild.wingmates.indexOf(@wingmates.length)]
            @points_container.find('span').text threat
            if threat > 0
                @points_container.fadeTo 'fast', 1
            else
                @points_container.fadeTo 0, 0
            threat

    setWingmates: (wingmates) ->
        # creates/destroys wingmates to match number given as argument
        # todo: Check if number is valid for this quickbuild wing?
        if @wingmates?.length == wingmates
            # nothing to do, we already have correct number of wingmates. 
            return
        if !@wingmates? || @wingmates.length == 0
            # if no wingmates are set yet, use the linked buddy
            @wingmates = [@linkedShip]
        quickbuild = exportObj.quickbuildsById[@quickbuildId]
        while @wingmates.length < wingmates 
            # create more wingmates
            newMate = @builder.ships.slice(-1)[0]
            # during squad building there is an empty ship at the bottom, use that one and add a new empty one. 
            # during squad loading there is no empty ship at the bottom, so we just create a new one and use it
            if newMate.data != null
                newMate = @builder.addShip()
            else 
                @builder.addShip()
            newMate.linkedShip = this # link new mate to us
            @wingmates.push(newMate)
            newMate.setPilotById quickbuild.linkedId
            # for pairs the first selected ship is master, so as we have been created first, we set the other ship to false
            # for wings the wingleader is always master, so we don't set the other ship to false, if we are just a wingmate
            newMate.primary = false
            @primary = true # he should not try to steal our primary position, as he is aware of beeing not squad leader, but in case he's not just set it. 
        while @wingmates.length > wingmates
            # destroy wingmates
            dyingMate = @wingmates.pop()
            dyingMate.linkedShip = null # prevent the mate from killing us
            await @builder.removeShip dyingMate, defer()
        @wingmate_selector.val wingmates

    removeFromWing: (ship) ->
        # remove requested ship from wing
        @wingmates.removeItem(ship)
        # check if the wing is still valid, otherwise destroy it. 
        quickbuild = exportObj.quickbuildsById[@quickbuildId]
        if !(@wingmates.length in quickbuild.wingmates)
            @destroy $.noop
        @wingmate_selector.val @wingmates.length

    joinWing: (ship) ->
        # remove requested ship from wing
        @wingmates.push(ship)
        # check if the wing is still valid, otherwise destroy the added ship
        quickbuild = exportObj.quickbuildsById[@quickbuildId]
        if !(@wingmates.length in quickbuild.wingmates)
            ship.destroy $.noop
            @removeFromWing(ship)
        @wingmate_selector.val @wingmates.length


    updateSelections: ->
        if @pilot?
            @ship_selector.select2 'data',
                id: @pilot.ship
                text: if exportObj.ships[@pilot.ship].display_name then exportObj.ships[@pilot.ship].display_name else @pilot.ship
                xws: exportObj.ships[@pilot.ship].xws
                icon: if exportObj.ships[@pilot.ship].icon then exportObj.ships[@pilot.ship].icon else exportObj.ships[@pilot.ship].xws

            @pilot_selector.select2 'data',
                id: @pilot.id
                text: "#{if exportObj.settings?.initiative_prefix? and exportObj.settings.initiative_prefix then @pilot.skill + ' - ' else ''}#{if @pilot.display_name then @pilot.display_name else @pilot.name}#{if @quickbuildId != -1 then exportObj.quickbuildsById[@quickbuildId].suffix else ""} (#{if @quickbuildId != -1 then (if @primary then exportObj.quickbuildsById[@quickbuildId].threat else 0) else @pilot.points})"
            @pilot_selector.data('select2').container.show()
            for upgrade in @upgrades
                points = upgrade.getPoints()
                upgrade.updateSelection points
        else
            @pilot_selector.select2 'data', null
            #@pilot_selector.data('select2').container.toggle(@ship_selector.val() != '')
            
    checkPilotSelectorQueryModal: ->    
        if $(window).width() >= 768
            @pilot_query_modal.hide()
        else 
            if @pilot then @pilot_query_modal.show()

    setupUI: ->
        @row = $ document.createElement 'DIV'
        @row.addClass 'row ship mb-5 mb-sm-0'
        @row.insertBefore @builder.notes_container

        if @pilot?
            shipicon = if exportObj.ships[@pilot.ship].icon then exportObj.ships[@pilot.ship].icon else exportObj.ships[@pilot.ship].xws
        
        @row.append $.trim '''
            <div class="col-md-3">
                <div class="form-group d-flex">
                    <input class="ship-selector-container" type="hidden"></input>
                    <div class="input-group-append">
                        <button class="btn btn-secondary d-block d-md-none ship-query-modal"><i class="fas fa-question"></i></button>
                    </div>
                <br />
                </div>
                <div class="form-group d-flex">
                    <input type="hidden" class="pilot-selector-container"></input>
                    <div class="input-group-append">
                        <button class="btn btn-secondary pilot-query-modal"><i class="fas fa-question"></i></button>
                    <br />
                    </div>
                </div>
                <label class="wingmate-label">
                Wingmates: 
                    <input type="number" class="wingmate-selector"></input>
                </label>
            </div>
            <div class="col-md-1 points-display-container">
                 <span></span>
            </div>
            <div class="col-md-6 addon-container">  </div>
            <div class="col-md-2 button-container">
                <button class="btn btn-danger remove-pilot side-button"><span class="d-none d-sm-block" data-toggle="tooltip" title="Remove Pilot"><i class="fa fa-times"></i></span><span class="d-block d-sm-none"> Remove Pilot</span></button>
                <button class="btn btn-light copy-pilot side-button"><span class="d-none d-sm-block" data-toggle="tooltip" title="Clone Pilot"><i class="far fa-copy"></i></span><span class="d-block d-sm-none"> Clone Pilot</span></button>&nbsp;&nbsp;&nbsp;
                <button class="btn btn-light points-destroyed side-button" points-state"><span class="destroyed-type" title="Points Destroyed"><i class="xwing-miniatures-font xwing-miniatures-font-title"></i></span></button>
            </div>
        '''
        @row.find('.button-container span').tooltip()

        @ship_selector = $ @row.find('input.ship-selector-container')
        @pilot_selector = $ @row.find('input.pilot-selector-container')
        @wingmate_selector = $ @row.find('input.wingmate-selector')
        @ship_query_modal = $ @row.find('button.ship-query-modal')
        @pilot_query_modal = $ @row.find('button.pilot-query-modal')
        
        
        @ship_query_modal.click (e) =>
            if @pilot
                @builder.showTooltip 'Ship', exportObj.ships[@pilot.ship], null, @builder.mobile_tooltip_modal, true
                @builder.mobile_tooltip_modal.modal 'show'
                
        @pilot_query_modal.click (e) =>
            if @pilot
                @builder.showTooltip 'Pilot', @pilot, (@ if @pilot), @builder.mobile_tooltip_modal, true
                @builder.mobile_tooltip_modal.modal 'show'
            
            
        shipResultFormatter = (object, container, query) ->
            return """<i class="xwing-miniatures-ship xwing-miniatures-ship-#{object.icon}"></i> #{object.text}"""

        shipSelectionFormatter = (object, container) ->
            return """<i class="xwing-miniatures-ship xwing-miniatures-ship-#{object.icon}"></i> #{object.text}"""
            
        @ship_selector.select2
            width: '100%'
            placeholder: exportObj.translate @builder.language, 'ui', 'shipSelectorPlaceholder'
            query: (query) =>
                data = {results: []}
                data.results = @builder.getAvailableShipsMatching(query.term)
                query.callback(data)
            minimumResultsForSearch: if $.isMobile() then -1 else 0
            formatResultCssClass: (obj) =>
                if @builder.collection? and (@builder.collection.checks.collectioncheck == "true")
                    not_in_collection = false
                    if @pilot? and obj.id == exportObj.ships[@pilot.ship].id
                        # Currently selected ship; mark as not in collection if it's neither
                        # on the shelf nor on the table
                        unless (@builder.collection.checkShelf('ship', obj.name) or @builder.collection.checkTable('pilot', obj.name))
                            not_in_collection = true
                    else
                        # Not currently selected; check shelf only
                        not_in_collection = not @builder.collection.checkShelf('ship', obj.name)
                    if not_in_collection then 'select2-result-not-in-collection' else ''
                else
                    ''
            formatResult: shipResultFormatter
            formatSelection: shipResultFormatter

        @ship_selector.on 'select2-focus', (e) =>
            if $.isMobile()
                $('.select2-container .select2-focusser').remove()
                $('.select2-search input').prop('focus',false).removeClass('select2-focused')
        @ship_selector.on 'change', (e) =>
            @setShipType @ship_selector.val()
        @ship_selector.data('select2').results.on 'mousemove-filtered', (e) =>
            select2_data = $(e.target).closest('.select2-result').data 'select2-data'
            @builder.showTooltip 'Ship', exportObj.ships[select2_data.id] if select2_data?.id?
        @ship_selector.data('select2').container.on 'mouseover', (e) =>
            @builder.showTooltip 'Ship', exportObj.ships[@pilot.ship] if @pilot
        @ship_selector.data('select2').container.on 'touchstart', (e) =>
            @builder.showTooltip 'Ship', exportObj.ships[@pilot.ship] if @pilot

        @pilot_selector.select2
            width: '100%'
            placeholder: exportObj.translate @builder.language, 'ui', 'pilotSelectorPlaceholder'
            query: (query) =>
                data = {results: []}
                data.results = @builder.getAvailablePilotsForShipIncluding(@ship_selector.val(), (if not @builder.isQuickbuild then @pilot else @quickbuildId), query.term, true, @)
                query.callback(data)
            minimumResultsForSearch: if $.isMobile() then -1 else 0
            formatResultCssClass: (obj) =>
                if @builder.collection? and (@builder.collection.checks.collectioncheck == "true")
                    not_in_collection = false
                    name = ""
                    if @builder.isQuickbuild
                        name = exportObj.quickbuildsById[obj.id]?.pilot ? "unknown pilot"
                    else
                        name = obj.name
                    if obj.id == @pilot?.id
                        # Currently selected pilot; mark as not in collection if it's neither
                        # on the shelf nor on the table
                        unless (@builder.collection.checkShelf('pilot', name) or @builder.collection.checkTable('pilot', name))
                            not_in_collection = true
                    else
                        # Not currently selected; check shelf only
                        not_in_collection = not @builder.collection.checkShelf('pilot', name)
                    if not_in_collection then 'select2-result-not-in-collection' else ''
                else
                    ''
        @pilot_selector.on 'select2-focus', (e) =>
            if $.isMobile()
                $('.select2-container .select2-focusser').remove()
                $('.select2-search input').prop('focus',false).removeClass('select2-focused')
        @pilot_selector.on 'change', (e) =>
            @setPilotById @pilot_selector.select2('val')
            @builder.current_squad.dirty = true
            @builder.container.trigger 'xwing-backend:squadDirtinessChanged'
            @builder.backend_status.fadeOut 'slow'
        @pilot_selector.data('select2').results.on 'mousemove-filtered', (e) =>
            select2_data = $(e.target).closest('.select2-result').data 'select2-data'
            if @builder.isQuickbuild
                @builder.showTooltip 'Quickbuild', exportObj.quickbuildsById[select2_data.id], {ship: @data?.name} if select2_data?.id?
            else
                @builder.showTooltip 'Pilot', exportObj.pilotsById[select2_data.id] if select2_data?.id?
        @pilot_selector.data('select2').container.on 'mouseover', (e) =>
            @builder.showTooltip 'Pilot', @pilot, @ if @pilot
        @pilot_selector.data('select2').container.on 'touchstart', (e) =>
            @builder.showTooltip 'Pilot', @pilot, @ if @pilot

        @pilot_selector.data('select2').container.hide()

        if @builder.isQuickbuild
            @wingmate_selector.on 'change', (e) =>
                @setWingmates parseInt @wingmate_selector.val()
                @builder.current_squad.dirty = true
                @builder.container.trigger 'xwing-backend:squadDirtinessChanged'
                @builder.backend_status.fadeOut 'slow'
            @wingmate_selector.on 'mousemove-filtered', (e) =>
                return
                # TODO: show tooltip of wingmate
#                select2_data = $(e.target).closest('.select2-result').data 'select2-data'
#                if @builder.isQuickbuild
#                    @builder.showTooltip 'Quickbuild', exportObj.quickbuildsById[select2_data.id], {ship: @data?.name} if select2_data?.id?
#                else
#                    @builder.showTooltip 'Pilot', exportObj.wingmatesById[select2_data.id] if select2_data?.id?
#            @wingmate_selector.on 'mouseover', (e) =>
#                @builder.showTooltip 'Pilot', @wingmate, @ if @wingmate
#            @wingmate_selector.on 'touchstart', (e) =>
#                @builder.showTooltip 'Pilot', @wingmate, @ if @wingmate
#    
        @wingmate_selector.parent().hide()

        @points_container = $ @row.find('.points-display-container')
        @points_container.fadeTo 0, 0

        @addon_container = $ @row.find('div.addon-container')

        @remove_button = $ @row.find('button.remove-pilot')
        @remove_button.click (e) =>
            e.preventDefault()
            @row.slideUp 'fast', () =>
                @builder.removeShip this
                @backend_status?.fadeOut 'slow'
        @remove_button.hide()

        @copy_button = $ @row.find('button.copy-pilot')
        @copy_button.click (e) =>
            clone = @builder.ships[@builder.ships.length - 1]
            clone.copyFrom(this)
                
        @copy_button.hide()

        @checkPilotSelectorQueryModal()
        
        @points_destroyed_button_span = $ @row.find('.destroyed-type')

        @points_destroyed_button = $ @row.find('button.points-destroyed')
        @points_destroyed_button.click (e) =>
            if @destroystate == 1
                @destroystate = 2
                @points_destroyed_button_span.html '<i class="xwing-miniatures-font xwing-miniatures-font-crit"></i>'
            else if @destroystate == 2
                @destroystate = 0
                @points_destroyed_button_span.html '<i class="xwing-miniatures-font xwing-miniatures-font-title"></i>'
            else
                @destroystate = 1
                @points_destroyed_button_span.html '<i class="xwing-miniatures-font xwing-miniatures-font-hit"></i>'
            @builder.onPointsUpdated()
        @points_destroyed_button.hide()
    
    teardownUI: ->
        @row.text ''
        @row.remove()

    toString: ->
        if @pilot?
            "Pilot #{if @pilot.display_name then @pilot.display_name else @pilot.name} flying #{if @data.display_name then @data.display_name else @data.name}"
        else
            "Ship without pilot"

    toHTML: ->
        effective_stats = @effectiveStats()
        action_bar = @builder.formatActions(effective_stats.actions,"&nbsp;&nbsp;", @pilot.keyword ? [])

        attack_icon = @data.attack_icon ? 'xwing-miniatures-font-frontarc'

        engagementHTML = if (@pilot.engagement?) then $.trim """
            <span class="info-data info-skill">ENG #{@pilot.engagement}</span>
        """ else ''
            
        attackHTML = if (effective_stats.attack?) then $.trim """
            <i class="xwing-miniatures-font header-attack #{attack_icon}"></i>
            <span class="info-data info-attack">#{statAndEffectiveStat((@pilot.ship_override?.attack ? @data.attack), effective_stats, 'attack')}</span>
        """ else ''
        
        if effective_stats.attackbull?
            attackbullHTML = $.trim """<i class="xwing-miniatures-font header-attack xwing-miniatures-font-bullseyearc"></i>
            <span class="info-data info-attack">#{statAndEffectiveStat((@pilot.ship_override?.attackbull ? @data.attackbull), effective_stats, 'attackbull')}</span>""" 
        else
            attackbullHTML = ''
            
        if effective_stats.attackb?
            attackbHTML = $.trim """<i class="xwing-miniatures-font header-attack xwing-miniatures-font-reararc"></i>
            <span class="info-data info-attack">#{statAndEffectiveStat((@pilot.ship_override?.attackb ? @data.attackb), effective_stats, 'attackb')}</span>""" 
        else
            attackbHTML = ''

        if effective_stats.attackf?
            attackfHTML = $.trim """<i class="xwing-miniatures-font header-attack xwing-miniatures-font-fullfrontarc"></i>
            <span class="info-data info-attack">#{statAndEffectiveStat((@pilot.ship_override?.attackf ? @data.attackf), effective_stats, 'attackf')}</span>""" 
        else
            attackfHTML = ''
            
        if effective_stats.attackt?
            attacktHTML = $.trim """<i class="xwing-miniatures-font header-attack xwing-miniatures-font-singleturretarc"></i>
            <span class="info-data info-attack">#{statAndEffectiveStat((@pilot.ship_override?.attackt ? @data.attackt), effective_stats, 'attackt')}</span>""" 
        else
            attacktHTML = ''
            
        if effective_stats.attackl?
            attacklHTML = $.trim """<i class="xwing-miniatures-font header-attack xwing-miniatures-font-leftarc"></i>
            <span class="info-data info-attack">#{statAndEffectiveStat((@pilot.ship_override?.attackl ? @data.attackl), effective_stats, 'attackl')}</span>""" 
        else
            attacklHTML = ''
            
        if effective_stats.attackr?
            attackrHTML = $.trim """<i class="xwing-miniatures-font header-attack xwing-miniatures-font-rightarc"></i>
            <span class="info-data info-attack">#{statAndEffectiveStat((@pilot.ship_override?.attackr ? @data.attackr), effective_stats, 'attackr')}</span>""" 
        else
            attackrHTML = ''
            
        if effective_stats.attackdt?
            attackdtHTML = $.trim """<i class="xwing-miniatures-font header-attack xwing-miniatures-font-doubleturretarc"></i>
            <span class="info-data info-attack">#{statAndEffectiveStat((@pilot.ship_override?.attackdt ? @data.attackdt), effective_stats, 'attackdt')}</span>""" 
        else
            attackdtHTML = ''

        
        recurringicon = ''
        if @data.energyrecurr?
            count = 0
            while count < @data.energyrecurr
                recurringicon += '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>'
                ++count
        
        energyHTML = if (@pilot.ship_override?.energy? or @data.energy?) then $.trim """
            <i class="xwing-miniatures-font header-energy xwing-miniatures-font-energy"></i>
            <span class="info-data info-energy">#{statAndEffectiveStat((@pilot.ship_override?.energy ? @data.energy), effective_stats, 'energy')}#{recurringicon}</span>
        """ else ''
        
    
        forceHTML = if (@pilot.force?) then $.trim """
            <i class="xwing-miniatures-font header-force xwing-miniatures-font-forcecharge"></i>
            <span class="info-data info-force">#{statAndEffectiveStat((@pilot.ship_override?.force ? @pilot.force), effective_stats, 'force')}<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i></span>
        """ else ''

        if @pilot.charge?
            recurringicon = ''
            if @pilot.recurring?
                recurringicon = """<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>"""
            chargeHTML = $.trim """<i class="xwing-miniatures-font header-charge xwing-miniatures-font-charge"></i><span class="info-data info-charge">#{statAndEffectiveStat((@pilot.ship_override?.charge ? @pilot.charge), effective_stats, 'charge')}#{recurringicon}</span>"""
        else 
            chargeHTML = ''

        shieldRECUR = ''
        if @data.shieldrecurr?
            count = 0
            while count < @data.shieldrecurr
                shieldRECUR += """<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>"""
                ++count
            
        shieldIconHTML = ''
        if effective_stats.shields
            for _ in [effective_stats.shields..2] by -1
                shieldIconHTML += """<i class="xwing-miniatures-font header-shield xwing-miniatures-font-shield expanded-hull-or-shield"></i>"""
            shieldIconHTML += """<i class="xwing-miniatures-font header-shield xwing-miniatures-font-shield"></i>"""

        hullIconHTML = ''
        if effective_stats.hull
            for _ in [effective_stats.hull..2] by -1
                hullIconHTML += """<i class="xwing-miniatures-font header-hull xwing-miniatures-font-hull expanded-hull-or-shield"></i>"""
            hullIconHTML += """<i class="xwing-miniatures-font header-hull xwing-miniatures-font-hull"></i>"""

        html = $.trim """
            <div class="fancy-pilot-header">
                <div class="pilot-header-text">#{if @pilot.display_name then @pilot.display_name else @pilot.name} <i class="xwing-miniatures-ship xwing-miniatures-ship-#{@data.xws}"></i><span class="fancy-ship-type"> #{if @data.display_name then @data.display_name else @data.name}</span></div>
                <div class="mask">
                    <div class="outer-circle">
                        <div class="inner-circle pilot-points">#{if @quickbuildId != -1 then (if @primary then @getPoints() else '*') else @pilot.points}</div>
                    </div>
                </div>
            </div>
            <div class="fancy-pilot-stats">
                <div class="pilot-stats-content">
                    <span class="info-data info-skill">INI #{statAndEffectiveStat(@pilot.skill, effective_stats, 'skill')}</span>
                    #{engagementHTML}
                    #{attackbullHTML}
                    #{attackHTML}
                    #{attackbHTML}
                    #{attackfHTML}
                    #{attacktHTML}
                    #{attacklHTML}
                    #{attackrHTML}
                    #{attackdtHTML}
                    <i class="xwing-miniatures-font header-agility xwing-miniatures-font-agility"></i>
                    <span class="info-data info-agility">#{statAndEffectiveStat((@pilot.ship_override?.agility ? @data.agility), effective_stats, 'agility')}</span>                    
                    #{hullIconHTML}
                    <span class="info-data info-hull">#{statAndEffectiveStat((@pilot.ship_override?.hull ? @data.hull), effective_stats, 'hull')}</span>
                    #{shieldIconHTML}
                    <span class="info-data info-shields">#{statAndEffectiveStat((@pilot.ship_override?.shields ? @data.shields), effective_stats, 'shields')}#{shieldRECUR}</span>
                    #{energyHTML}
                    #{forceHTML}
                    #{chargeHTML}
                    <br />
                    #{action_bar}
                </div>
            </div>
        """
        
        #  Maneuver Dials have been moved at the bottom of the squad, rather than beeing added to each ship
        # dialHTML = @builder.getManeuverTableHTML(effective_stats.maneuvers, @data.maneuvers)
        # 
        # html += $.trim """
        #     <div class="fancy-dial">
        #         #{dialHTML}
        #     </div>
        #     """
        
        if @pilot.text
            html += $.trim """
                <div class="fancy-pilot-text">#{@pilot.text}</div>
            """

        slotted_upgrades = (upgrade for upgrade in @upgrades when upgrade.data?)

        if slotted_upgrades.length > 0
            html += $.trim """
                <div class="fancy-upgrade-container">
            """

            for upgrade in slotted_upgrades
                points = upgrade.getPoints()
                html += upgrade.toHTML points

            html += $.trim """
                </div>
            """
        
        HalfPoints = Math.ceil @getPoints() / 2
        
        Threshold = Math.ceil (effective_stats['hull'] + effective_stats['shields']) / 2
        
        html += $.trim """
            <div class="ship-points-total">
                <strong>Ship Total: #{@getPoints()}, Half Points: #{HalfPoints}, Threshold: #{Threshold}</strong> 
            </div>
        """

        """<div class="fancy-ship">#{html}</div>"""

    toTableRow: ->
        table_html = $.trim """
            <tr class="simple-pilot">
                <td class="name">#{if @pilot.display_name then @pilot.display_name else @pilot.name} &mdash; #{if @data.display_name then @data.display_name else @data.name}</td>
                <td class="points">#{if @quickbuildId != -1 then (if @primary then exportObj.quickbuildsById[@quickbuildId].threat else 0) else @pilot.points}</td>
            </tr>
        """

        slotted_upgrades = (upgrade for upgrade in @upgrades when upgrade.data?)
        if slotted_upgrades.length > 0
            for upgrade in slotted_upgrades
                points = upgrade.getPoints()
                table_html += upgrade.toTableRow points

        # if @getPoints() != @pilot.points
        table_html += """<tr class="simple-ship-total"><td colspan="2">Ship Total: #{@getPoints()}</td></tr>"""
        
        halfPoints = Math.ceil @getPoints() / 2        
        threshold = Math.ceil (@effectiveStats()['hull'] + @effectiveStats()['shields']) / 2

        table_html += """<tr class="simple-ship-half-points"><td colspan="2">Half Points: #{halfPoints} Threshold: #{threshold}</td></tr>"""

        table_html += '<tr><td>&nbsp;</td><td></td></tr>'
        table_html

    toSimpleCopy: ->
        simplecopy = """#{@pilot.name} (#{if @quickbuildId != -1 then (if @primary then exportObj.quickbuildsById[@quickbuildId].threat else 0) else @pilot.points})    \n"""
        slotted_upgrades = (upgrade for upgrade in @upgrades when upgrade.data?)
        if slotted_upgrades.length > 0
            simplecopy +="    "
            simplecopy_upgrades= []
            for upgrade in slotted_upgrades
                points = upgrade.getPoints()
                upgrade_simplecopy = upgrade.toSimpleCopy points
                simplecopy_upgrades.push upgrade_simplecopy if upgrade_simplecopy?
            simplecopy += simplecopy_upgrades.join "    "
            simplecopy += """    \n"""

        halfPoints = Math.ceil @getPoints() / 2        
        threshold = Math.ceil (@effectiveStats()['hull'] + @effectiveStats()['shields']) / 2

        simplecopy += """Ship total: #{@getPoints()}  Half Points: #{halfPoints}  Threshold: #{threshold}    \n    \n"""

        simplecopy
        
        
    toRedditText: ->
        reddit = """**#{@pilot.name} (#{if @quickbuildId != -1 then (if @primary then exportObj.quickbuildsById[@quickbuildId].threat else 0) else @pilot.points})**    \n"""
        slotted_upgrades = (upgrade for upgrade in @upgrades when upgrade.data?)
        if slotted_upgrades.length > 0
            reddit +="    "
            reddit_upgrades= []
            for upgrade in slotted_upgrades
                points = upgrade.getPoints()
                upgrade_reddit = upgrade.toRedditText points
                reddit_upgrades.push upgrade_reddit if upgrade_reddit?
            reddit += reddit_upgrades.join "    "
            reddit += """&nbsp;*Ship total: (#{@getPoints()})*    \n"""

        reddit

    toTTSText: ->
        tts = """#{exportObj.toTTS(@pilot.name)}"""
        slotted_upgrades = (upgrade for upgrade in @upgrades when upgrade.data?)
        if slotted_upgrades.length > 0
            for upgrade in slotted_upgrades
                upgrade_tts = upgrade.toTTSText()
                tts += (" + " + upgrade_tts) if upgrade_tts?
        tts += " / "

    toBBCode: ->
        bbcode = """[b]#{if @pilot.display_name then @pilot.display_name else @pilot.name} (#{if @quickbuildId != -1 then (if @primary then exportObj.quickbuildsById[@quickbuildId].threat else 0) else @pilot.points})[/b]"""

        slotted_upgrades = (upgrade for upgrade in @upgrades when upgrade.data?)
        if slotted_upgrades.length > 0
            bbcode +="\n"
            bbcode_upgrades= []
            for upgrade in slotted_upgrades
                points = upgrade.getPoints()
                upgrade_bbcode = upgrade.toBBCode points
                bbcode_upgrades.push upgrade_bbcode if upgrade_bbcode?
            bbcode += bbcode_upgrades.join "\n"

        bbcode

    toSimpleHTML: ->
        html = """<b>#{if @pilot.display_name then @pilot.display_name else @pilot.name} (#{if @quickbuildId != -1 then (if @primary then exportObj.quickbuildsById[@quickbuildId].threat else 0) else @pilot.points})</b><br />"""

        slotted_upgrades = (upgrade for upgrade in @upgrades when upgrade.data?)
        if slotted_upgrades.length > 0
            for upgrade in slotted_upgrades
                points = upgrade.getPoints()
                upgrade_html = upgrade.toSimpleHTML points
                html += upgrade_html if upgrade_html?

        html

    toSerialized: ->
        # PILOT_ID:UPGRADEID1,UPGRADEID2:CONFERREDADDONTYPE1.CONFERREDADDONID1,CONFERREDADDONTYPE2.CONFERREDADDONID2
        if @builder.isQuickbuild
            if (!@wingmates? || @wingmates.length == 0) then """#{@quickbuildId}X""" else """#{@quickbuildId}X#{@wingmates.length}"""
        else
            upgrades = """#{upgrade?.data?.id ? "" for upgrade, i in @upgrades}""".replace(/,/g, "W")
            [
                @pilot.id,
                upgrades,
            ].join 'X'


    fromSerialized: (version, serialized) ->
    # adds a ship from the given serialized data to the squad. 
    # returns true, if all upgrades have been added successfully, false otherwise
    # returning false does not necessary mean nothing has been added, but some stuff might have been dropped (e.g. 0-0-0 if vader is not yet in the squad)
        everythingadded = true
        switch version
        # version 1-3 are 1st edition x-wing only, so we may as well delete them. 
        # version 4 was the final version of 1st edition, and the first few weeks of 2nd edition. 
        # version 5 is the current version. It handles titles and mods as regular upgrades. 
            when 4, 5, 6
                # PILOT_ID:UPGRADEID1,UPGRADEID2:CONFERREDADDONTYPE1.CONFERREDADDONID1,CONFERREDADDONTYPE2.CONFERREDADDONID2
                # conferredaddons are upgrade slots added by e.g. titles 
                # version 5 is the same as version 4, but title and mod has been dropped (as they are treated as upgrades anyways). Thus, we may differ by length 
                if (serialized.split ':').length == 3
                    # version 5,6
                    [ pilot_id, upgrade_ids, conferredaddon_pairs ] = serialized.split ':'
                else 
                    # version 4
                    [ pilot_id, upgrade_ids, version_4_compatibility_placeholder_title, version_4_compatibility_placeholder_mod, conferredaddon_pairs ] = serialized.split ':'
                @setPilotById parseInt(pilot_id), true
                # make sure the pilot is valid 
                return false unless @validate

                deferred_ids = []
                for upgrade_id, i in upgrade_ids.split ','
                    upgrade_id = parseInt upgrade_id
                    continue if upgrade_id < 0 or isNaN(upgrade_id)
                    # Defer fat upgrades
                    if @upgrades[i].isOccupied() or @upgrades[i].dataById[upgrade_id]?.also_occupies_upgrades?
                        deferred_ids.push upgrade_id
                    else
                        @upgrades[i].setById upgrade_id
                        everythingadded &= @upgrades[i].lastSetValid

                for deferred_id in deferred_ids
                    deferred_id_added = false
                    for upgrade, i in @upgrades
                        if upgrade.isOccupied() or upgrade.slot != exportObj.upgradesById[deferred_id].slot
                            continue
                        upgrade.setById deferred_id
                        deferred_id_added = upgrade.lastSetValid
                        break
                    everythingadded &= deferred_id_added

                if conferredaddon_pairs?
                    conferredaddon_pairs = conferredaddon_pairs.split ','
                else
                    conferredaddon_pairs = []

                for upgrade in @upgrades
                    if upgrade?.data? and upgrade.conferredAddons.length > 0
                        upgrade_conferred_addon_pairs = conferredaddon_pairs.splice 0, upgrade.conferredAddons.length
                        for conferredaddon_pair, i in upgrade_conferred_addon_pairs
                            [ addon_type_serialized, addon_id ] = conferredaddon_pair.split '.'
                            addon_id = parseInt addon_id
                            addon_cls = SERIALIZATION_CODE_TO_CLASS[addon_type_serialized]
                            if not addon_cls
                                console.log("Something went wrong... could not serialize properly")
                                continue
                            conferred_addon = upgrade.conferredAddons[i]
                            if conferred_addon instanceof addon_cls
                                conferred_addon.setById addon_id
                                everythingadded &= conferred_addon.lastSetValid
                            else
                                throw new Error("Expected addon class #{addon_cls.constructor.name} for conferred addon at index #{i} but #{conferred_addon.constructor.name} is there")

            when 7, 8
                pilot_splitter = if version > 7 then 'X' else ':'
                upgrade_splitter = if version > 7 then 'W' else ','
                # version 7 is an further extension of version 6, allowing arbitrary order of upgrades. It currently ignores conferredaddons (upgrades in slots added by titles etc), probably we can drop the special case handling for them and include them into the usual upgrade list?
                [ pilot_id, upgrade_ids, conferredaddon_pairs ] = serialized.split pilot_splitter
                upgrade_ids = upgrade_ids.split upgrade_splitter
                # set the pilot
                @setPilotById parseInt(pilot_id), true
                # make sure the pilot is valid 
                return false unless @validate
                
                if !@builder.isQuickbuild
                    # iterate over upgrades to be added, and remove all that have been successfully added
                    for _ in [1 ... 3] # try adding each upgrade a few times, as the required slots might be added in by titles etc and are not yet available on the first try
                        for i in [upgrade_ids.length - 1 ... -1]
                            upgrade_id = upgrade_ids[i]
                            upgrade = exportObj.upgradesById[upgrade_id]
                            if not upgrade? 
                                upgrade_ids.splice(i,1) # Remove unknown or empty ID
                                if upgrade_id != ""
                                    console.log("Unknown upgrade id " + upgrade_id + " could not be added. Please report that error")
                                    everythingadded = false
                                continue
                            for upgrade_selection in @upgrades
                                if exportObj.slotsMatching(upgrade.slot, upgrade_selection.slot) and not upgrade_selection.isOccupied()
                                    upgrade_selection.setById upgrade_id
                                    if upgrade_selection.lastSetValid
                                        upgrade_ids.splice(i,1) # added successfully, remove from list
                                    break
                else 
                    # we are in quickbuild. Number of wingmates might be provided as upgrade ID of a quickbuild
                    if upgrade_ids.length > 0 && @wingmates.length > 0 # check if we are actually a wingleader
                        @setWingmates(upgrade_ids[0])
                everythingadded &= upgrade_ids.length == 0

                            

        @updateSelections()
        everythingadded

    effectiveStats: ->
        stats =
            attack: @pilot.ship_override?.attack ? @data.attack
            attackf: @pilot.ship_override?.attackf ? @data.attackf
            attackbull: @pilot.ship_override?.attackbull ? @data.attackbull
            attackb: @pilot.ship_override?.attackb ? @data.attackb
            attackt: @pilot.ship_override?.attackt ? @data.attackt
            attackl: @pilot.ship_override?.attackl ? @data.attackl
            attackr: @pilot.ship_override?.attackr ? @data.attackr
            attackdt: @pilot.ship_override?.attackdt ? @data.attackdt
            energy: @pilot.ship_override?.energy ? @data.energy
            agility: @pilot.ship_override?.agility ? @data.agility
            hull: @pilot.ship_override?.hull ? @data.hull
            shields: @pilot.ship_override?.shields ? @data.shields
            force: (@pilot.ship_override?.force ? @pilot.force) ? 0
            charge: @pilot.ship_override?.charge ? @pilot.charge
            actions: (@pilot.ship_override?.actions ? @data.actions).slice 0

        # need a deep copy of maneuvers array
        stats.maneuvers = []
        for s in [0 ... (@data.maneuvers ? []).length]
            stats.maneuvers[s] = @data.maneuvers[s].slice 0

        # Droid conversion of Focus to Calculate
        if @pilot.keyword? and ("Droid" in @pilot.keyword) and stats.actions?
            new_stats = []
            for statentry in stats.actions
                new_stats.push statentry.replace("Focus","Calculate")
            stats.actions = new_stats

        for upgrade in @upgrades
            upgrade.data.modifier_func(stats) if upgrade?.data?.modifier_func?
        @pilot.modifier_func(stats) if @pilot?.modifier_func?
        stats

    validate: ->
        # Remove addons that violate their validation functions (if any) one by one
        # until everything checks out
        # If there is no explicit validation_func, use restriction_func
        # Returns true, if nothing has been changed, and false otherwise

        # check if we are an empty selection, which is always valid
        if not @pilot?
            return true 
        unchanged = true
        max_checks = 32 # that's a lot of addons
        
        if @builder.isEpic #Command Epic adding
            if not ("Command" in @pilot.slots)
                addCommand = true
                for upgrade in @upgrades
                    if ("Command" == upgrade.slot) and (this == upgrade.ship)
                        addCommand = false
                if addCommand == true
                    @upgrades.push new exportObj.Upgrade
                        ship: this
                        container: @addon_container
                        slot: "Command"
        else if !@builder.isQuickbuild #cleanup Command upgrades
            for i in [@upgrades.length - 1 ... -1]
                upgrade = @upgrades[i]
                if upgrade.slot == "Command"
                    upgrade.destroy $.noop
                    @upgrades.splice i,1

        for i in [0...max_checks]
            valid = true
            pilot_func = @pilot?.validation_func ? @pilot?.restriction_func ? undefined
            if (pilot_func? and not pilot_func(this, @pilot)) or not (@builder.isItemAvailable(@pilot, true))
                # we go ahead and happily remove ourself. Of course, when calling a method like validate on an object, you have to expect that it will dissappear, right?
                @builder.removeShip this 
                return false # no need to check anything further, as we do not exist anymore 
            # everything is limited in X-Wing 2.0, so we need to check if any upgrade is equipped more than once
            equipped_upgrades = []
            for upgrade in @upgrades
                func = upgrade?.data?.validation_func ? undefined
                if upgrade?.data?.restrictions and (not func?)
                    func = @restriction_check(upgrade.data.restrictions, upgrade)
                # check if either a) validation func not met or b) upgrade already equipped (in 2.0 everything is limited) or c) upgrade is not available (e.g. not Hyperspace legal)
                # ignore those checks if this is a quickbuild squad, as quickbuild does whatever it wants to do...
                if ((func? and not func) or (upgrade?.data? and (upgrade.data in equipped_upgrades or not @builder.isItemAvailable(upgrade.data)))) and not @builder.isQuickbuild
                    #console.log "Invalid upgrade: #{upgrade?.data?.name}"
                    upgrade.setById null
                    valid = false
                    unchanged = false
                    break
                if upgrade?.data? and upgrade.data
                    equipped_upgrades.push(upgrade?.data)
            break if valid
        @updateSelections()
        unchanged

    checkUnreleasedContent: ->
        if @pilot? and not exportObj.isReleased @pilot
            #console.log "#{@pilot.name} is unreleased"
            return true

        for upgrade in @upgrades
            if upgrade?.data? and not exportObj.isReleased upgrade.data
                #console.log "#{upgrade.data.id} is unreleased"
                return true

        false

    hasAnotherUnoccupiedSlotLike: (upgrade_obj, upgradeslot) ->
        if upgrade_obj?.data?.restrictions?
            for r in upgrade_obj.data.restrictions
                if r[0] == "Slot"
                    extraslot = r[1]

        for upgrade in @upgrades
            continue if upgrade == upgrade_obj or upgrade.slot != upgradeslot
            if upgrade.isOccupied()
                if extraslot?
                    if extraslot == upgradeslot
                        return true
            else
                return true
        false

    restriction_check: (restrictions, upgrade_obj) ->
        effective_stats = @effectiveStats()
        for r in restrictions
            if r[0] == "orUnique"
                if @checkListForUnique(r[1].toLowerCase().replace(/[^0-9a-z]/gi, '').replace(/\s+/g, '-'))
                    return true
            switch r[0]
                when "Base"  
                    switch r[1]
                        when "Small"
                            if @data.medium? or @data.large? or @data.huge? then return false
                        when "Small or Medium"
                            if @data.large? or @data.huge? then return false
                        when "Medium" 
                            if not (@data.medium?) then return false
                        when "Medium or Large"
                            if not (@data.medium? or @data.large?) then return false
                        when "Large" 
                            if not (@data.large?) then return false
                        when "Huge" 
                            if not (@data.huge?) then return false
                when "Action"
                    if not ((r[1] in effective_stats.actions) or ("*#{r[1]}" in effective_stats.actions) or ("R-#{r[1]}" in effective_stats.actions)) then return false
                when "Keyword"
                    if not (@checkKeyword(r[1])) then return false
                when "Equipped"
                    if not ((@doesSlotExist(r[1]) and not @hasAnotherUnoccupiedSlotLike(upgrade_obj, r[1]))) then return false
                when "Slot"
                    if not @hasAnotherUnoccupiedSlotLike(upgrade_obj, r[1]) then return false
                when "AttackArc"
                    if not @data.attackb? then return false
                when "ShieldsGreaterThan"
                    if not (@data.shields > r[1]) then return false
                when "EnergyGreatterThan"
                    if not (effective_stats.energy > r[1]) then return false
                when "InitiativeGreaterThan"
                    if not (@pilot.skill > r[1]) then return false
                when "InitiativeLessThan"
                    if not (@pilot.skill < r[1]) then return false
                when "AgilityEquals"
                    if not (effective_stats.agility == r[1]) then return false
                when "notUnique"
                    if @pilot.unique? then return false
                when "Faction"
                    if @builder.faction != r[1] then return false
        return true

    doesSlotExist: (slot) ->
        for upgrade in @upgrades
            if slot == upgrade.slot
                return true
        false
    
    isSlotOccupied: (slot_name) ->
        for upgrade in @upgrades
            if exportObj.slotsMatching(upgrade.slot, slot_name)
                return true unless upgrade.isOccupied()
        false

    checkKeyword: (keyword) ->
        if @data.name?.includes(keyword)
            return true
        for words in @data.keyword ? []
            if words == keyword
                return true
        for words in @pilot.keyword ? []
            if words == keyword
                return true
        for upgrade in @upgrades
            for word in upgrade?.data?.keyword ? []
                if word == keyword
                    return true
        false

    checkListForUnique: (name) ->
        for t, things of @builder.uniques_in_use
            if t != 'Slot'
                return true if name in (thing.canonical_name.getXWSBaseName() for thing in things)
        false

    toXWS: ->
        xws =
            id: (@pilot.xws ? @pilot.canonical_name)
            name: (@pilot.xws ? @pilot.canonical_name) # name is no longer part of xws 2.0.0, and was replaced by id. However, we will add it here for some kind of backward compatibility. May be removed, as soon as everybody is using id. 
            points: @getPoints()
            #ship: @data.canonical_name
            ship: @data.xws.canonicalize()

        if @data.multisection
            xws.multisection = @data.multisection.slice 0

        upgrade_obj = {}

        for upgrade in @upgrades
            if upgrade?.data?
                upgrade.toXWS upgrade_obj

        if Object.keys(upgrade_obj).length > 0
            xws.upgrades = upgrade_obj

        xws

    getConditions: ->
        if Set?
            conditions = new Set()
            if @pilot?.applies_condition?
                if @pilot.applies_condition instanceof Array
                    for condition in @pilot.applies_condition
                        conditions.add(exportObj.conditionsByCanonicalName[condition])
                else
                    conditions.add(exportObj.conditionsByCanonicalName[@pilot.applies_condition])
            for upgrade in @upgrades
                if upgrade?.data?.applies_condition?
                    if upgrade.data.applies_condition instanceof Array
                        for condition in upgrade.data.applies_condition
                            conditions.add(exportObj.conditionsByCanonicalName[condition])
                    else
                        conditions.add(exportObj.conditionsByCanonicalName[upgrade.data.applies_condition])
            conditions
        else
            console.warn 'Set not supported in this JS implementation, not implementing conditions'
            []

class GenericAddon
    constructor: (args) ->
        # args
        @ship = args.ship
        @container = $ args.container

        # internal state
        @data = null
        @unadjusted_data = null
        @conferredAddons = []
        @serialization_code = 'X'
        @occupied_by = null
        @occupying = []
        @destroyed = false

        # Overridden by children
        @type = null
        @dataByName = null
        @dataById = null

        @adjustment_func = args.adjustment_func if args.adjustment_func?
        @filter_func = args.filter_func if args.filter_func?
        @placeholderMod_func = if args.placeholderMod_func? then args.placeholderMod_func else (x) => x

    destroy: (cb, args...) ->
        return cb(args) if @destroyed
        if @data?.unique?
            await @ship.builder.container.trigger 'xwing:releaseUnique', [ @data, @type, defer() ]
        if @data?.standardized?
            @removeStandardized()
        @destroyed = true
        @rescindAddons()
        @deoccupyOtherUpgrades()
        @selector.select2 'destroy'
        @selectorwrap.remove()
        cb args

    setupSelector: (args) ->
        @selectorwrap = $ document.createElement 'div'
        @selectorwrap.addClass 'form-group d-flex upgrade-box'
        
        @selector = $ document.createElement 'INPUT'
        @selector.attr 'type', 'hidden'

        @selectorwrap.append @selector
        @selectorwrap.append $.trim '''
            <div class="input-group-addon">
                <button class="btn btn-secondary d-block d-md-none upgrade-query-modal"><i class="fas fa-question"></i></button>
            </div>
        '''
        @upgrade_query_modal = $ @selectorwrap.find('button.upgrade-query-modal')
        
        @container.append @selectorwrap
        args.minimumResultsForSearch = -1 if $.isMobile()
        args.formatResultCssClass = (obj) =>
            if @ship.builder.collection?
                not_in_collection = false
                if obj.id == @data?.id
                    # Currently selected card; mark as not in collection if it's neither
                    # on the shelf nor on the table
                    unless (@ship.builder.collection.checkShelf(@type.toLowerCase(), obj.name) or @ship.builder.collection.checkTable(@type.toLowerCase(), obj.name)) 
                        not_in_collection = true
                else
                    # Not currently selected; check shelf only
                    not_in_collection = not @ship.builder.collection.checkShelf(@type.toLowerCase(), obj.name)
                if not_in_collection then 'select2-result-not-in-collection' else ''
            else
                ''
        
        args.formatSelection = (obj, container) =>
            icon = switch @type
                when 'Upgrade'
                    @slot.toLowerCase().replace(/[^0-9a-z]/gi, '')
                else
                    @type.toLowerCase().replace(/[^0-9a-z]/gi, '')
                    
            icon = icon.replace("configuration", "config")
                        .replace("force", "forcepower")
                
            # Append directly so we don't have to disable markup escaping
            $(container).append """<i class="xwing-miniatures-font xwing-miniatures-font-#{icon}"></i> #{obj.text}"""
            # If you return a string, Select2 will render it
            undefined

        @selector.select2 args
        
        @upgrade_query_modal.click (e) =>
            if @data
                console.log "#{@data.name}"
                @ship.builder.showTooltip 'Addon', @data, ({addon_type: @type} if @data?) , @ship.builder.mobile_tooltip_modal, true
                @ship.builder.mobile_tooltip_modal.modal 'show'

        @selector.on 'select2-focus', (e) =>
            if $.isMobile()
                $('.select2-container .select2-focusser').remove()
                $('.select2-search input').prop('focus',false).removeClass('select2-focused')
        @selector.on 'change', (e) =>
            @setById @selector.select2('val')
            @ship.builder.current_squad.dirty = true
            @ship.builder.container.trigger 'xwing-backend:squadDirtinessChanged'
            @ship.builder.backend_status.fadeOut 'slow'
        @selector.data('select2').results.on 'mousemove-filtered', (e) =>
            select2_data = $(e.target).closest('.select2-result').data 'select2-data'
            @ship.builder.showTooltip 'Addon', @dataById[select2_data.id], {addon_type: @type} if select2_data?.id?
        @selector.data('select2').container.on 'mouseover', (e) =>
            @ship.builder.showTooltip 'Addon', @data, {addon_type: @type} if @data?
        @selector.data('select2').container.on 'touchstart', (e) =>
            @ship.builder.showTooltip 'Addon', @data, {addon_type: @type} if @data?

    setById: (id) ->
        @setData @dataById[parseInt id]

    setByName: (name) ->
        @setData @dataByName[$.trim name]

    setData: (new_data) ->
        if new_data?.id != @data?.id
            if @data?.unique? or @data?.solitary?
                await @ship.builder.container.trigger 'xwing:releaseUnique', [ @unadjusted_data, @type, defer() ]
            if @data?.standardized?
                @removeStandardized()
            @rescindAddons()
            @deoccupyOtherUpgrades()
            if new_data?.unique? or new_data?.solitary?
                try
                    await @ship.builder.container.trigger 'xwing:claimUnique', [ new_data, @type, defer() ]
                catch alreadyClaimed
                    @ship.builder.container.trigger 'xwing:pointsUpdated'
                    @lastSetValid = false
                    return
            # Need to make a copy of the data, but that means I can't just check equality
            @data = @unadjusted_data = new_data

            if @data?
                if @data.superseded_by_id
                    return @setById @data.superseded_by_id
                if @adjustment_func?
                    @data = @adjustment_func(@data)
                @unequipOtherUpgrades()
                @occupyOtherUpgrades()
                @conferAddons()
                if @data.standardized?
                    @addToStandardizedList()
            else
                @deoccupyOtherUpgrades()

            # this will remove not allowed upgrades (is also done on pointsUpdated). We do it explicitly so we can tell if the setData was successfull
            @lastSetValid = @ship.validate()
            @ship.builder.container.trigger 'xwing:pointsUpdated'

    addToStandardizedList: ->
        # check first if standard combo exists and return if it does
        idx = @ship.builder.standard_list['Ship'].indexOf @ship.data.name
        if idx > -1
            if @ship.builder.standard_list['Upgrade'][idx]?.name == @data.name
                return
        @ship.builder.standard_list['Upgrade'].push @data
        @ship.builder.standard_list['Ship'].push @ship.data.name

    removeStandardized: ->
        # removes the ship upgrade combo from the stanard list array
        idx = @ship.builder.standard_list['Ship'].indexOf @ship.data.name
        if idx > -1
            if @ship.builder.standard_list['Upgrade'][idx]?.name == @data.name
                @ship.builder.standard_list['Upgrade'].splice idx,1 
                @ship.builder.standard_list['Ship'].splice idx,1
                
                # now remove all upgrades of the same name
                nameToRemove = @data.name
                for ship in @ship.builder.ships
                    if ship.data?.name == @ship.data.name
                        for upgrade in ship.upgrades
                            if upgrade.data?.name == nameToRemove
                                upgrade.data = null

    conferAddons: ->
        if @data.confersAddons? and !@ship.builder.isQuickbuild and @data.confersAddons.length > 0
            for addon in @data.confersAddons
                cls = addon.type
                args =
                    ship: @ship
                    container: @container
                args.slot = addon.slot if addon.slot?
                args.adjustment_func = addon.adjustment_func if addon.adjustment_func?
                args.filter_func = addon.filter_func if addon.filter_func?
                args.auto_equip = addon.auto_equip if addon.auto_equip?
                args.placeholderMod_func = addon.placeholderMod_func if addon.placeholderMod_func?
                addon = new cls args
                if addon instanceof exportObj.Upgrade
                    @ship.upgrades.push addon
                else
                    throw new Error("Unexpected addon type for addon #{addon}")
                @conferredAddons.push addon
                
    rescindAddons: ->
        await
            for addon in @conferredAddons
                addon.destroy defer()
        for addon in @conferredAddons
            if addon instanceof exportObj.Upgrade
                @ship.upgrades.removeItem addon
            else
                throw new Error("Unexpected addon type for addon #{addon}")
        @conferredAddons = []

    getPoints: (data = @data, ship = @ship) ->
        # Moar special case jankiness
        if data?.variableagility?
            data?.pointsarray[ship.data.agility]
        else if data?.variablebase?
            if ship?.data.medium?
                data?.pointsarray[1]
            else if ship?.data.large?
                data?.pointsarray[2]
            else if ship?.data.huge?
                data?.pointsarray[3]
            else
                data?.pointsarray[0]
        else if data?.variableinit?
            data?.pointsarray[ship.pilot.skill]
        else
            data?.points ? 0
            
    updateSelection: (points) ->
        if @data?
            @selector.select2 'data',
            id: @data.id
            text: "#{if @data.display_name then @data.display_name else @data.name} (#{points}#{if @data.pointsarray then '*' else ''})"
        else
            @selector.select2 'data', null

    toString: ->
        if @data?
            "#{if @data.display_name then @data.display_name else @data.name} (#{@getPoints()})"
        else
            "No #{@type}"

    toHTML: (points) ->
        if @data?
            if @data.slot? and @data.slot == "HardpointShip"
                upgrade_slot_font = "hardpoint"
            else
                upgrade_slot_font = (@data.slot ? @type).toLowerCase().replace(/[^0-9a-z]/gi, '')

            match_array = @data.text?match(/(<span.*<\/span>)<br \/><br \/>(.*)/)

            if match_array
                restriction_html = '<div class="card-restriction-container">' + match_array[1] + '</div>'
                text_str = match_array[2]
            else
                restriction_html = ''
                text_str = @data.text

            attackHTML = ""
            if @data.range?
                attackrangebonus = if (@data.rangebonus?) then """<span class="upgrade-attack-rangebonus"><i class="xwing-miniatures-font xwing-miniatures-font-rangebonusindicator"></i></span>""" else ''
                attackStats = $.trim """
                        <span class="upgrade-attack-range">#{@data.range}</span>
                        #{attackrangebonus}
                """
                attackIcon = if (@data.attack?) then $.trim """
                        <span class="info-data info-attack">#{@data.attack}</span>
                        <i class="xwing-miniatures-font xwing-miniatures-font-frontarc"></i>
                """ else if (@data.attackt?) then $.trim """
                        <span class="info-data info-attack">#{@data.attackt}</span>
                        <i class="xwing-miniatures-font xwing-miniatures-font-singleturretarc"></i>
                """ else if (@data.attackdt?) then $.trim """
                        <span class="info-data info-attack">#{@data.attackdt}</span>
                        <i class="xwing-miniatures-font xwing-miniatures-font-doubleturretarc"></i>
                """ else if (@data.attackl?) then $.trim """
                        <span class="info-data info-attack">#{@data.attackl}</span>
                        <i class="xwing-miniatures-font xwing-miniatures-font-leftarc"></i>
                """ else if (@data.attackr?) then $.trim """
                        <span class="info-data info-attack">#{@data.attackr}</span>
                        <i class="xwing-miniatures-font xwing-miniatures-font-rightarc"></i>
                """ else if (@data.attackbull?) then $.trim """
                        <span class="info-data info-attack">#{@data.attackbull}</span>
                        <i class="xwing-miniatures-font xwing-miniatures-font-bullseyearc"></i>
                """ else ''
                attackHTML = $.trim """
                    <div class="upgrade-attack">
                        #{attackStats}
                        #{attackIcon}
                    </div>
                """

            if (@data.charge?)
                if  (@data.recurring?)
                    chargeHTML = $.trim """
                        <div class="upgrade-charge">
                            <span class="info-data info-charge">#{@data.charge}</span>
                            <i class="xwing-miniatures-font xwing-miniatures-font-charge"></i><i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>
                        </div>
                        """
                else
                    chargeHTML = $.trim """
                        <div class="upgrade-charge">
                            <span class="info-data info-charge">#{@data.charge}</span>
                            <i class="xwing-miniatures-font xwing-miniatures-font-charge"></i>
                        </div>
                        """
            else chargeHTML = $.trim ''

            if (@data.force?)
                forceHTML = $.trim """
                    <div class="upgrade-force">
                        <span class="info-data info-force">#{@data.force}</span>
                        <i class="xwing-miniatures-font xwing-miniatures-font-forcecharge"></i><i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>
                    </div>
                    """
            else forceHTML = $.trim ''
            
            $.trim """
                <div class="upgrade-container">
                    <div class="upgrade-stats">
                        <div class="upgrade-name"><i class="xwing-miniatures-font xwing-miniatures-font-#{upgrade_slot_font}"></i>#{if @data.display_name then @data.display_name else @data.name}</div>
                        <div class="mask">
                            <div class="outer-circle">
                                <div class="inner-circle upgrade-points">#{points}</div>
                            </div>
                        </div>
                        #{restriction_html}
                    </div>
                    #{attackHTML}
                    #{chargeHTML}
                    #{forceHTML}
                    <div class="upgrade-text">#{text_str}</div>
                    <div style="clear: both;"></div>
                </div>
            """
        else
            ''

    toTableRow: (points) ->
        if @data?
            $.trim """
                <tr class="simple-addon">
                    <td class="name">#{if @data.display_name then @data.display_name else @data.name}</td>
                    <td class="points">#{points}</td>
                </tr>
            """
        else
            ''

    toSimpleCopy: (points) ->
        if @data?
            """#{@data.name} (#{points})    \n"""
        else
            null
            
    toRedditText: (points) ->
        if @data?
            """*&nbsp;#{@data.name} (#{points})*    \n"""
        else
            null

    toTTSText: () ->
        if @data?
            """#{exportObj.toTTS(@data.name)}"""
        else
            null

    toBBCode: (points) ->
        if @data?
            """[i]#{if @data.display_name then @data.display_name else @data.name} (#{points})[/i]"""
        else
            null

    toSimpleHTML: (points) ->
        if @data?
            """<i>#{if @data.display_name then @data.display_name else @data.name} (#{points})</i><br />"""
        else
            ''

    toSerialized: ->
        """#{@serialization_code}.#{@data?.id ? -1}"""

    unequipOtherUpgrades: ->
        for slot in @data?.unequips_upgrades ? []
            for upgrade in @ship.upgrades
                continue if upgrade.slot != slot or upgrade == this or not upgrade.isOccupied()
                upgrade.setData null
                break

    isOccupied: ->
        @data? or @occupied_by?

    occupyOtherUpgrades: ->
        for slot in @data?.also_occupies_upgrades ? []
            for upgrade in @ship.upgrades
                continue if upgrade.slot != slot or upgrade == this or upgrade.isOccupied()
                @occupy upgrade
                break

    deoccupyOtherUpgrades: ->
        for upgrade in @occupying
            @deoccupy upgrade

    occupy: (upgrade) ->
        upgrade.occupied_by = this
        upgrade.selector.select2 'enable', false
        @occupying.push upgrade

    deoccupy: (upgrade) ->
        upgrade.occupied_by = null
        upgrade.selector.select2 'enable', true

    occupiesAnUpgradeSlot: (upgradeslot) ->
        for upgrade in @ship.upgrades
            continue if upgrade.slot != upgradeslot or upgrade == this or upgrade.data?
            if upgrade.occupied_by? and upgrade.occupied_by == this
                return true
        false

    toXWS: (upgrade_dict) ->
        (upgrade_dict[exportObj.toXWSUpgrade[@data.slot] ? @data.slot.canonicalize()] ?= []).push (@data.xws ? @data.canonical_name)

class exportObj.Upgrade extends GenericAddon
    constructor: (args) ->
        # args
        super args
        @slot = args.slot
        @type = 'Upgrade'
        @dataById = exportObj.upgradesById
        @dataByName = exportObj.upgrades
        @serialization_code = 'U'

        @setupSelector()

    setupSelector: ->
        super
            width: '100%'
            placeholder: @placeholderMod_func(exportObj.translate @ship.builder.language, 'ui', 'upgradePlaceholder', @slot)
            allowClear: true
            query: (query) =>
                data = {results: []}
                data.results = @ship.builder.getAvailableUpgradesIncluding(@slot, @data, @ship, this, query.term, @filter_func)
                query.callback(data)

class exportObj.RestrictedUpgrade extends exportObj.Upgrade
    constructor: (args) ->
        @filter_func = args.filter_func
        super args
        @serialization_code = 'u'
        if args.auto_equip?
            @setById args.auto_equip

class exportObj.QuickbuildUpgrade extends GenericAddon
    constructor: (args) ->
        super args
        @slot = args.slot
        @type = 'Upgrade'
        @dataById = exportObj.upgradesById
        @dataByName = exportObj.upgrades
        @serialization_code = 'U'
        @upgrade = args.upgrade
        @setupSelector()

    setupSelector: ->
        super
            width: '100%'
            allowClear: false
            query: (query) =>
                data = {
                    results: [{
                            id: @upgrade.id
                            text: if @upgrade.display_name then @upgrade.display_name else @upgrade.name
                            points: 0
                            name: @upgrade.name
                            display_name: @upgrade.display_name
                        }]
                }
                query.callback(data)

    getPoints: (args) ->
        0
            
    updateSelection: (args) ->
        if @data?
            @selector.select2 'data',
            id: @data.id
            text: "#{if @data.display_name then @data.display_name else @data.name}"
        else
            @selector.select2 'data', null
            
        

SERIALIZATION_CODE_TO_CLASS =
    'U': exportObj.Upgrade
    'u': exportObj.RestrictedUpgrade
