exportObj = exports ? this

exportObj.ships =
    "X-Wing":
        attack: 3
        agility: 2
        hull: 3
        shields: 2
        actions: [
            "Focus",
            "Target Lock",
        ]
    "Y-Wing":
        attack: 2
        agility: 1
        hull: 5
        shields: 3
        actions: [
            "Focus",
            "Target Lock",
        ]
    "TIE Fighter":
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

exportObj.pilots =
    "Wedge Antilles":
        ship: "X-Wing"
        skill: 9
        points: 29
        upgrades: [
            "Elite",
            "Torpedo",
            "Astromech",
        ],
        text: """When attacking, reduce the defender's agility value by 1 (to a minimum of "0")."""
    "Garven Dreis":
        ship: "X-Wing"
        skill: 6
        points: 26
        upgrades: [
            "Torpedo",
            "Astromech",
        ]
        text: """After spending a focus token, you may place that token on any other friendly ship at Range 1-2 (instead of discarding it)."""
    "Red Squadron Pilot":
        ship: "X-Wing"
        skill: 4
        points: 23
        upgrades: [
            "Torpedo",
            "Astromech",
        ]
        text: ""
    "Rookie Pilot":
        ship: "X-Wing"
        skill: 2
        points: 21
        upgrades: [
            "Torpedo",
            "Astromech",
        ]
        text: ""
    "Biggs Darklighter":
        ship: "X-Wing"
        skill: 5
        points: 25
        upgrades: [
            "Torpedo",
            "Astromech",
        ]
        text: """Other friendly ships at Range 1 cannot be targeted by attacks if the attacker could target you instead."""
    "Luke Skywalker":
        ship: "X-Wing"
        skill: 8
        points: 28
        upgrades: [
            "Elite",
            "Torpedo",
            "Astromech",
        ]
        text: """When defending, you may change 1 of your %FOCUS% results to a %EVADE% result."""
    "Gray Squadron Pilot":
        ship: "Y-Wing"
        skill: 4
        points: 20
        upgrades: [
            "Ion Cannon",
            "Torpedo",
            "Torpedo",
            "Astromech",
        ]
        text: ""
    '"Dutch" Vander':
        ship: "Y-Wing"
        skill: 6
        points: 23
        upgrades: [
            "Ion Cannon",
            "Torpedo",
            "Torpedo",
            "Astromech",
        ]
        text: """After acquiring a target lock, choose another friendly ship at Range 1-2.  The chosen ship may immediately acquire a target lock."""
    "Horton Salm":
        ship: "Y-Wing"
        skill: 8
        points: 25
        upgrades: [
            "Ion Cannon",
            "Torpedo",
            "Torpedo",
            "Astromech",
        ]
        text: """When attacking at Range 2-3, you may reroll any of your blank results."""
    "Gold Squadron Pilot":
        ship: "Y-Wing"
        skill: 2
        points: 18
        upgrades: [
            "Ion Cannon",
            "Torpedo",
            "Torpedo",
            "Astromech",
        ]
        text: ""
    "Academy Pilot":
        ship: "TIE Fighter"
        skill: 1
        points: 12
        upgrades: []
        text: ""
    "Obsidian Squadron Pilot":
        ship: "TIE Fighter"
        skill: 3
        points: 13
        upgrades: []
        text: ""
    "Black Squadron Pilot":
        ship: "TIE Fighter"
        skill: 4
        points: 14
        upgrades: [
            "Elite",
        ]
        text: ""
    '"Winged Gundark"':
        ship: "TIE Fighter"
        skill: 5
        points: 15
        upgrades: [ ]
        text: """When attacking at Range 1, you may change 1 of your %HIT% results to a %CRIT% result."""
    '"Night Beast"':
        ship: "TIE Fighter"
        skill: 5
        points: 15
        upgrades: [ ]
        text: """After executing a green maneuver, you may perform a free focus action."""
    '"Backstabber"':
        ship: "TIE Fighter"
        skill: 6
        points: 16
        upgrades: [ ]
        text: """When attacking from outside the defender's firing arc, roll 1 additional attack die."""
    '"Dark Curse"':
        ship: "TIE Fighter"
        skill: 6
        points: 16
        upgrades: [ ]
        text: """When defending, ships attacking you cannot spend focus tokens or reroll attack dice."""
    '"Mauler Mithel"':
        ship: "TIE Fighter"
        skill: 7
        points: 17
        upgrades: [
            "Elite",
        ]
        text: """When attacking at Range 1, roll 1 additional attack die."""
    '"Howlrunner"':
        ship: "TIE Fighter"
        skill: 8
        points: 18
        upgrades: [
            "Elite",
        ]
        text: """When another friendly ship at Range 1 is attacking with its primary weapon, it may reroll 1 attack die."""
    "Maarek Stele":
        ship: "TIE Advanced"
        skill: 7
        points: 27
        upgrades: [
            "Elite",
            "Missile",
        ]
        text: """When you attack deals a faceup Damage card to the defender, instead draw 3 Damage cards, choose 1 to deal, and discard the others."""
    "Tempest Squadron Pilot":
        ship: "TIE Advanced"
        skill: 2
        points: 21
        upgrades: [
            "Missile",
        ]
        text: ""
    "Storm Squadron Pilot":
        ship: "TIE Advanced"
        skill: 4
        points: 23
        upgrades: [
            "Missile",
        ]
        text: ""
    "Darth Vader":
        ship: "TIE Advanced"
        skill: 9
        points: 29
        upgrades: [
            "Elite",
            "Missile",
        ]
        text: """During your "Perform Action" step, you may perform 2 actions."""
