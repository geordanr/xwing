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

# Assumes cards.js has been loaded

class exportObj.SquadBuilder
    constructor: (args) ->
        # args
        @container = $ args.container
        @faction = $.trim args.faction

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

        @setupUI()
        @setupEventHandlers()

    setupUI: () ->
        @status_container = $ document.createElement 'DIV'
        @status_container.addClass 'container-fluid'
        @status_container.append $.trim '''
            <div class="span4 points-display-container">Total Points: 0</div>
        '''
        @container.append @status_container

        @points_container = $ @status_container.find('div.points-display-container')

        @ship_container = $ document.createElement 'DIV'
        @ship_container.addClass 'container-fluid'
        @container.append @ship_container

        @button_container = $ document.createElement 'DIV'
        @button_container.addClass 'container-fluid'
        @container.append @button_container

        @button_container.text 'This would have buttons.'

    setupEventHandlers: () ->
        @container.on 'xwing:claimUnique', (e, unique, type, cb) =>
            @claimUnique unique, type, cb
        .on 'xwing:releaseUnique', (e, unique, type, cb) =>
            @releaseUnique unique, type, cb
        .on 'xwing:pointsUpdated', (e, cb) =>
            total_points = 0
            for ship, i in @ships
                total_points += ship.getPoints()
            @points_container.text "Total Points: #{total_points}"

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
            else if type == 'Upgrade' and unique.slot = 'Crew'
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
            else if type == 'Upgrade' and unique.slot = 'Crew'
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
        @ships.push new Ship
            builder: this
            container: @ship_container

    removeShip: (ship) ->
        idx = @ships.indexOf ship
        if idx < 0
            throw "Ship not found"
        await ship.destroy defer()
        @ships.splice idx, 1

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
        unclaimed_upgrades = (upgrade for upgrade_name, upgrade of exportObj.upgrades when upgrade.slot == slot and @matcher(upgrade_name, term) and (not upgrade.unique? or upgrade not in @uniques_in_use['Upgrade']))
        # Re-add selected upgrade
        if include_upgrade? and include_upgrade.unique? and @matcher(include_upgrade, term)
            unclaimed_upgrades.push include_upgrade
        ({ id: upgrade.id, text: "#{upgrade.name} (#{upgrade.points})", points: upgrade.points } for upgrade in unclaimed_upgrades).sort exportObj.sortHelper

    getAvailableModificationsIncluding: (include_modification, term='') ->
        # Returns data formatted for Select2
        unclaimed_modifications = (modification for modification_name, modification of exportObj.modifications when @matcher(modification_name, term) and (not modification.unique? or modification not in @uniques_in_use['Modification']))
        # Re-add selected modification
        if include_modification? and include_modification.unique? and @matcher(include_modification, term)
            unclaimed_modifications.push include_modification
        ({ id: modification.id, text: "#{modification.name} (#{modification.points})", points: modification.points } for modification in unclaimed_modifications).sort exportObj.sortHelper

    getAvailableTitlesIncluding: (ship_name, include_title, term='') ->
        # Returns data formatted for Select2
        # All titles are unique
        unclaimed_titles = (title for title_name, title of exportObj.titles when title.ship == ship_name and @matcher(title_name, term) and title not in @uniques_in_use['Title'])
        # Re-add selected title
        if include_title? and @matcher(include_title, term)
            unclaimed_titles.push include_title
        ({ id: title.id, text: "#{title.name} (#{title.points})", points: title.points } for title in unclaimed_titles).sort exportObj.sortHelper

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
        cb()

    setPilotById: (id) ->
        @setPilot exportObj.pilotsById[parseInt id]

    setPilotByName: (name) ->
        @setPilot exportObj.pilots[$.trim name]

    setPilot: (new_pilot) ->
        if new_pilot != @pilot
            @resetPilot()
            @resetAddons()
            @data = exportObj.ships[new_pilot?.ship]
            if new_pilot?.unique?
                await @builder.container.trigger 'xwing:claimUnique', [ new_pilot, 'Pilot', defer() ]
            @pilot = new_pilot
            @setupAddons() if @pilot?
            @builder.container.trigger 'xwing:pointsUpdated'

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

    setupUI: () ->
        @row = $ document.createElement 'DIV'
        @row.addClass 'row'
        @container.append @row

        @row.append $.trim '''
            <div class="span4 pilot-selector-container">
                <input type="hidden" />
            </div>
            <div class="span1 points-display-container" />
            <div class="span6 addon-container" />
            <div class="span1 remove-btn-container">
                <button class="btn btn-danger">&times;</button>
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
        @pilot_selector.on 'change', (e) =>
            @setPilotById @pilot_selector.select2('val')

        @points_container = $ @row.find('div.points-display-container')
        @points_container.hide()

        @addon_container = $ @row.find('div.addon-container')

        $(@row.find('div.remove-btn-container button')).click (e) =>
            e.preventDefault()
            @row.slideUp 'fast', () =>
                @builder.removeShip this

    teardownUI: () ->
        @row.text ''
        @row.remove()

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
        @container.text ''
        cb args

    setupSelector: (args) ->
        @selector = $ document.createElement 'INPUT'
        @selector.attr 'type', 'hidden'
        @container.append @selector
        @selector.select2 args
        @selector.on 'change', (e) =>
            @setById @selector.select2('val')

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
            query: (query) =>
                query.callback
                    more: false
                    results: @ship.builder.getAvailableModificationsIncluding(@data, query.term)

class Title extends GenericAddon
    constructor: (args) ->
        super args
        @type = 'Title'
        @dataById = exportObj.titlesById
        @dataByName = exportObj.titles

        @setupSelector()

    setData: (new_data) ->
        # All titles are unique
        if new_data != @data
            await @ship.builder.container.trigger 'xwing:releaseUnique', [ @data, 'Title', defer() ] if @data?
            await @ship.builder.container.trigger 'xwing:claimUnique', [ new_data, 'Title', defer() ]
            @data = new_data
            @ship.builder.container.trigger 'xwing:pointsUpdated'

    setupSelector: () ->
        super
            width: '50%'
            placeholder: "No Title"
            query: (query) =>
                query.callback
                    more: false
                    results: @ship.builder.getAvailableTitlesIncluding(@ship.data.name, @data, query.term)
