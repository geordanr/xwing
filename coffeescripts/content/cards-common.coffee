# This must be loaded before any of the card language modules!
exportObj = exports ? this

exportObj.unreleasedExpansions = [
]

exportObj.isReleased = (data) ->
    if data.standard
        return true
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
            factions: [ "Rebel Alliance", "Scum and Villainy" ]
            attackdt: 3
            agility: 2
            hull: 6
            shields: 4
            keyword: ["Freighter"]
            chassis: "Sensor Blackout"
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
            factions: ["Galactic Republic", "Scum and Villainy"]
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
        "BTA-NR2-W Y-wing":
            name: "BTA-NR2-W Y-wing"
            icon: "btanr2ywing"
            factions: ["Resistance"]
            attack: 2
            agility: 1
            hull: 4
            shields: 5
            chassis: "Devastating Barrage"
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
                "R-Boost"
                "Reload"
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
            factions: ["Galactic Republic", "Rebel Alliance", "Resistance"]
            base: "Huge"
            attackl: 4
            attackr: 4
            agility: 0
            hull: 18
            shields: 7
            shieldrecurr: 2
            energy: 7
            energyrecurr: 2
            chassis: "Broadside Batteries"
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
            chassis: "Concentrated Batteries"
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
            chassis: "Resupply Craft"
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
            factions: ["Galactic Empire", "First Order", "Galactic Republic", "Separatist Alliance"]
            base: "Huge"
            attack: 3
            agility: 0
            hull: 11
            shields: 5
            shieldrecurr: 1
            energy: 3
            energyrecurr: 1
            chassis: "Docking Clamps"
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
            chassis: "Overdrive Burners"
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
            chassis: "Tractor Grasp"
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

    # name field is for convenience only
    pilotsById: [
        {
            name: "Cavern Angels Zealot"
            id: 0
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            keyword: ["Partisan"]
            skill: 1
            points: 10
            loadout: 10
            slots: [
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Blue Squadron Escort"
            id: 1
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 2
            points: 9
            loadout: 3
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
            ship: "T-65 X-wing"
            skill: 3
            points: 10
            loadout: 10
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
            ship: "T-65 X-wing"
            skill: 4
            points: 10
            loadout: 8
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
            ship: "T-65 X-wing"
            skill: 5
            keyword: ["Light Side"]
            force: 2
            points: 14
            loadout: 10
            slots: [
                "Force"
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
            ship: "T-65 X-wing"
            skill: 6
            points: 14
            loadout: 13
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
            id: 6
            unique: true
            xwsship: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 11
            loadout: 9
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
            points: 10
            loadout: 7
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
            points: 10
            loadout: 11
            keyword: ["Partisan"]
            slots: [
                "Missile"
                "Astromech"
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
            ship: "T-65 X-wing"
            skill: 5
            points: 11
            loadout: 8
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
            ship: "T-65 X-wing"
            skill: 3
            points: 10
            loadout: 10
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
            ship: "T-65 X-wing"
            skill: 4
            points: 11
            loadout: 14
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
            id: 13
            unique: true
            xwsship: true
            faction: "Rebel Alliance"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 8
            loadout: 13
            keyword: ["Spectre", "Mandalorian"]
            slots: [
                "Talent"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Ezra Bridger (TIE Fighter)"
            id: 14
            unique: true
            faction: "Rebel Alliance"
            ship: "TIE/ln Fighter"
            skill: 3
            force: 1
            points: 9
            loadout: 15
            keyword: ["Light Side","Spectre"]
            slots: [
                "Force"
                "Modification"
                "Modification"
            ]
        }
        {
            name: '"Zeb" Orrelios (TIE Fighter)'
            id: 15
            unique: true
            faction: "Rebel Alliance"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 6
            loadout: 5
            keyword: ["Spectre"]
            slots: [
                "Modification"
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
            points: 6
            loadout: 4
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Modification"
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
            points: 12
            loadout: 16
            slots: [
                "Talent"
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
            ship: "BTL-S8 K-wing"
            skill: 3
            points: 12
            loadout: 14
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
            ship: "BTL-S8 K-wing"
            skill: 2
            points: 11
            loadout: 12
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
            ship: "E-wing"
            skill: 5
            points: 14
            loadout: 14
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Tech"
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
            points: 15
            loadout: 20
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Rogue Squadron Escort"
            id: 23
            faction: "Rebel Alliance"
            ship: "E-wing"
            skill: 4
            points: 13
            loadout: 13
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Knave Squadron Escort"
            id: 24
            faction: "Rebel Alliance"
            ship: "E-wing"
            skill: 2
            points: 12
            loadout: 8
            slots: [
                "Sensor"
                "Torpedo"
                "Astromech"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Norra Wexley (Y-Wing)"
            id: 25
            unique: true
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 5
            points: 12
            loadout: 20
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
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
            points: 9
            loadout: 12
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
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
            points: 11
            loadout: 20
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
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
            points: 8
            loadout: 7
            slots: [
                "Turret"
                "Torpedo"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Gold Squadron Veteran"
            id: 29
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 3
            points: 9
            loadout: 13
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Gray Squadron Bomber"
            id: 30
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 2
            points: 7
            loadout: 4
            slots: [
                "Turret"
                "Torpedo"
                "Astromech"
                "Device"
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
            points: 11
            loadout: 12
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
            points: 12
            loadout: 14
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
            ship: "UT-60D U-wing"
            skill: 2
            points: 12
            loadout: 16
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
            points: 13
            loadout: 17
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
            points: 13
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
            name: "Benthic Two Tubes"
            id: 36
            unique: true
            faction: "Rebel Alliance"
            ship: "UT-60D U-wing"
            skill: 2
            points: 12
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
            name: "Blue Squadron Scout"
            id: 37
            faction: "Rebel Alliance"
            ship: "UT-60D U-wing"
            skill: 2
            points: 12
            loadout: 17
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
            name: "Partisan Renegade"
            id: 38
            faction: "Rebel Alliance"
            ship: "UT-60D U-wing"
            skill: 1
            points: 11
            loadout: 12
            keyword: ["Partisan"]
            slots: [
                "Sensor"
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
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
            points: 19
            loadout: 20
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
            ]
            chassis: "Sensor Blindspot"
            ship_override:
                attackdt: 4
        }
        {
            name: '"Leebo"'
            id: 40
            unique: true
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 3
            points: 19
            loadout: 19
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
            ]
            chassis: "Sensor Blindspot"
            ship_override:
                attackdt: 4
        }
        {
            name: "Wild Space Fringer"
            id: 41
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 1
            points: 17
            loadout: 14
            slots: [
                "Missile"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
            ]
            chassis: "Sensor Blindspot"
            ship_override:
                attackdt: 4
        }
        {
            name: "Han Solo"
            id: 42
            unique: true
            xwsaddon: "modifiedyt1300lightfreighter"
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            skill: 6
            points: 21
            loadout: 26
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Crew"
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
            xwsaddon: "modifiedyt1300lightfreighter"
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            skill: 5
            points: 18
            loadout: 16
            slots: [
                "Talent"
                "Missile"
                "Crew"
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
            points: 16
            loadout: 15
            slots: [
                "Talent"
                "Missile"
                "Crew"
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
            points: 16
            loadout: 13
            slots: [
                "Missile"
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Jan Ors"
            id: 46
            unique: true
            faction: "Rebel Alliance"
            ship: "HWK-290 Light Freighter"
            skill: 5
            points: 14
            loadout: 10
            slots: [
                "Talent"
                "Crew"
                "Device"
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
            points: 13
            loadout: 12
            slots: [
                "Talent"
                "Crew"
                "Device"
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
            points: 11
            loadout: 10
            slots: [
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
            points: 7
            loadout: 5
            slots: [
                "Crew"
                "Device"
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
            points: 9
            loadout: 6
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
            points: 9
            loadout: 10
            slots: [
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Green Squadron Pilot"
            id: 52
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 3
            points: 8
            loadout: 6
            slots: [
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Phoenix Squadron Pilot"
            id: 53
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 1
            points: 7
            loadout: 1
            slots: [
                "Talent"
                "Missile"
                "Modification"
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
            points: 8
            loadout: 9
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
            ship: "Z-95-AF4 Headhunter"
            skill: 4
            points: 8
            loadout: 10
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
            ship: "Z-95-AF4 Headhunter"
            skill: 2
            points: 7
            loadout: 11
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
            ship: "Z-95-AF4 Headhunter"
            skill: 1
            points: 6
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
            points: 13
            loadout: 14
            slots: [
                "Talent"
                "Crew"
                "Modification"
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
            points: 11
            loadout: 7
            slots: [
                "Talent"
                "Crew"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Kashyyyk Defender"
            id: 60
            faction: "Rebel Alliance"
            ship: "Auzituck Gunship"
            skill: 1
            points: 11
            loadout: 9
            slots: [
                "Crew"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Hera Syndulla (VCX-100)"
            id: 61
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100 Light Freighter"
            skill: 5
            points: 17
            loadout: 19
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Sensor"
                "Turret"
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
            points: 18
            loadout: 20
            slots: [
                "Force"
                "Torpedo"
                "Sensor"
                "Turret"
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
            points: 16
            loadout: 12
            keyword: ["Droid","Spectre"]
            slots: [
                "Torpedo"
                "Sensor"
                "Turret"
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
            points: 15
            loadout: 9
            slots: [
                "Torpedo"
                "Sensor"
                "Turret"
                "Crew"
                "Crew"
                "Gunner"
                "Modification"
            ]
        }
        {
            name: "Hera Syndulla"
            id: 65
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 5
            points: 10
            loadout: 15
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Talent"
                "Turret"
                "Crew"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Sabine Wren"
            id: 66
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 3
            points: 10
            loadout: 13
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
            points: 9
            loadout: 8
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
            points: 8
            loadout: 6
            keyword: ["Spectre"]
            slots: [
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
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 6
            points: 11
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
            id: 70
            unique: true
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 3
            force: 1
            points: 9
            loadout: 9
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
            id: 71
            unique: true
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 2
            points: 7
            loadout: 4
            keyword: ["Spectre"]
            slots: [
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
            points: 8
            loadout: 6
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
            points: 12
            loadout: 12
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
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
            points: 11
            loadout: 8
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
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
            points: 12
            loadout: 16
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Blue Squadron Pilot"
            id: 76
            faction: "Rebel Alliance"
            ship: "A/SF-01 B-wing"
            skill: 2
            points: 10
            loadout: 10
            slots: [
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Modification"
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
            points: 13
            loadout: 16
            slots: [
                "Talent"
                "Astromech"
                "Torpedo"
                "Crew"
                "Gunner"
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
            points: 12
            loadout: 17
            slots: [
                "Talent"
                "Astromech"
                "Torpedo"
                "Crew"
                "Gunner"
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
            points: 12
            loadout: 15
            slots: [
                "Talent"
                "Astromech"
                "Torpedo"
                "Crew"
                "Gunner"
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
            points: 11
            loadout: 12
            slots: [
                "Talent"
                "Astromech"
                "Torpedo"
                "Crew"
                "Gunner"
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
            points: 17
            loadout: 22
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
            points: 16
            loadout: 20
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
            points: 16
            loadout: 20
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
            points: 15
            loadout: 18
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
            points: 11
            loadout: 17
            slots: [
                "Talent"
                "Turret"
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
            points: 10
            loadout: 10
            slots: [
                "Talent"
                "Turret"
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
            points: 9
            loadout: 12
            slots: [
                "Turret"
                "Missile"
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
            ship: "BTL-A4 Y-wing"
            skill: 1
            points: 7
            loadout: 4
            slots: [
                "Turret"
                "Missile"
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
            ship: "Customized YT-1300 Light Freighter"
            skill: 6
            points: 14
            loadout: 16
            slots: [
                "Talent"
                "Talent"
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
            name: "Lando Calrissian (Scum)"
            id: 90
            unique: true
            xws: "landocalrissian"
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
            skill: 4
            points: 13
            loadout: 16
            slots: [
                "Talent"
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
            name: "L3-37"
            id: 91
            unique: true
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
            skill: 2
            points: 12
            loadout: 15
            keyword: ["Droid"]
            slots: [
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
            name: "Freighter Captain"
            id: 92
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
            skill: 1
            points: 11
            loadout: 9
            slots: [
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Lando Calrissian (Scum) (Escape Craft)"
            id: 93
            unique: true
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 4
            points: 7
            loadout: 9
            slots: [
                "Talent"
                "Crew"
                "Illicit"
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
            points: 7
            loadout: 9
            slots: [
                "Crew"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "L3-37 (Escape Craft)"
            id: 95
            unique: true
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 2
            points: 7
            loadout: 10
            keyword: ["Droid"]
            slots: [
                "Crew"
                "Illicit"
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
            points: 3
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
            points: 16
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
            points: 12
            loadout: 8
            keyword: ["Mandalorian"]
            slots: [
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
            points: 11
            loadout: 11
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Torpedo"
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
            points: 11
            loadout: 10
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
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
            points: 11
            loadout: 10
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Zealous Recruit"
            id: 102
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 1
            points: 10
            loadout: 10
            keyword: ["Mandalorian"]
            slots: [
                "Torpedo"
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
            points: 20
            loadout: 20
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
            ]
        }
        {
            name: "Emon Azzameen"
            id: 104
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            skill: 4
            points: 17
            loadout: 16
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
            points: 15
            loadout: 12
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
            points: 16
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
            points: 16
            loadout: 15
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Bounty Hunter"
            id: 108
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            skill: 2
            points: 14
            loadout: 6
            keyword: ["Bounty Hunter"]
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "4-LOM"
            id: 109
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            points: 12
            loadout: 13
            keyword: ["Bounty Hunter","Droid"]
            slots: [
                "Talent"
                "Sensor"
                "Missile"
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
            points: 11
            loadout: 11
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Sensor"
                "Missile"
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
            points: 10
            loadout: 8
            keyword: ["Bounty Hunter"]
            slots: [
                "Sensor"
                "Missile"
                "Crew"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Palob Godalhi"
            id: 112
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290 Light Freighter"
            skill: 3
            points: 11
            loadout: 8
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
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
            points: 11
            loadout: 12
            slots: [
                "Talent"
                "Crew"
                "Device"
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
            points: 9
            loadout: 8
            slots: [
                "Crew"
                "Device"
                "Illicit"
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
            points: 16
            loadout: 18
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
            points: 13
            loadout: 21
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
            points: 12
            loadout: 13
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
            points: 10
            loadout: 8
            slots: [
                "Cannon"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Talonbane Cobra"
            id: 119
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 5
            points: 12
            loadout: 13
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
            points: 11
            loadout: 16
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
            points: 10
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
            points: 10
            loadout: 13
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
            points: 10
            loadout: 9
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
            name: "Cartel Marauder"
            id: 124
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 2
            points: 9
            loadout: 4
            slots: [
                "Missile"
                "Illicit"
                "Illicit"
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
            points: 15
            loadout: 12
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
            points: 16
            loadout: 12
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
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 3
            points: 14
            loadout: 13
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
            points: 14
            loadout: 14
            keyword: ["Bounty Hunter"]
            slots: [
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Torani Kulda"
            id: 129
            unique: true
            faction: "Scum and Villainy"
            ship: "M12-L Kimogila Fighter"
            skill: 4
            points: 12
            loadout: 14
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
            points: 11
            loadout: 13
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
            points: 10
            loadout: 8
            slots: [
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
            points: 10
            loadout: 11
            slots: [
                "Talent"
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
            points: 9
            loadout: 13
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
            points: 9
            loadout: 16
            slots: [
                "Talent"
                "Illicit"
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
            points: 9
            loadout: 17
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Illicit"
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
            points: 8
            loadout: 10
            slots: [
                "Talent"
                "Illicit"
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
            points: 8
            loadout: 10
            slots: [
                "Illicit"
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
            points: 8
            loadout: 12
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
            points: 6
            loadout: 0
            slots: [
                "Illicit"
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
            points: 10
            loadout: 19
            slots: [
                "Talent"
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
            ship: "Quadrijet Transfer Spacetug"
            skill: 2
            points: 9
            loadout: 14
            keyword: ["Bounty Hunter"]
            slots: [
                "Tech"
                "Crew"
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
            points: 9
            loadout: 13
            slots: [
                "Crew"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Jakku Gunrunner"
            id: 143
            faction: "Scum and Villainy"
            ship: "Quadrijet Transfer Spacetug"
            skill: 1
            points: 7
            loadout: 4
            slots: [
                "Crew"
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
            recurring: 1
            points: 14
            loadout: 22
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
            points: 12
            loadout: 16
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Lok Revenant"
            id: 146
            faction: "Scum and Villainy"
            ship: "Scurrg H-6 Bomber"
            skill: 2
            points: 12
            loadout: 11
            slots: [
                "Turret"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Guri"
            id: 147
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 5
            points: 13
            loadout: 11
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Torpedo"
                "Illicit"
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
            points: 12
            loadout: 18
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Torpedo"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Dalan Oberos (StarViper)"
            id: 149
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 4
            points: 10
            loadout: 10
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Torpedo"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Black Sun Assassin"
            id: 150
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 3
            points: 11
            loadout: 11
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Torpedo"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Black Sun Enforcer"
            id: 151
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 2
            points: 10
            loadout: 9
            slots: [
                "Sensor"
                "Tech"
                "Torpedo"
                "Illicit"
                "Modification"
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
            points: 15
            loadout: 13
            slots: [
                "Talent"
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
            points: 17
            loadout: 21
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
            points: 15
            loadout: 15
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
            points: 14
            loadout: 9
            slots: [
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
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
            points: 8
            loadout: 14
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
            ship: "Z-95-AF4 Headhunter"
            skill: 3
            points: 7
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
            points: 7
            loadout: 10
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
            ship: "Z-95-AF4 Headhunter"
            skill: 1
            points: 6
            loadout: 5
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
            ship: "Z-95-AF4 Headhunter"
            skill: "*"
            points: 0
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
            points: 11
            loadout: 19
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
            name: "Lieutenant Karsabi"
            id: 162
            unique: true
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 3
            points: 10
            loadout: 15
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
            name: "Rho Squadron Pilot"
            id: 163
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 3
            points: 11
            loadout: 19
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
            name: "Nu Squadron Pilot"
            id: 164
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 2
            points: 9
            loadout: 9
            slots: [
                "Sensor"
                "Missile"
                "Modification"
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
            points: 13
            loadout: 17
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Lieutenant Sai"
            id: 166
            unique: true
            faction: "Galactic Empire"
            ship: "Lambda-class T-4a Shuttle"
            skill: 3
            points: 10
            loadout: 5
            slots: [
                "Sensor"
                "Cannon"
                "Crew"
                "Crew"
                "Modification"
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
            points: 13
            loadout: 18
            slots: [
                "Talent"
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
            ship: "Lambda-class T-4a Shuttle"
            skill: 1
            points: 11
            loadout: 15
            slots: [
                "Sensor"
                "Cannon"
                "Crew"
                "Crew"
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
            points: 13
            loadout: 15
            force: 2
            keyword: ["Dark Side"]
            slots: [
                "Force"
                "Force"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Seventh Sister"
            id: 170
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced v1"
            skill: 4
            points: 11
            loadout: 13
            force: 2
            keyword: ["Dark Side"]
            slots: [
                "Force"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Inquisitor"
            id: 171
            faction: "Galactic Empire"
            ship: "TIE Advanced v1"
            skill: 3
            points: 10
            loadout: 13
            force: 1
            keyword: ["Dark Side"]
            slots: [
                "Force"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Baron of the Empire"
            id: 172
            faction: "Galactic Empire"
            ship: "TIE Advanced v1"
            skill: 3
            points: 9
            loadout: 10
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
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
            points: 16
            loadout: 11
            force: 3
            slots: [
                "Force"
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
            ship: "TIE Advanced x1"
            skill: 5
            points: 11
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
            points: 10
            loadout: 9
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
            points: 10
            loadout: 13
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
            points: 10
            loadout: 9
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
            ship: "TIE Advanced x1"
            skill: 2
            points: 9
            loadout: 5
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
            ship: "TIE/in Interceptor"
            skill: 6
            points: 13
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
            points: 10
            loadout: 12
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
            points: 9
            loadout: 6
            slots: [
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Alpha Squadron Pilot"
            id: 182
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 1
            points: 8
            loadout: 1
            slots: [
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
            points: 12
            loadout: 15
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
            points: 11
            loadout: 13
            slots: [
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
            points: 10
            loadout: 9
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
            points: 11
            loadout: 14
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
            ship: "TIE/ag Aggressor"
            skill: 4
            points: 9
            loadout: 15
            slots: [
                "Talent"
                "Sensor"
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
            ship: "TIE/ag Aggressor"
            skill: 2
            points: 9
            loadout: 17
            slots: [
                "Sensor"
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
            points: 8
            loadout: 9
            slots: [
                "Talent"
                "Sensor"
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
            ship: "TIE/ag Aggressor"
            skill: 2
            points: 7
            loadout: 6
            slots: [
                "Sensor"
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
            ship: "TIE/ca Punisher"
            skill: 5
            points: 14
            loadout: 20
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
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
            ship: "TIE/ca Punisher"
            skill: 4
            points: 13
            loadout: 24
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
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
            points: 10
            loadout: 14
            slots: [
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
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
            ship: "TIE/d Defender"
            skill: 4
            points: 16
            loadout: 11
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Cannon"
                "Cannon"
                "Missile"
                "Modification"
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
            points: 15
            loadout: 7
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Cannon"
                "Missile"
                "Modification"
                "Modification"
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
            points: 18
            loadout: 13
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Cannon"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Onyx Squadron Ace"
            id: 197
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 4
            points: 16
            loadout: 10
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Cannon"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Delta Squadron Pilot"
            id: 198
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 1
            points: 15
            loadout: 9
            slots: [
                "Sensor"
                "Cannon"
                "Tech"
                "Missile"
                "Modification"
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
            points: 14
            loadout: 15
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Gunner"
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
            points: 13
            loadout: 15
            slots: [
                "Talent"
                "Sensor"
                "Tech"
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
            points: 12
            loadout: 11
            slots: [
                "Talent"
                "Sensor"
                "Tech"
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
            points: 11
            loadout: 10
            slots: [
                "Sensor"
                "Tech"
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
            points: 10
            loadout: 10
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
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
            points: 10
            loadout: 13
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
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
            points: 10
            loadout: 13
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
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
            points: 9
            loadout: 13
            slots: [
                "Torpedo"
                "Missile"
                "Device"
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
            points: 10
            loadout: 16
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
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
            points: 8
            loadout: 8
            slots: [
                "Torpedo"
                "Missile"
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
            points: 10
            loadout: 12
            slots: [
                "Gunner"
                "Device"
            ]
        }
        {
            name: '"Pure Sabacc"'
            id: 210
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/sk Striker"
            skill: 4
            points: 10
            loadout: 13
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
            points: 11
            loadout: 19
            slots: [
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
            ship: "TIE/sk Striker"
            skill: 3
            points: 9
            loadout: 10
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
            ship: "TIE/sk Striker"
            skill: 1
            points: 8
            loadout: 5
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
            points: 19
            loadout: 27
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
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
            points: 16
            loadout: 14
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
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
            points: 16
            loadout: 9
            slots: [
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
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
            ship: "TIE/ln Fighter"
            skill: 5
            points: 8
            loadout: 6
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
            ship: "TIE/ln Fighter"
            skill: 4
            charge: 1
            points: 10
            loadout: 16
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
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
            points: 8
            loadout: 9
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
            ship: "TIE/ln Fighter"
            skill: 5
            points: 8
            loadout: 9
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
            ship: "TIE/ln Fighter"
            skill: 1
            recurring: 1
            charge: 1
            points: 6
            loadout: 2
            slots: [
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
            points: 9
            loadout: 17
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Gideon Hask"
            id: 223
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            points: 9
            loadout: 16
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
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
            points: 8
            loadout: 11
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
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
            points: 8
            loadout: 11
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
            ship: "TIE/ln Fighter"
            skill: 2
            points: 8
            loadout: 9
            slots: [
                "Modification"
            ]
        }
        {
            name: "Black Squadron Ace"
            id: 227
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 6
            loadout: 4
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Obsidian Squadron Pilot"
            id: 228
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 5
            loadout: 0
            slots: [
                "Modification"
            ]
        }
        {
            name: "Academy Pilot"
            id: 229
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 1
            points: 5
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
            points: 7
            loadout: 5
            slots: [
                "Crew"
                "Device"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Poe Dameron"
            id: 231
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 6
            points: 17
            loadout: 20
            charge: 1
            recurring: 1
            slots: [
                "Talent"
                "Talent"
                "Astromech"
                "Tech"
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
            points: 10
            loadout: 9
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Tech"
                "Modification"
                "Modification"
            ]
        }
        {
            id: 234 # duplicate, has been removed
            skip: true
        }
        {
            name: '"Muse"'
            id: 235
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 2
            points: 8
            loadout: 9
            slots: [
                "Talent"
                "Sensor"
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
            points: 16
            loadout: 12
            applies_condition: '''I'll Show You the Dark Side'''.canonicalize()
            slots: [
                "Force"
                "Tech"
                "Torpedo"
                "Missile"
                "Modification"
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
            points: 15
            loadout: 14
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Modification"
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
            points: 17
            loadout: 22
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
            ship: "RZ-2 A-wing"
            skill: 5
            points: 9
            loadout: 5
            slots: [
                "Talent"
                "Talent"
                "Missile"
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
            points: 10
            loadout: 12
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Sensor"
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
            points: 11
            loadout: 15
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
            name: '"Quickdraw"'
            id: 243
            unique: true
            faction: "First Order"
            ship: "TIE/sf Fighter"
            skill: 6
            charge: 1
            recurring: 1
            points: 14
            loadout: 24
            slots: [
                "Talent"
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
            name: "Rey"
            id: 244
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            keyword: ["Light Side"]
            skill: 5
            points: 19
            loadout: 23
            force: 2
            slots: [
                "Force"
                "Force"
                "Missile"
                "Crew"
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
            name: "Han Solo (Resistance)"
            id: 245
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 6
            points: 18
            loadout: 19
            slots: [
                "Talent"
                "Missile"
                "Crew"
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
            name: "Chewbacca (Resistance)"
            id: 246
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 4
            points: 16
            loadout: 14
            slots: [
                "Talent"
                "Missile"
                "Crew"
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
            points: 8
            loadout: 8
            slots: [
                "Talent"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Mining Guild Surveyor"
            id: 248
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 2
            points: 6
            loadout: 6
            slots: [
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Ahhav"
            id: 249
            unique: true
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 3
            points: 8
            loadout: 11
            slots: [
                "Talent"
                "Modification"
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
            points: 15
            loadout: 18
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
            name: "Major Stridan"
            id: 251
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 4
            points: 17
            loadout: 25
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
            name: "Kare Kun"
            id: 252
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 12
            loadout: 13
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
            name: "Joph Seastriker"
            id: 253
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 3
            points: 11
            loadout: 10
            slots: [
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
            ship: "T-70 X-wing"
            skill: 2
            points: 10
            loadout: 4
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
            ship: "T-70 X-wing"
            skill: 1
            points: 10
            loadout: 7
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
            ship: "T-70 X-wing"
            skill: 4
            points: 12
            loadout: 14
            slots: [
                "Talent"
                "Torpedo"
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
            ship: "T-70 X-wing"
            skill: 3
            points: 11
            loadout: 11
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
            ship: "T-70 X-wing"
            skill: 1
            points: 10
            loadout: 4
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
            ship: "TIE/sf Fighter"
            skill: 2
            points: 10
            loadout: 16
            slots: [
                "Sensor"
                "Tech"
                "Missile"
                "Gunner"
                "Modification"
            ]
        }
        {
            name: "Cobalt Squadron Bomber"
            id: 260
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 1
            points: 15
            loadout: 20
            slots: [
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
            ship: "TIE/fo Fighter"
            skill: 2
            points: 7
            loadout: 6
            slots: [
                "Sensor"
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
            points: 10
            loadout: 14
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Modification"
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
            points: 7
            loadout: 5
            slots: [
                "Sensor"
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
            points: 8
            loadout: 10
            slots: [
                "Talent"
                "Sensor"
                "Tech"
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
            points: 7
            loadout: 5
            slots: [ 
                "Sensor"
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
            points: 10
            loadout: 15
            charge: 2
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Tech"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Omega Squadron Ace"
            id: 267
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 3
            points: 8
            loadout: 9
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Zeta Squadron Pilot"
            id: 268
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 2
            points: 7
            loadout: 6
            slots: [
                "Sensor"
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
            points: 6
            loadout: 0
            slots: [
            ]
        }
        {
            name: "Greer Sonnel"
            id: 270
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 4
            points: 9
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
            name: "Zari Bangel"
            id: 271
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 3
            points: 10
            loadout: 15
            slots: [
                "Talent"
                "Talent"
                "Missile"
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
            points: 17
            loadout: 20
            slots: [
                "Force"
                "Force"
                "Sensor"
                "Tech"
                "Torpedo"
                "Crew"
                "Crew"
                "Device"
                "Modification"
                "Title"
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
            points: 13
            loadout: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
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
            points: 10
            loadout: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
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
            points: 10
            loadout: 10
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
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
            points: 10
            loadout: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
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
            points: 9
            loadout: 6
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
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
            points: 12
            loadout: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Trade Federation Drone"
            id: 279
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 5
            loadout: 3
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: '"Sinker"'
            id: 280
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 3
            points: 11
            loadout: 6
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Gunner"
                "Crew"
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
            points: 15
            loadout: 15
            charge: 1
            recurring: 1
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
            points: 16
            loadout: 19
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
            points: 14
            loadout: 17
            slots: [
                "Tech"
                "Torpedo"
                "Missile"
                "Modification"
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
            points: 13
            loadout: 10
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Omega Squadron Expert"
            id: 285
            faction: "First Order"
            ship: "TIE/sf Fighter"
            skill: 3
            points: 11
            loadout: 19
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
            name: "Sienar-Jaemus Engineer"
            id: 286
            faction: "First Order"
            ship: "TIE/vn Silencer"
            skill: 1
            points: 11
            loadout: 7
            slots: [
                "Tech"
                "Torpedo"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "First Order Test Pilot"
            id: 287
            faction: "First Order"
            ship: "TIE/vn Silencer"
            skill: 4
            points: 12
            loadout: 7
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Starkiller Base Pilot"
            id: 288
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 2
            points: 15
            loadout: 18
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
            recurring: 1
            points: 16
            loadout: 17
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
            ship: "TIE/fo Fighter"
            skill: 0
            points: 8
            loadout: 8
            slots: [
                "Sensor"
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
            points: 15
            loadout: 22
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
            points: 15
            loadout: 20
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
            points: 16
            loadout: 24
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
            points: 17
            loadout: 28
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
            points: 15
            loadout: 16
            slots: [
                "Crew"
                "Crew"
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
            points: 12
            loadout: 12
            charge: 1
            recurring: 1
            slots: [
                "Astromech"
                "Tech"
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
            points: 12
            loadout: 11
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
            name: "Nien Nunb"
            id: 298
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 5
            points: 14
            loadout: 18
            slots: [
                "Talent"
                "Astromech"
                "Tech"
                "Tech"
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
            points: 13
            loadout: 12
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
            name: "Green Squadron Expert"
            id: 300
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 3
            points: 9
            loadout: 10
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Blue Squadron Recruit"
            id: 301
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 1
            points: 8
            loadout: 4
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Foreman Proach"
            id: 302
            unique: true
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 4
            points: 8
            loadout: 11
            slots: [
                "Talent"
                "Illicit"
                "Modification"
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
            charge: 1
            recurring: 1
            points: 6
            loadout: 5
            slots: [
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Mining Guild Sentry"
            id: 304
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 1
            points: 5
            loadout: 1
            slots: [
                "Modification"
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
            points: 14
            loadout: 22
            slots: [
                "Talent"
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
            points: 10
            loadout: 10
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
            points: 9
            loadout: 6
            keyword: ["Droid"]
            slots: [
                "Tactical Relay"
                "Modification"
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
            points: 10
            loadout: 7
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
            points: 6
            loadout: 5
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
            points: 6
            loadout: 7
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
            points: 6
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
            points: 12
            loadout: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
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
            points: 10
            loadout: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
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
            points: 10
            loadout: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
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
            points: 7
            loadout: 7
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
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
            points: 9
            loadout: 16
            keyword: ["Clone"]
            slots: [
                "Talent"
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
            ship: "V-19 Torrent Starfighter"
            skill: 3
            points: 8
            loadout: 12
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
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
            points: 7
            loadout: 7
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
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
            points: 8
            loadout: 8
            keyword: ["Clone"]
            slots: [
                "Missile"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Blue Squadron Protector"
            id: 320
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 3
            points: 9
            loadout: 12
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Missile"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Gold Squadron Trooper"
            id: 321
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 2
            points: 6
            loadout: 2
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
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
            points: 9
            loadout: 9
            keyword: ["Light Side"]
            slots: [
                "Force"
                "Talent"
                "Torpedo"
                "Sensor"
                "Tech"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Bravo Flight Officer"
            id: 323
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 2
            points: 7
            loadout: 3
            slots: [
                "Talent"
                "Torpedo"
                "Sensor"
                "Tech"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Techno Union Bomber"
            id: 324
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 1
            points: 7
            loadout: 4
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
            points: 9
            loadout: 9
            slots: [
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "DBS-404"
            id: 326
            unique: true
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 4
            points: 9
            loadout: 12
            keyword: ["Droid"]
            slots: [
                "Torpedo"
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
            points: 9
            loadout: 14
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
            points: 9
            loadout: 10
            keyword: ["Droid"]
            slots: [
                "Sensor"
                "Missile"
                "Device"
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
            points: 8
            loadout: 10
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
            name: "Naboo Handmaiden"
            id: 330
            max_per_squad: 2
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 1
            points: 8
            loadout: 4
            applies_condition: '''Decoyed'''.canonicalize()
            slots: [
                "Talent"
                "Torpedo"
                "Sensor"
                "Tech"
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
            points: 10
            loadout: 16
            slots: [
                "Talent"
                "Torpedo"
                "Sensor"
                "Tech"
                "Astromech"
                "Modification"
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
            points: 10
            loadout: 13
            slots: [
                "Talent"
                "Torpedo"
                "Sensor"
                "Tech"
                "Astromech"
                "Modification"
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
            points: 11
            loadout: 16
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Sensor"
                "Tech"
                "Astromech"
                "Modification"
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
            points: 14
            loadout: 8
            keyword: ["Dark Side","Sith"]
            slots: [
                "Force"
                "Force"
                "Sensor"
                "Tech"
                "Crew"
                "Crew"
                "Device"
                "Modification"
                "Title"
            ]
        }
        {
            name: "0-66"
            id: 335
            unique: true
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 3
            points: 12
            loadout: 7
            keyword: ["Droid"]
            slots: [
                "Sensor"
                "Tech"
                "Torpedo"
                "Crew"
                "Crew"
                "Tactical Relay"
                "Device"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Dark Courier"
            id: 336
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 2
            points: 12
            loadout: 6
            slots: [
                "Sensor"
                "Tech"
                "Crew"
                "Crew"
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
            points: 6
            loadout: 6
            unique: true
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: '"Odd Ball" (ARC-170)'
            id: 338
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 5
            points: 11
            loadout: 8
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Gunner"
                "Crew"
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
            points: 10
            loadout: 4
            keyword: ["Clone"]
            slots: [
                "Torpedo"
                "Gunner"
                "Crew"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Squad Seven Veteran"
            id: 340
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 3
            points: 12
            loadout: 16
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Gunner"
                "Crew"
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
            points: 10
            loadout: 3
            keyword: ["Clone"]
            slots: [
                "Torpedo"
                "Gunner"
                "Crew"
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
            points: 12
            loadout: 12
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Gunner"
                "Crew"
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
            points: 6
            loadout: 6
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
            points: 10
            loadout: 10
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
            points: 8
            loadout: 14
            slots: [
                "Talent"
                "Tech"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Logistics Division Pilot"
            id: 346
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 1
            points: 10
            loadout: 19
            slots: [
                "Tech"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Astromech"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Pammich Nerro Goode"
            id: 347
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 3
            points: 11
            loadout: 22
            slots: [
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
            name: "Vi Moradi"
            id: 348
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 1
            points: 6
            loadout: 5
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
            points: 7
            loadout: 9
            keyword: ["Droid"]
            slots: [
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
            points: 10
            loadout: 16
            slots: [
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
            points: 11
            loadout: 13
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
            points: 9
            loadout: 12
            slots: [
                "Tech"
                "Cannon"
                "Torpedo"
                "Crew"
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
            points: 9
            loadout: 5
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Petranaki Arena Ace"
            id: 354
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 4
            points: 10
            loadout: 8
            slots: [
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Gorgol"
            unique: true
            id: 355
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 2
            points: 9
            loadout: 11
            slots: [
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Chertek"
            unique: true
            id: 356
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 4
            points: 10
            loadout: 14
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Sun Fac"
            unique: true
            id: 357
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 6
            points: 14
            loadout: 17
            slots: [
                "Talent"
                "Talent"
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Berwer Kret"
            unique: true
            id: 358
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 5
            points: 9
            loadout: 9
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Anakin Skywalker (Y-Wing)"
            unique: true
            id: 359
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 6
            force: 3
            points: 12
            loadout: 14
            keyword: ["Jedi", "Light Side"]
            slots: [
                "Force"
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
            points: 9
            loadout: 13
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
            name: "Red Squadron Bomber"
            id: 361
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 2
            points: 8
            loadout: 9
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
            name: "R2-D2"
            id: 362
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 2
            points: 10
            loadout: 20
            keyword: ["Droid"]
            slots: [
                "Turret"
                "Torpedo"
                "Gunner"
                "Crew"
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
            points: 9
            loadout: 13
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
            name: '"Broadside"'
            id: 364
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 3
            points: 9
            loadout: 10
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
            name: '"Matchstick"'
            id: 365
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 4
            points: 10
            loadout: 13
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
            id: 366
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 5
            points: 11
            loadout: 19
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
            name: "Republic Judiciary"
            id: 367
            faction: "Galactic Republic"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 35
            loadout: 40
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
            points: 36
            loadout: 40
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
            points: 39
            loadout: 50
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
            points: 38
            loadout: 50
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
            points: 23
            loadout: 25
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
            points: 23
            loadout: 25
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
            points: 26
            loadout: 40
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
            points: 25
            loadout: 40
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
            points: 24
            loadout: 30
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
            points: 24
            loadout: 30
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
            points: 9
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
            name: "Kazuda Xiono"
            id: 378
            faction: "Resistance"
            unique: true
            ship: "Fireball"
            skill: 4
            points: 11
            loadout: 18
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
            points: 7
            loadout: 10
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Crew"
                "Illicit"
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
            points: 6
            loadout: 3
            slots: [
                "Missile"
                "Astromech"
                "Illicit"
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
            points: 13
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
            points: 12
            loadout: 12
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
            name: '"Ember"'
            id: 383
            faction: "First Order"
            unique: true
            skill: 4
            ship: "TIE/ba Interceptor"
            points: 10
            loadout: 10
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "First Order Provocateur"
            id: 384
            faction: "First Order"
            skill: 3
            ship: "TIE/ba Interceptor"
            points: 9
            loadout: 5
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
            points: 10
            loadout: 15
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
            name: '"Rush"'
            id: 386
            faction: "First Order"
            unique: true
            skill: 2
            ship: "TIE/vn Silencer"
            points: 13
            loadout: 11
            slots: [
                "Tech"
                "Torpedo"
                "Missile"
                "Modification"
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
            points: 10
            loadout: 8
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
            name: "Ronith Blario"
            id: 388
            faction: "Resistance"
            unique: true
            skill: 2
            ship: "RZ-2 A-wing"
            points: 8
            loadout: 5
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
            points: 16
            loadout: 24
            charge: 1
            recurring: 1
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
            points: 11
            loadout: 11
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
            points: 11
            loadout: 10
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
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
            points: 17
            loadout: 14
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Torpedo"
                "Sensor"
                "Turret"
                "Crew"
                "Crew"
                "Gunner"
                "Modification"
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
            points: 18
            loadout: 16
            force: 1
            slots: [
                "Force"
                "Missile"
                "Crew"
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
            name: "Fifth Brother"
            id: 394
            faction: "Galactic Empire"
            unique: true
            skill: 4
            keyword: ["Dark Side"]
            ship: "TIE Advanced v1"
            points: 11
            loadout: 12
            force: 2
            slots: [
                "Force"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Vagabond"'
            id: 395
            faction: "Galactic Empire"
            unique: true
            skill: 2
            ship: "TIE/sk Striker"
            points: 9
            loadout: 16
            slots: [
                "Gunner"
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
            points: 17
            loadout: 16
            charge: 3
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
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
            points: 12
            loadout: 20
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
            name: "Bossk (Z-95 Headhunter)"
            id: 398
            faction: "Scum and Villainy"
            unique: true
            skill: 4
            ship: "Z-95-AF4 Headhunter"
            points: 8
            loadout: 11
            keyword: ["Bounty Hunter"]
            chassis: "Pursuit Craft"
            slots: [
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
            points: 7
            loadout: 7
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
            points: 11
            loadout: 13
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
            points: 9
            loadout: 10
            slots: [
                "Tech"
                "Tech"
                "Crew"
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
            points: 9
            loadout: 12
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Illicit"
                "Illicit"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Gideon Hask (Xi Shuttle)"
            id: 403
            faction: "First Order"
            unique: true
            skill: 4
            ship: "Xi-class Light Shuttle"
            points: 9
            loadout: 8
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Commander Malarus (Xi Shuttle)"
            id: 404
            faction: "First Order"
            unique: true
            skill: 5
            ship: "Xi-class Light Shuttle"
            points: 10
            loadout: 10
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Baktoid Drone"
            id: 405
            faction: "Separatist Alliance"
            skill: 1
            ship: "HMP Droid Gunship"
            points: 9
            loadout: 7
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
            name: "TransGalMeg Control Link"
            id: 406
            faction: "Galactic Republic"
            skill: "*"
            ship: "Syliure-class Hyperspace Ring"
            points: 1
            loadout: 5
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
            points: 10
            loadout: 11
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
            points: 10
            loadout: 13
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Cannon"
                "Device"
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
            points: 9
            loadout: 8
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Missile"
                "Tactical Relay"
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
            points: 10
            loadout: 13
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Missile"
                "Torpedo"
                "Tactical Relay"
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
            points: 10
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
            name: "212th Battalion Pilot"
            id: 412
            faction: "Galactic Republic"
            skill: 2
            charge: 2
            recurring: 1
            ship: "LAAT/i Gunship"
            points: 11
            loadout: 9
            keyword: ["Clone"]
            slots: [
                "Torpedo"
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
            points: 10
            loadout: 5
            keyword: ["Clone"]
            slots: [
                "Torpedo"
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
            points: 12
            loadout: 13
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
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
            name: '"Hawk"'
            id: 415
            faction: "Galactic Republic"
            skill: 4
            charge: 2
            recurring: 1
            unique: true
            ship: "LAAT/i Gunship"
            points: 12
            loadout: 10
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
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
            points: 9
            loadout: 8
            slots: [
                "Cannon"
                "Cannon"
                "Gunner"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Onyx Squadron Sentry"
            id: 417
            faction: "Galactic Empire"
            skill: 3
            ship: "TIE/rb Heavy"
            points: 10
            loadout: 11
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
            name: "Lyttan Dree"
            id: 418
            faction: "Galactic Empire"
            skill: 3
            unique: true
            ship: "TIE/rb Heavy"
            points: 10
            loadout: 13
            slots: [
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
            points: 10
            loadout: 15
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
            points: 9
            loadout: 6
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Cannon"
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
            points: 9
            loadout: 8
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Cannon"
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
            points: 10
            loadout: 14
            slots: [
                "Talent"
                "Sensor"
                "Missile"
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
            points: 10
            loadout: 9
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Cannon"
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
            points: 8
            loadout: 5
            slots: [
                "Sensor"
                "Missile"
                "Cannon"
                "Modification"
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
            points: 9
            loadout: 8
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Cannon"
                "Modification"
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
            points: 15
            loadout: 8
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Boba Fett (Separatist)"
            id: 427
            faction: "Separatist Alliance"
            unique: true
            skill: 3
            ship: "Firespray-class Patrol Craft"
            points: 16
            loadout: 9
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
            points: 18
            loadout: 12
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
            points: 19
            loadout: 20
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
            name: "Loyalist Volunteer"
            id: 430
            faction: "Galactic Republic"
            skill: 2
            ship: "Nimbus-class V-wing"
            points: 7
            loadout: 3
            slots: [
                "Astromech"
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
            points: 9
            loadout: 10
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Astromech"
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
            points: 7
            loadout: 6
            slots: [
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
            points: 10
            loadout: 17
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
            points: 8
            loadout: 7
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
            id: 435
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Nimbus-class V-wing"
            points: 9
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
            name: "Jedi General"
            id: 436
            faction: "Galactic Republic"
            skill: 4
            ship: "Eta-2 Actis"
            points: 10
            loadout: 9
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
            name: "Yoda"
            id: 437
            faction: "Galactic Republic"
            skill: 3
            unique: true
            ship: "Eta-2 Actis"
            points: 10
            loadout: 11
            force: 3
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
            name: "Shaak Ti"
            id: 438
            faction: "Galactic Republic"
            skill: 4
            unique: true
            ship: "Eta-2 Actis"
            points: 11
            loadout: 11
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
            points: 11
            loadout: 14
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
            id: 440
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Eta-2 Actis"
            force: 3
            points: 11
            loadout: 10
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
            id: 441
            faction: "Galactic Republic"
            skill: 6
            unique: true
            force: 3
            ship: "Eta-2 Actis"
            points: 12
            loadout: 13
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
            xwsaddon: 'swz68'
            id: 442
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 6
            points: 15
            loadout: 13
            charge: 2
            recurring: 1
            slots: [
                "Talent"
                "Talent"
                "Astromech"
                "Sensor"
                "Tech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Temmin Wexley (HoH)"
            xwsaddon: 'swz68'
            id: 443
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 11
            loadout: 5
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
            name: "Merl Cobben"
            id: 444
            faction: "Resistance"
            unique: true
            skill: 1
            ship: "RZ-2 A-wing"
            points: 8
            loadout: 5
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
            points: 9
            loadout: 8
            slots: [
                "Talent"
                "Missile"
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
            points: 8
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
            points: 9
            loadout: 8
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
            points: 11
            loadout: 10
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
            points: 10
            loadout: 2
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
            id: 450
            unique: true
            faction: "Rebel Alliance"
            keyword: ["Spectre"]
            ship: "A/SF-01 B-wing"
            skill: 6
            points: 14
            loadout: 16
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
                "Title"
            ]
        }
        {
            name: "Hera Syndulla (A-Wing)"
            id: 451
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            keyword: ["Spectre"]
            skill: 6
            points: 11
            loadout: 10
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Wedge Antilles (A-Wing)"
            id: 452
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 4
            points: 9
            loadout: 6
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Sabine Wren (A-Wing)"
            id: 453
            unique: true
            faction: "Rebel Alliance"
            keyword: ["Mandalorian"]
            ship: "RZ-1 A-wing"
            skill: 3
            points: 8
            loadout: 4
            slots: [
                "Talent"
                "Missile"
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
            points: 16
            loadout: 8
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Tech"
                "Cannon"
                "Missile"
                "Modification"
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
            points: 11
            loadout: 9
            slots: [
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Gideon Hask (TIE Interceptor)"
            id: 456
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 11
            loadout: 10
            slots: [
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Kanan Jarrus (HWK-290)"
            id: 457
            unique: true
            faction: "Scum and Villainy"
            keyword: ["Light Side", "Jedi"]
            ship: "HWK-290 Light Freighter"
            skill: 3
            force: 1
            points: 10
            loadout: 7
            slots: [
                "Force"
                "Crew"
                "Device"
                "Illicit"
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
            points: 11
            loadout: 21
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Arliz Hadrassian"
            id: 459
            unique: true
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 10
            loadout: 14
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Padric"
            id: 460
            unique: true
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 3
            points: 8
            loadout: 8
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
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
            points: 9
            loadout: 12
            slots: [
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Shara Bey (A-Wing)"
            id: 462
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 4
            points: 9
            loadout: 12
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Ahsoka Tano (A-Wing)"
            id: 463
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            keyword: ["Light Side"]
            skill: 5
            force: 3
            points: 12
            loadout: 12
            slots: [
                "Force"
                "Force"
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
            points: 10
            loadout: 10
            slots: [
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
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
            points: 10
            loadout: 4
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
            points: 9
            loadout: 6
            slots: [
                "Talent"
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
            points: 9
            loadout: 9
            slots: [
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Vult Skerris (TIE Interceptor)"
            id: 468
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 5
            charge: 1
            recurring: -1
            points: 10
            loadout: 8
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Darth Vader (TIE Defender)"
            id: 469
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            keyword: ["Dark Side", "Sith"]
            skill: 6
            force: 3
            points: 22
            loadout: 18
            slots: [
                "Force"
                "Force"
                "Tech"
                "Cannon"
                "Missile"
                "Modification"
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
            points: 15
            loadout: 7
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Cannon"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Jinata Security Officer"
            id: 471
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 2
            points: 8
            loadout: 8
            slots: [
                "Turret"
                "Torpedo"
                "Astromech"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Amaxine Warrior"
            id: 472
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 3
            points: 10
            loadout: 16
            slots: [
                "Turret"
                "Torpedo"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
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
            points: 8
            loadout: 7
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
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
            points: 8
            loadout: 6
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
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
            points: 25
            loadout: 40
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
            points: 26
            loadout: 45
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
            points: 11
            loadout: 20
            charge: 1
            recurring: 1
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Teza Nasz"
            id: 478
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 4
            points: 9
            loadout: 12
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Wilsa Teshlo"
            id: 479
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 4
            points: 8
            loadout: 8
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Shasa Zaro"
            id: 480
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 3
            points: 9
            loadout: 14
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Lega Fossang"
            id: 481
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 3
            points: 8
            loadout: 9
            slots: [
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Aftab Ackbar"
            id: 482
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 2
            points: 8
            loadout: 9
            slots: [
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Corus Kapellim"
            id: 483
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 1
            points: 9
            loadout: 15
            slots: [
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "C'ai Threnalli (Y-Wing)"
            id: 484
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 2
            points: 7
            loadout: 4
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "New Republic Patrol"
            id: 485
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 3
            points: 7
            loadout: 4
            slots: [
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Kijimi Spice Runner"
            id: 486
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 2
            points: 9
            loadout: 14
            slots: [
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Kylo Ren (TIE Whisper)"
            id: 487
            unique: true
            faction: "First Order"
            ship: "TIE/wi Whisper Modified Interceptor"
            keyword: ["Dark Side", "Light Side"]
            skill: 5
            force: 3
            points: 14
            loadout: 12
            slots: [
                "Force"
                "Force"
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
            points: 12
            loadout: 14
            slots: [
                "Talent"
                "Cannon"
                "Gunner"
                "Tech"
                "Tech"
                "Modification"
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
            points: 11
            loadout: 11
            slots: [
                "Talent"
                "Missile"
                "Gunner"
                "Tech"
                "Tech"
                "Modification"
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
            points: 11
            loadout: 13
            slots: [
                "Talent"
                "Missile"
                "Gunner"
                "Tech"
                "Tech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "709th Legion Ace"
            id: 491
            faction: "First Order"
            ship: "TIE/wi Whisper Modified Interceptor"
            skill: 4
            points: 10
            loadout: 8
            slots: [
                "Talent"
                "Missile"
                "Gunner"
                "Tech"
                "Tech"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Red Fury Zealot"
            id: 492
            faction: "First Order"
            ship: "TIE/wi Whisper Modified Interceptor"
            skill: 2
            points: 8
            loadout: 5
            slots: [
                "Missile"
                "Gunner"
                "Tech"
                "Tech"
                "Modification"
            ]
        }
        {
            name: '"Breach"'
            id: 493
            unique: true
            faction: "First Order"
            ship: "TIE/se Bomber"
            skill: 5
            points: 11
            loadout: 19
            slots: [
                "Talent"
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
            name: '"Scorch" (TIE/Se Bomber)'
            id: 494
            unique: true
            faction: "First Order"
            ship: "TIE/se Bomber"
            skill: 4
            points: 10
            loadout: 12
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
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
            points: 9
            loadout: 9
            slots: [
                "Talent"
                "Tech"
                "Missile"
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
            points: 10
            loadout: 15
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
            name: "First Order Cadet"
            id: 497
            faction: "First Order"
            ship: "TIE/se Bomber"
            skill: 3
            points: 11
            loadout: 19
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
            points: 9
            loadout: 9
            slots: [
                "Tech"
                "Missile"
                "Missile"
                "Gunner"
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
            points: 12
            loadout: 13
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
            points: 11
            loadout: 13
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Fenn Rau (Rebel Fang)"
            id: 501
            faction: "Rebel Alliance"
            xwsaddon: "fangfighter"
            unique: true
            ship: "Fang Fighter"
            skill: 6
            points: 13
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
            name: "Clan Wren Volunteer"
            id: 502
            faction: "Rebel Alliance"
            ship: "Fang Fighter"
            skill: 3
            points: 10
            loadout: 8
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
            points: 9
            loadout: 12
            slots: [
                "Talent"
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
            points: 8
            loadout: 8
            max_per_squad: 2
            slots: [
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
            points: 12
            loadout: 15
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
            points: 16
            loadout: 16
            charge: 2
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
                "Configuration"
            ]
        }
        {
            name: "Death Watch Warrior"
            id: 508
            faction: "Separatist Alliance"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 15
            loadout: 18
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Bo-Katan Kryze"
            id: 509
            faction: "Separatist Alliance"
            xwsaddon: "separatistalliance"
            ship: "Gauntlet Fighter"
            skill: 4
            points: 16
            loadout: 20
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
                "Configuration"
                "Title"
            ]
        }
        {
            name: "Bo-Katan Kryze (Republic)"
            xws: "bokatankryze"
            id: 510
            faction: "Galactic Republic"
            ship: "Gauntlet Fighter"
            skill: 4
            points: 16
            loadout: 22
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
            name: "Nite Owl Liberator"
            id: 511
            faction: "Galactic Republic"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 15
            loadout: 18
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
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
            points: 18
            loadout: 18
            unique: true
            force: 3
            keyword: ["Dark Side", "Sith"]
            slots: [
                "Force"
                "Force"
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
            name: "Shadow Collective Operator"
            id: 513
            faction: "Scum and Villainy"
            ship: "Gauntlet Fighter"
            skill: 1
            points: 15
            loadout: 18
            keyword: ["Mandalorian"]
            slots: [
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Rook Kast"
            id: 514
            faction: "Scum and Villainy"
            ship: "Gauntlet Fighter"
            skill: 3
            points: 17
            loadout: 17
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
                "Configuration"
            ]
        }
        {
            name: "Captain Hark"
            id: 515
            faction: "Galactic Empire"
            ship: "Gauntlet Fighter"
            skill: 3
            points: 16
            loadout: 20
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
                "Configuration"
            ]
        }
        {
            name: "Imperial Super Commando"
            id: 516
            faction: "Galactic Empire"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 15
            loadout: 18
            keyword: ["Mandalorian"]
            slots: [
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
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
            points: 17
            loadout: 20
            charge: 2
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
                "Configuration"
            ]
        }
        {
            name: "Mandalorian Resistance Pilot"
            id: 518
            faction: "Rebel Alliance"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 15
            loadout: 18
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
                "Configuration"
                "Title"
            ]
        }
        {
            name: '"Chopper" (Gauntlet Fighter)'
            id: 519
            faction: "Rebel Alliance"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 15
            loadout: 16
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
            id: 520
            faction: "Rebel Alliance"
            ship: "Gauntlet Fighter"
            skill: 3
            force: 1
            points: 16
            loadout: 15
            keyword: ["Light Side","Spectre"]
            unique: true
            slots: [
                "Force"
                "Force"
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
            name: "Q9-0"
            id: 521
            faction: "Scum and Villainy"
            ship: "ST-70 Assault Ship"
            skill: 5
            points: 15
            loadout: 10
            unique: true
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Crew"
                "Crew"
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
            points: 16
            loadout: 18
            unique: true
            keyword: ["Bounty Hunter", "Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Crew"
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
            points: 14
            loadout: 13
            max_per_squad: 2
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Crew"
                "Crew"
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
            points: 13
            loadout: 11
            slots: [
                "Crew"
                "Crew"
                "Illicit"
                "Illicit"
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
            points: 14
            loadout: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Saesee Tiin (Delta-7b)"
            id: 526
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 2
            points: 13
            loadout: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Mace Windu (Delta-7b)"
            id: 527
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 3
            points: 13
            loadout: 9
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
            id: 528
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 6
            force: 3
            points: 17
            loadout: 14
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Luminara Unduli (Delta-7b)"
            id: 529
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 2
            points: 12
            loadout: 6
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Barriss Offee (Delta-7b)"
            id: 530
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 1
            points: 11
            loadout: 6
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Ahsoka Tano (Delta-7b)"
            id: 531
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 3
            force: 2
            points: 12
            loadout: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Jedi Knight (Delta-7b)"
            id: 532
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 3
            force: 1
            points: 11
            loadout: 4
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
        }
        {
            name: "Obi-Wan Kenobi (Delta-7b)"
            id: 533
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 5
            force: 3
            points: 14
            loadout: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
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
            points: 12
            loadout: 20
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Missile"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Viktor Hel (Rogue)"
            id: 535
            unique: true
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 10
            loadout: 11
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Nom Lumb (Rogue)"
            id: 536
            unique: true
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 1
            points: 10
            loadout: 12
            keyword: ["Bounty Hunter"]
            slots: [
                "Cannon"
                "Cannon"
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
            points: 9
            loadout: 7
            slots: [
                "Cannon"
                "Cannon"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Cad Bane (Separatist)"
            xwsaddon: "separatistalliance"
            id: 538
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 4
            charge: 1
            recurring: 1
            points: 11
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
            points: 10
            loadout: 12
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Talent"
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
            points: 10
            loadout: 11
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Talent"
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
            points: 9
            loadout: 7
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Talent"
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
            points: 10
            loadout: 10
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Modification"
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
            points: 9
            loadout: 9
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
            name: '"Knack"'
            id: 544
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 5
            points: 8
            loadout: 13
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
            points: 8
            loadout: 11
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }
        {
            name: '"Hawk" (Z-95)'
            id: 546
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 4
            points: 8
            loadout: 12
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }
        {
            name: '"Warthog" (Z-95)'
            id: 547
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 3
            points: 9
            loadout: 21
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
            points: 8
            loadout: 12
            keyword: ["Clone"]
            slots: [
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
            points: 8
            loadout: 13
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
            points: 8
            loadout: 11
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
            points: 7
            loadout: 6
            keyword: ["Clone"]
            slots: [
                "Sensor"
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
            points: 8
            loadout: 11
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }
        {
            name: "7th Sky Corps Pilot"
            id: 553
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 2
            points: 7
            loadout: 10
            keyword: ["Clone"]
            slots: [
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }
        {
            name: "Garven Dreis (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            id: 554
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 12
            chassis: "Hope"
            upgrades: [
                "Adv. Proton Torpedoes"
                "R5-K6 (BoY)"
            ]
        }
        {
            name: "Luke Skywalker (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            id: 555
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 15
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
            xwsaddon: "battleofyavin"
            unique: true
            id: 556
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 12
            chassis: "Hope"
            upgrades: [
                "Adv. Proton Torpedoes"
                "R5-D8 (BoY)"
                "Unstable Sublight Engines (BoY)"
            ]
        }
        {
            name: "Biggs Darklighter (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            id: 557
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 3
            points: 13
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
            xwsaddon: "battleofyavin"
            unique: true
            id: 558
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 13
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
            xwsaddon: "battleofyavin"
            unique: true
            id: 559
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            skill: 6
            charge: 4
            points: 18
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
            xwsaddon: "battleofyavin"
            unique: true
            id: 560
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 10
            chassis: "Hope"
            upgrades: [
                "Ion Cannon Turret"
                "Adv. Proton Torpedoes"
                "Targeting Astromech (BoY)"
            ]
        }
        {
            name: "Dex Tiree (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            id: 561
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 2
            points: 9
            chassis: "Hope"
            upgrades: [
                "Dorsal Turret"
                "Adv. Proton Torpedoes"
                "R4 Astromech"
            ]
        }
        {
            name: '"Pops" Krail (BoY)'
            xwsaddon: "battleofyavin"
            unique: true
            id: 562
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 10
            chassis: "Hope"
            upgrades: [
                "Ion Cannon Turret"
                "Adv. Proton Torpedoes"
                "R4 Astromech"
            ]
        }
        {
            name: "Hol Okand (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            id: 563
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 10
            chassis: "Hope"
            upgrades: [
                "Dorsal Turret"
                "Adv. Proton Torpedoes"
                "Precise Astromech (BoY)"
            ]
        }
        {
            name: "Darth Vader (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            id: 564
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 6
            points: 17
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
            xwsaddon: "battleofyavin"
            unique: true
            id: 565
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 5
            points: 10
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
            xwsaddon: "battleofyavin"
            unique: true
            id: 566
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 5
            points: 10
            ship_override:
                hull: 4
            upgrades: [
                "Predator"
                "Afterburners"
            ]
        }
        {
            name: '"Dark Curse" (BoY)'
            xwsaddon: "battleofyavin"
            unique: true
            id: 567
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 6
            points: 10
            ship_override:
                hull: 4
            upgrades: [
                "Ruthless"
                "Precision Ion Engines"
            ]
        }
        {
            name: '"Wampa" (BoY)'
            xwsaddon: "battleofyavin"
            unique: true
            id: 568
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 1
            charge: 1
            recurring: 1
            points: 7
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
            xwsaddon: "battleofyavin"
            unique: true
            id: 569
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 11
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
            xwsaddon: "battleofyavin"
            unique: true
            id: 570
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 10
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
            xwsaddon: "battleofyavin"
            unique: true
            id: 571
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 10
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
            xwsaddon: "battleofyavin"
            unique: true
            id: 572
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 11
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
            xwsaddon: "battleofyavin"
            unique: true
            id: 573
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 10
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
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 574
            faction: "Galactic Republic"
            ship: "Eta-2 Actis"
            skill: 6
            points: 12
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
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 575
            faction: "Galactic Republic"
            ship: "Eta-2 Actis"
            skill: 5
            points: 11
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
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 576
            faction: "Galactic Republic"
            ship: "Eta-2 Actis"
            skill: 4
            points: 10
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
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 577
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 5
            points: 12
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
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 578
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 4
            charge: 1
            points: 12
            chassis: "Born for This"
            upgrades: [
                "Wolfpack (SoC)"
                "Veteran Tail Gunner"
                "Q7 Astromech"
            ]
        }
        {
            name: '"Jag" (SoC)'
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 579
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 3
            points: 12
            chassis: "Born for This"
            upgrades: [
                "Veteran Tail Gunner"
                "R4-P Astromech"
                "Synchronized Console"
            ]
        }
        {
            name: '"Contrail" (SoC)'
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 580
            faction: "Galactic Republic"
            ship: "Nimbus-class V-wing"
            skill: 5
            points: 9
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
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 581
            faction: "Galactic Republic"
            ship: "Nimbus-class V-wing"
            skill: 4
            points: 9
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
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 582
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 5
            points: 9
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
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 583
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 3
            points: 9
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
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 584
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 5
            points: 15
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
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 585
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 3
            points: 9
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
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 586
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 4
            points: 9
            upgrades: [
                "Adv. Proton Torpedoes"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "Baktoid Prototype (SoC)"
            xwsaddon: "siegeofcoruscant"
            id: 587
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 1
            max_per_squad: 2
            points: 7
            upgrades: [
                "Homing Missiles"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "DIS-347 (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 588
            faction: "Separatist Alliance"
            ship: "Droid Tri-fighter"
            skill: 3
            points: 9
            upgrades: [
                "Marksmanship"
                "Afterburners"
                "Contingency Protocol (SoC)"
            ]
        }
        {
            name: "DIS-T81 (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 589
            faction: "Separatist Alliance"
            ship: "Droid Tri-fighter"
            skill: 4
            points: 11
            upgrades: [
                "Outmaneuver"
                "Afterburners"
                "Contingency Protocol (SoC)"
            ]
        }
        {
            name: "Phlac-Arphocc Prototype (SoC)"
            xwsaddon: "siegeofcoruscant"
            id: 590
            faction: "Separatist Alliance"
            ship: "Droid Tri-fighter"
            skill: 5
            points: 10
            max_per_squad: 2
            upgrades: [
                "Afterburners"
                "Contingency Protocol (SoC)"
                "Evasion Sequence 7 (SoC)"
            ]
        }
        {
            name: "DFS-081 (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 591
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            charge: 2
            points: 6
            upgrades: [
                "Discord Missiles"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "DFS-311 (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 592
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 6
            upgrades: [
                "Discord Missiles"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "Haor Chall Prototype (SoC)"
            xwsaddon: "siegeofcoruscant"
            id: 593
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            max_per_squad: 2
            points: 6
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
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 13
            loadout: 18
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
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
            points: 12
            loadout: 13
            slots: [
                "Talent"
                "Torpedo"
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
            points: 11
            loadout: 15
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Modification"
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
            points: 9
            loadout: 8
            force: 1
            forcerecurring: 0
            slots: [
                "Force"
                "Missile"
                "Modification"
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
            points: 9
            loadout: 11
            slots: [
                "Turret"
                "Torpedo"
                "Astromech"
                "Device"
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
            points: 12
            loadout: 13
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
            name: "Juno Eclipse"
            id: 600
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 5
            points: 11
            loadout: 13
            slots: [
                "Talent"
                "Talent"
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
            points: 12
            loadout: 12
            keyword: ["Dark Side"]
            slots: [
                "Force"
                "Sensor"
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
            points: 8
            loadout: 9
            slots: [
                "Talent"
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
            points: 7
            loadout: 8
            slots: [
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Poe Dameron (YT-1300)"
            id: 604
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 6
            charge: 2
            recurring: 1
            points: 20
            loadout: 24
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Crew"
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
            name: "Lando Calrissian (Resistance)"
            id: 605
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 5
            charge: 3
            recurring: 1
            points: 17
            loadout: 17
            slots: [
                "Talent"
                "Missile"
                "Crew"
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
            points: 13
            loadout: 17
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Tech"
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
            points: 11
            loadout: 10
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
            name: "Taka Jamoreesa"
            id: 608
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 2
            points: 8
            loadout: 6
            slots: [
                "Tech"
                "Torpedo"
                "Crew"
                "Crew"
                "Astromech"
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
            points: 16
            loadout: 12
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
            name: "Tor Phun"
            id: 610
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 3
            points: 11
            loadout: 8
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Torpedo"
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
            points: 11
            loadout: 13
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Illicit"
                "Illicit"
                "Modification"
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
            points: 16
            loadout: 22
            charge: 3
            slots: [
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Lapin"
            id: 613
            unique: true
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 3
            points: 8
            loadout: 9
            slots: [
                "Talent"
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
            points: 10
            loadout: 11
            chassis: "Modified for Organics"
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Cannon"
                "Illicit"
                "Modification"
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
            points: 17
            loadout: 10
            keyword: ["Dark Side","Bounty Hunter"]
            slots: [
                "Force"
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
            name: "Durge (Separatist)"
            xwsaddon: "separatistalliance"
            id: 616
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 5
            charge: 1
            points: 12
            loadout: 13
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
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
            points: 6
            loadout: 4
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
            points: 6
            loadout: 6
            chassis: "Modified for Organics"
            slots: [
                "Talent"
                "Modification"
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
            points: 12
            loadout: 6
            force: 2
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Adi Gallia (Delta-7B)"
            id: 620
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 5
            force: 2
            points: 14
            loadout: 9
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
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
            points: 12
            loadout: 12
            keyword: ["Clone"]
            slots: [
                "Torpedo"
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
            points: 10
            loadout: 11
            keyword: ["Jedi","Light Side"]
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
            name: '"Slammer"'
            id: 623
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 1
            charge: 2
            recurring: 1
            points: 7
            loadout: 7
            keyword: ["Clone"]
            slots: [
                "Missile"
                "Modification"
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
            points: 9
            loadout: 13
            slots: [
                "Talent"
                "Torpedo"
                "Sensor"
                "Tech"
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
            points: 9
            loadout: 10
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Tech"
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
            points: 10
            loadout: 14
            slots: [
                "Talent"
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
            name: "DT-798"
            id: 627
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 4
            points: 9
            loadout: 9
            slots: [
                "Talent"
                "Sensor"
                "Tech"
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
            points: 8
            loadout: 9
            slots: [
                "Talent"
                "Sensor"
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
            points: 12
            loadout: 18
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
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
            xwsaddon: "swz105"
            unique: true
            id: 630
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 6
            points: 17
            force: 3
            keyword: ["Dark Side", "Sith"]
            ship_override:
                shields: 3
            upgrades: [
                "Hate"
                "Ion Missiles"
                "Afterburners"
            ]
        }
        {
            name: "Maarek Stele (SSP)"
            xwsaddon: "swz105"
            unique: true
            id: 631
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 5
            points: 13
            upgrades: [
                "Elusive"
                "Outmaneuver"
                "Afterburners"            ]
        }
        {
            name: "Captain Jonus (SSP)"
            xwsaddon: "swz105"
            unique: true
            id: 632
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 4
            points: 10
            upgrades: [
                "Feedback Ping"
                "Plasma Torpedoes"
                "Proton Bombs"
            ]
        }
        {
            name: "Tomax Bren (SSP)"
            xwsaddon: "swz105"
            unique: true
            id: 633
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 5
            points: 11
            upgrades: [
                "Elusive"
                "Barrage Rockets"
                "Proximity Mines"
            ]
        }
        {
            name: "Iden Versio (SSP)"
            xwsaddon: "swz105"
            unique: true
            id: 634
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            points: 9
            charge: 1
            upgrades: [
                "Disciplined"
                "Elusive"
            ]
        }
        {
            name: '"Night Beast" (SSP)'
            xwsaddon: "swz105"
            unique: true
            id: 635
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 7
            upgrades: [
                "Disciplined"
                "Predator"
            ]
        }
        {
            name: "Valen Rudor (SSP)"
            xwsaddon: "swz105"
            unique: true
            id: 636
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 7
            upgrades: [
                "Disciplined"
                "Precision Ion Engines"
            ]
        }
        {
            name: '"Dutch" Vander (SSP)'
            xwsaddon: "swz106"
            unique: true
            id: 637
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 9
            upgrades: [
                "Ion Cannon Turret"
                "Proton Bombs"
            ]
        }
        {
            name: "Horton Salm (SSP)"
            xwsaddon: "swz106"
            unique: true
            id: 638
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 9
            upgrades: [
                "Ion Cannon Turret"
                "Proximity Mines"
            ]
        }
        {
            name: "Arvel Crynyd (SSP)"
            xwsaddon: "swz106"
            unique: true
            id: 639
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 3
            points: 8
            upgrades: [
                "Predator"
                "Afterburners"
            ]
        }
        {
            name: "Jake Farrell (SSP)"
            xwsaddon: "swz106"
            unique: true
            id: 640
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 4
            points: 10
            upgrades: [
                "Elusive"
                "Outmaneuver"
                "Ion Missiles"
            ]
        }
        {
            name: "Jek Porkins (SSP)"
            xwsaddon: "swz106"
            unique: true
            id: 641
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 13
            upgrades: [
                "Predator"
                "Proton Torpedoes"
                "R5-D8"
            ]
        }
        {
            name: "Luke Skywalker (SSP)"
            xwsaddon: "swz106"
            unique: true
            id: 642
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            force: 2
            points: 15
            upgrades: [
                "Instinctive Aim"
                "Proton Torpedoes"
                "R2-D2"
            ]
        }
        {
            name: "Shara Bey (SSP)"
            xwsaddon: "swz106"
            unique: true
            id: 643
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 4
            points: 8
            upgrades: [
                "Hopeful"
                "Concussion Missiles"
            ]
        }
        {
            name: '"Deathfire" (TBE)'
            xwsaddon: "swz98"
            unique: true
            id: 644
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 2
            points: 10
            charge: 2
            recurring: 1
            upgrades: [
                "Swift Approach (TBE)"
                "Conner Nets"
                "Proton Bombs"
            ]
        }
        {
            name: "Major Rhymer (TBE)"
            xwsaddon: "swz98"
            unique: true
            id: 645
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 4
            points: 11
            upgrades: [
                "Adv. Proton Torpedoes"
                "Automated Loaders (TBE)"
                "Afterburners"
            ]
        }
        {
            name: "Captain Jonus (TBE)"
            xwsaddon: "swz98"
            unique: true
            id: 646
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 4
            points: 10
            upgrades: [
                "Top Cover (TBE)"
                "Barrage Rockets"
                "Proton Bombs"
            ]
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Barrel Roll"
                    "R-> Lock"
                    "Reload"
                ]
        }
        {
            name: "Tomax Bren (TBE)"
            xwsaddon: "swz98"
            unique: true
            id: 647
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 5
            points: 12
            charge: 2
            recurring: 1
            upgrades: [
                "True Grit (TBE)"
                "Plasma Torpedoes"
                "Ion Bombs"
            ]
        }
        {
            name: "Dash Rendar (YLF)"
            xwsaddon: "swz103-rebelalliance"
            unique: true
            id: 648
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 5
            points: 18
            loadout: 24
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
            name: "Dash Rendar (YLF-SL)"
            xwsaddon: "swz103-sl-rebelalliance"
            unique: true
            id: 649
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 5
            points: 16
            upgrades: [
                "Mercenary (YLF)"
                "Seeker Missiles (YLF)"
                '"Leebo" (YLF)'
                "Outrider"
            ]
        }
        {
            name: "Dash Rendar (Scum)"
            xwsaddon: "swz103-sl-scumandvillainy"
            unique: true
            id: 650
            faction: "Scum and Villainy"
            ship: "YT-2400 Light Freighter"
            skill: 5
            points: 16
            upgrades: [
                "Mercenary (YLF)"
                "Seeker Missiles (YLF)"
                '"Leebo" (YLF)'
                "Outrider"
            ]
        }
        {
            name: '"Leebo" (YLF)'
            xwsaddon: "swz103-rebelalliance"
            unique: true
            id: 651
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 3
            points: 16
            loadout: 10
            keyword: ["Droid"]
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
            name: '"Leebo" (YLF-SL)'
            xwsaddon: "swz103-sl-rebelalliance"
            unique: true
            id: 652
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 3
            points: 15
            upgrades: [
                "Efficient Processing (YLF)"
                "Seeker Missiles (YLF)"
                "Outrider"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "R-> Rotate Arc"
                    "R-Barrel Roll"
                    "Rotate Arc"
                ]
        }
        {
            name: '"Leebo" (Scum)'
            xwsaddon: "swz103-sl-scumandvillainy"
            unique: true
            id: 653
            faction: "Scum and Villainy"
            ship: "YT-2400 Light Freighter"
            skill: 3
            points: 15
            upgrades: [
                "Efficient Processing (YLF)"
                "Seeker Missiles (YLF)"
                "Outrider"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "R-> Rotate Arc"
                    "R-Barrel Roll"
                    "Rotate Arc"
                ]
        }
        {
            name: "Arvel Crynyd (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 654
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 3
            points: 9
            chassis: "Vectored Cannons"
            upgrades: [
                "It's A Trap! (BoE)"
                "Heroic Sacrifice (BoE)"
                "Proton Rockets"
            ]
            ship_override:
                attackt: 2
                attack: 0
                shields: 3
                actions: [
                    "Focus"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                    "R-> Focus"
                    "Boost"
                    "Slam"
                ]
        }
        {
            name: "Gemmer Sojan (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 655
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 2
            points: 9
            chassis: "Vectored Cannons"
            upgrades: [
                "It's A Trap! (BoE)"
                "Precision-Tuned Cannons (BoE)"
                "Chaff Particles (BoE)"
                "Target-Assist Algorithm (BoE)"
            ]
            ship_override:
                attackt: 2
                attack: 0
        }
        {
            name: "Tycho Celchu (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 656
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 5
            points: 11
            chassis: "Vectored Cannons"
            ship_override:
                attackt: 2
                attack: 0
                shields: 3
                actions: [
                    "Focus"
                    "R-> Reload"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                    "R-> Evade"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Juke"
                "Proton Rockets"
                "Chaff Particles (BoE)"
            ]
        }
        {
            name: "Adon Fox (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 657
            faction: "Rebel Alliance"
            ship: "A/SF-01 B-wing"
            skill: 1
            points: 12
            charge: 2
            recurring: 1
            chassis: "Gyro-Cockpit"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "R-> Lock"
                    "R-Reload"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Parting Gift (BoE)"
                "Proton Rockets"
                "Proton Bombs"
            ]
        }
        {
            name: "Braylen Stramm (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 658
            faction: "Rebel Alliance"
            ship: "A/SF-01 B-wing"
            skill: 4
            points: 13
            charge: 2
            recurring: 1
            chassis: "Gyro-Cockpit"
            ship_override:
                shields: 5
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"            
                    "R-> Lock"
                    "R-Reload"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Homing Missiles"
                "Proton Bombs"
                "Delayed Fuses"
            ]
        }
        {
            name: "Gina Moonsong (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 659
            faction: "Rebel Alliance"
            ship: "A/SF-01 B-wing"
            skill: 5
            points: 15
            charge: 2
            recurring: 1
            chassis: "Gyro-Cockpit"
            ship_override:
                shields: 5
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"            
                    "R-> Lock"
                    "R-Reload"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Juke"
                "Proton Torpedoes"
                "Ion Bombs"
            ]
        }
        {
            name: "Kendy Idele (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 660
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 10
            chassis: "Locked S-Foils"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Boost"
                    "Lock"
                    "Barrel Roll"
                    "R-> Focus"
                    "Boost"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Ion Missiles"
                "Modified R4-P unit (BoE)"
                "Chaff Particles (BoE)"
            ]
        }
        {
            name: "Wedge Antilles (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 661
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 6
            points: 15
            chassis: "Locked S-Foils"
            ship_override:
                shields: 3
                actions: [
                    "Focus"
                    "R-> Boost"
                    "Lock"
                    "Barrel Roll"
                    "R-> Focus"
                    "Boost"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Predator"
                "Adv. Proton Torpedoes"
                "R2-A3 (BoE)"
            ]
        }
        {
            name: "Yendor (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 662
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 12
            chassis: "Locked S-Foils"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Boost"
                    "Lock"
                    "Barrel Roll"
                    "R-> Focus"
                    "Boost"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Plasma Torpedoes"
                "Stabilizing Astromech (BoE)"
            ]
        }
        {
            name: "Lando Calrissian (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 663
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            skill: 5
            charge: 2
            points: 18
            chassis: "High Stakes"
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Evade"
                    "R-Boost"
                    "Rotate Arc"
                    "R-Coordinate"
                    "R-> Focus"
                ]
            upgrades: [
                "Ace In The Hole (BoE)"
                "It's A Trap! (BoE)"
                "Nien Nunb"
                "Airen Cracken (BoE)"
                "Millennium Falcon (BoE)"
            ]
        }
        {
            name: "Captain Yorr (BoE)"
            xwsaddon: "battleoverendor"
            id: 664
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 4
            charge: 2
            points: 16
            chassis: "Chiss Engineering"
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                ]
            upgrades: [
                "No Escape (BoE)"
                "Predator"
                "Ion Cannon"
                "Computer-Assisted Handling (BoE)"
            ]
        }
        {
            name: "Colonel Jendon (BoE)"
            xwsaddon: "battleoverendor"
            id: 665
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 6
            points: 20
            chassis: "Chiss Engineering"
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                ]
            upgrades: [
                "No Escape (BoE)"
                "Push The Limit (BoE)"
                "Proton Cannons"
                "Computer-Assisted Handling (BoE)"
            ]
        }
        {
            name: "Maus Monare (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 666
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 3
            points: 11
            chassis: "Sensitive Controls"
            upgrades: [
                "No Escape (BoE)"
                "Outmaneuver"
                "Fuel Injection Override (BoE)"
            ]
            ship_override:
                shields: 1
        }
        {
            name: "Sapphire 2 (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 667
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 1
            points: 10
            chassis: "Sensitive Controls"
            upgrades: [
                "No Escape (BoE)"
                "Reckless (BoE)"
                "Targeting Matrix (BoE)"
                "Primed Thrusters"
            ]
        }
        {
            name: "Soontir Fel (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 668
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 6
            charge: 2
            points: 15
            chassis: "Sensitive Controls"
            upgrades: [
                "Apex Predator (BoE)"
                "No Escape (BoE)"
                "Blank Signature (BoE)"
                "Feedback Emitter (BoE)"
            ]
        }
        {
            name: "Lieutenant Hebsly (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 669
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 8
            chassis: "Formed Up"
            ship_override:
                hull: 4
                actions: [
                    "Focus"
                    "Evade"
                    "Barrel Roll"
                    "R-> Evade"
                    "R-Boost"
                ]
            upgrades: [
                "Collected (BoE)"
                "Elusive"
                "No Escape (BoE)"
            ]
        }
        {
            name: "Major Mianda (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 670
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 5
            points: 10
            chassis: "Formed Up"
            ship_override:
                shields: 1
                actions: [
                    "Focus"
                    "Evade"
                    "Barrel Roll"
                    "R-> Evade"
                    "R-Coordinate"
                ]
            upgrades: [
                "Ruthless"
                "Swarm Tactics"
                "No Escape (BoE)"
            ]
        }
        {
            name: "Scythe 6 (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 671
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 9
            chassis: "Formed Up"
            ship_override:
                hull: 4
                actions: [
                    "Focus"
                    "Evade"
                    "Barrel Roll"
                    "R-> Evade"
                ]
            upgrades: [
                "No Escape (BoE)"
                "Predator"
                "Ion Maneuvering Jet (BoE)"
                "Targeting Matrix (BoE)"
            ]
        }
        {
            name: "Scimitar 1 (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 672
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 3
            points: 12
            charge: 2
            upgrades: [
                "Marksmanship"
                "No Escape (BoE)"
                "Proton Torpedoes"
                "Ion Bombs"
            ]
        }
        {
            name: "Scimitar 3 (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 673
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 4
            points: 10
            charge: 2
            upgrades: [
                "No Escape (BoE)"
                "Parting Gift (BoE)"
                "Proton Torpedoes"
                "Proton Bombs"
            ]
        }
        {
            name: "Lieutenant Karsabi (SSL)"
            xwsaddon: "ssl"
            unique: true
            id: 674
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            chassis: "Prioritized Weapons Systems"
            skill: 3
            points: 13
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Slam"
                    "R-> Lock"
                    "Slam"
                    "R-> Reload"
                    "Reload"
                ]
            upgrades: [
                "Proton Torpedoes"
                "Saturation Rockets (SL)"
                "Electronic Baffle"
            ]
        }
        {
            name: "Major Vynder (SSL)"
            xwsaddon: "ssl"
            unique: true
            id: 675
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            chassis: "Prioritized Weapons Systems"
            skill: 4
            points: 13
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Slam"
                    "R-> Lock"
                    "Slam"
                    "R-> Reload"
                    "Reload"
                ]
            upgrades: [
                "Long-Range Scanners (SL)"
                "Ion Cannon"
                "Heavy Plasma Missiles (SL)"
            ]
        }
        {
            name: '"Echo" (SSL)'
            xwsaddon: "ssl"
            unique: true
            id: 676
            faction: "Galactic Empire"
            ship: "TIE/ph Phantom"
            skill: 4
            points: 14
            charge: 1
            recurring: 1
            upgrades: [
                "Silent Hunter (SL)"
                "Stealth Gambit (SL)"
                "Manual Ailerons (SL)"
            ]
        }
        {
            name: '"Whisper" (SSL)'
            xwsaddon: "ssl"
            unique: true
            id: 677
            faction: "Galactic Empire"
            ship: "TIE/ph Phantom"
            skill: 5
            points: 15
            charge: 2
            upgrades: [
                "Without A Trace (SL)"
                "Relay System (SL)"
                "Stygium Reserve (SL)"
            ]
        }
        {
            name: "Raymus Antilles"
            xwsaddon: "epicsl-rebelalliance"
            unique: true
            id: 678
            faction: "Rebel Alliance"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 32
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Focus"
                    "Lock"
                    "R-Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Leia Organa (Epic)"
                "R2-D2 (Epic)"
                "C-3PO (Epic)"
                "Turbolaser Battery"
                "Tantive IV"
            ]
        }
        {
            name: "Raymus Antilles (Republic)"
            xwsaddon: "epicsl-galacticrepublic"
            unique: true
            id: 679
            faction: "Galactic Republic"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 35
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Focus"
                    "Lock"
                    "R-Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Born for This (Epic)"
                "Bail Organa (Epic)"
                "Secret Provisions (Epic)"
                "Turbolaser Battery"
                "Tantive IV (Republic)"
            ]
        }
        {
            name: "Leia Organa (CR90)" 
            xwsaddon: "epicsl"
            unique: true
            id: 680
            faction: "Resistance"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 32
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Focus"
                    "Lock"
                    "R-Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Nien Nunb (Epic)"
                "Urcos Furdam (Epic)"
                "Tibanna Reserves"
                "Turbolaser Battery"
                "Tantive IV (Resistance)"
            ]
        }
        {
            name: "Iden Versio (Raider)"
            xwsaddon: "epicsl"
            unique: true
            id: 681
            faction: "Galactic Empire"
            ship: "Raider-class Corvette"
            skill: 8
            engagement: 0
            points: 32
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Focus"
                    "Lock"
                    "Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Ruthless"
                "Fanatical (Epic)"
                "Inferno Squad (Epic)"
                "Twin Missile Launcher (Epic)"
                "Corvus (Epic)"
            ]
        }
        {
            name: "Gideon Hask (Raider)"
            xwsaddon: "epicsl"
            unique: true
            id: 682
            faction: "First Order"
            ship: "Raider-class Corvette"
            skill: 8
            engagement: 0
            points: 33
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Focus"
                    "Lock"
                    "Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Agent Terex (Epic)"
                "Protectorate Gleb (Epic)"
                "Jinata Security Forces (Epic)"
                "Twin Missile Launcher (Epic)"
                "Precursor (Epic)"
            ]
        }
        {
            name: "Aut-0"
            xwsaddon: "epicsl"
            unique: true
            id: 683
            faction: "Separatist Alliance"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 20
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Coordinate"
                    "Lock"
                    "Coordinate"
                    "Jam"
                ]
            upgrades: [
                "TX-25 (Epic)"
                "Endless Hordes (Epic)"
                "Alpha Revue (Epic)"
            ]
        }
        {
            name: "Cerra Fellian"
            xwsaddon: "epicsl"
            unique: true
            id: 684
            faction: "First Order"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 14
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Coordinate"
                    "Lock"
                    "Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Petty Officer Thanisson (Epic)"
                "Ion Cannon Battery"
                "Malefactor (Epic)"
            ]
        }
        {
            name: "Rik Virgilio"
            xwsaddon: "epicsl"
            unique: true
            id: 685
            faction: "Galactic Empire"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 20
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Coordinate"
                    "Lock"
                    "Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Thrawn (Epic)"
                "Heavy Laser Cannon Turret (Epic)"
                "Blood Crow (Epic)"
            ]
        }
        {
            name: "Wez Synat"
            xwsaddon: "epicsl"
            unique: true
            id: 686
            faction: "Galactic Republic"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 20
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Coordinate"
                    "Lock"
                    "Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Clone Commander Cody"
                "Point Defense Battery (Epic)"
                "Spectre of Nayr (Epic)"
            ]
        }
        {
            name: "Oraf Desyk"
            xwsaddon: "epicsl"
            unique: true
            id: 687
            faction: "Resistance"
            ship: "GR-75 Medium Transport"
            skill: 7
            engagement: 1
            points: 18
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Coordinate"
                    "R-Lock"
                    "Coordinate"
                    "Jam"
                ]
            upgrades: [
                "GA-75 (Epic)"
                "Adaptive Shields"
                "Hosnian Lament (Epic)"
            ]
        }
        {
            name: "Trebor Zednem"
            xwsaddon: "epicsl"
            unique: true
            id: 688
            faction: "Rebel Alliance"
            ship: "GR-75 Medium Transport"
            skill: 7
            engagement: 1
            points: 19
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Coordinate"
                    "R-Lock"
                    "Coordinate"
                    "Jam"
                ]
            upgrades: [
                "Toryn Farr"
                "Planetary Ion Bombardment (Epic)"
                "Bright Hope"
            ]
        }
        {
            name: "Cikatro Vizago"
            xwsaddon: "epicsl"
            unique: true
            id: 689
            faction: "Scum and Villainy"
            ship: "C-ROC Cruiser"
            skill: 7
            engagement: 1
            points: 20
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Jam"
                    "Lock"
                    "R-Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Azmorigan (Epic)"
                "Illegal Countermeasures (Epic)"
                "Modified Dorsal Turret (Epic)"
                "Broken Horn"
            ]
        }
        {
            name: "Asajj Ventress (Trident)"
            xwsaddon: "epicsl"
            unique: true
            id: 690
            faction: "Separatist Alliance"
            ship: "Trident-class Assault Ship"
            skill: 8
            engagement: 1
            points: 19
            force: 1
            ship_override:
                actions: [
                    "Focus"
                    "R-Evade"
                    "Reinforce"
                    "Lock"
                    "R-Coordinate"
                ]
            upgrades: [
                "AQ-Series Battle Droids (Epic)"
                "Tractor Tentacles"
                "Drill Beak (Epic)"
                "Trident (Epic)"
            ]
        }
        {
            name: "Sorc Tormo"
            xwsaddon: "epicsl"
            unique: true
            id: 691
            faction: "Scum and Villainy"
            ship: "Trident-class Assault Ship"
            skill: 8
            engagement: 1
            points: 19
            ship_override:
                actions: [
                    "Focus"
                    "R-Evade"
                    "Reinforce"
                    "Lock"
                    "R-Coordinate"
                ]
            upgrades: [
                "Caij Vanda (Epic)"
                "Tractor Tentacles"
                "Drill Beak (Epic)"
                "Nautolan's Revenge (Epic)"
            ]
        }
        {
            name: "Kylo Ren (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 692
            faction: "First Order"
            ship: "TIE/vn Silencer"
            skill: 5
            points: 17
            force: 3
            upgrades: [
                "Determination (EoD)"
                "Malice"
                "Proton Torpedoes"
            ]
        }
        {
            name: '"Scorch" (EoD)'
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 693
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 4
            points: 9
            chassis: "Merciless"
            upgrades: [
                "Determination (EoD)"
                "Fanatical"
                "Threat Sensors (EoD)"
            ]
        }
        {
            name: '"Longshot" (EoD)'
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 694
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 3
            points: 8
            chassis: "Merciless"
            upgrades: [
                "Determination (EoD)"
                "Fanatical"
                "Experimental Scanners (EoD)"
            ]
        }
        {
            name: '"Midnight" (EoD)'
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 695
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 6
            points: 9
            chassis: "Merciless"
            upgrades: [
                "Determination (EoD)"
                "Targeting Synchronizer"
                "Advanced Warning Systems (EoD)"
            ]
        }
        {
            name: "Zeta 5 (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 696
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 2
            points: 9
            chassis: "Merciless"
            upgrades: [
                "Determination (EoD)"
                "Pattern Analyzer"
                "Targeting Matrix (BoE)"
            ]
        }
        {
            name: "Omega 2 (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 697
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 3
            points: 7
            chassis: "Merciless"
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                    "R-> Evade"
                ]
            upgrades: [
                "Determination (EoD)"
                "Targeting Relay (EoD)"
            ]
        }
        {
            name: "Lieutenant LeHuse (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 698
            faction: "First Order"
            ship: "TIE/sf Fighter"
            skill: 5
            points: 11
            chassis: "Heavy Weapon Turret (EoD)"
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                    "Reload"
                    "> Lock"
                ]
            upgrades: [
                "Determination (EoD)"
                "Concussion Missiles"
                "First Order Ordnance Tech (EoD)"
            ]
        }
        {
            name: "Theta 3 (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 699
            faction: "First Order"
            ship: "TIE/sf Fighter"
            skill: 3
            points: 10
            charge: 2
            chassis: "Heavy Weapon Turret (EoD)"
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                    "Reload"
                    "> Lock"
                ]
            upgrades: [
                "Seeker Missiles (YLF)"
                "Passive Sensors"
                "First Order Ordnance Tech (EoD)"
            ]
        }
        {
            name: "Theta 4 (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 700
            faction: "First Order"
            ship: "TIE/sf Fighter"
            skill: 4
            points: 11
            charge: 1
            recurring: 1
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                ]
            chassis: "Heavy Weapon Turret (EoD)"
            upgrades: [
                "Determination (EoD)"
                "Barrage Rockets"
                "Pattern Analyzer"
            ]
        }
        {
            name: "Petty Officer Thanisson (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 701
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 1
            points: 16
            charge: 1
            recurring: 1
            chassis: ""
            upgrades: [
                "General Hux (EoD)"
                "Advanced Sensors"
                "Interference Array (EoD)"
            ]
        }
        {
            name: "Poe Dameron (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 702
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 6
            points: 16
            charge: 1
            recurring: 1
            chassis: "Adaptive S-Foils"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                    "Slam"
                ]
            upgrades: [
                "Heroic"
                "BB-8 (EoD)"
                "Primed Overdrive Thrusters (EoD)"
                "Black One (EoD)"
            ]
        }
        {
            name: "Jaycris Tubbs (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 703
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 1
            points: 10
            chassis: "Adaptive S-Foils"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                    "R-> Focus"
                ]
            upgrades: [
                "For The Cause (EoD)"
                "R0 Astromech (EoD)"
            ]
        }
        {
            name: "Stomeroni Starck (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 704
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 13
            chassis: "Adaptive S-Foils"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                    "R-> Focus"
                ]
                maneuvers: [
                    [ 0, 0, 0, 0, 0, 0, 0, 0]
                    [ 2, 0, 0, 0, 2, 0, 0, 0]
                    [ 1, 1, 1, 1, 1, 0, 0, 0]
                    [ 2, 1, 1, 1, 2, 0, 3, 3]
                    [ 0, 0, 1, 0, 0, 0, 0, 0]
                    [ 0, 0, 1, 0, 0, 3, 0, 0]
                ]
            upgrades: [
                "For The Cause (EoD)"
                "Accelerated Sensor Array (EoD)"
                "R5-X3"
            ]
        }
        {
            name: "C'ai Threnalli (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 705
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 11
            chassis: "Adaptive S-Foils"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                    "R-> Focus"
                ]
            upgrades: [
                "For The Cause (EoD)"
                "Heroic"
                "BB Astromech"
                "Repulsorlift Engines (EoD)"
            ]
        }
        {
            name: "Ronith Blario (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 706
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 2
            points: 8
            upgrades: [
                "Escort Fighter (EoD)"
                "Heroic"
                "Starbird Slash"
            ]
        }
        {
            name: "Tallissan Lintra (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 707
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 5
            points: 11
            charge: 1
            recurring: 1
            ship_override:
                actions: [
                    "Focus"
                    "R-> Coordinate"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                ]
            upgrades: [
                "For The Cause (EoD)"
                "Heroic"
                "Push The Limit (BoE)"
                "XX-23 S-Thread Tracers"
            ]
        }
        {
            name: "Zizi Tlo (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 708
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 5
            points: 11
            charge: 1
            recurring: 1
            upgrades: [
                "For The Cause (EoD)"
                "Heroic"
                "Precision Holo-Targeter (EoD)"
            ]
        }
        {
            name: "Pammich Nerro Goode (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 709
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 3
            points: 9
            chassis: "Leave No One Behind"
            upgrades: [
                "For The Cause (EoD)"
                "R0-GR (EoD)"
                "Black Squadron R4 (EoD)"
            ]
        }
        {
            name: "Finch Dallow (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 710
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 4
            points: 16
            chassis: "Modular Bombing Magazine"
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Rotate Arc"
                    "Reload"
                    "R-> Reinforce"
                ]
            upgrades: [
                "Nix Jerd (EoD)"
                "Paige Tico (EoD)"
                "Proton Bombs"
                "Thermal Detonators"
            ]
        }
        {
            name: "Vennie (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 711
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 2
            points: 17
            chassis: "Modular Bombing Magazine"
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Rotate Arc"
                    "R-> Focus"
                    "Reload"
                ]
            upgrades: [
                "Perceptive Copilot"
                "Dedicated Gunners (EoD)"
                "Proton Bombs"
            ]
        }
        {
            name: "Boba Fett (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            id: 712
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            skill: 5
            points: 18
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Boost"
                    "R-> Lock"
                ]
            upgrades: [
                "Homing Beacon (AaD)"
                "Fennec Shand (AaD)"
                "Seismic Charges"
                "Slave I (Separatist)"
            ]
        }
        {
            name: "The Mandalorian (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            id: 713
            faction: "Scum and Villainy"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 5
            points: 11
            chassis: "Restored Speedster"
            force: 2
            forcerecurring: 0
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                    "Slam"
                    "R-> Lock"
                ]
            upgrades: [
                "Outmaneuver"
                "The Child (AaD)"
                "Kineso-Switch (AaD)" 
                "Calibrated Laser Targeting"
            ]
        }
        {
            name: "Han Solo (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            id: 714
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
            skill: 6
            points: 15
            charge: 1
            chassis: "Coaxium Injectors"
            ship_override:
                shields: 5
                actions: [
                    "Focus"
                    "Lock"
                    "R-Boost"
                    "Rotate Arc"
                    "R-> Focus"
                ]
            upgrades: [
                "Chewbacca (AaD)"
                "L3-37 (AaD)"
                "Tobias Beckett (AaD)" 
                "Lando's Millennium Falcon (AaD)"
            ]
        }
        {
            name: "Bo-Katan Kryze (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            id: 715
            faction: "Scum and Villainy"
            ship: "Gauntlet Fighter"
            skill: 4
            points: 16
            charge: 2
            chassis: "Winged Reversal"
            upgrades: [
                "Mandalorian Tactics (AaD)"
                "Nite Owl Sentries (AaD)"
                "Veteran Tail Gunner" 
            ]
        }
        {
            name: "Dengar (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            id: 716
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 6
            points: 16
            charge: 1
            recurring: 1
            upgrades: [
                "R2-G8 (AaD)"
                "Synchronized Handling (AaD)"
                "Starboard Thrusters (AaD)"
                "Punishing One"
            ]
        }
        {
            name: "Bossk (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            id: 717
            faction: "Scum and Villainy"
            ship: "YV-666 Light Freighter"
            skill: 4
            points: 15
            chassis: "Imposing Behemoth"
            upgrades: [
                "Embo (AaD)"
                "Contraband Cybernetics"
                "Hound's Tooth (AaD)"
            ]
        }
        {
            name: "Cad Bane (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            id: 718
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 11
            charge: 2
            recurring: 1
            ship_override:
                actions: [
                    "Focus"
                    "R-> Boost"
                    "Focus"
                    "R-> Barrel Roll"
                    "Evade"
                    "R-> Barrel Roll"
                    "Lock"
                    "R-Cloak"
                ]
            upgrades: [
                "Flechette Cannons (AaD)"
                "Todo 360 (AaD)"
                "Xanadu Blood (AaD)"
            ]
        }
        {
            name: "Fenn Rau (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            id: 719
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 6
            points: 17
            ship_override:
                hull: 5
            upgrades: [
                "Fearless"
                "Adaptable Power Systems (AaD)"
                "Beskar Reinforced Plating"
            ]
        }
        {
            name: "Prince Xizor (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            id: 720
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 4
            points: 13
            charge: 3
            chassis: "Adaptative Microthrusters"
            ship_override:
                shields: 2
            upgrades: [
                "Crime Lord (AaD)"
                "Mandalorian Optics"
                "Virago (AaD)"
            ]
        }
        {
            name: "Zuckuss (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            id: 721
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            points: 12
            chassis: "Enduring Limitations"
            ship_override:
                shields: 5
                actions: [
                    "Focus"
                    "Lock"
                    "Barrel Roll"
                    "R-> Calculate"
                    "Jam"
                    "R-> Calculate"
                ]
            upgrades: [
                "Persistent Tracker (AaD)"
                "Tractor Beam"
                "4-LOM (AaD)"
                "Mist Hunter (AaD)"
            ]
        }
        {
            name: "Zorii Bliss (Wartime)"
            id: 722
            unique: true
            xwsaddon: "wartime"
            faction: "Resistance"
            ship: "BTA-NR2-W Y-wing"
            skill: 5
            points: 12
            loadout: 20
            charge: 1
            recurring: 1
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Torpedo"
                "Turret"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Teza Nasz (Wartime)"
            id: 723
            unique: true
            xwsaddon: "wartime"
            faction: "Resistance"
            ship: "BTA-NR2-W Y-wing"
            skill: 4
            points: 11
            loadout: 18
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Torpedo"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Wilsa Teshlo (Wartime)"
            id: 724
            unique: true
            xwsaddon: "wartime"
            faction: "Resistance"
            ship: "BTA-NR2-W Y-wing"
            skill: 4
            points: 11
            loadout: 17
            slots: [
                "Tech"
                "Turret"
                "Missile"
                "Torpedo"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Shasa Zaro (Wartime)"
            id: 725
            unique: true
            xwsaddon: "wartime"
            faction: "Resistance"
            ship: "BTA-NR2-W Y-wing"
            skill: 3
            points: 11
            loadout: 15
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Torpedo"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Lega Fossang (Wartime)"
            id: 726
            unique: true
            xwsaddon: "wartime"
            faction: "Resistance"
            ship: "BTA-NR2-W Y-wing"
            skill: 3
            points: 10
            loadout: 10
            slots: [
                "Tech"
                "Missile"
                "Torpedo"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Aftab Ackbar (Wartime)"
            id: 727
            unique: true
            xwsaddon: "wartime"
            faction: "Resistance"
            ship: "BTA-NR2-W Y-wing"
            skill: 2
            points: 10
            loadout: 13
            slots: [
                "Tech"
                "Missile"
                "Torpedo"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Corus Kapellim (Wartime)"
            id: 728
            unique: true
            xwsaddon: "wartime"
            faction: "Resistance"
            ship: "BTA-NR2-W Y-wing"
            skill: 1
            points: 11
            loadout: 18
            slots: [
                "Tech"
                "Missile"
                "Torpedo"
                "Turret"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "C'ai Threnalli (Y-Wing) (Wartime)"
            id: 729
            unique: true
            xwsaddon: "wartime"
            faction: "Resistance"
            ship: "BTA-NR2-W Y-wing"
            skill: 2
            points: 10
            loadout: 12
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Torpedo"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "New Republic Patrol (Wartime)"
            id: 730
            xwsaddon: "wartime"
            faction: "Resistance"
            ship: "BTA-NR2-W Y-wing"
            skill: 3
            points: 10
            loadout: 11
            slots: [
                "Tech"
                "Missile"
                "Torpedo"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Kijimi Spice Runner (Wartime)"
            id: 731
            xwsaddon: "wartime"
            faction: "Resistance"
            ship: "BTA-NR2-W Y-wing"
            skill: 2
            points: 11
            loadout: 16
            slots: [
                "Tech"
                "Missile"
                "Torpedo"
                "Turret"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Hera Syndulla (LaR)"
            id: 732
            xwsaddon: "legendsandrelics"
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100 Light Freighter"
            skill: 6
            points: 18
            loadout: 20
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Sensor"
                "Turret"
                "Crew"
                "Crew"
                "Gunner"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Carnor Jax"
            id: 733
            xwsaddon: "legendsandrelics"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 5
            force: 1
            points: 13
            loadout: 16
            keyword: ["Dark Side"]
            slots: [
                "Force"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Thweek"
            id: 734
            xwsaddon: "legendsandrelics"
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 4
            points: 12
            loadout: 11
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Illicit"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Kazuda Xiono (LaR)"
            id: 735
            xwsaddon: "legendsandrelics"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 12
            loadout: 13
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Tamara Ryvora"
            id: 736
            xwsaddon: "legendsandrelics"
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 4
            points: 9
            loadout: 8
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "Tech"
                "Missile"
            ]
        }
        {
            name: "Quinlan Vos"
            id: 737
            xwsaddon: "legendsandrelics"
            unique: true
            faction: "Galactic Republic"
            ship: "Eta-2 Actis"
            skill: 4
            force: 2
            points: 11
            loadout: 14
            keyword: ["Jedi","Light Side","Dark Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Illicit"
                "Modification"
                "Cannon"
            ]
        }
        {
            name: "Ursa Wren"
            id: 738
            xwsaddon: "legendsandrelics"
            unique: true
            faction: "Galactic Republic"
            ship: "Gauntlet Fighter"
            skill: 3
            points: 16
            loadout: 17
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "DIS-L9B2"
            id: 739
            xwsaddon: "legendsandrelics"
            unique: true
            faction: "Separatist Alliance"
            ship: "Droid Tri-fighter"
            skill: 6
            points: 10
            loadout: 10
            charge: 1
            recurring: 1
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "Cannon"
                "Missile"
                "Configuration"
            ]
        }
    ]

    upgradesById: [
        {
            name: '"Chopper" (Astromech)'
            id: 0
            slot: "Astromech"
            xws: "chopper"
            points: 2
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: '"Genius"'
            id: 1
            slot: "Astromech"
            points: 0
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "R2 Astromech"
            id: 2
            slot: "Astromech"
            points: 7
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
            points: 6
            charge: 2
        }
        {
            name: "R5-D8"
            id: 7
            unique: true
            slot: "Astromech"
            points: 7
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
            points: 4
            attack: 3
            range: """1-3"""
        }
        {
            name: "Admiral Sloane"
            id: 14
            slot: "Crew"
            points: 50
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
            points: 7
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Baze Malbus"
            id: 17
            slot: "Crew"
            points: 7
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
            points: 7
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
            points: 2
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: '"Chopper" (Crew)'
            id: 23
            slot: "Crew"
            points: 2
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Ciena Ree"
            id: 24
            slot: "Crew"
            points: 2
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
            points: 15
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
            points: 10
            unique: true
            faction: "Galactic Empire"
            restrictions: [
                ["Slot", "Crew"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Director Krennic"
            id: 28
            slot: "Crew"
            points: 3
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
            points: 5
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: 'GNK "Gonk" Droid'
            id: 32
            slot: "Crew"
            points: 3
            charge: 1
        }
        {
            name: "Grand Inquisitor"
            id: 33
            slot: "Crew"
            points: 10
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
            points: 5
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
            points: 3
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
            points: 6
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
            points: 14
            unique: true
            faction: "Scum and Villainy"
            charge: 4
            restrictions: [
                ["Slot", "Crew"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Jyn Erso"
            id: 40
            slot: "Crew"
            points: 6
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Kanan Jarrus"
            id: 41
            slot: "Crew"
            points: 10
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
            points: 3
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "L3-37"
            id: 43
            slot: "Crew"
            points: 5
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Lando Calrissian"
            id: 44
            slot: "Crew"
            points: 2
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Lando Calrissian (Scum)"
            id: 45
            slot: "Crew"
            points: 7
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
            points: 4
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Maul"
            id: 48
            slot: "Crew"
            variablepoints: "Faction"
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
            points: 5
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
            points: 4
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
            id: 56
            slot: "Crew"
            points: 6
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Sabine Wren"
            id: 57
            slot: "Crew"
            points: 6
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
            points: 8
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "0-0-0"
            id: 63
            slot: "Crew"
            points: 4
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
            points: 1
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
            points: 5
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Bomblet Generator"
            id: 67
            slot: "Device"
            points: 3
            charge: 2
            applies_condition: 'Bomblet'.canonicalize()
            restrictions: [
                ["Slot", "Device"]
            ]
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
            points: 9
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
            points: 5
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
            points: 50
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Sense"
            id: 75
            slot: "Force"
            points: 7
        }
        {
            name: "Agile Gunner"
            id: 76
            slot: "Gunner"
            points: 4
        }
        {
            name: "Bistan"
            id: 77
            slot: "Gunner"
            points: 50
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Bossk"
            id: 78
            slot: "Gunner"
            points: 4
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "BT-1"
            id: 79
            slot: "Gunner"
            points: 1
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
            points: 2
            unique: true
            faction: "Scum and Villainy"
            charge: 1
            recurring: 1
        }
        {
            name: "Han Solo"
            id: 84
            slot: "Gunner"
            points: 10
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Han Solo (Scum)"
            id: 85
            slot: "Gunner"
            points: 7
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
            points: 6
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
            points: 4
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
            points: 2
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
            points: 8
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 5
            restrictions: [
                ["Slot", "Missile"]
            ]
            also_occupies_upgrades: [ "Missile" ]
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
            points: 4
            attack: 4
            range: """2-3"""
            rangebonus: true
            charge: 2
        }
        {
            name: "Ion Missiles"
            id: 101
            slot: "Missile"
            points: 3
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
            points: 2
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
            points: 12
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
            points: 8
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
            points: 3
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
            points: 5
            charge: 1
        }
        {
            name: "Daredevil"
            id: 117
            slot: "Talent"
            points: 4
            restrictions: [
                ["Action", "W-Boost"]
                ["Base", "Small"]
            ]
        }
        {
            name: "Debris Gambit"
            id: 118
            slot: "Talent"
            points: 3
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
            points: 7
            restrictions: [
                ["isUnique", true]
                ["Base", "Small", "Medium"]
            ]
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
            points: 2
        }
        {
            name: "Outmaneuver"
            id: 126
            slot: "Talent"
            points: 9
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
            points: 2
            faction: "Galactic Empire"
        }
        {
            name: "Saturation Salvo"
            id: 129
            slot: "Talent"
            points: 6
            restrictions: [
                ["Action", "Reload"]
            ]
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
            points: 5
            unique: true
            modifier_func: (stats) ->
                stats.actions.push 'R-Coordinate' if 'R-Coordinate' not in stats.actions
        }
        {
            name: "Swarm Tactics"
            id: 132
            slot: "Talent"
            points: 7
        }
        {
            name: "Trick Shot"
            id: 133
            slot: "Talent"
            points: 5
        }
        {
            name: "Adv. Proton Torpedoes"
            id: 134
            slot: "Torpedo"
            points: 7
            attack: 5
            range: """1"""
            rangebonus: true
            charge: 1
        }
        {
            name: "Ion Torpedoes"
            id: 135
            slot: "Torpedo"
            points: 5
            attack: 4
            range: """2-3"""
            rangebonus: true
            charge: 2
        }
        {
            name: "Proton Torpedoes"
            id: 136
            slot: "Torpedo"
            points: 14
            attack: 4
            range: """2-3"""
            rangebonus: true
            charge: 2
        }
        {
            name: "Dorsal Turret"
            id: 137
            slot: "Turret"
            points: 3
            attackt: 2
            range: """1-2"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "Ion Cannon Turret"
            id: 138
            slot: "Turret"
            points: 6
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
            also_occupies_upgrades: ['Crew']
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
            points: 6
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
            points: 2
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
            points: 10
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
            points: 3
            unique: true
            faction: "Galactic Empire"
            ship: "Lambda-class T-4a Shuttle"
        }
        {
            name: "Virago"
            id: 163
            slot: "Title"
            points: 8
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
            points: 9
            modifier_func: (stats) ->
                stats.hull += 1
        }
        {
            name: "Shield Upgrade"
            id: 165
            slot: "Modification"
            points: 10
            modifier_func: (stats) ->
                stats.shields += 1
        }
        {
            name: "Stealth Device"
            id: 166
            slot: "Modification"
            points: 8
            charge: 1
            restrictions: [
                ["Base", "Medium", "Large"]
            ]
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
            points: 5
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Kylo Ren"
            id: 179
            slot: "Crew"
            points: 7
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
            points: 6
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
            points: 9
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
            points: 15
            force: 1
            faction: "First Order"
            restrictions: [
                ["Slot", "Crew"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Hyperspace Tracking Data"
            id: 185
            slot: "Tech"
            faction: "First Order"
            points: 15
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
            xwsaddon: "gunner"
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
            xwsaddon: "crew-swz19"
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
            points: 2
            unique: true
            faction: "Resistance"
        }
        {
            name: "C-3PO (Resistance)"
            id: 191
            slot: "Crew"
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
            points: 4
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
            points: 3
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
            points: 4
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
            points: 2
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
            points: 4
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
            points: 3
            restrictions: [
                ["Action", "Calculate"]
                ["Slot", "Modification"]
            ]
            also_occupies_upgrades: [ "Modification" ]
        }
        {
            name: "Dedicated"
            id: 210
            faction: "Galactic Republic"
            slot: "Talent"
            points: 2
            restrictions: [
                ["Keyword", "Clone"]
            ]
        }
        {
            name: "Synchronized Console"
            id: 211
            faction: "Galactic Republic"
            slot: "Modification"
            points: 2
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
            points: 3
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
            points: 11
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
            points: 5
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
            points: 2
            applies_condition: '''DRK-1 Probe Droid'''.canonicalize()
        }
        {
            name: "Kraken"
            id: 222
            unique: true
            slot: "Tactical Relay"
            solitary: true
            faction: "Separatist Alliance"
            points: 7
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
            points: 10
        }
        {
            name: "Treacherous"
            id: 228
            charge: 1
            slot: "Talent"
            faction: "Separatist Alliance"
            points: 4
        }
        {
            name: "Soulless One"
            id: 229
            slot: "Title"
            unique: true
            ship: "Belbullab-22 Starfighter"
            faction: "Separatist Alliance"
            points: 9
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
            points: 8
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
            also_occupies_upgrades: [ "Modification" ]
            applies_condition: 'Electro-Proton Bomb'.canonicalize()
        }
        {
            name: "Delayed Fuses"
            id: 236
            slot: "Modification"
            points: 2
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
            also_occupies_upgrades: [ "Missile" ]
        }
        {
            name: "TA-175"
            id: 239
            unique: true
            slot: "Tactical Relay"
            solitary: true
            faction: "Separatist Alliance"
            points: 5
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
            points: 7
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
            points: 2
        }
        {
            name: "Leia Organa (Resistance)"
            id: 244
            xwsaddon: "resistance"
            unique: true
            slot: "Crew"
            faction: "Resistance"
            force: 1
            points: 10
            restrictions: [
                ["Slot", "Crew"]
            ]
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
            points: 4
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Angled Deflectors"
            id: 247
            slot: "Modification"
            points: 1
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
            points: 2
            modifier_func: (stats) ->
                stats.actions.push 'Lock' if 'Lock' not in stats.actions
        }
        {
            name: "Precognitive Reflexes"
            id: 250
            slot: "Force"
            points: 8
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Foresight"
            id: 251
            slot: "Force"
            points: 6
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
            points: 10
            faction: "Galactic Republic"
        }
        {
            name: "Ahsoka Tano"
            id: 253
            unique: true
            slot: "Gunner"
            points: 11
            faction: "Galactic Republic"
            force: 1
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "C-3PO (Republic)"
            id: 254
            unique: true
            slot: "Crew"
            xwsaddon: "republic"
            points: 6
            faction: "Galactic Republic"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Gravitic Deflection"
            id: 255
            slot: "Talent"
            points: 3
            ship: "Nantex-Class Starfighter"
        }
        {
            name: "Snap Shot"
            id: 256
            slot: "Talent"
            points: 7
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
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
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
            points: 2
            restrictions: [
                ["Action", "Slam"]
            ]
        }
        {
            name: "Mag-Pulse Warheads"
            id: 311
            slot: "Missile"
            points: 7
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
            points: 8
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
            points: 6
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
            points: 7
            charge: 2
            faction: "First Order"
            restrictions: [
                ["Slot", "Modification"]
            ]
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
            points: 10
        }
        {
            name: "Clone Captain Rex"
            id: 321
            slot: "Gunner"
            unique: true
            faction: "Galactic Republic"
            points: 1
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
            points: 3
            attackf: 2
            range: """1-2"""
            rangebonus: true
            charge: 5
            restrictions: [
                ["Slot", "Missile"]
            ]
            also_occupies_upgrades: [ "Missile" ]
        }
        {
            name: "Kit Fisto"
            id: 327
            slot: "Crew"
            unique: true
            force: 1
            faction: "Galactic Republic"
            points: 9
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
            points: 7
        }
        {
            name: "Boba Fett (Separatist)"
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
            points: 9
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
            points: 1
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
            points: 6
            applies_condition: 'Thermal Detonator'.canonicalize()
        }
        {
            name: "R2-D2 (Republic)"
            id: 340
            points: 8
            charge: 2
            unique: true
            xwsaddon: "republic"
            faction: "Galactic Republic"
            slot: "Astromech"
        }
        {
            name: "Extreme Maneuvers"
            id: 341
            points: 3
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
            points: 6
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
            also_occupies_upgrades: [ "Gunner" ]
        }
        {
            name: "Kalani"
            id: 353
            charge: 3
            unique: true
            recurring: 3
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
            points: 9
            attack: 3
            range: """2-3"""
            restrictions: [
                ["Slot", "Cannon"]
            ]
            also_occupies_upgrades: [ "Cannon" ]
        }
        {
            name: "Concussion Bombs"
            id: 355
            slot: "Device"
            charge: 3
            points: 5
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
            points: 1
            restrictions: [
                ["Keyword", "X-wing"]
                ["Equipped", "Configuration"]
            ]
        }
        {
            name: "R2-D2 (Resistance)"
            id: 358
            slot: "Astromech"
            xwsaddon: "resistance"
            points: 8
            unique: true
            charge: 4
            faction: "Resistance"
        }
        {
            name: "R6-D8"
            id: 359
            points: 5
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
            points: 1
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
            xwsaddon: "swz82"
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
            xws: "vectoredcannonsrz1"
            points: 0
            slot: "Configuration"
            standardized: true
            chassis: "Vectored Cannons"
            ship: ["RZ-1 A-wing", "RZ-2 A-wing"]
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
            ship: ["TIE/in Interceptor", "TIE/vn Silencer"]
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
            id: 379
            points: 1
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
            points: 5
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
            points: 7
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
            id: 390
            unique: true
            slot: "Command"
            points: 6
            faction: ["Scum and Villainy", "Separatist Alliance"]
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            force: 1
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push '*Focus'
                stats.actions.push 'F-> Coordinate'
        }
        {
            name: "General Grievous (Command)"
            id: 391
            unique: true
            slot: "Command"
            points: 5
            faction: "Separatist Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Hondo Ohnaka (Command)"
            id: 392
            unique: true
            slot: "Command"
            points: 7
            charge: 2
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
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
            points: 4
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
            points: 0
            ship: "BTA-NR2 Y-wing"
            standardized: true
            standardizedbeta: false
            chassis: "Devastating Barrage"
            restrictions: [
                ["Slot", "Modification"]
            ]
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
            standardized: true
            restrictions: [
                ["Slot", "Tech"]
            ]
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
            points: 2
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
            points: 5
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
            points: 10
            slot: "Missile"
            max_per_squad: 2
            charge: 1
            restrictions: [
                ["Slot", "Device"]
            ]
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
            id: 422
            points: 5
            slot: "Command"
            unique: true
            faction: "Rebel Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Standard"]
            ]
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
            xws: "bokatankryze"
            id: 425
            points: 6
            slot: "Crew"
            unique: true
            faction: ["Galactic Republic", "Separatist Alliance"]
        }
        {
            name: "Bo-Katan Kryze (Rebel/Scum)"
            xwsaddon: "rebel-scum"
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
            points: 7
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
            points: 15
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
            points: 1
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
            points: 8
            slot: "Crew"
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Maul (Mandalore)"
            id: 440
            points: 10
            slot: "Crew"
            unique: true
            force: 1
            faction: "Scum and Villainy"
            restrictions: [
                ["Slot", "Crew"]
            ]
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
            id: 443
            points: 3
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
            faction: ["Galactic Republic", "Separatist Alliance"]
            ship: "Gauntlet Fighter"
            restrictions: [
                ["Slot", "Modification"]
            ]
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
            faction: ["Rebel Alliance", "Scum and Villainy"]
            recurring: 1
            ship: "Gauntlet Fighter"
            restrictions: [
                ["Slot", "Modification"]
            ]
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
            points: 3
            unique: true
            slot: "Crew"
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'Reinforce'
        }
        {
            name: "The Child"
            id: 453
            points: 9
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
            points: 6
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
            points: 3
            slot: "Talent"
        }
        {
            name: "IG-11"
            id: 457
            points: 4
            slot: "Crew"
            unique: true
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate'
        }
        {
            name: "Greef Karga"
            id: 458
            points: 5
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
            restrictions: [
                ["Base", "Medium", "Large"]
            ]
        }
        {
            name: "Peli Motto"
            id: 460
            points: 2
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
            points: 3
            slot: "Gunner"
            unique: true
            faction: ["Scum and Villainy","Galactic Empire"]
        }
        {
            name: "Burnout Thrusters"
            id: 462
            points: 5
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
            points: 1
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
            also_occupies_upgrades: [ "Configuration" ]
        }
        {
            name: "Drop-Seat Bay"
            id: 465
            points: 0
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
            also_occupies_upgrades: [ "Crew" ]
            applies_condition: '''Death Watch Commandos'''.canonicalize()
        }
        {
            name: "Proton Cannons"
            id: 470
            slot: "Cannon"
            points: 5
            attackbull: 4
            range: """2-3"""
            charge: 2
            recurring: 1
            restrictions: [
                ["Slot", "Cannon"]
            ]
            also_occupies_upgrades: [ "Cannon" ]
        }
        {
            name: "Homing Torpedoes"
            id: 471
            slot: "Torpedo"
            points: 4
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
            id: 483
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "R5-K6 (BoY)"
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
        {
            name: "Swift Approach (TBE)"
            id: 494
            standard: true
            slot: "Talent"
        }
        {
            name: "Automated Loaders (TBE)"
            id: 495
            standard: true
            charge: 1
            slot: "Modification"
        }
        {
            name: "Top Cover (TBE)"
            id: 496
            standard: true
            slot: "Talent"
        }
        {
            name: "True Grit (TBE)"
            id: 497
            standard: true
            slot: "Talent"
        }
        {
            name: "Mercenary (YLF)"
            id: 498
            standard: true
            slot: "Talent"
        }
        {
            name: "Efficient Processing (YLF)"
            id: 499
            standard: true
            slot: "Talent"
        }
        {
            name: "Seeker Missiles (YLF)"
            id: 500
            standard: true
            slot: "Missile"
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 4
            
        }
        {
            name: '"Leebo" (YLF)'
            id: 501
            standard: true
            slot: "Crew"
        }
        {
            name: "It's A Trap! (BoE)"
            id: 502
            standard: true
            slot: "Talent"
        }
        {
            name: "R2-A3 (BoE)"
            unique: true
            id: 503
            standard: true
            charge: 1
            slot: "Talent"
        }
        {
            name: "Ace In The Hole (BoE)"
            id: 504
            standard: true
            charge: 2
            slot: "Talent"
        }
        {
            name: "Airen Cracken (BoE)"
            id: 505
            unique: true
            standard: true
            slot: "Gunner"
        }
        {
            name: "Millennium Falcon (BoE)"
            id: 506
            unique: true
            standard: true
            slot: "Title"
        }
        {
            name: "Chaff Particles (BoE)"
            id: 507
            standard: true
            slot: "Modification"
        }
        {
            name: "No Escape (BoE)"
            id: 508
            standard: true
            slot: "Talent"
        }
        {
            name: "Reckless (BoE)"
            id: 509
            standard: true
            slot: "Talent"
        }
        {
            name: "Push The Limit (BoE)"
            id: 510
            standard: true
            slot: "Talent"
        }
        {
            name: "Computer-Assisted Handling (BoE)"
            id: 511
            standard: true
            charge: 1
            slot: "Modification"
        }
        {
            name: "Blank Signature (BoE)"
            id: 512
            standard: true
            charge: 1
            recurring: 1
            slot: "Sensor"
        }
        {
            name: "Feedback Emitter (BoE)"
            id: 513
            standard: true
            charge: 1
            slot: "Illicit"
        }
        {
            name: "Targeting Matrix (BoE)"
            id: 514
            standard: true
            slot: "Modification"
        }
        {
            name: "Apex Predator (BoE)"
            id: 515
            standard: true
            slot: "Talent"
        }
        {
            name: "Fuel Injection Override (BoE)"
            id: 516
            standard: true
            charge: 2
            slot: "Modification"
        }
        {
            name: "Target-Assist Algorithm (BoE)"
            id: 517
            standard: true
            slot: "Modification"
        }
        {
            name: "Precision-Tuned Cannons (BoE)"
            id: 518
            standard: true
            attack: 2
            range: """2-3"""
            slot: "Cannon"
        }
        {
            name: "Heroic Sacrifice (BoE)"
            id: 519
            standard: true
            slot: "Talent"
        }
        {
            name: "Parting Gift (BoE)"
            id: 520
            standard: true
            slot: "Talent"
        }
        {
            name: "Stabilizing Astromech (BoE)"
            id: 521
            standard: true
            slot: "Astromech"
            charge: 1
        }
        {
            name: "Modified R4-P unit (BoE)"
            id: 522
            standard: true
            slot: "Astromech"
            charge: 1
        }
        {
            name: "Ion Maneuvering Jet (BoE)"
            id: 523
            standard: true
            slot: "Modification"
            charge: 2
        }
        {
            name: "Collected (BoE)"
            id: 524
            standard: true
            slot: "Talent"
        }
        {
            name: "Without A Trace (SL)"
            id: 525
            standard: true
            slot: "Talent"
        }
        {
            name: "Relay System (SL)"
            id: 526
            standard: true
            slot: "Sensor"
        }
        {
            name: "Stygium Reserve (SL)"
            id: 527
            standard: true
            slot: "Modification"
            charge: 1
        }
        {
            name: "Silent Hunter (SL)"
            id: 528
            standard: true
            slot: "Talent"
        }
        {
            name: "Stealth Gambit (SL)"
            id: 529
            standard: true
            slot: "Talent"
        }
        {
            name: "Manual Ailerons (SL)"
            id: 530
            standard: true
            slot: "Modification"
            charge: 2
        }
        {
            name: "Saturation Rockets (SL)"
            id: 531
            unique: true
            standard: true
            slot: "Missile"
            charge: 4
            recurring: 1
            attackf: 3
            range: """1-2"""
            rangebonus: true
        }
        {
            name: "Long-Range Scanners (SL)"
            id: 532
            standard: true
            slot: "Sensor"
            charge: 2
        }
        {
            name: "Heavy Plasma Missiles (SL)"
            id: 533
            standard: true
            slot: "Missile"
            charge: 2
            attack: 3
            range: """1-3"""
            rangebonus: true
        }
        {
            name: "Leia Organa (Epic)"
            id: 534
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "R2-D2 (Epic)"
            id: 535
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "C-3PO (Epic)"
            xwsaddon: "epicsl"
            id: 536
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Endless Hordes (Epic)"
            id: 537
            standard: true
            charge: 1
            recurring: 1
            slot: "Cargo"
        }
        {
            name: "Bail Organa (Epic)"
            id: 538
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Alpha Revue (Epic)"
            id: 539
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Secret Provisions (Epic)"
            id: 540
            standard: true
            slot: "Modification"
            charge: 3
        }
        {
            name: "Nien Nunb (Epic)"
            id: 541
            standard: true
            unique: true
            slot: "Command"
            charge: 1
            recurring: 1
        }
        {
            name: "Urcos Furdam (Epic)"
            id: 542
            standard: true
            unique: true
            slot: "Command"
        }
        {
            name: "Tantive IV (Resistance)"
            id: 543
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Twin Missile Launcher (Epic)"
            id: 544
            standard: true
            slot: "Missile"
            attackt: 3
            range: """2-3"""
        }
        {
            name: "Fanatical (Epic)"
            id: 545
            standard: true
            slot: "Talent"
        }
        {
            name: "Inferno Squad (Epic)"
            id: 546
            standard: true
            slot: "Crew"
        }
        {
            name: "Corvus (Epic)"
            id: 547
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Agent Terex (Epic)"
            id: 548
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Protectorate Gleb (Epic)"
            id: 549
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Jinata Security Forces (Epic)"
            id: 550
            standard: true
            slot: "Crew"
        }
        {
            name: "Precursor (Epic)"
            id: 551
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "TX-25 (Epic)"
            id: 552
            standard: true
            unique: true
            slot: "Tactical Relay"
        }
        {
            name: "Petty Officer Thanisson (Epic)"
            id: 553
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Malefactor (Epic)"
            id: 554
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Thrawn (Epic)"
            id: 555
            standard: true
            unique: true
            slot: "Crew"
            charge: 1
            recurring: 1
        }
        {
            name: "Heavy Laser Cannon Turret (Epic)"
            id: 556
            standard: true
            slot: "Hardpoint"
            attackt: 3
            range: """2-3"""
        }
        {
            name: "Blood Crow (Epic)"
            id: 557
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Spectre of Nayr (Epic)"
            id: 558
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "GA-75 (Epic)"
            id: 559
            standard: true
            unique: true
            slot: "Crew"
            charge: 2
            recurring: true
        }
        {
            name: "Hosnian Lament (Epic)"
            id: 560
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Planetary Ion Bombardment (Epic)"
            id: 561
            standard: true
            slot: "Hardpoint"
            attackf: 5
            range: """1-3"""
            rangebonus: true
        }
        {
            name: "Azmorigan (Epic)"
            id: 562
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Illegal Countermeasures (Epic)"
            id: 563
            standard: true
            slot: "Cargo"
        }
        {
            name: "Modified Dorsal Turret (Epic)"
            id: 564
            standard: true
            slot: "Hardpoint"
            attackt: 2
            range: """1-3"""
        }
        {
            name: "AQ-Series Battle Droids (Epic)"
            id: 565
            standard: true
            slot: "Crew"
        }
        {
            name: "Drill Beak (Epic)"
            id: 566
            standard: true
            slot: "Hardpoint"
            attackb: 3
            range: """0-1"""
            rangebonus: true
        }
        {
            name: "Trident (Epic)"
            id: 567
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Caij Vanda (Epic)"
            id: 568
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Nautolan's Revenge (Epic)"
            id: 569
            standard: true
            unique: true
            slot: "Title"
            charge: 1
            recurring: 1
        }
        {
            name: "Tantive IV (Republic)"
            id: 570
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Born for This (Epic)"
            id: 571
            standard: true
            slot: "Talent"
        }
        {
            name: "Point Defense Battery (Epic)"
            id: 572
            standard: true
            slot: "Hardpoint"
            attackdt: 2
            range: """1-2"""
        }
        {
            name: "Determination (EoD)"
            id: 573
            standard: true
            slot: "Talent"
        }
        {
            name: "Experimental Scanners (EoD)"
            id: 574
            standard: true
            slot: "Tech"
        }
        {
            name: "Advanced Warning Systems (EoD)"
            id: 575
            standard: true
            slot: "Modification"
        }
        {
            name: "Targeting Relay (EoD)"
            id: 576
            standard: true
            slot: "Tech"
            charge: 2
        }
        {
            name: "Interference Array (EoD)"
            id: 577
            standard: true
            slot: "Tech"
            charge: 2
        }
        {
            name: "BB-8 (EoD)"
            id: 578
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2     
        }
        {
            name: "Primed Overdrive Thrusters (EoD)"
            id: 579
            standard: true
            unique: true
            slot: "Tech"
        }
        {
            name: "Black One (EoD)"
            id: 580
            standard: true
            unique: true
            slot: "Title"
            charge: 2
        }
        {
            name: "For The Cause (EoD)"
            id: 581
            standard: true
            slot: "Talent"
        }
        {
            name: "R0 Astromech (EoD)"
            id: 582
            standard: true
            slot: "Astromech"
        }
        {
            name: "Accelerated Sensor Array (EoD)"
            id: 583
            standard: true
            slot: "Tech"
        }
        {
            name: "Repulsorlift Engines (EoD)"
            id: 584
            standard: true
            slot: "Modification"
        }
        {
            name: "Escort Fighter (EoD)"
            id: 585
            standard: true
            slot: "Talent"
            charge: 1
            recurring: 1
        }
        {
            name: "Precision Holo-Targeter (EoD)"
            id: 586
            standard: true
            slot: "Tech"
        }
        {
            name: "R0-GR (EoD)"
            id: 587
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Black Squadron R4 (EoD)"
            id: 588
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "Nix Jerd (EoD)"
            id: 589
            standard: true
            unique: true
            slot: "Crew"
            charge: 2
        }
        {
            name: "Paige Tico (EoD)"
            id: 590
            standard: true
            unique: true
            slot: "Gunner"
            charge: 2
        }
        {
            name: "Dedicated Gunners (EoD)"
            id: 591
            standard: true
            slot: "Gunner"
        }
        {
            name: "Homing Beacon (AaD)"
            id: 592
            standard: true
            slot: "Sensor"
            charge: 2
        }
        {
            name: "Fennec Shand (AaD)"
            id: 593
            standard: true
            unique: true
            slot: "Gunner"
        }
        {
            name: "The Child (AaD)"
            id: 594
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Kineso-Switch (AaD)"
            id: 595
            standard: true
            slot: "Illicit"
            charge: 2
        }
        {
            name: "L3-37 (AaD)"
            id: 596
            standard: true
            unique: true
            slot: "Crew"
            charge: 1
        }
        {
            name: "Tobias Beckett (AaD)"
            id: 597
            standard: true
            unique: true
            slot: "Gunner"
        }
        {
            name: "Lando's Millennium Falcon (AaD)"
            id: 598
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Mandalorian Tactics (AaD)"
            id: 599
            standard: true
            slot: "Talent"
        }
        {
            name: "Nite Owl Sentries (AaD)"
            id: 600
            standard: true
            unique: true
            slot: "Crew"
            charge: 3
            recurring: 1
        }
        {
            name: "R2-G8 (AaD)"
            id: 601
            standard: true
            slot: "Astromech"
            unique: true
            charge: 2
            recurring: 1
        }
        {
            name: "Synchronized Handling (AaD)"
            id: 602
            standard: true
            slot: "Tech"
            charge: 1
        }
        {
            name: "Starboard Thrusters (AaD)"
            id: 603
            standard: true
            slot: "Modification"
            charge: 2
        }
        {
            name: "Embo (AaD)"
            id: 604
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Flechette Cannons (AaD)"
            id: 605
            standard: true
            slot: "Cannon"
            attack: 3
            range: """2-3"""
        }
        {
            name: "Todo 360 (AaD)"
            id: 606
            standard: true
            unique: true
            slot: "Crew"
            charge: 2
        }
        {
            name: "Xanadu Blood (AaD)"
            id: 607
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Adaptable Power Systems (AaD)"
            id: 608
            standard: true
            slot: "Modification"
            charge: 2
        }
        {
            name: "Crime Lord (AaD)"
            id: 609
            standard: true
            unique: true
            slot: "Talent"
            charge: 2
            recurring: 1
        }
        {
            name: "Virago (AaD)"
            id: 610
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Persistent Tracker (AaD)"
            id: 611
            standard: true
            slot: "Talent"
            charge: 3
            recurring: 1
        }
        {
            name: "4-LOM (AaD)"
            id: 612
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Mist Hunter (AaD)"
            id: 613
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "First Order Ordnance Tech (EoD)"
            id: 614
            standard: true
            slot: "Gunner"
        }
        {
            name: "Threat Sensors (EoD)"
            id: 615
            standard: true
            slot: "Tech"
        }
        {
            name: "General Hux (EoD)"
            id: 616
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Hound's Tooth (AaD)"
            id: 617
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Chewbacca (AaD)"
            id: 618
            standard: true
            unique: true
            slot: "Crew"
            charge: 2
            recurring: 1
        }
        {
            name: "Ahsoka Tano (LaR)"
            id: 619
            xwsaddon: "legendsandrelics"
            unique: true
            points: 10
            faction: "Rebel Alliance"
            slot: "Crew"
            force: 1
        }
        {
            name: "Thrawn"
            id: 620
            xwsaddon: "legendsandrelics"
            unique: true
            points: 6
            faction: "Galactic Empire"
            slot: "Crew"
            charge: 2
            recurring: 1
            modifier_func: (stats) ->
                stats.actions.push 'R-Jam' if 'R-Jam' not in stats.actions
        }
        {
            name: "Fennec Shand"
            id: 621
            xwsaddon: "legendsandrelics"
            unique: true
            points: 6
            faction: "Scum and Villainy"
            slot: "Crew"
            charge: 2
        }
        {
            name: "Zorii Bliss"
            id: 622
            xwsaddon: "legendsandrelics"
            unique: true
            points: 5
            faction: "Resistance"
            slot: "Crew"
            charge: 1
            recurring: 1
            restrictions: [
                ["Action", "Jam"]
            ]
            modifier_func: (stats) ->
                stats.actions.push 'Jam' if 'Jam' not in stats.actions
        }
        {
            name: "Wedge Antilles"
            id: 623
            xwsaddon: "legendsandrelics"
            unique: true
            points: 10
            faction: "Resistance"
            slot: "Gunner"
        }
        {
            name: "Captive"
            id: 624
            xwsaddon: "legendsandrelics"
            unique: true
            points: 8
            faction: ["Galactic Empire","First Order", "Separatist Alliance"]
            slot: "Crew"
            charge: 1
            recurring: 1
        }
        {
            name: "Gravitic Well"
            id: 625
            xwsaddon: "legendsandrelics"
            points: 5
            standardized: true
            ship: "Nantex-Class Starfighter"
            slot: "Configuration"
        }
        {
            name: "R7-T1"
            id: 626
            xwsaddon: "legendsandrelics"
            unique: true
            points: 5
            faction: ["Rebel Alliance", "Resistance"]
            slot: "Astromech"
            modifier_func: (stats) ->
                stats.actions.push '*Lock'
                stats.actions.push 'R-> Boost'
            restrictions: [
                ["Action", "W-Lock"]
                ["Base", "Small"]
            ]
        }
        {
            name: "Modified R4-P Unit"
            id: 627
            xwsaddon: "legendsandrelics"
            points: 5
            faction: "Rebel Alliance"
            slot: "Astromech"
            charge: 1
        }
        {
            name: "Flight-Assist Astromech"
            id: 628
            xwsaddon: "legendsandrelics"
            points: 4
            slot: "Astromech"
            charge: 2
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Unhinged Astromech"
            id: 629
            xwsaddon: "legendsandrelics"
            points: 3
            slot: "Astromech"
            modifier_func: (stats) ->
                if stats.maneuvers[1]?
                    for turn in [0 ... stats.maneuvers[1].length]
                        if turn > 4
                            continue
                        if stats.maneuvers[3][turn] > 1
                            stats.maneuvers[3][turn]--
        }
        {
            name: "Roiling Anger"
            id: 630
            xwsaddon: "legendsandrelics"
            points: 2
            slot: "Force"
            restrictions: [
                ["Keyword", "Dark Side"]
            ]
        }
        {
            name: "Seeker Missiles"
            id: 631
            xwsaddon: "legendsandrelics"
            points: 12
            slot: "Missile"
            charge: 4
            attack: 3
            range: """2-3"""
            rangebonus: true
        }
        {
            name: "Targeting Matrix"
            id: 632
            xwsaddon: "legendsandrelics"
            points: 6
            slot: "Modification"
        }
        {
            name: "Retrofitted Autothrusters"
            id: 633
            xwsaddon: "legendsandrelics"
            points: 6
            slot: "Modification"
            charge: 2
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Automated Loaders"
            id: 634
            xwsaddon: "legendsandrelics"
            points: 3
            slot: "Modification"
            charge: 1
            restrictions: [
                ["Action", "Reload"]
            ]
        }
        {
            name: "Parting Gift"
            id: 635
            xwsaddon: "legendsandrelics"
            points: 2
            slot: "Talent"
        }
        {
            name: "Blindspot Targeter"
            id: 636
            xwsaddon: "legendsandrelics"
            points: 7
            slot: "Sensor"
        }
        {
            name: "Targeting Relay"
            id: 637
            xwsaddon: "legendsandrelics"
            points: 3
            slot: "Tech"
            charge: 2
        }
        {
            name: "T-SJ1A Targeting Computer"
            id: 638
            xwsaddon: "legendsandrelics"
            points: 4
            slot: "Tech"
            faction: "First Order"
            charge: 1
        }
        {
            name: "Winged Reversal"
            id: 639
            xwsaddon: "legendsandrelics"
            points: 0
            slot: "Configuration"
            charge: 2
            ship: ["UT-60D U-wing", "Gauntlet Fighter"]
        }
        {
            name: "Precision-Tuned Cannons"
            id: 640
            xwsaddon: "legendsandrelics"
            points: 3
            attack: 2
            range: """2-3"""
            slot: "Cannon"
        }
        {
            name: "Burst Laser Turret"
            id: 641
            xwsaddon: "legendsandrelics"
            points: 5
            attackt: 2
            range: """1-2"""
            slot: "Turret"
            charge: 2
            recurring: 1
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
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
            unique: true
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
        {
            name: "Sensor Blackout"
            id: 49
        }
        {
            name: "Locked S-Foils"
            id: 50
        }
        {
            name: "High Stakes"
            id: 51
        }
        {
            name: "Chiss Engineering"
            id: 52
        }
        {
            name: "Gyro-Cockpit"
            id: 53
        }
        {
            name: "Formed Up"
            id: 54
        }
        {
            name: "Prioritized Weapons Systems"
            id: 55
        }
        {
            name: "Broadside Batteries"
            id: 56
        }
        {
            name: "Concentrated Batteries"
            id: 57
        }
        {
            name: "Docking Clamps"
            id: 58
        }
        {
            name: "Resupply Craft"
            id: 59
        }
        {
            name: "Overdrive Burners"
            id: 60
        }
        {
            name: "Tractor Grasp"
            id: 61
        }
        {
            name: "Merciless"
            id: 62
        }
        {
            name: "Heavy Weapon Turret (EoD)"
            id: 63
        }
        {
            name: "Enduring Limitations"
            id: 64
        }
        {
            name: "Adaptive S-Foils"
            id: 65
        }
        {
            name: "Leave No One Behind"
            id: 66
        }
        {
            name: "Modular Bombing Magazine"
            id: 67
        }
        {
            name: "Restored Speedster"
            id: 68
        }
        {
            name: "Coaxium Injectors"
            id: 69
        }
        {
            name: "Winged Reversal"
            id: 70
        }
        {
            name: "Imposing Behemoth"
            id: 71
        }
        {
            name: "Adaptative Microthrusters"
            id: 72
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
            name_parse = pilot_data.name.split("(")
            pilot_data.canonical_name = name_parse[0].canonicalize() unless pilot_data.canonical_name?

            # XWS rework
            pilot_data.xws = if pilot_data.xws? then pilot_data.xws else (if pilot_data.xwsaddon? then (pilot_data.canonical_name + "-" + pilot_data.xwsaddon) else (pilot_data.canonical_name + (if name_parse[1]? then ("-" + pilot_data.ship.canonicalize()) else "")))

            exportObj.pilots[pilot_data.name] = pilot_data

            for ship in exportObj.restrictedShips
                if (pilot_data.name == ship.name)
                    pilot_data.restricted = ship.limit
    # pilot_name is the English version here as it's the common index into
    # basic card info

    exportObj.upgrades = {}
    for upgrade_data in basic_cards.upgradesById
        unless upgrade_data.skip?
            upgrade_data.sources = []
            name_parse = upgrade_data.name.split("(")
            upgrade_data.canonical_name = name_parse[0].canonicalize() unless upgrade_data.canonical_name?

            # XWS rework
            upgrade_data.xws = if upgrade_data.xws? then upgrade_data.xws else (if upgrade_data.xwsaddon? then (upgrade_data.canonical_name + "-" + upgrade_data.xwsaddon) else (upgrade_data.canonical_name + (if name_parse[1]? then ("-" + upgrade_data.slot.canonicalize()) else "")))


            exportObj.upgrades[upgrade_data.name] = upgrade_data

            for upgrade in exportObj.restrictedUpgrades
                if (upgrade_data.name == upgrade.name)
                    upgrade_data.restricted = upgrade.limit

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
            .replace(/%STRAIN%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-token-strain" title="Strain Token"></i>')
            .replace(/%DEPLETE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-token-deplete" title="Deplete Token"></i>')
            .replace(/%TRACTOR%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-token-tractor" title="Tractor Token"></i>')
            .replace(/%ION%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-token-ion" title="Ion Token"></i>')
            .replace(/%STRESS%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-token-stress" title="Stress Token"></i>')
            .replace(/%RECURRING%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-recurring" title="Recurring"></i>')
            .replace(/%NEGATIVERECURRING%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-negativerecurring" title="Negative Recurring"></i>')
            .replace(/%MISSIONPOINT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-point" title="Mission Point"></i>')
            .replace(/%FUSE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-fuse" title="Fuse"></i>')
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
    {name: 'YT-2400 Light Freighter', faction: 'Rebel Alliance'}

    {name: 'TIE Advanced x1', faction: 'Galactic Empire'}
    {name: 'TIE Advanced v1', faction: 'Galactic Empire'}
    {name: 'TIE/ln Fighter', faction: 'Galactic Empire'}
    {name: 'TIE/sa Bomber', faction: 'Galactic Empire'}
    {name: 'TIE/in Interceptor', faction: 'Galactic Empire'}
    {name: 'TIE Reaper', faction: 'Galactic Empire'}
    {name: 'TIE/d Defender', faction: 'Galactic Empire'}
    {name: 'TIE/sk Striker', faction: 'Galactic Empire'}
    {name: 'TIE/rb Heavy', faction: 'Galactic Empire'}
    {name: 'TIE/ph Phantom', faction: 'Galactic Empire'}
    {name: 'Alpha-Class Star Wing', faction: 'Galactic Empire'}
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
    {name: 'YT-2400 Light Freighter', faction: 'Scum and Villainy'}

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

# Restricted Lists for XWA Points
exportObj.restrictedShips = [

    {name: 'Freighter Captain', limit: 1}
    {name: 'Contracted Scout', limit: 2}
    {name: 'Cartel Spacer', limit: 3}
    {name: '104th Battalion Pilot', limit: 2}
    {name: 'Epsilon Squadron Cadet', limit: 4}
]

exportObj.restrictedUpgrades = [

    {name: 'Battle Meditation', limit: 3}
    {name: 'Autoblasters', limit: 2}
    {name: 'Sense', limit: 1}
    {name: 'Hotshot Gunner', limit: 2}
    {name: 'Suppressive Gunner', limit: 2}
    {name: 'Veteran Turret Gunner', limit: 3}
    {name: 'False Transponder Codes', limit: 3}
    {name: 'Barrage Rockets', limit: 2}
    {name: 'Homing Missiles', limit: 2}
    {name: 'Proton Rockets', limit: 3}
    {name: 'Proximity Mines', limit: 3}
    {name: 'Trajectory Simulator', limit: 2}
    {name: 'Intimidation', limit: 1}
    {name: 'Juke', limit: 2}
    {name: 'Snap Shot', limit: 3}
    {name: 'Swarm Tactics', limit: 3}
    {name: 'Homing Torpedoes', limit: 2}
    {name: 'Proton Torpedoes', limit: 3}
    {name: 'Energy-Shell Charges', limit: 4}
    {name: 'Ensnare', limit: 2}
]


# Used to exclude pilots from included ships
exportObj.standardPilotExclusions = [

    # Rebel Alliance
    'Hera Syndulla (VCX-100)'
    '"Leebo"'
    'Dash Rendar'
    'Wild Space Fringer'

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

    # Epic
    'Strategic Commander'
    'In It For The Money'
    'Bounty'
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
exportObj.standardCheck = (data, faction='', shipCheck=false, onlyBanList=false) ->
    if (shipCheck)
        if (data.name in exportObj.standardPilotExclusions)
            return false
        if (data.name.search("(EoD)") > 0 or data.name.search("(AaD)") > 0) # temporary fix for non amg content
            return false
        if onlyBanList == false
            for ship in exportObj.standardShipInclusions
                if (ship.faction == faction && (data.name == ship.name || data.ship == ship.name || (Array.isArray(data.ship) and ship.name in data.ship)))
                    return true
            return false
        else
            return true
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
        points: 50
        vendor:
            yasb:
                builder: 'YASB - X-Wing 2.5'
                builder_url: "https://yasb.app"
                link: "https://yasb.app/#{this}" 
        version: 'R3'
        ruleset: 'XWA'

    if this.ParseParameter('obs')
        xws.obstacles = this.ParseParameter('obs').split(",")

    serialized = this.ParseParameter('d')
    re = if "Z" in serialized then /^v(\d+)Z(.*)/ else /^v(\d+)!(.*)/
    matches = re.exec serialized
    if matches?
        # Parsing extra data in case we need it later
        version = parseInt matches[1]
        ship_splitter = 'Y'
        [g, p, s] = matches[2].split('Z')
        [ game_type_abbrev, desired_points, serialized_ships ] = [g, parseInt(p), s]

        if version < 10
            return "error: old version, not compatible, use yasb.app/AMG/javascript/xwingcontent.js instead."

        switch game_type_abbrev
            when 's'
                gamemode = 'XWA'
            when 'h'
                gamemode = 'hyperspace'
            when 'e'
                gamemode = 'epic'
            when 'b'
                gamemode = 'beta'
            when 'q'
                return "error: game mode not supported"

        if !serialized_ships? # something went wrong, we can't load that serialization
            return "error: serialization read failed"

        #independantly setting up basic card data for xws output
        card_data = exportObj.basicCardData()

        card_pilots = {}
        for pilot_data in card_data.pilotsById
            unless pilot_data.skip?
                name_parse = pilot_data.name.split("(")
                pilot_data.canonical_name = name_parse[0].canonicalize() unless pilot_data.canonical_name?

                pilot_data.xws = if pilot_data.xws? then pilot_data.xws else (if pilot_data.xwsaddon? then (pilot_data.canonical_name + "-" + pilot_data.xwsaddon) else (pilot_data.canonical_name + (if name_parse[1]? then ("-" + pilot_data.ship.canonicalize()) else "")))
                card_pilots[pilot_data.id] = pilot_data

        cards_upgrades = {}
        for upgrade_data in card_data.upgradesById
            unless upgrade_data.skip?
                name_parse = upgrade_data.name.split("(")
                upgrade_data.canonical_name = name_parse[0].canonicalize() unless upgrade_data.canonical_name?

                upgrade_data.xws = if upgrade_data.xws? then upgrade_data.xws else (if upgrade_data.xwsaddon? then (upgrade_data.canonical_name + "-" + upgrade_data.xwsaddon) else (upgrade_data.canonical_name + (if name_parse[1]? then ("-" + upgrade_data.slot.canonicalize()) else "")))
                cards_upgrades[upgrade_data.id] = upgrade_data

        if serialized_ships.length?
            # Ship loop
            for serialized_ship in serialized_ships.split(ship_splitter)
                pilot_splitter = 'X'
                upgrade_splitter = 'W'
                
                if (gamemode == 'beta' and pilot_data.pointsbeta?) then points = pilot_data.pointsbeta else points = pilot_data.points
                # if (gamemode == 'beta' and pilot_data.loadoutbeta) then loadout = pilot_data.loadoutbeta else points = points = pilot_data.loadout

                [ pilot_id, upgrade_ids ] = serialized_ship.split pilot_splitter
                # pilot_data is the pilot info
                pilot_data = card_pilots[parseInt(pilot_id)]
                if pilot_data
                    pilot_xws =
                        id: (pilot_data.xws ? pilot_data.canonical_name)
                        name: (pilot_data.xws ? pilot_data.canonical_name)
                        points: points
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
