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
        "Illicit": "Illicit"
        "Salvaged Astromech": "Salvaged Astromech"
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
        "YT-2400 Freighter Expansion Pack": "YT-2400 Freighter Expansion Pack"
        "VT-49 Decimator Expansion Pack": "VT-49 Decimator Expansion Pack"
        "StarViper Expansion Pack": "StarViper Expansion Pack"
        "M3-A Interceptor Expansion Pack": "M3-A Interceptor Expansion Pack"
        "IG-2000 Expansion Pack": "IG-2000 Expansion Pack"
        "Most Wanted Expansion Pack": "Most Wanted Expansion Pack"
        "Imperial Raider Expansion Pack": "Imperial Raider Expansion Pack"
    ui:
        shipSelectorPlaceholder: "Select a ship"
        pilotSelectorPlaceholder: "Select a pilot"
        upgradePlaceholder: (translator, language, slot) ->
            "No #{translator language, 'slot', slot} Upgrade"
        modificationPlaceholder: "No Modification"
        titlePlaceholder: "No Title"
        upgradeHeader: (translator, language, slot) ->
            "#{translator language, 'slot', slot} Upgrade"
        unreleased: "unreleased"
        epic: "epic"
        limited: "limited"
    byCSSSelector:
        '.xwing-card-browser .translate.sort-cards-by': 'Sort cards by'
        '.xwing-card-browser option[value="name"]': 'Name'
        '.xwing-card-browser option[value="source"]': 'Source'
        '.xwing-card-browser option[value="type-by-points"]': 'Type (by Points)'
        '.xwing-card-browser option[value="type-by-name"]': 'Type (by Name)'
        '.xwing-card-browser .translate.select-a-card': 'Select a card from the list at the left.'
        # Info well
        '.info-well .info-ship td.info-header': 'Ship'
        '.info-well .info-skill td.info-header': 'Skill'
        '.info-well .info-actions td.info-header': 'Actions'
        '.info-well .info-upgrades td.info-header': 'Upgrades'
        '.info-well .info-range td.info-header': 'Range'
        # Squadron edit buttons
        '.clear-squad' : 'New Squad'
        '.save-list' : 'Save'
        '.save-list-as' : 'Save as…'
        '.delete-list' : 'Delete'
        '.backend-list-my-squads' : 'Load squad'
        '.view-as-text' : '<span class="hidden-phone"><i class="icon-print"></i>&nbsp;Print/View as </span>Text'
        '.randomize' : 'Random!'
        '.randomize-options' : 'Randomizer options…'
        # Print/View modal
        '.bbcode-list' : 'Copy the BBCode below and paste it into your forum post.<textarea></textarea>'
        '.vertical-space-checkbox' : """<input type="checkbox" class="toggle-vertical-space" /> Add space for damage/upgrade cards when printing"""
        '.print-list' : '<i class="icon-print"></i>&nbsp;Print'
        # Randomizer options
        '.do-randomize' : 'Randomize!'
        # Top tab bar
        '#empireTab' : 'Galactic Empire'
        '#rebelTab' : 'Rebel Alliance'
        '#scumTab' : 'Scum and Villainy'
        '#browserTab' : 'Card Browser'
        '#aboutTab' : 'About'
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

    # Assumes cards-common has been loaded
    basic_cards = exportObj.basicCardData()
    exportObj.canonicalizeShipNames basic_cards

    # English names are loaded by default, so no update is needed
    exportObj.ships = basic_cards.ships

    # Names don't need updating, but text needs to be set
    pilot_translations =
        "Wedge Antilles":
            text: """When attacking, reduce the defender's agility value by 1 (to a minimum of "0")."""
        "Garven Dreis":
            text: """After spending a focus token, you may place that token on any other friendly ship at Range 1-2 (instead of discarding it)."""
        "Biggs Darklighter":
            text: """Other friendly ships at Range 1 cannot be targeted by attacks if the attacker could target you instead."""
        "Luke Skywalker":
            text: """When defending, you may change 1 of your %FOCUS% results to a %EVADE% result."""
        '"Dutch" Vander':
            text: """After acquiring a target lock, choose another friendly ship at Range 1-2.  The chosen ship may immediately acquire a target lock."""
        "Horton Salm":
            text: """When attacking at Range 2-3, you may reroll any of your blank results."""
        '"Winged Gundark"':
            text: """When attacking at Range 1, you may change 1 of your %HIT% results to a %CRIT% result."""
        '"Night Beast"':
            text: """After executing a green maneuver, you may perform a free focus action."""
        '"Backstabber"':
            text: """When attacking from outside the defender's firing arc, roll 1 additional attack die."""
        '"Dark Curse"':
            text: """When defending, ships attacking you cannot spend focus tokens or reroll attack dice."""
        '"Mauler Mithel"':
            text: """When attacking at Range 1, roll 1 additional attack die."""
        '"Howlrunner"':
            text: """When another friendly ship at Range 1 is attacking with its primary weapon, it may reroll 1 attack die."""
        "Maarek Stele":
            text: """When your attack deals a faceup Damage card to the defender, instead draw 3 Damage cards, choose 1 to deal, and discard the others."""
        "Darth Vader":
            text: """During your "Perform Action" step, you may perform 2 actions."""
        "\"Fel's Wrath\"":
            text: """When the number of Damage cards assigned to you equals or exceeds your hull value, you are not destroyed until the end of the Combat phase."""
        "Turr Phennir":
            text: """After you perform an attack, you may perform a free boost or barrel roll action."""
        "Soontir Fel":
            text: """When you receive a stress token, you may assign 1 focus token to your ship."""
        "Tycho Celchu":
            text: """You may perform actions even while you have stress tokens."""
        "Arvel Crynyd":
            text: """You may declare an enemy ship inside your firing arc that you are touching as the target of your attack."""
        "Chewbacca":
            text: """When you are dealt a faceup Damage card, immediately flip it facedown (without resolving its ability)."""
        "Lando Calrissian":
            text: """After you execute a green maneuver, choose 1 other friendly ship at Range 1.  That ship may perform 1 free action shown on its action bar."""
        "Han Solo":
            text: """When attacking, you may reroll all of your dice.  If you choose to do so, you must reroll as many of your dice as possible."""
        "Kath Scarlet":
            text: """When attacking, the defender receives 1 stress token if he cancels at least 1 %CRIT% result."""
        "Boba Fett":
            text: """When you reveal a bank maneuver (%BANKLEFT% or %BANKRIGHT%), you may rotate your dial to the other bank maneuver of the same speed."""
        "Krassis Trelix":
            text: """When attacking with a secondary weapon, you may reroll 1 attack die."""
        "Ten Numb":
            text: """When attacking, 1 of your %CRIT% results cannot be canceled by defense dice."""
        "Ibtisam":
            text: """When attacking or defending, if you have at least 1 stress token, you may reroll 1 of your dice."""
        "Roark Garnet":
            text: '''At the start of the Combat phase, choose 1 other friendly ship at Range 1-3.  Until the end of the phase, treat that ship's pilot skill value as "12."'''
        "Kyle Katarn":
            text: """At the start of the Combat phase, you may assign 1 of your focus tokens to another friendly ship at Range 1-3."""
        "Jan Ors":
            text: """When another friendly ship at Range 1-3 is attacking, if you have no stress tokens, you may receive 1 stress token to allow that ship to roll 1 additional attack die."""
        "Captain Jonus":
            text: """When another friendly ship at Range 1 attacks with a secondary weapon, it may reroll up to 2 attack dice."""
        "Major Rhymer":
            text: """When attacking with a secondary weapon, you may increase or decrease the weapon range by 1 to a limit of Range 1-3."""
        "Captain Kagi":
            text: """When an enemy ship acquires a target lock, it must lock onto your ship if able."""
        "Colonel Jendon":
            text: """At the start of the Combat phase, you may assign 1 of your blue target lock tokens to a friendly ship at Range 1 if it does not have a blue target lock token."""
        "Captain Yorr":
            text: """When another friendly ship at Range 1-2 would receive a stress token, if you have 2 or fewer stress tokens, you may receive that token instead."""
        "Lieutenant Lorrir":
            text: """When performing a barrel roll action, you may receive 1 stress token to use the (%BANKLEFT% 1) or (%BANKRIGHT% 1) template instead of the (%STRAIGHT% 1) template."""
        "Tetran Cowall":
            text: """When you reveal a %UTURN% maneuver, you may treat the speed of that maneuver as "1," "3," or "5"."""
        "Kir Kanos":
            text: """When attacking at Range 2-3, you may spend 1 evade token to add 1 %HIT% result to your roll."""
        "Carnor Jax":
            text: """Enemy ships at Range 1 cannot perform focus or evade actions and cannot spend focus or evade tokens."""
        "Lieutenant Blount":
            text: """When attacking, the defender is hit by your attack, even if he does not suffer any damage."""
        "Airen Cracken":
            text: """After you perform an attack, you may choose another friendly ship at Range 1.  That ship may perform 1 free action."""
        "Colonel Vessery":
            text: """When attacking, immediately after you roll attack dice, you may acquire a target lock on the defender if it already has a red target lock token."""
        "Rexler Brath":
            text: """After you perform an attack that deals at least 1 Damage card to the defender, you may spend a focus token to flip those cards faceup."""
        "Etahn A'baht":
            text: """When an enemy ship inside your firing arc at Range 1-3 is defending, the attacker may change 1 of its %HIT% results to a %CRIT% result."""
        "Corran Horn":
            text: """At the start of the End phase, you may perform one attack.  You cannot attack during the next round."""
        '"Echo"':
            text: """When you decloak, you must use the (%BANKLEFT% 2) or (%BANKRIGHT% 2) template instead of the (%STRAIGHT% 2) template."""
        '"Whisper"':
            text: """After you perform an attack that hits, you may assign 1 focus to your ship."""
        "Wes Janson":
            text: """After you perform an attack, you may remove 1 focus, evade, or blue target lock token from the defender."""
        "Jek Porkins":
            text: """When you receive a stress token, you may remove it and roll 1 attack die.  On a %HIT% result, deal 1 facedown Damage card to this ship."""
        '"Hobbie" Klivian':
            text: """When you acquire or spend a target lock, you may remove 1 stress token from your ship."""
        "Tarn Mison":
            text: """When an enemy ship declares you as the target of an attack, you may acquire a target lock on that ship."""
        "Jake Farrell":
            text: """After you perform a focus action or are assigned a focus token, you may perform a free boost or barrel roll action."""
        "Gemmer Sojan":
            text: """While you are at Range 1 of at least 1 enemy ship, increase your agility value by 1."""
        "Keyan Farlander":
            text: """When attacking, you may remove 1 stress token to change all of your %FOCUS% results to %HIT%results."""
        "Nera Dantels":
            text: """You can perform %TORPEDO% secondary weapon attacks against enemy ships outside your firing arc."""
        "CR90 Corvette (Fore)":
            text: """When attacking with your primary weapon, you may spend 1 energy to roll 1 additional attack die."""
        # "CR90 Corvette (Crippled Aft)":
        #     text: """You cannot choose or execute (%STRAIGHT% 4), (%BANKLEFT% 2), or (%BANKRIGHT% 2) maneuvers."""
        "Dash Rendar":
            text: """You may ignore obstacles during the Activation phase and when performing actions."""
        '"Leebo"':
            text: """When you are dealt a faceup Damage card, draw 1 additional Damage card, choose 1 to resolve, and discard the other."""
        "Eaden Vrill":
            text: """When performing a primary weapon attack against a stressed ship, roll 1 additional attack die."""
        "Rear Admiral Chiraneau":
            text: """When attacking at Range 1-2, you may change 1 of your %FOCUS% results to a %CRIT% result."""
        "Commander Kenkirk":
            text: """If you have no shields and at least 1 Damage card assigned to you, increase your agility value by 1."""
        "Captain Oicunn":
            text: """After executing a maneuver, each enemy ship you are touching suffers 1 damage."""
        "Prince Xizor":
            text: """When defending, a friendly ship at Range 1 may suffer 1 uncanceled %HIT% or %CRIT% result instead of you."""
        "Guri":
            text: """At the start of the Combat phase, if you are at Range 1 of an enemy ship, you may assign 1 focus token to your ship."""
        "Serissu":
            text: """When another friendly ship at Range 1 is defending, it may reroll 1 defense die."""
        "Laetin A'shera":
            text: """After you defend against an attack, if the attack did not hit, you may assign 1 evade token to your ship."""
        "IG-88A":
            text: """This card has not yet been revealed."""
        "IG-88B":
            text: """This card has not yet been revealed."""
        "IG-88C":
            text: """This card has not yet been revealed."""
        "IG-88D":
            text: """You may execute the (%SLOOPLEFT% 3) or (%SLOOPRIGHT% 3) maneuver using the corresponding (%TURNLEFT% 3) or (%TURNRIGHT% 3) template."""
        "Boba Fett (Scum)":
            text: """When attacking or defending, you may reroll 1 of your dice for each enemy ship at Range 1."""
        "Kath Scarlet (Scum)":
            text: """When attacking a ship inside your auxiliary firing arc, roll 1 additional attack die."""
        "Emon Azzameen":
            text: """When dropping a bomb, you may use the [%TURNLEFT% 3], [%STRAIGHT% 3], or [%TURNRIGHT% 3] template instead of the [%STRAIGHT% 1] template."""
        "Kavil":
            text: """When attacking a ship outside your firing arc, roll 1 additional attack die."""
        "Drea Renthal":
            text: """After you spend a target lock, you may receive 1 stress token to acquire a target lock."""
        "Dace Bonearm":
            text: """When an enemy ship at Range 1-3 receives at least 1 ion token, if you are not stressed, you may receive 1 stress token to cause that ship to suffer 1 damage."""
        "Palob Godalhi":
            text: """At the start of the Combat phase, you may remove 1 focus or evade token from an enemy ship at Range 1-2 and assign it to yourself."""
        "Torkil Mux":
            text: """At the end of the Activation phase, choose 1 enemy ship at Range 1-2. Until the end of the Combat phase, treat that ship's pilot skill value as "0"."""
        "N'Dru Suhlak":
            text: """When attacking, if there are no other friendly ships at Range 1-2, roll 1 additional attack die."""
        "Kaa'To Leeachos":
            text: """At the start of the Combat phase, you may remove 1 focus or evade token from another friendly ship at Range 1-2 and assign it to yourself."""
        "Commander Alozen":
            text: """At the start of the Combat phase, you may acquire a target lock on an enemy ship at Range 1."""

    upgrade_translations =
        "Ion Cannon Turret":
            text: """<strong>Attack:</strong> Attack 1 ship (even a ship outside your firing arc).%LINEBREAK%If this attack hits the target ship, the ship suffers 1 damage and receives 1 ion token.  Then cancel all dice results."""
        "Proton Torpedoes":
            text: """<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack.%LINEBREAK%You may change 1 of your %FOCUS% results to a %CRIT% result."""
        "R2 Astromech":
            text: """You may treat all 1- and 2-speed maneuvers as green maneuvers."""
        "R2-D2":
            text: """After executing a green maneuver, you may recover 1 shield (up to your shield value)."""
        "R2-F2":
            text: """<strong>Action:</strong> Increase your agility value by 1 until the end of this game round."""
        "R5-D8":
            text: """<strong>Action:</strong> Roll 1 defense die.%LINEBREAK%On a %EVADE% or %FOCUS% result, discard 1 of your facedown Damage cards."""
        "R5-K6":
            text: """After spending your target lock, roll 1 defense die.%LINEBREAK%On a %EVADE% result, immediately acquire a target lock on that same ship.  You cannot spend this target lock during this attack."""
        "R5 Astromech":
            text: """During the End phase, you may choose 1 of your faceup Damage cards with the Ship trait and flip it facedown."""
        "Determination":
            text: """When you are dealt a faceup Damage card with the Pilot trait, discard it immediately without resolving its effect."""
        "Swarm Tactics":
            text: """At the start of the Combat phase, you may choose 1 friendly ship at Range 1.%LINEBREAK%Until the end of this phase, treat the chosen ship as if its pilot skill were equal to your pilot skill."""
        "Squad Leader":
            text: """<strong>Action:</strong> Choose 1 ship at Range 1-2 that has a lower pilot skill than you.%LINEBREAK%The chosen ship may immediately perform 1 free action."""
        "Expert Handling":
            text: """<strong>Action:</strong> Perform a free barrel roll action.  If you do not have the %BARRELROLL% action icon, receive 1 stress token.%LINEBREAK%You may then remove 1 enemy target lock from your ship."""
        "Marksmanship":
            text: """<strong>Action:</strong> When attacking this round, you may change 1 of your %FOCUS% results to a %CRIT% result and all of your other %FOCUS% results to %HIT% results."""
        "Concussion Missiles":
            text: """<strong>Attack (target lock):</strong>  Spend your target lock and discard this card to perform this attack.%LINEBREAK%You may change 1 of your blank results to a %HIT% result."""
        "Cluster Missiles":
            text: """<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack twice."""
        "Daredevil":
            text: """<strong>Action:</strong> Execute a white (%TURNLEFT% 1) or (%TURNRIGHT% 1) maneuver.  Then, receive 1 stress token.%LINEBREAK%Then, if you do not have the %BOOST% action icon, roll 2 attack dice.  Suffer any damage (%HIT%) and any critical damage (%CRIT%) rolled."""
        "Elusiveness":
            text: """When defending, you may receive 1 stress token to choose 1 attack die.  The attacker must reroll that die.%LINEBREAK%If you have at least 1 stress token, you cannot use this ability."""
        "Homing Missiles":
            text: """<strong>Attack (target lock):</strong> Discard this card to perform this attack.%LINEBREAK%The defender cannot spend evade tokens during this attack."""
        "Push the Limit":
            text: """Once per round, after you perform an action, you may perform 1 free action shown in your action bar.%LINEBREAK%Then receive 1 stress token."""
        "Deadeye":
            text: """You may treat the <strong>Attack (target lock):</strong> header as <strong>Attack (focus):</strong>.%LINEBREAK%When an attack instructs you to spend a target lock, you may spend a focus token instead."""
        "Expose":
            text: """<strong>Action:</strong> Until the end of the round, increase your primary weapon value by 1 and decrease your agility value by 1."""
        "Gunner":
            text: """After you perform an attack that does not hit, you may immediately perform a primary weapon attack.  You cannot perform another attack this round."""
        "Ion Cannon":
            text: """<strong>Attack:</strong> Attack 1 ship.%LINEBREAK%If this attack hits, the defender suffers 1 damage and receives 1 ion token.  Then cancel all dice results."""
        "Heavy Laser Cannon":
            text: """<strong>Attack:</strong> Attack 1 ship.%LINEBREAK%Immediately after rolling your attack dice, you must change all of your %CRIT% results to %HIT% results."""
        "Seismic Charges":
            text: """When you reveal your maneuver dial, you may discard this card to drop 1 seismic charge token.%LINEBREAK%This token detonates at the end of the Activation phase.%LINEBREAK%<strong>Seismic Charge Token:</strong> When this bomb token detonates, each ship at Range 1 of the token suffers 1 damage.  Then discard this token."""
        "Mercenary Copilot":
            text: """When attacking at Range 3, you may change 1 of your %HIT% results to a %CRIT% result."""
        "Assault Missiles":
            text: """<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack.%LINEBREAK%If this attack hits, each other ship at Range 1 of the defender suffers 1 damage."""
        "Veteran Instincts":
            text: """Increase your pilot skill value by 2."""
        "Proximity Mines":
            text: """<strong>Action:</strong> Discard this card to <strong>drop</strong> 1 proximity mine token.%LINEBREAK%When a ship's base or maneuver template overlaps this token, this token <strong>detonates</strong>.%LINEBREAK%<strong>Proximity Mine Token:</strong> When this bomb token detonates, the ship that moved through or overlapped this token rolls 3 attack dice and suffers all damage (%HIT%) and critical damage (%CRIT%) rolled.  Then discard this token."""
        "Weapons Engineer":
            text: """You may maintain 2 target locks (only 1 per enemy ship).%LINEBREAK%When you acquire a target lock, you may lock onto 2 different ships."""
        "Draw Their Fire":
            text: """When a friendly ship at Range 1 is hit by an attack, you may suffer 1 of the uncanceled %CRIT% results instead of the target ship."""
        "Luke Skywalker":
            text: """%REBELONLY%%LINEBREAK%After you perform an attack that does not hit, you may immediately perform a primary weapon attack.  You may change 1 %FOCUS% result to a %HIT% result.  You cannot perform another attack this round."""
        "Nien Nunb":
            text: """%REBELONLY%%LINEBREAK%You may treat all %STRAIGHT% maneuvers as green maneuvers."""
        "Chewbacca":
            text: """%REBELONLY%%LINEBREAK%When you are dealt a Damage card, you may immediately discard that card and recover 1 shield.%LINEBREAK%Then, discard this Upgrade card."""
        "Advanced Proton Torpedoes":
            text: """<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack.%LINEBREAK%You may change up to 3 of your blank results to %FOCUS% results."""
        "Autoblaster":
            text: """<strong>Attack:</strong> Attack 1 ship.%LINEBREAK%Your %HIT% results cannot be canceled by defense dice.%LINEBREAK%The defender may cancel %CRIT% results before %HIT% results."""
        "Fire-Control System":
            text: """After you perform an attack, you may acquire a target lock on the defender."""
        "Blaster Turret":
            text: """<strong>Attack (focus):</strong> Spend 1 focus token to perform this attack against 1 ship (even a ship outside your firing arc)."""
        "Recon Specialist":
            text: """When you perform a focus action, assign 1 additional focus token to your ship."""
        "Saboteur":
            text: """<strong>Action:</strong> Choose 1 enemy ship at Range 1 and roll 1 attack die.  On a %HIT% or %CRIT% result, choose 1 random facedown Damage card assigned to that ship, flip it faceup, and resolve it."""
        "Intelligence Agent":
            text: """At the start of the Activation phase, choose 1 enemy ship at Range 1-2.  You may look at that ship's chosen maneuver."""
        "Proton Bombs":
            text: """When you reveal your maneuver dial, you may discard this card to <strong>drop</strong> 1 proton bomb token.%LINEBREAK%This token <strong>detonates</strong> at the end of the Activation phase.%LINEBREAK%<strong>Proton Bomb Token:</strong> When this bomb token detonates, deal 1 <strong>faceup</strong> Damage card to each ship at Range 1 of the token.  Then discard this token."""
        "Adrenaline Rush":
            text: """When you reveal a red maneuver, you may discard this card to treat that maneuver as a white maneuver until the end of the Activation phase."""
        "Advanced Sensors":
            text: """Immediately before you reveal your maneuver, you may perform 1 free action.%LINEBREAK%If you use this ability, you must skip your "Perform Action" step during this round."""
        "Sensor Jammer":
            text: """When defending, you may change 1 of the attacker's %HIT% results into a %FOCUS% result.%LINEBREAK%The attacker cannot reroll the die with the changed result."""
        "Darth Vader":
            text: """%IMPERIALONLY%%LINEBREAK%After you perform an attack against an enemy ship, you may suffer 2 damage to cause that ship to suffer 1 critical damage."""
        "Rebel Captive":
            text: """%IMPERIALONLY%%LINEBREAK%Once per round, the first ship that declares you as the target of an attack immediately receives 1 stress token."""
        "Flight Instructor":
            text: """When defending, you may reroll 1 of your %FOCUS% results.  If the attacker's pilot skill value is "2" or lower, you may reroll 1 of your blank results instead."""
        "Navigator":
            text: """When you reveal a maneuver, you may rotate your dial to another maneuver with the same bearing.%LINEBREAK%You cannot rotate to a red maneuver if you have any stress tokens."""
        "Opportunist":
            text: """When attacking, if the defender does not have any focus or evade tokens, you may receive 1 stress token to roll 1 additional attack die.%LINEBREAK%You cannot use this ability if you have any stress tokens."""
        "Comms Booster":
            text: """<strong>Energy:</strong> Spend 1 energy to remove all stress tokens from a friendly ship at Range 1-3.  Then assign 1 focus token to that ship."""
        "Slicer Tools":
            text: """<strong>Action:</strong> Choose 1 or more ships at Range 1-3 that have a stress token.  For each ship chosen, you may spend 1 energy to cause that ship to suffer 1 damage."""
        "Shield Projector":
            text: """When an enemy ship is declaring either a small or large ship as the target of its attack, you may spend 3 energy to force that ship to target you if possible."""
        "Ion Pulse Missiles":
            text: """<strong>Attack (target lock):</strong> Discard this card to perform this attack.%LINEBREAK%If this attack hits, the defender suffers 1 damage and receives 2 ion tokens.  Then cancel <strong>all<strong> dice results."""
        "Wingman":
            text: """At the start of the Combat phase, remove 1 stress token from another friendly ship at Range 1."""
        "Decoy":
            text: """At the start of the Combat phase, you may choose 1 friendly ship at Range 1-2.  Exchange your pilot skill with that ship's pilot skill until the end of the phase."""
        "Outmaneuver":
            text: """When attacking a ship inside your firing arc, if you are not inside that ship's firing arc, reduce its agility value by 1 (to a minimum of 0)."""
        "Predator":
            text: """When attacking, you may reroll 1 attack die.  If the defender's pilot skill value is "2" or lower, you may instead reroll up to 2 attack dice."""
        "Flechette Torpedoes":
            text: """<strong>Attack (target lock):</strong> Discard this card and spend your target lock to perform this attack.%LINEBREAK%After you perform this attack, the defender receives 1 stress token if its hull value is "4" or lower."""
        "R7 Astromech":
            text: """Once per round when defending, if you have a target lock on the attacker, you may spend the target lock to choose any or all attack dice.  The attacker must reroll the chosen dice."""
        "R7-T1":
            text: """<strong>Action:</strong> Choose an enemy ship at Range 1-2.  If you are inside that ship's firing arc, you may acquire a target lock on that ship.  Then, you may perform a free boost action."""
        "Tactician":
            text: """After you perform an attack against a ship inside your firing arc at Range 2, that ship receives 1 stress token."""
        "R2-D2 (Crew)":
            text: """%REBELONLY%%LINEBREAK%At the end of the End phase, if you have no shields, you may recover 1 shield and roll 1 attack die.  On a %HIT% result, randomly flip 1 of your facedown Damage cards faceup and resolve it."""
        "C-3PO":
            text: """%REBELONLY%%LINEBREAK%Once per round, before you roll 1 or more defense dice, you may guess aloud a number of %EVADE% results.  If you roll that many %EVADE% results (before modifying dice), add 1 %EVADE% result."""
        "Single Turbolasers":
            text: """<strong>Attack (Energy):</strong> Spend 2 energy from this card to perform this attack.  The defender doubles his agility value against this attack.  You may change 1 of your %FOCUS% results to a %HIT% result."""
        "Quad Laser Cannons":
            text: """<strong>Attack (Energy):</strong> Spend 1 energy from this card to perform this attack.  If this attack does not hit, you may immediately spend 1 energy from this card to perform this attack again."""
        "Tibanna Gas Supplies":
            text: """<strong>Energy:</strong> You may discard this card to gain 3 energy."""
        "Ionization Reactor":
            text: """<strong>Energy:</strong> Spend 5 energy from this card and discard this card to cause each other ship at Range 1 to suffer 1 damage and receive 1 ion token."""
        "Engine Booster":
            text: """Immediately before you reveal your maneuver dial, you may spend 1 energy to execute a white (%STRAIGHT% 1) maneuver.  You cannot use this ability if you would overlap another ship."""
        "R3-A2":
            text: """When you declare the target of your attack, if the defender is inside your firing arc, you may receive 1 stress token to cause the defender to receive 1 stress token."""
        "R2-D6":
            text: """Your upgrade bar gains the %ELITE% upgrade icon.%LINEBREAK%You cannot equip this upgrade if you already have a %ELITE% upgrade icon or if your pilot skill value is "2" or lower."""
        "Enhanced Scopes":
            text: """During the Activation phase, treat your pilot skill value as "0"."""
        "Chardaan Refit":
            text: """<span class="card-restriction">A-Wing only.</span>%LINEBREAK%This card has a negative squad point cost."""
        "Proton Rockets":
            text: """<strong>Attack (Focus):</strong> Discard this card to perform this attack.%LINEBREAK%You may roll additional attack dice equal to your agility value, to a maximum of 3 additional dice."""
        "Kyle Katarn":
            text: """%REBELONLY%%LINEBREAK%After you remove a stress token from your ship, you may assign a focus token to your ship."""
        "Jan Ors":
            text: """%REBELONLY%%LINEBREAK%Once per round, when a friendly ship at Range 1-3 performs a focus action or would be assigned a focus token, you may assign it an evade token instead."""
        "Toryn Farr":
            text: """%HUGESHIPONLY% %REBELONLY%%LINEBREAK%<strong>Action:</strong> Spend any amount of energy to choose that many enemy ships at Range 1-2.  Remove all focus, evade, and blue target lock tokens from those ships."""
        "R4-D6":
            text: """When you are hit by an attack and there are at least 3 uncanceled %HIT% results, you may choose to cancel those results until there are 2 remaining.  For each result canceled this way, receive 1 stress token."""
        "R5-P9":
            text: """At the end of the Combat phase, you may spend 1 of your focus tokens to recover 1 shield (up to your shield value)."""
        "WED-15 Repair Droid":
            text: """%HUGESHIPONLY%%LINEBREAK%<strong>Action:</strong> Spend 1 energy to discard 1 of your facedown Damage cards, or spend 3 energy to discard 1 of your faceup Damage cards."""
        "Carlist Rieekan":
            text: """%HUGESHIPONLY% %REBELONLY%%LINEBREAK%At the start of the Activation phase, you may discard this card to treat each friendly ship's pilot skill value as "12" until the end of the phase."""
        "Jan Dodonna":
            text: """%HUGESHIPONLY% %REBELONLY%%LINEBREAK%When another friendly ship at Range 1 is attacking, it may change 1 of its %HIT% results to a %CRIT%."""
        "Expanded Cargo Hold":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%Once per round, when you would be dealt a faceup Damage card, you may draw that card from either the fore or aft Damage deck."""
        "Backup Shield Generator":
            text: """At the end of each round, you may spend 1 energy to recover 1 shield (up to your shield value)."""
        "EM Emitter":
            text: """When you obstruct an attack, the defender rolls 3 additional defense dice (instead of 1)."""
        "Frequency Jammer":
            text: """When you perform a jam action, choose 1 enemy ship that does not have a stress token and is at Range 1 of the jammed ship.  The chosen ship receives 1 stress token."""
        "Han Solo":
            text: """%REBELONLY%%LINEBREAK%When attacking, if you have a target lock on the defender, you may spend that target lock to change all of your %FOCUS% results to %HIT% results."""
        "Leia Organa":
            text: """%REBELONLY%%LINEBREAK%At the start of the Activation phase, you may discard this card to allow all friendly ships that reveal a red maneuver to treat that maneuver as a white maneuver until the end of the phase."""
        "Targeting Coordinator":
            text: """<strong>Energy:</strong> You may spend 1 energy to choose 1 friendly ship at Range 1-2.  Acquire a target lock, then assign the blue target lock token to the chosen ship."""
        "Raymus Antilles":
            text: """%HUGESHIPONLY% %REBELONLY%%LINEBREAK%At the start of the Activation phase, choose 1 enemy ship at Range 1-3.  You may look at that ship's chosen maneuver.  If the maneuver is white, assign that ship 1 stress token."""
        "Gunnery Team":
            text: """Once per round, when attacking with a secondary weapon, you may spend 1 energy to change 1 of your blank results to a %HIT% result."""
        "Sensor Team":
            text: """When acquiring a target lock, you may lock onto an enemy ship at Range 1-5 instead of 1-3."""
        "Engineering Team":
            text: """During the Activation phase, when you reveal a %STRAIGHT% maneuver, gain 1 additional energy during the "Gain Energy" step."""
        "Lando Calrissian":
            text: """%REBELONLY%%LINEBREAK%<strong>Action:</strong> Roll 2 defense dice.  For each %FOCUS% result, assign 1 focus token to your ship.  For each %EVADE% result, assign 1 evade token to your ship."""
        "Mara Jade":
            text: """%IMPERIALONLY%%LINEBREAK%At the end of the Combat phase, each enemy ship at Range 1 that does not have a stress token receives 1 stress token."""
        "Fleet Officer":
            text: """%IMPERIALONLY%%LINEBREAK%<strong>Action:</strong> Choose up to 2 friendly ships within Range 1-2 and assign 1 focus token to each of those ships.  Then receive 1 stress token."""
        "Lone Wolf":
            text: """When attacking or defending, if there are no other friendly ships at Range 1-2, you may reroll 1 of your blank results."""
        "Stay On Target":
            text: """When you reveal a maneuver, you may rotate your dial to another maneuver with the same speed.%LINEBREAK%Treat that maneuver as a red maneuver."""
        "Dash Rendar":
            text: """%REBELONLY%%LINEBREAK%You may perform attacks while overlapping an obstacle.%LINEBREAK%Your attacks cannot be obstructed."""
        '"Leebo"':
            text: """%REBELONLY%%LINEBREAK%<strong>Action:</strong> Perform a free boost action.  Then receive 1 ion token."""
        "Ruthlessness":
            text: """%IMPERIALONLY%%LINEBREAK%After you perform an attack that hits, you <strong>must</strong> choose 1 other ship at Range 1 of the defender (other than yourself).  That ship suffers 1 damage."""
        "Intimidation":
            text: """While you are touching an enemy ship, reduce that ship's agility value by 1."""
        "Ysanne Isard":
            text: """%IMPERIALONLY%%LINEBREAK%At the start of the Combat phase, if you have no shields and at least 1 Damage card assigned to your ship, you may perform a free evade action."""
        "Moff Jerjerrod":
            text: """%IMPERIALONLY%%LINEBREAK%When you are dealt a faceup Damage card, you may discard this Upgrade card or another %CREW% Upgrade card to flip that Damage card facedown (without resolving its effect)."""
        "Ion Torpedoes":
            text: """<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack.%LINEBREAK%If this attack hits, the defender and each ship at Range 1 of it receives 1 ion token."""
        "Bodyguard":
            text: """%SCUMONLY%%LINEBREAK%At the start of the Combat phase, you may spend a focus token to choose a friendly ship at Range 1 with higher pilot skill than you. Increase its agility value by 1 until the end of the round."""
        "Calc???":
            text: """This card has not yet been revealed."""
        "Accuracy Corrector":
            text: """When attacking, you may cancel all dice results. Then, you may add 2 %HIT% results.%LINEBREAK%Your dice cannot be modified again during this attack."""
        "Inertial Dampeners":
            text: """When you reveal your maneuver, you may discard this card to instead perform a white [0%STOP%] maneuver. Then receive 1 stress token."""
        "Flechette Cannon":
            text: """<strong>Attack:</strong> Attack 1 ship.%LINEBREAK%If this attack hits, the defender suffers 1 damage and, if the defender is not stressed, it also receives 1 stress token.  Then cancel <strong>all</strong> dice results."""
        '"Mangler" Cannon':
            text: """<strong>Attack:</strong> Attack 1 ship.%LINEBREAK%When attacking, you may change 1 of your %HIT% results to a %CRIT% result."""
        "Dead Man's Switch":
            text: """When you are destroyed, each ship at Range 1 suffers 1 damage."""
        "Feedback Array":
            text: """During the Combat phase, instead of performing any attacks, you may receive 1 ion token and suffer 1 damage to choose 1 enemy ship at Range 1.  That ship suffers 1 damage."""
        '"Hot Shot" Blaster':
            text: """<strong>Attack:</strong> Discard this card to attack 1 ship (even a ship outside your firing arc)."""
        "Greedo":
            text: """%SCUMONLY%%LINEBREAK%The first time you attack each round and the first time you defend each round, the first Damage card dealt is dealt faceup."""
        "Salvaged Astromech":
            text: """When you are dealt a Damage card with the <strong>Ship</strong> trait, you may immediately discard that card (before resolving its effect).%LINEBREAK%Then, discard this Upgrade card."""
        "Bomb Loadout":
            text: """<span class="card-restriction">Y-Wing only.</span>%LINEBREAK%Your upgrade bar gains the %BOMB% icon."""
        '"Genius"':
            text: """If you are equipped with a bomb that can be dropped before you reveal your maneuver, you may drop the bomb <strong>after</strong> you execute your maneuver instead."""
        "Unhinged Astromech":
            text: """You may treat all 3-speed maneuvers as green maneuvers."""
        "R4-B11":
            text: """When attacking, if you have a target lock on the defender, you may spend the target lock to choose any or all defense dice. The defender must reroll the chosen dice."""
        "Autoblaster Turret":
            text: """<strong>Attack:</strong> Attack 1 ship (even a ship outside your firing arc).%LINEBREAK%Your %HIT% results cannot be canceled by defense dice. The defender may cancel %CRIT% results before %HIT% results."""
        "R4 Agromech":
            text: """When attacking, after you spend a focus token, you may acquire a target lock on the defender."""
        "K4 Security Droid":
            text: """After executing a green maneuver, you may acquire a target lock."""
        "Outlaw Tech":
            text: """After you execute a red maneuver, you may assign 1 focus token to your ship."""
        "Advanced Targeting Computer":
            text: """<span class="card-restriction">TIE Advanced only.</span>%LINEBREAK%When attacking with your primary weapon, if you have a target lock on the defender, you may add 1 %CRIT% result to your roll.  If you do, you cannot spend target locks during this attack."""
        "Ion Cannon Battery":
            text: """<strong>Attack (energy):</strong> Spend 2 energy from this card to perform this attack.  If this attack hits, the defender suffers 1 critical damage and receives 1 ion token.  Then cancel <strong>all<strong> dice results."""

    modification_translations =
        "Stealth Device":
            text: """Increase your agility value by 1.  If you are hit by an attack, discard this card."""
        "Shield Upgrade":
            text: """Increase your shield value by 1."""
        "Engine Upgrade":
            text: """Your action bar gains the %BOOST% action icon."""
        "Anti-Pursuit Lasers":
            text: """%LARGESHIPONLY%%LINEBREAK%After an enemy ship executes a maneuver that causes it to overlap your ship, roll 1 attack die.  On a %HIT% or %CRIT% result, the enemy ship suffers 1 damage."""
        "Targeting Computer":
            text: """Your action bar gains the %TARGETLOCK% action icon."""
        "Hull Upgrade":
            text: """Increase your hull value by 1."""
        "Munitions Failsafe":
            text: """When attacking with a secondary weapon that instructs you to discard it to perform the attack, do not discard it unless the attack hits."""
        "Stygium Particle Accelerator":
            text: """When you either decloak or perform a cloak action, you may perform a free evade action."""
        "Advanced Cloaking Device":
            text: """<span class="card-restriction">TIE Phantom only.</span>%LINEBREAK%After you perform an attack, you may perform a free cloak action."""
        "Combat Retrofit":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%Increase your hull value by 2 and your shield value by 1."""
        "B-Wing/E2":
            text: """<span class="card-restriction">B-Wing only.</span>%LINEBREAK%Your upgrade bar gains the %CREW% upgrade icon."""
        "Countermeasures":
            text: """%LARGESHIPONLY%%LINEBREAK%At the start of the Combat phase, you may discard this card to increase your agility value by 1 until the end of the round.  Then you may remove 1 enemy target lock from your ship."""
        "Experimental Interface":
            text: """Once per round, after you perform an action, you may perform 1 free action from an equipped Upgrade card with the "<strong>Action:</strong>" header.  Then receive 1 stress token."""
        "Tactical Jammer":
            text: """%LARGESHIPONLY%%LINEBREAK%Your ship can obstruct enemy attacks."""
        "Autothrusters":
            text: """When defending, if you are beyond Range 2 or outside the attacker's firing arc, you may change 1 of your blank results to a %EVADE% result. You can equip this card only if you have the %BOOST% action icon."""

    title_translations =
        "Slave I":
            text: """<span class="card-restriction">Firespray-31 only.</span>%LINEBREAK%Your upgrade bar gains the %TORPEDO% upgrade icon."""
        "Millennium Falcon":
            text: """<span class="card-restriction">YT-1300 only.</span>%LINEBREAK%Your action bar gains the %EVADE% action icon."""
        "Moldy Crow":
            text: """<span class="card-restriction">HWK-290 only.</span>%LINEBREAK%During the End phase, do not remove unused focus tokens from your ship."""
        "ST-321":
            text: """<span class="card-restriction"><em>Lambda</em>-class Shuttle only.</span>%LINEBREAK%When acquiring a target lock, you may lock onto any enemy ship in the play area."""
        "Royal Guard TIE":
            text: """<span class="card-restriction">TIE Interceptor only.</span>%LINEBREAK%You may equip up to 2 different Modification upgrades (instead of 1).%LINEBREAK%You cannot equip this card if your pilot skill value is "4" or lower."""
        "Dodonna's Pride":
            text: """<span class="card-restriction">CR90 fore section only.</span>%LINEBREAK%When you perform a coordinate action, you may choose 2 friendly ships (instead of 1).  Those ships may each perform 1 free action."""
        "A-Wing Test Pilot":
            text: """<span class="card-restriction">A-Wing only.</span>%LINEBREAK%Your upgrade bar gains 1 %ELITE% upgrade icon.%LINEBREAK%You cannot equip 2 of the same %ELITE% Upgrade cards.  You cannot equip this if your pilot skill value is "1" or lower."""
        "Tantive IV":
            text: """<span class="card-restriction">CR90 fore section only.</span>%LINEBREAK%Your fore section upgrade bar gains 1 additional %CREW% and 1 additional %TEAM% upgrade icon."""
        "Bright Hope":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%A reinforce action assigned to your fore section adds 2 %EVADE% results (instead of 1)."""
        "Quantum Storm":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%At the start of the End phase, if you have 1 or fewer energy tokens, gain 1 energy token."""
        "Dutyfree":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%When performing a jam action, you may choose an enemy ship at Range 1-3 (instead of at Range 1-2)."""
        "Jaina's Light":
            text: """<span class="card-restriction">CR90 fore section only.</span>%LINEBREAK%When defending, once per attack, if you are dealt a faceup Damage card, you may discard it and draw another faceup Damage card."""
        "Outrider":
            text: """<span class="card-restriction">YT-2400 only.</span>%LINEBREAK%While you have a %CANNON% Upgrade card equipped, you <strong>cannot</strong> perform primary weapon attacks and you may perform %CANNON% secondary weapon attacks against ships outside your firing arc."""
        "Dauntless":
            text: """<span class="card-restriction">VT-49 Decimator only.</span>%LINEBREAK%After you execute a maneuver that causes you to overlap another ship, you may perform 1 free action.  Then receive 1 stress token."""
        "Virago":
            text: """<span class="card-restriction">StarViper only.</span>%LINEBREAK%Your upgrade bar gains the %SYSTEM% and %ILLICIT% upgrade icons.%LINEBREAK%You cannot equip this card if your pilot skill value is "3" or lower."""
        '"Heavy Scyk" Interceptor (Cannon)':
            text: """<span class="card-restriction">M3-A Interceptor only.</span>%LINEBREAK%Your upgrade bar gains the %CANNON%, %TORPEDO%, or %MISSILE% upgrade icon."""
        '"Heavy Scyk" Interceptor (Torpedo)':
            text: """<span class="card-restriction">M3-A Interceptor only.</span>%LINEBREAK%Your upgrade bar gains the %CANNON%, %TORPEDO%, or %MISSILE% upgrade icon."""
        '"Heavy Scyk" Interceptor (Missile)':
            text: """<span class="card-restriction">M3-A Interceptor only.</span>%LINEBREAK%Your upgrade bar gains the %CANNON%, %TORPEDO%, or %MISSILE% upgrade icon."""
        "IG-2000":
            text: """<span class="card-restriction">Aggressor only.</span>%LINEBREAK%You have the pilot ability of each other friendly ship with the <em>IG-2000</em> Upgrade card (in addition to your own pilot ability)."""
        "BTL-A4 Y-Wing":
            text: """<span class="card-restriction">Y-Wing only.</span>%LINEBREAK%You cannot attack ships outside your firing arc. After you perform a primary weapon attack, you may immediately perform an attack with a %TURRET% secondary weapon."""
        "Andrasta":
            text: """Your upgrade bar gains two additional %BOMB% upgrade icons."""
        "TIE/x1":
            text: """<span class="card-restriction">TIE Advanced only.</span>%LINEBREAK%Your upgrade bar gains the %SYSTEM% upgrade icon.%LINEBREAK%If you equip a %SYSTEM% upgrade, its squad point cost is reduced by 4 (to a minimum of 0)."""

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations
