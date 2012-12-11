exportObj = exports ? this

exportObj.ships =
    "X-Wing":
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
        faction: "Rebel Alliance"
        attack: 2
        agility: 1
        hull: 6
        shields: 4
        actions: [
            "Focus",
            "Target Lock",
        ]
    "Millennium Falcon":
        faction: "Rebel Alliance"
        attack: 3
        agility: 1
        hull: 8
        shields: 5
        actions: [
            "Focus",
            "Target Lock",
        ]
    "TIE Fighter":
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

exportObj.pilots =
    "Wedge Antilles":
        id: 0
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
        id: 1
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
        id: 2
        ship: "X-Wing"
        skill: 4
        points: 23
        slots: [
            "Torpedo",
            "Astromech",
        ]
    "Rookie Pilot":
        id: 3
        ship: "X-Wing"
        skill: 2
        points: 21
        slots: [
            "Torpedo",
            "Astromech",
        ]
    "Biggs Darklighter":
        id: 4
        unique: true
        ship: "X-Wing"
        skill: 5
        points: 25
        slots: [
            "Torpedo",
            "Astromech",
        ]
        text: """Other friendly ships at Range 1 cannot be targeted by attacks if the attacker could target you instead."""
    "Luke Skywalker":
        id: 5
        unique: true
        ship: "X-Wing"
        skill: 8
        points: 28
        slots: [
            "Elite",
            "Torpedo",
            "Astromech",
        ]
        text: """When defending, you may change 1 of your %FOCUS% results to a %EVADE% result."""
    "Gray Squadron Pilot":
        id: 6
        ship: "Y-Wing"
        skill: 4
        points: 20
        slots: [
            "Turret",
            "Torpedo",
            "Torpedo",
            "Astromech",
        ]
    '"Dutch" Vander':
        id: 7
        unique: true
        ship: "Y-Wing"
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
        id: 8
        unique: true
        ship: "Y-Wing"
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
        id: 9
        ship: "Y-Wing"
        skill: 2
        points: 18
        slots: [
            "Turret",
            "Torpedo",
            "Torpedo",
            "Astromech",
        ]
    "Academy Pilot":
        id: 10
        ship: "TIE Fighter"
        skill: 1
        points: 12
        slots: []
    "Obsidian Squadron Pilot":
        id: 11
        ship: "TIE Fighter"
        skill: 3
        points: 13
        slots: []
    "Black Squadron Pilot":
        id: 12
        ship: "TIE Fighter"
        skill: 4
        points: 14
        slots: [
            "Elite",
        ]
    '"Winged Gundark"':
        id: 13
        unique: true
        ship: "TIE Fighter"
        skill: 5
        points: 15
        slots: [ ]
        text: """When attacking at Range 1, you may change 1 of your %HIT% results to a %CRIT% result."""
    '"Night Beast"':
        id: 14
        unique: true
        ship: "TIE Fighter"
        skill: 5
        points: 15
        slots: [ ]
        text: """After executing a green maneuver, you may perform a free focus action."""
    '"Backstabber"':
        id: 15
        unique: true
        ship: "TIE Fighter"
        skill: 6
        points: 16
        slots: [ ]
        text: """When attacking from outside the defender's firing arc, roll 1 additional attack die."""
    '"Dark Curse"':
        id: 16
        unique: true
        ship: "TIE Fighter"
        skill: 6
        points: 16
        slots: [ ]
        text: """When defending, ships attacking you cannot spend focus tokens or reroll attack dice."""
    '"Mauler Mithel"':
        id: 17
        unique: true
        ship: "TIE Fighter"
        skill: 7
        points: 17
        slots: [
            "Elite",
        ]
        text: """When attacking at Range 1, roll 1 additional attack die."""
    '"Howlrunner"':
        id: 18
        unique: true
        ship: "TIE Fighter"
        skill: 8
        points: 18
        slots: [
            "Elite",
        ]
        text: """When another friendly ship at Range 1 is attacking with its primary weapon, it may reroll 1 attack die."""
    "Maarek Stele":
        id: 19
        unique: true
        ship: "TIE Advanced"
        skill: 7
        points: 27
        slots: [
            "Elite",
            "Missile",
        ]
        text: """When you attack deals a faceup Damage card to the defender, instead draw 3 Damage cards, choose 1 to deal, and discard the others."""
    "Tempest Squadron Pilot":
        id: 20
        ship: "TIE Advanced"
        skill: 2
        points: 21
        slots: [
            "Missile",
        ]
    "Storm Squadron Pilot":
        id: 21
        ship: "TIE Advanced"
        skill: 4
        points: 23
        slots: [
            "Missile",
        ]
    "Darth Vader":
        id: 22
        unique: true
        ship: "TIE Advanced"
        skill: 9
        points: 29
        slots: [
            "Elite",
            "Missile",
        ]
        text: """During your "Perform Action" step, you may perform 2 actions."""
    "Alpha Squadron Pilot":
        id: 23
        ship: "TIE Interceptor"
        skill: 1
        points: 18
        slots: [ ]
    "Avenger Squadron Pilot":
        id: 24
        ship: "TIE Interceptor"
        skill: 3
        points: 20
        slots: [ ]
    "Saber Squadron Pilot":
        id: 25
        ship: "TIE Interceptor"
        skill: 4
        points: 21
        slots: [
            "Elite",
        ]
    "\"Fel's Wrath\"":
        id: 26
        unique: true
        ship: "TIE Interceptor"
        skill: 5
        points: 23
        slots: [ ]
        text: """When the number of Damage cards assigned to you equals or exceeds your hull value, you are not destroyed until the end of the Combat phase."""
    "Turr Phennir":
        id: 27
        unique: true
        ship: "TIE Interceptor"
        skill: 7
        points: 25
        slots: [
            "Elite",
        ]
        text: """After you perform an attack, you may perform a free boost or barrel roll action."""
    "Soontir Fel":
        id: 28
        unique: true
        ship: "TIE Interceptor"
        skill: 9
        points: 27
        slots: [
            "Elite",
        ]
        text: """When you receive a stress token, you may assign 1 focus token to your ship."""
    "Tycho Celchu":
        id: 29
        unique: true
        ship: "A-Wing"
        skill: 8
        points: 26
        slots: [
            "Elite",
            "Missile",
        ]
        text: """You may perform actions even while you have stress tokens."""
    "Arvel Crynyd":
        id: 30
        unique: true
        ship: "A-Wing"
        skill: 6
        points: 23
        slots: [
            "Missile",
        ]
        text: """You may declare an enemy ship inside your firing arc that you are touching as the target of your attack."""
    "Green Squadron Pilot":
        id: 31
        ship: "A-Wing"
        skill: 3
        points: 19
        slots: [
            "Elite",
            "Missile",
        ]
    "Prototype Pilot":
        id: 32
        ship: "A-Wing"
        skill: 1
        points: 17
        slots: [
            "Missile",
        ]
    #"Outer Rim Smuggler":
    #    id: 33
    #    ship: "YT-1300"
    #    skill: 1
    #    points: 27
    #    slots: [
    #        "Crew",
    #        "Crew",
    #    ]
    #"Chewbacca":
    #    id: 34
    #    unique: true
    #    ship: "Millennium Falcon"
    #    skill: 5
    #    points: 42
    #    slots: [
    #        "Elite",
    #        "Missile",
    #        "Crew",
    #        "Crew",
    #    ]


