exportObj = exports ? this

# Assumes that cards.js has been loaded already and data is on exportObj.

class exportObj.SquadBuilder
    # Superclass for faction builders.
    # Tracks which pilots are in use.
    constructor: (args) ->

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
