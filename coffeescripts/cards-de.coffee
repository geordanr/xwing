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
            "Kein #{translator language, 'slot', slot} Aufwertungskarte"
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
        '.hide-authenticated' : '<i class="fa fa-sign-in hidden-phone hidden-tablet"></i>Anmelden'
        '.show-authenticated' : '<i class="fa fa-sign-out hidden-phone hidden-tablet"></i>Abmelden'
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
        "Edrio Two-Tubes":
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
        "Han Solo (Scum)":
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
           name: """0-0-0"""
           text: """Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in Reichweite 0–1 wählen. Falls du das tust, erhältst du 1 Berechnungsmarker, es sei denn, jenes Schiff entscheidet sich dafür, 1 Stressmarker zu erhalten."""
        "4-LOM":
           name: """4-LOM"""
           text: """Solange du einen Angriff durchführst, nachdem du Angriffswürfel geworfen hast, darfst du eine Art von grünen Markern benennen. Falls du das tust, erhalte 2 Ionenmarker und der Verteidiger kann während dieses Angriffs keine Marker der benannten Art ausgeben."""
        "Andrasta":
           name: """Andrasta"""
           text: """Füge die %RELOAD%-Aktion hinzu. %LINEBREAK%Füge den %DEVICE%-Slot hinzu."""
        "Dauntless":
           name: """Dauntless"""
           text: """Nachdem du ein Manöver teilweise ausgeführt hast, darfst du 1 weiße Aktion durchführen, wobei du jene Aktion behandelst, als wäre sie rot."""
        "Ghost":
           name: """Ghost"""
           text: """Du kannst 1 Jagdshuttle oder eine Raumfähre der Sheathipede-Klasse andocken lassen.%LINEBREAK%Deine angedockten Schiffe können nur von deinen hinteren Stoppern aus abgesetzt werden."""
        "Havoc":
           name: """Havoc"""
           text: """Entferne den %CREW%-Slot. Füge %SENSOR%- und %ASTROMECH%-Slots hinzu."""
        "Hound's Tooth":
           name: """Reißzahn"""
           text: """An dir kann 1 Z-95-AF4-Kopfjäger andocken."""
        "IG-2000":
           name: """IG-2000"""
           text: """Du hast die Pilotenfähigkeit jedes anderen befreundeten Schiffes mit der Aufwertung IG-2000."""
        "Marauder":
           name: """Marodeur"""
           text: """Solange du einen %REARARC%-Primärangriff durchführst, darfst du 1 Angriffswürfel neu werfen.%LINEBREAK%Füge den %GUNNER%-Slot hinzu."""
        "Millennium Falcon":
           name: """Millennium Falke"""
           text: """Füge die %EVADE%-Aktion hinzu. %LINEBREAK%Solange du verteidigst, falls du ausweichst, darfst du 1 Verteidigungswürfel neu werfen."""
        "Mist Hunter":
           name: """Nebeljäger"""
           text: """Füge die %BARRELROLL%-Aktion hinzu. %LINEBREAK%Füge den %CANNON%-Slot hinzu."""
        "Moldy Crow":
           name: """Moldy Crow"""
           text: """Erhalte eine %FRONTARC%-Primärwaffe mit einem Wert von 3.%LINEBREAK%Während der Endphase, entferne bis zu 2 Fokusmarker nicht."""
        "Outrider":
           name: """Outrider"""
           text: """Solange du einen versperrten Angriff durchführst, wirft der Verteidiger 1 Verteidigungswürfel weniger.%LINEBREAK%Nachdem du ein Manöver vollständig ausgeführt hast, falls du dich durch ein Hindernis hindurchbewegt oder dich mit ihm überschnitten hast, darfst du 1 deiner roten oder orangefarbenen Marker entfernen."""
        "Phantom":
           name: """Phantom"""
           text: """Du kannst in Reichweite 0–1 andocken."""
        "Punishing One":
           name: """Vollstrecker Eins"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %FRONTARC% ist, wirf 1 zusätzlichen Angriffswürfel.%LINEBREAK%Entferne den %CREW%-Slot. Füge den %ASTROMECH%-Slot hinzu."""
        "ST-321":
           name: """ST-321"""
           text: """Nachdem du eine %COORDINATE%-Aktion durchgeführt hast, darfst du ein feindliches Schiff in Reichweite 0–3 des von dir koordinierten Schiffes wählen. Falls du das tust, erfasse jenes feindliche Schiff als Ziel, wobei du die Reichweitenbeschränkung ignorierst."""
        "Shadow Caster":
           name: """Shadow Caster"""
           text: """Nachdem du einen Angriff durchgeführt hast, der getroffen hat, falls der Verteidiger in deinem %SINGLETURRETARC% und in deinem %FRONTARC% ist, erhält der Verteidiger 1 Fangstrahlmarker."""
        "Slave I":
           name: """Sklave I"""
           text: """Nachdem du ein Wende­­manöver (%TURNLEFT% oder %TURNRIGHT%) oder Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) aufgedeckt hast, darfst du dein Rad auf das Manöver derselben Geschwindigkeit und Flugrichtung in der anderen Orientierung einstellen.%LINEBREAK%Füge den %TORPEDO%-Slot hinzu."""
        "Virago":
           name: """Virago"""
           text: """Während der Endphase darfst du 1 %CHARGE% ausgeben, um eine rote %BOOST%-Aktion durchzuführen.%LINEBREAK%Füge den %MODIFICATION%-Slot hinzu."""
        "Ablative Plating":
           name: """Ablative Panzerung"""
           text: """Bevor du Schaden durch ein Hindernis oder die Detonation einer befreundeten Bombe erleiden würdest, darfst du 1 %CHARGE% ausgeben. Falls du das tust, verhindere 1 Schaden."""
        "Admiral Sloane":
           name: """Admiral Sloane"""
           text: """Nachdem ein anderes befreundetes Schiff in Reichweite 0–3 verteidigt hat, falls es zerstört ist, erhält der Angreifer 2 Stressmarker.%LINEBREAK%Solange ein befreundetes Schiff in Reichweite 0–3 einen Angriff gegen ein gestresstes Schiff durchführt, darf es 1 Angriffswürfel neu werfen."""
        "Adv. Proton Torpedoes":
           name: """Verstärkte Protonentorpedos"""
           text: """Angriff (%LOCK%): Gib 1 %CHARGE% aus. Ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Advanced SLAM":
           name: """Verbesserter SLAM"""
           text: """Nachdem du eine %SLAM%-Aktion durchgeführt hast, falls du das Manöver vollständig ausgeführt hast, darfst du eine weiße Aktion aus deiner Aktionsleiste durchführen, wobei du jene Aktion behandelst, als wäre sie rot."""
        "Advanced Sensors":
           name: """Verbesserte Sensoren"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du 1 Aktion durchführen.%LINEBREAK%Falls du das tust, kannst du während deiner Aktivierung keine weitere Aktion durchführen."""
        "Afterburners":
           name: """Nachbrenner"""
           text: """Nachdem du ein Manöver mit Geschwindigkeit 3–5 vollständig ausgeführt hast, darfst du 1 %CHARGE% ausgeben, um eine %BOOST%-Aktion durchzuführen, auch solange du gestresst bist."""
        "Agent Kallus":
           name: """Agent Kallus"""
           text: """Aufbau: Ordne 1 feindlichen Schiff den Zustand Gejagt zu.%LINEBREAK%Solange du einen Angriff gegen ein Schiff mit dem Zustand Gejagt durchführst, darfst du 1 deiner %FOCUS%-Ergebnisse in ein %HIT%-Ergebnis ändern."""
        "Agile Gunner":
           name: """Wendiger Schütze"""
           text: """Während der Endphase darfst du deinen %SINGLETURRETARC%-Anzeiger drehen."""
        "BT-1":
           name: """BT-1"""
           text: """Solange du einen Angriff durchführst, darfst du für jeden Stressmarker, den der Verteidiger hat, 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern."""
        "Barrage Rockets":
           name: """Raketensalve"""
           text: """Angriff (%FOCUS%): Gib 1 %CHARGE% aus. Falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 oder mehrere %CHARGE% ausgeben, um ebenso viele Angriffswürfel neu zu werfen."""
        "Baze Malbus":
           name: """Baze Malbus"""
           text: """Solange du eine %FOCUS%-Aktion durchführst, darfst du sie behandeln, als wäre sie rot. Falls du das tust, erhalte 1 zusätzlichen Fokusmarker für jedes feindliche Schiff in Reichweite 0–1, bis zu einem Maximum von 2."""
        "Bistan":
           name: """Bistan"""
           text: """Nachdem du einen Primärangriff durchgeführt hast, falls du fokussiert bist, darfst du einen Bonus-%SINGLETURRETARC%-Angriff gegen ein Schiff, das du in dieser Runde noch nicht angegriffen hast, durchführen."""
        "Boba Fett":
           name: """Boba Fett"""
           text: """Aufbau: Beginne in der Reserve.%LINEBREAK%Am Ende des Aufbaus platziere dich selbst in Reichweite 0 eines Hindernisses und jenseits von Reichweite 3 aller feindlichen Schiffe."""
        "Bomblet Generator":
           name: """Streubombengenerator"""
           text: """Bombe%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone eine Streubombe abzuwerfen.%LINEBREAK%Zu Beginn der Aktivierungsphase darfst du 1 Schild ausgeben, um 2 %CHARGE% wiederherzustellen."""
        "Bossk":
           name: """Bossk"""
           text: """Nachdem du einen Primärangriff durchgeführt hast, der verfehlt hat, falls du nicht gestresst bist, musst du 1 Stressmarker erhalten, um einen Bonus-Primärangriff gegen dasselbe Ziel durchzuführen."""
        "C-3PO":
           name: """C-3PO"""
           text: """Füge die %CALCULATE%-Aktion hinzu. %LINEBREAK%Bevor du Verteidigungswürfel wirfst, darfst du 1 Berechnungs­marker ausgeben, um laut eine Zahl von 1 oder höher zu raten. Falls du das tust und genau so viele %EVADE%-Ergebnisse wirfst, wie du geraten hast, füge 1 %EVADE%-Ergebnis hinzu.%LINEBREAK%Nachdem du die %CALCULATE%-Aktion"""
        "Cad Bane":
           name: """Cad Bane"""
           text: """Nachdem du ein Gerät abgeworfen oder gestartet hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Cassian Andor":
           name: """Cassian Andor"""
           text: """Während der Systemphase darfst du 1 feindliches Schiff in Reichweite 1–2 wählen und laut eine Flugrichtung und Geschwindigkeit raten, dann sieh dir das Rad jenes Schiffes an. Falls du die Flugrichtung und Geschwindigkeit des gewählten Schiffes richtig geraten hast, darfst du dein Rad auf ein anderes Manöver einstellen."""
        "Chewbacca (Scum)":
           name: """Chewbacca"""
           text: """Zu Beginn der Endphase darfst du 1 Fokusmarker ausgeben, um 1 deiner offenen Schadenskarten zu reparieren."""
        "Chewbacca":
           name: """Chewbacca"""
           text: """Zu Beginn der Kampfphase darfst du 2 %CHARGE% ausgeben, um 1 offene Schadenskarte zu reparieren."""
        "Ciena Ree":
           name: """Ciena Ree"""
           text: """Nachdem du eine %COORDINATE%-Aktion durchgeführt hast, falls das von dir koordinierte Schiff eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hat, darf es 1 Stressmarker erhalten, um sich um 90° zu drehen."""
        "Cikatro Vizago":
           name: """Cikatro Vizago"""
           text: """Während der Endphase darfst du 2 %ILLICIT%-Aufwertungen wählen, die befreundete Schiffe in Reichweite 0–1 ausgerüstet haben. Falls du das tust, darfst du diese Aufwertungen austauschen.%LINEBREAK%Spielende: Lege alle %ILLICIT%-Aufwertungen auf ihre ursprünglichen Schiffe zurück."""
        "Cloaking Device":
           name: """Tarngerät"""
           text: """Aktion: Gib 1 %CHARGE% aus, um eine %CLOAK%-Aktion durchzuführen.%LINEBREAK%Zu Beginn der Planungsphase wirf 1 Angriffswürfel. Bei einem %FOCUS%-Ergebnis, enttarne dich oder lege deinen Tarnungsmarker ab."""
        "Cluster Missiles":
           name: """Clusterraketen"""
           text: """Angriff (%LOCK%): Gib 1 %CHARGE% aus. Nach diesem Angriff darfst du diesen Angriff als Bonusangriff gegen ein anderes Ziel in Reichweite 0–1 des Verteidigers durchführen, wobei du die %LOCK%-Voraussetzung ignorierst."""
        "Collision Detector":
           name: """Kollisionssensor"""
           text: """Solange du Schub gibst oder eineFassrolle fliegst, kannst du dichdurch Hindernisse hindurch­bewegen und sie überschneiden.%LINEBREAK%Nachdem du dich durch ein Hindernis hindurchbewegt oder es überschnitten hast, darfst du 1 %CHARGE% ausgeben, um seine Effekte bis zum Ende der Runde zu ignorieren."""
        "Composure":
           name: """Gelassenheit"""
           text: """Nachdem eine deiner Aktionen scheitert, falls du keine grünen Marker hast, darfst du eine %FOCUS%-Aktion durchführen."""
        "Concussion Missiles":
           name: """Erschütterungsraketen"""
           text: """Angriff (%LOCK%): Gib 1 %CHARGE%aus. Nachdem dieser Angriff getroffen hat, legt jedes Schiff in Reichweite 0–1 zum Verteidiger 1 seiner Schadenskarten offen."""
        "Conner Nets":
           name: """Connernetz"""
           text: """Mine%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone ein Connernetz abzuwerfen.%LINEBREAK%Die %CHARGE% dieser Karte kann nicht wiederhergestellt werden."""
        "Contraband Cybernetics":
           name: """Illegale Kybernetik"""
           text: """Bevor du aktiviert wirst, darfst du 1 %CHARGE% ausgeben. Falls du das tust, kannst du bis zum Ende der Runde Aktionen durchführen und rote Manöver ausführen, auch solange du gestresst bist."""
        "Crack Shot":
           name: """Meisterhafter Schuss"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, vor dem Schritt „Ergebnisse neutralisieren“, darfst du 1 %CHARGE% ausgeben, um 1 %EVADE%-Ergebnis zu negieren."""
        "Daredevil":
           name: """Draufgänger"""
           text: """Solange du eine weiße %BOOST%-Aktion durchführst, darfst du sie behandeln, als wäre sie rot, um stattdessen die [1 %TURNLEFT%]- oder [1 %TURNRIGHT%]-Schablone zu verwenden."""
        "Darth Vader":
           name: """Darth Vader"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff in deinem Feuerwinkel in Reichweite 0–2 wählen und 1 %FORCE% ausgeben. Falls du das tust, erleidet jenes Schiff 1 %HIT%-Schaden, es sei denn, es entscheidet sich dafür, 1 grünen Marker zu"""
        "Deadman's Switch":
           name: """Totmannschalter"""
           text: """Nachdem du zerstört worden bist, erleidet jedes andere Schiff in Reichweite 0–1 1 %HIT%-Schaden."""
        "Death Troopers":
           name: """Todestruppen"""
           text: """Während der Aktivierungsphase können feindliche Schiffe in Reichweite 0–1 keine Stressmarker entfernen."""
        "Debris Gambit":
           name: """Trümmertanz"""
           text: """Füge die %EVADE%-Aktion hinzu.%LINEBREAK%Solange du eine rote %EVADE%-Aktion durchführst, falls ein Hindernis in Reichweite 0–1 ist, behandle die Aktion stattdessen, als wäre sie weiß."""
        "Dengar":
           name: """Dengar"""
           text: """Nachdem du verteidigt hast, falls der Angreifer in deinem Feuerwinkel ist, darfst du 1 %CHARGE% ausgeben. Falls du das tust, wirf 1 Angriffswürfel, es sei denn, der Angreifer entscheidet sich dafür, 1 grünen Marker zu entfernen. Bei einem %HIT%- oder %CRIT%-Ergebnis erleidet der Angreifer 1 %HIT%-Schaden."""
        "Director Krennic":
           name: """Direktor Krennic"""
           text: """Füge die %LOCK%-Aktion hinzu.%LINEBREAK%Aufbau: Bevor die Streitkräfte platziert werden, ordne den Zustand Optimierter Prototyp einem anderen befreundeten Schiff zu."""
        "Dorsal Turret":
           name: """Dorsaler Geschützturm"""
           text: """Füge die %ROTATEARC%-Aktion hinzu.%LINEBREAK%Angriff"""
        "Electronic Baffle":
           name: """Elektronischer Dämpfer"""
           text: """Während der Endphase darfst du 1 %HIT%-Schaden erleiden, um 1 roten Marker zu entfernen."""
        "Elusive":
           name: """Schwer zu treffen"""
           text: """Solange du verteidigst, darfst du 1 %CHARGE% ausgeben, um 1 Verteidigungswürfel neu zu werfen.%LINEBREAK%Nachdem du ein rotes Manöver vollständig ausgeführt hast, stelle 1 %CHARGE% wieder her."""
        "Emperor Palpatine":
           name: """Imperator Palpatine"""
           text: """Solange ein anderes befreundetes Schiff verteidigt oder einen Angriff durchführt, darfst du 1 %FORCE% ausgeben, um 1 seiner Würfel so zu modifizieren, als hätte jenes Schiff 1 %FORCE% ausgegeben."""
        "Engine Upgrade":
           name: """Verbessertes Triebwerk"""
           text: """Füge die %BOOST%-Aktion hinzu.%LINEBREAK%Dieses Upgrade kostet je nach Basegröße (klein, mittel, groß) unterschiedlich viele (3, 6, 9) Punkte. %LINEBREAK%Große Armeen wie das Militär des Galaktischen Imperiums haben meist standardisierte Triebwerke. Freischaffende Piloten und kleinere Organisationen ersetzen oft Energiekopplungen, """
        "Expert Handling":
           name: """Flugkunst"""
           text: """Füge die %BARRELROLL%-Aktion hinzu.%LINEBREAK%Dieses Upgrade kostet je nach Basegröße (klein, mittel, groß) unterschiedlich viele (2, 4, 6) Punkte. %LINEBREAK%Auch schwere Jäger können in eine Fassrolle gezwungen werden, wobei es einen erfahrenen Piloten braucht, um die Maschine nicht übermäßig zu belasten und dem Feind kein leichtes Ziel zu bieten."""
        "Ezra Bridger":
           name: """Ezra Bridger"""
           text: """Nachdem du einen Primärangriff durchgeführt hast, darfst du 1 %FORCE% ausgeben, um einen Bonus-%SINGLETURRETARC%-Angriff aus einem %SINGLETURRETARC%, aus dem du in dieser Runde noch nicht angegriffen hast, durchzuführen. Falls du das tust und gestresst bist, darfst du 1 Angriffswürfel neu werfen."""
        "Fearless":
           name: """Furchtlos"""
           text: """Solange du einen %FRONTARC%-Primärangriff durchführst, falls die Angriffs­reichweite 1 ist und du im %FRONTARC% des Verteidigers bist, darfst du 1 deiner Ergebnisse in ein %HIT%-Ergebnis ändern."""
        "Feedback Array":
           name: """Rückkopplungsfeld"""
           text: """Bevor du kämpfst, darfst du 1 Ionenmarker und 1 Entwaffnet-Marker erhalten. Falls du das tust, erleidet jedes Schiff in Reichweite 0 1 %HIT%-Schaden."""
        "Fifth Brother":
           name: """Fünfter Bruder"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %FORCE% ausgeben, um 1 deiner %FOCUS%-Ergebnisse in ein %CRIT%-Ergebnis zu ändern."""
        "Fire-Control System":
           name: """Feuerkontrollsystem"""
           text: """Solange du einen Angriff durchführst, falls du den Verteidiger als Ziel erfasst hast, darfst du 1 Angriffswürfel neu werfen. Falls du das tust, kannst du während dieses Angriffs deine Zielerfassung nicht ausgeben."""
        "Freelance Slicer":
           name: """Freischaffender Hacker"""
           text: """Solange du verteidigst, bevor die Angriffswürfel geworfen werden, darfstdu eine Zielerfassung, die du auf dem Angreifer hast, ausgeben, um 1 Angriffswürfel zu werfen. Falls du das tust, erhält der Angreifer 1 Störsignalmarker. Dann, bei einem %HIT%- oder %CRIT%-Ergebnis, erhältst du 1 Störsignalmarker."""
        'GNK "Gonk" Droid':
           name: """GNK-„Gonk“-Droide"""
           text: """Aufbau: Verliere 1 %CHARGE%.%LINEBREAK%Aktion: Stelle 1 %CHARGE% wieder her.%LINEBREAK%Aktion: Gib 1 %CHARGE% aus, um 1 Schild wiederherzustellen."""
        "Grand Inquisitor":
           name: """Großinquisitor"""
           text: """Nachdem ein feindliches Schiff in Reichweite 0–2 sein Rad aufgedeckt hat, darfst du 1 %FORCE% ausgeben, um 1 weiße Aktion aus deiner Aktionsleiste durchzuführen, wobei du jene Aktion behandelst, als wäre sie rot."""
        "Grand Moff Tarkin":
           name: """Großmoff Tarkin"""
           text: """Während der Systemphase darfst du 2 %CHARGE% ausgeben. Falls du das tust, darf jedes befreundete Schiff ein Schiff, das du als Ziel erfasst hast, als Ziel erfassen."""
        "Greedo":
           name: """Greedo"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %CHARGE% ausgeben, um 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis zu ändern.%LINEBREAK%Solange du verteidigst, falls deine %CHARGE% aktiv ist, darf der Angreifer 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern."""
        "Han Solo":
           name: """Han Solo"""
           text: """Während der Kampfphase, bei Initiative 7, darfst du einen %SINGLETURRETARC%-Angriff durchführen. Du kannst in dieser Runde nicht noch einmal aus jenem %SINGLETURRETARC% angreifen."""
        "Han Solo (Scum)":
           name: """Han Solo"""
           text: """Bevor du kämpfst, darfst du eine rote %FOCUS%-Aktion durchführen."""
        "Heavy Laser Cannon":
           name: """Schwere Laserkanone"""
           text: """Angriff: Nach dem Schritt „Angriffswürfel modifizieren“, ändere alle %CRIT%-Ergebnisse in %HIT%-Ergebnisse."""
        "Heightened Perception":
           name: """Geschärfte Sinne"""
           text: """Zu Beginn der Kampfphase darfst du 1 %FORCE% ausgeben. Falls du das tust, kämpfe in dieser Phase bei Initiative 7 anstatt bei deinem normalen Initiativwert."""
        "Hera Syndulla":
           name: """Hera Syndulla"""
           text: """Du kannst rote Manöver ausführen, auch solange du gestresst bist. Nachdem du ein rotes Manöver vollständig ausgeführt hast, falls du 3 oder mehr Stressmarker hast, entferne 1 Stressmarker und erleide 1 %HIT%-Schaden."""
        "Homing Missiles":
           name: """Lenkraketen"""
           text: """Angriff (%LOCK%): Gib 1 %CHARGE% aus. Nachdem du den Verteidiger deklariert hast, darf der Verteidiger wählen, 1 %HIT%-Schaden zu erleiden. Falls er das tut, überspringe die Schritte „Angriffswürfel“ und „Verteidigungswürfel“, und der Angriff wird behandelt, als hätte er getroffen."""
        "Hotshot Gunner":
           name: """Erstklassiger Bordschütze"""
           text: """Solange du einen %SINGLETURRETARC%-Angriff durchführst, nach dem Schritt „Verteidigungswürfel modifizieren“, entfernt der Verteidiger 1 Fokus- oder 1 Berechnungsmarker."""
        "Hull Upgrade":
           name: """Verstärkte Hülle"""
           text: """Füge 1 Hüllenpunkt hinzu. %LINEBREAK%Dieses Upgrade kostet je nach Wendigkeitswert (0,1,2,3) unterschiedlich viele (2,3,5,7) Punkte. %LINEBREAK%Auch wer sich keinen verbesserten Schildgenerator leisten kann, muss nicht auf erhöhten Schutz verzichten, sondern kann sich mit zusätzlichen Panzerplatten an der Schiffshülle behelfen."""
        "IG-88D":
           name: """IG-88D"""
           text: """Füge die %CALCULATE%-Aktion hinzu.%LINEBREAK%Du hast die Pilotenfähigkeit jedes anderen befreundeten Schiffes mit der Aufwertung IG-2000.%LINEBREAK%Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "ISB Slicer":
           name: """ISB-Hacker"""
           text: """Während der Endphase können feindliche Schiffe in Reichweite 1–2 keine Störsignalmarker entfernen."""
        "Inertial Dampeners":
           name: """Trägheitsdämpfer"""
           text: """Bevor du ein Manöver ausführen würdest, darfst du 1 Schild ausgeben. Falls du das tust, führe anstatt des Manövers, das du aufgedeckt hast, ein weißes [0 %STOP%]-Manöver aus, dann erhalte 1 Stressmarker."""
        "Informant":
           name: """Informant"""
           text: """Aufbau: Nachdem die Streitkräfte platziert worden sind, wähle 1 feindliches Schiff und ordne ihm den Zustand Abhörgerät zu."""
        "Instinctive Aim":
           name: """Instinktives Zielen"""
           text: """Solange du einen Spezialangriff durchführst, darfst du 1 %FORCE% ausgeben, um die %FOCUS%- oder %LOCK%-Voraussetzung zu ignorieren."""
        "Intimidation":
           name: """Furchteinflößend"""
           text: """Solange ein feindliches Schiff in Reichweite 0 verteidigt, wirft es 1 Verteidigungswürfel weniger."""
        "Ion Cannon":
           name: """Ionenkanone"""
           text: """Füge die %ROTATEARC%-Aktion hinzu.%LINEBREAK%Angriff: Falls dieser Angriff trifft, gib 1 %HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1 %HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Ion Cannon Turret":
           name: """Ionengeschütz"""
           text: """Angriff: Falls dieser Angriff trifft, gib 1 %HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1 %HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Ion Missiles":
           name: """Ionenraketen"""
           text: """Angriff (%LOCK%): Gib 1 %CHARGE% aus. Falls dieser Angriff trifft, gib 1 %HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1 %HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Ion Torpedoes":
           name: """Ionentorpedos"""
           text: """Angriff (%LOCK%): Gib 1 %CHARGE% aus. Falls dieser Angriff trifft, gib 1 %HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1 %HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Jabba the Hutt":
           name: """Jabba der Hutt"""
           text: """Während der Endphase darfst du 1 befreundetes Schiff in Reichweite 0–2 wählen und 1 %CHARGE% ausgeben. Falls du das tust, stellt jenes Schiff 1 %CHARGE% von 1 seiner ausgerüsteten %ILLICIT%-Aufwertungen wieder her."""
        "Jamming Beam":
           name: """Störstrahl"""
           text: """Angriff: Falls dieser Angriff trifft, fügen alle %HIT%/%CRIT%-Ergebnisse Störsignalmarker anstatt Schaden zu."""
        "Juke":
           name: """Finte"""
           text: """Solange du einen Angriff durchführst, falls du ausweichst, darfst du 1 der %EVADE%-Ergebnisse des Verteidigers in ein %FOCUS%-Ergebnis ändern."""
        "Jyn Erso":
           name: """Jyn Erso"""
           text: """Falls ein befreundetes Schiff in Reichweite 0–3 einen Fokusmarker erhalten würde, darf es stattdessen 1 Ausweichmarker erhalten."""
        "Kanan Jarrus":
           name: """Kanan Jarrus"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0–2 ein weißes Manöver vollständig ausgeführt hat, darfst du 1 %FORCE% ausgeben, um 1 Stressmarker von jenem Schiff zu entfernen."""
        "Ketsu Onyo":
           name: """Ketsu Onyo"""
           text: """Zu Beginn der Endphase darfst du 1 feindliches Schiff in Reichweite 0–2 in deinem Feuerwinkel wählen. Falls du das tust, entfernt jenes Schiff seine Fangstrahlmarker nicht."""
        "L3-37":
           name: """L3-37"""
           text: """Aufbau: Rüste diese Seite offen aus.%LINEBREAK%Solange du verteidigst, darfst du diese Karte umdrehen. Fall du das tust, muss der Angreifer alle Angriffswürfel neu werfen. %LINEBREAK% Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%)."""
        "Lando Calrissian":
           name: """Lando Calrissian"""
           text: """Aktion: Wirf 2 Verteidigungswürfel. Erhalte 1 Fokusmarker für jedes %FOCUS%-Ergebnis. Erhalte 1 Ausweichmarker für jedes %EVADE%-Ergebnis. Falls beide Ergebnisse Leerseiten sind, wählt der Gegenspieler Fokus- oder Ausweichmarker. Du erhältst 1 Marker"""
        "Lando Calrissian (Scum)":
           name: """Lando Calrissian"""
           text: """Nachdem du die Würfel geworfen hast, darfst du 1 grünen Marker ausgeben um bis zu 2 deiner Ergebnisse neu zu werfen."""
        "Lando's Millennium Falcon":
           name: """Landos Millennium Falke"""
           text: """1 Rettungskapsel darf bei dir andocken.%LINEBREAK%Solange ein Rettungskapsel bei dir angedockt ist, darfst du seine Schilde ausgeben, als wären sie auf deiner Schiffskarte.%LINEBREAK%Solange du einen Primärangriff gegen ein gestresstes Schiff durchführst, wirfst du 1 zusätzlichen Angriffswürfel."""
        "Latts Razzi":
           name: """Latts Razzi"""
           text: """Solange du verteidigst, falls der Angreifer gestresst ist, darfst du 1 Stressmarker vom Angreifer entfernen, um 1 deiner Leerseiten/%FOCUS%-Ergebnisse in ein %EVADE%-Ergebnis zu ändern."""
        "Leia Organa":
           name: """Leia Organa"""
           text: """Zu Beginn der Aktivierungsphase darfst du 3 %CHARGE% ausgeben. Während dieser Phase verringert jedes befreundete Schiff die Schwierigkeit seiner roten Manöver."""
        "Lone Wolf":
           name: """Einsamer Wolf"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls keine anderen befreundeten Schiffe in Reichweite 0–2 sind, darfst du 1 %CHARGE% ausgeben, um 1 deiner Würfel neu zu werfen."""
        "Luke Skywalker":
           name: """Luke Skywalker"""
           text: """Zu Beginn der Kampfphase darfst du 1 %FORCE% ausgeben, um deinen %SINGLETURRETARC%-Anzeiger zu rotieren."""
        "Magva Yarro":
           name: """Magva Yarro"""
           text: """Nachdem du verteidigt hast, falls der Angriff getroffen hat, darfst du den Angreifer als Ziel erfassen."""
        "Marksmanship":
           name: """Treffsicherheit"""
           text: """Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern."""
        "Maul":
           name: """Maul"""
           text: """Nachdem du Schaden erlitten hast, darfst du 1 Stress­marker erhalten, um 1 %FORCE% wiederherzustellen.%LINEBREAK%Du kannst „Dunkle Seite“-Aufwertungen ausrüsten."""
        "Minister Tua":
           name: """Ministerin Tua"""
           text: """Zu Beginn der Kampfphase, falls du beschädigt bist, darfst du eine rote %REINFORCE%-Aktion durchführen."""
        "Moff Jerjerrod":
           name: """Moff Jerjerrod"""
           text: """Während der Systemphase darfst du 2 %CHARGE% ausgeben. Falls du das tust, wähle die [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Schablone. Jedes befreundete Schiff darf unter Verwendung jener Schablone eine rote %BOOST%-Aktion durchführen."""
        "Munitions Failsafe":
           name: """Ausfallsichere Munition"""
           text: """Solange du einen %TORPEDO%- oder %MISSILE%-Angriff durchführst, nachdem du die Angriffswürfel geworfen hast, darfst du alle Würfelergebnisse negieren, um 1 %CHARGE% wiederherzustellen, die du als Kosten für den Angriff ausgegeben hast."""
        "Nien Nunb":
           name: """Nien Nunb"""
           text: """Verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%)."""
        "Novice Technician":
           name: """Unerfahrener Techniker"""
           text: """Am Ende der Runde darfst du 1 Angriffswürfel werfen, um 1 offene Schadenskarte zu reparieren. Dann, bei einem %HIT%-Ergebnis, lege 1 Schadenskarte offen."""
        "Os-1 Arsenal Loadout":
           name: """Os-1-Waffenarsenal"""
           text: """Solange du genau 1 Entwaffnet-Marker hast, kannst du trotzdem %TORPEDO%- und %MISSILE%-Angriffe gegen Ziele durchführen, die du als Ziel erfasst hast. Falls du das tust, kannst du während des Angriffs deine Zielerfassung nicht ausgeben.%LINEBREAK%Füge %TORPEDO%- und %MISSILE%-Slots hinzu."""
        "Outmaneuver":
           name: """Ausmanövrieren"""
           text: """Solange du einen %FRONTARC%-Angriff durchführst, falls du nicht im Feuerwinkel des Verteidigers bist, wirft der Verteidiger 1 Verteidigungswürfel weniger."""
        "Perceptive Copilot":
           name: """Aufmerksamer Co-Pilot"""
           text: """Nachdem du eine %FOCUS%-Aktion durchgeführt hast, erhalte 1 Fokusmarker."""
        "Pivot Wing":
           name: """Schwenkflügel"""
           text: """Geschlossen: Solange du verteidigst, wirf 1 Verteidigungswürfel weniger.%LINEBREAK%Nachdem du ein [0 %STOP%]-Manöver ausgeführt hast, darfst du dein Schiff um 90° oder um 180° drehen.%LINEBREAK%Bevor du aktiviert wirst, darfst du diese Karte umdrehen.%LINEBREAK%Geöffnet: Bevor du aktiviert wirst, darfst du diese Karte umdrehen."""
        "Predator":
           name: """Jagdinstinkt"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 Angriffswürfel neu werfen."""
        "Proton Bombs":
           name: """Protonenbomben"""
           text: """Bombe%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone eine Protonenbombe abzuwerfen."""
        "Proton Rockets":
           name: """Protonenraketen"""
           text: """Angriff (%FOCUS%): Gib 1 %CHARGE% aus."""
        "Proton Torpedoes":
           name: """Protonentorpedos"""
           text: """Angriff (%LOCK%): Gib 1 %CHARGE% aus. Ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Proximity Mines":
           name: """Annäherungsminen"""
           text: """Mine%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone eine Annäherungsmine abzuwerfen.%LINEBREAK%Die %CHARGE% dieser Karte können nicht wiederhergestellt werden."""
        "Qi'ra":
           name: """Qi'ra"""
           text: """Solange du dich bewegst und Angriffe durchführst, ignorierst du Hindernisse, die du als Ziel erfasst hast."""
        "R2 Astromech":
           name: """R2-Astromechdroide"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du 1 %CHARGE% ausgeben und 1 Entwaffnet-Marker erhalten, um 1 Schild wiederherzustellen."""
        "R2-D2 (Crew)":
           name: """R2-D2"""
           text: """Während der Endphase, falls du beschädigt bist und keine Schilde hast, darfst du 1 Angriffswürfel werfen, um 1 Schild wiederherzustellen. Bei einem %HIT%-Ergebnis lege 1 deiner Schadenskarten offen."""
        "R2-D2":
           name: """R2-D2"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du 1 %CHARGE% ausgeben und 1 Entwaffnet-Marker erhalten, um 1 Schild wiederherzustellen."""
        "R3 Astromech":
           name: """R3-Astromechdroide"""
           text: """Du kannst bis zu 2 Zielerfassungen aufrechterhalten. Jede Zielerfassung muss ein anderes Objekt als Ziel haben.%LINEBREAK%Nachdem du eine %LOCK%-Aktion durchgeführt hast, darfst du ein Ziel erfassen."""
        "R4 Astromech":
           name: """R4-Astromechdroide"""
           text: """Verringere die Schwierigkeit deiner Basismanöver mit Geschwindigkeit 1–2 (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%)."""
        "R5 Astromech":
           name: """R5-Astromechdroide"""
           text: """Aktion: Gib 1 %CHARGE% aus, um 1 verdeckte Schadenskarte zu reparieren.%LINEBREAK%Aktion: Repariere 1 offene Schiff-Schadenskarte."""
        "R5-D8":
           name: """R5-D8"""
           text: """Aktion: Gib 1 %CHARGE% aus, um 1 verdeckte Schadenskarte zu reparieren.%LINEBREAK%Aktion: Repariere 1 offene Schiff-Schadenskarte."""
        "R5-P8":
           name: """R5-P8"""
           text: """Solange du einen Angriff gegen einen Verteidiger in deinem %FRONTARC% durchführst, darfst du 1 %CHARGE% ausgeben, um 1 Angriffswürfel neu zu werfen. Falls das neugeworfene Ergebnis ein %CRIT% ist, erleide 1 %CRIT%-Schaden."""
        "R5-TK":
           name: """R5-TK"""
           text: """Du kannst Angriffe gegen befreundete Schiffe durchführen."""
        "Rigged Cargo Chute":
           name: """Manipulierte Frachtrampe"""
           text: """Aktion: Gib 1 %CHARGE% aus. Wirf unter Verwendung der [1 %STRAIGHT%]-Schablone 1 freie Fracht ab."""
        "Ruthless":
           name: """Skrupellos"""
           text: """Solange du einen Angriff durchführst, darfst du ein anderes befreundetes Schiff in Reichweite 0–1 zum Verteidiger wählen. Falls du das tust, erleidet jenes Schiff 1 %HIT%-Schaden und du darfst 1 deiner Würfelergebnisse in ein %HIT%-Ergebnis ändern."""
        "Sabine Wren":
           name: """Sabine Wren"""
           text: """Aufbau: Platziere 1 Ionen-, 1 Störsignal-, 1 Stress- und 1 Fangstrahlmarker auf dieser Karte. %LINEBREAK%Nachdem ein Schiff den Effekt einer befreundeten Bombe erlitten hat, darfst du 1 Ionen-, Störsignal-, Stress- oder Fangstrahlmarker von dieser Karte entfernen. Falls du das tust, erhält jenes Schiff einen passenden Marker."""
        "Saturation Salvo":
           name: """Flächenangriff"""
           text: """Solange du einen %TORPEDO%- oder %MISSILE%-Angriff durchführst, darfst du 1 %CHARGE% von jener Aufwertung ausgeben. Falls du das tust, wähle 2 Verteidigungswürfel. Der Verteidiger muss jene Würfel neu werfen."""
        "Saw Gerrera":
           name: """Saw Gerrera"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %HIT%-Schaden erleiden, um alle deine %FOCUS%-Ergebnisse in %CRIT%-Ergebnisse zu ändern."""
        "Seasoned Navigator":
           name: """Erfahrener Navigator"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du dein Rad auf ein anderes nicht-rotes Manöver derselben Geschwindigkeit einstellen. Solange du jenes Manöver ausführst, erhöhe seine Schwierigkeit."""
        "Seismic Charges":
           name: """Seismische Bomben"""
           text: """Bombe%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone eine Seismische Bombe abzuwerfen."""
        "Selfless":
           name: """Selbstlos"""
           text: """Solange ein anderes befreundetes Schiff in Reichweite 0–1 verteidigt, vor dem Schritt „Ergebnisse neutralisieren“, falls du im Angriffswinkel bist, darfst du 1 %CRIT%-Schaden erleiden, um 1 %CRIT%-Ergebnis zu negieren."""
        "Sense":
           name: """Gespür"""
           text: """Während der Systemphase darfst du 1 Schiff in Reichweite 0–1 wählen und sein Rad ansehen. Falls du 1 %FORCE% ausgibst, darfst du stattdessen ein Schiff in Reichweite 0–3 wählen."""
        "Servomotor S-Foils":
           name: """Servomotorische S-Flügel"""
           text: """Geschlossen: Solange du einen Primärangriff durchführst, wirf 1 Angriffswürfel weniger.%LINEBREAK%Bevor du aktiviert wirst, darfst du diese Karte umdrehen.%LINEBREAK%Füge die %BOOST%, %FOCUS% und %BOOST%-Aktion hinzu.%LINEBREAK%Geöffnet: Bevor du aktiviert wirst, darfst du diese Karte umdrehen."""
        "Seventh Sister":
           name: """Siebte Schwester"""
           text: """Falls ein feindliches Schiff in Reichweite 0–1 einen Stressmarker erhalten würde, darfst du 1 %FORCE% ausgeben, um es stattdessen 1 Störsignal- oder 1 Fangstrahlmarker erhalten zu lassen."""
        "Shield Upgrade":
           name: """Verbesserte Schilde"""
           text: """Füge 1 Schild hinzu. %LINEBREAK%Dieses Upgrade kostet je nach Wendigkeitswert (0,1,2,3) unterschiedlich viele (3,4,6,8) Punkte. %LINEBREAK%Deflektor­schilde sind der wichtigste Verteidigungsmechanismus der meisten Raumschiffe, abgesehen von extrem leichten Jägern. Eine Verbesserung der Schildkapazität ist eine kostspielige, aber durchaus """
        "Skilled Bombardier":
           name: """Versierte Bombenschützin"""
           text: """Falls du ein Gerät abwerfen oder starten würdest, darfst du eine Schablone mit gleicher Flugrichtung und einer um 1 höheren oder niedrigeren Geschwindigkeit verwenden."""
        "Squad Leader":
           name: """Staffelführer"""
           text: """Füge die %COORDINATE%-Aktion hinzu.%LINEBREAK%Solange du koordinierst, kann das von dir gewählte Schiff eine Aktion nur dann durchführen, falls jene Aktion auch in deiner Aktionsleiste ist."""
        "Static Discharge Vanes":
           name: """Elektrostatischer Entlader"""
           text: """Falls du einen Ionen- oder Störsignal-marker erhalten würdest, darfst du ein Schiff in Reichweite 0–1 wählen. Falls du das tust, erhalte 1 Stressmarker und transferiere 1 Ionen- oder Störsignalmarker auf jenes Schiff."""
        "Stealth Device":
           name: """Tarnvorrichtung"""
           text: """Dieses Upgrade kostet je nach Wendigkeitswert (0,1,2,3) unterschiedlich viele (3,4,6,8) Punkte.%LINEBREAK%Solange du verteidigst, falls deine %CHARGE% aktiv ist, wirf 1 zusätzlichen Verteidigungswürfel.%LINEBREAK%Nachdem du Schaden erlitten hast, verliere 1 %CHARGE%."""
        "Supernatural Reflexes":
           name: """Übernatürliche Reflexe"""
           text: """Bevor du aktiviert wirst, darfst du 1 %FORCE% ausgeben, um eine %BARRELROLL%- oder %BOOST%-Aktion durchzuführen. Dann, falls du eine Aktion durchgeführt hast, die nicht in deiner Aktionsleiste ist, erleide 1 %HIT%-Schaden."""
        "Swarm Tactics":
           name: """Schwarmtaktik"""
           text: """Zu Beginn der Kampfphase darfst du 1 befreundetes Schiff in Reichweite 1 wählen. Falls du das tust, behandelt jenes Schiff seine Initiative bis zum Ende der Runde so, als würde sie deiner Initiative entsprechen."""
        "Tactical Officer":
           name: """Taktikoffizier"""
           text: """Füge die %COORDINATE%-Aktion hinzu.%LINEBREAK%In den Wirren einer Raumschlacht kann ein einzelner Befehl über Sieg oder totale Auslöschung entscheiden."""
        "Tactical Scrambler":
           name: """Taktischer Scrambler"""
           text: """Solange du den Angriff eines feindlichen Schiffes versperrst, wirft der Verteidiger 1 zusätzlichen Verteidigungswürfel."""
        "Tobias Beckett":
           name: """Tobias Beckett"""
           text: """Aufbau: Nach dem Platzieren der Streitkräfte darfst du 1 Hindernis im Spielbereich wählen. Falls du das tust, platziere es irgendwo im Spielbereich, jenseits von Reichweite 2 zu den Spielfeldecken und Schiffen und jenseits von Reichweite 1 zu anderen Hindernissen."""
        "Tractor Beam":
           name: """Fangstrahl"""
           text: """Angriff: Falls dieser Angriff trifft, fügen alle %HIT%/%CRIT%-Ergebnisse Fangstrahlmarker anstatt Schaden zu."""
        "Trajectory Simulator":
           name: """Flugbahnsimulator"""
           text: """Während der Systemphase, falls du eine Bombe abwerfen oder starten würdest, darfst du sie stattdessen unter Verwendung der [5 %STRAIGHT%]-Schablone starten."""
        "Trick Shot":
           name: """Trickschuss"""
           text: """Solange du einen Angriff durchführst, der durch ein Hindernis versperrt ist, wirf 1 zusätzlichen Angriffswürfel."""
        "Unkar Plutt":
           name: """Unkar Plutt"""
           text: """Nachdem du ein Manöver teilweise ausgeführt hast, darfst du 1 %HIT%-Schaden erleiden, um 1 weiße Aktion durchzuführen."""
        "Veteran Tail Gunner":
           name: """Kampferprobter Heckschütze"""
           text: """Nachdem du einen %FRONTARC%-Primärangriff durchgeführt hast, darfst du einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Veteran Turret Gunner":
           name: """Kampferprobter Geschützkanonier"""
           text: """Nachdem du einen Primärangriff durchgeführt hast, darfst du unter Verwendung eines %SINGLETURRETARC%, aus dem du in dieser Runde noch nicht angegriffen hast, einen Bonus-%SINGLETURRETARC%-Angriff durchführen."""
        "Xg-1 Assault Configuration":
           name: """Xg-1-Angriffskonfiguration"""
           text: """Solange du genau 1 Entwaffnet-Marker hast, kannst du trotzdem %CANNON%-Angriffe durchführen. Solange du einen %CANNON%-Angriff durchführst, solange du entwaffnet bist, wirf maximal 3 Angriffswürfel.%LINEBREAK%Füge einen %CANNON%-Slot hinzu."""
        "Zuckuss":
           name: """Zuckuss"""
           text: """Solange du einen Angriff durchführst, falls du nicht gestresst bist, darfst du 1 Verteidigungswürfel wählen und 1 Stressmarker erhalten. Falls du das tust, muss der Verteidiger jenen Würfel neu werfen."""
        '"Chopper" (Astromech)':
           name: """„Chopper“"""
           text: """Während des Schrittes „Aktion durchführen“ darfst du 1 Aktion durchführen, auch solange du gestresst bist. Nachdem du eine Aktion durchgeführt hast, solange du gestresst bist, erleide 1 %HIT%-Schaden, es sei denn, du legst 1 deiner Schadenskarten offen."""
        '"Chopper" (Crew)':
           name: """„Chopper“"""
           text: """Aktion: Gib 1 nicht-wiederkehrende %CHARGE% von einer anderen ausgerüsteten Aufwertung aus, um 1 Schild wiederherzustellen."""
        '"Genius"':
           name: """„Genie“"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, falls du in dieser Runde noch kein Gerät abgeworfen oder gestartet hast, darfst du 1 Bombe abwerfen."""
        '"Zeb" Orrelios':
           name: """„Zeb“ Orrelios"""
           text: """Du kannst Primärangriffe in Reichweite 0 durchführen. Feindliche Schiffe in Reichweite 0 können Primärangriffe gegen dich durchführen."""



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
