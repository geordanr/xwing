###
    X-Wing Squad Builder 2.5
    Stephen Kim <raithos@gmail.com>
    https://yasb.app
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
        "Configuration": '<i class="xwing-miniatures-font xwing-miniatures-font-config"></i>'
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
        "VersatileShip": '<i class="xwing-miniatures-font xwing-miniatures-font-hardpoint"></i>'
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
        "Upgrade": "Aufwertungskarte"
    sources: 
        "Loose Ships": "Schiffsmodelle der 1. Edition"
        "Second Edition Core Set": "Grundspiel zweite Edition"
        "First Edition Core Set": "Grundspiel erste Edition"
        "First Edition Force Awakens Core Set": "Das Erwachen der Macht Grundspiel erste Edition"
        "Rebel Alliance Conversion Kit": "Konvertierungsset „Rebellenallianz“"
        "Galactic Empire Conversion Kit": "Konvertierungsset „Galaktisches Imperium“"
        "Scum and Villainy Conversion Kit": "Konvertierungsset „Abschaum und Kriminelle“"
        "First Order Conversion Kit": "Konvertierungsset „Erste Ordnung“"
        "Resistance Conversion Kit": "Konvertierungsset „Widerstand“"
        "Huge Ship Conversion Kit": "Konvertierungsset für riesige Schiffe"
        "T-65 X-Wing Expansion Pack": "T-65-X-Flügler Erweiterung"
        "BTL-A4 Y-Wing Expansion Pack": "BTL-A4-Y-Flügler Erweiterung"
        "TIE/ln Fighter Expansion Pack": "TIE/ln-Jäger Erweiterung"
        "TIE Advanced x1 Expansion Pack": "TIE-x1-Turbojäger Erweiterung"
        "Slave 1 Expansion Pack": "Sklave 1 Erweiterung"
        "Slave I Expansion Pack": "Sklave 1 Erweiterung"
        "Fang Fighter Expansion Pack": "Fangjäger Erweiterung"
        "Lando's Millennium Falcon Expansion Pack": "Landos Millennium Falke Erweiterung"
        "Saw's Renegades Expansion Pack": "Saws Rebellenmiliz Erweiterung"
        "TIE Reaper Expansion Pack": "TIE-Schnitter Erweiterung"
        "Sith Infiltrator Expansion Pack": "Sith Infiltrator Erweiterung"
        "Hotshots and Aces Reinforcements Pack": "Draufgänger und Fliegerasse Erweiterungspack"
        "Resistance Transport Expansion Pack": "Transporter des Widerstands Erweiterung" 
        "Guardians of the Republic Squadron Pack": "Wächter der Republik Staffelpack"
        "Fireball Expansion Kit": "Fireball Erweiterung"
        "Fireball Expansion Pack": "Fireball Erweiterung"
        "Fugitives and Collaborators Squadron Pack": "Gesuchte und Kollaborateure Staffelpack"
        "Never Tell Me the Odds Obstacles Pack": "Sag mir nie wie meine Chancen stehen Hindernispack"
        "Servants of Strife Squadron Pack": "Konstrukte des Krieges Staffelpack"
        "Skystrike Academy Squadron Pack": "Skystrike-Akademie Staffelpack"
        "Mining Guild TIE Expansion Pack": "TIE der Minengilde Erweiterung"
        "RZ-2 A-Wing Expansion Pack":"RZ-2 A-Flügler Erweiterung"
        "Naboo Royal N-1 Starfighter Expansion Pack":"Königlicher N1-Sternenjäger von Naboo Erweiterung"
        "ARC-170 Starfighter Expansion":"ARC-170-Sternenjäger Erweiterung"
        "Delta-7 Aethersprite Expansion":"Delta-7-Aethersprite Erweiterung"
        "Vulture-class Droid Fighter Expansion":"Droidenjäger der Vulture-Klasse Erweiterung"
        "Hyena-Class Droid Bomber Expansion Pack":"Droidenbomber der Hyänen-Klasse Erweiterung"
        "BTL-B Y-Wing Expansion Pack":"BTL-B Y-Flügler Erweiterung"
        "Nantex-class Starfighter Expansion Pack":"Sternenjäger der Nantex-Klasse Erweiterung"
        "A/SF-01 B-Wing Expansion Pack":"A/SF-01-B-Flügler Erweiterung"
        "Epic Battles Multiplayer Expansion":"Epische Schlachten Mehrspieler Erweiterung"
        "Major Vonreg's TIE Expansion Pack":"Major Vonregs Erweiterung"
        "Fully Loaded Devices Pack":"Volle Ladung Erweiterungspack"
        "Eta-2 Actis Expansion Pack":"Eta-2 Actis Erweiterung"
        "TIE/sk Striker Expansion Pack":"TIE-Stürmer Erweiterung"
        "LAAT/i Gunship Expansion Pack":"TFAT/i-Kanonenboot Erweiterung"
        "Inquisitors' TIE Expansion Pack":"TIE des Inquisitors Erweiterung"
        "HMP Droid Gunship Expansion Pack":"SRP-Droidenkanonenboot Erweiterung"
        "Nimbus-class V-Wing Expansion Pack":"V-Flügler der Nimbus-Klasse I Erweiterung"
        "Millennium Falcon Expansion Pack":"Millennium Falke Erweiterung"
        "Droid Tri-Fighter Expansion Pack":"Tri-Droidenjäger I Erweiterung"
        "TIE/rb Heavy Expansion Pack":"Schwerer TIE/RB Erweiterung"
        "Z-95-AF4 Headhunter Expansion Pack":"Z-95-AF4-Kopfjäger Erweiterung"
        "Jango Fett's Slave I Expansion Pack":"Jango Fett's Slave I Erweiterung"
        "TIE/VN Silencer Expansion Pack":"TIE/vn-Dämpfer Erweiterung"
        "Xi-class Light Shuttle Expansion Pack":"Leichtes Shuttle der Xi-Klasse Erweiterung"
        "Phoenix Cell Squadron Pack":"Phoenix-Staffel Staffelpack"
        "VT-49 Decimator Expansion Pack":"VT-49-Decimator Erweiterung"
        "First Edition VT-49 Decimator Expansion Pack":"Erste Edition VT-49-Decimator Erweiterung"
        "First Edition YT-2400 Freighter Expansion Pack":"Erste Edition YT-2400 Erweiterung"
        "Ghost Expansion Pack":"Ghost Erweiterung"
        "M3-A Interceptor Expansion Pack":"M3-A-Abfangjäger Erweiterung"
        "T-70 X-Wing Expansion Pack":"T-70 X-Wing Erweiterung"
        "Heralds of Hope Expansion Pack":"Boten der Hoffnung Erweiterungspack"
        "TIE/SF Fighter Expansion Pack":"TIE/se-Jäger Erweiterung"
        "TIE/FO Fighter Expansion Pack":"TIE/eo Erweiterung"
        "Punishing One Expansion Pack":"Vollstrecker Eins Erweiterung"
        "Fury of the First Order":"Zorn der Ersten Ordnung Erweiterungspack"
        "Trident-class Assault Ship Expansion Pack":"Angriffsschiff der Trident-Klasse Erweiterung"
        "RZ-1 A-Wing Expansion Pack":"RZ1 A-Flügler Erweiterung"
        "BTA-NR2 Y-Wing Pack":"BTA-NR2-Y-Flügler Erweiterungspack"
        "TIE/D Defender Expansion Pack":"TIE/D-Abwehrjäger Erweiterung"
        "TIE/in Interceptor Expansion Pack":"TIE/in Abfangjäger Erweiterung"
        "Hound's Tooth Expansion Pack":"Reißzahn Erweiterung"
        "C-ROC Cruiser Expansion Pack":"C-ROC Kreuzer Erweiterung"
        "Gauntlet Fighter Expansion pack":"Gauntlet-Jäger Erweiterung"
        "Clone Z-95 Headhunter Expansion pack":"Klon-Z-95-Sternenjäger Erweiterungspack"
        "Hotshots and Aces II Reinforcements Pack":"Draufgänger und Fliegerasse II Erweiterungspack"
        "Siege of Coruscant Battle Pack":"Die Schlacht von Coruscant Szenariopack"
        "Tantive IV Expansion Pack":"Tantive IV Erweiterung"
        "Rogue-class Starfighter Expansion pack":"Sternenjäger der Renegat-Klasse Erweiterungspack"
        "Razor Crest Expansion Pack":"Razor Crest Erweiterung"
        "Pride of Mandalore Reinforcements Pack":"Stolz von Mandalore Verstärkungspack"
        "Battle of Yavin Battle Pack":"Die Schlacht von Yavin Szenariopack"
        "Galactic Empire Squadron Starter Pack":"Galaktisches Imperium Staffel-Starterpack"
        "TIE/sa TIE Bomber Expansion Pack":"TIE/sa-Bomber Erweiterungspack"
        "Rebel Alliance Squadron Starter Pack":"Rebellenallianz Staffel-Starterpack"

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
        "Extended": "Erweitert"
        "limited": "limitiert"
        "Unnamed Squadron": "Unbenannte Staffel"
        "Unsaved Squadron": "Nicht gespeicherte Staffel"
        "New Squadron": "Neue Staffel"
        "Name your squad...": "Gib einen Namen ein…"
        "Ship number warning": "Eine turnierlegale Staffel muss aus 3-8 Schiffen bestehen!"
        "Your Collection": "Deine Sammlung"
        "Only available from 1st edition": "Nur aus der ersten Edition verfügbar"
        "Randomize!": "Zufall!"
        "Copy": "Kopieren"
        "Print": "Drucken"
        "Random Squad Builder Options": "Zufallsgeneratoreinstellungen"
        "Miscellaneous Settings": "Sonstige Einstellungen" 
        "View in YASB": "In YASB 2 öffnen"
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
        "X-Wing Squadron by YASB 2.0: ": "Staffel erstellt mit YASB 2"
        "YASB advertisment": "YASB 2 ist ein übersichtlicher, einfach zu nutzender und quelloffener Staffeleditor für das X-Wing Miniaturenspiel von Asmodee"
        "Points Destroyed": "Zerstörte Punkte"
        "Ship total": "Summe Schiff"
        "Ship Total": "Summe Schiff"
        "Half Points": "Halbe Punktzahl"
        "Threshold": "Grenzwert"
        "Yes, Delete": "Ja, Löschen"
        "Cancel": "Abbrechen"
        "Never Mind": "Upps, doch nicht"
        "Really Delete": "Wirklich löschen"
        "Sure to delete?": "Bist du dir sicher, dass du diese Staffel löschen möchtest?"
        "Save": "Speichern"
        "Unsaved Changes": "Ungespeicherte Änderungen"
        "Name is available": "Name ist verfügbar"
        "Checking name availability...": "Prüfe Namensverfügbarkeit…"
        "Name in use": "Name bereits vergeben"
        "Go Back": "Zurück"
        "Unsaved Changes Warning": "Du hast deine Änderungen an dieser Staffel noch nicht gespeichert. Möchtest du abbrechen und dies vorher tun?"
        "Save Squad As...": "Speichern unter…"
        "Convert": "Konvertieren"
        "Convert to Extended?": "In Extended konvertieren?"
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
        "Intro Card YASB": """
                    <h2>YASB 2 für X-Wing (Version 2.5) </h2>
                    <p>YASB (engl. Yet Another Squad Builder, dt. Noch ein Staffel-Bauer) hilft dir, einfach und unkompliziert deine Staffeln für das X-Wing Miniaturenspiel von <a href="https://www.atomicmassgames.com/">Atomic Mass Games</a> zu erstellen.</p>
                    <h5>Impressum</h5>
                    <p>Eine Weiterentwicklung des hervorragenden <a href="https://geordanr.github.io/xwing/">Yet Another Squad Builder</a> für die erste Edition.</p>
                    <p>YASB wird von Stephen Kim und Patrick Mischke gepflegt.</p>
                    <p>Besonderes Dankeschön an:<br>
                    Server (-kosten) und Federführung seit der zweiten Edition: Stephen Kim. <br>
                    2.5 Datenupdate: Devon Monkhouse, Perry Low, Andrew Oehler.<br>
                    2.0 Datenupdate: Evan Cameron, Jonathan Hon, Devon Monkhouse und Mark Stewart.<br>
                    Übersetzungen: Patrick Mischke, godgremos, Clément Bourgoin, ManuelWittke<br>
                    Logo: Thomas Kohler<br>
                    Quick Build Funktionalität: Patrick Mischke</p>

                    <p>Diese Seite ist inoffiziell und nicht lizensiert von oder sonst irgendwie mit Atomic Mass Games, Lucasfilm Ltd. oder Disney verbunden.</p>

                    <p>Diese Seite steht dir dauerhaft kostenfrei zur Verfügung. YASB ist ein Open-Source Projekt, wenn du etwas beitragen möchtest, ist Hilfe immer willkommen. Aufgrund wiederholter Fragen hier ein Paypal-Link von Stephen Kim.</p>
                    <p><button class="btn btn-primary paypal" onclick="window.open('https://paypal.me/raithos');">Über Paypal unterstützen</button></p>
        """
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
        "Points": "Punkte"
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
        "Point cost:": "Kommandopunktekosten"
        "Loadout cost:": "Ausstattungspunktekosten"
        "Factions:": "Fraktionen"
        "Textsearch:": "Volltextsuche"
        "Squad Notes:": "Staffelnotizen"
        "Tag:": "Stichwörter:"
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
        "Pride of Mandalore Debris 1": "Stolz von Mandalore Trümmerwolke 1"
        "Pride of Mandalore Debris 2": "Stolz von Mandalore Trümmerwolke 2"
        "Pride of Mandalore Debris 3": "Stolz von Mandalore Trümmerwolke 3"
        "Pride of Mandalore Rock 1": "Stolz von Mandalore Asteroid 1"
        "Pride of Mandalore Rock 2": "Stolz von Mandalore Asteroid 2"
        "Pride of Mandalore Rock 3": "Stolz von Mandalore Asteroid 3"
        adds: (translator, data) -> # data will most likely be a string of some symbols, but you never know
            "Fügt #{translator('ui', data)} hinzu"
        removes: (translator, data) -> # data will most likely be a string of some symbols, but you never know
            "Entfernt #{translator('ui', data)}"
        "Undamaged": "Unbeschädigt"
        "Standard": "Standard"
        "Faction": "Fraktion"
        "Loadout": "Ausstattung" 
        "Standard legal": "In Standard erlaubt"
        "Keywords:": "Schlüsselwörter:"
        "Show Points Destroyed": "Zerstörte Punkte anzeigen"
        "Hide Points Destroyed": "Zerstörte Punkte verbergen"
        "This squad was created for an older version of X-Wing.": "Diese Staffel wurde für eine älteren Version von X-Wing erstellt."
        "Damage Threshold": "Schadensgrenzwert"
        "X-Wing Squadron by YASB 2: ": "X-Wing Staffel erstellt mit YASB 2.5: "
        "X-Wing Squadron by YASB: ": "X-Wing Staffel erstellt mit YASB: "
        "Ship Cost": "Schiffskosten"
        "Paste XWS here": "XWS einfügen"
        "All sets and expansions": "Alle Erweiterungen"
        "All factions": "Alle Fraktionen"
        "Has multiple of the chosen slots": "Hat mehrere der gewählten Slots"
        "keywords":"Schlüsselwörter"
        "Checking auth status...": "Prüfe Anmeldestatus..."
        "Copy URL": "Link kopieren"
        "Reset Obstacles": "Alle löschen"
        "Enable Ban List (Not Standard)": "Bannliste außerhalb von Standard"
        "Epic Unofficial": "Von AMG wurden keine Punkte für Epische Karten veröffentlicht. Die Werte hier sind unabhängig und willkürlich gewählt, teilweise unausgewogen und werden nicht aktualisiert. "
        damageHeader: (translator, type) ->
            "Schadenskarte (#{translator 'types', type})"

    singular:
        'pilots': 'Pilot'
        'modifications': 'Modifikation'
        'titles': 'Titel'
        'ships' : 'Schiff'
    types:
        'Pilot': 'Pilot'
        'Modification': 'Modifikation'
        'Upgrade': 'Aufwertungskarte'
        'Title': 'Titel'
        'Ship': 'Schiff'

    gameterms:
        'Small': 'Klein'
        'Medium': 'Mittel'
        'Large': 'Groß'
        'Huge': 'Riesig'
        'Solitary': 'Einzigartig'
        'Standardized': 'Standardisiert'

    faction:
        "Rebel Alliance": "Rebellen-Allianz"
        "Galactic Empire": "Galaktisches Imperium"
        "Scum and Villainy": "Abschaum und Kriminelle"
        "Resistance": "Widerstand"
        "First Order": "Erste Ordnung"
        "Galactic Republic": "Galaktische Republik"
        "Separatist Alliance": "Separatisten-Allianz"
        "Factionless":"Fraktionslos"

    action:
        "Barrel Roll": "Fassrolle"
        "Focus": "Fokus"
        "Boost": "Schub"
        "Calculate": "Berechnung"
        "Coordinate": "Koordinieren"
        "Evade": "Ausweichen"
        "Jam": "Stören"
        "Reinforce": "Verstärken"
        "Reload": "Nachladen"
        "Rotate Arc": "Feuerwinkel drehen"
        "Lock": "Zielerfassung"
        "Reinforce": "Verstärken"

    restrictions:
        "Restrictions": "Einschränkungen"
        "Initiative": "Initiative"
        "Agility": "Wendigkeit"
        "Non-Limited": "Nicht limitiert"
        " or Squad Including": " oder Staffel mit"
        "Ship": "Schiff"
        "Extra": "Extra"
        "Vectored Thrusters": "Schwenkbare Schubdüsen"
        "Autothrusters": "Automatische Schubdüsen"
        "Networked Calculations":"Vernetzte Berechnungssysteme"
        "X-wing":"X-Flügler"
        "Limited":"limitiert"
        "Light Side":"Helle Seite"
        "Dark Side":"Dunkle Seite"
        "Mandalorian":"Mandalorianer"
        "TIE":"TIE"
        "Bounty Hunter":"Kopfgeldjäger"
        "Clone":"Klon"
        "A-wing":"A-Flügler"
        "Y-wing":"Y-Flügler"
    rulestypes:
        "faq": "FAQ"
        "glossary": "Referenzhandbuch"

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.Deutsch = () ->
    exportObj.cardLanguage = 'Deutsch'

    # Rename ships
    exportObj.renameShip """Modified YT-1300 Light Freighter""", """Modifizierter leichter YT-1300-Frachter"""
    exportObj.renameShip """StarViper-class Attack Platform""", """Angriffsplattform der Sternenviper-Klasse"""
    exportObj.renameShip """Scurrg H-6 Bomber""", """Scurrg-H-6-Bomber"""
    exportObj.renameShip """YT-2400 Light Freighter""", """Leichter YT-2400-Frachter"""
    exportObj.renameShip """Auzituck Gunship""", """Auzituck-Kanonenboot"""
    exportObj.renameShip """Kihraxz Fighter""", """Kihraxz-Jäger"""
    exportObj.renameShip """Sheathipede-Class Shuttle""", """Raumfähre der Sheathipede-Klasse"""
    exportObj.renameShip """Quadrijet Transfer Spacetug""", """Quadrijet-Transferschlepper"""
    exportObj.renameShip """Firespray-class Patrol Craft""", """Patrouillenboot der Firespray-Klasse"""
    exportObj.renameShip """TIE/ln Fighter""", """TIE/ln-Jäger"""
    exportObj.renameShip """BTL-A4 Y-wing""", """BTL-A4-Y-Flügler"""
    exportObj.renameShip """TIE Advanced x1""", """TIE-x1-Turbojäger"""
    exportObj.renameShip """Alpha-Class Star Wing""", """Sternflügler der Alpha-Klasse"""
    exportObj.renameShip """UT-60D U-wing""", """UT-60D-U-Flügler"""
    exportObj.renameShip """TIE/sk Striker""", """TIE/sk-Stürmer"""
    exportObj.renameShip """A/SF-01 B-wing""", """A/SF-01-B-Flügler"""
    exportObj.renameShip """TIE/d Defender""", """TIE/D-Abwehrjäger"""
    exportObj.renameShip """TIE/sa Bomber""", """TIE/sa-Bomber"""
    exportObj.renameShip """TIE/ca Punisher""", """TIE/ca-Vergelter"""
    exportObj.renameShip """Aggressor Assault Fighter""", """Aggressor-Angriffsjäger"""
    exportObj.renameShip """G-1A Starfighter""", """G-1A Sternenjäger"""
    exportObj.renameShip """VCX-100 Light Freighter""", """Leichter VCX-100-Frachter"""
    exportObj.renameShip """YV-666 Light Freighter""", """Leichter YV-666-Frachter"""
    exportObj.renameShip """TIE Advanced v1""", """TIE-v1-Turbojäger"""
    exportObj.renameShip """Lambda-class T-4a Shuttle""", """T-4A-Raumfähre der Lambda-Klasse"""
    exportObj.renameShip """TIE/ph Phantom""", """TIE/ph-Phantom"""
    exportObj.renameShip """VT-49 Decimator""", """VT-49-Decimator"""
    exportObj.renameShip """TIE/ag Aggressor""", """TIE/ag-Agressor"""
    exportObj.renameShip """BTL-S8 K-wing""", """BTL-S8-K-Flügler"""
    exportObj.renameShip """ARC-170 Starfighter""", """ARC-170-Sternenjäger"""
    exportObj.renameShip """Attack Shuttle""", """Jagdshuttle"""
    exportObj.renameShip """T-65 X-wing""", """T-65-X-Flügler"""
    exportObj.renameShip """HWK-290 Light Freighter""", """Leichter HWK-290-Frachter"""
    exportObj.renameShip """RZ-1 A-wing""", """RZ-1-A-Flügler"""
    exportObj.renameShip """Fang Fighter""", """Fangjäger"""
    exportObj.renameShip """Z-95-AF4 Headhunter""", """Z-95-AF4-Kopfjäger"""
    exportObj.renameShip """M12-L Kimogila Fighter""", """M12-L-Kimogila-Jäger"""
    exportObj.renameShip """E-wing""", """E-Flügler"""
    exportObj.renameShip """TIE/in Interceptor""", """TIE-Abfangjäger"""
    exportObj.renameShip """Lancer-Class Pursuit Craft""", """Jagdschiff der Lanzen-Klasse"""
    exportObj.renameShip """TIE Reaper""", """TIE-Schnitter"""
    exportObj.renameShip """M3-A Interceptor""", """M3-A-Abfangjäger"""
    exportObj.renameShip """JumpMaster 5000""", """JumpMaster 5000"""
    exportObj.renameShip """Customized YT-1300 Light Freighter""", """Modifizierter YT-1300-Frachter"""
    exportObj.renameShip """Escape Craft""", """Fluchtschiff"""
    exportObj.renameShip """TIE/fo Fighter""", """TIE/eo-Jäger"""
    exportObj.renameShip """TIE/sf Fighter""", """TIE/sf Jäger"""
    exportObj.renameShip """Upsilon-Class Command Shuttle""", """Kommandoshuttle der Ypsilon-Klasse"""
    exportObj.renameShip """TIE/vn Silencer""", """TIE/vn-Dämpfer"""
    exportObj.renameShip """T-70 X-wing""", """T-70-X-Flügler"""
    exportObj.renameShip """RZ-2 A-wing""", """RZ-2-A-Flügler"""
    exportObj.renameShip """MG-100 StarFortress""", """MG-100-SternenFestung"""
    exportObj.renameShip """Modified TIE/ln Fighter""", """Modifizierter TIE/ln-Jäger"""
    exportObj.renameShip """Scavenged YT-1300""", """YT-1300 vom Schrottplatz"""
    exportObj.renameShip """V-19 Torrent Starfighter""", """V-19-Torrent-Sternenjäger"""    
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
           text: """Solange du koordinierst, falls du ein Schiff mit genau 1 Stressmarker wählst, kann es Aktionen durchführen."""
        "Academy Pilot":
           display_name: """Pilot der Akademie"""
           text: """<i class = flavor_text>Was Sternenjäger betrifft, setzt das Galaktische Imperium hauptsächlich auf den schnellen und wendigen TIE/ln von Sienar Flottensysteme und lässt ihn in erstaunlicher Stückzahl produzieren.</i>"""
        "Ahhav":
           display_name: """Ahhav"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls das feindliche Schiff eine größere Größenkategorie hat als du, wirf 1 zusätzlichen Würfel."""
        "Ahsoka Tano":
           display_name: """Ahsoka Tano"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0-1 wählen und 1 %FORCE% ausgeben. Jenes Schiff darf eine Aktion durchführen, auch falls es gestresst ist. """
        "Ahsoka Tano (Delta-7b)":
           display_name: """Ahsoka Tano"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0-1 wählen und 1 %FORCE% ausgeben. Jenes Schiff darf eine Aktion durchführen, auch falls es gestresst ist. """
        "Airen Cracken":
           display_name: """Airen Cracken"""
           text: """Nachdem du einen Angriff durchgeführt hast, darfst du 1 befreundetes Schiff in Reichweite 1 wählen. Jenes Schiff darf eine Aktion durchführen, die es als rot behandelt."""
        "Alexsandr Kallus":
           display_name: """Alexsandr Kallus"""
           text: """Solange du verteidigst, falls der Angreifer irgendwelche Angriffswürfel modifiziert hat, darfst du 1 zusätzlichen Verteidigungswürfel werfen.%LINEBREAK%<i>Errata (since rules reference 1.2.0): Fehlende Schiffsfähigkeit ergänzt"""
        "Alpha Squadron Pilot":
           display_name: """Pilot der Alpha-Staffel"""
           text: """<i class = flavor_text>Sienar Flottensysteme konzipierte den TIE-Abfangjäger mit vier Laserkanonen an den Tragflächenspitzen. Dadurch ist er seinen Vorgängermodellen waffentechnisch weit überlegen.</i>"""
        "Anakin Skywalker":
           display_name: """Anakin Skywalker"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, falls ein feindliches Schiff in deinem %FRONTARC% in Reichweite 0-1 oder in deinem %BULLSEYEARC% ist, darfst du 1 %FORCE% ausgeben, um 1 Stressmarker zu entfernen."""
        "Anakin Skywalker (Delta-7b)":
           display_name: """Anakin Skywalker"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, falls ein feindliches Schiff in deinem %FRONTARC% in Reichweite 0-1 oder in deinem %BULLSEYEARC% ist, darfst du 1 %FORCE% ausgeben, um 1 Stressmarker zu entfernen."""
        "Anakin Skywalker (N-1 Starfighter)":
           display_name: """Anakin Skywalker"""
           text: """Bevor du dein Manöver aufdeckst, darfst du 1&nbsp;%FORCE% ausgeben, um eine Fassrolle zu fliegen (dies ist keine Aktion)."""
        "Anakin Skywalker (Y-Wing)":
           display_name: """Anakin Skywalker"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, falls ein feindliches Schiff in deinem %FRONTARC% in Reichweite&nbsp;0-1 oder in deinem %BULLSEYEARC%, ist, darfst du 1&nbsp;%FORCE% ausgeben, um 1&nbsp;Stressmarker zu entfernen."""
        "Arliz Hadrassian":
           display_name: """Arliz Hadrassian"""
           text: """Solange du einen %FRONTARC%-Angriff durchführst, falls du beschädigt bist, darfst du 1 deiner %FOCUS%-Ergebnisse in ein %CRIT%-Ergebnis ändern. %LINEBREAK% Solange du verteidigst, falls du beschädigt bist, <b>musst</b> du vor dem Schritt „Verteidigungswürfel modifizieren“ 1 deiner %FOCUS%-Ergebnisse in ein Leerseiten-Ergebnis ändern.. %LINEBREAK% <i>Errata (RR: 1.2.0 [06/14/2021]): Timingfenster vor dem Schritt „Verteidigungswürfel modifizieren“ ergänzt</i>"""
        "Arvel Crynyd":
           display_name: """Arvel Crynyd"""
           text: """Falls du durch Überschneidung mit einem anderen Schiff an einer %BOOST%-Aktion scheitern würdest, darfst du sie stattdessen so abhandeln, als würdest du ein Manöver teilweise ausführen.%LINEBREAK% Solange du einen Angriff in Angriffsreichweite 0 durchführst, behandle ihn als Angriff in Angriffsreichweite 1.%LINEBREAK%<i>Errata: Ersten Satz entfernt und dafür neuen letzten Satz ergänzt. Die andere Fähigkeit optional gemacht („darfst du...“) </i>"""
        "Asajj Ventress":
           display_name: """Asajj Ventress"""
           text: """Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in deinem %SINGLETURRETARC% in Reichweite 0-2 wählen und 1 %FORCE% ausgeben. Falls du das tust, erhält jenes Schiff 1 Stressmarker, es sei denn, es entfernt 1 grünen Marker."""
        "Autopilot Drone":
           display_name: """Autopilot-Drone"""
           text: """<i class = flavor_text>Manchmal sind Herstellerwarnungen dazu gemacht, um sie zu ignorieren.</i>"""
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
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 einen Angriff durchführt, falls der Verteidiger in seinem %BULLSEYEARC% ist, darfst du 1 %FORCE% ausgeben, um 1 %FOCUS%-Ergebnis in ein %HIT%-Ergebnis oder 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis zu ändern. """
        "Barriss Offee (Delta-7b)":
           display_name: """Barriss Offee"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 einen Angriff durchführt, falls der Verteidiger in seinem %BULLSEYEARC% ist, darfst du 1 %FORCE% ausgeben, um 1 %FOCUS%-Ergebnis in ein %HIT%-Ergebnis oder 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis zu ändern. """
        "Ben Teene":
           display_name: """Ben Teene"""
           text: """Nachdem du einen Angriff durchgeführt hast, falls der Verteidiger in deinem %SINGLETURRETARC% ist, ordne dem Verteidiger den Zustand <strong>Aus der Fassung</strong> zu."""
        "Benthic Two Tubes":
           display_name: """Benthic Two Tubes"""
           text: """Nachdem du eine %FOCUS%-Aktion durchgeführt hast, darfst du 1 deiner Fokusmarker auf ein befreundetes Schiff in Reichweite 1-2 transferieren."""
        "Berwer Kret":
           display_name: """Berwer Kret"""
           text: """Nachdem du einen Angriff durchgeführt hast, der getroffen hat, darf jedes befreundete Schiff mit %CALCULATE% in seiner Aktionsleiste, das den Verteidiger als Ziel erfasst hat, eine rote&nbsp;%CALCULATE%&nbsp;-Aktion durchführen. """
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
           text: """<i class = flavor_text>Während des Kalten Krieges führte Poe Damerons schwarze Staffel gewagte Geheimoperationen gegen die Erste Ordnung durch und verstieß dabei gegen Verträge, die vom Senat der Neuen Republik ratifiziert worden waren.</i>"""
        "Black Squadron Scout":
           display_name: """Aufklärer der schwarzen Staffel"""
           text: """<i class = flavor_text>Schwenkbare Tragflächen verleihen dem schwerbewaffneten Atmosphärenflieger zusätzliche Geschwindigkeit und Manövrierbarkeit.</i>"""
        "Black Sun Ace":
           display_name: """Fliegerass der Schwarzen Sonne"""
           text: """<i class = flavor_text>Der Kihraxz-Angriffsjäger wurde eigens für das Verbrechersyndikat Schwarze Sonne entwickelt, dessen hochbezahlte Fliegerasse ein leistungsstarkes, wendiges Schiff verlangten, das ihren Fähigkeiten entsprach.</i>"""
        "Black Sun Assassin":
           display_name: """Attentäter der Schwarzen Sonne"""
           text: """<i class = flavor_text>Ein Attentat kann mit einem Schuss im Dunkeln oder mit einem vergifteten Getränk verübt werden. Aussagekräftiger ist jedoch eine brennende Raumfähre, die hilflos vom Himmel trudelt. </i>"""
        "Black Sun Enforcer":
           display_name: """Vollstrecker der Schwarzen Sonne"""
           text: """<i class = flavor_text>Prinz Xizor persönlich entwickelte die Angriffsplattform der SternenViper-Klasse in Zusammenarbeit mit MandalMotors und schuf so einen der vorzüglichsten Sternenjäger der Galaxis. </i>"""
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
           text: """<i class = flavor_text>Überall in der Galaxis wachsen junge Leute mit Geschichten über die Helden des Galaktischen Bürgerkriegs auf. Viele lernen das Fliegen in den Cockpits, in denen ihre Eltern einst das Imperium bekämpften.</i>"""
        "Blue Squadron Rookie":
           display_name: """Anfängerpilot der blauen Staffel"""
           text: """<i class = flavor_text>Incom-FreiTek setzte bei der Entwicklung des T-70-X-Flüglers auf eine Verbesserung der taktischen Flexibilität des altehrwürdigen T-65-Modells. Sein moderner Droidenport ist mit fast allen gängigen Astromechs kompatibel, und dank seiner modularen Waffenkapseln kann er für jeden Einsatz mit maßgeschneiderter Bewaffnung ausgestattet werden.</i>"""
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
           text: """<i class = flavor_text>Die freiwilligen Piloten der Königlichen Sicherheitskräfte von Naboo haben sich dem Schutz des Volkes und der Ideale ihrer Heimatwelt verschrieben und vertrauen darauf, dass ihre Königin sie nur als letzten Ausweg ins Gefecht schicken wird.</i>"""
        "Braylen Stramm":
           display_name: """Braylen Stramm"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du bis zu 2 deiner Würfel neu werfen."""
        "Captain Cardinal":
           display_name: """Captain Cardinal"""
           text: """Solange ein befreundetes Schiff in Reichweite 1-2 mit niedrigerer Initiative als du verteidigt oder einen Angriff durchführt, falls du mindestens 1 %CHARGE% hast, darf jenes Schiff 1 %FOCUS%-Ergebnis neu werfen.%LINEBREAK%Nachdem ein feindliches Schiff in Reichweite 0-3 zerstört worden ist, verliere 1 %CHARGE%."""
        "Captain Feroph":
           display_name: """Captain Feroph"""
           text: """Solange du verteidigst, falls der Angreifer keine grünen Marker hat, darfst du 1 deiner Leerseiten- oder %FOCUS%-Ergebnisse in ein %EVADE%-Ergebnis ändern. %LINEBREAK% <i>Errata: „oder“ statt „/“ (1. Edition)</i>"""
        "Captain Jonus":
           display_name: """Captain Jonus"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-1 einen %TORPEDO%- oder %MISSILE%-Angriff durchführt, darf jenes Schiff bis zu 2 Angriffswürfel neu werfen. """
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
           text: """Solange du einen Angriff in Angriffsreichweite 0 durchführst, behandle ihn als Angriff in Angriffsreichweite 1. %LINEBREAK% <i>Errata: Für 2.5 überarbeitet</i>"""
        "Captain Rex":
           display_name: """Captain Rex"""
           text: """Nachdem du einen Angriff durchgeführt hast, ordne dem Verteidiger den Zustand <strong>Sperrfeuer</strong> zu."""
        "Captain Sear":
           display_name: """Captain Sear"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-3 einen Primärangriff durchführt, falls der Verteidiger in seinem %BULLSEYEARC% ist, darf das befreundete Schiff vor dem Schritt „Ergebnisse neutralisieren“ 1 Berechnungsmarker ausgeben, um 1 %EVADE%-Ergebnis zu negieren."""
        "Captain Seevor":
           display_name: """Captain Seevor"""
           text: """Solange du verteidigst oder einen Angriff durchführst, bevor die Angriffswürfel geworfen werden, falls du nicht im %BULLSEYEARC% des feindlichen Schiffes bist, darfst du 1 %CHARGE% ausgeben. Falls du das tust, erhält das feindliche Schiff 1 Störsignalmarker."""
        "Cartel Executioner":
           display_name: """Killer des Kartells"""
           text: """<i class = flavor_text>Viele erfahrene Piloten, die im Dienst der huttischen Kajidics und anderer Verbrecherorganisationen stehen, entscheiden sich für den M12-L-Kimogila-Jäger aufgrund seiner beträchtlichen Feuerkraft und seines furchteinflößenden Rufes.</i>"""
        "Cartel Marauder":
           display_name: """Kartell-Marodeur"""
           text: """<i class = flavor_text>Der vielseitige Kihraxz ist dem beliebten X-Flügler von Incom nachempfunden und verfügt über eine Reihe von Modifikationspaketen, mit denen er für verschiedenste Aufgabenbereiche angepasst werden kann.</i>"""
        "Cartel Spacer":
           display_name: """Raumfahrer des Kartells"""
           text: """<i class = flavor_text>Der M3-A-„Scyk“-Abfangjäger von MandalMotors wurde in großer Stückzahl vom Hutt-Kartell und den Car’das-Schmugglern angeschafft. Grund dafür waren der günstige Einstiegspreis und die vielen Ausstattungsoptionen des Jägers. </i>"""
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
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger gefangen ist, darfst du bis zu 2&nbsp;Angriffswürfel neu werfen."""
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
           text: """Solange du einen Angriff gegen ein erfasstes Schiff durchführst, nachdem du Angriffswürfel geworfen hast, darfst du den Verteidiger als Ziel erfassen."""
        "Commandant Goran":
           display_name: "Kommandant Goran"
           text: """Wähle zu Beginn der Kampfphase ein befreundetes Schiff in Reichweite 0–3, dessen Initiative niedriger als deine ist. Das gewählte Schiff erhält 1 Ausweichmarker und entfernt 1 roten Nicht-Stressmarker.%LINEBREAK%<i>Errata (since rules reference 1.4): Komplett überarbeitet</i>"""
        "Commander Malarus":
           display_name: """Commander Malarus"""
           text: """Zu Beginn der Kampfphase darfst du 1 %CHARGE% ausgeben und 1 Stressmarker erhalten. Falls du das tust, darfst du bis zum Ende der Runde, solange du verteidigst oder einen Angriff durchführst, alle deine %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse ändern."""
        "Commander Malarus (Xi Shuttle)":
           display_name: """Commander Malarus"""
           text: """Solange ein befreundetes Schiff in Reichweite 0–2 einen Primärangriff durchführt, falls es vor dem Schritt „Würfel modifizieren“ 1 oder mehrere Leerseiten-Ergebnisse hat, <strong>muss</strong> jenes Schiff 1 Anstrengungsmarker erhalten, um 1 Leerseiten-Ergebnis neu zu werfen, falls möglich. %LINEBREAK% <i>Errata (RR: 1.2.0 [06/14/2021]): Genaues Timingfenster ergänzt</i>"""
        "Constable Zuvio":
           display_name: """Constable Zuvio"""
           text: """Falls du ein Gerät abwerfen würdest, darfst du es stattdessen unter Verwendung der [1 %STRAIGHT%]-Schablone starten."""
        "Contracted Scout":
           display_name: """Angeheuerter Kundschafter"""
           text: """<i class = flavor_text>Der leichtbewaffnete JumpMaster 5000 ist für Langstreckenaufklärung und die Erschließung neuer Hyperraumrouten vorgesehen. Häufig wird er mit umfangreichen Ausstattungspaketen nachgerüstet.</i>"""
        "Corran Horn":
           display_name: """Corran Horn"""
           text: """Bei Initiative 0 darfst du einen Bonus-Primärangriff gegen ein feindliches Schiff in deinem %BULLSEYEARC% durchführen. Falls du das tust, erhalte zu Beginn der nächsten Planungsphase 1 Entwaffnet-Marker."""
        "Count Dooku":
           display_name: """Count Dooku"""
           text: """Nachdem du verteidigt hast, falls der Angreifer in deinem Feuerwinkel ist, darfst du 1 %FORCE% ausgeben, um 1 deiner blauen oder roten Marker zu entfernen.%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, der getroffen hat, darfst du 1 %FORCE% ausgeben, um eine Aktion durchzuführen."""
        "Countess Ryad":
           display_name: """Gräfin Ryad"""
           text: """Solange du ein %STRAIGHT%-Manöver ausführen würdest, darfst du die Schwierigkeit des Manövers erhöhen. Falls du das tust, führe es stattdessen als %KTURN%-Manöver aus."""
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
           text: """Zu Beginn der Kampfphase darfst du 1&nbsp;Berechnungsmarker ausgeben, um eine %COORDINATE%-Aktion durchzuführen. Du kannst keine Schiffe koordinieren, die die Schiffs­fähigkeit <strong>Vernetzte Berechnungssysteme</strong> nicht haben. """
        "DBS-404":
           display_name: """DBS-404"""
           text: """Solange du einen Angriff in Angriffsreichweite&nbsp;1 durchführst, musst du 1&nbsp;zusätzlichen Würfel werfen. Nachdem der Angriff getroffen hat, erleide 1&nbsp;%CRIT%-Schaden. %LINEBREAK% <i>Errata: Reichweite geändert</i>"""
        "DFS-081":
           display_name: """DFS-081"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-1 verteidigt, darf es 1 Berechnungsmarker ausgeben, um alle %CRIT%-Ergebnisse in %HIT%-Ergebnisse zu ändern."""
        "DFS-311":
           display_name: """DFS-311"""
           text: """Zu Beginn der Kampfphase darfst du 1 deiner Berechnungsmarker auf ein anderes befreundetes Schiff in Reichweite 0-3 transferieren."""
        "Dace Bonearm":
           display_name: """Dace Bonearm"""
           text: """Nachdem ein feindliches Schiff in Reichweite 0-3 mindestens 1 Ionenmarker bekommen hat, darfst du 3 %CHARGE% ausgeben. Falls du das tust, erhält jenes Schiff 2 zusätzliche Ionenmarker."""
        "Dalan Oberos (StarViper)":
           display_name: """Dalan Oberos (StarViper)"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 Stressmarker erhalten, um dein Schiff um 90° zu drehen."""
        "Dalan Oberos":
           display_name: """Dalan Oberos"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff, das Schilde hat, in deinem %BULLSEYEARC% wählen und 1 %CHARGE% ausgeben. Falls du das tust, verliert jenes Schiff 1 Schild und du stellst 1 Schild wieder her."""
        "Dark Courier":
           display_name: """Dunkler Bote"""
           text: """<i class = flavor_text>Die Scimitar war ein stark modifiziertes Raumschiff, ausgestattet mit Tarntechnologie und modernen Überwachungsgeräten für Infiltrations und Personenbeseitigungseinsätze.</i>"""
        "Darth Maul":
           display_name: """Darth Maul"""
           text: """Nachdem du einen Angriff durchgeführt hast, darfst du 2 %FORCE% ausgeben, um einen Bonus-Primärangriff gegen ein anderes Ziel durchzuführen. Falls dein Angriff verfehlt hat, darfst du jenen Bonus- Primärangriff stattdessen gegen dasselbe Ziel durchführen."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """Nachdem du eine Aktion durchgeführt hast, darfst du 1 %FORCE% ausgeben, um eine Aktion durchzuführen."""
        "Dash Rendar":
           display_name: """Dash Rendar"""
           text: """Solange du dich bewegst, ignorierst du Hindernisse."""
        "Del Meeko":
           display_name: """Del Meeko"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 gegen einen beschädigten Angreifer verteidigt, darf der Verteidiger 1 Verteidigungswürfel neu werfen."""
        "Delta Squadron Pilot":
           display_name: """Pilot der Delta-Staffel"""
           text: """<i class = flavor_text>Der TIE-Abwehrjäger ist nicht nur mit Raketenwerfern und sechs Kanonen an den Tragflächenspitzen, sondern auch mit Deflektorschilden und einem Hyperantrieb ausgestattet.</i>"""
        "Dengar":
           display_name: """Dengar"""
           text: """Nachdem du verteidigt hast, falls der Angreifer in deinem %FRONTARC% ist, darfst du 1 %CHARGE% ausgeben, um einen Bonusangriff gegen den Angreifer durchzuführen."""
        "Dineé Ellberger":
           display_name: """Dineé Ellberger"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls dein aufgedecktes Manöver dieselbe Geschwindigkeit hat wie das des feindlichen Schiffes, können die Würfel jenes Schiffes nicht modifiziert werden."""
        "Drea Renthal":
           display_name: """Drea Renthal"""
           text: """Solange ein befreundetes nicht-limitiertes Schiff einen Angriff durchführt, falls der Verteidiger in deinem Feuerwinkel ist, darf der Angreifer 1 Angriffswürfel neu werfen."""
        "Edon Kappehl":
           display_name: """Edon Kappehl"""
           text: """Nachdem du ein blaues oder weißes Manöver vollständig ausgeführt hast, falls du in dieser Runde noch kein Gerät abgeworfen oder gestartet hast, darfst du 1 Gerät abwerfen."""
        "Edrio Two Tubes":
           display_name: """Edrio Two Tubes"""
           text: """Bevor du aktiviert wirst, falls du fokussiert bist, darfst du eine Aktion durchführen. %LINEBREAK% <i>Errata: „Bevor“ statt „Nachdem“ (Saws Rebellenmiliz)</i>"""
        "Ello Asty":
           display_name: """Ello Asty"""
           text: """Nachdem du ein rotes Tallon-Rolle-Manöver [%TROLLLEFT% oder %TROLLRIGHT%] aufgedeckt hast, falls du 2 oder weniger Stressmarker hast, behandle jenes Manöver, als wäre es weiß."""
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
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du 1 %FORCE% ausgeben, um bis zu 2 deiner %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern."""
        "Ezra Bridger (Sheathipede)":
           display_name: """Ezra Bridger (Sheathipede)"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du 1 %FORCE% ausgeben, um bis zu 2 deiner %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern. """
        "Ezra Bridger (TIE Fighter)":
           display_name: """Ezra Bridger (TIE Fighter)"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du 1 %FORCE% ausgeben, um bis zu 2 deiner %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern."""
        "Feethan Ottraw Autopilot":
           display_name: """Autopilot von Feethan Ottraw"""
           text: """<i class = flavor_text>Feethan Ottraw Fertigbau beliefert die Separatisten nicht nur mit günstigen Wegwerfjägern, sondern entwickelte auch den Belbullab-22, der mit einer soliden Mischung aus Feuerkraft, Robustheit und Schubkraft aufwarten kann.</i>"""
        "Fenn Rau (Sheathipede)":
           display_name: """Fenn Rau (Sheathipede)"""
           text: """Bevor ein feindliches Schiff in deinem Feuerwinkel begonnen hat zu kämpfen, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten. Falls du das tust, kann jenes Schiff keine Marker ausgeben, um Würfel zu modifizieren, solange es während dieser Phase einen Angriff durchführt. %LINEBREAK% <i>Errata: „Bevor“ statt „Nachdem“</i>"""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls die Angriffsreichweite 1 ist, darfst du 1 zusätzlichen Würfel werfen."""
        "Finch Dallow":
           display_name: """Finch Dallow"""
           text: """Bevor du eine Bombe abwerfen würdest, darfst du sie stattdessen so auf der Spielfläche platzieren, dass sie dich berührt."""
        "Finn":
           display_name: """Finn"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1&nbsp;Leerseiten-Ergebnis hinzufügen oder du darfst stattdessen 1&nbsp;Anstrengungsmarker erhalten, um 1&nbsp;Fokus-Ergebnis hinzuzufügen."""
        "First Order Test Pilot":
           display_name: """Testpilot der Ersten Ordnung"""
           text: """<i class = flavor_text>Extreme Schubkraft und präzises Handling sind die Hauptmerkmale des TIE-Dämpfers, der sein volles Vernichtungspotential nur in den Händen eines wahren Spitzenpiloten entfaltet. Jeder andere wäre schnell überfordert und würde die Kontrolle über das wendige Schiff verlieren.</i>"""
        "Foreman Proach":
           display_name: """Vorarbeiter Proach"""
           text: """Bevor du kämpfst, darfst du 1 feindliches Schiff in deinem %BULLSEYEARC% in Reichweite 1-2 wählen und 1 Entwaffnet-Marker erhalten. Falls du das tust, erhält jenes Schiff 1 Fangstrahlmarker."""
        "Freighter Captain":
           display_name: """Frachtercaptain"""
           text: """<i class = flavor_text>Viele Raumfahrer bestreiten ihr Leben, indem sie den Outer Rim bereisen, wo der Unterschied zwischen Schmugglern und seriösen Händlern oft kaum zu erkennen ist. Am Rande der Zivilisation sind Käufer äußerst selten, daher sollte man nicht nach der Herkunft der Ware fragen, solange der Preis niedrig genug ist. </i>"""
        "Gamma Squadron Ace":
           display_name: """Fliegerass der Gamma-Staffel"""
           text: """<i class = flavor_text>Der TIE-Bomber ist zwar nicht so schnell und wendig wie ein TIE/ln, dafür besitzt er genügend Feuerkraft, um praktisch jedes feindliche Ziel auszulöschen. </i>"""
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
           text: """Solange ein befreundetes Schiff einen Angriff durchführt, falls der Verteidiger in deinem %FRONTARC% ist, darf der Angreifer 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern."""
        "General Grievous":
           display_name: """General Grievous"""
           text: """Solange du einen Primärangriff durchführst, falls du nicht im Feuerwinkel des Verteidigers bist, darfst du bis zu 2 Angriffswürfel neu werfen."""
        "Genesis Red":
           display_name: """Genesis Red"""
           text: """Nachdem du ein Ziel erfasst hast, musst du alle deine Fokus- und Ausweichmarker entfernen. Dann erhalte dieselbe Anzahl an Fokus- und Ausweichmarkern, die das erfasste Schiff hat."""
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
           text: """Während der Systemphase darfst du 1 Entwaffnet-Marker erhalten und ein befreundetes Schiff in Reichweite&nbsp;1-2 wählen. Falls du das tust, erhält es 1&nbsp;Fangstrahlmarker, dann repariert es 1 seiner offenen <strong>Schiff</strong>&nbsp;-Schadenskarten."""
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
           text: """<i class = flavor_text>Viele langjährig bewährte Modifikationen wurden in die Serienausstattung des RZ-2 übernommen. Für waghalsige Piloten ist die höhere Stabilität des Jägers nur ein Anreiz, noch weiter an seine Grenzen zu gehen.</i>"""
        "Green Squadron Pilot":
           display_name: """Pilot der grünen Staffel"""
           text: """<i class = flavor_text>Aufgrund seiner empfindlichen Steuerung und extremen Wendigkeit war das Cockpit des A-Flüglers nur für besonders begabte Piloten bestimmt.</i>"""
        "Greer Sonnel":
           display_name: """Greer Sonnel"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, darfst du deinen %SINGLETURRETARC% rotieren."""
        "Guri":
           display_name: """Guri"""
           text: """Zu Beginn der Kampfphase, falls mindestens 1 feindliches Schiff in Reichweite 0-1 ist, darfst du 1 Fokusmarker erhalten."""
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
           text: """Nachdem du ein rotes oder blaues Manöver aufgedeckt hast, darfst du dein Rad auf ein anderes Manöver derselben Schwierigkeit einstellen."""
        "Hera Syndulla (A-Wing)":
           display_name: """Hera Syndulla"""
           text: """Solange ein anderes befreundetes Schiff in Reichweite 1–2 verteidigt oder einen Angriff durchführt, darfst du während eines Schrittes „Würfel modifizieren“ 1 deiner Fokusmarker, Ausweichmarker oder Zielerfassungen auf jenes Schiff transferieren. %LINEBREAK% <i>Errata (RR: 1.2.0 [06/14/2021]): Zeitfenster genauer spezifiziert</i>"""
        "Hera Syndulla (B-Wing)":
           display_name: """Hera Syndulla"""
           text: """Solange ein anderes befreundetes Schiff in Reichweite 1–2 verteidigt oder einen Angriff durchführt, darfst du während eines Schrittes „Würfel modifizieren“ 1 deiner Fokusmarker, Ausweichmarker oder Zielerfassungen auf jenes Schiff transferieren. %LINEBREAK% <i>Errata (RR: 1.2.0 [06/14/2021]): Zeitfenster genauer spezifiziert</i>"""
        "Hera Syndulla (VCX-100)":
           display_name: """Hera Syndulla (VCX-100)"""
           text: """Nachdem du ein rotes oder blaues Manöver aufgedeckt hast, darfst du dein Rad auf ein anderes Manöver derselben Schwierigkeit einstellen."""
        "Hired Gun":
           display_name: """Söldner"""
           text: """<i class = flavor_text>Wer mit imperialen Credits winkt, kann auf eine große, wenn auch nicht sonderlich vertrauenswürdige Helferschar zählen.</i>"""
        "Horton Salm":
           display_name: """Horton Salm"""
           text: """Solange du einen Angriff durchführst, darfst du für jedes andere befreundete Schiff in Reichweite 0-1 des Verteidigers 1 Angriffswürfel neu werfen."""
        "IG-88A":
           display_name: """IG-88A"""
           text: """Zu Beginn der Kampfphase darfst du 1 befreundetes Schiff mit %CALCULATE% in seiner Aufwertungsleiste in Reichweite 1-3 wählen. Falls du das tust, transferiere 1 deiner Berechnungsmarker auf es. """
        "IG-88B":
           display_name: """IG-88B"""
           text: """Nachdem du einen Angriff durchgeführt hast, der verfehlt hat, darfst du einen Bonus-%CANNON%-Angriff durchführen."""
        "IG-88C":
           display_name: """IG-88C"""
           text: """Nachdem du eine %BOOST%-Aktion durchgeführt hast, darfst du eine %EVADE%-Aktion durchführen."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """Solange du einen Segnor-Looping (%SLOOPLEFT% oder %SLOOPRIGHT%)ausführst, darfst du stattdessen eine andere Schablone derselben Geschwindigkeit verwenden: entweder die Wende (%TURNLEFT% oder %TURNRIGHT%) mit gleicher Orientierung oder die Gerade (%STRAIGHT%)."""
        "Ibtisam":
           display_name: """Ibtisam"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, falls du gestresst bist, darfst du 1 Angriffswürfel werfen. Bei einem %HIT%- oder %CRIT%-Ergebnis entferne 1 Stressmarker."""
        "Iden Versio":
           display_name: """Iden Versio"""
           text: """Bevor ein befreundeter TIE/ln-Jäger in Reichweite 0-1 1 oder mehr Schaden erleiden würde, darfst du 1 %CHARGE% ausgeben. Falls du das tust, verhindere jenen Schaden."""
        "Imdaar Test Pilot":
           display_name: """Testpilot von Imdaar"""
           text: """<i class = flavor_text>In einem geheimen Forschungsprojekt auf dem Mond Imdaar Alpha wurde entwickelt, was viele für unmöglich gehalten hatten: der TIE-Phantom, ein kleiner Sternenjäger mit Tarnvorrichtung.</i>"""
        "Inaldra":
           display_name: """Inaldra"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1 %HIT%-Schaden erleiden, um beliebig viele deiner Würfel neu zu werfen."""
        "Inquisitor":
           display_name: """Inquisitor"""
           text: """<i class = flavor_text>Die gefürchteten Inquisitoren haben nicht nur freie Hand bei der Ausübung ihrer Pflichten, sondern auch Zugang zu modernster Spitzentechnik wie dem TIE-v1-Turbojäger-Prototypen.</i>"""
        "Jake Farrell":
           display_name: """Jake Farrell"""
           text: """Nachdem du eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0-1 wählen. Jenes Schiff darf eine %FOCUS%-Aktion durchführen."""
        "Jakku Gunrunner":
           display_name: """Waffenschmuggler von Jakku"""
           text: """<i class = flavor_text>Der Quadrijet-Transferschlepper, im Volksmund „Quadjumper“ genannt, ist gleichermaßen behände in Weltall und Atmosphäre, was ihn zu einem beliebten Schmuggler- und Entdeckerschiff macht. </i>"""
        "Jan Ors":
           display_name: """Jan Ors"""
           text: """Solange ein befreundetes Schiff in deinem Feuerwinkel einen Primärangriff durchführt, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten. Falls du das tust, darf jenes Schiff 1 zusätzlichen Angriffswürfel werfen."""
        "Jaycris Tubbs":
           display_name: """Jaycris Tubbs"""
           text: """Nachdem du ein blaues Manöver vollständig ausgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0-1 wählen. Falls du das tust, entfernt jenes Schiff 1 Stressmarker."""
        "Jedi Knight":
           display_name: """Jedi-Ritter"""
           text: """<i class = flavor_text>Nach Ausbruch der Klonkriege gelobten die Jedi-Ritter die Republik zu bewahren und übernahmen das Kommando über eine Legion von Klontruppen, die sie seither in die Schlacht führen.</i>"""
        "Jedi Knight (Delta-7b)":
           display_name: """Jedi-Ritter"""
           text: """<i class = flavor_text>Nach Ausbruch der Klonkriege gelobten die Jedi-Ritter die Republik zu bewahren und übernahmen das Kommando über eine Legion von Klontruppen, die sie seither in die Schlacht führen.</i>"""
        "Jek Porkins":
           display_name: """Jek Porkins"""
           text: """Nachdem du einen Stressmarker bekommen hast, darfst du 1 Angriffswürfel werfen, um ihn zu entfernen. Bei einem %HIT%-Ergebnis erleide 1 %HIT%-Schaden."""
        "Jessika Pava":
           display_name: """Jessika Pava"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1 %CHARGE% oder 1 nicht-wiederkehrende %CHARGE% von deiner ausgerüsteten %ASTROMECH%-Aufwertung ausgeben, um für jedes andere befreundete Schiff in Reichweite 0-1 bis zu 1 deiner Würfel neu zu werfen."""
        "Joph Seastriker":
           display_name: """Joph Seastriker"""
           text: """Nachdem du 1 Schild verloren hast, erhalte 1 Ausweichmarker."""
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
           text: """Solange ein befreundetes Schiff in deinem Feuerwinkel verteidigt, darfst du 1 %FORCE% ausgeben. Falls du das tust, wirft der Angreifer 1 Angriffswürfel weniger."""
        "Kare Kun":
           display_name: """Kare Kun"""
           text: """Solange du Schub gibst, darfst du stattdessen die [1 %TURNLEFT%]- oder [1 %TURNRIGHT%]-Schablone verwenden."""
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
           text: """Nachdem du eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hast, darfst du deine ausgerüstete %CONFIGURATION%-Aufwertungskarte umdrehen."""
        "Kyle Katarn":
           display_name: """Kyle Katarn"""
           text: """Zu Beginn der Kampfphase darfst du 1 deiner Fokusmarker auf ein befreundetes Schiff in deinem Feuerwinkel transferieren."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """Nachdem du verteidigt hast, darfst du 1 %FORCE% ausgeben, um dem Angreifer den Zustand <strong>Ich zeige dir die dunkle Seite</strong> zuzuordnen."""
        "L3-37":
           display_name: """L3-37"""
           text: """Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%) ."""
        "L3-37 (Escape Craft)":
           display_name: """L3-37 (Escape Craft)"""
           text: """Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%) ."""
        "Laetin A'shera":
           display_name: """Laetin A’shera"""
           text: """Nachdem du verteidigt oder einen Angriff durchgeführt hast, falls der Angriff verfehlt hat, erhalte 1 Ausweichmarker."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """Nachdem du ein blaues Manöver vollständig ausgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0-3 wählen. Jenes Schiff darf eine Aktion durchführen."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian (Scum)"""
           text: """Nachdem du Würfel geworfen hast, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten um alle deine Leerseiten neu zu werfen."""
        "Lando Calrissian (Scum) (Escape Craft)":
           display_name: """Lando Calrissian (Scum) (Escape Craft)"""
           text: """Nachdem du Würfel geworfen hast, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten um alle deine Leerseiten neu zu werfen."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """Zu Beginn der Kampfphase darfst du ein Schiff in Reichweite 1 wählen und eine Zielerfassung, die du auf jenem Schiff hast, ausgeben. Falls du das tust, erhält jenes Schiff 1 Fangstrahlmarker."""
        "Leevan Tenza":
           display_name: """Leevan Tenza"""
           text: """Nachdem du eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hast, darfst du eine rote %EVADE%-Aktion durchführen."""
        "Lieutenant Bastian":
           display_name: """Lieutenant Bastian"""
           text: """Nachdem einem Schiff in Reichweite 1-2 eine Schadenskarte zugeteilt worden ist, darfst du jenes Schiff als Ziel erfassen."""
        "Lieutenant Blount":
           display_name: """Lieutenant Blount"""
           text: """Solange du einen Primärangriff durchführst, falls mindestens 1 anderes befreundetes Schiff in Reichweite 0-1 des Verteidigers ist, darfst du 1 zusätzlichen Angriffswürfel werfen."""
        "Lieutenant Dormitz":
           display_name: """Lieutenant Dormitz"""
           text: """<strong>Aufbau</strong>: Nachdem du platziert worden bist, können befreundete kleine Schiffe irgendwo auf der Spielfläche in Reichweite 0-2 von dir platziert werden.%LINEBREAK%<i>Errata: „andere befreundete Schiffe“ durch „befreundete kleine Schiffe“ ersetzt</i>"""
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
           text: """Nachdem du Schaden erlitten hast, darfst du 1 %CHARGE% ausgeben, um eine Aktion durchzuführen."""
        "Logistics Division Pilot":
           display_name: """Pilot der Logistikdivision"""
           text: """<i class = flavor_text>Ohne den Rückhalt der Neuen Republik sind die Kämpfer des Widerstands oft gezwungen, neben ihren eigentlichen Pflichten auch als Transporterpiloten oder Mechaniker zu arbeiten. Auf diese Weise setzen sie ihr Können und ihr technisches Fachwissen für den Kampf gegen die Erste Ordnung ein.</i>"""
        "Lok Revenant":
           display_name: """Lok-Pirat"""
           text: """<i class = flavor_text>Das Nubianische Entwicklungskollektiv konstruierte den Scurrg-H-6-Bomber als vielseitige Jagdmaschine, ausgestattet mit Hochleistungsschilden und einem tödlichen Waffenarsenal.</i>"""
        "Lothal Rebel":
           display_name: """Rebell von Lothal"""
           text: """<i class = flavor_text>Der VCX-100 ist ein weiteres Erfolgsmodell der Corellianischen Ingenieursgesellschaft, geräumiger und mit mehr Ausstattungsoptionen als die beliebte YT-Serie.</i>"""
        "Lowhhrick":
           display_name: """Lowhhrick"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-1 zum Verteidiger geworden ist, darfst du 1 Verstärkungsmarker ausgeben. Falls du das tust, erhält jenes Schiff 1 Ausweichmarker."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """Nachdem du zum Verteidiger geworden bist (bevor Würfel geworfen werden), darfst du 1 %FORCE% wiederherstellen."""
        "Luminara Unduli":
           display_name: """Luminara Unduli"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 verteidigt, falls es nicht im %BULLSEYEARC% des Angreifers ist, darfst du 1 %FORCE% ausgeben. Falls du das tust, ändere 1 %CRIT%-Ergebnis in ein %HIT%-Ergebnis oder 1%HIT%-Ergebnis in ein %FOCUS%-Ergebnis. """
        "Luminara Unduli (Delta-7b)":
           display_name: """Luminara Unduli"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 verteidigt, falls es nicht im %BULLSEYEARC% des Angreifers ist, darfst du 1 %FORCE% ausgeben. Falls du das tust, ändere 1 %CRIT%-Ergebnis in ein %HIT%-Ergebnis oder 1%HIT%-Ergebnis in ein %FOCUS%-Ergebnis. """
        "L'ulo L'ampar":
           display_name: """L’ulo L’ampar"""
           text: """Solange du verteidigst oder einen Primärangriff durchführst, falls du gestresst bist, <b>musst</b> du 1 Verteidigungswürfel weniger oder 1 zusätzlichen Angriffswürfel werfen."""
        "Maarek Stele":
           display_name: """Maarek Stele"""
           text: """Solange du einen Angriff durchführst, falls dem Verteidiger eine offene Scha­dens­karte zugeteilt werden würde, ziehe stattdessen 3 Schadenskarten, wähle 1 und lege die übrigen ab."""
        "Mace Windu":
           display_name: """Mace Windu"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt hast, stelle 1 %FORCE% wieder her. """
        "Mace Windu (Delta-7b)":
           display_name: """Mace Windu"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt hast, stelle 1 %FORCE% wieder her. """
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 verteidigt, kann der Angreifer nicht mehr als 1 Angriffswürfel neu werfen."""
        "Major Rhymer":
           display_name: """Major Rhymer"""
           text: """Solange du einen %TORPEDO%- oder %MISSILE%-Angriff durchführst, darfst du die Reichweitenbedingung um 1 erhöhen oder verringern, bis zu einem Limit von 0-3. """
        "Major Stridan":
           display_name: """Major Stridan"""
           text: """Solange du koordinierst oder den Effekt 1 deiner Aufwertungen abhandelst, darfst du befreundete Schiffe in Reichweite 2-3 behandeln, als wären sie in Reichweite 0 oder Reichweite 1."""
        "Major Vermeil":
           display_name: """Major Vermeil"""
           text: """Solange du einen Angriff durchführst, falls der Verteidiger keine grünen Marker hat, darfst du 1 deiner Leerseiten- oder %FOCUS%-Ergebnisse in ein %HIT%-Ergebnis ändern. %LINEBREAK% <i>Errata: „oder“ statt „/“ (1. Edition)</i>"""
        "Major Vynder":
           display_name: """Major Vynder"""
           text: """Solange du verteidigst, falls du entwaffnet bist, wirf 1 zusätzlichen Verteidigungswürfel."""
        "Manaroo":
           display_name: """Manaroo"""
           text: """Zu Beginn der Kampfphase darfst du ein befreundetes Schiff in Reichweite 0-1 wählen. Falls du das tust, transferiere alle grünen Marker, die dir zugeordnet sind, auf jenes Schiff."""
        "Mining Guild Sentry":
           display_name: """Wachposten der Minengilde"""
           text: """<i class = flavor_text>Im Rahmen ihrer Kooperation mit dem Imperium erhält die Minengilde modifizierte TIE/ln-Jäger zum Schutz ihrer Anlagen. Aus den Stabilisatoren dieser Schiffe wurden Solarzellen entfernt, um das Sichtfeld des Piloten zu vergrößern. Darüber hinaus profitieren die Firmenpiloten von einem deutlich umfangreicheren Lebenserhaltungssystem. </i>"""
        "Mining Guild Surveyor":
           display_name: """Rohstoffsucher der Minengilde"""
           text: """<i class = flavor_text>Da die Bauprojekte des Imperiums unglaubliche Mengen an Rohmaterial verschlingen, sucht die Minengilde aggressiv nach Vorkommen von Doonium-Erz und beutet neu entdeckte Adern auf Batonn, Lothal und Umbara gnadenlos aus.</i>"""
        "Miranda Doni":
           display_name: """Miranda Doni"""
           text: """Solange du einen Primärangriff durchführst, darfst du entweder 1 Schild ausgeben, um 1 zusätzlichen Angriffswürfel zu werfen, oder, falls du keine Schilde hast, du darfst 1 Angriffswürfel weniger werfen, um 1 Schild wiederherzustellen."""
        "Moralo Eval":
           display_name: """Moralo Eval"""
           text: """Falls du fliehen würdest, darfst du 1 %CHARGE% ausgeben. Falls du das tust, platziere dich selbst stattdessen in der Reserve. Zu Beginn der nächsten Planungsphase platziere dich selbst innerhalb von Reichweite 1 des Spielflächenrandes, über den du geflohen bist."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """Nachdem du einen Stressmarker erhalten hast, falls ein feindliches Schiff in deinem %FRONTARC% in Reichweite 0-1 ist, darfst du jenen Stressmarker entfernen."""
        "Nodin Chavdri":
           display_name: """Nodin Chavdri"""
           text: """<i class = flavor_text>Nachdem du koordiniert hast oder koordiniert worden bist, falls du 2&nbsp;oder weniger Stressmarker hast, darfst du 1&nbsp;Aktion aus deiner Aktionsleiste als rote Aktion durchführen, auch falls du gestresst bist.</i>"""
        "Norra Wexley (Y-Wing)":
           display_name: """Norra Wexley (Y-Wing)"""
           text: """Solange du verteidigst, falls ein feindliches Schiff in Reichweite 0-1 ist, füge 1 %EVADE%-Ergebnis zu deinen Würfelergebnissen hinzu."""
        "Norra Wexley":
           display_name: """Norra Wexley"""
           text: """Solange du verteidigst, falls ein feindliches Schiff in Reichweite 0-1 ist, füge 1 %EVADE%-Ergebnis zu deinen Würfelergebnissen hinzu. %LINEBREAK% <i>Errata: „du darfst“ gestrichen</i>"""
        "Nu Squadron Pilot":
           display_name: """Pilot der Nu-Staffel"""
           text: """<i class = flavor_text>Inspiriert von anderen Modellen der Cygnus Raumwerften, ist der Sternflügler der Alpha-Klasse ein vielseitiges Kanonenboot, das für verschiedene Einsatzgebiete umgerüstet werden kann und somit ideal für die Spezialeinheiten der Imperialen Flotte ist.</i>"""
        "N'dru Suhlak":
           display_name: """N’dru Suhlak"""
           text: """Solange du einen Primärangriff durchführst, falls keine anderen befreundeten Schiffe in Reichweite 0-2 sind, wirf 1 zusätzlichen Angriffswürfel."""
        "Obi-Wan Kenobi":
           display_name: """Obi-Wan Kenobi"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-2 einen Fokusmarker ausgegeben hat, darfst du 1 %FORCE% ausgeben. Falls du das tust, erhält jenes Schiff 1 Fokusmarker. """
        "Obi-Wan Kenobi (Delta-7b)":
           display_name: """Obi-Wan Kenobi"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-2 einen Fokusmarker ausgegeben hat, darfst du 1 %FORCE% ausgeben. Falls du das tust, erhält jenes Schiff 1 Fokusmarker. """
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
           text: """<i class = flavor_text>Der TIE/se ist ein vielseitiger Jäger, der mit seinen spezialisierten Waffen und Bordsystemen bestens für die Einsätze der Spezialeinheiten ausgerüstet ist.</i>"""
        "Omicron Group Pilot":
           display_name: """Pilot der Omicron-Gruppe"""
           text: """<i class = flavor_text>Die Raumfähre der Lambda-Klasse zeichnet sich durch ihre außergewöhnliche Drei-Tragflächen-Form und modernste Sensortechnologie aus. Als leichtes Multifunktionsschiff übernimmt sie eine wichtige Rolle in der Imperialen Flotte.</i>"""
        "Onyx Squadron Ace":
           display_name: """Fliegerass der Onyx-Staffel"""
           text: """<i class = flavor_text>Der experimentelle TIE-Abwehrjäger stellt alle anderen modernen Sternenjäger in den Schatten, wenngleich Größe, Schubkraft und Bewaffnung das Gewicht und den Preis des Modells in die Höhe treiben.</i>"""
        "Onyx Squadron Scout":
           display_name: """Aufklärer der Onyx-Staffel"""
           text: """<i class = flavor_text>Der für den Langzeiteinsatz konzipierte TIE/ag wird in erster Linie von Elitepiloten geflogen, die das Potential des schwer bewaffneten und wendigen Jägers voll ausschöpfen können.</i>"""
        "Outer Rim Pioneer":
           display_name: """Pionier aus dem Outer Rim"""
           text: """Befreundete Schiffe in Reichweite 0-1 können Angriffe in Reichweite 0 zu Hindernissen durchführen."""
        "Outer Rim Smuggler":
           display_name: """Schmuggler aus dem """
           text: """<i class = flavor_text>Mit seiner robusten Bauweise und modularen Konstruktion gehört der YT-1300 zu den beliebtesten, weitverbreitetsten und am stärksten modifizierten Raumfrachtern der Galaxis. </i>"""
        "Overseer Yushyn":
           display_name: """Raffineriebetreiber Yushyn"""
           text: """Bevor ein befreundetes Schiff in Reichweite 1 einen Entwaffnet-Marker erhalten würde, falls jenes Schiff nicht gestresst ist, darfst du 1 %CHARGE% ausgeben. Falls du das tust, erhält jenes Schiff stattdessen 1 Stressmarker."""
        "Padmé Amidala":
           display_name: """Padmé Amidala"""
           text: """Solange ein feindliches Schiff in deinem %FRONTARC% verteidigt oder einen Angriff durchführt, kann jenes Schiff nur 1&nbsp;%FOCUS% -Ergebnis modifizieren (andere Ergebnisse können weiterhin modifiziert werden)."""
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
           text: """<i class = flavor_text>Die Petranaki-Arena ist ein gewaltiges Bauwerk auf dem Planeten Geonosis und der Ort, an dem die erste Schlacht der Klonkriege geschlagen wurde.</i> """
        "Petty Officer Thanisson":
           display_name: """Unteroffizier Thanisson"""
           text: """Während der Aktivierungs- oder Kampfphase, nachdem ein Schiff in deinem %FRONTARC% in Reichweite 0-2 1 Stressmarker erhalten hat, darfst du 1 %CHARGE% ausgeben. Falls du das tust, erhält jenes Schiff 1 Fangstrahlmarker."""
        "Phoenix Squadron Pilot":
           display_name: """Pilot der Phönix-Staffel"""
           text: """<i class = flavor_text>Unter der Führung von Commander Jun Sato stellen sich die tapferen, aber unerfahrenen Piloten der Phönix-Staffel dem aussichtslosen Kampf gegen das Galaktische Imperium.</i>"""
        "Planetary Sentinel":
           display_name: """Planetarer Wachposten"""
           text: """<i class = flavor_text>Zum Schutz seiner vielen militärischen Einrichtungen benötigt das Imperium eine mobile und wachsame Verteidigungsstreitmacht.</i>"""
        "Plo Koon":
           display_name: """Plo Koon"""
           text: """Zu Beginn der Kampfphase darfst du 1 %FORCE% ausgeben und ein anderes befreundetes Schiff in Reichweite 0-2 wählen. Falls du das tust, darfst du 1 grünen Marker auf es transferieren oder 1 orangefarbenen Marker von ihm auf dich transferieren. """
        "Plo Koon (Delta-7b)":
           display_name: """Plo Koon"""
           text: """Zu Beginn der Kampfphase darfst du 1 %FORCE% ausgeben und ein anderes befreundetes Schiff in Reichweite 0-2 wählen. Falls du das tust, darfst du 1 grünen Marker auf es transferieren oder 1 orangefarbenen Marker von ihm auf dich transferieren. """
        "Poe Dameron":
           display_name: """Poe Dameron"""
           text: """Nachdem du eine Aktion durchgeführt hast, darfst du 1 %CHARGE% ausgeben, um eine weiße Aktion durchzuführen, wobei du sie behandelst, als wäre sie rot."""
        "Prince Xizor":
           display_name: """Prinz Xizor"""
           text: """Solange du verteidigst, nach dem Schritt „Ergebnisse neutralisieren“, darf ein anderes befreundetes Schiff in Reichweite 0-1 und im Angriffswinkel 1 %HIT%- oder %CRIT%-Schaden erleiden. Falls es das tut, negiere 1 passendes Ergebnis.%LINEBREAK%<strong>Mikrodüsen:</strong> Solange du eine Fassrolle durchführst, <b>musst</b> du die %BANKLEFT%-oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Quinn Jast":
           display_name: """Quinn Jast"""
           text: """Zu Beginn der Kampfphase darfst du 1 Entwaffnet-Marker erhalten, um 1 %CHARGE% von 1 deiner ausgerüsteten Aufwertungen wiederherzustellen."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """Zu Beginn der Kampfphase, falls ein feindliches Schiff in deinem %REARARC% ist, erhalte 1&nbsp;Berechnungsmarker.%LINEBREAK%"""
        "Rear Admiral Chiraneau":
           display_name: """Konteradmiral Chiraneau"""
           text: """Solange du einen Angriff durchführst, falls du verstärkt bist und der Verteidiger in dem %FULLFRONTARC% oder %FULLREARARC% ist, der zu deinem Verstärkungsmarker passt, darfst du 1 deiner %FOCUS%-Ergebnisse in ein %CRIT%-Ergebnis ändern."""
        "Rebel Scout":
           display_name: """Rebellen-Aufklärer"""
           text: """<i class = flavor_text>Ein Vogel mit ausgebreiteten Schwingen diente der Corellianischen Ingenieursgesellschaft als Vorbild für das Design der „Hawk“-Serie, einer Reihe von erstklassigen Transportschiffen. Der flinke und robuste HWK-290 wird oft von Rebellenagenten als mobile Operationsbasis eingesetzt.</i>"""
        "Red Squadron Bomber":
           display_name: """Bomber der Roten Staffel"""
           text: """<i class = flavor_text>Bei der Schlacht von Geonosis gab die rote Staffel den TFAT-Kanonenbooten Feuerschutz, damit sie sicher die Oberfläche erreichten.</i>"""
        "Red Squadron Expert":
           display_name: """Elitepilot der roten Staffel"""
           text: """<i class = flavor_text>Hauptsächlich besteht das Sternenjägerkorps des Widerstands aus jungen Bürgern der Neuen Republik. Verstärkt werden sie von Veteranen des Galaktischen Bürgerkriegs, die fest entschlossen sind, zu beenden, was damals begonnen wurde.</i>"""
        "Red Squadron Veteran":
           display_name: """Veteran der roten Staffel"""
           text: """<i class = flavor_text>Die rote Staffel wurde als Elite-Jägerverband gegründet und zählt einige der besten Piloten der Allianz zu ihren Mitgliedern.</i>"""
        "Resistance Sympathizer":
           display_name: """Sympathisant des Widerstands"""
           text: """<i class = flavor_text>Nach der Zerstörung des Hosnian-Systems stellten viele Raumfahrer bereitwillig ihre Schiffe dem Widerstand zur Verfügung.</i>"""
        "Rexler Brath":
           display_name: """Rexler Brath"""
           text: """Nachdem du einen Angriff durchgeführt hast, der getroffen hat, falls du ausweichst, lege 1 der Schadenskarten des Verteidigers offen."""
        "Rey":
           display_name: """Rey"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls das feindliche Schiff in deinem %FRONTARC% ist, darfst du 1 %FORCE% ausgeben, um 1 deiner Leerseiten-Ergebnisse in ein %EVADE%- oder %HIT%-Ergebnis zu ändern."""
        "Rho Squadron Pilot":
           display_name: """Pilot der Rho-Staffel"""
           text: """<i class = flavor_text>Die Elitepiloten der Rho-Staffel nutzen die Xg-1-Angriffskonfiguration sowie das Os-1-Waffenarsenal des Sternflüglers der Alpha-Klasse mit verheerender Effizienz, um der Rebellion das Fürchten zu lehren. </i>"""
        "Ric Olié":
           display_name: """Ric Olié"""
           text: """Solange du verteidigst oder einen Primärangriff durchführst, falls die Geschwindigkeit deines aufgedeckten Manövers höher als die des feindlichen Schiffes ist, wirf 1 &nbsp;zusätzlichen Würfel."""
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
           text: """<i class = flavor_text>Angeführt von Baron Soontir Fel, gehören die Piloten der Saber-Staffel zur absoluten Elite des Imperiums. Ihre TIE-Abfangjäger werden mit blutroten Streifen markiert, um Piloten mit mindestens zehn bestätigten Abschüssen zu kennzeichnen.</i>"""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """Bevor du aktiviert wirst, darfst du eine %BARRELROLL%- oder %BOOST%-Aktion durchführen."""
        "Sabine Wren (TIE Fighter)":
           display_name: """Sabine Wren (TIE Fighter)"""
           text: """Bevor du aktiviert wirst, darfst du eine %BARRELROLL%- oder %BOOST%-Aktion durchführen."""
        "Sabine Wren (Scum)":
           display_name: """Sabine Wren (Scum)"""
           text: """Solange du verteidigst, falls der Angreifer in deinem %SINGLETURRETARC% in Reichweite 0-2 ist, darfst du 1 %FOCUS%-Ergebnis zu deinen Würfelergebnissen hinzufügen."""
        "Saesee Tiin":
           display_name: """Saesee Tiin"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-2 sein Rad aufgedeckt hat, darfst du 1 %FORCE% ausgeben. Falls du das tust, stelle sein Rad auf ein anderes Manöver derselben Geschwindigkeit und Schwierigkeit ein. """
        "Saesee Tiin (Delta-7b)":
           display_name: """Saesee Tiin"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-2 sein Rad aufgedeckt hat, darfst du 1 %FORCE% ausgeben. Falls du das tust, stelle sein Rad auf ein anderes Manöver derselben Geschwindigkeit und Schwierigkeit ein. """
        "Sarco Plank":
           display_name: """Sarco Plank"""
           text: """Solange du verteidigst, darfst du deinen Wendigkeitswert so behandeln, als würde er der Geschwindigkeit des Manövers entsprechen, das du in dieser Runde ausgeführt hast."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """Solange ein beschädigtes befreundetes Schiff in Reichweite 0-3 einen Angriff durchführt, darf es 1 Angriffswürfel neu werfen."""
        "Scarif Base Pilot":
           display_name: """Pilot der Scarif-Basis"""
           text: """<i class = flavor_text>Der TIE-Schnitter war für den Transport von Elitetruppen in besonders hart umkämpfte Gefechtszonen konzipiert. Berühmt wurde er in der Schlacht von Scarif, wo er Direktor Krennics gefürchtete Todestruppen transportierte.</i>"""
        "Scimitar Squadron Pilot":
           display_name: """Pilot der Scimitar-Staffel"""
           text: """<i class = flavor_text>Der TIE/sa ist außergewöhnlich wendig für einen Bomber und kann sein Ziel mit absoluter Präzision anvisieren, um den Kollateralschaden zu minimieren. </i>"""
        "Separatist Bomber":
           display_name: """Separatistenbomber"""
           text: """<i class = flavor_text>Die Droidenarmeen der Separatisten empfinden kein Mitleid und vermeiden daher keine Kollateralschäden an der Zivilbevölkerung.</i>"""
        "Separatist Drone":
           display_name: """Separatistendrohne"""
           text: """<i class = flavor_text>Je weiter die Klonkriege eskalieren, desto mehr setzen die Separatisten auf die Entwicklung neuartiger Droidenjäger und Taktikdroiden, die sie steuern.</i>"""
        "Serissu":
           display_name: """Serissu"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-1 verteidigt, darf es 1 seiner Würfel neu werfen."""
        "Seventh Sister":
           display_name: """Siebte Schwester"""
           text: """Solange du einen Primärangriff durchführst, vor dem Schritt „Ergebnisse neutralisieren“, darfst du 2 %FORCE% ausgeben, um 1 %EVADE%-Ergebnis zu negieren."""
        "Seyn Marana":
           display_name: """Seyn Marana"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %CRIT%-Ergebnis ausgeben. Falls du das tust, teile dem Verteidiger 1 verdeckte Schadenskarte zu, dann negiere deine übrigen Ergebnisse."""
        "Shadow Squadron Veteran":
           display_name: """Veteran der Schatten-Staffel"""
           text: """<i class = flavor_text>Die Schatten-Staffel, ausgebildet von Jedi-Fliegerass Anakin Skywalker, ist seit Beginn der Klonkriege im Einsatz und hat bei Kadavo und gegen General Grievous‘ Flaggschiff, die Malevolencebedeutende Siege errungen.</i>"""
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
           text: """<i class = flavor_text>In einer geheimen Forschungseinrichtung in den Unbekannten Regionen entwickelte Sienar-Jaemus Flottensysteme einen Nachfolger des vielgerühmten TIE-Abwehrjägers, den hochmodernen TIE-Dämpfer.</i>"""
        "Sigma Squadron Ace":
           display_name: """Fliegerass der Sigma-Staffel"""
           text: """<i class = flavor_text>Der TIE-Phantom ist nicht nur mit Schilden und einem Hyperantrieb, sondern auch mit fünf Laserkanonen ausgestattet, was ihn zu einem der schlagkräftigsten Jäger des Imperiums macht.</i>"""
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
           text: """Zu Beginn der Kampfphase, falls ein feindliches Schiff in deinem %BULLSEYEARC% ist, erhalte 1 Fokusmarker."""
        "Spice Runner":
           display_name: """Spiceschmuggler"""
           text: """<i class = flavor_text>Trotz seines vergleichsweise kleinen Laderaums ist der HWK-290 ein beliebtes Modell unter Schmugglern, die sich auf den diskreten Transport von hochwertigen Gütern spezialisiert haben.</i>"""
        "Squad Seven Veteran":
           display_name: """Veteran von Trupp Sieben"""
           text: """<i class = flavor_text>Klontrupp Sieben ist eine Spezialeinheit der Doppelbogen-Flotte, die unter dem Kommando legendärer Jedi-Generäle wie Plo Koon und Obi-Wan Kenobi in den Schlachten von Coruscant und Cato Neimoidia großen Ruhm erlangte.</i>"""
        "Stalgasin Hive Guard":
           display_name: """Schwarmgarde der Stalgasin-Kolonie """
           text: """<i class = flavor_text>Speziell auf die physiologischen Besonderheiten der Geonosianer angepasst, kann der Sternenjäger der Nantex-Klasse Manöver fliegen, welche die meisten anderen Schiffe - und ihre Piloten - auseinanderreißen würden.</i> """
        "Starkiller Base Pilot":
           display_name: """Pilot der Starkiller-Basis"""
           text: """<i class = flavor_text>Das Kommandoshuttle der Ypsilon-Klasse dient als mobile Einsatzbasis für viele leitende Offiziere und Agenten der Ersten Ordnung. Sie nutzen seine leistungsstarken Sensoren und Kommunikationsanlagen, um die Verbreitung von Angst und Schrecken in der Galaxis zu koordinieren.</i>"""
        "Storm Squadron Ace":
           display_name: """Fliegerass der Storm-Staffel"""
           text: """<i class = flavor_text>Der TIE-x1-Turbojäger wurde nur in geringer Stückzahl produziert, dafür wurden viele seiner Innovationen bei der Entwicklung von Sienars nächstem TIE-Modell, dem TIE-Abfangjäger, übernommen.</i>"""
        "Sun Fac":
           display_name: """Sun Fac"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger gefangen ist, wirf 1 zusätzlichen Angriffswürfel."""
        "Sunny Bounder":
           display_name: """Sunny Bounder"""
           text: """Solange du verteidigst oder einen Angriff durchführst, nachdem du deine Würfel geworfen oder neu geworfen hast, falls du auf jedem deiner Würfel dasselbe Ergebnis hast, darfst du 1 passendes Ergebnis hinzufügen."""
        "TN-3465":
           display_name: """TN-3465"""
           text: """Solange ein anderes befreundetes Schiff einen Angriff durchführt, falls du in Reichweite 0-1 des Verteidigers bist, darfst du 1 %CRIT%-Schaden erleiden, um 1 der Ergebnisse des Angreifers in ein %CRIT%-Ergebnis zu ändern."""
        "Tala Squadron Pilot":
           display_name: """Pilot der Tala-Staffel"""
           text: """<i class = flavor_text>Die AF4-Serie ist das jüngste Modell der bewährten Kopfjäger-Produktreihe, die mit ihrem günstigen Preis und ihrer robusten Bauweise zu den Favoriten vieler unabhängiger Organisationen wie der Rebellion gehört.</i>"""
        "Tallissan Lintra":
           display_name: """Tallissan Lintra"""
           text: """Solange ein feindliches Schiff in deinem %BULLSEYEARC% einen Angriff durchführt, darfst du 1 %CHARGE% ausgeben. Falls du das tust, wirft der Verteidiger 1 zusätzlichen Würfel."""
        "Talonbane Cobra":
           display_name: """Talonbane Cobra"""
           text: """Solange du in Angriffsreichweite 3 verteidigst oder in Angriffsreichweite 1 einen Angriff durchführst, wirf 1 zusätzlichen Würfel."""
        "Tansarii Point Veteran":
           display_name: """Veteran von Tansarii """
           text: """<i class = flavor_text>Mit dem Abschuss von Talonbane Cobra, einem Spitzenpiloten der Schwarzen Sonne, entschieden die Car’das-Schmuggler die Schlacht um Tansarii Point für sich. Bis heute sind die Veteranen dieses Scharmützels im ganzen Sektor hochangesehen. </i>"""
        "Techno Union Bomber":
           display_name: """Bomber der Techno-Union"""
           text: """<i class = flavor_text>Baktoid Rüstungswerke entwickelte die Hyäne als einen mit den Schwarmtaktiken der Vultures kompatiblen Offensivbomber.</i>"""
        "Tel Trevura":
           display_name: """Tel Trevura"""
           text: """Falls du zerstört werden würdest, darfst du 1 %CHARGE% ausgeben. Falls du das tust, lege stattdessen alle deine Schadenskarten ab, erleide 5 %HIT%-Schaden und platziere dich selbst in der Reserve. Zu Beginn der nächsten Planungsphase platziere dich selbst innerhalb von Reichweite 1 deines Spielflächenrandes."""
        "Temmin Wexley":
           display_name: """Temmin Wexley"""
           text: """Nachdem du ein Manöver mit Geschwindigkeit 2-4 vollständig ausgeführt hast, darfst du eine %BOOST%-Aktion durchführen."""
        "Tempest Squadron Pilot":
           display_name: """Pilot der Tornado-Staffel"""
           text: """<i class = flavor_text>Der TIE-Turbojäger war eine Weiterentwicklung der erfolgreichen TIE/ln-Baureihe, zusätzlich ausgestattet mit Deflektorschilden, besseren Waffen, geknickten Solarzellen und einem Hyperantrieb.</i>"""
        "Ten Numb":
           display_name: """Ten Numb"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1 Stressmarker ausgeben, um alle deine %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern."""
        "Thane Kyrell":
           display_name: """Thane Kyrell"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %FOCUS%-, %HIT%- oder %CRIT%-Ergebnis ausgeben, um dir die verdeckten Schadenskarten des Verteidigers anzusehen, 1 zu wählen und sie offenzulegen."""
        "Tomax Bren":
           display_name: """Tomax Bren"""
           text: """Nachdem du eine %RELOAD%-Aktion durchgeführt hast, darfst du 1 %CHARGE% von 1 deiner ausgerüsteten %TALENT%-Aufwertungskarten wiederherstellen. """
        "Torani Kulda":
           display_name: """Torani Kulda"""
           text: """Nachdem du einen Angriff durchgeführt hast, erleidet jedes feindliche Schiff in deinem %BULLSEYEARC%1 %HIT%-Schaden, es sei denn, es entfernt 1 grünen Marker."""
        "Torkil Mux":
           display_name: """Torkil Mux"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff in deinem Feuerwinkel wählen. Falls du das tust, kämpft jenes Schiff in dieser Runde bei Initiative 0 anstatt bei seinem normalen Initiativewert."""
        "Trade Federation Drone":
           display_name: """Drohne der Handelsförderation"""
           text: """<i class = flavor_text>In der Schlacht von Naboo kämpften zahllose Droidenjäger aufseiten der Handelsföderation. Bis heute werden die preisgünstigen Schiffe in den Klonkriegen eingesetzt.</i>"""
        "Trandoshan Slaver":
           display_name: """Trandoshanischer Sklavenjäger"""
           text: """<i class = flavor_text>Sein geräumiges Trippeldecker-Design macht den YV-666 zu einem beliebten Schiff für Sklavenhändler und Kopfgeldjäger, die oft ein ganzes Deck für Gefangenentransporte umrüsten.</i>"""
        "Turr Phennir":
           display_name: """Turr Phennir"""
           text: """Nachdem du einen Angriff durchgeführt hast, darfst du eine %BARRELROLL%- oder %BOOST%-Aktion durchführen, auch falls du gestresst bist."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """Zu Beginn der Kampfphase, falls 1 oder mehrere andere Schiffe in Reichweite 0 sind, erhalten du und jedes andere Schiff in Reichweite 0 je 1 Fangstrahlmarker."""
        '"Vagabond"':
           display_name: '„Vagabond“'
           text: """Nachdem du dich unter Verwendung deiner Schiffsfähigkeit <strong>Adaptive Querruder</strong> bewegt hast, falls du nicht gestresst bist, darfst du 1 Gerät abwerfen. %LINEBREAK%<i>Errata: An neue Schiffsfähigkeit angepasst. </i>"""
        "Valen Rudor":
           display_name: """Valen Rudor"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-1 verteidigt hat (nachdem ggf. Schaden abgehandelt worden ist), darfst du eine Aktion durchführen."""
        "Ved Foslo":
           display_name: """Ved Foslo"""
           text: """Solange du ein Manöver ausführst, darfst du stattdessen ein Manöver derselben Flugrichtung und Schwierigkeit, aber einer um 1 höheren oder niedrigeren Geschwindigkeit ausführen."""
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
           text: """<i class = flavor_text>Serienmäßig bietet der YT-2400 reichlich Laderaum. Allerdings opfern die meisten Besitzer einen Teil davon, um Platz für modifizierte Waffensysteme und extragroße Triebwerke zu schaffen.</i>"""
        "Wullffwarro":
           display_name: """Wullffwarro"""
           text: """Solange du einen Primärangriff durchführst, falls du beschädigt bist, darfst du 1 zusätzlichen Angriffswürfel werfen."""
        "Zari Bangel":
           display_name: """Zari Bangel"""
           text: """Du überspringst deinen Schritt „Aktion durchführen“ nicht, nachdem du ein Manöver teilweise ausgeführt hast."""
        "Zealous Recruit":
           display_name: """Fanatischer Rekrut"""
           text: """<i class = flavor_text>Jeder Pilot eines mandalorianischen Fangjägers beherrscht den Concordianischen Wirbel, ein Manöver, bei dem das schmale Profil des Jägers für einen tödlichen Frontalangriff genutzt wird. </i>%LINEBREAK% <strong>Concordianischer Wirbel:</strong> Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Zertik Strom":
           display_name: """Zertik Strom"""
           text: """Während der Endphase darfst du eine Zielerfassung ausgeben, die du auf einem feindlichen Schiff hast, um 1 der Schadenskarten jenes Schiffes offenzulegen."""
        "Zeta Squadron Pilot":
           display_name: """Pilot der Zeta-Staffel"""
           text: """<i class = flavor_text>Frei von den Hürden der galaktischen Bürokratie kann die Erste Ordnung Technologien, die ursprünglich für den imperialen TIE-Turbojäger entwickelt wurden, in Massen produzieren lassen. Das Ergebnis ist der TIE/eo, dessen Piloten eine deutlich höhere Lebenserwartung genießen als ihre Vorgänger zu Zeiten des Imperiums.</i>"""
        "Zeta Squadron Survivor":
           display_name: """Überlebender der Zeta-Staffel"""
           text: """<i class = flavor_text>Seit ihrer beschämenden Niederlage kämpfen die Piloten der Starkiller-Basis noch erbitterter gegen den Widerstand, um sich zu rehabilitieren.</i>"""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """Solange du einen Primärangriff durchführst, darfst du 1 zusätzlichen Angriffswürfel werfen. Falls du das tust, wirft der Verteidiger 1 zusätzlichen Verteidigungswürfel."""
        '"Avenger"':
           display_name: """„Avenger“"""
           text: """Nachdem ein anderes befreundetes Schiff zerstört worden ist, darfst du eine Aktion durchführen, auch solange du gestresst bist."""
        '"Axe"':
           display_name: """„Axe“"""
           text: """Nachdem du verteidigt oder einen Angriff durchgeführt hast, darfst du ein befreundetes Schiff in Reichweite 1-2 in deinem %LEFTARC% oder %RIGHTARC% wählen. Falls du das tust, transferiere 1 grünen Marker auf jenes Schiff."""
        '"Backdraft"':
           display_name: """„Backdraft“"""
           text: """Solange du einen %SINGLETURRETARC%-Primärangriff durchführst, falls der Verteidiger in deinem %REARARC% ist, wirf 1 zusätzlichen Würfel."""
        '"Blackout"':
           display_name: """„Blackout“"""
           text: """Solange du einen Angriff durchführst, falls der Angriff durch ein Hindernis versperrt ist, wirft der Verteidiger 2 Verteidigungswürfel weniger."""
        '"Broadside"':
           display_name: """“Broadside”"""
           text: """Solange du einen %SINGLETURRETARC%&nbsp;Angriff durchführst, falls dein %SINGLETURRETARC%&nbsp;-Anzeiger in deinem %LEFTARC%&nbsp;oder&nbsp;%RIGHTARC%ist, darfst du 1&nbsp;Leerseiten-Ergebnis in ein&nbsp;&nbsp;%FOCUS%&nbsp;-Ergebnis ändern."""
        '"Chopper"':
           display_name: """„Chopper“"""
           text: """Zu Beginn der Kampfphase erhält jedes feindliche Schiff in Reichweite 0 2 Störsignalmarker. """
        '"Countdown"':
           display_name: """„Countdown“"""
           text: """Solange du verteidigst, nach dem Schritt „Ergebnisse neutralisieren“, falls du nicht gestresst bist, darfst du 1 %HIT%-Schaden erleiden und 1 Stressmarker erhalten. Falls du das tust, negiere alle Würfelergebnisse."""
        '"Deathfire"':
           display_name: """„Todesfeuer“"""
           text: """Nachdem du zerstört worden bist, bevor du entfernt wirst, darfst du einen Angriff durchführen und 1 Gerät abwerfen oder starten."""
        '"Deathrain"':
           display_name: """„Todesregen“"""
           text: """Nachdem du ein Gerät abgeworfen oder gestartet hast, darfst du eine Aktion durchführen."""
        '"Double Edge"':
           display_name: """„Doppelklinge“"""
           text: """Nachdem du einen %TURRET%- oder %MISSILE%-Angriff durchgeführt hast, der verfehlt hat, darfst du unter Verwendung einer anderen Waffe einen Bonusangriff durchführen."""
        '"Duchess"':
           display_name: """„Herzogin“"""
           text: """Du darfst wählen, <strong>Adaptive Querruder</strong> nicht zu verwenden. %LINEBREAK%Du darfst <strong>Adaptive Querruder</strong> verwenden, auch solange du gestresst bist."""
        '"Dutch" Vander':
           display_name: """„Dutch“ Vander"""
           text: """Nachdem du die %LOCK%-Aktion durchgeführt hast, darfst du 1 befreundetes Schiff in Reichweite 1-3 wählen. Jenes Schiff darf das Objekt, das du als Ziel erfasst hast, als Ziel erfassen, wobei es die Reichweitenbeschränkung ignoriert."""
        '"Echo"':
           display_name: """„Echo“"""
           text: """Solange du dich enttarnst, <b>musst</b> du die [2 %BANKLEFT%]- oder [2 %BANKRIGHT%]-Schablone anstatt der [2 %STRAIGHT%]-Schablone verwenden."""
        '"Goji"':
           display_name: """“Goji”"""
           text: """Solange ein befreundetes Schiff in Reichweite&nbsp;0-3 verteidigt, darf es für jede befreundete Bombe, die in Reichweite&nbsp;0-1 zu ihm ist, 1&nbsp;zusätzlichen Verteidigungswürfel werfen.%LINEBREAK% <i>Errata: „oder Mine“ gestrichen</i>"""
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
           text: """Nachdem du verteidigt oder einen Angriff durchgeführt hast, falls du einen Berechnungsmarker ausgegeben hast, erhalte 1 Berechnungsmarker."""
        '"Longshot"':
           display_name: """„Longshot“"""
           text: """Solange du einen Primärangriff in Angriffsreichweite 3 durchführst, wirf 1 zusätzlichen Angriffswürfel."""
        '"Matchstick"':
           display_name: """“Matchstick”"""
           text: """Solange du einen Primär- oder %SINGLETURRETARC% -Angriff durchführst, darfst du für jeden roten Marker, den du hast, 1&nbsp;Angriffswürfel neu werfen."""
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
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt oder eine rote Aktion durchgeführt hast, falls ein feindliches Schiff in deinem %BULLSEYEARC%ist, darfst du jenes Schiff als Ziel erfassen. %LINEBREAK% <i>Errata: „vollständig“ ergänzt</i>"""
        '"Pure Sabacc"':
           display_name: """„Voller Sabacc“"""
           text: """Solange du einen Angriff durchführst, falls du 1 oder weniger Schadenskarten hast, darfst du 1 zusätzlichen Angriffswürfel werfen."""
        '"Quickdraw"':
           display_name: """„Quickdraw“"""
           text: """Nachdem du ein Schild verloren hast, darfst du 1 %CHARGE% ausgeben. Falls du das tust, darfst du einen Bonus-Primärangriff durchführen."""
        '"Recoil"':
           display_name: """„Recoil“"""
           text: """Solange du gestresst bist, darfst du feindliche Schiffe in deinem %FRONTARC% in Reichweite 0-1 behandeln, als wären sie in deinem %BULLSEYEARC%."""
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
           text: """Nachdem du unter Verwendung deiner Schiffsfähigkeit <strong>Kontrollierte Querruder</strong> bewegt hast, darfst du eine %COORDINATE%-Aktion durchführen. Falls du das tust, überspringe deinen Schritt „Aktion durchführen“.%LINEBREAK%<i>Errata: An neue Schiffsfähigkeit angepasst. </i>"""
        '"Wampa"':
           display_name: """„Wampa“"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %CHARGE% ausgeben, um 1 zusätzlichen Angriffswürfel zu werfen.%LINEBREAK%Nach dem Verteidigen, verliere 1 %CHARGE%."""
        '"Whisper"':
           display_name: """„Geflüster“"""
           text: """Nachdem du einen Angriff durchgeführt hast, der getroffen hat, erhalte 1 Ausweichmarker."""
        '"Wolffe"':
           display_name: """„Wolffe“"""
           text: """Solange du einen %FRONTARC%-Primärangriff durchführst, darfst du 1 %CHARGE% ausgeben, um 1 Angriffswürfel neu zu werfen. %LINEBREAK%Solange du einen %REARARC%-Primärangriff durchführst, darfst du 1 %CHARGE% wiederherstellen, um 1 zusätzlichen Angriffswürfel zu werfen."""
        '"Zeb" Orrelios':
           display_name: """„Zeb“ Orrelios"""
           text: """Solange du verteidigst, werden %CRIT%-Ergebnisse neutralisiert, bevor %HIT%-Ergebnisse neutralisiert werden."""
        '"Zeb" Orrelios (Sheathipede)':
           display_name: """„Zeb“ Orrelios (Sheathipede)"""
           text: """Solange du verteidigst, werden %CRIT%-Ergebnisse neutralisiert, bevor %HIT%-Ergebnisse neutralisiert werden."""
        '"Zeb" Orrelios (TIE Fighter)':
           display_name: """„Zeb“ Orrelios (TIE Fighter)"""
           text: """Solange du verteidigst, werden %CRIT%-Ergebnisse neutralisiert, bevor %HIT%-Ergebnisse neutralisiert werden."""
        "Baktoid Prototype":
           display_name: """Prototyp von Baktoid"""
           text: """Solange du einen Spezialangriff durchführst, falls ein befreundetes Schiff mit der Schiffsfähigkeit <strong>Vernetzte Berechnungssysteme</strong> den Verteidiger als Ziel erfasst hat, darfst du die &nbsp;%FOCUS%, %CALCULATE%, oder&nbsp;%LOCK%-Voraussetzung jenes Angriffs ignorieren."""
        "Haor Chall Prototype":
           display_name: """Prototyp von Haor Chall"""
           text: """Nachdem ein feindliches Schiff in deinem %BULLSEYEARC% in Reichweite 0-2 ein anderes befreundetes Schiff zum Verteidiger deklariert hat, darfst du eine %CALCULATE%- oder %LOCK%-Aktion durchführen."""
        "Naboo Handmaiden":
           display_name: """Zofe von Naboo"""
           text: """<strong>Aufbau:</strong>Nachdem die Streitkräfte platziert worden sind, ordne 1&nbsp;anderem befreundeten Schiff als <strong>Zofe von Naboo</strong>den Zustand <strong>Durch ein Double geschützt</strong>zu."""
        "Bombardment Drone":
           display_name: """Bombendrohne"""
           text: """Falls du ein Gerät abwerfen würdest, darfst du jenes Gerät stattdessen unter Verwendung derselben Schablone starten."""
        "Precise Hunter":
           display_name: """Präzisionsjäger"""
           text: """Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 Leerseiten-Ergebnis neu werfen."""
        "Captain Hark":
           display_name: "Captain Hark"
           text: """Nachdem du ein [0%STOP%] -Manöverr aufgedeckt hast, falls du <b>bewegliche Flügel [UNTEN]</b> ausgerüstet hast, <b> musst</b> du stattdessen ein [1%BANKLEFT%] oder [1%BANKRIGHT%] Slip Manöver mit derselben Schwierigkeiten ausführen. Nachdem du jenes Manöver ausgeführt hast, <b>musst</b> du <strong>BEWEGLICHE FLÜGEL [UNTEN]</strong> umdrehen."""
        "Ezra Bridger (Gauntlet Fighter)":
           display_name: "Ezra Bridger"
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du gestresst bist, darfst du 1 %FORCE% ausgeben, um bis zu 2 deiner %FOCUS% -Ergebnisse in %EVADE%- oder %HIT% -Ergebnisse zu ändern."""
        '"Chopper" (Gauntlet Fighter)':
           display_name: "„Chopper“"
           text: """Zu Beginn der Kampfphase erhält jedes feindliche Schiff in Reichweite 0 2 Störsignalmarker."""
        "Gina Moonsong":
           display_name: "Gina Moonsong"
           text: "Zu Beginn der Kampfphase <strong>musst</strong> du 1 deiner Stressmarker auf ein anderes befreundetes Schiff in Reichweite 0-2 transferieren."
        '"Odd Ball" (SoC)':
           display_name: "Odd Ball (SoC)"
           text: "Nachdem du ein rotes Manöver vollständig ausgeführt oder eine rote Aktion durchgeführt hast, darfst du ein befreundetes Schiff in Reichweiter 0-3 und ein feindliches Schiff in Reichweite 0-1 wählen. Das gewählte befreundete Schiff erfasst das feindliche Schiff als ziel."
        '"Wolffe" (SoC)':
           display_name: "Wolffe (SoC)"
           text: "Solange du einen %FRONTARC% -Primärangriff durchführst, darfst du 1 %CHARGE% ausgeben, um 1 Angriffswürfel neu zu werfen. Solange du einen %REARARC%-Primärangriff durchführst, darfst du 1 %CHARGE% wiederherstellen, um 1 zusätzlichen Angriffswürfel zu werfen."
        '"Jag" (SoC)':
           display_name: "Jag (SoC)"
           text: "Nachdem ein befreundetes Schiff in Reichweiter 0-2 in deinem %LEFTARC% oder %RIGHTARC% einen Angriff durchgeführt hat, falls du nicht angestrengt bist, darfst du den Verteidiger als Ziel erfassen"
        "New Republic Patrol":
           display_name: "Patrouille der neuen Republik"
           text: "Der BTA-NR2-Y-Flügler wurde individuell anpassbar entworfen und wird in der gesamten Galaxis von zahlreichen militärischen Organisationen für verschiedenste Zwecke eingesetzt, um zum Beispiel als Polizeischiff oder als Bomber in Kriegszeiten."
        "Kijimi Spice Runner":
           display_name: "Spiceschmuggler von Kijimi"
           text: "Die Spiceschmuggler von Kijimi kämpften unter Zorii Bliss bei der SChlacht von Exegol gegen die letzte Ordnung aus Überzeugung und nicht wie für sie üblich als reine Söldner."
        "Corus Kapellim":
           display_name: "Corus Kapellim"
           text: "Bevor du kämpfst, darfst du 1 Schiff in deinem Feuerwinkel in Reichweite 0-1 wählen. Falls du das tust, transferiere 1 grünen Marker von jenem Schiff auf dich selbst."
        "C'ai Threnalli (Y-Wing)":
           display_name: "C&apos;ai Threnalli "
           text: "Nachdem du ein Manöver vollständig ausgeführst hast, falls du dich durch ein befreundetes Schiff hindurchbewegt hast, darfst du eine %EVADE% -Aktion durchführen."
        "Lega Fossang":
           display_name: "Lega Fossang"
           text: "Solange du einen Primär- oder %TURRET% -Angriff durchführst, darfst du für jedes befreundete Gerät oder berechnende befreundete Schiff im Angriffswinkel 1 Angriffswürfel neu weerfen."
        "Shasa Zaro":
           display_name: "Shasa Zaro"
           text: "Nachdem du verteidigt hast, darfst du ein befreundetes Schiff in deinem %FULLREARARC% in Reichweite 0-2 sowie 1 deiner grünen Marker wählen. Falls du das tust, erhält jenes Schiff ein passenden Marker"
        "Teza Nasz":
           display_name: "Teza Nasz"
           text: "Solange ein befreundetes Schiff in Reichweite 0-2 einen Angriff durchführt, falls der Verteidiger ein mit dem Angreifer befreundetes Schiff in jedem seiner Seitenwinkel (%LEFTARC% und %RIGHTARC%] hat, darf der Angreifer1 Angriffswürfel neu werfen."
        "Wilsa Teshlo":
           display_name: "Wilsa Teshlo"
           text: "Nachdem du einen Angriff durchgeführt hast, falls dem Verteidiger eine offene Schadenskarte zugeteilt worden ist, erhält der Verteidiger ein Anstrengungsmarker, es sei denn, er wählt 1 nicht-wiederkehrende %CHARGE% von 1 seiner ausgerüsteten Aufwertungen und verliert jene %CHARGE%."
        "Aftab Ackbar":
           display_name: "Aftab Ackbar"
           text: "Nachdem du ein rotes Basismanöver ausgeführt oder eine rote Aktion durchgeführt hast, falls du genau 1 Stressmarker hast, darfst du 1 Anstrengungsmarker erhalten, um jenen Stressmarker zu entfernen."
        "Zorii Bliss":
           display_name: "Zorii Bliss"
           text: 'Nachdem ein Schiff in Reichweite 1 während seine Schrittes "Aktion durchführen" eine Aktion durchgeführt hat, falls jene Aktion in deiner Aktionsleiste ist, darfst du 1 %CHARGE% ausgeben, um jene Aktion durchzuführen, wobei du sie behandelst, als wäre sie rot.'
        "Hol Okand (BoY)":
           display_name: "Hol Okand (BoY)"
           text: "Während der Systemphase, falls keine feindlichen Schiffe in Reichweite 1-2 sind, darfst du 1 %CHARGE% auf einer beliebigen Aufwertung wiederherstellen."
        '"Pops" Krail (BoY)':
           display_name: "„Pops“ Krail (BoY)"
           text: "Solange du einen %ROTATEARC% -Angriff durchführst, darfst du bis zu 2 Angriffswürfel werfen."
        '"Dutch" Vander (BoY)':
           display_name: "„Dutch“ Vander (BoY)"
           text: "Nachdem du eine %LOCK% ausgegeben hast, darfst du 1 befreundetes Schiff in Reichweite 1-3 wählen. Jenes Schiff darf den Verteidiger als Ziel erfassen."
        "Dex Tiree (BoY)":
           display_name: "Dex Tiree (BoY)"
           text: "Solange du verteidigst, falls mindestens 1 anderes befreundetes Schiff in Reichweite 0-1 ist, darfst du 1 zusätzlichen Verteidigungswürfel werfen."
        '"Pops" Krail':
           display_name: "„Pops“ Krail"
           text: "Nachdem du ein weißes Manöver vollständig ausgeführt hast, darfst du ein befreundetes Schiff in Reichweite 0-1 wählen. Falls du das tust, darf es eine %FOCUS% Aktion durchführen."
        '"Killer"':
           display_name: "„Killer“"
           text: "Solange du einen Angriff durchführst, falls die übrige Hülle des Verteidigers 2 oder weniger ist, darfst du 1 zusätzlichen Angriffswürfel werfen. Falls du das tust, erhältst du 1 Erschöpfungsmarker, nach du die Angriffswürfel geworfen hast."
        '"Drift"':
           display_name: "„Drift“"
           text: "Solange ein befreundetes Schiff in Reichweite 0-1 einen Angriff durchführt, falls du genau 1 roten Nicht-Zielerfassungsmarker oder genau 1 orangen Marker hast, darf jenes Schiff 1 Angriffswürfel neu werfen."
        '"Boost"':
           display_name: "„Boost“"
           text: "Zu Beginn der Kampfphase, falls ein befreundetes Schiff in Reichweite 0-1 ist, dessen aufgedecktes Manöver blau ist, darfst du eine %BOOST% -Aktion durchführen."
        '"Stub"':
           display_name: "„Stub“"
           text: "Solange du verteidigst, falls die Geschwindigkeit deines aufgedeckten Manövers gerade ist,wirfst du 1 zusätzlichen Verteidigungswürfel.%LINEBREAK%Solange du einen Primärangriff durchführst, falls die Geschwindigkeit deines aufgedeckten Manövers ungerade ist, wirfst du 1 zusätzlichen Angriffswürfel."
        '"Hawk" (Z-95)':
           display_name: "„Hawk“ "
           text: "Zu Beginn der Endphase darf jedes befreundete Schiff in Reichweite 0-1, das ein aufgedecktesManöver mit Geschwindigkeit 3-5 hat, 1 Anstrengungsmarker erhalten, um eine %BARRELROLL% oder %BOOST% -Aktion durchzuführen."
        '"Slider"':
           display_name: "„Slider“"
           text: "Sobald du ein [2 %TURNLEFT%] oder [2 %TURNRIGHT%] -Manöver aufdeckst, darfst du 2 %CHARGE% ausgeben, um es als Slip auszuführen."
        '"Warthog" (Z-95)':
           display_name: "„Warthhog“ "
           text: "Nachdem du oder ein befreundetes,nicht-limituertes Schiff in Reichweite 0-2 während der Kampfphase zerstört worden ist, wird jenes Schiff bis zum Ende jener Phase nicht entfernt."
        '"Knack"':
           display_name: "„Knack“"
           text: "Nachdem du zerstört worden bist, darfst du ein befreundetes, nicht-limitiertes Schiff in Reichweite 0-2 wählen und ihm 1 deiner ausgerüsteten %TALENT% -Aufwertungen zuzuordnen.%LINEBREAK%<b>Spielende:</b> Lege alle %TALENT% -Aufwertungen zurück zu ihren ursprünglichen Schiffen."
        "Reaper Squadron Scout":
           display_name: "Aufklärer der Reaper-Staffel"
           text: "Trotz des glanzlosen Rufs des Klon-Z-95 ranken sich LEgenden um die Reaper-Staffel, die mit diesem Sternenjäger in entlegenen Schlachte,wiedem Gefecht um Castilon, ihr Geschick unter Beweis stellte."
        "Republic Judiciary":
           display_name: "Judikate der Republik"
           text: "Die Galaktische Republik verwendet kleine, schnelle Kriegsschiffe wie die CR90-Korvette, um überall in der Galaxis schnell auf Übergriffe der Separatisten reagieren zu können."
        "Alderaanian Guard":
           display_name: "Alderaanische Garde"
           text: "Die CR90-Korvette wurde schon vor den Klonkriegen verwendet und wird vom alderaanischen Königshaus aufgrund ihrer Vielseitigkeit bevorzugt."
        "Separatist Privateers":
           display_name: "Kaperer der Separatisten"
           text: "Die Allianz der Separatisten bedient sich sämtlicher widerlicher Kontakte in ihrem Kampf gegen die Galaktische Republik, einschließlich Kaperer und krimineller Kartelle."
        "Syndicate Smugglers":
           display_name: "Schmuggler des Syndikats"
           text: "Schiffe wie der C-ROC-Kreuzer erlauben kriminelle Operationen überall im Outer-Rim, bei denen Massen an illegalen Waren transportiert werden, oder Machtdemonstrationen,um kleine Kolonien zu unterdrücken."
        "Adi Gallia":
           display_name: "Adi Gallia"
           text: "Solange du in Angriffsreichweite 1 verteidigst, darfst du 1 %8CE% ausgeben. Falls du das tust, kann der Angreifer den Reichweitenbonus nicht anwenden.%LINEBREAK%Solange du einen Angriff gegen einen Verteidiger in Angriffsreichweite 3 durchführst, darfst du 1 %FORCE% ausgeben. Falls du das tust, kann der Verteidiger den Reichweitenbonus nicht anwenden."
        "Adi Gallia (Delta-7B)":
           display_name: "Adi Gallia "
           text: "Solange du in Angriffsreichweite 1 verteidigst, darfst du 1 %FORCE% ausgeben. Falls du das tust, kann der Angreifer den Reichweitenbonus nicht anwenden.%LINEBREAK%Solange du einen Angriff gegen einen Verteidiger in Angriffsreichweite 3 durchführst, darfst du 1 %FORCE% ausgeben. Falls du das tust, kann der Verteidiger den Reichweitenbonus nicht anwenden."
        "DIS-347 (SoC)":
           display_name: "DIS-347 (SoC)"
           text: "Zu Beginn der Kampfphase darfst du ein Objekt mit einer befreundeten Zielerfassung in Reichweite 1-3 als Ziel erfassen."
        "DIS-T81 (SoC)":
           display_name: "DIS-T81 (SoC)"
           text: "Solange du verteidigst oder einen Angriff durchführst, darfst du beliebig viele deiner Würfel neu werfen. Dann, falls du verteidigt hast, erhältst du 1 Anstrengungsmarker für jeden neu geworfenen Würfel. Falls du angegriffen hast, erhältst du stattdessen 1 Erschöpfungsmarker für jdene neu geworfenen Würfel."
        "Phlac-Arphocc Prototype (SoC)":
           display_name: "Prototyp von Phlac Arphocc (SoC)"
           text: "Zu Beginn der Kampfphase, falls ein feindliches Schiff in deinem %BULLSEYEARC% ist, erhältst du 1 Berechnungsmarker."
        "Volan Das":
           display_name: "Volan Das"
           text: "Nachdem du ein rotes Manöver vollständig ausgeführt hast, darfst du ein feindliches Schiff in Reichweite 1 wählen.Das gewählte Schiff erhält 1 Anstrengungsmarker und du darfst 1 Stressmarker entfernen."
        "Jedi General":
           display_name: "Jedi General"
           text: "Aufgrund der enorm hohen Opferzahlen, Welche die Klonkriege in den Reihen des Jedi-Ordens fordern, müssen die Überlebenden noch größere Verantwortungin der großen Armee der Republik übernehmen."
        "Yoda":
           display_name: "Yoda"
           text: "Nachdem ein anderes befreundetes Schiff in Reichweite 0-3 1 oder mehrere %FORCE% ausgegeben hat, darfst du 1 %FORCE% ausgeben. Falls du das tust, stellt jenes Schiff 1 %FORCE% wieder her."
        "Shaak Ti":
           display_name: "Shaak Ti"
           text: "Zu Beginn der Endphase darfst du beliebig viele %FORCE% ausgeben, um ebenso viele befreundete Schiffe in Reichweite 0-2 zu wählen. Jedes gewählte Schiff entfernt während ihrer Endphase 1 Fokus- oder Ausweichmarker nicht."
        "Aayla Secura":
           display_name: "Aayla Secura"
           text: "Solange ein feindliches Schiff, das in Reichweite 0-1 ein deinem %FRONTARC% ist, einen Angriff durchführt, darf der Verteidiger 1 Leerseiten-Egebnis in ein %FOCUS%-Ergebnis ändern."
        "Obi-Wan Kenobi (Eta-2)":
           display_name: "Obi-Wan Kenobi "
           text: "Nachdem du oder ein befreundetes <strong>Anakin Skywalker</strong>-Schiff in Reichweite 0-3 ein Manöver ausgeführt hat, falls in Reichweite 0-1 jenes Schiffes mehr feindliche Schiffe als anderes befreundete Schiffe sind, darfst du 1 %FORCE% ausgeben. Falls du das tust, erhält jenes Schiff 1 Fokusmarker."
        "Anakin Skywalker (Eta-2)":
           display_name: "Anakin Skywalker "
           text: "Nachdem du oder ein befreundetes <strong>Obi-Wan Kenobi</strong>-Schiff in Reichweite 0-3 ein Manöver ausgeführt hat, falls in Reichweite 0-1 jenes Schiffes mehr feindliche Schiffe als anderes befreundete Schiffe sind, darfst du 1 %FORCE% ausgeben. Falls du das tust, entfernt jenes Schiff 1 roten Marker deiner Wahl."
        "Anakin Skywalker (SoC)":
           display_name: "Anakin Skywalker (SoC)"
           text: "Nachdem du oder ein befreundetes <strong>Obi-Wan Kenobi</strong>-Schiff in Reichweite 0-3 ein Manöver vollständig ausgeführt hast, falls in Reichweite 0-1 jenes Schiffes mehr feindliche Schiff als andere befreundete Schiffe sind, darfst du 1 %FORCE% ausgeben. Falls du das tust, darf jenes Schiff eine %BARRELROLL%-Aktion durchführen."
        "Obi-Wan Kenobi (SoC)":
           display_name: "Obi-Wan Kenobi (SoC)"
           text: "Nachdem du oder ein befreundetes <strong>Anakin Skywalker</strong>-Schiff in Reichweite 0-3 ein Manöver vollständig ausgeführt hast, falls in Reichweite 0-1 jenes Schiffes mehr feindliche Schiff als andere befreundete Schiffe sind, darfst du 1 %FORCE% ausgeben. Falls du das tust, darf jenes Schiff eine %BOOST%-Aktion durchführen."
        "Shaak Ti (SoC)":
           display_name: "Shaak Ti (SoC)"
           text: "Zu Beginn der Endphase darfst du eine violette %COORDINATE% -Aktion durchführen, auch solange du gestresst bist.%LINEBREAK%Nachdem du eine %COORDINATE% -Aktion durchgeführt hast, falls die gewählte Schiffsfähigkeit <strong>Dafür Geboren</strong> hat, darfst du 1 zusätzliches Schiff koordinieren."
        "Kit Fisto":
           display_name: "Kit Fisto"
           text: "Solange ein anderes befreundete Schiff verteidigt, falls der Angreifer in seinem %BULLSEYEARC% ist, darfst du 1 %FORCE% ausgeben, um 1 Leerseiten-Ergebnis des Verteidigers in ein %FOCUS%-Ergebnis zu ändern."
        "Fenn Rau (Rebel Fang)":
           display_name: "Fenn Rau "
           text: "Bevor ein befreundetes Schiff in Reichweite 1-2 kämpft, falls ein feindliches Schiff in seinem %FRONTARC% in Reichweite 1 ist, darf jenes befreundete Schiff 1 roten Nicht-Zielerfassungsmarker entfernen."
        "Bodica Venj":
           display_name: "Bodica Venj"
           text: "Nachdem ein anderes befreundetes Schiff verteidigt hat, falls du nicht erschöpft bist, darfst du einen Bonus-Primärangriff gegen den Angreifer durchführen. Falls du das tust, erhältst du, nachdem du jenen Angriff durchgeführt hast, 1 Erschöpfungsmarker."
        "Dirk Ullodin":
           display_name: "Dirk Ullodin"
           text: "Nachdem du ein rotes Manöver vollständig ausgeführt hast oder eine rote Aktion durchgeführt hast, darfst du ein feindliches Schiff in deinem %FRONTARC% in Reichweite 1 als Ziel erfassen."
        "Clan Wren Volunteer":
           display_name: "Freiwilliger vom Clan Wren"
           text: "Solange du einen Angriff in Reichweite 1 durchführst, falls die geschwindigkeit deines aufgedeckten Manövers gleich der eines befreundeten Schiffes in Reichweite 1 ist, darfst du 1 Angriffswürfel neu werfen."
        "Mandalorian Royal Guard":
           display_name: "Mandalorianische Ehrengarde"
           text: "Solange ein befreundetes nicht-kleines Schiff verteidigt, falls du im Angriffswinkel bist, darfst du 1 Erschöpfungs- und 1 Anstrengungsmarker erhalten. Falls du das tust, darf der Verteidiger 1 Ergebnis in ein %EVADE%-Ergebnis ändern."
        "Tor Phun":
           display_name: "Tor Phun"
           text: "Nachdem du einen Angriff durchgeführt hast, falls der Verteidiger zerstört worden ist, darfst du eine Aktion durchführen, auch solange du gestresst bist. Dann darfst du 2 Anstrengungsmarker erhalten, um einen Bonusangriff durchzuführen."
        "Kazuda Xiono":
           display_name: "Kazuda Xiono"
           text: "Solange du verteidigst oder einen Primärangriff durchführst, falls die Initiative des feindlichen Schiffes höher als die Anzahl deiner Schadenskarten ist, darfst du 1 zusätzlichen Würfel werfen."
        "Jarek Yeager":
           display_name: "Jarek Yeager"
           text: "Solange du 2 oder weniger Stressmarker hast, falls du beschädigt bist, kannst du rote Basismanöver ausführen, auch solange du gestresst bist; falls du kritisch beschädigt bist,kannst du rote Expertenmanöver ausführen, auch solange du gestresst bist."
        "R1-J5":
           display_name: "R1-J5"
           text: "Bevor du 1 deiner Schadenskarten offen legst, darfst du dir deine verdeckten Schadenskarten ansehen, 1 wählen und stattdessen jene Karte offenlegen."
        "Colossus Station Mechanic":
           display_name: "Mechaniker der Colossus-Station"
           text: "So manche Pilotenkarriere begann in der Bodencrew eines Rennteams, wo talentierte, ehrgeizige Mechaniker rund um die Uhr daran arbeiten, die zusammengeschusterten Rennschiffe ihres Teams am Himmel entlegener Welten wie Castilon zu halten."
        "Jango Fett":
           display_name: "Jango Fett"
           text: "Solange du verteidigst oder einen Primärangriff durchführst, falls die Geschwindigkeit deines aufgedeckten Manövers geringer ist als die des aufgedeckten Manövers des feindlichen Schiffes, darfst du 1 der %FOCUS% -Ergebnisse des feindlichen Schiffes in ein Leerseiten-Ergebnis ändern."
        "Boba Fett (Separatist)":
           display_name: "Boba Fett "
           text: "Solange du verteidigst, falls keine anderen befreundeten Schiffe in Reichweite 0-2 sind, darfst du 1 deiner Leerseiten-Ergebnisse in ein %FOCUS%-Ergebnis ändern."
        "Zam Wesell":
           display_name: "Zam Wesell"
           text: "<b>Aufbau:</b>Du verlierst 2 %CHARGE%.%LINEBREAK% Während der Systemphase darfst du dir selbst 1 deiner geheimen Zustände verdeckt zuornden: %LINEBREAK%<strong>DU SOLLTEST MIR DANKEN<%LINEBREAK%WEHE;DU MEINST ES NICHT ERNST</stong>"
        "Hondo Ohnaka":
           display_name: "Hondo Ohnaka"
           text: "<b>Aktion:</b> Wähle 2 nicht-riesige Schiffe in Reichweite 0-3 zu dir, die nicht miteinander befreundet sind. Jedes der gewählten Schiffe darf in der Reihenfolge deiner Wahl eine Aktion aus deiner Aktionsleiste durchführen, auch solange es gestresst ist. Dann erhältst du 1 Berechnungsmarker."
        "Aurra Sing":
           display_name: "Aurra Sing"
           text: "Bevor du kämpfst, darfst du 1 %FORCE% ausgeben, um 2 feindliche Schiffe in Reichweite 0-1 zu wählen. Transferiere beliebig viele orange und rote Marker zwischen jenen zwei Schiffen."
        "Maul":
           display_name: "Maul"
           text: "Solange du ein %COORDINATE% -Aktion durchführst, falls du ein Schiff wählst, dessen Initiative niedriger als deine ist, darfst du 1 %FORCE% ausgeben. Falls du das tust, behandle die Aktion, als wäre sie weiß, und du darfst 1 zusätzliches befreundetes Schiff koordinieren, dessen Initiative niedriger als deine ist; jedes befreundete Schiff, das du so koordinierst, erhält 1 Anstrengungsmarker."
        "Bo-Katan Kryze":
           display_name: "Bo-Katan Kryze"
           text: "Bevor ein befreundetes Schiff in Reichweite 0-2 aktiviert wird, darfst du 1 %CHARGE% ausgeben. Falls du das tust, darf jenes Schiff 1 Anstrengungsmarker erhalten, um 1 roten Nicht-Stressmarker oder 1 orangen Marker zu entfernen."
        "Bo-Katan Kryze (Republic)":
           display_name: "Bo-Katan Kryze "
           text: "Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 Erschöpfungsmarker erhalten, um ein Objekt in deinem %FRONTARC% in Reichweite 1-2 zu wählen. Falls du das tust, dard ein anderes befreundetes Schiff eine %LOCK% -Aktion durchführen, um jenes Objekt als Ziel zu erfassen."
        "Gar Saxon":
           display_name: "Gar Saxon"
           text: "Solange ein befreundetes Schiff in Reichweite 0-2 einen Primärangriff durchführt, falls der Angreifer im %REARARC% des Verteidigers ist, darfst du 1 %CHARGE% ausgeben. Falls du das tust, wirft der Angreifer 1 zusätzlichen Würfel."
        "Pre Vizsla":
           display_name: "Pre Vizsla"
           text: "Solange du einen Angriff durchführst, falls die Initiative des Verteidigers gleich oder höher als deine ist, darfst du 2 %CHARGE% ausgeben, um 1 zusätzlichen Würfel zu werfen."
        "Rook Kast":
           display_name: "Rook Kast"
           text: "Bevor du kämpfst, darfst du 1 Anstrengungsmarker erhalten. Solange du einen Primärangriff durchführst, falls du angestrengt bist, darfst du 1 deiner Leerseiten- oder %FOCUS% -Ergebniss in ein %HIT% -Ergebnis ändern."
        "Outer Rim Garrison":
           display_name: "Outer-Rim-Garnison"
           text: "Kreuzer der Gozanti-Klasse können vier TIE-Jäger transportieren und über lange Zeit hinweg unabhängig operieren. Sie sind ein häufiger Anblick am Himmel unterdrückter Welten des Outer Rim."
        "First Order Sympathizers":
           display_name: "Sympathisanten der ersten Ordnung"
           text: "Der rasche Aufstieg der ersten Ordnung zur Macht beruht auf gnadenloser Innovation. Allerdings funktionieren ihre Sympathisanten häufig Imperiale Schiffe für Überwachungen und Patroullien um, wie die altehrwürdigen Kreuzer der Gozanti-Klasse."
        "Echo Base Evacuees":
           display_name: "Evakuierte der Echo-Basis"
           text: "Die GR-75 Mittelschweren Transporter haben sich bei Schlachten wie der Evakuierung von Hoth bewiesen, wo sie ausschlaggebend für die Flucht der Rebellen waren."
        "New Republic Volunteers":
           display_name: "Freiwillige der neuen Republik"
           text: "Manche Gruppen der Neuen Republik nutzen diese Schiffe schon seit dem Galaktischen Bürgerkrieg für Liefer - und HIlfsmissionen."
        "DBS-32C (SoC)":
           display_name: "DBS-32C (SoC)"
           text: "Nachdem du eine %CALCULATE% -Aktion durchgeführt hast, darfst du 1%CHARGE% ausgeben, um eine %JAM% -AKtion durchzuführen."
        "DBS-404 (SoC)":
           display_name: "DBS-404 (SoC)"
           text: "Solange du einen Angriff in Angriffsreichweite 1 durchführst, <strong>musst</strong> du 1 zusätzlichen Würfel werfen. Nachdem der Angriff getroffen hat, erleidest du 1 %CRIT%-Schaden."
        "Baktoid Prototype (SoC)":
           display_name: "Prototyp von Baktoid (SoC)"
           text: "Solange du einen Spezialangriff durchführst, falls ein befreundetes Schiff mit der Schiffsfähigkeit <strong>VERNETZTE BERECHNUNGSSYSTEME</strong> den Verteidiger als Ziel erfasst hat, darfst du die %FOCUS%, %CALCULATE% oder %LOCK% -Vorraussetzung jenes Angriffs ignorieren."
        "Nom Lumb":
           display_name: "Nom Lumb"
           text: "Nachdem du zum Verteidiger geworden bist, falls der Angreifer nicht in deinem %ROTATEARC% ist,<strong>musst</strong> du deinen %ROTATEARC% -Anzeiger auf einem Standardwinkel rotieren, in dem der Angreifer ist."
        "212th Battalion Pilot":
           display_name: "Pilot des 212. Angriffsbataillons"
           text: "Die TFAT/li-Kanonenboote sind gleichermaßen für Angriffe im Weltraum und Kämpfe in der Atmosphäre geeignet. Sie transportiern die Truppen der Republik zu Planeten, die von den Separatisten belagert werden."
        '"Hawk"':
           display_name: "„Hawk“"
           text: "Zu Beginn der Endphase darf jedes befreundete Schiff in Reichweite 0-1, das ein aufgedecktes Manöver mit der Geschwindigkeit 3-5 hat, 1 Anstrengungsmarker erhalten, um eine %BARRELROLL% oder %BOOST% -Aktion durchzuführen."
        '"Hound"':
           display_name: "„Hound“"
           text: "Nachdem ein befreundetes kleines Schiff in deinem %ROTATEARC% einen Erschöpfungs- oder Anstrengungsmarker erhalten hat, falls du keinen Marker jenes Typs hast, darfst du jenden Marker auf dich selbst transferieren."
        '"Warthog"':
           display_name: "„Warthhog“"
           text: "Nachdem du oder ein befreundetes nicht-limitiertes Schiff inReichweite 0-2 während der Kampfphase zerstört worden ist, wird jenes Schiff bis zum Ende jener Phase nicht entfernt."
        '"Sicko"':
           display_name: "„Sicko“"
           text: "Nachdem du ein Basismanöver ausgeführt hast, darfst du dir selbst den Zustand %LINEBREAK%<strong>SCHWINDELERREGENDES MANÖVER</strong> zuordnen."
        "G4R-GOR V/M":
           display_name: "G4R-GOR V/M"
           text: "Nachdem du verteidigt hast, erleidet jedes andere Schiff in Reichweite 0 1 %CRIT%-Schaden."
        "Paige Tico":
           display_name: "Paige Tico"
           text: "Nachdem du ein Gerät abgeworfen hast, darfst du 1 %CHARGE% ausgeben, um ein zusätzliches Gerät abzuwerfen."
        "Lapin":
           display_name: "Lapin"
           text: "Solange du verteidigst oder einen Angriff durchführst, falls das feindliche Schiff gestresst ist, können die Würfel jenes Schiffes nicht modifiziert werden."
        "Leia Organa":
           display_name: "Leia Organa"
           text: "Nachdem ein befreundetes Schiff ein rotes Manöver vollständig ausgeführt hat, falls es in Reichweite 0-3 ist, darfst du 1 %FORCE% ausgeben. Falls du das tust, erhält jenes Schiff 1 Fokusmarker oder es stellt 1 %FORCE% wieder her."
        "Han Solo (BoY)":
           display_name: "Han Solo (BoY)"
           text: "Nachdem du einen Angriff durchgeführt hast, der getroffen hat, darfst du 1 %CHARGE% ausgeben, um eine %COORDINATE% -Aktion durchzuführen."
        "Gavyn Sykes":
           display_name: "Gavyn Sykes"
           text: "Solange du verteidigst oder einen Angriff durchführst, falls die Geschwindigkeit deines aufgedeckten Manövers höher als die es feindlichen Schiffes ist, darfst du deine Leerseiten-Ergebnisse neu werfen."
        "Loyalist Volunteer":
           display_name: "Freiwilliger der Loyalisten"
           text: "Der Alpha-3-V-Flügler der Nimbus-Klasse von Kuat-Systemtechnik ist als Sternenjäger für jeden Piloten, egal ob geklont oder nicht, die erste Wahl. Die Fertigungstechnik, die zur Massenproduktion seines Ionenantriebs eingesetzt wird, wird später noch essenziell für die Entwicklung der TIE-Serie von Sienar-Flottensysteme sein."
        "Shadow Squadron Escort":
           display_name: "Eskorte der Schatten-Staffel"
           text: "In den letzten Monaten der Klonkriege führen Klon-Eliteeinheiten Missionen aus, die essenziell für die Zukunft der Republik sind. So schützen sie auch das persönliche Schiff des Obersten Kanzlers Palpatine."
        "Wilhuff Tarkin":
           display_name: "Wilhuff Tarkin"
           text: "Während der Systemphase darfst du ein Objekt in Reichweite 1-3 wählen, das du als Ziel erfasst hast. Ein anderes befreundetes Schiff in Reichweite 1-3 darf jenes Objekt als Ziel erfassen."
        '"Klick"':
           display_name: "„Klick“"
           text: "Solange ein Schiff in Reichweite 1-3, das du als Ziel erfasst hast, verteidigt oder einen Angriff durchführt, darfst du 1 %CHARGE% ausgeben, um das Anwenden von Reichweitenbonussen zu verhindern."
        '"Contrail"':
           display_name: "„Contrail“"
           text: "Solange du verteidigst oder einen Angriff durchführst, falls dein aufgedecktes Manöver dieselbe Flugrichtung wie das des feindlichen Schiffes hat, darfst du 1 der %FOCUS% -Ergebnisse des feindlichen Schiffes in ein Leerseiten- Ergebnis ändern."
        '"Odd Ball" (V-wing)':
           display_name: "„Odd Ball“"
           text: "Nachdem du ein rotes Manöver vollständig ausgeführt hast, falls ein feindliches Schiff in deinem %BULLSEYEARC% ist, darfst du es als Ziel erfassen."
        '"Contrail" (SoC)':
           display_name: "„Contrail“"
           text: "Solange du verteidigst oder einen Angriff durchführst, falls dein aufgedecktes Manöver dieselbe Flugrichtung wie das des feindlichen Schiffes hat, darfst du 1 der %FOCUS% -Ergebnisse des feindlichen Schiffes in ein Leerseiten- Ergebnis ändern."
        '"Klick" (SoC)':
           display_name: "„Klick“"
           text: "Solange ein Schiff in Reichweite 1-3, das du als Ziel erfasst hast, verteidigt oder einen Angriff durchführt, darfst du 1 %CHARGE% ausgeben, um das Anwenden von Reichweitenboni zu verhindern."
        "Outer Rim Patrol":
           display_name: "Outer-Rim-Patrouille"
           text: "Die Korvette der Sturm-Klasse ist eines der kleinsten Kriegsschiffe des Imperiums. Mit ihrer starken Artillerie wird sie oft für Aufklärungsmissionen, präzise Schläge und zum Niederhalten feindlicher Sternenjäger verwendet."
        "First Order Collaborators":
           display_name: "Kollaborateure der ersten Ordnung"
           text: "Die Unterstützer der Ersten-Ordnung nutzen ehemlaige Imperiale Schiffe wie die Korvette der Sturm-Klasse. Obwohl sie das Regime, das sie erschuf, überdauert hat, verbreitet sie noch immer überall in der Galaxis Angst und Schrecken."
        "Taka Jamoreesa":
           display_name: "Taka Jamoreesa"
           text: "Nachdem du ein Störsignal gesendet hast, %<strong>musst</strong> du ein anderes Schiff in Reichweite 0-1 des gestörten Schiffes 1 Störsignalmarker zuordnen, falls möglich."
        "Cad Bane":
           display_name: "Cad Bane"
           text: "Nachdem du einen Angriff durchgeführt hast, der getroffen hat, darfst du 2 %CHARGE% ausgeben, um 1 deiner roten Nicht-Zielerfassungsmarker oder 1 deiner orangen Marker auf den Verteidiger zu transferieren."
        "Cad Bane (Separatist)":
           display_name: "Cad Bane "
           text: "Während der Kampfphase darfst du, nachdem ein anderes Schiff in Reichweite 0-3 zerstört worden ist, 1 %CHARGE% ausgeben, um eine Aktion durchzuführen, auch solange du gestresst bist."
        "Viktor Hel (Rogue)":
           display_name: "Viktor Hel "
           text: "Nachdem du verteidigt hast, falls du nicht genau 2 Verteidigungswürfel geworfen hast, erhält der Angreifer 1 Stressmarker."
        "Nom Lumb (Rogue)":
           display_name: "Nom Lumb "
           text: "Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in deinem %FRONTARC% wählen. Falls du das tust, behandle deine Initiative bis zum Ende der Runde so, als wäre sie gleich de jenes Schiffes."
        "Outer Rim Hunter":
           display_name: "Jäger aus dem Outer Rim"
           text: "Seitdem der Sternenjäger der Renegat-Klasse dank Cad Bane bekannt geworden ist, fliegen ihn auch immer mehr andere Kopfgeldjäger, besonders diejenigen, die im gesetzlosen Outer Rim unterwegs sind."
        "IG-101":
           display_name: "IG-101"
           text: "Zu Beginn der Systemphase darfst du eine 1 offene Schadenskarte reparieren."
        "IG-102":
           display_name: "IG-102"
           text: "Solange du verteidigst, falls die Initiative des Angreifers gleich oder höher als deine ist, darfst du 1 Leerseiten-Ergebnis in ein %FOCUS% -Ergebnis ändern."
        "IG-111":
           display_name: "IG-111"
           text: "Nachdem du einen Angriff durchgeführt hast, der verfehlt hat, darfst du 1 feindliches Schiff in deinem %BULLSEYEARC% wählen und 1 Erschöpfungsmarker erhalten. Falls du das tust, erleidet jenes Schiff 1 %HIT%-Schaden."
        "MagnaGuard Executioner":
           display_name: "Scharfrichter der Magnawächter"
           text: "Zusätzlich zu ihrer Aufgabe , Anführer der Separatisten zu beschützen, werden Magnawächter-Droiden manchmal auch in den flinken Sternenjäger der REnegat-Klasse eingesetzt, um ihr Freinde zu vernichten."
        "MagnaGuard Protector":
           display_name: "Beschützer der Magnawächter"
           text: "<b>Aufbau</b> Nachdem die Steitkräfte platziert worden sind, ordne 1 befreundeten Schiff außer <strong>Beschützer der Mangawächter</strong> den Zustand <strong>Beschützt</strong> zu."
        "Durge":
           display_name: "Durge"
           text: 'Solange du verteidigst, darfst du nachm dem Schritt "Ergebnisse neutralisieren", falls es mehr %HIT% /%CRIT%- Ergebnisse als deine aktiven %SHIELD% gibt, 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern und 1 %HIT%-Ergebnis negieren.'
        "Durge (Separatist)":
           display_name: "Durge "
           text: "Sobald du zerstört werden würdest,darfst du 1 %CHARGE% ausgeben, um alle deine verdeckten Schadenskarten aufzudecken. Falls du das tust, lege jeden <strong>VOLLTREFFER!</strong> und jede deiner Schadenskarten mit dem Namen <strong>PILOT</strong> ab; repariere dann alle deine offenen Schadenskarten."
        "Zizi Tlo":
           display_name: "Zizi Tlo"
           text: "Nachdem du verteidigt oder einen Angriff durchgeführt hast, darfst du 1 %CHARGE% ausgeben, um 1 Fokus - oder Ausweichmarker zu erhalten."
        "Ronith Blario":
           display_name: "Ronith Blario"
           text: "Solgane du verteidigst oder einen Angriff durchführst, falls das feindliche Schiff im %ROTATEARC% eines anderen befreundeten Schiffes ist, darfst du 1 Fokusmarker jenes befreundeten Schiffes ausgeben, um 1 deiner %FOCUS%-Ergebniss in ein %EVADE%- oder %HIT%- Ergebnis zu ändern."
        "Merl Cobben":
           display_name: "Merl Cobben"
           text: "Solange ein befreundetes Schiff in Reichweite 0-2 einen Primärangriff durchführt, falls du im %BULLSEYEARC% des Verteidigers bist, wirft der Verteidiger 1 Verteidigungswürfel weniger."
        "Seftin Vanik":
           display_name: "Seftin Vanik"
           text: "Nachdem du eine %BOOST%-Aktion durchgeführt hast, darfst du 1 Ausweichmarker auf ein befreundetes Schiff in Reichweite 1 transferieren."
        "Suralinda Javos":
           display_name: "Suralinda Javos"
           text: "Nachdem du ein Manöver teilweise ausgeführt hast, darfst du 1 Anstrengungsmarker erhalten, um dich um 90 ° oder 180 ° zu drehen."
        "Wrobie Tyce":
           display_name: "Wrobie Tyce"
           text: "Nachdem du in Angriffsreichweite 1 verteidigt hast, falls der Angreifer seine Würfel modifiziert hat, erhält der Angreifer 1 Erschöpfungsmarker."
        "Poe Dameron (YT-1300)":
           display_name: "Poe Dameron "
           text: "Bevor du ein Manöver ausführst, darfst du 1 %CHARGE% ausgeben. Falls du das tust, ignorierst du während jenes Manövers Hindernisse.%LINEBREAK% Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 2 %CHARGE% ausgeben, um eine weiße %BOOST%-Aktion oder eine rote %BARRELROLL%-Aktion durchzuführen. Falls du eine rote %BARRELROLL%-Aktion durchgeführt hast, legst du dann 1 Schadenskarte offen, falls möglich."
        "Lando Calrissian (Resistance)":
           display_name: "Lando Calrissian "
           text: "Nachdem du ein rotes Manöver vollständig ausgeführt hast oder eine rote Aktion durchgeführt hast, darfst du beliebig viele %CHARGE% ausgeben, um ebenso viele befreundete Schiffe in Reichweite 0-2 zu wählen. Jedes gewählte Schiff darf eine Aktion durchführen, auch solange es gestresst ist."
        "Count Dooku (SoC)":
           display_name: "Count Dooku (SoC)"
           text: "Während eines Angriffs, bevor ein Schiff in Reichweite 0-2 Angriffs- oder Verteidigungswürfel wirft, falss alle deine %FORCE% aktiv sind, darfst du 1 %FORCE% ausgeben und ein Ergebnis benennen. Falls der Wurf das benannte Ergebnis nicht enthält, muss das Schiff 1 Würfel auf jenes Ergebnis ändern."
        "The Mandalorian":
           display_name: "Der Mandalorianer"
           text: "Solange du verteidigst oder ein Angriff durchführst, falls du im %FRONTARC% in Reichweite 1-2 von 2 oder mehr feindlichen Schiffen bist, darfst du 1 deiner Leerseiten-Ergebnisse in ein %FOCUS% -Ergebnis ändern."
        "Q9-0":
           display_name: "Q9-0"
           text: "Nachdem du ein Expertenmanöver vollständig ausgeführt hast, darfst du eine %CALCULATE% oder %BARRELROLL%-Aktion durchführen , auch solange du gestresst bist. Falls du das tust, erhältst du 1 Anstrengungsmarker."
        "Guild Bounty Hunter":
           display_name: "Kopfgeldjäger der Gilde"
           text: "Solange du einen Angriff in Angriffsreichweite 1-2 durchführst, darfst du 1 nicht-wiederkehrende %CHARGE% von1 deiner ausgerüsteten %ILLICIT%-Aufwertungen ausgeben, um 1 %FOCUS%-Ergebnis in ein %CRIT%-Ergebnis zu ändern."
        "TransGalMeg Control Link":
           display_name: "Transgalmeg-Steuerlink"
           text: "<b>Hyperraum-Andockring:</b> 1 Delta-7-Aethersprite, Eta-2-Actis oder V-Flügler der Nimbus-Klasse kann an dir andocken.%LINEBREAK% Solange ein Schiff an dir angedockt ist, erhältst du die Initiative jenes Schiffes und dir wird sein Rad zugeordnet. Solange du ein Manöver durchführst, verringere seine Geschwindigkeit auf 1. Bevor du ein Expertenmanöver ausführst, führe stattdessen ein weisses Stationäre-Manöver [%STOP%] aus, dann darfst du dich um 90 ° oder 180 ° drehen.%LINEBREAK% Solange kein Schiff an dir angedockt ist, wird dir kein Manöverrad zugeordnet und du wirst nicht aktiviert und kämpfst nicht."
        "Garven Dreis (BoY)":
           display_name: "Garven Dreis"
           text: "Nachdem du einen Fokusmarker ausgegeben hast, darfst du 1 befreundetes Schiff in Reichweite 1-3 wählen. Jenes Schiff erhält 1 Fokusmarker."
        "Luke Skywalker (BoY)":
           display_name: "Luke Skywalker"
           text: "Nachdem du während eines Angriffes als Verteidiger deklariert worden bist, darfst du 1 %FORCE% wiederherstellen."
        "Wedge Antilles (BoY)":
           display_name: "Wedge Antilles"
           text: "Solange du einen Angriff durchführst, falls ein anderes befreundetes Schiff im Feuerwinkel des Verteidigers ist, wirft der Verteidiger 1 Verteidigungswürfel weniger."
        "Biggs Darklighter (BoY)":
           display_name: "Biggs Darklighter"
           text: "Während der Systemphase darfst du 1 befreundetes Schiff in Reichweite 1 wählen. Falls du das tust, behandle deinei Initiative bis zum Ende der Aktivierungsphase so, als würde sie der Initiative des gewählten Schiffes entsprechen."
        "Jek Porkins (BoY)":
           display_name: "Jek Porkins"
           text: "Nachdem du einen Stressmarker erhalten hast, darfst du 1 Angriffswürfel werfen, um ihn zu entfernen. Bei einem %HIT% -Ergebnis erleidest du 1 %HIT% -Schaden."
        "Corran Horn (X-Wing)":
           display_name: "Corran Horn"
           text: "Nachdem du den Verteidiger eines Angriffs deklariert hast, falls du den Verteidiger als Ziel erfasst hast, daf ein befreundetes Schiff seinen Zielerfassungsmarker von dir auf den Verteidiger transferieren."
        "Wes Janson":
           display_name: "Wes Janson"
           text: "Nachdem du einen Angriff durchgeführt hast, darfst du 1 %CHARGE% ausgeben, um dem Verteidiger 1 Störsignalmarker zuzuordnen."
        "Poe Dameron (HoH)":
           display_name: "Poe Dameron"
           text: "Nachdem ein befreundetes Schiff in Reichweite 0-2 während seiner Aktivierung eine Aktion durchgeführt hat, darfst du 2 %CHARGE% ausgeben. Falls du das tust, darf jenes Schiff eine weiße Aktion durchführen und sie behandeln als wäre sie rot."
        "Temmin Wexley (HoH)":
           display_name: "Temmin Wexley"
           text: "Zu Beginn der Kampfphase darf jeder befreundete T-70-X-Flügler in Reichweite 0-3 1 Anstrengungsmarker erhalten um seine ausgerüstete %HYPERDRIVE%-Aufwertung umzudrehen. Falls es das tut, erhält jenes Schiff 1 Berechnungsmarker."
        "C'ai Threnalli":
           display_name: "C'ai Threnalli"
           text: "Nachdem du ein Manöver vollständig ausgeführt hast, falls du dich durch ein befreundetes Schiff hindurch bewegt hast, darfst du eine %EVADE% -Aktion durchzuführen."
        "Nimi Chireen":
           display_name: "Nimi Chireen"
           text: "Solange du einen Angriff durchführst, falls die Initiative des Verteidigers höher ist als deine, darfst du 1 Leerseiten -Ergebnis in ein %FOCUS% -Ergebnis ändern."
        "Venisa Doza":
           display_name: "Venisa Doza"
           text: "Solange du einen %TORPEDO% oder %MISSILE%-Angriff durchführst, darfst du die %FRONTARC% -Vorraussetzung für jenen Angriff behandeln, als wäre sie %REARARC%. Falls du das tust, behandler die Reichweitenvorraussetzung, als wäre sie 1-2."
        "Zay Versio":
           display_name: "Zay Versio"
           text: "Solange du verteidigst, falls der Angreifer beschädigt ist, darfst du 1 Verteidigungswürfel neu werfen."
        "Fifth Brother":
           display_name: "fünfter Bruder"
           text: 'Solange du einen Angriff durchführst, nach dem Schritt „Ergebnisse neutralisieren“. falls der Angriff getroffen hat, darfst du 2 %FORCE% ausgeben, um 1 %CRIT%-Ergebnis hinzuzufügen.'
        "Darth Vader (BoY)":
           display_name: "Darth Vader"
           text: "Solange du einen Angriff durchführst, darfst du 1 %FORCE% ausgeben, um 1 Leerseitenergebnis in ein %HIT% -Ergebnis ändern."
        "Juno Eclipse":
           display_name: "Juno Eclipse"
           text: "Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."
        "Major Vonreg":
           display_name: "Major Vonreg"
           text: "Während der Systemphase darfst du 1 feindliches Schiff in deinem %BULLSEYEARC% wählen. Jenes Schiff erhält 1 ERschöpfungsmarker- oder Anstrengungsmarker deiner Wahl."
        "First Order Provocateur":
           display_name: "Provokateuer der Ersten Ordnung"
           text: "Inspiriert von Major Vonregs Ideen entwickelte Sienar-Jaemus Flottensysteme viele altbewährte Modelle weiter und kontruierte diesen einmaligen brandgefählichen Flieger."
        '"Ember"':
           display_name: "„Ember“"
           text: "Solange du einen Angriff durchführst, falls in Reichweite 0-1 des Verteidigers ein beschädigtes Schiff ist, das mit dem Verteidiger befreundet ist, kann der Verteidiger keine Fokus- oder BErechnungsmarker ausgeben."
        '"Holo"':
           display_name: "„Holo“"
           text: "Zu Beginn der Kampfphase <stong>musst</strong> du 1 deiner Marker auf ein anderes befreundetes Schiff in Reichweite 0-2 transferieren."
        "Darth Vader (TIE Defender)":
           display_name: "Darth Vader "
           text: "Du kannst keine %FORCE% ausgeben, außer solange du angreifst.%LINEBREAK% Solange du einen Angriff durchführst, darfst du 1 %FORCE% ausgeben, um 1 Leerseiten-Ergebnis in ein %CRIT%-Ergebnis zu ändern."
        "Captain Dobbs":
           display_name: "Captain Dobbs"
           text: 'Solange ein anderes befreundetes Schiff in Reichweite 0-1 verteidigt, vor dem Schritt "Ergebnisse neutralisieren", falls du im Angriffswinkel und nicht ionisiert bist, darfst du 1 Ionenmarker erhalten, um 1 %HIT%-Ergebnis zu negieren.'
        "Vult Skerris":
           display_name: "Vult Skerris"
           text: "<b>Aktion:</b> Erhalte 1 Anstrengungsmarker, um 1 %CHARGE% wiederherzustellen.%LINEBREAK% Bevor du kämpfst, darfst du 1 %CHARGE% ausgeben, um eine Aktion durchzuführen."
        "Lieutenant Galek":
           display_name: "Lieutenant Galek"
           text: "Nachdem ein anderes befreundetes Schiff in Reichweite 0-2 zerstört worden ist, darfst du eine %COORDINATE%-Aktion durchführen, auch solange du gestresst bist. Solange du koordinierst, kann das Schiff, das du wählst, eine Aktion nur dann durchführen, falls sie auch auf deiner Aktionsleiste ist."
        "DT-798":
           display_name: "DT-798"
           text: "Solange du einen Primärangriff durchführst, falls du nicht angestrengt bist, darfst du 1 Anstrengungsmarker erhalten, um 1 zusätzlichen Würfel zu werfen."
        "Lin Gaava":
           display_name: "Lin Gaava"
           text: "<b>Aufbau:</b> Nachdem die Streitkräfte platziert worden sind, ordne dir selbst und bis zu 2 anderen befreundeten TIE/FO, TIE/EO oder TIE/SE-Jägern, die keine ausgerüstete %Modification%-Aufwertungen haben, den Zustand <strong>•••BLEIFUSS</strong>"
        "Vult Skerris (TIE Interceptor)":
           display_name: "Vult Skerris "
           text: "<b>Aktion:</b> Erhalte 1 Anstrengungsmarker, um 1 %CHARGE% wiederherzustellen.%LINEBREAK% Bevor du kämpfst, darfst du 1 %CHARGE% ausgeben, um eine Aktion durchzuführen."
        "Gideon Hask (TIE Interceptor)":
           display_name: "Gideon Hask "
           text: "Solange du einen Angriff gegen einen beschädigten Verteidiger durchführst, wirfst du 1 zusätzlichen Angriffswürfel."
        "Nash Windrider":
           display_name: "Nash Windrider"
           text: "Während der Kampfphase, nachdem ein befreundetes kleines Schiff in Reichweite 0-3 zerstört worden ist, falls jenes Schiff in dieser Phase noch nicht gekämpft hat, darfst du 1 %CHARGE% ausgeben. Falls du das tust, kämpft jenes Schiff bei der aktuellen Initiative."
        "Ciena Ree":
           display_name: "Ciena Ree"
           text: "Nachdem du einen Angriff durchgeführt hast, falls der Verteidiger zerstört worden ist, erhältst du 1 Stressmarker.%LINEBREAK% Nachdem ein befreundetes Schiff in Reichweite 0-3 zerstört worden ist, entferne 1 Stressmarker."
        "Lieutenant Lorrir":
           display_name: "Lieutenant Lorrir"
           text: "Solange du eine Fassrolle fliegst, <strong>musst</strong> du die [%TURNLEFT% oder %TURNRIGHT%]-Schablone statt der [%STRAIGHT%]-Schablone verwenden."
        "Iden Versio (BoY)":
           display_name: "Iden Versio"
           text: "Bevor ein befreundeter TIE in Reichweite 0-1 Schaden erleiden würde, darfst du 2 %CHARGE% ausgeben. Falls du das tust, verhindere 1 %HIT% oder %CRIT%."
        "Sigma 4 (BoY)":
           display_name: "Sigma 4"
           text: "Nachdem du eine %BARRELROLL% -Aktion durchgeführt hast, darfst du 1 %CHARGE% ausgeben, um eine %BOOST% -Aktion durchzuführen."
        "Sigma 5 (BoY)":
           display_name: "Sigma 5"
           text: "Nachdem du einen Angriff durchgeführt hast, der getroffen hat, darfst du 1 %CHARGE% ausgeben, um eine %EVADE% -Aktion durchzuführen."
        "Sigma 6 (BoY)":
           display_name: "Sigma 6"
           text: "Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du 1 %CHARGE% ausgeben, um eine %SLAM% -Aktion durchzuführen."
        "Sigma 7 (BoY)":
           display_name: "Sigma 7"
           text: "Während der Systemphase darfst du 1 %CHARGE% ausgeben, um ein feindliches Schiff in Reichweite 0-1 als Ziel zu erfassen."
        "Second Sister":
           display_name: "Zweite Schwester"
           text: 'Solange du einen Angriff durchführst, darfst du nach dem Schritt "Ergebnisse neutralisieren", falls der Angriff trifft, 2%FORCE% ausgeben. Falls du das tust, ändere alle deine %HIT% -Ergebnisse in %CRIT%-Ergebnisse.'
        "ISB Jingoist":
           display_name: "ISB-Nationalist"
           text: "Bevor du kämpfst, darfst du 1 feindliches Schiff in deinem %FRONTARC% in Reichweite 0-1 wählen. Falls du das tust, erhält jenes Schiff 1 Erschöpfungs- oder Anstrengungsmarker deiner Wahl, außer es entscheidet, 1 grünen Marker zu entfernen."
        "Moff Gideon":
           display_name: "Moff Gideon"
           text: "Solange ein feindliches Schiff in Reichweite 1-3 verteidigt, bevor die Angriffswürfel geworfen werden, darfst du 1 %CHARGE% ausgeben und ein befreundetes Schiff in Reichweite 0-1 des Verteidigers wählen. Falls du das tust, können die Verteidigungswürfel während dieses Angriffes nicht modifiziert werden und das gewählte befreundete Schiff erhält 1 Anstrengungsmarker."
        '"Wampa" (BoY)':
           display_name: "„Wampa“"
           text: "Solange du einen Angriff durchführst, darfst du 1 %CHARGE% ausgeben, um 1 zusätzlichen Angriffswürfel zu werfen. Nachdem du verteidigt hast, verlierst du 1 %CHARGE%."
        '"Dark Curse" (BoY)':
           display_name: "„Dark Curse“"
           text: "Solange du verteidigst,können die Würfel des Angreifers nicht modifiziert werden."
        '"Backstabber" (BoY)':
           display_name: "„Backstabber“"
           text: 'Solange du einen Primärangriff durchführst, falls ein befreundeter <strong>Darth Vader</strong> oder <strong>„Mauler“ Mithel</strong> in Reichweite 0-1 in deinem %LEFTARC% oder %RIGHTARC% ist, wirfst du 1 zusätzlichen Angriffswürfel.'
        '"Mauler" Mithel (BoY)':
           display_name: "„Mauler“ Mithel"
           text: 'Solange du einen Primärangriff durchführst, falls ein befreundeter <strong>Darth Vader</strong> oder <strong>„Backstabber“</strong> in Reichweite 0-1 in deinem %LEFTARC% oder %RIGHTARC% ist, wirfst du 1 zusätzlichen Angriffswürfel.'
        "Magna Tolvan":
           display_name: "Magna Tolvan"
           text: "Solange du 2 oder weniger Stressmarker hast, kannst du weiße Aktionen durchführen, auch solange du gestresst bist.%LINEBREAK% Nachdem du eine Stressmarker erhalten hast, darfst du eine weiße Aktion durchführen, falls möglich."
        "Yrica Quell":
           display_name: "Yrica Quell"
           text: "Nachdem du ein Manöver vollständig ausgeführt hast, darfst du ein feindliches Schiff in deinem %BULLSEYEARC% als Ziel erfassen."
        "Lyttan Dree":
           display_name: "Lyttan Dree"
           text: "Solange ein befreundetes Schiff in Reichweite 0-2 einen Angriff durchführt, falls du im %LEFTARC% oder %RIGHTARC% des Verteidigers bist, darf der Angreifer 1 Angriffswürfel neu werfen."
        '"Rampage"':
           display_name: "„Rampage“"
           text: "Nachdem du ein Manöver mit Gewschwindigkeit 3-4 ausgeführt hast, darfst du ein Schiff in deinem %ROTATEARC% in Reichweite 0-1 wählen. Falls du das tust, erhält jenes Schiff 1 Anstrengungsmarker oder 2 Anstrengungsmarker, falls du beschädigt bist."
        "Onyx Squadron Sentry":
           display_name: "Wache der Onyx-Staffel"
           text: "Der Schwere TIE/ RB wurde für einen möglichst flexiblen Einsatz wentwickelt. Seine schwere Panzerung und die Möglichkeit, einen MGK-300-Droiden als Co-Piloten zu integrieren, macht ihn zu einem exzellenten Patrouillenschiff."
        "Carida Academy Cadet":
           display_name: "Kadett der CARIDA-Akademie"
           text: "An der Carida-Akademie wird Kadetten der Imperialen Flotte Rücksichtslosigkeit und Loyalität gelehrt. Sie lernen auch, den Sieg über das Leben ihrer Kameraden zu stellen."
        "Flight Leader Ubbel":
           display_name: "Staffelführer Ubbel"
           text: "Nachdem ein befreundetes Schiff in Reichweite 0-2 verteidigt hat, falls ihm eine Schadenskarte zugeteilt worden ist, darfst du einen Bonusangriff gegen den Angreifer durchführen."
        "Sienar-Jaemus Test Pilot":
           display_name: "Testpilot von Sienar-Jaemus"
           text: "Der TIE/SE-Bomber ist trotz seiner vier Laserkanonen und modernen Systeme ein erstaunlich manövrierfähiges Schiff, das mit seinem enormen Zerstörungspotenzial gegen all die in die Schlacht zieht, die es wagen, sich gegen die Este Orndnung zu stellen."
        "First Order Cadet":
           display_name: "Kadett der Ersten Ordnung"
           text: "Durch Übungen mit scharfen Waffen will die Erste Ordnung die Schwachen aus ihren Reihen aussieben und folgt so dem Grundsatz, dass nur die Starken überleben."
        '"Grudge"':
           display_name: "„Grudge“"
           text: "Solange eine befreundete Bombe oder Mine in Reichweite 0-2 detoniert, darfst du jedes Mal, wenn Angriffswürfel geworfen werden, um ihren effekt abzuhandeln, bis zu 1 jener Würfel neu werfen."
        '"Dread"':
           display_name: "„Dread“"
           text: "Nachdem du nachgeladen hast, erhält jedes Schiff in deinem %BULLSEYEARC% 1 Erschöpfungsmarker."
        '"Scorch" (TIE/Se Bomber)':
           display_name: "„Scorch“"
           text: "Solangeein befreundetes Schiff in Reichweite 0-1 einen Primärangriff durchführt, darf es 1 %HIT%-Ergebnis ausgeben. Falls es das tut, erhält der Verteidiger nach dem Verteidigen 1 Anstrengungsmarker."
        '"Breach"':
           display_name: "„Breach“"
           text: "Nachdem du ein Manöver vollständig ausgeführt oder eine %BOOST% -Aktion durchgeführt hast, falls du dich durch ein feindliches Schiff hindurchbewegt hast, darfst du jenes Schiff als Ziel erfassen."
        "Jul Jerjerrod":
           display_name: "Jul Jerjerrod"
           text: "Nachdem du eine %BOOST%-Aktion durchgeführt hast, darfst du 1 %CHARGE% ausgeben, um einen roten oder orangen Nicht-Zielerfassungsmarker zu entfernen."
        "Captain Phasma":
           display_name: "Captain Phasma"
           text: 'Solange du verteidigst, nach dem Schritt "Ergebnisse neutralisieren", <strong>muss</strong> ein anderes befreundetes Schiff in Reichweite 0-1 1 %HIT%/%CRIT%-Schaden erleiden, um 1 passendes Ergebnis zu negieren.'
        "Lieutenant LeHuse":
           display_name: "Lieutenant LeHuse"
           text: "Solange du einen Angriff durchgeführst, darfst du die Zielerfassung eines anderen befreundeten Schiffes auf dem Verteidiger ausgeben, um beliebig viele deiner Ergebniss neu zu werfen."
        '"Rush"':
           display_name: "„Rush“"
           text: "Solange du beschädigt bist, behandle deine Initiative, als wäre sie 6."
        "Kylo Ren (TIE Whisper)":
           display_name: "Kylo Ren "
           text: "Bevor einem feindlichen Schiff in deinem %BULLSEYEARC% eine verdeckte Schadenskarte zugeteilt wird, darfst du 1 %FORCE% ausgeben. Falls du das tust, wird jene Schadenskarte stattdessen offen zugeteilt."
        '"Wrath"':
           display_name: "„Wrath“"
           text: "Nachdem du einen %BULLSEYEARC%-Angriff durchgeführt hast, falls du 1 oder mehrere rote oder orange Nicht-Zielerfassungsmasrker hast, darfst du einen Bonusangriff gegen ein anderes Ziel durchführen."
        '"Nightfall"':
           display_name: "„Nightfall“"
           text: "Nachdem du ein Manöver vollständig ausgeführt oder eine %BOOST% -Aktion durchgeführt hast, erhält jedes Schiff, durch das du dich hindurchbewegt hast, 2 Störsignalmarker."
        '"Whirlwind"':
           display_name: "„Whirlwind“"
           text: "Bevor du kämpfst, darfst du beliebig viele Störsignalmarker entfernen, dann darfst du 1 Fokusmarker für jedes feindliche Schiff erhalten, das dich in seinem %FRONTARC% hat."
        "709th Legion Ace":
           display_name: "Fliegerass der 709. Legion"
           text: "Unter dem Kommando des Obersten Anführers Kylo Ren kämpft die 709. Legion erbarmungslos gegen den Widerstand, um diesen zu vernichten und die Galaxis unter die Kontrolle der Ersten Ordnung zu bringen."
        "Red Fury Zealot":
           display_name: "Fanatiker der Red Fury"
           text: "Die 709. Legion , auch red Fury genannt, wurde vom Obersten Anführer Kylo Ren beauftragt, Dissidenten am Außenposten Black Spire aufzuspüren."
        "K-2SO":
           display_name: "K-2SO"
           text: "Nachdem du einen Stressmarker erhalten hast, erhalte 1 Berechnungsmarker."
        '"Kickback" (SoC)':
           display_name: "„Kickback“ (SoC)"
           text: "Nachdem du eine %BARRELROLL% -Aktion durchgeführt hast, darfst du eine rote %LOCK% -Aktion durchführen. Falls du das tust, bevordu die %LOCK% -Aktion durchführst, darfst du 1 Anstrengungsmarker erhalten, um sie zu behandeln, als wäre sie weiß."
        '"Axe" (SoC)':
           display_name: "„Axe“ (SoC)"
           text: "Nachdem du einen Angriff durchgeführt hast, darfst du ein anderes befreundetes Schiff mit der Schiffsfähigkeit <strong>Dafür Geboren</strong> in Reichweite0-2 in deinem %LEFTARC% oder %RIGHTARC% wählen. Das gewählte Schiff erfasst den Verteidiger als Ziel."
        '"Slammer"':
           display_name: "„Slammer“"
           text: "Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 2 %CHARGE% ausgeben, um eine %SLAM%-Aktion durchzuführen, auch solange du gestresst bist."
        "Morna Kee":
           display_name: "Morna Kee"
           text: "Während der Endphase darfst du 1 %CHARGE% ausgeben, um 1 deiner Verstärkungsmarker auf deinem anderen vollten Winkel umzudrehen, anstatt ihn zu entfernen."
        "DFS-081 (SoC)":
           display_name: "DFS-081"
           text: "Solange du verteidigst, darfst du 1 %CHARGE% und 1 Berechnungsmarker ausgeben, um 1 %CRIT%-Ergebnis zu negieren."
        "DFS-311 (SoC)":
           display_name: "DFS-311"
           text: "Zu Beginn der Kampfphase darfst du 1 deiner Berechnungsmarker auf ein anderes befreundetes Schiff in Reichweite 0-3 transferieren."
        "Haor Chall Prototype (SoC)":
           display_name: "Prototyp von Haor Chall"
           text: "Nachdem ein feindliches Schiff in deinem %BULLSEYEARC%ein Szenario-Merkmal oder ein anderes befreundetes Schiff zum Verteidiger deklariert hat, darfst du eine %CALCULATE% oder %LOCK% Aktion durchführen."
        "Agent Terex":
           display_name: "Agent Terex"
           text: "<b>Aufbau:</b> Nachdem die Streitkräfte platziert worden sind, wähle eine beliebige Anzahl deiner ausgerüsteten %ILLICIT%-Aufwertungen und rüste befreundete TIE/eo oder TIE/se-Jäger mit ihnen aus. Jedem Schiff kann so nur 1 %ILLICIT% zugeordnet werden. %LINEBREAK%<b>Spielende:</b> Lege alle %ILLICIT%-Aufwertungen zurück zu ihren ursprünglichen Schiffen."
        "Gideon Hask (Xi Shuttle)":
           display_name: "Gideon Hask "
           text: "Solange du oder ein befreundetes kleines Schiff in Reichweite 0-2 einen Primärangriff gegen einen beschädigten Verteidiger durchgeführt, falls der Angreifer 2 oder weniger Angriffswürfel geworfen hat, darf er 1 Anstrengungsmarker erhalten, um 1 zusätzlichen Angriffswürfel zu werfen."
        "Agent Tierny":
           display_name: "Agent Tierny"
           text: "<b>Aufbau:</b> Nachdem die Streitkräfte plaziert worden sind, <strong>musst</strong> du einem feindlichen Schiff den Zustand <strong>•Vertrauensbruch</strong> zuordnen."
        "Doctor Aphra":
           display_name: "Doktor Aphra"
           text: "Bevor du kämpft, darfst du 1 grünen Marker und 1 %CHARGE% ausgeben. Falls du das tust, darfst du ein anderes Schiff in Reichweite 0-1 wählen, das nicht gestresst ist. Das gewählte Schiff erhält 1 Stressmarker."
        "Bossk (Z-95 Headhunter)":
           display_name: "Bossk "
           text: 'Solange du einen Primärangriff durchführst, nach dem Schritt „Ergebnisse neutralisieren“, darfst du 1 %CRIT%-Ergebnis ausgeben, um 2 %HIT%-Ergebnisse hinzuzufügen.'
        "7th Sky Corps Pilot":
           display_name: "Pilot des 7. Luftkorps"
           text: "Der Z-95-Sternenjäger wird für seine Anpassungs- und Widerstandsfähigkeit respektiert. Das Modell für die republikanischen Klontruppler wurde entwickelt, um den einzigartigen Fähigkeiten seiner Piloten gerecht zu werden."

    upgrade_translations =
        "0-0-0":
           display_name: """0-0-0"""
           text: """Zu Beginn der Kampfphase darfst du 1 feindliches Schiff in Reichweite 0-1 wählen. Falls du das tust, erhältst du 1 Berechnungsmarker, es sei denn, jenes Schiff entscheidet sich dafür, 1 Stressmarker zu erhalten."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """Solange du einen Angriff durchführst, nachdem du Angriffswürfel geworfen hast, darfst du eine Art von grünen Markern benennen. Falls du das tust, erhalte 2 Ionenmarker und der Verteidiger kann während dieses Angriffs keine Marker der benannten Art ausgeben."""
        "Andrasta":
           display_name: """Andrasta"""
           text: """Füge den %DEVICE%-Slot hinzu."""
        "Black One":
           display_name: """Schwarz Eins"""
           text: """Nachdem du eine %SLAM%-Aktion durchgeführt hast, verliere 1 %CHARGE%. Dann darfst du 1 Ionenmarker erhalten, um 1 Entwaffnet-Marker zu entfernen.%LINEBREAK%Falls deine %CHARGE% inaktiv ist, kannst du die %SLAM%-Aktion nicht durchführen."""
        "Dauntless":
           display_name: """Dauntless"""
           text: """Nachdem du ein Manöver teilweise ausgeführt hast, darfst du 1 weiße Aktion durchführen, wobei du jene Aktion behandelst, als wäre sie rot."""
        "Ghost":
           display_name: """Ghost"""
           text: """Du kannst 1 Jagdshuttle oder eine Raumfähre der Sheathipede-Klasse andocken lassen.%LINEBREAK%Deine angedockten Schiffe können nur von deinen hinteren Stoppern aus abgesetzt werden."""
        "Grappler":
           display_name: """Grappler"""
           text: """Solange du einen <strong>Bohrschnabel</strong>-Angriff in Angriffsreichweite 1 durchführst, falls der Verteidiger gefangen ist, behandle ihn stattdessen, als wäre er in Reichweite 0."""
        "Havoc":
           display_name: """Havoc"""
           text: """Entferne den %CREW%-Slot. Füge %SENSOR%- und %ASTROMECH%-Slots hinzu."""
        "Hound's Tooth":
           display_name: """Reißzahn"""
           text: """An dir kann 1 Z-95-AF4-Kopfjäger andocken."""
        "IG-2000":
           display_name: """IG-2000"""
           text: """Du hast die Pilotenfähigkeit jedes anderen befreundeten Schiffes mit der Aufwertung <strong>IG-2000</strong>."""
        "Marauder":
           display_name: """Marodeur"""
           text: """Solange du einen %REARARC%-Primärangriff durchführst, darfst du 1 Angriffswürfel neu werfen.%LINEBREAK%Füge den %GUNNER%-Slot hinzu."""
        "Millennium Falcon":
           display_name: """Millennium Falke"""
           text: """Solange du verteidigst, falls du ausweichst, darfst du 1 Verteidigungswürfel neu werfen."""
        "Mist Hunter":
           display_name: """Nebeljäger"""
           text: """Füge den %CANNON%-Slot hinzu."""
        "Moldy Crow":
           display_name: """Moldy Crow"""
           text: """Erhalte eine %FRONTARC%-Primärwaffe mit einem Wert von 3.%LINEBREAK%Während der Endphase, entferne bis zu 2 Fokusmarker nicht."""
        "Nautolan's Revenge":
           display_name: """Rache der Nautolaner"""
           text: """Bevor du kämpfst, darfst du bis zu 2 Berechnungsmarker ausgeben. Falls du das tust, stellst du ebenso viele %ENERGY% wieder her."""
        "Neimoidian Grasp":
           display_name: """Neimoidianischer Griff"""
           text: """Nachdem du einen Angriff durchgeführt hast, darfst du eine rote %EVADE%-Aktion durchführen.%LINEBREAK%Solange du verteidigst, falls du ausweichst, darfst du 1 zusätzlichen Verteidigungs­würfel werfen."""
        "Outrider":
           display_name: """Outrider"""
           text: """Solange du einen Primärangriff auf Reichweite 3 durchführst, wirf 1 zusätzlichen Angriffswürfel.%LINEBREAK%Wenn du einen Angriff durchführst, der durch ein Hindernis versperrt wird, darfst du 1 der %EVADE%-Ergebnisse des Verteidigers in ein %FOCUS%-Ergebnis ändern. %LINEBREAK%<i>Inoffizielle Übersetzung der neuen englischen Fähigkeit (Rules Reference 1.4.6)</i>"""
        "Phantom":
           display_name: """Phantom"""
           text: """Du kannst in Reichweite 0-1 andocken."""
        "Punishing One":
           display_name: """Vollstrecker Eins"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %FRONTARC% ist, wirf 1 zusätzlichen Angriffswürfel.%LINEBREAK%Entferne den %CREW%-Slot. Füge den %ASTROMECH%-Slot hinzu."""
        "ST-321":
           display_name: """ST-321"""
           text: """Nachdem du eine %COORDINATE%-Aktion durchgeführt hast, darfst du ein feindliches Schiff in Reichweite 0-3 des von dir koordinierten Schiffes wählen. Falls du das tust, erfasse jenes feindliche Schiff als Ziel, wobei du die Reichweitenbeschränkung ignorierst."""
        "Scimitar":
           display_name: """Scimitar"""
           text: """<strong>Aufbau:</strong> Nach dem Schritt „Streitkräfte platzieren“ darfst du dich tarnen.%LINEBREAK%Nachdem du dich enttarnt hast, darfst du ein feindliches Schiff in deinem %BULLSEYEARC% wählen. Falls du das tust, erhält es 1 Störsignalmarker."""
        "Shadow Caster":
           display_name: """Shadow Caster"""
           text: """Nachdem du einen Angriff durchgeführt hast, der getroffen hat, falls der Verteidiger in deinem %SINGLETURRETARC% und in deinem %FRONTARC% ist, erhält der Verteidiger 1 Fangstrahlmarker."""
        "Slave I":
           display_name: """Sklave I"""
           text: """Nachdem du ein Wende­­manöver (%TURNLEFT% oder %TURNRIGHT%) oder Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) aufgedeckt hast, darfst du dein Rad auf das Manöver derselben Geschwindigkeit und Flugrichtung in der anderen Orientierung einstellen.%LINEBREAK%Füge den %TORPEDO%-Slot hinzu."""
        "Slave I":
           display_name: """Sklave I"""
           text: """Solange du einen&nbsp;%FRONTARC%-Angriff durchführst, falls du im <rear180> des Verteidigers bist, darfst du 1&nbsp;%HIT%-Ergebnis in ein&nbsp;%CRIT%-Ergebnis zu ändern.%LINEBREAK%Füge den &nbsp;%GUNNER%-Slot hinzu."""
        "Soulless One":
           display_name: """Seelenlose"""
           text: """Solange du verteidigst, falls der Angreifer außerhalb deines Feuerwinkels ist, darfst du 1 Verteidigungswürfel neu werfen."""
        "Syliure-31 Hyperdrive":
           display_name: """Syliure-31-Hyperantrieb"""
           text: """<strong>Aufbau:</strong> Du kannst auf der Spielfläche überall jenseits von Reichweite 1 zu Hindernissen, jenseits von Reichweite 3 zu feindlichen Schiffen und jenseits von Reichweite 3 zum feindlichen Spielflächenrand platziert werden."""
        "Trident":
           display_name: """Trident"""
           text: """Nachdem du ein Schiff überschnitten hast oder ein Schiff dich überschnitten hat, falls es nicht gefangen ist, darfst du 1 %ENERGY% ausgeben. Falls du das tust, erhält es 3 Fangstrahlmarker."""
        "Virago":
           display_name: """Virago"""
           text: """Während der Endphase darfst du 1 %CHARGE% ausgeben, um eine rote %BOOST%-Aktion durchzuführen.%LINEBREAK%Füge den %MODIFICATION%-Slot hinzu."""
        "Assailer":
           display_name: """Sturmbringer"""
           text: """Füge den&nbsp;%GUNNER%-Slot hinzu.%LINEBREAK%Solange du verteidigst, falls die Angriffs-reichweite 1 ist, darfst du 1 zusätzlichen Verteidi-gungs würfel werfen."""
        "Blood Crow":
           display_name: """Blood Crow"""
           text: """Füge den&nbsp;%GUNNER%-Slot hinzu.%LINEBREAK%Solange du einen Angriff in Angriffsreichweite 1-2 durchführst, darfst du 1&nbsp;%FOCUS%-Ergebnis hinzufügen."""
        "Bright Hope":
           display_name: """Bright Hope"""
           text: """Du kannst nur deinen %FULLFRONTARC% verstärken.%LINEBREAK%Solange du verteidigst, falls du verstärkt bist und der Angreifer in deinem %FULLFRONTARC% ist, darfst du 1 zusätzlichen Verteidigungs würfel werfen."""
        "Broken Horn":
           display_name: """Broken Horn"""
           text: """Füge&nbsp;%CREW%- und %ILLICIT%-Slots hinzu.%LINEBREAK%Falls du beschädigt bist, verringere die Schwierigkeit deiner Manöver mit Geschwindigkeit 3-5."""
        "Corvus":
           display_name: """Corvus"""
           text: """CorvusDu kannst bis zu 2 kleine Schiffe andocken.%LINEBREAK%Nachdem du eine %CALCULATE%&nbsp;-Aktion durchgeführt hast, erhältst du 1 Berechnungsmarker."""
        "Dodonna's Pride":
           display_name: """Dodonnas Stolz"""
           text: """Füge&nbsp;<team>-und <cargo>-Slots hinzu."""
        "Impetuous":
           display_name: """Ungestüm"""
           text: """Füge den&nbsp;%CREW%-Slot hinzu.%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, falls der Verteidiger zerstört worden ist, darfst du eine %FOCUS%&nbsp;- oder &nbsp;%LOCK%&nbsp;-Aktion durchführen."""
        "Insatiable Worrt":
           display_name: """Gefräßiger Worrt"""
           text: """Füge den&nbsp;<cargo>-Slot hinzu.%LINEBREAK%Während der Endphase darfst du 1 zusätzlichen&nbsp;additional schilde oder %ENERGY% wiederherstellen."""
        "Instigator":
           display_name: """Instigator"""
           text: """Füge den&nbsp;<team>-Slot hinzu.%LINEBREAK%Solange du einen Angriff durchführst, falls der Verteidiger einen orange-farbenen oder roten Marker hat, darfst du bis zu 2 Angriffswürfel neu werfen."""
        "Jaina's Light":
           display_name: """Jainas Licht"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-2 verteidigt, falls der Angriff durch ein Hindernis versperrt wird, darfst du 1 %ENERGY% ausgeben. Falls du das tust, wirft der Verteidiger 1 zusätzlichen Verteidigungswürfel."""
        "Liberator":
           display_name: """Liberator"""
           text: """Du kannst bis zu 2 kleine Schiffe andocken.%LINEBREAK%Nachdem ein Schiff von dir abgesetzt worden ist, darf es eine %FOCUS%&nbsp;- oder&nbsp;%BARRELROLL%&nbsp;-Aktion durchführen."""
        "Luminous":
           display_name: """Luminous"""
           text: """<strong>Aufbau:</strong> Beginne in der Reserve.%LINEBREAK%Am Ende des Aufbaus wirst du auf der Spielfläche in Reichweite 0-2 eines befreundeten Schiffes platziert."""
        "Merchant One":
           display_name: """Händler Eins"""
           text: """Füge&nbsp;%TURRET%-, <team>-, und <cargo>&nbsp;-Slots hinzu.%LINEBREAK%<strong>Bonusangriff:</strong> Führe einen&nbsp;%TURRET%-Angriff durch."""
        "Quantum Storm":
           display_name: """Quantum Storm"""
           text: """Füge&nbsp;<team>- und <cargo>-Slots hinzu.%LINEBREAK%Nachdem du ein weißes Manöver voll - ständig ausgeführt hast, stelle 1%ENERGY% wieder her."""
        "Requiem":
           display_name: """Requiem"""
           text: """Nachdem ein Schiff von dir abgesetzt worden ist, darf es ein Schiff, das du als Ziel erfasst hast, als Ziel erfassen, wobei es Reichweitenbeschränkungen ignoriert."""
        "Suppressor":
           display_name: """Suppressor"""
           text: """Füge den&nbsp;%SENSOR%-Slot hinzu.%LINEBREAK%Nachdem du ein befreundetes Schiff koordiniert hast, darfst du 1 %ENERGY% ausgeben, um einem feindlichen Schiff in Reichweite 0-2 jenes Schiffes ein Störsignal zu senden, wobei du Reich weiten-beschränkungen ignorierst."""
        "Tantive IV":
           display_name: """Tantive IV"""
           text: """Füge 2&nbsp;%CREW%-Slots hinzu.%LINEBREAK%Solange du verteidigst, falls der Angreifer in deinem%REARARC% ist, darfst du 1 zusätzlichen Verteidigungswürfel werfen."""
        "Thunderstrike":
           display_name: """Donnerschlag"""
           text: """Füge den&nbsp;%GUNNER% -Slot hinzu.%LINEBREAK%Solange du einen Bonusangriff durch führst, falls du den Verteidiger in dieser Runde nicht angegriffen hast, darfst du 1 Angriffs - würfel neu werfen."""
        "Vector":
           display_name: """Vector"""
           text: """Füge&nbsp;%CREW%- und <cargo>-Slots hinzu.%LINEBREAK%Nachdem ein Schiff von dir abgesetzt worden ist, darf es eine %EVADE%- oder %BOOST%-Aktion durchführen."""
        "Aayla Secura":
           display_name: """Aayla Secura"""
           text: """Solange ein feindliches Schiff in deinem %BULLSEYEARC% einen Angriff durchführt, falls der Verteidiger befreundet und in Reichweite 0-2 ist, darf der Verteidiger 1 Leerseiten-Ergebnis in ein %FOCUS%-Ergebnis ändern."""
        "Ablative Plating":
           display_name: """Ablative Panzerung"""
           text: """Bevor du Schaden durch ein Hindernis oder die Detonation einer befreundeten Bombe erleiden würdest, darfst du 1 %CHARGE% ausgeben. Falls du das tust, verhindere 1 Schaden."""
        "Adaptive Shields":
           display_name: """Adaptive Schilde"""
           text: """Solange ein anderes befreundetes Schiff in Reichweite 0-1 verteidigt, falls es kleiner ist als du, darfst du 1 schilde oder 2&nbsp;%ENERGY% ausgeben, um 1&nbsp;%HIT%&nbsp;oder&nbsp;%CRIT%-Ergebnis zu negieren."""
        "Admiral Ozzel":
           display_name: """Admiral Ozzel"""
           text: """Solange ein befreundetes großes oder riesiges Schiff in Reichweite 0-3 ein Manöver ausführt, darf es 1&nbsp;%HIT% -Schaden erleiden, um stattdessen ein Manöver mit derselben Flugrichtung, derselben Schwierigkeit und einer um 1 höheren oder niedrigeren Geschwindigkeit auszuführen."""
        "Admiral Sloane":
           display_name: """Admiral Sloane"""
           text: """Nachdem ein anderes befreundetes Schiff in Reichweite 0-3 verteidigt hat, falls es zerstört ist, erhält der Angreifer 2 Stressmarker.%LINEBREAK%Solange ein befreundetes Schiff in Reichweite 0-3 einen Angriff gegen ein gestresstes Schiff durchführt, darf es 1 Angriffswürfel neu werfen."""
        "Adv. Proton Torpedoes":
           display_name: """Verstärkte Protonentorpedos"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE% aus. Ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Advanced Optics":
           display_name: """Verbesserte Optik"""
           text: """Solange du einen Angriff durchführst, darfst du 1 Fokusmarker ausgeben, um 1 deiner Leerseiten-Ergebnisse in ein %HIT%-Ergebnis zu ändern."""
        "Advanced SLAM":
           display_name: """Verbesserter SLAM"""
           text: """Nachdem du eine %SLAM%-Aktion durchgeführt hast, falls du das Manöver vollständig ausgeführt hast, darfst du eine weiße Aktion aus deiner Aktionsleiste durchführen, wobei du jene Aktion behandelst, als wäre sie rot."""
        "Advanced Sensors":
           display_name: """Verbesserte Sensoren"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du 1 Aktion durchführen.%LINEBREAK%Falls du das tust, kannst du während deiner Aktivierung keine weitere Aktion durchführen.%LINEBREAK% <i>Errata: „kannst du während deiner Aktivierung keine weitere Aktion durchführen“ statt „überspringe deinen Schritt Aktion durchführen“</i>"""
        "Afterburners":
           display_name: """Nachbrenner"""
           text: """Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du 1 %CHARGE% ausgeben, um eine %BOOST%-Aktion durchzuführen, auch solange du gestresst bist."""
        "Agent Kallus":
           display_name: """Agent Kallus"""
           text: """<strong>Aufbau:</strong> Nachdem die Streitkräfte platziert worden sind, ordne 1 feindlichen Schiff den Zustand <strong>Gejagt</strong> zu.%LINEBREAK%Solange du einen Angriff gegen ein Schiff mit dem Zustand <strong>Gejagt</strong> durchführst, darfst du 1 deiner %FOCUS%-Ergebnisse in ein %HIT%-Ergebnis ändern.%LINEBREAK%<i>Errata: „Nachdem die Streitkräfte platziert worden sind“ ergänzt</i>"""
        "Agent Terex":
           display_name: """Agent Terex"""
           text: """<strong>Setup:</strong>Equip this side faceup and place 3 calculate tokens on this card. %LINEBREAK% At the start of the Engagement Phase, you may choose a friendly ship at range 0-3 and remove 1 calculate token from this card to have that ship gain a matching token. Then, if there are no calculate tokens on this card, flip it. %LINEBREAK%<strong>Cyborg (Rückseite):</strong> Wirf während der Systemphase 1 Angriffswürfel. Bei einem %HIT%- oder %CRIT%-Ergebnis erhältst du 1 Berechnungsmarker. Ansonsten erhältst du 1 Störsignalmarker.%LINEBREAK%<strong>Aktion:</strong> Transferiere 1 Berechnungs- oder 1 Störsignalmarker auf ein Schiff in Reichweite 0-3."""
        "Agent of the Empire":
           display_name: """Agent des Imperiums"""
           text: """Du bist ein <strong>Schwarmführer</strong>. Deine Flügelmänner müssen 2-5 TIE/ln-Jäger sein.%LINEBREAK%Solange du verteidigst, dürfen bis zu 2 deiner Flügelmänner im Angriffswinkel je 1&nbsp;%HIT% - oder %CRIT%-Schaden erleiden, um ein passendes Ergebnis zu negieren."""
        "Agile Gunner":
           display_name: """Wendiger Schütze"""
           text: """Während der Endphase darfst du deinen %SINGLETURRETARC%-Anzeiger drehen."""
        "Ahsoka Tano":
           display_name: """Ahsoka Tano"""
           text: """Nachdem du ein Manöver ausgeführt hast, darfst du 1&nbsp;%FORCE% ausgeben und 1&nbsp;befreundetes Schiff in Reichweite&nbsp;1-3 in deinem Feuerwinkel wählen. Falls du das tust, darf es eine rote&nbsp;%FOCUS%&nbsp;-Aktion durchführen, auch solange es gestresst ist."""
        'Alpha-3B "Besh"':
           display_name: """Alpha-3B „Besh“"""
           text: """Solange du einen Primärangriff durchführst, darfst du deine Zielerfassung auf dem Verteidiger ausgeben, um 1 deiner Leerseiten- oder%FOCUS%-Ergebnisse in ein&nbsp;%HIT%&nbsp;-Ergebnis zu ändern.%LINEBREAK%Füge den %DEVICE%-Slot hinzu."""
        'Alpha-3E "Esk"':
           display_name: """Alpha-3E „Esk“"""
           text: """Solange du einen Primärangriff durchführst, bevor du Angriffswürfel geworfen hast, darfst du 2&nbsp;%CHARGE% ausgeben. Falls du das tust, fügen deine %CRIT%-Ergebnisse Ionenmarker statt Schaden zu."""
        "Amilyn Holdo":
           display_name: """Amilyn Holdo"""
           text: """Bevor du kämpfst, darfst du ein anderes befreundetes Schiff in Reichweite 1-2 wählen. Du darfst 1 Marker einer Art, die jenes Schiff nicht hat, auf jenes Schiff transferieren. Jenes Schiff darf 1 Marker einer Art, die du nicht hast, auf dich transferieren."""
        "Angled Deflectors":
           display_name: """Ausgerichtete Deflektoren"""
           text: """<i class = flavor_text>Sternenjägerschilde haben oft manuelle Überbrückungsschalter, mit denen die Energie in bestimmte Richtungen umgeleitet werden kann, um Front oder Heck besser zu schützen. Ein Pilot, der seine Situation nicht richtig überblickt, kann jedoch seinem Feind eine offene Flanke bieten.</i>"""
        "Asajj Ventress (Command)":
           display_name: """Asajj Ventress"""
           text: """Während der Systemphase darfst du 1 %FORCE% ausgeben. Falls du das tust, erhält jedes feindliche Schiff in deinem %FRONTARC% in Reichweite 0-1 1 Anstrengungsmarker, es sei denn, es entscheidet sich dafür, 1 Störsignalmarker zu erhalten.%LINEBREAK%<i>Errata: Der Machtpunkt ist wiederkehrend</i>"""
        "Autoblasters":
           display_name: """Autoblaster"""
           text: """<strong>Angriff:</strong> Falls der Verteidiger in deinem %BULLSEYEARC% ist, wirf 1 zusätzlichen Würfel. Während des Schrittes „Ergebnisse neutralisieren“, falls du nicht im&nbsp;%FRONTARC% des Verteidigers bist, negieren %EVADE%&nbsp;-Ergebnisse keine %CRIT%&nbsp;-Ergebnisse."""
        "Automated Target Priority":
           display_name: """Automatisches Zielsystem"""
           text: """Solange du einen Angriff durchführst, <b>musst</b> du einen Verteidiger in der kürzesten gültigen Angriffsreichweite wählen.%LINEBREAK% Nachdem du einen Angriff durchgeführt hast, der verfehlt hat, platziere 1 Berechnungs­marker auf dieser Karte. %LINEBREAK% Bevor du kämpfst, darfst du 1 Berechnungsmarker von dieser Karte entfernen, um einen passenden Marker zu erhalten."""
        "Azmorigan":
           display_name: """Azmorigan"""
           text: """Während der Endphase darfst du bis zu 2 befreundete Schiffe in Reichweite 0-1 wählen. Falls du das tust, entfernt jedes dieser Schiffe 1 Berechnungs- oder Ausweichmarker nicht."""
        "B6 Blade Wing Prototype":
           display_name: """B6 Blade Wing Prototype"""
           text: """Füge den&nbsp;%GUNNER%-Slot hinzu.%LINEBREAK%<strong>Angriff (%LOCK%):</strong> Erhalte 1 Ionenmarker, um diesen Angriff durchzuführen. Falls dieser Angriff trifft, erleidet der Verteidiger 1 zusätzlichen %HIT%/%CRIT%-Schaden für jedes passende nicht-negierte Ergebnis nach dem ersten."""
        "B6 Blade Wing Prototype":
           display_name: """Blatt-Flügler-Prototyp B6"""
           text: """Füge den %GUNNER%-Slot hinzu."""
        "BB Astromech":
           display_name: """BB-Astromechdroide"""
           text: """Während der Systemphase darfst du 1 %CHARGE% ausgeben, um eine %BARRELROLL%-Aktion durchzuführen.%LINEBREAK%<i>Errata: Timing geändert und Bedingung entfernt</i>"""
        "BB-8":
           display_name: """BB-8"""
           text: """Während der Systemphase darfst du 1 %CHARGE% ausgeben, um eine %BARRELROLL%- oder %BOOST%-Ak­tion durch­zu­fü­hren.%LINEBREAK%<i>Errata: Timing geändert und Bedingung entfernt</i>"""
        "BT-1":
           display_name: """BT-1"""
           text: """Solange du einen Angriff durchführst, darfst du für jeden Stressmarker, den der Verteidiger hat, 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern."""
        "Backwards Tailslide":
           display_name: """Rückwärts-Tailslide"""
           text: """Solange du Schub gibst oder eine Fassrolle fliegst, falls deine ausgerüstete %CONFIG%&nbsp;-Aufwertung die „(Geschlossen)“-Seite offen hat, kannst du dich durch Hindernisse hindurchbewegen und sie überschneiden.%LINEBREAK%Nachdem du durch ein Hindernis hindurch Schub gegeben oder eine Fassrolle geflogen hast, falls du nicht in Reichweite 0 des Hindernisses bist, erhältst du 1 Ausweichmarker."""
        "Barrage Rockets":
           display_name: """Raketensalve"""
           text: """<strong>Angriff (</strong>%FOCUS%<strong>):</strong> Gib 1 %CHARGE% aus. Falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 oder mehrere %CHARGE% ausgeben, um ebenso viele Angriffswürfel neu zu werfen."""
        "Battle Meditation":
           display_name: """Kampfmeditation"""
           text: """Du kannst keine limitierten Schiffe koordinieren. %LINEBREAK%Solange du eine violette %COORDINATE%-Aktion durchführst, darfst du 1 zusätzliches befreundetes nicht-limitiertes Schiff desselben Typs koordinieren. Beide Schiffe müssen dieselbe Aktion durchführen."""
        "Baze Malbus":
           display_name: """Baze Malbus"""
           text: """Solange du eine %FOCUS%-Aktion durchführst, darfst du sie behandeln, als wäre sie rot. Falls du das tust, erhalte 1 zusätzlichen Fokusmarker für jedes feindliche Schiff in Reichweite 0-1, bis zu einem Maximum von 2."""
        "Biohexacrypt Codes":
           display_name: """Bio-Hexakryptcode"""
           text: """Solange du koordinierst oder ein Störsignal sendest, falls du ein Schiff als Ziel erfasst hast, darfst du jene Zielerfassung ausgeben, um jenes Schiff zu wählen, wobei du die Reichweitenbeschränkung ignorierst."""
        "Bistan":
           display_name: """Bistan"""
           text: """Nachdem du einen Primärangriff durchgeführt hast, falls du fokussiert bist, darfst du einen Bonus-%SINGLETURRETARC%-Angriff gegen ein Schiff, das du in dieser Runde noch nicht angegriffen hast, durchführen."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """<strong>Aufbau:</strong> Beginne in der Reserve.%LINEBREAK%Am Ende des Aufbaus platziere dich selbst in Reichweite 0 eines Hindernisses und jenseits von Reichweite 3 aller feindlichen Schiffe."""
        "Boba Fett (Separatist)":
           display_name: """Boba Fett"""
           text: """Solange du einen Angriff durchführst, falls keine anderen Schiffe im Angriffswinkel sind, darfst du 1&nbsp; deiner %FOCUS%Ergebnisse in ein %HIT%-Ergebnis ändern."""
        "Bombardment Specialists":
           display_name: """Beschuss-Spezialisten"""
           text: """Solange du einen Angriff durchführst, darfst du 1 Berechnungsmarker ausgeben, um die Reichweitenbedingung um 1 zu erhöhen oder zu verringern (Limit: 0-5)."""
        "Bomblet Generator":
           display_name: """Streubombengenerator"""
           text: """<strong>Bombe</strong>%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone eine Streubombe abzuwerfen.%LINEBREAK%Zu Beginn der Aktivierungsphase darfst du 1 Schild ausgeben, um 2 %CHARGE% wiederherzustellen."""
        "Boosted Scanners":
           display_name: """Boosted Scanners"""
           text: """Solange du ein Ziel erfasst, koordinierst oder ein Störsignal sendest, darfst du bis zu 3 &nbsp;%ENERGY% ausgeben, um die Reichweite, in der du ein Objekt wählen darfst, um 1 pro ausgegebener %ENERGY% zu erweitern, bis zu einem Maximum von Reichweite 5."""
        "Bossk":
           display_name: """Bossk"""
           text: """Nachdem du einen Primärangriff durchgeführt hast, der verfehlt hat, falls du nicht gestresst bist, <b>musst</b> du 1 Stressmarker erhalten, um einen Bonus-Primärangriff gegen dasselbe Ziel durchzuführen."""
        "Bounty":
           display_name: """Kopfgeld"""
           text: """<strong>Hired:</strong>Setup: Equip this side faceup.%LINEBREAK%You can be included in Separatist, Imperial , and First Order squads. After you perform an attack, if the defender was a limited ship and was destroyed, you may recover 1 on your ship card and each of your upgrade cards. Then flip this card.%LINEBREAK%  <strong>Ausbezahlt:</strong> <i class = flavor_text>Die Kopfgeldjagd ist ein kompliziertes Berufsfeld. Jeder Auftragsmörder kann töten, doch die besten Jäger sind für ihre Fähigkeit bekannt, eine Zielperson lebendig zu überbringen. Das ist zwar schwieriger, jedoch ist die Belohnung dafür umso höher.</i>"""
        "Brilliant Evasion":
           display_name: """Brilliantes Ausweichmanöver"""
           text: """Solange du verteidigst, falls du nicht im %BULLSEYEARC% des Angreifers bist, darfst du 1 %FORCE% ausgeben, um 2 deiner %FOCUS%-Ergebnisse in %EVADE% -Ergebnisse ändern."""
        "C-3PO":
           display_name: """C-3PO"""
           text: """Bevor du Verteidigungswürfel wirfst, darfst du 1 Berechnungs­marker ausgeben, um laut eine Zahl von 1 oder höher zu raten. Falls du das tust und genau so viele %EVADE%-Ergebnisse wirfst, wie du geraten hast, füge 1 %EVADE%-Ergebnis hinzu.%LINEBREAK%Nachdem du die %CALCULATE%-Aktion"""
        "C-3PO (Resistance)":
           display_name: """C-3PO (Resistance)"""
           text: """Solange du koordinierst, kannst du befreundete Schiffe jenseits von Reichweite 2 wählen, falls sie ein %CALCULATE% in ihrer Aktionsleiste haben.%LINEBREAK%Nachdem du die %CALCULATE%- oder %COORDINATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "C-3PO (Republic)":
           display_name: """C-3PO"""
           text: """Solange du verteidigst, falls du berechnend bist, darfst du 1&nbsp;Verteidigungswürfel neu werfen.%LINEBREAK%Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1&nbsp;Berechnungsmarker."""
        "C1-10P":
           display_name: """C1-10P"""
           text: """<strong>Aufbau:</strong> Rüste diese Seite offen aus.%LINEBREAK%Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1&nbsp;%CHARGE% ausgeben, um eine rote&nbsp;%EVADE%&nbsp;-Aktion durchzuführen, auch solange du gestresst bist.%LINEBREAK%Während der Endphase, falls diese Karte 0 aktive&nbsp;active %CHARGE%hat, drehe sie um.%LINEBREAK%<strong>Rückseite: C1-10P (launisch):</strong>%LINEBREAK%Nachdem du ein Manöver vollständig ausgeführt hast, <strong>musst</strong> du ein Schiff in Reichweite 0–1 wählen. Es erhält 1 Störsignalmarker.%LINEBREAK%<i>Errata: Auf beiden Seiten„vollständig“ ergänzt</i>"""
        "Cad Bane":
           display_name: """Cad Bane"""
           text: """Nachdem du ein Gerät abgeworfen oder gestartet hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Calibrated Laser Targeting":
           display_name: """Kalibriertes Laser-Zielsystem"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, füge 1 %FOCUS% -Ergebnis hinzu."""
        "Captain Needa":
           display_name: """Captain Needa"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-4 sein Rad aufgedeckt hat, darfst du 1&nbsp;%CHARGE% ausgeben. Falls du das tust, stellt es sein Rad auf ein anderes Manöver mit derselben Schwierigkeit und Geschwindigkeit ein."""
        "Captain Phasma":
           display_name: """Captain Phasma"""
           text: """Am Ende der Kampfphase erhält jedes nicht gestresste feindliche Schiff in Reichweite 0-1 1 Stressmarker."""
        "Carlist Rieekan":
           display_name: """Carlist Rieekan"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-2 zerstört worden ist, darfst du ein befreundetes Schiff in Reichweite 0-2 wählen. Falls du das tust, darf es eine rote %EVADE%-Aktion durchführen."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """Während der Systemphase darfst du 1 feindliches Schiff in Reichweite 1-2 wählen und laut eine Flugrichtung und Geschwindigkeit raten, dann sieh dir das Rad jenes Schiffes an. Falls du die Flugrichtung und Geschwindigkeit des gewählten Schiffes richtig geraten hast, darfst du dein Rad auf ein anderes Manöver einstellen."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """Zu Beginn der Kampfphase darfst du 2 %CHARGE% ausgeben, um 1 offene Schadenskarte zu reparieren."""
        "Chewbacca (Scum)":
           display_name: """Chewbacca (Scum)"""
           text: """Zu Beginn der Endphase darfst du 1 Fokusmarker ausgeben, um 1 deiner offenen Schadenskarten zu reparieren."""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca (Resistance)"""
           text: """<strong>Aufbau:</strong> Verliere 1 %CHARGE%.%LINEBREAK%Nachdem einem befreundeten Schiff in Reichweite 0-3 1 Schadenskarte zugeteilt worden ist, stelle 1 %CHARGE% wieder her.%LINEBREAK%Solange du einen Angriff durchführst, darfst du 2 %CHARGE% ausgeben, um 1 %FOCUS%-Ergebnis in ein %CRIT%-Ergebnis zu ändern."""
        "Ciena Ree":
           display_name: """Ciena Ree"""
           text: """Nachdem du eine %COORDINATE%-Aktion durchgeführt hast, falls das von dir koordinierte Schiff eine %BARRELROLL%- oder %BOOST%-Aktion durchgeführt hat, darf es 1 Stressmarker erhalten, um sich um 90° zu drehen."""
        "Cikatro Vizago":
           display_name: """Cikatro Vizago"""
           text: """Während der Endphase darfst du 2 %ILLICIT%-Aufwertungen wählen, die befreundete Schiffe in Reichweite 0-1 ausgerüstet haben. Falls du das tust, darfst du diese Aufwertungen austauschen.%LINEBREAK%<strong>Spielende:</strong> Lege alle %ILLICIT%-Aufwertungen auf ihre ursprünglichen Schiffe zurück."""
        "Cloaking Device":
           display_name: """Tarngerät"""
           text: """<strong>Aktion:</strong> Gib 1 %CHARGE% aus, um eine %CLOAK%-Aktion durchzuführen.%LINEBREAK%Zu Beginn der Planungsphase wirf 1 Angriffswürfel. Bei einem %FOCUS%-Ergebnis, enttarne dich oder lege deinen Tarnungsmarker ab."""
        "Clone Captain Rex":
           display_name: """Klon-Captain Rex"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %FOCUS%-Ergebnis ausgeben. Falls du das tust, darf jedes befreundete Schiff, das den Verteidiger in seinem %BULLSEYEARC% hat, 1 Anstrengungsmarker erhalten, um eine %FOCUS%-Aktion durchzuführen."""
        "Clone Commander Cody":
           display_name: """Klon-Kommandant Cody"""
           text: """Nachdem du einen Angriff durchgeführt hast, der verfehlt hat, falls 1 oder mehrere %HIT%/%CRIT%-Ergebnisse neutralisiert worden sind, erhält der Verteidiger 1 Anstrengungsmarker."""
        "Cluster Mines":
           display_name: """Clusterminen"""
           text: """<strong>Mine</strong>%LINEBREAK% Während der Systemphase darfst du 1&nbsp;%CHARGE% ausgeben, um unter Verwendung der [1&nbsp;%STRAIGHT%]-Schablone ein Cluster­minenset abzuwerfen.%LINEBREAK%Die&nbsp;%CHARGE% dieser Karte kann nicht wiederhergestellt werden."""
        "Cluster Missiles":
           display_name: """Clusterraketen"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE% aus. Nach diesem Angriff darfst du diesen Angriff als Bonusangriff gegen ein anderes Ziel in Reichweite 0-1 des Verteidigers durchführen, wobei du die %LOCK%-Voraussetzung ignorierst."""
        "Coaxium Hyperfuel":
           display_name: """Coaxium-Hypertreibstoff"""
           text: """Du kannst die <SLAM>-Aktion durchführen, auch solange du gestresst bist. Falls du das tust, erleidest du 1&nbsp;%CRIT%-Schaden, es sei denn, du legst 1&nbsp;deiner Schadenskarten offen.%LINEBREAK% Nachdem du ein Manöver teilweise ausgeführt hast, darfst du 1&nbsp; deiner Schadenskarten offenlegen oder 1&nbsp;%CRIT%-Schaden erleiden, um eine <SLAM>-Aktion durchzuführen."""
        "Collision Detector":
           display_name: """Kollisionssensor"""
           text: """Solange du Schub gibst oder eineFassrolle fliegst, kannst du dichdurch Hindernisse hindurch­bewegen und sie überschneiden.%LINEBREAK%Nachdem du dich durch ein Hindernis hindurchbewegt oder es überschnitten hast, darfst du 1 %CHARGE% ausgeben, um seine Effekte bis zum Ende der Runde zu ignorieren."""
        "Commander Malarus":
           display_name: """Commander Malarus"""
           text: """Setup: Equip this side face up.%LINEBREAK%While a friendly non-limited ship at range 0-1 performs a primary attack, that ship may reroll 1 blank result. If it does and the attack does not hit, you must flip this card.%LINEBREAK%<strong>Vollendet (Rückseite):</strong>Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, <b>musst</b> du alle %FOCUS%-Ergebnisse in %HIT%-Ergebnisse ändern und 1 Stressmarker erhalten. Dann, falls du 2 oder mehr Stressmarker hast, erleidest du 1&nbsp;%HIT%-Schaden."""
        "Commander Pyre":
           display_name: """Commander Pyre"""
           text: """<strong>Aufbau:</strong> Nachdem die Streitkräfte platziert worden sind, wähle ein feindliches Schiff. Es erhält 2 Stressmarker.%LINEBREAK%Solange du verteidigst, falls der Angreifer gestresst ist, darfst du 1 Verteidigungswürfel neu werfen."""
        "Comms Team":
           display_name: """Kommunikationsteam"""
           text: """Nachdem du eine%COORDINATE%&nbsp;-
Aktion durchgeführt hast, darfst du bis zu 2&nbsp;%ENERGY% ausgeben, um ebenso viele zusätzliche Schiffe in Reichweite 0-1 des Schiffes, das du koordiniert hast, zu koordinieren."""
        "Composure":
           display_name: """Gelassenheit"""
           text: """Nachdem eine deiner Aktionen scheitert, falls du keine grünen Marker hast, darfst du eine %FOCUS%-Aktion durchführen. Falls du das tust, kannst du in dieser Runde keine zusätzlichen Aktionen durchführen.%LINEBREAK%<i>Errata: Zweiter Satz ergänzt</i>"""
        "Concussion Bombs":
           display_name: """Erschütterungsbomben"""
           text: """Während der Systemphase, falls mindestens eine %CHARGE% dieser Karte inaktiv ist, <b>musst</b> du 1&nbsp;%CHARGE% ausgeben, um 1 Erschütterungsbombe unter Verwendung der [1 %STRAIGHT%]-Schablone abzuwerfen, falls möglich. Ansonsten darfst du 1 %CHARGE% ausgeben, um 1 Erschütterungsbombe abzuwerfen.%LINEBREAK%<i>Errata: „[1 %STRAIGHT%]-Schablone“ spezifiziert</i>"""
        "Concussion Missiles":
           display_name: """Erschütterungsraketen"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE%aus. Nachdem dieser Angriff getroffen hat, legt jedes Schiff in Reichweite 0-1 zum Verteidiger 1 seiner Schadenskarten offen."""
        "Conner Nets":
           display_name: """Connernetz"""
           text: """<strong>Mine</strong>%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone ein Connernetz abzuwerfen.%LINEBREAK%Die %CHARGE% dieser Karte kann nicht wiederhergestellt werden."""
        "Contraband Cybernetics":
           display_name: """Illegale Kybernetik"""
           text: """Bevor du aktiviert wirst, darfst du 1 %CHARGE% ausgeben. Falls du das tust, kannst du bis zum Ende der Runde Aktionen durchführen und rote Manöver ausführen, auch solange du gestresst bist. Die %CHARGE% dieser Karte kann nicht wiederhergestellt werden.%LINEBREAK%<i>Errata: Letzten Satz ergänzt</i>"""
        "Corsair Crew":
           display_name: """Korsarenmannschaft"""
           text: """Solange du einen Angriff gegen ein Standardschiff durchführst, darfst du 1&nbsp;%HIT%-Ergebnis ausgeben. Falls du das tust, erhält der Verteidiger 1 Erschöpfungsmarker."""
        "Count Dooku":
           display_name: """Count Dooku"""
           text: """Während eines Angriffs, bevor ein Schiff in Reichweite 0-2 Angriffs- oder Verteidigungswürfel wirft, falls alle deine %FORCE% aktiv sind, darfst du 1 %FORCE% ausgeben und ein Ergebnis benennen. Falls der Wurf das benannte Ergebnis nicht enthält, muss das Schiff 1 Würfel auf jenes Ergebnis ändern.%LINEBREAK%<i>Errata: „Während eines Angriffs“ ergänzt </i>"""
        "Crack Shot":
           display_name: """Meisterhafter Schuss"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, vor dem Schritt „Ergebnisse neutralisieren“, darfst du 1 %CHARGE% ausgeben, um 1 %EVADE%-Ergebnis zu negieren."""
        "Cutthroat":
           display_name: """Halsabschneider"""
           text: """Nachdem ein anderes befreundetes Schiff in Reichweite 0-3 zerstört worden ist, falls jenes Schiff limitiert ist oder die Aufwertung <strong>Halsabschneider</strong> hat, darfst du 1 deiner orangen oder roten Marker entfernen oder 1 nicht-wiederkehrende %CHARGE% on your ship card or one of your equipped upgrade cards."""
        "DRK-1 Probe Droids":
           display_name: """DRK-1-Sondendroiden"""
           text: """Während der Endphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung einer Schablone mit Geschwindigkeit 3 1 DRK-1-Sondendroiden abzuwerfen oder zu starten.%LINEBREAK%Die %CHARGE% dieser Karte können nicht wiederhergestellt werden."""
        "Damage Control Team":
           display_name: """Schadensbegrenzungsteam"""
           text: """Bevor du kämpfst, darfst du 1 oder mehr%ENERGY% ausgeben, um ebenso viele deiner <strong>Offline</strong>&nbsp;-Aufwertungen umzudrehen.%LINEBREAK%<strong>Aktion:</strong> Gib 1 oder mehr%ENERGY% aus, um ebenso viele deiner offenen <strong>Schiff</strong>-Schadens-karten zu reparieren."""
        "Daredevil":
           display_name: """Draufgänger"""
           text: """Solange du eine weiße %BOOST%-Aktion durchführst, darfst du sie behandeln, als wäre sie rot, um stattdessen die [1 %TURNLEFT%]- oder [1 %TURNRIGHT%]-Schablone zu verwenden."""
        "Emperor Palpatine":
           display_name: """Kanzler Palpatine"""
           text: """Kanzler Palpatine:%LINEBREAK%Aufbau: Rüste diese Seite offen aus.%LINEBREAK%Nachdem du verteidigt hast, falls der Angreifer in Reichweite 0-2 ist, darfst du 1 %FORCE% ausgeben. Falls du das tust, erhält der Angreifer 1 Stressmarker.Während der Endphase darfst du diese Karte umdrehen. %LINEBREAK%Darth Sidious:%LINEBREAK%Nachdem du eine violette %COORDINATE% -Aktion durchgeführt hast, erhält das von dir koordinierte Schiff 1 Stressmarker. Dann erhält es 1 Fokusmarker oder es stellt 1 %FORCE% wieder her."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """Zu Beginn der Kampfphase darfst du 1 Schiff in deinem Feuerwinkel in Reichweite 0-2 wählen und 1 %FORCE% ausgeben. Falls du das tust, erleidet jenes Schiff 1 %HIT%-Schaden, es sei denn, es entscheidet sich dafür, 1 grünen Marker zu"""
        "Deadeye Shot":
           display_name: """Schuss ins Schwarze"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 %HIT%-Ergebnis ausgeben oder 1 1&nbsp;%CRIT%-Ergebnis in ein %HIT%-Ergebnis ändern. Falls du das tust, legt der Verteidiger 1 seiner Schadenskarten offen."""
        "Deadman's Switch":
           display_name: """Totmannschalter"""
           text: """Nachdem du zerstört worden bist, erleidet jedes andere Schiff in Reichweite 0-1 1 %HIT%-Schaden."""
        "Death Troopers":
           display_name: """Todestruppen"""
           text: """Während der Aktivierungsphase können feindliche Schiffe in Reichweite 0-1 keine Stressmarker entfernen."""
        "Debris Gambit":
           display_name: """Trümmertanz"""
           text: """Solange du eine rote %EVADE%-Aktion durchführst, falls ein Hindernis in Reichweite 0-1 ist, behandle die Aktion stattdessen, als wäre sie weiß."""
        "Dedicated":
           display_name: """Pflichtbewusst"""
           text: """Solange ein anderes befreundetes Schiff in deinem %LEFTARC% oder %RIGHTARC% in Reichweite 0-2 verteidigt, falls es limitiert ist oder die Aufwertung <strong>Pflichtbewusst</strong> hat und du nicht angestrengt bist, darfst du 1 Anstrengungsmarker erhalten. Falls du das tust, wirft der Verteidiger 1 seiner Leerseiten-Ergebnisse neu.%LINEBREAK%<i>Errata: Einschränkung geändert</i>"""
        "Delayed Fuses":
           display_name: """Zeitverzögerter Zünder"""
           text: """Nachdem du eine Bombe oder Mine abgeworfen, gestartet oder platziert hast, darfst du 1 Zeitzünder auf jenem Gerät platzieren."""
        "Delta-7B":
           display_name: """Delta-7B"""
           text: """<i class = flavor_text>Der Delta-7B wurde als schwerere Variante des Abfangjägers der Aethersprite-Klasse konzipiert und unterscheidet sich optisch nur durch seinen verschobenen Astromech-Anschluss. Viele Jedi-Generäle bevorzugen ihn aufgrund seiner verbesserten Feuerkraft und Stabilität.</i>"""
        "Dengar":
           display_name: """Dengar"""
           text: """Nachdem du verteidigt hast, falls der Angreifer in deinem Feuerwinkel ist, darfst du 1 %CHARGE% ausgeben. Falls du das tust, wirf 1 Angriffswürfel, es sei denn, der Angreifer entscheidet sich dafür, 1 grünen Marker zu entfernen. Bei einem %HIT%- oder %CRIT%-Ergebnis erleidet der Angreifer 1 %HIT%-Schaden."""
        "Deuterium Power Cells":
           display_name: """Deuterium-Energiezellen"""
           text: """ Während der Systemphase darfst du 1&nbsp;%CHARGE% ausgeben und 1&nbsp;Entwaffnet-Marker erhalten, um 1&nbsp;<shield> wiederherzustellen.%LINEBREAK%Bevor du 1&nbsp; Marker außer Zielerfassung erhalten würdest, falls du nicht gestresst bist, darfst du 1&nbsp;%CHARGE% ausgeben, um stattdessen 1&nbsp;Stressmarker zu erhalten."""
        "Diamond-Boron Missiles":
           display_name: """Diamant-Boron-Raketen"""
           text: """<strong>Angriff (%LOCK%):</strong> Gib 1&nbsp;%CHARGE% aus. Nachdem dieser Angriff getroffen hat, darfst du&nbsp;%CHARGE% ausgeben. Falls du das tust, wirft jedes Schiff in Reichweite&nbsp;0-1 des Verteidigers, dessen Wendigkeit gleich oder kleiner als die des Verteidigers ist, 1&nbsp;Angriffswürfel und erleidet &nbsp;%HIT%/%CRIT%-Schaden für jedes passende Ergebnis."""
        "Director Krennic":
           display_name: """Direktor Krennic"""
           text: """<strong>Aufbau:</strong> Bevor die Streitkräfte platziert werden, ordne den Zustand <strong>Optimierter Prototyp</strong> einem anderen befreundeten Schiff zu."""
        "Disciplined":
           display_name: """Diszipliniert"""
           text: """Nachdem ein anderes befreundetes Schiff in Reichweite 0-3 zerstört worden ist, falls jenes Schiff limitiert ist oder die Aufwertung <strong>Diszipliniert</strong> hat, darfst du eine&nbsp;%LOCK%- oder&nbsp;%BARRELROLL%-Aktion durchführen."""
        "Dorsal Turret":
           display_name: """Dorsaler Geschützturm"""
           text: """<strong>Angriff</strong>"""
        "Drill Beak":
           display_name: """Bohrschnabel"""
           text: """<b>Aufbau:</b> Rüste diese Seite offen aus.%LINEBREAK%Du kannst diesen Angriff in Reichweite 0 durchführen.%LINEBREAK%<strong>Bonusangriff:</strong> Gib 1 %ENERGY% aus. Falls die Angriffsreichweite 0 ist, ändere alle %HIT%-Ergebnisse in %CRIT%-Ergebnisse."""
        "Droid Crew":
           display_name: """Droidenmannschaft"""
           text: """Solange du eine weiße %FOCUS%-Aktion durchführst, behandle sie stattdessen, als wäre sie rot.%LINEBREAK%Zu Beginn der Endphase repariere alle deine offenen <strong>Crew</strong>-Schadenskarten."""
        "Electro-Proton Bomb":
           display_name: """Elektro-Protonen-Bombe"""
           text: """<strong>Bombe</strong>%LINEBREAK%Während der Systemphase darfst du 1&nbsp;%CHARGE% ausgeben, um unter Verwendung der [1&nbsp;%STRAIGHT%] -Schablone eine Elektro-Protonen-Bombe abzuwerfen. Dann platziere 1&nbsp;Zeitzünder auf jenem Gerät. %LINEBREAK%Die %CHARGE% dieser Karte kann nicht wiederhergestellt werden."""
        "Electronic Baffle":
           display_name: """Elektronischer Dämpfer"""
           text: """Während der Endphase darfst du 1 %HIT%-Schaden erleiden, um 1 roten Marker zu entfernen."""
        "Elusive":
           display_name: """Schwer zu treffen"""
           text: """Solange du verteidigst, darfst du 1 %CHARGE% ausgeben, um 1 Verteidigungswürfel neu zu werfen.%LINEBREAK%Nachdem du ein rotes Manöver vollständig ausgeführt hast, stelle 1 %CHARGE% wieder her."""
        "Emperor Palpatine":
           display_name: """Imperator Palpatine"""
           text: """Solange ein anderes befreundetes Schiff verteidigt oder einen Angriff durchführt, darfst du 1 %FORCE% ausgeben, um 1 seiner Würfel so zu modifizieren, als hätte jenes Schiff 1 %FORCE% ausgegeben."""
        "Energy-Shell Charges":
           display_name: """Energiegeschosse"""
           text: """<strong>Angriff (%CALCULATE%):</strong> Gib 1 %CHARGE% aus. Solange du diesen Angriff durchführst, darfst du 1 Berechnungsmarker ausgegeben, um 1 %FOCUS%-Ergebnis in ein %CRIT%-Ergebnis zu ändern.%LINEBREAK%<strong>Aktion</strong>: Lade diese Karte nach."""
        "Engine Upgrade":
           display_name: """Verbessertes Triebwerk"""
           text: """<i class = flavor_text>Große Armeen wie das Militär des Galaktischen Imperiums haben meist standardisierte Triebwerke. Freischaffende Piloten und kleinere Organisationen ersetzen oft Energiekopplungen, """
        "Enhanced Propulsion":
           display_name: """Verbesserter Antrieb"""
           text: """<b>Aufbau:</b> Rüste diese Seite offen aus.%LINEBREAK%Zu Beginn der Endphase darfst du 2 %ENERGY% ausgeben, um ein weißes [2&nbsp;%STRAIGHT%]-, [1&nbsp;%BANKLEFT%]- oder [1&nbsp;%BANKRIGHT%]-Manöver auszuführen."""
        "Ensnare":
           display_name: """Einfangen"""
           text: """Am Ende der Aktivierungsphase, falls du gefangen bist, darfst du 1&nbsp;Schiff in deinem %SINGLETURRETARC%&nbsp;-Winkel in Reichweite&nbsp;0-1 wählen. Transferiere 1&nbsp;Fangstrahlmarker auf es."""
        "Expert Handling":
           display_name: """Flugkunst"""
           text: """<i class = flavor_text>Auch schwere Jäger können in eine Fassrolle gezwungen werden, wobei es einen erfahrenen Piloten braucht, um die Maschine nicht übermäßig zu belasten und dem Feind kein leichtes Ziel zu bieten.</i>"""
        "Extreme Maneuvers":
           display_name: """Extreme Manöver"""
           text: """Solange du eine %BOOST%-Aktion durchführst, darfst du 1 &nbsp;%FORCE%ausgeben, um stattdessen die (%TURNLEFT%&nbsp;oder&nbsp;%TURNRIGHT%)-Schablone zu verwenden."""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """Nachdem du einen Primärangriff durchgeführt hast, darfst du 1 %FORCE% ausgeben, um einen Bonus-%SINGLETURRETARC%-Angriff aus einem %SINGLETURRETARC%, aus dem du in dieser Runde noch nicht angegriffen hast, durchzuführen. Falls du das tust und gestresst bist, darfst du 1 Angriffswürfel neu werfen."""
        "Proud Tradition":
           display_name: """Proud Tradition"""
           text: """Setup: Equip this side faceup.%LINEBREAK%While you have 2 or fewer stress tokens, you may perform %FOCUS% actions even while stressed. After you perform an attack, if you are stressed, the defender may spend 1 focus token or suffer 1 %CRIT% damage to flip this card.%LINEBREAK%Falsche Tradition (Rückseite):%LINEBREAK%Behandle deine %FOCUS%-Aktionen, als wären sie rot."""
        "False Transponder Codes":
           display_name: """Gefälschte Transpondercodes"""
           text: """Nachdem du ein Objekt als Ziel erfasst hast oder ein Objekt dich als Ziel erfasst hat, falls du 1&nbsp;aktive&nbsp;%CHARGE% hast, verlierst du 1&nbsp;%CHARGE% und sendest jenem Objekt ein Störsignal, wobei du Reichweitenbeschränkungen ignorierst."""
        "Fanatical":
           display_name: """Fanatisch"""
           text: """Solange du einen Primärangriff durchführst, falls du keine Schilde hast, darfst du 1 %FOCUS%-Ergebnis in ein %HIT%-Ergebnis ändern."""
        "Fearless":
           display_name: """Furchtlos"""
           text: """Solange du einen %FRONTARC%-Primärangriff durchführst, falls die Angriffs­reichweite 1 ist und du im %FRONTARC% des Verteidigers bist, darfst du 1 deiner Ergebnisse in ein %HIT%-Ergebnis ändern."""
        "Feedback Array":
           display_name: """Rückkopplungsfeld"""
           text: """Bevor du kämpfst, darfst du 1 Ionenmarker und 1 Entwaffnet-Marker erhalten. Falls du das tust, erleidet jedes Schiff in Reichweite 0 1 %HIT%-Schaden."""
        "Ferrosphere Paint":
           display_name: """Ferrosphärenfarbe"""
           text: """Nachdem ein feindliches Schiff dich als Ziel erfasst hat, falls du nicht im %BULLSEYEARC% jenes Schiffes bist, erhält jenes Schiff 1 Stressmarker, außer es entscheidet sich, die Zielerfassung zu verlieren.%LINEBREAK%<i>Errata: Alternative ergänzt</i>"""
        "Fifth Brother":
           display_name: """Fünfter Bruder"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %FORCE% ausgeben, um 1 deiner %FOCUS%-Ergebnisse in ein %CRIT%-Ergebnis zu ändern."""
        "Finn":
           display_name: """Finn"""
           text: """Solange du verteidigst oder einen Primärangriff durchführst, falls das feindliche Schiff in deinem %FRONTARC% ist, darfst du 1 Leerseiten-Ergebnis zu deinen Würfelergebnissen hinzufügen (dieser Würfel kann neu geworfen oder anderweitig modifiziert werden)."""
        "Fire-Control System":
           display_name: """Feuerkontrollsystem"""
           text: """Solange du einen Angriff durchführst, falls du den Verteidiger als Ziel erfasst hast, darfst du 1 Angriffswürfel neu werfen. Falls du das tust, kannst du während dieses Angriffs deine Zielerfassung nicht ausgeben."""
        "First Order Elite":
           display_name: """Elite der Ersten Ordnung"""
           text: """Du bist ein <strong>Schwarmführer</strong>. Deine Flügelmänner müssen 2 oder 3 TIE/eo-Jäger oder TIE/se-Jäger sein.%LINEBREAK%Solange du verteidigst, dürfen bis zu 2 deiner Flügelmänner im Angriffswinkel je 1&nbsp;%HIT% - oder %CRIT% -Schaden erleiden, um ein passendes Ergebnis zu negieren."""
        "Foresight":
           display_name: """Vorausahnung"""
           text: """Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, darfst du 1&nbsp;%FORCE% ausgeben, um diesen Angriff als Bonusangriff gegen es durchzuführen.%LINEBREAK%<strong>Angriff:</strong> Du darfst 1&nbsp;%FOCUS% -Ergebnis in ein&nbsp;%HIT%&nbsp;-Ergebnis ändern; anderweitig können deine Würfel nicht modifiziert werden."""
        "Freelance Slicer":
           display_name: """Freischaffender Hacker"""
           text: """Solange du verteidigst, bevor die Angriffswürfel geworfen werden, darfstdu eine Zielerfassung, die du auf dem Angreifer hast, ausgeben, um 1 Angriffswürfel zu werfen. Falls du das tust, erhält der Angreifer 1 Störsignalmarker. Dann, bei einem %HIT%- oder %CRIT%-Ergebnis, erhältst du 1 Störsignalmarker."""
        "GA-97":
           display_name: """GA-97"""
           text: """<strong>Aufbau:</strong> Bevor die Streitkräfte platziert werden, darfst du 3-5&nbsp;%CHARGE% ausgeben. Falls du das tust, wähle ein anderes befreundetes Schiff und ordne ihm den Zustand <strong>Das ist der Widerstand</strong>zu."""
        'GNK "Gonk" Droid':
           display_name: """GNK-„Gonk“-Droide"""
           text: """<strong>Aufbau:</strong> Verliere 1 %CHARGE%.%LINEBREAK%<strong>Aktion:</strong> Stelle 1 %CHARGE% wieder her.%LINEBREAK%<strong>Aktion:</strong> Gib 1 %CHARGE% aus, um 1 Schild wiederherzustellen."""
        "Gamut Key":
           display_name: """Gamut Key"""
           text: """Zu Beginn der Endphase darfst du 2&nbsp;%CHARGE% ausgeben, um ein Schiff in Reichweite 0-1 mit 1 oder mehreren kreisförmigen Markern zu wählen. Während der Endphase werden kreisförmige Marker von jenem Schiff nicht entfernt."""
        "General Grievous":
           display_name: """General Grievous"""
           text: """Solange du verteidigst, falls nach dem Schritt „Ergebnisse neutralisieren“ 2 oder mehr %HIT%/%CRIT%-Ergebnisse vorhanden sind, darfst du 1 %CHARGE% ausgeben, um 1 %HIT%- oder %CRIT% -Ergebnis zu negieren. %LINEBREAK%Nachdem ein befreundetes Schiff zerstört worden ist, stelle 1 %CHARGE% wieder her."""
        "General Grievous (Command)":
           display_name: """General Grievous"""
           text: """Während der Kampfphase, bei Initiative 4, darfst du 1 %ENERGY% ausgeben, um einen Bonus-<hardpoint>-Angriff durchzuführen.%LINEBREAK%Du kannst Angriffe gegen befreundete Schiffe durchführen.%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, falls der Verteidiger zerstört worden ist, darf jedes befreundete Schiff in Reichweite 0-2 von ihm eine %CALCULATE%-Aktion durchführen."""
        "General Hux":
           display_name: """General Hux"""
           text: """Solange du eine weiße %COORDINATE%-Aktion durchführst, darfst du sie behandeln, als wäre sie rot. Falls du das tust, darfst du bis zu 2 zusätzliche Schiffe desselben Schiffstyps koordinieren und jedes von dir koordinierte Schiff muss dieselbe Aktion durchführen, wobei es jene Aktion behandelt, als wäre sie rot."""
        "Ghost Company":
           display_name: """Geisterkompanie"""
           text: """Nachdem du einen Primärangriff durchgeführt hast, falls du fokussiert bist, darfst du einen %SINGLETURRETARC%-Angriff als Bonusangriff gegen ein Schiff durchführen, das du in dieser Runde noch nicht angegriffen hast."""
        "Grand Inquisitor":
           display_name: """Großinquisitor"""
           text: """Nachdem ein feindliches Schiff in Reichweite 0-2 sein Rad aufgedeckt hat, darfst du 1 %FORCE% ausgeben, um 1 weiße Aktion aus deiner Aktionsleiste durchzuführen, wobei du jene Aktion behandelst, als wäre sie rot."""
        "Grand Moff Tarkin":
           display_name: """Großmoff Tarkin"""
           text: """Während der Systemphase darfst du 2 %CHARGE% ausgeben. Falls du das tust, darf jedes befreundete Schiff ein Schiff, das du als Ziel erfasst hast, als Ziel erfassen."""
        "Grappling Struts":
           display_name: """Laufkrallen"""
           text: """<strong>Geschlossen: </strong>%LINEBREAK%<strong>Aufbau:</strong> Rüste diese Seite offen aus.%LINEBREAK%Nachdem du ein Manöver ausgeführt hast, falls du einen Asteroiden oder eine Trümmerwolke überschneidest und 1 oder weniger andere befreundete Schiffe in Reichweite 0 jenes Hindernisses sind, darfst du diese Karte umdrehen. Falls du das tust, erleidest du nicht die Effekte der Überschneidung mit dem Asteroiden oder der Trümmerwolke.%LINEBREAK%<strong>Geöffnet</strong> (Rückseite)%LINEBREAK%Du ignorierst Hindernisse in Reichweite 0. Du kannst keine %BARRELROLL%-Aktionen durchführen. Nachdem du dein Rad aufgedeckt hast, falls du ein anderes Manöver als [2 %STRAIGHT%] aufgedeckt hast und in Reichweite 0 eines Asteroiden oder einer Trümmerwolke bist, überspringe deinen Schritt „Manöver ausführen“ und entferne 1 Stressmarker; falls du ein rechtes oder linkes Manöver aufgedeckt hast, drehe dein Schiff um 90° in jene Richtung. Nachdem du ein Manöver ausgeführt hast, drehe diese Karte um.%LINEBREAK%<i>Errata: Timing verändert und %BARRELROLL%-Aktionen verboten.</i>"""
        "Gravitic Deflection":
           display_name: """Gravitationsdeflektor"""
           text: """Solange du verteidigst, darfst du für jedes gefangene Schiff im Angriffswinkel 1&nbsp;Verteidigungswürfel neu werfen."""
        "Greedo":
           display_name: """Greedo"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %CHARGE% ausgeben, um 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis zu ändern.%LINEBREAK%Solange du verteidigst, falls deine %CHARGE% aktiv ist, darf der Angreifer 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern."""
        "Gunnery Specialists":
           display_name: """Artillerie-Spezialisten"""
           text: """Solange du einen Primär- oder <hardpoint>-Angriff durchführst, darfst du 1 oder mehr %ENERGY% ausgeben, um ebenso viele Angriffswürfel neu zu werfen."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """Während der Kampfphase, bei Initiative 7, darfst du einen %SINGLETURRETARC%-Angriff durchführen. Du kannst in dieser Runde nicht noch einmal aus jenem %SINGLETURRETARC% angreifen."""
        "Han Solo (Scum)":
           display_name: """Han Solo (Scum)"""
           text: """Bevor du kämpfst, darfst du eine rote %FOCUS%-Aktion durchführen."""
        "Han Solo (Resistance)":
           display_name: """Han Solo (Resistance)"""
           text: """Nachdem du eine %EVADE%-Aktion durchgeführt hast, erhalte zusätzliche Ausweichmarker in Höhe der Anzahl der feindlichen Schiffe in Reichweite 0-1."""
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
           text: """Du kannst rote Manöver ausführen, auch solange du gestresst bist. Nachdem du ein rotes Manöver vollständig ausgeführt hast, falls du 3 oder mehr Stressmarker hast, entferne 1 Stressmarker und erleide 1 %HIT%-Schaden."""
        "Heroic":
           display_name: """Heroisch"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls du nur Leerseiten-Ergebnisse hast und 2 oder mehr Ergebnisse hast, darfst du beliebig viele deiner Würfel neu werfen."""
        "Homing Missiles":
           display_name: """Lenkraketen"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE% aus. Nachdem du den Verteidiger deklariert hast, darf der Verteidiger wählen, 1 %HIT%-Schaden zu erleiden. Falls er das tut, überspringe die Schritte „Angriffswürfel“ und „Verteidigungswürfel“, und der Angriff wird behandelt, als hätte er getroffen."""
        "Hondo Ohnaka":
           display_name: """Hondo Ohnaka"""
           text: """<strong>Aktion:</strong> Wähle 2 Schiffe in Reichweite 1-3, die miteinander befreundet sind. Koordiniere 1 der gewählten Schiffe und sende dann dem anderen ein Störsignal, wobei du Reichweitenbeschränkungen ignorierst."""
        "Hondo Ohnaka (Command)":
           display_name: """Hondo Ohnaka"""
           text: """Während der Systemphase darfst du 1 %CHARGE% ausgeben und 1 befreundetes Schiff in Reichweite 0-1 wählen. Bewege 1 <victorymarker> oder <remote> von seiner Schiffskarte auf deine Schiffskarte oder von deiner Schiffskarte auf seine Schiffskarte."""
        "Hopeful":
           display_name: """Hoffnungsvoll"""
           text: """Nachdem ein anderes befreundetes Schiff in Reichweite 0-3 zerstört worden ist, falls jenes Schiff limitiert ist oder die Aufwertung <strong>Hoffnungsvoll</strong> hat, darfst du eine &nbsp;%FOCUS%- oder&nbsp;%BOOST%-Aktion durchführen."""
        "Hotshot Gunner":
           display_name: """Erstklassiger Bordschütze"""
           text: """Solange du einen %SINGLETURRETARC%-Angriff durchführst, nach dem Schritt „Verteidigungswürfel modifizieren“, entfernt der Verteidiger 1 Fokus- oder 1 Berechnungsmarker."""
        "Hull Upgrade":
           display_name: """Verstärkte Hülle"""
           text: """<i class = flavor_text>Auch wer sich keinen verbesserten Schildgenerator leisten kann, muss nicht auf erhöhten Schutz verzichten, sondern kann sich mit zusätzlichen Panzerplatten an der Schiffshülle behelfen.</i>"""
        "Hyperspace Tracking Data":
           display_name: """Hyperraum-Ortungsdaten"""
           text: """<strong>Aufbau:</strong> Bevor die Streitkräfte platziert werden, darfst du eine Zahl zwischen 0 und 6 wählen. Behandle deine Initiative, als hätte sie den Wert, den du während des Aufbaus gewählt hast.%LINEBREAK%Ordne nach dem Aufbau jedem befreundeten Schiff in Reichweite 0-2 1 Fokus- oder Ausweichmarker zu."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """Du hast die Pilotenfähigkeit jedes anderen befreundeten Schiffes mit der Aufwertung <strong>IG-2000</strong>.%LINEBREAK%Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "IG-RM Droids":
           display_name: """IG-RM Droids"""
           text: """Solange du einen Angriff durchführst, falls du berechnend bist, darfst du 1&nbsp;%HIT%&nbsp;-Ergebnis in ein %CRIT%&nbsp;-Ergebnis ändern."""
        "ISB Slicer":
           display_name: """ISB-Hacker"""
           text: """Während der Endphase können feindliche Schiffe in Reichweite 1-2 keine Störsignalmarker entfernen."""
        "Impervium Plating":
           display_name: """Impervium-Panzerung"""
           text: """Bevor dir eine offene <strong>Schiff</strong>-Schadenskarte zugeteilt werden würde, darfst du 1 %CHARGE% ausgeben, um sie stattdessen abzulegen."""
        "In It For The Money":
           display_name: """In It For The Money"""
           text: """<strong>In It For The Money:</strong>Setup: Equip this side faceup. You can be included in Republic, Rebel, and Resistance squads. After an allied limited ship in your squad is destroyed, gain 1 focus token and flip this card. %LINEBREAK%<strong>In It For Your Rebellion (Rückseite):</strong>Nicht-Abschaum-Schiffe in deiner Staffel werden behandelt, als wären sie befreundet statt verbündet."""
        "Independent Calculations":
           display_name: """Autonome Berechnungssysteme"""
           text: """Ersetze deine Schiffsfähigkeit <strong>Vernetzte Berechnungssysteme</strong> durch:%LINEBREAK%<strong>Autonome Berechnungssysteme:</strong> Solange du eine weiße&nbsp;%CALCULATE%-Aktion durchführst, darfst du sie behandeln, als wäre sie rot, um 1 zusätzlichen Berechnungsmarker zu erhalten. Andere Schiffe können deine Berechnungsmarker nicht unter Verwendung der Schiffsfähigkeit <strong>Vernetzte Berechnungssysteme</strong> ausgeben."""
        "Inertial Dampeners":
           display_name: """Trägheitsdämpfer"""
           text: """Bevor du ein Manöver ausführen würdest, darfst du 1 Schild ausgeben. Falls du das tust, führe anstatt des Manövers, das du aufgedeckt hast, ein weißes [0 %STOP%]-Manöver aus, dann erhalte 1 Stressmarker."""
        "Informant":
           display_name: """Informant"""
           text: """<strong>Aufbau:</strong> Nachdem die Streitkräfte platziert worden sind, wähle 1 feindliches Schiff und ordne ihm den Zustand Abhörgerät zu."""
        "Instinctive Aim":
           display_name: """Instinktives Zielen"""
           text: """Solange du einen Spezialangriff durchführst, darfst du 1 %FORCE% ausgeben, um die %FOCUS%- oder %LOCK%-Voraussetzung zu ignorieren."""
        "Integrated S-Foils":
           display_name: """Integrierte S-Flügel"""
           text: """<strong>Geschlossen: </strong>Solange du einen Primärangriff durchführst, falls der Verteidiger nicht in deinem %BULLSEYEARC% ist, wirf 1 Angriffswürfel weniger. Bevor du aktiviert wirst, darfst du diese Karte umdrehen.%LINEBREAK%<strong>Geöffnet:</strong> (Keine %BARRELROLL%, %FOCUS%&nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i>&nbsp;<r>%BARRELROLL%</r>)  Bevor du aktiviert wirst, darfst du diese Karte umdrehen."""
        "Intercept Booster":
           display_name: """Abfang-Booster"""
           text: """<strong>Attached:</strong> Equip this side faceup. (Added Actions available on this side only) During the System Phase, gain 1 disarm token unless you flip this card. At the end of the End Phase, if you have no active %CHARGE%, flip this card. %LINEBREAK%<strong>Ausgeklinkt:</strong> (Die Aktionen stehen nicht zur Verfügung))%LINEBREAK%<i class = flavor_text>Ohne auf die Zerbrechlichkeit eines organischen Piloten Rücksicht nehmen zu müssen, können Tri-Droidenjäger enorme Beschleunigungen aushalten und punktgenaue Manöver fliegen. Sie sind mit Booster-Raketen ausgestattet und werden aus den Abschussrohren von Großkampfschiffen der Separatisten abgefeuert, um so feindliche Schiffe jenseits der Reichweite eines normal gestarteten Sternenjägers abzufangen.</i>"""
        "Interloper Turn":
           display_name: """Knoten-Wende"""
           text: """Bevor du ein Wendemanöver (%TURNLEFT%&nbsp;oderr&nbsp;%TURNRIGHT%) mit Geschwindigkeit 1-2 oder eine Koiogran-Wende (%KTURN%) mit Geschwindigkeit 1-2 ausführst, falls du in Reichweite 0-1 eines Asteroiden, eines Konstrukts oder eines riesigen Schiffes bist, darfst du 1 Fangstrahlmarker erhalten.%LINEBREAK%<i>Errata: „Bevor“ statt „Nachdem“</i>"""
        "Intimidation":
           display_name: """Furchteinflößend"""
           text: """Solange ein feindliches Schiff in Reichweite 0 verteidigt, wirft es 1 Verteidigungswürfel weniger."""
        "Ion Bombs":
           display_name: """Ionenbomben"""
           text: """<strong>Bombe</strong>%LINEBREAK% Während der Systemphase darfst du 1&nbsp;%CHARGE% ausgeben, um unter Verwendung der [1&nbsp;%STRAIGHT%]-Schablone eine Ionenbombe abzuwerfen."""
        "Ion Cannon":
           display_name: """Ionenkanone"""
           text: """<strong>Angriff:</strong> Falls dieser Angriff trifft, gib 1 %HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1 %HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Ion Cannon Battery":
           display_name: """Ionengeschütz-Batterie"""
           text: """<strong>Online:</strong>Setup: Equip this side faceup. Bonus Attack: Spend 1 %ENERGY%. If this attack hits, the defender suffers 1 %CRIT% damage, and all %HIT%/%CRIT% results inflict ion tokens instead of damage. %LINEBREAK%<strong>Offline (Rückseite)</strong>%LINEBREAK%Nachdem du gekämpft hast, darfst du 2 &nbsp;%ENERGY% ausgeben, um diese Karte umzudrehen."""
        "Ion Cannon Turret":
           display_name: """Ionengeschütz"""
           text: """<strong>Angriff:</strong> Falls dieser Angriff trifft, gib 1 %HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1 %HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Ion Limiter Override":
           display_name: """Aufgehobene Ionenbegrenzung"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt hast, darfst du eine %BARRELROLL%-Aktion durchführen, selbst solange du gestresst bist. Falls du das tust, wirf einen Angriffswürfel; bei einem %HIT%-Ergebnis erhältst du 1 Anstrengungsmarker und bei einem %CRIT%-Ergebnis erhältst du 1 Ionenmarker."""
        "Ion Missiles":
           display_name: """Ionenraketen"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE% aus. Falls dieser Angriff trifft, gib 1 %HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1 %HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Ion Torpedoes":
           display_name: """Ionentorpedos"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE% aus. Falls dieser Angriff trifft, gib 1 %HIT%- oder %CRIT%-Ergebnis aus, um den Verteidiger 1 %HIT%-Schaden erleiden zu lassen. Alle übrigen %HIT%/%CRIT%-Ergebnisse fügen Ionenmarker anstatt Schaden zu."""
        "Jabba the Hutt":
           display_name: """Jabba der Hutt"""
           text: """Während der Endphase darfst du 1 befreundetes Schiff in Reichweite 0-2 wählen und 1 %CHARGE% ausgeben. Falls du das tust, stellt jenes Schiff 1 %CHARGE% von 1 seiner ausgerüsteten %ILLICIT%-Aufwertungen wieder her."""
        "Jamming Beam":
           display_name: """Störstrahl"""
           text: """<strong>Angriff:</strong> Falls dieser Angriff trifft, fügen alle %HIT%/%CRIT%-Ergebnisse Störsignalmarker anstatt Schaden zu."""
        "Jan Dodonna":
           display_name: """Jan Dodonna"""
           text: """Befreundete Schiffe in Reichweite 0-3 können deine Fokus- und Ausweichmarker ausgeben."""
        "Jango Fett":
           display_name: """Jango Fett"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du deine Zielerfassung auf dem feindlichen Schiff ausgeben, um 1&nbsp;der&nbsp;%FOCUS%-Ergebnisse des feindlichen Schiffes in ein Leerseiten-­Ergebnis zu ändern."""
        "Jedi Commander":
           display_name: """Jedi-Kommandant"""
           text: """Solange deine Flügelmänner violette Manöver ausführen, behandeln sie jene Manöver stattdessen, als wären sie rot.%LINEBREAK%Solange du verteidigst, dürfen bis zu 2 deiner Flügelmänner im Angriffswinkel je 1&nbsp;%HIT%/%CRIT%-Schaden erleiden, um 1 passendes Ergebnis zu negieren."""
        "Juke":
           display_name: """Finte"""
           text: """Solange du einen Angriff durchführst, falls du ausweichst, darfst du 1 der %EVADE%-Ergebnisse des Verteidigers in ein %FOCUS%-Ergebnis ändern."""
        "Jyn Erso":
           display_name: """Jyn Erso"""
           text: """Falls ein befreundetes Schiff in Reichweite 0-3 einen Fokusmarker erhalten würde, darf es stattdessen 1 Ausweichmarker erhalten."""
        "K-2SO":
           display_name: """K-2SO"""
           text: """Während der Systemphase darfst du ein befreundetes Schiff in Reichweite&nbsp;0-3 wählen. Jenes Schiff erhält 1&nbsp;Berechnungs- und 1&nbsp;Stressmarker."""
        "K2-B4":
           display_name: """K2-B4"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-3 verteidigt, darf es 1 Berechnungsmarker ausgeben. Falls es das tut, füge 1 %EVADE%-Ergebnis hinzu, es sei denn, der Angreifer entscheidet sich dafür, 1 Anstrengungsmarker zu erhalten."""
        "Kalani":
           display_name: """Kalani"""
           text: """Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, falls es im %BULLSEYEARC% eines befreundeten Schiffes in Reichweite 0-3 ist, darfst du 1 %CHARGE% ausgeben. Falls du das tust, erfasst jenes befreundete Schiff jenes feindliche Schiff als Ziel, dann erhält es 1 Stressmarker."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-2 ein weißes Manöver vollständig ausgeführt hat, darfst du 1 %FORCE% ausgeben, um 1 Stressmarker von jenem Schiff zu entfernen."""
        "Kaydel Connix":
           display_name: """Kaydel Connix"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du dein Rad auf ein Basismanöver der nächsthöheren Geschwindigkeit einstellen. Solange du jenes Manöver ausführst, erhöhe seine Schwierigkeit."""
        "Kaz's Fireball":
           display_name: """Kaz’ Fireball"""
           text: """<strong>Aufbau:</strong> Sobald du <small-caps>Explosion mit Flügeln</strong> abhandelst, darfst du den Schadensstapel durchsuchen und eine Schadenskarte mit dem Merkmal <strong>Schiff</strong> wählen; dir wird stattdessen jene Karte zugeteilt. Dann mische den Schadensstapel.%LINEBREAK% Du kannst Aktionen auf Schadenskarten durchführen, auch solange du ionisiert bist."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """Zu Beginn der Endphase darfst du 1 feindliches Schiff in Reichweite 0-2 in deinem Feuerwinkel wählen. Falls du das tust, entfernt jenes Schiff seine Fangstrahlmarker nicht."""
        "Kit Fisto":
           display_name: """Kit Fisto"""
           text: """Zu Beginn der Kampfphase darfst du 1 befreundetes Schiff in Reichweite 0-1 wählen und 1 %FORCE%ausgeben. Falls du das tust, darf es eine rote %EVADE%-Aktion durchführen."""
        "Korr Sella":
           display_name: """Korr Sella"""
           text: """Nachdem du ein blaues Manöver vollständig ausgeführt hast, entferne alle deine Stressmarker."""
        "Kraken":
           display_name: """Kraken"""
           text: """Während der Endphase darfst du bis zu 3 befreundete Schiffe in Reichweite 0-3 wählen. Falls du das tust, entfernt jedes dieser Schiffe 1 Berechnungsmarker nicht."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """<strong>Aktion:</strong> Wähle 1 feindliches Schiff in Reichweite 1-3. Falls du das tust, gib 1 %FORCE% aus, um jenem Schiff den Zustand <strong>Ich zeige dir die dunkle Seite</strong> zuzuordnen."""
        "L3-37":
           display_name: """L3-37"""
           text: """<strong>Aufbau:</strong> Rüste diese Seite offen aus.%LINEBREAK%Solange du verteidigst, darfst du diese Karte umdrehen. Fall du das tust, muss der Angreifer alle Angriffswürfel neu werfen."""
        "Landing Struts":
           display_name: """Landungskrallen"""
           text: """<strong>Geschlossen:</strong>%LINEBREAK%<strong>Aufbau:</strong> Rüste diese Seite offen aus.%LINEBREAK%Nachdem du ein Manöver ausgeführt hast, falls du einen Asteroiden oder eine Trümmerwolke überschneidest und 1 oder weniger andere befreundete Schiffe in Reichweite&nbsp;0 jenes Hindernisses sind, darfst du diese Karte umdrehen. Falls du das tust, erleidest du nicht die Effekte der Überschneidung mit dem Asteroiden oder der Trümmerwolke.%LINEBREAK%<strong>Geöffnet:</strong> (Rückseite)%LINEBREAK% Du ignorierst Hindernisse in Reichweite 0. Du kannst keine %BARRELROLL%-Aktionen durchführen. Nachdem du dein Rad aufgedeckt hast, falls du ein anderes Manöver als [2%STRAIGHT%] aufgedeckt hast und in Reichweite 0 eines Asteroiden oder einer Trümmerwolke bist, überspringe deinen Schritt „Manöver ausführen“ und entferne 1 Stressmarker; falls du ein rechtes oder linkes Manöver aufgedeckt hast, drehe dein Schiff um 90° in jene Richtung. Nachdem du ein Manöver ausgeführt hast, drehe diese Karte um.%LINEBREAK%<i>Errata: Timing verändert und %BARRELROLL%-Aktionen verboten.</i>"""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """<strong>Aktion:</strong> Wirf 2 Verteidigungswürfel. Erhalte 1 Fokusmarker für jedes %FOCUS%-Ergebnis. Erhalte 1 Ausweichmarker für jedes %EVADE%-Ergebnis. Falls beide Ergebnisse Leerseiten sind, wählt der Gegenspieler Fokus- oder Ausweichmarker. Du erhältst 1 Marker"""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian (Scum)"""
           text: """Nachdem du die Würfel geworfen hast, darfst du 1 grünen Marker ausgeben um bis zu 2 deiner Ergebnisse neu zu werfen."""
        "Lando's Millennium Falcon":
           display_name: """Landos Millennium Falke"""
           text: """1 Rettungskapsel darf bei dir andocken.%LINEBREAK%Solange ein Rettungskapsel bei dir angedockt ist, darfst du ihre Schilde behandeln, als wären sie auf deiner Schiffskarte.%LINEBREAK%Solange du einen Primärangriff gegen ein gestresstes Schiff durchführst, wirfst du 1 zusätzlichen Angriffswürfel.%LINEBREAKE%<i>Errata: „behandeln“ statt „ausgeben“</i>"""
        "Larma D'Acy":
           display_name: """Larma D’Acy"""
           text: """Solange du 2 oder weniger Stressmarker hast, kannst du&nbsp;%REINFORCE%-, %COORDINATE%- und&nbsp;<jam>-Aktionen durchführen, auch solange du gestresst bist.%LINEBREAK%Solange du eine weiße&nbsp;%REINFORCE%-, %COORDINATE%- oder <jam>-Akton durchführst, falls du gestresst bist, behandle jene Aktion, als wäre sie rot."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """Solange du verteidigst, falls der Angreifer gestresst ist, darfst du 1 Stressmarker vom Angreifer entfernen, um 1 deiner Leerseiten/%FOCUS%-Ergebnisse in ein %EVADE%-Ergebnis zu ändern."""
        "Leia Organa":
           display_name: """Leia Organa"""
           text: """Zu Beginn der Aktivierungsphase darfst du 3 %CHARGE% ausgeben. Während dieser Phase verringert jedes befreundete Schiff die Schwierigkeit seiner roten Manöver."""
        "Leia Organa (Resistance)":
           display_name: """Leia Organa (Resistance)"""
           text: """Nachdem ein befreundetes Schiff ein Nicht-[0 %STOP%]-Manöver aufgedeckt hat, darfst du 1&nbsp;%FORCE%ausgeben. Falls du das tust, verringert jenes Schiff die Schwierigkeit jenes Manövers.%LINEBREAK%<i>Errata: Manövertyp eingeschränkt</i>"""
        "Lone Wolf":
           display_name: """Einsamer Wolf"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls keine anderen befreundeten Schiffe in Reichweite 0-2 sind, darfst du 1 %CHARGE% ausgeben, um 1 deiner Würfel neu zu werfen."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """Zu Beginn der Kampfphase darfst du 1 %FORCE% ausgeben und 1 Erschöpfungsmarker erhalten, um deinen %SINGLETURRETARC%-Anzeiger zu rotieren.%LINEBREAK%<i>Errata: Erschöpfung ergänzt</i>"""
        "M9-G8":
           display_name: """M9-G8"""
           text: """Solange ein Schiff, das du als Ziel erfasst hast, einen Angriff durchführt, darfst du 1 Angriffswürfel wählen. Falls du das tust, wirft der Angreifer jenen Würfel neu."""
        "Mag-Pulse Warheads":
           display_name: """Magnetimpuls-Sprengköpfe"""
           text: """<strong>Angriff (%LOCK%):</strong> Gib 1&nbsp;%CHARGE% aus. Falls dieser Angriff trifft, erleidet der Verteidiger 1&nbsp;%CRIT%-Schaden und erhält 1&nbsp;Erschöpfungs- und 1&nbsp;Störsignalmarker. Dann negiere alle %HIT%/%CRIT%-Ergebnisse."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """Nachdem du verteidigt hast, falls der Angriff getroffen hat, darfst du den Angreifer als Ziel erfassen."""
        "Maneuver-Assist MGK-300":
           display_name: """MGK-300-Manöverassistent"""
           text: """Verringere die Schwierigkeit deiner Geradenmanöver (%STRAIGHT%) und Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) mit Geschwindigkeit 3."""
        "Mar Tuuk":
           display_name: """Mar Tuuk"""
           text: """<strong>Aufbau:</strong> Nachdem die Streitkräfte platziert worden sind, wähle 1 befreundeten Schiffschwarm mit %CALCULATE% in seiner Aktionsleiste und platziere jenen Schwarm in der Reserve.%LINEBREAK%Während der Endphase darfst du jenen Schwarm innerhalb deiner Aufstellungszone oder jenseits von Reichweite 2 aller feindlichen Schiffe platzieren. Dann darfst du 1 feindliches Schiff in Reichweite 0-1 von dir wählen; jedes Schiff in jenem Schwarm erfasst es als Ziel."""
        "Marg Sabl Closure":
           display_name: """Marg-Sabl-Einkesselung"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, falls du dich durch ein Hindernis, ein Konstrukt oder ein riesiges Schiff hindurchbewegt hast oder falls du abgesetzt worden bist, darfst du 1 feindliches Schiff in deinem&nbsp;%FRONTARC% in Reichweite 1-2 wählen. Jenes Schiff erhält 1 Anstrengungsmarker."""
        "Marksmanship":
           display_name: """Treffsicherheit"""
           text: """Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis ändern."""
        "Maul":
           display_name: """Maul"""
           text: """Nachdem du Schaden erlitten hast, darfst du 1 Stress­marker erhalten, um 1 %FORCE% wiederherzustellen.%LINEBREAK%Du kannst „Dunkle Seite“-Aufwertungen ausrüsten."""
        "Minister Tua":
           display_name: """Ministerin Tua"""
           text: """Zu Beginn der Kampfphase, falls du beschädigt bist, darfst du eine rote %REINFORCE%-Aktion durchführen."""
        "Moff Jerjerrod":
           display_name: """Moff Jerjerrod"""
           text: """Während der Systemphase darfst du 2 %CHARGE% ausgeben. Falls du das tust, wähle die [1 %BANKLEFT%]-, [1 %STRAIGHT%]- oder [1 %BANKRIGHT%]-Schablone. Jedes befreundete Schiff darf unter Verwendung jener Schablone eine rote %BOOST%-Aktion durchführen."""
        "Multi-Missile Pods":
           display_name: """Mehrfachraketenwerfer"""
           text: """<strong>Angriff (%CALCULATE% oder %LOCK%):</strong> Gib 1&nbsp;%CHARGE% aus. Falls der Verteidiger in deinem %FRONTARC%ist, darfst du 1 %CHARGE% ausgeben, um 1 zusätzlichen Angriffswürfel zu werfen. Falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du stattdessen bis zu 2 %CHARGE% ausgeben, um ebenso viele zusätzliche Angriffswürfel zu werfen."""
        "Munitions Failsafe":
           display_name: """Ausfallsichere Munition"""
           text: """Solange du einen %TORPEDO%- oder %MISSILE%-Angriff durchführst, nachdem du die Angriffswürfel geworfen hast, darfst du alle Würfelergebnisse negieren, um 1 %CHARGE% wiederherzustellen, die du als Kosten für den Angriff ausgegeben hast."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """Verringere die Schwierigkeit deiner Drehmanöver (%BANKLEFT% und %BANKRIGHT%)."""
        "Novice Technician":
           display_name: """Unerfahrener Techniker"""
           text: """Am Ende der Runde darfst du 1 Angriffswürfel werfen, um 1 offene Schadenskarte zu reparieren. Dann, bei einem %HIT%-Ergebnis, lege 1 Schadenskarte offen."""
        "Optimized Power Core":
           display_name: """Optimierter Energiekern"""
           text: """Nachdem du ein blaues Manöver ausgeführt hast, stelle 1&nbsp;%ENERGY% wieder her."""
        "Ordnance Team":
           display_name: """Munitionsteam"""
           text: """Solange du eine %RELOAD%-Aktion durchführst, darfst du bis zu 3&nbsp;%ENERGY% ausgeben, um ebenso viele zusätzliche %CHARGE% auf deinen aus-gerüsteten %MISSILE%/%TORPEDO%-Aufwertungen nachzuladen.%LINEBREAK%Nachdem du eine %RELOAD%-Aktion durchgeführt hast, darfst du 1&nbsp;%ENERGY%ausgeben, um 1 Entwaffnet- Marker zu entfernen."""
        "Ordnance Tubes":
           display_name: """Abschussrohre"""
           text: """<strong>Online: </strong> Setup: Equip this side faceup. %LINEBREAK% You can perform %TORPEDO% and %MISSILE% attacks only as bonus attacks. You <strong>must</strong> treat the %FRONTARC% requirement of your equipped %TORPEDO% and %MISSILE% upgrades as %FULLFRONTARC%. %LINEBREAK% Bonus Attack: Perform a %TORPEDO% attack. %LINEBREAK% Bonus Attack: Perform a %MISSILE% attack. %LINEBREAK%<strong>Offline</strong>%LINEBREAK%Du musst die%FRONTARC%&nbsp;-Bedingung deiner ausgerüsteten %TORPEDO%&nbsp;- und %MISSILE%&nbsp;-Aufwertungen behandeln, als wäre sie %BULLSEYEARC%. %LINEBREAK%<strong>Aktion:</strong> Gib 2&nbsp;%ENERGY% aus, um diese Karte umzudrehen."""
        "Os-1 Arsenal Loadout":
           display_name: """Os-1-Waffenarsenal"""
           text: """Solange du genau 1 Entwaffnet-Marker hast, kannst du trotzdem %TORPEDO%- und %MISSILE%-Angriffe gegen Ziele durchführen, die du als Ziel erfasst hast. Falls du das tust, kannst du während des Angriffs deine Zielerfassung nicht ausgeben.%LINEBREAK%Füge %TORPEDO%- und %MISSILE%-Slots hinzu."""
        "Outmaneuver":
           display_name: """Ausmanövrieren"""
           text: """Solange du einen %FRONTARC%-Angriff durchführst, falls du nicht im Feuerwinkel des Verteidigers bist, wirft der Verteidiger 1 Verteidigungswürfel weniger."""
        "Overdrive Thruster":
           display_name: """Übersteuerte Schubdüsen"""
           text: """Solange du eine rote %BOOST%-, %BARRELROLL%- oder <SLAM>-Aktion durchführst, <b>musst</b> du eine Schablone mit einer um 1 höheren Geschwindigkeit verwenden, falls möglich."""
        "PZ-4CO":
           display_name: """PZ-4CO"""
           text: """Am Ende der Aktivierungs­phase darfst du 1 befreun­detes Schiff in Reichweite&nbsp;1-2 wählen. Falls du das tust, transferiere 1&nbsp;Berechnungsmarker auf jenes Schiff. Falls dein aufgedecktes Manöver blau ist, darfst du stattdessen 1 Fokusmarker transferieren."""
        "Paige Tico":
           display_name: """Paige Tico"""
           text: """Nachdem du einen Primärangriff durchgeführt hast, darfst du 1 Bombe abwerfen oder deinen %SINGLETURRETARC%-Anzeiger rotieren.%LINEBREAK%Nachdem du zerstört worden bist, darfst du 1 Bombe abwerfen."""
        "Passive Sensors":
           display_name: """Passive Sensoren"""
           text: """<strong>Aktion:</strong> Gib 1&nbsp;%CHARGE% aus. Du kannst diese Aktion nur in deinem Schritt „Aktionen durchführen“ durchführen.%LINEBREAK%Solange deine&nbsp;%CHARGE% inaktiv ist, kannst du nicht koordiniert werden. Bevor du kämpfst, falls deine %CHARGE% inaktiv ist, darfst du eine&nbsp;%CALCULATE% oder&nbsp;%LOCK%-Aktion durchführen."""
        "Patience":
           display_name: """Geduld"""
           text: """Zu Beginn der Kampfphase, falls ein feindliches Schiff in deinem&nbsp;%FRONTARC% ist, darfst du 1 Erschöpfungsmarker erhalten, um 1&nbsp;%FORCE% wiederherzustellen."""
        "Pattern Analyzer":
           display_name: """Mustererkennung"""
           text: """Solange du ein rotes Manöver vollständig ausführst, vor dem Schritt „Schwierigkeit überprüfen“, darfst du 1 Aktion durchführen."""
        "Perceptive Copilot":
           display_name: """Aufmerksamer Co-Pilot"""
           text: """Nachdem du eine %FOCUS%-Aktion durchgeführt hast, erhalte 1 Fokusmarker."""
        "Petty Officer Thanisson":
           display_name: """Unteroffizier Thanisson"""
           text: """Während der Aktivierungs- oder Kampfphase, nachdem ein feindliches Schiff in deinem %FRONTARC% in Reichweite 0-1 einen roten oder orangefarbenen Marker erhalten hat, falls du nicht gestresst bist, darfst du 1 Stressmarker erhalten. Falls du das tust, erhält jenes Schiff 1 zusätzlichen Marker von der Art des soeben erhaltenen."""
        "Phoenix Squadron":
           display_name: """Phönix-Staffel"""
           text: """Zu Beginn der Planungsphase darf sich 1 deiner Flügelmänner, der an dir angedockt ist, deinem Schwarm wieder anschließen, ohne einen Stressmarker zu erhalten.%LINEBREAK%Solange du, dein Jagdshuttle-Flügelmann oder dein Flügelmann der Sheathipede-Klasse erteidigt, dürfen bis zu 2 deiner RZ-1-A-Flügler-Flügelmänner im Angriffswinkel je 1&nbsp;%HIT%/%CRIT%-Schaden erleiden, um 1 passendes Ergebnis zu negieren."""
        "Pivot Wing":
           display_name: """Schwenkflügel"""
           text: """<strong>Geschlossen:</strong>Solange du verteidigst, wirfst du 1 Verteidigungswürfel weniger. %LINEBREAK%Nachdem du ein [0 %STOP%]-Manöver ausgeführt hast, darfst du dein Schiff um 90° oder um 180° drehen.%LINEBREAK%Bevor du aktiviert wirst, darfst du diese Karte umdrehen. %LINEBREAK%<strong>Geöffnet:</strong> Bevor du aktiviert wirst, darfst du diese Karte umdrehen. %LINEBREAK% <i>Errata: Voraussetzung „UT-D60“ statt „UT-60D“</i> """
        "Plasma Torpedoes":
           display_name: """Plasmatorpedos"""
           text: """<strong>Angriff (%LOCK%):</strong> Gib 1&nbsp;%CHARGE% aus. Während des Schrittes „Ergebnisse neutralisieren“ werden %CRIT%&nbsp;-Ergebnisse vor %HIT%&nbsp;-Ergebnissen negiert. Nachdem dieser Angriff getroffen hat, verliert der Verteidiger 1&nbsp;Schild."""
        "Plo Koon":
           display_name: """Plo Koon"""
           text: """Zu Beginn der Endphase, falls du verstärkt bist, darfst du 1 befreundetes Schiff in Reichweite 0 oder in deinem %LEFTARC% oder %RIGHTARC% in Reichweite 1 wählen. Jenes Schiff entfernt 1 Erschöpfungs- oder Anstrengungsmarker oder repariert 1 offene Schadenskarte."""
        "Point-Defense Battery":
           display_name: """Punktverteidigungs-Batterie"""
           text: """<strong>Online: </strong> Setup: Equip this side faceup. %LINEBREAK% Bonus Attack: Spend 1 %ENERGY%. %LINEBREAK% Bonus Attack: Spend 1 %ENERGY%. %LINEBREAK% Bonus Attack: Spend 1 %ENERGY%. %LINEBREAK% Bonus Attack: Spend 1 %ENERGY%. %LINEBREAK%<strong>Offline</strong>%LINEBREAK%Nachdem du gekämpft hast, darfst du 2&nbsp;%ENERGY% ausgeben, um diese Karte umzudrehen."""
        "Precision Ion Engines":
           display_name: """Präzisions-Ionenantrieb"""
           text: """Bevor du eine Koiogran-­Wende (%KTURN%) mit Geschwindigkeit 1-3 ausführst, darfst du 1&nbsp;%CHARGE% ausgeben, um jenes Manöver stattdessen als Segnor-Looping (%SLOOPLEFT%&nbsp;oder&nbsp;%SLOOPRIGHT%) auszuführen."""
        "Precognitive Reflexes":
           display_name: """Hellseherische Reflexe"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du 1&nbsp;%FORCE% ausgeben, um eine&nbsp;%BARRELROLL%&nbsp;oder&nbsp;%BOOST%&nbsp;-Aktion durchzuführen. Dann, falls du eine Aktion durchgeführt hast, die nicht in deiner Aktionsleiste ist, erhalte 1&nbsp;Anstrengungsmarker.%LINEBREAK%Falls du das tust, kannst du während deiner Aktivierung keine weitere Aktion durchführen."""
        "Predator":
           display_name: """Jagdinstinkt"""
           text: """Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 Angriffswürfel neu werfen."""
        "Predictive Shot":
           display_name: """Vorausschauender Schuss"""
           text: """Nachdem du einen Angriff deklariert hast, falls der Verteidiger in deinem %BULLSEYEARC% ist, darfst du 1 %FORCE% ausgeben. Falls du das tust, kann der Verteidiger während des Schrittes „Verteidigungswürfel werfen“ nicht mehr Verteidigungswürfel werfen als die Anzahl deiner %HIT%/%CRIT%-Ergebnisse."""
        "Primed Thrusters":
           display_name: """Verbesserte Schubdüsen"""
           text: """Solange du 2 oder weniger Stressmarker hast, kannst du %BARRELROLL%- und %BOOST%-Aktionen durchführen, auch solange du gestresst bist."""
        "Protectorate Gleb":
           display_name: """Schulleiterin Gleb"""
           text: """Nachdem du ein befreundetes Schiff koordiniert hast, darfst du 1&nbsp;orangen oder roten Marker auf das von dir koordinierte Schiff transferieren.%LINEBREAK%<i>Errata: Einschränkung auf befreundete Schiffe</i>"""
        "Proton Bombs":
           display_name: """Protonenbomben"""
           text: """<strong>Bombe</strong>%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone eine Protonenbombe abzuwerfen."""
        "Proton Cannon Battery":
           display_name: """Protonengeschütz-Batterie"""
           text: """<b>Aufbau:</b> Rüste diese Seite offen aus.%LINEBREAK%<strong>Bonusangriff:</strong> Ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis.%LINEBREAK%<strong>Bonusangriff:</strong> Gib 1 %ENERGY% aus. Ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Proton Rockets":
           display_name: """Protonenraketen"""
           text: """<strong>Angriff (</strong>%FOCUS%<strong>):</strong> Gib 1 %CHARGE% aus."""
        "Proton Torpedoes":
           display_name: """Protonentorpedos"""
           text: """<strong>Angriff (</strong>%LOCK%<strong>):</strong> Gib 1 %CHARGE% aus. Ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Proximity Mines":
           display_name: """Annäherungsminen"""
           text: """<strong>Mine</strong>%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone eine Annäherungsmine abzuwerfen.%LINEBREAK%Die %CHARGE% dieser Karte können nicht wiederhergestellt werden."""
        "Q7 Astromech":
           display_name: """Q7-Astromechdroide"""
           text: """Solange du eine Fassrolle fliegst oder Schub gibst, kannst du dich durch Hindernisse hindurchbewegen und sie überschneiden."""
        "Qi'ra":
           display_name: """Qi’ra"""
           text: """Solange du dich bewegst und Angriffe durchführst, ignorierst du Hindernisse, die du als Ziel erfasst hast."""
        "Quick-Release Locks":
           display_name: """Schnellspannverschluss"""
           text: """Während der Systemphase darfst du 1 %CHARGE% ausgeben, um 1 Treibgut in deinem%REARARC%in Reichweite 0 zu platzieren. Es darf kein Schiff überschneiden.%LINEBREAK%Die %CHARGE% dieser Karte können nicht wiederhergestellt werden."""
        "R1-J5":
           display_name: """R1-J5"""
           text: """Solange du 2&nbsp; oder weniger Stressmarker hast, kannst du Aktionen auf Schadenskarten durchführen, auch solange du gestresst bist.%LINEBREAK% Nachdem du eine Scha-denskarte mit dem Merkmal <strong>Schiff</strong> repariert hast, darfst du 1&nbsp;%CHARGE% ausgeben, um jene Karte noch einmal zu reparieren."""
        "R2 Astromech":
           display_name: """R2-Astromechdroide"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du 1 %CHARGE% ausgeben und 1 Entwaffnet-Marker erhalten, um 1 Schild wiederherzustellen."""
        "R2-A6":
           display_name: """R2-A6"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du dein Rad auf ein Manöver mit gleicher Flugrichtung und einer um 1 höheren oder niedrigeren Geschwindigkeit einstellen."""
        "R2-C4":
           display_name: """R2-C4"""
           text: """Solange du einen Angriff durchführst, darfst du 1&nbsp;Ausweichmarker ausgeben, um 1&nbsp;%FOCUS% -Ergebnis in ein%HIT%&nbsp;-Ergebnis zu ändern."""
        "R2-D2 (Crew)":
           display_name: """R2-D2 (Crew)"""
           text: """Während der Endphase, falls du beschädigt bist und keine Schilde hast, darfst du 1 Angriffswürfel werfen, um 1 Schild wiederherzustellen. Bei einem %HIT%-Ergebnis lege 1 deiner Schadenskarten offen."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du 1 %CHARGE% ausgeben und 1 Entwaffnet-Marker erhalten, um 1 Schild wiederherzustellen."""
        "R2-D2 (Resistance)":
           display_name: """R2-D2"""
           text: """Während der Endphase darfst du 1&nbsp;%CHARGE% und 1&nbsp;<shield> ausgeben, um 1 roten Marker zu entfernen.%LINEBREAK%Während der Endphase, falls du keine aktiven <shield>, darfst du 2&nbsp;%CHARGE% ausgeben, um 1&nbsp;<shield> wiederherzustellen und 1 Erschöpfungsmarker zu erhalten."""
        "R2-D2 (Republic)":
           display_name: """R2-D2"""
           text: """Nachdem du aktiviert worden bist, darfst du 1&nbsp;%CHARGE% ausgeben und 1 Erschöpfungsmarker erhalten, um 1 Schadenskarte zu reparieren, 1 Schild wiederherzustellen oder 1 Gerät in Reichweite 0-1 zu entfernen."""
        "R2-HA":
           display_name: """R2-HA"""
           text: """Solange du verteidigst, darfst du deine Zielerfassung auf dem Angreifer ausgeben, um beliebig viele deiner Verteidigungswürfel neu zu werfen."""
        "R3 Astromech":
           display_name: """R3-Astromechdroide"""
           text: """Du kannst bis zu 2 Zielerfassungen aufrechterhalten. Jede Zielerfassung muss ein anderes Objekt als Ziel haben.%LINEBREAK%Nachdem du eine %LOCK%-Aktion durchgeführt hast, darfst du ein Ziel erfassen.%LINEBREAK% <i>Errata: „Jede Zielerfassung muss ein anderes Objekt als Ziel haben“ hinzugefügt </i> """
        "R4 Astromech":
           display_name: """R4-Astromechdroide"""
           text: """Verringere die Schwierigkeit deiner Basismanöver mit Geschwindigkeit 1-2 (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%)."""
        "R4-B11":
           display_name: """R4-B11"""
           text: """Solange du einen Angriff durchführst, darfst du 1&nbsp; orangen oder roten Marker vom Verteidiger entfernen, um beliebig viele Verteidigungswürfel neu zu werfen."""
        "R4-P Astromech":
           display_name: """R4-P-Astromechdroide"""
           text: """Bevor du ein Basismanöver ausführst, darfst du 1 %CHARGE% ausgeben. Falls du das tust, verringere die Schwierigkeit jenes Manövers, solange du es ausführst."""
        "R4-P17":
           display_name: """R4-P17"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt hast, darfst du 1 %CHARGE% ausgeben, um eine Aktion durchzuführen, auch solange du gestresst bist."""
        "R4-P44":
           display_name: """R4-P44"""
           text: """Nachdem du ein rotes Manöver vollständig ausgeführt hast, falls ein feindliches Schiff in deinem %BULLSEYEARC% ist, erhalte 1 Berechnungsmarker."""
        "R5 Astromech":
           display_name: """R5-Astromechdroide"""
           text: """<strong>Aktion:</strong> Gib 1 %CHARGE% aus, um 1 verdeckte Schadenskarte zu reparieren.%LINEBREAK%<strong>Aktion:</strong> Repariere 1 offene <strong>Schiff</strong>-Schadenskarte."""
        "R5-D8":
           display_name: """R5-D8"""
           text: """<strong>Aktion:</strong> Gib 1 %CHARGE% aus, um 1 verdeckte Schadenskarte zu reparieren.%LINEBREAK%<strong>Aktion:</strong> Repariere 1 offene <strong>Schiff</strong>-Schadenskarte."""
        "R5-P8":
           display_name: """R5-P8"""
           text: """Solange du einen Angriff gegen einen Verteidiger in deinem %FRONTARC% durchführst, darfst du 1 %CHARGE% ausgeben, um 1 Angriffswürfel neu zu werfen. Falls das neugeworfene Ergebnis ein %CRIT% ist, erleide 1 %CRIT%-Schaden."""
        "R5-TK":
           display_name: """R5-TK"""
           text: """Du kannst Angriffe gegen befreundete Schiffe durchführen."""
        "R5-X3":
           display_name: """R5-X3"""
           text: """Bevor du aktiviert wirst oder kämpfst, darfst du 1 %CHARGE% ausgeben, um bis zum Ende der Phase Hindernisse zu ignorieren."""
        "R6-D8":
           display_name: """R6-D8"""
           text: """Solange du einen Angriff durchführst, darfst du bis zu X Angriffswürfel neu werfen. X ist die Anzahl befreundeter Schiffe in Reichweite 0-3, die den Verteidiger in ihrem %BULLSEYEARC% haben."""
        "R7-A7":
           display_name: """R7-A7"""
           text: """Solange du einen Angriff durchführst, darfst du 1&nbsp;%CHARGE% ausgeben, um 1&nbsp;%HIT%-Ergebnis in ein %CRIT%-Ergebnis zu ändern."""
        "Raymus Antilles":
           display_name: """Raymus Antilles"""
           text: """Nachdem du zerstört worden bist, erhält jedes befreundete Schiff in Reichweite 0-1 1 Fokusmarker.%LINEBREAK%Nachdem du zerstört worden bist, wirst du bis zum Ende der Endphase nicht entfernt."""
        "Repulsorlift Stabilizers":
           display_name: """Repulsorlift-Stabilisatoren"""
           text: """<strong>Inactive:</strong>Setup: Equip this side faceup. Reduce the difficulty of your straight (%STRAIGHT%) maneuvers. After you fully execute a maneuver, you may flip this card. %LINEBREAK%<strong>Aktiv:</strong>Nachdem du ein Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) oder ein Wendemanöver (%TURNLEFT% oder %TURNRIGHT%) aufgedeckt hast, <b>musst</b> du dieses Manöver als Slip durchführen, dann drehst du diese Karte um.%LINEBREAK%Nachdem du ein Nicht-Slip-Manöver vollständig ausgeführt hast, darfst du diese Karte umdrehen."""
        "Rey":
           display_name: """Rey"""
           text: """Solange du verteidigst oder einen Angriff durchführst, falls das feindliche Schiff in deinem %SINGLETURRETARC% ist, darfst du 1 %FORCE% ausgeben, um 1 deiner Leerseiten-Ergebnisse in ein %EVADE%- oder %HIT%-Ergebnis zu ändern."""
        "Rey's Millennium Falcon":
           display_name: """Reys Millennium Falke"""
           text: """Falls du 2 oder weniger Stressmarker hast, kannst du rote Segnor-Looping-Manöver [%SLOOPLEFT% oder %SLOOPRIGHT%] ausführen und %BOOST%- und %ROTATEARC%-Aktionen durchführen, auch solange du gestresst bist."""
        "Riff Tamson":
           display_name: """Riff Tamson"""
           text: """Während der Kampfphase, bei Initiative 5, darfst du 1 %ENERGY% ausgeben, um einen Bonus-<hardpoint>-Angriff durchzuführen.%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, falls dem Verteidiger 1 oder mehrere offene Schadenskarten zugeteilt worden sind, erhält er 2 Anstrengungsmarker."""
        "Rigged Cargo Chute":
           display_name: """Manipulierte Frachtrampe"""
           text: """<strong>Aktion:</strong> Gib 1 %CHARGE% aus. Wirf unter Verwendung der [1 %STRAIGHT%]-Schablone 1 freie Fracht ab."""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1 deiner Ergebnisse ausgeben, um das feindliche Schiff als Ziel zu erfassen."""
        "Ruthless":
           display_name: """Skrupellos"""
           text: """Solange du einen Angriff durchführst, darfst du ein anderes befreundetes Schiff in Reichweite 0-1 zum Verteidiger wählen. Falls du das tust, erleidet jenes Schiff 1 %HIT%-Schaden und du darfst 1 deiner Würfelergebnisse in ein %HIT%-Ergebnis ändern."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """<strong>Aufbau:</strong> Platziere 1 Ionen-, 1 Störsignal-, 1 Stress- und 1 Fangstrahlmarker auf dieser Karte. %LINEBREAK%Nachdem ein Schiff den Effekt einer befreundeten Bombe erlitten hat, darfst du 1 Ionen-, Störsignal-, Stress- oder Fangstrahlmarker von dieser Karte entfernen. Falls du das tust, erhält jenes Schiff einen passenden Marker."""
        "Sabine Wren (Gunner)":
           display_name: """Sabine Wren"""
           text: """Nachdem du einen Spezialangriff durchgeführt hast, darfst du bis zu X befreundete Schiffe in Reichweite 0-3 des Verteidigers wählen. X ist die Anzahl Schadenskarten, die dem Verteidiger während jenes Angriffs zugeteilt worden sind. Jedes gewählte Schiff darf 1 Anstrengungs- oder Stressmarker entfernen."""
        "Saboteur's Map":
           display_name: """Karte des Saboteurs"""
           text: """Am Ende des Aufbaus darfst du bis zu 1 %CHARGE% von jeder deiner ausgerüsteten <strong>Mine</strong>-Aufwertungen ausgeben, um das entsprechende Gerät auf der Spielfläche jenseits von Reichweite 2 zu feindlichen Schiffen oder anderen Geräten zu platzieren."""
        "Saturation Salvo":
           display_name: """Flächenangriff"""
           text: """Solange du einen %TORPEDO%- oder %MISSILE%-Angriff durchführst, darfst du 1 %CHARGE% von jener Aufwertung ausgeben. Falls du das tust, wähle 2 Verteidigungswürfel. Der Verteidiger muss jene Würfel neu werfen."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """Solange du einen Angriff durchführst, darfst du 1 %HIT%-Schaden erleiden, um alle deine %FOCUS%-Ergebnisse in %CRIT%-Ergebnisse zu ändern."""
        "Scanner Baffler":
           display_name: """Scanner-Manipulator"""
           text: """ Am Ende des Aufbaus darfst du bis zu 6 andere befreundete Standardschiffe in deiner Aufstellungszone in Reichweite 0-1 wählen. Falls du das tust, platziere diese Schiffe irgendwo in Reichweite 0-1."""
        "Seasoned Navigator":
           display_name: """Erfahrener Navigator"""
           text: """Nachdem du dein Rad aufgedeckt hast, darfst du dein Rad auf ein anderes nicht-rotes Manöver derselben Geschwindigkeit einstellen. Solange du jenes Manöver ausführst, erhöhe seine Schwierigkeit."""
        "Seismic Charges":
           display_name: """Seismische Bomben"""
           text: """<strong>Bombe</strong>%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%]-Schablone eine Seismische Bombe abzuwerfen."""
        "Selfless":
           display_name: """Selbstlos"""
           text: """Solange ein anderes befreundetes Schiff in Reichweite 0-1 verteidigt, vor dem Schritt „Ergebnisse neutralisieren“, falls du im Angriffswinkel bist, darfst du 1 %CRIT%-Schaden erleiden, um 1 %CRIT%-Ergebnis zu negieren."""
        "Sense":
           display_name: """Gespür"""
           text: """Während der Systemphase darfst du 1 Schiff in Reichweite 0-1 wählen und sein Rad ansehen. Falls du 1 %FORCE% ausgibst, darfst du stattdessen ein Schiff in Reichweite 0-3 wählen."""
        "Sensitive Controls":
           display_name: """Genaue Steuerung"""
           text: """Ersetze deine Schiffsfähigkeit <strong>Automatische Schubdüsen</strong> durch:%LINEBREAK%<strong>Genaue Steuerung:</strong> Während der Systemphase darfst du eine rote&nbsp;%BARRELROLL%- oder eine rote&nbsp;%BOOST%-Aktion durchführen."""
        "Sensor Buoy Suite":
           display_name: """Sensorbojen"""
           text: """<strong>Aufbau:</strong> Bevor die Streitkräfte platziert werden, platziere 2 Sensorbojen-­Remotes jenseits von Reichweite 2 zu den Spielflächenrändern.%LINEBREAK%Bevor du kämpfst, darfst du ein Schiff in Reichweite 0-1 zu einer befreundeten Sensorboje als Ziel erfassen, wobei du Reichweitenbeschränkungen ignorierst."""
        "Sensor Experts":
           display_name: """Sensor-Experten"""
           text: """Du kannst bis zu 3 Zielerfassungen auf unterschiedlichen Objekte aufrechterhalten.Nachdem du eine %LOCK%&nbsp;Aktion durchgeführt hast, darfst du bis zu 2&nbsp;%ENERGY% ausgeben, um ebenso viele andere Objekte in Reichweite 0-1 des Ziels als Ziel zu erfassen, wobei du Reich weiten beschränkungen ignorierst."""
        "Servomotor S-Foils":
           display_name: """Servomotorische S-Flügel"""
           text: """<strong>Geschlossen:</strong>Solange du einen Primärangriff durchführst, wirf 1 Angriffswürfel weniger. Bevor du aktiviert wirst, darfst du diese Karte umdrehen. %LINEBREAK%<strong>Geöffnet:</strong>Die Zusätzlichen Aktionen stehen nicht zur Verfügung. Bevor du aktiviert wirst, darfst du diese Karte umdrehen."""
        "Seventh Fleet Gunner":
           display_name: """Kanonier der siebten Flotte"""
           text: """Solange ein anderes befreundetes Schiff einen Primärangriff durchführt, falls der Verteidiger in deinem Feuerwinkel ist, darfst du 1 %CHARGE% ausgeben. Falls du das tust, wirft der Angreifer 1 zusätzlichen Angriffswürfel, bis zu einem Maximum von 4. Während der Systemphase darfst du 1 Entwaffnet-Marker erhalten, um 1 %CHARGE% wiederherzustellen."""
        "Seventh Sister":
           display_name: """Siebte Schwester"""
           text: """Falls ein feindliches Schiff in Reichweite 0-1 einen Stressmarker erhalten würde, darfst du 1 %FORCE% ausgeben, um es stattdessen 1 Störsignal- oder 1 Fangstrahlmarker erhalten zu lassen."""
        "Shadow Wing":
           display_name: """Schattengeschwader"""
           text: """Deine Flügelmänner können %BARRELROLL%- oder %BOOST%-Aktionen durchführen. Falls sie das tun, trennen sie sich freiwillig vom Schwarm.%LINEBREAK%Solange du verteidigst, dürfen bis zu 2 deiner Flügelmänner im Angriffswinkel je 1&nbsp;%HIT%/%CRIT%-Schaden erleiden, um 1 passendes Ergebnis zu negieren."""
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
           text: """<strong>Aktion:</strong> Gib 1 %CHARGE% aus, um 1 Ladung von 1 deiner ausgerüsteten %ASTROMECH%-Aufwertungen wiederherzustellen. %LINEBREAK%<strong>Aktion:</strong> Gib 1 %CHARGE% aus, um 1 Ersatzteil abzuwerfen, dann verliere alle Zielerfassungen, die dir zugeordnet sind."""
        "Special Forces Gunner":
           display_name: """Bordschütze der Spezialeinheiten"""
           text: """Solange du einen %FRONTARC%-Primärangriff durchführst, falls dein %SINGLETURRETARC% auf deinem %FRONTARC% ist, darfst du 1 zusätzlichen Angriffswürfel werfen.%LINEBREAK%Nachdem du einen %FRONTARC%-Primärangriff durchgeführt hast, falls dein %SINGLETURRETARC% auf deinem %REARARC% ist, darfst du einen Bonus-%SINGLETURRETARC%-Primärangriff durchführen."""
        "Squad Leader":
           display_name: """Staffelführer"""
           text: """Solange du koordinierst, kann das von dir gewählte Schiff eine Aktion nur dann durchführen, falls jene Aktion auch in deiner Aktionsleiste ist."""
        "Stabilized S-Foils":
           display_name: """Stabilisierte S-Flügel"""
           text: """<strong>Geschlossen:</strong> Fügt <r>%RELOAD%</r> und %BARRELROLL%&nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i><r>%EVADE%</r> hinzu. Bevor du aktiviert wirst, falls du nicht kritisch beschädigt bist, darfst du diese Karte umdrehen. %LINEBREAK%<strong>Geöffnet:</strong> <i>Fügt %BARRELROLL%&nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i>&nbsp;<r>%LOCK%</r> hinzu</i>%LINEBREAK% Nachdem du einen Angriff durchgeführt hast, darfst du deine Zielerfassung auf dem Verteidiger ausgeben, um unter Verwendung einer %CANNON%-Aufwertung, mit der du in diesem Zug noch nicht angegriffen hast, einen Bonus-%CANNON%-Angriff gegen jenes Schiff durchzuführen.%LINEBREAK% Bevor du aktiviert wirst, falls du nicht kritisch beschädigt bist, darfst du diese Karte umdrehen."""
        "Stalwart Captain":
           display_name: """Standhafter Captain"""
           text: """Nachdem du zerstört worden bist, wirst du bis zum Ende der Endphase nicht entfernt."""
        "Starbird Slash":
           display_name: """Sternenvogel-Streich"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 feindliches Schiff wählen, durch das du dich hindurchbewegt hast. Jenes Schiff erhält 1 Anstrengungsmarker. Dann, falls du im Feuerwinkel jenes Schiffes bist, erhältst du 1 Anstrengungsmarker."""
        "Static Discharge Vanes":
           display_name: """Elektrostatischer Entlader"""
           text: """Bevor du einen Ionen- oder Störsignalmarker erhalten würdest, falls du nicht gestresst bist, darfst du ein Schiff in Reichweite 0-1 wählen. Falls du das tust, erhält stattdessen das gewählte Schiff jenen Ionen oder Störsignalmarker, dann erleidest du 1 %HIT%-Schaden.%LINEBREAK%<i>Errata: Komplett überarbeitet</i>"""
        "Stealth Device":
           display_name: """Tarnvorrichtung"""
           text: """Solange du verteidigst, falls deine %CHARGE% aktiv ist, wirf 1 zusätzlichen Verteidigungswürfel.%LINEBREAK%Nachdem du Schaden erlitten hast, verliere 1 %CHARGE%."""
        "Strategic Commander":
           display_name: """Strategischer Commander"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-4 sein Rad aufgedeckt hat, darfst du 1&nbsp;%CHARGE% ausgeben. Falls du das tust, stellt es sein Rad auf ein anderes Manöver mit derselben Schwierigkeit und Geschwindigkeit ein."""
        "Supernatural Reflexes":
           display_name: """Übernatürliche Reflexe"""
           text: """Bevor du aktiviert wirst, darfst du 1 %FORCE% ausgeben, um eine %BARRELROLL%- oder %BOOST%-Aktion durchzuführen. Dann, falls du eine Aktion durchgeführt hast, die nicht in deiner Aktionsleiste ist, erleide 1 %HIT%-Schaden."""
        "Suppressive Gunner":
           display_name: """Unterstützungsschütze"""
           text: """Solange du einen Angriff durchführst, darfst du 1 &nbsp;%FOCUS%-Ergebnis ausgeben. Falls du das tust, erhält der Verteidiger 1 Erschöpfungsmarker, es sei denn, er wählt, 1 %HIT%-Schaden zu erleiden."""
        "Supreme Leader Snoke":
           display_name: """Oberster Anführer Snoke"""
           text: """Während der Systemphase darfst du beliebig viele feindliche Schiffe jenseits von Reichweite 1 wählen. Falls du das tust, gib ebenso viele %FORCE% aus, um das Rad jedes gewählten Schiffes auf die offene Seite zu drehen."""
        "Swarm Tactics":
           display_name: """Schwarmtaktik"""
           text: """Zu Beginn der Kampfphase darfst du 1 befreundetes Schiff in Reichweite 1 wählen. Falls du das tust, behandelt jenes Schiff seine Initiative bis zum Ende der Runde so, als würde sie deiner Initiative entsprechen.  %LINEBREAK% <i>Errata: Begrenzung auf Imperium entfernt</i>"""
        "Synced Laser Cannons":
           display_name: """Synchronisierte Laserkanonen"""
           text: """<strong>Angriff:</strong> Falls du berechnend bist, wendet der Verteidiger den Reichweitenbonus nicht an."""
        "Synchronized Console":
           display_name: """Synchronisierte Steuerkonsole"""
           text: """Nachdem du einen Angriff durchgeführt hast, darfst du ein befreundetes Schiff in Reichweite 1 oder ein befreundetes Schiff mit der Aufwertung <strong>Synchronisierte Steuerkonsole</strong> in Reichweite 1-3 wählen und eine Zielerfassung ausgeben, die du auf dem Verteidiger hast. Falls du das tust, darf das von dir gewählte Schiff den Verteidiger als Ziel erfassen."""
        "TA-175":
           display_name: """TA-175"""
           text: """Nachdem ein befreundetes Schiff in Reichweite&nbsp;0-3 mit&nbsp;%CALCULATE% in seiner Aktionsleiste zerstört worden ist, erhält jedes befreundete Schiff in Reichweite&nbsp;0-3 mit&nbsp;%CALCULATE% in seiner Aktionsleiste 1&nbsp;Berechnungsmarker."""
        "TIE Defender Elite":
           display_name: """TIE-Abwehrjäger-Elite"""
           text: """Verringere die Schwierigkeit deiner Wendemanöver [%TURNLEFT%&nbsp;oder&nbsp;%TURNRIGHT%]. Erhöhe die Schwierigkeit deiner Koiogran-Wenden [%KTURN%]. Ersetze deine Schiffsfähigkeit <strong>Vollgas</strong> durch:%LINEBREAK%<strong>Verbesserte Feuerkontrolle:</strong> Nachdem du einen&nbsp;%CANNON%- oder&nbsp;%MISSILE%-Angriff durchgeführt hast, falls du den Verteidiger als Ziel erfasst hast, darfst du einen Bonus-Primärangriff gegen den Verteidiger durchführen."""
        "TV-94":
           display_name: """TV-94"""
           text: """Solange ein befreundetes Schiff in Reichweite 0-3 einen Primärangriff gegen einen Verteidiger in seinem %BULLSEYEARC% durchführt, falls 2 oder weniger Angriffswürfel vorhanden sind, darf es 1 Berechnungsmarker ausgeben, um 1 %HIT% - Ergebnis hinzuzufügen."""
        "Tactical Officer":
           display_name: """Taktikoffizier"""
           text: """<i class = flavor_text>In den Wirren einer Raumschlacht kann ein einzelner Befehl über Sieg oder totale Auslöschung entscheiden.</i>"""
        "Tactical Scrambler":
           display_name: """Taktischer Scrambler"""
           text: """Solange du den Angriff eines feindlichen Schiffes versperrst, wirft der Verteidiger 1 zusätzlichen Verteidigungswürfel."""
        "Target-Assist MGK-300":
           display_name: """MGK-300-Zielassistent"""
           text: """Bevor du kämpfst, falls du keine grünen Marker hast und nicht gestresst bist, erhältst du 1 Berechnungsmarker für jedes feindliche Schiff in Reichweite 2-3 in deinem Feuerwinkel, bis zu einem Maximum von 2."""
        "Targeting Battery":
           display_name: """Zielbatterie"""
           text: """<strong>Online: </strong> Setup: Equip this side faceup.%LINEBREAK% Bonus Attack: Spend 1 %ENERGY%. After you perform this attack, you may acquire a lock on the defender. %LINEBREAK%<strong>Offline</strong>%LINEBREAK%Nachdem du gekämpft hast, darfst du 2&nbsp;%ENERGY% ausgeben, um diese Karte umzudrehen."""
        "Targeting Computer":
           display_name: """Zielcomputer"""
           text: """<i class = flavor_text>Zielcomputer gehören zur Standardausstattung vieler Schiffe, vor allem wenn sie für den Abwurf von Sprengkörpern konzipiert sind. Bei leichten Jagdmaschinen und Transportern, die ohne Waffenzielsystem verkauft werden, lässt es sich problemlos nachrüsten.</i>"""
        "Targeting Synchronizer":
           display_name: """Zielsynchronisiersystem"""
           text: """Solange ein befreundetes Schiff in Reichweite 1-2 einen Angriff gegen ein Ziel durchführt, das du als Ziel erfasst hast, ignoriert jenes Schiff die %LOCK%-Angriffsvoraussetzung."""
        "Thermal Detonators":
           display_name: """Thermaldetonatoren"""
           text: """<strong>Bombe</strong>%LINEBREAK%Während der Systemphase darfst du bis zu 2&nbsp;%CHARGE% ausgeben, um ebenso viele Thermaldetonatoren unter Verwendung der [1&nbsp;%STRAIGHT%] oder [2&nbsp;%STRAIGHT%]-Schablone abzuwerfen. Jeder muss unter Verwendung einer anderen Schablone platziert werden.%LINEBREAK%Sobald du diese Karte nachlädst, stellst du 1&nbsp;zusätzliche&nbsp;%CHARGE% wieder her."""
        "Tibanna Reserves":
           display_name: """Tibanna-Vorräte"""
           text: """<strong>Aktion:</strong> Gib 1 %CHARGE% aus, um 2 %ENERGY% wiederherzustellen."""
        "Tierfon Belly Run":
           display_name: """Tierfon-Tiefflug"""
           text: """Du kannst Spezialangriffe durchführen, auch solange du in Reichweite 0 eines Asteroiden bist.%LINEBREAK%Solange du verteidigst, falls du in Reichweite 0 eines Hindernisses bist, können Angriffswürfel nicht neu geworfen werden."""
        "Tobias Beckett":
           display_name: """Tobias Beckett"""
           text: """<strong>Aufbau:</strong> Nach dem Platzieren der Streitkräfte darfst du 1 Hindernis im Spielbereich wählen. Falls du das tust, platziere es irgendwo im Spielbereich, jenseits von Reichweite 2 zu den Spielfeldecken und Schiffen und jenseits von Reichweite 1 zu anderen Hindernissen."""
        "Toryn Farr":
           display_name: """Toryn Farr"""
           text: """Nachdem du ein befreundetes Schiff koordiniert hast, darf es ein Schiff, das du als Ziel erfasst hast, als Ziel erfassen, wobei es Reich weitenbeschränkungen ignoriert."""
        "Tracking Torpedoes":
           display_name: """Zielsuch-Torpedos"""
           text: """Während der Systemphase darfst du bis zu 3 %CHARGE% ausgeben, um ebenso viele Zielsuchtorpedos unter Verwendung der [%BANKLEFT% 3]-, [%STRAIGHT% 4]- und [%BANKRIGHT% 3]-Schablonen zu starten. Jedes Gerät muss eine andere Schablone verwenden. Dann darf jedes Gerät ein Objekt als Ziel erfassen, das du als Ziel erfasst hast, wobei es Reichweiten­beschränkungen ignoriert. Soll die folgende Zeile beinhalten: „Die %CHARGE% dieser Karte können nicht wiederhergestellt werden%LINEBREAK%<i>Errata: %CHARGE% nicht wiederherstellbar</i>"""
        "Tractor Beam":
           display_name: """Fangstrahl"""
           text: """<strong>Angriff:</strong> Falls dieser Angriff trifft, fügen alle %HIT%/%CRIT%-Ergebnisse Fangstrahlmarker anstatt Schaden zu."""
        "Tractor Technicians":
           display_name: """Fangstrahltechniker"""
           text: """Während der Endphase kann jedes andere Schiff in Reichweite 0-1 seine Fangstrahlmarker nicht entfernen.%LINEBREAK%Bevor ein gefangenes feindliches Schiff in Reichweite 0-1 sein Rad aufdeckt, darfst du 1 %ENERGY% ausgeben. Falls du das tust, verringert jenes Schiff, solange es sein Manöver in dieser Aktivierung ausführt, die Geschwindigkeit jenes Manövers um 1 (Minimum: 1)."""
        "Tractor Tentacles":
           display_name: """Fangtentakel"""
           text: """<b>Aufbau:</b> Rüste diese Seite offen aus.%LINEBREAK%<strong>Bonusangriff</strong>%LINEBREAK%<strong>Bonusangriff:</strong> Gib 1 %ENERGY% aus.%LINEBREAK%<strong>Bonusangriff:</strong> Gib 1 %ENERGY% aus.%LINEBREAK%<strong>Bonusangriff:</strong> Gib 1 %ENERGY% aus."""
        "Trajectory Simulator":
           display_name: """Flugbahnsimulator"""
           text: """Während der Systemphase, falls du eine Bombe abwerfen oder starten würdest, darfst du sie stattdessen unter Verwendung der [5 %STRAIGHT%]-Schablone starten."""
        "Treacherous":
           display_name: """Verräterisch"""
           text: """Solange du verteidigst, darfst du ein Schiff wählen, das den Angriff versperrt, und 1 %CHARGE% ausgeben. Falls du das tust, negiere 1 %HIT%- oder %CRIT%-Ergebnis und das von dir gewählte Schiff erhält 1 Anstrengungsmarker.%LINEBREAK%Nachdem ein Schiff in Reichweite 0-3 zerstört worden ist, stelle 1 %CHARGE% wieder her."""
        "Trick Shot":
           display_name: """Trickschuss"""
           text: """Solange du einen Angriff durchführst, der durch ein Hindernis versperrt ist, wirf 1 zusätzlichen Angriffswürfel."""
        "Turbolaser Battery":
           display_name: """Turbolaser-Batterie (Offline)"""
           text: """<strong>Offline</strong>%LINEBREAK%Nachdem du gekämpft hast, darfst du 2&nbsp;%ENERGY% ausgeben, um diese Karte umzudrehen."""
        "Underslung Blaster Cannon":
           display_name: """Unterbaute Blasterkanone"""
           text: """Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, darfst du diesen Angriff als Bonusangriff gegen jenes Schiff durchführen.%LINEBREAK%<strong>Angriff (%LOCK%):</strong> Deine Würfel können nur modifiziert werden, indem du eine Zielerfassung für den Standardeffekt ausgibst."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """Nachdem du ein Manöver teilweise ausgeführt hast, darfst du 1 %HIT%-Schaden erleiden, um 1 weiße Aktion durchzuführen."""
        "Ursa Wren":
           display_name: """Ursa Wren"""
           text: """ Du kannst bis zu 2 Zielerfassungen aufrechterhalten. Jede Zielerfassung muss ein anderes Objekt als Ziel haben. Nachdem ein befreundetes Schiff in Reichweite 0–3 von einem feindlichen Schiff als Ziel erfasst worden ist, darfst du eine %LOCK%-Aktion durchführen. %LINEBREAK% <i>Errata (since rules reference 1.4.2): Reaktion auf die Zielerfassung geändert</i>"""
        "Vectored Cannons (RZ-1)":
           display_name: """Schwenkbare Kanonen (RZ-1)"""
           text: """Du erhältst einen %SINGLETURRETARC%-Anzeiger. Behandle die Winkelbedingung deines %FRONTARC%-Primärangriffs, als wäre sie %SINGLETURRETARC%.%LINEBREAK%Ersetze deine Schiffsfähigkeit <strong>Schwenkbare Schubdüsen</strong> durch:%LINEBREAK%<strong>Schwenkbare Kanonen:</strong> Während der Systemphase darfst du eine rote&nbsp;%BOOST%- oder eine rote&nbsp;%ROTATEARC%-Aktion durchführen. Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren."""
        "Veteran Tail Gunner":
           display_name: """Kampferprobter Heckschütze"""
           text: """Nachdem du einen %FRONTARC%-Primärangriff durchgeführt hast, darfst du einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Veteran Turret Gunner":
           display_name: """Kampferprobter Geschützkanonier"""
           text: """Nachdem du einen Primärangriff durchgeführt hast, darfst du unter Verwendung eines %SINGLETURRETARC%, aus dem du in dieser Runde noch nicht angegriffen hast, einen Bonus-%SINGLETURRETARC%-Angriff durchführen."""
        "Veteran Wing Leader":
           display_name: """Erfahrener Schwarmführer"""
           text: """Du bist ein <strong>Schwarmführer</strong>. Deine Flügelmänner müssen 2-5 andere Schiffe deiner Schiffsart sein.%LINEBREAK%Solange du verteidigst, dürfen bis zu 2 deiner Flügelmänner im Angriffswinkel je 1&nbsp;%HIT%- oder %CRIT%-Schaden erleiden, um ein passendes Ergebnis zu negieren."""
        "Weapons Systems Officer":
           display_name: """Waffensystemoffizierin"""
           text: """Nachdem du einen Spezialangriff mit der %LOCK%-Voraussetzung durchgeführt hast, darfst du den Verteidiger als Ziel erfassen."""
        "Wolfpack":
           display_name: """Wolfsrudel"""
           text: """Nachdem ein befreundetes Schiff in Reichweite 0-3 verteidigt hat, falls der Angreifer in deinem Feuerwinkel ist, darf der Verteidiger 1 Anstrengungsmarker erhalten, um den Angreifer als Ziel zu erfassen."""
        "Xg-1 Assault Configuration":
           display_name: """Xg-1-Angriffskonfiguration"""
           text: """Solange du genau 1 Entwaffnet-Marker hast, kannst du trotzdem %CANNON%-Angriffe durchführen. Solange du einen %CANNON%-Angriff durchführst, solange du entwaffnet bist, wirf maximal 3 Angriffswürfel.%LINEBREAK%Füge einen %CANNON%-Slot hinzu."""
        "Yoda":
           display_name: """Yoda"""
           text: """Nachdem ein anderes befreundetes Schiff in Reichweite 0-2 ein violettes Manöver vollständig ausge­führt hat oder eine violette Aktion durchgeführt hat, darfst du 1 %FORCE% ausgeben. Falls du das tust, stellt jenes Schiff 1 %FORCE% wieder her."""
        "Zam Wesell":
           display_name: """Zam Wesell"""
           text: """<strong>Aufbau:</strong> Du verlierst 2&nbsp;%CHARGE%.%LINEBREAK%Während der Systemphase darfst du dir selbst 1&nbsp;deiner geheimen Zustände verdeckt zuordnen:%LINEBREAK%<strong>Du solltest mir danken</strong>%LINEBREAK%<strong>Wehe, du meinst es nicht ernst</strong>"""
        "Zealous Captain":
           display_name: """Fanatischer Captain"""
           text: """Während der Kampfphase, bei Initiative 4, darfst du 1 %ENERGY% ausgeben, um einen Bonus-<hardpoint>-Angriff durchzuführen."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """Solange du einen Angriff durchführst, falls du nicht gestresst bist, darfst du 1 Verteidigungswürfel wählen und 1 Stressmarker erhalten. Falls du das tust, muss der Verteidiger jenen Würfel neu werfen."""
        '"Chopper" (Crew)':
           display_name: """„Chopper“ (Crew)"""
           text: """Während des Schrittes „Aktion durchführen“ darfst du 1 Aktion durchführen, auch solange du gestresst bist. Nachdem du eine Aktion durchgeführt hast, solange du gestresst bist, erleide 1 %HIT%-Schaden, es sei denn, du legst 1 deiner Schadenskarten offen."""
        '"Chopper" (Astromech)':
           display_name: """„Chopper“ (Astromech)"""
           text: """<strong>Aktion:</strong> Gib 1 nicht-wiederkehrende %CHARGE% von einer anderen ausgerüsteten Aufwertung aus, um 1 Schild wiederherzustellen."""
        '"Fives"':
           display_name: """„Fives“"""
           text: """Nachdem du einen Angriff durchgeführt hast, der verfehlt hat, falls die Initiative des Verteidigers gleich deiner oder größer als deine Initiative ist, platziere 1 Ausweich- oder Fokusmarker auf dieser Karte.%LINEBREAK%Bevor du kämpfst, darfst du 1 Marker von dieser Karte entfernen, um 1 passenden Marker zu erhalten."""
        '"Genius"':
           display_name: """„Genie“"""
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, falls du in dieser Runde noch kein Gerät abgeworfen oder gestartet hast, darfst du 1 Bombe abwerfen."""
        '"Zeb" Orrelios':
           display_name: """„Zeb“ Orrelios"""
           text: """Solange du einen Angriff in Angriffsreichweite 0 durchführst, darfst du Fokusmarker für ihren normalen Effekt ausgeben, um Ergebnisse zu modifizieren. Solange du in Angriffsreichweite 0 verteidigst, darf der Angreifer Fokusmarker für ihren normalen Effekt ausgeben, um Ergebnisse zu modifizieren.%LINEBREAK%<i>Errata: Komplett überarbeitet</i>"""
        "Corsair Refit":
           display_name: """Kaperer-Aufrüstung"""
           text: """Füge&nbsp;%CANNON%-, %TURRET%-, und %MISSILE%-Slots hinzu.%LINEBREAK%<strong>Bonusangriff:</strong> Gib 1&nbsp;%ENERGY% aus, um einen %CANNON%-, %TURRET%-, oder %MISSILE%-Angriff durchzuführen."""
        "Dreadnought Hunter":
           display_name: """Dreadnought-Jäger"""
           text: """Solange du einen Angriff gegen ein riesiges Schiff durchführst, falls der Angriff dem Verteidiger eine offene Schadenskarte zuteilt und der Verteidiger in deinem %BULLSEYEARC%, ist, darfst du den Effekt <strong>Präzisionsschuss</strong>  anwenden, selbst wenn du nicht in dem angegebenen Winkel bist."""
        "Skystrike Academy Class":
           display_name: """Schüler der Skystrike-Akademie"""
           text: """Nachdem du eine Fassrolle geflogen bist oder Schub gegeben hast, ist jeder deiner Flügelmänner gezwungen, sich vom Schwarm zu trennen.%LINEBREAK%Solange du verteidigst, dürfen bis zu 5 deiner Flügelmänner im Angriffswinkel je 1&nbsp;%HIT%/%CRIT%-Schaden erleiden, um 1 passendes Ergebnis zu negieren."""
        "XX-23 S-Thread Tracers":
           display_name: """XX-23-S-Serie-Peilsender"""
           text: """<strong>Angriff (%FOCUS%, %CALCULATE%, oder %LOCK%):</strong> Gib 1&nbsp;%CHARGE% aus. Falls dieser Angriff trifft, darf jedes befreundete Schiff in Reichweite 1-3 des Verteidigers den Verteidiger als Ziel erfassen. Dann negiere alle Würfelergebnisse."""
        "Discord Missiles":
           display_name: """Diskordanzraketen"""
           text: """Zu Beginn der Kampfphase darfst du 1 Berechnungsmarker und 1 %CHARGE% ausgeben, um unter Verwendung der [3 %BANKLEFT%]-, [3 %STRAIGHT%] oder [3 %BANKRIGHT%]-Schablone 1 Buzz- Droidenschwarm zu starten.%LINEBREAK%Die %CHARGE% dieser Karte kann nicht wiederhergestellt werden."""
        "Chancellor Palpatine":
           display_name: "Kanzler Palpatine"
           text: "%LINEBREAK%<strong>Aufbau</strong>: Rüste diese Seite offen aus.%LINEBREAK%Nachdem du verteidigt hast, falls der Angreifer in Reichweite 0-2 ist, darfst du 1 %FORCE% ausgeben. Falls du das tust, erhält der Angreifer 1 Stressmarker.Während der Endphase darfst du diese Karte umdrehen. %LINEBREAK%Darth Sidious:%LINEBREAK%Nachdem du eine violette %COORDINATE% -Aktion durchgeführt hast, erhält das von dir koordinierte Schiff 1 Stressmarker. Dann erhält es 1 Fokusmarker oder es stellt 1 %FORCE% wieder her."
        "Slave I":
           display_name: "Slave I"
           text: "Nachdem du ein Wendemanöver (%TURNLEFT% oder %TURNRIGHT%) oder Drehmanöver (%BANKLEFT% oder %BANKRIGHT%) aufgedeckt hast, darfst du dein Rad auf das Manöver derselben Geschwindigkeit und Flugrichtung in der anderen Orientierung einstellen.%LINEBREAK%Füge den %TORPEDO%-Slot hinzu."
        "Slave I (Separatist)":
           display_name: "Slave I"
           text: "Solange du einen 1&nbsp; %FRONTARC%-Angriff durchführst, falls du im %FULLREARARC% des Verteidigers bist, darfst du 1&nbsp; %HIT%-Ergebnis in ein&nbsp; %CRIT%-Ergebnis zu ändern.%LINEBREAK%Füge den 1&nbsp; %GUNNER%-Slot hinzu."
        "Wartime Loadout":
           display_name: "Kriegsarsenal"
           text: "Füge den %TORPEDO% und den %MISSILE% Slot hinzu. Ersetze deine Schiffsfähigkeit durch:%LINEBREAK%<b>Verheerende Salve</b>: Solange du einen %TORPEDO% oder %MISSILE% -Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, können deine %CRIT% - Ergebniss nicht durch %EVADE% negiert werden."
        "Watchful Astromech":
           display_name: "Wachsamer Astromechdroide"
           text: "Nachdem du eine %RELOAD% oder %ROTATEARC% -Aktion durchgeführt hast, falls du im Feuerwinkel eines feindlichen Schiffes bist, darfst du eine rote %CALCULATE% -Aktion durchführen."
        "L4E-R5":
           display_name: "L4E-R5"
           text: "Zu Beginn der Kampfphase darfst du 1 Berechnungsmarker auf ein befreundetes Schiff in deinem Feuerwinkel transferieren."
        "Overtuned Modulators":
           display_name: "übersteuerte Modulatoren"
           text: "Während der Systemphase, falls du nicht gestresst bist, darfst du 1 %CHARGE% ausgeben, um 3 Berechnungsmarker zu erhalten.%LINEBREAK%Während der Endphase, falls deine %CHARGE% inaktiv ist, erhältst du für jeden grünen Marker , den du entfernst, 1 Anstrengungsmarker."
        "Sensor Scramblers":
           display_name: "Sensor Scrambler"
           text: "<strong>Aufbau:</strong> Du erhältst 1 Tarnungsmarker.%LINEBREAK%Solange du getarnt bist, können dich andere Schiffe nicht als Ziel erfassen.%LINEBREAK%Während der Endphase, falls du getarnt bist und ein feindliches Schiff in Reichweiter 0-3 ist, <b>musst</b> du dich enttarnen. Falls du das tust und jenes Enttarnen scheitert, verlierst du 1 Tarnungsmarker."
        "Enhanced Jamming Suite":
           display_name: "verbessertes Störsystem"
           text: "Solange du ein Störsignal sendest, kannst du dich selbst oder ein anderes befreundetes Schiff wählen.%LINEBREAK% Solange du verteidigst,falls der Angreifer keine grünen Marker hat oder ein gestörtes Schiff im Angriffswinkel ist, darfst du 1 zusätzlichen Verteidigungswürfel werfen."
        "Compassion":
           display_name: "Mitgefühl"
           text: "Bevor einem anderen befreundeten Schiff in Reichweite 0-2 eine offene <strong>Pilot</strong> oder <strong>Crew</strong>-Schadenskarte zugeteilt werden würde, darfst du 1 %FORCE% ausgeben. Falls du das tust, wird jene Schadenskarte stattdessen abgelegt und dir wird 1 verdeckte Schadenskarte zugeteilt. Falls du dann zwei oder mehr Schadenskarten hast, stelle 2 %FORCE% wieder her."
        "Malice":
           display_name: "Niedertracht"
           text: "Solange du einen Angriff durchführst, darfst du eine %FORCE% ausgeben, um 1 %FOCUS%- oder %HIT% Ergebnis in ein %CRIT% -Ergebnis zu ändern. Falls du das tust, stellst du 2 %FORCE% wieder her, nachdem du jenen Angriff durchgeführt hast, falls dem Verteidiger 1 oder mehrere offene <strong>Pilot</strong> oder <strong>Crew</strong> -Schadenskarten zugeteilt worden sind."
        "Shattering Shot":
           display_name: "zerschmetternder Schuss"
           text: "Solange du einen Angriff durchführst, falls der Angriff durch ein Hindernis versperrt ist oder der Verteidiger in Reichweite 0 eines Hindernisses ist, darfst du 1 %FORCE% ausgeben, um ein %FOCUS%- Ergebnis hinzufügen."
        "DT-798":
           display_name: "DT-798"
           text: "Zu Beginn der Kampfphase darfst du ein befreundetes Schiff in deinem Feuerwinkel wählen. Falls du das tust,erhält jenes Schiff 1 Anstrengungsmarker. %LINEBREAK% Solange du einen Angriff durchführst, darfst du für jedes Schiff im Angriffswinkel mit 1 oder mehreren roten oder orangen Nicht-Zielerfassungsmarkern bis zu 1 Würfel neu werfen."
        "Feedback Ping":
           display_name: "Rückmeldungsping"
           text: "Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, falls es in Reichweite 0-1 eines befreundeten Gerätes ist, darfst du jenes Schiff als Ziel erfassen, wobei du Reichweitenbeschränkungen ignoriest."
        "Electro-Chaff Missiles":
           display_name: "Elektrodüppel-Raketen"
           text: "Während der Systemphase darfst du 1 %CHARGE% von dieser Karte ausgeben, um unter Verwendung [3%BANKLEFT]- ,[3%BANKRIGHT%] oder [4%STRAIGHT] -Schalbone 1 Elektrodüppel-Wolke zu starten. DAnn platziere 1 Zeitzünder auf ihr.%LINEBREAK% Die %CHARGE% dieser Karte kann nicht wiederhergestellt werden."
        "Babu Frik":
           display_name: "Babu Frik"
           text: "Bevor du einem roten oder orangen Nicht-Zielerfassungsmarker erhalten würdest, darfst du 1 %CHARGE% ausgeben, um ihn stattdessen auf diese Karte zu platzieren. %LINEBREAK%Während der Systemphase, falls auf dieser Karte 1 oder mehrere Marker sind, <b>musst</b> du 1 %CHARGE% ausgeben. Falls du das nicht kannst, entferne jene Marker und erhalte passende Marker."
        "Ahsoka Tano (Crew)":
           display_name: "Ahsoka Tano"
           text: "Nachdem du ein Manöver vollständig ausgeführt hast,darfst du 1 %FORCE% ausgeben,um 1 befreundetes Schiff in deinem in Reichweite 1-2 zu wählen.Falls du das tust,darf jenes Schiff eine rote %FOCUS% Aktion durchführen,auch solange es gestresst ist."
        "Bo-Katan Kryze (Republic/Separatist)":
           display_name: "Bo-Katan Kryze"
           text: "Solange du einen Angriff durchführst,falls du in Reichweite 0-1 des Verteidigers bist,darfst du 1 Angriffswürfel neu werfen."
        "Bo-Katan Kryze (Rebel/Scum)":
           display_name: "Bo-Katan Kryze"
           text: "Nachdem du einen Angriff durchgeführt hast,falls der Verteidiger zerstört worden ist,darf jedes befreundete Schiff in Reichweiter 0-2 1 roten oder orangen Marker entfernen"
        "Fenn Rau":
           display_name: "Fenn Rau"
           text: "Bevor ein befreundetes Schiff in Reichweiter 0-2 kämpft,falls die Geschwindigkeit seines aufgedeckten Manövers 1 oder höher ist und ein feindliches Schiff in %FRONTARC% in Reichweite 1 ist, darf jenes befreundete Schiff 1 roten Nicht-Zielerfassungsmarker entfernen. "
        "Captain Hark":
           display_name: "Captain Hark"
           text: "Nachdem du ein rotes Manöver vollständig ausgeführt hast, falls du nicht fokussiert bist,darfst du 1 %CHARGE% ausgeben, um 1 Fokusmarker zu erhalten."
        "Gar Saxon":
           display_name: "Gar Saxon"
           text: "Solange ein befreundetes Schiff in Reichweite 1-3 mit einer Initiative von 4 oder niedriger einen Angriff gegen einen Verteidiger durchgeführt, den du als Ziel erfasst hast, darf der Angreifer 1 %FOCUS%-Ergebnis in ein %HIT%-Ergebnis ändern."
        "Gar Saxon (Gunner)":
           display_name: "Gar Saxon"
           text: "Solange du die %LOCK% -Aktion durchführst, kannst du nur ein Objekt in deinem %FRONTARC% oder %REARARC% wählen.%LINEBREAK% Solange du einen Primärangriff durchführst, falls der Verteidiger in deinem %FRONTARC% oder %REARARC% ist, darfst du 1 orangen oder roten Marker vom Verteidiger entfernen, um 1 zusätzlichen Würfel zu werfen, bis zu einem Maximum von 4."
        "Korkie Kryze":
           display_name: "Korkie Kryze"
           text: "Nachdem ein befreundetes Schiff in deinem %FULLFRONTARC% in Reichweite 1-2 zum Verteidiger geworden ist, darfst du 1 grünen Marker auf jenes Schiff transferieren. %LINEBREAK% Solange ein befreundetes Schiff in deinem %FULLFRONTARC% in Reichweite 1-2 verteidigt, falls du den Angriff versperrst,wirft der Verteidiger 1 zusätzlichen Verteidigungswürfel."
        "Obi-Wan Kenobi":
           display_name: "Obi-Wan Kenobi"
           text: "Nachdem ein befreundetes Schiff in Reichweiter 0-2 einen Fokus- oder Ausweichmarker ausgegeben hat, darfst du 1 %FORCE% ausgeben.%LINEBREAK%FAlls du das tust,erhält jenes Schiff 1 Fokusmarker."
        "Pre Vizsla":
           display_name: "Pre Vizsla"
           text: "Solange du eine %COORDINATE% -Aktion durchführst, kannst du ein befreundetes %CREW% -Remote anstatt eines anderen befreundeten Schiffes wählen. Jenes Remote führt keine Aktion durch, stattdessen positionierst du es unter Verwendung einer %LINEBREAK% [1 %TURNLEFT%]-, [1 %TURNRIGHT%]- oder [2 %STRAIGHT%]- Schablone neu."
        "Rook Kast":
           display_name: "Rook Kast"
           text: "Nachdem du eine rote Aktion durgeführt hast,darfst du 1 Anstrengungsmarker erhalten.%LINEBREAK% Solange du einen Angriff durchführst, fasll du angestrengt bist, darfst du 1 deiner Leerseiten oder %FOCUS% Ergebnisse in ein %HIT% -Ergebnis ändern"
        "Satine Kryze":
           display_name: "Satine Kryze"
           text: "Zu Beginn der Kampfphase darfst du 2 %CHARGE% ausgeben.%LINEBREAK%Falls du das tust, darf jedes befreundete Schiff entscheiden, 1 Erschöpfungs- und 1 Fokusmarker erhalten oder 1 Entwaffnet- und 1 Ausweichmarker zu erhalten."
        "Savage Opress":
           display_name: "Savage Opress"
           text: "Nachdem ein befreundetes Schiff in deinem %FRONTARC% in Reichweite 1-2 einen Stress- oder Anstrengungsmakrer erhalten hat, darfst du 1 %FORCE% ausgeben. Falls du das tust,erhält jenes Schiff 1 Fokusmarker."
        "Tal Merrik":
           display_name: "Tal Merrik"
           text: "<strong>Aufbau:</strong> Bevor die Streitkräfte platziert werden,wähle 1 feindliches Schiff und ordner ihm den Zustand %LINEBREAK% <strong>Falscher Freund</strong> zu.%LINEBREAK%<strong>Aktion:</strong> Falls der Zustzand %LINEBREAK%<strong>Falscher Freund</strong> keinem feindlichen Schiff zugeordnet ist, ordne ihn einem feindlichen Schiff in deinem %FRONTARC% in Reichweite 0-2 zu."
        "Tiber Saxon":
           display_name: "Tiber Saxon"
           text: "Nachdem du einen Angriff in Angriffsreichweite 1-2 durchgeführt hast, der getroffen hat, falls der Verteidiger keine offene Schadenskarten hat, darfst du 1 oder mehrere %CHARGE% ausgeben. Für jede %CHARGE%, die du ausgibst, erhält der Verteidiger 1 Anstrengungsmarker."
        "Tristan Wren":
           display_name: "Tristan Wren"
           text: "Solange ein befreundetes Schiff in Reichweite 0-3 einen %RANGEBONUS%- Angriff durchführt, darfst du 1 %CHARGE% ausgeben.%LINEBREAK% Falss du das tust, darf der Angreifer 1 %HIT% -Ergebnis in ein %CRIT% -Ergebnis ändern."
        "Ursa Wren (Gunner)":
           display_name: "Ursa Wren"
           text: "Nachdem du ein feindliches Schiff jenseits von Reichweite 2 als Ziel erfasst hast, falls keine befreundeten Schiffe in Reichweiter 0-1 des erfassten Schiffes sind, erhältst du 1 Berechnungsmarker."
        "Sabine Wren (Command)":
           display_name: "Sabine Wren "
           text: "<strong>Aufbau:</strong>Bevor die Streitkräfte platziert werden, ordne dir selbst den Zustand <strong>Das Dunkelschwert</strong>zu.%LINEBREAK% Solange du eine %COORDINATE% -Aktion durchführst, darfst du 1 zusätzliches befreundetes Schiff koordinieren."
        "Prime Minister Almec":
           display_name: "Premierminister Almec"
           text: "<strong>Aufbau:</strong> Rüste diese Seite offen aus.%LINEBREAK% Nachdem ein befreundetes Schiff in Reichweite 0-2 ein weißes Manöver aufgedeckt hat, falls es keine grünen Marker hat,darf es 1 Stressmarker erhalten, um 1 Berechnungsmarker zu erhalten.%LINEBREAK% Falls du während der Endphase 2 oder mehr Stressmarker hast, drehe diese Karte um. %LINEBREAK%(Rückseite)Almec,Mauls Marionette%LINEBREAK% Nachdem ein befreundetes Schiff in Reichweite 0-2 ein rotes Manöver vollständig ausgeführt hat,darf jenes Schiff ein %CALCULATE% oder %FOCUS% -Aktion aus seiner Aktionsleiste durchführen,auch solange es gestresst ist."
        "Swivel Wing":
           display_name: "bewegliche Flügel"
           text: "<strong>Oben</strong> Solange du verteidigst ,wirfst du 1 Verteidigungswürfel weniger.%LINEBREAK% Nachdem du ein nicht-stationäres MAnöver vollständig ausgeführt hast,darfst du diese Karte umdrehen. %LINEBREAK% <strong>Unten</strong> Nachdem du ein [0 %STOP%] -Manöver ausgeführt hast, darfst du dein Schiff um 90° oder 180° drehen. Falls du das tust, <b>musst</b> du diese Karte drehen."
        "Razor Crest":
           display_name: "Razor Crest"
           text: "<strong>Aufbau:</strong> Platziere 1 nicht-limitierte %ILLICIT% -Aufwertung verdeckt unter dieser Karte.%LINEBREAK% Während der Systemphase darfst du jene %ILLICIT% -Aufwertung aufdecken und sie ausrüsten,als wäre sie beim Aufbau ausgerüstet worden (ohne ihre Punktekosten zu bezahlen)"
        "The Mandalorian":
           display_name: "Der Mandalorianer"
           text: "Während der Endphase, falls du diese Runde nicht verteidigt hast, stellst du 1 nicht-wiederkehrende %FORCE% wieder her, falls möglich."
        "The Child":
           display_name: "Das Kind"
           text: "<strong>Aufbau:</strong> Nachdem die Streitkräfte platziert worden sind,wähle einen Gegner,der 2 seiner Schiffe den Zustand <strong>Gnadenlose Verfolgung</strong> zuordnet.%LINEBREAK% Deine %FORCE% verlieren das Symbol für wiederkehrende Ladungen.Nachdem du verteidigt hast, falls du während jenes Angriffs Schaden erlitten hast, stelle 1 %FORCE% wieder her."
        "IG-11":
           display_name: "IG 11"
           text: "<strong>Aufbau:</strong> Rüste diese Seite offen aus. %LINEBREAK%Bevor dir einen offene Schadenskarte zugeteilt werden würde,<b>musst</b> du stattdessen 1 Zeitzünder auf diese Karte platzieren und 1 Berechnungsmarker erhalten.Falls dann 2 Zeitzünder auf dieser Karte liegen,drehe Sie um. %LINEBREAK% <strong>(Rückseite)IG-11 (Anti-Festnahme-Protokoll)</strong>%LINEBREAK%Entferne während der Endphase 1 Zeitzünder von dieser Karte. Falls dann keine Zeitzünder auf ihr liegen, wirst du zerstört und jedes andere Schiff in Reichweite 0-1 %LINEBREAK% erleidet 1 %CRIT% -Schaden. %LINEBREAK% <strong>Aktion:</strong> Platziere 1 Zeitzünder auf dieser Karte."
        "Greef Karga":
           display_name: "Greef Karga"
           text: "Du kannst verbündete Schiffe koordnieren ,als wären sie befreundete Schiffe.%LINEBREAK% Nachdem du ein Schiff koordiniert hast, darf es ein Objekt als Ziel erfassen,das du als Ziel erfasst hast."
        "Kuiil":
           display_name: "Kuiil"
           text: "<strong>Aktion:</strong> Wirf ein 1 Angriffswürfel für jede Schadenskarte, die du hast.Repariere für jedes %HIT% -Ergebis 1 offene <b>Schiff</b> -Schadenskarte. Repariere dann für jedes %CRIT% -Ergebnis 1 verdeckte Schadenskarte.Entferne für jedes Leerseiten-Ergebnis 1 orangen Marker.%LINEBREAK%Dann erhältst du für jedes %FOCUS% -Ergebnis 1 Fokusmarker."
        "Peli Motto":
           display_name: "Peli Motto"
           text: "Während der Systemphase darfst du eine Aktion auf 1 deiner Schadenskarten durchführen ,auch solange du gestresst bist.%LINEBREAK% Nachdem du eine offene <b>Schiff</b> -Schadenskarte repariert hast, darfst du 1 Angriffswürfel werfen. Bei einem %HIT% -Ergebnis reparierst du eine weitere offene <b>Schiff</b> -Schadenskarte. Bei einem %CRIT% -Ergebnis legst du 1 Schadenskarte offen."
        "Migs Mayfeld":
           display_name: "Migs Mayfeld"
           text: "Nachdem du einen %FRONTARC% -Angriff durchgeführt hast, darfst du einen %REARARC% oder %ROTATEARC% -Angriff als Bonusangriff gegen ein anderes Ziel mit 1 oder mehrereren roten oder orangen Markern durchführen."
        "Vengeful (BoY)":
           display_name: "Rachsüchtig (BoY)"
           text: "Nachdem ein befreundetes Schiff in Reichweite 0-3 zerstört worden ist,falls jenes Schiff limitiert ist, darfst du 1 deiner roten Marker entfernen oder 1 wiederkehrende LAdung auf deiner Schiffskarte wiederherstellen."
        "Chewbacca (BoY)":
           display_name: "Chewbacca (BoY)"
           text: "Nachdem du eine %EVADE% -Aktion durchgeführt hast, darfst du 1 Fokusmarker erhalten."
        "L3-37's Programming (BoY)":
           display_name: "Programmierung von L3-37 (BoY)"
           text: "Falls du keine Schilde hast, verringere die Schwierigkeit deiner Drehmanöver [%TURNLEFT% und %TURNRIGHT%]."
        "Attack Speed (BoY)":
           display_name: "Angriffsgeschwindigkeit (BoY)"
           text: "Nachdem du eine [3 %STRAIGHT%] - oder [4 %STRAIGHT%]- Manöver vollständig ausgeführt hast, darfst du unter Verwendung der [1 %STRAIGHT%] -Schablone Schub geben."
        "R2-D2 (BoY)":
           display_name: "R2-D2 (BoY)"
           text: "Nachdem du dein Rad aufgedeckt hast, darfst du 1 %CHARGE% ausgeben und 1 Entwaffnet-Marker erhalten, um 1 Schild wiederherzustellen."
        "R2-F2 (BoY)":
           display_name: "R2-F2 (BoY)"
           text: "Nachdem du dein Rad aufgedeckt hast, darfst du 1 %CHARGE% ausgeben und 1 Entwaffnet-Marker erhalten, um 1 Schild wiederherzustellen."
        "Precise Astromech (BoY)":
           display_name: "Präziser Astromech (BoY)"
           text: "Nachdem du eine Aktion durchgeführt hast, darfst du 1 %CHARGE% ausgeben, um eine rote %LOCK% -Aktion durchzuführen."
        "Dorsal Turret (BoY)":
           display_name: "Dorsaler Geschützturm"
           text: "<b>Angriff</b>"
        "Commander Malarus":
           display_name: "Commander Malarus"
           text: "<strong>Aufbau:</strong>Rüste diese Seite offen aus.%LINEBREAK%Solange ein befreundetes,nicht-limitiertes Schiff in Reichweite 0-1 einen Primärangriff durchgeführt, darf jenes Schiff 1 Leerseiten-Ergebnis neu werfen.Falls es das tut under Angriff verfehlt, <b>musst</b> du diese Karte umdrehen.%LINEBREAK%<strong>Vollendet (Rückseite): </strong>Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, <b>musst</b> du alle %FOCUS%-Ergebnisse in %HIT%-Ergebnisse ändern und 1 Stressmarker erhalten. Dann, falls du 2 oder mehr Stressmarker hast, erleidest du 1&nbsp;%HIT%-Schaden."
        "R5-D8 (BoY)":
           display_name: "R5-D8 (BoY)"
           text: "<b>Aktion:</b> Gib 1 %CHARGE% aus, um 1 verdeckte Schadenskarte zu reparieren. %LINEBREAK%<b>Aktion:</b> Repariere 1 offene Schiffs-Schadenskarte."
        "Unstable Sublight Engines (BoY)":
           display_name: "instabiler Sublichtantrieb"
           text: "Nachdem du zerstört worden bist, musst du [ 1 %STRAIGHT%][ -Manöver ausführen.DAnn erleidet jedes andere Schiff in Reichweite 0-1 %HIT%-Schaden. "
        "Targeting Astromech (BoY)":
           display_name: "Zielender Astromech (BoY)"
           text: "Nachdem du eine %LOCK% -Aktion durchgeführt hast, darfst du eine rote %RELOAD% -Aktion durchführen."
        "General Grievous (Command)":
           display_name: "General Grievous"
           text: "Während der Kampfphase, bei Initiative 4, darfst du 1 %ENERGY% ausgeben, um einen Bonus %HARDPOINT% Angriff durchzuführen.%LINEBREAK%%LINEBREAK%Du kannst Angriffe gegen befreundete Schiffe durchführen.%LINEBREAK%%LINEBREAK%Nachdem du einen Angriffdurchgeführt hast, falls der Verteidiger zerstört worden ist, darf jedes befreundete Schiff in Reichweiter 0-2 von ihm eine %CALCULATE%-Aktion durchführen."
        "Burnout Thrusters":
           display_name: "extreme Schubdüsen"
           text: "Nachdem du eine %SLAM% -Aktion durchführt hast, verlierst du 1 %%CHARGE%. Dann darfst du 1 Erschöpfungsmarker erhalten, um 1 Entwaffnetmarker zu entferne.%LINEBREAK% Falls deine %CHARGE% inaktiv ist, kannst du eine %SLAM%- Aktion nicht durchführen."
        "Drop-Seat Bay":
           display_name: "Sitzaufhängung"
           text: "FAlls du ein %CREW%-Remote unter Verwendung einer Gerade-Schablone [%STRAIGHT%] abwerfen würdest, darfst du stattdessen eine Drehschablone {%BANKLEFT% oder %BANKRIGHT%] derselben Geschwindigkeit verwenden. Du kannst die Mittellinie jender Schalbone bündig an der Markierung an der linken oder rechten Seite deines Schiffes platzieren, stt ander den hinteren Stoppern. "
        "Combat Boarding Tube":
           display_name: "Gefechts-Ausstiegsluke"
           text: "Falls du während der Systemphase ein %CREW% - Remote abwerfen würdest und ein feindliches mittleres ,großes oder riesiges Schiff in Reichweite 0-1 in deinem %REARARC% ist, darfst du jenes Gerät stattdessen so in deinem %REARARC% in Reichweite 0-1 auf der Spielfläche platzieren, dass es in Reichweite 0 jenes Schiffes ist. Dann erhält jenes feindliche Schiff 1 Erschöpfungs-,Anstrengungs- oder Stressmarker deiner Wahl."
        "Proton Cannons":
           display_name: "Protonengeschütz"
           text: "<b>Angriff:</b> Gib 2 %CHARGE% aus.Ändere 1 %FOCUS% -oder %HIT% -Ergenis in ein %CRIT%- Ergebnis."
        "Homing Torpedoes":
           display_name: "Lenktorpedos"
           text: '<strong>Angriff [%LOCK%]: </strong>Gib 1 %CHARGE% aus. Nachdem du deinen Verteidiger deklariert hast, darf der Verteidiger entscheiden, 1 %CRIT% Schaden zu erleiden. Falls er das tut, überspringst du die Schritte „Angriffswürfel“ und „Verteidigungswürfel“ und der Angriff wird behandelt, als hätte er getroffen.'
        "Tracking Fob":
           display_name: "Peilsender"
           text: "<strong>Aufbau:</strong> Nachdem die Streitkräfte platziert worden sind, wähle einen Gegner .der 1 seiner Schiffe den Zustand <b<ALS BEUTE MARKIERT</b> zugeordnet. Falls möglich, muss er den Zustand einem limitierten Schiff zuordnen.%LINEBREAK% Du ignorierst Reichweitenbeschränkungen, solange du das Schiff mit dem Zustand <b>ALS BEUTE MARKIERT</b> als Ziel erfasst."
        "Notorious":
           display_name: "Berüchtigt"
           text: "Nachdem du verteidigt hast, falls der Angreifer in deinem Feuerwinkel ist, darfst du 1 %CHARGE ausgeben.Falls du das tust,erhält der Angreifer 1Anstrengungsmarker.%LINEBREAK% Solange du einen Angriff durchführst, falls der Verteidiger angestrengt ist, darfst du 1 Leerseiten-Ergebnis neu werfen."
        "Enduring":
           display_name: "Ausdauernd"
           text: "Solange du verteidigst, falls du nicht im %BULLSEYEARC% des Angreifers bist, werden %CRIT% -Ergebnisse vor %HIT%-Ergebnisse negiert.%LINEBREAK%Nachdem du %CRIT%-Schaden erlitten hast, darfst du eine %CALCULATE% oder %FOCUS%-Aktion aus deiner Aktionsleiste durchführen, auch solange du gestresst bist, wobei du jene Aktion behandelst, als wäre sie rot."
        "Beskar Reinforced Plating":
           display_name: "Verstärkte Beskar-Panzerung"
           text: "Solange du verteidigst, falls der Angreifer in deinem %FRONTARC% ist, bevor dir eine offene Schadenskarte zuggeteilt werden würde, darfst du entweder 1 %CHARGE% ausgeben, um jene Karte stattdessen verdeckt zugeteilt zu bekommen, oder 2 %CHARGE% ausgeben , um sie stattdessen abzulegen."
        "Blazer Bomb":
           display_name: "Brandbombe"
           text: "<b>Bombe</b>%LINEBREAK%Während der Systemphase darfst du 1 %CHARGE% ausgeben, um unter Verwendung der [1 %STRAIGHT%] -Schablone eine Brandbombe abzuwerfen."
        "Mandalorian Optics":
           display_name: "Mandalorianische Optik"
           text: "Während der Systemphase darfst du 1 %CHARGE% ausgeben, um ein Objekt in deinem %FRONTARC% als Ziel zu erfassen.%LINEBREAK% Solange du einen Primärangriff durchführst, fall du den Verteidiger als Ziel erfasst hast, ignorierst du HIndernisse jenseits von Reichweite 0, die den Angrfiff versperren."
        "Clan Training":
           display_name: "Clan-Training"
           text: "Bevor du kämpfst, falls du nicht fokussiert bist und ein feindliches Schiff in deinem %FRONTARC% in Reichweite 1 ist, darfst du 1 %CHARGE% ausgeben, um eine rote %FOCUS% -Aktion durchzuführen.%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, falls der Verteidiger zerstört worden ist, stellst du 1 %CHARGE% wieder her."
        "Gauntlet":
           display_name: "Gauntlet"
           text: "Während der Systemphase darfst du 1 %CHARGE% ausgeben, um 1 offene <b> Schiff</b> -Schadenskarte zu reparieren.%LINEBREAK% Füge ein %CREW% -Slot hinzu."
        "Nightbrother":
           display_name: "Nachtbruder"
           text: "Nachdem du ein nicht-blaues Manöver aufgedeckt hast, falls du gestresst bist, darfst du 2 %CHARGE% ausgeben, um 1 Fokus- oder Ausweichmarker zu erhalten.%LINEBREAK% Füge den %CREW% Slot hinzu."
        "Clan Wren Commandos":
           display_name: "Clan-Wren-Kommandos"
           text: "Nachdem dich ein feindliches Schiff überschnitten hat, erhält es 1 Anstrengungsmarker.%LINEBREAK%%LINEBREAK%<strong>Aktivierungsphase:</strong> Zu Beginn dieser Phase darfst du dich unter Verwendung [1%TURNLEFT%]-,[2 %STRAIGHT%] - oder [1%TURNRIGHT%] -Schablone vorwärts neu positionieren.%LINEBREAK%<strong>Kampfphase:</strong> Du kannst nicht angreifen, falls feindliche Schiffe in Reichweite 0 sind. Um einen Angriff durchzuführen, musst du 1%CHARGE% ausgeben. Solange du einen Angriff durchführst, darfst du 1 %FOCUS% -Ergebnis in ein %HIT% -Ergebnis ändern."
        "Death Watch Commandos":
           display_name: "Death-Watch-Kommandos"
           text: "Nachdem dich ein feindliches Schiff überschnitten hat, erhält es 1 Anstrengungsmarker.%LINEBREAK%%LINEBREAK%<strong>Aktivierungsphase:</strong> Zu Beginn dieser Phase darfst du dich unter Verwendung [1%TURNLEFT%]-,[2 %STRAIGHT%] - oder [1%TURNRIGHT%] -Schablone vorwärts neu positionieren.%LINEBREAK%<strong>Kampfphase:</strong> Du kannst nicht angreifen, falls feindliche Schiffe in Reichweite 0 sind. Um einen Angriff durchzuführen, musst du 1%CHARGE% ausgeben. Solange du einen Angriff durchführst, darfst du 1 %FOCUS% -Ergebnis in ein %HIT% -Ergebnis ändern."
        "Nite Owl Commandos":
           display_name: "Nacheulen-Kommandos"
           text: "Nachdem dich ein feindliches Schiff überschnitten hat, erhält es 1 Anstrengungsmarker.%LINEBREAK%%LINEBREAK%<strong>Aktivierungsphase:</strong> Zu Beginn dieser Phase darfst du dich unter Verwendung [1%TURNLEFT%]-,[2 %STRAIGHT%] - oder [1%TURNRIGHT%] -Schablone vorwärts neu positionieren.%LINEBREAK%<strong>Kampfphase:</strong> Du kannst nicht angreifen, falls feindliche Schiffe in Reichweite 0 sind. Um einen Angriff durchzuführen, musst du 1%CHARGE% ausgeben. Solange du einen Angriff durchführst, darfst du 1 %FOCUS% -Ergebnis in ein %HIT% -Ergebnis ändern."
        "Imperial Super Commandos":
           display_name: "Imperiale-Superkommandos"
           text: "Nachdem dich ein feindliches Schiff überschnitten hat, erhält es 1 Anstrengungsmarker.%LINEBREAK%%LINEBREAK%<strong>Aktivierungsphase:</strong> Zu Beginn dieser Phase darfst du dich unter Verwendung [1%TURNLEFT%]-,[2 %STRAIGHT%] - oder [1%TURNRIGHT%] -Schablone vorwärts neu positionieren.%LINEBREAK%<strong>Kampfphase:</strong> Du kannst nicht angreifen, falls feindliche Schiffe in Reichweite 0 sind. Um einen Angriff durchzuführen, musst du 1%CHARGE% ausgeben. Solange du einen Angriff durchführst, darfst du 1 %FOCUS% -Ergebnis in ein %HIT% -Ergebnis ändern."
        "R5-K6 (BoY)":
           display_name: "R5-K6 (BoY)"
           text: "<b>Aktion:</b> Gib 1 %CHARGE% aus, um 1 verdeckte Schadenskarte zu reparieren.%LINEBREAK%<b>Aktion:</b> Repariere eine offene <b> Schiff</b> -Schadenskarte "
        "Proud Tradition":
           display_name: "Stolze Tradition"
           text: "<strong>Aufbau:</strong> Rüste diese Seite offen aus.%LINEBREAK%Solange du 2 oder weniger Stressmarker hast, darfst du %FOCUS% -Aktionen durchführen, auch solange du gestresst bist.%LINEBREAK%Nachdem du einen Angriff durchgeführt hast, falls du gestresst bist, darf der Verteidiger 1 Fokusmarker ausgeben oder 1 %CRIT% -Schaden erleiden, um diese Karte umzudrehen.%LINEBREAK%Falsche Tradition (Rückseite):%LINEBREAK%Behandle deine %FOCUS%-Aktionen, als wären sie rot."
        "Selfless (BoY)":
           display_name: "Selbstlos"
           text: 'Solange ein anderes befreundetes Schiff in Reichweite 0-1 verteidigt, vor dem Schritt "Ergebnisse neutraliesieren", falls du im Angriffswinkel bist, darfst du 1 %CRIT%-Schaden erleiden, um 1%CRIT% Ergebnis zu negieren.'
        "B6 Blade Wing Prototype (Epic)":
           display_name: "Blatt-Flügler-Prototyp B6"
           text: "Füge den %GUNNER%-Slot hinzu.%LINEBREAK%<b>Angriff [%LOCK%]:</b> Erhalte 1 Ionenmarker, um diesen Angriff durchzuführen. Falls dieser Angriff trifft, erleidet der Verteidiger 1 zusätzlichen %HIT% / %CRIT% -Schaden für jedes passende nicht-negierte Ergebnis nach dem ersten."
        "Hotshot Tail Blaster":
           display_name: "Erstklassiker Heckblaster"
           text: "Dieser Angriff kann in Reichweite 0 durchgeführt werden. %LINEBREAK%<b>Angriff:</b> Gib 1 %CHARGE% aus."
        "Xanadu Blood":
           display_name: "Xanadu Blut"
           text: "Füge den %CREW%- und den %DEVICE%- Slot hinzu."
        "Fanatic (BoY)":
           display_name: "Besessen"
           text: "Solange du einen Primärangriff durchführst, falls du beschädigt bist, darfst du 1 %FOCUS% - in ein %HIT% - Ergebnis ändern."
        "R2-A3 (BoY)":
           display_name: "R2-A3"
           text: "Nachdem du dein Rad aufgedeckt hast,darfst du 1 %CHARGE% ausgeben und 1 Entwaffnet-Marker erhalten, um 1 Schild wiederherzustellen."
        "Sensor Jammer (BoY)":
           display_name: "Störsender"
           text: "Solange du verteidigst, falls auf dem Angreifer eine befreundete Zielerfassung ist, darfst du 1 %HIT% -Ergebnis des Angreifers in ein %FOCUS% - Ergebnis ändern."
        "Ancillary Ion Weapons (SoC)":
           display_name: "Zusatz-Ionenwaffen (SoC)"
           text: "Solange du einen %FRONTARC% - Primärangriff durchführst, bevor du einen Angriffswürfel wirfst, darfst du 2 %CHARGE% ausgeben. Falls du das tust, fügen deine %CRIT% - Ergebnisse Ionenmarker statt Schaden zu."
        "Roiling Anger (SoC)":
           display_name: "Kochende Wut (SoC)"
           text: "FAlls du zu Beginn der Kampfphase im %FRONTARC% eines feindlichen Schiffes bist, darfst du 1 Anstrengungsmarker erhalten, um 1 %FORCE% wiederherzustellen."
        "Contingency Protocol (SoC)":
           display_name: "Notfallprotokoll (SoC)"
           text: "Nachdem diese Schiff zerstört worden ist, darf ein anderes befreundetes Schiff in Reichweite 0-3 mit der Aufwertung <strong>Notfallprotokoll</strong> eine Aktion durchführen, auch solange es gestresst ist."
        "Evasion Sequence 7 (SoC)":
           display_name: "Ausweichmanöver 7 (SoC)"
           text: "Solange du eine rote %EVADE% -Aktion durchführst, falls du in Reichweite 1 ein Hindernis oder Szenario-Merkmal ist,behandle die Aktion stattdessen , als wäre sie weiß."
        "Strut-Lock Override (SoC)":
           display_name: "Überbrückte Krallenverriegelung (SoC)"
           text: "Zu Beginn deiner Aktivierung darfst du 1 %CHARGE% ausgeben. Falls du das tust, ignorierst du in dieser Runde Hindernisse, solange du dich durch sie hindurchbewegst."
        "R4-P17 (SoC)":
           display_name: "R4-P17 (SoC)"
           text: "Sobald dir eine Schadenskarte zugeteilt werden würde, falls du nicht verteidigst, darfst du 1 %CHARGE% ausgeben und 1 Anstrengungsmarker erhalten, um jene Schadenskarte stattdessen abzulegen."
        "Wolfpack (SoC)":
           display_name: "Wolfsrudel (SoC)"
           text: "Solange du einen Angriff durchführst, darfst du die Zielerfassung eines befreundeten <strong>Plo-Koon</strong>-Schiffes oder eines Schiffes mit der Schiffsfähigkeit <strong>Dafür Geboren</strong> auf dem Verteidiger ausgeben, um beliebig viele Angriffswürfel neu zu werfen."
        "R5-K6 (BoY)":
           display_name: "R5-K6 (BoY)"
           text: "<b>Aktion:</b> Gib 1 %CHARGE% aus, um 1 verdeckte Schadenskarte zu reparieren.<LINEBREAK><b>Aktion:</b> Repariere 1 offene <strong> Schiff- </strong> Schadenskarte."

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
           text: '''Solange du einen %FRONTARC%-Primärangriff gegen ein Schiff durchführst, das von einem befreundeten Schiff mit der Aufwertung <strong>Direktor Krennic</strong> als Ziel erfasst ist, darfst du 1 %HIT%-, %CRIT%- oder %FOCUS%-Ergebnis ausgeben. Falls du das tust, wähle 1 der folgenden Optionen: Der Verteidiger verliert 1 Schild oder der Verteidiger dreht 1 seiner verdeckten Schadenskarten um.  %LINEBREAK% <i>Errata: „oder“ statt „/“ (1. Edition)</i>'''
        'Proton Bomb':
           display_name: """Protonenbombe"""
           text: '''<strong>Typ:</strong> Gerät, Bombe %LINEBREAK% Am Ende der Aktivierungsphase detoniert dieses Gerät. Sobald dieses Gerät detoniert, erleidet jedes Schiff und Remote in Reichweite 0–1 1 %CRIT%-Schaden.'''
        'Seismic Charge':
           display_name: """Seismische Bombe"""
           text: '''<strong>Typ:</strong> Gerät, Bombe %LINEBREAK% Am Ende der Aktivierungsphase detoniert dieses Gerät. Sobald dieses Gerät detoniert, wähle 1 Hindernis in Reichweite 0–1. Jedes Schiff und Remote in Reichweite 0–1 zu jenem Hindernis erleidet 1 %HIT%-Schaden. Dann entferne jenes Hindernis.'''
        'Bomblet':
           display_name: """Streubombe"""
           text: '''<strong>Typ:</strong> Gerät, Bombe %LINEBREAK% Am Ende der Aktivierungsphase detoniert dieses Gerät. Sobald dieses Gerät detoniert, wirft jedes Schiff und Remote in Reichweite 0–1 2 Angriffswürfel. Jedes Schiff und Remote erleidet 1 %HIT%-Schaden für jedes %HIT%/%CRIT%-Ergebnis.'''
        'Concussion Bomb':
           display_name: """Erschütterungsbombe"""
           text: '''<strong>Typ:</strong> Gerät, Bombe %LINEBREAK% Am Ende der Aktivierungsphase detoniert dieses Gerät. Sobald dieses Gerät detoniert, wird jedem Schiff und Remote in Reichweite 0–1 1 verdeckte Schadenskarte zugeteilt. Dann <strong>muss</strong> jedes Schiff in Reichweite 0–1 1 Schadenskarte offenlegen, es sei denn, es erhält 1 Anstrengungsmarker.'''
        'Thermal Detonator':
           display_name: """Thermaldetonator"""
           text: '''<strong>Typ:</strong> Gerät, Bombe %LINEBREAK% Am Ende der Aktivierungsphase detoniert dieses Gerät. Sobald dieses Gerät detoniert, wirft jedes Schiff und Remote in Reichweite 0–1 1 Angriffswürfel. Jedes Schiff erhält 1 Anstrengungsmarker für jedes %FOCUS%-Ergebnis und jedes Schiff und Remote erleidet 1 %HIT%/%CRIT%-Schaden für jedes passende Ergebnis.'''
        '''Blazer Bomb''':
           display_name: """Brandbombe"""
           text: '''<strong>Typ:</strong> Gerät, Bombe %LINEBREAK% Am Ende der Aktivierungsphase detoniert dieses Gerät. %LINEBREAK% Sobald dieses Gerät detoniert, wirft jedes Schiff und jedes Remote in Reichweite 0–1 1 Angriffswürfel. Jedes Schiff oder Remote erleidet 1 %HIT%-Schaden für jedes %HIT%/%CRIT%-Ergebnis. %LINEBREAK% Nachdem dieses Gerät detoniert ist, wird ein Brand so platziert, dass seine Stopper bündig an der Aussparung des Geräts anliegen. %LINEBREAK% Ein Brand ist ein Hindernis. Nachdem dieses Hindernis platziert worden ist, wird ein Zeitzünder darauf platziert.%LINEBREAK% Während der Endphase wird jeder Brand ohne Zeitzünder entfernt, dann wird 1 Zeitzünder von jedem Brand entfernt..'''
        'Loose Cargo':
           display_name: """Freie Fracht"""
           text: '''<strong>Typ:</strong> Hindernis, platziert %LINEBREAK% Freie Fracht ist eine Trümmerwolke..'''
        'Spare Parts':
           display_name: "Ersatzteile"
           text: '''<strong>Typ:</strong> Hindernis, platziert %LINEBREAK% Ersatzteile sind eine Trümmerwolke. %LINEBREAK% Sobald dieses Objekt abgeworfen wird, wird es zwischen den hinteren Stopper des Schiffes angelegt.'''
        'Conner Net':
           display_name: """Connernetz"""
           text: '''<strong>Typ:</strong> Gerät, Mine %LINEBREAK% Nachdem ein Schiff sich durch dieses Gerät hindurchbewegt oder sich mit ihm überschnitten hat, detoniert es. Sobald dieses Gerät detoniert, erleidet das Schiff 1 %HIT%-Schaden und erhält 3 Ionenmarker.'''
        'Electro-Proton Bomb':
           display_name: "Elektro-Protonen-Bombe"
           text: '''<strong>Typ:</strong> Gerät, Bombe %LINEBREAK% Am Ende der Aktivierungsphase detoniert dieses Gerät. Sobald dieses Gerät detoniert, wirft jedes Schiff und jedes Remote in Reichweite 0–2 4 Angriffswürfel. Jedes Schiff verliert 1 Schild für jedes Leerseiten-Ergebnis, erhält 1 Ionenmarker für jedes %FOCUS%/%HIT%-Ergebnis und erhält 1 Entwaffnet-Marker für jedes %CRIT%-Ergebnis. Jedes Remote in Reichweite 0–1 verliert 1 Schild für jedes Leerseiten-Ergebnis und erleidet 1 Schaden für jedes %FOCUS%/%HIT%-Ergebnis.'''
        'Ion Bomb':
           display_name: "Ionenbombe"
           text: '''<strong>Typ:</strong> Gerät, Bombe %LINEBREAK% Am Ende der Aktivierungsphase detoniert dieses Gerät. Sobald dieses Gerät detoniert, erhält jedes Schiff in Reichweite 0–1 3 Ionenmarker und jedes Remote in Reichweite 0–1 erleidet 1 %HIT%-Schaden.'''
        'Proximity Mine':
           display_name: """Annäherungsmine"""
           text: '''<strong>Typ:</strong> Gerät, Mine %LINEBREAK% Nachdem sich ein Schiff durch dieses Gerät hindurchbewegt oder mit ihm überschnitten hat, detoniert es. Sobald dieses Gerät detoniert, wirft jenes Schiff 2 Angriffswürfel. Jenes Schiff erleidet dann 1 %HIT%-Schaden plus 1 %HIT%/%CRIT%-Schaden für jedes passende Ergebnis.%LINEBREAK%<i>Errata: Zusätzlicher automatischer Schaden</i>'''
        'Cluster Mine':
           display_name: """Clustermine"""
           text: '''<strong>Typ:</strong> Gerät, Mine %LINEBREAK%Ein Clusterminenset besteht aus 3 einzelnen Clusterminen-Geräten. %LINEBREAK% Sobald ein Clusterminenset platziert wird, platziert man die mittlere Clustermine wie gewohnt, dann werden zwei zusätzliche Clusterminen in den Aussparungen platziert.%LINEBREAK% Nachdem sich ein Schiff durch eine einzelne Clustermine hindurchbewegt oder sie überschnitten hat, detoniert sie. Andere Clusterminen des Sets, die nicht von der Bewegung oder Überschneidung betroffen waren, detonieren nicht. %LINEBREAK% Sobald eines dieser Geräte detoniert, wirft jenes Schiff 2 Angriffswürfel. Jenes Schiff erleidet dann 1 %HIT%/%CRIT%-Schaden für jedes passende Ergebnis.'''
        'Rattled':
           display_name: 'Aus der Fassung'
           text: 'Nachdem eine Bombe oder Mine in Reichweite 0-1 detoniert ist, erleide 1 %CRIT% Schaden. Dann entferne diese Karte. %LINEBREAK% <strong>Aktion:</strong> Falls keine Bomben oder Minen in Reichweite 0-1 sind, entferne diese Karte.'
        '''I'll Show You the Dark Side''': 
           display_name: 'Ich zeige dir die dunkle Seite'
           text: 'Sobald diese Karte zugeordnet wird, falls keine offene Schadenskarte darauf liegt, sucht der Spieler, der sie zugeordnet hat, im Schadensstapel nach 1 <strong>Pilot</strong>-Schadenskarte und platziert sie offen auf dieser Karte. Dann mische den Schadensstapel. %LINEBREAK%Sobald du 1 %CRIT%-Schaden erleiden würdest, wird dir stattdessen die offene Schadenskarte auf dieser Karte zugeteilt. Dann entferne diese Karte. '
        'Buzz Droid Swarm':
           display_name: 'Buzz-Droidenschwarm'
           text: '''INIT: 0 <br>Wendigkeit: 1 <br>Hülle: 1 %LINEBREAK% <strong>Typ:</strong> Gerät, Remote %LINEBREAK% <strong>System-, Aktivierungs- und Endphase:</strong> Kein Effekt. %LINEBREAK%<strong>Kampfphase:</strong> Sobald du kämpfst, erleidet jedes feindliche Schiff in Reichweite 0 des Buzz-Droidenschwarms 1 %CRIT%-Schaden. %LINEBREAK%<strong>Sonstige Regeln:</strong>Nachdem sich ein feindliches Schiff durch einen Buzz-Droidenschwarm hindurchbewegt oder ihn überschnitten hat, positioniert der kontrollierende Spieler des Schwarms diesen neu, indem er ihn an die vorderen oder hinteren Stopper jenes Schiffes anlegt (das Schiff ist in Reichweite 0 des Schwarms). Würde dies zur Überschneidung mit einem Objekt führen, kann der Schwarm nicht angelegt werden. Falls der Schwarm am gewählten Stopperpaar nicht platziert werden kann, muss sein kontrollierender Spieler ihn an das andere Stopperpaar des Schiffes anlegen. Kann er auch am anderen Stopperpaar nicht angelegt werden, erhalten der Schwarm und das feindliche Schiff, das sich durch ihn hindurchbewegt oder ihn überschnitten hat, je 1 %HIT%-Schaden. %LINEBREAK%<i>Errata (since rules reference 1.4): Wendigkeit angepasst.</i>'''
        'DRK-1 Probe Droid':
           display_name: 'DRK-1-Sondendroide'
           text: '''INIT: 0 <br>Wendigkeit: 3 <br>Hülle: 1 %LINEBREAK% <strong>Typ:</strong> Gerät, Remote %LINEBREAK%  <strong>Systemphase:</strong> Der kontrollierende Spieler des DRK-1-Sondendroiden darf die [2 %BANKLEFT%]-, [2 %STRAIGHT%]- oder [2 %BANKRIGHT%]-Schablone wählen und an einem beliebigen Stopperpaar des DRK-1-Sondendroiden anlegen. Dann positioniert er das Remote neu, indem er den DRK-1-Sondendroiden am anderen Ende der Schablone platziert.Er kann dabei auch in Überschneidung mit einem Objekt platziert werden. Falls der DRK-1-Sondendroide ein Schiff überschneidet, wird die Position des Schiffes mit einer Positionsmarkierung festgehalten. Dann wird das Schiff auf dem Remote platziert.%LINEBREAK%<strong>Aktivierungs-, Kampf- und Endphase:</strong> Kein Effekt. %LINEBREAK%<strong>Sonstige Regeln:</strong> Solange ein Schiff ein Objekt als Ziel erfasst oder ein Störsignal zu einem feindlichen Schiff sendet, darf es die Reichweite von einem befreundeten DRK-1-Sondendroiden aus messen. Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, das zur Überschneidung mit einem DRK-1-Sondendroiden führt, wirft der kontrollierende Spieler des Schiffes 1 Angriffswürfel. Bei einem %FOCUS%-Ergebnis erleidet der DRK-1-Sondendroide 1 %HIT%-Schaden.'''
        'Sensor Buoy':
           display_name: "Sensorboje"
           text: '''INIT: 0 <br>Wendigkeit: 3 <br>Hülle: 2 %LINEBREAK% <strong>Typ:</strong> Gerät, Remote %LINEBREAK% Sensorbojen sind Remotes, die paarweise auftauchen (eine ist rot, eine blau und beide haben eine eigene Remotekarte) und durch die Aufwertungskarte <strong>Sensorbojen</strong> platziert werden. Abgesehen davon, dass sie Remotes sind und mit jener Karte interagieren, haben sie keine zusätzlichen Regeln.'''
        'Tracking Torpedoes':
           display_name: 'Zielsuch-Torpedos'
           text: '''INIT: 0 <br>Wendigkeit: 3 <br>Hülle: 3 %LINEBREAK%<strong>Typ:</strong> Gerät, Remote %LINEBREAK% <strong>Systemphase:</strong> Bei der Initiative dieses Remotes positioniert sein kontrollierender Spieler dieses Remote unter Verwendung der [3 %BANKLEFT%]-, [3 %BANKRIGHT%]-, oder [4 %STRAIGHT%]-Schablone vorwärts neu. %LINEBREAK% <strong>Aktivierungsphase:</strong> Kein Effekt. %LINEBREAK% <strong>Kampfphase:</strong> Bei der Initiative dieses Remotes detoniert es, falls ein Objekt, das von ihm als Ziel erfasst ist, in seinem %FRONTARC% in Reichweite 0–1 ist.%LINEBREAK%<strong>Endphase:</strong> Während der Endphase <strong>muss</strong> dieses Remote, falls es kein Objekt als Ziel erfasst hat, ein Objekt in seinem %FRONTARC% in Reichweite 1–3 als Ziel erfassen, falls möglich. %LINEBREAK% <strong>Sonstige Regeln:</strong> Nachdem dieses Remote zerstört worden ist, wirf 1 Angriffswürfel. Bei einem %HIT%- oder %CRIT%-Ergebnis detoniert es. %LINEBREAK% Sobald dieses Remote detoniert, wirft jedes Schiff, Remote und Konstrukt in Reichweite 0 oder in seinem %FRONTARC% in Reichweite 1 4 Angriffswürfel und erleidet 1 Schaden für jedes passende %HIT%- oder %CRIT%-Ergebnis.'''
        'Electro-Chaff Cloud':
           display_name: 'Elektrodüppel-Wolke'
           text: '''<strong>Typ:</strong>Hindernis, Gerät %LINEBREAK% Während der Endphase wird jede Elektrodüppel-Wolke ohne Zeitzünder entfernt, dann wird ein Zeitzünder von jeder Elektrodüppel-Wolke entfernt. Eine Elektrodüppel-Wolke kann nie mehr als 1 Zeitzünder haben.'''
        "It's the Resistance":
           display_name: "Das ist der Widerstand"
           text: "<b>Aufbau:</b> Beginne in der Reserve. %LINEBREAK% Sobald du abgesetzt wirst, wirst du innerhalb von Reichweite 1 eines beliebigen Spielflächenrandes und jenseits von Reichweite 3 aller feindlichen Schiffe platziert.%LINEBREAK%Zu Beginn der Runde, falls alle %CHARGE% des befreundeten <strong>GA-97</strong> aktiv sind, <strong>musst</stong> du abgesetzt werden. Dann erhalte 1 Entwaffnet-Msrker und entferne die Karte."
        "Decoyed":
           display_name: "Durch ein Double geschützt"
           text: "Solange du verteidigst, darf jede befreundete <strong>Zofe von Naboo</strong> im Angriffswinkel 1 Ausweichmarker ausgeben, um 1 deiner Ergebniss in ein %EVADE% - Ergebnis zu ändern. %LINEBREAK% Falls du ein Könglicher N-1 Sternjäger von Naboo bist, darf stattdessen jede befreundete <strong>Zofe von Naboo</strong> im Angriffswinkel 1 Ausweichmarker ausgebe, um 1 %EVADE% -Ergebnis hinzuzufügen."
        "Compromising Intel":
           display_name: "Kompromittierende Information"
           text: "Während der Systemphase, falls die feindliche <strong> Vi Moradi</strong> in Reichweite 0-3 ist, drehe dein Rad auf die offene Seite.%LINEBREAK% Solange du gegen die feindliche <strong> Vi Moradi </strong> verteidigst oder einen Angriff gegen sie durchführst, kannst du keine Fokusmarker ausgeben."
        "You Should Thank Me":
           display_name: "Du solltest mir danken"
           text: "Dieser Zustand wird verdeckt zugeordnet. Decke ihn auf, nachdem du verteidigt hast.%LINEBREAK% Nachdem du verteidigt hast, stellt <strong>Zam Wesell</strong> 1 %CHARGE% wieder her. Dann darfst du den Angreifer als Ziel erfassen. %LINEBREAK% Am Ende der Kampfphase, falls diese Karte verdeckt ist und im Feuerwinkel eines feindlichen Schiffes bist, darfst du diese Karte aufdecken und 2 %CHARGE% von <strong>Zam Wesell</strong> ausgeben. Falls du das tust, darfst du einen Bonusangriff durchführen.%LINEBREAK% Zu Beginn der Systemphase entferne diesen Zustand."
        "You'd Better Mean Business":
           display_name: "Wehe, du meinst es nicht Ernst"
           text: "Dieser Zustand wird verdeckt zugeordnet. Decke ihn auf, nachdem du verteidigt hast. %LINEBREAK% Nachdem du verteidigt hast, darfst du 2 %CHARGE% von <strong>Zam Wesell</strong> ausgeben. FAlls du das tust, führe einen Bonusangriff gegen den Angreifer durch.%LINEBREAK% Am Ende der Kampfphase, falls diese Karte verdeckt ist und du im Feuerwinkel eines feindlichen Schiffes bist, darfst du diese Karte aufdecken. Falls du das tust, stellt <strong>Zam Wesell</strong> 2 %CHARGE% wieder her.%LINEBREAK% Zu Beginn der Systemphase entferne diesen Zustand."
        "Merciless Pursuit":
           display_name: "Gnadenlose Verfolgung"
           text: "Nachdem du einen Angriff durchgeführt hast, falls der Verteidiger <strong>Das Kind</strong> ausgerüstet hat, darfst du den Verteidiger als Ziel erfassen."
        "Marked for Elimination":
           display_name: "Als Beute markiert"
           text: "Solange du verteidigst, falls der Angreifer <strong>PEILSENDER</strong> ausgerüstet hat und dich als Ziel erfasst hat, kannst du keine grünen Marker ausgeben."
        "False Friend":
           display_name: "Falscher Freund"
           text: "Falls während der Systemphase ein feindliches Schiff mit der Aufwertung <strong>Tal Merrik</strong> in Reichweite 0-2 ist oder ein feindliches Remote in Reichweite 0-2 ist, drehe dein Rad auf die offene Seite.%LINEBREAK%<b>Aktion:</b> Erhalte1 Erschöpfungs- und 1 Stressmarker, um diesen Zustand abzulegen."
        "Trials of the Darksaber":
           display_name: "Das Dunkelschwert"
           text: "Solange du einen Angriff in Angriffsreichweite 0-2 durchführst, darfst du 1 %CRIT%-Ergebnis ausgeben. Falls du das tust, falls der Spieler des verteidigenden Schiffes mehr verdiente %?% als du hat, verliert er 1 verdiente %?% . Platziere jene %?% auf diese Karte.%LINEBREAK% Nachdem du verteidigt hast, falls du von einem feindlichen Schiff in Angriffsreichweite 0-2 zerstört worden bist, ordne dem Angreifer den Zustand <strong>DAS DUNKELSCHWERT</strong> zu (Alle %?% bleiben auf dieser Karte.%LINEBREAK%Am Spielende verdient dieses Schiff alle %?% auf dieser Karte."
        "Guarded":
           display_name: "Beschützt"
           text: "Solange du verteidigst, falls du nicht im %BULLSARC% des Angreifers bist, wirfst du 1 zusätzlichen Verteidigungswürfel für jeden befreundeten berechnenden oder ausweichenden <strong>BESCHÜTZER DER MAGNAWÄCHTER</strong> im Angriffswinkel."
        "Sickening Maneuver":
           display_name: "Schwindelerregendes Manöver"
           text: "Du kannst rote Manöver ausführen, aus solange du gestresst bist.%LINEBREAK%Nachdem du ein Drehmanöver [%TURNLEFT% oder %TURNRIGHT%] oder ein Wendemanöver [%BANKLEFT% oder BANKRIGHT%] aufgedeckt hast, <strong>musst</strong> du 1 Anstrengunsmarker erhalten und jenes MAnöver als Slip ausführen.%LINEBREAK% Nachdem du ein Geradenmanöver [%STRAIGHT%] aufgedeckt hast, musst du jenes Manöver als rote Koiogran.Wende [%KTURN%] ausführen.%LINEBREAK%Nachdem du ein Manöver ausgeführt hast, entfernst du diesen Zustand."
        "Primed For Speed":
           display_name: "Bleifuss"
           text: "Füge deiner Aktionsleiste eine weisse %SLAM% -Aktionhinzu.%LINEBREAK% Nachdem du eine %SLAM% -Aktion durchgeführt hast, <strong>musst</strong> du 1 %HIT%-Schaden erleiden, um 1 Entwaffnet-Marker zu entfernen."
        "Broken Trust":
           display_name: "Vertrauensbruch"
           text: "Behandle befreundete Schiffe , als wären sie verbündet.%LINEBREAK%Nicht-feindliche Schiffe behandeln dich, als wärst du verbündet.%LINEREAK% Solange du einen Angriff durchführst, bevor du den Verteidiger deklarierst, erhält jedes verbündete Schiff im Angriffswinkel,das nicht gestresst ist, 1 Stressmarker.%LINEBREAK%Nachdem du verteidigt oder einen Angriff durchgeführt hast, falls dem Verteidiger mindestens 1 offene Schadenskarte zugeteilt oder zerstört worden ist, entfernst du diesen Zustand."

    chassis_translations =
        "Vectored Thrusters":
           display_name: 'Schwenkbare Schubdüsen'
           text: """Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%-Aktion durchführen."""
        "Advanced Targeting Computer":
           display_name: "Verbesserter Zielcomputer"
           text: """Solange du einen Primärangriff gegen einen Verteidiger durchführst, den du als Ziel erfasst hast, wirf 1 zusätzlichen Angriffswürfel und ändere 1 %HIT%-Ergebnis in ein %CRIT%-Ergebnis."""
        "Autothrusters":
           display_name: "Automatische Schubdüsen"
           text: """Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BARRELROLL%-Aktion oder eine rote %BOOST%-Aktion durchführen."""
        "Nimble Bomber":
           display_name: "Wendiger Bomber"
           text: """Falls du unter Verwendung einer %STRAIGHT%-Schablone ein Gerät abwerfen würdest, darfst du stattdessen eine %BANKLEFT%- oder %BANKRIGHT%-Schablone derselben Geschwindigkeit verwenden."""
        "Full Throttle":
           display_name: "Vollgas"
           text: """Nachdem du ein Manöver mit Geschwindigkeit 3-5 vollständig ausgeführt hast, darfst du eine %EVADE%&nbsp;-Aktion durchführen."""
        "Experimental Scanners":
           display_name: "Experimentelle Scanner"
           text: """Du kannst Ziele jenseits von Reichweite 3 erfassen. Du kannst keine Ziele in Reichweite 1 erfassen."""
        "Stygium Array":
           display_name: "Stygium-Gitter"
           text: """Nachdem du dich enttarnt hast, darfst du eine %EVADE%-Aktion durchführen. Zu Beginn der Endphase darfst du 1 Ausweichmarker ausgeben, um 1 Tarnungsmarker zu erhalten."""
        "Sensor Blindspot":
           display_name: "Toter Winkel"
           text: """Solange du einen Primärangriff in Reichweite 0-1 durchführst, wende den Bonus für Reichweite 0-1 nicht an und wirf 1 Angriffswürfel weniger."""
        "Microthrusters":
           display_name: "Mikrodüsen"
           text: """Solange du eine Fassrolle durchführst, <b>musst</b> du die %BANKLEFT%- oder %BANKRIGHT%-Schablone anstatt der %STRAIGHT%-Schablone verwenden."""
        "Weapon Hardpoint":
           display_name: "Waffenaufhängung"
           text: """Du kannst 1 %CANNON%-, %TORPEDO%- oder %MISSILE%-Aufwertung ausrüsten."""
        "Advanced Droid Brain":
           display_name: "Hochentwickeltes Droidengehirn"
           text: """Nachdem du eine %CALCULATE%-Aktion durchgeführt hast, erhalte 1 Berechnungsmarker."""
        "Tail Gun":
           display_name: "Heckgeschütz"
           text: """Solange du ein angedocktes Schiff hast, hast du eine %REARARC%-Primärwaffe mit einem Angriffswert in Höhe des Angriffswertes der %FRONTARC%-Primärwaffe deines angedockten Schiffes."""
        "Locked and Loaded":
           display_name: "Geladen und entsichert"
           text: """Solange du angedockt bist, nachdem dein Trägerschiff einen %FRONTARC%-Primärangriff oder %TURRET%-Angriff durchgeführt hat, darf es einen Bonus-%REARARC%-Primärangriff durchführen."""
        "Concordia Faceoff":
           display_name: "Concordianischer Wirbel"
           text: """Solange du verteidigst, falls die Angriffsreichweite 1 ist und du im %FRONTARC% des Angreifers bist, ändere 1 Ergebnis in ein %EVADE%-Ergebnis."""
        "Spacetug Tractor Array":
           display_name: "Schlepperstrahl"
           text: """<strong>Aktion:</strong> Wähle ein Schiff in deinem %FRONTARC% in Reichweite 1. Jenes Schiff erhält 1 Fangstrahlmarker oder 2 Fangstrahlmarker, falls es in deinem %BULLSEYEARC% in Reichweite 1 ist."""
        "Hope":
           display_name: "Hoffnung"
           text: """Nachdem ein anderes befreundetes Schiff in Reichweite 0-3 zerstört worden ist, darfst du eine &nbsp;%FOCUS%- oder&nbsp;%BOOST%-Aktion durchführen."""
        "Sensitive Controls":
           display_name: "Genaue Steuerung"
           text: """Während der Systemphase darfst du eine rote&nbsp;%BARRELROLL%- oder eine rote&nbsp;%BOOST%-Aktion durchführen."""
        "Vectored Cannons":
           display_name: "Schwenkbare Kanonen"
           text: """Während der Systemphase darfst du eine rote&nbsp;%BOOST%- oder eine rote&nbsp;%ROTATEARC%-Aktion durchführen. Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren."""
        "Advanced Fire Control":
           display_name: "Verbesserte Feuerkontrolle"
           text: """Nachdem du einen&nbsp;%CANNON%- oder&nbsp;%MISSILE%-Angriff durchgeführt hast, falls du den Verteidiger als Ziel erfasst hast, darfst du einen Bonus-Primärangriff gegen den Verteidiger durchführen."""
        "Networked Calculations":
           display_name: "Vernetzte Berechnungssysteme"
           text: """Solange du verteidigst oder einen Angriff durchführst, darfst du 1 Berechnungsmarker von einem befreundeten Schiff in Reichweite 0-1 ausgeben, um 1 %FOCUS%-Ergebnis in ein %EVADE%-oder %HIT%-Ergebnis zu ändern."""
        "Independent Calculations":
           display_name: "Autonome Berechnungssysteme"
           text: """Solange du eine weiße&nbsp;%CALCULATE%-Aktion durchführst, darfst du sie behandeln, als wäre sie rot, um 1 zusätzlichen Berechnungsmarker zu erhalten. Andere Schiffe können deine Berechnungsmarker nicht unter Verwendung der Schiffsfähigkeit <strong>Vernetzte Berechnungssysteme</strong> ausgeben."""
        "Adaptive Ailerons":
           display_name: "Adaptive Querruder"
           text: """Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, <b>musst</b> du Schub geben.  %LINEBREAK% <i>Errata (seit Referenzhandbuch 1.4.2): Schub statt weißem 1 Manöver</i>"""
        "Dead to Rights":
           display_name: "Todsicherer Treffer"
           text: """Solange du einen Angriff durchführst, falls der Verteidiger in deinem %BULLSEYEARC% ist, können Verteidigungswürfel nicht unter Verwendung von grünen Markern modifiziert werden."""
        "Comms Shuttle":
           display_name: "Kommunikationsantennen"
           text: """Solange du angedockt bist, erhält dein Trägerschiff %COORDINATE%. Bevor dein Trägerschiff aktiviert wird, darf es eine %COORDINATE%-Aktion durchführen."""
        "Controlled Ailerons":
           display_name: "Kontrollierte Querruder"
           text: """Bevor du dein Rad aufdeckst, falls du nicht gestresst bist, darfst du Schub geben. %LINEBREAK% <i>Errata (since rules reference 1.4.2): Schiffsfähigkeit umbenannt, Schub statt weißem 1 Manöver und optional</i>"""
        "Co-Pilot":
           display_name: "Co-Pilot"
           text: """Solange du angedockt bist, hat dein Träger-Schiff deine Piloten-Fähigkeit zusätzlich zu seiner eigenen."""
        "Rigged Energy Cells":
           display_name: "Manipulierte Energiezellen"
           text: """Während der Systemphase, falls du nicht angedockt bist, verliere 1 %CHARGE%. Am Ende der Aktivierungsphase, falls du 0 %CHARGE% hast, wirst du zerstört. Bevor du entfernt wirst, erleidet jedes Schiff in Reichweite 0-1 1 %CRIT%-Schaden."""
        "Refined Gyrostabilizers":
           display_name: "Optimierte Gyrostabilisatoren"
           text: """Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren. Nachdem du eine Aktion durchgeführt hast, darfst du eine rote %BOOST%- oder eine rote %ROTATEARC%-Aktion durchführen."""
        "Heavy Weapon Turret":
           display_name: "Schwerer Geschützturm"
           text: """Du kannst deinen %SINGLETURRETARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren. Du <b>musst</b> die %FRONTARC%-Voraussetzung deiner ausgerüsteten %MISSILE%-Aufwertungen behandeln, als wäre sie %SINGLETURRETARC%."""
        "Linked Battery":
           display_name: "Gekoppelte Geschützbatterie"
           text: """Solange du einen %CANNON%-Angriff durchführst, wirf 1 zusätzlichen Würfel."""
        "Notched Stabilizers":
           display_name: "Stabilisatorkerbe"
           text: """Solange du dich bewegst, ignorierst du Asteroiden."""
        "Fine-Tuned Controls":
           display_name: "Präzisionssteuerung"
           text: """Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 %FORCE% ausgeben, um eine %BOOST%- oder %BARRELROLL%-Aktion durchzuführen."""
        "Pinpoint Tractor Array":
           display_name: "Fangstrahl-Zielsystem"
           text: """Du kannst deinen %SINGLETURRETARC% nicht auf deinen %REARARC%rotieren. Nachdem du ein Manöver vollständig ausgeführt hast, darfst du 1 Fangstrahlmarker erhalten, um eine&nbsp;%ROTATEARC%&nbsp;-Aktion durchzuführen. %LINEBREAK%<i>Errata (since rules reference 1.4):  "vollständig" ergänzt</i>"""
        "Plated Hull":
           display_name: "Gepanzerte Hülle"
           text: """Solange du verteidigst, falls du nicht kritisch beschädigt bist, ändere 1&nbsp;%CRIT%&nbsp;-Ergebnis in ein&nbsp;%HIT%&nbsp;-Ergebnis."""
        "Solo":
           display_name: "Solo"
           text: "Solange du verteidigst oder einen Angriff durchführst, falls kein anderes befreundetes Schiff in Reichweite 0-1 ist, darfst du 1 %CHARGE% ausgeben, um 1 deiner Würfel neu zu werfen."
        "Pursuit Craft":
           display_name: "Jagdschiff"
           text: "Nachdem du absetzt worden bist, darfst du ein Schiff als Ziel erfassen, das von der befreundeten <strong>Reißzahn</strong> als Ziel erfasst ist."
        "Explosion with Wings":
           display_name: "Explosion mit Flügeln"
           text: "<b>Aufbau:</b> Dir wird 1 verdeckte Schadenskarte zugeteilt. Nachdem du eine %SLAM%-Aktion durchgeführt hast, darfst du 1 Schadenskarte offenlegen, um 1 Entwaffnetmarker zu entfernen."
        "Fine-Tuned Thrusters":
           display_name: "Präzisionsdüsen"
           text: "Nachdem du ein Manöver vollständig ausgeführt hast, falls du nicht erschöpft oder angestrengt bist, darfst du 1 Erschöpfungs- oder Anstrengungsmarker erhalten, um eine %LOCK%- oder %BARRELROLL%-Aktion durchzuführen."
        "Fire Convergence":
           display_name: "Gebündeltes Feuer"
           text: "Solange ein befreundetes Schiff einen Nicht-%ROTATEARC%-Angriff durchführt, falls der Verteidiger in deinem %ROTATEARC% ist, darfst du 1 %CHARGE% ausgeben. Falls du das tust, darf der Angreifer bis zu 2 Angriffswürfel neu werfen."
        "Rotating Cannons":
           display_name: "Drehgeschütz"
           text: "Du kannst deinen %ROTATEARC%-Anzeiger nur auf deinen %FRONTARC% oder %REARARC% rotieren. Du <strong>musst</strong> die %FRONTARC%-Vorraussetzung deiner ausgerüsteten %CANNON%-Aufwertungen behandeln, als wäre sie %ROTATEARC%."
        "Twin Ion Engines":
           display_name: "Zwillings-Ionenantrieb"
           text: 'Ignoriere die Schiffsbeschränkung "TIE" auf Aufwertungskarten.'
        "Intuitive Controls":
           display_name: "Intuitive Steuerung"
           text: "Während der Systemphase darfst du eine violette %BARRELROLL% oder eine violette %BOOST%-Aktion durchführen."
        "Intuitive Interface":
           display_name: "Intuitive Schnittstelle"
           text: "Nachdem du eine Aktion durchgeführt hast, die deiner Aktionsleiste durch eine %TALENT%-,%ILLICIT%- oder %MODIFICATION%-Aufwertung hinzugefügt wurde, darfst du eine %CALCULATE%-Aktion durchführen."
        "Pursuit Thrusters":
           display_name: "Jagddüsen"
           text: "Während der Systemphase darfst du eine %BOOST%-Aktion durchführen."
        "Versatile Frame":
           display_name: "Vielseitige Konstruktion"
           text: "Du kannst 1 %TORPEDO% oder %MISSILE%-Aufwertung ausrüsten. Solange dein aufgedecktes Manöver blau ist, füge deiner Aktionsleiste einen weißen %BOOST% hinzu."
        "Born for This":
           display_name: "Dafür geboren"
           text: "Solange ein anderes befreundetes Schiff inReichweite 0-2 verteidigt, falls du nicht angestrengt bist, darf jenes Schiff deine Fokus- und Ausweichmarker ausgeben, als hätte es sie selbst. Falls es das tut, erhältst du 1 Anstrengungsmarker."
        "Modified for Organics":
           display_name: "auf organische Piloten angepasst"
           text: "Dieses Schiff ist nicht von der Beschränkung <strong>GENORMT</strong> betroffen. Verringere die Schwierigkeit deiner Drehmanöver [%TURNLEFT% oder %TURNRIGHT%] mit Geschwindigkeit 2-3. Erhöhe die Schwierigkeit deiner Wendemanöver [%BANKLEFT% oder %BANKRIGHT%] mit Geschwindigkeit 3."

    exportObj.setupTranslationCardData pilot_translations, upgrade_translations, condition_translations, chassis_translations
