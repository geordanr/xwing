# This must be loaded before any of the card language modules!
exportObj = exports ? this

exportObj.unreleasedExpansions = [
]

exportObj.isReleased = (data) ->
    for source in data.sources
        return true if source not in exportObj.unreleasedExpansions
    false

String::canonicalize = ->
    this.toLowerCase()
        .replace(/[^a-z0-9]/g, '')
        .replace(/\s+/g, '-')

exportObj.hugeOnly = (ship) ->
    ship.data.huge ? false

# Returns an independent copy of the data which can be modified by translation
# modules.
exportObj.basicCardData = ->
    ships:
        "X-Wing":
            name: "X-Wing"
            xws: "T-65 X-wing".canonicalize()
            factions: [ "Rebel Alliance", ]
            attack: 3
            agility: 2
            hull: 4
            shields: 2
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 2, 2, 2, 0, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 1, 1, 1, 1, 1, 0, 0, 0, 3, 3]
              [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
            ]
            autoequip: [
              "Servomotor S-Foils"
            ]
        "Y-Wing":
            name: "Y-Wing"
            xws: "BTL-A4 Y-wing".canonicalize()
            factions: [ "Rebel Alliance", "Scum and Villainy" ]
            attack: 2
            agility: 1
            hull: 6
            shields: 2
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Barrel Roll"
                "Reload"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 2, 2, 2, 0, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 3, 1, 1, 1, 3, 0]
              [ 0, 0, 3, 0, 0, 3]
            ]
        "A-Wing":
            name: "A-Wing"
            xws: "RZ-1 A-wing".canonicalize()
            factions: [ "Rebel Alliance" ]
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0, 0, 0]
              [ 2, 2, 2, 2, 2, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 3, 3]
              [ 0, 0, 2, 0, 0, 0, 0, 0]
              [ 0, 0, 2, 0, 0, 3, 0, 0]
            ]
        "YT-1300":
            name: "YT-1300"
            xws: "Modified YT-1300 Light Freighter".canonicalize()
            factions: [ "Rebel Alliance" ]
            attackdt: 3
            agility: 1
            hull: 8
            shields: 5
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
            ]
            actionsred: [
                "Boost"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 3, 3]
              [ 0, 0, 1, 0, 0, 3, 0, 0]
            ]
            large: true
        "Customized YT-1300":
            name: "Customized YT-1300"
            canonical_name: 'Customized YT-1300'.canonicalize()
            xws: "Customized YT-1300 Light Freighter".canonicalize()
            factions: [ "Scum and Villainy" ]
            attackdt: 2
            agility: 1
            hull: 8
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
            ]
            actionsred: [
                "Boost"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 2, 2, 2, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 3, 3]
              [ 0, 0, 1, 0, 0, 3, 0, 0]
            ]
            large: true
        "TIE Fighter":
            name: "TIE Fighter"
            xws: "TIE/ln Fighter".canonicalize()
            factions: ["Rebel Alliance", "Galactic Empire"]
            attack: 2
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus"
                "Barrel Roll"
                "Evade"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0]
              [ 1, 2, 2, 2, 1, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 1, 0, 0, 3]
              [ 0, 0, 1, 0, 0, 0]
            ]
        "TIE Advanced":
            name: "TIE Advanced"
            xws: "TIE Advanced x1".canonicalize()
            factions: [ "Galactic Empire" ]
            attack: 2
            agility: 3
            hull: 3
            shields: 2
            actions: [
                "Focus" 
                "R> Barrel Roll"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 3, 3]
              [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
            ]
        "TIE Interceptor":
            name: "TIE Interceptor"
            xws: "TIE Interceptor".canonicalize()
            factions: [ "Galactic Empire" ]
            attack: 3
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus"
                "Barrel Roll"
                "Boost"
                "Evade"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0, 0, 0]
              [ 2, 2, 2, 2, 2, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 3, 3]
              [ 0, 0, 2, 0, 0, 3, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0]
            ]
        "Firespray-31":
            name: "Firespray-31"
            xws: "Firespray-class Patrol Craft".canonicalize()
            factions: [ "Scum and Villainy", ]
            attack: 3
            attackb: 3
            agility: 2
            hull: 6
            shields: 4
            medium: true
            actions: [
                "Focus"
                "Lock"
                "Boost"
            ]
            actionsred: [
                "Reinforce"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0, 0, 0, 3, 3]
              [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
            ]
        "HWK-290":
            name: "HWK-290"
            xws: "HWK-290 Light Freighter".canonicalize()
            factions: [ "Rebel Alliance", "Scum and Villainy" ]
            attackt: 2
            agility: 2
            hull: 3
            shields: 2
            actions: [
                "Focus"
                "R> Rotate Arc"
                "Lock" 
                "R> Rotate Arc"
                "Rotate Arc"
            ]
            actionsred: [
                "Boost"
                "Jam"
            ]
            maneuvers: [
              [ 0, 0, 3, 0, 0]
              [ 0, 2, 2, 2, 0]
              [ 1, 1, 2, 1, 1]
              [ 3, 1, 2, 1, 3]
              [ 0, 0, 1, 0, 0]
            ]
        "Lambda-Class Shuttle":
            name: "Lambda-Class Shuttle"
            xws: "Lambda-class T-4a Shuttle".canonicalize()
            factions: [ "Galactic Empire", ]
            attack: 3
            attackb: 2
            agility: 1
            hull: 6
            shields: 4
            actions: [
                "Focus"
                "Coordinate"
                "Reinforce"
            ]
            actionsred: [
                "Jam"
            ]
            maneuvers: [
              [ 0, 0, 3, 0, 0]
              [ 0, 2, 2, 2, 0]
              [ 3, 1, 2, 1, 3]
              [ 0, 3, 1, 3, 0]
            ]
            large: true
        "B-Wing":
            name: "B-Wing"
            xws: "A/SF-01 B-wing".canonicalize()
            factions: [ "Rebel Alliance", ]
            attack: 3
            agility: 1
            hull: 4
            shields: 4
            actions: [
                "Focus"
                "R> Barrel Roll"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 3, 2, 2, 2, 3, 0, 0, 0, 3, 3]
              [ 1, 1, 2, 1, 1, 3, 0, 0, 0, 0]
              [ 0, 3, 2, 3, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
            ]
        "TIE Bomber":
            name: "TIE Bomber"
            xws: "TIE/sa Bomber".canonicalize()
            factions: [ "Galactic Empire", ]
            attack: 2
            agility: 2
            hull: 6
            shields: 0
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R> Lock"
            ]
            actionsred: [
                "Reload"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0]
              [ 1, 2, 2, 2, 1, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 1, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 3]
            ]
        "Z-95 Headhunter":
            name: "Z-95 Headhunter"
            xws: "Z-95-AF4 Headhunter".canonicalize()
            factions: [ "Rebel Alliance", "Scum and Villainy", ]
            attack: 2
            agility: 2
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0]
              [ 1, 2, 2, 2, 1, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 1, 0, 0, 3]
            ]
        "TIE Defender":
            name: "TIE Defender"
            xws: "TIE/D Defender".canonicalize()
            factions: [ "Galactic Empire", ]
            attack: 3
            agility: 3
            hull: 3
            shields: 4
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 3, 2, 0, 2, 3, 0]
              [ 3, 1, 2, 1, 3, 3]
              [ 1, 1, 2, 1, 1, 0]
              [ 0, 0, 2, 0, 0, 1]
              [ 0, 0, 2, 0, 0, 0]
            ]
        "E-Wing":
            name: "E-Wing"
            xws: "E-wing".canonicalize()
            factions: [ "Rebel Alliance", ]
            attack: 3
            agility: 3
            hull: 3
            shields: 3
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "R> Lock"
                "Boost"
                "R> Lock"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 3, 3 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0 ]
            ]
        "TIE Phantom":
            name: "TIE Phantom"
            xws: "TIE/ph Phantom".canonicalize()
            factions: [ "Galactic Empire", ]
            attack: 3
            agility: 2
            hull: 3
            shields: 2
            actions: [
                "Focus"
                "Evade"
                "Barrel Roll"
                "Cloak"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 1, 1, 0, 1, 1, 0]
                [ 1, 2, 2, 2, 1, 0]
                [ 1, 1, 2, 1, 1, 3]
                [ 0, 0, 1, 0, 0, 3]
            ]
        "YT-2400":
            name: "YT-2400"
            xws: "YT-2400 Light Freighter".canonicalize()
            factions: [ "Rebel Alliance", ]
            attackdt: 4
            agility: 2
            hull: 6
            shields: 4
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            large: true
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 1, 2, 2, 2, 1, 0]
                [ 1, 1, 2, 1, 1, 0]
                [ 1, 1, 1, 1, 1, 0]
                [ 0, 0, 1, 0, 0, 3]
            ]
        "VT-49 Decimator":
            name: "VT-49 Decimator"
            xws: "VT-49 Decimator".canonicalize()
            factions: [ "Galactic Empire", ]
            attackdt: 3
            agility: 0
            hull: 12
            shields: 4
            actions: [
                "Focus"
                "Lock"
                "Reinforce"
                "Rotate Arc"
            ]
            actionsred: [
                "Coordinate"
            ]
            large: true
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 3, 2, 2, 2, 3, 0]
                [ 1, 1, 2, 1, 1, 0]
                [ 1, 1, 1, 1, 1, 0]
                [ 0, 0, 1, 0, 0, 0]
            ]
        "StarViper":
            name: "StarViper"
            xws: "StarViper-class Attack Platform".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 3
            hull: 4
            shields: 1
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R> Focus"
                "Boost"
                "R> Focus"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 1, 2, 2, 2, 1, 0, 0, 0]
                [ 1, 2, 2, 2, 1, 0, 0, 0]
                [ 0, 1, 2, 1, 0, 0, 3, 3]
                [ 0, 0, 1, 0, 0, 0, 0, 0]
            ]
        "M3-A Interceptor":
            name: "M3-A Interceptor"
            xws: "M3-A Interceptor".canonicalize()
            factions: [ "Scum and Villainy" ]
            attack: 2
            agility: 3
            hull: 3
            shields: 1
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 0, 2, 1, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 0, 1, 2, 1, 0, 3 ]
                [ 0, 0, 1, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3 ]
            ]
        "Aggressor":
            name: "Aggressor"
            xws: "Aggressor Assault Fighter".canonicalize()
            factions: [ "Scum and Villainy" ]
            attack: 3
            agility: 3
            hull: 5
            shields: 3
            actions: [
                "Calculate"
                "Evade"
                "Lock"
                "Boost"
            ]
            actionsred: [
            ]
            medium: true
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0, 3, 3 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0 ]
            ]
        "YV-666":
            name: "YV-666"
            xws: "YV-666 Light Freighter".canonicalize()
            factions: [ "Scum and Villainy" ]
            attackf: 3
            agility: 1
            hull: 9
            shields: 3
            large: true
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0 ]
                [ 3, 1, 2, 1, 3, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 0, 0, 1, 0, 0, 0 ]
            ]
        "Kihraxz Fighter":
            name: "Kihraxz Fighter"
            xws: "Kihraxz Fighter".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 2
            hull: 5
            shields: 1
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 0, 2, 1, 0, 0, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 0, 0, 3, 3 ]
                [ 0, 1, 2, 1, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
            ]
        "K-Wing":
            name: "K-Wing"
            xws: "BTL-S8 K-wing".canonicalize()
            factions: ["Rebel Alliance"]
            attackdt: 2
            agility: 1
            hull: 6
            shields: 3
            medium: true
            actions: [
                "Focus"
                "Lock"
                "Slam"
                "Rotate Arc"
                "Reload"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
            ]
        "TIE Punisher":
            name: "TIE Punisher"
            xws: "TIE/ca Punisher".canonicalize()
            factions: ["Galactic Empire"]
            attack: 2
            agility: 1
            hull: 6
            shields: 3
            medium: true
            actions: [
                "Focus"
                "Lock"
                "Boost" 
                "R> Lock"
                "Reload"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 3, 1, 1, 1, 3, 0 ]
                [ 0, 0, 0, 0, 0, 3 ]
            ]
        "VCX-100":
            name: "VCX-100"
            xws: "VCX-100 Light Freighter".canonicalize()
            factions: ["Rebel Alliance"]
            attack: 4
            agility: 0
            hull: 10
            shields: 4
            large: true
            actions: [
                "Focus"
                "Lock"
                "Reinforce"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 3, 1, 2, 1, 3, 0 ]
                [ 1, 2, 2, 2, 1, 0 ]
                [ 3, 1, 1, 1, 3, 0 ]
                [ 0, 0, 1, 0, 0, 3 ]
            ]
        "Attack Shuttle":
            name: "Attack Shuttle"
            xws: "Attack Shuttle".canonicalize()
            factions: ["Rebel Alliance"]
            attack: 3
            agility: 2
            hull: 3
            shields: 1
            actions: [
                "Focus"
                "Evade"
                "Barrel Roll"
                "R> Evade"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 3, 1, 1, 1, 3, 0 ]
                [ 0, 0, 1, 0, 0, 3 ]
            ]
        "TIE Advanced Prototype":
            name: "TIE Advanced Prototype"
            xws: "TIE Advanced v1".canonicalize()
            factions: ["Galactic Empire"]
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "R> Focus"
                "Boost"
                "R> Focus"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 2, 0, 2, 2, 0, 0, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 3, 3 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "G-1A Starfighter":
            name: "G-1A Starfighter"
            xws: "G-1A Starfighter".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 1
            hull: 5
            shields: 4
            medium: true
            actions: [
                "Focus"
                "Lock"
                "Jam"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0 ]
                [ 1, 1, 2, 1, 1, 3 ]
                [ 0, 3, 1, 3, 0, 0 ]
                [ 0, 0, 3, 0, 0, 3 ]
            ]
        "JumpMaster 5000":
            name: "JumpMaster 5000"
            xws: "JumpMaster 5000".canonicalize()
            factions: ["Scum and Villainy"]
            large: true
            attackt: 2
            agility: 2
            hull: 6
            shields: 3
            actions: [
                "Focus"
                "R> Rotate Arc"
                "Lock"
                "R> Rotate Arc"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 2, 1, 3, 0, 0, 0 ]
                [ 1, 2, 2, 1, 3, 0, 0, 0 ]
                [ 0, 2, 2, 1, 0, 0, 3, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0 ]
            ]
        "ARC-170":
            name: "ARC-170"
            xws: "ARC-170 Starfighter".canonicalize()
            factions: ["Rebel Alliance","Galactic Republic"]
            attack: 3
            attackb: 2
            agility: 1
            hull: 6
            shields: 3
            medium: true
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0 ]
                [ 3, 1, 1, 1, 3, 0 ]
                [ 0, 0, 3, 0, 0, 3 ]
            ]
        "Fang Fighter":
            name: "Fang Fighter"
            canonical_name: 'Protectorate Starfighter'.canonicalize()
            xws: "Fang Fighter".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 3
            hull: 4
            shields: 0
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R> Focus"
                "Boost"
                "R> Focus"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 0, 0, 0, 1, 0, 0, 0, 0, 0 ]
                [ 2, 2, 2, 2, 2, 0, 0, 0, 3, 3 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "Lancer-Class Pursuit Craft":
            name: "Lancer-Class Pursuit Craft"
            xws: "Lancer-class Pursuit Craft".canonicalize()
            factions: ["Scum and Villainy"]
            large: true
            attack: 3
            attackt: 2
            agility: 2
            hull: 8
            shields: 2
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Rotate Arc"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 1, 1, 1, 0, 0]
                [ 1, 1, 2, 1, 1, 0]
                [ 2, 2, 2, 2, 2, 0]
                [ 0, 0, 2, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 3]
            ]
        "Quadjumper":
            name: "Quadjumper"
            xws: "Quadrijet Transfer Spacetug".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 2
            agility: 2
            hull: 5
            shields: 0
            actions: [
                "Barrel Roll"
                "Focus"
            ]
            actionsred: [
                "Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 3, 0, 3 ]
                [ 1, 2, 2, 2, 1, 0, 3, 3, 0, 0, 0, 3, 0 ]
                [ 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "U-Wing":
            name: "U-Wing"
            xws: "UT-60D U-wing".canonicalize()
            factions: ["Rebel Alliance"]
            medium: true
            attack: 3
            agility: 2
            hull: 5
            shields: 3
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Coordinate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0 ]
                [ 0, 2, 2, 2, 0 ]
                [ 1, 2, 2, 2, 1 ]
                [ 0, 1, 1, 1, 0 ]
                [ 0, 0, 1, 0, 0 ]
            ]
            autoequip: [
              "Pivot Wing"
            ]
        "TIE Striker":
            name: "TIE Striker"
            xws: "TIE/sk Striker".canonicalize()
            factions: ["Galactic Empire"]
            attack: 3
            agility: 2
            hull: 4
            shields: 0
            actions: [
                "Focus"
                "Evade"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 3, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 3, 3 ]
                [ 0, 1, 2, 1, 0, 0, 0, 0 ]
            ]
        "Auzituck Gunship":
            name: "Auzituck Gunship"
            xws: "Auzituck Gunship".canonicalize()
            factions: ["Rebel Alliance"]
            attackf: 3
            agility: 1
            hull: 6
            shields: 2
            actions: [
                "Focus"
                "Reinforce"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0 ]
            ]
        "Scurrg H-6 Bomber":
            name: "Scurrg H-6 Bomber"
            xws: "Scurrg H-6 Bomber".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 1
            hull: 6
            shields: 4
            medium: true
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0, 0, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0 ]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 3, 3 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "TIE Aggressor":
            name: "TIE Aggressor"
            xws: "TIE/ag Aggressor".canonicalize()
            factions: ["Galactic Empire"]
            attack: 2
            agility: 2
            hull: 4
            shields: 1
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll" 
                "R> Evade"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 2, 1, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
            ]
        "Alpha-Class Star Wing":
            name: "Alpha-Class Star Wing"
            xws: "Alpha-class Star Wing".canonicalize()
            factions: ["Galactic Empire"]
            attack: 2
            agility: 2
            hull: 4
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "Slam"
                "Reload"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 2, 1, 0, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 0, 0 ]
                [ 1, 1, 1, 1, 1, 0, 0, 0 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
            ]
        "M12-L Kimogila Fighter":
            name: "M12-L Kimogila Fighter"
            xws: "M12-L Kimogila Fighter".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 1
            hull: 7
            shields: 2
            medium: true
            actions: [
                "Focus"
                "Lock"
                "Reload"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 3, 1, 2, 1, 3, 0]
                [ 1, 2, 2, 2, 1, 0]
                [ 1, 1, 2, 1, 1, 0]
                [ 0, 0, 0, 0, 0, 3]
            ]
        "Sheathipede-Class Shuttle":
            name: "Sheathipede-Class Shuttle"
            xws: "Sheathipede-class Shuttle".canonicalize()
            factions: ["Rebel Alliance"]
            attack: 2
            attackb: 2
            agility: 2
            hull: 4
            shields: 1
            actions: [
                "Focus"
                "Coordinate"
            ]
            actionsred: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 3, 0]
                [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 2, 1, 3, 3, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
        "TIE Reaper":
            name: "TIE Reaper"
            xws: "TIE Reaper".canonicalize()
            factions: ["Galactic Empire"]
            attack: 3
            agility: 1
            hull: 6
            shields: 2
            medium: true
            actions: [
                "Focus"
                "Evade"
                "Jam"
            ]
            actionsred: [
                "Coordinate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 3, 3 ]
                [ 3, 1, 2, 1, 3, 0, 0, 0 ]
                [ 0, 1, 2, 1, 0, 0, 0, 0 ]
            ]
        "Escape Craft":
            name: "Escape Craft"
            xws: "Escape Craft".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 2
            agility: 2
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Barrel Roll"
            ]
            actionsred: [
                "Coordinate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0, 0, 0 ]
                [ 3, 1, 2, 1, 3, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 3, 0, 0 ]
            ]
        "T-70 X-Wing":
            name: "T-70 X-Wing"
            xws: "T-70 X-wing".canonicalize()
            factions: [ "Resistance"]
            attack: 3
            agility: 2
            hull: 4
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "Boost"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 2, 2, 2, 0, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 3, 3]
              [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
            ]
            autoequip: [
              "Integrated S-Foils"
            ]
        "RZ-2 A-Wing":
            name: "RZ-2 A-Wing"
            xws: "RZ-2 A-wing".canonicalize()
            factions: ["Resistance"]
            attackt: 2
            agility: 3
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0, 0, 0]
              [ 2, 2, 2, 2, 2, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 3, 3]
              [ 0, 0, 2, 0, 0, 0, 0, 0]
              [ 0, 0, 2, 0, 0, 3, 0, 0]
            ]
        "TIE/FO Fighter":
            name: "TIE/FO Fighter"
            xws: "TIE/fo Fighter".canonicalize()
            factions: ["First Order"]
            attack: 2
            agility: 3
            hull: 3
            shields: 1
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0, 0, 0]
              [ 2, 2, 2, 2, 2, 0, 3, 3]
              [ 1, 1, 2, 1, 1, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 3, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0]
            ]
        "TIE/VN Silencer":
            name: "TIE/VN Silencer"
            xws: "TIE/vn Silencer".canonicalize()
            factions: ["First Order"]
            attack: 3
            agility: 3
            hull: 4
            shields: 2
            actions: [
                "Focus"
                "Boost"
                "Lock"
                "Barrel Roll"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0, 0, 0, 0, 0]
              [ 2, 2, 2, 2, 2, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 3, 3]
              [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
              [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
            ]
        "TIE/SF Fighter":
            name: "TIE/SF Fighter"
            xws: "TIE/sf Fighter".canonicalize()
            factions: ["First Order"]
            attack: 2
            attackt: 2
            agility: 2
            hull: 3
            shields: 3
            actions: [
                "Focus"
                "> Rotate Arc"
                "Evade"
                "> Rotate Arc"
                "Lock"
                "> Rotate Arc"
                "Barrel Roll"
                "> Rotate Arc"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 3, 3, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Upsilon-Class Command Shuttle":
            name: "Upsilon-Class Command Shuttle"
            xws: "Upsilon-class command shuttle".canonicalize()
            factions: ["First Order"]
            attack: 4
            agility: 1
            hull: 6
            shields: 6
            actions: [
                "Focus"
                "Lock"
                "Reinforce"
                "Coordinate"
                "Jam"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
              [ 3, 1, 2, 1, 3, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
            large: true
        "MG-100 StarFortress":
            name: "MG-100 StarFortress"
            xws: "MG-100 StarFortress".canonicalize()
            factions: ["Resistance"]
            attack: 3
            attackdt: 2
            agility: 1
            hull: 9
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
                "Reload"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
              [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0]
              [ 0, 3, 1, 3, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
            large: true
        "Scavenged YT-1300":
            name: "Scavenged YT-1300"
            canonical_name: 'Scavenged YT-1300'.canonicalize()
            xws: "Scavenged YT-1300".canonicalize()
            factions: [ "Resistance" ]
            attackdt: 3
            agility: 1
            hull: 8
            shields: 3
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Boost"
                "Rotate Arc"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0]
              [ 1, 1, 1, 1, 1, 0, 3, 3]
              [ 0, 0, 3, 0, 0, 0, 0, 0]
            ]
            large: true
        "Mining Guild TIE Fighter":
            name: "Mining Guild TIE Fighter"
            xws: "Modified TIE/ln Fighter".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 2
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus"
                "Barrel Roll"
                "Evade"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0]
              [ 1, 2, 2, 2, 1, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 1, 0, 0, 0]
              [ 0, 0, 3, 0, 0, 0]
            ]
        "V-19 Torrent":
            name: "V-19 Torrent"
            xws: "V-19 Torrent Starfighter".canonicalize()
            factions: ["Galactic Republic"]
            attack: 2
            agility: 2
            hull: 5
            shields: 0
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "R> Evade"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 3, 3]
              [ 0, 3, 2, 3, 0, 3, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Delta-7 Aethersprite":
            name: "Delta-7 Aethersprite"
            xws: "Delta-7 Aethersprite".canonicalize()
            factions: ["Galactic Republic"]
            attack: 2
            agility: 3
            hull: 3
            shields: 1
            actions: [
                "Focus"
                "F-Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 2, 0, 2, 1, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 3, 3, 0, 0]
              [ 0, 1, 2, 1, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
            ]
        "Sith Infiltrator":
            name: "Sith Infiltrator"
            xws: "Sith Infiltrator".canonicalize()
            factions: ["Separatist Alliance"]
            attack: 3
            agility: 1
            hull: 6
            large: true
            shields: 4
            actions: [
                "Focus"
                "Lock"
            ]
            actionsred: [
                "Barrel Roll"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 3, 3, 0, 0]
              [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 3, 0, 0, 0, 0]
            ]
        "Vulture-class Droid Fighter":
            name: "Vulture-class Droid Fighter"
            xws: "Vulture-class Droid Fighter".canonicalize()
            factions: ["Separatist Alliance"]
            attack: 2
            agility: 2
            hull: 3
            shields: 0
            actions: [
                "Calculate"
                "Lock"
                "Barrel Roll"
                "R> Calculate"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 3, 0, 0, 0, 0]
              [ 2, 1, 2, 1, 2, 0, 0, 0, 3, 3]
              [ 1, 3, 2, 3, 1, 0, 0, 0, 0, 0]
              [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Belbullab-22 Starfighter":
            name: "Belbullab-22 Starfighter"
            xws: "Belbullab-22 Starfighter".canonicalize()
            factions: ["Separatist Alliance"]
            attack: 3
            agility: 2
            hull: 3
            shields: 2
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R> Focus"
                "Boost"
                "R> Focus"
            ]
            actionsred: [
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
              [ 1, 1, 0, 1, 1, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
              [ 3, 1, 2, 1, 3, 0, 3, 3, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Naboo Royal N-1 Starfighter":
           name: "Naboo Royal N-1 Starfighter"               
           xws: "Naboo Royal N-1 Starfighter".canonicalize()
           factions: ["Galactic Republic"]
           attack: 2
           agility: 2
           hull: 3
           shields: 2
           actions: [
             "Focus"
             "Lock"
             "Barrel Roll"
             "Boost"
           ]
           actionsred: [
           ]
           maneuvers: [
             [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
             [ 0, 1, 1, 1, 0, 0, 0, 0, 0, 0]
             [ 1, 2, 2, 2, 1, 0, 0, 0, 0, 0]
             [ 1, 2, 2, 2, 1, 0, 0, 0, 3, 3]
             [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
             [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
           ]
        "Hyena-Class Droid Bomber":
           name: "Hyena-Class Droid Bomber"               
           xws: "Hyena-Class Droid Bomber".canonicalize()
           factions: ["Separatist Alliance"]
           attack: 2
           agility: 2
           hull: 5
           shields: 0
           actions: [
             "Calculate"
             "Lock"
             "Barrel Roll"
             "R> Lock"
           ]
           actionsred: [
             "Reload"
           ]
           maneuvers: [
             [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
             [ 1, 3, 1, 3, 1, 0, 0, 0, 0, 0]
             [ 2, 1, 2, 1, 2, 3, 0, 0, 3, 3]
             [ 1, 0, 2, 0, 1, 0, 0, 0, 0, 0]
             [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
             [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
           ]
        
    # name field is for convenience only
    pilotsById: [
        {
            name: "Cavern Angels Zealot"
            id: 0
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 1
            points: 41
            slots: [
                "Illicit"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Blue Squadron Escort"
            id: 1
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 2
            points: 41
            slots: [
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Red Squadron Veteran"
            id: 2
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 3
            points: 43
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Jek Porkins"
            id: 3
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 4
            points: 46
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Luke Skywalker"
            id: 4
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 5
            force: 2
            points: 62
            slots: [
                "Force"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Wedge Antilles"
            id: 5
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 6
            points: 52
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Garven Dreis (X-Wing)"
            canonical_name: 'Garven Dreis'.canonicalize()
            id: 6
            unique: true
            xws: "garvendreis-t65xwing"
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 4
            points: 47
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Biggs Darklighter"
            id: 7
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 3
            points: 48
            slots: [
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Edrio Two Tubes"
            id: 8
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 2
            points: 45
            slots: [
                "Illicit"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Thane Kyrell"
            id: 9
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 5
            points: 48
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Leevan Tenza"
            id: 10
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 3
            points: 46
            slots: [
                "Illicit"
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "whoops"
            id: 11
            skip: true
        }
        {
            name: "Kullbee Sperado"
            id: 12
            unique: true
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 4
            points: 48
            slots: [
                "Illicit"
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Sabine Wren (TIE Fighter)"
            canonical_name: 'Sabine Wren'.canonicalize()
            id: 13
            unique: true
            xws: "sabinewren-tielnfighter"
            faction: "Rebel Alliance"
            ship: "TIE Fighter"
            skill: 3
            points: 30
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Ezra Bridger (TIE Fighter)"
            canonical_name: 'Ezra Bridger'.canonicalize()
            id: 14
            unique: true
            xws: "ezrabridger-tielnfighter"
            faction: "Rebel Alliance"
            ship: "TIE Fighter"
            skill: 3
            force: 1
            points: 32
            slots: [
                "Force"
                "Modification"
            ]
        }
        {
            name: '"Zeb" Orrelios (TIE Fighter)'
            canonical_name: '"Zeb" Orrelios'.canonicalize()
            id: 15
            unique: true
            xws: "zeborrelios-tielnfighter"
            faction: "Rebel Alliance"
            ship: "TIE Fighter"
            skill: 2
            points: 26
            slots: [
                "Modification"
            ]
        }
        {
            name: "Captain Rex"
            id: 16
            unique: true
            faction: "Rebel Alliance"
            ship: "TIE Fighter"
            skill: 2
            points: 32
            slots: [
                "Modification"
            ]
            applies_condition: 'Suppressive Fire'.canonicalize()
        }
        {
            name: "Miranda Doni"
            id: 17
            unique: true
            faction: "Rebel Alliance"
            ship: "K-Wing"
            skill: 4
            points: 45
            slots: [
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Crew"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Esege Tuketu"
            id: 18
            unique: true
            faction: "Rebel Alliance"
            ship: "K-Wing"
            skill: 3
            points: 47
            slots: [
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Crew"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "empty"
            id: 19
            skip: true
        }
        {
            name: "Warden Squadron Pilot"
            id: 20
            faction: "Rebel Alliance"
            ship: "K-Wing"
            skill: 2
            points: 37
            slots: [
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Crew"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Corran Horn"
            id: 21
            unique: true
            faction: "Rebel Alliance"
            ship: "E-Wing"
            skill: 5
            points: 66
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Gavin Darklighter"
            id: 22
            unique: true
            faction: "Rebel Alliance"
            ship: "E-Wing"
            skill: 4
            points: 61
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Rogue Squadron Escort"
            id: 23
            faction: "Rebel Alliance"
            ship: "E-Wing"
            skill: 4
            points: 56
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Knave Squadron Escort"
            id: 24
            faction: "Rebel Alliance"
            ship: "E-Wing"
            skill: 2
            points: 54
            slots: [
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Norra Wexley (Y-Wing)"
            id: 25
            unique: true
            canonical_name: 'Norra Wexley'.canonicalize()
            xws: "norrawexley-btla4ywing"
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 5
            points: 41
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Modification"
                "Device"
                "Gunner"
            ]
        }
        {
            name: "Horton Salm"
            id: 26
            unique: true
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 4
            points: 37
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Modification"
                "Device"
                "Gunner"
            ]
        }
        {
            name: '"Dutch" Vander'
            id: 27
            unique: true
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 4
            points: 39
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Modification"
                "Device"
                "Gunner"
            ]
        }
        {
            name: "Evaan Verlaine"
            id: 28
            unique: true
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 3
            points: 35
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Modification"
                "Device"
                "Gunner"
            ]
        }
        {
            name: "Gold Squadron Veteran"
            id: 29
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 3
            points: 33
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Modification"
                "Device"
                "Gunner"
            ]
        }
        {
            name: "Gray Squadron Bomber"
            id: 30
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 2
            points: 31
            slots: [
                "Turret"
                "Torpedo"
                "Astromech"
                "Modification"
                "Device"
                "Gunner"
            ]
        }
        {
            name: "Bodhi Rook"
            id: 31
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 4
            points: 49
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Cassian Andor"
            id: 32
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 3
            points: 47
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Heff Tobber"
            id: 33
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 2
            points: 45
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Magva Yarro"
            id: 34
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 3
            points: 50
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
                "Illicit"
            ]
        }
        {
            name: "Saw Gerrera"
            id: 35
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 4
            points: 52
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
                "Illicit"
            ]
        }
        {
            name: "Benthic Two Tubes"
            id: 36
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 2
            points: 47
            slots: [
                "Illicit"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Blue Squadron Scout"
            id: 37
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 2
            points: 43
            slots: [
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Partisan Renegade"
            id: 38
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 1
            points: 43
            slots: [
                "Illicit"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Dash Rendar"
            id: 39
            unique: true
            faction: "Rebel Alliance"
            ship: "YT-2400"
            skill: 5
            points: 98
            slots: [
                "Talent"
                "Missile"
                "Gunner"
                "Crew"
                "Modification"
                "Title"
                "Illicit"
            ]
        }
        {
            name: '"Leebo"'
            id: 40
            unique: true
            faction: "Rebel Alliance"
            ship: "YT-2400"
            skill: 3
            points: 88
            slots: [
                "Missile"
                "Gunner"
                "Modification"
                "Title"
                "Illicit"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Rotate Arc"
                ]
        }
        {
            name: "Wild Space Fringer"
            id: 41
            faction: "Rebel Alliance"
            ship: "YT-2400"
            skill: 1
            points: 86
            slots: [
                "Missile"
                "Gunner"
                "Crew"
                "Modification"
                "Title"
                "Illicit"
            ]
        }
        {
            name: "Han Solo"
            id: 42
            unique: true
            xws: "hansolo-modifiedyt1300lightfreighter"
            faction: "Rebel Alliance"
            ship: "YT-1300"
            skill: 6
            points: 82
            slots: [
                "Talent"
                "Missile"
                "Gunner"
                "Crew"
                "Crew"
                "Modification"
                "Title"
                "Illicit"
            ]
        }
        {
            name: "Lando Calrissian"
            id: 43
            unique: true
            xws: "landocalrissian-modifiedyt1300lightfreighter"
            faction: "Rebel Alliance"
            ship: "YT-1300"
            skill: 5
            points: 80
            slots: [
                "Talent"
                "Missile"
                "Gunner"
                "Crew"
                "Crew"
                "Modification"
                "Title"
                "Illicit"
            ]
        }
        {
            name: "Chewbacca"
            id: 44
            unique: true
            faction: "Rebel Alliance"
            ship: "YT-1300"
            skill: 4
            charge: 1
            recurring: true
            points: 73
            slots: [
                "Talent"
                "Missile"
                "Gunner"
                "Crew"
                "Crew"
                "Modification"
                "Title"
                "Illicit"
            ]
        }
        {
            name: "Outer Rim Smuggler"
            id: 45
            faction: "Rebel Alliance"
            ship: "YT-1300"
            skill: 1
            points: 69
            slots: [
                "Missile"
                "Gunner"
                "Crew"
                "Crew"
                "Modification"
                "Title"
                "Illicit"
            ]
        }
        {
            name: "Jan Ors"
            id: 46
            unique: true
            faction: "Rebel Alliance"
            ship: "HWK-290"
            skill: 5
            points: 44
            slots: [
                "Talent"
                "Device"
                "Crew"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Roark Garnet"
            id: 47
            unique: true
            faction: "Rebel Alliance"
            ship: "HWK-290"
            skill: 4
            points: 43
            slots: [
                "Talent"
                "Device"
                "Crew"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Kyle Katarn"
            id: 48
            unique: true
            faction: "Rebel Alliance"
            ship: "HWK-290"
            skill: 3
            points: 39
            slots: [
                "Talent"
                "Device"
                "Crew"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Rebel Scout"
            id: 49
            faction: "Rebel Alliance"
            ship: "HWK-290"
            skill: 2
            points: 33
            slots: [
                "Device"
                "Crew"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Jake Farrell"
            id: 50
            unique: true
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 4
            points: 36
            slots: [
                "Talent"
                "Talent"
                "Missile"
            ]
        }
        {
            name: "Arvel Crynyd"
            id: 51
            unique: true
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 3
            points: 34
            slots: [
                "Talent"
                "Talent"
                "Missile"
            ]
        }
        {
            name: "Green Squadron Pilot"
            id: 52
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 3
            points: 32
            slots: [
                "Talent"
                "Talent"
                "Missile"
            ]
        }
        {
            name: "Phoenix Squadron Pilot"
            id: 53
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 1
            points: 30
            slots: [
                "Talent"
                "Missile"
            ]
        }
        {
            name: "Airen Cracken"
            id: 54
            unique: true
            faction: "Rebel Alliance"
            ship: "Z-95 Headhunter"
            skill: 5
            points: 36
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Lieutenant Blount"
            id: 55
            unique: true
            faction: "Rebel Alliance"
            ship: "Z-95 Headhunter"
            skill: 4
            points: 30
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Tala Squadron Pilot"
            id: 56
            faction: "Rebel Alliance"
            ship: "Z-95 Headhunter"
            skill: 2
            points: 25
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Bandit Squadron Pilot"
            id: 57
            faction: "Rebel Alliance"
            ship: "Z-95 Headhunter"
            skill: 1
            points: 23
            slots: [
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Wullffwarro"
            id: 58
            unique: true
            faction: "Rebel Alliance"
            ship: "Auzituck Gunship"
            skill: 4
            points: 56
            slots: [
                "Talent"
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Lowhhrick"
            id: 59
            unique: true
            faction: "Rebel Alliance"
            ship: "Auzituck Gunship"
            skill: 3
            points: 52
            slots: [
                "Talent"
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Kashyyyk Defender"
            id: 60
            faction: "Rebel Alliance"
            ship: "Auzituck Gunship"
            skill: 1
            points: 46
            slots: [
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Hera Syndulla (VCX-100)"
            id: 61
            unique: true
            canonical_name: 'Hera Syndulla'.canonicalize()
            xws: "herasyndulla-vcx100lightfreighter"
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 5
            points: 73
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Turret"
                "Crew"
                "Crew"
                "Modification"
                "Gunner"
                "Title"
            ]
        }
        {
            name: "Kanan Jarrus"
            id: 62
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 3
            force: 2
            points: 84
            slots: [
                "Force"
                "Sensor"
                "Torpedo"
                "Turret"
                "Crew"
                "Crew"
                "Modification"
                "Gunner"
                "Title"
            ]
        }
        {
            name: '"Chopper"'
            id: 63
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 2
            points: 70
            slots: [
                "Torpedo"
                "Sensor"
                "Turret"
                "Crew"
                "Crew"
                "Modification"
                "Gunner"
                "Title"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Reinforce"
                ]
        }
        {
            name: "Lothal Rebel"
            id: 64
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 2
            points: 68
            slots: [
                "Torpedo"
                "Sensor"
                "Turret"
                "Crew"
                "Crew"
                "Modification"
                "Gunner"
                "Title"
            ]
        }
        {
            name: "Hera Syndulla"
            id: 65
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 5
            points: 39
            slots: [
                "Talent"
                "Crew"
                "Modification"
                "Turret"
                "Title"
            ]
        }
        {
            name: "Sabine Wren"
            canonical_name: 'Sabine Wren'.canonicalize()
            id: 66
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 3
            points: 42
            slots: [
                "Talent"
                "Crew"
                "Modification"
                "Turret"
                "Title"
            ]
        }
        {
            name: "Ezra Bridger"
            id: 67
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 3
            force: 1
            points: 41
            slots: [
                "Force"
                "Crew"
                "Modification"
                "Turret"
                "Title"
            ]
        }

        {
            name: '"Zeb" Orrelios'
            id: 68
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 2
            points: 34
            slots: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
            ]
        }
        {
            name: "Fenn Rau (Sheathipede)"
            id: 69
            unique: true
            xws: "fennrau-sheathipedeclassshuttle"
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 6
            points: 52
            slots: [
                "Talent"
                "Crew"
                "Modification"
                "Astromech"
                "Title"
            ]
        }
        {
            name: "Ezra Bridger (Sheathipede)"
            canonical_name: 'Ezra Bridger'.canonicalize()
            id: 70
            unique: true
            xws: "ezrabridger-sheathipedeclassshuttle"
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 3
            force: 1
            points: 42
            slots: [
                "Force"
                "Crew"
                "Modification"
                "Astromech"
                "Title"
            ]
        }
        {
            name: '"Zeb" Orrelios (Sheathipede)'
            canonical_name: '"Zeb" Orrelios'.canonicalize()
            id: 71
            unique: true
            xws: "zeborrelios-sheathipedeclassshuttle"
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 2
            points: 34
            slots: [
                "Talent"
                "Crew"
                "Modification"
                "Astromech"
                "Title"
            ]
        }
        {
            name: "AP-5"
            id: 72
            unique: true
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 1
            points:32
            slots: [
                "Talent"
                "Crew"
                "Modification"
                "Astromech"
                "Title"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Coordinate"
                ]
        }
        {
            name: "Braylen Stramm"
            id: 73
            unique: true
            faction: "Rebel Alliance"
            ship: "B-Wing"
            skill: 4
            points: 47
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Modification"
            ]
        }
        {
            name: "Ten Numb"
            id: 74
            unique: true
            faction: "Rebel Alliance"
            ship: "B-Wing"
            skill: 4
            points: 46
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Modification"
            ]
        }
        {
            name: "Blade Squadron Veteran"
            id: 75
            faction: "Rebel Alliance"
            ship: "B-Wing"
            skill: 3
            points: 43
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Modification"
            ]
        }
        {
            name: "Blue Squadron Pilot"
            id: 76
            faction: "Rebel Alliance"
            ship: "B-Wing"
            skill: 2
            points: 41
            slots: [
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Modification"
            ]
        }
        {
            name: "Norra Wexley"
            id: 77
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170"
            skill: 5
            points: 55
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Shara Bey"
            id: 78
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170"
            skill: 4
            points: 53
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Garven Dreis"
            id: 79
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170"
            skill: 4
            points: 51
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Ibtisam"
            id: 80
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170"
            skill: 3
            points: 50
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "IG-88A"
            id: 81
            unique: true
            faction: "Scum and Villainy"
            ship: "Aggressor"
            skill: 4
            points: 68
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "IG-88B"
            id: 82
            unique: true
            faction: "Scum and Villainy"
            ship: "Aggressor"
            skill: 4
            points: 65
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
                ]
        }
        {
            name: "IG-88C"
            id: 83
            unique: true
            faction: "Scum and Villainy"
            ship: "Aggressor"
            skill: 4
            points: 66
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "IG-88D"
            id: 84
            unique: true
            faction: "Scum and Villainy"
            ship: "Aggressor"
            skill: 4
            points: 65
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Kavil"
            id: 85
            unique: true
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 5
            points: 43
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Drea Renthal"
            id: 86
            unique: true
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 4
            points: 42
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Hired Gun"
            id: 87
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 2
            points: 33
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Crymorah Goon"
            id: 88
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 1
            points: 31
            slots: [
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Han Solo (Scum)"
            id: 89
            unique: true
            xws: "hansolo"
            faction: "Scum and Villainy"
            ship: "Customized YT-1300"
            skill: 6
            points: 54
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Lando Calrissian (Scum)"
            id: 90
            unique: true
            xws: "landocalrissian"
            faction: "Scum and Villainy"
            ship: "Customized YT-1300"
            skill: 4
            points: 49
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "L3-37"
            id: 91
            unique: true
            faction: "Scum and Villainy"
            ship: "Customized YT-1300"
            skill: 2
            points: 47
            slots: [
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Rotate Arc"
                ]
        }
        {
            name: "Freighter Captain"
            id: 92
            faction: "Scum and Villainy"
            ship: "Customized YT-1300"
            skill: 1
            points: 46
            slots: [
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Lando Calrissian (Scum) (Escape Craft)"
            canonical_name: 'Lando Calrissian (Scum)'.canonicalize()
            id: 93
            unique: true
            xws: "landocalrissian-escapecraft"
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 4
            points: 29
            slots: [
                "Talent"
                "Crew"
                "Modification"
              ]
        }
        {
            name: "Outer Rim Pioneer"
            id: 94
            unique: true
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 3
            points: 28
            slots: [
                "Talent"
                "Crew"
                "Modification"
              ]
        }
        {
            name: "L3-37 (Escape Craft)"
            canonical_name: 'L3-37'.canonicalize()
            id: 95
            unique: true
            xws: "l337-escapecraft"
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 2
            points: 26
            slots: [
                "Talent"
                "Crew"
                "Modification"
              ]
            ship_override:
                actions: [
                    "Calculate"
                    "Barrel Roll"
                ]
        }
        {
            name: "Autopilot Drone"
            id: 96
            unique: true        
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 1
            charge: 3
            points: 12
            slots: [
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Barrel Roll"
                ]
        }
        {
            name: "Fenn Rau"
            id: 97
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 6
            points: 68
            slots: [
                "Talent"
                "Torpedo"
              ]
        }
        {
            name: "Old Teroch"
            id: 98
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 5
            points: 56
            slots: [
                "Talent"
                "Torpedo"
              ]
        }
        {
            name: "Kad Solus"
            id: 99
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 54
            slots: [
                "Talent"
                "Torpedo"
              ]
        }
        {
            name: "Joy Rekkoff"
            id: 100
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 52
            slots: [
                "Talent"
                "Torpedo"
              ]
        }
        {
            name: "Skull Squadron Pilot"
            id: 101
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 50
            slots: [
                "Talent"
                "Torpedo"
              ]
        }
        {
            name: "Zealous Recruit"
            id: 102
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 1
            points: 44
            slots: [
                "Torpedo"
              ]
        }
        {
            name: "Boba Fett"
            id: 103
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 5
            points: 86
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Emon Azzameen"
            id: 104
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 4
            points: 76
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Kath Scarlet"
            id: 105
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 4
            points: 74
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Koshka Frost"
            id: 106
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 3
            points: 71
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Krassis Trelix"
            id: 107
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 3
            points: 70
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Bounty Hunter"
            id: 108
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 2
            points: 66
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "4-LOM"
            id: 109
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            points: 49
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Illicit"
                "Modification"
                "Title"
              ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Jam"
                ]

        }
        {
            name: "Zuckuss"
            id: 110
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            points: 45
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Gand Findsman"
            id: 111
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 1
            points: 41
            slots: [
                "Sensor"
                "Crew"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Palob Godalhi"
            id: 112
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290"
            skill: 3
            points: 40
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Dace Bonearm"
            id: 113
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290"
            skill: 4
            charge: 3
            recurring: true
            points: 35
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Torkil Mux"
            id: 114
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290"
            skill: 2
            points: 38
            slots: [
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Dengar"
            id: 115
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 6
            charge: 1
            recurring: true
            points: 58
            slots: [
                "Talent"
                "Crew"
                "Torpedo"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Tel Trevura"
            id: 116
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 4
            charge: 1        
            points: 50
            slots: [
                "Talent"
                "Crew"
                "Torpedo"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Manaroo"
            id: 117
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 3
            points: 47
            slots: [
                "Talent"
                "Crew"
                "Torpedo"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Contracted Scout"
            id: 118
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 2
            points: 46
            slots: [
                "Torpedo"
                "Crew"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Talonbane Cobra"
            id: 119
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 5
            points: 50
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Graz"
            id: 120
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 4
            points: 47
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Viktor Hel"
            id: 121
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 4
            points: 45
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Captain Jostero"
            id: 122
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 3
            points: 43
            slots: [
                "Missile"
                "Illicit"
                "Modification"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Black Sun Ace"
            id: 123
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 3
            points: 42
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Cartel Marauder"
            id: 124
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 2
            points: 40
            slots: [
                "Missile"
                "Illicit"
                "Modification"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Asajj Ventress"
            id: 125
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 4
            points: 76
            force: 2
            darkside: true
            slots: [
                "Force"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Ketsu Onyo"
            id: 126
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 5
            points: 70
            slots: [
                "Talent"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Sabine Wren (Scum)"
            id: 127
            unique: true
            xws: "sabinewren-lancerclasspursuitcraft"
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 3
            points: 64
            slots: [
                "Talent"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Shadowport Hunter"
            id: 128
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 2
            points: 60
            slots: [
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Torani Kulda"
            id: 129
            unique: true
            faction: "Scum and Villainy"
            ship: "M12-L Kimogila Fighter"
            skill: 4
            points: 50
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Dalan Oberos"
            id: 130
            unique: true
            faction: "Scum and Villainy"
            ship: "M12-L Kimogila Fighter"
            skill: 3
            charge: 2
            points: 48
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Cartel Executioner"
            id: 131
            faction: "Scum and Villainy"
            ship: "M12-L Kimogila Fighter"
            skill: 3
            points: 44
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Serissu"
            id: 132
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 5
            points: 40
            slots: [
                "Talent"
                "Modification"
                "Hardpoint"
              ]
        }
        {
            name: "Genesis Red"
            id: 133
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 4
            points: 34
            slots: [
                "Talent"
                "Modification"
                "Hardpoint"
              ]
        }
        {
            name: "Laetin A'shera"
            id: 134
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 33
            slots: [
                "Talent"
                "Modification"
                "Hardpoint"
              ]
        }
        {
            name: "Quinn Jast"
            id: 135
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 34
            slots: [
                "Talent"
                "Modification"
                "Hardpoint"
              ]
        }
        {
            name: "Tansarii Point Veteran"
            id: 136
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 32
            slots: [
                "Talent"
                "Modification"
                "Hardpoint"
              ]
        }
        {
            name: "Inaldra"
            id: 137
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 2
            points: 31
            slots: [
                "Modification"
                "Hardpoint"
              ]
        }
        {
            name: "Sunny Bounder"
            id: 138
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 1
            points: 30
            slots: [
                "Modification"
                "Hardpoint"
              ]
        }
        {
            name: "Cartel Spacer"
            id: 139
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 1
            points: 28
            slots: [
                "Modification"
                "Hardpoint"
              ]
        }
        {
            name: "Constable Zuvio"
            id: 140
            unique: true
            faction: "Scum and Villainy"
            ship: "Quadjumper"
            skill: 4
            points: 35
            slots: [
                "Talent"
                "Tech"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Sarco Plank"
            id: 141
            unique: true
            faction: "Scum and Villainy"
            ship: "Quadjumper"
            skill: 2
            points: 34
            slots: [
                "Tech"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Unkar Plutt"
            id: 142
            unique: true
            faction: "Scum and Villainy"
            ship: "Quadjumper"
            skill: 2
            points: 33
            slots: [
                "Tech"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Jakku Gunrunner"
            id: 143
            faction: "Scum and Villainy"
            ship: "Quadjumper"
            skill: 1
            points: 32
            slots: [
                "Tech"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Captain Nym"
            id: 144
            unique: true
            faction: "Scum and Villainy"
            ship: "Scurrg H-6 Bomber"
            skill: 5
            charge: 1
            recurring: true
            points: 48
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Sol Sixxa"
            id: 145
            unique: true
            faction: "Scum and Villainy"
            ship: "Scurrg H-6 Bomber"
            skill: 3
            points: 46
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Lok Revenant"
            id: 146
            faction: "Scum and Villainy"
            ship: "Scurrg H-6 Bomber"
            skill: 2
            points: 43
            slots: [
                "Turret"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Guri"
            id: 147
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 5
            points: 63
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
              ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Barrel Roll"
                    "R> Calculate"
                    "Boost"
                    "R> Calculate"
                ]
        }
        {
            name: "Prince Xizor"
            id: 148
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 4
            points: 54
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Dalan Oberos (StarViper)"
            id: 149
            unique: true
            xws: "dalanoberos-starviperclassattackplatform"
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 4
            points: 54
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Black Sun Assassin"
            id: 150
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 3
            points: 48
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Black Sun Enforcer"
            id: 151
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 2
            points: 46
            slots: [
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Moralo Eval"
            id: 152
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666"
            skill: 4
            charge: 2
            points: 70
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Bossk"
            id: 153
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666"
            skill: 4
            points: 66
        
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Latts Razzi"
            id: 154
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666"
            skill: 3
            points: 61
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Trandoshan Slaver"
            id: 155
            faction: "Scum and Villainy"
            ship: "YV-666"
            skill: 2
            points: 56
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
              ]
        }
        {
            name: "N'dru Suhlak"
            id: 156
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95 Headhunter"
            skill: 4
            points: 31
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Kaa'to Leeachos"
            id: 157
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95 Headhunter"
            skill: 3
            points: 29
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Black Sun Soldier"
            id: 158
            faction: "Scum and Villainy"
            ship: "Z-95 Headhunter"
            skill: 3
            points: 27
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Binayre Pirate"
            id: 159
            faction: "Scum and Villainy"
            ship: "Z-95 Headhunter"
            skill: 1
            points: 24
            slots: [
                "Missile"
                "Illicit"
                "Modification"
              ]
        }
        {
            name: "Nashtah Pup"
            id: 160
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95 Headhunter"
            skill: 1
            points: 6
            slots: [
                "Missile"
                "Illicit"
                "Modification"
              ]
            restriction_func: (ship) ->
                builder = ship.builder
                for t, things of builder.uniques_in_use
                    if t != 'Slot'
                        return true if 'houndstooth' in (thing.canonical_name.getXWSBaseName() for thing in things)
                false

        }
        {
            name: "Major Vynder"
            id: 161
            unique: true
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 4
            points: 39
            slots: [
                "Talent"         
                "Sensor"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
              ]
        }
        {
            name: "Lieutenant Karsabi"
            id: 162
            unique: true
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 3
            points: 37
            slots: [
                "Talent"         
                "Sensor"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
              ]
        }
        {
            name: "Rho Squadron Pilot"
            id: 163
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 3
            points: 35
            slots: [
                "Talent"         
                "Sensor"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
              ]
        }
        {
            name: "Nu Squadron Pilot"
            id: 164
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 2
            points: 32
            slots: [      
                "Sensor"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
              ]
        }
        {
            name: "Captain Kagi"
            id: 165
            unique: true
            faction: "Galactic Empire"
            ship: "Lambda-Class Shuttle"
            skill: 4
            points: 48
            slots: [       
                "Sensor"
                "Cannon"
                "Crew"
                "Crew"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Lieutenant Sai"
            id: 166
            unique: true
            faction: "Galactic Empire"
            ship: "Lambda-Class Shuttle"
            skill: 3
            points: 47
            slots: [       
                "Sensor"
                "Cannon"
                "Crew"
                "Crew"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Colonel Jendon"
            id: 167
            unique: true
            faction: "Galactic Empire"
            ship: "Lambda-Class Shuttle"
            skill: 3
            charge: 2
            points: 46
            slots: [       
                "Sensor"
                "Cannon"
                "Crew"
                "Crew"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Omicron Group Pilot"
            id: 168
            faction: "Galactic Empire"
            ship: "Lambda-Class Shuttle"
            skill: 1
            points: 43
            slots: [       
                "Sensor"
                "Cannon"
                "Crew"
                "Crew"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Grand Inquisitor"
            id: 169
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 5
            points: 56
            force: 2
            darkside: true
            slots: [       
                "Force"
                "Sensor"
                "Missile"
              ]
        }
        {
            name: "Seventh Sister"
            id: 170
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 4
            points: 46
            force: 2
            darkside: true
            slots: [       
                "Force"
                "Sensor"
                "Missile"
              ]
        }
        {
            name: "Inquisitor"
            id: 171
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 3
            points: 38
            force: 1
            darkside: true
            slots: [       
                "Force"
                "Sensor"
                "Missile"
              ]
        }
        {
            name: "Baron of the Empire"
            id: 172
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 3
            points: 33
            slots: [       
                "Talent"
                "Sensor"
                "Missile"
              ]
        }
        {
            name: "Darth Vader"
            id: 173
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            skill: 6
            darkside: true
            points: 65
            force: 3
            slots: [       
                "Force"
                "Sensor"
                "Missile"
                "Modification"
              ]
        }
        {
            name: "Maarek Stele"
            id: 174
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            skill: 5
            points: 46
            slots: [       
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
              ]
        }
        {
            name: "Ved Foslo"
            id: 175
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            skill: 4
            points: 45
            slots: [       
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
              ]
        }
        {
            name: "Zertik Strom"
            id: 176
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            skill: 3
            points: 42
            slots: [       
                "Sensor"
                "Missile"
                "Modification"
              ]
        }
        {
            name: "Storm Squadron Ace"
            id: 177
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            skill: 3
            points: 40
            slots: [       
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
              ]
        }
        {
            name: "Tempest Squadron Pilot"
            id: 178
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            skill: 2
            points: 38
            slots: [  
                "Sensor"
                "Missile"
                "Modification"
              ]
        }
        {
            name: "Soontir Fel"
            id: 179
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 6
            points: 52
            slots: [       
                "Talent"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Turr Phennir"
            id: 180
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 4
            points: 44
            slots: [       
                "Talent"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Saber Squadron Ace"
            id: 181
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 4
            points: 40
            slots: [       
                "Talent"
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Alpha Squadron Pilot"
            id: 182
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 1
            points: 34
            slots: [       
                "Modification"
                "Modification"
              ]
        }
        {
            name: "Major Vermeil"
            id: 183
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Reaper"
            skill: 4
            points: 49
            slots: [       
                "Talent"
                "Crew"
                "Crew"
                "Modification"
              ]
        }
        {
            name: "Captain Feroph"
            id: 184
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Reaper"
            skill: 3
            points: 47
            slots: [       
                "Talent"
                "Crew"
                "Crew"
                "Modification"
              ]
        }
        {
            name: '"Vizier"'
            id: 185
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Reaper"
            skill: 2
            points: 45
            slots: [
                "Crew"
                "Crew"
                "Modification"
              ]
        }
        {
            name: "Scarif Base Pilot"
            id: 186
            faction: "Galactic Empire"
            ship: "TIE Reaper"
            skill: 1
            points: 41
            slots: [       
                "Crew"
                "Crew"
                "Modification"
              ]
        }
        {
            name: "Lieutenant Kestal"
            id: 187
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Aggressor"
            skill: 4
            points: 36
            slots: [       
                "Talent"
                "Turret"
                "Missile"
                "Missile"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: '"Double Edge"'
            id: 188
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Aggressor"
            skill: 2
            points: 33
            slots: [       
                "Talent"
                "Turret"
                "Missile"
                "Missile"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: "Onyx Squadron Scout"
            id: 189
            faction: "Galactic Empire"
            ship: "TIE Aggressor"
            skill: 3
            points: 32
            slots: [       
                "Talent"
                "Turret"
                "Missile"
                "Missile"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: "Sienar Specialist"
            id: 190
            faction: "Galactic Empire"
            ship: "TIE Aggressor"
            skill: 2
            points: 30
            slots: [       
                "Turret"
                "Missile"
                "Missile"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: '"Redline"'
            id: 191
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Punisher"
            skill: 5
            points: 52
            slots: [       
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: '"Deathrain"'
            id: 192
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Punisher"
            skill: 4
            points: 44
            slots: [       
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Cutlass Squadron Pilot"
            id: 193
            faction: "Galactic Empire"
            ship: "TIE Punisher"
            skill: 2
            points: 38
            slots: [       
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Colonel Vessery"
            id: 194
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 4
            points: 86
            slots: [       
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
              ]
        }
        {
            name: "Countess Ryad"
            id: 195
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 4
            points: 84
            slots: [       
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
              ]
        }
        {
            name: "Rexler Brath"
            id: 196
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 5
            points: 82
            slots: [       
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
              ]
        }
        {
            name: "Onyx Squadron Ace"
            id: 197
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 4
            points: 76
            slots: [       
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
              ]
        }
        {
            name: "Delta Squadron Pilot"
            id: 198
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 1
            points: 70
            slots: [       
                "Sensor"
                "Cannon"
                "Missile"
              ]
        }
        {
            name: '"Whisper"'
            id: 199
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Phantom"
            skill: 5
            points: 54
            slots: [       
                "Talent"
                "Sensor"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: '"Echo"'
            id: 200
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Phantom"
            skill: 4
            points: 50
            slots: [       
                "Talent"
                "Sensor"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: "Sigma Squadron Ace"
            id: 201
            faction: "Galactic Empire"
            ship: "TIE Phantom"
            skill: 4
            points: 46
            slots: [       
                "Talent"
                "Sensor"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: "Imdaar Test Pilot"
            id: 202
            faction: "Galactic Empire"
            ship: "TIE Phantom"
            skill: 3
            points: 43
            slots: [       
                "Sensor"
                "Gunner"
                "Modification"
              ]
        }
        {
            name: "Captain Jonus"
            id: 203
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 4
            points: 43
            slots: [       
                "Talent"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Major Rhymer"
            id: 204
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 4
            points: 38
            slots: [       
                "Talent"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Tomax Bren"
            id: 205
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 5
            points: 36
            slots: [       
                "Talent"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: '"Deathfire"'
            id: 206
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 2
            points: 34
            slots: [       
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Gamma Squadron Ace"
            id: 207
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 3
            points: 32
            slots: [       
                "Talent"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Scimitar Squadron Pilot"
            id: 208
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 2
            points: 30
            slots: [       
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
              ]
        }
        {
            name: '"Countdown"'
            id: 209
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Striker"
            skill: 4
            points: 44
            slots: [       
                "Talent"
                "Gunner"
                "Device"
                "Modification"
              ]
        }
        {
            name: '"Pure Sabacc"'
            id: 210
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Striker"
            skill: 4
            points: 44
            slots: [       
                "Talent"
                "Gunner"
                "Device"
                "Modification"
              ]
        }
        {
            name: '"Duchess"'
            id: 211
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Striker"
            skill: 5
            points: 42
            slots: [       
                "Talent"
                "Gunner"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Black Squadron Scout"
            id: 212
            faction: "Galactic Empire"
            ship: "TIE Striker"
            skill: 3
            points: 38
            slots: [       
                "Talent"
                "Gunner"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Planetary Sentinel"
            id: 213
            faction: "Galactic Empire"
            ship: "TIE Striker"
            skill: 1
            points: 34
            slots: [    
                "Gunner"
                "Device"
                "Modification"
              ]
        }
        {
            name: "Rear Admiral Chiraneau"
            id: 214
            unique: true
            faction: "Galactic Empire"
            ship: "VT-49 Decimator"
            skill: 5
            points: 80
            slots: [       
                "Talent"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Captain Oicunn"
            id: 215
            unique: true
            faction: "Galactic Empire"
            ship: "VT-49 Decimator"
            skill: 3
            points: 78
            slots: [       
                "Talent"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Title"
              ]
        }
        {
            name: "Patrol Leader"
            id: 216
            faction: "Galactic Empire"
            ship: "VT-49 Decimator"
            skill: 2
            points: 72
            slots: [    
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Title"
              ]
        }
        {
            name: '"Howlrunner"'
            id: 217
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 5
            points: 40
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: "Iden Versio"
            id: 218
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 4
            charge: 1
            points: 40
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: '"Mauler" Mithel'
            id: 219
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 5
            points: 32
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: '"Scourge" Skutu'
            id: 220
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 5
            points: 32
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: '"Wampa"'
            id: 221
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 1
            recurring: true
            charge: 1
            points: 30
            slots: [       
                "Modification"
              ]
        }
        {
            name: "Del Meeko"
            id: 222
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 4
            points: 30
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: "Gideon Hask"
            id: 223
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 4
            points: 30
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: "Seyn Marana"
            id: 224
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 4
            points: 30
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: "Valen Rudor"
            id: 225
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 3
            points: 28
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: '"Night Beast"'
            id: 226
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 2
            points: 26
            slots: [       
                "Modification"
              ]
        }
        {
            name: "Black Squadron Ace"
            id: 227
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 3
            points: 26
            slots: [       
                "Talent"
                "Modification"
              ]
        }
        {
            name: "Obsidian Squadron Pilot"
            id: 228
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 2
            points: 24
            slots: [       
                "Modification"
              ]
        }
        {
            name: "Academy Pilot"
            id: 229
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 1
            points: 23
            slots: [       
                "Modification"
              ]
        }
        {
            name: "Spice Runner"
            id: 230
            faction: "Scum and Villainy"
            ship: "HWK-290"
            skill: 1
            points: 32
            slots: [
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Poe Dameron"
            id: 231
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 6
            points: 68
            charge: 1
            recurring: true 
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "Hardpoint"
            ]
        }
        {
            id: 232 # duplicate, has been removed 
            skip: true
        }
        {
            name: '"Midnight"'
            id: 233
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 6
            points: 44
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: '"Longshot"'
            id: 234
            skip: true
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 3
            points: 33
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: '"Muse"'
            id: 235
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 2
            points: 32
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Kylo Ren"
            id: 236
            unique: true
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 5
            force: 2
            darkside: true
            points: 76
            applies_condition: '''I'll Show You the Dark Side'''.canonicalize()
            slots: [
                "Force"
                "Tech"
                "Torpedo"
                "Missile"
            ]
        }
        {
            name: '"Blackout"'
            id: 237
            unique: true
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 5
            points: 64
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
            ]
        }
        {
            name: "Lieutenant Dormitz"
            id: 238
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 2
            points: 70
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "L'ulo L'ampar"
            id: 239
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 5
            points: 38
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "Tallissan Lintra"
            id: 240
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 5
            charge: 1
            recurring: true
            points: 35
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "blanks"
            id: 241
            skip: true
        }
        {
            name: '"Backdraft"'
            id: 242
            unique: true
            faction: "First Order"
            ship: "TIE/SF Fighter"
            skill: 4
            points: 41
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Gunner"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: '"Quickdraw"'
            id: 243
            unique: true
            faction: "First Order"
            ship: "TIE/SF Fighter"
            skill: 6
            charge: 1
            recurring: true 
            points: 45
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Gunner"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Rey"
            id: 244
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 5
            points: 80
            force: 2
            slots: [
                "Force"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Han Solo (Resistance)"
            id: 245
            unique: true
            xws: "hansolo-scavengedyt1300"
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 6
            points: 76
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Chewbacca (Resistance)"
            id: 246
            unique: true
            faction: "Resistance"
            xws: "chewbacca-scavengedyt1300"
            ship: "Scavenged YT-1300"
            skill: 4
            points: 72
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Captain Seevor"
            id: 247
            unique: true
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 3
            charge: 1
            recurring: true
            points: 30
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Mining Guild Surveyor"
            id: 248
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 2
            points: 25
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Ahhav"
            id: 249
            unique: true
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 3
            points: 30
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Finch Dallow"
            id: 250
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 4
            points: 66
            slots: [
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Major Stridan"
            id: 251
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 4
            points: 63
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Kare Kun"
            id: 252
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 4
            points: 53
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "Hardpoint"
            ]
        }
        {
            name: "Joph Seastriker"
            id: 253
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 3
            points: 52
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "Hardpoint"
            ]
        }
        {
            name: "Lieutenant Bastian"
            id: 254
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 2
            points: 48
            slots: [
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "Hardpoint"
            ]
        }
        {
            name: "Jaycris Tubbs"
            id: 255
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 1
            points: 50
            slots: [
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "Hardpoint"
            ]
        }
        {
            name: "Black Squadron Ace (T-70)"
            id: 256
            faction: "Resistance"
            xws: "blacksquadronace-t70xwing" 
            ship: "T-70 X-Wing"
            skill: 4
            points: 50
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "Hardpoint"
            ]
        }
        {
            name: "Red Squadron Expert"
            id: 257
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 3
            points: 48
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "Hardpoint"
            ]
        }
        {
            name: "Blue Squadron Rookie"
            id: 258
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 1
            points: 46
            slots: [
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "Hardpoint"
            ]
        }
        {
            name: "Zeta Squadron Survivor"
            id: 259
            faction: "First Order"
            ship: "TIE/SF Fighter"
            skill: 2
            points: 34
            slots: [
                "Tech"
                "Gunner"
                "Missile"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Cobalt Squadron Bomber"
            id: 260
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 1
            points: 58
            slots: [
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "TN-3465"
            id: 261
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 2
            points: 31
            slots: [
                "Tech"
                "Modification"
            ]
        }
        {
            name: '"Scorch"'
            id: 262
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 4
            points: 35
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: '"Longshot"'
            id: 263
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 3
            points: 33
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: '"Static"'
            id: 264
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 4
            points: 35
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Lieutenant Rivas"
            id: 265
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 1
            points: 30
            slots: [
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Commander Malarus"
            id: 266
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 5
            points: 41
            charge: 2
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Omega Squadron Ace"
            id: 267
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 3
            points: 31
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Zeta Squadron Pilot"
            id: 268
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 2
            points: 29
            slots: [
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Epsilon Squadron Cadet"
            id: 269
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 1
            points: 28
            slots: [
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Greer Sonnel"
            id: 270
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 4
            points: 36
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "Zari Bangel"
            id: 271
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 3
            points: 35
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "Darth Maul"
            id: 272
            unique: true
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 5
            force: 3
            darkside: true
            points: 65
            slots: [
                "Force"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Device"
                "Modification"
                "Title"
                "Tactical Relay"
            ]
        }
        {
            name: "Anakin Skywalker"
            id: 273
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 6
            force: 3
            points: 60
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Luminara Unduli"
            id: 274
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 4
            force: 2
            points: 44
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Barriss Offee"
            id: 275
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 4
            force: 1
            points: 43
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Ahsoka Tano"
            id: 276
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 3
            force: 2
            points: 47
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Jedi Knight"
            id: 277
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 3
            force: 1
            points: 39
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Obi-Wan Kenobi"
            id: 278
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 5
            force: 3
            points: 53
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Trade Federation Drone"
            id: 279
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 20
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: '"Sinker"'
            id: 280
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 3
            points: 54
            slots: [
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Petty Officer Thanisson"
            id: 281
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 1
            points: 60
            charge: 1
            recurring: true
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Captain Cardinal"
            id: 282
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 4
            points: 64
            charge: 2
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: '"Avenger"'
            id: 283
            unique: true
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 3
            points: 58
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
            ]
        }
        {
            name: '"Recoil"'
            id: 284
            unique: true
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 4
            points: 59
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
            ]
        }
        {
            name: "Omega Squadron Expert"
            id: 285
            faction: "First Order"
            ship: "TIE/SF Fighter"
            skill: 3
            points: 36
            slots: [
                "Talent"
                "Tech"
                "Gunner"
                "Missile"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Sienar-Jaemus Engineer"
            id: 286
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 1
            points: 52
            slots: [
                "Tech"
                "Torpedo"
                "Missile"
            ]
        }
        {
            name: "First Order Test Pilot"
            id: 287
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 4
            points: 58
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
            ]
        }
        {
            name: "Starkiller Base Pilot"
            id: 288
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 2
            points: 56
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Lieutenant Tavson"
            id: 289
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 3
            charge: 2
            recurring: true
            points: 62
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: '"Null"'
            id: 290
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 0
            points: 31
            slots: [
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Cat"
            id: 291
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 1
            points: 59
            slots: [
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Ben Teene"
            id: 292
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 3
            points: 63
            slots: [
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            applies_condition: 'Rattled'.canonicalize()
        }
        {
            name: "Edon Kappehl"
            id: 293
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 3
            points: 66
            slots: [
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Vennie"
            id: 294
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 2
            points: 62
            slots: [
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Resistance Sympathizer"
            id: 295
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 2
            points: 68
            slots: [
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Jessika Pava"
            id: 296
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 3
            points: 52
            charge: 1
            recurring: true 
            slots: [
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "Hardpoint"
            ]
        }
        {
            name: "Temmin Wexley"
            id: 297
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 4
            points: 54
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "Hardpoint"
            ]
        }
        {
            name: "Nien Nunb"
            id: 298
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 5
            points: 55
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "Hardpoint"
            ]
        }
        {
            name: "Ello Asty"
            id: 299
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 5
            points: 56
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
                "Tech"
                "Title"
                "Hardpoint"
            ]
        }
        {
            name: "Green Squadron Expert"
            id: 300
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 3
            points: 34
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "Blue Squadron Recruit"
            id: 301
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 1
            points: 32
            slots: [
                "Talent"
                "Missile"
                "Tech"
            ]
        }
        {
            name: "Foreman Proach"
            id: 302
            unique: true
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 4
            points: 32
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Overseer Yushyn"
            id: 303
            unique: true
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 2
            charge: 1
            recurring: true
            points: 26
            slots: [
                "Modification"
            ]
        }
        {
            name: "Mining Guild Sentry"
            id: 304
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 1
            points: 24
            slots: [
                "Modification"
            ]
        }
        {
            name: "General Grievous"
            id: 305
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            unique: true
            skill: 4
            points: 47
            slots: [
                "Talent"
                "Tactical Relay"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Wat Tambor"
            id: 306
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            unique: true
            skill: 3
            points: 43
            slots: [
                "Talent"
                "Tactical Relay"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Feethan Ottraw Autopilot"
            id: 307
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            skill: 1
            points: 37
            slots: [
                "Tactical Relay"
                "Modification"
                "Title"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Barrel Roll"
                    "R> Calculate"
                    "Boost"
                    "R> Calculate"
                ]
        }
        {
            name: "Captain Sear"
            id: 308
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            unique: true
            skill: 2
            points: 39
            slots: [
                "Tactical Relay"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Precise Hunter"
            id: 309
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            points: 26
            max_per_squad: 3
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Hadr Chall Prototype"
            id: 310
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 23
            max_per_squad: 2
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "DFS-081"
            id: 311
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            points: 27
            unique: true
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Plo Koon"
            id: 312
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 5
            force: 2
            points: 51
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Saesee Tiin"
            id: 313
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 4
            force: 2
            points: 44
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Mace Windu"
            id: 314
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 4
            force: 3
            points: 46
            slots: [
                "Force"
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: '"Kickback"'
            id: 315
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 4
            points: 36
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Odd Ball"'
            id: 316
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 5
            points: 38
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Swoop"'
            id: 317
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 3
            points: 32
            slots: [
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Axe"'
            id: 318
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 3
            points: 33
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Tucker"'
            id: 319
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 2
            points: 31
            slots: [
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Blue Squadron Protector"
            id: 320
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 3
            points: 29
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Gold Squadron Trooper"
            id: 321
            faction: "Galactic Republic"
            ship: "V-19 Torrent"
            skill: 2
            points: 25
            slots: [
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Anakin Skywalker (N-1 Starfighter)"
            id: 322
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 4
            force: 1
            points: 200
            slots: [
                "Force"
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Generic PS 2"
            id: 323
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 2
            points: 200
            slots: [
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Generic PS 1"
            id: 324
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 1
            points: 200
            slots: [
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Bombardment Drone"
            id: 325
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 3
            points: 200
            slots: [
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Unique PS 4"
            id: 326
            unique: true
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 4
            points: 200
            slots: [
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Unique PS 3"
            id: 327
            unique: true
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 3
            points: 200
            slots: [
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Pilot PS 3"
            id: 328
            max_per_squad: 3
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 3
            points: 200
            slots: [
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Pilot PS 1"
            id: 329
            max_per_squad: 2
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 1
            points: 200
            slots: [
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Pilot PS 1"
            id: 330
            max_per_squad: 2
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 1
            points: 200
            slots: [
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Unique PS 3"
            id: 331
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 3
            points: 200
            slots: [
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Unique PS 4"
            id: 332
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 4
            points: 200
            slots: [
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Unique PS 5"
            id: 333
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 5
            points: 200
            slots: [
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Count Dooku"
            id: 334
            unique: true
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 3
            force: 3
            darkside: true
            points: 61
            slots: [
                "Force"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Device"
                "Modification"
                "Title"
                "Tactical Relay"
            ]
        }
        {
            name: "O-66"
            id: 335
            unique: true
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 3
            points: 55
            slots: [
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Device"
                "Modification"
                "Title"
                "Tactical Relay"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                ]
        }
        {
            name: "Dark Courier"
            id: 336
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 2
            points: 53
            slots: [
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Device"
                "Modification"
                "Title"
                "Tactical Relay"
            ]
        }
        {
            name: "DFS-311"
            id: 337
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 24
            unique: true
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: '"Odd Ball" (ARC-170)'
            id: 338
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 5
            points: 55
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: '"Jag"'
            id: 339
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 3
            points: 49
            slots: [
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Squad Seven Veteran"
            id: 340
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 3
            points: 47
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "104th Battalion Pilot"
            id: 341
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 2
            points: 42
            slots: [
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: '"Wolffe"'
            id: 342
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 4
            charge: 1
            points: 51
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Separatist Drone"
            id: 343
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            points: 22
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Skakoan Ace"
            id: 344
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            unique: true
            skill: 3
            points: 41
            slots: [
                "Talent"
                "Tactical Relay"
                "Modification"
                "Title"
            ]
        }    ]


    upgradesById: [
       {
           name: '"Chopper" (Astromech)'
           id: 0
           slot: "Astromech"
           canonical_name: '"Chopper"'.canonicalize()
           points: 2
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: '"Genius"'
           id: 1
           slot: "Astromech"
           points: 2
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "R2 Astromech"
           id: 2
           slot: "Astromech"
           points: 4
           charge: 2
       }
       {
           name: "R2-D2"
           id: 3
           unique: true
           slot: "Astromech"
           points: 6
           charge: 3
           faction: "Rebel Alliance"
       }
       {
           name: "R3 Astromech"
           id: 4
           slot: "Astromech"
           points: 3
       }
       {
           name: "R4 Astromech"
           id: 5
           slot: "Astromech"
           points: 2
           restriction_func: (ship) ->
                not (ship.data.large? or ship.data.medium?)
           modifier_func: (stats) ->
                for turn in [0 ... stats.maneuvers[1].length]
                    if turn > 4
                        continue
                    if stats.maneuvers[1][turn] > 0 
                        if stats.maneuvers[1][turn] == 3
                            stats.maneuvers[1][turn] = 1
                        else 
                            stats.maneuvers[1][turn] = 2
                    if stats.maneuvers[2][turn] > 0 
                        if stats.maneuvers[2][turn] == 3
                            stats.maneuvers[2][turn] = 1
                        else 
                            stats.maneuvers[2][turn] = 2
       }
       {
           name: "R5 Astromech"
           id: 6
           slot: "Astromech"
           points: 4
           charge: 2
       }
       {
           name: "R5-D8"
           id: 7
           unique: true
           slot: "Astromech"
           points: 6
           charge: 3
           faction: "Rebel Alliance"
       }
       {
           name: "R5-P8"
           id: 8
           slot: "Astromech"
           points: 4
           unique: true
           faction: "Scum and Villainy"
           charge: 3
       }
       {
           name: "R5-TK"
           id: 9
           slot: "Astromech"
           points: 1
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Heavy Laser Cannon"
           id: 10
           slot: "Cannon"
           points: 4
           attackbull: 4
           range: """2-3"""
       }
       {
           name: "Ion Cannon"
           id: 11
           slot: "Cannon"
           points: 5
           attack: 3
           range: """1-3"""
       }
       {
           name: "Jamming Beam"
           id: 12
           slot: "Cannon"
           points: 0
           attack: 3
           range: """1-2"""
       }
       {
           name: "Tractor Beam"
           id: 13
           slot: "Cannon"
           points: 2
           attack: 3
           range: """1-3"""
       }
       {
           name: "Admiral Sloane"
           id: 14
           slot: "Crew"
           points: 10
           unique: true
           faction: "Galactic Empire"
       }
       {
           name: "Agent Kallus"
           id: 15
           slot: "Crew"
           points: 6
           unique: true
           faction: "Galactic Empire"
           applies_condition: 'Hunted'.canonicalize()
       }
       {
           name: "Boba Fett"
           id: 16
           slot: "Crew"
           points: 4
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Baze Malbus"
           id: 17
           slot: "Crew"
           points: 3
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "C-3PO"
           id: 18
           slot: "Crew"
           points: 8
           unique: true
           faction: "Rebel Alliance"
           modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
       }
       {
           name: "Cassian Andor"
           id: 19
           slot: "Crew"
           points: 6
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Cad Bane"
           id: 20
           slot: "Crew"
           points: 4
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Chewbacca"
           id: 21
           slot: "Crew"
           points: 4
           unique: true
           faction: "Rebel Alliance"
           charge: 2
           recurring: true
       }
       {
           name: "Chewbacca (Scum)"
           id: 22
           slot: "Crew"
           xws: "chewbacca-crew" 
           points: 4
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: '"Chopper" (Crew)'
           id: 23
           canonical_name: '"Chopper"'.canonicalize()
           xws: "chopper-crew" 
           slot: "Crew"
           points: 1
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Ciena Ree"
           id: 24
           slot: "Crew"
           points: 10
           unique: true
           faction: "Galactic Empire"
           restriction_func: (ship) ->
                "Coordinate" in ship.effectiveStats().actions or "Coordinate" in ship.effectiveStats().actionsred
       }
       {
           name: "Cikatro Vizago"
           id: 25
           slot: "Crew"
           points: 1
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Darth Vader"
           id: 26
           slot: "Crew"
           points: 14
           force: 1
           unique: true
           faction: "Galactic Empire"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Death Troopers"
           id: 27
           slot: "Crew"
           points: 6
           unique: true
           faction: "Galactic Empire"
           restriction_func: (ship, upgrade_obj) ->
                ship.hasAnotherUnoccupiedSlotLike upgrade_obj
           validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnotherUpgradeSlot()
           also_occupies_upgrades: [ "Crew" ]
       }
       {
           name: "Director Krennic"
           id: 28
           slot: "Crew"
           points: 5
           unique: true
           faction: "Galactic Empire"
           applies_condition: 'Optimized Prototype'.canonicalize()
           modifier_func: (stats) ->
                stats.actions.push 'Lock' if 'Lock' not in stats.actions
       }
       {
           name: "Emperor Palpatine"
           id: 29
           slot: "Crew"
           points: 11
           force: 1
           unique: true
           faction: "Galactic Empire"
           restriction_func: (ship, upgrade_obj) ->
                ship.hasAnotherUnoccupiedSlotLike upgrade_obj
           validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnotherUpgradeSlot()
           also_occupies_upgrades: [ "Crew" ]
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Freelance Slicer"
           id: 30
           slot: "Crew"
           points: 3
       }
       {
           name: "4-LOM"
           id: 31
           slot: "Crew"
           points: 2
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: 'GNK "Gonk" Droid'
           id: 32
           slot: "Crew"
           points: 10
           charge: 1
       }
       {
           name: "Grand Inquisitor"
           id: 33
           slot: "Crew"
           points: 14
           unique: true
           force: 1 
           faction: "Galactic Empire"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Grand Moff Tarkin"
           id: 34
           slot: "Crew"
           points: 6
           unique: true
           faction: "Galactic Empire"
           charge: 2
           recurring: true
           restriction_func: (ship) ->
                "Lock" in ship.effectiveStats().actions or "Lock" in ship.effectiveStats().actionsred
       }
       {
           name: "Hera Syndulla"
           id: 35
           slot: "Crew"
           points: 4
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "IG-88D"
           id: 36
           slot: "Crew"
           points: 4
           unique: true
           faction: "Scum and Villainy"
           modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        
       }
       {
           name: "Informant"
           id: 37
           slot: "Crew"
           points: 5
           unique: true
           applies_condition: 'Listening Device'.canonicalize()
       }
       {
           name: "ISB Slicer"
           id: 38
           slot: "Crew"
           points: 3
           faction: "Galactic Empire"
       }
       {
           name: "Jabba the Hutt"
           id: 39
           slot: "Crew"
           points: 6
           unique: true
           faction: "Scum and Villainy"
           charge: 4
           restriction_func: (ship, upgrade_obj) ->
                ship.hasAnotherUnoccupiedSlotLike upgrade_obj
           validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnotherUpgradeSlot()
           also_occupies_upgrades: [ "Crew" ]
       }
       {
           name: "Jyn Erso"
           id: 40
           slot: "Crew"
           points: 2
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Kanan Jarrus"
           id: 41
           slot: "Crew"
           points: 12
           force: 1
           unique: true
           faction: "Rebel Alliance"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Ketsu Onyo"
           id: 42
           slot: "Crew"
           points: 5
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "L3-37"
           id: 43
           slot: "Crew"
           points: 4
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Lando Calrissian"
           id: 44
           slot: "Crew"
           xws: "landocalrissian" 
           points: 2
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Lando Calrissian (Scum)"
           id: 45
           slot: "Crew"
           xws: "landocalrissian-crew" 
           points: 8
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Leia Organa"
           id: 46
           slot: "Crew"
           points: 2
           unique: true
           faction: "Rebel Alliance"
           charge: 3
           recurring: true
       }
       {
           name: "Latts Razzi"
           id: 47
           slot: "Crew"
           points: 7
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Maul"
           id: 48
           slot: "Crew"
           points: 11
           unique: true
           force: 1
           modifier_func: (stats) ->
                stats.force += 1
                stats.darkside = true
           restriction_func: (ship) ->
                builder = ship.builder
                return true if builder.faction == "Scum and Villainy"
                for t, things of builder.uniques_in_use
                    if t != 'Slot'
                        return true if 'ezrabridger' in (thing.canonical_name.getXWSBaseName() for thing in things)
                false
       }
       {
           name: "Minister Tua"
           id: 49
           slot: "Crew"
           points: 7
           unique: true
           faction: "Galactic Empire"
       }
       {
           name: "Moff Jerjerrod"
           id: 50
           slot: "Crew"
           points: 10
           unique: true
           faction: "Galactic Empire"
           charge: 2
           recurring: true
           restriction_func: (ship) ->
                "Coordinate" in ship.effectiveStats().actions or "Coordinate" in ship.effectiveStats().actionsred
       }
       {
           name: "Magva Yarro"
           id: 51
           slot: "Crew"
           points: 8
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Nien Nunb"
           id: 52
           slot: "Crew"
           points: 5
           unique: true
           faction: "Rebel Alliance"
           modifier_func: (stats) ->
                for s, spd in (stats.maneuvers ? [])
                    continue if spd == 0
                    if s[1] > 0 
                        if s[1] = 1
                            s[1] = 2
                        else if s[1] = 3
                            s[1] = 1
                    if s[3] > 0 
                        if s[3] = 1
                            s[3] = 2
                        else if s[3] = 3
                            s[3] = 1
       }
       {
           name: "Novice Technician"
           id: 53
           slot: "Crew"
           points: 4
       }
       {
           name: "Perceptive Copilot"
           id: 54
           slot: "Crew"
           points: 8
       }
       {
           name: "Qi'ra"
           id: 55
           slot: "Crew"
           points: 2
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "R2-D2 (Crew)"
           id: 56
           slot: "Crew"
           canonical_name: 'r2d2-crew'
           xws: "r2d2-crew"
           points: 8
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Sabine Wren"
           id: 57
           slot: "Crew"
           points: 3
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Saw Gerrera"
           id: 58
           slot: "Crew"
           points: 8
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Seasoned Navigator"
           id: 59
           slot: "Crew"
           points: 5
       }
       {
           name: "Seventh Sister"
           id: 60
           slot: "Crew"
           points: 9
           force: 1
           unique: true
           faction: "Galactic Empire"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Tactical Officer"
           id: 61
           slot: "Crew"
           points: 2
           restriction_func: (ship) ->
                "Coordinate" in ship.effectiveStats().actionsred
           modifier_func: (stats) ->
                stats.actions.push 'Coordinate' if 'Coordinate' not in stats.actions
       }
       {
           name: "Tobias Beckett"
           id: 62
           slot: "Crew"
           points: 2
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "0-0-0"
           id: 63
           slot: "Crew"
           points: 5
           unique: true
           restriction_func: (ship) ->
                builder = ship.builder
                return true if builder.faction == "Scum and Villainy"
                for t, things of builder.uniques_in_use
                    if t != 'Slot'
                        return true if 'darthvader' in (thing.canonical_name.getXWSBaseName() for thing in things)
                false
       }
       {
           name: "Unkar Plutt"
           id: 64
           slot: "Crew"
           points: 2
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: '"Zeb" Orrelios' 
           id: 65
           slot: "Crew"
           points: 1
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Zuckuss"
           id: 66
           slot: "Crew"
           points: 2
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Bomblet Generator"
           id: 67
           slot: "Device"
           points: 5
           charge: 2
           applies_condition: 'Bomblet'.canonicalize()
           restriction_func: (ship, upgrade_obj) ->
                ship.hasAnotherUnoccupiedSlotLike upgrade_obj
           validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnotherUpgradeSlot()
           also_occupies_upgrades: [ "Device" ]
       }
       {
           name: "Conner Nets"
           id: 68
           slot: "Device"
           points: 6
           charge: 1
           applies_condition: 'Conner Net'.canonicalize()
       }
       {
           name: "Proton Bombs"
           id: 69
           slot: "Device"
           points: 5
           charge: 2
           applies_condition: 'Proton Bomb'.canonicalize()
       }
       {
           name: "Proximity Mines"
           id: 70
           slot: "Device"
           points: 6
           charge: 2
           applies_condition: 'Proximity Mine'.canonicalize()
       }
       {
           name: "Seismic Charges"
           id: 71
           slot: "Device"
           points: 3
           charge: 2
           applies_condition: 'Seismic Charge'.canonicalize()
       }
       {
           name: "Heightened Perception"
           id: 72
           slot: "Force"
           points: 3
       }
       {
           name: "Instinctive Aim"
           id: 73
           slot: "Force"
           points: 2
       }
       {
           name: "Supernatural Reflexes"
           id: 74
           slot: "Force"
           points: '*'
           pointsarray: [4,4,4,8,16,24,32]
           variableinit: true
           restriction_func: (ship) ->
                not (ship.data.large? or ship.data.medium?)
       }
       {
           name: "Sense"
           id: 75
           slot: "Force"
           points: 6
       }
       {
           name: "Agile Gunner"
           id: 76
           slot: "Gunner"
           points: 8
       }
       {
           name: "Bistan"
           id: 77
           slot: "Gunner"
           points: 14
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Bossk"
           id: 78
           slot: "Gunner"
           points: 10
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "BT-1"
           id: 79
           slot: "Gunner"
           points: 2
           unique: true
           restriction_func: (ship) ->
                builder = ship.builder
                return true if builder.faction == "Scum and Villainy"
                for t, things of builder.uniques_in_use
                    if t != 'Slot'
                        return true if 'darthvader' in (thing.canonical_name.getXWSBaseName() for thing in things)
                false
       }
       {
           name: "Dengar"
           id: 80
           slot: "Gunner"
           points: 6
           unique: true
           faction: "Scum and Villainy"
           recurring: true
           charge: 1

       }
       {
           name: "Ezra Bridger"
           id: 81
           slot: "Gunner"
           points: 18
           force: 1
           unique: true
           faction: "Rebel Alliance"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Fifth Brother"
           id: 82
           slot: "Gunner"
           points: 9
           force: 1
           unique: true
           faction: "Galactic Empire"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Greedo"
           id: 83
           slot: "Gunner"
           points: 1
           unique: true
           faction: "Scum and Villainy"
           charge: 1
           recurring: true 
       }
       {
           name: "Han Solo"
           id: 84
           slot: "Gunner"
           xws: "hansolo" 
           points: 14
           unique: true
           faction: "Rebel Alliance"
       }
       {
           name: "Han Solo (Scum)"
           id: 85
           slot: "Gunner"
           xws: "hansolo-gunner"
           points: 12
           unique: true
           faction: "Scum and Villainy"
       }
       {
           name: "Hotshot Gunner"
           id: 86
           slot: "Gunner"
           points: 7
       }
       {
           name: "Luke Skywalker"
           id: 87
           slot: "Gunner"
           points: 26
           force: 1
           unique: true
           faction: "Rebel Alliance"
           modifier_func: (stats) ->
                stats.force += 1
       }
       {
           name: "Skilled Bombardier"
           id: 88
           slot: "Gunner"
           points: 2
       }
       {
           name: "Veteran Tail Gunner"
           id: 89
           slot: "Gunner"
           points: 4
           restriction_func: (ship) ->
                ship.data.attackb?
       }
       {
           name: "Veteran Turret Gunner"
           id: 90
           slot: "Gunner"
           points: 6
           restriction_func: (ship) ->
                "Rotate Arc" in ship.effectiveStats().actions or "Rotate Arc" in ship.effectiveStats().actionsred
       }
       {
           name: "Cloaking Device"
           id: 91
           slot: "Illicit"
           points: 5
           unique: true
           charge: 2
           restriction_func: (ship) ->
                not(ship.data.large?)
       }
       {
           name: "Contraband Cybernetics"
           id: 92
           slot: "Illicit"
           points: 5
           charge: 1
       }
       {
           name: "Deadman's Switch"
           id: 93
           slot: "Illicit"
           points: 2
       }
       {
           name: "Feedback Array"
           id: 94
           slot: "Illicit"
           points: 4
       }
       {
           name: "Inertial Dampeners"
           id: 95
           slot: "Illicit"
           points: 1
       }
       {
           name: "Rigged Cargo Chute"
           id: 96
           slot: "Illicit"
           points: 4
           charge: 1
           restriction_func: (ship) ->
                ship.data.medium?  or ship.data.large?
       }
       {
           name: "Barrage Rockets"
           id: 97
           slot: "Missile"
           points: 7
           attack: 3
           range: """2-3"""
           rangebonus: true 
           charge: 5
           restriction_func: (ship, upgrade_obj) ->
               ship.hasAnotherUnoccupiedSlotLike upgrade_obj
           validation_func: (ship, upgrade_obj) ->
               upgrade_obj.occupiesAnotherUpgradeSlot()
           also_occupies_upgrades: [ 'Missile' ]
       }
       {
           name: "Cluster Missiles"
           id: 98
           slot: "Missile"
           points: 5
           attack: 3
           range: """1-2"""
           rangebonus: true 
           charge: 4
       }
       {
           name: "Concussion Missiles"
           id: 99
           slot: "Missile"
           points: 6
           attack: 3
           range: """2-3"""
           rangebonus: true 
           charge: 3
       }
       {
           name: "Homing Missiles"
           id: 100
           slot: "Missile"
           points: 5
           attack: 4
           range: """2-3"""
           rangebonus: true 
           charge: 2
       }
       {
           name: "Ion Missiles"
           id: 101
           slot: "Missile"
           points: 4
           attack: 3
           range: """2-3"""
           rangebonus: true 
           charge: 3
       }
       {
           name: "Proton Rockets"
           id: 102
           slot: "Missile"
           points: 7
           attackbull: 5
           range: """1-2"""
           rangebonus: true 
           charge: 1
       }
       {
           name: "Ablative Plating"
           id: 103
           slot: "Modification"
           points: 6
           charge: 2
           restriction_func: (ship) ->
                ship.data.medium?  or ship.data.large?
       }
       {
           name: "Advanced SLAM"
           id: 104
           slot: "Modification"
           points: 3
           restriction_func: (ship) -> 
                "Slam" in ship.effectiveStats().actions or "Slam" in ship.effectiveStats().actionsred
       }
       {
           name: "Afterburners"
           id: 105
           slot: "Modification"
           points: 6
           charge: 2
           restriction_func: (ship) ->
                not ((ship.data.large ? false) or (ship.data.medium ? false))
       }
       {
           name: "Electronic Baffle"
           id: 106
           slot: "Modification"
           points: 2
       }
       {
           name: "Engine Upgrade"
           id: 107
           slot: "Modification"
           points: '*'
           pointsarray: [2,4,7]
           variablebase: true
           restriction_func: (ship) ->
                "Boost" in ship.effectiveStats().actionsred
           modifier_func: (stats) ->
                stats.actions.push 'Boost' if 'Boost' not in stats.actions
       }
       {
           name: "Munitions Failsafe"
           id: 108
           slot: "Modification"
           points: 1
       }
       {
           name: "Static Discharge Vanes"
           id: 109
           slot: "Modification"
           points: 8
       }
       {
           name: "Tactical Scrambler"
           id: 110
           slot: "Modification"
           points: 2
           restriction_func: (ship) ->
                ship.data.medium?  or ship.data.large?
       }
       {
           name: "Advanced Sensors"
           id: 111
           slot: "Sensor"
           points: 10
       }
       {
           name: "Collision Detector"
           id: 112
           slot: "Sensor"
           points: 6
           charge: 2
       }
       {
           name: "Fire-Control System"
           id: 113
           slot: "Sensor"
           points: 2
       }
       {
           name: "Trajectory Simulator"
           id: 114
           slot: "Sensor"
           points: 10
       }
       {
           name: "Composure"
           id: 115
           slot: "Talent"
           points: 1
           restriction_func: (ship) ->
                "Focus" in ship.effectiveStats().actions or "Focus" in ship.effectiveStats().actionsred
       }
       {
           name: "Crack Shot"
           id: 116
           slot: "Talent"
           points: 1
           charge: 1
       }
       {
           name: "Daredevil"
           id: 117
           slot: "Talent"
           points: 3
           restriction_func: (ship) ->
                "Boost" in ship.effectiveStats().actions and not (ship.data.large? or ship.data.medium?)
       }
       {
           name: "Debris Gambit"
           id: 118
           slot: "Talent"
           points: 3
           restriction_func: (ship) ->
                not (ship.data.large?)
           modifier_func: (stats) ->
                stats.actionsred.push 'Evade' if 'Evade' not in stats.actionsred
       }
       {
           name: "Elusive"
           id: 119
           slot: "Talent"
           points: 3
           charge: 1
           restriction_func: (ship) ->
                not ship.data.large?
       }
       {
           name: "Expert Handling"
           id: 120
           slot: "Talent"
           points: '*'
           pointsarray: [2,4,6]
           variablebase: true
           restriction_func: (ship) ->
                "Barrel Roll" in ship.effectiveStats().actionsred
           modifier_func: (stats) ->
                stats.actions.push 'Barrel Roll' if 'Barrel Roll' not in stats.actions
       }
       {
           name: "Fearless"
           id: 121
           slot: "Talent"
           points: 3
           faction: "Scum and Villainy"
       }
       {
           name: "Intimidation"
           id: 122
           slot: "Talent"
           points: 3
       }
       {
           name: "Juke"
           id: 123
           slot: "Talent"
           points: 5
           restriction_func: (ship) ->
                not (ship.data.large?)
       }
       {
           name: "Lone Wolf"
           id: 124
           slot: "Talent"
           points: 5
           unique: true
           recurring: true
           charge: 1
       }
       {
           name: "Marksmanship"
           id: 125
           slot: "Talent"
           points: 1
       }
       {
           name: "Outmaneuver"
           id: 126
           slot: "Talent"
           points: 6
       }
       {
           name: "Predator"
           id: 127
           slot: "Talent"
           points: 2
       }
       {
           name: "Ruthless"
           id: 128
           slot: "Talent"
           points: 1
           faction: "Galactic Empire"
       }
       {
           name: "Saturation Salvo"
           id: 129
           slot: "Talent"
           points: 6
           restriction_func: (ship) ->
                "Reload" in ship.effectiveStats().actions or "Reload" in ship.effectiveStats().actionsred
       }
       {
           name: "Selfless"
           id: 130
           slot: "Talent"
           points: 3
           faction: "Rebel Alliance"
       }
       {
           name: "Squad Leader"
           id: 131
           slot: "Talent"
           points: "*"
           pointsarray: [2,4,6,8,10,12,14] 
           variableinit: true
           unique: true
           modifier_func: (stats) ->
                if stats.actionsred?
                    stats.actionsred.push 'Coordinate' if 'Coordinate' not in stats.actionsred
       }
       {
           name: "Swarm Tactics"
           id: 132
           slot: "Talent"
           points: 3
       }
       {
           name: "Trick Shot"
           id: 133
           slot: "Talent"
           points: 2
       }
       {
           name: "Adv. Proton Torpedoes"
           id: 134
           slot: "Torpedo"
           points: 6
           attack: 5
           range: """1"""
           rangebonus: true 
           charge: 1
       }
       {
           name: "Ion Torpedoes"
           id: 135
           slot: "Torpedo"
           points: 6
           attack: 4
           range: """2-3"""
           rangebonus: true 
           charge: 2
       }
       {
           name: "Proton Torpedoes"
           id: 136
           slot: "Torpedo"
           points: 12
           attack: 4
           range: """2-3"""
           rangebonus: true 
           charge: 2
       }
       {
           name: "Dorsal Turret"
           id: 137
           slot: "Turret"
           points: 2
           attackt: 2
           range: """1-2"""
           modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
       }
       {
           name: "Ion Cannon Turret"
           id: 138
           slot: "Turret"
           points: 4
           attackt: 3
           range: """1-2"""
           modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
       }
       {
           name: "Os-1 Arsenal Loadout"
           id: 139
           points: 0
           slot: "Configuration"
           ship: "Alpha-Class Star Wing"
           confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Torpedo"
                }
                {
                    type: exportObj.Upgrade
                    slot: "Missile"
                }
            ]
       }
       {
           name: "Pivot Wing"
           id: 140
           points: 0
           slot: "Configuration"
           ship: "U-Wing"
       }
       {
           name: "Pivot Wing (Open)"
           id: 141
           points: 0
           skip: true
       }
       {
           name: "Servomotor S-Foils"
           id: 142
           points: 0
           slot: "Configuration"
           ship: "X-Wing"
           modifier_func: (stats) ->
                stats.actions.push 'Boost'
                stats.actions.push '*Focus'
                stats.actions.push 'R> Boost'
       }
       {
           name: "Blank"
           id: 143
           skip: true
       }
       {
           name: "Xg-1 Assault Configuration"
           id: 144
           points: 0
           slot: "Configuration"
           ship: "Alpha-Class Star Wing"
           confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Cannon"
                }
           ]
       }
       {
           name: "L3-37's Programming"
           id: 145
           skip: true 
           points: 0
           slot: "Configuration"
           faction: "Scum and Villainy"
       }
       {
           name: "Andrasta"
           id: 146
           slot: "Title"
           points: 4
           unique: true
           faction: "Scum and Villainy"
           ship: "Firespray-31"
           confersAddons: [
              {
                  type: exportObj.Upgrade
                  slot: "Device"
              }
            ]
           modifier_func: (stats) ->
                stats.actions.push 'Reload' if 'Reload' not in stats.actions
       }
       {
           name: "Dauntless"
           id: 147
           slot: "Title"
           points: 4
           unique: true
           faction: "Galactic Empire"
           ship: "VT-49 Decimator"
       }
       {
           name: "Ghost"
           id: 148
           slot: "Title"
           unique: true
           points: 0
           faction: "Rebel Alliance"
           ship: "VCX-100"
       }
       {
           name: "Havoc"
           id: 149
           slot: "Title"
           points: 4
           unique: true
           faction: "Scum and Villainy"
           ship: "Scurrg H-6 Bomber"
           unequips_upgrades: [
                'Crew'
            ]
           also_occupies_upgrades: [
                'Crew'
           ]
           confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Sensor'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Astromech'
                }
           ]
       }
       {
           name: "Hound's Tooth"
           id: 150
           slot: "Title"
           points: 1
           unique: true
           faction: "Scum and Villainy"
           ship: "YV-666"
       }
       {
           name: "IG-2000"
           id: 151
           slot: "Title"
           points: 1
           faction: "Scum and Villainy"
           ship: "Aggressor"
       }
       {
           name: "Lando's Millennium Falcon"
           id: 152
           slot: "Title"
           points: 6
           unique: true
           faction: "Scum and Villainy"
           ship: "Customized YT-1300"
       }
       {
           name: "Marauder"
           id: 153
           slot: "Title"
           points: 6
           unique: true
           faction: "Scum and Villainy"
           ship: "Firespray-31"
           confersAddons: [
              {
                  type: exportObj.Upgrade
                  slot: "Gunner"
              }
            ]
       }
       {
           name: "Millennium Falcon"
           id: 154
           slot: "Title"
           points: 6
           unique: true
           faction: "Rebel Alliance"
           ship: "YT-1300"
           modifier_func: (stats) ->
                stats.actions.push 'Evade' if 'Evade' not in stats.actions
       }
       {
           name: "Mist Hunter"
           id: 155
           slot: "Title"
           points: 2
           unique: true
           faction: "Scum and Villainy"
           ship: "G-1A Starfighter"
           modifier_func: (stats) ->
                stats.actions.push 'Barrel Roll' if 'Barrel Roll' not in stats.actions
           confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Cannon"
                }
           ]
       }
       {
           name: "Moldy Crow"
           id: 156
           slot: "Title"
           points: 18
           unique: true
           ship: "HWK-290"
           modifier_func: (stats) ->
                stats.attack = 3
       }
       {
           name: "Outrider"
           id: 157
           slot: "Title"
           points: 14
           unique: true
           faction: "Rebel Alliance"
           ship: "YT-2400"
       }
       {
           name: "Phantom (Sheathipede)"
           id: 158
           skip: true 
           slot: "Title"
           points: 2
           unique: true
           faction: "Rebel Alliance"
           ship: "Sheathipede-Class Shuttle"
       }
       {
           name: "Punishing One"
           id: 159
           slot: "Title"
           points: 8
           unique: true
           faction: "Scum and Villainy"
           ship: "JumpMaster 5000"
           unequips_upgrades: [
                'Crew'
           ]
           also_occupies_upgrades: [
                'Crew'
           ]
           confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Astromech'
                }
           ]
       }
       {
           name: "Shadow Caster"
           id: 160
           slot: "Title"
           points: 6
           unique: true
           faction: "Scum and Villainy"
           ship: "Lancer-Class Pursuit Craft"
       }
       {
           name: "Slave I"
           id: 161
           slot: "Title"
           points: 2
           unique: true
           faction: "Scum and Villainy"
           ship: "Firespray-31"
           confersAddons: [
              {
                  type: exportObj.Upgrade
                  slot: "Torpedo"
              }
            ]
       }
       {
           name: "ST-321"
           id: 162
           slot: "Title"
           points: 4
           unique: true
           faction: "Galactic Empire"
           ship: "Lambda-Class Shuttle"
       }
       {
           name: "Virago"
           id: 163
           slot: "Title"
           points: 10
           unique: true
           charge: 2
           ship: "StarViper"
           modifier_func: (stats) ->
                stats.shields += 1       
           confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Modification"
                }
            ]
       }
       {
           name: "Hull Upgrade"
           id: 164
           slot: "Modification"
           points: '*'
           pointsarray: [2,3,5,7]
           variableagility: true
           modifier_func: (stats) ->
                stats.hull += 1
       }
       {
           name: "Shield Upgrade"
           id: 165
           slot: "Modification"
           points: '*'
           pointsarray: [3,4,6,8]
           variableagility: true
           modifier_func: (stats) ->
                stats.shields += 1
       }
       {
           name: "Stealth Device"
           id: 166
           slot: "Modification"
           points: '*'
           pointsarray: [3,4,6,8]
           variableagility: true
           charge: 1
           modifier_func: (stats) ->
                stats.agility += 1
       }
       {
           name: "Phantom"
           id: 167
           slot: "Title"
           points: 2
           unique: true
           faction: "Rebel Alliance"
           ship: ["Attack Shuttle","Sheathipede-Class Shuttle"]
       }
       {
            name: "Hardpoint: Cannon"
            id: 168
            slot: "Hardpoint"
            points: 0
            ignorecollection: true
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Cannon"
                }
            ]
       }
       {
            name: "Hardpoint: Torpedo"
            id: 169
            slot: "Hardpoint"
            ignorecollection: true
            points: 0
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Torpedo"
                }
            ]
       }
       {
            name: "Hardpoint: Missile"
            id: 170
            slot: "Hardpoint"
            ignorecollection: true
            points: 0
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Missile"
                }
            ]
       }
       {
            name: "Black One"
            id: 171
            slot: "Title"
            unique: true
            charge: 1
            points: 2
            faction: "Resistance"
            ship: "T-70 X-Wing"
            modifier_func: (stats) ->
                stats.actions.push 'Slam' if 'Slam' not in stats.actions
       }
       {
            name: "Heroic"
            id: 172
            slot: "Talent"
            points: 1
            faction: "Resistance"
       }
       {
            name: "Rose Tico"
            id: 173
            slot: "Crew"
            points: 9
            unique: true
            faction: "Resistance"
       }
       {
            name: "Finn"
            id: 174
            slot: "Gunner"
            points: 10
            unique: true
            faction: "Resistance"
       }
       {
            name: "Integrated S-Foils"
            id: 175
            slot: "Configuration"
            points: 0
            faction: "Resistance"
            ship: "T-70 X-Wing"
            modifier_func: (stats) ->
                stats.actions.push 'Barrel Roll'
                stats.actions.push '*Focus'
                stats.actions.push 'R> Barrel Roll'
       }
       {
            name: "Integrated S-Foils (Open)"
            id: 176
            skip: true
       }
       {
            name: "Targeting Synchronizer"
            id: 177
            slot: "Tech"
            points: 6
            restriction_func: (ship) ->
                "Lock" in ship.effectiveStats().actions or "Lock" in ship.effectiveStats().actionsred
       }
       {
            name: "Primed Thrusters"
            id: 178
            slot: "Tech"
            points: "*"
            pointsarray: [4,5,6,7,8,9,10]
            variableinit: true
            restriction_func: (ship) ->
                not (ship.data.large? or ship.data.medium?)
       }
       {
            name: "Kylo Ren"
            id: 179
            slot: "Crew"
            points: 11
            force: 1
            faction: "First Order"
            unique: true
            applies_condition: '''I'll Show You the Dark Side'''.canonicalize()
            modifier_func: (stats) ->
                stats.force += 1
       }
       {
            name: "General Hux"
            id: 180
            slot: "Crew"
            points: 10
            unique: true
            faction: "First Order"
            restriction_func: (ship) ->
                "Coordinate" in ship.effectiveStats().actions
       }
       {
            name: "Fanatical"
            id: 181
            slot: "Talent"
            points: 2
            faction: "First Order"
       }
       {
            name: "Special Forces Gunner"
            id: 182
            slot: "Gunner"
            points: 10
            faction: "First Order"
            ship: "TIE/SF Fighter"
       }
       {
            name: "Captain Phasma"
            id: 183
            slot: "Crew"
            unique: true
            points: 5
            faction: "First Order"
       }
       {
            name: "Supreme Leader Snoke"
            id: 184
            slot: "Crew"
            unique: true
            points: 13
            force: 1
            faction: "First Order"
            restriction_func: (ship, upgrade_obj) ->
                ship.hasAnotherUnoccupiedSlotLike upgrade_obj
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnotherUpgradeSlot()
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.force += 1
       }
       {
            name: "Hyperspace Tracking Data"
            id: 185
            slot: "Tech"
            faction: "First Order"
            points: 10
            restriction_func: (ship) ->
                ship.data.large?
       }
       {
            name: "Advanced Optics"
            id: 186
            slot: "Tech"
            points: 4
       }
       {
            name: "Rey"
            id: 187
            slot: "Gunner"
            xws: "rey-gunner"
            points: 14
            unique: true
            force: 1
            faction: "Resistance"
            modifier_func: (stats) ->
                stats.force += 1
       }
       {
            name: "Chewbacca (Resistance)"
            id: 188
            slot: "Crew"
            xws: "chewbacca-crew-swz19" 
            points: 5
            charge: 2
            unique: true
            faction: "Resistance"
       }
       {
            name: "Paige Tico"
            id: 189
            slot: "Gunner"
            points: 7
            unique: true
            faction: "Resistance"
       }
       {
            name: "R2-HA"
            id: 190
            slot: "Astromech"
            points: 4
            unique: true
            faction: "Resistance"
       }
       {
            name: "C-3PO (Resistance)"
            id: 191
            slot: "Crew"
            xws: "c3po-crew"
            points: 6
            unique: true
            faction: "Resistance"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
                stats.actionsred.push 'Coordinate' if 'Coordinate' not in stats.actionsred
       }
       {
            name: "Han Solo (Resistance)"
            id: 192
            slot: "Crew"
            xws: "hansolo-crew"
            points: 6
            unique: true
            faction: "Resistance"
            modifier_func: (stats) ->
                stats.actionsred.push 'Evade' if 'Evade' not in stats.actionsred
       }
       {
            name: "Rey's Millennium Falcon"
            id: 193
            slot: "Title"
            points: 5
            unique: true
            ship: "Scavenged YT-1300"
            faction: "Resistance"
       }
       {
            name: "Petty Officer Thanisson"
            id: 194
            slot: "Crew"
            points: 4
            unique: true
            faction: "First Order"
       }
       {
            name: "BB-8"
            id: 195
            slot: "Astromech"
            points: "*"
            pointsarray: [2,3,4,5,6,7,8]
            variableinit: true
            charge: 2
            unique: true
            faction: "Resistance"
       }
       {
            name: "BB Astromech"
            id: 196
            slot: "Astromech"
            points: "*"
            pointsarray: [0,1,2,3,4,5,6]
            variableinit: true
            charge: 2
            faction: "Resistance"
       }
       {
            name: "M9-G8"
            id: 197
            slot: "Astromech"
            points: 7
            unique: true
            faction: "Resistance"
       }
       {
            name: "Ferrosphere Paint"
            id: 198
            slot: "Tech"
            points: 6
            faction: "Resistance"
       }
       {
            name: "Brilliant Evasion"
            id: 199
            slot: "Force"
            points: '*'
            pointsarray: [0,2,4,6]
            variableagility: true
            points: 6
       }
       {
            name: "Calibrated Laser Targeting"
            id: 200
            slot: "Configuration"
            ship: "Delta-7 Aethersprite"
            points: "*"
            pointsarray: [0,0,2,4,6,8,10]
            variableinit: true
            unequips_upgrades: [ "Modification" ]
            also_occupies_upgrades: [ "Modification" ]
       }
       {
            name: "Delta-7B"
            id: 201
            slot: "Configuration"
            ship: "Delta-7 Aethersprite"
            points: "*"
            pointsarray: [12,13,14,15,16,17,18]
            variableinit: true
            modifier_func: (stats) ->
                stats.attack += 1
                stats.agility += -1
                stats.shields += 2
       }
       {
            name: "Biohexacrypt Codes"
            id: 202
            slot: "Tech"
            points: 1
            faction: "First Order"
            restriction_func: (ship) ->
                "Lock" in ship.effectiveStats().actions or "Lock" in ship.effectiveStats().actionsred
       }
       {
            name: "Predictive Shot"
            id: 203
            slot: "Force"
            points: 4
       }
       {
            name: "Hate"
            id: 204
            slot: "Force"
            points: 3
            restriction_func: (ship) ->
                ship.effectiveStats().darkside == true
       }
       {
            name: "R5-X3"
            id: 205
            slot: "Astromech"
            faction: "Resistance"
            charge: 2
            points: 5
       }
       {
            name: "Pattern Analyzer"
            id: 206
            slot: "Tech"
            points: 5
       }
       {
            name: "Impervium Plating"
            id: 207
            ship: "Belbullab-22 Starfighter"
            charge: 2
            slot: "Modification"
            points: 6
       }
       {
            name: "Grappling Struts"
            id: 208
            ship: "Vulture-class Droid Fighter"
            slot: "Configuration"
            points: 3
       }
       {
            name: "Energy-Shell Charges"
            id: 209
            faction: "Separatist Alliance"
            slot: "Missile"
            attack: 3
            range: """2-3"""
            rangebonus: true 
            charge: 1
            points: 4
            restriction_func: (ship) ->
                "Calculate" in ship.effectiveStats().actions or "Calculate" in ship.effectiveStats().actionsred
       }
       {
            name: "Dedicated"
            id: 210
            faction: "Galactic Republic"
            slot: "Talent"
            points: 3
            restriction_func: (ship) ->
                not ship.pilot.unique
       }
       {
            name: "Synchronized Console"
            id: 211
            faction: "Galactic Republic"
            slot: "Modification"
            points: 2
            restriction_func: (ship) ->
                "Lock" in ship.effectiveStats().actions or "Lock" in ship.effectiveStats().actionsred
       }
       {
            name: "Battle Meditation"
            id: 212
            faction: "Galactic Republic"
            slot: "Force"
            points: "*"
            pointsarray: [3,5,7,9,11,13,15]
            variableinit: true
            modifier_func: (stats) ->
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
       }
       {
            name: "R4-P Astromech"
            id: 213
            faction: "Galactic Republic"
            slot: "Astromech"
            charge: 2
            points: 4
       }
       {
            name: "R4-P17"
            id: 214
            unique: true
            faction: "Galactic Republic"
            slot: "Astromech"
            charge: 2
            points: 5
       }
       {
            name: "Spare Parts Canisters"
            id: 215
            slot: "Modification"
            charge: 1
            points: 4
            restriction_func: (ship) ->
                if "Astromech" in ship.pilot.slots
                    if not ship.isSlotOccupied "Astromech"
                        return true
                else if ship.doesSlotExist "Astromech"
                    if not ship.isSlotOccupied "Astromech"
                        return true
                false
       }
       {
            name: "Scimitar"
            id: 216
            unique: true
            ship: "Sith Infiltrator"
            slot: "Title"
            faction: "Separatist Alliance"
            points: 4
            modifier_func: (stats) ->
                stats.actionsred.push 'Cloak' if 'Cloak' not in stats.actionsred
                stats.actions.push 'Jam' if 'Jam' not in stats.actions
       }
       {
            name: "Chancellor Palpatine"
            id: 217
            unique: true
            slot: "Crew"
            force: 1
            points: 14
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
            restriction_func: (ship) ->
                builder = ship.builder
                return true if builder.faction == "Galactic Republic" or builder.faction == "Separatist Alliance"
                false
       }
       {
            name: "Count Dooku"
            id: 218
            unique: true
            slot: "Crew"
            force: 1
            faction: "Separatist Alliance"
            points: 9
            modifier_func: (stats) ->
                stats.force += 1
       }
       {
            name: "General Grievous"
            id: 219
            unique: true
            slot: "Crew"
            charge: 1
            faction: "Separatist Alliance"
            points: 3
       }
       {
            name: "K2-B4"
            id: 220
            unique: true
            solitary: true
            slot: "Tactical Relay"
            faction: "Separatist Alliance"
            points: 5
       }
       {
            name: "DRK-1 Probe Droids"
            id: 221
            slot: "Device"
            faction: "Separatist Alliance"
            charge: 2
            points: 6
            applies_condition: '''DRK-1 Probe Droid'''.canonicalize()
       }
       {
            name: "Kraken"
            id: 222
            unique: true
            slot: "Tactical Relay"
            solitary: true
            faction: "Separatist Alliance"
            points: 10
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
       }
       {
            name: "TV-94"
            id: 223
            unique: true
            solitary: true
            slot: "Tactical Relay"
            faction: "Separatist Alliance"
            points: 5
       }
       {
            name: "Discord Missiles"
            id: 224
            slot: "Missile"
            faction: "Separatist Alliance"
            charge: 1
            max_per_squad: 3
            points: 6
            applies_condition: '''Buzz Droid Swarm'''.canonicalize()
       }
       {
            name: "Clone Commander Cody"
            id: 225
            unique: true
            slot: "Gunner"
            faction: "Galactic Republic"
            points: 3
       }
       {
            name: "R4-P44"
            id: 226
            unique: true
            faction: "Galactic Republic"
            slot: "Astromech"
            points: 5
       }
       {
            name: "Seventh Fleet Gunner"
            id: 227
            charge: 1
            slot: "Gunner"
            faction: "Galactic Republic"
            points: 9
       }
       {
            name: "Treacherous"
            id: 228
            charge: 1
            slot: "Talent"
            faction: "Separatist Alliance"
            points: 3
       }
       {
            name: "Soulless One"
            id: 229
            slot: "Title"
            unique: true
            ship: "Belbullab-22 Starfighter"
            faction: "Separatist Alliance"
            points: 10
            modifier_func: (stats) ->
                stats.hull += 2
       }
    ]


    conditionsById: [
        {
            name: '''Zero Condition'''
            id: 0
        }
        {
            name: 'Suppressive Fire'
            id: 1
            unique: true
        }
        {
            name: 'Hunted'
            id: 2
            unique: true
        }
        {
            name: 'Listening Device'
            id: 3
            unique: true
        }
        {
            name: 'Optimized Prototype'
            id: 4
            unique: true
        }
        {
            name: '''I'll Show You the Dark Side'''
            id: 5
            unique: true
        }
        {
            name: 'Proton Bomb'
            id: 6
        }
        {
            name: 'Seismic Charge'
            id: 7
        }
        {
            name: 'Bomblet'
            id: 8
        }
        {
            name: 'Loose Cargo'
            id: 9
        }
        {
            name: 'Conner Net'
            id: 10
        }
        {
            name: 'Proximity Mine'
            id: 11
        }
        {
            name: 'Rattled'
            id: 12
        }
        {
            name: 'DRK-1 Probe Droid'
            id: 13
        }
        {
            name: 'Buzz Droid Swarm'
            id: 14
        }
    ]

    quickbuildsById: [
        {
            id: 0
            faction: "Galactic Empire"
            pilot: "Valen Rudor"
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Shield Upgrade"
            ]
        }
        {
            id: 1
            faction: "Galactic Empire"
            pilot: "Black Squadron Ace"
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 2
            faction: "Galactic Empire"
            pilot: "Academy Pilot"
            ship: "TIE Fighter"
            threat: 1
        }
        {
            id: 3
            faction: "Galactic Empire"
            pilot: "Iden Versio"
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Shield Upgrade"
            ]
        }
        {
            id: 4
            faction: "Galactic Empire"
            pilot: '"Night Beast"'
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Predator"
                "Hull Upgrade"
                "Shield Upgrade"
            ]
        }
        {
            id: 5
            faction: "Galactic Empire"
            pilot: "Obsidian Squadron Pilot"
            ship: "TIE Fighter"
            threat: 1
        }
        {
            id: 6
            faction: "Galactic Empire"
            pilot: '"Scourge" Skutu'
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Predator"
                "Shield Upgrade"
            ]
        }
        {
            id: 7
            faction: "Galactic Empire"
            pilot: '"Wampa"'
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Hull Upgrade"
                "Stealth Device"
            ]
        }
        {
            id: 8
            faction: "Galactic Empire"
            pilot: "Black Squadron Ace"
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 9
            faction: "Galactic Empire"
            pilot: "Gideon Hask"
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Shield Upgrade"
            ]
        }
        {
            id: 10
            faction: "Galactic Empire"
            pilot: "Del Meeko"
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Juke"
                "Stealth Device"
            ]
        }
        {
            id: 11
            faction: "Galactic Empire"
            pilot: "Obsidian Squadron Pilot"
            ship: "TIE Fighter"
            threat: 1
            skip: true
        }
        {
            id: 12
            faction: "Galactic Empire"
            pilot: '"Howlrunner"'
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Juke"
                "Shield Upgrade"
            ]
        }
        {
            id: 13
            faction: "Galactic Empire"
            pilot: "Seyn Marana"
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Marksmanship"
                "Afterburners"
            ]
        }
        {
            id: 14
            faction: "Galactic Empire"
            pilot: "Black Squadron Ace"
            suffix: " (x2)"
            linkedId: 14
            ship: "TIE Fighter"
            threat: 3
            upgrades: [
                "Juke"
                "Stealth Device"
            ]
        }
        {
            id: 15
            faction: "Galactic Empire"
            pilot: "Obsidian Squadron Pilot"
            suffix: " (x2)"
            linkedId: 15
            ship: "TIE Fighter"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Shield Upgrade"
            ]
        }
        {
            id: 16
            faction: "Galactic Empire"
            pilot: "Academy Pilot"
            suffix: " (x2)"
            linkedId: 16
            ship: "TIE Fighter"
            threat: 2
        }
        {
            id: 17
            faction: "Galactic Empire"
            pilot: "Academy Pilot"
            ship: "TIE Fighter"
            threat: 1
            skip: true
        }
        {
            id: 18
            faction: "Galactic Empire"
            pilot: "Darth Vader"
            ship: "TIE Advanced"
            threat: 4
            upgrades: [
                "Supernatural Reflexes"
                "Fire-Control System"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 19
            faction: "Galactic Empire"
            pilot: "Maarek Stele"
            ship: "TIE Advanced"
            threat: 3
            upgrades: [
                "Ruthless"
                "Fire-Control System"
                "Cluster Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 20
            faction: "Galactic Empire"
            pilot: "Storm Squadron Ace"
            ship: "TIE Advanced"
            threat: 2
            upgrades: [
                "Fire-Control System"
            ]
        }
        {
            id: 21
            faction: "Galactic Empire"
            pilot: "Ved Foslo"
            ship: "TIE Advanced"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Fire-Control System"
                "Cluster Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 22
            faction: "Galactic Empire"
            pilot: "Zertik Strom"
            ship: "TIE Advanced"
            threat: 3
            upgrades: [
                "Squad Leader"
                "Fire-Control System"
                "Cluster Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 23
            faction: "Galactic Empire"
            pilot: "Tempest Squadron Pilot"
            ship: "TIE Advanced"
            threat: 2
            upgrades: [
                "Cluster Missiles"
            ]
        }
        {
            id: 24
            faction: "Galactic Empire"
            pilot: "Colonel Jendon"
            ship: "Lambda-Class Shuttle"
            threat: 3
            upgrades: [
                "Collision Detector"
                "Ion Cannon"
                "Darth Vader"
                "Freelance Slicer"
                "ST-321"
            ]
        }
        {
            id: 25
            faction: "Galactic Empire"
            pilot: "Captain Kagi"
            ship: "Lambda-Class Shuttle"
            threat: 3
            upgrades: [
                "Collision Detector"
                "Tractor Beam"
                "Emperor Palpatine"
                "Shield Upgrade"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 26
            faction: "Galactic Empire"
            pilot: "Lieutenant Sai"
            ship: "Lambda-Class Shuttle"
            threat: 3
            upgrades: [
                "Ciena Ree"
                'GNK "Gonk" Droid'
                "Advanced Sensors"
                "Jamming Beam"
            ]
        }
        {
            id: 27
            faction: "Galactic Empire"
            pilot: "Omicron Group Pilot"
            ship: "Lambda-Class Shuttle"
            threat: 2
            upgrades: [
                "Admiral Sloane"
                "Jamming Beam"
            ]
        }
        {
            id: 28
            faction: "Galactic Empire"
            pilot: "Lieutenant Kestal"
            ship: "TIE Aggressor"
            threat: 2
            upgrades: [
                "Elusive"
                "Barrage Rockets"
                "Shield Upgrade"
            ]
        }
        {
            id: 29
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Scout"
            ship: "TIE Aggressor"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Dorsal Turret"
                "Proton Rockets"
            ]
        }
        {
            id: 30
            faction: "Galactic Empire"
            pilot: '"Double Edge"'
            ship: "TIE Aggressor"
            threat: 2
            upgrades: [
                "Ion Cannon Turret"
                "Concussion Missiles"
                "Hotshot Gunner"
            ]
        }
        {
            id: 31
            faction: "Galactic Empire"
            pilot: "Sienar Specialist"
            ship: "TIE Aggressor"
            threat: 2
            upgrades: [
                "Ion Cannon Turret"
                "Homing Missiles"
                "Veteran Turret Gunner"
                "Hull Upgrade"
            ]
        }
        {
            id: 32
            faction: "Galactic Empire"
            pilot: '"Whisper"'
            ship: "TIE Phantom"
            threat: 3
            upgrades: [
                "Juke"
                "Advanced Sensors"
                "Agent Kallus"
                "Stealth Device"
            ]
        }
        {
            id: 33
            faction: "Galactic Empire"
            pilot: "Sigma Squadron Ace"
            ship: "TIE Phantom"
            threat: 3
            upgrades: [
                "Predator"
                "Advanced Sensors"
                "Grand Inquisitor"
            ]
        }
        {
            id: 34
            faction: "Galactic Empire"
            pilot: '"Echo"'
            ship: "TIE Phantom"
            threat: 3
            upgrades: [
                "Lone Wolf"
                "Collision Detector"
                "Perceptive Copilot"
                "Stealth Device"
            ]
        }
        {
            id: 35
            faction: "Galactic Empire"
            pilot: "Imdaar Test Pilot"
            ship: "TIE Phantom"
            threat: 2
            upgrades: [
                "Moff Jerjerrod"
            ]
        }
        {
            id: 36
            faction: "Galactic Empire"
            pilot: '"Duchess"'
            ship: "TIE Striker"
            threat: 2
            upgrades: [
                "Trick Shot"
                "Shield Upgrade"
            ]
        }
        {
            id: 37
            faction: "Galactic Empire"
            pilot: "Black Squadron Scout"
            ship: "TIE Striker"
            threat: 2
            upgrades: [
                "Skilled Bombardier"
                "Proximity Mines"
                "Hull Upgrade"
            ]
        }
        {
            id: 38
            faction: "Galactic Empire"
            pilot: '"Countdown"'
            ship: "TIE Striker"
            threat: 2
            upgrades: [
                "Shield Upgrade"
            ]
        }
        {
            id: 39
            faction: "Galactic Empire"
            pilot: "Planetary Sentinel"
            suffix: " x2"
            linkedId: 39
            ship: "TIE Striker"
            threat: 3
            upgrades: [
                "Conner Nets"
            ]
        }
        {
            id: 40
            faction: "Galactic Empire"
            pilot: '"Pure Sabacc"'
            ship: "TIE Striker"
            threat: 2
            upgrades: [
                "Stealth Device"
            ]
        }
        {
            id: 41
            faction: "Galactic Empire"
            pilot: "Black Squadron Scout"
            ship: "TIE Striker"
            threat: 2
            upgrades: [
                "Skilled Bombardier"
                "Proximity Mines"
                "Hull Upgrade"
            ]
            skip: true
        }
        {
            id: 42
            faction: "Galactic Empire"
            pilot: "Countess Ryad"
            ship: "TIE Defender"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "Afterburners"
            ]
        }
        {
            id: 43
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Ace"
            ship: "TIE Defender"
            threat: 3
        }
        {
            id: 44
            faction: "Galactic Empire"
            pilot: "Rexler Brath"
            ship: "TIE Defender"
            threat: 4
            upgrades: [
                "Juke"
                "Collision Detector"
                "Cluster Missiles"
            ]
        }
        {
            id: 45
            faction: "Galactic Empire"
            pilot: "Colonel Vessery"
            ship: "TIE Defender"
            threat: 4
            upgrades: [
                "Juke"
                "Fire-Control System"
                "Cluster Missiles"
            ]
        }
        {
            id: 46
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Ace"
            ship: "TIE Defender"
            threat: 4
            upgrades: [
                "Elusive"
                "Advanced Sensors"
                "Proton Rockets"
            ]
        }
        {
            id: 47
            faction: "Galactic Empire"
            pilot: "Tomax Bren"
            ship: "TIE Bomber"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Proton Torpedoes"
                "Proton Bombs"
            ]
        }
        {
            id: 48
            faction: "Galactic Empire"
            pilot: '"Deathfire"'
            ship: "TIE Bomber"
            threat: 2
            upgrades: [
                "Cluster Missiles"
                "Skilled Bombardier"
                "Seismic Charges"
                "Proximity Mines"
                "Electronic Baffle"
            ]
        }
        {
            id: 49
            faction: "Galactic Empire"
            pilot: "Major Rhymer"
            ship: "TIE Bomber"
            threat: 2
            upgrades: [
                "Intimidation"
                "Adv. Proton Torpedoes"
                "Cluster Missiles"
            ]
        }
        {
            id: 50
            faction: "Galactic Empire"
            pilot: "Scimitar Squadron Pilot"
            suffix: " x2"
            linkedId: 50
            ship: "TIE Bomber"
            threat: 3
            upgrades: [
                "Ion Missiles"
                "Proton Bombs"
            ]
        }
        {
            id: 51
            faction: "Galactic Empire"
            pilot: "Captain Jonus"
            ship: "TIE Bomber"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "Shield Upgrade"
            ]
        }
        {
            id: 52
            faction: "Galactic Empire"
            pilot: "Gamma Squadron Ace"
            ship: "TIE Bomber"
            threat: 2
            upgrades: [
                "Concussion Missiles"
                "Skilled Bombardier"
                "Bomblet Generator"
                "Shield Upgrade"
            ]
        }
        {
            id: 53
            faction: "Galactic Empire"
            pilot: "Grand Inquisitor"
            ship: "TIE Advanced Prototype"
            threat: 3
            upgrades: [
                "Supernatural Reflexes"
                "Concussion Missiles"
            ]
        }
        {
            id: 54
            faction: "Galactic Empire"
            pilot: "Inquisitor"
            ship: "TIE Advanced Prototype"
            threat: 2
            upgrades: [
                "Instinctive Aim"
                "Cluster Missiles"
                "Munitions Failsafe"
            ]
        }
        {
            id: 55
            faction: "Galactic Empire"
            pilot: "Seventh Sister"
            ship: "TIE Advanced Prototype"
            threat: 2
            upgrades: [
                "Homing Missiles"
            ]
        }
        {
            id: 56
            faction: "Galactic Empire"
            pilot: "Baron of the Empire"
            ship: "TIE Advanced Prototype"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Proton Rockets"
                "Stealth Device"
            ]
        }
        {
            id: 57
            faction: "Galactic Empire"
            pilot: "Soontir Fel"
            ship: "TIE Interceptor"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Afterburners"
                "Stealth Device"
            ]
        }
        {
            id: 58
            faction: "Galactic Empire"
            pilot: "Alpha Squadron Pilot"
            suffix: " x2"
            linkedId: 58
            ship: "TIE Interceptor"
            threat: 3
            upgrades: [
                "Ablative Plating"
            ]
        }
        {
            id: 59
            faction: "Galactic Empire"
            pilot: "Turr Phennir"
            ship: "TIE Interceptor"
            threat: 2
            upgrades: [
                "Daredevil"
                "Electronic Baffle"
            ]
        }
        {
            id: 60
            faction: "Galactic Empire"
            pilot: "Saber Squadron Ace"
            ship: "TIE Interceptor"
            threat: 2
            upgrades: [
                "Predator"
                "Stealth Device"
            ]
        }
        {
            id: 61
            faction: "Galactic Empire"
            pilot: "Lieutenant Karsabi"
            ship: "Alpha-Class Star Wing"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Heavy Laser Cannon"
                "Advanced SLAM"
                "Xg-1 Assault Configuration"
            ]
        }
        {
            id: 62
            faction: "Galactic Empire"
            pilot: "Nu Squadron Pilot"
            ship: "Alpha-Class Star Wing"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Proton Torpedos"
                "Advanced SLAM"
                "Os-1 Arsenal Loadout"
            ]
        }
        {
            id: 63
            faction: "Galactic Empire"
            pilot: "Major Vynder"
            ship: "Alpha-Class Star Wing"
            threat: 2
            upgrades: [
                "Saturation Salvo"
                "Barrage Rockets"
                "Advanced SLAM"
                "Os-1 Arsenal Loadout"
            ]
        }
        {
            id: 64
            faction: "Galactic Empire"
            pilot: "Rho Squadron Pilot"
            ship: "Alpha-Class Star Wing"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Ion Cannon"
                "Homing Missiles"
                "Advanced SLAM"
                "Xg-1 Assault Configuration"
            ]
        }
        {
            id: 65
            faction: "Galactic Empire"
            pilot: '"Deathrain"'
            ship: "TIE Punisher"
            threat: 2
            upgrades: [
                "Trajectory Simulator"
                "Homing Missiles"
                "Bomblet Generator"
                "Ablative Plating"
            ]
        }
        {
            id: 66
            skip: true
            faction: "Galactic Empire"
            pilot: '"Deathrain"'
            ship: "TIE Punisher"
            threat: 2
            upgrades: [
                "Trajectory Simulator"
                "Homing Missiles"
                "Bomblet Generator"
                "Ablative Plating"
            ]
        }
        {
            id: 67
            faction: "Galactic Empire"
            pilot: "Cutlass Squadron Pilot"
            ship: "TIE Punisher"
            threat: 2
            upgrades: [
                "Trajectory Simulator"
                "Ion Missiles"
                "Skilled Bombardier"
                "Proton Bombs"
            ]
        }
        {
            id: 68
            faction: "Galactic Empire"
            pilot: '"Redline"'
            ship: "TIE Punisher"
            threat: 2
            upgrades: [
                "Debris Gambit"
                "Cluster Missiles"
            ]
        }
        {
            id: 69
            faction: "Galactic Empire"
            pilot: "Cutlass Squadron Pilot"
            ship: "TIE Punisher"
            threat: 2
            upgrades: [
                "Advanced Sensors"
                "Proton Rockets"
                "Connor Nets"
            ]
        }
        {
            id: 70
            faction: "Galactic Empire"
            pilot: "Captain Oicunn"
            ship: "VT-49 Decimator"
            threat: 4
            upgrades: [
                "Intimidation"
                "Grand Moff Tarkin"
                "Dauntless"
            ]
        }
        {
            id: 71
            faction: "Galactic Empire"
            pilot: "Rear Admiral Chiraneau"
            ship: "VT-49 Decimator"
            threat: 4
            upgrades: [
                "Swarm Tactics"
                "Minister Tua"
                "Tactical Officer"
            ]
        }
        {
            id: 72
            faction: "Galactic Empire"
            pilot: "Patrol Leader"
            ship: "VT-49 Decimator"
            threat: 4
            upgrades: [
                "Informant"
                "Seventh Sister"
                "Fifth Brother"
            ]
        }
        {
            id: 73
            faction: "Galactic Empire"
            pilot: '"Vizier"'
            ship: "TIE Reaper"
            threat: 2
            upgrades: [
                "Director Krennic"
            ]
        }
        {
            id: 74
            faction: "Galactic Empire"
            pilot: "Scarif Base Pilot"
            ship: "TIE Reaper"
            threat: 2
            upgrades: [
                "Death Troopers"
                "Shield Upgrade"
            ]
        }
        {
            id: 75
            faction: "Galactic Empire"
            pilot: "Major Vermeil"
            ship: "TIE Reaper"
            threat: 2
            upgrades: [
                "Swarm Tactics"
                "Tactical Officer"
            ]
        }
        {
            id: 76
            faction: "Galactic Empire"
            pilot: "Captain Feroph"
            ship: "TIE Reaper"
            threat: 2
            upgrades: [
                "Swarm Tactics"
                "ISB Slicer"
            ]
        }
        {
            id: 77
            faction: "Rebel Alliance"
            pilot: "Luke Skywalker"
            ship: "X-Wing"
            threat: 3
            upgrades: [
                "Instinctive Aim"
                "Proton Torpedoes"
                "R2-D2"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 78
            faction: "Rebel Alliance"
            pilot: "Red Squadron Veteran"
            ship: "X-Wing"
            threat: 2
            upgrades: [
                "Predator"
                "R5 Astromech"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 79
            faction: "Rebel Alliance"
            pilot: "Jek Porkins"
            ship: "X-Wing"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "R5-D8"
                "Afterburners"
                "Hull Upgrade"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 80
            faction: "Rebel Alliance"
            pilot: "Blue Squadron Escort"
            ship: "X-Wing"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "R3 Astromech"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 81
            faction: "Rebel Alliance"
            pilot: "Wedge Antilles"
            ship: "X-Wing"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Proton Torpedoes"
                "R4 Astromech"
                "Shield Upgrade"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 82
            faction: "Rebel Alliance"
            pilot: "Biggs Darklighter"
            ship: "X-Wing"
            threat: 2
            upgrades: [
                "Selfless"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 83
            faction: "Rebel Alliance"
            pilot: "Thane Kyrell"
            ship: "X-Wing"
            threat: 3
            upgrades: [
                "Elusive"
                "Ion Torpedoes"
                "R2 Astromech"
                "Afterburners"
                "Hull Upgrade"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 84
            faction: "Rebel Alliance"
            pilot: "Garven Dreis (X-Wing)"
            ship: "X-Wing"
            threat: 2
            upgrades: [
                "Servomotor S-Foils"
            ]
        }
        {
            id: 85
            faction: "Rebel Alliance"
            pilot: "Norra Wexley (Y-Wing)"
            ship: "Y-Wing"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Ion Cannon Turret"
                "Veterna Turret Gunner"
                "R3 Astromech"
            ]
        }
        {
            id: 86
            faction: "Rebel Alliance"
            pilot: "Evaan Verlaine"
            ship: "Y-Wing"
            threat: 2
            upgrades: [
                "Expert Handling"
                "Ion Cannon Turret"
            ]
        }
        {
            id: 87
            faction: "Rebel Alliance"
            pilot: "Gold Squadron Veteran"
            ship: "Y-Wing"
            threat: 2
            upgrades: [
                "Expert Handling"
                "Proton Torpedoes"
                "R3 Astromech"
            ]
        }
        {
            id: 88
            faction: "Rebel Alliance"
            pilot: "Horton Salm"
            ship: "Y-Wing"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Ion Cannon Turret"
                "Veteran Turret Gunner"
                "R5 Astromech"
            ]
        }
        {
            id: 89
            faction: "Rebel Alliance"
            pilot: '"Dutch" Vander'
            ship: "Y-Wing"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "R3 Astromech"
            ]
        }
        {
            id: 90
            faction: "Rebel Alliance"
            pilot: "Gray Squadron Bomber"
            ship: "Y-Wing"
            threat: 2
            upgrades: [
                "Ion Cannon Turret"
                "Proton Bomb"
                "R5 Astromech"
            ]
        }
        {
            id: 91
            faction: "Rebel Alliance"
            pilot: "Esege Tuketu"
            ship: "K-Wing"
            threat: 3
            upgrades: [
                "Trajectory Simulator"
                "Ion Missiles"
                "Perceptive Copilot"
                "Conner Nets"
                "Proton Bombs"
                "Advanced SLAM"
            ]
        }
        {
            id: 92
            faction: "Rebel Alliance"
            pilot: "Miranda Doni"
            ship: "K-Wing"
            threat: 2
            upgrades: [
                "Proton Bombs"
                "Advanced SLAM"
            ]
        }
        {
            id: 93
            faction: "Rebel Alliance"
            pilot: "Warden Squadron Pilot"
            ship: "K-Wing"
            threat: 2
            upgrades: [
                "Barrage Rocktes"
                "Bomblet Generator"
            ]
        }
        {
            id: 94
            faction: "Rebel Alliance"
            pilot: "Braylen Stramm"
            ship: "B-Wing"
            threat: 2
            upgrades: [
                "Trick Shot"
                "Jamming Beam"
            ]
        }
        {
            id: 95
            faction: "Rebel Alliance"
            pilot: "Blade Squadron Veteran"
            ship: "B-Wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Tractor Beam"
            ]
        }
        {
            id: 96
            faction: "Rebel Alliance"
            pilot: "Ten Numb"
            ship: "B-Wing"
            threat: 3
            upgrades: [
                "Squad Leader"
                "Advanced Sensors"
                "Heavy Laser Cannon"
                "Shield Upgrade"
            ]
        }
        {
            id: 97
            faction: "Rebel Alliance"
            pilot: "Blue Squadron Pilot"
            ship: "B-Wing"
            threat: 2
            upgrades: [
                "Advanced Sensors"
            ]
        }
        {
            id: 98
            faction: "Rebel Alliance"
            pilot: "Norra Wexley"
            ship: "ARC-170"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Seasoned Navigator"
                "Veteran Tail Gunner"
                "R3 Astromech"
                "Ablative Plating"
                "Hull Upgrade"
            ]
        }
        {
            id: 99
            faction: "Rebel Alliance"
            pilot: "Garven Dreis"
            ship: "ARC-170"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Proton Torpedoes"
                "Perceptive Copilot"
                "Veteran Tail Gunner"
            ]
        }
        {
            id: 100
            faction: "Rebel Alliance"
            pilot: "Shara Bey"
            ship: "ARC-170"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Proton Torpedoes"
                "Perceptive Copilot"
                "R3 Astromech"
            ]
        }
        {
            id: 101
            faction: "Rebel Alliance"
            pilot: "Ibtisam"
            ship: "ARC-170"
            threat: 2
            upgrades: [
                "Elusive"
            ]
        }
        {
            id: 102
            faction: "Rebel Alliance"
            pilot: "Wullffwarro"
            ship: "Auzituck Gunship"
            threat: 3
            upgrades: [
                "Selfless"
                'GNK "Gonk" Droid'
                "Novice Technician"
                "Hull Upgrade"
            ]
        }
        {
            id: 103
            faction: "Rebel Alliance"
            pilot: "Lowhhrick"
            ship: "Auzituck Gunship"
            threat: 2
        }
        {
            id: 104
            faction: "Rebel Alliance"
            pilot: "Kashyyyk Defender"
            ship: "Auzituck Gunship"
            threat: 2
            upgrades: [
                "Novice Technician"
            ]
        }
        {
            id: 105
            skip: true
        }
        {
            id: 106
            faction: "Rebel Alliance"
            pilot: "Corran Horn"
            ship: "E-Wing"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "Fire-Control System"
                "Proton Torpedoes"
                "R2 Astromech"
                "Afterburners"
            ]
        }
        {
            id: 107
            faction: "Rebel Alliance"
            pilot: "Rogue Squadron Escort"
            ship: "E-Wing"
            threat: 3
            upgrades: [
                "Predator"
                "Collision Detector"
                "Proton Torpedoes"
                "R3 Astromech"
            ]
        }
        {
            id: 108
            faction: "Rebel Alliance"
            pilot: "Gavin Darklighter"
            ship: "E-Wing"
            threat: 3
            upgrades: [
                "Crack Shot"
                "Fire-Control System"
                "Ion Torpedoes"
                "R4 Astromech"
            ]
        }
        {
            id: 109
            faction: "Rebel Alliance"
            pilot: "Knave Squadron Escort"
            ship: "E-Wing"
            threat: 2
        }
        {
            id: 110
            faction: "Rebel Alliance"
            pilot: "Jan Ors"
            ship: "HWK-290"
            threat: 3
            upgrades: [
                "Trick Shot"
                "Perceptive Copilot"
                "Seismic Charges"
                "Cloaking Device"
                "Engine Upgrade"
                "Moldy Crow"
            ]
        }
        {
            id: 111
            faction: "Rebel Alliance"
            pilot: "Roark Garnet"
            ship: "HWK-290"
            threat: 2
            upgrades: [
                "Elusive"
                "Seismic Charges"
                "Hull Upgrade"
                "Shield Upgrade"
            ]
        }
        {
            id: 112
            faction: "Rebel Alliance"
            pilot: "Kyle Katarn"
            ship: "HWK-290"
            threat: 2
            upgrades: [
                "Moldy Crow"
            ]
        }
        {
            id: 113
            faction: "Rebel Alliance"
            pilot: "Rebel Scout"
            ship: "HWK-290"
            threat: 2
            upgrades: [
                "Proton Bombs"
                "Seismic Charges"
                "Sabine Wren"
                "Engine Upgrade"
            ]
        }
        {
            id: 114
            faction: "Rebel Alliance"
            pilot: "Arvel Crynyd"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Intimidation"
                "Proton Rockets"
                "Hull Upgrade"
            ]
        }
        {
            id: 115
            faction: "Rebel Alliance"
            pilot: "Green Squadron Pilot"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Daredevil"
                "Concussion Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 116
            faction: "Jake Farrell"
            pilot: "Green Squadron Pilot"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Cluster Missiles"
            ]
        }
        {
            id: 117
            faction: "Rebel Alliance"
            pilot: "Phoenix Squadron Pilot"
            suffix: " x2"
            linkedId: 117
            ship: "A-Wing"
            threat: 3
            upgrades: [
                "Proton Rockets"
            ]
        }
        {
            id: 118
            faction: "Rebel Alliance"
            pilot: "Fenn Rau (Sheathipede)"
            ship: "Sheathipede-Class Shuttle"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Seasoned Navigator"
                "R4 Astromech"
                "Stealth Device"
                "Phantom"
            ]
        }
        {
            id: 119
            faction: "Rebel Alliance"
            pilot: "Ezra Bridger (Sheathipede)"
            ship: "Sheathipede-Class Shuttle"
            threat: 2
            upgrades: [
                "Heightened Perception"
                '"Chopper" (Astromech)'
                "Afterburners"
                "Phantom"
            ]
        }
        {
            id: 120
            faction: "Rebel Alliance"
            pilot: "Captain Rex"
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Juke"
                "Stealth Device"
            ]
        }
        {
            id: 121
            faction: "Rebel Alliance"
            pilot: "Sabine Wren (TIE Fighter)"
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Conner Nets"
                "Hull Upgrade"
            ]
        }
        {
            id: 122
            faction: "Rebel Alliance"
            pilot: "Ezra Bridger (TIE Fighter)"
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Supernatural Reflexes"
                '"Zeb" Orrelios'
                "Hull Upgrade"
            ]
        }
        {
            id: 123
            faction: "Rebel Alliance"
            pilot: '"Zeb" Orrelios (TIE Fighter)'
            ship: "TIE Fighter"
            threat: 1
        }
        {
            id: 124
            faction: "Rebel Alliance"
            pilot: "Cassian Andor"
            ship: "U-Wing"
            threat: 3
            upgrades: [
                "Fire-Control System"
                "Jyn Erso"
                "Baze Malbus"
                "Pivot Wing"
            ]
        }
        {
            id: 125
            faction: "Rebel Alliance"
            pilot: "Bodhi Rook"
            ship: "U-Wing"
            threat: 2
            upgrades: [
                "Cassian Andor"
                "Pivot Wing"
            ]
        }
        {
            id: 126
            faction: "Rebel Alliance"
            pilot: "Heff Tobber"
            ship: "U-Wing"
            threat: 3
            upgrades: [
                "Fire-Control System"
                "Ion Cannon Turret"
                "Bistan"
                "Perceptive Copilot"
                "Pivot Wing"
            ]
        }
        {
            id: 127
            faction: "Rebel Alliance"
            pilot: "Blue Squadron Scout"
            ship: "U-Wing"
            threat: 2
            upgrades: [
                "Advanced Sensors"
                "Tactical Officer"
                "Pivot Wing"
            ]
        }
        {
            id: 128
            faction: "Rebel Alliance"
            pilot: "Han Solo"
            ship: "YT-1300"
            threat: 4
            upgrades: [
                "Lone Wolf"
                "Chewbacca"
                "Millennium Falcon"
            ]
        }
        {
            id: 129
            faction: "Rebel Alliance"
            pilot: "Chewbacca"
            ship: "YT-1300"
            threat: 6
            upgrades: [
                "Predator"
                "C-3PO"
                "Leia Organa"
                "R2-D2"
                "Han Solo"
                "Luke Skywalker"
                "Engine Upgrade"
                "Millennium Falcon"
            ]
        }
        {
            id: 130
            faction: "Rebel Alliance"
            pilot: "Lando Calrissian"
            ship: "YT-1300"
            threat: 5
            upgrades: [
                "Swarm Tactics"
                "Concussion Missiles"
                "Nien Nunb"
                "Engine Upgrade"
                "Millennium Falcon"
            ]
        }
        {
            id: 131
            faction: "Rebel Alliance"
            pilot: "Outer Rim Smuggler"
            ship: "YT-1300"
            threat: 4
            upgrades: [
                "Homing Missiles"
                "Novice Technician"
                "Veteran Turret Gunner"
                "Feedback Array"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 132
            faction: "Rebel Alliance"
            pilot: "Airen Cracken"
            ship: "Z-95 Headhunter"
            threat: 2
            upgrades: [
                "Swarm Tactics"
                "Cluster Missiles"
                "Hull Upgrade"
            ]
        }
        {
            id: 133
            faction: "Rebel Alliance"
            pilot: "Bandit Squadron Pilot"
            ship: "Z-95 Headhunter"
            threat: 1
        }
        {
            id: 134
            faction: "Rebel Alliance"
            pilot: "Lieutenant Blount"
            ship: "Z-95 Headhunter"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Proton Rockets"
                "Shield Upgrade"
            ]
        }
        {
            id: 135
            faction: "Rebel Alliance"
            pilot: "Tala Squadron Pilot"
            ship: "Z-95 Headhunter"
            threat: 1
            upgrades: [
                "Selfless"
            ]
        }
        {
            id: 136
            faction: "Rebel Alliance"
            pilot: "Hera Syndulla"
            ship: "Attack Shuttle"
            threat: 2
            upgrades: [
                "Elusive"
                "Ion Cannon Turret"
                "Phantom"
            ]
        }
        {
            id: 137
            faction: "Rebel Alliance"
            pilot: "Sabine Wren"
            ship: "Attack Shuttle"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Dorsal Turret"
                "Phantom"
            ]
        }
        {
            id: 138
            faction: "Rebel Alliance"
            pilot: "Dash Rendar"
            ship: "YT-2400"
            threat: 5
            upgrades: [
                "Expert Handling"
                "Trick Shot"
                "Perceptive Copilot"
                "Rigged Cargo Chute"
                "Outrider"
            ]
        }
        {
            id: 139
            faction: "Rebel Alliance"
            pilot: '"Leebo"'
            ship: "YT-2400"
            threat: 4
            upgrades: [
                "Outrider"
                "Inertial Dampeners"
            ]
        }
        {
            id: 140
            faction: "Rebel Alliance"
            pilot: "Wild Space Fringer"
            ship: "YT-2400"
            threat: 4
            upgrades: [
                "Concussion Missiles"
                "Veteran Turret Gunner"
                "Contraband Cybernetics"
            ]
        }
        {
            id: 141
            faction: "Rebel Alliance"
            pilot: "Magva Yarro"
            ship: "U-Wing"
            threat: 3
            upgrades: [
                "Elusive"
                "Saw Gerrera"
                "Advanced Sensors"
                "Shield Upgrade"
                "Pivot Wing"
            ]
        }
        {
            id: 142
            faction: "Rebel Alliance"
            pilot: "Saw Gerrera"
            ship: "U-Wing"
            threat: 2
            upgrades: [
                "Magva Yarro"
                "Pivot Wing"
            ]
        }
        {
            id: 143
            faction: "Rebel Alliance"
            pilot: "Benthic Two Tubes"
            ship: "U-Wing"
            threat: 2
            upgrades: [
                "Advanced Sensors"
                "Pivot Wing"
            ]
        }
        {
            id: 144
            faction: "Rebel Alliance"
            pilot: "Partisan Renegade"
            ship: "U-Wing"
            threat: 2
            upgrades: [
                "Advanced Sensors"
                "Deadman's Switch"
                "Pivot Wing"
            ]
        }
        {
            id: 145
            faction: "Rebel Alliance"
            pilot: "Kullbee Sperado"
            ship: "X-Wing"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "R2 Astromech"
                "Deadman's Switch"
                "Afterburners"
                "Hull Upgrade"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 146
            faction: "Rebel Alliance"
            pilot: "Edrio Two Tubes"
            ship: "X-Wing"
            threat: 2
            upgrades: [
                "Trick Shot"
                "R4 Astromech"
                "Deadman's Switch"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 147
            faction: "Rebel Alliance"
            pilot: "Leevan Tenza"
            ship: "X-Wing"
            threat: 3
            upgrades: [
                "Elusive"
                "R2 Astromech"
                "Deadman's Switch"
                "Afterburners"
                "Shield Upgrade"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 148
            faction: "Rebel Alliance"
            pilot: "Cavern Angels Zealot"
            ship: "X-Wing"
            threat: 2
            upgrades: [
                "R2 Astromech"
                "Deadman's Switch"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 149
            faction: "Rebel Alliance"
            pilot: "Kanan Jarrus"
            suffix: " + Phantom"
            linkedId: 150
            ship: "VCX-100"
            threat: 6
            upgrades: [
                "Ion Cannon Turret"
                "Hera Syndulla"
                '"Chopper" (Crew)'
                "Ezra Bridger"
                "Ghost"
            ]
        }
        {
            id: 150
            faction: "Rebel Alliance"
            pilot: '"Zeb" Orrelios'
            suffix: " + Ghost"
            linkedId: 149
            ship: "Attack Shuttle"
            threat: 6
            upgrades: [
                "Phantom"
            ]
        }
        {
            id: 151
            faction: "Rebel Alliance"
            pilot: "Hera Syndulla (VCX-100)"
            suffix: " + Phantom"
            linkedId: 152
            ship: "VCX-100"
            threat: 6
            upgrades: [
                "Elusive"
                "Dorsal Turret"
                "Kanan Jarrus"
                "Ghost"
            ]
        }
        {
            id: 152
            faction: "Rebel Alliance"
            pilot: "Ezra Bridger"
            suffix: " + Ghost"
            linkedId: 151
            ship: "Attack Shuttle"
            threat: 6
            upgrades: [
                "Supernatural Reflexes"
                "Dorsal Turret"
                "Phantom"
            ]
        }
        {
            id: 153
            faction: "Rebel Alliance"
            pilot: '"Chopper"'
            suffix: " + Phantom"
            linkedId: 154
            ship: "VCX-100"
            threat: 6
            upgrades: [
                "Ion Cannon Turret"
                '"Zeb" Orrelios'
                "Ghost"
            ]
        }
        {
            id: 154
            faction: "Rebel Alliance"
            pilot: "AP-5"
            suffix: " + Ghost"
            linkedId: 153
            ship: "Sheathipede-Class Shuttle"
            threat: 6
            upgrades: [
                "R4 Astromech"
                "Phantom"
            ]
        }
        {
            id: 155
            faction: "Rebel Alliance"
            pilot: "Lothal Rebel"
            suffix: " + Phantom"
            linkedId: 156
            ship: "VCX-100"
            threat: 4
            upgrades: [
                "Dorsal Turret"
                "Lando Calrissian"
                "Ghost"
            ]
        }
        {
            id: 156
            faction: "Rebel Alliance"
            pilot: '"Zeb" Orrelios (Sheathipede)'
            suffix: " + Ghost"
            linkedId: 155
            ship: "Sheathipede-Class Shuttle"
            threat: 4
            upgrades: [
                "R5 Astromech"
                "Phantom"
            ]
        }
        {
            id: 157
            faction: "First Order"
            pilot: '"Midnight"'
            ship: "TIE/FO Fighter"
            threat: 2
            upgrades: [
                "Afterburners"
            ]
        }
        {
            id: 158
            faction: "First Order"
            pilot: '"Static"'
            ship: "TIE/FO Fighter"
            threat: 2
            upgrades: [
                "Outmaneuver"
            ]
        }
        {
            id: 159
            faction: "First Order"
            pilot: "Omega Squadron Ace"
            ship: "TIE/FO Fighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Fanatical"
                "Hull Upgrade"
            ]
        }
        {
            id: 160
            faction: "First Order"
            pilot: '"Scorch"'
            ship: "TIE/FO Fighter"
            threat: 2
            upgrades: [
                "Fanatical"
                "Hull Upgrade"
            ]
        }
        {
            id: 161
            faction: "First Order"
            pilot: '"Longshot"'
            ship: "TIE/FO Fighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Predator"
            ]
        }
        {
            id: 162
            faction: "First Order"
            pilot: "Zeta Squadron Pilot"
            ship: "TIE/FO Fighter"
            threat: 2
            upgrades: [
                "Advanced Optics"
                "Shield Upgrade"
            ]
        }
        {
            id: 163
            faction: "First Order"
            pilot: '"Muse"'
            ship: "TIE/FO Fighter"
            threat: 2
            upgrades: [
                "Squad Leader"
                "Advanced Optics"
            ]
        }
        {
            id: 164
            faction: "First Order"
            pilot: '"Null"'
            ship: "TIE/FO Fighter"
            threat: 2
            upgrades: [
                "Swarm Tactics"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 165
            faction: "First Order"
            pilot: "Epsilon Squadron Cadet"
            ship: "TIE/FO Fighter"
            threat: 2
            upgrades: [
                "Targeting Synchronizer"
                "Afterburners"
            ]
        }
        {
            id: 166
            faction: "First Order"
            pilot: "Commander Malarus"
            ship: "TIE/FO Fighter"
            threat: 2
            upgrades: [
                "Advanced Optics"
            ]
        }
        {
            id: 167
            faction: "First Order"
            pilot: "TN-3465"
            ship: "TIE/FO Fighter"
            threat: 2
            upgrades: [
                "Targeting Synchronizer"
                "Shield Upgrade"
            ]
        }
        {
            id: 168
            faction: "First Order"
            pilot: "Lieutenant Rivas"
            ship: "TIE/FO Fighter"
            threat: 1
            upgrades: [
            ]
        }
        {
            id: 169
            faction: "First Order"
            pilot: '"Quickdraw"'
            ship: "TIE/SF Fighter"
            threat: 3
            upgrades: [
                "Juke"
                "Collision Detector"
                "Hotshot Gunner"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 170
            faction: "First Order"
            pilot: "Zeta Squadron Survivor"
            ship: "TIE/SF Fighter"
            threat: 2
            upgrades: [
                "Pattern Analyzer"
                "Ion Missiles"
                "Special Forces Gunner"
            ]
        }
        {
            id: 171
            faction: "First Order"
            pilot: '"Backdraft"'
            ship: "TIE/SF Fighter"
            threat: 3
            upgrades: [
                "Pattern Analyzer"
                "Collision Detector"
                "Ion Missiles"
                "Special Forces Gunner"
                "Shield Upgrade"
            ]
        }
        {
            id: 172
            faction: "First Order"
            pilot: "Omega Squadron Expert"
            ship: "TIE/SF Fighter"
            threat: 2
            upgrades: [
                "Juke"
                "Special Forces Gunner"
            ]
        }
        {
            id: 173
            faction: "First Order"
            pilot: "Kylo Ren"
            ship: "TIE/VN Silencer"
            threat: 4
            upgrades: [
                "Hate"
                "Predictive Shot"
                "Primed Thrusters"
                "Advanced Proton Torpedoes"
            ]
        }
        {
            id: 174
            faction: "First Order"
            pilot: '"Recoil"'
            ship: "TIE/VN Silencer"
            threat: 3
            upgrades: [
                "Predator"
                "Proton Torpedoes"
            ]
        }
        {
            id: 175
            faction: "First Order"
            pilot: "First Order Test Pilot"
            ship: "TIE/VN Silencer"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Hull Upgrade"
            ]
        }
        {
            id: 176
            faction: "First Order"
            pilot: '"Blackout"'
            ship: "TIE/VN Silencer"
            threat: 3
            upgrades: [
                "Elusive"
                "Afterburners"
            ]
        }
        {
            id: 177
            faction: "First Order"
            pilot: '"Avenger"'
            ship: "TIE/VN Silencer"
            threat: 3
            upgrades: [
                "Primed Thrusters"
                "Advanced Proton Torpedoes"
            ]
        }
        {
            id: 178
            faction: "First Order"
            pilot: "Sienar-Jaemus Engineer"
            ship: "TIE/VN Silencer"
            threat: 2
        }
        {
            id: 179
            faction: "First Order"
            pilot: "Lieutenant Tavson"
            ship: "Upsilon-Class Command Shuttle"
            threat: 4
            upgrades: [
                "Advanced Sensors"
                "Ion Cannon"
                "Kylo Ren"
                "Supreme Leader Snoke"
                "Shield Upgrade"
            ]
        }
        {
            id: 180
            faction: "First Order"
            pilot: "Lieutenant Dormitz"
            ship: "Upsilon-Class Command Shuttle"
            threat: 3
            upgrades: [
                "Biohexacrypt Codes"
                "Hyperspace Tracking Data"
                "Tractor Beam"
            ]
        }
        {
            id: 181
            faction: "First Order"
            pilot: "Starkiller Base Pilot"
            ship: "Upsilon-Class Command Shuttle"
            threat: 2
        }
        {
            id: 182
            faction: "First Order"
            pilot: "Major Stridan"
            ship: "Upsilon-Class Command Shuttle"
            threat: 4
            upgrades: [
                "Biohexacrypt Codes"
                "Pattern Analyzer"
                "Tractor Beam"
                "Captain Phasma"
                "General Hux"
            ]
        }
        {
            id: 183
            faction: "First Order"
            pilot: "Captain Cardinal"
            ship: "Upsilon-Class Command Shuttle"
            threat: 3
            upgrades: [
                "Ion Cannon"
                "Petty Officer Thanisson"
            ]
        }
        {
            id: 184
            faction: "First Order"
            pilot: "Petty Officer Thanisson"
            ship: "Upsilon-Class Command Shuttle"
            threat: 3
            upgrades: [
                "Captain Phasma"
                "Tactical Scrambler"
            ]
        }
        {
            id: 185
            faction: "Scum and Villainy"
            pilot: "Boba Fett"
            ship: "Firespray-31"
            threat: 4
            upgrades: [
                "Lone Wolf"
                "Perceptive Copilot"
                "Inertial Dampeners"
                "Seismic Charge"
                "Slave I"
            ]
        }
        {
            id: 186
            faction: "Scum and Villainy"
            pilot: "Kath Scarlet"
            ship: "Firespray-31"
            threat: 3
            upgrades: [
                "Marauder"
            ]
        }
        {
            id: 187
            faction: "Scum and Villainy"
            pilot: "Krassis Trelix"
            ship: "Firespray-31"
            threat: 3
            upgrades: [
                "Concussion Missiles"
            ]
        }
        {
            id: 188
            faction: "Scum and Villainy"
            pilot: "Emon Azzameen"
            ship: "Firespray-31"
            threat: 4
            upgrades: [
                "Elusive"
                "Perceptive Copilot"
                "Inertial Dampeners"
                "Proximity Mines"
                "Seismic Charge"
                "Andrasta"
            ]
        }
        {
            id: 189
            faction: "Scum and Villainy"
            pilot: "Koshka Frost"
            ship: "Firespray-31"
            threat: 3
            upgrades: [
                "Perceptive Copilot"
            ]
        }
        {
            id: 190
            faction: "Scum and Villainy"
            pilot: "Bounty Hunter"
            ship: "Firespray-31"
            threat: 3
            upgrades: [
                "Perceptive Copilot"
                "Inertial Dampeners"
                "Seismic Charge"
            ]
        }
        {
            id: 191
            faction: "Scum and Villainy"
            pilot: "Fenn Rau"
            ship: "Fang Fighter"
            threat: 3
            upgrades: [
                "Daredevil"
                "Afterburners"
                "Hull Upgrade"
            ]
        }
        {
            id: 192
            faction: "Scum and Villainy"
            pilot: "Kad Solus"
            ship: "Fang Fighter"
            threat: 2
            upgrades: [
                "Fearless"
            ]
        }
        {
            id: 193
            faction: "Scum and Villainy"
            pilot: "Zealous Recruit"
            ship: "Fang Fighter"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
            ]
        }
        {
            id: 194
            faction: "Scum and Villainy"
            pilot: "Joy Rekkoff"
            ship: "Fang Fighter"
            threat: 3
            upgrades: [
                "Predator"
                "Ion Torpedoes"
                "Afterburners"
                "Hull Upgrade"
            ]
        }
        {
            id: 195
            faction: "Scum and Villainy"
            pilot: "Old Teroch"
            ship: "Fang Fighter"
            threat: 2
        }
        {
            id: 196
            faction: "Scum and Villainy"
            pilot: "Skull Squadron Pilot"
            ship: "Fang Fighter"
            threat: 2
            upgrades: [
                "Fearless"
            ]
        }
        {
            id: 197
            faction: "Scum and Villainy"
            pilot: "Ahhav"
            ship: "Mining Guild TIE Fighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Afterburners"
                "Hull Upgrade"
            ]
        }
        {
            id: 198
            faction: "Scum and Villainy"
            pilot: "Mining Guild Surveyor"
            ship: "Mining Guild TIE Fighter"
            threat: 2
            upgrades: [
                "Swarm Tactics"
                "Trick Shot"
                "Shield Upgrade"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 199
            faction: "Scum and Villainy"
            pilot: "Overseer Yushyn"
            ship: "Mining Guild TIE Fighter"
            threat: 1
        }
        {
            id: 200
            faction: "Scum and Villainy"
            pilot: "Captain Seevor"
            ship: "Mining Guild TIE Fighter"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Shield Upgrade"
            ]
        }
        {
            id: 201
            faction: "Scum and Villainy"
            pilot: "Foreman Proach"
            ship: "Mining Guild TIE Fighter"
            threat: 2
            upgrades: [
                "Predator"
                "Swarm Tactics"
                "Hull Upgrade"
            ]
        }
        {
            id: 202
            faction: "Scum and Villainy"
            pilot: "Mining Guild Sentry"
            ship: "Mining Guild TIE Fighter"
            threat: 1
        }
        {
            id: 203
            faction: "Scum and Villainy"
            pilot: "Ketsu Onyo"
            ship: "Lancer-Class Pursuit Craft"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "Rigged Cargo Chute"
                "Shield Upgrade"
                "Shadow Caster"
            ]
        }
        {
            id: 204
            faction: "Scum and Villainy"
            pilot: "Sabine Wren (Scum)"
            ship: "Lancer-Class Pursuit Craft"
            threat: 3
            upgrades: [
                "Fearless"
                "Ketsu Onyo"
                "Shadow Caster"
            ]
        }
        {
            id: 205
            faction: "Scum and Villainy"
            pilot: "Asajj Ventress"
            ship: "Lancer-Class Pursuit Craft"
            threat: 4
            upgrades: [
                "Sense"
                "Veteran Turret Gunner"
                "Deadman's Switch"
                "Inertial Dampeners"
            ]
        }
        {
            id: 206
            faction: "Scum and Villainy"
            pilot: "Shadowport Hunter"
            ship: "Lancer-Class Pursuit Craft"
            threat: 3
            upgrades: [
                "Maul"
                "Contraband Cybernetics"
            ]
        }
        {
            id: 207
            faction: "Scum and Villainy"
            pilot: "Talonbane Cobra"
            ship: "Kihraxz Fighter"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Cluster Missiles"
                "Inertial Dampeners"
                "Afterburners"
                "Electronic Baffle"
                "Shield Upgrade"
            ]
        }
        {
            id: 208
            faction: "Scum and Villainy"
            pilot: "Viktor Hel"
            ship: "Kihraxz Fighter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Stealth Device"
            ]
        }
        {
            id: 209
            faction: "Scum and Villainy"
            pilot: "Graz"
            ship: "Kihraxz Fighter"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Concussion Missiles"
                "Contraband Cybernetics"
                "Afterburners"
            ]
        }
        {
            id: 210
            faction: "Scum and Villainy"
            pilot: "Black Sun Ace"
            ship: "Kihraxz Fighter"
            threat: 2
            upgrades: [
                "Predator"
                "Shield Upgrade"
            ]
        }
        {
            id: 211
            faction: "Scum and Villainy"
            pilot: "Captain Jostero"
            ship: "Kihraxz Fighter"
            threat: 3
            upgrades: [
                "Ion Missiles"
                "Munitions Failsafe"
            ]
        }
        {
            id: 212
            faction: "Scum and Villainy"
            pilot: "Cartel Marauder"
            ship: "Kihraxz Fighter"
            threat: 2
            upgrades: [
                "Concussion Missiles"
                "Hull Upgrade"
                "Munitions Failsafe"
            ]
        }
        {
            id: 213
            faction: "Scum and Villainy"
            pilot: "Kavil"
            ship: "Y-Wing"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Dorsal Turret"
                '"Genius"'
                "Proton Bombs"
                "Afterburners"
            ]
        }
        {
            id: 214
            faction: "Scum and Villainy"
            pilot: "Hired Gun"
            ship: "Y-Wing"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Ion Cannon Turret"
                "Veteran Turret Gunner"
                "R3 Astromech"
                "Conner Nets"
            ]
        }
        {
            id: 215
            faction: "Scum and Villainy"
            pilot: "Drea Renthal"
            ship: "Y-Wing"
            threat: 2
            upgrades: [
                "Expert Handling"
                "Ion Cannon Turret"
                "Hotshot Gunner"
            ]
        }
        {
            id: 216
            faction: "Scum and Villainy"
            pilot: "Crymorah Goon"
            ship: "Y-Wing"
            threat: 2
            upgrades: [
                "Dorsal Turret"
                "Ion Torpedoes"
                "R3 Astromech"
                "Inertial Dampeners"
                "Proximity Mines"
            ]
        }
        {
            id: 217
            faction: "Scum and Villainy"
            pilot: "Dace Bonearm"
            ship: "HWK-290"
            threat: 2
            upgrades: [
                "Feedback Array"
                "Conner Nets"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 218
            faction: "Scum and Villainy"
            pilot: "Palob Godalhi"
            ship: "HWK-290"
            threat: 2
            upgrades: [
                "Debris Gambit"
                "Juke"
                "Contraband Cybernetics"
                "Stealth Device"
            ]
        }
        {
            id: 219
            faction: "Scum and Villainy"
            pilot: "Torkil Mux"
            ship: "HWK-290"
            threat: 2
            upgrades: [
                "Cloaking Device"
                "Proximity Mines"
            ]
        }
        {
            id: 220
            faction: "Scum and Villainy"
            pilot: "Spice Runner"
            suffix: " (x2)"
            ship: "HWK-290"
            threat: 3
            linkedId: 220
            upgrades: [
                "Deadman's Switch"
                "Proton Bombs"
                "Electronic Baffle"
            ]
        }
        {
            id: 221
            faction: "Scum and Villainy"
            pilot: "Constable Zuvio"
            ship: "Quadjumper"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Rigged Cargo Chute"
                "Conner Nets"
                "Shield Upgrade"
            ]
        }
        {
            id: 222
            faction: "Scum and Villainy"
            pilot: "Jakku Gunrunner"
            suffix: " (x2)"
            linkedId: 222
            ship: "Quadjumper"
            threat: 3
            upgrades: [
                "Novice Technician"
                "Proximity Mines"
                "Electronic Baffle"
            ]
        }
        {
            id: 223
            faction: "Scum and Villainy"
            pilot: "Sarco Plank"
            ship: "Quadjumper"
            threat: 2
            upgrades: [
                "Unkar Plutt"
                "Feedback Array"
                "Seismic Charges"
                "Hull Upgrade"
                "Shield Upgrade"
            ]
        }
        {
            id: 224
            faction: "Scum and Villainy"
            pilot: "Unkar Plutt"
            ship: "Quadjumper"
            threat: 2
            upgrades: [
                "Novice Technician"
                "Contraband Cybernetics"
                "Proximity Mines"
                "Afterburners"
            ]
        }
        {
            id: 225
            faction: "Scum and Villainy"
            pilot: "Prince Xizor"
            ship: "StarViper"
            threat: 3
            upgrades: [
                "Predator"
                "Fire-Control System"
                "Shield Upgrade"
                "Virago"
            ]
        }
        {
            id: 226
            faction: "Scum and Villainy"
            pilot: "Black Sun Enforcer"
            ship: "StarViper"
            threat: 2
            upgrades: [
                "Collision Detector"
            ]
        }
        {
            id: 227
            faction: "Scum and Villainy"
            pilot: "Guri"
            ship: "StarViper"
            threat: 3
            upgrades: [
                "Daredevil"
                "Advanced Sensors"
                "Advanced Proton Torpedoes"
            ]
        }
        {
            id: 228
            faction: "Scum and Villainy"
            pilot: "Dalan Oberos (StarViper)"
            ship: "StarViper"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Fire-Control System"
                "Proton Torpedoes"
                "Contraband Cybernetics"
            ]
        }
        {
            id: 229
            faction: "Scum and Villainy"
            pilot: "Black Sun Assassin"
            ship: "StarViper"
            threat: 2
            upgrades: [
                "Fearless"
            ]
        }
        {
            id: 230
            faction: "Scum and Villainy"
            pilot: "Serissu"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Stealth Device"
            ]
        }
        {
            id: 231
            faction: "Scum and Villainy"
            pilot: "Genesis Red"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Juke"
                "Concussion Missiles"
                "Munitions Failsafe"
            ]
        }
        {
            id: 232
            faction: "Scum and Villainy"
            pilot: "Quinn Jast"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Advanced Proton Torpedoes"
                "Afterburners"
            ]
        }
        {
            id: 233
            faction: "Scum and Villainy"
            pilot: "Laetin A'shera"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Juke"
                "Cluster Missiles"
                "Munitions Failsafe"
                "Stealth Device"
            ]
        }
        {
            id: 234
            faction: "Scum and Villainy"
            pilot: "Inaldra"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Ion Cannon"
                "Hull Upgrade"
                "Shield Upgrade"
            ]
        }
        {
            id: 235
            faction: "Scum and Villainy"
            pilot: "Tansarii Point Veteran"
            suffix: " (x2)"
            linkedId: 235
            ship: "M3-A Interceptor"
            threat: 3
            upgrades: [
                "Crack Shot"
                "Heavy Laser Cannon"
            ]
        }
        {
            id: 236
            faction: "Scum and Villainy"
            pilot: "Sunny Bounder"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Predator"
                "Cluster Missiles"
                "Afterburners"
            ]
        }
        {
            id: 237
            faction: "Scum and Villainy"
            pilot: "Cartel Spacer"
            suffix: " (x2)"
            linkedId: 237
            ship: "M3-A Interceptor"
            threat: 3
            upgrades: [
                "Ion Torpedoes"
                "Munitions Failsafe"
            ]
        }
        {
            id: 238
            faction: "Scum and Villainy"
            pilot: "Tel Trevura"
            ship: "JumpMaster 5000"
            threat: 3
            upgrades: [
                "Expert Handling"
                'GNK "Gonk" Droid'
                "Proton Torpedoes"
                "Deadman's Switch"
            ]
        }
        {
            id: 239
            faction: "Scum and Villainy"
            pilot: "Contracted Scout"
            ship: "JumpMaster 5000"
            threat: 2
            upgrades: [
                "Ion Torpedoes"
                "Inertial Dampeners"
            ]
        }
        {
            id: 240
            faction: "Scum and Villainy"
            pilot: "Dengar"
            ship: "JumpMaster 5000"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Proton Torpedoes"
                "R4 Astromech"
                "Contraband Cybernetics"
                "Punishing One"
            ]
        }
        {
            id: 241
            faction: "Scum and Villainy"
            pilot: "Manaroo"
            ship: "JumpMaster 5000"
            threat: 3
            upgrades: [
                "Intimidation"
                "Perceptive Copilot"
                "Proton Torpedoes"
                "Feedback Array"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 242
            faction: "Scum and Villainy"
            pilot: "N'dru Suhlak"
            ship: "Z-95 Headhunter"
            threat: 2
            upgrades: [
                "Lone Wolf"
                "Homing Missiles"
                "Cloaking Device"
                "Hull Upgrade"
            ]
        }
        {
            id: 243
            faction: "Scum and Villainy"
            pilot: "Black Sun Soldier"
            suffix: " (x2)"
            linkedId: 243
            ship: "Z-95 Headhunter"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Concussion Missiles"
                "Deadman's Switch"
                "Hull Upgrade"
            ]
        }
        {
            id: 244
            faction: "Scum and Villainy"
            pilot: "Kaa'to Leeachos"
            ship: "Z-95 Headhunter"
            threat: 2
            upgrades: [
                "Expert Handling"
                "Concussion Missiles"
                "Contraband Cybernetics"
                "Afterburners"
            ]
        }
        {
            id: 245
            faction: "Scum and Villainy"
            pilot: "Binayre Pirate"
            ship: "Z-95 Headhunter"
            threat: 1
        }
        {
            id: 246
            faction: "Scum and Villainy"
            pilot: "4-LOM"
            ship: "G-1A Starfighter"
            threat: 3
            upgrades: [
                "Elusive"
                "Advanced Sensors"
                "0-0-0"
                "Zuckus"
                "BT-1"
                "Mist Hunter"
            ]
        }
        {
            id: 247
            faction: "Scum and Villainy"
            pilot: "Zuckuss"
            ship: "G-1A Starfighter"
            threat: 2
            upgrades: [
                "Lone Wolf"
                "Tractor Beam"
                "4-LOM"
                "Mist Hunter"
            ]
        }
        {
            id: 248
            faction: "Scum and Villainy"
            pilot: "Gand Findsman"
            ship: "G-1A Starfighter"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Freelancer Slicer"
                "Deadman's Switch"
                "Electronic Baffle"
            ]
        }
        {
            id: 249
            faction: "Scum and Villainy"
            pilot: "Moralo Eval"
            ship: "YV-666"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "Cluster Missiles"
                "Latts Razzi"
                "Dengar"
                "Contraband Cybernetics"
            ]
        }
        {
            id: 250
            faction: "Scum and Villainy"
            pilot: "Latts Razzi"
            ship: "YV-666"
            threat: 3
            upgrades: [
                "Boba Fett"
                "Bossk"
                "Dengar"
                "Feedback Array"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 251
            faction: "Scum and Villainy"
            pilot: "Trandoshan Slaver"
            ship: "YV-666"
            threat: 3
            upgrades: [
                "Hotshot Gunner"
                "Jabba the Hutt"
                "Contraband Cybernetics"
                "Rigged Cargo Chute"
            ]
        }
        {
            id: 252
            faction: "Scum and Villainy"
            pilot: "Bossk"
            suffix: " + Nashtah Pup"
            linkedId: 253
            ship: "YV-666"
            threat: 3
            upgrades: [
                "Marksmanship"
                "Greedo"
                "Hound's Tooth"
            ]
        }
        {
            id: 253
            faction: "Scum and Villainy"
            pilot: "Nashtah Pup"
            suffix: " + Bossk"
            linkedId: 252
            ship: "Z-95 Headhunter"
            threat: 3
        }
        {
            id: 254
            faction: "Scum and Villainy"
            pilot: "Trandoshan Slaver"
            suffix: " + Nashtah Pup"
            linkedId: 255
            ship: "YV-666"
            threat: 3
            upgrades: [
                "Deadman's Switch"
                "Hound's Tooth"
            ]
        }
        {
            id: 255
            faction: "Scum and Villainy"
            pilot: "Nashtah Pup"
            suffix: " + Trandoshan Slaver"
            linkedId: 254
            ship: "Z-95 Headhunter"
            threat: 3
            upgrades: [
                "Proton Rockets"
            ]
        }
        {
            id: 256
            faction: "Scum and Villainy"
            pilot: "Torani Kulda"
            ship: "M12-L Kimogila Fighter"
            threat: 3
            upgrades: [
                "Saturation Salvo"
                "Proton Torpedoes"
                "Cluster Missiles"
                "R4 Astromech"
                "Inertial Dampeners"
                "Shield Upgrade"
            ]
        }
        {
            id: 257
            faction: "Scum and Villainy"
            pilot: "Dalan Oberos"
            ship: "M12-L Kimogila Fighter"
            threat: 2
            upgrades: [
                "Expert Handling"
                "R5-TK"
                "Inertial Dampeners"
            ]
        }
        {
            id: 258
            faction: "Scum and Villainy"
            pilot: "Cartel Executioner"
            ship: "M12-L Kimogila Fighter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "R5-P8"
                "Contraband Cybernetics"
            ]
        }
        {
            id: 259
            skip: true
            faction: "Scum and Villainy"
            pilot: "Dalan Oberos"
            ship: "M12-L Kimogila Fighter"
            threat: 2
            upgrades: [
                "Expert Handling"
                "R5-TK"
                "Inertial Dampeners"
            ]
        }
        {
            id: 260
            faction: "Scum and Villainy"
            pilot: "Captain Nym"
            ship: "Scurrg H-6 Bomber"
            threat: 3
            upgrades: [
                "Squad Leader"
                "Trajectory Simulator"
                "R4 Astromech"
                "Bomblet Generator"
                "Havoc"
            ]
        }
        {
            id: 261
            faction: "Scum and Villainy"
            pilot: "Sol Sixxa"
            ship: "Scurrg H-6 Bomber"
            threat: 3
            upgrades: [
                "Ion Cannon Turret"
                "Skilled Bombardier"
                "Conner Nets"
                "Proximity Mines"
            ]
        }
        {
            id: 262
            faction: "Scum and Villainy"
            pilot: "Lok Revenant"
            ship: "Scurrg H-6 Bomber"
            threat: 2
            upgrades: [
                "Dorsal Turret"
                "Bomblet Generator"
            ]
        }
        {
            id: 263
            faction: "Scum and Villainy"
            pilot: "IG-88A"
            suffix: " + IG-88D"
            linkedId: 264
            ship: "Aggressor"
            threat: 6
            upgrades: [
                "Advanced Sensors"
                "IG-2000"
            ]
        }
        {
            id: 264
            faction: "Scum and Villainy"
            pilot: "IG-88D"
            suffix: " + IG-88A"
            linkedId: 263
            ship: "Aggressor"
            threat: 6
            upgrades: [
                "Advanced Sensors"
                "IG-2000"
            ]
        }
        {
            id: 265
            faction: "Scum and Villainy"
            pilot: "IG-88B"
            suffix: " + IG-88C"
            linkedId: 266
            ship: "Aggressor"
            threat: 6
            upgrades: [
                "Fire-Control System"
                "Ion Cannon"
                "IG-2000"
            ]
        }
        {
            id: 266
            faction: "Scum and Villainy"
            pilot: "IG-88C"
            suffix: " + IG-88B"
            linkedId: 265
            ship: "Aggressor"
            threat: 6
            upgrades: [
                "Fire-Control System"
                "Ion Cannon"
                "IG-2000"
            ]
        }
        {
            id: 267
            faction: "Resistance"
            pilot: "L'ulo L'ampar"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Primed Thrusters"
                "Homing Missiles"
            ]
        }
        {
            id: 268
            faction: "Resistance"
            pilot: "Greer Sonnel"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Afterburners"
            ]
        }
        {
            id: 269
            faction: "Resistance"
            pilot: "Green Squadron Expert"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Heroic"
                "Primed Thursters"
                "Hull Upgrade"
            ]
        }
        {
            id: 270
            faction: "Resistance"
            pilot: "Tallissan Lintra"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Predator"
                "Ferrosphere Paint"
            ]
        }
        {
            id: 271
            faction: "Resistance"
            pilot: "Zari Bangel"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Proton Rockets"
            ]
        }
        {
            id: 272
            faction: "Resistance"
            pilot: "Blue Squadron Recruit"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Primed Thrusters"
                "Homing Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 273
            faction: "Resistance"
            pilot: "Poe Dameron"
            ship: "T-70 X-Wing"
            threat: 4
            upgrades: [
                "Proton Torpedoes"
                "BB-8"
                "Black One"
                "Integrated S-Foils"
                "Afterburners"
            ]
        }
        {
            id: 274
            faction: "Resistance"
            pilot: "Jessika Pava"
            ship: "T-70 X-Wing"
            threat: 3
            upgrades: [
                "R5 Astromech"
                "Integrated S-Foils"
                "Hull Upgrade"
            ]
        }
        {
            id: 275
            faction: "Resistance"
            pilot: "Black Squadron Ace (T-70)"
            ship: "T-70 X-Wing"
            threat: 3
            upgrades: [
                "Proton Torpedoes"
                "M9-G8"
                "Integrated S-Foils"
            ]
        }
        {
            id: 276
            faction: "Resistance"
            pilot: "Ello Asty"
            ship: "T-70 X-Wing"
            threat: 3
            upgrades: [
                "Elusive"
                "Integrated S-Foils"
                "Afterburners"
            ]
        }
        {
            id: 277
            faction: "Resistance"
            pilot: "Joph Seastriker"
            ship: "T-70 X-Wing"
            threat: 3
            upgrades: [
                "R2 Astromech"
                "Integrated S-Foils"
                "Shield Upgrade"
            ]
        }
        {
            id: 278
            faction: "Resistance"
            pilot: "Jaycris Tubbs"
            ship: "T-70 X-Wing"
            threat: 2
        }
        {
            id: 279
            faction: "Resistance"
            pilot: "Nien Nunb"
            ship: "T-70 X-Wing"
            threat: 3
            upgrades: [
                "Elusive"
                "Integrated S-Foils"
                "Afterburners"
            ]
        }
        {
            id: 280
            faction: "Resistance"
            pilot: "Lieutenant Bastian"
            ship: "T-70 X-Wing"
            threat: 3
            upgrades: [
                "Targeting Synchronizer"
                "Proton Torpedoes"
                "R3 Astromech"
                "Integrated S-Foils"
            ]
        }
        {
            id: 281
            faction: "Resistance"
            pilot: "Red Squadron Expert"
            ship: "T-70 X-Wing"
            threat: 2
        }
        {
            id: 282
            faction: "Resistance"
            pilot: "Temmin Wexley"
            ship: "T-70 X-Wing"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Proton Torpedoes"
                "Integrated S-Foils"
            ]
        }
        {
            id: 283
            faction: "Resistance"
            pilot: "Kare Kun"
            ship: "T-70 X-Wing"
            threat: 3
            upgrades: [
                "Predator"
                "Integrated S-Foils"
                "Afterburners"
            ]
        }
        {
            id: 284
            faction: "Resistance"
            pilot: "Blue Squadron Rookie"
            ship: "T-70 X-Wing"
            threat: 2
            upgrades: [
                "BB Astromech"
            ]
        }
        {
            id: 285
            faction: "Resistance"
            pilot: "Finch Dallow"
            ship: "MG-100 StarFortress"
            threat: 4
            upgrades: [
                "Advanced Optics"
                "Paige Tico"
                "Proton Bombs"
                "Ablative Plating"
                "Hull Upgrade"
            ]
        }
        {
            id: 286
            faction: "Resistance"
            pilot: "Cat"
            ship: "MG-100 StarFortress"
            threat: 3
            upgrades: [
                "Skilled Bombardier"
                "Conner Nets"
                "Electronic Baffle"
            ]
        }
        {
            id: 287
            faction: "Resistance"
            pilot: "Cobalt Squadron Bomber"
            ship: "MG-100 StarFortress"
            threat: 3
            upgrades: [
                "Trajectory Simulator"
                "Proton Bombs"
                "Ablative Plating"
            ]
        }
        {
            id: 288
            faction: "Resistance"
            pilot: "Edon Kappehl"
            ship: "MG-100 StarFortress"
            threat: 4
            upgrades: [
                "Pattern Analyzer"
                "Seasoned Navigator"
                "Skilled Bombardier"
                "Conner Nets"
                "Proton Bombs"
            ]
        }
        {
            id: 289
            faction: "Resistance"
            pilot: "Vennie"
            ship: "MG-100 StarFortress"
            threat: 4
            upgrades: [
                "Advanced Optics"
                "Rose Tico"
                "Finn"
                "Shield Upgrade"
            ]
        }
        {
            id: 290
            faction: "Resistance"
            pilot: "Ben Teene"
            ship: "MG-100 StarFortress"
            threat: 3
            upgrades: [
                "Conner Nets"
                "Proton Bombs"
            ]
        }
        {
            id: 291
            faction: "Resistance"
            pilot: "Han Solo (Resistance)"
            ship: "Scavenged YT-1300"
            threat: 3
            upgrades: [
                "Chewbacca"
            ]
        }
        {
            id: 292
            faction: "Resistance"
            pilot: "Rey"
            ship: "Scavenged YT-1300"
            threat: 5
            upgrades: [
                "Finn"
                "BB-8"
                "Inertial Dampeners"
                "Engine Upgrade"
                "Rey's Millennium Falcon"
            ]
        }
        {
            id: 293
            faction: "Resistance"
            pilot: "Chewbacca (Resistance)"
            ship: "Scavenged YT-1300"
            threat: 4
            upgrades: [
                "Rey"
                "Engine Upgrade"
                "Rey's Millennium Falcon"
            ]
        }
        {
            id: 294
            faction: "Resistance"
            pilot: "Resistance Sympathizer"
            ship: "Scavenged YT-1300"
            threat: 4
            upgrades: [
                "Debris Gambit"
                "C-3PO"
                "Chewbacca"
                "Han Solo"
            ]
        }
        {
            id: 295
            faction: "Rebel Alliance"
            pilot: "Thane Kyrell"
            ship: "X-Wing"
            threat: 2
            upgrades: [
                "Stealth Device"
                "Outmaneuver"
            ]
        }
        {
            id: 296
            faction: "Galactic Empire"
            pilot: "Iden Versio"
            ship: "TIE Fighter"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "Lone Wolf"
            ]
        }
        {
            id: 297
            faction: "Scum and Villainy"
            pilot: "Skull Squadron Pilot"
            ship: "Fang Fighter"
            threat: 3
            upgrades: [
                "Marksmanship"
                "Advanced Proton Torpedoes"
                "Afterburners"
            ]
        }
        {
            id: 298
            faction: "Scum and Villainy"
            pilot: "Foreman Proach"
            ship: "Mining Guild TIE Fighter"
            threat: 2
            upgrades: [
                "Fearless"
                "Crack Shot"
            ]
        }
        {
            id: 299
            faction: "First Order"
            pilot: '"Blackout"'
            ship: "TIE/VN Silencer"
            threat: 3
            upgrades: [
                "Trick Shot"
            ]
        }
        {
            id: 300
            faction: "Resistance"
            pilot: "Greer Sonnel"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Marksmanship"
                "Primed Thrusters"
            ]
        }
        {
            id: 301
            faction: "Scum and Villainy"
            pilot: "Han Solo (Scum)"
            ship: "Customized YT-1300"
            linkedId: 302
            suffix: " + Escape craft"
            threat: 5
            upgrades: [
                "Elusive"
                "Chewbacca"
                "Lando's Millennium Falcon"
                "Agile Gunner"
                "Tactical Scrambler"
                "Rigged Cargo Chute"
            ]
        }
        {
            id: 302
            faction: "Scum and Villainy"
            pilot: "Outer Rim Pioneer"
            ship: "Escape Craft"
            linkedId: 301
            suffix: " + Han Solo"
            threat: 5
            upgrades: [
                "Tobias Beckett"
            ]
        }
        {
            id: 303
            faction: "Scum and Villainy"
            pilot: "Lando Calrissian (Scum)"
            ship: "Customized YT-1300"
            linkedId: 304
            suffix: " + L3-37"
            threat: 4
            upgrades: [
                "Han Solo (Scum)"
                "Qi'ra"
                "Lando's Millennium Falcon"
            ]
        }
        {
            id: 304
            faction: "Scum and Villainy"
            pilot: "L3-37 (Escape Craft)"
            ship: "Escape Craft"
            linkedId: 303
            suffix: " + Lando Calrissian"
            threat: 4
            upgrades: [
            ]
        }
        {
            id: 305
            faction: "Scum and Villainy"
            pilot: "L3-37"
            ship: "Customized YT-1300"
            linkedId: 306
            suffix: " + Lando Calrissian"
            threat: 5
            upgrades: [
                "Han Solo (Scum)"
                "Qi'ra"
                "Hull Upgrade"
                "Outmaneuver"
            ]
        }
        {
            id: 306
            faction: "Scum and Villainy"
            pilot: "Lando Calrissian (Scum) (Escape Craft)"
            ship: "Escape Craft"
            linkedId: 305
            suffix: " + L3-37"
            threat: 5
            upgrades: [
                "Elusive"
                "Shield Upgrade"
            ]
        }
        {
            id: 307
            faction: "Scum and Villainy"
            pilot: "Freighter Captain"
            ship: "Customized YT-1300"
            linkedId: 308
            suffix: " + Autopilot drone"
            threat: 3
            upgrades: [
                "Lando's Millennium Falcon"
            ]
        }
        {
            id: 308
            faction: "Scum and Villainy"
            pilot: "Autopilot Drone"
            ship: "Escape Craft"
            linkedId: 307
            suffix: " + YT-1300"
            threat: 3
            upgrades: [
                "Afterburners"
            ]
        }
        {
            id: 309
            faction: "Galactic Republic"
            pilot: "Obi-Wan Kenobi"
            ship: "Delta-7 Aethersprite"
            threat: 3
            upgrades: [
                "Predictive Shot"
                "R4-P17"
                "Spare Parts Canisters"
                "Calibrated Laser Targeting"
            ]
        }
        {
            id: 310
            faction: "Galactic Republic"
            pilot: "Saesee Tiin"
            ship: "Delta-7 Aethersprite"
            threat: 3
            upgrades: [
                "Supernatural Reflexes"
                "R4-P Astromech"
                "Delta-7B"
            ]
        }
        {
            id: 311
            faction: "Galactic Republic"
            pilot: "Mace Windu"
            ship: "Delta-7 Aethersprite"
            threat: 4
            upgrades: [
                "Supernatural Reflexes"
                "R2 Astromech"
                "Delta-7B"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 312
            faction: "Galactic Republic"
            pilot: "Plo Koon"
            ship: "Delta-7 Aethersprite"
            threat: 3
            upgrades: [
                "Battle Meditation"
                "Sense"
                "R4-P Astromech"
                "Shield Upgrade"
            ]
        }
        {
            id: 313
            faction: "Galactic Republic"
            pilot: "Jedi Knight"
            ship: "Delta-7 Aethersprite"
            threat: 2
            upgrades: [
                "Delta-7B"
            ]
        }
        {
            id: 314
            faction: "Galactic Republic"
            pilot: '"Tucker"'
            ship: "V-19 Torrent"
            threat: 2
            upgrades: [
                "Concussion Missiles"
                "Munitions Failsafe"
            ]
        }
        {
            id: 315
            faction: "Galactic Republic"
            pilot: "Gold Squadron Trooper"
            ship: "V-19 Torrent"
            threat: 2
            upgrades: [
                "Cluster Missiles"
                "Afterburners"
            ]
        }
        {
            id: 316
            faction: "Galactic Republic"
            pilot: '"Swoop"'
            ship: "V-19 Torrent"
            threat: 2
            upgrades: [
                "Composure"
                "Synchronized Console"
                "Proton Rockets"
            ]
        }
        {
            id: 317
            faction: "Galactic Republic"
            pilot: "Blue Squadron Protector"
            ship: "V-19 Torrent"
            threat: 2
            upgrades: [
                "Dedicated"
                "Synchronized Console"
            ]
        }
        {
            id: 318
            faction: "Galactic Republic"
            pilot: '"Odd Ball"'
            ship: "V-19 Torrent"
            threat: 3
            upgrades: [
                "Saturation Salvo"
                "Cluster Missiles"
                "Afterburners"
                "Munitions Failsafe"
            ]
        }
        {
            id: 319
            faction: "Galactic Republic"
            pilot: '"Kickback"'
            ship: "V-19 Torrent"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Synchronized Console"
            ]
        }
        {
            id: 320
            faction: "Galactic Republic"
            pilot: '"Axe"'
            ship: "V-19 Torrent"
            threat: 2
            upgrades: [
                "Juke"
                "Homing Missiles"
            ]
        }
    ]



exportObj.setupCommonCardData = (basic_cards) ->
    # assert that each ID is the index into BLAHById (should keep this, in general)
    for pilot_data, i in basic_cards.pilotsById
        if pilot_data.id != i
            throw new Error("ID mismatch: pilot at index #{i} has ID #{pilot_data.id}")
    for upgrade_data, i in basic_cards.upgradesById
        if upgrade_data.id != i
            throw new Error("ID mismatch: upgrade at index #{i} has ID #{upgrade_data.id}")
    for condition_data, i in basic_cards.conditionsById
        if condition_data.id != i
            throw new Error("ID mismatch: condition at index #{i} has ID #{condition_data.id}")
    for quickbuild_data, i in basic_cards.quickbuildsById
        if quickbuild_data.id != i
            throw new Error("ID mismatch: quickbuild  at index #{i} has ID #{quickbuild_data.id}")


    exportObj.pilots = {}
    # Assuming a given pilot is unique by name...
    for pilot_data in basic_cards.pilotsById
        unless pilot_data.skip?
            pilot_data.sources = []
            pilot_data.canonical_name = pilot_data.name.canonicalize() unless pilot_data.canonical_name?
            exportObj.pilots[pilot_data.name] = pilot_data
    # pilot_name is the English version here as it's the common index into
    # basic card info
                
    exportObj.upgrades = {}
    for upgrade_data in basic_cards.upgradesById
        unless upgrade_data.skip?
            upgrade_data.sources = []
            upgrade_data.canonical_name = upgrade_data.name.canonicalize() unless upgrade_data.canonical_name?
            exportObj.upgrades[upgrade_data.name] = upgrade_data

    exportObj.conditions = {}
    for condition_data in basic_cards.conditionsById
        unless condition_data.skip?
            condition_data.sources = []
            condition_data.canonical_name = condition_data.name.canonicalize() unless condition_data.canonical_name?
            exportObj.conditions[condition_data.name] = condition_data

    # there is no exportObj.quickbuilds generated from basic_cards.quickbuildsById, as reference by pilot name might be ambigous (e.g. there are multiple Black Sq. Aces having different upgrades)

    exportObj.quickbuildsById = {}
    quickbuild_count = 0
    for quickbuild_data in basic_cards.quickbuildsById
        unless quickbuild_data.skip? 
            quickbuild_count += 1
            # Sometimes there is something to be appended to the pilot name for displaying, e.g. (x2) for two TIEs at the cost of 3 threat points. If nothing specified set as empty string. 
            quickbuild_data.suffix = "" unless quickbuild_data.suffix? 
            exportObj.quickbuildsById[quickbuild_data.id] = quickbuild_data
    if Object.keys(exportObj.quickbuildsById).length != quickbuild_count
        throw new Error("At least one quickbuild shares an ID with another")

    for ship_name, ship_data of basic_cards.ships
        ship_data.canonical_name ?= ship_data.name.canonicalize()
        ship_data.sources = []

    # Set sources from manifest
    for expansion, cards of exportObj.manifestByExpansion
        # console.log(exportObj.manifestByExpansion)
        for card in cards
            continue if card.skipForSource # heavy scyk special case :(
            try
                switch card.type
                    when 'pilot'
                        exportObj.pilots[card.name].sources.push expansion
                    when 'upgrade'
                        exportObj.upgrades[card.name].sources.push expansion
                    when 'ship'
                        exportObj.ships[card.name].sources.push expansion
                    else
                        throw new Error("Unexpected card type #{card.type} for card #{card.name} of #{expansion}")
            catch e
                console.log(e)
                console.error "Error adding card #{card.name} (#{card.type}) from #{expansion}"


    for name, card of exportObj.pilots
        card.sources = card.sources.sort()
    for name, card of exportObj.upgrades
        card.sources = card.sources.sort()

    exportObj.expansions = {}

    exportObj.pilotsById = {}
    for pilot_name, pilot of exportObj.pilots
        exportObj.fixIcons pilot
        exportObj.pilotsById[pilot.id] = pilot
        for source in pilot.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.pilotsById).length != Object.keys(exportObj.pilots).length
        throw new Error("At least one pilot shares an ID with another")

    exportObj.pilotsByFactionCanonicalName = {}
    # uniqueness can't be enforced just be canonical name, but by the base part
    exportObj.pilotsByUniqueName = {}
    for pilot_name, pilot of exportObj.pilots
        ((exportObj.pilotsByFactionCanonicalName[pilot.faction] ?= {})[pilot.canonical_name] ?= []).push pilot
        (exportObj.pilotsByUniqueName[pilot.canonical_name.getXWSBaseName()] ?= []).push pilot

    exportObj.pilotsByFactionXWS = {}
    for pilot_name, pilot of exportObj.pilots
        ((exportObj.pilotsByFactionXWS[pilot.faction] ?= {})[pilot.xws] ?= []).push pilot
        

    exportObj.upgradesById = {}
    for upgrade_name, upgrade of exportObj.upgrades
        exportObj.fixIcons upgrade
        exportObj.upgradesById[upgrade.id] = upgrade
        for source in upgrade.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.upgradesById).length != Object.keys(exportObj.upgrades).length
        throw new Error("At least one upgrade shares an ID with another")

    exportObj.upgradesBySlotCanonicalName = {}
    exportObj.upgradesBySlotXWSName = {}
    exportObj.upgradesBySlotUniqueName = {}
    for upgrade_name, upgrade of exportObj.upgrades
        (exportObj.upgradesBySlotCanonicalName[upgrade.slot] ?= {})[upgrade.canonical_name] = upgrade
        (exportObj.upgradesBySlotXWSName[upgrade.slot] ?= {})[upgrade.xws] = upgrade
        (exportObj.upgradesBySlotUniqueName[upgrade.slot] ?= {})[upgrade.canonical_name.getXWSBaseName()] = upgrade

    exportObj.conditionsById = {}
    for condition_name, condition of exportObj.conditions
        exportObj.fixIcons condition
        exportObj.conditionsById[condition.id] = condition
        for source in condition.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.conditionsById).length != Object.keys(exportObj.conditions).length
        throw new Error("At least one condition shares an ID with another")

    exportObj.conditionsByCanonicalName = {}
    for condition_name, condition of exportObj.conditions
        (exportObj.conditionsByCanonicalName ?= {})[condition.canonical_name] = condition

    exportObj.expansions = Object.keys(exportObj.expansions).sort()


    
exportObj.setupTranslationCardData = (pilot_translations, upgrade_translations, condition_translations) ->
    for upgrade_name, translations of upgrade_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.upgrades[upgrade_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for upgrade #{upgrade_name}"
                throw e

    for condition_name, translations of condition_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.conditions[condition_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for condition #{condition_name}"
                throw e

    for pilot_name, translations of pilot_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.pilots[pilot_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for pilot #{pilot_name}"
                throw e

exportObj.fixIcons = (data) ->
    if data.text?
        data.text = data.text
            .replace(/%ASTROMECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-astromech"></i>')
            .replace(/%BULLSEYEARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bullseyearc"></i>')
            .replace(/%GUNNER%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-gunner"></i>')
            .replace(/%SINGLETURRETARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-singleturretarc"></i>')
            .replace(/%FRONTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-frontarc"></i>')
            .replace(/%REARARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reararc"></i>')
            .replace(/%LEFTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-leftarc"></i>')
            .replace(/%RIGHTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-rightarc"></i>')
            .replace(/%ROTATEARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-rotatearc"></i>')
            .replace(/%FULLFRONTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-fullfrontarc"></i>')
            .replace(/%FULLREARARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-fullreararc"></i>')
            .replace(/%DEVICE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-device"></i>')
            .replace(/%MODIFICATION%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-modification"></i>')
            .replace(/%RELOAD%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reload"></i>')
            .replace(/%CONFIG%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-config"></i>')
            .replace(/%TALENT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-talent"></i>')
            .replace(/%FORCE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-forcecharge"></i>')
            .replace(/%CHARGE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-charge"></i>')
            .replace(/%CALCULATE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-calculate"></i>')
            .replace(/%BANKLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bankleft"></i>')
            .replace(/%BANKRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bankright"></i>')
            .replace(/%BARRELROLL%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-barrelroll"></i>')
            .replace(/%BOMB%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bomb"></i>')
            .replace(/%BOOST%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-boost"></i>')
            .replace(/%CANNON%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cannon"></i>')
            .replace(/%CARGO%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cargo"></i>')
            .replace(/%CLOAK%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cloak"></i>')
            .replace(/%COORDINATE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-coordinate"></i>')
            .replace(/%CRIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-crit"></i>')
            .replace(/%CREW%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-crew"></i>')
            .replace(/%DUALCARD%/g, '<span class="card-restriction">Dual card.</span>')
            .replace(/%ELITE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-elite"></i>')
            .replace(/%TACTICALRELAY%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-tacticalrelay"></i>')
            .replace(/%EVADE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-evade"></i>')
            .replace(/%FOCUS%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-focus"></i>')
            .replace(/%HARDPOINT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hardpoint"></i>')
            .replace(/%HIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hit"></i>')
            .replace(/%ILLICIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-illicit"></i>')
            .replace(/%JAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-jam"></i>')
            .replace(/%KTURN%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-kturn"></i>')
            .replace(/%MISSILE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-missile"></i>')
            .replace(/%RECOVER%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-recover"></i>')
            .replace(/%REINFORCE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reinforce"></i>')
            .replace(/%SALVAGEDASTROMECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-salvagedastromech"></i>')
            .replace(/%SLAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-slam"></i>')
            .replace(/%SLOOPLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopleft"></i>')
            .replace(/%SLOOPRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopright"></i>')
            .replace(/%STRAIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-straight"></i>')
            .replace(/%STOP%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-stop"></i>')
            .replace(/%SENSOR%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sensor"></i>')
            .replace(/%LOCK%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-lock"></i>')
            .replace(/%TEAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-team"></i>')
            .replace(/%TECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-tech"></i>')
            .replace(/%TORPEDO%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-torpedo"></i>')
            .replace(/%TROLLLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollleft"></i>')
            .replace(/%TROLLRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollright"></i>')
            .replace(/%TURNLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnleft"></i>')
            .replace(/%TURNRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnright"></i>')
            .replace(/%TURRET%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turret"></i>')
            .replace(/%UTURN%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-kturn"></i>')
            .replace(/%LARGESHIPONLY%/g, '<span class="card-restriction">Large ship only.</span>')
            .replace(/%SMALLSHIPONLY%/g, '<span class="card-restriction">Small ship only.</span>')
            .replace(/%REBELONLY%/g, '<span class="card-restriction">Rebel only.</span>')
            .replace(/%IMPERIALONLY%/g, '<span class="card-restriction">Imperial only.</span>')
            .replace(/%SCUMONLY%/g, '<span class="card-restriction">Scum only.</span>')
            .replace(/%LIMITED%/g, '<span class="card-restriction">Limited.</span>')
            .replace(/%LINEBREAK%/g, '<br /><br />')
            
exportObj.canonicalizeShipNames = (card_data) ->
    for ship_name, ship_data of card_data.ships
        ship_data.canonical_name ?= ship_data.name.canonicalize()

exportObj.renameShip = (name, new_name) ->
    exportObj.ships[name].display_name = new_name

exportObj.randomizer = (faction_name, points) ->
    shiplistmaster = exportObj.basicCardData #export ship database
    listcount = 0 #start count at 0
    #for shiplistmaster in shiplistmaster.pilotsbyid.faction == faction_name loop grab pilots by faction
        #if Math.random() >= 0.9
        #append.shiplistmaster.pilotsbyid.xws ? shiplistmaster.pilotsbyid.canonical_name ? shiplistmaster.pilotsbyid.name.canonicalize())

exportObj.hyperspaceShipInclusions = [
    {name: 'X-Wing', faction: 'Rebel Alliance'},
    {name: 'YT-1300', faction: 'Rebel Alliance'},
    {name: 'B-Wing', faction: 'Rebel Alliance'},
    {name: 'A-Wing', faction: 'Rebel Alliance'},
    {name: 'Y-Wing', faction: 'Rebel Alliance'},
    {name: 'U-Wing', faction: 'Rebel Alliance'},
    {name: 'TIE Advanced', faction: 'Galactic Empire'},
    {name: 'TIE Interceptor', faction: 'Galactic Empire'},
    {name: 'TIE Bomber', faction: 'Galactic Empire'},
    {name: 'TIE Fighter', faction: 'Galactic Empire'},
    {name: 'TIE Reaper', faction: 'Galactic Empire'},
    {name: 'TIE Striker', faction: 'Galactic Empire'},
    {name: 'Firespray-31', faction: 'Scum and Villainy'},
    {name: 'Z-95 Headhunter', faction: 'Scum and Villainy'},
    {name: 'StarViper', faction: 'Scum and Villainy'},
    {name: 'Escape Craft', faction: 'Scum and Villainy'},
    {name: 'Mining Guild TIE Fighter', faction: 'Scum and Villainy'},
    {name: 'Fang Fighter', faction: 'Scum and Villainy'},
    {name: 'Customized YT-1300', faction: 'Scum and Villainy'},
    {name: 'Scavenged YT-1300', faction: 'Resistance'},
    {name: 'T-70 X-Wing', faction: 'Resistance'},
    {name: 'RZ-2 A-Wing', faction: 'Resistance'},
    {name: 'MG-100 StarFortress', faction: 'Resistance'},
    {name: 'TIE/FO Fighter', faction: 'First Order'},
    {name: 'TIE/VN Silencer', faction: 'First Order'},
    {name: 'TIE/SF Fighter', faction: 'First Order'},
    {name: 'Upsilon-Class Command Shuttle', faction: 'First Order'},
    {name: 'Delta-7 Aethersprite', faction: 'Galactic Republic'},
    {name: 'ARC-170', faction: 'Galactic Republic'},
    {name: 'V-19 Torrent', faction: 'Galactic Republic'},
    {name: 'Vulture-class Droid Fighter', faction: 'Separatist Alliance'},
    {name: 'Sith Infiltrator', faction: 'Separatist Alliance'},
    {name: 'Belbullab-22 Starfighter', faction: 'Separatist Alliance'}
]

# Used to exclude pilots from included ships
exportObj.hyperspacePilotExclusions = [
    'Nashtah Pup'
]

# Upgrades in that are not in Hyperspace
# No need to check titles/configurations, as those are already included/excluded by ship
exportObj.hyperspaceUpgradeExclusions = [
    # Generic
    'Ion Cannon',
    'Freelance Slicer',
    'GNK "Gonk" Droid',
    'Novice Technician',
    'Bomblet Generator',
    'Cloaking Device',
    'Contraband Cybernetics',
    'Feedback Array',
    'Ablative Plating',
    'Advanced SLAM',
    'Electronic Baffle',
    'Tactical Scrambler',
    'Debris Gambit',
    'Saturation Salvo',
    'Adv. Proton Torpedoes',
    'Dorsal Turret',

    # Rebel Alliance
    '"Chopper" (Astromech)',
    '"Zeb" Orrelios'
    '"Chopper" (Crew)',
    'Cassian Andor',
    'Hera Syndulla',
    'Jyn Erso',
    'Kanan Jarrus',
    'Sabine Wren',
    'Bistan',
    'Ezra Bridger',

    # Galactic Empire
    'Admiral Sloane'
    'Agent Kallus'
    'Grand Inquisitor',
    'Grand Moff Tarkin',
    'Minister Tua',
    'Moff Jerjerrod',
    'Seventh Sister',
    'Emperor Palpatine',
    'Fifth Brother',

    # Scum and Villainy
    '"Genius"',
    'R5-TK',
    'R5-P8',
    '0-0-0',
    '4-LOM',
    'Cad Bane',
    'Cikatro Vizago',
    'IG-88D',
    'Ketsu Onyo',
    'Latts Razzi',
    'Maul',
    'Unkar Plutt',
    'Zuckuss',
    'Jabba the Hutt',
    'Bossk',
    'BT-1',
    'Greedo'

    # FO
]

# Ships/Pilots excluded unless in the included list (with further excluded pilots list for included ships, i.e u-wing)
# while upgrades assumed included unless on the excluded list
exportObj.hyperspaceCheck = (data, faction='', shipCheck=false) ->
    # check ship/pilot first
    if (shipCheck or data.ship?)
        if (data.name in exportObj.hyperspacePilotExclusions)
            return false
        for ship in exportObj.hyperspaceShipInclusions
            # checks against name for ship itself or ship name/faction for pilot inclusions
            if (ship.faction == faction && (data.name == ship.name || data.ship == ship.name))
                return true
        return false
    else
        return data.name not in exportObj.hyperspaceUpgradeExclusions
