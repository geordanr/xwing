exportObj = exports ? this

# Assumes that cards.js has been loaded already and data is on exportObj.

class exportObj.SquadBuilder
    # Superclass for faction builders.
    # Tracks which pilots are in use.
    constructor: (args) ->
        @faction = args.faction
        @pilots = []

    getAvailablePilots: () ->
        # Returns list of available pilot names for this faction.
        ships = (ship_name for ship_name, ship_data of exportObj.ships when ship_data.faction == @faction)
        (pilot_name for pilot_name, pilot_data of exportObj.pilots when pilot_data.ship in ships and (not pilot_data.unique? or pilot_name not in @pilots)).sort()

    addPilot: (pilot_name) ->
        pilot = new Pilot(pilot_name)
        # Check faction
        if pilot.data.faction != @faction
            throw "Pilot is of the wrong faction"
        # Check for uniqueness
        if pilot.data.unique? and pilot.name in @pilots
            throw "Pilot is unique and cannot be used multiple times"

class Pilot
    # Represents a pilot with upgrades.
    constructor: (pilot_name) ->
        @name = pilot_name
        @data = exportObj.pilots[pilot_name]
        @ship = exportObj.ships[@data.ship]
        @active_upgrades = []

    addUpgrade: (upgrade) ->
        # Check if there's an available slot and drop it in if so
        # Possibly overwrite existing slot if no free ones available

    removeUpgrade: (upgrade) ->
        # Empty slot

    getUpgradesForSlot: (slot) ->
        (upgrade_name for upgrade_name, upgrade_data of exportObj.upgrades when upgrade_data == slot).sort()
