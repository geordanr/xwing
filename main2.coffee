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
                        @uniques_in_use['Upgrade'].push pilot
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
        console.log "Removing ship from array..."
        @ships.splice idx, 1

    getAvailablePilotsIncluding: (include_pilot, term='') ->
        # Returns data formatted for Select2
        unclaimed_faction_pilots = (pilot for pilot_name, pilot of exportObj.pilots when exportObj.ships[pilot.ship].faction == @faction and pilot_name.toUpperCase().indexOf(term.toUpperCase()) >= 0 and (not pilot.unique? or pilot not in @uniques_in_use['Pilot']))
        # Re-add selected pilot
        if include_pilot? and include_pilot.unique? and include_pilot.name.toUpperCase().indexOf(term.toUpperCase()) >= 0
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
        console.log "Destroying ship..."
        @resetPilot()
        @resetAddons()
        @teardownUI()
        console.log "Done destroying ship"
        cb()

    setPilotById: (id) ->
        @setPilot exportObj.pilotsById[parseInt id]

    setPilotByName: (name) ->
        @setPilot exportObj.pilots[$.trim name]

    setPilot: (new_pilot) ->
        if new_pilot != @pilot
            @resetPilot()
            @resetAddons()
        @pilot = new_pilot
        @data = exportObj.ships[@pilot?.ship]
        if @pilot?.unique?
            await @builder.container.trigger 'xwing:claimUnique', [ @pilot, 'Pilot', defer() ]
        @pilot

    resetPilot: () ->
        console.log "Resetting pilot..."
        if @pilot?.unique?
            await @builder.container.trigger 'xwing:releaseUnique', [ @pilot, 'Pilot', defer() ]
        @pilot = null

    resetAddons: () ->
        console.log "Resetting addons..."
        await
            for upgrade in @upgrades
                upgrade.destroy defer()
                idx = @upgrades.indexOf upgrade
                @upgrades.splice idx, 1
            @modification.destroy defer() if @modification?
            @modification = null
            @title.destroy defer() if @title?
            @title = null

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
            <div class="span1 remove-btn-container" />
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

    teardownUI: () ->
        @row.remove()

class GenericAddon
    constructor: (args) ->
        # args
        @type = null
        @ship = args.ship
        @container = $ args.container

        # internal state
        @data = null

    destroy: (cb, args...) ->
        if @data?.unique?
            await @ship.builder.container.trigger 'xwing:releaseUnique', [ @data, @type, defer() ]
        @container.remove()
        cb args

class Upgrade extends GenericAddon
    constructor: (args) ->
        # args
        super args
        @slot = args.slot
        @type = 'Upgrade'

class Modification extends GenericAddon
    constructor: (args) ->
        super args
        @type = 'Modification'

class Title extends GenericAddon
    constructor: (args) ->
        super args
        @type = 'Title'
