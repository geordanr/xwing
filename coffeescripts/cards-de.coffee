###
    X-Wing Squad Builder 2.0
    Stephen Kim <raithos@gmail.com>
    https://raithos.github.io
    German translation by
    - Patrick Mischke https://github.com/patschke
###

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
    slot:
        "Astromech": "Astromech"
        "Force": "Macht-Fähigkeit"
        "Bomb": "Bomb" # which slot is this? Bombs belong to the device slot, right?
        "Cannon": "Kanone"
        "Crew": "Mannschaft"
        "Missile": "Rakete"
        "Sensor": "Sensor"
        "Torpedo": "Torpedo"
        "Turret": "Geschütz"
        "Hardpoint": "Bewaffnung"
        "Illicit": "Schmuggelware"
        "Configuration": "Konfiguration"
        "Talent": "Talent"
        "Modification": "Modifikation"
        "Gunner": "Bordschütze"
        "Device": "Vorrichtung"
        "Tech": "Tech"
        "Title": "Titel"
    sources: # needed?
        "Second Edition Core Set": "Grundspiel zweite Edition"
        "Rebel Alliance Conversion Kit": "Konvertierungsset „Rebellenallianz“"
        "Galactic Empire Conversion Kit": "Konvertierungsset „Galaktisches Imperium“"
        "Scum and Villainy Conversion Kit": "Konvertierungsset „Abschaum und Kriminelle“"
        "T-65 X-Wing Expansion Pack": "T-65-X-Flügler Erweiterung"
        "BTL-A4 Y-Wing Expansion Pack": "BTL-A4-Y-Flügler Erweiterung"
        "TIE/ln Fighter Expansion Pack": "TIE/ln-Jäger Erweiterung"
        "TIE Advanced x1 Expansion Pack": "TIE-x1-Turbojäger Erweiterung"
        "Slave 1 Expansion Pack": "Sklave 1 Erweiterung"
        "Fang Fighter Expansion Pack": "Fangjäger Erweiterung"
        "Lando's Millennium Falcon Expansion Pack": "Landos Millennium Falke Erweiterung"
        "Saw's Renegades Expansion Pack": "Saws Rebellenmiliz Erweiterung"
        "TIE Reaper Expansion Pack": "TIE-Schnitter Erweiterung"
    ui:
        shipSelectorPlaceholder: "Wähle ein Schiff"
        pilotSelectorPlaceholder: "Wähle einen Piloten"
        upgradePlaceholder: (translator, language, slot) ->
            "Keine #{translator language, 'slot', slot} Aufwertungskarte"
        modificationPlaceholder: "Keine Modifikation"
        titlePlaceholder: "Kein Titel"
        upgradeHeader: (translator, language, slot) ->
            "#{translator language, 'slot', slot} Aufwertungskarte"
        unreleased: "unveröffentlicht"
        epic: "episch"
        limited: "limitiert"
    byCSSSelector:
        # Warnings
        '.unreleased-content-used .translated': 'Diese Staffel verwendet nicht veröffentlicheten Inhalt!'
        '.collection-invalid .translated': 'Du kannst diese Staffel nicht mit deiner Sammlung aufstellen!'
        # Type selector
        '.game-type-selector option[value="standard"]': 'Standard'
        '.game-type-selector option[value="custom"]': 'Benutzerdefiniert'
        '.game-type-selector option[value="Second Edition"]': 'Zweite Edition'
        '.game-type-selector option[value="epic"]': 'Episch'
        '.game-type-selector option[value="team-epic"]': 'Team Episch'
        # Card browser
        '.select2-choice' : '<span>Typ (nach Namen)</span><abbr class="select2-search-choice-close"></abbr>   <div><b></b></div></a>'  # default-option
        '.xwing-card-browser option[value="name"]': 'Name'
        '.xwing-card-browser option[value="source"]': 'Quelle'
        '.xwing-card-browser option[value="type-by-points"]': 'Typ (nach Punkten)'
        '.xwing-card-browser option[value="type-by-name"]': 'Typ (nach Namen)'
        '.xwing-card-browser .translate.select-a-card': 'Wähle eine Karte von der Liste auf der linken Seite.'
        '.xwing-card-browser .translate.sort-cards-by': 'Sortiere Karten nach'
        # Info well
        '.info-well .info-ship td.info-header': 'Schiff'
        '.info-well .info-skill td.info-header': 'Initiative'
        '.info-well .info-actions td.info-header': 'Aktionen'
        '.info-well .info-upgrades td.info-header': 'Aufwertungskarten'
        '.info-well .info-range td.info-header': 'Reichweite'
        # Squadron edit buttons
        '.clear-squad' : 'Neue Staffel'
        '.save-list' : 'Speichern'
        '.save-list-as' : 'Speichern unter…'
        '.delete-list' : 'Löschen'
        '.backend-list-my-squads' : 'Staffel laden'
        '.delete-squad' : 'Löschen'
        '.delete-squad' : 'Laden'
        '.show-standard-squads' : 'Standard'
        '.show-epic-squads' : 'Episch'
        '.show-team-epic-squads' : 'Team Episch'
        '.show-all-squads' : 'Alle'
        '.view-as-text' : '<span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Drucken/Als </span>Text ansehen'
        '.randomize' : 'Zufall!'
        '.randomize-options' : 'Zufallsgenerator Optionen…'
        '.notes-container > span' : 'Staffel Notizen'
        '.choose-obstacles' : 'Hindernisse wählen'
        '.from-xws' : 'Importieren aus XWS-Datei (Beta)'
        '.to-xws' : 'Exporitieren als XWS-Datei (Beta)'
        # New Squadron dialog
        '.discard' : 'Änderungen verwerfen'
        # Log in dialog
        '.login-help' : 'Was ist OAuth?'
        '.oauth-explanation' :
            """<p><a href="http://de.wikipedia.org/wiki/OAuth" target="_blank">OAuth</a> ist ein Authentifizierungsservice, der es dir erlaubt dich auf Webseiten anzumelden, ohne einen Nutzerkonto anlegen zu müssen. Stattdessen wählst du einen Anbieter, bei dem du bereits eine Nutzerkonto hast (z.B. Google oder Facebook), und dieser bestätigt deine Identität. Auf diese Weise kann YASB dich beim nächsten Besuch wiedererkennen. </p>
            <p>Das beste hieran ist, dass du dir nicht ständig neue Nutzernamen und Passwörter überlegen musst. Keine Sorge, YASB sammelt keine persönlichen Daten von diesen Anbietern über dich. Teilweise kann ich nicht verhindern, dass ein Minimum an persönlichen Daten übertragen wird, diese werden ignoriert. Alles was gespeichert wird ist eine Identifikationsnummer, anhand der du beim nächsten Besuch wiedererkannt wirst - und die zu dieser ID gehörenden Staffellisten natürlich.</p>
            <p>Um mehr zu erfahren, schau dir <a href="http://hueniverse.com/oauth/guide/intro/" target="_blank">diese Einführung in OAuth (englisch)</a> an.</p>""" # this translation will remove an "Got it!" button. It would not work, if I just add it here, as the connection to the java-script is lost. 
        '.login-in-progress':"""<em>Die OAuth Anmeldung ist in Arbeit. Bitte beende die Anmeldung bei angegebenen Anbierter über das soeben erstellte Fenster. </em>"""
        # Print/View modal
        '.bbcode-list' : 'Kopiere den BBCode und füge ihn im Forum ein.<textarea></textarea><button class="btn btn-copy">Kopieren</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Kopieren</button>'
        '.vertical-space-checkbox' : """Lasse beim Drucken Platz für Schadens-/Aufwertungskarten <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Farbig drucken <input type="checkbox" class="toggle-color-print" checked="checked" />"""
        '.print-list' : '<i class="fa fa-print"></i>&nbsp;Drucken'
        '.select-simple-view' : 'Einfach'
        '.select-fancy-view' : 'Schick'
        '.close-print-dialog' : 'Schließen'
        # Randomizer options
        '.do-randomize' : 'Auswürfeln!'
        # Top tab bar
        '#browserTab' : 'Kartendatenbank'
        '#aboutTab' : 'Impressum'
        # Obstacles
        '.choose-obstacles' : 'Wähle Hindernisse'
        '.choose-obstacles-description' : 'Wähle bis zu drei Hindernisse, die im Link für externe Programme eingebunden werden. (Dies ist eine Beta-Funktion, aktuell ist es nicht möglich die gewählten Hindernisse im Ausdruck anzuzeigen.)'
        '.coreasteroid0-select' : 'Grundspiel Asteroid 0'
        '.coreasteroid1-select' : 'Grundspiel Asteroid 1'
        '.coreasteroid2-select' : 'Grundspiel Asteroid 2'
        '.coreasteroid3-select' : 'Grundspiel Asteroid 3'
        '.coreasteroid4-select' : 'Grundspiel Asteroid 4'
        '.coreasteroid5-select' : 'Grundspiel Asteroid 5'
        '.yt2400debris0-select' : 'YT2400 Trümmerwolke 0'
        '.yt2400debris1-select' : 'YT2400 Trümmerwolke 1'
        '.yt2400debris2-select' : 'YT2400 Trümmerwolke 2'
        '.vt49decimatordebris0-select' : 'VT49 Trümmerwolke 0'
        '.vt49decimatordebris1-select' : 'VT49 Trümmerwolke 1'
        '.vt49decimatordebris2-select' : 'VT49 Trümmerwolke 2'
        '.core2asteroid0-select' : 'Erwachen der Macht Asteroid 0'
        '.core2asteroid1-select' : 'Erwachen der Macht Asteroid 1'
        '.core2asteroid2-select' : 'Erwachen der Macht Asteroid 2'
        '.core2asteroid3-select' : 'Erwachen der Macht Asteroid 3'
        '.core2asteroid4-select' : 'Erwachen der Macht Asteroid 4'
        '.core2asteroid5-select' : 'Erwachen der Macht Asteroid 5'
        # Collection
        '.collection': '<i class="fa fa-folder-open hidden-phone hidden-tabler"></i>&nbsp;Deine Sammlung'
        '.checkbox-check-collection' : 'Überprüfe Staffeln auf Verfügbarkeit <input class="check-collection" type="checkbox">'

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

    # English names are loaded by default, so no update is needed
    exportObj.ships = basic_cards.ships


    # Rename ships
    exportObj.renameShip 'YT-1300', 'Modifizierter leichter YT-1300-Frachter'
    exportObj.renameShip 'StarViper', 'Angriffsplattform der Sternenviper-Klasse'
    exportObj.renameShip 'Scurrg H-6 Bomber', 'Scurrg-H-6-Bomber'
    exportObj.renameShip 'YT-2400', 'Leichter YT-2400-Frachter'
    exportObj.renameShip 'Auzituck Gunship', 'Auzituck-Kanonenboot'
    exportObj.renameShip 'Kihraxz Fighter', 'Kihraxz-Jäger'
    exportObj.renameShip 'Sheathipede-Class Shuttle', 'Raumfähre der Sheathipede-Klasse'
    exportObj.renameShip 'Quadjumper', 'Quadrijet-Transferschlepper'
    exportObj.renameShip 'Firespray-31', 'Patrouillenboot der Firespray-Klasse'
    exportObj.renameShip 'TIE Fighter', 'TIE/ln-Jäger'
    exportObj.renameShip 'Y-Wing', 'BTL-A4-Y-Flügler'
    exportObj.renameShip 'TIE Advanced', 'TIE-x1-Turbojäger'
    exportObj.renameShip 'Alpha-Class Star Wing', 'Sternflügler der Alpha-Klasse'
    exportObj.renameShip 'U-Wing', 'UT-60D-U-Flügler'
    exportObj.renameShip 'TIE Striker', 'TIE/sk-Stürmer'
    exportObj.renameShip 'B-Wing', 'A/SF-01-B-Flügler'
    exportObj.renameShip 'TIE Defender', 'TIE/D-Abwehrjäger'
    exportObj.renameShip 'TIE Bomber', 'TIE/sa-Bomber'
    exportObj.renameShip 'TIE Punisher', 'TIE/ca-Vergelter'
    exportObj.renameShip 'Aggressor', 'Aggressor-Angriffsjäger'
    exportObj.renameShip 'G-1A Starfighter', 'G-1A Sternenjäger'
    exportObj.renameShip 'VCX-100', 'Leichter VCX-100-Frachter'
    exportObj.renameShip 'YV-666', 'Leichter YV-666-Frachter'
    exportObj.renameShip 'TIE Advanced Prototype', 'TIE-v1-Turbojäger'
    exportObj.renameShip 'Lambda-Class Shuttle', 'T-4A-Raumfähre der Lambda-Klasse'
    exportObj.renameShip 'TIE Phantom', 'TIE/ph-Phantom'
    exportObj.renameShip 'VT-49 Decimator', 'VT-49-Decimator'
    exportObj.renameShip 'TIE Aggressor', 'TIE/ag-Agressor'
    exportObj.renameShip 'K-Wing', 'BTL-S8-K-Flügler'
    exportObj.renameShip 'ARC-170', 'ARC-170-Sternenjäger'
    exportObj.renameShip 'Attack Shuttle', 'Jagdshuttle'
    exportObj.renameShip 'X-Wing', 'T-65-X-Flügler'
    exportObj.renameShip 'HWK-290', 'Leichter HWK-290-Frachter'
    exportObj.renameShip 'A-Wing', 'RZ-1-A-Flügler'
    exportObj.renameShip 'Fang Fighter', 'Fangjäger'
    exportObj.renameShip 'Z-95 Headhunter', 'Z-95-AF4-Kopfjäger'
    exportObj.renameShip 'M12-L Kimogila Fighter', 'M12-L-Kimogila-Jäger'
    exportObj.renameShip 'E-Wing', 'E-Flügler'
    exportObj.renameShip 'TIE Interceptor', 'TIE-Abfangjäger'
    exportObj.renameShip 'Lancer-Class Pursuit Craft', 'Jagdschiff der Lanzen-Klasse'
    exportObj.renameShip 'TIE Reaper', 'TIE-Schnitter'
    exportObj.renameShip 'JumpMaster 5000', 'JumpMaster 5000'
    exportObj.renameShip 'M3-A Interceptor', 'M3-A-Abfangjäger'
    exportObj.renameShip 'Customized YT-1300', 'Modifizierter YT-1300-Frachter'
    exportObj.renameShip 'Escape Craft', 'Fluchtschiff'


    pilot_translations =
        "4-LOM":
           display_name: """4-LOM"""
           # ship: """G-1A Sternenjäger"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt hast, erhalte 1 Berechnungsmarker.%LINEBREAK%Zu Beginn der Endphase darfst du 1 Schiff in Reichweite 0-1 wählen. Falls du das tust, transferiere 1 deiner Stressmarker auf jenes Schiff."""
        "Nashtah Pup":
           display_name: """Nashtahwelpe"""
           # ship: """Z-95-AF4-Kopfjäger"""
           text: """Du kannst nur über eine Notabsetzung abgesetzt werden, und du hast den Namen, die Initiative, die Pilotenfähigkeit und die Schiffs-%CHARGE% der befreundeten, zerstörten <strong>Reißzahn</strong>.%LINEBREAK%<strong>Fluchtschiff:</strong> <strong>Aufbau: </strong>Erfordert die <strong>Reißzahn</strong>. Du <b>musst</b> das Spiel angedockt an der <strong>Reißzahn</strong> beginnen."""
        "AP-5":
           display_name: """AP-5"""
           # ship: """Raumfähre der Sheathipede-Klasse"""
           text: """Solange du koordinierst, falls du ein Schiff mit genau 1 Stressmarker wählst, kann es Aktionen durchführen.%LINEBREAK%<strong>Kommunikationsantennen:</strong> Solange du angedockt bist, erhält dein Trägerschiff %COORDINATE%. Bevor dein Trägerschiff aktiviert wird, darf es eine %COORDINATE%-Aktion durchführen."""
        "Academy Pilot":
           display_name: """Pilot der Akademie"""
           # ship: """TIE/ln-Jäger"""
           text: """<i class=flavor_text>Was Sternenjäger betrifft, setzt das Galaktische Imperium hauptsächlich auf den schnellen und wendigen TIE/ln von Sienar Flottensysteme und lässt ihn in erstaunlicher Stückzahl produzieren.</i>"""
        "Airen Cracken":
           display_name: """Airen Cracken"""
           # ship: """Z-95-AF4-Kopfjäger"""
           text: """Nachdem du einen Angriff durchgeführt hast, darfst du 1 befreundetes Schiff in Reichweite 1 wählen. Jenes Schiff darf eine Aktion durchführen, die es als rot behandelt."""
        "Alpha Squadron Pilot":
           display_name: """Pilot der Alpha-Staffel"""
           # ship: """TIE-Abfangjäger"""
           text: """<i class = flavor_text>Sienar Flottensysteme konzipierte den TIE-Abfangjäger mit vier Laserkanonen an den Tragflächenspitzen. Dadurch ist er seinen Vorgängermodellen waffentechnisch weit überlegen.</i>%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Arvel Crynyd":
           display_name: """Arvel Crynyd"""
           # ship: """RZ-1-A-Flügler"""
           text: """Du kannst Primärangriffe in Reichweite 0 durchführen.%LINEBREAK%Falls du durch Überschneidung mit einem anderen Schiff an einer %BOOST%-Aktion scheitern würdest, handle sie stattdessen so ab, als würdest du ein Manöver teilweise ausführen.%LINEBREAK%<strong>Schwenkbare Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Asajj Ventress":
           display_name: """Asajj Ventress"""
           # ship: """Jagdschiff der Lanzen-Klasse"""
           text: """Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in deinem %SINGLETURRETARC%&nbsp;in Reichweite 0-2 wählen und 1&nbsp;%FORCE%&nbsp;ausgeben. Falls du das tust, erhält jenes Schiff 1 Stressmarker, es sei denn, es entfernt 1 grünen Marker."""
        "Autopilot Drone":
           display_name: """Autopilot-Drone"""
           # ship: """Fluchtschiff"""
           text: """<i class = flavor_text>Manchmal sind Herstellerwarnungen dazu gemacht, um sie zu ignorieren.</i>%LINEBREAK%<strong>Manipulierte Energiezellen:</strong> Während der Systemphase, falls du nicht angedockt bist, verliere 1&nbsp;%CHARGE%. Am Ende der Aktivierungsphase, falls du 0 %CHARGE% hast, wirst du zerstört. Bevor du entfernt wirst, erleidet jedes Schiff in Reichweite 0-1 1&nbsp;%CRIT%-Schaden."""
        "Bandit Squadron Pilot":
           display_name: """Pilot der Banditen-Staffel"""
           # ship: """Z-95-AF4-Kopfjäger"""
           text: """<i class = flavor_text>Der Z-95-Kopfjäger ist ein direkter Vorläufer von Incoms Vorzeigemodell, dem T-65-X-Flügler. Obwohl er nach modernen Standards als veraltet gilt, ist er nach wie vor ein vielseitiger und schlagkräftiger Sternjäger.</i>"""
        "Baron of the Empire":
           display_name: """Imperialer Baron"""
           # ship: """TIE-v1-Turbojäger"""
           text: """<i class = flavor_text>Sienars TIE-v1-Turbojäger war eine bahnbrechende Entwicklung auf dem Gebiet der Sternenjäger-Technologie. Er verfügt über stärkere Triebwerke, einen Raketenwerfer sowie klappbare S-Flügel.</i>"""
        "Benthic Two-Tubes":
           display_name: """Benthic Two Tubes"""
           # ship: """UT-60D-U-Flügler"""
           text: """Nachdem du eine %FOCUS%-Aktion durchgeführt hast, darfst du 1 deiner Fokusmarker auf ein befreundetes Schiff in Reichweite 1-2 transferieren."""
        "Biggs Darklighter":
           display_name: """Biggs Darklighter"""
           # ship: """T-65-X-Flügler"""
           text: """Solange ein anderes befreundetes Schiff in Reichweite 0-1 verteidigt, vor dem Schritt „Ergebnisse neutralisieren“, falls du im Angriffswinkel bist, darfst du 1&nbsp;%HIT%- oder %CRIT%-Schaden erleiden, um 1&nbsp;passendes Ergebnis zu negieren. """
        "Binayre Pirate":
           display_name: """Binayre-Pirat"""
           # ship: """Z-95-AF4-Kopfjäger"""
           text: """<i class = flavor_text>Kath Scarlets Piraten und Schmuggler haben ihre Basis auf den Zwillingswelten Talus und Tralus errichtet. Selbst in Verbrecherkreisen gelten sie als ausgesprochen launenhaft und verrucht.</i>"""
        "Black Squadron Ace":
           display_name: """Fliegerass der schwarzen Staffel"""
           # ship: """TIE/ln-Jäger"""
           text: """<i class = flavor_text>In der Schlacht von Yavin begleiteten die Elite­-piloten der schwarzen Staffel mit ihren TIE/ln-Jägern Darth Vader auf seinem vernichtenden Schlag gegen die Rebellion.</i>"""
        "Black Squadron Scout":
           display_name: """Aufklärer der schwarzen Staffel"""
           # ship: """TIE/sk-Stürmer"""
           text: """<i class = flavor_text>Schwenkbare Tragflächen verleihen dem schwerbewaffneten Atmosphärenflieger zusätzliche Geschwindigkeit und Manövrierbarkeit.</i>%LINEBREAK% <strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1&nbsp;%BANKLEFT%]-, [1&nbsp;%STRAIGHT%]- oder [1&nbsp;%BANKRIGHT%]-Manöver ausführen."""
        "Black Sun Ace":
           display_name: """Fliegerass der Schwarzen Sonne"""
           # ship: """Kihraxz-Jäger"""
           text: """<i class = flavor_text>Der Kihraxz-Angriffsjäger wurde eigens für das Verbrechersyndikat Schwarze Sonne entwickelt, dessen hochbezahlte Fliegerasse ein leistungsstarkes, wendiges Schiff verlangten, das ihren Fähigkeiten entsprach.</i>"""
        "Black Sun Assassin":
           display_name: """Attentäter der """
           # ship: """Angriffsplattform der Sternenviper-Klasse"""
           text: """<i class = flavor_text>Ein Attentat kann mit einem Schuss im Dunkeln oder mit einem vergifteten Getränk verübt werden. Aussagekräftiger ist jedoch eine brennende Raumfähre, die hilflos vom Himmel trudelt. </i>%LINEBREAK%<strong>Mikrodüsen:</strong> Solange du eine Fassrolle durchführst, <b>musst</b> du die %BANKLEFT%- oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Black Sun Enforcer":
           display_name: """Vollstrecker der """
           # ship: """Angriffsplattform der Sternenviper-Klasse"""
           text: """<i class = flavor_text>Prinz Xizor persönlich entwickelte die Angriffsplattform der SternenViper-Klasse in Zusammenarbeit mit MandalMotors und schuf so einen der vorzüglichsten Sternenjäger der Galaxis. </i>%LINEBREAK%<strong>Mikrodüsen:</strong> Solange du eine Fassrolle durchführst, <b>musst</b> du die %BANKLEFT%- oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Black Sun Soldier":
           display_name: """Kampfpilot der Schwarzen Sonne"""
           # ship: """Z-95-AF4-Kopfjäger"""
           text: """<i class = flavor_text>Das große und einflussreiche Verbrechersyndikat Schwarze Sonne hat immer Bedarf an guten Piloten, die bei der Wahl ihres Arbeitgebers nicht allzu kritisch sind. </i>"""
        "Blade Squadron Veteran":
           display_name: """Veteran der Klingen-Staffel"""
           # ship: """A/SF-01-B-Flügler"""
           text: """<i class = flavor_text>Das Cockpit des B-Flüglers ist in einen einzigartigen Gyrostabilisator eingebunden, der den Piloten während des gesamten Fluges in aufrechter Position hält.</i>"""
        "Blue Squadron Escort":
           display_name: """Eskorte der blauen Staffel"""
           # ship: """T-65-X-Flügler"""
           text: """<i class = flavor_text>Der T-65-X-Flügler aus dem Hause Incom erwies sich schnell als eine der effektivsten und vielseitigsten Jagdmaschinen der Galaxis - und als wahrer Segen für die Rebellion.</i>"""
        "Blue Squadron Pilot":
           display_name: """Pilot der blauen Staffel"""
           # ship: """A/SF-01-B-Flügler"""
           text: """<i class = flavor_text>Seine schweren Waffensysteme und unverwüstlichen Schilde machen den B-Flügler zu einer der innovativsten Jagdmaschinen der Allianz.</i>"""
        "Blue Squadron Scout":
           display_name: """Aufklärer der blauen """
           # ship: """UT-60D-U-Flügler"""
           text: """<i class = flavor_text>Der UT-60D-U-Flügler deckt den Bedarf der Rebellion an schnellen, unverwüstlichen Truppentransportern. Meistens wird er eingesetzt, um Soldaten im Schutz der Dunkelheit oder inmitten eines tobenden Gefechts an ihren Einsatzort zu befördern. </i>"""
        "Boba Fett":
           display_name: """Boba Fett"""
           # ship: """Patrouillenboot der Firespray-Klasse"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du für jedes feindliche Schiff in Reichweite 0-1 1 deiner Würfel neu werfen."""
        "Bodhi Rook":
           display_name: """Bodhi Rook"""
           # ship: """UT-60D-U-Flügler"""
           text: """Befreundete Schiffe können Objekte in Reichweite 0-3 eines beliebigen befreundeten Schiffes als Ziele erfassen."""
        "Bossk":
           display_name: """Bossk"""
           # ship: """Leichter YV-666-Frachter"""
           text: """Solange du einen Primärangriff durchführst, nach dem Schritt „Ergebnisse neutralisieren“, darfst du 1&nbsp;%CRIT%-Ergebnis ausgeben, um 2&nbsp;%HIT%-Ergebnisse hinzuzufügen."""
        "Bounty Hunter":
           display_name: """Kopfgeldjäger"""
           # ship: """Patrouillenboot der Firespray-Klasse"""
           text: """<i class = flavor_text>Das Patrouillenboot der Firespray-Klasse ist berüchtigt, weil es mit den Kopfgeldjägern Jango Fett und Boba Fett assoziiert wird, die ihr Schiff mit unzähligen tödlichen Waffen gespickt hatten.</i>"""
        "Braylen Stramm":
           display_name: """Braylen Stramm"""
           # ship: """A/SF-01-B-Flügler"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du bis zu 2&nbsp;deiner Würfel neu werfen."""
        "Captain Feroph":
           display_name: """Captain Feroph"""
           # ship: """TIE-Schnitter"""
           text: """Solange du verteidigst, falls der Angreifer keine grünen Marker hat, darfst du 1 deiner Leerseiten- oder %FOCUS%-Ergebnisse in ein %EVADE%-Ergebnis ändern.%LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1&nbsp;%BANKLEFT%]-, [1&nbsp;%STRAIGHT%]- oder [1&nbsp;%BANKRIGHT%]-Manöver ausführen."""
        "Captain Jonus":
           display_name: """Captain Jonus"""
           # ship: """TIE/sa-Bomber"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-1 einen %TORPEDO%- oder %MISSILE%-Angriff durchführt, darf jenes Schiff bis zu 2&nbsp;Angriffswürfel neu werfen. %LINEBREAK%<strong>Wendiger Bomber:</strong> Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Captain Jostero":
           display_name: """Captain Jostero"""
           # ship: """Kihraxz-Jäger"""
           text: """Nachdem ein feindliches Schiff Schaden erlitten hat, falls es nicht verteidigt, darfst du einen Bonusangriff gegen jenes Schiff durchführen."""
        "Captain Kagi":
           display_name: """Captain Kagi"""
           # ship: """T-4A-Raumfähre der Lambda-Klasse"""
           text: """Zu Beginn der Kampfphase darfst du 1 oder mehrere befreundete Schiffe in Reichweite 0-3 wählen. Falls du das tust, transferiere alle feindlichen Zielerfassungsmarker von den gewählten Schiffen auf dich."""
        "Captain Nym":
           display_name: """Captain Nym"""
           # ship: """Scurrg-H-6-Bomber"""
           text: """Bevor eine befreundete Bombe oder Mine detonieren würde, darfst du 1&nbsp;%CHARGE% ausgeben, um die Detonation zu verhindern.%LINEBREAK% Solange du gegen einen Angriff verteidigst, der durch eine Bombe oder Mine versperrt ist, wirf 1&nbsp;zusätzlichen Verteidigungswürfel."""
        "Captain Oicunn":
           display_name: """Captain Oicunn"""
           # ship: """VT-49-Decimator"""
           text: """Du kannst Primärangriffe in Reichweite&nbsp;0 durchführen."""
        "Captain Rex":
           display_name: """Captain Rex"""
           # ship: """TIE/ln-Jäger"""
           text: """Nachdem du einen Angriff durchgeführt hast, ordne dem Verteidiger den Zustand <strong>Sperrfeuer</strong> zu."""
        "Cartel Executioner":
           display_name: """Killer des Kartells"""
           # ship: """M12-L-Kimogila-Jäger"""
           text: """<i class = flavor_text>Viele erfahrene Piloten, die im Dienst der huttischen Kajidics und anderer Verbrecherorganisationen stehen, entscheiden sich für den M12-L-Kimogila-Jäger aufgrund seiner beträchtlichen Feuerkraft und seines furchteinflößenden Rufes.</i>%LINEBREAK% <strong>Todsicherer Treffer:</strong> Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, können Verteidigungswürfel nicht unter Verwendung von grünen Markern modifiziert werden."""
        "Cartel Marauder":
           display_name: """Kartell-Marodeur"""
           # ship: """Kihraxz-Jäger"""
           text: """<i class = flavor_text>Der vielseitige Kihraxz ist dem beliebten X-Flügler von Incom nachempfunden und verfügt über eine Reihe von Modifikationspaketen, mit denen er für verschiedenste Aufgabenbereiche angepasst werden kann.</i>"""
        "Cartel Spacer":
           display_name: """Raumfahrer des Kartells"""
           # ship: """M3-A-Abfangjäger"""
           text: """<i class = flavor_text>Der M3-A-„Scyk“-Abfangjäger von MandalMotors wurde in großer Stückzahl vom Hutt-Kartell und den Car'das-Schmugglern angeschafft. Grund dafür waren der günstige Einstiegspreis und die vielen Ausstattungsoptionen des Jägers. </i>%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1&nbsp;%CANNON%-,&nbsp;%TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           # ship: """UT-60D-U-Flügler"""
           text: """Zu Beginn der Aktivierungsphase darfst du 1 befreundetes Schiff in Reichweite 1-3 wählen. Falls du das tust, entfernt jenes Schiff 1 Stressmarker."""
        "Cavern Angels Zealot":
           display_name: """Fanatiker der Sturmengel"""
           # ship: """T-65-X-Flügler"""
           text: """<i class = flavor_text>Anders als die meisten Widerstandszellen sind Saw Gerreras Partisanen bereit, bis zum Äußersten zu gehen, um die Pläne des Imperiums zu durchkreuzen. Von Geonosis bis Jedha liefern sie sich blutige Auseinandersetzungen mit der imperialen Obrigkeit.</i>"""
        "Chewbacca":
           display_name: """Chewbacca"""
           # ship: """Modifizierter leichter YT-1300-Frachter"""
           text: """Bevor dir eine offene Schadenskarte zugeteilt werden würde, darfst du 1&nbsp;%CHARGE% ausgeben, um die Karte stattdessen verdeckt zugeteilt zu bekommen."""
        "Colonel Jendon":
           display_name: """Colonel Jendon"""
           # ship: """T-4A-Raumfähre der Lambda-Klasse"""
           text: """Zu Beginn der Aktivierungsphase darfst du 1&nbsp;%CHARGE% ausgeben. Falls du das tust, <b>müssen</b> befreundete Schiffe, solange sie in dieser Runde Ziele erfassen, Ziele jenseits von Reichweite 3 erfassen, anstatt in Reichweite 0-3."""
        "Colonel Vessery":
           display_name: """Colonel Vessery"""
           # ship: """TIE/D-Abwehrjäger"""
           text: """Solange du einen Angriff gegen ein erfasstes Schiff durchführst, nachdem du Angriffswürfel geworfen hast, darfst du den Verteidiger als Ziel erfassen.%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Constable Zuvio":
           display_name: """Constable Zuvio"""
           # ship: """Quadrijet-Transferschlepper"""
           text: """Falls du ein Gerät abwerfen würdest, darfst du es stattdessen unter Verwendung der [1&nbsp;%STRAIGHT%]-Schablone starten.%LINEBREAK%<strong>Schlepperstrahl:</strong> <strong>Aktion:</strong> Wähle ein Schiff in deinem %FRONTARC% in Reichweite 1. Jenes Schiff erhält 1 Fangstrahlmarker oder 2&nbsp;Fangstrahlmarker, falls es in deinem %BULLSEYEARC%&nbsp;in Reichweite 1 ist."""
        "Contracted Scout":
           display_name: """Angeheuerter Kundschafter"""
           # ship: """JumpMaster 5000"""
           text: """<i class = flavor_text>Der leichtbewaffnete JumpMaster 5000 ist für Langstreckenaufklärung und die Erschließung neuer Hyperraumrouten vorgesehen. Häufig wird er mit umfangreichen Ausstattungspaketen nachgerüstet.</i>"""
        "Corran Horn":
           display_name: """Corran Horn"""
           # ship: """E-Flügler"""
           text: """Bei Initiative 0 darfst du einen Bonus-Primärangriff gegen ein feindliches Schiff in deinem %BULLSEYEARC% durchführen. Falls du das tust, erhalte zu Beginn der nächsten Planungsphase 1 Entwaffnet-Marker.%LINEBREAK%<strong>Experimentelle Scanner:</strong> Du kannst Ziele jenseits von Reichweite 3 erfassen. Du kannst keine Ziele in Reichweite 1 erfassen."""
        "Countess Ryad":
           display_name: """Gräfin Ryad"""
           # ship: """TIE/D-Abwehrjäger"""
           text: """Solange du ein %STRAIGHT%-Manöver ausführen würdest, darfst du die Schwierigkeit des Manövers erhöhen. Falls du das tust, führe es stattdessen als %KTURN%-Manöver aus.%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Crymorah Goon":
           display_name: """Verbrecher der Crymorah
