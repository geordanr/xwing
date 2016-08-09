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
        "SLAM": "SLAM"
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
        "Hound's Tooth Expansion Pack": "Hound's Tooth Expansion Pack"
        "Kihraxz Fighter Expansion Pack": "Kihraxz Fighter Expansion Pack"
        "K-Wing Expansion Pack": "K-Wing Expansion Pack"
        "TIE Punisher Expansion Pack": "TIE Punisher Expansion Pack"
        "The Force Awakens Core Set": "The Force Awakens Core Set"
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
        # Warnings
        '.unreleased-content-used .translated': 'This squad uses unreleased content!'
        '.epic-content-used .translated': 'This squad uses Epic content!'
        '.illegal-epic-too-many-small-ships .translated': 'You may not field more than 12 of the same type Small ship!'
        '.illegal-epic-too-many-large-ships .translated': 'You may not field more than 6 of the same type Large ship!'
        '.collection-invalid .translated': 'You cannot field this list with your collection!'
        # Type selector
        '.game-type-selector option[value="standard"]': 'Standard'
        '.game-type-selector option[value="custom"]': 'Custom'
        '.game-type-selector option[value="epic"]': 'Epic'
        '.game-type-selector option[value="team-epic"]': 'Team Epic'
        # Card browser
        '.xwing-card-browser option[value="name"]': 'Name'
        '.xwing-card-browser option[value="source"]': 'Source'
        '.xwing-card-browser option[value="type-by-points"]': 'Type (by Points)'
        '.xwing-card-browser option[value="type-by-name"]': 'Type (by Name)'
        '.xwing-card-browser .translate.select-a-card': 'Select a card from the list at the left.'
        '.xwing-card-browser .translate.sort-cards-by': 'Sort cards by'
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
        '.notes-container > span' : 'Squad Notes'
        # Print/View modal
        '.bbcode-list' : 'Copy the BBCode below and paste it into your forum post.<textarea></textarea><button class="btn btn-copy">Copy</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Copy</button>'
        '.vertical-space-checkbox' : """Add space for damage/upgrade cards when printing <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Print color <input type="checkbox" class="toggle-color-print" />"""
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
            text: """After you perform an attack that destroys the defender, you may recover 1 shield."""
        "IG-88B":
            text: """Once per round, after you perform an attack that does not hit, you may perform an attack with an equipped %CANNON% secondary weapon."""
        "IG-88C":
            text: """After you perform a boost action, you may perform a free evade action."""
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
        "Raider-class Corvette (Fore)":
            text: """Once per round, after you perform a primary weapon attack, you may spend 2 energy to perform another primary weapon attack."""
        "Bossk":
            text: """When you perform an attack that hits, before dealing damage, you may cancel 1 of your %CRIT% results to add 2 %HIT% results."""
        "Talonbane Cobra":
            text: """When attacking or defending, double the effect of your range combat bonuses."""
        "Miranda Doni":
            text: """Once per round when attacking, you may either spend 1 shield to roll 1 additional attack die <strong>or</strong> roll 1 fewer attack die to recover 1 shield."""
        '"Redline"':
            text: """You may maintain 2 target locks on the same ship.  When you acquire a target lock, you may acquire a second lock on that ship."""
        '"Deathrain"':
            text: """When dropping a bomb, you may use the front guides of your ship.  After dropping a bomb, you may perform a free barrel roll action."""
        "Juno Eclipse":
            text: """When you reveal your maneuver, you may increase or decrease its speed by 1 (to a minimum of 1)."""
        "Zertik Strom":
            text: """Enemy ships at Range 1 cannot add their range combat bonus when attacking."""
        "Lieutenant Colzet":
            text: """At the start of the End phase, you may spend a target lock you have on an enemy ship to flip 1 random facedown Damage card assigned to it faceup."""
        "Latts Razzi":
            text: """When a friendly ship declares an attack, you may spend a target lock you have on the defender to reduce its agility by 1 for that attack."""
        "Graz the Hunter":
            text: """When defending, if the attacker is inside your firing arc, roll 1 additional defense die."""
        "Esege Tuketu":
            text: """When another friendly ship at Range 1-2 is attacking, it may treat your focus tokens as its own."""
        "Moralo Eval":
            text: """You can perform %CANNON% secondary attacks against ships inside your auxiliary firing arc."""
        'Gozanti-class Cruiser':
            text: """After you execute a maneuver, you may deploy up to 2 attached ships."""
        '"Scourge"':
            text: """When attacking a defender that has 1 or more Damage cards, roll 1 additional attack die."""
        "The Inquisitor":
            text: """When attacking with your primary weapon at Range 2-3, treat the range of the attack as Range 1."""
        "Zuckuss":
            text: """When attacking, you may roll 1 additional attack die.  If you do, the defender rolls 1 additional defense die."""
        "Dengar":
            text: """Once per round after defending, if the attacker is inside your firing arc, you may perform an attack against that ship."""
        # T-70
        "Poe Dameron":
            text: """When attacking or defending, if you have a focus token, you may change 1 of your %FOCUS% results to a %HIT% or %EVADE% result."""
        '"Blue Ace"':
            text: """When performing a boost action, you may use the (%TURNLEFT% 1) or (%TURNRIGHT% 1) template."""
        # TIE/fo
        '"Omega Ace"':
            text: """When attacking, you may spend a focus token and a target lock you have on the defender to change all of your results to %CRIT% results."""
        '"Epsilon Leader"':
            text: """At the start of the Combat phase, remove 1 stress token from each friendly ship at Range 1."""
        '"Zeta Ace"':
            text: """When performing a barrel roll you may use the (%STRAIGHT% 2) template instead of the (%STRAIGHT% 1) template."""

        '"Red Ace"':
            text: '''The first time you remove a shield token from your ship each round, assign 1 evade token to your ship.'''
        '"Omega Leader"':
            text: '''Enemy ships that you have locked cannot modify any dice when attacking you or defending against your attacks.'''
        'Hera Syndulla':
            text: '''When you reveal a green or red maneuver, you may rotate your dial to another maneuver of the same difficulty.'''
        '"Youngster"':
            text: """Friendly TIE fighters at Range 1-3 may perform the action on your equipped %ELITE% Upgrade card."""
        '"Wampa"':
            text: """When attacking, you may cancel all die results.  If you cancel a %CRIT% result, deal 1 facedown Damage card to the defender."""
        '"Chaser"':
            text: """When another friendly ship at Range 1 spends a focus token, assign a focus token to your ship."""
        'Ezra Bridger':
            text: """When defending, if you are stressed, you may change up to 2 of your %FOCUS% results to %EVADE% results."""
        '"Zeta Leader"':
            text: '''When attacking, if you are not stressed, you may receive 1 stress token to roll 1 additional die.'''
        '"Epsilon Ace"':
            text: '''While you do not have any Damage cards, treat your pilot skill value as "12."'''
        "Kanan Jarrus":
            text: """When an enemy ship at Range 1-2 is attacking, you may spend a focus token.  If you do, the attacker rolls 1 fewer attack die."""
        '"Chopper"':
            text: """At the start of the Combat phase, each enemy ship you are touching receives 1 stress token."""
        'Hera Syndulla (Attack Shuttle)':
            text: """When you reveal a green or red maneuver, you may rotate your dial to another maneuver of the same difficulty."""
        'Sabine Wren':
            text: """Immediately before you reveal your maneuver, you may perform a free boost or barrel roll action."""
        '"Zeb" Orrelios':
            text: '''When defending, you may cancel %CRIT% results before %HIT% results.'''
        'Tomax Bren':
            text: '''Once per round, after you discard an %ELITE% Upgrade card, flip that card faceup.'''
        'Ello Asty':
            text: '''While you are not stressed, you may treat your %TROLLLEFT% and %TROLLRIGHT% maneuvers as white maneuvers.'''
        "Valen Rudor":
            text: """After defending, you may perform a free action."""
        "4-LOM":
            text: """At the start of the End phase, you may assign 1 of your stress tokens to another ship at Range 1."""
        "Tel Trevura":
            text: """The first time you would be destroyed, instead cancel any remaining damage, discard all Damage cards, and deal 4 facedown Damage cards to this ship."""
        "Manaroo":
            text: """At the start of the Combat phase, you may assign all focus, evade, and target lock tokens assigned to you to another friendly ship."""
        '"Deathfire"':
            text: '''When you reveal your maneuver dial or after you perform an action, you may perform a %BOMB% Upgrade card action as a free action.'''
        "Maarek Stele (TIE Defender)":
            text: """When your attack deals a faceup Damage card to the defender, instead draw 3 Damage cards, choose 1 to deal, and discard the others."""
        "Countess Ryad":
            text: """When you reveal a %STRAIGHT% maneuver, you may treat it as a %KTURN% maneuver."""
        "Poe Dameron (PS9)":
            text: """When attacking or defending, if you have a focus token, you may change 1 of your %FOCUS% results to a %HIT% or %EVADE% result."""
        "Rey":
            text: """When attacking or defending, if the enemy ship is inside of your firing arc, you may reroll up to 2 of your blank results."""
        'Norra Wexley':
            text: '''When attacking or defending, you may spend a target lock you have on the enemy ship to add 1 %FOCUS% result to your roll.'''
        'Shara Bey':
            text: '''When another friendly ship at Range 1-2 is attacking, it may treat your blue target lock tokens as its own.'''
        'Thane Kyrell':
            text: '''After an enemy ship in your firing arc at Range 1-3 attacks another friendly ship, you may perform a free action.'''
        'Braylen Stramm':
            text: '''After you execute a maneuver, you may roll an attack die.  On a %HIT% or %CRIT% result, remove 1 stress token from your ship.'''
        '"Quickdraw"':
            text: '''Once per round, when you lose a shield token, you may perform a primary weapon attack.'''
        '"Backdraft"':
            text: '''When attacking a ship inside your auxiliary firing arc, you may add 1 %CRIT% result.'''
        'Fenn Rau':
            text: '''When attacking or defending, if the enemy ship is at Range 1, you may roll 1 additional die.'''
        'Old Teroch':
            text: '''At the start of the Combat phase, you may choose 1 enemy ship at Range 1.  If you are inside its firing arc, it discards all focus and evade tokens.'''
        'Kad Solus':
            text: '''After you execute a red maneuver, assign 2 focus tokens to your ship.'''
        'Ketsu Onyo':
            text: '''At the start of the Combat phase, you may choose a ship at Range 1.  If it is inside your primary <strong>and</strong> mobile firing arcs, assign 1 tractor beam token to it.'''
        'Asajj Ventress':
            text: '''At the start of the Combat phase, you may choose a ship at Range 1-2.  If it inside your mobile firing arc, assign 1 stress token to it.'''
        'Sabine Wren (Scum)':
            text: '''When defending against an enemy ship inside your mobile firing arc at Range 1-2, you may add 1 %FOCUS% result to your roll.'''
        # Wave X
        'Sabine Wren (TIE Fighter)':
            text: '''Immediately before you reveal your maneuver, you may perform a free boost or barrel roll action.'''
        '"Zeb" Orrelios (TIE Fighter)':
            text: '''When defending, you may cancel %CRIT% results before %HIT% results.'''
        'Kylo Ren':
            text: '''The first time you are hit by an attack each round, deal the "I'll Show You the Dark Side" Condition card to the attacker.'''
        'Unkar Plutt':
            text: '''At the end of the Activation phase, you <strong>must</strong> assign a tractor beam token to each ship you are touching.'''

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
            text: """<strong>Attack (target lock):</strong> Discard this card to perform this attack.%LINEBREAK%If this attack hits, the defender suffers 1 damage and receives 2 ion tokens.  Then cancel <strong>all</strong> dice results."""
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
            text: """%IMPERIALONLY%%LINEBREAK%<strong>Action:</strong> Choose up to 2 friendly ships at Range 1-2 and assign 1 focus token to each of those ships.  Then receive 1 stress token."""
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
        "Calculation":
            text: """When attacking, you may spend a focus token to change 1 of your %FOCUS% results to a %CRIT% result."""
        "Accuracy Corrector":
            text: """When attacking, during the "Modify Attack Dice" step, you may cancel all of your dice results. Then, you may add 2 %HIT% results to your roll.%LINEBREAK%Your dice cannot be modified again during this attack."""
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
            text: """When you are dealt a faceup Damage card with the <strong>Ship</strong> trait, you may immediately discard that card (before resolving its effect).%LINEBREAK%Then, discard this Upgrade card."""
        "Bomb Loadout":
            text: """<span class="card-restriction">Y-Wing only.</span>%LINEBREAK%Your upgrade bar gains the %BOMB% icon."""
        '"Genius"':
            text: """If you are equipped with a bomb that can be dropped when you reveal your maneuver, you may drop the bomb <strong>after</strong> you execute your maneuver instead."""
        "Unhinged Astromech":
            text: """You may treat all 3-speed maneuvers as green maneuvers."""
        "R4-B11":
            text: """When attacking, if you have a target lock on the defender, you may spend the target lock to choose any or all defense dice. The defender must reroll the chosen dice."""
        "Autoblaster Turret":
            text: """<strong>Attack:</strong> Attack 1 ship (even a ship outside your firing arc).%LINEBREAK%Your %HIT% results cannot be canceled by defense dice. The defender may cancel %CRIT% results before %HIT% results."""
        "R4 Agromech":
            text: """When attacking, after you spend a focus token, you may acquire a target lock on the defender."""
        "K4 Security Droid":
            text: """%SCUMONLY%%LINEBREAK%After executing a green maneuver, you may acquire a target lock."""
        "Outlaw Tech":
            text: """%SCUMONLY%%LINEBREAK%After you execute a red maneuver, you may assign 1 focus token to your ship."""
        "Advanced Targeting Computer":
            text: """<span class="card-restriction">TIE Advanced only.</span>%LINEBREAK%When attacking with your primary weapon, if you have a target lock on the defender, you may add 1 %CRIT% result to your roll.  If you do, you cannot spend target locks during this attack."""
        "Ion Cannon Battery":
            text: """<strong>Attack (energy):</strong> Spend 2 energy from this card to perform this attack.  If this attack hits, the defender suffers 1 critical damage and receives 1 ion token.  Then cancel <strong>all</strong> dice results."""
        "Extra Munitions":
            text: """When you equip this card, place 1 ordnance token on each equipped %TORPEDO%, %MISSILE%, and %BOMB% Upgrade card.  When you are instructed to discard an Upgrade card, you may discard 1 ordnance token on that card instead."""
        "Cluster Mines":
            text: """<strong>Action:</strong> Discard this card to <strong>drop</strong> 3 cluster mine tokens.<br /><br />When a ship's base or maneuver template overlaps a cluster mine token, that token <strong>detonates</strong>.<br /><br /><strong>Cluster Mines Tokens:</strong> When one of these bomb tokens detonates, the ship that moved through or overlapped this token rolls 2 attack dice and suffers all damage (%HIT%) rolled.  Then discard this token."""
        "Glitterstim":
            text: """At the start of the Combat phase, you may discard this card and receive 1 stress token.  If you do, until the end of the round, when attacking  or defending, you may change all of your %FOCUS% results to %HIT% or %EVADE% results."""
        "Grand Moff Tarkin":
            text: """%HUGESHIPONLY% %IMPERIALONLY%%LINEBREAK%At the start of the Combat phase, you may choose another ship at Range 1-4.  Either remove 1 focus token from the chosen ship or assign 1 focus token to that ship."""
        "Captain Needa":
            text: """%HUGESHIPONLY% %IMPERIALONLY%%LINEBREAK%If you overlap an obstacle during the Activation phase, do not suffer 1 faceup damage card.  Instead, roll 1 attack die.  On a %HIT% or %CRIT% result, suffer 1 damage."""
        "Admiral Ozzel":
            text: """%HUGESHIPONLY% %IMPERIALONLY%%LINEBREAK%<strong>Energy:</strong> You may remove up to 3 shields from your ship.  For each shield removed, gain 1 energy."""
        "Emperor Palpatine":
            text: """%IMPERIALONLY%%LINEBREAK%Once per round, you may change a friendly ship's die result to any other die result.  That die result cannot be modified again."""
        "Bossk":
            text: """%SCUMONLY%%LINEBREAK%After you perform an attack that does not hit, if you are not stressed, you <strong>must</strong> receive 1 stress token. Then assign 1 focus token to your ship and acquire a target lock on the defender."""
        "Lightning Reflexes":
            text: """%SMALLSHIPONLY%%LINEBREAK%After you execute a white or green maneuver on your dial, you may discard this card to rotate your ship 180&deg;.  Then receive 1 stress token <strong>after</strong> the "Check Pilot Stress" step."""
        "Twin Laser Turret":
            text: """<strong>Attack:</strong> Perform this attack <strong>twice</strong> (even against a ship outside your firing arc).<br /><br />Each time this attack hits, the defender suffers 1 damage.  Then cancel <strong>all</strong> dice results."""
        "Plasma Torpedoes":
            text: """<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack.<br /><br />If this attack hits, after dealing damage, remove 1 shield token from the defender."""
        "Ion Bombs":
            text: """When you reveal your maneuver dial, you may discard this card to <strong>drop</strong> 1 ion bomb token.<br /><br />This token <strong>detonates</strong> at the end of the Activation phase.<br /><br /><strong>Ion Bombs Token:</strong> When this bomb token detonates, each ship at Range 1 of the token receives 2 ion tokens.  Then discard this token."""
        "Conner Net":
            text: """<strong>Action:</strong> Discard this card to <strong>drop</strong> 1 Conner Net token.<br /><br />When a ship's base or maneuver template overlaps this token, this token <strong>detonates</strong>.<br /><br /><strong>Conner Net Token:</strong> When this bomb token detonates, the ship that moved through or overlapped this token suffers 1 damage, receives 2 ion tokens, and skips its "Perform Action" step.  Then discard this token."""
        "Bombardier":
            text: """When dropping a bomb, you may use the (%STRAIGHT% 2) template instead of the (%STRAIGHT% 1) template."""
        'Crack Shot':
            text: '''When attacking a ship inside your firing arc, at the start of the "Compare Results" step, you may discard this card to cancel 1 of the defender's %EVADE% results.'''
        "Advanced Homing Missiles":
            text: """<strong>Attack (target lock):</strong> Discard this card to perform this attack.%LINEBREAK%If this attack hits, deal 1 faceup Damage card to the defender.  Then cancel <strong>all</strong> dice results."""
        'Agent Kallus':
            text: '''%IMPERIALONLY%%LINEBREAK%At the start of the first round, choose 1 enemy small or large ship.  When attacking or defending against that ship, you may change 1 of your %FOCUS% results to a %HIT% or %EVADE% result.'''
        'XX-23 S-Thread Tracers':
            text: """<strong>Attack (focus):</strong> Discard this card to perform this attack.  If this attack hits, each friendly ship at Range 1-2 of you may acquire a target lock on the defender.  Then cancel <strong>all</strong> dice results."""
        "Tractor Beam":
            text: """<strong>Attack:</strong> Attack 1 ship.%LINEBREAK%If this attack hits, the defender receives 1 tractor beam token.  Then cancel <strong>all</strong> dice results."""
        "Cloaking Device":
            text: """%SMALLSHIPONLY%%LINEBREAK%<strong>Action:</strong> Perform a free cloak action.%LINEBREAK%At the end of each round, if you are cloaked, roll 1 attack die.  On a %FOCUS% result, discard this card, then decloak or discard your cloak token."""
        "Shield Technician":
            text: """%HUGESHIPONLY%%LINEBREAK%When you perform a recover action, instead of spending all of your energy, you can choose any amount of energy to spend."""
        "Weapons Guidance":
            text: """When attacking, you may spend a focus token to change 1 of your blank results to a %HIT% result."""
        "BB-8":
            text: """When you reveal a green maneuver, you may perform a free barrel roll action."""
        "R5-X3":
            text: """Before you reveal your maneuver, you may discard this card to ignore obstacles until the end of the round."""
        "Wired":
            text: """When attacking or defending, if you are stressed, you may reroll 1 or more of your %FOCUS% results."""
        'Cool Hand':
            text: '''When you receive a stress token, you may discard this card to assign 1 focus or evade token to your ship.'''
        'Juke':
            text: '''%SMALLSHIPONLY%%LINEBREAK%When attacking, if you have an evade token, you may change 1 of the defender's %EVADE% results into a %FOCUS% result.'''
        'Comm Relay':
            text: '''You cannot have more than 1 evade token.%LINEBREAK%During the End phase, do not remove an unused evade token from your ship.'''
        'Dual Laser Turret':
            text: '''%GOZANTIONLY%%LINEBREAK%<strong>Attack (energy):</strong> Spend 1 energy from this card to perform this attack against 1 ship (even a ship outside your firing arc).'''
        'Broadcast Array':
            text: '''%GOZANTIONLY%%LINEBREAK%Your action bar gains the %JAM% action icon.'''
        'Rear Admiral Chiraneau':
            text: '''%HUGESHIPONLY% %IMPERIALONLY%%LINEBREAK%<strong>Action:</strong> Execute a white (%STRAIGHT% 1) maneuver.'''
        'Ordnance Experts':
            text: '''Once per round, when a friendly ship at Range 1-3 performs an attack with a %TORPEDO% or %MISSILE% secondary weapon, it may change 1 of its blank results to a %HIT% result.'''
        'Docking Clamps':
            text: '''%GOZANTIONLY% %LIMITED%%LINEBREAK%You may attach up to 4 TIE fighters, TIE interceptors, TIE bombers, or TIE Advanced to this ship.  All attached ships must have the same ship type.'''
        '"Zeb" Orrelios':
            text: """%REBELONLY%%LINEBREAK%Enemy ships inside your firing arc that you are touching are not considered to be touching you when either you or they activate during the Combat phase."""
        'Kanan Jarrus':
            text: """%REBELONLY%%LINEBREAK%Once per round, after a friendly ship at Range 1-2 executes a white maneuver, you may remove 1 stress token from that ship."""
        'Reinforced Deflectors':
            text: """%LARGESHIPONLY%%LINEBREAK%After defending, if you suffered a combination of 3 or more damage and critical damage during the attack, recover 1 shield (up to your shield value)."""
        'Dorsal Turret':
            text: """<strong>Attack:</strong> Attack 1 ship (even a ship outside your firing arc).%LINEBREAK%If the target of this attack is at Range 1, roll 1 additional attack die."""
        'Targeting Astromech':
            text: '''After you execute a red maneuver, you may acquire a target lock.'''
        'Hera Syndulla':
            text: """%REBELONLY%%LINEBREAK%You may reveal and execute red maneuvers even while you are stressed."""
        'Ezra Bridger':
            text: """%REBELONLY%%LINEBREAK%When attacking, if you are stressed, you may change 1 of your %FOCUS% results to a %CRIT% result."""
        'Sabine Wren':
            text: """%REBELONLY%%LINEBREAK%Your upgrade bar gains the %BOMB% upgrade icon.  Once per round, before a friendly bomb token is removed, choose 1 enemy ship at Range 1 of that token. That ship suffers 1 damage."""
        '"Chopper"':
            text: """%REBELONLY%%LINEBREAK%You may perform actions even while you are stressed.%LINEBREAK%After you perform an action while you are stressed, suffer 1 damage."""
        'Construction Droid':
            text: '''%HUGESHIPONLY% %LIMITED%%LINEBREAK%When you perform a recover action, you may spend 1 energy to discard 1 facedown Damage card.'''
        'Cluster Bombs':
            text: '''After defending, you may discard this card.  If you do, each other ship at Range 1 of the defending section rolls 2 attack dice, suffering all damage (%HIT%) and critical damage (%CRIT%) rolled.'''
        "Adaptability":
            text: """<span class="card-restriction">Dual card.</span>%LINEBREAK%<strong>Side A:</strong> Increase your pilot skill value by 1.%LINEBREAK%<strong>Side B:</strong> Decrease your pilot skill value by 1."""
        "Electronic Baffle":
            text: """When you receive a stress token or an ion token, you may suffer 1 damage to discard that token."""
        "4-LOM":
            text: """%SCUMONLY%%LINEBREAK%When attacking, during the "Modify Attack Dice" step, you may receive 1 ion token to choose 1 of the defender's focus or evade tokens.  That token cannot be spent during this attack."""
        "Zuckuss":
            text: """%SCUMONLY%%LINEBREAK%When attacking, you may receive any number of stress tokens to choose an equal number of defense dice.  The defender must reroll those dice."""
        'Rage':
            text: """<strong>Action:</strong> Assign 1 focus token to your ship and receive 2 stress tokens.  Until the end of the round, when attacking, you may reroll up to 3 attack dice."""
        "Attanni Mindlink":
            text: """%SCUMONLY%%LINEBREAK%Each time you are assigned a focus or stress token, each other friendly ship with Attanni Mindlink must also be assigned the same type of token if it does not already have one."""
        "Boba Fett":
            text: """%SCUMONLY%%LINEBREAK%After performing an attack, if the defender was dealt a faceup Damage card, you may discard this card to choose and discard 1 of the defender's Upgrade cards."""
        "Dengar":
            text: """%SCUMONLY%%LINEBREAK%When attacking, you may reroll 1 attack die.  If the defender is a unique pilot, you may instead reroll up to 2 attack dice."""
        '"Gonk"':
            text: """%SCUMONLY%%LINEBREAK%<strong>Action:</strong> Place 1 shield token on this card.%LINEBREAK%<strong>Action:</strong> Remove 1 shield token from this card to recover 1 shield (up to your shield value)."""
        "R5-P8":
            text: """Once per round, after defending, you may roll 1 attack die.  On a %HIT% result, the attacker suffers 1 damage.  On a %CRIT% result, you and the attacker each suffer 1 damage."""
        'Thermal Detonators':
            text: """When you reveal your maneuver dial, you may discard this card to <strong>drop</strong> 1 thermal detonator token.%LINEBREAK%This token <strong>detonates</strong> at the end of the Activation phase.%LINEBREAK%<strong>Thermal Detonator Token:</strong> When this bomb token detonates, each ship at Range 1 of the token suffers 1 damage and receives 1 stress token.  Then discard this token."""
        "Overclocked R4":
            text: """During the Combat phase, when you spend a focus token, you may receive 1 stress token to assign 1 focus token to your ship."""
        'Systems Officer':
            text: '''%IMPERIALONLY%%LINEBREAK%After you execute a green maneuver, choose another friendly ship at Range 1.  That ship may acquire a target lock.'''
        'Tail Gunner':
            text: '''When attacking from your rear-facing auxiliary firing arc, reduce the defender's agility by 1 (to a minimum of "0").'''
        'R3 Astromech':
            text: '''Once per round, when attacking with a primary weapon, you may cancel 1 of your %FOCUS% results during the "Modify Attack Dice" step to assign 1 evade token to your ship.'''
        'Collision Detector':
            text: '''When performing a boost, barrel roll, or decloak, your ship and maneuver template can overlap obstacles.%LINEBREAK%When rolling for obstacle damage, ignore all %CRIT% results.'''
        'Sensor Cluster':
            text: '''When defending, you may spend a focus token to change 1 of your blank results to an %EVADE% result.'''
        'Fearlessness':
            text: '''%SCUMONLY%%LINEBREAK%When attacking, if you are inside the defender's firing arc at Range 1 and the defender is inside your firing arc, you may add 1 %HIT% result to your roll.'''
        'Ketsu Onyo':
            text: '''%SCUMONLY%%LINEBREAK%At the start of the End phase, you may choose 1 ship in your firing arc at Range 1-2.  That ship does not remove its tractor beam tokens.'''
        'Latts Razzi':
            text: '''%SCUMONLY%%LINEBREAK%When defending, you may remove 1 stress token from the attacker to add 1 %EVADE% result to your roll.'''
        'IG-88D':
            text: '''%SCUMONLY%%LINEBREAK%You have the pilot ability of each other friendly ship with the <em>IG-2000</em> Upgrade card (in addition to your own pilot ability).'''
        'Rigged Cargo Chute':
            text: '''%LARGESHIPONLY%%LINEBREAK%<strong>Action:</strong> Discard this card to <strong>drop</strong> one cargo token.'''
        'Seismic Torpedo':
            text: '''<strong>Action:</strong> Discard this card to choose an obstacle at Range 1-2 and inside your primary firing arc.  Each ship at Range 1 of the obstacle rolls 1 attack die and suffers any damage (%HIT%) or critical damage (%CRIT%) rolled.  Then remove the obstacle.'''
        'Black Market Slicer Tools':
            text: '''<strong>Action:</strong> Choose a stressed enemy ship at Range 1-2 and roll 1 attack die. On a (%HIT%) or (%CRIT%) result, remove 1 stress token and deal it 1 facedown Damage card.'''
        # Wave X
        'Kylo Ren':
            text: '''%IMPERIALONLY%%LINEBREAK%<strong>Action:</strong> Assign the "I'll Show You the Dark Side" Condition card to an enemy ship at Range 1-3.'''
        'Unkar Plutt':
            text: '''%SCUMONLY%%LINEBREAK%After executing a maneuver that causes you to overlap an enemy ship, you may suffer 1 damage to perform 1 free action.'''
        'A Score to Settle':
            text: '''During setup, before the "Place Forces" step, choose 1 enemy ship and deal the "A Debt to Pay" Condition card to it.%LINEBREAK%When attacking a ship that has the "A Debt to Pay" Condition card, you may change 1 %FOCUS% result to a %CRIT% result.'''

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
        "Advanced SLAM":
            text: """After performing a SLAM action, if you did not overlap an obstacle or another ship, you may perform a free action."""
        "Twin Ion Engine Mk. II":
            text: """<span class="card-restriction">TIE only.</span>%LINEBREAK%You may treat all bank maneuvers (%BANKLEFT% and %BANKRIGHT%) as green maneuvers."""
        "Maneuvering Fins":
            text: """When you reveal a turn maneuver (%TURNLEFT% or %TURNRIGHT%), you may rotate your dial to the corresponding bank maneuver (%BANKLEFT% or %BANKRIGHT%) of the same speed."""
        "Ion Projector":
            text: """%LARGESHIPONLY%%LINEBREAK%After an enemy ship executes a maneuver that causes it to overlap your ship, roll 1 attack die.  On a %HIT% or %CRIT% result, the enemy ship receives 1 ion token."""
        'Integrated Astromech':
            text: '''<span class="card-restriction">X-wing only.</span>%LINEBREAK%When you are dealt a Damage card, you may discard 1 of your %ASTROMECH% Upgrade cards to discard that Damage card.'''
        'Optimized Generators':
            text: '''%HUGESHIPONLY%%LINEBREAK%Once per round, when you assign energy to an equipped Upgrade card, gain 2 energy.'''
        'Automated Protocols':
            text: '''%HUGESHIPONLY%%LINEBREAK%Once per round, after you perform an action that is not a recover or reinforce action, you may spend 1 energy to perform a free recover or reinforce action.'''
        'Ordnance Tubes':
            text: '''%HUGESHIPONLY%%LINEBREAK%You may treat each of your %HARDPOINT% upgrade icons as a %TORPEDO% or %MISSILE% icon.%LINEBREAK%When you are instructed to discard a %TORPEDO% or %MISSILE% Upgrade card, do not discard it.'''
        'Long-Range Scanners':
            text: '''You can acquire target locks on ships at Range 3 and beyond.  You cannot acquire target locks on ships at Range 1-2.  You can equip this card only if you have %TORPEDO% and %MISSILE% in your upgrade bar.'''
        "Guidance Chips":
            text: """Once per round, when attacking with a %TORPEDO% or %MISSILE% secondary weapon, you may change 1 die result to a %HIT% result (or a %CRIT% result if your primary weapon value is "3" or higher)."""
        'Vectored Thrusters':
            text: '''%SMALLSHIPONLY%%LINEBREAK%Your action bar gains the %BARRELROLL% action icon.'''
        'Smuggling Compartment':
            text: '''<span class="card-restriction">YT-1300 and YT-2400 only.</span>%LINEBREAK%Your upgrade bar gains the %ILLICIT% upgrade icon.%LINEBREAK%You may equip 1 additional Modification upgrade that costs 3 or fewer squad points.'''
        'Gyroscopic Targeting':
            text: '''<span class="card-restriction">Lancer-class Pursuit Craft only.</span>%LINEBREAK%At the end of the Combat phase, if you executed a 3-, 4-, or 5-speed maneuver this round, you may rotate your mobile firing arc.'''

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
        "Hound's Tooth":
            text: """<span class="card-restriction">YV-666 only.</span>%LINEBREAK%After you are destroyed, before you are removed from the play area, you may <strong>deploy</strong> the <em>Nashtah Pup</em> ship.%LINEBREAK%It cannot attack this round."""
        "Ghost":
            text: """<span class="card-restriction">VCX-100 only.</span>%LINEBREAK%Equip the <em>Phantom</em> title card to a friendly Attack Shuttle and dock it to this ship.%LINEBREAK%After you execute a maneuver, you may deploy it from your rear guides."""
        "Phantom":
            text: """While you are docked, the <em>Ghost</em> can perform primary weapon attacks from its special firing arc, and, at the end of the Combat phase, it may perform an additional attack with an equipped %TURRET%. If it performs this attack, it cannot attack again this round."""
        "TIE/v1":
            text: """<span class="card-restriction">TIE Advanced Prototype only.</span>%LINEBREAK%After you acquire a target lock, you may perform a free evade action."""
        "Mist Hunter":
            text: """<span class="card-restriction">G-1A starfighter only.</span>%LINEBREAK%Your action bar gains the %BARRELROLL% action icon.%LINEBREAK%You <strong>must</strong> equip 1 "Tractor Beam" Upgrade card (paying its squad point cost as normal)."""
        "Punishing One":
            text: """<span class="card-restriction">JumpMaster 5000 only.</span>%LINEBREAK%Increase your primary weapon value by 1."""
        "Assailer":
            text: """<span class="card-restriction"><em>Raider</em>-class corvette aft section only.</span>%LINEBREAK%When defending, if the targeted section has a reinforce token, you may change 1 %FOCUS% result to a %EVADE% result."""
        "Instigator":
            text: """<span class="card-restriction"><em>Raider</em>-class corvette aft section only.</span>%LINEBREAK%After you perform a recover action, recover 1 additional shield."""
        "Impetuous":
            text: """<span class="card-restriction"><em>Raider</em>-class corvette aft section only.</span>%LINEBREAK%After you perform an attack that destroys an enemy ship, you may acquire a target lock."""
        'TIE/x7':
            text: '''<span class="card-restriction">TIE Defender only.</span>%LINEBREAK%Your upgrade bar loses the %CANNON% and %MISSILE% upgrade icons.%LINEBREAK%After executing a 3-, 4-, or 5-speed maneuver, you may assign 1 evade token to your ship.'''
        'TIE/D':
            text: '''<span class="card-restriction">TIE Defender only.</span>%LINEBREAK%Once per round, after you perform an attack with a %CANNON% secondary weapon that costs 3 or fewer squad points, you may perform a primary weapon attack.'''
        'TIE Shuttle':
            text: '''<span class="card-restriction">TIE Bomber only.</span>%LINEBREAK%Your upgrade bar loses all %TORPEDO%, %MISSILE%, and %BOMB% upgrade icons and gains 2 %CREW% upgrade icons.  You cannot equip a %CREW% Upgrade card that costs more than 4 squad points.'''
        'Requiem':
            text: '''%GOZANTIONLY%%LINEBREAK%When you deploy a ship, treat its pilot skill value as "8" until the end of the round.'''
        'Vector':
            text: '''%GOZANTIONLY%%LINEBREAK%After you execute a maneuver, you may deploy up to 4 attached ships (instead of 2).'''
        'Suppressor':
            text: '''%GOZANTIONLY%%LINEBREAK%Once per round, after you acquire a target lock, you may remove 1 focus, evade, or blue target lock token from that ship.'''
        'Black One':
            text: '''After you perform a boost or barrel roll action, you may remove 1 enemy target lock from a friendly ship at Range 1.  You cannot equip this card if your pilot skill is "6" or lower.'''
        'Millennium Falcon (TFA)':
            text: '''After you execute a 3-speed bank maneuver (%BANKLEFT% or %BANKRIGHT%), if you are not touching another ship and you are not stressed, you may receive 1 stress token to rotate your ship 180&deg;.'''
        'Alliance Overhaul':
            text: '''<span class="card-restriction">ARC-170 only.</span>%LINEBREAK%When attacking with a primary weapon from your primary firing arc, you may roll 1 additional attack die.  When attacking from your auxiliary firing arc, you may change 1 of your %FOCUS% results to a %CRIT% result.'''
        'Special Ops Training':
            text: '''<span class="card-restriction">TIE/sf only.</span>%LINEBREAK%When attacking with a primary weapon from your primary firing arc, you may roll 1 additional attack die.  If you do not, you may perform an additional attack from your auxiliary firing arc.'''
        'Concord Dawn Protector':
            text: '''<span class="card-restriction">Protectorate Starfighter only.</span>%LINEBREAK%When defending, if you are inside the attacker's firing arc and at Range 1 and the attacker is inside your firing arc, add 1 %EVADE% result.'''
        'Shadow Caster':
            text: '''<span class="card-restriction">Lancer-class Pursuit Craft only.</span>%LINEBREAK%After you perform an attack that hits, if the defender is inside your mobile firing arc and at Range 1-2, you may assign the defender 1 tractor beam token.'''
        # Wave X
        '''Sabine's Masterpiece''':
            text: '''<span class="card-restriction">TIE Fighter only.</span>%REBELONLY%%LINEBREAK%Your upgrade bar gains the %CREW% and %ILLICIT% upgrade icons.'''
        '''Kylo Ren's Shuttle''':
            text: '''<span class="card-restriction">Upsilon-class Shuttle only.</span>%LINEBREAK%At the end of the Combat phase, choose an unstressed enemy ship at Range 1-2.  Its owner must assign a stress token to it or assign a stress token to another ship at Range 1-2 of you that that player controls.'''

    condition_translations =
        '''I'll Show You the Dark Side''':
            text: '''When this card is assigned, if it is not already in play, the player who dealt it searches the Damage deck for 1 Damage card with the <strong><em>Pilot</em></strong> trait and may place it faceup on this card. Then shuffle the damage deck.%LINEBREAK%When you suffer critical damage from an attack, you are instead dealt the chosen faceup Damage card.%LINEBREAK%When there is no Damage card on this card, remove it.'''

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations, condition_translations
