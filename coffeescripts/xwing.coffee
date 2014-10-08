###
    X-Wing Squad Builder
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
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
    else
        if a.points > b.points then 1 else -1

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

SQUAD_DISPLAY_NAME_MAX_LENGTH = 24

statAndEffectiveStat = (base_stat, effective_stats, key) ->
    """#{base_stat}#{if effective_stats[key] != base_stat then " (#{effective_stats[key]})" else ""}"""

# Assumes cards.js will be loaded

class exportObj.SquadBuilder
    constructor: (args) ->
        # args
        @container = $ args.container
        @faction = $.trim args.faction
        @printable_container = $ args.printable_container

        # internal state
        @ships = []
        @uniques_in_use =
            Pilot:
                []
            Upgrade:
                []
            Modification:
                []
            Title:
                []
        @suppress_automatic_new_ship = false
        @tooltip_currently_displaying = null
        @randomizer_options =
            sources: null
            points: 100
        @total_points = 0
        @isEpic = false
        @maxEpicPointsAllowed = 0

        @backend = null
        @current_squad = {}
        @language = 'English'

        @collection = null

        @setupUI()
        @setupEventHandlers()

        @resetCurrentSquad()

        if $.getParameterByName('f') == @faction
            @loadFromSerialized $.getParameterByName('d')
        else
            @addShip()

    resetCurrentSquad: ->
        @current_squad =
            id: null
            name: $.trim(@squad_name_input.val()) or "Unnamed Squadron"
            dirty: false
            additional_data:
                points: @total_points
                description: ''
                cards: []
                notes: ''
            faction: @faction
        if @total_points > 0
            @current_squad.name = 'Unsaved Squadron'
            @current_squad.dirty = true
        @container.trigger 'xwing-backend:squadNameChanged'
        @container.trigger 'xwing-backend:squadDirtinessChanged'

    newSquadFromScratch: ->
        @squad_name_input.val 'New Squadron'
        @removeAllShips()
        @addShip()
        @resetCurrentSquad()
        @notes.val ''

    setupUI: ->
        DEFAULT_RANDOMIZER_POINTS = 100
        DEFAULT_RANDOMIZER_TIMEOUT_SEC = 2
        DEFAULT_RANDOMIZER_ITERATIONS = 1000

        @status_container = $ document.createElement 'DIV'
        @status_container.addClass 'container-fluid'
        @status_container.append $.trim '''
            <div class="row-fluid">
                <div class="span3 squad-name-container">
                    <div class="display-name">
                        <span class="squad-name"></span>
                        <i class="icon-pencil"></i>
                    </div>
                    <div class="input-append">
                        <input type="text" maxlength="64" placeholder="Name your squad..." />
                        <button class="btn save"><i class="icon-edit"></i></button>
                    </div>
                </div>
                <div class="span4 points-display-container">
                    Points: <span class="total-points">0</span> / <input type="number" class="desired-points" value="100">
                    <select class="game-type-selector">
                        <option value="standard">Standard</option>
                        <option value="epic">Epic</option>
                        <option value="team-epic">Team Epic</option>
                        <option value="custom">Custom</option>
                    </select>
                    <span class="points-remaining-container">(<span class="points-remaining"></span>&nbsp;left)</span>
                    <span class="total-epic-points-container hidden"><br /><span class="total-epic-points">0</span> / <span class="max-epic-points">5</span> Epic Points</span>
                    <span class="content-warning unreleased-content-used hidden"><br /><i class="icon-exclamation-sign"></i>&nbsp;This squad uses unreleased content!</span>
                    <span class="content-warning epic-content-used hidden"><br /><i class="icon-exclamation-sign"></i>&nbsp;This squad uses Epic content!</span>
                    <span class="content-warning illegal-epic-upgrades hidden"><br /><i class="icon-exclamation-sign"></i>&nbsp;Navigator cannot be equipped onto Huge ships in Epic tournament play!</span>
                    <span class="content-warning illegal-epic-too-many-small-ships hidden"><br /><i class="icon-exclamation-sign"></i>&nbsp;You may not field more than 12 of the same type Small ship!</span>
                    <span class="content-warning illegal-epic-too-many-large-ships hidden"><br /><i class="icon-exclamation-sign"></i>&nbsp;You may not field more than 6 of the same type Large ship!</span>
                    <span class="content-warning collection-invalid hidden"><br /><i class="icon-exclamation-sign"></i>&nbsp;You cannot field this list with your collection!</span>
                </div>
                <div class="span5 pull-right button-container">
                    <div class="btn-group pull-right">

                        <button class="btn btn-primary view-as-text"><span class="hidden-phone"><i class="icon-print"></i>&nbsp;Print/View as </span>Text</button>
                        <!-- <button class="btn btn-primary print-list hidden-phone hidden-tablet"><i class="icon-print"></i>&nbsp;Print</button> -->
                        <a class="btn btn-primary hidden collection"><i class="icon-folder-open hidden-phone hidden-tabler"></i>&nbsp;Your Collection</a>
                        <a class="btn btn-primary permalink"><i class="icon-link hidden-phone hidden-tablet"></i>&nbsp;Permalink</a>

                        <!--
                        <button class="btn btn-primary randomize" ><i class="icon-random hidden-phone hidden-tablet"></i>&nbsp;Random!</button>
                        <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="randomize-options">Randomizer Options...</a></li>
                        </ul>
                        -->

                    </div>
                </div>
            </div>

            <div class="row-fluid style="display: none;">
                <div class="span12">
                    <button class="show-authenticated btn btn-primary save-list"><i class="icon-save"></i>&nbsp;Save</button>
                    <button class="show-authenticated btn btn-primary save-list-as"><i class="icon-copy"></i>&nbsp;Save As...</button>
                    <button class="show-authenticated btn btn-primary delete-list disabled"><i class="icon-trash"></i>&nbsp;Delete</button>
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
                    <div class="fancy-header">
                        <div class="squad-name"></div>
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

                <div class="visible-print">
                    <div class="fancy-header">
                        <div class="squad-name"></div>
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

                <div class="visible-phone hidden-print">
                    <h4><span class="squad-name"></span> (<span class="total-points"></span>)<h4>
                </div>

            </div>
            <div class="modal-body">
                <div class="fancy-list hidden-phone"></div>
                <div class="simple-list"></div>
                <div class="bbcode-list">
                    Copy the BBCode below and paste it into your forum post.
                    <textarea></textarea>
                </div>
            </div>
            <div class="modal-footer hidden-print">
                <label class="vertical-space-checkbox"><input type="checkbox" class="toggle-vertical-space" /> Add space for damage/upgrade cards when printing</label>
                <div class="btn-group list-display-mode">
                    <button class="btn select-simple-view">Simple</button>
                    <button class="btn select-fancy-view hidden-phone">Fancy</button>
                    <button class="btn select-bbcode-view">BBCode</button>
                </div>
                <button class="btn print-list hidden-phone"><i class="icon-print"></i>&nbsp;Print</button>
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        """
        @fancy_container = $ @list_modal.find('div.modal-body .fancy-list')
        @fancy_total_points_container = $ @list_modal.find('div.modal-header .total-points')
        @simple_container = $ @list_modal.find('div.modal-body .simple-list')
        @bbcode_container = $ @list_modal.find('div.modal-body .bbcode-list')
        @bbcode_textarea = $ @bbcode_container.find('textarea')
        @bbcode_textarea.attr 'readonly', 'readonly'
        @toggle_vertical_space_container = $ @list_modal.find('.vertical-space-checkbox')
        @toggle_vertical_space_checkbox = $ @list_modal.find('.toggle-vertical-space')

        @select_simple_view_button = $ @list_modal.find('.select-simple-view')
        @select_simple_view_button.click (e) =>
            @select_simple_view_button.blur()
            unless @list_display_mode == 'simple'
                @list_modal.find('.list-display-mode .btn').removeClass 'btn-inverse'
                @select_simple_view_button.addClass 'btn-inverse'
                @list_display_mode = 'simple'
                @simple_container.show()
                @fancy_container.hide()
                @bbcode_container.hide()
                @toggle_vertical_space_container.hide()

        @select_fancy_view_button = $ @list_modal.find('.select-fancy-view')
        @select_fancy_view_button.click (e) =>
            @select_fancy_view_button.blur()
            unless @list_display_mode == 'fancy'
                @list_modal.find('.list-display-mode .btn').removeClass 'btn-inverse'
                @select_fancy_view_button.addClass 'btn-inverse'
                @list_display_mode = 'fancy'
                @fancy_container.show()
                @simple_container.hide()
                @bbcode_container.hide()
                @toggle_vertical_space_container.show()

        @select_bbcode_view_button = $ @list_modal.find('.select-bbcode-view')
        @select_bbcode_view_button.click (e) =>
            @select_bbcode_view_button.blur()
            unless @list_display_mode == 'bbcode'
                @list_modal.find('.list-display-mode .btn').removeClass 'btn-inverse'
                @select_bbcode_view_button.addClass 'btn-inverse'
                @list_display_mode = 'bbcode'
                @bbcode_container.show()
                @simple_container.hide()
                @fancy_container.hide()
                @bbcode_textarea.select()
                @bbcode_textarea.focus()
                @toggle_vertical_space_container.show()

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
        @epic_content_used_container = $ @points_container.find('.epic-content-used')
        @illegal_epic_upgrades_container = $ @points_container.find('.illegal-epic-upgrades')
        @too_many_small_ships_container = $ @points_container.find('.illegal-epic-too-many-small-ships')
        @too_many_large_ships_container = $ @points_container.find('.illegal-epic-too-many-large-ships')
        @collection_invalid_container = $ @points_container.find('.collection-invalid')
        @total_epic_points_container = $ @points_container.find('.total-epic-points-container')
        @total_epic_points_span = $ @total_epic_points_container.find('.total-epic-points')
        @max_epic_points_span = $ @points_container.find('.max-epic-points')
        @permalink = $ @status_container.find('div.button-container a.permalink')
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
                        Sets and Expansions (default all)
                        <select class="randomizer-sources" multiple="1" data-placeholder="Use all sets and expansions">
                        </select>
                    </label>
                    <label>
                        Maximum Seconds to Spend Randomizing
                        <input type="number" class="randomizer-timeout" value="#{DEFAULT_RANDOMIZER_TIMEOUT_SEC}" placeholder="#{DEFAULT_RANDOMIZER_TIMEOUT_SEC}" />
                    </label>
                    <label>
                        Maximum Randomization Iterations
                        <input type="number" class="randomizer-iterations" value="#{DEFAULT_RANDOMIZER_ITERATIONS}" placeholder="#{DEFAULT_RANDOMIZER_ITERATIONS}" />
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
                timeout_sec = parseInt $(@randomizer_options_modal.find('.randomizer-timeout')).val()
                timeout_sec = DEFAULT_RANDOMIZER_TIMEOUT_SEC if (isNaN(timeout_sec) or timeout_sec <= 0)
                iterations = parseInt $(@randomizer_options_modal.find('.randomizer-iterations')).val()
                iterations = DEFAULT_RANDOMIZER_ITERATIONS if (isNaN(iterations) or iterations <= 0)
                #console.log "points=#{points}, sources=#{@randomizer_source_selector.val()}, timeout=#{timeout_sec}, iterations=#{iterations}"
                @randomSquad(points, @randomizer_source_selector.val(), DEFAULT_RANDOMIZER_TIMEOUT_SEC * 1000, iterations)

        @randomizer_options_modal.find('button.do-randomize').click (e) =>
            e.preventDefault()
            @randomizer_options_modal.modal('hide')
            @randomize_button.click()

        @customize_randomizer.click (e) =>
            e.preventDefault()
            @randomizer_options_modal.modal()

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
                @backend_status.html $.trim """
                    <i class="icon-refresh icon-spin"></i>&nbsp;Saving squad...
                """
                @backend_status.show()
                @backend_save_list_button.addClass 'disabled'
                await @backend.save @serialize(), @current_squad.id, @current_squad.name, @faction, additional_data, defer(results)
                if results.success
                    @current_squad.dirty = false
                    if @current_squad.id?
                        @backend_status.html $.trim """
                            <i class="icon-ok"></i>&nbsp;Squad updated successfully.
                        """
                    else
                        @backend_status.html $.trim """
                            <i class="icon-ok"></i>&nbsp;New squad saved successfully.
                        """
                        @current_squad.id = results.id
                    @container.trigger 'xwing-backend:squadDirtinessChanged'
                else
                    @backend_status.html $.trim """
                        <i class="icon-exclamation-sign"></i>&nbsp;#{results.error}
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
                                Squad Notes:
                                <br />
                                <textarea class="squad-notes"></textarea>
                            </label>
                </div>
                <div class="span3 info-container" />
            </div>

            <div class="row-fluid">
                <div class="span9">
                    <button class="btn btn-primary from-xws">Import from XWS (beta)</button>
                    <button class="btn btn-primary to-xws">Export to XWS (beta)</button>
                    <button class="btn btn-primary xws-qr">XWS QR Code (beta)</button>
                </div>
            </div>
        """

        @from_xws_button = content_container.find('button.from-xws')
        @from_xws_button.click (e) =>
            e.preventDefault()
            if @current_squad.dirty and @backend?
                @backend.warnUnsaved this, =>
                    @xws_import_modal.modal 'show'
            else
                @xws_import_modal.modal 'show'

        @to_xws_button = content_container.find('button.to-xws')
        @to_xws_button.click (e) =>
            e.preventDefault()
            textarea = $ @xws_export_modal.find('.xws-content')
            textarea.attr 'readonly'
            textarea.val JSON.stringify(@toXWS())
            @xws_export_modal.modal 'show'
            textarea.select()
            textarea.focus()

        @ship_container = $ content_container.find('div.ship-container')
        @info_container = $ content_container.find('div.info-container')
        @notes_container = $ content_container.find('.notes-container')
        @notes = $ @notes_container.find('textarea.squad-notes')

        @info_container.append $.trim """
            <div class="well well-small info-well">
                <span class="info-name"></span>
                <br />
                <span class="info-sources"></span>
                <table>
                    <tbody>
                        <tr class="info-ship">
                            <td class="info-header">Ship</td>
                            <td class="info-data"></td>
                        </tr>
                        <tr class="info-skill">
                            <td class="info-header">Skill</td>
                            <td class="info-data info-skill"></td>
                        </tr>
                        <tr class="info-energy">
                            <td class="info-header"><img class="icon-energy" src="images/transparent.png" alt="Energy" /></td>
                            <td class="info-data info-energy"></td>
                        </tr>
                        <tr class="info-attack">
                            <td class="info-header"><img class="icon-attack" src="images/transparent.png" alt="Attack" /></td>
                            <td class="info-data info-attack"></td>
                        </tr>
                        <tr class="info-range">
                            <td class="info-header">Range</td>
                            <td class="info-data info-range"></td>
                        </tr>
                        <tr class="info-agility">
                            <td class="info-header"><img class="icon-agility" src="images/transparent.png" alt="Agility" /></td>
                            <td class="info-data info-agility"></td>
                        </tr>
                        <tr class="info-hull">
                            <td class="info-header"><img class="icon-hull" src="images/transparent.png" alt="Hull" /></td>
                            <td class="info-data info-hull"></td>
                        </tr>
                        <tr class="info-shields">
                            <td class="info-header"><img class="icon-shields" src="images/transparent.png" alt="Shields" /></td>
                            <td class="info-data info-shields"></td>
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
                <p class="info-text" />
                <p class="info-maneuvers" />
            </div>
        """
        @info_container.hide()

        @print_list_button = $ @container.find('button.print-list')

        @xws_export_modal = $ document.createElement 'DIV'
        @xws_export_modal.addClass 'modal hide fade xws-modal hidden-print'
        @container.append @xws_export_modal
        @xws_export_modal.append $.trim """
            <div class="modal-header">
                <button type="button" class="close hidden-print" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3>XWS Export</h3>
            </div>
            <div class="modal-body">
                Copy and paste this into an XWS-compliant application to transfer your list.
                <div class="container-fluid">
                    <textarea class="xws-content"></textarea>
                </div>
            </div>
            <div class="modal-footer hidden-print">
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        """

        @xws_import_modal = $ document.createElement 'DIV'
        @xws_import_modal.addClass 'modal hide fade xws-modal hidden-print'
        @container.append @xws_import_modal
        @xws_import_modal.append $.trim """
            <div class="modal-header">
                <button type="button" class="close hidden-print" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h3>XWS Import</h3>
            </div>
            <div class="modal-body">
                Paste XWS here to load a list exported from another application.
                <div class="container-fluid">
                    <textarea class="xws-content" placeholder="Paste XWS here..."></textarea>
                </div>
            </div>
            <div class="modal-footer hidden-print">
                <span class="xws-import-status"></span>&nbsp;
                <button class="btn btn-primary import-xws">Import It!</button>
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        """

        @load_xws_button = $ @xws_import_modal.find('button.import-xws')
        @load_xws_button.click (e) =>
            e.preventDefault()
            import_status = $ @xws_import_modal.find('.xws-import-status')
            import_status.text = 'Loading...'
            do (import_status) =>
                @loadFromXWS @xws_import_modal.find('.xws-content').val(), (res) =>
                    if res.success
                        @xws_import_modal.modal 'hide'
                    else
                        import_status.text res.error

        @container.find('[rel=tooltip]').tooltip()

    setupEventHandlers: ->
        @container.on 'xwing:claimUnique', (e, unique, type, cb) =>
            @claimUnique unique, type, cb
        .on 'xwing:releaseUnique', (e, unique, type, cb) =>
            @releaseUnique unique, type, cb
        .on 'xwing:pointsUpdated', (e, cb=$.noop) =>
            @onPointsUpdated cb
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
            @removeAllShips()
            cb()
        .on 'xwing:afterLanguageLoad', (e, language, cb=$.noop) =>
            @language = language
            @loadFromSerialized @pretranslation_serialized
            for ship in @ships
                ship.updateSelections()
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
            @collection_button.addClass 'hidden'

        @view_list_button.click (e) =>
            e.preventDefault()
            @showTextListModal()

        @print_list_button.click (e) =>
            e.preventDefault()
            # Copy text list to printable
            @printable_container.find('.printable-header').html @list_modal.find('.modal-header').html()
            switch @list_display_mode
                when 'simple'
                    @printable_container.find('.printable-body').html @simple_container.html()
                else
                    @printable_container.find('.printable-body').text ''
                    for ship in @ships
                        @printable_container.find('.printable-body').append ship.toHTML() if ship.pilot?
                    @printable_container.find('.fancy-ship').toggleClass 'tall', @list_modal.find('.toggle-vertical-space').prop('checked')
            window.print()

        $(window).resize =>
            @select_simple_view_button.click() if $(window).width() < 768 and @list_display_mode != 'simple'

        @notes.change @onNotesUpdated
        @notes.on 'keyup', @onNotesUpdated

    onNotesUpdated: =>
        if @total_points > 0
            @current_squad.dirty = true
            @container.trigger 'xwing-backend:squadDirtinessChanged'

    onGameTypeChanged: (gametype, cb=$.noop) =>
        switch gametype
            when 'standard'
                @isEpic = false
                @desired_points_input.val 100
            when 'epic'
                @isEpic = true
                @maxEpicPointsAllowed = 5
                @desired_points_input.val 300
            when 'team-epic'
                @isEpic = true
                @maxEpicPointsAllowed = 3
                @desired_points_input.val 200
            when 'custom'
                @isEpic = false
        @max_epic_points_span.text @maxEpicPointsAllowed
        @onPointsUpdated cb

    onPointsUpdated: (cb=$.noop) =>
        @total_points = 0
        @total_epic_points = 0
        unreleased_content_used = false
        epic_content_used = false
        for ship, i in @ships
            ship.validate()
            @total_points += ship.getPoints()
            @total_epic_points += ship.getEpicPoints()
            ship_uses_unreleased_content = ship.checkUnreleasedContent()
            unreleased_content_used = ship_uses_unreleased_content if ship_uses_unreleased_content
            ship_uses_epic_content = ship.checkEpicContent()
            epic_content_used = ship_uses_epic_content if ship_uses_epic_content
        @total_points_span.text @total_points
        points_left = parseInt(@desired_points_input.val()) - @total_points
        @points_remaining_span.text points_left
        @points_remaining_container.toggleClass 'red', (points_left < 0)
        @unreleased_content_used_container.toggleClass 'hidden', not unreleased_content_used
        @epic_content_used_container.toggleClass 'hidden', (@isEpic or not epic_content_used)

        # Check against Epic restrictions if applicable
        @illegal_epic_upgrades_container.toggleClass 'hidden', true
        @too_many_small_ships_container.toggleClass 'hidden', true
        @too_many_large_ships_container.toggleClass 'hidden', true
        @total_epic_points_container.toggleClass 'hidden', true
        if @isEpic
            @total_epic_points_container.toggleClass 'hidden', false
            @total_epic_points_span.text @total_epic_points
            @total_epic_points_span.toggleClass 'red', (@total_epic_points > @maxEpicPointsAllowed)
            shipCountsByType = {}
            illegal_for_epic = false
            for ship, i in @ships
                if ship?.data?
                    shipCountsByType[ship.data.name] ?= 0
                    shipCountsByType[ship.data.name] += 1
                    if ship.data.huge?
                        for upgrade in ship.upgrades
                            if upgrade?.data?.epic_restriction_func?
                                unless upgrade.data.epic_restriction_func(ship.data, upgrade)
                                    illegal_for_epic = true
                                    break
                            break if illegal_for_epic
            @illegal_epic_upgrades_container.toggleClass 'hidden', not illegal_for_epic
            for ship_name, count of shipCountsByType
                ship_data = exportObj.ships[ship_name]
                if ship_data.large? and count > 6
                    @too_many_large_ships_container.toggleClass 'hidden', false
                else if not ship.huge? and count > 12
                    @too_many_small_ships_container.toggleClass 'hidden', false

        @fancy_total_points_container.text @total_points
        # update permalink while we're at it
        @permalink.attr 'href', "#{window.location.href.split('?')[0]}?f=#{encodeURI @faction}&d=#{encodeURI @serialize()}"
        # and text list
        @fancy_container.text ''
        @simple_container.html '<table class="simple-table"></table>'
        bbcode_ships = []
        for ship in @ships
            if ship.pilot?
                @fancy_container.append ship.toHTML()
                @simple_container.find('table').append ship.toTableRow()
                bbcode_ships.push ship.toBBCode()
        @bbcode_container.find('textarea').val $.trim """#{bbcode_ships.join "\n\n"}

[b][i]Total: #{@total_points}[/i][/b]

[url=#{@permalink.attr 'href'}]View in Yet Another Squad Builder[/url]
"""
        # console.log "#{@faction}: Squad updated, checking collection"
        @checkCollection()
        cb @total_points

    onSquadLoadRequested: (squad) =>
        @current_squad = squad
        @backend_delete_list_button.removeClass 'disabled'
        @squad_name_input.val @current_squad.name
        @squad_name_placeholder.text @current_squad.name
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

    serialize: ->
        #( "#{ship.pilot.id}:#{ship.upgrades[i].data?.id ? -1 for slot, i in ship.pilot.slots}:#{ship.title?.data?.id ? -1}:#{upgrade.data?.id ? -1 for upgrade in ship.title?.conferredUpgrades ? []}:#{ship.modification?.data?.id ? -1}" for ship in @ships when ship.pilot? ).join ';'

        serialization_version = 3
        game_type_abbrev = switch @game_type_selector.val()
            when 'standard'
                's'
            when 'epic'
                'e'
            when 'team-epic'
                't'
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
                when 3
                    # parse out game type
                    [ game_type_abbrev, serialized_ships ] = matches[2].split('!')
                    switch game_type_abbrev
                        when 's'
                            @game_type_selector.val 'standard'
                            @game_type_selector.change()
                        when 'e'
                            @game_type_selector.val 'epic'
                            @game_type_selector.change()
                        when 't'
                            @game_type_selector.val 'team-epic'
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
            # Special case: pilots may be crew and vice versa
            if type == 'Pilot'
                # Check crew
                crew = exportObj.upgradesByLocalizedName[unique.name]
                if crew? and crew?.unique?
                    if @uniqueIndex(crew, 'Upgrade') < 0
                        # Not in crew either; claim it in use as well
                        @uniques_in_use['Upgrade'].push crew
                    else
                        throw new Error("Unique #{type} '#{unique.name}' already claimed as crew")
            else if type == 'Upgrade'
                if unique.slot == 'Crew'
                    # Check pilots
                    pilot = exportObj.pilotsByLocalizedName[unique.name]
                    if pilot? and pilot?.unique?
                        if @uniqueIndex(pilot, 'Pilot') < 0
                            # Not a pilot either; claim it in use as well
                            @uniques_in_use['Pilot'].push pilot
                        else
                            throw new Error("Unique #{type} '#{unique.name}' already claimed as pilot")
                # Multiple upgrades have the same name but different slots
                for upgrade_alias in unique.aka ? []
                    #console.log "Also claiming #{upgrade_alias} in use"
                    @uniques_in_use['Upgrade'].push exportObj.upgrades[upgrade_alias]
            @uniques_in_use[type].push unique
        else
            throw new Error("Unique #{type} '#{unique.name}' already claimed")
        cb()

    releaseUnique: (unique, type, cb) =>
        idx = @uniqueIndex(unique, type)
        if idx >= 0
            @uniques_in_use[type].splice idx, 1
            # Special case: releasing pilot needs to release equivalent crew (and vice versa)
            if type == 'Pilot'
                crew = exportObj.upgradesByLocalizedName[unique.name]
                if crew? and crew?.unique?
                    idx = @uniqueIndex crew, 'Upgrade'
                    if idx < 0
                        throw new Error("Unique crew accompanying #{unique.name} was not also claimed!")
                    @uniques_in_use['Upgrade'].splice idx, 1
            else if type == 'Upgrade'
                if unique.slot == 'Crew'
                    pilot = exportObj.pilotsByLocalizedName[unique.name]
                    if pilot? and pilot?.unique?
                        idx = @uniqueIndex pilot, 'Pilot'
                        if idx < 0
                            throw new Error("Unique pilot accompanying #{unique.name} was not also claimed!")
                        @uniques_in_use['Pilot'].splice idx, 1
                # Release any aliases
                for upgrade_alias in unique.aka ? []
                    #console.log "Also releasing #{upgrade_alias}"
                    alias_idx = @uniqueIndex(exportObj.upgrades[upgrade_alias], 'Upgrade')
                    @uniques_in_use['Upgrade'].splice alias_idx, 1
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

    getAvailableShipsMatching: (term='') ->
        ships = []
        for ship_name, ship_data of exportObj.ships
            if @faction in ship_data.factions and @matcher(ship_data.name, term)
                ships.push
                    id: ship_data.name
                    text: ship_data.name
                    english_name: ship_data.english_name
        ships.sort exportObj.sortHelper

    getAvailablePilotsForShipIncluding: (ship, include_pilot, term='') ->
        # Returns data formatted for Select2
        available_faction_pilots = (pilot for pilot_name, pilot of exportObj.pilotsByLocalizedName when (not ship? or pilot.ship == ship) and pilot.faction == @faction and @matcher(pilot_name, term))

        eligible_faction_pilots = (pilot for pilot_name, pilot of available_faction_pilots when (not pilot.unique? or pilot not in @uniques_in_use['Pilot']))

        # Re-add selected pilot
        if include_pilot? and include_pilot.unique? and @matcher(include_pilot.name, term)
            eligible_faction_pilots.push include_pilot
        ({ id: pilot.id, text: "#{pilot.name} (#{pilot.points})", points: pilot.points, ship: pilot.ship, english_name: pilot.english_name, disabled: pilot not in eligible_faction_pilots } for pilot in available_faction_pilots).sort exportObj.sortHelper

    getAvailableUpgradesIncluding: (slot, include_upgrade, ship, this_upgrade_obj, term='') ->
        # Returns data formatted for Select2
        limited_upgrades_in_use = (upgrade.data for upgrade in ship.upgrades when upgrade?.data?.limited?)

        available_upgrades = (upgrade for upgrade_name, upgrade of exportObj.upgradesByLocalizedName when upgrade.slot == slot and @matcher(upgrade_name, term) and (not upgrade.ship? or upgrade.ship == ship.data.name) and (not upgrade.faction? or upgrade.faction == @faction))
        
        eligible_upgrades = (upgrade for upgrade_name, upgrade of available_upgrades when (not upgrade.unique? or upgrade not in @uniques_in_use['Upgrade']) and (not (ship? and upgrade.restriction_func?) or upgrade.restriction_func(ship, this_upgrade_obj)) and upgrade not in limited_upgrades_in_use)

        # Special case #2 :(
        # current_upgrade_forcibly_removed = false
        if ship?.title?.data?.special_case == 'A-Wing Test Pilot'
            for equipped_upgrade in (upgrade.data for upgrade in ship.upgrades when upgrade?.data?)
                eligible_upgrades.removeItem equipped_upgrade
                # current_upgrade_forcibly_removed = true if equipped_upgrade == include_upgrade

        # Re-enable selected upgrade
        if include_upgrade? and (((include_upgrade.unique? or include_upgrade.limited?) and @matcher(include_upgrade.name, term)))# or current_upgrade_forcibly_removed)
            # available_upgrades.push include_upgrade
            eligible_upgrades.push include_upgrade
        ({ id: upgrade.id, text: "#{upgrade.name} (#{upgrade.points})", points: upgrade.points, english_name: upgrade.english_name, disabled: upgrade not in eligible_upgrades } for upgrade in available_upgrades).sort exportObj.sortHelper

    getAvailableModificationsIncluding: (include_modification, ship, term='') ->
        # Returns data formatted for Select2
        available_modifications = (modification for modification_name, modification of exportObj.modificationsByLocalizedName when @matcher(modification_name, term) and (not modification.ship? or modification.ship == ship.data.name))
        
        eligible_modifications = (modification for modification_name, modification of available_modifications when (not modification.unique? or modification not in @uniques_in_use['Modification']) and (not modification.faction? or modification.faction == @faction) and (not (ship? and modification.restriction_func?) or modification.restriction_func ship))

        # I finally had to add a special case :(  If something else demands it
        # then I will try to make this more systematic, but I haven't come up
        # with a good solution... yet.
        # current_mod_forcibly_removed = false
        if ship?.title?.data?.special_case == 'Royal Guard TIE'
            for equipped_modification in (modification.data for modification in ship.modifications when modification?.data?)
                eligible_modifications.removeItem equipped_modification
                # current_mod_forcibly_removed = true if equipped_modification == include_modification

        # Re-add selected modification
        if include_modification? and ((include_modification.unique? and @matcher(include_modification.name, term)))# or current_mod_forcibly_removed)
            eligible_modifications.push include_modification
        ({ id: modification.id, text: "#{modification.name} (#{modification.points})", points: modification.points, english_name: modification.english_name, disabled: modification not in eligible_modifications } for modification in available_modifications).sort exportObj.sortHelper

    getAvailableTitlesIncluding: (ship, include_title, term='') ->
        # Returns data formatted for Select2
        # Titles are no longer unique!
        available_titles = (title for title_name, title of exportObj.titlesByLocalizedName when title.ship == ship.data.name and @matcher(title_name, term))

        eligible_titles = (title for title_name, title of available_titles when (not title.unique? or title not in @uniques_in_use['Title']) and (not title.faction? or title.faction == @faction) and (not (ship? and title.restriction_func?) or title.restriction_func ship))

        # Re-add selected title
        if include_title? and include_title.unique? and @matcher(include_title.name, term)
            eligible_titles.push include_title
        ({ id: title.id, text: "#{title.name} (#{title.points})", points: title.points, english_name: title.english_name, disabled: title not in eligible_titles } for title in available_titles).sort exportObj.sortHelper

    # Converts a maneuver table for into an HTML table.
    getManeuverTableHTML: (maneuvers, baseManeuvers) ->
        if not maneuvers? or maneuvers.length == 0
            return "Missing maneuver info."

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

                outTable += "<td>"
                if maneuvers[speed][turn] > 0

                    color = switch maneuvers[speed][turn]
                        when 1 then "white"
                        when 2 then "green"
                        when 3 then "red"

                    outTable += """<svg xmlns="http://www.w3.org/2000/svg" width="30px" height="30px" viewBox="0 0 200 200">"""

                    if speed == 0
                        outTable += """<rect x="50" y="50" width="100" height="100" style="fill:#{color}" />"""
                    else

                        outlineColor = "black"
                        if maneuvers[speed][turn] != baseManeuvers[speed][turn]
                            outlineColor = "gold" # highlight manuevers modified by another card (e.g. R2 Astromech makes all 1 & 2 speed maneuvers green)

                        transform = ""
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

                        outTable += $.trim """
                          <path d='#{trianglePath}' fill='#{color}' stroke-width='5' stroke='#{outlineColor}' #{transform}/>
                          <path stroke-width='25' fill='none' stroke='#{outlineColor}' d='#{linePath}' />
                          <path stroke-width='15' fill='none' stroke='#{color}' d='#{linePath}' />
                        """

                    outTable += "</svg>"
                outTable += "</td>"
            outTable += "</tr>"
        outTable += "</tbody></table>"
        outTable

    showTooltip: (type, data) ->
        if data != @tooltip_currently_displaying
            switch type
                when 'Ship'
                    @info_container.find('.info-sources').text (exportObj.translate(@language, 'sources', source) for source in data.pilot.sources).sort().join(', ')
                    effective_stats = data.effectiveStats()
                    extra_actions = $.grep effective_stats.actions, (el, i) ->
                        el not in data.data.actions
                    @info_container.find('.info-name').html """#{if data.pilot.unique then "&middot;&nbsp;" else ""}#{data.pilot.name}#{if data.pilot.epic? then " (#{exportObj.translate(@language, 'ui', 'epic')})" else ""}#{if exportObj.isReleased(data.pilot) then "" else " (#{exportObj.translate(@language, 'ui', 'unreleased')})"}"""
                    @info_container.find('p.info-text').html data.pilot.text ? ''
                    @info_container.find('tr.info-ship td.info-data').text data.pilot.ship
                    @info_container.find('tr.info-ship').show()
                    @info_container.find('tr.info-skill td.info-data').text statAndEffectiveStat(data.pilot.skill, effective_stats, 'skill')
                    @info_container.find('tr.info-skill').show()
                    @info_container.find('tr.info-attack td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.attack ? data.data.attack), effective_stats, 'attack')
                    @info_container.find('tr.info-attack').toggle(data.pilot.ship_override?.attack? or data.data.attack?)
                    @info_container.find('tr.info-energy td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.energy ? data.data.energy), effective_stats, 'energy')
                    @info_container.find('tr.info-energy').toggle(data.pilot.ship_override?.energy? or data.data.energy?)
                    @info_container.find('tr.info-range').hide()
                    @info_container.find('tr.info-agility td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.agility ? data.data.agility), effective_stats, 'agility')
                    @info_container.find('tr.info-agility').show()
                    @info_container.find('tr.info-hull td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.hull ? data.data.hull), effective_stats, 'hull')
                    @info_container.find('tr.info-hull').show()
                    @info_container.find('tr.info-shields td.info-data').text statAndEffectiveStat((data.pilot.ship_override?.shields ? data.data.shields), effective_stats, 'shields')
                    @info_container.find('tr.info-shields').show()
                    @info_container.find('tr.info-actions td.info-data').html (exportObj.translate(@language, 'action', a) for a in data.data.actions.concat( ("<strong>#{exportObj.translate @language, 'action', action}</strong>" for action in extra_actions))).join ', '
                    @info_container.find('tr.info-actions').show()
                    @info_container.find('tr.info-upgrades').show()
                    @info_container.find('tr.info-upgrades td.info-data').text((exportObj.translate(@language, 'slot', slot) for slot in data.pilot.slots).join(', ') or 'None')
                    @info_container.find('p.info-maneuvers').show()
                    @info_container.find('p.info-maneuvers').html(@getManeuverTableHTML(effective_stats.maneuvers, data.data.maneuvers))
                when 'Pilot'
                    @info_container.find('.info-sources').text (exportObj.translate(@language, 'sources', source) for source in data.sources).sort().join(', ')
                    @info_container.find('.info-name').html """#{if data.unique then "&middot;&nbsp;" else ""}#{data.name}#{if data.epic? then " (#{exportObj.translate(@language, 'ui', 'epic')})" else ""}#{if exportObj.isReleased(data) then "" else " (#{exportObj.translate(@language, 'ui', 'unreleased')})"}"""
                    @info_container.find('p.info-text').html data.text ? ''
                    ship = exportObj.ships[data.ship]
                    @info_container.find('tr.info-ship td.info-data').text data.ship
                    @info_container.find('tr.info-ship').show()
                    @info_container.find('tr.info-skill td.info-data').text data.skill
                    @info_container.find('tr.info-skill').show()
                    @info_container.find('tr.info-attack td.info-data').text(data.ship_override?.attack ? ship.attack)
                    @info_container.find('tr.info-attack').toggle(data.ship_override?.attack? or ship.attack?)
                    @info_container.find('tr.info-energy td.info-data').text(data.ship_override?.energy ? ship.energy)
                    @info_container.find('tr.info-energy').toggle(data.ship_override?.energy? or ship.energy?)
                    @info_container.find('tr.info-range').hide()
                    @info_container.find('tr.info-agility td.info-data').text(data.ship_override?.agility ? ship.agility)
                    @info_container.find('tr.info-agility').show()
                    @info_container.find('tr.info-hull td.info-data').text(data.ship_override?.hull ? ship.hull)
                    @info_container.find('tr.info-hull').show()
                    @info_container.find('tr.info-shields td.info-data').text(data.ship_override?.shields ? ship.shields)
                    @info_container.find('tr.info-shields').show()
                    @info_container.find('tr.info-actions td.info-data').text (exportObj.translate(@language, 'action', action) for action in (data.ship_override?.actions ? exportObj.ships[data.ship].actions)).join(', ')
                    @info_container.find('tr.info-actions').show()
                    @info_container.find('tr.info-upgrades').show()
                    @info_container.find('tr.info-upgrades td.info-data').text((exportObj.translate(@language, 'slot', slot) for slot in data.slots).join(', ') or 'None')
                    @info_container.find('p.info-maneuvers').show()
                    @info_container.find('p.info-maneuvers').html(@getManeuverTableHTML(ship.maneuvers, ship.maneuvers))
                when 'Addon'
                    @info_container.find('.info-sources').text (exportObj.translate(@language, 'sources', source) for source in data.sources).sort().join(', ')
                    @info_container.find('.info-name').html """#{if data.unique then "&middot;&nbsp;" else ""}#{data.name}#{if data.limited? then " (#{exportObj.translate(@language, 'ui', 'limited')})" else ""}#{if data.epic? then " (#{exportObj.translate(@language, 'ui', 'epic')})" else ""}#{if exportObj.isReleased(data) then  "" else " (#{exportObj.translate(@language, 'ui', 'unreleased')})"}"""
                    @info_container.find('p.info-text').html data.text ? ''
                    @info_container.find('tr.info-ship').hide()
                    @info_container.find('tr.info-skill').hide()
                    if data.energy?
                        @info_container.find('tr.info-energy td.info-data').text data.energy
                        @info_container.find('tr.info-energy').show()
                    else
                        @info_container.find('tr.info-energy').hide()
                    if data.attack?
                        @info_container.find('tr.info-attack td.info-data').text data.attack
                        @info_container.find('tr.info-attack').show()
                    else
                        @info_container.find('tr.info-attack').hide()
                    if data.range?
                        @info_container.find('tr.info-range td.info-data').text data.range
                        @info_container.find('tr.info-range').show()
                    else
                        @info_container.find('tr.info-range').hide()
                    @info_container.find('tr.info-agility').hide()
                    @info_container.find('tr.info-hull').hide()
                    @info_container.find('tr.info-shields').hide()
                    @info_container.find('tr.info-actions').hide()
                    @info_container.find('tr.info-upgrades').hide()
                    @info_container.find('p.info-maneuvers').hide()
            @info_container.show()
            @tooltip_currently_displaying = data

    _randomizerLoopBody: (data) =>
        if data.keep_running and data.iterations < data.max_iterations
            data.iterations++
            #console.log "Current points: #{@total_points} of #{data.max_points}, iteration=#{data.iterations} of #{data.max_iterations}, keep_running=#{data.keep_running}"
            if @total_points == data.max_points
                # Exact hit!
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
                    unused_addons.push ship.title if ship.title? and not ship.title.data?
                    for modification in ship.modifications
                        unused_addons.push modification unless modification.data?
                # 0 is ship, otherwise addon
                idx = $.randomInt(1 + unused_addons.length)
                if idx == 0
                    # Add random ship
                    #console.log "Add ship"
                    available_ships = @getAvailableShipsMatching()
                    ship_type = available_ships[$.randomInt available_ships.length].text
                    available_pilots = @getAvailablePilotsForShipIncluding(ship_type)
                    pilot = available_pilots[$.randomInt available_pilots.length]
                    if exportObj.pilotsById[pilot.id].sources.intersects(data.allowed_sources)
                        new_ship = @addShip()
                        new_ship.setPilotById pilot.id
                else
                    # Add upgrade/title/modification
                    #console.log "Add addon"
                    addon = unused_addons[idx - 1]
                    switch addon.type
                        when 'Upgrade'
                            available_upgrades = (upgrade for upgrade in @getAvailableUpgradesIncluding(addon.slot, null, addon.ship) when exportObj.upgradesById[upgrade.id].sources.intersects(data.allowed_sources))
                            addon.setById available_upgrades[$.randomInt available_upgrades.length].id if available_upgrades.length > 0
                        when 'Title'
                            available_titles = (title for title in @getAvailableTitlesIncluding(addon.ship) when exportObj.titlesById[title.id].sources.intersects(data.allowed_sources))
                            addon.setById available_titles[$.randomInt available_titles.length].id if available_titles.length > 0
                        when 'Modification'
                            available_modifications = (modification for modification in @getAvailableModificationsIncluding(null, addon.ship) when exportObj.modificationsById[modification.id].sources.intersects(data.allowed_sources))
                            addon.setById available_modifications[$.randomInt available_modifications.length].id if available_modifications.length > 0
                        else
                            throw new Error("Invalid addon type #{addon.type}")

            else
                #console.log "Need to remove something"
                # Remove something
                removable_things = []
                for ship in @ships
                    removable_things.push ship
                    for upgrade in ship.upgrades
                        removable_things.push upgrade if upgrade.data?
                    removable_things.push ship.title if ship.title?.data?
                    removable_things.push ship.modification if ship.modification?.data?
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
            window.clearTimeout data.timer
            # Update all selectors
            for ship in @ships
                ship.updateSelections()
            @suppress_automatic_new_ship = false
            @addShip()

    _makeRandomizerLoopFunc: (data) =>
        () =>
            @_randomizerLoopBody(data)

    randomSquad: (max_points=100, allowed_sources=null, timeout_ms=1000, max_iterations=1000) ->
        @backend_status.fadeOut 'slow'
        @suppress_automatic_new_ship = true
        # Clear all existing ships
        while @ships.length > 0
            @removeShip @ships[0]
        throw new Error("Ships not emptied") if @ships.length > 0
        data =
            iterations: 0
            max_points: max_points
            max_iterations: max_iterations
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
                card_obj[ship.title.data.name] = null if ship.title?.data?
                card_obj[ship.modification.data.name] = null if ship.modification?.data?
        return Object.keys(card_obj).sort()

    getNotes: ->
        @notes.val()

    isSquadPossibleWithCollection: ->
        # console.log "#{@faction}: isSquadPossibleWithCollection()"
        # If the collection is uninitialized or empty, don't actually check it.
        if Object.keys(@collection?.expansions ? {}).length == 0
            # console.log "collection not ready or is empty"
            return true
        @collection.reset()
        validity = true
        for ship in @ships
            if ship.pilot?
                # Try to get both the physical model and the pilot card.
                ship_is_available = @collection.use('ship', ship.pilot.english_ship)
                pilot_is_available = @collection.use('pilot', ship.pilot.english_name)
                # console.log "#{@faction}: Ship #{ship.pilot.english_ship} available: #{ship_is_available}"
                # console.log "#{@faction}: Pilot #{ship.pilot.english_name} available: #{pilot_is_available}"
                validity = false unless ship_is_available and pilot_is_available
                for upgrade in ship.upgrades
                    if upgrade.data?
                        upgrade_is_available = @collection.use('upgrade', upgrade.data.english_name)
                        # console.log "#{@faction}: Upgrade #{upgrade.data.english_name} available: #{upgrade_is_available}"
                        validity = false unless upgrade_is_available
                for modification in ship.modifications
                    if modification.data?
                        modification_is_available = @collection.use('modification', modification.data.english_name)
                        # console.log "#{@faction}: Modification #{modification.data.english_name} available: #{modification_is_available}"
                        validity = false unless modification_is_available
                if ship.title?.data?
                    title_is_available = @collection.use('title', ship.title.data.english_name)
                    # console.log "#{@faction}: Title #{ship.title.data.english_name} available: #{title_is_available}"
                    validity = false unless title_is_available
        validity

    checkCollection: ->
        # console.log "#{@faction}: Checking validity of squad against collection..."
        if @collection?
            @collection_invalid_container.toggleClass 'hidden', @isSquadPossibleWithCollection()

    toXWS: ->
        # Often you will want JSON.stringify(builder.toXWS())
        xws =
            description: @getNotes()
            faction: switch @faction
                when 'Rebel Alliance'
                    'rebels'
                when 'Galactic Empire'
                    'empire'
                when 'Scum and Villainy'
                    'scum'
                else
                    throw new Error("Unrecognized faction #{@faction}")
            name: @current_squad.name
            pilots: []
            points: @total_points
            vendor:
                builder: '(Yet Another) X-Wing Miniatures Squad Builder'
                builder_link: window.location.href.split('?')[0]
                link: @permalink.attr 'href'
            version: '0.1.0'

        for ship in @ships
            if ship.pilot?
                xws.pilots.push ship.toXWS()

        xws

    loadFromXWS: (xws, cb) ->
        try
            xws = JSON.parse xws
        catch e
            cb
                success: false
                error: "Invalid JSON"
            return

        success = null
        error = null

        # TODO - actual semver parsing
        switch xws.version
            when '0.1.0'
                xws_faction = switch xws.faction
                    when 'rebels'
                        'Rebel Alliance'
                    when 'empire'
                        'Galactic Empire'
                    when 'scum'
                        'Scum and Villainy'

                if @faction != xws_faction
                        throw new Error("Attempted to load XWS for #{xws.faction} but builder is #{@faction}")

                if xws.name?
                    @squad_name_input.val xws.name
                if xws.description?
                    @notes.val xws.description

                @suppress_automatic_new_ship = true
                @removeAllShips()

                for pilot in xws.pilots
                    new_ship = @addShip()
                    new_ship.setPilot exportObj.pilotsByFactionCanonicalName[@faction][pilot.name]

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
        @modifications = []
        @title = null

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
        return unless other.pilot? and other.data? and not other.pilot.unique
        #console.log "Setting pilot to ID=#{other.pilot.id}"
        @setPilotById other.pilot.id

        # set up non-conferred addons
        other_conferred_addons = []
        other_conferred_addons = other_conferred_addons.concat(other.title.conferredAddons) if other.title? and other.title.conferredAddons.length > 0
        other_conferred_addons = other_conferred_addons.concat(other.modifications[0].conferredAddons) if other.modifications[0]?.data?
        #console.log "Looking for conferred upgrades..."
        for other_upgrade, i in other.upgrades
            #console.log "Examining upgrade #{other_upgrade}"
            if other_upgrade.data? and other_upgrade not in other_conferred_addons and not other_upgrade.data.unique
                #console.log "Copying non-unique upgrade #{other_upgrade} into slot #{i}"
                @upgrades[i].setById other_upgrade.data.id
        #console.log "Checking other ship title #{other.title ? null}"
        @title.setById other.title.data.id if other.title?.data? and not other.title.data.unique
        #console.log "Checking other ship base modification #{other.modifications[0] ? null}"
        @modifications[0].setById other.modifications[0].data.id if other.modifications[0]?.data and not other.modifications[0].data.unique

        # set up conferred non-unique addons
        #console.log "Attempt to copy conferred addons..."
        if other.title? and other.title.conferredAddons.length > 0
            #console.log "Other ship title #{other.title} conferrs addons"
            for other_conferred_addon, i in other.title.conferredAddons
                @title.conferredAddons[i].setById other_conferred_addon.data.id if other_conferred_addon.data? and not other_conferred_addon.data?.unique
        if other.modifications[0]? and other.modifications[0].conferredAddons.length > 0
            #console.log "Other ship base modification #{other.modifications[0]} conferrs addons"
            for other_conferred_addon, i in other.modifications[0].conferredAddons
                @modifications[0].conferredAddons[i].setById other_conferred_addon.data.id if other_conferred_addon.data? and not other_conferred_addon.data?.unique

        @updateSelections()
        @builder.container.trigger 'xwing:pointsUpdated'
        @builder.current_squad.dirty = true
        @builder.container.trigger 'xwing-backend:squadDirtinessChanged'

    setShipType: (ship_type) ->
        @pilot_selector.data('select2').container.show()
        if ship_type != @pilot?.ship
            # Ship changed; select first non-unique
            @setPilot (exportObj.pilotsById[result.id] for result in @builder.getAvailablePilotsForShipIncluding(ship_type) when not exportObj.pilotsById[result.id].unique)[0]

        # Clear ship background class
        for cls in @row.attr('class').split(/\s+/)
            if cls.indexOf('ship-') == 0
                @row.removeClass cls

        # Show delete button
        @remove_button.fadeIn 'fast'

        # Ship background
        @row.addClass "ship-#{ship_type.toLowerCase().replace(/[^a-z0-9]/gi, '')}0"

        @builder.container.trigger 'xwing:shipUpdated'

    setPilotById: (id) ->
        @setPilot exportObj.pilotsById[parseInt id]

    setPilotByName: (name) ->
        @setPilot exportObj.pilotsByLocalizedName[$.trim name]

    setPilot: (new_pilot) ->
        if new_pilot != @pilot
            ship_changed = @pilot? and new_pilot?.ship == @pilot.ship
            old_upgrades = {}
            old_title = null
            old_modifications = []
            if ship_changed
                # track addons and try to reassign them
                for upgrade in @upgrades
                    if upgrade?.data?
                        old_upgrades[upgrade.slot] ?= []
                        old_upgrades[upgrade.slot].push upgrade
                old_title = @title if @title?
                for modification in @modifications
                    if modification?.data?
                        old_modifications.push modification
            @resetPilot()
            @resetAddons()
            if new_pilot?
                @data = exportObj.ships[new_pilot?.ship]
                if new_pilot?.unique?
                    await @builder.container.trigger 'xwing:claimUnique', [ new_pilot, 'Pilot', defer() ]
                @pilot = new_pilot
                @setupAddons() if @pilot?
                @copy_button.toggle not @pilot?.unique
                @setShipType @pilot.ship
                if ship_changed
                    # Hopefully this order is correct
                    if old_title?.data?
                        @title.setById old_title.data.id
                    for modification in @modifications
                        old_modification = old_modifications.shift()
                        if old_modification?
                            modification.setById old_modification.data.id
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
        # Title
        if @pilot.ship of exportObj.titlesByShip
            @title = new exportObj.Title
                ship: this
                container: @addon_container
        # Modifications
        @modifications.push new exportObj.Modification
            ship: this
            container: @addon_container

    resetAddons: ->
        await
            @title.destroy defer() if @title?
            for upgrade in @upgrades
                upgrade.destroy defer()
            for modification in @modifications
                modification.destroy defer() if modification?
        @upgrades = []
        @modifications = []
        @title = null

    getPoints: ->
        points = (@pilot?.points ? 0) +
                    (@title?.getPoints() ? 0)
        for upgrade in @upgrades
            points += upgrade.getPoints()
        for modification in @modifications
            points += (modification?.getPoints() ? 0)
        @points_container.find('span').text points
        if points > 0
            @points_container.fadeTo 'fast', 1
        else
            @points_container.fadeTo 0, 0
        points

    getEpicPoints: ->
        @data?.epic_points ? 0

    updateSelections: ->
        if @pilot?
            @ship_selector.select2 'data',
                id: @pilot.ship
                text: @pilot.ship
            @pilot_selector.select2 'data',
                id: @pilot.id
                text: "#{@pilot.name} (#{@pilot.points})"
            @pilot_selector.data('select2').container.show()
            for upgrade in @upgrades
                upgrade.updateSelection()
            @title.updateSelection() if @title?
            for modification in @modifications
                modification.updateSelection() if modification?
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
                <button class="btn btn-danger remove-pilot"><span class="visible-desktop visible-tablet hidden-phone" data-toggle="tooltip" title="Remove Pilot"><i class="icon-remove"></i></span><span class="hidden-desktop hidden-tablet visible-phone">Remove Pilot</span></button>
                <button class="btn copy-pilot"><span class="visible-desktop visible-tablet hidden-phone" data-toggle="tooltip" title="Clone Pilot"><i class="icon-copy"></i></span><span class="hidden-desktop hidden-tablet visible-phone">Clone Pilot</span></button>
            </div>
        '''
        @row.find('.button-container span').tooltip()

        @ship_selector = $ @row.find('input.ship-selector-container')
        @pilot_selector = $ @row.find('input.pilot-selector-container')

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
                if @builder.collection?
                    not_in_collection = false
                    if @pilot? and obj.id == exportObj.ships[@pilot.ship].id
                        # Currently selected ship; mark as not in collection if it's neither
                        # on the shelf nor on the table
                        unless (@builder.collection.checkShelf('ship', obj.english_name) or @builder.collection.checkTable('pilot', obj.english_name))
                            not_in_collection = true
                    else
                        # Not currently selected; check shelf only
                        not_in_collection = not @builder.collection.checkShelf('ship', obj.english_name)
                    if not_in_collection then 'select2-result-not-in-collection' else ''
                else
                    ''

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
                if @builder.collection?
                    not_in_collection = false
                    if obj.id == @pilot?.id
                        # Currently selected pilot; mark as not in collection if it's neither
                        # on the shelf nor on the table
                        unless (@builder.collection.checkShelf('pilot', obj.english_name) or @builder.collection.checkTable('pilot', obj.english_name))
                            not_in_collection = true
                    else
                        # Not currently selected; check shelf only
                        not_in_collection = not @builder.collection.checkShelf('pilot', obj.english_name)
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
            @builder.showTooltip 'Pilot', exportObj.pilotsById[select2_data.id] if select2_data?.id?
        @pilot_selector.data('select2').container.on 'mouseover', (e) =>
            @builder.showTooltip 'Ship', this if @data?

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
            clone.copyFrom this
        @copy_button.hide()

    teardownUI: ->
        @row.text ''
        @row.remove()

    toString: ->
        if @pilot?
            "Pilot #{@pilot.name} flying #{@data.name}"
        else
            "Ship without pilot"

    toHTML: ->
        effective_stats = @effectiveStats()
        action_icons = []
        for action in effective_stats.actions
            action_icons.push switch action
                when 'Focus'
                    """<i class="xwing-font xwing-font-focus"></i>"""
                when 'Evade'
                    """<i class="xwing-font xwing-font-evade"></i>"""
                when 'Barrel Roll'
                    """<i class="xwing-font xwing-font-barrelroll"></i>"""
                when 'Target Lock'
                    """<i class="xwing-font xwing-font-targetlock"></i>"""
                when 'Boost'
                    """<i class="xwing-font xwing-font-boost"></i>"""
                when 'Coordinate'
                    """<i class="xwing-font xwing-font-coordinate"></i>"""
                when 'Jam'
                    """<i class="xwing-font xwing-font-jam"></i>"""
                when 'Recover'
                    """<i class="xwing-font xwing-font-recover"></i>"""
                when 'Reinforce'
                    """<i class="xwing-font xwing-font-reinforce"></i>"""
                when 'Cloak'
                    """<i class="xwing-font xwing-font-cloak"></i>"""
                else
                    """<span>&nbsp;#{action}<span>"""
        action_bar = action_icons.join ' '

        attackHTML = if (@pilot.ship_override?.attack? or @data.attack?) then $.trim """
            <img class="icon-attack" src="images/transparent.png" />
            <span class="info-data info-attack">#{statAndEffectiveStat((@pilot.ship_override?.attack ? @data.attack), effective_stats, 'attack')}</span>
        """ else ''

        energyHTML = if (@pilot.ship_override?.energy? or @data.energy?) then $.trim """
            <img class="icon-energy" src="images/transparent.png" />
            <span class="info-data info-energy">#{statAndEffectiveStat((@pilot.ship_override?.energy ? @data.energy), effective_stats, 'energy')}</span>
        """ else ''

        html = $.trim """
            <div class="fancy-pilot-header">
                <div class="pilot-header-text">#{@pilot.name} / #{@data.name}</div>
                <div class="mask">
                    <div class="outer-circle">
                        <div class="inner-circle pilot-points">#{@pilot.points}</div>
                    </div>
                </div>
            </div>
            <div class="fancy-pilot-stats">
                <div class="pilot-stats-content">
                    <span class="info-data info-skill">PS #{statAndEffectiveStat(@pilot.skill, effective_stats, 'skill')}</span>
                    #{attackHTML}
                    #{energyHTML}
                    <img class="icon-agility" src="images/transparent.png" />
                    <span class="info-data info-agility">#{statAndEffectiveStat((@pilot.ship_override?.agility ? @data.agility), effective_stats, 'agility')}</span>
                    <img class="icon-hull" src="images/transparent.png" />
                    <span class="info-data info-hull">#{statAndEffectiveStat((@pilot.ship_override?.hull ? @data.hull), effective_stats, 'hull')}</span>
                    <img class="icon-shields" src="images/transparent.png" />
                    <span class="info-data info-shields">#{statAndEffectiveStat((@pilot.ship_override?.shields ? @data.shields), effective_stats, 'shields')}</span>
                    &nbsp;
                    #{action_bar}
                </div>
            </div>
        """

        if @pilot.text
            html += $.trim """
                <div class="fancy-pilot-text">#{@pilot.text}</div>
            """

        slotted_upgrades = (upgrade for upgrade in @upgrades when upgrade.data?)
            .concat (modification for modification in @modifications when modification.data?)
        slotted_upgrades.push @title if @title?.data?

        if slotted_upgrades.length > 0
            html += $.trim """
                <div class="fancy-upgrade-container">
            """

            for upgrade in slotted_upgrades
                html += upgrade.toHTML()

            html += $.trim """
                </div>
            """

        """<div class="fancy-ship">#{html}</div>"""

    toTableRow: ->
        table_html = $.trim """
            <tr class="simple-pilot">
                <td class="name">#{@pilot.name} &mdash; #{@data.name}</td>
                <td class="points">#{@pilot.points}</td>
            </tr>
        """

        slotted_upgrades = (upgrade for upgrade in @upgrades when upgrade.data?)
            .concat (modification for modification in @modifications when modification.data?)
        slotted_upgrades.push @title if @title?.data?
        if slotted_upgrades.length > 0
            for upgrade in slotted_upgrades
                table_html += upgrade.toTableRow()

        table_html += '<tr><td>&nbsp;</td><td></td></tr>'
        table_html

    toBBCode: ->
        bbcode = """[b]#{@pilot.name} (#{@pilot.points})[/b]"""

        slotted_upgrades = (upgrade for upgrade in @upgrades when upgrade.data?)
            .concat (modification for modification in @modifications when modification.data?)
        slotted_upgrades.push @title if @title?.data?
        if slotted_upgrades.length > 0
            bbcode +="\n"
            bbcode_upgrades= []
            for upgrade in slotted_upgrades
                upgrade_bbcode = upgrade.toBBCode()
                bbcode_upgrades.push upgrade_bbcode if upgrade_bbcode?
            bbcode += bbcode_upgrades.join "\n"

        bbcode

    toSerialized: ->
        # PILOT_ID:UPGRADEID1,UPGRADEID2:TITLEID:MODIFICATIONID:CONFERREDADDONTYPE1.CONFERREDADDONID1,CONFERREDADDONTYPE2.CONFERREDADDONID2

        # Skip conferred upgrades
        conferred_addons = @title?.conferredAddons ? []
        for modification in @modifications
            conferred_addons = conferred_addons.concat(modification?.conferredAddons ? [])
        upgrades = """#{upgrade?.data?.id ? -1 for upgrade, i in @upgrades when upgrade not in conferred_addons}"""

        serialized_conferred_addons = []
        for addon in conferred_addons
            serialized_conferred_addons.push addon.toSerialized()

        [
            @pilot.id,
            upgrades,
            @title?.data?.id ? -1,
            @modifications[0]?.data?.id ? -1,
            serialized_conferred_addons.join(','),
        ].join ':'


    fromSerialized: (version, serialized) ->
        switch version
            when 1
                # PILOT_ID:UPGRADEID1,UPGRADEID2:TITLEID:TITLEUPGRADE1,TITLEUPGRADE2:MODIFICATIONID
                [ pilot_id, upgrade_ids, title_id, title_conferred_upgrade_ids, modification_id ] = serialized.split ':'

                @setPilotById parseInt(pilot_id)

                for upgrade_id, i in upgrade_ids.split ','
                    upgrade_id = parseInt upgrade_id
                    @upgrades[i].setById upgrade_id if upgrade_id >= 0

                title_id = parseInt title_id
                @title.setById title_id if title_id >= 0

                if @title? and @title.conferredAddons.length > 0
                    for upgrade_id, i in title_conferred_upgrade_ids.split ','
                        upgrade_id = parseInt upgrade_id
                        @title.conferredAddons[i].setById upgrade_id if upgrade_id >= 0

                modification_id = parseInt modification_id
                @modifications[0].setById modification_id if modification_id >= 0

            when 2, 3
                # PILOT_ID:UPGRADEID1,UPGRADEID2:TITLEID:MODIFICATIONID:CONFERREDADDONTYPE1.CONFERREDADDONID1,CONFERREDADDONTYPE2.CONFERREDADDONID2
                [ pilot_id, upgrade_ids, title_id, modification_id, conferredaddon_pairs ] = serialized.split ':'
                @setPilotById parseInt(pilot_id)

                for upgrade_id, i in upgrade_ids.split ','
                    upgrade_id = parseInt upgrade_id
                    @upgrades[i].setById upgrade_id if upgrade_id >= 0

                title_id = parseInt title_id
                @title.setById title_id if title_id >= 0

                modification_id = parseInt modification_id
                @modifications[0].setById modification_id if modification_id >= 0

                # We confer title addons before modification addons, to pick an arbitrary ordering.
                if conferredaddon_pairs?
                    conferredaddon_pairs = conferredaddon_pairs.split ','
                else
                    conferredaddon_pairs = []

                if @title? and @title.conferredAddons.length > 0
                    title_conferred_addon_pairs = conferredaddon_pairs.splice 0, @title.conferredAddons.length
                    for conferredaddon_pair, i in title_conferred_addon_pairs
                        [ addon_type_serialized, addon_id ] = conferredaddon_pair.split '.'
                        addon_id = parseInt addon_id
                        addon_cls = SERIALIZATION_CODE_TO_CLASS[addon_type_serialized]
                        conferred_addon = @title.conferredAddons[i]
                        if conferred_addon instanceof addon_cls
                            conferred_addon.setById addon_id
                        else
                            throw new Error("Expected addon class #{addon_cls.constructor.name} for conferred addon at index #{i} but #{conferred_addon.constructor.name} is there")

                for modification in @modifications
                    if modification?.data? and modification.conferredAddons.length > 0
                        modification_conferred_addon_pairs = conferredaddon_pairs.splice 0, modification.conferredAddons.length
                        for conferredaddon_pair, i in modification_conferred_addon_pairs
                            [ addon_type_serialized, addon_id ] = conferredaddon_pair.split '.'
                            addon_id = parseInt addon_id
                            addon_cls = SERIALIZATION_CODE_TO_CLASS[addon_type_serialized]
                            conferred_addon = modification.conferredAddons[i]
                            if conferred_addon instanceof addon_cls
                                conferred_addon.setById addon_id
                            else
                                throw new Error("Expected addon class #{addon_cls.constructor.name} for conferred addon at index #{i} but #{conferred_addon.constructor.name} is there")

        @updateSelections()

    effectiveStats: ->
        stats =
            skill: @pilot.skill
            attack: @pilot.ship_override?.attack ? @data.attack
            energy: @pilot.ship_override?.energy ? @data.energy
            agility: @pilot.ship_override?.agility ? @data.agility
            hull: @pilot.ship_override?.hull ? @data.hull
            shields: @pilot.ship_override?.shields ? @data.shields
            actions: (@pilot.ship_override?.actions ? @data.actions).slice 0

        # need a deep copy of maneuvers array
        stats.maneuvers = []
        for s in [0 ... (@data.maneuvers ? []).length]
            stats.maneuvers[s] = @data.maneuvers[s].slice 0

        for upgrade in @upgrades
            upgrade.data.modifier_func(stats) if upgrade?.data?.modifier_func?
        @title.data.modifier_func(stats) if @title?.data?.modifier_func?
        for modification in @modifications
            modification.data.modifier_func(stats) if modification?.data?.modifier_func?
        @pilot.modifier_func(stats) if @pilot?.modifier_func?
        stats

    validate: ->
        # Remove addons that violate their validation functions (if any) one by one
        # until everything checks out
        # If there is no explicit validation_func, use restriction_func
        max_checks = 128 # that's a lot of addons (Epic?)
        for i in [0...max_checks]
            valid = true
            for upgrade in @upgrades
                func = upgrade?.data?.validation_func ? upgrade?.data?.restriction_func ? undefined
                if func? and not func(this, upgrade)
                    #console.log "Invalid upgrade: #{upgrade?.data?.name}"
                    upgrade.setById null
                    valid = false
                    break

            func = @title?.data?.validation_func ? @title?.data?.restriction_func ? undefined
            if func? and not func this
                #console.log "Invalid title: #{@title?.data?.name}"
                @title.setById null
                continue
            for modification in @modifications
                func = modification?.data?.validation_func ? modification?.data?.restriction_func ? undefined
                if func? and not func(this, modification)
                    #console.log "Invalid modification: #{modification?.data?.name}"
                    modification.setById null
                    valid = false
                    break
            break if valid
        @updateSelections()

    checkUnreleasedContent: ->
        if @pilot? and not exportObj.isReleased @pilot
            #console.log "#{@pilot.name} is unreleased"
            return true

        if @title?.data? and not exportObj.isReleased @title.data
            #console.log "#{@title.data.name} is unreleased"
            return true

        for modification in @modifications
            if modification?.data? and not exportObj.isReleased modification.data
                #console.log "#{modification.data.name} is unreleased"
                return true

        for upgrade in @upgrades
            if upgrade?.data? and not exportObj.isReleased upgrade.data
                #console.log "#{upgrade.data.name} is unreleased"
                return true

        false

    checkEpicContent: ->
        if @pilot? and @pilot.epic?
            return true

        if @title?.data?.epic?
            return true

        for modification in @modifications
            if modification?.data?.epic?
                return true

        for upgrade in @upgrades
            if upgrade?.data?.epic?
                return true

        false

    toXWS: ->
        xws =
            name: @pilot.canonical_name
            points: @getPoints()
            ship: @data.canonical_name
            upgrades: {}

        for upgrade in @upgrades
            if upgrade?.data?
                upgrade.toXWS xws.upgrades

        for modification in @modifications
            if modification?.data?
                modification.toXWS xws.upgrades

        if @title?.data?
            @title.toXWS xws.upgrades

        xws

