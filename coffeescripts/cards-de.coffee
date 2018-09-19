exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.de = 'Deutsch'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations.Deutsch =
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

    singular:
        'pilots': 'Pilot'
        'modifications': 'Modification'
        'titles': 'Title'
    types:
        'Pilot': 'Pilot'
        'Modification': 'Modification'
        'Title': 'Title'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.Deutsch = () ->
    exportObj.cardLanguage = 'Deutsch'

    # Assumes cards-common has been loaded
    basic_cards = exportObj.basicCardData()
    exportObj.canonicalizeShipNames basic_cards

    # English names are loaded by default, so no update is needed
    exportObj.ships = basic_cards.ships


    # Rename ships
    ###exportObj.renameShip 'X-Wing', 'X-Wing'
    exportObj.renameShip 'A-Wing', 'A-Wing'
    exportObj.renameShip 'Y-Wing', 'Y-Wing'
    exportObj.renameShip 'B-Wing', 'B-Wing'
    exportObj.renameShip 'E-Wing', 'E-Wing'
    exportObj.renameShip 'K-Wing', 'K-Wing'
    exportObj.renameShip 'U-Wing', 'U-Wing'
    exportObj.renameShip 'YT-1300', 'YT-1300'
    exportObj.renameShip 'YT-2400', 'YT-2400'
    exportObj.renameShip 'Z-95 Headhunter', 'Chasseur de têtes Z-95'
    exportObj.renameShip 'VCX-100', 'VCX-100'
    exportObj.renameShip 'Attack Shuttle', 'Attack Shuttle'
    exportObj.renameShip 'ARC-170', 'ARC-170'
    exportObj.renameShip 'Auzituck Gunship', 'Auzituck Gunship'
    exportObj.renameShip 'Sheathipede-Class Shuttle', 'Sheathipede-Class Shuttle'

    exportObj.renameShip 'TIE Fighter', 'Chasseur TIE'
    exportObj.renameShip 'TIE Advanced', 'TIE Advanced'
    exportObj.renameShip 'TIE Interceptor', 'Intercepteur TIE'
    exportObj.renameShip 'TIE Bomber', 'Bombardier TIE'
    exportObj.renameShip 'TIE Defender', 'Défenseur TIE'
    exportObj.renameShip 'TIE Phantom', 'TIE Fantôme'
    exportObj.renameShip 'TIE Advanced Prototype', 'TIE Advanced Prototype'
    exportObj.renameShip 'TIE Striker', 'TIE Striker'
    exportObj.renameShip 'TIE Punisher', 'TIE Punisher'
    exportObj.renameShip 'TIE Aggressor', 'TIE Aggressor'
    exportObj.renameShip 'TIE Reaper', 'TIE Reaper'
    exportObj.renameShip 'Alpha-Class Star Wing', 'Alpha-Class Star Wing'
    exportObj.renameShip 'Lambda-Class Shuttle', 'Navette de classe Lambda'
    exportObj.renameShip 'VT-49 Decimator', 'Décimateur VT-49'
    
    exportObj.renameShip 'Firespray-31', 'Firespray-31'
    exportObj.renameShip 'M3-A Interceptor', 'Intercepteur M3-A' 
    exportObj.renameShip 'HWK-290', 'HWK-290'
    exportObj.renameShip 'StarViper', 'StarViper'
    exportObj.renameShip 'Aggressor', 'Aggressor'
    exportObj.renameShip 'YV-666', 'YV-666'
    exportObj.renameShip 'Kihraxz Fighter', 'Kihraxz Fighter'
    exportObj.renameShip 'G-1A Starfighter', 'G-1A Starfighter'
    exportObj.renameShip 'Fang Fighter', 'Fang Fighter'
    exportObj.renameShip 'YT-1300 (Scum)', 'YT-1300 (Scum)'
    exportObj.renameShip 'JumpMaster 5000', 'JumpMaster 5000'
    exportObj.renameShip 'Lancer-Class Pursuit Craft', 'Lancer-Class Pursuit Craft'
    exportObj.renameShip 'Quadjumper', 'Quadjumper'
    exportObj.renameShip 'Scurrg H-6 Bomber', 'Scurrg H-6 Bomber'
    exportObj.renameShip 'M12-L Kimogila Fighter', 'M12-L Kimogila Fighter'
    exportObj.renameShip 'Escape Craft', 'Escape Craft'
    exportObj.renameShip 'Mining Guild TIE Fighter', 'Mining Guild TIE Fighter'

    exportObj.renameShip 'T-70 X-Wing', 'T-70 X-Wing'
    exportObj.renameShip 'RZ-2 A-Wing', 'RZ-2 A-Wing'
    exportObj.renameShip 'B/SF-17 Bomber', 'B/SF-17 Bomber'
    exportObj.renameShip 'YT-1300 (Resistance)', 'YT-1300 (Resistance)'
    
    exportObj.renameShip 'TIE/FO Fighter', 'TIE/FO Fighter'
    exportObj.renameShip 'TIE/SF Fighter', 'TIE/SF Fighter'
    exportObj.renameShip 'TIE Silencer', 'TIE Silencer'
    exportObj.renameShip 'Upsilon-Class Shuttle', 'Upsilon-Class Shuttle'###
    
    # Only generic names need updating, but text needs to be set
    pilot_translations =
        "4-LOM":
           name: """4-LOM"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt hast, erhalte 1 Berechnungsmarker.%LINEBREAK%Zu Beginn der Endphase darfst du 1 Schiff in Reichweite 0–1 wählen. Falls du das tust, transferiere 1 deiner Stressmarker auf jenes Schiff."""
        "Nashtah Pup":
           name: """Nashtahwelpe"""
           text: """Du kannst nur über eine Notabsetzung abgesetzt werden, und du hast den Namen, die Initiative, die Pilotenfähigkeit und die Schiffs-%CHARGE% der befreundeten, zerstörten Reißzahn.%LINEBREAK%Fluchtschiff: Aufbau: Erfordert die Reißzahn. Du musst das Spiel angedockt an der Reißzahn beginnen."""
        "AP-5":
           name: """AP-5"""
           text: """Solange du koordinierst, falls du ein Schiff mit genau 1 Stressmarker wählst, kann es Aktionen durchführen.%LINEBREAK%Kommunikationsantennen: Solange du angedockt bist, erhält dein Trägerschiff %COORDINATE%. Bevor dein Trägerschiff aktiviert wird, darf es eine %COORDINATE%-Aktion durchführen."""
        "Academy Pilot":
           name: """Pilot der Akademie"""
           text: """Was Sternenjäger betrifft, setzt das Galaktische Imperium hauptsächlich auf den schnellen und wendigen TIE/ln von Sienar Flottensysteme und lässt ihn in erstaunlicher Stückzahl produzieren."""
        "Airen Cracken":
           name: """Airen Cracken"""
           text: """Nachdem du einen Angriff durchgeführt hast, darfst du 1 befreundetes Schiff in Reichweite 1 wählen. Jenes Schiff darf eine Aktion durchführen, die es als rot behandelt."""
        "Alpha Squadron Pilot":
           name: """Pilot der Alpha-Staffel"""
           text: """Sienar Flottensysteme konzipierte den TIE-Abfangjäger mit vier Laserkanonen an den Tragflächenspitzen. Dadurch ist er seinen Vorgängermodellen waffentechnisch weit überlegen.%LINEBREAK%Automatische Schubdüsen: Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Arvel Crynyd":
           name: """Arvel Crynyd"""
           text: """Du kannst Primärangriffe in Reichweite 0 durchführen.%LINEBREAK%Falls du durch Überschneidung mit einem anderen Schiff an einer %BOOST%-Aktion scheitern würdest, handle sie stattdessen so ab, als würdest du ein Manöver teilweise ausführen.%LINEBREAK%Schwenkbare Schubdüsen: Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Asajj Ventress":
           name: """Asajj Ventress"""
           text: """Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in deinem %SINGLETURRETARC% in Reichweite 0–2 wählen und 1 %FORCE% ausgeben. Falls du das tust, erhält jenes Schiff 1 Stressmarker, es sei denn, es entfernt 1 grünen Marker."""
        "Autopilot Drone":
           name: """Autopilot-Drone"""
           text: """Manchmal sind Herstellerwarnungen dazu gemacht, um sie zu ignorieren.%LINEBREAK%Manipulierte Energiezellen: Während der Systemphase, falls du nicht angedockt bist, verliere 1 %CHARGE%. Am Ende der Aktivierungsphase, falls du 0 %CHARGE% hast, wirst du zerstört. Bevor du entfernt wirst, erleidet jedes Schiff in Reichweite 0-1 1 %CRIT%-Schaden."""
        "Bandit Squadron Pilot":
           name: """Pilot der Banditen-Staffel"""
           text: """Der Z-95-Kopfjäger ist ein direkter Vorläufer von Incoms Vorzeigemodell, dem T-65-X-Flügler. Obwohl er nach modernen Standards als veraltet gilt, ist er nach wie vor ein vielseitiger und schlagkräftiger Sternjäger."""
        "Baron of the Empire":
           name: """Imperialer Baron"""
           text: """Sienars TIE-v1-Turbojäger war eine bahnbrechende Entwicklung auf dem Gebiet der Sternenjäger-Technologie. Er verfügt über stärkere Triebwerke, einen Raketenwerfer sowie klappbare S-Flügel."""
        "Benthic Two-Tubes":
           name: """Benthic Two Tubes"""
           text: """Nachdem du eine %FOCUS%-Aktion durchgeführt hast, darfst du 1 deiner Fokusmarker auf ein befreundetes Schiff in Reichweite 1–2 transferieren."""
        "Biggs Darklighter":
           name: """Biggs Darklighter"""
           text: """Solange ein anderes befreundetes Schiff in Reichweite 0–1 verteidigt, vor dem Schritt „Ergebnisse neutralisieren“, falls du im Angriffswinkel bist, darfst du 1 %HIT%- oder %CRIT%-Schaden erleiden, um 1 passendes Ergebnis zu negieren. """
        "Binayre Pirate":
           name: """Binayre-Pirat"""
           text: """Kath Scarlets Piraten und Schmuggler haben ihre Basis auf den Zwillingswelten Talus und Tralus errichtet. Selbst in Verbrecherkreisen gelten sie als ausgesprochen launenhaft und verrucht."""
        "Black Squadron Ace":
           name: """Fliegerass der schwarzen Staffel"""
           text: """In der Schlacht von Yavin begleiteten die Elite­-piloten der schwarzen Staffel mit ihren TIE/ln-Jägern Darth Vader auf seinem vernichtenden Schlag gegen die Rebellion."""
        "Black Squadron Scout":
           name: """Aufklärer der schwarzen Staffel"""
           text: """Schwenkbare Tragflächen verleihen dem schwerbewaffneten Atmosphärenflieger zusätzliche Geschwindigkeit und Manövrierbarkeit.%LINEBREAK% Adaptive Querruder: Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, musst du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        "Black Sun Ace":
           name: """Fliegerass der Schwarzen Sonne"""
           text: """Der Kihraxz-Angriffsjäger wurde eigens für das Verbrechersyndikat Schwarze Sonne entwickelt, dessen hochbezahlte Fliegerasse ein leistungsstarkes, wendiges Schiff verlangten, das ihren Fähigkeiten entsprach."""
        "Black Sun Assassin":
           name: """Attentäter der """
           text: """Ein Attentat kann mit einem Schuss im Dunkeln oder mit einem vergifteten Getränk verübt werden. Aussagekräftiger ist jedoch eine brennende Raumfähre, die hilflos vom Himmel trudelt. %LINEBREAK%Mikrodüsen: Solange du eine Fassrolle durchführst, musst du die %BANKLEFT%- oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Black Sun Enforcer":
           name: """Vollstrecker der """
           text: """Prinz Xizor persönlich entwickelte die Angriffsplattform der SternenViper-Klasse in Zusammenarbeit mit MandalMotors und schuf so einen der vorzüglichsten Sternenjäger der Galaxis. %LINEBREAK%Mikrodüsen: Solange du eine Fassrolle durchführst, musst du die %BANKLEFT%- oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Black Sun Soldier":
           name: """Kampfpilot der Schwarzen Sonne"""
           text: """Das große und einflussreiche Verbrechersyndikat Schwarze Sonne hat immer Bedarf an guten Piloten, die bei der Wahl ihres Arbeitgebers nicht allzu kritisch sind. """
        "Blade Squadron Veteran":
           name: """Veteran der Klingen-Staffel"""
           text: """Das Cockpit des B-Flüglers ist in einen einzigartigen Gyrostabilisator eingebunden, der den Piloten während des gesamten Fluges in aufrechter Position hält."""
        "Blue Squadron Escort":
           name: """Eskorte der blauen Staffel"""
           text: """Der T-65-X-Flügler aus dem Hause Incom erwies sich schnell als eine der effektivsten und vielseitigsten Jagdmaschinen der Galaxis – und als wahrer Segen für die Rebellion."""
        "Blue Squadron Pilot":
           name: """Pilot der blauen Staffel"""
           text: """Seine schweren Waffensysteme und unverwüstlichen Schilde machen den B-Flügler zu einer der innovativsten Jagdmaschinen der Allianz."""
        "Blue Squadron Scout":
           name: """Aufklärer der blauen """
           text: """Der UT-60D-U-Flügler deckt den Bedarf der Rebellion an schnellen, unverwüstlichen Truppentransportern. Meistens wird er eingesetzt, um Soldaten im Schutz der Dunkelheit oder inmitten eines tobenden Gefechts an ihren Einsatzort zu befördern. """
        "Boba Fett":
           name: """Boba Fett"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du für jedes feindliche Schiff in Reichweite 0–1 1 deiner Würfel neu werfen."""
        "Bodhi Rook":
           name: """Bodhi Rook"""
           text: """Befreundete Schiffe können Objekte in Reichweite 0–3 eines beliebigen befreundeten Schiffes als Ziele erfassen."""
        "Bossk":
           name: """Bossk"""
           text: """Solange du einen Primärangriff durchführst, nach dem Schritt „Ergebnisse neutralisieren“, darfst du 1 %CRIT%-Ergebnis ausgeben, um 2 %HIT%-Ergebnisse hinzuzufügen."""
        "Bounty Hunter":
           name: """Kopfgeldjäger"""
           text: """Das Patrouillenboot der Firespray-Klasse ist berüchtigt, weil es mit den Kopfgeldjägern Jango Fett und Boba Fett assoziiert wird, die ihr Schiff mit unzähligen tödlichen Waffen gespickt hatten."""
        "Braylen Stramm":
           name: """Braylen Stramm"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du bis zu 2 deiner Würfel neu werfen."""
        "Captain Feroph":
           name: """Captain Feroph"""
           text: """Solange du verteidigst, falls der Angreifer keine grünen Marker hat, darfst du 1 deiner Leerseiten- oder %FOCUS%-Ergebnisse in ein %EVADE%-Ergebnis ändern.%LINEBREAK%Adaptive Querruder: Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, musst du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        "Captain Jonus":
           name: """Captain Jonus"""
           text: """Solange ein befreundetes Schiff in Reichweite 0–1 einen %TORPEDO%- oder %MISSILE%-Angriff durchführt, darf jenes Schiff bis zu 2 Angriffswürfel neu werfen. %LINEBREAK%Wendiger Bomber: Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Captain Jostero":
           name: """Captain Jostero"""
           text: """Nachdem ein feindliches Schiff Schaden erlitten hat, falls es nicht verteidigt, darfst du einen Bonusangriff gegen jenes Schiff durchführen."""
        "Captain Kagi":
           name: """Captain Kagi"""
           text: """Zu Beginn der Kampfphase darfst du 1 oder mehrere befreundete Schiffe in Reichweite 0–3 wählen. Falls du das tust, transferiere alle feindlichen Zielerfassungsmarker von den gewählten Schiffen auf dich."""
        "Captain Nym":
           name: """Captain Nym"""
           text: """Bevor eine befreundete Bombe oder Mine detonieren würde, darfst du 1 %CHARGE% ausgeben, um die Detonation zu verhindern.%LINEBREAK% Solange du gegen einen Angriff verteidigst, der durch eine Bombe oder Mine versperrt ist, wirf 1 zusätzlichen Verteidigungswürfel."""
        "Captain Oicunn":
           name: """Captain Oicunn"""
           text: """Du kannst Primärangriffe in Reichweite 0 durchführen."""
        "Captain Rex":
           name: """Captain Rex"""
           text: """Nachdem du einen Angriff durchgeführt hast, ordne dem Verteidiger den Zustand Sperrfeuer zu."""
        "Cartel Executioner":
           name: """Killer des Kartells"""
           text: """Viele erfahrene Piloten, die im Dienst der huttischen Kajidics und anderer Verbrecherorganisationen stehen, entscheiden sich für den M12-L-Kimogila-Jäger aufgrund seiner beträchtlichen Feuerkraft und seines furchteinflößenden Rufes.%LINEBREAK% Todsicherer Treffer: Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, können Verteidigungswürfel nicht unter Verwendung von grünen Markern modifiziert werden."""
        "Cartel Marauder":
           name: """Kartell-Marodeur"""
           text: """Der vielseitige Kihraxz ist dem beliebten X-Flügler von Incom nachempfunden und verfügt über eine Reihe von Modifikationspaketen, mit denen er für verschiedenste Aufgabenbereiche angepasst werden kann."""
        "Cartel Spacer":
           name: """Raumfahrer des Kartells"""
           text: """Der M3-A-„Scyk“-Abfangjäger von MandalMotors wurde in großer Stückzahl vom Hutt-Kartell und den Car’das-Schmugglern angeschafft. Grund dafür waren der günstige Einstiegspreis und die vielen Ausstattungsoptionen des Jägers. %LINEBREAK%Waffenaufhängung: Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Cassian Andor":
           name: """Cassian Andor"""
           text: """Zu Beginn der Aktivierungsphase darfst du 1 befreundetes Schiff in Reichweite 1–3 wählen. Falls du das tust, entfernt jenes Schiff 1 Stressmarker."""
        "Cavern Angels Zealot":
           name: """Fanatiker der Sturmengel"""
           text: """Anders als die meisten Widerstandszellen sind Saw Gerreras Partisanen bereit, bis zum Äußersten zu gehen, um die Pläne des Imperiums zu durchkreuzen. Von Geonosis bis Jedha liefern sie sich blutige Auseinandersetzungen mit der imperialen Obrigkeit."""
        "Chewbacca":
           name: """Chewbacca"""
           text: """Bevor dir eine offene Schadenskarte zugeteilt werden würde, darfst du 1 %CHARGE% ausgeben, um die Karte stattdessen verdeckt zugeteilt zu bekommen."""
        "Colonel Jendon":
           name: """Colonel Jendon"""
           text: """Zu Beginn der Aktivierungsphase darfst du 1 %CHARGE% ausgeben. Falls du das tust, müssen befreundete Schiffe, solange sie in dieser Runde Ziele erfassen, Ziele jenseits von Reichweite 3 erfassen, anstatt in Reichweite 0–3."""
        "Colonel Vessery":
           name: """Colonel Vessery"""
           text: """Solange du einen Angriff gegen ein erfasstes Schiff durchführst, nachdem du Angriffswürfel geworfen hast, darfst du den Verteidiger als Ziel erfassen.%LINEBREAK%Vollgas: Nachdem du ein Manöver mit Geschwindigkeit 3–5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Constable Zuvio":
           name: """Constable Zuvio"""
           text: """Falls du ein Gerät abwerfen würdest, darfst du es stattdessen unter Verwendung der [1 %STRAIGHT%]-Schablone starten.%LINEBREAK%Schlepperstrahl: Aktion: Wähle ein Schiff in deinem %FRONTARC% in Reichweite 1. Jenes Schiff erhält 1 Fangstrahlmarker oder 2 Fangstrahlmarker, falls es in deinem %BULLSEYEARC% in Reichweite 1 ist."""
        "Contracted Scout":
           name: """Angeheuerter Kundschafter"""
           text: """Der leichtbewaffnete JumpMaster 5000 ist für Langstreckenaufklärung und die Erschließung neuer Hyperraumrouten vorgesehen. Häufig wird er mit umfangreichen Ausstattungspaketen nachgerüstet."""
        "Corran Horn":
           name: """Corran Horn"""
           text: """Bei Initiative 0 darfst du einen Bonus-Primärangriff gegen ein feindliches Schiff in deinem %BULLSEYEARC% durchführen. Falls du das tust, erhalte zu Beginn der nächsten Planungsphase 1 Entwaffnet-Marker.%LINEBREAK%Experimentelle Scanner: Du kannst Ziele jenseits von Reichweite 3 erfassen. Du kannst keine Ziele in Reichweite 1 erfassen."""
        "Countess Ryad":
           name: """Gräfin Ryad"""
           text: """Solange du ein %STRAIGHT%-Manöver ausführen würdest, darfst du die Schwierigkeit des Manövers erhöhen. Falls du das tust, führe es stattdessen als %KTURN%-Manöver aus.%LINEBREAK%Vollgas: Nachdem du ein Manöver mit Geschwindigkeit 3–5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Crymorah Goon":
           name: """Verbrecher der Crymorah"""
           text: """Mit seinen schweren Hüllenplatten, starken Schilden und schlagkräftigen Geschützen ist der Y-Flügler zwar alles andere als behände, dafür eignet er sich hervorragend als Patrouillenschiff."""
        "Cutlass Squadron Pilot":
           name: """Pilot der Entermesser-Staffel"""
           text: """Das Konzept des TIE-Vergelters basiert auf dem erfolgreichen TIE-Bomber und ergänzt ihn um Schilde, einen zweiten Bombenabwurfschacht sowie drei weitere Munitionskapseln, die jeweils mit einem Zwillings-Ionenantrieb ausgerüstet sind."""
        "Dace Bonearm":
           name: """Dace Bonearm"""
           text: """Nachdem ein feindliches Schiff in Reichweite 0–3 mindestens 1 Ionenmarker bekommen hat, darfst du 3 %CHARGE% ausgeben. Falls du das tust, erhält jenes Schiff 2 zusätzliche Ionenmarker."""
        "Dalan Oberos (StarViper)":
           name: """Dalan Oberos"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 Stressmarker erhalten, um dein Schiff um 90° zu drehen.%LINEBREAK%Mikrodüsen: Solange du eine Fassrolle durchführst, musst du die %BANKLEFT%- oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Dalan Oberos":
           name: """Dalan Oberos"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff, das Schilde hat, in deinem %BULLSEYEARC% wählen und 1 %CHARGE% ausgeben. Falls du das tust, verliert jenes Schiff 1 Schild und du stellst 1 Schild wieder her.%LINEBREAK%Todsicherer Treffer: Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, können Verteidigungswürfel nicht unter Verwendung von grünen Markern modifiziert werden."""
        "Darth Vader":
           name: """Darth Vader"""
           text: """Nachdem du eine Aktion durchgeführt hast, darfst du 1 %FORCE% ausgeben, um eine Aktion durchzuführen.%LINEBREAK%Verbesserter Zielcomputer: Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Dash Rendar":
           name: """Dash Rendar"""
           text: """Solange du dich bewegst, ignorierst du Hindernisse.%LINEBREAK%Toter Winkel: Solange du einen Primärangriff in Reichweite 0–1 durchführst, wende den Bonus für Reichweite 0–1 nicht an und wirf 1 Angriffswürfel weniger."""
        "Del Meeko":
           name: """Del Meeko"""
           text: """Solange ein befreundetes Schiff in Reichweite 0–2 gegen einen beschädigten Angreifer verteidigt, darf der Verteidiger 1 Verteidigungswürfel neu werfen."""
        "Delta Squadron Pilot":
           name: """Pilot der Delta-Staffel"""
           text: """Der TIE-Abwehrjäger ist nicht nur mit Raketenwerfern und sechs Kanonen an den Tragflächenspitzen, sondern auch mit Deflektorschilden und einem Hyperantrieb ausgestattet.%LINEBREAK%Vollgas: Nachdem du ein Manöver mit Geschwindigkeit 3–5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Dengar":
           name: """Dengar"""
           text: """Nachdem du verteidigt hast, falls der Angreifer in deinem %FRONTARC% ist, darfst du 1 %CHARGE% ausgeben, um einen Bonusangriff gegen den Angreifer durchzuführen."""
        "Drea Renthal":
           name: """Drea Renthal"""
           text: """Solange ein befreundetes nicht-limitiertes Schiff einen Angriff durchführt, falls der Verteidiger in deinem Feuerwinkel ist, darf der Angreifer 1 Angriffswürfel neu werfen."""
        "Edrio Two Tubes":
           name: """Edrio Two Tubes"""
           text: """Bevor du aktiviert wirst, falls du fokussiert bist, darfst du eine Aktion durchführen."""
        "Emon Azzameen":
           name: """Emon Azzameen"""
           text: """Falls du unter Verwendung der [1 %STRAIGHT%]-Schablone ein Gerät abwerfen würdest, darfst du stattdessen die [3 %TURNLEFT%]-, [3 %STRAIGHT%]- oder [3 %TURNRIGHT%]-Schablone verwenden."""
        "Esege Tuketu":
           name: """Esege Tuketu"""
           text: """Solange ein befreundetes Schiff in Reichweite 0–2 verteidigt oder einen Angriff durchführt, darf es deine Fokusmarker ausgeben, als ob jenes Schiff sie hätte."""
        "Evaan Verlaine":
           name: """Evaan Verlaine"""
           text: """Zu Beginn der Kampfphase darfst du 1 Fokusmarker ausgeben, um ein befreundetes Schiff in Reichweite 0–1 zu wählen. Falls du das tust, wirft jenes Schiff bis zum Ende der Runde 1 zusätzlichen Verteidigungswürfel, solange es verteidigt."""
        "Ezra Bridger":
           name: """Ezra Bridger"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du 1 %FORCE% ausgeben, um bis zu 2 deiner %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern.%LINEBREAK%Geladen und entsichert: Solange du angedockt bist, nachdem dein Trägerschiff einen %FRONTARC%-Primärangriff oder %TURRET%-Angriff durchgeführt hat, darf es einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Ezra Bridger (Sheathipede)":
           name: """Ezra Bridger"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du 1 %FORCE% ausgeben, um bis zu 2 deiner %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern. %LINEBREAK%Kommunikationsantennen: Solange du angedockt bist, erhält dein Trägerschiff %COORDINATE%. Bevor dein Trägerschiff aktiviert wird, darf es eine %COORDINATE%-Aktion durchführen."""
        "Ezra Bridger (TIE Fighter)":
           name: """Ezra Bridger"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du 1 %FORCE% ausgeben, um bis zu 2 deiner %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern."""
        "Fenn Rau":
           name: """Fenn Rau"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls die Angriffsreichweite 1 ist, darfst du 1 zusätzlichen Würfel werfen.%LINEBREAK%Concordianischer Wirbel: Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im%FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Fenn Rau (Sheathipede)":
           name: """Fenn Rau"""
           text: """Nachdem ein feindliches Schiff in deinem Feuerwinkel begonnen hat zu kämpfen, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten. Falls du das tust, kann jenes Schiff keine Marker ausgeben, um Würfel zu modifizieren, solange es während dieser Phase einen Angriff durchführt.%LINEBREAK%Kommunikationsantennen: Solange du angedockt bist, erhält dein Trägerschiff %COORDINATE%. Bevor dein Trägerschiff aktiviert wird, darf es eine %COORDINATE%-Aktion durchführen."""
        "Freighter Captain":
           name: """Frachtercaptain"""
           text: """Viele Raumfahrer bestreiten ihr Leben, indem sie den Outer Rim bereisen, wo der Unterschied zwischen Schmugglern und seriösen Händlern oft kaum zu erkennen ist. Am Rande der Zivilisation sind Käufer äußerst selten, daher sollte man nicht nach der Herkunft der Ware fragen, solange der Preis niedrig genug ist. """
        "Gamma Squadron Ace":
           name: """Fliegerass der Gamma-Staffel"""
           text: """Der TIE-Bomber ist zwar nicht so schnell und wendig wie ein TIE/ln, dafür besitzt er genügend Feuerkraft, um praktisch jedes feindliche Ziel auszulöschen. %LINEBREAK%Wendiger Bomber: Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Gand Findsman":
           name: """Gand-Finder"""
           text: """Die legendären Finder der Gand verehren den Nebelschleier, der ihren Heimatplaneten umhüllt. Um ihre Beute aufzuspüren, deuten sie mystische Zeichen und Visionen."""
        "Garven Dreis (X-Wing)":
           name: """Garven Dreis"""
           text: """Nachdem du einen Fokusmarker ausgegeben hast, darfst du 1 befreundetes Schiff in Reichweite 1–3 wählen. Jenes Schiff erhält 1 Fokusmarker."""
        "Garven Dreis":
           name: """Garven Dreis"""
           text: """Nachdem du einen Fokusmarker ausgegeben hast, darfst du 1 befreundetes Schiff in Reichweite 1–3 wählen. Jenes Schiff erhält 1 Fokusmarker."""
        "Gavin Darklighter":
           name: """Gavin Darklighter"""
           text: """Solange ein befreundetes Schiff einen Angriff durchführt, falls der Verteidiger in deinem %FRONTARC% ist, darf der Angreifer 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern.%LINEBREAK%Experimentelle Scanner: Du kannst Ziele jenseits von Reichweite 3 erfassen. Du kannst keine Ziele in Reichweite 1 erfassen."""
        "Genesis Red":
           name: """Genesis Red"""
           text: """Nachdem du ein Ziel erfasst hast, musst du alle deine Fokus- und Ausweichmarker entfernen. Dann erhalte dieselbe Anzahl an Fokus- und Ausweichmarkern, die das erfasste Schiff hat.%LINEBREAK%Waffenaufhängung: Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Gideon Hask":
           name: """Gideon Hask"""
           text: """Solange du einen Angriff gegen einen beschädigten Verteidiger durchführst, wirf 1 zusätzlichen Angriffswürfel."""
        "Gold Squadron Veteran":
           name: """Veteran der Gold-Staffel"""
           text: """Unter dem Kommando von Jon „Dutch“ Vander spielte die Gold-Staffel eine Schlüsselrolle bei den Schlachten von Scarif und Yavin."""
        "Grand Inquisitor":
           name: """Großinquisitor"""
           text: """Solange du in Angriffsreichweite 1 verteidigst, darfst du 1 %FORCE% ausgeben, um den Bonus für Reichweite 1 zu verhindern.%LINEBREAK%Solange du einen Angriff gegen einen Verteidiger in Angriffsreichweite 2–3 durchführst, darfst du 1 %FORCE% ausgeben, um den Bonus für Reichweite 1 anzuwenden."""
        "Gray Squadron Bomber":
           name: """Bomber der grauen Staffel"""
           text: """Obwohl er beim Imperium schon lange ausgemustert ist, bleibt der Y-Flügler aufgrund seiner Robustheit, Zuverlässigkeit und schweren Bewaffnung weiterhin ein fester Bestandteil der Rebellenflotte."""
        "Graz":
           name: """Graz"""
           text: """Solange du verteidigst, falls du hinter dem Angreifer bist, wirf 1 zusätzlichen Verteidigungswürfel.%LINEBREAK%Solange du einen Angriff durchführst, falls du hinter dem Angreifer bist, wirf 1 zusätzlichen Angriffswürfel."""
        "Green Squadron Pilot":
           name: """Pilot der grünen Staffel"""
           text: """Aufgrund seiner empfindlichen Steuerung und extremen Wendigkeit war das Cockpit des A-Flüglers nur für besonders begabte Piloten bestimmt.%LINEBREAK%Schwenkbare Schubdüsen: Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Guri":
           name: """Guri"""
           text: """Zu Beginn der Kampfphase, falls mindestens 1 feindliches Schiff in Reichweite 0–1 ist, darfst du 1 Fokusmarker erhalten.%LINEBREAK%Mikrodüsen: Solange du eine Fassrolle durchführst, musst du die %BANKLEFT%- oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Han Solo  (Scum)":
           name: """Han Solo"""
           text: """Solange du verteidigst oder einen Primärangriff durchführst, falls der Angriff durch ein Hindernis versperrt ist, darfst du 1 zusätzlichen Würfel werfen."""
        "Han Solo":
           name: """Han Solo"""
           text: """Nachdem du Würfel geworfen hast, falls du in Reichweite 0–1 eines Hindernisses bist, darfst du alle deine Würfel neu werfen. Dies zählt für alle anderen Effekte nicht als Neuwerfen."""
        "Heff Tobber":
           name: """Heff Tobber"""
           text: """Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, falls es in Reichweite 0 ist, darfst du eine Aktion durchführen."""
        "Hera Syndulla":
           name: """Hera Syndulla"""
           text: """Nachdem du ein rotes oder blaues Manöver aufgedeckt hast, darfst du dein Rad auf ein anderes Manöver derselben Schwierigkeit einstellen.%LINEBREAK%Geladen und entsichert: Solange du angedockt bist, nachdem dein Trägerschiff einen %FRONTARC%-Primärangriff oder %TURRET%-Angriff durchgeführt hat, darf es einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Hera Syndulla":
           name: """Hera Syndulla (VCX-100)"""
           text: """Nachdem du ein rotes oder blaues Manöver aufgedeckt hast, darfst du dein Rad auf ein anderes Manöver derselben Schwierigkeit einstellen.%LINEBREAK%Heckgeschütz: Solange du ein angedocktes Schiff hast, hast du eine %REARARC%-Primärwaffe mit einem Angriffswert in Höhe des Angriffswertes der %FRONTARC%-Primärwaffe deines angedockten Schiffes."""
        "Hired Gun":
           name: """Söldner"""
           text: """Wer mit imperialen Credits winkt, kann auf eine große, wenn auch nicht sonderlich vertrauenswürdige Helferschar zählen."""
        "Horton Salm":
           name: """Horton Salm"""
           text: """Solange du einen Angriff durchführst, darfst du für jedes andere befreundete Schiff in Reichweite 0–1 des Verteidigers 1 Angriffswürfel neu werfen."""
        "IG-88A":
           name: """IG-88A"""
           text: """Zu Beginn der Kampfphase darfst du 1 befreundetes Schiff mit %CALCULATE% in seiner Aufwertungsleiste in Reichweite 1–3 wählen. Falls du das tust, transferiere 1 deiner Berechnungsmarker auf es. %LINEBREAK%Hochentwickeltes Droidengehirn: Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "IG-88B":
           name: """IG-88B"""
           text: """Nachdem du einen Angriff durchgeführt hast, der verfehlt hat, darfst du einen Bonus-%CANNON%-Angriff durchführen.%LINEBREAK%Hochentwickeltes Droidengehirn: Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "IG-88C":
           name: """IG-88C"""
           text: """Nachdem du eine %BOOST%-Aktion durchgeführt hast, darfst du eine %EVADE%-Aktion durchführen.%LINEBREAK%Hochentwickeltes Droidengehirn: Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "IG-88D":
           name: """IG-88D"""
           text: """Solange du einen Segnor-Looping (%SLOOPLEFT% oder %SLOOPRIGHT%)ausführst, darfst du stattdessen eine andere Schablone derselben Geschwindigkeit verwenden: entweder die Wende (%TURNLEFT% oder %TURNRIGHT%) mit gleicher Orientierung oder die Gerade (%STRAIGHT%).%LINEBREAK%Hochentwickeltes Droidengehirn: Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "Ibtisam":
           name: """Ibtisam"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, falls du gestresst bist, darfst du 1 Angriffswürfel werfen. Bei einem %HIT%- oder %CRIT%-Ergebnis entferne 1 Stressmarker."""
        "Iden Versio":
           name: """Iden Versio"""
           text: """Bevor ein befreundeter TIE/ln-Jäger in Reichweite 0–1 1 oder mehr Schaden erleiden würde, darfst du 1 %CHARGE% ausgeben. Falls du das tust, verhindere jenen Schaden."""
        "Imdaar Test Pilot":
           name: """Testpilot von Imdaar"""
           text: """In einem geheimen Forschungsprojekt auf dem Mond Imdaar Alpha wurde entwickelt, was viele für unmöglich gehalten hatten: der TIE-Phantom, ein kleiner Sternenjäger mit Tarnvorrichtung.%LINEBREAK%Stygium-Gitter: Nachdem du dich enttarnt hast, darfst du eine %EVADE%-Aktion durchführen. Zu Beginn der Endphase darfst du 1 Ausweichmarker ausgeben, um 1 Tarnungsmarker zu erhalten."""
        "Inaldra":
           name: """Inaldra"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1 %HIT%-Schaden erleiden, um beliebig viele deiner Würfel neu zu werfen.%LINEBREAK%Waffenaufhängung: Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Inquisitor":
           name: """Inquisitor"""
           text: """Die gefürchteten Inquisitoren haben nicht nur freie Hand bei der Ausübung ihrer Pflichten, sondern auch Zugang zu modernster Spitzentechnik wie dem TIE-v1-Turbojäger-Prototypen."""
        "Jake Farrell":
           name: """Jake Farrell"""
           text: """Nachdem du eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0–1 wählen. Jenes Schiff darf eine %FOCUS%-Aktion durchführen.%LINEBREAK%Schwenkbare Schubdüsen: Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Jakku Gunrunner":
           name: """Waffenschmuggler von Jakku"""
           text: """Der Quadrijet-Transferschlepper, im Volksmund „Quadjumper“ genannt, ist gleichermaßen behände in Weltall und Atmosphäre, was ihn zu einem beliebten Schmuggler- und Entdeckerschiff macht. %LINEBREAK%Schlepperstrahl: Aktion: Wähle ein Schiff in deinem %FRONTARC% in Reichweite 1. Jenes Schiff erhält 1 Fangstrahlmarker oder 2 Fangstrahlmarker, falls es in deinem %BULLSEYEARC% in Reichweite 1 ist."""
        "Jan Ors":
           name: """Jan Ors"""
           text: """Solange ein befreundetes Schiff in deinem Feuerwinkel einen Primärangriff durchführt, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten. Falls du das tust, darf jenes Schiff 1 zusätzlichen Angriffswürfel werfen."""
        "Jek Porkins":
           name: """Jek Porkins"""
           text: """Nachdem du einen Stressmarker bekommen hast, darfst du 1 Angriffswürfel werfen, um ihn zu entfernen. Bei einem %HIT%-Ergebnis erleide 1 %HIT%-Schaden."""
        "Joy Rekkoff":
           name: """Joy Rekkoff"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %CHARGE% von einer ausgerüsteten %TORPEDO%-Aufwertung ausgeben. Falls du das tust, wirft der Verteidiger 1 Verteidigungswürfel weniger.%LINEBREAK%Concordianischer Wirbel: Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Kaa'to Leeachos":
           name: """Kaa’to Leeachos"""
           text: """Zu Beginn der Kampfphase darfst du 1 befreundetes Schiff in Reichweite 0–2 wählen. Falls du das tust, transferiere 1 Fokus- oder Ausweichmarker von jenem Schiff auf dich selbst."""
        "Kad Solus":
           name: """Kad Solus"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt hast, erhalte 2 Fokusmarker.%LINEBREAK%Concordianischer Wirbel: Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Kanan Jarrus":
           name: """Kanan Jarrus"""
           text: """Solange ein befreundetes Schiff in deinem Feuerwinkel verteidigt, darfst du 1 %FORCE% ausgeben. Falls du das tust, wirft der Angreifer 1 Angriffswürfel weniger.%LINEBREAK%Heckgeschütz: Solange du ein angedocktes Schiff hast, hast du eine %REARARC%-Primärwaffe mit einem Angriffswert in Höhe des Angriffswertes der %FRONTARC%-Primärwaffe deines angedockten Schiffes."""
        "Kashyyyk Defender":
           name: """Verteidiger von Kashyyyk"""
           text: """Mit seinen drei weitreichenden Sureggi-Zwillingslaserkanonen soll das Auzituck-Kanonenboot Sklavenjäger im Kashyyyk-System abschrecken."""
        "Kath Scarlet":
           name: """Kath Scarlet"""
           text: """Solange du einen Primärangriff durchführst, falls mindestens 1 befreundetes nicht-limitiertes Schiff in Reichweite 0 des Verteidigers ist, wirf 1 zusätzlichen Angriffswürfel."""
        "Kavil":
           name: """Kavil"""
           text: """Solange du einen Nicht-%FRONTARC%-Angriff durchführst, wirf 1 zusätzlichen Angriffswürfel."""
        "Ketsu Onyo":
           name: """Ketsu Onyo"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff wählen, das sowohl in deinem %FRONTARC% als auch in deinem %SINGLETURRETARC% und in Reichweite 0–1 ist. Falls du das tust, erhält jenes Schiff 1 Fangstrahlmarker."""
        "Knave Squadron Escort":
           name: """Eskorte der Schurken-Staffel"""
           text: """Der E-Flügler verbindet die besten Eigenschaften von X-Flügler und A-Flügler, und kann mit überlegener Feuerkraft, Geschwindigkeit und Manövrierbarkeit aufwarten.%LINEBREAK% Experimentelle Scanner: Du kannst Ziele jenseits von Reichweite 3 erfassen. Du kannst keine Ziele in Reichweite 1 erfassen."""
        "Koshka Frost":
           name: """Koshka Frost"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls das feindliche Schiff gestresst ist, darfst du 1 deiner Würfel neu werfen."""
        "Krassis Trelix":
           name: """Krassis Trelix"""
           text: """Du kannst %FRONTARC%-Spezialangriffe von deinem %REARARC% aus durchführen.%LINEBREAK%Solange du einen Spezialangriff durchführst, darfst du 1 Angriffswürfel neu werfen."""
        "Kullbee Sperado":
           name: """Kullbee Sperado"""
           text: """Nachdem du eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hast, darfst du deine ausgerüstete %CONFIG%-Aufwertungskarte umdrehen."""
        "Kyle Katarn":
           name: """Kyle Katarn"""
           text: """Zu Beginn der Kampfphase darfst du 1 deiner Fokusmarker auf ein befreundetes Schiff in deinem Feuerwinkel transferieren."""
        "L3-37":
           name: """L3-37"""
           text: """Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%) ."""
        "L3-37 (Escape Craft)":
           name: """L3-37"""
           text: """Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%) .%LINEBREAK%Co-Pilot: Solange du angedockt bist, hat dein Träger-Schiff deine Piloten-Fähigkeit zusätzlich zu seiner eigenen."""
        "Laetin A'shera":
           name: """Laetin A’shera"""
           text: """Nachdem du verteidigt oder einen Angriff durchgeführt hast, falls der Angriff verfehlt hat, erhalte 1 Ausweichmarker.%LINEBREAK%Waffenaufhängung: Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Lando Calrissian":
           name: """Lando Calrissian"""
           text: """Nachdem du ein blaues Manöver vollständig ausgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0–3 wählen. Jenes Schiff darf eine Aktion durchführen."""
        "Lando Calrissian (Scum)":
           name: """Lando Calrissian"""
           text: """Nachdem du Würfel geworfen hast, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten um alle deine Leerseiten neu zu werfen."""
        "Lando Calrissian (Scum) (Escape Craft)":
           name: """Lando Calrissian"""
           text: """Nachdem du Würfel geworfen hast, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten um alle deine Leerseiten neu zu werfen.%LINEBREAK%Co-Pilot: Solange du angedockt bist, hat dein Träger-Schiff deine Piloten-Fähigkeit zusätzlich zu seiner eigenen."""
        "Latts Razzi":
           name: """Latts Razzi"""
           text: """Zu Beginn der Kampfphase darfst du ein Schiff in Reichweite 1 wählen und eine Zielerfassung, die du auf jenem Schiff hast, ausgeben. Falls du das tust, erhält jenes Schiff 1 Fangstrahlmarker."""
        "Leevan Tenza":
           name: """Leevan Tenza"""
           text: """Nachdem du eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hast, darfst du eine rote %EVADE%-Aktion durchführen."""
        "Lieutenant Blount":
           name: """Lieutenant Blount"""
           text: """Solange du einen Primärangriff durchführst, falls mindestens 1 anderes befreundetes Schiff in Reichweite 0–1 des Verteidigers ist, darfst du 1 zusätzlichen Angriffswürfel werfen."""
        "Lieutenant Karsabi":
           name: """Lieutenant Karsabi"""
           text: """Nachdem du einen Entwaffnet-Marker erhalten hast, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten, um 1 Entwaffnet-Marker zu entfernen."""
        "Lieutenant Kestal":
           name: """Lieutenant Kestal"""
           text: """Solange du einen Angriff durchführst, nachdem der Verteidiger Verteidigungswürfel geworfen hat, darfst du 1 Fokusmarker ausgeben, um alle Leerseiten/%FOCUS%-Ergebnisse des Verteidigers zu negieren."""
        "Lieutenant Sai":
           name: """Lieutenant Sai"""
           text: """Nachdem du eine %COORDINATE%-Aktion durchgeführt hast, falls das von dir gewählte Schiff eine Aktion aus deiner Aktionsleiste durchgeführt hat, darfst du jene Aktion durchführen."""
        "Lok Revenant":
           name: """Lok-Pirat"""
           text: """Das Nubianische Entwicklungskollektiv konstruierte den Scurrg-H-6-Bomber als vielseitige Jagdmaschine, ausgestattet mit Hochleistungsschilden und einem tödlichen Waffenarsenal."""
        "Lothal Rebel":
           name: """Rebell von Lothal"""
           text: """Der VCX-100 ist ein weiteres Erfolgsmodell der Corellianischen Ingenieursgesellschaft, geräumiger und mit mehr Ausstattungsoptionen als die beliebte YT-Serie.%LINEBREAK%Heckgeschütz: Solange du ein angedocktes Schiff hast, hast du eine %REARARC%-Primärwaffe mit einem Angriffswert in Höhe des Angriffswertes der %FRONTARC%-Primärwaffe deines angedockten Schiffes."""
        "Lowhhrick":
           name: """Wullffwarro"""
           text: """Solange du einen Primärangriff durchführst, falls du beschädigt bist, darfst du 1 zusätzlichen Angriffswürfel werfen."""
        "Luke Skywalker":
           name: """Luke Skywalker"""
           text: """Nachdem du zum Verteidiger geworden bist (bevor Würfel geworfen werden), darfst du 1 %FORCE% wiederherstellen."""
        "Maarek Stele":
           name: """Maarek Stele"""
           text: """Solange du einen Angriff durchführst, falls dem Verteidiger eine offene Scha­dens­karte zugeteilt werden würde, ziehe stattdessen 3 Schadenskarten, wähle 1 und lege die übrigen ab.%LINEBREAK%Verbesserter Zielcomputer: Solange du einen Primärangriff gegen einen Ver­tei­diger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen An­griffs­würfel und ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Magva Yarro":
           name: """Magva Yarro"""
           text: """Solange ein befreundetes Schiff in Reichweite 0–2 verteidigt, kann der Angreifer nicht mehr als 1 Angriffswürfel neu werfen."""
        "Major Rhymer":
           name: """Major Rhymer"""
           text: """Solange du einen %TORPEDO%- oder %MISSILE%-Angriff durchführst, darfst du die Reichweitenbedingung um 1 erhöhen oder verringern, bis zu einem Limit von 0–3. %LINEBREAK%Wendiger Bomber: Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Major Vermeil":
           name: """Major Vermeil"""
           text: """Solange du einen Angriff durchführst, falls der Verteidiger keine grünen Marker hat, darfst du 1 deiner Leerseiten- oder %FOCUS%-Ergebnisse in ein %HIT%-Ergebnis ändern. %LINEBREAK%Adaptive Querruder: Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, musst du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        "Major Vynder":
           name: """Major Vynder"""
           text: """Solange du verteidigst, falls du entwaffnet bist, wirf 1 zusätzlichen Verteidigungswürfel."""
        "Manaroo":
           name: """Manaroo"""
           text: """Zu Beginn der Kampfphase darfst du ein befreundetes Schiff in Reichweite 0–1 wählen. Falls du das tust, transferiere alle grünen Marker, die dir zugeordnet sind, auf jenes Schiff."""
        "Miranda Doni":
           name: """Miranda Doni"""
           text: """Solange du einen Primärangriff durchführst, darfst du entweder 1 Schild ausgeben, um 1 zusätzlichen Angriffswürfel zu werfen, oder, falls du keine Schilde hast, du darfst 1 Angriffswürfel weniger werfen, um 1 Schild wiederherzustellen."""
        "Moralo Eval":
           name: """Moralo Eval"""
           text: """Falls du fliehen würdest, darfst du 1 %CHARGE% ausgeben. Falls du das tust, platziere dich selbst stattdessen in der Reserve. Zu Beginn der nächsten Planungsphase platziere dich selbst innerhalb von Reichweite 1 des Spielflächenrandes, über den du geflohen bist."""
        "Norra Wexley (Y-Wing)":
           name: """Norra Wexley"""
           text: """Solange du verteidigst, falls ein feindliches Schiff in Reichweite 0–1 ist, füge 1 %EVADE%-Ergebnis zu deinen Würfelergebnissen hinzu."""
        "Norra Wexley":
           name: """Norra Wexley"""
           text: """Solange du verteidigst, falls ein feindliches Schiff in Reichweite 0–1 ist, füge 1 %EVADE%-Ergebnis zu deinen Würfelergebnissen hinzu."""
        "Nu Squadron Pilot":
           name: """Pilot der Nu-Staffel"""
           text: """Inspiriert von anderen Modellen der Cygnus Raumwerften, ist der Sternflügler der Alpha-Klasse ein vielseitiges Kanonenboot, das für verschiedene Einsatzgebiete umgerüstet werden kann und somit ideal für die Spezialeinheiten der Imperialen Flotte ist."""
        "N'dru Suhlak":
           name: """N’dru Suhlak"""
           text: """Solange du einen Primärangriff durchführst, falls keine anderen befreundeten Schiffe in Reichweite 0–2 sind, wirf 1 zusätzlichen Angriffswürfel."""
        "Obsidian Squadron Pilot":
           name: """Pilot der Obsidian-Staffel"""
           text: """Der Zwillingsionenantrieb des TIE-Jägers war auf Geschwindigkeit optimiert und machte den TIE/ln zu einem der wendigsten Raumschiffe, die je in Massen produziert wurden."""
        "Old Teroch":
           name: """Der alte Teroch"""
           text: """Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in Reichweite 1 wählen. Falls du das tust und du in seinem %FRONTARC% bist, entfernt es alle seine grünen Marker.%LINEBREAK%Concordianischer Wirbel: Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Omicron Group Pilot":
           name: """Pilot der Omicron-Gruppe"""
           text: """Die Raumfähre der Lambda-Klasse zeichnet sich durch ihre außergewöhnliche Drei-Tragflächen-Form und modernste Sensortechnologie aus. Als leichtes Multifunktionsschiff übernimmt sie eine wichtige Rolle in der Imperialen Flotte."""
        "Onyx Squadron Ace":
           name: """Fliegerass der Onyx-Staffel"""
           text: """Der experimentelle TIE-Abwehrjäger stellt alle anderen modernen Sternenjäger in den Schatten, wenngleich Größe, Schubkraft und Bewaffnung das Gewicht und den Preis des Modells in die Höhe treiben.%LINEBREAK%Vollgas: Nachdem du ein Manöver mit Geschwindigkeit 3–5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Onyx Squadron Scout":
           name: """Aufklärer der Onyx-Staffel"""
           text: """Der für den Langzeiteinsatz konzipierte TIE/ag wird in erster Linie von Elitepiloten geflogen, die das Potential des schwer bewaffneten und wendigen Jägers voll ausschöpfen können."""
        "Outer Rim Pioneer":
           name: """Pionier aus dem Outer Rim"""
           text: """Befreundete Schiffe in Reichweite 0–1 können Angriffe in Reichweite 0 zu Hindernissen durchführen.%LINEBREAK%Co-Pilot: Solange du angedockt bist, hat dein Träger-Schiff deine Piloten-Fähigkeit zusätzlich zu seiner eigenen."""
        "Outer Rim Smuggler":
           name: """Schmuggler aus dem """
           text: """Mit seiner robusten Bauweise und modularen Konstruktion gehört der YT-1300 zu den beliebtesten, weitverbreitetsten und am stärksten modifizierten Raumfrachtern der Galaxis. """
        "Palob Godalhi":
           name: """Palob Godalhi"""
           text: """Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in deinem Feuerwinkel in Reichweite 0–2 wählen. Falls du das tust, transferiere 1 Fokus- oder Ausweichmarker von jenem Schiff auf dich selbst."""
        "Partisan Renegade":
           name: """Überzeugter Partisan"""
           text: """Ursprünglich hatten sich Saw Gerreras Partisanen während der Klonkriege formiert, um den Streitkräften der Separatisten auf Onderon die Stirn zu bieten. Als das Imperium die Macht übernahm, setzten sie ihren Kampf gegen die Tyrannei einfach fort."""
        "Patrol Leader":
           name: """Patrouillenführer"""
           text: """Das Kommando über einen VT-49-Decimator zu erhalten, gilt unter imperialen Flottenoffizieren der mittleren Rangebenen als äußerst erstrebenswertes Ziel."""
        "Phoenix Squadron Pilot":
           name: """Pilot der Phönix-Staffel"""
           text: """Unter der Führung von Commander Jun Sato stellen sich die tapferen, aber unerfahrenen Piloten der Phönix-Staffel dem aussichtslosen Kampf gegen das Galaktische Imperium.%LINEBREAK%Schwenkbare Schubdüsen: Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Planetary Sentinel":
           name: """Planetarer Wachposten"""
           text: """Zum Schutz seiner vielen militärischen Einrichtungen benötigt das Imperium eine mobile und wachsame Verteidigungsstreitmacht.%LINEBREAK% Adaptive Querruder: Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, musst du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        "Prince Xizor":
           name: """Prinz Xizor"""
           text: """Solange du verteidigst, nach dem Schritt „Ergebnisse neutralisieren“, darf ein anderes befreundetes Schiff in Reichweite 0–1 und im Angriffswinkel 1 %HIT%- oder %CRIT%-Schaden erleiden. Falls es das tut, negiere 1 passendes Ergebnis.%LINEBREAK%Mikrodüsen: Solange du eine Fassrolle durchführst, musst du die %BANKLEFT%-oder %BANKRIGHT%-Schablone  anstatt der %STRAIGHT%-Schablone verwenden."""
        "Quinn Jast":
           name: """Quinn Jast"""
           text: """Zu Beginn der Kampfphase darfst du 1 Entwaffnet-Marker erhalten, um 1 %CHARGE% von 1 deiner ausgerüsteten Aufwertungen wiederherzustellen.%LINEBREAK%Waffenaufhängung: Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Rear Admiral Chiraneau":
           name: """Konteradmiral Chiraneau"""
           text: """Solange du einen Angriff durchführst, falls du verstärkt bist und der Verteidiger in dem %FULLFRONTARC% oder %FULLREARARC% ist, der zu deinem Verstärkungsmarker passt, darfst du 1 deiner %FOCUS%-Ergebnisse in ein %CRIT%-Ergebnis ändern."""
        "Rebel Scout":
           name: """Rebellen-Aufklärer"""
           text: """Ein Vogel mit ausgebreiteten Schwingen diente der Corellianischen Ingenieursgesellschaft als Vorbild für das Design der „Hawk“-Serie, einer Reihe von erstklassigen Transportschiffen. Der flinke und robuste HWK-290 wird oft von Rebellenagenten als mobile Operationsbasis eingesetzt."""
        "Red Squadron Veteran":
           name: """Veteran der roten Staffel"""
           text: """Die rote Staffel wurde als Elite-Jägerverband gegründet und zählt einige der besten Piloten der Allianz zu ihren Mitgliedern."""
        "Rexler Brath":
           name: """Rexler Brath"""
           text: """Nachdem du einen Angriff durchgeführt hast, der getroffen hat, falls du ausweichst, lege 1 der Schadenskarten des Verteidigers offen.%LINEBREAK%Vollgas: Nachdem du ein Manöver mit Geschwindigkeit 3–5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Rho Squadron Pilot":
           name: """Pilot der Rho-Staffel"""
           text: """Die Elitepiloten der Rho-Staffel nutzen die Xg-1-Angriffskonfiguration sowie das Os-1-Waffenarsenal des Sternflüglers der Alpha-Klasse mit verheerender Effizienz, um der Rebellion das Fürchten zu lehren. """
        "Roark Garnet":
           name: """Roark Garnet"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff in deinem Feuerwinkel wählen. Falls du das tust, kämpft es in dieser Phase bei Initiative 7 anstatt bei seiner normalen Initiative."""
        "Rogue Squadron Escort":
           name: """Eskorte der Renegaten-Staffel"""
           text: """Die Spitzenpiloten der Renegaten-Staffel gehören zur absoluten Elite der Rebellion. %LINEBREAK% Experimentelle Scanner: Du kannst Ziele jenseits von Reichweite 3 erfassen. Du kannst keine Ziele in Reichweite 1 erfassen."""
        "Saber Squadron Ace":
           name: """Fliegerass der Saber-Staffel"""
           text: """Angeführt von Baron Soontir Fel, gehören die Piloten der Saber-Staffel zur absoluten Elite des Imperiums. Ihre TIE-Abfangjäger werden mit blutroten Streifen markiert, um Piloten mit mindestens zehn bestätigten Abschüssen zu kennzeichnen.%LINEBREAK%Automatische Schubdüsen: Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Sabine Wren":
           name: """Sabine Wren"""
           text: """Bevor du aktiviert wirst, darfst du eine %BARRELROLL%- oder %BOOST%-Aktion durchführen.%LINEBREAK%Geladen und entsichert: Solange du angedockt bist, nachdem dein Trägerschiff einen %FRONTARC%-Primärangriff oder %TURRET%-Angriff durchgeführt hat, darf es einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Sabine Wren (TIE Fighter)":
           name: """Sabine Wren"""
           text: """Bevor du aktiviert wirst, darfst du eine %BARRELROLL%- oder %BOOST%-Aktion durchführen."""
        "Sabine Wren (Scum)":
           name: """Sabine Wren"""
           text: """Solange du verteidigst, falls der Angreifer in deinem %SINGLETURRETARC% in Reichweite 0–2 ist, darfst du 1 %FOCUS%-Ergebnis zu deinen Würfelergebnissen hinzufügen."""
        "Sarco Plank":
           name: """Sarco Plank"""
           text: """Solange du verteidigst, darfst du deinen Wendigkeitswert so behandeln, als würde er der Geschwindigkeit des Manövers entsprechen, das du in dieser Runde ausgeführt hast.%LINEBREAK%Schlepperstrahl: Aktion: Wähle ein Schiff in deinem %FRONTARC% in Reichweite 1. Jenes Schiff erhält 1 Fangstrahlmarker oder 2 Fangstrahlmarker, falls es in deinem %BULLSEYEARC% in Reichweite 1 ist."""
        "Saw Gerrera":
           name: """Saw Gerrera"""
           text: """Solange ein beschädigtes befreundetes Schiff in Reichweite 0–3 einen Angriff durchführt, darf es 1 Angriffswürfel neu werfen."""
        "Scarif Base Pilot":
           name: """Pilot der Scarif-Basis"""
           text: """Der TIE-Schnitter war für den Transport von Elitetruppen in besonders hart umkämpfte Gefechtszonen konzipiert. Berühmt wurde er in der Schlacht von Scarif, wo er Direktor Krennics gefürchtete Todestruppen transportierte.%LINEBREAK%Adaptive Querruder: Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, musst du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        "Scimitar Squadron Pilot":
           name: """Pilot der Scimitar-Staffel"""
           text: """Der TIE/sa ist außergewöhnlich wendig für einen Bomber und kann sein Ziel mit absoluter Präzision anvisieren, um den Kollateralschaden zu minimieren. %LINEBREAK%Wendiger Bomber: Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Serissu":
           name: """Serissu"""
           text: """Solange ein befreundetes Schiff in Reichweite 0–1 verteidigt, darf es 1 seiner Würfel neu werfen.%LINEBREAK%Waffenaufhängung: Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Seventh Sister":
           name: """Siebte Schwester"""
           text: """Solange du einen Primärangriff durchführst, vor dem Schritt „Ergebnisse neutralisieren“, darfst du 2 %FORCE% ausgeben, um 1 %EVADE%-Ergebnis zu negieren."""
        "Seyn Marana":
           name: """Seyn Marana"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %CRIT%-Ergebnis ausgeben. Falls du das tust, teile dem Verteidiger 1 verdeckte Schadenskarte zu, dann negiere deine übrigen Ergebnisse."""
        "Shadowport Hunter":
           name: """Schattenhafen-Jäger"""
           text: """Verbrechersyndikate fördern die mörderischen Talente ihrer treuen Geschäftspartner, indem sie sie mit der besten Technologie auf dem Markt ausstatten, beispielsweise mit dem schnellen und vorzüglichen Jagdschiff der Lanzen-Klasse."""
        "Shara Bey":
           name: """Shara Bey"""
           text: """Solange du verteidigst oder einen Primärangriff durchführst, darfst du 1 Zielerfassung, die du auf dem feindlichen Schiff hast, ausgeben, um 1 %FOCUS%-Ergebnis zu deinen Würfelergebnissen hinzuzufügen."""
        "Sienar Specialist":
           name: """Experte von Sienar"""
           text: """Bei der Entwicklung des TIE-Aggressors setzte Sienar Flottensysteme mehr auf Vielseitigkeit und Leistung als auf reine Kosteneffizienz."""
        "Sigma Squadron Ace":
           name: """Fliegerass der Sigma-Staffel"""
           text: """Der TIE-Phantom ist nicht nur mit Schilden und einem Hyperantrieb, sondern auch mit fünf Laserkanonen ausgestattet, was ihn zu einem der schlagkräftigsten Jäger des Imperiums macht.%LINEBREAK%Stygium-Gitter: Nachdem du dich enttarnt hast, darfst du eine %EVADE%-Aktion durchführen. Zu Beginn der Endphase darfst du 1 Ausweichmarker ausgeben, um 1 Tarnungsmarker zu erhalten."""
        "Skull Squadron Pilot":
           name: """Pilot der Skull-Staffel"""
           text: """Die Fliegerasse der Skull-Staffel bevorzugen eine aggressive Kampftaktik und vertrauen dabei auf die schwenkbaren Tragflächen ihrer Schiffe, um ihre Beute mit unübertroffener Agilität zur Strecke zu bringen. %LINEBREAK% Concordianischer Wirbel: Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Sol Sixxa":
           name: """Sol Sixxa"""
           text: """Falls du ein Gerät unter Verwendung der [1 %STRAIGHT%]-Schablone abwerfen würdest, darfst du es stattdessen unter Verwendung einer beliebigen anderen Schablone mit Geschwindigkeit 1 abwerfen."""
        "Soontir Fel":
           name: """Soontir Fel"""
           text: """Zu Beginn der Kampfphase, falls ein feindliches Schiff in deinem %BULLSEYEARC% ist, erhalte 1 Fokusmarker.%LINEBREAK%Automatische Schubdüsen: Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Spice Runner":
           name: """Spiceschmuggler"""
           text: """Trotz seines vergleichsweise kleinen Laderaums ist der HWK-290 ein beliebtes Modell unter Schmugglern, die sich auf den diskreten Transport von hochwertigen Gütern spezialisiert haben."""
        "Storm Squadron Ace":
           name: """Fliegerass der Storm-Staffel"""
           text: """Der TIE-x1-Turbojäger wurde nur in geringer Stückzahl produziert, dafür wurden viele seiner Innovationen bei der Entwicklung von Sienars nächstem TIE-Modell, dem TIE-Abfangjäger, übernommen.%LINEBREAK%Verbesserter Zielcomputer: Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Sunny Bounder":
           name: """Sunny Bounder"""
           text: """Solange du verteidigst oder einen Angriff durchführst, nachdem du deine Würfel geworfen oder neu geworfen hast, falls du auf jedem deiner Würfel dasselbe Ergebnis hast, darfst du 1 passendes Ergebnis hinzufügen.%LINEBREAK%Waffenaufhängung: Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Tala Squadron Pilot":
           name: """Pilot der Tala-Staffel"""
           text: """Die AF4-Serie ist das jüngste Modell der bewährten Kopfjäger-Produktreihe, die mit ihrem günstigen Preis und ihrer robusten Bauweise zu den Favoriten vieler unabhängiger Organisationen wie der Rebellion gehört."""
        "Talonbane Cobra":
           name: """Talonbane Cobra"""
           text: """Solange du in Angriffsreichweite 3 verteidigst oder in Angriffsreichweite 1 einen Angriff durchführst, wirf 1 zusätzlichen Würfel."""
        "Tansarii Point Veteran":
           name: """Veteran von Tansarii """
           text: """Mit dem Abschuss von Talonbane Cobra, einem Spitzenpiloten der Schwarzen Sonne, entschieden die Car’das-Schmuggler die Schlacht um Tansarii Point für sich. Bis heute sind die Veteranen dieses Scharmützels im ganzen Sektor hochangesehen. %LINEBREAK%Waffenaufhängung: Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Tel Trevura":
           name: """Tel Trevura"""
           text: """Falls du zerstört werden würdest, darfst du 1 %CHARGE% ausgeben. Falls du das tust, lege stattdessen alle deine Schadenskarten ab, erleide 5 %HIT%-Schaden und platziere dich selbst in der Reserve. Zu Beginn der nächsten Planungsphase platziere dich selbst innerhalb von Reichweite 1 deines Spielflächenrandes."""
        "Tempest Squadron Pilot":
           name: """Pilot der Tornado-Staffel"""
           text: """Der TIE-Turbojäger war eine Weiterentwicklung der erfolgreichen TIE/ln-Baureihe, zusätzlich ausgestattet mit Deflektorschilden, besseren Waffen, geknickten Solarzellen und einem Hyperantrieb.%LINEBREAK%Verbesserter Zielcomputer: Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Ten Numb":
           name: """Ten Numb"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1 Stressmarker ausgeben, um alle deine %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern."""
        "Thane Kyrell":
           name: """Thane Kyrell"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %FOCUS%-, %HIT%- oder %CRIT%-Ergebnis ausgeben, um dir die verdeckten Schadenskarten des Verteidigers anzusehen, 1 zu wählen und sie offenzulegen."""
        "Tomax Bren":
           name: """Tomax Bren"""
           text: """Nachdem du eine %RELOAD%-Aktion durchgeführt hast, darfst du 1 %CHARGE% von 1 deiner ausgerüsteten %TALENT%-Aufwertungskarten wiederherstellen. %LINEBREAK%Wendiger Bomber: Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Torani Kulda":
           name: """Torani Kulda"""
           text: """Nachdem du einen Angriff durchgeführt hast, erleidet jedes feindliche Schiff in deinem %BULLSEYEARC%1 %HIT%-Schaden, es sei denn, es entfernt 1 grünen Marker.%LINEBREAK%Todsicherer Treffer: Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, können Verteidigungswürfel nicht unter Verwendung von grünen Markern modifiziert werden."""
        "Torkil Mux":
           name: """Torkil Mux"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff in deinem Feuerwinkel wählen. Falls du das tust, kämpft jenes Schiff in dieser Runde bei Initiative 0 anstatt bei seinem normalen Initiativewert."""
        "Trandoshan Slaver":
           name: """Trandoshanischer Sklavenjäger"""
           text: """Sein geräumiges Trippeldecker-Design macht den YV-666 zu einem beliebten Schiff für Sklavenhändler und Kopfgeldjäger, die oft ein ganzes Deck für Gefangenentransporte umrüsten."""
        "Turr Phennir":
           name: """Turr Phennir"""
           text: """Nachdem du einen Angriff durchgeführt hast, darfst du eine %BARRELROLL%- oder %BOOST%-Aktion durchführen, auch falls du gestresst bist.%LINEBREAK%Automatische Schubdüsen: Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Unkar Plutt":
           name: """Unkar Plutt"""
           text: """Zu Beginn der Kampfphase, falls 1 oder mehrere andere Schiffe in Reichweite 0 sind, erhalten du und jedes andere Schiff in Reichweite 0 je 1 Fangstrahlmarker.%LINEBREAK%Schlepperstrahl: Aktion: Wähle ein Schiff in deinem %FRONTARC% in Reichweite 1. Jenes Schiff erhält 1 Fangstrahlmarker oder 2 Fangstrahlmarker, falls es in deinem %BULLSEYEARC% in Reichweite 1 ist."""
        "Valen Rudor":
           name: """Valen Rudor"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0–1 verteidigt hat (nachdem ggf. Schaden abgehandelt worden ist), darfst du eine Aktion durchführen."""
        "Ved Foslo":
           name: """Ved Foslo"""
           text: """Solange du ein Manöver ausführst, darfst du stattdessen ein Manöver derselben Flugrichtung und Schwierigkeit, aber einer um 1 höheren oder niedrigeren Geschwindigkeit ausführen.%LINEBREAK%Verbesserter Zielcomputer: Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Viktor Hel":
           name: """Viktor Hel"""
           text: """Nachdem du verteidigt hast, falls du nicht genau 2 Verteidigungswürfel geworfen hast, erhält der Angreifer 1 Stressmarker."""
        "Warden Squadron Pilot":
           name: """Pilot der Beschützer-Staffel"""
           text: """Der K-Flügler von Koensayr zeichnet sich durch einen topmodernen Sublicht-Antriebsmotor (kurz: SLAM) sowie beispiellose achtzehn Waffenaufhängungen aus. Was Geschwindigkeit und Feuerkraft anbelangt, steht er außer Konkurrenz."""
        "Wedge Antilles":
           name: """Wedge Antilles"""
           text: """Solange du einen Angriff durchführst, wirft der Verteidiger 1 Verteidigungswürfel weniger."""
        "Wild Space Fringer":
           name: """Grenzgänger aus dem Wilden Raum"""
           text: """Serienmäßig bietet der YT-2400 reichlich Laderaum. Allerdings opfern die meisten Besitzer einen Teil davon, um Platz für modifizierte Waffensysteme und extragroße Triebwerke zu schaffen.%LINEBREAK%Toter Winkel: Solange du einen Primärangriff in Reichweite 0–1 durchführst, wende den Bonus für Reichweite 0–1 nicht an und wirf 1 Angriffswürfel weniger."""
        "Wullffwarro":
           name: """Lowhhrick"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0–1 zum Verteidiger geworden ist, darfst du 1 Verstärkungsmarker ausgeben. Falls du das tust, erhält jenes Schiff 1 Ausweichmarker."""
        "Zealous Recruit":
           name: """Fanatischer Rekrut"""
           text: """Jeder Pilot eines mandalorianischen Fangjägers beherrscht den Concordianischen Wirbel, ein Manöver, bei dem das schmale Profil des Jägers für einen tödlichen Frontalangriff genutzt wird. %LINEBREAK% Concordianischer Wirbel: Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Zertik Strom":
           name: """Zertik Strom"""
           text: """Während der Endphase darfst du eine Zielerfassung ausgeben, die du auf einem feindlichen Schiff hast, um 1 der Schadenskarten jenes Schiffes offenzulegen.%LINEBREAK%Verbesserter Zielcomputer: Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Zuckuss":
           name: """Zuckuss"""
           text: """Solange du einen Primärangriff durchführst, darfst du 1 zusätzlichen Angriffswürfel werfen. Falls du das tust, wirft der Verteidiger 1 zusätzlichen Verteidigungswürfel."""
        '"Chopper"':
           name: """„Chopper“"""
           text: """Zu Beginn der Kampfphase erhält jedes feindliche Schiff in Reichweite 0 2 Störsignalmarker. %LINEBREAK%Heckgeschütz: Solange du ein angedocktes Schiff hast, hast du eine %REARARC%-Primärwaffe mit einem Angriffswert in Höhe des Angriffswertes der %FRONTARC%-Primärwaffe deines angedockten Schiffes."""
        '"Countdown"':
           name: """„Countdown“"""
           text: """Solange du verteidigst, nach dem Schritt „Ergebnisse neutralisieren“, falls du nicht gestresst bist, darfst du 1 %HIT%-Schaden erleiden und 1 Stressmarker erhalten. Falls du das tust, negiere alle Würfelergebnisse.%LINEBREAK%Adaptive Querruder: Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, musst du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        '"Deathfire"':
           name: """„Todesfeuer“"""
           text: """Nachdem du zerstört worden bist, bevor du entfernt wirst, darfst du einen Angriff durchführen und 1 Gerät abwerfen oder starten.%LINEBREAK%Wendiger Bomber: Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        '"Deathrain"':
           name: """„Todesregen“"""
           text: """Nachdem du ein Gerät abgeworfen oder gestartet hast, darfst du eine Aktion durchführen."""
        '"Double Edge"':
           name: """„Doppelklinge“"""
           text: """Nachdem du einen %TURRET%- oder %MISSILE%-Angriff durchgeführt hast, der verfehlt hat, darfst du unter Verwendung einer anderen Waffe einen Bonusangriff durchführen."""
        '"Duchess"':
           name: """„Herzogin“"""
           text: """Du darfst wählen, Adaptive Querruder nicht zu verwenden. %LINEBREAK%Du darfst Adaptive Querruder verwenden, auch solange du gestresst bist.%LINEBREAK%Adaptive Querruder: Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, musst du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        '"Dutch" Vander':
           name: """„Dutch“ Vander"""
           text: """Nachdem du die %LOCK%-Aktion durchgeführt hast, darfst du 1 befreundetes Schiff in Reichweite 1–3 wählen. Jenes Schiff darf das Objekt, das du als Ziel erfasst hast, als Ziel erfassen, wobei es die Reichweitenbeschränkung ignoriert."""
        '"Echo"':
           name: """„Echo“"""
           text: """Solange du dich enttarnst, musst du die [2 %BANKLEFT%]- oder [2 %BANKRIGHT%]-Schablone anstatt der [2 %STRAIGHT%]-Schablone verwenden.%LINEBREAK%Stygium-Gitter: Nachdem du dich enttarnt hast, darfst du eine %EVADE%-Aktion durchführen. Zu Beginn der Endphase darfst du 1 Ausweichmarker ausgeben, um 1 Tarnungsmarker zu erhalten."""
        '"Howlrunner"':
           name: """„Howlrunner“"""
           text: """Solange ein befreundetes Schiff in Reichweite 0–1 einen Primärangriff durchführt, darf jenes Schiff 1 Angriffswürfel neu werfen."""
        '"Leebo"':
           name: """„Leebo“"""
           text: """Nachdem du verteidigt oder einen Angriff durchgeführt hast, falls du einen Berechnungsmarker ausgegeben hast, erhalte 1 Berechnungsmarker.%LINEBREAK%Toter Winkel: Solange du einen Primärangriff in Reichweite 0–1 durchführst, wende den Bonus für Reichweite 0–1 nicht an und wirf 1 Angriffswürfel weniger."""
        '"Mauler" Mithel':
           name: """„Mauler“ Mithel"""
           text: """Solange du einen Angriff in Angriffsreichweite 1 durchführst, wirf 1 zusätzlichen Angriffswürfel."""
        '"Night Beast"':
           name: """„Nachtbestie“"""
           text: """Nachdem du ein blaues Manöver vollständig ausgeführt hast, darfst du eine %FOCUS%-Aktion durchführen."""
        '"Pure Sabacc"':
           name: """„Voller Sabacc“"""
           text: """Solange du einen Angriff durchführst, falls du 1 oder weniger Schadenskarten hast, darfst du 1 zusätzlichen Angriffswürfel werfen.%LINEBREAK%Adaptive Querruder: Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, musst du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        '"Redline"':
           name: """„Rote Linie“"""
           text: """Du kannst bis zu 2 Zielerfassungen aufrechterhalten. %LINEBREAK%Nachdem du eine Aktion durchgeführt hast, darfst du ein Ziel erfassen."""
        '"Scourge" Skutu':
           name: """„Geißel“ Skutu """
           text: """Solange du einen Angriff gegen einen Verteidiger in deinem %BULLSEYEARC% durchführst, wirf 1 zusätzlichen Angriffswürfel."""
        '"Vizier"':
           name: """„Wesir“"""
           text: """Nachdem du unter Verwendung deiner Schiffsfähigkeit Adaptive Querruder ein Manöver mit Geschwindigkeit 1 vollständig ausgeführt hast, darfst du eine %COORDINATE%-Aktion durchführen. Falls du das tust, überspringe deinen Schritt „Aktion durchführen“.%LINEBREAK%Adaptive Querruder: Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, musst du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        '"Wampa"':
           name: """„Wampa“"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %CHARGE% ausgeben, um 1 zusätzlichen Angriffswürfel zu werfen.%LINEBREAK%Nach dem Verteidigen, verliere 1 %CHARGE%."""
        '"Whisper"':
           name: """„Geflüster“"""
           text: """Nachdem du einen Angriff durchgeführt hast, der getroffen hat, erhalte 1 Ausweichmarker.%LINEBREAK%Stygium-Gitter: Nachdem du dich enttarnt hast, darfst du eine %EVADE%-Aktion durchführen. Zu Beginn der Endphase darfst du 1 Ausweichmarker ausgeben, um 1 Tarnungsmarker zu erhalten."""
        '"Zeb" Orrelios':
           name: """„Zeb“ Orrelios"""
           text: """Solange du verteidigst, werden %CRIT%-Ergebnisse neutralisiert, bevor %HIT%-Ergebnisse neutralisiert werden.%LINEBREAK%Geladen und entsichert: Solange du angedockt bist, nachdem dein Trägerschiff einen %FRONTARC%-Primärangriff oder %TURRET%-Angriff durchgeführt hat, darf es einen Bonus-%REARARC%-Primärangriff durchführen."""
        '"Zeb" Orrelios (Sheathipede)':
           name: """„Zeb“ Orrelios"""
           text: """Solange du verteidigst, werden %CRIT%-Ergebnisse neutralisiert, bevor %HIT%-Ergebnisse neutralisiert werden.%LINEBREAK%Kommunikationsantennen: Solange du angedockt bist, erhält dein Trägerschiff %COORDINATE%. Bevor dein Trägerschiff aktiviert wird, darf es eine %COORDINATE%-Aktion durchführen."""
        '"Zeb" Orrelios (TIE Fighter)':
           name: """„Zeb“ Orrelios"""
           text: """Solange du verteidigst, werden %CRIT%-Ergebnisse neutralisiert, bevor %HIT%-Ergebnisse neutralisiert werden."""

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
