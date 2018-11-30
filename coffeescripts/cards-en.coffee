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
        "F-Evade": '<i class="xwing-miniatures-font force xwing-miniatures-font-evade"></i>'
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
        '.save-list' : '<i class="fa fa-floppy-o"></i>&nbsp;Save'
        '.save-list-as' : '<i class="fa fa-files-o"></i>&nbsp;Save as…'
        '.delete-list' : '<i class="fa fa-trash-o"></i>&nbsp;Delete'
        '.backend-list-my-squads' : 'Load Squad'
        '.view-as-text' : '<span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Print/View as </span>Text'
        '.randomize' : '<i class="fa fa-random"></i>&nbsp;Random!'
        '.randomize-options' : 'Randomizer options…'
        '.notes-container > span' : 'Squad Notes'
        # Print/View modal
        '.bbcode-list' : 'Copy the BBCode below and paste it into your forum post.<textarea></textarea><button class="btn btn-copy">Copy</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Copy</button>'
        '.vertical-space-checkbox' : """Add space for damage/upgrade cards when printing <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Print color <input type="checkbox" class="toggle-color-print" checked="checked" />"""
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
        # Collection
        '.collection': '<i class="fa fa-folder-open hidden-phone hidden-tabler"></i>&nbsp;Your Collection'

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

    # YASB Names are loaded by default (mostly 1.0 names of ships), so we want to update to official 2nd edition
    exportObj.ships = basic_cards.ships

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
    exportObj.renameShip """JumpMaster 5000""", """JumpMaster 5000"""
    exportObj.renameShip """M3-A Interceptor""", """M3-A Interceptor"""
    exportObj.renameShip """Scavenged YT-1300""", """Customized YT-1300 Light Freighter"""
    exportObj.renameShip """Escape Craft""", """Escape Craft"""

    # Names don't need updating, but text needs to be set
    pilot_translations =
        "Academy Pilot":
           display_name: """Academy Pilot"""
           text: """<i class = flavor_text>The Galactic Empire uses the fast and agile TIE/ln, developed by Sienar Fleet Systems and produced in staggering quantity, as its primary starfighter.</i>"""
        "Alpha Squadron Pilot":
           display_name: """Alpha Squadron Pilot"""
           text: """<i class = flavor_text>Sienar Fleet Systems designed the TIE interceptor with four wing-mounted laser cannons, a dramatic increase in firepower over its predecessors.</i>%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "Bandit Squadron Pilot":
           display_name: """Bandit Squadron Pilot"""
           text: """<i class = flavor_text>The Z-95 Headhunter was the primary inspiration for Incom Corporation’s exemplary T-65 X-wing starfighter. Though it is considered outdated by modern standards, it remains a versatile and potent snub fighter.</i>"""
        "Baron of the Empire":
           display_name: """Baron of the Empire"""
           text: """<i class = flavor_text>Sienar Fleet System’s TIE Advanced v1 is a groundbreaking starfighter design, featuring upgraded engines, a missile launcher, and folding s-foils.</i>"""
        "Binayre Pirate":
           display_name: """Binayre Pirate"""
           text: """<i class = flavor_text>Operating from the Double Worlds, Talus and Tralus, Kath Scarlet’s gang of smugglers and pirates would never be described as reputable or dependable—even by other criminals.</i>"""
        "Black Squadron Ace":
           display_name: """Black Squadron Ace"""
           text: """<i class = flavor_text>The elite TIE/ln pilots of Black Squadron accompanied Darth Vader on a devastating strike against the Rebel forces at the Battle of Yavin.</i>"""
        "Black Squadron Scout":
           display_name: """Black Squadron Scout"""
           text: """<i class = flavor_text>These heavily armed atmospheric craft employ their specialized moveable wings to gain additional speed and maneuverability.</i>%LINEBREAK% <sasmall><strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver.</sasmall>"""
        "Black Sun Ace":
           display_name: """Black Sun Ace"""
           text: """<i class = flavor_text>The Kihraxz assault fighter was developed specifically for the Black Sun crime syndicate, whose highly paid ace pilots demanded a nimble, powerful ship to match their skills.</i>"""
        "Black Sun Assassin":
           display_name: """Black Sun Assassin"""
           text: """<i class = flavor_text>Although assassinations can be handled with a shot in the dark or a dire substance added to a drink, a flaming shuttle tumbling from the sky sends a special kind of message.</i> %LINEBREAK% <sasmall><strong>Microthrusters:</strong> While you perform a barrel roll, you <b>must</b> use the %BANKLEFT% or %BANKRIGHT% template instead of the %STRAIGHT% template.</sasmall>"""
        "Black Sun Enforcer":
           display_name: """Black Sun Enforcer"""
           text: """<i class = flavor_text>Prince Xizor himself collaborated with MandalMotors to design the StarViper-class attack platform, one of the most formidable starfighters in the galaxy.</i> %LINEBREAK% <sasmall><strong>Microthrusters:</strong> While you perform a barrel roll, you <b>must</b> use the %BANKLEFT% or %BANKRIGHT% template instead of the %STRAIGHT% template.</sasmall>"""
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
        "Blue Squadron Scout":
           display_name: """Blue Squadron Scout"""
           text: """<i class = flavor_text>Used for deploying troops under the cover of darkness or into the heat of battle, the UT-60D U-wing fulfills the Rebellion’s need for a swift and hardy troop transport.</i>"""
        "Bounty Hunter":
           display_name: """Bounty Hunter"""
           text: """<i class = flavor_text>The Firespray-class patrol craft is infamous for its association with the deadly bounty hunters Jango Fett and Boba Fett, who packed their craft with countless deadly armaments.</i>"""
        "Cartel Executioner":
           display_name: """Cartel Executioner"""
           text: """<i class = flavor_text>Many veteran pilots in the service of the Hutt kajidics and other criminal operations choose the M12-L Kimogila for its firepower and dreaded reputation alike.</i>%LINEBREAK%<sasmall> <strong>Dead to Rights:</strong> While you perform an attack, if the defender is in your %BULLSEYEARC%, defense dice cannot be modified using green tokens.</sasmall>"""
        "Cartel Marauder":
           display_name: """Cartel Marauder"""
           text: """<i class = flavor_text>The versatile Kihraxz was modeled after Incom’s popular X-wing starfighter, but an array of after-market modification kits ensure a wide variety of designs. </i>"""
        "Cartel Spacer":
           display_name: """Cartel Spacer"""
           text: """<i class = flavor_text>MandalMotors’ M3-A “Scyk” Interceptor is purchased in large quantities by the Hutt Cartel and the Car’das smugglers due to its low cost and customizability.</i> %LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Cavern Angels Zealot":
           display_name: """Cavern Angels Zealot"""
           text: """<i class = flavor_text>Unlike most Rebel cells, Saw Gerrera’s partisans are willing to use extreme methods to undermine the Galactic Empire’s objectives in brutal battles that rage from Geonosis to Jedha.</i>"""
        "Contracted Scout":
           display_name: """Contracted Scout"""
           text: """<i class = flavor_text>Built for long-distance reconnaissance and plotting new hyperspace routes, the lightly armed JumpMaster 5000 is often extensively retrofitted with custom upgrades.</i>"""
        "Crymorah Goon":
           display_name: """Crymorah Goon"""
           text: """<i class = flavor_text>Though far from nimble, the Y-wing’s heavy hull, substantial shielding, and turret-mounted cannons make it an excellent patrol craft.</i>"""
        "Cutlass Squadron Pilot":
           display_name: """Cutlass Squadron Pilot"""
           text: """<i class = flavor_text>The TIE punisher’s design builds upon the success of the TIE bomber, adding shielding, a second bomb chute, and three additional ordnance pods, each equipped with a twin ion engine.</i>"""
        "Delta Squadron Pilot":
           display_name: """Delta Squadron Pilot"""
           text: """<i class = flavor_text>In addition to its missile launchers and six wingtip laser cannons, the formidable TIE defender is equipped with deflector shields and a hyperdrive.</i>%LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Freighter Captain":
           display_name: """Freighter Captain"""
           text: """<i class = flavor_text>Many spacers make a living traveling the Outer Rim, where the difference between smuggler and legitimate merchant is often murky. On the outskirts of civilization, buyers are rarely so discerning to ask where merchandise came from, at least as long as the price is low enough.</i>"""
        "Gamma Squadron Ace":
           display_name: """Gamma Squadron Ace"""
           text: """<i class = flavor_text>Though it sacrifices a degree of speed and maneuverability compared to a TIE/ln, the TIE bomber’s increased payload can carry enough firepower to destroy virtually any enemy target.</i> %LINEBREAK%<strong>Nimble Bomber:</strong> If you would drop a device using a %STRAIGHT% template, you may use a %BANKLEFT% or %BANKRIGHT% template of the same speed instead."""
        "Gand Findsman":
           display_name: """Gand Findsman"""
           text: """<i class = flavor_text>The legendary Findsmen of Gand worship the enshrouding mists of their home planet, using signs, augurs, and mystical rituals to track their quarry.</i>"""
        "Gold Squadron Veteran":
           display_name: """Gold Squadron Veteran"""
           text: """<i class = flavor_text>Commanded by Jon “Dutch” Vander, Gold Squadron played an instrumental role in the Battles of Scarif and Yavin.</i>"""
        "Gray Squadron Bomber":
           display_name: """Gray Squadron Bomber"""
           text: """<i class = flavor_text>Long after the Y-wing was phased out by the Galactic Empire, its durability, dependability, and heavy armament help it remain a staple in the Rebel fleet.</i>"""
        "Green Squadron Pilot":
           display_name: """Green Squadron Pilot"""
           text: """<i class = flavor_text>Due to its sensitive controls and high maneuverability, only the most talented pilots belong in an A-wing cockpit.</i>%LINEBREAK%<sasmall><strong>Vectored Thrusters:</strong> After you perform an action, you may perform a red %BOOST% action.</sasmall>"""
        "Hired Gun":
           display_name: """Hired Gun"""
           text: """<i class = flavor_text>Just the mention of Imperial credits can bring a host of less-than-trustworthy individuals to your side.</i>"""
        "Imdaar Test Pilot":
           display_name: """Imdaar Test Pilot"""
           text: """<i class = flavor_text>The primary result of a hidden research facility on Imdaar Alpha, the TIE phantom achieves what many thought was impossible: a small starfighter equipped with an advanced cloaking device.</i>%LINEBREAK%<strong>Stygium Array:</strong> After you decloak, you may perform an %EVADE% action. At the start of the End Phase, you may spend 1 evade token to gain 1 cloak token."""
        "Inquisitor":
           display_name: """Inquisitor"""
           text: """<i class = flavor_text>The fearsome Inquisitors are given a great deal of autonomy and access to the Empire’s latest technology, like the prototype TIE Advanced v1.</i>"""
        "Jakku Gunrunner":
           display_name: """Jakku Gunrunner"""
           text: """<i class = flavor_text>The Quadrijet transfer spacetug, commonly called a "Quadjumper," is nimble in space and atmosphere alike, making it popular among both smugglers and explorers.</i> %LINEBREAK%<strong>Spacetug Tractor Array:</strong> <strong>Action:</strong> Choose a ship in your %FRONTARC% at range 1. That ship gains 1 tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1."""
        "Kashyyyk Defender":
           display_name: """Kashyyyk Defender"""
           text: """<i class = flavor_text>Equipped with three wide-range Sureggi twin laser cannons, the Auzituck gunship acts as a powerful deterrent to slaver operations in the Kashyyyk system.</i>"""
        "Knave Squadron Escort":
           display_name: """Knave Squadron Escort"""
           text: """<i class = flavor_text>Designed to combine the best features of the X-wing series with the A-wing series, the E-wing boasts superior firepower, speed, and maneuverability.</i>%LINEBREAK% <sasmall><strong>Experimental Scanners:</strong> You can acquire locks beyond range 3. You cannot acquire locks at range 1.</sasmall>"""
        "Lok Revenant":
           display_name: """Lok Revenant"""
           text: """<i class = flavor_text>The Nubian Design Collective crafted the Scurrg H-6 Bomber with combat versatility in mind, arming it with powerful shields and a bristling array of destructive weaponry.</i>"""
        "Lothal Rebel":
           display_name: """Lothal Rebel"""
           text: """<i class = flavor_text>Another successful Corellian Engineering Corporation freighter design, the VCX-100 is larger than the ubiquitous YT-series, boasting more living space and customizability.</i>%LINEBREAK%<strong>Tail Gun:</strong> While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship’s primary %FRONTARC% attack value."""
        "Nu Squadron Pilot":
           display_name: """Nu Squadron Pilot"""
           text: """<i class = flavor_text>With a design inspired by other Cygnus Spaceworks vessels, the Alpha-class star wing is a versatile craft assigned to Imperial Navy specialist units that need a starfighter they can outfit for multiple roles.</i>"""
        "Obsidian Squadron Pilot":
           display_name: """Obsidian Squadron Pilot"""
           text: """<i class = flavor_text>The TIE fighter’s Twin Ion Engine system was designed for speed, making the TIE/ln one of the most maneuverable starships ever mass-produced.</i>"""
        "Omicron Group Pilot":
           display_name: """Omicron Group Pilot"""
           text: """<i class = flavor_text>Noted for its tri-wing design and advanced sensor suite, the Lambda-class shuttle serves a critical role as a light utility craft in the Imperial Navy.</i>"""
        "Onyx Squadron Ace":
           display_name: """Onyx Squadron Ace"""
           text: """<i class = flavor_text>The experimental TIE defender outclasses all other contemporary starfighters, though its size, speed, and array of weapons come at a tremendous cost in credits.</i>%LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Onyx Squadron Scout":
           display_name: """Onyx Squadron Scout"""
           text: """<i class = flavor_text>Designed for extended engagements, the TIE/ag is flown primarily by elite pilots trained to leverage both its unique weapons loadout and its maneuverability to full effect.</i>"""
        "Outer Rim Smuggler":
           display_name: """Outer Rim Smuggler"""
           text: """<i class = flavor_text>Known for its durability and modular design, the YT-1300 is one of the most popular, widely used, and extensively customized freighters in the galaxy.</i>"""
        "Partisan Renegade":
           display_name: """Partisan Renegade"""
           text: """<i class = flavor_text>Saw Gerrera’s partisans were first established to oppose Separatist forces on Onderon during the Clone Wars, and continued to wage war against galactic tyranny as the Empire rose to power.</i>"""
        "Patrol Leader":
           display_name: """Patrol Leader"""
           text: """<i class = flavor_text>To be granted command of a VT-49 Decimator is seen as a significant promotion for a middling officer of the Imperial Navy.</i>"""
        "Phoenix Squadron Pilot":
           display_name: """Phoenix Squadron Pilot"""
           text: """<i class = flavor_text>Led by Commander Jun Sato, the brave but inexperienced pilots of Phoenix Squadron face staggering odds in their battle against the Galactic Empire.</i>%LINEBREAK%<sasmall><strong>Vectored Thrusters:</strong> After you perform an action, you may perform a red %BOOST% action.</sasmall>"""
        "Planetary Sentinel":
           display_name: """Planetary Sentinel"""
           text: """<i class = flavor_text>To protect its many military installations, the Empire requires a swift and vigilant defense force.</i>%LINEBREAK% <sasmall><strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver.</sasmall>"""
        "Rebel Scout":
           display_name: """Rebel Scout"""
           text: """<i class = flavor_text>Designed to look like a bird in flight by the Corellian Engineering Corporation, “hawk” series ships are exemplary transport craft. Swift and rugged, the HWK-290 is often employed by Rebel agents as a mobile base of operations.</i>"""
        "Red Squadron Veteran":
           display_name: """Red Squadron Veteran"""
           text: """<i class = flavor_text>Created as an elite starfighter squad, Red Squadron includes some of the best pilots in the Rebel Alliance.</i>"""
        "Rho Squadron Pilot":
           display_name: """Rho Squadron Pilot"""
           text: """<i class = flavor_text>The elite pilots of Rho Squadron instill terror in the Rebellion, using both the Xg-1 assault configuration and Os-1 arsenal loadout of the Alpha-class star wing to devastating effect.</i>"""
        "Rogue Squadron Escort":
           display_name: """Rogue Squadron Escort"""
           text: """<i class = flavor_text>The elite pilots of Rogue Squadron are among the Rebellion’s very best.</i> %LINEBREAK% <sasmall><strong>Experimental Scanners:</strong> You can acquire locks beyond range 3. You cannot acquire locks at range 1.</sasmall>"""
        "Saber Squadron Ace":
           display_name: """Saber Squadron Ace"""
           text: """<i class = flavor_text>Led by Baron Soontir Fel, the pilots of Saber Squadron are among the Empire’s best. Their TIE interceptors are marked with red stripes to designate pilots with at least ten confirmed kills. </i> %LINEBREAK%  <strong> Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "Scarif Base Pilot":
           display_name: """Scarif Base Pilot"""
           text: """<i class = flavor_text>The TIE reaper was designed to ferry elite troops to flashpoints on the battlefield, notably carrying Director Krennic’s dreaded death troopers at the Battle of Scarif.</i>%LINEBREAK%<sasmall><strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver.</sasmall>"""
        "Scimitar Squadron Pilot":
           display_name: """Scimitar Squadron Pilot"""
           text: """<i class = flavor_text>The TIE/sa is exceptionally nimble for a bomber, allowing it to pinpoint its target while avoiding excessive collateral damage to the surrounding area.</i> %LINEBREAK%<strong>Nimble Bomber:</strong> If you would drop a device using a %STRAIGHT% template, you may use a %BANKLEFT% or %BANKRIGHT% template of the same speed instead."""
        "Shadowport Hunter":
           display_name: """Shadowport Hunter"""
           text: """<i class = flavor_text>Crime syndicates augment the lethal skills of their loyal contractors with the best technology available, like the fast and formidable Lancer-class pursuit craft.</i>"""
        "Sienar Specialist":
           display_name: """Sienar Specialist"""
           text: """<i class = flavor_text>During the development of the TIE aggressor, Sienar Fleet Systems valued performance and versatility over raw cost efficiency.</i>"""
        "Sigma Squadron Ace":
           display_name: """Sigma Squadron Ace"""
           text: """<i class = flavor_text>Featuring a hyperdrive and shields, the TIE phantom is also equipped with five laser cannons, giving it substantial firepower for an Imperial fighter.</i>%LINEBREAK%<strong>Stygium Array:</strong> After you decloak, you may perform an %EVADE% action. At the start of the End Phase, you may spend 1 evade token to gain 1 cloak token."""
        "Skull Squadron Pilot":
           display_name: """Skull Squadron Pilot"""
           text: """<i class = flavor_text>The aces of Skull Squadron favor an aggressive approach, using their craft’s pivot wing technology to achieve unmatched agility in the pursuit of their quarry.</i> %LINEBREAK% <sasmall><strong>Concordia Faceoff:</strong> While you defend, if the attack range is 1 and you are in the attacker’s %FRONTARC%, change 1 result to an %EVADE% result.</sasmall>"""
        "Spice Runner":
           display_name: """Spice Runner"""
           text: """<i class = flavor_text>Though its cargo space is limited compared to other light freighters, the small, swift HWK-290 is a favorite choice of smugglers who specialize in discreetly transporting precious goods.</i>"""
        "Storm Squadron Ace":
           display_name: """Storm Squadron Ace"""
           text: """<i class = flavor_text>The TIE Advanced x1 was produced in limited quantities, but Sienar engineers incorporated many of its best qualities into their next TIE model: the TIE Interceptor.</i>%LINEBREAK%<sasmall><strong>Advanced Targeting Computer:</strong> While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1&nbsp;%HIT% result to a %CRIT% result.</sasmall>"""
        "Tala Squadron Pilot":
           display_name: """Tala Squadron Pilot"""
           text: """<i class = flavor_text>The AF4 series is the latest in a long line of Headhunter designs. Cheap and relatively durable, it is a favorite among independent outfits like the Rebellion.</i>"""
        "Tansarii Point Veteran":
           display_name: """Tansarii Point Veteran"""
           text: """<i class = flavor_text>The defeat of Black Sun ace Talonbane Cobra by Car’das smugglers turned the tide of the Battle of Tansarii Point Station. Survivors of the clash are respected throughout the sector.</i> %LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Tempest Squadron Pilot":
           display_name: """Tempest Squadron Pilot"""
           text: """<i class = flavor_text>The TIE Advanced improved on the popular TIE/ln design by adding shielding, better weapons systems, curved solar panels, and a hyperdrive.</i>%LINEBREAK%<sasmall><strong>Advanced Targeting Computer:</strong> While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1&nbsp;%HIT% result to a %CRIT% result.</sasmall>"""
        "Trandoshan Slaver":
           display_name: """Trandoshan Slaver"""
           text: """<i class = flavor_text>The spacious triple-decker design of the YV-666 makes it popular among bounty hunters and slavers, who often retrofit an entire deck for prisoner transport.</i>"""
        "Warden Squadron Pilot":
           display_name: """Warden Squadron Pilot"""
           text: """<i class = flavor_text>Koensayr Manufacturing’s K-wing boasts an advanced SubLight Acceleration Motor and an unprecedented 18 hard points, granting it unrivaled speed and firepower.</i>"""
        "Wild Space Fringer":
           display_name: """Wild Space Fringer"""
           text: """<i class = flavor_text>Although stock YT-2400 light freighters have plenty of room for cargo, that space is often annexed to support modified weapon systems and oversized engines.</i>%LINEBREAK%<strong>Sensor Blindspot:</strong> While you perform a primary attack at attack range 0-1, do not apply the range 0-1 bonus and roll 1 fewer attack die."""
        "Zealous Recruit":
           display_name: """Zealous Recruit"""
           text: """<i class = flavor_text>Mandalorian Fang fighter pilots must master the Concordia Faceoff maneuver, leveraging their ships’ narrow attack profile to execute deadly head-on charges.</i> %LINEBREAK% <sasmall><strong>Concordia Faceoff:</strong> While you defend, if the attack range is 1 and you are in the attacker’s %FRONTARC%, change 1 result to an %EVADE% result.</sasmall>"""
        "4-LOM":
           display_name: """4-LOM"""
           text: """After you fully execute a red maneuver, gain 1 calculate token.%LINEBREAK%At the start of the End Phase, you may choose 1 ship at range 0-1. If you do, transfer 1 of your stress tokens to that ship."""
        "Nashtah Pup":
           display_name: """Nashtah Pup"""
           text: """You can deploy only via emergency deployment, and you have the name, initiative, pilot ability, and ship %CHARGE% of the friendly, destroyed <strong>Hound’s Tooth</strong>.%LINEBREAK%<strong>Escape Craft:</strong> <strong>Setup:</strong>Requires the <strong>Hound’s Tooth</strong>. You <b>must</b> begin the game docked with the <strong>Hound’s Tooth</strong>."""
        "AP-5":
           display_name: """AP-5"""
           text: """While you coordinate, if you chose a ship with exactly 1 stress token, it can perform actions.%LINEBREAK%<sasmall><strong>Comms Shuttle:</strong> While you are docked, your carrier ship gains %COORDINATE%. Before your carrier ship activates, it may perform a %COORDINATE% action.</sasmall> """
        "Airen Cracken":
           display_name: """Airen Cracken"""
           text: """After you perform an attack, you may choose 1 friendly ship at range 1. That ship may perform an action, treating it as red."""
        "Arvel Crynyd":
           display_name: """Arvel Crynyd"""
           text: """You can perform primary attacks at range 0.%LINEBREAK%If you would fail a %BOOST% action by overlapping another ship, resolve it as though you were partially executing a maneuver instead.%LINEBREAK%<sasmall><strong>Vectored Thrusters:</strong> After you perform an action, you may perform a red %BOOST% action.</sasmall>"""
        "Asajj Ventress":
           display_name: """Asajj Ventress"""
           text: """At the start of the Engagement Phase, you may choose 1 enemy ship in your %SINGLETURRETARC% at range 0-2 and spend 1&nbsp;%FORCE%. If you do, that ship gains 1 stress token unless it removes 1 green token."""
        "Autopilot Drone":
           display_name: """Autopilot Drone"""
           text: """<i class = flavor_text>Sometimes, manufacturer’s warnings are made to be broken.</i>%LINEBREAK%<strong>Rigged Energy Cells:</strong> During the System Phase, if you are not docked, lose 1&nbsp;%CHARGE%. At the end of the Activation Phase, if you have 0 %CHARGE%, you are destroyed. Before you are removed, each ship at range 0-1 suffers 1&nbsp;%CRIT% damage."""
        "Benthic Two-Tubes":
           display_name: """Benthic Two Tubes"""
           text: """After you perform a %FOCUS% action, you may transfer 1 of your focus tokens to a friendly ship at range 1-2."""
        "Biggs Darklighter":
           display_name: """Biggs Darklighter"""
           text: """While another friendly ship at range 0-1 defends, before the Neutralize Results step, if you are in the attack arc, you may suffer 1&nbsp;%HIT% or %CRIT% to cancel 1 matching result."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """While you defend or perform an attack, you may reroll 1 of your dice for each enemy ship at range 0-1."""
        "Bodhi Rook":
           display_name: """Bodhi Rook"""
           text: """Friendly ships can acquire locks onto objects at range 0-3 of any friendly ship."""
        "Bossk":
           display_name: """Bossk"""
           text: """While you perform a primary attack, after the Neutralize Results step, you may spend 1&nbsp;%CRIT% result to add 2&nbsp;%HIT% results."""
        "Braylen Stramm":
           display_name: """Braylen Stramm"""
           text: """While you defend or perform an attack, if you are stressed, you may reroll up to 2 of your dice."""
        "Captain Feroph":
           display_name: """Captain Feroph"""
           text: """While you defend, if the attacker does not have any green tokens, you may change 1 of your blank or %FOCUS% results to an %EVADE% result.%LINEBREAK%<sasmall><strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver.</sasmall>"""
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
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """At the start of the Activation Phase, you may choose 1 friendly ship at range 1-3. If you do, that ship removes 1 stress token."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """Before you would be dealt a faceup damage card, you may spend 1&nbsp;%CHARGE% to be dealt the card facedown instead."""
        "Colonel Jendon":
           display_name: """Colonel Jendon"""
           text: """At the start of the Activation Phase, you may spend 1&nbsp;%CHARGE%. If you do, while friendly ships acquire locks this round, they must acquire locks beyond range 3 instead of at range 0-3."""
        "Colonel Vessery":
           display_name: """Colonel Vessery"""
           text: """While you perform an attack against a locked ship, after you roll attack dice, you may acquire a lock on the defender.%LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Constable Zuvio":
           display_name: """Constable Zuvio"""
           text: """If you would drop a device, you may launch it using a [1&nbsp;%STRAIGHT%] template instead.%LINEBREAK%<strong>Spacetug Tractor Array:</strong> <strong>Action:</strong> Choose a ship in your %FRONTARC% at range 1. That ship gains 1 tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1."""
        "Corran Horn":
           display_name: """Corran Horn"""
           text: """At initiative 0, you may perform a bonus primary attack against an enemy ship in your %BULLSEYEARC%. If you do, at the start of the next Planning Phase, gain 1 disarm token.%LINEBREAK%<sasmall><strong>Experimental Scanners:</strong> You can acquire locks beyond range 3. You cannot acquire locks at range 1.</sasmall>"""
        "Countess Ryad":
           display_name: """Countess Ryad"""
           text: """While you would execute a %STRAIGHT% maneuver, you may increase the difficulty of the maneuver. If you do, execute it as a %KTURN% maneuver instead.%LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Dace Bonearm":
           display_name: """Dace Bonearm"""
           text: """After an enemy ship at range 0-3 receives at least 1 ion token, you may spend 3&nbsp;%CHARGE%. If you do, that ship gains 2 additional ion tokens."""
        "Dalan Oberos (StarViper)":
           display_name: """Dalan Oberos"""
           text: """After you fully execute a maneuver, you may gain 1 stress token to rotate your ship 90º.%LINEBREAK% <sasmall><strong>Microthrusters:</strong> While you perform a barrel roll, you <b>must</b> use the %BANKLEFT% or %BANKRIGHT% template instead of the %STRAIGHT% template.</sasmall>"""
        "Dalan Oberos":
           display_name: """Dalan Oberos"""
           text: """At the start of the Engagement Phase, you may choose 1 shielded ship in your %BULLSEYEARC% and spend 1&nbsp;%CHARGE%. If you do, that ship loses 1 shield and you recover 1 shield.%LINEBREAK%<sasmall><strong>Dead to Rights:</strong> While you perform an attack, if the defender is in your %BULLSEYEARC%, defense dice cannot be modified using green tokens.</sasmall>"""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """After you perform an action, you may spend 1&nbsp;%FORCE% to perform an action.%LINEBREAK%<sasmall><strong>Advanced Targeting Computer:</strong> While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1&nbsp;%HIT% result to a %CRIT% result.</sasmall>"""
        "Dash Rendar":
           display_name: """Dash Rendar"""
           text: """While you move, you ignore obstacles.%LINEBREAK%<strong>Sensor Blindspot:</strong> While you perform a primary attack at attack range 0-1, do not apply the range 0-1 bonus and roll 1 fewer attack die."""
        "Del Meeko":
           display_name: """Del Meeko"""
           text: """While a friendly ship at range 0-2 defends against a damaged attacker, the defender may reroll 1 defense die."""
        "Dengar":
           display_name: """Dengar"""
           text: """After you defend, if the attacker is in your %FRONTARC%, you may spend 1&nbsp;%CHARGE% to perform a bonus attack against the attacker."""
        "Drea Renthal":
           display_name: """Drea Renthal"""
           text: """While a friendly non-limited ship performs an attack, if the defender is in your firing arc, the attacker may reroll 1 attack die."""
        "Edrio Two-Tubes":
           display_name: """Edrio Two Tubes"""
           text: """Before you activate, if you are focused, you may perform an action."""
        "Emon Azzameen":
           display_name: """Emon Azzameen"""
           text: """If you would drop a device using a [1&nbsp;%STRAIGHT%] template, you may use the [3&nbsp;%TURNLEFT%], [3&nbsp;%STRAIGHT%], or [3&nbsp;%TURNRIGHT%] template instead."""
        "Esege Tuketu":
           display_name: """Esege Tuketu"""
           text: """While a friendly ship at range 0-2 defends or performs an attack, it may spend your focus tokens as if that ship has them."""
        "Evaan Verlaine":
           display_name: """Evaan Verlaine"""
           text: """At the start of the Engagement Phase, you may spend 1 focus token to choose a friendly ship at range 0-1. If you do, that ship rolls 1 additional defense die while defending until the end of the round."""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """While you defend or perform an attack, if you are stressed, you may spend 1&nbsp;%FORCE% to change up to 2 of your %FOCUS% results to %EVADE% or %HIT% results.%LINEBREAK%<sasmall><strong>Locked and Loaded:</strong> While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus primary %REARARC% attack.</sasmall>"""
        "Ezra Bridger (Sheathipede)":
           display_name: """Ezra Bridger"""
           text: """While you defend or perform an attack, if you are stressed, you may spend 1&nbsp;%FORCE% to change up to 2 of your %FOCUS% results to %EVADE% /%HIT% results. %LINEBREAK%<sasmall><strong>Comms Shuttle:</strong> While you are docked, your carrier ship gains %COORDINATE%. Before your carrier ship activates, it may perform a %COORDINATE% action.</sasmall>"""
        "Ezra Bridger (TIE Fighter)":
           display_name: """Ezra Bridger"""
           text: """While you defend or perform an attack, if you are stressed, you may spend 1&nbsp;%FORCE% to change up to 2 of your %FOCUS% results to %EVADE% or %HIT% results."""
        "Fenn Rau (Sheathipede)":
           display_name: """Fenn Rau"""
           text: """After an enemy ship in your firing arc engages, if you are not stressed, you may gain 1 stress token. If you do, that ship cannot spend tokens to modify dice while it performs an attack during this phase.%LINEBREAK%<sasmall><strong>Comms Shuttle:</strong> While you are docked, your carrier ship gains %COORDINATE%. Before your carrier ship activates, it may perform a %COORDINATE% action.</sasmall>"""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """While you defend or perform an attack, if the attack range is 1, you may roll 1 additional die.%LINEBREAK%<sasmall><strong>Concordia Faceoff:</strong> While you defend, if the attack range is 1 and you are in the attacker’s %FRONTARC%, change 1 result to an %EVADE% result.</sasmall>"""
        "Garven Dreis (X-Wing)":
           display_name: """Garven Dreis"""
           text: """After you spend a focus token, you may choose 1 friendly ship at range 1-3. That ship gains 1 focus token."""
        "Garven Dreis":
           display_name: """Garven Dreis"""
           text: """After you spend a focus token, you may choose 1 friendly ship at range 1-3. That ship gains 1 focus token."""
        "Gavin Darklighter":
           display_name: """Gavin Darklighter"""
           text: """While a friendly ship performs an attack, if the defender is in your %FRONTARC%, the attacker may change 1&nbsp;%HIT% result to a %CRIT% result.%LINEBREAK%<sasmall><strong>Experimental Scanners:</strong> You can acquire locks beyond range 3. You cannot acquire locks at range 1.</sasmall>"""
        "Genesis Red":
           display_name: """Genesis Red"""
           text: """After you acquire a lock, you must remove all of your focus and evade tokens. Then, gain the same number of focus and evade tokens that the locked ship has.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Gideon Hask":
           display_name: """Gideon Hask"""
           text: """While you perform an attack against a damaged defender, roll 1 additional attack die."""
        "Grand Inquisitor":
           display_name: """Grand Inquisitor"""
           text: """While you defend at attack range 1, you may spend 1&nbsp;%FORCE% to prevent the range 1 bonus. %LINEBREAK%While you perform an attack against a defender at attack range 2-3, you may spend 1&nbsp;%FORCE% to apply the range 1 bonus."""
        "Graz":
           display_name: """Graz"""
           text: """While you defend, if you are behind the attacker, roll 1 additional defense die.%LINEBREAK%While you perform an attack, if you are behind the defender, roll 1 additional attack die."""
        "Guri":
           display_name: """Guri"""
           text: """At the start of the Engagement Phase, if there is at least 1 enemy ship at range 0-1, you may gain 1 focus token.%LINEBREAK% <sasmall><strong>Microthrusters:</strong> While you perform a barrel roll, you <b>must</b> use the %BANKLEFT% or %BANKRIGHT% template instead of the %STRAIGHT% template.</sasmall>"""
        "Han Solo":
           display_name: """Han Solo"""
           text: """After you roll dice, if you are at range 0-1 of an obstacle, you may reroll all of your dice. This does not count as rerolling for the purpose of other effects."""
        "Han Solo (Scum)":
           display_name: """Han Solo"""
           text: """While you defend or perform a primary attack, if the attack is obstructed by an obstacle, you may roll 1 additional die."""
        "Heff Tobber":
           display_name: """Heff Tobber"""
           text: """After an enemy ship executes a maneuver, if it is at range 0, you may perform an action."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """After you reveal a red or blue maneuver, you may set your dial to another maneuver of the same difficulty.%LINEBREAK%<sasmall><strong>Locked and Loaded:</strong> While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus primary %REARARC% attack.</sasmall>"""
        "Hera Syndulla (VCX-100)":
           display_name: """Hera Syndulla"""
           text: """After you reveal a red or blue maneuver, you may set your dial to another maneuver of the same difficulty.%LINEBREAK%<strong>Tail Gun:</strong> While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship’s primary %FRONTARC% attack value."""
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
        "Inaldra":
           display_name: """Inaldra"""
           text: """While you defend or perform an attack, you may suffer 1&nbsp;%HIT% damage to reroll any number of your dice.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade. """
        "Jake Farrell":
           display_name: """Jake Farrell"""
           text: """After you perform a %BARRELROLL% or %BOOST% action, you may choose a friendly ship at range 0-1. That ship may perform a %FOCUS% action.%LINEBREAK%<sasmall><strong>Vectored Thrusters:</strong> After you perform an action, you may perform a red %BOOST% action.</sasmall>"""
        "Jan Ors":
           display_name: """Jan Ors"""
           text: """While a friendly ship in your firing arc performs a primary attack, if you are not stressed, you may gain 1 stress token. If you do, that ship may roll 1 additional attack die."""
        "Jek Porkins":
           display_name: """Jek Porkins"""
           text: """After you receive a stress token, you may roll 1 attack die to remove it. On a %HIT% result, suffer 1&nbsp;%HIT% damage."""
        "Joy Rekkoff":
           display_name: """Joy Rekkoff"""
           text: """While you perform an attack, you may spend 1&nbsp;%CHARGE% from an equipped %TORPEDO% upgrade. If you do, the defender rolls 1 fewer defense die.%LINEBREAK%<sasmall><strong>Concordia Faceoff:</strong> While you defend, if the attack range is 1 and you are in the attacker’s %FRONTARC%, change 1 result to an %EVADE% result.</sasmall>"""
        "Kaa'to Leeachos":
           display_name: """Kaa’to Leeachos"""
           text: """At the start of the Engagement Phase, you may choose 1 friendly ship at range 0-2. If you do, transfer 1 focus or evade token from that ship to yourself. """
        "Kad Solus":
           display_name: """Kad Solus"""
           text: """After you fully execute a red maneuver, gain 2 focus tokens.%LINEBREAK%<sasmall><strong>Concordia Faceoff:</strong> While you defend, if the attack range is 1 and you are in the attacker’s %FRONTARC%, change 1 result to an %EVADE% result.</sasmall>"""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """While a friendly ship in your firing arc defends, you may spend 1&nbsp;%FORCE%. If you do, the attacker rolls 1 fewer attack die.%LINEBREAK%<strong>Tail Gun:</strong> While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship’s primary %FRONTARC% attack value."""
        "Kath Scarlet":
           display_name: """Kath Scarlet"""
           text: """While you perform a primary attack, if there is at least 1 friendly non-limited ship at range 0 of the defender, roll 1 additional attack die."""
        "Kavil":
           display_name: """Kavil"""
           text: """While you perform a non-%FRONTARC% attack, roll 1 additional attack die."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """At the start of the Engagement Phase, you may choose 1 ship in both your %FRONTARC% and %SINGLETURRETARC% at range 0-1. If you do, it gains 1 tractor token."""
        "Koshka Frost":
           display_name: """Koshka Frost"""
           text: """While you defend or perform an attack, if the enemy ship is stressed, you may reroll 1 of your dice."""
        "Krassis Trelix":
           display_name: """Krassis Trelix"""
           text: """You can perform %FRONTARC% special attacks from your %REARARC%.%LINEBREAK%While you perform a special attack, you may reroll 1 attack die."""
        "Kullbee Sperado":
           display_name: """Kullbee Sperado"""
           text: """After you perform a %BARRELROLL% or %BOOST% action, you may flip your equipped %CONFIG% upgrade card."""
        "Kyle Katarn":
           display_name: """Kyle Katarn"""
           text: """At the start of the Engagement Phase, you may transfer 1 of your focus tokens to a friendly ship in your firing arc."""
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
        "Lieutenant Blount":
           display_name: """Lieutenant Blount"""
           text: """While you perform a primary attack, if there is at least 1 other friendly ship at range 0-1 of the defender, you may roll 1 additional attack die."""
        "Lieutenant Karsabi":
           display_name: """Lieutenant Karsabi"""
           text: """After you gain a disarm token, if you are not stressed, you may gain 1 stress token to remove 1 disarm token."""
        "Lieutenant Kestal":
           display_name: """Lieutenant Kestal"""
           text: """While you perform an attack, after the defender rolls defense dice, you may spend 1 focus token to cancel all of the defender’s blank/%FOCUS% results."""
        "Lieutenant Sai":
           display_name: """Lieutenant Sai"""
           text: """After you a perform a %COORDINATE% action, if the ship you chose performed an action on your action bar, you may perform that action."""
        "Lowhhrick":
           display_name: """Lowhhrick"""
           text: """After a friendly ship at range 0-1 becomes the defender, you may spend 1 reinforce token. If you do, that ship gains 1 evade token."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """After you become the defender (before dice are rolled), you may recover 1&nbsp;%FORCE%."""
        "Maarek Stele":
           display_name: """Maarek Stele"""
           text: """While you perform an attack, if the defender would be dealt a faceup damage card, instead draw 3 damage cards, choose 1, and discard the rest.%LINEBREAK%<sasmall><strong>Advanced Targeting Computer:</strong> While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1&nbsp;%HIT% result to a %CRIT% result.</sasmall> """
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """While a friendly ship at range 0-2 defends, the attacker cannot reroll more than 1 attack die."""
        "Major Rhymer":
           display_name: """Major Rhymer"""
           text: """While you perform a %TORPEDO% or %MISSILE% attack, you may increase or decrease the range requirement by 1, to a limit of 0-3. %LINEBREAK%<strong>Nimble Bomber:</strong> If you would drop a device using a %STRAIGHT% template, you may use a %BANKLEFT% or %BANKRIGHT% template of the same speed instead."""
        "Major Vermeil":
           display_name: """Major Vermeil"""
           text: """While you perform an attack, if the defender does not have any green tokens, you may change 1 of your blank or %FOCUS% results to a %HIT% result.%LINEBREAK% %LINEBREAK%<sasmall><strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver.</sasmall>"""
        "Major Vynder":
           display_name: """Major Vynder"""
           text: """While you defend, if you are disarmed, roll 1 additional defense die."""
        "Manaroo":
           display_name: """Manaroo"""
           text: """At the start of the Engagement Phase, you may choose a friendly ship at range 0-1. If you do, transfer all green tokens assigned to you to that ship."""
        "Miranda Doni":
           display_name: """Miranda Doni"""
           text: """While you perform a primary attack, you may either spend 1 shield to roll 1 additional attack die or, if you are not shielded, you may roll 1 fewer attack die to recover 1 shield."""
        "Moralo Eval":
           display_name: """Moralo Eval"""
           text: """If you would flee, you may spend 1&nbsp;%CHARGE%. If you do, place yourself in reserves instead. At the start of the next Planning Phase, place yourself within range 1 of the edge of the play area that you fled from."""
        "Norra Wexley (Y-Wing)":
           display_name: """Norra Wexley"""
           text: """While you defend, if there is an enemy ship at range 0-1, add 1&nbsp;%EVADE% result to your dice results."""
        "Norra Wexley":
           display_name: """Norra Wexley"""
           text: """While you defend, if there is an enemy ship at range 0-1, add 1&nbsp;%EVADE% result to your dice results.%LINEBREAK%<i>Errata (since rules reference 1.0.2): removed "you may"</i>"""
        "N'dru Suhlak":
           display_name: """N’dru Suhlak"""
           text: """While you perform a primary attack, if there are no other friendly ships at range 0-2, roll 1 additional attack die."""
        "Old Teroch":
           display_name: """Old Teroch"""
           text: """At the start of the Engagement Phase, you may choose 1 enemy ship at range 1. If you do and you are in its %FRONTARC%, it removes all of its green tokens.%LINEBREAK%<sasmall><strong>Concordia Faceoff:</strong> While you defend, if the attack range is 1 and you are in the attacker’s %FRONTARC%, change 1 result to an %EVADE% result.</sasmall>"""
        "Outer Rim Pioneer":
           display_name: """Outer Rim Pioneer"""
           text: """Friendly ships at range 0-1 can perform attacks at range 0 of obstacles.%LINEBREAK%<strong>Co-Pilot:</strong> While you are docked, your carrier ship has your pilot ability in addition to its own."""
        "Palob Godalhi":
           display_name: """Palob Godalhi"""
           text: """At the start of the Engagement Phase, you may choose 1 enemy ship in your firing arc at range 0-2. If you do, transfer 1 focus or evade token from that ship to yourself."""
        "Prince Xizor":
           display_name: """Prince Xizor"""
           text: """While you defend, after the Neutralize Results step, another friendly ship at range 0-1 and in the attack arc may suffer 1&nbsp;%HIT% or %CRIT% damage. If it does, cancel 1 matching result.%LINEBREAK%<sasmall><strong>Microthrusters:</strong> While you perform a barrel roll, you <b>must</b> use the %BANKLEFT% or %BANKRIGHT% template instead of the %STRAIGHT% template.</sasmall>"""
        "Quinn Jast":
           display_name: """Quinn Jast"""
           text: """At the start of the Engagement Phase, you may gain 1 disarm token to recover 1&nbsp;%CHARGE% on 1 of your equipped upgrades. %LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Rear Admiral Chiraneau":
           display_name: """Rear Admiral Chiraneau"""
           text: """While you perform an attack, if you are reinforced and the defender is in the %FULLFRONTARC% or %FULLREARARC% matching your reinforce token, you may change 1 of your %FOCUS% results to a %CRIT% result."""
        "Rexler Brath":
           display_name: """Rexler Brath"""
           text: """After you perform an attack that hits, if you are evading, expose 1 of the defender’s damage cards.%LINEBREAK%<strong>Full Throttle:</strong> After you fully execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Roark Garnet":
           display_name: """Roark Garnet"""
           text: """At the start of the Engagement Phase, you may choose 1 ship in your firing arc. If you do, it engages at initiative 7 instead of its standard initiative value this phase."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """Before you activate, you may perform a %BARRELROLL% or %BOOST% action.%LINEBREAK%<sasmall><strong>Locked and Loaded:</strong> While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus primary %REARARC% attack.</sasmall>"""
        "Sabine Wren (TIE Fighter)":
           display_name: """Sabine Wren"""
           text: """Before you activate, you may perform a %BARRELROLL% or %BOOST% action."""
        "Sabine Wren (Scum)":
           display_name: """Sabine Wren"""
           text: """While you defend, if the attacker is in your %SINGLETURRETARC% at range 0-2, you may add 1&nbsp;%FOCUS% result to your dice results."""
        "Sarco Plank":
           display_name: """Sarco Plank"""
           text: """While you defend, you may treat your agility value as equal to the speed of the maneuver you executed this round.%LINEBREAK%<strong>Spacetug Tractor Array:</strong> <strong>Action:</strong> Choose a ship in your %FRONTARC% at range 1. That ship gains 1 tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """While a damaged friendly ship at range 0-3 performs an attack, it may reroll 1 attack die."""
        "Serissu":
           display_name: """Serissu"""
           text: """While a friendly ship at range 0-1 defends, it may reroll 1 of its dice.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Seventh Sister":
           display_name: """Seventh Sister"""
           text: """While you perform a primary attack, before the Neutralize Results step, you may spend 2&nbsp;%FORCE% to cancel 1&nbsp;%EVADE% result."""
        "Seyn Marana":
           display_name: """Seyn Marana"""
           text: """While you perform an attack, you may spend 1&nbsp;%CRIT% result. If you do, deal 1 facedown damage card to the defender, then cancel your remaining results."""
        "Shara Bey":
           display_name: """Shara Bey"""
           text: """While you defend or perform a primary attack, you may spend 1 lock you have on the enemy ship to add 1&nbsp;%FOCUS% result to your dice results."""
        "Sol Sixxa":
           display_name: """Sol Sixxa"""
           text: """If you would drop a device using a [1&nbsp;%STRAIGHT%] template, you may drop it using any speed 1 template instead."""
        "Soontir Fel":
           display_name: """Soontir Fel"""
           text: """At the start of the Engagement Phase, if there is an enemy ship in your %BULLSEYEARC%, gain 1 focus token.%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "Sunny Bounder":
           display_name: """Sunny Bounder"""
           text: """While you defend or perform an attack, after you roll or reroll your dice, if you have the same result on each of your dice, you may add 1 matching result.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1 %CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Talonbane Cobra":
           display_name: """Talonbane Cobra"""
           text: """While you defend at attack range 3 or perform an attack at attack range 1, roll 1 additional die."""
        "Tel Trevura":
           display_name: """Tel Trevura"""
           text: """If you would be destroyed, you may spend 1&nbsp;%CHARGE%. If you do, discard all of your damage cards, suffer 5&nbsp;%HIT% damage, and place yourself in reserves instead. At the start of the next Planning Phase, place yourself within range 1 of your player edge."""
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
           text: """After you perform an attack, each enemy ship in your %BULLSEYEARC% suffers 1&nbsp;%HIT% damage unless it removes 1 green token.%LINEBREAK%<sasmall><strong>Dead to Rights:</strong> While you perform an attack, if the defender is in your %BULLSEYEARC%, defense dice cannot be modified using green tokens.</sasmall>"""
        "Torkil Mux":
           display_name: """Torkil Mux"""
           text: """At the start of the Engagement Phase, you may choose 1 ship in your firing arc. If you do, that ship engages at initiative 0 instead of its normal initiative value this round."""
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
           text: """While you execute a maneuver, you may execute a maneuver of the same bearing and difficulty of a speed 1 higher or lower instead.%LINEBREAK%<sasmall><strong>Advanced Targeting Computer:</strong> While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1&nbsp;%HIT% result to a %CRIT% result.</sasmall>"""
        "Viktor Hel":
           display_name: """Viktor Hel"""
           text: """After you defend, if you did not roll exactly 2 defense dice, the attacker gains 1 stress token."""
        "Wedge Antilles":
           display_name: """Wedge Antilles"""
           text: """While you perform an attack, the defender rolls 1 fewer defense die."""
        "Wullffwarro":
           display_name: """Wullffwarro"""
           text: """While you perform a primary attack, if you are damaged, you may roll 1 additional attack die."""
        "Zertik Strom":
           display_name: """Zertik Strom"""
           text: """During the End Phase, you may spend a lock you have on an enemy ship to expose 1 of that ship’s damage cards.%LINEBREAK%<sasmall><strong>Advanced Targeting Computer:</strong> While you perform a primary attack against a defender you have locked, roll 1 additional attack die and change 1&nbsp;%HIT% result to a %CRIT% result.</sasmall>"""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """While you perform a primary attack, you may roll 1 additional attack die. If you do, the defender rolls 1 additional defense die."""
        '"Chopper"':
           display_name: """“Chopper”"""
           text: """At the start of the Engagement Phase, each enemy ship at range 0 gains 2 jam tokens. %LINEBREAK%<strong>Tail Gun:</strong> While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship’s primary %FRONTARC% attack value."""
        '"Countdown"':
           display_name: """“Countdown”"""
           text: """While you defend, after the Neutralize Results step, if you are not stressed, you may suffer 1&nbsp;%HIT% damage and gain 1 stress token. If you do, cancel all dice results.%LINEBREAK%<sasmall><strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver.</sasmall>"""
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
           text: """You may choose not to use your <strong>Adaptive Ailerons</strong>. %LINEBREAK%You may use your <strong>Adaptive Ailerons</strong> even while stressed.%LINEBREAK%<sasmall><strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver.</sasmall>"""
        '"Dutch" Vander':
           display_name: """“Dutch” Vander"""
           text: """After you perform the %LOCK% action, you may choose 1 friendly ship at range 1-3. That ship may acquire a lock on the object you locked, ignoring range restrictions."""
        '"Echo"':
           display_name: """“Echo”"""
           text: """While you decloak, you <b>must</b> use the [2&nbsp;%BANKLEFT%] or [2&nbsp;%BANKRIGHT%] template instead of the [2&nbsp;%STRAIGHT%] template.%LINEBREAK%<strong>Stygium Array:</strong> After you decloak, you may perform an %EVADE% action. At the start of the End Phase, you may spend 1 evade token to gain 1 cloak token."""
        '"Howlrunner"':
           display_name: """“Howlrunner”"""
           text: """While a friendly ship at range 0-1 performs a primary attack, that ship may reroll 1 attack die."""
        '"Leebo"':
           display_name: """“Leebo”"""
           text: """After you defend or perform an attack, if you spent a calculate token, gain 1 calculate token.%LINEBREAK%<strong>Sensor Blindspot:</strong> While you perform a primary attack at attack range 0-1, do not apply the range 0-1 bonus and roll 1 fewer attack die."""
        '"Mauler" Mithel':
           display_name: """“Mauler” Mithel"""
           text: """While you perform an attack at attack range 1, roll 1 additional attack die."""
        '"Night Beast"':
           display_name: """“Night Beast”"""
           text: """After you fully execute a blue maneuver, you may perform a %FOCUS% action."""
        '"Pure Sabacc"':
           display_name: """“Pure Sabacc”"""
           text: """While you perform an attack, if you have 1 or fewer damage cards, you may roll 1 additional attack die.%LINEBREAK%<sasmall><strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver.</sasmall>"""
        '"Redline"':
           display_name: """“Redline”"""
           text: """You can maintain up to 2 locks. %LINEBREAK%After you perform an action, you may acquire a lock."""
        '"Scourge" Skutu':
           display_name: """“Scourge” Skutu"""
           text: """While you perform an attack against a defender in your %BULLSEYEARC%, roll 1 additional attack die."""
        '"Vizier"':
           display_name: """“Vizier”"""
           text: """After you fully execute a speed 1 maneuver using your <strong>Adaptive Ailerons</strong> ship ability, you may perform a %COORDINATE% action. If you do, skip your Perform Action step.%LINEBREAK%<sasmall><strong>Adaptive Ailerons:</strong> Before you reveal your dial, if you are not stressed, you <b>must</b> execute a white [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] maneuver.</sasmall>"""
        '"Wampa"':
           display_name: """“Wampa”"""
           text: """While you perform an attack, you may spend 1&nbsp;%CHARGE% to roll 1 additional attack die.%LINEBREAK%After defending, lose 1&nbsp;%CHARGE%."""
        '"Whisper"':
           display_name: """“Whisper”"""
           text: """After you perform an attack that hits, gain 1 evade token.%LINEBREAK%<strong>Stygium Array:</strong> After you decloak, you may perform an %EVADE% action. At the start of the End Phase, you may spend 1 evade token to gain 1 cloak token."""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """While you defend, %CRIT% results are neutralized before %HIT% results.%LINEBREAK%<sasmall><strong>Locked and Loaded:</strong> While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus primary %REARARC% attack.</sasmall>"""
        '"Zeb" Orrelios (Sheathipede)':
           display_name: """“Zeb” Orrelios"""
           text: """While you defend, %CRIT% results are neutralized before %HIT% results.%LINEBREAK%<sasmall><strong>Comms Shuttle:</strong> While you are docked, your carrier ship gains %COORDINATE%. Before your carrier ship activates, it may perform a %COORDINATE% action.</sasmall>"""
        '"Zeb" Orrelios (TIE Fighter)':
           display_name: """“Zeb” Orrelios"""
           text: """While you defend, %CRIT% results are neutralized before %HIT% results."""
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
           text: """ While you perform an attack, if the attack is obstructed by an obstacle, the defender rolls 2 fewer defense dice. %LINEBREAK% AUTOTHRUSTERS: After you perform an action. you may perform a red %BARRELROLL% or a red %BOOST% action."""
        "Lieutenant Dormitz":
           text: """ SETUP: After you are placed, other friendly ships can be placed anywhere in the play area at range 0-2 of you.  %LINEBREAK% LINKED BATTERY: While you perform a %CANNON% attack, roll 1 addtional die. """
        '"Backdraft"':
           text: """ While you perform a %SINGLETURRETARC% primary attack, if the defender is in your %REARARC% roll 1 additional dice. %LINEBREAK% HEAVY WEAPON TURRET: You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You must treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%.  """
        '"Quickdraw"':
           text: """ After you lose a shield, you may spend 1 %CHARGE%. If you do, you may perform a bonus primary attack. %LINEBREAK% HEAVY WEAPON TURRET: You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You must treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%. """
        "Zeta Squadron Survivor":
           text: """ <i class = flavor_text> ... </i>  %LINEBREAK% HEAVY WEAPON TURRET: You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You must treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%. """
        "Rey":
           text: """ While you defend or perform an attack, if the enemy ship in your %FRONTARC%, you may spend 1 %FORCE% change 1 of your blank results to an %EVADE% or %HIT% result. """
        "Han Solo (Resistance)":
           text: """ Setup: You can be placed anywhere in the play area beyond range 3 of enemy ships. """
        "Chewbacca (Resistance)":
           text: """ After a friendly ship at range 0-3 is destroyed, you may perform an action. Then you may perform a bonus attack. """
        "Captain Seevor":
           text: """ While you defend or perform an attack, before the attack dice are rolled, if you are not in the enemy ship's %BULLSEYEARC%, you may spend 1 %CHARGE%. If you do, the enemy ship gains one jam token. %LINEBREAK% NOTCHED STABILIZERS: While you move, you ignore asteroids. """
        "Mining Guild Surveyor":
           text: """  %LINEBREAK% NOTCHED STABILIZERS: While you move, you ignore asteroids. """
        "Mining Guild Sentry":
           text: """  %LINEBREAK% NOTCHED STABILIZERS: While you move, you ignore asteroids. """
        "Ahhav":
           text: """ While you defend or perform an attack, if the enemy ship is a larger size than you, roll 1 additional die. %LINEBREAK% NOTCHED STABILIZERS: While you move, you ignore asteroids. """
        "Finch Dallow":
           text: """ Before you drop a bomb, you may place it in the play area touching you instead. """
        "Major Stridan":
           text: """ While you coordinate or resolve the effect of one of your upgrades, you may treat friendly ships at range 2-3 as being at range 0 or range 1. %LINEBREAK% LINKED BATTERY: While you perform a %CANNON% attack, roll 1 addtional die. """
        "Kare Kun":
           text: """ While you boost, you may use the (1 %TURNLEFT%) or (1 %TURNRIGHT%) template instead. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Joph Seastriker":
           text: """ After you lose 1 shield, gain 1 evade token. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Lieutenant Bastian":
           text: """ After a ship at range 1-2 is dealt a damage card, you may acquire a lock on that ship. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Jaycris Tubbs":
           text: """ After you fully execute a blue maneuver, you may choose a friendly ship at range 0-1. If you do, that ship removes 1 stress token. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Black Squadron Ace (T-70)":
           text: """ <i class = flavor_text>During the Cold War, Poe Dameron's Black Squadron conducted daring covert operations against the First Order in defiance of treaties ratified by the New Republic Senate.</i> %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Red Squadron Expert":
           text: """ <i class = flavor_text>Although the bulk of the Resistance Starfighter Corps is made up of young volunteers from the New Republic, their ranks are bolstered by the veterans of the Galactic Civil War determined to finish what they started decades ago.</i> %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Blue Squadron Rookie":
           text: """ <i class = flavor_text>The Incom-FreiTek T-70 X-Wing was designed to improve upon the tactical flexibility of the venerable T-65. The starfighters's advanced droid socket is compatible with a wide array of astromechs, and it's modular weapons pods allow for ground crews to tailor its payload for specific missions.</i> %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Cobalt Squadron Bomber":
           text: """ <i class = flavor_text> ... </i> """
        "TN-3465":
           text: """ While another friendly ship performs an attack, if you are at range 0-1 of the defender, you may suffer 1 %CRIT% damage to change 1 of the attacker's results to a %CRIT% result. """
        '"Scorch"':
           text: """ While you perform a primary attack, if you are not stressed, you may gain 1 stress token to roll 1 additional attack die. """
        '"Longshot"':
           text: """ While you perform a primary attack at attack range 3, roll 1 additional attack die. """
        '"Static"':
           text: """ While you perform a primary attack, you may spend your lock on the defender and a focus token to change all of your results to %CRIT% results. """
        "Lieutenant Rivas":
           text: """ After a ship at range 1-2 gains a red or orange token, if you do not have that ship locked, you may acquire a lock on that ship. """
        "Commander Malarus":
           text: """ At the start of the Engagement Phase, you may spend 1 %CHARGE% and gain 1 stress token. If you do, until the end of the round, while you defend or perform an attack, you may change all of your %FOCUS% results to %EVADE% or %HIT% results. """
        "Omega Squadron Ace":
           text: """ <i class = flavor_text>Only pilots who have demonstrated both exceptional skill and unwavering dedication are rewarded with coveted positions in the First Order squadrons operating secretly against the New Republic during the Cold War.</i> """
        "Zeta Squadron Pilot":
           text: """ <i class = flavor_text>Unhampered by a cumbersome galactic bureaucracy, technologies originally researched by the Empire's TIE Advanced program are now mass-produced on the First Order starfighters. As a result, TIE/fo pilots enjoy higher survival rates than their predecessors in the Galactic Empire.</i> """
        "Epsilon Squadron Cadet":
           text: """ <i class = flavor_text>Trained from childhood aboard Resurgent-class Star Destroyers in deep space, many First Order TIE pilots have never even set foot on a planet's surface.</i> """
        "Greer Sonnel":
           text: """ After you fully execute a maneuver, you may rotate your %SINGLETURRETARC% %LINEBREAK% REFINED GYROSTABILIZERS: You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or %ROTATEARC% action. """
        "L'ulo L'ampar":
           text: """ While you defend or perform a primary attack, if you are stressed, you must roll 1 fewer defense die or 1 additional attack die. %LINEBREAK% REFINED GYROSTABILIZERS: You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or %ROTATEARC% action. """
        "Zari Bangel":
           text: """ You do not skip your Perform Action step after you partially execute a maneuver. %LINEBREAK% REFINED GYROSTABILIZERS: You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or %ROTATEARC% action. """
        "Tallissan Lintra":
           text: """ While an enemy ship in your %BULLSEYEARC% performs an attack, you may spend 1 %CHARGE%. If you do, the defender rolls 1 addtional die. %LINEBREAK% REFINED GYROSTABILIZERS: You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or %ROTATEARC% action. """
        "Darth Maul":
           text: """ After you perform an attack, you may spend 2 %FORCE% to perform a bonus primary attack against a different target. If your attack missed, you may perform that bonus primary attack against the same target instead. """
        '"Sinker"':
           text: """ While a friendly ship at range 1-2 in your %LEFTARC% or %RIGHTARC% performs a primary attack, if may reroll 1 attack die. """
        "Petty Officer Thanisson":
           text: """ During the Activation or Engagement Phase, after a ship in your %FRONTARC% at range 0-2 gains 1 stress token, you may spend 1 %CHARGE%. If you do, that ship gains 1 tractor token. %LINEBREAK% LINKED BATTERY: While you perform a %CANNON% attack, roll 1 addtional die. """
        "Captain Cardinal":
           text: """ While a friendly ship at range 1-2 with lower initiative than you defends or performs an attack, if you have at least 1 %CHARGE%, that ship may reroll 1 %FOCUS% result. After an enemy ship at range 0-3 is destroyed, lose 1 %CHARGE. %LINEBREAK% LINKED BATTERY: While you perform a %CANNON% attack, roll 1 addtional die. """
        '"Avenger"':
           text: """ After another friendly ship is destroyed, you may perform an action, even while stressed. %LINEBREAK% AUTOTHRUSTERS: After you perform an action. you may perform a red %BARRELROLL% or a red %BOOST% action. """
        '"Recoil"':
           text: """ While you are stressed, you may treat enemy ships in your %FRONTARC% at range 0-1 as being in your %BULLSEYEARC%. %LINEBREAK% AUTOTHRUSTERS: After you perform an action. you may perform a red %BARRELROLL% or a red %BOOST% action. """
        "Omega Squadron Expert":
           text: """ <i class = flavor_text> ... </i>  %LINEBREAK% HEAVY WEAPON TURRET: You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You must treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%. """
        "Sienar-Jaemus Enginner":
           text: """ <i class = flavor_text> ... </i> %LINEBREAK% AUTOTHRUSTERS: After you perform an action. you may perform a red %BARRELROLL% or a red %BOOST% action. """
        "First Order Test Pilot":
           text: """ <i class = flavor_text> ... </i> %LINEBREAK% AUTOTHRUSTERS: After you perform an action. you may perform a red %BARRELROLL% or a red %BOOST% action. """
        "Starkiller Base Pilot":
           text: """ <i class = flavor_text> ... </i> %LINEBREAK% LINKED BATTERY: While you perform a %CANNON% attack, roll 1 addtional die. """
        "Lieutenant Tavson":
           text: """ After you suffer damage, you may spend 1 %CHARGE% to perform an action. %LINEBREAK% LINKED BATTERY: While you perform a %CANNON% attack, roll 1 addtional die. """
        '"Null"':
           text: """ While you are not damaged, treat your initiative value as 7. """
        "Cat":
           text: """ While you perform a primary attack, if the defender is at range 0-1 of at least 1 friendly device, roll 1 additional die. """
        "Ben Teene":
           text: """ After you perform an attack, if the defender is in your %SINGLETURRETARC%, assign the Rattled condition to the defender. """
        "Vennie":
           text: """ While you defend, if the attacker is in a friendly ship's %SINGLETURRETARC%, you may add 1 %FOCUS% result to your roll. """
        "Edon Kappehl":
           text: """ After you fully execute a blue or white maneuver, if you have not dropped or launched a device this round, you may drop 1 device. """
        "Resistance Sympathizer":
           text: """ <i class = flavor_text> ... </i> """
        "Jessika Pava":
           text: """ While you defend or perform an attack, you may spend 1 %CHARGE% or 1 non-recurring %CHARGE% from your equipped %ASTROMECH% upgrade to reroll up to 1 of your dice for each other friendly ship at range 0-1. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Temmin Wexley":
           text: """ After you fully execute a speed 2-4 maneuver, you may perform a %BOOST% action. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Nien Numb":
           text: """ After you gain a stress token, if there is an enemy ship in your %FRONTARC% at range 0-1, you may remove that stress token. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Ello Asty":
           text: """ After you reveal a red Tallon Roll (%TROLLLEFT% or %TROLLRIGHT%), if you have 2 or fewer stress tokens, treat that maneuver as white. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Blue Squadron Recruit":
           text: """ <i class = flavor_text> ... </i> %LINEBREAK% REFINED GYROSTABILIZERS: You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or %ROTATEARC% action. """
        "Green Squadron Expert":
           text: """ <i class = flavor_text> ... </i> %LINEBREAK% REFINED GYROSTABILIZERS: You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or %ROTATEARC% action. """
        "Foreman Proach":
           text: """ Before you engage, you may choose 1 enemy ship in your %BULLSEYEARC% at range 1-2 and gain 1 disarm token. If you do, that ship gains 1 tractor token. %LINEBREAK% NOTCHED STABILIZERS: While you move, you ignore asteroids. """
        "Overseer Yushyn":
           text: """ Before a friendly ship at range 1 would gain a disarm token, if that ship is not stressed you may spend 1 %CHARGE%. If you do, that ship gains 1 stress token instead. %LINEBREAK% NOTCHED STABILIZERS: While you move, you ignore asteroids. """
            
            

    upgrade_translations =
        "0-0-0":
           display_name: """0-0-0"""
           text: """<i>Scum or Squad including Darth Vader</i>%LINEBREAK%At the start of the Engagement Phase, you may choose 1 enemy ship at range 0-1. If you do, you gain 1 calculate token unless that ship chooses to gain 1 stress token."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """<i>Scum only</i>%LINEBREAK%While you perform an attack, after rolling attack dice, you may name a type of green token. If you do, gain 2 ion tokens and, during this attack, the defender cannot spend tokens of the named type."""
        "Andrasta":
           display_name: """Andrasta"""
           text: """<i>Adds %RELOAD%</i>%LINEBREAK%<i>Scum only</i>%LINEBREAK%Add %DEVICE% slot."""
        "Dauntless":
           display_name: """Dauntless"""
           text: """<i>Empire only</i>%LINEBREAK%After you partially execute a maneuver, you may perform 1 white action, treating that action as red."""
        "Ghost":
           display_name: """Ghost"""
           text: """<i>Rebel only</i>%LINEBREAK%You can dock 1 attack shuttle or Sheathipede-class shuttle.%LINEBREAK%Your docked ships can deploy only from your rear guides."""
        "Havoc":
           display_name: """Havoc"""
           text: """<i>Scum only</i>%LINEBREAK%Remove %CREW% slot. Add %SENSOR% and %ASTROMECH% slots."""
        "Hound's Tooth":
           display_name: """Hound’s Tooth"""
           text: """<i>Scum only</i>%LINEBREAK%1 Z-95-AF4 headhunter can dock with you."""
        "IG-2000":
           display_name: """IG-2000"""
           text: """<i>Scum only</i>%LINEBREAK%You have the pilot ability of each other friendly ship with the <strong>IG-2000</strong> upgrade."""
        "Marauder":
           display_name: """Marauder"""
           text: """<i>Scum only</i>%LINEBREAK%While you perform a primary %REARARC% attack, you may reroll 1 attack die.%LINEBREAK%Add %GUNNER% slot."""
        "Millennium Falcon":
           display_name: """Millennium Falcon"""
           text: """<i>Adds %EVADE%</i>%LINEBREAK%<i>Rebel only</i>%LINEBREAK%While you defend, if you are evading, you may reroll 1 defense die."""
        "Mist Hunter":
           display_name: """Mist Hunter"""
           text: """<i>Adds %BARRELROLL%</i>%LINEBREAK%<i>Scum only</i>%LINEBREAK%Add %CANNON% slot."""
        "Moldy Crow":
           display_name: """Moldy Crow"""
           text: """<i>Rebel or Scum only</i>%LINEBREAK%Gain a %FRONTARC% primary weapon with a value of “3.”%LINEBREAK%During the End Phase, do not remove up to 2 focus tokens."""
        "Outrider":
           display_name: """Outrider"""
           text: """<i>Rebel only</i>%LINEBREAK% While you perform an attack that is obsructed by an obstacle, the defender rolls 1 fewer defense die. %LINEBREAK% After you fully execute a maneuver, if you moved through or overlapped an obstacle, you may remove 1 of your red or orange tokens. %LINEBREAK% <i>Errata (since rules reference 1.0.2): changed "obstructed attack" to "an attack that is obstructed by an obstacle"</i>"""
        "Phantom":
           display_name: """Phantom"""
           text: """<i>Rebel only</i>%LINEBREAK%You can dock at range 0-1."""
        "Punishing One":
           display_name: """Punishing One"""
           text: """<i>Scum only</i>%LINEBREAK%While you perform a primary attack, if the defender is in your %FRONTARC%, roll 1 additional attack die.%LINEBREAK%Remove %CREW% slot. Add %ASTROMECH% slot."""
        "ST-321":
           display_name: """ST-321"""
           text: """<i>Empire only</i>%LINEBREAK%After you perform a %COORDINATE% action, you may choose an enemy ship at range 0-3 of the ship you coordinated. If you do, acquire a lock on that enemy ship, ignoring range restrictions."""
        "Shadow Caster":
           display_name: """Shadow Caster"""
           text: """<i>Scum only</i>%LINEBREAK%After you perform an attack that hits, if the defender is in your %SINGLETURRETARC% and your %FRONTARC%, the defender gains 1 tractor token."""
        "Slave I":
           display_name: """Slave I"""
           text: """<i>Scum only</i>%LINEBREAK%After you reveal a turn (%TURNLEFT% or %TURNRIGHT%) or bank (%BANKLEFT% or %BANKRIGHT%) maneuver you may set your dial to the maneuver of the same speed and bearing in the other direction.%LINEBREAK%Add %TORPEDO% slot.%LINEBREAK%<i>Errata (since rules reference 1.0.2): removed "you may gain 1 stress token. If you do,"</i>"""
        "Virago":
           display_name: """Virago"""
           text: """<i>Adds 1 shield</i> %LINEBREAK% During the End Phase, you may spend 1&nbsp;%CHARGE% to perform a red %BOOST% action.%LINEBREAK%Add %MODIFICATION% slot."""
        "Ablative Plating":
           display_name: """Ablative Plating"""
           text: """<i>large ship or medium ship only</i>%LINEBREAK%Before you would suffer damage from an obstacle or from a friendly bomb detonating, you may spend 1&nbsp;%CHARGE%. If you do, prevent 1 damage."""
        "Admiral Sloane":
           display_name: """Admiral Sloane"""
           text: """<i>Empire only</i>%LINEBREAK%After another friendly ship at range 0-3 defends, if it is destroyed, the attacker gains 2 stress tokens.%LINEBREAK%While a friendly ship at range 0-3 performs an attack against a stressed ship, it may reroll 1 attack die."""
        "Adv. Proton Torpedoes":
           display_name: """Adv. Proton Torpedoes"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. Change 1&nbsp;%HIT% result to a %CRIT% result."""
        "Advanced SLAM":
           display_name: """Advanced SLAM"""
           text: """<i>Requires %SLAM%</i>%LINEBREAK%After you perform a %SLAM% action, if you fully executed the maneuver, you may perform a white action on your action bar, treating that action as red."""
        "Advanced Sensors":
           display_name: """Advanced Sensors"""
           text: """After you reveal your dial, you may perform 1 action.%LINEBREAK%If you do, you cannot perform another action during your activation."""
        "Afterburners":
           display_name: """Afterburners"""
           text: """<i>small ship only</i>%LINEBREAK%After you fully execute a speed 3-5 maneuver, you may spend 1&nbsp;%CHARGE% to perform a %BOOST% action, even while stressed."""
        "Agent Kallus":
           display_name: """Agent Kallus"""
           text: """<i>Empire only</i>%LINEBREAK%<strong>Setup:</strong> Assign the <strong>Hunted</strong> condition to 1 enemy ship.%LINEBREAK%While you perform an attack against the ship with the <strong>Hunted</strong> condition, you may change 1 of your %FOCUS% results to a %HIT% result."""
        "Agile Gunner":
           display_name: """Agile Gunner"""
           text: """During the End Phase, you may rotate your %SINGLETURRETARC% indicator."""
        "BT-1":
           display_name: """BT-1"""
           text: """<i>Scum or Squad including Darth Vader or Squad including Darth Vader only</i>%LINEBREAK%While you perform an attack, you may change 1&nbsp;%HIT% result to a %CRIT% result for each stress token the defender has."""
        "Barrage Rockets":
           display_name: """Barrage Rockets"""
           text: """<strong>Attack (%FOCUS%):</strong> Spend 1&nbsp;%CHARGE%. If the defender is in your %BULLSEYEARC%, you may spend 1 or more %CHARGE% to reroll that many attack dice."""
        "Baze Malbus":
           display_name: """Baze Malbus"""
           text: """<i>Rebel only</i>%LINEBREAK%While you perform a %FOCUS% action, you may treat it as red. If you do, gain 1 additional focus token for each enemy ship at range 0-1, to a maximum of 2."""
        "Bistan":
           display_name: """Bistan"""
           text: """<i>Rebel only</i>%LINEBREAK%After you perform a primary attack, if you are focused, you may perform a bonus %SINGLETURRETARC% attack against a ship you have not already attacked this round."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """<i>Scum only</i>%LINEBREAK%<strong>Setup:</strong> Start in reserve.%LINEBREAK%At the end of Setup, place yourself at range 0 of an obstacle and beyond range 3 of any enemy ship."""
        "Bomblet Generator":
           display_name: """Bomblet Generator"""
           text: """<strong>Bomb</strong>%LINEBREAK%During the System Phase, you may spend 1&nbsp;%CHARGE% to drop a Bomblet with the [1&nbsp;%STRAIGHT%] template.%LINEBREAK%At the start of the Activation Phase, you may spend 1 shield to recover 2 %CHARGE%."""
        "Bossk":
           display_name: """Bossk"""
           text: """<i>Scum only</i>%LINEBREAK%After you perform a primary attack that misses, if you are not stressed, you <b>must</b> receive 1 stress token to perform a bonus primary attack against the same target."""
        "C-3PO":
           display_name: """C-3PO"""
           text: """<i>Adds %CALCULATE%</i>%LINEBREAK%<i>Rebel only</i>%LINEBREAK%Before rolling defense dice, you may spend 1 calculate token to guess aloud a number 1 or higher. If you do and you roll exactly that many %EVADE% results, add 1&nbsp;%EVADE% result.%LINEBREAK%After you perform the %CALCULATE% action, gain 1 calculate token."""
        "Cad Bane":
           display_name: """Cad Bane"""
           text: """<i>Scum only</i>%LINEBREAK%After you drop or launch a device, you may perform a red %BOOST% action."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """<i>Rebel only</i>%LINEBREAK%During the System Phase, you may choose 1 enemy ship at range 1-2 and guess aloud a bearing and speed, then look at that ship’s dial. If the chosen ship’s bearing and speed match your guess, you may set your dial to another maneuver."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """<i>Rebel only</i>%LINEBREAK%At the start of the Engagement Phase, you may spend 2 %CHARGE% to repair 1 faceup damage card."""
        "Chewbacca (Scum)":
           display_name: """Chewbacca"""
           text: """<i>Scum only</i>%LINEBREAK%At the start of the End Phase, you may spend 1 focus token to repair 1 of your faceup damage cards."""
        "Ciena Ree":
           display_name: """Ciena Ree"""
           text: """<i>Requires %COORDINATE% or <r>%COORDINATE%</r></i>%LINEBREAK%<i>Empire only</i>%LINEBREAK%After you perform a %COORDINATE% action, if the ship you coordinated performed a %BARRELROLL% or %BOOST% action, it may gain 1 stress token to rotate 90°."""
        "Cikatro Vizago":
           display_name: """Cikatro Vizago"""
           text: """<i>Scum only</i>%LINEBREAK%During the End Phase, you may choose 2 %ILLICIT% upgrades equipped to friendly ships at range 0-1. If you do, you may exchange these upgrades.%LINEBREAK%<strong>End of Game:</strong> Return all %ILLICIT% upgrades to their original ships."""
        "Cloaking Device":
           display_name: """Cloaking Device"""
           text: """<i>small ship or medium ship only</i>%LINEBREAK%<strong>Action:</strong> Spend 1&nbsp;%CHARGE% to perform a %CLOAK% action.%LINEBREAK%At the start of the Planning Phase, roll 1 attack die. On a %FOCUS% result, decloak or discard your cloak token."""
        "Cluster Missiles":
           display_name: """Cluster Missiles"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. After this attack, you may perform this attack as a bonus attack against a different target at range 0-1 of the defender, ignoring the %LOCK% requirement."""
        "Collision Detector":
           display_name: """Collision Detector"""
           text: """While you boost or barrel roll, you can move through and overlap obstacles.%LINEBREAK%After you move through or overlap an obstacle, you may spend 1&nbsp;%CHARGE% to ignore its effects until the end of the round."""
        "Composure":
           display_name: """Composure"""
           text: """<i>Requires <r>%FOCUS%</r> or %FOCUS%</i>%LINEBREAK%After you fail an action, if you have no green tokens, you may perform a %FOCUS% action."""
        "Concussion Missiles":
           display_name: """Concussion Missiles"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. After this attack hits, each ship at range 0-1 of the defender exposes 1 of its damage cards."""
        "Conner Nets":
           display_name: """Conner Nets"""
           text: """<strong>Mine</strong>%LINEBREAK%During the System Phase, you may spend 1&nbsp;%CHARGE% to drop a Conner Net using the [1&nbsp;%STRAIGHT%] template.%LINEBREAK%This card’s %CHARGE% cannot be recovered."""
        "Contraband Cybernetics":
           display_name: """Contraband Cybernetics"""
           text: """Before you activate, you may spend 1&nbsp;%CHARGE%. If you do, until the end of the round, you can perform actions and execute red maneuvers, even while stressed."""
        "Crack Shot":
           display_name: """Crack Shot"""
           text: """While you perform a primary attack, if the defender is in your %BULLSEYEARC%, before the Neutralize Results step, you may spend 1&nbsp;%CHARGE% to cancel 1&nbsp;%EVADE% result."""
        "Daredevil":
           display_name: """Daredevil"""
           text: """<i>Requires %BOOST%</i>%LINEBREAK%<i>small ship only</i>%LINEBREAK%While you perform a white %BOOST% action, you may treat it as red to use the [1&nbsp;%TURNLEFT%] or [1&nbsp;%TURNRIGHT%] template instead."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """<i>Empire only</i>%LINEBREAK%At the start of the Engagement Phase, you may choose 1 ship in your firing arc at range 0-2 and spend 1&nbsp;%FORCE%. If you do, that ship suffers 1&nbsp;%HIT% damage unless it chooses to remove 1 green token."""
        "Deadman's Switch":
           display_name: """Deadman’s Switch"""
           text: """After you are destroyed, each other ship at range 0-1 suffers 1&nbsp;%HIT% damage."""
        "Death Troopers":
           display_name: """Death Troopers"""
           text: """<i>Empire only</i>%LINEBREAK%During the Activation Phase, enemy ships at range 0-1 cannot remove stress tokens."""
        "Debris Gambit":
           display_name: """Debris Gambit"""
           text: """<i>Adds <r>%EVADE%</r></i>%LINEBREAK%<i>small ship or medium ship only</i>%LINEBREAK%While you perform a red %EVADE% action, if there is an obstacle at range 0-1, treat the action as white instead."""
        "Dengar":
           display_name: """Dengar"""
           text: """<i>Scum only</i>%LINEBREAK%After you defend, if the attacker is in your firing arc, you may spend 1&nbsp;%CHARGE%. If you do, roll 1 attack die unless the attacker chooses to remove 1 green token. On a %HIT% or %CRIT% result, the attacker suffers 1&nbsp;%HIT% damage."""
        "Director Krennic":
           display_name: """Director Krennic"""
           text: """<i>Adds %LOCK%</i>%LINEBREAK%<i>Empire only</i>%LINEBREAK%<strong>Setup:</strong> Before placing forces, assign the <strong>Optimized Prototype</strong> condition to another friendly ship."""
        "Dorsal Turret":
           display_name: """Dorsal Turret"""
           text: """<i>Adds %ROTATEARC%</i>%LINEBREAK%<strong>Attack</strong>"""
        "Electronic Baffle":
           display_name: """Electronic Baffle"""
           text: """During the End Phase, you may suffer 1&nbsp;%HIT% damage to remove 1 red token."""
        "Elusive":
           display_name: """Elusive"""
           text: """<i>small ship or medium ship only</i>%LINEBREAK%While you defend, you may spend 1&nbsp;%CHARGE% to reroll 1 defense die.%LINEBREAK%After you fully execute a red maneuver, recover 1&nbsp;%CHARGE%."""
        "Emperor Palpatine":
           display_name: """Emperor Palpatine"""
           text: """<i>Empire only</i>%LINEBREAK%While another friendly ship defends or performs an attack, you may spend 1&nbsp;%FORCE% to modify 1 of its dice as though that ship had spent 1&nbsp;%FORCE%."""
        "Engine Upgrade":
           display_name: """Engine Upgrade"""
           text: """This upgrade has a variable cost, worth 3, 6, or 9 points depending on if the ship base is small, medium or large respectively.%LINEBREAK%<i>Adds %BOOST%</i>%LINEBREAK%<i>Requires <r>%BOOST%</r></i>%LINEBREAK%<i class = flavor_text>Large military forces such as the Galactic Empire have standardized engines, but individual pilots and small organizations often replace the power couplings, add thrusters, or use high-performance fuel to get extra push out of their engines.</i>"""
        "Expert Handling":
           display_name: """Expert Handling"""
           text: """This upgrade has a variable cost, worth 2, 4, or 6 points depending on if the ship base is small, medium or large respectively.%LINEBREAK%<i>Adds %BARRELROLL%</i>%LINEBREAK%<i>Requires <r>%BARRELROLL%</r></i>%LINEBREAK%<i class = flavor_text>While heavy fighters can often be coaxed into a barrel roll, seasoned pilots know how to do it without putting undue stress on their craft or leaving themselves open to attack.</i>"""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """<i>Rebel only</i>%LINEBREAK%After you perform a primary attack, you may spend 1&nbsp;%FORCE% to perform a bonus %SINGLETURRETARC% attack from a %SINGLETURRETARC% you have not attacked from this round. If you do and you are stressed, you may reroll 1 attack die."""
        "Fearless":
           display_name: """Fearless"""
           text: """<i>Scum only</i>%LINEBREAK%While you perform a %FRONTARC% primary attack, if the attack range is 1 and you are in the defender’s %FRONTARC%, you may change 1 of your results to a %HIT% result."""
        "Feedback Array":
           display_name: """Feedback Array"""
           text: """Before you engage, you may gain 1 ion token and 1 disarm token. If you do, each ship at range 0 suffers 1&nbsp;%HIT% damage."""
        "Fifth Brother":
           display_name: """Fifth Brother"""
           text: """<i>Empire only</i>%LINEBREAK%While you perform an attack, you may spend 1&nbsp;%FORCE% to change 1 of your %FOCUS% results to a %CRIT% result."""
        "Fire-Control System":
           display_name: """Fire-Control System"""
           text: """While you perform an attack, if you have a lock on the defender, you may reroll 1 attack die. If you do, you cannot spend your lock during this attack."""
        "Freelance Slicer":
           display_name: """Freelance Slicer"""
           text: """While you defend, before attack dice are rolled, you may spend a lock you have on the attacker to roll 1 attack die. If you do, the attacker gains 1 jam token. Then, on a %HIT% or %CRIT% result, gain 1 jam token."""
        'GNK "Gonk" Droid':
           display_name: """GNK “Gonk” Droid"""
           text: """<strong>Setup:</strong> Lose 1&nbsp;%CHARGE%.%LINEBREAK%<strong>Action:</strong> Recover 1&nbsp;%CHARGE%.%LINEBREAK%<strong>Action:</strong> Spend 1&nbsp;%CHARGE% to recover 1 shield."""
        "Grand Inquisitor":
           display_name: """Grand Inquisitor"""
           text: """<i>Empire only</i>%LINEBREAK%After an enemy ship at range 0-2 reveals its dial, you may spend 1&nbsp;%FORCE% to perform 1 white action on your action bar, treating that action as red."""
        "Grand Moff Tarkin":
           display_name: """Grand Moff Tarkin"""
           text: """<i>Requires %LOCK% or <r>%LOCK%</r></i>%LINEBREAK%<i>Empire only</i>%LINEBREAK%During the System Phase, you may spend 2 %CHARGE%. If you do, each friendly ship may acquire a lock on a ship that you have locked."""
        "Greedo":
           display_name: """Greedo"""
           text: """<i>Scum only</i>%LINEBREAK%While you perform an attack, you may spend 1&nbsp;%CHARGE% to change 1&nbsp;%HIT% result to a %CRIT% result.%LINEBREAK%While you defend, if your %CHARGE% is active, the attacker may change 1&nbsp;%HIT% result to a %CRIT% result."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """<i>Rebel only</i>%LINEBREAK%During the Engagement Phase, at initiative 7, you may perform a %SINGLETURRETARC% attack. You cannot attack from that %SINGLETURRETARC% again this round."""
        "Han Solo (Scum)":
           display_name: """Han Solo"""
           text: """<i>Scum only</i>%LINEBREAK%Before you engage, you may perform a red %FOCUS% action."""
        "Heavy Laser Cannon":
           display_name: """Heavy Laser Cannon"""
           text: """<strong>Attack:</strong> After the Modify Attack Dice step, change all %CRIT% results to %HIT% results."""
        "Heightened Perception":
           display_name: """Heightened Perception"""
           text: """At the start of the Engagement Phase, you may spend 1&nbsp;%FORCE%. If you do, engage at initiative 7 instead of your standard initiative value this phase."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """<i>Rebel only</i>%LINEBREAK%You can execute red maneuvers even while stressed. After you fully execute a red maneuver, if you have 3 or more stress tokens, remove 1 stress token and suffer 1&nbsp;%HIT% damage."""
        "Homing Missiles":
           display_name: """Homing Missiles"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. After you declare the defender, the defender may choose to suffer 1&nbsp;%HIT% damage. If it does, skip the Attack and Defense Dice steps and the attack is treated as hitting."""
        "Hotshot Gunner":
           display_name: """Hotshot Gunner"""
           text: """While you perform a %SINGLETURRETARC% attack, after the Modify Defense Dice step, the defender removes 1 focus or calculate token."""
        "Hull Upgrade":
           display_name: """Hull Upgrade"""
           text: """This upgrade has a variable cost, worth 2, 3, 5, or 7 points depending on if the ship agility is 0, 1, 2, or 3 respectively.%LINEBREAK%<i class = flavor_text>For those who cannot afford an enhanced shield generator, bolting additional plates onto the hull of a ship can serve as an adequate substitute.</i>"""
        "IG-88D":
           display_name: """IG-88D"""
           text: """<i>Adds %CALCULATE%</i>%LINEBREAK%<i>Scum only</i>%LINEBREAK%You have the pilot ability of each other friendly ship with the <strong>IG-2000</strong> upgrade.%LINEBREAK%After you perform a %CALCULATE% action, gain 1 calculate token."""
        "ISB Slicer":
           display_name: """ISB Slicer"""
           text: """<i>Empire only</i>%LINEBREAK%During the End Phase, enemy ships at range 1-2 cannot remove jam tokens."""
        "Inertial Dampeners":
           display_name: """Inertial Dampeners"""
           text: """Before you would execute a maneuver, you may spend 1 shield. If you do, execute a white [0&nbsp;%STOP%] instead of the maneuver you revealed, then gain 1 stress token."""
        "Informant":
           display_name: """Informant"""
           text: """<strong>Setup:</strong> After placing forces, choose 1 enemy ship and assign the <strong>Listening Device</strong> condition to it."""
        "Instinctive Aim":
           display_name: """Instinctive Aim"""
           text: """While you perform a special attack, you may spend 1&nbsp;%FORCE% to ignore the %FOCUS% or %LOCK% requirement."""
        "Intimidation":
           display_name: """Intimidation"""
           text: """While an enemy ship at range 0 defends, it rolls 1 fewer defense die."""
        "Ion Cannon":
           display_name: """Ion Cannon"""
           text: """<strong>Attack:</strong> If this attack hits, spend 1&nbsp;%HIT% or %CRIT% result to cause the defender to suffer 1&nbsp;%HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "Ion Cannon Turret":
           display_name: """Ion Cannon Turret"""
           text: """<i>Adds %ROTATEARC%</i>%LINEBREAK%<strong>Attack:</strong> If this attack hits, spend 1&nbsp;%HIT% or %CRIT% result to cause the defender to suffer 1&nbsp;%HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "Ion Missiles":
           display_name: """Ion Missiles"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. If this attack hits, spend 1&nbsp;%HIT% or %CRIT% result to cause the defender to suffer 1&nbsp;%HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "Ion Torpedoes":
           display_name: """Ion Torpedoes"""
           text: """<strong>Attack (%LOCK%):</strong> Spend 1&nbsp;%CHARGE%. If this attack hits, spend 1&nbsp;%HIT% or %CRIT% result to cause the defender to suffer 1&nbsp;%HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "Jabba the Hutt":
           display_name: """Jabba the Hutt"""
           text: """<i>Scum only</i>%LINEBREAK%During the End Phase, you may choose 1 friendly ship at range 0-2 and spend 1&nbsp;%CHARGE%. If you do, that ship recovers 1&nbsp;%CHARGE% on 1 of its equipped %ILLICIT% upgrades."""
        "Jamming Beam":
           display_name: """Jamming Beam"""
           text: """<strong>Attack:</strong> If this attack hits, all %HIT%/%CRIT% results inflict jam tokens instead of damage."""
        "Juke":
           display_name: """Juke"""
           text: """<i>small ship or medium ship only</i>%LINEBREAK%While you perform an attack, if you are evading, you may change 1 of the defender’s %EVADE% results to a %FOCUS% result."""
        "Jyn Erso":
           display_name: """Jyn Erso"""
           text: """<i>Rebel only</i>%LINEBREAK%If a friendly ship at range 0-3 would gain a focus token, it may gain 1 evade token instead."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """<i>Rebel only</i>%LINEBREAK%After a friendly ship at range 0-2 fully executes a white maneuver, you may spend 1&nbsp;%FORCE% to remove 1 stress token from that ship."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """<i>Scum only</i>%LINEBREAK%At the start of the End Phase, you may choose 1 enemy ship at range 0-2 in your firing arc. If you do, that ship does not remove its tractor tokens."""
        "L3-37":
           display_name: """L3-37"""
           text: """<i>Scum only</i>%LINEBREAK%<strong>Setup:</strong> Equip this side faceup.%LINEBREAK%While you defend, you may flip this card. If you do, the attacker must reroll all attack dice.%LINEBREAK%<strong>L3-37’s Programming</strong>If you are not shielded, decrease the difficulty of your bank (%BANKLEFT% and %BANKRIGHT%) maneuvers."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """<i>Rebel only</i>%LINEBREAK%<strong>Action:</strong> Roll 2 defense dice. For each %FOCUS% result, gain 1 focus token. For each %EVADE% result, gain 1 evade token. If both results are blank, the opposing player chooses focus or evade. You gain 1 token of that type."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian"""
           text: """<i>Scum only</i>%LINEBREAK%After you roll dice, you may spend 1 green token to reroll up to 2 of your results."""
        "Lando's Millennium Falcon":
           display_name: """Lando’s Millennium Falcon"""
           text: """<i>Scum only</i>%LINEBREAK%1 escape shuttle may dock with you.%LINEBREAK%While you have an escape shuttle docked, you may spend its shields as if they were on your ship card.%LINEBREAK%While you perform a primary attack against a stressed ship, roll 1 additional attack die."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """<i>Scum only</i>%LINEBREAK%While you defend, if the attacker is stressed, you may remove 1 stress from the attacker to change 1 of your blank/%FOCUS% results to an %EVADE% result."""
        "Leia Organa":
           display_name: """Leia Organa"""
           text: """<i>Rebel only</i>%LINEBREAK%At the start of the Activation Phase, you may spend 3 %CHARGE%. During this phase, each friendly ship reduces the difficulty of its red maneuvers."""
        "Lone Wolf":
           display_name: """Lone Wolf"""
           text: """While you defend or perform an attack, if there are no other friendly ships at range 0-2, you may spend 1&nbsp;%CHARGE% to reroll 1 of your dice."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """<i>Rebel only</i>%LINEBREAK%At the start of the Engagement Phase, you may spend 1&nbsp;%FORCE% to rotate your %SINGLETURRETARC% indicator."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """<i>Rebel only</i>%LINEBREAK%After you defend, if the attack hit, you may acquire a lock on the attacker."""
        "Marksmanship":
           display_name: """Marksmanship"""
           text: """While you perform an attack, if the defender is in your %BULLSEYEARC%, you may change 1&nbsp;%HIT% result to a %CRIT% result."""
        "Maul":
           display_name: """Maul"""
           text: """<i>Scum or Squad including Ezra Bridger only</i>%LINEBREAK%After you suffer damage, you may gain 1 stress token to recover 1&nbsp;%FORCE%.%LINEBREAK%You can equip “Dark Side” upgrades."""
        "Minister Tua":
           display_name: """Minister Tua"""
           text: """<i>Empire only</i>%LINEBREAK%At the start of the Engagement Phase, if you are damaged, you may perform a red %REINFORCE% action."""
        "Moff Jerjerrod":
           display_name: """Moff Jerjerrod"""
           text: """<i>Requires %COORDINATE% or <r>%COORDINATE%</r></i>%LINEBREAK%<i>Empire only</i>%LINEBREAK%During the System Phase, you may spend 2 %CHARGE%. If you do, choose the [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], or [1&nbsp;%BANKRIGHT%] template. Each friendly ship may perform a red %BOOST% action using that template."""
        "Munitions Failsafe":
           display_name: """Munitions Failsafe"""
           text: """While you perform a %TORPEDO% or %MISSILE% attack, after rolling attack dice, you may cancel all dice results to recover 1&nbsp;%CHARGE% you spent as a cost for the attack."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """<i>Rebel only</i>%LINEBREAK%Decrease the difficulty of your bank maneuvers (%BANKLEFT% and %BANKRIGHT%)."""
        "Novice Technician":
           display_name: """Novice Technician"""
           text: """At the end of the round, you may roll 1 attack die to repair 1 faceup damage card. Then on a %HIT% result, expose 1 damage card."""
        "Os-1 Arsenal Loadout":
           display_name: """Os-1 Arsenal Loadout"""
           text: """While you have exactly 1 disarm token, you can still perform %TORPEDO% and %MISSILE% attacks against targets you have locked. If you do, you cannot spend your lock during the attack.%LINEBREAK%Add %TORPEDO% and %MISSILE% slots."""
        "Outmaneuver":
           display_name: """Outmaneuver"""
           text: """While you perform a %FRONTARC% attack, if you are not in the defender’s firing arc, the defender rolls 1 fewer defense die."""
        "Perceptive Copilot":
           display_name: """Perceptive Copilot"""
           text: """After you perform a %FOCUS% action, gain 1 focus token."""
        "Pivot Wing":
           display_name: """Pivot Wing"""
           text: """<strong>Closed: </strong>While you defend, roll 1 fewer defense die.%LINEBREAK%After you execute a [0&nbsp;%STOP%] maneuver, you may rotate your ship 90º or 180º.%LINEBREAK%Before you activate, you may flip this card.%LINEBREAK%<strong>Open:</Strong> Before you activate, you may flip this card."""
        "Predator":
           display_name: """Predator"""
           text: """While you perform a primary attack, if the defender is in your %BULLSEYEARC%, you may reroll 1 attack die."""
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
           text: """<i>Scum only</i>%LINEBREAK%While you move and perform attacks, you ignore obstacles that you are locking."""
        "R2 Astromech":
           display_name: """R2 Astromech"""
           text: """After you reveal your dial, you may spend 1&nbsp;%CHARGE% and gain 1 disarm token to recover 1 shield."""
        "R2-D2 (Crew)":
           display_name: """R2-D2"""
           text: """<i>Rebel only</i>%LINEBREAK%During the End Phase, if you are damaged and not shielded, you may roll 1 attack die to recover 1 shield. On a %HIT% result, expose 1 of your damage cards."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """<i>Rebel only</i>%LINEBREAK%After you reveal your dial, you may spend 1&nbsp;%CHARGE% and gain 1 disarm token to recover 1 shield."""
        "R3 Astromech":
           display_name: """R3 Astromech"""
           text: """You can maintain up to 2 locks. Each lock must be on a different object.%LINEBREAK%After you perform a %LOCK% action, you may acquire a lock."""
        "R4 Astromech":
           display_name: """R4 Astromech"""
           text: """<i>small ship only</i>%LINEBREAK%Decrease the difficulty of your speed 1-2 basic maneuvers (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%)."""
        "R5 Astromech":
           display_name: """R5 Astromech"""
           text: """<strong>Action:</strong> Spend 1&nbsp;%CHARGE% to repair 1 facedown damage card.%LINEBREAK%<strong>Action:</strong> Repair 1 faceup <strong>Ship</strong> damage card."""
        "R5-D8":
           display_name: """R5-D8"""
           text: """<i>Rebel only</i>%LINEBREAK%<strong>Action:</strong> Spend 1&nbsp;%CHARGE% to repair 1 facedown damage card.%LINEBREAK%<strong>Action:</strong> Repair 1 faceup <strong>Ship</strong> damage card."""
        "R5-P8":
           display_name: """R5-P8"""
           text: """<i>Scum only</i>%LINEBREAK%While you perform an attack against a defender in your %FRONTARC%, you may spend 1&nbsp;%CHARGE% to reroll 1 attack die. If the rerolled result is a %CRIT% result, suffer 1&nbsp;%CRIT% damage."""
        "R5-TK":
           display_name: """R5-TK"""
           text: """<i>Scum only</i>%LINEBREAK%You can perform attacks against friendly ships."""
        "Rigged Cargo Chute":
           display_name: """Rigged Cargo Chute"""
           text: """<i>large ship or medium ship only</i>%LINEBREAK%<strong>Action:</strong> Spend 1&nbsp;%CHARGE%. Drop 1 loose cargo using the [1&nbsp;%STRAIGHT%] template."""
        "Ruthless":
           display_name: """Ruthless"""
           text: """<i>Empire only</i>%LINEBREAK%While you perform an attack, you may choose another friendly ship at range 0-1 of the defender. If you do, that ship suffers 1&nbsp;%HIT% damage and you may change 1 of your die results to a %HIT% result."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """<i>Rebel only</i>%LINEBREAK%<strong>Setup:</strong> Place 1 ion, 1 jam, 1 stress, and 1 tractor token on this card. %LINEBREAK%After a ship suffers the effect of a friendly bomb, you may remove 1 ion, jam, stress, or tractor token from this card. If you do, that ship gains a matching token."""
        "Saturation Salvo":
           display_name: """Saturation Salvo"""
           text: """<i>Requires %RELOAD% or <r>%RELOAD%</r></i>%LINEBREAK%While you perform a %TORPEDO% or %MISSILE% attack, you may spend 1&nbsp;%CHARGE% from that upgrade. If you do, choose two defense dice. The defender must reroll those dice."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """<i>Rebel only</i>%LINEBREAK%While you perform an attack, you may suffer 1&nbsp;%HIT% damage to change all of your %FOCUS% results to %CRIT% results."""
        "Seasoned Navigator":
           display_name: """Seasoned Navigator"""
           text: """After you reveal your dial, you may set your dial to another non-red maneuver of the same speed. While you execute that maneuver, increase its difficulty."""
        "Seismic Charges":
           display_name: """Seismic Charges"""
           text: """<strong>Bomb</strong>%LINEBREAK%During the System Phase, you may spend 1&nbsp;%CHARGE% to drop a Seismic Charge with the [1&nbsp;%STRAIGHT%] template."""
        "Selfless":
           display_name: """Selfless"""
           text: """<i>Rebel only</i>%LINEBREAK%While another friendly ship at range 0-1 defends, before the Neutralize Results step, if you are in the attack arc, you may suffer 1&nbsp;%CRIT% damage to cancel 1&nbsp;%CRIT% result."""
        "Sense":
           display_name: """Sense"""
           text: """During the System Phase, you may choose 1 ship at range 0-1 and look at its dial. If you spend 1&nbsp;%FORCE%, you may choose a ship at range 0-3 instead."""
        "Servomotor S-Foils":
           display_name: """Servomotor S-foils"""
           text: """<strong>Closed: </strong><i>Adds %BOOST% ,  %FOCUS%&nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked"></i>&nbsp;<r>%BOOST%</r></i>%LINEBREAK% While you perform a primary attack, roll 1 fewer attack die.%LINEBREAK%Before you activate, you may flip this card.%LINEBREAK%<strong>Open:</strong> Before you activate, you may flip this card."""
        "Seventh Sister":
           display_name: """Seventh Sister"""
           text: """<i>Empire only</i>%LINEBREAK%If an enemy ship at range 0-1 would gain a stress token, you may spend 1&nbsp;%FORCE% to have it gain 1 jam or tractor token instead."""
        "Shield Upgrade":
           display_name: """Shield Upgrade"""
           text: """This upgrade has a variable cost, worth 3, 4, 6, or 8 points depending on if the ship agility is 0, 1, 2, or 3 respectively.%LINEBREAK%<i class = flavor_text>Deflector shields are a substantial line of defense on most starships beyond the lightest fighters. While enhancing a ship’s shield capacity can be costly, all but the most confident or reckless pilots see the value in this sort of investment.</i>"""
        "Skilled Bombardier":
           display_name: """Skilled Bombardier"""
           text: """If you would drop or launch a device, you may use a template of the same bearing with a speed 1 higher or lower."""
        "Squad Leader":
           display_name: """Squad Leader"""
           text: """<i>Adds <r>%COORDINATE%</r></i>%LINEBREAK%While you coordinate, the ship you choose can perform an action only if that action is also on your action bar."""
        "Static Discharge Vanes":
           display_name: """Static Discharge Vanes"""
           text: """Before you would gain 1 ion or jam token, if you are not stressed, you may choose another ship at range 0-1 and gain 1 stress token. If you do, the chosen ship gains that ion or jam token instead. %LINEBREAK%<i>Errata (since rules reference 1.0.2): Changed from "If you would gain an ion or jam token, if you are not stressed, you may choose a ship at range 0-1. If you do, gain 1 stress token and transfer 1 ion or jam token to that ship."</i>"""
        "Stealth Device":
           display_name: """Stealth Device"""
           text: """This upgrade has a variable cost, worth 3, 4, 6, or 8 points depending on if the ship agility is 0, 1, 2, or 3 respectively.%LINEBREAK%While you defend, if your %CHARGE% is active, roll 1 additional defense die.%LINEBREAK%After you suffer damage, lose 1&nbsp;%CHARGE%."""
        "Supernatural Reflexes":
           display_name: """Supernatural Reflexes"""
           text: """<i>small ship only</i>%LINEBREAK%Before you activate, you may spend 1&nbsp;%FORCE% to perform a %BARRELROLL% or %BOOST% action. Then, if you performed an action you do not have on your action bar, suffer 1&nbsp;%HIT% damage."""
        "Swarm Tactics":
           display_name: """Swarm Tactics"""
           text: """At the start of the Engagement Phase, you may choose 1 friendly ship at range 1. If you do, that ship treats its initiative as equal to yours until the end of the round."""
        "Tactical Officer":
           display_name: """Tactical Officer"""
           text: """<i>Adds %COORDINATE%</i>%LINEBREAK%<i>Requires <r>%COORDINATE%</r></i>%LINEBREAK%<i class = flavor_text>In the chaos of a starfighter battle, a single order can mean the difference between a victory and a massacre.</i>"""
        "Tactical Scrambler":
           display_name: """Tactical Scrambler"""
           text: """<i>large ship or medium ship only</i>%LINEBREAK%While you obstruct an enemy ship’s attack, the defender rolls 1 additional defense die."""
        "Tobias Beckett":
           display_name: """Tobias Beckett"""
           text: """<i>Scum only</i>%LINEBREAK%<strong>Setup:</strong> After placing forces, you may choose 1 obstacle in the play area. If you do, place it anywhere in the play area beyond range 2 of any board edge or ship and beyond range 1 of other obstacles."""
        "Tractor Beam":
           display_name: """Tractor Beam"""
           text: """<strong>Attack:</strong> If this attack hits, all %HIT%/%CRIT% results inflict tractor tokens instead of damage."""
        "Trajectory Simulator":
           display_name: """Trajectory Simulator"""
           text: """During the System Phase, if you would drop or launch a bomb, you may launch it using the [5&nbsp;%STRAIGHT%] template instead."""
        "Trick Shot":
           display_name: """Trick Shot"""
           text: """While you perform an attack that is obstructed by an obstacle, roll 1 additional attack die."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """<i>Scum only</i>%LINEBREAK%After you partially execute a maneuver, you may suffer 1&nbsp;%HIT% damage to perform 1 white action."""
        "Veteran Tail Gunner":
           display_name: """Veteran Tail Gunner"""
           text: """After you perform a primary %FRONTARC% attack, you may perform a bonus primary %REARARC% attack."""
        "Veteran Turret Gunner":
           display_name: """Veteran Turret Gunner"""
           text: """<i>Requires <r>%ROTATEARC%</r> or %ROTATEARC%</i>%LINEBREAK%After you perform a primary attack, you may perform a bonus %SINGLETURRETARC% attack using a %SINGLETURRETARC% you did not already attack from this round."""
        "Xg-1 Assault Configuration":
           display_name: """Xg-1 Assault Configuration"""
           text: """While you have exactly 1 disarm token, you can still perform %CANNON% attacks. While you perform a %CANNON% attack while disarmed, roll a maximum of 3 attack dice.%LINEBREAK%Add %CANNON% slot."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """<i>Scum only</i>%LINEBREAK%While you perform an attack, if you are not stressed, you may choose 1 defense die and gain 1 stress token. If you do, the defender must reroll that die."""
        '"Chopper" (Crew)':
           display_name: """“Chopper”"""
           text: """<i>Rebel only</i>%LINEBREAK%During the Perform Action step, you may perform 1 action, even while stressed. After you perform an action while stressed, suffer 1&nbsp;%HIT% damage unless you expose 1 of your damage cards."""
        '"Chopper" (Astromech)':
           display_name: """“Chopper”"""
           text: """<i>Rebel only</i>%LINEBREAK%<strong>Action:</strong> Spend 1 non-recurring %CHARGE% from another equipped upgrade to recover 1 shield. %LINEBREAK%<strong>Action:</strong> Spend 2 shields to recover 1 non-recurring %CHARGE% on an equipped upgrade."""
        '"Genius"':
           display_name: """“Genius”"""
           text: """<i>Scum only</i>%LINEBREAK%After you fully execute a maneuver, if you have not dropped or launched a device this round, you may drop 1 bomb."""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """<i>Rebel only</i>%LINEBREAK%You can perform primary attacks at range 0. Enemy ships at range 0 can perform primary attacks against you."""

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
           text: """ While you defend or perform an attack, you may spend 1 of your results to acquire a lock on the enemy ship. """
        "Finn":
           text: """ While you defend or perform a primary attack, if the enemy ship is in your %FRONTARC%, you may add 1 blank result to your roll (this die roll can be rerolled or otherwise modified)  """
        "Integrated S-Foils":
           text: """<strong>Closed: </strong><i>Adds %BARRELROLL%, %FOCUS% &nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked"></i>&nbsp;<r>%BARRELROLL%</r></i>%LINEBREAK% While you perform a primary attack, if the defender is not in your %BULLSEYEARC%, roll 1 fewer attack die. %LINEBREAK% Before you activate, you may flip this card. %LINEBREAK% <b>Open:</b> Before you activate, you may flip this card."""
        "Targeting Synchronizer":
           text: """<i>Requires: %LOCK%</i> %LINEBREAK% While a friendly ship at range 1-2 performs an attack against a target you have locked, that ship ignores the %LOCK% attack requirement. """
        "Primed Thrusters":
           text: """<i>Requires: Small Base</i> %LINEBREAK% While you have 2 or fewer stress tokens, you can perform %BARRELROLL% and %BOOST% actions even while stressed. """
        "Kylo Ren":
           text: """ Action: Choose 1 enemy ship at range 1-3. If you do, spend 1 %FORCE% to assign the I'll Show You the Dark Side condition to that ship. """
        "General Hux":
           text: """ While you perform a white %COORDINATE% action you may treat it as red. If you do, you may coordinate up to 2 additional ships of the same ship type, and each ship you coordinate must perform the same action, treating that action as red. """
        "Fanatical":
           text: """ While you perform a primary attack, if you are not shielded, you may change 1 %FOCUS% result to a %HIT% result. """
        "Special Forces Gunner":
           text: """ After you perform a primary %FRONTARC% attack, if your %SINGLETURRETARC% is in your %FRONTARC%, you may roll 1 additional attack die. After you perform a primary %FRONTARC% attack, if your %SINGLETURRETARC% is in your %REARARC%, you may perform a bonus primary %SINGLETURRETARC% attack. """
        "Captain Phasma":
           text: """ At the end of the Engagement Phase, each enemy ship at range 0-1 that is not stressed gains 1 stress token. """
        "Supreme Leader Snoke":
           text: """ During the System Phase, you may choose any number of enemy ships beyond range 1. If you do, spend that many %FORCE% to flip each chosen ship's dial faceup. """
        "Hyperspace Tracking Data":
           text: """ Setup: Before placing forces, you may choose a number between 0 and 6. Treat your initiative as the chosen value during setup. %LINEBREAK% After Setup, Assign 1 focus of evade token to each friendly ship at range 0-2. """
        "Advanced Optics":
           text: """ While you perform an attack, you may spend 1 focus to change 1 of your blank results to a %HIT% result. """
        "Rey":
           text: """ While you defend or perform an attack, if the enemy ship is in your %SINGLETURRETARC%, you may spend 1 %FORCE% to change 1 of your blank results to a %EVADE% or %HIT% result. """
        "Chewbacca (Resistance)":
           text: """ Setup: Lose 1 %CHARGE%. %LINEBREAK% After a friendly ship at range 0-3 is dealt 1 damage card, recover 1 %CHARGE%. %LINEBREAK% While you perform an attack, you may spend 2 %CHARGE% to change 1 %FOCUS% result to a %CRIT% result."""
        "Paige Tico":
           text: """ After you perform a primary attack, you may drop 1 bomb or rotate your %SINGLETURRETARC%. After you are destroyed, you may drop 1 bomb. """
        "R2-HA":
           text: """ While you defend, you may spend your lock on the attacker to reroll any number of your defense dice. """
        "C-3PO (Resistance)":
           text: """ <i>Adds: %CALCULATE% <r>%COORDINATE%</r></i> %LINEBREAK% While you coordinate, you can choose friendly ships beyond range 2 if they have %CALCULATE% on their action bar. %LINEBREAK% After you perform the %CALCULATE% or %COORDINATE% action, gain 1 calculate token. """
        "Han Solo (Resistance)":
           text: """ <i>Adds: <r>%EVADE%</r></i> %LINEBREAK% After you perform an %EVADE% action, gain additional evade tokens equal to the number of enemy ships at range 0-1. """
        "Rey's Millenium Falcon":
           text: """ If you have 2 or fewer stress tokens, ou can execute red Segnor's Loop (%SLOOPLEFT% or %SLOOPRIGHT%) maneuvers and perform %BOOST% and %ROTATEARC% actions even while stressed. """
        "Petty Officer Thanisson":
           text: """ During the Activation or Engagement Phase, after an enemy ship in your %FRONTARC% at range 0-1 gains a red or orange token, if you are not stressed, you may gain 1 stress token. if you do, that ship gains an additional token of the type that it gained. """
        "BB-8":
           text: """ Before you execute a blue maneuver, you may spend 1 %CHARGE% to perform a %BARRELROLL% or %BOOST% action. """
        "BB Astromech":
           text: """ Before you execute a blue maneuver, you may spend 1 %CHARGE% to perform a %BARRELROLL% action. """
        "M9-G8":
           text: """ While a ship you are locking performs an attack, you may choose 1 attack die. If you do, the attacker rerolls that die. """
        "Ferrosphere Paint":
           text: """ After an enemy ship locks you, if you are not in that ship's %BULLSEYEARC%, that ship gains 1 stress token. """
        "Brilliant Evasion":
           text: """ While you defend, if you are not in the attacker's %BULLSEYEARC%, you may spend 1 %FORCE% to change 2 of your %FOCUS% results to %EVADE% results. """
        "Calibrated Laser Targeting":
           text: """ While you perform a primary attack, if the defender is in your %BULLSEYEARC%, add 1 %FOCUS% result. """
        "Delta-7B":
           text: """ <i>Adds: 1 attack, 2 shields %LINEBREAK% Removes: 1 agility</i> """
        "Biohexacrypt Codes":
           text: """ While you coordinate or jam, if you have a lock on a ship, you may spend that lock to choose that ship, ignoring range restrictions. """
        "Predictive Shot":
           text: """ After you declare an attack, if the defender is in your %BULLSEYEARC%, you may spend 1 %FORCE%. If you do, during the Roll Defense Dice step, the defender cannot roll more defense dice than the number of your %HIT%/%CRIT% results. """
        "Hate":
           text: """ After you suffer 1 or more damage, recover that many %FORCE% """
        "R5-X3":
           text: """ Before you activate or engage, you may spend 1 %CHARGE% to ignore obstacles until the end of this phase. """
        "Pattern Analyzer":
           text: """ While you fully execute a red maneuver, before the Check Difficulty step, you may perform 1 action. """
        
            
        
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
           text: ''' When this card is assigned, if there is no faceup damage card on it, the player who assigned it searches the damage deck for 1 Pilot damage card and places it faceup on this card. Then shuffle the damage deck. When you would suffer 1 %CRIT% damage, you are instead dealth the faceup damage card on this card. Then, remove this card. '''
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
           text: '''(Mine Token) - After a ship overlaps or moves through this device, it detonates. When this device detonates, that ship rolls 2 attack dice. That ship then suffers 1 %HIT% plus 1 %HIT%/%CRIT% damage for each matching result.%LINEBREAK%<i>Errata (since rules reference 1.0.2): Add: "1 %HIT% plus"</i>'''
            
    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, condition_translations
