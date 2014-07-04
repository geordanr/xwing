(function() {
  var exportObj;

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  if (exportObj.codeToLanguage == null) {
    exportObj.codeToLanguage = {};
  }

  exportObj.codeToLanguage.en = 'English';

  if (exportObj.translations == null) {
    exportObj.translations = {};
  }

  exportObj.translations.English = {
    action: {
      "Barrel Roll": "Barrel Roll",
      "Boost": "Boost",
      "Evade": "Evade",
      "Focus": "Focus",
      "Target Lock": "Target Lock",
      "Recover": "Recover",
      "Reinforce": "Reinforce",
      "Jam": "Jam",
      "Coordinate": "Coordinate",
      "Cloak": "Cloak"
    },
    slot: {
      "Astromech": "Astromech",
      "Bomb": "Bomb",
      "Cannon": "Cannon",
      "Crew": "Crew",
      "Elite": "Elite",
      "Missile": "Missile",
      "System": "System",
      "Torpedo": "Torpedo",
      "Turret": "Turret",
      "Cargo": "Cargo",
      "Hardpoint": "Hardpoint",
      "Team": "Team"
    },
    sources: {
      "Core": "Core",
      "A-Wing Expansion Pack": "A-Wing Expansion Pack",
      "B-Wing Expansion Pack": "B-Wing Expansion Pack",
      "X-Wing Expansion Pack": "X-Wing Expansion Pack",
      "Y-Wing Expansion Pack": "Y-Wing Expansion Pack",
      "Millennium Falcon Expansion Pack": "Millennium Falcon Expansion Pack",
      "HWK-290 Expansion Pack": "HWK-290 Expansion Pack",
      "TIE Fighter Expansion Pack": "TIE Fighter Expansion Pack",
      "TIE Interceptor Expansion Pack": "TIE Interceptor Expansion Pack",
      "TIE Bomber Expansion Pack": "TIE Bomber Expansion Pack",
      "TIE Advanced Expansion Pack": "TIE Advanced Expansion Pack",
      "Lambda-Class Shuttle Expansion Pack": "Lambda-Class Shuttle Expansion Pack",
      "Slave I Expansion Pack": "Slave I Expansion Pack",
      "Imperial Aces Expansion Pack": "Imperial Aces Expansion Pack",
      "Rebel Transport Expansion Pack": "Rebel Transport Expansion Pack",
      "Z-95 Headhunter Expansion Pack": "Z-95 Headhunter Expansion Pack",
      "TIE Defender Expansion Pack": "TIE Defender Expansion Pack",
      "E-Wing Expansion Pack": "E-Wing Expansion Pack",
      "TIE Phantom Expansion Pack": "TIE Phantom Expansion Pack",
      "Tantive IV Expansion Pack": "Tantive IV Expansion Pack",
      "Rebel Aces Expansion Pack": "Rebel Aces Expansion Pack",
      "YT-2400 Freighter Expansion Pack": "YT-2400 Freighter Expansion Pack",
      "VT-49 Decimator Expansion Pack": "VT-49 Decimator Expansion Pack"
    },
    ui: {
      shipSelectorPlaceholder: "Select a ship",
      pilotSelectorPlaceholder: "Select a pilot",
      upgradePlaceholder: function(translator, language, slot) {
        return "No " + (translator(language, 'slot', slot)) + " Upgrade";
      },
      modificationPlaceholder: "No Modification",
      titlePlaceholder: "No Title",
      upgradeHeader: function(translator, language, slot) {
        return "" + (translator(language, 'slot', slot)) + " Upgrade";
      },
      unreleased: "unreleased",
      epic: "epic"
    },
    byCSSSelector: {
      '.xwing-card-browser .translate.sort-cards-by': 'Sort cards by',
      '.xwing-card-browser option[value="name"]': 'Name',
      '.xwing-card-browser option[value="source"]': 'Source',
      '.xwing-card-browser option[value="type-by-points"]': 'Type (by Points)',
      '.xwing-card-browser option[value="type-by-name"]': 'Type (by Name)',
      '.xwing-card-browser .translate.select-a-card': 'Select a card from the list at the left.',
      '.info-well .info-ship td.info-header': 'Ship',
      '.info-well .info-skill td.info-header': 'Skill',
      '.info-well .info-actions td.info-header': 'Actions',
      '.info-well .info-upgrades td.info-header': 'Upgrades',
      '.info-well .info-range td.info-header': 'Range',
      '.clear-squad': 'New Squad',
      '.save-list': 'Save',
      '.save-list-as': 'Save as…',
      '.delete-list': 'Delete',
      '.backend-list-my-squads': 'Load squad',
      '.view-as-text': '<span class="hidden-phone"><i class="icon-print"></i>&nbsp;Print/View as </span>Text',
      '.randomize': 'Random!',
      '.randomize-options': 'Randomizer options…',
      '.bbcode-list': 'Copy the BBCode below and paste it into your forum post.<textarea></textarea>',
      '.vertical-space-checkbox': "<input type=\"checkbox\" class=\"toggle-vertical-space\" /> Add space for damage/upgrade cards when printingn",
      '.print-list': '<i class="icon-print"></i>&nbsp;Print',
      '.do-randomize': 'Randomize!',
      '#empireTab': 'Galactic Empire',
      '#rebelTab': 'Rebel Alliance',
      '#browserTab': 'Card Browser',
      '#aboutTab': 'About'
    },
    singular: {
      'pilots': 'Pilot',
      'modifications': 'Modification',
      'titles': 'Title'
    },
    types: {
      'Pilot': 'Pilot',
      'Modification': 'Modification',
      'Title': 'Title'
    }
  };

  if (exportObj.cardLoaders == null) {
    exportObj.cardLoaders = {};
  }

  exportObj.cardLoaders.English = function() {
    var basic_cards, modification_translations, pilot_translations, title_translations, upgrade_translations;
    exportObj.cardLanguage = 'English';
    basic_cards = exportObj.basicCardData();
    exportObj.ships = basic_cards.ships;
    pilot_translations = {
      "Wedge Antilles": {
        text: "When attacking, reduce the defender's agility value by 1 (to a minimum of \"0\")."
      },
      "Garven Dreis": {
        text: "After spending a focus token, you may place that token on any other friendly ship at Range 1-2 (instead of discarding it)."
      },
      "Biggs Darklighter": {
        text: "Other friendly ships at Range 1 cannot be targeted by attacks if the attacker could target you instead."
      },
      "Luke Skywalker": {
        text: "When defending, you may change 1 of your %FOCUS% results to a %EVADE% result."
      },
      '"Dutch" Vander': {
        text: "After acquiring a target lock, choose another friendly ship at Range 1-2.  The chosen ship may immediately acquire a target lock."
      },
      "Horton Salm": {
        text: "When attacking at Range 2-3, you may reroll any of your blank results."
      },
      '"Winged Gundark"': {
        text: "When attacking at Range 1, you may change 1 of your %HIT% results to a %CRIT% result."
      },
      '"Night Beast"': {
        text: "After executing a green maneuver, you may perform a free focus action."
      },
      '"Backstabber"': {
        text: "When attacking from outside the defender's firing arc, roll 1 additional attack die."
      },
      '"Dark Curse"': {
        text: "When defending, ships attacking you cannot spend focus tokens or reroll attack dice."
      },
      '"Mauler Mithel"': {
        text: "When attacking at Range 1, roll 1 additional attack die."
      },
      '"Howlrunner"': {
        text: "When another friendly ship at Range 1 is attacking with its primary weapon, it may reroll 1 attack die."
      },
      "Maarek Stele": {
        text: "When your attack deals a faceup Damage card to the defender, instead draw 3 Damage cards, choose 1 to deal, and discard the others."
      },
      "Darth Vader": {
        text: "During your \"Perform Action\" step, you may perform 2 actions."
      },
      "\"Fel's Wrath\"": {
        text: "When the number of Damage cards assigned to you equals or exceeds your hull value, you are not destroyed until the end of the Combat phase."
      },
      "Turr Phennir": {
        text: "After you perform an attack, you may perform a free boost or barrel roll action."
      },
      "Soontir Fel": {
        text: "When you receive a stress token, you may assign 1 focus token to your ship."
      },
      "Tycho Celchu": {
        text: "You may perform actions even while you have stress tokens."
      },
      "Arvel Crynyd": {
        text: "You may declare an enemy ship inside your firing arc that you are touching as the target of your attack."
      },
      "Chewbacca": {
        text: "When you are dealt a faceup Damage card, immediately flip it facedown (without resolving its ability)."
      },
      "Lando Calrissian": {
        text: "After you execute a green maneuver, choose 1 other friendly ship at Range 1.  That ship may perform 1 free action shown on its action bar."
      },
      "Han Solo": {
        text: "When attacking, you may reroll all of your dice.  If you choose to do so, you must reroll as many of your dice as possible."
      },
      "Kath Scarlet": {
        text: "When attacking, the defender receives 1 stress token if he cancels at least 1 %CRIT% result."
      },
      "Boba Fett": {
        text: "When you reveal a bank maneuver (%BANKLEFT% or %BANKRIGHT%), you may rotate your dial to the other bank maneuver of the same speed."
      },
      "Krassis Trelix": {
        text: "When attacking with a secondary weapon, you may reroll 1 attack die."
      },
      "Ten Numb": {
        text: "When attacking, 1 of your %CRIT% results cannot be canceled by defense dice."
      },
      "Ibtisam": {
        text: "When attacking or defending, if you have at least 1 stress token, you may reroll 1 of your dice."
      },
      "Roark Garnet": {
        text: 'At the start of the Combat phase, choose 1 other friendly ship at Range 1-3.  Until the end of the phase, treat that ship\'s pilot skill value as "12."'
      },
      "Kyle Katarn": {
        text: "At the start of the Combat phase, you may assign 1 of your focus tokens to another friendly ship at Range 1-3."
      },
      "Jan Ors": {
        text: "When another friendly ship at Range 1-3 is attacking, if you have no stress tokens, you may receive 1 stress token to allow that ship to roll 1 additional attack die."
      },
      "Captain Jonus": {
        text: "When another friendly ship at Range 1 attacks with a secondary weapon, it may reroll up to 2 attack dice."
      },
      "Major Rhymer": {
        text: "When attacking with a secondary weapon, you may increase or decrease the weapon range by 1 to a limit of Range 1-3."
      },
      "Captain Kagi": {
        text: "When an enemy ship acquires a target lock, it must lock onto your ship if able."
      },
      "Colonel Jendon": {
        text: "At the start of the Combat phase, you may assign 1 of your blue target lock tokens to a friendly ship at Range 1 if it does not have a blue target lock token."
      },
      "Captain Yorr": {
        text: "When another friendly ship at Range 1-2 would receive a stress token, if you have 2 or fewer stress tokens, you may receive that token instead."
      },
      "Lieutenant Lorrir": {
        text: "When performing a barrel roll action, you may receive 1 stress token to use the (%BANKLEFT% 1) or (%BANKRIGHT% 1) template instead of the (%STRAIGHT% 1) template."
      },
      "Tetran Cowall": {
        text: "When you reveal a %UTURN% maneuver, you may treat the speed of that maneuver as \"1,\" \"3,\" or \"5\"."
      },
      "Kir Kanos": {
        text: "When attacking at Range 2-3, you may spend 1 evade token to add 1 %HIT% result to your roll."
      },
      "Carnor Jax": {
        text: "Enemy ships at Range 1 cannot perform focus or evade actions and cannot spend focus or evade tokens."
      },
      "Lieutenant Blount": {
        text: "When attacking, the defender is hit by your attack, even if he does not suffer any damage."
      },
      "Airen Cracken": {
        text: "After you perform an attack, you may choose another friendly ship at Range 1.  That ship may perform 1 free action."
      },
      "Colonel Vessery": {
        text: "When attacking, immediately after you roll attack dice, you may acquire a target lock on the defender if it already has a red target lock token."
      },
      "Rexler Brath": {
        text: "After you perform an attack that deals at least 1 Damage card to the defender, you may spend a focus token to flip those cards faceup."
      },
      "Etahn A'baht": {
        text: "When an enemy ship inside your firing arc at Range 1-3 is defending, the attacker may change 1 of its %HIT% results to a %CRIT% result."
      },
      "Corran Horn": {
        text: "At the start of the End phase, you may perform one attack.  You cannot attack during the next round."
      },
      '"Echo"': {
        text: "When you decloak, you must use the (%BANKLEFT% 2) or (%BANKRIGHT% 2) template instead of the (%STRAIGHT% 2) template."
      },
      '"Whisper"': {
        text: "After you perform an attack that hits, you may assign 1 focus to your ship."
      },
      "Wes Janson": {
        text: "After you perform an attack, you may remove 1 focus, evade, or blue target lock token from the defender."
      },
      "Jek Porkins": {
        text: "When you receive a stress token, you may remove it and roll 1 attack die.  On a %HIT% result, deal 1 facedown Damage card to this ship."
      },
      '"Hobbie" Klivian': {
        text: "When you acquire or spend a target lock, you may remove 1 stress token from your ship."
      },
      "Tarn Mison": {
        text: "When an enemy ship declares you as the target of an attack, you may acquire a target lock on that ship."
      },
      "Jake Farrell": {
        text: "After you perform a focus action or are assigned a focus token, you may perform a free boost or barrel roll action."
      },
      "Gemmer Sojan": {
        text: "While you are at Range 1 of at least 1 enemy ship, increase your agility value by 1."
      },
      "Keyan Farlander": {
        text: "When attacking, you may remove 1 stress token to change all of your %FOCUS% results to %HIT%results."
      },
      "Unspoiled PS5 B-Wing Pilot": {
        text: "This card has not yet been revealed."
      },
      "CR90 Corvette (Fore)": {
        text: "When attacking with your primary weapon, you may spend 1 energy to roll 1 additional attack die."
      },
      "CR90 Corvette (Crippled Aft)": {
        text: "You cannot choose or execute (%STRAIGHT% 4), (%BANKLEFT% 2), or (%BANKRIGHT% 2) maneuvers."
      },
      "Dash Rendar": {
        text: "You may ignore obstacles during the Activation phase and when performing actions."
      },
      "Rear Admiral Chiraneau": {
        text: "When attacking at Range 1-2, you may change 1 of your %FOCUS% results to a %CRIT% result."
      }
    };
    upgrade_translations = {
      "Ion Cannon Turret": {
        text: "<strong>Attack:</strong> Attack 1 ship (even a ship outside your firing arc).<br /><br />If this attack hits the target ship, the ship suffers 1 damage and receives 1 ion token.  Then cancel all dice results."
      },
      "Proton Torpedoes": {
        text: "<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack.<br /><br />You may change 1 of your %FOCUS% results to a %CRIT% result."
      },
      "R2 Astromech": {
        text: "You may treat all 1- and 2-speed maneuvers as green maneuvers."
      },
      "R2-D2": {
        text: "After executing a green maneuver, you may recover 1 shield (up to your shield value)."
      },
      "R2-F2": {
        text: "<strong>Action:</strong> Increase your agility value by 1 until the end of this game round."
      },
      "R5-D8": {
        text: "<strong>Action:</strong> Roll 1 defense die.<br /><br />On a %EVADE% or %FOCUS% result, discard 1 of your facedown Damage cards."
      },
      "R5-K6": {
        text: "After spending your target lock, roll 1 defense die.<br /><br />On a %EVADE% result, immediately acquire a target lock on that same ship.  You cannot spend this target lock during this attack."
      },
      "R5 Astromech": {
        text: "During the End phase, you may choose 1 of your faceup Damage cards with the Ship trait and flip it facedown."
      },
      "Determination": {
        text: "When you are dealt a faceup Damage card with the Pilot trait, discard it immediately without resolving its effect."
      },
      "Swarm Tactics": {
        text: "At the start of the Combat phase, you may choose 1 friendly ship at Range 1.<br /><br />Until the end of this phase, treat the chosen ship as if its pilot skill were equal to your pilot skill."
      },
      "Squad Leader": {
        text: "<strong>Action:</strong> Choose 1 ship at Range 1-2 that has a lower pilot skill than you.<br /><br />The chosen ship may immediately perform 1 free action."
      },
      "Expert Handling": {
        text: "<strong>Action:</strong> Perform a free barrel roll action.  If you do not have the %BARRELROLL% action icon, receive 1 stress token.<br /><br />You may then remove 1 enemy target lock from your ship."
      },
      "Marksmanship": {
        text: "<strong>Action:</strong> When attacking this round, you may change 1 of your %FOCUS% results to a %CRIT% result and all of your other %FOCUS% results to %HIT% results."
      },
      "Concussion Missiles": {
        text: "<strong>Attack (target lock):</strong>  Spend your target lock and discard this card to perform this attack.<br /><br />You may change 1 of your blank results to a %HIT% result."
      },
      "Cluster Missiles": {
        text: "<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack twice."
      },
      "Daredevil": {
        text: "<strong>Action:</strong> Execute a white (%TURNLEFT% 1) or (%TURNRIGHT% 1) maneuver.  Then, receive 1 stress token.<br /><br />Then, if you do not have the %BOOST% action icon, roll 2 attack dice.  Suffer any damage (%HIT%) and any critical damage (%CRIT%) rolled."
      },
      "Elusiveness": {
        text: "When defending, you may receive 1 stress token to choose 1 attack die.  The attacker must reroll that die.<br /><br />If you have at least 1 stress token, you cannot use this ability."
      },
      "Homing Missiles": {
        text: "<strong>Attack (target lock):</strong> Discard this card to perform this attack.<br /><br />The defender cannot spend evade tokens during this attack."
      },
      "Push the Limit": {
        text: "Once per round, after you perform an action, you may perform 1 free action shown in your action bar.<br /><br />Then receive 1 stress token."
      },
      "Deadeye": {
        text: "You may treat the <strong>Attack (target lock):</strong> header as <strong>Attack (focus):</strong>.<br /><br />When an attack instructs you to spend a target lock, you may spend a focus token instead."
      },
      "Expose": {
        text: "<strong>Action:</strong> Until the end of the round, increase your primary weapon value by 1 and decrease your agility value by 1."
      },
      "Gunner": {
        text: "After you perform an attack that does not hit, you may immediately perform a primary weapon attack.  You cannot perform another attack this round."
      },
      "Ion Cannon": {
        text: "<strong>Attack:</strong> Attack 1 ship.<br /><br />If this attack hits, the defender suffers 1 damage and receives 1 ion token.  Then cancel all dice results."
      },
      "Heavy Laser Cannon": {
        text: "<strong>Attack:</strong> Attack 1 ship.<br /><br />Immediately after rolling your attack dice, you must change all of your %CRIT% results to %HIT% results."
      },
      "Seismic Charges": {
        text: "When you reveal your maneuver dial, you may discard this card to drop 1 seismic charge token.<br /><br />This token detonates at the end of the Activation phase.<br /><br /><strong>Seismic Charge Token:</strong> When this bomb token detonates, each ship at Range 1 of the token suffers 1 damage.  Then discard this token."
      },
      "Mercenary Copilot": {
        text: "When attacking at Range 3, you may change 1 of your %HIT% results to a %CRIT% result."
      },
      "Assault Missiles": {
        text: "<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack.<br /><br />If this attack hits, each other ship at Range 1 of the defender suffers 1 damage."
      },
      "Veteran Instincts": {
        text: "Increase your pilot skill value by 2."
      },
      "Proximity Mines": {
        text: "<strong>Action:</strong> Discard this card to <strong>drop</strong> 1 proximity mine token.<br /><br />When a ship's base or maneuver template overlaps this token, this token <strong>detonates</strong>.<br /><br /><strong>Proximity Mine Token:</strong> When this bomb token detonates, the ship that moved through or overlapped this token rolls 3 attack dice and suffers all damage (%HIT%) and critical damage (%CRIT%) rolled.  Then discard this token."
      },
      "Weapons Engineer": {
        text: "You may maintain 2 target locks (only 1 per enemy ship).<br /><br />When you acquire a target lock, you may lock onto 2 different ships."
      },
      "Draw Their Fire": {
        text: "When a friendly ship at Range 1 is hit by an attack, you may suffer 1 of the uncanceled %CRIT% results instead of the target ship."
      },
      "Luke Skywalker": {
        text: "After you perform an attack that does not hit, you may immediately perform a primary weapon attack.  You may change 1 %FOCUS% result to a %HIT% result.  You cannot perform another attack this round."
      },
      "Nien Nunb": {
        text: "You may treat all %STRAIGHT% maneuvers as green maneuvers."
      },
      "Chewbacca": {
        text: "When you are dealt a Damage card, you may immediately discard that card and recover 1 shield.<br /><br />Then, discard this Upgrade card."
      },
      "Advanced Proton Torpedoes": {
        text: "<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack.<br /><br />You may change up to 3 of your blank results to %FOCUS% results."
      },
      "Autoblaster": {
        text: "<strong>Attack:</strong> Attack 1 ship.<br /><br />Your %HIT% results cannot be canceled by defense dice.<br /><br />The defender may cancel %CRIT% results before %HIT% results."
      },
      "Fire-Control System": {
        text: "After you perform an attack, you may acquire a target lock on the defender."
      },
      "Blaster Turret": {
        text: "<strong>Attack (focus):</strong> Spend 1 focus token to perform this attack against 1 ship (even a ship outside your firing arc)."
      },
      "Recon Specialist": {
        text: "When you perform a focus action, assign 1 additional focus token to your ship."
      },
      "Saboteur": {
        text: "<strong>Action:</strong> Choose 1 enemy ship at Range 1 and roll 1 attack die.  On a %HIT% or %CRIT% result, choose 1 random facedown Damage card assigned to that ship, flip it faceup, and resolve it."
      },
      "Intelligence Agent": {
        text: "At the start of the Activation phase, choose 1 enemy ship at Range 1-2.  You may look at that ship's chosen maneuver."
      },
      "Proton Bomb": {
        text: "When you reveal your maneuver dial, you may discard this card to <strong>drop</strong> 1 proton bomb token.<br /><br />This token <strong>detonates</strong> at the end of the Activation phase.<br /><br /><strong>Proton Bomb Token:</strong> When this bomb token detonates, deal 1 <strong>faceup</strong> Damage card to each ship at Range 1 of the token.  Then discard this token."
      },
      "Adrenaline Rush": {
        text: "When you reveal a red maneuver, you may discard this card to treat that maneuver as a white maneuver until the end of the Activation phase."
      },
      "Advanced Sensors": {
        text: "Immediately before you reveal your maneuver, you may perform 1 free action.<br /><br />If you use this ability, you must skip your \"Perform Action\" step during this round."
      },
      "Sensor Jammer": {
        text: "When defending, you may change 1 of the attacker's %HIT% results into a %FOCUS% result.<br /><br />The attacker cannot reroll the die with the changed result."
      },
      "Darth Vader": {
        text: "After you perform an attack against an enemy ship, you may suffer 2 damage to cause that ship to suffer 1 critical damage."
      },
      "Rebel Captive": {
        text: "Once per round, the first ship that declares you as the target of an attack immediately receives 1 stress token."
      },
      "Flight Instructor": {
        text: "When defending, you may reroll 1 of your %FOCUS% results.  If the attacker's pilot skill value is \"2\" or lower, you may reroll 1 of your blank results instead."
      },
      "Navigator": {
        text: "When you reveal a maneuver, you may rotate your dial to another maneuver with the same bearing.<br /><br />You cannot rotate to a red maneuver if you have any stress tokens."
      },
      "Opportunist": {
        text: "When attacking, if the defender does not have any focus or evade tokens, you may receive 1 stress token to roll 1 additional attack die.<br /><br />You cannot use this ability if you have any stress tokens."
      },
      "Comms Booster": {
        text: "<strong>Energy:</strong> Spend 1 energy to remove all stress tokens from a friendly ship at Range 1-3.  Then assign 1 focus token to that ship."
      },
      "Slicer Tools": {
        text: "<strong>Action:</strong> Choose 1 or more ships at Range 1-3 that have a stress token.  For each ship chosen, you may spend 1 energy to cause that ship to suffer 1 damage."
      },
      "Shield Projector": {
        text: "When an enemy ship is declaring either a small or large ship as the target of its attack, you may spend 3 energy to force that ship to target you if possible."
      },
      "Ion Pulse Missiles": {
        text: "<strong>Attack (target lock):</strong> Discard this card to perform this attack.<br /><br />If this attack hits, the defender suffers 1 damage and receives 2 ion tokens.  Then cancel <strong>all<strong> dice results."
      },
      "Wingman": {
        text: "At the start of the Combat phase, remove 1 stress token from another friendly ship at Range 1."
      },
      "Decoy": {
        text: "At the start of the Combat phase, you may choose 1 friendly ship at Range 1-2.  Exchange your pilot skill with that ship's pilot skill until the end of the phase."
      },
      "Outmaneuver": {
        text: "When attacking a ship inside your firing arc, if you are not inside that ship's firing arc, reduce its agility value by 1 (to a minimum of 0)."
      },
      "Predator": {
        text: "When attacking, you may reroll 1 attack die.  If the defender's pilot skill value is \"2\" or lower, you may instead reroll up to 2 attack dice."
      },
      "Flechette Torpedoes": {
        text: "<strong>Attack (target lock):</strong> Discard this card and spend your target lock to perform this attack.<br /><br />After you perform this attack, the defender receives 1 stress token if its hull value is \"4\" or lower."
      },
      "R7 Astromech": {
        text: "Once per round when defending, if you have a target lock on the attacker, you may spend the target lock to choose any or all attack dice.  The attacker must reroll the chosen dice."
      },
      "R7-T1": {
        text: "<strong>Action:</strong> Choose an enemy ship at Range 1-2.  If you are inside that ship's firing arc, you may acquire a target lock on that ship.  Then, you may perform a free boost action."
      },
      "Tactician": {
        text: "After you perform an attack against a ship inside your firing arc at Range 2, that ship receives 1 stress token."
      },
      "R2-D2 (Crew)": {
        text: "At the end of the End phase, if you have no shields, you may recover 1 shield and roll 1 attack die.  On a %HIT% result, randomly flip 1 of your facedown Damage cards faceup and resolve it."
      },
      "C-3PO": {
        text: "Once per round, before you roll 1 or more defense dice, you may guess aloud a number of %EVADE% results.  If you roll that many %EVADE% results (before modifying dice), add 1 %EVADE% result."
      },
      "Single Turbolasers": {
        text: "<strong>Attack (Energy):</strong> Spend 2 energy from this card to perform this attack.  The defender doubles his agility value against this attack.  You may change 1 of your %FOCUS% results to a %HIT% result."
      },
      "Quad Laser Cannons": {
        text: "<strong>Attack (Energy):</strong> Spend 1 energy from this card to perform this attack.  If this attack does not hit, you may immediately spend 1 energy from this card to perform this attack again."
      },
      "Tibanna Gas Supplies": {
        text: "<strong>Energy:</strong> You may discard this card to gain 3 energy."
      },
      "Ionization Reactor": {
        text: "<strong>Energy:</strong> Spend 5 energy from this card and discard this card to cause each other ship at Range 1 to suffer 1 damage and receive 1 ion token."
      },
      "Engine Booster": {
        text: "Immediately before you reveal your maneuver dial, you may spend 1 energy to execute a white (%STRAIGHT% 1) maneuver.  You cannot use this ability if you would overlap another ship."
      },
      "R3-A2": {
        text: "When you declare the target of your attack, if the defender is inside your firing arc, you may receive 1 stress token to cause the defender to receive 1 stress token."
      },
      "R2-D6": {
        text: "Your upgrade bar gains the %ELITE% upgrade icon.<br /><br />You cannot equip this upgrade if you already have a %ELITE% upgrade icon or if your pilot skill value is \"2\" or lower."
      },
      "Enhanced Scopes": {
        text: "During the Activation phase, treat your pilot skill value as \"0\"."
      },
      "Chardaan Refit": {
        text: "This card has a negative squad point cost."
      },
      "Proton Rockets": {
        text: "<strong>Attack (Focus):</strong> Discard this card to perform this attack.<br /><br />You may roll additional attack dice equal to your agility value, to a maximum of 3 additional dice."
      },
      "Kyle Katarn": {
        text: "After you remove a stress token from your ship, you may assign a focus token to your ship."
      },
      "Jan Ors": {
        text: "Once per round, when a friendly ship at Range 1-3 performs a focus action or would be assigned a focus token, you may assign it an evade token instead."
      },
      "Toryn Farr": {
        text: "<strong>Action:</strong> Spend any amount of energy to choose that many enemy ships at Range 1-2.  Remove all focus, evade, and blue target lock tokens from those ships."
      },
      "R4-D6": {
        text: "When you are hit by an attack and there are at least 3 uncanceled %HIT% results, you may choose to cancel those results until there are 2 remaining.  For each result canceled this way, receive 1 stress token."
      },
      "R5-P9": {
        text: "At the end of the Combat phase, you may spend 1 of your focus tokens to recover 1 shield (up to your shield value)."
      },
      "WED-15 Repair Droid": {
        text: "<strong>Action:</strong> Spend 1 energy to discard 1 of your facedown Damage cards, or spend 3 energy to discard 1 of your faceup Damage cards."
      },
      "Carlist Rieekan": {
        text: "At the start of the Activation phase, you may discard this card to treat each friendly ship's pilot skill value as \"12\" until the end of the phase."
      },
      "Jan Dodonna": {
        text: "When another friendly ship at Range 1 is attacking, it may change 1 of its %HIT% results to a %CRIT%."
      },
      "Expanded Cargo Hold": {
        text: "Once per round, when you would be dealt a faceup Damage card, you may draw that card from either the fore or aft Damage deck."
      },
      "Backup Shield Generator": {
        text: "At the end of each round, you may spend 1 energy to recover 1 shield (up to your shield value)."
      },
      "EM Emitter": {
        text: "When you obstruct an attack, the defender rolls 3 additional defense dice (instead of 1)."
      },
      "Frequency Jammer": {
        text: "When you perform a jam action, choose 1 enemy ship that does not have a stress token and is at Range 1 of the jammed ship.  The chosen ship receives 1 stress token."
      },
      "Han Solo": {
        text: "When attacking, if you have a target lock on the defender, you may spend that target lock to change all of your %FOCUS% results to %HIT% results."
      },
      "Leia Organa": {
        text: "At the start of the Activation phase, you may discard this card to allow all friendly ships that reveal a red maneuver to treat that maneuver as a white maneuver until the end of the phase."
      },
      "Targeting Coordinator": {
        text: "<strong>Energy:</strong> You may spend 1 energy to choose 1 friendly ship at Range 1-2.  Acquire a target lock, then assign the blue target lock token to the chosen ship."
      },
      "Raymus Antilles": {
        text: "At the start of the Activation phase, choose 1 enemy ship at Range 1-3.  You may look at that ship's chosen maneuver.  If the maneuver is white, assign that ship 1 stress token."
      },
      "Gunnery Team": {
        text: "Once per round, when attacking with a secondary weapon, you may spend 1 energy to change 1 of your blank results to a %HIT% result."
      },
      "Sensor Team": {
        text: "When acquiring a target lock, you may lock onto an enemy ship at Range 1-5 instead of 1-3."
      },
      "Engineering Team": {
        text: "During the Activation phase, when you reveal a %STRAIGHT% maneuver, gain 1 additional energy during the \"Gain Energy\" step."
      },
      "Lando Calrissian": {
        text: "<strong>Action:</strong> Roll 2 defense dice.  For each %FOCUS% result, assign 1 focus token to your ship.  For each %EVADE% result, assign 1 evade token to your ship."
      },
      "Mara Jade": {
        text: "At the end of the Combat phase, each enemy ship at Range 1 that does not have a stress token receives 1 stress token."
      },
      "Fleet Officer": {
        text: "<strong>Action:</strong> Choose up to 2 friendly ships within Range 1-2 and assign 1 focus token to each of those ships.  Then receive 1 stress token."
      }
    };
    modification_translations = {
      "Stealth Device": {
        text: "Increase your agility value by 1.  If you are hit by an attack, discard this card."
      },
      "Shield Upgrade": {
        text: "Increase your shield value by 1."
      },
      "Engine Upgrade": {
        text: "Your action bar gains the %BOOST% action icon."
      },
      "Anti-Pursuit Lasers": {
        text: "After an enemy ship executes a maneuver that causes it to overlap your ship, roll 1 attack die.  On a %HIT% or %CRIT% result, the enemy ship suffers 1 damage."
      },
      "Targeting Computer": {
        text: "Your action bar gains the %TARGETLOCK% action icon."
      },
      "Hull Upgrade": {
        text: "Increase your hull value by 1."
      },
      "Munitions Failsafe": {
        text: "When attacking with a secondary weapon that instructs you to discard it to perform the attack, do not discard it unless the attack hits."
      },
      "Stygium Particle Accelerator": {
        text: "When you either decloak or perform a cloak action, you may perform a free evade action."
      },
      "Advanced Cloaking Device": {
        text: "After you perform an attack, you may perform a free cloak action."
      },
      "Combat Retrofit": {
        text: "Increase your hull value by 2 and your shield value by 1."
      },
      "B-Wing/E2": {
        text: "Your upgrade bar gains the %CREW% upgrade icon."
      }
    };
    title_translations = {
      "Slave I": {
        text: "Your upgrade bar gains the %TORPEDO% upgrade icon."
      },
      "Millennium Falcon": {
        text: "Your action bar gains the %EVADE% action icon."
      },
      "Moldy Crow": {
        text: "During the End phase, do not remove unused focus tokens from your ship."
      },
      "ST-321": {
        text: "When acquiring a target lock, you may lock onto any enemy ship in the play area."
      },
      "Royal Guard TIE": {
        text: "You may equip up to 2 different Modification upgrades (instead of 1).<br /><br />You cannot equip this card if your pilot skill value is \"4\" or lower."
      },
      "Dodonna's Pride": {
        text: "When you perform a coordinate action, you may choose 2 friendly ships (instead of 1).  Those ships may each perform 1 free action."
      },
      "A-Wing Test Pilot": {
        text: "Your upgrade bar gains 1 %ELITE% upgrade icon.<br /><br />You cannot equip 2 of the same %ELITE% Upgrade cards.  You cannot equip this if your pilot skill value is \"1\" or lower."
      },
      "Tantive IV": {
        text: "Your fore section upgrade bar gains 1 additional %CREW% and 1 additional %TEAM% upgrade icon."
      },
      "Bright Hope": {
        text: "A reinforce action assigned to your fore section adds 2 %EVADE% results (instead of 1)."
      },
      "Quantum Storm": {
        text: "At the start of the End phase, if you have 1 or fewer energy tokens, gain 1 energy token."
      },
      "Dutyfree": {
        text: "When performing a jam action, you may choose an enemy ship at Range 1-3 (instead of at Range 1-2)."
      },
      "Jaina's Light": {
        text: "When defending, once per attack, if you are dealt a faceup Damage card, you may discard it and draw another faceup Damage card."
      },
      "Outrider": {
        text: "While you have a %CANNON% Upgrade card equipped, you <strong>cannot</strong> perform primary weapon attacks and you may perform %CANNON% secondary weapon attacks against ships outside your firing arc."
      }
    };
    return exportObj.setupCardData(basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations);
  };

}).call(this);

//@ sourceMappingURL=cards-en.map