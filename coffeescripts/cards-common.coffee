# This must be loaded before any of the card language modules!
exportObj = exports ? this

exportObj.unreleasedExpansions = [
    "Rebel Aces Expansion Pack"
    "YT-2400 Freighter Expansion Pack"
    "VT-49 Decimator Expansion Pack"
    "StarViper Expansion Pack"
    "M3-A Interceptor Expansion Pack"
    "IG-2000 Expansion Pack"
    "Most Wanted Expansion Pack"
]

exportObj.isReleased = (data) ->
    for source in data.sources
        return true if source not in exportObj.unreleasedExpansions
    false

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
              [ 3, 1, 2, 1, 3, 0]
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
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 1, 0, 1, 0, 0]
                [ 0, 1, 1, 1, 0, 0]
                [ 0, 0, 1, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 0]
            ]
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
        "YT-2400":
            name: "YT-2400"
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

    # name field is for convenience only
    pilotsById: [
        {
            name: "Wedge Antilles"
            faction: "Rebel Alliance"
            id: 0
            sources: [ "X-Wing Expansion Pack", ]
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
            sources: [ "X-Wing Expansion Pack", ]
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
            sources: [ "Core", "X-Wing Expansion Pack", ]
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
            sources: [ "Core", "X-Wing Expansion Pack", ]
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
            sources: [ "Core", ]
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
            sources: [ "Core", ]
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
            sources: [ "Y-Wing Expansion Pack", ]
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
            sources: [ "Y-Wing Expansion Pack", ]
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
            sources: [ "Y-Wing Expansion Pack", ]
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
            sources: [ "Y-Wing Expansion Pack", ]
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
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
            skill: 1
            points: 12
            slots: []
        }
        {
            name: "Obsidian Squadron Pilot"
            faction: "Galactic Empire"
            id: 11
            ship: "TIE Fighter"
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
            skill: 3
            points: 13
            slots: []
        }
        {
            name: "Black Squadron Pilot"
            faction: "Galactic Empire"
            id: 12
            ship: "TIE Fighter"
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
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
            sources: [ "TIE Fighter Expansion Pack", ]
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
            sources: [ "Core", ]
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
            sources: [ "TIE Fighter Expansion Pack", ]
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
            sources: [ "Core", ]
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
            sources: [ "Core", ]
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
            sources: [ "TIE Fighter Expansion Pack", ]
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
            sources: [ "TIE Advanced Expansion Pack", ]
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
            sources: [ "TIE Advanced Expansion Pack", ]
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
            sources: [ "TIE Advanced Expansion Pack", ]
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
            sources: [ "TIE Advanced Expansion Pack", ]
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
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 1
            points: 18
            slots: [ ]
        }
        {
            name: "Avenger Squadron Pilot"
            faction: "Galactic Empire"
            id: 24
            ship: "TIE Interceptor"
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 3
            points: 20
            slots: [ ]
        }
        {
            name: "Saber Squadron Pilot"
            faction: "Galactic Empire"
            id: 25
            ship: "TIE Interceptor"
            sources: [
                "TIE Interceptor Expansion Pack"
                "Imperial Aces Expansion Pack"
            ]
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
            sources: [ "TIE Interceptor Expansion Pack", ]
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
            sources: [ "TIE Interceptor Expansion Pack", ]
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
            sources: [ "TIE Interceptor Expansion Pack", ]
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
            sources: [ "A-Wing Expansion Pack", ]
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
            sources: [ "A-Wing Expansion Pack", ]
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
            sources: [ "A-Wing Expansion Pack", "Rebel Aces Expansion Pack" ]
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
            sources: [ "A-Wing Expansion Pack", "Rebel Aces Expansion Pack" ]
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
            sources: [ "Millennium Falcon Expansion Pack", ]
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
            sources: [ "Millennium Falcon Expansion Pack", ]
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
            sources: [ "Millennium Falcon Expansion Pack", ]
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
            sources: [ "Millennium Falcon Expansion Pack", ]
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
            sources: [ "Slave I Expansion Pack", ]
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
            sources: [ "Slave I Expansion Pack", ]
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
            sources: [ "Slave I Expansion Pack", ]
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
            sources: [ "Slave I Expansion Pack", ]
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
            sources: [ "B-Wing Expansion Pack", ]
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
            sources: [ "B-Wing Expansion Pack", ]
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
            sources: [ "B-Wing Expansion Pack", "Rebel Aces Expansion Pack" ]
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
            sources: [ "B-Wing Expansion Pack", "Rebel Aces Expansion Pack" ]
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
            sources: [ "HWK-290 Expansion Pack", ]
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
            sources: [ "HWK-290 Expansion Pack", ]
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
            sources: [ "HWK-290 Expansion Pack", ]
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
            sources: [ "HWK-290 Expansion Pack", ]
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
            sources: [ "TIE Bomber Expansion Pack", ]
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
            sources: [ "TIE Bomber Expansion Pack", ]
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
            sources: [ "TIE Bomber Expansion Pack", ]
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
            sources: [ "TIE Bomber Expansion Pack", ]
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
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
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
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
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
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
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
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
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
            sources: [ "Imperial Aces Expansion Pack", ]
            skill: 5
            points: 23
            slots: [ ]
        }
        {
            name: "Royal Guard Pilot"
            faction: "Galactic Empire"
            id: 58
            ship: "TIE Interceptor"
            sources: [ "Imperial Aces Expansion Pack", ]
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
            sources: [ "Imperial Aces Expansion Pack", ]
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
            sources: [ "Imperial Aces Expansion Pack", ]
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
            sources: [ "Imperial Aces Expansion Pack", ]
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
            sources: [ "Rebel Transport Expansion Pack", ]
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
            sources: [ "Z-95 Headhunter Expansion Pack", ]
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
            sources: [ "Z-95 Headhunter Expansion Pack", ]
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
            sources: [ "Z-95 Headhunter Expansion Pack", ]
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
            sources: [ "Z-95 Headhunter Expansion Pack", ]
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
            sources: [ "TIE Defender Expansion Pack", ]
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
            sources: [ "TIE Defender Expansion Pack", ]
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
            sources: [ "TIE Defender Expansion Pack", ]
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
            sources: [ "TIE Defender Expansion Pack", ]
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
            sources: [ "E-Wing Expansion Pack", ]
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
            sources: [ "E-Wing Expansion Pack", ]
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
            sources: [ "E-Wing Expansion Pack", ]
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
            sources: [ "E-Wing Expansion Pack", ]
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
            sources: [ "TIE Phantom Expansion Pack", ]
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
            sources: [ "TIE Phantom Expansion Pack", ]
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
            sources: [ "TIE Phantom Expansion Pack", ]
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
            sources: [ "TIE Phantom Expansion Pack", ]
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
            sources: [ "Tantive IV Expansion Pack", ]
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
            sources: [ "Tantive IV Expansion Pack", ]
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
            sources: [ "Rebel Transport Expansion Pack", ]
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
            sources: [ "Rebel Transport Expansion Pack", ]
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
            sources: [ "Rebel Transport Expansion Pack", ]
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
            sources: [ "Rebel Transport Expansion Pack", ]
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
            sources: [ "Rebel Aces Expansion Pack", ]
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
            sources: [ "Rebel Aces Expansion Pack", ]
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
            sources: [ "Rebel Aces Expansion Pack", ]
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
            sources: [ "Rebel Aces Expansion Pack", ]
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
            faction: "Rebel Alliance"
            id: 90
            ship: "CR90 Corvette (Fore)"
            sources: [ "Tantive IV Expansion Pack", ]
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
            faction: "Rebel Alliance"
            id: 91
            ship: "CR90 Corvette (Aft)"
            sources: [ "Tantive IV Expansion Pack", ]
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
            sources: [ "YT-2400 Freighter Expansion Pack", ]
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
            sources: [ "YT-2400 Freighter Expansion Pack", ]
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
            sources: [ "YT-2400 Freighter Expansion Pack", ]
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
            sources: [ "YT-2400 Freighter Expansion Pack", ]
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
            sources: [ "VT-49 Decimator Expansion Pack", ]
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
            sources: [ "VT-49 Decimator Expansion Pack", ]
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
            sources: [ "VT-49 Decimator Expansion Pack", ]
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
            sources: [ "VT-49 Decimator Expansion Pack", ]
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
            sources: [ "StarViper Expansion Pack", ]
            skill: 7
            points: 31
            slots: [
                "Elite"
                "Torpedo"
            ]
        }
        {
            name: "Unspoiled PS5 StarViper Pilot"
            faction: "Scum and Villainy"
            id: 101
            unique: true
            ship: "StarViper"
            sources: [ "StarViper Expansion Pack", ]
            skill: 5
            points: 99
            slots: [
                "Torpedo"
            ]
        }
        {
            name: "Black ???"
            faction: "Scum and Villainy"
            id: 102
            ship: "StarViper"
            sources: [ "StarViper Expansion Pack", ]
            skill: 3
            points: 99
            slots: [
                "Torpedo"
            ]
        }
        {
            name: "Black Sun ???"
            faction: "Scum and Villainy"
            id: 103
            ship: "StarViper"
            sources: [ "StarViper Expansion Pack", ]
            skill: 1
            points: 99
            slots: [
                "Torpedo"
            ]
        }
        {
            name: "Serissu"
            faction: "Scum and Villainy"
            id: 104
            ship: "M3-A Interceptor"
            sources: [ "M3-A Interceptor Expansion Pack", ]
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
            sources: [ "M3-A Interceptor Expansion Pack", ]
            skill: 6
            points: 99
            unique: true
            slots: [ ]
        }
        {
            name: "Tansarii ???"
            faction: "Scum and Villainy"
            id: 106
            ship: "M3-A Interceptor"
            sources: [ "M3-A Interceptor Expansion Pack", ]
            skill: 5
            points: 99
            slots: [
            ]
        }
        {
            name: "Cartel ???"
            faction: "Scum and Villainy"
            id: 107
            ship: "M3-A Interceptor"
            sources: [ "M3-A Interceptor Expansion Pack", ]
            skill: 2
            points: 99
            slots: [ ]
        }
        {
            name: "IG-88A"
            faction: "Scum and Villainy"
            id: 108
            unique: true
            ship: "Aggressor"
            sources: [ "IG-2000 Expansion Pack", ]
            skill: 6
            points: 99
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
            sources: [ "IG-2000 Expansion Pack", ]
            ship: "Aggressor"
            skill: 6
            points: 99
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
            sources: [ "IG-2000 Expansion Pack", ]
            skill: 6
            points: 99
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
            sources: [ "IG-2000 Expansion Pack", ]
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
            name: "Unspoiled PS7 Scum Z-95 Pilot"
            unique: true
            faction: "Scum and Villainy"
            id: 112
            ship: "Z-95 Headhunter"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 7
            points: 17
            slots: [
                "Elite"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Unspoiled PS5 Scum Z-95 Pilot"
            unique: true
            faction: "Scum and Villainy"
            id: 113
            ship: "Z-95 Headhunter"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 5
            points: 99
            slots: [
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Unspoiled PS3 Scum Z-95 Pilot"
            faction: "Scum and Villainy"
            id: 114
            ship: "Z-95 Headhunter"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 3
            points: 99
            slots: [
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Unspoiled PS1 Scum Z-95 Pilot"
            faction: "Scum and Villainy"
            id: 115
            ship: "Z-95 Headhunter"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 1
            points: 99
            slots: [
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Boba Fett (Scum)"
            faction: "Scum and Villainy"
            id: 116
            ship: "Firespray-31"
            sources: [ "Most Wanted Expansion Pack", ]
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
            unique: true
            faction: "Scum and Villainy"
            id: 117
            ship: "Firespray-31"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 7
            points: 99
            slots: [
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Unspoiled PS6 Scum Firespray Pilot"
            unique: true
            faction: "Scum and Villainy"
            id: 118
            ship: "Firespray-31"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 6
            points: 99
            slots: [
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Unspoiled PS5 Scum Firespray Pilot"
            faction: "Scum and Villainy"
            id: 119
            ship: "Firespray-31"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 5
            points: 99
            slots: [
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Unspoiled PS7 Scum Y-Wing Pilot"
            unique: true
            faction: "Scum and Villainy"
            id: 120
            ship: "Y-Wing"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 7
            points: 99
            slots: [
                "Salvaged Astromech"
            ]
        }
        {
            name: "Unspoiled PS5 Scum Y-Wing Pilot"
            unique: true
            faction: "Scum and Villainy"
            id: 121
            ship: "Y-Wing"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 5
            points: 99
            slots: [
                "Salvaged Astromech"
            ]
        }
        {
            name: "Unspoiled PS4 Scum Y-Wing Pilot"
            faction: "Scum and Villainy"
            id: 122
            ship: "Y-Wing"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 4
            points: 99
            slots: [
                "Salvaged Astromech"
            ]
        }
        {
            name: "Unspoiled PS2 Scum Y-Wing Pilot"
            faction: "Scum and Villainy"
            id: 123
            ship: "Y-Wing"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 2
            points: 99
            slots: [
                "Salvaged Astromech"
            ]
        }
        {
            name: "Unspoiled PS7 Scum HWK Pilot"
            unique: true
            faction: "Scum and Villainy"
            id: 124
            ship: "HWK-290"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 7
            points: 99
            slots: [
            ]
        }
        {
            name: "Unspoiled PS5 Scum HWK Pilot"
            unique: true
            faction: "Scum and Villainy"
            id: 125
            ship: "HWK-290"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 5
            points: 99
            slots: [
            ]
        }
        {
            name: "Unspoiled PS3 Scum HWK Pilot"
            unique: true
            faction: "Scum and Villainy"
            id: 126
            ship: "HWK-290"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 3
            points: 99
            slots: [
            ]
        }
        {
            name: "Unspoiled PS1 Scum HWK Pilot"
            faction: "Scum and Villainy"
            id: 127
            ship: "HWK-290"
            sources: [ "Most Wanted Expansion Pack", ]
            skill: 1
            points: 99
            slots: [
            ]
        }

    ]

    upgradesById: [
        {
            name: "Ion Cannon Turret"
            id: 0
            slot: "Turret"
            sources: [ "Y-Wing Expansion Pack", "HWK-290 Expansion Pack", ]
            points: 5
            attack: 3
            range: "1-2"
        }
        {
            name: "Proton Torpedoes"
            id: 1
            slot: "Torpedo"
            sources: [
                "Core"
                "X-Wing Expansion Pack"
                "Y-Wing Expansion Pack"
                "B-Wing Expansion Pack"
            ]
            points: 4
            attack: 4
            range: "2-3"
        }
        {
            name: "R2 Astromech"
            id: 2
            slot: "Astromech"
            sources: [ "Y-Wing Expansion Pack", ]
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
            id: 3
            unique: true
            slot: "Astromech"
            sources: [ "Core", ]
            points: 4
        }
        {
            name: "R2-F2"
            id: 4
            unique: true
            slot: "Astromech"
            sources: [ "Core", ]
            points: 3
        }
        {
            name: "R5-D8"
            id: 5
            unique: true
            slot: "Astromech"
            sources: [ "Y-Wing Expansion Pack", ]
            points: 3
        }
        {
            name: "R5-K6"
            id: 6
            unique: true
            slot: "Astromech"
            sources: [ "X-Wing Expansion Pack", ]
            points: 2
        }
        {
            name: "R5 Astromech"
            id: 7
            slot: "Astromech"
            sources: [ "X-Wing Expansion Pack", ]
            points: 1
        }
        {
            name: "Determination"
            id: 8
            slot: "Elite"
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
            points: 1
        }
        {
            name: "Swarm Tactics"
            id: 9
            slot: "Elite"
            sources: [
                "TIE Fighter Expansion Pack"
                "TIE Advanced Expansion Pack"
            ]
            points: 2
        }
        {
            name: "Squad Leader"
            id: 10
            unique: true
            slot: "Elite"
            sources: [ "TIE Advanced Expansion Pack", ]
            points: 2
        }
        {
            name: "Expert Handling"
            id: 11
            slot: "Elite"
            sources: [ "X-Wing Expansion Pack", "TIE Advanced Expansion Pack", ]
            points: 2
        }
        {
            name: "Marksmanship"
            id: 12
            slot: "Elite"
            sources: [ "Core", "X-Wing Expansion Pack", ]
            points: 3
        }
        {
            name: "Concussion Missiles"
            id: 13
            slot: "Missile"
            sources: [
                "TIE Advanced Expansion Pack"
                "A-Wing Expansion Pack"
                "Millennium Falcon Expansion Pack"
            ]
            points: 4
            attack: 4
            range: "2-3"
        }
        {
            name: "Cluster Missiles"
            id: 14
            slot: "Missile"
            sources: [ "TIE Advanced Expansion Pack", "A-Wing Expansion Pack", ]
            points: 4
            attack: 3
            range: "1-2"
        }
        {
            name: "Daredevil"
            id: 15
            slot: "Elite"
            sources: [ "TIE Interceptor Expansion Pack", ]
            points: 3
        }
        {
            name: "Elusiveness"
            id: 16
            slot: "Elite"
            sources: [ "TIE Interceptor Expansion Pack", "Millennium Falcon Expansion Pack", ]
            points: 2
        }
        {
            name: "Homing Missiles"
            id: 17
            slot: "Missile"
            sources: [ "A-Wing Expansion Pack", "Slave I Expansion Pack", ]
            attack: 4
            range: "2-3"
            points: 5
        }
        {
            name: "Push the Limit"
            id: 18
            slot: "Elite"
            sources: [ "A-Wing Expansion Pack", "Imperial Aces Expansion Pack", ]
            points: 3
        }
        {
            name: "Deadeye"
            id: 19
            slot: "Elite"
            sources: [ "A-Wing Expansion Pack", ]
            points: 1
        }
        {
            name: "Expose"
            id: 20
            slot: "Elite"
            sources: [ "Slave I Expansion Pack", ]
            points: 4
        }
        {
            name: "Gunner"
            id: 21
            slot: "Crew"
            sources: [ "Slave I Expansion Pack", "YT-2400 Freighter Expansion Pack" ]
            points: 5
        }
        {
            name: "Ion Cannon"
            id: 22
            slot: "Cannon"
            sources: [
                "Slave I Expansion Pack"
                "B-Wing Expansion Pack"
                "TIE Defender Expansion Pack"
                "M3-A Interceptor Expansion Pack"
            ]
            points: 3
            attack: 3
            range: "1-3"
        }
        {
            name: "Heavy Laser Cannon"
            id: 23
            slot: "Cannon"
            sources: [ "Slave I Expansion Pack", "Lambda-Class Shuttle Expansion Pack", "YT-2400 Freighter Expansion Pack" ]
            points: 7
            attack: 4
            range: "2-3"
        }
        {
            name: "Seismic Charges"
            id: 24
            slot: "Bomb"
            sources: [ "Slave I Expansion Pack", "TIE Bomber Expansion Pack", "IG-2000 Expansion Pack" ]
            points: 2
        }
        {
            name: "Mercenary Copilot"
            id: 25
            slot: "Crew"
            sources: [ "Slave I Expansion Pack", "YT-2400 Freighter Expansion Pack" ]
            points: 2
        }
        {
            name: "Assault Missiles"
            id: 26
            slot: "Missile"
            sources: [
                "Millennium Falcon Expansion Pack"
                "Slave I Expansion Pack"
                "TIE Bomber Expansion Pack"
                "Z-95 Headhunter Expansion Pack"
            ]
            points: 5
            attack: 4
            range: "2-3"
        }
        {
            name: "Veteran Instincts"
            id: 27
            slot: "Elite"
            sources: [ "Millennium Falcon Expansion Pack", "Slave I Expansion Pack", ]
            points: 1
            modifier_func: (stats) ->
                stats.skill += 2
        }
        {
            name: "Proximity Mines"
            id: 28
            slot: "Bomb"
            sources: [ "Slave I Expansion Pack", "IG-2000 Expansion Pack" ]
            points: 3
        }
        {
            name: "Weapons Engineer"
            id: 29
            slot: "Crew"
            sources: [ "Millennium Falcon Expansion Pack", "Lambda-Class Shuttle Expansion Pack", ]
            points: 3
        }
        {
            name: "Draw Their Fire"
            id: 30
            slot: "Elite"
            sources: [ "Millennium Falcon Expansion Pack", ]
            points: 1
        }
        {
            name: "Luke Skywalker"
            id: 31
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            sources: [ "Millennium Falcon Expansion Pack", ]
            points: 7
        }
        {
            name: "Nien Nunb"
            id: 32
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            sources: [ "Millennium Falcon Expansion Pack", ]
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
            sources: [ "Millennium Falcon Expansion Pack", ]
            points: 4
        }
        {
            name: "Advanced Proton Torpedoes"
            id: 34
            slot: "Torpedo"
            attack: 5
            range: "1"
            sources: [ "B-Wing Expansion Pack", "TIE Bomber Expansion Pack", ]
            points: 6
        }
        {
            name: "Autoblaster"
            id: 35
            slot: "Cannon"
            attack: 3
            range: "1"
            sources: [ "B-Wing Expansion Pack", "IG-2000 Expansion Pack" ]
            points: 5
        }
        {
            name: "Fire-Control System"
            id: 36
            slot: "System"
            sources: [ "B-Wing Expansion Pack", "TIE Phantom Expansion Pack" ]
            points: 2
        }
        {
            name: "Blaster Turret"
            id: 37
            slot: "Turret"
            sources: [ "HWK-290 Expansion Pack", ]
            points: 4
            attack: 3
            range: "1-2"
        }
        {
            name: "Recon Specialist"
            id: 38
            slot: "Crew"
            sources: [ "HWK-290 Expansion Pack", "TIE Phantom Expansion Pack" ]
            points: 3
        }
        {
            name: "Saboteur"
            id: 39
            slot: "Crew"
            sources: [ "HWK-290 Expansion Pack", ]
            points: 2
        }
        {
            name: "Intelligence Agent"
            id: 40
            slot: "Crew"
            sources: [ "HWK-290 Expansion Pack", "Lambda-Class Shuttle Expansion Pack", ]
            points: 1
        }
        {
            name: "Proton Bomb"
            id: 41
            slot: "Bomb"
            sources: [ "TIE Bomber Expansion Pack", "VT-49 Decimator Expansion Pack" ]
            points: 5
        }
        {
            name: "Adrenaline Rush"
            id: 42
            slot: "Elite"
            sources: [ "TIE Bomber Expansion Pack", ]
            points: 1
        }
        {
            name: "Advanced Sensors"
            id: 43
            slot: "System"
            sources: [ "Lambda-Class Shuttle Expansion Pack", "E-Wing Expansion Pack" ]
            points: 3
        }
        {
            name: "Sensor Jammer"
            id: 44
            slot: "System"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 4
        }
        {
            name: "Darth Vader"
            id: 45
            unique: true
            faction: "Galactic Empire"
            slot: "Crew"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 3
        }
        {
            name: "Rebel Captive"
            id: 46
            unique: true
            faction: "Galactic Empire"
            slot: "Crew"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 3
        }
        {
            name: "Flight Instructor"
            id: 47
            slot: "Crew"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 4
        }
        {
            name: "Navigator"
            id: 48
            slot: "Crew"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 3
            epic_restriction_func: (ship) ->
                not (ship.huge ? false)
        }
        {
            name: "Opportunist"
            id: 49
            slot: "Elite"
            sources: [ "Imperial Aces Expansion Pack", ]
            points: 4
        }
        {
            name: "Comms Booster"
            id: 50
            slot: "Cargo"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 4
        }
        {
            name: "Slicer Tools"
            id: 51
            slot: "Cargo"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 7
        }
        {
            name: "Shield Projector"
            id: 52
            slot: "Cargo"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 4
        }
        {
            name: "Ion Pulse Missiles"
            id: 53
            slot: "Missile"
            sources: [ "Z-95 Headhunter Expansion Pack", "TIE Defender Expansion Pack" ]
            points: 3
            attack: 3
            range: """2-3"""
        }
        {
            name: "Wingman"
            id: 54
            slot: "Elite"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            points: 2
        }
        {
            name: "Decoy"
            id: 55
            slot: "Elite"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            points: 2
        }
        {
            name: "Outmaneuver"
            id: 56
            slot: "Elite"
            sources: [ "TIE Defender Expansion Pack", "E-Wing Expansion Pack" ]
            points: 3
        }
        {
            name: "Predator"
            id: 57
            slot: "Elite"
            sources: [ "TIE Defender Expansion Pack", ]
            points: 3
        }
        {
            name: "Flechette Torpedoes"
            id: 58
            slot: "Torpedo"
            sources: [ "E-Wing Expansion Pack", "Rebel Transport Expansion Pack" ]
            points: 2
            attack: 3
            range: """2-3"""
        }
        {
            name: "R7 Astromech"
            id: 59
            slot: "Astromech"
            sources: [ "E-Wing Expansion Pack", ]
            points: 2
        }
        {
            name: "R7-T1"
            id: 60
            unique: true
            slot: "Astromech"
            sources: [ "E-Wing Expansion Pack", ]
            points: 3
        }
        {
            name: "Tactician"
            id: 61
            slot: "Crew"
            sources: [ "TIE Phantom Expansion Pack", ]
            points: 2
        }
        {
            name: "R2-D2 (Crew)"
            aka: [ "R2-D2" ]
            id: 62
            unique: true
            slot: "Crew"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
            faction: "Rebel Alliance"
        }
        {
            name: "C-3PO"
            unique: true
            id: 63
            slot: "Crew"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 3
            faction: "Rebel Alliance"
        }
        {
            name: "Single Turbolasers"
            id: 64
            slot: "Hardpoint"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 8
            energy: 2
            attack: 4
            range: "3-5"
        }
        {
            name: "Quad Laser Cannons"
            id: 65
            slot: "Hardpoint"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 6
            energy: 2
            attack: 3
            range: "1-2"
        }
        {
            name: "Tibanna Gas Supplies"
            id: 66
            slot: "Cargo"
            sources: [ "Tantive IV Expansion Pack", "Rebel Transport Expansion Pack" ]
            points: 4
            limited: true
        }
        {
            name: "Ionization Reactor"
            id: 67
            slot: "Cargo"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
            energy: 5
            limited: true
        }
        {
            name: "Engine Booster"
            id: 68
            slot: "Cargo"
            sources: [ "Tantive IV Expansion Pack", "Rebel Transport Expansion Pack" ]
            points: 3
            limited: true
        }
        {
            name: "R3-A2"
            id: 69
            unique: true
            slot: "Astromech"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 2
        }
        {
            name: "R2-D6"
            id: 70
            unique: true
            slot: "Astromech"
            sources: [ "Rebel Transport Expansion Pack", ]
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
            sources: [ "Rebel Aces Expansion Pack", ]
            points: 1
        }
        {
            name: "Chardaan Refit"
            id: 72
            slot: "Missile"
            sources: [ "Rebel Aces Expansion Pack", ]
            points: -2
            ship: "A-Wing"
        }
        {
            name: "Proton Rockets"
            id: 73
            slot: "Missile"
            sources: [ "Rebel Aces Expansion Pack", "YT-2400 Freighter Expansion Pack" ]
            points: 3
            attack: 2
            range: "1"
        }
        {
            name: "Kyle Katarn"
            id: 74
            unique: true
            slot: "Crew"
            sources: [ "Rebel Aces Expansion Pack", ]
            points: 3
            faction: "Rebel Alliance"
        }
        {
            name: "Jan Ors"
            id: 75
            unique: true
            slot: "Crew"
            sources: [ "Rebel Aces Expansion Pack", ]
            points: 2
            faction: "Rebel Alliance"
        }
        {
            name: "Toryn Farr"
            id: 76
            unique: true
            slot: "Crew"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 6
            faction: "Rebel Alliance"
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: "R4-D6"
            id: 77
            unique: true
            slot: "Astromech"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 1
        }
        {
            name: "R5-P9"
            id: 78
            unique: true
            slot: "Astromech"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 3
        }
        {
            name: "WED-15 Repair Droid"
            id: 79
            slot: "Crew"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 2
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: "Carlist Rieekan"
            id: 80
            unique: true
            slot: "Crew"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 3
            faction: "Rebel Alliance"
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: "Jan Dodonna"
            id: 81
            unique: true
            slot: "Crew"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 6
            faction: "Rebel Alliance"
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: "Expanded Cargo Hold"
            id: 82
            slot: "Cargo"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 1
            ship: "GR-75 Medium Transport"
        }
        {
            name: "Backup Shield Generator"
            id: 83
            slot: "Cargo"
            limited: true
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 3
        }
        {
            name: "EM Emitter"
            id: 84
            slot: "Cargo"
            limited: true
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 3
        }
        {
            name: "Frequency Jammer"
            id: 85
            slot: "Cargo"
            limited: true
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 4
        }
        {
            name: "Han Solo"
            id: 86
            slot: "Crew"
            unique: true
            faction: "Rebel Alliance"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 2
        }
        {
            name: "Leia Organa"
            id: 87
            slot: "Crew"
            unique: true
            faction: "Rebel Alliance"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
        }
        {
            name: "Targeting Coordinator"
            id: 88
            slot: "Crew"
            limited: true
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
        }
        {
            name: "Raymus Antilles"
            id: 89
            slot: "Crew"
            unique: true
            faction: "Rebel Alliance"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 6
            restriction_func: (ship) ->
                ship.data.huge ? false
        }
        {
            name: "Gunnery Team"
            id: 90
            slot: "Team"
            limited: true
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
        }
        {
            name: "Sensor Team"
            id: 91
            slot: "Team"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
        }
        {
            name: "Engineering Team"
            id: 92
            slot: "Team"
            limited: true
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
        }
        {
            name: "Lando Calrissian"
            id: 93
            slot: "Crew"
            unique: true
            faction: "Rebel Alliance"
            sources: [ "YT-2400 Freighter Expansion Pack", ]
            points: 3
        }
        {
            name: "Mara Jade"
            id: 94
            slot: "Crew"
            unique: true
            faction: "Galactic Empire"
            sources: [ "VT-49 Decimator Expansion Pack", ]
            points: 3
        }
        {
            name: "Fleet Officer"
            id: 95
            slot: "Crew"
            faction: "Galactic Empire"
            sources: [ "VT-49 Decimator Expansion Pack", ]
            points: 3
        }
        {
            name: "Stay On Target"
            id: 96
            slot: "Elite"
            points: 2
            sources: [ "YT-2400 Freighter Expansion Pack", ]
        }
        {
            name: "Dash Rendar"
            id: 97
            unique: true
            slot: "Crew"
            points: 2
            sources: [ "YT-2400 Freighter Expansion Pack", ]
            faction: "Rebel Alliance"
        }
        {
            name: "Lone Wolf"
            id: 98
            unique: true
            slot: "Elite"
            points: 2
            sources: [ "YT-2400 Freighter Expansion Pack", ]
        }
        {
            name: '"Leebo"'
            id: 99
            unique: true
            slot: "Crew"
            points: 2
            sources: [ "YT-2400 Freighter Expansion Pack", ]
            faction: "Rebel Alliance"
        }
        {
            name: "Ruthlessness"
            id: 100
            slot: "Elite"
            points: 3
            faction: "Galactic Empire"
            sources: [ "VT-49 Decimator Expansion Pack" ]
        }
        {
            name: "Intimidation"
            id: 101
            slot: "Elite"
            points: 2
            sources: [ "VT-49 Decimator Expansion Pack" ]
        }
        {
            name: "Ysanne Isard"
            id: 102
            unique: true
            slot: "Crew"
            points: 4
            faction: "Galactic Empire"
            sources: [ "VT-49 Decimator Expansion Pack" ]
        }
        {
            name: "Moff Jerjerrod"
            id: 103
            unique: true
            slot: "Crew"
            points: 2
            faction: "Galactic Empire"
            sources: [ "VT-49 Decimator Expansion Pack" ]
        }
        {
            name: "Ion Torpedoes"
            id: 104
            slot: "Torpedo"
            points: 5
            attack: 4
            range: "2-3"
            sources: [ "VT-49 Decimator Expansion Pack", "StarViper Expansion Pack" ]
        }
        {
            name: "Bodyguard"
            id: 105
            unique: true
            slot: "Elite"
            points: 2
            faction: "Scum and Villainy"
            sources: [ "StarViper Expansion Pack", ]
        }
        {
            name: "Calc???"
            id: 106
            slot: "Elite"
            points: 99
            sources: [ "StarViper Expansion Pack", ]
        }
        {
            name: "Accuracy Corrector"
            id: 107
            slot: "System"
            points: 3
            sources: [ "StarViper Expansion Pack", "IG-2000 Expansion Pack" ]
        }
        {
            name: "Inertial Dampeners"
            id: 108
            slot: "Illicit"
            points: 1
            sources: [ "StarViper Expansion Pack", "IG-2000 Expansion Pack" ]
        }
        {
            name: "Flechette Cannon"
            id: 109
            slot: "Cannon"
            points: 99
            sources: [ "M3-A Interceptor Expansion Pack", ]
        }
        {
            name: '"Mang??? Cannon"'
            id: 110
            slot: "Cannon"
            points: 99
            sources: [ "M3-A Interceptor Expansion Pack", "IG-2000 Expansion Pack" ]
        }
        {
            name: "Dead???"
            id: 111
            slot: "Illicit"
            points: 99
            sources: [ "IG-2000 Expansion Pack", ]
        }
        {
            name: "Fee???"
            id: 112
            slot: "Illicit"
            points: 99
            sources: [ "IG-2000 Expansion Pack", ]
        }
        {
            name: '"Hot ??? Blaster"'
            id: 113
            slot: "Illicit"
            points: 99
            sources: [ "IG-2000 Expansion Pack", ]
        }
        {
            name: "Greedo"
            id: 114
            unique: true
            slot: "Crew"
            faction: "Scum and Villainy"
            points: 1
            sources: [ "Most Wanted Expansion Pack", ]
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
            sources: [ "Slave I Expansion Pack", "M3-A Interceptor Expansion Pack" ]
            modifier_func: (stats) ->
                stats.agility += 1
        }
        {
            name: "Shield Upgrade"
            id: 2
            points: 4
            sources: [ "Millennium Falcon Expansion Pack", "Imperial Aces Expansion Pack", ]
            modifier_func: (stats) ->
                stats.shields += 1
        }
        {
            name: "Engine Upgrade"
            id: 3
            points: 4
            sources: [ "Millennium Falcon Expansion Pack", ]
            modifier_func: (stats) ->
                stats.actions.push 'Boost' if 'Boost' not in stats.actions
        }
        {
            name: "Anti-Pursuit Lasers"
            id: 4
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 2
            restriction_func: (ship) ->
                ship.data.large ? false
        }
        {
            name: "Targeting Computer"
            id: 5
            sources: [ "Imperial Aces Expansion Pack", ]
            points: 2
            modifier_func: (stats) ->
                stats.actions.push 'Target Lock' if 'Target Lock' not in stats.actions
        }
        {
            name: "Hull Upgrade"
            id: 6
            sources: [ "Imperial Aces Expansion Pack", "StarViper Expansion Pack" ]
            points: 3
            modifier_func: (stats) ->
                stats.hull += 1
        }
        {
            name: "Munitions Failsafe"
            id: 7
            sources: [ "Z-95 Headhunter Expansion Pack", "TIE Defender Expansion Pack" ]
            points: 1
        }
        {
            name: "Stygium Particle Accelerator"
            id: 8
            sources: [ "TIE Phantom Expansion Pack", ]
            points: 2
        }
        {
            name: "Advanced Cloaking Device"
            id: 9
            sources: [ "TIE Phantom Expansion Pack", ]
            points: 4
            ship: "TIE Phantom"
        }
        {
            name: "Combat Retrofit"
            id: 10
            sources: [ "Rebel Transport Expansion Pack", ]
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
            sources: [ "Rebel Aces Expansion Pack", ]
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
            sources: [ "YT-2400 Freighter Expansion Pack" ]
            points: 3
            restriction_func: (ship) ->
                ship.data.large ? false
        }
        {
            name: "Experimental Interface"
            id: 13
            sources: [ "YT-2400 Freighter Expansion Pack" ]
            unique: true
            points: 3
        }
        {
            name: "Tactical Jammer"
            id: 14
            sources: [ "VT-49 Decimator Expansion Pack" ]
            points: 1
            restriction_func: (ship) ->
                ship.data.large ? false
        }
        {
            name: "Autoth???"
            id: 15
            points: 99
            sources: [ "StarViper Expansion Pack", ]
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
            sources: [ "Slave I Expansion Pack", ]
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
            sources: [ "Millennium Falcon Expansion Pack", ]
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
            sources: [ "HWK-290 Expansion Pack", ]
            unique: true
            points: 3
            ship: "HWK-290"
        }
        {
            name: "ST-321"
            id: 4
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            unique: true
            points: 3
            ship: "Lambda-Class Shuttle"
        }
        {
            name: "Royal Guard TIE"
            id: 5
            sources: [ "Imperial Aces Expansion Pack", ]
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
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
            ship: "CR90 Corvette (Fore)"
        }
        {
            name: "A-Wing Test Pilot"
            id: 7
            sources: [ "Rebel Aces Expansion Pack", ]
            points: 0
            ship: "A-Wing"
            restriction_func: (ship) ->
                ship.effectiveStats().skill > 1
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
             sources: [ "Rebel Aces Expansion Pack", ]
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
            sources: [ "Tantive IV Expansion Pack", ]
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
            sources: [ "Rebel Transport Expansion Pack", ]
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
            sources: [ "Rebel Transport Expansion Pack", ]
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
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 2
            ship: "GR-75 Medium Transport"
        }
        {
            name: "Jaina's Light"
            id: 13
            unique: true
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 2
            ship: "CR90 Corvette (Fore)"
        }
        {
            name: "Outrider"
            id: 14
            unique: true
            sources: [ "YT-2400 Freighter Expansion Pack", ]
            points: 5
            ship: "YT-2400"
        }
        {
            name: "Dauntless"
            id: 15
            unique: true
            sources: [ "VT-49 Decimator Expansion Pack", ]
            points: 2
            ship: "VT-49 Decimator"
        }
        {
            name: "Virago"
            id: 16
            unique: true
            sources: [ "StarViper Expansion Pack", ]
            points: 1
            ship: "StarViper"
            restriction_func: (ship) ->
                ship.pilot.skill > 2
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
            id: 17
            sources: [ "M3-A Interceptor Expansion Pack", ]
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
            id: 18
            sources: [ "M3-A Interceptor Expansion Pack", ]
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
            id: 19
            sources: [ "M3-A Interceptor Expansion Pack", ]
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
            sources: [ "IG-2000 Expansion Pack", ]
            points: 0
            ship: "Aggressor"
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
            exportObj.titles[title_data.name] = title_data
    for title_name, translations of title_translations
        for field, translation of translations
            try
                exportObj.titles[title_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for title #{title_name}"
                throw e


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

    exportObj.modificationsById = {}
    exportObj.modificationsByLocalizedName = {}
    for modification_name, modification of exportObj.modifications
        exportObj.fixIcons modification
        # Modifications cannot be added to huge ships unless specifically allowed
        if modification.huge?
            unless modification.restriction_func?
                modification.restriction_func = (ship) ->
                    ship.data.huge ? false
        else unless modification.restriction_func?
            modification.restriction_func = (ship) ->
                not (ship.data.huge ? false)
        exportObj.modificationsById[modification.id] = modification
        exportObj.modificationsByLocalizedName[modification.name] = modification
        for source in modification.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.modificationsById).length != Object.keys(exportObj.modifications).length
        throw new Error("At least one modification shares an ID with another")

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

    exportObj.expansions = Object.keys(exportObj.expansions).sort()

exportObj.fixIcons = (data) ->
    if data.text?
        data.text = data.text
            .replace(/%ASTROMECH%/g, '<i class="xwing-font xwing-font-astromech"></i>')
            .replace(/%BANKLEFT%/g, '<i class="xwing-font xwing-font-bankleft"></i>')
            .replace(/%BANKRIGHT%/g, '<i class="xwing-font xwing-font-bankright"></i>')
            .replace(/%BARRELROLL%/g, '<i class="xwing-font xwing-font-barrelroll"></i>')
            .replace(/%BOMB%/g, '<i class="xwing-font xwing-font-bomb"></i>')
            .replace(/%BOOST%/g, '<i class="xwing-font xwing-font-boost"></i>')
            .replace(/%CANNON%/g, '<i class="xwing-font xwing-font-cannon"></i>')
            .replace(/%CARGO%/g, '<i class="xwing-font xwing-font-cargo"></i>')
            .replace(/%CLOAK%/g, '<i class="xwing-font xwing-font-cloak"></i>')
            .replace(/%COORDINATE%/g, '<i class="xwing-font xwing-font-coordinate"></i>')
            .replace(/%CRIT%/g, '<i class="xwing-font xwing-font-crit"></i>')
            .replace(/%CREW%/g, '<i class="xwing-font xwing-font-crew"></i>')
            .replace(/%ELITE%/g, '<i class="xwing-font xwing-font-elite"></i>')
            .replace(/%EVADE%/g, '<i class="xwing-font xwing-font-evade"></i>')
            .replace(/%FOCUS%/g, '<i class="xwing-font xwing-font-focus"></i>')
            .replace(/%HARDPOINT%/g, '<i class="xwing-font xwing-font-hardpoint"></i>')
            .replace(/%HIT%/g, '<i class="xwing-font xwing-font-hit"></i>')
            .replace(/%JAM%/g, '<i class="xwing-font xwing-font-jam"></i>')
            .replace(/%KTURN%/g, '<i class="xwing-font xwing-font-kturn"></i>')
            .replace(/%MISSILE%/g, '<i class="xwing-font xwing-font-missile"></i>')
            .replace(/%RECOVER%/g, '<i class="xwing-font xwing-font-recover"></i>')
            .replace(/%REINFORCE%/g, '<i class="xwing-font xwing-font-reinforce"></i>')
            .replace(/%STRAIGHT%/g, '<i class="xwing-font xwing-font-straight"></i>')
            .replace(/%STOP%/g, '<i class="xwing-font xwing-font-stop"></i>')
            .replace(/%SYSTEM%/g, '<i class="xwing-font xwing-font-system"></i>')
            .replace(/%TARGETLOCK%/g, '<i class="xwing-font xwing-font-targetlock"></i>')
            .replace(/%TEAM%/g, '<i class="xwing-font xwing-font-team"></i>')
            .replace(/%TORPEDO%/g, '<i class="xwing-font xwing-font-torpedo"></i>')
            .replace(/%TURNLEFT%/g, '<i class="xwing-font xwing-font-turnleft"></i>')
            .replace(/%TURNRIGHT%/g, '<i class="xwing-font xwing-font-turnright"></i>')
            .replace(/%UTURN%/g, '<i class="xwing-font xwing-font-kturn"></i>')

exportObj.renameShip = (english_name, new_name) ->
    exportObj.ships[new_name] = exportObj.ships[english_name]
    exportObj.ships[new_name].name = new_name
    delete exportObj.ships[english_name]
