exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.en = 'English'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations.English =
    action: #do not change this anymore. We use Icons instead of words
        "Barrel Roll": '<i class="xwing-miniatures-font xwing-miniatures-font-barrelroll"></i>'
        "Boost": '<i class="xwing-miniatures-font xwing-miniatures-font-boost"></i>'
        "Evade": '<i class="xwing-miniatures-font xwing-miniatures-font-evade"></i>'
        "Focus": '<i class="xwing-miniatures-font xwing-miniatures-font-focus"></i>'
        "Lock": '<i class="xwing-miniatures-font xwing-miniatures-font-lock"></i>'
        "Reload": '<i class="xwing-miniatures-font xwing-miniatures-font-reload"></i>'
        "Rotate Arc": '<i class="xwing-miniatures-font xwing-miniatures-font-rotatearc"></i>'
        "Reinforce": '<i class="xwing-miniatures-font xwing-miniatures-font-reinforce"></i>'
        "Jam": '<i class="xwing-miniatures-font xwing-miniatures-font-jam"></i>'
        "Calculate": '<i class="xwing-miniatures-font xwing-miniatures-font-calculate"></i>'
        "Coordinate": '<i class="xwing-miniatures-font xwing-miniatures-font-coordinate"></i>'
        "Cloak": '<i class="xwing-miniatures-font xwing-miniatures-font-cloak"></i>'
        "Slam": '<i class="xwing-miniatures-font xwing-miniatures-font-slam"></i>'
        "R> Barrel Roll": '<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i> <i class="xwing-miniatures-font red xwing-miniatures-font-barrelroll"></i>'
        "R> Focus": '<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i> <i class="xwing-miniatures-font red xwing-miniatures-font-focus"></i>'
        "R> Lock": '<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i> <i class="xwing-miniatures-font red xwing-miniatures-font-lock"></i>'
        "> Rotate Arc": '<i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <i class="xwing-miniatures-font xwing-miniatures-font-rotatearc"></i>'
        "R> Rotate Arc": '<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i> <i class="xwing-miniatures-font red xwing-miniatures-font-rotatearc"></i>'
        "R> Evade": '<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i> <i class="xwing-miniatures-font red xwing-miniatures-font-evade"></i>'
        "R> Calculate": '<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i> <i class="xwing-miniatures-font red xwing-miniatures-font-calculate"></i>'
    sloticon:
        "Astromech": '<i class="xwing-miniatures-font xwing-miniatures-font-astromech"></i>'
        "Force": '<i class="xwing-miniatures-font xwing-miniatures-font-forcepower"></i>'
        "Bomb": '<i class="xwing-miniatures-font xwing-miniatures-font-bomb"></i>'
        "Cannon": '<i class="xwing-miniatures-font xwing-miniatures-font-cannon"></i>'
        "Crew": '<i class="xwing-miniatures-font xwing-miniatures-font-crew"></i>'
        "Talent": '<i class="xwing-miniatures-font xwing-miniatures-font-talent"></i>'
        "Missile": '<i class="xwing-miniatures-font xwing-miniatures-font-missile"></i>'
        "Sensor": '<i class="xwing-miniatures-font xwing-miniatures-font-system"></i>'
        "Torpedo": '<i class="xwing-miniatures-font xwing-miniatures-font-torpedo"></i>'
        "Turret": '<i class="xwing-miniatures-font xwing-miniatures-font-turret"></i>'
        "Illicit": '<i class="xwing-miniatures-font xwing-miniatures-font-illicit"></i>'
        "Configuration": '<i class="xwing-miniatures-font xwing-miniatures-font-configuration"></i>'
        "Modification": '<i class="xwing-miniatures-font xwing-miniatures-font-modification"></i>'
        "Gunner": '<i class="xwing-miniatures-font xwing-miniatures-font-gunner"></i>'
        "Device": '<i class="xwing-miniatures-font xwing-miniatures-font-device"></i>'
        "Tech": '<i class="xwing-miniatures-font xwing-miniatures-font-tech"></i>'
        "Title": '<i class="xwing-miniatures-font xwing-miniatures-font-title"></i>'
    slot:
        "Astromech": "Astromech"
        "Force": "Force"
        "Bomb": "Bomb"
        "Cannon": "Cannon"
        "Crew": "Crew"
        "Missile": "Missile"
        "Sensor": "Sensor"
        "Torpedo": "Torpedo"
        "Turret": "Turret"
        "Hardpoint": "Hardpoint"
        "Illicit": "Illicit"
        "Configuration": "Configuration"
        "Talent": "Talent"
        "Modification": "Modification"
        "Gunner": "Gunner"
        "Device": "Device"
        "Tech": "Tech"
        "Title": "Title"
    sources: # needed?
        "Second Edition Core Set": "Second Edition Core Set"
        "Rebel Alliance Conversion Kit": "Rebel Alliance Conversion Kit"
        "Galactic Empire Conversion Kit": "Galactic Empire Conversion Kit"
        "T-65 X-Wing Expansion Pack": "T-65 X-Wing Expansion Pack"
        "BTL-A4 Y-Wing Expansion Pack": "BTL-A4 Y-Wing Expansion Pack"
        "TIE/ln Fighter Expansion Pack": "TIE/ln Fighter Expansion Pack"
        "TIE Advanced x1 Expansion Pack": "TIE Advanced x1 Expansion Pack"
        "Slave 1 Expansion Pack": "Slave 1 Expansion Pack"
        "Fang Fighter Expansion Pack": "Fang Fighter Expansion Pack"
        "Lando's Millennium Falcon Expansion Pack": "Lando's Millennium Falcon Expansion Pack"
        "Saw's Renegades Expansion Pack": "Saw's Renegades Expansion Pack"
        "TIE Reaper Expansion Pack": "TIE Reaper Expansion Pack"
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
        '.info-well .info-skill td.info-header': 'Initiative'
        '.info-well .info-actions td.info-header': 'Actions'
        '.info-well .info-upgrades td.info-header': 'Upgrades'
        '.info-well .info-range td.info-header': 'Range'
        # Squadron edit buttons
        '.clear-squad' : 'New Squad'
        '.save-list' : 'Save'
        '.save-list-as' : 'Save as…'
        '.delete-list' : 'Delete'
        '.backend-list-my-squads' : 'Load squad'
        '.view-as-text' : '<span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Print/View as </span>Text'
        '.randomize' : 'Random!'
        '.randomize-options' : 'Randomizer options…'
        '.notes-container > span' : 'Squad Notes'
        # Print/View modal
        '.bbcode-list' : 'Copy the BBCode below and paste it into your forum post.<textarea></textarea><button class="btn btn-copy">Copy</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Copy</button>'
        '.vertical-space-checkbox' : """Add space for damage/upgrade cards when printing <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Print color <input type="checkbox" class="toggle-color-print" />"""
        '.print-list' : '<i class="fa fa-print"></i>&nbsp;Print'
        # Randomizer options
        '.do-randomize' : 'Randomize!'
        # Top tab bar
        '#browserTab' : 'Card Browser'
        '#aboutTab' : 'About'
        # Obstacles
        '.choose-obstacles' : 'Choose Obstacles'
        '.choose-obstacles-description' : 'Choose up to three obstacles to include in the permalink for use in external programs. (This feature is in BETA; support for displaying which obstacles were selected in the printout is not yet supported.)'
        '.coreasteroid0-select' : 'Core Asteroid 0'
        '.coreasteroid1-select' : 'Core Asteroid 1'
        '.coreasteroid2-select' : 'Core Asteroid 2'
        '.coreasteroid3-select' : 'Core Asteroid 3'
        '.coreasteroid4-select' : 'Core Asteroid 4'
        '.coreasteroid5-select' : 'Core Asteroid 5'
        '.yt2400debris0-select' : 'YT2400 Debris 0'
        '.yt2400debris1-select' : 'YT2400 Debris 1'
        '.yt2400debris2-select' : 'YT2400 Debris 2'
        '.vt49decimatordebris0-select' : 'VT49 Debris 0'
        '.vt49decimatordebris1-select' : 'VT49 Debris 1'
        '.vt49decimatordebris2-select' : 'VT49 Debris 2'
        '.core2asteroid0-select' : 'Force Awakens Asteroid 0'
        '.core2asteroid1-select' : 'Force Awakens Asteroid 1'
        '.core2asteroid2-select' : 'Force Awakens Asteroid 2'
        '.core2asteroid3-select' : 'Force Awakens Asteroid 3'
        '.core2asteroid4-select' : 'Force Awakens Asteroid 4'
        '.core2asteroid5-select' : 'Force Awakens Asteroid 5'

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

    # Only generic names need updating, but text needs to be set
    pilot_translations =
        "4-LOM":
           text: """After you fully execute a red maneuver, gain 1 calculate token. At the start of the End Phase, you may choose 1 ship at range 0-1. If you do, transfer 1 of your stress tokens to that ship."""
        "Academy Pilot":
           name: """Pilot der Akademie"""
           text: """ """
        "Airen Cracken":
           text: """After you perform an attack, you may choose 1 friendly ship at range 1. That ship may perform an action, treating it as red."""
        "Alpha Squadron Pilot":
           name: """Pilot der Alpha-Staffel"""
           text: """AUTOTHRUSTERS: After you perform an action. you may perform a red %BARRELROLL% or a red %BOOST% action."""
        "AP-5":
           text: """While you coordinate, if you chose a ship with exactly 1 stress token, it can perform actions. %LINEBREAK% COMMS SHUTTLE: While you are docked, your carrier ship gains %COORDINATE%. Before your carrier ship activates, it may perform a %COORDINATE% action."""
        "Arvel Crynyd":
           text: """You can perform primary attacks at range 0. If you would fail a %BOOST% action by overlapping another ship, resolve it as though you were partially executing a maneuver instead. %LINEBREAK% VECTORED THRUSTERS: After you perform an action, you may perform a red %BOOST% action."""
        "Asajj Ventress":
           text: """At the start of the Engagement Phase, you may choose 1 enemy ship in your %SINGLETURRETARC% at range 0-2 and spend 1 %FORCE% token. If you do, that ship gains 1 stress token unless it removes 1 green token."""
        "Autopilot Drone":
           text: """MANIPULIERTE ENERGIEZELLEN: Während der Systemphase, falls du nicht angedockt bist, verliere 1 %CHARGE%. Am Ende der Aktivierungsphase, falls du 0 %CHARGE% hast, wirst du zerstört. Bevor du entfernt wirst, erleidet jedes Schiff in Reichweite 0-1 1 %CRIT%-Schaden"""
        "Bandit Squadron Pilot":
           text: """ """
        "Baron of the Empire":
           name: """Imperialer Baron"""
           text: """ """
        "Benthic Two-Tubes":
           text: """After you perform a %FOCUS% action, you may transfer 1 of your focus tokens to a friendly ship at range 1-2."""
        "Biggs Darklighter":
           text: """While another friendly ship at range 0-1 defends, before the Neutralize Results step, if you are in the attack arc, you may suffer 1 %HIT% or %CRIT% damage to cancel 1 matching result."""
        "Binayre Pirate":
           text: """ """
        "Black Squadron Ace":
           text: """ """
        "Black Squadron Scout":
           text: """ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        "Black Sun Ace":
           text: """ """
        "Black Sun Assassin":
           text: """MICROTHRUSTERS: While you perform a barrel roll, you MUST use the (1 %BANKLEFT%) or (1 %BANKRIGHT%) template instead of the [1 %STRAIGHT%] template."""
        "Black Sun Enforcer":
           text: """MICROTHRUSTERS: While you perform a barrel roll, you MUST use the (1 %BANKLEFT%) or (1 %BANKRIGHT%) template instead of the [1 %STRAIGHT%] template."""
        "Black Sun Soldier":
           text: """ """
        "Blade Squadron Veteran":
           text: """ """
        "Blue Squadron Escort":
           text: """ """
        "Blue Squadron Pilot":
           text: """ """
        "Blue Squadron Scout":
           text: """ """
        "Boba Fett":
           text: """While you defend or perform an attack, you may reroll 1 of your dice for each enemy ship at range 0-1."""
        "Bodhi Rook":
           text: """Friendly ships can acquire locks onto objects at range 0-3 of any friendly ship."""
        "Bossk":
           text: """While you perform a primary attack, after the Neutralize Results step, you may spend 1 %CRIT% result to add 2 %HIT% results."""
        "Bounty Hunter":
           text: """ """
        "Braylen Stramm":
           text: """While you defend or perform an attack, if you are stressed, you may reroll up to 2 of your dice."""
        "Captain Feroph":
           text: """Solange du verteidigst, falls der Angreifer keine grünen Marker hat, darfst du 1 deiner Leerseiten- oder %FOCUS%-Ergebnisse in ein %EVADE%-Ergebnis ändern. %LINEBREAK% Adaptive Querruder: Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, musst du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        "Captain Jonus":
           text: """While a friendly ship at range 0-1 performs a %TORPEDO% or %MISSILE% attack, that ship may reroll up to 2 attack dice. %LINEBREAK% NIMBLE BOMBER: If you would drop a device using a %STRAIGHT% template, you may use %BANKLEFT% a or %BANKRIGHT% tempate of the same speed instead."""
        "Captain Jostero":
           text: """After an enemy ship suffers damage, if it is not defending, you may perform a bonus attack against that ship."""
        "Captain Kagi":
           text: """Zu Beginn der Kampfphase darfst du 1 oder mehrere befreundete Schiffe in Reichweite 0-3 wählen. Falls du das tust, transferiere alle feindlichen Zielerfassungen von den gewählten Schiffen auf dich."""
        "Captain Nym":
           text: """Before a friendly bomb or mine would detonate, you may spend 1 %CHARGE% to prevent it from detonating. While you defend against an attack obstructed by a bomb or mine, roll 1 additional defense die."""
        "Captain Oicunn":
           text: """You can perform primary attacks at range 0."""
        "Captain Rex":
           text: """After you perform an attack, assign the Suppressive Fire condition to the defender."""
        "Cartel Executioner":
           text: """DEAD TO RIGHTS: While you perform an attack, if the defender is in your %BULLSEYEARC%, defense dice cannot be modified using green tokens."""
        "Cartel Marauder":
           text: """The versatile Kihraxz was modeled after Incom's popular X-wing starfighter, but an array of aftermarket modification kits ensure a wide variety of designs."""
        "Cartel Spacer":
           text: """WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Cassian Andor":
           text: """At the start of the Activation Phase, you may choose 1 friendly ship at range 1-3. If you do, that ship removes 1 stress token."""
        "Cavern Angels Zealot":
           text: """ """
        "Chewbacca":
           text: """Zu Beginn der Endphase darfst du 1 %FOCUS%-Marker ausgeben, um 1 deiner offenen Schadenskarten zu reparieren."""
        '"Chopper"':
           text: """At the start of the Engagement Phase, each enemy ship at range 0 gains 2 jam tokens.TAIL GUN: While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship's Primary %FRONTARC% attack value."""
        "Colonel Jendon":
           text: """Zu Beginn der Aktivierungsphase darfst du 1 %CHARGE% ausgeben. Falls du das tust, müssen befreundete Schiffe, solange sie in dieser Runde Ziele erfassen, Ziele jenseits von Reichweite 3 erfassen, anstatt in Reichweite 0-3."""
        "Colonel Vessery":
           text: """While you perform an attack against a locked ship, after you roll attack dice, you may acquire a lock on the defender. %LINEBREAK% FULL THROTTLE: After you FULLY execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Constable Zuvio":
           text: """If you would drop a device, you may launch it using a [1 %STRAIGHT%] template instead. %LINEBREAK% SPACETUG TRACTOR ARRAY: ACTION: Choose a ship in your %FRONTARC% at range 1. That ship gains one tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1"""
        "Contracted Scout":
           text: """ """
        "Corran Horn":
           text: """At initiative 0, you may perform a bonus primary attack against an enemy ship in your %BULLSEYEARC%. If you do, at the start of the next Planning Phase, gain 1 disarm token. %LINEBREAK% EXPERIMENTAL SCANNERS: You can acquire locks beyond range 3. You cannot acquite locks at range 1."""
        '"Countdown"':
           text: """While you defend, after the Neutralize Results step, if you are not stressed, you may suffer 1 %HIT% damage and gain 1 stress token. If you do, cancel all dice results. %LINEBREAK% ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        "Countess Ryad":
           text: """While you would execute a %STRAIGHT% maneuver, you may increase the difficulty of the maneuver. If you do, execute it as a %KTURN% maneuver instead. %LINEBREAK% FULL THROTTLE: After you FULLY execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Crymorah Goon":
           text: """ """
        "Cutlass Squadron Pilot":
           text: """ """
        "Dace Bonearm":
           text: """After an enemy ship at range 0-3 receives at least 1 ion token, you may spend 3 %CHARGE%. If you do, that ship gains 2 additional ion tokens."""
        "Dalan Oberos":
           text: """At the start of the Engagement Phase, you may choose 1 shielded ship in your %BULLSEYEARC% and spend 1 %CHARGE%. If you do, that ship loses 1 shield and you recover 1 shield. %LINEBREAK% DEAD TO RIGHTS: While you perform an attack, if the defender is in your %BULLSEYEARC%, defense dice cannot be modified using green tokens."""
        "Dalan Oberos (StarViper)":
           text: """After you fully execute a maneuver, you may gain 1 stress token to rotate your ship 90˚.  %LINEBREAK% MICROTHRUSTERS: While you perform a barrel roll, you MUST use the (1 %BANKLEFT%) or (1 %BANKRIGHT%) template instead of the [1 %STRAIGHT%] template."""
        "Darth Vader":
           text: """After you perform an action, you may spend 1 %FORCE% to perform an action. %LINEBREAK% ADVANCED TARGETING COMPUTER: While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1 %HIT% result to a %CRIT% result."""
        "Dash Rendar":
           text: """While you move, you ignore obstacles. %LINEBREAK% SENSOR BLINDSPOT: While you perform a primary attack at range 0-1, do not apply the range 0-1 bonus and roll 1 fewer attack die."""
        '"Deathfire"':
           text: """After you are destroyed, before you are removed, you may perform an attack and drop or launch 1 device. %LINEBREAK% NIMBLE BOMBER: If you would drop a device using a %STRAIGHT% template, you may use %BANKLEFT% a or %BANKRIGHT% tempate of the same speed instead."""
        '"Deathrain"':
           text: """After you drop or launch a device, you may perform an action."""
        "Del Meeko":
           text: """While a friendly ship at range 0-2 defends against a damaged attacker, the defender may reroll 1 defense die."""
        "Delta Squadron Pilot":
           text: """FULL THROTTLE: After you FULLY execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Dengar":
           text: """After you defend, if the attcker is in your %FRONTARC%, you may spend 1 %CHARGE% to perform a bonus attack against the attacker."""
        '"Double Edge"':
           text: """After you perform a %TURRET% or %MISSILE% attack that misses, you may perform a bonus attack using a different weapon."""
        "Drea Renthal":
           text: """While a friendly non-limited ship performs an attack, if the defender is in your firing arc, the attacker may reroll 1 attack die."""
        '"Duchess"':
           text: """You may choose not to use your Adaptive Ailerons. You may use your Adaptive Ailerons even while stressed. %LINEBREAK% ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        '"Dutch" Vander':
           text: """After you perform the %LOCK% action, you may choose 1 friendly ship at range 1-3. That ship may acquire a lock on the object you locked, ignoring range restrictions."""
        '"Echo"':
           text: """While you decloak, you must use the (2 %BANKLEFT%) or (2 %BANKRIGHT%) template instead of the (2 %STRAIGHT%) template. STYGUM ARRAY: After you decloak, you may perform an %EVADE% action. At the Start of the End Phase, you may spend 1 evade token to gain one cloak token."""
        "Edrio Two-Tubes":
           text: """Before you activate, if you are focused, you may perform an action."""
        "Emon Azzameen":
           text: """If you would drop a device using a [1 %STRAIGHT%] template, you may use the [3 %TURNLEFT%], [3 %STRAIGHT%], or [3 %TURNRIGHT%] template instead."""
        "Esege Tuketu":
           text: """While a friendly ship at range 0-2 defends or performs an attack, it may spend your focus tokens as if that ship has them."""
        "Evaan Verlaine":
           text: """At the start of the Engagement Phase, you may spend 1 focus token to choose a friendly ship at range 0-1. If you do, that ship rolls 1 additional defense die while defending until the end of the round."""
        "Ezra Bridger":
           text: """While you defend or perform an attack, if you are stressed, you may spend 1 %FORCE% to change up to 2 of your %FOCUS% results to %EVADE% or %HIT% results. %LINEBREAK% LOCKED AND LOADED: While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus %REARARC% attack"""
        "Ezra Bridger (Sheathipede)":
           text: """While you defend or perform an attack, if you are stressed, you may spend 1 %FORCE% to change up to 2 of your %FOCUS% results to %EVADE%/%HIT% results. %LINEBREAK% COMMS SHUTTLE: While you are docked, your carrier ship gains %COORDINATE%. Before your carrier shpi activates, it may perform a %COORDINATE% action."""
        "Ezra Bridger (TIE Fighter)":
           text: """While you defend or perform an attack, if you are stressed, you may spend 1 %FORCE% to change up to 2 of your %FOCUS% results to %EVADE% or %HIT% results."""
        "Fenn Rau":
           text: """While you defend or perform an attack, if the attack range is 1, you may roll 1 additional die. %LINEBREAK% CONCORDIA FACEOFF: While you defend, if the attack range is 1 and you are in the attackers %FRONTARC%, change 1 result to an %EVADE% result"""
        "Fenn Rau (Sheathipede)":
           text: """After an enemy ship in your firing arc engages, if you are not stressed, you may gain 1 stress token. If you do, that ship cannot spend tokens to modify dice while it performs an attack during this phase. %LINEBREAK% COMMS SHUTTLE: While you are docked, your carrier ship gains %COORDINATE%. Before your carrier shpi activates, it may perform a %COORDINATE% action."""
        "Freighter Captain":
           text: """ """
        "Gamma Squadron Ace":
           text: """NIMBLE BOMBER: If you would drop a device using a %STRAIGHT% template, you may use %BANKLEFT% a or %BANKRIGHT% tempate of the same speed instead."""
        "Gand Findsman":
           text: """The legendary Findsmen of Gand worship enshrouding mists of their home planet, using signs, augurs, and mystical rituals to track their quarry."""
        "Garven Dreis":
           text: """After you spend a focus token, you may choose 1 friendly ship at range 1-3. That ship gains 1 focus token."""
        "Garven Dreis (X-Wing)":
           text: """After you spend a focus token, you may choose 1 friendly ship at range 1-3. That ship gains 1 focus token."""
        "Gavin Darklighter":
           text: """While a friendly ship performs an attack, if the defender is in your %FRONTARC%, the attacker may change 1 %HIT% result to a %CRIT% result. %LINEBREAK% EXPERIMENTAL SCANNERS: You can acquire locks beyond range 3. You cannot acquite locks at range 1."""
        "Genesis Red":
           text: """After you acquire a lock, you must remove all of your focus and evade tokens. Then gain the same number of focus and evade tokens that the locked ship has. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Gideon Hask":
           text: """While you perform an attack against a damaged defender, roll 1 additional attack die."""
        "Gold Squadron Veteran":
           text: """ """
        "Grand Inquisitor":
           name: """Großinquisitor"""
           text: """Solange du in Angriffsreichweite 1 verteidigst, darfst du 1 %FORCE% ausgeben, um den Bonus für Reichweite 1 zu verhindern. Solange du einen Angriff gegen einen Verteidiger in Reichweite 2-3 durchführst, darfst du 1 %FORCE% ausgeben, um den Bonus für Reichweite 1 anzuwenden."""
        "Gray Squadron Bomber":
           text: """ """
        "Graz":
           text: """While you defend, if you are behind the attacker, roll 1 additional defense die. While you perform an attack, if you are behind the defender roll 1 additional attack die."""
        "Green Squadron Pilot":
           text: """VECTORED THRUSTERS: After you perform an action, you may perform a red %BOOST% action."""
        "Guri":
           text: """At the start of the Engagement Phase, if there is at least 1 enemy ship at range 0-1, you may gain 1 focus token.  %LINEBREAK% MICROTHRUSTERS: While you perform a barrel roll, you MUST use the (1 %BANKLEFT%) or (1 %BANKRIGHT%) template instead of the [1 %STRAIGHT%] template."""
        "Han Solo (Scum)":
           text: """Solange du verteidigst oder einen Angriff durchführst, falls der Angriff durch ein Hinderniss versperrt ist, darfst du 1 zusätzlichen Würfel werfen"""
        "Han Solo":
           text: """After you roll dice, if you are at range 0-1 of an obstacle, you may reroll all of your dice. This does not count as rerolling for the purpose of other effects."""
        "Heff Tobber":
           text: """After an enemy ship executes a maneuver, if it is at range 0, you may perform an action."""
        "Hera Syndulla":
           text: """After you reveal a red or blue maneuver, you may set your dial to another maneuver of the same difficulty. %LINEBREAK% LOCKED AND LOADED: While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus %REARARC% attack"""
        "Hera Syndulla (VCX-100)":
           text: """After you reveal a red or blue maneuver, you may set your dial to another maneuver of the same difficulty. TAIL GUN: While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship's Primary %FRONTARC% attack value."""
        "Hired Gun":
           text: """Just the mention of Imperial credits can bring a host of less-than-trustworthy individuals to your side."""
        "Horton Salm":
           text: """While you perform an attack, you may reroll 1 attack die for each other friendly ship at range 0-1 of the defender."""
        '"Howlrunner"':
           text: """While a friendly ship at range 0-1 performs a primary attack, that ship may reroll 1 attack die."""
        "Ibtisam":
           text: """After you fully execute a maneuver, if you are stressed, you may roll 1 attack die. On a %HIT% or %CRIT% result, remove 1 stress token."""
        "Iden Versio":
           text: """Before a friendly TIE/ln fighter at range 0-1 would suffer 1 or more damage, you may spend 1 %CHARGE%. If you do, prevent that damage."""
        "IG-88A":
           text: """At the start of the Engagement Phase, you may choose 1 friendly ship with %CALCULATE% on its action bar at range 1-3. If you do, transfer 1 of your calculate tokens to it. %LINEBREAK% ADVANCED DROID BRAIN: After you perform a %CALCULATE% action, gain 1 calculate token."""
        "IG-88B":
           text: """After you perform an attack that misses, you may perform a bonus %CANNON% attack. %LINEBREAK% ADVANCED DROID BRAIN: After you perform a %CALCULATE% action, gain 1 calculate token."""
        "IG-88C":
           text: """After you perform a %BOOST% action, you may perform an %EVADE% action. %LINEBREAK% ADVANCED DROID BRAIN: After you perform a %CALCULATE% action, gain 1 calculate token."""
        "IG-88D":
           text: """While you execute a Segnor's Loop (%SLOOPLEFT% or %SLOOPRIGHT%) maneuver, you may use another template of the same speed instead: either the turn (%TURNLEFT% or %TURNRIGHT%) of the same direction or the straight (%STRAIGHT%) template. %LINEBREAK% ADVANCED DROID BRAIN: After you perform a %CALCULATE% action, gain 1 calculate token."""
        "Imdaar Test Pilot":
           text: """STYGUM ARRAY: After you decloak, you may perform an %EVADE% action. At the Start of the End Phase, you may spend 1 evade token to gain one cloak token."""
        "Inaldra":
           text: """While you defend or perform an attack, you may suffer 1 %HIT% damage to reroll any number of your dice. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Inquisitor":
           text: """ """
        "Jake Farrell":
           text: """After you perform a %BARRELROLL% or %BOOST% action, you may choose a friendly ship at range 0-1. That ship may perform a %FOCUS% action. %LINEBREAK% VECTORED THRUSTERS: After you perform an action, you may perform a red %BOOST% action."""
        "Jakku Gunrunner":
           text: """SPACETUG TRACTOR ARRAY: ACTION: Choose a ship in your %FRONTARC% at range 1. That ship gains one tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1"""
        "Jan Ors":
           text: """While a friendly ship in your firing arc performs a primary attack, if you are not stressed, you may gain 1 stress token. If you do, that ship may roll 1 additional attack die."""
        "Jek Porkins":
           text: """After you receive a stress token, you may roll 1 attack die to remove it. On a %HIT% result, suffer 1 %HIT% damage."""
        "Joy Rekkoff":
           text: """While you perform an attack, you may spend 1 %CHARGE% from an equipped %TORPEDO% upgrade. If you do, the defender rolls 1 fewer defense die. %LINEBREAK% CONCORDIA FACEOFF: While you defend, if the attack range is 1 and you are in the attackers %FRONTARC%, change 1 result to an %EVADE% result"""
        "Kaa'to Leeachos":
           text: """At the start of the Engagement Phase, you may choose 1 friendly ship at range 0-2. If you do, transfer 1 focus or evade token from that ship to yourself."""
        "Kad Solus":
           text: """After you fully execute a red maneuver, gain 2 focus tokens."""
        "Kanan Jarrus":
           text: """While a friendly ship in your firing arc defends, you may spend 1 %FORCE%. If you do, the attacker rolls 1 fewer attack die. TAIL GUN: While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship's Primary %FRONTARC% attack value."""
        "Kashyyyk Defender":
           text: """Equipped with three wide-range Sureggi twin laser cannons, the Auzituck gunship acts as a powerful deterrent to slaver operations in the Kashyyyk system."""
        "Kath Scarlet":
           text: """While you perform a primary attack, if there is at least 1 friendly non-limited ship at range 0 of the defender, roll 1 additional attack die."""
        "Kavil":
           text: """While you perform a non-%FRONTARC% attack, roll 1 additional attack die."""
        "Ketsu Onyo":
           text: """At the start of the Engagement Phase, you may choose 1 ship in both your %FRONTARC% and %SINGLETURRETARC% at range 0-1. If you do, that ship gains 1 tractor token."""
        "Knave Squadron Escort":
           text: """EXPERIMENTAL SCANNERS: You can acquire locks beyond range 3. You cannot acquite locks at range 1."""
        "Koshka Frost":
           text: """While you defend or perform an attack, if the enemy ship is stressed, you may reroll 1 of your dice."""
        "Krassis Trelix":
           text: """You can perform %FRONTARC% special attacks from your %REARARC%. While you perform a special attack, you may reroll 1 attack die."""
        "Kullbee Sperado":
           text: """After you perform a %BARRELROLL% or %BOOST% action, you may flip your equipped %CONFIG% upgrade card."""
        "Kyle Katarn":
           text: """At the start of the Engagement Phase, you may transfer 1 of your focus tokens to a friendly ship in your firing arc."""
        "L3-37 (Escape Craft)":
           text: """Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%). %LINEBREAK% CO-PILOT: Solange du angedockt bist, hat dein Träger-Schiff deine Pilotenfähigkeit zusätzlich zu seiner eigenen."""
        "L3-37":
           text: """Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%)."""
        "Laetin A'shera":
           text: """After you defend or perform an attack, if the attack missed, gain 1 evade token. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Lando Calrissian (Scum) (Escape Craft)":
           text: """Nachdem du Würfel geworfen hast, falls du nicht gestrest bist, darfst du 1 Stressmarker erhalten um alle deine Leerseiten neu zu werfen. %LINEBREAK% CO-PILOT: Solange du angedockt bist, hat dein Träger-Schiff deine Pilotenfähigkeit zusätzlich zu seiner eigenen."""
        "Lando Calrissian":
           text: """After you fully execute a blue maneuver, you may choose a friendly ship at range 0-3. That ship may perform an action."""
        "Lando Calrissian (Scum)":
           text: """Nachdem du Würfel geworfen hast, falls du nicht gestrest bist, darfst du 1 Stressmarker erhalten um alle deine Leerseiten neu zu werfen"""
        "Latts Razzi":
           text: """At the start of the Engagement Phase, you may choose a ship at range 1 and spend a lock you have on that ship. If you do, that ship gains 1 tractor token."""
        '"Leebo"':
           text: """After you defend or perform an attack, if you spent a calculate token, gain 1 calculate token. %LINEBREAK% SENSOR BLINDSPOT: While you perform a primary attack at range 0-1, do not apply the range 0-1 bonus and roll 1 fewer attack die."""
        "Leevan Tenza":
           text: """After you perform a %BARRELROLL% or %BOOST% action, you may perform a red %EVADE% action."""
        "Lieutenant Blount":
           text: """While you perform a primary attack, if there is at least 1 other friendly ship at range 0-1 of the defender, you may roll 1 additional attack die."""
        "Lieutenant Karsabi":
           text: """Nachdem du einen Entwaffnet-Marker erhalten hast, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten, um 1 Entwaffnet-Marker zu entfernen."""
        "Lieutenant Kestal":
           text: """While you perform an attack, after the defender rolls defense dice, you may spend 1 focus token to cancel all of the defender's blank/%FOCUS% results."""
        "Lieutenant Sai":
           text: """Nachdem du eine %COORDINATE%-Aktion durchgeführt hast, falls das von dir gewählte Schiff eine Aktion aus deiner Aktionsleiste durchgeführt hat, darfst du jene Aktion durchführen."""
        "Lok Revenant":
           text: """ """
        "Lothal Rebel":
           text: """TAIL GUN: While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship's Primary %FRONTARC% attack value."""
        "Lowhhrick":
           text: """After a friendly ship at range 0-1 becomes the defender, you may spend 1 reinforce token. If you do, that ship gains 1 evade token."""
        "Luke Skywalker":
           text: """After you become the defender (before dice are rolled), you may recover 1 %FORCE%."""
        "Maarek Stele":
           text: """While you perform an attack, if the defender would be dealt a faceup damage card, instead draw 3 damage cards, choose 1, and discard the rest. %LINEBREAK% ADVANCED TARGETING COPMUTER: While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1 %HIT% result to a %CRIT% result."""
        "Magva Yarro":
           text: """While a friendly ship at range 0-2 defends, the attacker cannot reroll more than 1 attack die."""
        "Major Rhymer":
           text: """While you perform a %TORPEDO% or %MISSILE% attack, you may increase or decrease the range requirement by 1, to a limit of 0-3. %LINEBREAK% NIMBLE BOMBER: If you would drop a device using a %STRAIGHT% template, you may use %BANKLEFT% a or %BANKRIGHT% tempate of the same speed instead."""
        "Major Vermeil":
           text: """Solange du einen Angriff durchführst, falls der Verteidiger keine grünen Marker hat, darfst du 1 deiner Leerseiten- oder %FOCUS%-Ergebnisse in ein %HIT%-Ergebnis ändern. %LINEBREAK% Adaptive Querruder: Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, musst du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        "Major Vynder":
           text: """Solange du verteidigst, falls du entwaffnet bist, wirf 1 zusätzlichen Verteidigungswürfel."""
        "Manaroo":
           text: """At the start of the Engagement Phase, you may choose a friendly ship at range 0-1. If you do, transfer all green tokens assigned to you to that ship."""
        '"Mauler" Mithel':
           text: """While you perform an attack at attack range 1, roll 1 additional attack die."""
        "Miranda Doni":
           text: """While you perform a primary attack, you may either spend 1 shield to roll 1 additional attack die or, if you are not shielded, you may roll 1 fewer attack die to recover 1 shield."""
        "Moralo Eval":
           text: """If you would flee, you may spend 1 %CHARGE%. If you do, place yourself in reserves instead. At the start of the next Planning Phase, place youself within range 1 of the edge of the play area that you fled from."""
        "Nashtah Pup":
           text: """You can deploy only via emergency deployment, and you have the name, initiative, pilot ability, and ship %CHARGE% of the friendly, destroyed Hound's Tooth. %LINEBREAK% ESCAPE CRAFT SETUP: Requires the HOUND'S TOOTH. You MUST begin the game docked with the HOUND'S TOOTH"""
        "N'dru Suhlak":
           text: """While you perform a primary attack, if there are no other friendly ships at range 0-2, roll 1 additional attack die."""
        '"Night Beast"':
           text: """After you fully execute a blue maneuver, you may perform a %FOCUS% action."""
        "Norra Wexley":
           text: """While you defend, if there is an enemy ship at range 0-1, add 1 %EVADE% result to your dice results."""
        "Norra Wexley (Y-Wing)":
           text: """While you defend, if there is an enemy ship at range 0-1, you may add 1 %EVADE% result to your dice results."""
        "Nu Squadron Pilot":
           name: """Pilot der Nu-Staffel"""
           text: """ """
        "Obsidian Squadron Pilot":
           text: """ """
        "Old Teroch":
           text: """At the start of the Engagement Phase, you may choose 1 enemy ship at range 1. If you do and you are in its %FRONTARC%, it removes all of its green tokens. %LINEBREAK% CONCORDIA FACEOFF: While you defend, if the attack range is 1 and you are in the attackers %FRONTARC%, change 1 result to an %EVADE% result."""
        "Omicron Group Pilot":
           name: """Pilot der Omicron-Gruppe"""
           text: """ """
        "Onyx Squadron Ace":
           text: """FULL THROTTLE: After you FULLY execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Onyx Squadron Scout":
           text: """ """
        "Outer Rim Pioneer":
           text: """Befreundete Schiffe in Reichweite 0-1 können Angriffe in Reichweite 0 zu Hindernissen durchführen. %LINEBREAK% CO-PILOT: Solange du angedockt bist, hat dein Träger-Schiff deine Pilotenfähigkeit zusätzlich zu seiner eigenen."""
        "Outer Rim Smuggler":
           text: """ """
        "Palob Godalhi":
           text: """At the start of the Engagement Phase, you may choose 1 enemy ship in your firing arc at range 0-2. If you do, transfer 1 focus or evade token from that ship to yourself."""
        "Partisan Renegade":
           text: """ """
        "Patrol Leader":
           text: """ """
        "Phoenix Squadron Pilot":
           text: """VECTORED THRUSTERS: After you perform an action, you may perform a red %BOOST% action."""
        "Planetary Sentinel":
           text: """ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        "Prince Xizor":
           text: """While you defend, after the Neutralize Results step, another friendly ship at range 0-1 and in the attack arc may suffer 1 %HIT% or %CRIT% damage. If it does, cancel 1 matching result.  %LINEBREAK% MICROTHRUSTERS: While you perform a barrel roll, you MUST use the (1 %BANKLEFT%) or (1 %BANKRIGHT%) template instead of the [1 %STRAIGHT%] template."""
        '"Pure Sabacc"':
           text: """While you perform an attack, if you have 1 or fewer damage cards, you may roll 1 additional attack die. %LINEBREAK% ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        "Quinn Jast":
           text: """At the start of the Engagement Phase, you may gain 1 disarm token to recover 1 %CHARGE% on 1 of your equipped upgrades. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Rear Admiral Chiraneau":
           text: """While you perform an attack, if you are reinforced and the defender is in the %FULLFRONTARC% or %FULLREARARC% matching your reinforce token, you may change 1 of your %FOCUS% results to a %CRIT% result."""
        "Rebel Scout":
           text: """ """
        "Red Squadron Veteran":
           text: """ """
        '"Redline"':
           text: """You can maintain up to 2 locks. After you perform an action, you may acquire a lock."""
        "Rexler Brath":
           text: """After you perform an attack that hits, if you are evading, expose 1 of the defender's damage cards. %LINEBREAK% FULL THROTTLE: After you FULLY execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Rho Squadron Pilot":
           name: """Pilot der Rho-Staffel"""
           text: """ """
        "Roark Garnet":
           text: """At the start of the Engagement Phase, you may choose 1 ship in your firing arc. If you do, it engages at initiative 7 instead of its standard initiative value this phase."""
        "Rogue Squadron Escort":
           text: """EXPERIMENTAL SCANNERS: You can acquire locks beyond range 3. You cannot acquire locks at range 1."""
        "Saber Squadron Ace":
           name: """Fliegerass der Saber-Staffel"""
           text: """Automatische Schubdüsen: Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Sabine Wren":
           text: """Before you activate, you may perform a %BARRELROLL% or %BOOST% action. %LINEBREAK% LOCKED AND LOADED: While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus %REARARC% attack"""
        "Sabine Wren (Scum)":
           text: """While you defend, if the attacker is in your %SINGLETURRETARC% at range 0-2, you may add 1 %FOCUS% result to your dice results."""
        "Sabine Wren (TIE Fighter)":
           text: """Before you activate, you may perform a %BARRELROLL% or %BOOST% action."""
        "Sarco Plank":
           text: """While you defend, you may treat your agility value as equal to the speed of the maneuver you executed this round. %LINEBREAK% SPACETUG TRACTOR ARRAY: ACTION: Choose a ship in your %FRONTARC% at range 1. That ship gains one tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1"""
        "Saw Gerrera":
           text: """While a damaged friendly ship at range 0-3 performs an attack, it may reroll 1 attack die."""
        "Scarif Base Pilot":
           name: """Pilot der Scarif-Basis"""
           text: """Adaptive Querruder: Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, musst du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        "Scimitar Squadron Pilot":
           text: """NIMBLE BOMBER: If you would drop a device using a %STRAIGHT% template, you may use %BANKLEFT% a or %BANKRIGHT% template of the same speed instead."""
        '"Scourge" Skutu':
           text: """While you perform an attack against a defender in your %BULLSEYEARC%, roll 1 additional attack die."""
        "Serissu":
           text: """While a friendly ship at range 0-1 defends, it may reroll 1 of its dice. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Seventh Sister":
           name: """Siebte Schwester"""
           text: """Solange du einen Primärangriff durchführst, vor dem Schritt \"Ergebnisse modifizieren\", darfst du 2 %FORCE% ausgeben, um 1 %EVADE%-Ergebnis zu negieren."""
        "Seyn Marana":
           text: """While you perform an attack, you may spend 1 %CRIT% result. If you do, deal 1 facedown damage card to the defender, then cancel you remaining results."""
        "Shadowport Hunter":
           text: """Crime syndicates augment the lethal skills of their loyal contractors with the best technology available, like the fast and formidable Lancer-class pursuit craft."""
        "Shara Bey":
           text: """While you defend or perform a primary attack, you may spend 1 lock you have on the enemy ship to add 1 %FOCUS% result to your dice results."""
        "Sienar Specialist":
           text: """ """
        '"Sigma Squadron Ace"':
           text: """STYGUM ARRAY: After you decloak, you may perform an %EVADE% action. At the Start of the End Phase, you may spend 1 evade token to gain one cloak token."""
        "Skull Squadron Pilot":
           text: """CONCORDIA FACEOFF: While you defend, if the attack range is 1 and you are in the attackers %FRONTARC%, change 1 result to an %EVADE% result."""
        "Sol Sixxa":
           text: """If you would drop a device using a [1 %STRAIGHT%] template, you may drop it using any other speed 1 template instead."""
        "Soontir Fel":
           text: """Zu Beginn der Kampfphase, falls ein feindliches Schiff in deinem %BULLSEYEARC% ist, erhalte 1 %FOCUS%-Marker. %LINEBREAK% Automatische Schubdüsen: Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Spice Runner":
           text: """ """
        "Storm Squadron Ace":
           text: """ADVANCED TARGETING COPMUTER: While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1 %HIT% result to a %CRIT% result."""
        "Sunny Bounder":
           text: """While you defend or perform an attack, after you roll or reroll your dice, if you have the same result on each of your dice, you may add 1 matching result. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Tala Squadron Pilot":
           text: """ """
        "Talonbane Cobra":
           text: """While you defend at attack range 3 or perform an attack at range 1, roll 1 additional die."""
        "Tansarii Point Veteran":
           text: """WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Tel Trevura":
           text: """If you would be destroyed, you may spend 1 %CHARGE%. If you do, discard all of your damage cards, suffer 5 %HIT% damage, and place yourself in reserves instead. At the start of the next planning phase, place yourself within range 1 of your player edge."""
        "Tempest Squadron Pilot":
           text: """ADVANCED TARGETING COPMUTER: While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1 %HIT% result to a %CRIT% result."""
        "Ten Numb":
           text: """While you defend or perform an attack, you may spend 1 stress token to change all of your %FOCUS% results to %EVADE% or %HIT% results."""
        "Thane Kyrell":
           text: """While you perform an attack, you may spend 1 %FOCUS%, %HIT%, or %CRIT% result to look at the defender's facedown damage cards, choose 1, and expose it."""
        "Tomax Bren":
           text: """After you perform a %RELOAD% action, you may recover 1 %CHARGE% token on 1 of your equipped %TALENT% upgrade cards. %LINEBREAK% NIMBLE BOMBER: If you would drop a device using a %STRAIGHT% template, you may use %BANKLEFT% a or %BANKRIGHT% tempate of the same speed instead."""
        "Torani Kulda":
           text: """After you perform an attack, each enemy ship in your %BULLSEYEARC% suffers 1 %HIT% damage unless it removes 1 green token. %LINEBREAK% DEAD TO RIGHTS: While you perform an attack, if the defender is in your %BULLSEYEARC%, defense dice cannot be modified using green tokens."""
        "Torkil Mux":
           text: """At the start of the Engagement Phase, you may choose 1 ship in your firing arc. If you do, that ship engages at initiative 0 instead of its normal initiative value this round."""
        "Trandoshan Slaver":
           text: """ """
        "Turr Phennir":
           text: """Nachdem du einen Angriff durchgeführt hast, darfst du eine %BARRELROLL%- oder %BOOST%-Aktion durchführen, auch falls du gestresst bist. %LINEBREAK% Automatische Schubdüsen: Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Unkar Plutt":
           text: """At the start of the Engagement Phase, if there are one or more other ships at range 0, you and each other ship at range 0 gain 1 tractor token. %LINEBREAK% SPACETUG TRACTOR ARRAY: ACTION: Choose a ship in your %FRONTARC% at range 1. That ship gains one tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1"""
        "Valen Rudor":
           text: """After a friendly ship at range 0-1 defends (after damage is resolved, if any), you may perform an action."""
        "Ved Foslo":
           text: """While you execute a maneuver, you may execute a maneuver of the same bearing and difficulty of a speed 1 higher or lower instead. %LINEBREAK% ADVANCED TARGETING COPMUTER: While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1 %HIT% result to a %CRIT% result."""
        "Viktor Hel":
           text: """After you defend, if you did not roll exactly 2 defense dice, the attack gains 1 stress token."""
        '"Vizier"':
           name: """\"Wesir\""""
           text: """Nachdem du unter Verwendung deiner Adaptiven Querruder ein Manöver mit Geschwindigkeit 1 vollständig ausgeführt hast, darfst du eine %COORDINATE%-Aktion durchführen. Falls du das tust, überspringe deinen Schritt \"Aktion ausführen\" %LINEBREAK% Adaptive Querruder: Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, musst du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        '"Wampa"':
           text: """While you perform an attack, you may spend 1 %CHARGE% to roll 1 additional attack die. After defending, lose 1 %CHARGE%."""
        "Warden Squadron Pilot":
           text: """ """
        "Wedge Antilles":
           text: """While you perform an attack, the defender rolls 1 fewer defense die."""
        '"Whisper"':
           text: """After you perform an attack that hits, gain 1 evade token. STYGUM ARRAY: After you decloak, you may perform an %EVADE% action. At the Start of the End Phase, you may spend 1 evade token to gain one cloak token."""
        "Wild Space Fringer":
           text: """SENSOR BLINDSPOT: While you perform a primary attack at range 0-1, do not apply the range 0-1 bonus and roll 1 fewer attack die."""
        "Wullffwarro":
           text: """While you perform a primary attack, if you are damaged, you may roll 1 additional attack die."""
        "Zealous Recruit":
           text: """CONCORDIA FACEOFF: While you defend, if the attack range is 1 and you are in the attackers %FRONTARC%, change 1 result to an %EVADE% result"""
        '"Zeb" Orrelios':
           text: """While you defend, %CRIT% results are neutralized before %HIT% results. %LINEBREAK% LOCKED AND LOADED: While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus %REARARC% attack"""
        '"Zeb" Orrelios (Sheathipede)':
           text: """While you defend, %CRIT% results are neutralized before %HIT% results. %LINEBREAK% COMMS SHUTTLE: While you are docked, your carrier ship gains %COORDINATE%. Before your carrier shpi activates, it may perform a %COORDINATE% action."""
        '"Zeb" Orrelios (TIE Fighter)':
           text: """While you defend, %CRIT% results are neutralized before %HIT% results."""
        "Zertik Strom":
           text: """During the End Phase, you may spend a lock you have on an enemy ship to expose 1 of that ship's damage cards. %LINEBREAK% ADVANCED TARGETING COPMUTER: While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1 %HIT% result to a %CRIT% result."""
        "Zuckuss":
           text: """While you perform a primary attack, you may roll 1 additional attack die. If you do, the defender rolls 1 additional defense die."""
        "Poe Dameron":
           text: """After you perform an action, you may spend 1 %CHARGE% to perform a white action, treating it as red. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Lieutenant Bastian":
           text: """After a ship at range 1-2 is dealt a damage card, you may acquire a lock on that ship. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        '"Midnight"':
           text: """While you defend or perform an attack, if you have a lock on the enemy ship, that ship's dice cannot be modified."""
        '"Longshot"':
           text: """While you perform a primary attack at attack range 3, roll 1 additional attack die."""
        '"Muse"':
           text: """At the start of the Engagement Phase, you may choose a friendly ship at range 0-1. If you do, that ship removes 1 stress token."""
        "Kylo Ren":
           text: """ After you defend, you may spend 1 %FORCE% to assign the I'll Show You the Dark Side condition to the attacker. %LINEBREAK% AUTOTHRUSTERS: After you perform an action. you may perform a red %BARRELROLL% or a red %BOOST% action."""
        '"Blackout"':
           text: """ ??? %LINEBREAK% AUTOTHRUSTERS: After you perform an action. you may perform a red %BARRELROLL% or a red %BOOST% action."""
        "Lieutenant Dormitz":
           text: """ ... are placed, other ... be placed anywhere in ... range 0-2 of you. %LINEBREAK% ... : while you perform a %CANNON% ... additional die. """
        "Tallissan Lintra":
           text: """While an enemy ship in your %BULLSEYEARC% performs an attack, you may spend 1 %CHARGE%.  If you do, the defender rolls 1 additional die."""
        "Lulo Lampar":
           text: """While you defend or perform a primary attack, if you are stressed, you must roll 1 fewer defense die or 1 additional attack die."""
        '"Backdraft"':
           text: """ ... perform a %TURRET% primary ... defender is in your %BACKARC% ... additional dice. %LINEBREAK% ... TURRET: You can... indicator only to your ... must treat the %FRONTARC% ... your equipped %MISSILE% ... as %TURRET%. """
        '"Quickdraw"':
           text: """ ??? %LINEBREAK% ... TURRET: You can... indicator only to your ... must treat the %FRONTARC% ... your equipped %MISSILE% ... as %TURRET%. """    
        "Rey":
           text: """ ... perform an attack, ... in your %FRONTARC%, you may ... change 1 of your blank ... or %HIT% result. """
        "Han Solo (Resistance)":
           text: """ ??? """
        "Chewbacca (Resistance)":
           text: """ ??? """
        "Captain Seevor":
           text: """ While you defend or perform an attack, before the attack dice are rolled, if you are not in the enemy ship's %BULLSEYEARC%, you may spend 1 %CHARGE%. If you do, the enemy ship gains one jam token. """
        "Mining Guild Surveyor":
           text: """ """
        "Ahhav":
           text: """ ??? """
        "Finch Dallow":
           text: """ ... drop a bomb, you ... play area touching ... instead. """

            
            
    upgrade_translations =
        "0-0-0":
           text: """<i>Abschaum oder Staffel, die Darth Vader enthält</i> %LINEBREAK% Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in Reichweite 0-1 wählen. Falls du das tust, erhälst du 1 %CALCULATE%-Marker, es sei denn, jenes Schiff entscheidet sich dafür, 1 Stressmarker zu erhalten."""
        "4-LOM":
           text: """While you perform an attack, after rolling attack dice, you may name a type of green token. If you do, gain 2 ion tokens and, during this attack, the defender cannot spend tokens of the named type."""
        "Ablative Plating":
           text: """<i>Requires: Medium or Large Base</i> %LINEBREAK% Before you would suffer damage from an obstacle or from a friendly bomb detonating, you may spend 1 %CHARGE%. If you do, prevent 1 damage."""
        "Admiral Sloane":
           text: """Nachdem ein anderes befreundetes Schiff in Reichweite 0-3 verteidigt hat, falls es zerstört ist, erhält der Angreifer 2 Stressmarker. Sobald ein befreundetes Schiff in Reichweite 0-3 einen Angriff gegen ein gestresstes Schiff durchführt, darf es 1 Angriffswürfel neu werfen."""
        "Adv. Proton Torpedoes":
           text: """Attack (%LOCK%): Spend 1 %CHARGE%. Change 1 %HIT% result to a %CRIT% result."""
        "Advanced Sensors":
           text: """After you reveal your dial, you may perform 1 action. If you do, you cannot perform another action during your activation."""
        "Advanced SLAM":
           text: """<i>Requires: %SLAM%</i> %LINEBREAK% After you perform a %SLAM% action, if you fully executed that maneuver, you may perform a white action on your action bar, treating that action as red."""
        "Afterburners":
           text: """<i>Requires: Small Base</i> %LINEBREAK% After you fully execute a speed 3-5 maneuver, you may spend 1 %CHARGE% to perform a %BOOST% action, even while stressed."""
        "Agent Kallus":
           text: """Aufbau: Ordne 1 feindlichen Schiff den zustand Gejagt zu. Solange du einen Angriff gegen ein S chiff mit dem Zustand Gejagt durchführst, darfst du 1 deiner %FOCUS%-Ergebnisse in ein %HIT%-Ergebnis ändern."""
        "Agile Gunner":
           text: """Während der Endphase darfst du deinen %SINGLETURRETARC%-Anzeiger drehen"""
        "Andrasta":
           text: """<i>Adds: %RELOAD%</i> %LINEBREAK% Add %DEVICE% slot."""
        "Barrage Rockets":
           text: """Attack (%FOCUS%): Spend 1 %CHARGE%. If the defender is in your %BULLSEYEARC%, you may spend 1 or more %CHARGE% to reroll that many attack dice."""
        "Baze Malbus":
           text: """Solange du eine %FOCUS%-Aktion durchführst darfst du sie behandeln, als wäre sie rot. Falls du das tust, erhalte 1 zusätzlichen Fokusmarker für jedes feindliche Schiff in Reichweite 0-1, bis zu einem Maximum von 2."""
        "Bistan":
           text: """After you perform a primary attack, if you are focused, you may perform a bonus %SINGLETURRETARC% attack against a ship you have not already attacked this round."""
        "Boba Fett":
           text: """Aufbau: Beginne in der Reserve. Am Ende des Aufbaus platziere dich selbst in Reichweite 0 eines Hindernisses und jenseits von Reichweite 3 aller feindlichen Schiffe."""
        "Bomblet Generator":
           text: """Bomb During the System Phase, you may spend 1 %CHARGE% to drop a Bomblet with the [1 %STRAIGHT%] template. At the start of the Activation Phase, you may spend 1 shield to recover 2 %CHARGE%."""
        "Bossk":
           text: """After you perform a primary attack that misses, if you are not stressed you must receive 1 stress token to perform a bonus primary attack against the same target."""
        "BT-1":
           text: """<i>Requires: Scum or Darth Vader</i> %LINEBREAK% While you perform an attack, you may change 1 %HIT% result to a %CRIT% result for each stress token the defender has."""
        "C-3PO":
           text: """<i>Fügt %CALCULATE% hinzu</i> %LINEBREAK% Bevor du Verteidigungswürfel wirfst, darfst du 1 %CALCULATE%-Marker ausgeben, um laut eine Zahl von 1 oder höher zu raten. Falls du das tust und genau so viele %EVADE%-Ergebnisse wirfst, wie du geraten hast, füge 1 %EVADE%-Ergebnis hinzu. Nachdem du die %CALCULATE%-Aktion durchgeführt hast, erhalte 1 %CALCULATE%-Marker."""
        "Cad Bane":
           text: """Nachdem du ein Gerät abgeworfen oder gestartet hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Cassian Andor":
           text: """Während der Systemphase darfst du 1 feindliches Schiff in Reichweite 1-2 wählen und laut eine Flugrichtung und Geschwindigkeit raten, dann sieh dir das Rad jenes Schiffes an. Falls du die Flugrichtung und Geschwindigkeit des Manövers richtig geraten hast, darfst du dein Rad auf ein anderes Manöver einstellen."""
        "Chewbacca":
           text: """Zu Beginn der Kampfphase darst du 2 %CHARGE% ausgeben, um 1 offene Schadenskarte zu reparieren."""
        "Chewbacca (Scum)":
           text: """Zu Beginn der Endphase darfst du 1 Fokusmarker ausgeben, um 1 deiner offenen Schadenskarten zu reparieren."""
        '"Chopper" (Astromech)':
           text: """Action: Spend 1 non-recurring %CHARGE% from another equipped upgrade to recover 1 shield. Action: Spend 2 shields to recover 1 non-recurring %CHARGE% on an equipped upgrade."""
        '"Chopper" (Crew)':
           text: """Während des Schrittes \"Aktion durchführen\" darfst du 1 Aktion durchführen, auch solange du gestresst bist. Nachdem du eine Aktion durchgeführt hast, solange du gestresst bist, erleide 1 %HIT%-Schaden, es sei denn, du legst 1 deiner Schadenskarten offen."""
        "Ciena Ree":
           text: """<i>Benötigt: %COORDINATE%</i> %LINEBREAK% Nachdem du eine %COORDINATE%-Aktion durchgeführt hast, falls das von dir koordinierte Schiff eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hat, darf es 1 Stressmarker erhalten, um sich um 90° zu drehen."""
        "Cikatro Vizago":
           text: """Während der Endphase darfst du 2 %ILLICIT%-Aufwertungen wählen, die befreundete Schiffe in Reichweite 0-1 ausgerüstet haben. Falls du das tust, darfst du diese Aufwertungen austauschen. Spielende: Lege alle %ILLICIT%-Aufwertungen auf ihre ursprünglichen Schiffe zurück."""
        "Cloaking Device":
           text: """<i>Requires: Small or Medium Base</i> %LINEBREAK% Action: Spend 1 %CHARGE% to perform a %CLOAK% action. At the start of the Planning Phase, roll 1 attack die. On a %FOCUS% result, decloak or discard your cloak token."""
        "Cluster Missiles":
           text: """Attack (%LOCK%): Spend 1 %CHARGE%. After this attack, you may perform this attack as a bonus attack against a different target at range 0-1 of the defender, ignoring the %LOCK% requirement."""
        "Collision Detector":
           text: """While you boost or barrel roll, you can move through and overlap obstacles. After you move through or overlap an obstacle, you may spend 1 %CHARGE% to ignore its effects until the end of the round."""
        "Composure":
           text: """<i>Voraussetzung: %FOCUS%</i> %LINEBREAK% Nachdem eine deiner Aktionen scheitert, falls du keine grünen Marker hast, darfst du eine %FOCUS%-Aktion durchführen."""
        "Concussion Missiles":
           text: """Attack (%LOCK%): Spend 1 %CHARGE%. After this attack hits, each ship at range 0-1 of the defender exposes 1 of its damage cards."""
        "Conner Nets":
           text: """Mine During the System Phase, you may spend 1 %CHARGE% to drop a Conner Net using the [1 %STRAIGHT%] template. This card's %CHARGE% cannot be recovered."""
        "Contraband Cybernetics":
           text: """Before you activate, you may spend 1 %CHARGE%. If you do, until the end of the round, you can perform actions and execute red maneuvers, even while stressed."""
        "Crack Shot":
           text: """While you perform a primary attack, if the defender is in your %BULLSEYEARC%, before the Neutralize Results step, you may spend 1 %CHARGE% to cancel 1 %EVADE% result."""
        "Daredevil":
           text: """<i>Requires: White %BOOST% and Small Base</i> %LINEBREAK% While you perform a white %BOOST% action, you may treat it as red to use the [1%TURNLEFT%] or [1 %TURNRIGHT%] template instead."""
        "Darth Vader":
           text: """Zu Beginn der Kampffahse darfst du 1 Schiff in deinem Feuerwinkel in Reichweite 0-2 wählen und 1 %FORCE% ausgeben. Falls du das tust, erleidet jenes Schiff 1 %HIT%-Schaden, es sei den, es entscheidet sich dafür, 1 grünen Marker zu entfernen. """
        "Dauntless":
           text: """After you partially execute a maneuver, you may perform 1 white action, treating that action as red."""
        "Deadman's Switch":
           text: """After you are destroyed, each other ship at range 0-1 suffers 1 %HIT% damage."""
        "Death Troopers":
           text: """Während der Aktivierungsphase können feindliche Schiffe in Reichweite 0-1 keine Stressmarker entfernen."""
        "Debris Gambit":
           text: """<i>Requires: Small or Medium Base. Adds: <r>%EVADE%</r></i> %LINEBREAK% While you perform a red %EVADE% action, if there is an obstacle at range 0-1, treat the action as white instead."""
        "Dengar":
           text: """After you defend, if the attacker is in your firing arc, you may spend 1 %CHARGE%. If you do, roll 1 attack die unless the attacker chooses to remove 1 green token. On a %HIT% or %CRIT% result, the attacker suffers 1 %HIT% damage."""
        "Director Krennic":
           text: """<i>Fügt %LOCK% hinzu</i> %LINEBREAK% Aufbau: Bevor die Streitkräfte platziert werden, ordne den Zustand Optimierter Prototyp einem anderen befreundeten Schiff zu."""
        "Dorsal Turret":
           text: """<i>Adds: %ROTATEARC%</i> %LINEBREAK%"""
        "Electronic Baffle":
           text: """During the End Phase, you may suffer 1 %HIT% damage to remove 1 red token."""
        "Elusive":
           text: """<i>Requires: Small or Medium Base</i> %LINEBREAK% While you defend, you may spend 1 %CHARGE% to reroll 1 defense die. After you fully execute a red maneuver, recover 1 %CHARGE%."""
        "Emperor Palpatine":
           text: """Solange ein anderes befreundetes Schiff verteidigt oder einen Angriff durchführt, darfst du 1 %FORCE% ausgeben, um 1 seiner Würfel so zu modifizieren, als hätte jenes Schiff 1 %FORCE% ausgegeben."""
        "Engine Upgrade":
           text: """<i>Requires: <r>%BOOST%</r>. Adds: %BOOST% %LINEBREAK% This upgrade has a variable cost, worth 3, 6, or 9 points depending on if the ship base is small, medium or large respectively.</i>"""
        "Expert Handling":
           text: """<i>Requires: <r>%BARRELROLL%</r>. Adds: %BARRELROLL% %LINEBREAK% This upgrade has a variable cost, worth 2, 4, or 6 points depending on if the ship base is small, medium or large respectively.</i>"""
        "Ezra Bridger":
           text: """After you perform a primary attack, you may spend 1 %FORCE% to perform a bonus %SINGLETURRETARC% attack from a %SINGLETURRETARC% you have not attacked from this round. If you do and you are stressed, you may reroll 1 attack die."""
        "Fearless":
           text: """While you perform a %FRONTARC% primary attack, if the attack range is 1 and you are in the defender's %FRONTARC%, you may change 1 of your results to a %HIT% result."""
        "Feedback Array":
           text: """Before you engage, you may gain 1 ion token and 1 disarm token. If you do, each ship at range 0 suffers 1 %HIT% damage."""
        "Fifth Brother":
           text: """While you perform an attack, you may spend 1 %FORCE% to change 1 of your %FOCUS% results to a %CRIT% result."""
        "Fire-Control System":
           text: """While you perform an attack, if you have a lock on the defender, you may reroll 1 attack die. If you do, you cannot spend your lock during this attack."""
        "Freelance Slicer":
           text: """Solange du verteidigst, bevor die Angriffswürfel geworfen werden, darfst du eine Zielerfassung, die du auf dem Angreifer hast, ausgeben, um 1 Angriffswürfel zu werfen. Falls du das tust erhält der Angreifer 1 %JAM%-Marker. Dann, bei einem %HIT%- oder %CRIT%-Ergebnis, erhälst du 1 %JAM%-Marker."""
        '"Genius"':
           text: """After you fully execute a maneuver, if you have not dropped or launched a device this round, you may drop 1 bomb."""
        "Ghost":
           text: """You can dock 1 attack shuttle or Sheathipede-Class shuttle. Your docked ships can deploy only from your rear guides."""
        "Grand Inquisitor":
           text: """Nachdem ein feindliches Schiff in Reichweite 0-2 sein Rad aufgedeckt hat, darfst du 1 %FORCE% ausgeben, um 1 weiße Aktion aus deiner Aktionsleiste durchzuführen, wobei du jene Aktion behandelst, als wäre sie rot."""
        "Grand Moff Tarkin":
           text: """<i>Requires: %LOCK%</i> %LINEBREAK% During the System Phase, you may spend 2 %CHARGE%. If you do, each friendly ship may acquire a lock on a ship that you have locked."""
        "Greedo":
           text: """While you perform an attack, you may spend 1 %CHARGE% to change 1 %HIT% result to a %CRIT% result. While you defend, if your %CHARGE% is active, the attacker may change 1 %HIT% result to a %CRIT% result."""
        "Han Solo":
           text: """During the Engagement Phase, at initiative 7, you may perform a %SINGLETURRETARC% attack. You cannot attack from that %SINGLETURRETARC% again this round."""
        "Han Solo (Scum)":
           text: """Bvor du kämpfst, darfst du eine rote %FOCUS%-Aktion durchführen."""
        "Havoc":
           text: """Remove %CREW% slot. Add %SENSOR% and %ASTROMECH% slots."""
        "Heavy Laser Cannon":
           text: """Attack: After the Modify Attack Dice step, change all %CRIT% results to %HIT% results."""
        "Heightened Perception":
           text: """At the start of the Engagement Phase, you may spend 1 %FORCE%. If you do, engage at initiative 7 instead of your standard initiative value this phase."""
        "Hera Syndulla":
           text: """Du kannst rote Manöver ausführen, auch solange du gestresst bist. Nachdem du ein rotes Manöver vollständig ausgeführt hast, falls du 3 oder mehr Stressmarker hast, entferne 1 Stressmarker und erleide 1 %HIT%-Schaden."""
        "Homing Missiles":
           text: """Attack (%LOCK%): Spend 1 %CHARGE%. After you declare the defender, the defender may choose to suffer 1 %HIT% damage. If it does, skip the Attack and Defense Dice steps and the attack is treated as hitting."""
        "Hotshot Gunner":
           text: """While you perform a %SINGLETURRETARC% attack, after the Modify Defense Dice step, the defender removes 1 focus or calculate token."""
        "Hound's Tooth":
           text: """1 Z-95 AF4 headhunter can dock with you."""
        "Hull Upgrade":
           text: """Add 1 Hull Point %LINEBREAK%<i>This upgrade has a variable cost, worth 2, 3, 5, or 7 points depending on if the ship agility is 0, 1, 2, or 3 respectively.</i>"""
        "IG-2000":
           text: """You have the pilot ability of each other friendly ship with the IG-2000 upgrade."""
        "IG-88D":
           text: """<i>Füge %CALCULATE% hinzu</i> %LINEBREAK% Du hast die Pilotenfähigkeit jedes anderen befreundeten Schiffes mit der Aufwertung IG-2000. Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 %CALCULATE%-Marker."""
        "Inertial Dampeners":
           text: """Before you would execute a maneuver, you may spend 1 shield. If you do, execute a white [0 %STOP%] instead of the maneuver you revealed, then gain 1 stress token."""
        "Informant":
           text: """Aufbau: Nachdem die Streitkräfte platziert worden sind, wähle 1 feindliches Schiff und ordne ihm den Zustand Abhörgerät zu."""
        "Instinctive Aim":
           text: """While you perform a special attack, you may spend 1 %FORCE% to ignore the %FOCUS% or %LOCK% requirement."""
        "Intimidation":
           text: """Solange ein feindliches Schiff in Reichweite 0 verteidigt, wirft es 1 Verteidigungswürfel weniger."""
        "Ion Cannon Turret":
           text: """<i>Adds: %ROTATEARC%</i> %LINEBREAK% Attack: If this attack hits, spend 1 %HIT% or %CRIT% result to cause the defender to suffer 1 %HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "Ion Cannon":
           text: """Attack: If this attack hits, spend 1 %HIT% or %CRIT% result to cause the defender to suffer 1 %HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "Ion Missiles":
           text: """Attack (%LOCK%): Spend 1 %CHARGE%. If this attack hits, spend 1 %HIT% or %CRIT% result to cause the defender to suffer 1 %HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "Ion Torpedoes":
           text: """Attack (%LOCK%): Spend 1 %CHARGE%. If this attack hits, spend 1 %HIT% or %CRIT% result to cause the defender to suffer 1 %HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "ISB Slicer":
           text: """During the End Phase, enemy ships at range 1-2 cannot remove jam tokens."""
        "Jabba the Hutt":
           text: """During the End Phase, you may choose 1 friendly ship at range 0-2 and spend 1 %CHARGE%. If you do, that ship recovers 1 %CHARGE% on 1 of its equipped %ILLICIT% upgrades."""
        "Jamming Beam":
           text: """Attack: If this attack hits, all %HIT%/%CRIT% results inflict jam tokens instead of damage."""
        "Juke":
           text: """<i>Requires: Small or Medium Base</i> %LINEBREAK% While you perform an attack, if you are evading, you may change 1 of the defender's %EVADE% results to a %FOCUS% result."""
        "Jyn Erso":
           text: """Falls ein befreundetes Schiff in Reichweite 0-3 einen %FOCUS%-Marker erhalten würde, darf es stattdessen 1 %EVADE%-Marker erhalten."""
        "Kanan Jarrus":
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-2 ein weißes Manöver ausgeführt hat, darfst du 1 %FORCE% ausgeben, um 1 Stressmarker von jenem Schiff zu entfernen. """
        "Ketsu Onyo":
           text: """Zu Beginn der Endphase darst du 1 feindliches Schiff in Reichweite 0-2 in deinem Feuerwinkel wählen. Falls du das tust, entfernt jenes Schiff seine Fangstrahlmarker nicht."""
        "L3-37":
           text: """<b>L3-37:</b> AUFBAU: Rüste diese Seite offen aus. %LINEBREAK% Solange du verteidigst, darfst du diese Karte umdrehen. Falls du das tust, muss der Angreifer alle Angriffswürfel neu werfen. %LINEBREAK% <b>Programmierung von L3-37:</b> Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%)."""
        "Lando Calrissian":
           text: """Aktion: Wirf 2 Verteidigungswürfel. Erhalte 1 %FOCUS%-Marker für jedes %FOCUS%-Ergebnis. Erhalte 1 %EVADE%-Marker für jedes %EVADE%-Ergebnis. Falls beide Ergebnisse Leerseiten sind, wählt der Gegenspieler %FOCUS%- oder %EVADE%-Marker. Du erhälst 1 Marker."""
        "Lando Calrissian (Scum)":
           text: """Nachdem du die Würfel geworfen hast, darst du 1 grünen Marker ausgeben, um bis zu 2 deiner Ergebnisse neu zu werfen."""
        "Lando's Millennium Falcon":
           text: """1 Rettungskapsel darf bei dir andocken. %LINEBREAK% Solange ein Rettungskapsel bei dir angedockt ist, darfst du seine Schilde ausgeben, als wären sie auf deiner Schniffskarte. %LINEBREAK% Solange du einen Primangriff gegen ein gestresstes Schiff durchführst, wirfst du 1 zusätzlichen Angriffswürfel."""
        "Latts Razzi":
           text: """While you defend, if the attacker is stressed, you may remove 1 stress from the attacker to change 1 of your blank/%FOCUS% results to an %EVADE% result."""
        "Leia Organa":
           text: """At the start of the Activation Phase, you may spend 3 %CHARGE%. During this phase, each friendly ship reduces the difficulty of its red maneuvers."""
        "Lone Wolf":
           text: """While you defend or perform an attack, if there are no other friendly ships at range 0-2, you may spend 1 %CHARGE% to reroll 1 of your dice."""
        "Luke Skywalker":
           text: """At the start of the Engagement Phase, you may spend 1 %FORCE% to rotate your %SINGLETURRETARC% indicator."""
        "Magva Yarro":
           text: """Nachdem du verteidigt hast, falls der Angriff getroffen hat, darfst du den Angreifer als Ziel erfassen."""
        "Marauder":
           text: """While you perform a primary %REARARC% attack, you may reroll 1 attack die. Add %GUNNER% slot."""
        "Marksmanship":
           text: """While you perform an attack, if the defender is in your %BULLSEYEARC%, you may change 1 %HIT% result to a %CRIT% result."""
        "Maul":
           text: """<i>Abschaum oder Staffel, die Ezra Bridger enthält</i> %LINEBREAK% Nachdem du Schaden erlitten hast, darfst du 1 Stressmarker erhalten, um 1 %FORCE% wiederherzustellen. Du kannst \"Dunkle Seite\"-Aufwertungen ausrüsten."""
        "Millennium Falcon":
           text: """<i>Adds: %EVADE%</i> %LINEBREAK% While you defend, if you are evading, you may reroll 1 defense die."""
        "Minister Tua":
           text: """Zu Beginn der Kampfphase, falls du beschädigt bist, darfst du eine rote %REINFORCE%-Aktion durchführen."""
        "Mist Hunter":
           text: """<i>Adds: %BARRELROLL% </i> %LINEBREAK% Add %CANNON% slot."""
        "Moff Jerjerrod":
           text: """<i>Benötigt: %COORDINATE%</i> %LINEBREAK% Während der Systemphase darfst du 2 %CHARGE% ausgeben. Falls du das tust, wähle die [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Schablone. Jedes befreundete Schiff darf unter Verwendung jener Schablone eine rote %BOOST%-Aktion durchführen."""
        "Moldy Crow":
           text: """Gain a %FRONTARC% primary weapon with a value of \"3.\" During the End Phase, do not remove up to 2 focus tokens."""
        "Munitions Failsafe":
           text: """While you perform a %TORPEDO% or %MISSILE% attack, after rolling attack dice, you may cancel all dice results to recover 1 %CHARGE% you spent as a cost for the attack."""
        "Nien Nunb":
           text: """Verringere die Schwierigkeit deiner Drehmanöver [%BANKLEFT% und %BANKRIGHT%]."""
        "Novice Technician":
           text: """Am Ende der Runde darfst du 1 Angriffswürfel werfen, um 1 offene Schadenskarte zu reparieren. Dann, bei einem %HIT%-Ergebnis, lege 1 Schadenskarte offen."""
        "Os-1 Arsenal Loadout":
           text: """While you have exactly 1 disarm token, you can still perform %TORPEDO% and %MISSILE% attacks against targets you have locked. If you do, you cannot spend you lock during the attack. Add %TORPEDO% and %MISSILE% slots."""
        "Outmaneuver":
           text: """While you perform a %FRONTARC% attack, if you are not in the defender's firing arc, the defender rolls 1 fewer defense die."""
        "Outrider":
           text: """While you perform an attack that is obstructed by an obstacle, the defender rolls 1 fewer defense die. After you fully execute a maneuver, if you moved through or overlapped an obstacle, you may remove 1 of your red or orange tokens."""
        "Perceptive Copilot":
           text: """Nachdem du eine %FOCUS%-Aktion durchgeführt hast, erhalte 1 %FOCUS%-Marker"""
        "Phantom":
           text: """You can dock at range 0-1."""
        "Phantom (Sheathipede)":
           text: """You can dock at range 0-1."""
        "Pivot Wing":
           text: """<b>Closed:</b> While you defend, roll 1 fewer defense die. After you execute a [0 %STOP%] maneuver, you may rotate your ship 90˚ or 180˚. Before you activate, you may flip this card %LINEBREAK% <b>Open:</b> Before you activate, you may flip this card"""
        "Predator":
           text: """While you perform a primary attack, if the defender is in your %BULLSEYEARC%, you may reroll 1 attack die."""
        "Proton Bombs":
           text: """Bomb During the System Phase, you may spend 1 %CHARGE% to drop a Proton Bomb using the [1 %STRAIGHT%] template."""
        "Proton Rockets":
           text: """Attack (%FOCUS%): Spend 1 %CHARGE%."""
        "Proton Torpedoes":
           text: """Attack (%LOCK%): Spend 1 %CHARGE%. Change 1 %HIT% result to a %CRIT% result."""
        "Proximity Mines":
           text: """Mine During the System Phase, you may spend 1 %CHARGE% to drop a Proximity Mine using the [1 %STRAIGHT%] template. This card's %CHARGE% cannot be recovered."""
        "Punishing One":
           text: """When you perform a primary attack, if the defender is in your %FRONTARC%, roll 1 additional attack die. Remove %CREW% slot. Add %ASTROMECH% slot."""
        "Qi'ra":
           text: """Solange du dich bewegst und Angriffe durchführst, ignorierst du Hindernisse, die du als Ziel erfasst hast."""
        "R2 Astromech":
           text: """After you reveal your dial, you may spend 1 %CHARGE% and gain 1 disarm token to recover 1 shield."""
        "R2-D2":
           text: """After you reveal your dial, you may spend 1 %CHARGE% and gain 1 disarm token to recover 1 shield."""
        "R2-D2 (Crew)":
           text: """Während der Endphase, falls du beschädigt bist und keine Schilde hast, darfst du 1 Angriffswürfel werfen, um 1 Schild wiederherzustellen. Bei einem %HIT%-Ergebnis lege eine deiner Schadenskarten offen."""
        "R3 Astromech":
           text: """You can maintain up to 2 locks. Each lock must be on a different object. After you perform a %LOCK% action, you may acquire a lock."""
        "R4 Astromech":
           text: """<i>Requires: Small Base</i> %LINEBREAK% Decrease the difficulty of your speed 1-2 basic maneuvers (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%)."""
        "R5 Astromech":
           text: """Action: Spend 1 %CHARGE% to repair 1 facedown damage card. Action: Repair 1 faceup Ship damage card."""
        "R5-D8":
           text: """Action: Spend 1 %CHARGE% to repair 1 facedown damage card. Action: Repair 1 faceup Ship damage card."""
        "R5-P8":
           text: """While you perform an attack against a defender in your %FRONTARC%, you may spend 1 %CHARGE% to reroll 1 attack die. If the rerolled results is a %CRIT%, suffer 1 %CRIT% damage."""
        "R5-TK":
           text: """You can perform attacks against friendly ships."""
        "Rigged Cargo Chute":
           text: """<i>Mittleres oder grosses Schiff</i> %LINEBREAK% AKTION: Gib 1 %CHARGE% aus. Wirf unter Verwendung der [1 %STRAIGHT%]-Schablone 1 freie Fracht ab."""
        "Ruthless":
           text: """While you perform an attack, you may choose another friendly ship at range 0-1 of the defender. If you do, that ship suffers 1 %HIT% damage and you may change 1 of your die results to a %HIT% result."""
        "Sabine Wren":
           text: """Aufbau: Platziere 1 Ionen-, 1 Störsignal-, 1 Stress- und 1 Fangstrahlmarker auf dieser Karte. Nachdem ein Schiff den Effekt einer befreundeten Bombe erlitten hat, darfst du 1 Ionen-, Störsignal-, Stress- oder Fangstrahlmarker von dieser Karte entfernen. Falls du das tust, erhält jenes Schiff einen passenden Marker."""
        "Saturation Salvo":
           text: """<i>Requires: %RELOAD%</i> %LINEBREAK% While you perform a %TORPEDO% or %MISSILE% attack, you may spend 1 charge from that upgrade. If you do, choose two defense dice. The defender must reroll those dice."""
        "Saw Gerrera":
           text: """Solange du einen Angriff durchführst, darfst du 1 %HIT%-Schaden erleiden, um alle deine %FOCUS%-Ergebnisse in %CRIT%-Ergebnisse zu ändern."""
        "Seasoned Navigator":
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du dein Rad auf ein anderes nicht-rotes Manöver derselben Geschwindigkeit einstellen. Solange du jenes Manöver ausführst, erhöhe seine Schwierigkeit."""
        "Seismic Charges":
           text: """Bomb During the System Phase, you may spend 1 %CHARGE% to drop a Seismic Charge with the [1 %STRAIGHT%] template."""
        "Selfless":
           text: """Whlie another friendly ship at range 0-1 defends, before the Neutralize Results step, if you are in the attack arc, you may suffer 1 %CRIT% damage to cancel 1 %CRIT% result."""
        "Sense":
           text: """During the System Phase, you may choose 1 ship at range 0-1 and look at its dial. If you spend 1 %FORCE%, you may choose a ship at range 0-3 instead."""
        "Servomotor S-Foils":
           text: """<b>Closed:</b> While you perform a primary attack, roll 1 fewer attack die. Before you activate, you may flip this card %LINEBREAK% <i>Adds: %BOOST%, %FOCUS% > <r>%BOOST%</r></i> %LINEBREAK% <b>Open:</b> Before you activate, you may flip this card"""
        "Seventh Sister":
           text: """Falls ein feindliches Schiff in Reichweite 0-1 einen Stressmarker erhalten würde, darfst du 1 %FORCE% ausgeben, um es stattdessen 1 Störsignal- oder 1 Fangstrahlmarker erhalten zu lassen."""
        "Shadow Caster":
           text: """After you perform an attack that hits, if the defender is in your %SINGLETURRETARC% and your %FRONTARC%, the defender gains 1 tractor token."""
        "Shield Upgrade":
           text: """Add 1 Shield Point %LINEBREAK%<i>This upgrade has a variable cost, worth 3, 4, 6, or 8 points depending on if the ship agility is 0, 1, 2, or 3 respectively.</i>"""
        "Skilled Bombardier":
           text: """If you would drop or launch a device, you may use a template of the same bearing with a speed 1 higher or lower."""
        "Slave I":
           text: """After you reveal a turn, (%TURNLEFT% or %TURNRIGHT%) or bank (%BANKLEFT% or %BANKRIGHT%) maneuver you may set your dial to the maneuver of the same speed and bearing in the other direction. Add %TORPEDO% slot."""
        "Squad Leader":
           text: """<i>Adds: <r>%COORDINATE%</r></i> %LINEBREAK% While you coordinate, the ship you choose can perform an action only if that action is also on your action bar."""
        "ST-321":
           text: """After you perform a %COORDINATE% action, you may choose an enemy ship at range 0-3 of the ship you coordinated. If you do, acquire a lock on that enemy ship, ignoring range restrictions."""
        "Static Discharge Vanes":
           text: """Before you would gain 1 ion or jam token, if you are not stressed, you may choose another ship at range 0–1 and gain 1 stress token. If you do, the chosen ship gains that ion or jam token instead."""
        "Stealth Device":
           text: """While you defend, if your %CHARGE% is active, roll 1 additional defense die. After you suffer damage, lost 1 %CHARGE%. %LINEBREAK%<i>This upgrade has a variable cost, worth 3, 4, 6, or 8 points depending on if the ship agility is 0, 1, 2, or 3 respectively.</i>"""
        "Supernatural Reflexes":
           text: """<i>Requires: Small Base</i> %LINEBREAK% Before you activate, you may spend 1 %FORCE% to perform a %BARRELROLL% or %BOOST% action. Then, if you performed an action you do not have on your action bar, suffer 1 %HIT% damage."""
        "Swarm Tactics":
           text: """At the start of the Engagement Phase, you may choose 1 friendly ship at range 1. If you do, that ship treats its initiative as equal to yours until the end of the round."""
        "Tactical Officer":
           text: """<i>Requires: <r>%COORDINATE%</r>. Adds: %COORDINATE%</i>"""
        "Tactical Scrambler":
           text: """<i>Mittleres oder grosses Schiff</i> %LINEBREAK% Solange du den Angriff eines feindlichens Schiffes versperrst, wirft der Verteidiger 1 zusätzlichen Verteidigungswürfel."""
        "Tobias Beckett":
           text: """AUFBAU: Nach dem Platzieren der Streitkräfte darfst du 1 Hindernis im Spielbereich wählen. Falls Du das tust, platziere es irgendwo im Spielbereich, jenseits von Reichweite 2 zu den Spielfeldecken und Schiffen und jenseits von Reichweite 1 zu anderen Hindernissen."""
        "Tractor Beam":
           text: """Attack: If this attack hits, all %HIT%/%CRIT% results inflict tractor tokens instead of damage."""
        "Trajectory Simulator":
           text: """During the System Phase, if you would drop or launch a bomb, you may launch it using the (5 %STRAIGHT%) tempplate instead."""
        "Trick Shot":
           text: """While you perform an attack that is obstructed by an obstacle, roll 1 additional attack die."""
        "Unkar Plutt":
           text: """Nachdem du ein Manöver teilweise ausgeführt hast, darfst du 1 %HIT%-Schaden erleiden, um 1 weiße Aktion durchzuführen."""
        "Veteran Tail Gunner":
           text: """<i>Requires: %REARARC%</i> %LINEBREAK% After you perform a primary %FRONTARC% attack, you may perform a bonus primary %REARARC% attack."""
        "Veteran Turret Gunner":
           text: """<i>Requires: %ROTATEARC%</i> %LINEBREAK% After you perform a primary attack, you may perform a bonus %SINGLETURRETARC% attack using a %SINGLETURRETARC% you did not already attack from this round."""
        "Virago":
           text: """During the End Phase, you may spend 1 %CHARGE% to perform a red %BOOST% action. Adds %MODIFICATION% slot. Add 1 Shield Point. </i> %LINEBREAK% """
        "Xg-1 Assault Configuration":
           text: """While you have exactly 1 disarm token, you can still perform %CANNON% attacks. While you perform a %CANNON% attack while disarmed, roll a maximum of 3 attack dice. Add %CANNON% slot."""
        '"Zeb" Orrelios':
           text: """Du kannst Primärangriffe in Reichweite 0 durchführen. Feindliche Schiffe in Reichweite 0 können Primärangriffe gegen dich durchführen."""
        "Zuckuss":
           text: """Solange du einen Angriff durchführst, falls du nicht gestresst bist, darfst du 1 Verteidigungswürfel wählen und 1 Stressmarker erhalten. Falls du das tust, muss der Verteidiger jenen Würfel neu werfen."""
        'GNK "Gonk" Droid':
           text: """Aufbau: Verliere 1 %CHARGE%. Aktion: Stelle 1 %CHARGE% wieder her. Aktion: Gib 1 %CHARGE% aus, um 1 Schild wiederherzustellen."""
        "Hardpoint: Cannon":
           text: """Adds a %CANNON% slot"""
        "Hardpoint: Missile":
           text: """Adds a %MISSILE% slot"""
        "Hardpoint: Torpedo":
           text: """Adds a %TORPEDO% slot"""
        "Black One":
           text: """<i>Adds: %SLAM%</i> %LINEBREAK% After you perform a %SLAM% action, lose 1 %CHARGE%. Then you may gain 1 ion token to remove 1 disarm token. %LINEBREAK% If your charge is inactive, you cannot perform the %SLAM% action."""
        "Heroic":
           text: """ While you defend or perform an attack, if you have only blank results and have 2 or more results, you may reroll any number of your dice. """
        "Rose Tico":
           text: """ ??? """
        "Finn":
           text: """ While you defend or perform a primary attack, if the enemy ship is in your %FRONTARC%, you may add 1 blank result to your roll ... can be rerolled or otherwise ...  """
        "Integrated S-Foils":
           text: """<b>Closed:</b> While you perform a primary attack, if the defender is not in your %BULLSEYEARC%, roll 1 fewer attack die. Before you activate, you may flip this card. %LINEBREAK% <i>Adds: %BARRELROLL%, %FOCUS% > <r>%BARRELROLL%</r></i> %LINEBREAK% <b>Open:</b> ???"""
        "Targeting Synchronizer":
           text: """<i>Requires: %LOCK%</i> %LINEBREAK% While a friendly ship at range 1-2 performs an attack against a target you have locked, that ship ignores the %LOCK% attack requirement. """
        "Primed Thrusters":
           text: """<i>Requires: Small Base</i> %LINEBREAK% While you have 2 or fewer stress tokens, you can perform %BARRELROLL% and %BOOST% actions even while stressed. """
        "Kylo Ren (Crew)":
           text: """ Action: Choose 1 enemy ship at range 1-3. If you do, spend 1 %FORCE% to assign the I'll Show You the Dark Side condition to that ship. """
        "General Hux":
           text: """ ... perform a white %COORDINATE% action ... it as red. If you do, you ... up to 2 additional ships ... ship type, and each ship you coordinate must perform the same action, treating that action as red. """
        "Fanatical":
           text: """ While you perform a primary attack, if you are not shielded, you may change 1 %FOCUS% result to a %HIT% result. """
        "Special Forces Gunner":
           text: """ ... you perform a primary %FRONTARC% attack, ... your %SINGLETURRETARC% is in your %FRONTARC%, you may roll 1 additional attack die. After you perform a primary %FRONTARC% attack, ... your %TURRET% is in your %BACKARC%, you may perform a bonus primary %SINGLETURRETARC% attack. """
        "Captain Phasma":
           text: """ ??? """
        "Supreme Leader Snoke":
           text: """ ??? """
        "Hyperspace Tracking Data":
           text: """ Setup: Before placing forces, you may ... 0 and 6 ... """
        "Advanced Optics":
           text: """ While you perform an attack, you may spend 1 focus to change 1 of your blank results to a %HIT% result. """
        "Rey (Gunner)":
           text: """ ... defend or ... If the ... in your %SINGLETURRETARC% ... 1 %FORCE% to ... 1 of your blank results to a %EVADE% or %HIT% result. """
        
    condition_translations =
        'Suppressive Fire':
           text: '''While you perform an attack against a ship other than <strong>Captain Rex</strong>, roll 1 fewer attack die. %LINEBREAK% After <strong>Captain Rex</strong> defends, remove this card.  %LINEBREAK% At the end of the Combat Phase, if <strong>Captain Rex</strong> did not perform an attack this phase, remove this card. %LINEBREAK% After <strong>Captain Rex</strong> is destroyed, remove this card.'''
        'Hunted':
           text: '''After you are destroyed, you must choose another friendly ship and assign this condition to it, if able.'''
        'Listening Device':
           text: '''During the System Phase, if an enemy ship with the <strong>Informant</strong> upgrade is at range 0-2, flip your dial faceup.'''
        'Optimized Prototype':
           text: '''While you perform a %FRONTARC% primary attack against a ship locked by a friendly ship with the <strong>Director Krennic</strong> upgrade, you may spend 1 %HIT%/%CRIT%/%FOCUS% result. If you do, choose one: the defender loses 1 shield or the defender flips 1 of its facedown damage cards.'''
        '''I'll Show You the Dark Side''': 
           text: ''' ??? '''
        'Proton Bomb':
           text: '''(Bomb Token) - At the end of the Activation Phase, this device detonates. When this device detonates, each ship at range 0–1 suffers 1 %CRIT% damage.'''
        'Seismic Charge':
           text: '''(Bomb Token) - At the end of the Activation Phase this device detonates. When this device detonates, choose 1 obstacle at range 0–1. Each ship at range 0–1 of the obstacle suffers 1 %HIT% damage. Then remove that obstacle. '''
        'Bomblet':
           text: '''(Bomb Token) - At the end of the Activation Phase this device detonates. When this device detonates, each ship at range 0–1 rolls 2 attack dice. Each ship suffers 1 %HIT% damage for each %HIT%/%CRIT% result.'''
        'Loose Cargo':
           text: '''(Debris Token) - Loose cargo is a debris cloud.'''
        'Conner Net':
           text: '''(Mine Token) - After a ship overlaps or moves through this device, it detonates. When this device detonates, the ship suffers 1 %HIT% damage and gains 3 ion tokens.'''
        'Proximity Mine':
           text: '''(Mine Token) - After a ship overlaps or moves through this device, it detonates. When this device detonates, that ship rolls 2 attack dice. That ship then suffers 1 %HIT% plus 1 %HIT%/%CRIT% damage for each matching result.'''
            
    modification_translations =

    title_translations =
            
    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, condition_translations, modification_translations, title_translations, 
