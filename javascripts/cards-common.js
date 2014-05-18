(function() {
  var exportObj,
    __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.unreleasedExpansions = ["Z-95 Headhunter Expansion Pack", "TIE Defender Expansion Pack", "E-Wing Expansion Pack", "TIE Phantom Expansion Pack", "Tantive IV Expansion Pack", "Rebel Aces Expansion Pack"];

  exportObj.isReleased = function(data) {
    var source, _i, _len, _ref;
    _ref = data.sources;
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      source = _ref[_i];
      if (__indexOf.call(exportObj.unreleasedExpansions, source) < 0) {
        return true;
      }
    }
    return false;
  };

  exportObj.basicCardData = function() {
    return {
      ships: {
        "X-Wing": {
          name: "X-Wing",
          faction: "Rebel Alliance",
          attack: 3,
          agility: 2,
          hull: 3,
          shields: 2,
          actions: ["Focus", "Target Lock"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [0, 2, 2, 2, 0, 0], [1, 1, 2, 1, 1, 0], [1, 1, 1, 1, 1, 0], [0, 0, 1, 0, 0, 3]]
        },
        "Y-Wing": {
          name: "Y-Wing",
          faction: "Rebel Alliance",
          attack: 2,
          agility: 1,
          hull: 5,
          shields: 3,
          actions: ["Focus", "Target Lock"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [0, 1, 2, 1, 0, 0], [1, 1, 2, 1, 1, 0], [3, 1, 1, 1, 3, 0], [0, 0, 3, 0, 0, 3]]
        },
        "A-Wing": {
          name: "A-Wing",
          faction: "Rebel Alliance",
          attack: 2,
          agility: 3,
          hull: 2,
          shields: 2,
          actions: ["Focus", "Target Lock", "Boost", "Evade"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [1, 0, 0, 0, 1, 0], [2, 2, 2, 2, 2, 0], [1, 1, 2, 1, 1, 3], [0, 0, 2, 0, 0, 0], [0, 0, 2, 0, 0, 3]]
        },
        "YT-1300": {
          name: "YT-1300",
          faction: "Rebel Alliance",
          attack: 2,
          agility: 1,
          hull: 6,
          shields: 4,
          actions: ["Focus", "Target Lock"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [1, 2, 2, 2, 1, 0], [1, 1, 2, 1, 1, 0], [0, 1, 1, 1, 0, 3], [0, 0, 1, 0, 0, 3]],
          large: true
        },
        "TIE Fighter": {
          name: "TIE Fighter",
          faction: "Galactic Empire",
          attack: 2,
          agility: 3,
          hull: 3,
          shields: 0,
          actions: ["Focus", "Barrel Roll", "Evade"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [1, 0, 0, 0, 1, 0], [1, 2, 2, 2, 1, 0], [1, 1, 2, 1, 1, 3], [0, 0, 1, 0, 0, 3], [0, 0, 1, 0, 0, 0]]
        },
        "TIE Advanced": {
          name: "TIE Advanced",
          faction: "Galactic Empire",
          attack: 2,
          agility: 3,
          hull: 3,
          shields: 2,
          actions: ["Focus", "Target Lock", "Barrel Roll", "Evade"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [0, 2, 0, 2, 0, 0], [1, 1, 2, 1, 1, 0], [1, 1, 2, 1, 1, 0], [0, 0, 1, 0, 0, 3], [0, 0, 1, 0, 0, 0]]
        },
        "TIE Interceptor": {
          name: "TIE Interceptor",
          faction: "Galactic Empire",
          attack: 3,
          agility: 3,
          hull: 3,
          shields: 0,
          actions: ["Focus", "Barrel Roll", "Boost", "Evade"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [1, 0, 0, 0, 1, 0], [2, 2, 2, 2, 2, 0], [1, 1, 2, 1, 1, 3], [0, 0, 2, 0, 0, 0], [0, 0, 1, 0, 0, 3]]
        },
        "Firespray-31": {
          name: "Firespray-31",
          faction: "Galactic Empire",
          attack: 3,
          agility: 2,
          hull: 6,
          shields: 4,
          actions: ["Focus", "Target Lock", "Evade"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [0, 2, 2, 2, 0, 0], [1, 1, 2, 1, 1, 0], [1, 1, 1, 1, 1, 3], [0, 0, 1, 0, 0, 3]],
          large: true
        },
        "HWK-290": {
          name: "HWK-290",
          faction: "Rebel Alliance",
          attack: 1,
          agility: 2,
          hull: 4,
          shields: 1,
          actions: ["Focus", "Target Lock"],
          maneuvers: [[0, 0, 0, 0, 0], [0, 2, 2, 2, 0], [1, 1, 2, 1, 1], [0, 3, 1, 3, 0], [0, 0, 3, 0, 0]]
        },
        "Lambda-Class Shuttle": {
          name: "Lambda-Class Shuttle",
          faction: "Galactic Empire",
          attack: 3,
          agility: 1,
          hull: 5,
          shields: 5,
          actions: ["Focus", "Target Lock"],
          maneuvers: [[0, 0, 3, 0, 0], [0, 2, 2, 2, 0], [3, 1, 2, 1, 3], [0, 3, 1, 3, 0]],
          large: true
        },
        "B-Wing": {
          name: "B-Wing",
          faction: "Rebel Alliance",
          attack: 3,
          agility: 1,
          hull: 3,
          shields: 5,
          actions: ["Focus", "Target Lock", "Barrel Roll"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [3, 2, 2, 2, 3, 0], [1, 1, 2, 1, 1, 3], [0, 3, 1, 3, 0, 0], [0, 0, 3, 0, 0, 0]]
        },
        "TIE Bomber": {
          name: "TIE Bomber",
          faction: "Galactic Empire",
          attack: 2,
          agility: 2,
          hull: 6,
          shields: 0,
          actions: ["Focus", "Target Lock", "Barrel Roll"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [0, 1, 2, 1, 0, 0], [3, 1, 2, 1, 3, 0], [1, 1, 2, 1, 1, 0], [0, 0, 1, 0, 0, 0], [0, 0, 0, 0, 0, 3]]
        },
        "GR-75 Medium Transport": {
          name: "GR-75 Medium Transport",
          faction: "Rebel Alliance",
          energy: 4,
          agility: 0,
          hull: 8,
          shields: 4,
          actions: ["Recover", "Reinforce", "Coordinate", "Jam"],
          huge: true,
          epic_points: 2,
          maneuvers: [[0, 0, 0, 0, 0, 0], [0, 1, 1, 1, 0, 0], [0, 1, 1, 1, 0, 0], [0, 0, 1, 0, 0, 0], [0, 0, 1, 0, 0, 0]]
        },
        "Z-95 Headhunter": {
          name: "Z-95 Headhunter",
          faction: "Rebel Alliance",
          attack: 2,
          agility: 2,
          hull: 2,
          shields: 2,
          actions: ["Focus", "Target Lock"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [0, 1, 2, 1, 0, 0], [1, 2, 2, 2, 1, 0], [1, 1, 1, 1, 1, 3], [0, 0, 1, 0, 0, 0]]
        },
        "TIE Defender": {
          name: "TIE Defender",
          faction: "Galactic Empire",
          attack: 3,
          agility: 3,
          hull: 3,
          shields: 3,
          actions: ["Focus", "Target Lock", "Barrel Roll"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [3, 1, 0, 1, 3, 0], [3, 1, 2, 1, 3, 0], [1, 1, 2, 1, 1, 0], [0, 0, 2, 0, 0, 1], [0, 0, 2, 0, 0, 0]]
        },
        "E-Wing": {
          name: "E-Wing",
          faction: "Rebel Alliance",
          attack: 3,
          agility: 3,
          hull: 2,
          shields: 3,
          actions: ["Focus", "Target Lock", "Barrel Roll", "Evade"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [0, 1, 2, 1, 0, 0], [1, 2, 2, 2, 1, 0], [1, 1, 2, 1, 1, 3], [0, 0, 1, 0, 0, 3], [0, 0, 1, 0, 0, 0]]
        },
        "TIE Phantom": {
          name: "TIE Phantom",
          faction: "Galactic Empire",
          attack: 4,
          agility: 2,
          hull: 2,
          shields: 2,
          actions: ["Focus", "Barrel Roll", "Evade", "Cloak"],
          maneuvers: [[0, 0, 0, 0, 0, 0], [1, 0, 0, 0, 1, 0], [1, 2, 2, 2, 1, 0], [1, 1, 2, 1, 1, 3], [0, 0, 1, 0, 0, 3]]
        },
        "CR90 Corvette (Fore)": {
          name: "CR90 Corvette (Fore)",
          faction: "Rebel Alliance",
          attack: 4,
          agility: 0,
          hull: 8,
          shields: 5,
          actions: ["Coordinate", "Target Lock"],
          huge: true,
          epic_points: 1.5
        },
        "CR90 Corvette (Aft)": {
          name: "CR90 Corvette (Aft)",
          faction: "Rebel Alliance",
          energy: 5,
          agility: 0,
          hull: 8,
          shields: 3,
          actions: ["Reinforce", "Jam"],
          huge: true,
          epic_points: 1.5
        }
      },
      pilotsById: [
        {
          name: "Wedge Antilles",
          id: 0,
          sources: ["X-Wing Expansion Pack"],
          unique: true,
          ship: "X-Wing",
          skill: 9,
          points: 29,
          slots: ["Elite", "Torpedo", "Astromech"]
        }, {
          name: "Garven Dreis",
          id: 1,
          sources: ["X-Wing Expansion Pack"],
          unique: true,
          ship: "X-Wing",
          skill: 6,
          points: 26,
          slots: ["Torpedo", "Astromech"]
        }, {
          name: "Red Squadron Pilot",
          id: 2,
          sources: ["Core", "X-Wing Expansion Pack"],
          ship: "X-Wing",
          skill: 4,
          points: 23,
          slots: ["Torpedo", "Astromech"]
        }, {
          name: "Rookie Pilot",
          id: 3,
          sources: ["Core", "X-Wing Expansion Pack"],
          ship: "X-Wing",
          skill: 2,
          points: 21,
          slots: ["Torpedo", "Astromech"]
        }, {
          name: "Biggs Darklighter",
          id: 4,
          unique: true,
          sources: ["Core"],
          ship: "X-Wing",
          skill: 5,
          points: 25,
          slots: ["Torpedo", "Astromech"]
        }, {
          name: "Luke Skywalker",
          id: 5,
          unique: true,
          sources: ["Core"],
          ship: "X-Wing",
          skill: 8,
          points: 28,
          slots: ["Elite", "Torpedo", "Astromech"]
        }, {
          name: "Gray Squadron Pilot",
          id: 6,
          ship: "Y-Wing",
          sources: ["Y-Wing Expansion Pack"],
          skill: 4,
          points: 20,
          slots: ["Turret", "Torpedo", "Torpedo", "Astromech"]
        }, {
          name: '"Dutch" Vander',
          id: 7,
          unique: true,
          ship: "Y-Wing",
          sources: ["Y-Wing Expansion Pack"],
          skill: 6,
          points: 23,
          slots: ["Turret", "Torpedo", "Torpedo", "Astromech"]
        }, {
          name: "Horton Salm",
          id: 8,
          unique: true,
          ship: "Y-Wing",
          sources: ["Y-Wing Expansion Pack"],
          skill: 8,
          points: 25,
          slots: ["Turret", "Torpedo", "Torpedo", "Astromech"]
        }, {
          name: "Gold Squadron Pilot",
          id: 9,
          ship: "Y-Wing",
          sources: ["Y-Wing Expansion Pack"],
          skill: 2,
          points: 18,
          slots: ["Turret", "Torpedo", "Torpedo", "Astromech"]
        }, {
          name: "Academy Pilot",
          id: 10,
          ship: "TIE Fighter",
          sources: ["Core", "TIE Fighter Expansion Pack"],
          skill: 1,
          points: 12,
          slots: []
        }, {
          name: "Obsidian Squadron Pilot",
          id: 11,
          ship: "TIE Fighter",
          sources: ["Core", "TIE Fighter Expansion Pack"],
          skill: 3,
          points: 13,
          slots: []
        }, {
          name: "Black Squadron Pilot",
          id: 12,
          ship: "TIE Fighter",
          sources: ["Core", "TIE Fighter Expansion Pack"],
          skill: 4,
          points: 14,
          slots: ["Elite"]
        }, {
          name: '"Winged Gundark"',
          id: 13,
          unique: true,
          ship: "TIE Fighter",
          sources: ["TIE Fighter Expansion Pack"],
          skill: 5,
          points: 15,
          slots: []
        }, {
          name: '"Night Beast"',
          id: 14,
          unique: true,
          ship: "TIE Fighter",
          sources: ["Core"],
          skill: 5,
          points: 15,
          slots: []
        }, {
          name: '"Backstabber"',
          id: 15,
          unique: true,
          ship: "TIE Fighter",
          sources: ["TIE Fighter Expansion Pack"],
          skill: 6,
          points: 16,
          slots: []
        }, {
          name: '"Dark Curse"',
          id: 16,
          unique: true,
          ship: "TIE Fighter",
          sources: ["Core"],
          skill: 6,
          points: 16,
          slots: []
        }, {
          name: '"Mauler Mithel"',
          id: 17,
          unique: true,
          ship: "TIE Fighter",
          sources: ["Core"],
          skill: 7,
          points: 17,
          slots: ["Elite"]
        }, {
          name: '"Howlrunner"',
          id: 18,
          unique: true,
          ship: "TIE Fighter",
          sources: ["TIE Fighter Expansion Pack"],
          skill: 8,
          points: 18,
          slots: ["Elite"]
        }, {
          name: "Maarek Stele",
          id: 19,
          unique: true,
          ship: "TIE Advanced",
          sources: ["TIE Advanced Expansion Pack"],
          skill: 7,
          points: 27,
          slots: ["Elite", "Missile"]
        }, {
          name: "Tempest Squadron Pilot",
          id: 20,
          ship: "TIE Advanced",
          sources: ["TIE Advanced Expansion Pack"],
          skill: 2,
          points: 21,
          slots: ["Missile"]
        }, {
          name: "Storm Squadron Pilot",
          id: 21,
          ship: "TIE Advanced",
          sources: ["TIE Advanced Expansion Pack"],
          skill: 4,
          points: 23,
          slots: ["Missile"]
        }, {
          name: "Darth Vader",
          id: 22,
          unique: true,
          ship: "TIE Advanced",
          sources: ["TIE Advanced Expansion Pack"],
          skill: 9,
          points: 29,
          slots: ["Elite", "Missile"]
        }, {
          name: "Alpha Squadron Pilot",
          id: 23,
          ship: "TIE Interceptor",
          sources: ["TIE Interceptor Expansion Pack"],
          skill: 1,
          points: 18,
          slots: []
        }, {
          name: "Avenger Squadron Pilot",
          id: 24,
          ship: "TIE Interceptor",
          sources: ["TIE Interceptor Expansion Pack"],
          skill: 3,
          points: 20,
          slots: []
        }, {
          name: "Saber Squadron Pilot",
          id: 25,
          ship: "TIE Interceptor",
          sources: ["TIE Interceptor Expansion Pack", "Imperial Aces Expansion Pack"],
          skill: 4,
          points: 21,
          slots: ["Elite"]
        }, {
          name: "\"Fel's Wrath\"",
          id: 26,
          unique: true,
          ship: "TIE Interceptor",
          sources: ["TIE Interceptor Expansion Pack"],
          skill: 5,
          points: 23,
          slots: []
        }, {
          name: "Turr Phennir",
          id: 27,
          unique: true,
          ship: "TIE Interceptor",
          sources: ["TIE Interceptor Expansion Pack"],
          skill: 7,
          points: 25,
          slots: ["Elite"]
        }, {
          name: "Soontir Fel",
          id: 28,
          unique: true,
          ship: "TIE Interceptor",
          sources: ["TIE Interceptor Expansion Pack"],
          skill: 9,
          points: 27,
          slots: ["Elite"]
        }, {
          name: "Tycho Celchu",
          id: 29,
          unique: true,
          ship: "A-Wing",
          sources: ["A-Wing Expansion Pack"],
          skill: 8,
          points: 26,
          slots: ["Elite", "Missile"]
        }, {
          name: "Arvel Crynyd",
          id: 30,
          unique: true,
          ship: "A-Wing",
          sources: ["A-Wing Expansion Pack"],
          skill: 6,
          points: 23,
          slots: ["Missile"]
        }, {
          name: "Green Squadron Pilot",
          id: 31,
          ship: "A-Wing",
          sources: ["A-Wing Expansion Pack", "Rebel Aces Expansion Pack"],
          skill: 3,
          points: 19,
          slots: ["Elite", "Missile"]
        }, {
          name: "Prototype Pilot",
          id: 32,
          ship: "A-Wing",
          sources: ["A-Wing Expansion Pack", "Rebel Aces Expansion Pack"],
          skill: 1,
          points: 17,
          slots: ["Missile"]
        }, {
          name: "Outer Rim Smuggler",
          id: 33,
          ship: "YT-1300",
          sources: ["Millennium Falcon Expansion Pack"],
          skill: 1,
          points: 27,
          slots: ["Crew", "Crew"]
        }, {
          name: "Chewbacca",
          id: 34,
          unique: true,
          ship: "YT-1300",
          sources: ["Millennium Falcon Expansion Pack"],
          skill: 5,
          points: 42,
          slots: ["Elite", "Missile", "Crew", "Crew"],
          ship_override: {
            attack: 3,
            agility: 1,
            hull: 8,
            shields: 5
          }
        }, {
          name: "Lando Calrissian",
          id: 35,
          unique: true,
          ship: "YT-1300",
          sources: ["Millennium Falcon Expansion Pack"],
          skill: 7,
          points: 44,
          slots: ["Elite", "Missile", "Crew", "Crew"],
          ship_override: {
            attack: 3,
            agility: 1,
            hull: 8,
            shields: 5
          }
        }, {
          name: "Han Solo",
          id: 36,
          unique: true,
          ship: "YT-1300",
          sources: ["Millennium Falcon Expansion Pack"],
          skill: 9,
          points: 46,
          slots: ["Elite", "Missile", "Crew", "Crew"],
          ship_override: {
            attack: 3,
            agility: 1,
            hull: 8,
            shields: 5
          }
        }, {
          name: "Kath Scarlet",
          id: 37,
          unique: true,
          ship: "Firespray-31",
          sources: ["Slave I Expansion Pack"],
          skill: 7,
          points: 38,
          slots: ["Elite", "Cannon", "Bomb", "Crew", "Missile"]
        }, {
          name: "Boba Fett",
          id: 38,
          unique: true,
          ship: "Firespray-31",
          sources: ["Slave I Expansion Pack"],
          skill: 8,
          points: 39,
          slots: ["Elite", "Cannon", "Bomb", "Crew", "Missile"]
        }, {
          name: "Krassis Trelix",
          id: 39,
          unique: true,
          ship: "Firespray-31",
          sources: ["Slave I Expansion Pack"],
          skill: 5,
          points: 36,
          slots: ["Cannon", "Bomb", "Crew", "Missile"]
        }, {
          name: "Bounty Hunter",
          id: 40,
          ship: "Firespray-31",
          sources: ["Slave I Expansion Pack"],
          skill: 3,
          points: 33,
          slots: ["Cannon", "Bomb", "Crew", "Missile"]
        }, {
          name: "Ten Numb",
          id: 41,
          unique: true,
          ship: "B-Wing",
          sources: ["B-Wing Expansion Pack"],
          skill: 8,
          points: 31,
          slots: ["Elite", "System", "Cannon", "Torpedo", "Torpedo"]
        }, {
          name: "Ibtisam",
          id: 42,
          unique: true,
          ship: "B-Wing",
          sources: ["B-Wing Expansion Pack"],
          skill: 6,
          points: 28,
          slots: ["Elite", "System", "Cannon", "Torpedo", "Torpedo"]
        }, {
          name: "Dagger Squadron Pilot",
          id: 43,
          ship: "B-Wing",
          sources: ["B-Wing Expansion Pack", "Rebel Aces Expansion Pack"],
          skill: 4,
          points: 24,
          slots: ["System", "Cannon", "Torpedo", "Torpedo"]
        }, {
          name: "Blue Squadron Pilot",
          id: 44,
          ship: "B-Wing",
          sources: ["B-Wing Expansion Pack", "Rebel Aces Expansion Pack"],
          skill: 2,
          points: 22,
          slots: ["System", "Cannon", "Torpedo", "Torpedo"]
        }, {
          name: "Rebel Operative",
          id: 45,
          ship: "HWK-290",
          sources: ["HWK-290 Expansion Pack"],
          skill: 2,
          points: 16,
          slots: ["Turret", "Crew"]
        }, {
          name: "Roark Garnet",
          id: 46,
          unique: true,
          ship: "HWK-290",
          sources: ["HWK-290 Expansion Pack"],
          skill: 4,
          points: 19,
          slots: ["Turret", "Crew"]
        }, {
          name: "Kyle Katarn",
          id: 47,
          unique: true,
          ship: "HWK-290",
          sources: ["HWK-290 Expansion Pack"],
          skill: 6,
          points: 21,
          slots: ["Elite", "Turret", "Crew"]
        }, {
          name: "Jan Ors",
          id: 48,
          unique: true,
          ship: "HWK-290",
          sources: ["HWK-290 Expansion Pack"],
          skill: 8,
          points: 25,
          slots: ["Elite", "Turret", "Crew"]
        }, {
          name: "Scimitar Squadron Pilot",
          id: 49,
          ship: "TIE Bomber",
          sources: ["TIE Bomber Expansion Pack"],
          skill: 2,
          points: 16,
          slots: ["Torpedo", "Torpedo", "Missile", "Missile", "Bomb"]
        }, {
          name: "Gamma Squadron Pilot",
          id: 50,
          ship: "TIE Bomber",
          sources: ["TIE Bomber Expansion Pack"],
          skill: 4,
          points: 18,
          slots: ["Torpedo", "Torpedo", "Missile", "Missile", "Bomb"]
        }, {
          name: "Captain Jonus",
          id: 51,
          unique: true,
          ship: "TIE Bomber",
          sources: ["TIE Bomber Expansion Pack"],
          skill: 6,
          points: 22,
          slots: ["Elite", "Torpedo", "Torpedo", "Missile", "Missile", "Bomb"]
        }, {
          name: "Major Rhymer",
          id: 52,
          unique: true,
          ship: "TIE Bomber",
          sources: ["TIE Bomber Expansion Pack"],
          skill: 7,
          points: 26,
          slots: ["Elite", "Torpedo", "Torpedo", "Missile", "Missile", "Bomb"]
        }, {
          name: "Captain Kagi",
          id: 53,
          unique: true,
          ship: "Lambda-Class Shuttle",
          sources: ["Lambda-Class Shuttle Expansion Pack"],
          skill: 8,
          points: 27,
          slots: ["System", "Cannon", "Crew", "Crew"]
        }, {
          name: "Colonel Jendon",
          id: 54,
          unique: true,
          ship: "Lambda-Class Shuttle",
          sources: ["Lambda-Class Shuttle Expansion Pack"],
          skill: 6,
          points: 26,
          slots: ["System", "Cannon", "Crew", "Crew"]
        }, {
          name: "Captain Yorr",
          id: 55,
          unique: true,
          ship: "Lambda-Class Shuttle",
          sources: ["Lambda-Class Shuttle Expansion Pack"],
          skill: 4,
          points: 24,
          slots: ["System", "Cannon", "Crew", "Crew"]
        }, {
          name: "Omicron Group Pilot",
          id: 56,
          ship: "Lambda-Class Shuttle",
          sources: ["Lambda-Class Shuttle Expansion Pack"],
          skill: 2,
          points: 21,
          slots: ["System", "Cannon", "Crew", "Crew"]
        }, {
          name: "Lieutenant Lorrir",
          id: 57,
          unique: true,
          ship: "TIE Interceptor",
          sources: ["Imperial Aces Expansion Pack"],
          skill: 5,
          points: 23,
          slots: []
        }, {
          name: "Royal Guard Pilot",
          id: 58,
          ship: "TIE Interceptor",
          sources: ["Imperial Aces Expansion Pack"],
          skill: 6,
          points: 22,
          slots: ["Elite"]
        }, {
          name: "Tetran Cowall",
          id: 59,
          unique: true,
          ship: "TIE Interceptor",
          sources: ["Imperial Aces Expansion Pack"],
          skill: 7,
          points: 24,
          slots: ["Elite"],
          modifier_func: function(stats) {
            return stats.maneuvers[1][5] = 3;
          }
        }, {
          name: "Kir Kanos",
          id: 61,
          unique: true,
          ship: "TIE Interceptor",
          sources: ["Imperial Aces Expansion Pack"],
          skill: 6,
          points: 24,
          slots: []
        }, {
          name: "Carnor Jax",
          id: 62,
          unique: true,
          ship: "TIE Interceptor",
          sources: ["Imperial Aces Expansion Pack"],
          skill: 8,
          points: 26,
          slots: ["Elite"]
        }, {
          name: "GR-75 Medium Transport",
          id: 63,
          epic: true,
          ship: "GR-75 Medium Transport",
          sources: ["Rebel Transport Expansion Pack"],
          skill: 3,
          points: 30,
          slots: ["Crew", "Crew", "Cargo", "Cargo", "Cargo"]
        }, {
          name: "Bandit Squadron Pilot",
          id: 64,
          ship: "Z-95 Headhunter",
          sources: ["Z-95 Headhunter Expansion Pack"],
          skill: 2,
          points: 12,
          slots: ["Missile"]
        }, {
          name: "Tala Squadron Pilot",
          id: 65,
          ship: "Z-95 Headhunter",
          sources: ["Z-95 Headhunter Expansion Pack"],
          skill: 4,
          points: 13,
          slots: ["Missile"]
        }, {
          name: "Lieutenant Blount",
          id: 66,
          unique: true,
          ship: "Z-95 Headhunter",
          sources: ["Z-95 Headhunter Expansion Pack"],
          skill: 6,
          points: 17,
          slots: ["Elite", "Missile"]
        }, {
          name: "Airen Cracken",
          id: 67,
          unique: true,
          ship: "Z-95 Headhunter",
          sources: ["Z-95 Headhunter Expansion Pack"],
          skill: 8,
          points: 19,
          slots: ["Elite", "Missile"]
        }, {
          name: "Delta Squadron Pilot",
          id: 68,
          ship: "TIE Defender",
          sources: ["TIE Defender Expansion Pack"],
          skill: 1,
          points: 30,
          slots: ["Cannon", "Missile"]
        }, {
          name: "Onyx Squadron Pilot",
          id: 69,
          ship: "TIE Defender",
          sources: ["TIE Defender Expansion Pack"],
          skill: 3,
          points: 99,
          slots: ["Cannon", "Missile"]
        }, {
          name: "Colonel Vessery",
          id: 70,
          unique: true,
          ship: "TIE Defender",
          sources: ["TIE Defender Expansion Pack"],
          skill: 6,
          points: 35,
          slots: ["Elite", "Cannon", "Missile"]
        }, {
          name: "Rexler Brath",
          id: 71,
          unique: true,
          ship: "TIE Defender",
          sources: ["TIE Defender Expansion Pack"],
          skill: 8,
          points: 37,
          slots: ["Elite", "Cannon", "Missile"]
        }, {
          name: "Knave Squadron Pilot",
          id: 72,
          ship: "E-Wing",
          sources: ["E-Wing Expansion Pack"],
          skill: 1,
          points: 27,
          slots: ["System", "Torpedo", "Astromech"]
        }, {
          name: "Blackmoon Squadron Pilot",
          id: 73,
          ship: "E-Wing",
          sources: ["E-Wing Expansion Pack"],
          skill: 3,
          points: 29,
          slots: ["System", "Torpedo", "Astromech"]
        }, {
          name: "Etahn A'baht",
          id: 74,
          unique: true,
          ship: "E-Wing",
          sources: ["E-Wing Expansion Pack"],
          skill: 5,
          points: 32,
          slots: ["Elite", "System", "Torpedo", "Astromech"]
        }, {
          name: "Corran Horn",
          id: 75,
          unique: true,
          ship: "E-Wing",
          sources: ["E-Wing Expansion Pack"],
          skill: 8,
          points: 35,
          slots: ["Elite", "System", "Torpedo", "Astromech"]
        }, {
          name: "Sigma Squadron Pilot",
          id: 76,
          ship: "TIE Phantom",
          sources: ["TIE Phantom Expansion Pack"],
          skill: 3,
          points: 25,
          slots: ["System", "Crew"]
        }, {
          name: "Shadow Squadron Pilot",
          id: 77,
          ship: "TIE Phantom",
          sources: ["TIE Phantom Expansion Pack"],
          skill: 5,
          points: 27,
          slots: ["System", "Crew"]
        }, {
          name: '"Echo"',
          id: 78,
          unique: true,
          ship: "TIE Phantom",
          sources: ["TIE Phantom Expansion Pack"],
          skill: 6,
          points: 30,
          slots: ["Elite", "System", "Crew"]
        }, {
          name: '"Whisper"',
          id: 79,
          unique: true,
          ship: "TIE Phantom",
          sources: ["TIE Phantom Expansion Pack"],
          skill: 7,
          points: 32,
          slots: ["Elite", "System", "Crew"]
        }, {
          name: "CR90 Corvette (Fore)",
          id: 80,
          epic: true,
          ship: "CR90 Corvette (Fore)",
          sources: ["Tantive IV Expansion Pack"],
          skill: 4,
          points: 50,
          slots: ["Crew", "Hardpoint", "Hardpoint", "Team", "Team", "Cargo"]
        }, {
          name: "CR90 Corvette (Aft)",
          id: 81,
          epic: true,
          ship: "CR90 Corvette (Aft)",
          sources: ["Tantive IV Expansion Pack"],
          skill: 4,
          points: 40,
          slots: ["Crew", "Hardpoint", "Team", "Cargo"]
        }, {
          name: "Wes Janson",
          id: 82,
          unique: true,
          ship: "X-Wing",
          sources: ["Rebel Transport Expansion Pack"],
          skill: 8,
          points: 29,
          slots: ["Elite", "Torpedo", "Astromech"]
        }, {
          name: "Jek Porkins",
          id: 83,
          unique: true,
          ship: "X-Wing",
          sources: ["Rebel Transport Expansion Pack"],
          skill: 7,
          points: 26,
          slots: ["Elite", "Torpedo", "Astromech"]
        }, {
          name: '"Hobbie" Klivian',
          id: 84,
          unique: true,
          ship: "X-Wing",
          sources: ["Rebel Transport Expansion Pack"],
          skill: 5,
          points: 25,
          slots: ["Torpedo", "Astromech"]
        }, {
          name: "Tarn Mison",
          id: 85,
          unique: true,
          ship: "X-Wing",
          sources: ["Rebel Transport Expansion Pack"],
          skill: 3,
          points: 23,
          slots: ["Torpedo", "Astromech"]
        }, {
          name: "Jake Farrell",
          id: 86,
          unique: true,
          ship: "A-Wing",
          sources: ["Rebel Aces Expansion Pack"],
          skill: 7,
          points: 24,
          slots: ["Elite", "Missile"]
        }, {
          name: "Unspoiled PS5 A-Wing Pilot",
          id: 87,
          unique: true,
          ship: "A-Wing",
          sources: ["Rebel Aces Expansion Pack"],
          skill: 5,
          points: 99,
          slots: ["Missile"]
        }, {
          name: "Keyan Farlander",
          id: 88,
          unique: true,
          ship: "B-Wing",
          sources: ["Rebel Aces Expansion Pack"],
          skill: 7,
          points: 29,
          slots: ["Elite", "System", "Cannon", "Torpedo", "Torpedo"]
        }, {
          name: "Unspoiled PS5 B-Wing Pilot",
          id: 89,
          unique: true,
          ship: "B-Wing",
          sources: ["Rebel Aces Expansion Pack"],
          skill: 5,
          points: 99,
          slots: ["System", "Cannon", "Torpedo", "Torpedo"]
        }
      ],
      upgradesById: [
        {
          name: "Ion Cannon Turret",
          id: 0,
          slot: "Turret",
          sources: ["Y-Wing Expansion Pack", "HWK-290 Expansion Pack"],
          points: 5,
          attack: 3,
          range: "1-2"
        }, {
          name: "Proton Torpedoes",
          id: 1,
          slot: "Torpedo",
          sources: ["Core", "X-Wing Expansion Pack", "Y-Wing Expansion Pack", "B-Wing Expansion Pack"],
          points: 4,
          attack: 4,
          range: "2-3"
        }, {
          name: "R2 Astromech",
          id: 2,
          slot: "Astromech",
          sources: ["Y-Wing Expansion Pack"],
          points: 1,
          modifier_func: function(stats) {
            var turn, _i, _ref, _results;
            if ((stats.maneuvers != null) && stats.maneuvers.length > 0) {
              _results = [];
              for (turn = _i = 0, _ref = stats.maneuvers[1].length; 0 <= _ref ? _i < _ref : _i > _ref; turn = 0 <= _ref ? ++_i : --_i) {
                if (stats.maneuvers[1][turn] > 0) {
                  stats.maneuvers[1][turn] = 2;
                }
                if (stats.maneuvers[2][turn] > 0) {
                  _results.push(stats.maneuvers[2][turn] = 2);
                } else {
                  _results.push(void 0);
                }
              }
              return _results;
            }
          }
        }, {
          name: "R2-D2",
          aka: ["R2-D2 (Crew)"],
          id: 3,
          unique: true,
          slot: "Astromech",
          sources: ["Core"],
          points: 4
        }, {
          name: "R2-F2",
          id: 4,
          unique: true,
          slot: "Astromech",
          sources: ["Core"],
          points: 3
        }, {
          name: "R5-D8",
          id: 5,
          unique: true,
          slot: "Astromech",
          sources: ["Y-Wing Expansion Pack"],
          points: 3
        }, {
          name: "R5-K6",
          id: 6,
          unique: true,
          slot: "Astromech",
          sources: ["X-Wing Expansion Pack"],
          points: 2
        }, {
          name: "R5 Astromech",
          id: 7,
          slot: "Astromech",
          sources: ["X-Wing Expansion Pack"],
          points: 1
        }, {
          name: "Determination",
          id: 8,
          slot: "Elite",
          sources: ["Core", "TIE Fighter Expansion Pack"],
          points: 1
        }, {
          name: "Swarm Tactics",
          id: 9,
          slot: "Elite",
          sources: ["TIE Fighter Expansion Pack", "TIE Advanced Expansion Pack"],
          points: 2
        }, {
          name: "Squad Leader",
          id: 10,
          unique: true,
          slot: "Elite",
          sources: ["TIE Advanced Expansion Pack"],
          points: 2
        }, {
          name: "Expert Handling",
          id: 11,
          slot: "Elite",
          sources: ["X-Wing Expansion Pack", "TIE Advanced Expansion Pack"],
          points: 2
        }, {
          name: "Marksmanship",
          id: 12,
          slot: "Elite",
          sources: ["Core", "X-Wing Expansion Pack"],
          points: 3
        }, {
          name: "Concussion Missiles",
          id: 13,
          slot: "Missile",
          sources: ["TIE Advanced Expansion Pack", "A-Wing Expansion Pack", "Millennium Falcon Expansion Pack"],
          points: 4,
          attack: 4,
          range: "2-3"
        }, {
          name: "Cluster Missiles",
          id: 14,
          slot: "Missile",
          sources: ["TIE Advanced Expansion Pack", "A-Wing Expansion Pack"],
          points: 4,
          attack: 3,
          range: "1-2"
        }, {
          name: "Daredevil",
          id: 15,
          slot: "Elite",
          sources: ["TIE Interceptor Expansion Pack"],
          points: 3
        }, {
          name: "Elusiveness",
          id: 16,
          slot: "Elite",
          sources: ["TIE Interceptor Expansion Pack", "Millennium Falcon Expansion Pack"],
          points: 2
        }, {
          name: "Homing Missiles",
          id: 17,
          slot: "Missile",
          sources: ["A-Wing Expansion Pack", "Slave I Expansion Pack"],
          attack: 4,
          range: "2-3",
          points: 5
        }, {
          name: "Push the Limit",
          id: 18,
          slot: "Elite",
          sources: ["A-Wing Expansion Pack", "Imperial Aces Expansion Pack"],
          points: 3
        }, {
          name: "Deadeye",
          id: 19,
          slot: "Elite",
          sources: ["A-Wing Expansion Pack"],
          points: 1
        }, {
          name: "Expose",
          id: 20,
          slot: "Elite",
          sources: ["Slave I Expansion Pack"],
          points: 4
        }, {
          name: "Gunner",
          id: 21,
          slot: "Crew",
          sources: ["Slave I Expansion Pack"],
          points: 5,
          epic_restriction_func: function(ship) {
            var _ref;
            return !((_ref = ship.huge) != null ? _ref : false);
          }
        }, {
          name: "Ion Cannon",
          id: 22,
          slot: "Cannon",
          sources: ["Slave I Expansion Pack", "B-Wing Expansion Pack", "TIE Defender Expansion Pack"],
          points: 3,
          attack: 3,
          range: "1-3"
        }, {
          name: "Heavy Laser Cannon",
          id: 23,
          slot: "Cannon",
          sources: ["Slave I Expansion Pack", "Lambda-Class Shuttle Expansion Pack"],
          points: 7,
          attack: 4,
          range: "2-3"
        }, {
          name: "Seismic Charges",
          id: 24,
          slot: "Bomb",
          sources: ["Slave I Expansion Pack", "TIE Bomber Expansion Pack"],
          points: 2
        }, {
          name: "Mercenary Copilot",
          id: 25,
          slot: "Crew",
          sources: ["Slave I Expansion Pack"],
          points: 2
        }, {
          name: "Assault Missiles",
          id: 26,
          slot: "Missile",
          sources: ["Millennium Falcon Expansion Pack", "Slave I Expansion Pack", "TIE Bomber Expansion Pack", "Z-95 Headhunter Expansion Pack"],
          points: 5,
          attack: 4,
          range: "2-3"
        }, {
          name: "Veteran Instincts",
          id: 27,
          slot: "Elite",
          sources: ["Millennium Falcon Expansion Pack", "Slave I Expansion Pack"],
          points: 1,
          modifier_func: function(stats) {
            return stats.skill += 2;
          }
        }, {
          name: "Proximity Mines",
          id: 28,
          slot: "Bomb",
          sources: ["Slave I Expansion Pack"],
          points: 3
        }, {
          name: "Weapons Engineer",
          id: 29,
          slot: "Crew",
          sources: ["Millennium Falcon Expansion Pack", "Lambda-Class Shuttle Expansion Pack"],
          points: 3
        }, {
          name: "Draw Their Fire",
          id: 30,
          slot: "Elite",
          sources: ["Millennium Falcon Expansion Pack"],
          points: 1
        }, {
          name: "Luke Skywalker",
          id: 31,
          unique: true,
          faction: "Rebel Alliance",
          slot: "Crew",
          sources: ["Millennium Falcon Expansion Pack"],
          points: 7,
          epic_restriction_func: function(ship) {
            var _ref;
            return !((_ref = ship.huge) != null ? _ref : false);
          }
        }, {
          name: "Nien Nunb",
          id: 32,
          unique: true,
          faction: "Rebel Alliance",
          slot: "Crew",
          sources: ["Millennium Falcon Expansion Pack"],
          points: 1,
          modifier_func: function(stats) {
            var s, _i, _len, _ref, _ref1, _results;
            _ref1 = (_ref = stats.maneuvers) != null ? _ref : [];
            _results = [];
            for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
              s = _ref1[_i];
              if (s[2] > 0) {
                _results.push(s[2] = 2);
              } else {
                _results.push(void 0);
              }
            }
            return _results;
          }
        }, {
          name: "Chewbacca",
          id: 33,
          unique: true,
          faction: "Rebel Alliance",
          slot: "Crew",
          sources: ["Millennium Falcon Expansion Pack"],
          points: 4
        }, {
          name: "Advanced Proton Torpedoes",
          id: 34,
          slot: "Torpedo",
          attack: 5,
          range: "1",
          sources: ["B-Wing Expansion Pack", "TIE Bomber Expansion Pack"],
          points: 6
        }, {
          name: "Autoblaster",
          id: 35,
          slot: "Cannon",
          attack: 3,
          range: "1",
          sources: ["B-Wing Expansion Pack"],
          points: 5
        }, {
          name: "Fire-Control System",
          id: 36,
          slot: "System",
          sources: ["B-Wing Expansion Pack", "TIE Phantom Expansion Pack"],
          points: 2
        }, {
          name: "Blaster Turret",
          id: 37,
          slot: "Turret",
          sources: ["HWK-290 Expansion Pack"],
          points: 4,
          attack: 3,
          range: "1-2"
        }, {
          name: "Recon Specialist",
          id: 38,
          slot: "Crew",
          sources: ["HWK-290 Expansion Pack", "TIE Phantom Expansion Pack"],
          points: 3
        }, {
          name: "Saboteur",
          id: 39,
          slot: "Crew",
          sources: ["HWK-290 Expansion Pack"],
          points: 2
        }, {
          name: "Intelligence Agent",
          id: 40,
          slot: "Crew",
          sources: ["HWK-290 Expansion Pack", "Lambda-Class Shuttle Expansion Pack"],
          points: 1
        }, {
          name: "Proton Bomb",
          id: 41,
          slot: "Bomb",
          sources: ["TIE Bomber Expansion Pack"],
          points: 5
        }, {
          name: "Adrenaline Rush",
          id: 42,
          slot: "Elite",
          sources: ["TIE Bomber Expansion Pack"],
          points: 1
        }, {
          name: "Advanced Sensors",
          id: 43,
          slot: "System",
          sources: ["Lambda-Class Shuttle Expansion Pack", "E-Wing Expansion Pack"],
          points: 3
        }, {
          name: "Sensor Jammer",
          id: 44,
          slot: "System",
          sources: ["Lambda-Class Shuttle Expansion Pack"],
          points: 4
        }, {
          name: "Darth Vader",
          id: 45,
          unique: true,
          faction: "Galactic Empire",
          slot: "Crew",
          sources: ["Lambda-Class Shuttle Expansion Pack"],
          points: 3
        }, {
          name: "Rebel Captive",
          id: 46,
          unique: true,
          faction: "Galactic Empire",
          slot: "Crew",
          sources: ["Lambda-Class Shuttle Expansion Pack"],
          points: 3
        }, {
          name: "Flight Instructor",
          id: 47,
          slot: "Crew",
          sources: ["Lambda-Class Shuttle Expansion Pack"],
          points: 4
        }, {
          name: "Navigator",
          id: 48,
          slot: "Crew",
          sources: ["Lambda-Class Shuttle Expansion Pack"],
          points: 3,
          epic_restriction_func: function(ship) {
            var _ref;
            return !((_ref = ship.huge) != null ? _ref : false);
          }
        }, {
          name: "Opportunist",
          id: 49,
          slot: "Elite",
          sources: ["Imperial Aces Expansion Pack"],
          points: 4
        }, {
          name: "Comms Booster",
          id: 50,
          slot: "Cargo",
          sources: ["Rebel Transport Expansion Pack"],
          points: 4
        }, {
          name: "Slicer Tools",
          id: 51,
          slot: "Cargo",
          sources: ["Rebel Transport Expansion Pack"],
          points: 7
        }, {
          name: "Shield Projector",
          id: 52,
          slot: "Cargo",
          sources: ["Rebel Transport Expansion Pack"],
          points: 4
        }, {
          name: "Ion Pulse Missiles",
          id: 53,
          slot: "Missile",
          sources: ["Z-95 Headhunter Expansion Pack", "TIE Defender Expansion Pack"],
          points: 3,
          attack: 3,
          range: "2-3"
        }, {
          name: "Wingman",
          id: 54,
          slot: "Elite",
          sources: ["Z-95 Headhunter Expansion Pack"],
          points: 2
        }, {
          name: "Decoy",
          id: 55,
          slot: "Elite",
          sources: ["Z-95 Headhunter Expansion Pack"],
          points: 2
        }, {
          name: "Outmaneuver",
          id: 56,
          slot: "Elite",
          sources: ["TIE Defender Expansion Pack", "E-Wing Expansion Pack"],
          points: 3
        }, {
          name: "Predator",
          id: 57,
          slot: "Elite",
          sources: ["TIE Defender Expansion Pack"],
          points: 3
        }, {
          name: "Flechette Torpedoes",
          id: 58,
          slot: "Torpedo",
          sources: ["E-Wing Expansion Pack", "Rebel Transport Expansion Pack"],
          points: 2,
          attack: 3,
          range: "2-3"
        }, {
          name: "R7 Astromech",
          id: 59,
          slot: "Astromech",
          sources: ["E-Wing Expansion Pack"],
          points: 2
        }, {
          name: "R7-T1",
          id: 60,
          unique: true,
          slot: "Astromech",
          sources: ["E-Wing Expansion Pack"],
          points: 3
        }, {
          name: "Tactician",
          id: 61,
          slot: "Crew",
          sources: ["TIE Phantom Expansion Pack"],
          points: 2
        }, {
          name: "R2-D2 (Crew)",
          aka: ["R2-D2"],
          id: 62,
          unique: true,
          slot: "Crew",
          sources: ["Tantive IV Expansion Pack"],
          points: 4,
          faction: "Rebel Alliance"
        }, {
          name: "C-3PO",
          unique: true,
          id: 63,
          slot: "Crew",
          sources: ["Tantive IV Expansion Pack"],
          points: 3,
          faction: "Rebel Alliance"
        }, {
          name: "Single Turbolasers",
          id: 64,
          slot: "Hardpoint",
          sources: ["Tantive IV Expansion Pack"],
          points: 8,
          energy: 2,
          attack: 4,
          range: "3-5"
        }, {
          name: "Quad Laser Cannons",
          id: 65,
          slot: "Hardpoint",
          sources: ["Tantive IV Expansion Pack"],
          points: 6,
          energy: 2,
          attack: 3,
          range: "1-2"
        }, {
          name: "Tibanna Gas Supplies",
          id: 66,
          slot: "Cargo",
          sources: ["Tantive IV Expansion Pack", "Rebel Transport Expansion Pack"],
          points: 4,
          limited: true
        }, {
          name: "Ionization Reactor",
          id: 67,
          slot: "Cargo",
          sources: ["Tantive IV Expansion Pack"],
          points: 4,
          energy: 5,
          limited: true
        }, {
          name: "Engine Booster",
          id: 68,
          slot: "Cargo",
          sources: ["Tantive IV Expansion Pack", "Rebel Transport Expansion Pack"],
          points: 3,
          limited: true
        }, {
          name: "R3-A2",
          id: 69,
          unique: true,
          slot: "Astromech",
          sources: ["Rebel Transport Expansion Pack"],
          points: 2
        }, {
          name: "R2-D6",
          id: 70,
          unique: true,
          slot: "Astromech",
          sources: ["Rebel Transport Expansion Pack"],
          points: 1,
          restriction_func: function(ship) {
            var conferred_addon, upgrade, _i, _j, _len, _len1, _ref, _ref1, _ref2;
            if (ship.effectiveStats().skill <= 2 || __indexOf.call(ship.pilot.slots, 'Elite') >= 0) {
              return false;
            }
            _ref = ship.upgrades;
            for (_i = 0, _len = _ref.length; _i < _len; _i++) {
              upgrade = _ref[_i];
              if ((upgrade != null) && ((_ref1 = upgrade.data) != null ? _ref1.name : void 0) !== 'R2-D6') {
                _ref2 = upgrade.conferredAddons;
                for (_j = 0, _len1 = _ref2.length; _j < _len1; _j++) {
                  conferred_addon = _ref2[_j];
                  if (conferred_addon.slot === 'Elite') {
                    return false;
                  }
                }
              }
            }
            return true;
          },
          confersAddons: [
            {
              type: exportObj.Upgrade,
              slot: "Elite"
            }
          ]
        }, {
          name: "Enhanced Scopes",
          id: 71,
          slot: "System",
          sources: ["Rebel Aces Expansion Pack"],
          points: 1
        }, {
          name: "Chardaan Refit",
          id: 72,
          slot: "Missile",
          sources: ["Rebel Aces Expansion Pack"],
          points: -2,
          ship: "A-Wing"
        }, {
          name: "Proton Rockets",
          id: 73,
          slot: "Missile",
          sources: ["Rebel Aces Expansion Pack"],
          points: 99
        }, {
          name: "Kyle Katarn",
          id: 74,
          unique: true,
          slot: "Crew",
          sources: ["Rebel Aces Expansion Pack"],
          points: 99,
          faction: "Rebel Alliance"
        }, {
          name: "Jan Ors",
          id: 75,
          unique: true,
          slot: "Crew",
          sources: ["Rebel Aces Expansion Pack"],
          points: 99,
          faction: "Rebel Alliance"
        }, {
          name: "Toryn Farr",
          id: 76,
          unique: true,
          slot: "Crew",
          sources: ["Rebel Transport Expansion Pack"],
          points: 6,
          faction: "Rebel Alliance",
          restriction_func: function(ship) {
            var _ref;
            return (_ref = ship.data.huge) != null ? _ref : false;
          }
        }, {
          name: "R4-D6",
          id: 77,
          unique: true,
          slot: "Astromech",
          sources: ["Rebel Transport Expansion Pack"],
          points: 1
        }, {
          name: "R5-P9",
          id: 78,
          unique: true,
          slot: "Astromech",
          sources: ["Rebel Transport Expansion Pack"],
          points: 3
        }, {
          name: "WED-15 Repair Droid",
          id: 79,
          slot: "Crew",
          sources: ["Rebel Transport Expansion Pack"],
          points: 2,
          restriction_func: function(ship) {
            var _ref;
            return (_ref = ship.data.huge) != null ? _ref : false;
          }
        }, {
          name: "Carlist Rieekan",
          id: 80,
          unique: true,
          slot: "Crew",
          sources: ["Rebel Transport Expansion Pack"],
          points: 3,
          faction: "Rebel Alliance",
          restriction_func: function(ship) {
            var _ref;
            return (_ref = ship.data.huge) != null ? _ref : false;
          }
        }, {
          name: "Jan Dodonna",
          id: 81,
          unique: true,
          slot: "Crew",
          sources: ["Rebel Transport Expansion Pack"],
          points: 6,
          faction: "Rebel Alliance",
          restriction_func: function(ship) {
            var _ref;
            return (_ref = ship.data.huge) != null ? _ref : false;
          }
        }, {
          name: "Expanded Cargo Hold",
          id: 82,
          slot: "Cargo",
          sources: ["Rebel Transport Expansion Pack"],
          points: 1,
          ship: "GR-75 Medium Transport"
        }, {
          name: "Backup Shield Generator",
          id: 83,
          slot: "Cargo",
          limited: true,
          sources: ["Rebel Transport Expansion Pack"],
          points: 3
        }, {
          name: "EM Emitter",
          id: 84,
          slot: "Cargo",
          limited: true,
          sources: ["Rebel Transport Expansion Pack"],
          points: 3
        }, {
          name: "Frequency Jammer",
          id: 85,
          slot: "Cargo",
          limited: true,
          sources: ["Rebel Transport Expansion Pack"],
          points: 4
        }, {
          name: "Han Solo",
          id: 86,
          slot: "Crew",
          unique: true,
          faction: "Rebel Alliance",
          sources: ["Tantive IV Expansion Pack"],
          points: 2
        }, {
          name: "Leia Organa",
          id: 87,
          slot: "Crew",
          unique: true,
          faction: "Rebel Alliance",
          sources: ["Tantive IV Expansion Pack"],
          points: 4
        }, {
          name: "Targeting Coordinator",
          id: 88,
          slot: "Crew",
          limited: true,
          sources: ["Tantive IV Expansion Pack"],
          points: 4
        }, {
          name: "Raymus Antilles",
          id: 89,
          slot: "Crew",
          unique: true,
          faction: "Rebel Alliance",
          sources: ["Tantive IV Expansion Pack"],
          points: 6,
          restriction_func: function(ship) {
            var _ref;
            return (_ref = ship.data.huge) != null ? _ref : false;
          }
        }, {
          name: "Gunnery Team",
          id: 90,
          slot: "Team",
          limited: true,
          sources: ["Tantive IV Expansion Pack"],
          points: 4
        }, {
          name: "Sensor Team",
          id: 91,
          slot: "Team",
          sources: ["Tantive IV Expansion Pack"],
          points: 4
        }, {
          name: "Engineering Team",
          id: 92,
          slot: "Team",
          limited: true,
          sources: ["Tantive IV Expansion Pack"],
          points: 4
        }
      ],
      modificationsById: [
        {
          name: "Stealth Device",
          id: 1,
          points: 3,
          sources: ["Slave I Expansion Pack"],
          modifier_func: function(stats) {
            return stats.agility += 1;
          }
        }, {
          name: "Shield Upgrade",
          id: 2,
          points: 4,
          sources: ["Millennium Falcon Expansion Pack", "Imperial Aces Expansion Pack"],
          modifier_func: function(stats) {
            return stats.shields += 1;
          }
        }, {
          name: "Engine Upgrade",
          id: 3,
          points: 4,
          sources: ["Millennium Falcon Expansion Pack"],
          modifier_func: function(stats) {
            if (__indexOf.call(stats.actions, 'Boost') < 0) {
              return stats.actions.push('Boost');
            }
          }
        }, {
          name: "Anti-Pursuit Lasers",
          id: 4,
          sources: ["Lambda-Class Shuttle Expansion Pack"],
          points: 2,
          restriction_func: function(ship) {
            var _ref;
            return (_ref = ship.data.large) != null ? _ref : false;
          }
        }, {
          name: "Targeting Computer",
          id: 5,
          sources: ["Imperial Aces Expansion Pack"],
          points: 2,
          modifier_func: function(stats) {
            if (__indexOf.call(stats.actions, 'Target Lock') < 0) {
              return stats.actions.push('Target Lock');
            }
          }
        }, {
          name: "Hull Upgrade",
          id: 6,
          sources: ["Imperial Aces Expansion Pack"],
          points: 3,
          modifier_func: function(stats) {
            return stats.hull += 1;
          }
        }, {
          name: "Munitions Failsafe",
          id: 7,
          sources: ["Z-95 Headhunter Expansion Pack", "TIE Defender Expansion Pack"],
          points: 1
        }, {
          name: "Stygium Particle Accelerator",
          id: 8,
          sources: ["TIE Phantom Expansion Pack"],
          points: 2
        }, {
          name: "Advanced Cloaking Device",
          id: 9,
          sources: ["TIE Phantom Expansion Pack"],
          points: 4,
          ship: "TIE Phantom"
        }, {
          name: "Combat Retrofit",
          id: 10,
          sources: ["Rebel Transport Expansion Pack"],
          points: 10,
          ship: "GR-75 Medium Transport",
          huge: true,
          modifier_func: function(stats) {
            stats.hull += 2;
            return stats.shields += 1;
          }
        }
      ],
      titlesById: [
        {
          name: "Slave I",
          id: 1,
          sources: ["Slave I Expansion Pack"],
          unique: true,
          points: 0,
          ship: "Firespray-31",
          confersAddons: [
            {
              type: exportObj.Upgrade,
              slot: "Torpedo"
            }
          ]
        }, {
          name: "Millennium Falcon",
          id: 2,
          sources: ["Millennium Falcon Expansion Pack"],
          unique: true,
          points: 1,
          ship: "YT-1300",
          actions: "Evade",
          modifier_func: function(stats) {
            if (__indexOf.call(stats.actions, 'Evade') < 0) {
              return stats.actions.push('Evade');
            }
          }
        }, {
          name: "Moldy Crow",
          id: 3,
          sources: ["HWK-290 Expansion Pack"],
          unique: true,
          points: 3,
          ship: "HWK-290"
        }, {
          name: "ST-321",
          id: 4,
          sources: ["Lambda-Class Shuttle Expansion Pack"],
          unique: true,
          points: 3,
          ship: "Lambda-Class Shuttle"
        }, {
          name: "Royal Guard TIE",
          id: 5,
          sources: ["Imperial Aces Expansion Pack"],
          points: 0,
          ship: "TIE Interceptor",
          confersAddons: [
            {
              type: exportObj.Modification
            }
          ],
          restriction_func: function(ship) {
            return ship.effectiveStats().skill > 4;
          }
        }, {
          name: "Dodonna's Pride",
          id: 6,
          unique: true,
          sources: ["Tantive IV Expansion Pack"],
          points: 4,
          ship: "CR90 Corvette (Fore)"
        }, {
          name: "A-Wing Test Pilot",
          id: 7,
          sources: ["Rebel Aces Expansion Pack"],
          points: 0,
          ship: "A-Wing",
          restriction_func: function(ship) {
            return ship.effectiveStats().skill > 1;
          },
          confersAddons: [
            {
              type: exportObj.Upgrade,
              slot: "Elite"
            }
          ]
        }, {
          name: "B-Wing/E",
          id: 8,
          sources: ["Rebel Aces Expansion Pack"],
          points: 99,
          ship: "B-Wing",
          confersAddons: [
            {
              type: exportObj.Upgrade,
              slot: "Crew"
            }
          ]
        }, {
          name: "Tantive IV",
          id: 9,
          unique: true,
          sources: ["Tantive IV Expansion Pack"],
          points: 4,
          ship: "CR90 Corvette (Fore)",
          confersAddons: [
            {
              type: exportObj.Upgrade,
              slot: "Crew"
            }, {
              type: exportObj.Upgrade,
              slot: "Team"
            }
          ]
        }, {
          name: "Bright Hope",
          id: 10,
          energy: "+2",
          unique: true,
          sources: ["Rebel Transport Expansion Pack"],
          points: 5,
          ship: "GR-75 Medium Transport",
          modifier_func: function(stats) {
            return stats.energy += 2;
          }
        }, {
          name: "Quantum Storm",
          id: 11,
          energy: "+1",
          unique: true,
          sources: ["Rebel Transport Expansion Pack"],
          points: 4,
          ship: "GR-75 Medium Transport",
          modifier_func: function(stats) {
            return stats.energy += 1;
          }
        }, {
          name: "Dutyfree",
          id: 12,
          energy: "+0",
          unique: true,
          sources: ["Rebel Transport Expansion Pack"],
          points: 2,
          ship: "GR-75 Medium Transport"
        }, {
          name: "Jaina's Light",
          id: 13,
          unique: true,
          sources: ["Rebel Transport Expansion Pack"],
          points: 2,
          ship: "CR90 Corvette (Fore)"
        }
      ]
    };
  };

  exportObj.setupCardData = function(basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations) {
    var e, field, modification, modification_data, modification_name, pilot, pilot_data, pilot_name, source, title, title_data, title_name, translation, translations, upgrade, upgrade_data, upgrade_name, _i, _j, _k, _l, _len, _len1, _len2, _len3, _len4, _len5, _len6, _len7, _m, _n, _o, _p, _ref, _ref1, _ref10, _ref11, _ref12, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7, _ref8, _ref9;
    exportObj.pilots = {};
    _ref = basic_cards.pilotsById;
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      pilot_data = _ref[_i];
      exportObj.pilots[pilot_data.name] = pilot_data;
    }
    for (pilot_name in pilot_translations) {
      translations = pilot_translations[pilot_name];
      for (field in translations) {
        translation = translations[field];
        try {
          exportObj.pilots[pilot_name][field] = translation;
        } catch (_error) {
          e = _error;
          console.error("Cannot find translation for attribute " + field + " for pilot " + pilot_name);
          throw e;
        }
      }
    }
    exportObj.upgrades = {};
    _ref1 = basic_cards.upgradesById;
    for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
      upgrade_data = _ref1[_j];
      exportObj.upgrades[upgrade_data.name] = upgrade_data;
    }
    for (upgrade_name in upgrade_translations) {
      translations = upgrade_translations[upgrade_name];
      for (field in translations) {
        translation = translations[field];
        try {
          exportObj.upgrades[upgrade_name][field] = translation;
        } catch (_error) {
          e = _error;
          console.error("Cannot find translation for attribute " + field + " for upgrade " + upgrade_name);
          throw e;
        }
      }
    }
    exportObj.modifications = {};
    _ref2 = basic_cards.modificationsById;
    for (_k = 0, _len2 = _ref2.length; _k < _len2; _k++) {
      modification_data = _ref2[_k];
      exportObj.modifications[modification_data.name] = modification_data;
    }
    for (modification_name in modification_translations) {
      translations = modification_translations[modification_name];
      for (field in translations) {
        translation = translations[field];
        try {
          exportObj.modifications[modification_name][field] = translation;
        } catch (_error) {
          e = _error;
          console.error("Cannot find translation for attribute " + field + " for modification " + modification_name);
          throw e;
        }
      }
    }
    exportObj.titles = {};
    _ref3 = basic_cards.titlesById;
    for (_l = 0, _len3 = _ref3.length; _l < _len3; _l++) {
      title_data = _ref3[_l];
      exportObj.titles[title_data.name] = title_data;
    }
    for (title_name in title_translations) {
      translations = title_translations[title_name];
      for (field in translations) {
        translation = translations[field];
        try {
          exportObj.titles[title_name][field] = translation;
        } catch (_error) {
          e = _error;
          console.error("Cannot find translation for attribute " + field + " for title " + title_name);
          throw e;
        }
      }
    }
    exportObj.expansions = {};
    exportObj.pilotsById = {};
    exportObj.pilotsByLocalizedName = {};
    _ref4 = exportObj.pilots;
    for (pilot_name in _ref4) {
      pilot = _ref4[pilot_name];
      exportObj.fixIcons(pilot);
      exportObj.pilotsById[pilot.id] = pilot;
      exportObj.pilotsByLocalizedName[pilot.name] = pilot;
      _ref5 = pilot.sources;
      for (_m = 0, _len4 = _ref5.length; _m < _len4; _m++) {
        source = _ref5[_m];
        if (!(source in exportObj.expansions)) {
          exportObj.expansions[source] = 1;
        }
      }
    }
    if (Object.keys(exportObj.pilotsById).length !== Object.keys(exportObj.pilots).length) {
      throw new Error("At least one pilot shares an ID with another");
    }
    exportObj.upgradesById = {};
    exportObj.upgradesByLocalizedName = {};
    _ref6 = exportObj.upgrades;
    for (upgrade_name in _ref6) {
      upgrade = _ref6[upgrade_name];
      exportObj.fixIcons(upgrade);
      exportObj.upgradesById[upgrade.id] = upgrade;
      exportObj.upgradesByLocalizedName[upgrade.name] = upgrade;
      _ref7 = upgrade.sources;
      for (_n = 0, _len5 = _ref7.length; _n < _len5; _n++) {
        source = _ref7[_n];
        if (!(source in exportObj.expansions)) {
          exportObj.expansions[source] = 1;
        }
      }
    }
    if (Object.keys(exportObj.upgradesById).length !== Object.keys(exportObj.upgrades).length) {
      throw new Error("At least one upgrade shares an ID with another");
    }
    exportObj.modificationsById = {};
    exportObj.modificationsByLocalizedName = {};
    _ref8 = exportObj.modifications;
    for (modification_name in _ref8) {
      modification = _ref8[modification_name];
      exportObj.fixIcons(modification);
      if (modification.huge != null) {
        if (modification.restriction_func == null) {
          modification.restriction_func = function(ship) {
            var _ref9;
            return (_ref9 = ship.data.huge) != null ? _ref9 : false;
          };
        }
      } else if (modification.restriction_func == null) {
        modification.restriction_func = function(ship) {
          var _ref9;
          return !((_ref9 = ship.data.huge) != null ? _ref9 : false);
        };
      }
      exportObj.modificationsById[modification.id] = modification;
      exportObj.modificationsByLocalizedName[modification.name] = modification;
      _ref9 = modification.sources;
      for (_o = 0, _len6 = _ref9.length; _o < _len6; _o++) {
        source = _ref9[_o];
        if (!(source in exportObj.expansions)) {
          exportObj.expansions[source] = 1;
        }
      }
    }
    if (Object.keys(exportObj.modificationsById).length !== Object.keys(exportObj.modifications).length) {
      throw new Error("At least one modification shares an ID with another");
    }
    exportObj.titlesById = {};
    exportObj.titlesByLocalizedName = {};
    _ref10 = exportObj.titles;
    for (title_name in _ref10) {
      title = _ref10[title_name];
      exportObj.fixIcons(title);
      exportObj.titlesById[title.id] = title;
      exportObj.titlesByLocalizedName[title.name] = title;
      _ref11 = title.sources;
      for (_p = 0, _len7 = _ref11.length; _p < _len7; _p++) {
        source = _ref11[_p];
        if (!(source in exportObj.expansions)) {
          exportObj.expansions[source] = 1;
        }
      }
    }
    if (Object.keys(exportObj.titlesById).length !== Object.keys(exportObj.titles).length) {
      throw new Error("At least one title shares an ID with another");
    }
    exportObj.titlesByShip = {};
    _ref12 = exportObj.titles;
    for (title_name in _ref12) {
      title = _ref12[title_name];
      if (!(title.ship in exportObj.titlesByShip)) {
        exportObj.titlesByShip[title.ship] = [];
      }
      exportObj.titlesByShip[title.ship].push(title);
    }
    return exportObj.expansions = Object.keys(exportObj.expansions).sort();
  };

  exportObj.fixIcons = function(data) {
    if (data.text != null) {
      return data.text = data.text.replace(/%BANKLEFT%/g, '<img class="icon-bankleft" alt="Bank Left" src="images/transparent.png" />').replace(/%BANKRIGHT%/g, '<img class="icon-bankright" alt="Bank Right" src="images/transparent.png" />').replace(/%BARRELROLL%/g, '<img class="icon-barrel-roll" alt="Barrel Roll" src="images/transparent.png" />').replace(/%BOOST%/g, '<img class="icon-boost" alt="Boost" src="images/transparent.png" />').replace(/%CRIT%/g, '<img class="icon-crit" alt="Crit" src="images/transparent.png" />').replace(/%CREW%/g, '<img class="icon-crew" alt="Crew" src="images/transparent.png" />').replace(/%ELITE%/g, '<img class="icon-elite" alt="Elite" src="images/transparent.png" />').replace(/%EVADE%/g, '<img class="icon-evade" alt="Evade" src="images/transparent.png" />').replace(/%FOCUS%/g, '<img class="icon-focus" alt="Focus" src="images/transparent.png" />').replace(/%HIT%/g, '<img class="icon-hit" alt="Hit" src="images/transparent.png" />').replace(/%KTURN%/g, '<img class="icon-uturn" alt="Koiogran Turn" src="images/transparent.png" />').replace(/%STRAIGHT%/g, '<img class="icon-straight" alt="Straight" src="images/transparent.png" />').replace(/%TARGETLOCK%/g, '<img class="icon-target-lock" alt="Target Lock" src="images/transparent.png" />').replace(/%TEAM%/g, '<img class="icon-team" alt="Team" src="images/transparent.png" />').replace(/%TORPEDO%/g, '<img class="icon-torpedo" alt="Torpedo" src="images/transparent.png" />').replace(/%TURNLEFT%/g, '<img class="icon-turnleft" alt="Turn Left" src="images/transparent.png" />').replace(/%TURNRIGHT%/g, '<img class="icon-turnright" alt="Turn Right" src="images/transparent.png" />').replace(/%UTURN%/g, '<img class="icon-uturn" alt="Koiogran Turn" src="images/transparent.png" />');
    }
  };

  exportObj.renameShip = function(english_name, new_name) {
    exportObj.ships[new_name] = exportObj.ships[english_name];
    exportObj.ships[new_name].name = new_name;
    return delete exportObj.ships[english_name];
  };

}).call(this);

//@ sourceMappingURL=cards-common.map