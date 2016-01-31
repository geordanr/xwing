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
        "Bomb": "Bombe"
        "Cannon": "Kanonen"
        "Crew": "Crew"
        "Elite": "Elite"
        "Missile": "Raketen"
        "System": "System"
        "Torpedo": "Torpedo"
        "Turret": "Geschützturm"
        "Cargo": "Fracht"
        "Hardpoint": "Hardpoint"
        "Team": "Team"
        "Illicit": "Illegales"
        "Salvaged Astromech": "geborgener Astromech"
    sources: # needed?
        "Core": "Grundspiel"
        "A-Wing Expansion Pack": "A-Wing Erweiterung"
        "B-Wing Expansion Pack": "B-Wing Erweiterung"
        "X-Wing Expansion Pack": "X-Wing Erweiterung"
        "Y-Wing Expansion Pack": "Y-Wing Erweiterung"
        "Millennium Falcon Expansion Pack": "Millenium Falke Erweiterung"
        "HWK-290 Expansion Pack": "HWK-290 Erweiterung"
        "TIE Fighter Expansion Pack": "TIE-Fighter Erweiterung"
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
    ui:
        shipSelectorPlaceholder: "Wähle ein Schiff"
        pilotSelectorPlaceholder: "Wähle einen Piloten"
        upgradePlaceholder: (translator, language, slot) ->
            "kein #{translator language, 'slot', slot} Upgrade"
        modificationPlaceholder: "keine Modifikation"
        titlePlaceholder: "kein Titel"
        upgradeHeader: (translator, language, slot) ->
            "#{translator language, 'slot', slot} Upgrade"
        unreleased: "unveröffentlicht"
        epic: "Episch"
        limited: "limitiert"
    byCSSSelector:
        '.translate.sort-cards-by': 'Sortiere Karten nach'
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

    # Move TIE Interceptor to TIE-Abfangjäger
    exportObj.renameShip 'TIE Interceptor', 'TIE-Abfangjäger'
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
            name: "Pilot der Akademie"
        "Obsidian Squadron Pilot":
            name: "Pilot der Obsidian-Staffel"
        "Black Squadron Pilot":
            name: "Pilot der Schwarz-Staffel"
        '"Winged Gundark"':
            name: '"Geflügelter Gundark"'
            text: """Wenn du ein Ziel in Reichweite 1 angreifst, darfst du eines deiner %HIT% in ein %CRIT% ändern."""
        '"Night Beast"':
            name: '"Nachtbestie"'
            text: """Nachdem du ein grünes Manöver ausgeführt hast, darfst du als freie Aktion eine Fokussierung durchführen."""
        '"Backstabber"':
            text: """Wenn du bei deinem Angriff nicht im Feuerwinkel des Verteidigers bist, erhältst du 1 zusätzlichen Angriffswürfel."""
        '"Dark Curse"':
            text: """Wenn du verteidigst, können angreifende Schiffe keine Fokusmarker ausgeben oder Angriffswürfel neu würfeln."""
        '"Mauler Mithel"':
            text: """Wirf 1 zusätzlichen Angriffswürfel, wenn du ein Ziel in Reichweite 1 angreifst."""
        '"Howlrunner"':
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
            text: """Sobald du ein Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) aufdeckst, darfst du das Drehmanöver mit gleicher eschwindigkeit, aber anderer Richtung, auf deinem Rad nachträglich einstellen."""
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
            name: "Pilot der Scimitar-Staffel"
        "Gamma Squadron Pilot":
            name: "Pilot der Gamma-Staffel"
        "Captain Jonus":
            text: """Wenn ein anderes freundliches Schiff in Reichweite 1 mit einer Sekundärwaffe angreift, darf es bis zu 2 Angriffswürfel neu würfeln."""
        "Major Rhymer":
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
            text: """Sobald ein feindliches Schiff in Reichweite 1–3 und innerhalb deines Feuerwinkels verteidigt, darf der Angreifer 1 %HIT% seiner in ein %CRIT% ändern."""
        "Corran Horn":
            text: """Zu Beginn der Endphase kannst du einen Angriff durchführen. Tust du das, darfst du in der nächsten Runde nicht angreifen."""
        "Sigma Squadron Pilot":
            name: "Pilot der Sigma-Staffel"
        "Shadow Squadron Pilot":
            name: "Pilot der Schatten-Staffel"
        '"Echo"':
            name: '"Echo"'
            text: """Wenn du dich enttarnst, musst du statt der (%STRAIGHT% 2)-Manöverschablone die (%BANKRIGHT% 2)- oder (%BANKLEFT% 2)-Schablone verwenden."""
        '"Whisper"':
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
        'Gozanti-class Cruiser':
            text: """After you execute a maneuver, you may deploy up to 2 attached ships."""
        '"Scourge"':
            text: """When attacking a defender that has 1 or more Damage cards, roll 1 additional attack die."""
        "The Inquisitor":
            text: """When attacking with your primary weapon at Range 2-3, treat the range of the attack as Range 1."""
        "Zuckuss":
            text: """When attacking, you may roll 1 additional attack die.  If you do, the defender rolls 1 additional defense die."""
        "Dengar":
            text: """Once per round after defending, if the attacker is inside your firing arc, you may perform an attack against the that ship."""
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
            name: "Ass Zeta"
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
        'Hera Syndulla':
            text: '''When you reveal a green or red maneuver, you may rotate your dial to another maneuver of the same difficulty.'''
        '"Youngster"':
            text: """Freundliche TIE-Jäger in Reichweite 1-3 dürfen die Aktion einer von dir ausgerüsteten %ELITE%-Aufwertung durchführen."""
        '"Wampa"':
            text: """Sobald du angreifst, darfst du alle Würfelergebnisse negieren. Negierst du ein %CRIT%, teile dem Verteidiger 1 verdeckte Schadenskarte zu."""
        '"Chaser"':
            text: """Sobald ein anderes freundliches Schiff in Reichweite 1 einen Fokusmarker ausgibt, wird deinem Schiff ein Fokusmarker zugeteilt."""
        'Ezra Bridger':
            text: """When defending, if you are stressed, you may change up to 2 of your %FOCUS% results to %EVADE% results."""
        '"Zeta Leader"':
            ship: "TIE/EO-Jäger"
            name: '"Zeta Eins"'
            text: '''Sobald du angreifst und falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten, um 1 zusätzlichen Würfel zu werfen.'''
        '"Epsilon Ace"':
            ship: "TIE/EO-Jäger"
            name: '"Ass Epsilon"'
            text: '''Solange du keine Schadenskarten hast, behandle deinen Pilotenwert als "12".'''
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
            ship: "T-70-X-Flügler"
        "Valen Rudor":
            text: """After defending, you may perform a free action."""
        "4-LOM":
            text: """At the start of the End phase, you may assign 1 of your stress tokens to another ship at Range 1."""

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
            text: """<strong>Aktion:</strong> Wähle ein Schiff in Reichweite 1-2 mit einem geringeren Pilotenwert als du.<br /><br />Das gewählte Schiff darf sofort 1 freie Aktion durhführen."""
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
            name: "Annährungsminen"
            text: """<strong>Aktion:</strong> Lege diese Karte ab, um 1 Annährungsminen-Marker zu <strong>legen</strong>.<br /><br />Der Marker <strong>detoniert</strong>, sobald sich die Basis eines Schiffs oder die Manöverschablone mit dem Marker überschneidet."""
        "Weapons Engineer":
            name: "Waffen-Techniker"
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
            name: "Repertierblaster"
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
            text: """<strong>Energie:</strong> Du kannst 1 Energie ausgeben, um 1 freundliches Schiff in Reichweite1-2 zu wählen. Nimm dann ein Schiff in die Zielerfassung und gibt den blauen Zielerfassungsmarker dem gewählten Schiff."""
        "Lone Wolf":
            name: "Einsamer Wolf"
            text: """Sobald du angreifst oder verteidigst und wenn keine anderen freundlichen Schiffe in Reichweite 1-2 sind, darfst du 1 gewürfelte Leerseite neu würfeln."""
        "Stay On Target":
            name: "Am Ziel bleiben"
            text: """Sobald du ein Manöverrad aufdeckst, darfst du ein anderes Manöver mit gleicher Geschwindigkeit auf deinem Rad einstellen.<br /><br />Dieses Manöver wird wie ein rotes Manöver behandelt."""
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
            text: """Sobald du eine Schadenskarte mit dem Attribut <strong>Schiff</strong> erhältst, darfst du sie sofort ablegen (bevor ihr Effekt abgehandelt wird).%LINEBREAK%Danach wird diese Aufwertungskarte abgelegt."""
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
            text: """<strong>Angriff (Zielerfassung):</strong> Gib deinen Zielerfassungsmarker aus und lege diese Karte ab, um diesen Angriff durchzuführen.<br /><br />Falls dieser Angriff trifft, entferne 1 Schildmarker des Verteidigers, nachdem du ihm Schaden zugefügt hast."""
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
            text: '''Sobald du ein Schiff innerhalb deines Feuerwinkels angreifst, darfst du diese Karte ablegen um 1 gewürfeltes %EVADE% des Verteidigers zu negieren.'''
        "Advanced Homing Missiles":
            name: "Verstärkte Lenkraketen"
            text: """<strong>Angriff (Zielerfassung):</strong> Lege diese Karte ab, um diesen Angriff durchzuführen.%LINEBREAK%Falls dieser Angriff triffst, teile dem Verteidiger 1 offene Schadenskarte zu. Dann werden <strong>alle</strong> Würfelergebnisse negiert."""
        'Agent Kallus':
            text: '''%DE_IMPERIALONLY%%LINEBREAK%At the start of the first round, choose 1 enemy small or large ship.  When attacking or defending against that ship, you may change 1 of your %FOCUS% results to a %HIT% or %EVADE% result.'''
        'XX-23 S-Thread Tracers':
            text: """<strong>Attack (focus):</strong> Discard this card to perform this attack.  If this attack hits, each friendly ship at Range 1-2 of you may acquire a target lock on the defender.  Then cancel <strong>all</strong> dice results."""
        "Tractor Beam":
            text: """<strong>Attack:</strong> Attack 1 ship.%LINEBREAK%If this attack hits, the defender receives 1 tractor beam token.  Then cancel <strong>all</strong> dice results."""
        "Cloaking Device":
            text: """%DE_SMALLSHIPONLY%%LINEBREAK%<strong>Action:</strong> Perform a free cloak action.%LINEBREAK%At the end of each round, if you are cloaked, roll 1 attack die.  On a %FOCUS% result, discard this card, then decloak or discard your cloak token."""
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
            name: "Doppellasergeschütz"
            text: '''%GOZANTIONLY%%LINEBREAK%<strong>Angriff (Energie):</strong> Gib 1 Energie von dieser Karte aus, um diesen Angriff gegen 1 Schiff durchzuführen (auch außerhalb deines Feuerwinkels).'''
        'Broadcast Array':
            name: "Sendephalanx"
            text: '''%GOZANTIONLY%%LINEBREAK%Deine Aktionsleiste erhält das %JAM%-Aktionssymbol.'''
        'Rear Admiral Chiraneau':
            name: "Konteradmiral Chiraneau"
            text: '''%HUGESHIPONLY% %IMPERIALONLY%%LINEBREAK%<strong>Aktion:</strong> Führe ein weißes (%STRAIGHT% 1)-Manöver aus.'''
        'Ordnance Experts':
            name: "Flugkörperexperten"
            text: '''Sobald ein freundliches Schiff in Reichweite 1-3 einen Angriff mit einer %TORPEDO%- oder %MISSILE%-Sekundärwaffe durchführt, darf es ein Mal pro Runde 1 seiner Leerseiten in ein %HIT% ändern.'''
        'Docking Clamps':
            name: "Andockklammern"
            text: '''%GOZANTIONLY% %LIMITED%%LINEBREAK%An diesem Schiff können bis zu 4 TIE-Jäger, TIE-Abfangjäger, TIE-Bomber oder TIE-Turbojäger andocken. Alle angedockten Schiffe müssen denselben Schiffstyp haben.'''
        '"Zeb" Orrelios':
            text: """%REBELONLY%%LINEBREAK%Enemy ships inside your firing arc that you are touching are not considered to be touching you when either you or they activate during the Combat phase."""
        'Kanan Jarrus':
            text: """%REBELONLY%%LINEBREAK%Once per round, after a friendly ship at Range 1-2 executes a white maneuver, you may remove 1 stress token from that ship."""
        'Reinforced Deflectors':
            text: """%LARGESHIPONLY%%LINEBREAK%After you suffer 3 or more damage from an attack, recover one shield (up to your shield value)."""
        'Dorsal Turret':
            text: """<strong>Attack:</strong> Attack 1 ship (even a ship outside your firing arc).%LINEBREAK%If the target of this attack is at Range 1, roll 1 additional attack die."""
        'Targeting Astromech':
            name: "Zielender Astromech"
            text: '''Nachdem du eine rotes Manöver ausgeführt hast, darfst du ein Schiff in die Zielerfassung nehmen.'''
        'Hera Syndulla':
            text: """%REBELONLY%%LINEBREAK%You may reveal and execute red maneuvers even while you are stressed."""
        'Ezra Bridger':
            text: """%REBELONLY%%LINEBREAK%When attacking, if you are stressed, you may change 1 of your %FOCUS% results to a %CRIT% result."""
        'Sabine Wren':
            text: """%REBELONLY%%LINEBREAK%Your upgrade bar gains the %BOMB% upgrade icon.  Once per round, before a friendly bomb token is removed, choose 1 enemy ship at Range 1 of that token. That ship suffers 1 damage."""
        '"Chopper"':
            text: """%REBELONLY%%LINEBREAK%You may perform actions even while you are stressed.%LINEBREAK%After you perform an action while you are stressed, suffer 1 damage."""
        'Construction Droid':
            name: "Baudroide"
            text: '''%HUGESHIPONLY% %LIMITED%%LINEBREAK%Sobald du die Aktion Aufladen durchführst, darfst du 1 Energie ausgeben, um 1 verdeckte Schadenskarte abzulegen.'''
        'Cluster Bombs':
            name: "Clusterbomben"
            text: '''Nachdem du dich verteidigt hast, darfst du diese Karte ablegen. Wenn du dies tust, wirft jedes andere Schiff in Reichweite 1 der verteidigenden Sektion 2 Angriffswürfel und nimmt allen gewürfelten Schaden (%HIT%) und kritischen Schaden (%CRIT%).'''
        "Adaptability (+1)":
            text: """<span class="card-restriction">Dual card.</span>%LINEBREAK%Increase your pilot skill value by 1."""
        "Adaptability (-1)":
            text: """<span class="card-restriction">Dual card.</span>%LINEBREAK%Decrease your pilot skill value by 1."""
        "Electronic Baffle":
            text: """When you receive a stress token or an ion token, you may suffer 1 damage to discard that token."""
        "4-LOM":
            text: """%SCUMONLY%%LINEBREAK%When attacking, during the "Modify Attack Dice" step, you may receive 1 ion token to choose 1 of the defender's focus or evade tokens.  That token cannot be spent during this attack."""
        "Zuckuss":
            text: """%SCUMONLY%%LINEBREAK%When attacking, you may receive any number of stress tokens to choose an equal number of defense dice.  The defender must reroll those dice."""

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
            name: "Verbesserte Tarnvorrichtung"
            text: """<span class="card-restriction">Nur für TIE-Phantom.</span>%LINEBREAK%Nachdem du angegriffen hast, darfst du dich als freie Aktion tarnen."""
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
            text: """Sobald du verteidigst und jenseits von Reichweite 2 oder außerhalb des Feuerwinkels des Angreifers bist, darfst du 1 deiner Leerseiten in ein %EVADE% ändern. Du darfst diese Karte nur ausrüsten, wenn du das %BOOST%-Aktionssymbol hast."""
        "Advanced SLAM":
            name: "Verbesserter SLAM"
            text: """Nachdem du die Aktion SLAM durchgeführt hast, darfst du 1 freie Aktion durchführen, falls du dich nicht mit einem Hindernis oder anderen Schiff überschnitten hast."""
        "Twin Ion Engine Mk. II":
            name: "Zwillings-Ionenantrieb MK. II"
            text: """Du darfst alle Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) als grüne Manöver behandeln."""
        "Maneuvering Fins":
            name: "Steuertragflächen"
            text: """Sobald du ein Wendemanöver (%TURNLEFT% oder %TURNRIGHT%) aufdeckst, darfst du das entsprechende Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) mit gleicher Geschwindigkeit auf deinem Manöverrad einstellen."""
        "Ion Projector":
            name: "Ionenprojektor"
            text: """%DE_LARGESHIPONLY%%LINEBREAK%Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, das zur Überschneidung mit deinem Schiff führte, wirf 1 Angriffswürfel. Bei %HIT% oder %CRIT% bekommt das feindliche Schiff 1 Ionenmarker."""
        'Integrated Astromech':
            text: '''<span class="card-restriction">Nur für X-Wing.</span>%LINEBREAK%When you are dealt a Damage card, you may discard 1 of your %ASTROMECH% Upgrade cards to discard that Damage card.'''
        'Optimized Generators':
            name: "Optimierte Generatoren"
            text: '''%HUGESHIPONLY%%LINEBREAK%Ein Mal pro Runde erhältst du 2 Energie, sobald du Energie auf einer ausgerüsteten Aufwertung zuordnest.'''
        'Automated Protocols':
            name: "Vollautomatische Protokolle"
            text: '''%HUGESHIPONLY%%LINEBREAK%Ein Mal pro Runde darfst du, nachdem du eine Aktion durchgeführt hast (außer Aufladen und Verstärken), 1 Energie ausgeben, um Aufladen oder Verstärken als freie Aktion durchzuführen.'''
        'Ordnance Tubes':
            name: "Abschussrohre"
            text: '''%HUGESHIPONLY%%LINEBREAK%Du darfst jedes deiner %HARDPOINT%-Aufwertungssymbole wie ein %TORPEDO%- oder %MISSILE%- Symbol behandeln.%LINEBREAK%Sobald du angewiesen wirst eine %TORPEDO%- oder %MISSILE%-Aufwertung abzulegen, lege sie nicht ab.'''
        'Long-Range Scanners':
            text: '''You can acquire target locks on ships at Range 3 and beyond.  You cannot acquire target locks on ships at Range 1-2.  You can equip this card only if you have %TORPEDO% and %MISSILE% in your upgrade bar.'''
        "Guidance Chips":
            text: """Once per round, when attacking with a %TORPEDO% or %MISSILE% secondary weapon, you may change 1 die result to a %HIT% result (or a %CRIT% result if your primary weapon value is "3" or higher)."""


    title_translations =
        "Slave I":
            name: "Sklave I"
            text: """<span class="card-restriction">Nur für Firespray-31.</span>%LINEBREAK%Füge deiner Aktionsleiste ein %TORPEDO%-Symbol hinzu."""
        "Millennium Falcon":
            name: "Millennium Falke"
            text: """<span class="card-restriction">Nur für YT-1300.</span>%LINEBREAK%Füge deiner Aktionsleiste ein %EVADE%-Symbol hinzu."""
        "Moldy Crow":
            text: """<span class="card-restriction">Nur für HWK-290.</span>%LINEBREAK%In der Endphase werden von diesem Schiff keine unbenutzen Fokusmarker entfernt."""
        "ST-321":
            ship: "Raumfähre der Lambda-Klasse"
            text: """<span class="card-restriction">Nur für Raumfähren der Lamda-Klasse.</span>%LINEBREAK%Wenn du eine Zielerfassung durchführst, darfst du ein beliebiges feindliches Schiff auf der Spielfläche als Ziel erfassen."""
        "Royal Guard TIE":
            name: "TIE der Roten Garde"
            ship: "TIE-Abfangjäger"
            text: """<span class="card-restriction">Nur für TIE-Abfangjäger.</span>%LINEBREAK%Du kannst bis zu 2 verschiedene Modifikationen verwenden (statt einer).<br /><br />Du kannst diese Karte nicht verwenden, wenn der Pilotenwert "4" oder kleiner ist."""
        "Dodonna's Pride":
            name: "Dodonnas Stolz"
            ship: "CR90-Korvette (Bug)"
            text: """<span class="card-restriction">Nur für CR90-Korvette (Bug).</span>%LINEBREAK%Wenn du die Aktion Koordination durchführst, kannst du 2 freundliche Schiffe wählen (anstatt 1). Jedes dieser Schiffe darf 1 freie Aktion durchführen."""
        "A-Wing Test Pilot":
            name: "Erfahrener Testpilot"
            text: """<span class="card-restriction">Nur für A-Wing.</span>%LINEBREAK%Füge deiner Aufwertungsleiste 1 %ELITE%-Symbol hinzu.<br /><br />Du darfst jede %ELITE%-Aufwertung nur ein Mal ausrüsten. Du kannst diese Karte nicht verwenden, wenn dein Pilotenwert "1" oder niedriger ist."""
        "Tantive IV":
            ship: "CR90-Korvette (Bug)"
            text: """<span class="card-restriction">Nur für CR90-Korvette (Bug).</span>%LINEBREAK%Die Aufwertungsleiste deiner Bugsektion erhält 1 zusätzliches %CREW% und 1 zusätzliches %TEAM% ."""
        "Bright Hope":
            ship: "Medium-Transporter GR-75"
            text: """<span class="card-restriction">Nur für Medium-Transporter GR-75.</span>%LINEBREAK%Wenn neben deiner Bugsektion ein Verstärkungsmarker liegt, fügt er 2 %EVADE% hinzu (anstatt 1)."""
        "Quantum Storm":
            ship: "Medium-Transporter GR-75"
            text: """<span class="card-restriction">Nur für Medium-Transporter GR-75.</span>%LINEBREAK%Wenn du zu Beginn der Endphase 1 Energiemarker oder weniger hast, gewinnst du 1 Energiemarker."""
        "Dutyfree":
            ship: "Medium-Transporter GR-75"
            text: """<span class="card-restriction">Nur für Medium-Transporter GR-75.</span>%LINEBREAK%Bei der Aktion Störsignal kannst du ein feindliches Schiff in Reichweite 1-3 (statt 1-2) wählen."""
        "Jaina's Light":
            name: "Jainas Licht"
            ship: "CR90-Korvette (Bug)"
            text: """<span class="card-restriction">Nur für CR90-Korvette (Bug).</span>%LINEBREAK%Wenn du verteidigst, darfst du einmal pro Angriff eine soeben erhaltene, offene Schadenskarte ablegen und dafür eine neue offene Schadenskarte ziehen."""
        "Outrider":
            text: """<span class="card-restriction">Nur für YT-2400.</span>%LINEBREAK%Solange du eine %CANNON%-Aufwertung ausgerüstet hast, kannst du deine Primärwaffen <strong>nicht</strong> verwenden. Dafür darfst du mit %CANNON%-Sekundärwaffen auch Ziele außerhalb deines Feuerwinkels angreifen."""
        "Dauntless":
            text: """<span class="card-restriction">Nur für VT-49 Decimator.</span>%LINEBREAK%Nach dem Ausführen eines Manövers, das zur Überschneidung mit einem anderen Schiff geführt hat, darfst du 1 freie Aktion durchführen. Dann erhältst du 1 Stressmarker."""
        "Virago":
            ship: "SternenViper"
            text: """<span class="card-restriction">Nur für SternenViper.</span>%LINEBREAK%Füge deiner Aufwertungsleiste ein %SYSTEM%- und ein %ILLICIT%-Symbol hinzu.%LINEBREAK%Du kannst diese Karte nicht ausrüsten, wenn dein Pilotenwert "3" oder niedriger ist."""
        '"Heavy Scyk" Interceptor (Cannon)':
            ship: "M3-A Abfangjäger"
            name: '"Schwerer Scyk"-Abfangjäger (Kannone)'
            text: """<span class="card-restriction">Nur für M3-A-Abfangjäger.</span>%LINEBREAK%Füge deiner Aufwertungsleiste eines der folgenden Symbole hinzu: %CANNON%, %TORPEDO%, oder %MISSILE%."""
        '"Heavy Scyk" Interceptor (Torpedo)':
            ship: "M3-A Abfangjäger"
            name: '"Schwerer Scyk"-Abfangjäger (Torpedo)'
            text: """<span class="card-restriction">Nur für M3-A-Abfangjäger.</span>%LINEBREAK%Füge deiner Aufwertungsleiste eines der folgenden Symbole hinzu: %CANNON%, %TORPEDO%, oder %MISSILE%."""
        '"Heavy Scyk" Interceptor (Missile)':
            ship: "M3-A Abfangjäger"
            name: '"Schwerer Scyk"-Abfangjäger (Rakete)'
            text: """<span class="card-restriction">Nur für M3-A-Abfangjäger.</span>%LINEBREAK%Füge deiner Aufwertungsleiste eines der folgenden Symbole hinzu: %CANNON%, %TORPEDO%, oder %MISSILE%."""
        "IG-2000":
            text: """<span class="card-restriction">Nur für Aggressor.</span>%LINEBREAK%Du bekommst die Pilotenfähigkeiten aller anderen freundlichen Schiffe mit der Aufwertungskarte <em>IG-2000</em> (zusätzlich zu deiner eigenen Pilotenfähigkeit)."""
        "BTL-A4 Y-Wing":
            name: "BTL-A4-Y-Wing"
            text: """<span class="card-restriction">Nur für Y-Wing.</span>%LINEBREAK%Du darfst Schiffe außerhalb deines Feuerwinkels nicht angreifen. Nachdem du einen Angriff mit deinen Primärwaffen durchgeführt hast, darfst du sofort einen weiteren Angriff mit einer %TURRET%-Sekundärwaffe durchführen."""
        "Andrasta":
            text: """<span class="card-restriction">Nur für Firespray-31.</span>%LINEBREAK%Füge deiner Aufwertungsleiste zwei weitere %BOMB%-Symbole hinzu."""
        "TIE/x1":
            text: """<span class="card-restriction">Nur für TIE Advanced.</span>%LINEBREAK%Füge deiner Aufwertungsleiste ein %SYSTEM%-Symbol hinzu.%LINEBREAK%Wenn du eine %SYSTEM%-Aufwertung ausrüstest, sinken deren Kommandopunkte um 4 (Minimum 0)."""
        "Hound's Tooth":
            name: "Reisszahn"
            text: """<span class="card-restriction">Nur für YV-666.</span>%LINEBREAK%Nachdem du zerstörst worden bist, darfst du das Schiff <em>Nashtahwelpe</em> <strong>absetzen</strong>, bevor du von der Spielfläche entfernt wirst.%LINEBREAK%Es darf diese Runde nicht angreifen."""
        "Ghost":
            text: """<span class="card-restriction">Nur für VCX-100.</span>%LINEBREAK%Equip the <em>Phantom</em> title card to a friendly Attack Shuttle and dock it to this ship.%LINEBREAK%After you execute a maneuver, you may deploy it from your rear guides."""
        "Phantom":
            text: """While you are docked, the <em>Ghost</em> can perform primary weapon attacks from its special firing arc, and, at the end of the Combat phase, it may perform an additional attack with an equipped %TURRET%. If it performs this attack, it cannot attack again this round."""
        "TIE/v1":
            text: """<span class="card-restriction">Nur für TIE Advanced Prototype.</span>%LINEBREAK%After you acquire a target lock, you may perform a free evade action."""
        "Mist Hunter":
            text: """<span class="card-restriction">Nur für G-1A starfighter.</span>%LINEBREAK%Your upgrade bar gains the %BARRELROLL% Upgrade icon.%LINEBREAK%You <strong>must</strong> equip 1 "Tractor Beam" Upgrade card (paying its squad point cost as normal)."""
        "Punishing One":
            text: """<span class="card-restriction">Nur für JumpMaster 5000.</span>%LINEBREAK%Increase your primary weapon value by 1."""
        "Assailer":
            ship: "Korv. der Sturm-Klasse (Heck)"
            name: "Sturmbringer"
            text: """<span class="card-restriction">Nur für Korvetten der <em>Sturm</em>-Klasse (Heck).</span>%LINEBREAK%Sobald du verteidigst und wenn die als Ziel bestimmten Sektion einen Verstärkungsmarker hat, darfst du 1 %FOCUS% in ein %EVADE% ändern."""
        "Instigator":
            ship: "Korv. der Sturm-Klasse (Heck)"
            name: "Hetzer"
            text: """<span class="card-restriction">Nur für Korvetten der <em>Sturm</em>-Klasse (Heck).</span>%LINEBREAK%Nachdem du die Aktion Aufladen durchgeführt hast, lade 1 weiteres Schild wieder auf."""
        "Impetuous":
            ship: "Korv. der Sturm-Klasse (Heck)"
            name: "Ungestüm"
            text: """<span class="card-restriction">Nur für Korvetten der <em>Sturm</em>-Klasse (Heck).</span>%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, der ein feindliches Schiff zerstört hat, darfst du ein Schiff in die Zielerfassung nehmen.."""
        'TIE/x7':
            text: '''<span class="card-restriction">TIE Defender only.</span>%LINEBREAK%Your upgrade bar loses the %CANNON% and %MISSILE% upgrade icons.%LINEBREAK%After executing a 3-, 4-, or 5-speed maneuver, you may assign 1 evade token to your ship.'''
        'TIE/D':
            text: '''<span class="card-restriction">TIE Defender only.</span>%LINEBREAK%Once per round, after you perform an attack with a %CANNON% secondary weapon that costs 3 or fewer squad points, you may perform a primary weapon attack.'''
        'TIE Shuttle':
            text: '''<span class="card-restriction">TIE Bomber only.</span>%LINEBREAK%Your upgrade bar loses all %TORPEDO%, %MISSILE%, and %BOMB% upgrade icons and gains 2 %CREW% upgrade icons.  You cannot equip a %CREW% Upgrade card that costs more than 4 squad points.'''
        'Requiem':
            text: '''%GOZANTIONLY%%LINEBREAK%Sobald du ein Schiff startest, wird es bis zum Ende der Runde behandelt, als hätte es einen Pilotenwert von 8.'''
        'Vector':
            name: "Vektor"
            text: '''%GOZANTIONLY%%LINEBREAK%Nachdem du ein Manöver ausgeführt hast, darfst du bis zu 4 angedockte Schiffe starten (anstatt 2).'''
        'Suppressor':
            name: "Unterdrücker"
            text: '''%GOZANTIONLY%%LINEBREAK%Ein Mal pro Runde darfst du, nachdem du ein feindliches Schiff in die Zielerfassung genommen hast, 1 Fokus-, Ausweich- oder blaue Zielerfassungsmarker von dem Schiff entfernen.'''

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations
