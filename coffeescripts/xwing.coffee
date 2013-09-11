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

$.isMobile = () ->
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

SQUAD_DISPLAY_NAME_MAX_LENGTH = 24

# Assumes cards.js has been loaded

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

        @backend = null
        @current_squad = {}

        @setupUI()
        @setupEventHandlers()

        @resetCurrentSquad()

        if $.getParameterByName('f') == @faction
            @loadFromSerialized $.getParameterByName('d')
        else
            @addShip()

    resetCurrentSquad: () ->
        @current_squad =
            id: null
            name: $.trim(@squad_name_input.val())
            dirty: false
            additional_data:
                points: @total_points
                description: ''
                cards: []
            faction: @faction
        if @total_points > 0
            @current_squad.name = 'Unsaved Squad'
            @current_squad.dirty = true
            @container.trigger 'xwing-backend:squadNameChanged'
        @container.trigger 'xwing-backend:squadDirtinessChanged'

    setupUI: () ->
        DEFAULT_RANDOMIZER_POINTS = 100
        DEFAULT_RANDOMIZER_TIMEOUT_SEC = 2
        DEFAULT_RANDOMIZER_ITERATIONS = 1000

        @status_container = $ document.createElement 'DIV'
        @status_container.addClass 'container-fluid'
        @status_container.append $.trim '''
            <div class="row-fluid">
                <div class="span4 squad-name-container">
                    <div class="display-name">
                        <span class="squad-name">Unnamed Squadron</span>
                        <i class="icon-pencil"></i>
                    </div>
                    <div class="input-append">
                        <input type="text" maxlength="64" placeholder="Name your squad..." />
                        <button class="btn save"><i class="icon-edit"></i></button>
                    </div>
                </div>
                <div class="span2 points-display-container">Total Points: 0</div>
                <div class="span6 pull-right button-container">
                    <div class="btn-group pull-right">

                    <button class="btn btn-primary view-as-text">View as Text</button>
                    <button class="btn btn-primary print-list hidden-phone hidden-tablet"><i class="icon-print"></i>&nbsp;Print</button>
                    <a class="btn btn-primary permalink"><i class="icon-link hidden-phone hidden-tablet"></i>&nbsp;Permalink</a>

                    <button class="btn btn-primary randomize" ><i class="icon-random hidden-phone hidden-tablet"></i>&nbsp;Random Squad!</button>
                    <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="randomize-options">Randomizer Options...</a></li>
                    </ul>
                </div>
            </div>

            <div class="row-fluid show-authenticated" style="display: none;">
                <div class="span12">
                    <button class="btn btn-primary save-list"><i class="icon-save"></i>&nbsp;Save</button>
                    <button class="btn btn-primary save-list-as"><i class="icon-copy"></i>&nbsp;Save As...</button>
                    <button class="btn btn-primary delete-list disabled"><i class="icon-trash"></i>&nbsp;Delete</button>
                    <button class="btn btn-primary backend-list-my-squads show-authenticated">Your Squads</button>
                    <!-- <button class="btn btn-primary backend-list-all-squads show-authenticated">Everyone's Squads</button> -->
                    <span class="backend-status"></span>
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
                <h3><span class="squad-name"></span> (#{@faction}): <span class="total-points">0</span> Points </h3>
            </div>
            <div class="modal-body">
                <table class="fancy-list">
                    <tbody>
                    </tbody>
                </table>
            </div>
            <div class="modal-footer hidden-print">
                <button class="btn print-list hidden-phone"><i class="icon-print"></i>&nbsp;Print</button>
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        """
        @text_container = $ @list_modal.find('div.modal-body .fancy-list tbody')
        @text_total_points_container = $ @list_modal.find('div.modal-header span.total-points')

        @squad_name_container = $ @status_container.find('div.squad-name-container')
        @squad_name_display = $ @container.find('.display-name')
        @squad_name_placeholder = $ @container.find('.squad-name')
        @squad_name_input = $ @squad_name_container.find('input')
        @squad_name_save_button = $ @squad_name_container.find('button.save')
        @squad_name_input.closest('div').hide()
        @points_container = $ @status_container.find('div.points-display-container')
        @permalink = $ @status_container.find('div.button-container a.permalink')
        @view_list_button = $ @status_container.find('div.button-container button.view-as-text')
        @randomize_button = $ @status_container.find('div.button-container button.randomize')
        @customize_randomizer = $ @status_container.find('div.button-container a.randomize-options')
        @backend_status = $ @status_container.find('.backend-status')
        @backend_status.hide()

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
        $(document).append @randomizer_options_modal
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
            if @backend? and not $(e.target).hasClass('disabled')
                additional_data =
                    points: @total_points
                    description: @describeSquad()
                    cards: @listCards()
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
        @backend_save_list_as_button.click (e) =>
            e.preventDefault()
            if @backend? and not $(e.target).hasClass('disabled')
                @backend.showSaveAsModal this
        @backend_delete_list_button = $ @container.find('button.delete-list')
        @backend_delete_list_button.click (e) =>
            e.preventDefault()
            if @backend? and not $(e.target).hasClass('disabled')

                @backend.showDeleteModal this

        content_container = $ document.createElement 'DIV'
        content_container.addClass 'container-fluid'
        @container.append content_container
        content_container.append $.trim """
            <div class="row-fluid">
                <div class="span9 ship-container" />
                <div class="span3 hidden-phone info-container" />
            </div>
        """

        @ship_container = $ content_container.find('div.ship-container')
        @info_container = $ content_container.find('div.info-container')

        @info_container.append $.trim """
            <div class="well well-small info-well">
                <span class="info-name"></span>
                <table>
                    <tbody>
                        <tr class="info-ship">
                            <td>Ship</td>
                            <td class="info-data"></td>
                        </tr>
                        <tr class="info-skill">
                            <td>Skill</td>
                            <td class="info-data info-skill"></td>
                        </tr>
                        <tr class="info-attack">
                            <td><img class="icon-attack" src="images/transparent.png" alt="Attack" /></td>
                            <td class="info-data info-attack"></td>
                        </tr>
                        <tr class="info-range">
                            <td>Range</td>
                            <td class="info-data info-range"></td>
                        </tr>
                        <tr class="info-agility">
                            <td><img class="icon-agility" src="images/transparent.png" alt="Agility" /></td>
                            <td class="info-data info-agility"></td>
                        </tr>
                        <tr class="info-hull">
                            <td><img class="icon-hull" src="images/transparent.png" alt="Hull" /></td>
                            <td class="info-data info-hull"></td>
                        </tr>
                        <tr class="info-shields">
                            <td><img class="icon-shields" src="images/transparent.png" alt="Shields" /></td>
                            <td class="info-data info-shields"></td>
                        </tr>
                        <tr class="info-actions">
                            <td>Actions</td>
                            <td class="info-data"></td>
                        </tr>
                        <tr class="info-upgrades">
                            <td>Upgrades</td>
                            <td class="info-data"></td>
                        </tr>
                    </tbody>
                </table>
                <p class="info-text" />
            </div>
        """
        @info_container.hide()

        @print_list_button = $ @container.find('button.print-list')

        @container.find('[rel=tooltip]').tooltip()

    setupEventHandlers: () ->
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

        $(window).on 'xwing-backend:authenticationChanged', (e) =>
            @resetCurrentSquad()

        @view_list_button.click (e) =>
            e.preventDefault()
            @showTextListModal()

        @print_list_button.click (e) =>
            e.preventDefault()
            # Copy text list to printable
            @printable_container.find('.printable-header').html @list_modal.find('.modal-header').html()
            @printable_container.find('.printable-body').html @list_modal.find('.modal-body').html()
            window.print()

    onPointsUpdated: (cb) =>
        @total_points = 0
        for ship, i in @ships
            @total_points += ship.getPoints()
        @points_container.text "Total Points: #{@total_points}"
        @text_total_points_container.text @total_points
        # update permalink while we're at it
        @permalink.attr 'href', "#{window.location.href.split('?')[0]}?f=#{encodeURI @faction}&d=#{encodeURI @serialize()}"
        # and text list
        @text_container.text ''
        for ship in @ships
            @text_container.append ship.toHTML() if ship.pilot?
        cb @total_points

    onSquadLoadRequested: (squad) =>
        @current_squad = squad
        @current_squad.dirty = false
        @container.trigger 'xwing-backend:squadDirtinessChanged'
        @backend_delete_list_button.removeClass 'disabled'
        @squad_name_input.val @current_squad.name
        @squad_name_placeholder.text @current_squad.name
        @loadFromSerialized squad.serialized

    onSquadDirtinessChanged: () =>
        if @current_squad.dirty
            @backend_save_list_button.removeClass 'disabled'
        else
            @backend_save_list_button.addClass 'disabled'
        if @current_squad.id?
            @backend_delete_list_button.removeClass 'disabled'
        else
            @backend_delete_list_button.addClass 'disabled'

    onSquadNameChanged: () =>
        if @current_squad.name.length > SQUAD_DISPLAY_NAME_MAX_LENGTH
            short_name = "#{@current_squad.name.substr(0, SQUAD_DISPLAY_NAME_MAX_LENGTH)}&hellip;"
        else
            short_name = @current_squad.name
        @squad_name_placeholder.text ''
        @squad_name_placeholder.append short_name
        @squad_name_input.val @current_squad.name


    showTextListModal: () ->
        # Display modal
        @list_modal.modal 'show'

    serialize: () ->
        # PILOT_ID:UPGRADEID1,UPGRADEID2:TITLEID:TITLEUPGRADE1,TITLEUPGRADE2:MODIFICATIONID; ...
        ( "#{ship.pilot.id}:#{ship.upgrades[i].data?.id ? -1 for slot, i in ship.pilot.slots}:#{ship.title?.data?.id ? -1}:#{upgrade.data?.id ? -1 for upgrade in ship.title?.conferredUpgrades ? []}:#{ship.modification?.data?.id ? -1}" for ship in @ships when ship.pilot? ).join ';'

    loadFromSerialized: (serialized) ->
        @suppress_automatic_new_ship = true
        # Clear all existing ships
        while @ships.length > 0
            @removeShip @ships[0]
        throw "Ships not emptied" if @ships.length > 0
        for ship_str in serialized.split ';'
            [ pilot_id, upgrade_ids, title_id, title_conferred_upgrade_ids, modification_id ] = ship_str.split ':'

            new_ship = @addShip()
            new_ship.setPilotById parseInt(pilot_id)

            for upgrade_id, i in upgrade_ids.split ','
                upgrade_id = parseInt upgrade_id
                new_ship.upgrades[i].setById upgrade_id if upgrade_id >= 0

            title_id = parseInt title_id
            new_ship.title.setById title_id if title_id >= 0

            if new_ship.title? and new_ship.title.conferredUpgrades.length > 0
                for upgrade_id, i in title_conferred_upgrade_ids.split ','
                    upgrade_id = parseInt upgrade_id
                    new_ship.title.conferredUpgrades[i].setById upgrade_id if upgrade_id >= 0

            modification_id = parseInt modification_id
            new_ship.modification.setById modification_id if modification_id >= 0

            new_ship.updateSelections()
        @suppress_automatic_new_ship = false
        # Finally, the unassigned ship
        @addShip()

    uniqueIndex: (unique, type) ->
        if type not of @uniques_in_use
            throw "Invalid unique type '#{type}'"
        @uniques_in_use[type].indexOf unique

    claimUnique: (unique, type, cb) =>
        if @uniqueIndex(unique, type) < 0
            # Special case: pilots may be crew and vice versa
            if type == 'Pilot'
                # Check crew
                crew = exportObj.upgrades[unique.name]
                if crew? and crew?.unique?
                    if @uniqueIndex(crew, 'Upgrade') < 0
                        # Not in crew either; claim it in use as well
                        @uniques_in_use['Upgrade'].push crew
                    else
                        throw "Unique #{type} '#{unique.name}' already claimed as crew"
            else if type == 'Upgrade' and unique.slot == 'Crew'
                # Check pilots
                pilot = exportObj.pilots[unique.name]
                if pilot? and pilot?.unique?
                    if @uniqueIndex(pilot, 'Pilot') < 0
                        # Not a pilot either; claim it in use as well
                        @uniques_in_use['Pilot'].push pilot
                    else
                        throw "Unique #{type} '#{unique.name}' already claimed as pilot"
            @uniques_in_use[type].push unique
        else
            throw "Unique #{type} '#{unique.name}' already claimed"
        cb()

    releaseUnique: (unique, type, cb) =>
        idx = @uniqueIndex(unique, type)
        if idx >= 0
            @uniques_in_use[type].splice idx, 1
            # Special case: releasing pilot needs to release equivalent crew (and vice versa)
            if type == 'Pilot'
                crew = exportObj.upgrades[unique.name]
                if crew? and crew?.unique?
                    idx = @uniqueIndex crew, 'Upgrade'
                    if idx < 0
                        throw "Unique crew accompanying #{unique.name} was not also claimed!"
                    @uniques_in_use['Upgrade'].splice idx, 1
            else if type == 'Upgrade' and unique.slot == 'Crew'
                pilot = exportObj.pilots[unique.name]
                if pilot? and pilot?.unique?
                    idx = @uniqueIndex pilot, 'Pilot'
                    if idx < 0
                        throw "Unique pilot accompanying #{unique.name} was not also claimed!"
                    @uniques_in_use['Pilot'].splice idx, 1
        else
            throw "Unique #{type} '#{unique.name}' not in use"
        cb()

    addShip: () ->
        new_ship = new Ship
            builder: this
            container: @ship_container
        @ships.push new_ship
        new_ship


    removeShip: (ship) ->
        await ship.destroy defer()
        await @container.trigger 'xwing:pointsUpdated', defer()

    matcher: (item, term) ->
        item.toUpperCase().indexOf(term.toUpperCase()) >= 0

    getAvailablePilotsIncluding: (include_pilot, term='') ->
        # Returns data formatted for Select2
        unclaimed_faction_pilots = (pilot for pilot_name, pilot of exportObj.pilots when exportObj.ships[pilot.ship].faction == @faction and @matcher(pilot_name, term) and (not pilot.unique? or pilot not in @uniques_in_use['Pilot']))
        # Re-add selected pilot
        if include_pilot? and include_pilot.unique? and @matcher(include_pilot.name, term)
            unclaimed_faction_pilots.push include_pilot
        result_pilots_by_ship = {}
        for result_pilot in ({ id: pilot.id, text: "#{pilot.name} (#{pilot.points})", points: pilot.points, ship: pilot.ship} for pilot in unclaimed_faction_pilots)
            if result_pilot.ship not of result_pilots_by_ship
                result_pilots_by_ship[result_pilot.ship] = []
            result_pilots_by_ship[result_pilot.ship].push result_pilot
        results = []
        for ship in Object.keys(result_pilots_by_ship).sort()
            results.push
                text: ship
                children: result_pilots_by_ship[ship].sort exportObj.sortHelper
        results

    getAvailableUpgradesIncluding: (slot, include_upgrade, term='') ->
        # Returns data formatted for Select2
        unclaimed_upgrades = (upgrade for upgrade_name, upgrade of exportObj.upgrades when upgrade.slot == slot and @matcher(upgrade_name, term) and (not upgrade.unique? or upgrade not in @uniques_in_use['Upgrade']) and (not upgrade.faction? or upgrade.faction == @faction))
        # Re-add selected upgrade
        if include_upgrade? and include_upgrade.unique? and @matcher(include_upgrade.name, term)
            unclaimed_upgrades.push include_upgrade
        ({ id: upgrade.id, text: "#{upgrade.name} (#{upgrade.points})", points: upgrade.points } for upgrade in unclaimed_upgrades).sort exportObj.sortHelper

    getAvailableModificationsIncluding: (include_modification, ship, term='') ->
        # Returns data formatted for Select2
        unclaimed_modifications = (modification for modification_name, modification of exportObj.modifications when @matcher(modification_name, term) and (not modification.unique? or modification not in @uniques_in_use['Modification']) and (not modification.faction? or modification.faction == @faction) and (not (ship? and modification.restriction_func?) or modification.restriction_func ship))
        # Re-add selected modification
        if include_modification? and include_modification.unique? and @matcher(include_modification.name, term)
            unclaimed_modifications.push include_modification
        ({ id: modification.id, text: "#{modification.name} (#{modification.points})", points: modification.points } for modification in unclaimed_modifications).sort exportObj.sortHelper

    getAvailableTitlesIncluding: (ship_name, include_title, term='') ->
        # Returns data formatted for Select2
        # All titles are unique
        unclaimed_titles = (title for title_name, title of exportObj.titles when title.ship == ship_name and @matcher(title_name, term) and title not in @uniques_in_use['Title'] and (not title.faction? or title.faction == @faction))
        # Re-add selected title
        if include_title? and @matcher(include_title.name, term)
            unclaimed_titles.push include_title
        ({ id: title.id, text: "#{title.name} (#{title.points})", points: title.points } for title in unclaimed_titles).sort exportObj.sortHelper

    showTooltip: (type, data) ->
        if data != @tooltip_currently_displaying
            @info_container.find('.info-name').html """#{if data.unique then "&middot;&nbsp;" else ""}#{data.name}"""
            @info_container.find('p.info-text').html data.text ? ''
            switch type
                when 'Pilot'
                    ship = exportObj.ships[data.ship]
                    @info_container.find('tr.info-ship td.info-data').text data.ship
                    @info_container.find('tr.info-ship').show()
                    @info_container.find('tr.info-skill td.info-data').text data.skill
                    @info_container.find('tr.info-skill').show()
                    @info_container.find('tr.info-attack td.info-data').text(data.ship_override?.attack ? ship.attack)
                    @info_container.find('tr.info-attack').show()
                    @info_container.find('tr.info-range').hide()
                    @info_container.find('tr.info-agility td.info-data').text(data.ship_override?.agility ? ship.agility)
                    @info_container.find('tr.info-agility').show()
                    @info_container.find('tr.info-hull td.info-data').text(data.ship_override?.hull ? ship.hull)
                    @info_container.find('tr.info-hull').show()
                    @info_container.find('tr.info-shields td.info-data').text(data.ship_override?.shields ? ship.shields)
                    @info_container.find('tr.info-shields').show()
                    @info_container.find('tr.info-actions td.info-data').text exportObj.ships[data.ship].actions.join(', ')
                    @info_container.find('tr.info-actions').show()
                    @info_container.find('tr.info-upgrades').show()
                    @info_container.find('tr.info-upgrades td.info-data').text(data.slots.join(', ') or 'None')
                when 'Addon'
                    @info_container.find('tr.info-ship').hide()
                    @info_container.find('tr.info-skill').hide()
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
                    unused_addons.push ship.modification if ship.modification? and not ship.modification.data?
                # 0 is ship, otherwise addon
                idx = $.randomInt(1 + unused_addons.length)
                if idx == 0
                    # Add random ship
                    #console.log "Add ship"
                    available_pilots = @getAvailablePilotsIncluding()
                    ship_group = available_pilots[$.randomInt available_pilots.length]
                    pilot = ship_group.children[$.randomInt ship_group.children.length]
                    if exportObj.pilotsById[pilot.id].sources.intersects(data.allowed_sources)
                        new_ship = @addShip()
                        new_ship.setPilotById pilot.id
                else
                    # Add upgrade/title/modification
                    #console.log "Add addon"
                    addon = unused_addons[idx - 1]
                    switch addon.type
                        when 'Upgrade'
                            available_upgrades = (upgrade for upgrade in @getAvailableUpgradesIncluding(addon.slot) when exportObj.upgradesById[upgrade.id].sources.intersects(data.allowed_sources))
                            addon.setById available_upgrades[$.randomInt available_upgrades.length].id if available_upgrades.length > 0
                        when 'Title'
                            available_titles = (title for title in @getAvailableTitlesIncluding(addon.ship.name) when exportObj.titlesById[title.id].sources.intersects(data.allowed_sources))
                            addon.setById available_titles[$.randomInt available_titles.length].id if available_titles.length > 0
                        when 'Modification'
                            available_modifications = (modification for modification in @getAvailableModificationsIncluding(null, addon.ship.data) when exportObj.modificationsById[modification.id].sources.intersects(data.allowed_sources))
                            addon.setById available_modifications[$.randomInt available_modifications.length].id if available_modifications.length > 0
                        else
                            throw "Invalid addon type #{addon.type}"

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
                        throw "Unknown thing to remove #{thing_to_remove}"
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
        throw "Ships not emptied" if @ships.length > 0
        data =
            iterations: 0
            max_points: max_points
            allowed_sources: allowed_sources
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

    describeSquad: () ->
        (ship.pilot.name for ship in @ships when ship.pilot?).join ', '

    listCards: () ->
        card_obj = {}
        for ship in @ships
            if ship.pilot?
                card_obj[ship.pilot.name] = null
                for upgrade in ship.upgrades
                    card_obj[upgrade.data.name] = null if upgrade.data?
                card_obj[ship.title.data.name] = null if ship.title?.data?
                card_obj[ship.modification.data.name] = null if ship.modification?.data?
        return Object.keys(card_obj).sort()

class Ship
    constructor: (args) ->
        # args
        @builder = args.builder
        @container = args.container

        # internal state
        @pilot = null
        @data = null # ship data
        @upgrades = []
        @modification = null
        @title = null

        @setupUI()

    destroy: (cb) ->
        @resetPilot()
        @resetAddons()
        @teardownUI()
        idx = @builder.ships.indexOf this
        if idx < 0
            throw "Ship not registered with builder"
        @builder.ships.splice idx, 1
        cb()

    setPilotById: (id) ->
        @setPilot exportObj.pilotsById[parseInt id]

    setPilotByName: (name) ->
        @setPilot exportObj.pilots[$.trim name]

    setPilot: (new_pilot) ->
        if new_pilot != @pilot
            unless @pilot?
                @builder.addShip() unless @builder.suppress_automatic_new_ship
                @remove_button.fadeIn 'fast'
            @resetPilot()
            @resetAddons()
            @data = exportObj.ships[new_pilot?.ship]
            if new_pilot?.unique?
                await @builder.container.trigger 'xwing:claimUnique', [ new_pilot, 'Pilot', defer() ]
            @pilot = new_pilot
            @setupAddons() if @pilot?
            @builder.container.trigger 'xwing:pointsUpdated'
            # Optional background
            for cls in @row.attr('class').split ' '
                if cls.indexOf('ship-') == 0
                    @row.removeClass cls
            @row.addClass "ship-#{@data.name.toLowerCase().replace(/[^a-z0-9]/gi, '')}0"

    resetPilot: () ->
        if @pilot?.unique?
            await @builder.container.trigger 'xwing:releaseUnique', [ @pilot, 'Pilot', defer() ]
        @pilot = null

    setupAddons: () ->
        # Upgrades from pilot
        for slot in @pilot.slots ? []
            @upgrades.push new Upgrade
                ship: this
                container: @addon_container
                slot: slot
        # Title
        if @pilot.ship of exportObj.titlesByShip
            @title = new Title
                ship: this
                container: @addon_container
        # Modification
        @modification = new Modification
            ship: this
            container: @addon_container

    resetAddons: () ->
        await
            for upgrade, i in @upgrades
                upgrade.destroy defer()
            @modification.destroy defer() if @modification?
            @title.destroy defer() if @title?
        @upgrades = []
        @modification = null
        @title = null

    getPoints: () ->
        points = (@pilot?.points ? 0) +
                    (@modification?.getPoints() ? 0) +
                    (@title?.getPoints() ? 0)
        for upgrade in @upgrades
            points += upgrade.getPoints()
        @points_container.text points
        @points_container.show() if @pilot?
        points

    updateSelections: () ->
        if @pilot?
            @pilot_selector.select2 'data',
                id: @pilot.id
                text: "#{@pilot.name} (#{@pilot.points})"
            for upgrade in @upgrades
                upgrade.updateSelection()
            @title.updateSelection() if @title?
            @modification.updateSelection() if @modification?
        else
            @pilot_selector.select2 'data', null

    setupUI: () ->
        @row = $ document.createElement 'DIV'
        @row.addClass 'row-fluid ship'
        @container.append @row

        @row.append $.trim '''
            <div class="span3 pilot-selector-container">
                <input type="hidden" />
            </div>
            <div class="span1 points-display-container">
                <span></span>
            </div>
            <div class="span7 addon-container" />
            <div class="span1 remove-btn-container">
                <button class="btn btn-danger"><span class="visible-desktop visible-tablet hidden-phone">&times;</span><span class="hidden-desktop hidden-tablet visible-phone">Remove Pilot</span></button>
            </div>
        '''
        @pilot_selector = $ @row.find('div.pilot-selector-container input[type=hidden]')
        @pilot_selector.select2
            width: '100%'
            placeholder: 'Select a pilot'
            query: (query) =>
                query.callback
                    more: false
                    results: @builder.getAvailablePilotsIncluding(@pilot, query.term)
            minimumResultsForSearch: if $.isMobile() then -1 else 0
        @pilot_selector.on 'change', (e) =>
            @setPilotById @pilot_selector.select2('val')
            @builder.current_squad.dirty = true
            @builder.container.trigger 'xwing-backend:squadDirtinessChanged'
            @builder.backend_status.fadeOut 'slow'
        @pilot_selector.data('select2').results.on 'mousemove-filtered', (e) =>
            select2_data = $(e.target).closest('.select2-result-selectable').data 'select2-data'
            @builder.showTooltip 'Pilot', exportObj.pilotsById[select2_data.id] if select2_data?.id?
        @pilot_selector.data('select2').container.on 'mouseover', (e) =>
            @builder.showTooltip 'Pilot', @pilot if @pilot?

        @points_container = $ @row.find('.points-display-container span')
        @points_container.hide()

        @addon_container = $ @row.find('div.addon-container')

        @remove_button = $ @row.find('div.remove-btn-container button')
        @remove_button.click (e) =>
            e.preventDefault()
            @row.slideUp 'fast', () =>
                @builder.removeShip this
                @backend_status.fadeOut 'slow'
        @remove_button.hide()

    teardownUI: () ->
        @row.text ''
        @row.remove()

    toString: () ->
        if @pilot?
            "Pilot #{@pilot.name} flying #{@data.name}"
        else
            "Ship without pilot"

    toHTML: () ->
        ###
        if (upgrade for upgrade in ship.upgrades when upgrade.data?).length > 0 or ship.modification?.data? or ship.title?.data?
            addon_list = '<ul>'
            addon_list += "<li>#{ship.title.toString()}</li>" if ship.title?.data?
            for upgrade in ship.upgrades
                if upgrade.data?
                    addon_list += "<li>#{upgrade.toString()}</li>"
            addon_list += "<li>#{ship.modification.toString()}</li>" if ship.modification?.data?
            addon_list += '</ul>'
            total_points = "Total: #{ship.getPoints()}"
        else
            total_points = ''
            addon_list = ''
        ###

        action_bar = ""
        for action in exportObj.ships[@data.name].actions
            action_bar += switch action
                when 'Focus'
                    """<img class="icon-focus" src="images/transparent.png" />"""
                when 'Evade'
                    """<img class="icon-evade" src="images/transparent.png" />"""
                when 'Barrel Roll'
                    """<img class="icon-barrel-roll" src="images/transparent.png" />"""
                when 'Target Lock'
                    """<img class="icon-target-lock" src="images/transparent.png" />"""
                when 'Boost'
                    """<img class="icon-boost" src="images/transparent.png" />"""
                else
                    """<span>&nbsp;#{action}<span>"""

        $.trim """
            <tr class="omg-hax"><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
            <tr class="pilot-header">
                <td colspan="10" class="pilot-name">#{@pilot.name} / #{@data.name}</td>
                <td colspan="2" class="pilot-points">#{@pilot.points}</td>
            </tr>
            <tr class="stats">
                <td colspan="12" class="stat-block">
                    <span class="info-data info-skill">#{@pilot.skill}</span>
                    <img class="icon-attack" src="images/transparent.png" />
                    <span class="info-data info-attack">#{@pilot.ship_override?.attack ? @data.attack}</span>
                    <img class="icon-agility" src="images/transparent.png" />
                    <span class="info-data info-agility">#{@pilot.ship_override?.agility ? @data.agility}</span>
                    <img class="icon-hull" src="images/transparent.png" />
                    <span class="info-data info-hull">#{@pilot.ship_override?.hull ? @data.hull}</span>
                    <img class="icon-shields" src="images/transparent.png" />
                    <span class="info-data info-shields">#{@pilot.ship_override?.shields ? @data.shields}</span>
                    &nbsp;
                    #{action_bar}
                </td>
            </tr>
        """

class GenericAddon
    constructor: (args) ->
        # args
        @ship = args.ship
        @container = $ args.container

        # internal state
        @data = null

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
        @selector.select2 args
        @selector.on 'change', (e) =>
            @setById @selector.select2('val')
            @ship.builder.current_squad.dirty = true
            @ship.builder.container.trigger 'xwing-backend:squadDirtinessChanged'
            @ship.builder.backend_status.fadeOut 'slow'
        @selector.data('select2').results.on 'mousemove-filtered', (e) =>
            select2_data = $(e.target).closest('.select2-result-selectable').data 'select2-data'
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
            if new_data?.unique?
                await @ship.builder.container.trigger 'xwing:claimUnique', [ new_data, @type, defer() ]
            @data = new_data
            @ship.builder.container.trigger 'xwing:pointsUpdated'

    getPoints: () ->
        @data?.points ? 0

    updateSelection: () ->
        if @data?
            @selector.select2 'data',
                id: @data.id
                text: "#{@data.name} (#{@data.points})"
        else
            @selector.select2 'data', null

    toString: () ->
        if @data?
            "#{@data.name} (#{@data.points})"
        else
            "No #{@type}"

class Upgrade extends GenericAddon
    constructor: (args) ->
        # args
        super args
        @slot = args.slot
        @type = 'Upgrade'
        @dataById = exportObj.upgradesById
        @dataByName = exportObj.upgrades

        @setupSelector()

    setupSelector: () ->
        super
            width: '50%'
            placeholder: "No #{@slot} Upgrade"
            allowClear: true
            query: (query) =>
                query.callback
                    more: false
                    results: @ship.builder.getAvailableUpgradesIncluding(@slot, @data, query.term)

class Modification extends GenericAddon
    constructor: (args) ->
        super args
        @type = 'Modification'
        @dataById = exportObj.modificationsById
        @dataByName = exportObj.modifications

        @setupSelector()

    setupSelector: () ->
        super
            width: '50%'
            placeholder: "No Modification"
            allowClear: true
            query: (query) =>
                query.callback
                    more: false
                    results: @ship.builder.getAvailableModificationsIncluding(@data, @ship.data, query.term)

class Title extends GenericAddon
    constructor: (args) ->
        super args
        @type = 'Title'
        @dataById = exportObj.titlesById
        @dataByName = exportObj.titles
        @conferredUpgrades = []

        @setupSelector()

    setData: (new_data) ->
        # All titles are unique
        if new_data != @data
            if @data?
                await @ship.builder.container.trigger 'xwing:releaseUnique', [ @data, 'Title', defer() ]
                await
                    # Rescind any conferred upgrades
                    for upgrade in @conferredUpgrades
                        upgrade.destroy defer()
                for upgrade in @conferredUpgrades
                    idx = @ship.upgrades.indexOf upgrade
                    @ship.upgrades.splice idx, 1
                @conferredUpgrades = []
            await @ship.builder.container.trigger 'xwing:claimUnique', [ new_data, 'Title', defer() ] if new_data?
            @data = new_data
            @ship.builder.container.trigger 'xwing:pointsUpdated'
            # Confer any upgrades
            if @data?.slots? and @data.slots.length > 0
                for slot in @data.slots
                    upgrade = new Upgrade
                        ship: @ship
                        container: @container
                        slot: slot
                    @ship.upgrades.push upgrade
                    @conferredUpgrades.push upgrade

    setupSelector: () ->
        super
            width: '50%'
            placeholder: "No Title"
            allowClear: true
            query: (query) =>
                query.callback
                    more: false
                    results: @ship.builder.getAvailableTitlesIncluding(@ship.data.name, @data, query.term)
