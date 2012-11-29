exportObj = exports ? this

# Assumes that cards.js has been loaded already and data is on exportObj.

class exportObj.SquadBuilder
    # Superclass for faction builders.
    # Tracks which pilots are in use.
    constructor: (args) ->
        @faction = args.faction

    getPilotNames: () ->
        # Returns list of pilot names for this faction.
        ships = (ship_name for ship_name, ship_data of exportObj.ships when ship_data.faction == @faction)
        pilots = (pilot_name for pilot_name, pilot_data of exportObj.pilots when pilot_data.ship in ships).sort()

class Pilot
    # Represents a pilot with upgrades.
    constructor: (pilot_name) ->
        @pilot = exportObj.pilots[pilot_name]
        @ship = exportObj.ships[@pilot.ship]
        @active_upgrades = {}

    addUpgrade: (upgrade) ->
        @active_upgrades[upgrade] = true

    removeUpgrade: (upgrade) ->
        @active_upgrades[upgrade] ?= undefined
