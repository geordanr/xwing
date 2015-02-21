(function() {
  var exportObj,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.manifestByExpansion = {
    'Core': [
      {
        name: 'X-Wing',
        type: 'ship',
        count: 1
      }, {
        name: 'TIE Fighter',
        type: 'ship',
        count: 2
      }, {
        name: 'Luke Skywalker',
        type: 'pilot',
        count: 1
      }, {
        name: 'Biggs Darklighter',
        type: 'pilot',
        count: 1
      }, {
        name: 'Red Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Rookie Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: '"Mauler Mithel"',
        type: 'pilot',
        count: 1
      }, {
        name: '"Dark Curse"',
        type: 'pilot',
        count: 1
      }, {
        name: '"Night Beast"',
        type: 'pilot',
        count: 1
      }, {
        name: 'Black Squadron Pilot',
        type: 'pilot',
        count: 2
      }, {
        name: 'Obsidian Squadron Pilot',
        type: 'pilot',
        count: 2
      }, {
        name: 'Academy Pilot',
        type: 'pilot',
        count: 2
      }, {
        name: 'Proton Torpedoes',
        type: 'upgrade',
        count: 1
      }, {
        name: 'R2-F2',
        type: 'upgrade',
        count: 1
      }, {
        name: 'R2-D2',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Determination',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Marksmanship',
        type: 'upgrade',
        count: 1
      }
    ],
    'X-Wing Expansion Pack': [
      {
        name: 'X-Wing',
        type: 'ship',
        count: 1
      }, {
        name: 'Wedge Antilles',
        type: 'pilot',
        count: 1
      }, {
        name: 'Garven Dreis',
        type: 'pilot',
        count: 1
      }, {
        name: 'Red Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Rookie Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Proton Torpedoes',
        type: 'upgrade',
        count: 1
      }, {
        name: 'R5-K6',
        type: 'upgrade',
        count: 1
      }, {
        name: 'R5 Astromech',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Expert Handling',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Marksmanship',
        type: 'upgrade',
        count: 1
      }
    ],
    'Y-Wing Expansion Pack': [
      {
        name: 'Y-Wing',
        type: 'ship',
        count: 1
      }, {
        name: 'Horton Salm',
        type: 'pilot',
        count: 1
      }, {
        name: '"Dutch" Vander',
        type: 'pilot',
        count: 1
      }, {
        name: 'Gray Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Gold Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Proton Torpedoes',
        type: 'upgrade',
        count: 2
      }, {
        name: 'Ion Cannon Turret',
        type: 'upgrade',
        count: 1
      }, {
        name: 'R5-D8',
        type: 'upgrade',
        count: 1
      }, {
        name: 'R2 Astromech',
        type: 'upgrade',
        count: 1
      }
    ],
    'TIE Fighter Expansion Pack': [
      {
        name: 'TIE Fighter',
        type: 'ship',
        count: 1
      }, {
        name: '"Howlrunner"',
        type: 'pilot',
        count: 1
      }, {
        name: '"Backstabber"',
        type: 'pilot',
        count: 1
      }, {
        name: '"Winged Gundark"',
        type: 'pilot',
        count: 1
      }, {
        name: 'Black Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Obsidian Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Academy Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Determination',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Swarm Tactics',
        type: 'upgrade',
        count: 1
      }
    ],
    'TIE Advanced Expansion Pack': [
      {
        name: 'TIE Advanced',
        type: 'ship',
        count: 1
      }, {
        name: 'Darth Vader',
        type: 'pilot',
        count: 1
      }, {
        name: 'Maarek Stele',
        type: 'pilot',
        count: 1
      }, {
        name: 'Storm Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Tempest Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Concussion Missiles',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Cluster Missiles',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Squad Leader',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Swarm Tactics',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Expert Handling',
        type: 'upgrade',
        count: 1
      }
    ],
    'A-Wing Expansion Pack': [
      {
        name: 'A-Wing',
        type: 'ship',
        count: 1
      }, {
        name: 'Tycho Celchu',
        type: 'pilot',
        count: 1
      }, {
        name: 'Arvel Crynyd',
        type: 'pilot',
        count: 1
      }, {
        name: 'Green Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Prototype Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Concussion Missiles',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Homing Missiles',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Cluster Missiles',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Push the Limit',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Deadeye',
        type: 'upgrade',
        count: 1
      }
    ],
    'Millennium Falcon Expansion Pack': [
      {
        name: 'YT-1300',
        type: 'ship',
        count: 1
      }, {
        name: 'Han Solo',
        type: 'pilot',
        count: 1
      }, {
        name: 'Lando Calrissian',
        type: 'pilot',
        count: 1
      }, {
        name: 'Chewbacca',
        type: 'pilot',
        count: 1
      }, {
        name: 'Outer Rim Smuggler',
        type: 'pilot',
        count: 1
      }, {
        name: 'Concussion Missiles',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Assault Missiles',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Elusiveness',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Draw Their Fire',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Veteran Instincts',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Luke Skywalker',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Nien Nunb',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Chewbacca',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Weapons Engineer',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Shield Upgrade',
        type: 'modification',
        count: 2
      }, {
        name: 'Engine Upgrade',
        type: 'modification',
        count: 2
      }, {
        name: 'Millennium Falcon',
        type: 'title',
        count: 1
      }
    ],
    'TIE Interceptor Expansion Pack': [
      {
        name: 'TIE Interceptor',
        type: 'ship',
        count: 1
      }, {
        name: 'Soontir Fel',
        type: 'pilot',
        count: 1
      }, {
        name: 'Turr Phennir',
        type: 'pilot',
        count: 1
      }, {
        name: '"Fel\'s Wrath"',
        type: 'pilot',
        count: 1
      }, {
        name: 'Saber Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Avenger Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Alpha Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Daredevil',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Elusiveness',
        type: 'upgrade',
        count: 1
      }
    ],
    'Slave I Expansion Pack': [
      {
        name: 'Firespray-31',
        type: 'ship',
        count: 1
      }, {
        name: 'Boba Fett',
        type: 'pilot',
        count: 1
      }, {
        name: 'Kath Scarlet',
        type: 'pilot',
        count: 1
      }, {
        name: 'Krassis Trelix',
        type: 'pilot',
        count: 1
      }, {
        name: 'Bounty Hunter',
        type: 'pilot',
        count: 1
      }, {
        name: 'Homing Missiles',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Assault Missiles',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Ion Cannon',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Heavy Laser Cannon',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Veteran Instincts',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Expose',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Seismic Charges',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Proximity Mines',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Gunner',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Mercenary Copilot',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Stealth Device',
        type: 'modification',
        count: 2
      }, {
        name: 'Slave I',
        type: 'title',
        count: 1
      }
    ],
    'B-Wing Expansion Pack': [
      {
        name: 'B-Wing',
        type: 'ship',
        count: 1
      }, {
        name: 'Ten Numb',
        type: 'pilot',
        count: 1
      }, {
        name: 'Ibtisam',
        type: 'pilot',
        count: 1
      }, {
        name: 'Dagger Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Blue Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Fire-Control System',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Advanced Proton Torpedoes',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Proton Torpedoes',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Ion Cannon',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Autoblaster',
        type: 'upgrade',
        count: 1
      }
    ],
    "HWK-290 Expansion Pack": [
      {
        name: 'HWK-290',
        type: 'ship',
        count: 1
      }, {
        name: 'Jan Ors',
        type: 'pilot',
        count: 1
      }, {
        name: 'Kyle Katarn',
        type: 'pilot',
        count: 1
      }, {
        name: 'Roark Garnet',
        type: 'pilot',
        count: 1
      }, {
        name: 'Rebel Operative',
        type: 'pilot',
        count: 1
      }, {
        name: 'Ion Cannon Turret',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Recon Specialist',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Moldy Crow',
        type: 'title',
        count: 1
      }, {
        name: 'Blaster Turret',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Saboteur',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Intelligence Agent',
        type: 'upgrade',
        count: 1
      }
    ],
    "TIE Bomber Expansion Pack": [
      {
        name: 'TIE Bomber',
        type: 'ship',
        count: 1
      }, {
        name: 'Major Rhymer',
        type: 'pilot',
        count: 1
      }, {
        name: 'Captain Jonus',
        type: 'pilot',
        count: 1
      }, {
        name: 'Gamma Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Scimitar Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Proton Bombs',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Assault Missiles',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Advanced Proton Torpedoes',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Seismic Charges',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Adrenaline Rush',
        type: 'upgrade',
        count: 1
      }
    ],
    "Lambda-Class Shuttle Expansion Pack": [
      {
        name: 'Lambda-Class Shuttle',
        type: 'ship',
        count: 1
      }, {
        name: 'Captain Kagi',
        type: 'pilot',
        count: 1
      }, {
        name: 'Colonel Jendon',
        type: 'pilot',
        count: 1
      }, {
        name: 'Captain Yorr',
        type: 'pilot',
        count: 1
      }, {
        name: 'Omicron Group Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Sensor Jammer',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Rebel Captive',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Advanced Sensors',
        type: 'upgrade',
        count: 1
      }, {
        name: 'ST-321',
        type: 'title',
        count: 1
      }, {
        name: 'Heavy Laser Cannon',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Weapons Engineer',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Darth Vader',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Intelligence Agent',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Navigator',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Flight Instructor',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Anti-Pursuit Lasers',
        type: 'modification',
        count: 2
      }
    ],
    "Z-95 Headhunter Expansion Pack": [
      {
        name: 'Z-95 Headhunter',
        type: 'ship',
        count: 1
      }, {
        name: 'Airen Cracken',
        type: 'pilot',
        count: 1
      }, {
        name: 'Lieutenant Blount',
        type: 'pilot',
        count: 1
      }, {
        name: 'Tala Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Bandit Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Munitions Failsafe',
        type: 'modification',
        count: 1
      }, {
        name: 'Decoy',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Wingman',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Ion Pulse Missiles',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Assault Missiles',
        type: 'upgrade',
        count: 1
      }
    ],
    'E-Wing Expansion Pack': [
      {
        name: 'E-Wing',
        type: 'ship',
        count: 1
      }, {
        name: 'Corran Horn',
        type: 'pilot',
        count: 1
      }, {
        name: "Etahn A'baht",
        type: 'pilot',
        count: 1
      }, {
        name: 'Blackmoon Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Knave Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Advanced Sensors',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Outmaneuver',
        type: 'upgrade',
        count: 1
      }, {
        name: 'R7-T1',
        type: 'upgrade',
        count: 1
      }, {
        name: 'R7 Astromech',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Flechette Torpedoes',
        type: 'upgrade',
        count: 1
      }
    ],
    'TIE Defender Expansion Pack': [
      {
        name: 'TIE Defender',
        type: 'ship',
        count: 1
      }, {
        name: 'Rexler Brath',
        type: 'pilot',
        count: 1
      }, {
        name: 'Colonel Vessery',
        type: 'pilot',
        count: 1
      }, {
        name: 'Onyx Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Delta Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Munitions Failsafe',
        type: 'modification',
        count: 1
      }, {
        name: 'Predator',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Outmaneuver',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Ion Cannon',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Ion Pulse Missiles',
        type: 'upgrade',
        count: 1
      }
    ],
    'TIE Phantom Expansion Pack': [
      {
        name: 'TIE Phantom',
        type: 'ship',
        count: 1
      }, {
        name: '"Whisper"',
        type: 'pilot',
        count: 1
      }, {
        name: '"Echo"',
        type: 'pilot',
        count: 1
      }, {
        name: 'Shadow Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Sigma Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Fire-Control System',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Tactician',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Recon Specialist',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Advanced Cloaking Device',
        type: 'modification',
        count: 1
      }, {
        name: 'Stygium Particle Accelerator',
        type: 'modification',
        count: 1
      }
    ],
    'YT-2400 Freighter Expansion Pack': [
      {
        name: 'YT-2400',
        type: 'ship',
        count: 1
      }, {
        name: 'Dash Rendar',
        type: 'pilot',
        count: 1
      }, {
        name: 'Eaden Vrill',
        type: 'pilot',
        count: 1
      }, {
        name: '"Leebo"',
        type: 'pilot',
        count: 1
      }, {
        name: 'Wild Space Fringer',
        type: 'pilot',
        count: 1
      }, {
        name: 'Experimental Interface',
        type: 'modification',
        count: 1
      }, {
        name: 'Countermeasures',
        type: 'modification',
        count: 2
      }, {
        name: 'Outrider',
        type: 'title',
        count: 1
      }, {
        name: 'Lone Wolf',
        type: 'upgrade',
        count: 1
      }, {
        name: '"Leebo"',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Lando Calrissian',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Stay On Target',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Dash Rendar',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Gunner',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Mercenary Copilot',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Proton Rockets',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Heavy Laser Cannon',
        type: 'upgrade',
        count: 1
      }
    ],
    "VT-49 Decimator Expansion Pack": [
      {
        name: 'VT-49 Decimator',
        type: 'ship',
        count: 1
      }, {
        name: 'Captain Oicunn',
        type: 'pilot',
        count: 1
      }, {
        name: 'Rear Admiral Chiraneau',
        type: 'pilot',
        count: 1
      }, {
        name: 'Commander Kenkirk',
        type: 'pilot',
        count: 1
      }, {
        name: 'Patrol Leader',
        type: 'pilot',
        count: 1
      }, {
        name: 'Ruthlessness',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Dauntless',
        type: 'title',
        count: 1
      }, {
        name: 'Ysanne Isard',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Moff Jerjerrod',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Intimidation',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Tactical Jammer',
        type: 'modification',
        count: 2
      }, {
        name: 'Proton Bombs',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Mara Jade',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Fleet Officer',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Ion Torpedoes',
        type: 'upgrade',
        count: 2
      }
    ],
    'Imperial Aces Expansion Pack': [
      {
        name: 'TIE Interceptor',
        type: 'ship',
        count: 2
      }, {
        name: 'Carnor Jax',
        type: 'pilot',
        count: 1
      }, {
        name: 'Kir Kanos',
        type: 'pilot',
        count: 1
      }, {
        name: 'Royal Guard Pilot',
        type: 'pilot',
        count: 2
      }, {
        name: 'Tetran Cowall',
        type: 'pilot',
        count: 1
      }, {
        name: 'Lieutenant Lorrir',
        type: 'pilot',
        count: 1
      }, {
        name: 'Saber Squadron Pilot',
        type: 'pilot',
        count: 2
      }, {
        name: 'Royal Guard TIE',
        type: 'title',
        count: 2
      }, {
        name: 'Targeting Computer',
        type: 'modification',
        count: 2
      }, {
        name: 'Hull Upgrade',
        type: 'modification',
        count: 2
      }, {
        name: 'Push the Limit',
        type: 'upgrade',
        count: 2
      }, {
        name: 'Opportunist',
        type: 'upgrade',
        count: 2
      }, {
        name: 'Shield Upgrade',
        type: 'modification',
        count: 2
      }
    ],
    'Rebel Aces Expansion Pack': [
      {
        name: 'A-Wing',
        type: 'ship',
        count: 1
      }, {
        name: 'B-Wing',
        type: 'ship',
        count: 1
      }, {
        name: 'Jake Farrell',
        type: 'pilot',
        count: 1
      }, {
        name: 'Gemmer Sojan',
        type: 'pilot',
        count: 1
      }, {
        name: 'Green Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Prototype Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Keyan Farlander',
        type: 'pilot',
        count: 1
      }, {
        name: 'Nera Dantels',
        type: 'pilot',
        count: 1
      }, {
        name: 'Dagger Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Blue Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Chardaan Refit',
        type: 'upgrade',
        count: 3
      }, {
        name: 'A-Wing Test Pilot',
        type: 'title',
        count: 2
      }, {
        name: 'Enhanced Scopes',
        type: 'upgrade',
        count: 2
      }, {
        name: 'Proton Rockets',
        type: 'upgrade',
        count: 2
      }, {
        name: 'B-Wing/E2',
        type: 'modification',
        count: 2
      }, {
        name: 'Kyle Katarn',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Jan Ors',
        type: 'upgrade',
        count: 1
      }
    ],
    'Rebel Transport Expansion Pack': [
      {
        name: 'X-Wing',
        type: 'ship',
        count: 1
      }, {
        name: 'GR-75 Medium Transport',
        type: 'ship',
        count: 1
      }, {
        name: 'GR-75 Medium Transport',
        type: 'pilot',
        count: 1
      }, {
        name: 'Wes Janson',
        type: 'pilot',
        count: 1
      }, {
        name: 'Jek Porkins',
        type: 'pilot',
        count: 1
      }, {
        name: '"Hobbie" Klivian',
        type: 'pilot',
        count: 1
      }, {
        name: 'Tarn Mison',
        type: 'pilot',
        count: 1
      }, {
        name: 'Red Squadron Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Rookie Pilot',
        type: 'pilot',
        count: 1
      }, {
        name: 'Dutyfree',
        type: 'title',
        count: 1
      }, {
        name: 'Quantum Storm',
        type: 'title',
        count: 1
      }, {
        name: 'Bright Hope',
        type: 'title',
        count: 1
      }, {
        name: 'Expanded Cargo Hold',
        type: 'upgrade',
        count: 1
      }, {
        name: 'R2-D6',
        type: 'upgrade',
        count: 1
      }, {
        name: 'R4-D6',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Flechette Torpedoes',
        type: 'upgrade',
        count: 3
      }, {
        name: 'R3-A2',
        type: 'upgrade',
        count: 1
      }, {
        name: 'WED-15 Repair Droid',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Backup Shield Generator',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Carlist Rieekan',
        type: 'upgrade',
        count: 1
      }, {
        name: 'EM Emitter',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Engine Booster',
        type: 'upgrade',
        count: 1
      }, {
        name: 'R5-P9',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Comms Booster',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Frequency Jammer',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Shield Projector',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Tibanna Gas Supplies',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Jan Dodonna',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Toryn Farr',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Slicer Tools',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Combat Retrofit',
        type: 'modification',
        count: 1
      }
    ],
    'Tantive IV Expansion Pack': [
      {
        name: 'CR90 Corvette (Fore)',
        type: 'ship',
        count: 1
      }, {
        name: 'CR90 Corvette (Aft)',
        type: 'ship',
        count: 1
      }, {
        name: 'CR90 Corvette (Fore)',
        type: 'pilot',
        count: 1
      }, {
        name: 'CR90 Corvette (Aft)',
        type: 'pilot',
        count: 1
      }, {
        name: "Jaina's Light",
        type: 'title',
        count: 1
      }, {
        name: "Dodonna's Pride",
        type: 'title',
        count: 1
      }, {
        name: 'Tantive IV',
        type: 'title',
        count: 1
      }, {
        name: 'Backup Shield Generator',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Han Solo',
        type: 'upgrade',
        count: 1
      }, {
        name: 'C-3PO',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Engine Booster',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Comms Booster',
        type: 'upgrade',
        count: 2
      }, {
        name: 'Engineering Team',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Gunnery Team',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Ionization Reactor',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Leia Organa',
        type: 'upgrade',
        count: 1
      }, {
        name: 'R2-D2 (Crew)',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Sensor Team',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Targeting Coordinator',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Tibanna Gas Supplies',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Raymus Antilles',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Quad Laser Cannons',
        type: 'upgrade',
        count: 3
      }, {
        name: 'Single Turbolasers',
        type: 'upgrade',
        count: 3
      }
    ],
    'StarViper Expansion Pack': [
      {
        name: 'StarViper',
        type: 'ship',
        count: 1
      }, {
        name: 'Prince Xizor',
        type: 'pilot',
        count: 1
      }, {
        name: 'Guri',
        type: 'pilot',
        count: 1
      }, {
        name: 'Black Sun Vigo',
        type: 'pilot',
        count: 1
      }, {
        name: 'Black Sun Enforcer',
        type: 'pilot',
        count: 1
      }, {
        name: 'Virago',
        type: 'title',
        count: 1
      }, {
        name: 'Bodyguard',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Accuracy Corrector',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Inertial Dampeners',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Autothrusters',
        type: 'modification',
        count: 2
      }, {
        name: 'Calculation',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Ion Torpedoes',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Hull Upgrade',
        type: 'modification',
        count: 1
      }
    ],
    "M3-A Interceptor Expansion Pack": [
      {
        name: 'M3-A Interceptor',
        type: 'ship',
        count: 1
      }, {
        name: 'Serissu',
        type: 'pilot',
        count: 1
      }, {
        name: "Laetin A'shera",
        type: 'pilot',
        count: 1
      }, {
        name: "Tansarii Point Veteran",
        type: 'pilot',
        count: 1
      }, {
        name: "Cartel Spacer",
        type: 'pilot',
        count: 1
      }, {
        name: '"Heavy Scyk" Interceptor',
        type: 'title',
        count: 1,
        skipForSource: true
      }, {
        name: '"Heavy Scyk" Interceptor (Cannon)',
        type: 'title',
        count: 0
      }, {
        name: '"Heavy Scyk" Interceptor (Missile)',
        type: 'title',
        count: 0
      }, {
        name: '"Heavy Scyk" Interceptor (Torpedo)',
        type: 'title',
        count: 0
      }, {
        name: 'Flechette Cannon',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Ion Cannon',
        type: 'upgrade',
        count: 1
      }, {
        name: '"Mangler" Cannon',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Stealth Device',
        type: 'modification',
        count: 1
      }
    ],
    "IG-2000 Expansion Pack": [
      {
        name: 'Aggressor',
        type: 'ship',
        count: 1
      }, {
        name: 'IG-88A',
        type: 'pilot',
        count: 1
      }, {
        name: 'IG-88B',
        type: 'pilot',
        count: 1
      }, {
        name: 'IG-88C',
        type: 'pilot',
        count: 1
      }, {
        name: 'IG-88D',
        type: 'pilot',
        count: 1
      }, {
        name: 'IG-2000',
        type: 'title',
        count: 1
      }, {
        name: 'Accuracy Corrector',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Autoblaster',
        type: 'upgrade',
        count: 1
      }, {
        name: '"Mangler" Cannon',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Proximity Mines',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Seismic Charges',
        type: 'upgrade',
        count: 1
      }, {
        name: "Dead Man's Switch",
        type: 'upgrade',
        count: 2
      }, {
        name: 'Feedback Array',
        type: 'upgrade',
        count: 2
      }, {
        name: '"Hot Shot" Blaster',
        type: 'upgrade',
        count: 1
      }, {
        name: 'Inertial Dampeners',
        type: 'upgrade',
        count: 1
      }
    ],
    "Most Wanted Expansion Pack": [
      {
        name: 'Z-95 Headhunter',
        type: 'ship',
        count: 2
      }, {
        name: 'Y-Wing',
        type: 'ship',
        count: 1
      }, {
        name: "N'Dru Suhlak",
        type: 'pilot',
        count: 1
      }, {
        name: "Kaa'To Leeachos",
        type: 'pilot',
        count: 1
      }, {
        name: "Black Sun Soldier",
        type: 'pilot',
        count: 2
      }, {
        name: "Binayre Pirate",
        type: 'pilot',
        count: 2
      }, {
        name: "Kavil",
        type: 'pilot',
        count: 1
      }, {
        name: "Drea Renthal",
        type: 'pilot',
        count: 1
      }, {
        name: "Hired Gun",
        type: 'pilot',
        count: 2
      }, {
        name: "Syndicate Thug",
        type: 'pilot',
        count: 2
      }, {
        name: "Boba Fett (Scum)",
        type: 'pilot',
        count: 1
      }, {
        name: "Kath Scarlet (Scum)",
        type: 'pilot',
        count: 1
      }, {
        name: "Emon Azzameen",
        type: 'pilot',
        count: 1
      }, {
        name: "Mandalorian Mercenary",
        type: 'pilot',
        count: 1
      }, {
        name: "Dace Bonearm",
        type: 'pilot',
        count: 1
      }, {
        name: "Palob Godalhi",
        type: 'pilot',
        count: 1
      }, {
        name: "Torkil Mux",
        type: 'pilot',
        count: 1
      }, {
        name: "Spice Runner",
        type: 'pilot',
        count: 1
      }, {
        name: "Greedo",
        type: 'upgrade',
        count: 1
      }, {
        name: "K4 Security Droid",
        type: 'upgrade',
        count: 1
      }, {
        name: "Outlaw Tech",
        type: 'upgrade',
        count: 1
      }, {
        name: "Autoblaster Turret",
        type: 'upgrade',
        count: 2
      }, {
        name: "Bomb Loadout",
        type: 'upgrade',
        count: 2
      }, {
        name: "R4-B11",
        type: 'upgrade',
        count: 1
      }, {
        name: '"Genius"',
        type: 'upgrade',
        count: 1
      }, {
        name: "R4 Agromech",
        type: 'upgrade',
        count: 1
      }, {
        name: "Salvaged Astromech",
        type: 'upgrade',
        count: 2
      }, {
        name: "Unhinged Astromech",
        type: 'upgrade',
        count: 2
      }, {
        name: "BTL-A4 Y-Wing",
        type: 'title',
        count: 2
      }, {
        name: "Andrasta",
        type: 'title',
        count: 1
      }, {
        name: '"Hot Shot" Blaster',
        type: 'upgrade',
        count: 1
      }
    ]
  };

  exportObj.Collection = (function() {
    function Collection(args) {
      this.onLanguageChange = __bind(this.onLanguageChange, this);
      this.expansions = args.expansions;
      this.backend = args.backend;
      this.reset();
      this.setupUI();
      this.setupHandlers();
      this.language = 'English';
    }

    Collection.prototype.reset = function() {
      var card, count, expansion, _, _ref, _results;
      this.shelf = {};
      this.table = {};
      _ref = this.expansions;
      _results = [];
      for (expansion in _ref) {
        count = _ref[expansion];
        try {
          count = parseInt(count);
        } catch (_error) {
          count = 0;
        }
        _results.push((function() {
          var _i, _results1;
          _results1 = [];
          for (_ = _i = 0; 0 <= count ? _i < count : _i > count; _ = 0 <= count ? ++_i : --_i) {
            _results1.push((function() {
              var _j, _len, _ref1, _ref2, _results2;
              _ref2 = (_ref1 = exportObj.manifestByExpansion[expansion]) != null ? _ref1 : [];
              _results2 = [];
              for (_j = 0, _len = _ref2.length; _j < _len; _j++) {
                card = _ref2[_j];
                _results2.push((function() {
                  var _base, _base1, _k, _name, _name1, _ref3, _results3;
                  _results3 = [];
                  for (_ = _k = 0, _ref3 = card.count; 0 <= _ref3 ? _k < _ref3 : _k > _ref3; _ = 0 <= _ref3 ? ++_k : --_k) {
                    _results3.push(((_base = ((_base1 = this.shelf)[_name1 = card.type] != null ? _base1[_name1] : _base1[_name1] = {}))[_name = card.name] != null ? _base[_name] : _base[_name] = []).push(expansion));
                  }
                  return _results3;
                }).call(this));
              }
              return _results2;
            }).call(this));
          }
          return _results1;
        }).call(this));
      }
      return _results;
    };

    Collection.prototype.fixName = function(name) {
      if (name.indexOf('"Heavy Scyk" Interceptor') === 0) {
        return '"Heavy Scyk" Interceptor';
      } else {
        return name;
      }
    };

    Collection.prototype.check = function(where, type, name) {
      var _ref, _ref1, _ref2;
      return ((_ref = ((_ref1 = ((_ref2 = where[type]) != null ? _ref2 : {})[this.fixName(name)]) != null ? _ref1 : []).length) != null ? _ref : 0) !== 0;
    };

    Collection.prototype.checkShelf = function(type, name) {
      return this.check(this.shelf, type, name);
    };

    Collection.prototype.checkTable = function(type, name) {
      return this.check(this.table, type, name);
    };

    Collection.prototype.use = function(type, name) {
      var card, e, _base, _base1;
      name = this.fixName(name);
      try {
        card = this.shelf[type][name].pop();
      } catch (_error) {
        e = _error;
        if (card == null) {
          return false;
        }
      }
      if (card != null) {
        ((_base = ((_base1 = this.table)[type] != null ? _base1[type] : _base1[type] = {}))[name] != null ? _base[name] : _base[name] = []).push(card);
        return true;
      } else {
        return false;
      }
    };

    Collection.prototype.release = function(type, name) {
      var card, e, _base, _base1;
      name = this.fixName(name);
      try {
        card = this.table[type][name].pop();
      } catch (_error) {
        e = _error;
        if (card == null) {
          return false;
        }
      }
      if (card != null) {
        ((_base = ((_base1 = this.shelf)[type] != null ? _base1[type] : _base1[type] = {}))[name] != null ? _base[name] : _base[name] = []).push(card);
        return true;
      } else {
        return false;
      }
    };

    Collection.prototype.save = function(cb) {
      if (cb == null) {
        cb = $.noop;
      }
      if (this.backend != null) {
        return this.backend.saveCollection(this, cb);
      }
    };

    Collection.load = function(backend, cb) {
      return backend.loadCollection(cb);
    };

    Collection.prototype.setupUI = function() {
      var count, expansion, input, modal_body, row, _i, _len, _ref, _ref1, _results;
      this.modal = $(document.createElement('DIV'));
      this.modal.addClass('modal hide fade collection-modal hidden-print');
      $('body').append(this.modal);
      this.modal.append($.trim("<div class=\"modal-header\">\n    <button type=\"button\" class=\"close hidden-print\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n    <h3>Expansions You Own</h3>\n</div>\n<div class=\"modal-body\">\n    <div class=\"container-fluid collection-content\">\n    </div>\n</div>\n<div class=\"modal-footer hidden-print\">\n    <span class=\"collection-status\"></span>\n    &nbsp;\n    <button class=\"btn\" data-dismiss=\"modal\" aria-hidden=\"true\">Close</button>\n</div>"));
      this.modal_status = $(this.modal.find('.collection-status'));
      modal_body = $(this.modal.find('.collection-content'));
      _ref = exportObj.expansions;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        expansion = _ref[_i];
        count = parseInt((_ref1 = this.expansions[expansion]) != null ? _ref1 : 0);
        row = $.parseHTML($.trim("<div class=\"row-fluid\">\n    <div class=\"span12\">\n        <label>\n            <input type=\"number\" size=\"3\" value=\"" + count + "\" />\n            <span class=\"expansion-name\">" + expansion + "</span>\n        </label>\n    </div>\n</div>"));
        input = $($(row).find('input'));
        input.data('expansion', expansion);
        input.closest('div').css('background-color', this.countToBackgroundColor(input.val()));
        $(row).find('.expansion-name').data('english_name', expansion);
        _results.push(modal_body.append(row));
      }
      return _results;
    };

    Collection.prototype.destroyUI = function() {
      this.modal.modal('hide');
      this.modal.remove();
      return $(exportObj).trigger('xwing-collection:destroyed', this);
    };

    Collection.prototype.setupHandlers = function() {
      $(exportObj).trigger('xwing-collection:created', this);
      $(exportObj).on('xwing-backend:authenticationChanged', (function(_this) {
        return function(e, authenticated, backend) {
          if (!authenticated) {
            return _this.destroyUI();
          }
        };
      })(this)).on('xwing-collection:saved', (function(_this) {
        return function(e, collection) {
          _this.modal_status.text('Collection saved');
          return _this.modal_status.fadeIn(100, function() {
            return _this.modal_status.fadeOut(5000);
          });
        };
      })(this)).on('xwing:languageChanged', this.onLanguageChange);
      return $(this.modal.find('input').change((function(_this) {
        return function(e) {
          var target, val;
          target = $(e.target);
          val = target.val();
          if (val < 0 || isNaN(parseInt(val))) {
            target.val(0);
          }
          _this.expansions[target.data('expansion')] = parseInt(target.val());
          target.closest('div').css('background-color', _this.countToBackgroundColor(val));
          return $(exportObj).trigger('xwing-collection:changed', _this);
        };
      })(this)));
    };

    Collection.prototype.countToBackgroundColor = function(count) {
      var i;
      count = parseInt(count);
      switch (false) {
        case count !== 0:
          return '';
        case !(count < 12):
          i = parseInt(200 * Math.pow(0.9, count - 1));
          return "rgb(" + i + ", 255, " + i + ")";
        default:
          return 'red';
      }
    };

    Collection.prototype.onLanguageChange = function(e, language) {
      if (language !== this.language) {
        (function(_this) {
          return (function(language) {
            return _this.modal.find('.expansion-name').each(function() {
              return $(this).text(exportObj.translate(language, 'sources', $(this).data('english_name')));
            });
          });
        })(this)(language);
        return this.language = language;
      }
    };

    return Collection;

  })();

}).call(this);

//@ sourceMappingURL=manifest.map