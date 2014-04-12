# This must be loaded before any of the card language modules!
exportObj = exports ? this

# Returns an independent copy of the data which can be modified by translation
# modules.
exportObj.basicCardData = ->
    ships:
        "X-Wing":
            name: "X-Wing"
            faction: "Rebel Alliance"
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
            faction: "Rebel Alliance"
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
            faction: "Rebel Alliance"
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
            faction: "Rebel Alliance"
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
            faction: "Galactic Empire"
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
            faction: "Galactic Empire"
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
            faction: "Galactic Empire"
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
            faction: "Galactic Empire"
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
            faction: "Rebel Alliance"
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
            faction: "Galactic Empire"
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
            faction: "Rebel Alliance"
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
            faction: "Galactic Empire"
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
            faction: "Rebel Alliance"
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
        "Z-95 Headhunter":
            name: "Z-95 Headhunter"
            faction: "Rebel Alliance"
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
              [ 1, 1, 2, 1, 1, 0]
              [ 1, 1, 1, 1, 1, 0]
              [ 0, 0, 3, 0, 0, 3]
            ]
        "TIE Defender":
            name: "TIE Defender"
            faction: "Galactic Empire"
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
            faction: "Rebel Alliance"
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
        "TIE Phantom":
            name: "TIE Phantom"
            faction: "Galactic Empire"
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
        "CR90 Corvette (Fore)":
            name: "CR90 Corvette (Fore)"
            faction: "Rebel Alliance"
            attack: 4
            agility: 0
            hull: 8
            shields: 5
            actions: [
                "Coordinate"
                "Target Lock"
            ]
            huge: true
        "CR90 Corvette (Aft)":
            name: "CR90 Corvette (Aft)"
            faction: "Rebel Alliance"
            energy: 5
            agility: 0
            hull: 8
            shields: 3
            actions: [
                "Reinforce"
                "Jam"
            ]
            huge: true

    # name field is for convenience only
    pilotsById: [
        {
            name: "Wedge Antilles"
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
            id: 10
            ship: "TIE Fighter"
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
            skill: 1
            points: 12
            slots: []
        }
        {
            name: "Obsidian Squadron Pilot"
            id: 11
            ship: "TIE Fighter"
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
            skill: 3
            points: 13
            slots: []
        }
        {
            name: "Black Squadron Pilot"
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
            id: 23
            ship: "TIE Interceptor"
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 1
            points: 18
            slots: [ ]
        }
        {
            name: "Avenger Squadron Pilot"
            id: 24
            ship: "TIE Interceptor"
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 3
            points: 20
            slots: [ ]
        }
        {
            name: "Saber Squadron Pilot"
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
            name: "Kir Kanos"
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
            id: 63
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
            id: 69
            ship: "TIE Defender"
            sources: [ "TIE Defender Expansion Pack", ]
            skill: 3
            points: 99
            slots: [
                "Cannon"
                "Missile"
            ]
        }
        {
            name: "Colonel Vessery"
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
            id: 73
            ship: "E-Wing"
            sources: [ "E-Wing Expansion Pack", ]
            skill: 3
            points: 99
            slots: [
                "System"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Etahn A'baht"
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
            id: 75
            unique: true
            ship: "E-Wing"
            sources: [ "E-Wing Expansion Pack", ]
            skill: 8
            points: 99
            slots: [
                "Elite"
                "System"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Sigma Squadron Pilot"
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
            id: 77
            ship: "TIE Phantom"
            sources: [ "TIE Phantom Expansion Pack", ]
            skill: 5
            points: 99
            slots: [
                "System"
                "Crew"
            ]
        }
        {
            name: "Unspoiled PS6 TIE Phantom Pilot"
            id: 78
            unique: true
            ship: "TIE Phantom"
            sources: [ "TIE Phantom Expansion Pack", ]
            skill: 6
            points: 99
            slots: [
                "System"
                "Crew"
            ]
        }
        {
            name: '"Whisper"'
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
            id: 80
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
            id: 81
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
            name: '"Hobbie" Kilvan'
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
            name: "Unspoiled PS5 A-Wing Pilot"
            id: 87
            unique: true
            ship: "A-Wing"
            sources: [ "Rebel Aces Expansion Pack", ]
            skill: 5
            points: 99
            slots: [
                "Missile"
            ]
        }
        {
            name: "Keyan Farlander"
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
            name: "Unspoiled PS5 B-Wing Pilot"
            id: 89
            unique: true
            ship: "B-Wing"
            sources: [ "Rebel Aces Expansion Pack", ]
            skill: 5
            points: 99
            slots: [
                "System"
                "Cannon"
                "Torpedo"
                "Torpedo"
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
            sources: [ "Slave I Expansion Pack", ]
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
            ]
            points: 3
            attack: 3
            range: "1-3"
        }
        {
            name: "Heavy Laser Cannon"
            id: 23
            slot: "Cannon"
            sources: [ "Slave I Expansion Pack", "Lambda-Class Shuttle Expansion Pack", ]
            points: 7
            attack: 4
            range: "2-3"
        }
        {
            name: "Seismic Charges"
            id: 24
            slot: "Bomb"
            sources: [ "Slave I Expansion Pack", "TIE Bomber Expansion Pack", ]
            points: 2
        }
        {
            name: "Mercenary Copilot"
            id: 25
            slot: "Crew"
            sources: [ "Slave I Expansion Pack", ]
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
            sources: [ "Slave I Expansion Pack", ]
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
            sources: [ "B-Wing Expansion Pack", ]
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
            sources: [ "TIE Bomber Expansion Pack", ]
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
            points: 99
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
            points: 99
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
            points: 99
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
            sources: [ "Tantive IV Expansion Pack", ]
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
            sources: [ "Tantive IV Expansion Pack", ]
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
            sources: [ "Rebel Aces Expansion Pack", ]
            points: 99
        }
        {
            name: "Kyle Katarn"
            id: 74
            unique: true
            slot: "Crew"
            sources: [ "Rebel Aces Expansion Pack", ]
            points: 99
            faction: "Rebel Alliance"
        }
        {
            name: "Jan Ors"
            id: 75
            unique: true
            slot: "Crew"
            sources: [ "Rebel Aces Expansion Pack", ]
            points: 99
            faction: "Rebel Alliance"
        }
    ]

    modificationsById: [
        {
            name: "Stealth Device"
            id: 1
            points: 3
            sources: [ "Slave I Expansion Pack", ]
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
            sources: [ "Imperial Aces Expansion Pack", ]
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
            points: 99
            ship: "TIE Phantom"
        }
    ]

    titlesById: [
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
        }
        {
            name: "B-Wing/E"
            id: 8
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
    ]

exportObj.setupCardData = (basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations) ->
    exportObj.pilots = {}
    # Assuming a given pilot is unique by name...
    for pilot_data in basic_cards.pilotsById
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
            .replace('%BANKLEFT%', '<img class="icon-bankleft" alt="Bank Left" src="images/transparent.png" />')
            .replace('%BANKRIGHT%', '<img class="icon-bankright" alt="Bank Right" src="images/transparent.png" />')
            .replace('%BARRELROLL%', '<img class="icon-barrel-roll" alt="Barrel Roll" src="images/transparent.png" />')
            .replace('%BOOST%', '<img class="icon-boost" alt="Boost" src="images/transparent.png" />')
            .replace('%CRIT%', '<img class="icon-crit" alt="Crit" src="images/transparent.png" />')
            .replace('%CREW%', '<img class="icon-crew" alt="Crew" src="images/transparent.png" />')
            .replace('%ELITE%', '<img class="icon-elite" alt="Elite" src="images/transparent.png" />')
            .replace('%EVADE%', '<img class="icon-evade" alt="Evade" src="images/transparent.png" />')
            .replace('%FOCUS%', '<img class="icon-focus" alt="Focus" src="images/transparent.png" />')
            .replace('%HIT%', '<img class="icon-hit" alt="Hit" src="images/transparent.png" />')
            .replace('%KTURN%', '<img class="icon-uturn" alt="Koiogran Turn" src="images/transparent.png" />')
            .replace('%STRAIGHT%', '<img class="icon-straight" alt="Straight" src="images/transparent.png" />')
            .replace('%TARGETLOCK%', '<img class="icon-target-lock" alt="Target Lock" src="images/transparent.png" />')
            .replace('%TEAM%', '<img class="icon-team" alt="Team" src="images/transparent.png" />')
            .replace('%TORPEDO%', '<img class="icon-torpedo" alt="Torpedo" src="images/transparent.png" />')
            .replace('%TURNLEFT%', '<img class="icon-turnleft" alt="Turn Left" src="images/transparent.png" />')
            .replace('%TURNRIGHT%', '<img class="icon-turnright" alt="Turn Right" src="images/transparent.png" />')
            .replace('%UTURN%', '<img class="icon-uturn" alt="Koiogran Turn" src="images/transparent.png" />')
