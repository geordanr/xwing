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

# Returns an independent copy of the data which can be modified by translation
# modules.
exportObj.basicCardData = ->
    ships:
        "X-Wing":
            name: "X-Wing"
            xws: "T-65 X-wing".canonicalize()
            factions: [ "Rebel Alliance" ]
            attack: 3
            agility: 2
            hull: 4
            shields: 2
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 1, 1, 1, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 2, 2, 2, 2, 0, 0, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
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
                "R-Barrel Roll"
                "R-Reload"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 1, 1, 1, 0, 0]
                [ 2, 2, 1, 2, 2, 0]
                [ 3, 2, 2, 2, 3, 0]
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
            keyword: ["Vectored Thrusters"]
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0, 0, 0]
                [ 1, 1, 1, 1, 1, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 3, 3]
                [ 0, 0, 1, 0, 0, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 3, 0, 0]
            ]
        "YT-1300":
            name: "YT-1300"
            xws: "Modified YT-1300 Light Freighter".canonicalize()
            factions: [ "Rebel Alliance" ]
            attackdt: 3
            agility: 1
            hull: 8
            shields: 5
            keyword: ["Freighter"]
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
                "R-Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 3, 0, 0]
            ]
            base: "Large"
        "Customized YT-1300":
            name: "Customized YT-1300"
            canonical_name: 'Customized YT-1300'.canonicalize()
            xws: "Customized YT-1300 Light Freighter".canonicalize()
            factions: [ "Scum and Villainy" ]
            attackdt: 2
            agility: 1
            hull: 8
            shields: 3
            keyword: ["Freighter"]
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
                "R-Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 1, 1, 1, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 3, 0, 0]
            ]
            base: "Large"
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 3]
                [ 0, 0, 2, 0, 0, 3]
                [ 0, 0, 2, 0, 0, 0]
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
                "R-> Barrel Roll"
                "Lock"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 1, 2, 1, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
            ]
        "TIE Interceptor":
            name: "TIE Interceptor"
            icon: "tieinterceptor"
            xws: "TIE/IN Interceptor".canonicalize()
            factions: [ "Galactic Empire" ]
            attack: 3
            agility: 3
            hull: 3
            shields: 0
            keyword: ["Autothrusters"]
            actions: [
                "Focus"
                "Barrel Roll"
                "Boost"
                "Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0, 0, 0]
                [ 1, 1, 1, 1, 1, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 3, 3]
                [ 0, 0, 1, 0, 0, 3, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0]
            ]
        "Firespray-31":
            name: "Firespray-31"
            xws: "Firespray-class Patrol Craft".canonicalize()
            factions: [ "Scum and Villainy", "Separatist Alliance"]
            attack: 3
            attackb: 3
            agility: 2
            hull: 6
            shields: 4
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "Boost"
                "R-Reinforce"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
            ]
        "HWK-290":
            name: "HWK-290"
            xws: "HWK-290 Light Freighter".canonicalize()
            factions: [ "Rebel Alliance", "Scum and Villainy" ]
            attackt: 2
            agility: 2
            hull: 3
            shields: 2
            keyword: ["Freighter"]
            actions: [
                "Focus"
                "R-> Rotate Arc"
                "Lock"
                "R-> Rotate Arc"
                "Rotate Arc"
                "R-Boost"
                "R-Jam"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0]
                [ 0, 1, 1, 1, 0]
                [ 2, 2, 1, 2, 2]
                [ 3, 2, 1, 2, 3]
                [ 0, 0, 2, 0, 0]
            ]
        "Lambda-Class Shuttle":
            name: "Lambda-Class Shuttle"
            xws: "Lambda-class T-4a Shuttle".canonicalize()
            factions: [ "Galactic Empire" ]
            attack: 3
            attackb: 2
            agility: 1
            hull: 6
            shields: 4
            actions: [
                "Focus"
                "Coordinate"
                "Reinforce"
                "R-Jam"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0]
                [ 0, 1, 1, 1, 0]
                [ 3, 2, 1, 2, 3]
                [ 0, 3, 2, 3, 0]
            ]
            base: "Large"
        "B-Wing":
            name: "B-Wing"
            xws: "A/SF-01 B-wing".canonicalize()
            factions: [ "Rebel Alliance" ]
            attack: 3
            agility: 1
            hull: 4
            shields: 4
            actions: [
                "Focus"
                "R-> Barrel Roll"
                "Lock"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 3, 3]
                [ 2, 2, 1, 2, 2, 3, 0, 0, 0, 0]
                [ 0, 3, 1, 3, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
            ]
            autoequip: [
                'Stabilized S-Foils'
            ]
        "TIE Bomber":
            name: "TIE Bomber"
            xws: "TIE/sa Bomber".canonicalize()
            factions: [ "Galactic Empire" ]
            attack: 2
            agility: 2
            hull: 6
            shields: 0
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R-> Lock"
                "R-Reload"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 3]
                [ 0, 0, 2, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 3]
            ]
        "Z-95 Headhunter":
            name: "Z-95 Headhunter"
            xws: "Z-95-AF4 Headhunter".canonicalize()
            factions: [ "Rebel Alliance", "Scum and Villainy" ]
            attack: 2
            agility: 2
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 3]
                [ 0, 0, 2, 0, 0, 3]
            ]
        "TIE Defender":
            name: "TIE Defender"
            xws: "TIE/D Defender".canonicalize()
            factions: [ "Galactic Empire" ]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 3, 1, 0, 1, 3, 0]
                [ 3, 2, 1, 2, 3, 3]
                [ 2, 2, 1, 2, 2, 0]
                [ 0, 0, 1, 0, 0, 2]
                [ 0, 0, 1, 0, 0, 0]
            ]
        "E-Wing":
            name: "E-Wing"
            xws: "E-wing".canonicalize()
            factions: [ "Rebel Alliance" ]
            attack: 3
            agility: 3
            hull: 3
            shields: 3
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "R-> Lock"
                "Boost"
                "R-> Lock"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 3, 1, 1, 1, 3, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 3, 3 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0 ]
            ]
        "TIE Phantom":
            name: "TIE Phantom"
            xws: "TIE/ph Phantom".canonicalize()
            factions: [ "Galactic Empire" ]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 2, 2, 0, 2, 2, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 3]
                [ 0, 0, 2, 0, 0, 3]
            ]
        "YT-2400":
            name: "YT-2400"
            xws: "YT-2400 Light Freighter".canonicalize()
            factions: [ "Rebel Alliance" ]
            attackdt: 4
            agility: 2
            hull: 6
            shields: 4
            keyword: ["Freighter"]
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
                "Rotate Arc"
            ]
            base: "Large"
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 0]
                [ 2, 2, 2, 2, 2, 0]
                [ 0, 0, 2, 0, 0, 3]
            ]
        "VT-49 Decimator":
            name: "VT-49 Decimator"
            xws: "VT-49 Decimator".canonicalize()
            factions: [ "Galactic Empire" ]
            attackdt: 3
            agility: 0
            hull: 12
            shields: 4
            actions: [
                "Focus"
                "Lock"
                "Reinforce"
                "Rotate Arc"
                "R-Coordinate"
            ]
            base: "Large"
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0]
                [ 2, 2, 1, 2, 2, 0]
                [ 2, 2, 2, 2, 2, 0]
                [ 0, 0, 2, 0, 0, 0]
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
                "R-> Focus"
                "Boost"
                "R-> Focus"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 0, 0, 0]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 0, 1, 2, 0 ]
                [ 2, 2, 1, 2, 2, 0 ]
                [ 0, 2, 1, 2, 0, 3 ]
                [ 0, 0, 2, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3 ]
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
            base: "Medium"
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0, 3, 3 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0 ]
            ]
        "YV-666":
            name: "YV-666"
            xws: "YV-666 Light Freighter".canonicalize()
            factions: [ "Scum and Villainy" ]
            attackf: 3
            agility: 1
            hull: 9
            shields: 3
            base: "Large"
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 3, 2, 1, 2, 3, 0 ]
                [ 2, 2, 1, 2, 2, 0 ]
                [ 0, 0, 2, 0, 0, 0 ]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 0, 1, 2, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 3, 3 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
            ]
        "K-Wing":
            name: "K-Wing"
            xws: "BTL-S8 K-wing".canonicalize()
            factions: ["Rebel Alliance"]
            attackdt: 2
            agility: 1
            hull: 6
            shields: 3
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "Slam"
                "Rotate Arc"
                "Reload"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0 ]
                [ 0, 2, 2, 2, 0, 0 ]
            ]
        "TIE Punisher":
            name: "TIE Punisher"
            xws: "TIE/ca Punisher".canonicalize()
            factions: ["Galactic Empire"]
            attack: 2
            agility: 1
            hull: 6
            shields: 3
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
                "Boost"
                "R-> Lock"
                "Reload"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0 ]
                [ 3, 2, 2, 2, 3, 0 ]
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
            base: "Large"
            keyword: ["Freighter"]
            actions: [
                "Focus"
                "Lock"
                "Reinforce"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 1, 2, 3, 0 ]
                [ 2, 1, 1, 1, 2, 0 ]
                [ 3, 2, 2, 2, 3, 0 ]
                [ 0, 0, 2, 0, 0, 3 ]
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
                "R-> Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 3, 1, 1, 1, 3, 0 ]
                [ 2, 2, 1, 2, 2, 0 ]
                [ 3, 2, 2, 2, 3, 0 ]
                [ 0, 0, 2, 0, 0, 3 ]
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
                "R-> Focus"
                "Boost"
                "R-> Focus"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 1, 0, 1, 1, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 3, 3 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "G-1A Starfighter":
            name: "G-1A Starfighter"
            xws: "G-1A Starfighter".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 1
            hull: 5
            shields: 4
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "Jam"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0 ]
                [ 3, 1, 1, 1, 3, 0 ]
                [ 2, 2, 1, 2, 2, 3 ]
                [ 0, 3, 2, 3, 0, 0 ]
                [ 0, 0, 3, 0, 0, 3 ]
            ]
        "JumpMaster 5000":
            name: "JumpMaster 5000"
            xws: "JumpMaster 5000".canonicalize()
            factions: ["Scum and Villainy"]
            base: "Large"
            attackt: 2
            agility: 2
            hull: 6
            shields: 3
            actions: [
                "Focus"
                "R-> Rotate Arc"
                "Lock"
                "R-> Rotate Arc"
                "R-Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 2, 3, 0, 0, 0 ]
                [ 2, 1, 1, 2, 3, 0, 0, 0 ]
                [ 0, 1, 1, 2, 0, 0, 3, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0 ]
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
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0 ]
                [ 3, 2, 2, 2, 3, 0 ]
                [ 0, 0, 3, 0, 0, 3 ]
            ]
        "Fang Fighter":
            name: "Fang Fighter"
            xws: "Fang Fighter".canonicalize()
            factions: ["Scum and Villainy", "Rebel Alliance"]
            attack: 3
            agility: 3
            hull: 4
            shields: 0
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R-> Focus"
                "Boost"
                "R-> Focus"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 0, 0, 0, 2, 0, 0, 0, 0, 0 ]
                [ 1, 1, 1, 1, 1, 0, 0, 0, 3, 3 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "Lancer-Class Pursuit Craft":
            name: "Lancer-Class Pursuit Craft"
            xws: "Lancer-class Pursuit Craft".canonicalize()
            factions: ["Scum and Villainy"]
            base: "Large"
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 2, 2, 2, 0, 0]
                [ 2, 2, 1, 2, 2, 0]
                [ 1, 1, 1, 1, 1, 0]
                [ 0, 0, 1, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3]
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
                "Focus"
                "R-Evade"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 3, 0, 3 ]
                [ 2, 1, 1, 1, 2, 0, 3, 3, 0, 0, 0, 3, 0 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "U-Wing":
            name: "U-Wing"
            xws: "UT-60D U-wing".canonicalize()
            factions: ["Rebel Alliance"]
            base: "Medium"
            attack: 3
            agility: 2
            hull: 5
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "R-Coordinate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0 ]
                [ 0, 1, 1, 1, 0 ]
                [ 2, 1, 1, 1, 2 ]
                [ 0, 2, 2, 2, 0 ]
                [ 0, 0, 2, 0, 0 ]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 3, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 3, 3 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0 ]
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
                "R-Barrel Roll"
                "Reinforce"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0 ]
            ]
        "Scurrg H-6 Bomber":
            name: "Scurrg H-6 Bomber"
            xws: "Scurrg H-6 Bomber".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 1
            hull: 6
            shields: 4
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 3, 3 ]
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
                "R-> Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0 ]
                [ 2, 2, 2, 2, 2, 0, 0, 0 ]
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
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
                "Reload"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 3, 2, 1, 2, 3, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 0]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 3, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 2, 1, 2, 3, 3, 0, 0, 0, 0, 0, 0, 0]
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
            base: "Medium"
            actions: [
                "Focus"
                "Evade"
                "Jam"
                "R-Coordinate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
                [ 3, 1, 1, 1, 3, 0, 3, 3 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0 ]
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
                "R-Coordinate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0, 0, 0 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 3, 0, 0 ]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 1, 1, 1, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0, 0, 0]
                [ 1, 1, 1, 1, 1, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 3, 3]
                [ 0, 0, 1, 0, 0, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 3, 0, 0]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0, 0, 0]
                [ 1, 1, 1, 1, 1, 0, 3, 3]
                [ 2, 2, 1, 2, 2, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0]
            ]
        "TIE/VN Silencer":
            name: "TIE/VN Silencer"
            xws: "TIE/vn Silencer".canonicalize()
            factions: ["First Order"]
            attack: 3
            agility: 3
            hull: 4
            shields: 2
            keyword: ["Autothrusters"]
            actions: [
                "Focus"
                "Boost"
                "Lock"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0, 0, 0, 0, 0]
                [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 3, 3]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 3, 3, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
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
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 2, 1, 2, 3, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
            base: "Large"
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
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0]
                [ 0, 3, 2, 3, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
            base: "Large"
        "Scavenged YT-1300":
            name: "Scavenged YT-1300"
            canonical_name: 'Scavenged YT-1300'.canonicalize()
            xws: "Scavenged YT-1300".canonicalize()
            factions: [ "Resistance" ]
            attackdt: 3
            agility: 1
            hull: 8
            shields: 3
            keyword: ["Freighter"]
            actions: [
                "Focus"
                "Lock"
                "R-Boost"
                "R-Rotate Arc"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0]
                [ 2, 2, 2, 2, 2, 0, 3, 3]
                [ 0, 0, 3, 0, 0, 0, 0, 0]
            ]
            base: "Large"
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 3]
                [ 0, 0, 2, 0, 0, 0]
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
                "R-> Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 3, 3]
                [ 0, 3, 1, 3, 0, 3, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 0, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 3, 3, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
            ]
        "Delta-7b Aethersprite":
            name: "Delta-7b Aethersprite"
            icon: "delta7aethersprite"
            xws: "Delta-7b Aethersprite".canonicalize()
            factions: ["Galactic Republic"]
            attack: 3
            agility: 2
            hull: 3
            shields: 3
            actions: [
                "Focus"
                "F-Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 0, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 3, 3, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
            ]
        "Sith Infiltrator":
            name: "Sith Infiltrator"
            xws: "Sith Infiltrator".canonicalize()
            factions: ["Separatist Alliance"]
            attack: 3
            agility: 1
            hull: 6
            base: "Large"
            shields: 4
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 3, 3, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
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
            keyword: ["Networked Calculations"]
            actions: [
                "Calculate"
                "Lock"
                "Barrel Roll"
                "R-> Calculate"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 3, 0, 0, 0, 0]
                [ 1, 2, 1, 2, 1, 0, 0, 0, 3, 3]
                [ 2, 3, 1, 3, 2, 0, 0, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
            ]
            autoequip: [
                'Grappling Struts'
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
                "R-> Focus"
                "Boost"
                "R-> Focus"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 2, 0, 2, 2, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 3, 2, 1, 2, 3, 0, 3, 3, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 2, 2, 2, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Hyena-Class Droid Bomber":
            name: "Hyena-Class Droid Bomber"
            xws: "Hyena-Class Droid Bomber".canonicalize()
            factions: ["Separatist Alliance"]
            attack: 2
            agility: 2
            hull: 5
            shields: 0
            keyword: ["Networked Calculations"]
            actions: [
                "Calculate"
                "Lock"
                "Barrel Roll"
                "R-> Lock"
                "R-Reload"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 3, 2, 3, 2, 0, 0, 0, 0, 0]
                [ 1, 2, 1, 2, 1, 3, 0, 0, 3, 3]
                [ 2, 0, 1, 0, 2, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
            ]
            autoequip: [
                'Landing Struts'
            ]
        "Resistance Transport Pod":
            name: "Resistance Transport Pod"
            xws: "Resistance Transport Pod".canonicalize()
            factions: ["Resistance"]
            attack: 2
            agility: 2
            hull: 3
            shields: 1
            actions: [
                "Focus"
                "R-Lock"
                "R-Barrel Roll"
                "R-Jam"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0]
                [ 0, 3, 2, 3, 0, 3, 0, 0, 0, 0]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Resistance Transport":
            name: "Resistance Transport"
            xws: "Resistance Transport".canonicalize()
            factions: ["Resistance"]
            attack: 2
            agility: 1
            hull: 5
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "R-Coordinate"
                "R-Jam"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0, 3, 0, 3 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 3, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "Nantex-Class Starfighter":
            name: "Nantex-Class Starfighter"
            xws: "Nantex-Class Starfighter".canonicalize()
            factions: ["Separatist Alliance"]
            attackbull: 3
            attackt: 2
            agility: 3
            hull: 4
            shields: 0
            actions: [
                "Focus"
                "Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 0, 1, 2, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3, 0, 0]
            ]
        "BTL-B Y-Wing":
            name: "BTL-B Y-Wing"
            xws: "BTL-B Y-Wing".canonicalize()
            factions: ["Galactic Republic"]
            attack: 2
            agility: 1
            hull: 5
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
                "R-Reload"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0]
                [ 2, 2, 1, 2, 2, 0]
                [ 3, 2, 2, 2, 3, 0]
                [ 0, 0, 3, 0, 0, 3]
                [ 0, 0, 0, 0, 0, 0]
            ]
        "Fireball":
            name: "Fireball"
            xws: "Fireball".canonicalize()
            factions: ["Resistance"]
            attack: 2
            agility: 2
            hull: 6
            shields: 0
            actions: [
                "Focus"
                "Evade"
                "Barrel Roll"
                "Slam"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 3, 3 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "TIE/Ba Interceptor":
            name: "TIE/Ba Interceptor"
            xws: "TIE/Ba Interceptor".canonicalize()
            factions: ["First Order"]
            attack: 3
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 1, 0, 1, 1, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 3, 3, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
            ]
        "Xi-class Light Shuttle":
            name: "Xi-class Light Shuttle"
            xws: "Xi-class Light Shuttle".canonicalize()
            factions: ["First Order"]
            attack: 2
            agility: 2
            hull: 5
            shields: 2
            base: "Medium"
            actions: [
                "Focus"
                "R-Lock"
                "R-Coordinate"
                "Jam"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "HMP Droid Gunship":
            name: "HMP Droid Gunship"
            xws: "HMP Droid Gunship".canonicalize()
            factions: ["Separatist Alliance"]
            attackf: 2
            agility: 1
            hull: 5
            shields: 3
            actions: [
                "Calculate"
                "Lock"
                "R-Barrel Roll"
                "Reload"
                "R-> Calculate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 3, 1, 3, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 1, 2, 1, 0, 0, 0, 0, 0 ]
                [ 2, 3, 2, 3, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
            ]
            autoequip: [
                'Repulsorlift Stabilizers'
            ]
        "LAAT/i Gunship":
            name: "LAAT/i Gunship"
            xws: "LAAT/i Gunship".canonicalize()
            factions: ["Galactic Republic"]
            attackdt: 2
            agility: 1
            hull: 8
            shields: 2
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
                "R-Reinforce"
                "Reload"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "TIE/rb Heavy":
            name: "TIE/rb Heavy"
            xws: "TIE/rb Heavy".canonicalize()
            factions: ["Galactic Empire"]
            attackt: 2
            agility: 1
            hull: 8
            shields: 0
            base: "Medium"
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
                "R-Barrel Roll"
                "Rotate Arc"
                "R-> Calculate"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 3, 3 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
            autoequip: [
                'Maneuver-Assist MGK-300'
            ]
        "Droid Tri-Fighter":
            name: "Droid Tri-Fighter"
            xws: "Droid Tri-Fighter".canonicalize()
            factions: ["Separatist Alliance"]
            attack: 3
            agility: 3
            hull: 3
            shields: 0
            keyword: ["Networked Calculations"]
            actions: [
                "Calculate"
                "Evade"
                "Lock"
                "Barrel Roll"
                "R-> Evade"
                "Boost"
                "R-> Calculate"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 0, 0, 0, 2, 0, 0, 0, 3, 3 ]
                [ 1, 2, 1, 2, 1, 0, 0, 0, 0, 0 ]
                [ 1, 2, 1, 2, 1, 3, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
            ]
        "Nimbus-class V-Wing":
            name: "Nimbus-class V-Wing"
            xws: "Nimbus-class V-Wing".canonicalize()
            factions: ["Galactic Republic"]
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            keyword: ["TIE"]
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
                "Boost"
                "R-> Lock"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 3, 0, 3, 2, 0, 0, 0, 0, 0 ]
                [ 1, 1, 1, 1, 1, 3, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
            ]
            autoequip: [
                'Alpha-3E "Esk"'
            ]
        "Eta-2 Actis":
            name: "Eta-2 Actis"
            xws: "Eta-2 Actis".canonicalize()
            factions: ["Galactic Republic"]
            attackbull: 3
            attack: 2
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus"
                "Evade"
                "F-Lock"
                "Barrel Roll"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 0, 0, 0, 2, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 4, 4 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "Syliure-class Hyperspace Ring":
            name: "Syliure-class Hyperspace Ring"
            xws: "Syliure-class Hyperspace Ring".canonicalize()
            factions: ["Galactic Republic"]
            agility: 1
            hull: 1
            shields: 2
            actions: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "BTA-NR2 Y-Wing":
            name: "BTA-NR2 Y-Wing"
            xws: "BTA-NR2 Y-Wing".canonicalize()
            factions: ["Resistance"]
            attack: 2
            agility: 1
            hull: 4
            shields: 3
            actions: [
                "Focus"
                "R-Lock"
                "R-Barrel Roll"
                "R-Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 1, 1, 1, 0, 0]
                [ 2, 2, 1, 2, 2, 0]
                [ 3, 2, 1, 2, 3, 0]
                [ 0, 0, 3, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 3]
            ]
        "TIE/WI Whisper":
            name: "TIE/WI Whisper"
            xws: "TIE/Wi Whisper Modified Interceptor".canonicalize()
            factions: ["First Order"]
            attackbull: 3
            attackt: 2
            agility: 2
            hull: 3
            shields: 2
            actions: [
                "Focus"
                "> Rotate Arc"
                "Evade"
                "Lock"
                "Barrel Roll"
                "> Rotate Arc"
                "Boost"
                "> Rotate Arc"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 0, 0, 0, 2, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 3, 3, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
            ]
            autoequip: [
                "Enhanced Jamming Suite"
            ]
        "TIE/Se Bomber":
            name: "TIE/Se Bomber"
            xws: "TIE/Se Bomber".canonicalize()
            factions: ["First Order"]
            attack: 2
            agility: 2
            hull: 4
            shields: 2
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R-> Lock"
                "R-Boost"
                "Reload"
                "R-> Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 3, 3, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "Gauntlet Fighter":
            name: "Gauntlet Fighter"
            xws: "Gauntlet Fighter".canonicalize()
            factions: ["Rebel Alliance", "Galactic Empire", "Scum and Villainy", "Galactic Republic", "Separatist Alliance"]
            attack: 3
            attackb: 2
            agility: 2
            hull: 9
            shields: 2
            base: "Large"
            actions: [
                "Focus"
                "R-Reinforce"
                "Lock"
                "R-Coordinate"
            ]
            autoequip: [
                "Swivel Wing"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 0, 1, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "ST-70 Assault Ship":
            name: "ST-70 Assault Ship"
            xws: "ST-70 Assault Ship".canonicalize()
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 2
            hull: 7
            shields: 2
            base: "Medium"
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "R-Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 3, 3 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 3, 0, 0, 0, 0 ]
            ]

        # Epic Section
        "CR90 Corellian Corvette":
            name: "CR90 Corellian Corvette"
            xws: "CR90 Corellian Corvette".canonicalize()
            icon: "cr90corvette"
            factions: ["Galactic Republic", "Rebel Alliance"]
            base: "Huge"
            attackl: 4
            attackr: 4
            agility: 0
            hull: 18
            shields: 7
            shieldrecurr: 2
            energy: 7
            energyrecurr: 2
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
                "R-Coordinate"
                "Jam"
            ]
            maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 2, 2, 2, 0]
                [ 0, 1, 1, 1, 0]
                [ 0, 3, 1, 3, 0]
                [ 0, 0, 3, 0, 0]
                [ 0, 0, 3, 0, 0]
            ]
        "Raider-class Corvette":
            name: "Raider-class Corvette"
            xws: "Raider-class Corvette".canonicalize()
            factions: ["Galactic Empire", "First Order"]
            base: "Huge"
            attackf: 4
            agility: 0
            hull: 20
            shields: 8
            shieldrecurr: 2
            energy: 6
            energyrecurr: 2
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
                "Coordinate"
                "Jam"
            ]
            maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 1, 2, 1, 0]
                [ 0, 2, 1, 2, 0]
                [ 0, 3, 1, 3, 0]
                [ 0, 0, 2, 0, 0]
                [ 0, 0, 3, 0, 0]
            ]
        "GR-75 Medium Transport":
            name: "GR-75 Medium Transport"
            xws: "GR-75 Medium Transport".canonicalize()
            factions: ["Rebel Alliance", "Resistance"]
            base: "Huge"
            attack: 2
            agility: 0
            hull: 12
            shields: 3
            shieldrecurr: 1
            energy: 4
            energyrecurr: 1
            actions: [
                "Focus"
                "R-Lock"
                "Coordinate"
                "R-Reinforce"
                "Jam"
            ]
            maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 1, 1, 1, 0]
                [ 0, 2, 2, 2, 0]
                [ 0, 0, 3, 0, 0]
                [ 0, 0, 3, 0, 0]
            ]
        "Gozanti-class Cruiser":
            name: "Gozanti-class Cruiser"
            xws: "Gozanti-class Cruiser".canonicalize()
            factions: ["Galactic Empire", "First Order"]
            base: "Huge"
            attack: 3
            agility: 0
            hull: 11
            shields: 5
            shieldrecurr: 1
            energy: 3
            energyrecurr: 1
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
                "Coordinate"
                "Jam"
            ]
            maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 2, 1, 2, 0]
                [ 0, 3, 1, 3, 0]
                [ 0, 0, 1, 0, 0]
                [ 0, 0, 3, 0, 0]
            ]
        "C-ROC Cruiser":
            name: "C-ROC Cruiser"
            xws: "C-ROC Cruiser".canonicalize()
            factions: ["Separatist Alliance", "Scum and Villainy"]
            base: "Huge"
            attack: 3
            agility: 0
            hull: 12
            shields: 4
            shieldrecurr: 1
            energy: 4
            energyrecurr: 1
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
                "R-Coordinate"
                "Jam"
            ]
            maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 2, 1, 2, 0]
                [ 0, 2, 1, 2, 0]
                [ 0, 3, 2, 3, 0]
                [ 0, 0, 3, 0, 0]
                [ 0, 0, 3, 0, 0]
            ]
        "Trident-class Assault Ship":
            name: "Trident-class Assault Ship"
            xws: "Trident-class Assault Ship".canonicalize()
            factions: ["Separatist Alliance", "Scum and Villainy"]
            base: "Huge"
            attack: 3
            agility: 0
            hull: 10
            shields: 4
            shieldrecurr: 1
            energy: 3
            energyrecurr: 2
            actions: [
                "Focus"
                "R-Evade"
                "R-Reinforce"
                "Lock"
                "R-Coordinate"
            ]
            maneuvers: [
                [ 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0 ]
                [ 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 3, 0 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
            autoequip: [
                'Tractor Tentacles'
            ]

    # name field is for convenience only
    pilotsById: [
        {
            name: "Cavern Angels Zealot"
            id: 0
            faction: "Rebel Alliance"
            ship: "X-Wing"
            keyword: ["Partisan"]
            skill: 1
            points: 4
            pointsupg: 4
            slots: [
                "Astromech"
                "Illicit"
                "Configuration"
            ]
        }
        {
            name: "Blue Squadron Escort"
            id: 1
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 2
            points: 4
            pointsupg: 4
            slots: [
                "Astromech"
                "Configuration"
            ]
        }
        {
            name: "Red Squadron Veteran"
            id: 2
            faction: "Rebel Alliance"
            ship: "X-Wing"
            skill: 3
            points: 4
            pointsupg: 3
            slots: [
                "Talent"
                "Astromech"
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
            points: 4
            pointsupg: 7
            slots: [
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
            keyword: ["Light Side"]
            force: 2
            points: 7
            pointsupg: 28
            slots: [
                "Force"
                "Talent"
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
            points: 6
            pointsupg: 20
            slots: [
                "Talent"
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
            points: 5
            pointsupg: 10
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
            points: 5
            pointsupg: 12
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
            points: 4
            pointsupg: 7
            keyword: ["Partisan"]
            slots: [
                "Torpedo"
                "Missile"
                "Illicit"
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
            points: 4
            pointsupg: 7
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
            points: 4
            pointsupg: 6
            keyword: ["Partisan"]
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Illicit"
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
            points: 4
            pointsupg: 6
            keyword: ["Partisan"]
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Illicit"
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
            points: 3
            pointsupg: 7
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Missile"
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
            points: 3
            pointsupg: 8
            keyword: ["Light Side","Spectre"]
            slots: [
                "Force"
                "Crew"
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
            points: 3
            pointsupg: 6
            keyword: ["Spectre"]
            slots: [
                "Crew"
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
            points: 3
            pointsupg: 8
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Talent"
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
            points: 5
            pointsupg: 14
            slots: [
                "Torpedo"
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
            points: 5
            pointsupg: 16
            slots: [
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Crew"
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
            points: 5
            pointsupg: 7
            slots: [
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Device"
            ]
        }
        {
            name: "Corran Horn"
            id: 21
            unique: true
            faction: "Rebel Alliance"
            ship: "E-Wing"
            skill: 5
            points: 7
            pointsupg: 20
            slots: [
                "Talent"
                "Tech"
                "Sensor"
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
            points: 6
            pointsupg: 18
            slots: [
                "Talent"
                "Tech"
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
            points: 6
            pointsupg: 12
            slots: [
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
            points: 6
            pointsupg: 14
            slots: [
                "Tech"
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
            points: 5
            pointsupg: 18
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Modification"
                "Device"
            ]
        }
        {
            name: "Horton Salm"
            id: 26
            unique: true
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 4
            points: 4
            pointsupg: 14
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: '"Dutch" Vander'
            id: 27
            unique: true
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 4
            points: 4
            pointsupg: 12
            slots: [
                "Talent"
                "Turret"
                "Missile"
                "Astromech"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Evaan Verlaine"
            id: 28
            unique: true
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 3
            points: 4
            pointsupg: 15
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Gold Squadron Veteran"
            id: 29
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 3
            points: 4
            pointsupg: 6
            slots: [
                "Turret"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Gray Squadron Bomber"
            id: 30
            faction: "Rebel Alliance"
            ship: "Y-Wing"
            skill: 2
            points: 4
            pointsupg: 8
            slots: [
                "Device"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Bodhi Rook"
            id: 31
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 4
            points: 5
            pointsupg: 10
            slots: [
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
            points: 5
            pointsupg: 12
            slots: [
                "Talent"
                "Sensor"
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
            points: 5
            pointsupg: 9
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
            points: 5
            pointsupg: 14
            keyword: ["Partisan"]
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Saw Gerrera"
            id: 35
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 4
            points: 6
            pointsupg: 18
            keyword: ["Partisan"]
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Benthic Two Tubes"
            id: 36
            unique: true
            faction: "Rebel Alliance"
            ship: "U-Wing"
            skill: 2
            points: 5
            pointsupg: 16
            keyword: ["Partisan"]
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Illicit"
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
            points: 5
            pointsupg: 6
            slots: [
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
            points: 5
            pointsupg: 6
            keyword: ["Partisan"]
            slots: [
                "Illicit"
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
            points: 10
            pointsupg: 22
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: '"Leebo"'
            id: 40
            unique: true
            faction: "Rebel Alliance"
            ship: "YT-2400"
            skill: 3
            points: 8
            pointsupg: 16
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Wild Space Fringer"
            id: 41
            faction: "Rebel Alliance"
            ship: "YT-2400"
            skill: 1
            points: 8
            pointsupg: 7
            slots: [
                "Missile"
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
            points: 9
            pointsupg: 25
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
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
            points: 9
            pointsupg: 22
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
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
            recurring: 1
            points: 7
            pointsupg: 18
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Outer Rim Smuggler"
            id: 45
            faction: "Rebel Alliance"
            ship: "YT-1300"
            skill: 1
            points: 7
            pointsupg: 6
            slots: [
                "Missile"
                "Gunner"
            ]
        }
        {
            name: "Jan Ors"
            id: 46
            unique: true
            faction: "Rebel Alliance"
            ship: "HWK-290"
            skill: 5
            points: 6
            pointsupg: 10
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Device"
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
            points: 6
            pointsupg: 15
            slots: [
                "Talent"
                "Crew"
                "Device"
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
            points: 6
            pointsupg: 12
            slots: [
                "Talent"
                "Talent"
                "Crew"
                "Device"
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
            points: 4
            pointsupg: 6
            slots: [
                "Device"
                "Modification"
            ]
        }
        {
            name: "Jake Farrell"
            id: 50
            unique: true
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 4
            points: 4
            pointsupg: 8
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Arvel Crynyd"
            id: 51
            unique: true
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 3
            points: 3
            pointsupg: 6
            slots: [
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Green Squadron Pilot"
            id: 52
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 3
            points: 3
            pointsupg: 4
            slots: [
                "Talent"
                "Talent"
                "Configuration"
            ]
        }
        {
            name: "Phoenix Squadron Pilot"
            id: 53
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 1
            points: 3
            pointsupg: 3
            slots: [
                "Talent"
                "Configuration"
            ]
        }
        {
            name: "Airen Cracken"
            id: 54
            unique: true
            faction: "Rebel Alliance"
            ship: "Z-95 Headhunter"
            skill: 5
            points: 3
            pointsupg: 9
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
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
            points: 2
            pointsupg: 0
            slots: [
            ]
        }
        {
            name: "Tala Squadron Pilot"
            id: 56
            faction: "Rebel Alliance"
            ship: "Z-95 Headhunter"
            skill: 2
            points: 3
            pointsupg: 4
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Bandit Squadron Pilot"
            id: 57
            faction: "Rebel Alliance"
            ship: "Z-95 Headhunter"
            skill: 1
            points: 3
            pointsupg: 5
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
            points: 5
            pointsupg: 11
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
            points: 5
            pointsupg: 10
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
            points: 5
            pointsupg: 6
            slots: [
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
            points: 8
            pointsupg: 20
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Sensor"
                "Turret"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
                "Modification"
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
            keyword: ["Light Side", "Jedi", "Spectre"]
            force: 2
            points: 9
            pointsupg: 20
            slots: [
                "Force"
                "Sensor"
                "Turret"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
                "Modification"
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
            points: 8
            pointsupg: 18
            keyword: ["Droid","Spectre"]
            slots: [
                "Sensor"
                "Crew"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Lothal Rebel"
            id: 64
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 2
            points: 7
            pointsupg: 8
            slots: [
                "Turret"
                "Torpedo"
                "Gunner"
            ]
        }
        {
            name: "Hera Syndulla"
            id: 65
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 5
            points: 4
            pointsupg: 9
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Modification"
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
            points: 4
            pointsupg: 6
            keyword: ["Mandalorian","Spectre"]
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Modification"
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
            keyword: ["Light Side","Spectre"]
            force: 1
            points: 4
            pointsupg: 7
            slots: [
                "Force"
                "Turret"
                "Crew"
                "Modification"
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
            points: 3
            pointsupg: 10
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Fenn Rau (Sheathipede)"
            id: 69
            unique: true
            canonical_name: 'Fenn Rau'.canonicalize()
            xws: "fennrau-sheathipedeclassshuttle"
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 6
            points: 5
            pointsupg: 15
            keyword: ["Mandalorian","Spectre"]
            slots: [
                "Talent"
                "Crew"
                "Astromech"
                "Modification"
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
            points: 4
            pointsupg: 11
            keyword: ["Light Side","Spectre"]
            slots: [
                "Force"
                "Crew"
                "Astromech"
                "Modification"
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
            points: 3
            pointsupg: 8
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Crew"
                "Astromech"
                "Modification"
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
            points: 3
            pointsupg: 8
            keyword: ["Droid","Spectre"]
            slots: [
                "Crew"
                "Modification"
                "Astromech"
                "Title"
            ]
        }
        {
            name: "Braylen Stramm"
            id: 73
            unique: true
            faction: "Rebel Alliance"
            ship: "B-Wing"
            skill: 4
            points: 5
            pointsupg: 18
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Ten Numb"
            id: 74
            unique: true
            faction: "Rebel Alliance"
            ship: "B-Wing"
            skill: 4
            points: 5
            pointsupg: 20
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Blade Squadron Veteran"
            id: 75
            faction: "Rebel Alliance"
            ship: "B-Wing"
            skill: 3
            points: 5
            pointsupg: 6
            slots: [
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Configuration"
            ]
        }
        {
            name: "Blue Squadron Pilot"
            id: 76
            faction: "Rebel Alliance"
            ship: "B-Wing"
            skill: 2
            points: 5
            pointsupg: 6
            slots: [
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Norra Wexley"
            id: 77
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170"
            skill: 5
            points: 6
            pointsupg: 16
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
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
            points: 5
            pointsupg: 12
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Crew"
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
            points: 5
            pointsupg: 11
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
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
            points: 4
            pointsupg: 8
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
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
            points: 7
            pointsupg: 16
            keyword: ["Bounty Hunter","Droid"]
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
            points: 7
            pointsupg: 16
            keyword: ["Bounty Hunter","Droid"]
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
            points: 7
            pointsupg: 16
            keyword: ["Bounty Hunter","Droid"]
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
            points: 7
            pointsupg: 16
            keyword: ["Bounty Hunter","Droid"]
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
            points: 6
            pointsupg: 18
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Missile"
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
            points: 5
            pointsupg: 10
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Missile"
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
            points: 4
            pointsupg: 6
            slots: [
                "Turret"
                "Torpedo"
                "Missile"
                "Device"
                "Illicit"
            ]
        }
        {
            name: "Crymorah Goon"
            id: 88
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 1
            points: 4
            pointsupg: 4
            slots: [
                "Turret"
                "Missile"
                "Device"
                "Illicit"
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
            points: 7
            pointsupg: 24
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
            points: 6
            pointsupg: 17
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Gunner"
                "Illicit"
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
            points: 6
            pointsupg: 15
            keyword: ["Droid"]
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
            name: "Freighter Captain"
            id: 92
            faction: "Scum and Villainy"
            ship: "Customized YT-1300"
            skill: 1
            points: 6
            pointsupg: 6
            slots: [
                "Missile"
                "Gunner"
                "Illicit"
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
            points: 3
            pointsupg: 4
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
            points: 3
            pointsupg: 4
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
            points: 3
            pointsupg: 4
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Crew"
                "Modification"
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
            points: 2
            pointsupg: 0
            keyword: ["Droid"]
            slots: [
            ]
        }
        {
            name: "Fenn Rau"
            id: 97
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 6
            points: 7
            pointsupg: 12
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Modification"
            ]
        }
        {
            name: "Old Teroch"
            id: 98
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 5
            points: 6
            pointsupg: 16
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Modification"
            ]
        }
        {
            name: "Kad Solus"
            id: 99
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 4
            pointsupg: 4
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Joy Rekkoff"
            id: 100
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 5
            pointsupg: 11
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Torpedo"
                "Modification"
            ]
        }
        {
            name: "Skull Squadron Pilot"
            id: 101
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 5
            pointsupg: 10
            keyword: ["Mandalorian"]
            slots: [
                "Torpedo"
                "Modification"
            ]
        }
        {
            name: "Zealous Recruit"
            id: 102
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 1
            points: 5
            pointsupg: 10
            keyword: ["Mandalorian"]
            slots: [
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Boba Fett"
            id: 103
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 5
            points: 10
            pointsupg: 22
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Crew"
            ]
        }
        {
            name: "Emon Azzameen"
            id: 104
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-31"
            skill: 4
            points: 7
            pointsupg: 12
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
            points: 7
            pointsupg: 13
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
            points: 7
            pointsupg: 11
            keyword: ["Bounty Hunter"]
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
            points: 8
            pointsupg: 18
            slots: [
                "Talent"
                "Cannon"
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
            points: 7
            pointsupg: 6
            keyword: ["Bounty Hunter"]
            slots: [
                "Cannon"
                "Missile"
                "Device"
                "Illicit"
            ]
        }
        {
            name: "4-LOM"
            id: 109
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            points: 5
            pointsupg: 14
            keyword: ["Bounty Hunter","Droid"]
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
            name: "Zuckuss"
            id: 110
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            points: 5
            pointsupg: 10
            keyword: ["Bounty Hunter"]
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
            points: 5
            pointsupg: 3
            keyword: ["Bounty Hunter"]
            slots: [
                "Illicit"

            ]
        }
        {
            name: "Palob Godalhi"
            id: 112
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290"
            skill: 3
            points: 6
            pointsupg: 12
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
            recurring: 1
            points: 3
            pointsupg: 9
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Torkil Mux"
            id: 114
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290"
            skill: 2
            points: 4
            pointsupg: 10
            slots: [
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
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
            recurring: 1
            points: 7
            pointsupg: 22
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Torpedo"
                "Cannon"
                "Crew"
                "Gunner"
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
            points: 6
            pointsupg: 20
            slots: [
                "Talent"
                "Torpedo"
                "Cannon"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Manaroo"
            id: 117
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 3
            points: 4
            pointsupg: 9
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Torpedo"
                "Cannon"
                "Crew"
                "Gunner"
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
            points: 5
            pointsupg: 4
            slots: [
                "Torpedo"
                "Cannon"
                "Illicit"

            ]
        }
        {
            name: "Talonbane Cobra"
            id: 119
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 5
            points: 5
            pointsupg: 12
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
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
            points: 4
            pointsupg: 8
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
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
            points: 4
            pointsupg: 10
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
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
            points: 4
            pointsupg: 12
            slots: [
                "Missile"
                "Illicit"
                "Illicit"
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
            points: 4
            pointsupg: 0
            slots: [
            ]
        }
        {
            name: "Cartel Marauder"
            id: 124
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 2
            points: 4
            pointsupg: 7
            slots: [
                "Illicit"
            ]
        }
        {
            name: "Asajj Ventress"
            id: 125
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 4
            points: 8
            pointsupg: 20
            force: 2
            keyword: ["Bounty Hunter","Dark Side"]
            slots: [
                "Force"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Ketsu Onyo"
            id: 126
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 5
            points: 7
            pointsupg: 15
            keyword: ["Bounty Hunter"]
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
            points: 6
            pointsupg: 9
            keyword: ["Mandalorian"]
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
            points: 6
            pointsupg: 6
            keyword: ["Bounty Hunter"]
            slots: [
                "Illicit"
                "Illicit"
            ]
        }
        {
            name: "Torani Kulda"
            id: 129
            unique: true
            faction: "Scum and Villainy"
            ship: "M12-L Kimogila Fighter"
            skill: 4
            points: 5
            pointsupg: 10
            keyword: ["Bounty Hunter"]
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
            points: 5
            pointsupg: 12
            keyword: ["Bounty Hunter"]
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
            points: 5
            pointsupg: 3
            slots: [
                "Missile"
            ]
        }
        {
            name: "Serissu"
            id: 132
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 5
            points: 5
            pointsupg: 18
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Modification"
                "HardpointShip"
            ]
        }
        {
            name: "Genesis Red"
            id: 133
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 4
            points: 5
            pointsupg: 20
            slots: [
                "Talent"
                "Modification"
                "HardpointShip"
            ]
        }
        {
            name: "Laetin A'shera"
            id: 134
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Modification"
                "HardpointShip"
            ]
        }
        {
            name: "Quinn Jast"
            id: 135
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 4
            pointsupg: 11
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Modification"
                "HardpointShip"
            ]
        }
        {
            name: "Tansarii Point Veteran"
            id: 136
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 4
            pointsupg: 8
            slots: [
                "Modification"
                "HardpointShip"
            ]
        }
        {
            name: "Inaldra"
            id: 137
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 2
            points: 4
            pointsupg: 10
            slots: [
                "Modification"
                "HardpointShip"
            ]
        }
        {
            name: "Sunny Bounder"
            id: 138
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 1
            points: 4
            pointsupg: 10
            slots: [
                "Modification"
                "HardpointShip"
            ]
        }
        {
            name: "Cartel Spacer"
            id: 139
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 1
            points: 4
            pointsupg: 6
            slots: [
                "Modification"
                "HardpointShip"
            ]
        }
        {
            name: "Constable Zuvio"
            id: 140
            unique: true
            faction: "Scum and Villainy"
            ship: "Quadjumper"
            skill: 4
            points: 4
            pointsupg: 13
            slots: [
                "Talent"
                "Tech"
                "Device"
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
            points: 4
            pointsupg: 6
            keyword: ["Bounty Hunter"]
            slots: [
                "Tech"
                "Crew"
                "Device"
                "Illicit"
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
            points: 4
            pointsupg: 7
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
            points: 4
            pointsupg: 4
            slots: [
                "Device"
                "Illicit"
                "Illicit"
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
            recurring: 1
            points: 6
            pointsupg: 11
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
            points: 5
            pointsupg: 12
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Lok Revenant"
            id: 146
            faction: "Scum and Villainy"
            ship: "Scurrg H-6 Bomber"
            skill: 2
            points: 4
            pointsupg: 7
            slots: [
                "Turret"
                "Gunner"
                "Device"
                "Device"
            ]
        }
        {
            name: "Guri"
            id: 147
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 5
            points: 7
            pointsupg: 20
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Prince Xizor"
            id: 148
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 4
            points: 5
            pointsupg: 7
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Dalan Oberos (StarViper)"
            canonical_name: 'Dalan Oberos'.canonicalize()
            id: 149
            unique: true
            xws: "dalanoberos-starviperclassattackplatform"
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 4
            points: 5
            pointsupg: 10
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Modification"
            ]
        }
        {
            name: "Black Sun Assassin"
            id: 150
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 3
            points: 5
            pointsupg: 6
            slots: [
                "Tech"
            ]
        }
        {
            name: "Black Sun Enforcer"
            id: 151
            faction: "Scum and Villainy"
            ship: "StarViper"
            skill: 2
            points: 5
            pointsupg: 6
            slots: [
                "Tech"
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
            points: 7
            pointsupg: 20
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Bossk"
            id: 153
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666"
            skill: 4
            points: 7
            pointsupg: 22
            keyword: ["Bounty Hunter"]
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
            points: 6
            pointsupg: 16
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Trandoshan Slaver"
            id: 155
            faction: "Scum and Villainy"
            ship: "YV-666"
            skill: 2
            points: 6
            pointsupg: 6
            slots: [
                "Cannon"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "N'dru Suhlak"
            id: 156
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95 Headhunter"
            skill: 4
            points: 2
            pointsupg: 0
            slots: [
            ]
        }
        {
            name: "Kaa'to Leeachos"
            id: 157
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95 Headhunter"
            skill: 3
            points: 3
            pointsupg: 8
            keyword: ["Bounty Hunter"]
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
            points: 3
            pointsupg: 4
            slots: [
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
            points: 3
            pointsupg: 2
            slots: [
                "Illicit"
            ]
        }
        {
            name: "Nashtah Pup"
            id: 160
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95 Headhunter"
            skill: "*"
            points: 1
            pointsupg: 0
            slots: [
            ]
            restrictions: [
                ["Unique", "Hound's Tooth"]
            ]
            restriction_func: (ship) ->
                builder = ship.builder
                for t, things of builder.uniques_in_use
                    if t != 'Slot'
                        if 'houndstooth' in (thing.canonical_name.getXWSBaseName() for thing in things)
                            for shiplist in ship.builder.ships
                                for upgrade in shiplist.upgrades
                                    if upgrade.data? and ship.pilot?
                                        if upgrade.data.name == "Hound's Tooth"
                                            ship.pilot.skill = shiplist.pilot.skill
                                            break
                            return true 
                false

        }
        {
            name: "Major Vynder"
            id: 161
            unique: true
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 4
            points: 6
            pointsupg: 25
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
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
            points: 4
            pointsupg: 11
            slots: [
                "Talent"
                "Sensor"
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
            points: 4
            pointsupg: 9
            slots: [
                "Talent"
                "Sensor"
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
            points: 4
            pointsupg: 7
            slots: [
                "Sensor"
                "Cannon"
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
            points: 6
            pointsupg: 22
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
            points: 5
            pointsupg: 14
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
            points: 6
            pointsupg: 20
            slots: [
                "Sensor"
                "Cannon"
                "Cannon"
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
            points: 5
            pointsupg: 8
            slots: [
                "Sensor"
                "Cannon"
                "Modification"
            ]
        }
        {
            name: "Grand Inquisitor"
            id: 169
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 5
            points: 6
            pointsupg: 17
            force: 2
            keyword: ["Dark Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
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
            points: 5
            pointsupg: 11
            force: 2
            keyword: ["Dark Side"]
            slots: [
                "Force"
                "Talent"
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
            points: 4
            pointsupg: 5
            force: 1
            keyword: ["Dark Side"]
            slots: [
                "Force"
                "Sensor"
            ]
        }
        {
            name: "Baron of the Empire"
            id: 172
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 3
            points: 4
            pointsupg: 2
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
            keyword: ["Dark Side","Sith"]
            points: 8
            pointsupg: 22
            force: 3
            slots: [
                "Force"
                "Force"
                "Tech"
                "Sensor"
                "Missile"
                "Modification"
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
            points: 5
            pointsupg: 18
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
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
            points: 4
            pointsupg: 11
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
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
            points: 3
            pointsupg: 6
            slots: [
                "Talent"
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
            points: 3
            pointsupg: 2
            slots: [
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
            points: 3
            pointsupg: 4
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
            points: 6
            pointsupg: 12
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Turr Phennir"
            id: 180
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 4
            points: 4
            pointsupg: 9
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Saber Squadron Ace"
            id: 181
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 4
            points: 4
            pointsupg: 7
            slots: [
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Alpha Squadron Pilot"
            id: 182
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 1
            points: 3
            pointsupg: 2
            slots: [
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Major Vermeil"
            id: 183
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Reaper"
            skill: 4
            points: 5
            pointsupg: 8
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
            points: 5
            pointsupg: 9
            slots: [
                "Talent"
                "Crew"
                "Modification"
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
            points: 5
            pointsupg: 14
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
            points: 5
            pointsupg: 8
            slots: [
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
            points: 5
            pointsupg: 19
            slots: [
                "Talent"
                "Turret"
                "Missile"
                "Missile"
                "Gunner"
                "Modification"
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
            points: 4
            pointsupg: 13
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
            points: 4
            pointsupg: 12
            slots: [
                "Talent"
                "Turret"
                "Missile"
                "Gunner"
            ]
        }
        {
            name: "Sienar Specialist"
            id: 190
            faction: "Galactic Empire"
            ship: "TIE Aggressor"
            skill: 2
            points: 4
            pointsupg: 8
            slots: [
                "Turret"
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
            points: 7
            pointsupg: 25
            slots: [
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Modification"
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
            points: 6
            pointsupg: 20
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
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
            points: 5
            pointsupg: 6
            slots: [
                "Sensor"
                "Torpedo"
                "Missile"
                "Gunner"
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
            points: 8
            pointsupg: 10
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Countess Ryad"
            id: 195
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 4
            points: 8
            pointsupg: 12
            slots: [
                "Talent"
                "Sensor"
                "Sensor"
                "Cannon"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Rexler Brath"
            id: 196
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 5
            points: 8
            pointsupg: 13
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Onyx Squadron Ace"
            id: 197
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 4
            points: 7
            pointsupg: 6
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Delta Squadron Pilot"
            id: 198
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 1
            points: 7
            pointsupg: 4
            slots: [
                "Sensor"
                "Cannon"
                "Configuration"
            ]
        }
        {
            name: '"Whisper"'
            id: 199
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Phantom"
            skill: 5
            points: 7
            pointsupg: 15
            slots: [
                "Talent"
                "Sensor"
                "Gunner"
                "Modification"
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
            points: 6
            pointsupg: 11
            slots: [
                "Talent"
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
            points: 6
            pointsupg: 9
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
            points: 5
            pointsupg: 6
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
            points: 5
            pointsupg: 10
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
            points: 5
            pointsupg: 20
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
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Talent"
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
            points: 4
            pointsupg: 11
            slots: [
                "Torpedo"
                "Torpedo"
                "Missile"
                "Gunner"
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
            points: 4
            pointsupg: 10
            slots: [
                "Torpedo"
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
            points: 3
            pointsupg: 4
            slots: [
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
            points: 5
            pointsupg: 15
            slots: [
                "Talent"
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
            points: 4
            pointsupg: 11
            slots: [
                "Talent"
                "Gunner"
                "Device"
                "Modification"
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
            points: 5
            pointsupg: 10
            slots: [
                "Talent"
                "Talent"
                "Gunner"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Black Squadron Scout"
            id: 212
            faction: "Galactic Empire"
            ship: "TIE Striker"
            skill: 3
            points: 4
            pointsupg: 5
            slots: [
                "Talent"
                "Gunner"
                "Device"
            ]
        }
        {
            name: "Planetary Sentinel"
            id: 213
            faction: "Galactic Empire"
            ship: "TIE Striker"
            skill: 1
            points: 4
            pointsupg: 4
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
            points: 9
            pointsupg: 35
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
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
            points: 8
            pointsupg: 25
            slots: [
                "Talent"
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
            points: 8
            pointsupg: 22
            slots: [
                "Torpedo"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
            ]
        }
        {
            name: '"Howlrunner"'
            id: 217
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 5
            points: 4
            pointsupg: 6
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Modification"
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
            points: 4
            pointsupg: 8
            slots: [
                "Talent"
                "Talent"
                "Cannon"
                "Torpedo"
                "Missile"
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
            points: 3
            pointsupg: 3
            slots: [
                "Talent"
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
            points: 3
            pointsupg: 3
            slots: [
                "Talent"
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
            recurring: 1
            charge: 1
            points: 3
            pointsupg: 4
            slots: [
                "Talent"
                "Talent"
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
            points: 3
            pointsupg: 4
            slots: [
                "Talent"
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
            points: 3
            pointsupg: 3
            slots: [
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Seyn Marana"
            id: 224
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 4
            points: 3
            pointsupg: 3
            slots: [
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Valen Rudor"
            id: 225
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 3
            points: 3
            pointsupg: 8
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
            points: 2
            pointsupg: 0
            slots: [
            ]
        }
        {
            name: "Black Squadron Ace"
            id: 227
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 3
            points: 3
            pointsupg: 6
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
            points: 2
            pointsupg: 0
            slots: [
            ]
        }
        {
            name: "Academy Pilot"
            id: 229
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 1
            points: 3
            pointsupg: 3
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
            points: 3
            pointsupg: 4
            slots: [
                "Device"
                "Illicit"
            ]
        }
        {
            name: "Poe Dameron"
            id: 231
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 6
            points: 7
            pointsupg: 25
            charge: 1
            recurring: 1
            slots: [
                "Talent"
                "Astromech"
                "Tech"
                "Torpedo"
                "Modification"
                "Modification"
                "Configuration"
                "Title"
                "HardpointShip"
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
            points: 4
            pointsupg: 15
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
                "Modification"
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
            points: 3
            pointsupg: 3
            slots: [
                "Talent"
                "Tech"
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
            points: 3
            pointsupg: 9
            slots: [
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
            keyword: ["Dark Side"]
            points: 8
            pointsupg: 16
            applies_condition: '''I'll Show You the Dark Side'''.canonicalize()
            slots: [
                "Force"
                "Tech"
                "Torpedo"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: '"Blackout"'
            id: 237
            unique: true
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 5
            points: 6
            pointsupg: 11
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Torpedo"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Lieutenant Dormitz"
            id: 238
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 2
            points: 9
            pointsupg: 20
            slots: [
                "Sensor"
                "Sensor"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
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
            points: 5
            pointsupg: 16
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Modification"
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
            recurring: 1
            points: 5
            pointsupg: 12
            slots: [
                "Talent"
                "Talent"
                "Talent"
                "Torpedo"
                "Tech"
                "Modification"
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
            points: 4
            pointsupg: 12
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Missile"
                "Gunner"
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
            recurring: 1
            points: 6
            pointsupg: 20
            slots: [
                "Talent"
                "Talent"
                "Tech"
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
            keyword: ["Light Side"]
            skill: 5
            points: 8
            pointsupg: 25
            force: 2
            slots: [
                "Force"
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
            name: "Han Solo (Resistance)"
            id: 245
            unique: true
            xws: "hansolo-scavengedyt1300"
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 6
            points: 6
            pointsupg: 15
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
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
            points: 7
            pointsupg: 18
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
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
            recurring: 1
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Mining Guild Surveyor"
            id: 248
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 2
            points: 3
            pointsupg: 0
            slots: [

            ]
        }
        {
            name: "Ahhav"
            id: 249
            unique: true
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 3
            points: 2
            pointsupg: 0
            slots: [

            ]
        }
        {
            name: "Finch Dallow"
            id: 250
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 4
            points: 6
            pointsupg: 14
            slots: [
                "Sensor"
                "Tech"
                "Missile"
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
            points: 7
            pointsupg: 13
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
            points: 5
            pointsupg: 13
            slots: [
                "Talent"
                "Astromech"
                "Tech"
                "Cannon"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Joph Seastriker"
            id: 253
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 3
            points: 5
            pointsupg: 12
            slots: [
                "Talent"
                "Astromech"
                "Tech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Lieutenant Bastian"
            id: 254
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 2
            points: 5
            pointsupg: 10
            slots: [
                "Astromech"
                "Tech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Jaycris Tubbs"
            id: 255
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 1
            points: 4
            pointsupg: 8
            slots: [
                "Astromech"
                "Tech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Black Squadron Ace (T-70)"
            id: 256
            faction: "Resistance"
            xws: "blacksquadronace-t70xwing"
            ship: "T-70 X-Wing"
            skill: 4
            points: 5
            pointsupg: 10
            slots: [
                "Talent"
                "Astromech"
                "Tech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Red Squadron Expert"
            id: 257
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 3
            points: 5
            pointsupg: 2
            slots: [
                "Talent"
                "Astromech"
                "Tech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Blue Squadron Rookie"
            id: 258
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 1
            points: 5
            pointsupg: 4
            slots: [
                "Astromech"
                "Tech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Zeta Squadron Survivor"
            id: 259
            faction: "First Order"
            ship: "TIE/SF Fighter"
            skill: 2
            points: 4
            pointsupg: 4
            slots: [
                "Talent"
                "Tech"
                "Gunner"
                "Sensor"
            ]
        }
        {
            name: "Cobalt Squadron Bomber"
            id: 260
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 1
            points: 6
            pointsupg: 11
            slots: [
                "Sensor"
                "Tech"
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
            points: 3
            pointsupg: 4
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
            points: 3
            pointsupg: 3
            slots: [
                "Talent"
                "Tech"
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
            points: 3
            pointsupg: 3
            slots: [
                "Talent"
                "Tech"
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
            points: 3
            pointsupg: 8
            slots: [
                "Talent"
                "Talent"
                "Tech" 
                "Cannon"
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
            points: 2
            pointsupg: 0
            slots: [ 
            ]
        }
        {
            name: "Commander Malarus"
            id: 266
            unique: true
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 5
            points: 3
            pointsupg: 4
            charge: 2
            slots: [
                "Talent"
                "Talent"
                "Missile"
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
            points: 3
            pointsupg: 4
            slots: [
                "Talent"
                "Tech"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Zeta Squadron Pilot"
            id: 268
            faction: "First Order"
            ship: "TIE/FO Fighter"
            skill: 2
            points: 3
            pointsupg: 3
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
            points: 3
            pointsupg: 2
            slots: [
                "Tech"
                "Tech"
            ]
        }
        {
            name: "Greer Sonnel"
            id: 270
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 4
            points: 4
            pointsupg: 7
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Zari Bangel"
            id: 271
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 3
            points: 5
            pointsupg: 11
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
                "Tech"
                "Modification"
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
            keyword: ["Dark Side","Sith"]
            points: 8
            pointsupg: 20
            slots: [
                "Force"
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
            points: 6
            pointsupg: 10
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Missile"
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
            points: 4
            pointsupg: 7
            keyword: ["Jedi","Light Side"]
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
            points: 3
            pointsupg: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Missile"
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
            points: 4
            pointsupg: 9
            keyword: ["Jedi","Light Side"]
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
            points: 4
            pointsupg: 3
            keyword: ["Jedi","Light Side"]
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
            points: 5
            pointsupg: 10
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Missile"
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
            points: 2
            pointsupg: 0
            keyword: ["Droid"]
            slots: [
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
            points: 6
            pointsupg: 18
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
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
            points: 7
            pointsupg: 14
            charge: 1
            recurring: 1
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
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
            points: 7
            pointsupg: 12
            charge: 2
            slots: [
                "Talent"
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
            points: 6
            pointsupg: 10
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: '"Recoil"'
            id: 284
            unique: true
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 4
            points: 5
            pointsupg: 7
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Omega Squadron Expert"
            id: 285
            faction: "First Order"
            ship: "TIE/SF Fighter"
            skill: 3
            points: 4
            pointsupg: 10
            slots: [
                "Tech"
                "Missile"
                "Gunner"
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
            points: 5
            pointsupg: 5
            slots: [
                "Tech"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "First Order Test Pilot"
            id: 287
            faction: "First Order"
            ship: "TIE/VN Silencer"
            skill: 4
            points: 5
            pointsupg: 5
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Starkiller Base Pilot"
            id: 288
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 2
            points: 7
            pointsupg: 8
            slots: [
                "Tech"
                "Tech"
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
            recurring: 1
            points: 8
            pointsupg: 15
            slots: [
                "Tech"
                "Tech"
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
            points: 3
            pointsupg: 6
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Tech"
            ]
        }
        {
            name: "Cat"
            id: 291
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 1
            points: 5
            pointsupg: 7
            slots: [
                "Talent"
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
            points: 5
            pointsupg: 9
            slots: [
                "Sensor"
                "Tech"
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
            points: 6
            pointsupg: 14
            slots: [
                "Sensor"
                "Tech"
                "Cannon"
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
            points: 6
            pointsupg: 14
            slots: [
                "Sensor"
                "Torpedo"
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
            points: 6
            pointsupg: 10
            slots: [
                "Talent"
                "Missile"
                "Gunner"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Jessika Pava"
            id: 296
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 3
            points: 6
            pointsupg: 16
            charge: 1
            recurring: 1
            slots: [
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Temmin Wexley"
            id: 297
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 4
            points: 5
            pointsupg: 13
            slots: [
                "Talent"
                "Tech"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Nien Nunb"
            id: 298
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 5
            points: 6
            pointsupg: 13
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Ello Asty"
            id: 299
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 5
            points: 6
            pointsupg: 14
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Green Squadron Expert"
            id: 300
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 3
            points: 4
            pointsupg: 2
            slots: [
                "Talent"
                "Talent"
                "Tech"
            ]
        }
        {
            name: "Blue Squadron Recruit"
            id: 301
            faction: "Resistance"
            ship: "RZ-2 A-Wing"
            skill: 1
            points: 4
            pointsupg: 4
            slots: [
                "Talent"
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
            points: 3
            pointsupg: 9
            slots: [
                "Talent"
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
            pointsupg: 6
            charge: 1
            recurring: 1
            points: 3
            slots: [
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Mining Guild Sentry"
            id: 304
            faction: "Scum and Villainy"
            ship: "Mining Guild TIE Fighter"
            skill: 1
            points: 3
            pointsupg: 0
            slots: [
                
            ]
        }
        {
            name: "General Grievous"
            id: 305
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            unique: true
            skill: 4
            points: 5
            pointsupg: 12
            slots: [
                "Talent"
                "Missile"
                "Modification"
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
            points: 4
            pointsupg: 7
            slots: [
                "Talent"
                "Tactical Relay"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Feethan Ottraw Autopilot"
            id: 307
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            skill: 1
            points: 4
            pointsupg: 5
            keyword: ["Droid"]
            slots: [
                "Tactical Relay"
                "Modification"
            ]
        }
        {
            name: "Captain Sear"
            id: 308
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            unique: true
            skill: 2
            points: 5
            pointsupg: 15
            slots: [
                "Tactical Relay"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Precise Hunter"
            id: 309
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            points: 3
            pointsupg: 10
            max_per_squad: 3
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Haor Chall Prototype"
            id: 310
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 3
            pointsupg: 8
            max_per_squad: 2
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Configuration"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "DFS-081"
            id: 311
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            points: 3
            pointsupg: 16
            unique: true
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Configuration"
                "Modification"
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
            points: 5
            pointsupg: 12
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Talent"
                "Astromech"
                "Missile"
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
            points: 4
            pointsupg: 8
            keyword: ["Jedi","Light Side"]
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
            points: 4
            pointsupg: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
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
            points: 5
            pointsupg: 16
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Talent"
                "Missile"
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
            points: 5
            pointsupg: 16
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Modification"
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
            points: 4
            pointsupg: 12
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
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
            points: 4
            pointsupg: 12
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
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
            points: 4
            pointsupg: 12
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
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
            points: 4
            pointsupg: 10
            keyword: ["Clone"]
            slots: [
                "Missile"
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
            points: 4
            pointsupg: 10
            keyword: ["Clone"]
            slots: [
                "Missile"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Anakin Skywalker (N-1 Starfighter)"
            canonical_name: 'Anakin Skywalker'.canonicalize()
            xws: "anakinskywalker-nabooroyaln1starfighter"
            id: 322
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 4
            force: 1
            points: 5
            pointsupg: 20
            keyword: ["Light Side"]
            slots: [
                "Talent"
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Bravo Flight Officer"
            id: 323
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 2
            points: 4
            pointsupg: 8
            slots: [
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Techno Union Bomber"
            id: 324
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 1
            points: 3
            pointsupg: 6
            keyword: ["Droid"]
            slots: [
                "Torpedo"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Bombardment Drone"
            id: 325
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 3
            max_per_squad: 3
            keyword: ["Droid"]
            points: 3
            pointsupg: 8
            slots: [
                "Device"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "DBS-404"
            id: 326
            unique: true
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 4
            points: 4
            pointsupg: 10
            keyword: ["Droid"]
            slots: [
                "Torpedo"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Separatist Bomber"
            id: 327
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 3
            points: 3
            pointsupg: 4
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "DBS-32C"
            id: 328
            unique: true
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 3
            points: 4
            pointsupg: 16
            keyword: ["Droid"]
            slots: [
                "Sensor"
                "Tactical Relay"
                "Modification"
                "Configuration"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Barrel Roll"
                    "R-> Lock"
                    "R-Jam"
                ]
        }
        {
            name: "Baktoid Prototype"
            id: 329
            max_per_squad: 2
            faction: "Separatist Alliance"
            ship: "Hyena-Class Droid Bomber"
            skill: 1
            points: 3
            pointsupg: 9
            keyword: ["Droid"]
            slots: [
                "Sensor"
                "Missile"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Naboo Handmaiden"
            id: 330
            max_per_squad: 2
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 1
            points: 3
            pointsupg: 10
            applies_condition: '''Decoyed'''.canonicalize()
            slots: [
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Dineé Ellberger"
            id: 331
            xws: "dineeellberger"
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 3
            points: 3
            pointsupg: 9
            slots: [
                "Talent"
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Padmé Amidala"
            id: 332
            xws: "padmeamidala"
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 4
            points: 5
            pointsupg: 22
            slots: [
                "Talent"
                "Sensor"
                "Astromech"
                "Torpedo"
            ]
        }
        {
            name: "Ric Olié"
            id: 333
            xws: "ricolie"
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 5
            points: 5
            pointsupg: 15
            slots: [
                "Talent"
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
            keyword: ["Dark Side","Sith"]
            points: 8
            pointsupg: 24
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
            name: "0-66"
            id: 335
            unique: true
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 3
            points: 6
            pointsupg: 11
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Cannon"
                "Torpedo"
                "Crew"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Dark Courier"
            id: 336
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 2
            points: 6
            pointsupg: 6
            slots: [
                "Cannon"
                "Torpedo"
                "Device"
                "Modification"
            ]
        }
        {
            name: "DFS-311"
            id: 337
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 3
            pointsupg: 12
            unique: true
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: '"Odd Ball" (ARC-170)'
            id: 338
            xws: "oddball-arc170starfighter"
            canonical_name: '"Odd Ball"'.canonicalize()
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 5
            points: 6
            pointsupg: 22
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Torpedo"
                "Gunner"
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
            points: 5
            pointsupg: 14
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Gunner"
                "Gunner"
                "Astromech"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Squad Seven Veteran"
            id: 340
            faction: "Galactic Republic"
            ship: "ARC-170"
            skill: 3
            points: 5
            pointsupg: 10
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Gunner"
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
            points: 5
            pointsupg: 8
            keyword: ["Clone"]
            slots: [
                "Torpedo"
                "Gunner"
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
            points: 5
            pointsupg: 12
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Gunner"
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
            points: 3
            pointsupg: 4
            keyword: ["Droid"]
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
            skill: 3
            points: 4
            pointsupg: 4
            slots: [
                "Talent"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Rose Tico"
            id: 345
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 3
            points: 3
            pointsupg: 8
            slots: [
                "Talent"
                "Tech"
                "Crew"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Logistics Division Pilot"
            id: 346
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 1
            points: 4
            pointsupg: 6
            slots: [
                "Cannon"
                "Crew"
                "Astromech"
                "Astromech"
            ]
        }
        {
            name: "Pammich Nerro Goode"
            id: 347
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 3
            points: 4
            pointsupg: 12
            slots: [
                "Tech"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Vi Moradi"
            id: 348
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 1
            points: 3
            pointsupg: 6
            applies_condition: '''Compromising Intel'''.canonicalize()
            slots: [
                "Tech"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "BB-8"
            id: 349
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 3
            points: 3
            pointsupg: 8
            keyword: ["Droid"]
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Finn"
            id: 350
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 2
            points: 4
            pointsupg: 15
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Cova Nell"
            id: 351
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 4
            points: 5
            pointsupg: 20
            slots: [
                "Talent"
                "Tech"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Nodin Chavdri"
            id: 352
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 2
            points: 5
            pointsupg: 16
            slots: [
                "Tech"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Crew"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Stalgasin Hive Guard"
            id: 353
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 3
            points: 4
            pointsupg: 4
            slots: [
                "Talent"
            ]
        }
        {
            name: "Petranaki Arena Ace"
            id: 354
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 4
            points: 4
            pointsupg: 6
            slots: [
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Gorgol"
            unique: true
            id: 355
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 2
            points: 4
            pointsupg: 9
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Chertek"
            unique: true
            id: 356
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 4
            points: 5
            pointsupg: 15
            slots: [
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Sun Fac"
            unique: true
            id: 357
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 6
            points: 6
            pointsupg: 18
            slots: [
                "Talent"
                "Talent"
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Berwer Kret"
            unique: true
            id: 358
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 5
            points: 4
            pointsupg: 7
            slots: [
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Anakin Skywalker (Y-Wing)"
            canonical_name: 'Anakin Skywalker'.canonicalize()
            xws: "anakinskywalker-btlbywing"
            unique: true
            id: 359
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 6
            force: 3
            points: 6
            pointsupg: 28
            keyword: ["Jedi", "Light Side"]
            slots: [
                "Force"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Shadow Squadron Veteran"
            id: 360
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 3
            points: 4
            pointsupg: 4
            keyword: ["Clone"]
            slots: [
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Red Squadron Bomber"
            id: 361
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 2
            points: 4
            pointsupg: 6
            keyword: ["Clone"]
            slots: [
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
            ]
        }
        {
            name: "R2-D2"
            id: 362
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 2
            points: 4
            pointsupg: 14
            keyword: ["Droid"]
            slots: [
                "Sensor"
                "Turret"
                "Torpedo"
                "Gunner"
                "Crew"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: '"Goji"'
            id: 363
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 2
            points: 4
            pointsupg: 12
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Turret"
                "Gunner"
                "Astromech"
                "Device"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: '"Broadside"'
            id: 364
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 3
            points: 5
            pointsupg: 16
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: '"Matchstick"'
            id: 365
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 4
            points: 5
            pointsupg: 18
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: '"Odd Ball" (Y-Wing)'
            xws: "oddball-btlbywing"
            id: 366
            unique: true
            canonical_name: '"Odd Ball"'.canonicalize()
            faction: "Galactic Republic"
            ship: "BTL-B Y-Wing"
            skill: 5
            points: 5
            pointsupg: 18
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Republic Judiciary"
            id: 367
            faction: "Galactic Republic"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 0
            pointsupg: 99
            slots: [
                "Command"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "Alderaanian Guard"
            id: 368
            faction: "Rebel Alliance"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 0
            pointsupg: 99
            slots: [
                "Command"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Team"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "Outer Rim Patrol"
            id: 369
            faction: "Galactic Empire"
            ship: "Raider-class Corvette"
            skill: 8
            engagement: 0
            points: 0
            pointsupg: 99
            slots: [
                "Command"
                "Torpedo"
                "Missile"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Team"
                "Team"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "First Order Collaborators"
            id: 370
            faction: "First Order"
            ship: "Raider-class Corvette"
            skill: 8
            engagement: 0
            points: 0
            pointsupg: 99
            slots: [
                "Command"
                "Torpedo"
                "Missile"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Team"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "Echo Base Evacuees"
            id: 371
            faction: "Rebel Alliance"
            ship: "GR-75 Medium Transport"
            skill: 7
            engagement: 1
            points: 0
            pointsupg: 99
            slots: [
                "Command"
                "Hardpoint"
                "Turret"
                "Crew"
                "Crew"
                "Team"
                "Cargo"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "New Republic Volunteers"
            id: 372
            faction: "Resistance"
            ship: "GR-75 Medium Transport"
            skill: 7
            engagement: 1
            points: 0
            pointsupg: 99
            slots: [
                "Command"
                "Hardpoint"
                "Turret"
                "Crew"
                "Crew"
                "Team"
                "Cargo"
                "Cargo"
            ]
        }
        {
            name: "Outer Rim Garrison"
            id: 373
            faction: "Galactic Empire"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 0
            pointsupg: 99
            slots: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Cargo"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "First Order Sympathizers"
            id: 374
            faction: "First Order"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 0
            pointsupg: 99
            slots: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Cargo"
                "Cargo"
            ]
        }
        {
            name: "Separatist Privateers"
            id: 375
            faction: "Separatist Alliance"
            ship: "C-ROC Cruiser"
            skill: 7
            engagement: 1
            points: 0
            pointsupg: 99
            slots: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Tactical Relay"
                "Team"
                "Cargo"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Syndicate Smugglers"
            id: 376
            faction: "Scum and Villainy"
            ship: "C-ROC Cruiser"
            skill: 7
            engagement: 1
            points: 0
            pointsupg: 99
            slots: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Team"
                "Cargo"
                "Device"
                "Illicit"
                "Title"
                "Configuration"
            ]
        }
        {
            name: "Jarek Yeager"
            id: 377
            faction: "Resistance"
            unique: true
            ship: "Fireball"
            skill: 5
            points: 3
            pointsupg: 6
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Kazuda Xiono"
            id: 378
            faction: "Resistance"
            unique: true
            ship: "Fireball"
            skill: 4
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "R1-J5"
            id: 379
            faction: "Resistance"
            unique: true
            ship: "Fireball"
            skill: 1
            points: 2
            pointsupg: 0
            keyword: ["Droid"]
            slots: [
                
            ]
        }
        {
            name: "Colossus Station Mechanic"
            id: 380
            faction: "Resistance"
            ship: "Fireball"
            skill: 2
            points: 3
            pointsupg: 2
            slots: [
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Major Vonreg"
            id: 381
            faction: "First Order"
            unique: true
            skill: 6
            ship: "TIE/Ba Interceptor"
            points: 6
            pointsupg: 18
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Missile"
                "Modification"
                "Modification"
            ]
        }
        {
            name: '"Holo"'
            id: 382
            faction: "First Order"
            unique: true
            skill: 5
            ship: "TIE/Ba Interceptor"
            points: 6
            pointsupg: 12
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Modification"
                "Modification"
            ]
        }
        {
            name: '"Ember"'
            id: 383
            faction: "First Order"
            unique: true
            skill: 4
            ship: "TIE/Ba Interceptor"
            points: 4
            pointsupg: 7
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "First Order Provocateur"
            id: 384
            faction: "First Order"
            skill: 3
            ship: "TIE/Ba Interceptor"
            points: 5
            pointsupg: 3
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Captain Phasma"
            id: 385
            faction: "First Order"
            unique: true
            skill: 4
            ship: "TIE/SF Fighter"
            points: 4
            pointsupg: 14
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Missile"
                "Gunner"
                "Modification"
                "Modification"
            ]
        }
        {
            name: '"Rush"'
            id: 386
            faction: "First Order"
            unique: true
            skill: 2
            ship: "TIE/VN Silencer"
            points: 6
            pointsupg: 10
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Zizi Tlo"
            id: 387
            faction: "Resistance"
            unique: true
            skill: 5
            charge: 1
            recurring: 1
            ship: "RZ-2 A-Wing"
            points: 5
            pointsupg: 15
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Ronith Blario"
            id: 388
            faction: "Resistance"
            unique: true
            skill: 2
            ship: "RZ-2 A-Wing"
            points: 4
            pointsupg: 8
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Paige Tico"
            id: 389
            faction: "Resistance"
            unique: true
            skill: 5
            ship: "MG-100 StarFortress"
            points: 6
            pointsupg: 15
            charge: 1
            recurring: 1
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "K-2SO"
            id: 390
            faction: "Rebel Alliance"
            unique: true
            skill: 3
            ship: "U-Wing"
            points: 5
            pointsupg: 10
            keyword: ["Droid"]
            slots: [
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Gina Moonsong"
            id: 391
            faction: "Rebel Alliance"
            unique: true
            skill: 5
            ship: "B-Wing"
            points: 4
            pointsupg: 11
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Alexsandr Kallus"
            id: 392
            faction: "Rebel Alliance"
            unique: true
            skill: 4
            ship: "VCX-100"
            points: 8
            pointsupg: 16
            keyword: ["Spectre"]
            slots: [
                "Talent"
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
            name: "Leia Organa"
            id: 393
            faction: "Rebel Alliance"
            unique: true
            skill: 5
            ship: "YT-1300"
            keyword: ["Light Side"]
            points: 8
            pointsupg: 20
            force: 1
            slots: [
                "Force"
                "Missile"
                "Gunner"
                "Crew"
                "Crew"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Fifth Brother"
            id: 394
            faction: "Galactic Empire"
            unique: true
            skill: 4
            keyword: ["Dark Side"]
            ship: "TIE Advanced Prototype"
            points: 5
            pointsupg: 10
            force: 2
            slots: [
                "Force"
                "Talent"
                "Sensor"
                "Cannon"
            ]
        }
        {
            name: '"Vagabond"'
            id: 395
            faction: "Galactic Empire"
            unique: true
            skill: 2
            ship: "TIE Striker"
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Morna Kee"
            id: 396
            faction: "Galactic Empire"
            unique: true
            skill: 4
            ship: "VT-49 Decimator"
            points: 8
            pointsupg: 20
            charge: 3
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Lieutenant LeHuse"
            id: 397
            faction: "First Order"
            unique: true
            skill: 5
            ship: "TIE/SF Fighter"
            points: 5
            pointsupg: 18
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Missile"
                "Gunner"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Bossk (Z-95 Headhunter)"
            xws: "bossk-z95af4headhunter"
            canonical_name: 'Bossk'.canonicalize()
            id: 398
            faction: "Scum and Villainy"
            unique: true
            skill: 4
            ship: "Z-95 Headhunter"
            points: 3
            pointsupg: 8
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "G4R-GOR V/M"
            id: 399
            faction: "Scum and Villainy"
            unique: true
            skill: 0
            ship: "M3-A Interceptor"
            points: 4
            pointsupg: 11
            keyword: ["Droid"]
            slots: [
                "Modification"
                "HardpointShip"
            ]
        }
        {
            name: "Nom Lumb"
            id: 400
            faction: "Scum and Villainy"
            unique: true
            skill: 1
            ship: "JumpMaster 5000"
            points: 5
            pointsupg: 11
            keyword: ["Bounty Hunter"]
            slots: [
                "Torpedo"
                "Cannon"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "First Order Courier"
            id: 401
            faction: "First Order"
            skill: 2
            ship: "Xi-class Light Shuttle"
            points: 4
            pointsupg: 10
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Agent Terex"
            id: 402
            faction: "First Order"
            unique: true
            skill: 3
            ship: "Xi-class Light Shuttle"
            points: 5
            pointsupg: 20
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Crew"
                "Illicit"
                "Illicit"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Gideon Hask (Xi Shuttle)"
            canonical_name: "Gideon Hask".canonicalize()
            xws: "gideonhask-xiclasslightshuttle"
            id: 403
            faction: "First Order"
            unique: true
            skill: 4
            ship: "Xi-class Light Shuttle"
            points: 4
            pointsupg: 15
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Commander Malarus (Xi Shuttle)"
            canonical_name: "Commander Malarus".canonicalize()
            xws: "commandermalarus-xiclasslightshuttle"
            id: 404
            faction: "First Order"
            unique: true
            skill: 5
            ship: "Xi-class Light Shuttle"
            points: 5
            pointsupg: 15
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Baktoid Drone"
            id: 405
            faction: "Separatist Alliance"
            skill: 1
            ship: "HMP Droid Gunship"
            points: 5
            pointsupg: 10
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "TransGalMeg Control Link"
            id: 406
            faction: "Galactic Republic"
            skill: "*"
            ship: "Syliure-class Hyperspace Ring"
            points: 2
            slots: [
                "Hyperdrive"
            ]
        }
        {
            name: "Separatist Predator"
            id: 407
            faction: "Separatist Alliance"
            skill: 3
            ship: "HMP Droid Gunship"
            points: 5
            pointsupg: 8
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Geonosian Prototype"
            id: 408
            faction: "Separatist Alliance"
            skill: 2
            max_per_squad: 2
            ship: "HMP Droid Gunship"
            points: 5
            pointsupg: 18
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Missile"
                "Cannon"
                "Cannon"
                "Tactical Relay"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "DGS-047"
            id: 409
            faction: "Separatist Alliance"
            skill: 1
            unique: true
            ship: "HMP Droid Gunship"
            points: 5
            pointsupg: 14
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Missile"
                "Tactical Relay"
                "Crew"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "DGS-286"
            id: 410
            faction: "Separatist Alliance"
            skill: 3
            unique: true
            ship: "HMP Droid Gunship"
            points: 5
            pointsupg: 20
            keyword: ["Droid"]
            slots: [
                "Torpedo"
                "Torpedo"
                "Tactical Relay"
                "Crew"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Onderon Oppressor"
            id: 411
            faction: "Separatist Alliance"
            skill: 3
            max_per_squad: 2
            ship: "HMP Droid Gunship"
            points: 4
            pointsupg: 7
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Crew"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "212th Battalion Pilot"
            id: 412
            faction: "Galactic Republic"
            skill: 2
            charge: 2
            recurring: 1
            ship: "LAAT/i Gunship"
            points: 5
            pointsupg: 7
            keyword: ["Clone"]
            slots: [
                "Missile"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
            ]
        }
        {
            name: '"Hound"'
            id: 413
            faction: "Galactic Republic"
            skill: 2
            unique: true
            charge: 2
            recurring: 1
            ship: "LAAT/i Gunship"
            points: 5
            pointsupg: 14
            keyword: ["Clone"]
            slots: [
                "Sensor"
                "Missile"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
            ]
        }
        {
            name: '"Warthog"'
            id: 414
            faction: "Galactic Republic"
            skill: 3
            unique: true
            charge: 2
            recurring: 1
            ship: "LAAT/i Gunship"
            points: 6
            pointsupg: 18
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
            ]
        }
        {
            name: '"Hawk"'
            id: 415
            faction: "Galactic Republic"
            skill: 4
            charge: 2
            recurring: 1
            unique: true
            ship: "LAAT/i Gunship"
            points: 5
            pointsupg: 23
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
            ]
        }
        {
            name: "Carida Academy Cadet"
            id: 416
            faction: "Galactic Empire"
            skill: 1
            ship: "TIE/rb Heavy"
            points: 5
            pointsupg: 8
            slots: [
                "Cannon"
                "Cannon"
                "Configuration"
            ]
        }
        {
            name: "Onyx Squadron Sentry"
            id: 417
            faction: "Galactic Empire"
            skill: 3
            ship: "TIE/rb Heavy"
            points: 5
            pointsupg: 7
            slots: [
                "Cannon"
                "Cannon"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Lyttan Dree"
            id: 418
            faction: "Galactic Empire"
            skill: 3
            unique: true
            ship: "TIE/rb Heavy"
            points: 4
            pointsupg: 10
            slots: [
                "Sensor"
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: '"Rampage"'
            id: 419
            faction: "Galactic Empire"
            skill: 4
            unique: true
            ship: "TIE/rb Heavy"
            points: 5
            pointsupg: 14
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Fearsome Predator"
            id: 420
            faction: "Separatist Alliance"
            max_per_squad: 3
            skill: 3
            ship: "Droid Tri-Fighter"
            points: 5
            pointsupg: 16
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Configuration"
            ]
            applies_condition: '''Fearful Prey'''.canonicalize()
        }
        {
            name: "DIS-347"
            id: 421
            faction: "Separatist Alliance"
            skill: 3
            unique: true
            ship: "Droid Tri-Fighter"
            points: 4
            pointsupg: 12
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "DIS-T81"
            id: 422
            faction: "Separatist Alliance"
            skill: 4
            unique: true
            ship: "Droid Tri-Fighter"
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Phlac-Arphocc Prototype"
            id: 423
            faction: "Separatist Alliance"
            skill: 5
            max_per_squad: 2
            ship: "Droid Tri-Fighter"
            points: 5
            pointsupg: 14
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Colicoid Interceptor"
            id: 424
            faction: "Separatist Alliance"
            skill: 1
            ship: "Droid Tri-Fighter"
            points: 4
            pointsupg: 4
            slots: [
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Separatist Interceptor"
            id: 425
            faction: "Separatist Alliance"
            skill: 3
            ship: "Droid Tri-Fighter"
            points: 4
            pointsupg: 3
            slots: [
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Separatist Racketeer"
            id: 426
            faction: "Separatist Alliance"
            skill: 2
            ship: "Firespray-31"
            points: 7
            pointsupg: 7
            slots: [
                "Cannon"
                "Missile"
                "Device"
            ]
        }
        {
            name: "Boba Fett (Separatist)"
            canonical_name: 'Boba Fett'.canonicalize()
            xws: "bobafett-separatistalliance"
            id: 427
            faction: "Separatist Alliance"
            unique: true
            skill: 3
            ship: "Firespray-31"
            points: 7
            pointsupg: 16
            keyword: ["Bounty Hunter"]
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
            name: "Zam Wesell"
            id: 428
            faction: "Separatist Alliance"
            unique: true
            skill: 5
            charge: 4
            ship: "Firespray-31"
            points: 10
            pointsupg: 22
            keyword: ["Bounty Hunter"]
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
            applies_condition: ['''You'd Better Mean Business'''.canonicalize(),'You Should Thank Me'.canonicalize()]
        }
        {
            name: "Jango Fett"
            id: 429
            faction: "Separatist Alliance"
            skill: 6
            unique: true
            ship: "Firespray-31"
            points: 9
            pointsupg: 27
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Loyalist Volunteer"
            id: 430
            faction: "Galactic Republic"
            skill: 2
            ship: "Nimbus-class V-Wing"
            points: 3
            pointsupg: 4
            slots: [
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Shadow Squadron Escort"
            id: 431
            faction: "Galactic Republic"
            skill: 3
            ship: "Nimbus-class V-Wing"
            points: 3
            pointsupg: 3
            keyword: ["Clone"]
            slots: [
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Wilhuff Tarkin"
            id: 432
            faction: "Galactic Republic"
            skill: 3
            unique: true
            ship: "Nimbus-class V-Wing"
            points: 3
            pointsupg: 10
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: '"Klick"'
            id: 433
            faction: "Galactic Republic"
            skill: 4
            unique: true
            ship: "Nimbus-class V-Wing"
            points: 3
            pointsupg: 8
            charge: 1
            recurring: 1
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: '"Contrail"'
            id: 434
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Nimbus-class V-Wing"
            points: 2
            pointsupg: 0
            keyword: ["Clone"]
            slots: [
                "Configuration"
            ]
        }
        {
            name: '"Odd Ball" (V-Wing)'
            canonical_name: '"Oddball"'.canonicalize()
            xws: "oddball-nimbusclassvwing"
            id: 435
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Nimbus-class V-Wing"
            points: 4
            pointsupg: 12
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Jedi General"
            id: 436
            faction: "Galactic Republic"
            skill: 4
            ship: "Eta-2 Actis"
            points: 5
            pointsupg: 4
            force: 2
            keyword: ["Jedi", "Light Side"]
            slots: [
                "Force"
                "Cannon"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Yoda"
            id: 437
            faction: "Galactic Republic"
            skill: 3
            unique: true
            ship: "Eta-2 Actis"
            points: 5
            pointsupg: 12
            force: 3
            keyword: ["Jedi", "Light Side"]
            slots: [
                "Force"
                "Force"
                "Cannon"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Shaak Ti"
            id: 438
            faction: "Galactic Republic"
            skill: 4
            unique: true
            ship: "Eta-2 Actis"
            points: 5
            pointsupg: 8
            force: 2
            keyword: ["Jedi", "Light Side"]
            slots: [
                "Force"
                "Talent"
                "Cannon"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Aayla Secura"
            id: 439
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Eta-2 Actis"
            points: 5
            pointsupg: 10
            force: 2
            keyword: ["Jedi", "Light Side"]
            slots: [
                "Force"
                "Talent"
                "Cannon"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Obi-Wan Kenobi (Eta-2)"
            canonical_name: 'Obi-Wan Kenobi'.canonicalize()
            xws: "obiwankenobi-eta2actis"
            id: 440
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Eta-2 Actis"
            force: 3
            points: 5
            pointsupg: 10
            keyword: ["Jedi", "Light Side"]
            slots: [
                "Force"
                "Talent"
                "Cannon"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Anakin Skywalker (Eta-2)"
            canonical_name: 'Anakin Skywalker'.canonicalize()
            xws: "anakinskywalker-eta2actis"
            id: 441
            faction: "Galactic Republic"
            skill: 6
            unique: true
            force: 3
            ship: "Eta-2 Actis"
            points: 7
            pointsupg: 20
            keyword: ["Jedi", "Light Side", "Dark Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Cannon"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Poe Dameron (HoH)"
            canonical_name: 'Poe Dameron'.canonicalize()
            xws: 'poedameron-swz68'
            id: 442
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 6
            points: 6
            pointsupg: 12
            charge: 2
            recurring: 1
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Temmin Wexley (HoH)"
            canonical_name: 'Temmin Wexley'.canonicalize()
            xws: 'temminwexley-swz68'
            id: 443
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 4
            points: 6
            pointsupg: 14
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Merl Cobben"
            id: 444
            faction: "Resistance"
            unique: true
            skill: 1
            ship: "RZ-2 A-Wing"
            points: 3
            pointsupg: 7
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Suralinda Javos"
            id: 445
            faction: "Resistance"
            unique: true
            skill: 3
            ship: "RZ-2 A-Wing"
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Talent"
                "Cannon"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Wrobie Tyce"
            id: 446
            faction: "Resistance"
            unique: true
            skill: 4
            ship: "RZ-2 A-Wing"
            points: 4
            pointsupg: 7
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Seftin Vanik"
            id: 447
            faction: "Resistance"
            unique: true
            skill: 5
            ship: "RZ-2 A-Wing"
            points: 4
            pointsupg: 5
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Nimi Chireen"
            id: 448
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 2
            points: 5
            pointsupg: 10
            slots: [
                "Astromech"
                "Tech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "C'ai Threnalli"
            id: 449
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 4
            points: 4
            pointsupg: 7
            slots: [
                "Talent"
                "Astromech"
                "Tech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Hera Syndulla (B-Wing)"
            canonical_name: 'Hera Syndulla'.canonicalize()
            xws: "herasyndulla-asf01bwing"
            id: 450
            unique: true
            faction: "Rebel Alliance"
            keyword: ["Spectre"]
            ship: "B-Wing"
            skill: 6
            points: 6
            pointsupg: 27
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
                "Title"
            ]
        }
        {
            name: "Hera Syndulla (A-Wing)"
            canonical_name: 'Hera Syndulla'.canonicalize()
            xws: "herasyndulla-rz1awing"
            id: 451
            unique: true
            faction: "Rebel Alliance"
            ship: "A-Wing"
            keyword: ["Spectre"]
            skill: 6
            points: 5
            pointsupg: 14
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Missile"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Wedge Antilles (A-Wing)"
            canonical_name: 'Wedge Antilles'.canonicalize()
            xws: "wedgeantilles-rz1awing"
            id: 452
            unique: true
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 4
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Sabine Wren (A-Wing)"
            canonical_name: 'Sabine Wren'.canonicalize()
            xws: "sabinewren-rz1awing"
            id: 453
            unique: true
            faction: "Rebel Alliance"
            keyword: ["Mandalorian"]
            ship: "A-Wing"
            skill: 3
            points: 4
            pointsupg: 15
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Torpedo"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Vult Skerris"
            id: 454
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 5
            charge: 1
            recurring: -1
            points: 8
            pointsupg: 13
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"            
                "Configuration"
            ]
        }
        {
            name: "Ciena Ree"
            id: 455
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 6
            points: 5
            pointsupg: 10
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Gideon Hask (TIE Interceptor)"
            canonical_name: 'Gideon Hask'.canonicalize()
            xws: "gideonhask-tieininterceptor"
            id: 456
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 4
            points: 5
            pointsupg: 8
            slots: [
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Kanan Jarrus (HWK-290)"
            canonical_name: 'Kanan Jarrus'.canonicalize()
            xws: "kananjarrus-hwk290lightfreighter"
            id: 457
            unique: true
            faction: "Scum and Villainy"
            keyword: ["Light Side", "Jedi"]
            ship: "HWK-290"
            skill: 3
            force: 1
            points: 4
            pointsupg: 10
            slots: [
                "Force"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Leema Kai"
            id: 458
            unique: true
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 5
            points: 5
            pointsupg: 14
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
            ]
        }
        {
            name: "Arliz Hadrassian"
            id: 459
            unique: true
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 4
            points: 5
            pointsupg: 13
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
            ]
        }
        {
            name: "Padric"
            id: 460
            unique: true
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 3
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Derek Klivian"
            id: 461
            unique: true
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 3
            points: 2
            pointsupg: 0
            slots: [
                "Configuration"
            ]
        }
        {
            name: "Shara Bey (A-Wing)"
            canonical_name: 'Shara Bey'.canonicalize()
            xws: "sharabey-rz1awing"
            id: 462
            unique: true
            faction: "Rebel Alliance"
            ship: "A-Wing"
            skill: 4
            points: 3
            pointsupg: 7
            slots: [
                "Talent"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Ahsoka Tano (A-Wing)"
            canonical_name: 'Ahsoka Tano'.canonicalize()
            xws: "ahsokatano-rz1awing"
            id: 463
            unique: true
            faction: "Rebel Alliance"
            ship: "A-Wing"
            keyword: ["Light Side"]
            skill: 5
            force: 3
            points: 6
            pointsupg: 20
            slots: [
                "Force"
                "Force"
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Netrem Pollard"
            id: 464
            unique: true
            faction: "Rebel Alliance"
            ship: "B-Wing"
            skill: 3
            points: 4
            pointsupg: 11
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Commandant Goran"
            id: 465
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 4
            points: 4
            pointsupg: 8
            slots: [
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Nash Windrider"
            id: 466
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 2
            charge: 1
            recurring: 1
            points: 4
            pointsupg: 6
            slots: [
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Lieutenant Lorrir"
            id: 467
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 3
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Modification"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Vult Skerris (TIE Interceptor)"
            canonical_name: 'Vult Skerris'.canonicalize()
            xws: "vultskerris-tieininterceptor"
            id: 468
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Interceptor"
            skill: 5
            charge: 1
            recurring: -1
            points: 4
            pointsupg: 6
            slots: [
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Darth Vader (TIE Defender)"
            canonical_name: 'Darth Vader'.canonicalize()
            xws: "darthvader-tieddefender"
            id: 469
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            keyword: ["Dark Side", "Sith"]
            skill: 6
            force: 3
            points: 11
            pointsupg: 14
            slots: [
                "Force"
                "Tech"
                "Cannon"
                "Missile"            
                "Configuration"
            ]
        }
        {
            name: "Captain Dobbs"
            id: 470
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 3
            points: 7
            pointsupg: 12
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"            
                "Configuration"
            ]
        }
        {
            name: "Jinata Security Officer"
            id: 471
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 2
            points: 4
            pointsupg: 4
            slots: [
                "Turret"
                "Torpedo"
                "Missile"
                "Device"
            ]
        }
        {
            name: "Amaxine Warrior"
            id: 472
            faction: "Scum and Villainy"
            ship: "Y-Wing"
            skill: 3
            points: 4
            pointsupg: 6
            slots: [
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
            ]
        }
        {
            name: "Gamut Key"
            id: 473
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290"
            skill: 3
            charge: 2
            recurring: 1
            points: 3
            pointsupg: 8
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Tápusk"
            xws: "tapusk"
            id: 474
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290"
            skill: 5
            charge: 2
            recurring: 1
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Colicoid Destroyer"
            id: 475
            faction: "Separatist Alliance"
            ship: "Trident-class Assault Ship"
            skill: 8
            engagement: 0
            points: 85
            slots: [
                "Command"
                "Torpedo"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "Lawless Pirates"
            id: 476
            faction: "Scum and Villainy"
            ship: "Trident-class Assault Ship"
            skill: 8
            engagement: 0
            points: 85
            slots: [
                "Command"
                "Torpedo"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "Zorii Bliss"
            id: 477
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-Wing"
            skill: 5
            points: 5
            pointsupg: 20
            charge: 1
            recurring: 1
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Illicit"
                "Configuration"
            ]
        }
        {
            name: "Teza Nasz"
            id: 478
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-Wing"
            skill: 4
            points: 4
            pointsupg: 11
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Wilsa Teshlo"
            id: 479
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-Wing"
            skill: 4
            points: 3
            pointsupg: 8
            slots: [
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Device"
                "Modification"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Shasa Zaro"
            id: 480
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-Wing"
            skill: 3
            points: 3
            pointsupg: 7
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Lega Fossang"
            id: 481
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-Wing"
            skill: 3
            points: 4
            pointsupg: 13
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Missile"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Aftab Ackbar"
            id: 482
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-Wing"
            skill: 2
            points: 4
            pointsupg: 12
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Corus Kapellim"
            id: 483
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-Wing"
            skill: 1
            points: 4
            pointsupg: 14
            slots: [
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Illicit"
                "Configuration"
            ]
        }
        {
            name: "C'ai Threnalli (Y-Wing)"
            canonical_name: '''C'ai Threnalli'''.canonicalize()
            xws: "caithrenalli-btanr2ywing"
            id: 484
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-Wing"
            skill: 2
            points: 3
            pointsupg: 9
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "New Republic Patrol"
            id: 485
            faction: "Resistance"
            ship: "BTA-NR2 Y-Wing"
            skill: 3
            points: 4
            pointsupg: 7
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Kijimi Spice Runner"
            id: 486
            faction: "Resistance"
            ship: "BTA-NR2 Y-Wing"
            skill: 2
            points: 4
            pointsupg: 4
            slots: [
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Illicit"
                "Configuration"
            ]
        }
        {
            name: "Kylo Ren (TIE Whisper)"
            canonical_name: 'Kylo Ren'.canonicalize()
            xws: "kyloren-tiewiwhispermodifiedinterceptor"
            id: 487
            unique: true
            faction: "First Order"
            ship: "TIE/WI Whisper"
            keyword: ["Dark Side", "Light Side"]
            skill: 5
            force: 3
            points: 7
            pointsupg: 18
            slots: [
                "Force"
                "Force"
                "Talent"
                "Missile"
                "Tech"
                "Tech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: '"Wrath"'
            id: 488
            unique: true
            faction: "First Order"
            ship: "TIE/WI Whisper"
            skill: 5
            points: 5
            pointsupg: 15
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Tech"
                "Configuration"
            ]
        }
        {
            name: '"Nightfall"'
            id: 489
            unique: true
            faction: "First Order"
            ship: "TIE/WI Whisper"
            skill: 4
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Tech"
                "Tech"
                "Configuration"
            ]
        }
        {
            name: '"Whirlwind"'
            id: 490
            unique: true
            faction: "First Order"
            ship: "TIE/WI Whisper"
            skill: 3
            points: 4
            pointsupg: 12
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
                "Tech"
                "Configuration"
            ]
        }
        {
            name: "709th Legion Ace"
            id: 491
            faction: "First Order"
            ship: "TIE/WI Whisper"
            skill: 4
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Tech"
                "Configuration"
            ]
        }
        {
            name: "Red Fury Zealot"
            id: 492
            faction: "First Order"
            ship: "TIE/WI Whisper"
            skill: 2
            points: 4
            pointsupg: 3
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Tech"
                "Configuration"
            ]
        }
        {
            name: '"Breach"'
            id: 493
            unique: true
            faction: "First Order"
            ship: "TIE/Se Bomber"
            skill: 5
            points: 6
            pointsupg: 20
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Modification"
            ]
        }
        {
            name: '"Scorch" (TIE/Se Bomber)'
            canonical_name: '"Scorch"'.canonicalize()
            xws: "scorch-tiesebomber"
            id: 494
            unique: true
            faction: "First Order"
            ship: "TIE/Se Bomber"
            skill: 4
            points: 4
            pointsupg: 10
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: '"Dread"'
            id: 495
            unique: true
            faction: "First Order"
            ship: "TIE/Se Bomber"
            skill: 3
            points: 4
            pointsupg: 12
            slots: [
                "Tech"
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: '"Grudge"'
            id: 496
            unique: true
            faction: "First Order"
            ship: "TIE/Se Bomber"
            skill: 2
            points: 4
            pointsupg: 15
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "First Order Cadet"
            id: 497
            faction: "First Order"
            ship: "TIE/Se Bomber"
            skill: 3
            points: 4
            pointsupg: 7
            slots: [
                "Tech"
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Sienar-Jaemus Test Pilot"
            id: 498
            faction: "First Order"
            ship: "TIE/Se Bomber"
            skill: 2
            points: 4
            pointsupg: 8
            slots: [
                "Tech"
                "Tech"
                "Missile"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Bodica Venj"
            id: 499
            faction: "Rebel Alliance"
            unique: true
            ship: "Fang Fighter"
            skill: 4
            points: 6
            pointsupg: 15
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Modification"
            ]
        }
        {
            name: "Dirk Ullodin"
            id: 500
            faction: "Rebel Alliance"
            unique: true
            ship: "Fang Fighter"
            skill: 3
            points: 5
            pointsupg: 12
            keyword: ["Mandalorian"]
            slots: [
                "Torpedo"
                "Modification"
            ]
        }
        {
            name: "Fenn Rau (Rebel Fang)"
            id: 501
            faction: "Rebel Alliance"
            canonical_name: 'Fenn Rau'.canonicalize()
            xws: "fennrau-rebelfangfighter"
            unique: true
            ship: "Fang Fighter"
            skill: 6
            points: 6
            pointsupg: 12
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Modification"
            ]
        }
        {
            name: "Clan Wren Volunteer"
            id: 502
            faction: "Rebel Alliance"
            ship: "Fang Fighter"
            skill: 2
            points: 5
            pointsupg: 10
            max_per_squad: 2
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Moff Gideon"
            id: 503
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 2
            charge: 2
            recurring: 1
            points: 4
            pointsupg: 11
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "ISB Jingoist"
            id: 504
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 2
            points: 3
            pointsupg: 4
            max_per_squad: 2
            slots: [
                "Talent"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Mandalorian Royal Guard"
            id: 505
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 5
            pointsupg: 10
            max_per_squad: 2
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Bo-Katan Kryze"
            id: 506
            skip: true
        }
        {
            name: "Pre Vizsla"
            id: 507
            faction: "Separatist Alliance"
            ship: "Gauntlet Fighter"
            skill: 3
            points: 7
            pointsupg: 18
            charge: 2
            recurring: 1
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Death Watch Warrior"
            id: 508
            faction: "Separatist Alliance"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 7
            pointsupg: 10
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Bo-Katan Kryze"
            id: 509
            faction: "Separatist Alliance"
            ship: "Gauntlet Fighter"
            skill: 4
            points: 7
            pointsupg: 24
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Missile"
                "Missile"
                "Device"
                "Modification"
                "Modification"
                "Title"
                "Configuration"
            ]
        }
        {
            name: "Bo-Katan Kryze (Republic)"
            canonical_name: 'Bo-Katan Kryze'.canonicalize()
            id: 510
            faction: "Galactic Republic"
            ship: "Gauntlet Fighter"
            skill: 4
            points: 7
            pointsupg: 24
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Modification"
                "Modification"
                "Title"
                "Configuration"
            ]
        }
        {
            name: "Night Owl Liberator"
            id: 511
            faction: "Galactic Republic"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 7
            pointsupg: 16
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Maul"
            id: 512
            faction: "Scum and Villainy"
            ship: "Gauntlet Fighter"
            skill: 5
            points: 8
            pointsupg: 27
            unique: true
            force: 3
            keyword: ["Dark Side", "Sith"]
            slots: [
                "Force"
                "Talent"
                "Crew"
                "Gunner"
                "Missile"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Configuration"
            ]
        }
        {
            name: "Shadow Collective Operator"
            id: 513
            faction: "Scum and Villainy"
            ship: "Gauntlet Fighter"
            skill: 1
            points: 7
            pointsupg: 10
            slots: [
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Illicit"
                "Configuration"
            ]
        }
        {
            name: "Rook Kast"
            id: 514
            faction: "Scum and Villainy"
            ship: "Gauntlet Fighter"
            skill: 3
            points: 7
            pointsupg: 18
            unique: true
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Illicit"
                "Configuration"
            ]
        }
        {
            name: "Captain Hark"
            id: 515
            faction: "Galactic Empire"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 7
            pointsupg: 15
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Imperial Super Commando"
            id: 516
            faction: "Galactic Empire"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 7
            pointsupg: 10
            unique: true
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Gar Saxon"
            id: 517
            faction: "Galactic Empire"
            ship: "Gauntlet Fighter"
            skill: 3
            points: 8
            pointsupg: 20
            unique: true
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Torpedo"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Mandalorian Resistance Pilot"
            id: 518
            faction: "Rebel Alliance"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 7
            pointsupg: 10
            unique: true
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Chopper (Gauntlet Fighter)"
            canonical_name: 'Chopper'.canonicalize()
            xws: "chopper-gauntletfighter"
            id: 519
            faction: "Rebel Alliance"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 7
            pointsupg: 18
            unique: true
            slots: [
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
                "Title"
            ]
        }
        {
            name: "Ezra Bridger (Gauntlet Fighter)"
            canonical_name: 'Ezra Bridger'.canonicalize()
            xws: "ezrabridger-gauntletfighter"
            id: 520
            faction: "Rebel Alliance"
            ship: "Gauntlet Fighter"
            skill: 3
            force: 1
            points: 7
            pointsupg: 16
            unique: true
            slots: [
                "Force"
                "Talent"
                "Crew"
                "Gunner"
                "Missile"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Configuration"
            ]
        }
        {
            name: "Q9-0"
            id: 521
            faction: "Scum and Villainy"
            ship: "ST-70 Assault Ship"
            skill: 5
            points: 6
            pointsupg: 20
            unique: true
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Talent"
                "Crew"
                "Crew"
                "Cannon"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "The Mandalorian"
            id: 522
            faction: "Scum and Villainy"
            ship: "ST-70 Assault Ship"
            skill: 5
            points: 7
            pointsupg: 28
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Talent"
                "Crew"
                "Crew"
                "Cannon"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Guild Bounty Hunter"
            id: 523
            faction: "Scum and Villainy"
            ship: "ST-70 Assault Ship"
            skill: 3
            points: 6
            pointsupg: 14
            max_per_squad: 2
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Outer Rim Enforcer"
            id: 524
            faction: "Scum and Villainy"
            ship: "ST-70 Assault Ship"
            skill: 2
            points: 6
            pointsupg: 10
            keyword: ["Bounty Hunter", "Mandelorian"]
            slots: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Plo Koon (Delta-7b)"
            id: 525
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 5
            force: 2
            points: 7
            pointsupg: 12
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Missile"
                "Talent"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Saesee Tiin (Delta-7b)"
            canonical_name: 'Saesee Tiin'.canonicalize()
            id: 526
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 2
            points: 6
            pointsupg: 9
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Mace Windu (Delta-7b)"
            canonical_name: 'Mace Windu'.canonicalize()
            id: 527
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 3
            points: 6
            pointsupg: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Anakin Skywalker (Delta-7b)"
            canonical_name: 'Anakin Skywalker'.canonicalize()
            id: 528
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 6
            force: 3
            points: 8
            pointsupg: 15
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Missile"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Luminara Unduli (Delta-7b)"
            canonical_name: 'Luminara Unduli'.canonicalize()
            id: 529
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 2
            points: 6
            pointsupg: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Barriss Offee (Delta-7b)"
            canonical_name: 'Barriss Offee'.canonicalize()
            id: 530
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 1
            points: 5
            pointsupg: 10
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Missile"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Ahsoka Tano (Delta-7b)"
            canonical_name: 'Ahsoka Tano'.canonicalize()
            id: 531
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 3
            force: 2
            points: 6
            pointsupg: 10
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Jedi Knight (Delta-7b)"
            canonical_name: 'Jedi Knight'.canonicalize()
            id: 532
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 3
            force: 1
            points: 6
            pointsupg: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Obi-Wan Kenobi (Delta-7b)"
            canonical_name: 'Obi-Wan Kenobi'.canonicalize()
            id: 533
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 5
            force: 3
            points: 7
            pointsupg: 12
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Missile"
                "Astromech"
                "Modification"
            ]
        }
    ]

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
            points: 6
            charge: 2
        }
        {
            name: "R2-D2"
            id: 3
            unique: true
            slot: "Astromech"
            points: 8
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
            restrictions: [
                ["Base", "Small"]
            ]
            modifier_func: (stats) ->
                if stats.maneuvers[1]?
                    for turn in [0 ... stats.maneuvers[1].length]
                        if turn > 4
                            continue
                        if stats.maneuvers[1][turn] > 1
                            stats.maneuvers[1][turn]--
                        if stats.maneuvers[2][turn] > 1
                            stats.maneuvers[2][turn]--
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
            points: 0
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
            points: 6
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
            points: 4
            attack: 3
            range: """1-3"""
        }
        {
            name: "Admiral Sloane"
            id: 14
            slot: "Crew"
            points: 16
            unique: true
            faction: "Galactic Empire"
        }
        {
            name: "Agent Kallus"
            id: 15
            slot: "Crew"
            points: 5
            unique: true
            faction: "Galactic Empire"
            applies_condition: 'Hunted'.canonicalize()
        }
        {
            name: "Boba Fett"
            id: 16
            slot: "Crew"
            points: 2
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
            points: 7
            unique: true
            faction: "Rebel Alliance"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Cassian Andor"
            id: 19
            slot: "Crew"
            points: 5
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Cad Bane"
            id: 20
            slot: "Crew"
            points: 3
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Chewbacca"
            id: 21
            slot: "Crew"
            points: 3
            unique: true
            faction: "Rebel Alliance"
            charge: 2
            recurring: 1
        }
        {
            name: "Chewbacca (Scum)"
            id: 22
            slot: "Crew"
            xws: "chewbacca-crew"
            points: 3
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
            points: 4
            unique: true
            faction: "Galactic Empire"
            restrictions: [
                ["Action", "Coordinate"]
            ]
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
            restrictions: [
                ["Slot", "Crew"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Director Krennic"
            id: 28
            slot: "Crew"
            points: 4
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
            points: 12
            force: 1
            unique: true
            faction: "Galactic Empire"
            restrictions: [
                ["Slot", "Crew"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
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
            points: 5
            charge: 1
        }
        {
            name: "Grand Inquisitor"
            id: 33
            slot: "Crew"
            points: 13
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
            points: 4
            unique: true
            faction: "Galactic Empire"
            charge: 2
            recurring: 1
            restrictions: [
                ["Action", "Lock"]
            ]
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
            points: 3
            unique: true
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions

        }
        {
            name: "Informant"
            id: 37
            slot: "Crew"
            points: 4
            unique: true
            applies_condition: 'Listening Device'.canonicalize()
        }
        {
            name: "ISB Slicer"
            id: 38
            slot: "Crew"
            points: 1
            faction: "Galactic Empire"
        }
        {
            name: "Jabba the Hutt"
            id: 39
            slot: "Crew"
            points: 11
            unique: true
            faction: "Scum and Villainy"
            charge: 4
            restrictions: [
                ["Slot", "Crew"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Jyn Erso"
            id: 40
            slot: "Crew"
            points: 5
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
            points: 4
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
            points: 6
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Leia Organa"
            id: 46
            slot: "Crew"
            points: 7
            unique: true
            faction: "Rebel Alliance"
            charge: 3
            recurring: 1
        }
        {
            name: "Latts Razzi"
            id: 47
            slot: "Crew"
            points: 5
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Maul"
            id: 48
            slot: "Crew"
            points: 10
            unique: true
            keyword: ["Dark Side"]
            faction: ["Scum and Villainy", "Rebel Alliance"]
            force: 1
            restrictions: [
                ["orUnique", "Ezra Bridger"]
                ["Faction", "Scum and Villainy"]
            ]
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Minister Tua"
            id: 49
            slot: "Crew"
            points: 4
            unique: true
            faction: "Galactic Empire"
        }
        {
            name: "Moff Jerjerrod"
            id: 50
            slot: "Crew"
            points: 7
            unique: true
            faction: "Galactic Empire"
            charge: 2
            recurring: 1
            restrictions: [
                ["Action", "Coordinate"]
            ]
        }
        {
            name: "Magva Yarro"
            id: 51
            slot: "Crew"
            points: 5
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
                if stats.maneuvers[1]?
                    for s in (stats.maneuvers)
                        if s[1] > 1
                            s[1]--
                        if s[3] > 1
                            s[3]--
        }
        {
            name: "Novice Technician"
            id: 53
            slot: "Crew"
            points: 2
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
            canonical_name: 'R2-D2'.canonicalize()
            id: 56
            slot: "Crew"
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
            points: 9
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Seasoned Navigator"
            id: 59
            slot: "Crew"
            points: 7
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
            points: 3
            restrictions: [
                ["Action", "R-Coordinate"]
            ]
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
            faction: ["Scum and Villainy", "Galactic Empire"]
            restrictions: [
                ["orUnique", "Darth Vader"]
                ["Faction", "Scum and Villainy"]
            ]
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
            points: 2
            charge: 2
            applies_condition: 'Bomblet'.canonicalize()
            restrictions: [
                ["Slot", "Device"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Device"
            also_occupies_upgrades: [ "Device" ]
        }
        {
            name: "Conner Nets"
            id: 68
            slot: "Device"
            points: 3
            charge: 1
            applies_condition: 'Conner Net'.canonicalize()
        }
        {
            name: "Proton Bombs"
            id: 69
            slot: "Device"
            points: 4
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
            points: 1
        }
        {
            name: "Supernatural Reflexes"
            id: 74
            slot: "Force"
            points: 24
            restrictions: [
                ["Base", "Small"]
            ]
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
            points: 3
        }
        {
            name: "Bistan"
            id: 77
            slot: "Gunner"
            points: 8
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Bossk"
            id: 78
            slot: "Gunner"
            points: 6
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "BT-1"
            id: 79
            slot: "Gunner"
            points: 2
            unique: true
            faction: ["Scum and Villainy", "Galactic Empire"]
            restrictions: [
                ["orUnique", "Darth Vader"]
                ["Faction", "Scum and Villainy"]
            ]
        }
        {
            name: "Dengar"
            id: 80
            slot: "Gunner"
            points: 6
            unique: true
            faction: "Scum and Villainy"
            recurring: 1
            charge: 1

        }
        {
            name: "Ezra Bridger"
            id: 81
            slot: "Gunner"
            points: 10
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
            points: 12
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
            recurring: 1
        }
        {
            name: "Han Solo"
            id: 84
            slot: "Gunner"
            xws: "hansolo"
            points: 10
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Han Solo (Scum)"
            id: 85
            slot: "Gunner"
            xws: "hansolo-gunner"
            points: 9
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Hotshot Gunner"
            id: 86
            slot: "Gunner"
            points: 6
        }
        {
            name: "Luke Skywalker"
            id: 87
            slot: "Gunner"
            points: 16
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
            points: 2
            restrictions: [
                ["AttackArc", "Rear Arc"]
            ]
        }
        {
            name: "Veteran Turret Gunner"
            id: 90
            slot: "Gunner"
            points: 8
            restrictions: [
                ["Action", "Rotate Arc"]
            ]
        }
        {
            name: "Cloaking Device"
            id: 91
            slot: "Illicit"
            points: 3
            unique: true
            charge: 2
            restrictions: [
                ["Base", "Small or Medium"]
            ]
        }
        {
            name: "Contraband Cybernetics"
            id: 92
            slot: "Illicit"
            points: 3
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
            points: 3
        }
        {
            name: "Inertial Dampeners"
            id: 95
            slot: "Illicit"
            points: 8
        }
        {
            name: "Rigged Cargo Chute"
            id: 96
            slot: "Illicit"
            points: 4
            charge: 1
            applies_condition: '''Loose Cargo'''.canonicalize()
            restrictions: [
                ["Base", "Medium or Large"]
            ]
        }
        {
            name: "Barrage Rockets"
            id: 97
            slot: "Missile"
            points: 8
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 5
            restrictions: [
                ["Slot", "Missile"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Missile"
            also_occupies_upgrades: [ "Missile" ]
        }
        {
            name: "Cluster Missiles"
            id: 98
            slot: "Missile"
            points: 4
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
            points: 2
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 3
        }
        {
            name: "Proton Rockets"
            id: 102
            slot: "Missile"
            points: 8
            attackbull: 5
            range: """1-2"""
            rangebonus: true
            charge: 1
        }
        {
            name: "Ablative Plating"
            id: 103
            slot: "Modification"
            points: 4
            charge: 2
            restrictions: [
                ["Base", "Medium or Large"]
            ]
        }
        {
            name: "Advanced SLAM"
            id: 104
            slot: "Modification"
            points: 3
            restrictions: [
                ["Action", "Slam"]
            ]
        }
        {
            name: "Afterburners"
            id: 105
            slot: "Modification"
            points: 6
            charge: 2
            restrictions: [
                ["Base", "Small"]
            ]
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
            points: 3
            restrictions: [
                ["Action", "R-Boost"]
            ]
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
            points: 5
        }
        {
            name: "Tactical Scrambler"
            id: 110
            slot: "Modification"
            points: 2
            restrictions: [
                ["Base", "Medium or Large"]
            ]
        }
        {
            name: "Advanced Sensors"
            id: 111
            slot: "Sensor"
            points: 12
        }
        {
            name: "Collision Detector"
            id: 112
            slot: "Sensor"
            points: 9
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
            points: 6
        }
        {
            name: "Composure"
            id: 115
            slot: "Talent"
            points: 1
            restrictions: [
                ["Action", "Focus"]
            ]
        }
        {
            name: "Crack Shot"
            id: 116
            slot: "Talent"
            points: 3
            charge: 1
        }
        {
            name: "Daredevil"
            id: 117
            slot: "Talent"
            points: 2
            restrictions: [
                ["Action", "W-Boost"]
                ["Base", "Small"]
            ]
        }
        {
            name: "Debris Gambit"
            id: 118
            slot: "Talent"
            points: 6
            restrictions: [
                ["Base", "Small or Medium"]
            ]
            modifier_func: (stats) ->
                stats.actions.push 'R-Evade' if 'R-Evade' not in stats.actions
        }
        {
            name: "Elusive"
            id: 119
            slot: "Talent"
            points: 2
            charge: 1
            restrictions: [
                ["Base", "Small or Medium"]
            ]
        }
        {
            name: "Expert Handling"
            id: 120
            slot: "Talent"
            points: 2
            restrictions: [
                ["Action", "R-Barrel Roll"]
            ]
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
            points: 7
            restrictions: [
                ["Base", "Small or Medium"]
            ]
        }
        {
            name: "Lone Wolf"
            id: 124
            slot: "Talent"
            points: 5
            unique: true
            recurring: 1
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
            points: 3
            restrictions: [
                ["Action", "Reload"]
            ]
        }
        {
            name: "Selfless"
            id: 130
            slot: "Talent"
            points: 2
            faction: "Rebel Alliance"
        }
        {
            name: "Squad Leader"
            id: 131
            slot: "Talent"
            points: 8
            unique: true
            modifier_func: (stats) ->
                stats.actions.push 'R-Coordinate' if 'R-Coordinate' not in stats.actions
        }
        {
            name: "Swarm Tactics"
            id: 132
            slot: "Talent"
            points: 5
        }
        {
            name: "Trick Shot"
            id: 133
            slot: "Talent"
            points: 4
        }
        {
            name: "Adv. Proton Torpedoes"
            id: 134
            slot: "Torpedo"
            points: 8
            attack: 5
            range: """1"""
            rangebonus: true
            charge: 1
        }
        {
            name: "Ion Torpedoes"
            id: 135
            slot: "Torpedo"
            points: 4
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
            points: 5
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
                stats.actions.push 'R-> Boost'
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
            points: 0
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
            points: 0
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
            points: 0
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
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666"
        }
        {
            name: "IG-2000"
            id: 151
            slot: "Title"
            points: 0
            faction: "Scum and Villainy"
            ship: "Aggressor"
        }
        {
            name: "Lando's Millennium Falcon"
            id: 152
            slot: "Title"
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "Customized YT-1300"
        }
        {
            name: "Marauder"
            id: 153
            slot: "Title"
            points: 0
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
            points: 0
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
            points: 0
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
            points: 0
            unique: true
            faction: ["Rebel Alliance", "Scum and Villainy"]
            ship: "HWK-290"
            modifier_func: (stats) ->
                stats.attack = 3
        }
        {
            name: "Outrider"
            id: 157
            slot: "Title"
            points: 0
            unique: true
            faction: "Rebel Alliance"
            ship: "YT-2400"
        }
        {
            id: 158
            skip: true
        }
        {
            name: "Punishing One"
            id: 159
            slot: "Title"
            points: 0
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
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
        }
        {
            name: "Slave I"
            id: 161
            slot: "Title"
            points: 0
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
            points: 0
            unique: true
            faction: "Galactic Empire"
            ship: "Lambda-Class Shuttle"
        }
        {
            name: "Virago"
            id: 163
            slot: "Title"
            points: 0
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
            points: 4
            modifier_func: (stats) ->
                stats.hull += 1
        }
        {
            name: "Shield Upgrade"
            id: 165
            slot: "Modification"
            points: 6
            modifier_func: (stats) ->
                stats.shields += 1
        }
        {
            name: "Stealth Device"
            id: 166
            slot: "Modification"
            points: 6
            charge: 1
        }
        {
            name: "Phantom"
            id: 167
            slot: "Title"
            points: 0
            unique: true
            faction: "Rebel Alliance"
            ship: ["Attack Shuttle","Sheathipede-Class Shuttle"]
        }
        {
            id: 168
            skip: true
        }
        {
            id: 169
            skip: true
        }
        {
            id: 170
            skip: true
        }
        {
            name: "Black One"
            id: 171
            slot: "Title"
            unique: true
            charge: 1
            points: 0
            faction: "Resistance"
            ship: "T-70 X-Wing"
            modifier_func: (stats) ->
                stats.actions.push 'Slam' if 'Slam' not in stats.actions
        }
        {
            name: "Heroic"
            id: 172
            slot: "Talent"
            points: 2
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
            points: 9
            unique: true
            faction: "Resistance"
        }
        {
            name: "Integrated S-Foils"
            id: 175
            slot: "Configuration"
            points: 0
            ship: "T-70 X-Wing"
            modifier_func: (stats) ->
                stats.actions.push 'Barrel Roll'
                stats.actions.push '*Focus'
                stats.actions.push 'R-> Barrel Roll'
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
            points: 3
            restrictions: [
                ["Action", "Lock"]
            ]
        }
        {
            name: "Primed Thrusters"
            id: 178
            slot: "Tech"
            points: 6
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Kylo Ren"
            id: 179
            slot: "Crew"
            points: 9
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
            points: 3
            unique: true
            faction: "First Order"
            restrictions: [
                ["Action", "Coordinate"]
            ]
        }
        {
            name: "Fanatical"
            id: 181
            slot: "Talent"
            points: 1
            faction: "First Order"
        }
        {
            name: "Special Forces Gunner"
            id: 182
            slot: "Gunner"
            points: 9
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
            restrictions: [
                ["Slot", "Crew"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Hyperspace Tracking Data"
            id: 185
            slot: "Tech"
            faction: "First Order"
            points: 2
            restrictions: [
                ["Base", "Large"]
            ]
        }
        {
            name: "Advanced Optics"
            id: 186
            slot: "Tech"
            points: 5
        }
        {
            name: "Rey"
            id: 187
            slot: "Gunner"
            xws: "rey-gunner"
            points: 12
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
            points: 4
            charge: 2
            unique: true
            faction: "Resistance"
        }
        {
            name: "Paige Tico"
            id: 189
            slot: "Gunner"
            points: 6
            unique: true
            faction: "Resistance"
        }
        {
            name: "R2-HA"
            id: 190
            slot: "Astromech"
            points: 3
            unique: true
            faction: "Resistance"
        }
        {
            name: "C-3PO (Resistance)"
            canonical_name: 'C-3PO'.canonicalize()
            id: 191
            slot: "Crew"
            xws: "c3po-crew"
            points: 7
            unique: true
            faction: "Resistance"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
                stats.actions.push 'R-Coordinate' if 'R-Coordinate' not in stats.actions
        }
        {
            name: "Han Solo (Resistance)"
            id: 192
            slot: "Crew"
            xws: "hansolo-crew"
            points: 3
            unique: true
            faction: "Resistance"
            modifier_func: (stats) ->
                stats.actions.push 'R-Evade' if 'R-Evade' not in stats.actions
        }
        {
            name: "Rey's Millennium Falcon"
            id: 193
            slot: "Title"
            points: 0
            unique: true
            ship: "Scavenged YT-1300"
            faction: "Resistance"
        }
        {
            name: "Petty Officer Thanisson"
            id: 194
            slot: "Crew"
            points: 3
            unique: true
            faction: "First Order"
        }
        {
            name: "BB-8"
            id: 195
            slot: "Astromech"
            points: 7
            charge: 2
            unique: true
            faction: "Resistance"
        }
        {
            name: "BB Astromech"
            id: 196
            slot: "Astromech"
            points: 6
            charge: 2
            faction: "Resistance"
        }
        {
            name: "M9-G8"
            id: 197
            slot: "Astromech"
            points: 5
            unique: true
            faction: "Resistance"
        }
        {
            name: "Ferrosphere Paint"
            id: 198
            slot: "Tech"
            points: 3
            faction: "Resistance"
        }
        {
            name: "Brilliant Evasion"
            id: 199
            slot: "Force"
            points: 2
        }
        {
            name: "Calibrated Laser Targeting"
            id: 200
            slot: "Configuration"
            ship: "Delta-7 Aethersprite"
            points: 0
            restrictions: [
                ["Slot", "Modification"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Modification"
            also_occupies_upgrades: [ "Modification" ]
        }
        {
            name: "Delta-7B"
            id: 201
            slot: "Configuration"
            ship: "Delta-7 Aethersprite"
            points: 99
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
            restrictions: [
                ["Action", "Lock"]
            ]
        }
        {
            name: "Predictive Shot"
            id: 203
            slot: "Force"
            points: 1
        }
        {
            name: "Hate"
            id: 204
            slot: "Force"
            points: 4
            restrictions: [
                ["Keyword", "Dark Side"]
            ]
        }
        {
            name: "R5-X3"
            id: 205
            unique: true
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
            points: 0
        }
        {
            name: "Grappling Struts"
            id: 208
            ship: "Vulture-class Droid Fighter"
            slot: "Configuration"
            points: 0
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
            restrictions: [
                ["Action", "Calculate"]
            ]
        }
        {
            name: "Dedicated"
            id: 210
            faction: "Galactic Republic"
            slot: "Talent"
            points: 1
            restrictions: [
                ["Keyword", "Clone"]
            ]
        }
        {
            name: "Synchronized Console"
            id: 211
            faction: "Galactic Republic"
            slot: "Modification"
            points: 1
            restrictions: [
                ["Action", "Lock"]
            ]
        }
        {
            name: "Battle Meditation"
            id: 212
            faction: "Galactic Republic"
            slot: "Force"
            points: 6
            modifier_func: (stats) ->
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
        }
        {
            name: "R4-P Astromech"
            id: 213
            faction: "Galactic Republic"
            slot: "Astromech"
            charge: 2
            points: 2
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
            points: 3
            applies_condition: '''Spare Parts'''.canonicalize()
            restrictions: [
                ["Equipped", "Astromech"]
            ]
        }
        {
            name: "Scimitar"
            id: 216
            unique: true
            ship: "Sith Infiltrator"
            slot: "Title"
            faction: "Separatist Alliance"
            points: 0
            modifier_func: (stats) ->
                stats.actions.push 'R-Cloak' if 'R-Cloak' not in stats.actions
                stats.actions.push 'Jam' if 'Jam' not in stats.actions
        }
        {
            name: "Chancellor Palpatine"
            id: 217
            unique: true
            slot: "Crew"
            faction: ["Galactic Republic", "Separatist Alliance"]
            force: 1
            points: 14
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
        }
        {
            name: "Count Dooku"
            id: 218
            unique: true
            slot: "Crew"
            force: 1
            faction: "Separatist Alliance"
            points: 14
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
            points: 4
        }
        {
            name: "K2-B4"
            id: 220
            unique: true
            solitary: true
            slot: "Tactical Relay"
            faction: "Separatist Alliance"
            points: 6
        }
        {
            name: "DRK-1 Probe Droids"
            id: 221
            slot: "Device"
            unique: true
            faction: "Separatist Alliance"
            charge: 2
            points: 5
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
            points: 4
            applies_condition: '''Buzz Droid Swarm'''.canonicalize()
        }
        {
            name: "Clone Commander Cody"
            id: 225
            unique: true
            slot: "Gunner"
            faction: "Galactic Republic"
            points: 4
        }
        {
            name: "R4-P44"
            id: 226
            unique: true
            faction: "Galactic Republic"
            slot: "Astromech"
            points: 3
        }
        {
            name: "Seventh Fleet Gunner"
            id: 227
            charge: 1
            slot: "Gunner"
            faction: "Galactic Republic"
            points: 8
        }
        {
            name: "Treacherous"
            id: 228
            charge: 1
            slot: "Talent"
            faction: "Separatist Alliance"
            points: 2
        }
        {
            name: "Soulless One"
            id: 229
            slot: "Title"
            unique: true
            ship: "Belbullab-22 Starfighter"
            faction: "Separatist Alliance"
            points: 0
            modifier_func: (stats) ->
                stats.hull += 2
        }
        {
            name: "GA-97"
            id: 230
            slot: "Crew"
            points: 5
            charge: 5
            recurring: 1
            faction: "Resistance"
            unique: true
            applies_condition: '''It's The Resistance'''.canonicalize()
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Kaydel Connix"
            id: 231
            slot: "Crew"
            points: 5
            faction: "Resistance"
            unique: true
        }
        {
            name: "Autoblasters"
            id: 232
            slot: "Cannon"
            points: 4
            attack: 2
            range: """1-2"""
        }
        {
            name: "R2-C4"
            id: 233
            unique: true
            slot: "Astromech"
            points: 3
            faction: "Galactic Republic"
        }
        {
            name: "Plasma Torpedoes"
            id: 234
            slot: "Torpedo"
            points: 7
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 2
        }
        {
            name: "Electro-Proton Bomb"
            id: 235
            unique: true
            slot: "Device"
            points: 8
            charge: 1
            restrictions: [
                ["Action", "Reload"]
                ["Slot", "Modification"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Modification"
            also_occupies_upgrades: [ "Modification" ]
            applies_condition: 'Electro-Proton Bomb'.canonicalize()
        }
        {
            name: "Delayed Fuses"
            id: 236
            slot: "Modification"
            points: 1
        }
        {
            name: "Landing Struts"
            id: 237
            ship: "Hyena-Class Droid Bomber"
            slot: "Configuration"
            points: 0
        }
        {
            name: "Diamond-Boron Missiles"
            id: 238
            unique: true
            slot: "Missile"
            points: 5
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 3
            restrictions: [
                ["Slot", "Missile"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Missile"
            also_occupies_upgrades: [ "Missile" ]
        }
        {
            name: "TA-175"
            id: 239
            unique: true
            slot: "Tactical Relay"
            solitary: true
            faction: "Separatist Alliance"
            points: 10
        }
        {
            name: "Passive Sensors"
            id: 240
            slot: "Sensor"
            charge: 1
            recurring: 1
            points: 5
        }
        {
            name: "R2-A6"
            id: 241
            unique: true
            slot: "Astromech"
            faction: "Galactic Republic"
            points: 6
        }
        {
            name: "Amilyn Holdo"
            id: 242
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 8
        }
        {
            name: "Larma D'Acy"
            id: 243
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 4
        }
        {
            name: "Leia Organa (Resistance)"
            id: 244
            xws: "leiaorgana-resistance"
            unique: true
            slot: "Crew"
            faction: "Resistance"
            force: 1
            points: 16
            restrictions: [
                ["Slot", "Crew"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
        }
        {
            name: "Korr Sella"
            id: 245
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 6
        }
        {
            name: "PZ-4CO"
            id: 246
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 5
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Angled Deflectors"
            id: 247
            slot: "Modification"
            points: 4
            restrictions: [
                ["ShieldsGreaterThan", 0]
                ["Base", "Small or Medium"]
            ]
            modifier_func: (stats) ->
                stats.shields -= 1
                stats.actions.push 'Reinforce' if 'Reinforce' not in stats.actions
        }
        {
            name: "Ensnare"
            id: 248
            slot: "Talent"
            points: 10
            ship: "Nantex-Class Starfighter"
        }
        {
            name: "Targeting Computer"
            id: 249
            slot: "Modification"
            points: 3
            modifier_func: (stats) ->
                stats.actions.push 'Lock' if 'Lock' not in stats.actions
        }
        {
            name: "Precognitive Reflexes"
            id: 250
            slot: "Force"
            points: 15
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Foresight"
            slot: "Force"
            points: 5
            id: 251
            attackbull: 2
            range: """1-3"""
            rangebonus: true
        }
        {
            name: "C1-10P"
            id: 252
            unique: true
            slot: "Astromech"
            charge: 2
            points: 8
            faction: "Galactic Republic"
        }
        {
            name: "Ahsoka Tano"
            id: 253
            unique: true
            slot: "Gunner"
            points: 12
            faction: "Galactic Republic"
            force: 1
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "C-3PO (Republic)"
            canonical_name: 'C-3PO'.canonicalize()
            id: 254
            unique: true
            slot: "Crew"
            xws: "c3po-republic"
            points: 6
            faction: "Galactic Republic"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Gravitic Deflection"
            id: 255
            slot: "Talent"
            points: 4
            ship: "Nantex-Class Starfighter"
        }
        {
            name: "Snap Shot"
            id: 256
            slot: "Talent"
            points: 9
            attack: 2
            range: """2"""
            rangebonus: true
        }
        {
            name: "Agent of the Empire"
            id: 257
            unique: true
            faction: "Galactic Empire"
            slot: "Command"
            points: 4
            ship: ["TIE Advanced","TIE Advanced Prototype"]
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "First Order Elite"
            id: 258
            unique: true
            faction: "First Order"
            slot: "Command"
            ship: ["TIE/SF Fighter","TIE/VN Silencer"]
            points: 4
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Veteran Wing Leader"
            id: 259
            slot: "Command"
            points: 2
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Dreadnought Hunter"
            id: 260
            slot: "Command"
            points: 3
            max_per_squad: 2
            restrictions: [
                ["Base", "Small"]
                ["InitiativeGreaterThan", 3]
            ]
        }
        {
            name: "Admiral Ozzel"
            id: 261
            unique: true
            slot: "Command"
            points: 6
            faction: "Galactic Empire"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Azmorigan"
            id: 262
            unique: true
            slot: "Command"
            points: 4
            faction: "Scum and Villainy"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Captain Needa"
            id: 263
            unique: true
            faction: "Galactic Empire"
            slot: "Command"
            points: 8
            charge: 4
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Carlist Rieekan"
            id: 264
            unique: true
            faction: "Rebel Alliance"
            slot: "Command"
            points: 4
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Jan Dodonna"
            id: 265
            unique: true
            faction: "Rebel Alliance"
            slot: "Command"
            points: 3
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Raymus Antilles"
            id: 266
            unique: true
            slot: "Command"
            points: 8
            faction: "Rebel Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Stalwart Captain"
            id: 267
            unique: true
            slot: "Command"
            points: 6
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Strategic Commander"
            id: 268
            unique: true
            slot: "Command"
            charge: 3
            points: 6
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Ion Cannon Battery"
            id: 269
            slot: "Hardpoint"
            points: 5
            attackt: 4
            range: """2-4"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "Targeting Battery"
            id: 270
            slot: "Hardpoint"
            points: 5
            attackt: 3
            range: """2-5"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "Ordnance Tubes"
            id: 271
            slot: "Hardpoint"
            points: 1
        }
        {
            name: "Point-Defense Battery"
            id: 272
            slot: "Hardpoint"
            points: 9
            attackdt: 2
            range: """1-2"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "Turbolaser Battery"
            id: 273
            slot: "Hardpoint"
            points: 10
            attackt: 3
            range: """3-5"""
            restrictions: [
                ["EnergyGreatterThan", 4]
            ]
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "Toryn Farr"
            id: 274
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            points: 4
            restrictions: [
                ["Base", "Huge"]
            ]
            modifier_func: (stats) ->
                stats.actions.push '*Lock'
                stats.actions.push 'R-> Coordinate'
        }
        {
            name: "Bombardment Specialists"
            id: 275
            slot: "Team"
            points: 6
            modifier_func: (stats) ->
                stats.actions.push '*Lock'
                stats.actions.push '> Calculate'
        }
        {
            name: "Comms Team"
            id: 276
            slot: "Team"
            points: 7
            modifier_func: (stats) ->
                stats.actions.push '*Coordinate'
                stats.actions.push '> Calculate'
                stats.actions.push '*Jam'
                stats.actions.push '> Calculate'
        }
        {
            name: "Damage Control Team"
            id: 277
            slot: "Team"
            points: 3
            modifier_func: (stats) ->
                stats.actions.push '*Reinforce'
                stats.actions.push '> Calculate'
        }
        {
            name: "Gunnery Specialists"
            id: 278
            slot: "Team"
            points: 5
            modifier_func: (stats) ->
                stats.actions.push '*Rotate Arc'
                stats.actions.push '> Calculate'
        }
        {
            name: "IG-RM Droids"
            id: 279
            slot: "Team"
            faction: "Scum and Villainy"
            points: 2
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Ordnance Team"
            id: 280
            slot: "Team"
            points: 2
            modifier_func: (stats) ->
                stats.actions.push '*Reload'
                stats.actions.push '> Calculate'
        }
        {
            name: "Sensor Experts"
            id: 281
            slot: "Team"
            points: 6
            modifier_func: (stats) ->
                stats.actions.push '*Lock'
                stats.actions.push '> Calculate'
        }
        {
            name: "Adaptive Shields"
            id: 282
            slot: "Cargo"
            points: 5
        }
        {
            name: "Boosted Scanners"
            id: 283
            slot: "Cargo"
            points: 7
        }
        {
            id: 284
            skip: true
        }
        {
            name: "Tibanna Reserves"
            id: 285
            slot: "Cargo"
            points: 3
            charge: 3
        }
        {
            name: "Optimized Power Core"
            id: 286
            slot: "Cargo"
            points: 6
        }
        {
            name: "Quick-Release Locks"
            id: 287
            slot: "Illicit"
            charge: 2
            points: 5
            restrictions: [
                ["Base", "Huge"]
            ]
        }
        {
            name: "Saboteur's Map"
            id: 288
            slot: "Illicit"
            points: 3
            unique: true
            restrictions: [
                ["Base", "Huge"]
            ]
        }
        {
            name: "Scanner Baffler"
            id: 289
            slot: "Illicit"
            points: 8
            restrictions: [
                ["Base", "Huge"]
            ]
        }
        {
            name: "Dodonna's Pride"
            id: 290
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 4
            modifier_func: (stats) ->
                stats.shields -= 2
                stats.actions.push '*Evade'
                stats.actions.push 'R-> Coordinate'
                stats.actions.push '*Focus'
                stats.actions.push 'R-> Coordinate'
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Team'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
        }
        {
            name: "Jaina's Light"
            id: 291
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 4
            modifier_func: (stats) ->
                stats.shields += 1
                stats.energy -= 1
        }
        {
            name: "Liberator"
            id: 292
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 5
            modifier_func: (stats) ->
                stats.energy += 1
        }
        {
            name: "Tantive IV"
            id: 293
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 5
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
            ]
        }
        {
            name: "Bright Hope"
            id: 294
            slot: "Title"
            unique: true
            ship: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            points: 5
        }
        {
            name: "Luminous"
            id: 295
            slot: "Title"
            unique: true
            ship: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            points: 12
            modifier_func: (stats) ->
                stats.shields -= 1
                stats.energy += 2
        }
        {
            name: "Quantum Storm"
            id: 296
            slot: "Title"
            unique: true
            ship: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            points: 3
            modifier_func: (stats) ->
                stats.energy += 1
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Team'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
        }
        {
            name: "Assailer"
            id: 297
            slot: "Title"
            unique: true
            ship: "Raider-class Corvette"
            faction: "Galactic Empire"
            points: 5
            modifier_func: (stats) ->
                stats.shields -= 2
                stats.hull += 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Gunner'
                }
            ]
        }
        {
            name: "Corvus"
            id: 298
            slot: "Title"
            unique: true
            ship: "Raider-class Corvette"
            faction: "Galactic Empire"
            points: 3
        }
        {
            name: "Impetuous"
            id: 299
            slot: "Title"
            unique: true
            ship: "Raider-class Corvette"
            faction: "Galactic Empire"
            points: 4
            modifier_func: (stats) ->
                stats.shields -= 2
                stats.energy += 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
            ]
        }
        {
            name: "Instigator"
            id: 300
            slot: "Title"
            unique: true
            ship: "Raider-class Corvette"
            faction: "Galactic Empire"
            points: 6
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Team'
                }
            ]
        }
        {
            name: "Blood Crow"
            id: 301
            slot: "Title"
            unique: true
            ship: "Gozanti-class Cruiser"
            faction: "Galactic Empire"
            points: 8
            modifier_func: (stats) ->
                stats.shields -= 1
                stats.energy += 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Gunner'
                }
            ]
        }
        {
            name: "Requiem"
            id: 302
            slot: "Title"
            unique: true
            ship: "Gozanti-class Cruiser"
            faction: "Galactic Empire"
            points: 7
            modifier_func: (stats) ->
                stats.hull -= 1
                stats.energy += 1
        }
        {
            name: "Suppressor"
            id: 303
            slot: "Title"
            unique: true
            ship: "Gozanti-class Cruiser"
            faction: "Galactic Empire"
            points: 6
            modifier_func: (stats) ->
                stats.shields += 2
                stats.hull -= 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Sensor'
                }
            ]
        }
        {
            name: "Vector"
            id: 304
            slot: "Title"
            unique: true
            ship: "Gozanti-class Cruiser"
            faction: "Galactic Empire"
            points: 7
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
        }
        {
            name: "Broken Horn"
            id: 305
            slot: "Title"
            unique: true
            ship: "C-ROC Cruiser"
            faction: "Scum and Villainy"
            points: 4
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Illicit'
                }
            ]
        }
        {
            name: "Merchant One"
            id: 306
            slot: "Title"
            unique: true
            ship: "C-ROC Cruiser"
            faction: "Scum and Villainy"
            points: 8
            modifier_func: (stats) ->
                stats.actions.push 'R-Evade' if 'R-Evade' not in stats.actions
                stats.actions.push 'Coordinate' if 'Coordinate' not in stats.actions
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Turret'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Team'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
        }
        {
            name: "Insatiable Worrt"
            id: 307
            slot: "Title"
            unique: true
            ship: "C-ROC Cruiser"
            faction: "Scum and Villainy"
            points: 7
            modifier_func: (stats) ->
                stats.hull += 3
                stats.shields -= 1
                stats.energy -= 1
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
        }
        {
            name: "Corsair Refit"
            id: 308
            slot: "Configuration"
            ship: "C-ROC Cruiser"
            max_per_squad: 2
            points: 6
            modifier_func: (stats) ->
                stats.hull += 2
                stats.shields -= 2
                stats.energy += 1
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Cannon'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Turret'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Missile'
                }
            ]
        }
        {
            name: "Thunderstrike"
            id: 309
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 4
            modifier_func: (stats) ->
                stats.hull += 3
                stats.shields -= 3
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Gunner'
                }
            ]
        }
        {
            name: "Coaxium Hyperfuel"
            id: 310
            slot: "Illicit"
            points: 1
            restrictions: [
                ["Action", "Slam"]
            ]
        }
        {
            name: "Mag-Pulse Warheads"
            id: 311
            slot: "Missile"
            points: 5
            attack: 3
            range: """1-3"""
            rangebonus: true
            charge: 2
        }
        {
            name: "R1-J5"
            id: 312
            slot: "Astromech"
            faction: "Resistance"
            unique: true
            points: 5
            charge: 3
        }
        {
            name: "Stabilized S-Foils"
            id: 313
            slot: "Configuration"
            ship: "B-Wing"
            points: 0
            modifier_func: (stats) ->
                stats.actions.push '*Barrel Roll'
                stats.actions.push 'R-> Evade'
                stats.actions.push '*Barrel Roll'
                stats.actions.push 'R-> Lock'
                stats.actions.push 'R-Reload'
        }
        {
            name: "K-2SO"
            id: 314
            slot: "Crew"
            faction: "Rebel Alliance"
            unique: true
            points: 6
            modifier_func: (stats) ->
                stats.actions.push 'Calculate'
                stats.actions.push 'Jam'
        }
        {
            name: "Kaz's Fireball"
            id: 315
            slot: "Title"
            ship: "Fireball"
            faction: "Resistance"
            unique: true
            points: 0
        }
        {
            name: "Cluster Mines"
            id: 316
            slot: "Device"
            charge: 1
            points: 5
            applies_condition: 'Cluster Mine'.canonicalize()
        }
        {
            name: "Ion Bombs"
            id: 317
            slot: "Device"
            points: 4
            charge: 2
            applies_condition: 'Ion Bomb'.canonicalize()
        }
        {
            name: "Deuterium Power Cells"
            id: 318
            slot: "Tech"
            points: 8
            charge: 2
            faction: "First Order"
            restrictions: [
                ["Slot", "Modification"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Modification"
            also_occupies_upgrades: [ "Modification" ]
        }
        {
            name: "Proud Tradition"
            id: 319
            slot: "Talent"
            faction: "First Order"
            points: 2
        }
        {
            name: "Commander Pyre"
            id: 320
            slot: "Crew"
            unique: true
            faction: "First Order"
            points: 5
        }
        {
            name: "Clone Captain Rex"
            id: 321
            slot: "Gunner"
            unique: true
            faction: "Galactic Republic"
            points: 2
        }
        {
            name: "Yoda"
            id: 322
            slot: "Crew"
            unique: true
            force: 2
            faction: "Galactic Republic"
            points: 12
            modifier_func: (stats) ->
                stats.force += 2
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
        }
        {
            name: "Repulsorlift Stabilizers"
            id: 323
            slot: "Configuration"
            ship: "HMP Droid Gunship"
            faction: "Separatist Alliance"
            points: 0
        }
        {
            name: "Agent Terex"
            id: 324
            slot: "Crew"
            unique: true
            faction: "First Order"
            points: 7
        }
        {
            name: "Plo Koon"
            id: 325
            slot: "Crew"
            unique: true
            force: 1
            faction: "Galactic Republic"
            points: 9
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push 'F-Reinforce' if 'F-Reinforce' not in stats.actions
        }
        {
            name: "Multi-Missile Pods"
            id: 326
            slot: "Missile"
            points: 4
            attackf: 2
            range: """1-2"""
            rangebonus: true
            charge: 5
            restrictions: [
                ["Slot", "Missile"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Missile"
            also_occupies_upgrades: [ "Missile" ]
        }
        {
            name: "Kit Fisto"
            id: 327
            slot: "Crew"
            unique: true
            force: 1
            faction: "Galactic Republic"
            points: 8
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push 'F-Evade' if 'F-Evade' not in stats.actions
        }
        {
            name: "Aayla Secura"
            id: 328
            slot: "Crew"
            unique: true
            force: 1
            faction: "Galactic Republic"
            points: 14
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push '*Focus'
                stats.actions.push '> F-Coordinate'
        }
        {
            name: "Maneuver-Assist MGK-300"
            id: 329
            slot: "Configuration"
            ship: "TIE/rb Heavy"
            faction: "Galactic Empire"
            points: 0
            modifier_func: (stats) ->
                stats.actions.push 'Calculate'
                stats.actions.push '*Barrel Roll'
                stats.actions.push '*R-> Calculate'
                if stats.maneuvers[3]?
                    for turn in [1 ... 4]
                        if stats.maneuvers[3][turn] > 1
                            stats.maneuvers[3][turn]--
        }
        {
            name: "Ion Limiter Override"
            id: 330
            slot: "Talent"
            points: 2
            restrictions: [
                ["Keyword", "TIE"]
            ]
        }
        {
            name: "Marg Sabl Closure"
            id: 331
            slot: "Talent"
            points: 1
            restrictions: [
                ["Base", "Small or Medium"]
            ]
        }
        {
            name: "XX-23 S-Thread Tracers"
            id: 332
            slot: "Missile"
            attack: 3
            range: """1-3"""
            rangebonus: true
            max_per_squad: 2
            charge: 2
            points: 4
        }
        {
            name: "Hondo Ohnaka"
            id: 333
            unique: true
            slot: "Crew"
            points: 5
        }
        {
            name: "Boba Fett (Separatist)"
            canonical_name: 'Boba Fett'.canonicalize()
            xws: 'bobafett-gunner'
            id: 334
            slot: "Gunner"
            unique: true
            points: 4
            faction: ["Scum and Villainy", "Separatist Alliance"]
        }
        {
            name: "Jango Fett"
            id: 335
            slot: "Crew"
            unique: true
            faction: ["Scum and Villainy", "Separatist Alliance"]
            points: 3
        }
        {
            name: "Zam Wesell"
            id: 336
            slot: "Crew"
            unique: true
            charge: 2
            faction: ["Scum and Villainy", "Separatist Alliance"]
            points: 11
            applies_condition: ['''You'd Better Mean Business'''.canonicalize(),'You Should Thank Me'.canonicalize()]
        }
        {
            name: 'Alpha-3B "Besh"'
            id: 337
            slot: "Configuration"
            ship: "Nimbus-class V-Wing"
            points: 0
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Device'
                }
        ]
        }
        {
            name: "Precision Ion Engines"
            id: 338
            slot: "Modification"
            points: 2
            charge: 2
            restrictions: [
                ["Keyword", "TIE"]
                ["AgilityEquals", 3]
            ]
        }
        {
            name: "Thermal Detonators"
            id: 339
            slot: "Device"
            charge: 4
            points: 5
            applies_condition: 'Thermal Detonator'.canonicalize()
        }
        {
            name: "R2-D2 (Republic)"
            canonical_name: 'R2-D2'.canonicalize()
            id: 340
            points: 8
            charge: 2
            unique: true
            xws: "r2d2-republic"
            faction: "Galactic Republic"
            slot: "Astromech"
        }
        {
            name: "Extreme Maneuvers"
            id: 341
            points: 5
            slot: "Force"
            restrictions: [
                ["Action", "Boost"]
                ["Base", "Small"]
            ]
        }
        {
            name: "Patience"
            id: 342
            slot: "Force"
            points: 2
            restrictions: [
                ["Keyword", "Light Side"]
            ]
        }
        {
            name: "Deadeye Shot"
            id: 343
            slot: "Talent"
            points: 1
            restrictions: [
                ["Base", "Small or Medium"]
            ]
        }
        {
            name: "Starbird Slash"
            id: 344
            slot: "Talent"
            points: 1
            restrictions: [
                ["Keyword", "A-Wing"]
            ]
        }
        {
            name: "Overdrive Thruster"
            id: 345
            ship: "T-70 X-Wing"
            unique: true
            slot: "Modification"
            points: 5
        }
        {
            name: '"Fives"'
            id: 346
            unique: true
            faction: "Galactic Republic"
            slot: "Crew"
            points: 3
        }
        {
            name: "Commander Malarus"
            id: 347
            unique: true
            faction: "First Order"
            slot: "Crew"
            points: 6
        }
        {
            name: "Automated Target Priority"
            id: 348
            slot: "Tech"
            points: 1
            restrictions: [
                ["InitiativeLessThan", 4]
            ]
        }
        {
            name: "Sensor Buoy Suite"
            id: 349
            faction: "First Order"
            unique: true
            slot: "Tech"
            points: 4
            restrictions: [
                ["Base", "Medium or Large"]
            ]
            applies_condition: 'Sensor Buoy'.canonicalize()
        }
        {
            name: "Suppressive Gunner"
            id: 350
            slot: "Gunner"
            points: 7
        }
        {
            name: "Ghost Company"
            id: 351
            faction: "Galactic Republic"
            unique: true
            slot: "Crew"
            points: 5
            restrictions: [
                ["Action", "Rotate Arc"]
                ["Slot", "Gunner"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Gunner"
            also_occupies_upgrades: [ "Gunner" ]
            modifier_func: (stats) ->
                stats.actions.push '*Rotate Arc'
                stats.actions.push 'R-> Focus'
        }
        {
            name: "Wolfpack"
            id: 352
            faction: "Galactic Republic"
            unique: true
            slot: "Crew"
            points: 4
            restrictions: [
                ["Slot", "Gunner"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Gunner"
            also_occupies_upgrades: [ "Gunner" ]
        }
        {
            name: "Kalani"
            id: 353
            charge: 3
            unique: true
            recurring: 1
            slot: "Tactical Relay"
            solitary: true
            faction: "Separatist Alliance"
            points: 5
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Synced Laser Cannons"
            id: 354
            slot: "Cannon"
            points: 7
            attack: 3
            range: """2-3"""
            restrictions: [
                ["Slot", "Cannon"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Cannon"
            also_occupies_upgrades: [ "Cannon" ]
        }
        {
            name: "Concussion Bombs"
            id: 355
            slot: "Device"
            charge: 3
            points: 4
            applies_condition: 'Concussion Bomb'.canonicalize()
        }
        {
            name: "Target-Assist MGK-300"
            id: 356
            slot: "Configuration"
            ship: "TIE/rb Heavy"
            faction: "Galactic Empire"
            points: 1
            modifier_func: (stats) ->
                stats.actions.push 'Calculate'
                stats.actions.push '*Rotate Arc'
                stats.actions.push '> Calculate'
        }
        {
            name: "Backwards Tailslide"
            id: 357
            slot: "Talent"
            points: 2
            restrictions: [
                ["Keyword", "X-Wing"]
                ["Equipped", "Configuration"]
            ]
        }
        {
            name: "R2-D2 (Resistance)"
            canonical_name: 'R2-D2'.canonicalize()
            id: 358
            slot: "Astromech"
            xws: "r2d2-resistance"
            points: 6
            unique: true
            charge: 4
            faction: "Resistance"
        }
        {
            name: "R6-D8"
            id: 359
            points: 4
            unique: true
            slot: "Astromech"
            faction: "Resistance"
        }
        {
            name: "Underslung Blaster Cannon"
            id: 360
            points: 2
            slot: "Cannon"
            attackt: 2
            range: """1"""
            rangebonus: true
            faction: "Resistance"
            restrictions: [
                ["Keyword", "X-Wing"]
            ]
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "Jedi Commander"
            id: 361
            points: 4
            ship: ["Eta-2 Actis","Delta-7 Aethersprite"]
            slot: "Command"
        }
        {
            name: "Syliure-31 Hyperdrive"
            id: 362
            points: 3
            slot: "Hyperdrive"
            ship: "Syliure-class Hyperspace Ring"
        }
        {
            name: 'Alpha-3E "Esk"'
            id: 363
            slot: "Configuration"
            ship: "Nimbus-class V-Wing"
            points: 0
            charge: 2
            recurring: 1
        }
        {
            name: "R7-A7"
            id: 364
            points: 3
            unique: true
            charge: 3
            slot: "Astromech"
            faction: "Galactic Republic"
        }
        {
            name: "Q7 Astromech"
            id: 365
            points: 3
            slot: "Astromech"
            faction: "Galactic Republic"
        }
        {
            name: "Intercept Booster"
            id: 366
            points: 0
            slot: "Configuration"
            ship: "Droid Tri-Fighter"
            faction: "Separatist Alliance"
            charge: 3
            modifier_func: (stats) ->
                stats.actions.push 'Slam'
                stats.actions.push 'R-> Lock'
        }
        {
            name: "Independent Calculations"
            id: 367
            points: 0
            standardized: true
            slot: "Modification"
            restrictions: [
                ["Keyword", "Networked Calculations"]
            ]
        }
        {
            name: "Weapons Systems Officer"
            id: 368
            points: 5
            slot: "Gunner"
        }
        {
            name: "False Transponder Codes"
            id: 369
            points: 3
            charge: 1
            slot: "Illicit"
        }
        {
            name: "Slave I (Separatist)"
            canonical_name: 'Slave I'.canonicalize()
            xws: "slavei-swz82"
            id: 370
            points: 0
            slot: "Title"
            unique: true
            faction: ["Scum and Villainy", "Separatist Alliance"]
            ship: "Firespray-31"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Gunner"
                }
            ]
        }
        {
            name: "Vectored Cannons (RZ-1)"
            id: 371
            points: 0
            slot: "Configuration"
            standardized: true
            restrictions: [
                ["Keyword", "Vectored Thrusters"]
            ]
        }
        {
            name: "B6 Blade Wing Prototype"
            id: 372
            points: 1
            unique: true
            slot: "Title"
            ship: "B-Wing"
            faction: "Rebel Alliance"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Gunner"
                }
            ]
        }
        {
            name: "TIE Defender Elite"
            id: 373
            points: 0
            slot: "Configuration"
            faction: "Galactic Empire"
            ship: "TIE Defender"
            standardized: true
            modifier_func: (stats) ->
                if stats.maneuvers[1]?
                    for s in (stats.maneuvers)
                        if s[0] > 1
                            s[0]--
                        if s[4] > 1
                            s[4]--
                        if s[5] < 3 and s[5] != 0
                            s[5]++
        }
        {
            name: "Sensitive Controls"
            id: 374
            points: 0
            slot: "Configuration"
            standardized: true
            restrictions: [
                ["Keyword", "Autothrusters"]
            ]
        }
        {
            name: "Cutthroat"
            id: 375
            points: 2
            slot: "Talent"
            faction: "Scum and Villainy"
        }
        {
            name: "Tierfon Belly Run"
            id: 376
            points: 1
            slot: "Talent"
            restrictions: [
                ["Keyword", "Y-Wing"]
            ]
        }
        {
            name: "B6 Blade Wing Prototype (Epic)"
            canonical_name: 'B6 Blade Wing Prototype'.canonicalize()
            xws: "b6bladewingprototype-command"
            id: 377
            points: 4
            unique: true
            slot: "Command"
            ship: "B-Wing"
            faction: "Rebel Alliance"
            attack: 3
            range: """2-4"""
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Gunner"
                }
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Title"
            also_occupies_upgrades: [ "Title" ]
        }
        {
            name: "Hopeful"
            id: 378
            points: 1
            slot: "Talent"
            faction: "Rebel Alliance"
        }
        {
            name: "Sabine Wren (Gunner)"
            canonical_name: 'Sabine Wren'.canonicalize()
            xws: "sabinewren-gunner"
            id: 379
            points: 2
            unique: true
            slot: "Gunner"
            faction: "Rebel Alliance"
        }
        {
            name: "Phoenix Squadron"
            id: 380
            points: 4
            unique: true
            slot: "Command"
            faction: "Rebel Alliance"
            ship: "VCX-100"
        }
        {
            name: "Disciplined"
            id: 381
            points: 2
            slot: "Talent"
            faction: "Galactic Empire"
        }
        {
            name: "Skystrike Academy Class"
            id: 382
            points: 3
            max_per_squad: 2
            slot: "Command"
            faction: "Galactic Empire"
            ship: ["TIE Fighter", "TIE Interceptor"]
        }
        {
            name: "Shadow Wing"
            id: 383
            points: 4
            unique: true
            slot: "Command"
            faction: "Galactic Empire"
            ship: ["TIE Fighter", "TIE Interceptor", "TIE Bomber"]
        }
        {
            name: "In It For The Money"
            id: 384
            points: 1
            slot: "Command"
            faction: "Scum and Villainy"
            restrictions: [
                ["isUnique", true]
                ["Base", "Standard"]
            ]
        }
        {
            name: "Bounty"
            id: 385
            points: 1
            slot: "Command"
            faction: "Scum and Villainy"
            restrictions: [
                ["isUnique", true]
                ["Base", "Standard"]
            ]
        }
        {
            name: "Gamut Key"
            id: 386
            unique: true
            points: 6
            slot: "Crew"
            charge: 2
            recurring: 1
            faction: "Scum and Villainy"
        }
        {
            name: "Interloper Turn"
            id: 387
            points: 1
            slot: "Talent"
            recurring: 1
            ship: "TIE Defender"
        }
        {
            name: "Protectorate Gleb"
            id: 388
            unique: true
            points: 6
            slot: "Crew"
            faction: ["Galactic Empire", "First Order", "Scum and Villainy"]
            modifier_func: (stats) ->
                stats.actions.push 'R-Coordinate' if 'R-Coordinate' not in stats.actions
        }
        {
            name: "R4-B11"
            id: 389
            points: 3
            unique: true
            slot: "Astromech"
            faction: "Scum and Villainy"
        }
        {
            name: "Asajj Ventress (Command)"
            canonical_name: 'Asajj Ventress'.canonicalize()
            id: 390
            unique: true
            slot: "Command"
            points: 8
            faction: ["Scum and Villainy", "Separatist Alliance"]
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
            force: 1
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push '*Focus'
                stats.actions.push 'F-> Coordinate'
        }
        {
            name: "General Grievous (Command)"
            canonical_name: 'General Grievous'.canonicalize()
            id: 391
            unique: true
            slot: "Command"
            points: 5
            faction: "Separatist Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Hondo Ohnaka (Command)"
            canonical_name: 'Hondo Ohnaka'.canonicalize()
            id: 392
            unique: true
            slot: "Command"
            points: 7
            charge: 2
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.actions.push '*Coordinate'
                stats.actions.push 'R-> Jam'
        }
        {
            name: "Mar Tuuk"
            id: 393
            unique: true
            slot: "Command"
            points: 4
            faction: "Separatist Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Riff Tamson"
            id: 394
            unique: true
            slot: "Command"
            points: 6
            faction: "Separatist Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Zealous Captain"
            id: 395
            unique: true
            slot: "Command"
            points: 4
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Tractor Tentacles"
            id: 396
            slot: "Hardpoint"
            points: 0
            attackb: 2
            range: """1-2"""
            rangebonus: true
            ship: "Trident-class Assault Ship"
            restrictions: [
                ["Base", "Huge"]
            ]
        }
        {
            name: "Drill Beak"
            id: 397
            slot: "Hardpoint"
            points: 4
            attackb: 3
            range: """0-1"""
            rangebonus: true
            ship: "Trident-class Assault Ship"
            restrictions: [
                ["Slot", "Cargo"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Cargo"
            also_occupies_upgrades: [ "Cargo" ]
        }
        {
            name: "Enhanced Propulsion"
            id: 398
            slot: "Hardpoint"
            points: 6
            ship: "Trident-class Assault Ship"
            restrictions: [
                ["Slot", "Cargo"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Cargo"
            also_occupies_upgrades: [ "Cargo" ]
        }
        {
            name: "Proton Cannon Battery"
            id: 399
            slot: "Hardpoint"
            points: 10
            attackbull: 4
            range: """2-5"""
            restrictions: [
                ["Slot", "Cargo"]
                ["Base", "Huge"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Cargo"
            also_occupies_upgrades: [ "Cargo" ]
        }
        {
            name: "Droid Crew"
            id: 400
            slot: "Team"
            points: 5
            faction: "Separatist Alliance"
            modifier_func: (stats) ->
                stats.actions.push '*Calculate'
                stats.actions.push 'R-> Lock'
        }
        {
            name: "Tractor Technicians"
            id: 401
            slot: "Team"
            points: 2
        }
        {
            name: "Corsair Crew"
            id: 402
            slot: "Team"
            points: 5
            faction: "Scum and Villainy"
            restrictions: [
                ["Slot", "Gunner"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Gunner"
            also_occupies_upgrades: [ "Gunner" ]
        }
        {
            name: "Grappler"
            id: 403
            unique: true
            slot: "Title"
            ship: "Trident-class Assault Ship"
            points: 3
            modifier_func: (stats) ->
                stats.hull += 2
                stats.shields -= 1
        }
        {
            name: "Nautolan's Revenge"
            id: 404
            unique: true
            slot: "Title"
            points: 2
            ship: "Trident-class Assault Ship"
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.hull -= 2
                stats.shields += 1
                stats.energy += 1
        }
        {
            name: "Neimoidian Grasp"
            id: 405
            unique: true
            slot: "Title"
            points: 5
            ship: "Trident-class Assault Ship"
            faction: "Separatist Alliance"
            modifier_func: (stats) ->
                stats.shields -= 2
        }
        {
            name: "Trident"
            id: 406
            unique: true
            slot: "Title"
            points: 4
            ship: "Trident-class Assault Ship"
            faction: "Separatist Alliance"
            modifier_func: (stats) ->
                stats.energy += 1
        }
        {
            name: "Tracking Torpedoes"
            id: 407
            slot: "Torpedo"
            points: 8
            attack: 4
            charge: 3
            applies_condition: '''Tracking Torpedoes'''.canonicalize()
            restrictions: [
                ["Base", "Huge"]
            ]
        }
        {
            name: "L4E-R5"
            id: 408
            unique: true
            slot: "Astromech"
            points: 3
            faction: "Resistance"
            restrictions: [
                ["Action", "Rotate Arc"]
            ]
            modifier_func: (stats) ->
                stats.actions.push '*Rotate Arc'
                stats.actions.push '> Calculate'
        }
        {
            name: "Wartime Loadout"
            id: 409
            slot: "Configuration"
            points: 4
            ship: "BTA-NR2 Y-Wing"
            standardized: true
            restrictions: [
                ["Slot", "Modification"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Modification"
            also_occupies_upgrades: [ "Modification" ]
            modifier_func: (stats) ->
                stats.actions.push 'Lock'
                stats.actions.push 'Reload'
                stats.shields += 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Torpedo'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Missile'
                }
            ]
        }
        {
            name: "Watchful Astromech"
            id: 410
            slot: "Astromech"
            points: 2
        }
        {
            name: "Overtuned Modulators"
            id: 411
            slot: "Illicit"
            points: 3
            charge: 1
        }
        {
            name: "DT-798"
            id: 412
            unique: true
            faction: "First Order"
            slot: "Gunner"
            points: 3
        }
        {
            name: "Enhanced Jamming Suite"
            id: 413
            slot: "Configuration"
            points: 0
            ship: "TIE/WI Whisper"
            restrictions: [
                ["Slot", "Tech"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Tech"
            also_occupies_upgrades: [ "Tech" ]
            modifier_func: (stats) ->
                stats.actions.push '*Focus'
                stats.actions.push '> Jam'
                stats.actions.push '*Barrel Roll'
                stats.actions.push '> Jam'
                stats.actions.push '*Boost'
                stats.actions.push '> Jam'
                stats.actions.push 'Jam'
        }
        {
            name: "First Order Ordnance Tech"
            id: 414
            faction: "First Order"
            slot: "Gunner"
            points: 3
            modifier_func: (stats) ->
                stats.actions.push '*Reload'
                stats.actions.push '> Lock'
        }
        {
            name: "Sensor Scramblers"
            id: 415
            ship: ["TIE/VN Silencer", "TIE/WI Whisper"]
            slot: "Tech"
            points: 1
        }
        {
            name: "Babu Frik"
            unique: true
            id: 416
            faction: ["Scum and Villainy", "Resistance"]
            slot: "Illicit"
            points: 5
            charge: 3
        }
        {
            name: "Compassion"
            id: 417
            points: 1
            slot: "Force"
            restrictions: [
                ["Keyword", "Light Side"]
            ]
        }
        {
            name: "Malice"
            id: 418
            points: 6
            slot: "Force"
            restrictions: [
                ["Keyword", "Dark Side"]
            ]
        }
        {
            name: "Shattering Shot"
            id: 419
            points: 3
            slot: "Force"
        }
        {
            name: "Electro-Chaff Missiles"
            id: 420
            points: 4
            slot: "Missile"
            max_per_squad: 2
            charge: 1
            restrictions: [
                ["Slot", "Device"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Device"
            also_occupies_upgrades: [ "Device" ]
            applies_condition: '''Electro-Chaff Cloud'''.canonicalize()
        }
        {
            name: "Feedback Ping"
            id: 421
            points: 1
            slot: "Talent"
            restrictions: [
                ["Keyword", "TIE"]
                ["Action", "Reload"]
            ]
        }
        {
            name: "Sabine Wren (Command)"
            canonical_name: 'Sabine Wren'.canonicalize()
            id: 422
            points: 99
            slot: "Command"
            unique: true
            faction: "Rebel Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Standard"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.actions.push 'R-Coordinate' if 'R-Coordinate' not in stats.actions
            applies_condition: '''Trials of the Darksaber'''.canonicalize()
        }
        {
            name: "Clan Training"
            id: 423
            points: 3
            slot: "Talent"
            charge: 1
            restrictions: [
                ["Keyword", "Mandalorian"]
            ]
        }
        {
            name: "Ahsoka Tano (Crew)"
            canonical_name: 'Ahsoka Tano'.canonicalize()
            id: 424
            points: 9
            force: 1
            slot: "Crew"
            unique: true
            faction: ["Galactic Republic", "Scum and Villainy"]
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Bo-Katan Kryze (Republic/Separatist)"
            canonical_name: 'Bo-Katan Kryze'.canonicalize()
            id: 425
            points: 8
            slot: "Crew"
            unique: true
            faction: ["Galactic Republic", "Separatist Alliance"]
        }
        {
            name: "Bo-Katan Kryze (Rebel/Scum)"
            canonical_name: 'Bo-Katan Kryze'.canonicalize()
            id: 426
            points: 4
            slot: "Crew"
            unique: true
            faction: ["Rebel Alliance", "Scum and Villainy"]
        }
        {
            name: "Captain Hark"
            id: 427
            points: 3
            charge: 2
            slot: "Crew"
            faction: "Galactic Empire"
            unique: true
        }
        {
            name: "Fenn Rau"
            id: 428
            points: 6
            slot: "Crew"
            unique: true
            faction: ["Rebel Alliance", "Scum and Villainy"]
        }
        {
            name: "Gar Saxon"
            id: 429
            points: 8
            slot: "Crew"
            faction: "Galactic Empire"
            unique: true
        }
        {
            name: "Korkie Kryze"
            id: 430
            points: 5
            slot: "Crew"
            faction: "Galactic Republic"
            unique: true
        }
        {
            name: "Obi-Wan Kenobi"
            id: 431
            points: 11
            force: 1
            slot: "Crew"
            unique: true
            faction: "Galactic Republic"
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Pre Vizsla"
            id: 432
            points: 9
            slot: "Crew"
            faction: ["Scum and Villainy", "Separatist Alliance"]
            unique: true
            modifier_func: (stats) ->
                stats.actions.push 'Coordinate' if 'Coordinate' not in stats.actions
        }
        {
            name: "Prime Minister Almec"
            id: 433
            points: 9
            slot: "Crew"
            unique: true
            faction: ["Galactic Republic", "Scum and Villainy"]
        }
        {
            name: "Rook Kast"
            id: 434
            points: 11
            slot: "Crew"
            unique: true
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'R-Lock' if 'R-Lock' not in stats.actions
        }
        {
            name: "Satine Kryze"
            id: 435
            points: 10
            charge: 2
            recurring: 1
            slot: "Crew"
            unique: true
            faction: "Galactic Republic"
        }
        {
            name: "Savage Opress"
            id: 436
            points: 10
            force: 1
            slot: "Crew"
            unique: true
            faction: ["Separatist Alliance", "Scum and Villainy"]
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Tal Merrik"
            id: 437
            points: 7
            slot: "Crew"
            unique: true
            faction: "Separatist Alliance"
            applies_condition: '''False Friend'''.canonicalize()
        }
        {
            name: "Tristan Wren"
            id: 438
            points: 2
            charge: 1
            recurring: 1
            slot: "Crew"
            unique: true
            faction: ["Rebel Alliance", "Galactic Empire", "Scum and Villainy"]
            restrictions: [
                ["orUnique", "Gar Saxon"]
                ["Faction", "Rebel Alliance"]
            ]
        }
        {
            name: "Ursa Wren"
            id: 439
            points: 6
            slot: "Crew"
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Maul (Mandalore)"
            canonical_name: 'Maul'.canonicalize()
            id: 440
            points: 10
            slot: "Crew"
            unique: true
            force: 1
            faction: "Scum and Villainy"
            restrictions: [
                ["Slot", "Crew"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Illicit"
                }
            ]
        }
        {
            name: "Gar Saxon (Gunner)"
            canonical_name: 'Gar Saxon'.canonicalize()
            id: 441
            points: 9
            slot: "Gunner"
            unique: true
            faction: "Scum and Villainy"
            restrictions: [
                ["Base", "Large or Huge"]
            ]
        }
        {
            name: "Tiber Saxon"
            id: 442
            points: 4
            charge: 2
            recurring: 1
            slot: "Gunner"
            faction: "Galactic Empire"
            unique: true
        }
        {
            name: "Ursa Wren (Gunner)"
            canonical_name: 'Ursa Wren'.canonicalize()
            id: 443
            points: 6
            slot: "Gunner"
            unique: true
            faction: ["Galactic Republic", "Separatist Alliance"]
        }
        {
            name: "Blazer Bomb"
            id: 444
            points: 4
            charge: 1
            slot: "Device"
            unique: true
            applies_condition: '''Blazer Bomb'''.canonicalize()
        }
        {
            name: "Beskar Reinforced Plating"
            id: 445
            points: 6
            slot: "Modification"
            charge: 2
            restrictions: [
                ["Keyword", "Mandalorian"]
            ]
        }
        {
            name: "Mandalorian Optics"
            id: 446
            points: 5
            slot: "Modification"
            charge: 2
            restrictions: [
                ["Keyword", "Mandalorian"]
            ]
        }
        {
            name: "Gauntlet"
            id: 447
            points: 0
            slot: "Title"
            unique: true
            charge: 2
            ship: "Gauntlet Fighter"
            faction: ["Galactic Republic", "Separatist Alliance"]
            restrictions: [
                ["Slot", "Modification"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Modification"
            also_occupies_upgrades: [ "Modification" ]
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Crew"
                }
            ]
        }
        {
            name: "Nightbrother"
            id: 448
            points: 0
            slot: "Title"
            unique: true
            charge: 2
            recurring: 1
            ship: "Gauntlet Fighter"
            faction: ["Rebel Alliance", "Scum and Villainy"]
            restrictions: [
                ["Slot", "Modification"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Modification"
            also_occupies_upgrades: [ "Modification" ]
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Crew"
                }
            ]
        }
        {
            name: "Swivel Wing"
            id: 449
            points: 0
            slot: "Configuration"
            ship: "Gauntlet Fighter"
        }
        {
            name: "Clan Wren Commandos"
            id: 450
            points: 7
            slot: "Crew"
            unique: true
            charge: 2
            faction: "Rebel Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Non-Small"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Razor Crest"
            id: 451
            points: 0
            unique: true
            slot: "Title"
            ship: "ST-70 Assault Ship"
            modifier_func: (stats) ->
                stats.actions.push '*Evade'
                stats.actions.push 'R-> Barrel Roll'
        }
        {
            name: "The Mandalorian"
            id: 452
            points: 2
            unique: true
            slot: "Crew"
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'Reinforce'
        }
        {
            name: "The Child"
            id: 453
            points: 6
            unique: true
            slot: "Crew"
            force: 2
            forcerecurring: 0
            faction: ["Scum and Villainy", "Rebel Alliance", "Galactic Empire"]
            applies_condition: '''Merciless Pursuit'''.canonicalize()
            modifier_func: (stats) ->
                stats.force += 2
                stats.forcerecurring = 0
        }
        {
            name: "Tracking Fob"
            id: 454
            points: 4
            slot: "Illicit"
            max_per_squad: 3
            restrictions: [
                ["Keyword", "Bounty Hunter"]
            ]
            applies_condition: '''Marked for Elimination'''.canonicalize()
        }
        {
            name: "Notorious"
            id: 455
            points: 2
            charge: 2
            recurring: 1
            slot: "Talent"
            unique: true
            restrictions: [
                ["Equipped", "Illicit"]
            ]
        }
        {
            name: "Enduring"
            id: 456
            points: 2
            slot: "Talent"
        }
        {
            name: "IG-11"
            id: 457
            points: 6
            slot: "Crew"
            unique: true
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate'
        }
        {
            name: "Greef Karga"
            id: 458
            points: 6
            slot: "Crew"
            unique: true
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'R-Coordinate'
        }
        {
            name: "Kuiil"
            id: 459
            points: 4
            slot: "Crew"
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Peli Motto"
            id: 460
            points: 3
            slot: "Crew"
            unique: true
            faction: "Scum and Villainy"
            restrictions: [
                ["Base", "Medium or Large"]
            ]
        }
        {
            name: "Migs Mayfeld"
            id: 461
            points: 5
            slot: "Gunner"
            unique: true
            faction: ["Scum and Villainy","Galactic Empire"]
        }
        {
            name: "Burnout Thrusters"
            id: 462
            points: 6
            slot: "Modification"
            faction: ["Scum and Villainy","Resistance"]
            restrictions: [
                ["Base", "Small or Medium"]
            ]
        }
        {
            name: "Hotshot Tail Blaster"
            id: 463
            points: 2
            attackb: 2
            range: """0-1"""
            rangebonus: true
            charge: 2
            slot: "Illicit"
            restrictions: [
                ["Base", "Medium or Large"]
            ]
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
            unique: true
        }
        {
            name: 'DRK-1 Probe Droid'
            id: 13
        }
        {
            name: 'Buzz Droid Swarm'
            id: 14
        }
        {
            name: '''It's the Resistance'''
            id: 15
        }
        {
            name: 'Electro-Proton Bomb'
            id: 16
        }
        {
            name: 'Decoyed'
            id: 17
            unique: true
        }
        {
            name: 'Compromising Intel'
            id: 18
            unique: true
        }
        {
            name: 'Cluster Mine'
            id: 19
        }
        {
            name: 'Ion Bomb'
            id: 20
        }
        {
            name: 'Concussion Bomb'
            id: 21
        }
        {
            name: 'Thermal Detonator'
            id: 22
        }
        {
            name: 'Sensor Buoy'
            id: 23
        }
        {
            name: 'Fearful Prey'
            id: 24
        }
        {
            name: 'You Should Thank Me'
            id: 25
        }
        {
            name: '''You'd Better Mean Business'''
            id: 26
        }
        {
            name: '''Spare Parts'''
            id: 27
        }
        {
            name: '''Electro-Chaff Cloud'''
            id: 28
        }
        {
            name: '''Tracking Torpedoes'''
            id: 29
        }
        {
            name: '''False Friend'''
            id: 30
            unique: true
        }
        {
            name: '''Trials of the Darksaber'''
            id: 31
            unique: true
        }
        {
            name: '''Blaze Bomb'''
            id: 32
        }
        {
            name: '''Merciless Pursuit'''
            id: 33
        }
        {
            name: '''Marked for Elimination'''
            id: 34
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
                "Cluster Missiles"
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
            threat: 3
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
                "Proton Torpedoes"
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
                "Conner Nets"
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
                "Veteran Turret Gunner"
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
                "Proton Bombs"
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
                "Barrage Rockets"
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
                "R2-D2 (Crew)"
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
                "Adv. Proton Torpedoes"
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
                "Adv. Proton Torpedoes"
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
                "Seismic Charges"
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
                "Seismic Charges"
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
                "Seismic Charges"
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
            threat: 2
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
                "Adv. Proton Torpedoes"
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
                "Adv. Proton Torpedoes"
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
                "Cluster Missiles"
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
                "Zuckuss"
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
                "Freelance Slicer"
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
                "Primed Thrusters"
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
                "Han Solo (Resistance)"
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
                "Targeting Computer"
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
                "Adv. Proton Torpedoes"
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
                "Lando's Millennium Falcon"
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
        {
            id: 321
            faction: "Galactic Republic"
            pilot: '"Wolffe"'
            ship: "ARC-170"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "R4-P44"
                "Veteran Tail Gunner"
                "Perceptive Copilot"
            ]
        }
        {
            id: 322
            faction: "Galactic Republic"
            pilot: '"Sinker"'
            ship: "ARC-170"
            threat: 2
            upgrades: [
                "Expert Handling"
            ]
        }
        {
            id: 323
            faction: "Galactic Republic"
            pilot: "104th Battalion Pilot"
            ship: "ARC-170"
            threat: 2
            upgrades: [
                "Dedicated"
                "R4-P Astromech"
            ]
        }
        {
            id: 324
            faction: "Galactic Republic"
            pilot: '"Odd Ball" (ARC-170)'
            ship: "ARC-170"
            threat: 3
            upgrades: [
                "Elusive"
                "Seasoned Navigator"
                "Clone Commander Cody"
                "Afterburners"
            ]
        }
        {
            id: 325
            faction: "Galactic Republic"
            pilot: '"Jag"'
            ship: "ARC-170"
            threat: 3
            upgrades: [
                "Predator"
                "Ion Torpedoes"
                "R2 Astromech"
                "Seventh Fleet Gunner"
                "Shield Upgrade"
            ]
        }
        {
            id: 326
            faction: "Galactic Republic"
            pilot: "Squad Seven Veteran"
            ship: "ARC-170"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Proton Torpedoes"
                "R4-P Astromech"
                "Novice Technician"
                "Seventh Fleet Gunner"
            ]
        }
        {
            id: 327
            faction: "Scum and Villainy"
            pilot: "Black Sun Soldier"
            ship: "Z-95 Headhunter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Cluster Missiles"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 328
            faction: "Scum and Villainy"
            pilot: "Binayre Pirate"
            ship: "Z-95 Headhunter"
            threat: 1
            upgrades: [
                "Deadman's Switch"
            ]
        }
        {
            id: 329
            faction: "Scum and Villainy"
            pilot: "N'dru Suhlak"
            ship: "Z-95 Headhunter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Outmaneuver"
                "Hull Upgrade"
                "Stealth Device"
            ]
        }
        {
            id: 330
            faction: "Scum and Villainy"
            pilot: "Kaa'to Leeachos"
            ship: "Z-95 Headhunter"
            threat: 2
            upgrades: [
                "Saturation Salvo"
                "Cluster Missiles"
                "Concussion Missiles"
                "Deadman's Switch"
                "Munitions Failsafe"
            ]
        }
        {
            id: 331
            faction: "Galactic Empire"
            pilot: "Black Squadron Scout"
            ship: "TIE Striker"
            threat: 2
            upgrades: [
                "Predator"
                "Conner Nets"
            ]
        }
        {
            id: 332
            faction: "Galactic Empire"
            pilot: "Planetary Sentinel"
            ship: "TIE Striker"
            threat: 2
            upgrades: [
                "Proton Bombs"
                "Skilled Bombardier"
                "Hull Upgrade"
            ]
        }
        {
            id: 333
            faction: "Galactic Empire"
            pilot: '"Duchess"'
            ship: "TIE Striker"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Conner Nets"
                "Afterburners"
                "Hull Upgrade"
            ]
        }
        {
            id: 334
            faction: "Galactic Empire"
            pilot: '"Countdown"'
            ship: "TIE Striker"
            threat: 3
            upgrades: [
                "Elusive"
                "Proton Bombs"
                "Skilled Bombardier"
                "Shield Upgrade"
            ]
        }
        {
            id: 335
            faction: "Galactic Empire"
            pilot: '"Pure Sabacc"'
            ship: "TIE Striker"
            threat: 2
            upgrades: [
                "Trick Shot"
                "Shield Upgrade"
            ]
        }
        {
            id: 336
            skip: true
            faction: "Galactic Empire"
            pilot: "Planetary Sentinel"
            ship: "TIE Striker"
            threat: 2
            upgrades: [
                "Proton Bombs"
                "Skilled Bombardier"
                "Hull Upgrade"
            ]
        }
        {
            id: 337
            faction: "Separatist Alliance"
            pilot: "0-66"
            ship: "Sith Infiltrator"
            threat: 3
            upgrades: [
                "Chancellor Palpatine"
                "Shield Upgrade"
                "Scimitar"
            ]
        }
        {
            id: 338
            faction: "Separatist Alliance"
            pilot: "Dark Courier"
            ship: "Sith Infiltrator"
            threat: 3
            upgrades: [
                "Count Dooku"
                "General Grievous"
                "K2-B4"
                "Scimitar"
            ]
        }
        {
            id: 339
            faction: "Separatist Alliance"
            pilot: "Darth Maul"
            ship: "Sith Infiltrator"
            threat: 4
            upgrades: [
                "Hate"
                "Heavy Laser Cannon"
                "Perceptive Copilot"
                "DRK-1 Probe Droids"
                "Shield Upgrade"
                "Scimitar"
            ]
        }
        {
            id: 340
            faction: "Separatist Alliance"
            pilot: "Count Dooku"
            ship: "Sith Infiltrator"
            threat: 4
            upgrades: [
                "Brilliant Evasion"
                "Predictive Shot"
                "Ion Torpedoes"
                "General Grievous"
                "Hull Upgrade"
                "Scimitar"
            ]
        }
        {
            id: 341
            faction: "Separatist Alliance"
            pilot: "DFS-311"
            ship: "Vulture-class Droid Fighter"
            threat: 1
            upgrades: [
                "Grappling Struts"
            ]
        }
        {
            id: 342
            faction: "Separatist Alliance"
            pilot: "Precise Hunter"
            ship: "Vulture-class Droid Fighter"
            threat: 2
            upgrades: [
                "Concussion Missiles"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 343
            faction: "Separatist Alliance"
            pilot: "Separatist Drone"
            ship: "Vulture-class Droid Fighter"
            threat: 2
            upgrades: [
                "Energy-Shell Charges"
                "Grappling Struts"
                "Shield Upgrade"
            ]
        }
        {
            id: 344
            faction: "Separatist Alliance"
            pilot: "Haor Chall Prototype"
            ship: "Vulture-class Droid Fighter"
            threat: 2
            upgrades: [
                "Discord Missiles"
                "Energy-Shell Charges"
                "Stealth Device"
            ]
        }
        {
            id: 345
            faction: "Separatist Alliance"
            pilot: "Trade Federation Drone"
            ship: "Vulture-class Droid Fighter"
            threat: 1
            upgrades: [
                "Energy-Shell Charges"
            ]
        }
        {
            id: 346
            faction: "Separatist Alliance"
            pilot: "DFS-081"
            ship: "Vulture-class Droid Fighter"
            threat: 2
            upgrades: [
                "Proton Rockets"
                "Grappling Struts"
                "Hull Upgrade"
            ]
        }
        {
            id: 347
            faction: "Separatist Alliance"
            pilot: "Haor Chall Prototype"
            ship: "Vulture-class Droid Fighter"
            threat: 2
            upgrades: [
                "Energy-Shell Charges"
                "Stealth Device"
                "Afterburners"
            ]
        }
        {
            id: 348
            faction: "Separatist Alliance"
            pilot: "General Grievous"
            ship: "Belbullab-22 Starfighter"
            threat: 3
            upgrades: [
                "Treacherous"
                "Impervium Plating"
                "Soulless One"
                "TV-94"
            ]
        }
        {
            id: 349
            faction: "Separatist Alliance"
            pilot: "Wat Tambor"
            ship: "Belbullab-22 Starfighter"
            threat: 3
            upgrades: [
                "Intimidation"
                "Kraken"
                "Shield Upgrade"
            ]
        }
        {
            id: 350
            faction: "Separatist Alliance"
            pilot: "Skakoan Ace"
            ship: "Belbullab-22 Starfighter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Afterburners"
            ]
        }
        {
            id: 351
            faction: "Separatist Alliance"
            pilot: "Captain Sear"
            ship: "Belbullab-22 Starfighter"
            threat: 3
            upgrades: [
                "Daredevil"
                "Impervium Plating"
                "Kraken"
                "Stealth Device"
            ]
        }
        {
            id: 352
            faction: "Separatist Alliance"
            pilot: "Feethan Ottraw Autopilot"
            ship: "Belbullab-22 Starfighter"
            threat: 2
            upgrades: [
                "Impervium Plating"
                "TV-94"
            ]
        }
        {
            id: 353
            faction: "Resistance"
            pilot: "Cova Nell"
            ship: "Resistance Transport"
            threat: 3
            upgrades: [
                "Composure"
                "Leia Organa (Resistance)"
                "Korr Sella"
            ]
        }
        {
            id: 354
            faction: "Resistance"
            pilot: "Pammich Nerro Goode"
            ship: "Resistance Transport"
            threat: 2
            upgrades: [
                "Autoblasters"
                "R5-X3"
                "Kaydel Connix"
                "Spare Parts Canisters"
            ]
        }
        {
            id: 355
            faction: "Resistance"
            pilot: "Nodin Chavdri"
            ship: "Resistance Transport"
            threat: 2
            upgrades: [
                "Plasma Torpedoes"
                "R2-HA"
                "Angled Deflectors"
            ]
        }
        {
            id: 356
            faction: "Resistance"
            pilot: "Logistics Division Pilot"
            ship: "Resistance Transport"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "Larma D'Acy"
                "Amilyn Holdo"
            ]
        }
        {
            id: 357
            faction: "Resistance"
            pilot: "Rose Tico"
            ship: "Resistance Transport Pod"
            threat: 1
            upgrades: [
                "PZ-4CO"
            ]
        }
        {
            id: 358
            faction: "Resistance"
            pilot: "Finn"
            ship: "Resistance Transport Pod"
            threat: 1
            upgrades: [
                "Predator"
            ]
        }
        {
            id: 359
            faction: "Resistance"
            pilot: "BB-8"
            ship: "Resistance Transport Pod"
            threat: 2
            upgrades: [
                "Autoblasters"
                "Afterburners"
            ]
        }
        {
            id: 360
            faction: "Resistance"
            pilot: "Vi Moradi"
            ship: "Resistance Transport Pod"
            threat: 1
            upgrades: [
                "GA-97"
            ]
        }
        {
            id: 361
            faction: "Galactic Republic"
            pilot: "Padmé Amidala"
            ship: "Naboo Royal N-1 Starfighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Collision Detector"
            ]
        }
        {
            id: 362
            faction: "Galactic Republic"
            pilot: "Dineé Ellberger"
            ship: "Naboo Royal N-1 Starfighter"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "R3 Astromech"
                "Plasma Torpedoes"
            ]
        }
        {
            id: 363
            faction: "Galactic Republic"
            pilot: "Bravo Flight Officer"
            ship: "Naboo Royal N-1 Starfighter"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "R2-C4"
                "Proton Torpedoes"
            ]
        }
        {
            id: 364
            faction: "Galactic Republic"
            pilot: "Anakin Skywalker (N-1 Starfighter)"
            ship: "Naboo Royal N-1 Starfighter"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Proton Torpedoes"
                "Heightened Perception"
                "R2 Astromech"
                "Collision Detector"
            ]
        }
        {
            id: 365
            faction: "Galactic Republic"
            pilot: "Ric Olié"
            ship: "Naboo Royal N-1 Starfighter"
            threat: 2
            upgrades: [
                "Daredevil"
                "R2-A6"
            ]
        }
        {
            id: 366
            faction: "Galactic Republic"
            pilot: "Naboo Handmaiden"
            ship: "Naboo Royal N-1 Starfighter"
            threat: 2
            upgrades: [
                "Plasma Torpedoes"
                "R5 Astromech"
            ]
        }
        {
            id: 367
            faction: "Separatist Alliance"
            pilot: "Baktoid Prototype"
            ship: "Hyena-Class Droid Bomber"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "Barrage Rockets"
                "Hull Upgrade"
            ]
        }
        {
            id: 368
            faction: "Separatist Alliance"
            pilot: "Bombardment Drone"
            ship: "Hyena-Class Droid Bomber"
            threat: 2
            upgrades: [
                "Trajectory Simulator"
                "Delayed Fuses"
                "Bomblet Generator"
            ]
        }
        {
            id: 369
            faction: "Separatist Alliance"
            pilot: "DBS-32C"
            ship: "Hyena-Class Droid Bomber"
            threat: 2
            upgrades: [
                "TA-175"
                "Stealth Device"
                "Landing Struts"
            ]
        }
        {
            id: 370
            faction: "Separatist Alliance"
            pilot: "DBS-404"
            ship: "Hyena-Class Droid Bomber"
            threat: 2
            upgrades: [
                "Predator"
                "Plasma Torpedoes"
                "Afterburners"
                "Landing Struts"
            ]
        }
        {
            id: 371
            faction: "Separatist Alliance"
            pilot: "Separatist Bomber"
            ship: "Hyena-Class Droid Bomber"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "Diamond-Boron Missiles"
            ]
        }
        {
            id: 372
            faction: "Separatist Alliance"
            pilot: "Techno Union Bomber"
            ship: "Hyena-Class Droid Bomber"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "Electro-Proton Bomb"
                "Delayed Fuses"
            ]
        }
        {
            id: 373
            faction: "Galactic Republic"
            pilot: "Plo Koon"
            ship: "Delta-7 Aethersprite"
            threat: [5,6,7,8]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Veteran Wing Leader"
                "Synchronized Console"
                "Brilliant Evasion"
                "Delta-7B"
            ]
            wingmateId: 374
            wingleader: true
        }
        {
            id: 374
            faction: "Galactic Republic"
            pilot: "Gold Squadron Trooper"
            ship: "V-19 Torrent"
            suffix: ", Plo Koons wing"
            threat: '*'
            upgrades: [
                "Concussion Missiles"
                "Synchronized Console"
            ]
            linkedId: 373
            wingmate: true
        }
        {
            id: 375
            faction: "Rebel Alliance"
            pilot: "Echo Base Evacuees"
            ship: "GR-75 Medium Transport"
            threat: 4
            upgrades: [
                "Bright Hope"
                "Optimized Power Core"
                "Adaptive Shields"
                "Comms Team"
                "Point-Defense Battery"
                "Carlist Rieekan"
                "Novice Technician"
            ]
        }
        {
            id: 376
            faction: "Rebel Alliance"
            pilot: "Alderaanian Guard"
            ship: "CR90 Corellian Corvette"
            threat: 9
            upgrades: [
                "Dodonna's Pride"
                "Comms Team"
                "Boosted Scanners"
                "Sensor Experts"
                "Turbolaser Battery"
                "Ion Cannon Battery"
                "Jan Dodonna"
                "Toryn Farr"
            ]
        }
        {
            id: 377
            faction: "Galactic Empire"
            pilot: "Outer Rim Garrison"
            ship: "Gozanti-class Cruiser"
            threat: 5
            upgrades: [
                "Requiem"
                "Optimized Power Core"
                "Boosted Scanners"
                "Sensor Experts"
                "Comms Team"
                "Dorsal Turret"
                "Targeting Battery"
                "Strategic Commander"
            ]
        }
        {
            id: 378
            faction: "Galactic Empire"
            pilot: "Outer Rim Patrol"
            ship: "Raider-class Corvette"
            threat: 9
            upgrades: [
                "Impetuous"
                "Boosted Scanners"
                "Bombardment Specialists"
                "Ordnance Team"
                "Concussion Missiles"
                "Adv. Proton Torpedoes"
                "Turbolaser Battery"
                "Ordnance Tubes"
                "Captain Needa"
            ]
        }
        {
            id: 379
            faction: "Scum and Villainy"
            pilot: "Syndicate Smugglers"
            ship: "C-ROC Cruiser"
            threat: 5
            upgrades: [
                "Merchant One"
                "Quick-Release Locks"
                "Tibanna Reserves"
                "Adaptive Shields"
                "IG-RM Droids"
                "Comms Team"
                "Dorsal Turret"
                "Point-Defense Battery"
                "Azmorigan"
                "Novice Technician"
            ]
        }
        {
            id: 380
            faction: "Resistance"
            pilot: "Colossus Station Mechanic"
            ship: "Fireball"
            threat: 1
            upgrades: [
                "Snap Shot"
            ]
        }
        {
            id: 381
            faction: "Resistance"
            pilot: "Jarek Yeager"
            ship: "Fireball"
            threat: 2
            upgrades: [
                "Targeting Computer"
                "Advanced SLAM"
                "Mag-Pulse Warheads"
                "Elusive"
            ]
        }
        {
            id: 382
            faction: "Resistance"
            pilot: "Kazuda Xiono"
            ship: "Fireball"
            threat: 2
            upgrades: [
                "Kaz's Fireball"
                "Advanced SLAM"
                "Coaxium Hyperfuel"
                "R1-J5"
                "Outmaneuver"
            ]
        }
        {
            id: 383
            faction: "Resistance"
            pilot: "R1-J5"
            ship: "Fireball"
            threat: 2
            upgrades: [
                "Targeting Computer"
                "Afterburners"
                "Mag-Pulse Warheads"
                "Coaxium Hyperfuel"
            ]
        }
        {
            id: 384
            faction: "Resistance"
            pilot: "New Republic Volunteers"
            ship: "GR-75 Medium Transport"
            threat: 4
            upgrades: [
                "Tibanna Reserves"
                "Boosted Scanners"
                "Sensor Experts"
                "Dorsal Turret"
                "Ion Cannon Battery"
                "Stalwart Captain"
            ]
        }
        {
            id: 385
            faction: "First Order"
            pilot: "Major Vonreg"
            ship: "TIE/Ba Interceptor"
            threat: 3
            upgrades: [
                "Mag-Pulse Warheads"
                "Deuterium Power Cells"
                "Outmaneuver"
            ]
        }
        {
            id: 386
            faction: "First Order"
            pilot: '"Holo"'
            ship: "TIE/Ba Interceptor"
            threat: 3
            upgrades: [
                "Hull Upgrade"
                "Munitions Failsafe"
                "Mag-Pulse Warheads"
                "Proud Tradition"
            ]
        }
        {
            id: 387
            faction: "First Order"
            pilot: '"Ember"'
            ship: "TIE/Ba Interceptor"
            threat: 3
            upgrades: [
                "Afterburners"
                "Concussion Missiles"
                "Predator"
                "Elusive"
            ]
        }
        {
            id: 388
            faction: "First Order"
            pilot: "First Order Provocateur"
            ship: "TIE/Ba Interceptor"
            threat: 2
            upgrades: [
                "Snap Shot"
            ]
        }
        {
            id: 389
            faction: "First Order"
            pilot: "First Order Sympathizers"
            ship: "Gozanti-class Cruiser"
            threat: 4
            upgrades: [
                "Adaptive Shields"
                "Gunnery Specialists"
                "Damage Control Team"
                "Point-Defense Battery"
                "Strategic Commander"
            ]
        }
        {
            id: 390
            faction: "First Order"
            pilot: "First Order Collaborators"
            ship: "Raider-class Corvette"
            threat: 8
            upgrades: [
                "Boosted Scanners"
                "Comms Team"
                "Bombardment Specialists"
                "Point-Defense Battery"
                "Ion Cannon Battery"
                "Stalwart Captain"
                "Novice Technician"
            ]
        }
        {
            id: 391
            faction: "Galactic Republic"
            pilot: "Shadow Squadron Veteran"
            ship: "BTL-B Y-Wing"
            threat: 3
            upgrades: [
                "R5 Astromech"
                "Proton Torpedoes"
                "Ion Cannon Turret"
                "Snap Shot"
            ]
        }
        {
            id: 392
            faction: "Galactic Republic"
            pilot: "Anakin Skywalker (Y-Wing)"
            ship: "BTL-B Y-Wing"
            threat: 4
            upgrades: [
                "Proton Bombs"
                "R2 Astromech"
                "Ahsoka Tano"
                "Proton Torpedoes"
                "Ion Cannon Turret"
                "Precognitive Reflexes"
            ]
        }
        {
            id: 393
            faction: "Galactic Republic"
            pilot: "R2-D2"
            ship: "BTL-B Y-Wing"
            threat: 2
            upgrades: [
                "Proton Bombs"
                "C-3PO"
                "Ion Cannon Turret"
            ]
        }
        {
            id: 394
            faction: "Galactic Republic"
            pilot: '"Odd Ball" (Y-Wing)'
            ship: "BTL-B Y-Wing"
            threat: 3
            upgrades: [
                "Hull Upgrade"
                "R3 Astromech"
                "Proton Torpedoes"
                "Ion Cannon Turret"
                "Predator"
            ]
        }
        {
            id: 395
            faction: "Galactic Republic"
            pilot: '"Matchstick"'
            ship: "BTL-B Y-Wing"
            threat: 3
            upgrades: [
                "Shield Upgrade"
                "Delayed Fuses"
                "Proton Bombs"
                "R2 Astromech"
                "Ion Cannon Turret"
                "Elusive"
            ]
        }
        {
            id: 396
            faction: "Galactic Republic"
            pilot: '"Broadside"'
            ship: "BTL-B Y-Wing"
            threat: 2
            upgrades: [
                "Hull Upgrade"
                "R5 Astromech"
                "Ion Cannon Turret"
                "Snap Shot"
            ]
        }
        {
            id: 397
            faction: "Galactic Republic"
            pilot: '"Goji"'
            ship: "BTL-B Y-Wing"
            threat: 2
            upgrades: [
                "Afterburners"
                "Electro-Proton Bomb"
            ]
        }
        {
            id: 398
            faction: "Galactic Republic"
            pilot: "Red Squadron Bomber"
            ship: "BTL-B Y-Wing"
            threat: 2
            upgrades: [
                "Delayed Fuses"
                "Proton Bombs"
                "R2 Astromech"
                "Ion Cannon Turret"
            ]
        }
        {
            id: 399
            faction: "Galactic Republic"
            pilot: "Republic Judiciary"
            ship: "CR90 Corellian Corvette"
            threat: 9
            upgrades: [
                "Strategic Commander"
                "Targeting Battery"
                "Turbolaser Battery"
                "Damage Control Team"
                "Agile Gunner"
                "Boosted Scanners"
                "Gunnery Specialists"
                "Seasoned Navigator"
            ]
        }
        {
            id: 400
            faction: "Separatist Alliance"
            pilot: "Stalgasin Hive Guard"
            ship: "Nantex-Class Starfighter"
            threat: 2
            upgrades: [
                "Targeting Computer"
                "Gravitic Deflection"
                "Ensnare"
            ]
        }
        {
            id: 401
            faction: "Separatist Alliance"
            pilot: "Sun Fac"
            ship: "Nantex-Class Starfighter"
            threat: 3
            upgrades: [
                "Shield Upgrade"
                "Afterburners"
                "Predator"
                "Ensnare"
            ]
        }
        {
            id: 402
            faction: "Separatist Alliance"
            pilot: "Berwer Kret"
            ship: "Nantex-Class Starfighter"
            threat: 2
            upgrades: [
                "Hull Upgrade"
                "Snap Shot"
                "Ensnare"
            ]
        }
        {
            id: 403
            faction: "Separatist Alliance"
            pilot: "Chertek"
            ship: "Nantex-Class Starfighter"
            threat: 2
            upgrades: [
                "Targeting Computer"
                "Juke"
                "Gravitic Deflection"
            ]
        }
        {
            id: 404
            faction: "Separatist Alliance"
            pilot: "Gorgol"
            ship: "Nantex-Class Starfighter"
            threat: 2
            upgrades: [
                "Stealth Device"
                "Shield Upgrade"
                "Gravitic Deflection"
            ]
        }
        {
            id: 405
            faction: "Separatist Alliance"
            pilot: "Separatist Privateers"
            ship: "C-ROC Cruiser"
            threat: 6
            upgrades: [
                "Stalwart Captain"
                "Turbolaser Battery"
                "Dorsal Turret"
                "Heavy Laser Cannon"
                "Cluster Missiles"
                "Bombardment Specialists"
                "Boosted Scanners"
                "Tibanna Reserves"
                "Corsair Refit"
            ]
        }
        {
            id: 406
            faction: "Galactic Empire"
            pilot: "Darth Vader"
            ship: "TIE Advanced"
            threat: [6,7,8,9]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Agent of the Empire"
                "Fire-Control System"
                "Supernatural Reflexes"
                "Cluster Missiles"
            ]
            wingmateId: 407
            wingleader: true
        }
        {
            id: 407
            faction: "Galactic Empire"
            pilot: "Black Squadron Ace"
            ship: "TIE Fighter"
            suffix: ", Darth Vaders wing"
            threat: '*'
            upgrades: [
                "Crack Shot"
            ]
            linkedId: 406
            wingmate: true
        }
        {
            id: 408
            faction: "Resistance"
            pilot: "Poe Dameron"
            ship: "T-70 X-Wing"
            threat: [9,11,13,15]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Veteran Wing Leader"
                "Targeting Synchronizer"
                "BB-8"
                "Black One"
            ]
            wingmateId: 409
            wingleader: true
        }
        {
            id: 409
            faction: "Resistance"
            pilot: "Black Squadron Ace (T-70)"
            ship: "T-70 X-Wing"
            suffix: ", Poe Damerons wing"
            threat: '*'
            upgrades: [
                "Proton Torpedoes"
            ]
            linkedId: 408
            wingmate: true
        }
        {
            id: 410
            faction: "First Order"
            pilot: "Kylo Ren"
            ship: "TIE/VN Silencer"
            threat: [6,8]
            wingmates: [2,3]
            suffix: " and his wing"
            upgrades: [
                "First Order Elite"
                "Heightened Perception"
                "Dreadnought Hunter"
                "Proton Torpedoes"
            ]
            wingmateId: 411
            wingleader: true
        }
        {
            id: 411
            faction: "First Order"
            pilot: "Omega Squadron Expert"
            ship: "TIE/SF Fighter"
            suffix: ", Kylo Rens wing"
            threat: '*'
            upgrades: [
                "Ion Missiles"
                "Special Forces Gunner"
            ]
            linkedId: 410
            wingmate: true
        }
        {
            id: 412
            faction: "Separatist Alliance"
            pilot: "General Grievous"
            ship: "Belbullab-22 Starfighter"
            threat: [5,6,7,8]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Veteran Wing Leader"
                "Kraken"
                "Predator"
                "Soulless One"
            ]
            wingmateId: 413
            wingleader: true
        }
        {
            id: 413
            faction: "Separatist Alliance"
            pilot: "Separatist Drone"
            ship: "Vulture-class Droid Fighter"
            suffix: ", General Grievous wing"
            threat: '*'
            upgrades: [
                "Energy-Shell Charges"
            ]
            linkedId: 412
            wingmate: true
        }
        {
            id: 414
            faction: "Rebel Alliance"
            pilot: "Luke Skywalker"
            ship: "X-Wing"
            threat: [8,10,12,14]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Veteran Wing Leader"
                "Proton Torpedoes"
                "Instinctive Aim"
                "R2-D2"
                "Servomotor S-Foils"
            ]
            wingmateId: 415
            wingleader: true
        }
        {
            id: 415
            faction: "Rebel Alliance"
            pilot: "Red Squadron Veteran"
            ship: "X-Wing"
            suffix: ", Luke Skywalkers wing"
            threat: '*'
            upgrades: [
                "Proton Torpedoes"
            ]
            linkedId: 414
            wingmate: true
        }
        {
            id: 416
            faction: "Scum and Villainy"
            pilot: "Fenn Rau"
            ship: "Fang Fighter"
            threat: [8,10,12,14]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Veteran Wing Leader"
                "Fearless"
                "Daredevil"
                "Afterburners"
            ]
            wingmateId: 417
            wingleader: true
        }
        {
            id: 417
            faction: "Scum and Villainy"
            pilot: "Skull Squadron Pilot"
            ship: "Fang Fighter"
            suffix: ", Fenn Raus wing"
            threat: '*'
            upgrades: [
                "Fearless"
            ]
            linkedId: 416
            wingmate: true
        }
        {
            id: 418
            faction: "Rebel Alliance"
            pilot: "Gina Moonsong"
            ship: "B-Wing"
            threat: 3
            upgrades: [
                "Elusive"
                "Afterburners"
                "Passive Sensors"
                "Stabilized S-Foils"
                "Autoblasters"
            ]
        }
        {
            id: 419
            faction: "Rebel Alliance"
            pilot: "Leia Organa"
            ship: "YT-1300"
            threat: 4
            upgrades: [
                "Chewbacca"
                "Millennium Falcon"
                "Lando Calrissian"
                "Engine Upgrade"
                "R2-D2"
            ]
        }
        {
            id: 420
            faction: "Rebel Alliance"
            pilot: "Blue Squadron Pilot"
            ship: "B-Wing"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "Stabilized S-Foils"
                "Plasma Torpedoes"
            ]
        }
        {
            id: 421
            faction: "Rebel Alliance"
            pilot: "Blade Squadron Veteran"
            ship: "B-Wing"
            threat: 3
            upgrades: [
                "Snap Shot"
                "Stabilized S-Foils"
                "Autoblasters"
                "Proton Torpedoes"
                "Angled Deflectors"
            ]
        }
        {
            id: 422
            faction: "Rebel Alliance"
            pilot: "Outer Rim Smuggler"
            ship: "YT-1300"
            threat: 3
            upgrades: [
                "Homing Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 423
            faction: "Rebel Alliance"
            pilot: "Alexsandr Kallus"
            ship: "VCX-100"
            threat: 4
            upgrades: [
                "Passive Sensors"
                "Ghost"
                "Proton Torpedoes"
                "Shield Upgrade"
                '"Zeb" Orrelios'
            ]
        }
        {
            id: 424
            faction: "Rebel Alliance"
            pilot: "Lothal Rebel"
            ship: "VCX-100"
            threat: 3
            upgrades: [
                "Passive Sensors"
                "Plasma Torpedoes"
            ]
        }
        {
            id: 425
            faction: "Rebel Alliance"
            pilot: "Partisan Renegade"
            ship: "U-Wing"
            threat: 3
            upgrades: [
                "Magva Yarro"
                "Deadman's Switch"
                "Pivot Wing"
                "Saw Gerrera"
            ]
        }
        {
            id: 426
            faction: "Resistance"
            pilot: "Blue Squadron Recruit"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Primed Thrusters"
                "Composure"
                "Snap Shot"
            ]
        }
        {
            id: 427
            faction: "Resistance"
            pilot: "Ronith Blario"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Mag-Pulse Warheads"
                "Pattern Analyzer"
                "Snap Shot"
            ]
        }
        {
            id: 428
            faction: "Resistance"
            pilot: "Zizi Tlo"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Advanced Optics"
                "Snap Shot"
                "Afterburners"
            ]
        }
        {
            id: 429
            faction: "Resistance"
            pilot: "Cobalt Squadron Bomber"
            ship: "MG-100 StarFortress"
            threat: 3
            upgrades: [
                "Passive Sensors"
                "Conner Nets"
                "Hull Upgrade"
                "Agile Gunner"
            ]
        }
        {
            id: 430
            faction: "Resistance"
            pilot: "Paige Tico"
            ship: "MG-100 StarFortress"
            threat: 3
            upgrades: [
                "Rose Tico"
                "Proton Bombs"
                "Skilled Bombardier"
            ]
        }
        {
            id: 431
            faction: "Scum and Villainy"
            pilot: "Bossk"
            ship: "Z-95 Headhunter"
            threat: 2
            upgrades: [
                "Predator"
                "Snap Shot"
                "Afterburners"
            ]
        }
        {
            id: 432
            faction: "Scum and Villainy"
            pilot: "Binayre Pirate"
            ship: "Z-95 Headhunter"
            threat: 2
            upgrades: [
                "Concussion Missiles"
                "Snap Shot"
                "Afterburners"
            ]
        }
        {
            id: 433
            faction: "Scum and Villainy"
            pilot: "Black Sun Soldier"
            ship: "Z-95 Headhunter"
            threat: 1
            upgrades: [
                "Composure"
            ]
        }
        {
            id: 434
            faction: "Scum and Villainy"
            pilot: "Contracted Scout"
            ship: "JumpMaster 5000"
            threat: 2
            upgrades: [
                "Plasma Torpedoes"
            ]
        }
        {
            id: 435
            faction: "Scum and Villainy"
            pilot: "Nom Lumb"
            ship: "JumpMaster 5000"
            threat: 3
            upgrades: [
                "Proton Torpedoes"
                "Snap Shot"
                "Afterburners"
                "Dengar"
                "Deadman's Switch"
            ]
        }
        {
            id: 436
            faction: "Scum and Villainy"
            pilot: "Tansarii Point Veteran"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Munitions Failsafe"
                "Plasma Torpedoes"
            ]
        }
        {
            id: 437
            faction: "Scum and Villainy"
            pilot: "G4R-GOR V/M"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Intimidation"
                "Shield Upgrade"
                "Deadman's Switch"
                "Autoblasters"
            ]
        }
        {
            id: 438
            faction: "Scum and Villainy"
            pilot: "Cartel Spacer"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Shield Upgrade"
                "Autoblasters"
            ]
        }
        {
            id: 439
            faction: "Galactic Empire"
            pilot: "Patrol Leader"
            ship: "VT-49 Decimator"
            threat: 3
            upgrades: [
                "Hull Upgrade"
                "Tactical Scrambler"
            ]
        }
        {
            id: 440
            faction: "Galactic Empire"
            pilot: "Morna Kee"
            ship: "VT-49 Decimator"
            threat: 4
            upgrades: [
                "Shield Upgrade"
                "Plasma Torpedoes"
                "Proximity Mines"
                'GNK "Gonk" Droid'
            ]
        }
        {
            id: 441
            faction: "Galactic Empire"
            pilot: "Black Squadron Scout"
            ship: "TIE Striker"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Targeting Computer"
            ]
        }
        {
            id: 442
            faction: "Galactic Empire"
            pilot: '"Vagabond"'
            ship: "TIE Striker"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Afterburners"
                "Skilled Bombardier"
                "Proton Bombs"
            ]
        }
        {
            id: 443
            faction: "Galactic Empire"
            pilot: "Planetary Sentinel"
            ship: "TIE Striker"
            threat: 2
            upgrades: [
                "Conner Nets"
                "Trick Shot"
            ]
        }
        {
            id: 444
            faction: "Galactic Empire"
            pilot: "Inquisitor"
            ship: "TIE Advanced Prototype"
            threat: 2
            upgrades: [
                "Brilliant Evasion"
                "Afterburners"
            ]
        }
        {
            id: 445
            faction: "Galactic Empire"
            pilot: "Baron of the Empire"
            ship: "TIE Advanced Prototype"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Mag-Pulse Warheads"
            ]
        }
        {
            id: 446
            faction: "Galactic Empire"
            pilot: "Fifth Brother"
            ship: "TIE Advanced Prototype"
            threat: 2
            upgrades: [
                "Foresight"
            ]
        }
        {
            id: 447
            faction: "First Order"
            pilot: "Zeta Squadron Survivor"
            ship: "TIE/SF Fighter"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "Advanced Optics"
                "Proud Tradition"
            ]
        }
        {
            id: 448
            faction: "First Order"
            pilot: "Lieutenant LeHuse"
            ship: "TIE/SF Fighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Mag-Pulse Warheads"
                "Angled Deflectors"
            ]
        }
        {
            id: 449
            faction: "First Order"
            pilot: "Captain Phasma"
            ship: "TIE/SF Fighter"
            threat: 3
            upgrades: [
                "Advanced Optics"
                "Ion Missiles"
                "Special Forces Gunner"
                "Outmaneuver"
                "Shield Upgrade"
            ]
        }
        {
            id: 450
            faction: "First Order"
            pilot: "First Order Test Pilot"
            ship: "TIE/VN Silencer"
            threat: 3
            upgrades: [
                "Proud Tradition"
                "Plasma Torpedoes"
                "Passive Sensors"
            ]
        }
        {
            id: 451
            faction: "First Order"
            pilot: "Sienar-Jaemus Engineer"
            ship: "TIE/VN Silencer"
            threat: 3
            upgrades: [
                "Afterburners"
                "Mag-Pulse Warheads"
                "Passive Sensors"
                "Snap Shot"
            ]
        }
        {
            id: 452
            faction: "First Order"
            pilot: '"Rush"'
            ship: "TIE/VN Silencer"
            threat: 3
            upgrades: [
                "Primed Thrusters"
                "Angled Deflectors"
                "Proton Torpedoes"
            ]
        }
        {
            id: 453
            faction: "Galactic Empire"
            pilot: "Seventh Sister"
            ship: "TIE Advanced Prototype"
            threat: 3
            upgrades: [
                "Predictive Shot"
                "Proton Rockets"
                "Afterburners"
                "Hull Upgrade"
            ]
        }
        {
            id: 454
            faction: "Galactic Empire"
            pilot: "Inquisitor"
            ship: "TIE Advanced Prototype"
            threat: 2
            upgrades: [
                "Heightened Perception"
                "Proton Rockets"
            ]
        }
        {
            id: 455
            faction: "Galactic Empire"
            pilot: "Grand Inquisitor"
            ship: "TIE Advanced Prototype"
            threat: 3
            upgrades: [
                "Hate"
                "Proton Rockets"
                "Shield Upgrade"
            ]
        }
        {
            id: 456
            faction: "Galactic Empire"
            pilot: "Baron of the Empire"
            ship: "TIE Advanced Prototype"
            threat: 3
            upgrades: [
                "Elusive"
                "Outmaneuver"
                "Afterburners"
            ]
        }
        {
            id: 457
            faction: "First Order"
            pilot: "First Order Courier"
            ship: "Xi-class Light Shuttle"
            threat: 2
            upgrades: [
                "Tactical Officer"
                "Automated Target Priority"
                "Shield Upgrade"
            ]
        }
        {
            id: 458
            faction: "First Order"
            pilot: "Gideon Hask (Xi Shuttle)"
            ship: "Xi-class Light Shuttle"
            threat: 2
            upgrades: [
                "Deadeye Shot"
                "Sensor Buoy Suite"
                "Commander Pyre"
                "Rigged Cargo Chute"
            ]
        }
        {
            id: 459
            faction: "First Order"
            pilot: "Commander Malarus (Xi Shuttle)"
            ship: "Xi-class Light Shuttle"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Sensor Buoy Suite"
                "Agent Terex"
                "Hull Upgrade"
            ]
        }
        {
            id: 460
            faction: "First Order"
            pilot: "Agent Terex"
            ship: "Xi-class Light Shuttle"
            threat: 2
            upgrades: [
                "Inertial Dampeners"
                "Deadman's Switch"
                "Commander Malarus"
                "Contraband Cybernetics"
            ]
        }
        {
            id: 461
            faction: "Galactic Empire"
            pilot: "Carida Academy Cadet"
            ship: "TIE/rb Heavy"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Maneuver-Assist MGK-300"
                "Synced Laser Cannons"
            ]
        }
        {
            id: 462
            faction: "Galactic Empire"
            pilot: "Lyttan Dree"
            ship: "TIE/rb Heavy"
            threat: 2
            upgrades: [
                "Deadeye Shot"
                "Ion Cannon"
                "Heavy Laser Cannon"
                "Maneuver-Assist MGK-300"
            ]
        }
        {
            id: 463
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Sentry"
            ship: "TIE/rb Heavy"
            threat: 2
            upgrades: [
                "Ion Limiter Override"
                "Shield Upgrade"
                "Heavy Laser Cannon"
                "Maneuver-Assist MGK-300"
            ]
        }
        {
            id: 464
            faction: "Galactic Empire"
            pilot: '"Rampage"'
            ship: "TIE/rb Heavy"
            threat: 3
            upgrades: [
                "Predator"
                "Afterburners"
                "Maneuver-Assist MGK-300"
                "Synced Laser Cannons"
                "Ablative Plating"
            ]
        }
        {
            id: 465
            faction: "Galactic Republic"
            pilot: '"Odd Ball"'
            ship: "Nimbus-class V-Wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Ion Limiter Override"
                "Q7 Astromech"
                "Precision Ion Engines"
            ]
        }
        {
            id: 466
            faction: "Galactic Republic"
            pilot: "Wilhuff Tarkin"
            ship: "Nimbus-class V-Wing"
            threat: 2
            upgrades: [
                "R3 Astromech"
                'Alpha-3E "Esk"'
            ]
        }
        {
            id: 467
            faction: "Galactic Republic"
            pilot: "Loyalist Volunteer"
            ship: "Nimbus-class V-Wing"
            threat: 1
        }
        {
            id: 468
            faction: "Galactic Republic"
            pilot: '"Contrail"'
            ship: "Nimbus-class V-Wing"
            threat: 4
            upgrades: [
                "Ion Limiter Override"
                "R7-A7"
                "Precision Ion Engines"
            ]
        }
        {
            id: 469
            faction: "Galactic Republic"
            pilot: '"Klick"'
            ship: "Nimbus-class V-Wing"
            threat: 4
            upgrades: [
                "R3 Astromech" 
                "Thermal Detonators"
                'Alpha-3B "Besh"'
            ]
        }
        {
            id: 470
            faction: "Galactic Republic"
            pilot: "Shadow Squadron Escort"
            ship: "Nimbus-class V-Wing"
            threat: 2
            upgrades: [
                "Outmaneuver" 
                "R2 Astromech"
                'Alpha-3E "Esk"'
            ]
        } 
        {
            id: 471
            faction: "Galactic Republic"
            pilot: "Anakin Skywalker (Eta-2)"
            ship: "Eta-2 Actis"
            threat: 4
            upgrades: [
                "Marg Sabl Closure"
                "Extreme Maneuvers"
                "R2-D2 (Republic)"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 472
            faction: "Galactic Republic"
            pilot: "Yoda"
            ship: "Eta-2 Actis"
            threat: 3
            upgrades: [
                "Heightened Perception"
                "Patience"
                "Sense"
                "R2-D2 (Republic)"
            ]
        }
        {
            id: 473
            faction: "Galactic Republic"
            pilot: "Obi-Wan Kenobi (Eta-2)"
            ship: "Eta-2 Actis"
            threat: 2
            upgrades: [
                "Marg Sabl Closure"
                "Patience"
                "R5 Astromech"
                "Hull Upgrade"
            ]
        }
        {
            id: 474
            faction: "Galactic Republic"
            pilot: "Aayla Secura"
            ship: "Eta-2 Actis"
            threat: 3
            upgrades: [
                "Predator"
                "Supernatural Reflexes"
                "R3 Astromech"
            ]
        }
        {
            id: 475
            faction: "Galactic Republic"
            pilot: "Shaak Ti"
            ship: "Eta-2 Actis"
            threat: 2
            upgrades: [
                "Elusive"
                "Patience"
            ]
        }
        {
            id: 476
            faction: "Galactic Republic"
            pilot: "Jedi General"
            ship: "Eta-2 Actis"
            threat: 2
            upgrades: [
                "Marg Sabl Closure"
                "Extreme Maneuvers"
            ]
        }
        {
            id: 477
            faction: "Galactic Republic"
            pilot: "Aayla Secura"
            ship: "Eta-2 Actis"
            threat: [5, 7, 8, 9]
            wingmates: [2, 3, 4, 5]
            suffix: " and her wing"
            upgrades: [
                "Jedi Commander"
                "Supernatural Reflexes"
                "Q7 Astromech"
            ]
            wingmateId: 478
            wingleader: true
        }
        {
            id: 478
            faction: "Galactic Republic"
            pilot: "Shadow Squadron Escort"
            ship: "Nimbus-class V-Wing"
            suffix: ", Aayla Secura's wing"
            threat: '*'
            upgrades: [
                "Q7 Astromech"
                'Alpha-3B "Besh"'
            ]
            linkedId: 477
            wingmate: true
        }
        {
            id: 479
            faction: "Rebel Alliance"
            pilot: "Han Solo"
            ship: "YT-1300"
            threat: 5
            upgrades: [
                "C-3PO"
                "Leia Organa"
                "Chewbacca"
                "Rigged Cargo Chute"
                "Millennium Falcon"
            ]
        }
        {
            id: 480 
            faction: "Rebel Alliance"
            pilot: "Blade Squadron Veteran"
            ship: "B-Wing"
            threat: 2
            upgrades: [
                "Predator"
                "Jamming Beam"
                "Ion Cannon"
            ]
        }
        {
            id: 481 
            faction: "Rebel Alliance"
            pilot: "Blue Squadron Pilot"
            ship: "B-Wing"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Adv. Proton Torpedoes"
            ]
        }
        {
            id: 482 
            faction: "Rebel Alliance"
            pilot: "Blue Squadron Pilot"
            ship: "B-Wing"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "Stabilized S-Foils"
                "Autoblasters"
            ]
        }
        {
            id: 483 
            faction: "Rebel Alliance"
            pilot: "Netrem Pollard"
            ship: "B-Wing"
            threat: 2
            upgrades: [
                "Debris Gambit"
                "Stabilized S-Foils"
                "Autoblasters"
            ]
        }
        {
            id: 484
            faction: "Rebel Alliance"
            pilot: "Ten Numb"
            ship: "B-Wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Electronic Baffle"
            ]
        }
        {
            id: 485
            faction: "Rebel Alliance"
            pilot: "Blade Squadron Veteran"
            ship: "B-Wing"
            threat: 3
            upgrades: [
                "Saturation Salvo"
                "Plasma Torpedoes"
                "Stabilized S-Foils"
                "Passive Sensors"
                "Shield Upgrade"
                "Synced Laser Cannons"
            ]
        }
        {
            id: 486
            faction: "Rebel Alliance"
            pilot: "Braylen Stramm"
            ship: "B-Wing"
            threat: 3
            upgrades: [
                "Squad Leader"
                "Jamming Beam"
                "Heavy Laser Cannon"
                "Electronic Baffle"
            ]
        }
        {
            id: 487
            faction: "Rebel Alliance"
            pilot: "Hera Syndulla (B-Wing)"
            ship: "B-Wing"
            threat: 3
            upgrades: [
                "B6 Blade Wing Prototype (Epic)"
                "Passive Sensors"
                "Deadeye Shot"
                "Sabine Wren (Gunner)"
            ]
        }
        {
            id: 488
            faction: "Rebel Alliance"
            pilot: "Phoenix Squadron Pilot"
            ship: "A-Wing"
            threat: 1
            upgrades: [
                "Hopeful"
            ]
        }
        {
            id: 489
            faction: "Rebel Alliance"
            pilot: "Phoenix Squadron Pilot"
            ship: "A-Wing"
            threat: 1
            upgrades: [
                "Elusive"
            ]
        }
        {
            id: 490
            faction: "Rebel Alliance"
            pilot: "Phoenix Squadron Pilot"
            ship: "A-Wing"
            threat: 1
            upgrades: [
                "Marg Sabl Closure"
            ]
        }
        {
            id: 491
            faction: "Rebel Alliance"
            pilot: "Ahsoka Tano (A-Wing)"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Marg Sabl Closure"
                "Patience"
                "Sense"
            ]
        }
        {
            id: 492
            faction: "Rebel Alliance"
            pilot: "Arvel Crynyd"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Intimidation"
                "Concussion Missiles"
                "Juke"
            ]
        }
        {
            id: 493
            faction: "Rebel Alliance"
            pilot: "Derek Klivian"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Mag-Pulse Warheads"
            ]
        }
        {
            id: 494
            faction: "Rebel Alliance"
            pilot: "Green Squadron Pilot"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Juke"
                "Outmaneuver"
                "Hull Upgrade"
            ]
        }
        {
            id: 495
            faction: "Rebel Alliance"
            pilot: "Green Squadron Pilot"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Starbird Slash"
                "Vectored Cannons (RZ-1)"
                "Mag-Pulse Warheads"
            ]
        }
        {
            id: 496
            faction: "Rebel Alliance"
            pilot: "Hera Syndulla (A-Wing)"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Hopeful"
            ]
        }
        {
            id: 497
            faction: "Rebel Alliance"
            pilot: "Jake Farrell"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Cluster Missiles"
                "Outmaneuver"
            ]
        }
        {
            id: 498
            faction: "Rebel Alliance"
            pilot: "Jake Farrell"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Daredevil"
                "Proton Rockets"
                "Juke"
            ]
        }
        {
            id: 499
            faction: "Rebel Alliance"
            pilot: "Phoenix Squadron Pilot"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Daredevil"
                "Proton Rockets"
                "Afterburners"
            ]
        }
        {
            id: 500
            faction: "Rebel Alliance"
            pilot: "Sabine Wren (A-Wing)"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Outmaneuver"
            ]
        }
        {
            id: 501
            faction: "Rebel Alliance"
            pilot: "Shara Bey (A-Wing)"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Marg Sabl Closure"
                "Vectored Cannons (RZ-1)"
                "Starbird Slash"
            ]
        }
        {
            id: 502
            faction: "Rebel Alliance"
            pilot: "Wedge Antilles (A-Wing)"
            ship: "A-Wing"
            threat: 2
            upgrades: [
                "Deadeye Shot"
                "XX-23 S-Thread Tracers"
            ]
        }
        {
            id: 503
            faction: "Rebel Alliance"
            pilot: "Hera Syndulla"
            ship: "VCX-100"
            threat: [6, 7, 8, 9]
            wingmates: [1, 2, 3, 4]
            suffix: " + Phantom and her wing"
            upgrades: [
                "Phoenix Squadron"
                "Sabine Wren (Gunner)"
                "Dorsal Turret"
                "Ghost"
            ]
            wingmateId: 504
            wingleader: true
            linkedId: 505
        }
        {
            id: 504
            faction: "Rebel Alliance"
            pilot: "Phoenix Squadron Pilot"
            ship: "A-Wing"
            suffix: ", Heras wing"
            threat: '*'
            upgrades: [
                "Hopeful"
            ]
            linkedId: 503
            wingmate: true
        }
        {
            id: 505
            faction: "Rebel Alliance"
            pilot: '"Zeb" Orrelios (Sheathipede)'
            ship: "Sheathipede-Class Shuttle"
            suffix: ", Heras wing"
            threat: '*'
            upgrades: [
                '"Chopper" (Crew)'
                "Phantom"
            ]
            linkedId: 503
        }
        {
            id: 506
            faction: "Galactic Empire"
            pilot: "Captain Dobbs"
            ship: "TIE Defender"
            threat: 3 
            upgrades: [
                "Disciplined"
                "TIE Defender Elite"
                "Tractor Beam"
            ]
        }
        {
            id: 507
            faction: "Galactic Empire"
            pilot: "Delta Squadron Pilot"
            ship: "TIE Defender"
            threat: 3 
            upgrades: [
                "Ion Cannon"
            ]
        }
        {
            id: 508
            faction: "Galactic Empire"
            pilot: "Delta Squadron Pilot"
            ship: "TIE Defender"
            threat: 3 
            upgrades: [
                "Autoblasters"
                "TIE Defender Elite"
            ]
        }
        {
            id: 509
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Ace"
            ship: "TIE Defender"
            threat: 3 
            upgrades: [
                "Interloper Turn"
                "TIE Defender Elite"
                "Tractor Beam"
            ]
        }
        {
            id: 510
            faction: "Galactic Empire"
            pilot: "Colonel Vessery"
            ship: "TIE Defender"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "TIE Defender Elite"
                "Tractor Beam"
            ]
        }
        {
            id: 511
            faction: "Galactic Empire"
            pilot: "Countess Ryad"
            ship: "TIE Defender"
            threat: 4
            upgrades: [
                "Predator"
                "Advanced Sensors"
                "Tractor Beam"
                "Ion Missiles"
            ]
        }
        {
            id: 512
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Ace"
            ship: "TIE Defender"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "Advanced Sensors"
                "Shield Upgrade"
            ]
        }
        {
            id: 513
            faction: "Galactic Empire"
            pilot: "Rexler Brath"
            ship: "TIE Defender"
            threat: 4
            upgrades: [
                "Elusive"
                "Advanced Sensors"
                "Ion Missiles"
            ]
        }
        {
            id: 514
            faction: "Galactic Empire"
            pilot: "Vult Skerris"
            ship: "TIE Defender"
            threat: 4
            upgrades: [
                "Daredevil"
                "Mag-Pulse Warheads"
                "Predator"
                "TIE Defender Elite"
            ]
        }
        {
            id: 515
            faction: "Galactic Empire"
            pilot: "Darth Vader (TIE Defender)"
            ship: "TIE Defender"
            threat: 5
            upgrades: [
                "Sense"
                "Mag-Pulse Warheads"
                "TIE Defender Elite"
            ]
        }
        {
            id: 516
            faction: "Galactic Empire"
            pilot: "Alpha Squadron Pilot"
            ship: "TIE Interceptor"
            threat: 2
            upgrades: [
                "Hull Upgrade"
                "Shield Upgrade"
            ]
        }
        {
            id: 517
            faction: "Galactic Empire"
            pilot: "Alpha Squadron Pilot"
            ship: "TIE Interceptor"
            threat: 2
            upgrades: [
                "Disciplined"
                "Sensitive Controls"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 518
            faction: "Galactic Empire"
            pilot: "Alpha Squadron Pilot"
            ship: "TIE Interceptor"
            threat: 2
            upgrades: [
                "Shield Upgrade"
                "Sensitive Controls"
                "Targeting Computer"
            ]
        }
        {
            id: 519
            faction: "Galactic Empire"
            pilot: "Ciena Ree"
            ship: "TIE Interceptor"
            threat: 2
            upgrades: [
                "Disciplined"
                "Sensitive Controls"
            ]
        }
        {
            id: 520
            faction: "Galactic Empire"
            pilot: "Commandant Goran"
            ship: "TIE Interceptor"
            threat: 2
            upgrades: [
                "Disciplined"
                "Sensitive Controls"
                "Marg Sabl Closure"
            ]
        }
        {
            id: 521
            faction: "Galactic Empire"
            pilot: "Lieutenant Lorrir"
            ship: "TIE Interceptor"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Sensitive Controls"
            ]
        }
        {
            id: 522
            faction: "Galactic Empire"
            pilot: "Nash Windrider"
            ship: "TIE Interceptor"
            threat: 2
            upgrades: [
                "Daredevil"
                "Sensitive Controls"
                "Shield Upgrade"
            ]
        }
        {
            id: 523
            faction: "Galactic Empire"
            pilot: "Saber Squadron Ace"
            ship: "TIE Interceptor"
            threat: 2
            upgrades: [
                "Predator"
                "Shield Upgrade"
            ]
        }
        {
            id: 524
            faction: "Galactic Empire"
            pilot: "Saber Squadron Ace"
            ship: "TIE Interceptor"
            threat: 2
            upgrades: [
                "Daredevil"
                "Sensitive Controls"
                "Targeting Computer"
            ]
        }
        {
            id: 525
            faction: "Galactic Empire"
            pilot: "Turr Phennir"
            ship: "TIE Interceptor"
            threat: 2
            upgrades: [
                "Outmaneuver"
            ]
        }
        {
            id: 526
            faction: "Galactic Empire"
            pilot: "Gideon Hask (TIE Interceptor)"
            ship: "TIE Interceptor"
            threat: 3
            upgrades: [
                "Disciplined"
                "Sensitive Controls"
                "Targeting Computer"
                "Elusive"
                "Shield Upgrade"
            ]
        }
        {
            id: 527
            faction: "Galactic Empire"
            pilot: "Soontir Fel"
            ship: "TIE Interceptor"
            threat: 3
            upgrades: [
                "Daredevil"
                "Afterburners"
                "Predator"
                "Shield Upgrade"
            ]
        }
        {
            id: 528
            faction: "Galactic Empire"
            pilot: "Vult Skerris (TIE Interceptor)"
            ship: "TIE Interceptor"
            threat: 3
            upgrades: [
                "Daredevil"
                "Elusive"
                "Predator"
                "Sensitive Controls"
            ]
        }
        {
            id: 529
            faction: "Galactic Empire"
            pilot: "Commandant Goran"
            ship: "TIE Interceptor"
            threat: [4,5,6,7]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Skystrike Academy Class"
                "Disciplined"
                "Marg Sabl Closure"
                "Sensitive Controls"
            ]
            wingmateId: 530
            wingleader: true
        }
        {
            id: 530
            faction: "Galactic Republic"
            pilot: "Academy Pilot"
            ship: "TIE Fighter"
            suffix: ", Commandant Gorans wing"
            threat: '*'
            upgrades: [
                "Disciplined"
            ]
            linkedId: 529
            wingmate: true
        }
        {
            id: 531
            faction: "Scum and Villainy"
            pilot: "Gamut Key"
            ship: "HWK-290"
            threat: 2
            upgrades: [
                "Elusive"
                "Engine Upgrade"
                "False Transponder Codes"
            ]
        }
        {
            id: 532
            faction: "Scum and Villainy"
            pilot: "Kanan Jarrus (HWK-290)"
            ship: "HWK-290"
            threat: 2
            upgrades: [
                "Patience"
                "Thermal Detonators"
            ]
        }
        {
            id: 533
            faction: "Scum and Villainy"
            pilot: "Spice Runner"
            ship: "HWK-290"
            threat: 2
            upgrades: [
                "Hondo Ohnaka"
                "Concussion Bombs"
                "Engine Upgrade"
                "False Transponder Codes"
            ]
        }
        {
            id: 534
            faction: "Scum and Villainy"
            pilot: "Tápusk"
            ship: "HWK-290"
            threat: 2
            upgrades: [
                "Cutthroat"
                "Gamut Key"
            ]
        }
        {
            id: 535
            faction: "Scum and Villainy"
            pilot: "Amaxine Warrior"
            ship: "Y-Wing"
            threat: 2
            upgrades: [
                "Cutthroat"
                "Thermal Detonators"
                "R5 Astromech"
            ]
        }
        {
            id: 536
            faction: "Scum and Villainy"
            pilot: "Arliz Hadrassian"
            ship: "Y-Wing"
            threat: 2
            upgrades: [
                "Predator"
                "R5-TK"
                "Suppressive Gunner"
                "Thermal Detonators"
            ]
        }
        {
            id: 537
            faction: "Scum and Villainy"
            pilot: "Jinata Security Officer"
            ship: "Y-Wing"
            threat: 2
            upgrades: [
                "Automated Target Priority"
                "Weapons Systems Officer"
                "Proton Torpedoes"
                "R3 Astromech"
            ]
        }
        {
            id: 538
            faction: "Scum and Villainy"
            pilot: "Padric"
            ship: "Y-Wing"
            threat: 2
            upgrades: [
                "Dorsal Turret"
                "Thermal Detonators"
                '"Genius"'
            ]
        }
        {
            id: 539
            faction: "Scum and Villainy"
            pilot: "Leema Kai"
            ship: "Y-Wing"
            threat: 3
            upgrades: [
                "Marg Sabl Closure"
                "Plasma Torpedoes"
                "Saturation Salvo"
                "Weapons Systems Officer"
                "Targeting Synchronizer"
                "R4-B11"
                "Ion Cannon Turret"
                "Concussion Bombs"
            ]
        }
        {
            id: 540 
            faction: "Resistance"
            pilot: "Blue Squadron Rookie"
            ship: "T-70 X-Wing"
            threat: 2
            upgrades: [
                "Automated Target Priority"
                "R2 Astromech"
                "Integrated S-Foils"
            ]
        }
        {
            id: 541 
            faction: "Resistance"
            pilot: "Nimi Chireen"
            ship: "T-70 X-Wing"
            threat: 2
            upgrades: [
                "Automated Target Priority"
                "Ion Cannon"
                "Integrated S-Foils"
            ]
        }
        {
            id: 542 
            faction: "Resistance"
            pilot: "Red Squadron Expert"
            ship: "T-70 X-Wing"
            threat: 2
            upgrades: [
                "Predator"
                "Underslung Blaster Cannon"
                "Integrated S-Foils"
            ]
        }
        {
            id: 543 
            faction: "Resistance"
            pilot: "Black Squadron Ace (T-70)"
            ship: "T-70 X-Wing"
            threat: 3
            upgrades: [
                "Deadeye Shot"
                "R3 Astromech"
                "Proton Torpedoes"
                "Afterburners"
                "Primed Thrusters"
                "Integrated S-Foils"
            ]
        }
        {
            id: 544 
            faction: "Resistance"
            pilot: "C'ai Threnalli"
            ship: "T-70 X-Wing"
            threat: 3
            upgrades: [
                "Backwards Tailslide"
                "R4 Astromech"
                "Proton Torpedoes"
                "Primed Thrusters"
                "Integrated S-Foils"
            ]
        }
        {
            id: 545 
            faction: "Resistance"
            pilot: "Poe Dameron (HoH)"
            ship: "T-70 X-Wing"
            threat: 3
            upgrades: [
                "Backwards Tailslide"
                "R2-D2 (Resistance)"
                "Black One"
                "Overdrive Thruster"
                "Integrated S-Foils"
                "Daredevil"
            ]
        }
        {
            id: 546 
            faction: "Resistance"
            pilot: "Temmin Wexley (HoH)"
            ship: "T-70 X-Wing"
            threat: 3
            upgrades: [
                "Snap Shot"
                "R6-D8"
                "Underslung Blaster Cannon"
                "Integrated S-Foils"
                "Hull Upgrade"
            ]
        }
        {
            id: 547 
            faction: "Resistance"
            pilot: "Blue Squadron Recruit"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Concussion Missiles"
                "Automated Target Priority"
            ]
        }
        {
            id: 548 
            faction: "Resistance"
            pilot: "Green Squadron Expert"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Afterburners"
                "Primed Thrusters"
            ]
        }
        {
            id: 549 
            faction: "Resistance"
            pilot: "Merl Cobben"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Deadeye Shot"
                "Predator"
                "Automated Target Priority"
                "Shield Upgrade"
            ]
        }
        {
            id: 550 
            faction: "Resistance"
            pilot: "Seftin Vanik"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Daredevil"
                "Snap Shot"
                "Hull Upgrade"
            ]
        }
        {
            id: 551 
            faction: "Resistance"
            pilot: "Suralinda Javos"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Starbird Slash"
                "Snap Shot"
                "Shield Upgrade"
                "Ion Missiles"
            ]
        }
        {
            id: 552 
            faction: "Resistance"
            pilot: "Wrobie Tyce"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Starbird Slash"
                "Elusive"
                "Concussion Missiles"
            ]
        }
        {
            id: 553 
            faction: "Resistance"
            pilot: "Wrobie Tyce"
            ship: "RZ-2 A-Wing"
            threat: 2
            upgrades: [
                "Starbird Slash"
                "Elusive"
                "Concussion Missiles"
            ]
        }
        {
            id: 554 
            faction: "Separatist Alliance" 
            pilot: "Baktoid Drone"
            ship: "HMP Droid Gunship"
            threat: 2
            upgrades: [
                "Delayed Fuses"
                "Concussion Bombs"
                "Ion Missiles"
                "Repulsorlift Stabilizers"
            ]
        }
        {
            id: 555 
            faction: "Separatist Alliance" 
            pilot: "DGS-047"
            ship: "HMP Droid Gunship"
            threat: 2
            upgrades: [
                "Delayed Fuses"
                "Concussion Bombs"
                "Ion Missiles"
                "Repulsorlift Stabilizers"
            ]
        }
        {
            id: 556 
            faction: "Separatist Alliance" 
            pilot: "Geonosian Prototype"
            ship: "HMP Droid Gunship"
            threat: 2
            upgrades: [
                "Synced Laser Cannons"
                "Ion Missiles"
                "Repulsorlift Stabilizers"
            ]
        }
        {
            id: 557 
            faction: "Separatist Alliance" 
            pilot: "Onderon Oppressor"
            ship: "HMP Droid Gunship"
            threat: 2
            upgrades: [
                "Multi-Missile Pods"
                "Repulsorlift Stabilizers"
            ]
        }
        {
            id: 558 
            faction: "Separatist Alliance" 
            pilot: "Separatist Predator"
            ship: "HMP Droid Gunship"
            threat: 2
            upgrades: [
                "Multi-Missile Pods"
                "Concussion Bombs"
                "Hull Upgrade"
            ]
        }
        {
            id: 559 
            faction: "Separatist Alliance" 
            pilot: "DGS-286"
            ship: "HMP Droid Gunship"
            threat: 3
            upgrades: [
                "Multi-Missile Pods"
                "Concussion Bombs"
                "Shield Upgrade"
                "Afterburners"
                "Kalani"
                "Repulsorlift Stabilizers"
            ]
        }
        {
            id: 560 
            faction: "Galactic Republic" 
            pilot: "212th Battalion Pilot"
            ship: "LAAT/i Gunship"
            threat: 3
            upgrades: [
                "Multi-Missile Pods"
                "Shield Upgrade"
                "Suppressive Gunner"
                "Ghost Company"
            ]
        }
        {
            id: 561 
            faction: "Galactic Republic" 
            pilot: '"Hawk"'
            ship: "LAAT/i Gunship"
            threat: 3
            upgrades: [
                "Deadeye Shot"
                "Yoda"
                "Ion Missiles"
                "Clone Captain Rex"
                '"Fives"'
            ]
        }
        {
            id: 562 
            faction: "Galactic Republic" 
            pilot: '"Warthog"'
            ship: "LAAT/i Gunship"
            threat: 3
            upgrades: [
                "Wolfpack"
                "Multi-Missile Pods"
                "Plo Koon"
                "Suppressive Gunner"
            ]
        }
        {
            id: 563 
            faction: "Galactic Republic" 
            pilot: '"Hound"'
            ship: "LAAT/i Gunship"
            threat: 4
            upgrades: [
                "Concussion Missiles"
                "Aayla Secura"
                "Kit Fisto"
                "Suppressive Gunner"
                "Hull Upgrade"
                "Agile Gunner"
            ]
        }
        {
            id: 564 
            faction: "Separatist Alliance" 
            pilot: "Zam Wesell"
            ship: "Firespray-31"
            threat: 4
            upgrades: [
                "Deadeye Shot"
                "Jango Fett"
                "False Transponder Codes"
                "Hotshot Gunner"
                "Slave I"
            ]
        }
        {
            id: 565 
            faction: "Separatist Alliance" 
            pilot: "Separatist Racketeer"
            ship: "Firespray-31"
            threat: 3
            upgrades: [
                "Jamming Beam"
                "Thermal Detonators"
                "Suppressive Gunner"
                "Ablative Plating"
            ]
        }
        {
            id: 566 
            faction: "Separatist Alliance" 
            pilot: "Jango Fett"
            ship: "Firespray-31"
            threat: 4
            upgrades: [
                "Zam Wesell"
                "False Transponder Codes"
                "Boba Fett"
                "Slave I"
            ]
        }
        {
            id: 567 
            faction: "Separatist Alliance" 
            pilot: "Boba Fett (Separatist)"
            ship: "Firespray-31"
            threat: 3
            upgrades: [
                "Debris Gambit"
                "Hondo Ohnaka"
                "Slave I"
            ]
        }
        {
            id: 568 
            faction: "Separatist Alliance" 
            pilot: "Colicoid Interceptor"
            ship: "Droid Tri-Fighter"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Independent Calculations"
                "Hull Upgrade"
            ]
        }
        {
            id: 569 
            faction: "Separatist Alliance" 
            pilot: "DIS-347"
            ship: "Droid Tri-Fighter"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Independent Calculations"
                "Elusive"
            ]
        }
        {
            id: 570 
            faction: "Separatist Alliance" 
            pilot: "DIS-T81"
            ship: "Droid Tri-Fighter"
            threat: 2
            upgrades: [
                "Marg Sabl Closure"
                "Discord Missiles"
            ]
        }
        {
            id: 571 
            faction: "Separatist Alliance" 
            pilot: "Fearsome Predator"
            ship: "Droid Tri-Fighter"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Intercept Booster"
            ]
        }
        {
            id: 572 
            faction: "Separatist Alliance" 
            pilot: "Phlac-Arphocc Prototype"
            ship: "Droid Tri-Fighter"
            threat: 2
            upgrades: [
                "XX-23 S-Thread Tracers"
                "Intercept Booster"
            ]
        }
        {
            id: 573
            faction: "Separatist Alliance" 
            pilot: "Separatist Interceptor"
            ship: "Droid Tri-Fighter"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Discord Missiles"
                "Intercept Booster"
            ]
        }
        {
            id: 574
            faction: "Galactic Empire"
            pilot: "Delta Squadron Pilot"
            ship: "TIE Defender"
            threat: 3 
            upgrades: [
                "Tractor Beam"
                "Ion Missiles"
            ]
        }
        {
            id: 575
            faction: "Scum and Villainy"
            pilot: "Lawless Pirates"
            ship: "Trident-class Assault Ship"
            threat: 9
            upgrades: [
                "Zealous Captain"
                "Tractor Tentacles"
                "Proton Cannon Battery"
                "Novice Technician"
                "Corsair Crew"
                "Tibanna Reserves"
                "Nautolan's Revenge"
            ]
        }
        {
            id: 576
            faction: "Scum and Villainy"
            pilot: "Lawless Pirates"
            ship: "Trident-class Assault Ship"
            threat: 10
            upgrades: [
                "Hondo Ohnaka (Command)"
                "Tractor Tentacles"
                "Drill Beak"
                "Seasoned Navigator"
                "Corsair Crew"
                "Gunnery Specialists"
                "Boosted Scanners"
                "Grappler"
            ]
        }
        {
            id: 577
            faction: "Separatist Alliance"
            pilot: "Colicoid Destroyer"
            ship: "Trident-class Assault Ship"
            threat: 8
            upgrades: [
                "Tractor Tentacles"
                "Drill Beak"
                "Optimized Power Core"
            ]
        }
        {
            id: 578
            faction: "Separatist Alliance"
            pilot: "Colicoid Destroyer"
            ship: "Trident-class Assault Ship"
            threat: 9
            upgrades: [
                "Asajj Ventress (Command)" 
                "Tractor Tentacles"
                "Enhanced Propulsion"
                "Seasoned Navigator"
                "Droid Crew"
                "Tractor Technicians"
                "Trident"
            ]
        }
        {
            id: 579
            faction: "Separatist Alliance"
            pilot: "Colicoid Destroyer"
            ship: "Trident-class Assault Ship"
            threat: 10 
            upgrades: [
                "Riff Tamson"
                "Tractor Tentacles"
                "Proton Cannon Battery"
                "Proton Torpedoes"
                "Novice Technician"
                "Hotshot Gunner"
                "Droid Crew"
                "Gunnery Specialists"
                "Tibanna Reserves"
                "Neimoidian Grasp"
            ]
        }
        {
            id: 580
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Sentry"
            ship: "TIE/rb Heavy"
            threat: 3
            upgrades: [
                "Ablative Plating"
                "Target-Assist MGK-300"
                "Ion Limiter Override"
                "Synced Laser Cannons"
            ]
        }
        {
            id: 581
            faction: "First Order"
            pilot: "Kylo Ren (TIE Whisper)"
            ship: "TIE/WI Whisper"
            threat: 3
            upgrades: [
                "Predator"
                "Cluster Missiles"
                "Malice"
                "Enhanced Jamming Suite"
            ]
        }
        {
            id: 582
            faction: "First Order"
            pilot: '"Wrath"'
            ship: "TIE/WI Whisper"
            threat: 3
            upgrades: [
                "Elusive"
                "Enhanced Jamming Suite"
                "Proton Rockets"
            ]
        }
        {
            id: 583
            faction: "First Order"
            pilot: '"Whirlwind"'
            ship: "TIE/WI Whisper"
            threat: 3
            upgrades: [
                "Elusive"
                "Sensor Scramblers"
                "Ion Limiter Override"
                "Proton Rockets"
                "Hull Upgrade"
            ]
        }
        {
            id: 584
            faction: "First Order"
            pilot: "709th Legion Ace"
            ship: "TIE/WI Whisper"
            threat: 3
            upgrades: [
                "Predator"
                "Enhanced Jamming Suite"
                "Homing Missiles"
            ]
        }
        {
            id: 585
            faction: "First Order"
            pilot: '"Nightfall"'
            ship: "TIE/WI Whisper"
            threat: 2
            upgrades: [
                "Ion Limiter Override"
                "Sensor Scramblers"
            ]
        }
        {
            id: 586
            faction: "First Order"
            pilot: "Red Fury Zealot"
            ship: "TIE/WI Whisper"
            threat: 2
            upgrades: [
                "Predator"
                "Enhanced Jamming Suite"
            ]
        }
        {
            id: 587
            faction: "First Order"
            pilot: '"Breach"'
            ship: "TIE/Se Bomber"
            threat: 3
            upgrades: [
                "Elusive"
                "Proton Torpedoes"
                "Advanced Optics"
                "Engine Upgrade"
            ]
        }
        {
            id: 588
            faction: "First Order"
            pilot: '"Scorch"'
            ship: "TIE/Se Bomber"
            threat: 3
            upgrades: [
                "Predator"
                "Suppressive Gunner"
                "Electro-Chaff Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 589
            faction: "First Order"
            pilot: '"Dread"'
            ship: "TIE/Se Bomber"
            threat: 3
            upgrades: [
                "Feedback Ping"
                "Concussion Bombs"
                "Primed Thrusters"
                "DT-798"
                "Delayed Fuses"
            ]
        }
        {
            id: 590
            faction: "First Order"
            pilot: '"Grudge"'
            ship: "TIE/Se Bomber"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Proton Rockets"
                "Ion Torpedoes"
                "Engine Upgrade"
            ]
        }
        {
            id: 591
            faction: "First Order"
            pilot: "First Order Cadet"
            ship: "TIE/Se Bomber"
            threat: 2
            upgrades: [
                "Feedback Ping"
                "Concussion Bombs"
                "First Order Ordnance Tech"
            ]
        }
        {
            id: 592
            faction: "First Order"
            pilot: "Sienar-Jaemus Test Pilot"
            ship: "TIE/Se Bomber"
            threat: 2
            upgrades: [
                "Cluster Missiles"
                "Suppressive Gunner"
            ]
        }
        {
            id: 593
            faction: "Resistance"
            pilot: "Zorii Bliss"
            ship: "BTA-NR2 Y-Wing"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Babu Frik"
                "Proton Torpedoes"
                "Wartime Loadout"
                "R3 Astromech"
            ]
        }
        {
            id: 594
            faction: "Resistance"
            pilot: "Teza Nasz"
            ship: "BTA-NR2 Y-Wing"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Delayed Fuses"
                "R2 Astromech"
                "Engine Upgrade"
                "Ion Cannon Turret"
                "Concussion Bombs"
            ]
        }
        {
            id: 595
            faction: "Resistance"
            pilot: "Lega Fossang"
            ship: "BTA-NR2 Y-Wing"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "Wartime Loadout"
                "L4E-R5"
            ]
        }
        {
            id: 596
            faction: "Resistance"
            pilot: "Shasa Zaro"
            ship: "BTA-NR2 Y-Wing"
            threat: 2
            upgrades: [
                "Ion Cannon Turret"
                "Concussion Bombs"
                "Watchful Astromech"
                "Wartime Loadout"
            ]
        }
        {
            id: 597
            faction: "Resistance"
            pilot: "C'ai Threnalli"
            ship: "BTA-NR2 Y-Wing"
            threat: 2
            upgrades: [
                "Expert Handling"
                "Targeting Computer"
                "R2 Astromech"
                "Hull Upgrade"
                "Engine Upgrade"
            ]
        }
        {
            id: 598
            faction: "Resistance"
            pilot: "Aftab Ackbar"
            ship: "BTA-NR2 Y-Wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Wartime Loadout"
                "Electro-Chaff Missiles"
            ]
        }
        {
            id: 599
            faction: "Resistance"
            pilot: "Corus Kapellim"
            ship: "BTA-NR2 Y-Wing"
            threat: 2
            upgrades: [
                "Ion Cannon Turret"
                "Engine Upgrade"
                "Overtuned Modulators"
                "Targeting Computer"
            ]
        }
        {
            id: 600 
            faction: "Resistance"
            pilot: "New Republic Patrol"
            ship: "BTA-NR2 Y-Wing"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Shield Upgrade"
                "Ion Cannon Turret"
                "Targeting Computer"
                "R3 Astromech"
            ]
        }
        {
            id: 601
            faction: "Resistance"
            pilot: "Kijimi Spice Runner"
            ship: "BTA-NR2 Y-Wing"
            threat: 2
            upgrades: [
                "Tierfon Belly Run"
                "Engine Upgrade"
                "Ion Cannon Turret"
                "Targeting Computer"
                "Overtuned Modulators"
            ]
        }
        {
            id: 602
            faction: "Resistance"
            pilot: "Wilsa Teshlo"
            ship: "BTA-NR2 Y-Wing"
            threat: 3
            upgrades: [
                "Predator"
                "Engine Upgrade"
                "R3 Astromech"
                "Targeting Computer"
                "Ion Cannon Turret"
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

    exportObj.obstacles = {}
    # we just want to include obstacles in the manifest like we already do for other stuff. No information other than sources will be used

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
                    when 'obstacle'
                        if card.name not of exportObj.obstacles
                            exportObj.obstacles[card.name] = {sources: []}
                        exportObj.obstacles[card.name].sources.push expansion
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
                console.error "Cannot find translation for attribute #{field} for upgrade #{upgrade_name}. Please report this Issue. "
                throw e

    for condition_name, translations of condition_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.conditions[condition_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for condition #{condition_name}. Please report this Issue. "
                throw e

    for pilot_name, translations of pilot_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.pilots[pilot_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for pilot #{pilot_name}. Please report this Issue. "
                throw e

exportObj.fixIcons = (data) ->
    if data.text?
        data.text = data.text
            .replace(/%BULLSEYEARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bullseyearc"></i>')
            .replace(/%SINGLETURRETARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-singleturretarc"></i>')
            .replace(/%DOUBLETURRETARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-doubleturretarc"></i>')
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
            .replace(/%FORCE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-forcecharge"></i>')
            .replace(/%CHARGE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-charge"></i>')
            .replace(/%ENERGY%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-energy"></i>')
            .replace(/%CALCULATE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-calculate"></i>')
            .replace(/%BANKLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bankleft"></i>')
            .replace(/%BANKRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bankright"></i>')
            .replace(/%BARRELROLL%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-barrelroll"></i>')
            .replace(/%BOOST%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-boost"></i>')
            .replace(/%CANNON%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cannon"></i>')
            .replace(/%CARGO%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cargo"></i>')
            .replace(/%CLOAK%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cloak"></i>')
            .replace(/%F-COORDINATE%/g, '<i class="xwing-miniatures-font force xwing-miniatures-font-coordinate"></i>')
            .replace(/%COORDINATE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-coordinate"></i>')
            .replace(/%CRIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-crit"></i>')
            .replace(/%ASTROMECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-astromech"></i>')
            .replace(/%GUNNER%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-gunner"></i>')
            .replace(/%CREW%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-crew"></i>')
            .replace(/%TACTICALRELAY%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-tacticalrelay"></i>')
            .replace(/%HARDPOINT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hardpoint"></i>')
            .replace(/%EVADE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-evade"></i>')
            .replace(/%FOCUS%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-focus"></i>')
            .replace(/%HIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hit"></i>')
            .replace(/%ILLICIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-illicit"></i>')
            .replace(/%JAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-jam"></i>')
            .replace(/%KTURN%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-kturn"></i>')
            .replace(/%MISSILE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-missile"></i>')
            .replace(/%RECOVER%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-recover"></i>')
            .replace(/%F-REINFORCE%/g, '<i class="xwing-miniatures-font force xwing-miniatures-font-reinforce"></i>')
            .replace(/%REINFORCE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reinforce"></i>')
            .replace(/%REVERSESTRAIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reversestraight"></i>')
            .replace(/%REVERSEBANKLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reversebankleft"></i>')
            .replace(/%REVERSEBANKRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reversebankright"></i>')
            .replace(/%SHIELD%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-shield"></i>')
            .replace(/%SLAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-slam"></i>')
            .replace(/%SLOOPLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopleft"></i>')
            .replace(/%SLOOPRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopright"></i>')
            .replace(/%STRAIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-straight"></i>')
            .replace(/%STOP%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-stop"></i>')
            .replace(/%SENSOR%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sensor"></i>')
            .replace(/%LOCK%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-lock"></i>')
            .replace(/%TORPEDO%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-torpedo"></i>')
            .replace(/%TROLLLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollleft"></i>')
            .replace(/%TROLLRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollright"></i>')
            .replace(/%TURNLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnleft"></i>')
            .replace(/%TURNRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnright"></i>')
            .replace(/%TURRET%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turret"></i>')
            .replace(/%UTURN%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-kturn"></i>')
            .replace(/%TALENT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-talent"></i>')
            .replace(/%TITLE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-title"></i>')
            .replace(/%TEAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-team"></i>')
            .replace(/%TECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-tech"></i>')
            .replace(/%FORCEPOWER%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-forcepower"></i>')
            .replace(/%RANGEBONUS%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-rangebonusindicator"></i>')
            .replace(/%CONFIGURATION%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-config"></i>')
            .replace(/%AGILITY%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-agility"></i>')
            .replace(/%HULL%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hull"></i>')
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

exportObj.standardShipInclusions = [
    {name: 'X-Wing', faction: 'Rebel Alliance'}
    {name: 'YT-1300', faction: 'Rebel Alliance'}
    {name: 'B-Wing', faction: 'Rebel Alliance'}
    {name: 'A-Wing', faction: 'Rebel Alliance'}
    {name: 'Y-Wing', faction: 'Rebel Alliance'}
    {name: 'VCX-100', faction: 'Rebel Alliance'}
    {name: 'Sheathipede-Class Shuttle', faction: 'Rebel Alliance'}
    {name: 'TIE Advanced', faction: 'Galactic Empire'}
    {name: 'TIE Advanced Prototype', faction: 'Galactic Empire'}
    {name: 'TIE Fighter', faction: 'Galactic Empire'}
    {name: 'TIE Interceptor', faction: 'Galactic Empire'}
    {name: 'TIE Reaper', faction: 'Galactic Empire'}
    {name: 'TIE Defender', faction: 'Galactic Empire'}
    {name: 'TIE Striker', faction: 'Galactic Empire'}
    {name: 'TIE/rb Heavy', faction: 'Galactic Empire'}
    {name: 'VT-49 Decimator', faction: 'Galactic Empire'}
    {name: 'Firespray-31', faction: 'Scum and Villainy'}
    {name: 'Y-Wing', faction: 'Scum and Villainy'}
    {name: 'Mining Guild TIE Fighter', faction: 'Scum and Villainy'}
    {name: 'Fang Fighter', faction: 'Scum and Villainy'}
    {name: 'JumpMaster 5000', faction: 'Scum and Villainy'}
    {name: 'M3-A Interceptor', faction: 'Scum and Villainy'}
    {name: 'Customized YT-1300', faction: 'Scum and Villainy'}
    {name: 'Escape Craft', faction: 'Scum and Villainy'}
    {name: 'YV-666', faction: 'Scum and Villainy'}
    {name: 'Z-95 Headhunter', faction: 'Scum and Villainy'}
    {name: 'HWK-290', faction: 'Scum and Villainy'}
    {name: 'Fireball', faction: 'Resistance'}
    {name: 'T-70 X-Wing', faction: 'Resistance'}
    {name: 'RZ-2 A-Wing', faction: 'Resistance'}
    {name: 'BTA-NR2 Y-Wing', faction: 'Resistance'}
    {name: 'Resistance Transport', faction: 'Resistance'}
    {name: 'Resistance Transport Pod', faction: 'Resistance'}
    {name: 'TIE/Ba Interceptor', faction: 'First Order'}
    {name: 'TIE/FO Fighter', faction: 'First Order'}
    {name: 'TIE/VN Silencer', faction: 'First Order'}
    {name: 'TIE/SF Fighter', faction: 'First Order'}
    {name: 'TIE/Se Bomber', faction: 'First Order'}
    {name: 'TIE/WI Whisper', faction: 'First Order'}
    {name: 'Xi-class Light Shuttle', faction: 'First Order'}
    {name: 'Delta-7 Aethersprite', faction: 'Galactic Republic'}
    {name: 'Delta-7b Aethersprite', faction: 'Galactic Republic'}
    {name: 'ARC-170', faction: 'Galactic Republic'}
    {name: 'Naboo Royal N-1 Starfighter', faction: 'Galactic Republic'}
    {name: 'BTL-B Y-Wing', faction: 'Galactic Republic'}
    {name: 'V-19 Torrent', faction: 'Galactic Republic'}
    {name: 'Eta-2 Actis', faction: 'Galactic Republic'}
    {name: 'Nimbus-class V-Wing', faction: 'Galactic Republic'}
    {name: 'LAAT/i Gunship', faction: 'Galactic Republic'}
    {name: 'Vulture-class Droid Fighter', faction: 'Separatist Alliance'}
    {name: 'Hyena-Class Droid Bomber', faction: 'Separatist Alliance'}
    {name: 'Droid Tri-Fighter', faction: 'Separatist Alliance'}
    {name: 'Firespray-31', faction: 'Separatist Alliance'}
    {name: 'Sith Infiltrator', faction: 'Separatist Alliance'}
    {name: 'Nantex-Class Starfighter', faction: 'Separatist Alliance'}
    {name: 'HMP Droid Gunship', faction: 'Separatist Alliance'}
    {name: 'Belbullab-22 Starfighter', faction: 'Separatist Alliance'}
    {name: 'ARC-170', faction: 'Rebel Alliance'}
    {name: 'Fang Fighter', faction: 'Rebel Alliance'}
    {name: 'TIE Fighter', faction: 'Rebel Alliance'}
    {name: 'HWK-290', faction: 'Rebel Alliance'}
    {name: 'U-Wing', faction: 'Rebel Alliance'}
    {name: 'Z-95 Headhunter', faction: 'Rebel Alliance'}
    {name: 'ST-70 Assault Ship', faction: 'Scum and Villainy'}
    {name: 'Scavenged YT-1300', faction: 'Resistance'}
    {name: 'Gauntlet Fighter', faction: 'Galactic Empire'}
    {name: 'Gauntlet Fighter', faction: 'Rebel Alliance'}
    {name: 'Gauntlet Fighter', faction: 'Scum and Villainy'}
    {name: 'Gauntlet Fighter', faction: 'Separatist Alliance'}
    {name: 'Gauntlet Fighter', faction: 'Galactic Republic'}
]

# Used to exclude pilots from included ships
exportObj.standardPilotExclusions = [

    # Rebel Alliance
    'Hera Syndulla (VCX-100)'

    # Galactic Empire
    'Ved Foslo'

    # Scum and Villainy

    # Resistance
    'Han Solo (Resistance)'
    'Vi Moradi'

    # FO

    # Galactic Republic
    'Saesee Tiin'

    # Separatist Alliance
    'Phlac-Arphocc Prototype'

]

# Upgrades in that are not in standard
exportObj.standardUpgradeExclusions = [
    # Rebel Alliance
    'Cassian Andor'

    # Galactic Empire

    # Scum and Villainy
    'Boba Fett'
    'Slave I'

    # Resistance
    
    # FO
    'Supreme Leader Snoke'

    # Galactic Republic
    'R2-A6'
  
    # Separatist Alliance
    'Tal Merrik'

    # Generic
    'Advanced Sensors'
    'Delta-7B'
    'Inertial Dampeners'
    'Informant'
    'Interloper Turn'
    'Intimidation'
    'Precognitive Reflexes'
    'Seasoned Navigator'
    'Sense'
    'Supernatural Reflexes'
    'Static Discharge Vanes'
    'Stealth Device'
]

exportObj.epicExclusionsList = [
    'CR90 Corellian Corvette'
    'Raider-class Corvette'
    'GR-75 Medium Transport'
    'Gozanti-class Cruiser'
    'C-ROC Cruiser'
    'Syliure-class Hyperspace Ring'
    'Trident-class Assault Ship'
]


exportObj.epicExclusions = (data) ->
    if data.ship? and (data.ship in exportObj.epicExclusionsList)
        return false
    else if data.slot? and (data.slot == "Command")
        return false
    else if data.name? and (data.name in exportObj.epicExclusionsList)
        return false
    else
        return true

# Ships/Pilots excluded unless in the included list (with further excluded pilots list for included ships, i.e u-wing)
# while upgrades assumed included unless on the excluded list
exportObj.standardCheck = (data, faction='', shipCheck=false) ->
    if (shipCheck)
        if (data.name in exportObj.standardPilotExclusions)
            return false
        for ship in exportObj.standardShipInclusions
            if (ship.faction == faction && (data.name == ship.name || data.ship == ship.name || (Array.isArray(data.ship) and ship.name in data.ship)))
                return true
        return false
    else
        return data.name not in exportObj.standardUpgradeExclusions

exportObj.standardCheckBrowser = (data, faction='', type) ->
    # check ship/pilot first
    if type == 'Pilot'
        return data.name not in exportObj.standardPilotExclusions
    else if type == 'Ship'
        for ship in exportObj.standardShipInclusions
            # checks against name for ship itself or ship name/faction for pilot inclusions
            if (ship.faction == faction && (data.name == ship.name || data.ship == ship.name || (Array.isArray(data.ship) and ship.name in data.ship)))
                return true
        return false
    else
        return data.name not in exportObj.standardUpgradeExclusions
