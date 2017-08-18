exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.de = 'Deutsch'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations.Deutsch =
    action:
        "Barrel Roll": "Fassrolle"
        "Boost": "Schub"
        "Evade": "Ausweichen"
        "Focus": "Fokussierung"
        "Target Lock": "Zielerfassung"
        "Recover": "Aufladen"
        "Reinforce": "Verstärken"
        "Jam": "Störsignal"
        "Coordinate": "Koordination"
        "SLAM": "SLAM"
        "Cloak": "Tarnen"
    slot:
        "Astromech": "Astromech"
        "Bomb": "Bomben"
        "Cannon": "Kanonen"
        "Crew": "Mannschaft"
        "Elite": "Elite"
        "Missile": "Raketen"
        "System": "System"
        "Torpedo": "Torpedo"
        "Cargo": "Fracht"
        "Turret": "Geschütz"
        "Hardpoint": "Waffenaufhängung"
        "Team": "Team"
        "Illicit": "Schmuggelwaren"
        "Salvaged Astromech": "Abgewrackter Astromech"
        "Tech": "Technik"
    sources: # needed?
        "Core": "Grundspiel"
        "A-Wing Expansion Pack": "A-Wing Erweiterung"
        "B-Wing Expansion Pack": "B-Wing Erweiterung"
        "X-Wing Expansion Pack": "X-Wing Erweiterung"
        "Y-Wing Expansion Pack": "Y-Wing Erweiterung"
        "Millennium Falcon Expansion Pack": "Millenium Falke Erweiterung"
        "HWK-290 Expansion Pack": "HWK-290 Erweiterung"
        "TIE Fighter Expansion Pack": "TIE-Jäger Erweiterung"
        "TIE Interceptor Expansion Pack": "TIE-Abfangjäger Erweiterung"
        "TIE Bomber Expansion Pack": "TIE-Bomber Erweiterung"
        "TIE Advanced Expansion Pack": "TIE-Advanced Erweiterung"
        "Lambda-Class Shuttle Expansion Pack": "Raumfähre der Lambda-Klasse Erweiterung"
        "Slave I Expansion Pack": "Sklave I Erweiterung"
        "Imperial Aces Expansion Pack": "Fliegerasse des Imperiums Erweiterung"
        "Rebel Transport Expansion Pack": "Rebellentransporter Erweiterung"
        "Z-95 Headhunter Expansion Pack": "Z-95-Kopfjäger Erweiterung"
        "TIE Defender Expansion Pack": "TIE-Jagdbomber Erweiterung"
        "E-Wing Expansion Pack": "E-Wing Erweiterung"
        "TIE Phantom Expansion Pack": "TIE-Phantom Erweiterung"
        "Tantive IV Expansion Pack": "Tantive IV Erweiterung"
        "Rebel Aces Expansion Pack": "Fliegerasse der Rebellenallianz Erweiterung"
        "YT-2400 Freighter Expansion Pack": "YT-2400-Frachter Erweiterung"
        "VT-49 Decimator Expansion Pack": "VT-49 Decimator Erweiterung"
        "StarViper Expansion Pack": "SternenViper Erweiterung"
        "M3-A Interceptor Expansion Pack": "M3-A Abfangjäger Erweiterung"
        "IG-2000 Expansion Pack": "IG-2000 Erweiterung"
        "Most Wanted Expansion Pack": "Abschaum und Kriminelle Erweiterung"
        "Imperial Raider Expansion Pack": "Imperiale Sturm-Korvette Erweiterung"
        "Hound's Tooth Expansion Pack": "Reisszahn Erweiterung"
        "Kihraxz Fighter Expansion Pack": "Kihraxz-Jäger Erweiterung"
        "K-Wing Expansion Pack": "K-Wing Erweiterung"
        "TIE Punisher Expansion Pack": "TIE-Vergelter Erweiterung"
        "The Force Awakens Core Set": "Das Erwachen der Macht Grundspiel"
        "Imperial Assault Carrier Expansion Pack": "Imperialer Angriffsträger Erweiterung"
        "T-70 X-Wing Expansion Pack": "T-70-X-Flügler Erweiterung"
        "TIE/fo Fighter Expansion Pack": "TIE/EO-Jäger Erweiterung"
        "Inquisitor's TIE Expansion Pack": "TIE des Inquisitors Erweiterung"
        "Mist Hunter Expansion Pack": "Nebeljäger Erweiterung"
        "Punishing One Expansion Pack": "Vollstrecker Eins Erweiterung"
        "Ghost Expansion Pack": "Ghost Erweiterung"
        "Imperial Veterans Expansion Pack": "Veteranen des Imperiums Erweiterung"
        "ARC-170 Expansion Pack": "ARC-170 Erweiterung"
        "Special Forces TIE Expansion Pack": "TIE der Spezialeinheiten Erweiterung"
        "Protectorate Starfighter Expansion Pack": "Sternjäger des Protektors Erweiterung"
        "Shadow Caster Expansion Pack": "Shadow Caster Erweiterung"
        "Heroes of the Resistance Expansion Pack": "Helden des Widerstands Erweiterung"
        "U-Wing Expansion Pack": "U-Flügler Erweiterung"
        "TIE Striker Expansion Pack": "TIE-Stürmer Erweiterung"
        "Quadjumper Expansion Pack": "Quadjumper Erweiterung"
        "Sabine's TIE Fighter Expansion Pack": "Sabines TIE-Jäger Erweiterung"
        "Upsilon-class Shuttle Expansion Pack": "Shuttle der Ypsilon-Klasse Erweiterung"
        "C-ROC Cruiser Expansion Pack": "C-ROC Kreuzer Erweiterung"
        "TIE Aggressor Expansion Pack": "Tie Aggressor Erweiterung"
        "Scurrg H-6 Bomber Expansion Pack": "Scurrg H-6 Bomber Erweiterung"
        "Auzituck Gunship Expansion Pack": "Auzituck-Kanonenboot Erweiterung"
    ui:
        shipSelectorPlaceholder: "Wähle ein Schiff"
        pilotSelectorPlaceholder: "Wähle einen Piloten"
        upgradePlaceholder: (translator, language, slot) ->
            "kein #{translator language, 'slot', slot} Aufwertung"
        modificationPlaceholder: "keine Modifikation"
        titlePlaceholder: "kein Titel"
        upgradeHeader: (translator, language, slot) ->
            "#{translator language, 'slot', slot} Aufwertung"
        unreleased: "unveröffentlicht"
        epic: "Episch"
        limited: "limitiert"
    byCSSSelector:
        '.translate.sort-cards-by': 'Sortiere Karten nach'
        '.unreleased-content-used .translated': 'Diese Liste verwendet noch nicht veröffentlichte Inhalte!'
        '.epic-content-used .translated': 'Diese Staffel verwendet epischen Inhalt!'
        '.illegal-epic-too-many-small-ships .translated': 'Du kannst nicht mehr als 12 kleine Schiffe einsetzen!'
        '.illegal-epic-too-many-large-ships .translated': 'Du kannst nicht mehr als 6 große Schiffe einsetzen!'
        '.collection-invalid .translated': 'Du kannst diese Liste nicht mit deiner Sammlung aufstellen!'
        # Type selector
        '.game-type-selector option[value="standard"]': 'Standard'
        '.game-type-selector option[value="custom"]': 'Benutzerdefiniert'
        '.game-type-selector option[value="epic"]': 'Episch'
        '.game-type-selector option[value="team-epic"]': 'Team Episch'
        # Card browser
        '.xwing-card-browser option[value="name"]': 'Name'
        '.xwing-card-browser option[value="source"]': 'Quelle'
        '.xwing-card-browser option[value="type-by-points"]': 'Typ (Punkte)'
        '.xwing-card-browser option[value="type-by-name"]': 'Typ (Name)'
        '.xwing-card-browser .translate.select-a-card': 'Wähle eine Karte aus der Liste.'
        '.xwing-card-browser .info-range td': 'Reichweite'
        # Info well
        '.info-well .info-ship td.info-header': 'Schiff'
        '.info-well .info-skill td.info-header': 'Pilotenwert'
        '.info-well .info-actions td.info-header': 'Aktionen'
        '.info-well .info-upgrades td.info-header': 'Aufwertungen'
        '.info-well .info-range td.info-header': 'Reichweite'
        # Squadron edit buttons
        '.clear-squad' : 'Neue Staffel'
        '.save-list' : 'Speichern'
        '.save-list-as' : 'Speichern als…'
        '.delete-list' : 'Löschen'
        '.backend-list-my-squads' : 'Staffel laden'
        '.view-as-text' : '<span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Drucken/Anzeigen als </span>Text'
        '.collection' : '<span class="hidden-phone"><i class="fa fa-folder-open hidden-phone hidden-tabler"></i>&nbsp;Deine Sammlung</span>'
        '.randomize' : 'Zufallsliste!'
        '.randomize-options' : 'Zufallslisten-Optionen…'
        '.notes-container > span' : 'Staffelnotizen'
        # Print/View modal
        '.bbcode-list' : 'Kopiere den BBCode von unten und füge ihn in deine Forenposts ein.<textarea></textarea>'
        '.vertical-space-checkbox' : """Platz für Schadenskarten und Aufwertungen im Druck berücksichtigen. <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Ausdrucken in Farbe. <input type="checkbox" class="toggle-color-print" />"""
        '.print-list' : '<i class="fa fa-print"></i>&nbsp;Druck'
        # Randomizer options
        '.do-randomize' : 'Zufall!'
        # Top tab bar
        '#empireTab' : 'Galaktisches Imperium'
        '#rebelTab' : 'Rebellen Allianz'
        '#scumTab' : 'Abschaum und Kriminelle'
        '#browserTab' : 'Karten Browser'
        '#aboutTab' : 'Über'
        '.from-xws' : 'Import von XWS (beta)'
        '.to-xws' : 'Export nach XWS (beta)'
        # Obstacles
        '.choose-obstacles' : 'Wähle Hindernisse'
        '.choose-obstacles-description' : 'Wähle bis zu drei Hindernisse, die im Permalink für externe Programmen eingefügt werden. (beta; Die Anzeige im Ausdruck, welche Hindernisse ausgewählt wurden, wird noch nicht unterstützt.)'
        '.coreasteroid0-select' : 'Grundspiel Asteroid 0'
        '.coreasteroid1-select' : 'Grundspiel Asteroid 1'
        '.coreasteroid2-select' : 'Grundspiel Asteroid 2'
        '.coreasteroid3-select' : 'Grundspiel Asteroid 3'
        '.coreasteroid4-select' : 'Grundspiel Asteroid 4'
        '.coreasteroid5-select' : 'Grundspiel Asteroid 5'
        '.yt2400debris0-select' : 'YT-2400 Trümmerfeld 0'
        '.yt2400debris1-select' : 'YT-2400 Trümmerfeld 1'
        '.yt2400debris2-select' : 'YT-2400 Trümmerfeld 2'
        '.vt49decimatordebris0-select' : 'VT-49 Trümmerfeld 0'
        '.vt49decimatordebris1-select' : 'VT-49 Trümmerfeld 1'
        '.vt49decimatordebris2-select' : 'VT-49 Trümmerfeld 2'
        '.core2asteroid0-select' : 'Erwachen der Macht Asteroid 0'
        '.core2asteroid1-select' : 'Erwachen der Macht Asteroid 1'
        '.core2asteroid2-select' : 'Erwachen der Macht Asteroid 2'
        '.core2asteroid3-select' : 'Erwachen der Macht Asteroid 3'
        '.core2asteroid4-select' : 'Erwachen der Macht Asteroid 4'
        '.core2asteroid5-select' : 'Erwachen der Macht Asteroid 5'

    singular:
        'pilots': 'Pilot'
        'modifications': 'Modifikation'
        'titles': 'Titel'
    types:
        'Pilot': 'Pilot'
        'Modification': 'Modifikation'
        'Title': 'Titel'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.Deutsch = () ->
    exportObj.cardLanguage = 'Deutsch'

    # Assumes cards-common has been loaded
    basic_cards = exportObj.basicCardData()
    exportObj.canonicalizeShipNames basic_cards

    exportObj.ships = basic_cards.ships

    exportObj.renameShip 'TIE Fighter', 'TIE-Jäger'
    exportObj.renameShip 'TIE Interceptor', 'TIE-Abfangjäger'
    exportObj.renameShip 'TIE Bomber', 'TIE-Bomber'
    exportObj.renameShip 'Z-95 Headhunter', 'Z-95-Kopfjäger'
    exportObj.renameShip 'TIE Defender', 'TIE-Jagdbomber'
    exportObj.renameShip 'Lambda-Class Shuttle', 'Raumfähre der Lambda-Klasse'
    exportObj.renameShip 'GR-75 Medium Transport', 'Medium-Transporter GR-75'
    exportObj.renameShip 'CR90 Corvette (Fore)', 'CR90-Korvette (Bug)'
    exportObj.renameShip 'CR90 Corvette (Aft)', 'CR90-Korvette (Heck)'
    exportObj.renameShip 'M3-A Interceptor', 'M3-A Abfangjäger'
    exportObj.renameShip 'Raider-class Corvette (Fore)', 'Korv. der Sturm-Klasse (Bug)'
    exportObj.renameShip 'Raider-class Corvette (Aft)', 'Korv. der Sturm-Klasse (Heck)'
    exportObj.renameShip 'TIE Phantom', 'TIE-Phantom'
    exportObj.renameShip 'Kihraxz Fighter', 'Kihraxz-Jäger'
    exportObj.renameShip 'TIE Punisher', 'TIE-Vergelter'
    exportObj.renameShip 'StarViper', 'SternenViper'
    exportObj.renameShip 'T-70 X-Wing', 'T-70-X-Flügler'
    exportObj.renameShip 'TIE/fo Fighter', 'TIE/EO-Jäger'
    exportObj.renameShip 'Gozanti-class Cruiser', 'Kreuzer der Gozanti-Klasse'
    exportObj.renameShip 'TIE Advanced Prototype', 'TIE-Turbojäger-Prototyp'
    exportObj.renameShip 'G-1A Starfighter', 'G-1A-Sternenjäger'
    exportObj.renameShip 'Attack Shuttle', 'Jagdshuttle'
    exportObj.renameShip 'TIE/sf Fighter', 'TIE/SE-Jäger'
    exportObj.renameShip 'Lancer-class Pursuit Craft', 'Jagdschiff der Lanzen-Klasse'
    exportObj.renameShip 'Protectorate Starfighter', 'Sternenjäger des Protektors'
    exportObj.renameShip 'U-Wing', 'U-Flügler'
    exportObj.renameShip 'TIE Striker', 'TIE-Stürmer'
    exportObj.renameShip 'Upsilon-class Shuttle', 'Shuttle der Ypsilon-Klasse'
    exportObj.renameShip 'C-ROC Cruiser', 'C-ROC Kreuzer'
    exportObj.renameShip 'Auzituck Gunship', 'Auzituck-Kanonenboot'
    exportObj.renameShip 'TIE Aggressor', 'TIE-Aggressor'
    pilot_translations =
        "Wedge Antilles":
            text: """Wenn du angreifst, sinkt der Wendigkeitswert des Verteidigers um 1 (Minimum 0)."""
        "Garven Dreis":
            text: """Wenn du einen Fokusmarker ausgibst, darfst du ihn auf ein anderes freundliches Schiff in Reichweite 1-2 legen (anstatt ihn abzulegen)."""
        "Red Squadron Pilot":
            name: "Pilot der Rot-Staffel"
        "Rookie Pilot":
            name: "Anfängerpilot"
        "Biggs Darklighter":
            text: """Andere freundliche Schiffe in Reichweite 1 dürfen nur dann angegriffen werden, wenn der Angreifer dich nicht zum Ziel bestimmen kann."""
        "Luke Skywalker":
            text: """Wenn du verteidigst, kannst du 1 deiner %FOCUS% in ein %EVADE% ändern."""
        "Gray Squadron Pilot":
            name: "Pilot der Grau-Staffel"
        '"Dutch" Vander':
            text: """Wähle ein anderes freundliches Schiff in Reichweite 1-2, nachdem du eine Zielerfassung durchgeführt hast. Das gewählte Schiff darf sofort ebenfalls eine Zielerfassung durchführen."""
        "Horton Salm":
            text: """Wenn du ein Ziel in Reichweite 2-3 angreifst, darfst du beliebig viele Leerseiten neu würfeln."""
        "Gold Squadron Pilot":
            name: "Pilot der Gold-Staffel"
        "Academy Pilot":
            ship: "TIE-Jäger"
            name: "Pilot der Akademie"
        "Obsidian Squadron Pilot":
            ship: "TIE-Jäger"
            name: "Pilot der Obsidian-Staffel"
        "Black Squadron Pilot":
            ship: "TIE-Jäger"
            name: "Pilot der Schwarz-Staffel"
        '"Winged Gundark"':
            ship: "TIE-Jäger"
            name: '"Geflügelter Gundark"'
            text: """Wenn du ein Ziel in Reichweite 1 angreifst, darfst du eines deiner %HIT% in ein %CRIT% ändern."""
        '"Night Beast"':
            name: '"Nachtbestie"'
            ship: "TIE-Jäger"
            text: """Nachdem du ein grünes Manöver ausgeführt hast, darfst du als freie Aktion eine Fokussierung durchführen."""
        '"Backstabber"':
            ship: "TIE-Jäger"
            text: """Wenn du bei deinem Angriff nicht im Feuerwinkel des Verteidigers bist, erhältst du 1 zusätzlichen Angriffswürfel."""
        '"Dark Curse"':
            ship: "TIE-Jäger"
            text: """Wenn du verteidigst, können angreifende Schiffe keine Fokusmarker ausgeben oder Angriffswürfel neu würfeln."""
        '"Mauler Mithel"':
            ship: "TIE-Jäger"
            text: """Wirf 1 zusätzlichen Angriffswürfel, wenn du ein Ziel in Reichweite 1 angreifst."""
        '"Howlrunner"':
            ship: "TIE-Jäger"
            name: '"Kreischläufer"'
            text: """Wenn ein anderes freundliches Schiff in Reichweite 1 mit seinen Primärwaffen angreift, darf es 1 Angriffswürfel neu würfeln."""
        "Maarek Stele":
            text: """Wenn ein Verteidiger durch deinen Angriff eine offene Schadenskarte erhalten würde, ziehst du stattdessen 3 Schadenskarten, wählst eine davon zum Austeilen und legst die restlichen ab."""
        "Tempest Squadron Pilot":
            name: "Pilot der Tornado-Staffel"
        "Storm Squadron Pilot":
            name: "Pilot der Storm-Staffel"
        "Darth Vader":
            text: """Im Schritt "Aktionen durchführen" darfst du 2 Aktionen durchführen."""
        "Alpha Squadron Pilot":
            name: "Pilot der Alpha-Staffel"
            ship: "TIE-Abfangjäger"
        "Avenger Squadron Pilot":
            name: "Pilot der Avenger-Staffel"
            ship: "TIE-Abfangjäger"
        "Saber Squadron Pilot":
            name: "Pilot der Saber-Staffel"
            ship: "TIE-Abfangjäger"
        "\"Fel's Wrath\"":
            ship: "TIE-Abfangjäger"
            text: """Wenn die Summe deiner Schadenskarten deinen Hüllenwert erreicht oder übersteigt, wirst du nicht sofort zerstört, sondern erst am Ende der Kampfphase."""
        "Turr Phennir":
            ship: "TIE-Abfangjäger"
            text: """Nachdem du angegriffen hast, darfst du eine freie Aktion Schub oder Fassrolle durchführen."""
        "Soontir Fel":
            ship: "TIE-Abfangjäger"
            text: """Immer wenn du einen Stressmarker erhältst, darfst du deinem Schiff auch einen Fokusmarker geben."""
        "Tycho Celchu":
            text: """Du darfst auch dann Aktionen durchführen, wenn du Stressmarker hast."""
        "Arvel Crynyd":
            text: """Wenn du angreifst, darfst du auch auf feindliche Schiffe zielen, deren Basen du berührst (vorausgesetzt sie sind innerhalb deines Feuerwinkels)."""
        "Green Squadron Pilot":
            name: "Pilot der Grün-Staffel"
        "Prototype Pilot":
            name: "Testpilot"
        "Outer Rim Smuggler":
            name: "Schmuggler aus dem Outer Rim"
        "Chewbacca":
            text: """Wenn du eine offene Schadenskarte erhältst, wird sie sofort umgedreht (ohne dass ihr Kartentext in Kraft tritt)."""
        "Lando Calrissian":
            text: """Wähle nach dem Ausführen eines grünen Manövers ein anderes freundliches Schiff in Reichweite 1. Dieses Schiff darf eine freie Aktion aus seiner Aktionsleiste durchführen."""
        "Han Solo":
            text: """Wenn du angreifst, darfst du all deine Würfel neu würfeln. Tust du dies, musst du so viele Würfel wie möglich neu würfeln."""
        "Kath Scarlet":
            text: """Wenn du angreifst und der Verteidiger mindestens 1 %CRIT% negiert, erhält er 1 Stressmarker."""
        "Boba Fett":
            text: """Sobald du ein Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) aufdeckst, darfst du das Drehmanöver mit gleicher Geschwindigkeit aber anderer Richtung auf deinem Rad nachträglich einstellen."""
        "Krassis Trelix":
            text: """Wenn du mit einer Sekundärwaffe angreifst, darfst du 1 Angriffswürfel neu würfeln."""
        "Bounty Hunter":
            name: "Kopfgeldjäger"
        "Ten Numb":
            text: """Wenn du angreifst, kann 1 deiner %CRIT% von Verteidigungswürfeln nicht negiert werden."""
        "Ibtisam":
            text: """Beim Angreifen oder Verteidigen darfst du 1 deiner Würfel neu würfeln, sofern du mindestens 1 Stressmarker hast."""
        "Dagger Squadron Pilot":
            name: "Pilot der Dagger-Staffel"
        "Blue Squadron Pilot":
            name: "Pilot der Blauen Staffel"
        "Rebel Operative":
            name: "Rebellenagent"
        "Roark Garnet":
            text: '''Wähle zu Beginn der Kampfphase 1 anderes freundliches Schiff in Reichweite 1-3. Bis zum Ende der Phase wird dieses Schiff behandelt, als hätte es einen Pilotenwert von 12.'''
        "Kyle Katarn":
            text: """Zu Beginn der Kampfphase darfst du einem anderen freundlichen Schiff in Reichweite 1-3 einen deiner Fokusmarker geben."""
        "Jan Ors":
            text: """Wenn ein anderes freundliches Schiff in Reichweite 1-3 angreift und du keine Stressmarker hast, darfst du 1 Stressmarker nehmen, damit dieses Schiff 1 zusätzlichen Angriffswürfel erhält."""
        "Scimitar Squadron Pilot":
            ship: "TIE-Bomber"
            name: "Pilot der Scimitar-Staffel"
        "Gamma Squadron Pilot":
            ship: "TIE-Bomber"
            name: "Pilot der Gamma-Staffel"
        "Captain Jonus":
            ship: "TIE-Bomber"
            text: """Wenn ein anderes freundliches Schiff in Reichweite 1 mit einer Sekundärwaffe angreift, darf es bis zu 2 Angriffswürfel neu würfeln."""
        "Major Rhymer":
            ship: "TIE-Bomber"
            text: """Beim Angreifen mit einer Sekundärwaffe darfst du die Reichweite der Waffe um 1 erhöhen oder verringern, bis zu einer Reichweite von 1-3."""
        "Captain Kagi":
            ship: "Raumfähre der Lambda-Klasse"
            text: """Wenn ein feindliches Schiff eine Zielerfassung durchführt, muss es wenn möglich dich als Ziel erfassen."""
        "Colonel Jendon":
            ship: "Raumfähre der Lambda-Klasse"
            text: """Zu Beginn der Kampfphase darfst du 1 deiner blauen Zielerfassungsmarker auf ein freundliches Schiff in Reichweite 1 legen, das noch keinen blauen Zielerfassungsmarker hat."""
        "Captain Yorr":
            ship: "Raumfähre der Lambda-Klasse"
            text: """Wenn ein anderes freundliches Schiff in Reichweite 1-2 einen Stressmarker erhalten würde und du 2 oder weniger Stressmarker hast, darfst du statt ihm diesen Marker nehmen."""
        "Omicron Group Pilot":
            ship: "Raumfähre der Lambda-Klasse"
            name: "Pilot der Omikron-Gruppe"
        "Lieutenant Lorrir":
            ship: "TIE-Abfangjäger"
            text: """Wenn du die Aktion Fassrolle ausführst, kannst du 1 Stressmarker erhalten, um die (%BANKLEFT% 1) oder (%BANKRIGHT% 1) Manöverschablone anstatt der (%STRAIGHT% 1) Manöverschablone zu benutzen."""
        "Royal Guard Pilot":
            ship: "TIE-Abfangjäger"
            name: "Pilot der Roten Garde"
        "Tetran Cowall":
            ship: "TIE-Abfangjäger"
            text: """Immer wenn du ein %UTURN% Manöver aufdeckst, kannst du das Manöver mit einer Geschwindigkeit von "1," "3," oder "5" ausführen."""
        "Kir Kanos":
            ship: "TIE-Abfangjäger"
            text: """Wenn du ein Ziel in Reichweite 2-3 angreifst, darfst du einen Ausweichmarker ausgeben, um 1 %HIT% zu deinem Wurf hinzuzufügen."""
        "Carnor Jax":
            ship: "TIE-Abfangjäger"
            text: """Feindliche Schiffe in Reichweite 1 können weder Fokussierung und Ausweichen Aktionen durchführen noch Ausweichmarker und Fokusmarker ausgeben."""
        "GR-75 Medium Transport":
            ship: "Medium-Transporter GR-75"
            name: "Medium-Transporter GR-75"
        "Bandit Squadron Pilot":
            ship: "Z-95-Kopfjäger"
            name: "Pilot der Bandit-Staffel"
        "Tala Squadron Pilot":
            ship: "Z-95-Kopfjäger"
            name: "Pilot der Tala-Staffel"
        "Lieutenant Blount":
            ship: "Z-95-Kopfjäger"
            name: "Lieutenant Blount"
            text: """Wenn du angreifst, triffst du immer, selbst wenn das verteidigende Schiff keinen Schaden nimmt."""
        "Airen Cracken":
            ship: "Z-95-Kopfjäger"
            name: "Airen Cracken"
            text: """Nachdem du angegriffen hast, darfst du ein anderes freundliches Schiff in Reichweite 1 wählen. Dieses Schiff darf 1 freie Aktion durchführen."""
        "Delta Squadron Pilot":
            ship: "TIE-Jagdbomber"
            name: "Pilot der Delta-Staffel"
        "Onyx Squadron Pilot":
            ship: "TIE-Jagdbomber"
            name: "Pilot der Onyx-Staffel"
        "Colonel Vessery":
            ship: "TIE-Jagdbomber"
            text: """Wenn du angreifst und der Verteidiger bereits einen roten Zielerfassungsmarker hat, darfst du ihn unmittelbar nach dem Angriffswurf in die Zielerfassung nehmen."""
        "Rexler Brath":
            ship: "TIE-Jagdbomber"
            text: """Nachdem du angegriffen und damit dem Verteidiger mindestens 1 Schadenskarte zugeteilt hast, kannst du einen Fokusmarker ausgeben, um die soeben zugeteilten Schadenskarten aufzudecken."""
        "Knave Squadron Pilot":
            name: "Pilot der Schurken-Staffel"
        "Blackmoon Squadron Pilot":
            name: "Pilot der Schwarzmond-Staffel"
        "Etahn A'baht":
            text: """Sobald ein feindliches Schiff in Reichweite 1–3 und innerhalb deines Feuerwinkels verteidigt, darf der Angreifer 1 seiner %HIT% in ein %CRIT% ändern."""
        "Corran Horn":
            text: """Zu Beginn der Endphase kannst du einen Angriff durchführen. Tust du das, darfst du in der nächsten Runde nicht angreifen."""
        "Sigma Squadron Pilot":
            ship: "TIE-Phantom"
            name: "Pilot der Sigma-Staffel"
        "Shadow Squadron Pilot":
            ship: "TIE-Phantom"
            name: "Pilot der Schatten-Staffel"
        '"Echo"':
            ship: "TIE-Phantom"
            name: '"Echo"'
            text: """Wenn du dich enttarnst, musst du statt der (%STRAIGHT% 2)-Manöverschablone die (%BANKRIGHT% 2)- oder (%BANKLEFT% 2)-Schablone verwenden."""
        '"Whisper"':
            ship: "TIE-Phantom"
            name: '"Geflüster"'
            text: """Nachdem du mit einem Angriff getroffen hast, darfst du deinem Schiff 1 Fokusmarker geben."""
        "CR90 Corvette (Fore)":
            name: "CR90-Korvette (Bug)"
            ship: "CR90-Korvette (Bug)"
            text: """Wenn du mit deinen Primärwaffen angreifst, kannst du 1 Energie ausgeben, um 1 zusätzlichen Angriffswürfel zu bekommen"""
        "CR90 Corvette (Aft)":
            name: "CR90-Korvette (Heck)"
            ship: "CR90-Korvette (Heck)"
        "Wes Janson":
            text: """Nachdem du einen Angriff durchgeführt hast, darfst du 1 Fokus-, Ausweich- oder blauen Zielerfassungsmarker vom Verteidiger entfernen."""
        "Jek Porkins":
            text: """Wenn du einen Stressmarker erhältst, darfst du ihn entfernen und 1 Angriffswürfel werfen. Bei %HIT% bekommt dein Schiff 1 verdeckte Schadenskarte."""
        '"Hobbie" Klivian':
            text: """Wenn du ein Schiff in die Zielerfassung nimmst oder einen Zielerfassungsmarker ausgibst, kannst du 1 Stressmarker von deinem Schiff entfernen."""
        "Tarn Mison":
            text: """Wenn ein feindliches Schiff einen Angriff gegen dich ansagt, kannst du dieses Schiff in die Zielerfassung nehmen."""
        "Jake Farrell":
            text: """Nachdem du die Aktion Fokussierung durchgeführt oder einen Fokusmarker erhalten hast, darfst du als freie Aktion einen Schub oder eine Fassrolle durchführen."""
        "Gemmer Sojan":
            name: "Gemmer Sojan"
            text: """Solange du in Reichweite 1 zu mindestens einem feindlichen Schiff bist, steigt dein Wendigkeitswert um 1."""
        "Keyan Farlander":
            text: """Beim Angreifen darfst du 1 Stressmarker entfernen, um alle deine %FOCUS% in %HIT% zu ändern."""
        "Nera Dantels":
            text: """Mit %TORPEDO%-Sekundärwaffen kannst du auch feindliche Schiffe außerhalb deines Feuerwinkels angreifen."""
        # "CR90 Corvette (Crippled Aft)":
        #     name: "CR90-Korvette (Heck-Lahmgelegt)"
        #     ship: "CR90-Korvette (Heck)"
        #     text: """Folgende Manöver darfst du weder wählen noch ausführen: (%STRAIGHT% 4), (%BANKLEFT% 2), or (%BANKRIGHT% 2) ."""
        # "CR90 Corvette (Crippled Fore)":
        #     name: "CR90-Korvette (Bug-Lahmgelegt)"
        #     ship: "CR90-Korvette (Bug)"
        "Wild Space Fringer":
            name: "Grenzgänger aus dem Wilden Raum"
        "Dash Rendar":
            text: """Du darfst in der Aktivierungsphase und beim Durchführen von Aktionen Hindernisse ignorieren."""
        '"Leebo"':
            text: """Immer wenn du eine offene Schadenskarte erhältst, ziehst du 1 weitere Schadenskarte. Wähle 1, die abgehandelt wird, und lege die andere ab."""
        "Eaden Vrill":
            text: """Wirf 1 zusätzlichen Angriffswürfel, wenn du mit den Primärwaffen auf ein Schiff mit Stressmarker schießt."""
        "Patrol Leader":
            name: "Patrouillenführer"
        "Rear Admiral Chiraneau":
            name: "Konteradmiral Chiraneau"
            text: """Wenn du ein Ziel in Reichweite 1-2 angreifst, kannst du ein %FOCUS% in ein %CRIT% ändern."""
        "Commander Kenkirk":
            text: """Wenn du keine Schilde und mindestens 1 Schadenskarte hast, steigt deine Wendigkeit um 1."""
        "Captain Oicunn":
            text: """Nach dem Ausführen eines Manövers nimmt jedes feindliche Schiff, das du berührst, 1 Schaden."""
        "Prince Xizor":
            ship: "SternenViper"
            name: "Prinz Xizor"
            text: """Sobald du verteidigst, darf ein freundliches Schiff in Reichweite 1 ein nicht-negiertes %HIT% oder %CRIT% an deiner Stelle nehmen."""
        "Guri":
            ship: "SternenViper"
            text: """Wenn du zu Beginn der Kampfphase in Reichweite 1 zu einem feindlichen Schiff bist, darfst du 1 Fokusmarker auf dein Schiff legen."""
        "Black Sun Vigo":
            ship: "SternenViper"
            name: "Vigo der Schwarzen Sonne"
        "Black Sun Enforcer":
            ship: "SternenViper"
            name: "Vollstrecker der Schwarzen Sonne"
        "Serissu":
            ship: "M3-A Abfangjäger"
            text: """Sobald ein anderes freundliches Schiff in Reichweite 1 verteidigt, darf es 1 Verteidigungswürfel neu würfeln."""
        "Laetin A'shera":
            ship: "M3-A Abfangjäger"
            text: """Nachdem du gegen einen Angriff verteidigt hast und falls der Angriff nicht getroffen hat, darfst du deinem Schiff 1 Ausweichmarker zuordnen."""
        "Tansarii Point Veteran":
            ship: "M3-A Abfangjäger"
            name: "Veteran von Tansarii Point"
        "Cartel Spacer":
            ship: "M3-A Abfangjäger"
            name: "Raumfahrer des Kartells"
        "IG-88A":
            text: """Nachdem du einen Angriff durchgeführt hast, der den Verteidiger zerstört, darfst du 1 Schild wiederaufladen."""
        "IG-88B":
            text: """Ein Mal pro Runde darfst du, nachdem du mit einem Angriff verfehlt hast, einen weiteren Angriff mit einer ausgerüsteten %CANNON%-Sekundärwaffe durchführen."""
        "IG-88C":
            text: """Nachdem du die Aktion Schub durchgeführt hast, darfst du eine freie Aktion Ausweichen durchführen."""
        "IG-88D":
            text: """Du darfst die Manöver (%SLOOPLEFT% 3) oder (%SLOOPRIGHT% 3) auch mit den entsprechenden Schablonen für Wendemanöver (%TURNLEFT% 3) bzw. (%TURNRIGHT% 3) ausführen."""
        "Boba Fett (Scum)":
            name: "Boba Fett (Abschaum)"
            text: """Sobald du angreifst oder verteidigst, darfst du für jedes feindliche Schiff in Reichweite 1 einen deiner Würfel neu würfeln."""
        "Kath Scarlet (Scum)":
            name: "Kath Scarlet (Abschaum)"
            text: """Sobald du ein Schiff innerhalb deines Zusatz-Feuerwinkels angreifst, erhältst du 1 zusätzlichen Angriffswürfel."""
        "Emon Azzameen":
            text: """Sobald du eine Bombe legst, darfst du auch die Schablone [%TURNLEFT% 3], [%STRAIGHT% 3] oder [%TURNRIGHT% 3] anstatt der [%STRAIGHT% 1]-Schablone verwenden."""
        "Mandalorian Mercenary":
            name: "Mandalorianischer Söldner"
        "Kavil":
            text: """Sobald du ein Schiff außerhalb deines Feuerwinkels angreifst, erhältst du 1 zusätzlichen Angriffswürfel."""
        "Drea Renthal":
            text: """Nachdem du einen Zielerfassungsmarker ausgegeben hast, darfst du 1 Stressmarker nehmen, um ein Schiff in die Zielerfassung zu nehmen."""
        "Syndicate Thug":
            name: "Verbrecher des Syndikats"
        "Hired Gun":
            name: "Söldner"
        "Dace Bonearm":
            text: """Sobald ein feindliches Schiff in Reichweite 1-3 mindestens 1 Ionenmarker erhält und falls du keinen Stressmarker hast, darfst du 1 Stressmarker nehmen, damit das Schiff 1 Schaden nimmt."""
        "Palob Godalhi":
            text: """Zu Beginn der Kampfphase darfst du 1 Fokus- oder Ausweichmarker von einem feindlichen Schiff in Reichweite 1-2 entfernen und dir selbst zuordnen."""
        "Torkil Mux":
            text: """Wähle am Ende der Aktivierungsphase 1 feindliches Schiff in Reichweite 1-2. Bis zum Ende der Kampfphase wird der Pilotenwert des Schiffs als "0" behandelt."""
        "Spice Runner":
            name: "Spiceschmuggler"
        "N'Dru Suhlak":
            ship: "Z-95-Kopfjäger"
            text: """Sobald du angreifst, erhältst du 1 zusätzlichen Angriffswürfel, falls keine anderen freundlichen Schiffe in Reichweite 1-2 zu dir sind."""
        "Kaa'to Leeachos":
            ship: "Z-95-Kopfjäger"
            text: """Zu Beginn der Kampfphase darfst du 1 Fokus- oder Ausweichmarker von einem anderem freundlichen Schiff in Reichweite 1-2 entfernen und dir selbst zuordnen."""
        "Binayre Pirate":
            ship: "Z-95-Kopfjäger"
            name: "Binayre-Pirat"
        "Black Sun Soldier":
            ship: "Z-95-Kopfjäger"
            name: "Kampfpilot der Schwarzen Sonne"
        "Commander Alozen":
            text: """Zu Beginn der Kampfphase darfst du ein feindliches Schiff in Reichweite 1 in die Zielerfassung nehmen."""
        "Raider-class Corvette (Fore)":
            ship: "Korv. der Sturm-Klasse (Bug)"
            name: "Korv. der Sturm-Klasse (Bug)"
            text: """Ein Mal pro Runde darfst du, nachdem du einen Primärwaffen-Angriff durchgeführt hast, 2 Energie ausgeben, um einen weiteren Primärwaffen-Angriff durchzuführen."""
        "Raider-class Corvette (Aft)":
            ship: "Korv. der Sturm-Klasse (Heck)"
            name: "Korv. der Sturm-Klasse (Heck)"
        "Bossk":
            text: """Sobald du einen Angriff durchführst und triffst, kannst du , bevor du Schaden verursachst, 1 deiner %CRIT% negieren, um 2 %HIT% hinzuzufügen."""
        "Talonbane Cobra":
            ship: "Kihraxz-Jäger"
            text: """Sobald du angreifst oder verteidigst, wird der Effekt deiner Kampfvorteile durch Reichweite verdoppelt."""
        "Miranda Doni":
            text: """Ein Mal pro Runde darfst du, sobald du angreifst, entweder 1 Schild ausgeben, um 1 zusätzlichen Angriffswürfel zu werfen, <strong>oder</strong> 1 Angriffswürfel weniger werfen, um 1 Schild wiederaufzuladen."""
        '"Redline"':
            name: '"Rote Linie"'
            ship: "TIE-Vergelter"
            text: """Du darfst 2 Zielerfassungen auf demselben Schiff haben. Sobald du ein Schiff in die Zielerfassung nimmst, darfst du es ein zweites Mal in die Zielerfassung nehmen."""
        '"Deathrain"':
            name: '"Todesregen"'
            ship: "TIE-Vergelter"
            text: """Sobald du eine Bombe legst, darfst du die Stopper am Bug deines Schiffs benutzen. Nachdem du eine Bombe gelegt hast, darfst du als freie Aktion eine Fassrolle durchführen."""
        "Juno Eclipse":
            text: """Sobald du dein Manöver aufdeckst, darfst du die Geschwindigkeit um 1 erhöhen oder reduzieren (bis zu einem Minimum von 1)."""
        "Zertik Strom":
            text: """Sobald feindliche Schiffe in Reichweite 1 angreifen, können sie ihren Kampfvorteil durch Reichweite nicht hinzufügen."""
        "Lieutenant Colzet":
            text: """Zu Beginn der Endphase darfst du einen Zielerfassungsmarker , den du auf einem feindlichen Schiff liegen hast, ausgeben, um 1 seiner verdeckten Schadenskarten (zufällig bestimmt) aufzudecken."""
        "Latts Razzi":
            text: """Sobald ein freundliches Schiff einen Angriff deklariert und du den Verteidiger in der Zielerfassung hast, kannst du einen Zielerfassungsmarker ausgeben, um die Wendigkeit des Verteidigers für diesen Angriff um 1 zu senken."""
        "Graz the Hunter":
            ship: "Kihraxz-Jäger"
            name: "Graz der Jäger"
            text: """Wirf 1 zusätzlichen Verteidigungswürfel, wenn der Angreifer in deinem Feuerwinkel ist, sobald du verteidigst."""
        "Esege Tuketu":
            text: """Sobald ein anderes freundliches Schiff in Reichweite 1-2 angreift, darf es deine Fokusmarker wie seine eigenen behandeln."""
        "Moralo Eval":
            text: """Du darfst Angriffe mit %CANNON%-Sekundärwaffen gegen Schiffe in deinem Zusatz-Feuerwinkel durchführen."""
        "Warden Squadron Pilot":
            ship: "K-Wing"
            name: "Pilot der Beschützer-Staffel"
        "Guardian Squadron Pilot":
            ship: "K-Wing"
            name: "Pilot der Wächter-Staffel"
        "Cutlass Squadron Pilot":
            ship: "TIE-Vergelter"
            name: "Pilot der Entermesser-Staffel"
        "Black Eight Squadron Pilot":
            ship: "TIE-Vergelter"
            name: "Pilot der Schwarzen-Acht-Staffel"
        "Cartel Marauder":
            ship: "Kihraxz-Jäger"
            name: "Kartell-Marodeur"
        "Black Sun Ace":
            ship: "Kihraxz-Jäger"
            name: "Fliegerass der schwarzen Sonne"
        "Trandoshan Slaver":
            ship: "YV-666"
            name: "Trandoshanischer Sklavenjäger"
        # T-70
        "Poe Dameron":
            ship: "T-70-X-Flügler"
            text: """Solange du angreifst oder verteidigst, und wenn du einen Fokusmarker hast, darfst du 1 deiner %FOCUS% in %HIT% oder %EVADE% ändern."""
        '"Blue Ace"':
            ship: "T-70-X-Flügler"
            name: '"Ass Blau"'
            text: """Soabld du eine Schub-Aktion ausführst, darfst du das Manöver (%TURNLEFT% 1) oder (%TURNRIGHT% 1) verwenden."""
        '"Red Ace"':
            ship: "T-70-X-Flügler"
            name: '"Ass Rot"'
            text: '''Das erste Mal wenn du in jeder Runde ein Schild von deinem Schiff entfernst, weise deinem Schiff 1 Ausweichmarker zu.'''
        "Blue Squadron Novice":
            ship: "T-70-X-Flügler"
            name: "Anfängerpilot der Blauen Staffel"
        "Red Squadron Veteran":
            ship: "T-70-X-Flügler"
            name: "Veteran der Roten Staffel"
        'Ello Asty':
            ship: "T-70-X-Flügler"
            text: '''Solange du nicht gestresst bist, darfst du deine %TROLLLEFT% und %TROLLRIGHT% Manöver als weiße Manöver behandeln.'''
        # TIE/fo
        '"Omega Ace"':
            ship: "TIE/EO-Jäger"
            name: '"Ass Omega"'
            text: """Sobald du angreifst, kannst du einen Fokusmarker und eine deiner Zielerfassungen auf dem Verteidiger ausgeben, um alle deine Würfelergebnisse in %KRIT% zu ändern."""
        '"Epsilon Leader"':
            ship: "TIE/EO-Jäger"
            name: "Epsilon Eins"
            text: """Zu Beginn der Kampfphase entferne je 1 Stressmarker von jedem freundlichen Schiff in Reichweite 1."""
        '"Zeta Ace"':
            ship: "TIE/EO-Jäger"
            name: '"Ass Zeta"'
            text: """Sobald du eine Fassrolle ausführst, darfst du die (%STRAIGHT% 2) Manöverschablone verwenden anstatt der (%STRAIGHT% 1) Manöverschablone."""
        "Omega Squadron Pilot":
            ship: "TIE/EO-Jäger"
            name: "Pilot der Omega-Staffel"
        "Zeta Squadron Pilot":
            ship: "TIE/EO-Jäger"
            name: "Pilot der Zeta-Staffel"
        "Epsilon Squadron Pilot":
            ship: "TIE/EO-Jäger"
            name: "Pilot der Epsilon-Staffel"
        '"Omega Leader"':
            ship: "TIE/EO-Jäger"
            name: '"Omega Eins"'
            text: '''Feindliche Schiffe, die du in der Zielerfassung hast, können keine Würfel modifizieren, sobald sie dich angreifen oder sich gegen dich verteidigen.'''
        '"Zeta Leader"':
            ship: "TIE/EO-Jäger"
            name: '"Zeta Eins"'
            text: '''Sobald du angreifst und falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten, um 1 zusätzlichen Würfel zu werfen.'''
        '"Epsilon Ace"':
            ship: "TIE/EO-Jäger"
            name: '"Ass Epsilon"'
            text: '''Solange du keine Schadenskarten hast, behandle deinen Pilotenwert als "12".'''
        # Ships from Gonzanti Expension
        'Gozanti-class Cruiser':
            ship: "Kreuzer der Gozanti-Klasse"
            name: "Kreuzer der Gozanti-Klasse"
            text: """Nachdem du ein Manöver ausgeführt hast, darfst du 2 angedockte Schiffe absetzen."""
        '"Scourge"':
            ship: "TIE-Jäger"
            name: "Geissel"
            text: """Sobald du einen Verteidiger angreifst, der 1 oder mehr Schadenskarten hat, wirf 1 zusätzlichen Angriffswürfel."""
        '"Youngster"':
            ship: "TIE-Jäger"
            text: """Freundliche TIE-Jäger in Reichweite 1-3 dürfen die Aktion einer von dir ausgerüsteten %ELITE%-Aufwertung durchführen."""
        '"Wampa"':
            ship: "TIE-Jäger"
            text: """Sobald du angreifst, darfst du zu Beginn des "Ergebnisse vergleichen"-Schritts alle Würfelergebnisse negieren. Negierst du %CRIT%, teile dem Verteidiger 1 verdeckte Schadenskarte zu."""
        '"Chaser"':
            ship: "TIE-Jäger"
            text: """Sobald ein anderes freundliches Schiff in Reichweite 1 einen Fokusmarker ausgibt, wird deinem Schiff ein Fokusmarker zugeteilt."""
        # VCX-100
        'Hera Syndulla':
            text: '''Sobald du ein grünes oder rotes Manöver aufdeckst, darfst du dein Rad auf ein anderes Manöver mit gleicher Schwierigkeit drehen.'''
        "Kanan Jarrus":
            text: """Sobald ein feindliches Schiff in Reichweite 1-2 angreift, darfst du einen Fokusmarker ausgeben. Tust du das, wirft der Angreifer 1 Angriffswürfel weniger."""
        '"Chopper"':
            text: """Zu Beginn der Kampfphase erhält jedes feindliche Schiff, das du berührst, 1 Stressmarker."""
        "Lothal Rebel":
            name: "Rebell von Lothal"
        # Attack Shuttle
        'Ezra Bridger':
            ship: "Jagdshuttle"
            text: """Falls du Stressmarker hast, darfst du, sobald du dich verteidigst, bis zu 2 deiner %FOCUS% in %EVADE% ändern."""
        'Hera Syndulla (Attack Shuttle)':
            ship: "Jagdshuttle"
            name: "Hera Syndulla (Jagdshuttle)"
            text: """Sobald du ein grünes oder rotes Manöver aufdeckst, darfst du dein Rad auf ein anderes Manöver mit gleicher Schwierigkeit drehen."""
        'Sabine Wren':
            ship: "Jagdshuttle"
            text: """Unmittelbar vor dem Aufdecken deines Manövers darfst du als freie Aktion einen Schub oder eine Fassrolle durchführen."""
        '"Zeb" Orrelios':
            ship: "Jagdshuttle"
            text: '''Sobald du dich verteidigst, darfst du %CRIT% vor %HIT% negieren.'''
        # JumpMaster 5000
        "Contracted Scout":
            name: "Angeheuerter Kundschafter"
        "Dengar":
            text: """Ein Mal pro Runde darfst du nach dem Verteidigen einen Angriff auf den Angreifer durchführen, falls er sich in deinem Feuerwinkel befindet."""
        "Tel Trevura":
            text: """Wenn du zum ersten Mal zerstörst werden würdest, negiere stattdessen alle restlichen Schaden, lege alle Schadenskarten ab und teile diesem Schiff 4 verdeckte Schadenskarten zu."""
        "Manaroo":
            text: """Zu Beginn der Kampfphase darfst du alle dir zugeordneten Fokus-, Ausweich- und Zielerfassungsmarker einem anderen freundlichen Schiff in Reichweite 1 zuordnen."""
        # TIE Advanced Prototype
        "Sienar Test Pilot":
            ship: "TIE-Turbojäger-Prototyp"
            name: "Sienar-Testpilot"
        "Baron of the Empire":
            ship: "TIE-Turbojäger-Prototyp"
            name: "Imperialer Baron"
        "Valen Rudor":
            ship: "TIE-Turbojäger-Prototyp"
            text: """Nachdem du verteidigt hast, darfst du eine freie Aktion durchführen."""
        "The Inquisitor":
            ship: "TIE-Turbojäger-Prototyp"
            name: "Der Inquisitor"
            text: """Sobald du mit deinen Primärwaffen in Reichweite 2-3 angreifst, behandle die Reichweite des Angriffs als Reichweite 1."""
        # G-1A Starfighter
        "4-LOM":
            ship: "G-1A-Sternenjäger"
            text: """Zu Beginn der Endphase darfst du 1 deiner Stressmarker einem anderen Schiff in Reichweite 1 zuordnen."""
        "Ruthless Freelancer":
            ship: "G-1A-Sternenjäger"
            name: "Skrupelloser Söldner"
        "Gand Findsman":
            ship: "G-1A-Sternenjäger"
            name: "Gand-Finder"
        "Zuckuss":
            ship: "G-1A-Sternenjäger"
            text: """Sobald du angreifst, darfst du 1 zusätzlichen Angriffswürfel werfen. Falls du das tust, wirft der Verteidiger 1 zusätzlichen Verteidigungswürfel."""
        # Imperial Aces 2
        'Tomax Bren':
            ship: "TIE-Bomber"
            text: '''Ein Mal pro Runde, nachdem du eine %ELITE%-Aufwertung abgelegt hast, decke die abgelegte Karte auf.'''
        '"Deathfire"':
            name: '"Todesfeuer"'
            ship: "TIE-Bomber"
            text: '''Sobald du dein Manöverrad aufdeckst oder nachdem du eine Aktion durchgeführt hast, darfst du die Aktion einer %BOMB%-Aufwertung als freie Aktion durchführen.'''
        "Maarek Stele (TIE Defender)":
            name: "Maarek Stele (TIE-Jagdbomber)"
            ship: "TIE-Jagdbomber"
            text: """Sobald durch deinen Angriff dem Verteidiger eine offene Schadenskarte zugeteilt wird, ziehst du stattdessen 3 Schadenskarten, wählst 1 aus, die ihm zugeteilt wird, und legst die anderen ab."""
        "Countess Ryad":
            name: "Gräfin Ryad"
            ship: "TIE-Jagdbomber"
            text: """Sobald du ein %STRAIGHT%-Manöver aufdeckst, darfst du es wie ein %KTURN%-Manöver behandeln."""
        "Gamma Squadron Veteran":
            ship: "TIE-Bomber"
            name: "Veteran der Gamma-Staffel"
        "Glaive Squadron Pilot":
            ship: "TIE-Jagdbomber"
            name: "Pilot der Gleven-Staffel"
        # Heroes of the Resistance
        "Poe Dameron (PS9)":
            text: """Solange du angreifst oder verteidigst, darfst du, falls du einen Fokusmarker hast, 1 deiner %FOCUS% in ein %HIT% oder %EVADE% ändern."""
            ship: "T-70-X-Flügler"
        '''"Snap" Wexley''':
            text: """Nachdem du ein Manöver mit Geschwindigkeit 2, 3 oder 4 ausgeführt hast, darfst du, falls du kein Schiff berührst, eine freie Aktion Schub durchführen."""
            ship: "T-70-X-Flügler"
        'Jess Pava':
            text: """Sobald du angreifst oder verteidigst, darfst du für jedes andere freundliche Schiff in Reichweite 1 einen deiner Würfel neu würfeln."""
            ship: "T-70-X-Flügler"
        'Nien Nunb':
            text: """Sobald du einen Stressmarker erhältst, darfst du ihn ablegen, falls ein feindliches Schiff in Reichweite 1 innerhalb deines Feuerwinkels ist."""
            ship: "T-70-X-Flügler"
        "Rey":
            text: """Sobald du angreifst oder verteidigst, darfst du bis zu 2 deiner Leerseiten neu würfeln, falls das feindliche Schiff innerhalb deines Feuerwinkels ist."""
        'Han Solo (TFA)':
            text: '''Sobald du beim Spielaufbau platziert wirst, kannst du irgendwo auf der Spielfläche jenseits von Reichweite 1-3 zu feindlichen Schiffen platziert werden.'''
        'Chewbacca (TFA)':
            text: '''Nachdem ein anderes freundliches Schiff in Reichweite 1-3 zerstört worden (aber nicht geflohen) ist, darfst du einen Angriff durchführen.'''
        'Resistance Sympathizer':
            name: "Sympathisant des Widerstands"
        # ARC-170
        'Norra Wexley':
            text: '''Sobald du angreifst oder du verteidigst, darfst du einen Zielerfassungsmarker, den du auf dem feindlichen Schiff hast, ausgeben, um 1 %FOCUS% zu deinem Wurf hinzuzufügen.'''
        'Shara Bey':
            text: '''Sobald ein anderes freundliches Schiff in Reichweite 1-2 angreift, darf es deine blauen Zielerfassungsmarker wie seine eigenen behandeln.'''
        'Thane Kyrell':
            text: '''Nachdem ein feindliches Schiff innerhalb deines Feuerwinkels und in Reichweite 1-3 ein anderes freundliches Schiff angegriffen hat, darfst du eine freie Aktion durchführen.'''
        'Braylen Stramm':
            text: '''Nachdem du ein Manöver ausgeführt hast, darfst du einen Angriffswürfel werfen. Bei %HIT% oder %CRIT% entferne 1 Stressmarker von deinem Schiff.'''
        # TIE/sf Fighter
        '"Quickdraw"':
            ship: "TIE/SE-Jäger"
            name: '"Schnellschuss"'
            text: '''Ein Mal pro Runde darfst du, sobald du einen Schildmarker verlierst, einen Primärwaffenangriff durchführen.'''
        '"Backdraft"':
            ship: "TIE/SE-Jäger"
            name: '"Feuersaat"'
            text: '''Sobald du ein Schiff innerhalb deines Zusatz-Feuerwinkels angreifst, darfst du 1 %CRIT% hinzufügen.'''
        'Omega Specialist':
            ship: "TIE/SE-Jäger"
            name: "Elitepilot der Omega-Staffel"
        'Zeta Specialist':
            ship: "TIE/SE-Jäger"
            name: "Elitepilot der Zeta-Staffel"
        # Protectorate Starfighter
        'Fenn Rau':
            ship: "Sternenjäger des Protektors"
            text: '''Sobald du angreifst oder verteidigst, darfst du 1 zusätzliche Würfel werfen, falls das feindliche Schiff in Reichweite 1 ist.'''
        'Old Teroch':
            ship: "Sternenjäger des Protektors"
            name: "Der Alte Teroch"
            text: '''Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in Reichweite 1 wählen. Falls du innerhalb seines Feuerwinkels bist, legt es alle Fokus- und Ausweichmarker ab.'''
        'Kad Solus':
            ship: "Sternenjäger des Protektors"
            text: '''Nachdem du ein rotes Manöver ausgeführt hast, ordne deinem Schiff 2 Fokusmarker zu.'''
        'Concord Dawn Ace':
            ship: "Sternenjäger des Protektors"
            name: "Fliegerass von Concord Dawn"
        'Concord Dawn Veteran':
            ship: "Sternenjäger des Protektors"
            name: "Veteran von Concord Dawn"
        'Zealous Recruit':
            ship: "Sternenjäger des Protektors"
            name: "Fanatischer Rekrut"
        # Lancer-class Pursuit Craft
        'Shadowport Hunter':
            ship: "Jagdschiff der Lanzen-Klasse"
            name: "Schattenhafen-Jäger"
        'Ketsu Onyo':
            ship: "Jagdschiff der Lanzen-Klasse"
            text: '''Zu Beginn der Kampfphase darfst du ein Schiff in Reichweite 1 wählen. Falls es innerhalb deines normalen Feuerwinkels <strong>und</strong> deines mobilen Feuerwinkels ist, ordne ihm 1 Traktorstrahlmarker zu.'''
        'Asajj Ventress':
            ship: "Jagdschiff der Lanzen-Klasse"
            text: '''Zu Beginn der Kampfphase darfst du ein Schiff in Reichweite 1-2 wählen. Falls es innerhalb deines mobilen Feuerwinkel ist, ordne ihm 1 Stressmarker zu.'''
        'Sabine Wren (Scum)':
            ship: "Jagdschiff der Lanzen-Klasse"
            name: "Sabine Wren (Abschaum)"
            text: '''Sobald du dich gegen ein feindliches Schiff innerhalb deines mobilen Feuerwinkels und Reichweite 1-2 verteidigst, darfst du 1 %FOCUS% zu deinem Wurf hinzufügen.'''
        # Wave X
        'Ahsoka Tano':
            ship: "TIE-Jäger"
            text: '''Zu Beginn der Kampfphase darfst du 1 Fokusmarker ausgeben, um ein freundliches Schiff in Reichweite 1 zu wählen. Es darf 1 freie Aktion durchführen.'''
        'Captain Rex':
            ship: "TIE-Jäger"
            text: '''Nachdem du einen Angriff durchgeführt hast, ordne dem Verteidiger die Zustandskarte "Sperrfeuer" zu.'''
        'Sabine Wren (TIE Fighter)':
            ship: "TIE-Jäger"
            text: '''Unmittelbar bevor du dein Manöver aufdeckst, darfst du als freie Aktion einen Schub oder eine Fassrolle durchführen.'''
        '"Zeb" Orrelios (TIE Fighter)':
            ship: "TIE-Jäger"
            text: '''Sobald du verteidigst, darfst du %CRIT% vor %HIT% negieren.'''
        'Starkiller Base Pilot':
            ship: "Shuttle der Ypsilon-Klasse"
        'Major Stridan':
            ship: "Shuttle der Ypsilon-Klasse"
            text: '''Was deine Aktionen und Aufwertungskarten betrifft, darfst du freundliche Schiffe in Reichweite 2-3 behandeln, als wären sie in Reichweite 1.'''
        'Lieutenant Dormitz':
            ship: "Shuttle der Ypsilon-Klasse"
            text: '''Während des Spielaufbaus dürfen freundliche Schiffe überall auf der Spielfläche in Reichweite 1-2 zu dir platziert werden.'''
        'Constable Zuvio':
            text: '''Sobald du ein Rückwärtsmanöver aufdeckst, darfst du über die Stopper an deinem Bug eine Bombe legen (auch eine Bombe mit dem Stichwort "<strong>Aktion:</strong>").'''
        'Sarco Plank':
            text: '''Sobald du dich verteidigst, darfst du, anstatt deinen Wendigkeitswert zu verwenden, Würfel in Höhe der Geschwindigkeit des Manövers, das du in dieser Runde ausgeführt hast, verwenden.'''
        'Kylo Ren':
            ship: "Shuttle der Ypsilon-Klasse"
            text: '''Das erste Mal wenn du in jeder Runde von einem Angriff getroffen wirst, ordnest du dem Angreifer die Zustandskarte "Ich zeige dir die Dunkle Seite" zu.'''
        'Unkar Plutt':
            text: '''Am Ende der Aktivierungsphase <strong>musst</strong> du jedem Schiff, das du berührst, einen Traktorstrahlmarker zuordnen.'''
        'Blue Squadron Pathfinder':
            ship: "U-Flügler"
            name: "Aufklärer der Blauen Staffel"
        'Cassian Andor':
            ship: "U-Flügler"
            text: '''Zu Beginn der Aktivierungsphase darfst du 1 Stressmarker von 1 anderen freundlichen Schiff in Reichweite 1-2 entfernen.'''
        'Bodhi Rook':
            ship: "U-Flügler"
            text: '''Sobald ein freundliches Schiff eine Zielerfassung durchführt, kann jenes Schiff ein feindliches Schiff in Reichweite 1-3 zu einem freundlichen Schiff in die Zielerfassung nehmen.'''
        'Heff Tobber':
            ship: "U-Flügler"
            text: '''Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, das dazu geführt hat, dass es sich mit deinem Schiff überschneidet, darfst du eine freie Aktion durchführen.'''
        '''"Duchess"''':
            ship: "TIE-Stürmer"
            name: '"Herzogin"'
            text: '''Solange du die Aufwertungskarte "Adaptive Querruder" ausgerüstet hast, darfst du wählen ihre Kartenfähigkeit zu ignorieren.'''
        '''"Pure Sabacc"''':
            ship: "TIE-Stürmer"
            name: '"Voller Sabacc"'
            text: '''Sobald du angreifst, würfelst du 1 zusätzlichen Angriffswürfel, falls du 1 oder weniger Schadenskarten hast.'''
        '''"Countdown"''':
            ship: "TIE-Stürmer"
            text: '''Sobald du verteidigst, darfst du im Schritt "Ergebnisse vergleichen". falls du nicht gestresst bist, 1 Schaden erleiden, um <strong>alle</strong> Ergebnisse zu negieren. Falls du das tust, erhältst du 1 Stressmarker.'''
        '''Imperial Trainee''':
            ship: "TIE-Stürmer"
            name: "Imperialer Kadett"
        '''Scarif Defender''':
            ship: "TIE-Stürmer"
            name: "Verteidiger von Scarif"
        '''Black Squadron Scout''':
            ship: "TIE-Stürmer"
            name: "Scout der Schwarzen Staffel"
        # C-ROC
        'C-ROC Cruiser':
            ship: "C-ROC Kreuzer"
            name: "C-ROC Kreuzer"
        'Genesis Red':
            ship: "M3-A Abfangjäger"
            text: '''Nachdem du ein Schiff in die Zielerfassung genommen hast, ordne deinem Schiff so viele Fokus- und Ausweichmarker zu, bis es ebenso viele Fokus- und Ausweichmaarker wie das erfasste Schiff hat.'''
        'Quinn Jast':
            ship: "M3-A Abfangjäger"
            text: '''Zu Beginn der Kampfphase darfst du einen Waffen-deaktiviert-Marker erhalten, um eine deiner abgelegten %TORPEDO%- oder %MISSILE%-Aufwertungen wieder umzudrehen.'''
        'Inaldra':
            ship: "M3-A Abfangjäger"
            text: '''Sobald du angreifst oder verteidigst, darfst du 1 Schild ausgeben, um beliebig viele deiner Würfel neu zu würfeln.'''
        'Sunny Bounder':
            ship: "M3-A Abfangjäger"
            text: '''Ein Mal pro Runde darfst du, nachdem du gewürfelt oder neu gewürfelt hast, falls alle Würfel dasselbe Ergebnis zeigen, 1 weiteres Ergebnis dieser Art hinzufügen.'''
        'Lieutenant Kestal':
            text: '''Sobald du angreifst, darfst du 1 Fokusmarker ausgeben, um alle Leerseiten und %FOCUS% des Verteidigers zu negieren.'''
        '"Double Edge"':
            name: "Doppelklinge"
            text: '''Ein Mal pro Runde, nachdem du einen Angriff mit einer Sekundärwaffe durchgeführt und nicht getroffen hast, darfst du einen Angriff mit einer anderen Waffe durchführen.'''
        'Onyx Squadron Escort':
            ship: "TIE Aggressor"
            name: "Eskorte der Onyx-Staffel"
        'Sienar Specialist':
            ship: "TIE Aggressor"
            name: "Experte von Sienar"
        'Viktor Hel':
            text: '''After defending, if you did not roll exactly 2 defense dice, the attacker receives 1 stress token.'''
        'Lowhhrick':
            ship: "Auzituck-Kanonenboot"
            text: '''Sobald ein anderes freundliches Schiff in Reichweite 1 verteidigt, darfst du 1 Verstärkungsmarker ausgeben. Falls du das tust, fügt der Verteidiger 1 %EVADE% hinzu.'''
        'Wullffwarro':
            ship: "Auzituck-Kanonenboot"
            text: '''Sobald du angreifst, wirfst du 1 zusätzlichen Angriffswürfel, falls du keine Schilde hast und dir mindestens 1 Schadenskarte zugeordnet ist.'''
        'Wookiee Liberator':
            name: "Wookiee-Befreier"
            ship: "Auzituck-Kanonenboot"
        'Kashyyyk Defender':
            name: "Verteidiger von Kashyyyk"
            ship: "Auzituck-Kanonenboot"
        'Captain Nym (Scum)':
            text: '''Du darfst freundliche Bomben ignorieren. Sobald ein freundliches Schiff verteidigt, darf der Verteidiger 1 %EVADE% hinzufügen, falls der Angreifer die Reichweite durch einen freundlichen Bombenmarker misst.'''
        'Captain Nym (Rebel)':
            text: '''Ein Mal pro Runde darfst du die Detonation eines freundliche Bombenmarkers verhindern.'''
        'Sol Sixxa':
            text: '''Sobald du eine Bombe legst, darfst du die [%TURNLEFT%1]- oder [%TURNRIGHT%1]-Schablone statt der [%STRAIGHT%1]-Schablone verwenden.'''
        'Lok Revenant':
            name: "Lok-Pirat"
        'Karthakk Pirate':
            name: "Pirat aus dem Karthakk-Sektor"
        'Dalan Oberos':
            text: '''If you are not stressed, when you reveal a turn, bank, or Segnor's Loop maneuver, you may instead treat it as a red Tallon Roll maneuver of the same direction (left or right) using the template of the original revealed maneuver.'''
        'Thweek':
            text: '''During setup, before the "Place Forces" step, you may choose 1 enemy ship and assign the "Shadowed" or "Mimicked" Condition card to it.'''
        'Captain Jostero':
            text: '''Once per round, after an enemy ship that is not defending against an attack suffers damage or critical damage, you may perform an attack against that ship.'''

    upgrade_translations =
        "Ion Cannon Turret":
            name: "Ionengeschütz"
            text: """<strong>Angriff:</strong> Greife 1 Schiff an (es muss nicht in deinem Feuerwinkel sein).<br /><br />Wenn der Angriff trifft, nimmt das verteidigende Schiff 1 Schaden und erhält 1 Ionenmarker. Dann werden alle übrigen Würfelergebnisse negiert."""
        "Proton Torpedoes":
            name: "Protonen-Torpedos"
            text: """<strong>Angriff (Zielerfassung):</strong>Gib deine Zielerfassung aus und lege diese Karte ab, um diesen Angriff durchzuführen.<br /><br />Du darfst eines deiner %FOCUS% in ein %CRIT% ändern."""
        "R2 Astromech":
            name: "R2 Astromechdroide"
            text: """Du darfst alle Manöver mit Geschwindigkeit 1 und 2 wie grüne Manöver behandeln."""
        "R2-D2":
            text: """Nachdem du ein grünes Manöver ausgeführt hast, darfst du 1 Schild wiederaufladen (bis maximal zum Schildwert)."""
        "R2-F2":
            text: """<strong>Aktion:</strong> Erhöhe deinen Wendigkeitswert bis zum Ende der Spielrunde um 1."""
        "R5-D8":
            text: """<strong>Aktion:</strong> Wirf 1 Verteidigungswürfel.<br /><br />Lege bei %EVADE% oder %FOCUS% 1 deiner verdeckten Schadenskarten ab."""
        "R5-K6":
            text: """Wirf 1 Verteidigungswürfel nachdem du deine Zielerfassungsmarker ausgegeben hast.<br /><br />Bei %EVADE% nimmst du dasselbe Schiff sofort wieder in die Zielerfassung. Für diesen Angriff kannst du die Zielerfassungsmarker nicht erneut ausgeben."""
        "R5 Astromech":
            name: "R5 Astromechdroide"
            text: """Wähle während der Endphase 1 deiner offnen Schadenskarte mit dem Attribut <strong>Schiff</strong> und drehe sie um."""
        "Determination":
            name: "Entschlossenheit"
            text: """Wenn du eine offene Schadenskarte mit dem Attribut <b>Pilot</b> erhältst, wird diese sofort abgelegt (ohne dass der Kartentext in Kraft tritt)."""
        "Swarm Tactics":
            name: "Schwarmtaktik"
            text: """Du darfst zu Beginn der Kampfphase 1 freundliches Schiff in Reichweite 1 wählen.<br /><br />Bis zum Ende dieser Phase wird das gewählte Schiff so behandelt, als hätte es denselben Pilotenwert wie du."""
        "Squad Leader":
            name: "Staffelführer"
            text: """<strong>Aktion:</strong> Wähle ein Schiff in Reichweite 1-2 mit einem geringeren Pilotenwert als du.<br /><br />Das gewählte Schiff darf sofort 1 freie Aktion durchführen."""
        "Expert Handling":
            name: "Flugkunst"
            text: """<strong>Aktion:</strong> Führe als freie Aktion eine Fassrolle durch. Wenn du kein %BARRELROLL%-Symbol hast, erhältst du 1 Stressmarker.<br /><br />Dann darfst du 1 feindlichen Zielerfassungsmarker von deinem Schiff entfernen."""
        "Marksmanship":
            name: "Treffsicherheit"
            text: """<strong>Aktion:</strong> Wenn du in dieser Runde angreifst, darfst du eines deiner %FOCUS% in ein %CRIT% und alle anderen %FOCUS% in %HIT% ändern."""
        "Concussion Missiles":
            name: "Erschütterungsraketen"
            text: """<strong>Angriff (Zielerfassung):</strong> Gib eine Zielerfassung aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Du darfst eine deiner Leerseiten in ein %HIT% ändern."""
        "Cluster Missiles":
            name: "Cluster-Raketen"
            text: """<strong>Angriff (Zielerfassung):</strong> Gib eine Zielerfassung aus und lege diese Karte ab, um mit dieser Sekundärwaffe <strong>zwei Mal</strong> anzugreifen"""
        "Daredevil":
            name: "Draufgänger"
            text: """<strong>Aktion:</strong> Führe ein weißes (%TURNLEFT% 1) oder (%TURNRIGHT% 1) Manöver aus. Dann erhältst du 1 Stressmarker.<br /><br />Wenn du kein %BOOST%-Aktionssymbol hast, musst du dann 2 Angriffswürfel werfen. Du nimmst allen gewürfelten Schaden (%HIT%) und kritischen Schaden (%CRIT%)."""
        "Elusiveness":
            name: "Schwer zu Treffen"
            text: """Wenn du verteidigst, darfst du 1 Stressmarker nehmen, um 1 Angriffswürfel zu wählen. Diesen muss der Angreifer neu würfeln.<br /><br />Du kannst diese Fähigkeit nicht einsetzen, solange du 1 oder mehrere Stressmarker hast."""
        "Homing Missiles":
            name: "Lenkraketen"
            text: """<strong>Angriff (Zielerfassung):</strong> Lege diese Karte ab, um diesen Angriff durchzuführen.<br /><br />Bei diesem Angriff kann der Verteidiger keine Ausweichmarker ausgeben."""
        "Push the Limit":
            name: "Bis an die Grenzen"
            text: """Einmal pro Runde darfst du nach dem Durchführen einer Aktion eine freie Aktion aus deiner Aktionsleiste durchführen.<br /><br />Dann erhältst du 1 Stressmarker."""
        "Deadeye":
            name: "Meisterschütze"
            text: """%DE_SMALLSHIPONLY%%LINEBREAK%Du darfst die Bedingung "Angriff (Zielerfassung):" in "Angriff (Fokussierung):" ändern.<br /><br />Wenn ein Angriff das Ausgeben von Zielerfassungsmarkern erfordert, darfst du stattdessen auch einen Fokusmarker ausgeben."""
        "Expose":
            name: "Aggressiv"
            text: """<strong>Aktion:</strong> Bis zum Ende der Runde steigt dein Primärwaffenwert um 1, dafür sinkt dein Wendigkeitswert um 1."""
        "Gunner":
            name: "Bordschütze"
            text: """Unmittelbar nachdem du mit einem Angriff verfehlt hast, darfst du einen weiteren Angriff mit deiner Primärwaffe durchführen. Danach kannst du in dieser Runde nicht noch einmal angreifen."""
        "Ion Cannon":
            name: "Ionenkanonen"
            text: """<strong>Angriff:</strong> Greife 1 Schiff mit dieser Sekundärwaffe an.<br /><br />Wenn du triffst, nimmt das verteidigende Schiff 1 Schaden und erhält 1 Ionenmarker. Dann werden <b>alle</b> übrigen Würfelergebnisse negiert."""
        "Heavy Laser Cannon":
            name: "Schwere Laserkanone"
            text: """<strong>Attack:</strong> Greife 1 Schiff mit dieser Sekundärwaffe an.<br /><br />Unmittelbar nach dem Angriffswurf musst du alle %CRIT% in %HIT% ändern."""
        "Seismic Charges":
            name: "Seismische Bomben"
            text: """Nach dem Aufdecken deines Manöverrads darfst du diese Karte ablegen um 1 Seismischen Bomben-Marker zu <strong>legen</strong>.<br /><br />Der Marker <strong>detoniert</strong> am Ende der Aktivierungsphase."""
        "Mercenary Copilot":
            name: "Angeheuerter Kopilot"
            text: """Wenn du ein Ziel in Reichweite 3 angreifst, darfst du eines deiner %HIT%  in ein %CRIT% ändern."""
        "Assault Missiles":
            name: "Angriffsraketen"
            text: """Angriff (Zielerfassung): Gib eine Zielerfassung aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Wenn du triffst, nimmt jedes andere Schiff in Reichweite 1 des verteidigendes Schiffs 1 Schaden."""
        "Veteran Instincts":
            name: "Veteraneninstinkte"
            text: """Dein Pilotenwert steigt um 2."""
        "Proximity Mines":
            name: "Annäherungsminen"
            text: """<strong>Aktion:</strong> Lege diese Karte ab, um 1 Annäherungsminen-Marker zu <strong>legen</strong>.<br /><br />Der Marker <strong>detoniert</strong>, sobald sich die Basis eines Schiffs oder die Manöverschablone mit dem Marker überschneidet."""
        "Weapons Engineer":
            name: "Waffentechniker"
            text: """Du darfst 2 verschiedene Schiffe gleichzeitig in der Zielerfassung haben (maximal 1 Zielerfassung pro feindlichem Schiff).<br /><br />Sobald du eine Zielerfassung durchführst, darfst du zwei verschiedene Schiffe als Ziele erfassen."""
        "Draw Their Fire":
            name: "Das Feuer auf mich ziehen"
            text: """Wenn ein freundliches Schiff in Reichweite 1 durch einen Angriff getroffen wird, darfst du anstelle dieses Schiffs den Schaden für 1 nicht-negiertes %CRIT% auf dich nehmen."""
        "Luke Skywalker":
            text: """%DE_REBELONLY%%LINEBREAK%Unmittelbar nachdem du mit einem Angriff verfehlt hast, darfst du einen weiteren Angriff mit deiner Primärwaffe durchführen. Du darfst ein %FOCUS% in ein %HIT% ändern. Danach kannst du in dieser Runde nicht noch einmal angreifen."""
        "Nien Nunb":
            text: """%DE_REBELONLY%%LINEBREAK%Du darfst alle %STRAIGHT%-Manöver wie grüne Manöver behandeln."""
        "Chewbacca":
            name: "Chewbacca (Crew)"
            text: """%DE_REBELONLY%%LINEBREAK%Wenn du eine Schadenskarte erhältst, darfst du sie sofort ablegen und 1 Schild wiederaufladen.<br /><br />Danach wird diese Aufwertungskarte abgelegt."""
        "Advanced Proton Torpedoes":
            name: "Verstärkte Protonen-Torpedos"
            text: """<strong>Angriff (Zielerfassung):</strong> Gib eine Zielerfassung aus und lege diese Karte ab um mit dieser Sekundärwaffe anzugreifen.<br /><br />Du darfst bis zu 3 deiner Leerseiten in %FOCUS% ändern."""
        "Autoblaster":
            name: "Repetierblaster"
            text: """<strong>Angriff:</strong> Greife 1 Schiff mit dieser Sekundärwaffe an.<br /><br />Deine %HIT% können von Verteidigungswürfeln nicht negiert werden.<br /><br />Der Verteidiger darf %CRIT% negieren, bevor alle %HIT% negiert wurden."""
        "Fire-Control System":
            name: "Feuerkontrollsystem"
            text: """Nachdem du angegriffen hast, darfst du eine Zielerfassung auf den Verteidiger durchführen."""
        "Blaster Turret":
            name: "Blastergeschütz"
            text: """<strong>Angriff (Fokussierung):</strong> Gib 1 Fokusmarker aus, um 1 Schiff mit dieser Sekundärwaffe anzugreifen (es muss nicht in deinem Feuerwinkel sein)."""
        "Recon Specialist":
            name: "Aufklärungs-Experte"
            text: """Wenn du die Aktion Fokussieren durchführst, lege 1 zusätzlichen Fokusmarker neben dein Schiff."""
        "Saboteur":
            text: """<strong>Aktion:</strong> Wähle 1 feindliches Schiff in Reichweite 1 und wirf 1 Angriffswürfel. Bei %HIT% oder %CRIT%, wähle 1 zufällige verdeckte Schadenskarte des Schiffs, decke sie auf und handle sie ab."""
        "Intelligence Agent":
            name: "Geheimagent"
            text: """Wähle zu Beginn der Aktivierungsphase 1 feindliches Schiff in Reichweite 1-2. Du darfst dir das ausgewählte Manöver dieses Schiffs ansehen."""
        "Proton Bombs":
            name: "Protonenbomben"
            text: """Nach dem Aufdecken deines Manöverrads darfst du diese Karte ablegen um 1 Protonenbomben-Marker zu <strong>legen</strong>.<br /><br />Der Marker <strong>detoniert</strong> am Ende der Aktivierungsphase."""
        "Adrenaline Rush":
            name: "Adrenalinschub"
            text: """Wenn du ein rotes Manöver aufdeckst, darfst du diese Karte ablegen, um das Manöver bis zum Ende der Aktivierungsphase wie ein weißes Manöver zu behandeln."""
        "Advanced Sensors":
            name: "Verbesserte Sensoren"
            text: """Unmittelbar vor dem Aufdecken deines Manövers darfst du 1 freie Aktion durchführen.<br /><br />Wenn du diese Fähigkeit nutzt, musst du den Schritt "Aktion durchführen" in dieser Runde überspringen."""
        "Sensor Jammer":
            name: "Störsender"
            text: """Sobald du verteidigst, darfst du 1 %HIT% des Angreifers in ein %FOCUS% ändern.<br /><br />Der Angreifer darf den geänderten Würfel nicht neu würfeln."""
        "Darth Vader":
            name: "Darth Vader (Crew)"
            text: """%DE_IMPERIALONLY%%LINEBREAK%Nachdem du ein feindliches Schiff angegriffen hast, darfst du 2 Schaden nehmen, damit dieses Schiff 1 kritischen Schaden nimmt."""
        "Rebel Captive":
            name: "Gefangener Rebell"
            text: """%DE_IMPERIALONLY%%LINEBREAK%Ein Mal pro Runde erhält das erste Schiff, das einen Angriff gegen dich ansagt, sofort 1 Stressmarker."""
        "Flight Instructor":
            name: "Fluglehrer"
            text: """Beim Verteidigen darfst du 1 deiner %FOCUS% neu würfeln. Hat der Angreifer einen Pilotenwert von 2 oder weniger, darfst du stattdessen 1 deiner Leerseiten neu würfeln."""
        "Navigator":
            name: "Navigator"
            text: """Nach dem Aufdecken deines Manöverrads darfst du das Rad auf ein anderes Manöver mit gleicher Flugrichtung drehen.<br /><br />Wenn du bereits Stressmarker hast, darfst du es nicht auf ein rotes Manöver drehen."""
        "Opportunist":
            name: "Opportunist"
            text: """Wenn du angreifst und der Verteidiger keine Fokusmarker oder Ausweichmarker hat, kannst du einen Stressmarker nehmen, um einen zusätzlichen Angriffswürfel zu erhalten.<br /><br />Du kannst diese Fähigkeit nicht nutzen, wenn du einen Stressmarker hast."""
        "Comms Booster":
            name: "Kommunikationsverstärker"
            text: """<strong>Energie:</strong> Gib 1 Energie aus, um sämtliche Stressmarker von einem freundlichen Schiff in Reichweite 1-3 zu entfernen. Dann erhält jenes Schiff 1 Fokusmarker."""
        "Slicer Tools":
            name: "Hackersoftware"
            text: """<strong>Aktion:</strong> Wähle 1 oder mehrere feindliche Schiffe mit Stressmarker in Reichweite 1-3. Bei jedem gewählten Schiff kannst du 1 Energie ausgeben, damit es 1 Schaden nimmt."""
        "Shield Projector":
            name: "Schildprojektor"
            text: """Wenn ein feindliches Schiff in der Kampfphase an die Reihe kommt, kannst du 3 Energie ausgeben, um das Schiff bis zum Ende der Phase dazu zu zwingen dich anzugreifen, falls möglich."""
        "Ion Pulse Missiles":
            name: "Ionenpuls-Raketen"
            text: """<strong>Angriff (Zielerfassung):</strong> Lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Wenn du triffst, nimmt das verteidigende Schiff 1 Schaden und erhält 2 Ionenmarker. Dann werden <strong>alle<strong> übrigen Würfelergebnisse negiert."""
        "Wingman":
            name: "Flügelmann"
            text: """Entferne zu Beginn der Kampfphase 1 Stressmarker von einem anderen freundlichen Schiff in Reichweite 1."""
        "Decoy":
            name: "Täuschziel"
            text: """Zu Beginn der Kampfphase darfst du 1 freundliches Schiff in Reichweite 1-2 wählen. Bis zum Ende der Phase tauscht du mit diesem Schiff den Pilotenwert."""
        "Outmaneuver":
            name: "Ausmanövrieren"
            text: """Wenn du ein Schiff innerhalb deines Feuerwinkels angreifst und selbst nicht im Feuerwinkel dieses Schiffs bist, wird seine Wendigkeit um 1 reduziert (Minimum 0)"""
        "Predator":
            name: "Jagdinstinkt"
            text: """Wenn du angreifst, darfst du 1 Angriffswürfel neu würfeln. Ist der Pilotenwert des Verteidigers2 oder niedriger, darfst du stattdessen bis zu 2 Angriffswürfel neu würfeln."""
        "Flechette Torpedoes":
            name: "Flechet-Torpedos"
            text: """<strong>Angriff (Zielerfassung):</strong> Gib deine Zielerfassungsmarker aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Nachdem du angegriffen hast, bekommt der Verteidiger 1 Stressmarker, sofern sein Hüllenwert 4 oder weniger beträgt."""
        "R7 Astromech":
            name: "R7-Astromech-Droide"
            text: """Ein Mal pro Runde kannst du beim Verteidigen gegen den Angriff eines Schiffs, das du in Zielerfassung hast, die Zielerfassungsmarker ausgeben, um beliebige (oder alle) Angriffswürfel zu wählen. Diese muss der Angreifer neu würfeln."""
        "R7-T1":
            name: "R7-T1"
            text: """<strong>Aktion:</strong> Wähle ein feindliches Schiff in Reichweite 1-2. Wenn du im Feuerwinkel dieses Schiffs bist, kannst du es in die Zielerfassung nehmen. Dann darfst du als freie Aktion einen Schub durchführen."""
        "Tactician":
            name: "Taktiker"
            text: """Nachdem du ein Schiff in Reichweite 2 und innerhalb deines Feuerwinkels angegriffen hast, erhält es 1 Stressmarker."""
        "R2-D2 (Crew)":
            name: "R2-D2 (Crew)"
            text: """%DE_REBELONLY%%LINEBREAK%Wenn du am Ende der Endphase keine Schilde hast, darfst du 1 Schild wieder aufladen und 1 Angriffswürfel werfen. Bei %HIT% musst du 1 deiner verdeckten Schadenskarten (zufällig gewählt) umdrehen und abhandeln."""
        "C-3PO":
            name: "C-3PO"
            text: """%DE_REBELONLY%%LINEBREAK%Einmal pro Runde darfst du, bevor du 1 oder mehrere Verteidigungswürfel wirfst, laut raten, wie viele %EVADE% du würfeln wirst. Wenn du richtig geraten hast (bevor die Ergebnisse modifiziert werden), wird 1 %EVADE% hinzugefügt."""
        "Single Turbolasers":
            name: "Einzelne Turbolasers"
            text: """<strong>Angriff (Energie):</strong> gib 2 Energie von dieser Karte aus, um mit dieser Sekundärwaffe anzugreifen. Der Verteidiger verwendet zum Verteidigen seinen doppelten Wendigkeitswert. Du darfst 1 deiner %FOCUS% in ein %HIT% ändern."""
        "Quad Laser Cannons":
            name: "Vierlings-Laserkanone"
            text: """<strong>Angriff (Energie):</strong> Gib 1 Energie von dieser Karte aus, um mit dieser Sekundärwaffe anzugreifen. Wenn der Angriff verfehlt, kannst du sofort 1 Energie von dieser Karte ausgeben, um den Angriff zu wiederholen."""
        "Tibanna Gas Supplies":
            name: "Tibanna-Gas-Vorräte"
            text: """<strong>Energie:</strong> Du kannst diese Karte ablegen, um 3 Energie zu erzeugen."""
        "Ionization Reactor":
            name: "Ionenreaktor"
            text: """<strong>Energie:</strong> Gib 5 Energie von dieser Karte aus und lege sie ab, damit jedes andere Schiff in Reichweite 1 einen Schaden nimmt und einen Ionenmarker bekommt."""
        "Engine Booster":
            name: "Nachbrenner"
            text: """Unmittelbar bevor du dein Manöverrad aufdeckst, kannst du 1 Energie ausgeben, um ein weißes (%STRAIGHT% 1)-Manöver auszuführen. Wenn es dadurch zur Überschneidung mit einem anderen Schiff käme, darfst du diese Fähigkeit nicht nutzen."""
        "R3-A2":
            name: "R3-A2"
            text: """Nachdem du das Ziel deines Angriffs angesagt hast, darfst du, wenn der Verteidiger in deinem Feuerwinkel ist, 1 Stressmarker nehmen, damit der Verteidiger auch 1 Stressmarker bekommt."""
        "R2-D6":
            name: "R2-D6"
            text: """Deine Aufwertungsleiste bekommt ein %ELITE%-Symbol.<br /><br />Du kannst diese Aufwertung nicht ausrüsten, wenn du bereits ein %ELITE%-Symbol hast oder dein Pilotenwert 2 oder weniger beträgt."""
        "Enhanced Scopes":
            name: "Verbessertes Radar"
            text: """Behandle in der Aktivierungsphase deinen Pilotenwert als "0"."""
        "Chardaan Refit":
            name: "Chardaan-Nachrüstung"
            text: """<span class="card-restriction">Nur für A-Wing</span>%LINEBREAK%Diese Karte hat negative Kommandopunktekosten."""
        "Proton Rockets":
            name: "Protonenraketen"
            text: """<strong>Angriff (Fokussierung):</strong> Lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Du darfst so viele zusätzliche Angriffswürfel werfen, wie du Wendigkeit hast (maximal 3 zusätzliche Würfel)."""
        "Kyle Katarn":
            name: "Kyle Katarn (Crew)"
            text: """%DE_REBELONLY%%LINEBREAK%Nachdem du einen Stressmarker von deinem Schiff entfernt hast, darfst du deinem Schiff einen Fokusmarker geben."""
        "Jan Ors":
            name: "Jan Ors (Crew)"
            text: """%DE_REBELONLY%%LINEBREAK%Sobald ein freundliches Schiff in Reichweite 1-3 eine Aktion Fokussierung durchführt oder ihm ein Fokusmarker zugeordnet werden würde, darfst du diesem Schiff stattdessen ein Mal pro Runde einen Ausweichmarker zuordnen."""
        "Toryn Farr":
            text: """%DE_HUGESHIPONLY%%LINEBREAK%%DE_REBELONLY%%LINEBREAK%<strong>Aktion:</strong> Gib X Energie aus, um X feindliche Schiffe in Reichweite 1-2 zu wählen. Sämtliche Fokus-, Ausweich- und blauen Zielerfassungsmarker dieser Schiffe werden entfernt."""
        # TODO Check card formatting
        "R4-D6":
            text: """Wenn du von einem Angriff getroffen wirst und es mindestens 3 nicht negierte %HIT% gibt, darfst du so viele %HIT% wählen und negieren, bis es nur noch 2 sind. Für jedes auf diese Weise negierte %HIT% bekommst du 1 Stressmarker."""
        "R5-P9":
            text: """Am Ende der Kampfphase kannst du 1 deiner Fokusmarker ausgeben, um 1 Schild wiederaufzuladen (bis maximal zum Schildwert)."""
        "WED-15 Repair Droid":
            name: "WED-15 Reparaturdroide"
            text: """%DE_HUGESHIPONLY%%LINEBREAK%<strong>Aktion:</strong> gib 1 Energie aus, um 1 deiner verdeckten Schadenskarten abzulegen oder gib 3 Energie aus, um 1 deiner offenen Schadenskarten abzulegen."""
        "Carlist Rieekan":
            text: """%DE_HUGESHIPONLY%%LINEBREAK%%DE_REBELONLY%%LINEBREAK%Zu Beginn der Aktivierungsphase kannst du diese Karte ablegen, damit bis zum Ende der Phase der Pilotenwert aller freundlichen Schiffe 12 beträgt."""
        "Jan Dodonna":
            text: """%DE_HUGESHIPONLY%%LINEBREAK%%DE_REBELONLY%%LINEBREAK%Wenn ein anderes freundliches Schiff in Reichweite 1 angreift, darf es 1 seiner gewürfelten %HIT% in ein %CRIT% ändern."""
        "Expanded Cargo Hold":
            name: "Erweiterter Ladebereich"
            text: """Ein Mal pro Runde darfst du, wenn du eine offene Schadenskarte erhältst, frei wählen, ob du sie vom Schadensstapel Bug oder Heck ziehen willst."""
            ship: "Medium-Transporter GR-75"
        "Backup Shield Generator":
            name: "Sekundärer Schildgenerator"
            text: """Am Ende jeder Runde kannst du 1 Energie ausgeben, um 1 Schild wiederaufzuladen (bis maximal zum Schildwert)."""
        "EM Emitter":
            name: "EM-Emitter"
            text: """Wenn du bei einem Angriff die Schussbahn versperrst, bekommst der Verteidiger 3 zusätzliche Verteidigungswürfel (anstatt 1)."""
        "Frequency Jammer":
            name: "Störsender (Fracht)"
            text: """Wenn du die Aktion Störsignal durchführst, wähle 1 feindliches Schiff ohne Stressmarker in Reichweite 1 des vom Störsignal betroffenen Schiffs. Das gewählte Schiff erhält 1 Stressmarker."""
        "Han Solo":
            name: "Han Solo (Crew)"
            text: """%DE_REBELONLY%%LINEBREAK%Wenn du angreifst und den Verteidiger in Zielerfassung hast, kannst du diese Zielerfassung ausgeben, um all deine gewürfelten %FOCUS% in %HIT% zu ändern."""
        "Leia Organa":
            text: """%DE_REBELONLY%%LINEBREAK%Zu Beginn der Aktivierungsphase kannst du diese Karte ablegen, damit alle freundlichen Schiffe, die ein rotes Manöver aufdecken, dieses bis zum Ende der Phase wie ein weißes Manöver behandeln dürfen."""
        "Targeting Coordinator":
            text: """<strong>Energy:</strong> You may spend 1 energy to choose 1 friendly ship at Range 1-2.  Acquire a target lock, then assign the blue target lock token to the chosen ship."""
        "Raymus Antilles":
            text: """%DE_HUGESHIPONLY%%LINEBREAK%%DE_REBELONLY%%LINEBREAK%Wähle zu Beginn der Aktivierungsphase 1 feindliches Schiff in Reichweite 1-3. Du kannst dir das gewählte Manöver dieses Schiffes ansehen. Wenn es weiß ist, bekommt dieses Schiff 1 Stressmarker."""
        "Gunnery Team":
            name: "Bordschützenteam"
            text: """Einmal pro Runde kannst du beim Angreifen mit einer Sekundärwaffe 1 Energie ausgeben, um 1 gewürfelte Leerseite in ein %HIT% zu ändern."""
        "Sensor Team":
            name: "Sensortechnikerteam"
            text: """Du kannst feindliche Schiffe in Reichweite 1-5 in die Zielerfassung nehmen (anstatt in Reichweite 1-3)."""
        "Engineering Team":
            name: "Ingenieurteam"
            text: """Wenn du in der Aktivierungsphase ein %STRAIGHT% Manöver aufdeckst, bekommst du im Schritt "Energie gewinnen" 1 zusätzlichen Energiemarker."""
        "Lando Calrissian":
            name: "Lando Calrissian (Crew)"
            text: """%DE_REBELONLY%%LINEBREAK%<strong>Aktion:</strong> Wirf 2 Verteidigungswürfel. Dein Schiff bekommt 1 Fokusmarker für jedes %FOCUS% und 1 Ausweichmarker für jedes %EVADE%."""
        "Mara Jade":
            text: """%DE_IMPERIALONLY%%LINEBREAK%Am Ende der Kampfphase erhält jedes feindliche Schiff in Reichweite 1, das keine Stressmarker hat, einen Stressmarker."""
        "Fleet Officer":
            name: "Flottenoffizier"
            text: """%DE_IMPERIALONLY%%LINEBREAK%<strong>Aktion:</strong> Wähle bis zu 2 freundliche Schiffe in Reichweite 1-2 und gib ihnen je 1 Fokusmarker. Dann erhältst du 1 Stressmarker."""
        "Targeting Coordinator":
            name: "Zielkoordinator"
            text: """<strong>Energie:</strong> Du kannst 1 Energie ausgeben, um 1 freundliches Schiff in Reichweite 1-2 zu wählen. Nimm dann ein Schiff in die Zielerfassung und gibt den blauen Zielerfassungsmarker dem gewählten Schiff."""
        "Lone Wolf":
            name: "Einsamer Wolf"
            text: """Sobald du angreifst oder verteidigst und wenn keine anderen freundlichen Schiffe in Reichweite 1-2 sind, darfst du 1 gewürfelte Leerseite neu würfeln."""
        "Stay On Target":
            name: "Am Ziel bleiben"
            text: """Sobald du ein Manöverrad aufdeckst, darfst du ein anderes Manöver mit gleicher Geschwindigkeit auf deinem Rad einstellen.<br /><br />Dein Manöver wird wie ein rotes Manöver behandelt."""
        "Dash Rendar":
            name: "Dash Rendar (Crew)"
            text: """%DE_REBELONLY%%LINEBREAK%Du darfst auch angreifen während du dich mit einem Hindernis überschneidest.<br /><br />Deine Schussbahn kann nicht versperrt werden."""
        '"Leebo"':
            name: '"Leebo" (Crew)'
            text: """%DE_REBELONLY%%LINEBREAK%<strong>Aktion:</strong> Führe als freie Aktion einen Schub durch. Dann erhältst du 1 Ionenmarker."""
        "Ruthlessness":
            name: "Erbarmungslos"
            text: """%DE_IMPERIALONLY%%LINEBREAK%Nachdem du mit einem Angriff getroffen hast, <strong>musst</strong> du 1 anderes Schiff in Reichweite 1 des Verteidigers (außer dir selbst) wählen. Das Schiff nimmt 1 Schaden."""
        "Intimidation":
            name: "Furchteinflössend"
            text: """Die Wendigkeit feindlicher Schiffe sinkt um 1, solange du sie berührst."""
        "Ysanne Isard":
            text: """%DE_IMPERIALONLY%%LINEBREAK%Wenn du zu Beginn der Kampfphase keine Schilde und mindestens 1 Schadenskarte hast, darfst du als freie Aktion ausweichen."""
        "Moff Jerjerrod":
            text: """%DE_IMPERIALONLY%%LINEBREAK%Wenn du eine offene Schadenskarte erhältst, kannst du diese Aufwertungskarte oder eine andere %CREW%-Aufwertung ablegen, um die Schadenskarte umzudrehen (ohne dass der Kartentext in Kraft tritt)."""
        "Ion Torpedoes":
            name: "Ionentorpedos"
            text: """<strong>Angriff (Zielerfassung):</strong> Gib deine Zielerfassungsmarker aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Triffst du, erhalten alle Schiffe in Reichweite 1 des Verteidigers und der Verteidiger selbst je 1 Ionenmarker."""
        "Bodyguard":
            name: "Leibwache"
            text: """%DE_SCUMONLY%%LINEBREAK%Zu Beginn der Kampfphase darfst du einen Fokusmarker ausgeben um ein freundliches Schiff in Reichweite 1 zu wählen, dessen Pilotenwert höher ist als deiner. Bis zum Ende der Runde steigt sein Wendigkeitswert um 1."""
        "Calculation":
            name: "Berechnung"
            text: """Sobald du angreifst, darfst du einen Fokusmarker ausgeben, um 1 deiner %FOCUS% in ein %CRIT% zu ändern."""
        "Accuracy Corrector":
            name: "Zielvisor"
            text: """Wenn du angreifst, darfst du während des Schritts "Angriffswürfel modifizieren" alle deine Würfelergebnisse negieren. Dann darfst du 2 %HIT% hinzufügen.%LINEBREAK%Deine Würfel können während dieses Angriffs nicht noch einmal modifiziert werden."""
        "Inertial Dampeners":
            name: "Trägheitsdämpfer"
            text: """Sobald du dein Manöverrad aufdeckst, darfst du diese Karte ablegen, um stattdessen ein weißes [0%STOP%]-Manöver auszuführen. Dann erhältst du 1 Stressmarker."""
        "Flechette Cannon":
            name: "Flechettekanonen"
            text: """<strong>Angriff:</strong> Greife 1 Schiffe an.%LINEBREAK%Wenn dieser Angriff trifft, nimmt das verteidigende Schiff 1 Schaden und erhält 1 Stressmarker (falls es noch keinen hat.) Dann werden <strong>alle</strong> Würfelergebnisse negiert."""
        '"Mangler" Cannon':
            name: '"Mangler"-Kanonen'
            text: """<strong>Angriff:</strong> Greife 1 Schiff an.%LINEBREAK%Sobald du angreifst, darfst du 1 deiner %HIT% in ein %CRIT% ändern."""
        "Dead Man's Switch":
            name: "Totmannschalter"
            text: """Sobald du zerstörst wirst, nimmt jedes Schiff in Reichweite 1 einen Schaden."""
        "Feedback Array":
            name: "Rückkopplungsfeld"
            text: """In der Kampfphase darfst du statt einen Angriff durchzuführen 1 Ionenmarker und 1 Schaden nehmen, um ein feindliches Schiff in Reichweite 1 zu wählen. Das gewählte Schiff nimmt 1 Schaden."""
        '"Hot Shot" Blaster':
            text: """<strong>Angriff:</strong> Lege diese Karte ab, um 1 Schiff (auch außerhalb deines Feuerwinkels) anzugreifen."""
        "Greedo":
            text: """%DE_SCUMONLY%%LINEBREAK%In jeder Runde wird bei deinem ersten Angriff und deiner ersten Verteidigung die erste Schadenskarte offen zugeteilt."""
        "Salvaged Astromech":
            name: "Abgewrackter Astromechdroide"
            text: """Sobald du eine offene Schadenskarte mit dem Attribut <strong>Schiff</strong> erhältst, darfst du sie sofort ablegen (bevor ihr Effekt abgehandelt wird).%LINEBREAK%Danach wird diese Aufwertungskarte abgelegt."""
        "Bomb Loadout":
            name: "Bombenladung"
            text: """<span class="card-restriction">Nur für Y-Wing.</span>%LINEBREAK%Füge deiner Aufwertungsleiste das %BOMB%-Symbol hinzu."""
        '"Genius"':
            name: '"Genie"'
            text: """Wenn du eine Bombe ausgerüstet hast, die gelegt werden kann, sobald du ein Manöver aufdeckst, darfst du die Bombe legen, nachdem du dein Manöver ausgeführt hast."""
        "Unhinged Astromech":
            name: "Ausgeklinkter Astromech-Droide"
            text: """Du darfst alle Manöver mit Geschwindigkeit 3 wie grüne Manöver behandeln."""
        "R4-B11":
            text: """Sobald du angreifst, darfst du, falls du den Verteidiger in der Zielerfassung hast, den Zielerfassungsmarker ausgeben, um einen oder alle Verteidigungswürfel zu wählen. Diese muss der Verteidiger neu würfeln."""
        "Autoblaster Turret":
            name: "Autoblastergeschütz"
            text: """<strong>Angriff:</strong> Greife 1 Schiff (auch außerhalb deines Feuerwinkels) an. %LINEBREAK%Deine %HIT% können von Verteidigungswürfeln nicht negiert werden. Der Verteidiger darf %CRIT% vor %HIT% negieren."""
        "R4 Agromech":
            name: "R4-Agromech-Droide"
            text: """Sobald du angreifst, darfst du, nachdem du einen Fokusmarker ausgegeben hast, den Verteidiger in die Zielerfassung nehmen."""
        "K4 Security Droid":
            name: "K4-Sicherheitsdroide"
            text: """%DE_SCUMONLY%%LINEBREAK%Nachdem du ein grünes Manöver ausgeführt hast, darfst du ein Schiff in die Zielerfassung nehmen."""
        "Outlaw Tech":
            name: "Gesetzloser Techniker"
            text: """%DE_SCUMONLY%%LINEBREAK%Nachdem du ein rotes Manöver ausgeführt hast, darfst du deinem Schiff 1 Fokusmarker zuweisen."""
        "Advanced Targeting Computer":
            name: "Verbesserter Zielcomputer"
            text: """<span class="card-restriction">Nur für TIE Advanced</span>%LINEBREAK%Sobald du mit deiner Primärwaffe angreifst, darfst du deinem Würfelwurf 1 %CRIT% hinzufügen, wenn du den Verteidiger in der Zielerfassung hast. Wenn du das tust, kannst du während dieses Angriffs keine Zielerfassungen ausgeben."""
        "Ion Cannon Battery":
            name: "Ionengeschützbatterie"
            text: """<strong>Angriff (Energie):</strong> Gib 2 Energie von dieser Karte aus, um diesen Angriff durchzuführen. Wenn dieser Angriff trifft, nimmt der Verteidiger 1 kritischen Schaden und erhält 1 Ionenmarker. Dann werden <strong>alle</strong> Würfelergebnisse negiert."""
        "Extra Munitions":
            name: "Ersatzmunition"
            text: """Sobald du diese Karte ausrüstest, lege 1 Munitionsmarker auf jede ausgerüstete %TORPEDO%, %MISSILE% oder %BOMB% Aufwertungskarte. Sobald du angewiesen wirst eine Aufwertungskarte abzulegen, darfst du stattdessen 1 Munitionsmarker von der entsprechenden Karte ablegen."""
        "Cluster Mines":
            name: "Clusterminen"
            text: """<strong>Aktion</strong>: Lege diese Karte ab, um 1 Satz Clusterminenmarker zu <strong>legen</strong>.<br /><br />Ein Clusterminenmarker <strong>detoniert</strong>, sobald sich eine Schiffsbasis oder Manöverschablone mit diesem Marker überschneidet."""
        "Glitterstim":
            name: "Glitzerstim"
            text: """Zu Beginn der Kampfphase darfst du diese Karte ablegen und bekommst 1 Stressmarker. Tust du das , darfst du bis zum Ende der Runde, sobald du angreifst oder verteidigst, alle deine %FOCUS% in %HIT% oder %EVADE% ändern."""
        "Grand Moff Tarkin":
            name: "Grossmoff Tarkin"
            text: """%DE_HUGESHIPONLY% %DE_IMPERIALONLY%%LINEBREAK%Zu Beginn der Kampfphase darfst du ein anderes Schiff in Reichweite 1-4 wählen. Entweder weist du ihm 1 Fokusmarker zu oder du entfernst 1 Fokusmarker von ihm."""
        "Captain Needa":
            text: """%DE_HUGESHIPONLY% %DE_IMPERIALONLY%%LINEBREAK%Wenn du dich in der Aktivierungsphase mit einem Hindernis überschneidest, erhältst du keine offene Schadenskarte. Stattdessen wirfst du 1 Angriffswürfel. Bei %HIT% oder %CRIT% nimmst du 1 Schaden."""
        "Admiral Ozzel":
            text: """%DE_HUGESHIPONLY% %DE_IMPERIALONLY%%LINEBREAK%<strong>Energie:</strong> Du darfst bis zu 3 Schilde von deinem Schiff entfernen. Für jedes entfernte Schild erhältst du 1 Energie."""
        "Emperor Palpatine":
            name: "Imperator Palpatine"
            text: """%DE_IMPERIALONLY%%LINEBREAK%Ein Mal pro Runde, bevor ein freundliches Schiff würfelt, darfst du ein Würfelergebnis benennen. Nach dem Würfeln mussst du 1 deiner Würfelergebnisse in das benante Ergebnis ändern.%LINEBREAK%Dieses Ergebnis kann nicht noch einmal modifiziert werden."""
        "Bossk":
            name: "Bossk (Crew)"
            text: """%DE_SCUMONLY%%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, der nicht geroffen hat, <strong>musst</strong> du 1 Stressmarker bekommen, wenn du keine Stressmarker hast. Weise dann deinem Schiff 1 Fokusmarker zu und nimm den Verteidiger in die Zielerfassung."""
        "Lightning Reflexes":
            name: "Blitzschnelle Reflexe"
            text: """%DE_SMALLSHIPONLY%%LINEBREAK%Nachdem du ein weißes oder grünes Manöver von deinem Rad ausgeführt hast, darfst du diese Karte ablegen, um dein Schiff um 180&deg; zu drehen. Dann erhältst du 1 Stressmarker <strong>nach</strong> dem Schritt "Stress des Piloten überprüfen"."""
        "Twin Laser Turret":
            name: "Zwillingslasergeschütz"
            text: """<strong>Angriff:</strong> Führe diesen Angriff zwei Mal durch (auch gegen ein Schiff außerhalb deines Feuerwinkels). Jedes Mal wenn dieser Angriff trifft, nimmt der Verteidiger 1 Schaden. Dann werden <strong>alle</strong> Würfelergebnisse negiert."""
        "Plasma Torpedoes":
            name: "Plasma Torpedos"
            text: """<strong>Angriff (Zielerfassung):</strong> Gib deine Zielerfassung aus und lege diese Karte ab, um diesen Angriff durchzuführen.<br /><br />Falls dieser Angriff trifft, entfernst du nach dem Verursachen von Schaden 1 Schildmarker vom Verteidiger."""
        "Ion Bombs":
            name: "Ionenbomben"
            text: """Sobald du dein Manöverrad aufdeckst, darfst du diese Karte ablegen, um 1 Ionenbombenmarker zu <strong>legen</strong>.<br /><br /> Der Marker <strong>detoniert</strong> am Ende der Aktivierungsphase."""
        "Conner Net":
            name: "Connernetz"
            text: """<strong>Aktion:</strong> Lege diese Karte ab, um 1 Connernetzmarker zu <strong>legen</strong>.<br /><br /> Der Marker <strong>detoniert</strong>, sobald sich eine Schiffsbasis oder Manöverschablone mit dem Marker überschneidet."""
        "Bombardier":
            name: "Bombenschütze"
            text: """Sobald du eine Bombe legst, darfst du die (%STRAIGHT% 2)-Schablone anstatt der (%STRAIGHT% 1)-Schablone verwenden."""
        'Crack Shot':
            name: "Meisterhafter Schuss"
            text: '''Sobald du ein Schiff innerhalb deines Feuerwinkels angreifst, darfst du zu Beginn des Schritts "Ergebnisse vergleichen" diese Karte ablegen, um 1 gewürfeltes %EVADE% des Verteidigers zu negieren.'''
        "Advanced Homing Missiles":
            name: "Verstärkte Lenkraketen"
            text: """<strong>Angriff (Zielerfassung):</strong> Lege diese Karte ab, um diesen Angriff durchzuführen.%LINEBREAK%Falls dieser Angriff triffst, teile dem Verteidiger 1 offene Schadenskarte zu. Dann werden <strong>alle</strong> Würfelergebnisse negiert."""
        'Agent Kallus':
            text: '''%DE_IMPERIALONLY%%LINEBREAK%Wähle zu Beginn der ersten Runde ein kleines oder großes feindliches Schiff. Sobald du dieses Schiff angreifst oder dich gegen dieses Schiff verteidigst, darfst du 1 deiner %FOCUS% in ein %HIT% bzw. %EVADE% ändern.'''
        'XX-23 S-Thread Tracers':
            name: "XX-23-S-Signal-Peilsender"
            text: """<strong>Angriff (Fokussierung):</strong>Lege diese Karte ab, um diesen Angriff auszuführen. Falls dieser Angriff trifft, darf jedes freundliche Schiff in Reichweite 1-2 zu dir den Verteidiger in die Zielerfassung nehmen. Dann werden <strong>alle</strong> Würfelergebnisse negiert."""
        "Tractor Beam":
            name: "Traktorstrahl"
            text: """<strong>Angriff:</strong> Greife 1 Schiff an.%LINEBREAK%Trifft der Angriff, erhält der Verteidiger 1 Traktorstrahlmarker. Dann werden <strong>alle</strong> Würfelergebnisse negiert."""
        "Cloaking Device":
            name: "Tarngerät"
            text: """%DE_SMALLSHIPONLY%%LINEBREAK%<strong>Aktion:</strong> Führe eine freie Aktion Tarnen durch.%LINEBREAK%Falls du getarnt bist, wirfst du am Ende jeder Runde 1 Angriffswürfel. Bei %FOCUS% legst du diese Karte ab, dann enttarnst du dich oder legst deinen Tarnungsmarker ab."""
        "Shield Technician":
            name: "Schildtechniker"
            text: """%DE_HUGESHIPONLY%%LINEBREAK%Sobald du die Aktion Aufladen durchführst, kannst du wählen, wie viel Energie du ausgeben möchtest, anstatt alle Energie auszugeben."""
        "Weapons Guidance":
            name: "Zielführung"
            text: """Sobald du angreifst, darfst du einen Fokusmarker ausgeben, um 1 deiner gewürfelten Leerseiten in 1 %HIT% zu ändern."""
        "BB-8":
            text: """Sobald du eine grünes Manöver aufdeckst, darfst du als freie Aktion eine Fassrolle ausführen."""
        "R5-X3":
            text: """Bevor du dein Manöver aufdeckst, darfst du diese Karte ablegen, um Hindernisse bis zum Ende der Runde zu ignorieren."""
        "Wired":
            name: "Aufgedreht"
            text: """Sobald du angreifst oder verteidigst, und wenn du gestresst bist, darfst du 1 oder mehrere %FOCUS% neu würfeln."""
        'Cool Hand':
            name: "Sichere Hand"
            text: '''Sobald du einen Stressmarker erhältst, darfst du diese Karte ablegen, um deinem Schiff 1 Fokus- oder Ausweichmarker zuzuweisen.'''
        'Juke':
            name: "Finte"
            text: '''%DE_SMALLSHIPONLY%%LINEBREAK%Sobald du angreifst und falls du einen Ausweichmarker hast, darfst du 1 %EVADE% des Verteidigers in ein %FOCUS% ändern.'''
        'Comm Relay':
            name: "Kommunikations-Relais"
            text: '''Du kannst nicht mehr als 1 Ausweichmarker haben.%LINEBREAK%Während der Endphase wird ein nicht verwendeter Ausweichmarker nicht entfernt.'''
        'Dual Laser Turret':
            ship: "Kreuzer der Gozanti-Klasse"
            name: "Doppellasergeschütz"
            text: '''%DE_GOZANTIONLY%%LINEBREAK%<strong>Angriff (Energie):</strong> Gib 1 Energie von dieser Karte aus, um diesen Angriff gegen 1 Schiff durchzuführen (auch außerhalb deines Feuerwinkels).'''
        'Broadcast Array':
            ship: "Kreuzer der Gozanti-Klasse"
            name: "Sendephalanx"
            text: '''%DE_GOZANTIONLY%%LINEBREAK%Deine Aktionsleiste erhält das %JAM%-Aktionssymbol.'''
        'Rear Admiral Chiraneau':
            name: "Konteradmiral Chiraneau"
            text: '''%HUGESHIPONLY% %IMPERIALONLY%%LINEBREAK%<strong>Aktion:</strong> Führe ein weißes (%STRAIGHT% 1)-Manöver aus.'''
        'Ordnance Experts':
            name: "Flugkörperexperten"
            text: '''Sobald ein freundliches Schiff in Reichweite 1-3 einen Angriff mit einer %TORPEDO%- oder %MISSILE%-Sekundärwaffe durchführt, darf es ein Mal pro Runde 1 seiner Leerseiten in ein %HIT% ändern.'''
        'Docking Clamps':
            ship: "Kreuzer der Gozanti-Klasse"
            name: "Andockklammern"
            text: '''%DE_GOZANTIONLY% %DE_LIMITED%%LINEBREAK%An diesem Schiff können bis zu 4 TIE-Jäger, TIE-Abfangjäger, TIE-Bomber oder TIE-Turbojäger andocken. Alle angedockten Schiffe müssen denselben Schiffstyp haben.'''
        '"Zeb" Orrelios':
            name: '"Zeb" Orrelios (Crew)'
            text: """%DE_REBELONLY%%LINEBREAK%Feindliche Schiffe in deinem Feuerwinkel, deren Basis du berührst, gelten nicht als berührt, sobald du oder sie in der Kampfphase aktiviert werden."""
        'Kanan Jarrus':
            name: "Kanan Jarrus (Crew)"
            text: """%DE_REBELONLY%%LINEBREAK%Ein Mal pro Runde, nachdem ein freundliches Schiff in Reichweite 1-2 ein weißes Manöver ausgeführt hat, darfst du 1 Stressmarker von jenem Schiff entfernen.."""
        'Reinforced Deflectors':
            name: "Verstärkte Deflektoren"
            text: """%DE_LARGESHIPONLY%%LINEBREAK%Nachdem du durch einen Angriff nach dem Verteidigen 3 oder mehr Schaden genommen hast, lädst du 1 Schild wieder auf (bis maximal zu deinem Schildwert)."""
        'Dorsal Turret':
            name: "Dorsaler Geschützturm"
            text: """<strong>Angriff:</strong> Greife 1 Schiff an (auch außerhalb deines Feuerwinkels). Falls das Ziel dieses Angriffs in Reichweite 1 ist, wirf 1 zusätzlichen Angriffswürfel."""
        'Targeting Astromech':
            name: "Zielender Astromech"
            text: '''Nachdem du eine rotes Manöver ausgeführt hast, darfst du ein Schiff in die Zielerfassung nehmen.'''
        'Hera Syndulla':
            name: "Hera Syndulla (Crew)"
            text: """%DE_REBELONLY%%LINEBREAK%Du kannst auch rote Manöver aufdecken und ausführen, solange du gestresst bist."""
        'Ezra Bridger':
            name: "Ezra Bridger (Crew)"
            text: """%DE_REBELONLY%%LINEBREAK%Sobald du angreifst und falls du gestresst bist, darfst du 1 deiner %FOCUS% in ein %CRIT% ändern."""
        'Sabine Wren':
            name: "Sabine Wren (Crew)"
            text: """%DE_REBELONLY%%LINEBREAK%Deine Aufwertungsleiste erhält ein %BOMB%-Symbol. Wähle ein Mal pro Runde, vor dem Entfernen eines freundlichen Bombenmarkers, ein feindliches Schiff in Reichweite 1 des Markers. Das gewählte Schiff nimmt 1 Schaden."""
        '"Chopper"':
            name: '"Chopper" (Crew)'
            text: """%DE_REBELONLY%%LINEBREAK%Du darfst auch Aktionen durchführen, solange du gestresst bist.%LINEBREAK%Nachdem du eine Aktion durchgeführt hast, solange du gestresst bist, nimmst du 1 Schaden."""
        'Construction Droid':
            name: "Baudroide"
            text: '''%DE_HUGESHIPONLY% %DE_LIMITED%%LINEBREAK%Sobald du die Aktion Aufladen durchführst, darfst du 1 Energie ausgeben, um 1 verdeckte Schadenskarte abzulegen.'''
        'Cluster Bombs':
            name: "Clusterbomben"
            text: '''Nachdem du dich verteidigt hast, darfst du diese Karte ablegen. Wenn du dies tust, wirft jedes andere Schiff in Reichweite 1 der verteidigenden Sektion 2 Angriffswürfel und nimmt allen gewürfelten Schaden (%HIT%) und kritischen Schaden (%CRIT%).'''
        "Adaptability":
            name: "Anpassungsfähig"
            text: """<span class="card-restriction">Doppelseitige Karte.</span>%LINEBREAK%<strong>Seite A:</strong> Dein Pilotwert steigt um 1.%LINEBREAK%<strong>Seite B:</strong> Dein Pilotwert sinkt um 1."""
        "Electronic Baffle":
            name: "Elektronischer Dämpfer"
            text: """Sobald du einen Stressmarker oder Ionenmarker erhältst, darfst du 1 Schaden nehmen, um diesen Marker abzulegen."""
        "4-LOM":
            name: "4-LOM (Crew)"
            text: """%DE_SCUMONLY%%LINEBREAK%Sobald du angreifst, darfst du im Schritt "Angriffswürfel modifizieren" 1 Ionenmarker erhalten, um 1 Fokus- oder Ausweichmarker des Verteidigers zu wählen. Der gewählte Marker kann bei diesem Angriff nicht ausgegeben werden."""
        "Zuckuss":
            name: "Zuckuss (Crew)"
            text: """%DE_SCUMONLY%%LINEBREAK%Sobald du angreifst und nicht gestresst bist, darfst du beliebig viele Stressmarker erhalten, um ebenso viele Verteidigungswürfel zu wählen. Der Verteidiger muss alle gewählten Würfel neu würfeln."""
        'Rage':
            name: "Wutanfall"
            text: """<strong>Aktion:</strong> Ordne deinem Schiff 1 Fokusmarker zu und erhalte 2 Stressmarker. Bis zum Ende der runde darfst du bis zu 3 Angriffswürfel neu würfeln, sobald du angreifst."""
        "Attanni Mindlink":
            name: "Attanni-Implantat"
            text: """%DE_SCUMONLY%%LINEBREAK%Immer wenn dir ein Fokus- oder Stressmarker zugeordnet wird, muss jedem anderen freundlichen Schiff mit Attanni-Implantat ein Marker desselben Typs zugeordnet werden, falls es diesen nicht schon hat."""
        "Boba Fett":
            name: "Boba Fett (Crew)"
            text: """%DE_SCUMONLY%%LINEBREAK%Nachdem du einen Angriff durchgeführt hast und falls dem Verteidiger eine offene Schadenskarte zugeteilt worden ist, darfst du diese Karte ablegen, um 1 der Aufwertungskarten des Verteidigers zu wählen und abzulegen."""
        "Dengar":
            name: "Dengar (Crew)"
            text: """%DE_SCUMONLY%%LINEBREAK%Sobald du angreifst, darfst du 1 Angriffswürfel neu würfeln. Falls der Verteidiger ein einzigartiger Pilot ist, darfst du stattdessen bis zu 2 Angriffswürfel neu würfeln."""
        '"Gonk"':
            name: '"Gonk" (Crew)'
            text: """%DE_SCUMONLY%%LINEBREAK%<strong>Aktion:</strong> Lege 1 Schildmarker auf diese Karte.%LINEBREAK%<strong>Aktion:</strong> Entferne 1 Schildmarker von dieser Karte, um 1 Schild wieder aufzuladen (bis maximal zu deinem Schildwert)."""
        "R5-P8":
            text: """Ein Mal pro Runde darfst du nach dem Verteidigen 1 Angriffswürfel werfen. Bei %HIT% nimmt der Angreifer 1 Schaden. Bei %CRIT% nehmen du und der Angreifer je 1 Schaden."""
        'Thermal Detonators':
            name: "Thermaldetonatoren"
            text: """Sobald du dein Manöverrad aufdeckst, darfst du diese Karte ablegen, um 1 Thermaldetonatormarker zu <strong>legen</strong>.%LINEBREAK%Der Marker <strong>detoniert</strong> am Ende der Aktivierungsphase."""
        "Overclocked R4":
            name: "Übertakteter R4"
            text: """Sobald du in der Kampfphase einen Fokusmarker ausgibst, darfst du 1 Stressmarker erhalten, um deinem Schiff 1 Fokusmarker zuzuordnen."""
        'Systems Officer':
            name: "Systemoffizier"
            text: '''%DE_IMPERIALONLY%%LINEBREAK%Nachdem du ein grünes Manöver ausgeführt hast, wähle ein anderes freundliches Schiff in Reichweite 1. Das ausgewählte Schiff darf eine Zielerfassung durchführen.'''
        # Wave IX
        'Tail Gunner':
            name: "Heckschütze"
            text: '''Sobald du von deinem Heck-Zusatz-Feuerwinkel aus angreifst, senke die Wendigkeit des Verteidigers um 1 (Minimum 0).'''
        'R3 Astromech':
            name: "R3-Astromech-Droide"
            text: '''Ein Mal pro Runde darfst du, sobald du mit einer Primärwaffe angreifst im Schritt "Angriffswürfel modifizieren" 1 deiner %FOCUS% negieren, um deinem Schiff 1 Ausweichmarker zuzuordnen.'''
        'Collision Detector':
            name: "Kollisionssensor"
            text: '''Sobald du Schub, Fassrolle oder Enttarnen durchführst, können sich dein Schiff und die Manöverschablone mit Hindernissen überschneiden.%LINEBREAK%Sobald du wegen der Überschneidung mit einem Hindernis Schaden auswürfelst, ignorierst du alle %CRIT%.'''
        'Sensor Cluster':
            name: "Sensorcluster"
            text: '''Sobald du verteidigst, darfst du einen Fokusmarker ausgeben, um 1 deiner Leerseiten in ein %EVADE% zu ändern.'''
        'Fearlessness':
            name: "Furchtlosigkeit"
            text: '''%DE_SCUMONLY%%LINEBREAK%Sobald du angreifst, darfst du 1 %HIT% zu deinem Wurf hinzufügen, falls du innerhalb des Feuerwinkels des Verteidigers in Reichweite 1 zu ihm bist und der Verteidiger innerhalb deines Feuerwinkels ist.'''
        'Ketsu Onyo':
            name: "Ketsu Onyo (Crew)"
            text: '''%DE_SCUMONLY%%LINEBREAK%Zu Beginn der Endphase darfst du 1 feindliches Schiff innerhalb deines Feuerwinkels in Reichweite 1-2 wählen. Das Schiff entfernt seine Traktorstrahlmarker nicht.'''
        'Latts Razzi':
            text: '''%DE_SCUMONLY%%LINEBREAK%Sobald du verteidigst, darfst du 1 Stressmarker vom Angreifer entfernen, um 1 %EVADE% zu deinem Wurf hinzuzufügen.'''
        'IG-88D':
            text: '''%DE_SCUMONLY%%LINEBREAK%Du hast die Pilotenfähigkeit jedes freundlichen Schiffs mit der Aufwertungskarte <em>IG-2000</em> (zusätzlich zu deiner eigenen Pilotenfähigkeit.'''
        'Rigged Cargo Chute':
            name: "Manipulierte Frachtrampe"
            text: '''%DE_LARGESHIPONLY%%LINEBREAK%<strong>Aktion:</strong> Lege diese Karte ab, um 1 Frachtmarker zu <strong>legen</strong>.'''
        'Seismic Torpedo':
            name: "Seismische Torpedos"
            text: '''<strong>Aktion:</strong> Lege diese Karte ab, um ein Hindernis in Reichweite 1-2 und innerhalb deines normalen Feuerwinkels zu wählen. Jedes Schiff in Reichweite 1 zu dem Hindernis wirfst 1 Angriffswürfel und erleidet den gewürfelten Schaden (%HIT%) oder kritischen Schaden (%CRIT%). Dann wird das Hindernis entfernt.'''
        'Black Market Slicer Tools':
            name: "Hacker-Tools vom Schwarzmarkt"
            text: '''<strong>Aktion:</strong> Wähle ein gestresstes Schiff in Reichweite 1-2 und wirf 1 Angriffswürfel. Bei %HIT% oder %CRIT% entferne 1 Stressmarker und teile ihm 1 verdeckte Schadenskarte zu.'''
        # Wave X
        'Kylo Ren':
            text: '''%DE_IMPERIALONLY%%LINEBREAK%<strong>Aktion:</strong> Ordne einem feindlichen Schiff in Reichweite 1-3 die Zustandskarte "Ich zeige dir die Dunkle Seite" zu.'''
        'Unkar Plutt':
            text: '''%DE_SCUMONLY%%LINEBREAK%Nachdem du ein Manöver ausgeführt hast, das zur Überschneidung mit einem feindlichem Schiff führt, darfst du 1 Schaden nehmen, um 1 freie Aktion durchzuführen.'''
        'A Score to Settle':
            name: "Eine offene Rechnung"
            text: '''Wähle während des Spielaufbaus, vor dem Schritt "Streitkräfte platzieren", 1 feindliches Schiff und ordne ihm die Zustandskarte "Unbezahlte Schulden" zu.%LINEBREAK%Sobald du ein Schiff mit der Zustandskarte "Unbezahlte Schulden" angreifst, darfst du 1 %FOCUS% in ein %CRIT% ändern.'''
        'Jyn Erso':
            text: '''%DE_REBELONLY%%LINEBREAK%<strong>Aktion:</strong> Wähle 1 freundliches Schiff in Reichweite 1-2. Weise jenem Schiff 1 Fokusmarker für jedes feindliches Schiff in deinem Feuerwinkel in Reichweite 1-3 zu. Auf diese Weise darfst du nicht mehr als 3 Marker zuweisen.'''
        'Cassian Andor':
            text: '''%DE_REBELONLY%%LINEBREAK%Am Ende der Planungsphase, darfst du ein feindliches Schiff in Reichweite 1-2 wählen. Rate laut die Flugrichtung und Geschwindigkeit jenes Schiffs und schau dann sein Rad an. Falls du richtig geraten hast, darfst du dein Rad auf ein anderes Manöver drehen.'''
        'Finn':
            text: '''%DE_REBELONLY%%LINEBREAK%Sobald du verteidigst oder mit einer Primärwaffe angreifst, darfst du 1 Leerseite zu deinem Wurf hinzufügen, falls das feindliche Schiff innerhalb deines Feuerwinkels ist.'''
        'Rey':
            text: '''%DE_REBELONLY%%LINEBREAK%Zu Beginn der Endphase darfst du 1 Fokusmarker deines Schiffs auf diese Karte legen. zu Beginn der Kampfphase darfst du 1 von diesen Markern deinem Schiff zuordnen.'''
        'Burnout SLAM':
            name: "Durchbrennender SLAM"
            text: '''%DE_LARGESHIPONLY%%LINEBREAK%Füge deiner Aktionsleiste ein %SLAM%-Symbol hinzu.%LINEBREAK%Lege diese Karte ab, nachdem du die Aktion SLAM durchgeführt hast.'''
        'Primed Thrusters':
            name: "Verbesserte Schubdüsen"
            text: '''%DE_SMALLSHIPONLY%%LINEBREAK%Stressmarker hindern dich nicht am Durchführen der Aktionen Schub und Fassrolle, es sei denn, du hast 3 oder mehr Stressmarker.'''
        'Pattern Analyzer':
            name: "Mustererkennung"
            text: '''Sobald du ein Manöver ausführst, darfst du den Schritt "Aktion durchführen" vor dem Schritt "Stress des Piloten überprüfen" abhandeln (anstatt nach diesem Schritt).'''
        'Snap Shot':
            name: "Schnellfeuer"
            text: '''Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, darfst du diesen Angriff auf das Schiff durchführen.  <strong>Angriff:</strong> Greife 1 Schiff an. Du darfst deine Angriffswürfel nicht modifizieren und in dieser Phase nicht erneut angreifen.'''
        'M9-G8':
            text: '''%DE_REBELONLY%%LINEBREAK%Sobald ein Schiff angreift, das du in der Zielerfassung hast, darfst du 1 Angriffswürfel wählen. Der Angreifer muss den gewählten Würfel neu würfeln.%LINEBREAK%Du kannst andere freundliche Schiffe in die Zielerfassung nehmen.'''
        'EMP Device':
            name: "EMP Emitter"
            text: '''Während der Kampfphase darfst du, statt Angriffe durchzuführen, diese Karte ablegen, um jedes Schiff, das in Reichweite 1 ist, 2 Ionenmarker zuzuordnen.'''
        'Captain Rex':
            text: '''%REBELONLY%%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, der nicht getroffen hat, darfst du deinem Schiff 1 Fokusmarker zuordnen.'''
        'General Hux':
            text: '''%IMPERIALONLY%%LINEBREAK%<strong>Aktion:</strong> Wähle bis zu 3 freundliche Schiffe in Reichweite 1-2. Ordne jedem dieser Schiffe 1 Fokusmarker zu und ordne einem von ihnen die Zustandskarte "Fanatische Ergebenheit" zu. Dann erhältst du 1 Stressmarker.'''
        'Operations Specialist':
            name: "Einsatzspezialist"
            text: '''%LIMITED%%LINEBREAK%Nachdem ein freundliches Schiff in Reichweite 1-2 einen Angriff durchgeführt hat, der nicht trifft, darfst du einem freundlichen Schiff in Reichweite 1-3 des Angreifers 1 Fokusmarker zuordnen.'''
        'Targeting Synchronizer':
            name: "Zielsynchronisiersystem"
            text: '''Sobald ein freundliches Schiff in Reichweite 1-2 ein Schiff angreift, das du in der Zielerfassung hast, behandelt das freundliche Schiff das Stichwort "<strong>Angriff (Zielerfassung):</strong>" wie "<strong>Angriff:</strong>". Weist ein Spieleffekt jenes Schiff an, einen Zielerfassungsmarker auszugeben, darf es stattdessen deine Zielerfassungsmarker ausgeben.'''
        'Hyperwave Comm Scanner':
            name: "Hyperwellen-Kommunikations-Scanner"
            text: '''Zu Beginn des Schritts "Streitkräfte platzieren" darfst du wählen, deinen Pilotenwert bis zum Ende des Schritts wie 0, 6 oder 12 zu behandeln.%LINEBREAK% Während des Spielaufbaus, nachdem ein anderes freundliches Schiff in Reichweite 1-2 zu dir platziert worden ist, darfst du ihm 1 Fokus- oder Ausweichmarker zuordnen.'''
        'Trick Shot':
            name: "Trickschuss"
            text: '''Sobald du angreifst, darfst du 1 zusätzlichen Angriffswürfel werfen, falls die Schussbahn versperrt ist.'''
        'Hotshot Co-pilot':
            name: "Kopilotenass"
            text: '''Sobald du mit einer Primärwaffe angreifst, muss der Verteidiger 1 Fokusmarker ausgeben, falls möglich.%LINEBREAK%Sobald du verteidigst, muss der Angreifer 1 Fokusmarker ausgeben, falls möglich.'''
        '''Scavenger Crane''':
            name: "Schrottsammler-Kran"
            text: '''Nachdem ein Schiff in Reichweite 1-2 zerstört worden ist, darfst du eine abgelegte %TORPEDO%, %MISSILE%, %BOMB%, %CANNON%, %TURRET%-, oder Modifikations-Aufwertungskarte, die dein Schiff ausgerüstet hatte, wählen und aufdecken. Dann wirfst du 1 Angriffswürfel. Bei einer Leerseite wird Schrottsammler-Kran abgelegt.'''
        'Bodhi Rook':
            text: '''%REBELONLY%%LINEBREAK%Sobald du eine Zielerfassung durchführst, kannst du ein feindliches Schiff in Reichweite 1-3 zu einem freundlichen Schiff in die Zielerfassung nehmen.'''
        'Baze Malbus':
            text: '''%REBELONLY%%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, der nicht getroffen hat, darfst du sofort einen Angriff mit deiner Primärwaffe gegen ein anderes Schiff durchführen. Du darfst diese Runde keinen anderen Angriff durchführen.'''
        'Inspiring Recruit':
            name: "Inspirierender Rekrut"
            text: '''Ein Mal pro Runde, darf ein freundliches Schiff in Reichweite 1-2, sobald es einen Stressmarker entfernt, einen zusätzlichen Stressmarker entfernen.'''
        'Swarm Leader':
            name: "Schwarmführer"
            text: '''Sobald du einen Angriff mit einer Primärwaffe ausführst, wähle bis zu 2 andere freundliche Schiffe, die den Verteidiger in ihren Feuerwinkeln in Reichweite 1-3 haben. Entferne 1 Ausweichmarker von jedem gewählten Schiff, um 1 zusätzlichen Angriffswürfel für jeden entfernten Marker zu würfeln.'''
        'Bistan':
            text: '''%REBELONLY%%LINEBREAK%Sobald du in Reichweite 1-2 angreifst, darfst du 1 deiner %HIT% in ein %CRIT% ändern.'''
        'Expertise':
            name: "Expertenwissen"
            text: '''Sobald du angreifst und falls du nicht gestresst bist, darfst du alle deine %FOCUS% in %HIT% ändern.'''
        'BoShek':
            text: '''Sobald ein Schiff, das du berührst, aktiviert wird, darfst du dir sein gewähltes Manöver ansehen. Falls du das tust, <strong>muss</strong> sein Besitzer das Rad auf ein nebenstehendes Manöver drehen. Das Schiff kann dieses Manöver aufdecken und ausführen, selbst wenn es gestresst ist.'''
        # C-ROC
        'Heavy Laser Turret':
            name: "Schweres Lasergeschütz"
            text: '''<span class="card-restriction">Nur für C-ROC Kreuzer.</span>%LINEBREAK%<strong>Angriff (Energie):</strong> Gib 2 Energie von dieser Karte aus, um diesen Angriff auf 1 Schiff durchzuführen (auch außerhalb deines Feuerwinkels).'''
        'Cikatro Vizago':
            text: '''%SCUMONLY%%LINEBREAK%Zu Beginn der Endphase darfst du diese Karte ablegen, um eine von dir ausgerüstete offene %ILLICIT%- oder %CARGO%-Aufwertung durch eine andere Aufwertung desselben Typs zu ersetzen. Die osten der neuen Aufwertung müssen gleich oder niedriger sein.'''
        'Azmorigan':
            text: '''%HUGESHIPONLY% %SCUMONLY%%LINEBREAK%Zu Beginn der Endphase darfst du 1 Energie ausgeben, um eine von dir ausgerüstete offene %CREW%- oder %TEAM%-Aufwertung durch eine andere Aufwertung desselben Typs zu ersetzen. Die Kosten der neuen Aufwertung müssen gleich oder niedriger sein.'''
        'Quick-release Cargo Locks':
            name: "Frachtcontainer mit Schnellverschluss"
            text: '''%LINEBREAK%Am Ende der Aktivierungsphase darfst du diese Karte ablegen, um 1 Containermarker zu <strong>platzieren</strong>.'''
        'Supercharged Power Cells':
            name: "Hochaufgeladene Energiezellen"
            text: '''Sobald du angreifst, darfst du diese Karte ablegen, um 2 zusätzliche Angriffswürfel zu werfen.'''
        'ARC Caster':
            name: "ARC-Werfer"
            text: '''<span class="card-restriction">Nur für Rebellen und Abschaum & Kriminelle.</span>%DUALCARD%%LINEBREAK%<strong>Seite A:</strong>%LINEBREAK%<strong>Angriff:</strong> Greife 1 Schiff an. Falls der Angriff trifft, musst du 1 anderes Schiff in Reichweite 1 des Verteidigers wählen, das 1 Schaden nimmt.%LINEBREAK%Dann wird diese Karte umgedreht.%LINEBREAK%<strong>Seite B:</strong>%LINEBREAK%(wird aufgeladen) Zu Beginn der Kampfphase darfst du einen Waffen-deaktiviert-Marker erhalten, um diese Karte umzudrehen.'''
        'Wookiee Commandos':
            name: "Wookiee-Kommandotrupp"
            text: '''%REBELONLY%Sobald du angreifst, darfst du deine %FOCUS% neu würfeln.'''
        'Synced Turret':
            name: "Gekoppeltes Geschütz"
            text: '''<strong>Angriff (Zielerfassung):</strong> Greife 1 Schiff an (auch außerhalb deines Feuerwinkels).%LINEBREAK%Falls der Verteidiger innerhalb deines normalen Feuerwinkels ist, darfst du bis zu X Angriffswürfel neu würfeln, X ist dein Primärwaffenwert.'''
        'Unguided Rockets':
            name: "Ungelenkte Raketen"
            text: '''<strong>Angriff (Fokus):</strong> Greife 1 Schiff an.%LINEBREAK%Deine Angriffswürfel können nur durch das Ausgeben eines Fokusmarkers für dessen normalen Effekt modifiziert werden.'''
        'Intensity':
            name: "Anspannung"
            text: '''%SMALLSHIPONLY% %DUALCARD%%LINEBREAK%<strong>Seite A:</strong> Nachdem du die Aktion Schub oder Fassrolle durchgeführt hast, darfst du deinem Schiff 1 Fokus- oder Ausweichmarker zuordnen. Falls du das tust, wird dieses Karte umgedreht.%LINEBREAK%<strong>Seite B:</strong> (Erschöpft) Am Ende der Kampfphase darfst du 1 Fokus- oder Ausweichmarker ausgeben, um diese Karte umzudrehen.'''
        'Jabba the Hutt':
            name: "Jabba der Hutt"
            text: '''%SCUMONLY%%LINEBREAK%Sobald du diese Karten ausrüstest, lege 1 Schmugglermarker auf jede %ILLICIT%-Aufwertung deiner Staffel. Sobald du angewiesen wirst eine Aufwertung abzulegen, darfst du stattdessen 1 Schmugglermarker von ihr ablegen.'''
        'IG-RM Thug Droids':
            name: "IG-RM-Schlägerdroiden"
            text: '''Sobald du angreifst, darfst du 1 deiner %HIT% in ein %CRIT% ändern.'''
        'Selflessness':
            name: "Selbstlosigkeit"
            text: '''%DE_SMALLSHIPONLY% %REBELONLY%%LINEBREAK%Wenn ein freundlcihes Schiff in Reichweite 1 von einem Angriff getroffen wird, darfst du diese Karte ablegen, um alle nicht-negierten %HIT% statt des Ziel-Schiffes zu nehmen.'''
        'Breach Specialist':
            name: "Experte für Hüllenreperatur"
            text: '''Sobald dir eine offene Schadenskarte zugeteilt wird, darfst du 1 Verstärkungsmarker ausgeben, um sie umzudrehen (ohne ihren Effekt abzuhandeln). Falls du das tust, drehst du bis zum Ende der Runde, sobald dir eine offene Schadenskarte zugeteilt wird, diese um (ohne ihren Efekt abzuhandeln).'''
        'Bomblet Generator':
            name: "Streubombengenerator"
            text: '''Sobald du dein Manöver aufdeckst, darfst du 1 Streubombenmarker <strong>legen</strong>.%LINEBREAK%Dieser Marker <strong>detoniert</strong> am Ende der Aktivierungsphase%LINEBREAK%<strong>Streubomben:</strong> Sobald dieser Bombenmarker detoniert, wirft jedes Schiff in Reichweite 1 des Markers 2 Angriffswürfel und nimmt allen Schaden (%HIT%) und kritischen Schaden (%CRIT%). Dann wird der Bombemmarker abgelegt.'''
        'Cad Bane':
            text: '''%SCUMONLY%%LINEBREAK%Füge deiner Aufwertungsleiste das %BOMB%-Symbol hinzu. Ein Mal pro Runde darfst du, sobald ein feindliches Schiff aufgrund der Detonation eines freundlichen Bombenmarkers Angriffswürfel wirft, beliebig viele %FOCUS% und Leerseiten wählen. Es muss diese Ergebnisse neu würfeln.'''
        'Minefield Mapper':
            name: "Minenwurfsystem"
            text: '''Nach dem Schritt "Streitkräfte platzieren" während des Spielaufbaus, darfst du beliebig viele deiner ausgerüsteten %BOMB%-Aufwertungen ablegen. Platziere alle zugehörigen Bombenmarker auf der Spielfläche jenseits von Reichweite 3 feindlicher Schiffe.'''
        'R4-E1':
            text: '''Du kannst Aktionen auf deinen %TORPEDO%- und %BOMB%-Aufwertungen auch dann durchführen, falls du gestresst bist. Nachdem du auf diese Weise eine Aktion durchgeführt hast, darfst du diese Karte ablegen, um 1 Stressmarker von deinem Schiff zu entfernen.'''
        'Cruise Missiles':
            name: "Marschflugkörper"
            text: '''<strong>Angriff (Zielerfassung):</strong> Lege diese Karte ab, um diesen Angriff durchzuführen. Du darfst zusätzliche Angriffswürfel in Höhe der Geschwindigkeit des Manövers, das du in dieser Runde ausgeführt hast, werfen bis zu einem Maxiumum von 4 zusätzlichen Würfeln.'''
        'Ion Dischargers':
            text: '''After you receive an ion token, you may choose an enemy ship at Range 1.  If you do, remove that ion token. Then that ship may choose to receive 1 ion token. If it does, discard this card.'''
        'Harpoon Missiles':
            text: '''<strong>Attack (target lock):</strong> Discard this card to perform this attack.%LINEBREAK%If this attack hits, assign the "Harpooned!" Condition to the defender.'''

    modification_translations =
        "Stealth Device":
            name: "Tarnvorrichtung"
            text: """Dein Wendigkeitswert steigt um 1. Lege diese Karte ab, wenn du von einem Angriff getroffen wirst."""
        "Shield Upgrade":
            name: "Verbesserte Schilde"
            text: """Dein Schildwert steigt um 1."""
        "Engine Upgrade":
            name: "Verbessertes Triebwerk"
            text: """Füge deiner Aktionsleiste ein %BOOST%-Symbol hinzu."""
        "Anti-Pursuit Lasers":
            name: "Kurzstreckenlaser"
            text: """%DE_LARGESHIPONLY%%LINEBREAK%Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, das zur Überschneidung mit deinem Schiff führt, wirf 1 Angriffswürfel. Bei %HIT% oder %CRIT% nimmt das feindliche Schiff 1 Schaden."""
        "Targeting Computer":
            name: "Zielerfassungssystem"
            text: """Deine Aktionsleiste erhält das %TARGETLOCK%-Symbol."""
        "Hull Upgrade":
            name: "Verbesserte Hülle"
            text: """Erhöhe deinen Hüllenwert um 1."""
        "Munitions Failsafe":
            name: "Ausfallsichere Munition"
            text: """Wenn du mit einer Sekundärwaffe angreifst, deren Kartentext besagt, dass sie zum Angriff abgelegt werden muss, legst du sie nur ab, falls du triffst."""
        "Stygium Particle Accelerator":
            name: "Stygium-Teilchen-Beschleuniger"
            text: """immer wenn du dich enttarnst oder die Aktion Tarnen durchführst, darfst du als freie Aktion ausweichen."""
        "Advanced Cloaking Device":
            ship: "TIE-Phantom"
            name: "Verbesserte Tarnvorrichtung"
            text: '''<span class="card-restriction">Nur für TIE-Phantom.</span>%LINEBREAK%Nachdem du angegriffen hast, darfst du dich als freie Aktion tarnen.'''
        "Combat Retrofit":
            name: "Umrüstung für den Kampfeinsatz"
            ship: "Medium-Transporter GR-75"
            text: """Erhöhe deinen Hüllenwert um 2 und deinen Schildwert um 1."""
        "B-Wing/E2":
            text: """Füge deiner Aufwertungsleiste das %CREW%-Symbol hinzu."""
        "Countermeasures":
            name: "Gegenmassnahmen"
            text: """%DE_LARGESHIPONLY%%LINEBREAK%Zu Beginn der Kampfphase kannst du diese Karte ablegen, um deine Wendigkeit bis zum Ende der Runde um 1 zu erhöhen. Dann darfst du 1 feindliche Zielerfassung von deinem Schiff entfernen."""
        "Experimental Interface":
            name: "Experimentelles Interface"
            text: """Ein Mal pro Runde darfst du nach dem Durchführen einer Aktion 1 ausgerüstete Aufwertungskarte mit dem Stichwort "<strong>Aktion:</strong>" benutzen (dies zählt als freie Aktion). Dann erhältst du 1 Stressmarker."""
        "Tactical Jammer":
            name: "Taktischer Störsender"
            text: """%DE_LARGESHIPONLY%%LINEBREAK%Dein Schiff kann die feindliche Schussbahn versperren."""
        "Autothrusters":
            name: "Automatische Schubdüsen"
            text: """Sobald du verteidigst und du im Feuerwinkel jenseits Reichweite 2 oder außerhalb des Feuerwinkels des Angreifers bist, darfst du 1 deiner Leerseiten in ein %EVADE% ändern. Du darfst diese Karte nur ausrüsten, wenn du das %BOOST%-Aktionssymbol hast."""
        "Advanced SLAM":
            name: "Verbesserter SLAM"
            text: """Nachdem du die Aktion SLAM durchgeführt hast, darfst du 1 freie Aktion durchführen, falls du dich nicht mit einem Hindernis oder anderen Schiff überschnitten hast."""
        "Twin Ion Engine Mk. II":
            name: "Zwillings-Ionenantrieb MK. II"
            text: """Du darfst alle Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) als grüne Manöver behandeln."""
        "Maneuvering Fins":
            name: "Steuertragflächen"
            text: """<span class="card-restriction">Nur für YV-666.</span>%LINEBREAK%Sobald du ein Wendemanöver (%TURNLEFT% oder %TURNRIGHT%) aufdeckst, darfst du das entsprechende Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) mit gleicher Geschwindigkeit auf deinem Manöverrad einstellen."""
        "Ion Projector":
            name: "Ionenprojektor"
            text: """%DE_LARGESHIPONLY%%LINEBREAK%Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, das zur Überschneidung mit deinem Schiff führte, wirf 1 Angriffswürfel. Bei %HIT% oder %CRIT% bekommt das feindliche Schiff 1 Ionenmarker."""
        'Integrated Astromech':
            name: "Integrierter Astromech"
            text: '''<span class="card-restriction">Nur für X-Flügler.</span>%LINEBREAK%Sobald dir eine Schadenskarte zugeteilt wird, darfst du 1 deiner %ASTROMECH%-Aufwertungskarten ablegen, um jene Schadenskarte abzulegen (ohne ihren Effekt abzuhandeln).'''
        'Optimized Generators':
            name: "Optimierte Generatoren"
            text: '''%DE_HUGESHIPONLY%%LINEBREAK%Ein Mal pro Runde erhältst du 2 Energie, sobald du Energie auf einer ausgerüsteten Aufwertung zuordnest.'''
        'Automated Protocols':
            name: "Vollautomatische Protokolle"
            text: '''%DE_HUGESHIPONLY%%LINEBREAK%Ein Mal pro Runde darfst du, nachdem du eine Aktion durchgeführt hast (außer Aufladen und Verstärken), 1 Energie ausgeben, um Aufladen oder Verstärken als freie Aktion durchzuführen.'''
        'Ordnance Tubes':
            name: "Abschussrohre"
            text: '''%DE_HUGESHIPONLY%%LINEBREAK%Du darfst jedes deiner %HARDPOINT%-Aufwertungssymbole wie ein %TORPEDO%- oder %MISSILE%- Symbol behandeln.%LINEBREAK%Sobald du angewiesen wirst eine %TORPEDO%- oder %MISSILE%-Aufwertung abzulegen, lege sie nicht ab.'''
        'Long-Range Scanners':
            name: "Langstreckenscanner"
            text: '''Du kannst Schiffe in und jenseits von Reichweite 3 in die Zielerfassung nehmen. Schiffe in Reichweite 1-2 darfst du nicht in die Zielerfassung nehmen. Du kannst diese Karte nur ausrüsten, falls du %TORPEDO% und %MISSILE% in deiner Aufwertungsleiste hast.'''
        "Guidance Chips":
            name: "Steuerungschips"
            text: """Ein Mal pro Runde darfst du, sobald du mit einer %TORPEDO%- oder %MISSILE%-Sekundärwaffe angreifst, 1 Würfelergebnis in ein %HIT% ändern (oder in ein %CRIT%, falls dein Primärwaffenwert 3 oder höher ist)."""
        # Wave IX
        'Vectored Thrusters':
            name: "Schwenkbare Schubdüsen"
            text: '''%DE_SMALLSHIPONLY%%LINEBREAK%Füge deiner Aktionsleiste ein %BARRELROLL%-Symbol hinzu.'''
        'Gyroscopic Targeting':
            name: "Gyroskopisches Zielsystem"
            ship: 'Jagdschiff der Lanzen-Klasse'
            text: '''<span class="card-restriction">Nur für Jagdschiffe der Lanzen-Klasse.</span>%LINEBREAK%Am Ende der Kampfphase darfst du deinen mobilen Feuerwinkel rotieren, falls du in dieser Runde ein Manöver mit der Geschwindigkeit 3, 4 oder 5 ausgeführt hast.'''
        'Smuggling Compartment':
            name: "Schmuggelverschläge"
            text: '''<span class="card-restriction">Nur für YT-1300 und YT-2400.</span>%LINEBREAK%Füge deiner Aufwertungsleiste ein %ILLICIT% hinzu.%LINEBREAK%Du darfst 1 zusätzliche Modifikation-Aufwertung mit Kosten von 3 oder weniger ausrüsten.'''
        # Wave X
        'Captured TIE':
            name: "Gekaperter TIE"
            ship: "TIE-Jäger"
            text: '''<span class="card-restriction">Nur für TIE-Jäger.</span>%REBELONLY%%LINEBREAK%Feindliche Schiffe mit einem Pilotenwert, der niedriger ist als deiner, können dich nicht zum Ziel eines Angriffs deklarieren. Nachdem du einen Angriff durchgeführt hast oder sobald du das einzige freundliche Schiff im Spiel bist, lege diese Karte ab.'''
        'Spacetug Tractor Array':
            name: "Schleppertraktorstrahl"
            text: '''<span class="card-restriction">Nur für Quadjumper.</span>%LINEBREAK%<strong>Aktion:</strong> Wähle ein Schiff innerhalb deines Feuerwinkels und in Reichweite 1 und ordne ihm einen Traktorstrahlmarker zu. Falls es ein freundliches Schiff ist, handle den Effekt des Traktorstrahlmarkers ab, als wäre es ein feindliches Schiff.'''
        'Lightweight Frame':
            name: "Leichtgewichtrahmen"
            text: '''<span class="card-restriction">Nur für TIE.</span>%LINEBREAK%Sobald du verteidigst und es nach dem Würfeln der Verteidigungswürfel mehr Angriffswürfel als Verteidigungswürfel gibt, wirf 1 zusätzlichen Verteidigungswürfel.%LINEBREAK%Du kannst diese Karte nicht ausrüsten, falls dein Wendigkeitswert 3 oder höher ist.'''
        'Pulsed Ray Shield':
            name: "Pulsstrahlenschild"
            text: '''<span class="card-restriction">Nur für Rebellen und Abschaum & Kriminelle.</span>%LINEBREAK%Während der Endphase darfst du 1 Ionenmarker erhalten, um 1 Schild wiederaufzuladen (bis maximal zum Schildwert). Du kannst diese Karte nur dann ausrüsten, wenn dein Schildwert 1 ist.'''

    title_translations =
        "Slave I":
            name: "Sklave I"
            text: '''<span class="card-restriction">Nur für Firespray-31.</span>%LINEBREAK%Füge deiner Aktionsleiste ein %TORPEDO%-Symbol hinzu.'''
        "Millennium Falcon":
            name: "Millennium Falke"
            text: '''<span class="card-restriction">Nur für YT-1300.</span>%LINEBREAK%Füge deiner Aktionsleiste ein %EVADE%-Symbol hinzu.'''
        "Moldy Crow":
            text: '''<span class="card-restriction">Nur für HWK-290.</span>%LINEBREAK%In der Endphase werden von diesem Schiff keine unbenutzen Fokusmarker entfernt.'''
        "ST-321":
            ship: "Raumfähre der Lambda-Klasse"
            text: '''<span class="card-restriction">Nur für Raumfähren der Lamda-Klasse.</span>%LINEBREAK%Wenn du eine Zielerfassung durchführst, darfst du ein beliebiges feindliches Schiff auf der Spielfläche als Ziel erfassen.'''
        "Royal Guard TIE":
            name: "TIE der Roten Garde"
            ship: "TIE-Abfangjäger"
            text: '''<span class="card-restriction">Nur für TIE-Abfangjäger.</span>%LINEBREAK%Du kannst bis zu 2 verschiedene Modifikationen verwenden (statt einer).<br /><br />Du kannst diese Karte nicht verwenden, wenn der Pilotenwert "4" oder kleiner ist.'''
        "Dodonna's Pride":
            name: "Dodonnas Stolz"
            ship: "CR90-Korvette (Bug)"
            text: '''<span class="card-restriction">Nur für CR90-Korvette (Bug).</span>%LINEBREAK%Wenn du die Aktion Koordination durchführst, kannst du 2 freundliche Schiffe wählen (anstatt 1). Jedes dieser Schiffe darf 1 freie Aktion durchführen.'''
        "A-Wing Test Pilot":
            name: "Erfahrener Testpilot"
            text: '''<span class="card-restriction">Nur für A-Wing.</span>%LINEBREAK%Füge deiner Aufwertungsleiste 1 %ELITE%-Symbol hinzu.<br /><br />Du darfst jede %ELITE%-Aufwertung nur ein Mal ausrüsten. Du kannst diese Karte nicht verwenden, wenn dein Pilotenwert "1" oder niedriger ist.'''
        "Tantive IV":
            ship: "CR90-Korvette (Bug)"
            text: '''<span class="card-restriction">Nur für CR90-Korvette (Bug).</span>%LINEBREAK%Die Aufwertungsleiste deiner Bugsektion erhält 1 zusätzliches %CREW% und 1 zusätzliches %TEAM% .'''
        "Bright Hope":
            ship: "Medium-Transporter GR-75"
            text: '''<span class="card-restriction">Nur für Medium-Transporter GR-75.</span>%LINEBREAK%Wenn neben deiner Bugsektion ein Verstärkungsmarker liegt, fügt er 2 %EVADE% hinzu (anstatt 1).'''
        "Quantum Storm":
            ship: "Medium-Transporter GR-75"
            text: '''<span class="card-restriction">Nur für Medium-Transporter GR-75.</span>%LINEBREAK%Wenn du zu Beginn der Endphase 1 Energiemarker oder weniger hast, gewinnst du 1 Energiemarker.'''
        "Dutyfree":
            ship: "Medium-Transporter GR-75"
            text: '''<span class="card-restriction">Nur für Medium-Transporter GR-75.</span>%LINEBREAK%Bei der Aktion Störsignal kannst du ein feindliches Schiff in Reichweite 1-3 (statt 1-2) wählen.'''
        "Jaina's Light":
            name: "Jainas Licht"
            ship: "CR90-Korvette (Bug)"
            text: '''<span class="card-restriction">Nur für CR90-Korvette (Bug).</span>%LINEBREAK%Wenn du verteidigst, darfst du einmal pro Angriff eine soeben erhaltene, offene Schadenskarte ablegen und dafür eine neue offene Schadenskarte ziehen.'''
        "Outrider":
            text: '''<span class="card-restriction">Nur für YT-2400.</span>%LINEBREAK%Solange du eine %CANNON%-Aufwertung ausgerüstet hast, kannst du deine Primärwaffen <strong>nicht</strong> verwenden. Dafür darfst du mit %CANNON%-Sekundärwaffen auch Ziele außerhalb deines Feuerwinkels angreifen.'''
        "Dauntless":
            text: '''<span class="card-restriction">Nur für VT-49 Decimator.</span>%LINEBREAK%Nach dem Ausführen eines Manövers, das zur Überschneidung mit einem anderen Schiff geführt hat, darfst du 1 freie Aktion durchführen. Dann erhältst du 1 Stressmarker.'''
        "Virago":
            ship: "SternenViper"
            text: '''<span class="card-restriction">Nur für SternenViper.</span>%LINEBREAK%Füge deiner Aufwertungsleiste ein %SYSTEM%- und ein %ILLICIT%-Symbol hinzu.%LINEBREAK%Du kannst diese Karte nicht ausrüsten, wenn dein Pilotenwert "3" oder niedriger ist.'''
        '"Heavy Scyk" Interceptor (Cannon)':
            ship: "M3-A Abfangjäger"
            name: '"Schwerer Scyk"-Abfangjäger (Kanone)'
            text: '''<span class="card-restriction">Nur für M3-A-Abfangjäger.</span>%LINEBREAK%Füge deiner Aufwertungsleiste eines der folgenden Symbole hinzu: %CANNON%, %TORPEDO%, oder %MISSILE%.%LINEBREAK%Erhöhe deinen Hüllenwert um 1.'''
        '"Heavy Scyk" Interceptor (Torpedo)':
            ship: "M3-A Abfangjäger"
            name: '"Schwerer Scyk"-Abfangjäger (Torpedo)'
            text: '''<span class="card-restriction">Nur für M3-A-Abfangjäger.</span>%LINEBREAK%Füge deiner Aufwertungsleiste eines der folgenden Symbole hinzu: %CANNON%, %TORPEDO%, oder %MISSILE%.%LINEBREAK%Erhöhe deinen Hüllenwert um 1.'''
        '"Heavy Scyk" Interceptor (Missile)':
            ship: "M3-A Abfangjäger"
            name: '"Schwerer Scyk"-Abfangjäger (Rakete)'
            text: '''<span class="card-restriction">Nur für M3-A-Abfangjäger.</span>%LINEBREAK%Füge deiner Aufwertungsleiste eines der folgenden Symbole hinzu: %CANNON%, %TORPEDO%, oder %MISSILE%.%LINEBREAK%Erhöhe deinen Hüllenwert um 1.'''
        "IG-2000":
            text: '''<span class="card-restriction">Nur für Aggressor.</span>%LINEBREAK%Du bekommst die Pilotenfähigkeiten aller anderen freundlichen Schiffe mit der Aufwertungskarte <em>IG-2000</em> (zusätzlich zu deiner eigenen Pilotenfähigkeit).'''
        "BTL-A4 Y-Wing":
            name: "BTL-A4-Y-Wing"
            text: '''<span class="card-restriction">Nur für Y-Wing.</span>%LINEBREAK%Du darfst Schiffe außerhalb deines Feuerwinkels nicht angreifen. Nachdem du einen Angriff mit deinen Primärwaffen durchgeführt hast, darfst du sofort einen weiteren Angriff mit einer %TURRET%-Sekundärwaffe durchführen.'''
        "Andrasta":
            text: '''<span class="card-restriction">Nur für Firespray-31.</span>%LINEBREAK%Füge deiner Aufwertungsleiste zwei weitere %BOMB%-Symbole hinzu.'''
        "TIE/x1":
            text: '''<span class="card-restriction">Nur für TIE Advanced.</span>%LINEBREAK%Füge deiner Aufwertungsleiste ein %SYSTEM%-Symbol hinzu.%LINEBREAK%Wenn du eine %SYSTEM%-Aufwertung ausrüstest, sinken deren Kommandopunkte um 4 (Minimum 0).'''
        "Hound's Tooth":
            name: "Reisszahn"
            text: '''<span class="card-restriction">Nur für YV-666.</span>%LINEBREAK%Nachdem du zerstörst worden bist, darfst du das Schiff <em>Nashtahwelpe</em> <strong>absetzen</strong>, bevor du von der Spielfläche entfernt wirst.%LINEBREAK%Es darf diese Runde nicht angreifen.'''
        "Ghost":
            text: '''<span class="card-restriction">Nur für VCX-100.</span>%LINEBREAK%Rüste ein freundlichen Jagdshuttle mit dem Titel <em>Phantom</em> aus und docke es an diesem Schiff an.%LINEBREAK%Nachdem du ein Manöver ausgeführt hast, darfst du das Shuttle von deinen Heck-Stoppern aus starten lassen.'''
        "Phantom":
            ship: "Jagdshuttle"
            text: '''<span class="card-restriction">Nur für Jagdshuttle.</span>%LINEBREAK%Solange du angedockt bist, kann die <em>Ghost</em> mit ihren Primärwaffen auch Ziele in ihrem Spezial-Feuerwinkel angreifen und darf am Ende der Kampfphase einen zusätzlichen Angriff mit einer ausgerüsteten %TURRET% durchführen. Falls sie diesen Angriff durchführt kann sie in dieser Runde nicht noch einmal angreifen.'''
        "TIE/v1":
            name: "TIE-V1"
            ship: "TIE-Turbojäger-Prototyp"
            text: '''<span class="card-restriction">Nur für TIE-Turbojäger-Prototyp.</span>%LINEBREAK%Nachdem du ein Ziel erfasst hast, darfst du eine freie Aktion Ausweichen durchführen.'''
        "Mist Hunter":
            name: "Nebeljäger"
            ship: "G-1A-Sternenjäger"
            text: '''<span class="card-restriction">Nur für G-1A-Sternenjäger.</span>%LINEBREAK%Deine Aktionsleiste erhält ein %BARRELROLL%-Symbol.%LINEBREAK%Du <strong>musst</strong> 1 Aufwertungskarte "Traktorstrahl" ausrüsten (und ihre normalen Kommandopunktekosten bezahlen).'''
        "Punishing One":
            name: "Vollstrecker Eins"
            text: '''<span class="card-restriction">Nur für JumpMaster 5000.</span>%LINEBREAK%Erhöhe deinen Primärwaffenwert um 1.'''
        "Assailer":
            ship: "Korv. der Sturm-Klasse (Heck)"
            name: "Sturmbringer"
            text: '''<span class="card-restriction">Nur für Korvetten der <em>Sturm</em>-Klasse (Heck).</span>%LINEBREAK%Sobald du verteidigst und wenn die als Ziel bestimmten Sektion einen Verstärkungsmarker hat, darfst du 1 %FOCUS% in ein %EVADE% ändern.'''
        "Instigator":
            ship: "Korv. der Sturm-Klasse (Heck)"
            name: "Hetzer"
            text: '''<span class="card-restriction">Nur für Korvetten der <em>Sturm</em>-Klasse (Heck).</span>%LINEBREAK%Nachdem du die Aktion Aufladen durchgeführt hast, lade 1 weiteres Schild wieder auf.'''
        "Impetuous":
            ship: "Korv. der Sturm-Klasse (Heck)"
            name: "Ungestüm"
            text: '''<span class="card-restriction">Nur für Korvetten der <em>Sturm</em>-Klasse (Heck).</span>%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, der ein feindliches Schiff zerstört hat, darfst du ein Schiff in die Zielerfassung nehmen..'''
        'TIE/x7':
            ship: "TIE-Jagdbomber"
            text: '''<span class="card-restriction">Nur für TIE-Jagdbomber.</span>%LINEBREAK%Deine Aufwertungsleiste verliert die Symbole %CANNON% und %MISSILE%.%LINEBREAK%Nachdem du ein Manöver mit Geschwindigkeit 3, 4 oder 5 ausgeführt hast, darfst du deinem Schiff 1 Ausweichmarker zuordnen.'''
        'TIE/D':
            ship: "TIE-Jagdbomber"
            text: '''<span class="card-restriction">Nur für TIE-Jagdbomber.</span>%LINEBREAK%Ein Mal pro Runde, nachdem du einen Angriff mit einer %CANNON%-Sekundärwaffe durchgeführt hast, die 3 oder weniger Kommandopunkte kosten, darfst du einen Primärwaffenangriff durchführen.'''
        'TIE Shuttle':
            ship: "TIE-Bomber"
            name: "TIE-Shuttle"
            text: '''<span class="card-restriction">Nur für TIE-Bomber.</span>%LINEBREAK%Deine Aufwertungsleiste verliert alle Symbole %TORPEDO%, %MISSILE%, und %BOMB% und erhält 2 %CREW%-Aufwertungssymbole. Du darfst keine %CREW%-Aufwertung ausrüsten, die mehr als 4 Kommandopunkte kostet.'''
        'Requiem':
            ship: "Kreuzer der Gozanti-Klasse"
            text: '''%DE_GOZANTIONLY%%LINEBREAK%Sobald du ein Schiff startest, wird es bis zum Ende der Runde behandelt, als hätte es einen Pilotenwert von 8.'''
        'Vector':
            ship: "Kreuzer der Gozanti-Klasse"
            name: "Vektor"
            text: '''%DE_GOZANTIONLY%%LINEBREAK%Nachdem du ein Manöver ausgeführt hast, darfst du bis zu 4 angedockte Schiffe starten (anstatt 2).'''
        'Suppressor':
            ship: "Kreuzer der Gozanti-Klasse"
            name: "Unterdrücker"
            text: '''%DE_GOZANTIONLY%%LINEBREAK%Ein Mal pro Runde darfst du, nachdem du ein feindliches Schiff in die Zielerfassung genommen hast, 1 Fokus-, Ausweich- oder blaue Zielerfassungsmarker von dem Schiff entfernen.'''
        # Wave IX
        'Black One':
            name: "Schwarze Eins"
            text: '''Nachdem du die Aktion Schub oder Fassrolle durchgeführt hast, darfst du 1 feindlichen Zielerfassungsmarker von einem freundlichen Schiff in Reichweite 1 entfernen. Du darfst diese Karte nicht ausrüsten, falls dein Pilotenwert 6 oder niedriger ist.'''
            ship: "T-70-X-Flügler"
        'Millennium Falcon (TFA)':
            name: "Millennium Falke (TFA)"
            text: '''Nachdem du ein Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) mit Geschwindigkeit 3 ausgeführt hast, darfst du, falls du nicht gestresst bist und kein anderes Schiff berührst, 1 Stressmarker erhalten, um dein Schiff um 180&deg; zu drehen.'''
        'Alliance Overhaul':
            name: "Generalüberholt von der Allianz"
            text: '''<span class="card-restriction">Nur für ARC-170.</span>%LINEBREAK%Sobald du von deinem normalen Feuerwinkel aus mit der Primärwaffe angreifst, darfst du 1 zusätzlichen Angriffswürfel werfen. Sobald du von deinem Zusatz-Feuerwinkel aus angreifst, darfst du 1 deiner %FOCUS% in ein %CRIT% ändern.'''
        'Special Ops Training':
            name: "Training der Spezialeinheiten"
            ship: "TIE/SE-Jäger"
            text: '''<span class="card-restriction">Nur für TIE/SE-Jäger.</span>%LINEBREAK%Sobald du von deinem normalen Feuerwinkel aus mit einer Primärwaffe angreifst, darfst du 1 zusätzlichen Angriffswürfel werfen. Falls du das nicht tust, darfst du einen zusätzlichen Angriff von deinem Zusatz-Feuerwinkel aus durchführen.'''
        'Concord Dawn Protector':
            name: "Protektor von Concord Dawn"
            ship: "Sternenjäger des Protektors"
            text: '''<span class="card-restriction">Nur für Sternenjäger des Protektors.</span>%LINEBREAK%Sobald du verteidigst, darfst du 1 %EVADE% hinzufügen, falls du innerhalb des Feuerwinkels des Angreifers und in Reichweite 1 zu ihm bist und der Angreifer innerhalb deines Feuerwinkels ist.'''
        'Shadow Caster':
            ship: "Jagdschiff der Lanzen-Klasse"
            text: '''<span class="card-restriction">Nur für Jagdschiffe der Lanzen-Klasse.</span>%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, der getroffen hat, darfst du dem Verteidiger 1 Traktorstrahlmarker zuordnen, falls er innerhalb deines mobilen Feuerwinkels in Reichweite 1-2 ist.'''
        # Wave X
        '''Sabine's Masterpiece''':
            name: "Sabines Meisterwerk"
            ship: "TIE-Jäger"
            text: '''<span class="card-restriction">Nur für TIE-Jäger.</span>%REBELONLY%%LINEBREAK%Füge deiner Aufwertungsleiste die Symbole %CREW% und %ILLICIT% hinzu.'''
        '''Kylo Ren's Shuttle''':
            name: "Kylo Rens Shuttle"
            ship: "Shuttle der Ypsilon-Klasse"
            text: '''<span class="card-restriction">Nur für Shuttle der Ypsilon-Klasse.</span>%LINEBREAK%Wähle am Ende der Kampfphase ein nicht-gestresstes feindliches Schiff in Reichweite 1-2. Sein Besitzer muss ihm einen Stressmarker zuordnen oder er muss einem anderen Schiff in Reichweite 1-2 zu dir, das er kontrolliert, einen Stressmarker zuordnen.'''
        '''Pivot Wing''':
            name: "Schwenkflügel"
            ship: 'U-Flügler'
            text: '''<span class="card-restriction">Nur für U-Flügler.</span> %DUALCARD%%LINEBREAK%<strong>Angriffsposition:</strong> Erhöhe deinen Wendigkeitswert um 1.%LINEBREAK%Nachdem du ein Manöver ausgeführt hast, darfst du diese Karte umdrehen.%LINEBREAK%<strong>Landeposition:</strong> Sobald du ein (0 %STOP%)-Manöver aufdeckst, darfst du dein Schiff um 180&deg; drehen.%LINEBREAK%Nachdem du ein Manöver ausgeführt hast, darfst du diese Karte umdrehen.'''
        '''Adaptive Ailerons''':
            name: "Adaptive Querruder"
            ship: "TIE-Stürmer"
            text: '''<span class="card-restriction">Nur für TIE-Stürmer.</span>%LINEBREAK%Unmittelbar bevor du dein Rad aufdeckst, <strong>musst</strong> du ein weißes (%BANKLEFT% 1)-, (%STRAIGHT% 1)- oder (%BANKRIGHT% 1)-Manöver ausführen, falls du nicht gestresst bist.'''
        # C-ROC
        '''Merchant One''':
            name: "Händler Eins"
            ship: "C-ROC Kreuzer"
            text: '''<span class="card-restriction">Nur für C-ROC Kreuzer.</span>%LINEBREAK%Füge deiner Aufwertungsleiste 1 zusätzliches %CREW%-Symbol und 1 zusätzliches %TEAM%-Symbol hinzu und entferne 1 %CARGO%-Symbol aus deiner Aufwertungsleiste.'''
        '''"Light Scyk" Interceptor''':
            name: '''"Leichter Scyk"-Abfangjäger'''
            ship: "M3-A Abfangjäger"
            text: '''<span class="card-restriction">Nur für M3-A-Abfangjäger.</span>%LINEBREAK%Alle dir zugeteilten Schadenskarten werden offen zugeteilt. Du darfst alle Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) wie grüne Manöver behandeln. Du kannst keine Modifikationen ausrüsten.'''
        '''Insatiable Worrt''':
            name: "Gefrässiger Worrt"
            ship: "C-ROC Kreuzer"
            text: '''Nachdem du die Aktion Aufladen durchgeführt hast, erhälst du 3 Energie.'''
        '''Broken Horn''':
            ship: "C-ROC Kreuzer"
            text: '''Sobald du verteidigst, darfst du, falls du einen Verstärkungsmarker hast, 1 zusätzliches %EVADE% hinzufügen. Falls du das tust, musst du nach dem Verteidigen deinen Verstärkungsmarker ablegen.'''
        'Havoc':
            text: '''<span class="card-restriction">Nur für Scurrg H-6 Bomber.</span>%LINEBREAK%Füge deiner Aufwertungsleiste die %SYSTEM%- und %SALVAGEDASTROMECH%-Symbole hinzu und entferne das %CREW%-Symbol.%LINEBREAK%Du kannst keine nicht-einzigartigen %SALVAGEDASTROMECH%-Aufwertungen ausrüsten.'''
        'Vaksai':
            text: '''<span class="card-restriction">Kihraxz Fighter only.</span>%LINEBREAK%The squad point cost of each of your equipped upgrades is reduced by 1 (to a minimum of 0).%LINEBREAK%You may equip up to 3 different Modification upgrades.'''
        'StarViper Mk. II':
            text: '''<span class="card-restriction">StarViper only.</span>%LINEBREAK%You may equip up to 2 different title Upgrades.%LINEBREAK%When performing a barrel roll action, you <strong>must</strong> use the (%BANKLEFT% 1) or (%BANKRIGHT% 1) template instead of the (%STRAIGHT% 1) template.'''

    condition_translations =
        '''I'll Show You the Dark Side''':
            name: "Ich zeige dir die dunkle Seite"
            text: '''Sobald diese Karte zugeordnet wird, falls sie nicht bereits im Spiel ist, durchsucht der Spieler, der sie zugeordnet hat, den Schadensstapel nach 1 Schadenskarte mit dem Attribut <strong>Pilot</strong> und darf sie offen auf diese Karte legen. Dann mischt er den Schadensstapel.%LINEBREAK%Sobald du während eines Angriffs kritischen Schaden nimmst, wird dir stattdessen die gewählte Schadenskarte offen zugeteilt.%LINEBREAK%Sobald keine Schadenskarte auf dieser Karte liegt, wird sie entfernt.'''
        'Suppressive Fire':
            name: "Sperrfeuer"
            text: '''Sobald du ein anderes Schiff als "Captain Rex" angreifst, wirfst du 1 Angriffswürfel weniger.%LINEBREAK%Sobald du einen Angriff deklarierst, der auf "Captain Rex" zielt, oder sobald "Captain Rex" zerstört wird, entferne diese Karte.%LINEBREAK%Entferne diese Karte am Ende der Kampfphase, falls "Captain Rex" in dieser Phase keinen Angriff durchgeführt hat.'''
        'Fanatical Devotion':
            name: "Fanatische Ergebenheit"
            text: '''Sobald du dich verteidigst, darfst du keine Fokusmarker ausgeben.%LINEBREAK%Sobald du angreifst und falls du einen Fokusmarker ausgibst, um alle %FOCUS% in %HIT% zu ändern, lege das erste %FOCUS% beiseite, das du änderst. Das beiseitegelegte %HIT% darf nicht von Verteidigungswürfeln negiert werden, aber der Verteidiger darf %CRIT% negieren, bevor er es negiert.%LINEBREAK%In der Endphase wird diese Karte abgelegt.'''
        'A Debt to Pay':
            name: "Unbezahlte Schulden"
            text: '''Sobald du ein Schiff mit der Aufwertungskarte "Eine offene Rechnung" angreifst, darfst du 1 %FOCUS% in ein %CRIT% ändern.'''
        'Shadowed':
            text: '''"Thweek" is treated as having the pilot skill value you had after setup.%LINEBREAK%The pilot skill value of "Thweek" does not change if your pilot skill value changes or you are destroyed.'''
        'Mimicked':
            text: '''"Thweek" is treated as having your pilot ability.%LINEBREAK%"Thweek" cannot apply a Condition card by using your pilot ability.%LINEBREAK%"Thweek" does not lose your pilot ability if you are destroyed.'''
        'Harpooned!':
            text: '''When you are hit by an attack, if there is at least 1 uncanceled %CRIT% result, each other ship at Range 1 suffers 1 damage.  Then discard this card and receive 1 facedown Damage card.%LINEBREAK%When you are destroyed, each ship at Range 1 suffers 1 damage.%LINEBREAK%<strong>Action:</strong> Discard this card.  Then roll 1 attack die.  On a %HIT% or %CRIT% result, suffer 1 damage.'''

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations, condition_translations