class GenericAddon
    constructor: (args) ->
        # args
        @ship = args.ship
        @container = $ args.container

        # internal state
        @data = null
        @conferredAddons = []
        @serialization_code = 'X'

        # Overridden by children
        @type = null
        @dataByName = null
        @dataById = null

    destroy: (cb, args...) ->
        if @data?.unique?
            await @ship.builder.container.trigger 'xwing:releaseUnique', [ @data, @type, defer() ]
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
                    # Currently selected card; mark as not in collection if it's neither
                    # on the shelf nor on the table
                    unless (@ship.builder.collection.checkShelf(@type.toLowerCase(), obj.english_name) or @ship.builder.collection.checkTable(@type.toLowerCase(), obj.english_name))
                        not_in_collection = true
                else
                    # Not currently selected; check shelf only
                    not_in_collection = not @ship.builder.collection.checkShelf(@type.toLowerCase(), obj.english_name)
                if not_in_collection then 'select2-result-not-in-collection' else ''
            else
                ''


        @selector.select2 args
        @selector.on 'change', (e) =>
            @setById @selector.select2('val')
            @ship.builder.current_squad.dirty = true
            @ship.builder.container.trigger 'xwing-backend:squadDirtinessChanged'
            @ship.builder.backend_status.fadeOut 'slow'
        @selector.data('select2').results.on 'mousemove-filtered', (e) =>
            select2_data = $(e.target).closest('.select2-result').data 'select2-data'
            @ship.builder.showTooltip 'Addon', @dataById[select2_data.id] if select2_data?.id?
        @selector.data('select2').container.on 'mouseover', (e) =>
            @ship.builder.showTooltip 'Addon', @data if @data?

    setById: (id) ->
        @setData @dataById[parseInt id]

    setByName: (name) ->
        @setData @dataByName[$.trim name]

    setData: (new_data) ->
        if new_data != @data
            if @data?.unique?
                await @ship.builder.container.trigger 'xwing:releaseUnique', [ @data, @type, defer() ]
            @rescindAddons()
            if new_data?.unique?
                await @ship.builder.container.trigger 'xwing:claimUnique', [ new_data, @type, defer() ]
            @data = new_data
            @conferAddons()
            @ship.builder.container.trigger 'xwing:pointsUpdated'

    conferAddons: ->
        if @data?.confersAddons? and @data.confersAddons.length > 0
            for addon in @data.confersAddons
                cls = addon.type
                args =
                    ship: @ship
                    container: @container
                args.slot = addon.slot if addon.slot?
                addon = new cls args
                if addon instanceof exportObj.Upgrade
                    @ship.upgrades.push addon
                else if addon instanceof exportObj.Modification
                    @ship.modifications.push addon
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
            else if addon instanceof exportObj.Modification
                @ship.modifications.removeItem addon
            else
                throw new Error("Unexpected addon type for addon #{addon}")
        @conferredAddons = []

    getPoints: ->
        @data?.points ? 0

    updateSelection: ->
        if @data?
            @selector.select2 'data',
                id: @data.id
                text: "#{@data.name} (#{@data.points})"
        else
            @selector.select2 'data', null

    toString: ->
        if @data?
            "#{@data.name} (#{@data.points})"
        else
            "No #{@type}"

    toHTML: ->
        if @data?
            upgrade_slot_font = (@data.slot ? '').toLowerCase().replace(/[^0-9a-z]/gi, '')
            $.trim """
                <div class="upgrade-container">
                    <div class="mask">
                        <div class="outer-circle">
                            <div class="inner-circle upgrade-points">#{@data.points}</div>
                        </div>
                    </div>
                    <div class="upgrade-name"><i class="xwing-font xwing-font-#{upgrade_slot_font}"></i> #{@data.name}</div>
                </div>
            """
        else
            ''

    toTableRow: ->
        if @data?
            $.trim """
                <tr class="simple-addon">
                    <td class="name">#{@data.name}</td>
                    <td class="points">#{@data.points}</td>
                </tr>
            """
        else
            ''

    toBBCode: ->
        if @data?
            """[i]#{@data.name} (#{@data.points})[/i]"""
        else
            null

    toSerialized: ->
        """#{@serialization_code}.#{@data?.id ? -1}"""

    toXWS: (upgrade_dict) ->
        upgrade_type = switch @type
            when 'Upgrade'
                switch @slot
                    when 'Astromech'
                        'astromechdroid'
                    when 'Elite'
                        'elitepilottalent'
                    else
                        @slot.canonicalize()
            else
                @type.canonicalize()
        (upgrade_dict[upgrade_type] ?= []).push @data.canonical_name

