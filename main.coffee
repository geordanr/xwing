exportObj = exports ? this

# Assumes that cards.js has been loaded already and data is on exportObj.

exportObj.sortHelper = (a, b) ->
    a = a.name.replace(/[^a-z0-9]/ig, '')
    b = b.name.replace(/[^a-z0-9]/ig, '')
    if a == b
        0
    else
        if a > b then 1 else -1

class exportObj.SquadBuilder
    # Superclass for faction builders.
    # Tracks which pilots are in use.
    #
    # Usage:
    #
    #   sb = new SquadBuilder
    #       container: '#empire-builder'
    #       faction: "Galactic Empire"
    constructor: (args) ->
        @container = $(args.container)
        @faction = args.faction
        @rows = []
        @pilots = []
        @unique_upgrades = []

        # Add initial row
        # TODO deserialize a previous configuration
        @rows.push new PilotRow this
        @rows.push new PilotRow this
        @rows.push new PilotRow this

        $(window).bind 'xwing:pilotChanged', (e, triggering_row) =>
            @pilots = (row.name for row in @rows when row.name? and row.name != '')
            for row in @rows
                if row != triggering_row
                    row.update()

        $(window).bind 'xwing:upgradeChanged', (e, triggering_selector) =>
            @unique_upgrades = []
            for row in @rows
                for upgrade in (selector.upgrade for selector in row.upgrade_selectors)
                    if upgrade?.unique?
                        @unique_upgrades.push(selector.upgrade_name)
            # Update the other selectors
            for row in @rows
                for selector in row.upgrade_selectors
                    if selector != triggering_selector
                        selector.update()

    getAvailablePilots: () ->
        # Returns list of available pilot names for this faction.
        ships = (ship_name for ship_name, ship_data of exportObj.ships when ship_data.faction == @faction)
        ({name: pilot_name, points: pilot_data.points} for pilot_name, pilot_data of exportObj.pilots when pilot_data.ship in ships and (not pilot_data.unique? or pilot_name not in @pilots))

    getAvailableUpgrades: (slot) ->
        ({name: upgrade_name, points: upgrade_data.points} for upgrade_name, upgrade_data of exportObj.upgrades when upgrade_data.slot == slot and upgrade_name not in @unique_upgrades).sort exportObj.sortHelper

class PilotRow
    # Represents a pilot row in the UI.
    constructor: (builder) ->
        @builder = builder
        @name = null
        @pilot = null
        @ship = null
        @upgrade_selectors = []

        # set up UI elements
        @row = $(document.createElement 'DIV')
        @row.addClass 'row'
        @builder.container.append @row

        @pilot_cell = $(document.createElement 'DIV')
        @pilot_cell.addClass 'four columns'
        @row.append @pilot_cell

        @pilot_selector = $(document.createElement 'SELECT')
        @pilot_selector.append $(document.createElement 'OPTION') # required for allow_single_deselect
        @pilot_selector.addClass 'pilot'
        @pilot_selector.attr 'data-placeholder', 'Select a pilot'
        @pilot_selector.change (e) =>
            @upgrade_selectors = []
            @name = @pilot_selector.val()
            if @name == ''
                @pilot = null
                @ship = null
                # Clear upgrades
                @upgrade_cell.text 'Select a pilot to view upgrades'
            else
                @upgrade_cell.text ''
                @pilot = exportObj.pilots[@name]
                @ship = exportObj.ships[@pilot.ship]
                #  Set upgrade selectors
                for slot in @pilot.slots
                    @upgrade_selectors.push new UpgradeSelector @builder, slot, @upgrade_cell
            $(window).trigger 'xwing:pilotChanged', this
        @pilot_cell.append @pilot_selector
        @pilot_selector.chosen
            allow_single_deselect: true

        @upgrade_cell = $(document.createElement 'DIV')
        @upgrade_cell.addClass 'eight columns upgrades'
        @row.append @upgrade_cell

        @update()
        @pilot_selector.change()

    update: () ->
        # Update the contents of the selector when another pilot is selected

        available_pilots = @builder.getAvailablePilots()
        # Re-add our selected pilot if there is one
        if @pilot
            available_pilots.push
                name: @name
                points: @pilot.points
        available_pilots.sort exportObj.sortHelper

        @pilot_selector.text ''
        @pilot_selector.append document.createElement 'OPTION'
        for pilot in available_pilots
            option = $(document.createElement 'OPTION')
            option.text "#{pilot.name} (#{pilot.points})"
            option.val pilot.name
            @pilot_selector.append option
        @pilot_selector.val @name
        @pilot_selector.trigger 'liszt:updated'

class UpgradeSelector
    # Represents an upgrade selector in the UI.

    constructor: (builder, slot, container) ->
        @builder = builder
        @slot = slot
        @upgrade_name = null
        @upgrade = null

        @selector = $(document.createElement 'SELECT')
        @selector.append $(document.createElement 'OPTION') # required for allow_single_deselect
        @selector.addClass 'upgrade'
        @selector.attr 'data-placeholder', "Select #{@slot} Upgrade"
        @selector.change (e) =>
            @upgrade_name = @selector.val()
            @upgrade = exportObj.upgrades[@selector.val()]
            $(window).trigger 'xwing:upgradeChanged', @selector
        container.append @selector
        @selector.chosen
            allow_single_deselect: true

        @update()
        @selector.change()

    update: () ->
        available_upgrades = @builder.getAvailableUpgrades @slot
        # re-add our upgrade
        if @upgrade and @upgrade.unique?
            available_upgrades.push
                name: @upgrade_name
                points: @upgrade.points
        available_upgrades.sort exportObj.sortHelper

        @selector.text ''
        @selector.append document.createElement 'OPTION'
        for upgrade in available_upgrades
            option = $(document.createElement 'OPTION')
            option.text "#{upgrade.name} (#{upgrade.points})"
            option.val upgrade.name
            @selector.append option
        @selector.val @upgrade_name
        @selector.trigger 'liszt:updated'
