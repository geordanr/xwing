# This must be loaded before any of the card language modules!
exportObj = exports ? this

exportObj.unreleasedExpansions = [
    "Imperial Veterans Expansion Pack"
    "Heroes of the Resistance Expansion Pack"
    "ARC-170 Expansion Pack"
    "Special Forces TIE Expansion Pack"
    "Protectorate Starfighter Expansion Pack"
    "Shadow Caster Expansion Pack"
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
            factions: [ "Rebel Alliance", ]
            attack: 3
            agility: 2
            hull: 3
            shields: 2
            actions: [
                "Focus"
                "Target Lock"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 2, 2, 2, 0, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 1, 1, 1, 1, 1, 0]
              [ 0, 0, 1, 0, 0, 3]
            ]
        "Y-Wing":
            name: "Y-Wing"
            factions: [ "Rebel Alliance", "Scum and Villainy", ]
            attack: 2
            agility: 1
            hull: 5
            shields: 3
            actions: [
                "Focus"
                "Target Lock"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 3, 1, 1, 1, 3, 0]
              [ 0, 0, 3, 0, 0, 3]
            ]
        "A-Wing":
            name: "A-Wing"
            factions: [ "Rebel Alliance", ]
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Target Lock"
                "Boost"
                "Evade"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0]
              [ 2, 2, 2, 2, 2, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 2, 0, 0, 0]
              [ 0, 0, 2, 0, 0, 3]
            ]
        "YT-1300":
            name: "YT-1300"
            factions: [ "Rebel Alliance", ]
            attack: 2
            agility: 1
            hull: 6
            shields: 4
            actions: [
                "Focus"
                "Target Lock"
            ]
            attack_icon: 'xwing-miniatures-font-attack-turret'
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 1, 2, 2, 2, 1, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 0, 1, 1, 1, 0, 3]
              [ 0, 0, 1, 0, 0, 3]
            ]
            large: true
        "TIE Fighter":
            name: "TIE Fighter"
            factions: [ "Galactic Empire", ]
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
              [ 1, 0, 0, 0, 1, 0]
              [ 1, 2, 2, 2, 1, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 1, 0, 0, 3]
              [ 0, 0, 1, 0, 0, 0]
            ]
        "TIE Advanced":
            name: "TIE Advanced"
            factions: [ "Galactic Empire", ]
            attack: 2
            agility: 3
            hull: 3
            shields: 2
            actions: [
                "Focus"
                "Target Lock"
                "Barrel Roll"
                "Evade"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 2, 0, 2, 0, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 0, 0, 1, 0, 0, 3]
              [ 0, 0, 1, 0, 0, 0]
            ]
        "TIE Interceptor":
            name: "TIE Interceptor"
            factions: [ "Galactic Empire", ]
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
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0]
              [ 2, 2, 2, 2, 2, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 2, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 3]
            ]
        "Firespray-31":
            name: "Firespray-31"
            factions: [ "Galactic Empire", "Scum and Villainy", ]
            attack: 3
            agility: 2
            hull: 6
            shields: 4
            actions: [
                "Focus"
                "Target Lock"
                "Evade"
            ]
            attack_icon: 'xwing-miniatures-font-attack-frontback'
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 2, 2, 2, 0, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 1, 1, 1, 1, 1, 3]
              [ 0, 0, 1, 0, 0, 3]
            ]
            large: true
        "HWK-290":
            name: "HWK-290"
            factions: [ "Rebel Alliance", "Scum and Villainy", ]
            attack: 1
            agility: 2
            hull: 4
            shields: 1
            actions: [
                "Focus"
                "Target Lock"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0]
              [ 0, 2, 2, 2, 0]
              [ 1, 1, 2, 1, 1]
              [ 0, 3, 1, 3, 0]
              [ 0, 0, 3, 0, 0]
            ]
        "Lambda-Class Shuttle":
            name: "Lambda-Class Shuttle"
            factions: [ "Galactic Empire", ]
            attack: 3
            agility: 1
            hull: 5
            shields: 5
            actions: [
                "Focus"
                "Target Lock"
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
            factions: [ "Rebel Alliance", ]
            attack: 3
            agility: 1
            hull: 3
            shields: 5
            actions: [
                "Focus"
                "Target Lock"
                "Barrel Roll"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 3, 2, 2, 2, 3, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 3, 1, 3, 0, 0]
              [ 0, 0, 3, 0, 0, 0]
            ]
        "TIE Bomber":
            name: "TIE Bomber"
            factions: [ "Galactic Empire", ]
            attack: 2
            agility: 2
            hull: 6
            shields: 0
            actions: [
                "Focus"
                "Target Lock"
                "Barrel Roll"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0]
              [ 3, 2, 2, 2, 3, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 0, 0, 1, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 3]
            ]
        "GR-75 Medium Transport":
            name: "GR-75 Medium Transport"
            factions: [ "Rebel Alliance", ]
            energy: 4
            agility: 0
            hull: 8
            shields: 4
            actions: [
                "Recover"
                "Reinforce"
                "Coordinate"
                "Jam"
            ]
            huge: true
            epic_points: 2
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0 ]
            ]
        "Z-95 Headhunter":
            name: "Z-95 Headhunter"
            factions: [ "Rebel Alliance", "Scum and Villainy", ]
            attack: 2
            agility: 2
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Target Lock"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0]
              [ 1, 2, 2, 2, 1, 0]
              [ 1, 1, 1, 1, 1, 3]
              [ 0, 0, 1, 0, 0, 0]
            ]
        "TIE Defender":
            name: "TIE Defender"
            factions: [ "Galactic Empire", ]
            attack: 3
            agility: 3
            hull: 3
            shields: 3
            actions: [
                "Focus"
                "Target Lock"
                "Barrel Roll"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 3, 1, 0, 1, 3, 0]
              [ 3, 1, 2, 1, 3, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 0, 0, 2, 0, 0, 1]
              [ 0, 0, 2, 0, 0, 0]
            ]
        "E-Wing":
            name: "E-Wing"
            factions: [ "Rebel Alliance", ]
            attack: 3
            agility: 3
            hull: 2
            shields: 3
            actions: [
                "Focus"
                "Target Lock"
                "Barrel Roll"
                "Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 2, 1, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0 ]
                [ 1, 1, 2, 1, 1, 3 ]
                [ 0, 0, 1, 0, 0, 3 ]
                [ 0, 0, 1, 0, 0, 0 ]
            ]
        "TIE Phantom":
            name: "TIE Phantom"
            factions: [ "Galactic Empire", ]
            attack: 4
            agility: 2
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Barrel Roll"
                "Evade"
                "Cloak"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 1, 0, 0, 0, 1, 0]
                [ 1, 2, 2, 2, 1, 0]
                [ 1, 1, 2, 1, 1, 3]
                [ 0, 0, 1, 0, 0, 3]
            ]
        "CR90 Corvette (Fore)":
            name: "CR90 Corvette (Fore)"
            factions: [ "Rebel Alliance", ]
            attack: 4
            agility: 0
            hull: 8
            shields: 5
            actions: [
                "Coordinate"
                "Target Lock"
            ]
            huge: true
            epic_points: 1.5
            attack_icon: 'xwing-miniatures-font-attack-turret'
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 1, 0, 1, 0, 0]
                [ 0, 1, 1, 1, 0, 0]
                [ 0, 0, 1, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 0]
            ]
            multisection: [
                "CR90 Corvette (Aft)".canonicalize()
            ]
            canonical_name: "CR90 Corvette".canonicalize()
        "CR90 Corvette (Aft)":
            name: "CR90 Corvette (Aft)"
            factions: [ "Rebel Alliance", ]
            energy: 5
            agility: 0
            hull: 8
            shields: 3
            actions: [
                "Reinforce"
                "Recover"
            ]
            huge: true
            epic_points: 1.5
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 1, 0, 1, 0, 0]
                [ 0, 1, 1, 1, 0, 0]
                [ 0, 0, 1, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 0]
            ]
            multisection: [
                "CR90 Corvette (Fore)".canonicalize()
            ]
            canonical_name: "CR90 Corvette".canonicalize()
        "YT-2400":
            name: "YT-2400"
            canonical_name: "YT-2400 Freighter".canonicalize()
            factions: [ "Rebel Alliance", ]
            attack: 2
            agility: 2
            hull: 5
            shields: 5
            actions: [
                "Focus"
                "Target Lock"
                "Barrel Roll"
            ]
            large: true
            attack_icon: 'xwing-miniatures-font-attack-turret'
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 1, 2, 2, 2, 1, 0]
                [ 1, 1, 2, 1, 1, 0]
                [ 1, 1, 1, 1, 1, 0]
                [ 0, 0, 1, 0, 0, 3]
            ]
        "VT-49 Decimator":
            name: "VT-49 Decimator"
            factions: [ "Galactic Empire", ]
            attack: 3
            agility: 0
            hull: 12
            shields: 4
            actions: [
                "Focus"
                "Target Lock"
            ]
            large: true
            attack_icon: 'xwing-miniatures-font-attack-turret'
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 1, 1, 1, 0, 0]
                [ 1, 2, 2, 2, 1, 0]
                [ 1, 1, 2, 1, 1, 0]
                [ 0, 0, 1, 0, 0, 0]
            ]
        "StarViper":
            name: "StarViper"
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 3
            hull: 4
            shields: 1
            actions: [
                "Focus"
                "Target Lock"
                "Barrel Roll"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 1, 2, 2, 2, 1, 0, 0, 0]
                [ 1, 1, 2, 1, 1, 0, 0, 0]
                [ 0, 1, 2, 1, 0, 0, 3, 3]
                [ 0, 0, 1, 0, 0, 0, 0, 0]
            ]
        "M3-A Interceptor":
            name: "M3-A Interceptor"
            factions: [ "Scum and Villainy" ]
            attack: 2
            agility: 3
            hull: 2
            shields: 1
            actions: [
                "Focus"
                "Target Lock"
                "Barrel Roll"
                "Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 0, 2, 1, 0 ]
                [ 1, 2, 2, 2, 1, 0 ]
                [ 0, 1, 2, 1, 0, 3 ]
                [ 0, 0, 1, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 3 ]
            ]
        "Aggressor":
            name: "Aggressor"
            factions: [ "Scum and Villainy" ]
            attack: 3
            agility: 3
            hull: 4
            shields: 4
            actions: [
                "Focus"
                "Target Lock"
                "Boost"
                "Evade"
            ]
            large: true
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 0, 0 ]
                [ 1, 2, 2, 2, 1, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0, 3, 3 ]
                [ 0, 0, 0, 0, 0, 3, 0, 0 ]
            ]
        "Raider-class Corvette (Fore)":
            name: "Raider-class Corvette (Fore)"
            factions: [ "Galactic Empire" ]
            attack: 4
            agility: 0
            hull: 8
            shields: 6
            actions: [
                "Recover"
                "Reinforce"
            ]
            huge: true
            epic_points: 1.5
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0 ]
            ]
        "Raider-class Corvette (Aft)":
            name: "Raider-class Corvette (Aft)"
            factions: [ "Galactic Empire" ]
            energy: 6
            agility: 0
            hull: 8
            shields: 4
            actions: [
                "Coordinate"
                "Target Lock"
            ]
            huge: true
            epic_points: 1.5
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0 ]
            ]
        "YV-666":
            name: "YV-666"
            factions: [ "Scum and Villainy" ]
            attack: 3
            agility: 1
            hull: 6
            shields: 6
            large: true
            actions: [
                "Focus"
                "Target Lock"
            ]
            attack_icon: 'xwing-miniatures-font-attack-180'
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0 ]
                [ 3, 1, 2, 1, 3, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 0, 0, 1, 0, 0, 0 ]
            ]
        "Kihraxz Fighter":
            name: "Kihraxz Fighter"
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 2
            hull: 4
            shields: 1
            actions: [
                "Focus"
                "Target Lock"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 0, 2, 1, 0 ]
                [ 1, 2, 2, 2, 1, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3 ]
                [ 0, 0, 0, 0, 0, 3 ]
            ]
        "K-Wing":
            name: "K-Wing"
            factions: ["Rebel Alliance"]
            attack: 2
            agility: 1
            hull: 5
            shields: 4
            actions: [
                "Focus"
                "Target Lock"
                "SLAM"
            ]
            attack_icon: 'xwing-miniatures-font-attack-turret'
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
            ]
        "TIE Punisher":
            name: "TIE Punisher"
            factions: ["Galactic Empire"]
            attack: 2
            agility: 1
            hull: 6
            shields: 3
            actions: [
                "Focus"
                "Target Lock"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0 ]
                [ 3, 1, 2, 1, 3, 0 ]
                [ 1, 1, 1, 1, 1, 0 ]
                [ 0, 0, 0, 0, 0, 3 ]
            ]
        "Gozanti-class Cruiser":
            name: "Gozanti-class Cruiser"
            factions: ["Galactic Empire"]
            energy: 4
            agility: 0
            hull: 9
            shields: 5
            huge: true
            epic_points: 2 # guessing it's the same as rebel transport
            actions: [
                "Recover"
                "Reinforce"
                "Coordinate"
                "Target Lock"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0 ]
            ]
        "VCX-100":
            name: "VCX-100"
            factions: ["Rebel Alliance"]
            attack: 4
            agility: 0
            hull: 10
            shields: 6
            large: true
            actions: [
                "Focus"
                "Target Lock"
                "Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 3, 1, 2, 1, 3, 0 ]
                [ 1, 2, 2, 2, 1, 0 ]
                [ 3, 1, 1, 1, 3, 0 ]
                [ 0, 0, 1, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 3 ]
            ]
        "Attack Shuttle":
            name: "Attack Shuttle"
            factions: ["Rebel Alliance"]
            attack: 3
            agility: 2
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Barrel Roll"
                "Evade"
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
            canonical_name: 'TIE Adv. Prototype'.canonicalize()
            factions: ["Galactic Empire"]
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Target Lock"
                "Barrel Roll"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 2, 2, 0, 2, 2, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 0, 0, 2, 0, 0, 3 ]
                [ 0, 0, 1, 0, 0, 0 ]
            ]
        "G-1A Starfighter":
            name: "G-1A Starfighter"
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 1
            hull: 4
            shields: 4
            actions: [
                "Focus"
                "Target Lock"
                "Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0 ]
                [ 1, 1, 2, 1, 1, 0 ]
                [ 0, 3, 2, 3, 0, 3 ]
                [ 0, 0, 1, 0, 0, 3 ]
            ]
        "JumpMaster 5000":
            name: "JumpMaster 5000"
            factions: ["Scum and Villainy"]
            large: true
            attack: 2
            agility: 2
            hull: 5
            shields: 4
            actions: [
                "Focus"
                "Target Lock"
                "Barrel Roll"
            ]
            attack_icon: 'xwing-miniatures-font-attack-turret'
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 2, 2, 1, 1, 0, 0, 0 ]
                [ 2, 2, 2, 1, 1, 0, 1, 3 ]
                [ 0, 1, 1, 1, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0 ]
            ]
        "T-70 X-Wing":
            name: "T-70 X-Wing"
            factions: ["Resistance"]
            attack: 3
            agility: 2
            hull: 3
            shields: 3
            actions: [
                "Focus"
                "Target Lock"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 0, 0, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 3, 3 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
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
                "Target Lock"
                "Barrel Roll"
                "Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 0, 0, 0, 1, 0, 0, 0 ]
                [ 2, 2, 2, 2, 2, 0, 3, 3 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0 ]
            ]
        'ARC-170':
            name: 'ARC-170'
            factions: ["Rebel Alliance"]
            attack: 2
            agility: 1
            hull: 6
            shields: 3
            actions: [
                "Focus"
                "Target Lock"
            ]
            maneuvers: []
        'TIE/sf Fighter':
            name: 'TIE/sf Fighter'
            factions: ["Galactic Empire"]
            attack: 2
            agility: 2
            hull: 3
            shields: 3
            actions: [
                'Focus'
                'Target Lock'
                'Barrel Roll'
            ]
            maneuvers: []
        'Protectorate Starfighter':
            name: 'Protectorate Starfighter'
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 3
            hull: 4
            shields: 0
            actions: [
                'Focus'
                'Target Lock'
                'Barrel Roll'
                'Boost'
            ]
            maneuvers: []
        'Lancer-class Pursuit Craft':
            name: 'Lancer-class Pursuit Craft'
            factions: ["Scum and Villainy"]
            large: true
            attack: 3
            agility: 2
            hull: 7
            shields: 3
            actions: [
                'Focus'
                'Target Lock'
                'Evade'
                'Rotate Arc'
            ]
            maneuvers: []

    # name field is for convenience only
    pilotsById: [
        {
            name: "Wedge Antilles"
            faction: "Rebel Alliance"
            id: 0
            unique: true
            ship: "X-Wing"
            skill: 9
            points: 29
            slots: [
                "Elite"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Garven Dreis"
            faction: "Rebel Alliance"
            id: 1
            unique: true
            ship: "X-Wing"
            skill: 6
            points: 26
            slots: [
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Red Squadron Pilot"
            faction: "Rebel Alliance"
            id: 2
            ship: "X-Wing"
            skill: 4
            points: 23
            slots: [
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Rookie Pilot"
            faction: "Rebel Alliance"
            id: 3
            ship: "X-Wing"
            skill: 2
            points: 21
            slots: [
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Biggs Darklighter"
            faction: "Rebel Alliance"
            id: 4
            unique: true
            ship: "X-Wing"
            skill: 5
            points: 25
            slots: [
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Luke Skywalker"
            faction: "Rebel Alliance"
            id: 5
            unique: true
            ship: "X-Wing"
            skill: 8
            points: 28
            slots: [
                "Elite"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Gray Squadron Pilot"
            faction: "Rebel Alliance"
            id: 6
            ship: "Y-Wing"
            skill: 4
            points: 20
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: '"Dutch" Vander'
            faction: "Rebel Alliance"
            id: 7
            unique: true
            ship: "Y-Wing"
            skill: 6
            points: 23
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Horton Salm"
            faction: "Rebel Alliance"
            id: 8
            unique: true
            ship: "Y-Wing"
            skill: 8
            points: 25
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Gold Squadron Pilot"
            faction: "Rebel Alliance"
            id: 9
            ship: "Y-Wing"
            skill: 2
            points: 18
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Academy Pilot"
            faction: "Galactic Empire"
            id: 10
            ship: "TIE Fighter"
            skill: 1
            points: 12
            slots: []
        }
        {
            name: "Obsidian Squadron Pilot"
            faction: "Galactic Empire"
            id: 11
            ship: "TIE Fighter"
            skill: 3
            points: 13
            slots: []
        }
        {
            name: "Black Squadron Pilot"
            faction: "Galactic Empire"
            id: 12
            ship: "TIE Fighter"
            skill: 4
            points: 14
            slots: [
                "Elite"
            ]
        }
        {
            name: '"Winged Gundark"'
            faction: "Galactic Empire"
            id: 13
            unique: true
            ship: "TIE Fighter"
            skill: 5
            points: 15
            slots: [ ]
        }
        {
            name: '"Night Beast"'
            faction: "Galactic Empire"
            id: 14
            unique: true
            ship: "TIE Fighter"
            skill: 5
            points: 15
            slots: [ ]
        }
        {
            name: '"Backstabber"'
            faction: "Galactic Empire"
            id: 15
            unique: true
            ship: "TIE Fighter"
            skill: 6
            points: 16
            slots: [ ]
        }
        {
            name: '"Dark Curse"'
            faction: "Galactic Empire"
            id: 16
            unique: true
            ship: "TIE Fighter"
            skill: 6
            points: 16
            slots: [ ]
        }
        {
            name: '"Mauler Mithel"'
            faction: "Galactic Empire"
            id: 17
            unique: true
            ship: "TIE Fighter"
            skill: 7
            points: 17
            slots: [
                "Elite"
            ]
        }
        {
            name: '"Howlrunner"'
            faction: "Galactic Empire"
            id: 18
            unique: true
            ship: "TIE Fighter"
            skill: 8
            points: 18
            slots: [
                "Elite"
            ]
        }
        {
            name: "Maarek Stele"
            faction: "Galactic Empire"
            id: 19
            unique: true
            ship: "TIE Advanced"
            skill: 7
            points: 27
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Tempest Squadron Pilot"
            faction: "Galactic Empire"
            id: 20
            ship: "TIE Advanced"
            skill: 2
            points: 21
            slots: [
                "Missile"
            ]
        }
        {
            name: "Storm Squadron Pilot"
            faction: "Galactic Empire"
            id: 21
            ship: "TIE Advanced"
            skill: 4
            points: 23
            slots: [
                "Missile"
            ]
        }
        {
            name: "Darth Vader"
            faction: "Galactic Empire"
            id: 22
            unique: true
            ship: "TIE Advanced"
            skill: 9
            points: 29
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Alpha Squadron Pilot"
            faction: "Galactic Empire"
            id: 23
            ship: "TIE Interceptor"
            skill: 1
            points: 18
            slots: [ ]
        }
        {
            name: "Avenger Squadron Pilot"
            faction: "Galactic Empire"
            id: 24
            ship: "TIE Interceptor"
            skill: 3
            points: 20
            slots: [ ]
        }
        {
            name: "Saber Squadron Pilot"
            faction: "Galactic Empire"
            id: 25
            ship: "TIE Interceptor"
            skill: 4
            points: 21
            slots: [
                "Elite"
            ]
        }
        {
            name: "\"Fel's Wrath\""
            faction: "Galactic Empire"
            id: 26
            unique: true
            ship: "TIE Interceptor"
            skill: 5
            points: 23
            slots: [ ]
        }
        {
            name: "Turr Phennir"
            faction: "Galactic Empire"
            id: 27
            unique: true
            ship: "TIE Interceptor"
            skill: 7
            points: 25
            slots: [
                "Elite"
            ]
        }
        {
            name: "Soontir Fel"
            faction: "Galactic Empire"
            id: 28
            unique: true
            ship: "TIE Interceptor"
            skill: 9
            points: 27
            slots: [
                "Elite"
            ]
        }
        {
            name: "Tycho Celchu"
            faction: "Rebel Alliance"
            id: 29
            unique: true
            ship: "A-Wing"
            skill: 8
            points: 26
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Arvel Crynyd"
            faction: "Rebel Alliance"
            id: 30
            unique: true
            ship: "A-Wing"
            skill: 6
            points: 23
            slots: [
                "Missile"
            ]
        }
        {
            name: "Green Squadron Pilot"
            faction: "Rebel Alliance"
            id: 31
            ship: "A-Wing"
            skill: 3
            points: 19
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Prototype Pilot"
            faction: "Rebel Alliance"
            id: 32
            ship: "A-Wing"
            skill: 1
            points: 17
            slots: [
                "Missile"
            ]
        }
        {
            name: "Outer Rim Smuggler"
            faction: "Rebel Alliance"
            id: 33
            ship: "YT-1300"
            skill: 1
            points: 27
            slots: [
                "Crew"
                "Crew"
            ]
        }
        {
            name: "Chewbacca"
            faction: "Rebel Alliance"
            id: 34
            unique: true
            ship: "YT-1300"
            skill: 5
            points: 42
            slots: [
                "Elite"
                "Missile"
                "Crew"
                "Crew"
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        }
        {
            name: "Lando Calrissian"
            faction: "Rebel Alliance"
            id: 35
            unique: true
            ship: "YT-1300"
            skill: 7
            points: 44
            slots: [
                "Elite"
                "Missile"
                "Crew"
                "Crew"
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        }
        {
            name: "Han Solo"
            faction: "Rebel Alliance"
            id: 36
            unique: true
            ship: "YT-1300"
            skill: 9
            points: 46
            slots: [
                "Elite"
                "Missile"
                "Crew"
                "Crew"
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        }
        {
            name: "Kath Scarlet"
            faction: "Galactic Empire"
            id: 37
            unique: true
            ship: "Firespray-31"
            skill: 7
            points: 38
            slots: [
                "Elite"
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
            ]
        }
        {
            name: "Boba Fett"
            faction: "Galactic Empire"
            id: 38
            unique: true
            ship: "Firespray-31"
            skill: 8
            points: 39
            slots: [
                "Elite"
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
            ]
        }
        {
            name: "Krassis Trelix"
            faction: "Galactic Empire"
            id: 39
            unique: true
            ship: "Firespray-31"
            skill: 5
            points: 36
            slots: [
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
            ]
        }
        {
            name: "Bounty Hunter"
            faction: "Galactic Empire"
            id: 40
            ship: "Firespray-31"
            skill: 3
            points: 33
            slots: [
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
            ]
        }
        {
            name: "Ten Numb"
            faction: "Rebel Alliance"
            id: 41
            unique: true
            ship: "B-Wing"
            skill: 8
            points: 31
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Torpedo"
                "Torpedo"
            ]
        }
        {
            name: "Ibtisam"
            faction: "Rebel Alliance"
            id: 42
            unique: true
            ship: "B-Wing"
            skill: 6
            points: 28
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Torpedo"
                "Torpedo"
            ]
        }
        {
            name: "Dagger Squadron Pilot"
            faction: "Rebel Alliance"
            id: 43
            ship: "B-Wing"
            skill: 4
            points: 24
            slots: [
                "System"
                "Cannon"
                "Torpedo"
                "Torpedo"
            ]
        }
        {
            name: "Blue Squadron Pilot"
            faction: "Rebel Alliance"
            id: 44
            ship: "B-Wing"
            skill: 2
            points: 22
            slots: [
                "System"
                "Cannon"
                "Torpedo"
                "Torpedo"
            ]
        }
        {
            name: "Rebel Operative"
            faction: "Rebel Alliance"
            id: 45
            ship: "HWK-290"
            skill: 2
            points: 16
            slots: [
                "Turret"
                "Crew"
            ]
        }
        {
            name: "Roark Garnet"
            faction: "Rebel Alliance"
            id: 46
            unique: true
            ship: "HWK-290"
            skill: 4
            points: 19
            slots: [
                "Turret"
                "Crew"
            ]
        }
        {
            name: "Kyle Katarn"
            faction: "Rebel Alliance"
            id: 47
            unique: true
            ship: "HWK-290"
            skill: 6
            points: 21
            slots: [
                "Elite"
                "Turret"
                "Crew"
            ]
        }
        {
            name: "Jan Ors"
            faction: "Rebel Alliance"
            id: 48
            unique: true
            ship: "HWK-290"
            skill: 8
            points: 25
            slots: [
                "Elite"
                "Turret"
                "Crew"
            ]
        }
        {
            name: "Scimitar Squadron Pilot"
            faction: "Galactic Empire"
            id: 49
            ship: "TIE Bomber"
            skill: 2
            points: 16
            slots: [
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
            ]
        }
        {
            name: "Gamma Squadron Pilot"
            faction: "Galactic Empire"
            id: 50
            ship: "TIE Bomber"
            skill: 4
            points: 18
            slots: [
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
            ]
        }
        {
            name: "Captain Jonus"
            faction: "Galactic Empire"
            id: 51
            unique: true
            ship: "TIE Bomber"
            skill: 6
            points: 22
            slots: [
                "Elite"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
            ]
        }
        {
            name: "Major Rhymer"
            faction: "Galactic Empire"
            id: 52
            unique: true
            ship: "TIE Bomber"
            skill: 7
            points: 26
            slots: [
                "Elite"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
            ]
        }
        {
            name: "Captain Kagi"
            faction: "Galactic Empire"
            id: 53
            unique: true
            ship: "Lambda-Class Shuttle"
            skill: 8
            points: 27
            slots: [
                "System"
                "Cannon"
                "Crew"
                "Crew"
            ]
        }
        {
            name: "Colonel Jendon"
            faction: "Galactic Empire"
            id: 54
            unique: true
            ship: "Lambda-Class Shuttle"
            skill: 6
            points: 26
            slots: [
                "System"
                "Cannon"
                "Crew"
                "Crew"
            ]
        }
        {
            name: "Captain Yorr"
            faction: "Galactic Empire"
            id: 55
            unique: true
            ship: "Lambda-Class Shuttle"
            skill: 4
            points: 24
            slots: [
                "System"
                "Cannon"
                "Crew"
                "Crew"
            ]
        }
        {
            name: "Omicron Group Pilot"
            faction: "Galactic Empire"
            id: 56
            ship: "Lambda-Class Shuttle"
            skill: 2
            points: 21
            slots: [
                "System"
                "Cannon"
                "Crew"
                "Crew"
            ]
        }
        {
            name: "Lieutenant Lorrir"
            faction: "Galactic Empire"
            id: 57
            unique: true
            ship: "TIE Interceptor"
            skill: 5
            points: 23
            slots: [ ]
        }
        {
            name: "Royal Guard Pilot"
            faction: "Galactic Empire"
            id: 58
            ship: "TIE Interceptor"
            skill: 6
            points: 22
            slots: [
                "Elite"
            ]
        }
        {
            name: "Tetran Cowall"
            faction: "Galactic Empire"
            id: 59
            unique: true
            ship: "TIE Interceptor"
            skill: 7
            points: 24
            slots: [
                "Elite"
            ]
            modifier_func: (stats) ->
                # add speed 1 k-turn to table (Interceptor already has 3/5)
                stats.maneuvers[1][5] = 3
        }
        {
            name: "I messed up this pilot, sorry"
            id: 60
            skip: true
        }
        {
            name: "Kir Kanos"
            faction: "Galactic Empire"
            id: 61
            unique: true
            ship: "TIE Interceptor"
            skill: 6
            points: 24
            slots: [ ]
        }
        {
            name: "Carnor Jax"
            faction: "Galactic Empire"
            id: 62
            unique: true
            ship: "TIE Interceptor"
            skill: 8
            points: 26
            slots: [
                "Elite"
            ]
        }
        {
            name: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            id: 63
            epic: true
            ship: "GR-75 Medium Transport"
            skill: 3
            points: 30
            slots: [
                "Crew"
                "Crew"
                "Cargo"
                "Cargo"
                "Cargo"
            ]
        }
        {
            name: "Bandit Squadron Pilot"
            faction: "Rebel Alliance"
            id: 64
            ship: "Z-95 Headhunter"
            skill: 2
            points: 12
            slots: [
                "Missile"
            ]
        }
        {
            name: "Tala Squadron Pilot"
            faction: "Rebel Alliance"
            id: 65
            ship: "Z-95 Headhunter"
            skill: 4
            points: 13
            slots: [
                "Missile"
            ]
        }
        {
            name: "Lieutenant Blount"
            faction: "Rebel Alliance"
            id: 66
            unique: true
            ship: "Z-95 Headhunter"
            skill: 6
            points: 17
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Airen Cracken"
            faction: "Rebel Alliance"
            id: 67
            unique: true
            ship: "Z-95 Headhunter"
            skill: 8
            points: 19
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Delta Squadron Pilot"
            faction: "Galactic Empire"
            id: 68
            ship: "TIE Defender"
            skill: 1
            points: 30
            slots: [
                "Cannon"
                "Missile"
            ]
        }
        {
            name: "Onyx Squadron Pilot"
            faction: "Galactic Empire"
            id: 69
            ship: "TIE Defender"
            skill: 3
            points: 32
            slots: [
                "Cannon"
                "Missile"
            ]
        }
        {
            name: "Colonel Vessery"
            faction: "Galactic Empire"
            id: 70
            unique: true
            ship: "TIE Defender"
            skill: 6
            points: 35
            slots: [
                "Elite"
                "Cannon"
                "Missile"
            ]
        }
        {
            name: "Rexler Brath"
            faction: "Galactic Empire"
            id: 71
            unique: true
            ship: "TIE Defender"
            skill: 8
            points: 37
            slots: [
                "Elite"
                "Cannon"
                "Missile"
            ]
        }
        {
            name: "Knave Squadron Pilot"
            faction: "Rebel Alliance"
            id: 72
            ship: "E-Wing"
            skill: 1
            points: 27
            slots: [
                "System"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Blackmoon Squadron Pilot"
            faction: "Rebel Alliance"
            id: 73
            ship: "E-Wing"
            skill: 3
            points: 29
            slots: [
                "System"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Etahn A'baht"
            faction: "Rebel Alliance"
            id: 74
            unique: true
            ship: "E-Wing"
            skill: 5
            points: 32
            slots: [
                "Elite"
                "System"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Corran Horn"
            faction: "Rebel Alliance"
            id: 75
            unique: true
            ship: "E-Wing"
            skill: 8
            points: 35
            slots: [
                "Elite"
                "System"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Sigma Squadron Pilot"
            faction: "Galactic Empire"
            id: 76
            ship: "TIE Phantom"
            skill: 3
            points: 25
            slots: [
                "System"
                "Crew"
            ]
        }
        {
            name: "Shadow Squadron Pilot"
            faction: "Galactic Empire"
            id: 77
            ship: "TIE Phantom"
            skill: 5
            points: 27
            slots: [
                "System"
                "Crew"
            ]
        }
        {
            name: '"Echo"'
            faction: "Galactic Empire"
            id: 78
            unique: true
            ship: "TIE Phantom"
            skill: 6
            points: 30
            slots: [
                "Elite"
                "System"
                "Crew"
            ]
        }
        {
            name: '"Whisper"'
            faction: "Galactic Empire"
            id: 79
            unique: true
            ship: "TIE Phantom"
            skill: 7
            points: 32
            slots: [
                "Elite"
                "System"
                "Crew"
            ]
        }
        {
            name: "CR90 Corvette (Fore)"
            faction: "Rebel Alliance"
            id: 80
            epic: true
            ship: "CR90 Corvette (Fore)"
            skill: 4
            points: 50
            slots: [
                "Crew"
                "Hardpoint"
                "Hardpoint"
                "Team"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "CR90 Corvette (Aft)"
            faction: "Rebel Alliance"
            id: 81
            epic: true
            ship: "CR90 Corvette (Aft)"
            skill: 4
            points: 40
            slots: [
                "Crew"
                "Hardpoint"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "Wes Janson"
            faction: "Rebel Alliance"
            id: 82
            unique: true
            ship: "X-Wing"
            skill: 8
            points: 29
            slots: [
                "Elite"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Jek Porkins"
            faction: "Rebel Alliance"
            id: 83
            unique: true
            ship: "X-Wing"
            skill: 7
            points: 26
            slots: [
                "Elite"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: '"Hobbie" Klivian'
            faction: "Rebel Alliance"
            id: 84
            unique: true
            ship: "X-Wing"
            skill: 5
            points: 25
            slots: [
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Tarn Mison"
            faction: "Rebel Alliance"
            id: 85
            unique: true
            ship: "X-Wing"
            skill: 3
            points: 23
            slots: [
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Jake Farrell"
            faction: "Rebel Alliance"
            id: 86
            unique: true
            ship: "A-Wing"
            skill: 7
            points: 24
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Gemmer Sojan"
            faction: "Rebel Alliance"
            id: 87
            unique: true
            ship: "A-Wing"
            skill: 5
            points: 22
            slots: [
                "Missile"
            ]
        }
        {
            name: "Keyan Farlander"
            faction: "Rebel Alliance"
            id: 88
            unique: true
            ship: "B-Wing"
            skill: 7
            points: 29
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Torpedo"
                "Torpedo"
            ]
        }
        {
            name: "Nera Dantels"
            faction: "Rebel Alliance"
            id: 89
            unique: true
            ship: "B-Wing"
            skill: 5
            points: 26
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Torpedo"
                "Torpedo"
            ]
        }
        {
            name: "CR90 Corvette (Crippled Fore)"
            skip: true
            faction: "Rebel Alliance"
            id: 90
            ship: "CR90 Corvette (Fore)"
            skill: 4
            points: 0
            epic: true
            slots: [
                "Crew"
            ]
            ship_override:
                attack: 2
                agility: 0
                hull: 0
                shields: 0
                actions: []
        }
        {
            name: "CR90 Corvette (Crippled Aft)"
            skip: true
            faction: "Rebel Alliance"
            id: 91
            ship: "CR90 Corvette (Aft)"
            skill: 4
            points: 0
            epic: true
            slots: [
                "Cargo"
            ]
            ship_override:
                energy: 1
                agility: 0
                hull: 0
                shields: 0
                actions: []
            modifier_func: (stats) ->
                stats.maneuvers[2][1] = 0
                stats.maneuvers[2][3] = 0
                stats.maneuvers[4][2] = 0
        }
        {
            name: "Wild Space Fringer"
            faction: "Rebel Alliance"
            id: 92
            ship: "YT-2400"
            skill: 2
            points: 30
            slots: [
                "Cannon"
                "Missile"
                "Crew"
            ]
        }
        {
            name: "Eaden Vrill"
            faction: "Rebel Alliance"
            id: 93
            ship: "YT-2400"
            unique: true
            skill: 3
            points: 32
            slots: [
                "Cannon"
                "Missile"
                "Crew"
            ]
        }
        {
            name: '"Leebo"'
            faction: "Rebel Alliance"
            id: 94
            ship: "YT-2400"
            unique: true
            skill: 5
            points: 34
            slots: [
                "Elite"
                "Cannon"
                "Missile"
                "Crew"
            ]
        }
        {
            name: "Dash Rendar"
            faction: "Rebel Alliance"
            id: 95
            ship: "YT-2400"
            unique: true
            skill: 7
            points: 36
            slots: [
                "Elite"
                "Cannon"
                "Missile"
                "Crew"
            ]
        }
        {
            name: "Patrol Leader"
            faction: "Galactic Empire"
            id: 96
            ship: "VT-49 Decimator"
            skill: 3
            points: 40
            slots: [
                "Torpedo"
                "Crew"
                "Crew"
                "Crew"
                "Bomb"
            ]
        }
        {
            name: "Captain Oicunn"
            faction: "Galactic Empire"
            id: 97
            ship: "VT-49 Decimator"
            skill: 4
            points: 42
            unique: true
            slots: [
                "Elite"
                "Torpedo"
                "Crew"
                "Crew"
                "Crew"
                "Bomb"
            ]
        }
        {
            name: "Commander Kenkirk"
            faction: "Galactic Empire"
            id: 98
            ship: "VT-49 Decimator"
            skill: 6
            points: 44
            unique: true
            slots: [
                "Elite"
                "Torpedo"
                "Crew"
                "Crew"
                "Crew"
                "Bomb"
            ]
        }
        {
            name: "Rear Admiral Chiraneau"
            faction: "Galactic Empire"
            id: 99
            ship: "VT-49 Decimator"
            skill: 8
            points: 46
            unique: true
            slots: [
                "Elite"
                "Torpedo"
                "Crew"
                "Crew"
                "Crew"
                "Bomb"
            ]
        }
        {
            name: "Prince Xizor"
            faction: "Scum and Villainy"
            id: 100
            unique: true
            ship: "StarViper"
            skill: 7
            points: 31
            slots: [
                "Elite"
                "Torpedo"
            ]
        }
        {
            name: "Guri"
            faction: "Scum and Villainy"
            id: 101
            unique: true
            ship: "StarViper"
            skill: 5
            points: 30
            slots: [
                "Elite"
                "Torpedo"
            ]
        }
        {
            name: "Black Sun Vigo"
            faction: "Scum and Villainy"
            id: 102
            ship: "StarViper"
            skill: 3
            points: 27
            slots: [
                "Torpedo"
            ]
        }
        {
            name: "Black Sun Enforcer"
            faction: "Scum and Villainy"
            id: 103
            ship: "StarViper"
            skill: 1
            points: 25
            slots: [
                "Torpedo"
            ]
        }
        {
            name: "Serissu"
            faction: "Scum and Villainy"
            id: 104
            ship: "M3-A Interceptor"
            skill: 8
            points: 20
            unique: true
            slots: [
                "Elite"
            ]
        }
        {
            name: "Laetin A'shera"
            faction: "Scum and Villainy"
            id: 105
            ship: "M3-A Interceptor"
            skill: 6
            points: 18
            unique: true
            slots: [ ]
        }
        {
            name: "Tansarii Point Veteran"
            faction: "Scum and Villainy"
            id: 106
            ship: "M3-A Interceptor"
            skill: 5
            points: 17
            slots: [
                "Elite"
            ]
        }
        {
            name: "Cartel Spacer"
            faction: "Scum and Villainy"
            id: 107
            ship: "M3-A Interceptor"
            skill: 2
            points: 14
            slots: [ ]
        }
        {
            name: "IG-88A"
            faction: "Scum and Villainy"
            id: 108
            unique: true
            ship: "Aggressor"
            skill: 6
            points: 36
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Cannon"
                "Bomb"
                "Illicit"
            ]
        }
        {
            name: "IG-88B"
            faction: "Scum and Villainy"
            id: 109
            unique: true
            ship: "Aggressor"
            skill: 6
            points: 36
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Cannon"
                "Bomb"
                "Illicit"
            ]
        }
        {
            name: "IG-88C"
            faction: "Scum and Villainy"
            id: 110
            unique: true
            ship: "Aggressor"
            skill: 6
            points: 36
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Cannon"
                "Bomb"
                "Illicit"
            ]
        }
        {
            name: "IG-88D"
            faction: "Scum and Villainy"
            id: 111
            unique: true
            ship: "Aggressor"
            skill: 6
            points: 36
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Cannon"
                "Bomb"
                "Illicit"
            ]
        }
        {
            name: "N'Dru Suhlak"
            unique: true
            faction: "Scum and Villainy"
            id: 112
            ship: "Z-95 Headhunter"
            skill: 7
            points: 17
            slots: [
                "Elite"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Kaa'To Leeachos"
            unique: true
            faction: "Scum and Villainy"
            id: 113
            ship: "Z-95 Headhunter"
            skill: 5
            points: 15
            slots: [
                "Elite"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Black Sun Soldier"
            faction: "Scum and Villainy"
            id: 114
            ship: "Z-95 Headhunter"
            skill: 3
            points: 13
            slots: [
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Binayre Pirate"
            faction: "Scum and Villainy"
            id: 115
            ship: "Z-95 Headhunter"
            skill: 1
            points: 12
            slots: [
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Boba Fett (Scum)"
            canonical_name: 'Boba Fett'.canonicalize()
            faction: "Scum and Villainy"
            id: 116
            ship: "Firespray-31"
            skill: 8
            points: 39
            unique: true
            slots: [
                "Elite"
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Kath Scarlet (Scum)"
            canonical_name: 'Kath Scarlet'.canonicalize()
            unique: true
            faction: "Scum and Villainy"
            id: 117
            ship: "Firespray-31"
            skill: 7
            points: 38
            slots: [
                "Elite"
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Emon Azzameen"
            unique: true
            faction: "Scum and Villainy"
            id: 118
            ship: "Firespray-31"
            skill: 6
            points: 36
            slots: [
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Mandalorian Mercenary"
            faction: "Scum and Villainy"
            id: 119
            ship: "Firespray-31"
            skill: 5
            points: 35
            slots: [
                "Elite"
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Kavil"
            unique: true
            faction: "Scum and Villainy"
            id: 120
            ship: "Y-Wing"
            skill: 7
            points: 24
            slots: [
                "Elite"
                "Turret"
                "Torpedo"
                "Torpedo"
                "Salvaged Astromech"
            ]
        }
        {
            name: "Drea Renthal"
            unique: true
            faction: "Scum and Villainy"
            id: 121
            ship: "Y-Wing"
            skill: 5
            points: 22
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Salvaged Astromech"
            ]
        }
        {
            name: "Hired Gun"
            faction: "Scum and Villainy"
            id: 122
            ship: "Y-Wing"
            skill: 4
            points: 20
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Salvaged Astromech"
            ]
        }
        {
            name: "Syndicate Thug"
            faction: "Scum and Villainy"
            id: 123
            ship: "Y-Wing"
            skill: 2
            points: 18
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Salvaged Astromech"
            ]
        }
        {
            name: "Dace Bonearm"
            unique: true
            faction: "Scum and Villainy"
            id: 124
            ship: "HWK-290"
            skill: 7
            points: 23
            slots: [
                "Elite"
                "Turret"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Palob Godalhi"
            unique: true
            faction: "Scum and Villainy"
            id: 125
            ship: "HWK-290"
            skill: 5
            points: 20
            slots: [
                "Elite"
                "Turret"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Torkil Mux"
            unique: true
            faction: "Scum and Villainy"
            id: 126
            ship: "HWK-290"
            skill: 3
            points: 19
            slots: [
                "Turret"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Spice Runner"
            faction: "Scum and Villainy"
            id: 127
            ship: "HWK-290"
            skill: 1
            points: 16
            slots: [
                "Turret"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Commander Alozen"
            faction: "Galactic Empire"
            id: 128
            ship: "TIE Advanced"
            unique: true
            skill: 5
            points: 25
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Raider-class Corvette (Fore)"
            faction: "Galactic Empire"
            id: 129
            ship: "Raider-class Corvette (Fore)"
            skill: 4
            points: 50
            epic: true
            slots: [
                "Hardpoint"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "Raider-class Corvette (Aft)"
            faction: "Galactic Empire"
            id: 130
            ship: "Raider-class Corvette (Aft)"
            skill: 4
            points: 50
            epic: true
            slots: [
                "Crew"
                "Crew"
                "Hardpoint"
                "Hardpoint"
                "Team"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "Bossk"
            faction: "Scum and Villainy"
            id: 131
            ship: "YV-666"
            unique: true
            skill: 7
            points: 35
            slots: [
                "Elite"
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Moralo Eval"
            faction: "Scum and Villainy"
            id: 132
            ship: "YV-666"
            unique: true
            skill: 6
            points: 34
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Latts Razzi"
            faction: "Scum and Villainy"
            id: 133
            ship: "YV-666"
            unique: true
            skill: 5
            points: 33
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Trandoshan Slaver"
            faction: "Scum and Villainy"
            id: 134
            ship: "YV-666"
            skill: 2
            points: 29
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Talonbane Cobra"
            unique: true
            id: 135
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 9
            slots: [
                "Elite"
                "Missile"
                "Illicit"
            ]
            points: 28
        }
        {
            name: "Graz the Hunter"
            unique: true
            id: 136
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 6
            slots: [
                "Missile"
                "Illicit"
            ]
            points: 25
        }
        {
            name: "Black Sun Ace"
            faction: "Scum and Villainy"
            id: 137
            ship: "Kihraxz Fighter"
            skill: 5
            slots: [
                "Elite"
                "Missile"
                "Illicit"
            ]
            points: 23
        }
        {
            name: "Cartel Marauder"
            faction: "Scum and Villainy"
            id: 138
            ship: "Kihraxz Fighter"
            skill: 2
            slots: [
                "Missile"
                "Illicit"
            ]
            points: 20
        }
        {
            name: "Miranda Doni"
            unique: true
            id: 139
            faction: "Rebel Alliance"
            ship: "K-Wing"
            skill: 8
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Crew"
                "Bomb"
                "Bomb"
            ]
            points: 29
        }
        {
            name: "Esege Tuketu"
            unique: true
            id: 140
            faction: "Rebel Alliance"
            ship: "K-Wing"
            skill: 6
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Crew"
                "Bomb"
                "Bomb"
            ]
            points: 28
        }
        {
            name: "Guardian Squadron Pilot"
            faction: "Rebel Alliance"
            id: 141
            ship: "K-Wing"
            skill: 4
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Crew"
                "Bomb"
                "Bomb"
            ]
            points: 25
        }
        {
            name: "Warden Squadron Pilot"
            faction: "Rebel Alliance"
            id: 142
            ship: "K-Wing"
            skill: 2
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Crew"
                "Bomb"
                "Bomb"
            ]
            points: 23
        }
        {
            name: '"Redline"'
            unique: true
            id: 143
            faction: "Galactic Empire"
            ship: "TIE Punisher"
            skill: 7
            slots: [
                "System"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
                "Bomb"
            ]
            points: 27
        }
        {
            name: '"Deathrain"'
            unique: true
            id: 144
            faction: "Galactic Empire"
            ship: "TIE Punisher"
            skill: 6
            slots: [
                "System"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
                "Bomb"
            ]
            points: 26
        }
        {
            name: 'Black Eight Squadron Pilot'
            canonical_name: 'Black Eight Sq. Pilot'.canonicalize()
            faction: "Galactic Empire"
            id: 145
            ship: "TIE Punisher"
            skill: 4
            slots: [
                "System"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
                "Bomb"
            ]
            points: 23
        }
        {
            name: 'Cutlass Squadron Pilot'
            faction: "Galactic Empire"
            id: 146
            ship: "TIE Punisher"
            skill: 2
            slots: [
                "System"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
                "Bomb"
            ]
            points: 21
        }
        {
            name: "Juno Eclipse"
            id: 147
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            unique: true
            skill: 8
            points: 28
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Zertik Strom"
            id: 148
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            unique: true
            skill: 6
            points: 26
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Lieutenant Colzet"
            id: 149
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            unique: true
            skill: 3
            points: 23
            slots: [
                "Missile"
            ]
        }
        {
            name: "Gozanti-class Cruiser"
            id: 150
            faction: "Galactic Empire"
            ship: "Gozanti-class Cruiser"
            skill: 2
            slots: [
                'Crew'
                'Crew'
                'Hardpoint'
                'Team'
                'Cargo'
                'Cargo'
            ]
            points: 40
        }
        {
            name: '"Scourge"'
            id: 151
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 7
            slots: [
                'Elite'
            ]
            points: 17
        }
        {
            name: '"Youngster"'
            id: 152
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 6
            slots: [
                'Elite'
            ]
            points: 15
        }
        {
            name: '"Wampa"'
            id: 153
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 4
            slots: []
            points: 14
        }
        {
            name: '"Chaser"'
            id: 154
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 3
            slots: []
            points: 14
        }
        {
            name: "Hera Syndulla"
            id: 155
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 7
            slots: [
                'System'
                'Turret'
                'Torpedo'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 40
        }
        {
            name: "Kanan Jarrus"
            id: 156
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 5
            slots: [
                'System'
                'Turret'
                'Torpedo'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 38
        }
        {
            name: '"Chopper"'
            id: 157
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 4
            slots: [
                'System'
                'Turret'
                'Torpedo'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 37
        }
        {
            name: 'Lothal Rebel'
            id: 158
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 3
            slots: [
                'System'
                'Turret'
                'Torpedo'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 35
        }
        {
            name: 'Hera Syndulla (Attack Shuttle)'
            id: 159
            canonical_name: 'Hera Syndulla'.canonicalize()
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 7
            slots: [
                'Elite'
                'Turret'
                'Crew'
            ]
            points: 22
        }
        {
            name: 'Sabine Wren'
            id: 160
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 5
            slots: [
                'Elite'
                'Turret'
                'Crew'
            ]
            points: 21
        }
        {
            name: 'Ezra Bridger'
            id: 161
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 4
            slots: [
                'Elite'
                'Turret'
                'Crew'
            ]
            points: 20
        }
        {
            name: '"Zeb" Orrelios'
            id: 162
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 3
            slots: [
                'Turret'
                'Crew'
            ]
            points: 18
        }
        {
            name: "The Inquisitor"
            id: 163
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 8
            slots: [
                'Elite'
                'Missile'
            ]
            points: 25
        }
        {
            name: "Valen Rudor"
            id: 164
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 6
            slots: [
                'Elite'
                'Missile'
            ]
            points: 22
        }
        {
            name: "Baron of the Empire"
            id: 165
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 4
            slots: [
                'Elite'
                'Missile'
            ]
            points: 19
        }
        {
            name: "Sienar Test Pilot"
            id: 166
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 2
            slots: [
                'Missile'
            ]
            points: 16
        }
        {
            name: "Zuckuss"
            id: 167
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 7
            slots: [
                'Elite'
                'Crew'
                'System'
                'Illicit'
            ]
            points: 28
        }
        {
            name: "4-LOM"
            id: 168
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 6
            slots: [
                'Elite'
                'Crew'
                'System'
                'Illicit'
            ]
            points: 27
        }
        {
            name: "Gand Findsman"
            id: 169
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 5
            slots: [
                'Elite'
                'Crew'
                'System'
                'Illicit'
            ]
            points: 25
        }
        {
            name: "Ruthless Freelancer"
            id: 170
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            slots: [
                'Crew'
                'System'
                'Illicit'
            ]
            points: 23
        }
        {
            name: "Dengar"
            id: 171
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 9
            slots: [
                'Elite'
                'Torpedo'
                'Torpedo'
                'Crew'
                'Salvaged Astromech'
                'Illicit'
            ]
            points: 33
        }
        {
            name: "Tel Trevura"
            id: 172
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 7
            slots: [
                'Elite'
                'Torpedo'
                'Torpedo'
                'Crew'
                'Salvaged Astromech'
                'Illicit'
            ]
            points: 30
        }
        {
            name: "Manaroo"
            id: 173
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 4
            slots: [
                'Elite'
                'Torpedo'
                'Torpedo'
                'Crew'
                'Salvaged Astromech'
                'Illicit'
            ]
            points: 27
        }
        {
            name: "Contracted Scout"
            id: 174
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 3
            slots: [
                'Elite'
                'Torpedo'
                'Torpedo'
                'Crew'
                'Salvaged Astromech'
                'Illicit'
            ]
            points: 25
        }

        # T-70
        {
            name: "Poe Dameron"
            id: 175
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 8
            slots: [
                'Elite'
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 31
        }
        {
            name: '"Blue Ace"'
            id: 176
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 5
            slots: [
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 27
        }
        {
            name: "Red Squadron Veteran"
            id: 177
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 4
            slots: [
                'Elite'
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 26
        }
        {
            name: "Blue Squadron Novice"
            id: 178
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 2
            slots: [
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 24
        }

        # TIE/fo
        {
            name: '"Omega Ace"'
            id: 179
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 7
            slots: [
                'Elite'
                'Tech'
            ]
            points: 20
        }
        {
            name: '"Epsilon Leader"'
            id: 180
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 6
            slots: [
                'Tech'
            ]
            points: 19
        }
        {
            name: '"Zeta Ace"'
            id: 181
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 5
            slots: [
                'Elite'
                'Tech'
            ]
            points: 18
        }
        {
            name: "Omega Squadron Pilot"
            id: 182
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 4
            slots: [
                'Elite'
                'Tech'
            ]
            points: 17
        }
        {
            name: "Zeta Squadron Pilot"
            id: 183
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 3
            slots: [
                'Tech'
            ]
            points: 16
        }
        {
            name: "Epsilon Squadron Pilot"
            id: 184
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 1
            slots: [
                'Tech'
            ]
            points: 15
        }

        {
            name: "Ello Asty"
            id: 185
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 7
            slots: [
                'Elite'
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 30
        }
        {
            name: '"Red Ace"'
            id: 186
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 6
            slots: [
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 29
        }
        {
            name: '"Omega Leader"'
            id: 187
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 8
            slots: [
                'Elite'
                'Tech'
            ]
            points: 21
        }
        {
            name: '"Zeta Leader"'
            id: 188
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 7
            slots: [
                'Elite'
                'Tech'
            ]
            points: 20
        }
        {
            name: '"Epsilon Ace"'
            id: 189
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 4
            slots: [
                'Tech'
            ]
            points: 17
        }
        {
            name: "Tomax Bren"
            id: 190
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 8
            slots: [
                'Elite'
                'Torpedo'
                'Torpedo'
                'Missile'
                'Missile'
                'Bomb'
            ]
            points: 24
        }
        {
            name: "Gamma Squadron Veteran"
            id: 191
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 5
            slots: [
                'Elite'
                'Torpedo'
                'Torpedo'
                'Missile'
                'Missile'
                'Bomb'
            ]
            points: 19
        }
        {
            name: '"Deathfire"'
            id: 192
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 3
            slots: [
                'Torpedo'
                'Torpedo'
                'Missile'
                'Missile'
                'Bomb'
            ]
            points: 17
        }
        {
            name: "Maarek Stele (TIE Defender)"
            canonical_name: 'Maarek Stele'.canonicalize()
            id: 193
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 7
            slots: [
                'Elite'
                'Cannon'
                'Missile'
            ]
            points: 35
        }
        {
            name: "Glaive Squadron Pilot"
            id: 194
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 6
            slots: [
                'Elite'
                'Cannon'
                'Missile'
            ]
            points: 34
        }
        {
            name: "Countess Ryad"
            id: 195
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 5
            slots: [
                'Elite'
                'Cannon'
                'Missile'
            ]
            points: 34
        }
        {
            name: "Poe Dameron (PS9)"
            canonical_name: "poedameron-swx57"
            id: 196
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 9
            slots: [
                'Elite'
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 33
        }
        {
            name: 'Nien Nunb'
            id: 197
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 7
            slots: [
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 100
        }
        {
            name: '''"Snap" Wexley'''
            id: 198
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 6
            slots: [
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 100
        }
        {
            name: 'Jess Pava'
            id: 199
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 3
            slots: [
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 100
        }
        {
            name: "Han Solo (TFA)"
            canonical_name: "hansolo-swx57"
            id: 200
            unique: true
            faction: "Resistance"
            ship: "YT-1300"
            skill: 9
            points: 100
            slots: [
                "Elite"
                "Missile"
                "Crew"
                "Crew"
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        }
        {
            name: "Rey"
            id: 201
            unique: true
            faction: "Resistance"
            ship: "YT-1300"
            skill: 8
            points: 45
            slots: [
                "Elite"
                "Missile"
                "Crew"
                "Crew"
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        }
        {
            name: "Chewbacca (TFA)"
            canonical_name: "chewbacca-swx57"
            id: 202
            unique: true
            faction: "Resistance"
            ship: "YT-1300"
            skill: 5
            points: 100
            slots: [
                "Elite"
                "Missile"
                "Crew"
                "Crew"
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        }
        {
            name: "Resistance???"
            id: 203
            faction: "Resistance"
            ship: "YT-1300"
            skill: 5
            points: 100
            slots: [
                "Missile"
                "Crew"
                "Crew"
            ]
        }
        {
            name: 'Norra Wexley'
            id: 204
            unique: true
            faction: 'Rebel Alliance'
            ship: 'ARC-170'
            skill: 7
            slots: [
                'Elite'
                'Torpedo'
                'Crew'
                'Astromech'
            ]
            points: 29
        }
        {
            name: 'Shara Bey'
            id: 205
            unique: true
            faction: 'Rebel Alliance'
            ship: 'ARC-170'
            skill: 6
            slots: [
                'Elite'
                'Torpedo'
                'Crew'
                'Astromech'
            ]
            points: 28
        }
        {
            name: 'Unspoiled PS4 ARC-170 Pilot'
            id: 206
            unique: true
            faction: 'Rebel Alliance'
            ship: 'ARC-170'
            skill: 4
            slots: [
                'Torpedo'
                'Crew'
                'Astromech'
            ]
            points: 100
        }
        {
            name: 'Unspoiled PS3 ARC-170 Pilot'
            id: 207
            unique: true
            faction: 'Rebel Alliance'
            ship: 'ARC-170'
            skill: 3
            slots: [
                'Torpedo'
                'Crew'
                'Astromech'
            ]
            points: 100
        }
        {
            name: '"Quickdraw"'
            id: 208
            unique: true
            faction: 'Galactic Empire'
            ship: 'TIE/sf Fighter'
            skill: 9
            slots: [
                'Elite'
                'System'
                'Missile'
                'Tech'
            ]
            points: 29
        }
        {
            name: 'Unspoiled PS7 TIE/sf Pilot'
            id: 209
            unique: true
            faction: 'Galactic Empire'
            ship: 'TIE/sf Fighter'
            skill: 7
            slots: [
                'System'
                'Missile'
                'Tech'
            ]
            points: 100
        }
        {
            name: 'Unspoiled PS5 TIE/sf Pilot'
            id: 210
            faction: 'Galactic Empire'
            ship: 'TIE/sf Fighter'
            skill: 5
            slots: [
                'System'
                'Missile'
                'Tech'
            ]
            points: 100
        }
        {
            name: 'Unspoiled PS3 TIE/sf Pilot'
            id: 211
            faction: 'Galactic Empire'
            ship: 'TIE/sf Fighter'
            skill: 3
            slots: [
                'System'
                'Missile'
                'Tech'
            ]
            points: 100
        }
        {
            name: 'Fenn Rau'
            id: 212
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Protectorate Starfighter'
            skill: 9
            slots: [
                'Elite'
                'Torpedo'
            ]
            points: 28
        }
        {
            name: 'Old ???'
            id: 213
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Protectorate Starfighter'
            skill: 7
            slots: [
                'Torpedo'
            ]
            points: 100
        }
        {
            name: 'Kad Solus'
            id: 214
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Protectorate Starfighter'
            skill: 6
            slots: [
                'Torpedo'
            ]
            points: 100
        }
        {
            name: 'Unspoiled PS5 Protectorate Starfighter Pilot'
            id: 215
            faction: 'Scum and Villainy'
            ship: 'Protectorate Starfighter'
            skill: 5
            slots: [
                'Torpedo'
            ]
            points: 100
        }
        {
            name: 'Unspoiled PS3 Protectorate Starfighter Pilot'
            id: 216
            faction: 'Scum and Villainy'
            ship: 'Protectorate Starfighter'
            skill: 3
            slots: [
                'Torpedo'
            ]
            points: 100
        }
        {
            name: 'Zealous ???'
            id: 217
            faction: 'Scum and Villainy'
            ship: 'Protectorate Starfighter'
            skill: 1
            slots: [
                'Torpedo'
            ]
            points: 100
        }
        {
            name: 'Ketsu Onyo'
            id: 218
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Lancer-class Pursuit Craft'
            skill: 7
            slots: [
                'Elite'
                'Crew'
                'Illicit'
                'Illicit'
            ]
            points: 38
        }
        {
            name: 'Asajj ???'
            id: 219
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Lancer-class Pursuit Craft'
            skill: 6
            slots: [
                'Crew'
                'Illicit'
                'Illicit'
            ]
            points: 100
        }
        {
            name: 'Sabine Wren'
            canonical_name: "sabinewren-swx56"
            id: 220
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Lancer-class Pursuit Craft'
            skill: 5
            slots: [
                'Crew'
                'Illicit'
                'Illicit'
            ]
            points: 35
        }
        {
            name: 'Shadowfo???'
            id: 221
            faction: 'Scum and Villainy'
            ship: 'Lancer-class Pursuit Craft'
            skill: 2
            slots: [
                'Crew'
                'Illicit'
                'Illicit'
            ]
            points: 100
        }
    ]

    upgradesById: [
        {
            name: "Ion Cannon Turret"
            id: 0
            slot: "Turret"
            points: 5
            attack: 3
            range: "1-2"
        }
        {
            name: "Proton Torpedoes"
            id: 1
            slot: "Torpedo"
            points: 4
            attack: 4
            range: "2-3"
        }
        {
            name: "R2 Astromech"
            id: 2
            slot: "Astromech"
            points: 1
            modifier_func: (stats) ->
                if stats.maneuvers? and stats.maneuvers.length > 0
                    for turn in [0 ... stats.maneuvers[1].length]
                        if stats.maneuvers[1][turn] > 0
                            stats.maneuvers[1][turn] = 2
                        if stats.maneuvers[2][turn] > 0
                            stats.maneuvers[2][turn] = 2
        }
        {
            name: "R2-D2"
            aka: [ "R2-D2 (Crew)" ]
            canonical_name: 'r2d2-swx22'
            id: 3
            unique: true
            slot: "Astromech"
            points: 4
        }
        {
            name: "R2-F2"
            id: 4
            unique: true
            slot: "Astromech"
            points: 3
        }
        {
            name: "R5-D8"
            id: 5
            unique: true
            slot: "Astromech"
            points: 3
        }
        {
            name: "R5-K6"
            id: 6
            unique: true
            slot: "Astromech"
            points: 2
        }
        {
            name: "R5 Astromech"
            id: 7
            slot: "Astromech"
            points: 1
        }
        {
            name: "Determination"
            id: 8
            slot: "Elite"
            points: 1
        }
        {
            name: "Swarm Tactics"
            id: 9
            slot: "Elite"
            points: 2
        }
        {
            name: "Squad Leader"
            id: 10
            unique: true
            slot: "Elite"
            points: 2
        }
        {
            name: "Expert Handling"
            id: 11
            slot: "Elite"
            points: 2
        }
        {
            name: "Marksmanship"
            id: 12
            slot: "Elite"
            points: 3
        }
        {
            name: "Concussion Missiles"
            id: 13
            slot: "Missile"
            points: 4
            attack: 4
            range: "2-3"
        }
        {
            name: "Cluster Missiles"
            id: 14
            slot: "Missile"
            points: 4
            attack: 3
            range: "1-2"
        }
        {
            name: "Daredevil"
            id: 15
            slot: "Elite"
            points: 3
        }
        {
            name: "Elusiveness"
            id: 16
            slot: "Elite"
            points: 2
        }
        {
            name: "Homing Missiles"
            id: 17
            slot: "Missile"
            attack: 4
            range: "2-3"
            points: 5
        }
        {
            name: "Push the Limit"
            id: 18
            slot: "Elite"
            points: 3
        }
        {
            name: "Deadeye"
            id: 19
            slot: "Elite"
            points: 1
        }
        {
            name: "Expose"
            id: 20
            slot: "Elite"
            points: 4
        }
        {
            name: "Gunner"
            id: 21
            slot: "Crew"
            points: 5
        }
        {
            name: "Ion Cannon"
            id: 22
            slot: "Cannon"
            points: 3
            attack: 3
            range: "1-3"
        }
        {
            name: "Heavy Laser Cannon"
            id: 23
            slot: "Cannon"
            points: 7
            attack: 4
            range: "2-3"
        }
        {
            name: "Seismic Charges"
            id: 24
            slot: "Bomb"
            points: 2
        }
        {
            name: "Mercenary Copilot"
            id: 25
            slot: "Crew"
            points: 2
        }
        {
            name: "Assault Missiles"
            id: 26
            slot: "Missile"
            points: 5
            attack: 4
            range: "2-3"
        }
        {
            name: "Veteran Instincts"
            id: 27
            slot: "Elite"
            points: 1
            modifier_func: (stats) ->
                stats.skill += 2
        }
        {
            name: "Proximity Mines"
            id: 28
            slot: "Bomb"
            points: 3
        }
        {
            name: "Weapons Engineer"
            id: 29
            slot: "Crew"
            points: 3
        }
        {
            name: "Draw Their Fire"
            id: 30
            slot: "Elite"
            points: 1
        }
        {
            name: "Luke Skywalker"
            id: 31
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            points: 7
        }
        {
            name: "Nien Nunb"
            id: 32
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            points: 1
            modifier_func: (stats) ->
                for s in (stats.maneuvers ? [])
                    if s[2] > 0 # is there a straight (2) maneuver at this speed?
                        s[2] = 2 # set it to green (2)
        }
        {
            name: "Chewbacca"
            id: 33
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            points: 4
        }
        {
            name: "Advanced Proton Torpedoes"
            canonical_name: 'Adv. Proton Torpedoes'.canonicalize()
            id: 34
            slot: "Torpedo"
            attack: 5
            range: "1"
            points: 6
        }
        {
            name: "Autoblaster"
            id: 35
            slot: "Cannon"
            attack: 3
            range: "1"
            points: 5
        }
        {
            name: "Fire-Control System"
            id: 36
            slot: "System"
            points: 2
        }
        {
            name: "Blaster Turret"
            id: 37
            slot: "Turret"
            points: 4
            attack: 3
            range: "1-2"
        }
        {
            name: "Recon Specialist"
            id: 38
            slot: "Crew"
            points: 3
        }
        {
            name: "Saboteur"
            id: 39
            slot: "Crew"
            points: 2
        }
        {
            name: "Intelligence Agent"
            id: 40
            slot: "Crew"
            points: 1
        }
        {
            name: "Proton Bombs"
            id: 41
            slot: "Bomb"
            points: 5
        }
        {
            name: "Adrenaline Rush"
            id: 42
            slot: "Elite"
            points: 1
        }
        {
            name: "Advanced Sensors"
            id: 43
            slot: "System"
            points: 3
        }
        {
            name: "Sensor Jammer"
            id: 44
            slot: "System"
            points: 4
        }
        {
            name: "Darth Vader"
            id: 45
            unique: true
            faction: "Galactic Empire"
            slot: "Crew"
            points: 3
        }
        {
            name: "Rebel Captive"
            id: 46
            unique: true
            faction: "Galactic Empire"
            slot: "Crew"
            points: 3
        }
        {
            name: "Flight Instructor"
            id: 47
            slot: "Crew"
            points: 4
        }
        {
            name: "Navigator"
            id: 48
            slot: "Crew"
            points: 3
            epic_restriction_func: (ship) ->
                not (ship.huge ? false)
        }
        {
            name: "Opportunist"
            id: 49
            slot: "Elite"
            points: 4
        }
        {
            name: "Comms Booster"
            id: 50
            slot: "Cargo"
            points: 4
        }
        {
            name: "Slicer Tools"
            id: 51
            slot: "Cargo"
            points: 7
        }
        {
            name: "Shield Projector"
            id: 52
            slot: "Cargo"
            points: 4
        }
        {
            name: "Ion Pulse Missiles"
            id: 53
            slot: "Missile"
            points: 3
            attack: 3
            range: """2-3"""
        }
        {
            name: "Wingman"
            id: 54
            slot: "Elite"
            points: 2
        }
        {
            name: "Decoy"
            id: 55
            slot: "Elite"
            points: 2
        }
        {
            name: "Outmaneuver"
            id: 56
            slot: "Elite"
            points: 3
        }
        {
            name: "Predator"
            id: 57
            slot: "Elite"
            points: 3
        }
        {
            name: "Flechette Torpedoes"
            id: 58
            slot: "Torpedo"
            points: 2
            attack: 3
            range: """2-3"""
        }
        {
            name: "R7 Astromech"
            id: 59
            slot: "Astromech"
            points: 2
        }
        {
            name: "R7-T1"
            id: 60
            unique: true
            slot: "Astromech"
            points: 3
        }
        {
            name: "Tactician"
            id: 61
            slot: "Crew"
            points: 2
            limited: true
        }
        {
            name: "R2-D2 (Crew)"
            aka: [ "R2-D2" ]
            canonical_name: 'r2d2'
            id: 62
            unique: true
            slot: "Crew"
            points: 4
            faction: "Rebel Alliance"
        }
        {
            name: "C-3PO"
            unique: true
            id: 63
            slot: "Crew"
            points: 3
            faction: "Rebel Alliance"
        }
        {
            name: "Single Turbolasers"
            id: 64
            slot: "Hardpoint"
            points: 8
            energy: 2
            attack: 4
            range: "3-5"
        }
        {
            name: "Quad Laser Cannons"
            id: 65
            slot: "Hardpoint"
            points: 6
            energy: 2
            attack: 3
            range: "1-2"
        }
        {
            name: "Tibanna Gas Supplies"
            id: 66
            slot: "Cargo"
            points: 4
            limited: true
        }
        {
            name: "Ionization Reactor"
            id: 67
            slot: "Cargo"
            points: 4
            energy: 5
            limited: true
        }
        {
            name: "Engine Booster"
            id: 68
            slot: "Cargo"
            points: 3
            limited: true
        }
        {
            name: "R3-A2"
            id: 69
            unique: true
            slot: "Astromech"
            points: 2
        }
        {
            name: "R2-D6"
            id: 70
            unique: true
            slot: "Astromech"
            points: 1
            restriction_func: (ship) ->
                return false if (ship.effectiveStats().skill <= 2 or 'Elite' in ship.pilot.slots)
                # Otherwise, if there's an Elite slot upgrade, it has to have
                # been conferred, and it can't be conferred by another upgrade
                for upgrade in ship.upgrades
                    if upgrade? and upgrade.data?.name != 'R2-D6'
                        for conferred_addon in upgrade.conferredAddons
                            return false if conferred_addon.slot == 'Elite'
                true
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Elite"
                }
            ]
        }
        {
            name: "Enhanced Scopes"
            id: 71
            slot: "System"
            points: 1
        }
        {
            name: "Chardaan Refit"
            id: 72
            slot: "Missile"
            points: -2
            ship: "A-Wing"
        }
        {
            name: "Proton Rockets"
            id: 73
            slot: "Missile"
            points: 3
            attack: 2
            range: "1"
        }
        {
            name: "Kyle Katarn"
            id: 74
            unique: true
            slot: "Crew"
            points: 3
            faction: "Rebel Alliance"
        }
        {
            name: "Jan Ors"
            id: 75
            unique: true
            slot: "Crew"
            points: 2
            faction: "Rebel Alliance"
        }
        {
            name: "Toryn Farr"
            id: 76
            unique: true
            slot: "Crew"
            points: 6
            faction: "Rebel Alliance"
            restriction_func: exportObj.hugeOnly
        }
        {
            name: "R4-D6"
            id: 77
            unique: true
            slot: "Astromech"
            points: 1
        }
        {
            name: "R5-P9"
            id: 78
            unique: true
            slot: "Astromech"
            points: 3
        }
        {
            name: "WED-15 Repair Droid"
            id: 79
            slot: "Crew"
            points: 2
            restriction_func: exportObj.hugeOnly
        }
        {
            name: "Carlist Rieekan"
            id: 80
            unique: true
            slot: "Crew"
            points: 3
            faction: "Rebel Alliance"
            restriction_func: exportObj.hugeOnly
        }
        {
            name: "Jan Dodonna"
            id: 81
            unique: true
            slot: "Crew"
            points: 6
            faction: "Rebel Alliance"
            restriction_func: exportObj.hugeOnly
        }
        {
            name: "Expanded Cargo Hold"
            id: 82
            slot: "Cargo"
            points: 1
            ship: "GR-75 Medium Transport"
        }
        {
            name: "Backup Shield Generator"
            id: 83
            slot: "Cargo"
            limited: true
            points: 3
        }
        {
            name: "EM Emitter"
            id: 84
            slot: "Cargo"
            limited: true
            points: 3
        }
        {
            name: "Frequency Jammer"
            id: 85
            slot: "Cargo"
            limited: true
            points: 4
        }
        {
            name: "Han Solo"
            id: 86
            slot: "Crew"
            unique: true
            faction: "Rebel Alliance"
            points: 2
        }
        {
            name: "Leia Organa"
            id: 87
            slot: "Crew"
            unique: true
            faction: "Rebel Alliance"
            points: 4
        }
        {
            name: "Targeting Coordinator"
            id: 88
            slot: "Crew"
            limited: true
            points: 4
        }
        {
            name: "Raymus Antilles"
            id: 89
            slot: "Crew"
            unique: true
            faction: "Rebel Alliance"
            points: 6
            restriction_func: exportObj.hugeOnly
        }
        {
            name: "Gunnery Team"
            id: 90
            slot: "Team"
            limited: true
            points: 4
        }
        {
            name: "Sensor Team"
            id: 91
            slot: "Team"
            points: 4
        }
        {
            name: "Engineering Team"
            id: 92
            slot: "Team"
            limited: true
            points: 4
        }
        {
            name: "Lando Calrissian"
            id: 93
            slot: "Crew"
            unique: true
            faction: "Rebel Alliance"
            points: 3
        }
        {
            name: "Mara Jade"
            id: 94
            slot: "Crew"
            unique: true
            faction: "Galactic Empire"
            points: 3
        }
        {
            name: "Fleet Officer"
            id: 95
            slot: "Crew"
            faction: "Galactic Empire"
            points: 3
        }
        {
            name: "Stay On Target"
            id: 96
            slot: "Elite"
            points: 2
        }
        {
            name: "Dash Rendar"
            id: 97
            unique: true
            slot: "Crew"
            points: 2
            faction: "Rebel Alliance"
        }
        {
            name: "Lone Wolf"
            id: 98
            unique: true
            slot: "Elite"
            points: 2
        }
        {
            name: '"Leebo"'
            id: 99
            unique: true
            slot: "Crew"
            points: 2
            faction: "Rebel Alliance"
        }
        {
            name: "Ruthlessness"
            id: 100
            slot: "Elite"
            points: 3
            faction: "Galactic Empire"
        }
        {
            name: "Intimidation"
            id: 101
            slot: "Elite"
            points: 2
        }
        {
            name: "Ysanne Isard"
            id: 102
            unique: true
            slot: "Crew"
            points: 4
            faction: "Galactic Empire"
        }
        {
            name: "Moff Jerjerrod"
            id: 103
            unique: true
            slot: "Crew"
            points: 2
            faction: "Galactic Empire"
        }
        {
            name: "Ion Torpedoes"
            id: 104
            slot: "Torpedo"
            points: 5
            attack: 4
            range: "2-3"
        }
        {
            name: "Bodyguard"
            id: 105
            unique: true
            slot: "Elite"
            points: 2
            faction: "Scum and Villainy"
        }
        {
            name: "Calculation"
            id: 106
            slot: "Elite"
            points: 1
        }
        {
            name: "Accuracy Corrector"
            id: 107
            slot: "System"
            points: 3
        }
        {
            name: "Inertial Dampeners"
            id: 108
            slot: "Illicit"
            points: 1
        }
        {
            name: "Flechette Cannon"
            id: 109
            slot: "Cannon"
            points: 2
            attack: 3
            range: "1-3"
        }
        {
            name: '"Mangler" Cannon'
            id: 110
            slot: "Cannon"
            points: 4
            attack: 3
            range: "1-3"
        }
        {
            name: "Dead Man's Switch"
            id: 111
            slot: "Illicit"
            points: 2
        }
        {
            name: "Feedback Array"
            id: 112
            slot: "Illicit"
            points: 2
        }
        {
            name: '"Hot Shot" Blaster'
            id: 113
            slot: "Illicit"
            points: 3
            attack: 3
            range: "1-2"
        }
        {
            name: "Greedo"
            id: 114
            unique: true
            slot: "Crew"
            faction: "Scum and Villainy"
            points: 1
        }
        {
            name: "Salvaged Astromech"
            id: 115
            slot: "Salvaged Astromech"
            points: 2
        }
        {
            name: "Bomb Loadout"
            id: 116
            limited: true
            slot: "Torpedo"
            points: 0
            ship: "Y-Wing"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Bomb"
                }
            ]
        }
        {
            name: '"Genius"'
            id: 117
            unique: true
            slot: "Salvaged Astromech"
            points: 0
        }
        {
            name: "Unhinged Astromech"
            id: 118
            slot: "Salvaged Astromech"
            points: 1
            modifier_func: (stats) ->
                if stats.maneuvers? and stats.maneuvers.length > 3
                    for turn in [0 ... stats.maneuvers[3].length]
                        if stats.maneuvers[3][turn] > 0
                            stats.maneuvers[3][turn] = 2
        }
        {
            name: "R4-B11"
            id: 119
            unique: true
            slot: "Salvaged Astromech"
            points: 3
        }
        {
            name: "Autoblaster Turret"
            id: 120
            slot: "Turret"
            points: 2
            attack: 2
            range: "1"
        }
        {
            name: "R4 Agromech"
            id: 121
            slot: "Salvaged Astromech"
            points: 2
        }
        {
            name: "K4 Security Droid"
            id: 122
            slot: "Crew"
            faction: "Scum and Villainy"
            points: 3
        }
        {
            name: "Outlaw Tech"
            id: 123
            limited: true
            slot: "Crew"
            faction: "Scum and Villainy"
            points: 2
        }
        {
            name: 'Advanced Targeting Computer'
            canonical_name: 'Adv. Targeting Computer'.canonicalize()
            id: 124
            slot: "System"
            points: 5
            ship: "TIE Advanced"
        }
        {
            name: 'Ion Cannon Battery'
            id: 125
            slot: "Hardpoint"
            points: 6
            energy: 2
            attack: 4
            range: "2-4"
        }
        {
            name: "Extra Munitions"
            id: 126
            slot: "Torpedo"
            limited: true
            points: 2
        }
        {
            name: "Cluster Mines"
            id: 127
            slot: "Bomb"
            points: 4
        }
        {
            name: 'Glitterstim'
            id: 128
            slot: "Illicit"
            points: 2
        }
        {
            name: 'Grand Moff Tarkin'
            unique: true
            id: 129
            slot: "Crew"
            points: 6
            faction: "Galactic Empire"
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: 'Captain Needa'
            unique: true
            id: 130
            slot: "Crew"
            points: 2
            faction: "Galactic Empire"
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: 'Admiral Ozzel'
            unique: true
            id: 131
            slot: "Crew"
            points: 2
            faction: "Galactic Empire"
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: 'Emperor Palpatine'
            unique: true
            id: 132
            slot: "Crew"
            points: 8
            faction: "Galactic Empire"
            restriction_func: (ship, upgrade_obj) ->
                ship.hasAnotherUnoccupiedSlotLike upgrade_obj
            validation_func: (ship, upgrade_obj) ->
                upgrade_obj.occupiesAnotherUpgradeSlot()
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: 'Bossk'
            unique: true
            id: 133
            faction: "Scum and Villainy"
            slot: "Crew"
            points: 2
        }
        {
            name: "Lightning Reflexes"
            id: 134
            slot: "Elite"
            points: 1
            restriction_func: (ship) ->
                not ((ship.data.large ? false) or (ship.data.huge ? false))
        }
        {
            name: "Twin Laser Turret"
            id: 135
            slot: "Turret"
            points: 6
            attack: 3
            range: "2-3"
        }
        {
            name: "Plasma Torpedoes"
            id: 136
            slot: "Torpedo"
            points: 3
            attack: 4
            range: "2-3"
        }
        {
            name: "Ion Bombs"
            id: 137
            slot: "Bomb"
            points: 2
        }
        {
            name: "Conner Net"
            id: 138
            slot: "Bomb"
            points: 4
        }
        {
            name: "Bombardier"
            id: 139
            slot: "Crew"
            points: 1
        }
        {
            name: 'Crack Shot'
            id: 140
            slot: 'Elite'
            points: 1
        }
        {
            name: "Advanced Homing Missiles"
            canonical_name: 'Adv. Homing Missiles'.canonicalize()
            id: 141
            slot: "Missile"
            points: 3
            attack: 3
            range: "2"
        }
        {
            name: 'Agent Kallus'
            id: 142
            unique: true
            points: 2
            slot: 'Crew'
            faction: 'Galactic Empire'
        }
        {
            name: 'XX-23 S-Thread Tracers'
            id: 143
            points: 1
            slot: 'Missile'
            attack: 3
            range: '1-3'
        }
        {
            name: "Tractor Beam"
            id: 144
            slot: "Cannon"
            attack: 3
            range: "1-3"
            points: 1
        }
        {
            name: "Cloaking Device"
            id: 145
            unique: true
            slot: "Illicit"
            points: 2
            restriction_func: (ship) ->
                not ((ship.data.large ? false) or (ship.data.huge ? false))
        }
        {
            name: 'Shield Technician'
            id: 146
            slot: "Crew"
            points: 1
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: 'Weapons Guidance'
            id: 147
            slot: "Tech"
            points: 2
        }
        {
            name: 'BB-8'
            id: 148
            unique: true
            slot: "Astromech"
            points: 2
        }
        {
            name: 'R5-X3'
            id: 149
            unique: true
            slot: "Astromech"
            points: 1
        }
        {
            name: 'Wired'
            id: 150
            slot: "Elite"
            points: 1
        }
        {
            name: 'Cool Hand'
            id: 151
            slot: 'Elite'
            points: 1
        }
        {
            name: 'Juke'
            id: 152
            slot: 'Elite'
            points: 2
            restriction_func: (ship) ->
                not ((ship.data.large ? false) or (ship.data.huge ? false))
        }
        {
            name: 'Comm Relay'
            id: 153
            slot: 'Tech'
            points: 3
        }
        {
            name: 'Dual Laser Turret'
            id: 154
            points: 5
            slot: 'Hardpoint'
            attack: 3
            range: '1-3'
            energy: 1
            ship: 'Gozanti-class Cruiser'
        }
        {
            name: 'Broadcast Array'
            id: 155
            ship: 'Gozanti-class Cruiser'
            points: 2
            slot: 'Cargo'
            modifier_func: (stats) ->
                stats.actions.push 'Jam' if 'Jam' not in stats.actions
        }
        {
            name: 'Rear Admiral Chiraneau'
            id: 156
            unique: true
            points: 3
            slot: 'Crew'
            faction: 'Galactic Empire'
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: 'Ordnance Experts'
            id: 157
            limited: true
            points: 5
            slot: 'Team'
        }
        {
            name: 'Docking Clamps'
            id: 158
            points: 0
            limited: true
            slot: 'Cargo'
            ship: 'Gozanti-class Cruiser'
        }
        {
            name: 'Kanan Jarrus'
            id: 159
            unique: true
            faction: 'Rebel Alliance'
            points: 3
            slot: 'Crew'
        }
        {
            name: '"Zeb" Orrelios'
            id: 160
            unique: true
            faction: 'Rebel Alliance'
            points: 1
            slot: 'Crew'
        }
        {
            name: 'Reinforced Deflectors'
            id: 161
            points: 3
            slot: 'System'
            restriction_func: (ship) ->
                ship.data.large ? false
        }
        {
            name: 'Dorsal Turret'
            id: 162
            points: 3
            slot: 'Turret'
            attack: 2
            range: '1-2'
        }
        {
            name: 'Targeting Astromech'
            id: 163
            slot: 'Astromech'
            points: 2
        }
        {
            name: 'Hera Syndulla'
            id: 164
            unique: true
            faction: 'Rebel Alliance'
            points: 1
            slot: 'Crew'
        }
        {
            name: 'Ezra Bridger'
            id: 165
            unique: true
            faction: 'Rebel Alliance'
            points: 3
            slot: 'Crew'
        }
        {
            name: 'Sabine Wren'
            id: 166
            unique: true
            faction: 'Rebel Alliance'
            points: 2
            slot: 'Crew'
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Bomb"
                }
            ]
        }
        {
            name: '"Chopper"'
            id: 167
            unique: true
            faction: 'Rebel Alliance'
            points: 0
            slot: 'Crew'
        }
        {
            name: 'Construction Droid'
            id: 168
            points: 3
            slot: 'Crew'
            limited: true
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: 'Cluster Bombs'
            id: 169
            points: 4
            slot: 'Cargo'
        }
        {
            name: "Adaptability"
            id: 170
            slot: "Elite"
            points: 0
        }
        {
            name: "Adaptability (old)"
            skip: true
            id: 171
            superseded_by_id: 170
            slot: "Elite"
            points: 0
        }
        {
            name: "Electronic Baffle"
            id: 172
            slot: "System"
            points: 1
        }
        {
            name: "4-LOM"
            id: 173
            unique: true
            slot: "Crew"
            points: 1
            faction: "Scum and Villainy"
        }
        {
            name: "Zuckuss"
            id: 174
            unique: true
            slot: "Crew"
            points: 1
            faction: "Scum and Villainy"
        }
        {
            name: 'Rage'
            id: 175
            points: 1
            slot: 'Elite'
        }
        {
            name: "Attanni Mindlink"
            id: 176
            faction: "Scum and Villainy"
            slot: "Elite"
            points: 1
        }
        {
            name: "Boba Fett"
            id: 177
            unique: true
            slot: "Crew"
            points: 1
            faction: "Scum and Villainy"
        }
        {
            name: "Dengar"
            id: 178
            unique: true
            slot: "Crew"
            points: 3
            faction: "Scum and Villainy"
        }
        {
            name: '"Gonk"'
            id: 179
            unique: true
            slot: "Crew"
            faction: "Scum and Villainy"
            points: 2
        }
        {
            name: "R5-P8"
            id: 180
            unique: true
            slot: "Salvaged Astromech"
            points: 3
        }
        {
            name: 'Thermal Detonators'
            id: 181
            points: 3
            slot: 'Bomb'
        }
        {
            name: "Overclocked R4"
            id: 182
            slot: "Salvaged Astromech"
            points: 1
        }
        {
            name: 'Systems Officer'
            id: 183
            faction: 'Galactic Empire'
            limited: true
            points: 2
            slot: 'Crew'
        }
    ]

    modificationsById: [
        {
            name: "Zero modification"
            id: 0
            skip: true
        }
        {
            name: "Stealth Device"
            id: 1
            points: 3
            modifier_func: (stats) ->
                stats.agility += 1
        }
        {
            name: "Shield Upgrade"
            id: 2
            points: 4
            modifier_func: (stats) ->
                stats.shields += 1
        }
        {
            name: "Engine Upgrade"
            id: 3
            points: 4
            modifier_func: (stats) ->
                stats.actions.push 'Boost' if 'Boost' not in stats.actions
        }
        {
            name: "Anti-Pursuit Lasers"
            id: 4
            points: 2
            restriction_func: (ship) ->
                ship.data.large ? false
        }
        {
            name: "Targeting Computer"
            id: 5
            points: 2
            modifier_func: (stats) ->
                stats.actions.push 'Target Lock' if 'Target Lock' not in stats.actions
        }
        {
            name: "Hull Upgrade"
            id: 6
            points: 3
            modifier_func: (stats) ->
                stats.hull += 1
        }
        {
            name: "Munitions Failsafe"
            id: 7
            points: 1
        }
        {
            name: "Stygium Particle Accelerator"
            id: 8
            points: 2
        }
        {
            name: "Advanced Cloaking Device"
            id: 9
            points: 4
            ship: "TIE Phantom"
        }
        {
            name: "Combat Retrofit"
            id: 10
            points: 10
            ship: "GR-75 Medium Transport"
            huge: true
            modifier_func: (stats) ->
                stats.hull += 2
                stats.shields += 1
        }
        {
            name: "B-Wing/E2"
            id: 11
            points: 1
            ship: "B-Wing"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Crew"
                }
            ]
        }
        {
            name: "Countermeasures"
            id: 12
            points: 3
            restriction_func: (ship) ->
                ship.data.large ? false
        }
        {
            name: "Experimental Interface"
            id: 13
            unique: true
            points: 3
        }
        {
            name: "Tactical Jammer"
            id: 14
            points: 1
            restriction_func: (ship) ->
                ship.data.large ? false
        }
        {
            name: "Autothrusters"
            id: 15
            points: 2
            restriction_func: (ship) ->
                "Boost" in ship.effectiveStats().actions
        }
        {
            name: "Advanced SLAM"
            id: 16
            points: 2
        }
        {
            name: "Twin Ion Engine Mk. II"
            id: 17
            points: 1
            restriction_func: (ship) ->
                ship.data.name.indexOf('TIE') != -1
            modifier_func: (stats) ->
                for s in (stats.maneuvers ? [])
                    s[1] = 2 if s[1] != 0
                    s[3] = 2 if s[3] != 0
        }
        {
            name: "Maneuvering Fins"
            id: 18
            points: 1
            ship: "YV-666"
        }
        {
            name: "Ion Projector"
            id: 19
            points: 2
            restriction_func: (ship) ->
                ship.data.large ? false
        }
        {
            name: 'Integrated Astromech'
            id: 20
            restriction_func: (ship) ->
                ship.data.canonical_name.indexOf('xwing') != -1
            points: 0
        }
        {
            name: 'Optimized Generators'
            id: 21
            points: 5
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: 'Automated Protocols'
            id: 22
            points: 5
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: 'Ordnance Tubes'
            id: 23
            points: 5
            slot: 'Hardpoint'
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: 'Long-Range Scanners'
            id: 24
            points: 0
            restriction_func: (ship) ->
                ((upgrade for upgrade in ship.upgrades when upgrade.slot == 'Torpedo' and not upgrade.occupied_by?).length >= 1) and ((upgrade for upgrade in ship.upgrades when upgrade.slot == 'Missile' and not upgrade.occupied_by?).length >= 1)
        }
        {
            name: "Guidance Chips"
            id: 25
            points: 0
        }
    ]

    titlesById: [
        {
            name: "Zero Title"
            id: 0
            skip: true
        }
        {
            name: "Slave I"
            id: 1
            unique: true
            points: 0
            ship: "Firespray-31"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Torpedo"
                }
            ]
        }
        {
            name: "Millennium Falcon"
            id: 2
            unique: true
            points: 1
            ship: "YT-1300"
            actions: "Evade"
            modifier_func: (stats) ->
                stats.actions.push 'Evade' if 'Evade' not in stats.actions
        }
        {
            name: "Moldy Crow"
            id: 3
            unique: true
            points: 3
            ship: "HWK-290"
        }
        {
            name: "ST-321"
            id: 4
            unique: true
            points: 3
            ship: "Lambda-Class Shuttle"
        }
        {
            name: "Royal Guard TIE"
            id: 5
            points: 0
            ship: "TIE Interceptor"
            confersAddons: [
                {
                    type: exportObj.Modification
                }
            ]
            restriction_func: (ship) ->
                ship.effectiveStats().skill > 4
            special_case: 'Royal Guard TIE'
        }
        {
            name: "Dodonna's Pride"
            id: 6
            unique: true
            points: 4
            ship: "CR90 Corvette (Fore)"
        }
        {
            name: "A-Wing Test Pilot"
            id: 7
            points: 0
            ship: "A-Wing"
            restriction_func: (ship) ->
                ship.effectiveStats().skill > 1
            validation_func: (ship, upgrade_obj) ->
                # Still need to respect the restriction
                return false unless ship.effectiveStats().skill > 1
                # No two Elites are on fir^W^W^Wcan be the same
                elites = (upgrade.data.canonical_name for upgrade in ship.upgrades when upgrade.slot == 'Elite' and upgrade.data?)
                while elites.length > 0
                    elite = elites.pop()
                    if elite in elites
                        return false
                true
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Elite"
                }
            ]
            special_case: "A-Wing Test Pilot"
        }
        # Apparently this is a modification, NOT a title
        # Leaving this here to occupy the ID in case someone used it
         {
             name: "B-Wing/E"
             id: 8
             skip: true
             points: 99
             ship: "B-Wing"
             confersAddons: [
                 {
                     type: exportObj.Upgrade
                     slot: "Crew"
                 }
             ]
         }
        {
            name: "Tantive IV"
            id: 9
            unique: true
            points: 4
            ship: "CR90 Corvette (Fore)"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Crew"
                }
                {
                    type: exportObj.Upgrade
                    slot: "Team"
                }
            ]
        }
        {
            name: "Bright Hope"
            id: 10
            energy: "+2"
            unique: true
            points: 5
            ship: "GR-75 Medium Transport"
            modifier_func: (stats) ->
                stats.energy += 2
        }
        {
            name: "Quantum Storm"
            id: 11
            energy: "+1"
            unique: true
            points: 4
            ship: "GR-75 Medium Transport"
            modifier_func: (stats) ->
                stats.energy += 1
        }
        {
            name: "Dutyfree"
            id: 12
            energy: "+0"
            unique: true
            points: 2
            ship: "GR-75 Medium Transport"
        }
        {
            name: "Jaina's Light"
            id: 13
            unique: true
            points: 2
            ship: "CR90 Corvette (Fore)"
        }
        {
            name: "Outrider"
            id: 14
            unique: true
            points: 5
            ship: "YT-2400"
        }
        {
            name: "Dauntless"
            id: 15
            unique: true
            points: 2
            ship: "VT-49 Decimator"
        }
        {
            name: "Virago"
            id: 16
            unique: true
            points: 1
            ship: "StarViper"
            restriction_func: (ship) ->
                ship.pilot.skill > 3
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "System"
                }
                {
                    type: exportObj.Upgrade
                    slot: "Illicit"
                }
            ]
        }
        {
            name: '"Heavy Scyk" Interceptor (Cannon)'
            canonical_name: '"Heavy Scyk" Interceptor'.canonicalize()
            id: 17
            points: 2
            ship: "M3-A Interceptor"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Cannon"
                }
            ]
        }
        {
            name: '"Heavy Scyk" Interceptor (Torpedo)'
            canonical_name: '"Heavy Scyk" Interceptor'.canonicalize()
            id: 18
            points: 2
            ship: "M3-A Interceptor"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Torpedo"
                }
            ]
        }
        {
            name: '"Heavy Scyk" Interceptor (Missile)'
            canonical_name: '"Heavy Scyk" Interceptor'.canonicalize()
            id: 19
            points: 2
            ship: "M3-A Interceptor"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Missile"
                }
            ]
        }
        {
            name: 'IG-2000'
            id: 20
            points: 0
            ship: "Aggressor"
        }
        {
            name: "BTL-A4 Y-Wing"
            id: 21
            points: 0
            ship: "Y-Wing"
        }
        {
            name: "Andrasta"
            id: 22
            unique: true
            points: 0
            ship: "Firespray-31"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Bomb"
                }
                {
                    type: exportObj.Upgrade
                    slot: "Bomb"
                }
            ]
        }
        {
            name: 'TIE/x1'
            id: 23
            points: 0
            ship: "TIE Advanced"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "System"
                    adjustment_func: (upgrade) ->
                        copy = $.extend true, {}, upgrade
                        copy.points = Math.max(0, copy.points - 4)
                        copy
                }
            ]
        }
        {
            name: "Hound's Tooth"
            id: 24
            points: 6
            unique: true
            ship: "YV-666"
        }
        {
            name: "Ghost"
            id: 25
            unique: true
            points: 0
            ship: "VCX-100"
        }
        {
            name: "Phantom"
            id: 26
            unique: true
            points: 0
            ship: "Attack Shuttle"
        }
        {
            name: "TIE/v1"
            id: 27
            points: 1
            ship: "TIE Advanced Prototype"
        }
        {
            name: "Mist Hunter"
            id: 28
            unique: true
            points: 0
            ship: "G-1A Starfighter"
            confersAddons: [
                {
                    type: exportObj.RestrictedUpgrade
                    slot: "Cannon"
                    filter_func: (upgrade) ->
                        upgrade.english_name == 'Tractor Beam'
                    auto_equip: 144
                }
            ]
            modifier_func: (stats) ->
                stats.actions.push 'Barrel Roll' if 'Barrel Roll' not in stats.actions
        }
        {
            name: "Punishing One"
            id: 29
            unique: true
            points: 12
            ship: "JumpMaster 5000"
            modifier_func: (stats) ->
                stats.attack += 1
        }
        {
            name: 'Assailer'
            id: 30
            points: 2
            unique: true
            ship: "Raider-class Corvette (Aft)"
        }
        {
            name: 'Instigator'
            id: 31
            points: 4
            unique: true
            ship: "Raider-class Corvette (Aft)"
        }
        {
            name: 'Impetuous'
            id: 32
            points: 3
            unique: true
            ship: "Raider-class Corvette (Aft)"
        }
        {
            name: 'TIE/x7'
            id: 33
            ship: 'TIE Defender'
            points: -2
            unequips_upgrades: [
                'Cannon'
                'Missile'
            ]
            also_occupies_upgrades: [
                'Cannon'
                'Missile'
            ]
        }
        {
            name: 'TIE/D'
            id: 34
            ship: 'TIE Defender'
            points: 0
        }
        {
            name: 'TIE Shuttle'
            id: 35
            ship: 'TIE Bomber'
            points: 0
            unequips_upgrades: [
                'Torpedo'
                'Torpedo'
                'Missile'
                'Missile'
                'Bomb'
            ]
            also_occupies_upgrades: [
                'Torpedo'
                'Torpedo'
                'Missile'
                'Missile'
                'Bomb'
            ]
            confersAddons: [
                {
                    type: exportObj.RestrictedUpgrade
                    slot: 'Crew'
                    filter_func: (upgrade) ->
                        upgrade.points <= 4
                }
                {
                    type: exportObj.RestrictedUpgrade
                    slot: 'Crew'
                    filter_func: (upgrade) ->
                        upgrade.points <= 4
                }
            ]
        }
        {
            name: 'Requiem'
            id: 36
            unique: true
            ship: 'Gozanti-class Cruiser'
            energy: '+0'
            points: 4
        }
        {
            name: 'Vector'
            id: 37
            unique: true
            ship: 'Gozanti-class Cruiser'
            energy: '+1'
            points: 2
            modifier_func: (stats) ->
                stats.energy += 1
        }
        {
            name: 'Suppressor'
            id: 38
            unique: true
            ship: 'Gozanti-class Cruiser'
            energy: '+2'
            points: 6
            modifier_func: (stats) ->
                stats.energy += 2
        }
        {
            name: 'Black One'
            id: 39
            unique: true
            ship: 'T-70 X-Wing'
            points: 1
            restriction_func: (ship) ->
                ship.effectiveStats().skill > 6
        }
        {
            name: "Millennium Falcon (TFA)"
            canonical_name: "millenniumfalcon-swx57"
            id: 40
            unique: true
            points: 1
            ship: "YT-1300"
        }
        {
            name: 'Alliance Overhaul'
            id: 41
            ship: 'ARC-170'
            points: 0
        }
        {
            name: 'Special Ops Training'
            id: 42
            ship: 'TIE/sf Fighter'
            points: 0
        }
        {
            name: 'Concord Dawn Protector'
            id: 43
            ship: 'Protectorate Starfighter'
            points: 1
        }
        {
            name: 'Shadow Caster'
            id: 44
            ship: 'Lancer-class Pursuit Craft'
            points: 3
        }
    ]

exportObj.setupCardData = (basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations) ->
    # assert that each ID is the index into BLAHById (should keep this, in general)
    for pilot_data, i in basic_cards.pilotsById
        if pilot_data.id != i
            throw new Error("ID mismatch: pilot at index #{i} has ID #{pilot_data.id}")
    for upgrade_data, i in basic_cards.upgradesById
        if upgrade_data.id != i
            throw new Error("ID mismatch: upgrade at index #{i} has ID #{upgrade_data.id}")
    for title_data, i in basic_cards.titlesById
        if title_data.id != i
            throw new Error("ID mismatch: title at index #{i} has ID #{title_data.id}")
    for modification_data, i in basic_cards.modificationsById
        if modification_data.id != i
            throw new Error("ID mismatch: modification at index #{i} has ID #{modification_data.id}")

    exportObj.pilots = {}
    # Assuming a given pilot is unique by name...
    for pilot_data in basic_cards.pilotsById
        unless pilot_data.skip?
            pilot_data.sources = []
            pilot_data.english_name = pilot_data.name
            pilot_data.english_ship = pilot_data.ship
            pilot_data.canonical_name = pilot_data.english_name.canonicalize() unless pilot_data.canonical_name?
            exportObj.pilots[pilot_data.name] = pilot_data
    # pilot_name is the English version here as it's the common index into
    # basic card info
    for pilot_name, translations of pilot_translations
        for field, translation of translations
            try
                exportObj.pilots[pilot_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for pilot #{pilot_name}"
                throw e

    exportObj.upgrades = {}
    for upgrade_data in basic_cards.upgradesById
        unless upgrade_data.skip?
            upgrade_data.sources = []
            upgrade_data.english_name = upgrade_data.name
            upgrade_data.canonical_name = upgrade_data.english_name.canonicalize() unless upgrade_data.canonical_name?
            exportObj.upgrades[upgrade_data.name] = upgrade_data
    for upgrade_name, translations of upgrade_translations
        for field, translation of translations
            try
                exportObj.upgrades[upgrade_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for upgrade #{upgrade_name}"
                throw e

    exportObj.modifications = {}
    for modification_data in basic_cards.modificationsById
        unless modification_data.skip?
            modification_data.sources = []
            modification_data.english_name = modification_data.name
            modification_data.canonical_name = modification_data.english_name.canonicalize() unless modification_data.canonical_name?
            exportObj.modifications[modification_data.name] = modification_data
    for modification_name, translations of modification_translations
        for field, translation of translations
            try
                exportObj.modifications[modification_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for modification #{modification_name}"
                throw e

    exportObj.titles = {}
    for title_data in basic_cards.titlesById
        unless title_data.skip?
            title_data.sources = []
            title_data.english_name = title_data.name
            title_data.canonical_name = title_data.english_name.canonicalize() unless title_data.canonical_name?
            exportObj.titles[title_data.name] = title_data
    for title_name, translations of title_translations
        for field, translation of translations
            try
                exportObj.titles[title_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for title #{title_name}"
                throw e

    # Set sources from manifest
    for expansion, cards of exportObj.manifestByExpansion
        for card in cards
            continue if card.skipForSource # heavy scyk special case :(
            try
                switch card.type
                    when 'pilot'
                        exportObj.pilots[card.name].sources.push expansion
                    when 'upgrade'
                        exportObj.upgrades[card.name].sources.push expansion
                    when 'modification'
                        exportObj.modifications[card.name].sources.push expansion
                    when 'title'
                        exportObj.titles[card.name].sources.push expansion
                    when 'ship'
                        # Not used for sourcing
                        ''
                    else
                        throw new Error("Unexpected card type #{card.type} for card #{card.name} of #{expansion}")
            catch e
                console.error "Error adding card #{card.name} (#{card.type}) from #{expansion}"

    for name, card of exportObj.pilots
        card.sources = card.sources.sort()
    for name, card of exportObj.upgrades
        card.sources = card.sources.sort()
    for name, card of exportObj.modifications
        card.sources = card.sources.sort()
    for name, card of exportObj.titles
        card.sources = card.sources.sort()

    exportObj.expansions = {}

    exportObj.pilotsById = {}
    exportObj.pilotsByLocalizedName = {}
    for pilot_name, pilot of exportObj.pilots
        exportObj.fixIcons pilot
        exportObj.pilotsById[pilot.id] = pilot
        exportObj.pilotsByLocalizedName[pilot.name] = pilot
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
        # Hack until we need to disambiguate same name pilots by subfaction
        switch pilot.faction
            when 'Resistance'
                ((exportObj.pilotsByFactionCanonicalName['Rebel Alliance'] ?= {})[pilot.canonical_name] ?= []).push pilot
            when 'First Order'
                ((exportObj.pilotsByFactionCanonicalName['Galactic Empire'] ?= {})[pilot.canonical_name] ?= []).push pilot

    exportObj.upgradesById = {}
    exportObj.upgradesByLocalizedName = {}
    for upgrade_name, upgrade of exportObj.upgrades
        exportObj.fixIcons upgrade
        exportObj.upgradesById[upgrade.id] = upgrade
        exportObj.upgradesByLocalizedName[upgrade.name] = upgrade
        for source in upgrade.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.upgradesById).length != Object.keys(exportObj.upgrades).length
        throw new Error("At least one upgrade shares an ID with another")

    exportObj.upgradesBySlotCanonicalName = {}
    exportObj.upgradesBySlotUniqueName = {}
    for upgrade_name, upgrade of exportObj.upgrades
        (exportObj.upgradesBySlotCanonicalName[upgrade.slot] ?= {})[upgrade.canonical_name] = upgrade
        (exportObj.upgradesBySlotUniqueName[upgrade.slot] ?= {})[upgrade.canonical_name.getXWSBaseName()] = upgrade

    exportObj.modificationsById = {}
    exportObj.modificationsByLocalizedName = {}
    for modification_name, modification of exportObj.modifications
        exportObj.fixIcons modification
        # Modifications cannot be added to huge ships unless specifically allowed
        if modification.huge?
            unless modification.restriction_func?
                modification.restriction_func = exportObj.hugeOnly
        else unless modification.restriction_func?
            modification.restriction_func = (ship) ->
                not (ship.data.huge ? false)
        exportObj.modificationsById[modification.id] = modification
        exportObj.modificationsByLocalizedName[modification.name] = modification
        for source in modification.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.modificationsById).length != Object.keys(exportObj.modifications).length
        throw new Error("At least one modification shares an ID with another")

    exportObj.modificationsByCanonicalName = {}
    exportObj.modificationsByUniqueName = {}
    for modification_name, modification of exportObj.modifications
        (exportObj.modificationsByCanonicalName ?= {})[modification.canonical_name] = modification
        (exportObj.modificationsByUniqueName ?= {})[modification.canonical_name.getXWSBaseName()] = modification

    exportObj.titlesById = {}
    exportObj.titlesByLocalizedName = {}
    for title_name, title of exportObj.titles
        exportObj.fixIcons title
        exportObj.titlesById[title.id] = title
        exportObj.titlesByLocalizedName[title.name] = title
        for source in title.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.titlesById).length != Object.keys(exportObj.titles).length
        throw new Error("At least one title shares an ID with another")

    exportObj.titlesByShip = {}
    for title_name, title of exportObj.titles
        if title.ship not of exportObj.titlesByShip
            exportObj.titlesByShip[title.ship] = []
        exportObj.titlesByShip[title.ship].push title

    exportObj.titlesByCanonicalName = {}
    exportObj.titlesByUniqueName = {}
    for title_name, title of exportObj.titles
        # Special cases :(
        if title.canonical_name == '"Heavy Scyk" Interceptor'.canonicalize()
            ((exportObj.titlesByCanonicalName ?= {})[title.canonical_name] ?= []).push title
            ((exportObj.titlesByUniqueName ?= {})[title.canonical_name.getXWSBaseName()] ?= []).push title
        else
            (exportObj.titlesByCanonicalName ?= {})[title.canonical_name] = title
            (exportObj.titlesByUniqueName ?= {})[title.canonical_name.getXWSBaseName()] = title

    exportObj.expansions = Object.keys(exportObj.expansions).sort()

exportObj.fixIcons = (data) ->
    if data.text?
        data.text = data.text
            .replace(/%ASTROMECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-astromech"></i>')
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
            .replace(/%ELITE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-elite"></i>')
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
            .replace(/%SLOOPLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopleft"></i>')
            .replace(/%SLOOPRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopright"></i>')
            .replace(/%STRAIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-straight"></i>')
            .replace(/%STOP%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-stop"></i>')
            .replace(/%SYSTEM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-system"></i>')
            .replace(/%TARGETLOCK%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-targetlock"></i>')
            .replace(/%TEAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-team"></i>')
            .replace(/%TECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-tech"></i>')
            .replace(/%TORPEDO%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-torpedo"></i>')
            .replace(/%TROLLLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollleft"></i>')
            .replace(/%TROLLRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollright"></i>')
            .replace(/%TURNLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnleft"></i>')
            .replace(/%TURNRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnright"></i>')
            .replace(/%TURRET%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turret"></i>')
            .replace(/%UTURN%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-kturn"></i>')
            .replace(/%HUGESHIPONLY%/g, '<span class="card-restriction">Huge ship only.</span>')
            .replace(/%LARGESHIPONLY%/g, '<span class="card-restriction">Large ship only.</span>')
            .replace(/%SMALLSHIPONLY%/g, '<span class="card-restriction">Small ship only.</span>')
            .replace(/%REBELONLY%/g, '<span class="card-restriction">Rebel only.</span>')
            .replace(/%IMPERIALONLY%/g, '<span class="card-restriction">Imperial only.</span>')
            .replace(/%SCUMONLY%/g, '<span class="card-restriction">Scum only.</span>')
            .replace(/%LIMITED%/g, '<span class="card-restriction">Limited.</span>')
            .replace(/%LINEBREAK%/g, '<br /><br />')
            .replace(/%DE_HUGESHIPONLY%/g, '<span class="card-restriction">Nur für riesige Schiffe.</span>')
            .replace(/%DE_LARGESHIPONLY%/g, '<span class="card-restriction">Nur für grosse Schiffe.</span>')
            .replace(/%DE_REBELONLY%/g, '<span class="card-restriction">Nur für Rebellen.</span>')
            .replace(/%DE_IMPERIALONLY%/g, '<span class="card-restriction">Nur für das Imperium.</span>')
            .replace(/%DE_SCUMONLY%/g, '<span class="card-restriction">Nur für Abschaum & Kriminelle.</span>')
            .replace(/%DE_GOZANTIONLY%/g, '<span class="card-restriction">Nur für Kreuzer der <em>Gozanti</em>-Klasse.</span>')
            .replace(/%DE_LIMITED%/g, '<span class="card-restriction">Limitiert.</span>')
            .replace(/%DE_SMALLSHIPONLY%/g, '<span class="card-restriction">Nur für kleine Schiffe.</span>')
            .replace(/%FR_HUGESHIPONLY%/g, '<span class="card-restriction">Vaisseau immense uniquement.</span>')
            .replace(/%FR_LARGESHIPONLY%/g, '<span class="card-restriction">Grand vaisseau uniquement.</span>')
            .replace(/%FR_REBELONLY%/g, '<span class="card-restriction">Rebelle uniquement.</span>')
            .replace(/%FR_IMPERIALONLY%/g, '<span class="card-restriction">Impérial uniquement.</span>')
            .replace(/%FR_SCUMONLY%/g, '<span class="card-restriction">Racailles uniquement.</span>')
            .replace(/%GOZANTIONLY%/g, '<span class="card-restriction"><em>Gozanti</em>-class cruiser only.</span>')

exportObj.canonicalizeShipNames = (card_data) ->
    for ship_name, ship_data of card_data.ships
        ship_data.english_name = ship_name
        ship_data.canonical_name ?= ship_data.english_name.canonicalize()

exportObj.renameShip = (english_name, new_name) ->
    exportObj.ships[new_name] = exportObj.ships[english_name]
    exportObj.ships[new_name].name = new_name
    delete exportObj.ships[english_name]
