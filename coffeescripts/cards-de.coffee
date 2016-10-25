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
        '.game-type-selector option[value="custom"]': 'Benutzerdefiniert'
        '.game-type-selector option[value="epic"]': 'Episch'
        '.game-type-selector option[value="team-epic"]': 'Team Episch'
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
        '.view-as-text' : '<span class="hidden-phone"><i class="icon-print"></i>&nbsp;Drucken/Anzeigen als </span>Text'
        '.collection' : '<span class="hidden-phone"><i class="icon-folder-open hidden-phone hidden-tabler"></i>&nbsp;Deine Sammlung</span>'
        '.randomize' : 'Zufallsliste!'
        '.randomize-options' : 'Zufallslisten-Optionen…'
        '.notes-container > span' : 'Staffelnotizen'
        # Print/View modal
        '.bbcode-list' : 'Kopiere den BBCode von unten und füge ihn in deine Forenposts ein.<textarea></textarea>'
        '.vertical-space-checkbox' : """Platz für Schadenskarten und Aufwertungen im Druck berücksichtigen. <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Ausdrucken in Farbe. <input type="checkbox" class="toggle-color-print" />"""
        '.print-list' : '<i class="icon-print"></i>&nbsp;Druck'
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

    # Move TIE Fighter to TIE-Jäger
    exportObj.renameShip 'TIE Fighter', 'TIE-Jäger'
    # Move TIE Interceptor to TIE-Abfangjäger
    exportObj.renameShip 'TIE Interceptor', 'TIE-Abfangjäger'
    # Move TIE Bomber to TIE-Bomber
    exportObj.renameShip 'TIE Bomber', 'TIE-Bomber'
    # Move Z-95 Headhunter to Z-95-Kopfjäger
    exportObj.renameShip 'Z-95 Headhunter', 'Z-95-Kopfjäger'
    # Move TIE Defender to TIE-Jagdbomber
    exportObj.renameShip 'TIE Defender', 'TIE-Jagdbomber'
    # Move Lambda-Class Shuttle to Raumfähre der Lambda-Klasse
    exportObj.renameShip 'Lambda-Class Shuttle', 'Raumfähre der Lambda-Klasse'
    # Move GR-75 Medium Transport to Medium-Transporter GR-75
    exportObj.renameShip 'GR-75 Medium Transport', 'Medium-Transporter GR-75'
    # Move CR90 Corvette (Fore) to CR90-Korvette (Bug)
    exportObj.renameShip 'CR90 Corvette (Fore)', 'CR90-Korvette (Bug)'
    # Move CR90 Corvette (Aft) to CR90-Korvette (Heck)
    exportObj.renameShip 'CR90 Corvette (Aft)', 'CR90-Korvette (Heck)'
    # Move M3-A Interceptor to M3-A Abfangjäger
    exportObj.renameShip 'M3-A Interceptor', 'M3-A Abfangjäger'
    # Move Raider-class Corvette (Fore) to Korv. der Sturm-Klasse (Bug)
    exportObj.renameShip 'Raider-class Corvette (Fore)', 'Korv. der Sturm-Klasse (Bug)'
    # Move Raider-class Corvette (Aft) to Korv. der Sturm-Klasse (Heck)
    exportObj.renameShip 'Raider-class Corvette (Aft)', 'Korv. der Sturm-Klasse (Heck)'
    # Move TIE Phantom to TIE-Phantom
    exportObj.renameShip 'TIE Phantom', 'TIE-Phantom'
    # Move Kihraxz Fighter to Kihraxz-Jäger
    exportObj.renameShip 'Kihraxz Fighter', 'Kihraxz-Jäger'
    # Move TIE Punisher to TIE-Vergelter
    exportObj.renameShip 'TIE Punisher', 'TIE-Vergelter'
    # Move StarViper to SternenViper
    exportObj.renameShip 'StarViper', 'SternenViper'
    # Move T-70 X-Wing to T-70-X-Flügler
    exportObj.renameShip 'T-70 X-Wing', 'T-70-X-Flügler'
    # Move TIE/fo Fighter to TIE/EO-Jäger
    exportObj.renameShip 'TIE/fo Fighter', 'TIE/EO-Jäger'
    # Move Gozanti-class Cruiser to Kreuzer der Gozanti-Klasse
    exportObj.renameShip 'Gozanti-class Cruiser', 'Kreuzer der Gozanti-Klasse'
    # Move TIE Advanced Prototype to TIE-Turbojäger-Prototyp
    exportObj.renameShip 'TIE Advanced Prototype', 'TIE-Turbojäger-Prototyp'
    # Move G-1A Starfighter to G-1A-Sternenjäger
    exportObj.renameShip 'G-1A Starfighter', 'G-1A-Sternenjäger'
    # Move Attack Shuttle to Jagdshuttle
    exportObj.renameShip 'Attack Shuttle', 'Jagdshuttle'
    # Move TIE/sf Fighter to TIE/SE-Jäger
    exportObj.renameShip 'TIE/sf Fighter', 'TIE/SE-Jäger'
    # Move Lancer-class Pursuit Craft to Jagdschiff der Lanzen-Klasse
    exportObj.renameShip 'Lancer-class Pursuit Craft', 'Jagdschiff der Lanzen-Klasse'
    # Move Protectorate Starfighter to Sternenjäger des Protektors
    exportObj.renameShip 'Protectorate Starfighter', 'Sternenjäger des Protektors'
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
        "Kaa'To Leeachos":
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
            text: """Zu Beginn der Kampfphase darfst du alle dir zugeordneten Fokus-, Ausweich- und Zielerfassungsmarker einem anderen freundlichen Schiff zuordnen."""
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
        "Poe Dameron (PS9)":
            text: """When attacking or defending, if you have a focus token, you may change 1 of your %FOCUS% results to a %HIT% or %EVADE% result."""
            ship: "T-70-X-Flügler"
        '''"Snap" Wexley''':
            ship: "T-70-X-Flügler"
        'Jess Pava':
            ship: "T-70-X-Flügler"
        "Rey":
            text: """When attacking or defending, if the enemy ship is inside of your firing arc, you may reroll up to 2 of your blank results."""
        'Han Solo (TFA)':
            text: '''When you are placed during setup, you can be placed anywhere in the play area beyond Range 3 of enemy ships.'''
        'Chewbacca (TFA)':
            text: '''After another friendly ship at Range 1-3 is destroyed (but has not fled the battlefield), you may perform an attack.'''
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
        'Sabine Wren (TIE Fighter)':
            text: '''Immediately before you reveal your maneuver, you may perform a free boost or barrel roll action.'''
        '"Zeb" Orrelios (TIE Fighter)':
            text: '''When defending, you may cancel %CRIT% results before %HIT% results.'''
        'Kylo Ren':
            text: '''The first time you are hit by an attack each round, deal the "I'll Show You the Dark Side" Condition card to the attacker.'''
        'Unkar Plutt':
            text: '''At the end of the Activation phase, you <strong>must</strong> assign a tractor beam token to each ship you are touching.'''
        'Cassian Andor':
            text: '''At the start of the Activation phase, you may remove 1 stress token from 1 other friendly ship at Range 1-2.'''
        '''"Duchess"''':
            text: '''While you have the "Adaptive Ailerons" Upgrade card equipped, you may choose to ignore its card ability.'''
        'Nien Nunb':
            text: '''When you receive a stress token, if there is an enemy ship inside your firing arc at Range 1, you may discard that stress token.'''
        '"Snap" Wexley':
            text: '''After you execute a 2-, 3-, or 4-speed maneuver, if you are not touching a ship, you may perform a free boost action.'''
        'Jess Pava':
            text: '''When attacking or defending, you may reroll 1 of your dice for each other friendly ship at Range 1.'''
        'Ahsoka Tano':
            text: '''At the start of the Combat phase, you may spend 1 focus token to choose a friendly ship at Range 1.  It may perform 1 free action.'''
        'Captain Rex':
            text: '''After you perform an attack, assign the "Suppressive Fire" Condition card to the defender.'''
        'Major Stridan':
            text: '''For the purpose of your actions and Upgrade cards, you may treat friendly ships at Range 2-3 as being at Range 1.'''
        'Lieutenant Dormitz':
            text: '''During setup, friendly ships may placed anywhere in the play area at Range 1-2 of you.'''

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
            text: """<strong>Aktion:</strong> Führe ein weißes (%TURNLEFT% 1) oder (%TURNRIGHT% 1) Manöver aus. Dann erhältst du einen Stressmarker.<br /><br />Wenn du kein %BOOST%-Aktionssymbol hast, musst du dann 2 Angriffswürfel werfen. Du nimmst allen gewürfelten Schaden (%HIT%) und kritischen Schaden (%CRIT%)."""
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
            text: """Du darfst die Bedingung "Angriff (Zielerfassung):" in "Angriff (Fokussierung):" ändern.<br /><br />Wenn ein Angriff das Ausgeben von Zielerfassungsmarkern erfordert, darfst du stattdessen auch einen Fokusmarker ausgeben."""
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
            text: """Beim Verteidigen darfst du eines der %HIT% des Angreifers in ein %FOCUS% ändern.<br /><br />Der Angreifer darf den veränderten Würfel nicht neu würfeln."""
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
            text: """Sobald du angreifst, darfst du, falls du den Verteidiger in der Zielerfassung hast, den Zielerfassungsmarker ausgeben, um beliebig viele Verteidigungswürfel zu wählen. Diese muss der Verteidiger neu würfeln."""
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
            text: """%DE_IMPERIALONLY%%LINEBREAK%Ein Mal pro Runde darfst du das Ergebnis eines Würfels, den ein freundliches Schiff geworfen hat, in ein beliebiges anderes Ergebnis ändern. Dieses Ergebnis kann nicht nochmal modifiziert werden."""
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
            text: """Sobald du angreifst, darfst du einen Fokus ausgeben, um 1 deiner gewürfelten Leerseiten in %HIT% zu ändern."""
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
            text: """%DE_LARGESHIPONLY%%LINEBREAK%Nachdem du durch einen Angriff 3 oder mehr Schaden genommen hast, lädst du 1 Schild wieder auf (bis maximal zu deinem Schildwert)."""
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
            text: """%DE_SCUMONLY%%LINEBREAK%Sobald du angreifst, darfst du beliebig viele Stressmarker erhalten, um ebenso viele Verteidigungswürfel zu wählen. Der Verteidiger muss alle gewählten Würfel neu würfeln."""
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
            text: """Sobald du dein Manöverrad aufdeckst, darfst du diese Karte <strong>ablegen</strong>, um 1 Thermaldetonatormarker zu legen.%LINEBREAK%Der Marker <strong>detoniert</strong> am ende der Aktivierungsphase."""
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
            text: '''%DE_IMPERIALONLY%%LINEBREAK%<strong>Action:</strong> Assign the "I'll Show You the Dark Side" Condition card to an enemy ship at Range 1-3.'''
        'Unkar Plutt':
            text: '''%DE_SCUMONLY%%LINEBREAK%After executing a maneuver that causes you to overlap an enemy ship, you may suffer 1 damage to perform 1 free action.'''
        'A Score to Settle':
            text: '''During setup, before the "Place Forces" step, choose 1 enemy ship and deal the "A Debt to Pay" Condition card to it.%LINEBREAK%Wehn attacking a ship that has the "A Debt to Pay" Condition card, you may change 1 %FOCUS% result to a %CRIT% result.'''
        'Jyn Erso':
            text: '''%DE_REBELONLY%%LINEBREAK%<strong>Action:</strong> Choose 1 friendly ship at Range 1-2. Assign 1 focus token to that ship for each enemy ship inside your firing arc at Range 1-3.  You cannot assign more than 3 focus tokens in this way.'''
        'Cassian Andor':
            text: '''%DE_REBELONLY%%LINEBREAK%At the end of the Planning phase, you may choose an enemy ship at Range 1-2.  Guess aloud that ship's bearing and speed, then look at its dial.  If you are correct, you may rotate your dial to another maneuver.'''
        'Finn':
            text: '''%DE_REBELONLY%%LINEBREAK%When attacking with a primary weapon or defending, if the enemy ship is inside your firing arc, you may add 1 blank result to your roll.'''
        'Rey':
            text: '''%DE_REBELONLY%%LINEBREAK%At the start of the End phase, you may place 1 of your ship's focus tokens on this card.  At the start of the Combat phase, you may assign 1 of those tokens to your ship.'''
        'Burnout SLAM':
            text: '''%DE_LARGESHIPONLY%%LINEBREAK%Your action bar gains the %SLAM% action icon.%LINEBREAK%After you perform a SLAM action, discard this card.'''
        'Primed Thrusters':
            text: '''%DE_SMALLSHIPONLY%%LINEBREAK%Stress tokens do not prevent you from performing boost or barrel roll actions unless you have 3 or more stress tokens.'''
        'Pattern Analyzer':
            text: '''When executing a maneuver, you may resolve the "Check Pilot Stress" step after the "Perform Action" step (instead of before that step).'''
        'Snap Shot':
            text: '''After an enemy ship executes a maneuver, you may perform this attack against that ship.  <strong>Attack:</strong> Attack 1 ship.  You cannot modify your attack dice and cannot attack again this phase.'''
        'M9-G8':
            text: '''%DE_REBELONLY%%LINEBREAK%When a ship you have locked is attacking, you may choose 1 attack die.  The attacker must reroll that die.%LINEBREAK%You can acquire target locks on other friendly ships.'''
        'EMP Device':
            text: '''During the Combat phase, instead of performing any attacks, you may discard this card to assign 2 ion tokens to each ship at Range 1.'''
        'Captain Rex':
            text: '''%REBELONLY%%LINEBREAK%After you perform an attack that does not hit, you may assign 1 focus token to your ship.'''
        'General Hux':
            text: '''%IMPERIALONLY%%LINEBREAK%<strong>Action:</strong> Choose up to 3 friendly ships at Range 1-2.  Assign 1 focus token to each and assign the "Fanatical Devotion" Condition card to 1 of them.  Then receive 1 stress token.'''
        'Operations Specialist':
            text: '''%LIMITED%%LINEBREAK%After a friendly ship at Range 1-2 performs an attack that does not hit, you may assign 1 focus token to a friendly ship at Range 1-3 of the attacker.'''
        'Targeting Synchronizer':
            text: '''When a friendly ship at Range 1-2 is attacking a ship you have locked, the friendly ship treats the "<strong>Attack (target lock):</strong> header as "<strong>Attack:</strong>."  If a game effect instructs you to spend a target lock, it may spend your target lock instead.'''
        'Hyperwave Comm Scanner':
            text: '''At the start of the "Place Forces" step, you may choose to treat your pilot skill value as "0," "6," or "12" until the end of the step.%LINEBREAK%During setup, after another friendly ship is placed at Range 1-2, you may assign 1 focus or evade token to it.'''

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
            text: '''<span class="card-restriction">YT-1300 and YT-2400 only.</span>%LINEBREAK%Your upgrade bar gains the %ILLICIT% upgrade icon.%LINEBREAK%You may equip 1 additional Modification upgrade that costs 3 or fewer squad points.'''
        'Captured TIE':
            text: '''<span class="card-restriction">TIE Fighter only.</span>%REBELONLY%%LINEBREAK%Enemy ships with a pilot skill value lower than yours cannot declare you as the target of an attack.  After you perform an attack or when you are the only remaining friendly ship, discard this card.'''

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
            text: '''<span class="card-restriction">Nur für M3-A-Abfangjäger.</span>%LINEBREAK%Füge deiner Aufwertungsleiste eines der folgenden Symbole hinzu: %CANNON%, %TORPEDO%, oder %MISSILE%.'''
        '"Heavy Scyk" Interceptor (Torpedo)':
            ship: "M3-A Abfangjäger"
            name: '"Schwerer Scyk"-Abfangjäger (Torpedo)'
            text: '''<span class="card-restriction">Nur für M3-A-Abfangjäger.</span>%LINEBREAK%Füge deiner Aufwertungsleiste eines der folgenden Symbole hinzu: %CANNON%, %TORPEDO%, oder %MISSILE%.'''
        '"Heavy Scyk" Interceptor (Missile)':
            ship: "M3-A Abfangjäger"
            name: '"Schwerer Scyk"-Abfangjäger (Rakete)'
            text: '''<span class="card-restriction">Nur für M3-A-Abfangjäger.</span>%LINEBREAK%Füge deiner Aufwertungsleiste eines der folgenden Symbole hinzu: %CANNON%, %TORPEDO%, oder %MISSILE%.'''
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
            text: '''After you perform a boost or barrel roll action, you may remove 1 enemy target lock from a friendly ship at Range 1.  You cannot equip this card if your pilot skill is "6" or lower.'''
        'Millennium Falcon (TFA)':
            text: '''After you execute a 3-speed bank maneuver (%BANKLEFT% or %BANKRIGHT%), if you are not touching another ship and you are not stressed, you may receive 1 stress token to rotate your ship 180&deg;.'''
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
            text: '''<span class="card-restriction">TIE Fighter only.</span>%REBELONLY%%LINEBREAK%Your upgrade bar gains the %CREW% and %ILLICIT% upgrade icons.'''
        '''Kylo Ren's Shuttle''':
            text: '''<span class="card-restriction">Upsilon-class Shuttle only.</span>%LINEBREAK%At the end of the Combat phase, choose an unstressed enemy ship at Range 1-2.  Its owner must assign a stress token to it or assign a stress token to another ship at Range 1-2 of you that that player controls.'''
        '''Pivot Wing''':
            text: '''<span class="card-restriction">U-Wing only.</span> %DUALCARD%%LINEBREAK%<strong>Side A (Attack):</strong> Increase your agility by 1.%LINEBREAK%After you execute a maneuver, you may flip this card.%LINEBREAK%<strong>Side B (Landing):</strong> When you reveal a (0 %STOP%) maneuver, you may rotate your ship 180&deg;.%LINEBREAK%After you execute a maneuver, you may flip this card.'''
        '''Adaptive Ailerons''':
            text: '''<span class="card-restriction">TIE Striker only.</span>%LINEBREAK%Immediately before you reveal your dial, if you are not stressed, you <strong>must</strong> execute a white (%BANKLEFT% 1), (%STRAIGHT% 1), or (%BANKRIGHT% 1) maneuver.'''

    condition_translations =
        '''I'll Show You the Dark Side''':
            text: '''When this card is assigned, if it is not already in play, the player who dealt it searches the Damage deck for 1 Damage card with the <strong><em>Pilot</em></strong> trait and may place it faceup on this card. Then shuffle the damage deck.%LINEBREAK%When you suffer critical damage from an attack, you are instead dealt the chosen faceup Damage card.%LINEBREAK%When there is no Damage card on this card, remove it.'''
        'Suppressive Fire':
            text: '''When attacking a ship other than "Captain Rex," roll 1 fewer attack die.%LINEBREAK% When you declare an attack targeting "Captain Rex" or when "Captain Rex" is destroyed, remove this card.%LINEBREAK%At the end of the Combat phase, if "Captain Rex" did not perform an attack this phase, remove this card.'''
        'Fanatical Devotion':
            text: '''When defending, you cannot spend focus tokens.%LINEBREAK%When attacking, if you spend a focus token to change all %FOCUS% results to %HIT% results, set aside the first %FOCUS% result that you change. The set-aside %HIT% result cannot be canceled by defense dice, but the defender may cancel %CRIT% results before it.%LINEBREAK%During the End phase, remove this card.'''

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations, condition_translations
