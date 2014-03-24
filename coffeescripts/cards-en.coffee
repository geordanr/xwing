exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.en = 'English'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations.English =
    action:
        "Barrel Roll": "Barrel Roll"
        "Boost": "Boost"
        "Evade": "Evade"
        "Focus": "Focus"
        "Target Lock": "Target Lock"
        "Recover": "Recover"
        "Reinforce": "Reinforce"
        "Jam": "Jam"
        "Coordinate": "Coordinate"
        "Cloak": "Cloak"
    slot:
        "Astromech": "Astromech"
        "Bomb": "Bomb"
        "Cannon": "Cannon"
        "Crew": "Crew"
        "Elite": "Elite"
        "Missile": "Missile"
        "System": "System"
        "Torpedo": "Torpedo"
        "Turret": "Turret"
        "Cargo": "Cargo"
        "Hardpoint": "Hardpoint"
        "Team": "Team"
    sources: # needed?
        "Core": "Core"
        "A-Wing Expansion Pack": "A-Wing Expansion Pack"
        "B-Wing Expansion Pack": "B-Wing Expansion Pack"
        "X-Wing Expansion Pack": "X-Wing Expansion Pack"
        "Y-Wing Expansion Pack": "Y-Wing Expansion Pack"
        "Millennium Falcon Expansion Pack": "Millennium Falcon Expansion Pack"
        "HWK-290 Expansion Pack": "HWK-290 Expansion Pack"
        "TIE Fighter Expansion Pack": "TIE Fighter Expansion Pack"
        "TIE Interceptor Expansion Pack": "TIE Interceptor Expansion Pack"
        "TIE Bomber Expansion Pack": "TIE Bomber Expansion Pack"
        "TIE Advanced Expansion Pack": "TIE Advanced Expansion Pack"
        "Lambda-Class Shuttle Expansion Pack": "Lambda-Class Shuttle Expansion Pack"
        "Slave I Expansion Pack": "Slave I Expansion Pack"
        "Imperial Aces Expansion Pack": "Imperial Aces Expansion Pack"
        "Rebel Transport Expansion Pack": "Rebel Transport Expansion Pack"
        "Z-95 Headhunter Expansion Pack": "Z-95 Headhunter Expansion Pack"
        "TIE Defender Expansion Pack": "TIE Defender Expansion Pack"
        "E-Wing Expansion Pack": "E-Wing Expansion Pack"
        "TIE Phantom Expansion Pack": "TIE Phantom Expansion Pack"
        "Tantive IV Expansion Pack": "Tantive IV Expansion Pack"
        "Rebel Aces Expansion Pack": "Rebel Aces Expansion Pack"
    ui:
        shipSelectorPlaceholder: "Select a ship"
        pilotSelectorPlaceholder: "Select a pilot"
        upgradePlaceholder: (translator, language, slot) ->
            "No #{translator language, 'slot', slot} Upgrade"
        modificationPlaceholder: "No Modification"
        titlePlaceholder: "No Title"
        upgradeHeader: (translator, language, slot) ->
            "#{translator language, 'slot', slot} Upgrade"
    byCSSSelector:
        '.xwing-card-browser .translate.sort-cards-by': 'Sort cards by'
        '.xwing-card-browser option[value="name"]': 'Name'
        '.xwing-card-browser option[value="source"]': 'Source'
        '.xwing-card-browser option[value="type-by-points"]': 'Type (by Points)'
        '.xwing-card-browser option[value="type-by-name"]': 'Type (by Name)'
        '.xwing-card-browser .translate.select-a-card': 'Select a card from the list at the left.'
    singular:
        'pilots': 'Pilot'
        'modifications': 'Modification'
        'titles': 'Title'
    types:
        'Pilot': 'Pilot'
        'Modification': 'Modification'
        'Title': 'Title'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.English = () ->
    exportObj.cardLanguage = 'English'

    exportObj.ships =
        "X-Wing":
            name: "X-Wing"
            faction: "Rebel Alliance"
            attack: 3
            agility: 2
            hull: 3
            shields: 2
            actions: [
                "Focus",
                "Target Lock",
            ]
        "Y-Wing":
            name: "Y-Wing"
            faction: "Rebel Alliance"
            attack: 2
            agility: 1
            hull: 5
            shields: 3
            actions: [
                "Focus",
                "Target Lock",
            ]
        "A-Wing":
            name: "A-Wing"
            faction: "Rebel Alliance"
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            actions: [
                "Focus",
                "Target Lock",
                "Boost",
                "Evade",
            ]
        "YT-1300":
            name: "YT-1300"
            faction: "Rebel Alliance"
            attack: 2
            agility: 1
            hull: 6
            shields: 4
            actions: [
                "Focus",
                "Target Lock",
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
                "Focus",
                "Barrel Roll",
                "Evade",
            ]
        "TIE Advanced":
            name: "TIE Advanced"
            faction: "Galactic Empire"
            attack: 2
            agility: 3
            hull: 3
            shields: 2
            actions: [
                "Focus",
                "Target Lock",
                "Barrel Roll",
                "Evade",
            ]
        "TIE Interceptor":
            name: "TIE Interceptor"
            faction: "Galactic Empire"
            attack: 3
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus",
                "Barrel Roll",
                "Boost",
                "Evade",
            ]
        "Firespray-31":
            name: "Firespray-31"
            faction: "Galactic Empire"
            attack: 3
            agility: 2
            hull: 6
            shields: 4
            actions: [
                "Focus",
                "Target Lock",
                "Evade",
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
                "Focus",
                "Target Lock",
            ]
        "Lambda-Class Shuttle":
            name: "Lambda-Class Shuttle"
            faction: "Galactic Empire"
            attack: 3
            agility: 1
            hull: 5
            shields: 5
            actions: [
                "Focus",
                "Target Lock",
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
                "Focus",
                "Target Lock",
                "Barrel Roll",
            ]
        "TIE Bomber":
            name: "TIE Bomber"
            faction: "Galactic Empire"
            attack: 2
            agility: 2
            hull: 6
            shields: 0
            actions: [
                "Focus",
                "Target Lock",
                "Barrel Roll",
            ]
        "GR-75 Medium Transport":
            name: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            energy: 4
            agility: 0
            hull: 8
            shields: 4
            actions: [
                "Recover",
                "Reinforce",
                "Coordinate",
                "Jam",
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
                "Focus",
                "Target Lock",
            ]
        "TIE Defender":
            name: "TIE Defender"
            faction: "Galactic Empire"
            attack: 3
            agility: 3
            hull: 3
            shields: 3
            actions: [
                "Focus",
                "Target Lock",
                "Barrel Roll",
            ]
        "E-Wing":
            name: "E-Wing"
            faction: "Rebel Alliance"
            attack: 3
            agility: 3
            hull: 2
            shields: 3
            actions: [
                "Focus",
                "Target Lock",
                "Barrel Roll",
                "Evade",
            ]
        "TIE Phantom":
            name: "TIE Phantom"
            faction: "Galactic Empire"
            attack: 4
            agility: 2
            hull: 2
            shields: 2
            actions: [
                "Focus",
                "Barrel Roll",
                "Evade",
                "Cloak",
            ]
        "CR90 Corvette (Fore)":
            name: "CR90 Corvette (Fore)"
            faction: "Rebel Alliance"
            attack: 4
            agility: 0
            hull: 8
            shields: 5
            actions: [
                "Coordinate",
                "Target Lock",
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
                "Reinforce",
                "Jam",
            ]
            huge: true

    exportObj.pilots =
        "Wedge Antilles":
            name: "Wedge Antilles"
            id: 0
            sources: [ "X-Wing Expansion Pack", ]
            unique: true
            ship: "X-Wing"
            skill: 9
            points: 29
            slots: [
                "Elite",
                "Torpedo",
                "Astromech",
            ],
            text: """When attacking, reduce the defender's agility value by 1 (to a minimum of "0")."""
        "Garven Dreis":
            name: "Garven Dreis"
            id: 1
            sources: [ "X-Wing Expansion Pack", ]
            unique: true
            ship: "X-Wing"
            skill: 6
            points: 26
            slots: [
                "Torpedo",
                "Astromech",
            ]
            text: """After spending a focus token, you may place that token on any other friendly ship at Range 1-2 (instead of discarding it)."""
        "Red Squadron Pilot":
            name: "Red Squadron Pilot"
            id: 2
            sources: [ "Core", "X-Wing Expansion Pack", ]
            ship: "X-Wing"
            skill: 4
            points: 23
            slots: [
                "Torpedo",
                "Astromech",
            ]
        "Rookie Pilot":
            name: "Rookie Pilot"
            id: 3
            sources: [ "Core", "X-Wing Expansion Pack", ]
            ship: "X-Wing"
            skill: 2
            points: 21
            slots: [
                "Torpedo",
                "Astromech",
            ]
        "Biggs Darklighter":
            name: "Biggs Darklighter"
            id: 4
            unique: true
            sources: [ "Core", ]
            ship: "X-Wing"
            skill: 5
            points: 25
            slots: [
                "Torpedo",
                "Astromech",
            ]
            text: """Other friendly ships at Range 1 cannot be targeted by attacks if the attacker could target you instead."""
        "Luke Skywalker":
            name: "Luke Skywalker"
            id: 5
            unique: true
            sources: [ "Core", ]
            ship: "X-Wing"
            skill: 8
            points: 28
            slots: [
                "Elite",
                "Torpedo",
                "Astromech",
            ]
            text: """When defending, you may change 1 of your <img class="icon-focus" alt="Focus" src="images/transparent.png" /> results to a <img class="icon-evade" alt="Evade" src="images/transparent.png" /> result."""
        "Gray Squadron Pilot":
            name: "Gray Squadron Pilot"
            id: 6
            ship: "Y-Wing"
            sources: [ "Y-Wing Expansion Pack", ]
            skill: 4
            points: 20
            slots: [
                "Turret",
                "Torpedo",
                "Torpedo",
                "Astromech",
            ]
        '"Dutch" Vander':
            name: '"Dutch" Vander'
            id: 7
            unique: true
            ship: "Y-Wing"
            sources: [ "Y-Wing Expansion Pack", ]
            skill: 6
            points: 23
            slots: [
                "Turret",
                "Torpedo",
                "Torpedo",
                "Astromech",
            ]
            text: """After acquiring a target lock, choose another friendly ship at Range 1-2.  The chosen ship may immediately acquire a target lock."""
        "Horton Salm":
            name: "Horton Salm"
            id: 8
            unique: true
            ship: "Y-Wing"
            sources: [ "Y-Wing Expansion Pack", ]
            skill: 8
            points: 25
            slots: [
                "Turret",
                "Torpedo",
                "Torpedo",
                "Astromech",
            ]
            text: """When attacking at Range 2-3, you may reroll any of your blank results."""
        "Gold Squadron Pilot":
            name: "Gold Squadron Pilot"
            id: 9
            ship: "Y-Wing"
            sources: [ "Y-Wing Expansion Pack", ]
            skill: 2
            points: 18
            slots: [
                "Turret",
                "Torpedo",
                "Torpedo",
                "Astromech",
            ]
        "Academy Pilot":
            name: "Academy Pilot"
            id: 10
            ship: "TIE Fighter"
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
            skill: 1
            points: 12
            slots: []
        "Obsidian Squadron Pilot":
            name: "Obsidian Squadron Pilot"
            id: 11
            ship: "TIE Fighter"
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
            skill: 3
            points: 13
            slots: []
        "Black Squadron Pilot":
            name: "Black Squadron Pilot"
            id: 12
            ship: "TIE Fighter"
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
            skill: 4
            points: 14
            slots: [
                "Elite",
            ]
        '"Winged Gundark"':
            name: '"Winged Gundark"'
            id: 13
            unique: true
            ship: "TIE Fighter"
            sources: [ "TIE Fighter Expansion Pack", ]
            skill: 5
            points: 15
            slots: [ ]
            text: """When attacking at Range 1, you may change 1 of your <img class="icon-hit" alt="Hit" src="images/transparent.png" /> results to a <img class="icon-crit" alt="Crit" src="images/transparent.png" /> result."""
        '"Night Beast"':
            name: '"Night Beast"'
            id: 14
            unique: true
            ship: "TIE Fighter"
            sources: [ "Core", ]
            skill: 5
            points: 15
            slots: [ ]
            text: """After executing a green maneuver, you may perform a free focus action."""
        '"Backstabber"':
            name: '"Backstabber"'
            id: 15
            unique: true
            ship: "TIE Fighter"
            sources: [ "TIE Fighter Expansion Pack", ]
            skill: 6
            points: 16
            slots: [ ]
            text: """When attacking from outside the defender's firing arc, roll 1 additional attack die."""
        '"Dark Curse"':
            name: '"Dark Curse"'
            id: 16
            unique: true
            ship: "TIE Fighter"
            sources: [ "Core", ]
            skill: 6
            points: 16
            slots: [ ]
            text: """When defending, ships attacking you cannot spend focus tokens or reroll attack dice."""
        '"Mauler Mithel"':
            name: '"Mauler Mithel"'
            id: 17
            unique: true
            ship: "TIE Fighter"
            sources: [ "Core", ]
            skill: 7
            points: 17
            slots: [
                "Elite",
            ]
            text: """When attacking at Range 1, roll 1 additional attack die."""
        '"Howlrunner"':
            name: '"Howlrunner"'
            id: 18
            unique: true
            ship: "TIE Fighter"
            sources: [ "TIE Fighter Expansion Pack", ]
            skill: 8
            points: 18
            slots: [
                "Elite",
            ]
            text: """When another friendly ship at Range 1 is attacking with its primary weapon, it may reroll 1 attack die."""
        "Maarek Stele":
            name: "Maarek Stele"
            id: 19
            unique: true
            ship: "TIE Advanced"
            sources: [ "TIE Advanced Expansion Pack", ]
            skill: 7
            points: 27
            slots: [
                "Elite",
                "Missile",
            ]
            text: """When your attack deals a faceup Damage card to the defender, instead draw 3 Damage cards, choose 1 to deal, and discard the others."""
        "Tempest Squadron Pilot":
            name: "Tempest Squadron Pilot"
            id: 20
            ship: "TIE Advanced"
            sources: [ "TIE Advanced Expansion Pack", ]
            skill: 2
            points: 21
            slots: [
                "Missile",
            ]
        "Storm Squadron Pilot":
            name: "Storm Squadron Pilot"
            id: 21
            ship: "TIE Advanced"
            sources: [ "TIE Advanced Expansion Pack", ]
            skill: 4
            points: 23
            slots: [
                "Missile",
            ]
        "Darth Vader":
            name: "Darth Vader"
            id: 22
            unique: true
            ship: "TIE Advanced"
            sources: [ "TIE Advanced Expansion Pack", ]
            skill: 9
            points: 29
            slots: [
                "Elite",
                "Missile",
            ]
            text: """During your "Perform Action" step, you may perform 2 actions."""
        "Alpha Squadron Pilot":
            name: "Alpha Squadron Pilot"
            id: 23
            ship: "TIE Interceptor"
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 1
            points: 18
            slots: [ ]
        "Avenger Squadron Pilot":
            name: "Avenger Squadron Pilot"
            id: 24
            ship: "TIE Interceptor"
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 3
            points: 20
            slots: [ ]
        "Saber Squadron Pilot":
            name: "Saber Squadron Pilot"
            id: 25
            ship: "TIE Interceptor"
            sources: [ "TIE Interceptor Expansion Pack", "Imperial Aces Expansion Pack", ]
            skill: 4
            points: 21
            slots: [
                "Elite",
            ]
        "\"Fel's Wrath\"":
            name: "\"Fel's Wrath\""
            id: 26
            unique: true
            ship: "TIE Interceptor"
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 5
            points: 23
            slots: [ ]
            text: """When the number of Damage cards assigned to you equals or exceeds your hull value, you are not destroyed until the end of the Combat phase."""
        "Turr Phennir":
            name: "Turr Phennir"
            id: 27
            unique: true
            ship: "TIE Interceptor"
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 7
            points: 25
            slots: [
                "Elite",
            ]
            text: """After you perform an attack, you may perform a free boost or barrel roll action."""
        "Soontir Fel":
            name: "Soontir Fel"
            id: 28
            unique: true
            ship: "TIE Interceptor"
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 9
            points: 27
            slots: [
                "Elite",
            ]
            text: """When you receive a stress token, you may assign 1 focus token to your ship."""
        "Tycho Celchu":
            name: "Tycho Celchu"
            id: 29
            unique: true
            ship: "A-Wing"
            sources: [ "A-Wing Expansion Pack", ]
            skill: 8
            points: 26
            slots: [
                "Elite",
                "Missile",
            ]
            text: """You may perform actions even while you have stress tokens."""
        "Arvel Crynyd":
            name: "Arvel Crynyd"
            id: 30
            unique: true
            ship: "A-Wing"
            sources: [ "A-Wing Expansion Pack", ]
            skill: 6
            points: 23
            slots: [
                "Missile",
            ]
            text: """You may declare an enemy ship inside your firing arc that you are touching as the target of your attack."""
        "Green Squadron Pilot":
            name: "Green Squadron Pilot"
            id: 31
            ship: "A-Wing"
            sources: [ "A-Wing Expansion Pack", "Rebel Aces Expansion Pack" ]
            skill: 3
            points: 19
            slots: [
                "Elite",
                "Missile",
            ]
        "Prototype Pilot":
            name: "Prototype Pilot"
            id: 32
            ship: "A-Wing"
            sources: [ "A-Wing Expansion Pack", "Rebel Aces Expansion Pack" ]
            skill: 1
            points: 17
            slots: [
                "Missile",
            ]
        "Outer Rim Smuggler":
            name: "Outer Rim Smuggler"
            id: 33
            ship: "YT-1300"
            sources: [ "Millennium Falcon Expansion Pack", ]
            skill: 1
            points: 27
            slots: [
                "Crew",
                "Crew",
            ]
        "Chewbacca":
            name: "Chewbacca"
            id: 34
            unique: true
            ship: "YT-1300"
            sources: [ "Millennium Falcon Expansion Pack", ]
            skill: 5
            points: 42
            slots: [
                "Elite",
                "Missile",
                "Crew",
                "Crew",
            ]
            text: """When you are dealt a faceup Damage card, immediately flip it facedown (without resolving its ability)."""
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        "Lando Calrissian":
            name: "Lando Calrissian"
            id: 35
            unique: true
            ship: "YT-1300"
            sources: [ "Millennium Falcon Expansion Pack", ]
            skill: 7
            points: 44
            slots: [
                "Elite",
                "Missile",
                "Crew",
                "Crew",
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
            text: """After you execute a green maneuver, choose 1 other friendly ship at Range 1.  That ship may perform 1 free action shown on its action bar."""
        "Han Solo":
            name: "Han Solo"
            id: 36
            unique: true
            ship: "YT-1300"
            sources: [ "Millennium Falcon Expansion Pack", ]
            skill: 9
            points: 46
            slots: [
                "Elite",
                "Missile",
                "Crew",
                "Crew",
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
            text: """When attacking, you may reroll all of your dice.  If you choose to do so, you must reroll as many of your dice as possible."""
        "Kath Scarlet":
            name: "Kath Scarlet"
            id: 37
            unique: true
            ship: "Firespray-31"
            sources: [ "Slave I Expansion Pack", ]
            skill: 7
            points: 38
            slots: [
                "Elite",
                "Cannon",
                "Bomb",
                "Crew",
                "Missile",
            ]
            text: """When attacking, the defender receives 1 stress token if he cancels at least 1 <img class="icon-crit" alt="Crit" src="images/transparent.png" /> result."""
        "Boba Fett":
            name: "Boba Fett"
            id: 38
            unique: true
            ship: "Firespray-31"
            sources: [ "Slave I Expansion Pack", ]
            skill: 8
            points: 39
            slots: [
                "Elite",
                "Cannon",
                "Bomb",
                "Crew",
                "Missile",
            ]
            text: """When you reveal a bank maneuver (<img class="icon-bankleft" alt="Bank Left" src="images/transparent.png" /> or <img class="icon-bankright" alt="Bank Right" src="images/transparent.png" />), you may rotate your dial to the other bank maneuver of the same speed."""
        "Krassis Trelix":
            name: "Krassis Trelix"
            id: 39
            unique: true
            ship: "Firespray-31"
            sources: [ "Slave I Expansion Pack", ]
            skill: 5
            points: 36
            slots: [
                "Cannon",
                "Bomb",
                "Crew",
                "Missile",
            ]
            text: """When attacking with a secondary weapon, you may reroll 1 attack die."""
        "Bounty Hunter":
            name: "Bounty Hunter"
            id: 40
            ship: "Firespray-31"
            sources: [ "Slave I Expansion Pack", ]
            skill: 3
            points: 33
            slots: [
                "Cannon",
                "Bomb",
                "Crew",
                "Missile",
            ]
        "Ten Numb":
            name: "Ten Numb"
            id: 41
            unique: true
            ship: "B-Wing"
            sources: [ "B-Wing Expansion Pack", ]
            skill: 8
            points: 31
            slots: [
                "Elite",
                "System",
                "Cannon",
                "Torpedo",
                "Torpedo",
            ]
            text: """When attacking, 1 of your <img class="icon-crit" alt="Crit" src="images/transparent.png" /> results cannot be canceled by defense dice."""
        "Ibtisam":
            name: "Ibtisam"
            id: 42
            unique: true
            ship: "B-Wing"
            sources: [ "B-Wing Expansion Pack", ]
            skill: 6
            points: 28
            slots: [
                "Elite",
                "System",
                "Cannon",
                "Torpedo",
                "Torpedo",
            ]
            text: """When attacking or defending, if you have at least 1 stress token, you may reroll 1 of your dice."""
        "Dagger Squadron Pilot":
            name: "Dagger Squadron Pilot"
            id: 43
            ship: "B-Wing"
            sources: [ "B-Wing Expansion Pack", "Rebel Aces Expansion Pack" ]
            skill: 4
            points: 24
            slots: [
                "System",
                "Cannon",
                "Torpedo",
                "Torpedo",
            ]
        "Blue Squadron Pilot":
            name: "Blue Squadron Pilot"
            id: 44
            ship: "B-Wing"
            sources: [ "B-Wing Expansion Pack", "Rebel Aces Expansion Pack" ]
            skill: 2
            points: 22
            slots: [
                "System",
                "Cannon",
                "Torpedo",
                "Torpedo",
            ]
        "Rebel Operative":
            name: "Rebel Operative"
            id: 45
            ship: "HWK-290"
            sources: [ "HWK-290 Expansion Pack", ]
            skill: 2
            points: 16
            slots: [
                "Turret",
                "Crew",
            ]
        "Roark Garnet":
            name: "Roark Garnet"
            id: 46
            unique: true
            ship: "HWK-290"
            sources: [ "HWK-290 Expansion Pack", ]
            skill: 4
            points: 19
            slots: [
                "Turret",
                "Crew",
            ]
            text: '''At the start of the Combat phase, choose 1 other friendly ship at Range 1-3.  Until the end of the phase, treat that ship's pilot skill value as "12."'''
        "Kyle Katarn":
            name: "Kyle Katarn"
            id: 47
            unique: true
            ship: "HWK-290"
            sources: [ "HWK-290 Expansion Pack", ]
            skill: 6
            points: 21
            slots: [
                "Elite",
                "Turret",
                "Crew",
            ]
            text: """At the start of the Combat phase, you may assign 1 of your focus tokens to another friendly ship at Range 1-3."""
        "Jan Ors":
            name: "Jan Ors"
            id: 48
            unique: true
            ship: "HWK-290"
            sources: [ "HWK-290 Expansion Pack", ]
            skill: 8
            points: 25
            slots: [
                "Elite",
                "Turret",
                "Crew",
            ]
            text: """When another friendly ship at Range 1-3 is attacking, if you have no stress tokens, you may receive 1 stress token to allow that ship to roll 1 additional attack die."""
        "Scimitar Squadron Pilot":
            name: "Scimitar Squadron Pilot"
            id: 49
            ship: "TIE Bomber"
            sources: [ "TIE Bomber Expansion Pack", ]
            skill: 2
            points: 16
            slots: [
                "Torpedo",
                "Torpedo",
                "Missile",
                "Missile",
                "Bomb",
            ]
        "Gamma Squadron Pilot":
            name: "Gamma Squadron Pilot"
            id: 50
            ship: "TIE Bomber"
            sources: [ "TIE Bomber Expansion Pack", ]
            skill: 4
            points: 18
            slots: [
                "Torpedo",
                "Torpedo",
                "Missile",
                "Missile",
                "Bomb",
            ]
        "Captain Jonus":
            name: "Captain Jonus"
            id: 51
            unique: true
            ship: "TIE Bomber"
            sources: [ "TIE Bomber Expansion Pack", ]
            skill: 6
            points: 22
            slots: [
                "Elite",
                "Torpedo",
                "Torpedo",
                "Missile",
                "Missile",
                "Bomb",
            ]
            text: """When another friendly ship at Range 1 attacks with a secondary weapon, it may reroll up to 2 attack dice."""
        "Major Rhymer":
            name: "Major Rhymer"
            id: 52
            unique: true
            ship: "TIE Bomber"
            sources: [ "TIE Bomber Expansion Pack", ]
            skill: 7
            points: 26
            slots: [
                "Elite",
                "Torpedo",
                "Torpedo",
                "Missile",
                "Missile",
                "Bomb",
            ]
            text: """When attacking with a secondary weapon, you may increase or decrease the weapon range by 1 to a limit of Range 1-3."""
        "Captain Kagi":
            name: "Captain Kagi"
            id: 53
            unique: true
            ship: "Lambda-Class Shuttle"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            skill: 8
            points: 27
            slots: [
                "System",
                "Cannon",
                "Crew",
                "Crew",
            ]
            text: """When an enemy ship acquires a target lock, it must lock onto your ship if able."""
        "Colonel Jendon":
            name: "Colonel Jendon"
            id: 54
            unique: true
            ship: "Lambda-Class Shuttle"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            skill: 6
            points: 26
            slots: [
                "System",
                "Cannon",
                "Crew",
                "Crew",
            ]
            text: """At the start of the Combat phase, you may assign 1 of your blue target lock tokens to a friendly ship at Range 1 if it does not have a blue target lock token."""
        "Captain Yorr":
            name: "Captain Yorr"
            id: 55
            unique: true
            ship: "Lambda-Class Shuttle"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            skill: 4
            points: 24
            slots: [
                "System",
                "Cannon",
                "Crew",
                "Crew",
            ]
            text: """When another friendly ship at Range 1-2 would receive a stress token, if you have 2 or fewer stress tokens, you may receive that token instead."""
        "Omicron Group Pilot":
            name: "Omicron Group Pilot"
            id: 56
            ship: "Lambda-Class Shuttle"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            skill: 2
            points: 21
            slots: [
                "System",
                "Cannon",
                "Crew",
                "Crew",
            ]
        "Lieutenant Lorrir":
            name: "Lieutenant Lorrir"
            id: 57
            unique: true
            ship: "TIE Interceptor"
            sources: [ "Imperial Aces Expansion Pack", ]
            skill: 5
            points: 23
            slots: [ ]
            text: """When performing a barrel roll action, you may receive 1 stress token to use the (<img class="icon-bankleft" alt="Bank Left" src="images/transparent.png" /> 1) or (<img class="icon-bankright" alt="Bank Right" src="images/transparent.png" /> 1) template instead of the (<img class="icon-straight" alt="Straight" src="images/transparent.png" /> 1) template."""
        "Royal Guard Pilot":
            name: "Royal Guard Pilot"
            id: 58
            ship: "TIE Interceptor"
            sources: [ "Imperial Aces Expansion Pack", ]
            skill: 6
            points: 22
            slots: [
                "Elite",
            ]
        "Tetran Cowall":
            name: "Tetran Cowall"
            id: 59
            unique: true
            ship: "TIE Interceptor"
            sources: [ "Imperial Aces Expansion Pack", ]
            skill: 7
            points: 24
            slots: [
                "Elite",
            ]
            text: """When you reveal a <img class="icon-uturn" alt="Koiogran Turn" src="images/transparent.png" /> maneuver, you may treat the speed of that maneuver as "1," "3," or "5"."""
        "Kir Kanos":
            name: "Kir Kanos"
            id: 61
            unique: true
            ship: "TIE Interceptor"
            sources: [ "Imperial Aces Expansion Pack", ]
            skill: 6
            points: 24
            slots: [ ]
            text: """When attacking at Range 2-3, you may spend 1 evade token to add 1 <img class="icon-hit" alt="Hit" src="images/transparent.png" /> result to your roll."""
        "Carnor Jax":
            name: "Carnor Jax"
            id: 62
            unique: true
            ship: "TIE Interceptor"
            sources: [ "Imperial Aces Expansion Pack", ]
            skill: 8
            points: 26
            slots: [
                "Elite",
            ]
            text: """Enemy ships at Range 1 cannot perform focus or evade actions and cannot spend focus or evade tokens."""
        "GR-75 Medium Transport":
            name: "GR-75 Medium Transport"
            id: 63
            ship: "GR-75 Medium Transport"
            sources: [ "Rebel Transport Expansion Pack", ]
            skill: 3
            points: 30
            slots: [
                "Crew",
                "Crew",
                "Cargo",
                "Cargo",
                "Cargo",
            ]
        "Bandit Squadron Pilot":
            name: "Bandit Squadron Pilot"
            id: 64
            ship: "Z-95 Headhunter"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            skill: 2
            points: 12
            slots: [
                "Missile",
            ]
        "Tala Squadron Pilot":
            name: "Tala Squadron Pilot"
            id: 65
            ship: "Z-95 Headhunter"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            skill: 4
            points: 13
            slots: [
                "Missile",
            ]
        "Lieutenant Blount":
            name: "Lieutenant Blount"
            id: 66
            unique: true
            ship: "Z-95 Headhunter"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            skill: 6
            points: 17
            slots: [
                "Missile",
            ]
            text: """When attacking, the defender is hit by your attack, even if he does not suffer any damage."""
        "Airen Cracken":
            name: "Airen Cracken"
            id: 67
            unique: true
            ship: "Z-95 Headhunter"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            skill: 8
            points: 19
            slots: [
                "Missile",
            ]
            text: """After you perform an attack, you may choose another friendly ship at Range 1.  That ship may perform 1 free action."""
        "Delta Squadron Pilot":
            name: "Delta Squadron Pilot"
            id: 68
            ship: "TIE Defender"
            sources: [ "TIE Defender Expansion Pack", ]
            skill: 1
            points: 30
            slots: [
                "Cannon",
                "Missile",
            ]
        "Onyx Squadron Pilot":
            name: "Onyx Squadron Pilot"
            id: 69
            ship: "TIE Defender"
            sources: [ "TIE Defender Expansion Pack", ]
            skill: 3
            points: 99
            slots: [
                "Cannon",
                "Missile",
            ]
        "Colonel Vessery":
            name: "Colonel Vessery"
            id: 70
            unique: true
            ship: "TIE Defender"
            sources: [ "TIE Defender Expansion Pack", ]
            skill: 6
            points: 99
            slots: [
                "Cannon",
                "Missile",
            ]
            text: """This card has not yet been released."""
        "Rexler Brath":
            name: "Rexler Brath"
            id: 71
            unique: true
            ship: "TIE Defender"
            sources: [ "TIE Defender Expansion Pack", ]
            skill: 8
            points: 99
            slots: [
                "Elite",
                "Cannon",
                "Missile",
            ]
            text: """After you perform an ??? deals at least 1 ??? defender, you ??? token to ???"""
        "Knave Squadron Pilot":
            name: "Knave Squadron Pilot"
            id: 72
            ship: "E-Wing"
            sources: [ "E-Wing Expansion Pack", ]
            skill: 1
            points: 27
            slots: [
                "System",
                "Torpedo",
                "Astromech",
            ]
        "Blackmoon Squadron Pilot":
            name: "Blackmoon Squadron Pilot"
            id: 73
            ship: "E-Wing"
            sources: [ "E-Wing Expansion Pack", ]
            skill: 3
            points: 99
            slots: [
                "System",
                "Torpedo",
                "Astromech",
            ]
        "Etahn A'baht":
            name: "Etahn A'baht"
            id: 74
            unique: true
            ship: "E-Wing"
            sources: [ "E-Wing Expansion Pack", ]
            skill: 5
            points: 32
            slots: [
                "Elite",
                "System",
                "Torpedo",
                "Astromech",
            ]
            text: """When an enemy ship inside your firing arc at Range 1-3 is defending, the attacker may change 1 of its <img class="icon-hit" alt="Hit" src="images/transparent.png" /> results to a <img class="icon-crit" alt="Crit" src="images/transparent.png" /> result."""
        "Corran Horn":
            name: "Corran Horn"
            id: 75
            unique: true
            ship: "E-Wing"
            sources: [ "E-Wing Expansion Pack", ]
            skill: 8
            points: 99
            slots: [
                "Elite",
                "System",
                "Torpedo",
                "Astromech",
            ]
            text: """At the start of the ??? you may perform ??? cannot attack ???"""
        "Sigma Squadron Pilot":
            name: "Sigma Squadron Pilot"
            id: 76
            ship: "TIE Phantom"
            sources: [ "TIE Phantom Expansion Pack", ]
            skill: 3
            points: 25
            slots: [
                "System",
                "Crew",
            ]
        "Shadow Squadron Pilot":
            name: "Shadow Squadron Pilot"
            id: 77
            ship: "TIE Phantom"
            sources: [ "TIE Phantom Expansion Pack", ]
            skill: 5
            points: 99
            slots: [
                "System",
                "Crew",
            ]
        "Unspoiled PS6 TIE Phantom Pilot":
            name: "Unspoiled PS6 TIE Phantom Pilot"
            id: 78
            unique: true
            ship: "TIE Phantom"
            sources: [ "TIE Phantom Expansion Pack", ]
            skill: 6
            points: 99
            slots: [
                "System",
                "Crew",
            ]
        '"Whisper"':
            name: '"Whisper"'
            id: 79
            unique: true
            ship: "TIE Phantom"
            sources: [ "TIE Phantom Expansion Pack", ]
            skill: 7
            points: 99
            slots: [
                "Elite",
                "System",
                "Crew",
            ]
            text: """After you perform ??? that hits ??? 1 focus ???"""
        "CR90 Corvette (Fore)":
            name: "CR90 Corvette (Fore)"
            id: 80
            ship: "CR90 Corvette (Fore)"
            sources: [ "Tantive IV Expansion Pack", ]
            skill: 4
            points: 50
            slots: [
                "Crew",
                "Hardpoint",
                "Hardpoint",
                "Team",
                "Team",
                "Cargo",
            ]
        "CR90 Corvette (Aft)":
            name: "CR90 Corvette (Aft)"
            id: 81
            ship: "CR90 Corvette (Aft)"
            sources: [ "Tantive IV Expansion Pack", ]
            skill: 4
            points: 40
            slots: [
                "Crew",
                "Hardpoint",
                "Team",
                "Cargo",
            ]
        "Wes Janson":
            name: "Wes Janson"
            id: 82
            unique: true
            ship: "X-Wing"
            sources: [ "Rebel Transport Expansion Pack", ]
            skill: 8
            points: 29
            slots: [
                "Elite",
                "Torpedo",
                "Astromech",
            ]
            text: """After you perform an attack, you may remove 1 focus, evade, or blue target lock token from the defender."""
        "Jek Porkins":
            name: "Jek Porkins"
            id: 83
            unique: true
            ship: "X-Wing"
            sources: [ "Rebel Transport Expansion Pack", ]
            skill: 7
            points: 26
            slots: [
                "Elite",
                "Torpedo",
                "Astromech",
            ]
            text: """When you receive a stress token, you may remove it and roll 1 attack die.  On a <img class="icon-hit" alt="Hit" src="images/transparent.png" /> result, deal 1 facedown Damage card to this ship."""
        '"Hobbie" Kilvan':
            name: '"Hobbie" Kilvan'
            id: 84
            unique: true
            ship: "X-Wing"
            sources: [ "Rebel Transport Expansion Pack", ]
            skill: 5
            points: 25
            slots: [
                "Torpedo",
                "Astromech",
            ]
            text: """When you acquire or spend a target lock, you may remove 1 stress token from your ship."""
        "Tarn Mison":
            name: "Tarn Mison"
            id: 85
            unique: true
            ship: "X-Wing"
            sources: [ "Rebel Transport Expansion Pack", ]
            skill: 3
            points: 23
            slots: [
                "Torpedo",
                "Astromech",
            ]
            text: """When an enemy ship declares you as the target of an attack, you may acquire a target lock on that ship."""
        "Jake Farrell":
            name: "Jake Farrell"
            id: 86
            unique: true
            ship: "A-Wing"
            sources: [ "Rebel Aces Expansion Pack", ]
            skill: 7
            points: 24
            slots: [
                "Elite",
                "Missile",
            ]
            text: """After you perform a focus action or are assigned a focus token, you may perform a free boost or barrel roll action."""
        "Unspoiled PS5 A-Wing Pilot":
            name: "Unspoiled PS5 A-Wing Pilot"
            id: 87
            unique: true
            ship: "A-Wing"
            sources: [ "Rebel Aces Expansion Pack", ]
            skill: 5
            points: 99
            slots: [
                "Missile",
            ]
            text: """This card has not yet been revealed."""
        "Keyan Farlander":
            name: "Keyan Farlander"
            id: 88
            unique: true
            ship: "B-Wing"
            sources: [ "Rebel Aces Expansion Pack", ]
            skill: 7
            points: 29
            slots: [
                "Elite",
                "System",
                "Cannon",
                "Torpedo",
                "Torpedo",
            ]
            text: """When attacking, you may remove 1 stress token to change all of your <img class="icon-focus" alt="Focus" src="images/transparent.png" /> results to <img class="icon-hit" alt="Hit" src="images/transparent.png" />results."""
        "Unspoiled PS5 B-Wing Pilot":
            name: "Unspoiled PS5 B-Wing Pilot"
            id: 89
            unique: true
            ship: "B-Wing"
            sources: [ "Rebel Aces Expansion Pack", ]
            skill: 5
            points: 99
            slots: [
                "System",
                "Cannon",
                "Torpedo",
                "Torpedo",
            ]
            text: """This card has not yet been revealed."""

    exportObj.upgrades =
        "Ion Cannon Turret":
            name: "Ion Cannon Turret"
            id: 0
            slot: "Turret"
            sources: [ "Y-Wing Expansion Pack", "HWK-290 Expansion Pack", ]
            points: 5
            attack: 3
            range: "1-2"
            text: """<strong>Attack:</strong> Attack 1 ship (even a ship outside your firing arc).<br /><br />If this attack hits the target ship, the ship suffers 1 damage and receives 1 ion token.  Then cancel all dice results."""
        "Proton Torpedoes":
            name: "Proton Torpedoes"
            id: 1
            slot: "Torpedo"
            sources: [ "Core", "X-Wing Expansion Pack", "Y-Wing Expansion Pack", "B-Wing Expansion Pack", ]
            points: 4
            attack: 4
            range: "2-3"
            text: """<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack.<br /><br />You may change 1 of your <img class="icon-focus" alt="Focus" src="images/transparent.png" /> results to a <img class="icon-crit" alt="Crit" src="images/transparent.png" /> result."""
        "R2 Astromech":
            name: "R2 Astromech"
            id: 2
            slot: "Astromech"
            sources: [ "Y-Wing Expansion Pack", ]
            points: 1
            text: """You may treat all 1- and 2-speed maneuvers as green maneuvers."""
        "R2-D2":
            name: "R2-D2"
            aka: [ "R2-D2 (Crew)" ]
            id: 3
            unique: true
            slot: "Astromech"
            sources: [ "Core", ]
            points: 4
            text: """After executing a green maneuver, you may recover 1 shield (up to your shield value)."""
        "R2-F2":
            name: "R2-F2"
            id: 4
            unique: true
            slot: "Astromech"
            sources: [ "Core", ]
            points: 3
            text: """<strong>Action:</strong> Increase your agility value by 1 until the end of this game round."""
        "R5-D8":
            name: "R5-D8"
            id: 5
            unique: true
            slot: "Astromech"
            sources: [ "Y-Wing Expansion Pack", ]
            points: 3
            text: """<strong>Action:</strong> Roll 1 defense die.<br /><br />On a <img class="icon-evade" alt="Evade" src="images/transparent.png" /> or <img class="icon-focus" alt="Focus" src="images/transparent.png" /> result, discard 1 of your facedown Damage cards."""
        "R5-K6":
            name: "R5-K6"
            id: 6
            unique: true
            slot: "Astromech"
            sources: [ "X-Wing Expansion Pack", ]
            points: 2
            text: """After spending your target lock, roll 1 defense die.<br /><br />On a <img class="icon-evade" alt="Evade" src="images/transparent.png" /> result, immediately acquire a target lock on that same ship.  You cannot spend this target lock during this attack."""
        "R5 Astromech":
            name: "R5 Astromech"
            id: 7
            slot: "Astromech"
            sources: [ "X-Wing Expansion Pack", ]
            points: 1
            text: """During the End phase, you may choose 1 of your faceup Damage cards with the Ship trait and flip it facedown."""
        "Determination":
            name: "Determination"
            id: 8
            slot: "Elite"
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
            points: 1
            text: """When you are dealt a faceup Damage card with the Pilot trait, discard it immediately without resolving its effect."""
        "Swarm Tactics":
            name: "Swarm Tactics"
            id: 9
            slot: "Elite"
            sources: [ "TIE Fighter Expansion Pack", "TIE Advanced Expansion Pack", ]
            points: 2
            text: """At the start of the Combat phase, choose 1 friendly ship at Range 1.<br /><br />Until the end of this phase, treat the chosen ship as it its pilot skill were equal to your pilot skill."""
        "Squad Leader":
            name: "Squad Leader"
            id: 10
            unique: true
            slot: "Elite"
            sources: [ "TIE Advanced Expansion Pack", ]
            points: 2
            text: """<strong>Action:</strong> Choose 1 ship at Range 1-2 that has a lower pilot skill than you.<br /><br />The chosen ship my immediately perform 1 free action."""
        "Expert Handling":
            name: "Expert Handling"
            id: 11
            slot: "Elite"
            sources: [ "X-Wing Expansion Pack", "TIE Advanced Expansion Pack", ]
            points: 2
            text: """<strong>Action:</strong> Perform a free barrel roll action.  If you do not have the <img class="icon-barrel-roll" alt="Barrel Roll" src="images/transparent.png" /> action icon, receive 1 stress token.<br /><br />You may then remove 1 enemy target lock from your ship."""
        "Marksmanship":
            name: "Marksmanship"
            id: 12
            slot: "Elite"
            sources: [ "Core", "X-Wing Expansion Pack", ]
            points: 3
            text: """<strong>Action:</strong> When attacking this round, you may change 1 of your <img class="icon-focus" alt="Focus" src="images/transparent.png" /> results to a <img class="icon-crit" alt="Crit" src="images/transparent.png" /> result and all of your other <img class="icon-focus" alt="Focus" src="images/transparent.png" /> results to <img class="icon-hit" alt="Hit" src="images/transparent.png" /> results."""
        "Concussion Missiles":
            name: "Concussion Missiles"
            id: 13
            slot: "Missile"
            sources: [ "TIE Advanced Expansion Pack", "A-Wing Expansion Pack", "Millennium Falcon Expansion Pack", ]
            points: 4
            attack: 4
            range: "2-3"
            text: """<strong>Attack (target lock):</strong>  Spend your target lock and discard this card to perform this attack.<br /><br />You may change 1 of your blank results to a <img class="icon-hit" alt="Hit" src="images/transparent.png" /> result."""
        "Cluster Missiles":
            name: "Cluster Missiles"
            id: 14
            slot: "Missile"
            sources: [ "TIE Advanced Expansion Pack", "A-Wing Expansion Pack", ]
            points: 4
            attack: 3
            range: "1-2"
            text: """<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack twice."""
        "Daredevil":
            name: "Daredevil"
            id: 15
            slot: "Elite"
            sources: [ "TIE Interceptor Expansion Pack", ]
            points: 3
            text: """<strong>Action:</strong> Execute a white (<img class="icon-turnleft" alt="Turn Left" src="images/transparent.png" /> 1) or (<img class="icon-turnright" alt="Turn Right" src="images/transparent.png" /> 1) maneuver.  Then, receive 1 stress token.<br /><br />Then, if you do not have the <img class="icon-boost" alt="Boost" src="images/transparent.png" /> action icon, roll 2 attack dice.  Suffer any damage (<img class="icon-hit" alt="Hit" src="images/transparent.png" />) and any critical damage (<img class="icon-crit" alt="Crit" src="images/transparent.png" />) rolled."""
        "Elusiveness":
            name: "Elusiveness"
            id: 16
            slot: "Elite"
            sources: [ "TIE Interceptor Expansion Pack", "Millennium Falcon Expansion Pack", ]
            points: 2
            text: """When defending, you may receive 1 stress token to choose 1 attack die.  The attacker must reroll that die.<br /><br />If you have at least 1 stress token, you cannot use this ability."""
        "Homing Missiles":
            name: "Homing Missiles"
            id: 17
            slot: "Missile"
            sources: [ "A-Wing Expansion Pack", "Slave I Expansion Pack", ]
            attack: 4
            range: "2-3"
            points: 5
            text: """<strong>Attack (target lock):</strong> Discard this card to perform this attack.<br /><br />The defender cannot spend evade tokens during this attack."""
        "Push the Limit":
            name: "Push the Limit"
            id: 18
            slot: "Elite"
            sources: [ "A-Wing Expansion Pack", "Imperial Aces Expansion Pack", ]
            points: 3
            text: """Once per round, after you perform an action, you may perform 1 free action shown in your action bar.<br /><br />Then receive 1 stress token."""
        "Deadeye":
            name: "Deadeye"
            id: 19
            slot: "Elite"
            sources: [ "A-Wing Expansion Pack", ]
            points: 1
            text: """You may treat the <strong>Attack (target lock):</strong> header as <strong>Attack (focus):</strong>.<br /><br />When an attack instructs you to spend a target lock, you may spend a focus token instead."""
        "Expose":
            name: "Expose"
            id: 20
            slot: "Elite"
            sources: [ "Slave I Expansion Pack", ]
            points: 4
            text: """<strong>Action:</strong> Until the end of the round, increase your primary weapon value by 1 and decrease your agility value by 1."""
        "Gunner":
            name: "Gunner"
            id: 21
            slot: "Crew"
            sources: [ "Slave I Expansion Pack", ]
            points: 5
            text: """After you perform an attack that does not hit, you may immediately perform a primary weapon attack.  You cannot perform another attack this round."""
        "Ion Cannon":
            name: "Ion Cannon"
            id: 22
            slot: "Cannon"
            sources: [ "Slave I Expansion Pack", "B-Wing Expansion Pack", "TIE Defender Expansion Pack" ]
            points: 3
            attack: 3
            range: "1-3"
            text: """<strong>Attack:</strong> Attack 1 ship.<br /><br />If this attack hits, the defender suffers 1 damage and receives 1 ion token.  Then cancel all dice results."""
        "Heavy Laser Cannon":
            name: "Heavy Laser Cannon"
            id: 23
            slot: "Cannon"
            sources: [ "Slave I Expansion Pack", "Lambda-Class Shuttle Expansion Pack", ]
            points: 7
            attack: 4
            range: "2-3"
            text: """<strong>Attack:</strong> Attack 1 ship.<br /><br />Immediately after rolling your attack dice, you must change all of your <img class="icon-crit" alt="Crit" src="images/transparent.png" /> results to <img class="icon-hit" alt="Hit" src="images/transparent.png" /> results."""
        "Seismic Charges":
            name: "Seismic Charges"
            id: 24
            slot: "Bomb"
            sources: [ "Slave I Expansion Pack", "TIE Bomber Expansion Pack", ]
            points: 2
            text: """When you reveal your maneuver dial, you may discard this card to drop 1 seismic charge token.<br /><br />This token detonates at the end of the Activation phase."""
        "Mercenary Copilot":
            name: "Mercenary Copilot"
            id: 25
            slot: "Crew"
            sources: [ "Slave I Expansion Pack", ]
            points: 2
            text: """When attacking at Range 3, you may change 1 of your <img class="icon-hit" alt="Hit" src="images/transparent.png" /> results to a <img class="icon-crit" alt="Crit" src="images/transparent.png" /> result."""
        "Assault Missiles":
            name: "Assault Missiles"
            id: 26
            slot: "Missile"
            sources: [ "Millennium Falcon Expansion Pack", "Slave I Expansion Pack", "TIE Bomber Expansion Pack", "Z-95 Headhunter Expansion Pack" ]
            points: 5
            attack: 4
            range: "2-3"
            text: """<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack.<br /><br />If this attack hits, each other ship at Range 1 of the defender suffers 1 damage."""
        "Veteran Instincts":
            name: "Veteran Instincts"
            id: 27
            slot: "Elite"
            sources: [ "Millennium Falcon Expansion Pack", "Slave I Expansion Pack", ]
            points: 1
            text: """Increase your pilot skill value by 2."""
            modifier_func: (stats) ->
                stats.skill += 2
        "Proximity Mines":
            name: "Proximity Mines"
            id: 28
            slot: "Bomb"
            sources: [ "Slave I Expansion Pack", ]
            points: 3
            text: """<strong>Action:</strong> Discard this card to drop 1 proximity mine token.<br /><br />When a ship executes a maneuver, if its base or maneuver template overlaps this token, this token detonates."""
        "Weapons Engineer":
            name: "Weapons Engineer"
            id: 29
            slot: "Crew"
            sources: [ "Millennium Falcon Expansion Pack", "Lambda-Class Shuttle Expansion Pack", ]
            points: 3
            text: """You may maintain 2 target locks (only 1 per enemy ship).<br /><br />When you acquire a target lock, you may lock onto 2 different ships."""
        "Draw Their Fire":
            name: "Draw Their Fire"
            id: 30
            slot: "Elite"
            sources: [ "Millennium Falcon Expansion Pack", ]
            points: 1
            text: """When a friendly ship at Range 1 is hit by an attack, you may suffer 1 of the uncanceled <img class="icon-crit" alt="Crit" src="images/transparent.png" /> results instead of the target ship."""
        "Luke Skywalker":
            name: "Luke Skywalker"
            id: 31
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            sources: [ "Millennium Falcon Expansion Pack", ]
            points: 7
            text: """After you perform an attack that does not hit, you may immediately perform a primary weapon attack.  You may change 1 <img class="icon-focus" alt="Focus" src="images/transparent.png" /> result to a <img class="icon-hit" alt="Hit" src="images/transparent.png" /> result.  You cannot perform another attack this round."""
        "Nien Nunb":
            name: "Nien Nunb"
            id: 32
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            sources: [ "Millennium Falcon Expansion Pack", ]
            points: 1
            text: """You may treat all <img class="icon-straight" alt="Straight" src="images/transparent.png" /> maneuvers as green maneuvers."""
        "Chewbacca":
            name: "Chewbacca"
            id: 33
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            sources: [ "Millennium Falcon Expansion Pack", ]
            points: 4
            text: """When you are dealt a Damage card, you may immediately discard that card and recover 1 shield.<br /><br />Then, discard this Upgrade card."""
        "Advanced Proton Torpedoes":
            name: "Advanced Proton Torpedoes"
            id: 34
            slot: "Torpedo"
            attack: 5
            range: "1"
            sources: [ "B-Wing Expansion Pack", "TIE Bomber Expansion Pack", ]
            points: 6
            text: """<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack.<br /><br />You may change up to 3 of your blank results to <img class="icon-focus" alt="Focus" src="images/transparent.png" /> results."""
        "Autoblaster":
            name: "Autoblaster"
            id: 35
            slot: "Cannon"
            attack: 3
            range: "1"
            sources: [ "B-Wing Expansion Pack", ]
            points: 5
            text: """<strong>Attack:</strong> Attack 1 ship.<br /><br />Your <img class="icon-hit" alt="Hit" src="images/transparent.png" /> results cannot be canceled by defense dice.<br /><br />The defender may cancel <img class="icon-crit" alt="Crit" src="images/transparent.png" /> results before <img class="icon-hit" alt="Hit" src="images/transparent.png" /> results."""
        "Fire-Control System":
            name: "Fire-Control System"
            id: 36
            slot: "System"
            sources: [ "B-Wing Expansion Pack", "TIE Phantom Expansion Pack" ]
            points: 2
            text: """After you perform an attack, you may acquire a target lock on the defender."""
        "Blaster Turret":
            name: "Blaster Turret"
            id: 37
            slot: "Turret"
            sources: [ "HWK-290 Expansion Pack", ]
            points: 4
            attack: 3
            range: "1-2"
            text: """<strong>Attack (focus):</strong> Spend 1 focus token to perform this attack against 1 ship (even a ship outside your firing arc)."""
        "Recon Specialist":
            name: "Recon Specialist"
            id: 38
            slot: "Crew"
            sources: [ "HWK-290 Expansion Pack", "TIE Phantom Expansion Pack" ]
            points: 3
            text: """When you perform a focus action, assign 1 additional focus token to your ship."""
        "Saboteur":
            name: "Saboteur"
            id: 39
            slot: "Crew"
            sources: [ "HWK-290 Expansion Pack", ]
            points: 2
            text: """<strong>Action:</strong> Choose 1 enemy ship at Range 1 and roll 1 attack die.  On a <img class="icon-hit" alt="Hit" src="images/transparent.png" /> or <img class="icon-crit" alt="Crit" src="images/transparent.png" /> result, choose 1 random facedown Damage card assigned to that ship, flip it faceup, and resolve it."""
        "Intelligence Agent":
            name: "Intelligence Agent"
            id: 40
            slot: "Crew"
            sources: [ "HWK-290 Expansion Pack", "Lambda-Class Shuttle Expansion Pack", ]
            points: 1
            text: """At the start of the Activation phase, choose 1 enemy ship at Range 1-2.  You may look at that ship's chosen maneuver."""
        "Proton Bomb":
            name: "Proton Bomb"
            id: 41
            slot: "Bomb"
            sources: [ "TIE Bomber Expansion Pack", ]
            points: 5
            text: """When you reveal your maneuver dial, you may discard this card to <strong>drop</strong> 1 proton bomb token.<br /><br />This token <strong>detonates</strong> at the end of the Activation phase."""
        "Adrenaline Rush":
            name: "Adrenaline Rush"
            id: 42
            slot: "Elite"
            sources: [ "TIE Bomber Expansion Pack", ]
            points: 1
            text: """When you reveal a red maneuver, you may discard this card to treat that maneuver as a white maneuver until the end of the Activation phase."""
        "Advanced Sensors":
            name: "Advanced Sensors"
            id: 43
            slot: "System"
            sources: [ "Lambda-Class Shuttle Expansion Pack", "E-Wing Expansion Pack" ]
            points: 3
            text: """Immediately before you reveal your maneuver, you may perform 1 free action.<br /><br />If you use this ability, you must skip your "Perform Action" step during this round."""
        "Sensor Jammer":
            name: "Sensor Jammer"
            id: 44
            slot: "System"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 4
            text: """When defending, you may change 1 of the attacker's <img class="icon-hit" alt="Hit" src="images/transparent.png" /> results into a <img class="icon-focus" alt="Focus" src="images/transparent.png" /> result.<br /><br />The attacker cannot reroll the die with the changed result."""
        "Darth Vader":
            name: "Darth Vader"
            id: 45
            unique: true
            faction: "Galactic Empire"
            slot: "Crew"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 3
            text: """After you perform an attack against an enemy ship, you may suffer 2 damage to cause that ship to suffer 1 critical damage."""
        "Rebel Captive":
            name: "Rebel Captive"
            id: 46
            unique: true
            faction: "Galactic Empire"
            slot: "Crew"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 3
            text: """Once per round, the first ship that declares you as the target of an attack immediately receives 1 stress token."""
        "Flight Instructor":
            name: "Flight Instructor"
            id: 47
            slot: "Crew"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 4
            text: """When defending, you may reroll 1 of your <img class="icon-focus" alt="Focus" src="images/transparent.png" /> results.  If the attacker's pilot skill value is "2" or lower, you may reroll 1 of your blank results instead."""
        "Navigator":
            name: "Navigator"
            id: 48
            slot: "Crew"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 3
            text: """When you reveal a maneuver, you may rotate your dial to another maneuver with the same bearing.<br /><br />You cannot rotate to a red maneuver if you have any stress tokens."""
        "Opportunist":
            name: "Opportunist"
            id: 49
            slot: "Elite"
            sources: [ "Imperial Aces Expansion Pack", ]
            points: 4
            text: """When attacking, if the defender does not have any focus or evade tokens, you may receive 1 stress token to roll 1 additional attack die.<br /><br />You cannot use this ability if you have any stress tokens."""
        "Comms Booster":
            name: "Comms Booster"
            id: 50
            slot: "Cargo"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 4
            text: """<strong>Energy:</strong> Spend 1 energy to remove all stress tokens from a friendly ship at Range 1-3.  Then assign 1 focus token to that ship."""
        "Slicer Tools":
            name: "Slicer Tools"
            id: 51
            slot: "Cargo"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 7
            text: """<strong>Action:</strong> Choose 1 or more ships at Range 1-3 that have a stress token.  For each ship chosen, you may spend 1 energy to cause that ship to suffer 1 damage."""
        "Shield Projector":
            name: "Shield Projector"
            id: 52
            slot: "Cargo"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 4
            text: """When an enemy ship is declaring either a small or large ship as the target of its attack, you may spend 3 energy to force that ship to target you if possible."""
        "Ion Pulse Missiles":
            name: "Ion Pulse Missiles"
            id: 53
            slot: "Missile"
            sources: [ "Z-95 Headhunter Expansion Pack", "TIE Defender Expansion Pack" ]
            points: 3
            attack: 3
            range: """2-3"""
            text: """<strong>Attack (target lock):</strong> Discard this card to perform this attack.<br /><br />If this attack hits, the defender suffers 1 damage and receives 2 ion tokens.  Then cancel <strong>all<strong> dice results."""
        "Wingman":
            name: "Wingman"
            id: 54
            slot: "Elite"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            points: 2
            text: """At the start of the Combat phase, remove 1 stress token from another friendly ship at Range 1."""
        "Decoy":
            name: "Decoy"
            id: 55
            slot: "Elite"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            points: 99
            text: """This card has not yet been released."""
        "Outmaneuver":
            name: "Outmaneuver"
            id: 56
            slot: "Elite"
            sources: [ "TIE Defender Expansion Pack", "E-Wing Expansion Pack" ]
            points: 99
            text: """This card has not yet been released."""
        "Predator":
            name: "Predator"
            id: 57
            slot: "Elite"
            sources: [ "TIE Defender Expansion Pack", ]
            points: 99
            text: """This card has not yet been released."""
        "Flechette Torpedoes":
            name: "Flechette Torpedoes"
            id: 58
            slot: "Torpedo"
            sources: [ "E-Wing Expansion Pack", "Rebel Transport Expansion Pack" ]
            points: 2
            attack: 3
            range: """2-3"""
            text: """<strong>Attack (target lock):</strong> Discard this card and spend your target lock to perform this attack.<br /><br />After you perform this attack, the defender receives 1 stress token if its hull value is "4" or lower."""
        "R7 Astromech":
            name: "R7 Astromech"
            id: 59
            slot: "Astromech"
            sources: [ "E-Wing Expansion Pack", ]
            points: 99
            text: """This card has not yet been released."""
        "R7-T1":
            name: "R7-T1"
            id: 60
            unique: true
            slot: "Astromech"
            sources: [ "E-Wing Expansion Pack", ]
            points: 3
            text: """<strong>Action:</strong> Choose an enemy ship at Range 1-2.  If you are inside that ship's firing arc, you may acquire a target lock on that ship.  Then, you may perform a free boost action."""
        "Tactician":
            name: "Tactician"
            id: 61
            slot: "Crew"
            sources: [ "TIE Phantom Expansion Pack", ]
            points: 99
            text: """This card has not yet been released."""
        "R2-D2 (Crew)":
            name: "R2-D2 (Crew)"
            aka: [ "R2-D2" ]
            id: 62
            unique: true
            slot: "Crew"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
            faction: "Rebel Alliance"
            text: """At the end of the End phase, if you have no shields, you may recover 1 shield and roll 1 attack die.  On a <img class="icon-hit" alt="Hit" src="images/transparent.png" /> result, randomly flip 1 of your facedown Damage cards faceup and resolve it."""
        "C-3PO":
            name: "C-3PO"
            unique: true
            id: 63
            slot: "Crew"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 3
            faction: "Rebel Alliance"
            text: """Once per round, before you roll 1 or more defense dice, you may guess aloud a number of <img class="icon-evade" alt="Evade" src="images/transparent.png" /> results.  If you roll that many <img class="icon-evade" alt="Evade" src="images/transparent.png" /> results (before modifying dice), add 1 <img class="icon-evade" alt="Evade" src="images/transparent.png" /> result."""
        "Single Turbolasers":
            name: "Single Turbolasers"
            id: 64
            slot: "Hardpoint"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 8
            energy: 2
            attack: 4
            range: "3-5"
            text: """<strong>Attack (Energy):</strong> Spend 2 energy from this card to perform this attack.  The defender doubles his agility value against this attack.  You may change 1 of your <img class="icon-focus" alt="Focus" src="images/transparent.png" /> results to a <img class="icon-hit" alt="Hit" src="images/transparent.png" /> result."""
        "Quad Laser Cannons":
            name: "Quad Laser Cannons"
            id: 65
            slot: "Hardpoint"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 6
            energy: 2
            attack: 3
            range: "1-2"
            text: """<strong>Attack (Energy):</strong> Spend 1 energy from this card to perform this attack.  If this attack does not hit, you may immediately spend 1 energy from this card to perform this attack again."""
        "Tibanna Gas Supplies":
            name: "Tibanna Gas Supplies"
            id: 66
            slot: "Cargo"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
            limited: true
            text: """<strong>Energy:</strong> You may discard this card to gain 3 energy."""
        "Ionization Reactor":
            name: "Ionization Reactor"
            id: 67
            slot: "Cargo"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
            energy: 5
            limited: true
            text: """<strong>Energy:</strong> Spend 5 energy from this card and discard this card to cause each other ship at Range 1 to suffer 1 damage and receive 1 ion token."""
        "Engine Booster":
            name: "Engine Booster"
            id: 68
            slot: "Cargo"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 3
            limited: true
            text: """Immediately before you reveal your maneuver dial, you may spend 1 energy to execute a white (<img class="icon-straight" alt="Straight" src="images/transparent.png" /> 1) maneuver.  You cannot use this ability if you would overlap another ship."""
        "R3-A2":
            name: "R3-A2"
            id: 69
            unique: true
            slot: "Astromech"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 2
            text: """When you declare the target of your attack, if the defender is inside your firing arc, you may receive 1 stress token to cause the defender to receive 1 stress token."""
        "R2-D6":
            name: "R2-D6"
            id: 70
            unique: true
            slot: "Astromech"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 1
            text: """Your upgrade bar gains the <img class="icon-elite" alt="Elite" src="images/transparent.png" /> upgrade icon.<br /><br />You cannot equip this upgrade if you already have a <img class="icon-elite" alt="Elite" src="images/transparent.png" /> upgrade icon or if your pilot skill value is "2" or lower."""
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
                },
            ]
        "Enhanced Scopes":
            name: "Enhanced Scopes"
            id: 71
            slot: "System"
            sources: [ "Rebel Aces Expansion Pack", ]
            points: 1
            text: """During the Activation phase, treat your pilot skill value as "0"."""
        "Chardaan Refit":
            name: "Chardaan Refit"
            id: 72
            slot: "Missile"
            sources: [ "Rebel Aces Expansion Pack", ]
            points: -2
            text: """This card has a negative squad point cost."""
            ship: "A-Wing"
        "Proton Rockets":
            name: "Proton Rockets"
            id: 73
            slot: "Missile"
            sources: [ "Rebel Aces Expansion Pack", ]
            points: 99
            text: """This card has not yet been revealed."""
        "Kyle Katarn":
            name: "Kyle Katarn"
            id: 74
            unique: true
            slot: "Crew"
            sources: [ "Rebel Aces Expansion Pack", ]
            points: 99
            text: """After you receive a stress token from your ship, you may assign a focus token to ???"""
            faction: "Rebel Alliance"
        "Jan Ors":
            name: "Jan Ors"
            id: 75
            unique: true
            slot: "Crew"
            sources: [ "Rebel Aces Expansion Pack", ]
            points: 99
            text: """This card has not yet been revealed."""
            faction: "Rebel Alliance"

    exportObj.modifications =
        "Stealth Device":
            name: "Stealth Device"
            id: 1
            points: 3
            sources: [ "Slave I Expansion Pack", ]
            text: """Increase your agility value by 1.  If you are hit by an attack, discard this card."""
            modifier_func: (stats) ->
                stats.agility += 1
        "Shield Upgrade":
            name: "Shield Upgrade"
            id: 2
            points: 4
            sources: [ "Millennium Falcon Expansion Pack", "Imperial Aces Expansion Pack", ]
            text: """Increase your shield value by 1."""
            modifier_func: (stats) ->
                stats.shields += 1
        "Engine Upgrade":
            name: "Engine Upgrade"
            id: 3
            points: 4
            sources: [ "Millennium Falcon Expansion Pack", ]
            text: """Your action bar gains the <img class="icon-boost" alt="Boost" src="images/transparent.png" /> action icon."""
            modifier_func: (stats) ->
                stats.actions.push 'Boost' if 'Boost' not in stats.actions
        "Anti-Pursuit Lasers":
            name: "Anti-Pursuit Lasers"
            id: 4
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 2
            text: """After an enemy ship executes a maneuver that causes it to overlap your ship, roll 1 attack die.  On a <img class="icon-hit" alt="Hit" src="images/transparent.png" /> or <img class="icon-crit" alt="Crit" src="images/transparent.png" /> result, the enemy ship suffers 1 damage."""
            restriction_func: (ship) ->
                ship.data.large ? false
        "Targeting Computer":
            name: "Targeting Computer"
            id: 5
            sources: [ "Imperial Aces Expansion Pack", ]
            points: 2
            text: """Your action bar gains the <img class="icon-target-lock" alt="Target Lock" src="images/transparent.png" /> action icon."""
            modifier_func: (stats) ->
                stats.actions.push 'Target Lock' if 'Target Lock' not in stats.actions
        "Hull Upgrade":
            name: "Hull Upgrade"
            id: 6
            sources: [ "Imperial Aces Expansion Pack", ]
            points: 3
            text: """Increase your hull value by 1."""
            modifier_func: (stats) ->
                stats.hull += 1
        "Munitions Failsafe":
            name: "Munitions Failsafe"
            id: 7
            sources: [ "Z-95 Headhunter Expansion Pack", "TIE Defender Expansion Pack" ]
            points: 1
            text: """When attacking with a secondary weapon that instructs you to discard it to perform the attack, do not discard it unless the attack hits."""
        "Stygium Particle Accelerator":
            name: "Stygium Particle Accelerator"
            id: 8
            sources: [ "TIE Phantom Expansion Pack", ]
            points: 2
            text: """This card has not yet been released."""
        "Advanced Cloaking Device":
            name: "Advanced Cloaking Device"
            id: 9
            sources: [ "TIE Phantom Expansion Pack", ]
            points: 99
            text: """This card has not yet been released."""
            ship: "TIE Phantom"


    exportObj.titles =
        "Slave I":
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
                },
            ]
            text: """Your upgrade bar gains the <img class="icon-torpedo" alt="Torpedo" src="images/transparent.png" /> upgrade icon."""
        "Millennium Falcon":
            name: "Millennium Falcon"
            id: 2
            sources: [ "Millennium Falcon Expansion Pack", ]
            unique: true
            points: 1
            ship: "YT-1300"
            actions: "Evade"
            text: """Your action bar gains the <img class="icon-evade" alt="Evade" src="images/transparent.png" /> action icon."""
            modifier_func: (stats) ->
                stats.actions.push 'Evade' if 'Evade' not in stats.actions
        "Moldy Crow":
            name: "Moldy Crow"
            id: 3
            sources: [ "HWK-290 Expansion Pack", ]
            unique: true
            points: 3
            ship: "HWK-290"
            text: """During the End phase, do not remove unused focus tokens from your ship."""
        "ST-321":
            name: "ST-321"
            id: 4
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            unique: true
            points: 3
            ship: "Lambda-Class Shuttle"
            text: """When acquiring a target lock, you may lock onto any enemy ship in the play area."""
        "Royal Guard TIE":
            name: "Royal Guard TIE"
            id: 5
            sources: [ "Imperial Aces Expansion Pack", ]
            points: 0
            ship: "TIE Interceptor"
            text: """You may equip up to 2 different Modification upgrades (instead of 1).<br /><br />You cannot equip this card if your pilot skill value is "4" or lower."""
            confersAddons: [
                {
                    type: exportObj.Modification,
                },
            ]
            restriction_func: (ship) ->
                ship.effectiveStats().skill > 4
        "Dodonna's Pride":
            name: "Dodonna's Pride"
            id: 6
            unique: true
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
            ship: "CR90 Corvette (Fore)"
            text: """When you perform a coordinate action, you may choose 2 friendly ships (instead of 1).  Those ships may each perform 1 free action."""
        "A-Wing Test Pilot":
            name: "A-Wing Test Pilot"
            id: 7
            sources: [ "Rebel Aces Expansion Pack", ]
            points: 0
            ship: "A-Wing"
            text: """Your upgrade bar gains 1 <img class="icon-elite" alt="Elite" src="images/transparent.png" /> upgrade icon.<br /><br />You cannot equip 2 of the same <img class="icon-elite" alt="Elite" src="images/transparent.png" /> Upgrade cards.  You cannot equip this if your pilot skill value is "1" or lower."""
            restriction_func: (ship) ->
                ship.effectiveStats().skill > 1
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Elite"
                },
            ]
        "B-Wing/E":
            name: "B-Wing/E"
            id: 8
            sources: [ "Rebel Aces Expansion Pack", ]
            points: 99
            text: """Your upgrade bar gains the <img class="icon-crew" alt="Crew" src="images/transparent.png" /> upgrade icon."""
            ship: "B-Wing"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Crew"
                },
            ]

    exportObj.expansions = {}

    exportObj.pilotsById = {}
    for pilot_name, pilot of exportObj.pilots
        exportObj.pilotsById[pilot.id] = pilot
        for source in pilot.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.pilotsById).length != Object.keys(exportObj.pilots).length
        throw "At least one pilot shares an ID with another"

    exportObj.upgradesById = {}
    for upgrade_name, upgrade of exportObj.upgrades
        exportObj.upgradesById[upgrade.id] = upgrade
        for source in upgrade.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.upgradesById).length != Object.keys(exportObj.upgrades).length
        throw "At least one upgrade shares an ID with another"

    exportObj.modificationsById = {}
    for modification_name, modification of exportObj.modifications
        exportObj.modificationsById[modification.id] = modification
        for source in modification.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.modificationsById).length != Object.keys(exportObj.modifications).length
        throw "At least one modification shares an ID with another"

    exportObj.titlesById = {}
    for title_name, title of exportObj.titles
        exportObj.titlesById[title.id] = title
        for source in title.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.titlesById).length != Object.keys(exportObj.titles).length
        throw "At least one title shares an ID with another"

    exportObj.titlesByShip = {}
    for title_name, title of exportObj.titles
        if title.ship not of exportObj.titlesByShip
            exportObj.titlesByShip[title.ship] = []
        exportObj.titlesByShip[title.ship].push title

    exportObj.expansions = Object.keys(exportObj.expansions).sort()
