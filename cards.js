(function() {
  var exportObj;

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.ships = {
    "X-Wing": {
      faction: "Rebel Alliance",
      attack: 3,
      agility: 2,
      hull: 3,
      shields: 2,
      actions: ["Focus", "Target Lock"]
    },
    "Y-Wing": {
      faction: "Rebel Alliance",
      attack: 2,
      agility: 1,
      hull: 5,
      shields: 3,
      actions: ["Focus", "Target Lock"]
    },
    "TIE Fighter": {
      faction: "Galactic Empire",
      attack: 2,
      agility: 3,
      hull: 3,
      shields: 0,
      actions: ["Focus", "Barrel Roll", "Evade"]
    },
    "TIE Advanced": {
      faction: "Galactic Empire",
      attack: 2,
      agility: 3,
      hull: 3,
      shields: 2,
      actions: ["Focus", "Target Lock", "Barrel Roll", "Evade"]
    }
  };

  exportObj.pilots = {
    "Wedge Antilles": {
      unique: true,
      ship: "X-Wing",
      skill: 9,
      points: 29,
      upgrades: ["Elite", "Torpedo", "Astromech"],
      text: "When attacking, reduce the defender's agility value by 1 (to a minimum of \"0\")."
    },
    "Garven Dreis": {
      unique: true,
      ship: "X-Wing",
      skill: 6,
      points: 26,
      upgrades: ["Torpedo", "Astromech"],
      text: "After spending a focus token, you may place that token on any other friendly ship at Range 1-2 (instead of discarding it)."
    },
    "Red Squadron Pilot": {
      ship: "X-Wing",
      skill: 4,
      points: 23,
      upgrades: ["Torpedo", "Astromech"]
    },
    "Rookie Pilot": {
      ship: "X-Wing",
      skill: 2,
      points: 21,
      upgrades: ["Torpedo", "Astromech"]
    },
    "Biggs Darklighter": {
      unique: true,
      ship: "X-Wing",
      skill: 5,
      points: 25,
      upgrades: ["Torpedo", "Astromech"],
      text: "Other friendly ships at Range 1 cannot be targeted by attacks if the attacker could target you instead."
    },
    "Luke Skywalker": {
      unique: true,
      ship: "X-Wing",
      skill: 8,
      points: 28,
      upgrades: ["Elite", "Torpedo", "Astromech"],
      text: "When defending, you may change 1 of your %FOCUS% results to a %EVADE% result."
    },
    "Gray Squadron Pilot": {
      ship: "Y-Wing",
      skill: 4,
      points: 20,
      upgrades: ["Ion Cannon", "Torpedo", "Torpedo", "Astromech"]
    },
    '"Dutch" Vander': {
      unique: true,
      ship: "Y-Wing",
      skill: 6,
      points: 23,
      upgrades: ["Ion Cannon", "Torpedo", "Torpedo", "Astromech"],
      text: "After acquiring a target lock, choose another friendly ship at Range 1-2.  The chosen ship may immediately acquire a target lock."
    },
    "Horton Salm": {
      unique: true,
      ship: "Y-Wing",
      skill: 8,
      points: 25,
      upgrades: ["Ion Cannon", "Torpedo", "Torpedo", "Astromech"],
      text: "When attacking at Range 2-3, you may reroll any of your blank results."
    },
    "Gold Squadron Pilot": {
      ship: "Y-Wing",
      skill: 2,
      points: 18,
      upgrades: ["Ion Cannon", "Torpedo", "Torpedo", "Astromech"]
    },
    "Academy Pilot": {
      ship: "TIE Fighter",
      skill: 1,
      points: 12,
      upgrades: []
    },
    "Obsidian Squadron Pilot": {
      ship: "TIE Fighter",
      skill: 3,
      points: 13,
      upgrades: []
    },
    "Black Squadron Pilot": {
      ship: "TIE Fighter",
      skill: 4,
      points: 14,
      upgrades: ["Elite"]
    },
    '"Winged Gundark"': {
      unique: true,
      ship: "TIE Fighter",
      skill: 5,
      points: 15,
      upgrades: [],
      text: "When attacking at Range 1, you may change 1 of your %HIT% results to a %CRIT% result."
    },
    '"Night Beast"': {
      unique: true,
      ship: "TIE Fighter",
      skill: 5,
      points: 15,
      upgrades: [],
      text: "After executing a green maneuver, you may perform a free focus action."
    },
    '"Backstabber"': {
      unique: true,
      ship: "TIE Fighter",
      skill: 6,
      points: 16,
      upgrades: [],
      text: "When attacking from outside the defender's firing arc, roll 1 additional attack die."
    },
    '"Dark Curse"': {
      unique: true,
      ship: "TIE Fighter",
      skill: 6,
      points: 16,
      upgrades: [],
      text: "When defending, ships attacking you cannot spend focus tokens or reroll attack dice."
    },
    '"Mauler Mithel"': {
      unique: true,
      ship: "TIE Fighter",
      skill: 7,
      points: 17,
      upgrades: ["Elite"],
      text: "When attacking at Range 1, roll 1 additional attack die."
    },
    '"Howlrunner"': {
      unique: true,
      ship: "TIE Fighter",
      skill: 8,
      points: 18,
      upgrades: ["Elite"],
      text: "When another friendly ship at Range 1 is attacking with its primary weapon, it may reroll 1 attack die."
    },
    "Maarek Stele": {
      unique: true,
      ship: "TIE Advanced",
      skill: 7,
      points: 27,
      upgrades: ["Elite", "Missile"],
      text: "When you attack deals a faceup Damage card to the defender, instead draw 3 Damage cards, choose 1 to deal, and discard the others."
    },
    "Tempest Squadron Pilot": {
      ship: "TIE Advanced",
      skill: 2,
      points: 21,
      upgrades: ["Missile"]
    },
    "Storm Squadron Pilot": {
      ship: "TIE Advanced",
      skill: 4,
      points: 23,
      upgrades: ["Missile"]
    },
    "Darth Vader": {
      unique: true,
      ship: "TIE Advanced",
      skill: 9,
      points: 29,
      upgrades: ["Elite", "Missile"],
      text: "During your \"Perform Action\" step, you may perform 2 actions."
    }
  };

  exportObj.upgrades = {
    "Ion Cannon": {
      "Ion Cannon Turret": {
        points: 5,
        attack: 3,
        range: "1-2",
        text: "Attack: Attack 1 ship (even a ship outside your firing arc).\n\nIf this attack hits the target ship, the ship suffers 1 damage and receives 1 ion token.  Then cancel all dice results."
      }
    },
    "Torpedo": {
      "Proton Torpedoes": {
        points: 4,
        attack: 4,
        range: "2-3",
        text: "Attack (target lock): Spend your target lock and discard this card to perform this attack.\n\nYou may change 1 of your %FOCUS% results to a %CRIT% result."
      }
    },
    "Astromech": {
      "R2 Astromech": {
        points: 1,
        text: "You may treat all 1- and 2-speed maneuvers as green maneuvers."
      },
      "R2-D2": {
        points: 4,
        text: "After executing a green maneuver, you may recover 1 shield (up to your shield value)."
      },
      "R2-F2": {
        points: 3,
        text: "Action: Increase your agility value by 1 until the end of this game round."
      },
      "R5-D8": {
        points: 3,
        text: "Action: Roll 1 defense die.\n\nOn a %EVADE% or %FOCUS% result, discard 1 of your facedown Damage cards."
      },
      "R5-K6": {
        points: 2,
        text: "After spending your target lock, roll 1 defense die.\n\nOn a %EVADE% result, immediately acquire a target lock on that same ship.  You cannot spend this target lock during this attack."
      },
      "R5 Astromech": {
        points: 1,
        text: "During the End phase, you may choose 1 of your faceup Damage cards with the Ship trait and flip it facedown."
      }
    },
    "Elite": {
      "Determination": {
        points: 1,
        text: "When you are dealt a faceup Damage card with the Pilot trait, discard it immediately without resolving its effect."
      },
      "Swarm Tactics": {
        points: 2,
        text: "At the start of the Combat phase, choose 1 friendly ship at Range 1.\n\nUntil the end of this phase, treat the chosen ship as it its pilot skill were equal to your pilot skill."
      },
      "Squad Leader": {
        points: 2,
        text: "Action: Choose 1 ship at Range 1-2 that has a lower pilot skill than you.\n\nThe chosen ship my immediately perform 1 free action."
      },
      "Expert Handling": {
        points: 2,
        text: "Action: Perform a barrel roll.  If you do not have the %BARREL_ROLL% action icon, receive 1 stress token.\n\nYou may then remove 1 enemy target lock from your ship."
      },
      "Marksmanship": {
        points: 3,
        text: "Action: When attacking this round, you may change 1 of your %FOCUS% results to a %CRIT% result and all of your other %FOCUS% results to %HIT% results."
      }
    },
    "Missile": {
      "Concussion Missiles": {
        points: 4,
        attack: 4,
        range: "2-3",
        text: "Attack (target lock):  Spend your target lock and discard this card to perform this attack.\n\nYou may change 1 of your blank results to a %HIT% result."
      },
      "Cluster Missiles": {
        points: 4,
        attack: 3,
        range: "1-2",
        text: "Attack (target lock): Spend your target lock and discard this card to perform this attack twice."
      }
    }
  };

}).call(this);
