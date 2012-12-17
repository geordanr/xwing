exportObj = exports ? this

exportObj.sortHelper = (a, b) ->
    if a.points == b.points
        a_name = a.name.replace(/[^a-z0-9]/ig, '')
        b_name = b.name.replace(/[^a-z0-9]/ig, '')
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

# Events:
#   xwing:shipUpdated
#       emitted when any aspect of a ship has changed
#   xwing:availablePilotsChanged
#   xwing:availableUpgradesChanged
#   xwing:availableModificationsChanged
#   xwing:availableTitlesChanged

# Assumes cards.js has been loaded

class exportObj.SquadBuilder
    # rebel_builder = new SquadBuilder
    #   faction: "Rebel Alliance"
    #   container: "#rebel-builder"
    constructor: (args) ->
        @faction = args.faction
        @container = $(args.container)
        @points = 0

        # State
        @ships = []

        @ships.push new Ship
            builder: this

        @ships.push new Ship
            builder: this

        @container.on 'xwing:shipUpdated', (e, ship) =>
            # Points may have changed.  Query all ships for points.
            @points = 0
            for ship in @ships
                @points += ship.tallyPoints()

    getUniquePilots: () ->
        (ship.pilot.name for ship in @ships when ship.pilot? and ship.pilot.unique?)

    getUniqueUpgrades: (slot) ->
        unique_upgrades = []
        for ship in @ships
            if ship.pilot?
                unique_upgrades.push.apply unique_upgrades, (upgrade_slot.upgrade.name for upgrade_slot in ship.upgrade_slots when upgrade_slot.slot == slot and upgrade_slot.upgrade?.unique?) # via http://stackoverflow.com/questions/1374126/how-to-append-an-array-to-an-existing-javascript-array
        unique_upgrades

    getAvailablePilots: () ->
        # All pilots except uniques flying or crewing ships
        unique_pilot_names = @getUniquePilots()
        unique_crew_names = @getUniqueUpgrades 'Crew'
        (pilot_data for pilot_name, pilot_data of exportObj.pilots when exportObj.ships[pilot_data.ship].faction == @faction and ( not pilot_data.unique? or (pilot_name not in unique_pilot_names and pilot_name not in unique_crew_names)))

    getAvailableUpgrades: (slot) ->
        # All upgrades except uniques used or crew flying other ships
        unique_pilot_names = @getUniquePilots()
        unique_upgrade_names = @getUniqueUpgrades slot
        (upgrade_data for upgrade_name, upgrade_data of exportObj.upgrades when upgrade_data.slot == slot and (not upgrade_data.unique? or (upgrade_name not in unique_pilot_names and upgrade_name not in unique_upgrade_names)))

class Ship
    # ship = new Ship
    #   builder: rebel_builder
    # ship.setPilotByName('Luke Skywalker')
    # ship.setPilotById(42)
    # ship.reset()
    constructor: (args) ->
        @builder = args.builder
        @pilot = null
        @ship = null
        @upgrade_slots = []
        @modification = null
        @title = null

        # Create row containing ship UI elements
        @row = $ document.createElement 'DIV'
        @row.addClass 'row ship'
        @builder.container.append @row

        # Create the pilot selector in a grid cell
        pilot_cell = $ document.createElement 'DIV'
        pilot_cell.addClass 'four columns'
        @row.append pilot_cell
        @pilot_selector = $ document.createElement 'SELECT'
        @addEmptyPilotOption()
        @pilot_selector.addClass 'pilot'
        @pilot_selector.attr 'data-placeholder', 'Select a pilot'
        @pilot_selector.change @onPilotChange
        pilot_cell.append @pilot_selector
        if not $.isMobile()
            @pilot_selector.chosen
                search_contains: true

        # Create the points grid cell
        @points_cell = $ document.createElement 'DIV'
        @points_cell.addClass 'one column points'
        @row.append @points_cell
        @points_cell.hide()

        # Create the upgrades grid cell
        @upgrade_cell = $ document.createElement 'DIV'
        @upgrade_cell.addClass 'six columns upgrades'
        @row.append @upgrade_cell

        # Create the delete pilot button grid cell
        @remove_cell = $ document.createElement 'DIV'
        @remove_cell.addClass 'one column'
        @remove_cell.append """<button class="small alert radius button remove">&#215;</button>"""
        @remove_cell.click (e) =>
            e.preventDefault()
            @row.slideUp 'fast', () =>
                @destroy()
        @row.append @remove_cell
        @remove_cell.hide()

        # Event handlers
        @builder.container.on 'xwing:availablePilotsChanged', @onAvailablePilotsChanged

        # Finally, populate pilot selector
        @updatePilotSelector @builder.getAvailablePilots()

    addEmptyPilotOption: () ->
        opt = $ document.createElement 'OPTION'
        if $.isMobile()
            opt.text 'Select a pilot'
            opt.val ''
            opt.attr 'disabled', true
        @pilot_selector.append opt

    updatePilotSelector: (pilots) ->
        # Update pilot selector to contain available pilots.

        available_pilots = pilots.slice() # cheap copy
        # Re-add our selected pilot if there is one and they're a unique
        if @pilot?.unique?
            available_pilots.push @pilot
        # Organize by ship
        pilots_by_ship = {}
        for pilot in available_pilots
            pilots_by_ship[pilot.ship] = [] if pilot.ship not of pilots_by_ship
            pilots_by_ship[pilot.ship].push pilot
        for ship, pilots of pilots_by_ship
            pilots.sort exportObj.sortHelper

        # Reset pilot selector
        @pilot_selector.text ''
        @addEmptyPilotOption()
        for ship in Object.keys(pilots_by_ship).sort()
            optgroup = $ document.createElement 'OPTGROUP'
            optgroup.attr 'label', ship
            @pilot_selector.append optgroup
            for pilot in pilots_by_ship[ship]
                option = $ document.createElement 'OPTION'
                option.text "#{pilot.name} (#{pilot.points})"
                option.val pilot.name
                optgroup.append option

        @pilot_selector.val @pilot?.name
        @pilot_selector.trigger 'liszt:updated'

    onAvailablePilotsChanged: (e, pilots) =>
        @updatePilotSelector pilots

    onPilotChange: (e) =>
        # Set internal state
        old_pilot = @pilot
        @pilot = exportObj.pilots[@pilot_selector.val()]
        @ship = exportObj.ships[@pilot?.ship]

        # Clear upgrades, modification, and title
        for upgrade_slot in @upgrade_slots
            upgrade_slot.destroy()
        @upgrade_slots = []
        @modification = null
        @title = null

        # Set up upgrade slots
        for slot in @pilot?.slots
            @upgrade_slots.push new UpgradeSlot
                ship: this
                slot: slot

        if @pilot?
            @points_cell.show()
            @remove_cell.show()

        # Emit update events
        @builder.container.trigger 'xwing:shipUpdated', this
        if old_pilot?.unique? or @pilot.unique?
            # Addition or removal of a unique pilot requires other selectors
            # to refresh their contents.
            @builder.container.trigger 'xwing:availablePilotsChanged', [ @builder.getAvailablePilots() ]
            @builder.container.trigger 'xwing:availableUpgradesChanged', [ 'Crew', @builder.getAvailableUpgrades 'Crew' ]

    tallyPoints: () ->
        points = 0
        if @pilot?
            points += @pilot.points
            for upgrade_slot in @upgrade_slots
                points += upgrade_slot.upgrade?.points ? 0
            # Tally modification
            # Tally title
        @points_cell.text points
        points

    destroy: () ->
        @builder.container.off 'xwing:availablePilotsChanged', @onAvailablePilotsChanged
        @row.text ''
        @pilot = null
        @upgrade_slots = []
        @modification = null
        @title = null
        @builder.container.trigger 'xwing:shipUpdated', this
        @builder.container.trigger 'xwing:availablePilotsChanged', [ @builder.getAvailablePilots() ]
        @builder.container.trigger 'xwing:availableUpgradesChanged', [ 'Crew', @builder.getAvailableUpgrades 'Crew' ]