exportObj.upgrades =
    "Ion Cannon Turret":
        id: 0
        slot: "Turret"
        points: 5
        attack: 3
        range: "1-2"
        text: """Attack: Attack 1 ship (even a ship outside your firing arc).

                 If this attack hits the target ship, the ship suffers 1 damage and receives 1 ion token.  Then cancel all dice results."""
    "Proton Torpedoes":
        id: 1
        slot: "Torpedo"
        points: 4
        attack: 4
        range: "2-3"
        text: """Attack (target lock): Spend your target lock and discard this card to perform this attack.

                You may change 1 of your %FOCUS% results to a %CRIT% result."""
    "R2 Astromech":
        id: 2
        slot: "Astromech"
        points: 1
        text: """You may treat all 1- and 2-speed maneuvers as green maneuvers."""
    "R2-D2":
        id: 3
        unique: true
        slot: "Astromech"
        points: 4
        text: """After executing a green maneuver, you may recover 1 shield (up to your shield value)."""
    "R2-F2":
        id: 4
        unique: true
        slot: "Astromech"
        points: 3
        text: """Action: Increase your agility value by 1 until the end of this game round."""
    "R5-D8":
        id: 5
        unique: true
        slot: "Astromech"
        points: 3
        text: """Action: Roll 1 defense die.

                 On a %EVADE% or %FOCUS% result, discard 1 of your facedown Damage cards."""
    "R5-K6":
        id: 6
        unique: true
        slot: "Astromech"
        points: 2
        text: """After spending your target lock, roll 1 defense die.

                 On a %EVADE% result, immediately acquire a target lock on that same ship.  You cannot spend this target lock during this attack."""
    "R5 Astromech":
        id: 7
        slot: "Astromech"
        points: 1
        text: """During the End phase, you may choose 1 of your faceup Damage cards with the Ship trait and flip it facedown."""
    "Determination":
        id: 8
        slot: "Elite"
        points: 1
        text: """When you are dealt a faceup Damage card with the Pilot trait, discard it immediately without resolving its effect."""
    "Swarm Tactics":
        id: 9
        slot: "Elite"
        points: 2
        text: """At the start of the Combat phase, choose 1 friendly ship at Range 1.

                 Until the end of this phase, treat the chosen ship as it its pilot skill were equal to your pilot skill."""
    "Squad Leader":
        id: 10
        unique: true
        slot: "Elite"
        points: 2
        text: """Action: Choose 1 ship at Range 1-2 that has a lower pilot skill than you.

                 The chosen ship my immediately perform 1 free action."""
    "Expert Handling":
        id: 11
        slot: "Elite"
        points: 2
        text: """Action: Perform a barrel roll.  If you do not have the %BARREL_ROLL% action icon, receive 1 stress token.

                 You may then remove 1 enemy target lock from your ship."""
    "Marksmanship":
        id: 12
        slot: "Elite"
        points: 3
        text: """Action: When attacking this round, you may change 1 of your %FOCUS% results to a %CRIT% result and all of your other %FOCUS% results to %HIT% results."""
    "Concussion Missiles":
        id: 13
        slot: "Missile"
        points: 4
        attack: 4
        range: "2-3"
        text: """Attack (target lock):  Spend your target lock and discard this card to perform this attack.

                 You may change 1 of your blank results to a %HIT% result."""
    "Cluster Missiles":
        id: 14
        slot: "Missile"
        points: 4
        attack: 3
        range: "1-2"
        text: """Attack (target lock): Spend your target lock and discard this card to perform this attack twice."""
    "Daredevil":
        id: 15
        slot: "Elite"
        points: 3
        text: """Action: Execute a red (%HARDLEFT% 1) or (%HARDRIGHT% 1) maneuver.

                 Then, if you do not have the %BOOST% action icon, roll 2 attack dice.  Suffer any damage (%HIT%) and any critical damage (%CRIT%) rolled."""
    "Elusiveness":
        id: 16
        slot: "Elite"
        points: 2
        text: """When defending, you may receive 1 stress token to choose 1 attack die.  The attacker must reroll that die.

                 If you have at least 1 stress token, you cannot use this ability."""
    "Homing Missiles":
        id: 17
        slot: "Missile"
        attack: 4
        range: "2-3"
        points: 5
        text: """Attack (target lock): Discard this card to perform this attack.

                 The defender cannot spend evade tokens during this attack."""
    "Push the Limit":
        id: 18
        slot: "Elite"
        points: 3
        text: """Once per round, after you perform and action, you may perform 1 free action shown in your action bar.

                 Then receive 1 stress token."""
    "Deadeye":
        id: 19
        slot: "Elite"
        points: 1
        text: """You may treat the 'Attack (target lock):' header as 'Attack (focus):'.

                 When an attack instructs you to spend a target lock, you may spend a focus token instead."""