class exportObj.Upgrade extends GenericAddon
    constructor: (args) ->
        # args
        super args
        @slot = args.slot
        @type = 'Upgrade'
        @dataById = exportObj.upgradesById
        @dataByName = exportObj.upgradesByLocalizedName
        @serialization_code = 'U'

        @setupSelector()

    setupSelector: ->
        super
            width: '50%'
            placeholder: exportObj.translate @ship.builder.language, 'ui', 'upgradePlaceholder', @slot
            allowClear: true
            query: (query) =>
                @ship.builder.checkCollection()
                query.callback
                    more: false
                    results: @ship.builder.getAvailableUpgradesIncluding(@slot, @data, @ship, this, query.term)

class exportObj.Modification extends GenericAddon
    constructor: (args) ->
        super args
        @type = 'Modification'
        @dataById = exportObj.modificationsById
        @dataByName = exportObj.modificationsByLocalizedName
        @serialization_code = 'M'

        @setupSelector()

    setupSelector: ->
        super
            width: '50%'
            placeholder: exportObj.translate @ship.builder.language, 'ui', 'modificationPlaceholder'
            allowClear: true
            query: (query) =>
                @ship.builder.checkCollection()
                query.callback
                    more: false
                    results: @ship.builder.getAvailableModificationsIncluding(@data, @ship, query.term)

class exportObj.Title extends GenericAddon
    constructor: (args) ->
        super args
        @type = 'Title'
        @dataById = exportObj.titlesById
        @dataByName = exportObj.titlesByLocalizedName
        @serialization_code = 'T'

        @setupSelector()

    setupSelector: ->
        super
            width: '50%'
            placeholder: exportObj.translate @ship.builder.language, 'ui', 'titlePlaceholder'
            allowClear: true
            query: (query) =>
                @ship.builder.checkCollection()
                query.callback
                    more: false
                    results: @ship.builder.getAvailableTitlesIncluding(@ship, @data, query.term)

SERIALIZATION_CODE_TO_CLASS =
    'M': exportObj.Modification
    'T': exportObj.Title
    'U': exportObj.Upgrade