class UpgradeSlot
    constructor: (args) ->
        @ship = args.ship
        @slot = args.slot
        @upgrade = null

        @selector = $ document.createElement 'SELECT'
        @addEmptyUpgradeOption()
        @selector.addClass 'upgrade'
        @selector.attr 'data-placeholder', "No #{@slot} Upgrade"
        @selector.change @onUpgradeChange
        @ship.upgrade_cell.append @selector
        if not $.isMobile()
            @selector.chosen
                search_contains: true
                allow_single_deselect: true
                disable_search_threshold: 8

        @ship.builder.container.on 'xwing:availableUpgradesChanged', @onAvailableUpgradesChanged

        @updateSelector @ship.builder.getAvailableUpgrades @slot

    addEmptyUpgradeOption: () ->
        opt = $ document.createElement 'OPTION'
        if $.isMobile()
            opt.text "No #{@slot} Upgrade"
            opt.val ''
            opt.attr 'disabled', true
        @selector.append opt

    updateSelector: (upgrades) ->
        # Update selector to contain available upgrades.

        available_upgrades = upgrades.slice() # cheap copy
        # Re-add our selected upgrade if there is one and they're a unique
        if @upgrade?.unique?
            available_upgrades.push @upgrade
        available_upgrades.sort exportObj.sortHelper

        # Reset upgrade selector
        @selector.text ''
        @addEmptyUpgradeOption()
        for upgrade in available_upgrades
            option = $ document.createElement 'OPTION'
            option.text "#{upgrade.name} (#{upgrade.points})"
            option.val upgrade.name
            @selector.append option
        @selector.val @upgrade?.name
        @selector.trigger 'liszt:updated'

    onAvailableUpgradesChanged: (e, slot, upgrades) =>
        if slot == @slot
            @updateSelector upgrades

    onUpgradeChange: (e) =>
        # Set internal state

        old_upgrade = @upgrade
        @upgrade = exportObj.upgrades[@selector.val()]

        # Emit update events
        @ship.builder.container.trigger 'xwing:shipUpdated', this

        if old_upgrade?.unique? or @upgrade?.unique?
            # Addition or removal of a unique upgrade requires other selectors
            # to refresh their contents.
            @ship.builder.container.trigger 'xwing:availableUpgradesChanged', [ @slot, @ship.builder.getAvailableUpgrades @slot ]
            if @slot == 'Crew'
                # A change in unique crew may change the list of available pilots
                @ship.builder.container.trigger 'xwing:availablePilotsChanged', [ @ship.builder.getAvailablePilots() ]


    destroy: () ->
        @ship.builder.container.off 'xwing:availableUpgradesChanged', @onAvailableUpgradesChanged
        @selector.data('chosen').container.remove()
        @selector.remove()
        @selector = null
        @ship.builder.container.trigger 'xwing:availableUpgradesChanged', [ @slot, @ship.builder.getAvailableUpgrades @slot ]
        if @slot == 'Crew' and @upgrade?.unique?
            # A change in unique crew may change the list of available pilots
            @ship.builder.container.trigger 'xwing:availablePilotsChanged', [ @ship.builder.getAvailablePilots() ]
