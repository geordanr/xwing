exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.en = 'English'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations.English =
    sloticon:
        "Astromech": '<i class="xwing-miniatures-font xwing-miniatures-font-astromech"></i>'
        "Force": '<i class="xwing-miniatures-font xwing-miniatures-font-forcepower"></i>'
        "Bomb": '<i class="xwing-miniatures-font xwing-miniatures-font-bomb"></i>'
        "Cannon": '<i class="xwing-miniatures-font xwing-miniatures-font-cannon"></i>'
        "Crew": '<i class="xwing-miniatures-font xwing-miniatures-font-crew"></i>'
        "Talent": '<i class="xwing-miniatures-font xwing-miniatures-font-talent"></i>'
        "Missile": '<i class="xwing-miniatures-font xwing-miniatures-font-missile"></i>'
        "Sensor": '<i class="xwing-miniatures-font xwing-miniatures-font-sensor"></i>'
        "Torpedo": '<i class="xwing-miniatures-font xwing-miniatures-font-torpedo"></i>'
        "Turret": '<i class="xwing-miniatures-font xwing-miniatures-font-turret"></i>'
        "Illicit": '<i class="xwing-miniatures-font xwing-miniatures-font-illicit"></i>'
        "Configuration": '<i class="xwing-miniatures-font xwing-miniatures-font-configuration"></i>'
        "Modification": '<i class="xwing-miniatures-font xwing-miniatures-font-modification"></i>'
        "Gunner": '<i class="xwing-miniatures-font xwing-miniatures-font-gunner"></i>'
        "Device": '<i class="xwing-miniatures-font xwing-miniatures-font-device"></i>'
        "Tech": '<i class="xwing-miniatures-font xwing-miniatures-font-tech"></i>'
        "Title": '<i class="xwing-miniatures-font xwing-miniatures-font-title"></i>'
        "Hardpoint": '<i class="xwing-miniatures-font xwing-miniatures-font-hardpoint"></i>'
        "Team": '<i class="xwing-miniatures-font xwing-miniatures-font-team"></i>'
        "Cargo": '<i class="xwing-miniatures-font xwing-miniatures-font-cargo"></i>'
        "Command": '<i class="xwing-miniatures-font xwing-miniatures-font-command"></i>'
        "HardpointShip": '<i class="xwing-miniatures-font xwing-miniatures-font-hardpoint"></i>'
        "Tactical Relay": '<i class="xwing-miniatures-font xwing-miniatures-font-tacticalrelay"></i>'

    restrictions:
        "Restrictions": "Restrictions"
        "Initiative": "Initiative"
        "Agility": "Agility"
        "Non-Limited": "Non-Limited"
        " or Squad Including": " or Squad Including"
        "Ship": "Ship"
        "Extra": "Extra"

    faction:
        "Rebel Alliance": "Rebel Alliance"
        "Galactic Empire": "Galactic Empire"
        "Scum and Villany": "Scum and Villany"
        "Resistance": "Resistance"
        "First Order": "First Order"
        "Galactic Republic": "Galactic Republic"
        "Separatist Alliance": "Separatist Alliance"

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
        "HardpointShip": "Hardpoint"
        "Hardpoint": "Hardpoint"
        "Illicit": "Illicit"
        "Configuration": "Configuration"
        "Talent": "Talent"
        "Modification": "Modification"
        "Gunner": "Gunner"
        "Device": "Payload"
        "Tech": "Tech"
        "Title": "Title"
        "Tactical Relay": "Tactical Relay"

    sources: # needed?
        "Second Edition Core Set": "Second Edition Core Set"
        "Rebel Alliance Conversion Kit": "Rebel Alliance Conversion Kit"
        "Galactic Empire Conversion Kit": "Galactic Empire Conversion Kit"
        "Scum and Villainy Conversion Kit": "Scum and Villainy Conversion Kit"
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
        '.loading-failed-container .translated': 'It appears that you followed a broken link. No squad could be loaded!'
        '.collection-invalid .translated': 'You cannot field this list with your collection!'
        '.ship-number-invalid-container .translated': 'A tournament legal squad must contain 2-8 ships!'
        # Type selector
        '.game-type-selector option[value="standard"]': 'Extended'
        '.game-type-selector option[value="hyperspace"]': 'Hyperspace'
        '.game-type-selector option[value="Epic"]': 'Epic'
        '.game-type-selector option[value="Quickbuild"]': 'Quick Build'
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
        '.info-well .info-sources.info-header': 'Sources'
        # Squadron edit buttons
        '.clear-squad' : '<i class="fa fa-plus-circle"></i>&nbsp;New Squad'
        '.save-list' : '<i class="far fa-save"></i>&nbsp;Save'
        '.save-list-as' : '<i class="far fa-file"></i>&nbsp;Save as…'
        '.delete-list' : '<i class="fa fa-trash"></i>&nbsp;Delete'
        '.backend-list-my-squads' : '<i class="fa fa-download"></i>&nbsp;Load Squad'
        '.import-squad' : '<i class="fa fa-file-import"></i>&nbsp;Import'
        '.view-as-text' : '<span class="d-none d-lg-block"><i class="fa fa-print"></i>&nbsp;Print/Export List</span><span class="d-lg-none"><i class="fa fa-print"></i></span>'
        '.collection': '<span class="d-none d-lg-block"><i class="fa fa-folder-open"></i> Your Collection</span><span class="d-lg-none"><i class="fa fa-folder-open"></i></span>'
        '.randomize' : '<span class="d-none d-lg-block"><i class="fa fa-random"></i> Randomize!</span><span class="d-lg-none"><i class="fa fa-random"></i></span>'
        '.randomize-options' : 'Randomizer options…'
        '.notes-container .notes-name' : 'Squad Notes:'
        '.notes-container .tag-name' : 'Tag:'
        # Print/View modal
        '.bbcode-list' : 'Copy the BBCode below and paste it into your forum post.<textarea></textarea><button class="btn btn-copy">Copy</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Copy</button>'
        '.vertical-space-checkbox' : """Add space for cards <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Print color <input type="checkbox" class="toggle-color-print" checked="checked" />"""
        '.print-list' : '<i class="fa fa-print"></i>&nbsp;Print'
        # Randomizer options
        '.do-randomize' : 'Randomize!'
        # Top tab bar
        '#browserTab' : 'Card Browser'
        '#aboutTab' : 'About'
        # Obstacles
        '.choose-obstacles' : '<i class="fa fa-cloud"></i>&nbsp;Choose Obstacles'
        '.choose-obstacles-description' : 'Choose up to three obstacles to include in the permalink for use in external programs. (Support for displaying which obstacles were selected in the printout is not yet supported.)'
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
        # Collection

    singular:
        'pilots': 'Pilot'
        'modifications': 'Modification'
        'titles': 'Title'
        'ships' : 'Ship'
    types:
        'Pilot': 'Pilot'
        'Modification': 'Modification'
        'Title': 'Title'
        'Ship': 'Ship'
    rulestypes:
        'glossary': 'Glossary'
        'faq': 'FAQ'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.English = () ->
    exportObj.cardLanguage = 'English'

    exportObj.renameShip """YT-1300""", """Modified YT-1300 Light Freighter"""
    exportObj.renameShip """StarViper""", """StarViper-class Attack Platform"""
    exportObj.renameShip """Scurrg H-6 Bomber""", """Scurrg H-6 Bomber"""
    exportObj.renameShip """YT-2400""", """YT-2400 Light Freighter"""
    exportObj.renameShip """Auzituck Gunship""", """Auzituck Gunship"""
    exportObj.renameShip """Kihraxz Fighter""", """Kihraxz Fighter"""
    exportObj.renameShip """Sheathipede-Class Shuttle""", """Sheathipede-class Shuttle"""
    exportObj.renameShip """Quadjumper""", """Quadrijet Transfer Spacetug"""
    exportObj.renameShip """Firespray-31""", """Firespray-class Patrol Craft"""
    exportObj.renameShip """TIE Fighter""", """TIE/ln Fighter"""
    exportObj.renameShip """Y-Wing""", """BTL-A4 Y-Wing"""
    exportObj.renameShip """TIE Advanced""", """TIE Advanced x1"""
    exportObj.renameShip """Alpha-Class Star Wing""", """Alpha-class Star Wing"""
    exportObj.renameShip """U-Wing""", """UT-60D U-Wing"""
    exportObj.renameShip """TIE Striker""", """TIE/sk Striker"""
    exportObj.renameShip """B-Wing""", """A/SF-01 B-Wing"""
    exportObj.renameShip """TIE Defender""", """TIE/D Defender"""
    exportObj.renameShip """TIE Bomber""", """TIE/sa Bomber"""
    exportObj.renameShip """TIE Punisher""", """TIE/ca Punisher"""
    exportObj.renameShip """Aggressor""", """Aggressor Assault Fighter"""
    exportObj.renameShip """G-1A Starfighter""", """G-1A Starfighter"""
    exportObj.renameShip """VCX-100""", """VCX-100 Light Freighter"""
    exportObj.renameShip """YV-666""", """YV-666 Light Freighter"""
    exportObj.renameShip """TIE Advanced Prototype""", """TIE Advanced v1"""
    exportObj.renameShip """Lambda-Class Shuttle""", """Lambda-class T-4a Shuttle"""
    exportObj.renameShip """TIE Phantom""", """TIE/ph Phantom"""
    exportObj.renameShip """VT-49 Decimator""", """VT-49 Decimator"""
    exportObj.renameShip """TIE Aggressor""", """TIE/ag Aggressor"""
    exportObj.renameShip """K-Wing""", """BTL-S8 K-Wing"""
    exportObj.renameShip """ARC-170""", """ARC-170 Starfighter"""
    exportObj.renameShip """Attack Shuttle""", """Attack Shuttle"""
    exportObj.renameShip """X-Wing""", """T-65 X-Wing"""
    exportObj.renameShip """HWK-290""", """HWK-290 Light Freighter"""
    exportObj.renameShip """A-Wing""", """RZ-1 A-Wing"""
    exportObj.renameShip """Fang Fighter""", """Fang Fighter"""
    exportObj.renameShip """Z-95 Headhunter""", """Z-95-AF4 Headhunter"""
    exportObj.renameShip """M12-L Kimogila Fighter""", """M12-L Kimogila Fighter"""
    exportObj.renameShip """E-Wing""", """E-Wing"""
    exportObj.renameShip """TIE Interceptor""", """TIE Interceptor"""
    exportObj.renameShip """Lancer-Class Pursuit Craft""", """Lancer-class Pursuit Craft"""
    exportObj.renameShip """TIE Reaper""", """TIE Reaper"""
    exportObj.renameShip """M3-A Interceptor""", """M3-A Interceptor"""
    exportObj.renameShip """JumpMaster 5000""", """JumpMaster 5000"""
    exportObj.renameShip """Customized YT-1300""", """Customized YT-1300 Light Freighter"""
    exportObj.renameShip """Escape Craft""", """Escape Craft"""
    exportObj.renameShip """TIE/FO Fighter""", """TIE/FO Fighter"""
    exportObj.renameShip """TIE/SF Fighter""", """TIE/SF Fighter"""
    exportObj.renameShip """Upsilon-Class Command Shuttle""", """Upsilon-Class Command Shuttle"""
    exportObj.renameShip """TIE/VN Silencer""", """TIE/vn Silencer"""
    exportObj.renameShip """T-70 X-Wing""", """T-70 X-Wing"""
    exportObj.renameShip """RZ-2 A-Wing""", """RZ-2 A-Wing"""
    exportObj.renameShip """MG-100 StarFortress""", """MG-100 StarFortress"""
    exportObj.renameShip """Mining Guild TIE Fighter""", """Mining Guild TIE Fighter"""
    exportObj.renameShip """Scavenged YT-1300""", """Scavenged YT-1300"""


    pilot_translations =
        "0-66":
           display_name: """0-66"""
           text: """After you defend, you may spend 1 calculate token to perform an action."""
        "104th Battalion Pilot":
           display_name: """104th Battalion Pilot"""
           text: """<i class = flavor_text>The ARC-170 was designed as a dominating heavy escort fighter with powerful front and rear lasers, ordnance, and an astromech for navigation. Squadrons of these mighty ships bolster the Republic Navy’s presence at any battle where they are deployed.</i>"""
        "4-LOM":
           display_name: """4-LOM"""
           text: """After you fully execute a red maneuver, gain 1 calculate token.%LINEBREAK%At the start of the End Phase, you may choose 1 ship at range 0-1. If you do, transfer 1 of your stress tokens to that ship."""
        "Nashtah Pup":
           display_name: """Nashtah Pup"""
           text: """You can deploy only via emergency deployment, and you have the name, initiative, pilot ability, and ship %CHARGE% of the friendly, destroyed <strong>Hound’s Tooth</strong>.%LINEBREAK%<strong>Escape Craft:</strong> <strong>Setup:</strong>Requires the <strong>Hound’s Tooth</strong>. You <b>must</b> begin the game docked with the <strong>Hound’s Tooth</strong>."""
        "AP-5":
           display_name: """AP-5"""
           text: """While you coordinate, if you chose a ship with exactly 1 stress token, it can perform actions.%LINEBREAK%<strong>Comms Shuttle:</strong> While you are docked, your carrier ship gains %COORDINATE%. Before your carrier ship activates, it may perform a %COORDINATE% action. """
        "Academy Pilot":
           display_name: """Academy Pilot"""
           text: """<i class = flavor_text>The Galactic Empire uses the fast and agile TIE/ln, developed by Sienar Fleet Systems and produced in staggering quantity, as its primary starfighter.</i>"""
        "Ahhav":
           display_name: """Ahhav"""
           text: """While you defend or perform an attack, if the enemy ship is a larger size than you, roll 1 additional die.%LINEBREAK%<strong>Notched Stabilizers:</strong> While you move, you ignore asteroids."""
        "Ahsoka Tano":
           display_name: """Ahsoka Tano"""
           text: """After you fully execute a maneuver, you may choose a friendly ship at range&nbsp;0-1 and spend 1&nbsp;%FORCE%. That ship may perform an action, even if it is stressed.%LINEBREAK%<strong>Fine-tuned Controls:</strong> After you fully execute a maneuver, you may spend 1&nbsp;%FORCE% to perform a %BOOST% or %BARRELROLL% action."""
        "Airen Cracken":
           display_name: """Airen Cracken"""
           text: """After you perform an attack, you may choose 1 friendly ship at range 1. That ship may perform an action, treating it as red."""
        "Alpha Squadron Pilot":
           display_name: """Alpha Squadron Pilot"""
           text: """<i class = flavor_text>Sienar Fleet Systems designed the TIE interceptor with four wing-mounted laser cannons, a dramatic increase in firepower over its predecessors.</i>%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "Anakin Skywalker":
           display_name: """Anakin Skywalker"""
           text: """After you fully execute a maneuver, if there is an enemy ship in your %FRONTARC% at range&nbsp;0-1 or in your %BULLSEYEARC%, you may spend 1 %FORCE% to remove 1&nbsp;stress token.%LINEBREAK%<strong>Fine-tuned Controls:</strong> After you fully execute a maneuver, you may spend 1&nbsp;%FORCE% to perform a %BOOST% or %BARRELROLL% action."""
        "Anakin Skywalker (N-1 Starfighter)":
           text: """Before you reveal your maneuver, you may spend 1 %FORCE% to barrel roll (this is not an action): %LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Arvel Crynyd":
           display_name: """Arvel Crynyd"""
           text: """You can perform primary attacks at range 0.%LINEBREAK%If you would fail a %BOOST% action by overlapping another ship, resolve it as though you were partially executing a maneuver instead.%LINEBREAK%<strong>Vectored Thrusters:</strong> After you perform an action, you may perform a red %BOOST% action."""
        "Asajj Ventress":
           display_name: """Asajj Ventress"""
           text: """At the start of the Engagement Phase, you may choose 1 enemy ship in your %SINGLETURRETARC% at range 0-2 and spend 1&nbsp;%FORCE%. If you do, that ship gains 1 stress token unless it removes 1 green token."""
        "Autopilot Drone":
           display_name: """Autopilot Drone"""
           text: """<i class = flavor_text>Sometimes, manufacturer’s warnings are made to be broken.</i>%LINEBREAK%<strong>Rigged Energy Cells:</strong> During the System Phase, if you are not docked, lose 1&nbsp;%CHARGE%. At the end of the Activation Phase, if you have 0 %CHARGE%, you are destroyed. Before you are removed, each ship at range 0-1 suffers 1&nbsp;%CRIT% damage."""
        "Bandit Squadron Pilot":
           display_name: """Bandit Squadron Pilot"""
           text: """<i class = flavor_text>The Z-95 Headhunter was the primary inspiration for Incom Corporation’s exemplary T-65 X-wing starfighter. Though it is considered outdated by modern standards, it remains a versatile and potent snub fighter.</i>"""
        "Baktoid Prototype":
           display_name: """Baktoid Prototype"""
           text: """While you perform a special attack, if a friendly ship with the <strong>Networked Calculations</strong> ship ability has a lock on the defender, you may ignore the %FOCUS%, %CALCULATE% or %LOCK% requirement of that attack. %LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "Baron of the Empire":
           display_name: """Baron of the Empire"""
           text: """<i class = flavor_text>Sienar Fleet System’s TIE Advanced v1 is a groundbreaking starfighter design, featuring upgraded engines, a missile launcher, and folding s-foils.</i>"""
        "Barriss Offee":
           display_name: """Barriss Offee"""
           text: """While a friendly ship at range&nbsp;0-2 performs an attack, if the defender is in its %BULLSEYEARC%, you may spend 1&nbsp;%FORCE% to change 1&nbsp;%FOCUS% result to a %HIT% result or 1&nbsp;%HIT% result to a %CRIT% result.%LINEBREAK%<strong>Fine-tuned Controls:</strong> After you fully execute a maneuver, you may spend 1 %FORCE% to perform a %BOOST% or %BARRELROLL% action."""
        "Ben Teene":
           display_name: """Ben Teene"""
           text: """After you perform an attack, if the defender is in your %SINGLETURRETARC%, assign the <strong>Rattled</strong> condition to the defender."""
        "Benthic Two Tubes":
           display_name: """Benthic Two Tubes"""
           text: """After you perform a %FOCUS% action, you may transfer 1 of your focus tokens to a friendly ship at range 1-2."""
        "Biggs Darklighter":
           display_name: """Biggs Darklighter"""
           text: """While another friendly ship at range 0-1 defends, before the Neutralize Results step, if you are in the attack arc, you may suffer 1&nbsp;%HIT% or %CRIT% to cancel 1 matching result."""
        "Binayre Pirate":
           display_name: """Binayre Pirate"""
           text: """<i class = flavor_text>Operating from the Double Worlds, Talus and Tralus, Kath Scarlet’s gang of smugglers and pirates would never be described as reputable or dependable—even by other criminals.</i>"""
        "Black Squadron Ace":
           display_name: """Black Squadron Ace"""
           text: """<i class = flavor_text>The elite TIE/ln pilots of Black Squadron accompanied Darth Vader on a devastating strike against the Rebel forces at the Battle of Yavin.</i>"""
        "Black Squadron Scout":
           display_name: """Black Squadron Scout"""
           text: """<i class = flavor_text>These heavily armed atmospheric craft employ their specialized moveable wings to gain additional speed and maneuverability.</i>%LINEBREAK% <sasmall><strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver.</sasmall>"""
        "Black Squadron Ace (T-70)":
           display_name: """Black Squadron Ace"""
           text: """<i class = flavor_text>During the Cold War, Poe Dameron’s Black Squadron conducted daring covert operations against the First Order in defiance of treaties ratified by the New Republic Senate.</i>%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Black Squadron Scout":
           display_name: """Black Squadron Scout"""
           text: """<i class = flavor_text>These heavily armed atmospheric craft employ their specialized moveable wings to gain additional speed and maneuverability.</i>%LINEBREAK% <strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver."""
        "Black Sun Ace":
           display_name: """Black Sun Ace"""
           text: """<i class = flavor_text>The Kihraxz assault fighter was developed specifically for the Black Sun crime syndicate, whose highly paid ace pilots demanded a nimble, powerful ship to match their skills.</i>"""
        "Black Sun Assassin":
           display_name: """Black Sun Assassin"""
           text: """<i class = flavor_text>Although assassinations can be handled with a shot in the dark or a dire substance added to a drink, a flaming shuttle tumbling from the sky sends a special kind of message.</i> %LINEBREAK% <strong>Microthrusters:</strong> While you perform a barrel roll, you <b>must</b> use the %BANKLEFT% or %BANKRIGHT% template instead of the %STRAIGHT% template."""
        "Black Sun Enforcer":
           display_name: """Black Sun Enforcer"""
           text: """<i class = flavor_text>Prince Xizor himself collaborated with MandalMotors to design the StarViper-class attack platform, one of the most formidable starfighters in the galaxy.</i> %LINEBREAK% <strong>Microthrusters:</strong> While you perform a barrel roll, you <b>must</b> use the %BANKLEFT% or %BANKRIGHT% template instead of the %STRAIGHT% template."""
        "Black Sun Soldier":
           display_name: """Black Sun Soldier"""
           text: """<i class = flavor_text>The vast and influential Black Sun crime syndicate can always find a use for talented pilots, provided they aren’t particular about how they earn their credits.</i>"""
        "Blade Squadron Veteran":
           display_name: """Blade Squadron Veteran"""
           text: """<i class = flavor_text>A unique gyrostabilization system surrounds the B-wing’s cockpit, ensuring that the pilot always remains stationary during flight.</i>"""
        "Blue Squadron Escort":
           display_name: """Blue Squadron Escort"""
           text: """<i class = flavor_text>Designed by Incom Corporation, the T-65 X-wing quickly proved to be one of the most effective and versatile military vehicles in the galaxy and a boon to the Rebellion.</i>"""
        "Blue Squadron Pilot":
           display_name: """Blue Squadron Pilot"""
           text: """<i class = flavor_text>Due to its heavy weapons array and resilient shielding, the B-wing has solidified itself as the Rebel Alliance’s most innovative assault fighter.</i>"""
        "Blue Squadron Protector":
           display_name: """Blue Squadron Protector"""
           text: """<i class = flavor_text>Blue Squadron’s elite clone pilots are trained to fly their V-19s in conjunction with Jedi and often support famous commanders such as Anakin Skywalker and Ahsoka Tano.</i>"""
        "Blue Squadron Recruit":
           display_name: """Blue Squadron Recruit"""
           text: """<i class = flavor_text>Young beings across the galaxy have grown up on tales of heroism in the Galactic Civil War, and many learned to fly in the same cockpits from which their parents fought the Empire.</i>%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red %ROTATEARC% action."""
        "Blue Squadron Rookie":
           display_name: """Blue Squadron Rookie"""
           text: """<i class = flavor_text>The Incom-FreiTek T-70 X-Wing was designed to improve upon the tactical flexibility of the venerable T-65. The starfighter’s advanced droid socket is compatible with a wide array of astromechs, and its modular weapons pods allow ground crews to tailor its payload for specific missions.</i>%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Blue Squadron Scout":
           display_name: """Blue Squadron Scout"""
           text: """<i class = flavor_text>Used for deploying troops under the cover of darkness or into the heat of battle, the UT-60D U-wing fulfills the Rebellion’s need for a swift and hardy troop transport.</i>"""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """While you defend or perform an attack, you may reroll 1 of your dice for each enemy ship at range 0-1."""
        "Bodhi Rook":
           display_name: """Bodhi Rook"""
           text: """Friendly ships can acquire locks onto objects at range 0-3 of any friendly ship."""
        "Bossk":
           display_name: """Bossk"""
           text: """While you perform a primary attack, after the Neutralize Results step, you may spend 1&nbsp;%CRIT% result to add 2&nbsp;%HIT% results."""
        "Bounty Hunter":
           display_name: """Bounty Hunter"""
           text: """<i class = flavor_text>The Firespray-class patrol craft is infamous for its association with the deadly bounty hunters Jango Fett and Boba Fett, who packed their craft with countless deadly armaments.</i>"""
        "Braylen Stramm":
           display_name: """Braylen Stramm"""
           text: """While you defend or perform an attack, if you are stressed, you may reroll up to 2 of your dice."""
        "Captain Cardinal":
           display_name: """Captain Cardinal"""
           text: """While a friendly ship at range 1-2 with lower initiative than you defends or performs an attack, if you have at least 1&nbsp;%CHARGE%, that ship may reroll 1 %FOCUS% result.%LINEBREAK%After an enemy ship at range 0-3 is destroyed, lose 1&nbsp;%CHARGE%.%LINEBREAK%<strong>Linked Battery:</strong> While you perform a %CANNON% attack, roll 1 additional die."""
        "Captain Feroph":
           display_name: """Captain Feroph"""
           text: """While you defend, if the attacker does not have any green tokens, you may change 1 of your blank or %FOCUS% results to an %EVADE% result.%LINEBREAK%<strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver."""
        "Captain Jonus":
           display_name: """Captain Jonus"""
           text: """While a friendly ship at range 0-1 performs a %TORPEDO% or %MISSILE% attack, that ship may reroll up to 2 attack dice. %LINEBREAK%<strong>Nimble Bomber:</strong> If you would drop a device using a %STRAIGHT% template, you may use a %BANKLEFT% or %BANKRIGHT% template of the same speed instead."""
        "Captain Jostero":
           display_name: """Captain Jostero"""
           text: """After an enemy ship suffers damage, if it is not defending, you may perform a bonus attack against that ship."""
        "Captain Kagi":
           display_name: """Captain Kagi"""
           text: """At the start of the Engagement Phase, you may choose 1 or more friendly ships at range 0-3. If you do, transfer all enemy lock tokens from the chosen ships to you."""
        "Captain Nym":
           display_name: """Captain Nym"""
           text: """Before a friendly bomb or mine would detonate, you may spend 1&nbsp;%CHARGE% to prevent it from detonating.%LINEBREAK% While you defend against an attack obstructed by a bomb or mine, roll 1 additional defense die."""
        "Captain Oicunn":
           display_name: """Captain Oicunn"""
           text: """You can perform primary attacks at range 0."""
        "Captain Rex":
           display_name: """Captain Rex"""
           text: """After you perform an attack, assign the <strong>Suppressive Fire</strong> condition to the defender."""
        "Captain Sear":
           display_name: """Captain Sear"""
           text: """While a friendly ship at range&nbsp;0-3 performs a primary attack, if the defender is in its %BULLSEYEARC%, before the Neutralize Results step, the friendly ship may spend 1 calculate token to cancel 1 %EVADE% result."""
        "Captain Seevor":
           display_name: """Captain Seevor"""
           text: """While you defend or perform an attack, before attack dice are rolled, if you are not in the enemy ship’s %BULLSEYEARC%, you may spend 1&nbsp;%CHARGE%. If you do, the enemy ship gains 1&nbsp;jam token.%LINEBREAK%<strong>Notched Stabilizers:</strong> While you move, you ignore asteroids."""
        "Cartel Executioner":
           display_name: """Cartel Executioner"""
           text: """<i class = flavor_text>Many veteran pilots in the service of the Hutt kajidics and other criminal operations choose the M12-L Kimogila for its firepower and dreaded reputation alike.</i>%LINEBREAK% <strong>Dead to Rights:</strong> While you perform an attack, if the defender is in your %BULLSEYEARC%, defense dice cannot be modified using green tokens."""
        "Cartel Marauder":
           display_name: """Cartel Marauder"""
           text: """<i class = flavor_text>The versatile Kihraxz was modeled after Incom’s popular X-wing starfighter, but an array of after-market modification kits ensure a wide variety of designs. </i>"""
        "Cartel Spacer":
           display_name: """Cartel Spacer"""
           text: """<i class = flavor_text>MandalMotors’ M3-A “Scyk” Interceptor is purchased in large quantities by the Hutt Cartel and the Car’das smugglers due to its low cost and customizability.</i> %LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """At the start of the Activation Phase, you may choose 1 friendly ship at range 1-3. If you do, that ship removes 1 stress token."""
        "Cat":
           display_name: """Cat"""
           text: """While you perform a primary attack, if the defender is at range 0-1 of at least 1&nbsp;friendly device, roll 1 additional die."""
        "Cavern Angels Zealot":
           display_name: """Cavern Angels Zealot"""
           text: """<i class = flavor_text>Unlike most Rebel cells, Saw Gerrera’s partisans are willing to use extreme methods to undermine the Galactic Empire’s objectives in brutal battles that rage from Geonosis to Jedha.</i>"""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """Before you would be dealt a faceup damage card, you may spend 1&nbsp;%CHARGE% to be dealt the card facedown instead."""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca"""
           text: """After a friendly ship at range 0-3 is destroyed, before that ship is removed, you may perform an action. Then you may perform a bonus attack.%LINEBREAK%<i><strong>Note:</strong>The phrase "before that ship is removed" is not printed on the card, but within the official squad builder.</i>"""
        "Cobalt Squadron Bomber":
           display_name: """Cobalt Squadron Bomber"""
           text: """<i class = flavor_text>Whether the ordnance silos of their StarFortresses are loaded with proton bombs or relief supplies, the heroic crews of Cobalt Squadron dedicate their lives to making a difference in the galaxy.</i>"""
        "Colonel Jendon":
           display_name: """Colonel Jendon"""
           text: """At the start of the Activation Phase, you may spend 1&nbsp;%CHARGE%. If you do, while friendly ships acquire locks this round, they must acquire locks beyond range 3 instead of at range 0-3."""
        "Colonel Vessery":
           display_name: """Colonel Vessery"""
           text: """While you perform an attack against a locked ship, after you roll attack dice, you may acquire a lock on the defender.%LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Commander Malarus":
           display_name: """Commander Malarus"""
           text: """At the start of the Engagement Phase, you may spend 1&nbsp;%CHARGE% and gain 1 stress token. If you do, until the end of the round, while you defend or perform an attack, you may change all of your %FOCUS% results to %EVADE% or %HIT% results."""
        "Constable Zuvio":
           display_name: """Constable Zuvio"""
           text: """If you would drop a device, you may launch it using a [1&nbsp;%STRAIGHT%] template instead.%LINEBREAK%<strong>Spacetug Tractor Array:</strong> <strong>Action:</strong> Choose a ship in your %FRONTARC% at range 1. That ship gains 1 tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1."""
        "Contracted Scout":
           display_name: """Contracted Scout"""
           text: """<i class = flavor_text>Built for long-distance reconnaissance and plotting new hyperspace routes, the lightly armed JumpMaster 5000 is often extensively retrofitted with custom upgrades.</i>"""
        "Corran Horn":
           display_name: """Corran Horn"""
           text: """At initiative 0, you may perform a bonus primary attack against an enemy ship in your %BULLSEYEARC%. If you do, at the start of the next Planning Phase, gain 1 disarm token.%LINEBREAK%<strong>Experimental Scanners:</strong> You can acquire locks beyond range 3. You cannot acquire locks at range 1."""
        "Count Dooku":
           display_name: """Count Dooku"""
           text: """After you defend, if the attacker is in your firing arc, you may spend 1&nbsp;%FORCE% to remove 1 of your blue or red tokens.%LINEBREAK%After you perform an attack that hits, you may spend 1 %FORCE% to perform an action."""
        "Countess Ryad":
           display_name: """Countess Ryad"""
           text: """While you would execute a %STRAIGHT% maneuver, you may increase the difficulty of the maneuver. If you do, execute it as a %KTURN% maneuver instead.%LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Crymorah Goon":
           display_name: """Crymorah Goon"""
           text: """<i class = flavor_text>Though far from nimble, the Y-wing’s heavy hull, substantial shielding, and turret-mounted cannons make it an excellent patrol craft.</i>"""
        "Cutlass Squadron Pilot":
           display_name: """Cutlass Squadron Pilot"""
           text: """<i class = flavor_text>The TIE punisher’s design builds upon the success of the TIE bomber, adding shielding, a second bomb chute, and three additional ordnance pods, each equipped with a twin ion engine.</i>"""
        "DBS-32C":
           display_name: """DBS-32C"""
           text: """At the start of the Engagement Phase, you may spend 1 calculate token to perform a %COORDINATE% action. You cannot coordinate ships that do not have the <strong>Networked Calculations</strong> ship ability. %LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "DBS-404":
           display_name: """DBS-404"""
           text: """You can perform primary attacks at range 0. While you perform an attack at attack range 0-1, you <strong>must</strong> roll 1 additional die. After the attack hits, suffer 1 %CRIT% damage. %LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "DFS-081":
           display_name: """DFS-081"""
           text: """While a friendly ship at range 0-1 defends, it may spend 1 calculate token to change all %CRIT% results to %HIT% results.%LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "DFS-311":
           display_name: """DFS-311"""
           text: """At the start of the Engagement Phase, you may transfer 1 of your calculate tokens to another friendly ship at range&nbsp;0-3.%LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "Dace Bonearm":
           display_name: """Dace Bonearm"""
           text: """After an enemy ship at range 0-3 receives at least 1 ion token, you may spend 3&nbsp;%CHARGE%. If you do, that ship gains 2 additional ion tokens."""
        "Dalan Oberos (StarViper)":
           display_name: """Dalan Oberos"""
           text: """After you fully execute a maneuver, you may gain 1 stress token to rotate your ship 90º.%LINEBREAK% <strong>Microthrusters:</strong> While you perform a barrel roll, you <b>must</b> use the %BANKLEFT% or %BANKRIGHT% template instead of the %STRAIGHT% template."""
        "Dalan Oberos":
           display_name: """Dalan Oberos"""
           text: """At the start of the Engagement Phase, you may choose 1 shielded ship in your %BULLSEYEARC% and spend 1&nbsp;%CHARGE%. If you do, that ship loses 1 shield and you recover 1 shield.%LINEBREAK%<strong>Dead to Rights:</strong> While you perform an attack, if the defender is in your %BULLSEYEARC%, defense dice cannot be modified using green tokens."""
        "Dark Courier":
           display_name: """Dark Courier"""
           text: """<i class = flavor_text>The vessel called the Scimitar was heavily modified, equipped with stealth technologies and advanced surveillance devices for infiltration and assassination missions.</i>"""
        "Darth Maul":
           display_name: """Darth Maul"""
           text: """After you perform an attack, you may spend 2 %FORCE% to perform a bonus primary attack against a different target. If your attack missed, you may perform that bonus primary attack against the same target instead."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """After you perform an action, you may spend 1&nbsp;%FORCE% to perform an action.%LINEBREAK%<strong>Advanced Targeting Computer:</strong> While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1&nbsp;%HIT% result to a %CRIT% result."""
        "Dash Rendar":
           display_name: """Dash Rendar"""
           text: """While you move, you ignore obstacles.%LINEBREAK%<strong>Sensor Blindspot:</strong> While you perform a primary attack at attack range 0-1, do not apply the range 0-1 bonus and roll 1 fewer attack die."""
        "Del Meeko":
           display_name: """Del Meeko"""
           text: """While a friendly ship at range 0-2 defends against a damaged attacker, the defender may reroll 1 defense die."""
        "Delta Squadron Pilot":
           display_name: """Delta Squadron Pilot"""
           text: """<i class = flavor_text>In addition to its missile launchers and six wingtip laser cannons, the formidable TIE defender is equipped with deflector shields and a hyperdrive.</i>%LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Dengar":
           display_name: """Dengar"""
           text: """After you defend, if the attacker is in your %FRONTARC%, you may spend 1&nbsp;%CHARGE% to perform a bonus attack against the attacker."""
        "Drea Renthal":
           display_name: """Drea Renthal"""
           text: """While a friendly non-limited ship performs an attack, if the defender is in your firing arc, the attacker may reroll 1 attack die."""
        "Edon Kappehl":
           display_name: """Edon Kappehl"""
           text: """After you fully execute a blue or white maneuver, if you have not dropped or launched a device this round, you may drop 1 device."""
        "Edrio Two Tubes":
           display_name: """Edrio Two Tubes"""
           text: """Before you activate, if you are focused, you may perform an action."""
        "Ello Asty":
           display_name: """Ello Asty"""
           text: """After you reveal a red Tallon Roll [%TROLLLEFT% or %TROLLRIGHT%] maneuver, if you have 2 or fewer stress tokens, treat that maneuver as white.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Emon Azzameen":
           display_name: """Emon Azzameen"""
           text: """If you would drop a device using a [1&nbsp;%STRAIGHT%] template, you may use the [3&nbsp;%TURNLEFT%], [3&nbsp;%STRAIGHT%], or [3&nbsp;%TURNRIGHT%] template instead."""
        "Epsilon Squadron Cadet":
           display_name: """Epsilon Squadron Cadet"""
           text: """<i class = flavor_text>Trained from childhood aboard Resurgent-class Star Destroyers in deep space, many First Order TIE pilots have never even set foot on a planet’s surface.</i>"""
        "Esege Tuketu":
           display_name: """Esege Tuketu"""
           text: """While a friendly ship at range 0-2 defends or performs an attack, it may spend your focus tokens as if that ship has them."""
        "Evaan Verlaine":
           display_name: """Evaan Verlaine"""
           text: """At the start of the Engagement Phase, you may spend 1 focus token to choose a friendly ship at range 0-1. If you do, that ship rolls 1 additional defense die while defending until the end of the round."""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """While you defend or perform an attack, if you are stressed, you may spend 1&nbsp;%FORCE% to change up to 2 of your %FOCUS% results to %EVADE% or %HIT% results.%LINEBREAK%<strong>Locked and Loaded:</strong> While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus primary %REARARC% attack."""
        "Ezra Bridger (Sheathipede)":
           display_name: """Ezra Bridger"""
           text: """While you defend or perform an attack, if you are stressed, you may spend 1&nbsp;%FORCE% to change up to 2 of your %FOCUS% results to %EVADE% /%HIT% results. %LINEBREAK%<strong>Comms Shuttle:</strong> While you are docked, your carrier ship gains %COORDINATE%. Before your carrier ship activates, it may perform a %COORDINATE% action."""
        "Ezra Bridger (TIE Fighter)":
           display_name: """Ezra Bridger"""
           text: """While you defend or perform an attack, if you are stressed, you may spend 1&nbsp;%FORCE% to change up to 2 of your %FOCUS% results to %EVADE% or %HIT% results."""
        "Feethan Ottraw Autopilot":
           display_name: """Feethan Ottraw Autopilot"""
           text: """<i class = flavor_text>Unlike the more disposable fighters it also built for the Separatists, Feethan Ottraw Scalable Assemblies designed the Belbullab-22 with a solid mix of firepower, durability, and speed.</i>"""
        "Fenn Rau (Sheathipede)":
           display_name: """Fenn Rau"""
           text: """Before an enemy ship in your firing arc engages, if you are not stressed, you may gain 1 stress token. If you do, that ship cannot spend tokens to modify dice while it performs an attack during this phase.%LINEBREAK%<strong>Comms Shuttle:</strong> While you are docked, your carrier ship gains %COORDINATE%. Before your carrier ship activates, it may perform a %COORDINATE% action. %LINEBREAK% <i>Errata (since rules reference 1.1.0): Replaced "After an enemy ship in your firing arc engages")</i>"""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """While you defend or perform an attack, if the attack range is 1, you may roll 1 additional die.%LINEBREAK%<strong>Concordia Faceoff:</strong> While you defend, if the attack range is 1 and you are in the attacker’s %FRONTARC%, change 1 result to an %EVADE% result."""
        "Finch Dallow":
           display_name: """Finch Dallow"""
           text: """Before you would drop a bomb, you may place it in the play area touching you instead."""
        "First Order Test Pilot":
           display_name: """First Order Test Pilot"""
           text: """<i class = flavor_text>Engineered for incredible speed and precise handling, the TIE Silencer is devastating in the hands of those who can unlock its full potential. Any lesser pilot could easily be overwhelmed and lose control of the nimble craft. </i>%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "Foreman Proach":
           display_name: """Foreman Proach"""
           text: """Before you engage, you may choose 1&nbsp;enemy ship in your %BULLSEYEARC% at range 1-2 and gain 1 disarm token. If you do, that ship gains 1 tractor token.%LINEBREAK%<strong>Notched Stabilizers:</strong> While you move, you ignore asteroids."""
        "Freighter Captain":
           display_name: """Freighter Captain"""
           text: """<i class = flavor_text>Many spacers make a living traveling the Outer Rim, where the difference between smuggler and legitimate merchant is often murky. On the outskirts of civilization, buyers are rarely so discerning to ask where merchandise came from, at least as long as the price is low enough.</i>"""
        "Gamma Squadron Ace":
           display_name: """Gamma Squadron Ace"""
           text: """<i class = flavor_text>Though it sacrifices a degree of speed and maneuverability compared to a TIE/ln, the TIE bomber’s increased payload can carry enough firepower to destroy virtually any enemy target.</i> %LINEBREAK%<strong>Nimble Bomber:</strong> If you would drop a device using a %STRAIGHT% template, you may use a %BANKLEFT% or %BANKRIGHT% template of the same speed instead."""
        "Gand Findsman":
           display_name: """Gand Findsman"""
           text: """<i class = flavor_text>The legendary Findsmen of Gand worship the enshrouding mists of their home planet, using signs, augurs, and mystical rituals to track their quarry.</i>"""
        "Garven Dreis (X-Wing)":
           display_name: """Garven Dreis"""
           text: """After you spend a focus token, you may choose 1 friendly ship at range 1-3. That ship gains 1 focus token."""
        "Garven Dreis":
           display_name: """Garven Dreis"""
           text: """After you spend a focus token, you may choose 1 friendly ship at range 1-3. That ship gains 1 focus token."""
        "Gavin Darklighter":
           display_name: """Gavin Darklighter"""
           text: """While a friendly ship performs an attack, if the defender is in your %FRONTARC%, the attacker may change 1&nbsp;%HIT% result to a %CRIT% result.%LINEBREAK%<strong>Experimental Scanners:</strong> You can acquire locks beyond range 3. You cannot acquire locks at range 1."""
        "General Grievous":
           display_name: """General Grievous"""
           text: """While you perform a primary attack, if you are not in the defender’s firing arc, you may reroll up to 2&nbsp;attack dice."""
        "Genesis Red":
           display_name: """Genesis Red"""
           text: """After you acquire a lock, you must remove all of your focus and evade tokens. Then, gain the same number of focus and evade tokens that the locked ship has.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Gideon Hask":
           display_name: """Gideon Hask"""
           text: """While you perform an attack against a damaged defender, roll 1 additional attack die."""
        "Gold Squadron Trooper":
           display_name: """Gold Squadron Trooper"""
           text: """<i class = flavor_text>The V-19 Torrent starfighter was designed to be a light escort to nimble Delta-7 interceptors flown by Jedi Knights, and has a unique flight profile to reflect this role.</i>"""
        "Gold Squadron Veteran":
           display_name: """Gold Squadron Veteran"""
           text: """<i class = flavor_text>Commanded by Jon “Dutch” Vander, Gold Squadron played an instrumental role in the Battles of Scarif and Yavin.</i>"""
        "Grand Inquisitor":
           display_name: """Grand Inquisitor"""
           text: """While you defend at attack range 1, you may spend 1&nbsp;%FORCE% to prevent the range 1 bonus. %LINEBREAK%While you perform an attack against a defender at attack range 2-3, you may spend 1&nbsp;%FORCE% to apply the range 1 bonus."""
        "Gray Squadron Bomber":
           display_name: """Gray Squadron Bomber"""
           text: """<i class = flavor_text>Long after the Y-wing was phased out by the Galactic Empire, its durability, dependability, and heavy armament help it remain a staple in the Rebel fleet.</i>"""
        "Graz":
           display_name: """Graz"""
           text: """While you defend, if you are behind the attacker, roll 1 additional defense die.%LINEBREAK%While you perform an attack, if you are behind the defender, roll 1 additional attack die."""
        "Green Squadron Expert":
           display_name: """Green Squadron Expert"""
           text: """<i class = flavor_text>Years of field-expedient modifications were standardized in the RZ-2 design, but daring pilots see the ship’s improved reliability as a challenge to further push the limits of its performance.</i>%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red %ROTATEARC% action."""
        "Green Squadron Pilot":
           display_name: """Green Squadron Pilot"""
           text: """<i class = flavor_text>Due to its sensitive controls and high maneuverability, only the most talented pilots belong in an A-wing cockpit.</i>%LINEBREAK%<strong>Vectored Thrusters:</strong> After you perform an action, you may perform a red %BOOST% action."""
        "Greer Sonnel":
           display_name: """Greer Sonnel"""
           text: """After you fully execute a maneuver, you may rotate your %SINGLETURRETARC%.%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red %ROTATEARC% action."""
        "Guri":
           display_name: """Guri"""
           text: """At the start of the Engagement Phase, if there is at least 1 enemy ship at range 0-1, you may gain 1 focus token.%LINEBREAK% <strong>Microthrusters:</strong> While you perform a barrel roll, you <b>must</b> use the %BANKLEFT% or %BANKRIGHT% template instead of the %STRAIGHT% template."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """After you roll dice, if you are at range 0-1 of an obstacle, you may reroll all of your dice. This does not count as rerolling for the purpose of other effects."""
        "Han Solo (Scum)":
           display_name: """Han Solo"""
           text: """While you defend or perform a primary attack, if the attack is obstructed by an obstacle, you may roll 1 additional die."""
        "Han Solo (Resistance)":
           display_name: """Han Solo"""
           text: """<strong>Setup:</strong> You can be placed anywhere in the play area beyond range 3 of enemy ships."""
        "Heff Tobber":
           display_name: """Heff Tobber"""
           text: """After an enemy ship executes a maneuver, if it is at range 0, you may perform an action."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """After you reveal a red or blue maneuver, you may set your dial to another maneuver of the same difficulty.%LINEBREAK%<strong>Locked and Loaded:</strong> While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus primary %REARARC% attack."""
        "Hera Syndulla (VCX-100)":
           display_name: """Hera Syndulla"""
           text: """After you reveal a red or blue maneuver, you may set your dial to another maneuver of the same difficulty.%LINEBREAK%<strong>Tail Gun:</strong> While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship’s primary %FRONTARC% attack value."""
        "Hired Gun":
           display_name: """Hired Gun"""
           text: """<i class = flavor_text>Just the mention of Imperial credits can bring a host of less-than-trustworthy individuals to your side.</i>"""
        "Horton Salm":
           display_name: """Horton Salm"""
           text: """While you perform an attack, you may reroll 1 attack die for each other friendly ship at range 0-1 of the defender."""
        "IG-88A":
           display_name: """IG-88A"""
           text: """At the start of the Engagement Phase, you may choose 1 friendly ship with %CALCULATE% on its action bar at range 1-3. If you do, transfer 1 of your calculate tokens to it. %LINEBREAK%<strong>Advanced Droid Brain:</strong> After you perform a %CALCULATE% action, gain 1 calculate token."""
        "IG-88B":
           display_name: """IG-88B"""
           text: """After you perform an attack that misses, you may perform a bonus %CANNON% attack.%LINEBREAK%<strong>Advanced Droid Brain:</strong> After you perform a %CALCULATE% action, gain 1 calculate token."""
        "IG-88C":
           display_name: """IG-88C"""
           text: """After you perform a %BOOST% action, you may perform an %EVADE% action.%LINEBREAK%<strong>Advanced Droid Brain:</strong> After you perform a %CALCULATE% action, gain 1 calculate token."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """While you execute a Segnor’s Loop (%SLOOPLEFT% or %SLOOPRIGHT%) maneuver, you may use another template of the same speed instead: either the turn (%TURNLEFT% or %TURNRIGHT%) of the same direction or the straight (%STRAIGHT%) template.%LINEBREAK%<strong>Advanced Droid Brain:</strong> After you perform a %CALCULATE% action, gain 1 calculate token."""
        "Ibtisam":
           display_name: """Ibtisam"""
           text: """After you fully execute a maneuver, if you are stressed, you may roll 1 attack die. On a %HIT% or %CRIT% result, remove 1 stress token."""
        "Iden Versio":
           display_name: """Iden Versio"""
           text: """Before a friendly TIE/ln fighter at range 0-1 would suffer 1 or more damage, you may spend 1&nbsp;%CHARGE%. If you do, prevent that damage."""
        "Imdaar Test Pilot":
           display_name: """Imdaar Test Pilot"""
           text: """<i class = flavor_text>The primary result of a hidden research facility on Imdaar Alpha, the TIE phantom achieves what many thought was impossible: a small starfighter equipped with an advanced cloaking device.</i>%LINEBREAK%<strong>Stygium Array:</strong> After you decloak, you may perform an %EVADE% action. At the start of the End Phase, you may spend 1 evade token to gain 1 cloak token."""
        "Inaldra":
           display_name: """Inaldra"""
           text: """While you defend or perform an attack, you may suffer 1&nbsp;%HIT% damage to reroll any number of your dice.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade. """
        "Inquisitor":
           display_name: """Inquisitor"""
           text: """<i class = flavor_text>The fearsome Inquisitors are given a great deal of autonomy and access to the Empire’s latest technology, like the prototype TIE Advanced v1.</i>"""
        "Jake Farrell":
           display_name: """Jake Farrell"""
           text: """After you perform a %BARRELROLL% or %BOOST% action, you may choose a friendly ship at range 0-1. That ship may perform a %FOCUS% action.%LINEBREAK%<strong>Vectored Thrusters:</strong> After you perform an action, you may perform a red %BOOST% action."""
        "Jakku Gunrunner":
           display_name: """Jakku Gunrunner"""
           text: """<i class = flavor_text>The Quadrijet transfer spacetug, commonly called a "Quadjumper," is nimble in space and atmosphere alike, making it popular among both smugglers and explorers.</i> %LINEBREAK%<strong>Spacetug Tractor Array:</strong> <strong>Action:</strong> Choose a ship in your %FRONTARC% at range 1. That ship gains 1 tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1."""
        "Jan Ors":
           display_name: """Jan Ors"""
           text: """While a friendly ship in your firing arc performs a primary attack, if you are not stressed, you may gain 1 stress token. If you do, that ship may roll 1 additional attack die."""
        "Jaycris Tubbs":
           display_name: """Jaycris Tubbs"""
           text: """After you fully execute a blue maneuver, you may choose a friendly ship at range&nbsp;0-1. If you do, that ship removes 1&nbsp;stress token.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Jedi Knight":
           display_name: """Jedi Knight"""
           text: """<i class = flavor_text>When the Clone Wars began, the Jedi Knights rallied to the cause of preserving the Republic, assuming command of legions of clone troopers and leading them in battle.</i>%LINEBREAK%<strong>Fine-tuned Controls:</strong> After you fully execute a maneuver, you may spend 1&nbsp;%FORCE% to perform a %BOOST% or %BARRELROLL% action."""
        "Jek Porkins":
           display_name: """Jek Porkins"""
           text: """After you receive a stress token, you may roll 1 attack die to remove it. On a %HIT% result, suffer 1&nbsp;%HIT% damage."""
        "Jessika Pava":
           display_name: """Jessika Pava"""
           text: """While you defend or perform an attack, you may spend 1&nbsp;%CHARGE% or 1 non-recurring&nbsp;%CHARGE% from your equipped %ASTROMECH% upgrade to reroll up to 1&nbsp;of your dice for each other friendly ship at range 0-1.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Joph Seastriker":
           display_name: """Joph Seastriker"""
           text: """After you lose 1 shield, gain 1&nbsp;evade token.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Joy Rekkoff":
           display_name: """Joy Rekkoff"""
           text: """While you perform an attack, you may spend 1&nbsp;%CHARGE% from an equipped %TORPEDO% upgrade. If you do, the defender rolls 1 fewer defense die.%LINEBREAK%<strong>Concordia Faceoff:</strong> While you defend, if the attack range is 1 and you are in the attacker’s %FRONTARC%, change 1 result to an %EVADE% result."""
        "Kaa'to Leeachos":
           display_name: """Kaa’to Leeachos"""
           text: """At the start of the Engagement Phase, you may choose 1 friendly ship at range 0-2. If you do, transfer 1 focus or evade token from that ship to yourself. """
        "Kad Solus":
           display_name: """Kad Solus"""
           text: """After you fully execute a red maneuver, gain 2 focus tokens.%LINEBREAK%<strong>Concordia Faceoff:</strong> While you defend, if the attack range is 1 and you are in the attacker’s %FRONTARC%, change 1 result to an %EVADE% result."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """While a friendly ship in your firing arc defends, you may spend 1&nbsp;%FORCE%. If you do, the attacker rolls 1 fewer attack die.%LINEBREAK%<strong>Tail Gun:</strong> While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship’s primary %FRONTARC% attack value."""
        "Kare Kun":
           display_name: """Kare Kun"""
           text: """While you boost, you may use the [1 %TURNLEFT%] or [1 %TURNRIGHT%] template instead.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Kashyyyk Defender":
           display_name: """Kashyyyk Defender"""
           text: """<i class = flavor_text>Equipped with three wide-range Sureggi twin laser cannons, the Auzituck gunship acts as a powerful deterrent to slaver operations in the Kashyyyk system.</i>"""
        "Kath Scarlet":
           display_name: """Kath Scarlet"""
           text: """While you perform a primary attack, if there is at least 1 friendly non-limited ship at range 0 of the defender, roll 1 additional attack die."""
        "Kavil":
           display_name: """Kavil"""
           text: """While you perform a non-%FRONTARC% attack, roll 1 additional attack die."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """At the start of the Engagement Phase, you may choose 1 ship in both your %FRONTARC% and %SINGLETURRETARC% at range 0-1. If you do, it gains 1 tractor token."""
        "Knave Squadron Escort":
           display_name: """Knave Squadron Escort"""
           text: """<i class = flavor_text>Designed to combine the best features of the X-wing series with the A-wing series, the E-wing boasts superior firepower, speed, and maneuverability.</i>%LINEBREAK% <strong>Experimental Scanners:</strong> You can acquire locks beyond range 3. You cannot acquire locks at range 1."""
        "Koshka Frost":
           display_name: """Koshka Frost"""
           text: """While you defend or perform an attack, if the enemy ship is stressed, you may reroll 1 of your dice."""
        "Krassis Trelix":
           display_name: """Krassis Trelix"""
           text: """You can perform %FRONTARC% special attacks from your %REARARC%.%LINEBREAK%While you perform a special attack, you may reroll 1 attack die."""
        "Kullbee Sperado":
           display_name: """Kullbee Sperado"""
           text: """After you perform a %BARRELROLL% or %BOOST% action, you may flip your equipped %CONFIGURATION% upgrade card."""
        "Kyle Katarn":
           display_name: """Kyle Katarn"""
           text: """At the start of the Engagement Phase, you may transfer 1 of your focus tokens to a friendly ship in your firing arc."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """After you defend, you may spend 1&nbsp;%FORCE% to assign the <strong>I’ll Show You the Dark Side</strong> condition to the attacker.%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "L3-37":
           display_name: """L3-37"""
           text: """If you are not shielded, decrease the difficulty of your bank (%BANKLEFT% and %BANKRIGHT%) maneuvers."""
        "L3-37 (Escape Craft)":
           display_name: """L3-37"""
           text: """If you are not shielded, decrease the difficulty of your bank (%BANKLEFT% and %BANKRIGHT%) maneuvers.%LINEBREAK%<strong>Co-Pilot:</strong> While you are docked, your carrier ship has your pilot ability in addition to its own."""
        "Laetin A'shera":
           display_name: """Laetin A’shera"""
           text: """After you defend or perform an attack, if the attack missed, gain 1 evade token.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """After you fully execute a blue maneuver, you may choose a friendly ship at range 0-3. That ship may perform an action."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian"""
           text: """After you roll dice, if you are not stressed, you may gain 1 stress token to reroll all of your blank results."""
        "Lando Calrissian (Scum) (Escape Craft)":
           display_name: """Lando Calrissian"""
           text: """After you roll dice, if you are not stressed, you may gain 1 stress token to reroll all of your blank results.%LINEBREAK%<strong>Co-Pilot:</strong> While you are docked, your carrier ship has your pilot ability in addition to its own."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """At the start of the Engagement Phase, you may choose a ship at range 1 and spend a lock you have on that ship. If you do, that ship gains 1 tractor token."""
        "Leevan Tenza":
           display_name: """Leevan Tenza"""
           text: """After you perform a %BARRELROLL% or %BOOST% action, you may perform a red %EVADE% action."""
        "Lieutenant Bastian":
           display_name: """Lieutenant Bastian"""
           text: """After a ship at range 1-2 is dealt a damage card, you may acquire a lock on that ship.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Lieutenant Blount":
           display_name: """Lieutenant Blount"""
           text: """While you perform a primary attack, if there is at least 1 other friendly ship at range 0-1 of the defender, you may roll 1 additional attack die."""
        "Lieutenant Dormitz":
           display_name: """Lieutenant Dormitz"""
           text: """<strong>Setup</strong>: After you are placed, other friendly small ships can be placed anywhere in the play area at range 0-2 of you.%LINEBREAK%<strong>Linked Battery:</strong> While you perform a %CANNON% attack, roll 1 additional die. %LINEBREAK% <i>Errata (since rules reference 1.3.0): Replaced "other friendly ship" with "friendly small ships"</i>"""
        "Lieutenant Karsabi":
           display_name: """Lieutenant Karsabi"""
           text: """After you gain a disarm token, if you are not stressed, you may gain 1 stress token to remove 1 disarm token."""
        "Lieutenant Kestal":
           display_name: """Lieutenant Kestal"""
           text: """While you perform an attack, after the defender rolls defense dice, you may spend 1 focus token to cancel all of the defender’s blank/%FOCUS% results."""
        "Lieutenant Rivas":
           display_name: """Lieutenant Rivas"""
           text: """After a ship at range 1-2 gains a red or orange token, if you do not have that ship locked, you may acquire a lock on that ship."""
        "Lieutenant Sai":
           display_name: """Lieutenant Sai"""
           text: """After you a perform a %COORDINATE% action, if the ship you chose performed an action on your action bar, you may perform that action."""
        "Lieutenant Tavson":
           display_name: """Lieutenant Tavson"""
           text: """After you suffer damage, you may spend 1&nbsp;%CHARGE% to perform an action.%LINEBREAK%<strong>Linked Battery:</strong> While you perform a %CANNON% attack, roll 1 additional die."""
        "Lok Revenant":
           display_name: """Lok Revenant"""
           text: """<i class = flavor_text>The Nubian Design Collective crafted the Scurrg H-6 Bomber with combat versatility in mind, arming it with powerful shields and a bristling array of destructive weaponry.</i>"""
        "Lothal Rebel":
           display_name: """Lothal Rebel"""
           text: """<i class = flavor_text>Another successful Corellian Engineering Corporation freighter design, the VCX-100 is larger than the ubiquitous YT-series, boasting more living space and customizability.</i>%LINEBREAK%<strong>Tail Gun:</strong> While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship’s primary %FRONTARC% attack value."""
        "Lowhhrick":
           display_name: """Lowhhrick"""
           text: """After a friendly ship at range 0-1 becomes the defender, you may spend 1 reinforce token. If you do, that ship gains 1 evade token."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """After you become the defender (before dice are rolled), you may recover 1&nbsp;%FORCE%."""
        "Luminara Unduli":
           display_name: """Luminara Unduli"""
           text: """While a friendly ship at range&nbsp;0-2 defends, if it is not in the attacker’s %BULLSEYEARC%, you may spend 1&nbsp;%FORCE%. If you do, change 1&nbsp;%CRIT% result to a %HIT% result or 1 %HIT% result to a %FOCUS% result.%LINEBREAK%<strong>Fine-tuned Controls:</strong> After you fully execute a maneuver, you may spend 1&nbsp;%FORCE% to perform a %BOOST% or %BARRELROLL% action."""
        "L'ulo L'ampar":
           display_name: """L’ulo L’ampar"""
           text: """While you defend or perform a primary attack, if you are stressed, you <b>must</b> roll 1 fewer defense die or 1 additional attack die.%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red %ROTATEARC% action."""
        "Maarek Stele":
           display_name: """Maarek Stele"""
           text: """While you perform an attack, if the defender would be dealt a faceup damage card, instead draw 3 damage cards, choose 1, and discard the rest.%LINEBREAK%<strong>Advanced Targeting Computer:</strong> While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1&nbsp;%HIT% result to a %CRIT% result. """
        "Mace Windu":
           display_name: """Mace Windu"""
           text: """After you fully execute a red maneuver, recover 1&nbsp;%FORCE%.%LINEBREAK%<strong>Fine-tuned Controls:</strong> After you fully execute a maneuver, you may spend 1&nbsp;%FORCE% to perform a %BOOST% or %BARRELROLL% action."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """While a friendly ship at range 0-2 defends, the attacker cannot reroll more than 1 attack die."""
        "Major Rhymer":
           display_name: """Major Rhymer"""
           text: """While you perform a %TORPEDO% or %MISSILE% attack, you may increase or decrease the range requirement by 1, to a limit of 0-3. %LINEBREAK%<strong>Nimble Bomber:</strong> If you would drop a device using a %STRAIGHT% template, you may use a %BANKLEFT% or %BANKRIGHT% template of the same speed instead."""
        "Major Stridan":
           display_name: """Major Stridan"""
           text: """While you coordinate or resolve the effect of one of your upgrades, you may treat friendly ships at range 2-3 as being at range 0 or range 1.%LINEBREAK%<strong>Linked Battery:</strong> While you perform a %CANNON% attack, roll 1 additional die."""
        "Major Vermeil":
           display_name: """Major Vermeil"""
           text: """While you perform an attack, if the defender does not have any green tokens, you may change 1 of your blank or %FOCUS% results to a %HIT% result.%LINEBREAK% %LINEBREAK%<strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver."""
        "Major Vynder":
           display_name: """Major Vynder"""
           text: """While you defend, if you are disarmed, roll 1 additional defense die."""
        "Manaroo":
           display_name: """Manaroo"""
           text: """At the start of the Engagement Phase, you may choose a friendly ship at range 0-1. If you do, transfer all green tokens assigned to you to that ship."""
        "Mining Guild Sentry":
           display_name: """Mining Guild Sentry"""
           text: """<i class = flavor_text>As part of its arrangement with the Empire, the Mining Guild receives modified TIE/ln Fighters to protect its operations. These craft have solar panels removed from their stabilizers for improved visibility, and feature more extensive life support systems for the benefit of their corporate pilots.</i>%LINEBREAK%<strong>Notched Stabilizers:</strong> While you move, you ignore asteroids."""
        "Mining Guild Surveyor":
           display_name: """Mining Guild Surveyor"""
           text: """<i class = flavor_text>With Imperial construction projects consuming raw materials at an unprecedented rate, the Mining Guild ruthlessly exploits newly discovered deposits of doonium ore on worlds such as Batonn, Lothal, and Umbara.</i>%LINEBREAK%<strong>Notched Stabilizers:</strong> While you move, you ignore asteroids."""
        "Miranda Doni":
           display_name: """Miranda Doni"""
           text: """While you perform a primary attack, you may either spend 1 shield to roll 1 additional attack die or, if you are not shielded, you may roll 1 fewer attack die to recover 1 shield."""
        "Moralo Eval":
           display_name: """Moralo Eval"""
           text: """If you would flee, you may spend 1&nbsp;%CHARGE%. If you do, place yourself in reserves instead. At the start of the next Planning Phase, place yourself within range 1 of the edge of the play area that you fled from."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """After you gain a stress token, if there is an enemy ship in your %FRONTARC% at range 0-1, you may remove that stress token.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Norra Wexley (Y-Wing)":
           display_name: """Norra Wexley"""
           text: """While you defend, if there is an enemy ship at range 0-1, add 1&nbsp;%EVADE% result to your dice results."""
        "Norra Wexley":
           display_name: """Norra Wexley"""
           text: """While you defend, if there is an enemy ship at range 0-1, add 1&nbsp;%EVADE% result to your dice results. %LINEBREAK% <i>Errata (since rules reference 1.0.2): Removed “you may”</i>"""
        "Nu Squadron Pilot":
           display_name: """Nu Squadron Pilot"""
           text: """<i class = flavor_text>With a design inspired by other Cygnus Spaceworks vessels, the Alpha-class star wing is a versatile craft assigned to Imperial Navy specialist units that need a starfighter they can outfit for multiple roles.</i>"""
        "N'dru Suhlak":
           display_name: """N’dru Suhlak"""
           text: """While you perform a primary attack, if there are no other friendly ships at range 0-2, roll 1 additional attack die."""
        "Obi-Wan Kenobi":
           display_name: """Obi-Wan Kenobi"""
           text: """After a friendly ship at range&nbsp;0-2 spends a focus token, you may spend 1&nbsp;%FORCE%. If you do, that ship gains 1&nbsp;focus token.%LINEBREAK%<strong>Fine-tuned Controls:</strong> After you fully execute a maneuver, you may spend 1&nbsp;%FORCE% to perform a %BOOST% or %BARRELROLL% action."""
        "Obsidian Squadron Pilot":
           display_name: """Obsidian Squadron Pilot"""
           text: """<i class = flavor_text>The TIE fighter’s Twin Ion Engine system was designed for speed, making the TIE/ln one of the most maneuverable starships ever mass-produced.</i>"""
        "Old Teroch":
           display_name: """Old Teroch"""
           text: """At the start of the Engagement Phase, you may choose 1 enemy ship at range 1. If you do and you are in its %FRONTARC%, it removes all of its green tokens.%LINEBREAK%<strong>Concordia Faceoff:</strong> While you defend, if the attack range is 1 and you are in the attacker’s %FRONTARC%, change 1 result to an %EVADE% result."""
        "Omega Squadron Ace":
           display_name: """Omega Squadron Ace"""
           text: """<i class = flavor_text>Only pilots who have demonstrated both exceptional skill and unwavering dedication are rewarded with coveted positions in the First Order squadrons operating secretly against the New Republic during the Cold War.</i>"""
        "Omega Squadron Expert":
           display_name: """Omega Squadron Expert"""
           text: """<i class = flavor_text>The TIE/sf is a versatile starfighter that carries specialized armament and experimental systems for long-range operations by First Order Special Forces.</i>%LINEBREAK%<strong>Heavy Weapon Turret:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You <b>must</b> treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%."""
        "Omicron Group Pilot":
           display_name: """Omicron Group Pilot"""
           text: """<i class = flavor_text>Noted for its tri-wing design and advanced sensor suite, the Lambda-class shuttle serves a critical role as a light utility craft in the Imperial Navy.</i>"""
        "Onyx Squadron Ace":
           display_name: """Onyx Squadron Ace"""
           text: """<i class = flavor_text>The experimental TIE defender outclasses all other contemporary starfighters, though its size, speed, and array of weapons come at a tremendous cost in credits.</i>%LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Onyx Squadron Scout":
           display_name: """Onyx Squadron Scout"""
           text: """<i class = flavor_text>Designed for extended engagements, the TIE/ag is flown primarily by elite pilots trained to leverage both its unique weapons loadout and its maneuverability to full effect.</i>"""
        "Outer Rim Pioneer":
           display_name: """Outer Rim Pioneer"""
           text: """Friendly ships at range 0-1 can perform attacks at range 0 of obstacles.%LINEBREAK%<strong>Co-Pilot:</strong> While you are docked, your carrier ship has your pilot ability in addition to its own."""
        "Outer Rim Smuggler":
           display_name: """Outer Rim Smuggler"""
           text: """<i class = flavor_text>Known for its durability and modular design, the YT-1300 is one of the most popular, widely used, and extensively customized freighters in the galaxy.</i>"""
        "Overseer Yushyn":
           display_name: """Overseer Yushyn"""
           text: """Before a friendly ship at range 1 would gain a disarm token, if that ship is not stressed, you may spend 1&nbsp;%CHARGE%. If you do, that ship gains 1 stress token instead.%LINEBREAK%<strong>Notched Stabilizers:</strong> While you move, you ignore asteroids."""
        "Padmé Amidala":
           display_name: """Padmé Amidala"""
           text: """While an enemy ship in your %FRONTARC% defends or performs an attack that ship can modify only 1 %EVADE% result (other results can still be modified). %LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Palob Godalhi":
           display_name: """Palob Godalhi"""
           text: """At the start of the Engagement Phase, you may choose 1 enemy ship in your firing arc at range 0-2. If you do, transfer 1 focus or evade token from that ship to yourself."""
        "Pammich Nerro Goode":
           text: """While you have 2 or fewer stress tokens, you may execute red maneuvers even while stressed"""
        "Partisan Renegade":
           display_name: """Partisan Renegade"""
           text: """<i class = flavor_text>Saw Gerrera’s partisans were first established to oppose Separatist forces on Onderon during the Clone Wars, and continued to wage war against galactic tyranny as the Empire rose to power.</i>"""
        "Patrol Leader":
           display_name: """Patrol Leader"""
           text: """<i class = flavor_text>To be granted command of a VT-49 Decimator is seen as a significant promotion for a middling officer of the Imperial Navy.</i>"""
        "Petty Officer Thanisson":
           display_name: """Petty Officer Thanisson"""
           text: """During the Activation or Engagement Phase, after a ship in your %FRONTARC% at range&nbsp;0-2 gains 1 stress token, you may spend 1&nbsp;%CHARGE%. If you do, that ship gains 1&nbsp;tractor token.%LINEBREAK%<strong>Linked Battery:</strong> While you perform a %CANNON% attack, roll 1 additional die."""
        "Phoenix Squadron Pilot":
           display_name: """Phoenix Squadron Pilot"""
           text: """<i class = flavor_text>Led by Commander Jun Sato, the brave but inexperienced pilots of Phoenix Squadron face staggering odds in their battle against the Galactic Empire.</i>%LINEBREAK%<strong>Vectored Thrusters:</strong> After you perform an action, you may perform a red %BOOST% action."""
        "Planetary Sentinel":
           display_name: """Planetary Sentinel"""
           text: """<i class = flavor_text>To protect its many military installations, the Empire requires a swift and vigilant defense force.</i>%LINEBREAK% <strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver."""
        "Plo Koon":
           display_name: """Plo Koon"""
           text: """At the start of the Engagement Phase, you may spend 1 %FORCE% and choose another friendly ship at range 0-2. If you do, you may transfer 1 green token to it or transfer one orange token from it to yourself.%LINEBREAK%<strong>Fine-tuned Controls:</strong> After you fully execute a maneuver, you may spend 1&nbsp;%FORCE% to perform a %BOOST% or %BARRELROLL% action."""
        "Poe Dameron":
           display_name: """Poe Dameron"""
           text: """After you perform an action, you may spend 1&nbsp;%CHARGE% to perform a white action, treating it as red.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Prince Xizor":
           display_name: """Prince Xizor"""
           text: """While you defend, after the Neutralize Results step, another friendly ship at range 0-1 and in the attack arc may suffer 1&nbsp;%HIT% or %CRIT% damage. If it does, cancel 1 matching result.%LINEBREAK%<strong>Microthrusters:</strong> While you perform a barrel roll, you <b>must</b> use the %BANKLEFT% or %BANKRIGHT% template instead of the %STRAIGHT% template."""
        "Quinn Jast":
           display_name: """Quinn Jast"""
           text: """At the start of the Engagement Phase, you may gain 1 disarm token to recover 1&nbsp;%CHARGE% on 1 of your equipped upgrades. %LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Rear Admiral Chiraneau":
           display_name: """Rear Admiral Chiraneau"""
           text: """While you perform an attack, if you are reinforced and the defender is in the %FULLFRONTARC% or %FULLREARARC% matching your reinforce token, you may change 1 of your %FOCUS% results to a %CRIT% result."""
        "Rebel Scout":
           display_name: """Rebel Scout"""
           text: """<i class = flavor_text>Designed to look like a bird in flight by the Corellian Engineering Corporation, “hawk” series ships are exemplary transport craft. Swift and rugged, the HWK-290 is often employed by Rebel agents as a mobile base of operations.</i>"""
        "Red Squadron Expert":
           display_name: """Red Squadron Expert"""
           text: """<i class = flavor_text>Although the bulk of the Resistance Starfighter Corps is made up of young volunteers from the New Republic, their ranks are bolstered by veterans of the Galactic Civil War determined to finish what they started decades ago.</i>%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Red Squadron Veteran":
           display_name: """Red Squadron Veteran"""
           text: """<i class = flavor_text>Created as an elite starfighter squad, Red Squadron includes some of the best pilots in the Rebel Alliance.</i>"""
        "Resistance Sympathizer":
           display_name: """Resistance Sympathizer"""
           text: """<i class = flavor_text>After witnessing the Hosnian Cataclysm, some spacers willingly aided the Resistance with whatever ships they had.</i>"""
        "Rexler Brath":
           display_name: """Rexler Brath"""
           text: """After you perform an attack that hits, if you are evading, expose 1 of the defender’s damage cards.%LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Rey":
           display_name: """Rey"""
           text: """While you defend or perform an attack, if the enemy ship is in your %FRONTARC%, you may spend 1&nbsp;%FORCE% to change 1 of your blank results to an %EVADE% or %HIT% result."""
        "Rho Squadron Pilot":
           display_name: """Rho Squadron Pilot"""
           text: """<i class = flavor_text>The elite pilots of Rho Squadron instill terror in the Rebellion, using both the Xg-1 assault configuration and Os-1 arsenal loadout of the Alpha-class star wing to devastating effect.</i>"""
        "Roark Garnet":
           display_name: """Roark Garnet"""
           text: """At the start of the Engagement Phase, you may choose 1 ship in your firing arc. If you do, it engages at initiative 7 instead of its standard initiative value this phase."""
        "Rogue Squadron Escort":
           display_name: """Rogue Squadron Escort"""
           text: """<i class = flavor_text>The elite pilots of Rogue Squadron are among the Rebellion’s very best.</i> %LINEBREAK% <strong>Experimental Scanners:</strong> You can acquire locks beyond range 3. You cannot acquire locks at range 1."""
        "Rose Tico":
           text: """While you defend or perform an attack, you may reroll up to 1 of your results for each other friendly ship in the attack arc."""
        "Saber Squadron Ace":
           display_name: """Saber Squadron Ace"""
           text: """<i class = flavor_text>Led by Baron Soontir Fel, the pilots of Saber Squadron are among the Empire’s best. Their TIE interceptors are marked with red stripes to designate pilots with at least ten confirmed kills. </i> %LINEBREAK%  <strong> Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """Before you activate, you may perform a %BARRELROLL% or %BOOST% action.%LINEBREAK%<strong>Locked and Loaded:</strong> While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus primary %REARARC% attack."""
        "Sabine Wren (TIE Fighter)":
           display_name: """Sabine Wren"""
           text: """Before you activate, you may perform a %BARRELROLL% or %BOOST% action."""
        "Sabine Wren (Scum)":
           display_name: """Sabine Wren"""
           text: """While you defend, if the attacker is in your %SINGLETURRETARC% at range 0-2, you may add 1&nbsp;%FOCUS% result to your dice results."""
        "Saesee Tiin":
           display_name: """Saesee Tiin"""
           text: """After a friendly ship at range 0-2 reveals its dial, you may spend 1 %FORCE%. If you do, set its dial to another maneuver of the same speed and difficulty.%LINEBREAK%<strong>Fine-tuned Controls:</strong> After you fully execute a maneuver, you may spend 1&nbsp;%FORCE% to perform a %BOOST% or %BARRELROLL% action."""
        "Sarco Plank":
           display_name: """Sarco Plank"""
           text: """While you defend, you may treat your agility value as equal to the speed of the maneuver you executed this round.%LINEBREAK%<strong>Spacetug Tractor Array:</strong> <strong>Action:</strong> Choose a ship in your %FRONTARC% at range 1. That ship gains 1 tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """While a damaged friendly ship at range 0-3 performs an attack, it may reroll 1 attack die."""
        "Scarif Base Pilot":
           display_name: """Scarif Base Pilot"""
           text: """<i class = flavor_text>The TIE reaper was designed to ferry elite troops to flashpoints on the battlefield, notably carrying Director Krennic’s dreaded death troopers at the Battle of Scarif.</i>%LINEBREAK%<strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver."""
        "Scimitar Squadron Pilot":
           display_name: """Scimitar Squadron Pilot"""
           text: """<i class = flavor_text>The TIE/sa is exceptionally nimble for a bomber, allowing it to pinpoint its target while avoiding excessive collateral damage to the surrounding area.</i> %LINEBREAK%<strong>Nimble Bomber:</strong> If you would drop a device using a %STRAIGHT% template, you may use a %BANKLEFT% or %BANKRIGHT% template of the same speed instead."""
        "Separatist Bomber":
           display_name: """Separatist Bomber"""
           text: """<i class = flavor_text>The droid armies of the Separatists are callous to the plight of civilians and make no effort to limit collateral damage.</i>%LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "Separatist Drone":
           display_name: """Separatist Drone"""
           text: """<i class = flavor_text>As the Clone Wars escalate, the Separatist Alliance continues to develop the technology of droid starfighters, as well as the tactical droids that command them.</i>%LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "Serissu":
           display_name: """Serissu"""
           text: """While a friendly ship at range 0-1 defends, it may reroll 1 of its dice.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Seventh Sister":
           display_name: """Seventh Sister"""
           text: """While you perform a primary attack, before the Neutralize Results step, you may spend 2&nbsp;%FORCE% to cancel 1&nbsp;%EVADE% result."""
        "Seyn Marana":
           display_name: """Seyn Marana"""
           text: """While you perform an attack, you may spend 1&nbsp;%CRIT% result. If you do, deal 1 facedown damage card to the defender, then cancel your remaining results."""
        "Shadowport Hunter":
           display_name: """Shadowport Hunter"""
           text: """<i class = flavor_text>Crime syndicates augment the lethal skills of their loyal contractors with the best technology available, like the fast and formidable Lancer-class pursuit craft.</i>"""
        "Shara Bey":
           display_name: """Shara Bey"""
           text: """While you defend or perform a primary attack, you may spend 1 lock you have on the enemy ship to add 1&nbsp;%FOCUS% result to your dice results."""
        "Sienar Specialist":
           display_name: """Sienar Specialist"""
           text: """<i class = flavor_text>During the development of the TIE aggressor, Sienar Fleet Systems valued performance and versatility over raw cost efficiency.</i>"""
        "Sienar-Jaemus Engineer":
           display_name: """Sienar-Jaemus Engineer"""
           text: """<i class = flavor_text>Developed by Sienar-Jaemus Fleet Systems as a successor to the vaunted TIE Defender, the TIE/vn Silencer incorporates bleeding-edge technologies developed at research facilities hidden in the Unknown Regions.</i>%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "Sigma Squadron Ace":
           display_name: """Sigma Squadron Ace"""
           text: """<i class = flavor_text>Featuring a hyperdrive and shields, the TIE phantom is also equipped with five laser cannons, giving it substantial firepower for an Imperial fighter.</i>%LINEBREAK%<strong>Stygium Array:</strong> After you decloak, you may perform an %EVADE% action. At the start of the End Phase, you may spend 1 evade token to gain 1 cloak token."""
        "Skakoan Ace":
           display_name: """Skakoan Ace"""
           text: """<i class = flavor_text>With its powerful engines, devastating triple laser cannons, and high customizability, the Belbullab-22 is the chosen craft of several elite Separatist Alliance pilots, including the infamous General Grievous.</i>"""
        "Skull Squadron Pilot":
           display_name: """Skull Squadron Pilot"""
           text: """<i class = flavor_text>The aces of Skull Squadron favor an aggressive approach, using their craft’s pivot wing technology to achieve unmatched agility in the pursuit of their quarry.</i> %LINEBREAK% <strong>Concordia Faceoff:</strong> While you defend, if the attack range is 1 and you are in the attacker’s %FRONTARC%, change 1 result to an %EVADE% result."""
        "Sol Sixxa":
           display_name: """Sol Sixxa"""
           text: """If you would drop a device using a [1&nbsp;%STRAIGHT%] template, you may drop it using any speed 1 template instead."""
        "Soontir Fel":
           display_name: """Soontir Fel"""
           text: """At the start of the Engagement Phase, if there is an enemy ship in your %BULLSEYEARC%, gain 1 focus token.%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "Spice Runner":
           display_name: """Spice Runner"""
           text: """<i class = flavor_text>Though its cargo space is limited compared to other light freighters, the small, swift HWK-290 is a favorite choice of smugglers who specialize in discreetly transporting precious goods.</i>"""
        "Squad Seven Veteran":
           display_name: """Squad Seven Veteran"""
           text: """<i class = flavor_text>Clone Flight Seven serves as part of the Open Circle Fleet under legendary Jedi Generals such as Plo Koon and Obi-Wan Kenobi, and won glory at the battles of Coruscant and Cato Neimoidia.</i>"""
        "Starkiller Base Pilot":
           display_name: """Starkiller Base Pilot"""
           text: """<i class = flavor_text>The Upsilon-class command shuttle serves as a base of operations for many of the First Order's senior officers and agents. Its powerful sensors and communications equipment allow them to orchestrate the spread of terror across the galaxy.</i>%LINEBREAK%<strong>Linked Battery:</strong> While you perform a %CANNON% attack, roll 1 additional die."""
        "Storm Squadron Ace":
           display_name: """Storm Squadron Ace"""
           text: """<i class = flavor_text>The TIE Advanced x1 was produced in limited quantities, but Sienar engineers incorporated many of its best qualities into their next TIE model: the TIE Interceptor.</i>%LINEBREAK%<strong>Advanced Targeting Computer:</strong> While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1&nbsp;%HIT% result to a %CRIT% result."""
        "Sunny Bounder":
           display_name: """Sunny Bounder"""
           text: """While you defend or perform an attack, after you roll or reroll your dice, if you have the same result on each of your dice, you may add 1 matching result.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "TN-3465":
           display_name: """TN-3465"""
           text: """While another friendly ship performs an attack, if you are at range 0-1 of the defender, you may suffer 1&nbsp;%CRIT% damage to change 1 of the attacker’s results to a %CRIT% result."""
        "Tala Squadron Pilot":
           display_name: """Tala Squadron Pilot"""
           text: """<i class = flavor_text>The AF4 series is the latest in a long line of Headhunter designs. Cheap and relatively durable, it is a favorite among independent outfits like the Rebellion.</i>"""
        "Tallissan Lintra":
           display_name: """Tallissan Lintra"""
           text: """While an enemy ship in your %BULLSEYEARC% performs an attack, you may spend 1&nbsp;%CHARGE%.  If you do, the defender rolls 1 additional die.%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red %ROTATEARC% action."""
        "Talonbane Cobra":
           display_name: """Talonbane Cobra"""
           text: """While you defend at attack range 3 or perform an attack at attack range 1, roll 1 additional die."""
        "Tansarii Point Veteran":
           display_name: """Tansarii Point Veteran"""
           text: """<i class = flavor_text>The defeat of Black Sun ace Talonbane Cobra by Car’das smugglers turned the tide of the Battle of Tansarii Point Station. Survivors of the clash are respected throughout the sector.</i> %LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Techno Union Bomber":
           display_name: """Techno Union Bomber"""
           text: """<i class = flavor_text>Baktoid Armor Workshop developed the Hyena as a strike craft compatible with Trade Federation Vulture swarm tactics.</i>%LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "Tel Trevura":
           display_name: """Tel Trevura"""
           text: """If you would be destroyed, you may spend 1&nbsp;%CHARGE%. If you do, discard all of your damage cards, suffer 5&nbsp;%HIT% damage, and place yourself in reserves instead. At the start of the next Planning Phase, place yourself within range 1 of your player edge."""
        "Temmin Wexley":
           display_name: """Temmin Wexley"""
           text: """After you fully execute a speed 2-4 maneuver, you may perform a %BOOST% action.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Tempest Squadron Pilot":
           display_name: """Tempest Squadron Pilot"""
           text: """<i class = flavor_text>The TIE Advanced improved on the popular TIE/ln design by adding shielding, better weapons systems, curved solar panels, and a hyperdrive.</i>%LINEBREAK%<strong>Advanced Targeting Computer:</strong> While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1&nbsp;%HIT% result to a %CRIT% result."""
        "Ten Numb":
           display_name: """Ten Numb"""
           text: """While you defend or perform an attack, you may spend 1 stress token to change all of your %FOCUS% results to %EVADE% or %HIT% results."""
        "Thane Kyrell":
           display_name: """Thane Kyrell"""
           text: """While you perform an attack, you may spend 1&nbsp;%FOCUS%, %HIT%, or %CRIT% result to look at the defender’s facedown damage cards, choose 1, and expose it."""
        "Tomax Bren":
           display_name: """Tomax Bren"""
           text: """After you perform a %RELOAD% action, you may recover 1&nbsp;%CHARGE% token on 1 of your equipped %TALENT% upgrade cards. %LINEBREAK%<strong>Nimble Bomber:</strong> If you would drop a device using a %STRAIGHT% template, you may use a %BANKLEFT% or %BANKRIGHT% template of the same speed instead."""
        "Torani Kulda":
           display_name: """Torani Kulda"""
           text: """After you perform an attack, each enemy ship in your %BULLSEYEARC% suffers 1&nbsp;%HIT% damage unless it removes 1 green token.%LINEBREAK%<strong>Dead to Rights:</strong> While you perform an attack, if the defender is in your %BULLSEYEARC%, defense dice cannot be modified using green tokens."""
        "Torkil Mux":
           display_name: """Torkil Mux"""
           text: """At the start of the Engagement Phase, you may choose 1 ship in your firing arc. If you do, that ship engages at initiative 0 instead of its normal initiative value this round."""
        "Trade Federation Drone":
           display_name: """Trade Federation Drone"""
           text: """<i class = flavor_text>The Trade Federation deployed countless Vulture Droids at the Battle of Naboo, and continues to use these inexpensive starfighters in the Clone Wars.</i>%LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "Trandoshan Slaver":
           display_name: """Trandoshan Slaver"""
           text: """<i class = flavor_text>The spacious triple-decker design of the YV-666 makes it popular among bounty hunters and slavers, who often retrofit an entire deck for prisoner transport.</i>"""
        "Turr Phennir":
           display_name: """Turr Phennir"""
           text: """After you perform an attack, you may perform a %BARRELROLL% or %BOOST% action, even if you are stressed.%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """At the start of the Engagement Phase, if there are one or more other ships at range 0, you and each other ship at range 0 gain 1 tractor token.%LINEBREAK%<strong>Spacetug Tractor Array:</strong> <strong>Action:</strong> Choose a ship in your %FRONTARC% at range 1. That ship gains 1 tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1."""
        "Valen Rudor":
           display_name: """Valen Rudor"""
           text: """After a friendly ship at range 0-1 defends (after damage is resolved, if any), you may perform an action."""
        "Ved Foslo":
           display_name: """Ved Foslo"""
           text: """While you execute a maneuver, you may execute a maneuver of the same bearing and difficulty of a speed 1 higher or lower instead.%LINEBREAK%<strong>Advanced Targeting Computer:</strong> While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1&nbsp;%HIT% result to a %CRIT% result."""
        "Vennie":
           display_name: """Vennie"""
           text: """While you defend, if the attacker is in a friendly ship’s %SINGLETURRETARC%, you may add 1 %FOCUS% result to your roll."""
        "Viktor Hel":
           display_name: """Viktor Hel"""
           text: """After you defend, if you did not roll exactly 2 defense dice, the attacker gains 1 stress token."""
        "Warden Squadron Pilot":
           display_name: """Warden Squadron Pilot"""
           text: """<i class = flavor_text>Koensayr Manufacturing’s K-wing boasts an advanced SubLight Acceleration Motor and an unprecedented 18 hard points, granting it unrivaled speed and firepower.</i>"""
        "Wat Tambor":
           display_name: """Wat Tambor"""
           text: """While you perform a primary attack, you may reroll 1 attack die for each calculating friendly ship at range&nbsp;1 of the defender."""
        "Wedge Antilles":
           display_name: """Wedge Antilles"""
           text: """While you perform an attack, the defender rolls 1 fewer defense die."""
        "Wild Space Fringer":
           display_name: """Wild Space Fringer"""
           text: """<i class = flavor_text>Although stock YT-2400 light freighters have plenty of room for cargo, that space is often annexed to support modified weapon systems and oversized engines.</i>%LINEBREAK%<strong>Sensor Blindspot:</strong> While you perform a primary attack at attack range 0-1, do not apply the range 0-1 bonus and roll 1 fewer attack die."""
        "Wullffwarro":
           display_name: """Wullffwarro"""
           text: """While you perform a primary attack, if you are damaged, you may roll 1 additional attack die."""
        "Zari Bangel":
           display_name: """Zari Bangel"""
           text: """You do not skip your Perform Action step after you partially execute a maneuver.%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red %ROTATEARC% action."""
        "Zealous Recruit":
           display_name: """Zealous Recruit"""
           text: """<i class = flavor_text>Mandalorian Fang fighter pilots must master the Concordia Faceoff maneuver, leveraging their ships’ narrow attack profile to execute deadly head-on charges.</i> %LINEBREAK% <strong>Concordia Faceoff:</strong> While you defend, if the attack range is 1 and you are in the attacker’s %FRONTARC%, change 1 result to an %EVADE% result."""
        "Zertik Strom":
           display_name: """Zertik Strom"""
           text: """During the End Phase, you may spend a lock you have on an enemy ship to expose 1 of that ship’s damage cards.%LINEBREAK%<strong>Advanced Targeting Computer:</strong> While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1&nbsp;%HIT% result to a %CRIT% result."""
        "Zeta Squadron Pilot":
           display_name: """Zeta Squadron Pilot"""
           text: """<i class = flavor_text>Unhampered by a cumbersome galactic bureaucracy, technologies originally researched by the Empire’s TIE Advanced program are now mass-produced on First Order starfighters. As a result, TIE/fo pilots enjoy higher survival rates than their predecessors in the Galactic Empire.</i>"""
        "Zeta Squadron Survivor":
           display_name: """Zeta Squadron Survivor"""
           text: """<i class = flavor_text>Humiliated by their failure, the remaining pilots from Starkiller Base are eager to prove their worth in pursuit of the Resistance.</i>%LINEBREAK%<strong>Heavy Weapon Turret:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You <b>must</b> treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """While you perform a primary attack, you may roll 1 additional attack die. If you do, the defender rolls 1 additional defense die."""
        '"Avenger"':
           display_name: """“Avenger”"""
           text: """After another friendly ship is destroyed, you may perform an action, even while stressed.%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        '"Axe"':
           display_name: """“Axe”"""
           text: """After you defend or perform an attack, you may choose a friendly ship at range&nbsp;1-2 in your %LEFTARC%  or %RIGHTARC%. If you do, transfer 1 green token to that ship."""
        '"Backdraft"':
           display_name: """“Backdraft”"""
           text: """While you perform a %SINGLETURRETARC% primary attack, if the defender is in your %REARARC%, roll 1 additional die.%LINEBREAK%<strong>Heavy Weapon Turret:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You <b>must</b> treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%."""
        '"Blackout"':
           display_name: """“Blackout”"""
           text: """While you perform an attack, if the attack is obstructed by an obstacle, the defender rolls 2 fewer defense dice.%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        '"Chopper"':
           display_name: """“Chopper”"""
           text: """At the start of the Engagement Phase, each enemy ship at range 0 gains 2 jam tokens. %LINEBREAK%<strong>Tail Gun:</strong> While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship’s primary %FRONTARC% attack value."""
        '"Countdown"':
           display_name: """“Countdown”"""
           text: """While you defend, after the Neutralize Results step, if you are not stressed, you may suffer 1&nbsp;%HIT% damage and gain 1 stress token. If you do, cancel all dice results.%LINEBREAK%<strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver."""
        '"Deathfire"':
           display_name: """“Deathfire”"""
           text: """After you are destroyed, before you are removed, you may perform an attack and drop or launch 1 device.%LINEBREAK%<strong>Nimble Bomber:</strong> If you would drop a device using a %STRAIGHT% template, you may use a %BANKLEFT% or %BANKRIGHT% template of the same speed instead."""
        '"Deathrain"':
           display_name: """“Deathrain”"""
           text: """After you drop or launch a device, you may perform an action."""
        '"Double Edge"':
           display_name: """“Double Edge”"""
           text: """After you perform a %TURRET% or %MISSILE% attack that misses, you may perform a bonus attack using a different weapon."""
        '"Duchess"':
           display_name: """“Duchess”"""
           text: """You may choose not to use your <strong>Adaptive Ailerons</strong>. %LINEBREAK%You may use your <strong>Adaptive Ailerons</strong> even while stressed.%LINEBREAK%<strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver."""
        '"Dutch" Vander':
           display_name: """“Dutch” Vander"""
           text: """After you perform the %LOCK% action, you may choose 1 friendly ship at range 1-3. That ship may acquire a lock on the object you locked, ignoring range restrictions."""
        '"Echo"':
           display_name: """“Echo”"""
           text: """While you decloak, you <b>must</b> use the [2&nbsp;%BANKLEFT%] or [2&nbsp;%BANKRIGHT%] template instead of the [2&nbsp;%STRAIGHT%] template.%LINEBREAK%<strong>Stygium Array:</strong> After you decloak, you may perform an %EVADE% action. At the start of the End Phase, you may spend 1 evade token to gain 1 cloak token."""
        '"Howlrunner"':
           display_name: """“Howlrunner”"""
           text: """While a friendly ship at range 0-1 performs a primary attack, that ship may reroll 1 attack die."""
        '"Jag"':
           display_name: """“Jag”"""
           text: """After a friendly ship at range&nbsp;1-2 in your %LEFTARC%  or %RIGHTARC%  defends, you may acquire a lock on the attacker."""
        '"Kickback"':
           display_name: """“Kickback”"""
           text: """After you perform a %BARRELROLL% action, you may perform a red %LOCK% action."""
        '"Leebo"':
           display_name: """“Leebo”"""
           text: """After you defend or perform an attack, if you spent a calculate token, gain 1 calculate token.%LINEBREAK%<strong>Sensor Blindspot:</strong> While you perform a primary attack at attack range 0-1, do not apply the range 0-1 bonus and roll 1 fewer attack die."""
        '"Longshot"':
           display_name: """“Longshot”"""
           text: """While you perform a primary attack at attack range 3, roll 1 additional attack die."""
        '"Mauler" Mithel':
           display_name: """“Mauler” Mithel"""
           text: """While you perform an attack at attack range 1, roll 1 additional attack die."""
        '"Midnight"':
           display_name: """“Midnight”"""
           text: """While you defend or perform an attack, if you have a lock on the enemy ship, that ship’s dice cannot be modified."""
        '"Muse"':
           display_name: """“Muse”"""
           text: """At the start of the Engagement Phase, you may choose a friendly ship at range&nbsp;0-1. If you do, that ship removes 1&nbsp;stress token."""
        '"Night Beast"':
           display_name: """“Night Beast”"""
           text: """After you fully execute a blue maneuver, you may perform a %FOCUS% action."""
        '"Null"':
           display_name: """“Null”"""
           text: """While you are not damaged, treat your initiative value as 7."""
        '"Odd Ball"':
           display_name: """“Odd Ball”"""
           text: """After you fully execute a red maneuver or perform a red action, if there is an enemy ship in your %BULLSEYEARC%, you may acquire a lock on that ship."""
        '"Odd Ball" (ARC-170)':
           display_name: """“Odd Ball”"""
           text: """After you fully execute a red maneuver or perform a red action, if there is an enemy ship in your %BULLSEYEARC%, you may acquire a lock on that ship."""
        '"Pure Sabacc"':
           display_name: """“Pure Sabacc”"""
           text: """While you perform an attack, if you have 1 or fewer damage cards, you may roll 1 additional attack die.%LINEBREAK%<strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver."""
        '"Quickdraw"':
           display_name: """“Quickdraw”"""
           text: """After you lose a shield, you may spend 1&nbsp;%CHARGE%. If you do, you may perform a bonus primary attack.%LINEBREAK%<strong>Heavy Weapon Turret:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You <b>must</b> treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%."""
        '"Recoil"':
           display_name: """“Recoil”"""
           text: """While you are stressed, you may treat enemy ships in your %FRONTARC% at range 0-1 as being in your %BULLSEYEARC%.%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        '"Redline"':
           display_name: """“Redline”"""
           text: """You can maintain up to 2 locks. %LINEBREAK%After you perform an action, you may acquire a lock."""
        '"Scorch"':
           display_name: """“Scorch”"""
           text: """While you perform a primary attack, if you are not stressed, you may gain 1 stress token to roll 1 additional attack die."""
        '"Scourge" Skutu':
           display_name: """“Scourge” Skutu"""
           text: """While you perform an attack against a defender in your %BULLSEYEARC%, roll 1 additional attack die."""
        '"Sinker"':
           display_name: """“Sinker”"""
           text: """While a friendly ship at range&nbsp;1-2 in your %LEFTARC% or %RIGHTARC% performs a primary attack, it may reroll 1&nbsp;attack die."""
        '"Static"':
           display_name: """“Static”"""
           text: """While you perform a primary attack, you may spend your lock on the defender and a focus token to change all of your results to %CRIT% results."""
        '"Swoop"':
           display_name: """“Swoop”"""
           text: """After a friendly small or medium ship fully executes a speed 3-4 maneuver, if it is at range&nbsp;0-1, it may perform a red %BOOST% action."""
        '"Tucker"':
           display_name: """“Tucker”"""
           text: """After a friendly ship at range&nbsp;1-2 performs an attack against an enemy ship in your %FRONTARC%, you may perform a %FOCUS%&nbsp;action."""
        '"Vizier"':
           display_name: """“Vizier”"""
           text: """After you fully execute a speed 1 maneuver using your <strong>Adaptive Ailerons</strong> ship ability, you may perform a %COORDINATE% action. If you do, skip your Perform Action step.%LINEBREAK%<strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver."""
        '"Wampa"':
           display_name: """“Wampa”"""
           text: """While you perform an attack, you may spend 1&nbsp;%CHARGE% to roll 1 additional attack die.%LINEBREAK%After defending, lose 1&nbsp;%CHARGE%."""
        '"Whisper"':
           display_name: """“Whisper”"""
           text: """After you perform an attack that hits, gain 1 evade token.%LINEBREAK%<strong>Stygium Array:</strong> After you decloak, you may perform an %EVADE% action. At the start of the End Phase, you may spend 1 evade token to gain 1 cloak token."""
        '"Wolffe"':
           display_name: """“Wolffe”"""
           text: """While you perform a primary %FRONTARC% attack, you may spend 1 %CHARGE% to reroll 1&nbsp;attack die. %LINEBREAK%While you perform a primary %REARARC% attack, you may recover 1&nbsp;%CHARGE% to roll 1&nbsp;additional attack die. """
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """While you defend, %CRIT% results are neutralized before %HIT% results.%LINEBREAK%<strong>Locked and Loaded:</strong> While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus primary %REARARC% attack."""
        '"Zeb" Orrelios (Sheathipede)':
           display_name: """“Zeb” Orrelios"""
           text: """While you defend, %CRIT% results are neutralized before %HIT% results.%LINEBREAK%<strong>Comms Shuttle:</strong> While you are docked, your carrier ship gains %COORDINATE%. Before your carrier ship activates, it may perform a %COORDINATE% action."""
        '"Zeb" Orrelios (TIE Fighter)':
           display_name: """“Zeb” Orrelios"""
           text: """While you defend, %CRIT% results are neutralized before %HIT% results."""
        "Bombardment Drone":
           text: """If you would drop a device, you may launch that device instead, using the same template. %LINEBREAK% NETWORKED CALCULATIONS: While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range 0-1 to change 1 %FOCUS% result to an %EVADE% or %HIT% result."""
        "Haor Chall Prototype":
           display_name: """Haor Chall Prototype"""
           text: """After an enemy ship in your %BULLSEYEARC% at range&nbsp;0-2 declares another friendly ship as the defender, you may perform a %CALCULATE% or %LOCK% action.%LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "Precise Hunter":
           display_name: """Precise Hunter"""
           text: """While you perform an attack, if the defender is in your %BULLSEYEARC%, you may reroll 1&nbsp;blank result.%LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """While you defend or perform an attack, you may reroll up to 1 of your results for each other friendly ship in the attack arc."""
        "Pammich Nerro Goode":
           display_name: """Pammich Nerro Goode"""
           text: """While you have 2 or fewer stress tokens, you may execute red maneuvers even while stressed."""
        "Padmé Amidala":
           display_name: """Padmé Amidala"""
           text: """While an enemy ship in your %FRONTARC% defends or performs an attack, that ship can modify only 1 %FOCUS% result (other results can still be modified). %LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Anakin Skywalker (N-1 Starfighter)":
           display_name: """Anakin Skywalker"""
           text: """Before you reveal your maneuver, you may spend 1 %FORCE% to barrel roll (this is not an action). %LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Ric Olié":
           display_name: """Ric Olié"""
           text: """While you defend or perform a primary attack, if the speed of your revealed maneuver is higher than the enemy ship's, roll 1 additional die. %LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Dineé Ellberger":
           display_name: """Dineé Ellberger"""
           text: """While you defend or perform an attack, if the speed of your revealed maneuver is the same as the enemy ship's, that ship's dice cannot be modified. %LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Naboo Handmaiden":
           display_name: """Naboo Handmaiden"""
           text: """<strong>Setup:</strong> After placing forces, assign the <strong>Decoyed</strong> condition to 1 friendly ship other than <strong>Naboo Handmaiden</strong>. %LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Bravo Flight Officer":
           display_name: """Bravo Flight Officer"""
           text: """<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "BB-8":
           display_name: """BB-8"""
           text: """During the System Phase, you may perform a red %BARRELROLL% or %BOOST% action."""
        "Finn":
           display_name: """Finn"""
           text: """While you defend or perform an attack, you may add 1 blank result, or you may gain 1 strain token to add 1 focus result instead."""
        "Cova Nell":
           display_name: """Cova Nell"""
           text: """While you defend or perform a primary attack, if your revealed maneuver is red, roll 1 additional die."""
        "Nodin Chavdri":
           display_name: """Nodin Chavdri"""
           text: """After you coordinate or are coordinated, if you have 2 or fewer stress tokens, you may perform 1 action on your action bar as a red action, even if you are stressed."""
        "Vi Moradi":
           display_name: """Vi Moradi"""
           text: """<strong>Setup:</strong> After placing forces, assign the <strong>Compromising Intel</strong> condition to 1 enemy ship."""
        "Shadow Squadron Veteran":
           text: """<strong>Plated Hull:</strong> While you defend, if you are not critically damaged, change 1 %CRIT% to a %HIT% result."""
        "Red Squadron Bomber":
           text: """<strong>Plated Hull:</strong> While you defend, if you are not critically damaged, change 1 %CRIT% to a %HIT% result."""
        '"Goji"':
           text: """While a friendly ship at range 0-3 defends, it may roll 1 additional defense die for each friendly bomb at 0-1 of it. %LINEBREAK%<strong>Plated Hull:</strong> While you defend, if you are not critically damaged, change 1 %CRIT% to a %HIT% result. %LINEBREAK% <i>Errata (since rules reference 1.1.0): Removed "or mine"</i>"""
        '"Broadside"':
           text: """While you perform a %SINGLETURRETARC% attack, if your %SINGLETURRETARC% indicator is in your %LEFTARC% or %RIGHTARC%, you may change 1 blank result to a %FOCUS% result. %LINEBREAK%<strong>Plated Hull:</strong> While you defend, if you are not critically damaged, change 1 %CRIT% to a %HIT% result."""
        '"Matchstick"':
           text: """While you perform a primary or %SINGLETURRETARC% attack, you may reroll 1 attack die for each red token you have. %LINEBREAK%<strong>Plated Hull:</strong> While you defend, if you are not critically damaged, change 1 %CRIT% to a %HIT% result."""
        '"Odd Ball" (Y-Wing)':
           text: """After you execute a red maneuver or perform a red action, if there is an enemy ship in your %BULLSEYEARC%, you may acquire a lock on that ship. %LINEBREAK%<strong>Plated Hull:</strong> While you defend, if you are not critically damaged, change 1 %CRIT% to a %HIT% result."""
        "R2-D2":
           text: """At the start of the Engagement Phase, if there is an enemy ship in your %REARARC%, gain 1 calculate token.%LINEBREAK%<strong>Plated Hull:</strong> While you defend, if you are not critically damaged, change 1 %CRIT% to a %HIT% result."""
        "Anakin Skywalker (Y-Wing)":
           text: """After you fully execute a maneuver, if there is an enemy ship in your %FRONTARC% at range 0-1 or in your %BULLSEYEARC%, you may spend 1 %FORCE% to remove 1 stress token.%LINEBREAK%<strong>Plated Hull:</strong> While you defend, if you are not critically damaged, change 1 %CRIT% to a %HIT% result."""
        "Sun Fac":
           text: """While you perform a primary attack, if the defender is tractored, roll 1 additional attack die. %LINEBREAK% <strong>Pinpoint Tractor Array:</strong> You cannot rotate your %SINGLETURRETARC% to your %REARARC%. After you execute a maneuver, you may gain 1 tractor token to perform a %ROTATEARC% action."""
        "Stalgasin Hive Guard":
           text: """<strong>Pinpoint Tractor Array:</strong> You cannot rotate your %SINGLETURRETARC% to your %REARARC%. After you execute a maneuver, you may gain 1 tractor token to perform a %ROTATEARC% action."""
        "Petranaki Arena Ace":
           text: """<strong>Pinpoint Tractor Array:</strong> You cannot rotate your %SINGLETURRETARC% to your %REARARC%. After you execute a maneuver, you may gain 1 tractor token to perform a %ROTATEARC% action."""
        "Berwer Kret":
           text: """After you perform an attack that hits, each friendly ship with %CALCULATE% on its action bar and a lock on the defender may perform a red %CALCULATE% action. %LINEBREAK%<strong>Pinpoint Tractor Array:</strong> You cannot rotate your %SINGLETURRETARC% to your %REARARC%. After you execute a maneuver, you may gain 1 tractor token to perform a %ROTATEARC% action."""
        "Chertek":
           text: """While you perform a primary attack, if the defender is tractored, you may reroll up to 2 attack dice. %LINEBREAK%<strong>Pinpoint Tractor Array:</strong> You cannot rotate your %SINGLETURRETARC% to your %REARARC%. After you execute a maneuver, you may gain 1 tractor token to perform a %ROTATEARC% action."""
        "Gorgol":
           text: """During the System Phase, you may gain 1 disarm token and choose a friendly ship at range 1-2. If you do, it gains 1 tractor token, then repairs 1 of its faceup <strong>Ship</strong> trait damage cards. %LINEBREAK%<strong>Pinpoint Tractor Array:</strong> You cannot rotate your %SINGLETURRETARC% to your %REARARC%. After you execute a maneuver, you may gain 1 tractor token to perform a %ROTATEARC% action."""
        "Kazuda Xiono":
           text: """While you defend or perform a primary attack, if the enemy ship's initiative is higher than the number of damage cards you have, you may roll 1 additional die. %LINEBREAK%<strong>Explosion with Wings:</strong> You are dealt 1 facedown damage card. After you perform a %SLAM% action, you may expose 1 damage card to remove 1 disarm token."""
        "Major Vonreg":
           text: """During the System Phase, you may choose 1 enemy ship in your %BULLSEYEARC%. That ship gains 1 deplete or strain token of your choice. %LINEBREAK%<strong>Fine-Tuned Thrusters:</strong> After you fully execute a maneuver, if you are not depleted or strained, you may gain 1 deplete or strain token to perform a %LOCK% or %BARRELROLL% action."""
        "First Order Provocateur":
           text: """<strong>Fine-Tuned Thrusters:</strong> After you fully execute a maneuver, if you are not depleted or strained, you may gain 1 deplete or strain token to perform a %LOCK% or %BARRELROLL% action."""
        '"Ember"':
           text: """While you perform an attack, if there is a damaged ship friendly to the defender at range 0-1 of the defender, the defender cannot spend focus or calculate tokens. %LINEBREAK%<strong>Fine-Tuned Thrusters:</strong> After you fully execute a maneuver, if you are not depleted or strained, you may gain 1 deplete or strain token to perform a %LOCK% or %BARRELROLL% action."""
        '"Holo"':
           text: """At the start of the Engagement Phase, you <b>must</b> transfer 1 of your tokens to another friendly ship at range 0-2. %LINEBREAK%<strong>Fine-Tuned Thrusters:</strong> After you fully execute a maneuver, if you are not depleted or strained, you may gain 1 deplete or strain token to perform a %LOCK% or %BARRELROLL% action."""
        "Captain Phasma":
           text: """While you defend, after the Neutralize Results step, another friendly ship at range 0-1 <b>must</b> suffer 1 %HIT%/%CRIT% damage to cancel 1 matching result. %LINEBREAK%<strong>Heavy Weapon Turret:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You <b>must</b> treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%."""
        '"Rush"':
           text: """While you are damaged, treat your initiative as 6. %LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "Zizi Tlo":
           text: """After you defend or perform an attack, you may spend 1 %CHARGE% to gain 1 focus or evade token. %LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red %ROTATEARC% action."""
        "Ronith Blario":
           text: """While you defend or perform an attack, if the enemy ship is in another friendly ship's %SINGLETURRETARC%, you may spend 1 focus token from that friendly ship to change 1 of your %FOCUS% results to an %EVADE% or %HIT% result. %LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red %ROTATEARC% action."""
        "Gina Moonsong":
           text: """At the start of the Engagement Phase, you <b>must</b> transfer 1 of your stress tokens to another friendly ship at range 0-2."""
        "K-2SO":
           text: """After you gain a stress token, gain 1 calculate token."""
        "Alexsandr Kallus":
           text: """While you defend, if the attacker modified any attack dice, you may roll 1 additional defense die. %LINEBREAK%<strong>Tail Gun:</strong> While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship’s primary %FRONTARC% attack value. <br><i>Errata (since rules reference 1.2.0): Added missing ship ability"""
        "Leia Organa":
           text: """After a friendly ship fully executes a red maneuver, if it is at range 0-3, you may spend 1 %FORCE%. If you do, that ship gains 1 focus token or recovers 1 %FORCE%."""
        "Paige Tico":
           text: """After you drop a device, you may spend 1 %CHARGE% to drop an additional device."""
        "Fifth Brother":
           text: """While you perform an attack, after the Neutralize Results step, if the attack hit, you may spend 2 %FORCE% to add 1 %CRIT% result."""
        '"Vagabond"':
           text: """After you fully execute a maneuver using your <strong>Adaptive Ailerons</strong>, if you are not stressed you may drop 1 device. %LINEBREAK%<strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver."""
        "Morna Kee":
           text: """During the End Phase, you may spend 1 %CHARGE% to flip 1 of your reinforce tokens to the other full arc instead of removing it."""
        "Lieutenant LeHuse":
           text: """While you perform an attack, you may spend another friendly ship's lock on the defender to reroll any number of your results. %LINEBREAK%<strong>Heavy Weapon Turret:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You <b>must</b> treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%."""
        "Bossk (Z-95 Headhunter)":
           display_name: """Bossk"""
           text: """While you perform a primary attack, after the Neutralize Results step, you may spend 1 %CRIT% result to add 2 %HIT% results. %LINEBREAK%<strong>Pursuit Craft:</strong> After you deploy, you may acquire a lock on a ship the friendly <strong>Hound's Tooth</strong> has locked."""
        "G4R-GOR V/M":
           text: """After you defend, each other ship at range 0 suffers 1 %CRIT% damage. %LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Nom Lumb":
           text: """After you become the defender, if the attacker is not in your %SINGLETURRETARC%, you <b>must</b> rotate your %SINGLETURRETARC% indicator to a standard arc the attacker is in."""
        "Jarek Yeager":
           text: """While you have 2 or fewer stress tokens, if you are damaged, you can execute red basic maneuvers even while stressed. If you are critically damaged, you can execute red advanced maneuvers even while stressed. %LINEBREAK%<strong>Explosion with Wings:</strong> You are dealt 1 facedown damage card. After you perform a %SLAM% action, you may expose 1 damage card to remove 1 disarm token."""
        "R1-J5":
           text: """Before you expose 1 of your damage cards, you may look at your facedown damage cards, choose 1 and expose that card instead. %LINEBREAK%<strong>Explosion with Wings:</strong> You are dealt 1 facedown damage card. After you perform a %SLAM% action, you may expose 1 damage card to remove 1 disarm token."""
        "Colossus Station Mechanic":
           text: """<strong>Explosion with Wings:</strong> You are dealt 1 facedown damage card. After you perform a %SLAM% action, you may expose 1 damage card to remove 1 disarm token."""
        "212th Battalion Pilot":
           text: """<strong>Fire Convergence:</strong> While a friendly ship performs a non-%SINGLETURRETARC% attack, if the defender is in your turret arc you may spend 1 charge token, if you do the attacker may reroll up to 2 results."""
        '"Hawk"':
           text: """At the start of the End Phase, each friendly ship at range 0-1 that has a revealed maneuver of speed 3-5 may gain 1 strain token to perform a %BARRELROLL% or %BOOST% action. %LINEBREAK%<strong>Fire Convergence:</strong> While a friendly ship performs a non-%SINGLETURRETARC% attack, if the defender is in your turret arc you may spend 1 charge token, if you do the attacker may reroll up to 2 results."""
        '"Hound"':
           text: """After a friendly ship in your %SINGLETURRETARC% gains a deplete or strain token, if you have no tokens of that type, you may transfer that token to yourself. %LINEBREAK%<strong>Fire Convergence:</strong> While a friendly ship performs a non-%SINGLETURRETARC% attack, if the defender is in your turret arc you may spend 1 charge token, if you do the attacker may reroll up to 2 results."""
        '"Warthog"':
           text: """After you or a friendly non-limited ship at range 0-2 are destroyed during the Engagement Phase, that ship is not removed until the end of that phase. %LINEBREAK%<strong>Fire Convergence:</strong> While a friendly ship performs a non-%SINGLETURRETARC% attack, if the defender is in your turret arc you may spend 1 charge token, if you do the attacker may reroll up to 2 results."""
        "Baktoid Drone":
           text: """%LINEBREAK%<strong>Networked Aim:</strong> You cannot spend your locks to reroll attack dice. While you perform an attack, you may reroll a number of attack dice up to the number of friendly locks on the defender."""
        "Separatist Predator":
           text: """%LINEBREAK%<strong>Networked Aim:</strong> You cannot spend your locks to reroll attack dice. While you perform an attack, you may reroll a number of attack dice up to the number of friendly locks on the defender."""
        "DGS-286":
           text: """Before you engage, you may choose another friendly ship at range 0-1. That ship transfers 1 calculate token to you. %LINEBREAK%<strong>Networked Aim:</strong> You cannot spend your locks to reroll attack dice. While you perform an attack, you may reroll a number of attack dice up to the number of friendly locks on the defender."""
        "DGS-047":
           text: """After you perform an attack, if the defender is in your %FRONTARC%, you may acquire a lock on it. Then, if the defender is in your %BULLSEYEARC%, it gains 1 strain token. %LINEBREAK%<strong>Networked Aim:</strong> You cannot spend your locks to reroll attack dice. While you perform an attack, you may reroll a number of attack dice up to the number of friendly locks on the defender."""
        "Geonosian Prototype":
           text: """While you perform a %MISSILE% or %CANNON% attack, you may remove 1 tractor token from the defender to reroll up to 2 attack dice. %LINEBREAK%<strong>Networked Aim:</strong> You cannot spend your locks to reroll attack dice. While you perform an attack, you may reroll a number of attack dice up to the number of friendly locks on the defender."""
        "Onderon Oppressor":
           text: """After you barrel roll or sideslip, if you are stressed. Gain 1 calculate token. %LINEBREAK%<strong>Networked Aim:</strong> You cannot spend your locks to reroll attack dice. While you perform an attack, you may reroll a number of attack dice up to the number of friendly locks on the defender."""
        "Jedi General":
           text: """<strong>Intuitive Controls:</strong> During the System Phase, you may perform a purple %BARRELROLL% or purple %BOOST% action."""
        "Yoda":
           text: """After another friendly ship at range 0-3 spends 1 or more %FORCE%, you may spend 1 %FORCE%. If you do, that ship recovers 1 %FORCE%. %LINEBREAK% <strong>Intuitive Controls:</strong> During the System Phase, you may perform a purple %BARRELROLL% or purple %BOOST% action."""
        "Shaak Ti":
           text: """At the start of the End Phase, you may spend any number of %FORCE% to choose that many friendly ships at range 0-2. Each chosen ship does not remove 1 focus or evade token during this End Phase. %LINEBREAK% <strong>Intuitive Controls:</strong> During the System Phase, you may perform a purple %BARRELROLL% or purple %BOOST% action."""
        "Aayla Secura":
           text: """While and enemy ship in your %FRONTARC% at range 0-1 performs an attack, the defender may change 1 blank result to a %FOCUS% result. %LINEBREAK% <strong>Intuitive Controls:</strong> During the System Phase, you may perform a purple %BARRELROLL% or purple %BOOST% action."""
        "Obi-Wan Kenobi (Eta-2)":
           display_name: """Obi-Wan Kenobi"""
           text: """After you or a friendly <b>Anakin Skywalker</b> at range 0-3 executes a maneuver, if there are more enemy ships than other friendly ships at range 0-1 of that ship, you may spend 1 %FORCE%. If you do, that ship gains 1 focus token. %LINEBREAK% <strong>Intuitive Controls:</strong> During the System Phase, you may perform a purple %BARRELROLL% or purple %BOOST% action."""
        "Anakin Skywalker (Eta-2)":
           display_name: """Anakin Skywalker"""
           text: """After you or a friendly <b>Obi-Wan Kenobi</b> ship at range 0-3 executes a maneuver, if there are more enemy ships than other friendly ships at range 0-1 of that ship, you may spend 1 %FORCE%. If you do, that ship removes 1 red token of your choice. %LINEBREAK% <strong>Intuitive Controls:</strong> During the System Phase, you may perform a purple %BARRELROLL% or purple %BOOST% action."""
        "TransGalMeg Control Link":
           text: """<strong>Hyperspace Docking Ring:</strong> 1 Delta-7 Aethersprite, Eta-2 Actis, or Nimbus-class V-wing can dock with you. %LINEBREAK% While a ship is docked with you, you gain that ship's initiative and are assigned that ship's dial. While you execute a maneuver, reduce its speed to 1. Before you execute an advanced maneuver, execute a white stationary maneuver (%STOP%) instead, then you may rotate 90º or 180º. %LINEBREAK% While no ship is docked with you, you are not assigned a maneuver dial and do not activate or engage."""
        "Jango Fett":
           text: """While you defend or perform a primary attack, if the difficulty of your revealed maneuver is less than that of the enemy ship's, you may change 1 of the enemy ship's %FOCUS% results to a blank result."""
        "Separatist Interceptor":
           text: """ %LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "Colicoid Interceptor":
           text: """ %LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "Phlac-Arphocc Prototype":
           text: """During the System Phase, you may spend your lock on a ship to look at that ship's dial. %LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "Fearsome Predator":
           text: """<strong>Setup:</strong> After placing forces, assign the <b>Fearful Prey</b> condition to 1 enemy ship. %LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "DIS-347":
           text: """At the start of the Engagement Phase, you may acquire a lock on an object at range 1-3 that has a friendly lock. %LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "DIS-T81":
           text: """While you defend or perform an attack, you may spend 1 calculate token from a friendly ship in the enemy ship's firing arc to change 1 %FOCUS% result to an %EVADE% or %HIT% result. %LINEBREAK%<strong>Networked Calculations:</strong> While you defend or perform an attack, you may spend 1 calculate token from a friendly ship at range&nbsp;0-1 to change 1&nbsp;%FOCUS% result to an %EVADE% or %HIT% result."""
        "Lyttan Dree":
           text: """While a friendly ship at range 0-2 performs an attack, if you are in the defender's %LEFTARC% or %RIGHTARC%, the attacker may reroll 1 attack die. %LINEBREAK% <strong>Rotating Cannons:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You must treat the %FRONTARC% requirement of your equipped %CANNON% upgrades as %SINGLETURRETARC%."""
        '"Rampage"':
           text: """After you execute a speed 3-4 maneuver, you may choose a ship in your %SINGLETURRETARC% at range 0-1. If you do, that ship gains 1 strain token, or 2 strain tokens if you are damaged. %LINEBREAK% <strong>Rotating Cannons:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You must treat the %FRONTARC% requirement of your equipped %CANNON% upgrades as %SINGLETURRETARC%."""
        "Onyx Squadron Sentry":
           text: """%LINEBREAK% <strong>Rotating Cannons:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You must treat the %FRONTARC% requirement of your equipped %CANNON% upgrades as %SINGLETURRETARC%."""
        "Carida Academy Cadet":
           text: """%LINEBREAK% <strong>Rotating Cannons:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You must treat the %FRONTARC% requirement of your equipped %CANNON% upgrades as %SINGLETURRETARC%."""
        "Poe Dameron (HoH)":
           text: """After a friendly ship at range 0-2 performs an action during its activation, you may spend 2 %CHARGE%. If you do, that ship may perform a white action, treating it as red. %LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Temmin Wexley (HoH)":
           text: """At the start of the Engagement Phase, each friendly T-70 X-wing at range 0-3 may gain 1 strain token to flip its equipped %CONFIGURATION% upgrade. If it does, that ship gains 1 calculate token. %LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "C'ai Threnalli":
           text: """After you fully execute a maneuver, if you moved through a friendly ship, you may perform an %EVADE% action. %LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Nimi Chireen":
           text: """While you perform an attack, if the defender's initiative is higher than yours, you may change 1 blank result to a %FOCUS% result. %LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Merl Cobben":
           text: """While a friendly ship at range 0-2 performs a primary attack, if you are in the defender's %BULLSEYEARC%, the defender rolls 1 fewer defense die. %LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red %ROTATEARC% action."""
        "Seftin Vanik":
           text: """After you perform a %BOOST% action, you may transfer 1 evade token to a friendly ship at range 1. %LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red %ROTATEARC% action."""
        "Suralinda Javos":
           text: """After you partially execute a maneuver, you may gain 1 strain token to rotate 90º or 180º. %LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red %ROTATEARC% action."""
        "Wrobie Tyce":
           text: """After you defend at attack range 1, if the attacker modified its dice, the attacker gains 1 deplete token. %LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red %ROTATEARC% action."""
        "Agent Terex":
           text: """<strong>Setup:</strong> After placing forces, choose any number of your equipped %ILLICIT% upgrades and equip them to friendly TIE/fo or TIE/sf fighters. Each ship can be assigned only 1 %ILLICIT% this way. %LINEBREAK% <strong>End of Game:</strong> Return all %ILLICIT% upgrades to their original ships."""
        "Commander Malarus (Xi Shuttle)":
           display_name: """Commander Malarus"""
           text: """While a friendly ship at range 0-2 performs a primary attack, if it has 1 or more blank results, that ship <b>must</b> gain 1 strain token to reroll 1 blank result, if able."""
        "Gideon Hask (Xi Shuttle)":
           display_name: """Gideon Hask"""
           text: """While you or a friendly small ship at range 0-2 performs a primary attack against a damaged defender, if the attacker rolled 2 or fewer attack dice, it may gain 1 strain token to roll 1 additional attack die."""
        "Loyalist Volunteer":
           text: """<strong>Twin Ion Engines:</strong> Ignore the "TIE" ship restriction on upgrade cards."""
        "Shadow Squadron Escort":
           text: """<strong>Twin Ion Engines:</strong> Ignore the "TIE" ship restriction on upgrade cards."""
        "Wilhuff Tarkin":
           text: """During the System Phase, you may choose an object that you have locked at range 1. Another friendly ship at range 1-3 may acquire a lock on that object. %LINEBREAK%<strong>Twin Ion Engines:</strong> Ignore the "TIE" ship restriction on upgrade cards."""
        '"Klick"':
           text: """While a ship that you have locked at range 1-3 defends or performs an attack, you may spend 1 %CHARGE% to prevent range bonuses from being applied. %LINEBREAK%<strong>Twin Ion Engines:</strong> Ignore the "TIE" ship restriction on upgrade cards."""
        '"Contrail"':
           text: """While you defend or perform an attack, if the bearing of your revealed maneuver is the same as the enemy ship's, you may change 1 of the enemy ship's %FOCUS% results to a blank result. %LINEBREAK%<strong>Twin Ion Engines:</strong> Ignore the "TIE" ship restriction on upgrade cards."""
        '"Odd Ball" (V-Wing)':
           display_name: """“Odd Ball”"""
           text: """After you fully execute a red maneuver or perform a red action, if there is an enemy ship in your %BULLSEYEARC%, you may acquire a lock on that ship. %LINEBREAK%<strong>Twin Ion Engines:</strong> Ignore the "TIE" ship restriction on upgrade cards."""
        "Boba Fett (Separatist)":
           display_name: """Boba Fett"""
           text: """While you defend, if there are no other friendly ships at range 0-2, you may change 1 of your blank results to a %FOCUS% result."""
        "Zam Wesell":
           text: """<strong>Setup:</strong> Lose 2 %CHARGE%. %LINEBREAK% During the System Phase, you may assign 1 of your secret conditions to yourself facedown: <strong> %LINEBREAK% You Should Thank Me %LINEBREAK% You'd Better Mean Business. </strong>"""
        "Jango Fett":
           text: """While you defend or perform a primary attack, if the difficulty of your revealed maneuver is less than that of the enemy ship's, you may change 1 of the enemy ship's %FOCUS% results to a blank result."""

        # Epic Ships
        "Republic Judiciary":
           display_name: """Republic Judiciary"""
           text: """<i class = flavor_text>The Galactic Republic uses small, swift warships such as the CR90 corvette to respond rapidly to Separatist incursions across the galaxy.</i> %LINEBREAK% <strong>Broadside Batteries:</strong> You can acquire locks and perform primary attacks at range 1-4."""
        "Alderaanian Guard":
           display_name: """Alderaanian Guard"""
           text: """<i class = flavor_text>A craft used since before the Clone Wars, the CR90 corvette is favored by the Royal House of Alderaan for its versatility.</i> %LINEBREAK% <strong>Broadside Batteries:</strong> You can acquire locks and perform primary attacks at range 1-4."""
        "Outer Rim Patrol":
           display_name: """Outer Rim Patrol"""
           text: """<i class = flavor_text>The <untalic>Raider</untalic>-class corvette is one of the Empire's smallest warships, often used for reconnaissance missions, surgical strikes, or suppressing enemy starfighters with its powerful ordnance.</i> %LINEBREAK% <strong>Concentrated Batteries:</strong> While you perform a primary, %TORPEDO%, or %MISSILE% attack, if the defender is in your %BULLSEYEARC%, roll 1 additional die."""
        "First Order Collaborators":
           display_name: """First Order Collaborators"""
           text: """<i class = flavor_text>The First Order's supporters make use of former Imperial vessels, such as the <untalic>Raider</untalic>-class corvette. Though it has outlived the regime that created it, this craft still spreads terror across the galaxy.</i> %LINEBREAK% <strong>Concentrated Batteries:</strong> While you perform a primary, %TORPEDO%, or %MISSILE% attack, if the defender is in your %BULLSEYEARC%, roll 1 additional die."""
        "Echo Base Evacuees":
           display_name: """Echo Base Evacuees"""
           text: """<i class = flavor_text>The GR-75 medium transport acquitted itself well at battles such as the evacuation of Hoth, where several of these ships were pivotal to the Rebel forces' escape.</i> %LINEBREAK% <strong>Resupply Craft:</strong> After another friendly ship at range 0-1 performs an action, you may spend 1 %ENERGY%. If you do, it removes 1 orange or red token, or recovers 1 shield."""
        "New Republic Volunteers":
           display_name: """New Republic Volunteers"""
           text: """<i class = flavor_text>In use since the Galactic Civil War, groups within the New Republic still utilize the GR-75 medium transport for supply and aid missions.</i> %LINEBREAK% <strong>Resupply Craft:</strong> After another friendly ship at range 0-1 performs an action, you may spend 1 %ENERGY%. If you do, it removes 1 orange or red token, or recovers 1 shield."""
        "Outer Rim Garrison":
           display_name: """Outer Rim Garrison"""
           text: """<i class = flavor_text>Capable of carrying TIE fighters and operating independently for long periods of time, the <untalic>Gozanti</untalic>-class cruiser is a common sight in the skies of downtrodden worlds across the Outer Rim.</i> %LINEBREAK% <strong>Docking Clamps:</strong> You can dock up to 4 small ships."""
        "First Order Sympathizers":
           display_name: """First Order Sympathizers"""
           text: """<i class = flavor_text>The First Order's swift rise to power rests upon ruthless innovation. However, sympathizers often repurpose Imperial designs, like the venerable <untalic>Gozanti</untalic>-class cruiser, in surveillance and patrol operations.</i> %LINEBREAK% <strong>Docking Clamps:</strong> You can dock up to 4 small ships."""
        "Separatist Privateers":
           display_name: """Separatist Privateers"""
           text: """<i class = flavor_text>The Separatist Alliance makes use of all manner of unsavory contacts in its fight against the Galactic Republic, including corsairs and criminal cartels.</i> %LINEBREAK% <strong>Overdrive Burners:</strong> While you defend, if your revealed maneuver is speed 3-5, roll 1 additional defense die."""
        "Syndicate Smugglers":
           display_name: """Syndicate Smugglers"""
           text: """<i class = flavor_text>Vessels like the C-ROC Cruiser allow criminal operations across the Outer Rim to move massive amounts of illicit materials, or project power that can bully small colonies into compliance.</i> %LINEBREAK% <strong>Overdrive Burners:</strong> While you defend, if your revealed maneuver is speed 3-5, roll 1 additional defense die."""



    upgrade_translations =
        "0-0-0":
           display_name: """0-0-0"""
           text: """At the start of the Engagement Phase, you may choose 1 enemy ship at range 0-1. If you do, you gain 1 calculate token unless that ship chooses to gain 1 stress token."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """While you perform an attack, after rolling attack dice, you may name a type of green token. If you do, gain 2 ion tokens and, during this attack, the defender cannot spend tokens of the named type."""
        "Andrasta":
           display_name: """Andrasta"""
           text: """ """
        "Black One":
           display_name: """Black One"""
           text: """After you perform a %SLAM% action, lose 1&nbsp;%CHARGE%. Then you may gain 1 ion token to remove 1 disarm token.%LINEBREAK%If your %CHARGE% is inactive, you cannot perform the %SLAM% action."""
        "Dauntless":
           display_name: """Dauntless"""
           text: """After you partially execute a maneuver, you may perform 1 white action, treating that action as red."""
        "Ghost":
           display_name: """Ghost"""
           text: """You can dock 1 attack shuttle or Sheathipede-class shuttle.%LINEBREAK%Your docked ships can deploy only from your rear guides."""
        "Havoc":
           display_name: """Havoc"""
           text: """  """
        "Hound's Tooth":
           display_name: """Hound’s Tooth"""
           text: """1 Z-95-AF4 headhunter can dock with you."""
        "IG-2000":
           display_name: """IG-2000"""
           text: """You have the pilot ability of each other friendly ship with the <strong>IG-2000</strong> upgrade."""
        "Marauder":
           display_name: """Marauder"""
           text: """While you perform a primary %REARARC% attack, you may reroll 1 attack die."""
        "Millennium Falcon":
           display_name: """Millennium Falcon"""
           text: """While you defend, if you are evading, you may reroll 1 defense die."""
        "Mist Hunter":
           display_name: """Mist Hunter"""
           text: """ """
        "Moldy Crow":
           display_name: """Moldy Crow"""
           text: """Gain a %FRONTARC% primary weapon with a value of “3.”%LINEBREAK%During the End Phase, do not remove up to 2 focus tokens."""
        "Outrider":
           display_name: """Outrider"""
           text: """ While you perform an attack that is obstructed by an obstacle, the defender rolls 1 fewer defense die. %LINEBREAK% After you fully execute a maneuver, if you moved through or overlapped an obstacle, you may remove 1 of your red or orange tokens. %LINEBREAK% <i>Errata (since rules reference 1.0.2): changed "obstructed attack" to "an attack that is obstructed by an obstacle"</i>"""
        "Phantom":
           display_name: """Phantom"""
           text: """You can dock at range 0-1."""
        "Punishing One":
           display_name: """Punishing One"""
           text: """While you perform a primary attack, if the defender is in your %FRONTARC%, roll 1 additional attack die."""
        "ST-321":
           display_name: """ST-321"""
           text: """After you perform a %COORDINATE% action, you may choose an enemy ship at range 0-3 of the ship you coordinated. If you do, acquire a lock on that enemy ship, ignoring range restrictions."""
        "Scimitar":
           display_name: """Scimitar"""
           text: """<strong>Setup:</strong> After the Place Forces step, you may cloak.%LINEBREAK%After you decloak, you may choose an enemy ship in your %BULLSEYEARC%. If you do, it gains 1&nbsp;jam token."""
        "Shadow Caster":
           display_name: """Shadow Caster"""
           text: """After you perform an attack that hits, if the defender is in your %SINGLETURRETARC% and your %FRONTARC%, the defender gains 1 tractor token."""
        "Slave I":
           display_name: """Slave I"""
           text: """After you reveal a turn (%TURNLEFT% or %TURNRIGHT%) or bank (%BANKLEFT% or %BANKRIGHT%) maneuver you may set your dial to the maneuver of the same speed and bearing in the other direction. %LINEBREAK%<i>Errata (since rules reference 1.0.2): removed "you may gain 1 stress token. If you do,"</i>"""
        "Virago":
           display_name: """Virago"""
           text: """During the End Phase, you may spend 1&nbsp;%CHARGE% to perform a red %BOOST% action."""
        "Soulless One":
           display_name: """Soulless One"""
           text: """While you defend, if the attacker is outside your firing arc, you may reroll 1&nbsp;defense die."""
        "Ablative Plating":
           display_name: """Ablative Plating"""
           text: """Before you would suffer damage from an obstacle or from a friendly bomb detonating, you may spend 1&nbsp;%CHARGE%. If you do, prevent 1 damage."""
        "Admiral Sloane":
           display_name: """Admiral Sloane"""
           text: """After another friendly ship at range 0-3 defends, if it is destroyed, the attacker gains 2 stress tokens.%LINEBREAK%While a friendly ship at range 0-3 performs an attack against a stressed ship, it may reroll 1 attack die."""
        "Adv. Proton Torpedoes":
           display_name: """Adv. Proton Torpedoes"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. Change 1&nbsp;%HIT% result to a %CRIT% result."""
        "Advanced Optics":
           display_name: """Advanced Optics"""
           text: """While you perform an attack, you may spend 1 focus token to change 1 of your blank results to a %HIT% result."""
        "Advanced SLAM":
           display_name: """Advanced SLAM"""
           text: """After you perform a %SLAM% action, if you fully executed the maneuver, you may perform a white action on your action bar, treating that action as red."""
        "Advanced Sensors":
           display_name: """Advanced Sensors"""
           text: """After you reveal your dial, you may perform 1 action.%LINEBREAK%If you do, you cannot perform another action during your activation."""
        "Afterburners":
           display_name: """Afterburners"""
           text: """After you fully execute a speed 3-5 maneuver, you may spend 1&nbsp;%CHARGE% to perform a %BOOST% action, even while stressed."""
        "Agent Kallus":
           display_name: """Agent Kallus"""
           text: """<strong>Setup:</strong> After placing forces, assign the <strong>Hunted</strong> condition to 1 enemy ship.%LINEBREAK%While you perform an attack against the ship with the <strong>Hunted</strong> condition, you may change 1 of your %FOCUS% results to a %HIT% result.%LINEBREAK%<i>Errata (since rules reference 1.1.0)</i>:"Added After placing forces,"</i>"""
        "Agile Gunner":
           display_name: """Agile Gunner"""
           text: """During the End Phase, you may rotate your %SINGLETURRETARC% indicator."""
        "Autoblasters":
           text: """<strong>Attack:</strong>If the defender is in your %BULLSEYEARC%, roll 1 additional die. During the Neutralize Results step, if you are not in the defenders %FRONTARC%, %EVADE% results do not cancel %CRIT% results."""
        "BB Astromech":
           display_name: """BB Astromech"""
           text: """Before you execute a blue maneuver, you may spend 1&nbsp;%CHARGE% to perform a %BARRELROLL% action."""
        "BB-8":
           display_name: """BB-8"""
           text: """Before you execute a blue maneuver, you may spend 1&nbsp;%CHARGE% to perform a&nbsp;%BARRELROLL% or&nbsp;%BOOST% action."""
        "BT-1":
           display_name: """BT-1"""
           text: """While you perform an attack, you may change 1&nbsp;%HIT% result to a %CRIT% result for each stress token the defender has."""
        "Barrage Rockets":
           display_name: """Barrage Rockets"""
           text: """<strong>Attack (%FOCUS%):</strong> Spend 1&nbsp;%CHARGE%. If the defender is in your %BULLSEYEARC%, you may spend 1 or more %CHARGE% to reroll that many attack dice."""
        "Battle Meditation":
           display_name: """Battle Meditation"""
           text: """You cannot coordinate limited ships.%LINEBREAK% While you perform a purple %COORDINATE% action, you may coordinate 1 additional friendly non-limited ship of the same type. Both ships must perform the same action."""
        "Baze Malbus":
           display_name: """Baze Malbus"""
           text: """While you perform a %FOCUS% action, you may treat it as red. If you do, gain 1 additional focus token for each enemy ship at range 0-1, to a maximum of 2."""
        "Biohexacrypt Codes":
           display_name: """Biohexacrypt Codes"""
           text: """While you coordinate or jam, if you have a lock on a ship, you may spend that lock to choose that ship, ignoring range restrictions."""
        "Bistan":
           display_name: """Bistan"""
           text: """After you perform a primary attack, if you are focused, you may perform a bonus %SINGLETURRETARC% attack against a ship you have not already attacked this round."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """<strong>Setup:</strong> Start in reserve.%LINEBREAK%At the end of Setup, place yourself at range 0 of an obstacle and beyond range 3 of any enemy ship."""
        "Bomblet Generator":
           display_name: """Bomblet Generator"""
           text: """<strong>Bomb</strong>%LINEBREAK%During the System Phase, you may spend 1&nbsp;%CHARGE% to drop a Bomblet with the [1&nbsp;%STRAIGHT%] template.%LINEBREAK%At the start of the Activation Phase, you may spend 1 shield to recover 2 %CHARGE%."""
        "Bossk":
           display_name: """Bossk"""
           text: """After you perform a primary attack that misses, if you are not stressed, you <b>must</b> receive 1 stress token to perform a bonus primary attack against the same target."""
        "Brilliant Evasion":
           display_name: """Brilliant Evasion"""
           text: """While you defend, if you are not in the attacker's %BULLSEYEARC%, you may spend 1 %FORCE% to change 2 of your %FOCUS% results to %EVADE%&nbsp;results."""
        "C-3PO":
           display_name: """C-3PO"""
           text: """Before rolling defense dice, you may spend 1 calculate token to guess aloud a number 1 or higher. If you do and you roll exactly that many %EVADE% results, add 1&nbsp;%EVADE% result.%LINEBREAK%After you perform the %CALCULATE% action, gain 1 calculate token."""
        "C-3PO (Resistance)":
           display_name: """C-3PO"""
           text: """While you coordinate, you can choose friendly ships beyond range 2 if they have&nbsp;%CALCULATE% on their action bar.%LINEBREAK%After you perform the&nbsp;%CALCULATE% or&nbsp;%COORDINATE% action, gain 1&nbsp;calculate token."""
        "Cad Bane":
           display_name: """Cad Bane"""
           text: """After you drop or launch a device, you may perform a red %BOOST% action."""
        "Calibrated Laser Targeting":
           display_name: """Calibrated Laser Targeting"""
           text: """While you perform a primary attack, if&nbsp;the defender is in your %BULLSEYEARC%, add 1&nbsp;%FOCUS%&nbsp;result."""
        "Captain Phasma":
           display_name: """Captain Phasma"""
           text: """At the end of the Engagement Phase, each enemy ship at range 0-1 that is not stressed gains 1 stress token."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """During the System Phase, you may choose 1 enemy ship at range 1-2 and guess aloud a bearing and speed, then look at that ship’s dial. If the chosen ship’s bearing and speed match your guess, you may set your dial to another maneuver."""
        "Chancellor Palpatine":
           display_name: """Chancellor Palpatine"""
           text: """Chancellor Palpatine:%LINEBREAK%<strong>Setup:</strong> Equip this side faceup.%LINEBREAK%After you defend, if the attacker is at range 0-2, you may spend 1 %FORCE%. If you do, the attacker gains 1 stress token.%LINEBREAK%During the End Phase, you may flip this card.%LINEBREAK%Darth Sidious%LINEBREAK%After you perform a purple&nbsp;%COORDINATE%&nbsp;action, the ship you coordinated gains 1&nbsp;stress token. Then, it gains 1&nbsp;focus token or recovers 1&nbsp;%FORCE%."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """At the start of the Engagement Phase, you may spend 2 %CHARGE% to repair 1 faceup damage card."""
        "Chewbacca (Scum)":
           display_name: """Chewbacca"""
           text: """At the start of the End Phase, you may spend 1 focus token to repair 1 of your faceup damage cards."""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca"""
           text: """<strong>Setup:</strong> Lose 1&nbsp;%CHARGE%.%LINEBREAK%After a friendly ship at range&nbsp;0-3 is dealt 1&nbsp;damage card, recover 1&nbsp;%CHARGE%.%LINEBREAK%While you perform an attack, you may spend 2&nbsp;%CHARGE% to change 1&nbsp;%FOCUS% result to a&nbsp;%CRIT% result."""
        "Ciena Ree":
           display_name: """Ciena Ree"""
           text: """After you perform a %COORDINATE% action, if the ship you coordinated performed a %BARRELROLL% or %BOOST% action, it may gain 1 stress token to rotate 90°."""
        "Cikatro Vizago":
           display_name: """Cikatro Vizago"""
           text: """During the End Phase, you may choose 2 %ILLICIT% upgrades equipped to friendly ships at range 0-1. If you do, you may exchange these upgrades.%LINEBREAK%<strong>End of Game:</strong> Return all %ILLICIT% upgrades to their original ships."""
        "Cloaking Device":
           display_name: """Cloaking Device"""
           text: """<strong>Action:</strong> Spend 1&nbsp;%CHARGE% to perform a %CLOAK% action.%LINEBREAK%At the start of the Planning Phase, roll 1 attack die. On a %FOCUS% result, decloak or discard your cloak token."""
        "Clone Commander Cody":
           display_name: """Clone Commander Cody"""
           text: """After you perform an attack that missed, if 1&nbsp;or more %HIT%/%CRIT% results were neutralized, the defender gains 1&nbsp;strain token."""
        "Cluster Missiles":
           display_name: """Cluster Missiles"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. After this attack, you may perform this attack as a bonus attack against a different target at range 0-1 of the defender, ignoring the %LOCK% requirement."""
        "Collision Detector":
           display_name: """Collision Detector"""
           text: """While you boost or barrel roll, you can move through and overlap obstacles.%LINEBREAK%After you move through or overlap an obstacle, you may spend 1&nbsp;%CHARGE% to ignore its effects until the end of the round."""
        "Composure":
           display_name: """Composure"""
           text: """After you fail an action, if you have no green tokens, you may perform a %FOCUS% action. If you do, you cannot perform additional actions this round. %LINEBREAK% <i>Errata (since rules reference 1.1.0): Added "If you do, you cannot perform additional actions this round."</i>"""
        "Concussion Missiles":
           display_name: """Concussion Missiles"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. After this attack hits, each ship at range 0-1 of the defender exposes 1 of its damage cards."""
        "Conner Nets":
           display_name: """Conner Nets"""
           text: """<strong>Mine</strong>%LINEBREAK%During the System Phase, you may spend 1&nbsp;%CHARGE% to drop a Conner Net using the [1&nbsp;%STRAIGHT%] template.%LINEBREAK%This card’s %CHARGE% cannot be recovered."""
        "Contraband Cybernetics":
           display_name: """Contraband Cybernetics"""
           text: """Before you activate, you may spend 1&nbsp;%CHARGE%. If you do, until the end of the round, you can perform actions and execute red maneuvers, even while stressed."""
        "Count Dooku":
           display_name: """Count Dooku"""
           text: """Before a ship at range&nbsp;0-2 rolls attack or defense dice, if all of your %FORCE% are active, you may spend 1 %FORCE% and name a result. If the roll does not contain the named result, the ship must change 1&nbsp;die to that result."""
        "Crack Shot":
           display_name: """Crack Shot"""
           text: """While you perform a primary attack, if the defender is in your %BULLSEYEARC%, before the Neutralize Results step, you may spend 1&nbsp;%CHARGE% to cancel 1&nbsp;%EVADE% result."""
        "DRK-1 Probe Droids":
           display_name: """DRK-1 Probe Droids"""
           text: """During the End Phase, you may spend 1&nbsp;%CHARGE% to drop or launch 1&nbsp;DRK-1 probe droid using a speed 3 template.%LINEBREAK%This card’s %CHARGE% cannot be recovered."""
        "Daredevil":
           display_name: """Daredevil"""
           text: """While you perform a white %BOOST% action, you may treat it as red to use the [1&nbsp;%TURNLEFT%] or [1&nbsp;%TURNRIGHT%] template instead."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """At the start of the Engagement Phase, you may choose 1 ship in your firing arc at range 0-2 and spend 1&nbsp;%FORCE%. If you do, that ship suffers 1&nbsp;%HIT% damage unless it chooses to remove 1 green token."""
        "Deadman's Switch":
           display_name: """Deadman’s Switch"""
           text: """After you are destroyed, each other ship at range 0-1 suffers 1&nbsp;%HIT% damage."""
        "Death Troopers":
           display_name: """Death Troopers"""
           text: """During the Activation Phase, enemy ships at range 0-1 cannot remove stress tokens."""
        "Debris Gambit":
           display_name: """Debris Gambit"""
           text: """While you perform a red %EVADE% action, if there is an obstacle at range 0-1, treat the action as white instead."""
        "Dedicated":
           display_name: """Dedicated"""
           text: """While another friendly ship in your %LEFTARC%&nbsp;or %RIGHTARC% at range&nbsp;0-2 defends, if it is limited or has the <strong>Dedicated</strong> upgrade and you are not strained, you may gain 1 strain token. If you do, the defender rerolls 1&nbsp;of their blank results."""
        "Delayed Fuses":
           display_name: """Delayed Fuses"""
           text: """After you drop, launch or place a bomb or mine, you may place 1 fuse marker on that device."""
        "Delta-7B":
           display_name: """Delta-7B"""
           text: """<i class = flavor_text>The Delta-7B was designed as a heavier variant of the Delta-7 Aethersprite-class Interceptor, identifiable by the repositioned astromech slot. Many Jedi Generals favor this craft’s greater firepower and durability.</i>"""
        "Dengar":
           display_name: """Dengar"""
           text: """After you defend, if the attacker is in your firing arc, you may spend 1&nbsp;%CHARGE%. If you do, roll 1 attack die unless the attacker chooses to remove 1 green token. On a %HIT% or %CRIT% result, the attacker suffers 1&nbsp;%HIT% damage."""
        "Diamond-Boron Missiles":
           display_name: """Diamond-Boron Missiles"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. After this attack hits, you may spend 1 %CHARGE%. If you do, each ship at range 0-1 of the defender with agility equal to or less than the defender's rolls 1 attack die and suffers 1 %HIT%/%CRIT% damage for each matching result. """
        "Director Krennic":
           display_name: """Director Krennic"""
           text: """<strong>Setup:</strong> Before placing forces, assign the <strong>Optimized Prototype</strong> condition to another friendly ship."""
        "Discord Missiles":
           display_name: """Discord Missiles"""
           text: """At the start of the Engagement Phase, you may spend 1&nbsp;calculate token and 1&nbsp;%CHARGE% to launch 1&nbsp;buzz droid swarm using the [3&nbsp;%BANKLEFT%], [3&nbsp;%STRAIGHT%], or [3&nbsp;%BANKRIGHT%] template.%LINEBREAK%This card’s %CHARGE% cannot be recovered."""
        "Dorsal Turret":
           display_name: """Dorsal Turret"""
           text: """<strong>Attack</strong>"""
        "Electronic Baffle":
           display_name: """Electronic Baffle"""
           text: """During the End Phase, you may suffer 1&nbsp;%HIT% damage to remove 1 red token."""
        "Elusive":
           display_name: """Elusive"""
           text: """While you defend, you may spend 1&nbsp;%CHARGE% to reroll 1 defense die.%LINEBREAK%After you fully execute a red maneuver, recover 1&nbsp;%CHARGE%."""
        "Emperor Palpatine":
           display_name: """Emperor Palpatine"""
           text: """While another friendly ship defends or performs an attack, you may spend 1&nbsp;%FORCE% to modify 1 of its dice as though that ship had spent 1&nbsp;%FORCE%."""
        "Energy-Shell Charges":
           display_name: """Energy-Shell Charges"""
           text: """<strong>Attack (%CALCULATE%):</strong> Spend 1&nbsp;%CHARGE%. While you perform this attack, you may spend 1&nbsp;calculate token to change 1&nbsp;%FOCUS% result to a %CRIT% result.%LINEBREAK%<strong>Action</strong>: Reload this card."""
        "Engine Upgrade":
           display_name: """Engine Upgrade"""
           text: """<i class = flavor_text>Large military forces such as the Galactic Empire have standardized engines, but individual pilots and small organizations often replace the power couplings, add thrusters, or use high-performance fuel to get extra push out of their engines.</i>"""
        "Ensnare":
           text: """At the end of the Activation Phase, if you are tractored, you may choose 1 ship in your %SINGLETURRETARC% arc at range 0-1. Transfer 1 tractor token to it."""
        "Expert Handling":
           display_name: """Expert Handling"""
           text: """<i class = flavor_text>While heavy fighters can often be coaxed into a barrel roll, seasoned pilots know how to do it without putting undue stress on their craft or leaving themselves open to attack.</i>"""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """After you perform a primary attack, you may spend 1&nbsp;%FORCE% to perform a bonus %SINGLETURRETARC% attack from a %SINGLETURRETARC% you have not attacked from this round. If you do and you are stressed, you may reroll 1 attack die."""
        "Fanatical":
           display_name: """Fanatical"""
           text: """While you perform a primary attack, if you are not shielded, you may change 1&nbsp;%FOCUS% result to a %HIT% result."""
        "Fearless":
           display_name: """Fearless"""
           text: """While you perform a %FRONTARC% primary attack, if the attack range is 1 and you are in the defender’s %FRONTARC%, you may change 1 of your results to a %HIT% result."""
        "Feedback Array":
           display_name: """Feedback Array"""
           text: """Before you engage, you may gain 1 ion token and 1 disarm token. If you do, each ship at range 0 suffers 1&nbsp;%HIT% damage."""
        "Ferrosphere Paint":
           display_name: """Ferrosphere Paint"""
           text: """After an enemy ship locks you, if you are not in that ship’s %BULLSEYEARC%, that ship gains 1 stress token."""
        "Fifth Brother":
           display_name: """Fifth Brother"""
           text: """While you perform an attack, you may spend 1&nbsp;%FORCE% to change 1 of your %FOCUS% results to a %CRIT% result."""
        "Finn":
           display_name: """Finn"""
           text: """While you defend or perform a primary attack, if the enemy ship is in your %FRONTARC%, you may add 1 blank result to your roll (this die can be rerolled or otherwise modified)."""
        "Fire-Control System":
           display_name: """Fire-Control System"""
           text: """While you perform an attack, if you have a lock on the defender, you may reroll 1 attack die. If you do, you cannot spend your lock during this attack."""
        "Freelance Slicer":
           display_name: """Freelance Slicer"""
           text: """While you defend, before attack dice are rolled, you may spend a lock you have on the attacker to roll 1 attack die. If you do, the attacker gains 1 jam token. Then, on a %HIT% or %CRIT% result, gain 1 jam token."""
        "GA-97":
           text: """<strong>Setup:</strong> Before placing forces, you may spend 3-5 %CHARGE%. If you do, choose another friendly ship and assign the <strong>It's the Resistance</strong> condition to it."""
        'GNK "Gonk" Droid':
           display_name: """GNK “Gonk” Droid"""
           text: """<strong>Setup:</strong> Lose 1&nbsp;%CHARGE%.%LINEBREAK%<strong>Action:</strong> Recover 1&nbsp;%CHARGE%.%LINEBREAK%<strong>Action:</strong> Spend 1&nbsp;%CHARGE% to recover 1 shield."""
        "General Grievous":
           display_name: """General Grievous"""
           text: """While you defend, after the Neutralize Results step, if there are 2 or more %HIT%/%CRIT% results, you may spend 1&nbsp;%CHARGE% to cancel 1 %HIT% or %CRIT%&nbsp;result. %LINEBREAK%After a friendly ship is destroyed, recover 1&nbsp;%CHARGE%."""
        "General Hux":
           display_name: """General Hux"""
           text: """While you perform a white %COORDINATE% action, you may treat it as red. If you do, you may coordinate up to 2 additional ships of the same ship type, and each ship you coordinate must perform the same action, treating that action as red."""
        "Grand Inquisitor":
           display_name: """Grand Inquisitor"""
           text: """After an enemy ship at range 0-2 reveals its dial, you may spend 1&nbsp;%FORCE% to perform 1 white action on your action bar, treating that action as red."""
        "Grand Moff Tarkin":
           display_name: """Grand Moff Tarkin"""
           text: """During the System Phase, you may spend 2 %CHARGE%. If you do, each friendly ship may acquire a lock on a ship that you have locked."""
        "Grappling Struts":
           display_name: """Grappling Struts"""
           text: """Closed:%LINEBREAK%<strong>Setup:</strong> Equip this side faceup.%LINEBREAK%While you execute a maneuver, if you overlap an asteroid or debris cloud and there are 1 or fewer other friendly ships at range 0 of that obstacle, you may flip this card.%LINEBREAK%Open:%LINEBREAK%You ignore obstacles at range&nbsp;0 and while you move through them. After you reveal your dial, if you reveal a maneuver other than a [2&nbsp;%STRAIGHT%] and are at range 0 of an asteroid or debris cloud, skip your Execute Maneuver step and remove 1 stress token; if you revealed a right or left maneuver, rotate your ship 90º in that direction. After you execute a maneuver, flip this card."""
        "Greedo":
           display_name: """Greedo"""
           text: """While you perform an attack, you may spend 1&nbsp;%CHARGE% to change 1&nbsp;%HIT% result to a %CRIT% result.%LINEBREAK%While you defend, if your %CHARGE% is active, the attacker may change 1&nbsp;%HIT% result to a %CRIT% result."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """During the Engagement Phase, at initiative 7, you may perform a %SINGLETURRETARC% attack. You cannot attack from that %SINGLETURRETARC% again this round."""
        "Han Solo (Scum)":
           display_name: """Han Solo"""
           text: """Before you engage, you may perform a red %FOCUS% action."""
        "Han Solo (Resistance)":
           display_name: """Han Solo"""
           text: """After you perform an %EVADE% action, gain additional evade tokens equal to the number of enemy ships at range 0-1."""
        "Hate":
           display_name: """Hate"""
           text: """After you suffer 1 or more damage, recover that many %FORCE%."""
        "Heavy Laser Cannon":
           display_name: """Heavy Laser Cannon"""
           text: """<strong>Attack:</strong> After the Modify Attack Dice step, change all %CRIT% results to %HIT% results."""
        "Heightened Perception":
           display_name: """Heightened Perception"""
           text: """At the start of the Engagement Phase, you may spend 1&nbsp;%FORCE%. If you do, engage at initiative 7 instead of your standard initiative value this phase."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """You can execute red maneuvers even while stressed. After you fully execute a red maneuver, if you have 3 or more stress tokens, remove 1 stress token and suffer 1&nbsp;%HIT% damage."""
        "Heroic":
           display_name: """Heroic"""
           text: """While you defend or perform an attack, if you have only blank results and have 2 or more results, you may reroll any number of your dice."""
        "Homing Missiles":
           display_name: """Homing Missiles"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. After you declare the defender, the defender may choose to suffer 1&nbsp;%HIT% damage. If it does, skip the Attack and Defense Dice steps and the attack is treated as hitting."""
        "Hotshot Gunner":
           display_name: """Hotshot Gunner"""
           text: """While you perform a %SINGLETURRETARC% attack, after the Modify Defense Dice step, the defender removes 1 focus or calculate token."""
        "Hull Upgrade":
           display_name: """Hull Upgrade"""
           text: """<i class = flavor_text>For those who cannot afford an enhanced shield generator, bolting additional plates onto the hull of a ship can serve as an adequate substitute.</i>"""
        "Hyperspace Tracking Data":
           display_name: """Hyperspace Tracking Data"""
           text: """<strong>Setup:</strong> Before placing forces, you may choose a number between 0 and 6. Treat your initiative as the chosen value during Setup.%LINEBREAK%After Setup, assign 1 focus or evade token to each friendly ship at range&nbsp;0-2."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """You have the pilot ability of each other friendly ship with the <strong>IG-2000</strong> upgrade.%LINEBREAK%After you perform a %CALCULATE% action, gain 1 calculate token."""
        "Ion Bombs":
           display_name: """Ion Bombs"""
           text: """During the System Phase, you may spend 1 %CHARGE% to drop an Ion Bomb using the [1 %STRAIGHT%] template."""
        "ISB Slicer":
           display_name: """ISB Slicer"""
           text: """During the End Phase, enemy ships at range 1-2 cannot remove jam tokens."""
        "Impervium Plating":
           display_name: """Impervium Plating"""
           text: """Before you would be dealt a faceup <strong>Ship</strong> damage card, you may spend 1&nbsp;%CHARGE% to discard it instead."""
        "Inertial Dampeners":
           display_name: """Inertial Dampeners"""
           text: """Before you would execute a maneuver, you may spend 1 shield. If you do, execute a white [0&nbsp;%STOP%] instead of the maneuver you revealed, then gain 1 stress token."""
        "Informant":
           display_name: """Informant"""
           text: """<strong>Setup:</strong> After placing forces, choose 1 enemy ship and assign the <strong>Listening Device</strong> condition to it."""
        "Instinctive Aim":
           display_name: """Instinctive Aim"""
           text: """While you perform a special attack, you may spend 1&nbsp;%FORCE% to ignore the %FOCUS% or %LOCK% requirement."""
        "Integrated S-Foils":
           display_name: """Integrated S-Foils"""
           text: """<strong>Closed: </strong><i>%BARRELROLL%, %FOCUS% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <r>%BARRELROLL%</r></i>%LINEBREAK% While you perform a primary attack, if the defender is not in your %BULLSEYEARC%, roll 1 fewer attack die. %LINEBREAK% Before you activate, you may flip this card. %LINEBREAK% <b>Open:</b> Before you activate, you may flip this card."""
        "Intimidation":
           display_name: """Intimidation"""
           text: """While an enemy ship at range 0 defends, it rolls 1 fewer defense die."""
        "Ion Cannon":
           display_name: """Ion Cannon"""
           text: """<strong>Attack:</strong> If this attack hits, spend 1&nbsp;%HIT% or %CRIT% result to cause the defender to suffer 1&nbsp;%HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "Ion Cannon Turret":
           display_name: """Ion Cannon Turret"""
           text: """<strong>Attack:</strong> If this attack hits, spend 1&nbsp;%HIT% or %CRIT% result to cause the defender to suffer 1&nbsp;%HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "Ion Missiles":
           display_name: """Ion Missiles"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. If this attack hits, spend 1&nbsp;%HIT% or %CRIT% result to cause the defender to suffer 1&nbsp;%HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "Ion Torpedoes":
           display_name: """Ion Torpedoes"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. If this attack hits, spend 1&nbsp;%HIT% or %CRIT% result to cause the defender to suffer 1&nbsp;%HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "Jabba the Hutt":
           display_name: """Jabba the Hutt"""
           text: """During the End Phase, you may choose 1 friendly ship at range 0-2 and spend 1&nbsp;%CHARGE%. If you do, that ship recovers 1&nbsp;%CHARGE% on 1 of its equipped %ILLICIT% upgrades."""
        "Jamming Beam":
           display_name: """Jamming Beam"""
           text: """<strong>Attack:</strong> If this attack hits, all %HIT%/%CRIT% results inflict jam tokens instead of damage."""
        "Juke":
           display_name: """Juke"""
           text: """While you perform an attack, if you are evading, you may change 1 of the defender’s %EVADE% results to a %FOCUS% result."""
        "Jyn Erso":
           display_name: """Jyn Erso"""
           text: """If a friendly ship at range 0-3 would gain a focus token, it may gain 1 evade token instead."""
        "K2-B4":
           display_name: """K2-B4"""
           text: """While a friendly ship at range&nbsp;0-3 defends, it may spend 1 calculate token. If it does, add 1 %EVADE% result unless the attacker chooses to gain 1&nbsp;strain token."""
        "Kaydel Connix":
           text: """After you reveal your dial, you may set your dial to a basic maneuver of the next higher speed. While you execute that maneuver, increase its difficulty"""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """After a friendly ship at range 0-2 fully executes a white maneuver, you may spend 1&nbsp;%FORCE% to remove 1 stress token from that ship."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """At the start of the End Phase, you may choose 1 enemy ship at range 0-2 in your firing arc. If you do, that ship does not remove its tractor tokens."""
        "Kraken":
           display_name: """Kraken"""
           text: """During the End Phase, you may choose up to 3&nbsp;friendly ships at range&nbsp;0-3. If you do, each of these ships does not remove 1&nbsp;calculate token."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """<strong>Action:</strong> Choose 1 enemy ship at range 1-3. If you do, spend 1&nbsp;%FORCE% to assign the <strong>I’ll Show You the Dark Side</strong> condition to that ship."""
        "L3-37":
           display_name: """L3-37"""
           text: """<strong>Setup:</strong> Equip this side faceup.%LINEBREAK%While you defend, you may flip this card. If you do, the attacker must reroll all attack dice.%LINEBREAK%<strong>L3-37’s Programming:</strong> If you are not shielded, decrease the difficulty of your bank (%BANKLEFT% and %BANKRIGHT%) maneuvers."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """<strong>Action:</strong> Choose 1 enemy ship at range 1-3. If you do, spend 1&nbsp;%FORCE% to assign the <strong>I’ll Show You the Dark Side</strong> condition to that ship."""
        "Landing Struts":
           display_name: """Landing Struts"""
           text: """Closed:%LINEBREAK%<strong>Setup:</strong> Equip this side faceup.%LINEBREAK%While you execute a maneuver, if you overlap an asteroid or debris cloud and there are 1 or fewer other friendly ships at range 0 of that obstacle, you may flip this card.%LINEBREAK%Open:%LINEBREAK%You ignore obstacles at range&nbsp;0 and while you move through them. After you reveal your dial, if you reveal a maneuver other than a [2&nbsp;%STRAIGHT%] and are at range 0 of an asteroid or debris cloud, skip your Execute Maneuver step and remove 1 stress token; if you revealed a right or left maneuver, rotate your ship 90º in that direction. After you execute a maneuver, flip this card."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """<strong>Action:</strong> Roll 2 defense dice. For each %FOCUS% result, gain 1 focus token. For each %EVADE% result, gain 1 evade token. If both results are blank, the opposing player chooses focus or evade. You gain 1 token of that type."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian"""
           text: """After you roll dice, you may spend 1 green token to reroll up to 2 of your results."""
        "Lando's Millennium Falcon":
           display_name: """Lando’s Millennium Falcon"""
           text: """1 escape shuttle may dock with you.%LINEBREAK%While you have an escape shuttle docked, you may treat its shields as if they were on your ship card.%LINEBREAK%While you perform a primary attack against a stressed ship, roll 1 additional attack die. %LINEBREAK%<i>Errata (since rules reference 1.1.0): Replaced “spend" with "treat"</i>"""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """While you defend, if the attacker is stressed, you may remove 1 stress from the attacker to change 1 of your blank/%FOCUS% results to an %EVADE% result."""
        "Leia Organa":
           display_name: """Leia Organa"""
           text: """At the start of the Activation Phase, you may spend 3 %CHARGE%. During this phase, each friendly ship reduces the difficulty of its red maneuvers."""
        "Lone Wolf":
           display_name: """Lone Wolf"""
           text: """While you defend or perform an attack, if there are no other friendly ships at range 0-2, you may spend 1&nbsp;%CHARGE% to reroll 1 of your dice."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """At the start of the Engagement Phase, you may spend 1&nbsp;%FORCE% to rotate your %SINGLETURRETARC% indicator."""
        "M9-G8":
           display_name: """M9-G8"""
           text: """While a ship you are locking performs an attack, you may choose 1 attack die. If you do, the attacker rerolls that die."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """After you defend, if the attack hit, you may acquire a lock on the attacker."""
        "Marksmanship":
           display_name: """Marksmanship"""
           text: """While you perform an attack, if the defender is in your %BULLSEYEARC%, you may change 1&nbsp;%HIT% result to a %CRIT% result."""
        "Maul":
           display_name: """Maul"""
           text: """After you suffer damage, you may gain 1 stress token to recover 1&nbsp;%FORCE%.%LINEBREAK%You can equip “Dark Side” upgrades."""
        "Minister Tua":
           display_name: """Minister Tua"""
           text: """At the start of the Engagement Phase, if you are damaged, you may perform a red %REINFORCE% action."""
        "Moff Jerjerrod":
           display_name: """Moff Jerjerrod"""
           text: """During the System Phase, you may spend 2 %CHARGE%. If you do, choose the [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] template. Each friendly ship may perform a red %BOOST% action using that template."""
        "Munitions Failsafe":
           display_name: """Munitions Failsafe"""
           text: """While you perform a %TORPEDO% or %MISSILE% attack, after rolling attack dice, you may cancel all dice results to recover 1&nbsp;%CHARGE% you spent as a cost for the attack."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """Decrease the difficulty of your bank maneuvers (%BANKLEFT% and %BANKRIGHT%)."""
        "Novice Technician":
           display_name: """Novice Technician"""
           text: """At the end of the round, you may roll 1 attack die to repair 1 faceup damage card. Then on a %HIT% result, expose 1 damage card."""
        "Os-1 Arsenal Loadout":
           display_name: """Os-1 Arsenal Loadout"""
           text: """While you have exactly 1 disarm token, you can still perform %TORPEDO% and %MISSILE% attacks against targets you have locked. If you do, you cannot spend your lock during the attack."""
        "Outmaneuver":
           display_name: """Outmaneuver"""
           text: """While you perform a %FRONTARC% attack, if you are not in the defender’s firing arc, the defender rolls 1 fewer defense die."""
        "Paige Tico":
           display_name: """Paige Tico"""
           text: """After you perform a primary attack, you may drop 1 bomb or rotate your %SINGLETURRETARC%.%LINEBREAK%After you are destroyed, you may drop 1 bomb."""
        "Pattern Analyzer":
           display_name: """Pattern Analyzer"""
           text: """While you fully execute a red maneuver, before the Check Difficulty step, you may perform 1 action."""
        "Perceptive Copilot":
           display_name: """Perceptive Copilot"""
           text: """After you perform a %FOCUS% action, gain 1 focus token."""
        "Petty Officer Thanisson":
           display_name: """Petty Officer Thanisson"""
           text: """During the Activation or Engagement Phase, after an enemy ship in your %FRONTARC% at range 0-1 gains a red or orange token, if you are not stressed, you may gain 1 stress token. If you do, that ship gains 1 additional token of the type that it gained."""
        "Plasma Torpedoes":
           display_name: """Plasma Torpedoes"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. During the Neutralize Results step, %CRIT% results are cancelled before %HIT% results. After this attack hits, the defender loses 1 shield."""
        "Pivot Wing":
           display_name: """Pivot Wing"""
           text: """<strong>Closed: </strong>While you defend, roll 1 fewer defense die.%LINEBREAK%After you execute a [0&nbsp;%STOP%] maneuver, you may rotate your ship 90º or 180º.%LINEBREAK%Before you activate, you may flip this card.%LINEBREAK%<strong>Open:</Strong> Before you activate, you may flip this card."""
        "Predator":
           display_name: """Predator"""
           text: """While you perform a primary attack, if the defender is in your %BULLSEYEARC%, you may reroll 1 attack die."""
        "Predictive Shot":
           display_name: """Predictive Shot"""
           text: """After you declare an attack, if the defender is in your %BULLSEYEARC%, you may spend 1&nbsp;%FORCE%. If you do, during the Roll Defense Dice step, the defender cannot roll more defense dice than the number of your %HIT%/%CRIT% results."""
        "Primed Thrusters":
           display_name: """Primed Thrusters"""
           text: """While you have 2 or fewer stress tokens, you can perform %BARRELROLL% and %BOOST% actions even while stressed."""
        "Proton Bombs":
           display_name: """Proton Bombs"""
           text: """<strong>Bomb</strong>%LINEBREAK%During the System Phase, you may spend 1&nbsp;%CHARGE% to drop a Proton Bomb using the [1&nbsp;%STRAIGHT%] template."""
        "Proton Rockets":
           display_name: """Proton Rockets"""
           text: """<strong>Attack (%FOCUS%):</strong> Spend 1&nbsp;%CHARGE%."""
        "Proton Torpedoes":
           display_name: """Proton Torpedoes"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. Change 1&nbsp;%HIT% result to a %CRIT% result."""
        "Proximity Mines":
           display_name: """Proximity Mines"""
           text: """<strong>Mine</strong>%LINEBREAK%During the System Phase, you may spend 1&nbsp;%CHARGE% to drop a Proximity Mine using the [1&nbsp;%STRAIGHT%] template.%LINEBREAK%This card’s %CHARGE% cannot be recovered."""
        "Qi'ra":
           display_name: """Qi’ra"""
           text: """While you move and perform attacks, you ignore obstacles that you are locking."""
        "R2 Astromech":
           display_name: """R2 Astromech"""
           text: """After you reveal your dial, you may spend 1&nbsp;%CHARGE% and gain 1 disarm token to recover 1 shield."""
        "R2-C4":
           text: """While you perform an attack, you may spend 1 evade token to change 1 %FOCUS% result to a %HIT% result."""
        "R2-D2 (Crew)":
           display_name: """R2-D2"""
           text: """During the End Phase, if you are damaged and not shielded, you may roll 1 attack die to recover 1 shield. On a %HIT% result, expose 1 of your damage cards."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """After you reveal your dial, you may spend 1&nbsp;%CHARGE% and gain 1 disarm token to recover 1 shield."""
        "R2-HA":
           display_name: """R2-HA"""
           text: """While you defend, you may spend your lock on the attacker to reroll any number of your defense dice."""
        "R3 Astromech":
           display_name: """R3 Astromech"""
           text: """You can maintain up to 2 locks. Each lock must be on a different object.%LINEBREAK%After you perform a %LOCK% action, you may acquire a lock."""
        "R4 Astromech":
           display_name: """R4 Astromech"""
           text: """Decrease the difficulty of your speed 1-2 basic maneuvers (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%)."""
        "R4-P Astromech":
           display_name: """R4-P Astromech"""
           text: """Before you execute a basic maneuver, you may spend 1&nbsp;%CHARGE%. If you do, while you execute that maneuver, reduce its difficulty."""
        "R4-P17":
           display_name: """R4-P17"""
           text: """After you fully execute a red maneuver, you may spend 1&nbsp;%CHARGE% to perform an action, even while stressed."""
        "R4-P44":
           display_name: """R4-P44"""
           text: """After you fully execute a red maneuver, if there is an enemy ship in your %BULLSEYEARC%, gain 1&nbsp;calculate token."""
        "R5 Astromech":
           display_name: """R5 Astromech"""
           text: """<strong>Action:</strong> Spend 1&nbsp;%CHARGE% to repair 1 facedown damage card.%LINEBREAK%<strong>Action:</strong> Repair 1 faceup <strong>Ship</strong> damage card."""
        "R5-D8":
           display_name: """R5-D8"""
           text: """<strong>Action:</strong> Spend 1&nbsp;%CHARGE% to repair 1 facedown damage card.%LINEBREAK%<strong>Action:</strong> Repair 1 faceup <strong>Ship</strong> damage card."""
        "R5-P8":
           display_name: """R5-P8"""
           text: """While you perform an attack against a defender in your %FRONTARC%, you may spend 1&nbsp;%CHARGE% to reroll 1 attack die. If the rerolled result is a %CRIT% result, suffer 1&nbsp;%CRIT% damage."""
        "R5-TK":
           display_name: """R5-TK"""
           text: """You can perform attacks against friendly ships."""
        "R5-X3":
           display_name: """R5-X3"""
           text: """Before you activate or engage, you may spend 1&nbsp;%CHARGE% to ignore obstacles until the end of this phase."""
        "Rey":
           display_name: """Rey"""
           text: """While you defend or perform an attack, if the enemy ship is in your %SINGLETURRETARC%, you may spend 1&nbsp;%FORCE% to change 1 of your blank results to a %EVADE% or %HIT% result."""
        "Rey's Millennium Falcon":
           display_name: """Rey’s Millennium Falcon"""
           text: """If you have 2 or fewer stress tokens, you can execute red Segnor’s Loop [%SLOOPLEFT% or %SLOOPRIGHT%] maneuvers and perform %BOOST% and&nbsp;%ROTATEARC% actions even while stressed."""
        "Rigged Cargo Chute":
           display_name: """Rigged Cargo Chute"""
           text: """<strong>Action:</strong> Spend 1&nbsp;%CHARGE%. Drop 1 loose cargo using the [1&nbsp;%STRAIGHT%] template."""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """While you defend or perform an attack, you may spend 1 of your results to acquire a lock on the enemy ship."""
        "Ruthless":
           display_name: """Ruthless"""
           text: """While you perform an attack, you may choose another friendly ship at range 0-1 of the defender. If you do, that ship suffers 1&nbsp;%HIT% damage and you may change 1 of your die results to a %HIT% result."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """<strong>Setup:</strong> Place 1 ion, 1 jam, 1 stress, and 1 tractor token on this card. %LINEBREAK%After a ship suffers the effect of a friendly bomb, you may remove 1 ion, jam, stress, or tractor token from this card. If you do, that ship gains a matching token."""
        "Saturation Salvo":
           display_name: """Saturation Salvo"""
           text: """While you perform a %TORPEDO% or %MISSILE% attack, you may spend 1&nbsp;%CHARGE% from that upgrade. If you do, choose two defense dice. The defender must reroll those dice."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """While you perform an attack, you may suffer 1&nbsp;%HIT% damage to change all of your %FOCUS% results to %CRIT% results."""
        "Seasoned Navigator":
           display_name: """Seasoned Navigator"""
           text: """After you reveal your dial, you may set your dial to another non-red maneuver of the same speed. While you execute that maneuver, increase its difficulty."""
        "Seismic Charges":
           display_name: """Seismic Charges"""
           text: """<strong>Bomb</strong>%LINEBREAK%During the System Phase, you may spend 1&nbsp;%CHARGE% to drop a Seismic Charge with the [1&nbsp;%STRAIGHT%] template."""
        "Selfless":
           display_name: """Selfless"""
           text: """While another friendly ship at range 0-1 defends, before the Neutralize Results step, if you are in the attack arc, you may suffer 1&nbsp;%CRIT% damage to cancel 1&nbsp;%CRIT% result."""
        "Sense":
           display_name: """Sense"""
           text: """During the System Phase, you may choose 1 ship at range 0-1 and look at its dial. If you spend 1&nbsp;%FORCE%, you may choose a ship at range 0-3 instead."""
        "Servomotor S-Foils":
           display_name: """Servomotor S-Foils"""
           text: """<strong>Closed: </strong><i>%BOOST%, %FOCUS% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <r>%BOOST%</r></i>%LINEBREAK% While you perform a primary attack, roll 1 fewer attack die.%LINEBREAK%Before you activate, you may flip this card.%LINEBREAK%<strong>Open:</strong> Before you activate, you may flip this card."""
        "Seventh Fleet Gunner":
           display_name: """Seventh Fleet Gunner"""
           text: """While another friendly ship performs a primary attack, if the defender is in your firing arc, you may spend 1 %CHARGE%. If you do, the attacker rolls 1&nbsp;additional die, to a maximum of 4. During the System Phase, you may gain 1 disarm token to recover 1 %CHARGE%."""
        "Seventh Sister":
           display_name: """Seventh Sister"""
           text: """If an enemy ship at range 0-1 would gain a stress token, you may spend 1&nbsp;%FORCE% to have it gain 1 jam or tractor token instead."""
        "Shield Upgrade":
           display_name: """Shield Upgrade"""
           text: """<i class = flavor_text>Deflector shields are a substantial line of defense on most starships beyond the lightest fighters. While enhancing a ship’s shield capacity can be costly, all but the most confident or reckless pilots see the value in this sort of investment.</i>"""
        "Skilled Bombardier":
           display_name: """Skilled Bombardier"""
           text: """If you would drop or launch a device, you may use a template of the same bearing with a speed 1 higher or lower."""
        "Spare Parts Canisters":
           display_name: """Spare Parts Canisters"""
           text: """<strong>Action:</strong> Spend 1&nbsp;%CHARGE% to recover 1&nbsp;charge on one of your equipped %ASTROMECH% upgrades. %LINEBREAK%<strong>Action:</strong> Spend 1&nbsp;%CHARGE% to drop 1 spare parts, then break all locks assigned to you."""
        "Special Forces Gunner":
           display_name: """Special Forces Gunner"""
           text: """While you perform a primary %FRONTARC% attack, if your %SINGLETURRETARC% is in your %FRONTARC%, you may roll 1&nbsp;additional attack die.%LINEBREAK%After you perform a primary %FRONTARC% attack, if your %SINGLETURRETARC% is in your %REARARC%, you may perform a bonus primary %SINGLETURRETARC% attack."""
        "Squad Leader":
           display_name: """Squad Leader"""
           text: """While you coordinate, the ship you choose can perform an action only if that action is also on your action bar."""
        "Static Discharge Vanes":
           display_name: """Static Discharge Vanes"""
           text: """Before you would gain 1 ion or jam token, if you are not stressed, you may choose another ship at range 0-1 and gain 1 stress token. If you do, the chosen ship gains that ion or jam token instead, then you suffer 1 %HIT% damage. %LINEBREAK%<i>Errata (since rules reference 1.1.0): Changed from "If you would gain an ion or jam token, if you are not stressed, you may choose a ship at range 0-1. If you do, gain 1 stress token and transfer 1 ion or jam token to that ship."</i>"""
        "Stealth Device":
           display_name: """Stealth Device"""
           text: """While you defend, if your %CHARGE% is active, roll 1 additional defense die.%LINEBREAK%After you suffer damage, lose 1&nbsp;%CHARGE%."""
        "Supernatural Reflexes":
           display_name: """Supernatural Reflexes"""
           text: """Before you activate, you may spend 1&nbsp;%FORCE% to perform a %BARRELROLL% or %BOOST% action. Then, if you performed an action you do not have on your action bar, suffer 1&nbsp;%HIT% damage."""
        "Supreme Leader Snoke":
           display_name: """Supreme Leader Snoke"""
           text: """During the System Phase, you may choose any number of enemy ships beyond range 1. If you do, spend that many %FORCE% to flip each chosen ship’s dial faceup."""
        "Swarm Tactics":
           display_name: """Swarm Tactics"""
           text: """At the start of the Engagement Phase, you may choose 1 friendly ship at range 1. If you do, that ship treats its initiative as equal to yours until the end of the round."""
        "Synchronized Console":
           display_name: """Synchronized Console"""
           text: """After you perform an attack, you may choose a friendly ship at range 1 or a friendly ship with the <strong>Synchronized Console</strong> upgrade at range 1-3 and spend a lock you have on the defender. If you do, the friendly ship you chose may acquire a lock on the defender."""
        "TA-175":
           display_name: """TA-175"""
           text: """After a friendly ship at range 0-3 with %CALCULATE% on its action bar is destroyed, each friendly ship at range 0-3 with %CALCULATE% in its action bar gains 1 calculate token."""
        "TV-94":
           display_name: """TV-94"""
           text: """While a friendly ship at range&nbsp;0-3 performs a primary attack against a defender in its %BULLSEYEARC%, if there are 2&nbsp;or fewer attack dice, it may spend 1&nbsp;calculate token to add 1&nbsp;%HIT%&nbsp;result."""
        "Tactical Officer":
           display_name: """Tactical Officer"""
           text: """<i class = flavor_text>In the chaos of a starfighter battle, a single order can mean the difference between a victory and a massacre.</i>"""
        "Tactical Scrambler":
           display_name: """Tactical Scrambler"""
           text: """While you obstruct an enemy ship’s attack, the defender rolls 1 additional defense die."""
        "Targeting Computer":
           text: """ """
        "Targeting Synchronizer":
           display_name: """Targeting Synchronizer"""
           text: """While a friendly ship at range 1-2 performs an attack against a target you have locked, that ship ignores the&nbsp;%LOCK% attack requirement."""
        "Tobias Beckett":
           display_name: """Tobias Beckett"""
           text: """<strong>Setup:</strong> After placing forces, you may choose 1 obstacle in the play area. If you do, place it anywhere in the play area beyond range 2 of any board edge or ship and beyond range 1 of other obstacles."""
        "Tractor Beam":
           display_name: """Tractor Beam"""
           text: """<strong>Attack:</strong> If this attack hits, all %HIT%/%CRIT% results inflict tractor tokens instead of damage."""
        "Trajectory Simulator":
           display_name: """Trajectory Simulator"""
           text: """During the System Phase, if you would drop or launch a bomb, you may launch it using the [5&nbsp;%STRAIGHT%] template instead."""
        "Treacherous":
           display_name: """Treacherous"""
           text: """While you defend, you may choose a ship obstructing the attack and spend 1 %CHARGE%. If you do, cancel 1 %HIT% or %CRIT% result, and the ship you chose gains 1 strain token.%LINEBREAK%After a ship at range 0-3 is destroyed, recover 1 %CHARGE%."""
        "Trick Shot":
           display_name: """Trick Shot"""
           text: """While you perform an attack that is obstructed by an obstacle, roll 1 additional attack die."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """After you partially execute a maneuver, you may suffer 1&nbsp;%HIT% damage to perform 1 white action."""
        "Veteran Tail Gunner":
           display_name: """Veteran Tail Gunner"""
           text: """After you perform a primary %FRONTARC% attack, you may perform a bonus primary %REARARC% attack."""
        "Veteran Turret Gunner":
           display_name: """Veteran Turret Gunner"""
           text: """After you perform a primary attack, you may perform a bonus %SINGLETURRETARC% attack using a %SINGLETURRETARC% you did not already attack from this round."""
        "Xg-1 Assault Configuration":
           display_name: """Xg-1 Assault Configuration"""
           text: """While you have exactly 1 disarm token, you can still perform %CANNON% attacks. While you perform a %CANNON% attack while disarmed, roll a maximum of 3 attack dice."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """While you perform an attack, if you are not stressed, you may choose 1 defense die and gain 1 stress token. If you do, the defender must reroll that die."""
        '"Chopper" (Crew)':
           display_name: """“Chopper”"""
           text: """During the Perform Action step, you may perform 1 action, even while stressed. After you perform an action while stressed, suffer 1&nbsp;%HIT% damage unless you expose 1 of your damage cards."""
        '"Chopper" (Astromech)':
           display_name: """“Chopper”"""
           text: """<strong>Action:</strong> Spend 1 non-recurring &nbsp;%CHARGE% from another equipped upgrade to recover 1 shield. %LINEBREAK%<strong>Action:</strong> Spend 2 shields to recover 1 non-recurring %CHARGE% on an equipped upgrade."""
        '"Genius"':
           display_name: """“Genius”"""
           text: """After you fully execute a maneuver, if you have not dropped or launched a device this round, you may drop 1 bomb."""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """You can perform primary attacks at range 0. Enemy ships at range 0 can perform primary attacks against you."""
        "Kaydel Connix":
           display_name: """Kaydel Connix"""
           text: """After you reveal your dial, you may set your dial to a basic maneuver of the next higher speed. While you execute that maneuver, increase its' difficulty."""
        "Autoblasters":
           display_name: """Autoblasters"""
           text: """<strong>Attack:</strong> If the defender is in your %BULLSEYEARC%, roll 1 additional die. During the Neutralize Results step, if you are not in the defender's %FRONTARC%, %EVADE% results do not cancel %CRIT% results. """
        "R2-C4":
           display_name: """R2-C4"""
           text: """While you perform an attack, you may spend 1 evade token to change 1 %FOCUS% result to a %HIT% result. """
        "Electro-Proton Bomb":
           display_name: """Electro-Proton Bomb"""
           text: """<strong>Bomb</strong>%LINEBREAK%During the System Phase, you may spend 1 %CHARGE% to drop an Electro-Proton Bomb with the [1 %STRAIGHT%] template. Then place 1 fuse marker on that device. %LINEBREAK%This card’s %CHARGE% cannot be recovered."""
        "Passive Sensors":
           display_name: """Passive Sensors"""
           text: """<strong>Action:</strong> Spend 1 %CHARGE%. You can only perform this action in your Perform Action step. %LINEBREAK% While your %CHARGE% is inactive, you cannot be coordinated. Before you engage, if your %CHARGE% is inactive, you may perform a %CALCULATE% or %LOCK% action."""
        "R2-A6":
           display_name: """R2-A6"""
           text: """ After you reveal your dial, you may set your dial to a maneuver of the same bearing of a speed 1 higher or lower."""
        "Amilyn Holdo":
           display_name: """Amilyn Holdo"""
           text: """ Before you engage, you may choose another friendly ship at range 1-2. You may transfer to that ship 1 token of a type that ship does not have. That ship may transfer 1 token to you of a type you do not have."""
        "Larma D'Acy":
           display_name: """Larma D'Acy"""
           text: """ While you have 2 or fewer stress tokens, you can perform %REINFORCE%, %COORDINATE%, and %JAM% actions, even while stressed.%LINEBREAK% While you perform a white %REINFORCE%, %COORDINATE%, or %JAM% action, if you are stressed, treat that action as red."""
        "PZ-4CO":
           display_name: """PZ-4CO"""
           text: """At the end of the Activation Phase, you may choose 1 friendly ship at range 1-2. If you do, transfer 1 calculate token to that ship. If your revealed maneuver is blue, you may transfer 1 focus token instead."""
        "Leia Organa (Resistance)":
           display_name: """Leia Organa"""
           text: """After a friendly ship reveals its dial, you may spend 1 %FORCE%. If you do, the chosen ship reduces the difficulty of that maneuver."""
        "Korr Sella":
           display_name: """Korr Sella"""
           text: """After you fully execute a blue maneuver, remove all of your stress tokens."""
        "Precognitive Reflexes":
           display_name: """Precognitive Reflexes"""
           text: """After you reveal your dial, you may spend 1 %FORCE% to perform a %BARRELROLL% or %BOOST% action. Then, if you performed an action you do not have on your action bar, gain 1 strain token. %LINEBREAK% If you do, you cannot perform another action during your activation."""
        "Foresight":
           display_name: """Foresight"""
           text: """After an enemy ship executes a maneuver, you may spend 1 %FORCE% to perform this attack against it as a bonus attack. %LINEBREAK% <strong>Attack:</strong> You may change 1 %FOCUS% result to a %HIT% result; your dice cannot be modified otherwise."""
        "Angled Deflectors":
           display_name: """Angled Deflectors"""
           text: """ """
        "C1-10P":
           display_name: """C1-10P"""
           text: """<strong>C1-10P: </strong>Setup: Equip this side faceup. %LINEBREAK% After you execute a maneuver, you may spend 1 %CHARGE% to perform a red %EVADE% action, even while stressed. %LINEBREAK% During the End Phase, if this card has 0 active %CHARGE%, flip it. %LINEBREAK% <strong>C1-10P (Erratic):</strong> After you execute a maneuver, you <strong>must</strong> choose a ship at range 0-1. It gains 1 jam token."""
        "Ahsoka Tano":
           display_name: """Ahsoka Tano"""
           text: """After you execute a maneuver, you may spend 1 %FORCE% and choose a friendly ship at range 1-3 in your firing arc. If you do, it may perform a red %FOCUS% action, even while stressed."""
        "C-3PO (Republic)":
           display_name: """C-3PO"""
           text: """While you defend, if you are calculating, you may reroll 1 defense die. %LINEBREAK% After you perform a %CALCULATE% action, gain 1 calculate token."""
        "Gravitic Deflection":
           display_name: """Gravitic Deflection"""
           text: """While you defend, you may reroll 1 defense die for each tractored ship in the attack arc."""
        "Snap Shot":
           display_name: """Snap Shot"""
           text: """After an enemy ship executes a maneuver, you may perform this attack against it as a bonus attack. %LINEBREAK% <strong>Attack:</strong> Your dice cannot be modified."""
        "Deuterium Power Cells":
           display_name: """Deuterium Power Cells"""
           text: """During the System Phase, you may spend 1 %CHARGE% and gain 1 disarm token to recover 1 %SHIELD%. Before you would gain 1 non-lock token, if you are not stressed, you may spend 1 %CHARGE% to gain 1 stress token instead."""
        "Mag-Pulse Warheads":
           display_name: """Mag-Pulse Warheads"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1 %CHARGE%. If this attack hits, the defender suffers 1 %CRIT% damage and gains 1 deplete and 1 jam token. Then cancel all %HIT%/%CRIT% results."""
        "Coaxium Hyperfuel":
           display_name: """Coaxium Hyperfuel"""
           text: """You can perform the %SLAM% action even while stressed. If you do, you suffer 1 %CRIT% damage unless you expose 1 of your damage cards. %LINEBREAK% After you partially execute a maneuver, you may expose 1 of your damage cards or suffer 1 %CRIT% damage to perform a %SLAM% action."""
        "R1-J5":
           display_name: """R1-J5"""
           text: """While you have 2 or fewer stress tokens, you can perform actions on damage cards even while stressed. %LINEBREAK% After you repair a damage card with the <b>Ship</b> trait, you may spend 1 %CHARGE% to repair that card again."""
        "Stabilized S-Foils":
           display_name: """Stabilized S-Foils"""
           text: """<strong>Closed: </strong><i><r>%RELOAD%</r>, %BARRELROLL% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i><r> %EVADE%</r></i>%LINEBREAK% Before you activate, if you are not critically damaged, you may flip this card. %LINEBREAK% <strong>Open:</strong> <i>%BARRELROLL% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i><r> %LOCK%</r></i>%LINEBREAK% After you perform an attack, you may spend your lock on the defender to perform a bonus %CANNON% attack against that ship using a %CANNON% upgrade you have not attacked with this turn. %LINEBREAK% Before you activate, if you are not critically damaged, you may flip this card."""
        "K-2SO":
           text: """During the System Phase, you may choose a friendly ship at range 0-3. That ship gains 1 calculate token and 1 stress token."""
        "Proud Tradition":
           text: """<strong>Proud Tradition</strong>%LINEBREAK%<strong>Setup:</strong> Equip this side faceup. %LINEBREAK% While you have 2 or fewer stress tokens, you may perform %FOCUS% actions even while stressed. After you perform an attack, if you are stressed, the defender may spend 1 focus token or suffer 1 %CRIT% damage to flip this card. %LINEBREAK% <strong>False Tradition</strong>%LINEBREAK% Treat your %FOCUS% actions as red."""
        "Cluster Mines":
           text: """During the System Phase, you may spend 1 %CHARGE% to drop a Cluster Mine set using the [1 %STRAIGHT%] template. %LINEBREAK% This card's %CHARGE% cannot be recovered."""
        "Kaz's Fireball":
           text: """<strong>Setup:</strong> When you resolve <strong>Explosion with Wings</strong>, you may search the damage deck and choose a damage card with the <b>Ship</b> trait: you are dealt that card instead. Then, shuffle the damage deck. %LINEBREAK% You can perform actions of damage cards even while ionized."""
        "Agent Terex":
           text: """<strong>Setup:</strong> Equip this side faceup and place 3 calculate tokens on this card. %LINEBREAK% At the start of the Engagement Phase, you may choose a friendly ship at range 0-3 and remove 1 calculate token from this card to have that ship gain a matching token. Then, if there are no calculate tokens on this card, flip it. %LINEBREAK%<strong>Cyborg:</strong> During the System Phase, roll 1 attack die. On a %HIT% or %CRIT% result, gain 1 calculate token. Otherwise gain 1 jam token. %LINEBREAK% <strong>Action:</strong> Transfer 1 calculate token or 1 jam token to a ship at range 0-3."""
        "Clone Captain Rex":
           text: """While you perform an attack, you may spend 1 %FOCUS% result. If you do, each friendly ship that has the defender in its %BULLSEYEARC% may gain 1 strain token to perform a %FOCUS% action."""
        '"Fives"':
           text: """After you perform an attack that missed, if the defender's initiative is equal or greater than your initiative, place 1 evade or focus token on this card. %LINEBREAK% Before you engage, you may remove 1 token from this card to gain 1 matching token."""
        "Suppressive Gunner":
           text: """While you perform an attack, you may spend 1 %FOCUS% result. If you do, the defender gains 1 deplete token unless it chooses to suffer 1 %HIT% damage."""
        "Ghost Company":
           text: """After you perform a primary attack, if you are focused, you may perform a %SINGLETURRETARC% attack against a ship you have not attacked this round as a bonus attack."""
        "Wolfpack":
           text: """After a friendly ship at range 0-3 defends, if the attacker is in your firing arc, the defender may gain 1 strain token to acquire a lock on the attacker."""
        "Yoda":
           text: """After another friendly ship at range 0-2 fully executes a purple maneuver or performs a purple action, you may spend 1 %FORCE%. If you do, that ship recovers 1 %FORCE%."""
        "Kit Fisto":
           text: """At the start of the Engagement Phase, you may choose 1 friendly ship at range 0-1 and spend 1 %FORCE%. If you do, it may perform a red %EVADE% action."""
        "Plo Koon":
           text: """At the start of the End Phase, if you are reinforced, you may choose 1 friendly ship at range 0 or in your %LEFTARC% or %RIGHTARC% at range 1. That ship removes 1 deplete or strain token, or repairs 1 faceup damage card."""
        "Aayla Secura":
           text: """While an enemy ship in your %BULLSEYEARC% performs an attack, if the defender is friendly and at range 0-2, the defender may change 1 blank result to a %FOCUS% result."""
        "Repulsorlift Stabilizers":
           text: """<strong>Inactive: Setup:</strong> Equip this side faceup. Reduce the difficulty of your straight (%STRAIGHT%) maneuvers. %LINEBREAK% After you fully execute a maneuver, you may flip this card. %LINEBREAK%<strong>Active: </strong> After you reveal a bank (%BANKLEFT% or %BANKRIGHT%) or turn (%TURNLEFT% or %TURNRIGHT%), you <b>must</b> perform that maneuver as a slideslip, then flip this card. %LINEBREAK% After you fully execute a non-sideslip maneuver, you may flip this card."""
        "Multi-Missile Pods":
           text: """<strong>Attack (%CALCULATE% or %LOCK%):</strong> Spend 1 %CHARGE%. If the defender is in your %FRONTARC%, you may spend 1 %CHARGE% to roll 1 additional attack die. If the defender is in your %BULLSEYEARC%, you may spend up to 2 %CHARGE% to roll that many additional attack dice instead."""
        "Synced Laser Cannons":
           text: """<strong>Attack:</strong> If you are calculating, the defender does not apply the range bonus."""
        "Concussion Bombs":
           text: """During the System Phase, if any of this card's %CHARGE% are inactive, you <b>must</b> spend 1 %CHARGE% to drop 1 concussion bomb, if able, using the [1 %STRAIGHT%] template. Otherwise, you may spend 1 %CHARGE% to drop 1 concussion bomb. %LINEBREAK% <i>Errata (since rules reference 1.3.0): Added ""using the [1 %STRAIGHT%] template"</i>"""
        "Maneuver-Assist MGK-300":
           text: """Reduce the difficulty of your 3 straight (%STRAIGHT%) and bank (%BANKLEFT% or %BANKRIGHT%) maneuvers."""
        "Target-Assist MGK-300":
           text: """Before you engage, if you have no green tokens and you are not stressed, gain 1 calculate token for each enemy ship at range 2-3 in your firing arc, to a maximum of 2."""
        "Deadeye Shot":
           text: """While you perform a primary attack, if the defender is in your %BULLSEYEARC%, you may spend 1 %HIT% result or change 1 %CRIT% result to a %HIT% result. If you do, the defender exposes 1 of its damage cards."""
        "Marg Sabl Closure":
           text: """After you fully execute a maneuver, if you moved through an obstacle, structure, or huge ship, or if you deployed, you may choose 1 enemy ship in your %FRONTARC% at range 1-2. That ship gains 1 strain token."""
        "Hondo Ohnaka":
           text: """<strong>Action:</strong> Choose 2 ships at range 1-3 of you that are friendly to each other. Coordinate one of the chosen ships, then jam the other, ignoring range restrictions."""
        "Boba Fett (Separatist)":
           text: """While you perform an attack, if there are no other ships in the attack arc, you may change 1 of your %FOCUS% results to a %HIT% result."""
        "R2-D2 (Republic)":
           text: """After you activate, you may spend 1 %CHARGE% and gain 1 deplete token to repair 1 damage card, recover 1 shield or remove 1 device at range 0-1."""
        "Patience":
           text: """At the start of the Engagement Phase, if there is an enemy ship in your %FRONTARC%, you may gain 1 deplete token to recover 1 %FORCE%."""
        "Syliure-31 Hyperdrive":
           text: """<strong>Setup:</strong> You can be placed anywhere in the play area beyond range 1 of obstacles, beyond range 3 of enemy ships, and beyond range 3 of the enemy table edge."""
        "Jedi Commander":
           text: """While your wingmates execute purple maneuvers, they treat those maneuvers as red instead. %LINEBREAK% While you defend, up to 2 of your wingmates in the attack arc may each suffer 1 %HIT%/%CRIT% damage to cancel 1 matching result."""
        "Extreme Maneuvers":
           text: """While you perform a %BOOST% action, you may spend 1 %FORCE% to use the turn (%TURNLEFT% or %TURNRIGHT%) template instead."""
        "Starbird Slash":
           text: """After you fully execute a maneuver, you may choose 1 enemy ship you moved through. That ship gains 1 strain token. Then, if you are in that ship's firing arc, you gain 1 strain token."""
        "Backwards Tailslide":
           text: """While you boost or barrel roll, if your equipped %CONFIGURATION% upgrade has the "(Closed)" side faceup, you can move through and overlap obstacles. %LINEBREAK% After you boost or barrel roll through an obstacle, if you are not at range 0 of it, gain 1 evade token. """
        "Overdrive Thruster":
           text: """While you perform a red %BOOST%. %BARRELROLL%, or %SLAM% action, you <b>must</b> use a template of 1 speed higher if able."""
        "R2-D2 (Resistance)":
           text: """During the End Phase, you may spend 1 %CHARGE% and 1 %SHIELD% to remove 1 red token. %LINEBREAK% During the End Phase, if you have no active %SHIELD%, you may spend 2 %CHARGE% to recover 1 %SHIELD% and gain 1 deplete token."""
        "R6-D8":
           text: """While you perform an attack, you may reroll a number of attack dice up to the number of friendly ships at range 0-3 that have the defender in their %BULLSEYEARC%."""
        "Underslung Blaster Cannon":
           text: """After an enemy ship executes a maneuver, you may perform this attack against it as a bonus attack. %LINEBREAK% <strong>Attack (%LOCK%):</strong> Your dice can be modified only by spending a lock for the default effect."""
        "Commander Pyre":
           text: """<strong>Setup:</strong> After placing forces, choose an enemy ship. It gains 2 stress tokens. %LINEBREAK% While you defend, if the attacker is stressed, you may reroll 1 defense die."""
        "Commander Malarus":
           text: """<strong>Setup:</strong> Equip this side face up. %LINEBREAK% While a friendly non-limited ship at range 0-1 performs a primary attack, that ship may reroll 1 blank result. If it does and the attack does not hit, you <b>must</b> flip thiss card. %LINEBREAK%<strong>Perfected:</strong> While you perform an attack, if the defender is in your %BULLSEYEARC%, you <b>must</b> convert all %FOCUS% results to %HIT% results and gain 1 stress token. Then, if you have 2 or more stress tokens, suffer 1 %HIT% damage."""
        "Automated Target Priority":
           text: """While you perform an attack, you <b>must</b> choose a defender at the closest valid attack range. %LINEBREAK% After you perform an attack that missed, place 1 calculate token on this card. %LINEBREAK% Before you engage, you may remove 1 calculate token from this card to gain a matching token."""
        "Sensor Buoy Suite":
           text: """<strong>Setup:</strong> Before placing forces, place 2 sensor buoy remotes beyond range 2 of any edge. %LINEBREAK% Before you engage, you may acquire a lock on a ship at range 0-1 of a friendly sensor buoy, ignoring range restrictions."""
        "Kalani":
           text: """After an enemy ship executes a maneuver, if it is in the %BULLSEYEARC% of a friendly ship at range 0-3, you may spend 1 %CHARGE%. If you do, that friendly ship acquires a lock on that enemy ship, then gains 1 stress token."""
        'Alpha-3B "Besh"':
           text: """While you perform a primary attack, you may spend your lock on the defender to change 1 of your blank or %FOCUS% results to a %HIT% result."""
        'Alpha-3E "Esk"':
           text: """While you perform a primary attack, before rolling attack dice, you may spend 2 charges. If you do, your %CRIT% results inflict ion tokens instead of damage."""
        "Thermal Detonators":
           text: """During the System Phase, you may spend up to 2 %CHARGE% to drop that many Thermal Detonators using the [1 %STRAIGHT%] or [2 %STRAIGHT%] template. Each must be placed using a different template. %LINEBREAK% When you reload this card, recover 1 additional %CHARGE%."""
        "R7-A7":
           text: """While you perform an attack, you may spend 1 %CHARGE% to change 1 %HIT% result to a %CRIT% result."""
        "Q7 Astromech":
           text: """While you barrel roll or boost, you can move through and overlap obstacles."""
        "Ion Limiter Override":
           text: """After you fully execute a red maneuver, you may perform a %BARRELROLL% action, even while stressed. If you do, roll an attack die: On a %HIT% result gain 1 strain token, and on a %CRIT% result gain 1 ion token."""
        "Precision Ion Engines":
           text: """Before you execute a speed 1-3 Koiogran Turn [%KTURN%] maneuver, you may spend 1 %CHARGE% to execute that maneuver as a Segnor's Loop [%SLOOPLEFT% or %SLOOPRIGHT%] maneuver instead."""
        "Intercept Booster":
           text: """<strong>Attached:</strong> %SLAM% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <r>%LOCK%</r></i>%LINEBREAK% <strong>Setup:</strong> Equip this side faceup. %LINEBREAK% <i>(Added Actions available on this side only)</i>%LINEBREAK% During the System Phase, gain 1 disarm token unless you flip this card. %LINEBREAK% At the end of the End Phase, if you have no active %CHARGE%, flip this card. %LINEBREAK% <strong>Detached:</strong> <i>Empty</i>"""
        "XX-23 S-Thread Tracers":
           text: """<strong>Attack: [%FOCUS%, %CALCULATE%, or %LOCK%]</strong>Spend 1 %CHARGE%. If this attack hits, each friendly ship at range 1-3 of the defender may acquire a lock on the defender. Then cancel all dice results."""
        "Independent Calculations":
           text: """Replace your <strong>Networked Calculations</strong> ship ability with the following: %LINEBREAK% <strong>Independent Calculations:</strong> While you perform a white %CALCULATE% action, you may treat it as red to gain 1 additional calculate token. Other ships cannot spend your calculate tokens using the <strong>Networked Calculations</strong> ship ability."""
        "Jango Fett":
           text: """While you defend or perform an attack, you may spend your lock on the enemy ship to change 1 of the enemy ship's %FOCUS% results to a blank result."""
        "Zam Wesell":
           text: """<strong>Setup:</strong> Lose 2 %CHARGE%. %LINEBREAK% During the System Phase, you may assign 1 of your secret conditions to yourself facedown: <strong> %LINEBREAK% You Should Thank Me %LINEBREAK% You'd Better Mean Business. </strong>"""
        "Boba Fett (Separatist)":
           display_name: "Boba Fett"
           text: """While you perform an attack, if there are no other ships in the attack arc, you may change 1 of your %FOCUS% results to a %HIT% result."""
        "Slave I (Separatist)":
           display_name: "Slave I"
           text: """While you perform a %FRONTARC% attack, if you are in the defender's %FULLREARARC%, you may change 1 %HIT% result to a %CRIT% result."""
        "Weapons Systems Officer":
           text: """After you perform a special attack with the %LOCK% requirement, you may acquire a lock on the defender."""
        "False Transponder Codes":
           text: """After you acquire a lock on an object or an object acquires a lock on you, if you have 1 active %CHARGE%, lose 1 %CHARGE% and jam that object, ignoring range restrictions."""

        # Epic upgrades
        "Admiral Ozzel":
           display_name: """Admiral Ozzel"""
           text: """While a friendly large or huge ship at range 0-3 executes a maneuver, it may suffer 1 %HIT% damage to execute a maneuver of the same bearing and difficulty of a speed 1 higher or lower instead."""
        "Azmorigan":
           display_name: """Azmorigan"""
           text: """During the End Phase, you may choose up to 2 friendly ships at range 0-1. If you do, each of these ships does not remove 1 calculate or evade token."""
        "Captain Needa":
           display_name: """Captain Needa"""
           text: """After a friendly ship at range 0-4 reveals its dial, you may spend 1 %CHARGE%. If you do, it sets its dial to another maneuver of the same difficulty and speed."""
        "Strategic Commander":
           display_name: """Strategic Commander"""
           text: """After a friendly ship at range 0-4 reveals its dial, you may spend 1 %CHARGE%. If you do, it sets its dial to another maneuver of the same difficulty and speed."""
        "Carlist Rieekan":
           display_name: """Carlist Rieekan"""
           text: """After a friendly ship at range 0-2 is destroyed, you may choose a friendly ship at range 0-2. If you do, it may perform a red %EVADE% action."""
        "Jan Dodonna":
           display_name: """Jan Dodonna"""
           text: """Friendly ships at range 0-3 can spend your focus and evade tokens."""
        "Raymus Antilles":
           display_name: """Raymus Antilles"""
           text: """After you are destroyed, each friendly ship at range 0-1 gains 1 focus token. After you are destroyed, you are not removed until the end of the End Phase."""
        "Stalwart Captain":
           display_name: """Stalwart Captain"""
           text: """After you are destroyed, you are not removed until the end of the End Phase."""
        "Agent of the Empire":
           display_name: """Agent of the Empire"""
           text: """You are a <strong>wing leader</strong>. Your wingmates must be 2, 3, 4, or 5 TIE/ln fighters. %LINEBREAK% While you defend, up to 2 of your wingmates in the attack arc may suffer 1 %HIT% or %CRIT% damage to cancel a matching result."""
        "First Order Elite":
           display_name: """First Order Elite"""
           text: """You are a <strong>wing leader</strong>. Your wingmates must be 2 or 3 TIE/fo fighters or TIE/sf fighters. %LINEBREAK% While you defend, up to 2 of your wingmates in the attack arc may suffer 1 %HIT% or %CRIT% damage to cancel a matching result."""
        "Veteran Wing Leader":
           display_name: """Veteran Wing Leader"""
           text: """You are a <strong>wing leader</strong>. Your wingmates must be 2, 3, 4, or 5 other ships of your ship type. %LINEBREAK% While you defend, up to 2 of your wingmates in the attack arc may suffer 1 %HIT% or %CRIT% damage to cancel a matching result."""
        "Dreadnought Hunter":
           display_name: """Dreadnought Hunter"""
           text: """While you perform an attack against a huge ship, if the attack deals a faceup damage card to the defender and the defender is in your %BULLSEYEARC%, you may apply the <strong>Precision Shot</strong> effect even if you are not in the specified arc."""
        "Ion Cannon Battery":
           display_name: """Ion Cannon Battery"""
           text: """<strong>Online: </strong> Setup: Equip this side faceup.%LINEBREAK% Bonus Attack: Spend 1 %ENERGY%. If this attack hits, the defender suffers 1 %CRIT% damage, and all %HIT%/%CRIT% results inflict ion tokens instead of damage. %LINEBREAK%<strong>Offline: </strong> %LINEBREAK% After you engage, you may spend 2 %ENERGY% to flip this card."""
        "Targeting Battery":
           display_name: """Targeting Battery"""
           text: """<strong>Online: </strong> Setup: Equip this side faceup.%LINEBREAK% Bonus Attack: Spend 1 %ENERGY%. After you perform this attack, you may acquire a lock on the defender. %LINEBREAK%<strong>Offline: </strong> %LINEBREAK% After you engage, you may spend 2 %ENERGY% to flip this card."""
        "Ordnance Tubes":
           display_name: """Ordnance Tubes"""
           text: """<strong>Online: </strong> Setup: Equip this side faceup. %LINEBREAK% You can perform %TORPEDO% and %MISSILE% attacks only as bonus attacks. You <strong>must</strong> treat the %FRONTARC% requirement of your equipped %TORPEDO% and %MISSILE% upgrades as %FULLFRONTARC%. %LINEBREAK% Bonus Attack: Perform a %TORPEDO% attack. %LINEBREAK% Bonus Attack: Perform a %MISSILE% attack. %LINEBREAK%<strong>Offline: </strong> %LINEBREAK% You must treat the %FRONTARC% requirement of your equipped %TORPEDO% and %MISSILE% upgrades as %BULLSEYEARC%. %LINEBREAK% Action: Spend 2 %ENERGY% to flip this card."""
        "Point-Defense Battery":
           display_name: """Point-Defense Battery"""
           text: """<strong>Online: </strong> Setup: Equip this side faceup. %LINEBREAK% Bonus Attack: Spend 1 %ENERGY%. %LINEBREAK% Bonus Attack: Spend 1 %ENERGY%. %LINEBREAK% Bonus Attack: Spend 1 %ENERGY%. %LINEBREAK% Bonus Attack: Spend 1 %ENERGY%. %LINEBREAK%<strong>Offline: </strong> %LINEBREAK% After you engage, you may spend 2 %ENERGY% to flip this card."""
        "Turbolaser Battery":
           display_name: """Turbolaser Battery"""
           text: """<strong>Online: </strong> Setup: Equip this side faceup.%LINEBREAK% Bonus Attack (%LOCK%): Spend 3 %ENERGY%. If this attack hits, add 3 %HIT% results. %LINEBREAK% <strong>Offline: </strong> %LINEBREAK% After you engage, you may spend 2 %ENERGY% to flip this card."""
        "Bombardment Specialists":
           display_name: """Bombardment Specialists"""
           text: """While you perform an attack, you may spend 1 calculate token to increase or decrease the range requirement by 1, to a limit of 0-5."""
        "Comms Team":
           display_name: """Comms Team"""
           text: """After you perform a %COORDINATE% action, you may spend up to 2 %ENERGY% to coordinate that many additional ships at range 0-1 of the ship you coordinated."""
        "IG-RM Droids":
           display_name: """IG-RM Droids"""
           text: """While you perform an attack, if you are calculating, you may change 1 %HIT% result to a %CRIT% result."""
        "Gunnery Specialists":
           display_name: """Gunnery Specialists"""
           text: """While you perform a primary or %HARDPOINT% attack, you may spend 1 or more %ENERGY% to reroll that many attack dice."""
        "Damage Control Team":
           display_name: """Damage Control Team"""
           text: """Before you engage, you may spend 1 or more %ENERGY% to flip that many of your <strong>Offline</strong> upgrade cards.%LINEBREAK% Action: Spend 1 or more %ENERGY% to repair that many of your faceup <strong>Ship</strong> damage cards."""
        "Ordnance Team":
           display_name: """Ordnance Team"""
           text: """While you perform a %RELOAD% action, you may spend up to 3 %ENERGY% to reload that many additional %CHARGE% on your equipped %MISSILE%/%TORPEDO% upgrades. %LINEBREAK% After you perform a %RELOAD% action, you may spend 1 %ENERGY% to remove 1 disarm token."""
        "Sensor Experts":
           display_name: """Sensor Experts"""
           text: """You can maintain up to 3 locks on different objects. %LINEBREAK% After you perform a %LOCK% action, you may spend up to 2 %ENERGY% to acquire a lock on that many other objects at range 0-1 of the object you locked, ignoring range restrictions."""
        "Quick-Release Locks":
           display_name: """Quick-Release Locks"""
           text: """During the System Phase, you may spend 1 %CHARGE% to place 1 cargo crate drift in your %REARARC% at range 0. It cannot overlap a ship this way.%LINEBREAK% This card's %CHARGE% cannot be recovered."""
        "Saboteur's Map":
           display_name: """Saboteur's Map"""
           text: """At the end of Setup, you may spend up to 1 %CHARGE% from each of your equipped <strong>Mine</strong> upgrades to place the corresponding device in the play area beyond range 2 of any enemy ship, strategic marker, or other device."""
        "Scanner Baffler":
           display_name: """Scanner Baffler"""
           text: """At the end of Setup, you may choose any number of other friendly, non-huge ships in your deployment area at range 0-1. If you do, place those ships anywhere in the same deployment area."""
        "Adaptive Shields":
           display_name: """Adaptive Shields"""
           text: """While another friendly ship at range 0-1 defends, if it is a smaller size than you, you may spend 1 shield or 2 %ENERGY% to cancel 1 %HIT% or %CRIT% result."""
        "Boosted Scanners":
           display_name: """Boosted Scanners"""
           text: """While you lock, coordinate, or jam, you may spend up to 3 %ENERGY% to increase the range at which you can choose an object by 1 per %ENERGY% spent this way, to a maximum of range 5."""
        "Optimized Power Core":
           display_name: """Optimized Power Core"""
           text: """After you execute a blue maneuver, recover 1 %ENERGY%."""
        "Tibanna Reserves":
           display_name: """Tibanna Reserves"""
           text: """Action: Spend 1 %CHARGE% to recover 2 %ENERGY%."""
        "Toryn Farr":
           display_name: """Toryn Farr"""
           text: """After you coordinate a friendly ship, it may acquire a lock on a ship you are locking, ignoring range restrictions."""
        "Dodonna's Pride":
           display_name: """Dodonna's Pride"""
           text: """ """
        "Jaina's Light":
           display_name: """Jaina's Light"""
           text: """While a friendly ship at range 0-2 defends, if the attack is obstructed by an obstacle, you may spend 1 %ENERGY%. If you do, the defender rolls 1 additional defense die."""
        "Liberator":
           display_name: """Liberator"""
           text: """You can dock up to 2 small ships. %LINEBREAK% After a ship deploys from you, it may perform a %FOCUS% or %BARRELROLL% action."""
        "Tantive IV":
           display_name: """Tantive IV"""
           text: """While you defend, if the attacker is in your %REARARC%, you may roll 1 additional defense die."""
        "Thunderstrike":
           display_name: """Thunderstrike"""
           text: """While you perform a bonus attack, if you have not attacked the defender this round, you may reroll 1 attack die."""
        "Bright Hope":
           display_name: """Bright Hope"""
           text: """You can reinforce only your %FULLFRONTARC%. %LINEBREAK% While you defend, if you are reinforced and the attacker is in your %FULLFRONTARC%, you may roll 1 additional defense die."""
        "Luminous":
           display_name: """Luminous"""
           text: """Setup: You are placed in reserve. %LINEBREAK% At the end of setup, you are placed in the play area at range 0-2 of a friendly ship."""
        "Quantum Storm":
           display_name: """Quantum Storm"""
           text: """After you fully execute a white maneuver, recover 1 %ENERGY%."""
        "Assailer":
           display_name: """Assailer"""
           text: """While you defend, if the attack range is 1, you may roll 1 additional defense die."""
        "Corvus":
           display_name: """Corvus"""
           text: """You can dock up to 2 small ships. %LINEBREAK% After you perform a %CALCULATE% action, gain 1 calculate token."""
        "Impetuous":
           display_name: """Impetuous"""
           text: """After you perform an attack, if the defender was destroyed, you may perform a %FOCUS% or %LOCK% action."""
        "Instigator":
           display_name: """Instigator"""
           text: """While you perform an attack, if the defender has an orange or red token, you may reroll up to 2 attack dice."""
        "Blood Crow":
           display_name: """Blood Crow"""
           text: """While you perform an attack at attack range 1-2, you may add 1 %FOCUS% result."""
        "Requiem":
           display_name: """Requiem"""
           text: """After a ship deploys from you, it may acquire a lock on one ship you are locking, ignoring range restrictions."""
        "Suppressor":
           display_name: """Suppressor"""
           text: """After you coordinate a friendly ship, you may spend 1 %ENERGY% to jam an enemy ship at range 0-2 of that ship, ignoring range restrictions."""
        "Vector":
           display_name: """Vector"""
           text: """After a ship deploys from you, it may perform a %EVADE% or %BOOST% action."""
        "Broken Horn":
           display_name: """Broken Horn"""
           text: """If you are damaged, reduce the difficulty of your speed 3-5 maneuvers."""
        "Merchant One":
           display_name: """Merchant One"""
           text: """Bonus Attack: Perform a %TURRET% attack."""
        "Insatiable Worrt":
           display_name: """Insatiable Worrt"""
           text: """During the End Phase, you may recover 1 additional shield or 1 additional %ENERGY%."""
        "Corsair Refit":
           display_name: """Corsair Refit"""
           text: """Bonus Attack: Spend 1 %ENERGY% to perform a %CANNON%, %TURRET%, or %MISSILE% attack."""



    condition_translations =
        'Suppressive Fire':
           text: '''While you perform an attack against a ship other than <strong>Captain Rex</strong>, roll 1 fewer attack die. %LINEBREAK% After <strong>Captain Rex</strong> defends, remove this card.  %LINEBREAK% At the end of the Combat Phase, if <strong>Captain Rex</strong> did not perform an attack this phase, remove this card. %LINEBREAK% After <strong>Captain Rex</strong> is destroyed, remove this card.'''
        'Hunted':
           text: '''After you are destroyed, you must choose another friendly ship and assign this condition to it, if able.'''
        'Listening Device':
           text: '''During the System Phase, if an enemy ship with the <strong>Informant</strong> upgrade is at range 0-2, flip your dial faceup.'''
        'Rattled':
           text: '''After a bomb or mine at range 0-1 detonates, suffer 1 %CRIT%. Then, remove this card. %LINEBREAK% Action: If there are no bombs or mines at range 0-1, remove this card.'''
        'Optimized Prototype':
           text: '''While you perform a %FRONTARC% primary attack against a ship locked by a friendly ship with the <strong>Director Krennic</strong> upgrade, you may spend 1 %HIT%/%CRIT%/%FOCUS% result. If you do, choose one: the defender loses 1 shield or the defender flips 1 of its facedown damage cards.'''
        '''I'll Show You the Dark Side''':
           text: ''' When this card is assigned, if there is no faceup damage card on it, the player who assigned it searches the damage deck for 1 Pilot damage card and places it faceup on this card. Then shuffle the damage deck. When you would suffer 1 %CRIT% damage, you are instead dealt the faceup damage card on this card. Then, remove this card. '''
        'Proton Bomb':
           text: '''(Bomb Token) - At the end of the Activation Phase, this device detonates. When this device detonates, each ship and remote at range 0–1 suffers 1 %CRIT% damage.%LINEBREAK%<i>Errata (Official Rulings Thread 03/2019): Added: "and remote"</i>'''
        'Seismic Charge':
           text: '''(Bomb Token) - At the end of the Activation Phase this device detonates. When this device detonates, choose 1 obstacle at range 0–1. Each ship and remote at range 0–1 of the obstacle suffers 1 %HIT% damage. Then remove that obstacle.%LINEBREAK%<i>Errata (Official Rulings Thread 03/2019): Added: "and remote"</i> '''
        'Bomblet':
           text: '''(Bomb Token) - At the end of the Activation Phase this device detonates. When this device detonates, each ship and remote at range 0–1 rolls 2 attack dice. Each ship and remote suffers 1 %HIT% damage for each %HIT%/%CRIT% result.%LINEBREAK%<i>Errata (Official Rulings Thread 03/2019): Added: "and remote"</i>'''
        'Loose Cargo':
           text: '''(Debris Token) - Loose cargo is a debris cloud.'''
        'Conner Net':
           text: '''(Mine Token) - After a ship overlaps or moves through this device, it detonates. When this device detonates, the ship suffers 1 %HIT% damage and gains 3 ion tokens.'''
        'Proximity Mine':
           text: '''(Mine Token) - After a ship overlaps or moves through this device, it detonates. When this device detonates, that ship rolls 2 attack dice. That ship then suffers 1 %HIT% plus 1 %HIT%/%CRIT% damage for each matching result.%LINEBREAK%<i>Errata (since rules reference 1.0.2): Added: "1 %HIT% plus"</i>'''
        'DRK-1 Probe Droid':
           text: '''INIT: 0 <br>AGILITY: 3 <br>HULL: 1 %LINEBREAK% (Remote) - <strong>System Phase:</strong> The DRK-1 probe droid’s controlling player may choose a [2 %BANKLEFT%], [2 %STRAIGHT%] or [2 %BANKRIGHT%] template and any set of the DRK-1’s guides. The player then relocates the remote, placing the DRK-1 at the other end of the template. It can be placed overlapping an object this way. %LINEBREAK%If the DRK-1 overlaps a ship, use the position marker to denote the ship’s position, then place the ship on top of the remote. %LINEBREAK%<strong>Activation, Engagement, and End Phase:</strong> No effect. %LINEBREAK%<strong>Other Rules:</strong> While a ship locks an object or jams an enemy ship, it may measure range from a friendly DRK-1 probe droid. After an enemy ship executes a maneuver that causes it to overlap a DRK-1 probe droid, the ship’s controller rolls 1 attack die. On a %FOCUS% result, the DRK-1 probe droid suffers 1 %HIT% damage.'''
        'Buzz Droid Swarm':
           text: '''INIT: 0 <br>AGILITY: 3 <br>HULL: 1 %LINEBREAK% (Remote) - <strong>System, Activation, and End Phase:</strong> No effect. %LINEBREAK%<strong>Engagement Phase:</strong> When you engage, each enemy ship at range 0 of the buzz droid swarm suffers 1 %CRIT% damage. %LINEBREAK%<strong>Other Rules:</strong> After an enemy ship overlaps or moves through a buzz droid swarm, the swarm’s controlling player relocates it by aligning the tab to that ship’s front or rear guides (this ship is at range 0 of the swarm). The swarm cannot be aligned to a set of the ship’s guides if doing so would cause it to overlap an object. If the swarm cannot be placed at a chosen set of guides, its controlling player must align it to the other set of the ship’s guides. If it cannot be aligned to the other set, the swarm and the enemy ship that overlapped or moved through it each suffer 1 %HIT% damage.'''
        '''It's the Resistance''':
           text: '''<strong>Setup:</strong> Start in reserve. %LINEBREAK% When you deploy, you are placed within range 1 of any table edge and beyond range 3 of any enemy ship. %LINEBREAK% At the start of the round, if all of the friendly <strong>GA-97</strong>'s %CHARGE% are active, you <strong>must</strong> deploy. Then remove this card. After the friendly <strong>GA-97</strong> is destroyed, you <strong>must</strong> deploy. Then gain 1 disarm token and remove this card.'''
        'Electro-Proton Bomb':
           text: '''(Bomb Token) - At the end of the Activation Phase this device detonates. When this device detonates, each ship and remote at range 0–2 rolls 4 attack dice. Each ship loses 1 shield for each blank result, gains 1 ion token for each %FOCUS%/%HIT% result, and gains 1 disarm token for each %CRIT% result. Each remote at range 0–1 loses 1 shield for each blank result and suffers 1 damage for each %FOCUS%/%HIT% result.'''
        'Decoyed':
           text: '''While you defend, each friendly <strong>Naboo Handmaiden</strong> in the attack arc may spend 1 evade token to change one of your results to an %EVADE% result. %LINEBREAK% If you are a Naboo Royal N-1 Starfighter, each friendly <strong>Naboo Handmaiden</strong> in the attack arc may spend 1 evade token to add 1 %EVADE% result instead.'''
        'Compromising Intel':
           text: '''During the System Phase, if the enemy <strong>Vi Morandi</strong> is at range 0-3, flip your dial faceup. %LINEBREAK% While you defend or perform an attack against the enemy <strong>Vi Morandi</strong>, you cannot spend focus tokens.'''
        'Cluster Mine':
           text: '''(Mine Tokens) - A Cluster Mine Set consists of 3 individual Cluster Mine devices. %LINEBREAK% When a Cluster Mines set is placed, the center Cluster Mine is placed as normal, then two additional Cluster Mines are placed in the recesses as shown. %LINEBREAK% After a ship overlaps or moves through any individual Cluster Mine, it detonates. Other Cluster Mines in the set that were not overlapped or moved through do not detonate. %LINEBREAK% When each of these devices detonates, that ship rolls 2 attack dice. That ship then suffers 1 %HIT%/%CRIT% damage for each matching result.'''
        'Ion Bomb':
           text: '''(Bomb Token) - At the end of the Activation Phase, this device detonates. When this device detonates, each ship at range 0–1 gains 3 ion tokens, and each remote at range 0–1 suffers 1 %HIT% damage.'''
        'Concussion Bomb':
           text: '''(Bomb Token) - At the end of the Activation Phase, this device detonates. When this device detonates, each ship and remote at range 0–1 is dealt 1 facedown damage card. Then, each ship at range 0–1 must expose 1 damage card unless it chooses to gain 1 strain token.'''
        'Thermal Detonator':
           text: '''(Bomb Token) - At the end of the Activation Phase, this device detonates. When this device detonates, each ship and remote at range 0–1 rolls 1 attack die. Each ship gains 1 strain token for each %FOCUS% result, and each ship and remote suffers 1 %HIT%/%CRIT% damage for each matching result.'''
        'Sensor Buoy':
           text: '''INIT: 0 <br>AGILITY: 3 <br>HULL: 2 %LINEBREAK% (Remote) - Sensor buoys are remotes that come in pairs (one red, and one blue, each with its own remote card), and are placed by the <strong>Sensor Buoy Suite</strong> upgrade card. Beyond being remotes and interacting with that card, they have no additional rules.'''
        'Fearful Prey':
           text: '''After you defend against an enemy <strong>Fearsome Predator</strong>, if you did not spend at least 1 green token during the attack, gain 1 strain token.'''
        'You Should Thank Me':
           text: '''This condition is assigned facedown. Reveal it after you defend. %LINEBREAK% After you defend you, <strong>Zam Wesell</strong> recovers 1 %CHARGE%. Then, you may acquire a lock on the attacker. %LINEBREAK% At the end of the Engagement Phase, if this card is facedown and you are in an enemy ship's firing arc, you may reveal this card and spend 2 %CHARGE% from <strong>Zam Wesell</strong>. If you do, you may perform a bonus attack. %LINEBREAK% At the start of the System Phase, remove this condition.'''
        '''You'd Better Mean Business''':
           text: '''This condition is assigned facedown. Reveal it after you defend. %LINEBREAK% After you defend you, you may spend 2 %CHARGE% from <strong>Zam Wesell</strong>. If you do, perform a bonus attack against the attacker. %LINEBREAK% At the end of the Engagement Phase, if this card is facedown and you are in an enemy ship's firing arc, you may reveal this card. If you do, <strong>Zam Wesell</strong> recovers 2 %CHARGE%. %LINEBREAK% At the start of the System Phase, remove this condition.'''

    exportObj.setupTranslationCardData pilot_translations, upgrade_translations, condition_translations
