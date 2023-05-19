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
        "T-65 X-wing":
            name: "T-65 X-wing"
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
        "BTL-A4 Y-wing":
            name: "BTL-A4 Y-wing"
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
        "RZ-1 A-wing":
            name: "RZ-1 A-wing"
            factions: [ "Rebel Alliance" ]
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            chassis: "Vectored Thrusters"
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
        "Modified YT-1300 Light Freighter":
            name: "Modified YT-1300 Light Freighter"
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
        "Customized YT-1300 Light Freighter":
            name: "Customized YT-1300 Light Freighter"
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
        "TIE/ln Fighter":
            name: "TIE/ln Fighter"
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
        "TIE Advanced x1":
            name: "TIE Advanced x1"
            factions: [ "Galactic Empire" ]
            attack: 2
            agility: 3
            hull: 3
            shields: 2
            chassis: "Advanced Targeting Computer"
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
        "TIE/in Interceptor":
            name: "TIE/in Interceptor"
            icon: "tieinterceptor"
            factions: [ "Galactic Empire" ]
            attack: 3
            agility: 3
            hull: 3
            shields: 0
            chassis: "Autothrusters"
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
        "Firespray-class Patrol Craft":
            name: "Firespray-class Patrol Craft"
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
        "HWK-290 Light Freighter":
            name: "HWK-290 Light Freighter"
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
        "Lambda-class T-4a Shuttle":
            name: "Lambda-class T-4a Shuttle"
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
        "A/SF-01 B-wing":
            name: "A/SF-01 B-wing"
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
        "TIE/sa Bomber":
            name: "TIE/sa Bomber"
            factions: [ "Galactic Empire" ]
            attack: 2
            agility: 2
            hull: 6
            shields: 0
            chassis: "Nimble Bomber"
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
        "Z-95-AF4 Headhunter":
            name: "Z-95-AF4 Headhunter"
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
        "TIE/d Defender":
            name: "TIE/d Defender"
            factions: [ "Galactic Empire" ]
            attack: 3
            agility: 3
            hull: 3
            shields: 4
            chassis: "Full Throttle"
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
        "E-wing":
            name: "E-wing"
            factions: [ "Rebel Alliance" ]
            attack: 3
            agility: 3
            hull: 3
            shields: 3
            chassis: "Experimental Scanners"
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
        "TIE/ph Phantom":
            name: "TIE/ph Phantom"
            factions: [ "Galactic Empire" ]
            attack: 3
            agility: 2
            hull: 3
            shields: 2
            chassis: "Stygium Array"
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
        "YT-2400 Light Freighter":
            name: "YT-2400 Light Freighter"
            factions: [ "Rebel Alliance" ]
            attackdt: 4
            agility: 2
            hull: 6
            shields: 4
            keyword: ["Freighter"]
            chassis: "Sensor Blindspot"
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
        "StarViper-class Attack Platform":
            name: "StarViper-class Attack Platform"
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 3
            hull: 4
            shields: 1
            chassis: "Microthrusters"
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
            factions: [ "Scum and Villainy" ]
            attack: 2
            agility: 3
            hull: 3
            shields: 1
            chassis: "Weapon Hardpoint"
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
        "Aggressor Assault Fighter":
            name: "Aggressor Assault Fighter"
            factions: [ "Scum and Villainy" ]
            attack: 3
            agility: 3
            hull: 5
            shields: 3
            chassis: "Advanced Droid Brain"
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
        "YV-666 Light Freighter":
            name: "YV-666 Light Freighter"
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
        "BTL-S8 K-wing":
            name: "BTL-S8 K-wing"
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
        "TIE/ca Punisher":
            name: "TIE/ca Punisher"
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
        "VCX-100 Light Freighter":
            name: "VCX-100 Light Freighter"
            factions: ["Rebel Alliance"]
            attack: 4
            agility: 0
            hull: 10
            shields: 4
            base: "Large"
            keyword: ["Freighter"]
            chassis: "Tail Gun"
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
            factions: ["Rebel Alliance"]
            attack: 3
            agility: 2
            hull: 3
            shields: 1
            chassis: "Locked and Loaded"
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
        "TIE Advanced v1":
            name: "TIE Advanced v1"
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
        "ARC-170 Starfighter":
            name: "ARC-170 Starfighter"
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
            factions: ["Scum and Villainy", "Rebel Alliance"]
            attack: 3
            agility: 3
            hull: 4
            shields: 0
            chassis: "Concordia Faceoff"
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
        "Quadrijet Transfer Spacetug":
            name: "Quadrijet Transfer Spacetug"
            factions: ["Scum and Villainy"]
            attack: 2
            agility: 2
            hull: 5
            shields: 0
            chassis: "Spacetug Tractor Array"
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
        "UT-60D U-wing":
            name: "UT-60D U-wing"
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
        "TIE/sk Striker":
            name: "TIE/sk Striker"
            factions: ["Galactic Empire"]
            attack: 3
            agility: 2
            hull: 4
            shields: 0
            chassis: "Adaptive Ailerons"
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
        "TIE/ag Aggressor":
            name: "TIE/ag Aggressor"
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
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 1
            hull: 7
            shields: 2
            base: "Medium"
            chassis: "Dead to Rights"
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
            factions: ["Rebel Alliance"]
            attack: 2
            attackb: 2
            agility: 2
            hull: 4
            shields: 1
            chassis: "Comms Shuttle"
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
            factions: ["Galactic Empire"]
            attack: 3
            agility: 1
            hull: 6
            shields: 2
            base: "Medium"
            chassis: "Controlled Ailerons"
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
            factions: ["Scum and Villainy"]
            attack: 2
            agility: 2
            hull: 2
            shields: 2
            chassis: "Co-Pilot"
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
        "T-70 X-wing":
            name: "T-70 X-wing"
            factions: [ "Resistance"]
            attack: 3
            agility: 2
            hull: 4
            shields: 3
            chassis: "Weapon Hardpoint"
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
        "RZ-2 A-wing":
            name: "RZ-2 A-wing"
            factions: ["Resistance"]
            attackt: 2
            agility: 3
            hull: 2
            shields: 2
            chassis: "Refined Gyrostabilizers"
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
        "TIE/fo Fighter":
            name: "TIE/fo Fighter"
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
        "TIE/vn Silencer":
            name: "TIE/vn Silencer"
            factions: ["First Order"]
            attack: 3
            agility: 3
            hull: 4
            shields: 2
            chassis: "Autothrusters"
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
        "TIE/sf Fighter":
            name: "TIE/sf Fighter"
            factions: ["First Order"]
            attack: 2
            attackt: 2
            agility: 2
            hull: 3
            shields: 3
            chassis: "Heavy Weapon Turret"
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
            factions: ["First Order"]
            attack: 4
            agility: 1
            hull: 6
            shields: 6
            chassis: "Linked Battery"
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
        "Modified TIE/ln Fighter":
            name: "Modified TIE/ln Fighter"
            factions: ["Scum and Villainy"]
            attack: 2
            agility: 3
            hull: 3
            shields: 0
            chassis: "Notched Stabilizers"
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
        "V-19 Torrent Starfighter":
            name: "V-19 Torrent Starfighter"
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
            factions: ["Galactic Republic"]
            attack: 2
            agility: 3
            hull: 3
            shields: 1
            chassis: "Fine-Tuned Controls"
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
            autoequip: [
                "Calibrated Laser Targeting"
            ]
        "Delta-7b Aethersprite":
            name: "Delta-7b Aethersprite"
            icon: "delta7aethersprite"
            factions: ["Galactic Republic"]
            attack: 3
            agility: 2
            hull: 3
            shields: 3
            chassis: "Fine-Tuned Controls"
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
            factions: ["Separatist Alliance"]
            attack: 2
            agility: 2
            hull: 3
            shields: 0
            chassis: "Networked Calculations"
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
            factions: ["Galactic Republic"]
            attack: 2
            agility: 2
            hull: 3
            shields: 2
            chassis: "Full Throttle"
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
        "Hyena-class Droid Bomber":
            name: "Hyena-class Droid Bomber"
            factions: ["Separatist Alliance"]
            attack: 2
            agility: 2
            hull: 5
            shields: 0
            chassis: "Networked Calculations"
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
            factions: ["Separatist Alliance"]
            attackbull: 3
            attackt: 2
            agility: 3
            hull: 4
            shields: 0
            chassis: "Pinpoint Tractor Array"
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
        "BTL-B Y-wing":
            name: "BTL-B Y-wing"
            factions: ["Galactic Republic"]
            attack: 2
            agility: 1
            hull: 5
            shields: 3
            chassis: "Plated Hull"
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
            factions: ["Resistance"]
            attack: 2
            agility: 2
            hull: 6
            shields: 0
            chassis: "Explosion with Wings"
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
        "TIE/ba Interceptor":
            name: "TIE/ba Interceptor"
            factions: ["First Order"]
            attack: 3
            agility: 3
            hull: 2
            shields: 2
            chassis: "Fine-Tuned Thrusters"
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
            factions: ["Separatist Alliance"]
            attackf: 2
            agility: 1
            hull: 5
            shields: 3
            chassis: "Networked Aim"
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
            factions: ["Galactic Republic"]
            attackdt: 2
            agility: 1
            hull: 8
            shields: 2
            base: "Medium"
            chassis: "Fire Convergence"
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
            factions: ["Galactic Empire"]
            attackt: 2
            agility: 1
            hull: 8
            shields: 0
            base: "Medium"
            chassis: "Rotating Cannons"
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
        "Droid Tri-fighter":
            name: "Droid Tri-fighter"
            factions: ["Separatist Alliance"]
            attack: 3
            agility: 3
            hull: 3
            shields: 0
            chassis: "Networked Calculations"
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
        "Nimbus-class V-wing":
            name: "Nimbus-class V-wing"
            factions: ["Galactic Republic"]
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            keyword: ["TIE"]
            chassis: "Twin Ion Engines"
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
        "Eta-2 Actis":
            name: "Eta-2 Actis"
            factions: ["Galactic Republic"]
            attackbull: 3
            attack: 2
            agility: 3
            hull: 3
            shields: 0
            chassis: "Intuitive Controls"
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
            factions: ["Galactic Republic"]
            agility: 1
            hull: 1
            shields: 2
            actions: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "BTA-NR2 Y-wing":
            name: "BTA-NR2 Y-wing"
            factions: ["Resistance"]
            attack: 2
            agility: 1
            hull: 4
            shields: 3
            chassis: "Intuitive Interface"
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
        "TIE/wi Whisper Modified Interceptor":
            name: "TIE/wi Whisper Modified Interceptor"
            factions: ["First Order"]
            attackbull: 3
            attackt: 2
            agility: 2
            hull: 3
            shields: 2
            chassis: "Heavy Weapon Turret"
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
        "TIE/se Bomber":
            name: "TIE/se Bomber"
            factions: ["First Order"]
            attack: 2
            agility: 2
            hull: 4
            shields: 2
            chassis: "Pursuit Thrusters"
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
        "Clone Z-95 Headhunter":
            name: "Clone Z-95 Headhunter"
            factions: [ "Galactic Republic" ]
            attack: 2
            agility: 2
            hull: 2
            shields: 2
            chassis: "Versatile Frame"
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
        "Rogue-class Starfighter":
            name: "Rogue-class Starfighter"
            factions: [ "Separatist Alliance", "Scum and Villainy" ]
            attack: 2
            agility: 2
            hull: 5
            shields: 2
            chassis: "Dead to Rights"
            actions: [
                "Focus"
                "R-> Boost"
                "Focus"
                "R-> Barrel Roll"
                "Evade"
                "R-> Barrel Roll"
                "Lock"
                "R-Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 0, 1, 2, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 3, 3 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
            ]

        # Epic Section
        "CR90 Corellian Corvette":
            name: "CR90 Corellian Corvette"
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
            ship: "T-65 X-wing"
            keyword: ["Partisan"]
            skill: 1
            points: 5
            loadout: 4
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
            ship: "T-65 X-wing"
            skill: 2
            points: 5
            loadout: 4
            slots: [
                "Astromech"
                "Configuration"
            ]
        }
        {
            name: "Red Squadron Veteran"
            id: 2
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 3
            points: 5
            loadout: 3
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
            ship: "T-65 X-wing"
            skill: 4
            points: 5
            loadout: 15
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Configuration"
            ]
        }
        {
            name: "Luke Skywalker"
            id: 4
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            keyword: ["Light Side"]
            force: 2
            points: 6
            loadout: 24
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
            ship: "T-65 X-wing"
            skill: 6
            points: 5
            loadout: 9
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
            ship: "T-65 X-wing"
            skill: 4
            points: 5
            loadout: 16
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
            ship: "T-65 X-wing"
            skill: 3
            points: 5
            loadout: 18
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
            ship: "T-65 X-wing"
            skill: 2
            points: 4
            loadout: 10
            keyword: ["Partisan"]
            slots: [
                "Missile"
                "Illicit"
                "Configuration"
            ]
        }
        {
            name: "Thane Kyrell"
            id: 9
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 4
            loadout: 8
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Configuration"
            ]
        }
        {
            name: "Leevan Tenza"
            id: 10
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 3
            points: 4
            loadout: 8
            keyword: ["Partisan"]
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Illicit"
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
            ship: "T-65 X-wing"
            skill: 4
            points: 4
            loadout: 7
            keyword: ["Partisan"]
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Illicit"
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
            ship: "TIE/ln Fighter"
            skill: 3
            points: 2
            loadout: 3
            keyword: ["Spectre", "Mandalorian"]
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
            ship: "TIE/ln Fighter"
            skill: 3
            force: 1
            points: 3
            loadout: 6
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
            ship: "TIE/ln Fighter"
            skill: 2
            points: 3
            loadout: 8
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
            ship: "TIE/ln Fighter"
            skill: 2
            points: 3
            loadout: 8
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
            ship: "BTL-S8 K-wing"
            skill: 4
            points: 5
            loadout: 14
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
            ship: "BTL-S8 K-wing"
            skill: 3
            points: 5
            loadout: 16
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
            ship: "BTL-S8 K-wing"
            skill: 2
            points: 5
            loadout: 7
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
            ship: "E-wing"
            skill: 5
            points: 6
            loadout: 20
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
            ship: "E-wing"
            skill: 4
            points: 5
            loadout: 18
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
            ship: "E-wing"
            skill: 4
            points: 5
            loadout: 12
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
            ship: "E-wing"
            skill: 2
            points: 5
            loadout: 14
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
            ship: "BTL-A4 Y-wing"
            skill: 5
            points: 5
            loadout: 18
            slots: [
                "Talent"
                "Turret"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Horton Salm"
            id: 26
            unique: true
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 3
            loadout: 7
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
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 4
            loadout: 12
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
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
            ship: "BTL-A4 Y-wing"
            skill: 3
            points: 3
            loadout: 8
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
            ship: "BTL-A4 Y-wing"
            skill: 3
            points: 4
            loadout: 6
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
            ship: "BTL-A4 Y-wing"
            skill: 2
            points: 4
            loadout: 8
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
            ship: "UT-60D U-wing"
            skill: 4
            points: 5
            loadout: 10
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
            ship: "UT-60D U-wing"
            skill: 3
            points: 5
            loadout: 12
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
            ship: "UT-60D U-wing"
            skill: 2
            points: 5
            loadout: 9
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
            ship: "UT-60D U-wing"
            skill: 3
            points: 5
            loadout: 14
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
            ship: "UT-60D U-wing"
            skill: 4
            points: 5
            loadout: 18
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
            ship: "UT-60D U-wing"
            skill: 2
            points: 5
            loadout: 16
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
            ship: "UT-60D U-wing"
            skill: 2
            points: 5
            loadout: 6
            slots: [
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Partisan Renegade"
            id: 38
            faction: "Rebel Alliance"
            ship: "UT-60D U-wing"
            skill: 1
            points: 5
            loadout: 6
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
            ship: "YT-2400 Light Freighter"
            skill: 5
            points: 10
            loadout: 22
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
            ship: "YT-2400 Light Freighter"
            skill: 3
            points: 8
            loadout: 16
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
            ship: "YT-2400 Light Freighter"
            skill: 1
            points: 8
            loadout: 7
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
            ship: "Modified YT-1300 Light Freighter"
            skill: 6
            points: 7
            loadout: 20
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
            ship: "Modified YT-1300 Light Freighter"
            skill: 5
            points: 7
            loadout: 21
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
            ship: "Modified YT-1300 Light Freighter"
            skill: 4
            charge: 1
            recurring: 1
            points: 7
            loadout: 18
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
            ship: "Modified YT-1300 Light Freighter"
            skill: 1
            points: 7
            loadout: 6
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
            ship: "HWK-290 Light Freighter"
            skill: 5
            points: 6
            loadout: 10
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
            ship: "HWK-290 Light Freighter"
            skill: 4
            points: 5
            loadout: 12
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
            ship: "HWK-290 Light Freighter"
            skill: 3
            points: 5
            loadout: 8
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
            ship: "HWK-290 Light Freighter"
            skill: 2
            points: 4
            loadout: 6
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
            ship: "RZ-1 A-wing"
            skill: 4
            points: 4
            loadout: 11
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
            ship: "RZ-1 A-wing"
            skill: 3
            points: 3
            loadout: 5
            slots: [
                "Talent"
                "Talent"
                "Configuration"
            ]
        }
        {
            name: "Green Squadron Pilot"
            id: 52
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 3
            points: 4
            loadout: 4
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
            ship: "RZ-1 A-wing"
            skill: 1
            points: 4
            loadout: 3
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
            ship: "Z-95-AF4 Headhunter"
            skill: 5
            points: 4
            loadout: 11
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
            ship: "Z-95-AF4 Headhunter"
            skill: 4
            points: 3
            loadout: 11
            slots: [
                "Talent"
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Tala Squadron Pilot"
            id: 56
            faction: "Rebel Alliance"
            ship: "Z-95-AF4 Headhunter"
            skill: 2
            points: 3
            loadout: 4
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Bandit Squadron Pilot"
            id: 57
            faction: "Rebel Alliance"
            ship: "Z-95-AF4 Headhunter"
            skill: 1
            points: 3
            loadout: 5
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
            loadout: 11
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
            loadout: 10
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
            loadout: 6
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
            ship: "VCX-100 Light Freighter"
            skill: 5
            points: 7
            loadout: 20
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
            ship: "VCX-100 Light Freighter"
            skill: 3
            keyword: ["Light Side", "Jedi", "Spectre"]
            force: 2
            points: 7
            loadout: 20
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
            ship: "VCX-100 Light Freighter"
            skill: 2
            points: 6
            loadout: 14
            keyword: ["Droid","Spectre"]
            slots: [
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
            name: "Lothal Rebel"
            id: 64
            faction: "Rebel Alliance"
            ship: "VCX-100 Light Freighter"
            skill: 2
            points: 7
            loadout: 8
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
            loadout: 9
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
            loadout: 6
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
            loadout: 7
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
            loadout: 10
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
            loadout: 10
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
            loadout: 6
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
            loadout: 3
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
            loadout: 5
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
            ship: "A/SF-01 B-wing"
            skill: 4
            points: 5
            loadout: 12
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
            ship: "A/SF-01 B-wing"
            skill: 4
            points: 5
            loadout: 14
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
            ship: "A/SF-01 B-wing"
            skill: 3
            points: 4
            loadout: 4
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
            ship: "A/SF-01 B-wing"
            skill: 2
            points: 4
            loadout: 4
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
            ship: "ARC-170 Starfighter"
            skill: 5
            points: 5
            loadout: 8
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
            ship: "ARC-170 Starfighter"
            skill: 4
            points: 4
            loadout: 8
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
            ship: "ARC-170 Starfighter"
            skill: 4
            points: 4
            loadout: 7
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
            ship: "ARC-170 Starfighter"
            skill: 3
            points: 4
            loadout: 9
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
            ship: "Aggressor Assault Fighter"
            skill: 4
            points: 7
            loadout: 16
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
            ship: "Aggressor Assault Fighter"
            skill: 4
            points: 7
            loadout: 16
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
            ship: "Aggressor Assault Fighter"
            skill: 4
            points: 7
            loadout: 16
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
            ship: "Aggressor Assault Fighter"
            skill: 4
            points: 6
            loadout: 13
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
            ship: "BTL-A4 Y-wing"
            skill: 5
            points: 4
            loadout: 7
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
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 4
            loadout: 10
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
            ship: "BTL-A4 Y-wing"
            skill: 2
            points: 4
            loadout: 6
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
            ship: "BTL-A4 Y-wing"
            skill: 1
            points: 4
            loadout: 4
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
            ship: "Customized YT-1300 Light Freighter"
            skill: 6
            points: 6
            loadout: 20
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
            ship: "Customized YT-1300 Light Freighter"
            skill: 4
            points: 5
            loadout: 10
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
            ship: "Customized YT-1300 Light Freighter"
            skill: 2
            points: 5
            loadout: 9
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
            ship: "Customized YT-1300 Light Freighter"
            skill: 1
            points: 5
            loadout: 6
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
            loadout: 4
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
            loadout: 4
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
            loadout: 4
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
            loadout: 0
            keyword: ["Droid"]
            chassis: "Rigged Energy Cells"
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
            points: 6
            loadout: 12
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Modification"
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
            points: 5
            loadout: 10
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Modification"
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
            loadout: 8
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
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
            points: 4
            loadout: 7
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Missile"
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Skull Squadron Pilot"
            id: 101
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 4
            loadout: 6
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
            points: 4
            loadout: 5
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
            ship: "Firespray-class Patrol Craft"
            skill: 5
            points: 9
            loadout: 18
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Emon Azzameen"
            id: 104
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            skill: 4
            points: 7
            loadout: 17
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
            ship: "Firespray-class Patrol Craft"
            skill: 4
            points: 7
            loadout: 18
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
            ship: "Firespray-class Patrol Craft"
            skill: 3
            points: 7
            loadout: 16
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
            ship: "Firespray-class Patrol Craft"
            skill: 3
            points: 7
            loadout: 18
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
            ship: "Firespray-class Patrol Craft"
            skill: 2
            points: 7
            loadout: 10
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
            loadout: 14
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
            loadout: 10
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
            loadout: 3
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
            ship: "HWK-290 Light Freighter"
            skill: 3
            points: 5
            loadout: 10
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
            ship: "HWK-290 Light Freighter"
            skill: 4
            charge: 3
            recurring: 1
            points: 4
            loadout: 12
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Torkil Mux"
            id: 114
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290 Light Freighter"
            skill: 2
            points: 5
            loadout: 8
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
            points: 6
            loadout: 11
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
            loadout: 20
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Torpedo"
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
            points: 5
            loadout: 15
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
            loadout: 4
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
            loadout: 12
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
            loadout: 8
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
            loadout: 10
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
            loadout: 12
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
            loadout: 3
            slots: [
                "Talent"
            ]
        }
        {
            name: "Cartel Marauder"
            id: 124
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 2
            points: 4
            loadout: 7
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
            loadout: 20
            force: 2
            keyword: ["Bounty Hunter","Dark Side"]
            slots: [
                "Force"
                "Talent"
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
            loadout: 15
            keyword: ["Bounty Hunter","Mandalorian"]
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
            loadout: 9
            keyword: ["Bounty Hunter","Mandalorian"]
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
            loadout: 6
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
            loadout: 10
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
            loadout: 12
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
            loadout: 3
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
            points: 4
            loadout: 12
            slots: [
                "Talent"
                "Talent"
                "Cannon"
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
            points: 4
            loadout: 14
            slots: [
                "Talent"
                "Illicit"
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
            points: 3
            loadout: 9
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
            points: 3
            loadout: 12
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
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
            points: 3
            loadout: 3
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
            points: 3
            loadout: 11
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
            points: 3
            loadout: 8
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
            points: 3
            loadout: 4
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
            ship: "Quadrijet Transfer Spacetug"
            skill: 4
            points: 4
            loadout: 13
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
            ship: "Quadrijet Transfer Spacetug"
            skill: 2
            points: 4
            loadout: 6
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
            ship: "Quadrijet Transfer Spacetug"
            skill: 2
            points: 4
            loadout: 7
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
            ship: "Quadrijet Transfer Spacetug"
            skill: 1
            points: 4
            loadout: 4
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
            loadout: 17
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
            loadout: 12
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
            points: 5
            loadout: 7
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
            ship: "StarViper-class Attack Platform"
            skill: 5
            points: 7
            loadout: 20
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
            ship: "StarViper-class Attack Platform"
            skill: 4
            points: 5
            loadout: 7
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
            ship: "StarViper-class Attack Platform"
            skill: 4
            points: 5
            loadout: 10
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
            ship: "StarViper-class Attack Platform"
            skill: 3
            points: 5
            loadout: 6
            slots: [
                "Tech"
            ]
        }
        {
            name: "Black Sun Enforcer"
            id: 151
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 2
            points: 5
            loadout: 6
            slots: [
                "Tech"
            ]
        }
        {
            name: "Moralo Eval"
            id: 152
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666 Light Freighter"
            skill: 4
            charge: 2
            points: 7
            loadout: 20
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
            ship: "YV-666 Light Freighter"
            skill: 4
            points: 6
            loadout: 16
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
            ship: "YV-666 Light Freighter"
            skill: 3
            points: 6
            loadout: 22
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
            name: "Trandoshan Slaver"
            id: 155
            faction: "Scum and Villainy"
            ship: "YV-666 Light Freighter"
            skill: 2
            points: 6
            loadout: 6
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
            ship: "Z-95-AF4 Headhunter"
            skill: 4
            points: 3
            loadout: 7
            slots: [
                "Talent"
                "Missile"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Kaa'to Leeachos"
            id: 157
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95-AF4 Headhunter"
            skill: 3
            points: 3
            loadout: 11
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
            ship: "Z-95-AF4 Headhunter"
            skill: 3
            points: 3
            loadout: 4
            slots: [
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Binayre Pirate"
            id: 159
            faction: "Scum and Villainy"
            ship: "Z-95-AF4 Headhunter"
            skill: 1
            points: 3
            loadout: 2
            slots: [
                "Illicit"
            ]
        }
        {
            name: "Nashtah Pup"
            id: 160
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95-AF4 Headhunter"
            skill: "*"
            points: 2
            loadout: 0
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
            loadout: 16
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
            points: 5
            loadout: 14
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
            points: 5
            loadout: 9
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
            points: 5
            loadout: 7
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
            ship: "Lambda-class T-4a Shuttle"
            skill: 4
            points: 6
            loadout: 22
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
            ship: "Lambda-class T-4a Shuttle"
            skill: 3
            points: 5
            loadout: 14
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
            ship: "Lambda-class T-4a Shuttle"
            skill: 3
            charge: 2
            points: 6
            loadout: 20
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
            ship: "Lambda-class T-4a Shuttle"
            skill: 1
            points: 5
            loadout: 8
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
            ship: "TIE Advanced v1"
            skill: 5
            points: 5
            loadout: 10
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
            ship: "TIE Advanced v1"
            skill: 4
            points: 4
            loadout: 6
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
            ship: "TIE Advanced v1"
            skill: 3
            points: 4
            loadout: 5
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
            ship: "TIE Advanced v1"
            skill: 3
            points: 4
            loadout: 4
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
            ship: "TIE Advanced x1"
            skill: 6
            keyword: ["Dark Side","Sith"]
            points: 7
            loadout: 21
            force: 3
            slots: [
                "Force"
                "Force"
                "Talent"
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
            ship: "TIE Advanced x1"
            skill: 5
            points: 4
            loadout: 10
            slots: [
                "Talent"
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
            ship: "TIE Advanced x1"
            skill: 4
            points: 4
            loadout: 8
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
            ship: "TIE Advanced x1"
            skill: 3
            points: 4
            loadout: 14
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
            ship: "TIE Advanced x1"
            skill: 3
            points: 4
            loadout: 2
            slots: [
                "Talent"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Tempest Squadron Pilot"
            id: 178
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 2
            points: 4
            loadout: 4
            slots: [
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Soontir Fel"
            id: 179
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 6
            points: 5
            loadout: 10
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Turr Phennir"
            id: 180
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            loadout: 9
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Saber Squadron Ace"
            id: 181
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            loadout: 3
            slots: [
                "Talent"
                "Configuration"
            ]
        }
        {
            name: "Alpha Squadron Pilot"
            id: 182
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 1
            points: 4
            loadout: 2
            slots: [
                "Talent"
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
            loadout: 16
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
            points: 4
            loadout: 6
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
            points: 4
            loadout: 12
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
            points: 4
            loadout: 6
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
            ship: "TIE/ag Aggressor"
            skill: 4
            points: 5
            loadout: 19
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
            ship: "TIE/ag Aggressor"
            skill: 2
            points: 4
            loadout: 13
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
            ship: "TIE/ag Aggressor"
            skill: 3
            points: 4
            loadout: 12
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
            ship: "TIE/ag Aggressor"
            skill: 2
            points: 4
            loadout: 8
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
            ship: "TIE/ca Punisher"
            skill: 5
            points: 7
            loadout: 25
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
            ship: "TIE/ca Punisher"
            skill: 4
            points: 6
            loadout: 20
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
            ship: "TIE/ca Punisher"
            skill: 2
            points: 5
            loadout: 6
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
            ship: "TIE/d Defender"
            skill: 4
            points: 7
            loadout: 10
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
            ship: "TIE/d Defender"
            skill: 4
            points: 7
            loadout: 12
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
            ship: "TIE/d Defender"
            skill: 5
            points: 7
            loadout: 13
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
            ship: "TIE/d Defender"
            skill: 4
            points: 7
            loadout: 6
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
            ship: "TIE/d Defender"
            skill: 1
            points: 7
            loadout: 4
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
            ship: "TIE/ph Phantom"
            skill: 5
            points: 5
            loadout: 8
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
            ship: "TIE/ph Phantom"
            skill: 4
            points: 5
            loadout: 9
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
            ship: "TIE/ph Phantom"
            skill: 4
            points: 6
            loadout: 9
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
            ship: "TIE/ph Phantom"
            skill: 3
            points: 5
            loadout: 6
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
            ship: "TIE/sa Bomber"
            skill: 4
            points: 4
            loadout: 10
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
            ship: "TIE/sa Bomber"
            skill: 4
            points: 5
            loadout: 12
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
            ship: "TIE/sa Bomber"
            skill: 5
            points: 4
            loadout: 10
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
            ship: "TIE/sa Bomber"
            skill: 2
            points: 3
            loadout: 11
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
            ship: "TIE/sa Bomber"
            skill: 3
            points: 4
            loadout: 10
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
            ship: "TIE/sa Bomber"
            skill: 2
            points: 4
            loadout: 6
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
            ship: "TIE/sk Striker"
            skill: 4
            points: 4
            loadout: 11
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
            ship: "TIE/sk Striker"
            skill: 4
            points: 4
            loadout: 9
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
            ship: "TIE/sk Striker"
            skill: 5
            points: 5
            loadout: 18
            slots: [
                "Talent"
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
            ship: "TIE/sk Striker"
            skill: 3
            points: 4
            loadout: 5
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
            ship: "TIE/sk Striker"
            skill: 1
            points: 4
            loadout: 4
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
            points: 7
            loadout: 20
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
            points: 7
            loadout: 19
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
            points: 7
            loadout: 12
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
            ship: "TIE/ln Fighter"
            skill: 5
            points: 4
            loadout: 8
            slots: [
                "Talent"
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Iden Versio"
            id: 218
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            charge: 1
            points: 4
            loadout: 8
            slots: [
                "Talent"
                "Talent"
                "Cannon"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Mauler" Mithel'
            id: 219
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 5
            points: 3
            loadout: 4
            slots: [
                "Talent"
                "Cannon"
            ]
        }
        {
            name: '"Scourge" Skutu'
            id: 220
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 5
            points: 3
            loadout: 3
            slots: [
                "Talent"
            ]
        }
        {
            name: '"Wampa"'
            id: 221
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 1
            recurring: 1
            charge: 1
            points: 3
            loadout: 5
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Del Meeko"
            id: 222
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            points: 3
            loadout: 10
            slots: [
                "Talent"
                "Cannon"
            ]
        }
        {
            name: "Gideon Hask"
            id: 223
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            points: 3
            loadout: 12
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Seyn Marana"
            id: 224
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            points: 3
            loadout: 12
            slots: [
                "Talent"
                "Cannon"
                "Modification"
            ]
        }
        {
            name: "Valen Rudor"
            id: 225
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 3
            loadout: 5
            slots: [
                "Talent"
                "Talent"
            ]
        }
        {
            name: '"Night Beast"'
            id: 226
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 3
            loadout: 4
            slots: [
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Black Squadron Ace"
            id: 227
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 2
            loadout: 0
            slots: [
            ]
        }
        {
            name: "Obsidian Squadron Pilot"
            id: 228
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 2
            loadout: 0
            slots: [
            ]
        }
        {
            name: "Academy Pilot"
            id: 229
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 1
            points: 2
            loadout: 0
            slots: [
            ]
        }
        {
            name: "Spice Runner"
            id: 230
            faction: "Scum and Villainy"
            ship: "HWK-290 Light Freighter"
            skill: 1
            points: 3
            loadout: 4
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
            ship: "T-70 X-wing"
            skill: 6
            points: 7
            loadout: 25
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
            ship: "TIE/fo Fighter"
            skill: 6
            points: 3
            loadout: 7
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
            ship: "TIE/fo Fighter"
            skill: 3
            points: 3
            loadout: 3
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
            ship: "TIE/fo Fighter"
            skill: 2
            points: 3
            loadout: 9
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
            ship: "TIE/vn Silencer"
            skill: 5
            force: 2
            keyword: ["Dark Side"]
            points: 7
            loadout: 22
            applies_condition: '''I'll Show You the Dark Side'''.canonicalize()
            slots: [
                "Force"
                "Talent"
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
            ship: "TIE/vn Silencer"
            skill: 5
            points: 5
            loadout: 12
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
            points: 8
            loadout: 20
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
            ship: "RZ-2 A-wing"
            skill: 5
            points: 4
            loadout: 12
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
            ship: "RZ-2 A-wing"
            skill: 5
            charge: 1
            recurring: 1
            points: 4
            loadout: 12
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
            ship: "TIE/sf Fighter"
            skill: 4
            points: 4
            loadout: 5
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
            ship: "TIE/sf Fighter"
            skill: 6
            charge: 1
            recurring: 1
            points: 5
            loadout: 12
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
            points: 7
            loadout: 25
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
            loadout: 15
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
            points: 6
            loadout: 18
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
            ship: "Modified TIE/ln Fighter"
            skill: 3
            charge: 1
            recurring: 1
            points: 3
            loadout: 7
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
            ship: "Modified TIE/ln Fighter"
            skill: 2
            points: 3
            loadout: 1
            slots: [
                "Talent"
            ]
        }
        {
            name: "Ahhav"
            id: 249
            unique: true
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 3
            points: 3
            loadout: 8
            slots: [
                "Talent"
                "Illicit"
                "Illicit"
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
            points: 6
            loadout: 22
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
            loadout: 13
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
            ship: "T-70 X-wing"
            skill: 4
            points: 4
            loadout: 8
            slots: [
                "Talent"
                "Tech"
                "Cannon"
                "Astromech"
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
            ship: "T-70 X-wing"
            skill: 3
            points: 5
            loadout: 13
            slots: [
                "Talent"
                "Tech"
                "Astromech"
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
            ship: "T-70 X-wing"
            skill: 2
            points: 5
            loadout: 14
            slots: [
                "Tech"
                "Astromech"
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
            ship: "T-70 X-wing"
            skill: 1
            points: 4
            loadout: 8
            slots: [
                "Tech"
                "Astromech"
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
            ship: "T-70 X-wing"
            skill: 4
            points: 5
            loadout: 10
            slots: [
                "Talent"
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Red Squadron Expert"
            id: 257
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 3
            points: 5
            loadout: 2
            slots: [
                "Talent"
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Blue Squadron Rookie"
            id: 258
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 1
            points: 5
            loadout: 4
            slots: [
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Zeta Squadron Survivor"
            id: 259
            faction: "First Order"
            ship: "TIE/sf Fighter"
            skill: 2
            points: 4
            loadout: 4
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
            loadout: 11
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
            ship: "TIE/fo Fighter"
            skill: 2
            points: 3
            loadout: 5
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
            ship: "TIE/fo Fighter"
            skill: 4
            points: 3
            loadout: 6
            slots: [
                "Talent"
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
            ship: "TIE/fo Fighter"
            skill: 3
            points: 3
            loadout: 8
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
            ship: "TIE/fo Fighter"
            skill: 4
            points: 3
            loadout: 8
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
            ship: "TIE/fo Fighter"
            skill: 1
            points: 3
            loadout: 4
            slots: [ 
                "Talent"
                "Tech" 
                "Modification"
            ]
        }
        {
            name: "Commander Malarus"
            id: 266
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 5
            points: 3
            loadout: 4
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
            ship: "TIE/fo Fighter"
            skill: 3
            points: 3
            loadout: 4
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
            ship: "TIE/fo Fighter"
            skill: 2
            points: 3
            loadout: 3
            slots: [
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Epsilon Squadron Cadet"
            id: 269
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 1
            points: 3
            loadout: 2
            slots: [
                "Tech"
            ]
        }
        {
            name: "Greer Sonnel"
            id: 270
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 4
            points: 4
            loadout: 7
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
            ship: "RZ-2 A-wing"
            skill: 3
            points: 4
            loadout: 11
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
            points: 7
            loadout: 19
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
            loadout: 10
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
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
            loadout: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
                "Configuration"
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
            points: 4
            loadout: 9
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
                "Configuration"
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
            loadout: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
                "Configuration"
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
            loadout: 3
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
            loadout: 10
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Configuration"
                "Modification"
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
            loadout: 0
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
            ship: "ARC-170 Starfighter"
            skill: 3
            points: 5
            loadout: 15
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
            loadout: 14
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
            loadout: 12
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
            ship: "TIE/vn Silencer"
            skill: 3
            points: 5
            loadout: 10
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
            ship: "TIE/vn Silencer"
            skill: 4
            points: 5
            loadout: 10
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
            ship: "TIE/sf Fighter"
            skill: 3
            points: 4
            loadout: 3
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
            ship: "TIE/vn Silencer"
            skill: 1
            points: 5
            loadout: 5
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
            ship: "TIE/vn Silencer"
            skill: 4
            points: 5
            loadout: 5
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
            loadout: 8
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
            loadout: 17
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
            ship: "TIE/fo Fighter"
            skill: 0
            points: 3
            loadout: 5
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
            loadout: 17
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
            loadout: 19
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
            loadout: 22
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
            loadout: 18
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
            loadout: 10
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
            ship: "T-70 X-wing"
            skill: 3
            points: 4
            loadout: 7
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
            ship: "T-70 X-wing"
            skill: 4
            points: 4
            loadout: 9
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
            ship: "T-70 X-wing"
            skill: 5
            points: 5
            loadout: 16
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
            ship: "T-70 X-wing"
            skill: 5
            points: 4
            loadout: 8
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
            ship: "RZ-2 A-wing"
            skill: 3
            points: 4
            loadout: 2
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
            ship: "RZ-2 A-wing"
            skill: 1
            points: 4
            loadout: 4
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
            ship: "Modified TIE/ln Fighter"
            skill: 4
            points: 3
            loadout: 6
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
            ship: "Modified TIE/ln Fighter"
            skill: 2
            loadout: 7
            charge: 1
            recurring: 1
            points: 3
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Mining Guild Sentry"
            id: 304
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 1
            points: 3
            loadout: 3
            slots: [
                "Illicit"
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
            loadout: 11
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
            loadout: 9
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
            loadout: 5
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
            loadout: 17
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
            loadout: 8
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
            points: 2
            loadout: 4
            max_per_squad: 2
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "DFS-081"
            id: 311
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            points: 2
            loadout: 7
            unique: true
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Modification"
                "Configuration"
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
            loadout: 14
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
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
            loadout: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
                "Configuration"
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
            loadout: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: '"Kickback"'
            id: 315
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 4
            points: 3
            loadout: 8
            keyword: ["Clone"]
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
            ship: "V-19 Torrent Starfighter"
            skill: 5
            points: 4
            loadout: 16
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Swoop"'
            id: 317
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 3
            points: 4
            loadout: 13
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
            ship: "V-19 Torrent Starfighter"
            skill: 3
            points: 3
            loadout: 8
            keyword: ["Clone"]
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
            ship: "V-19 Torrent Starfighter"
            skill: 2
            points: 4
            loadout: 13
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
            ship: "V-19 Torrent Starfighter"
            skill: 3
            points: 4
            loadout: 4
            keyword: ["Clone"]
            slots: [
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Gold Squadron Trooper"
            id: 321
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 2
            points: 4
            loadout: 6
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
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
            loadout: 20
            keyword: ["Light Side"]
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Bravo Flight Officer"
            id: 323
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 2
            points: 4
            loadout: 8
            slots: [
                "Sensor"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Techno Union Bomber"
            id: 324
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 1
            points: 3
            loadout: 6
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
            ship: "Hyena-class Droid Bomber"
            skill: 3
            max_per_squad: 3
            keyword: ["Droid"]
            points: 3
            loadout: 8
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
            ship: "Hyena-class Droid Bomber"
            skill: 4
            points: 4
            loadout: 10
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
            ship: "Hyena-class Droid Bomber"
            skill: 3
            points: 3
            loadout: 4
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
            ship: "Hyena-class Droid Bomber"
            skill: 3
            points: 4
            loadout: 16
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
            ship: "Hyena-class Droid Bomber"
            skill: 1
            points: 3
            loadout: 9
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
            points: 4
            loadout: 8
            applies_condition: '''Decoyed'''.canonicalize()
            slots: [
                "Sensor"
                "Astromech"
                "Modification"
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
            points: 4
            loadout: 14
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
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
            points: 4
            loadout: 18
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
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
            points: 4
            loadout: 12
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
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
            points: 7
            loadout: 24
            keyword: ["Dark Side","Sith"]
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
            points: 5
            loadout: 12
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
            loadout: 9
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
            loadout: 10
            unique: true
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: '"Odd Ball" (ARC-170)'
            id: 338
            xws: "oddball-arc170starfighter"
            canonical_name: '"Odd Ball"'.canonicalize()
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 5
            points: 4
            loadout: 7
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
            ship: "ARC-170 Starfighter"
            skill: 3
            points: 4
            loadout: 9
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
            ship: "ARC-170 Starfighter"
            skill: 3
            points: 5
            loadout: 10
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
            ship: "ARC-170 Starfighter"
            skill: 2
            points: 5
            loadout: 8
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
            ship: "ARC-170 Starfighter"
            skill: 4
            charge: 1
            points: 4
            loadout: 9
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
            points: 2
            loadout: 3
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
            loadout: 4
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
            loadout: 9
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
            loadout: 6
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
            loadout: 12
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
            loadout: 6
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
            points: 2
            loadout: 4
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
            loadout: 15
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
            loadout: 20
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
            loadout: 20
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
            loadout: 4
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
            loadout: 6
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
            loadout: 9
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
            points: 4
            loadout: 10
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
            points: 5
            loadout: 15
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
            loadout: 7
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
            ship: "BTL-B Y-wing"
            skill: 6
            force: 3
            points: 6
            loadout: 20
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
            ship: "BTL-B Y-wing"
            skill: 3
            points: 4
            loadout: 4
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
            ship: "BTL-B Y-wing"
            skill: 2
            points: 4
            loadout: 6
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
            ship: "BTL-B Y-wing"
            skill: 2
            points: 3
            loadout: 9
            keyword: ["Droid"]
            slots: [
                "Sensor"
                "Turret"
                "Torpedo"
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
            ship: "BTL-B Y-wing"
            skill: 2
            points: 4
            loadout: 16
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
            ship: "BTL-B Y-wing"
            skill: 3
            points: 3
            loadout: 10
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Turret"
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
            ship: "BTL-B Y-wing"
            skill: 4
            points: 3
            loadout: 9
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Turret"
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
            ship: "BTL-B Y-wing"
            skill: 5
            points: 4
            loadout: 18
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
            loadout: 99
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
            loadout: 99
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
            loadout: 99
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
            loadout: 99
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
            loadout: 99
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
            loadout: 99
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
            loadout: 99
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
            loadout: 99
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
            loadout: 99
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
            loadout: 99
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
            loadout: 9
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
            loadout: 14
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
            points: 3
            loadout: 8
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Crew"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Colossus Station Mechanic"
            id: 380
            faction: "Resistance"
            ship: "Fireball"
            skill: 2
            points: 3
            loadout: 5
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
            ship: "TIE/ba Interceptor"
            points: 5
            loadout: 14
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
            ship: "TIE/ba Interceptor"
            points: 5
            loadout: 12
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
            ship: "TIE/ba Interceptor"
            points: 4
            loadout: 7
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
            ship: "TIE/ba Interceptor"
            points: 4
            loadout: 3
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Captain Phasma"
            id: 385
            faction: "First Order"
            unique: true
            skill: 4
            ship: "TIE/sf Fighter"
            points: 4
            loadout: 6
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
            ship: "TIE/vn Silencer"
            points: 5
            loadout: 11
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
            ship: "RZ-2 A-wing"
            points: 5
            loadout: 10
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
            ship: "RZ-2 A-wing"
            points: 4
            loadout: 10
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
            loadout: 23
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
            ship: "UT-60D U-wing"
            points: 5
            loadout: 10
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
            ship: "A/SF-01 B-wing"
            points: 4
            loadout: 11
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
            ship: "VCX-100 Light Freighter"
            points: 7
            loadout: 16
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
            ship: "Modified YT-1300 Light Freighter"
            keyword: ["Light Side"]
            points: 7
            loadout: 24
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
            ship: "TIE Advanced v1"
            points: 4
            loadout: 7
            force: 2
            slots: [
                "Force"
                "Talent"
                "Sensor"
                "Missile"
            ]
        }
        {
            name: '"Vagabond"'
            id: 395
            faction: "Galactic Empire"
            unique: true
            skill: 2
            ship: "TIE/sk Striker"
            points: 4
            loadout: 12
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
            points: 7
            loadout: 22
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
            ship: "TIE/sf Fighter"
            points: 4
            loadout: 7
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
            ship: "Z-95-AF4 Headhunter"
            points: 2
            loadout: 3
            keyword: ["Bounty Hunter"]
            chassis: "Pursuit Craft"
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
            points: 3
            loadout: 9
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
            loadout: 11
            keyword: ["Bounty Hunter"]
            slots: [
                "Cannon"
                "Cannon"
                "Torpedo"
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
            loadout: 10
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
            points: 4
            loadout: 13
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
            loadout: 15
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
            points: 4
            loadout: 15
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
            points: 4
            loadout: 8
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
            points: 4
            loadout: 9
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
            points: 4
            loadout: 12
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
            points: 3
            loadout: 8
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
            points: 3
            loadout: 7
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
            name: "Onderon Oppressor"
            id: 411
            faction: "Separatist Alliance"
            skill: 3
            max_per_squad: 2
            ship: "HMP Droid Gunship"
            points: 4
            loadout: 15
            keyword: ["Droid"]
            slots: [
                "Missile"
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
            loadout: 7
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
            points: 6
            loadout: 20
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
            loadout: 18
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
            points: 6
            loadout: 25
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
            loadout: 8
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
            loadout: 7
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
            points: 5
            loadout: 14
            slots: [
                "Sensor"
                "Cannon"
                "Cannon"
                "Gunner"
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
            points: 4
            loadout: 10
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Gunner"
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
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 3
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
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
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 4
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
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
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 3
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Modification"
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
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 6
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Colicoid Interceptor"
            id: 424
            faction: "Separatist Alliance"
            skill: 1
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 4
            slots: [
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Separatist Interceptor"
            id: 425
            faction: "Separatist Alliance"
            skill: 3
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 3
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
            ship: "Firespray-class Patrol Craft"
            points: 7
            loadout: 10
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
            ship: "Firespray-class Patrol Craft"
            points: 7
            loadout: 16
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
            ship: "Firespray-class Patrol Craft"
            points: 8
            loadout: 22
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
            ship: "Firespray-class Patrol Craft"
            points: 8
            loadout: 22
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
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 4
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
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 3
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
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 8
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
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 8
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
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 11
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: '"Odd Ball" (V-wing)'
            canonical_name: '"Oddball"'.canonicalize()
            xws: "oddball-nimbusclassvwing"
            id: 435
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 9
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
            loadout: 4
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
            points: 4
            loadout: 12
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
            points: 4
            loadout: 10
            force: 2
            keyword: ["Jedi", "Light Side"]
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
            name: "Aayla Secura"
            id: 439
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Eta-2 Actis"
            points: 5
            loadout: 15
            force: 2
            keyword: ["Jedi", "Light Side"]
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
            loadout: 15
            keyword: ["Jedi", "Light Side"]
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
            name: "Anakin Skywalker (Eta-2)"
            canonical_name: 'Anakin Skywalker'.canonicalize()
            xws: "anakinskywalker-eta2actis"
            id: 441
            faction: "Galactic Republic"
            skill: 6
            unique: true
            force: 3
            ship: "Eta-2 Actis"
            points: 5
            loadout: 15
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
            ship: "T-70 X-wing"
            skill: 6
            points: 6
            loadout: 19
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
            ship: "T-70 X-wing"
            skill: 4
            points: 5
            loadout: 13
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
            ship: "RZ-2 A-wing"
            points: 3
            loadout: 4
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
            ship: "RZ-2 A-wing"
            points: 4
            loadout: 10
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
            ship: "RZ-2 A-wing"
            points: 3
            loadout: 4
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
            ship: "RZ-2 A-wing"
            points: 4
            loadout: 12
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
            ship: "T-70 X-wing"
            skill: 2
            points: 4
            loadout: 9
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
            ship: "T-70 X-wing"
            skill: 4
            points: 4
            loadout: 7
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
            ship: "A/SF-01 B-wing"
            skill: 6
            points: 5
            loadout: 14
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
            ship: "RZ-1 A-wing"
            keyword: ["Spectre"]
            skill: 6
            points: 4
            loadout: 5
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
            ship: "RZ-1 A-wing"
            skill: 4
            points: 3
            loadout: 5
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
            ship: "RZ-1 A-wing"
            skill: 3
            points: 3
            loadout: 7
            slots: [
                "Talent"
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
            ship: "TIE/d Defender"
            skill: 5
            charge: 1
            recurring: -1
            points: 7
            loadout: 13
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
            ship: "TIE/in Interceptor"
            skill: 6
            points: 5
            loadout: 14
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
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            loadout: 7
            slots: [
                "Talent"
                "Talent"
                "Missile"
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
            ship: "HWK-290 Light Freighter"
            skill: 3
            force: 1
            points: 4
            loadout: 6
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
            ship: "BTL-A4 Y-wing"
            skill: 5
            points: 3
            loadout: 8
            slots: [
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
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 3
            loadout: 10
            slots: [
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
            ship: "BTL-A4 Y-wing"
            skill: 3
            points: 4
            loadout: 10
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
            ship: "RZ-1 A-wing"
            skill: 3
            points: 3
            loadout: 6
            slots: [
                "Talent"
                "Missile"
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
            ship: "RZ-1 A-wing"
            skill: 4
            points: 4
            loadout: 7
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
            ship: "RZ-1 A-wing"
            keyword: ["Light Side"]
            skill: 5
            force: 3
            points: 5
            loadout: 12
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
            ship: "A/SF-01 B-wing"
            skill: 3
            points: 4
            loadout: 10
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
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            loadout: 8
            slots: [
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Nash Windrider"
            id: 466
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 2
            charge: 1
            recurring: 1
            points: 4
            loadout: 6
            slots: [
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Lieutenant Lorrir"
            id: 467
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 3
            points: 3
            loadout: 6
            slots: [
                "Talent"
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
            ship: "TIE/in Interceptor"
            skill: 5
            charge: 1
            recurring: -1
            points: 4
            loadout: 7
            slots: [
                "Talent"
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
            ship: "TIE/d Defender"
            keyword: ["Dark Side", "Sith"]
            skill: 6
            force: 3
            points: 9
            loadout: 10
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
            ship: "TIE/d Defender"
            skill: 3
            points: 7
            loadout: 15
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
            ship: "BTL-A4 Y-wing"
            skill: 2
            points: 4
            loadout: 5
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
            ship: "BTL-A4 Y-wing"
            skill: 3
            points: 4
            loadout: 6
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
            ship: "HWK-290 Light Freighter"
            skill: 3
            charge: 2
            recurring: 1
            points: 4
            loadout: 8
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
            ship: "HWK-290 Light Freighter"
            skill: 5
            charge: 2
            recurring: 1
            points: 4
            loadout: 10
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
            ship: "BTA-NR2 Y-wing"
            skill: 5
            points: 4
            loadout: 11
            charge: 1
            recurring: 1
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
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
            ship: "BTA-NR2 Y-wing"
            skill: 4
            points: 4
            loadout: 12
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Turret"
                "Astromech"
                "Device"
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
            ship: "BTA-NR2 Y-wing"
            skill: 4
            points: 4
            loadout: 12
            slots: [
                "Tech"
                "Turret"
                "Missile"
                "Astromech"
                "Device"
                "Device"
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
            ship: "BTA-NR2 Y-wing"
            skill: 3
            points: 3
            loadout: 9
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
            name: "Lega Fossang"
            id: 481
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 3
            points: 3
            loadout: 7
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
            ship: "BTA-NR2 Y-wing"
            skill: 2
            points: 4
            loadout: 13
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Corus Kapellim"
            id: 483
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 1
            points: 3
            loadout: 8
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
            ship: "BTA-NR2 Y-wing"
            skill: 2
            points: 4
            loadout: 10
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
            name: "New Republic Patrol"
            id: 485
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 3
            points: 4
            loadout: 7
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Kijimi Spice Runner"
            id: 486
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 2
            points: 4
            loadout: 4
            slots: [
                "Tech"
                "Turret"
                "Astromech"
                "Device"
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
            ship: "TIE/wi Whisper Modified Interceptor"
            keyword: ["Dark Side", "Light Side"]
            skill: 5
            force: 3
            points: 5
            loadout: 14
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
            ship: "TIE/wi Whisper Modified Interceptor"
            skill: 5
            points: 5
            loadout: 15
            slots: [
                "Talent"
                "Talent"
                "Cannon"
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
            ship: "TIE/wi Whisper Modified Interceptor"
            skill: 4
            points: 4
            loadout: 10
            slots: [
                "Talent"
                "Missile"
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
            ship: "TIE/wi Whisper Modified Interceptor"
            skill: 3
            points: 4
            loadout: 12
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
            ship: "TIE/wi Whisper Modified Interceptor"
            skill: 4
            points: 4
            loadout: 10
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
            ship: "TIE/wi Whisper Modified Interceptor"
            skill: 2
            points: 4
            loadout: 3
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
            ship: "TIE/se Bomber"
            skill: 5
            points: 5
            loadout: 18
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
            ship: "TIE/se Bomber"
            skill: 4
            points: 3
            loadout: 7
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
            ship: "TIE/se Bomber"
            skill: 3
            points: 3
            loadout: 8
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
            ship: "TIE/se Bomber"
            skill: 2
            points: 4
            loadout: 15
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
            ship: "TIE/se Bomber"
            skill: 3
            points: 4
            loadout: 7
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
            ship: "TIE/se Bomber"
            skill: 2
            points: 4
            loadout: 8
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
            points: 4
            loadout: 9
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Modification"
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
            points: 4
            loadout: 9
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
            xws: "fennrau-rebel-fang"
            unique: true
            ship: "Fang Fighter"
            skill: 6
            points: 5
            loadout: 10
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
            skill: 3
            points: 4
            loadout: 12
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
            ship: "TIE/ln Fighter"
            skill: 4
            charge: 2
            recurring: 1
            points: 4
            loadout: 8
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
            ship: "TIE/ln Fighter"
            skill: 4
            points: 3
            loadout: 5
            max_per_squad: 2
            slots: [
                "Talent"
                "Illicit"
            ]
        }
        {
            name: "Mandalorian Royal Guard"
            id: 505
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 4
            loadout: 7
            max_per_squad: 2
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
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
            points: 6
            loadout: 14
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
                "Illicit"
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
            loadout: 10
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Bo-Katan Kryze"
            id: 509
            faction: "Separatist Alliance"
            xws: "bokatankryze-separatistalliance"
            ship: "Gauntlet Fighter"
            skill: 4
            points: 6
            loadout: 12
            charge: 1
            recurring: 1
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Configuration"
            ]
        }
        {
            name: "Bo-Katan Kryze (Republic)"
            canonical_name: 'Bo-Katan Kryze'.canonicalize()
            xws: "bokatankryze"
            id: 510
            faction: "Galactic Republic"
            ship: "Gauntlet Fighter"
            skill: 4
            points: 6
            loadout: 12
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Torpedo"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Configuration"
                "Title"
            ]
        }
        {
            name: "Nite Owl Liberator"
            id: 511
            faction: "Galactic Republic"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 7
            loadout: 16
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
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
            loadout: 15
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
            loadout: 10
            keyword: ["Mandalorian"]
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
            loadout: 14
            unique: true
            keyword: ["Mandalorian"]
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
            skill: 3
            points: 6
            loadout: 14
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
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
            loadout: 10
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Illicit"
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
            points: 7
            loadout: 18
            charge: 2
            recurring: 1
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Torpedo"
                "Device"
                "Illicit"
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
            loadout: 10
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: '"Chopper" (Gauntlet Fighter)'
            canonical_name: 'Chopper'.canonicalize()
            xws: "chopper-gauntletfighter"
            id: 519
            faction: "Rebel Alliance"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 6
            loadout: 10
            keyword: ["Droid","Spectre"]
            unique: true
            slots: [
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
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
            points: 6
            loadout: 12
            keyword: ["Light Side","Spectre"]
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
            loadout: 16
            unique: true
            keyword: ["Droid"]
            slots: [
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
            points: 6
            loadout: 10
            unique: true
            keyword: ["Bounty Hunter", "Mandalorian"]
            slots: [
                "Talent"
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
            loadout: 14
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
            loadout: 10
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
            xws: "plokoon-delta7baethersprite"
            id: 525
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 5
            force: 2
            points: 7
            loadout: 19
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Talent"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Saesee Tiin (Delta-7b)"
            canonical_name: 'Saesee Tiin'.canonicalize()
            xws: "saeseetiin-delta7baethersprite"
            id: 526
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 2
            points: 6
            loadout: 9
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
            xws: "macewindu-delta7baethersprite"
            id: 527
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 3
            points: 5
            loadout: 7
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
            xws: "anakinskywalker-delta7baethersprite"
            id: 528
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 6
            force: 3
            points: 7
            loadout: 15
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Luminara Unduli (Delta-7b)"
            canonical_name: 'Luminara Unduli'.canonicalize()
            xws: "luminaraunduli-delta7baethersprite"
            id: 529
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 2
            points: 6
            loadout: 7
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
            xws: "barrissoffee-delta7baethersprite"
            id: 530
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 1
            points: 5
            loadout: 10
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Ahsoka Tano (Delta-7b)"
            canonical_name: 'Ahsoka Tano'.canonicalize()
            xws: "ahsokatano-delta7baethersprite"
            id: 531
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 3
            force: 2
            points: 6
            loadout: 10
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
            xws: "jediknight-delta7baethersprite"
            id: 532
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 3
            force: 1
            points: 6
            loadout: 8
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
            xws: "obiwankenobi-delta7baethersprite"
            id: 533
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 5
            force: 3
            points: 7
            loadout: 15
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Cad Bane"
            id: 534
            unique: true
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 4
            charge: 2
            recurring: 1
            points: 4
            loadout: 13
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Viktor Hel (Rogue)"
            canonical_name: 'Viktor Hel'.canonicalize()
            xws: "viktorhel-rogueclassstarfighter"
            id: 535
            unique: true
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 4
            loadout: 11
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Missile"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Nom Lumb (Rogue)"
            canonical_name: 'Nom Lumb'.canonicalize()
            xws: "nomlumb-rogueclassstarfighter"
            id: 536
            unique: true
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 1
            points: 4
            loadout: 11
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Missile"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Outer Rim Hunter"
            id: 537
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 3
            points: 4
            loadout: 5
            slots: [
                "Cannon"
                "Cannon"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Cad Bane (Separatist)"
            canonical_name: 'Cad Bane'.canonicalize()
            xws: "cadbane-separatistalliance"
            id: 538
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 4
            charge: 1
            recurring: 1
            points: 4
            loadout: 13
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "IG-101"
            id: 539
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 4
            loadout: 11
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "IG-102"
            id: 540
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 4
            loadout: 11
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "IG-111"
            id: 541
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 1
            points: 4
            loadout: 12
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "MagnaGuard Protector"
            id: 542
            max_per_squad: 2
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 4
            loadout: 10
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Cannon"
                "Missile"
                "Modification"
            ]
            applies_condition: 'Guarded'.canonicalize()
        }
        {
            name: "MagnaGuard Executioner"
            id: 543
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 3
            points: 4
            loadout: 6
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Cannon"
                "Modification"
            ]
        }
        {
            name: '"Knack"'
            id: 544
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 5
            points: 3
            loadout: 7
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }
        {
            name: '"Slider"'
            id: 545
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 4
            charge: 2
            recurring: 1
            points: 2
            loadout: 3
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "VersatileShip"
            ]
        }
        {
            name: '"Hawk" (Z-95)'
            canonical_name: '"Hawk"'.canonicalize()
            xws: "hawk-clonez95headhunter"
            id: 546
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 4
            points: 3
            loadout: 8
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "VersatileShip"
            ]
        }
        {
            name: '"Warthog" (Z-95)'
            canonical_name: '"Warthog"'.canonicalize()
            xws: "warthog-clonez95headhunter"
            id: 547
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 3
            points: 3
            loadout: 10
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }
        {
            name: '"Boost"'
            id: 548
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 3
            points: 2
            loadout: 3
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }
        {
            name: '"Drift"'
            id: 549
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 3
            points: 3
            loadout: 5
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }
        {
            name: '"Stub"'
            id: 550
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 3
            points: 3
            loadout: 8
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }
        {
            name: '"Killer"'
            id: 551
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 2
            points: 3
            loadout: 11
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Cannon"
                "Modification"
                "VersatileShip"
            ]
        }
        {
            name: "Reaper Squadron Scout"
            id: 552
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 3
            points: 3
            loadout: 2
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "VersatileShip"
            ]
        }
        {
            name: "7th Sky Corps Pilot"
            id: 553
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 2
            points: 3
            loadout: 3
            keyword: ["Clone"]
            slots: [
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }
        {
            name: "Garven Dreis (BoY)"
            canonical_name: 'Garven Dreis'.canonicalize()
            xws: "garvendreis-battleofyavin"
            unique: true
            id: 554
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 4
            chassis: "Hope"
            upgrades: [
                "Adv. Proton Torpedoes"
                "R5-K6 (BoY)"
            ]
        }
        {
            name: "Luke Skywalker (BoY)"
            canonical_name: 'Luke Skywalker'.canonicalize()
            xws: "lukeskywalker-battleofyavin"
            unique: true
            id: 555
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 5
            force: 2
            chassis: "Hope"
            upgrades: [
                "Instinctive Aim"
                "Attack Speed (BoY)"
                "Proton Torpedoes"
                "R2-D2 (BoY)"
            ]
        }
        {
            name: "Jek Porkins (BoY)"
            canonical_name: 'Jek Porkins'.canonicalize()
            xws: "jekporkins-battleofyavin"
            unique: true
            id: 556
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 4
            chassis: "Hope"
            upgrades: [
                "Adv. Proton Torpedoes"
                "R5-D8 (BoY)"
                "Unstable Sublight Engines (BoY)"
            ]
        }
        {
            name: "Biggs Darklighter (BoY)"
            canonical_name: 'Biggs Darklighter'.canonicalize()
            xws: "biggsdarklighter-battleofyavin"
            unique: true
            id: 557
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 3
            points: 5
            chassis: "Hope"
            upgrades: [
                "Attack Speed (BoY)"
                "Selfless (BoY)"
                "Proton Torpedoes"
                "R2-F2 (BoY)"
            ]
        }
        {
            name: "Wedge Antilles (BoY)"
            canonical_name: 'Wedge Antilles'.canonicalize()
            xws: "wedgeantilles-battleofyavin"
            unique: true
            id: 558
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 5
            chassis: "Hope"
            upgrades: [
                "Attack Speed (BoY)"
                "Marksmanship"
                "Proton Torpedoes"
                "R2-A3 (BoY)"
            ]
        }
        {
            name: "Han Solo (BoY)"
            canonical_name: 'Han Solo'.canonicalize()
            xws: "hansolo-battleofyavin"
            unique: true
            id: 559
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            skill: 6
            points: 7
            charge: 4
            chassis: "Solo"
            upgrades: [
                "Chewbacca (BoY)"
                "Rigged Cargo Chute"
                "Millennium Falcon"
                "L3-37's Programming (BoY)"
            ]
        }
        {
            name: '"Dutch" Vander (BoY)'
            canonical_name: '"Dutch" Vander'.canonicalize()
            xws: "dutchvander-battleofyavin"
            unique: true
            id: 560
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 4
            chassis: "Hope"
            upgrades: [
                "Ion Cannon Turret"
                "Adv. Proton Torpedoes"
                "Targeting Astromech (BoY)"
            ]
        }
        {
            name: "Dex Tiree (BoY)"
            canonical_name: 'Dex Tiree'.canonicalize()
            xws: "dextiree-battleofyavin"
            unique: true
            id: 561
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 2
            points: 4
            chassis: "Hope"
            upgrades: [
                "Dorsal Turret"
                "Adv. Proton Torpedoes"
                "R4 Astromech"
            ]
        }
        {
            name: '"Pops" Krail (BoY)'
            canonical_name: '"Pops" Krail'.canonicalize()
            xws: "popskrail-battleofyavin"
            unique: true
            id: 562
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 4
            chassis: "Hope"
            upgrades: [
                "Ion Cannon Turret"
                "Adv. Proton Torpedoes"
                "R4 Astromech"
            ]
        }
        {
            name: "Hol Okand (BoY)"
            canonical_name: 'Hol Okand'.canonicalize()
            xws: "holokand-battleofyavin"
            unique: true
            id: 563
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 3
            chassis: "Hope"
            upgrades: [
                "Dorsal Turret"
                "Adv. Proton Torpedoes"
                "Precise Astromech (BoY)"
            ]
        }
        {
            name: "Darth Vader (BoY)"
            canonical_name: 'Darth Vader'.canonicalize()
            xws: "darthvader-battleofyavin"
            unique: true
            id: 564
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 6
            points: 6
            force: 3
            keyword: ["Dark Side", "Sith"]
            ship_override:
                shields: 3
            upgrades: [
                "Marksmanship"
                "Hate"
                "Afterburners"
            ]
        }
        {
            name: '"Backstabber" (BoY)'
            canonical_name: '"Backstabber"'.canonicalize()
            xws: "backstabber-battleofyavin"
            unique: true
            id: 565
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 5
            points: 4
            ship_override:
                hull: 4
            upgrades: [
                "Crack Shot"
                "Disciplined"
                "Afterburners"
            ]
        }
        {
            name: '"Mauler" Mithel (BoY)'
            canonical_name: '"Mauler" Mithel'.canonicalize()
            xws: "maulermithel-battleofyavin"
            unique: true
            id: 566
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 5
            points: 3
            ship_override:
                hull: 4
            upgrades: [
                "Predator"
                "Afterburners"
            ]
        }
        {
            name: '"Dark Curse" (BoY)'
            xws: "darkcurse-battleofyavin"
            unique: true
            id: 567
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 6
            points: 4
            ship_override:
                hull: 4
            upgrades: [
                "Ruthless"
                "Precision Ion Engines"
            ]
        }
        {
            name: '"Wampa" (BoY)'
            canonical_name: '"Wampa"'.canonicalize()
            xws: "wampa-battleofyavin"
            unique: true
            id: 568
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 1
            charge: 1
            recurring: 1
            points: 3
            ship_override:
                hull: 4
                actions: [
                    "Focus"
                    "Lock"
                    "Evade"
                    "Barrel Roll"
                ]
            upgrades: [
                "Elusive"
                "Vengeful (BoY)"
            ]
        }
        {
            name: "Iden Versio (BoY)"
            canonical_name: 'Iden Versio'.canonicalize()
            xws: "idenversio-battleofyavin"
            unique: true
            id: 569
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 5
            charge: 2
            recurring: 1
            chassis: "Sensitive Controls"
            ship_override:
                shields: 1
            upgrades: [
                "Predator"
                "Fanatic (BoY)"
            ]
        }
        {
            name: "Sigma 4 (BoY)"
            canonical_name: 'Sigma 4'.canonicalize()
            xws: "sigma4-battleofyavin"
            unique: true
            id: 570
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            charge: 2
            chassis: "Sensitive Controls"
            ship_override:
                hull: 4
            upgrades: [
                "Disciplined"
                "Primed Thrusters"
            ]
        }
        {
            name: "Sigma 5 (BoY)"
            canonical_name: 'Sigma 5'.canonicalize()
            xws: "sigma5-battleofyavin"
            unique: true
            id: 571
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            charge: 2
            chassis: "Sensitive Controls"
            ship_override:
                hull: 4
            upgrades: [
                "Sensor Jammer (BoY)"
                "Elusive"
            ]
        }
        {
            name: "Sigma 6 (BoY)"
            canonical_name: 'Sigma 6'.canonicalize()
            xws: "sigma6-battleofyavin"
            unique: true
            id: 572
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            charge: 2
            chassis: "Sensitive Controls"
            ship_override:
                hull: 4
            upgrades: [
                "Daredevil"
                "Afterburners"
            ]
        }
        {
            name: "Sigma 7 (BoY)"
            canonical_name: 'Sigma 7'.canonicalize()
            xws: "sigma7-battleofyavin"
            unique: true
            id: 573
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            charge: 2
            chassis: "Sensitive Controls"
            ship_override:
                hull: 4
                actions: [
                    "Focus"
                    "Evade"
                    "Barrel Roll"
                    "Boost"
                    "Lock"
                ]
            upgrades: [
                "Marksmanship"
                "Fire-Control System"
            ]
        }
        {
            name: "Anakin Skywalker (SoC)"
            canonical_name: 'Anakin Skywalker'.canonicalize()
            xws: "anakinskywalker-siegeofcoruscant"
            unique: true
            id: 574
            faction: "Galactic Republic"
            ship: "Eta-2 Actis"
            skill: 6
            points: 4
            force: 3
            chassis: "Intuitive Controls"
            keyword: ["Jedi","Light Side","Dark Side"]
            upgrades: [
                "Malice"
                "Ancillary Ion Weapons (SoC)"
                "R2-D2 (Republic)"
            ]
        }
        {
            name: "Obi-Wan Kenobi (SoC)"
            canonical_name: 'Obi-Wan Kenobi'.canonicalize()
            xws: "obiwankenobi-siegeofcoruscant"
            unique: true
            id: 575
            faction: "Galactic Republic"
            ship: "Eta-2 Actis"
            skill: 5
            points: 4
            force: 3
            chassis: "Intuitive Controls"
            keyword: ["Jedi","Light Side"]
            upgrades: [
                "Patience"
                "Ancillary Ion Weapons (SoC)"
                "R4-P17 (SoC)"
            ]
        }
        {
            name: "Shaak Ti (SoC)"
            canonical_name: 'Shaak Ti'.canonicalize()
            xws: "shaakti-siegeofcoruscant"
            unique: true
            id: 576
            faction: "Galactic Republic"
            ship: "Eta-2 Actis"
            skill: 4
            points: 4
            force: 2
            chassis: "Intuitive Controls"
            keyword: ["Jedi","Light Side"]
            upgrades: [
                "Marksmanship"
                "Brilliant Evasion"
                "Ancillary Ion Weapons (SoC)"
                "R4-P Astromech"
            ]
        }
        {
            name: '"Odd Ball" (SoC)'
            canonical_name: 'Odd Ball'.canonicalize()
            xws: "oddball-siegeofcoruscant"
            unique: true
            id: 577
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 5
            points: 4
            chassis: "Born for This"
            ship_override:
                shields: 4
            upgrades: [
                "Selfless"
                "Veteran Tail Gunner"
                "R4-P Astromech"
            ]
        }
        {
            name: '"Wolffe" (SoC)'
            canonical_name: 'Wolffe'.canonicalize()
            xws: "wolffe-siegeofcoruscant"
            unique: true
            id: 578
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 4
            charge: 1
            points: 4
            chassis: "Born for This"
            upgrades: [
                "Wolfpack (SoC)"
                "Veteran Tail Gunner"
                "Q7 Astromech"
            ]
        }
        {
            name: '"Jag" (SoC)'
            canonical_name: 'Jag'.canonicalize()
            xws: "jag-siegeofcoruscant"
            unique: true
            id: 579
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 3
            points: 4
            chassis: "Born for This"
            upgrades: [
                "Veteran Tail Gunner"
                "R4-P Astromech"
                "Synchronized Console"
            ]
        }
        {
            name: '"Contrail" (SoC)'
            canonical_name: 'Contrail'.canonicalize()
            xws: "contrail-siegeofcoruscant"
            unique: true
            id: 580
            faction: "Galactic Republic"
            ship: "Nimbus-class V-wing"
            skill: 5
            points: 4
            chassis: "Born for This"
            upgrades: [
                "Ion Limiter Override"
                "Precise Astromech (BoY)"
                "Ion Bombs"
                'Alpha-3B "Besh"'
            ]
        }
        {
            name: '"Klick" (SoC)'
            canonical_name: 'Klick'.canonicalize()
            xws: "klick-siegeofcoruscant"
            unique: true
            id: 581
            faction: "Galactic Republic"
            ship: "Nimbus-class V-wing"
            skill: 4
            points: 4
            charge: 1
            recurring: 1
            chassis: "Born for This"
            ship_override:
                shields: 3
            upgrades: [
                "R3 Astromech"
                "Precision Ion Engines"
                'Alpha-3E "Esk"'
            ]
        }
        {
            name: '"Kickback" (SoC)'
            canonical_name: 'Kickback'.canonicalize()
            xws: "kickback-siegeofcoruscant"
            unique: true
            id: 582
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 5
            points: 3
            chassis: "Born for This"
            ship_override:
                hull: 6
            upgrades: [
                "Diamond-Boron Missiles"
                "Munitions Failsafe"
            ]
        }
        {
            name: '"Axe" (SoC)'
            canonical_name: 'Axe'.canonicalize()
            xws: "axe-siegeofcoruscant"
            unique: true
            id: 583
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 3
            points: 3
            chassis: "Born for This"
            ship_override:
                hull: 6
            upgrades: [
                "Deadeye Shot"
                "Barrage Rockets"
            ]
        }
        {
            name: "Count Dooku (SoC)"
            canonical_name: 'Count Dooku'.canonicalize()
            xws: "countdooku-siegeofcoruscant"
            unique: true
            id: 584
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 5
            points: 6
            force: 3
            keyword: ["Dark Side"]
            upgrades: [
                "Malice"
                "Roiling Anger (SoC)"
                "Scimitar"
            ]
        }
        {
            name: "DBS-32C (SoC)"
            canonical_name: 'DBS-32C'.canonicalize()
            xws: "dbs32c-siegeofcoruscant"
            unique: true
            id: 585
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 3
            points: 3
            charge: 2
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Barrel Roll"
                    "R-> Lock"
                    "R-Jam"
                ]
            upgrades: [
                "Plasma Torpedoes"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "DBS-404 (SoC)"
            canonical_name: 'DBS-404'.canonicalize()
            xws: "dbs404-siegeofcoruscant"
            unique: true
            id: 586
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 4
            points: 3
            upgrades: [
                "Adv. Proton Torpedoes"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "Baktoid Prototype (SoC)"
            canonical_name: 'Baktoid Prototype'.canonicalize()
            xws: "baktoidprototype-siegeofcoruscant"
            id: 587
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 1
            max_per_squad: 2
            points: 3
            upgrades: [
                "Homing Missiles"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "DIS-347 (SoC)"
            canonical_name: 'DIS-347'.canonicalize()
            xws: "dis347-siegeofcoruscant"
            unique: true
            id: 588
            faction: "Separatist Alliance"
            ship: "Droid Tri-fighter"
            skill: 3
            points: 3
            upgrades: [
                "Marksmanship"
                "Afterburners"
                "Contingency Protocol (SoC)"
            ]
        }
        {
            name: "DIS-T81 (SoC)"
            canonical_name: 'DIS-T81'.canonicalize()
            xws: "dist81-siegeofcoruscant"
            unique: true
            id: 589
            faction: "Separatist Alliance"
            ship: "Droid Tri-fighter"
            skill: 4
            points: 4
            upgrades: [
                "Outmaneuver"
                "Afterburners"
                "Contingency Protocol (SoC)"
            ]
        }
        {
            name: "Phlac-Arphocc Prototype (SoC)"
            canonical_name: 'Phlac-Arphocc Prototype'.canonicalize()
            xws: "phlacarphoccprototype-siegeofcoruscant"
            id: 590
            faction: "Separatist Alliance"
            ship: "Droid Tri-fighter"
            skill: 5
            points: 4
            max_per_squad: 2
            upgrades: [
                "Afterburners"
                "Contingency Protocol (SoC)"
                "Evasion Sequence 7 (SoC)"
            ]
        }
        {
            name: "DFS-081 (SoC)"
            canonical_name: 'DFS-081'.canonicalize()
            xws: "dfs081-siegeofcoruscant"
            unique: true
            id: 591
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            charge: 2
            points: 2
            upgrades: [
                "Discord Missiles"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "DFS-311 (SoC)"
            canonical_name: 'DFS-311'.canonicalize()
            xws: "dfs311-siegeofcoruscant"
            unique: true
            id: 592
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 3
            upgrades: [
                "Discord Missiles"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "Haor Chall Prototype (SoC)"
            canonical_name: 'Haor Chall Prototype'.canonicalize()
            xws: "haorchallprototype-siegeofcoruscant"
            id: 593
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            max_per_squad: 2
            points: 2
            upgrades: [
                "Ion Missiles"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "Corran Horn (X-Wing)"
            id: 594
            unique: true
            xws: "corranhorn-t65xwing"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 4
            loadout: 9
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Configuration"
            ]
        }
        {
            name: "Wes Janson"
            id: 595
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            charge: 1
            recurring: 1
            points: 5
            loadout: 15
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Tycho Celchu"
            id: 596
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 5
            points: 4
            loadout: 14
            slots: [
                "Talent"
                "Talent"
                "Cannon"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Keo Venzee"
            id: 597
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 3
            points: 3
            loadout: 8
            force: 1
            forcerecurring: 0
            slots: [
                "Talent"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: '"Pops" Krail'
            id: 598
            unique: true
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 3
            points: 4
            loadout: 16
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Device"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Flight Leader Ubbel"
            id: 599
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/rb Heavy"
            skill: 5
            points: 5
            loadout: 12
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Gunner"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Juno Eclipse"
            id: 600
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 5
            points: 4
            loadout: 8
            slots: [
                "Talent"
                "Tech"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Second Sister"
            id: 601
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            force: 2
            points: 5
            loadout: 14
            keyword: ["Dark Side"]
            slots: [
                "Force"
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Magna Tolvan"
            id: 602
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 3
            loadout: 10
            slots: [
                "Talent"
                "Cannon"
                "Modification"
            ]
        }
        {
            name: "Yrica Quell"
            id: 603
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 3
            loadout: 9
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Poe Dameron (YT-1300)"
            canonical_name: 'Poe Dameron'.canonicalize()
            xws: "poedameron-scavengedyt1300"
            id: 604
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 6
            charge: 2
            recurring: 1
            points: 7
            loadout: 25
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Lando Calrissian (Resistance)"
            xws: "landocalrissian-scavengedyt1300"
            id: 605
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 5
            charge: 3
            recurring: 1
            points: 7
            loadout: 20
            slots: [
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
            name: "Venisa Doza"
            id: 606
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 4
            loadout: 7
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Missile"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Zay Versio"
            id: 607
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 3
            points: 4
            loadout: 7
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
            name: "Taka Jamoreesa"
            id: 608
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 2
            points: 4
            loadout: 15
            slots: [
                "Talent"
                "Tech"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Astromech"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Hondo Ohnaka"
            id: 609
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            skill: 1
            points: 7
            loadout: 18
            slots: [
                "Cannon"
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
            name: "Tor Phun"
            id: 610
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 3
            points: 4
            loadout: 7
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Durge"
            id: 611
            unique: true
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 5
            points: 4
            loadout: 10
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Talent"
                "Cannon"
                "Cannon"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Doctor Aphra"
            id: 612
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666 Light Freighter"
            skill: 3
            points: 6
            loadout: 22
            charge: 3
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Lapin"
            id: 613
            unique: true
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 3
            points: 3
            loadout: 7
            slots: [
                "Talent"
                "Cannon"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Volan Das"
            id: 614
            unique: true
            faction: "Separatist Alliance"
            ship: "Droid Tri-fighter"
            skill: 5
            points: 4
            loadout: 12
            chassis: "Modified for Organics"
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
            ]
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                    "R-> Evade"
                    "Boost"
                    "R-> Focus"
                ]
        }
        {
            name: "Aurra Sing"
            id: 615
            unique: true
            faction: "Separatist Alliance"
            ship: "Firespray-class Patrol Craft"
            skill: 4
            force: 1
            points: 7
            loadout: 10
            keyword: ["Dark Side","Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Durge (Separatist)"
            xws: "durge-separatistalliance"
            id: 616
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 5
            charge: 1
            points: 4
            loadout: 10
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "The Iron Assembler"
            id: 617
            unique: true
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            charge: 3
            points: 2
            loadout: 5
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Kelrodo-Ai Holdout"
            id: 618
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            max_per_squad: 3
            points: 2
            loadout: 7
            chassis: "Modified for Organics"
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Barrel Roll"
                    "R-> Focus"
                ]
        }
        {
            name: "Adi Gallia"
            id: 619
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 5
            points: 5
            loadout: 12
            force: 2
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Adi Gallia (Delta-7B)"
            canonical_name: 'Adi Gallia'.canonicalize()
            xws: "adigallia-delta7baethersprite"
            id: 620
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 5
            force: 2
            points: 7
            loadout: 18
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Talent"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: '"Sicko"'
            id: 621
            unique: true
            faction: "Galactic Republic"
            ship: "LAAT/i Gunship"
            skill: 2
            charge: 2
            recurring: 1
            points: 5
            loadout: 12
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
            applies_condition: 'Sickening Maneuver'.canonicalize()
        }
        {
            name: "Kit Fisto"
            id: 622
            unique: true
            faction: "Galactic Republic"
            ship: "Eta-2 Actis"
            skill: 4
            force: 2
            points: 4
            loadout: 11
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: '"Slammer"'
            id: 623
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 1
            charge: 2
            recurring: 1
            points: 3
            loadout: 7
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Gavyn Sykes"
            id: 624
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 3
            points: 4
            loadout: 16
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Lieutenant Galek"
            id: 625
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 5
            points: 3
            loadout: 7
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Cannon"
                "Modification"
            ]
        }
        {
            name: "Jul Jerjerrod"
            id: 626
            unique: true
            faction: "First Order"
            ship: "TIE/se Bomber"
            skill: 4
            charge: 3
            points: 4
            loadout: 13
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "DT-798"
            id: 627
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 4
            points: 3
            loadout: 6
            slots: [
                "Talent"
                "Tech"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Lin Gaava"
            id: 628
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 3
            points: 3
            loadout: 9
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Modification"
            ]
            applies_condition: '''Primed For Speed'''.canonicalize()
        }
        {
            name: "Agent Tierny"
            id: 629
            unique: true
            faction: "First Order"
            ship: "Xi-class Light Shuttle"
            skill: 3
            points: 5
            loadout: 15
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Crew"
                "Crew"
                "Modification"
                "Modification"
            ]
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "R-Coordinate"
                    "Jam"
                ]
            applies_condition: '''Broken Trust'''.canonicalize()
        }
        {
            name: "Darth Vader (SSP)"
            canonical_name: 'Darth Vader'.canonicalize()
            xws: "darthvader-SWZ105"
            unique: true
            id: 630
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 6
            points: 6
            force: 3
            keyword: ["Dark Side", "Sith"]
            ship_override:
                shields: 3
            upgrades: [
            ]
        }
        {
            name: "Maarek Stele (SSP)"
            canonical_name: 'Maarek Stele'.canonicalize()
            xws: "maarekstele-SWZ105"
            unique: true
            id: 631
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 5
            points: 6
            upgrades: [
                "Elusive"
                "Outmaneuver"
                "Afterburners"            ]
        }
        {
            name: "Captain Jonus (SSP)"
            canonical_name: 'Captain Jonus'.canonicalize()
            xws: "captainjonus-SWZ105"
            unique: true
            id: 632
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 4
            points: 4
            upgrades: [
            ]
        }
        {
            name: "Tomax Bren (SSP)"
            canonical_name: 'Tomax Bren'.canonicalize()
            xws: "tomaxbren-SWZ105"
            unique: true
            id: 633
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 5
            points: 5
            upgrades: [
            ]
        }
        {
            name: "Iden Versio (SSP)"
            canonical_name: 'Iden Versio'.canonicalize()
            xws: "idenversio-SWZ105"
            unique: true
            id: 634
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            points: 4
            upgrades: [
            ]
        }
        {
            name: '"Night Beast" (SSP)'
            canonical_name: '"Night Beast"'.canonicalize()
            xws: "nightbeast-SWZ105"
            unique: true
            id: 635
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 3
            upgrades: [
            ]
        }
        {
            name: "Valen Rudor (SSP)"
            canonical_name: 'Valen Rudor'.canonicalize()
            xws: "valenrudor-SWZ105"
            unique: true
            id: 636
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 3
            upgrades: [
            ]
        }
        {
            name: '"Dutch" Vander (SSP)'
            canonical_name: '"Dutch" Vander'.canonicalize()
            xws: "dutchvander-SWZ106"
            unique: true
            id: 637
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 4
            upgrades: [
                "Ion Cannon Turret"
                "Proton Bombs"
            ]
        }
        {
            name: "Horton Salm (SSP)"
            canonical_name: 'Horton Salm'.canonicalize()
            xws: "hortonsalm-SWZ106"
            unique: true
            id: 638
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 4
            upgrades: [
            ]
        }
        {
            name: "Arvel Crynyd (SSP)"
            canonical_name: 'Arvel Crynyd'.canonicalize()
            xws: "arvelcrynyd-SWZ106"
            unique: true
            id: 639
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 3
            points: 4
            upgrades: [
            ]
        }
        {
            name: "Jake Farrel (SSP)"
            canonical_name: 'Jake Farrel'.canonicalize()
            xws: "jakefarrel-SWZ106"
            unique: true
            id: 640
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 4
            points: 5
            upgrades: [
            ]
        }
        {
            name: "Jek Porkins (SSP)"
            canonical_name: 'Jek Porkins'.canonicalize()
            xws: "jekporkins-SWZ106"
            unique: true
            id: 641
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 5
            upgrades: [
            ]
        }
        {
            name: "Luke Skywalker (SSP)"
            canonical_name: 'Luke Skywalker'.canonicalize()
            xws: "lukeskywalker-SWZ106"
            unique: true
            id: 642
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            force: 2
            points: 6
            upgrades: [
            ]
        }
        {
            name: "Wedge Antilles (SSP)"
            canonical_name: 'Wedge Antilles'.canonicalize()
            xws: "wedgeantilles-SWZ106"
            unique: true
            id: 643
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 6
            points: 5
            upgrades: [
            ]
        }
    ]

    upgradesById: [
        {
            name: '"Chopper" (Astromech)'
            id: 0
            slot: "Astromech"
            canonical_name: '"Chopper"'.canonicalize()
            xws: "chopper"
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
            points: 5
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
            points: 1
            attack: 3
            range: """1-2"""
        }
        {
            name: "Tractor Beam"
            id: 13
            slot: "Cannon"
            points: 6
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
            points: 5
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
            points: 12
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
            points: 4
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
            points: 8
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
            points: 15
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
            points: 7
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
            points: 4
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
            points: 12
            unique: true
            keyword: ["Dark Side"]
            faction: ["Scum and Villainy", "Rebel Alliance"]
            force: 1
            restrictions: [
                ["FactionOrUnique", "Ezra Bridger", "Scum and Villainy"]
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
                ["FactionOrUnique", "Darth Vader", "Scum and Villainy"]
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
            points: 6
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
            points: 5
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
            points: 10
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
            points: 1
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
                ["FactionOrUnique", "Darth Vader", "Scum and Villainy"]
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
            points: 9
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
            points: 12
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
            points: 5
            restrictions: [
                ["AttackArc", "Rear Arc"]
            ]
        }
        {
            name: "Veteran Turret Gunner"
            id: 90
            slot: "Gunner"
            points: 3
            restrictions: [
                ["Action", "Rotate Arc"]
            ]
        }
        {
            name: "Cloaking Device"
            id: 91
            slot: "Illicit"
            points: 8
            unique: true
            charge: 2
            restrictions: [
                ["Base", "Small", "Medium"]
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
            points: 4
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
            points: 3
            charge: 1
            applies_condition: '''Loose Cargo'''.canonicalize()
            restrictions: [
                ["Base", "Medium", "Large"]
            ]
        }
        {
            name: "Barrage Rockets"
            id: 97
            slot: "Missile"
            points: 6
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
            points: 5
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
                ["Base", "Medium", "Large"]
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
            points: 8
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
                ["Base", "Medium", "Large"]
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
            points: 7
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
            points: 8
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
            points: 4
            charge: 1
        }
        {
            name: "Daredevil"
            id: 117
            slot: "Talent"
            points: 5
            restrictions: [
                ["Action", "W-Boost"]
                ["Base", "Small"]
            ]
        }
        {
            name: "Debris Gambit"
            id: 118
            slot: "Talent"
            points: 4
            restrictions: [
                ["Base", "Small", "Medium"]
            ]
            modifier_func: (stats) ->
                stats.actions.push 'R-Evade' if 'R-Evade' not in stats.actions
        }
        {
            name: "Elusive"
            id: 119
            slot: "Talent"
            points: 4
            charge: 1
            restrictions: [
                ["Base", "Small", "Medium"]
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
                ["Base", "Small", "Medium"]
            ]
        }
        {
            name: "Lone Wolf"
            id: 124
            slot: "Talent"
            points: 3
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
            points: 12
        }
        {
            name: "Predator"
            id: 127
            slot: "Talent"
            points: 3
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
            points: 2
            restrictions: [
                ["Action", "Reload"]
            ]
        }
        {
            name: "Selfless"
            id: 130
            slot: "Talent"
            points: 4
            faction: "Rebel Alliance"
        }
        {
            name: "Squad Leader"
            id: 131
            slot: "Talent"
            points: 6
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
            points: 9
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
            ship: "UT-60D U-wing"
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
            ship: "T-65 X-wing"
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
            name: "L3-37's Programming (BoY)"
            id: 145
            standard: true
            unique: true
            slot: "Configuration"
        }
        {
            name: "Andrasta"
            id: 146
            slot: "Title"
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
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
            ship: "VCX-100 Light Freighter"
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
            ship: "YV-666 Light Freighter"
        }
        {
            name: "IG-2000"
            id: 151
            slot: "Title"
            points: 0
            faction: "Scum and Villainy"
            ship: "Aggressor Assault Fighter"
        }
        {
            name: "Lando's Millennium Falcon"
            id: 152
            slot: "Title"
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
        }
        {
            name: "Marauder"
            id: 153
            slot: "Title"
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
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
            ship: "Modified YT-1300 Light Freighter"
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
            ship: "HWK-290 Light Freighter"
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
            ship: "YT-2400 Light Freighter"
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
            ship: "Firespray-class Patrol Craft"
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
            ship: "Lambda-class T-4a Shuttle"
        }
        {
            name: "Virago"
            id: 163
            slot: "Title"
            points: 0
            unique: true
            charge: 2
            ship: "StarViper-class Attack Platform"
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
            points: 6
            modifier_func: (stats) ->
                stats.hull += 1
        }
        {
            name: "Shield Upgrade"
            id: 165
            slot: "Modification"
            points: 8
            modifier_func: (stats) ->
                stats.shields += 1
        }
        {
            name: "Stealth Device"
            id: 166
            slot: "Modification"
            points: 8
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
            ship: "T-70 X-wing"
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
            ship: "T-70 X-wing"
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
            points: 2
            faction: "First Order"
        }
        {
            name: "Special Forces Gunner"
            id: 182
            slot: "Gunner"
            points: 0
            faction: "First Order"
            ship: "TIE/sf Fighter"
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
            points: 10
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
            points: 10
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
            points: 5
            charge: 2
            unique: true
            faction: "Resistance"
        }
        {
            name: "BB Astromech"
            id: 196
            slot: "Astromech"
            points: 4
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
            points: 5
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
            points: 2
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
            points: 3
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
            points: 4
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
            points: 12
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
            points: 6
        }
        {
            name: "K2-B4"
            id: 220
            unique: true
            solitary: true
            slot: "Tactical Relay"
            faction: "Separatist Alliance"
            points: 4
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
            points: 8
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
            points: 3
        }
        {
            name: "Discord Missiles"
            id: 224
            slot: "Missile"
            faction: "Separatist Alliance"
            charge: 1
            max_per_squad: 3
            points: 2
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
            points: 2
        }
        {
            name: "Seventh Fleet Gunner"
            id: 227
            charge: 1
            slot: "Gunner"
            faction: "Galactic Republic"
            points: 13
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
            points: 7
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
            points: 5
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
            ship: "Hyena-class Droid Bomber"
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
            points: 6
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
            points: 14
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
                ["Base", "Small", "Medium"]
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
            points: 1
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
            points: 6
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
            ship: ["TIE Advanced x1","TIE Advanced v1"]
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
            ship: ["TIE/sf Fighter","TIE/vn Silencer"]
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
            name: "Selfless (BoY)"
            canonical_name: 'Selfless'.canonicalize()
            unique: true
            id: 284
            slot: "Talent"
            standard: true
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
            points: 4
            restrictions: [
                ["Action", "Slam"]
            ]
        }
        {
            name: "Mag-Pulse Warheads"
            id: 311
            slot: "Missile"
            points: 4
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
            ship: "A/SF-01 B-wing"
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
            points: 7
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
            points: 6
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
            points: 12
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
                ["Base", "Small", "Medium"]
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
            points: 8
        }
        {
            name: "Boba Fett (Separatist)"
            canonical_name: 'Boba Fett'.canonicalize()
            xws: 'bobafett-gunner'
            id: 334
            slot: "Gunner"
            unique: true
            points: 2
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
            ship: "Nimbus-class V-wing"
            points: 1
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
            points: 8
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
                ["Base", "Small", "Medium"]
            ]
        }
        {
            name: "Starbird Slash"
            id: 344
            slot: "Talent"
            points: 1
            restrictions: [
                ["Keyword", "A-wing"]
            ]
        }
        {
            name: "Overdrive Thruster"
            id: 345
            ship: "T-70 X-wing"
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
            points: 2
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
                ["Base", "Medium", "Large"]
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
            points: 3
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Synced Laser Cannons"
            id: 354
            slot: "Cannon"
            points: 6
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
            points: 0
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
                ["Keyword", "X-wing"]
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
                ["Keyword", "X-wing"]
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
            ship: "Nimbus-class V-wing"
            points: 0
            charge: 2
            recurring: 1
        }
        {
            name: "R7-A7"
            id: 364
            points: 5
            unique: true
            charge: 3
            slot: "Astromech"
            faction: "Galactic Republic"
        }
        {
            name: "Q7 Astromech"
            id: 365
            points: 1
            slot: "Astromech"
            faction: "Galactic Republic"
        }
        {
            name: "Intercept Booster"
            id: 366
            points: 0
            slot: "Configuration"
            ship: "Droid Tri-fighter"
            faction: "Separatist Alliance"
            charge: 3
            recurring: -1
            modifier_func: (stats) ->
                stats.actions.push 'Slam'
                stats.actions.push 'R-> Lock'
        }
        {
            name: "Independent Calculations"
            id: 367
            points: 2
            standardized: true
            slot: "Modification"
            chassis: "Independent Calculations"
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
            points: 5
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
            ship: "Firespray-class Patrol Craft"
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
            chassis: "Vectored Cannons"
            restrictions: [
                ["Keyword", "Vectored Thrusters"]
            ]
            modifier_func: (stats) ->
                stats.attackt = stats.attack
                stats.attack = 0 
        }
        {
            name: "B6 Blade Wing Prototype"
            id: 372
            points: 0
            unique: true
            slot: "Title"
            ship: "A/SF-01 B-wing"
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
            ship: "TIE/d Defender"
            standardized: true
            chassis: "Advanced Fire Control"
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
            chassis: "Sensitive Controls"
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
                ["Keyword", "Y-wing"]
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
            ship: "A/SF-01 B-wing"
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
            ship: "VCX-100 Light Freighter"
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
            ship: ["TIE/ln Fighter", "TIE/in Interceptor"]
        }
        {
            name: "Shadow Wing"
            id: 383
            points: 4
            unique: true
            slot: "Command"
            faction: "Galactic Empire"
            ship: ["TIE/ln Fighter", "TIE/in Interceptor", "TIE/sa Bomber"]
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
            points: 8
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
            ship: "TIE/d Defender"
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
            points: 2
            ship: "BTA-NR2 Y-wing"
            standardized: true
            chassis: "Devastating Barrage"
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
            ship: "TIE/wi Whisper Modified Interceptor"
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
            ship: ["TIE/vn Silencer", "TIE/wi Whisper Modified Interceptor"]
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
            points: 4
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
            points: 9
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
            points: 1
            slot: "Talent"
            charge: 1
            restrictions: [
                ["Keyword", "Mandalorian"]
            ]
        }
        {
            name: "Ahsoka Tano (Crew)"
            canonical_name: 'Ahsoka Tano'.canonicalize()
            xws: "ahsokatano-crew"
            id: 424
            points: 10
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
            xws: "bokatankryze"
            id: 425
            points: 6
            slot: "Crew"
            unique: true
            faction: ["Galactic Republic", "Separatist Alliance"]
        }
        {
            name: "Bo-Katan Kryze (Rebel/Scum)"
            canonical_name: 'Bo-Katan Kryze'.canonicalize()
            xws: "bokatankryze-rebel-scum"
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
            points: 7
            slot: "Crew"
            unique: true
            faction: ["Rebel Alliance", "Scum and Villainy"]
        }
        {
            name: "Gar Saxon"
            id: 429
            points: 6
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
            points: 7
            slot: "Crew"
            unique: true
            faction: ["Galactic Republic", "Scum and Villainy"]
        }
        {
            name: "Rook Kast"
            id: 434
            points: 8
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
                ["FactionOrUnique", "Gar Saxon", "Rebel Alliance"]
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
            xws: 'maul-crew'
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
            xws: "garsaxon-gunner"
            id: 441
            points: 6
            slot: "Gunner"
            unique: true
            faction: "Scum and Villainy"
            restrictions: [
                ["Base", "Large", "Huge"]
            ]
        }
        {
            name: "Tiber Saxon"
            id: 442
            points: 6
            charge: 2
            recurring: 1
            slot: "Gunner"
            faction: "Galactic Empire"
            unique: true
        }
        {
            name: "Ursa Wren (Gunner)"
            canonical_name: 'Ursa Wren'.canonicalize()
            xws: "ursawren-gunner"
            id: 443
            points: 4
            slot: "Gunner"
            unique: true
            faction: ["Galactic Republic", "Separatist Alliance"]
        }
        {
            name: "Blazer Bomb"
            id: 444
            points: 5
            charge: 1
            slot: "Device"
            applies_condition: '''Blazer Bomb'''.canonicalize()
        }
        {
            name: "Beskar Reinforced Plating"
            id: 445
            points: 3
            slot: "Modification"
            charge: 2
            restrictions: [
                ["Keyword", "Mandalorian"]
            ]
        }
        {
            name: "Mandalorian Optics"
            id: 446
            points: 3
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
            # faction: ["Galactic Republic", "Separatist Alliance"]
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
            # faction: ["Rebel Alliance", "Scum and Villainy"]
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
            points: 8
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
            applies_condition: '''Clan Wren Commandos'''.canonicalize()
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
            points: 7
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
            points: 3
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
            points: 7
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
            points: 5
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
                ["Base", "Medium", "Large"]
            ]
        }
        {
            name: "Migs Mayfeld"
            id: 461
            points: 4
            slot: "Gunner"
            unique: true
            faction: ["Scum and Villainy","Galactic Empire"]
        }
        {
            name: "Burnout Thrusters"
            id: 462
            points: 6
            slot: "Modification"
            charge: 1
            faction: ["Scum and Villainy"]
            restrictions: [
                ["Base", "Small", "Medium"]
            ]
            modifier_func: (stats) ->
                stats.actions.push 'Slam' if 'Slam' not in stats.actions
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
                ["Base", "Medium", "Large"]
            ]
        }
        {
            name: "Combat Boarding Tube"
            id: 464
            points: 0
            slot: "Command"
            ship: "Gauntlet Fighter"
            restrictions: [
                ["Slot", "Configuration"]
                ["Base", "Standard"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Configuration"
            also_occupies_upgrades: [ "Configuration" ]
        }
        {
            name: "Drop-Seat Bay"
            id: 465
            points: 5
            slot: "Modification"
            ship: "Gauntlet Fighter"
            unequips_upgrades: [
                'Device'
            ]
            also_occupies_upgrades: [
                'Device'
            ]
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Crew"
                }
                {
                    type: exportObj.Upgrade
                    slot: "Crew"
                }
            ]
        }
        {
            name: "Mandalorian Super Commandos"
            id: 466
            points: 8
            slot: "Crew"
            unique: true
            charge: 2
            faction: "Scum and Villainy"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Non-Small"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
            applies_condition: '''Mandalorian Super Commandos'''.canonicalize()
        }
        {
            name: "Imperial Super Commandos"
            id: 467
            points: 8
            slot: "Crew"
            unique: true
            charge: 2
            faction: "Galactic Empire"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Non-Small"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
            applies_condition: '''Imperial Super Commandos'''.canonicalize()
        }
        {
            name: "Nite Owl Commandos"
            id: 468
            points: 8
            slot: "Crew"
            unique: true
            charge: 2
            faction: "Galactic Republic"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Non-Small"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
            applies_condition: '''Nite Owl Commandos'''.canonicalize()
        }
        {
            name: "Death Watch Commandos"
            id: 469
            points: 8
            slot: "Crew"
            unique: true
            charge: 2
            faction: "Separatist Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Non-Small"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Crew"
            also_occupies_upgrades: [ "Crew" ]
            applies_condition: '''Death Watch Commandos'''.canonicalize()
        }
        {
            name: "Proton Cannons"
            id: 470
            slot: "Cannon"
            points: 4
            attackbull: 4
            range: """2-3"""
            charge: 2
            recurring: 1
            restrictions: [
                ["Slot", "Cannon"]
            ]
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnUpgradeSlot "Cannon"
            also_occupies_upgrades: [ "Cannon" ]
        }
        {
            name: "Homing Torpedoes"
            id: 471
            slot: "Torpedo"
            points: 5
            attack: 4
            range: """1-2"""
            rangebonus: true
            charge: 2
        }
        {
            name: "Xanadu Blood"
            id: 472
            slot: "Title"
            unique: true
            points: 0
            ship: ["Rogue-class Starfighter"]
            modifier_func: (stats) ->
                stats.actions.push 'R-Cloak' if 'R-Cloak' not in stats.actions
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Crew"
                }
                {
                    type: exportObj.Upgrade
                    slot: "Device"
                }
            ]
        }
        {
            name: "Fanatic (BoY)"
            id: 473
            slot: "Talent"
            standard: true
        }
        {
            name: "Chewbacca (BoY)"
            canonical_name: 'Chewbacca'.canonicalize()
            id: 474
            slot: "Crew"
            standard: true
            unique: true
        }
        {
            name: "Attack Speed (BoY)"
            id: 475
            slot: "Talent"
            standard: true
        }
        {
            name: "Unstable Sublight Engines (BoY)"
            id: 476
            slot: "Modification"
            standard: true
        }
        {
            name: "R2-D2 (BoY)"
            canonical_name: 'R2-D2'.canonicalize()
            id: 477
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "Dorsal Turret (BoY)"
            id: 478
            standard: true
            slot: "Turret"
            attackt: 3
            range: """1-2"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "R2-F2 (BoY)"
            canonical_name: 'R2-F2'.canonicalize()
            id: 479
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "Precise Astromech (BoY)"
            id: 480
            standard: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "R2-A3 (BoY)"
            canonical_name: 'R2-A3'.canonicalize()
            id: 481
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "Vengeful (BoY)"
            id: 482
            standard: true
            slot: "Talent"
        }
        {
            name: "R5-D8 (BoY)"
            canonical_name: 'R5-D8'.canonicalize()
            id: 483
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "R5-K6 (BoY)"
            canonical_name: 'R5-K6'.canonicalize()
            id: 484
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "Sensor Jammer (BoY)"
            id: 485
            standard: true
            slot: "Sensor"
        }
        {
            name: "Ancillary Ion Weapons (SoC)"
            id: 486
            standard: true
            slot: "Cannon"
            charge: 2
            recurring: 1
        }
        {
            name: "Roiling Anger (SoC)"
            id: 487
            standard: true
            slot: "Force"
        }
        {
            name: "Contingency Protocol (SoC)"
            id: 488
            standard: true
            slot: "Modification"
        }
        {
            name: "Strut-Lock Override (SoC)"
            id: 489
            standard: true
            charge: 2
            slot: "Configuration"
        }
        {
            name: "R4-P17 (SoC)"
            canonical_name: 'R4-P17'.canonicalize()
            id: 490
            standard: true
            unique: true
            charge: 2
            slot: "Astromech"
        }
        {
            name: "Targeting Astromech (BoY)"
            id: 491
            standard: true
            slot: "Astromech"
        }
        {
            name: "Wolfpack (SoC)"
            canonical_name: 'Wolfpack'.canonicalize()
            id: 492
            unique: true
            standard: true
            slot: "Crew"
        }
        {
            name: "Evasion Sequence 7 (SoC)"
            id: 493
            standard: true
            slot: "Modification"
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
            unique: true
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
            name: '''Blazer Bomb'''
            id: 32
        }
        {
            name: '''Merciless Pursuit'''
            id: 33
        }
        {
            name: '''Marked for Elimination'''
            id: 34
            unique: true
        }
        {
            name: '''Clan Wren Commandos'''
            id: 35
        }
        {
            name: '''Nite Owl Commandos'''
            id: 36
        }
        {
            name: '''Death Watch Commandos'''
            id: 37
        }
        {
            name: '''Imperial Super Commandos'''
            id: 38
        }
        {
            name: '''Mandalorian Super Commandos'''
            id: 39
        }
        {
            name: '''Guarded'''
            id: 40
        }
        {
            name: '''Sickening Maneuver'''
            id: 41
        }
        {
            name: '''Primed For Speed'''
            id: 42
        }
        {
            name: '''Broken Trust'''
            id: 43
        }
    ]

    chassisById: [
        {
            name: "Hope"
            id: 0
        }
        {
            name: "Autothrusters"
            id: 1
        }
        {
            name: "Microthrusters"
            id: 2
        }
        {
            name: "Sensor Blindspot"
            id: 3
        }
        {
            name: "Stygium Array"
            id: 4
        }
        {
            name: "Experimental Scanners"
            id: 5
        }
        {
            name: "Full Throttle"
            id: 6
        }
        {
            name: "Nimble Bomber"
            id: 7
        }
        {
            name: "Weapon Hardpoint"
            id: 8
        }
        {
            name: "Advanced Targeting Computer"
            id: 9
        }
        {
            name: "Vectored Thrusters"
            id: 10
        }
        {
            name: "Advanced Fire Control"
            id: 11
        }
        {
            name: "Sensitive Controls"
            id: 12
        }
        {
            name: "Spacetug Tractor Array"
            id: 13
        }
        {
            name: "Concordia Faceoff"
            id: 14
        }
        {
            name: "Locked and Loaded"
            id: 15
        }
        {
            name: "Tail Gun"
            id: 16
        }
        {
            name: "Advanced Droid Brain"
            id: 17
        }     
        {
            name: "Vectored Cannons"
            id: 18
        }
        {
            name: "Networked Calculations"
            id: 19
        }
        {
            name: "Independent Calculations"
            id: 20
        }
        {
            name: "Linked Battery"
            id: 21
        }
        {
            name: "Heavy Weapon Turret"
            id: 22
        }
        {
            name: "Refined Gyrostabilizers"
            id: 23
        }
        {
            name: "Rigged Energy Cells"
            id: 24
        }
        {
            name: "Co-Pilot"
            id: 25
        }
        {
            name: "Controlled Ailerons"
            id: 26
        }
        {
            name: "Comms Shuttle"
            id: 27
        }
        {
            name: "Dead to Rights"
            id: 28
        }
        {
            name: "Pursuit Craft"
            id: 29
        }
        {
            name: "Adaptive Ailerons"
            id: 30
        }
        {
            name: "Fire Convergence"
            id: 31
        }
        {
            name: "Networked Aim"
            id: 32
        }
        {
            name: "Fine-Tuned Thrusters"
            id: 33
        }
        {
            name: "Explosion with Wings"
            id: 34
        }
        {
            name: "Plated Hull"
            id: 35
        }
        {
            name: "Pinpoint Tractor Array"
            id: 36
        }
        {
            name: "Fine-Tuned Controls"
            id: 37
        }
        {
            name: "Notched Stabilizers"
            id: 38
        }
        {
            name: "Rotating Cannons"
            id: 39
        }
        {
            name: "Twin Ion Engines"
            id: 40
        }
        {
            name: "Versatile Frame"
            id: 41
        }
        {
            name: "Pursuit Thrusters"
            id: 42
        }
        {
            name: "Devastating Barrage"
            id: 43
        }
        {
            name: "Intuitive Interface"
            id: 44
        }
        {
            name: "Intuitive Controls"
            id: 45
        }
        {
            name: "Born for This"
            id: 46
        }
        {
            name: "Modified for Organics"
            id: 47
            modifier_func: (stats) ->
                if stats.maneuvers[2]?
                    for turn in [0 ... 5]
                        if (turn == 1 or turn == 3)
                            if stats.maneuvers[2][turn] > 1
                                stats.maneuvers[2][turn]--
                            if stats.maneuvers[3][turn] > 1
                                stats.maneuvers[3][turn]--
                        if (turn == 0 or turn == 4) and stats.maneuvers[3][turn] < 3
                            stats.maneuvers[3][turn]++
        }
        {
            name: "Solo"
            id: 48
        }
    ]

    damageById: [
        {
            name: "Panicked Pilot"
            quantity: 2
            type: "Pilot"
            id: 0
        }
        {
            name: "Blinded Pilot"
            quantity: 2
            type: "Pilot"
            id: 1
        }
        {
            name: "Wounded Pilot"
            quantity: 2
            type: "Pilot"
            id: 2
        }
        {
            name: "Stunned Pilot"
            quantity: 2
            type: "Pilot"
            id: 3
        }
        {
            name: "Console Fire"
            quantity: 2
            type: "Ship"
            id: 4
        }
        {
            name: "Damaged Engine"
            quantity: 2
            type: "Ship"
            id: 5
        }
        {
            name: "Weapons Failure"
            quantity: 2
            type: "Ship"
            id: 6
        }
        {
            name: "Hull Breach"
            quantity: 2
            type: "Ship"
            id: 7
        }
        {
            name: "Structural Damage"
            quantity: 2
            type: "Ship"
            id: 8
        }
        {
            name: "Damaged Sensor Array"
            quantity: 2
            type: "Ship"
            id: 9
        }
        {
            name: "Loose Stabilizer"
            quantity: 2
            type: "Ship"
            id: 10
        }
        {
            name: "Disabled Power Regulator"
            quantity: 2
            type: "Ship"
            id: 11
        }
        {
            name: "Fuel Leak"
            quantity: 4
            type: "Ship"
            id: 12
        }
        {
            name: "Direct Hit!"
            quantity: 5
            type: "Ship"
            id: 13
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
    for chassis_data, i in basic_cards.chassisById
        if chassis_data.id != i
            throw new Error("ID mismatch: chassis at index #{i} has ID #{chassis_data.id}")
    for damage_data, i in basic_cards.damageById
        if damage_data.id != i
            throw new Error("ID mismatch: damage card at index #{i} has ID #{damage_data.id}")


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
            condition_data.canonical_name = condition_data.name.canonicalize() unless condition_data.canonical_name?
            exportObj.conditions[condition_data.name] = condition_data

    exportObj.chassis = {}
    for chassis_data in basic_cards.chassisById
        unless chassis_data.skip?
            chassis_data.canonical_name = chassis_data.name.canonicalize() unless chassis_data.canonical_name?
            exportObj.chassis[chassis_data.name] = chassis_data

    exportObj.damage = {}
    for damage_data in basic_cards.damageById
        unless damage_data.skip?
            damage_data.canonical_name = damage_data.name.canonicalize() unless damage_data.canonical_name?
            exportObj.damage[damage_data.name] = damage_data
        damage_data.sources = []

    exportObj.obstacles = {}
    # we just want to include obstacles in the manifest like we already do for other stuff. No information other than sources will be used

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
                    when 'damage'
                        exportObj.damage[card.name].sources.push expansion
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
    exportObj.pilotsByKeyword = {}
    # uniqueness can't be enforced just be canonical name, but by the base part
    exportObj.pilotsByUniqueName = {}
    for pilot_name, pilot of exportObj.pilots
        ((exportObj.pilotsByFactionCanonicalName[pilot.faction] ?= {})[pilot.canonical_name] ?= []).push pilot
        ((exportObj.pilotsByKeyword[pilot.keyword] ?= {})[pilot.canonical_name] ?= []).push pilot
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
    exportObj.upgradesByUniqueName = {}
    for upgrade_name, upgrade of exportObj.upgrades
        (exportObj.upgradesBySlotCanonicalName[upgrade.slot] ?= {})[upgrade.canonical_name] = upgrade
        (exportObj.upgradesBySlotXWSName[upgrade.slot] ?= {})[upgrade.xws] = upgrade
        (exportObj.upgradesBySlotUniqueName[upgrade.slot] ?= {})[upgrade.canonical_name.getXWSBaseName()] = upgrade
        (exportObj.upgradesByUniqueName[upgrade.canonical_name.getXWSBaseName()] ?= []).push upgrade

    exportObj.conditionsById = {}
    for condition_name, condition of exportObj.conditions
        exportObj.fixIcons condition
        exportObj.conditionsById[condition.id] = condition
    if Object.keys(exportObj.conditionsById).length != Object.keys(exportObj.conditions).length
        throw new Error("At least one condition shares an ID with another")

    exportObj.chassisById = {}
    for chassis_name, chassis of exportObj.chassis
        exportObj.fixIcons chassis
        exportObj.chassisById[chassis.id] = chassis
    if Object.keys(exportObj.chassisById).length != Object.keys(exportObj.chassis).length
        throw new Error("At least one chassis shares an ID with another")

    exportObj.conditionsByCanonicalName = {}
    for condition_name, condition of exportObj.conditions
        (exportObj.conditionsByCanonicalName ?= {})[condition.canonical_name] = condition

    exportObj.chassisByCanonicalName = {}
    for chassis_name, chassis of exportObj.chassis
        (exportObj.chassisByCanonicalName ?= {})[chassis.canonical_name] = chassis


    exportObj.expansions = Object.keys(exportObj.expansions).sort()

exportObj.setupTranslationCardData = (pilot_translations, upgrade_translations, condition_translations, chassis_translations, damage_translations={}) ->
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

    for chassis_name, translations of chassis_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.chassis[chassis_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for chassis #{chassis_name}. Please report this Issue. "
                throw e


    for damage_name, translations of damage_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.damage[damage_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for damage card #{damage_name}. Please report this Issue. "
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
            .replace(/%BULLSEYEARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bullseyearc" title="Bullseye Arc"></i>')
            .replace(/%SINGLETURRETARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-singleturretarc" title="Single Turret Arc"></i>')
            .replace(/%DOUBLETURRETARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-doubleturretarc" title="Double Turret Arc"></i>')
            .replace(/%FRONTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-frontarc" title="Front Arc"></i>')
            .replace(/%REARARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reararc" title="Rear Arc"></i>')
            .replace(/%LEFTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-leftarc" title="Left Arc"></i>')
            .replace(/%RIGHTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-rightarc" title="Right Arc"></i>')
            .replace(/%ROTATEARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-rotatearc" title="Rotate Arc"></i>')
            .replace(/%FULLFRONTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-fullfrontarc" title="Full Front Arc"></i>')
            .replace(/%FULLREARARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-fullreararc" title="Full Rear Arc"></i>')
            .replace(/%DEVICE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-device" title="Device"></i>')
            .replace(/%MODIFICATION%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-modification" title="Modification"></i>')
            .replace(/%RELOAD%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reload" title="Reload"></i>')
            .replace(/%FORCE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-forcecharge" title="Force"></i>')
            .replace(/%CHARGE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-charge" title="Charge"></i>')
            .replace(/%ENERGY%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-energy" title="Energy"></i>')
            .replace(/%CALCULATE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-calculate" title="Calculate"></i>')
            .replace(/%BANKLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bankleft" title="Bank Left"></i>')
            .replace(/%BANKRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bankright" title="Bank Right"></i>')
            .replace(/%BARRELROLL%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-barrelroll" title="Barrel Roll"></i>')
            .replace(/%BOOST%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-boost" title="Boost"></i>')
            .replace(/%CANNON%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cannon" title="Cannon"></i>')
            .replace(/%CARGO%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cargo" title="Cargo"></i>')
            .replace(/%CLOAK%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cloak" title="Cloak"></i>')
            .replace(/%F-COORDINATE%/g, '<i class="xwing-miniatures-font force xwing-miniatures-font-coordinate" title="Force Coordinate"></i>')
            .replace(/%COORDINATE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-coordinate" title="Coordinate"></i>')
            .replace(/%CRIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-crit" title="Crit"></i>')
            .replace(/%ASTROMECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-astromech" title="Astromech"></i>')
            .replace(/%GUNNER%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-gunner" title="Gunner"></i>')
            .replace(/%CREW%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-crew" title="Crew"></i>')
            .replace(/%TACTICALRELAY%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-tacticalrelay" title="Tactical Relay"></i>')
            .replace(/%HARDPOINT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hardpoint" title="Hardpoint"></i>')
            .replace(/%EVADE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-evade" title="Evade"></i>')
            .replace(/%FOCUS%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-focus" title="Focus"></i>')
            .replace(/%HIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hit" title="Hit"></i>')
            .replace(/%ILLICIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-illicit" title="Illicit"></i>')
            .replace(/%JAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-jam" title="Jam"></i>')
            .replace(/%MISSILE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-missile" title="Missile"></i>')
            .replace(/%F-REINFORCE%/g, '<i class="xwing-miniatures-font force xwing-miniatures-font-reinforce" title="Force Reinforce"></i>')
            .replace(/%REINFORCE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reinforce" title="Reinforce"></i>')
            .replace(/%REVERSESTRAIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reversestraight" title="Reverse Straight"></i>')
            .replace(/%REVERSEBANKLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reversebankleft" title="Reverse Bank Left"></i>')
            .replace(/%REVERSEBANKRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reversebankright" title="Reverse Bank Right"></i>')
            .replace(/%SHIELD%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-shield" title="Shield"></i>')
            .replace(/%SLAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-slam" title="Slam"></i>')
            .replace(/%SLOOPLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopleft" title="Segnors Loop Left"></i>')
            .replace(/%SLOOPRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopright" title="Segnors Loop Right"></i>')
            .replace(/%STRAIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-straight" title="Straight"></i>')
            .replace(/%STOP%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-stop" title="Stop"></i>')
            .replace(/%SENSOR%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sensor" title="Sensor"></i>')
            .replace(/%LOCK%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-lock" title="Lock"></i>')
            .replace(/%TORPEDO%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-torpedo" title="Torpedo"></i>')
            .replace(/%TROLLLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollleft" title="Tallon Roll Left"></i>')
            .replace(/%TROLLRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollright" title="Tallon Roll Right"></i>')
            .replace(/%TURNLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnleft" title="Turn Left"></i>')
            .replace(/%TURNRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnright" title="Turn Right"></i>')
            .replace(/%TURRET%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turret" title="Turret"></i>')
            .replace(/%KTURN%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-kturn" title="Koiogran Turn"></i>')
            .replace(/%TALENT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-talent" title="Talent"></i>')
            .replace(/%TITLE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-title" title="Title"></i>')
            .replace(/%TEAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-team" title="Team"></i>')
            .replace(/%TECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-tech" title="Tech"></i>')
            .replace(/%FORCEPOWER%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-forcepower" title="Force"></i>')
            .replace(/%RANGEBONUS%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-rangebonusindicator" title="Range Bonus Negated"></i>')
            .replace(/%CONFIGURATION%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-config" title="Configuration"></i>')
            .replace(/%AGILITY%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-agility" title="Agility"></i>')
            .replace(/%HULL%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hull" title="Hull"></i>')
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
    {name: 'T-65 X-wing', faction: 'Rebel Alliance'}
    {name: 'Modified YT-1300 Light Freighter', faction: 'Rebel Alliance'}
    {name: 'A/SF-01 B-wing', faction: 'Rebel Alliance'}
    {name: 'RZ-1 A-wing', faction: 'Rebel Alliance'}
    {name: 'BTL-A4 Y-wing', faction: 'Rebel Alliance'}
    {name: 'VCX-100 Light Freighter', faction: 'Rebel Alliance'}
    {name: 'Sheathipede-Class Shuttle', faction: 'Rebel Alliance'}
    {name: 'ARC-170 Starfighter', faction: 'Rebel Alliance'}
    {name: 'Fang Fighter', faction: 'Rebel Alliance'}
    {name: 'TIE/ln Fighter', faction: 'Rebel Alliance'}
    {name: 'HWK-290 Light Freighter', faction: 'Rebel Alliance'}
    {name: 'UT-60D U-wing', faction: 'Rebel Alliance'}
    {name: 'Z-95-AF4 Headhunter', faction: 'Rebel Alliance'}
    {name: 'Gauntlet Fighter', faction: 'Rebel Alliance'}

    {name: 'TIE Advanced x1', faction: 'Galactic Empire'}
    {name: 'TIE Advanced v1', faction: 'Galactic Empire'}
    {name: 'TIE/ln Fighter', faction: 'Galactic Empire'}
    {name: 'TIE/in Interceptor', faction: 'Galactic Empire'}
    {name: 'TIE Reaper', faction: 'Galactic Empire'}
    {name: 'TIE/d Defender', faction: 'Galactic Empire'}
    {name: 'TIE/sk Striker', faction: 'Galactic Empire'}
    {name: 'TIE/rb Heavy', faction: 'Galactic Empire'}
    {name: 'VT-49 Decimator', faction: 'Galactic Empire'}
    {name: 'Gauntlet Fighter', faction: 'Galactic Empire'}

    {name: 'Firespray-class Patrol Craft', faction: 'Scum and Villainy'}
    {name: 'BTL-A4 Y-wing', faction: 'Scum and Villainy'}
    {name: 'Modified TIE/ln Fighter', faction: 'Scum and Villainy'}
    {name: 'Fang Fighter', faction: 'Scum and Villainy'}
    {name: 'JumpMaster 5000', faction: 'Scum and Villainy'}
    {name: 'M3-A Interceptor', faction: 'Scum and Villainy'}
    {name: 'Customized YT-1300 Light Freighter', faction: 'Scum and Villainy'}
    {name: 'Escape Craft', faction: 'Scum and Villainy'}
    {name: 'YV-666 Light Freighter', faction: 'Scum and Villainy'}
    {name: 'Z-95-AF4 Headhunter', faction: 'Scum and Villainy'}
    {name: 'HWK-290 Light Freighter', faction: 'Scum and Villainy'}
    {name: 'ST-70 Assault Ship', faction: 'Scum and Villainy'}
    {name: 'Rogue-class Starfighter', faction: 'Scum and Villainy'}
    {name: 'Gauntlet Fighter', faction: 'Scum and Villainy'}

    {name: 'Fireball', faction: 'Resistance'}
    {name: 'T-70 X-wing', faction: 'Resistance'}
    {name: 'RZ-2 A-wing', faction: 'Resistance'}
    {name: 'BTA-NR2 Y-wing', faction: 'Resistance'}
    {name: 'Resistance Transport', faction: 'Resistance'}
    {name: 'Resistance Transport Pod', faction: 'Resistance'}
    {name: 'Scavenged YT-1300', faction: 'Resistance'}

    {name: 'TIE/ba Interceptor', faction: 'First Order'}
    {name: 'TIE/fo Fighter', faction: 'First Order'}
    {name: 'TIE/vn Silencer', faction: 'First Order'}
    {name: 'TIE/sf Fighter', faction: 'First Order'}
    {name: 'TIE/se Bomber', faction: 'First Order'}
    {name: 'TIE/wi Whisper Modified Interceptor', faction: 'First Order'}
    {name: 'Xi-class Light Shuttle', faction: 'First Order'}

    {name: 'Delta-7 Aethersprite', faction: 'Galactic Republic'}
    {name: 'Delta-7b Aethersprite', faction: 'Galactic Republic'}
    {name: 'ARC-170 Starfighter', faction: 'Galactic Republic'}
    {name: 'Naboo Royal N-1 Starfighter', faction: 'Galactic Republic'}
    {name: 'BTL-B Y-wing', faction: 'Galactic Republic'}
    {name: 'V-19 Torrent Starfighter', faction: 'Galactic Republic'}
    {name: 'Eta-2 Actis', faction: 'Galactic Republic'}
    {name: 'Nimbus-class V-wing', faction: 'Galactic Republic'}
    {name: 'LAAT/i Gunship', faction: 'Galactic Republic'}
    {name: 'Gauntlet Fighter', faction: 'Galactic Republic'}
    {name: 'Clone Z-95 Headhunter', faction: 'Galactic Republic'}

    {name: 'Vulture-class Droid Fighter', faction: 'Separatist Alliance'}
    {name: 'Hyena-class Droid Bomber', faction: 'Separatist Alliance'}
    {name: 'Droid Tri-fighter', faction: 'Separatist Alliance'}
    {name: 'Firespray-class Patrol Craft', faction: 'Separatist Alliance'}
    {name: 'Sith Infiltrator', faction: 'Separatist Alliance'}
    {name: 'Nantex-Class Starfighter', faction: 'Separatist Alliance'}
    {name: 'HMP Droid Gunship', faction: 'Separatist Alliance'}
    {name: 'Belbullab-22 Starfighter', faction: 'Separatist Alliance'}
    {name: 'Gauntlet Fighter', faction: 'Separatist Alliance'}
    {name: 'Rogue-class Starfighter', faction: 'Separatist Alliance'}
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
    'Saesee Tiin (Delta-7b)'

    # Separatist Alliance
    'Phlac-Arphocc Prototype'

]

# Upgrades in that are not in standard
exportObj.standardUpgradeExclusions = [
    # Rebel Alliance
    'Cassian Andor'
    'Sabine Wren'

    # Galactic Empire
    'Admiral Sloane'

    # Scum and Villainy
    'Boba Fett'
    'Tobias Beckett'
    'Slave I'

    # Resistance
    'Kaydel Connix'

    # FO
    'Supreme Leader Snoke'
    'Commander Pyre'

    # Galactic Republic
    'R2-A6'
  
    # Separatist Alliance
    'Tal Merrik'

    # Generic
    'Advanced Sensors'
    'Autoblasters'
    'Delta-7B'
    'Hull Upgrade'
    'Inertial Dampeners'
    'Informant'
    'Interloper Turn'
    'Intimidation'
    'Precognitive Reflexes'
    'R2 Astromech'
    'R5 Astromech'
    'Seasoned Navigator'
    'Sense'
    'Supernatural Reflexes'
    'Static Discharge Vanes'
    'Stealth Device'
    'Composure'
    'Trajectory Simulator'
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
        check = false
        for ship in exportObj.standardShipInclusions
            if (data.faction == ship.faction && (data.ship == ship.name))
                check = true
        if check == false
            return false
        return data.name not in exportObj.standardPilotExclusions
    else if type == 'Ship'
        for ship in exportObj.standardShipInclusions
            # checks against name for ship itself or ship name/faction for pilot inclusions
            if (ship.faction == faction && (data.name == ship.name || data.ship == ship.name || (Array.isArray(data.ship) and ship.name in data.ship)))
                return true
        return false
    else
        return data.name not in exportObj.standardUpgradeExclusions

String::ParseParameter = (name) ->
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]")
    regexS = "[\\?&]" + name + "=([^&#]*)"
    regex = new RegExp(regexS)
    results = regex.exec(this)
    if results == null
        return ""
    else
        return decodeURIComponent(results[1].replace(/\+/g, " "))

String::serialtoxws = ->
    xws =
        description: ""
        faction: this.ParseParameter('f').canonicalize()
        name: this.ParseParameter('sn')
        pilots: []
        points: 20
        vendor:
            yasb:
                builder: 'YASB - X-Wing 2.5'
                builder_url: "https://yasb.app"
                link: "https://yasb.app/index.html#{this}" 
        version: '11/25/2022'

    serialized = this.ParseParameter('d')
    re = if "Z" in serialized then /^v(\d+)Z(.*)/ else /^v(\d+)!(.*)/
    matches = re.exec serialized
    if matches?
        # Parsing extra data in case we need it later
        version = parseInt matches[1]
        ship_splitter = 'Y'
        [g, p, s] = matches[2].split('Z')
        [ game_type_abbrev, desired_points, serialized_ships ] = [g, parseInt(p), s]

        switch game_type_abbrev
            when 's'
                gamemode = 'extended'
            when 'h'
                gamemode = 'standard'
            when 'e'
                return "error: game mode not supported"
            when 'q'
                return "error: game mode not supported"

        if !serialized_ships? # something went wrong, we can't load that serialization
            return "error: serialization read failed"

        #independantly setting up basic card data for xws output
        card_data = exportObj.basicCardData()

        card_pilots = {}
        for pilot_data in card_data.pilotsById
            unless pilot_data.skip?
                pilot_data.canonical_name = pilot_data.name.canonicalize() unless pilot_data.canonical_name?
                card_pilots[pilot_data.id] = pilot_data

        cards_upgrades = {}
        for upgrade_data in card_data.upgradesById
            unless upgrade_data.skip?
                upgrade_data.canonical_name = upgrade_data.name.canonicalize() unless upgrade_data.canonical_name?
                cards_upgrades[upgrade_data.id] = upgrade_data
                

        if serialized_ships.length?
            # Ship loop
            for serialized_ship in serialized_ships.split(ship_splitter)
                pilot_splitter = 'X'
                upgrade_splitter = 'W'
                
                [ pilot_id, upgrade_ids ] = serialized_ship.split pilot_splitter
                # pilot_data is the pilot info
                pilot_data = card_pilots[parseInt(pilot_id)]
                if pilot_data
                    pilot_xws =
                        id: (pilot_data.xws ? pilot_data.canonical_name)
                        name: (pilot_data.xws ? pilot_data.canonical_name)
                        points: pilot_data.points
                        ship: pilot_data.ship.canonicalize()
                        upgrades: []

                    if not pilot_data.upgrades?
                        upgrade_ids = upgrade_ids.split upgrade_splitter

                        upgrade_obj = {}

                        for i in [upgrade_ids.length - 1 ... -1]
                            upgrade_id = upgrade_ids[i]
                            # upgrade_data is the pilot info
                            upgrade_data = cards_upgrades[parseInt(upgrade_id)]
                            if upgrade_data
                                switch upgrade_data.slot
                                    when 'Force'
                                        slot = 'force-power'
                                    when 'Tactical Relay'
                                        slot = 'tactical-relay'
                                    else
                                        slot = upgrade_data.slot.canonicalize()
                                
                                (upgrade_obj[slot] ?= []).push (upgrade_data.xws ? upgrade_data.canonical_name)

                        pilot_xws.upgrades = upgrade_obj
                
                    xws.pilots.push pilot_xws

    else
        return "error: could not read URL"

    return JSON.stringify(xws)