"""
           # ship: """BTL-A4-Y-Flügler"""
           text: """<i class = flavor_text>Mit seinen schweren Hüllenplatten, starken Schilden und schlagkräftigen Geschützen ist der Y-Flügler zwar alles andere als behände, dafür eignet er sich hervorragend als Patrouillenschiff.</i>"""
        "Cutlass Squadron Pilot":
           display_name: """Pilot der Entermesser-Staffel"""
           # ship: """TIE/ca-Vergelter"""
           text: """<i class = flavor_text>Das Konzept des TIE-Vergelters basiert auf dem erfolgreichen TIE-Bomber und ergänzt ihn um Schilde, einen zweiten Bombenabwurfschacht sowie drei weitere Munitionskapseln, die jeweils mit einem Zwillings-Ionenantrieb ausgerüstet sind.</i>"""
        "Dace Bonearm":
           display_name: """Dace Bonearm"""
           # ship: """Leichter HWK-290-Frachter"""
           text: """Nachdem ein feindliches Schiff in Reichweite 0-3 mindestens 1 Ionenmarker bekommen hat, darfst du 3&nbsp;%CHARGE% ausgeben. Falls du das tust, erhält jenes Schiff 2&nbsp;zusätzliche Ionenmarker."""
        "Dalan Oberos (StarViper)":
           display_name: """Dalan Oberos (StarViper)"""
           # ship: """Angriffsplattform der Sternenviper-Klasse"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1&nbsp;Stressmarker erhalten, um dein Schiff um 90° zu drehen.%LINEBREAK%<strong>Mikrodüsen:</strong> Solange du eine Fassrolle durchführst, <b>musst</b> du die %BANKLEFT%- oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Dalan Oberos":
           display_name: """Dalan Oberos"""
           # ship: """M12-L-Kimogila-Jäger"""
           text: """Zu Beginn der Kampfphase darfst du 1&nbsp;Schiff, das Schilde hat, in deinem %BULLSEYEARC%&nbsp;wählen und 1&nbsp;%CHARGE% ausgeben. Falls du das tust, verliert jenes Schiff 1 Schild und du stellst 1&nbsp;Schild wieder her.%LINEBREAK%<strong>Todsicherer Treffer:</strong> Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, können Verteidigungswürfel nicht unter Verwendung von grünen Markern modifiziert werden."""
        "Darth Vader":
           display_name: """Darth Vader"""
           # ship: """TIE-x1-Turbojäger"""
           text: """Nachdem du eine Aktion durchgeführt hast, darfst du 1&nbsp;%FORCE% ausgeben, um eine Aktion durchzuführen.%LINEBREAK%<strong>Verbesserter Zielcomputer:</strong> Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1&nbsp;zusätzlichen Angriffswürfel und ändere 1&nbsp;%HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Dash Rendar":
           display_name: """Dash Rendar"""
           # ship: """Leichter YT-2400-Frachter"""
           text: """Solange du dich bewegst, ignorierst du Hindernisse.%LINEBREAK%<strong>Toter Winkel:</strong> Solange du einen Primärangriff in Reichweite 0-1 durchführst, wende den Bonus für Reichweite 0-1 nicht an und wirf 1 Angriffswürfel weniger."""
        "Del Meeko":
           display_name: """Del Meeko"""
           # ship: """TIE/ln-Jäger"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 gegen einen beschädigten Angreifer verteidigt, darf der Verteidiger 1&nbsp;Verteidigungswürfel neu werfen."""
        "Delta Squadron Pilot":
           display_name: """Pilot der Delta-Staffel"""
           # ship: """TIE/D-Abwehrjäger"""
           text: """<i class = flavor_text>Der TIE-Abwehrjäger ist nicht nur mit Raketenwerfern und sechs Kanonen an den Tragflächenspitzen, sondern auch mit Deflektorschilden und einem Hyperantrieb ausgestattet.</i>%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Dengar":
           display_name: """Dengar"""
           # ship: """JumpMaster 5000"""
           text: """Nachdem du verteidigt hast, falls der Angreifer in deinem %FRONTARC% ist, darfst du 1&nbsp;%CHARGE% ausgeben, um einen Bonusangriff gegen den Angreifer durchzuführen."""
        "Drea Renthal":
           display_name: """Drea Renthal"""
           # ship: """BTL-A4-Y-Flügler"""
           text: """Solange ein befreundetes nicht-limitiertes Schiff einen Angriff durchführt, falls der Verteidiger in deinem Feuerwinkel ist, darf der Angreifer 1 Angriffswürfel neu werfen."""
        "Edrio Two-Tubes":
           display_name: """Edrio Two Tubes"""
           # ship: """T-65-X-Flügler"""
           text: """Bevor du aktiviert wirst, falls du fokussiert bist, darfst du eine Aktion durchführen."""
        "Emon Azzameen":
           display_name: """Emon Azzameen"""
           # ship: """Patrouillenboot der Firespray-Klasse"""
           text: """Falls du unter Verwendung der [1&nbsp;%STRAIGHT%]-Schablone ein Gerät abwerfen würdest, darfst du stattdessen die [3&nbsp;%TURNLEFT%]-, [3&nbsp;%STRAIGHT%]-&nbsp;oder [3&nbsp;%TURNRIGHT%]-Schablone verwenden."""
        "Esege Tuketu":
           display_name: """Esege Tuketu"""
           # ship: """BTL-S8-K-Flügler"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 verteidigt oder einen Angriff durchführt, darf es deine Fokusmarker ausgeben, als ob jenes Schiff sie hätte."""
        "Evaan Verlaine":
           display_name: """Evaan Verlaine"""
           # ship: """BTL-A4-Y-Flügler"""
           text: """Zu Beginn der Kampfphase darfst du 1 Fokusmarker ausgeben, um ein befreundetes Schiff in Reichweite 0-1 zu wählen. Falls du das tust, wirft jenes Schiff bis zum Ende der Runde 1&nbsp;zusätzlichen Verteidigungswürfel, solange es verteidigt."""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           # ship: """Jagdshuttle"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du 1&nbsp;%FORCE% ausgeben, um bis zu 2 deiner %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern.%LINEBREAK%<strong>Geladen und entsichert:</strong> Solange du angedockt bist, nachdem dein Trägerschiff einen %FRONTARC%-Primärangriff oder %TURRET%-Angriff durchgeführt hat, darf es einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Ezra Bridger (Sheathipede)":
           display_name: """Ezra Bridger (Sheathipede)"""
           # ship: """Raumfähre der Sheathipede-Klasse"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du 1&nbsp;%FORCE% ausgeben, um bis zu 2 deiner %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern. %LINEBREAK%<strong>Kommunikationsantennen:</strong> Solange du angedockt bist, erhält dein Trägerschiff %COORDINATE%. Bevor dein Trägerschiff aktiviert wird, darf es eine %COORDINATE%-Aktion durchführen."""
        "Ezra Bridger (TIE Fighter)":
           display_name: """Ezra Bridger (TIE Fighter)"""
           # ship: """TIE/ln-Jäger"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du 1&nbsp;%FORCE% ausgeben, um bis zu 2 deiner %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern."""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           # ship: """Fangjäger"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls die Angriffsreichweite 1 ist, darfst du 1&nbsp;zusätzlichen Würfel werfen.%LINEBREAK%<strong>Concordianischer Wirbel:</strong> Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im%FRONTARC%&nbsp;des Angreifers bist, ändere 1&nbsp;Ergebnis in ein %EVADE%-Ergebnis."""
        "Fenn Rau (Sheathipede)":
           display_name: """Fenn Rau (Sheathipede)"""
           # ship: """Raumfähre der Sheathipede-Klasse"""
           text: """Nachdem ein feindliches Schiff in deinem Feuerwinkel begonnen hat zu kämpfen, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten. Falls du das tust, kann jenes Schiff keine Marker ausgeben, um Würfel zu modifizieren, solange es während dieser Phase einen Angriff durchführt.%LINEBREAK%<strong>Kommunikationsantennen:</strong> Solange du angedockt bist, erhält dein Trägerschiff %COORDINATE%. Bevor dein Trägerschiff aktiviert wird, darf es eine %COORDINATE%-Aktion durchführen."""
        "Freighter Captain":
           display_name: """Frachtercaptain"""
           # ship: """Modifizierter YT-1300-Frachter"""
           text: """<i class = flavor_text>Viele Raumfahrer bestreiten ihr Leben, indem sie den Outer Rim bereisen, wo der Unterschied zwischen Schmugglern und seriösen Händlern oft kaum zu erkennen ist. Am Rande der Zivilisation sind Käufer äußerst selten, daher sollte man nicht nach der Herkunft der Ware fragen, solange der Preis niedrig genug ist. </i>"""
        "Gamma Squadron Ace":
           display_name: """Fliegerass der Gamma-Staffel"""
           # ship: """TIE/sa-Bomber"""
           text: """<i class = flavor_text>Der TIE-Bomber ist zwar nicht so schnell und wendig wie ein TIE/ln, dafür besitzt er genügend Feuerkraft, um praktisch jedes feindliche Ziel auszulöschen. </i>%LINEBREAK%<strong>Wendiger Bomber:</strong> Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Gand Findsman":
           display_name: """Gand-Finder"""
           # ship: """G-1A Sternenjäger"""
           text: """<i class = flavor_text>Die legendären Finder der Gand verehren den Nebelschleier, der ihren Heimatplaneten umhüllt. Um ihre Beute aufzuspüren, deuten sie mystische Zeichen und Visionen.</i>"""
        "Garven Dreis (X-Wing)":
           display_name: """Garven Dreis (X-Wing)"""
           # ship: """T-65-X-Flügler"""
           text: """Nachdem du einen Fokusmarker ausgegeben hast, darfst du 1&nbsp;befreundetes Schiff in Reichweite 1-3 wählen. Jenes Schiff erhält 1 Fokusmarker."""
        "Garven Dreis":
           display_name: """Garven Dreis"""
           # ship: """ARC-170-Sternenjäger"""
           text: """Nachdem du einen Fokusmarker ausgegeben hast, darfst du 1&nbsp;befreundetes Schiff in Reichweite 1-3 wählen. Jenes Schiff erhält 1 Fokusmarker."""
        "Gavin Darklighter":
           display_name: """Gavin Darklighter"""
           # ship: """E-Flügler"""
           text: """Solange ein befreundetes Schiff einen Angriff durchführt, falls der Verteidiger in deinem %FRONTARC% ist, darf der Angreifer 1&nbsp;%HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern.%LINEBREAK%<strong>Experimentelle Scanner:</strong> Du kannst Ziele jenseits von Reichweite 3 erfassen. Du kannst keine Ziele in Reichweite 1 erfassen."""
        "Genesis Red":
           display_name: """Genesis Red"""
           # ship: """M3-A-Abfangjäger"""
           text: """Nachdem du ein Ziel erfasst hast, musst du alle deine Fokus- und Ausweichmarker entfernen. Dann erhalte dieselbe Anzahl an Fokus- und Ausweichmarkern, die das erfasste Schiff hat.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1&nbsp;%CANNON%-,&nbsp;%TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Gideon Hask":
           display_name: """Gideon Hask"""
           # ship: """TIE/ln-Jäger"""
           text: """Solange du einen Angriff gegen einen beschädigten Verteidiger durchführst, wirf 1 zusätzlichen Angriffswürfel."""
        "Gold Squadron Veteran":
           display_name: """Veteran der Gold-Staffel"""
           # ship: """BTL-A4-Y-Flügler"""
           text: """<i class = flavor_text>Unter dem Kommando von Jon „Dutch“ Vander spielte die Gold-Staffel eine Schlüsselrolle bei den Schlachten von Scarif und Yavin.</i>"""
        "Grand Inquisitor":
           display_name: """Großinquisitor"""
           # ship: """TIE-v1-Turbojäger"""
           text: """Solange du in Angriffsreichweite 1 verteidigst, darfst du 1&nbsp;%FORCE% ausgeben, um den Bonus für Reichweite 1 zu verhindern.%LINEBREAK%Solange du einen Angriff gegen einen Verteidiger in Angriffsreichweite 2-3 durchführst, darfst du 1&nbsp;%FORCE% ausgeben, um den Bonus für Reichweite 1 anzuwenden."""
        "Gray Squadron Bomber":
           display_name: """Bomber der grauen Staffel"""
           # ship: """BTL-A4-Y-Flügler"""
           text: """<i class = flavor_text>Obwohl er beim Imperium schon lange ausgemustert ist, bleibt der Y-Flügler aufgrund seiner Robustheit, Zuverlässigkeit und schweren Bewaffnung weiterhin ein fester Bestandteil der Rebellenflotte.</i>"""
        "Graz":
           display_name: """Graz"""
           # ship: """Kihraxz-Jäger"""
           text: """Solange du verteidigst, falls du hinter dem Angreifer bist, wirf 1&nbsp;zusätzlichen Verteidigungswürfel.%LINEBREAK%Solange du einen Angriff durchführst, falls du hinter dem Angreifer bist, wirf 1&nbsp;zusätzlichen Angriffswürfel."""
        "Green Squadron Pilot":
           display_name: """Pilot der grünen Staffel"""
           # ship: """RZ-1-A-Flügler"""
           text: """<i class = flavor_text>Aufgrund seiner empfindlichen Steuerung und extremen Wendigkeit war das Cockpit des A-Flüglers nur für besonders begabte Piloten bestimmt.</i>%LINEBREAK%<strong>Schwenkbare Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Guri":
           display_name: """Guri"""
           # ship: """Angriffsplattform der Sternenviper-Klasse"""
           text: """Zu Beginn der Kampfphase, falls mindestens 1 feindliches Schiff in Reichweite 0-1 ist, darfst du 1&nbsp;Fokusmarker erhalten.%LINEBREAK%<strong>Mikrodüsen:</strong> Solange du eine Fassrolle durchführst, <b>musst</b> du die %BANKLEFT%- oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Han Solo":
           display_name: """Han Solo"""
           # ship: """Modifizierter YT-1300-Frachter"""
           text: """Solange du verteidigst oder einen Primärangriff durchführst, falls der Angriff durch ein Hindernis versperrt ist, darfst du 1 zusätzlichen Würfel werfen."""
        "Han Solo (Scum)":
           display_name: """Han Solo (Scum)"""
           # ship: """Modifizierter leichter YT-1300-Frachter"""
           text: """Nachdem du Würfel geworfen hast, falls du in Reichweite 0-1 eines Hindernisses bist, darfst du alle deine Würfel neu werfen. Dies zählt für alle anderen Effekte nicht als Neuwerfen."""
        "Heff Tobber":
           display_name: """Heff Tobber"""
           # ship: """UT-60D-U-Flügler"""
           text: """Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, falls es in Reichweite 0 ist, darfst du eine Aktion durchführen."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           # ship: """Jagdshuttle"""
           text: """Nachdem du ein rotes oder blaues Manöver aufgedeckt hast, darfst du dein Rad auf ein anderes Manöver derselben Schwierigkeit einstellen.%LINEBREAK%<strong>Geladen und entsichert:</strong> Solange du angedockt bist, nachdem dein Trägerschiff einen %FRONTARC%-Primärangriff oder %TURRET%-Angriff durchgeführt hat, darf es einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Hera Syndulla (VCX-100)":
           display_name: """Hera Syndulla (VCX-100)"""
           # ship: """Leichter VCX-100-Frachter"""
           text: """Nachdem du ein rotes oder blaues Manöver aufgedeckt hast, darfst du dein Rad auf ein anderes Manöver derselben Schwierigkeit einstellen.%LINEBREAK%<strong>Heckgeschütz:</strong> Solange du ein angedocktes Schiff hast, hast du eine %REARARC%-Primärwaffe mit einem Angriffswert in Höhe des Angriffswertes der %FRONTARC%-Primärwaffe deines angedockten Schiffes."""
        "Hired Gun":
           display_name: """Söldner"""
           # ship: """BTL-A4-Y-Flügler"""
           text: """<i class = flavor_text>Wer mit imperialen Credits winkt, kann auf eine große, wenn auch nicht sonderlich vertrauenswürdige Helferschar zählen.</i>"""
        "Horton Salm":
           display_name: """Horton Salm"""
           # ship: """BTL-A4-Y-Flügler"""
           text: """Solange du einen Angriff durchführst, darfst du für jedes andere befreundete Schiff in Reichweite 0-1 des Verteidigers 1 Angriffswürfel neu werfen."""
        "IG-88A":
           display_name: """IG-88A"""
           # ship: """Aggressor-Angriffsjäger"""
           text: """Zu Beginn der Kampfphase darfst du 1&nbsp;befreundetes Schiff mit %CALCULATE% in seiner Aufwertungsleiste in Reichweite 1-3 wählen. Falls du das tust, transferiere 1&nbsp;deiner Berechnungsmarker auf es. %LINEBREAK%<strong>Hochentwickeltes Droidengehirn:</strong> Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "IG-88B":
           display_name: """IG-88B"""
           # ship: """Aggressor-Angriffsjäger"""
           text: """Nachdem du einen Angriff durchgeführt hast, der verfehlt hat, darfst du einen Bonus-%CANNON%-Angriff durchführen.%LINEBREAK%<strong>Hochentwickeltes Droidengehirn:</strong> Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "IG-88C":
           display_name: """IG-88C"""
           # ship: """Aggressor-Angriffsjäger"""
           text: """Nachdem du eine %BOOST%-Aktion durchgeführt hast, darfst du eine %EVADE%-Aktion durchführen.%LINEBREAK%<strong>Hochentwickeltes Droidengehirn:</strong> Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "IG-88D":
           display_name: """IG-88D"""
           # ship: """Aggressor-Angriffsjäger"""
           text: """Solange du einen Segnor-Looping (%SLOOPLEFT% oder %SLOOPRIGHT%)ausführst, darfst du stattdessen eine andere Schablone derselben Geschwindigkeit verwenden: entweder die Wende (%TURNLEFT% oder %TURNRIGHT%) mit gleicher Orientierung oder die Gerade (%STRAIGHT%).%LINEBREAK%<strong>Hochentwickeltes Droidengehirn:</strong> Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "Ibtisam":
           display_name: """Ibtisam"""
           # ship: """ARC-170-Sternenjäger"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, falls du gestresst bist, darfst du 1 Angriffswürfel werfen. Bei einem %HIT%- oder %CRIT%-Ergebnis entferne 1&nbsp;Stressmarker."""
        "Iden Versio":
           display_name: """Iden Versio"""
           # ship: """TIE/ln-Jäger"""
           text: """Bevor ein befreundeter TIE/ln-Jäger in Reichweite 0-1 1 oder mehr Schaden erleiden würde, darfst du 1&nbsp;%CHARGE% ausgeben. Falls du das tust, verhindere jenen Schaden."""
        "Imdaar Test Pilot":
           display_name: """Testpilot von Imdaar"""
           # ship: """TIE/ph-Phantom"""
           text: """<i class = flavor_text>In einem geheimen Forschungsprojekt auf dem Mond Imdaar Alpha wurde entwickelt, was viele für unmöglich gehalten hatten: der TIE-Phantom, ein kleiner Sternenjäger mit Tarnvorrichtung.</i>%LINEBREAK%<strong>Stygium-Gitter:</strong> Nachdem du dich enttarnt hast, darfst du eine %EVADE%-Aktion durchführen. Zu Beginn der Endphase darfst du 1 Ausweichmarker ausgeben, um 1 Tarnungsmarker zu erhalten."""
        "Inaldra":
           display_name: """Inaldra"""
           # ship: """M3-A-Abfangjäger"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1&nbsp;%HIT%-Schaden erleiden, um beliebig viele deiner Würfel neu zu werfen.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1&nbsp;%CANNON%-,&nbsp;%TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Inquisitor":
           display_name: """Inquisitor"""
           # ship: """TIE-v1-Turbojäger"""
           text: """<i class = flavor_text>Die gefürchteten Inquisitoren haben nicht nur freie Hand bei der Ausübung ihrer Pflichten, sondern auch Zugang zu modernster Spitzentechnik wie dem TIE-v1-Turbojäger-Prototypen.</i>"""
        "Jake Farrell":
           display_name: """Jake Farrell"""
           # ship: """RZ-1-A-Flügler"""
           text: """Nachdem du eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0-1 wählen. Jenes Schiff darf eine %FOCUS%-Aktion durchführen.%LINEBREAK%<strong>Schwenkbare Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Jakku Gunrunner":
           display_name: """Waffenschmuggler von Jakku"""
           # ship: """Quadrijet-Transferschlepper"""
           text: """<i class = flavor_text>Der Quadrijet-Transferschlepper, im Volksmund „Quadjumper“ genannt, ist gleichermaßen behände in Weltall und Atmosphäre, was ihn zu einem beliebten Schmuggler- und Entdeckerschiff macht. </i>%LINEBREAK%<strong>Schlepperstrahl:</strong> <strong>Aktion:</strong> Wähle ein Schiff in deinem %FRONTARC% in Reichweite 1. Jenes Schiff erhält 1 Fangstrahlmarker oder 2&nbsp;Fangstrahlmarker, falls es in deinem %BULLSEYEARC%&nbsp;in Reichweite 1 ist."""
        "Jan Ors":
           display_name: """Jan Ors"""
           # ship: """Leichter HWK-290-Frachter"""
           text: """Solange ein befreundetes Schiff in deinem Feuerwinkel einen Primärangriff durchführt, falls du nicht gestresst bist, darfst du 1&nbsp;Stressmarker erhalten. Falls du das tust, darf jenes Schiff 1&nbsp;zusätzlichen Angriffswürfel werfen."""
        "Jek Porkins":
           display_name: """Jek Porkins"""
           # ship: """T-65-X-Flügler"""
           text: """Nachdem du einen Stressmarker bekommen hast, darfst du 1&nbsp;Angriffswürfel werfen, um ihn zu entfernen. Bei einem %HIT%-Ergebnis erleide 1&nbsp;%HIT%-Schaden."""
        "Joy Rekkoff":
           display_name: """Joy Rekkoff"""
           # ship: """Fangjäger"""
           text: """Solange du einen Angriff durchführst, darfst du 1&nbsp;%CHARGE% von einer ausgerüsteten %TORPEDO%-Aufwertung ausgeben. Falls du das tust, wirft der Verteidiger 1&nbsp;Verteidigungswürfel weniger.%LINEBREAK%<strong>Concordianischer Wirbel:</strong> Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1&nbsp;Ergebnis in ein %EVADE%-Ergebnis."""
        "Kaa'to Leeachos":
           display_name: """Kaa'to Leeachos"""
           # ship: """Z-95-AF4-Kopfjäger"""
           text: """Zu Beginn der Kampfphase darfst du 1&nbsp;befreundetes Schiff in Reichweite 0-2 wählen. Falls du das tust, transferiere 1&nbsp;Fokus- oder Ausweichmarker von jenem Schiff auf dich selbst."""
        "Kad Solus":
           display_name: """Kad Solus"""
           # ship: """Fangjäger"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt hast, erhalte 2 Fokusmarker.%LINEBREAK%<strong>Concordianischer Wirbel:</strong> Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1&nbsp;Ergebnis in ein %EVADE%-Ergebnis."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           # ship: """Leichter VCX-100-Frachter"""
           text: """Solange ein befreundetes Schiff in deinem Feuerwinkel verteidigt, darfst du 1&nbsp;%FORCE% ausgeben. Falls du das tust, wirft der Angreifer 1 Angriffswürfel weniger.%LINEBREAK%<strong>Heckgeschütz:</strong> Solange du ein angedocktes Schiff hast, hast du eine %REARARC%-Primärwaffe mit einem Angriffswert in Höhe des Angriffswertes der %FRONTARC%-Primärwaffe deines angedockten Schiffes."""
        "Kashyyyk Defender":
           display_name: """Verteidiger von Kashyyyk"""
           # ship: """Auzituck-Kanonenboot"""
           text: """<i class = flavor_text>Mit seinen drei weitreichenden Sureggi-Zwillingslaserkanonen soll das Auzituck-Kanonenboot Sklavenjäger im Kashyyyk-System abschrecken.</i>"""
        "Kath Scarlet":
           display_name: """Kath Scarlet"""
           # ship: """Patrouillenboot der Firespray-Klasse"""
           text: """Solange du einen Primärangriff durchführst, falls mindestens 1&nbsp;befreundetes nicht-limitiertes Schiff in Reichweite 0 des Verteidigers ist, wirf 1&nbsp;zusätzlichen Angriffswürfel."""
        "Kavil":
           display_name: """Kavil"""
           # ship: """BTL-A4-Y-Flügler"""
           text: """Solange du einen Nicht-%FRONTARC%-Angriff durchführst, wirf 1&nbsp;zusätzlichen Angriffswürfel."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           # ship: """Jagdschiff der Lanzen-Klasse"""
           text: """Zu Beginn der Kampfphase darfst du 1&nbsp;Schiff wählen, das sowohl in deinem %FRONTARC%&nbsp;als auch in deinem %SINGLETURRETARC% und in Reichweite 0-1 ist. Falls du das tust, erhält jenes Schiff 1 Fangstrahlmarker."""
        "Knave Squadron Escort":
           display_name: """Eskorte der Schurken-Staffel"""
           # ship: """E-Flügler"""
           text: """<i class = flavor_text>Der E-Flügler verbindet die besten Eigenschaften von X-Flügler und A-Flügler, und kann mit überlegener Feuerkraft, Geschwindigkeit und Manövrierbarkeit aufwarten.</i>%LINEBREAK% <strong>Experimentelle Scanner:</strong> Du kannst Ziele jenseits von Reichweite 3 erfassen. Du kannst keine Ziele in Reichweite 1 erfassen."""
        "Koshka Frost":
           display_name: """Koshka Frost"""
           # ship: """Patrouillenboot der Firespray-Klasse"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls das feindliche Schiff gestresst ist, darfst du 1 deiner Würfel neu werfen."""
        "Krassis Trelix":
           display_name: """Krassis Trelix"""
           # ship: """Patrouillenboot der Firespray-Klasse"""
           text: """Du kannst %FRONTARC%-Spezialangriffe von deinem %REARARC% aus durchführen.%LINEBREAK%Solange du einen Spezialangriff durchführst, darfst du 1 Angriffswürfel neu werfen."""
        "Kullbee Sperado":
           display_name: """Kullbee Sperado"""
           # ship: """T-65-X-Flügler"""
           text: """Nachdem du eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hast, darfst du deine ausgerüstete %CONFIG%-Aufwertungskarte umdrehen."""
        "Kyle Katarn":
           display_name: """Kyle Katarn"""
           # ship: """Leichter HWK-290-Frachter"""
           text: """Zu Beginn der Kampfphase darfst du 1 deiner Fokusmarker auf ein&nbsp;befreundetes Schiff in deinem Feuerwinkel transferieren."""
        "L3-37":
           display_name: """L3-37"""
           # ship: """Modifizierter YT-1300-Frachter"""
           text: """Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%) ."""
        "L3-37 (Escape Craft)":
           display_name: """L3-37 (Escape Craft)"""
           # ship: """Fluchtschiff"""
           text: """Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%) .%LINEBREAK%<strong>Co-Pilot:</strong> Solange du angedockt bist, hat dein Träger-Schiff deine Piloten-Fähigkeit zusätzlich zu seiner eigenen."""
        "Laetin A'shera":
           display_name: """Laetin A'shera"""
           # ship: """M3-A-Abfangjäger"""
           text: """Nachdem du verteidigt oder einen Angriff durchgeführt hast, falls der Angriff verfehlt hat, erhalte 1 Ausweichmarker.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1&nbsp;%CANNON%-,&nbsp;%TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           # ship: """Modifizierter leichter YT-1300-Frachter"""
           text: """Nachdem du ein blaues Manöver vollständig ausgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0-3 wählen. Jenes Schiff darf eine Aktion durchführen."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian (Scum)"""
           # ship: """Modifizierter YT-1300-Frachter"""
           text: """Nachdem du Würfel geworfen hast, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten um alle deine Leerseiten neu zu werfen."""
        "Lando Calrissian (Scum) (Escape Craft)":
           display_name: """Lando Calrissian (Scum) (Escape Craft)"""
           # ship: """Fluchtschiff"""
           text: """Nachdem du Würfel geworfen hast, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten um alle deine Leerseiten neu zu werfen.%LINEBREAK%<strong>Co-Pilot:</strong> Solange du angedockt bist, hat dein Träger-Schiff deine Piloten-Fähigkeit zusätzlich zu seiner eigenen."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           # ship: """Leichter YV-666-Frachter"""
           text: """Zu Beginn der Kampfphase darfst du ein Schiff in Reichweite 1 wählen und eine Zielerfassung, die du auf jenem Schiff hast, ausgeben. Falls du das tust, erhält jenes Schiff 1 Fangstrahlmarker."""
        "Leevan Tenza":
           display_name: """Leevan Tenza"""
           # ship: """T-65-X-Flügler"""
           text: """Nachdem du eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hast, darfst du eine rote %EVADE%-Aktion durchführen."""
        "Lieutenant Blount":
           display_name: """Lieutenant Blount"""
           # ship: """Z-95-AF4-Kopfjäger"""
           text: """Solange du einen Primärangriff durchführst, falls mindestens 1 anderes befreundetes Schiff in Reichweite 0-1 des Verteidigers ist, darfst du 1 zusätzlichen Angriffswürfel werfen."""
        "Lieutenant Karsabi":
           display_name: """Lieutenant Karsabi"""
           # ship: """Sternflügler der Alpha-Klasse"""
           text: """Nachdem du einen Entwaffnet-Marker erhalten hast, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten, um 1 Entwaffnet-Marker zu entfernen."""
        "Lieutenant Kestal":
           display_name: """Lieutenant Kestal"""
           # ship: """TIE/ag-Agressor"""
           text: """Solange du einen Angriff durchführst, nachdem der Verteidiger Verteidigungswürfel geworfen hat, darfst du 1&nbsp;Fokusmarker ausgeben, um alle Leerseiten/%FOCUS%-Ergebnisse des Verteidigers zu negieren."""
        "Lieutenant Sai":
           display_name: """Lieutenant Sai"""
           # ship: """T-4A-Raumfähre der Lambda-Klasse"""
           text: """Nachdem du eine %COORDINATE%-Aktion durchgeführt hast, falls das von dir gewählte Schiff eine Aktion aus deiner Aktionsleiste durchgeführt hat, darfst du jene Aktion durchführen."""
        "Lok Revenant":
           display_name: """Lok-Pirat"""
           # ship: """Scurrg-H-6-Bomber"""
           text: """<i class = flavor_text>Das Nubianische Entwicklungskollektiv konstruierte den Scurrg-H-6-Bomber als vielseitige Jagdmaschine, ausgestattet mit Hochleistungsschilden und einem tödlichen Waffenarsenal.</i>"""
        "Lothal Rebel":
           display_name: """Rebell von Lothal"""
           # ship: """Leichter VCX-100-Frachter"""
           text: """<i class = flavor_text>Der VCX-100 ist ein weiteres Erfolgsmodell der Corellianischen Ingenieursgesellschaft, geräumiger und mit mehr Ausstattungsoptionen als die beliebte YT-Serie.</i>%LINEBREAK%<strong>Heckgeschütz:</strong> Solange du ein angedocktes Schiff hast, hast du eine %REARARC%-Primärwaffe mit einem Angriffswert in Höhe des Angriffswertes der %FRONTARC%-Primärwaffe deines angedockten Schiffes."""
        "Lowhhrick":
           display_name: """Wullffwarro"""
           # ship: """Auzituck-Kanonenboot"""
           text: """Solange du einen Primärangriff durchführst, falls du beschädigt bist, darfst du 1 zusätzlichen Angriffswürfel werfen."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           # ship: """T-65-X-Flügler"""
           text: """Nachdem du zum Verteidiger geworden bist (bevor Würfel geworfen werden), darfst du 1&nbsp;%FORCE% wiederherstellen."""
        "Maarek Stele":
           display_name: """Maarek Stele"""
           # ship: """TIE-x1-Turbojäger"""
           text: """Solange du einen Angriff durchführst, falls dem Verteidiger eine offene Scha­dens­karte zugeteilt werden würde, ziehe stattdessen 3 Schadenskarten, wähle 1&nbsp;und lege die übrigen ab.%LINEBREAK%<strong>Verbesserter Zielcomputer:</strong> Solange du einen Primärangriff gegen einen Ver­tei­diger durchführst, den du als Ziel erfasst hast, wirf 1&nbsp;zusätzlichen An­griffs­würfel und ändere 1&nbsp;%HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           # ship: """UT-60D-U-Flügler"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 verteidigt, kann der Angreifer nicht mehr als 1&nbsp;Angriffswürfel neu werfen."""
        "Major Rhymer":
           display_name: """Major Rhymer"""
           # ship: """TIE/sa-Bomber"""
           text: """Solange du einen %TORPEDO%- oder %MISSILE%-Angriff durchführst, darfst du die Reichweitenbedingung um 1 erhöhen oder verringern, bis zu einem Limit von 0-3. %LINEBREAK%<strong>Wendiger Bomber:</strong> Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Major Vermeil":
           display_name: """Major Vermeil"""
           # ship: """TIE-Schnitter"""
           text: """Solange du einen Angriff durchführst, falls der Verteidiger keine grünen Marker hat, darfst du 1 deiner Leerseiten- oder %FOCUS%-Ergebnisse in ein %HIT%-Ergebnis ändern. %LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1&nbsp;%BANKLEFT%]-, [1&nbsp;%STRAIGHT%]- oder [1&nbsp;%BANKRIGHT%]-Manöver ausführen."""
        "Major Vynder":
           display_name: """Major Vynder"""
           # ship: """Sternflügler der Alpha-Klasse"""
           text: """Solange du verteidigst, falls du entwaffnet bist, wirf 1&nbsp;zusätzlichen Verteidigungswürfel."""
        "Manaroo":
           display_name: """Manaroo"""
           # ship: """JumpMaster 5000"""
           text: """Zu Beginn der Kampfphase darfst du ein befreundetes Schiff in Reichweite 0-1 wählen. Falls du das tust, transferiere alle grünen Marker, die dir zugeordnet sind, auf jenes Schiff."""
        "Miranda Doni":
           display_name: """Miranda Doni"""
           # ship: """BTL-S8-K-Flügler"""
           text: """Solange du einen Primärangriff durchführst, darfst du entweder 1&nbsp;Schild ausgeben, um 1 zusätzlichen Angriffswürfel zu werfen, oder, falls du keine Schilde hast, du darfst 1&nbsp;Angriffswürfel weniger werfen, um 1&nbsp;Schild wiederherzustellen."""
        "Moralo Eval":
           display_name: """Moralo Eval"""
           # ship: """Leichter YV-666-Frachter"""
           text: """Falls du fliehen würdest, darfst du 1&nbsp;%CHARGE%&nbsp;ausgeben. Falls du das tust, platziere dich selbst stattdessen in der Reserve. Zu Beginn der nächsten Planungsphase platziere dich selbst innerhalb von Reichweite 1 des Spielflächenrandes, über den du geflohen bist."""
        "Norra Wexley (Y-Wing)":
           display_name: """Norra Wexley (Y-Wing)"""
           # ship: """BTL-A4-Y-Flügler"""
           text: """Solange du verteidigst, falls ein feindliches Schiff in Reichweite 0-1 ist, füge 1&nbsp;%EVADE%-Ergebnis zu deinen Würfelergebnissen hinzu."""
        "Norra Wexley":
           display_name: """Norra Wexley"""
           # ship: """ARC-170-Sternenjäger"""
           text: """Solange du verteidigst, falls ein feindliches Schiff in Reichweite 0-1 ist, füge 1&nbsp;%EVADE%-Ergebnis zu deinen Würfelergebnissen hinzu."""
        "Nu Squadron Pilot":
           display_name: """Pilot der Nu-Staffel"""
           # ship: """Sternflügler der Alpha-Klasse"""
           text: """<i class = flavor_text>Inspiriert von anderen Modellen der Cygnus Raumwerften, ist der Sternflügler der Alpha-Klasse ein vielseitiges Kanonenboot, das für verschiedene Einsatzgebiete umgerüstet werden kann und somit ideal für die Spezialeinheiten der Imperialen Flotte ist.</i>"""
        "N'dru Suhlak":
           display_name: """N'dru Suhlak"""
           # ship: """Z-95-AF4-Kopfjäger"""
           text: """Solange du einen Primärangriff durchführst, falls keine anderen befreundeten Schiffe in Reichweite 0-2 sind, wirf 1 zusätzlichen Angriffswürfel."""
        "Obsidian Squadron Pilot":
           display_name: """Pilot der Obsidian-Staffel"""
           # ship: """TIE/ln-Jäger"""
           text: """<i class = flavor_text>Der Zwillingsionenantrieb des TIE-Jägers war auf Geschwindigkeit optimiert und machte den TIE/ln zu einem der wendigsten Raumschiffe, die je in Massen produziert wurden.</i>"""
        "Old Teroch":
           display_name: """Der alte Teroch"""
           # ship: """Fangjäger"""
           text: """Zu Beginn der Kampfphase darfst du 1&nbsp;feindliches Schiff in Reichweite 1 wählen. Falls du das tust und du in seinem %FRONTARC% bist, entfernt es alle seine grünen Marker.%LINEBREAK%<strong>Concordianischer Wirbel:</strong> Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1&nbsp;Ergebnis in ein %EVADE%-Ergebnis."""
        "Omicron Group Pilot":
           display_name: """Pilot der Omicron-Gruppe"""
           # ship: """T-4A-Raumfähre der Lambda-Klasse"""
           text: """<i class = flavor_text>Die Raumfähre der Lambda-Klasse zeichnet sich durch ihre außergewöhnliche Drei-Tragflächen-Form und modernste Sensortechnologie aus. Als leichtes Multifunktionsschiff übernimmt sie eine wichtige Rolle in der Imperialen Flotte.</i>"""
        "Onyx Squadron Ace":
           display_name: """Fliegerass der Onyx-Staffel"""
           # ship: """TIE/D-Abwehrjäger"""
           text: """<i class = flavor_text>Der experimentelle TIE-Abwehrjäger stellt alle anderen modernen Sternenjäger in den Schatten, wenngleich Größe, Schubkraft und Bewaffnung das Gewicht und den Preis des Modells in die Höhe treiben.</i>%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Onyx Squadron Scout":
           display_name: """Aufklärer der Onyx-Staffel"""
           # ship: """TIE/ag-Agressor"""
           text: """<i class = flavor_text>Der für den Langzeiteinsatz konzipierte TIE/ag wird in erster Linie von Elitepiloten geflogen, die das Potential des schwer bewaffneten und wendigen Jägers voll ausschöpfen können.</i>"""
        "Outer Rim Pioneer":
           display_name: """Pionier aus dem Outer Rim"""
           # ship: """Fluchtschiff"""
           text: """Befreundete Schiffe in Reichweite 0-1 können Angriffe in Reichweite 0 zu Hindernissen durchführen.%LINEBREAK%<strong>Co-Pilot:</strong> Solange du angedockt bist, hat dein Träger-Schiff deine Piloten-Fähigkeit zusätzlich zu seiner eigenen."""
        "Outer Rim Smuggler":
           display_name: """Schmuggler aus dem """
           # ship: """Modifizierter leichter YT-1300-Frachter"""
           text: """<i class = flavor_text>Mit seiner robusten Bauweise und modularen Konstruktion gehört der YT-1300 zu den beliebtesten, weitverbreitetsten und am stärksten modifizierten Raumfrachtern der Galaxis. </i>"""
        "Palob Godalhi":
           display_name: """Palob Godalhi"""
           # ship: """Leichter HWK-290-Frachter"""
           text: """Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in deinem Feuerwinkel in Reichweite 0-2 wählen. Falls du das tust, transferiere 1 Fokus- oder Ausweichmarker von jenem Schiff auf dich selbst."""
        "Partisan Renegade":
           display_name: """Überzeugter Partisan"""
           # ship: """UT-60D-U-Flügler"""
           text: """<i class = flavor_text>Ursprünglich hatten sich Saw Gerreras Partisanen während der Klonkriege formiert, um den Streitkräften der Separatisten auf Onderon die Stirn zu bieten. Als das Imperium die Macht übernahm, setzten sie ihren Kampf gegen die Tyrannei einfach fort.</i>"""
        "Patrol Leader":
           display_name: """Patrouillenführer"""
           # ship: """VT-49-Decimator"""
           text: """<i class = flavor_text>Das Kommando über einen VT-49-Decimator zu erhalten, gilt unter imperialen Flottenoffizieren der mittleren Rangebenen als äußerst erstrebenswertes Ziel.</i>"""
        "Phoenix Squadron Pilot":
           display_name: """Pilot der Phönix-Staffel"""
           # ship: """RZ-1-A-Flügler"""
           text: """<i class = flavor_text>Unter der Führung von Commander Jun Sato stellen sich die tapferen, aber unerfahrenen Piloten der Phönix-Staffel dem aussichtslosen Kampf gegen das Galaktische Imperium.</i>%LINEBREAK%<strong>Schwenkbare Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Planetary Sentinel":
           display_name: """Planetarer Wachposten"""
           # ship: """TIE/sk-Stürmer"""
           text: """<i class = flavor_text>Zum Schutz seiner vielen militärischen Einrichtungen benötigt das Imperium eine mobile und wachsame Verteidigungsstreitmacht.</i>%LINEBREAK% <strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1&nbsp;%BANKLEFT%]-, [1&nbsp;%STRAIGHT%]- oder [1&nbsp;%BANKRIGHT%]-Manöver ausführen."""
        "Prince Xizor":
           display_name: """Prinz Xizor"""
           # ship: """Angriffsplattform der Sternenviper-Klasse"""
           text: """Solange du verteidigst, nach dem Schritt „Ergebnisse neutralisieren“, darf ein anderes befreundetes Schiff in Reichweite 0-1 und im Angriffswinkel 1&nbsp;%HIT%- oder %CRIT%-Schaden erleiden. Falls es das tut, negiere 1&nbsp;passendes Ergebnis.%LINEBREAK%<strong>Mikrodüsen:</strong> Solange du eine Fassrolle durchführst, <b>musst</b> du die %BANKLEFT%-oder %BANKRIGHT%-Schablone  anstatt der %STRAIGHT%-Schablone verwenden."""
        "Quinn Jast":
           display_name: """Quinn Jast"""
           # ship: """M3-A-Abfangjäger"""
           text: """Zu Beginn der Kampfphase darfst du 1 Entwaffnet-Marker erhalten, um 1&nbsp;%CHARGE% von 1 deiner ausgerüsteten Aufwertungen wiederherzustellen.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1&nbsp;%CANNON%-,&nbsp;%TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Rear Admiral Chiraneau":
           display_name: """Konteradmiral Chiraneau"""
           # ship: """VT-49-Decimator"""
           text: """Solange du einen Angriff durchführst, falls du verstärkt bist und der Verteidiger in dem %FULLFRONTARC% oder %FULLREARARC% ist, der zu deinem Verstärkungsmarker passt, darfst du 1 deiner %FOCUS%-Ergebnisse in ein %CRIT%-Ergebnis ändern."""
        "Rebel Scout":
           display_name: """Rebellen-Aufklärer"""
           # ship: """Leichter HWK-290-Frachter"""
           text: """<i class = flavor_text>Ein Vogel mit ausgebreiteten Schwingen diente der Corellianischen Ingenieursgesellschaft als Vorbild für das Design der „Hawk“-Serie, einer Reihe von erstklassigen Transportschiffen. Der flinke und robuste HWK-290 wird oft von Rebellenagenten als mobile Operationsbasis eingesetzt.</i>"""
        "Red Squadron Veteran":
           display_name: """Veteran der roten Staffel"""
           # ship: """T-65-X-Flügler"""
           text: """<i class = flavor_text>Die rote Staffel wurde als Elite-Jägerverband gegründet und zählt einige der besten Piloten der Allianz zu ihren Mitgliedern.</i>"""
        "Rexler Brath":
           display_name: """Rexler Brath"""
           # ship: """TIE/D-Abwehrjäger"""
           text: """Nachdem du einen Angriff durchgeführt hast, der getroffen hat, falls du ausweichst, lege 1 der Schadenskarten des Verteidigers offen.%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Rho Squadron Pilot":
           display_name: """Pilot der Rho-Staffel"""
           # ship: """Sternflügler der Alpha-Klasse"""
           text: """<i class = flavor_text>Die Elitepiloten der Rho-Staffel nutzen die Xg-1-Angriffskonfiguration sowie das Os-1-Waffenarsenal des Sternflüglers der Alpha-Klasse mit verheerender Effizienz, um der Rebellion das Fürchten zu lehren. </i>"""
        "Roark Garnet":
           display_name: """Roark Garnet"""
           # ship: """Leichter HWK-290-Frachter"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff in deinem Feuerwinkel wählen. Falls du das tust, kämpft es in dieser Phase bei Initiative 7 anstatt bei seiner normalen Initiative."""
        "Rogue Squadron Escort":
           display_name: """Eskorte der Renegaten-Staffel"""
           # ship: """E-Flügler"""
           text: """<i class = flavor_text>Die Spitzenpiloten der Renegaten-Staffel gehören zur absoluten Elite der Rebellion. </i>%LINEBREAK% <strong>Experimentelle Scanner:</strong> Du kannst Ziele jenseits von Reichweite 3 erfassen. Du kannst keine Ziele in Reichweite 1 erfassen."""
        "Saber Squadron Ace":
           display_name: """Fliegerass der Saber-Staffel"""
           # ship: """TIE-Abfangjäger"""
           text: """<i class = flavor_text>Angeführt von Baron Soontir Fel, gehören die Piloten der Saber-Staffel zur absoluten Elite des Imperiums. Ihre TIE-Abfangjäger werden mit blutroten Streifen markiert, um Piloten mit mindestens zehn bestätigten Abschüssen zu kennzeichnen.</i>%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           # ship: """Jagdshuttle"""
           text: """Bevor du aktiviert wirst, darfst du eine %BARRELROLL%- oder %BOOST%-Aktion durchführen.%LINEBREAK%<strong>Geladen und entsichert:</strong> Solange du angedockt bist, nachdem dein Trägerschiff einen %FRONTARC%-Primärangriff oder %TURRET%-Angriff durchgeführt hat, darf es einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Sabine Wren (TIE Fighter)":
           display_name: """Sabine Wren (TIE Fighter)"""
           # ship: """TIE/ln-Jäger"""
           text: """Bevor du aktiviert wirst, darfst du eine %BARRELROLL%- oder %BOOST%-Aktion durchführen."""
        "Sabine Wren (Scum)":
           display_name: """Sabine Wren (Scum)"""
           # ship: """Jagdschiff der Lanzen-Klasse"""
           text: """Solange du verteidigst, falls der Angreifer in deinem %SINGLETURRETARC% in Reichweite 0-2 ist, darfst du 1&nbsp;%FOCUS%-Ergebnis zu deinen Würfelergebnissen hinzufügen."""
        "Sarco Plank":
           display_name: """Sarco Plank"""
           # ship: """Quadrijet-Transferschlepper"""
           text: """Solange du verteidigst, darfst du deinen Wendigkeitswert so behandeln, als würde er der Geschwindigkeit des Manövers entsprechen, das du in dieser Runde ausgeführt hast.%LINEBREAK%<strong>Schlepperstrahl:</strong> <strong>Aktion:</strong> Wähle ein Schiff in deinem %FRONTARC% in Reichweite 1. Jenes Schiff erhält 1&nbsp;Fangstrahlmarker oder 2 Fangstrahlmarker, falls es in deinem %BULLSEYEARC% in Reichweite 1 ist."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           # ship: """UT-60D-U-Flügler"""
           text: """Solange ein beschädigtes befreundetes Schiff in Reichweite 0-3 einen Angriff durchführt, darf es 1&nbsp;Angriffswürfel neu werfen."""
        "Scarif Base Pilot":
           display_name: """Pilot der Scarif-Basis"""
           # ship: """TIE-Schnitter"""
           text: """<i class = flavor_text>Der TIE-Schnitter war für den Transport von Elitetruppen in besonders hart umkämpfte Gefechtszonen konzipiert. Berühmt wurde er in der Schlacht von Scarif, wo er Direktor Krennics gefürchtete Todestruppen transportierte.</i>%LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1&nbsp;%BANKLEFT%]-, [1&nbsp;%STRAIGHT%]- oder [1&nbsp;%BANKRIGHT%]-Manöver ausführen."""
        "Scimitar Squadron Pilot":
           display_name: """Pilot der Scimitar-Staffel"""
           # ship: """TIE/sa-Bomber"""
           text: """<i class = flavor_text>Der TIE/sa ist außergewöhnlich wendig für einen Bomber und kann sein Ziel mit absoluter Präzision anvisieren, um den Kollateralschaden zu minimieren. </i>%LINEBREAK%<strong>Wendiger Bomber:</strong> Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Serissu":
           display_name: """Serissu"""
           # ship: """M3-A-Abfangjäger"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-1 verteidigt, darf es 1&nbsp;seiner Würfel neu werfen.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1&nbsp;%CANNON%-,&nbsp;%TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Seventh Sister":
           display_name: """Siebte Schwester"""
           # ship: """TIE-v1-Turbojäger"""
           text: """Solange du einen Primärangriff durchführst, vor dem Schritt „Ergebnisse neutralisieren“, darfst du 2&nbsp;%FORCE% ausgeben, um 1&nbsp;%EVADE%-Ergebnis zu negieren."""
        "Seyn Marana":
           display_name: """Seyn Marana"""
           # ship: """TIE/ln-Jäger"""
           text: """Solange du einen Angriff durchführst, darfst du 1&nbsp;%CRIT%-Ergebnis ausgeben. Falls du das tust, teile dem Verteidiger 1&nbsp;verdeckte Schadenskarte zu, dann negiere deine übrigen Ergebnisse."""
        "Shadowport Hunter":
           display_name: """Schattenhafen-Jäger"""
           # ship: """Jagdschiff der Lanzen-Klasse"""
           text: """<i class = flavor_text>Verbrechersyndikate fördern die mörderischen Talente ihrer treuen Geschäftspartner, indem sie sie mit der besten Technologie auf dem Markt ausstatten, beispielsweise mit dem schnellen und vorzüglichen Jagdschiff der Lanzen-Klasse.</i>"""
        "Shara Bey":
           display_name: """Shara Bey"""
           # ship: """ARC-170-Sternenjäger"""
           text: """Solange du verteidigst oder einen Primärangriff durchführst, darfst du 1 Zielerfassung, die du auf dem feindlichen Schiff hast, ausgeben, um 1&nbsp;%FOCUS%-Ergebnis zu deinen Würfelergebnissen hinzuzufügen."""
        "Sienar Specialist":
           display_name: """Experte von Sienar"""
           # ship: """TIE/ag-Agressor"""
           text: """<i class = flavor_text>Bei der Entwicklung des TIE-Aggressors setzte Sienar Flottensysteme mehr auf Vielseitigkeit und Leistung als auf reine Kosteneffizienz.</i>"""
        "Sigma Squadron Ace":
           display_name: """Fliegerass der Sigma-Staffel"""
           # ship: """TIE/ph-Phantom"""
           text: """<i class = flavor_text>Der TIE-Phantom ist nicht nur mit Schilden und einem Hyperantrieb, sondern auch mit fünf Laserkanonen ausgestattet, was ihn zu einem der schlagkräftigsten Jäger des Imperiums macht.</i>%LINEBREAK%<strong>Stygium-Gitter:</strong> Nachdem du dich enttarnt hast, darfst du eine %EVADE%-Aktion durchführen. Zu Beginn der Endphase darfst du 1 Ausweichmarker ausgeben, um 1 Tarnungsmarker zu erhalten."""
        "Skull Squadron Pilot":
           display_name: """Pilot der Skull-Staffel"""
           # ship: """Fangjäger"""
           text: """<i class = flavor_text>Die Fliegerasse der Skull-Staffel bevorzugen eine aggressive Kampftaktik und vertrauen dabei auf die schwenkbaren Tragflächen ihrer Schiffe, um ihre Beute mit unübertroffener Agilität zur Strecke zu bringen. </i>%LINEBREAK% <strong>Concordianischer Wirbel:</strong> Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1&nbsp;Ergebnis in ein %EVADE%-Ergebnis."""
        "Sol Sixxa":
           display_name: """Sol Sixxa"""
           # ship: """Scurrg-H-6-Bomber"""
           text: """Falls du ein Gerät unter Verwendung der [1&nbsp;%STRAIGHT%]-Schablone abwerfen würdest, darfst du es stattdessen unter Verwendung einer beliebigen anderen Schablone mit Geschwindigkeit 1 abwerfen."""
        "Soontir Fel":
           display_name: """Soontir Fel"""
           # ship: """TIE-Abfangjäger"""
           text: """Zu Beginn der Kampfphase, falls ein feindliches Schiff in deinem %BULLSEYEARC% ist, erhalte 1 Fokusmarker.%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Spice Runner":
           display_name: """Spiceschmuggler"""
           # ship: """Leichter HWK-290-Frachter"""
           text: """<i class = flavor_text>Trotz seines vergleichsweise kleinen Laderaums ist der HWK-290 ein beliebtes Modell unter Schmugglern, die sich auf den diskreten Transport von hochwertigen Gütern spezialisiert haben.</i>"""
        "Storm Squadron Ace":
           display_name: """Fliegerass der Storm-Staffel"""
           # ship: """TIE-x1-Turbojäger"""
           text: """<i class = flavor_text>Der TIE-x1-Turbojäger wurde nur in geringer Stückzahl produziert, dafür wurden viele seiner Innovationen bei der Entwicklung von Sienars nächstem TIE-Modell, dem TIE-Abfangjäger, übernommen.</i>%LINEBREAK%<strong>Verbesserter Zielcomputer:</strong> Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1&nbsp;%HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Sunny Bounder":
           display_name: """Sunny Bounder"""
           # ship: """M3-A-Abfangjäger"""
           text: """Solange du verteidigst oder einen Angriff durchführst, nachdem du deine Würfel geworfen oder neu geworfen hast, falls du auf jedem deiner Würfel dasselbe Ergebnis hast, darfst du 1&nbsp;passendes Ergebnis hinzufügen.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1&nbsp;%CANNON%-,&nbsp;%TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Tala Squadron Pilot":
           display_name: """Pilot der Tala-Staffel"""
           # ship: """Z-95-AF4-Kopfjäger"""
           text: """<i class = flavor_text>Die AF4-Serie ist das jüngste Modell der bewährten Kopfjäger-Produktreihe, die mit ihrem günstigen Preis und ihrer robusten Bauweise zu den Favoriten vieler unabhängiger Organisationen wie der Rebellion gehört.</i>"""
        "Talonbane Cobra":
           display_name: """Talonbane Cobra"""
           # ship: """Kihraxz-Jäger"""
           text: """Solange du in Angriffsreichweite 3 verteidigst oder in Angriffsreichweite&nbsp;1 einen Angriff durchführst, wirf 1&nbsp;zusätzlichen Würfel."""
        "Tansarii Point Veteran":
           display_name: """Veteran von Tansarii """
           # ship: """M3-A-Abfangjäger"""
           text: """<i class = flavor_text>Mit dem Abschuss von Talonbane Cobra, einem Spitzenpiloten der Schwarzen Sonne, entschieden die Car'das-Schmuggler die Schlacht um Tansarii Point für sich. Bis heute sind die Veteranen dieses Scharmützels im ganzen Sektor hochangesehen. </i>%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1&nbsp;%CANNON%-,&nbsp;%TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Tel Trevura":
           display_name: """Tel Trevura"""
           # ship: """JumpMaster 5000"""
           text: """Falls du zerstört werden würdest, darfst du 1&nbsp;%CHARGE% ausgeben. Falls du das tust, lege stattdessen alle deine Schadenskarten ab, erleide 5&nbsp;%HIT%-Schaden und platziere dich selbst in der Reserve. Zu Beginn der nächsten Planungsphase platziere dich selbst innerhalb von Reichweite 1 deines Spielflächenrandes."""
        "Tempest Squadron Pilot":
           display_name: """Pilot der Tornado-Staffel"""
           # ship: """TIE-x1-Turbojäger"""
           text: """<i class = flavor_text>Der TIE-Turbojäger war eine Weiterentwicklung der erfolgreichen TIE/ln-Baureihe, zusätzlich ausgestattet mit Deflektorschilden, besseren Waffen, geknickten Solarzellen und einem Hyperantrieb.</i>%LINEBREAK%<strong>Verbesserter Zielcomputer:</strong> Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1&nbsp;%HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Ten Numb":
           display_name: """Ten Numb"""
           # ship: """A/SF-01-B-Flügler"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1&nbsp;Stressmarker ausgeben, um alle deine %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern."""
        "Thane Kyrell":
           display_name: """Thane Kyrell"""
           # ship: """T-65-X-Flügler"""
           text: """Solange du einen Angriff durchführst, darfst du 1&nbsp;%FOCUS%-, %HIT%- oder %CRIT%-Ergebnis ausgeben, um dir die verdeckten Schadenskarten des Verteidigers anzusehen, 1 zu wählen und sie offenzulegen."""
        "Tomax Bren":
           display_name: """Tomax Bren"""
           # ship: """TIE/sa-Bomber"""
           text: """Nachdem du eine %RELOAD%-Aktion durchgeführt hast, darfst du 1&nbsp;%CHARGE% von 1 deiner ausgerüsteten %TALENT%-Aufwertungskarten wiederherstellen. %LINEBREAK%<strong>Wendiger Bomber:</strong> Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Torani Kulda":
           display_name: """Torani Kulda"""
           # ship: """M12-L-Kimogila-Jäger"""
           text: """Nachdem du einen Angriff durchgeführt hast, erleidet jedes feindliche Schiff in deinem %BULLSEYEARC%1&nbsp;%HIT%-Schaden, es sei denn, es entfernt 1&nbsp;grünen Marker.%LINEBREAK%<strong>Todsicherer Treffer:</strong> Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, können Verteidigungswürfel nicht unter Verwendung von grünen Markern modifiziert werden."""
        "Torkil Mux":
           display_name: """Torkil Mux"""
           # ship: """Leichter HWK-290-Frachter"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff in deinem Feuerwinkel wählen. Falls du das tust, kämpft jenes Schiff in dieser Runde bei Initiative 0 anstatt bei seinem normalen Initiativewert."""
        "Trandoshan Slaver":
           display_name: """Trandoshanischer Sklavenjäger"""
           # ship: """Leichter YV-666-Frachter"""
           text: """<i class = flavor_text>Sein geräumiges Trippeldecker-Design macht den YV-666 zu einem beliebten Schiff für Sklavenhändler und Kopfgeldjäger, die oft ein ganzes Deck für Gefangenentransporte umrüsten.</i>"""
        "Turr Phennir":
           display_name: """Turr Phennir"""
           # ship: """TIE-Abfangjäger"""
           text: """Nachdem du einen Angriff durchgeführt hast, darfst du eine %BARRELROLL%- oder %BOOST%-Aktion durchführen, auch falls du gestresst bist.%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           # ship: """Quadrijet-Transferschlepper"""
           text: """Zu Beginn der Kampfphase, falls 1 oder mehrere andere Schiffe in Reichweite 0 sind, erhalten du und jedes andere Schiff in Reichweite 0 je 1 Fangstrahlmarker.%LINEBREAK%<strong>Schlepperstrahl:</strong> <strong>Aktion:</strong> Wähle ein Schiff in deinem %FRONTARC% in Reichweite 1. Jenes Schiff erhält 1 Fangstrahlmarker oder 2&nbsp;Fangstrahlmarker, falls es in deinem %BULLSEYEARC% in Reichweite 1 ist."""
        "Valen Rudor":
           display_name: """Valen Rudor"""
           # ship: """TIE/ln-Jäger"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-1 verteidigt hat (nachdem ggf. Schaden abgehandelt worden ist), darfst du eine Aktion durchführen."""
        "Ved Foslo":
           display_name: """Ved Foslo"""
           # ship: """TIE-x1-Turbojäger"""
           text: """Solange du ein Manöver ausführst, darfst du stattdessen ein Manöver derselben Flugrichtung und Schwierigkeit, aber einer um 1 höheren oder niedrigeren Geschwindigkeit ausführen.%LINEBREAK%<strong>Verbesserter Zielcomputer:</strong> Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1&nbsp;%HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Viktor Hel":
           display_name: """Viktor Hel"""
           # ship: """Kihraxz-Jäger"""
           text: """Nachdem du verteidigt hast, falls du nicht genau 2 Verteidigungswürfel geworfen hast, erhält der Angreifer 1 Stressmarker."""
        "Warden Squadron Pilot":
           display_name: """Pilot der Beschützer-Staffel"""
           # ship: """BTL-S8-K-Flügler"""
           text: """<i class = flavor_text>Der K-Flügler von Koensayr zeichnet sich durch einen topmodernen Sublicht-Antriebsmotor (kurz: SLAM) sowie beispiellose achtzehn Waffenaufhängungen aus. Was Geschwindigkeit und Feuerkraft anbelangt, steht er außer Konkurrenz.</i>"""
        "Wedge Antilles":
           display_name: """Wedge Antilles"""
           # ship: """T-65-X-Flügler"""
           text: """Solange du einen Angriff durchführst, wirft der Verteidiger 1&nbsp;Verteidigungswürfel weniger."""
        "Wild Space Fringer":
           display_name: """Grenzgänger aus dem Wilden Raum"""
           # ship: """Leichter YT-2400-Frachter"""
           text: """<i class = flavor_text>Serienmäßig bietet der YT-2400 reichlich Laderaum. Allerdings opfern die meisten Besitzer einen Teil davon, um Platz für modifizierte Waffensysteme und extragroße Triebwerke zu schaffen.</i>%LINEBREAK%<strong>Toter Winkel:</strong> Solange du einen Primärangriff in Reichweite 0-1 durchführst, wende den Bonus für Reichweite 0-1 nicht an und wirf 1 Angriffswürfel weniger."""
        "Wullffwarro":
           display_name: """Lowhhrick"""
           # ship: """Auzituck-Kanonenboot"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-1 zum Verteidiger geworden ist, darfst du 1 Verstärkungsmarker ausgeben. Falls du das tust, erhält jenes Schiff 1 Ausweichmarker."""
        "Zealous Recruit":
           display_name: """Fanatischer Rekrut"""
           # ship: """Fangjäger"""
           text: """<i class = flavor_text>Jeder Pilot eines mandalorianischen Fangjägers beherrscht den Concordianischen Wirbel, ein Manöver, bei dem das schmale Profil des Jägers für einen tödlichen Frontalangriff genutzt wird. </i>%LINEBREAK% <strong>Concordianischer Wirbel:</strong> Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1&nbsp;Ergebnis in ein %EVADE%-Ergebnis."""
        "Zertik Strom":
           display_name: """Zertik Strom"""
           # ship: """TIE-x1-Turbojäger"""
           text: """Während der Endphase darfst du eine Zielerfassung ausgeben, die du auf einem feindlichen Schiff hast, um 1 der Schadenskarten jenes Schiffes offenzulegen.%LINEBREAK%<strong>Verbesserter Zielcomputer:</strong> Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1&nbsp;%HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Zuckuss":
           display_name: """Zuckuss"""
           # ship: """G-1A Sternenjäger"""
           text: """Solange du einen Primärangriff durchführst, darfst du 1 zusätzlichen Angriffswürfel werfen. Falls du das tust, wirft der Verteidiger 1&nbsp;zusätzlichen Verteidigungswürfel."""
        '"Chopper"':
           display_name: """„Chopper“"""
           # ship: """Leichter VCX-100-Frachter"""
           text: """Zu Beginn der Kampfphase erhält jedes feindliche Schiff in Reichweite 0 2 Störsignalmarker. %LINEBREAK%<strong>Heckgeschütz:</strong> Solange du ein angedocktes Schiff hast, hast du eine %REARARC%-Primärwaffe mit einem Angriffswert in Höhe des Angriffswertes der %FRONTARC%-Primärwaffe deines angedockten Schiffes."""
        '"Countdown"':
           display_name: """„Countdown“"""
           # ship: """TIE/sk-Stürmer"""
           text: """Solange du verteidigst, nach dem Schritt „Ergebnisse neutralisieren“, falls du nicht gestresst bist, darfst du 1&nbsp;%HIT%-Schaden erleiden und 1&nbsp;Stressmarker erhalten. Falls du das tust, negiere alle Würfelergebnisse.%LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1&nbsp;%BANKLEFT%]-, [1&nbsp;%STRAIGHT%]- oder [1&nbsp;%BANKRIGHT%]-Manöver ausführen."""
        '"Deathfire"':
           display_name: """„Todesfeuer“"""
           # ship: """TIE/sa-Bomber"""
           text: """Nachdem du zerstört worden bist, bevor du entfernt wirst, darfst du einen Angriff durchführen und 1 Gerät abwerfen oder starten.%LINEBREAK%<strong>Wendiger Bomber:</strong> Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        '"Deathrain"':
           display_name: """„Todesregen“"""
           # ship: """TIE/ca-Vergelter"""
           text: """Nachdem du ein Gerät abgeworfen oder gestartet hast, darfst du eine Aktion durchführen."""
        '"Double Edge"':
           display_name: """„Doppelklinge“"""
           # ship: """TIE/ag-Agressor"""
           text: """Nachdem du einen %TURRET%- oder %MISSILE%-Angriff durchgeführt hast, der verfehlt hat, darfst du unter Verwendung einer anderen Waffe einen Bonusangriff durchführen."""
        '"Duchess"':
           display_name: """„Herzogin“"""
           # ship: """TIE/sk-Stürmer"""
           text: """Du darfst wählen, <strong>Adaptive Querruder</strong> nicht zu verwenden. %LINEBREAK%Du darfst <strong>Adaptive Querruder</strong> verwenden, auch solange du gestresst bist.%LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1&nbsp;%BANKLEFT%]-, [1&nbsp;%STRAIGHT%]- oder [1&nbsp;%BANKRIGHT%]-Manöver ausführen."""
        '"Dutch" Vander':
           display_name: """„Dutch“ Vander"""
           # ship: """BTL-A4-Y-Flügler"""
           text: """Nachdem du die %LOCK%-Aktion durchgeführt hast, darfst du 1 befreundetes Schiff in Reichweite 1-3 wählen. Jenes Schiff darf das Objekt, das du als Ziel erfasst hast, als Ziel erfassen, wobei es die Reichweitenbeschränkung ignoriert."""
        '"Echo"':
           display_name: """„Echo“"""
           # ship: """TIE/ph-Phantom"""
           text: """Solange du dich enttarnst, <b>musst</b> du die [2&nbsp;%BANKLEFT%]- oder [2&nbsp;%BANKRIGHT%]-Schablone anstatt der [2&nbsp;%STRAIGHT%]-Schablone verwenden.%LINEBREAK%<strong>Stygium-Gitter:</strong> Nachdem du dich enttarnt hast, darfst du eine %EVADE%-Aktion durchführen. Zu Beginn der Endphase darfst du 1 Ausweichmarker ausgeben, um 1 Tarnungsmarker zu erhalten."""
        '"Howlrunner"':
           display_name: """„Howlrunner“"""
           # ship: """TIE/ln-Jäger"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-1 einen Primärangriff durchführt, darf jenes Schiff 1&nbsp;Angriffswürfel neu werfen."""
        '"Leebo"':
           display_name: """„Leebo“"""
           # ship: """Leichter YT-2400-Frachter"""
           text: """Nachdem du verteidigt oder einen Angriff durchgeführt hast, falls du einen Berechnungsmarker ausgegeben hast, erhalte 1 Berechnungsmarker.%LINEBREAK%<strong>Toter Winkel:</strong> Solange du einen Primärangriff in Reichweite 0-1 durchführst, wende den Bonus für Reichweite 0-1 nicht an und wirf 1 Angriffswürfel weniger."""
        '"Mauler" Mithel':
           display_name: """„Mauler“ Mithel"""
           # ship: """TIE/ln-Jäger"""
           text: """Solange du einen Angriff in Angriffsreichweite 1 durchführst, wirf 1 zusätzlichen Angriffswürfel."""
        '"Night Beast"':
           display_name: """„Nachtbestie“"""
           # ship: """TIE/ln-Jäger"""
           text: """Nachdem du ein blaues Manöver vollständig ausgeführt hast, darfst du eine %FOCUS%-Aktion durchführen."""
        '"Pure Sabacc"':
           display_name: """„Voller Sabacc“"""
           # ship: """TIE/sk-Stürmer"""
           text: """Solange du einen Angriff durchführst, falls du 1 oder weniger Schadenskarten hast, darfst du 1 zusätzlichen Angriffswürfel werfen.%LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1&nbsp;%BANKLEFT%]-, [1&nbsp;%STRAIGHT%]- oder [1&nbsp;%BANKRIGHT%]-Manöver ausführen."""
        '"Redline"':
           display_name: """„Rote Linie“"""
           # ship: """TIE/ca-Vergelter"""
           text: """Du kannst bis zu 2 Zielerfassungen aufrechterhalten. %LINEBREAK%Nachdem du eine Aktion durchgeführt hast, darfst du ein Ziel erfassen."""
        '"Scourge" Skutu':
           display_name: """„Geißel“ Skutu """
           # ship: """TIE/ln-Jäger"""
           text: """Solange du einen Angriff gegen einen Verteidiger in deinem %BULLSEYEARC% durchführst, wirf 1 zusätzlichen Angriffswürfel."""
        '"Vizier"':
           display_name: """„Wesir“"""
           # ship: """TIE-Schnitter"""
           text: """Nachdem du unter Verwendung deiner Schiffsfähigkeit <strong>Adaptive Querruder</strong> ein Manöver mit Geschwindigkeit 1 vollständig ausgeführt hast, darfst du eine %COORDINATE%-Aktion durchführen. Falls du das tust, überspringe deinen Schritt „Aktion durchführen“.%LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1&nbsp;%BANKLEFT%]-, [1&nbsp;%STRAIGHT%]- oder [1&nbsp;%BANKRIGHT%]-Manöver ausführen."""
        '"Wampa"':
           display_name: """„Wampa“"""
           # ship: """TIE/ln-Jäger"""
           text: """Solange du einen Angriff durchführst, darfst du 1&nbsp;%CHARGE% ausgeben, um 1&nbsp;zusätzlichen Angriffswürfel zu werfen.%LINEBREAK%Nach dem Verteidigen, verliere 1&nbsp;%CHARGE%."""
        '"Whisper"':
           display_name: """„Geflüster“"""
           # ship: """TIE/ph-Phantom"""
           text: """Nachdem du einen Angriff durchgeführt hast, der getroffen hat, erhalte 1 Ausweichmarker.%LINEBREAK%<strong>Stygium-Gitter:</strong> Nachdem du dich enttarnt hast, darfst du eine %EVADE%-Aktion durchführen. Zu Beginn der Endphase darfst du 1 Ausweichmarker ausgeben, um 1 Tarnungsmarker zu erhalten."""
        '"Zeb" Orrelios':
           display_name: """„Zeb“ Orrelios"""
           # ship: """Jagdshuttle"""
           text: """Solange du verteidigst, werden %CRIT%-Ergebnisse neutralisiert, bevor %HIT%-Ergebnisse neutralisiert werden.%LINEBREAK%<strong>Geladen und entsichert:</strong> Solange du angedockt bist, nachdem dein Trägerschiff einen %FRONTARC%-Primärangriff oder %TURRET%-Angriff durchgeführt hat, darf es einen Bonus-%REARARC%-Primärangriff durchführen."""
        '"Zeb" Orrelios (Sheathipede)':
           display_name: """„Zeb“ Orrelios (Sheathipede)"""
           # ship: """Raumfähre der Sheathipede-Klasse"""
           text: """Solange du verteidigst, werden %CRIT%-Ergebnisse neutralisiert, bevor %HIT%-Ergebnisse neutralisiert werden.%LINEBREAK%<strong>Kommunikationsantennen:</strong> Solange du angedockt bist, erhält dein Trägerschiff %COORDINATE%. Bevor dein Trägerschiff aktiviert wird, darf es eine %COORDINATE%-Aktion durchführen."""
        '"Zeb" Orrelios (TIE Fighter)':
           display_name: """„Zeb“ Orrelios (TIE Fighter)"""
           # ship: """TIE/ln-Jäger"""
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
           text: """ While you defend or perform an attack, if the enemy ship in your %FRONTARC%, you may spend 1 %FORCE% change 1 of your blank results to an %EVADE% or %HIT% result. """
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
        "Major Stridan":
           text: """ While you coordinate or resolve the effect of one of your upgrades, you may treat friendly ships at range 2-3 as being at range 0 or range 1. %LINEBREAK% LINKED BATTERY: While you perform a %CANNON% attack, roll 1 addtional die. """
            
            
    upgrade_translations =
        "0-0-0":
           display_name: """0-0-0"""
           text: """<i>Nur für Abschaum oder Staffel, die Darth Vader enthält</i>%LINEBREAK%Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in Reichweite 0-1 wählen. Falls du das tust, erhältst du 1 Berechnungsmarker, es sei denn, jenes Schiff entscheidet sich dafür, 1&nbsp;Stressmarker zu erhalten."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen Angriff durchführst, nachdem du Angriffswürfel geworfen hast, darfst du eine Art von grünen Markern benennen. Falls du das tust, erhalte 2 Ionenmarker und der Verteidiger kann während dieses Angriffs keine Marker der benannten Art ausgeben."""
        "Andrasta":
           display_name: """Andrasta"""
           # ship: """Patrouillenboot der Firespray-Klasse"""
           text: """<i>Fügt %RELOAD% hinzu</i>%LINEBREAK%<i>Nur für Abschaum</i>%LINEBREAK%Füge den %DEVICE%-Slot hinzu."""
        "Dauntless":
           display_name: """Dauntless"""
           # ship: """VT-49-Decimator"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Nachdem du ein Manöver teilweise ausgeführt hast, darfst du 1 weiße Aktion durchführen, wobei du jene Aktion behandelst, als wäre sie rot."""
        "Ghost":
           display_name: """Ghost"""
           # ship: """Leichter VCX-100-Frachter"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Du kannst 1 Jagdshuttle oder eine Raumfähre der Sheathipede-Klasse andocken lassen.%LINEBREAK%Deine angedockten Schiffe können nur von deinen hinteren Stoppern aus abgesetzt werden."""
        "Havoc":
           display_name: """Havoc"""
           # ship: """Scurrg-H-6-Bomber"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Entferne den %CREW%-Slot. Füge %SENSOR%- und %ASTROMECH%-Slots hinzu."""
        "Hound's Tooth":
           display_name: """Reißzahn"""
           # ship: """Leichter YV-666-Frachter"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%An dir kann 1&nbsp;Z-95-AF4-Kopfjäger andocken."""
        "IG-2000":
           display_name: """IG-2000"""
           # ship: """Aggressor-Angriffsjäger"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Du hast die Pilotenfähigkeit jedes anderen befreundeten Schiffes mit der Aufwertung <strong>IG-2000</strong>."""
        "Marauder":
           display_name: """Marodeur"""
           # ship: """Patrouillenboot der Firespray-Klasse"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen %REARARC%-Primärangriff durchführst, darfst du 1 Angriffswürfel neu werfen.%LINEBREAK%Füge den %GUNNER%-Slot hinzu."""
        "Millennium Falcon":
           display_name: """Millennium Falke"""
           # ship: """Modifizierter leichter YT-1300-Frachter"""
           text: """<i>Fügt %EVADE% hinzu</i>%LINEBREAK%<i>Nur für Rebellen</i>%LINEBREAK%Solange du verteidigst, falls du ausweichst, darfst du 1 Verteidigungswürfel neu werfen."""
        "Mist Hunter":
           display_name: """Nebeljäger"""
           # ship: """G-1A Sternenjäger"""
           text: """<i>Fügt %BARRELROLL% hinzu</i>%LINEBREAK%<i>Nur für Abschaum</i>%LINEBREAK%Füge den %CANNON%-Slot hinzu."""
        "Moldy Crow":
           display_name: """Moldy Crow"""
           # ship: """Leichter HWK-290-Frachter"""
           text: """<i>Nur für Rebellen oder Abschaum</i>%LINEBREAK%Erhalte eine %FRONTARC%-Primärwaffe mit einem Wert von 3.%LINEBREAK%Während der Endphase, entferne bis zu 2 Fokusmarker nicht."""
        "Outrider":
           display_name: """Outrider"""
           # ship: """Leichter YT-2400-Frachter"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Solange du einen versperrten Angriff durchführst, wirft der Verteidiger 1&nbsp;Verteidigungswürfel weniger.%LINEBREAK%Nachdem du ein Manöver vollständig ausgeführt hast, falls du dich durch ein Hindernis hindurchbewegt oder dich mit ihm überschnitten hast, darfst du 1 deiner roten oder orangefarbenen Marker entfernen."""
        "Phantom":
           display_name: """Phantom"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Du kannst in Reichweite 0-1 andocken."""
           # ship: ["""Jagdshuttle""", """Raumfähre der Sheathipede-Klasse"""]
        "Punishing One":
           display_name: """Vollstrecker Eins"""
           # ship: """JumpMaster 5000"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %FRONTARC% ist, wirf 1&nbsp;zusätzlichen Angriffswürfel.%LINEBREAK%Entferne den %CREW%-Slot. Füge den %ASTROMECH%-Slot hinzu."""
        "ST-321":
           display_name: """ST-321"""
           # ship: """T-4A-Raumfähre der Lambda-Klasse"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Nachdem du eine %COORDINATE%-Aktion durchgeführt hast, darfst du ein feindliches Schiff in Reichweite 0-3 des von dir koordinierten Schiffes wählen. Falls du das tust, erfasse jenes feindliche Schiff als Ziel, wobei du die Reichweitenbeschränkung ignorierst."""
        "Shadow Caster":
           display_name: """Shadow Caster"""
           # ship: """Jagdschiff der Lanzen-Klasse"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, der getroffen hat, falls der Verteidiger in deinem %SINGLETURRETARC% und in deinem %FRONTARC% ist, erhält der Verteidiger 1&nbsp;Fangstrahlmarker."""
        "Slave I":
           display_name: """Sklave I"""
           # ship: """Patrouillenboot der Firespray-Klasse"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du ein Wende­­manöver (%TURNLEFT% oder %TURNRIGHT%) oder Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) aufgedeckt hast, darfst du dein Rad auf das Manöver derselben Geschwindigkeit und Flugrichtung in der anderen Orientierung einstellen.%LINEBREAK%Füge den %TORPEDO%-Slot hinzu."""
        "Virago":
           display_name: """Virago"""
           # ship: """Angriffsplattform der Sternenviper-Klasse"""
           text: """Während der Endphase darfst du 1&nbsp;%CHARGE% ausgeben, um eine rote %BOOST%-Aktion durchzuführen.%LINEBREAK%Füge den %MODIFICATION%-Slot hinzu."""
        "Ablative Plating":
           display_name: """Ablative Panzerung"""
           text: """<i>Nur für großes Schiff oder mittleres Schiff</i>%LINEBREAK%Bevor du Schaden durch ein Hindernis oder die Detonation einer befreundeten Bombe erleiden würdest, darfst du 1&nbsp;%CHARGE% ausgeben. Falls du das tust, verhindere 1 Schaden."""
        "Admiral Sloane":
           display_name: """Admiral Sloane"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Nachdem ein anderes befreundetes Schiff in Reichweite 0-3 verteidigt hat, falls es zerstört ist, erhält der Angreifer 2 Stressmarker.%LINEBREAK%Solange ein befreundetes Schiff in Reichweite 0-3 einen Angriff gegen ein gestresstes Schiff durchführt, darf es 1 Angriffswürfel neu werfen."""
        "Adv. Proton Torpedoes":
           display_name: """Verstärkte Protonentorpedos"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1&nbsp;%CHARGE% aus. Ändere 1&nbsp;%HIT%-Ergebnis in ein&nbsp;%CRIT%-Ergebnis."""
        "Advanced SLAM":
           display_name: """Verbesserter SLAM"""
           text: """<i>Benötigt %SLAM%</i>%LINEBREAK%Nachdem du eine %SLAM%-Aktion durchgeführt hast, falls du das Manöver vollständig ausgeführt hast, darfst du eine weiße Aktion aus deiner Aktionsleiste durchführen, wobei du jene Aktion behandelst, als wäre sie rot."""
        "Advanced Sensors":
           display_name: """Verbesserte Sensoren"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du 1 Aktion durchführen.%LINEBREAK%Falls du das tust, kannst du während deiner Aktivierung keine weitere Aktion durchführen."""
        "Afterburners":
           display_name: """Nachbrenner"""
           text: """<i>Nur für kleines Schiff</i>%LINEBREAK%Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du 1&nbsp;%CHARGE% ausgeben, um eine %BOOST%-Aktion durchzuführen, auch solange du gestresst bist."""
        "Agent Kallus":
           display_name: """Agent Kallus"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%<strong>Aufbau:</strong> Ordne 1 feindlichen Schiff den Zustand <strong>Gejagt</strong> zu.%LINEBREAK%Solange du einen Angriff gegen ein Schiff mit dem Zustand <strong>Gejagt</strong> durchführst, darfst du 1 deiner %FOCUS%-Ergebnisse in ein %HIT%-Ergebnis ändern."""
        "Agile Gunner":
           display_name: """Wendiger Schütze"""
           text: """Während der Endphase darfst du deinen %SINGLETURRETARC%-Anzeiger drehen."""
        "BT-1":
           display_name: """BT-1"""
           text: """<i>Nur für Abschaum oder Staffel, die Darth Vader enthält</i>%LINEBREAK%Solange du einen Angriff durchführst, darfst du für jeden Stressmarker, den der Verteidiger hat, 1&nbsp;%HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern."""
        "Barrage Rockets":
           display_name: """Raketensalve"""
           text: """<strong>Angriff (</strong>%FOCUS%<strong>):</strong> Gib 1&nbsp;%CHARGE%&nbsp;aus. Falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 oder mehrere %CHARGE% ausgeben, um ebenso viele Angriffswürfel neu zu werfen."""
        "Baze Malbus":
           display_name: """Baze Malbus"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Solange du eine %FOCUS%-Aktion durchführst, darfst du sie behandeln, als wäre sie rot. Falls du das tust, erhalte 1 zusätzlichen Fokusmarker für jedes feindliche Schiff in Reichweite 0-1, bis zu einem Maximum von 2."""
        "Bistan":
           display_name: """Bistan"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Nachdem du einen Primärangriff durchgeführt hast, falls du fokussiert bist, darfst du einen Bonus-%SINGLETURRETARC%-Angriff gegen ein Schiff, das du in dieser Runde noch nicht angegriffen hast, durchführen."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%<strong>Aufbau:</strong> Beginne in der Reserve.%LINEBREAK%Am Ende des Aufbaus platziere dich selbst in Reichweite 0 eines Hindernisses und jenseits von Reichweite 3 aller feindlichen Schiffe."""
        "Bomblet Generator":
           display_name: """Streubombengenerator"""
           text: """<strong>Bombe</strong>%LINEBREAK%Während der Systemphase darfst du 1&nbsp;%CHARGE% ausgeben, um unter Verwendung der [1&nbsp;%STRAIGHT%]-Schablone eine Streubombe abzuwerfen.%LINEBREAK%Zu Beginn der Aktivierungsphase darfst du 1 Schild ausgeben, um 2&nbsp;%CHARGE% wiederherzustellen."""
        "Bossk":
           display_name: """Bossk"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du einen Primärangriff durchgeführt hast, der verfehlt hat, falls du nicht gestresst bist, <b>musst</b> du 1 Stressmarker erhalten, um einen Bonus-Primärangriff gegen dasselbe Ziel durchzuführen."""
        "C-3PO":
           display_name: """C-3PO"""
           text: """<i>Fügt %CALCULATE% hinzu</i>%LINEBREAK%<i>Nur für Rebellen</i>%LINEBREAK%Bevor du Verteidigungswürfel wirfst, darfst du 1&nbsp;Berechnungs­marker ausgeben, um laut eine Zahl von 1 oder höher zu raten. Falls du das tust und genau so viele %EVADE%-Ergebnisse wirfst, wie du geraten hast, füge 1&nbsp;%EVADE%-Ergebnis hinzu.%LINEBREAK%Nachdem du die %CALCULATE%-Aktion durchgeführt hast, erhalte 1&nbsp;%CALCULATE%-Marker"""
        "Cad Bane":
           display_name: """Cad Bane"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du ein Gerät abgeworfen oder gestartet hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Während der Systemphase darfst du 1 feindliches Schiff in Reichweite 1-2 wählen und laut eine Flugrichtung und Geschwindigkeit raten, dann sieh dir das Rad jenes Schiffes an. Falls du die Flugrichtung und Geschwindigkeit des gewählten Schiffes richtig geraten hast, darfst du dein Rad auf ein anderes Manöver einstellen."""
        "Chewbacca (Scum)":
           display_name: """Chewbacca (Scum)"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Zu Beginn der Endphase darfst du 1&nbsp;Fokusmarker ausgeben, um 1&nbsp;deiner offenen Schadenskarten zu reparieren."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Zu Beginn der Kampfphase darfst du 2 %CHARGE% ausgeben, um 1 offene Schadenskarte zu reparieren."""
        "Ciena Ree":
           display_name: """Ciena Ree"""
           text: """<i>Benötigt %COORDINATE% oder <r>%COORDINATE%</r></i>%LINEBREAK%<i>Nur für Imperium</i>%LINEBREAK%Nachdem du eine %COORDINATE%-Aktion durchgeführt hast, falls das von dir koordinierte Schiff eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hat, darf es 1&nbsp;Stressmarker erhalten, um sich um 90° zu drehen."""
        "Cikatro Vizago":
           display_name: """Cikatro Vizago"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Während der Endphase darfst du 2&nbsp;%ILLICIT%-Aufwertungen wählen, die befreundete Schiffe in Reichweite 0-1 ausgerüstet haben. Falls du das tust, darfst du diese Aufwertungen austauschen.%LINEBREAK%<strong>Spielende:</strong> Lege alle %ILLICIT%-Aufwertungen auf ihre ursprünglichen Schiffe zurück."""
        "Cloaking Device":
           display_name: """Tarngerät"""
           text: """<i>Nur für kleines Schiff oder mittleres Schiff</i>%LINEBREAK%<strong>Aktion:</strong> Gib 1&nbsp;%CHARGE% aus, um eine %CLOAK%-Aktion durchzuführen.%LINEBREAK%Zu Beginn der Planungsphase wirf 1&nbsp;Angriffswürfel. Bei einem %FOCUS%-Ergebnis, enttarne dich oder lege deinen Tarnungsmarker ab."""
        "Cluster Missiles":
           display_name: """Clusterraketen"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1&nbsp;%CHARGE% aus. Nach diesem Angriff darfst du diesen Angriff als Bonusangriff gegen ein anderes Ziel in Reichweite 0-1 des Verteidigers durchführen, wobei du die %LOCK%-Voraussetzung ignorierst."""
        "Collision Detector":
           display_name: """Kollisionssensor"""
           text: """Solange du Schub gibst oder eine Fassrolle fliegst, kannst du dich durch Hindernisse hindurch­bewegen und sie überschneiden.%LINEBREAK%Nachdem du dich durch ein Hindernis hindurchbewegt oder es überschnitten hast, darfst du 1&nbsp;%CHARGE% ausgeben, um seine Effekte bis zum Ende der Runde zu ignorieren."""
        "Composure":
           display_name: """Gelassenheit"""
           text: """<i>Benötigt <r>%FOCUS%</r> oder %FOCUS%</i>%LINEBREAK%Nachdem eine deiner Aktionen scheitert, falls du keine grünen Marker hast, darfst du eine %FOCUS%-Aktion durchführen."""
        "Concussion Missiles":
           display_name: """Erschütterungsraketen"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1&nbsp;%CHARGE%aus. Nachdem dieser Angriff getroffen hat, legt jedes Schiff in Reichweite 0-1 zum Verteidiger 1 seiner Schadenskarten offen."""
        "Conner Nets":
           display_name: """Connernetz"""
           text: """<strong>Mine</strong>%LINEBREAK%Während der Systemphase darfst du 1&nbsp;%CHARGE% ausgeben, um unter Verwendung der [1&nbsp;%STRAIGHT%]-Schablone ein Connernetz abzuwerfen.%LINEBREAK%Die %CHARGE% dieser Karte kann nicht wiederhergestellt werden."""
        "Contraband Cybernetics":
           display_name: """Illegale Kybernetik"""
           text: """Bevor du aktiviert wirst, darfst du 1&nbsp;%CHARGE% ausgeben. Falls du das tust, kannst du bis zum Ende der Runde Aktionen durchführen und rote Manöver ausführen, auch solange du gestresst bist."""
        "Crack Shot":
           display_name: """Meisterhafter Schuss"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, vor dem Schritt „Ergebnisse neutralisieren“, darfst du 1&nbsp;%CHARGE% ausgeben, um 1&nbsp;%EVADE%-Ergebnis zu negieren."""
        "Daredevil":
           display_name: """Draufgänger"""
           text: """<i>Benötigt %BOOST%</i>%LINEBREAK%<i>Nur für kleines Schiff</i>%LINEBREAK%Solange du eine weiße %BOOST%-Aktion durchführst, darfst du sie behandeln, als wäre sie rot, um stattdessen die [1&nbsp;%TURNLEFT%]- oder [1&nbsp;%TURNRIGHT%]-Schablone zu verwenden."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Zu Beginn der Kampfphase darfst du 1 Schiff in deinem Feuerwinkel in Reichweite 0-2 wählen und 1&nbsp;%FORCE% ausgeben. Falls du das tust, erleidet jenes Schiff 1&nbsp;%HIT%-Schaden, es sei denn, es entscheidet sich dafür, 1 grünen Marker zu"""
        "Deadman's Switch":
           display_name: """Totmannschalter"""
           text: """Nachdem du zerstört worden bist, erleidet jedes andere Schiff in Reichweite 0-1 1&nbsp;%HIT%-Schaden."""
        "Death Troopers":
           display_name: """Todestruppen"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Während der Aktivierungsphase können feindliche Schiffe in Reichweite 0-1 keine Stressmarker entfernen."""
        "Debris Gambit":
           display_name: """Trümmertanz"""
           text: """<i>Fügt <r>%EVADE%</r> hinzu</i>%LINEBREAK%<i>Nur für kleines Schiff oder mittleres Schiff</i>%LINEBREAK%Solange du eine rote %EVADE%-Aktion durchführst, falls ein Hindernis in Reichweite 0-1 ist, behandle die Aktion stattdessen, als wäre sie weiß."""
        "Dengar":
           display_name: """Dengar"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du verteidigt hast, falls der Angreifer in deinem Feuerwinkel ist, darfst du 1&nbsp;%CHARGE% ausgeben. Falls du das tust, wirf 1 Angriffswürfel, es sei denn, der Angreifer entscheidet sich dafür, 1 grünen Marker zu entfernen. Bei einem %HIT%- oder %CRIT%-Ergebnis erleidet der Angreifer 1&nbsp;%HIT%-Schaden."""
        "Director Krennic":
           display_name: """Direktor Krennic"""
           text: """<i>Fügt %LOCK% hinzu</i>%LINEBREAK%<i>Nur für Imperium</i>%LINEBREAK%<strong>Aufbau:</strong> Bevor die Streitkräfte platziert werden, ordne den Zustand <strong>Optimierter Prototyp</strong> einem anderen befreundeten Schiff zu."""
        "Dorsal Turret":
           display_name: """Dorsaler Geschützturm"""
           text: """<i>Fügt %ROTATEARC% hinzu</i>%LINEBREAK%<strong>Angriff</strong>"""
        "Electronic Baffle":
           display_name: """Elektronischer Dämpfer"""
           text: """Während der Endphase darfst du 1&nbsp;%HIT%-Schaden erleiden, um 1&nbsp;roten&nbsp;Marker zu entfernen."""
        "Elusive":
           display_name: """Schwer zu treffen"""
           text: """<i>Nur für kleines Schiff oder mittleres Schiff</i>%LINEBREAK%Solange du verteidigst, darfst du 1&nbsp;%CHARGE% ausgeben, um 1 Verteidigungswürfel neu zu werfen.%LINEBREAK%Nachdem du ein rotes Manöver vollständig ausgeführt hast, stelle 1&nbsp;%CHARGE% wieder her."""
        "Emperor Palpatine":
           display_name: """Imperator Palpatine"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Solange ein anderes befreundetes Schiff verteidigt oder einen Angriff durchführt, darfst du 1&nbsp;%FORCE%&nbsp;ausgeben, um 1 seiner Würfel so zu modifizieren, als hätte jenes Schiff 1&nbsp;%FORCE%&nbsp;ausgegeben."""
        "Engine Upgrade":
           display_name: """Verbessertes Triebwerk"""
           text: """Diese Aufwertungskarte hat variable Punktekosten.%LINEBREAK%<i>Fügt %BOOST% hinzu</i>%LINEBREAK%<i>Benötigt <r>%BOOST%</r></i>%LINEBREAK%<i class = flavor_text>Große Armeen wie das Militär des Galaktischen Imperiums haben meist standardisierte Triebwerke. Freischaffende Piloten und kleinere Organisationen ersetzen oft Energiekopplungen, """
        "Expert Handling":
           display_name: """Flugkunst"""
           text: """Diese Aufwertungskarte hat variable Punktekosten.%LINEBREAK%<i>Fügt %BARRELROLL% hinzu</i>%LINEBREAK%<i>Benötigt <r>%BARRELROLL%</r></i>%LINEBREAK%<i class = flavor_text>Auch schwere Jäger können in eine Fassrolle gezwungen werden, wobei es einen erfahrenen Piloten braucht, um die Maschine nicht übermäßig zu belasten und dem Feind kein leichtes Ziel zu bieten.</i>"""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Nachdem du einen Primärangriff durchgeführt hast, darfst du 1&nbsp;%FORCE% ausgeben, um einen Bonus-%SINGLETURRETARC%-Angriff aus einem %SINGLETURRETARC%, aus dem du in dieser Runde noch nicht angegriffen hast, durchzuführen. Falls du das tust und gestresst bist, darfst du 1 Angriffswürfel neu werfen."""
        "Fearless":
           display_name: """Furchtlos"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen %FRONTARC%-Primärangriff durchführst, falls die Angriffs­reichweite&nbsp;1 ist und du im %FRONTARC% des Verteidigers bist, darfst du 1 deiner Ergebnisse in ein %HIT%-Ergebnis ändern."""
        "Feedback Array":
           display_name: """Rückkopplungsfeld"""
           text: """Bevor du kämpfst, darfst du 1&nbsp;Ionenmarker und 1 Entwaffnet-Marker erhalten. Falls du das tust, erleidet jedes Schiff in Reichweite 0 1&nbsp;%HIT%-Schaden."""
        "Fifth Brother":
           display_name: """Fünfter Bruder"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Solange du einen Angriff durchführst, darfst du 1&nbsp;%FORCE%&nbsp;ausgeben, um 1&nbsp;deiner %FOCUS%-Ergebnisse in ein %CRIT%-Ergebnis zu ändern."""
        "Fire-Control System":
           display_name: """Feuerkontrollsystem"""
           text: """Solange du einen Angriff durchführst, falls du den Verteidiger als Ziel erfasst hast, darfst du 1&nbsp;Angriffswürfel neu werfen. Falls du das tust, kannst du während dieses Angriffs deine Zielerfassung nicht ausgeben."""
        "Freelance Slicer":
           display_name: """Freischaffender Hacker"""
           text: """Solange du verteidigst, bevor die Angriffswürfel geworfen werden, darfstdu eine Zielerfassung, die du auf dem Angreifer hast, ausgeben, um 1&nbsp;Angriffswürfel zu werfen. Falls du das tust, erhält der Angreifer 1&nbsp;Störsignalmarker. Dann, bei einem %HIT%- oder %CRIT%-Ergebnis, erhältst du 1&nbsp;Störsignalmarker."""
        'GNK "Gonk" Droid':
           display_name: """GNK-„Gonk“-Droide"""
           text: """<strong>Aufbau:</strong> Verliere 1&nbsp;%CHARGE%.%LINEBREAK%<strong>Aktion:</strong> Stelle 1&nbsp;%CHARGE% wieder her.%LINEBREAK%<strong>Aktion:</strong> Gib 1&nbsp;%CHARGE% aus, um 1 Schild wiederherzustellen."""
        "Grand Inquisitor":
           display_name: """Großinquisitor"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Nachdem ein feindliches Schiff in Reichweite 0-2 sein Rad aufgedeckt hat, darfst du 1&nbsp;%FORCE% ausgeben, um 1 weiße Aktion aus deiner Aktionsleiste durchzuführen, wobei du jene Aktion behandelst, als wäre sie rot."""
        "Grand Moff Tarkin":
           display_name: """Großmoff Tarkin"""
           text: """<i>Benötigt %LOCK% oder <r>%LOCK%</r></i>%LINEBREAK%<i>Nur für Imperium</i>%LINEBREAK%Während der Systemphase darfst du 2 %CHARGE% ausgeben. Falls du das tust, darf jedes befreundete Schiff ein Schiff, das du als Ziel erfasst hast, als Ziel erfassen."""
        "Greedo":
           display_name: """Greedo"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen Angriff durchführst, darfst du 1&nbsp;%CHARGE% ausgeben, um 1&nbsp;%HIT%-Ergebnis in ein %CRIT%-Ergebnis zu ändern.%LINEBREAK%Solange du verteidigst, falls deine %CHARGE% aktiv ist, darf der Angreifer 1&nbsp;%HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Während der Kampfphase, bei Initiative&nbsp;7, darfst du einen %SINGLETURRETARC%-Angriff durchführen. Du kannst in dieser Runde nicht noch einmal aus jenem %SINGLETURRETARC% angreifen."""
        "Han Solo (Scum)":
           display_name: """Han Solo (Scum)"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Bevor du kämpfst, darfst du eine rote&nbsp;%FOCUS%-Aktion durchführen."""
        "Heavy Laser Cannon":
           display_name: """Schwere Laserkanone"""
           text: """<strong>Angriff:</strong> Nach dem Schritt „Angriffswürfel modifizieren“, ändere alle %CRIT%-Ergebnisse in %HIT%-Ergebnisse."""
        "Heightened Perception":
           display_name: """Geschärfte Sinne"""
           text: """Zu Beginn der Kampfphase darfst du 1&nbsp;%FORCE% ausgeben. Falls du das tust, kämpfe in dieser Phase bei Initiative 7 anstatt bei deinem normalen Initiativwert."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Du kannst rote Manöver ausführen, auch solange du gestresst bist. Nachdem du ein rotes Manöver vollständig ausgeführt hast, falls du 3 oder mehr Stressmarker hast, entferne 1 Stressmarker und erleide 1&nbsp;%HIT%-Schaden."""
        "Homing Missiles":
           display_name: """Lenkraketen"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1&nbsp;%CHARGE% aus. Nachdem du den Verteidiger deklariert hast, darf der Verteidiger wählen, 1&nbsp;%HIT%-Schaden zu erleiden. Falls er das tut, überspringe die Schritte „Angriffswürfel“ und „Verteidigungswürfel“, und der Angriff wird behandelt, als hätte er getroffen."""
        "Hotshot Gunner":
           display_name: """Erstklassiger Bordschütze"""
           text: """Solange du einen %SINGLETURRETARC%-Angriff durchführst, nach dem Schritt „Verteidigungswürfel modifizieren“, entfernt der Verteidiger 1 Fokus- oder 1 Berechnungsmarker."""
        "Hull Upgrade":
           display_name: """Verstärkte Hülle"""
           text: """Diese Aufwertungskarte hat variable Punktekosten.%LINEBREAK%<i class = flavor_text>Auch wer sich keinen verbesserten Schildgenerator leisten kann, muss nicht auf erhöhten Schutz verzichten, sondern kann sich mit zusätzlichen Panzerplatten an der Schiffshülle behelfen.</i>"""
        "IG-88D":
           display_name: """IG-88D"""
           text: """<i>Fügt %CALCULATE% hinzu</i>%LINEBREAK%<i>Nur für Abschaum</i>%LINEBREAK%Du hast die Pilotenfähigkeit jedes anderen befreundeten Schiffes mit der Aufwertung <strong>IG-2000</strong>.%LINEBREAK%Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "ISB Slicer":
           display_name: """ISB-Hacker"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Während der Endphase können feindliche Schiffe in Reichweite 1-2 keine Störsignalmarker entfernen."""
        "Inertial Dampeners":
           display_name: """Trägheitsdämpfer"""
           text: """Bevor du ein Manöver ausführen würdest, darfst du 1 Schild ausgeben. Falls du das tust, führe anstatt des Manövers, das du aufgedeckt hast, ein weißes [0&nbsp;%STOP%]-Manöver aus, dann erhalte 1 Stressmarker."""
        "Informant":
           display_name: """Informant"""
           text: """<strong>Aufbau:</strong> Nachdem die Streitkräfte platziert worden sind, wähle 1&nbsp;feindliches Schiff und ordne ihm den Zustand Abhörgerät zu."""
        "Instinctive Aim":
           display_name: """Instinktives Zielen"""
           text: """Solange du einen Spezialangriff durchführst, darfst du 1&nbsp;%FORCE% ausgeben, um die %FOCUS%- oder %LOCK%-Voraussetzung zu ignorieren."""
        "Intimidation":
           display_name: """Furchteinflößend"""
           text: """Solange ein feindliches Schiff in Reichweite 0 verteidigt, wirft es 1&nbsp;Verteidigungswürfel weniger."""
        "Ion Cannon":
           display_name: """Ionenkanone"""
           text: """<strong>Angriff:</strong> Falls dieser Angriff trifft, gib 1&nbsp;%HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1&nbsp;%HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Ion Cannon Turret":
           display_name: """Ionengeschütz"""
           text: """<i>Fügt %ROTATEARC% hinzu</i>%LINEBREAK%<strong>Angriff:</strong> Falls dieser Angriff trifft, gib 1&nbsp;%HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1&nbsp;%HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Ion Missiles":
           display_name: """Ionenraketen"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1&nbsp;%CHARGE% aus. Falls dieser Angriff trifft, gib 1&nbsp;%HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1&nbsp;%HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Ion Torpedoes":
           display_name: """Ionentorpedos"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1&nbsp;%CHARGE% aus. Falls dieser Angriff trifft, gib 1&nbsp;%HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1&nbsp;%HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Jabba the Hutt":
           display_name: """Jabba der Hutt"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Während der Endphase darfst du 1 befreundetes Schiff in Reichweite 0-2 wählen und 1&nbsp;%CHARGE% ausgeben. Falls du das tust, stellt jenes Schiff 1&nbsp;%CHARGE% von 1&nbsp;seiner ausgerüsteten %ILLICIT%-Aufwertungen wieder her."""
        "Jamming Beam":
           display_name: """Störstrahl"""
           text: """<strong>Angriff:</strong> Falls dieser Angriff trifft, fügen alle %HIT%/%CRIT%-Ergebnisse Störsignalmarker anstatt Schaden zu."""
        "Juke":
           display_name: """Finte"""
           text: """<i>Nur für kleines Schiff oder mittleres Schiff</i>%LINEBREAK%Solange du einen Angriff durchführst, falls du ausweichst, darfst du 1&nbsp;der %EVADE%-Ergebnisse des Verteidigers in ein %FOCUS%-Ergebnis ändern."""
        "Jyn Erso":
           display_name: """Jyn Erso"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Falls ein befreundetes Schiff in Reichweite 0-3 einen Fokusmarker erhalten würde, darf es stattdessen 1&nbsp;Ausweichmarker erhalten."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Nachdem ein befreundetes Schiff in Reichweite 0-2 ein weißes Manöver vollständig ausgeführt hat, darfst du 1&nbsp;%FORCE% ausgeben, um 1&nbsp;Stressmarker von jenem Schiff zu entfernen."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Zu Beginn der Endphase darfst du 1&nbsp;feindliches Schiff in Reichweite 0-2 in deinem Feuerwinkel wählen. Falls du das tust, entfernt jenes Schiff seine Fangstrahlmarker nicht."""
        "L3-37":
           display_name: """L3-37"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%<strong>Aufbau:</strong> Rüste diese Seite offen aus.%LINEBREAK%Solange du verteidigst, darfst du diese Karte umdrehen. Fall du das tust, muss der Angreifer alle Angriffswürfel neu werfen. %LINEBREAK% Programmierung von L3-37: Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%)."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%<strong>Aktion:</strong> Wirf 2 Verteidigungswürfel. Erhalte 1 Fokusmarker für jedes %FOCUS%-Ergebnis. Erhalte 1&nbsp;Ausweichmarker für jedes %EVADE%-Ergebnis. Falls beide Ergebnisse Leerseiten sind, wählt der Gegenspieler Fokus- oder Ausweichmarker. Du erhältst 1 Marker"""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian (Scum)"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du die Würfel geworfen hast, darfst du 1 grünen Marker ausgeben um bis zu 2 deiner Ergebnisse neu zu werfen."""
        "Lando's Millennium Falcon":
           display_name: """Landos Millennium Falke"""
           # ship: """Modifizierter YT-1300-Frachter"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%1 Rettungskapsel darf bei dir andocken.%LINEBREAK%Solange ein Rettungskapsel bei dir angedockt ist, darfst du seine Schilde ausgeben, als wären sie auf deiner Schiffskarte.%LINEBREAK%Solange du einen Primärangriff gegen ein gestresstes Schiff durchführst, wirfst du 1 zusätzlichen Angriffswürfel."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du verteidigst, falls der Angreifer gestresst ist, darfst du 1 Stressmarker vom Angreifer entfernen, um 1 deiner Leerseiten/%FOCUS%-Ergebnisse in ein %EVADE%-Ergebnis zu ändern."""
        "Leia Organa":
           display_name: """Leia Organa"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Zu Beginn der Aktivierungsphase darfst du 3 %CHARGE% ausgeben. Während dieser Phase verringert jedes befreundete Schiff die Schwierigkeit seiner roten Manöver."""
        "Lone Wolf":
           display_name: """Einsamer Wolf"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls keine anderen befreundeten Schiffe in Reichweite 0-2 sind, darfst du 1&nbsp;%CHARGE% ausgeben, um 1 deiner Würfel neu zu werfen."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Zu Beginn der Kampfphase darfst du 1&nbsp;%FORCE% ausgeben, um deinen %SINGLETURRETARC%-Anzeiger zu rotieren."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Nachdem du verteidigt hast, falls der Angriff getroffen hat, darfst du den Angreifer als Ziel erfassen."""
        "Marksmanship":
           display_name: """Treffsicherheit"""
           text: """Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1&nbsp;%HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern."""
        "Maul":
           display_name: """Maul"""
           text: """<i>Nur für Abschaum oder Staffel, die Ezra Bridger enthält oder Staffel, die Ezra Bridger (Sheathipede) enthält oder Staffel, die Ezra Bridger (TIE Fighter) enthält</i>%LINEBREAK%Nachdem du Schaden erlitten hast, darfst du 1&nbsp;Stress­marker erhalten, um 1&nbsp;%FORCE% wiederherzustellen.%LINEBREAK%Du kannst „Dunkle Seite“-Aufwertungen ausrüsten."""
        "Minister Tua":
           display_name: """Ministerin Tua"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Zu Beginn der Kampfphase, falls du beschädigt bist, darfst du eine rote %REINFORCE%-Aktion durchführen."""
        "Moff Jerjerrod":
           display_name: """Moff Jerjerrod"""
           text: """<i>Benötigt %COORDINATE% oder <r>%COORDINATE%</r></i>%LINEBREAK%<i>Nur für Imperium</i>%LINEBREAK%Während der Systemphase darfst du 2 %CHARGE% ausgeben. Falls du das tust, wähle die [1&nbsp;%BANKLEFT%]-, [1&nbsp;%STRAIGHT%]- oder [1&nbsp;%BANKRIGHT%]-Schablone. Jedes befreundete Schiff darf unter Verwendung jener Schablone eine rote %BOOST%-Aktion durchführen."""
        "Munitions Failsafe":
           display_name: """Ausfallsichere Munition"""
           text: """Solange du einen %TORPEDO%- oder %MISSILE%-Angriff durchführst, nachdem du die Angriffswürfel geworfen hast, darfst du alle Würfelergebnisse negieren, um 1&nbsp;%CHARGE% wiederherzustellen, die du als Kosten für den Angriff ausgegeben hast."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%)."""
        "Novice Technician":
           display_name: """Unerfahrener Techniker"""
           text: """Am Ende der Runde darfst du 1&nbsp;Angriffswürfel werfen, um 1&nbsp;offene Schadenskarte zu reparieren. Dann, bei einem %HIT%-Ergebnis, lege 1&nbsp;Schadenskarte offen."""
        "Os-1 Arsenal Loadout":
           display_name: """Os-1-Waffenarsenal"""
           # ship: """Sternflügler der Alpha-Klasse"""
           text: """Solange du genau 1 Entwaffnet-Marker hast, kannst du trotzdem %TORPEDO%- und %MISSILE%-Angriffe gegen Ziele durchführen, die du als Ziel erfasst hast. Falls du das tust, kannst du während des Angriffs deine Zielerfassung nicht ausgeben.%LINEBREAK%Füge %TORPEDO%- und %MISSILE%-Slots hinzu."""
        "Outmaneuver":
           display_name: """Ausmanövrieren"""
           text: """Solange du einen %FRONTARC%-Angriff durchführst, falls du nicht im Feuerwinkel des Verteidigers bist, wirft der Verteidiger 1&nbsp;Verteidigungswürfel weniger."""
        "Perceptive Copilot":
           display_name: """Aufmerksamer Co-Pilot"""
           text: """Nachdem du eine %FOCUS%-Aktion durchgeführt hast, erhalte 1 Fokusmarker."""
        "Pivot Wing":
           display_name: """Schwenkflügel"""
           # ship: """UT-60D-U-Flügler"""
           text: """<strong>Geschlossen:</strong> Solange du verteidigst, wirf 1&nbsp;Verteidigungswürfel weniger.%LINEBREAK%Nachdem du ein [0&nbsp;%STOP%]-Manöver ausgeführt hast, darfst du dein Schiff um 90° oder um 180° drehen.%LINEBREAK%Bevor du aktiviert wirst, darfst du diese Karte umdrehen.%LINEBREAK%<strong>Geöffnet:</strong> Bevor du aktiviert wirst, darfst du diese Karte umdrehen."""
        "Predator":
           display_name: """Jagdinstinkt"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1&nbsp;Angriffswürfel neu werfen."""
        "Proton Bombs":
           display_name: """Protonenbomben"""
           text: """<strong>Bombe</strong>%LINEBREAK%Während der Systemphase darfst du 1&nbsp;%CHARGE% ausgeben, um unter Verwendung der [1&nbsp;%STRAIGHT%]-Schablone eine Protonenbombe abzuwerfen."""
        "Proton Rockets":
           display_name: """Protonenraketen"""
           text: """<strong>Angriff (</strong>%FOCUS%<strong>):</strong> Gib 1&nbsp;%CHARGE%&nbsp;aus."""
        "Proton Torpedoes":
           display_name: """Protonentorpedos"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1&nbsp;%CHARGE% aus. Ändere 1&nbsp;%HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Proximity Mines":
           display_name: """Annäherungsminen"""
           text: """<strong>Mine</strong>%LINEBREAK%Während der Systemphase darfst du 1&nbsp;%CHARGE% ausgeben, um unter Verwendung der [1&nbsp;%STRAIGHT%]-Schablone eine Annäherungsmine abzuwerfen.%LINEBREAK%Die %CHARGE% dieser Karte können nicht wiederhergestellt werden."""
        "Qi'ra":
           display_name: """Qi'ra"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du dich bewegst und Angriffe durchführst, ignorierst du Hindernisse, die du als Ziel erfasst hast."""
        "R2 Astromech":
           display_name: """R2-Astromechdroide"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du 1&nbsp;%CHARGE% ausgeben und 1 Entwaffnet-Marker erhalten, um 1&nbsp;Schild wiederherzustellen."""
        "R2-D2 (Crew)":
           display_name: """R2-D2 (Crew)"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Während der Endphase, falls du beschädigt bist und keine Schilde hast, darfst du 1&nbsp;Angriffswürfel werfen, um 1&nbsp;Schild wiederherzustellen. Bei einem %HIT%-Ergebnis lege 1 deiner Schadenskarten offen."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Nachdem du dein Rad aufgedeckt hast, darfst du 1&nbsp;%CHARGE% ausgeben und 1 Entwaffnet-Marker erhalten, um 1&nbsp;Schild wiederherzustellen."""
        "R3 Astromech":
           display_name: """R3-Astromechdroide"""
           text: """Du kannst bis zu 2 Zielerfassungen aufrechterhalten. Jede Zielerfassung muss ein anderes Objekt als Ziel haben.%LINEBREAK%Nachdem du eine %LOCK%-Aktion durchgeführt hast, darfst du ein Ziel erfassen."""
        "R4 Astromech":
           display_name: """R4-Astromechdroide"""
           text: """<i>Nur für kleines Schiff</i>%LINEBREAK%Verringere die Schwierigkeit deiner Basismanöver mit Geschwindigkeit 1-2 (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%)."""
        "R5 Astromech":
           display_name: """R5-Astromechdroide"""
           text: """<strong>Aktion:</strong> Gib 1&nbsp;%CHARGE% aus, um 1 verdeckte Schadenskarte zu reparieren.%LINEBREAK%<strong>Aktion:</strong> Repariere 1 offene <strong>Schiff</strong>-Schadenskarte."""
        "R5-D8":
           display_name: """R5-D8"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%<strong>Aktion:</strong> Gib 1&nbsp;%CHARGE% aus, um 1 verdeckte Schadenskarte zu reparieren.%LINEBREAK%<strong>Aktion:</strong> Repariere 1 offene <strong>Schiff</strong>-Schadenskarte."""
        "R5-P8":
           display_name: """R5-P8"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen Angriff gegen einen Verteidiger in deinem %FRONTARC% durchführst, darfst du 1&nbsp;%CHARGE% ausgeben, um 1 Angriffswürfel neu zu werfen. Falls das neugeworfene Ergebnis ein %CRIT% ist, erleide 1&nbsp;%CRIT%-Schaden."""
        "R5-TK":
           display_name: """R5-TK"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Du kannst Angriffe gegen befreundete Schiffe durchführen."""
        "Rigged Cargo Chute":
           display_name: """Manipulierte Frachtrampe"""
           text: """<i>Nur für großes Schiff oder mittleres Schiff</i>%LINEBREAK%<strong>Aktion:</strong> Gib 1&nbsp;%CHARGE% aus. Wirf unter Verwendung der [1&nbsp;%STRAIGHT%]-Schablone 1 freie Fracht ab."""
        "Ruthless":
           display_name: """Skrupellos"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Solange du einen Angriff durchführst, darfst du ein anderes befreundetes Schiff in Reichweite 0-1 zum Verteidiger wählen. Falls du das tust, erleidet jenes Schiff 1&nbsp;%HIT%-Schaden und du darfst 1 deiner Würfelergebnisse in ein %HIT%-Ergebnis ändern."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%<strong>Aufbau:</strong> Platziere 1 Ionen-, 1&nbsp;Störsignal-, 1&nbsp;Stress- und 1&nbsp;Fangstrahlmarker auf dieser Karte. %LINEBREAK%Nachdem ein Schiff den Effekt einer befreundeten Bombe erlitten hat, darfst du 1 Ionen-, Störsignal-, Stress- oder Fangstrahlmarker von dieser Karte entfernen. Falls du das tust, erhält jenes Schiff einen passenden Marker."""
        "Saturation Salvo":
           display_name: """Flächenangriff"""
           text: """<i>Benötigt %RELOAD% oder <r>%RELOAD%</r></i>%LINEBREAK%Solange du einen %TORPEDO%- oder %MISSILE%-Angriff durchführst, darfst du 1&nbsp;%CHARGE% von jener Aufwertung ausgeben. Falls du das tust, wähle 2 Verteidigungswürfel. Der Verteidiger muss jene Würfel neu werfen."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Solange du einen Angriff durchführst, darfst du 1&nbsp;%HIT%-Schaden erleiden, um alle deine %FOCUS%-Ergebnisse in %CRIT%-Ergebnisse zu ändern."""
        "Seasoned Navigator":
           display_name: """Erfahrener Navigator"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du dein Rad auf ein anderes nicht-rotes Manöver derselben Geschwindigkeit einstellen. Solange du jenes Manöver ausführst, erhöhe seine Schwierigkeit."""
        "Seismic Charges":
           display_name: """Seismische Bomben"""
           text: """<strong>Bombe</strong>%LINEBREAK%Während der Systemphase darfst du 1&nbsp;%CHARGE% ausgeben, um unter Verwendung der [1&nbsp;%STRAIGHT%]-Schablone eine Seismische Bombe abzuwerfen."""
        "Selfless":
           display_name: """Selbstlos"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Solange ein anderes befreundetes Schiff in Reichweite 0-1 verteidigt, vor dem Schritt „Ergebnisse neutralisieren“, falls du im Angriffswinkel bist, darfst du 1&nbsp;%CRIT%-Schaden erleiden, um 1&nbsp;%CRIT%-Ergebnis zu negieren."""
        "Sense":
           display_name: """Gespür"""
           text: """Während der Systemphase darfst du 1 Schiff in Reichweite 0-1 wählen und sein Rad ansehen. Falls du 1&nbsp;%FORCE% ausgibst, darfst du stattdessen ein Schiff in Reichweite 0-3 wählen."""
        "Servomotor S-Foils":
           display_name: """Servomotorische S-Flügel"""
           # ship: """T-65-X-Flügler"""
           text: """<strong>Geschlossen:</strong><i>Fügt %FOCUS%-><r>%BOOST%</r> hinzu</i>%LINEBREAK%<i>Fügt %BOOST% hinzu</i>%LINEBREAK%Solange du einen Primärangriff durchführst, wirf 1&nbsp;Angriffswürfel weniger.%LINEBREAK%Bevor du aktiviert wirst, darfst du diese Karte umdrehen.%LINEBREAK%<strong>Geöffnet:</strong>Bevor du aktiviert wirst, darfst du diese Karte umdrehen."""
        "Seventh Sister":
           display_name: """Siebte Schwester"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Falls ein feindliches Schiff in Reichweite 0-1 einen Stressmarker erhalten würde, darfst du 1&nbsp;%FORCE% ausgeben, um es stattdessen 1 Störsignal- oder 1 Fangstrahlmarker erhalten zu lassen."""
        "Shield Upgrade":
           display_name: """Verbesserte Schilde"""
           text: """Diese Aufwertungskarte hat variable Punktekosten.%LINEBREAK%<i class = flavor_text>Deflektor­schilde sind der wichtigste Verteidigungsmechanismus der meisten Raumschiffe, abgesehen von extrem leichten Jägern. Eine Verbesserung der Schildkapazität ist eine kostspielige, aber durchaus """
        "Skilled Bombardier":
           display_name: """Versierte Bombenschützin"""
           text: """Falls du ein Gerät abwerfen oder starten würdest, darfst du eine Schablone mit gleicher Flugrichtung und einer um 1 höheren oder niedrigeren Geschwindigkeit verwenden."""
        "Squad Leader":
           display_name: """Staffelführer"""
           text: """<i>Fügt <r>%COORDINATE%</r> hinzu</i>%LINEBREAK%Solange du koordinierst, kann das von dir gewählte Schiff eine Aktion nur dann durchführen, falls jene Aktion auch in deiner Aktionsleiste ist."""
        "Static Discharge Vanes":
           display_name: """Elektrostatischer Entlader"""
           text: """Falls du einen Ionen- oder Störsignal-marker erhalten würdest, darfst du ein Schiff in Reichweite 0-1 wählen. Falls du das tust, erhalte 1 Stressmarker und transferiere 1 Ionen- oder Störsignalmarker auf jenes Schiff."""
        "Stealth Device":
           display_name: """Tarnvorrichtung"""
           text: """Diese Aufwertungskarte hat variable Punktekosten.%LINEBREAK%Solange du verteidigst, falls deine %CHARGE% aktiv ist, wirf 1&nbsp;zusätzlichen Verteidigungswürfel.%LINEBREAK%Nachdem du Schaden erlitten hast, verliere 1&nbsp;%CHARGE%."""
        "Supernatural Reflexes":
           display_name: """Übernatürliche Reflexe"""
           text: """<i>Nur für kleines Schiff</i>%LINEBREAK%Bevor du aktiviert wirst, darfst du 1&nbsp;%FORCE% ausgeben, um eine %BARRELROLL%- oder %BOOST%-Aktion durchzuführen. Dann, falls du eine Aktion durchgeführt hast, die nicht in deiner Aktionsleiste ist, erleide 1&nbsp;%HIT%-Schaden."""
        "Swarm Tactics":
           display_name: """Schwarmtaktik"""
           text: """Zu Beginn der Kampfphase darfst du 1 befreundetes Schiff in Reichweite 1 wählen. Falls du das tust, behandelt jenes Schiff seine Initiative bis zum Ende der Runde so, als würde sie deiner Initiative entsprechen."""
        "Tactical Officer":
           display_name: """Taktikoffizier"""
           text: """<i>Fügt %COORDINATE% hinzu</i>%LINEBREAK%<i>Benötigt <r>%COORDINATE%</r></i>%LINEBREAK%<i class = flavor_text>In den Wirren einer Raumschlacht kann ein einzelner Befehl über Sieg oder totale Auslöschung entscheiden.</i>"""
        "Tactical Scrambler":
           display_name: """Taktischer Scrambler"""
           text: """<i>Nur für großes Schiff oder mittleres Schiff</i>%LINEBREAK%Solange du den Angriff eines feindlichen Schiffes versperrst, wirft der Verteidiger 1&nbsp;zusätzlichen Verteidigungswürfel."""
        "Tobias Beckett":
           display_name: """Tobias Beckett"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%<strong>Aufbau:</strong> Nach dem Platzieren der Streitkräfte darfst du 1&nbsp;Hindernis im Spielbereich wählen. Falls du das tust, platziere es irgendwo im Spielbereich, jenseits von Reichweite 2 zu den Spielfeldecken und Schiffen und jenseits von Reichweite&nbsp;1 zu anderen Hindernissen."""
        "Tractor Beam":
           display_name: """Fangstrahl"""
           text: """<strong>Angriff:</strong> Falls dieser Angriff trifft, fügen alle %HIT%/%CRIT%-Ergebnisse Fangstrahlmarker anstatt Schaden zu."""
        "Trajectory Simulator":
           display_name: """Flugbahnsimulator"""
           text: """Während der Systemphase, falls du eine Bombe abwerfen oder starten würdest, darfst du sie stattdessen unter Verwendung der [5&nbsp;%STRAIGHT%]-Schablone starten."""
        "Trick Shot":
           display_name: """Trickschuss"""
           text: """Solange du einen Angriff durchführst, der durch ein Hindernis versperrt ist, wirf 1 zusätzlichen Angriffswürfel."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du ein Manöver teilweise ausgeführt hast, darfst du 1&nbsp;%HIT%-Schaden erleiden, um 1 weiße Aktion durchzuführen."""
        "Veteran Tail Gunner":
           display_name: """Kampferprobter Heckschütze"""
           text: """Nachdem du einen %FRONTARC%-Primärangriff durchgeführt hast, darfst du einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Veteran Turret Gunner":
           display_name: """Kampferprobter Geschützkanonier"""
           text: """<i>Benötigt <r>%ROTATEARC%</r> oder %ROTATEARC%</i>%LINEBREAK%Nachdem du einen Primärangriff durchgeführt hast, darfst du unter Verwendung eines %SINGLETURRETARC%, aus dem du in dieser Runde noch nicht angegriffen hast, einen Bonus-%SINGLETURRETARC%-Angriff durchführen."""
        "Xg-1 Assault Configuration":
           display_name: """Xg-1-Angriffskonfiguration"""
           # ship: """Sternflügler der Alpha-Klasse"""
           text: """Solange du genau 1 Entwaffnet-Marker hast, kannst du trotzdem %CANNON%-Angriffe durchführen. Solange du einen %CANNON%-Angriff durchführst, solange du entwaffnet bist, wirf maximal 3 Angriffswürfel.%LINEBREAK%Füge einen %CANNON%-Slot hinzu."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen Angriff durchführst, falls du nicht gestresst bist, darfst du 1 Verteidigungswürfel wählen und 1 Stressmarker erhalten. Falls du das tust, muss der Verteidiger jenen Würfel neu werfen."""
        '"Chopper" (Crew)':
           display_name: """„Chopper“ (Crew)"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Während des Schrittes „Aktion durchführen“ darfst du 1 Aktion durchführen, auch solange du gestresst bist. Nachdem du eine Aktion durchgeführt hast, solange du gestresst bist, erleide 1&nbsp;%HIT%-Schaden, es sei denn, du legst 1&nbsp;deiner Schadenskarten offen."""
        '"Chopper" (Astromech)':
           display_name: """„Chopper“ (Astromech)"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%<strong>Aktion:</strong> Gib 1 nicht-wiederkehrende %CHARGE% von einer anderen ausgerüsteten Aufwertung aus, um 1 Schild wiederherzustellen."""
        '"Genius"':
           display_name: """„Genie“"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du ein Manöver vollständig ausgeführt hast, falls du in dieser Runde noch kein Gerät abgeworfen oder gestartet hast, darfst du 1&nbsp;Bombe abwerfen."""
        '"Zeb" Orrelios':
           display_name: """„Zeb“ Orrelios"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Du kannst Primärangriffe in Reichweite 0 durchführen. Feindliche Schiffe in Reichweite 0 können Primärangriffe gegen dich durchführen."""

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
        "Kylo Ren":
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
        "Rey":
           text: """ ... defend or ... If the ... in your %SINGLETURRETARC% ... 1 %FORCE% to ... 1 of your blank results to a %EVADE% or %HIT% result. """
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
            
    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, condition_translations,  
