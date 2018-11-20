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
        txt.replace(/\(.*\)/g,"").replace("“",'"').replace("”",'"')

    

$.isMobile = ->
    navigator.userAgent.match /(iPhone|iPod|iPad|Android)/i

$.randomInt = (n) ->
    Math.floor(Math.random() * n)

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
        """#{base_stat}#{if effective_stats[key] != base_stat then " (#{effective_stats[key]})" else ""}"""
    else
        """0 (#{effective_stats[key]})"""

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
        @suppress_automatic_new_ship = false
        @tooltip_currently_displaying = null
        @randomizer_options =
            sources: null
            points: 200
            bid_goal: 5
            ships_or_upgrades: 3
        @total_points = 0
        @isCustom = false
        @isSecondEdition = false
        @maxSmallShipsOfOneType = null
        @maxLargeShipsOfOneType = null

        @backend = null
        @current_squad = {}
        @language = 'English'

        @collection = null

        @current_obstacles = []

        @setupUI()
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
            faction: @faction

        if @total_points > 0
            if squad_name == default_squad_name
                @current_squad.name = 'Unsaved Squadron'
            @current_squad.dirty = true
        @container.trigger 'xwing-backend:squadNameChanged'
        @container.trigger 'xwing-backend:squadDirtinessChanged'

    newSquadFromScratch: ->
        @squad_name_input.val 'New Squadron'
        @removeAllShips()
        @addShip()
        @current_obstacles = []
        @resetCurrentSquad()
        @notes.val ''

    setupUI: ->
        DEFAULT_RANDOMIZER_POINTS = 200
        DEFAULT_RANDOMIZER_TIMEOUT_SEC = 4
        DEFAULT_RANDOMIZER_BID_GOAL = 5
        DEFAULT_RANDOMIZER_SHIPS_OR_UPGRADES = 3

        @status_container = $ document.createElement 'DIV'
        @status_container.addClass 'container-fluid'
        @status_container.append $.trim '''
            <div class="row-fluid">
                <div class="span3 squad-name-container">
                    <div class="display-name">
                        <span class="squad-name"></span>
                        <i class="fa fa-pencil"></i>
                    </div>
                    <div class="input-append">
                        <input type="text" maxlength="64" placeholder="Name your squad..." />
                        <button class="btn save"><i class="fa fa-pencil-square-o"></i></button>
                    </div>
                </div>
                <div class="span4 points-display-container">
                    Points: <span class="total-points">0</span> / <input type="number" class="desired-points" value="100">
                    <select class="game-type-selector">
                        <option value="standard">Extended</option>
                        <option value="second_edition">Second Edition</option>
                        <option value="custom">Custom</option>
                    </select>
                    <span class="points-remaining-container">(<span class="points-remaining"></span>&nbsp;left)</span>
                    <span class="content-warning unreleased-content-used hidden"><br /><i class="fa fa-exclamation-circle"></i>&nbsp;<span class="translated"></span></span>
                    <span class="content-warning collection-invalid hidden"><br /><i class="fa fa-exclamation-circle"></i>&nbsp;<span class="translated"></span></span>
                </div>
                <div class="span5 pull-right button-container">
                    <div class="btn-group pull-right">

                        <button class="btn btn-primary view-as-text"><span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Print/View as </span>Text</button>
                        <!-- <button class="btn btn-primary print-list hidden-phone hidden-tablet"><i class="fa fa-print"></i>&nbsp;Print</button> -->
                        <a class="btn btn-primary hidden collection"><i class="fa fa-folder-open hidden-phone hidden-tablet"></i>&nbsp;Your Collection</a>
                        
                        <button class="btn btn-primary randomize" ><i class="fa fa-random hidden-phone hidden-tablet"></i>&nbsp;Random!</button>
                        <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="randomize-options">Randomizer Options</a></li>
                        </ul>
                        

                    </div>
                </div>
            </div>

            <div class="row-fluid">
                <div class="span12">
                    <button class="show-authenticated btn btn-primary save-list"><i class="fa fa-floppy-o"></i>&nbsp;Save</button>
                    <button class="show-authenticated btn btn-primary save-list-as"><i class="fa fa-files-o"></i>&nbsp;Save As...</button>
                    <button class="show-authenticated btn btn-primary delete-list disabled"><i class="fa fa-trash-o"></i>&nbsp;Delete</button>
                    <button class="show-authenticated btn btn-primary backend-list-my-squads show-authenticated">Load Squad</button>
                    <button class="btn btn-danger clear-squad">New Squad</button>
                    <span class="show-authenticated backend-status"></span>
                </div>
            </div>
        '''
        @container.append @status_container

        @list_modal = $ document.createElement 'DIV'
        @list_modal.addClass 'modal hide fade text-list-modal'
        @container.append @list_modal
        @list_modal.append $.trim """
            <div class="modal-header">
                <button type="button" class="close hidden-print" data-dismiss="modal" aria-hidden="true">&times;</button>

                <div class="hidden-phone hidden-print">
                    <h3><span class="squad-name"></span> (<span class="total-points"></span>)<h3>
                </div>

                <div class="visible-phone hidden-print">
                    <h4><span class="squad-name"></span> (<span class="total-points"></span>)<h4>
                </div>

                <div class="visible-print">
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

            </div>
            <div class="modal-body">
                <div class="fancy-list hidden-phone"></div>
                <div class="simple-list"></div>
                <div class="reddit-list">
                    <p>Copy the below and paste it into your reddit post.</p>
                    <textarea></textarea><button class="btn btn-copy">Copy</button>
                </div>
                <div class="tts-list">
                    <p>Copy the below and paste it into the Tabletop Simulator.</p>
                    <textarea></textarea><button class="btn btn-copy">Copy</button>
                </div>
                <div class="bbcode-list">
                    <p>Copy the BBCode below and paste it into your forum post.</p>
                    <textarea></textarea><button class="btn btn-copy">Copy</button>
                </div>
                <div class="html-list">
                    <textarea></textarea><button class="btn btn-copy">Copy</button>
                </div>
            </div>
            <div class="modal-footer hidden-print">
                <label class="vertical-space-checkbox hidden-phone">
                    Add space for damage/upgrade cards when printing <input type="checkbox" class="toggle-vertical-space" />
                </label>
                <label class="maneuver-print-checkbox hidden-phone">
                    Include Maneuvers Chart <input type="checkbox" class="toggle-maneuver-print" checked="checked" />
                </label>
                <label class="expanded-shield-hull-print-checkbox hidden-phone">
                    Expand Shield and Hull <input type="checkbox" class="toggle-expanded-shield-hull-print" />
                </label>
                <label class="color-print-checkbox hidden-phone">
                    Print color <input type="checkbox" class="toggle-color-print" checked="checked" />
                </label>
                <label class="qrcode-checkbox hidden-phone">
                    Include QR codes <input type="checkbox" class="toggle-juggler-qrcode" checked="checked" />
                </label>
                <label class="obstacles-checkbox hidden-phone">
                    Include obstacle/damage deck choices <input type="checkbox" class="toggle-obstacles" />
                </label>
                <div class="btn-group list-display-mode">
                    <button class="btn select-simple-view">Simple</button>
                    <button class="btn select-fancy-view hidden-phone">Fancy</button>
                    <button class="btn select-reddit-view">Reddit</button>
                    <button class="btn select-tts-view">TTS</button>
                    <button class="btn select-bbcode-view">BBCode</button>
                    <button class="btn select-html-view">HTML</button>
                </div>
                <button class="btn print-list hidden-phone"><i class="fa fa-print"></i>&nbsp;Print</button>
                <button class="btn close-print-dialog" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        """
        @fancy_container = $ @list_modal.find('div.modal-body .fancy-list')
        @fancy_total_points_container = $ @list_modal.find('div.modal-header .total-points')
        @simple_container = $ @list_modal.find('div.modal-body .simple-list')
        @reddit_container = $ @list_modal.find('div.modal-body .reddit-list')
        @reddit_textarea = $ @reddit_container.find('textarea')
        @reddit_textarea.attr 'readonly', 'readonly'
        @tts_container = $ @list_modal.find('div.modal-body .tts-list')
        @tts_textarea = $ @tts_container.find('textarea')
        @tts_textarea.attr 'readonly', 'readonly'
        @bbcode_container = $ @list_modal.find('div.modal-body .bbcode-list')
        @bbcode_textarea = $ @bbcode_container.find('textarea')
        @bbcode_textarea.attr 'readonly', 'readonly'
        @htmlview_container = $ @list_modal.find('div.modal-body .html-list')
        @html_textarea = $ @htmlview_container.find('textarea')
        @html_textarea.attr 'readonly', 'readonly'
        @toggle_vertical_space_container = $ @list_modal.find('.vertical-space-checkbox')
        @toggle_color_print_container = $ @list_modal.find('.color-print-checkbox')
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
                @reddit_container.hide()
                @tts_container.hide()
                @bbcode_container.hide()
                @htmlview_container.hide()
                @toggle_vertical_space_container.hide()
                @toggle_color_print_container.hide()
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
                @reddit_container.hide()
                @tts_container.hide()
                @bbcode_container.hide()
                @htmlview_container.hide()
                @toggle_vertical_space_container.show()
                @toggle_color_print_container.show()
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
                @bbcode_container.hide()
                @tts_container.hide()
                @htmlview_container.hide()
                @simple_container.hide()
                @fancy_container.hide()
                @reddit_textarea.select()
                @reddit_textarea.focus()
                @toggle_vertical_space_container.hide()
                @toggle_color_print_container.hide()
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
                @simple_container.hide()
                @reddit_container.hide()
                @fancy_container.hide()
                @tts_textarea.select()
                @tts_textarea.focus()
                @toggle_vertical_space_container.hide()
                @toggle_color_print_container.hide()
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
                @reddit_container.hide()
                @tts_container.hide()
                @htmlview_container.hide()
                @simple_container.hide()
                @fancy_container.hide()
                @bbcode_textarea.select()
                @bbcode_textarea.focus()
                @toggle_vertical_space_container.hide()
                @toggle_color_print_container.hide()
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
                @tts_container.hide()
                @bbcode_container.hide()
                @htmlview_container.show()
                @simple_container.hide()
                @fancy_container.hide()
                @html_textarea.select()
                @html_textarea.focus()
                @toggle_vertical_space_container.hide()
                @toggle_color_print_container.hide()
                @toggle_maneuver_dial_container.hide()
                @toggle_expanded_shield_hull_container.hide()
                @toggle_qrcode_container.hide()
                @toggle_obstacle_container.hide()
                @btn_print_list.disabled = true;

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
        @game_type_selector.change (e) =>
            @onGameTypeChanged @game_type_selector.val()
        @desired_points_input = $ @points_container.find('.desired-points')
        @desired_points_input.change (e) =>
            @game_type_selector.val 'custom'
            @onGameTypeChanged 'custom'
        @points_remaining_span = $ @points_container.find('.points-remaining')
        @points_remaining_container = $ @points_container.find('.points-remaining-container')
        @unreleased_content_used_container = $ @points_container.find('.unreleased-content-used')
        @collection_invalid_container = $ @points_container.find('.collection-invalid')
        @view_list_button = $ @status_container.find('div.button-container button.view-as-text')
        @randomize_button = $ @status_container.find('div.button-container button.randomize')
        @customize_randomizer = $ @status_container.find('div.button-container a.randomize-options')
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
        @randomizer_options_modal.addClass 'modal hide fade'
        $('body').append @randomizer_options_modal
        @randomizer_options_modal.append $.trim """
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3>Random Squad Builder Options</h3>
            </div>
            <div class="modal-body">
                <form>
                    <label>
                        Desired Points
                        <input type="number" class="randomizer-points" value="#{DEFAULT_RANDOMIZER_POINTS}" placeholder="#{DEFAULT_RANDOMIZER_POINTS}" />
                    </label>
                    <label>
                        Left bid to stop randomizing
                        <input type="number" class="randomizer-bid-goal" value="#{DEFAULT_RANDOMIZER_BID_GOAL}" placeholder="#{DEFAULT_RANDOMIZER_BID_GOAL}" />
                    </label>
                    <label>
                        More upgrades
                        <input type="range" min="0" max="10" class="randomizer-ships-or-upgrades" value="#{DEFAULT_RANDOMIZER_SHIPS_OR_UPGRADES}" placeholder="#{DEFAULT_RANDOMIZER_SHIPS_OR_UPGRADES}" />
                        Less upgrades
                    </label>
                    <label>
                        Sets and Expansions (default all)
                        <select class="randomizer-sources" multiple="1" data-placeholder="Use all sets and expansions">
                        </select>
                    </label>
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
        """
        @randomizer_source_selector = $ @randomizer_options_modal.find('select.randomizer-sources')
        for expansion in exportObj.expansions
            opt = $ document.createElement('OPTION')
            opt.text expansion
            @randomizer_source_selector.append opt
        @randomizer_source_selector.select2
            width: "100%"
            minimumResultsForSearch: if $.isMobile() then -1 else 0

        @randomize_button.click (e) =>
            e.preventDefault()
            if @current_squad.dirty and @backend?
                @backend.warnUnsaved this, () =>
                    @randomize_button.click()
            else
                points = parseInt $(@randomizer_options_modal.find('.randomizer-points')).val()
                points = DEFAULT_RANDOMIZER_POINTS if (isNaN(points) or points <= 0)
                bid_goal = parseInt $(@randomizer_options_modal.find('.randomizer-bid-goal')).val()
                bid_goal = DEFAULT_RANDOMIZER_BID_GOAL if (isNaN(bid_goal) or bid_goal < 0)
                ships_or_upgrades = parseInt $(@randomizer_options_modal.find('.randomizer-ships-or-upgrades')).val()
                ships_or_upgrades = DEFAULT_RANDOMIZER_SHIPS_OR_UPGRADES if (isNaN(ships_or_upgrades) or ships_or_upgrades < 0)
                timeout_sec = parseInt $(@randomizer_options_modal.find('.randomizer-timeout')).val()
                timeout_sec = DEFAULT_RANDOMIZER_TIMEOUT_SEC if (isNaN(timeout_sec) or timeout_sec <= 0)
                #console.log "points=#{points}, sources=#{@randomizer_source_selector.val()}, timeout=#{timeout_sec}"
                @randomSquad(points, @randomizer_source_selector.val(), timeout_sec * 1000, bid_goal, ships_or_upgrades)

        @randomizer_options_modal.find('button.do-randomize').click (e) =>
            e.preventDefault()
            @randomizer_options_modal.modal('hide')
            @randomize_button.click()

        @customize_randomizer.click (e) =>
            e.preventDefault()
            @randomizer_options_modal.modal()

        @choose_obstacles_modal = $ document.createElement 'DIV'
        @choose_obstacles_modal.addClass 'modal hide fade choose-obstacles-modal'
        @container.append @choose_obstacles_modal
        @choose_obstacles_modal.append $.trim """
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
                    </select>
                </div>
                <div class="obstacle-image-container" style="display:none;">
                    <img class="obstacle-image" src="images/core2asteroid0.png" />
                </div>
            </div>
            <div class="modal-footer hidden-print">
                <button class="btn close-print-dialog" data-dismiss="modal" aria-hidden="true">Close</button>
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
        #@backend_list_all_squads_button = $ @container.find('button.backend-list-all-squads')
        #@backend_list_all_squads_button.click (e) =>
        #    e.preventDefault()
        #    if @backend?
        #        @backend.list this, true
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
                @backend_status.html $.trim """
                    <i class="fa fa-refresh fa-spin"></i>&nbsp;Saving squad...
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
            <div class="row-fluid">
                <div class="span9 ship-container">
                    <label class="notes-container show-authenticated">
                        <span>Squad Notes:</span>
                        <br />
                        <textarea class="squad-notes"></textarea>
                    </label>
                    <span class="obstacles-container">
                        <button class="btn btn-primary choose-obstacles">Choose Obstacles</button>
                    </span>
                 </div>
               <div class="span3 info-container" id="info-container" />
            </div>
        """

        @ship_container = $ content_container.find('div.ship-container')
        @info_container = $ content_container.find('div.info-container')
        @obstacles_container = content_container.find('.obstacles-container')
        @notes_container = $ content_container.find('.notes-container')
        @notes = $ @notes_container.find('textarea.squad-notes')

        @info_container.append $.trim """
            <div class="well well-small info-well">
                <span class="info-name"></span>
                <br />
                <span class="info-sources"></span>
                <br />
                <span class="info-collection"></span>
                <table>
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
                        <tr class="info-energy">
                            <td class="info-header"><i class="xwing-miniatures-font header-energy xwing-miniatures-font-energy"></i></td>
                            <td class="info-data info-energy"></td>
                        </tr>
                        <tr class="info-attack">
                            <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-frontarc"></i></td>
                            <td class="info-data info-attack"></td>
                        </tr>
                        <tr class="info-attack-fullfront">
                            <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-fullfrontarc"></i></td>
                            <td class="info-data info-attack"></td>
                        </tr>
                        <tr class="info-attack-bullseye">
                            <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-bullseyearc"></i></td>
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
                        <tr class="info-range">
                            <td class="info-header">Range</td>
                            <td class="info-data info-range"></td><td class="info-rangebonus"><i class="xwing-miniatures-font red header-range xwing-miniatures-font-rangebonusindicator"></i></td>
                        </tr>
                        <tr class="info-actions">
                            <td class="info-header">Actions</td>
                            <td class="info-data"></td>
                        </tr>
                        <tr class="info-actions-red">
                            <td></td>
                            <td class="info-data-red"></td>
                        </tr>
                        <tr class="info-upgrades">
                            <td class="info-header">Upgrades</td>
                            <td class="info-data"></td>
                        </tr>
                    </tbody>
                </table>
                <p class="info-text" />
                <p class="info-maneuvers" />
            </div>
        """
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
        @condition_container.addClass 'conditions-container'
        @container.append @condition_container

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
        .on 'xwing-backend:squadLoadRequested', (e, squad) =>
            @onSquadLoadRequested squad
        .on 'xwing-backend:squadDirtinessChanged', (e) =>
            @onSquadDirtinessChanged()
        .on 'xwing-backend:squadNameChanged', (e) =>
            @onSquadNameChanged()
        .on 'xwing:beforeLanguageLoad', (e, cb=$.noop) =>
            @pretranslation_serialized = @serialize()
            # Need to remove ships here because the cards will change when the
            # new language is loaded, and we don't want to have problems with
            # unclaiming uniques.
            # Preserve squad dirtiness
            old_dirty = @current_squad.dirty
            @removeAllShips()
            @current_squad.dirty = old_dirty
            cb()
        .on 'xwing:afterLanguageLoad', (e, language, cb=$.noop) =>
            @language = language
            old_dirty = @current_squad.dirty
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
            @checkCollection()
            @collection_button.removeClass 'hidden'
        .on 'xwing-collection:changed', (e, collection) =>
            # console.log "#{@faction}: Collection changed, checking squad"
            @checkCollection()
        .on 'xwing-collection:destroyed', (e, collection) =>
            @collection = null
            @collection_button.addClass 'hidden'
        .on 'xwing:pingActiveBuilder', (e, cb) =>
            cb(this) if @container.is(':visible')
        .on 'xwing:activateBuilder', (e, faction, cb) =>
            if faction == @faction
                @tab.tab('show')
                cb this

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
                    if not @list_modal.find('.toggle-maneuver-print').prop('checked')
                        for dial in @printable_container.find('.fancy-dial')
                            dial.hidden = true
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
                            'resistance'
                        when 'First Order'
                            'firstorder'
                    @printable_container.find('.squad-faction').html """<i class="xwing-miniatures-font xwing-miniatures-font-#{faction}"></i>"""

            # Conditions
            @printable_container.find('.printable-body').append $.trim """
                <div class="print-conditions"></div>
            """
            @printable_container.find('.printable-body .print-conditions').html @condition_container.html()


            # Notes, if present
            if $.trim(@notes.val()) != ''
                @printable_container.find('.printable-body').append $.trim """
                    <h5 class="print-notes">Notes:</h5>
                    <pre class="print-notes"></pre>
                """
                @printable_container.find('.printable-body pre.print-notes').text @notes.val()

            # Obstacles
            if @list_modal.find('.toggle-obstacles').prop('checked')
                @printable_container.find('.printable-body').append $.trim """
                    <div class="obstacles">
                        <div>Mark the three obstacles you are using.</div>
                        <img class="obstacle-silhouettes" src="images/xws-obstacles.png" />
                        <div>Mark which damage deck you are using.</div>
                        <div><i class="fa fa-square-o"></i>Original Core Set&nbsp;&nbsp&nbsp;<i class="fa fa-square-o"></i>The Force Awakens Core Set</div>
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

         @notes.change @onNotesUpdated

         @notes.on 'keyup', @onNotesUpdated

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
        oldSecondEdition = @isSecondEdition
        switch gametype
            when 'standard'
                @isSecondEdition = false
                @isCustom = false
                @desired_points_input.val 200
                @maxSmallShipsOfOneType = null
                @maxLargeShipsOfOneType = null
            when 'second_edition'
                @isSecondEdition = true
                @isCustom = false
                @desired_points_input.val 200
                @maxSmallShipsOfOneType = null
                @maxLargeShipsOfOneType = null
            when 'custom'
                @isSecondEdition = false
                @isCustom = true
                @maxSmallShipsOfOneType = null
                @maxLargeShipsOfOneType = null
        if (oldSecondEdition != @isSecondEdition)
            @newSquadFromScratch()
        @onPointsUpdated cb

    onPointsUpdated: (cb=$.noop) =>
        @total_points = 0
        unreleased_content_used = false
        for ship, i in @ships
            ship.validate()
            @total_points += ship.getPoints()
            ship_uses_unreleased_content = ship.checkUnreleasedContent()
            unreleased_content_used = ship_uses_unreleased_content if ship_uses_unreleased_content
        @total_points_span.text @total_points
        points_left = parseInt(@desired_points_input.val()) - @total_points
        @points_remaining_span.text points_left
        @points_remaining_container.toggleClass 'red', (points_left < 0)
        @unreleased_content_used_container.toggleClass 'hidden', not unreleased_content_used

        @fancy_total_points_container.text @total_points

        # update text list
        @fancy_container.text ''
        @simple_container.html '<table class="simple-table"></table>'
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

        @reddit_container.find('textarea').val $.trim """#{reddit_ships.join "    \n"}
    \n
**Total:** *#{@total_points}*    \n
    \n
[View in Yet Another Squad Builder 2.0](#{@getPermaLink()})    \n
"""
        @tts_container.find('textarea').val $.trim """#{tts_ships.join ""}"""

        @bbcode_container.find('textarea').val $.trim """#{bbcode_ships.join "\n\n"}

[b][i]Total: #{@total_points}[/i][/b]

[url=#{@getPermaLink()}]View in Yet Another Squad Builder 2.0[/url]
"""
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
        @loadFromSerialized squad.serialized
        @notes.val(squad.additional_data.notes ? '')
        @backend_status.fadeOut 'slow'
        @current_squad.dirty = false
        @container.trigger 'xwing-backend:squadDirtinessChanged'

    onSquadDirtinessChanged: () =>
        @backend_save_list_button.toggleClass 'disabled', not (@current_squad.dirty and @total_points > 0)
        @backend_save_list_as_button.toggleClass 'disabled', @total_points == 0
        @backend_delete_list_button.toggleClass 'disabled', not @current_squad.id?

    onSquadNameChanged: () =>
        if @current_squad.name.length > SQUAD_DISPLAY_NAME_MAX_LENGTH
            short_name = "#{@current_squad.name.substr(0, SQUAD_DISPLAY_NAME_MAX_LENGTH)}&hellip;"
        else
            short_name = @current_squad.name
        @squad_name_placeholder.text ''
        @squad_name_placeholder.append short_name
        @squad_name_input.val @current_squad.name

    removeAllShips: ->
        while @ships.length > 0
            @removeShip @ships[0]
        throw new Error("Ships not emptied") if @ships.length > 0

    showTextListModal: ->
        # Display modal
        @list_modal.modal 'show'

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

        serialization_version = 5
        game_type_abbrev = switch @game_type_selector.val()
            when 'standard'
                's'
            when 'second_edition'
                'se'
            when 'custom'
                "c=#{$.trim @desired_points_input.val()}"
        """v#{serialization_version}!#{game_type_abbrev}!#{( ship.toSerialized() for ship in @ships when ship.pilot? ).join ';'}"""

    loadFromSerialized: (serialized) ->
        @suppress_automatic_new_ship = true
        # Clear all existing ships
        @removeAllShips()

        re = /^v(\d+)!(.*)/
        matches = re.exec serialized
        if matches?
            # versioned
            version = parseInt matches[1]
            switch version
                when 3, 4, 5
                    # parse out game type
                    [ game_type_abbrev, serialized_ships ] = matches[2].split('!')
                    switch game_type_abbrev
                        when 's'
                            @game_type_selector.val 'standard'
                            @game_type_selector.change()
                        when 'se'
                            @game_type_selector.val 'second_edition'
                            @game_type_selector.change()
                        else
                            @game_type_selector.val 'custom'
                            @desired_points_input.val parseInt(game_type_abbrev.split('=')[1])
                            @desired_points_input.change()
                    for serialized_ship in serialized_ships.split(';')
                        unless serialized_ship == ''
                            new_ship = @addShip()
                            new_ship.fromSerialized version, serialized_ship
                when 2
                    for serialized_ship in matches[2].split(';')
                        unless serialized_ship == ''
                            new_ship = @addShip()
                            new_ship.fromSerialized version, serialized_ship
        else
            # v1 (unversioned)
            for serialized_ship in serialized.split(';')
                unless serialized == ''
                    new_ship = @addShip()
                    new_ship.fromSerialized 1, serialized_ship

        @suppress_automatic_new_ship = false
        # Finally, the unassigned ship
        @addShip()

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
        new_ship


    removeShip: (ship) ->
        await ship.destroy defer()
        await @container.trigger 'xwing:pointsUpdated', defer()
        @current_squad.dirty = true
        @container.trigger 'xwing-backend:squadDirtinessChanged'

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

    getAvailableShipsMatching: (term='',sorted = true) ->
        ships = []
        for ship_name, ship_data of exportObj.ships
            if @isOurFaction(ship_data.factions) and (@matcher(ship_data.name, term) or (ship_data.display_name and @matcher(ship_data.display_name, term)))
                if (not @isSecondEdition or exportObj.secondEditionCheck(ship_data, @faction))
                    if not ship_data.huge or @isCustom
                        if ship_data.display_name
                            ships.push
                                id: ship_data.name
                                name: ship_data.name
                                display_name: ship_data.display_name
                                text: ship_data.display_name
                                canonical_name: ship_data.canonical_name
                                xws: ship_data.xws
                        else                        
                            ships.push
                                id: ship_data.name
                                name: ship_data.name
                                text: ship_data.name
                                canonical_name: ship_data.canonical_name
                                xws: ship_data.xws
        if sorted
            ships.sort exportObj.sortHelper
        return ships

    getAvailableShipsMatchingAndCheapEnough: (points, term='', sorted=false) ->
        # returns a list of ships that have at least one pilot cheaper than the given points value
        possible_ships = @getAvailableShipsMatching(term, sorted)
        cheap_ships = []
        for ship in possible_ships
            pilots = @getAvailablePilotsForShipIncluding(ship.name, null, '', true)
            if pilots.length and pilots[0].points <= points
                cheap_ships.push(ship)
                
        return cheap_ships
        
    getAvailablePilotsForShipIncluding: (ship, include_pilot, term='', sorted = true) ->
        # Returns data formatted for Select2
        available_faction_pilots = (pilot for pilot_name, pilot of exportObj.pilots when (not ship? or pilot.ship == ship) and @isOurFaction(pilot.faction) and (@matcher(pilot_name, term) or (pilot.display_name and @matcher(pilot.display_name, term)) ) and (not @isSecondEdition or exportObj.secondEditionCheck(pilot)))

        eligible_faction_pilots = (pilot for pilot_name, pilot of available_faction_pilots when (not pilot.unique? or pilot not in @uniques_in_use['Pilot'] or pilot.canonical_name.getXWSBaseName() == include_pilot?.canonical_name.getXWSBaseName()))

        # Re-add selected pilot
        if include_pilot? and include_pilot.unique? and (@matcher(include_pilot.name, term) or (include_pilot.display_name and @matcher(include_pilot.display_name, term)) )
            eligible_faction_pilots.push include_pilot

        retval = ({ id: pilot.id, text: "#{if pilot.display_name then pilot.display_name else pilot.name} (#{pilot.points})", points: pilot.points, ship: pilot.ship, name: pilot.name, display_name: pilot.display_name, disabled: pilot not in eligible_faction_pilots } for pilot in available_faction_pilots)
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
        limited_upgrades_in_use = (upgrade.data for upgrade in ship.upgrades when upgrade?.data?.limited?)

        available_upgrades = (upgrade for upgrade_name, upgrade of exportObj.upgrades when upgrade.slot == slot and ( @matcher(upgrade_name, term) or (upgrade.display_name and @matcher(upgrade.display_name, term)) ) and (not upgrade.ship? or @isShip(upgrade.ship, ship.data.name)) and (not upgrade.faction? or @isOurFaction(upgrade.faction)) and (not @isSecondEdition or exportObj.secondEditionCheck(upgrade)))

        if filter_func != @dfl_filter_func
            available_upgrades = (upgrade for upgrade in available_upgrades when filter_func(upgrade))

        eligible_upgrades = (upgrade for upgrade_name, upgrade of available_upgrades when (not upgrade.unique? or upgrade not in @uniques_in_use['Upgrade']) and (not (ship? and upgrade.restriction_func?) or upgrade.restriction_func(ship, this_upgrade_obj)) and upgrade not in limited_upgrades_in_use and ((not upgrade.max_per_squad?) or ship.builder.countUpgrades(upgrade.canonical_name) < upgrade.max_per_squad))


        for equipped_upgrade in (upgrade.data for upgrade in ship.upgrades when upgrade?.data?)
            eligible_upgrades.removeItem equipped_upgrade

        # Re-enable selected upgrade
        if include_upgrade? and (((include_upgrade.unique? or include_upgrade.limited? or include_upgrade.max_per_squad?) and ( @matcher(include_upgrade.name, term) or (include_upgrade.display_name and @matcher(include_upgrade.display_name, term))) ))# or current_upgrade_forcibly_removed)
            # available_upgrades.push include_upgrade
            eligible_upgrades.push include_upgrade

        retval = ({ id: upgrade.id, text: "#{if upgrade.display_name then upgrade.display_name else upgrade.name} (#{upgrade.points})", points: upgrade.points, name: upgrade.name, display_name: upgrade.display_name, disabled: upgrade not in eligible_upgrades } for upgrade in available_upgrades)
        if sorted
            retval = retval.sort exportObj.sortHelper

        # Possibly adjust the upgrade
        if this_upgrade_obj?adjustment_func?
            (this_upgrade_obj.adjustment_func(upgrade) for upgrade in retval)
        else
            retval

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
                        when 1 then "white"
                        when 2 then "dodgerblue"
                        when 3 then "red"

                     # we need this to change the color to b/w in case we want to print b/w

                    maneuverClass = switch maneuvers[speed][turn]
                        when 1 then "svg-white-maneuver"
                        when 2 then "svg-blue-maneuver"
                        when 3 then "svg-red-maneuver"

                    outTable += """<svg xmlns="http://www.w3.org/2000/svg" width="30px" height="30px" viewBox="0 0 200 200">"""

                    outlineColor = "black"
                    maneuverClass2 = "svg-base-maneuver"
                    if maneuvers[speed][turn] != baseManeuvers[speed][turn]
                        outlineColor = "mediumblue" # highlight manuevers modified by another card (e.g. R2 Astromech makes all 1 & 2 speed maneuvers green)
                        maneuverClass2 = "svg-modified-maneuver"

                    if speed == 0
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

        
    showTooltip: (type, data, additional_opts) ->
        if data != @tooltip_currently_displaying
            switch type
                when 'Ship'
                    @info_container.find('.info-sources').text (exportObj.translate(@language, 'sources', source) for source in data.pilot.sources).sort().join(', ')
                    if @collection?.counts?
                        ship_count = @collection.counts?.ship?[data.data.name] ? 0
                        pilot_count = @collection.counts?.pilot?[data.pilot.name] ? 0
                        @info_container.find('.info-collection').text """You have #{ship_count} ship model#{if ship_count > 1 then 's' else ''} and #{pilot_count} pilot card#{if pilot_count > 1 then 's' else ''} in your collection."""
                    else
                        @info_container.find('.info-collection').text ''
                    effective_stats = data.effectiveStats()
                    extra_actions = $.grep effective_stats.actions, (el, i) ->
                        el not in (data.pilot.ship_override?.actions ? data.data.actions)
                    extra_actions_red = $.grep effective_stats.actionsred, (el, i) ->
                        el not in (data.pilot.ship_override?.actionsred ? data.data.actionsred)
                    @info_container.find('.info-name').html """#{if data.pilot.unique then "&middot;&nbsp;" else ""}#{if data.pilot.display_name then data.pilot.display_name else data.pilot.name} #{if exportObj.isReleased(data.pilot) then "" else " (#{exportObj.translate(@language, 'ui', 'unreleased')})"}"""

                    @info_container.find('p.info-text').html data.pilot.text ? ''
                    @info_container.find('tr.info-ship td.info-data').text data.pilot.ship
                    @info_container.find('tr.info-ship').show()

                    if data.data.large?
                        @info_container.find('tr.info-base td.info-data').text "Large"
                    else if data.data.medium?
                        @info_container.find('tr.info-base td.info-data').text "Medium"
                    else
                        @info_container.find('tr.info-base td.info-data').text "Small"
                    @info_container.find('tr.info-base').show()
                    
                    @info_container.find('tr.info-skill td.info-data').text statAndEffectiveStat(data.pilot.skill, effective_stats, 'skill')
                    @info_container.find('tr.info-skill').show()

