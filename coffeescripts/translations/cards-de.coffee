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

    slot:
        "Astromech": "Astromech"
        "Force": "Macht-Fähigkeit"
        "Cannon": "Kanone"
        "Crew": "Mannschaft"
        "Missile": "Rakete"
        "Sensor": "Sensor"
        "Torpedo": "Torpedo"
        "Turret": "Geschütz"
        "Hardpoint": "Waffenaufhängung"
        "Illicit": "Schmuggelware"
        "Configuration": "Konfiguration"
        "Talent": "Talent"
        "Modification": "Modifikation"
        "Gunner": "Bordschütze"
        "Device": "Vorrichtung"
        "Tech": "Technik"
        "Title": "Titel"
        "Command": "Kommando"
        "Hyperdrive": "Hyperntrieb"
        "Cargo": "Fracht"
        "Team": "Team"
        "Tactical Relay": "Taktische Leitung"
    sources: 
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
        "Sith Infiltrator Expansion Pack": "Sith Infiltrator Erweiterung"
    ui:
        "shipSelectorPlaceholder": "Wähle ein Schiff"
        "pilotSelectorPlaceholder": "Wähle einen Piloten"
        upgradePlaceholder: (translator, slot) ->
            "Keine #{translator 'slot', slot} Aufwertungskarte"
        "modificationPlaceholder": "Keine Modifikation"
        "titlePlaceholder": "Kein Titel"
        upgradeHeader: (translator, slot) ->
            "#{translator 'slot', slot} Aufwertungskarte"
        "unreleased": "unveröffentlicht"
        "epic": "episch"
        "Epic": "Episch"
        "Quickbuild": "Schnellbau"
        "Hyperspace": "Hyperraum"
        "Extended": "Extended"
        "limited": "limitiert"
        "Unnamed Squadron": "Unbenannte Staffel"
        "Unsaved Squadron": "Nicht gespeicherte Staffel"
        "New Squadron": "Neue Staffel"
        "Name your squad...": "Gib einen Namen ein…"
        "Ship number warning": "Eine turnierlegale Staffel muss aus 2-8 Schiffen bestehen!"
        "Your Collection": "Deine Sammlung"
        "Randomize!": "Zufall!"
        "Copy": "Kopieren"
        "Print": "Drucken"
        "Random Squad Builder Options": "Zufallsgeneratoreinstellungen"
        "Miscellaneous Settings": "Sonstige Einstellungen" 
        "View in YASB": "In YASB 2.0 öffnen"
        "Card Search": "Kartensuche"
        "from": "von"
        "to": "bis"
        "Submit Bug/Feature Request": "Fehlermeldungen & Feedback"
        "Card Browser": "Kartendatenbank"
        "Rules": "Regeln"
        "About": "Impressum"
        "Remove Pilot": "Pilot entfernen"
        "Clone Pilot": "Pilot duplizieren"
        "Wingmates": "Flügelmänner"
        "Total": "Summe"
        "X-Wing Squadron by YASB 2.0: ": "Staffel erstellt mit YASB 2.0"
        "YASB advertisment": "YASB 2.0 ist ein übersichtlicher, einfach zu nutzender und quelloffener Staffeleditor für das X-Wing Miniaturenspiel von Asmodee"
        "Points Destroyed": "Zerstörte Punkte"
        "Ship total": "Summe Schiff"
        "Ship Total": "Summe Schiff"
        "Half Points": "Halbe Punktzahl"
        "Threshold": "Grenzwert"
        "Yes, Delete": "Ja, Löschen"
        "Never Mind": "Upps, doch nicht"
        "Really Delete": "Wirklich löschen"
        "Sure to delete?": "Bist du dir sicher, dass du diese Staffel löschen möchtest?"
        "Save": "Speichern"
        "Unsaved Changes": "Ungespeicherte Änderungen"
        "Go Back": "Zurück"
        "Unsaved Changes Warning": "Du hast deine Änderungen an dieser Staffel noch nicht gespeichert. Möchtest du abbrechen und dies vorher tun?"
        "Save Squad As...": "Speichern unter…"
        "Recalculate Points": "Punkte neu berechnen"
        "Archived": "Archiviert"
        "QB":"SB"
        "Hyper": "HR"
        "Ext": "Erw"
        "All": "Alle"
        "Delete Selected": "Ausgewählte löschen"
        "Archive Selected": "Ausgewählte archivieren"
        "Select All": "Alle auswählen"
        "Fetching squads...": "Lade Staffeln…"
        "Well done!": "Sehr gut!"
        "Squads reloaded": "Alle Staffeln dieser Fraktion wurden aktualisiert."
        "login in progress": "OAuth Anmeldung in Bearbeitung. Bitte schließe die Anmeldung bei dem von dir gewählten Anbieter im soeben geöffneten Fenster ab."
        "OAuth explanation" : """
                    <p>
                        <a href="http://de.wikipedia.org/wiki/OAuth" target="_blank">OAuth</a> (Open Authorization) ist ein Schnittstelle, die es dir ermöglicht dich bei verschiedenen Webseiten (z.B. hier bei YASB) anzumelden, ohne einen neuen Account anlegen zu müssen oder uns irgendwelche persönlichen Daten übermitteln zu müssen. Alles was du brauchst ist ein vorhandener Account bei einem der unten stehenden Anbieter, dem du sagst, dass du YASB nutzen möchtest. 
is an authorization system which lets you prove your identity at a web site without having to create a new account.  Instead, you tell some provider with whom you already have an account (e.g. Google or Facebook) to prove to this web site that you say who you are.  That way, the next time you visit, this site remembers that you're that user from Google.
                    </p>
                    <p>
                        Dieser Anbieter übermittelt dann eine eindeutige ID an YASB, unter der wir deine Staffeln und Sammlung speichern können, damit du beim nächsten Besuch auf sie zugreifen kannst. Wir können leider nicht verhindern, dass (je nach Anbieter) eventuell weitere Informationen außer dieser ID übertragen werden, den restlichen Kram werfen wir einfach sofort weg. 
                    </p>
                    <p>
                        Mehr Informationen zum OAuth Verfahren findest du z.B. auf <a href="http://hueniverse.com/oauth/guide/intro/" target="_blank">unter diesem Link (englisch)</a>.
                    </p>
                    <p>
                        Wenn du lieber gar keinen Account nutzen möchtest, kannst du eine Staffeln übrigens auch einfach speichern, indem du ein Lesezeichen setzt - und diese sogar über den Link teilen. Achtung: Du musst das Lesezeichen jedes mal erneuern, wenn du deine Staffel bearbeitest. 
                    </p>
                    """
        "Continue to OAuth provider": "This will open a new window to let you authenticate with the chosen provider. You may have to allow pop ups for this site."
        "Continue to OAuth provider": "Dies wird ein neues Fenster beim gewählten Anbieter öffnen. Es kann sein, dass du Pop-Ups erlauben musst."
        "iOS requires cross-site control": """Unter iOS musst du eventuell erst "cross-site control" aktivieren, damit OAuth nutzen kannst."""
        "select OAuth provider": "Wähle einen der untentstehenden OAuth Anbieter um dich einzuloggen und Staffeln speichern zu können."
        "Log in with OAuth": "Anmeldung per OAuth"
        "Log In": "Anmelden"
        "Log Out": "Abmelden"
        "What's this?": "Was ist das?"
        "Close": "Schließen"
        "Roll!": "Auswürfeln!"
        "Maximum Seconds to Spend Randomizing": "Höchstdauer in Sekunden"
        "Always fill 0-point slots": "Leere Aufwertungen mit 0-Punkte Karten füllen"
        "Sets and Expansions": "Erweiterungen"
        "Limit to collection": "Auf Sammlung beschränken"
        "Less upgrades": "Weniger Aufwertungskarten"
        "More upgrades": "Mehr Aufwertungskarten"
        "Maximum Ship Count": "Maximalzahl an Schiffen"
        "Maximal desired bid": "Maximale offene Punkte"
        "Upgrades": "Aufwertungsleiste"
        "Range": "Reichweite"
        "Actinons": "Aktionen"
        "Sources:": "Quellen:" 
        "Source": "Quelle" 
        "Engagement": "Kampfwert"
        "Rules search": "Regelsuche"
        "Rules Search": "Regelsuche"
        "Base": "Schiffsgröße"
        "Ship": "Schiff"
        "Initiative": "Initiativewert"
        "Force:": "Machtwert:"
        "Name": "Name"
        "Sort by": "Sortiere nach"
        "Type (by Points)": "Typ (nach Punkten)"
        "Type (by Name)": "Typ (nach Name)"
        "Recurring": "Wiederkehrend"
        "Not recurring": "Nicht-Wiederkehrend"
        "Charges:": "Ladungen:"
        "Only upgrades requiring multiple slots": "Nur Aufwertungskarten mit mehreren (oder doppelten) Typen"
        "Used double-slot:": "Doppelter Typ"
        "Used slot:": "Aufwertungstyp"
        "Large": "Groß"
        "Medium": "Mittel"
        "Small": "Klein"
        "Huge": "Riesig"
        "Base size:": "Schiffsgröße"
        "Agility:": "Wendigkeit:"
        "Shields:": "Schildwert"
        "Hull:": "Hüllenwert"
        "Initiative:": "Initiative:"
        "Linked actions:": "Gekoppelte Aktionen:"
        "Actions:": "Aktionen:"
        "Actions": "Aktionen"
        "actions": "Aktionen"
        "Slots:": "Aufwertungsleiste:"
        "slots": "Aufwertungsarten"
        "Ships and Pilots": "Schiffe und Piloten"
        "General": "Allgemein"
        "Hyperspace legal": "Im Hyperraummodus erlaubt"
        "Is not unique": "Nicht einzigartig"
        "Is unique": "Einzigartig"
        "Misc:": "Sonstiges:"
        "Owned copies:": "Expemlare in deiner Sammlung:"
        "Point costs:": "Kommandopunktekosten"
        "Factions:": "Fraktionen"
        "Textsearch:": "Volltextsuche"
        "Squad Notes:": "Staffelnotizen"
        "Tag:": "Kategorien:"
        "Choose obstacles dialog": "Wähle bis zu drei Hindernisse."
        "Mark obstacles": "Wähle bis zu drei Hindernisse"
        "Choose Obstacles": "Hindernisse wählen"
        "Scan QR-Code": "QR-Code scannen um im Staffeleditor zu öffnen"
        "XWS": "XWS"
        "HTML": "HTML"
        "TTS": "TTS"
        "Text": "Text"
        "Reddit": "Reddit"
        "BBCode": "BBCode"
        "Fancy": "Schick"
        "Simple": "Einfach"
        "Include QR codes": "QR-Codes"
        "Include Obstacle Choices": "Hindernisse"
        "Print Color": "In Farbe drucken"
        "Expand Shield and Hull": "Schild- und Hüllenpunkte einzeln"
        "Space for Cards": "Platz für Aufwertungskarten"
        "Include Maneuvers Chart": "Manövertabellen"
        "Skip Card Text": "Keine Kartenfähigkeiten"
        "Copy below simple text": "<p>Kopiere den Text und mach damit was du willst</p>"
        "Copy below markdown": "<p>Kopiere den Text und füge ihn an einem Markdown-kompatiblem Ort ein.</p><p>Achte darauf, dass der Editor auch auf auf Markdown eingestellt ist!</p>"
        "Copy below TTS": "<p>Dieses Format erlaubt dir deine Staffel in den Tabletop Simulator zu kopieren.</p>"
        "Copy below BBCode": "<p>Kopiere untenstehenden BBCode für in deinen Foreneintarg.</p>"
        "Copy below HTML": "<p>Kopiere untenstehenden HTML Code.</p>"
        "Copy below XWS":"<p>Kopiere deine Staffel im XWS Format in eine XWS-Kompatible Anwendung.</p>"
        "XWS Import": "Aus XWS Laden"
        "New Squad": "Neue Staffel"
        "Load Squad": "Staffel Laden"
        "Delete": "Löschen"
        "Save As...": "Speichern unter…"
        "Misc Settings": "Allgemeine Optionen"
        "Randomizer Options": "Zufallsgenerator-Optionen"
        "Print/Export": "Drucken/Als Text"
        "Unreleased content warning": "Diese Staffel enthält nicht veröffentlichten Inhalt"
        "Broken squad link warning": "Du scheinst einem defekten Link gefolgt zu sein. Staffel konnte nicht geladen werden."
        "Collection warning": "Du kannst diese Staffel mit deiner Sammlung nicht aufstellen!"
        "Multi-Faction warning": "Mehrfraktionenlisten sind auf Turnieren nicht zulässig!"
        "Discard Changes": "Änderungen Verwerfen"
        "Got it!": "Verstanden!"
        "Use INI prefix": "Initiative vor Pilotennamen"
        "Term:": "Suchbegriff:"
        "Version": "Version"
        "New Squad Name": "Neuer Staffelname"
        "Import": "Importieren"
        "XWS Import Dialog": "Importiere deine Liste über das XWS Format in YASB.<br><i>XWS ist ein Format um X-Wing Staffeln zwischen Anwendungen zu übertragen.</i>"
        "Other Stuff": "Sonstige Filterkriterien"
        "MultiFaction": "Gemischt"
        "Search for game term or card": "Suche nach Karten oder Schlagwörtern"
        collectionContentShips: (translator, number) ->
            "Du hast #{number} #{if number == 1 then 'Schiffsmodell' else 'Schiffsmodelle'} in deiner Sammlung."
        collectionContentShipsAndPilots: (translator, data) -> # data[0] is ships, data[1] is pilots
            "Du hast #{data[0]} #{if data[0] == 1 then 'Schiffsmodell' else 'Schiffsmodelle'} und #{data[1]} #{if data[1] == 1 then 'Pilotenkarte' else 'Pilotenkarten'} in deiner Sammlung."
        collectionContentUpgrades: (translator, number) ->
            "Du hast #{number} in deiner Sammlung."
        varPointCostsPoints: (translator, points) ->
            "<b>Kommandopunkte:</b> #{points} für "
        varPointCostsConditionAgility: (translator, values) ->
            "Wendigkeits #{values}"
        varPointCostsConditionIni: (translator, values) ->
            "Initiative #{values}"
        varPointCostsConditionBase: (translator, values) ->
            "Schiffsgröße klein, mittel, groß oder riesig"
        "Missing Item List:": "Um diese Staffel aufstellen zu können fehlen dir:" 
        pilotFlyingShip: (translator, pilot, ship) ->
            "Pilot #{pilot} im #{ship}"
        "Placeholder Textsearch Browser": "Suche nach Name, Kartentext oder Schiffen"
        noXYselected: (translator, xy) ->
            "Keine #{translator('ui', xy)} ausgewählt"
        "Select a card": "Wähle eine Karte aus der Liste links."
        yourXYsquads: (translator, faction) ->
            "Deine #{translator('faction', faction)} Staffeln"
        reallyDeleteSquadXY: (translator, squadname) -> 
            "#{squadname} wirklich löschen?"
        "Core Asteroid 0": "Grundspiel Asteroid 0"
        "Core Asteroid 1": "Grundspiel Asteroid 1"
        "Core Asteroid 2": "Grundspiel Asteroid 2"
        "Core Asteroid 3": "Grundspiel Asteroid 3"
        "Core Asteroid 4": "Grundspiel Asteroid 4"
        "Core Asteroid 5": "Grundspiel Asteroid 5"
        "VT49 Debris 0": "VT49 Trümmerwolke 0"
        "VT49 Debris 1": "VT49 Trümmerwolke 1"
        "VT49 Debris 2": "VT49 Trümmerwolke 2"
        "YT2400 Debris 0": "YT2400 Trümmerwolke 0"
        "YT2400 Debris 1": "YT2400 Trümmerwolke 1"
        "YT2400 Debris 2": "YT2400 Trümmerwolke 2"
        "Force Awakens Asteroid 0": "Erwachen der Macht Asteroid 0"
        "Force Awakens Asteroid 1": "Erwachen der Macht Asteroid 1"
        "Force Awakens Asteroid 2": "Erwachen der Macht Asteroid 2"
        "Force Awakens Asteroid 3": "Erwachen der Macht Asteroid 3"
        "Force Awakens Asteroid 4": "Erwachen der Macht Asteroid 4"
        "Force Awakens Asteroid 5": "Erwachen der Macht Asteroid 5"
        "Gas Cloud 1": "Gaswolke 1"
        "Gas Cloud 2": "Gaswolke 2"
        "Gas Cloud 3": "Gaswolke 3"
        "Gas Cloud 4": "Gaswolke 4"
        "Gas Cloud 5": "Gaswolke 5"
        "Gas Cloud 6": "Gaswolke 6"

    singular:
        'pilots': 'Pilot'
        'modifications': 'Modifikation'
        'titles': 'Titel'
        'ships' : 'Schiff'
    types:
        'Pilot': 'Pilot'
        'Modification': 'Modifikation'
        'Title': 'Titel'
        'Ship': 'Schiff'

    gameterms:
        'Small': 'Klein'
        'Medium': 'Mittel'
        'Large': 'Groß'
        'Huge': 'Riesig'

    faction:
        "Rebel Alliance": "Rebellen-Allianz"
        "Galactic Empire": "Galaktisches Imperium"
        "Scum and Villainy": "Abschaum und Kriminelle"
        "Resistance": "Widerstand"
        "First Order": "Erste Ordnung"
        "Galactic Republic": "Galaktische Republik"
        "Separatist Alliance": "Separatisten-Allianz"

    action:
        "Barrel Roll": "Fassrolle"
        "Focus": "Fokus"

    restrictions:
        "Restrictions": "Einschränkungen"
        "Initiative": "Initiative"
        "Agility": "Wendigkeit"
        "Non-Limited": "Nicht limitiert"
        " or Squad Including": " oder Staffel mit"
        "Ship": "Schiff"
        "Extra": "Extra"
    rulestypes:
        "faq": "FAQ"
        "glossary": "Referenzhandbuch"

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.Deutsch = () ->
    exportObj.cardLanguage = 'Deutsch'

    # Rename ships
    exportObj.renameShip """YT-1300""", """Modifizierter leichter YT-1300-Frachter"""
    exportObj.renameShip """StarViper""", """Angriffsplattform der Sternenviper-Klasse"""
    exportObj.renameShip """Scurrg H-6 Bomber""", """Scurrg-H-6-Bomber"""
    exportObj.renameShip """YT-2400""", """Leichter YT-2400-Frachter"""
    exportObj.renameShip """Auzituck Gunship""", """Auzituck-Kanonenboot"""
    exportObj.renameShip """Kihraxz Fighter""", """Kihraxz-Jäger"""
    exportObj.renameShip """Sheathipede-Class Shuttle""", """Raumfähre der Sheathipede-Klasse"""
    exportObj.renameShip """Quadjumper""", """Quadrijet-Transferschlepper"""
    exportObj.renameShip """Firespray-31""", """Patrouillenboot der Firespray-Klasse"""
    exportObj.renameShip """TIE Fighter""", """TIE/ln-Jäger"""
    exportObj.renameShip """Y-Wing""", """BTL-A4-Y-Flügler"""
    exportObj.renameShip """TIE Advanced""", """TIE-x1-Turbojäger"""
    exportObj.renameShip """Alpha-Class Star Wing""", """Sternflügler der Alpha-Klasse"""
    exportObj.renameShip """U-Wing""", """UT-60D-U-Flügler"""
    exportObj.renameShip """TIE Striker""", """TIE/sk-Stürmer"""
    exportObj.renameShip """B-Wing""", """A/SF-01-B-Flügler"""
    exportObj.renameShip """TIE Defender""", """TIE/D-Abwehrjäger"""
    exportObj.renameShip """TIE Bomber""", """TIE/sa-Bomber"""
    exportObj.renameShip """TIE Punisher""", """TIE/ca-Vergelter"""
    exportObj.renameShip """Aggressor""", """Aggressor-Angriffsjäger"""
    exportObj.renameShip """G-1A Starfighter""", """G-1A Sternenjäger"""
    exportObj.renameShip """VCX-100""", """Leichter VCX-100-Frachter"""
    exportObj.renameShip """YV-666""", """Leichter YV-666-Frachter"""
    exportObj.renameShip """TIE Advanced Prototype""", """TIE-v1-Turbojäger"""
    exportObj.renameShip """Lambda-Class Shuttle""", """T-4A-Raumfähre der Lambda-Klasse"""
    exportObj.renameShip """TIE Phantom""", """TIE/ph-Phantom"""
    exportObj.renameShip """VT-49 Decimator""", """VT-49-Decimator"""
    exportObj.renameShip """TIE Aggressor""", """TIE/ag-Agressor"""
    exportObj.renameShip """K-Wing""", """BTL-S8-K-Flügler"""
    exportObj.renameShip """ARC-170""", """ARC-170-Sternenjäger"""
    exportObj.renameShip """Attack Shuttle""", """Jagdshuttle"""
    exportObj.renameShip """X-Wing""", """T-65-X-Flügler"""
    exportObj.renameShip """HWK-290""", """Leichter HWK-290-Frachter"""
    exportObj.renameShip """A-Wing""", """RZ-1-A-Flügler"""
    exportObj.renameShip """Fang Fighter""", """Fangjäger"""
    exportObj.renameShip """Z-95 Headhunter""", """Z-95-AF4-Kopfjäger"""
    exportObj.renameShip """M12-L Kimogila Fighter""", """M12-L-Kimogila-Jäger"""
    exportObj.renameShip """E-Wing""", """E-Flügler"""
    exportObj.renameShip """TIE Interceptor""", """TIE-Abfangjäger"""
    exportObj.renameShip """Lancer-Class Pursuit Craft""", """Jagdschiff der Lanzen-Klasse"""
    exportObj.renameShip """TIE Reaper""", """TIE-Schnitter"""
    exportObj.renameShip """M3-A Interceptor""", """M3-A-Abfangjäger"""
    exportObj.renameShip """JumpMaster 5000""", """JumpMaster 5000"""
    exportObj.renameShip """Customized YT-1300""", """Modifizierter YT-1300-Frachter"""
    exportObj.renameShip """Escape Craft""", """Fluchtschiff"""
    exportObj.renameShip """TIE/FO Fighter""", """TIE/eo-Jäger"""
    exportObj.renameShip """TIE/SF Fighter""", """TIE/sf Jäger"""
    exportObj.renameShip """Upsilon-Class Command Shuttle""", """Kommandoshuttle der Ypsilon-Klasse"""
    exportObj.renameShip """TIE/VN Silencer""", """TIE/vn-Dämpfer"""
    exportObj.renameShip """T-70 X-Wing""", """T-70-X-Flügler"""
    exportObj.renameShip """RZ-2 A-Wing""", """RZ-2-A-Flügler"""
    exportObj.renameShip """MG-100 StarFortress""", """MG-100-SternenFestung"""
    exportObj.renameShip """Mining Guild TIE Fighter""", """Modifizierter TIE/ln-Jäger"""
    exportObj.renameShip """Scavenged YT-1300""", """YT-1300 vom Schrottplatz"""
    exportObj.renameShip """V-19 Torrent""", """V-19-Torrent-Sternenjäger"""    
    exportObj.renameShip """Belbullab-22 Starfighter""", """Bellbullab-22 Sternenjäger"""
    exportObj.renameShip """Vulture-class Droid Fighter""", """Droidenjäger der Vulture-Klasse"""
    exportObj.renameShip """Sith Infiltrator""", """Sith-Infiltrator"""

    pilot_translations =
        "0-66":
           display_name: """0-66"""
           text: """Nachdem du verteidigt hast, darfst du 1 Berechnungsmarker ausgeben, um eine Aktion durchzuführen."""
        "104th Battalion Pilot":
           display_name: """Pilot des 104. Bataillons"""
           text: """<i class = flavor_text>Der ARC-170 ist ein überragender schwerer Begleitjäger, ausgestattet mit Bug- und Heckgeschützen, Sprengkörpern sowie einem Astromechdroiden zur Navigation. Wo auch immer diese mächtigen Schiffe zum Einsatz kommen, stärken sie die Präsenz der Republikanischen Flotte.</i>"""
        "4-LOM":
           display_name: """4-LOM"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt hast, erhalte 1 Berechnungsmarker.%LINEBREAK%Zu Beginn der Endphase darfst du 1 Schiff in Reichweite 0-1 wählen. Falls du das tust, transferiere 1 deiner Stressmarker auf jenes Schiff."""
        "Nashtah Pup":
           display_name: """Nashtahwelpe"""
           text: """Du kannst nur über eine Notabsetzung abgesetzt werden, und du hast den Namen, die Initiative, die Pilotenfähigkeit und die Schiffs-%CHARGE% der befreundeten, zerstörten <strong>Reißzahn</strong>.%LINEBREAK%<strong>Fluchtschiff:</strong> <strong>Aufbau: </strong>Erfordert die <strong>Reißzahn</strong>. Du <b>musst</b> das Spiel angedockt an der <strong>Reißzahn</strong> beginnen."""
        "AP-5":
           display_name: """AP-5"""
           text: """Solange du koordinierst, falls du ein Schiff mit genau 1 Stressmarker wählst, kann es Aktionen durchführen.%LINEBREAK%<strong>Kommunikationsantennen:</strong> Solange du angedockt bist, erhält dein Trägerschiff %COORDINATE%. Bevor dein Trägerschiff aktiviert wird, darf es eine %COORDINATE%-Aktion durchführen."""
        "Academy Pilot":
           display_name: """Pilot der Akademie"""
           text: """<i class = flavor_text>Was Sternenjäger betrifft, setzt das Galaktische Imperium hauptsächlich auf den schnellen und wendigen TIE/ln von Sienar Flottensysteme und lässt ihn in erstaunlicher Stückzahl produzieren.</i>"""
        "Ahhav":
           display_name: """Ahhav"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls das feindliche Schiff eine größere Größenkategorie hat als du, wirf 1 zusätzlichen Würfel.%LINEBREAK%<strong>Stabilisatorkerbe:</strong> Solange du dich bewegst, ignorierst du Asteroiden."""
        "Ahsoka Tano":
           display_name: """Ahsoka Tano"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0-1 wählen und 1 %FORCE% ausgeben. Jenes Schiff darf eine Aktion durchführen, auch falls es gestresst ist. %LINEBREAK%<strong>Präzisionssteuerung:</strong> Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 %FORCE% ausgeben, um eine %BOOST%- oder %BARRELROLL%Aktion durchzuführen."""
        "Airen Cracken":
           display_name: """Airen Cracken"""
           text: """Nachdem du einen Angriff durchgeführt hast, darfst du 1 befreundetes Schiff in Reichweite 1 wählen. Jenes Schiff darf eine Aktion durchführen, die es als rot behandelt."""
        "Alpha Squadron Pilot":
           display_name: """Pilot der Alpha-Staffel"""
           text: """<i class = flavor_text>Sienar Flottensysteme konzipierte den TIE-Abfangjäger mit vier Laserkanonen an den Tragflächenspitzen. Dadurch ist er seinen Vorgängermodellen waffentechnisch weit überlegen.</i>%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Anakin Skywalker":
           display_name: """Anakin Skywalker"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, falls ein feindliches Schiff in deinem %FRONTARC% in Reichweite 0-1 oder in deinem %BULLSEYEARC% ist, darfst du 1 %FORCE% ausgeben, um 1 Stressmarker zu entfernen.%LINEBREAK%<strong>Präzisionssteuerung:</strong> Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 %FORCE% ausgeben, um eine %BOOST%- oder %BARRELROLL%-Aktion durchzuführen."""
        "Anakin Skywalker (N-1 Starfighter)":
           display_name: """Anakin Skywalker"""
           text: """Bevor du dein Manöver aufdeckst, darfst du 1&nbsp;%FORCE% ausgeben, um eine Fassrolle zu fliegen (dies ist keine Aktion).%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%&nbsp;-Aktion durchführen."""
        "Anakin Skywalker (Y-Wing)":
           display_name: """Anakin Skywalker"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, falls ein feindliches Schiff in deinem %FRONTARC% in Reichweite&nbsp;0-1 oder in deinem %BULLSEYEARC%, ist, darfst du 1&nbsp;%FORCE% ausgeben, um 1&nbsp;Stressmarker zu entfernen.%LINEBREAK%<strong>Gepanzerte Hülle:</strong> Solange du verteidigst, falls du nicht kritisch beschädigt bist, ändere 1&nbsp;%CRIT%&nbsp;-Ergebnis in ein&nbsp;%HIT%&nbsp;-Ergebnis."""
        "Arvel Crynyd":
           display_name: """Arvel Crynyd"""
           text: """Du kannst Primärangriffe in Reichweite 0 durchführen.%LINEBREAK%Falls du durch Überschneidung mit einem anderen Schiff an einer %BOOST%-Aktion scheitern würdest, handle sie stattdessen so ab, als würdest du ein Manöver teilweise ausführen.%LINEBREAK%<strong>Schwenkbare Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Asajj Ventress":
           display_name: """Asajj Ventress"""
           text: """Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in deinem %SINGLETURRETARC% in Reichweite 0-2 wählen und 1 %FORCE% ausgeben. Falls du das tust, erhält jenes Schiff 1 Stressmarker, es sei denn, es entfernt 1 grünen Marker."""
        "Autopilot Drone":
           display_name: """Autopilot-Drone"""
           text: """<i class = flavor_text>Manchmal sind Herstellerwarnungen dazu gemacht, um sie zu ignorieren.</i>%LINEBREAK%<strong>Manipulierte Energiezellen:</strong> Während der Systemphase, falls du nicht angedockt bist, verliere 1 %CHARGE%. Am Ende der Aktivierungsphase, falls du 0 %CHARGE% hast, wirst du zerstört. Bevor du entfernt wirst, erleidet jedes Schiff in Reichweite 0-1 1 %CRIT%-Schaden."""
        "BB-8":
           display_name: """BB-8"""
           text: """Während der Systemphase darfst du eine rote %BARRELROLL%- oder %BOOST%-Aktion durchführen."""
        "Bandit Squadron Pilot":
           display_name: """Pilot der Banditen-Staffel"""
           text: """<i class = flavor_text>Der Z-95-Kopfjäger ist ein direkter Vorläufer von Incoms Vorzeigemodell, dem T-65-X-Flügler. Obwohl er nach modernen Standards als veraltet gilt, ist er nach wie vor ein vielseitiger und schlagkräftiger Sternjäger.</i>"""
        "Baron of the Empire":
           display_name: """Imperialer Baron"""
           text: """<i class = flavor_text>Sienars TIE-v1-Turbojäger war eine bahnbrechende Entwicklung auf dem Gebiet der Sternenjäger-Technologie. Er verfügt über stärkere Triebwerke, einen Raketenwerfer sowie klappbare S-Flügel.</i>"""
        "Barriss Offee":
           display_name: """Barriss Offee"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 einen Angriff durchführt, falls der Verteidiger in seinem %BULLSEYEARC% ist, darfst du 1 %FORCE% ausgeben, um 1 %FOCUS%-Ergebnis in ein %HIT%-Ergebnis oder 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis zu ändern. %LINEBREAK%<strong>Präzisionssteuerung:</strong> Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 %FORCE% ausgeben, um eine %BOOST%- oder %BARRELROLL%-Aktion durchzuführen."""
        "Ben Teene":
           display_name: """Ben Teene"""
           text: """Nachdem du einen Angriff durchgeführt hast, falls der Verteidiger in deinem %SINGLETURRETARC% ist, ordne dem Verteidiger den Zustand <strong>Aus der Fassung</strong> zu."""
        "Benthic Two Tubes":
           display_name: """Benthic Two Tubes"""
           text: """Nachdem du eine %FOCUS%-Aktion durchgeführt hast, darfst du 1 deiner Fokusmarker auf ein befreundetes Schiff in Reichweite 1-2 transferieren."""
        "Berwer Kret":
           display_name: """Berwer Kret"""
           text: """Nachdem du einen Angriff durchgeführt hast, der getroffen hat, darf jedes befreundete Schiff mit %CALCULATE% in seiner Aktionsleiste, das den Verteidiger als Ziel erfasst hat, eine rote&nbsp;%CALCULATE%&nbsp;-Aktion durchführen. %LINEBREAK%<strong>Fangstrahl-Zielsystem:</strong> Du kannst deinen %SINGLETURRETARC% nicht auf deinen %REARARC%rotieren. Nachdem du ein Manöver ausgeführt hast, darfst du 1 Fangstrahlmarker erhalten, um eine&nbsp;%ROTATEARC%&nbsp;-Aktion durchzuführen."""
        "Biggs Darklighter":
           display_name: """Biggs Darklighter"""
           text: """Solange ein anderes befreundetes Schiff in Reichweite 0-1 verteidigt, vor dem Schritt „Ergebnisse neutralisieren“, falls du im Angriffswinkel bist, darfst du 1 %HIT%- oder %CRIT%-Schaden erleiden, um 1 passendes Ergebnis zu negieren. """
        "Binayre Pirate":
           display_name: """Binayre-Pirat"""
           text: """<i class = flavor_text>Kath Scarlets Piraten und Schmuggler haben ihre Basis auf den Zwillingswelten Talus und Tralus errichtet. Selbst in Verbrecherkreisen gelten sie als ausgesprochen launenhaft und verrucht.</i>"""
        "Black Squadron Ace":
           display_name: """Fliegerass der schwarzen Staffel"""
           text: """<i class = flavor_text>In der Schlacht von Yavin begleiteten die Elite­-piloten der schwarzen Staffel mit ihren TIE/ln-Jägern Darth Vader auf seinem vernichtenden Schlag gegen die Rebellion.</i>"""
        "Black Squadron Ace (T-70)":
           display_name: """Fliegerass der schwarzen Staffel"""
           text: """<i class = flavor_text>Während des Kalten Krieges führte Poe Damerons schwarze Staffel gewagte Geheimoperationen gegen die Erste Ordnung durch und verstieß dabei gegen Verträge, die vom Senat der Neuen Republik ratifiziert worden waren.</i>%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Black Squadron Scout":
           display_name: """Aufklärer der schwarzen Staffel"""
           text: """<i class = flavor_text>Schwenkbare Tragflächen verleihen dem schwerbewaffneten Atmosphärenflieger zusätzliche Geschwindigkeit und Manövrierbarkeit.</i>%LINEBREAK% <strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        "Black Sun Ace":
           display_name: """Fliegerass der Schwarzen Sonne"""
           text: """<i class = flavor_text>Der Kihraxz-Angriffsjäger wurde eigens für das Verbrechersyndikat Schwarze Sonne entwickelt, dessen hochbezahlte Fliegerasse ein leistungsstarkes, wendiges Schiff verlangten, das ihren Fähigkeiten entsprach.</i>"""
        "Black Sun Assassin":
           display_name: """Attentäter der Schwarzen Sonne"""
           text: """<i class = flavor_text>Ein Attentat kann mit einem Schuss im Dunkeln oder mit einem vergifteten Getränk verübt werden. Aussagekräftiger ist jedoch eine brennende Raumfähre, die hilflos vom Himmel trudelt. </i>%LINEBREAK%<strong>Mikrodüsen:</strong> Solange du eine Fassrolle durchführst, <b>musst</b> du die %BANKLEFT%- oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Black Sun Enforcer":
           display_name: """Vollstrecker der Schwarzen Sonne"""
           text: """<i class = flavor_text>Prinz Xizor persönlich entwickelte die Angriffsplattform der SternenViper-Klasse in Zusammenarbeit mit MandalMotors und schuf so einen der vorzüglichsten Sternenjäger der Galaxis. </i>%LINEBREAK%<strong>Mikrodüsen:</strong> Solange du eine Fassrolle durchführst, <b>musst</b> du die %BANKLEFT%- oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Black Sun Soldier":
           display_name: """Kampfpilot der Schwarzen Sonne"""
           text: """<i class = flavor_text>Das große und einflussreiche Verbrechersyndikat Schwarze Sonne hat immer Bedarf an guten Piloten, die bei der Wahl ihres Arbeitgebers nicht allzu kritisch sind. </i>"""
        "Blade Squadron Veteran":
           display_name: """Veteran der Klingen-Staffel"""
           text: """<i class = flavor_text>Das Cockpit des B-Flüglers ist in einen einzigartigen Gyrostabilisator eingebunden, der den Piloten während des gesamten Fluges in aufrechter Position hält.</i>"""
        "Blue Squadron Escort":
           display_name: """Eskorte der blauen Staffel"""
           text: """<i class = flavor_text>Der T-65-X-Flügler aus dem Hause Incom erwies sich schnell als eine der effektivsten und vielseitigsten Jagdmaschinen der Galaxis - und als wahrer Segen für die Rebellion.</i>"""
        "Blue Squadron Pilot":
           display_name: """Pilot der blauen Staffel"""
           text: """<i class = flavor_text>Seine schweren Waffensysteme und unverwüstlichen Schilde machen den B-Flügler zu einer der innovativsten Jagdmaschinen der Allianz.</i>"""
        "Blue Squadron Protector":
           display_name: """Beschützer der blauen Staffel"""
           text: """<i class = flavor_text>Die Elitepiloten der blauen Staffel sind Klone, speziell ausgebildet, um ihre V-19 im perfekten Einklang mit ihren Jedi-Kommandanten zu fliegen. Oft unterstützen sie berühmte Persönlichkeiten wie Anakin Skywalker oder Ahsoka Tano.</i>"""
        "Blue Squadron Recruit":
           display_name: """Rekrut der blauen Staffel"""
           text: """<i class = flavor_text>Überall in der Galaxis wachsen junge Leute mit Geschichten über die Helden des Galaktischen Bürgerkriegs auf. Viele lernen das Fliegen in den Cockpits, in denen ihre Eltern einst das Imperium bekämpften.</i>%LINEBREAK%<strong>Optimierte Gyrostabilisatoren:</strong> Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren. Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%- oder eine rote %ROTATEARC%-Aktion durchführen."""
        "Blue Squadron Rookie":
           display_name: """Anfängerpilot der blauen Staffel"""
           text: """<i class = flavor_text>Incom-FreiTek setzte bei der Entwicklung des T-70-X-Flüglers auf eine Verbesserung der taktischen Flexibilität des altehrwürdigen T-65-Modells. Sein moderner Droidenport ist mit fast allen gängigen Astromechs kompatibel, und dank seiner modularen Waffenkapseln kann er für jeden Einsatz mit maßgeschneiderter Bewaffnung ausgestattet werden.</i>%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Blue Squadron Scout":
           display_name: """Aufklärer der blauen Staffel"""
           text: """<i class = flavor_text>Der UT-60D-U-Flügler deckt den Bedarf der Rebellion an schnellen, unverwüstlichen Truppentransportern. Meistens wird er eingesetzt, um Soldaten im Schutz der Dunkelheit oder inmitten eines tobenden Gefechts an ihren Einsatzort zu befördern. </i>"""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du für jedes feindliche Schiff in Reichweite 0-1 1 deiner Würfel neu werfen."""
        "Bodhi Rook":
           display_name: """Bodhi Rook"""
           text: """Befreundete Schiffe können Objekte in Reichweite 0-3 eines beliebigen befreundeten Schiffes als Ziele erfassen."""
        "Bossk":
           display_name: """Bossk"""
           text: """Solange du einen Primärangriff durchführst, nach dem Schritt „Ergebnisse neutralisieren“, darfst du 1 %CRIT%-Ergebnis ausgeben, um 2 %HIT%-Ergebnisse hinzuzufügen."""
        "Bounty Hunter":
           display_name: """Kopfgeldjäger"""
           text: """<i class = flavor_text>Das Patrouillenboot der Firespray-Klasse ist berüchtigt, weil es mit den Kopfgeldjägern Jango Fett und Boba Fett assoziiert wird, die ihr Schiff mit unzähligen tödlichen Waffen gespickt hatten.</i>"""
        "Bravo Flight Officer":
           display_name: """Flugoffizier der Bravo-Staffel"""
           text: """<i class = flavor_text>Die freiwilligen Piloten der Königlichen Sicherheitskräfte von Naboo haben sich dem Schutz des Volkes und der Ideale ihrer Heimatwelt verschrieben und vertrauen darauf, dass ihre Königin sie nur als letzten Ausweg ins Gefecht schicken wird.</i>%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%&nbsp;-Aktion durchführen."""
        "Braylen Stramm":
           display_name: """Braylen Stramm"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du bis zu 2 deiner Würfel neu werfen."""
        "Captain Cardinal":
           display_name: """Captain Cardinal"""
           text: """Solange ein befreundetes Schiff in Reichweite 1-2 mit niedrigerer Initiative als du verteidigt oder einen Angriff durchführt, falls du mindestens 1 %CHARGE% hast, darf jenes Schiff 1 %FOCUS%-Ergebnis neu werfen.%LINEBREAK%Nachdem ein feindliches Schiff in Reichweite 0-3 zerstört worden ist, verliere 1 %CHARGE%.%LINEBREAK%<strong>Gekoppelte Geschützbatterie:</strong> Solange du einen %CANNON%-Angriff durchführst, wirf 1 zusätzlichen Würfel."""
        "Captain Feroph":
           display_name: """Captain Feroph"""
           text: """Solange du verteidigst, falls der Angreifer keine grünen Marker hat, darfst du 1 deiner Leerseiten- oder %FOCUS%-Ergebnisse in ein %EVADE%-Ergebnis ändern.%LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        "Captain Jonus":
           display_name: """Captain Jonus"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-1 einen %TORPEDO%- oder %MISSILE%-Angriff durchführt, darf jenes Schiff bis zu 2 Angriffswürfel neu werfen. %LINEBREAK%<strong>Wendiger Bomber:</strong> Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Captain Jostero":
           display_name: """Captain Jostero"""
           text: """Nachdem ein feindliches Schiff Schaden erlitten hat, falls es nicht verteidigt, darfst du einen Bonusangriff gegen jenes Schiff durchführen."""
        "Captain Kagi":
           display_name: """Captain Kagi"""
           text: """Zu Beginn der Kampfphase darfst du 1 oder mehrere befreundete Schiffe in Reichweite 0-3 wählen. Falls du das tust, transferiere alle feindlichen Zielerfassungsmarker von den gewählten Schiffen auf dich."""
        "Captain Nym":
           display_name: """Captain Nym"""
           text: """Bevor eine befreundete Bombe oder Mine detonieren würde, darfst du 1 %CHARGE% ausgeben, um die Detonation zu verhindern.%LINEBREAK% Solange du gegen einen Angriff verteidigst, der durch eine Bombe oder Mine versperrt ist, wirf 1 zusätzlichen Verteidigungswürfel."""
        "Captain Oicunn":
           display_name: """Captain Oicunn"""
           text: """Du kannst Primärangriffe in Reichweite 0 durchführen."""
        "Captain Rex":
           display_name: """Captain Rex"""
           text: """Nachdem du einen Angriff durchgeführt hast, ordne dem Verteidiger den Zustand <strong>Sperrfeuer</strong> zu."""
        "Captain Sear":
           display_name: """Captain Sear"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-3 einen Primärangriff durchführt, falls der Verteidiger in seinem %BULLSEYEARC% ist, darf das befreundete Schiff vor dem Schritt „Ergebnisse neutralisieren“ 1 Berechnungsmarker ausgeben, um 1 %EVADE%-Ergebnis zu negieren."""
        "Captain Seevor":
           display_name: """Captain Seevor"""
           text: """Solange du verteidigst oder einen Angriff durchführst, bevor die Angriffswürfel geworfen werden, falls du nicht im %BULLSEYEARC% des feindlichen Schiffes bist, darfst du 1 %CHARGE% ausgeben. Falls du das tust, erhält das feindliche Schiff 1 Störsignalmarker.%LINEBREAK%<strong>Stabilisatorkerbe:</strong> Solange du dich bewegst, ignorierst du Asteroiden."""
        "Cartel Executioner":
           display_name: """Killer des Kartells"""
           text: """<i class = flavor_text>Viele erfahrene Piloten, die im Dienst der huttischen Kajidics und anderer Verbrecherorganisationen stehen, entscheiden sich für den M12-L-Kimogila-Jäger aufgrund seiner beträchtlichen Feuerkraft und seines furchteinflößenden Rufes.</i>%LINEBREAK% <strong>Todsicherer Treffer:</strong> Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, können Verteidigungswürfel nicht unter Verwendung von grünen Markern modifiziert werden."""
        "Cartel Marauder":
           display_name: """Kartell-Marodeur"""
           text: """<i class = flavor_text>Der vielseitige Kihraxz ist dem beliebten X-Flügler von Incom nachempfunden und verfügt über eine Reihe von Modifikationspaketen, mit denen er für verschiedenste Aufgabenbereiche angepasst werden kann.</i>"""
        "Cartel Spacer":
           display_name: """Raumfahrer des Kartells"""
           text: """<i class = flavor_text>Der M3-A-„Scyk“-Abfangjäger von MandalMotors wurde in großer Stückzahl vom Hutt-Kartell und den Car’das-Schmugglern angeschafft. Grund dafür waren der günstige Einstiegspreis und die vielen Ausstattungsoptionen des Jägers. </i>%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """Zu Beginn der Aktivierungsphase darfst du 1 befreundetes Schiff in Reichweite 1-3 wählen. Falls du das tust, entfernt jenes Schiff 1 Stressmarker."""
        "Cat":
           display_name: """Cat"""
           text: """While you perform a primary attack, if the defender is at range 0-1 of at least 1 friendly device, roll 1 additional die."""
        "Cavern Angels Zealot":
           display_name: """Fanatiker der Sturmengel"""
           text: """<i class = flavor_text>Anders als die meisten Widerstandszellen sind Saw Gerreras Partisanen bereit, bis zum Äußersten zu gehen, um die Pläne des Imperiums zu durchkreuzen. Von Geonosis bis Jedha liefern sie sich blutige Auseinandersetzungen mit der imperialen Obrigkeit.</i>"""
        "Chertek":
           display_name: """Chertek"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger gefangen ist, darfst du bis zu 2&nbsp;Angriffswürfel neu werfen.%LINEBREAK%<strong>Pinpoint Tractor Array:</strong> You cannot rotate your %SINGLETURRETARC% to your %REARARC%. After you execute a maneuver, you may gain 1&nbsp;tractor token to perform a&nbsp;%ROTATEARC%&nbsp;action."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """Bevor dir eine offene Schadenskarte zugeteilt werden würde, darfst du 1 %CHARGE% ausgeben, um die Karte stattdessen verdeckt zugeteilt zu bekommen."""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca (Resistance)"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-3 zerstört worden ist, darfst du eine Aktion durchführen. Dann darfst du einen Bonusangriff durchführen."""
        "Cobalt Squadron Bomber":
           display_name: """Bomber der Kobalt-Staffel"""
           text: """<i class = flavor_text>Egal ob sie Protonenbomben oder Hilfsgüter in den Abwurfsilos ihrer SternenFestungen geladen haben, die Helden der Kobalt-Staffel sind stets bereit, ihr Leben zu riskieren, um die Galaxis zu einem besseren Ort zu machen.</i>"""
        "Colonel Jendon":
           display_name: """Colonel Jendon"""
           text: """Zu Beginn der Aktivierungsphase darfst du 1 %CHARGE% ausgeben. Falls du das tust, <b>müssen</b> befreundete Schiffe, solange sie in dieser Runde Ziele erfassen, Ziele jenseits von Reichweite 3 erfassen, anstatt in Reichweite 0-3."""
        "Colonel Vessery":
           display_name: """Colonel Vessery"""
           text: """Solange du einen Angriff gegen ein erfasstes Schiff durchführst, nachdem du Angriffswürfel geworfen hast, darfst du den Verteidiger als Ziel erfassen.%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Commander Malarus":
           display_name: """Commander Malarus"""
           text: """Zu Beginn der Kampfphase darfst du 1 %CHARGE% ausgeben und 1 Stressmarker erhalten. Falls du das tust, darfst du bis zum Ende der Runde, solange du verteidigst oder einen Angriff durchführst, alle deine %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse ändern."""
        "Constable Zuvio":
           display_name: """Constable Zuvio"""
           text: """Falls du ein Gerät abwerfen würdest, darfst du es stattdessen unter Verwendung der [1 %STRAIGHT%]-Schablone starten.%LINEBREAK%<strong>Schlepperstrahl:</strong> <strong>Aktion:</strong> Wähle ein Schiff in deinem %FRONTARC% in Reichweite 1. Jenes Schiff erhält 1 Fangstrahlmarker oder 2 Fangstrahlmarker, falls es in deinem %BULLSEYEARC% in Reichweite 1 ist."""
        "Contracted Scout":
           display_name: """Angeheuerter Kundschafter"""
           text: """<i class = flavor_text>Der leichtbewaffnete JumpMaster 5000 ist für Langstreckenaufklärung und die Erschließung neuer Hyperraumrouten vorgesehen. Häufig wird er mit umfangreichen Ausstattungspaketen nachgerüstet.</i>"""
        "Corran Horn":
           display_name: """Corran Horn"""
           text: """Bei Initiative 0 darfst du einen Bonus-Primärangriff gegen ein feindliches Schiff in deinem %BULLSEYEARC% durchführen. Falls du das tust, erhalte zu Beginn der nächsten Planungsphase 1 Entwaffnet-Marker.%LINEBREAK%<strong>Experimentelle Scanner:</strong> Du kannst Ziele jenseits von Reichweite 3 erfassen. Du kannst keine Ziele in Reichweite 1 erfassen."""
        "Count Dooku":
           display_name: """Count Dooku"""
           text: """Nachdem du verteidigt hast, falls der Angreifer in deinem Feuerwinkel ist, darfst du 1 %FORCE% ausgeben, um 1 deiner blauen oder roten Marker zu entfernen.%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, der getroffen hat, darfst du 1 %FORCE% ausgeben, um eine Aktion durchzuführen."""
        "Countess Ryad":
           display_name: """Gräfin Ryad"""
           text: """Solange du ein %STRAIGHT%-Manöver ausführen würdest, darfst du die Schwierigkeit des Manövers erhöhen. Falls du das tust, führe es stattdessen als %KTURN%-Manöver aus.%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Cova Nell":
           display_name: """Cova Nell"""
           text: """Solange du verteidigst oder einen Primärangriff durchführst, falls dein aufgedecktes Manöver rot ist, wirf 1&nbsp;zusätzlichen Würfel."""
        "Crymorah Goon":
           display_name: """Verbrecher der Crymorah"""
           text: """<i class = flavor_text>Mit seinen schweren Hüllenplatten, starken Schilden und schlagkräftigen Geschützen ist der Y-Flügler zwar alles andere als behände, dafür eignet er sich hervorragend als Patrouillenschiff.</i>"""
        "Cutlass Squadron Pilot":
           display_name: """Pilot der Entermesser-Staffel"""
           text: """<i class = flavor_text>Das Konzept des TIE-Vergelters basiert auf dem erfolgreichen TIE-Bomber und ergänzt ihn um Schilde, einen zweiten Bombenabwurfschacht sowie drei weitere Munitionskapseln, die jeweils mit einem Zwillings-Ionenantrieb ausgerüstet sind.</i>"""
        "DBS-32C":
           display_name: """DBS-32C"""
           text: """Zu Beginn der Kampfphase darfst du 1&nbsp;Berechnungsmarker ausgeben, um eine %COORDINATE%-Aktion durchzuführen. Du kannst keine Schiffe koordinieren, die die Schiffs­fähigkeit <strong>Vernetzte Berechnungssysteme</strong> nicht haben. %LINEBREAK%<strong>Vernetzte Berechnungssysteme:</strong> Solange du verteidigst oder einen Angriff durchführst, darfst du 1&nbsp;Berechnungsmarker von einem befreundeten Schiff in Reichweite 0-1 ausgeben, um 1&nbsp;%FOCUS%-Ergebnis in ein %EVADE% oder %HIT%-Ergebnis zu ändern."""
        "DBS-404":
           display_name: """DBS-404"""
           text: """Du kannst Primärangriffe in Reichweite&nbsp;0 durchführen. Solange du einen Angriff in Angriffsreichweite&nbsp;0-1 durchführst, musst du 1&nbsp;zusätzlichen Würfel werfen. Nachdem der Angriff getroffen hat, erleide 1&nbsp;%CRIT%-Schaden.%LINEBREAK%<strong>Vernetzte Berechnungssysteme:</strong> Solange du verteidigst oder einen Angriff durchführst, darfst du 1&nbsp;Berechnungsmarker von einem befreundeten Schiff in Reichweite 0-1 ausgeben, um 1&nbsp;%FOCUS%-Ergebnis in ein %EVADE% oder %HIT%-Ergebnis zu ändern."""
        "DFS-081":
           display_name: """DFS-081"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-1 verteidigt, darf es 1 Berechnungsmarker ausgeben, um alle %CRIT%-Ergebnisse in %HIT%-Ergebnisse zu ändern.%LINEBREAK%<strong>Vernetzte Berechnungssysteme:</strong> Solange du verteidigst oder einen Angriff durchführst, darfst du 1 Berechnungsmarker von einem befreundeten Schiff in Reichweite 0-1 ausgeben, um 1 %FOCUS%-Ergebnis in ein %EVADE%-oder %HIT%-Ergebnis zu ändern."""
        "DFS-311":
           display_name: """DFS-311"""
           text: """Zu Beginn der Kampfphase darfst du 1 deiner Berechnungsmarker auf ein anderes befreundetes Schiff in Reichweite 0-3 transferieren.%LINEBREAK%<strong>Vernetzte Berechnungssysteme:</strong> Solange du verteidigst oder einen Angriff durchführst, darfst du 1 Berechnungsmarker von einem befreundeten Schiff in Reichweite 1 ausgeben, um 1 %FOCUS%-Ergebnis in ein %EVADE%- oder %HIT%-Ergebnis zu ändern."""
        "Dace Bonearm":
           display_name: """Dace Bonearm"""
           text: """Nachdem ein feindliches Schiff in Reichweite 0-3 mindestens 1 Ionenmarker bekommen hat, darfst du 3 %CHARGE% ausgeben. Falls du das tust, erhält jenes Schiff 2 zusätzliche Ionenmarker."""
        "Dalan Oberos (StarViper)":
           display_name: """Dalan Oberos (StarViper)"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 Stressmarker erhalten, um dein Schiff um 90° zu drehen.%LINEBREAK%<strong>Mikrodüsen:</strong> Solange du eine Fassrolle durchführst, <b>musst</b> du die %BANKLEFT%- oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Dalan Oberos":
           display_name: """Dalan Oberos"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff, das Schilde hat, in deinem %BULLSEYEARC% wählen und 1 %CHARGE% ausgeben. Falls du das tust, verliert jenes Schiff 1 Schild und du stellst 1 Schild wieder her.%LINEBREAK%<strong>Todsicherer Treffer:</strong> Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, können Verteidigungswürfel nicht unter Verwendung von grünen Markern modifiziert werden."""
        "Dark Courier":
           display_name: """Dunkler Bote"""
           text: """<i class = flavor_text>Die Scimitar war ein stark modifiziertes Raumschiff, ausgestattet mit Tarntechnologie und modernen Überwachungsgeräten für Infiltrations und Personenbeseitigungseinsätze.</i>"""
        "Darth Maul":
           display_name: """Darth Maul"""
           text: """Nachdem du einen Angriff durchgeführt hast, darfst du 2 %FORCE% ausgeben, um einen Bonus-Primärangriff gegen ein anderes Ziel durchzuführen. Falls dein Angriff verfehlt hat, darfst du jenen Bonus- Primärangriff stattdessen gegen dasselbe Ziel durchführen."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """Nachdem du eine Aktion durchgeführt hast, darfst du 1 %FORCE% ausgeben, um eine Aktion durchzuführen.%LINEBREAK%<strong>Verbesserter Zielcomputer:</strong> Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Dash Rendar":
           display_name: """Dash Rendar"""
           text: """Solange du dich bewegst, ignorierst du Hindernisse.%LINEBREAK%<strong>Toter Winkel:</strong> Solange du einen Primärangriff in Reichweite 0-1 durchführst, wende den Bonus für Reichweite 0-1 nicht an und wirf 1 Angriffswürfel weniger."""
        "Del Meeko":
           display_name: """Del Meeko"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 gegen einen beschädigten Angreifer verteidigt, darf der Verteidiger 1 Verteidigungswürfel neu werfen."""
        "Delta Squadron Pilot":
           display_name: """Pilot der Delta-Staffel"""
           text: """<i class = flavor_text>Der TIE-Abwehrjäger ist nicht nur mit Raketenwerfern und sechs Kanonen an den Tragflächenspitzen, sondern auch mit Deflektorschilden und einem Hyperantrieb ausgestattet.</i>%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Dengar":
           display_name: """Dengar"""
           text: """Nachdem du verteidigt hast, falls der Angreifer in deinem %FRONTARC% ist, darfst du 1 %CHARGE% ausgeben, um einen Bonusangriff gegen den Angreifer durchzuführen."""
        "Dineé Ellberger":
           display_name: """Dineé Ellberger"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls dein aufgedecktes Manöver dieselbe Geschwindigkeit hat wie das des feindlichen Schiffes, können die Würfel jenes Schiffes nicht modifiziert werden.%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%&nbsp;-Aktion durchführen."""
        "Drea Renthal":
           display_name: """Drea Renthal"""
           text: """Solange ein befreundetes nicht-limitiertes Schiff einen Angriff durchführt, falls der Verteidiger in deinem Feuerwinkel ist, darf der Angreifer 1 Angriffswürfel neu werfen."""
        "Edon Kappehl":
           display_name: """Edon Kappehl"""
           text: """Nachdem du ein blaues oder weißes Manöver vollständig ausgeführt hast, falls du in dieser Runde noch kein Gerät abgeworfen oder gestartet hast, darfst du 1 Gerät abwerfen."""
        "Edrio Two Tubes":
           display_name: """Edrio Two Tubes"""
           text: """Bevor du aktiviert wirst, falls du fokussiert bist, darfst du eine Aktion durchführen."""
        "Ello Asty":
           display_name: """Ello Asty"""
           text: """Nachdem du ein rotes Tallon-Rolle-Manöver [%TROLLLEFT% oder %TROLLRIGHT%] aufgedeckt hast, falls du 2 oder weniger Stressmarker hast, behandle jenes Manöver, als wäre es weiß.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Emon Azzameen":
           display_name: """Emon Azzameen"""
           text: """Falls du unter Verwendung der [1 %STRAIGHT%]-Schablone ein Gerät abwerfen würdest, darfst du stattdessen die [3 %TURNLEFT%]-, [3 %STRAIGHT%]- oder [3 %TURNRIGHT%]-Schablone verwenden."""
        "Epsilon Squadron Cadet":
           display_name: """Kadett der Epsilon-Staffel"""
           text: """<i class = flavor_text>Viele Piloten der Ersten Ordnung werden von Kindesbeinen an auf einem Sternenzerstörer der Resurgent-Klasse ausgebildet und haben noch nie in ihrem Leben einen Fuß auf eine Planetenoberfläche gesetzt.</i>"""
        "Esege Tuketu":
           display_name: """Esege Tuketu"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 verteidigt oder einen Angriff durchführt, darf es deine Fokusmarker ausgeben, als ob jenes Schiff sie hätte."""
        "Evaan Verlaine":
           display_name: """Evaan Verlaine"""
           text: """Zu Beginn der Kampfphase darfst du 1 Fokusmarker ausgeben, um ein befreundetes Schiff in Reichweite 0-1 zu wählen. Falls du das tust, wirft jenes Schiff bis zum Ende der Runde 1 zusätzlichen Verteidigungswürfel, solange es verteidigt."""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du 1 %FORCE% ausgeben, um bis zu 2 deiner %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern.%LINEBREAK%<strong>Geladen und entsichert:</strong> Solange du angedockt bist, nachdem dein Trägerschiff einen %FRONTARC%-Primärangriff oder %TURRET%-Angriff durchgeführt hat, darf es einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Ezra Bridger (Sheathipede)":
           display_name: """Ezra Bridger (Sheathipede)"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du 1 %FORCE% ausgeben, um bis zu 2 deiner %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern. %LINEBREAK%<strong>Kommunikationsantennen:</strong> Solange du angedockt bist, erhält dein Trägerschiff %COORDINATE%. Bevor dein Trägerschiff aktiviert wird, darf es eine %COORDINATE%-Aktion durchführen."""
        "Ezra Bridger (TIE Fighter)":
           display_name: """Ezra Bridger (TIE Fighter)"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du 1 %FORCE% ausgeben, um bis zu 2 deiner %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern."""
        "Feethan Ottraw Autopilot":
           display_name: """Autopilot von Feethan Ottraw"""
           text: """<i class = flavor_text>Feethan Ottraw Fertigbau beliefert die Separatisten nicht nur mit günstigen Wegwerfjägern, sondern entwickelte auch den Belbullab-22, der mit einer soliden Mischung aus Feuerkraft, Robustheit und Schubkraft aufwarten kann.</i>"""
        "Fenn Rau (Sheathipede)":
           display_name: """Fenn Rau (Sheathipede)"""
           text: """Nachdem ein feindliches Schiff in deinem Feuerwinkel begonnen hat zu kämpfen, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten. Falls du das tust, kann jenes Schiff keine Marker ausgeben, um Würfel zu modifizieren, solange es während dieser Phase einen Angriff durchführt.%LINEBREAK%<strong>Kommunikationsantennen:</strong> Solange du angedockt bist, erhält dein Trägerschiff %COORDINATE%. Bevor dein Trägerschiff aktiviert wird, darf es eine %COORDINATE%-Aktion durchführen."""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls die Angriffsreichweite 1 ist, darfst du 1 zusätzlichen Würfel werfen.%LINEBREAK%<strong>Concordianischer Wirbel:</strong> Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im%FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Finch Dallow":
           display_name: """Finch Dallow"""
           text: """Bevor du eine Bombe abwerfen würdest, darfst du sie stattdessen so auf der Spielfläche platzieren, dass sie dich berührt."""
        "Finn":
           display_name: """Finn"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1&nbsp;Leerseiten-Ergebnis hinzufügen oder du darfst stattdessen 1&nbsp;Anstrengungsmarker erhalten, um 1&nbsp;Fokus-Ergebnis hinzuzufügen."""
        "First Order Test Pilot":
           display_name: """Testpilot der Ersten Ordnung"""
           text: """<i class = flavor_text>Extreme Schubkraft und präzises Handling sind die Hauptmerkmale des TIE-Dämpfers, der sein volles Vernichtungspotential nur in den Händen eines wahren Spitzenpiloten entfaltet. Jeder andere wäre schnell überfordert und würde die Kontrolle über das wendige Schiff verlieren.</i>%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Foreman Proach":
           display_name: """Vorarbeiter Proach"""
           text: """Bevor du kämpfst, darfst du 1 feindliches Schiff in deinem %BULLSEYEARC% in Reichweite 1-2 wählen und 1 Entwaffnet-Marker erhalten. Falls du das tust, erhält jenes Schiff 1 Fangstrahlmarker.%LINEBREAK%<strong>Stabilisatorkerbe:</strong> Solange du dich bewegst, ignorierst du Asteroiden."""
        "Freighter Captain":
           display_name: """Frachtercaptain"""
           text: """<i class = flavor_text>Viele Raumfahrer bestreiten ihr Leben, indem sie den Outer Rim bereisen, wo der Unterschied zwischen Schmugglern und seriösen Händlern oft kaum zu erkennen ist. Am Rande der Zivilisation sind Käufer äußerst selten, daher sollte man nicht nach der Herkunft der Ware fragen, solange der Preis niedrig genug ist. </i>"""
        "Gamma Squadron Ace":
           display_name: """Fliegerass der Gamma-Staffel"""
           text: """<i class = flavor_text>Der TIE-Bomber ist zwar nicht so schnell und wendig wie ein TIE/ln, dafür besitzt er genügend Feuerkraft, um praktisch jedes feindliche Ziel auszulöschen. </i>%LINEBREAK%<strong>Wendiger Bomber:</strong> Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Gand Findsman":
           display_name: """Gand-Finder"""
           text: """<i class = flavor_text>Die legendären Finder der Gand verehren den Nebelschleier, der ihren Heimatplaneten umhüllt. Um ihre Beute aufzuspüren, deuten sie mystische Zeichen und Visionen.</i>"""
        "Garven Dreis (X-Wing)":
           display_name: """Garven Dreis (X-Wing)"""
           text: """Nachdem du einen Fokusmarker ausgegeben hast, darfst du 1 befreundetes Schiff in Reichweite 1-3 wählen. Jenes Schiff erhält 1 Fokusmarker."""
        "Garven Dreis":
           display_name: """Garven Dreis"""
           text: """Nachdem du einen Fokusmarker ausgegeben hast, darfst du 1 befreundetes Schiff in Reichweite 1-3 wählen. Jenes Schiff erhält 1 Fokusmarker."""
        "Gavin Darklighter":
           display_name: """Gavin Darklighter"""
           text: """Solange ein befreundetes Schiff einen Angriff durchführt, falls der Verteidiger in deinem %FRONTARC% ist, darf der Angreifer 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern.%LINEBREAK%<strong>Experimentelle Scanner:</strong> Du kannst Ziele jenseits von Reichweite 3 erfassen. Du kannst keine Ziele in Reichweite 1 erfassen."""
        "General Grievous":
           display_name: """General Grievous"""
           text: """Solange du einen Primärangriff durchführst, falls du nicht im Feuerwinkel des Verteidigers bist, darfst du bis zu 2 Angriffswürfel neu werfen."""
        "Genesis Red":
           display_name: """Genesis Red"""
           text: """Nachdem du ein Ziel erfasst hast, musst du alle deine Fokus- und Ausweichmarker entfernen. Dann erhalte dieselbe Anzahl an Fokus- und Ausweichmarkern, die das erfasste Schiff hat.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Gideon Hask":
           display_name: """Gideon Hask"""
           text: """Solange du einen Angriff gegen einen beschädigten Verteidiger durchführst, wirf 1 zusätzlichen Angriffswürfel."""
        "Gold Squadron Trooper":
           display_name: """Truppler der Gold-Staffel"""
           text: """<i class = flavor_text>Der V-19-Torrent-Sternenjäger wurde als leichter Begleitflieger für den grazilen Delta-7-Abfangjäger der Jedi-Ritter konzipiert und hat ein außergewöhnliches Flugprofil, das dieser Rolle gerecht wird.</i>"""
        "Gold Squadron Veteran":
           display_name: """Veteran der Gold-Staffel"""
           text: """<i class = flavor_text>Unter dem Kommando von Jon „Dutch“ Vander spielte die Gold-Staffel eine Schlüsselrolle bei den Schlachten von Scarif und Yavin.</i>"""
        "Gorgol":
           display_name: """Gorgol"""
           text: """Während der Systemphase darfst du 1 Entwaffnet-Marker erhalten und ein befreundetes Schiff in Reichweite&nbsp;1-2 wählen. Falls du das tust, erhält es 1&nbsp;Fangstrahlmarker, dann repariert es 1 seiner offenen <strong>Schiff</strong>&nbsp;-Schadenskarten.%LINEBREAK%<strong>Fangstrahl-Zielsystem:</strong> Du kannst deinen %SINGLETURRETARC% nicht auf deinen %REARARC%rotieren. Nachdem du ein Manöver ausgeführt hast, darfst du 1 Fangstrahlmarker erhalten, um eine&nbsp;%ROTATEARC%&nbsp;-Aktion durchzuführen."""
        "Grand Inquisitor":
           display_name: """Großinquisitor"""
           text: """Solange du in Angriffsreichweite 1 verteidigst, darfst du 1 %FORCE% ausgeben, um den Bonus für Reichweite 1 zu verhindern.%LINEBREAK%Solange du einen Angriff gegen einen Verteidiger in Angriffsreichweite 2-3 durchführst, darfst du 1 %FORCE% ausgeben, um den Bonus für Reichweite 1 anzuwenden."""
        "Gray Squadron Bomber":
           display_name: """Bomber der grauen Staffel"""
           text: """<i class = flavor_text>Obwohl er beim Imperium schon lange ausgemustert ist, bleibt der Y-Flügler aufgrund seiner Robustheit, Zuverlässigkeit und schweren Bewaffnung weiterhin ein fester Bestandteil der Rebellenflotte.</i>"""
        "Graz":
           display_name: """Graz"""
           text: """Solange du verteidigst, falls du hinter dem Angreifer bist, wirf 1 zusätzlichen Verteidigungswürfel.%LINEBREAK%Solange du einen Angriff durchführst, falls du hinter dem Angreifer bist, wirf 1 zusätzlichen Angriffswürfel."""
        "Green Squadron Expert":
           display_name: """Elitepilot der grünen Staffel"""
           text: """<i class = flavor_text>Viele langjährig bewährte Modifikationen wurden in die Serienausstattung des RZ-2 übernommen. Für waghalsige Piloten ist die höhere Stabilität des Jägers nur ein Anreiz, noch weiter an seine Grenzen zu gehen.</i>%LINEBREAK%<strong>Optimierte Gyrostabilisatoren:</strong> Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren. Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%- oder eine rote %ROTATEARC%-Aktion durchführen."""
        "Green Squadron Pilot":
           display_name: """Pilot der grünen Staffel"""
           text: """<i class = flavor_text>Aufgrund seiner empfindlichen Steuerung und extremen Wendigkeit war das Cockpit des A-Flüglers nur für besonders begabte Piloten bestimmt.</i>%LINEBREAK%<strong>Schwenkbare Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Greer Sonnel":
           display_name: """Greer Sonnel"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, darfst du deinen %SINGLETURRETARC% rotieren.%LINEBREAK%<strong>Optimierte Gyrostabilisatoren:</strong> Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren. Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%- oder eine rote %ROTATEARC%-Aktion durchführen."""
        "Guri":
           display_name: """Guri"""
           text: """Zu Beginn der Kampfphase, falls mindestens 1 feindliches Schiff in Reichweite 0-1 ist, darfst du 1 Fokusmarker erhalten.%LINEBREAK%<strong>Mikrodüsen:</strong> Solange du eine Fassrolle durchführst, <b>musst</b> du die %BANKLEFT%- oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """Nachdem du Würfel geworfen hast, falls du in Reichweite 0-1 eines Hindernisses bist, darfst du alle deine Würfel neu werfen. Dies zählt für alle anderen Effekte nicht als Neuwerfen."""
        "Han Solo (Scum)":
           display_name: """Han Solo (Scum)"""
           text: """Solange du verteidigst oder einen Primärangriff durchführst, falls der Angriff durch ein Hindernis versperrt ist, darfst du 1 zusätzlichen Würfel werfen."""
        "Han Solo (Resistance)":
           display_name: """Han Solo (Resistance)"""
           text: """<strong>Aufbau:</strong> Du kannst irgendwo auf der Spielfläche jenseits von Reichweite 3 der feindlichen Schiffe platziert werden."""
        "Heff Tobber":
           display_name: """Heff Tobber"""
           text: """Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, falls es in Reichweite 0 ist, darfst du eine Aktion durchführen."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """Nachdem du ein rotes oder blaues Manöver aufgedeckt hast, darfst du dein Rad auf ein anderes Manöver derselben Schwierigkeit einstellen.%LINEBREAK%<strong>Geladen und entsichert:</strong> Solange du angedockt bist, nachdem dein Trägerschiff einen %FRONTARC%-Primärangriff oder %TURRET%-Angriff durchgeführt hat, darf es einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Hera Syndulla (VCX-100)":
           display_name: """Hera Syndulla (VCX-100)"""
           text: """Nachdem du ein rotes oder blaues Manöver aufgedeckt hast, darfst du dein Rad auf ein anderes Manöver derselben Schwierigkeit einstellen.%LINEBREAK%<strong>Heckgeschütz:</strong> Solange du ein angedocktes Schiff hast, hast du eine %REARARC%-Primärwaffe mit einem Angriffswert in Höhe des Angriffswertes der %FRONTARC%-Primärwaffe deines angedockten Schiffes."""
        "Hired Gun":
           display_name: """Söldner"""
           text: """<i class = flavor_text>Wer mit imperialen Credits winkt, kann auf eine große, wenn auch nicht sonderlich vertrauenswürdige Helferschar zählen.</i>"""
        "Horton Salm":
           display_name: """Horton Salm"""
           text: """Solange du einen Angriff durchführst, darfst du für jedes andere befreundete Schiff in Reichweite 0-1 des Verteidigers 1 Angriffswürfel neu werfen."""
        "IG-88A":
           display_name: """IG-88A"""
           text: """Zu Beginn der Kampfphase darfst du 1 befreundetes Schiff mit %CALCULATE% in seiner Aufwertungsleiste in Reichweite 1-3 wählen. Falls du das tust, transferiere 1 deiner Berechnungsmarker auf es. %LINEBREAK%<strong>Hochentwickeltes Droidengehirn:</strong> Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "IG-88B":
           display_name: """IG-88B"""
           text: """Nachdem du einen Angriff durchgeführt hast, der verfehlt hat, darfst du einen Bonus-%CANNON%-Angriff durchführen.%LINEBREAK%<strong>Hochentwickeltes Droidengehirn:</strong> Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "IG-88C":
           display_name: """IG-88C"""
           text: """Nachdem du eine %BOOST%-Aktion durchgeführt hast, darfst du eine %EVADE%-Aktion durchführen.%LINEBREAK%<strong>Hochentwickeltes Droidengehirn:</strong> Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """Solange du einen Segnor-Looping (%SLOOPLEFT% oder %SLOOPRIGHT%)ausführst, darfst du stattdessen eine andere Schablone derselben Geschwindigkeit verwenden: entweder die Wende (%TURNLEFT% oder %TURNRIGHT%) mit gleicher Orientierung oder die Gerade (%STRAIGHT%).%LINEBREAK%<strong>Hochentwickeltes Droidengehirn:</strong> Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "Ibtisam":
           display_name: """Ibtisam"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, falls du gestresst bist, darfst du 1 Angriffswürfel werfen. Bei einem %HIT%- oder %CRIT%-Ergebnis entferne 1 Stressmarker."""
        "Iden Versio":
           display_name: """Iden Versio"""
           text: """Bevor ein befreundeter TIE/ln-Jäger in Reichweite 0-1 1 oder mehr Schaden erleiden würde, darfst du 1 %CHARGE% ausgeben. Falls du das tust, verhindere jenen Schaden."""
        "Imdaar Test Pilot":
           display_name: """Testpilot von Imdaar"""
           text: """<i class = flavor_text>In einem geheimen Forschungsprojekt auf dem Mond Imdaar Alpha wurde entwickelt, was viele für unmöglich gehalten hatten: der TIE-Phantom, ein kleiner Sternenjäger mit Tarnvorrichtung.</i>%LINEBREAK%<strong>Stygium-Gitter:</strong> Nachdem du dich enttarnt hast, darfst du eine %EVADE%-Aktion durchführen. Zu Beginn der Endphase darfst du 1 Ausweichmarker ausgeben, um 1 Tarnungsmarker zu erhalten."""
        "Inaldra":
           display_name: """Inaldra"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1 %HIT%-Schaden erleiden, um beliebig viele deiner Würfel neu zu werfen.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Inquisitor":
           display_name: """Inquisitor"""
           text: """<i class = flavor_text>Die gefürchteten Inquisitoren haben nicht nur freie Hand bei der Ausübung ihrer Pflichten, sondern auch Zugang zu modernster Spitzentechnik wie dem TIE-v1-Turbojäger-Prototypen.</i>"""
        "Jake Farrell":
           display_name: """Jake Farrell"""
           text: """Nachdem du eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0-1 wählen. Jenes Schiff darf eine %FOCUS%-Aktion durchführen.%LINEBREAK%<strong>Schwenkbare Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Jakku Gunrunner":
           display_name: """Waffenschmuggler von Jakku"""
           text: """<i class = flavor_text>Der Quadrijet-Transferschlepper, im Volksmund „Quadjumper“ genannt, ist gleichermaßen behände in Weltall und Atmosphäre, was ihn zu einem beliebten Schmuggler- und Entdeckerschiff macht. </i>%LINEBREAK%<strong>Schlepperstrahl:</strong> <strong>Aktion:</strong> Wähle ein Schiff in deinem %FRONTARC% in Reichweite 1. Jenes Schiff erhält 1 Fangstrahlmarker oder 2 Fangstrahlmarker, falls es in deinem %BULLSEYEARC% in Reichweite 1 ist."""
        "Jan Ors":
           display_name: """Jan Ors"""
           text: """Solange ein befreundetes Schiff in deinem Feuerwinkel einen Primärangriff durchführt, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten. Falls du das tust, darf jenes Schiff 1 zusätzlichen Angriffswürfel werfen."""
        "Jaycris Tubbs":
           display_name: """Jaycris Tubbs"""
           text: """Nachdem du ein blaues Manöver vollständig ausgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0-1 wählen. Falls du das tust, entfernt jenes Schiff 1 Stressmarker.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Jedi Knight":
           display_name: """Jedi-Ritter"""
           text: """<i class = flavor_text>Nach Ausbruch der Klonkriege gelobten die Jedi-Ritter die Republik zu bewahren und übernahmen das Kommando über eine Legion von Klontruppen, die sie seither in die Schlacht führen.</i>%LINEBREAK%<strong>Präzisionssteuerung:</strong> Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 %FORCE% ausgeben, um eine %BOOST%- oder %BARRELROLL%-Aktion durchzuführen."""
        "Jek Porkins":
           display_name: """Jek Porkins"""
           text: """Nachdem du einen Stressmarker bekommen hast, darfst du 1 Angriffswürfel werfen, um ihn zu entfernen. Bei einem %HIT%-Ergebnis erleide 1 %HIT%-Schaden."""
        "Jessika Pava":
           display_name: """Jessika Pava"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1 %CHARGE% oder 1 nicht-wiederkehrende %CHARGE% von deiner ausgerüsteten %ASTROMECH%-Aufwertung ausgeben, um für jedes andere befreundete Schiff in Reichweite 0-1 bis zu 1 deiner Würfel neu zu werfen.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Joph Seastriker":
           display_name: """Joph Seastriker"""
           text: """Nachdem du 1 Schild verloren hast, erhalte 1 Ausweichmarker.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Joy Rekkoff":
           display_name: """Joy Rekkoff"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %CHARGE% von einer ausgerüsteten %TORPEDO%-Aufwertung ausgeben. Falls du das tust, wirft der Verteidiger 1 Verteidigungswürfel weniger.%LINEBREAK%<strong>Concordianischer Wirbel:</strong> Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Kaa'to Leeachos":
           display_name: """Kaa’to Leeachos"""
           text: """Zu Beginn der Kampfphase darfst du 1 befreundetes Schiff in Reichweite 0-2 wählen. Falls du das tust, transferiere 1 Fokus- oder Ausweichmarker von jenem Schiff auf dich selbst."""
        "Kad Solus":
           display_name: """Kad Solus"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt hast, erhalte 2 Fokusmarker.%LINEBREAK%<strong>Concordianischer Wirbel:</strong> Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """Solange ein befreundetes Schiff in deinem Feuerwinkel verteidigt, darfst du 1 %FORCE% ausgeben. Falls du das tust, wirft der Angreifer 1 Angriffswürfel weniger.%LINEBREAK%<strong>Heckgeschütz:</strong> Solange du ein angedocktes Schiff hast, hast du eine %REARARC%-Primärwaffe mit einem Angriffswert in Höhe des Angriffswertes der %FRONTARC%-Primärwaffe deines angedockten Schiffes."""
        "Kare Kun":
           display_name: """Kare Kun"""
           text: """Solange du Schub gibst, darfst du stattdessen die [1 %TURNLEFT%]- oder [1 %TURNRIGHT%]-Schablone verwenden.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Kashyyyk Defender":
           display_name: """Verteidiger von Kashyyyk"""
           text: """<i class = flavor_text>Mit seinen drei weitreichenden Sureggi-Zwillingslaserkanonen soll das Auzituck-Kanonenboot Sklavenjäger im Kashyyyk-System abschrecken.</i>"""
        "Kath Scarlet":
           display_name: """Kath Scarlet"""
           text: """Solange du einen Primärangriff durchführst, falls mindestens 1 befreundetes nicht-limitiertes Schiff in Reichweite 0 des Verteidigers ist, wirf 1 zusätzlichen Angriffswürfel."""
        "Kavil":
           display_name: """Kavil"""
           text: """Solange du einen Nicht-%FRONTARC%-Angriff durchführst, wirf 1 zusätzlichen Angriffswürfel."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff wählen, das sowohl in deinem %FRONTARC% als auch in deinem %SINGLETURRETARC% und in Reichweite 0-1 ist. Falls du das tust, erhält jenes Schiff 1 Fangstrahlmarker."""
        "Knave Squadron Escort":
           display_name: """Eskorte der Schurken-Staffel"""
           text: """<i class = flavor_text>Der E-Flügler verbindet die besten Eigenschaften von X-Flügler und A-Flügler, und kann mit überlegener Feuerkraft, Geschwindigkeit und Manövrierbarkeit aufwarten.</i>%LINEBREAK% <strong>Experimentelle Scanner:</strong> Du kannst Ziele jenseits von Reichweite 3 erfassen. Du kannst keine Ziele in Reichweite 1 erfassen."""
        "Koshka Frost":
           display_name: """Koshka Frost"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls das feindliche Schiff gestresst ist, darfst du 1 deiner Würfel neu werfen."""
        "Krassis Trelix":
           display_name: """Krassis Trelix"""
           text: """Du kannst %FRONTARC%-Spezialangriffe von deinem %REARARC% aus durchführen.%LINEBREAK%Solange du einen Spezialangriff durchführst, darfst du 1 Angriffswürfel neu werfen."""
        "Kullbee Sperado":
           display_name: """Kullbee Sperado"""
           text: """Nachdem du eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hast, darfst du deine ausgerüstete %CONFIG%-Aufwertungskarte umdrehen."""
        "Kyle Katarn":
           display_name: """Kyle Katarn"""
           text: """Zu Beginn der Kampfphase darfst du 1 deiner Fokusmarker auf ein befreundetes Schiff in deinem Feuerwinkel transferieren."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """Nachdem du verteidigt hast, darfst du 1 %FORCE% ausgeben, um dem Angreifer den Zustand <strong>Ich zeige dir die dunkle Seite</strong> zuzuordnen.%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "L3-37":
           display_name: """L3-37"""
           text: """Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%) ."""
        "L3-37 (Escape Craft)":
           display_name: """L3-37 (Escape Craft)"""
           text: """Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%) .%LINEBREAK%<strong>Co-Pilot:</strong> Solange du angedockt bist, hat dein Träger-Schiff deine Piloten-Fähigkeit zusätzlich zu seiner eigenen."""
        "Laetin A'shera":
           display_name: """Laetin A’shera"""
           text: """Nachdem du verteidigt oder einen Angriff durchgeführt hast, falls der Angriff verfehlt hat, erhalte 1 Ausweichmarker.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """Nachdem du ein blaues Manöver vollständig ausgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0-3 wählen. Jenes Schiff darf eine Aktion durchführen."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian (Scum)"""
           text: """Nachdem du Würfel geworfen hast, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten um alle deine Leerseiten neu zu werfen."""
        "Lando Calrissian (Scum) (Escape Craft)":
           display_name: """Lando Calrissian (Scum) (Escape Craft)"""
           text: """Nachdem du Würfel geworfen hast, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten um alle deine Leerseiten neu zu werfen.%LINEBREAK%<strong>Co-Pilot:</strong> Solange du angedockt bist, hat dein Träger-Schiff deine Piloten-Fähigkeit zusätzlich zu seiner eigenen."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """Zu Beginn der Kampfphase darfst du ein Schiff in Reichweite 1 wählen und eine Zielerfassung, die du auf jenem Schiff hast, ausgeben. Falls du das tust, erhält jenes Schiff 1 Fangstrahlmarker."""
        "Leevan Tenza":
           display_name: """Leevan Tenza"""
           text: """Nachdem du eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hast, darfst du eine rote %EVADE%-Aktion durchführen."""
        "Lieutenant Bastian":
           display_name: """Lieutenant Bastian"""
           text: """Nachdem einem Schiff in Reichweite 1-2 eine Schadenskarte zugeteilt worden ist, darfst du jenes Schiff als Ziel erfassen.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Lieutenant Blount":
           display_name: """Lieutenant Blount"""
           text: """Solange du einen Primärangriff durchführst, falls mindestens 1 anderes befreundetes Schiff in Reichweite 0-1 des Verteidigers ist, darfst du 1 zusätzlichen Angriffswürfel werfen."""
        "Lieutenant Dormitz":
           display_name: """Lieutenant Dormitz"""
           text: """<strong>Aufbau</strong>: Nachdem du platziert worden bist, können andere befreundete Schiffe irgendwo auf der Spielfläche in Reichweite 0-2 von dir platziert werden.%LINEBREAK%<strong>Gekoppelte Geschützbatterie:</strong> Solange du einen %CANNON%-Angriff durchführst, wirf 1 zusätzlichen Würfel."""
        "Lieutenant Karsabi":
           display_name: """Lieutenant Karsabi"""
           text: """Nachdem du einen Entwaffnet-Marker erhalten hast, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten, um 1 Entwaffnet-Marker zu entfernen."""
        "Lieutenant Kestal":
           display_name: """Lieutenant Kestal"""
           text: """Solange du einen Angriff durchführst, nachdem der Verteidiger Verteidigungswürfel geworfen hat, darfst du 1 Fokusmarker ausgeben, um alle Leerseiten/%FOCUS%-Ergebnisse des Verteidigers zu negieren."""
        "Lieutenant Rivas":
           display_name: """Lieutenant Rivas"""
           text: """Nachdem ein Schiff in Reichweite 1-2 einen roten oder orangefarbenen Marker erhalten hat, falls du jenes Schiff nicht als Ziel erfasst hast, darfst du jenes Schiff als Ziel erfassen."""
        "Lieutenant Sai":
           display_name: """Lieutenant Sai"""
           text: """Nachdem du eine %COORDINATE%-Aktion durchgeführt hast, falls das von dir gewählte Schiff eine Aktion aus deiner Aktionsleiste durchgeführt hat, darfst du jene Aktion durchführen."""
        "Lieutenant Tavson":
           display_name: """Lieutenant Tavson"""
           text: """Nachdem du Schaden erlitten hast, darfst du 1 %CHARGE% ausgeben, um eine Aktion durchzuführen.%LINEBREAK%<strong>Gekoppelte Geschützbatterie:</strong> Solange du einen %CANNON%-Angriff durchführst, wirf 1 zusätzlichen Würfel."""
        "Logistics Division Pilot":
           display_name: """Pilot der Logistikdivision"""
           text: """<i class = flavor_text>Ohne den Rückhalt der Neuen Republik sind die Kämpfer des Widerstands oft gezwungen, neben ihren eigentlichen Pflichten auch als Transporterpiloten oder Mechaniker zu arbeiten. Auf diese Weise setzen sie ihr Können und ihr technisches Fachwissen für den Kampf gegen die Erste Ordnung ein.</i>"""
        "Lok Revenant":
           display_name: """Lok-Pirat"""
           text: """<i class = flavor_text>Das Nubianische Entwicklungskollektiv konstruierte den Scurrg-H-6-Bomber als vielseitige Jagdmaschine, ausgestattet mit Hochleistungsschilden und einem tödlichen Waffenarsenal.</i>"""
        "Lothal Rebel":
           display_name: """Rebell von Lothal"""
           text: """<i class = flavor_text>Der VCX-100 ist ein weiteres Erfolgsmodell der Corellianischen Ingenieursgesellschaft, geräumiger und mit mehr Ausstattungsoptionen als die beliebte YT-Serie.</i>%LINEBREAK%<strong>Heckgeschütz:</strong> Solange du ein angedocktes Schiff hast, hast du eine %REARARC%-Primärwaffe mit einem Angriffswert in Höhe des Angriffswertes der %FRONTARC%-Primärwaffe deines angedockten Schiffes."""
        "Lowhhrick":
           display_name: """Lowhhrick"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-1 zum Verteidiger geworden ist, darfst du 1 Verstärkungsmarker ausgeben. Falls du das tust, erhält jenes Schiff 1 Ausweichmarker."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """Nachdem du zum Verteidiger geworden bist (bevor Würfel geworfen werden), darfst du 1 %FORCE% wiederherstellen."""
        "Luminara Unduli":
           display_name: """Luminara Unduli"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 verteidigt, falls es nicht im %BULLSEYEARC% des Angreifers ist, darfst du 1 %FORCE% ausgeben. Falls du das tust, ändere 1 %CRIT%-Ergebnis in ein %HIT%-Ergebnis oder 1%HIT%-Ergebnis in ein %FOCUS%-Ergebnis. %LINEBREAK%<strong>Präzisionssteuerung:</strong> Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 %FORCE% ausgeben, um eine %BOOST%- oder %BARRELROLL%-Aktion durchzuführen."""
        "L'ulo L'ampar":
           display_name: """L’ulo L’ampar"""
           text: """Solange du verteidigst oder einen Primärangriff durchführst, falls du gestresst bist, <b>musst</b> du 1 Verteidigungswürfel weniger oder 1 zusätzlichen Angriffswürfel werfen.%LINEBREAK%<strong>Optimierte Gyrostabilisatoren:</strong> Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren. Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%- oder eine rote %ROTATEARC%-Aktion durchführen."""
        "Maarek Stele":
           display_name: """Maarek Stele"""
           text: """Solange du einen Angriff durchführst, falls dem Verteidiger eine offene Scha­dens­karte zugeteilt werden würde, ziehe stattdessen 3 Schadenskarten, wähle 1 und lege die übrigen ab.%LINEBREAK%<strong>Verbesserter Zielcomputer:</strong> Solange du einen Primärangriff gegen einen Ver­tei­diger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen An­griffs­würfel und ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Mace Windu":
           display_name: """Mace Windu"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt hast, stelle 1 %FORCE% wieder her. %LINEBREAK%<strong>Präzisionssteuerung:</strong> Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 %FORCE% ausgeben, um eine %BOOST%- oder %BARRELROLL%-Aktion durchzuführen."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 verteidigt, kann der Angreifer nicht mehr als 1 Angriffswürfel neu werfen."""
        "Major Rhymer":
           display_name: """Major Rhymer"""
           text: """Solange du einen %TORPEDO%- oder %MISSILE%-Angriff durchführst, darfst du die Reichweitenbedingung um 1 erhöhen oder verringern, bis zu einem Limit von 0-3. %LINEBREAK%<strong>Wendiger Bomber:</strong> Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Major Stridan":
           display_name: """Major Stridan"""
           text: """Solange du koordinierst oder den Effekt 1 deiner Aufwertungen abhandelst, darfst du befreundete Schiffe in Reichweite 2-3 behandeln, als wären sie in Reichweite 0 oder Reichweite 1.%LINEBREAK%<strong>Gekoppelte Geschützbatterie:</strong> Solange du einen %CANNON%-Angriff durchführst, wirf 1 zusätzlichen Würfel."""
        "Major Vermeil":
           display_name: """Major Vermeil"""
           text: """Solange du einen Angriff durchführst, falls der Verteidiger keine grünen Marker hat, darfst du 1 deiner Leerseiten- oder %FOCUS%-Ergebnisse in ein %HIT%-Ergebnis ändern. %LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        "Major Vynder":
           display_name: """Major Vynder"""
           text: """Solange du verteidigst, falls du entwaffnet bist, wirf 1 zusätzlichen Verteidigungswürfel."""
        "Manaroo":
           display_name: """Manaroo"""
           text: """Zu Beginn der Kampfphase darfst du ein befreundetes Schiff in Reichweite 0-1 wählen. Falls du das tust, transferiere alle grünen Marker, die dir zugeordnet sind, auf jenes Schiff."""
        "Mining Guild Sentry":
           display_name: """Wachposten der Minengilde"""
           text: """<i class = flavor_text>Im Rahmen ihrer Kooperation mit dem Imperium erhält die Minengilde modifizierte TIE/ln-Jäger zum Schutz ihrer Anlagen. Aus den Stabilisatoren dieser Schiffe wurden Solarzellen entfernt, um das Sichtfeld des Piloten zu vergrößern. Darüber hinaus profitieren die Firmenpiloten von einem deutlich umfangreicheren Lebenserhaltungssystem. </i>%LINEBREAK%<strong>Stabilisatorkerbe:</strong> Solange du dich bewegst, ignorierst du Asteroiden."""
        "Mining Guild Surveyor":
           display_name: """Rohstoffsucher der Minengilde"""
           text: """<i class = flavor_text>Da die Bauprojekte des Imperiums unglaubliche Mengen an Rohmaterial verschlingen, sucht die Minengilde aggressiv nach Vorkommen von Doonium-Erz und beutet neu entdeckte Adern auf Batonn, Lothal und Umbara gnadenlos aus.</i>%LINEBREAK%<strong>Stabilisatorkerbe:</strong> Solange du dich bewegst, ignorierst du Asteroiden."""
        "Miranda Doni":
           display_name: """Miranda Doni"""
           text: """Solange du einen Primärangriff durchführst, darfst du entweder 1 Schild ausgeben, um 1 zusätzlichen Angriffswürfel zu werfen, oder, falls du keine Schilde hast, du darfst 1 Angriffswürfel weniger werfen, um 1 Schild wiederherzustellen."""
        "Moralo Eval":
           display_name: """Moralo Eval"""
           text: """Falls du fliehen würdest, darfst du 1 %CHARGE% ausgeben. Falls du das tust, platziere dich selbst stattdessen in der Reserve. Zu Beginn der nächsten Planungsphase platziere dich selbst innerhalb von Reichweite 1 des Spielflächenrandes, über den du geflohen bist."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """Nachdem du einen Stressmarker erhalten hast, falls ein feindliches Schiff in deinem %FRONTARC% in Reichweite 0-1 ist, darfst du jenen Stressmarker entfernen.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Nodin Chavdri":
           display_name: """Nodin Chavdri"""
           text: """<i class = flavor_text>Nachdem du koordiniert hast oder koordiniert worden bist, falls du 2&nbsp;oder weniger Stressmarker hast, darfst du 1&nbsp;Aktion aus deiner Aktionsleiste als rote Aktion durchführen, auch falls du gestresst bist.</i>"""
        "Norra Wexley (Y-Wing)":
           display_name: """Norra Wexley (Y-Wing)"""
           text: """Solange du verteidigst, falls ein feindliches Schiff in Reichweite 0-1 ist, füge 1 %EVADE%-Ergebnis zu deinen Würfelergebnissen hinzu."""
        "Norra Wexley":
           display_name: """Norra Wexley"""
           text: """Solange du verteidigst, falls ein feindliches Schiff in Reichweite 0-1 ist, füge 1 %EVADE%-Ergebnis zu deinen Würfelergebnissen hinzu."""
        "Nu Squadron Pilot":
           display_name: """Pilot der Nu-Staffel"""
           text: """<i class = flavor_text>Inspiriert von anderen Modellen der Cygnus Raumwerften, ist der Sternflügler der Alpha-Klasse ein vielseitiges Kanonenboot, das für verschiedene Einsatzgebiete umgerüstet werden kann und somit ideal für die Spezialeinheiten der Imperialen Flotte ist.</i>"""
        "N'dru Suhlak":
           display_name: """N’dru Suhlak"""
           text: """Solange du einen Primärangriff durchführst, falls keine anderen befreundeten Schiffe in Reichweite 0-2 sind, wirf 1 zusätzlichen Angriffswürfel."""
        "Obi-Wan Kenobi":
           display_name: """Obi-Wan Kenobi"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-2 einen Fokusmarker ausgegeben hat, darfst du 1 %FORCE% ausgeben. Falls du das tust, erhält jenes Schiff 1 Fokusmarker. %LINEBREAK%<strong>Präzisionssteuerung:</strong> Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 %FORCE% ausgeben, um eine %BOOST%- oder %BARRELROLL%-Aktion durchzuführen."""
        "Obsidian Squadron Pilot":
           display_name: """Pilot der Obsidian-Staffel"""
           text: """<i class = flavor_text>Der Zwillingsionenantrieb des TIE-Jägers war auf Geschwindigkeit optimiert und machte den TIE/ln zu einem der wendigsten Raumschiffe, die je in Massen produziert wurden.</i>"""
        "Old Teroch":
           display_name: """Der alte Teroch"""
           text: """Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in Reichweite 1 wählen. Falls du das tust und du in seinem %FRONTARC% bist, entfernt es alle seine grünen Marker.%LINEBREAK%<strong>Concordianischer Wirbel:</strong> Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Omega Squadron Ace":
           display_name: """Fliegerass der Omega-Staffel"""
           text: """<i class = flavor_text>Nur die fähigsten und loyalsten Piloten der Ersten Ordnung dienen in den geheimen Staffeln, die im Schatten des Kalten Krieges verdeckte Operationen gegen die Neue Republik durchführen.</i>"""
        "Omega Squadron Expert":
           display_name: """Elitepilot der Omega-Staffel"""
           text: """<i class = flavor_text>Der TIE/se ist ein vielseitiger Jäger, der mit seinen spezialisierten Waffen und Bordsystemen bestens für die Einsätze der Spezialeinheiten ausgerüstet ist.</i>%LINEBREAK%<strong>Schwerer Geschützturm:</strong> Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren. Du <b>musst</b> die %FRONTARC%-Voraussetzung deiner ausgerüsteten %MISSILE%-Aufwertungen behandeln, als wäre sie %SINGLETURRETARC%."""
        "Omicron Group Pilot":
           display_name: """Pilot der Omicron-Gruppe"""
           text: """<i class = flavor_text>Die Raumfähre der Lambda-Klasse zeichnet sich durch ihre außergewöhnliche Drei-Tragflächen-Form und modernste Sensortechnologie aus. Als leichtes Multifunktionsschiff übernimmt sie eine wichtige Rolle in der Imperialen Flotte.</i>"""
        "Onyx Squadron Ace":
           display_name: """Fliegerass der Onyx-Staffel"""
           text: """<i class = flavor_text>Der experimentelle TIE-Abwehrjäger stellt alle anderen modernen Sternenjäger in den Schatten, wenngleich Größe, Schubkraft und Bewaffnung das Gewicht und den Preis des Modells in die Höhe treiben.</i>%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Onyx Squadron Scout":
           display_name: """Aufklärer der Onyx-Staffel"""
           text: """<i class = flavor_text>Der für den Langzeiteinsatz konzipierte TIE/ag wird in erster Linie von Elitepiloten geflogen, die das Potential des schwer bewaffneten und wendigen Jägers voll ausschöpfen können.</i>"""
        "Outer Rim Pioneer":
           display_name: """Pionier aus dem Outer Rim"""
           text: """Befreundete Schiffe in Reichweite 0-1 können Angriffe in Reichweite 0 zu Hindernissen durchführen.%LINEBREAK%<strong>Co-Pilot:</strong> Solange du angedockt bist, hat dein Träger-Schiff deine Piloten-Fähigkeit zusätzlich zu seiner eigenen."""
        "Outer Rim Smuggler":
           display_name: """Schmuggler aus dem """
           text: """<i class = flavor_text>Mit seiner robusten Bauweise und modularen Konstruktion gehört der YT-1300 zu den beliebtesten, weitverbreitetsten und am stärksten modifizierten Raumfrachtern der Galaxis. </i>"""
        "Overseer Yushyn":
           display_name: """Raffineriebetreiber Yushyn"""
           text: """Bevor ein befreundetes Schiff in Reichweite 1 einen Entwaffnet-Marker erhalten würde, falls jenes Schiff nicht gestresst ist, darfst du 1 %CHARGE% ausgeben. Falls du das tust, erhält jenes Schiff stattdessen 1 Stressmarker.%LINEBREAK%<strong>Stabilisatorkerbe:</strong> Solange du dich bewegst, ignorierst du Asteroiden."""
        "Padmé Amidala":
           display_name: """Padmé Amidala"""
           text: """Solange ein feindliches Schiff in deinem %FRONTARC% verteidigt oder einen Angriff durchführt, kann jenes Schiff nur 1&nbsp;%FOCUS% -Ergebnis modifizieren (andere Ergebnisse können weiterhin modifiziert werden).%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%&nbsp;-Aktion durchführen."""
        "Palob Godalhi":
           display_name: """Palob Godalhi"""
           text: """Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in deinem Feuerwinkel in Reichweite 0-2 wählen. Falls du das tust, transferiere 1 Fokus- oder Ausweichmarker von jenem Schiff auf dich selbst."""
        "Pammich Nerro Goode":
           display_name: """Pammich Nerro Goode"""
           text: """Solange du 2&nbsp;oder weniger Stressmarker hast, darfst du rote Manöver ausführen, auch solange du gestresst bist."""
        "Partisan Renegade":
           display_name: """Überzeugter Partisan"""
           text: """<i class = flavor_text>Ursprünglich hatten sich Saw Gerreras Partisanen während der Klonkriege formiert, um den Streitkräften der Separatisten auf Onderon die Stirn zu bieten. Als das Imperium die Macht übernahm, setzten sie ihren Kampf gegen die Tyrannei einfach fort.</i>"""
        "Patrol Leader":
           display_name: """Patrouillenführer"""
           text: """<i class = flavor_text>Das Kommando über einen VT-49-Decimator zu erhalten, gilt unter imperialen Flottenoffizieren der mittleren Rangebenen als äußerst erstrebenswertes Ziel.</i>"""
        "Petranaki Arena Ace":
           display_name: """Ass der Petranaki-Arena"""
           text: """<i class = flavor_text>Die Petranaki-Arena ist ein gewaltiges Bauwerk auf dem Planeten Geonosis und der Ort, an dem die erste Schlacht der Klonkriege geschlagen wurde.</i> %LINEBREAK%<strong>Fangstrahl-Zielsystem:</strong> Du kannst deinen %SINGLETURRETARC% nicht auf deinen %REARARC%rotieren. Nachdem du ein Manöver ausgeführt hast, darfst du 1 Fangstrahlmarker erhalten, um eine&nbsp;%ROTATEARC%&nbsp;-Aktion durchzuführen."""
        "Petty Officer Thanisson":
           display_name: """Unteroffizier Thanisson"""
           text: """Während der Aktivierungs- oder Kampfphase, nachdem ein Schiff in deinem %FRONTARC% in Reichweite 0-2 1 Stressmarker erhalten hat, darfst du 1 %CHARGE% ausgeben. Falls du das tust, erhält jenes Schiff 1 Fangstrahlmarker.%LINEBREAK%<strong>Gekoppelte Geschützbatterie:</strong> Solange du einen %CANNON%-Angriff durchführst, wirf 1 zusätzlichen Würfel."""
        "Phoenix Squadron Pilot":
           display_name: """Pilot der Phönix-Staffel"""
           text: """<i class = flavor_text>Unter der Führung von Commander Jun Sato stellen sich die tapferen, aber unerfahrenen Piloten der Phönix-Staffel dem aussichtslosen Kampf gegen das Galaktische Imperium.</i>%LINEBREAK%<strong>Schwenkbare Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Planetary Sentinel":
           display_name: """Planetarer Wachposten"""
           text: """<i class = flavor_text>Zum Schutz seiner vielen militärischen Einrichtungen benötigt das Imperium eine mobile und wachsame Verteidigungsstreitmacht.</i>%LINEBREAK% <strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        "Plo Koon":
           display_name: """Plo Koon"""
           text: """Zu Beginn der Kampfphase darfst du 1 %FORCE% ausgeben und ein anderes befreundetes Schiff in Reichweite 0-2 wählen. Falls du das tust, darfst du 1 grünen Marker auf es transferieren oder 1 orangefarbenen Marker von ihm auf dich transferieren. %LINEBREAK%<strong>Präzisionssteuerung:</strong> Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 %FORCE% ausgeben, um eine %BOOST%- oder %BARRELROLL%-Aktion durchzuführen."""
        "Poe Dameron":
           display_name: """Poe Dameron"""
           text: """Nachdem du eine Aktion durchgeführt hast, darfst du 1 %CHARGE% ausgeben, um eine weiße Aktion durchzuführen, wobei du sie behandelst, als wäre sie rot.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Prince Xizor":
           display_name: """Prinz Xizor"""
           text: """Solange du verteidigst, nach dem Schritt „Ergebnisse neutralisieren“, darf ein anderes befreundetes Schiff in Reichweite 0-1 und im Angriffswinkel 1 %HIT%- oder %CRIT%-Schaden erleiden. Falls es das tut, negiere 1 passendes Ergebnis.%LINEBREAK%<strong>Mikrodüsen:</strong> Solange du eine Fassrolle durchführst, <b>musst</b> du die %BANKLEFT%-oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Quinn Jast":
           display_name: """Quinn Jast"""
           text: """Zu Beginn der Kampfphase darfst du 1 Entwaffnet-Marker erhalten, um 1 %CHARGE% von 1 deiner ausgerüsteten Aufwertungen wiederherzustellen.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """Zu Beginn der Kampfphase, falls ein feindliches Schiff in deinem %REARARC% ist, erhalte 1&nbsp;Berechnungsmarker.%LINEBREAK%%LINEBREAK%<strong>Gepanzerte Hülle:</strong> Solange du verteidigst, falls du nicht kritisch beschädigt bist, ändere 1&nbsp;%CRIT%&nbsp;-Ergebnis in ein&nbsp;%HIT%&nbsp;-Ergebnis."""
        "Rear Admiral Chiraneau":
           display_name: """Konteradmiral Chiraneau"""
           text: """Solange du einen Angriff durchführst, falls du verstärkt bist und der Verteidiger in dem %FULLFRONTARC% oder %FULLREARARC% ist, der zu deinem Verstärkungsmarker passt, darfst du 1 deiner %FOCUS%-Ergebnisse in ein %CRIT%-Ergebnis ändern."""
        "Rebel Scout":
           display_name: """Rebellen-Aufklärer"""
           text: """<i class = flavor_text>Ein Vogel mit ausgebreiteten Schwingen diente der Corellianischen Ingenieursgesellschaft als Vorbild für das Design der „Hawk“-Serie, einer Reihe von erstklassigen Transportschiffen. Der flinke und robuste HWK-290 wird oft von Rebellenagenten als mobile Operationsbasis eingesetzt.</i>"""
        "Red Squadron Bomber":
           display_name: """Bomber der Roten Staffel"""
           text: """<i class = flavor_text>Bei der Schlacht von Geonosis gab die rote Staffel den TFAT-Kanonenbooten Feuerschutz, damit sie sicher die Oberfläche erreichten.</i>%LINEBREAK%<strong>Gepanzerte Hülle:</strong> Solange du verteidigst, falls du nicht kritisch beschädigt bist, ändere 1&nbsp;%CRIT%&nbsp;-Ergebnis in ein&nbsp;%HIT%&nbsp;-Ergebnis."""
        "Red Squadron Expert":
           display_name: """Elitepilot der roten Staffel"""
           text: """<i class = flavor_text>Hauptsächlich besteht das Sternenjägerkorps des Widerstands aus jungen Bürgern der Neuen Republik. Verstärkt werden sie von Veteranen des Galaktischen Bürgerkriegs, die fest entschlossen sind, zu beenden, was damals begonnen wurde.</i>%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Red Squadron Veteran":
           display_name: """Veteran der roten Staffel"""
           text: """<i class = flavor_text>Die rote Staffel wurde als Elite-Jägerverband gegründet und zählt einige der besten Piloten der Allianz zu ihren Mitgliedern.</i>"""
        "Resistance Sympathizer":
           display_name: """Sympathisant des Widerstands"""
           text: """<i class = flavor_text>Nach der Zerstörung des Hosnian-Systems stellten viele Raumfahrer bereitwillig ihre Schiffe dem Widerstand zur Verfügung.</i>"""
        "Rexler Brath":
           display_name: """Rexler Brath"""
           text: """Nachdem du einen Angriff durchgeführt hast, der getroffen hat, falls du ausweichst, lege 1 der Schadenskarten des Verteidigers offen.%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "Rey":
           display_name: """Rey"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls das feindliche Schiff in deinem %FRONTARC% ist, darfst du 1 %FORCE% ausgeben, um 1 deiner Leerseiten-Ergebnisse in ein %EVADE%- oder %HIT%-Ergebnis zu ändern."""
        "Rho Squadron Pilot":
           display_name: """Pilot der Rho-Staffel"""
           text: """<i class = flavor_text>Die Elitepiloten der Rho-Staffel nutzen die Xg-1-Angriffskonfiguration sowie das Os-1-Waffenarsenal des Sternflüglers der Alpha-Klasse mit verheerender Effizienz, um der Rebellion das Fürchten zu lehren. </i>"""
        "Ric Olié":
           display_name: """Ric Olié"""
           text: """Solange du verteidigst oder einen Primärangriff durchführst, falls die Geschwindigkeit deines aufgedeckten Manövers höher als die des feindlichen Schiffes ist, wirf 1 &nbsp;zusätzlichen Würfel.%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%&nbsp;-Aktion durchführen."""
        "Roark Garnet":
           display_name: """Roark Garnet"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff in deinem Feuerwinkel wählen. Falls du das tust, kämpft es in dieser Phase bei Initiative 7 anstatt bei seiner normalen Initiative."""
        "Rogue Squadron Escort":
           display_name: """Eskorte der Renegaten-Staffel"""
           text: """<i class = flavor_text>Die Spitzenpiloten der Renegaten-Staffel gehören zur absoluten Elite der Rebellion. </i>%LINEBREAK% <strong>Experimentelle Scanner:</strong> Du kannst Ziele jenseits von Reichweite 3 erfassen. Du kannst keine Ziele in Reichweite 1 erfassen."""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du für jedes andere befreundete Schiff im Angriffswinkel bis zu 1&nbsp;deiner Ergebnisse neu werfen."""
        "Saber Squadron Ace":
           display_name: """Fliegerass der Saber-Staffel"""
           text: """<i class = flavor_text>Angeführt von Baron Soontir Fel, gehören die Piloten der Saber-Staffel zur absoluten Elite des Imperiums. Ihre TIE-Abfangjäger werden mit blutroten Streifen markiert, um Piloten mit mindestens zehn bestätigten Abschüssen zu kennzeichnen.</i>%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """Bevor du aktiviert wirst, darfst du eine %BARRELROLL%- oder %BOOST%-Aktion durchführen.%LINEBREAK%<strong>Geladen und entsichert:</strong> Solange du angedockt bist, nachdem dein Trägerschiff einen %FRONTARC%-Primärangriff oder %TURRET%-Angriff durchgeführt hat, darf es einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Sabine Wren (TIE Fighter)":
           display_name: """Sabine Wren (TIE Fighter)"""
           text: """Bevor du aktiviert wirst, darfst du eine %BARRELROLL%- oder %BOOST%-Aktion durchführen."""
        "Sabine Wren (Scum)":
           display_name: """Sabine Wren (Scum)"""
           text: """Solange du verteidigst, falls der Angreifer in deinem %SINGLETURRETARC% in Reichweite 0-2 ist, darfst du 1 %FOCUS%-Ergebnis zu deinen Würfelergebnissen hinzufügen."""
        "Saesee Tiin":
           display_name: """Saesee Tiin"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-2 sein Rad aufgedeckt hat, darfst du 1 %FORCE% ausgeben. Falls du das tust, stelle sein Rad auf ein anderes Manöver derselben Geschwindigkeit und Schwierigkeit ein. %LINEBREAK%<strong>Präzisionssteuerung:</strong> Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 %FORCE% ausgeben, um eine %BOOST%- oder %BARRELROLL%-Aktion durchzuführen."""
        "Sarco Plank":
           display_name: """Sarco Plank"""
           text: """Solange du verteidigst, darfst du deinen Wendigkeitswert so behandeln, als würde er der Geschwindigkeit des Manövers entsprechen, das du in dieser Runde ausgeführt hast.%LINEBREAK%<strong>Schlepperstrahl:</strong> <strong>Aktion:</strong> Wähle ein Schiff in deinem %FRONTARC% in Reichweite 1. Jenes Schiff erhält 1 Fangstrahlmarker oder 2 Fangstrahlmarker, falls es in deinem %BULLSEYEARC% in Reichweite 1 ist."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """Solange ein beschädigtes befreundetes Schiff in Reichweite 0-3 einen Angriff durchführt, darf es 1 Angriffswürfel neu werfen."""
        "Scarif Base Pilot":
           display_name: """Pilot der Scarif-Basis"""
           text: """<i class = flavor_text>Der TIE-Schnitter war für den Transport von Elitetruppen in besonders hart umkämpfte Gefechtszonen konzipiert. Berühmt wurde er in der Schlacht von Scarif, wo er Direktor Krennics gefürchtete Todestruppen transportierte.</i>%LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        "Scimitar Squadron Pilot":
           display_name: """Pilot der Scimitar-Staffel"""
           text: """<i class = flavor_text>Der TIE/sa ist außergewöhnlich wendig für einen Bomber und kann sein Ziel mit absoluter Präzision anvisieren, um den Kollateralschaden zu minimieren. </i>%LINEBREAK%<strong>Wendiger Bomber:</strong> Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Separatist Bomber":
           display_name: """Separatistenbomber"""
           text: """<i class = flavor_text>Die Droidenarmeen der Separatisten empfinden kein Mitleid und vermeiden daher keine Kollateralschäden an der Zivilbevölkerung.</i>%LINEBREAK%<strong>Vernetzte Berechnungssysteme:</strong> Solange du verteidigst oder einen Angriff durchführst, darfst du 1&nbsp;Berechnungsmarker von einem befreundeten Schiff in Reichweite 0-1 ausgeben, um 1&nbsp;%FOCUS%-Ergebnis in ein %EVADE% oder %HIT%-Ergebnis zu ändern."""
        "Separatist Drone":
           display_name: """Separatistendrohne"""
           text: """<i class = flavor_text>Je weiter die Klonkriege eskalieren, desto mehr setzen die Separatisten auf die Entwicklung neuartiger Droidenjäger und Taktikdroiden, die sie steuern.</i>%LINEBREAK%<strong>Vernetzte Berechnungssysteme:</strong> Solange du verteidigst oder einen Angriff durchführst, darfst du 1 Berechnungsmarker von einem befreundeten Schiff in Reichweite 0-1 ausgeben, um 1 %FOCUS%-Ergebnis in ein %EVADE%- oder %HIT%-Ergebnis zu ändern."""
        "Serissu":
           display_name: """Serissu"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-1 verteidigt, darf es 1 seiner Würfel neu werfen.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Seventh Sister":
           display_name: """Siebte Schwester"""
           text: """Solange du einen Primärangriff durchführst, vor dem Schritt „Ergebnisse neutralisieren“, darfst du 2 %FORCE% ausgeben, um 1 %EVADE%-Ergebnis zu negieren."""
        "Seyn Marana":
           display_name: """Seyn Marana"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %CRIT%-Ergebnis ausgeben. Falls du das tust, teile dem Verteidiger 1 verdeckte Schadenskarte zu, dann negiere deine übrigen Ergebnisse."""
        "Shadow Squadron Veteran":
           display_name: """Veteran der Schatten-Staffel"""
           text: """<i class = flavor_text>Die Schatten-Staffel, ausgebildet von Jedi-Fliegerass Anakin Skywalker, ist seit Beginn der Klonkriege im Einsatz und hat bei Kadavo und gegen General Grievous‘ Flaggschiff, die Malevolencebedeutende Siege errungen.</i>%LINEBREAK%<strong>Gepanzerte Hülle:</strong> Solange du verteidigst, falls du nicht kritisch beschädigt bist, ändere 1&nbsp;%CRIT%&nbsp;-Ergebnis in ein&nbsp;%HIT%&nbsp;-Ergebnis."""
        "Shadowport Hunter":
           display_name: """Schattenhafen-Jäger"""
           text: """<i class = flavor_text>Verbrechersyndikate fördern die mörderischen Talente ihrer treuen Geschäftspartner, indem sie sie mit der besten Technologie auf dem Markt ausstatten, beispielsweise mit dem schnellen und vorzüglichen Jagdschiff der Lanzen-Klasse.</i>"""
        "Shara Bey":
           display_name: """Shara Bey"""
           text: """Solange du verteidigst oder einen Primärangriff durchführst, darfst du 1 Zielerfassung, die du auf dem feindlichen Schiff hast, ausgeben, um 1 %FOCUS%-Ergebnis zu deinen Würfelergebnissen hinzuzufügen."""
        "Sienar Specialist":
           display_name: """Experte von Sienar"""
           text: """<i class = flavor_text>Bei der Entwicklung des TIE-Aggressors setzte Sienar Flottensysteme mehr auf Vielseitigkeit und Leistung als auf reine Kosteneffizienz.</i>"""
        "Sienar-Jaemus Engineer":
           display_name: """Ingenieur von Sienar-Jaemus"""
           text: """<i class = flavor_text>In einer geheimen Forschungseinrichtung in den Unbekannten Regionen entwickelte Sienar-Jaemus Flottensysteme einen Nachfolger des vielgerühmten TIE-Abwehrjägers, den hochmodernen TIE-Dämpfer.</i>%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Sigma Squadron Ace":
           display_name: """Fliegerass der Sigma-Staffel"""
           text: """<i class = flavor_text>Der TIE-Phantom ist nicht nur mit Schilden und einem Hyperantrieb, sondern auch mit fünf Laserkanonen ausgestattet, was ihn zu einem der schlagkräftigsten Jäger des Imperiums macht.</i>%LINEBREAK%<strong>Stygium-Gitter:</strong> Nachdem du dich enttarnt hast, darfst du eine %EVADE%-Aktion durchführen. Zu Beginn der Endphase darfst du 1 Ausweichmarker ausgeben, um 1 Tarnungsmarker zu erhalten."""
        "Skakoan Ace":
           display_name: """Skakoanisches Fliegerass"""
           text: """<i class = flavor_text>Mit seinen leistungsstarken Triebwerken, verheerenden Drillingslasern und vielen Anpassungsmöglichkeiten ist der Belbullab-22 der bevorzugte Jäger der Elitepiloten der Separatisten. Auch der berüchtigte General Grievous nennt einen solchen Sternenjäger sein Eigen.</i>"""
        "Skull Squadron Pilot":
           display_name: """Pilot der Skull-Staffel"""
           text: """<i class = flavor_text>Die Fliegerasse der Skull-Staffel bevorzugen eine aggressive Kampftaktik und vertrauen dabei auf die schwenkbaren Tragflächen ihrer Schiffe, um ihre Beute mit unübertroffener Agilität zur Strecke zu bringen. </i>%LINEBREAK% <strong>Concordianischer Wirbel:</strong> Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Sol Sixxa":
           display_name: """Sol Sixxa"""
           text: """Falls du ein Gerät unter Verwendung der [1 %STRAIGHT%]-Schablone abwerfen würdest, darfst du es stattdessen unter Verwendung einer beliebigen anderen Schablone mit Geschwindigkeit 1 abwerfen."""
        "Soontir Fel":
           display_name: """Soontir Fel"""
           text: """Zu Beginn der Kampfphase, falls ein feindliches Schiff in deinem %BULLSEYEARC% ist, erhalte 1 Fokusmarker.%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Spice Runner":
           display_name: """Spiceschmuggler"""
           text: """<i class = flavor_text>Trotz seines vergleichsweise kleinen Laderaums ist der HWK-290 ein beliebtes Modell unter Schmugglern, die sich auf den diskreten Transport von hochwertigen Gütern spezialisiert haben.</i>"""
        "Squad Seven Veteran":
           display_name: """Veteran von Trupp Sieben"""
           text: """<i class = flavor_text>Klontrupp Sieben ist eine Spezialeinheit der Doppelbogen-Flotte, die unter dem Kommando legendärer Jedi-Generäle wie Plo Koon und Obi-Wan Kenobi in den Schlachten von Coruscant und Cato Neimoidia großen Ruhm erlangte.</i>"""
        "Stalgasin Hive Guard":
           display_name: """Schwarmgarde der Stalgasin-Kolonie """
           text: """<i class = flavor_text>Speziell auf die physiologischen Besonderheiten der Geonosianer angepasst, kann der Sternenjäger der Nantex-Klasse Manöver fliegen, welche die meisten anderen Schiffe - und ihre Piloten - auseinanderreißen würden.</i> %LINEBREAK%<strong>Fangstrahl-Zielsystem:</strong> Du kannst deinen %SINGLETURRETARC% nicht auf deinen %REARARC%rotieren. Nachdem du ein Manöver ausgeführt hast, darfst du 1 Fangstrahlmarker erhalten, um eine&nbsp;%ROTATEARC%&nbsp;-Aktion durchzuführen."""
        "Starkiller Base Pilot":
           display_name: """Pilot der Starkiller-Basis"""
           text: """<i class = flavor_text>Das Kommandoshuttle der Ypsilon-Klasse dient als mobile Einsatzbasis für viele leitende Offiziere und Agenten der Ersten Ordnung. Sie nutzen seine leistungsstarken Sensoren und Kommunikationsanlagen, um die Verbreitung von Angst und Schrecken in der Galaxis zu koordinieren.</i>%LINEBREAK%<strong>Gekoppelte Geschützbatterie:</strong> Solange du einen %CANNON%-Angriff durchführst, wirf 1 zusätzlichen Würfel."""
        "Storm Squadron Ace":
           display_name: """Fliegerass der Storm-Staffel"""
           text: """<i class = flavor_text>Der TIE-x1-Turbojäger wurde nur in geringer Stückzahl produziert, dafür wurden viele seiner Innovationen bei der Entwicklung von Sienars nächstem TIE-Modell, dem TIE-Abfangjäger, übernommen.</i>%LINEBREAK%<strong>Verbesserter Zielcomputer:</strong> Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Sun Fac":
           display_name: """Sun Fac"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger gefangen ist, wirf 1 zusätzlichen Angriffswürfel.%LINEBREAK%<strong>Fangstrahl-Zielsystem:</strong> Du kannst deinen %SINGLETURRETARC% nicht auf deinen %REARARC%rotieren. Nachdem du ein Manöver ausgeführt hast, darfst du 1 Fangstrahlmarker erhalten, um eine&nbsp;%ROTATEARC%&nbsp;-Aktion durchzuführen."""
        "Sunny Bounder":
           display_name: """Sunny Bounder"""
           text: """Solange du verteidigst oder einen Angriff durchführst, nachdem du deine Würfel geworfen oder neu geworfen hast, falls du auf jedem deiner Würfel dasselbe Ergebnis hast, darfst du 1 passendes Ergebnis hinzufügen.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "TN-3465":
           display_name: """TN-3465"""
           text: """Solange ein anderes befreundetes Schiff einen Angriff durchführt, falls du in Reichweite 0-1 des Verteidigers bist, darfst du 1 %CRIT%-Schaden erleiden, um 1 der Ergebnisse des Angreifers in ein %CRIT%-Ergebnis zu ändern."""
        "Tala Squadron Pilot":
           display_name: """Pilot der Tala-Staffel"""
           text: """<i class = flavor_text>Die AF4-Serie ist das jüngste Modell der bewährten Kopfjäger-Produktreihe, die mit ihrem günstigen Preis und ihrer robusten Bauweise zu den Favoriten vieler unabhängiger Organisationen wie der Rebellion gehört.</i>"""
        "Tallissan Lintra":
           display_name: """Tallissan Lintra"""
           text: """Solange ein feindliches Schiff in deinem %BULLSEYEARC% einen Angriff durchführt, darfst du 1 %CHARGE% ausgeben. Falls du das tust, wirft der Verteidiger 1 zusätzlichen Würfel.%LINEBREAK%<strong>Optimierte Gyrostabilisatoren:</strong> Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren. Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%- oder eine rote %ROTATEARC%-Aktion durchführen."""
        "Talonbane Cobra":
           display_name: """Talonbane Cobra"""
           text: """Solange du in Angriffsreichweite 3 verteidigst oder in Angriffsreichweite 1 einen Angriff durchführst, wirf 1 zusätzlichen Würfel."""
        "Tansarii Point Veteran":
           display_name: """Veteran von Tansarii """
           text: """<i class = flavor_text>Mit dem Abschuss von Talonbane Cobra, einem Spitzenpiloten der Schwarzen Sonne, entschieden die Car’das-Schmuggler die Schlacht um Tansarii Point für sich. Bis heute sind die Veteranen dieses Scharmützels im ganzen Sektor hochangesehen. </i>%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Techno Union Bomber":
           display_name: """Bomber der Techno-Union"""
           text: """<i class = flavor_text>Baktoid Rüstungswerke entwickelte die Hyäne als einen mit den Schwarmtaktiken der Vultures kompatiblen Offensivbomber.</i>%LINEBREAK%<strong>Vernetzte Berechnungssysteme:</strong> Solange du verteidigst oder einen Angriff durchführst, darfst du 1 Berechnungsmarker von einem befreundeten Schiff in Reichweite 0-1 ausgeben, um 1&nbsp;%FOCUS%-Ergebnis in ein %EVADE% oder %HIT%-Ergebnis zu ändern."""
        "Tel Trevura":
           display_name: """Tel Trevura"""
           text: """Falls du zerstört werden würdest, darfst du 1 %CHARGE% ausgeben. Falls du das tust, lege stattdessen alle deine Schadenskarten ab, erleide 5 %HIT%-Schaden und platziere dich selbst in der Reserve. Zu Beginn der nächsten Planungsphase platziere dich selbst innerhalb von Reichweite 1 deines Spielflächenrandes."""
        "Temmin Wexley":
           display_name: """Temmin Wexley"""
           text: """Nachdem du ein Manöver mit Geschwindigkeit 2-4 vollständig ausgeführt hast, darfst du eine %BOOST%-Aktion durchführen.%LINEBREAK%<strong>Waffenaufhängung:</strong> Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Tempest Squadron Pilot":
           display_name: """Pilot der Tornado-Staffel"""
           text: """<i class = flavor_text>Der TIE-Turbojäger war eine Weiterentwicklung der erfolgreichen TIE/ln-Baureihe, zusätzlich ausgestattet mit Deflektorschilden, besseren Waffen, geknickten Solarzellen und einem Hyperantrieb.</i>%LINEBREAK%<strong>Verbesserter Zielcomputer:</strong> Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Ten Numb":
           display_name: """Ten Numb"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1 Stressmarker ausgeben, um alle deine %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern."""
        "Thane Kyrell":
           display_name: """Thane Kyrell"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %FOCUS%-, %HIT%- oder %CRIT%-Ergebnis ausgeben, um dir die verdeckten Schadenskarten des Verteidigers anzusehen, 1 zu wählen und sie offenzulegen."""
        "Tomax Bren":
           display_name: """Tomax Bren"""
           text: """Nachdem du eine %RELOAD%-Aktion durchgeführt hast, darfst du 1 %CHARGE% von 1 deiner ausgerüsteten %TALENT%-Aufwertungskarten wiederherstellen. %LINEBREAK%<strong>Wendiger Bomber:</strong> Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Torani Kulda":
           display_name: """Torani Kulda"""
           text: """Nachdem du einen Angriff durchgeführt hast, erleidet jedes feindliche Schiff in deinem %BULLSEYEARC%1 %HIT%-Schaden, es sei denn, es entfernt 1 grünen Marker.%LINEBREAK%<strong>Todsicherer Treffer:</strong> Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, können Verteidigungswürfel nicht unter Verwendung von grünen Markern modifiziert werden."""
        "Torkil Mux":
           display_name: """Torkil Mux"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff in deinem Feuerwinkel wählen. Falls du das tust, kämpft jenes Schiff in dieser Runde bei Initiative 0 anstatt bei seinem normalen Initiativewert."""
        "Trade Federation Drone":
           display_name: """Drohne der Handelsförderation"""
           text: """<i class = flavor_text>In der Schlacht von Naboo kämpften zahllose Droidenjäger aufseiten der Handelsföderation. Bis heute werden die preisgünstigen Schiffe in den Klonkriegen eingesetzt.</i>%LINEBREAK%<strong>Vernetzte Berechnungssysteme:</strong> Solange du verteidigst oder einen Angriff durchführst, darfst du 1 Berechnungsmarker von einem befreundeten Schiff in Reichweite 0-1 ausgeben, um 1 %FOCUS%-Ergebnis in ein %EVADE%- oder %HIT%-Ergebnis zu ändern."""
        "Trandoshan Slaver":
           display_name: """Trandoshanischer Sklavenjäger"""
           text: """<i class = flavor_text>Sein geräumiges Trippeldecker-Design macht den YV-666 zu einem beliebten Schiff für Sklavenhändler und Kopfgeldjäger, die oft ein ganzes Deck für Gefangenentransporte umrüsten.</i>"""
        "Turr Phennir":
           display_name: """Turr Phennir"""
           text: """Nachdem du einen Angriff durchgeführt hast, darfst du eine %BARRELROLL%- oder %BOOST%-Aktion durchführen, auch falls du gestresst bist.%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """Zu Beginn der Kampfphase, falls 1 oder mehrere andere Schiffe in Reichweite 0 sind, erhalten du und jedes andere Schiff in Reichweite 0 je 1 Fangstrahlmarker.%LINEBREAK%<strong>Schlepperstrahl:</strong> <strong>Aktion:</strong> Wähle ein Schiff in deinem %FRONTARC% in Reichweite 1. Jenes Schiff erhält 1 Fangstrahlmarker oder 2 Fangstrahlmarker, falls es in deinem %BULLSEYEARC% in Reichweite 1 ist."""
        "Valen Rudor":
           display_name: """Valen Rudor"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-1 verteidigt hat (nachdem ggf. Schaden abgehandelt worden ist), darfst du eine Aktion durchführen."""
        "Ved Foslo":
           display_name: """Ved Foslo"""
           text: """Solange du ein Manöver ausführst, darfst du stattdessen ein Manöver derselben Flugrichtung und Schwierigkeit, aber einer um 1 höheren oder niedrigeren Geschwindigkeit ausführen.%LINEBREAK%<strong>Verbesserter Zielcomputer:</strong> Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Vennie":
           display_name: """Vennie"""
           text: """Solange du verteidigst, falls der Angreifer im %SINGLETURRETARC% eines befreundeten Schiffes ist, darfst du 1 %FOCUS%-Ergebnis zu deinen Würfelergebnissen hinzufügen."""
        "Vi Moradi":
           display_name: """Vi Moradi"""
           text: """<strong>Aufbau:</strong> Nachdem die Streitkräfte platziert worden sind, ordne 1&nbsp; feindlichen Schiff den Zustand <strong>Kompromittierende Informationen</strong> zu."""
        "Viktor Hel":
           display_name: """Viktor Hel"""
           text: """Nachdem du verteidigt hast, falls du nicht genau 2 Verteidigungswürfel geworfen hast, erhält der Angreifer 1 Stressmarker."""
        "Warden Squadron Pilot":
           display_name: """Pilot der Beschützer-Staffel"""
           text: """<i class = flavor_text>Der K-Flügler von Koensayr zeichnet sich durch einen topmodernen Sublicht-Antriebsmotor (kurz: SLAM) sowie beispiellose achtzehn Waffenaufhängungen aus. Was Geschwindigkeit und Feuerkraft anbelangt, steht er außer Konkurrenz.</i>"""
        "Wat Tambor":
           display_name: """Wat Tambor"""
           text: """Solange du einen Primärangriff durchführst, darfst du für jedes berechnende befreundete Schiff in Reichweite 1 des Verteidigers 1 Angriffswürfel neu werfen."""
        "Wedge Antilles":
           display_name: """Wedge Antilles"""
           text: """Solange du einen Angriff durchführst, wirft der Verteidiger 1 Verteidigungswürfel weniger."""
        "Wild Space Fringer":
           display_name: """Grenzgänger aus dem Wilden Raum"""
           text: """<i class = flavor_text>Serienmäßig bietet der YT-2400 reichlich Laderaum. Allerdings opfern die meisten Besitzer einen Teil davon, um Platz für modifizierte Waffensysteme und extragroße Triebwerke zu schaffen.</i>%LINEBREAK%<strong>Toter Winkel:</strong> Solange du einen Primärangriff in Reichweite 0-1 durchführst, wende den Bonus für Reichweite 0-1 nicht an und wirf 1 Angriffswürfel weniger."""
        "Wullffwarro":
           display_name: """Wullffwarro"""
           text: """Solange du einen Primärangriff durchführst, falls du beschädigt bist, darfst du 1 zusätzlichen Angriffswürfel werfen."""
        "Zari Bangel":
           display_name: """Zari Bangel"""
           text: """Du überspringst deinen Schritt „Aktion durchführen“ nicht, nachdem du ein Manöver teilweise ausgeführt hast.%LINEBREAK%<strong>Optimierte Gyrostabilisatoren:</strong> Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren. Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%- oder eine rote %ROTATEARC%-Aktion durchführen."""
        "Zealous Recruit":
           display_name: """Fanatischer Rekrut"""
           text: """<i class = flavor_text>Jeder Pilot eines mandalorianischen Fangjägers beherrscht den Concordianischen Wirbel, ein Manöver, bei dem das schmale Profil des Jägers für einen tödlichen Frontalangriff genutzt wird. </i>%LINEBREAK% <strong>Concordianischer Wirbel:</strong> Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Zertik Strom":
           display_name: """Zertik Strom"""
           text: """Während der Endphase darfst du eine Zielerfassung ausgeben, die du auf einem feindlichen Schiff hast, um 1 der Schadenskarten jenes Schiffes offenzulegen.%LINEBREAK%<strong>Verbesserter Zielcomputer:</strong> Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Zeta Squadron Pilot":
           display_name: """Pilot der Zeta-Staffel"""
           text: """<i class = flavor_text>Frei von den Hürden der galaktischen Bürokratie kann die Erste Ordnung Technologien, die ursprünglich für den imperialen TIE-Turbojäger entwickelt wurden, in Massen produzieren lassen. Das Ergebnis ist der TIE/eo, dessen Piloten eine deutlich höhere Lebenserwartung genießen als ihre Vorgänger zu Zeiten des Imperiums.</i>"""
        "Zeta Squadron Survivor":
           display_name: """Überlebender der Zeta-Staffel"""
           text: """<i class = flavor_text>Seit ihrer beschämenden Niederlage kämpfen die Piloten der Starkiller-Basis noch erbitterter gegen den Widerstand, um sich zu rehabilitieren.</i>%LINEBREAK%<strong>Schwerer Geschützturm:</strong> Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren. Du <b>musst</b> die %FRONTARC%-Voraussetzung deiner ausgerüsteten %MISSILE%-Aufwertungen behandeln, als wäre sie %SINGLETURRETARC%."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """Solange du einen Primärangriff durchführst, darfst du 1 zusätzlichen Angriffswürfel werfen. Falls du das tust, wirft der Verteidiger 1 zusätzlichen Verteidigungswürfel."""
        '"Avenger"':
           display_name: """„Avenger“"""
           text: """Nachdem ein anderes befreundetes Schiff zerstört worden ist, darfst du eine Aktion durchführen, auch solange du gestresst bist.%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        '"Axe"':
           display_name: """„Axe“"""
           text: """Nachdem du verteidigt oder einen Angriff durchgeführt hast, darfst du ein befreundetes Schiff in Reichweite 1-2 in deinem %LEFTARC% oder %RIGHTARC% wählen. Falls du das tust, transferiere 1 grünen Marker auf jenes Schiff."""
        '"Backdraft"':
           display_name: """„Backdraft“"""
           text: """Solange du einen %SINGLETURRETARC%-Primärangriff durchführst, falls der Verteidiger in deinem %REARARC% ist, wirf 1 zusätzlichen Würfel.%LINEBREAK%<strong>Schwerer Geschützturm:</strong> Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren. Du <b>musst</b> die %FRONTARC%-Voraussetzung deiner ausgerüsteten %MISSILE%-Aufwertungen behandeln, als wäre sie %SINGLETURRETARC%."""
        '"Blackout"':
           display_name: """„Blackout“"""
           text: """Solange du einen Angriff durchführst, falls der Angriff durch ein Hindernis versperrt ist, wirft der Verteidiger 2 Verteidigungswürfel weniger.%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        '"Broadside"':
           display_name: """“Broadside”"""
           text: """Solange du einen %SINGLETURRETARC%&nbsp;Angriff durchführst, falls dein %SINGLETURRETARC%&nbsp;-Anzeiger in deinem %LEFTARC%&nbsp;oder&nbsp;%RIGHTARC%ist, darfst du 1&nbsp;Leerseiten-Ergebnis in ein&nbsp;&nbsp;%FOCUS%&nbsp;-Ergebnis ändern.%LINEBREAK%<strong>Gepanzerte Hülle:</strong> Solange du verteidigst, falls du nicht kritisch beschädigt bist, ändere 1&nbsp;%CRIT%&nbsp;-Ergebnis in ein&nbsp;%HIT%&nbsp;-Ergebnis."""
        '"Chopper"':
           display_name: """„Chopper“"""
           text: """Zu Beginn der Kampfphase erhält jedes feindliche Schiff in Reichweite 0 2 Störsignalmarker. %LINEBREAK%<strong>Heckgeschütz:</strong> Solange du ein angedocktes Schiff hast, hast du eine %REARARC%-Primärwaffe mit einem Angriffswert in Höhe des Angriffswertes der %FRONTARC%-Primärwaffe deines angedockten Schiffes."""
        '"Countdown"':
           display_name: """„Countdown“"""
           text: """Solange du verteidigst, nach dem Schritt „Ergebnisse neutralisieren“, falls du nicht gestresst bist, darfst du 1 %HIT%-Schaden erleiden und 1 Stressmarker erhalten. Falls du das tust, negiere alle Würfelergebnisse.%LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        '"Deathfire"':
           display_name: """„Todesfeuer“"""
           text: """Nachdem du zerstört worden bist, bevor du entfernt wirst, darfst du einen Angriff durchführen und 1 Gerät abwerfen oder starten.%LINEBREAK%<strong>Wendiger Bomber:</strong> Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        '"Deathrain"':
           display_name: """„Todesregen“"""
           text: """Nachdem du ein Gerät abgeworfen oder gestartet hast, darfst du eine Aktion durchführen."""
        '"Double Edge"':
           display_name: """„Doppelklinge“"""
           text: """Nachdem du einen %TURRET%- oder %MISSILE%-Angriff durchgeführt hast, der verfehlt hat, darfst du unter Verwendung einer anderen Waffe einen Bonusangriff durchführen."""
        '"Duchess"':
           display_name: """„Herzogin“"""
           text: """Du darfst wählen, <strong>Adaptive Querruder</strong> nicht zu verwenden. %LINEBREAK%Du darfst <strong>Adaptive Querruder</strong> verwenden, auch solange du gestresst bist.%LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        '"Dutch" Vander':
           display_name: """„Dutch“ Vander"""
           text: """Nachdem du die %LOCK%-Aktion durchgeführt hast, darfst du 1 befreundetes Schiff in Reichweite 1-3 wählen. Jenes Schiff darf das Objekt, das du als Ziel erfasst hast, als Ziel erfassen, wobei es die Reichweitenbeschränkung ignoriert."""
        '"Echo"':
           display_name: """„Echo“"""
           text: """Solange du dich enttarnst, <b>musst</b> du die [2 %BANKLEFT%]- oder [2 %BANKRIGHT%]-Schablone anstatt der [2 %STRAIGHT%]-Schablone verwenden.%LINEBREAK%<strong>Stygium-Gitter:</strong> Nachdem du dich enttarnt hast, darfst du eine %EVADE%-Aktion durchführen. Zu Beginn der Endphase darfst du 1 Ausweichmarker ausgeben, um 1 Tarnungsmarker zu erhalten."""
        '"Goji"':
           display_name: """“Goji”"""
           text: """Solange ein befreundetes Schiff in Reichweite&nbsp;0-3 verteidigt, darf es für jede befreundete Bombe oder Mine, die in Reichweite&nbsp;0-1 zu ihm ist, 1&nbsp;zusätzlichen Verteidigungswürfel werfen.%LINEBREAK%<strong>Gepanzerte Hülle:</strong> Solange du verteidigst, falls du nicht kritisch beschädigt bist, ändere 1&nbsp;%CRIT%&nbsp;-Ergebnis in ein&nbsp;%HIT%&nbsp;-Ergebnis."""
        '"Howlrunner"':
           display_name: """„Howlrunner“"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-1 einen Primärangriff durchführt, darf jenes Schiff 1 Angriffswürfel neu werfen."""
        '"Jag"':
           display_name: """„Jag“"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 1-2 in deinem %LEFTARC% oder %RIGHTARC% verteidigt hat, darfst du den Angreifer als Ziel erfassen."""
        '"Kickback"':
           display_name: """„Kickback“"""
           text: """Nachdem du eine %BARRELROLL%-Aktion durchgeführt hast, darfst du eine rote %LOCK%-Aktion durchführen."""
        '"Leebo"':
           display_name: """„Leebo“"""
           text: """Nachdem du verteidigt oder einen Angriff durchgeführt hast, falls du einen Berechnungsmarker ausgegeben hast, erhalte 1 Berechnungsmarker.%LINEBREAK%<strong>Toter Winkel:</strong> Solange du einen Primärangriff in Reichweite 0-1 durchführst, wende den Bonus für Reichweite 0-1 nicht an und wirf 1 Angriffswürfel weniger."""
        '"Longshot"':
           display_name: """„Longshot“"""
           text: """Solange du einen Primärangriff in Angriffsreichweite 3 durchführst, wirf 1 zusätzlichen Angriffswürfel."""
        '"Matchstick"':
           display_name: """“Matchstick”"""
           text: """Solange du einen Primär- oder %SINGLETURRETARC% -Angriff durchführst, darfst du für jeden roten Marker, den du hast, 1&nbsp;Angriffswürfel neu werfen.%LINEBREAK%<strong>Gepanzerte Hülle:</strong> Solange du verteidigst, falls du nicht kritisch beschädigt bist, ändere 1&nbsp;%CRIT%&nbsp;-Ergebnis in ein&nbsp;%HIT%&nbsp;-Ergebnis."""
        '"Mauler" Mithel':
           display_name: """„Mauler“ Mithel"""
           text: """Solange du einen Angriff in Angriffsreichweite 1 durchführst, wirf 1 zusätzlichen Angriffswürfel."""
        '"Midnight"':
           display_name: """„Midnight“"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du das feindliche Schiff als Ziel erfasst hast, können die Würfel jenes Schiffes nicht modifiziert werden."""
        '"Muse"':
           display_name: """„Muse“"""
           text: """Zu Beginn der Kampfphase darfst du ein befreundetes Schiff in Reichweite 0-1 wählen. Falls du das tust, entfernt jenes Schiff 1 Stressmarker."""
        '"Night Beast"':
           display_name: """„Nachtbestie“"""
           text: """Nachdem du ein blaues Manöver vollständig ausgeführt hast, darfst du eine %FOCUS%-Aktion durchführen."""
        '"Null"':
           display_name: """„Null“"""
           text: """Solange du nicht beschädigt bist, behandle deinen Initiativwert, als wäre er 7."""
        '"Odd Ball"':
           display_name: """„Odd Ball“"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt oder eine rote Aktion durchgeführt hast, falls ein feindliches Schiff in deinem %BULLSEYEARC% ist, darfst du jenes Schiff als Ziel erfassen."""
        '"Odd Ball" (ARC-170)':
           display_name: """„Odd Ball“ (ARC-170)"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt oder eine rote Aktion durchgeführt hast, falls ein feindliches Schiff in deinem %BULLSEYEARC% ist, darfst du jenes Schiff als Ziel erfassen."""
        '"Odd Ball" (Y-Wing)':
           display_name: """“Oddball”"""
           text: """Nachdem du ein rotes Manöver ausgeführt oder eine rote Aktion durchgeführt hast, falls ein feindliches Schiff in deinem%BULLSEYEARC%ist, darfst du jenes Schiff als Ziel erfassen.%LINEBREAK%<strong>Gepanzerte Hülle:</strong> Solange du verteidigst, falls du nicht kritisch beschädigt bist, ändere 1&nbsp;%CRIT%&nbsp;-Ergebnis in ein&nbsp;%HIT%&nbsp;-Ergebnis."""
        '"Pure Sabacc"':
           display_name: """„Voller Sabacc“"""
           text: """Solange du einen Angriff durchführst, falls du 1 oder weniger Schadenskarten hast, darfst du 1 zusätzlichen Angriffswürfel werfen.%LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        '"Quickdraw"':
           display_name: """„Quickdraw“"""
           text: """Nachdem du ein Schild verloren hast, darfst du 1 %CHARGE% ausgeben. Falls du das tust, darfst du einen Bonus-Primärangriff durchführen.%LINEBREAK%<strong>Schwerer Geschützturm:</strong> Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren. Du <b>musst</b> die %FRONTARC%-Voraussetzung deiner ausgerüsteten %MISSILE%-Aufwertungen behandeln, als wäre sie %SINGLETURRETARC%."""
        '"Recoil"':
           display_name: """„Recoil“"""
           text: """Solange du gestresst bist, darfst du feindliche Schiffe in deinem %FRONTARC% in Reichweite 0-1 behandeln, als wären sie in deinem %BULLSEYEARC%.%LINEBREAK%<strong>Automatische Schubdüsen:</strong> Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        '"Redline"':
           display_name: """„Rote Linie“"""
           text: """Du kannst bis zu 2 Zielerfassungen aufrechterhalten. %LINEBREAK%Nachdem du eine Aktion durchgeführt hast, darfst du ein Ziel erfassen."""
        '"Scorch"':
           display_name: """„Scorch“"""
           text: """Solange du einen Primärangriff durchführst, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten, um 1 zusätzlichen Angriffswürfel zu werfen."""
        '"Scourge" Skutu':
           display_name: """„Geißel“ Skutu """
           text: """Solange du einen Angriff gegen einen Verteidiger in deinem %BULLSEYEARC% durchführst, wirf 1 zusätzlichen Angriffswürfel."""
        '"Sinker"':
           display_name: """„Sinker“"""
           text: """Solange ein befreundetes Schiff in Reichweite 1-2 in deinem %LEFTARC% oder %RIGHTARC% einen Primärangriff durchführt, darf es 1 Angriffswürfel neu werfen."""
        '"Static"':
           display_name: """„Static“"""
           text: """Solange du einen Primärangriff durchführst, darfst du deine Zielerfassung auf dem Verteidiger und einen Fokusmarker ausgeben, um alle deine Ergebnisse in %CRIT%-Ergebnisse zu ändern."""
        '"Swoop"':
           display_name: """„Swoop“"""
           text: """Nachdem ein befreundetes kleines oder mittleres Schiff ein Manöver mit Geschwindigkeit 3-4 vollständig ausgeführt hat, falls es in Reichweite 0-1 ist, darf es eine rote %BOOST%-Aktion durchführen."""
        '"Tucker"':
           display_name: """„Tucker“"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 1-2 einen Angriff gegen ein feindliches Schiff in deinem %FRONTARC% durchgeführt hat, darfst du eine %FOCUS% -Aktion durchführen."""
        '"Vizier"':
           display_name: """„Wesir“"""
           text: """Nachdem du unter Verwendung deiner Schiffsfähigkeit <strong>Adaptive Querruder</strong> ein Manöver mit Geschwindigkeit 1 vollständig ausgeführt hast, darfst du eine %COORDINATE%-Aktion durchführen. Falls du das tust, überspringe deinen Schritt „Aktion durchführen“.%LINEBREAK%<strong>Adaptive Querruder:</strong> Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du ein weißes [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Manöver ausführen."""
        '"Wampa"':
           display_name: """„Wampa“"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %CHARGE% ausgeben, um 1 zusätzlichen Angriffswürfel zu werfen.%LINEBREAK%Nach dem Verteidigen, verliere 1 %CHARGE%."""
        '"Whisper"':
           display_name: """„Geflüster“"""
           text: """Nachdem du einen Angriff durchgeführt hast, der getroffen hat, erhalte 1 Ausweichmarker.%LINEBREAK%<strong>Stygium-Gitter:</strong> Nachdem du dich enttarnt hast, darfst du eine %EVADE%-Aktion durchführen. Zu Beginn der Endphase darfst du 1 Ausweichmarker ausgeben, um 1 Tarnungsmarker zu erhalten."""
        '"Wolffe"':
           display_name: """„Wolffe“"""
           text: """Solange du einen %FRONTARC%-Primärangriff durchführst, darfst du 1 %CHARGE% ausgeben, um 1 Angriffswürfel neu zu werfen. %LINEBREAK%Solange du einen %REARARC%-Primärangriff durchführst, darfst du 1 %CHARGE% wiederherstellen, um 1 zusätzlichen Angriffswürfel zu werfen."""
        '"Zeb" Orrelios':
           display_name: """„Zeb“ Orrelios"""
           text: """Solange du verteidigst, werden %CRIT%-Ergebnisse neutralisiert, bevor %HIT%-Ergebnisse neutralisiert werden.%LINEBREAK%<strong>Geladen und entsichert:</strong> Solange du angedockt bist, nachdem dein Trägerschiff einen %FRONTARC%-Primärangriff oder %TURRET%-Angriff durchgeführt hat, darf es einen Bonus-%REARARC%-Primärangriff durchführen."""
        '"Zeb" Orrelios (Sheathipede)':
           display_name: """„Zeb“ Orrelios (Sheathipede)"""
           text: """Solange du verteidigst, werden %CRIT%-Ergebnisse neutralisiert, bevor %HIT%-Ergebnisse neutralisiert werden.%LINEBREAK%<strong>Kommunikationsantennen:</strong> Solange du angedockt bist, erhält dein Trägerschiff %COORDINATE%. Bevor dein Trägerschiff aktiviert wird, darf es eine %COORDINATE%-Aktion durchführen."""
        '"Zeb" Orrelios (TIE Fighter)':
           display_name: """„Zeb“ Orrelios (TIE Fighter)"""
           text: """Solange du verteidigst, werden %CRIT%-Ergebnisse neutralisiert, bevor %HIT%-Ergebnisse neutralisiert werden."""
        "Baktoid Prototype":
           display_name: """Prototyp von Baktoid"""
           text: """Solange du einen Spezialangriff durchführst, falls ein befreundetes Schiff mit der Schiffsfähigkeit <strong>Vernetzte Berechnungssysteme</strong> den Verteidiger als Ziel erfasst hat, darfst du die &nbsp;%FOCUS%, %CALCULATE%, oder&nbsp;%LOCK%-Voraussetzung jenes Angriffs ignorieren.%LINEBREAK%<strong>Vernetzte Berechnungssysteme:</strong> Solange du verteidigst oder einen Angriff durchführst, darfst du 1&nbsp;Berechnungsmarker von einem befreundeten Schiff in Reichweite 0-1 ausgeben, um 1&nbsp;%FOCUS%-Ergebnis in ein %EVADE% oder %HIT%-Ergebnis zu ändern."""
        "Haor Chall Prototype":
           display_name: """Prototyp von Haor Chall"""
           text: """Nachdem ein feindliches Schiff in deinem %BULLSEYEARC% in Reichweite 0-2 ein anderes befreundetes Schiff zum Verteidiger deklariert hat, darfst du eine %CALCULATE%- oder %LOCK%-Aktion durchführen.%LINEBREAK%<strong>Vernetzte Berechnungssysteme:</strong> Solange du verteidigst oder einen Angriff durchführst, darfst du 1 Berechnungsmarker von einem befreundeten Schiff in Reichweite 0-1 ausgeben, um 1 %FOCUS%-Ergebnis in ein %EVADE%- oder %HIT%-Ergebnis zu ändern."""
        "Naboo Handmaiden":
           display_name: """Zofe von Naboo"""
           text: """<strong>Aufbau:</strong>Nachdem die Streitkräfte platziert worden sind, ordne 1&nbsp;anderem befreundeten Schiff als <strong>Zofe von Naboo</strong>den Zustand <strong>Durch ein Double geschützt</strong>zu.%LINEBREAK%<strong>Vollgas:</strong> Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%&nbsp;-Aktion durchführen."""
        "Bombardment Drone":
           display_name: """Bombendrohne"""
           text: """Falls du ein Gerät abwerfen würdest, darfst du jenes Gerät stattdessen unter Verwendung derselben Schablone starten.%LINEBREAK%<strong>Vernetzte Berechnungssysteme:</strong> Solange du verteidigst oder einen Angriff durchführst, darfst du 1&nbsp;Berechnungsmarker von einem befreundeten Schiff in Reichweite 0-1 ausgeben, um 1&nbsp;%FOCUS%-Ergebnis in ein %EVADE% oder %HIT%-Ergebnis zu ändern."""
        "Precise Hunter":
           display_name: """Präzisionsjäger"""
           text: """Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 Leerseiten-Ergebnis neu werfen.%LINEBREAK%<strong>Vernetzte Berechnungssysteme:</strong> Solange du verteidigst oder einen Angriff durchführst, darfst du 1 Berechnungsmarker von einem befreundeten Schiff in Reichweite 0-1 ausgeben, um 1 %FOCUS%-Ergebnis in ein %EVADE%- oder %HIT%-Ergebnis zu ändern."""



    upgrade_translations =
        "0-0-0":
           display_name: """0-0-0"""
           text: """<i>Nur für Abschaum oder Staffel, die Darth Vader enthält</i>%LINEBREAK%Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in Reichweite 0-1 wählen. Falls du das tust, erhältst du 1 Berechnungsmarker, es sei denn, jenes Schiff entscheidet sich dafür, 1 Stressmarker zu erhalten."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen Angriff durchführst, nachdem du Angriffswürfel geworfen hast, darfst du eine Art von grünen Markern benennen. Falls du das tust, erhalte 2 Ionenmarker und der Verteidiger kann während dieses Angriffs keine Marker der benannten Art ausgeben."""
        "Andrasta":
           display_name: """Andrasta"""
           text: """<i>Fügt %RELOAD% hinzu</i>%LINEBREAK%<i>Nur für Abschaum</i>%LINEBREAK%Füge den %DEVICE%-Slot hinzu."""
        "Black One":
           display_name: """Schwarz Eins"""
           text: """<i>Fügt %SLAM% hinzu</i>%LINEBREAK%<i>Nur für Widerstand</i>%LINEBREAK%Nachdem du eine %SLAM%-Aktion durchgeführt hast, verliere 1 %CHARGE%. Dann darfst du 1 Ionenmarker erhalten, um 1 Entwaffnet-Marker zu entfernen.%LINEBREAK%Falls deine %CHARGE% inaktiv ist, kannst du die %SLAM%-Aktion nicht durchführen."""
        "Dauntless":
           display_name: """Dauntless"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Nachdem du ein Manöver teilweise ausgeführt hast, darfst du 1 weiße Aktion durchführen, wobei du jene Aktion behandelst, als wäre sie rot."""
        "Ghost":
           display_name: """Ghost"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Du kannst 1 Jagdshuttle oder eine Raumfähre der Sheathipede-Klasse andocken lassen.%LINEBREAK%Deine angedockten Schiffe können nur von deinen hinteren Stoppern aus abgesetzt werden."""
        "Havoc":
           display_name: """Havoc"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Entferne den %CREW%-Slot. Füge %SENSOR%- und %ASTROMECH%-Slots hinzu."""
        "Hound's Tooth":
           display_name: """Reißzahn"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%An dir kann 1 Z-95-AF4-Kopfjäger andocken."""
        "IG-2000":
           display_name: """IG-2000"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Du hast die Pilotenfähigkeit jedes anderen befreundeten Schiffes mit der Aufwertung <strong>IG-2000</strong>."""
        "Marauder":
           display_name: """Marodeur"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen %REARARC%-Primärangriff durchführst, darfst du 1 Angriffswürfel neu werfen.%LINEBREAK%Füge den %GUNNER%-Slot hinzu."""
        "Millennium Falcon":
           display_name: """Millennium Falke"""
           text: """<i>Fügt %EVADE% hinzu</i>%LINEBREAK%<i>Nur für Rebellen</i>%LINEBREAK%Solange du verteidigst, falls du ausweichst, darfst du 1 Verteidigungswürfel neu werfen."""
        "Mist Hunter":
           display_name: """Nebeljäger"""
           text: """<i>Fügt %BARRELROLL% hinzu</i>%LINEBREAK%<i>Nur für Abschaum</i>%LINEBREAK%Füge den %CANNON%-Slot hinzu."""
        "Moldy Crow":
           display_name: """Moldy Crow"""
           text: """<i>Nur für Rebellen oder Abschaum</i>%LINEBREAK%Erhalte eine %FRONTARC%-Primärwaffe mit einem Wert von 3.%LINEBREAK%Während der Endphase, entferne bis zu 2 Fokusmarker nicht."""
        "Outrider":
           display_name: """Outrider"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Solange du einen versperrten Angriff durchführst, wirft der Verteidiger 1 Verteidigungswürfel weniger.%LINEBREAK%Nachdem du ein Manöver vollständig ausgeführt hast, falls du dich durch ein Hindernis hindurchbewegt oder dich mit ihm überschnitten hast, darfst du 1 deiner roten oder orangefarbenen Marker entfernen."""
        "Phantom":
           display_name: """Phantom"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Du kannst in Reichweite 0-1 andocken."""
        "Punishing One":
           display_name: """Vollstrecker Eins"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %FRONTARC% ist, wirf 1 zusätzlichen Angriffswürfel.%LINEBREAK%Entferne den %CREW%-Slot. Füge den %ASTROMECH%-Slot hinzu."""
        "ST-321":
           display_name: """ST-321"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Nachdem du eine %COORDINATE%-Aktion durchgeführt hast, darfst du ein feindliches Schiff in Reichweite 0-3 des von dir koordinierten Schiffes wählen. Falls du das tust, erfasse jenes feindliche Schiff als Ziel, wobei du die Reichweitenbeschränkung ignorierst."""
        "Scimitar":
           display_name: """Scimitar"""
           text: """<i>Fügt <r>%CLOAK%</r> ,  %JAM% hinzu</i>%LINEBREAK%<i>Nur für Separatistenallianz</i>%LINEBREAK%<strong>Aufbau:</strong> Nach dem Schritt „Streitkräfte platzieren“ darfst du dich tarnen.%LINEBREAK%Nachdem du dich enttarnt hast, darfst du ein feindliches Schiff in deinem %BULLSEYEARC% wählen. Falls du das tust, erhält es 1 Störsignalmarker."""
        "Shadow Caster":
           display_name: """Shadow Caster"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, der getroffen hat, falls der Verteidiger in deinem %SINGLETURRETARC% und in deinem %FRONTARC% ist, erhält der Verteidiger 1 Fangstrahlmarker."""
        "Slave I":
           display_name: """Sklave I"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du ein Wende­­manöver (%TURNLEFT% oder %TURNRIGHT%) oder Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) aufgedeckt hast, darfst du dein Rad auf das Manöver derselben Geschwindigkeit und Flugrichtung in der anderen Orientierung einstellen.%LINEBREAK%Füge den %TORPEDO%-Slot hinzu."""
        "Soulless One":
           display_name: """Seelenlose"""
           text: """<i>Nur für Separatistenallianz %LINEBREAK% Fügt 2 Hüllenpunkte hinzu </i>%LINEBREAK% Solange du verteidigst, falls der Angreifer außerhalb deines Feuerwinkels ist, darfst du 1 Verteidigungswürfel neu werfen."""
        "Virago":
           display_name: """Virago"""
           text: """Während der Endphase darfst du 1 %CHARGE% ausgeben, um eine rote %BOOST%-Aktion durchzuführen.%LINEBREAK%Füge den %MODIFICATION%-Slot hinzu."""
        "Ablative Plating":
           display_name: """Ablative Panzerung"""
           text: """<i>Nur für großes Schiff oder mittleres Schiff</i>%LINEBREAK%Bevor du Schaden durch ein Hindernis oder die Detonation einer befreundeten Bombe erleiden würdest, darfst du 1 %CHARGE% ausgeben. Falls du das tust, verhindere 1 Schaden."""
        "Admiral Sloane":
           display_name: """Admiral Sloane"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Nachdem ein anderes befreundetes Schiff in Reichweite 0-3 verteidigt hat, falls es zerstört ist, erhält der Angreifer 2 Stressmarker.%LINEBREAK%Solange ein befreundetes Schiff in Reichweite 0-3 einen Angriff gegen ein gestresstes Schiff durchführt, darf es 1 Angriffswürfel neu werfen."""
        "Adv. Proton Torpedoes":
           display_name: """Verstärkte Protonentorpedos"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE% aus. Ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Advanced Optics":
           display_name: """Verbesserte Optik"""
           text: """Solange du einen Angriff durchführst, darfst du 1 Fokusmarker ausgeben, um 1 deiner Leerseiten-Ergebnisse in ein %HIT%-Ergebnis zu ändern."""
        "Advanced SLAM":
           display_name: """Verbesserter SLAM"""
           text: """<i>Benötigt %SLAM%</i>%LINEBREAK%Nachdem du eine %SLAM%-Aktion durchgeführt hast, falls du das Manöver vollständig ausgeführt hast, darfst du eine weiße Aktion aus deiner Aktionsleiste durchführen, wobei du jene Aktion behandelst, als wäre sie rot."""
        "Advanced Sensors":
           display_name: """Verbesserte Sensoren"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du 1 Aktion durchführen.%LINEBREAK%Falls du das tust, kannst du während deiner Aktivierung keine weitere Aktion durchführen."""
        "Afterburners":
           display_name: """Nachbrenner"""
           text: """<i>Nur für kleines Schiff</i>%LINEBREAK%Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du 1 %CHARGE% ausgeben, um eine %BOOST%-Aktion durchzuführen, auch solange du gestresst bist."""
        "Agent Kallus":
           display_name: """Agent Kallus"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%<strong>Aufbau:</strong> Ordne 1 feindlichen Schiff den Zustand <strong>Gejagt</strong> zu.%LINEBREAK%Solange du einen Angriff gegen ein Schiff mit dem Zustand <strong>Gejagt</strong> durchführst, darfst du 1 deiner %FOCUS%-Ergebnisse in ein %HIT%-Ergebnis ändern."""
        "Agile Gunner":
           display_name: """Wendiger Schütze"""
           text: """Während der Endphase darfst du deinen %SINGLETURRETARC%-Anzeiger drehen."""
        "Ahsoka Tano":
           display_name: """Ahsoka Tano"""
           text: """<i>Nur für Galaktische Republik</i>%LINEBREAK%Nachdem du ein Manöver ausgeführt hast, darfst du 1&nbsp;%FORCE% ausgeben und 1&nbsp;befreundetes Schiff in Reichweite&nbsp;1-3 in deinem Feuerwinkel wählen. Falls du das tust, darf es eine rote&nbsp;%FOCUS%&nbsp;-Aktion durchführen, auch solange es gestresst ist."""
        "Amilyn Holdo":
           display_name: """Amilyn Holdo"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Bevor du kämpfst, darfst du ein anderes befreundetes Schiff in Reichweite 1-2 wählen. Du darfst 1 Marker einer Art, die jenes Schiff nicht hat, auf jenes Schiff transferieren. Jenes Schiff darf 1 Marker einer Art, die du nicht hast, auf dich transferieren."""
        "Angled Deflectors":
           display_name: """Ausgerichtete Deflektoren"""
           text: """<i>Fügt %REINFORCE% hinzu</i>%LINEBREAK%<i>Nur für kleines Schiff oder mittleres Schiff</i>%LINEBREAK%<i class = flavor_text>Sternenjägerschilde haben oft manuelle Überbrückungsschalter, mit denen die Energie in bestimmte Richtungen umgeleitet werden kann, um Front oder Heck besser zu schützen. Ein Pilot, der seine Situation nicht richtig überblickt, kann jedoch seinem Feind eine offene Flanke bieten.</i>"""
        "Autoblasters":
           display_name: """Autoblaster"""
           text: """<strong>Angriff:</strong> Falls der Verteidiger in deinem %BULLSEYEARC% ist, wirf 1 zusätzlichen Würfel. Während des Schrittes „Ergebnisse neutralisieren“, falls du nicht im&nbsp;%FRONTARC% des Verteidigers bist, negieren %EVADE%&nbsp;-Ergebnisse keine %CRIT%&nbsp;-Ergebnisse."""
        "BB Astromech":
           display_name: """BB-Astromechdroide"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Bevor du ein blaues Manöver ausführst, darfst du 1 %CHARGE% ausgeben, um eine %BARRELROLL%-Aktion durchzuführen."""
        "BB-8":
           display_name: """BB-8"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Bevor du ein blaues Manöver ausführst, darfst du 1 %CHARGE% ausgeben, um eine %BARRELROLL%- oder %BOOST%-Ak­tion durch­zu­fü­hren."""
        "BT-1":
           display_name: """BT-1"""
           text: """<i>Nur für Abschaum oder Staffel, die Darth Vader enthält</i>%LINEBREAK%Solange du einen Angriff durchführst, darfst du für jeden Stressmarker, den der Verteidiger hat, 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern."""
        "Barrage Rockets":
           display_name: """Raketensalve"""
           text: """<strong>Angriff (</strong>%FOCUS%<strong>):</strong> Gib 1 %CHARGE% aus. Falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 oder mehrere %CHARGE% ausgeben, um ebenso viele Angriffswürfel neu zu werfen."""
        "Battle Meditation":
           display_name: """Kampfmeditation"""
           text: """<i>Fügt %COORDINATE% hinzu</i>%LINEBREAK%<i>Nur für Galaktische Republik</i>%LINEBREAK%Du kannst keine limitierten Schiffe koordinieren. %LINEBREAK%Solange du eine violette %COORDINATE%-Aktion durchführst, darfst du 1 zusätzliches befreundetes nicht-limitiertes Schiff desselben Typs koordinieren. Beide Schiffe müssen dieselbe Aktion durchführen."""
        "Baze Malbus":
           display_name: """Baze Malbus"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Solange du eine %FOCUS%-Aktion durchführst, darfst du sie behandeln, als wäre sie rot. Falls du das tust, erhalte 1 zusätzlichen Fokusmarker für jedes feindliche Schiff in Reichweite 0-1, bis zu einem Maximum von 2."""
        "Biohexacrypt Codes":
           display_name: """Bio-Hexakryptcode"""
           text: """<i>Benötigt %LOCK% oder <r>%LOCK%</r></i>%LINEBREAK%<i>Nur für Erste Ordnung</i>%LINEBREAK%Solange du koordinierst oder ein Störsignal sendest, falls du ein Schiff als Ziel erfasst hast, darfst du jene Zielerfassung ausgeben, um jenes Schiff zu wählen, wobei du die Reichweitenbeschränkung ignorierst."""
        "Bistan":
           display_name: """Bistan"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Nachdem du einen Primärangriff durchgeführt hast, falls du fokussiert bist, darfst du einen Bonus-%SINGLETURRETARC%-Angriff gegen ein Schiff, das du in dieser Runde noch nicht angegriffen hast, durchführen."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%<strong>Aufbau:</strong> Beginne in der Reserve.%LINEBREAK%Am Ende des Aufbaus platziere dich selbst in Reichweite 0 eines Hindernisses und jenseits von Reichweite 3 aller feindlichen Schiffe."""
        "Bomblet Generator":
           display_name: """Streubombengenerator"""
           text: """<strong>Bombe</strong>%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone eine Streubombe abzuwerfen.%LINEBREAK%Zu Beginn der Aktivierungsphase darfst du 1 Schild ausgeben, um 2 %CHARGE% wiederherzustellen."""
        "Bossk":
           display_name: """Bossk"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du einen Primärangriff durchgeführt hast, der verfehlt hat, falls du nicht gestresst bist, <b>musst</b> du 1 Stressmarker erhalten, um einen Bonus-Primärangriff gegen dasselbe Ziel durchzuführen."""
        "Brilliant Evasion":
           display_name: """Brilliantes Ausweichmanöver"""
           text: """Solange du verteidigst, falls du nicht im %BULLSEYEARC% des Angreifers bist, darfst du 1 %FORCE% ausgeben, um 2 deiner %FOCUS%-Ergebnisse in %EVADE% -Ergebnisse ändern."""
        "C-3PO":
           display_name: """C-3PO"""
           text: """<i>Fügt %CALCULATE% hinzu</i>%LINEBREAK%<i>Nur für Rebellen</i>%LINEBREAK%Bevor du Verteidigungswürfel wirfst, darfst du 1 Berechnungs­marker ausgeben, um laut eine Zahl von 1 oder höher zu raten. Falls du das tust und genau so viele %EVADE%-Ergebnisse wirfst, wie du geraten hast, füge 1 %EVADE%-Ergebnis hinzu.%LINEBREAK%Nachdem du die %CALCULATE%-Aktion"""
        "C-3PO (Resistance)":
           display_name: """C-3PO (Resistance)"""
           text: """<i>Fügt %CALCULATE% ,  <r>%COORDINATE%</r> hinzu</i>%LINEBREAK%<i>Nur für Widerstand</i>%LINEBREAK%Solange du koordinierst, kannst du befreundete Schiffe jenseits von Reichweite 2 wählen, falls sie ein %CALCULATE% in ihrer Aktionsleiste haben.%LINEBREAK%Nachdem du die %CALCULATE%- oder %COORDINATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "C-3PO (Republic)":
           display_name: """C-3PO"""
           text: """<i>Fügt %CALCULATE% hinzu</i>%LINEBREAK%<i>Nur für Galaktische Republik</i>%LINEBREAK%Solange du verteidigst, falls du berechnend bist, darfst du 1&nbsp;Verteidigungswürfel neu werfen.%LINEBREAK%Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1&nbsp;Berechnungsmarker."""
        "C1-10P":
           display_name: """C1-10P"""
           text: """<i>Nur für Galaktische Republik</i>%LINEBREAK%<strong>C1-10P:</strong> <strong>Aufbau:</strong> Rüste diese Seite offen aus.%LINEBREAK%Nachdem du ein Manöver ausgeführt hast, darfst du 1&nbsp;%CHARGE% ausgeben, um eine rote&nbsp;%EVADE%&nbsp;-Aktion durchzuführen, auch solange du gestresst bist.%LINEBREAK%Während der Endphase, falls diese Karte 0 aktive&nbsp;active %CHARGE%hat, drehe sie um.%LINEBREAK%<strong>C1-10P (launisch):</strong>%LINEBREAK%%LINEBREAK%Nachdem du ein Manöver ausgeführt hast, <b>musst</b> du ein Schiff in Reichweite&nbsp;0-1 wählen. Es erhält 1&nbsp;Störsignalmarker."""
        "Cad Bane":
           display_name: """Cad Bane"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du ein Gerät abgeworfen oder gestartet hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Calibrated Laser Targeting":
           display_name: """Kalibriertes Laser-Zielsystem"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, füge 1 %FOCUS% -Ergebnis hinzu."""
        "Captain Phasma":
           display_name: """Captain Phasma"""
           text: """<i>Nur für Erste Ordnung</i>%LINEBREAK%Am Ende der Kampfphase erhält jedes nicht gestresste feindliche Schiff in Reichweite 0-1 1 Stressmarker."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Während der Systemphase darfst du 1 feindliches Schiff in Reichweite 1-2 wählen und laut eine Flugrichtung und Geschwindigkeit raten, dann sieh dir das Rad jenes Schiffes an. Falls du die Flugrichtung und Geschwindigkeit des gewählten Schiffes richtig geraten hast, darfst du dein Rad auf ein anderes Manöver einstellen."""
        "Chancellor Palpatine":
           display_name: """Kanzler Palpatine"""
           text: """<i>Fügt <f>%COORDINATE%</f> hinzu</i>%LINEBREAK%<i>Nur für Separatistenallianz oder Galaktische Republik</i>%LINEBREAK%Kanzler Palpatine:%LINEBREAK%<strong>Aufbau:</strong> Rüste diese Seite offen aus. %LINEBREAK%Nachdem du verteidigt hast, falls der Angreifer in Reichweite 0-2 ist, darfst du 1 %FORCE% ausgeben. Falls du das tust, erhält der Angreifer 1 Stressmarker.%LINEBREAK%Während der Endphase darfst du diese Karte umdrehen.%LINEBREAK%Darth Sidious:%LINEBREAK%Nachdem du eine violette &nbsp;%COORDINATE%&nbsp;-Aktion durchgeführt hast, erhält das von dir koordinierte Schiff 1&nbsp;Stressmarker. Dann erhält es 1 _x001F_Fokusmarker oder es stellt 1&nbsp;%FORCE% wieder her."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Zu Beginn der Kampfphase darfst du 2 %CHARGE% ausgeben, um 1 offene Schadenskarte zu reparieren."""
        "Chewbacca (Scum)":
           display_name: """Chewbacca (Scum)"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Zu Beginn der Endphase darfst du 1 Fokusmarker ausgeben, um 1 deiner offenen Schadenskarten zu reparieren."""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca (Resistance)"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%<strong>Aufbau:</strong> Verliere 1 %CHARGE%.%LINEBREAK%Nachdem einem befreundeten Schiff in Reichweite 0-3 1 Schadenskarte zugeteilt worden ist, stelle 1 %CHARGE% wieder her.%LINEBREAK%Solange du einen Angriff durchführst, darfst du 2 %CHARGE% ausgeben, um 1 %FOCUS%-Ergebnis in ein %CRIT%-Ergebnis zu ändern."""
        "Ciena Ree":
           display_name: """Ciena Ree"""
           text: """<i>Benötigt %COORDINATE% oder <r>%COORDINATE%</r></i>%LINEBREAK%<i>Nur für Imperium</i>%LINEBREAK%Nachdem du eine %COORDINATE%-Aktion durchgeführt hast, falls das von dir koordinierte Schiff eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hat, darf es 1 Stressmarker erhalten, um sich um 90° zu drehen."""
        "Cikatro Vizago":
           display_name: """Cikatro Vizago"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Während der Endphase darfst du 2 %ILLICIT%-Aufwertungen wählen, die befreundete Schiffe in Reichweite 0-1 ausgerüstet haben. Falls du das tust, darfst du diese Aufwertungen austauschen.%LINEBREAK%<strong>Spielende:</strong> Lege alle %ILLICIT%-Aufwertungen auf ihre ursprünglichen Schiffe zurück."""
        "Cloaking Device":
           display_name: """Tarngerät"""
           text: """<i>Nur für kleines Schiff oder mittleres Schiff</i>%LINEBREAK%<strong>Aktion:</strong> Gib 1 %CHARGE% aus, um eine %CLOAK%-Aktion durchzuführen.%LINEBREAK%Zu Beginn der Planungsphase wirf 1 Angriffswürfel. Bei einem %FOCUS%-Ergebnis, enttarne dich oder lege deinen Tarnungsmarker ab."""
        "Clone Commander Cody":
           display_name: """Klon-Kommandant Cody"""
           text: """<i>Nur für Galaktische Republik</i>%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, der verfehlt hat, falls 1 oder mehrere %HIT%/%CRIT%-Ergebnisse neutralisiert worden sind, erhält der Verteidiger 1 Anstrengungsmarker."""
        "Cluster Missiles":
           display_name: """Clusterraketen"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE% aus. Nach diesem Angriff darfst du diesen Angriff als Bonusangriff gegen ein anderes Ziel in Reichweite 0-1 des Verteidigers durchführen, wobei du die %LOCK%-Voraussetzung ignorierst."""
        "Collision Detector":
           display_name: """Kollisionssensor"""
           text: """Solange du Schub gibst oder eine Fassrolle fliegst, kannst du dich durch Hindernisse hindurch­bewegen und sie überschneiden.%LINEBREAK%Nachdem du dich durch ein Hindernis hindurchbewegt oder es überschnitten hast, darfst du 1&nbsp;%CHARGE% ausgeben, um seine Effekte bis zum Ende der Runde zu ignorieren."""
        "Composure":
           display_name: """Gelassenheit"""
           text: """<i>Benötigt <r>%FOCUS%</r> oder %FOCUS%</i>%LINEBREAK%Nachdem eine deiner Aktionen scheitert, falls du keine grünen Marker hast, darfst du eine %FOCUS%-Aktion durchführen."""
        "Concussion Missiles":
           display_name: """Erschütterungsraketen"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE%aus. Nachdem dieser Angriff getroffen hat, legt jedes Schiff in Reichweite 0-1 zum Verteidiger 1 seiner Schadenskarten offen."""
        "Conner Nets":
           display_name: """Connernetz"""
           text: """<strong>Mine</strong>%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone ein Connernetz abzuwerfen.%LINEBREAK%Die %CHARGE% dieser Karte kann nicht wiederhergestellt werden."""
        "Contraband Cybernetics":
           display_name: """Illegale Kybernetik"""
           text: """Bevor du aktiviert wirst, darfst du 1 %CHARGE% ausgeben. Falls du das tust, kannst du bis zum Ende der Runde Aktionen durchführen und rote Manöver ausführen, auch solange du gestresst bist."""
        "Count Dooku":
           display_name: """Count Dooku"""
           text: """<i>Nur für Separatistenallianz</i>%LINEBREAK%Bevor ein Schiff in Reichweite 0-2 Angriffs- oder Verteidigungswürfel wirft, falls alle deine %FORCE% aktiv sind, darfst du 1 %FORCE% ausgeben und ein Ergebnis benennen. Falls der Wurf das benannte Ergebnis nicht enthält, muss das Schiff 1 Würfel auf jenes Ergebnis ändern."""
        "Crack Shot":
           display_name: """Meisterhafter Schuss"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, vor dem Schritt „Ergebnisse neutralisieren“, darfst du 1 %CHARGE% ausgeben, um 1 %EVADE%-Ergebnis zu negieren."""
        "DRK-1 Probe Droids":
           display_name: """DRK-1-Sondendroiden"""
           text: """<i>Nur für Separatistenallianz</i>%LINEBREAK%Während der Endphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung einer Schablone mit Geschwindigkeit 3 1 DRK-1-Sondendroiden abzuwerfen oder zu starten.%LINEBREAK%Die %CHARGE% dieser Karte können nicht wiederhergestellt werden."""
        "Daredevil":
           display_name: """Draufgänger"""
           text: """<i>Benötigt %BOOST%</i>%LINEBREAK%<i>Nur für kleines Schiff</i>%LINEBREAK%Solange du eine weiße %BOOST%-Aktion durchführst, darfst du sie behandeln, als wäre sie rot, um stattdessen die [1 %TURNLEFT%]- oder [1 %TURNRIGHT%]-Schablone zu verwenden."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Zu Beginn der Kampfphase darfst du 1 Schiff in deinem Feuerwinkel in Reichweite 0-2 wählen und 1 %FORCE% ausgeben. Falls du das tust, erleidet jenes Schiff 1 %HIT%-Schaden, es sei denn, es entscheidet sich dafür, 1 grünen Marker zu"""
        "Deadman's Switch":
           display_name: """Totmannschalter"""
           text: """Nachdem du zerstört worden bist, erleidet jedes andere Schiff in Reichweite 0-1 1 %HIT%-Schaden."""
        "Death Troopers":
           display_name: """Todestruppen"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Während der Aktivierungsphase können feindliche Schiffe in Reichweite 0-1 keine Stressmarker entfernen."""
        "Debris Gambit":
           display_name: """Trümmertanz"""
           text: """<i>Fügt <r>%EVADE%</r> hinzu</i>%LINEBREAK%<i>Nur für kleines Schiff oder mittleres Schiff</i>%LINEBREAK%Solange du eine rote %EVADE%-Aktion durchführst, falls ein Hindernis in Reichweite 0-1 ist, behandle die Aktion stattdessen, als wäre sie weiß."""
        "Dedicated":
           display_name: """Pflichtbewusst"""
           text: """<i>Nur für Galaktische Republik</i>%LINEBREAK%Solange ein anderes befreundetes Schiff in deinem %LEFTARC% oder %RIGHTARC% in Reichweite 0-2 verteidigt, falls es limitiert ist oder die Aufwertung <strong>Pflichtbewusst</strong> hat und du nicht angestrengt bist, darfst du 1 Anstrengungsmarker erhalten. Falls du das tust, wirft der Verteidiger 1 seiner Leerseiten-Ergebnisse neu."""
        "Delayed Fuses":
           display_name: """Zeitverzögerter Zünder"""
           text: """Nachdem du eine Bombe oder Mine abgeworfen, gestartet oder platziert hast, darfst du 1 Zeitzünder auf jenem Gerät platzieren."""
        "Delta-7B":
           display_name: """Delta-7B"""
           text: """<i class = flavor_text>Der Delta-7B wurde als schwerere Variante des Abfangjägers der Aethersprite-Klasse konzipiert und unterscheidet sich optisch nur durch seinen verschobenen Astromech-Anschluss. Viele Jedi-Generäle bevorzugen ihn aufgrund seiner verbesserten Feuerkraft und Stabilität.</i>"""
        "Dengar":
           display_name: """Dengar"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du verteidigt hast, falls der Angreifer in deinem Feuerwinkel ist, darfst du 1 %CHARGE% ausgeben. Falls du das tust, wirf 1 Angriffswürfel, es sei denn, der Angreifer entscheidet sich dafür, 1 grünen Marker zu entfernen. Bei einem %HIT%- oder %CRIT%-Ergebnis erleidet der Angreifer 1 %HIT%-Schaden."""
        "Discord Missiles":
           display_name: """Diskordanzraketen"""
           text: """<i>Nur für Separatistenallianz</i>%LINEBREAK%Zu Beginn der Kampfphase darfst du 1&nbsp;Berechnungsmarker und 1&nbsp;%CHARGE% ausgeben, um unter Verwendung der [3&nbsp;%BANKLEFT%]-, [3&nbsp;%STRAIGHT%] oder [3&nbsp;%BANKRIGHT%]-Schablone 1&nbsp;Buzz- Droidenschwarm zu starten.%LINEBREAK%Die %CHARGE% dieser Karte kann nicht wiederhergestellt werden."""
        "Diamond-Boron Missiles":
           display_name: """Diamant-Boron-Raketen"""
           text: """<strong>Angriff (%LOCK%):</strong> Gib 1&nbsp;%CHARGE% aus. Nachdem dieser Angriff getroffen hat, darfst du&nbsp;%CHARGE% ausgeben. Falls du das tust, wirft jedes Schiff in Reichweite&nbsp;0-1 des Verteidigers, dessen Wendigkeit gleich oder kleiner als die des Verteidigers ist, 1&nbsp;Angriffswürfel und erleidet &nbsp;%HIT%/%CRIT%-Schaden für jedes passende Ergebnis."""
        "Director Krennic":
           display_name: """Direktor Krennic"""
           text: """<i>Fügt %LOCK% hinzu</i>%LINEBREAK%<i>Nur für Imperium</i>%LINEBREAK%<strong>Aufbau:</strong> Bevor die Streitkräfte platziert werden, ordne den Zustand <strong>Optimierter Prototyp</strong> einem anderen befreundeten Schiff zu."""
        "Dorsal Turret":
           display_name: """Dorsaler Geschützturm"""
           text: """<i>Fügt %ROTATEARC% hinzu</i>%LINEBREAK%<strong>Angriff</strong>"""
        "Electro-Proton Bomb":
           display_name: """Elektro-Protonen-Bombe"""
           text: """<i>Benötigt %RELOAD% oder <r>%RELOAD%</r></i>%LINEBREAK%<strong>Bombe</strong>%LINEBREAK%Während der Systemphase darfst du 1&nbsp;%CHARGE% ausgeben, um unter Verwendung der [1&nbsp;%STRAIGHT%] -Schablone eine Elektro-Protonen-Bombe abzuwerfen. Dann platziere 1&nbsp;Zeitzünder auf jenem Gerät. %LINEBREAK%Die %CHARGE% dieser Karte kann nicht wiederhergestellt werden."""
        "Electronic Baffle":
           display_name: """Elektronischer Dämpfer"""
           text: """Während der Endphase darfst du 1 %HIT%-Schaden erleiden, um 1 roten Marker zu entfernen."""
        "Elusive":
           display_name: """Schwer zu treffen"""
           text: """<i>Nur für kleines Schiff oder mittleres Schiff</i>%LINEBREAK%Solange du verteidigst, darfst du 1 %CHARGE% ausgeben, um 1 Verteidigungswürfel neu zu werfen.%LINEBREAK%Nachdem du ein rotes Manöver vollständig ausgeführt hast, stelle 1 %CHARGE% wieder her."""
        "Emperor Palpatine":
           display_name: """Imperator Palpatine"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Solange ein anderes befreundetes Schiff verteidigt oder einen Angriff durchführt, darfst du 1 %FORCE% ausgeben, um 1 seiner Würfel so zu modifizieren, als hätte jenes Schiff 1 %FORCE% ausgegeben."""
        "Energy-Shell Charges":
           display_name: """Energiegeschosse"""
           text: """<i>Benötigt %CALCULATE% oder <r>%CALCULATE%</r></i>%LINEBREAK%<i>Nur für Separatistenallianz</i>%LINEBREAK%<strong>Angriff (%CALCULATE%):</strong> Gib 1 %CHARGE% aus. Solange du diesen Angriff durchführst, darfst du 1 Berechnungsmarker ausgegeben, um 1 %FOCUS%-Ergebnis in ein %CRIT%-Ergebnis zu ändern.%LINEBREAK%<strong>Aktion</strong>: Lade diese Karte nach."""
        "Engine Upgrade":
           display_name: """Verbessertes Triebwerk"""
           text: """<i>Fügt %BOOST% hinzu</i>%LINEBREAK%<i>Benötigt <r>%BOOST%</r></i>%LINEBREAK%<i class = flavor_text>Große Armeen wie das Militär des Galaktischen Imperiums haben meist standardisierte Triebwerke. Freischaffende Piloten und kleinere Organisationen ersetzen oft Energiekopplungen, bauen zusätzliche Düsen ein oder nutzen Hochleistungskraftstoffe, um noch mehr aus ihren Triebwerken herauszuholen.</i>"""
        "Ensnare":
           display_name: """Einfangen"""
           text: """Am Ende der Aktivierungsphase, falls du gefangen bist, darfst du 1&nbsp;Schiff in deinem %SINGLETURRETARC%&nbsp;-Winkel in Reichweite&nbsp;0-1 wählen. Transferiere 1&nbsp;Fangstrahlmarker auf es."""
        "Expert Handling":
           display_name: """Flugkunst"""
           text: """<i>Fügt %BARRELROLL% hinzu</i>%LINEBREAK%<i>Benötigt <r>%BARRELROLL%</r></i>%LINEBREAK%<i class = flavor_text>Auch schwere Jäger können in eine Fassrolle gezwungen werden, wobei es einen erfahrenen Piloten braucht, um die Maschine nicht übermäßig zu belasten und dem Feind kein leichtes Ziel zu bieten.</i>"""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Nachdem du einen Primärangriff durchgeführt hast, darfst du 1 %FORCE% ausgeben, um einen Bonus-%SINGLETURRETARC%-Angriff aus einem %SINGLETURRETARC%, aus dem du in dieser Runde noch nicht angegriffen hast, durchzuführen. Falls du das tust und gestresst bist, darfst du 1 Angriffswürfel neu werfen."""
        "Fanatical":
           display_name: """Fanatisch"""
           text: """<i>Nur für Erste Ordnung</i>%LINEBREAK%Solange du einen Primärangriff durchführst, falls du keine Schilde hast, darfst du 1 %FOCUS%-Ergebnis in ein %HIT%-Ergebnis ändern."""
        "Fearless":
           display_name: """Furchtlos"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen %FRONTARC%-Primärangriff durchführst, falls die Angriffs­reichweite 1 ist und du im %FRONTARC% des Verteidigers bist, darfst du 1 deiner Ergebnisse in ein %HIT%-Ergebnis ändern."""
        "Feedback Array":
           display_name: """Rückkopplungsfeld"""
           text: """Bevor du kämpfst, darfst du 1 Ionenmarker und 1 Entwaffnet-Marker erhalten. Falls du das tust, erleidet jedes Schiff in Reichweite 0 1 %HIT%-Schaden."""
        "Ferrosphere Paint":
           display_name: """Ferrosphärenfarbe"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Nachdem ein feindliches Schiff dich als Ziel erfasst hat, falls du nicht im %BULLSEYEARC% jenes Schiffes bist, erhält jenes Schiff 1 Stressmarker."""
        "Fifth Brother":
           display_name: """Fünfter Bruder"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Solange du einen Angriff durchführst, darfst du 1 %FORCE% ausgeben, um 1 deiner %FOCUS%-Ergebnisse in ein %CRIT%-Ergebnis zu ändern."""
        "Finn":
           display_name: """Finn"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Solange du verteidigst oder einen Primärangriff durchführst, falls das feindliche Schiff in deinem %FRONTARC% ist, darfst du 1 Leerseiten-Ergebnis zu deinen Würfelergebnissen hinzufügen (dieser Würfel kann neu geworfen oder anderweitig modifiziert werden)."""
        "Fire-Control System":
           display_name: """Feuerkontrollsystem"""
           text: """Solange du einen Angriff durchführst, falls du den Verteidiger als Ziel erfasst hast, darfst du 1 Angriffswürfel neu werfen. Falls du das tust, kannst du während dieses Angriffs deine Zielerfassung nicht ausgeben."""
        "Foresight":
           display_name: """Vorausahnung"""
           text: """Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, darfst du 1&nbsp;%FORCE% ausgeben, um diesen Angriff als Bonusangriff gegen es durchzuführen.%LINEBREAK%<strong>Angriff:</strong> Du darfst 1&nbsp;%FOCUS% -Ergebnis in ein&nbsp;%HIT%&nbsp;-Ergebnis ändern; anderweitig können deine Würfel nicht modifiziert werden."""
        "Freelance Slicer":
           display_name: """Freischaffender Hacker"""
           text: """Solange du verteidigst, bevor die Angriffswürfel geworfen werden, darfstdu eine Zielerfassung, die du auf dem Angreifer hast, ausgeben, um 1 Angriffswürfel zu werfen. Falls du das tust, erhält der Angreifer 1 Störsignalmarker. Dann, bei einem %HIT%- oder %CRIT%-Ergebnis, erhältst du 1 Störsignalmarker."""
        "GA-97":
           display_name: """GA-97"""
           text: """<i>Fügt %CALCULATE% hinzu</i>%LINEBREAK%<i>Nur für Widerstand</i>%LINEBREAK%<strong>Aufbau:</strong> Bevor die Streitkräfte platziert werden, darfst du 3-5&nbsp;%CHARGE% ausgeben. Falls du das tust, wähle ein anderes befreundetes Schiff und ordne ihm den Zustand <strong>Das ist der Widerstand</strong>zu."""
        'GNK "Gonk" Droid':
           display_name: """GNK-„Gonk“-Droide"""
           text: """<strong>Aufbau:</strong> Verliere 1 %CHARGE%.%LINEBREAK%<strong>Aktion:</strong> Stelle 1 %CHARGE% wieder her.%LINEBREAK%<strong>Aktion:</strong> Gib 1 %CHARGE% aus, um 1 Schild wiederherzustellen."""
        "General Grievous":
           display_name: """General Grievous"""
           text: """<i>Nur für Separatistenallianz</i>%LINEBREAK%Solange du verteidigst, falls nach dem Schritt „Ergebnisse neutralisieren“ 2 oder mehr %HIT%/%CRIT%-Ergebnisse vorhanden sind, darfst du 1 %CHARGE% ausgeben, um 1 %HIT%- oder %CRIT% -Ergebnis zu negieren. %LINEBREAK%Nachdem ein befreundetes Schiff zerstört worden ist, stelle 1 %CHARGE% wieder her."""
        "General Hux":
           display_name: """General Hux"""
           text: """<i>Benötigt %COORDINATE% oder <r>%COORDINATE%</r></i>%LINEBREAK%<i>Nur für Erste Ordnung</i>%LINEBREAK%Solange du eine weiße %COORDINATE%-Aktion durchführst, darfst du sie behandeln, als wäre sie rot. Falls du das tust, darfst du bis zu 2 zusätzliche Schiffe desselben Schiffstyps koordinieren und jedes von dir koordinierte Schiff muss dieselbe Aktion durchführen, wobei es jene Aktion behandelt, als wäre sie rot."""
        "Grand Inquisitor":
           display_name: """Großinquisitor"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Nachdem ein feindliches Schiff in Reichweite 0-2 sein Rad aufgedeckt hat, darfst du 1 %FORCE% ausgeben, um 1 weiße Aktion aus deiner Aktionsleiste durchzuführen, wobei du jene Aktion behandelst, als wäre sie rot."""
        "Grand Moff Tarkin":
           display_name: """Großmoff Tarkin"""
           text: """<i>Benötigt %LOCK% oder <r>%LOCK%</r></i>%LINEBREAK%<i>Nur für Imperium</i>%LINEBREAK%Während der Systemphase darfst du 2 %CHARGE% ausgeben. Falls du das tust, darf jedes befreundete Schiff ein Schiff, das du als Ziel erfasst hast, als Ziel erfassen."""
        "Grappling Struts":
           display_name: """Laufkrallen"""
           text: """<strong>Geschlossen:</strong> <strong>Aufbau:</strong> Rüste diese Seite offen aus.%LINEBREAK%Solange du ein Manöver ausführst, falls du einen Asteroiden oder eine Trümmerwolke überschneidest und 1 oder weniger andere befreundete Schiffe in Reichweite 0 jenes Hindernisses sind, darfst du diese Karte umdrehen.%LINEBREAK%<strong>Geschlossen: </strong>Du ignorierst Hindernisse in Reichweite 0 und solange du dich durch sie hindurchbewegst. Nachdem du dein Rad aufgedeckt hast, falls du ein anderes Manöver als [2 %STRAIGHT%] aufgedeckt hast und in Reichweite 0 eines Asteroiden oder einer Trümmerwolke bist, überspringe deinen Schritt „Manöver ausführen“ und entferne 1 Stressmarker; falls du ein rechtes oder linkes Manöver aufgedeckt hast, drehe dein Schiff um 90° in jene Richtung. Nachdem du ein Manöver ausgeführt hast, drehe diese Karte um."""
        "Gravitic Deflection":
           display_name: """Gravitationsdeflektor"""
           text: """Solange du verteidigst, darfst du für jedes gefangene Schiff im Angriffswinkel 1&nbsp;Verteidigungswürfel neu werfen."""
        "Greedo":
           display_name: """Greedo"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen Angriff durchführst, darfst du 1 %CHARGE% ausgeben, um 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis zu ändern.%LINEBREAK%Solange du verteidigst, falls deine %CHARGE% aktiv ist, darf der Angreifer 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Während der Kampfphase, bei Initiative 7, darfst du einen %SINGLETURRETARC%-Angriff durchführen. Du kannst in dieser Runde nicht noch einmal aus jenem %SINGLETURRETARC% angreifen."""
        "Han Solo (Scum)":
           display_name: """Han Solo (Scum)"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Bevor du kämpfst, darfst du eine rote %FOCUS%-Aktion durchführen."""
        "Han Solo (Resistance)":
           display_name: """Han Solo (Resistance)"""
           text: """<i>Fügt <r>%EVADE%</r> hinzu</i>%LINEBREAK%<i>Nur für Widerstand</i>%LINEBREAK%Nachdem du eine %EVADE%-Aktion durchgeführt hast, erhalte zusätzliche Ausweichmarker in Höhe der Anzahl der feindlichen Schiffe in Reichweite 0-1."""
        "Hate":
           display_name: """Hass"""
           text: """Nachdem du 1 oder mehr Schaden erlitten hast, stelle ebenso viele %FORCE% wieder her."""
        "Heavy Laser Cannon":
           display_name: """Schwere Laserkanone"""
           text: """<strong>Angriff:</strong> Nach dem Schritt „Angriffswürfel modifizieren“, ändere alle %CRIT%-Ergebnisse in %HIT%-Ergebnisse."""
        "Heightened Perception":
           display_name: """Geschärfte Sinne"""
           text: """Zu Beginn der Kampfphase darfst du 1 %FORCE% ausgeben. Falls du das tust, kämpfe in dieser Phase bei Initiative 7 anstatt bei deinem normalen Initiativwert."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Du kannst rote Manöver ausführen, auch solange du gestresst bist. Nachdem du ein rotes Manöver vollständig ausgeführt hast, falls du 3 oder mehr Stressmarker hast, entferne 1 Stressmarker und erleide 1 %HIT%-Schaden."""
        "Heroic":
           display_name: """Heroisch"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Solange du verteidigst oder einen Angriff durchführst, falls du nur Leerseiten-Ergebnisse hast und 2 oder mehr Ergebnisse hast, darfst du beliebig viele deiner Würfel neu werfen."""
        "Homing Missiles":
           display_name: """Lenkraketen"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE% aus. Nachdem du den Verteidiger deklariert hast, darf der Verteidiger wählen, 1 %HIT%-Schaden zu erleiden. Falls er das tut, überspringe die Schritte „Angriffswürfel“ und „Verteidigungswürfel“, und der Angriff wird behandelt, als hätte er getroffen."""
        "Hotshot Gunner":
           display_name: """Erstklassiger Bordschütze"""
           text: """Solange du einen %SINGLETURRETARC%-Angriff durchführst, nach dem Schritt „Verteidigungswürfel modifizieren“, entfernt der Verteidiger 1 Fokus- oder 1 Berechnungsmarker."""
        "Hull Upgrade":
           display_name: """Verstärkte Hülle"""
           text: """<i class = flavor_text>Auch wer sich keinen verbesserten Schildgenerator leisten kann, muss nicht auf erhöhten Schutz verzichten, sondern kann sich mit zusätzlichen Panzerplatten an der Schiffshülle behelfen.</i>"""
        "Hyperspace Tracking Data":
           display_name: """Hyperraum-Ortungsdaten"""
           text: """<i>Nur für großes Schiff</i>%LINEBREAK%<i>Nur für Erste Ordnung</i>%LINEBREAK%<strong>Aufbau:</strong> Bevor die Streitkräfte platziert werden, darfst du eine Zahl zwischen 0 und 6 wählen. Behandle deine Initiative, als hätte sie den Wert, den du während des Aufbaus gewählt hast.%LINEBREAK%Ordne nach dem Aufbau jedem befreundeten Schiff in Reichweite 0-2 1 Fokus- oder Ausweichmarker zu."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """<i>Fügt %CALCULATE% hinzu</i>%LINEBREAK%<i>Nur für Abschaum</i>%LINEBREAK%Du hast die Pilotenfähigkeit jedes anderen befreundeten Schiffes mit der Aufwertung <strong>IG-2000</strong>.%LINEBREAK%Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "ISB Slicer":
           display_name: """ISB-Hacker"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Während der Endphase können feindliche Schiffe in Reichweite 1-2 keine Störsignalmarker entfernen."""
        "Impervium Plating":
           display_name: """Impervium-Panzerung"""
           text: """Bevor dir eine offene <strong>Schiff</strong>-Schadenskarte zugeteilt werden würde, darfst du 1 %CHARGE% ausgeben, um sie stattdessen abzulegen."""
        "Inertial Dampeners":
           display_name: """Trägheitsdämpfer"""
           text: """Bevor du ein Manöver ausführen würdest, darfst du 1 Schild ausgeben. Falls du das tust, führe anstatt des Manövers, das du aufgedeckt hast, ein weißes [0 %STOP%]-Manöver aus, dann erhalte 1 Stressmarker."""
        "Informant":
           display_name: """Informant"""
           text: """<strong>Aufbau:</strong> Nachdem die Streitkräfte platziert worden sind, wähle 1 feindliches Schiff und ordne ihm den Zustand Abhörgerät zu."""
        "Instinctive Aim":
           display_name: """Instinktives Zielen"""
           text: """Solange du einen Spezialangriff durchführst, darfst du 1&nbsp;%FORCE% ausgeben, um die %FOCUS%- oder %LOCK%-Voraussetzung zu ignorieren."""
        "Integrated S-Foils":
           display_name: """Integrierte S-Flügel"""
           text: """<strong>Geöffnet: </strong>Bevor du aktiviert wirst, darfst du diese Karte umdrehen.%LINEBREAK%<strong>Geschlossen: </strong><i>Fügt %BARRELROLL% ,  %FOCUS%&nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i>&nbsp;<r>%BARRELROLL%</r> hinzu</i>%LINEBREAK%Solange du einen Primärangriff durchführst, falls der Verteidiger nicht in deinem %BULLSEYEARC% ist, wirf 1&nbsp;Angriffswürfel weniger.%LINEBREAK%Bevor du aktiviert wirst, darfst du diese Karte umdrehen."""
        "Intimidation":
           display_name: """Furchteinflößend"""
           text: """Solange ein feindliches Schiff in Reichweite 0 verteidigt, wirft es 1 Verteidigungswürfel weniger."""
        "Ion Cannon":
           display_name: """Ionenkanone"""
           text: """<strong>Angriff:</strong> Falls dieser Angriff trifft, gib 1 %HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1 %HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Ion Cannon Turret":
           display_name: """Ionengeschütz"""
           text: """<i>Fügt %ROTATEARC% hinzu</i>%LINEBREAK%<strong>Angriff:</strong> Falls dieser Angriff trifft, gib 1 %HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1 %HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Ion Missiles":
           display_name: """Ionenraketen"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE% aus. Falls dieser Angriff trifft, gib 1 %HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1 %HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Ion Torpedoes":
           display_name: """Ionentorpedos"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE% aus. Falls dieser Angriff trifft, gib 1 %HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1 %HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Jabba the Hutt":
           display_name: """Jabba der Hutt"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Während der Endphase darfst du 1 befreundetes Schiff in Reichweite 0-2 wählen und 1 %CHARGE% ausgeben. Falls du das tust, stellt jenes Schiff 1 %CHARGE% von 1 seiner ausgerüsteten %ILLICIT%-Aufwertungen wieder her."""
        "Jamming Beam":
           display_name: """Störstrahl"""
           text: """<strong>Angriff:</strong> Falls dieser Angriff trifft, fügen alle %HIT%/%CRIT%-Ergebnisse Störsignalmarker anstatt Schaden zu."""
        "Juke":
           display_name: """Finte"""
           text: """<i>Nur für kleines Schiff oder mittleres Schiff</i>%LINEBREAK%Solange du einen Angriff durchführst, falls du ausweichst, darfst du 1 der %EVADE%-Ergebnisse des Verteidigers in ein %FOCUS%-Ergebnis ändern."""
        "Jyn Erso":
           display_name: """Jyn Erso"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Falls ein befreundetes Schiff in Reichweite 0-3 einen Fokusmarker erhalten würde, darf es stattdessen 1 Ausweichmarker erhalten."""
        "K2-B4":
           display_name: """K2-B4"""
           text: """<i>Nur für Separatistenallianz</i>%LINEBREAK%Solange ein befreundetes Schiff in Reichweite 0-3 verteidigt, darf es 1 Berechnungsmarker ausgeben. Falls es das tut, füge 1 %EVADE%-Ergebnis hinzu, es sei denn, der Angreifer entscheidet sich dafür, 1 Anstrengungsmarker zu erhalten."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Nachdem ein befreundetes Schiff in Reichweite 0-2 ein weißes Manöver vollständig ausgeführt hat, darfst du 1 %FORCE% ausgeben, um 1 Stressmarker von jenem Schiff zu entfernen."""
        "Kaydel Connix":
           display_name: """Kaydel Connix"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Nachdem du dein Rad aufgedeckt hast, darfst du dein Rad auf ein Basismanöver der nächsthöheren Geschwindigkeit einstellen. Solange du jenes Manöver ausführst, erhöhe seine Schwierigkeit."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Zu Beginn der Endphase darfst du 1 feindliches Schiff in Reichweite 0-2 in deinem Feuerwinkel wählen. Falls du das tust, entfernt jenes Schiff seine Fangstrahlmarker nicht."""
        "Korr Sella":
           display_name: """Korr Sella"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Nachdem du ein blaues Manöver vollständig ausgeführt hast, entferne alle deine Stressmarker."""
        "Kraken":
           display_name: """Kraken"""
           text: """<i>Fügt %CALCULATE% hinzu</i>%LINEBREAK%<i>Nur für Separatistenallianz</i>%LINEBREAK%Während der Endphase darfst du bis zu 3 befreundete Schiffe in Reichweite 0-3 wählen. Falls du das tust, entfernt jedes dieser Schiffe 1 Berechnungsmarker nicht."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """<i>Nur für Erste Ordnung</i>%LINEBREAK%<strong>Aktion:</strong> Wähle 1 feindliches Schiff in Reichweite 1-3. Falls du das tust, gib 1 %FORCE% aus, um jenem Schiff den Zustand <strong>Ich zeige dir die dunkle Seite</strong> zuzuordnen."""
        "L3-37":
           display_name: """L3-37"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%<strong>Aufbau:</strong> Rüste diese Seite offen aus.%LINEBREAK%Solange du verteidigst, darfst du diese Karte umdrehen. Fall du das tust, muss der Angreifer alle Angriffswürfel neu werfen. %LINEBREAK% Programmierung von L3-37: Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%)."""
        "Landing Struts":
           display_name: """Landungskrallen"""
           text: """<strong>Geschlossen: </strong><strong>Aufbau:</strong> Rüste diese Seite offen aus.%LINEBREAK%Solange du ein Manöver ausführst, falls du einen Asteroiden oder eine Trümmerwolke überschneidest und 1 oder weniger andere befreundete Schiffe in Reichweite&nbsp;0 jenes Hindernisses sind, darfst du diese Karte umdrehen.%LINEBREAK%<strong>Offen:</strong>Du ignorierst Hindernisse in Reichweite&nbsp;0 und solange du dich durch sie hindurchbewegst. Nachdem du dein Rad aufgedeckt hast, falls du ein anderes Manöver als [2&nbsp;%STRAIGHT%] aufgedeckt hast und in Reichweite&nbsp;0 eines Asteroiden oder einer Trümmerwolke bist, überspringe deinen Schritt „Manöver ausführen“ und entferne 1 Stressmarker; falls du ein rechtes oder linkes Manöver aufgedeckt hast, drehe dein Schiff um 90° in jene Richtung. Nachdem du ein Manöver ausgeführt hast, drehe diese Karte um."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%<strong>Aktion:</strong> Wirf 2 Verteidigungswürfel. Erhalte 1 Fokusmarker für jedes %FOCUS%-Ergebnis. Erhalte 1 Ausweichmarker für jedes %EVADE%-Ergebnis. Falls beide Ergebnisse Leerseiten sind, wählt der Gegenspieler Fokus- oder Ausweichmarker. Du erhältst 1 Marker"""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian (Scum)"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du die Würfel geworfen hast, darfst du 1 grünen Marker ausgeben um bis zu 2 deiner Ergebnisse neu zu werfen."""
        "Lando's Millennium Falcon":
           display_name: """Landos Millennium Falke"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%1 Rettungskapsel darf bei dir andocken.%LINEBREAK%Solange ein Rettungskapsel bei dir angedockt ist, darfst du seine Schilde ausgeben, als wären sie auf deiner Schiffskarte.%LINEBREAK%Solange du einen Primärangriff gegen ein gestresstes Schiff durchführst, wirfst du 1 zusätzlichen Angriffswürfel."""
        "Larma D'Acy":
           display_name: """Larma D’Acy"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Solange du 2 oder weniger Stressmarker hast, kannst du&nbsp;%REINFORCE%-, %COORDINATE%- und&nbsp;<jam>-Aktionen durchführen, auch solange du gestresst bist.%LINEBREAK%Solange du eine weiße&nbsp;%REINFORCE%-, %COORDINATE%- oder <jam>-Akton durchführst, falls du gestresst bist, behandle jene Aktion, als wäre sie rot."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du verteidigst, falls der Angreifer gestresst ist, darfst du 1 Stressmarker vom Angreifer entfernen, um 1 deiner Leerseiten/%FOCUS%-Ergebnisse in ein %EVADE%-Ergebnis zu ändern."""
        "Leia Organa":
           display_name: """Leia Organa"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Zu Beginn der Aktivierungsphase darfst du 3 %CHARGE% ausgeben. Während dieser Phase verringert jedes befreundete Schiff die Schwierigkeit seiner roten Manöver."""
        "Leia Organa (Resistance)":
           display_name: """Leia Organa"""
           text: """<i>Fügt %COORDINATE% hinzu</i>%LINEBREAK%<i>Nur für Widerstand</i>%LINEBREAK%Nachdem ein befreundetes Schiff sein Rad aufgedeckt hat, darfst du 1&nbsp;%FORCE%ausgeben. Falls du das tust, verringert jenes Schiff die Schwierigkeit jenes Manövers."""
        "Lone Wolf":
           display_name: """Einsamer Wolf"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls keine anderen befreundeten Schiffe in Reichweite 0-2 sind, darfst du 1 %CHARGE% ausgeben, um 1 deiner Würfel neu zu werfen."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Zu Beginn der Kampfphase darfst du 1 %FORCE% ausgeben, um deinen %SINGLETURRETARC%-Anzeiger zu rotieren."""
        "M9-G8":
           display_name: """M9-G8"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Solange ein Schiff, das du als Ziel erfasst hast, einen Angriff durchführt, darfst du 1 Angriffswürfel wählen. Falls du das tust, wirft der Angreifer jenen Würfel neu."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Nachdem du verteidigt hast, falls der Angriff getroffen hat, darfst du den Angreifer als Ziel erfassen."""
        "Marksmanship":
           display_name: """Treffsicherheit"""
           text: """Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern."""
        "Maul":
           display_name: """Maul"""
           text: """<i>Nur für Abschaum oder Staffel, die Ezra Bridger enthält oder Staffel, die Ezra Bridger (Sheathipede) enthält oder Staffel, die Ezra Bridger (TIE Fighter) enthält</i>%LINEBREAK%Nachdem du Schaden erlitten hast, darfst du 1 Stress­marker erhalten, um 1 %FORCE% wiederherzustellen.%LINEBREAK%Du kannst „Dunkle Seite“-Aufwertungen ausrüsten."""
        "Minister Tua":
           display_name: """Ministerin Tua"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Zu Beginn der Kampfphase, falls du beschädigt bist, darfst du eine rote %REINFORCE%-Aktion durchführen."""
        "Moff Jerjerrod":
           display_name: """Moff Jerjerrod"""
           text: """<i>Benötigt %COORDINATE% oder <r>%COORDINATE%</r></i>%LINEBREAK%<i>Nur für Imperium</i>%LINEBREAK%Während der Systemphase darfst du 2 %CHARGE% ausgeben. Falls du das tust, wähle die [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Schablone. Jedes befreundete Schiff darf unter Verwendung jener Schablone eine rote %BOOST%-Aktion durchführen."""
        "Munitions Failsafe":
           display_name: """Ausfallsichere Munition"""
           text: """Solange du einen %TORPEDO%- oder %MISSILE%-Angriff durchführst, nachdem du die Angriffswürfel geworfen hast, darfst du alle Würfelergebnisse negieren, um 1 %CHARGE% wiederherzustellen, die du als Kosten für den Angriff ausgegeben hast."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%)."""
        "Novice Technician":
           display_name: """Unerfahrener Techniker"""
           text: """Am Ende der Runde darfst du 1 Angriffswürfel werfen, um 1 offene Schadenskarte zu reparieren. Dann, bei einem %HIT%-Ergebnis, lege 1 Schadenskarte offen."""
        "Os-1 Arsenal Loadout":
           display_name: """Os-1-Waffenarsenal"""
           text: """Solange du genau 1 Entwaffnet-Marker hast, kannst du trotzdem %TORPEDO%- und %MISSILE%-Angriffe gegen Ziele durchführen, die du als Ziel erfasst hast. Falls du das tust, kannst du während des Angriffs deine Zielerfassung nicht ausgeben.%LINEBREAK%Füge %TORPEDO%- und %MISSILE%-Slots hinzu."""
        "Outmaneuver":
           display_name: """Ausmanövrieren"""
           text: """Solange du einen %FRONTARC%-Angriff durchführst, falls du nicht im Feuerwinkel des Verteidigers bist, wirft der Verteidiger 1 Verteidigungswürfel weniger."""
        "PZ-4CO":
           display_name: """PZ-4CO"""
           text: """<i>Fügt %CALCULATE% hinzu</i>%LINEBREAK%<i>Nur für Widerstand</i>%LINEBREAK%Am Ende der Aktivierungs­phase darfst du 1 befreun­detes Schiff in Reichweite&nbsp;1-2 wählen. Falls du das tust, transferiere 1&nbsp;Berechnungsmarker auf jenes Schiff. Falls dein aufgedecktes Manöver blau ist, darfst du stattdessen 1 Fokusmarker transferieren."""
        "Paige Tico":
           display_name: """Paige Tico"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Nachdem du einen Primärangriff durchgeführt hast, darfst du 1 Bombe abwerfen oder deinen %SINGLETURRETARC%-Anzeiger rotieren.%LINEBREAK%Nachdem du zerstört worden bist, darfst du 1 Bombe abwerfen."""
        "Passive Sensors":
           display_name: """Passive Sensoren"""
           text: """<strong>Aktion:</strong> Gib 1&nbsp;%CHARGE% aus. Du kannst diese Aktion nur in deinem Schritt „Aktionen durchführen“ durchführen.%LINEBREAK%Solange deine&nbsp;%CHARGE% inaktiv ist, kannst du nicht koordiniert werden. Bevor du kämpfst, falls deine %CHARGE% inaktiv ist, darfst du eine&nbsp;%CALCULATE% oder&nbsp;%LOCK%-Aktion durchführen."""
        "Pattern Analyzer":
           display_name: """Mustererkennung"""
           text: """Solange du ein rotes Manöver vollständig ausführst, vor dem Schritt „Schwierigkeit überprüfen“, darfst du 1 Aktion durchführen."""
        "Perceptive Copilot":
           display_name: """Aufmerksamer Co-Pilot"""
           text: """Nachdem du eine %FOCUS%-Aktion durchgeführt hast, erhalte 1 Fokusmarker."""
        "Petty Officer Thanisson":
           display_name: """Unteroffizier Thanisson"""
           text: """<i>Nur für Erste Ordnung</i>%LINEBREAK%Während der Aktivierungs- oder Kampfphase, nachdem ein feindliches Schiff in deinem %FRONTARC% in Reichweite 0-1 einen roten oder orangefarbenen Marker erhalten hat, falls du nicht gestresst bist, darfst du 1&nbsp;Stressmarker erhalten. Falls du das tust, erhält jenes Schiff 1 zusätzlichen Marker von der Art des soeben erhaltenen."""
        "Pivot Wing":
           display_name: """Schwenkflügel"""
           text: """<strong>Geschlossen:</strong> Solange du verteidigst, wirf 1&nbsp;Verteidigungswürfel weniger.%LINEBREAK%Nachdem du ein [0&nbsp;%STOP%]-Manöver ausgeführt hast, darfst du dein Schiff um 90° oder um 180° drehen.%LINEBREAK%Bevor du aktiviert wirst, darfst du diese Karte umdrehen.%LINEBREAK%<strong>Geöffnet:</strong> Bevor du aktiviert wirst, darfst du diese Karte umdrehen."""
        "Plasma Torpedoes":
           display_name: """Plasmatorpedos"""
           text: """<strong>Angriff (%LOCK%):</strong> Gib 1&nbsp;%CHARGE% aus. Während des Schrittes „Ergebnisse neutralisieren“ werden %CRIT%&nbsp;-Ergebnisse vor %HIT%&nbsp;-Ergebnissen negiert. Nachdem dieser Angriff getroffen hat, verliert der Verteidiger 1&nbsp;Schild."""
        "Precognitive Reflexes":
           display_name: """Hellseherische Reflexe"""
           text: """<i>Nur für kleines Schiff</i>%LINEBREAK%Nachdem du dein Rad aufgedeckt hast, darfst du 1&nbsp;%FORCE% ausgeben, um eine&nbsp;%BARRELROLL%&nbsp;oder&nbsp;%BOOST%&nbsp;-Aktion durchzuführen. Dann, falls du eine Aktion durchgeführt hast, die nicht in deiner Aktionsleiste ist, erhalte 1&nbsp;Anstrengungsmarker.%LINEBREAK%Falls du das tust, kannst du während deiner Aktivierung keine weitere Aktion durchführen."""
        "Predator":
           display_name: """Jagdinstinkt"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 Angriffswürfel neu werfen."""
        "Predictive Shot":
           display_name: """Vorausschauender Schuss"""
           text: """Nachdem du einen Angriff deklariert hast, falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 %FORCE% ausgeben. Falls du das tust, kann der Verteidiger während des Schrittes „Verteidigungswürfel werfen“ nicht mehr Verteidigungswürfel werfen als die Anzahl deiner %HIT%/%CRIT%-Ergebnisse."""
        "Primed Thrusters":
           display_name: """Verbesserte Schubdüsen"""
           text: """<i>Nur für kleines Schiff</i>%LINEBREAK%Solange du 2 oder weniger Stressmarker hast, kannst du %BARRELROLL%- und %BOOST%-Aktionen durchführen, auch solange du gestresst bist."""
        "Proton Bombs":
           display_name: """Protonenbomben"""
           text: """<strong>Bombe</strong>%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone eine Protonenbombe abzuwerfen."""
        "Proton Rockets":
           display_name: """Protonenraketen"""
           text: """<strong>Angriff (</strong>%FOCUS%<strong>):</strong> Gib 1 %CHARGE% aus."""
        "Proton Torpedoes":
           display_name: """Protonentorpedos"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE% aus. Ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Proximity Mines":
           display_name: """Annäherungsminen"""
           text: """<strong>Mine</strong>%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone eine Annäherungsmine abzuwerfen.%LINEBREAK%Die %CHARGE% dieser Karte können nicht wiederhergestellt werden."""
        "Qi'ra":
           display_name: """Qi’ra"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du dich bewegst und Angriffe durchführst, ignorierst du Hindernisse, die du als Ziel erfasst hast."""
        "R2 Astromech":
           display_name: """R2-Astromechdroide"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du 1 %CHARGE% ausgeben und 1 Entwaffnet-Marker erhalten, um 1 Schild wiederherzustellen."""
        "R2-A6":
           display_name: """R2-A6"""
           text: """<i>Nur für Galaktische Republik</i>%LINEBREAK%Nachdem du dein Rad aufgedeckt hast, darfst du dein Rad auf ein Manöver mit gleicher Flugrichtung und einer um 1 höheren oder niedrigeren Geschwindigkeit einstellen."""
        "R2-C4":
           display_name: """R2-C4"""
           text: """<i>Nur für Galaktische Republik</i>%LINEBREAK%Solange du einen Angriff durchführst, darfst du 1&nbsp;Ausweichmarker ausgeben, um 1&nbsp;%FOCUS% -Ergebnis in ein%HIT%&nbsp;-Ergebnis zu ändern."""
        "R2-D2 (Crew)":
           display_name: """R2-D2 (Crew)"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Während der Endphase, falls du beschädigt bist und keine Schilde hast, darfst du 1 Angriffswürfel werfen, um 1 Schild wiederherzustellen. Bei einem %HIT%-Ergebnis lege 1 deiner Schadenskarten offen."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Nachdem du dein Rad aufgedeckt hast, darfst du 1 %CHARGE% ausgeben und 1 Entwaffnet-Marker erhalten, um 1 Schild wiederherzustellen."""
        "R2-HA":
           display_name: """R2-HA"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Solange du verteidigst, darfst du deine Zielerfassung auf dem Angreifer ausgeben, um beliebig viele deiner Verteidigungswürfel neu zu werfen."""
        "R3 Astromech":
           display_name: """R3-Astromechdroide"""
           text: """Du kannst bis zu 2 Zielerfassungen aufrechterhalten. Jede Zielerfassung muss ein anderes Objekt als Ziel haben.%LINEBREAK%Nachdem du eine %LOCK%-Aktion durchgeführt hast, darfst du ein Ziel erfassen."""
        "R4 Astromech":
           display_name: """R4-Astromechdroide"""
           text: """<i>Nur für kleines Schiff</i>%LINEBREAK%Verringere die Schwierigkeit deiner Basismanöver mit Geschwindigkeit 1-2 (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%)."""
        "R4-P Astromech":
           display_name: """R4-P-Astromechdroide"""
           text: """<i>Nur für Galaktische Republik</i>%LINEBREAK%Bevor du ein Basismanöver ausführst, darfst du 1 %CHARGE% ausgeben. Falls du das tust, verringere die Schwierigkeit jenes Manövers, solange du es ausführst."""
        "R4-P17":
           display_name: """R4-P17"""
           text: """<i>Nur für Galaktische Republik</i>%LINEBREAK%Nachdem du ein rotes Manöver vollständig ausgeführt hast, darfst du 1 %CHARGE% ausgeben, um eine Aktion durchzuführen, auch solange du gestresst bist."""
        "R4-P44":
           display_name: """R4-P44"""
           text: """<i>Nur für Galaktische Republik</i>%LINEBREAK%Nachdem du ein rotes Manöver vollständig ausgeführt hast, falls ein feindliches Schiff in deinem %BULLSEYEARC% ist, erhalte 1 Berechnungsmarker."""
        "R5 Astromech":
           display_name: """R5-Astromechdroide"""
           text: """<strong>Aktion:</strong> Gib 1 %CHARGE% aus, um 1 verdeckte Schadenskarte zu reparieren.%LINEBREAK%<strong>Aktion:</strong> Repariere 1 offene <strong>Schiff</strong>-Schadenskarte."""
        "R5-D8":
           display_name: """R5-D8"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%<strong>Aktion:</strong> Gib 1 %CHARGE% aus, um 1 verdeckte Schadenskarte zu reparieren.%LINEBREAK%<strong>Aktion:</strong> Repariere 1 offene <strong>Schiff</strong>-Schadenskarte."""
        "R5-P8":
           display_name: """R5-P8"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen Angriff gegen einen Verteidiger in deinem %FRONTARC% durchführst, darfst du 1 %CHARGE% ausgeben, um 1 Angriffswürfel neu zu werfen. Falls das neugeworfene Ergebnis ein %CRIT% ist, erleide 1 %CRIT%-Schaden."""
        "R5-TK":
           display_name: """R5-TK"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Du kannst Angriffe gegen befreundete Schiffe durchführen."""
        "R5-X3":
           display_name: """R5-X3"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Bevor du aktiviert wirst oder kämpfst, darfst du 1 %CHARGE% ausgeben, um bis zum Ende der Phase Hindernisse zu ignorieren."""
        "Rey":
           display_name: """Rey"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Solange du verteidigst oder einen Angriff durchführst, falls das feindliche Schiff in deinem %SINGLETURRETARC% ist, darfst du 1 %FORCE% ausgeben, um 1 deiner Leerseiten-Ergebnisse in ein %EVADE%- oder %HIT%-Ergebnis zu ändern."""
        "Rey's Millennium Falcon":
           display_name: """Reys Millennium Falke"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Falls du 2 oder weniger Stressmarker hast, kannst du rote Segnor-Looping-Manöver [%SLOOPLEFT% oder %SLOOPRIGHT%] ausführen und %BOOST%- und %ROTATEARC%-Aktionen durchführen, auch solange du gestresst bist."""
        "Rigged Cargo Chute":
           display_name: """Manipulierte Frachtrampe"""
           text: """<i>Nur für großes Schiff oder mittleres Schiff</i>%LINEBREAK%<strong>Aktion:</strong> Gib 1 %CHARGE% aus. Wirf unter Verwendung der [1 %STRAIGHT%]-Schablone 1 freie Fracht ab."""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """<i>Nur für Widerstand</i>%LINEBREAK%Solange du verteidigst oder einen Angriff durchführst, darfst du 1 deiner Ergebnisse ausgeben, um das feindliche Schiff als Ziel zu erfassen."""
        "Ruthless":
           display_name: """Skrupellos"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Solange du einen Angriff durchführst, darfst du ein anderes befreundetes Schiff in Reichweite 0-1 zum Verteidiger wählen. Falls du das tust, erleidet jenes Schiff 1 %HIT%-Schaden und du darfst 1 deiner Würfelergebnisse in ein %HIT%-Ergebnis ändern."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%<strong>Aufbau:</strong> Platziere 1 Ionen-, 1 Störsignal-, 1 Stress- und 1 Fangstrahlmarker auf dieser Karte. %LINEBREAK%Nachdem ein Schiff den Effekt einer befreundeten Bombe erlitten hat, darfst du 1 Ionen-, Störsignal-, Stress- oder Fangstrahlmarker von dieser Karte entfernen. Falls du das tust, erhält jenes Schiff einen passenden Marker."""
        "Saturation Salvo":
           display_name: """Flächenangriff"""
           text: """<i>Benötigt %RELOAD% oder <r>%RELOAD%</r></i>%LINEBREAK%Solange du einen %TORPEDO%- oder %MISSILE%-Angriff durchführst, darfst du 1 %CHARGE% von jener Aufwertung ausgeben. Falls du das tust, wähle 2 Verteidigungswürfel. Der Verteidiger muss jene Würfel neu werfen."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Solange du einen Angriff durchführst, darfst du 1 %HIT%-Schaden erleiden, um alle deine %FOCUS%-Ergebnisse in %CRIT%-Ergebnisse zu ändern."""
        "Seasoned Navigator":
           display_name: """Erfahrener Navigator"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du dein Rad auf ein anderes nicht-rotes Manöver derselben Geschwindigkeit einstellen. Solange du jenes Manöver ausführst, erhöhe seine Schwierigkeit."""
        "Seismic Charges":
           display_name: """Seismische Bomben"""
           text: """<strong>Bombe</strong>%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone eine Seismische Bombe abzuwerfen."""
        "Selfless":
           display_name: """Selbstlos"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Solange ein anderes befreundetes Schiff in Reichweite 0-1 verteidigt, vor dem Schritt „Ergebnisse neutralisieren“, falls du im Angriffswinkel bist, darfst du 1 %CRIT%-Schaden erleiden, um 1 %CRIT%-Ergebnis zu negieren."""
        "Sense":
           display_name: """Gespür"""
           text: """Während der Systemphase darfst du 1 Schiff in Reichweite 0-1 wählen und sein Rad ansehen. Falls du 1 %FORCE% ausgibst, darfst du stattdessen ein Schiff in Reichweite 0-3 wählen."""
        "Servomotor S-Foils":
           display_name: """Servomotorische S-Flügel"""
           text: """<strong>Geschlossen:</strong><i>Fügt %FOCUS%-><r>%BOOST%</r> hinzu</i>%LINEBREAK%<i>Fügt %BOOST% hinzu</i>%LINEBREAK%Solange du einen Primärangriff durchführst, wirf 1&nbsp;Angriffswürfel weniger.%LINEBREAK%Bevor du aktiviert wirst, darfst du diese Karte umdrehen.%LINEBREAK%<strong>Geöffnet:</strong>Bevor du aktiviert wirst, darfst du diese Karte umdrehen."""
        "Seventh Fleet Gunner":
           display_name: """Kanonier der siebten Flotte"""
           text: """<i>Nur für Galaktische Republik</i>%LINEBREAK%Solange ein anderes befreundetes Schiff einen Primärangriff durchführt, falls der Verteidiger in deinem Feuerwinkel ist, darfst du 1 %CHARGE% ausgeben. Falls du das tust, wirft der Angreifer 1 zusätzlichen Angriffswürfel, bis zu einem Maximum von 4. Während der Systemphase darfst du 1 Entwaffnet-Marker erhalten, um 1 %CHARGE% wiederherzustellen."""
        "Seventh Sister":
           display_name: """Siebte Schwester"""
           text: """<i>Nur für Imperium</i>%LINEBREAK%Falls ein feindliches Schiff in Reichweite 0-1 einen Stressmarker erhalten würde, darfst du 1 %FORCE% ausgeben, um es stattdessen 1 Störsignal- oder 1 Fangstrahlmarker erhalten zu lassen."""
        "Shield Upgrade":
           display_name: """Verbesserte Schilde"""
           text: """<i class = flavor_text>Deflektor­schilde sind der wichtigste Verteidigungsmechanismus der meisten Raumschiffe, abgesehen von extrem leichten Jägern. Eine Verbesserung der Schildkapazität ist eine kostspielige, aber durchaus lohnenswerte Investition. </i>"""
        "Skilled Bombardier":
           display_name: """Versierte Bombenschützin"""
           text: """Falls du ein Gerät abwerfen oder starten würdest, darfst du eine Schablone mit gleicher Flugrichtung und einer um 1 höheren oder niedrigeren Geschwindigkeit verwenden."""
        "Snap Shot":
           display_name: """Schnellfeuer"""
           text: """Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, darfst du diesen Angriff als Bonusangriff gegen es durchführen.%LINEBREAK%<strong>Angriff:</strong> Deine Würfel können nicht modifiziert werden."""
        "Spare Parts Canisters":
           display_name: """Astromech Ersatzteilkanister"""
           text: """<strong>Aktion:</strong> Gib 1 %CHARGE% aus, um 1 Ladung von 1  deiner ausgerüsteten %ASTROMECH%-Aufwertungen wiederherzustellen. %LINEBREAK%<strong>Aktion:</strong> Gib 1 %CHARGE% aus, um 1 Ersatzteil abzuwerfen, dann verliere alle Zielerfassungen, die dir zugeordnet sind."""
        "Special Forces Gunner":
           display_name: """Bordschütze der Spezialeinheiten"""
           text: """<i>Nur für Erste Ordnung</i>%LINEBREAK%Solange du einen %FRONTARC%-Primärangriff durchführst, falls dein %SINGLETURRETARC% auf deinem %FRONTARC% ist, darfst du 1 zusätzlichen Angriffswürfel werfen.%LINEBREAK%Nachdem du einen %FRONTARC%-Primärangriff durchgeführt hast, falls dein %SINGLETURRETARC% auf deinem %REARARC% ist, darfst du einen Bonus-%SINGLETURRETARC%-Primärangriff durchführen."""
        "Squad Leader":
           display_name: """Staffelführer"""
           text: """<i>Fügt <r>%COORDINATE%</r> hinzu</i>%LINEBREAK%Solange du koordinierst, kann das von dir gewählte Schiff eine Aktion nur dann durchführen, falls jene Aktion auch in deiner Aktionsleiste ist."""
        "Static Discharge Vanes":
           display_name: """Elektrostatischer Entlader"""
           text: """Falls du einen Ionen- oder Störsignal-marker erhalten würdest, darfst du ein Schiff in Reichweite 0-1 wählen. Falls du das tust, erhalte 1 Stressmarker und transferiere 1 Ionen- oder Störsignalmarker auf jenes Schiff."""
        "Stealth Device":
           display_name: """Tarnvorrichtung"""
           text: """Solange du verteidigst, falls deine %CHARGE% aktiv ist, wirf 1 zusätzlichen Verteidigungswürfel.%LINEBREAK%Nachdem du Schaden erlitten hast, verliere 1 %CHARGE%."""
        "Supernatural Reflexes":
           display_name: """Übernatürliche Reflexe"""
           text: """<i>Nur für kleines Schiff</i>%LINEBREAK%Bevor du aktiviert wirst, darfst du 1 %FORCE% ausgeben, um eine %BARRELROLL%- oder %BOOST%-Aktion durchzuführen. Dann, falls du eine Aktion durchgeführt hast, die nicht in deiner Aktionsleiste ist, erleide 1 %HIT%-Schaden."""
        "Supreme Leader Snoke":
           display_name: """Oberster Anführer Snoke"""
           text: """<i>Nur für Erste Ordnung</i>%LINEBREAK%Während der Systemphase darfst du beliebig viele feindliche Schiffe jenseits von Reichweite 1 wählen. Falls du das tust, gib ebenso viele %FORCE% aus, um das Rad jedes gewählten Schiffes auf die offene Seite zu drehen."""
        "Swarm Tactics":
           display_name: """Schwarmtaktik"""
           text: """Zu Beginn der Kampfphase darfst du 1 befreundetes Schiff in Reichweite 1 wählen. Falls du das tust, behandelt jenes Schiff seine Initiative bis zum Ende der Runde so, als würde sie deiner Initiative entsprechen."""
        "Synchronized Console":
           display_name: """Synchronisierte Steuerkonsole"""
           text: """<i>Benötigt %LOCK% oder <r>%LOCK%</r></i>%LINEBREAK%<i>Nur für Galaktische Republik</i>%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, darfst du ein befreundetes Schiff in Reichweite 1 oder ein befreundetes Schiff mit der Aufwertung <strong>Synchronisierte Steuerkonsole</strong> in Reichweite 1-3 wählen und eine Zielerfassung ausgeben, die du auf dem Verteidiger hast. Falls du das tust, darf das von dir gewählte Schiff den Verteidiger als Ziel erfassen."""
        "TA-175":
           display_name: """TA-175"""
           text: """<i>Nur für Separatistenallianz</i>%LINEBREAK%Nachdem ein befreundetes Schiff in Reichweite&nbsp;0-3 mit&nbsp;%CALCULATE% in seiner Aktionsleiste zerstört worden ist, erhält jedes befreundete Schiff in Reichweite&nbsp;0-3 mit&nbsp;%CALCULATE% in seiner Aktionsleiste 1&nbsp;Berechnungsmarker."""
        "TV-94":
           display_name: """TV-94"""
           text: """<i>Nur für Separatistenallianz</i>%LINEBREAK%Solange ein befreundetes Schiff in Reichweite 0-3 einen Primärangriff gegen einen Verteidiger in seinem %BULLSEYEARC% durchführt, falls 2 oder weniger Angriffswürfel vorhanden sind, darf es 1 Berechnungsmarker ausgeben, um 1 %HIT% - Ergebnis hinzuzufügen."""
        "Tactical Officer":
           display_name: """Taktikoffizier"""
           text: """<i>Fügt %COORDINATE% hinzu</i>%LINEBREAK%<i>Benötigt <r>%COORDINATE%</r></i>%LINEBREAK%<i class = flavor_text>In den Wirren einer Raumschlacht kann ein einzelner Befehl über Sieg oder totale Auslöschung entscheiden.</i>"""
        "Tactical Scrambler":
           display_name: """Taktischer Scrambler"""
           text: """<i>Nur für großes Schiff oder mittleres Schiff</i>%LINEBREAK%Solange du den Angriff eines feindlichen Schiffes versperrst, wirft der Verteidiger 1 zusätzlichen Verteidigungswürfel."""
        "Targeting Computer":
           display_name: """Zielcomputer"""
           text: """<i>Fügt %LOCK% hinzu</i>%LINEBREAK%<i class = flavor_text>Zielcomputer gehören zur Standardausstattung vieler Schiffe, vor allem wenn sie für den Abwurf von Sprengkörpern konzipiert sind. Bei leichten Jagdmaschinen und Transportern, die ohne Waffenzielsystem verkauft werden, lässt es sich problemlos nachrüsten.</i>"""
        "Targeting Synchronizer":
           display_name: """Zielsynchronisiersystem"""
           text: """<i>Benötigt %LOCK% oder <r>%LOCK%</r></i>%LINEBREAK%Solange ein befreundetes Schiff in Reichweite 1-2 einen Angriff gegen ein Ziel durchführt, das du als Ziel erfasst hast, ignoriert jenes Schiff die %LOCK%-Angriffsvoraussetzung."""
        "Tobias Beckett":
           display_name: """Tobias Beckett"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%<strong>Aufbau:</strong> Nach dem Platzieren der Streitkräfte darfst du 1 Hindernis im Spielbereich wählen. Falls du das tust, platziere es irgendwo im Spielbereich, jenseits von Reichweite 2 zu den Spielfeldecken und Schiffen und jenseits von Reichweite 1 zu anderen Hindernissen."""
        "Tractor Beam":
           display_name: """Fangstrahl"""
           text: """<strong>Angriff:</strong> Falls dieser Angriff trifft, fügen alle %HIT%/%CRIT%-Ergebnisse Fangstrahlmarker anstatt Schaden zu."""
        "Trajectory Simulator":
           display_name: """Flugbahnsimulator"""
           text: """Während der Systemphase, falls du eine Bombe abwerfen oder starten würdest, darfst du sie stattdessen unter Verwendung der [5 %STRAIGHT%]-Schablone starten."""
        "Treacherous":
           display_name: """Verräterisch"""
           text: """<i>Nur für Separatistenallianz</i>%LINEBREAK%Solange du verteidigst, darfst du ein Schiff wählen, das den Angriff versperrt, und 1 %CHARGE% ausgeben. Falls du das tust, negiere 1 %HIT%- oder %CRIT%-Ergebnis und das von dir gewählte Schiff erhält 1 Anstrengungsmarker.%LINEBREAK%Nachdem ein Schiff in Reichweite 0-3 zerstört worden ist, stelle 1 %CHARGE% wieder her."""
        "Trick Shot":
           display_name: """Trickschuss"""
           text: """Solange du einen Angriff durchführst, der durch ein Hindernis versperrt ist, wirf 1 zusätzlichen Angriffswürfel."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du ein Manöver teilweise ausgeführt hast, darfst du 1 %HIT%-Schaden erleiden, um 1 weiße Aktion durchzuführen."""
        "Veteran Tail Gunner":
           display_name: """Kampferprobter Heckschütze"""
           text: """Nachdem du einen %FRONTARC%-Primärangriff durchgeführt hast, darfst du einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Veteran Turret Gunner":
           display_name: """Kampferprobter Geschützkanonier"""
           text: """<i>Benötigt <r>%ROTATEARC%</r> oder %ROTATEARC%</i>%LINEBREAK%Nachdem du einen Primärangriff durchgeführt hast, darfst du unter Verwendung eines %SINGLETURRETARC%, aus dem du in dieser Runde noch nicht angegriffen hast, einen Bonus-%SINGLETURRETARC%-Angriff durchführen."""
        "Xg-1 Assault Configuration":
           display_name: """Xg-1-Angriffskonfiguration"""
           text: """Solange du genau 1 Entwaffnet-Marker hast, kannst du trotzdem %CANNON%-Angriffe durchführen. Solange du einen %CANNON%-Angriff durchführst, solange du entwaffnet bist, wirf maximal 3 Angriffswürfel.%LINEBREAK%Füge einen %CANNON%-Slot hinzu."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Solange du einen Angriff durchführst, falls du nicht gestresst bist, darfst du 1 Verteidigungswürfel wählen und 1 Stressmarker erhalten. Falls du das tust, muss der Verteidiger jenen Würfel neu werfen."""
        '"Chopper" (Crew)':
           display_name: """„Chopper“ (Crew)"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Während des Schrittes „Aktion durchführen“ darfst du 1 Aktion durchführen, auch solange du gestresst bist. Nachdem du eine Aktion durchgeführt hast, solange du gestresst bist, erleide 1 %HIT%-Schaden, es sei denn, du legst 1 deiner Schadenskarten offen."""
        '"Chopper" (Astromech)':
           display_name: """„Chopper“ (Astromech)"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%<strong>Aktion:</strong> Gib 1 nicht-wiederkehrende %CHARGE% von einer anderen ausgerüsteten Aufwertung aus, um 1 Schild wiederherzustellen.%LINEBREAK%<strong>Aktion:</strong> Gib 2 Schilde aus, um 1 nicht-wiederkehrende %CHARGE% von einer ausgerüsteten Aufwertung wiederherzustellen."""
        '"Genius"':
           display_name: """„Genie“"""
           text: """<i>Nur für Abschaum</i>%LINEBREAK%Nachdem du ein Manöver vollständig ausgeführt hast, falls du in dieser Runde noch kein Gerät abgeworfen oder gestartet hast, darfst du 1 Bombe abwerfen."""
        '"Zeb" Orrelios':
           display_name: """„Zeb“ Orrelios"""
           text: """<i>Nur für Rebellen</i>%LINEBREAK%Du kannst Primärangriffe in Reichweite 0 durchführen. Feindliche Schiffe in Reichweite 0 können Primärangriffe gegen dich durchführen."""



            
    condition_translations =
        'Suppressive Fire':
           display_name: 'Sperrfeuer'
           text: '''Solange du einen Angriff gegen ein anderes Schiff als <strong>Captain Rex</strong> durchführst, wirf 1 Angriffswürfel weniger. %LINEBREAK%Nachdem <strong>Captain Rex</strong> verteidigt hat, entferne diese Karte. <strong>Captain Rex</strong>Am Ende der Kampfphase, falls <strong>Captain Rex</strong> in dieser Phase keinen Angriff durchgeführt hat, entferne diese Karte. %LINEBREAK%Nachdem <strong>Captain Rex</strong> zerstört worden ist, entferne diese Karte.'''
        'Hunted':
           display_name: 'Gejagt'
           text: '''Nachdem du zerstört worden bist, musst du ein anderes befreundetes Schiff wählen und ihm diesen Zustand zuordnen, falls möglich.'''
        'Listening Device':
           display_name: 'Abhörgerät'
           text: '''Während der Systemphase, falls ein feindliches Schiff mit der Aufwertung <strong>Informant</strong> in Reichweite 0-2 ist, drehe dein Rad auf die offene Seite.'''
        'Optimized Prototype':
           display_name: 'Optimierter Prototyp'
           text: '''Solange du einen %FRONTARC%-Primärangriff gegen ein Schiff durchführst, das von einem befreundeten Schiff mit der Aufwertung <strong>Direktor Krennic</strong> als Ziel erfasst ist, darfst du 1 %HIT%/%CRIT%/%FOCUS%-Ergebnis ausgeben. Falls du das tust, wähle 1 der folgenden Optionen: Der Verteidiger verliert 1 Schild oder der Verteidiger dreht 1 seiner verdeckten Schadenskarten um.'''
        'Proton Bomb':
           display_name: """Protonenbombe"""
           text: '''(Bomben Token) - Am Ende der Aktivierungsphase detoniert dieses Gerät. Sobald dieses Gerät detoniert, erleidet jedes Schiff in Reichweite 0–1 1 %CRIT%-Schaden.'''
        'Seismic Charge':
           display_name: """Seismische Bombe"""
           text: '''(Bomben Token) - Am Ende der Aktivierungsphase detoniert dieses Gerät. Sobald dieses Gerät detoniert, wähle 1 Hindernis in Reichweite 0–1. Jedes Schiff in Reichweite 0–1 zu jenem Hindernis erleidet 1 %HIT%-Schaden. Dann entferne jenes Hindernis.'''
        'Bomblet':
           display_name: """Streubombe"""
           text: '''(Bomben Token) - Am Ende der Aktivierungsphase detoniert dieses Gerät. Sobald dieses Gerät detoniert, wirft jedes Schiff in Reichweite 0–1 2 Angriffswürfel. Jedes Schiff erleidet 1 %HIT%-Schaden für jedes %HIT%/%CRIT% Ergebnis.'''
        'Loose Cargo':
           display_name: """Freie Fracht"""
           text: '''(Debris Token) - Freie Fracht ist eine Trümmerwolke..'''
        'Conner Net':
           display_name: """Connernetz"""
           text: '''(Mine Token) - Nachdem ein Schiff sich durch dieses Gerät hindurchbewegt oder sich mit ihm überschnitten hat, detoniert es. Sobald dieses Gerät detoniert, erleidet das Schiff 1 %HIT%-Schaden und erhält 3 Ionenmarker.'''
        'Proximity Mine':
           display_name: """Annäherungsmine"""
           text: '''(Mine Token) - Nachdem sich ein Schiff durch dieses Gerät hindurchbewegt oder mit ihm überschnitten hat, detoniert es. Sobald dieses Gerät detoniert, wirft jenes Schiff 2 Angriffswürfel. Jenes Schiff erleidet dann 1 %HIT%-Schaden sowie 1 %HIT%/%CRIT%-Schaden für jedes passende Ergebnis.'''
        'Rattled':
           display_name: 'Aus der Fassung'
           text: 'Nachdem eine Bombe oder Mine in Reichweite 0-1 detoniert ist, erleide 1 %CRIT% Schaden. Dann entferne diese Karte. %LINEBREAK% <strong>Aktion:</strong> Falls keine Bomben oder Minen in Reichweite 0-1 sind, entferne diese Karte.'
        '''I'll Show You the Dark Side''': 
           display_name: 'Ich zeige dir die dunkle Seite'
           text: 'Sobald diese Karte zugeordnet wird, falls keine offene Schadenskarte darauf liegt, sucht der Spieler, der sie zugeordnet hat, im Schadensstapel nach 1 <strong>Pilot</strong>-Schadenskarte und platziert sie offen auf dieser Karte. Dann mische den Schadensstapel. %LINEBREAK%Sobald du 1 %CRIT%-Schaden erleiden würdest, wird dir stattdessen die offene Schadenskarte auf dieser Karte zugeteilt. Dann entferne diese Karte. '

    exportObj.setupTranslationCardData pilot_translations, upgrade_translations, condition_translations