#                    for cls in @info_container.find('tr.info-attack td.info-header i.xwing-miniatures-font')[0].classList
#                        @info_container.find('tr.info-attack td.info-header i.xwing-miniatures-font').removeClass(cls) if cls.startsWith('xwing-miniatures-font-attack')
                    @info_container.find('tr.info-attack td.info-header i.xwing-miniatures-font').addClass(data.data.attack_icon ? 'xwing-miniatures-font-attack')

                    @info_container.find('tr.info-attack td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.attack ? data.data.attack), effective_stats, 'attack')
                    @info_container.find('tr.info-attack').toggle(effective_stats.attack?)
                    
                    @info_container.find('tr.info-attack-fullfront td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.attackf ? data.data.attackf), effective_stats, 'attackf')
                    @info_container.find('tr.info-attack-fullfront').toggle(effective_stats.attackf?)

                    @info_container.find('tr.info-attack-bullseye').hide()
                    
                    @info_container.find('tr.info-attack-back td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.attackb ? data.data.attackb), effective_stats, 'attackb')
                    @info_container.find('tr.info-attack-back').toggle(effective_stats.attackb?)

                    @info_container.find('tr.info-attack-turret td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.attackt ? data.data.attackt), effective_stats, 'attackt')
                    @info_container.find('tr.info-attack-turret').toggle(effective_stats.attackt?)

                    @info_container.find('tr.info-attack-doubleturret td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.attackdt ? data.data.attackdt), effective_stats, 'attackdt')
                    @info_container.find('tr.info-attack-doubleturret').toggle(effective_stats.attackdt?)
                                        
                    @info_container.find('tr.info-energy td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.energy ? data.data.energy), effective_stats, 'energy')
                    @info_container.find('tr.info-energy').toggle(data.pilot.ship_override?.energy? or data.data.energy?)
                    @info_container.find('tr.info-range').hide()
                    @info_container.find('td.info-rangebonus').hide()
                    @info_container.find('tr.info-agility td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.agility ? data.data.agility), effective_stats, 'agility')
                    @info_container.find('tr.info-agility').show()
                    @info_container.find('tr.info-hull td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.hull ? data.data.hull), effective_stats, 'hull')
                    @info_container.find('tr.info-hull').show()
                    @info_container.find('tr.info-shields td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.shields ? data.data.shields), effective_stats, 'shields')
                    @info_container.find('tr.info-shields').show()

                    if (effective_stats.force > 0) or data.pilot.force?
                        @info_container.find('tr.info-force td.info-data').html (statAndEffectiveStat((data.pilot.ship_override?.force ? data.pilot.force), effective_stats, 'force') + '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>')
                        @info_container.find('tr.info-force').show()
                    else
                        @info_container.find('tr.info-force').hide()

                    if data.pilot.charge?
                        if data.pilot.recurring?
                            @info_container.find('tr.info-charge td.info-data').html (data.pilot.charge + '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>')
                        else
                            @info_container.find('tr.info-charge td.info-data').text data.pilot.charge
                        @info_container.find('tr.info-charge').show()
                    else
                        @info_container.find('tr.info-charge').hide()

                    @info_container.find('tr.info-actions td.info-data').html ((exportObj.translate(@language, 'action', a) for a in (data.pilot.ship_override?.actions ? data.data.actions).concat( ("<strong>#{exportObj.translate @language, 'action', action}</strong>" for action in extra_actions))).join ', ').replace(/, <i class="xwing-miniatures-font xwing-miniatures-font-linked/g,' <i class="xwing-miniatures-font xwing-miniatures-font-linked')
                    
                    if data.data.actionsred?
                        @info_container.find('tr.info-actions-red td.info-data-red').html (exportObj.translate(@language, 'action', a) for a in (data.pilot.ship_override?.actionsred ? data.data.actionsred).concat( ("<strong>#{exportObj.translate @language, 'action', action}</strong>" for action in extra_actions_red))).join ', '       
                    @info_container.find('tr.info-actions-red').toggle(data.data.actionsred?)
                    
                    @info_container.find('tr.info-actions').show()
                    @info_container.find('tr.info-upgrades').show()
                    @info_container.find('tr.info-upgrades td.info-data').html((exportObj.translate(@language, 'sloticon', slot) for slot in data.pilot.slots).join(' ') or 'None')
                    @info_container.find('p.info-maneuvers').show()
                    @info_container.find('p.info-maneuvers').html(@getManeuverTableHTML(effective_stats.maneuvers, data.data.maneuvers))
                when 'Pilot'
                    @info_container.find('.info-sources').text (exportObj.translate(@language, 'sources', source) for source in data.sources).sort().join(', ')
                    if @collection?.counts?
                        pilot_count = @collection.counts?.pilot?[data.name] ? 0
                        ship_count = @collection.counts.ship?[additional_opts.ship] ? 0
                        @info_container.find('.info-collection').text """You have #{ship_count} ship model#{if ship_count > 1 then 's' else ''} and #{pilot_count} pilot card#{if pilot_count > 1 then 's' else ''} in your collection."""
                    else
                        @info_container.find('.info-collection').text ''
                    @info_container.find('.info-name').html """#{if data.unique then "&middot;&nbsp;" else ""}#{if data.display_name then data.display_name else data.name}#{if exportObj.isReleased(data) then "" else " (#{exportObj.translate(@language, 'ui', 'unreleased')})"}"""
                    @info_container.find('p.info-text').html data.text ? ''
                    ship = exportObj.ships[data.ship]
                    @info_container.find('tr.info-ship td.info-data').text data.ship
                    @info_container.find('tr.info-ship').show()
                    
                    if ship.large?
                        @info_container.find('tr.info-base td.info-data').text "Large"
                    else if ship.medium?
                        @info_container.find('tr.info-base td.info-data').text "Medium"
                    else
                        @info_container.find('tr.info-base td.info-data').text "Small"
                    @info_container.find('tr.info-base').show()

                    
                    @info_container.find('tr.info-skill td.info-data').text data.skill
                    @info_container.find('tr.info-skill').show()
                    
                    @info_container.find('tr.info-attack td.info-data').text(data.ship_override?.attack ? ship.attack)
                    @info_container.find('tr.info-attack').toggle(data.ship_override?.attack? or ship.attack?)

                    @info_container.find('tr.info-attack-fullfront td.info-data').text(ship.attackf)
                    @info_container.find('tr.info-attack-fullfront').toggle(ship.attackf?)
                    
                    @info_container.find('tr.info-attack-bullseye').hide()
                    
                    @info_container.find('tr.info-attack-back td.info-data').text(ship.attackb)
                    @info_container.find('tr.info-attack-back').toggle(ship.attackb?)
                    @info_container.find('tr.info-attack-turret td.info-data').text(ship.attackt)
                    @info_container.find('tr.info-attack-turret').toggle(ship.attackt?)
                    @info_container.find('tr.info-attack-doubleturret td.info-data').text(ship.attackdt)
                    @info_container.find('tr.info-attack-doubleturret').toggle(ship.attackdt?)
                    
#                    for cls in @info_container.find('tr.info-attack td.info-header i.xwing-miniatures-font')[0].classList
#                        @info_container.find('tr.info-attack td.info-header i.xwing-miniatures-font').removeClass(cls) if cls.startsWith('xwing-miniatures-font-frontarc')
                    @info_container.find('tr.info-attack td.info-header i.xwing-miniatures-font').addClass(ship.attack_icon ? 'xwing-miniatures-font-frontarc')

                    @info_container.find('tr.info-energy td.info-data').text(data.ship_override?.energy ? ship.energy)
                    @info_container.find('tr.info-energy').toggle(data.ship_override?.energy? or ship.energy?)
                    @info_container.find('tr.info-range').hide()
                    @info_container.find('td.info-rangebonus').hide()
                    @info_container.find('tr.info-agility td.info-data').text(data.ship_override?.agility ? ship.agility)
                    @info_container.find('tr.info-agility').show()
                    @info_container.find('tr.info-hull td.info-data').text(data.ship_override?.hull ? ship.hull)
                    @info_container.find('tr.info-hull').show()
                    @info_container.find('tr.info-shields td.info-data').text(data.ship_override?.shields ? ship.shields)
                    @info_container.find('tr.info-shields').show()

                    if effective_stats?.force? or data.force?
                        @info_container.find('tr.info-force td.info-data').html ((data.ship_override?.force ? data.force)+ '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>')
                        @info_container.find('tr.info-force').show()
                    else
                        @info_container.find('tr.info-force').hide()

                    if data.charge?
                        if data.recurring?
                            @info_container.find('tr.info-charge td.info-data').html (data.charge + '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>')
                        else
                            @info_container.find('tr.info-charge td.info-data').text data.charge
                        @info_container.find('tr.info-charge').show()
                    else
                        @info_container.find('tr.info-charge').hide()

                    @info_container.find('tr.info-actions td.info-data').html ((exportObj.translate(@language, 'action', action) for action in (data.ship_override?.actions ? exportObj.ships[data.ship].actions)).join(', ')).replace(/, <i class="xwing-miniatures-font xwing-miniatures-font-linked/g,' <i class="xwing-miniatures-font xwing-miniatures-font-linked')
    
                    if ships[data.ship].actionsred?
                        @info_container.find('tr.info-actions-red td.info-data-red').html (exportObj.translate(@language, 'action', action) for action in (data.ship_override?.actionsred ? exportObj.ships[data.ship].actionsred)).join(', ')
                        @info_container.find('tr.info-actions-red').show()
                    else
                        @info_container.find('tr.info-actions-red').hide()

                    @info_container.find('tr.info-actions').show()
                    @info_container.find('tr.info-upgrades').show()
                    @info_container.find('tr.info-upgrades td.info-data').html((exportObj.translate(@language, 'sloticon', slot) for slot in data.slots).join(' ') or 'None')
                    @info_container.find('p.info-maneuvers').show()
                    @info_container.find('p.info-maneuvers').html(@getManeuverTableHTML(ship.maneuvers, ship.maneuvers))
                when 'Addon'
                    @info_container.find('.info-sources').text (exportObj.translate(@language, 'sources', source) for source in data.sources).sort().join(', ')
                    if @collection?.counts?
                        addon_count = @collection.counts?[additional_opts.addon_type.toLowerCase()]?[data.name] ? 0
                        @info_container.find('.info-collection').text """You have #{addon_count} in your collection."""
                    else
                        @info_container.find('.info-collection').text ''
                    @info_container.find('.info-name').html """#{if data.unique then "&middot;&nbsp;" else ""}#{if data.display_name then data.display_name else data.name}#{if data.limited? then " (#{exportObj.translate(@language, 'ui', 'limited')})" else ""}#{if exportObj.isReleased(data) then  "" else " (#{exportObj.translate(@language, 'ui', 'unreleased')})"}"""
                    @info_container.find('p.info-text').html data.text ? ''
                    @info_container.find('tr.info-ship').hide()
                    @info_container.find('tr.info-base').hide()
                    @info_container.find('tr.info-skill').hide()
                    if data.energy?
                        @info_container.find('tr.info-energy td.info-data').text data.energy
                        @info_container.find('tr.info-energy').show()
                    else
                        @info_container.find('tr.info-energy').hide()
                    if data.attack?
                        # Attack icons on upgrade cards don't get special icons
                    #    for cls in @info_container.find('tr.info-attack td.info-header i.xwing-miniatures-font')[0].classList
                    #        @info_container.find('tr.info-attack td.info-header i.xwing-miniatures-font').removeClass(cls) if cls.startsWith('xwing-miniatures-font-frontarc')
                    #    @info_container.find('tr.info-attack td.info-header i.xwing-miniatures-font').addClass('xwing-miniatures-font-frontarc')
                        @info_container.find('tr.info-attack td.info-data').text data.attack
                        @info_container.find('tr.info-attack').show()
                    else
                        @info_container.find('tr.info-attack').hide()

                    if data.attackt?
                        @info_container.find('tr.info-attack-turret td.info-data').text data.attackt
                        @info_container.find('tr.info-attack-turret').show()
                    else
                        @info_container.find('tr.info-attack-turret').hide()

                    if data.attackbull?
                        @info_container.find('tr.info-attack-bullseye td.info-data').text data.attackbull
                        @info_container.find('tr.info-attack-bullseye').show()
                    else
                        @info_container.find('tr.info-attack-bullseye').hide()

                    @info_container.find('tr.info-attack-fullfront').hide()
                    @info_container.find('tr.info-attack-back').hide()
                    @info_container.find('tr.info-attack-doubleturret').hide()

                    if data.recurring?
                        @info_container.find('tr.info-charge td.info-data').html (data.charge + """<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>""")
                    else                
                        @info_container.find('tr.info-charge td.info-data').text data.charge
                    @info_container.find('tr.info-charge').toggle(data.charge?)                        
                    
                    if data.range?
                        @info_container.find('tr.info-range td.info-data').text data.range
                        @info_container.find('tr.info-range').show()
                    else
                        @info_container.find('tr.info-range').hide()

                    if data.rangebonus?
                        @info_container.find('td.info-rangebonus').show()
                    else
                        @info_container.find('td.info-rangebonus').hide()
                        
                        
                    @info_container.find('tr.info-force td.info-data').html (data.force + '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>')
                    @info_container.find('tr.info-force').toggle(data.force?)                        

                    @info_container.find('tr.info-agility').hide()
                    @info_container.find('tr.info-hull').hide()
                    @info_container.find('tr.info-shields').hide()
                    @info_container.find('tr.info-actions').hide()
                    @info_container.find('tr.info-actions-red').hide()
                    @info_container.find('tr.info-upgrades').hide()
                    @info_container.find('p.info-maneuvers').hide()
            @info_container.show()
            @tooltip_currently_displaying = data
        
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
                        unused_addons.push upgrade unless upgrade.data?
                # 0 is ship, otherwise addon
                idx = $.randomInt(data.ships_or_upgrades + unused_addons.length)
                if idx < data.ships_or_upgrades or unused_addons.length == 0
                    # Add random ship
                    #console.log "Add ship"
                    available_ships = @getAvailableShipsMatchingAndCheapEnough(data.max_points - @total_points)
                    if available_ships.length == 0
                        if unused_addons.length > 0
                            idx = $.randomInt(unused_addons.length) + data.ships_or_upgrades
                        else 
                            available_ships = @getAvailableShipsMatching('', false)
                    if available_ships.length > 0
                        ship_type = available_ships[$.randomInt available_ships.length].name
                        available_pilots = @getAvailablePilotsForShipIncluding(ship_type)
                        pilot = available_pilots[$.randomInt available_pilots.length]
                        if not pilot.disabled and exportObj.pilotsById[pilot.id].sources.intersects(data.allowed_sources)
                            new_ship = @addShip()
                            new_ship.setPilotById pilot.id
                if idx >= data.ships_or_upgrades and unused_addons.length != 0
                    # Add upgrade
                    #console.log "Add addon"
                    addon = unused_addons[idx - data.ships_or_upgrades]
                    switch addon.type
                        when 'Upgrade'
                            available_upgrades = (upgrade for upgrade in @getAvailableUpgradesIncluding(addon.slot, null, addon.ship, addon,'', @dfl_filter_func, sorted = false) when exportObj.upgradesById[upgrade.id].sources.intersects(data.allowed_sources))
                            upgrade = available_upgrades[$.randomInt available_upgrades.length] if available_upgrades.length > 0
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

            window.clearTimeout data.timer
            # Update all selectors
            for ship in @ships
                ship.updateSelections()
            @suppress_automatic_new_ship = false
            @addShip()

    _makeRandomizerLoopFunc: (data) =>
        () =>
            @_randomizerLoopBody(data)

    randomSquad: (max_points=200, allowed_sources=null, timeout_ms=1000, bid_goal=5, ships_or_upgrades=3) ->
        @backend_status.fadeOut 'slow'
        @suppress_automatic_new_ship = true
        # Clear all existing ships
        while @ships.length > 0
            @removeShip @ships[0]
        throw new Error("Ships not emptied") if @ships.length > 0
        data =
            max_points: max_points
            bid_goal: bid_goal
            ships_or_upgrades: ships_or_upgrades
            keep_running: true
            allowed_sources: allowed_sources ? exportObj.expansions
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

    describeSquad: ->
        (ship.pilot.name for ship in @ships when ship.pilot?).join ', '

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

    getObstacles: ->
        @current_obstacles

    isSquadPossibleWithCollection: ->
        # console.log "#{@faction}: isSquadPossibleWithCollection()"
        # If the collection is uninitialized or empty, don't actually check it.
        if Object.keys(@collection?.expansions ? {}).length == 0
            # console.log "collection not ready or is empty"
            return true 
        @collection.reset()
        if @collection?.checks.collectioncheck != "true"
            # console.log "collection check not enabled"
            return true
        @collection.reset()
        validity = true
        for ship in @ships
            if ship.pilot?
                # Try to get both the physical model and the pilot card.
                ship_is_available = @collection.use('ship', ship.pilot.ship)
                pilot_is_available = @collection.use('pilot', ship.pilot.name)
                # console.log "#{@faction}: Ship #{ship.pilot.ship} available: #{ship_is_available}"
                # console.log "#{@faction}: Pilot #{ship.pilot.name} available: #{pilot_is_available}"
                validity = false unless ship_is_available and pilot_is_available
                for upgrade in ship.upgrades
                    if upgrade.data?
                        if upgrade.data.ignorecollection? #ignore hardpoints
                            upgrade_is_available = true
                        else
                            upgrade_is_available = @collection.use('upgrade', upgrade.data.name)
                        # console.log "#{@faction}: Upgrade #{upgrade.data.name} available: #{upgrade_is_available}"
                        validity = false unless upgrade_is_available
        validity

    checkCollection: ->
        # console.log "#{@faction}: Checking validity of squad against collection..."
        if @collection?
            @collection_invalid_container.toggleClass 'hidden', @isSquadPossibleWithCollection()

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

        version_list = (parseInt x for x in xws.version.split('.'))

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

                    # pilotsByUniqueName is a weired thing, containing most pilots by xws name, but does weired stuff on pilots that exist multiple times. 
                    if exportObj.pilotsByUniqueName[pilotxws] and exportObj.pilotsByUniqueName[pilotxws].length == 1
                        shipname =  exportObj.pilotsByUniqueName[pilotxws][0].ship
                    
                    else
                        for key, possible_pilots of exportObj.pilotsByUniqueName
                            for possible_pilot in possible_pilots
                                if (possible_pilot.xws and possible_pilot.xws == pilotxws) or (not possible_pilot.xws and key == pilotxws)
                                    shipname = possible_pilot.ship


                    #for ship_name, ship_data of exportObj.ships
                    #    if @matcher(ship_data.xws, pilot.ship)
                    #        shipnameXWS =
                    #            id: ship_data.name
                    #            xws: ship_data.xws
                    # console.log "#{pilot.xws}"
                    try
                        new_ship.setPilot (p for p in (exportObj.pilotsByFactionXWS[@faction][pilotxws] ?= exportObj.pilotsByFactionCanonicalName[@faction][pilotxws]) when p.ship == shipname)[0]
                    catch err
                        console.error err.message 
                        continue
                    # Turn all the upgrades into a flat list so we can keep trying to add them
                    addons = []
                    for upgrade_type, upgrade_canonicals of pilot.upgrades ? {}
                        for upgrade_canonical in upgrade_canonicals
                            # console.log upgrade_type, upgrade_canonical
                            slot = null
                            slot = exportObj.fromXWSUpgrade[upgrade_type] ? upgrade_type.capitalize()
                            addon = exportObj.upgradesBySlotXWSName[slot][upgrade_canonical] ?= exportObj.upgradesBySlotCanonicalName[slot][upgrade_canonical]
                            if addon?
                                # console.log "-> #{upgrade_type} #{addon.name} #{slot}"
                                addons.push
                                    type: slot
                                    data: addon
                                    slot: slot

                    if addons.length > 0
                        for _ in [0...1000]
                            # Try to add an addon.  If it's not eligible, requeue it and
                            # try it again later, as another addon might allow it.
                            addon = addons.shift()
                            # console.log "Adding #{addon.data.name} to #{new_ship}..."

                            addon_added = false
                            # console.log "Looking for unused #{addon.slot} in #{new_ship}..."
                            for upgrade, i in new_ship.upgrades
                                continue if upgrade.slot != addon.slot or upgrade.data?
                                upgrade.setData addon.data
                                addon_added = true
                                break

                            if addon_added
                                # console.log "Successfully added #{addon.data.name} to #{new_ship}"
                                if addons.length == 0
                                    # console.log "Done with addons for #{new_ship}"
                                    break
                            else
                                # Can't add it, requeue unless there are no other addons to add
                                # in which case this isn't valid
                                if addons.length == 0
                                    success = false
                                    error = "Could not add #{addon.data.name} to #{new_ship}"
                                    break
                                else
                                    # console.log "Could not add #{addon.data.name} to #{new_ship}, trying later"
                                    addons.push addon

                        if addons.length > 0
                            success = false
                            error = "Could not add all upgrades"
                            break

                @suppress_automatic_new_ship = false
                # Finally, the unassigned ship
                @addShip()

                success = true
            else
                success = false
                error = "Invalid or unsupported XWS version"

        if success
            @current_squad.dirty = true
            @container.trigger 'xwing-backend:squadNameChanged'
            @container.trigger 'xwing-backend:squadDirtinessChanged'

        # console.log "success: #{success}, error: #{error}"

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
        @upgrades = []

        @setupUI()

    destroy: (cb) ->
        @resetPilot()
        @resetAddons()
        @teardownUI()
        idx = @builder.ships.indexOf this
        if idx < 0
            throw new Error("Ship not registered with builder")
        @builder.ships.splice idx, 1
        cb()

    copyFrom: (other) ->
        throw new Error("Cannot copy from self") if other is this
        #console.log "Attempt to copy #{other?.pilot?.name}"
        return unless other.pilot? and other.data?
        #console.log "Setting pilot to ID=#{other.pilot.id}"
        if other.pilot.unique
            # Look for cheapest generic or available unique, otherwise do nothing
            available_pilots = (pilot_data for pilot_data in @builder.getAvailablePilotsForShipIncluding(other.data.name) when not pilot_data.disabled)
            if available_pilots.length > 0
                @setPilotById available_pilots[0].id
                # Can't just copy upgrades since slots may be different
                # Similar to setPilot() when ship is the same

                other_upgrades = {}
                for upgrade in other.upgrades
                    if upgrade?.data? and not upgrade.data.unique and ((not upgrade.data.max_per_squad?) or @builder.countUpgrades(upgrade.data.canonical_name) < upgrade.data.max_per_squad)
                        other_upgrades[upgrade.slot] ?= []
                        other_upgrades[upgrade.slot].push upgrade

                for upgrade in @upgrades
                    other_upgrade = (other_upgrades[upgrade.slot] ? []).shift()
                    if other_upgrade?
                        upgrade.setById other_upgrade.data.id
            else
                return
        else
            # Exact clone, so we can copy things over directly
            @setPilotById other.pilot.id

            # set up non-conferred addons
            other_conferred_addons = []
            #console.log "Looking for conferred upgrades..."
            for other_upgrade, i in other.upgrades
                # console.log "Examining upgrade #{other_upgrade}"
                if other_upgrade.data? and other_upgrade not in other_conferred_addons and not other_upgrade.data.unique and i < @upgrades.length and ((not other_upgrade.data.max_per_squad?) or @builder.countUpgrades(other_upgrade.data.canonical_name) < other_upgrade.data.max_per_squad)
                    #console.log "Copying non-unique upgrade #{other_upgrade} into slot #{i}"
                    @upgrades[i].setById other_upgrade.data.id


        @updateSelections()
        @builder.container.trigger 'xwing:pointsUpdated'
        @builder.current_squad.dirty = true
        @builder.container.trigger 'xwing-backend:squadDirtinessChanged'

    setShipType: (ship_type) ->
        @pilot_selector.data('select2').container.show()
        if ship_type != @pilot?.ship
            # Ship changed; select first non-unique
            @setPilot (exportObj.pilotsById[result.id] for result in @builder.getAvailablePilotsForShipIncluding(ship_type) when not exportObj.pilotsById[result.id].unique)[0]

            # TODO: When no non-unique pilot is available, we should maybe select the first one not already beeing in the squad?

        # Clear ship background class
        for cls in @row.attr('class').split(/\s+/)
            if cls.indexOf('ship-') == 0
                @row.removeClass cls

        # Show delete button
        @remove_button.fadeIn 'fast'

        # Ship background
        @row.addClass "ship-#{ship_type.toLowerCase().replace(/[^a-z0-9]/gi, '')}"

        @builder.container.trigger 'xwing:shipUpdated'

    setPilotById: (id) ->
        @setPilot exportObj.pilotsById[parseInt id]

    setPilotByName: (name) ->
        @setPilot exportObj.pilots[$.trim name]

    setPilot: (new_pilot) ->
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
                if same_ship
                    for upgrade in @upgrades
                        old_upgrade = (old_upgrades[upgrade.slot] ? []).shift()
                        if old_upgrade?
                            upgrade.setById old_upgrade.data.id
            else
                @copy_button.hide()
            @builder.container.trigger 'xwing:pointsUpdated'
            @builder.container.trigger 'xwing-backend:squadDirtinessChanged'

    resetPilot: ->
        if @pilot?.unique?
            await @builder.container.trigger 'xwing:releaseUnique', [ @pilot, 'Pilot', defer() ]
        @pilot = null

    setupAddons: ->
        # Upgrades from pilot
        for slot in @pilot.slots ? []
            @upgrades.push new exportObj.Upgrade
                ship: this
                container: @addon_container
                slot: slot

    resetAddons: ->
        await
            for upgrade in @upgrades
                upgrade.destroy defer() if upgrade?
        @upgrades = []

    getPoints: ->
        points = @pilot?.points ? 0
        for upgrade in @upgrades
            points += upgrade.getPoints()
        @points_container.find('span').text points
        if points > 0
            @points_container.fadeTo 'fast', 1
        else
            @points_container.fadeTo 0, 0
        points

    updateSelections: ->
        if @pilot?
            if exportObj.ships[@pilot.ship].display_name
                @ship_selector.select2 'data',
                    id: @pilot.ship
                    text: exportObj.ships[@pilot.ship].display_name
                    xws: exportObj.ships[@pilot.ship].xws
            else
                @ship_selector.select2 'data',
                    id: @pilot.ship
                    text: @pilot.ship
                    xws: exportObj.ships[@pilot.ship].xws
            @pilot_selector.select2 'data',
                id: @pilot.id
                text: "#{if @pilot.display_name then @pilot.display_name else @pilot.name} (#{@pilot.points})"
            @pilot_selector.data('select2').container.show()
            for upgrade in @upgrades
                points = upgrade.getPoints()
                upgrade.updateSelection points
        else
            @pilot_selector.select2 'data', null
            @pilot_selector.data('select2').container.toggle(@ship_selector.val() != '')

    setupUI: ->
        @row = $ document.createElement 'DIV'
        @row.addClass 'row-fluid ship'
        @row.insertBefore @builder.notes_container

        @row.append $.trim '''
            <div class="span3">
                <input class="ship-selector-container" type="hidden" />
                <br />
                <input type="hidden" class="pilot-selector-container" />
            </div>
            <div class="span1 points-display-container">
                <span></span>
            </div>
            <div class="span6 addon-container" />
            <div class="span2 button-container">
                <button class="btn btn-danger remove-pilot"><span class="visible-desktop visible-tablet hidden-phone" data-toggle="tooltip" title="Remove Pilot"><i class="fa fa-times"></i></span><span class="hidden-desktop hidden-tablet visible-phone">Remove Pilot</span></button>
                <button class="btn copy-pilot"><span class="visible-desktop visible-tablet hidden-phone" data-toggle="tooltip" title="Clone Pilot"><i class="fa fa-files-o"></i></span><span class="hidden-desktop hidden-tablet visible-phone">Clone Pilot</span></button>
            </div>
        '''
        @row.find('.button-container span').tooltip()

        @ship_selector = $ @row.find('input.ship-selector-container')
        @pilot_selector = $ @row.find('input.pilot-selector-container')

        shipResultFormatter = (object, container, query) ->
            # Append directly so we don't have to disable markup escaping
            $(container).append """<i class="xwing-miniatures-ship xwing-miniatures-ship-#{object.xws}"></i> #{object.text}"""
            # If you return a string, Select2 will render it
            undefined

        @ship_selector.select2
            width: '100%'
            placeholder: exportObj.translate @builder.language, 'ui', 'shipSelectorPlaceholder'
            query: (query) =>
                @builder.checkCollection()
                query.callback
                    more: false
                    results: @builder.getAvailableShipsMatching(query.term)
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

        @ship_selector.on 'change', (e) =>
            @setShipType @ship_selector.val()
        # assign ship row an id for testing purposes
        @row.attr 'id', "row-#{@ship_selector.data('select2').container.attr('id')}"

        @pilot_selector.select2
            width: '100%'
            placeholder: exportObj.translate @builder.language, 'ui', 'pilotSelectorPlaceholder'
            query: (query) =>
                @builder.checkCollection()
                query.callback
                    more: false
                    results: @builder.getAvailablePilotsForShipIncluding(@ship_selector.val(), @pilot, query.term)
            minimumResultsForSearch: if $.isMobile() then -1 else 0
            formatResultCssClass: (obj) =>
                if @builder.collection? and (@builder.collection.checks.collectioncheck == "true")
                    not_in_collection = false
                    if obj.id == @pilot?.id
                        # Currently selected pilot; mark as not in collection if it's neither
                        # on the shelf nor on the table
                        unless (@builder.collection.checkShelf('pilot', obj.name) or @builder.collection.checkTable('pilot', obj.name))
                            not_in_collection = true
                    else
                        # Not currently selected; check shelf only
                        not_in_collection = not @builder.collection.checkShelf('pilot', obj.name)
                    if not_in_collection then 'select2-result-not-in-collection' else ''
                else
                    ''

        @pilot_selector.on 'change', (e) =>
            @setPilotById @pilot_selector.select2('val')
            @builder.current_squad.dirty = true
            @builder.container.trigger 'xwing-backend:squadDirtinessChanged'
            @builder.backend_status.fadeOut 'slow'
        @pilot_selector.data('select2').results.on 'mousemove-filtered', (e) =>
            select2_data = $(e.target).closest('.select2-result').data 'select2-data'
            @builder.showTooltip 'Pilot', exportObj.pilotsById[select2_data.id], {ship: @data?.name} if select2_data?.id?
        @pilot_selector.data('select2').container.on 'mouseover', (e) =>
            @builder.showTooltip 'Ship', this if @data?
        @pilot_selector.data('select2').container.on 'touchmove', (e) =>
            @builder.showTooltip 'Ship', this if @data?
            ###if @data? 
                scrollTo(0,$('#info-container').offset().top - 10,'smooth')###


        @pilot_selector.data('select2').container.hide()

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
        action_icons = []
        action_icons_red = []
        for action in effective_stats.actions
            action_icons.push switch action
                when 'Focus'
                    """<i class="xwing-miniatures-font xwing-miniatures-font-focus"></i> """
                when 'Evade'
                    """<i class="xwing-miniatures-font xwing-miniatures-font-evade"></i> """
                when 'Barrel Roll'
                    """<i class="xwing-miniatures-font xwing-miniatures-font-barrelroll"></i> """
                when 'Lock'
                    """<i class="xwing-miniatures-font xwing-miniatures-font-lock"></i> """
                when 'Boost'
                    """<i class="xwing-miniatures-font xwing-miniatures-font-boost"></i> """
                when 'Coordinate'
                    """<i class="xwing-miniatures-font xwing-miniatures-font-coordinate"></i> """
                when 'Jam'
                    """<i class="xwing-miniatures-font xwing-miniatures-font-jam"></i> """
                when 'Reinforce'
                    """<i class="xwing-miniatures-font xwing-miniatures-font-reinforce"></i> """
                when 'Cloak'
                    """<i class="xwing-miniatures-font xwing-miniatures-font-cloak"></i> """
                when 'Slam'
                    """<i class="xwing-miniatures-font xwing-miniatures-font-slam"></i> """
                when 'Rotate Arc'
                    """<i class="xwing-miniatures-font xwing-miniatures-font-rotatearc"></i> """
                when 'Reload'
                    """<i class="xwing-miniatures-font xwing-miniatures-font-reload"></i> """
                when 'Calculate'
                    """<i class="xwing-miniatures-font xwing-miniatures-font-calculate"></i> """
                when "R> Lock"
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-linked"></i> <i class="xwing-miniatures-font info-attack red xwing-miniatures-font-lock"></i>&nbsp;"""
                when "R> Barrel Roll"
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-linked"></i> <i class="xwing-miniatures-font info-attack red xwing-miniatures-font-barrelroll"></i>&nbsp;"""
                when "R> Focus"
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-linked"></i> <i class="xwing-miniatures-font info-attack red xwing-miniatures-font-focus"></i>&nbsp;"""
                when "R> Rotate Arc"
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-linked"></i> <i class="xwing-miniatures-font info-attack red xwing-miniatures-font-rotatearc"></i>&nbsp;"""
                when "> Rotate Arc"
                    """<i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <i class="xwing-miniatures-font info-attack red xwing-miniatures-font-rotatearc"></i>&nbsp;"""
                when "R> Evade"
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-linked"></i> <i class="xwing-miniatures-font info-attack red xwing-miniatures-font-evade"></i>&nbsp;"""
                when "R> Calculate"
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-linked"></i> <i class="xwing-miniatures-font info-attack red xwing-miniatures-font-calculate"></i>&nbsp;"""
                else
                    """<span>&nbsp;#{action}<span>"""

        for actionred in effective_stats.actionsred
            action_icons_red.push switch actionred
                when 'Focus'
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-focus"></i>"""
                when 'Evade'
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-evade"></i>"""
                when 'Barrel Roll'
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-barrelroll"></i>"""
                when 'Lock'
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-lock"></i>"""
                when 'Boost'
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-boost"></i>"""
                when 'Coordinate'
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-coordinate"></i>"""
                when 'Jam'
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-jam"></i>"""
                when 'Reinforce'
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-reinforce"></i>"""
                when 'Cloak'
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-cloak"></i>"""
                when 'Slam'
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-slam"></i>"""
                when 'Rotate Arc'
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-rotatearc"></i>"""
                when 'Reload'
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-reload"></i>"""
                when 'Calculate'
                    """<i class="xwing-miniatures-font red xwing-miniatures-font-calculate"></i>"""
                else
                    """<span>&nbsp;#{action}<span>"""
    
        action_bar = action_icons.join ' '
        action_bar_red = action_icons_red.join ' '

        attack_icon = @data.attack_icon ? 'xwing-miniatures-font-frontarc'

        attackHTML = if (effective_stats.attack?) then $.trim """
            <i class="xwing-miniatures-font header-attack #{attack_icon}"></i>
            <span class="info-data info-attack">#{statAndEffectiveStat((@pilot.ship_override?.attack ? @data.attack), effective_stats, 'attack')}</span>
        """ else ''
        
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
            
        if effective_stats.attackdt?
            attackdtHTML = $.trim """<i class="xwing-miniatures-font header-attack xwing-miniatures-font-doubleturretarc"></i>
            <span class="info-data info-attack">#{statAndEffectiveStat((@pilot.ship_override?.attackdt ? @data.attackdt), effective_stats, 'attackdt')}</span>""" 
        else
            attackdtHTML = ''
            
        energyHTML = if (@pilot.ship_override?.energy? or @data.energy?) then $.trim """
            <i class="xwing-miniatures-font header-energy xwing-miniatures-font-energy"></i>
            <span class="info-data info-energy">#{statAndEffectiveStat((@pilot.ship_override?.energy ? @data.energy), effective_stats, 'energy')}</span>
        """ else ''
            
        forceHTML = if (@pilot.force?) then $.trim """
            <i class="xwing-miniatures-font header-force xwing-miniatures-font-forcecharge"></i>
            <span class="info-data info-force">#{statAndEffectiveStat((@pilot.ship_override?.force ? @pilot.force), effective_stats, 'force')}<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i></span>
        """ else ''

        if @pilot.charge?
            if @pilot.recurring?
                chargeHTML = $.trim """<i class="xwing-miniatures-font header-charge xwing-miniatures-font-charge"></i>
                <span class="info-data info-charge">#{statAndEffectiveStat((@pilot.ship_override?.charge ? @pilot.charge), effective_stats, 'charge')}<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i></span>""" 
            else
                chargeHTML = $.trim """<i class="xwing-miniatures-font header-charge xwing-miniatures-font-charge"></i>
                <span class="info-data info-charge">#{statAndEffectiveStat((@pilot.ship_override?.charge ? @pilot.charge), effective_stats, 'charge')}</span>""" 
        else 
            chargeHTML = ''

        shieldIconHTML = ''
        if effective_stats.shields
            for _ in [1..(effective_stats.shields)]
                shieldIconHTML += """<i class="xwing-miniatures-font header-shield xwing-miniatures-font-shield expanded-hull-or-shield"></i>"""

        hullIconHTML = ''
        if effective_stats.hull
            for _ in [1..(effective_stats.hull)]
                hullIconHTML += """<i class="xwing-miniatures-font header-hull xwing-miniatures-font-hull expanded-hull-or-shield"></i>"""

        html = $.trim """
            <div class="fancy-pilot-header">
                <div class="pilot-header-text">#{if @pilot.display_name then @pilot.display_name else @pilot.name} <i class="xwing-miniatures-ship xwing-miniatures-ship-#{@data.xws}"></i><span class="fancy-ship-type"> #{if @data.display_name then @data.display_name else @data.name}</span></div>
                <div class="mask">
                    <div class="outer-circle">
                        <div class="inner-circle pilot-points">#{@pilot.points}</div>
                    </div>
                </div>
            </div>
            <div class="fancy-pilot-stats">
                <div class="pilot-stats-content">
                    <span class="info-data info-skill">INI #{statAndEffectiveStat(@pilot.skill, effective_stats, 'skill')}</span>
                    #{attackHTML}
                    #{attackbHTML}
                    #{attackfHTML}
                    #{attacktHTML}
                    #{attackdtHTML}
                    #{energyHTML}
                    <i class="xwing-miniatures-font header-agility xwing-miniatures-font-agility"></i>
                    <span class="info-data info-agility">#{statAndEffectiveStat((@pilot.ship_override?.agility ? @data.agility), effective_stats, 'agility')}</span>                    
                    #{hullIconHTML}
                    <i class="xwing-miniatures-font header-hull xwing-miniatures-font-hull simple-hull-or-shield"></i>
                    <span class="info-data info-hull simple-hull-or-shield">#{statAndEffectiveStat((@pilot.ship_override?.hull ? @data.hull), effective_stats, 'hull')}</span>
                    #{shieldIconHTML}
                    <i class="xwing-miniatures-font header-shield xwing-miniatures-font-shield simple-hull-or-shield"></i>
                    <span class="info-data info-shields simple-hull-or-shield">#{statAndEffectiveStat((@pilot.ship_override?.shields ? @data.shields), effective_stats, 'shields')}</span>
                    #{forceHTML}
                    #{chargeHTML}
                    &nbsp;
                    #{action_bar}
                    &nbsp;&nbsp;
                    #{action_bar_red}
                </div>
            </div>
        """

        dialHTML = @builder.getManeuverTableHTML(effective_stats.maneuvers, @data.maneuvers)

        html += $.trim """
            <div class="fancy-dial">
                #{dialHTML}
            </div>
            """
        
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
        
        
        # if @getPoints() != @pilot.points
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
                <td class="points">#{@pilot.points}</td>
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

    toRedditText: ->
        reddit = """**#{@pilot.name} (#{@pilot.points})**    \n"""
        slotted_upgrades = (upgrade for upgrade in @upgrades when upgrade.data?)
        if slotted_upgrades.length > 0
            reddit +="    \n"
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
        tts

    toBBCode: ->
        bbcode = """[b]#{if @pilot.display_name then @pilot.display_name else @pilot.name} (#{@pilot.points})[/b]"""

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
        html = """<b>#{if @pilot.display_name then @pilot.display_name else @pilot.name} (#{@pilot.points})</b><br />"""

        slotted_upgrades = (upgrade for upgrade in @upgrades when upgrade.data?)
        if slotted_upgrades.length > 0
            for upgrade in slotted_upgrades
                points = upgrade.getPoints()
                upgrade_html = upgrade.toSimpleHTML points
                html += upgrade_html if upgrade_html?

        html

    toSerialized: ->
        # PILOT_ID:UPGRADEID1,UPGRADEID2:CONFERREDADDONTYPE1.CONFERREDADDONID1,CONFERREDADDONTYPE2.CONFERREDADDONID2

        # Skip conferred upgrades
        conferred_addons = []
        for upgrade in @upgrades
            conferred_addons = conferred_addons.concat(upgrade?.conferredAddons ? [])
        upgrades = """#{upgrade?.data?.id ? -1 for upgrade, i in @upgrades when upgrade not in conferred_addons}"""

        serialized_conferred_addons = []
        for addon in conferred_addons
            serialized_conferred_addons.push addon.toSerialized()

        [
            @pilot.id,
            upgrades,
            serialized_conferred_addons.join(','),
        ].join ':'


    fromSerialized: (version, serialized) ->
        switch version
            when 1
                # PILOT_ID:UPGRADEID1,UPGRADEID2:TITLEUPGRADE1,TITLEUPGRADE2
                [ pilot_id, upgrade_ids ] = serialized.split ':'

                @setPilotById parseInt(pilot_id)

                for upgrade_id, i in upgrade_ids.split ','
                    upgrade_id = parseInt upgrade_id
                    @upgrades[i].setById upgrade_id if upgrade_id >= 0

            when 2, 3
                # PILOT_ID:UPGRADEID1,UPGRADEID2:CONFERREDADDONTYPE1.CONFERREDADDONID1,CONFERREDADDONTYPE2.CONFERREDADDONID2
                [ pilot_id, upgrade_ids, conferredaddon_pairs ] = serialized.split ':'
                @setPilotById parseInt(pilot_id)

                deferred_ids = []
                for upgrade_id, i in upgrade_ids.split ','
                    upgrade_id = parseInt upgrade_id
                    continue if upgrade_id < 0 or isNaN(upgrade_id)
                    if @upgrades[i].isOccupied()
                        deferred_ids.push upgrade_id
                    else
                        @upgrades[i].setById upgrade_id

                for deferred_id in deferred_ids
                    for upgrade, i in @upgrades
                        continue if upgrade.isOccupied() or upgrade.slot != exportObj.upgradesById[deferred_id].slot
                        upgrade.setById deferred_id
                        break

                if conferredaddon_pairs?
                    conferredaddon_pairs = conferredaddon_pairs.split ','
                else
                    conferredaddon_pairs = []


            when 4, 5
                # PILOT_ID:UPGRADEID1,UPGRADEID2:CONFERREDADDONTYPE1.CONFERREDADDONID1,CONFERREDADDONTYPE2.CONFERREDADDONID2
                if (serialized.split ':').length == 3
                    [ pilot_id, upgrade_ids, conferredaddon_pairs ] = serialized.split ':'
                else 
                    [ pilot_id, upgrade_ids, version_4_compatibility_placeholder_title, version_4_compatibility_placeholder_mod, conferredaddon_pairs ] = serialized.split ':'
                @setPilotById parseInt(pilot_id)

                deferred_ids = []
                for upgrade_id, i in upgrade_ids.split ','
                    upgrade_id = parseInt upgrade_id
                    continue if upgrade_id < 0 or isNaN(upgrade_id)
                    # Defer fat upgrades
                    if @upgrades[i].isOccupied() or @upgrades[i].dataById[upgrade_id]?.also_occupies_upgrades?
                        deferred_ids.push upgrade_id
                    else
                        @upgrades[i].setById upgrade_id

                for deferred_id in deferred_ids
                    for upgrade, i in @upgrades
                        continue if upgrade.isOccupied() or upgrade.slot != exportObj.upgradesById[deferred_id].slot
                        upgrade.setById deferred_id
                        break

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
                            else
                                throw new Error("Expected addon class #{addon_cls.constructor.name} for conferred addon at index #{i} but #{conferred_addon.constructor.name} is there")

        @updateSelections()

    effectiveStats: ->
        stats =
            skill: @pilot.skill
            attack: @pilot.ship_override?.attack ? @data.attack
            attackf: @pilot.ship_override?.attackf ? @data.attackf
            attackb: @pilot.ship_override?.attackb ? @data.attackb
            attackt: @pilot.ship_override?.attackt ? @data.attackt
            attackdt: @pilot.ship_override?.attackdt ? @data.attackdt
            energy: @pilot.ship_override?.energy ? @data.energy
            agility: @pilot.ship_override?.agility ? @data.agility
            hull: @pilot.ship_override?.hull ? @data.hull
            shields: @pilot.ship_override?.shields ? @data.shields
            force: (@pilot.ship_override?.force ? @pilot.force) ? 0
            charge: @pilot.ship_override?.charge ? @pilot.charge
            actions: (@pilot.ship_override?.actions ? @data.actions).slice 0
            actionsred: ((@pilot.ship_override?.actionsred ? @data.actionsred) ? []).slice 0

        # need a deep copy of maneuvers array
        stats.maneuvers = []
        for s in [0 ... (@data.maneuvers ? []).length]
            stats.maneuvers[s] = @data.maneuvers[s].slice 0

        for upgrade in @upgrades
            upgrade.data.modifier_func(stats) if upgrade?.data?.modifier_func?
        @pilot.modifier_func(stats) if @pilot?.modifier_func?
        stats

    validate: ->
        # Remove addons that violate their validation functions (if any) one by one
        # until everything checks out
        # If there is no explicit validation_func, use restriction_func
        max_checks = 128 # that's a lot of addons
        for i in [0...max_checks]
            valid = true
            for upgrade in @upgrades
                func = upgrade?.data?.validation_func ? upgrade?.data?.restriction_func ? undefined
                if func? and not func(this, upgrade)
                    #console.log "Invalid upgrade: #{upgrade?.data?.name}"
                    upgrade.setById null
                    valid = false
                    break

            break if valid
        @updateSelections()

    checkUnreleasedContent: ->
        if @pilot? and not exportObj.isReleased @pilot
            #console.log "#{@pilot.name} is unreleased"
            return true

        for upgrade in @upgrades
            if upgrade?.data? and not exportObj.isReleased upgrade.data
                #console.log "#{upgrade.data.id} is unreleased"
                unless upgrade.data.ignorecollection? #ignore hardpoints
                    return true

        false

    hasAnotherUnoccupiedSlotLike: (upgrade_obj) ->
        for upgrade in @upgrades
            continue if upgrade == upgrade_obj or upgrade.slot != upgrade_obj.slot
            return true unless upgrade.isOccupied()
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
        @destroyed = true
        @rescindAddons()
        @deoccupyOtherUpgrades()
        @selector.select2 'destroy'
        cb args

    setupSelector: (args) ->
        @selector = $ document.createElement 'INPUT'
        @selector.attr 'type', 'hidden'
        @container.append @selector
        args.minimumResultsForSearch = -1 if $.isMobile()
        args.formatResultCssClass = (obj) =>
            if @ship.builder.collection?
                not_in_collection = false
                if obj.id == @data?.id
                    if @data.ignorecollection? #ignore hardpoints
                        not_in_collection = false
                    else
                        # Currently selected card; mark as not in collection if it's neither
                        # on the shelf nor on the table
                        unless (@ship.builder.collection.checkShelf(@type.toLowerCase(), obj.name) or @ship.builder.collection.checkTable(@type.toLowerCase(), obj.name)) 
                            not_in_collection = true
                else
                    if (obj.id == 168) or (obj.id == 169) or (obj.id == 170) #ignore hardpoints
                        not_in_collection = false
                    else
                        # Not currently selected; check shelf only
                        not_in_collection = not @ship.builder.collection.checkShelf(@type.toLowerCase(), obj.name)
                if not_in_collection then 'select2-result-not-in-collection' else ''
                    #and (@ship.builder.collection.checkcollection?) 
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
        @selector.data('select2').container.on 'touchmove', (e) =>
            @ship.builder.showTooltip 'Addon', @data, {addon_type: @type} if @data?
            ###if @data?
                scrollTo(0,$('#info-container').offset().top - 10,'smooth')###

    setById: (id) ->
        @setData @dataById[parseInt id]

    setByName: (name) ->
        @setData @dataByName[$.trim name]

    setData: (new_data) ->
        if new_data?.id != @data?.id
            if @data?.unique?
                await @ship.builder.container.trigger 'xwing:releaseUnique', [ @unadjusted_data, @type, defer() ]
            @rescindAddons()
            @deoccupyOtherUpgrades()
            if new_data?.unique?
                await @ship.builder.container.trigger 'xwing:claimUnique', [ new_data, @type, defer() ]
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
            else
                @deoccupyOtherUpgrades()

            @ship.builder.container.trigger 'xwing:pointsUpdated'

    conferAddons: ->
        if @data.confersAddons? and @data.confersAddons.length > 0
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

    getPoints: ->
        # Moar special case jankiness
        if @data?.variableagility? and @ship?
            Math.max(@data?.basepoints ? 0, (@data?.basepoints ? 0) + ((@ship?.data.agility - 1)*2) + 1)
        else if @data?.variablebase? and not (@ship.data.medium? or @ship.data.large?)
            Math.max(0, @data?.basepoints)
        else if @data?.variablebase? and @ship?.data.medium?
            Math.max(0, (@data?.basepoints ? 0) + (@data?.basepoints))
        else if @data?.variablebase? and @ship?.data.large?
            Math.max(0, (@data?.basepoints ? 0) + (@data?.basepoints * 2))
        else
            @data?.points ? 0
            
    updateSelection: (points) ->
        if @data?
            @selector.select2 'data',
            id: @data.id
            text: "#{if @data.display_name then @data.display_name else @data.name} (#{points})"
        else
            @selector.select2 'data', null

    toString: ->
        if @data?
            "#{if @data.display_name then @data.display_name else @data.name} (#{@data.points})"
        else
            "No #{@type}"

    toHTML: (points) ->
        if @data?
            upgrade_slot_font = (@data.slot ? @type).toLowerCase().replace(/[^0-9a-z]/gi, '')

            match_array = @data.text?match(/(<span.*<\/span>)<br \/><br \/>(.*)/)

            if match_array
                restriction_html = '<div class="card-restriction-container">' + match_array[1] + '</div>'
                text_str = match_array[2]
            else
                restriction_html = ''
                text_str = @data.text

            if @data.rangebonus?
                attackrangebonus = """<span class="upgrade-attack-rangebonus"><i class="xwing-miniatures-font xwing-miniatures-font-rangebonusindicator"></i></span>"""
            else
                attackrangebonus = ''
                
            attackHTML = if (@data.attack?) then $.trim """
                <div class="upgrade-attack">
                    <span class="upgrade-attack-range">#{@data.range}</span>
                    #{attackrangebonus}
                    <span class="info-data info-attack">#{@data.attack}</span>
                    <i class="xwing-miniatures-font xwing-miniatures-font-frontarc"></i>
                </div>
            """ else if (@data.attackt?) then $.trim """
                <div class="upgrade-attack">
                    <span class="upgrade-attack-range">#{@data.range}</span>
                    <span class="info-data info-attack">#{@data.attackt}</span>
                    <i class="xwing-miniatures-font xwing-miniatures-font-singleturretarc"></i>
                </div>
            """ else if (@data.attackbull?) then $.trim """
                <div class="upgrade-attack">
                    <span class="upgrade-attack-range">#{@data.range}</span>
                    <span class="info-data info-attack">#{@data.attackbull}</span>
                    <i class="xwing-miniatures-font xwing-miniatures-font-bullseyearc"></i>
                </div>
            """ else ''

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

    occupiesAnotherUpgradeSlot: ->
        for upgrade in @ship.upgrades
            continue if upgrade.slot != @slot or upgrade == this or upgrade.data?
            if upgrade.occupied_by? and upgrade.occupied_by == this
                return true
        false

    toXWS: (upgrade_dict) ->
        upgrade_type = switch @type
            when 'Upgrade'
                exportObj.toXWSUpgrade[@slot] ? @slot.canonicalize()
            else
                exportObj.toXWSUpgrade[@type] ?  @type.canonicalize()
        (upgrade_dict[upgrade_type] ?= []).push (@data.xws ? @data.canonical_name)

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
            width: '50%'
            placeholder: @placeholderMod_func(exportObj.translate @ship.builder.language, 'ui', 'upgradePlaceholder', @slot)
            allowClear: true
            query: (query) =>
                @ship.builder.checkCollection()
                query.callback
                    more: false
                    results: @ship.builder.getAvailableUpgradesIncluding(@slot, @data, @ship, this, query.term, @filter_func)

class exportObj.RestrictedUpgrade extends exportObj.Upgrade
    constructor: (args) ->
        @filter_func = args.filter_func
        super args
        @serialization_code = 'u'
        if args.auto_equip?
            @setById args.auto_equip


SERIALIZATION_CODE_TO_CLASS =
    'U': exportObj.Upgrade
    'u': exportObj.RestrictedUpgrade
