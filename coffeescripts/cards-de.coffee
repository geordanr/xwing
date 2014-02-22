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
        "Recover": "Recover"
        "Reinforce": "Reinforce"
        "Jam": "Jam"
        "Coordinate": "Coordinate"
        "Cloak": "Cloak"
    slot:
        "Astromech": "Astromech"
        "Bomb": "Bombe"
        "Cannon": "Kanone"
        "Crew": "Crew"
        "Elite": "Elite"
        "Missile": "Rakete"
        "System": "System"
        "Torpedo": "Torpedo"
        "Turret": "Geschützturm"
        "Cargo": "Cargo"
        "Hardpoint": "Hardpoint"
        "Team": "Team"
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
        "Lambda-Class Shuttle Expansion Pack": "Lambda Class Shuttle Erweiterung"
        "Slave I Expansion Pack": "Slave I Erweiterung"
        "Imperial Aces Expansion Pack": "Imperial Aces Erweiterung"
        "Rebel Transport Expansion Pack": "Rebel Transport Expansion Pack"
        "Z-95 Headhunter Expansion Pack": "Z-95 Headhunter Expansion Pack"
        "TIE Defender Expansion Pack": "TIE Defender Expansion Pack"
        "E-Wing Expansion Pack": "E-Wing Expansion Pack"
        "TIE Phantom Expansion Pack": "TIE Phantom Expansion Pack"
        "Tantive IV Expansion Pack": "Tantive IV Expansion Pack"
    ui:
        pilotSelectorPlaceholder: "Wähle einen Piloten"
        upgradePlaceholder: (translator, language, slot) ->
            "kein #{translator language, 'slot', slot} Upgrade"
        modificationPlaceholder: "keine Modifikation"
        titlePlaceholder: "kein Titel"
        upgradeHeader: (translator, language, slot) ->
            "#{translator language, 'slot', slot} Upgrade"
    byCSSSelector:
        '.translate.sort-cards-by': 'Sortiere Karten per'
        '.xwing-card-browser option[value="name"]': 'Name'
        '.xwing-card-browser option[value="source"]': 'Quelle'
        '.xwing-card-browser option[value="type-by-points"]': 'Typ (Punkte)'
        '.xwing-card-browser option[value="type-by-name"]': 'Typ (Name)'
        '.xwing-card-browser .translate.select-a-card': 'Wähle eine Karte aus der Liste links.'
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

    exportObj.ships =
        "X-Wing":
            name: "X-Wing"
            faction: "Rebel Alliance"
            attack: 3
            agility: 2
            hull: 3
            shields: 2
            actions: [
                "Focus",
                "Target Lock",
            ]
        "Y-Wing":
            name: "Y-Wing"
            faction: "Rebel Alliance"
            attack: 2
            agility: 1
            hull: 5
            shields: 3
            actions: [
                "Focus",
                "Target Lock",
            ]
        "A-Wing":
            name: "A-Wing"
            faction: "Rebel Alliance"
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            actions: [
                "Focus",
                "Target Lock",
                "Boost",
                "Evade",
            ]
        "YT-1300":
            name: "YT-1300"
            faction: "Rebel Alliance"
            attack: 2
            agility: 1
            hull: 6
            shields: 4
            actions: [
                "Focus",
                "Target Lock",
            ]
            large: true
        "TIE Fighter":
            name: "TIE Fighter"
            faction: "Galactic Empire"
            attack: 2
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus",
                "Barrel Roll",
                "Evade",
            ]
        "TIE Advanced":
            name: "TIE Advanced"
            faction: "Galactic Empire"
            attack: 2
            agility: 3
            hull: 3
            shields: 2
            actions: [
                "Focus",
                "Target Lock",
                "Barrel Roll",
                "Evade",
            ]
        "TIE Abfangjäger":
            name: "TIE Abfangjäger"
            faction: "Galactic Empire"
            attack: 3
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus",
                "Barrel Roll",
                "Boost",
                "Evade",
            ]
        "Firespray-31":
            name: "Firespray-31"
            faction: "Galactic Empire"
            attack: 3
            agility: 2
            hull: 6
            shields: 4
            actions: [
                "Focus",
                "Target Lock",
                "Evade",
            ]
            large: true
        "HWK-290":
            name: "HWK-290"
            faction: "Rebel Alliance"
            attack: 1
            agility: 2
            hull: 4
            shields: 1
            actions: [
                "Focus",
                "Target Lock",
            ]
        "Lambda-Class Shuttle":
            name: "Lambda-Class Shuttle"
            faction: "Galactic Empire"
            attack: 3
            agility: 1
            hull: 5
            shields: 5
            actions: [
                "Focus",
                "Target Lock",
            ]
            large: true
        "B-Wing":
            name: "B-Wing"
            faction: "Rebel Alliance"
            attack: 3
            agility: 1
            hull: 3
            shields: 5
            actions: [
                "Focus",
                "Target Lock",
                "Barrel Roll",
            ]
        "TIE Bomber":
            name: "TIE Bomber"
            faction: "Galactic Empire"
            attack: 2
            agility: 2
            hull: 6
            shields: 0
            actions: [
                "Focus",
                "Target Lock",
                "Barrel Roll",
            ]
        "GR-75 Medium Transport":
            name: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            energy: 4
            agility: 0
            hull: 8
            shields: 4
            actions: [
                "Recover",
                "Reinforce",
                "Coordinate",
                "Jam",
            ]
            huge: true
        "Z-95 Headhunter":
            name: "Z-95 Headhunter"
            faction: "Rebel Alliance"
            attack: 2
            agility: 2
            hull: 2
            shields: 2
            actions: [
                "Focus",
                "Target Lock",
            ]
        "TIE Defender":
            name: "TIE Defender"
            faction: "Galactic Empire"
            attack: 3
            agility: 3
            hull: 3
            shields: 3
            actions: [
                "Focus",
                "Target Lock",
                "Barrel Roll",
            ]
        "E-Wing":
            name: "E-Wing"
            faction: "Rebel Alliance"
            attack: 3
            agility: 3
            hull: 2
            shields: 3
            actions: [
                "Focus",
                "Target Lock",
                "Barrel Roll",
                "Evade",
            ]
        "TIE Phantom":
            name: "TIE Phantom"
            faction: "Galactic Empire"
            attack: 4
            agility: 2
            hull: 2
            shields: 2
            actions: [
                "Focus",
                "Barrel Roll",
                "Evade",
                "Cloak",
            ]
        "CR90 Corvette (Fore)":
            name: "CR90 Corvette (Fore)"
            faction: "Rebel Alliance"
            attack: 4
            agility: 0
            hull: 8
            shields: 5
            actions: [
                "Coordinate",
                "Target Lock",
            ]
            huge: true
        "CR90 Corvette (Aft)":
            name: "CR90 Corvette (Aft)"
            faction: "Rebel Alliance"
            energy: 5
            agility: 0
            hull: 8
            shields: 3
            actions: [
                "Reinforce",
                "Jam",
            ]
            huge: true

    exportObj.pilots =
        "Wedge Antilles":
            name: "Wedge Antilles"
            id: 0
            sources: [ "X-Wing Expansion Pack", ]
            unique: true
            ship: "X-Wing"
            skill: 9
            points: 29
            slots: [
                "Elite",
                "Torpedo",
                "Astromech",
            ],
            text: """Wenn du angreifst, sinkt der Wendigkeitswert des Verteidigers um 1 (Minimum 0)."""
        "Garven Dreis":
            name: "Garven Dreis"
            id: 1
            sources: [ "X-Wing Expansion Pack", ]
            unique: true
            ship: "X-Wing"
            skill: 6
            points: 26
            slots: [
                "Torpedo",
                "Astromech",
            ]
            text: """Wenn du einen Fokusmarker ausgibst, darfst du ihn auf ein anderes freundliches Schiff in Reichweite 1-2 legen (anstatt ihn abzulegen)."""
        "Pilot der Rot-Staffel":
            name: "Pilot der Rot-Staffel"
            id: 2
            sources: [ "Core", "X-Wing Expansion Pack", ]
            ship: "X-Wing"
            skill: 4
            points: 23
            slots: [
                "Torpedo",
                "Astromech",
            ]
        "Anfängerpilot":
            name: "Anfängerpilot"
            id: 3
            sources: [ "Core", "X-Wing Expansion Pack", ]
            ship: "X-Wing"
            skill: 2
            points: 21
            slots: [
                "Torpedo",
                "Astromech",
            ]
        "Biggs Darklighter":
            name: "Biggs Darklighter"
            id: 4
            unique: true
            sources: [ "Core", ]
            ship: "X-Wing"
            skill: 5
            points: 25
            slots: [
                "Torpedo",
                "Astromech",
            ]
            text: """Andere freundliche Schiffe in Reichweite 1 dürfen nur dann angegriffen werden, wenn der Angreifer dich nicht zum Ziel bestimmen kann."""
        "Luke Skywalker":
            name: "Luke Skywalker"
            id: 5
            unique: true
            sources: [ "Core", ]
            ship: "X-Wing"
            skill: 8
            points: 28
            slots: [
                "Elite",
                "Torpedo",
                "Astromech",
            ]
            text: """Wenn du verteidigst, kannst du 1 deiner <img class="icon-focus" alt="Focus" src="images/transparent.png" /> in ein <img class="icon-evade" alt="Evade" src="images/transparent.png" /> ändern."""
        "Pilot der Grau-Staffel":
            name: "Pilot der Grau-Staffel"
            id: 6
            ship: "Y-Wing"
            sources: [ "Y-Wing Expansion Pack", ]
            skill: 4
            points: 20
            slots: [
                "Turret",
                "Torpedo",
                "Torpedo",
                "Astromech",
            ]
        '"Dutch" Vander':
            name: '"Dutch" Vander'
            id: 7
            unique: true
            ship: "Y-Wing"
            sources: [ "Y-Wing Expansion Pack", ]
            skill: 6
            points: 23
            slots: [
                "Turret",
                "Torpedo",
                "Torpedo",
                "Astromech",
            ]
            text: """Wähle ein anderes freundliches Schiff in Reichweite 1-2, nachdem du eine Zielerfassung durchgeführt hast. Das gewählte Schiff darf sofort ebenfalls eine Zielerfassung durchführen."""
        "Horton Salm":
            name: "Horton Salm"
            id: 8
            unique: true
            ship: "Y-Wing"
            sources: [ "Y-Wing Expansion Pack", ]
            skill: 8
            points: 25
            slots: [
                "Turret",
                "Torpedo",
                "Torpedo",
                "Astromech",
            ]
            text: """Wenn du ein Ziel in Reichweite 2-3 angreifst, darfst du beliebig viele Leerseiten neu würfeln."""
        "Pilot der Gold-Staffel":
            name: "Pilot der Gold-Staffel"
            id: 9
            ship: "Y-Wing"
            sources: [ "Y-Wing Expansion Pack", ]
            skill: 2
            points: 18
            slots: [
                "Turret",
                "Torpedo",
                "Torpedo",
                "Astromech",
            ]
        "Pilot der Akademie":
            name: "Pilot der Akademie"
            id: 10
            ship: "TIE Fighter"
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
            skill: 1
            points: 12
            slots: []
        "Pilot der Obsidian-Staffel":
            name: "Pilot der Obsidian-Staffel"
            id: 11
            ship: "TIE Fighter"
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
            skill: 3
            points: 13
            slots: []
        "Pilot der Schwarz-Staffel":
            name: "Pilot der Schwarz-Staffel"
            id: 12
            ship: "TIE Fighter"
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
            skill: 4
            points: 14
            slots: [
                "Elite",
            ]
        '"Geflügelter Gundark"':
            name: '"Geflügelter Gundark"'
            id: 13
            unique: true
            ship: "TIE Fighter"
            sources: [ "TIE Fighter Expansion Pack", ]
            skill: 5
            points: 15
            slots: [ ]
            text: """Wenn du ein Ziel in Reichweite 1 angreifst, darfst du eines deiner <img class="icon-hit" alt="Hit" src="images/transparent.png" /> in ein <img class="icon-crit" alt="Crit" src="images/transparent.png" /> ändern."""
        '"Nachtbestie"':
            name: '"Nachtbestie"'
            id: 14
            unique: true
            ship: "TIE Fighter"
            sources: [ "Core", ]
            skill: 5
            points: 15
            slots: [ ]
            text: """Nachdem du ein grünes Manöver ausgeführt hast, darfst du als freie Aktion eine Fokussierung durchführen."""
        '"Backstabber"':
            name: '"Backstabber"'
            id: 15
            unique: true
            ship: "TIE Fighter"
            sources: [ "TIE Fighter Expansion Pack", ]
            skill: 6
            points: 16
            slots: [ ]
            text: """Wenn du bei deinem Angriff nicht im Feuerwinkel des Verteidigers bist, erhältst du 1 zusätzlichen Angriffswürfel."""
        '"Dark Curse"':
            name: '"Dark Curse"'
            id: 16
            unique: true
            ship: "TIE Fighter"
            sources: [ "Core", ]
            skill: 6
            points: 16
            slots: [ ]
            text: """Wenn du verteidigst, können angreifende Schiffe keine Fokusmarker ausgeben oder Angriffswürfel neu würfeln."""
        '"Mauler Mithel"':
            name: '"Mauler Mithel"'
            id: 17
            unique: true
            ship: "TIE Fighter"
            sources: [ "Core", ]
            skill: 7
            points: 17
            slots: [
                "Elite",
            ]
            text: """Wirf 1 zusätzlichen Angriffswürfel, wenn du ein Ziel in Reichweite 1 angreifst."""
        '"Kreischläufer"':
            name: '"Kreischläufer"'
            id: 18
            unique: true
            ship: "TIE Fighter"
            sources: [ "TIE Fighter Expansion Pack", ]
            skill: 8
            points: 18
            slots: [
                "Elite",
            ]
            text: """Wenn ein anderes freundliches Schiff in Reichweite 1 mit seinen Primärwaffen angreift, darf es 1 Angriffswürfel neu würfeln."""
        "Maarek Stele":
            name: "Maarek Stele"
            id: 19
            unique: true
            ship: "TIE Advanced"
            sources: [ "TIE Advanced Expansion Pack", ]
            skill: 7
            points: 27
            slots: [
                "Elite",
                "Missile",
            ]
            text: """Wenn ein Verteidiger durch deinen Angriff eine offene Schadenskarte erhalten würde, ziehst du stattdessen 3 Schadenskarten, wählst eine davon zum Austeilen und legst die restlichen ab."""
        "Pilot der Tornado-Staffel":
            name: "Pilot der Tornado-Staffel"
            id: 20
            ship: "TIE Advanced"
            sources: [ "TIE Advanced Expansion Pack", ]
            skill: 2
            points: 21
            slots: [
                "Missile",
            ]
        "Pilot der Storm-Staffel":
            name: "Pilot der Storm-Staffel"
            id: 21
            ship: "TIE Advanced"
            sources: [ "TIE Advanced Expansion Pack", ]
            skill: 4
            points: 23
            slots: [
                "Missile",
            ]
        "Darth Vader":
            name: "Darth Vader"
            id: 22
            unique: true
            ship: "TIE Advanced"
            sources: [ "TIE Advanced Expansion Pack", ]
            skill: 9
            points: 29
            slots: [
                "Elite",
                "Missile",
            ]
            text: """Im Schritt "Aktionen durchführen" darfst du 2 Aktionen durchführen."""
        "Pilot der Alpha-Staffel":
            name: "Pilot der Alpha-Staffel"
            id: 23
            ship: "TIE Abfangjäger"
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 1
            points: 18
            slots: [ ]
        "Pilot der Avenger-Staffel":
            name: "Pilot der Avenger-Staffel"
            id: 24
            ship: "TIE Abfangjäger"
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 3
            points: 20
            slots: [ ]
        "Pilot der Saber-Staffel":
            name: "Pilot der Saber-Staffel"
            id: 25
            ship: "TIE Abfangjäger"
            sources: [ "TIE Interceptor Expansion Pack", "Imperial Aces Expansion Pack", ]
            skill: 4
            points: 21
            slots: [
                "Elite",
            ]
        "\"Fel's Wrath\"":
            name: "\"Fel's Wrath\""
            id: 26
            unique: true
            ship: "TIE Abfangjäger"
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 5
            points: 23
            slots: [ ]
            text: """Wenn die Summe deiner Schadenskarten deinen Hüllenwert erreicht oder übersteigt, wirst du nicht sofort zerstört, sondern erst am Ende der Kampfphase."""
        "Turr Phennir":
            name: "Turr Phennir"
            id: 27
            unique: true
            ship: "TIE Abfangjäger"
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 7
            points: 25
            slots: [
                "Elite",
            ]
            text: """Nachdem du angegriffen hast, darfst du eine freie Aktion Schub oder Fassrolle durchführen."""
        "Soontir Fel":
            name: "Soontir Fel"
            id: 28
            unique: true
            ship: "TIE Abfangjäger"
            sources: [ "TIE Interceptor Expansion Pack", ]
            skill: 9
            points: 27
            slots: [
                "Elite",
            ]
            text: """Immer wenn du einen Stressmarker erhältst, darfst du deinem Schiff auch einen Fokusmarker geben."""
        "Tycho Celchu":
            name: "Tycho Celchu"
            id: 29
            unique: true
            ship: "A-Wing"
            sources: [ "A-Wing Expansion Pack", ]
            skill: 8
            points: 26
            slots: [
                "Elite",
                "Missile",
            ]
            text: """Du darfst auch dann Aktionen durchführen, wenn du Stressmarker hast."""
        "Arvel Crynyd":
            name: "Arvel Crynyd"
            id: 30
            unique: true
            ship: "A-Wing"
            sources: [ "A-Wing Expansion Pack", ]
            skill: 6
            points: 23
            slots: [
                "Missile",
            ]
            text: """Wenn du angreifst, darfst du auch auf feindliche Schiffe zielen, deren Basen du berührst (vorausgesetzt sie sind innerhalb deines Feuerwinkels)."""
        "Pilot der Grün-Staffel":
            name: "Pilot der Grün-Staffel"
            id: 31
            ship: "A-Wing"
            sources: [ "A-Wing Expansion Pack", ]
            skill: 3
            points: 19
            slots: [
                "Elite",
                "Missile",
            ]
        "Testpilot":
            name: "Testpilot"
            id: 32
            ship: "A-Wing"
            sources: [ "A-Wing Expansion Pack", ]
            skill: 1
            points: 17
            slots: [
                "Missile",
            ]
        "Schmuggler aus dem Outer Rim":
            name: "Schmuggler aus dem Outer Rim"
            id: 33
            ship: "YT-1300"
            sources: [ "Millennium Falcon Expansion Pack", ]
            skill: 1
            points: 27
            slots: [
                "Crew",
                "Crew",
            ]
        "Chewbacca":
            name: "Chewbacca"
            id: 34
            unique: true
            ship: "YT-1300"
            sources: [ "Millennium Falcon Expansion Pack", ]
            skill: 5
            points: 42
            slots: [
                "Elite",
                "Missile",
                "Crew",
                "Crew",
            ]
            text: """Wenn du eine offene Schadenskarte erhältst, wird sie sofort umgedreht (ohne dass ihr Kartentext in Kraft tritt)."""
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        "Lando Calrissian":
            name: "Lando Calrissian"
            id: 35
            unique: true
            ship: "YT-1300"
            sources: [ "Millennium Falcon Expansion Pack", ]
            skill: 7
            points: 44
            slots: [
                "Elite",
                "Missile",
                "Crew",
                "Crew",
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
            text: """Wähle nach dem Ausführen eines grünen Manövers ein anderes freundliches Schiff in Reichweite 1. Dieses Schiff darf eine freie Aktion aus seiner Aktionsleiste durchführen."""
        "Han Solo":
            name: "Han Solo"
            id: 36
            unique: true
            ship: "YT-1300"
            sources: [ "Millennium Falcon Expansion Pack", ]
            skill: 9
            points: 46
            slots: [
                "Elite",
                "Missile",
                "Crew",
                "Crew",
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
            text: """Wenn du angreifst, darfst du all deine Würfel neu würfeln. Tust du dies, musst du so viele Würfel wie möglich neu würfeln."""
        "Kath Scarlet":
            name: "Kath Scarlet"
            id: 37
            unique: true
            ship: "Firespray-31"
            sources: [ "Slave I Expansion Pack", ]
            skill: 7
            points: 38
            slots: [
                "Elite",
                "Cannon",
                "Bomb",
                "Crew",
                "Missile",
            ]
            text: """Wenn du angreifst und der Verteidiger mindestens 1 <img class="icon-crit" alt="Crit" src="images/transparent.png" /> negiert, erhält er 1 Stressmarker."""
        "Boba Fett":
            name: "Boba Fett"
            id: 38
            unique: true
            ship: "Firespray-31"
            sources: [ "Slave I Expansion Pack", ]
            skill: 8
            points: 39
            slots: [
                "Elite",
                "Cannon",
                "Bomb",
                "Crew",
                "Missile",
            ]
            text: """Immer wenn du ein Eindrehmanöver (<img class="icon-bankleft" alt="Bank Left" src="images/transparent.png" /> oder <img class="icon-bankright" alt="Bank Right" src="images/transparent.png" />) aufdeckst, kannst du das Eindrehmanöver mit gleicher Geschwindigkeit aber anderer Richtung auf deinem Rad nachträglich einstellen."""
        "Krassis Trelix":
            name: "Krassis Trelix"
            id: 39
            unique: true
            ship: "Firespray-31"
            sources: [ "Slave I Expansion Pack", ]
            skill: 5
            points: 36
            slots: [
                "Cannon",
                "Bomb",
                "Crew",
                "Missile",
            ]
            text: """Wenn du mit einer Sekundärwaffe angreifst, darfst du 1 Angriffswürfel neu würfeln."""
        "Kopfgeldjäger":
            name: "Kopfgeldjäger"
            id: 40
            ship: "Firespray-31"
            sources: [ "Slave I Expansion Pack", ]
            skill: 3
            points: 33
            slots: [
                "Cannon",
                "Bomb",
                "Crew",
                "Missile",
            ]
        "Ten Numb":
            name: "Ten Numb"
            id: 41
            unique: true
            ship: "B-Wing"
            sources: [ "B-Wing Expansion Pack", ]
            skill: 8
            points: 31
            slots: [
                "Elite",
                "System",
                "Cannon",
                "Torpedo",
                "Torpedo",
            ]
            text: """Wenn du angreifst, kann 1 deiner <img class="icon-crit" alt="Crit" src="images/transparent.png" /> von Verteidigungswürfeln nicht negiert werden."""
        "Ibtisam":
            name: "Ibtisam"
            id: 42
            unique: true
            ship: "B-Wing"
            sources: [ "B-Wing Expansion Pack", ]
            skill: 6
            points: 28
            slots: [
                "Elite",
                "System",
                "Cannon",
                "Torpedo",
                "Torpedo",
            ]
            text: """Beim Angreifen oder Verteidigen darfst du 1 deiner Würfel neu würfeln, sofern du mindestens 1 Stressmarker hast."""
        "Pilot der Dagger-Staffel":
            name: "Pilot der Dagger-Staffel"
            id: 43
            ship: "B-Wing"
            sources: [ "B-Wing Expansion Pack", ]
            skill: 4
            points: 24
            slots: [
                "System",
                "Cannon",
                "Torpedo",
                "Torpedo",
            ]
        "Pilot der Blauen Staffel":
            name: "Pilot der Blauen Staffel"
            id: 44
            ship: "B-Wing"
            sources: [ "B-Wing Expansion Pack", ]
            skill: 2
            points: 22
            slots: [
                "System",
                "Cannon",
                "Torpedo",
                "Torpedo",
            ]
        "Rebellenagent":
            name: "Rebellenagent"
            id: 45
            ship: "HWK-290"
            sources: [ "HWK-290 Expansion Pack", ]
            skill: 2
            points: 16
            slots: [
                "Turret",
                "Crew",
            ]
        "Roark Garnet":
            name: "Roark Garnet"
            id: 46
            unique: true
            ship: "HWK-290"
            sources: [ "HWK-290 Expansion Pack", ]
            skill: 4
            points: 19
            slots: [
                "Turret",
                "Crew",
            ]
            text: '''Wähle zu Beginn der Kampfphase 1 anderes freundliches Schiff in Reichweite 1-3. Bis zum Ende der Phase wird dieses Schiff behandelt, als hätte es einen Pilotenwert von 12.'''
        "Kyle Katarn":
            name: "Kyle Katarn"
            id: 47
            unique: true
            ship: "HWK-290"
            sources: [ "HWK-290 Expansion Pack", ]
            skill: 6
            points: 21
            slots: [
                "Elite",
                "Turret",
                "Crew",
            ]
            text: """Zu Beginn der Kampfphase darfst du einem anderen freundlichen Schiff in Reichweite 1-3 einen deiner Fokusmarker geben."""
        "Jan Ors":
            name: "Jan Ors"
            id: 48
            unique: true
            ship: "HWK-290"
            sources: [ "HWK-290 Expansion Pack", ]
            skill: 8
            points: 25
            slots: [
                "Elite",
                "Turret",
                "Crew",
            ]
            text: """Wenn ein anderes freundliches Schiff in Reichweite 1-3 angreift und du keine Stressmarker hast, darfst du 1 Stressmarker nehmen, damit dieses Schiff 1 zusätzlichen Angriffswürfel erhält."""
        "Pilot der Scimitar-Staffel":
            name: "Pilot der Scimitar-Staffel"
            id: 49
            ship: "TIE Bomber"
            sources: [ "TIE Bomber Expansion Pack", ]
            skill: 2
            points: 16
            slots: [
                "Torpedo",
                "Torpedo",
                "Missile",
                "Missile",
                "Bomb",
            ]
        "Pilot der Gamma-Staffel":
            name: "Pilot der Gamma-Staffel"
            id: 50
            ship: "TIE Bomber"
            sources: [ "TIE Bomber Expansion Pack", ]
            skill: 4
            points: 18
            slots: [
                "Torpedo",
                "Torpedo",
                "Missile",
                "Missile",
                "Bomb",
            ]
        "Captain Jonus":
            name: "Captain Jonus"
            id: 51
            unique: true
            ship: "TIE Bomber"
            sources: [ "TIE Bomber Expansion Pack", ]
            skill: 6
            points: 22
            slots: [
                "Elite",
                "Torpedo",
                "Torpedo",
                "Missile",
                "Missile",
                "Bomb",
            ]
            text: """Wenn ein anderes freundliches Schiff in Reichweite 1 mit einer Sekundärwaffe angreift, darf es bis zu 2 Angriffswürfel neu würfeln."""
        "Major Rhymer":
            name: "Major Rhymer"
            id: 52
            unique: true
            ship: "TIE Bomber"
            sources: [ "TIE Bomber Expansion Pack", ]
            skill: 7
            points: 26
            slots: [
                "Elite",
                "Torpedo",
                "Torpedo",
                "Missile",
                "Missile",
                "Bomb",
            ]
            text: """Beim Angreifen mit einer Sekundärwaffe darfst du die Reichweite der Waffe um 1 erhöhen oder verringern, bis zu einer Reichweite von 1-3."""
        "Captain Kagi":
            name: "Captain Kagi"
            id: 53
            unique: true
            ship: "Lambda-Class Shuttle"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            skill: 8
            points: 27
            slots: [
                "System",
                "Cannon",
                "Crew",
                "Crew",
            ]
            text: """Wenn ein feindliches Schiff eine Zielerfassung durchführt, muss es wenn möglich dich als Ziel erfassen."""
        "Colonel Jendon":
            name: "Colonel Jendon"
            id: 54
            unique: true
            ship: "Lambda-Class Shuttle"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            skill: 6
            points: 26
            slots: [
                "System",
                "Cannon",
                "Crew",
                "Crew",
            ]
            text: """Zu Beginn der Kampfphase darfst du 1 deiner blauen Zielerfassungsmarker auf ein freundliches Schiff in Reichweite 1 legen, das noch keinen blauen Zielerfassungsmarker hat."""
        "Captain Yorr":
            name: "Captain Yorr"
            id: 55
            unique: true
            ship: "Lambda-Class Shuttle"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            skill: 4
            points: 24
            slots: [
                "System",
                "Cannon",
                "Crew",
                "Crew",
            ]
            text: """Wenn ein anderes freundliches Schiff in Reichweite 1-2 einen Stressmarker erhalten würde und du 2 oder weniger Stressmarker hast, darfst du statt ihm diesen Marker nehmen."""
        "Pilot der Omikron-Gruppe":
            name: "Pilot der Omikron-Gruppe"
            id: 56
            ship: "Lambda-Class Shuttle"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            skill: 2
            points: 21
            slots: [
                "System",
                "Cannon",
                "Crew",
                "Crew",
            ]
        "Lieutenant Lorrir":
            name: "Lieutenant Lorrir"
            id: 57
            unique: true
            ship: "TIE Abfangjäger"
            sources: [ "Imperial Aces Expansion Pack", ]
            skill: 5
            points: 23
            slots: [ ]
            text: """When performing a barrel roll action, you may receive 1 stress token to use the (<img class="icon-bankleft" alt="Bank Left" src="images/transparent.png" /> 1) or (<img class="icon-bankright" alt="Bank Right" src="images/transparent.png" /> 1) template instead of the (<img class="icon-straight" alt="Straight" src="images/transparent.png" /> 1) template."""
        "Royal Guard Pilot":
            name: "Royal Guard Pilot"
            id: 58
            ship: "TIE Abfangjäger"
            sources: [ "Imperial Aces Expansion Pack", ]
            skill: 6
            points: 22
            slots: [
                "Elite",
            ]
        "Tetran Cowall":
            name: "Tetran Cowall"
            id: 59
            unique: true
            ship: "TIE Abfangjäger"
            sources: [ "Imperial Aces Expansion Pack", ]
            skill: 7
            points: 24
            slots: [
                "Elite",
            ]
            text: """When you reveal a <img class="icon-uturn" alt="Koiogran Turn" src="images/transparent.png" /> maneuver, you may treat the speed of that maneuver as "1," "3," or "5"."""
        "Kir Kanos":
            name: "Kir Kanos"
            id: 61
            unique: true
            ship: "TIE Abfangjäger"
            sources: [ "Imperial Aces Expansion Pack", ]
            skill: 6
            points: 24
            slots: [ ]
            text: """When attacking at Range 2-3, you may spend 1 evade token to add 1 <img class="icon-hit" alt="Hit" src="images/transparent.png" /> result to your roll."""
        "Carnor Jax":
            name: "Carnor Jax"
            id: 62
            unique: true
            ship: "TIE Abfangjäger"
            sources: [ "Imperial Aces Expansion Pack", ]
            skill: 8
            points: 26
            slots: [
                "Elite",
            ]
            text: """Enemy ships at Range 1 cannot perform focus or evade actions and cannot spend focus or evade tokens."""
        "GR-75 Medium Transport":
            name: "GR-75 Medium Transport"
            id: 63
            ship: "GR-75 Medium Transport"
            sources: [ "Rebel Transport Expansion Pack", ]
            skill: 3
            points: 30
            slots: [
                "Crew",
                "Crew",
                "Cargo",
                "Cargo",
                "Cargo",
            ]
        "Bandit Squadron Pilot":
            name: "Bandit Squadron Pilot"
            id: 64
            ship: "Z-95 Headhunter"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            skill: 2
            points: 12
            slots: [
                "Missile",
            ]
        "Unspoiled PS4 Z-95 Headhunter Pilot":
            name: "Unspoiled PS4 Z-95 Headhunter Pilot"
            id: 65
            ship: "Z-95 Headhunter"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            skill: 4
            points: 19
            slots: [
                "Missile",
            ]
        "Unspoiled PS6 Z-95 Headhunter Pilot (Lieutenant ???)":
            name: "Unspoiled PS6 Z-95 Headhunter Pilot (Lieutenant ???)"
            id: 66
            unique: true
            ship: "Z-95 Headhunter"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            skill: 6
            points: 19
            slots: [
                "Missile",
            ]
        "Unspoiled PS8 Z-95 Headhunter Pilot":
            name: "Unspoiled PS8 Z-95 Headhunter Pilot"
            id: 67
            unique: true
            ship: "Z-95 Headhunter"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            skill: 8
            points: 19
            slots: [
                "Missile",
            ]
        "Delta Squadron Pilot":
            name: "Delta Squadron Pilot"
            id: 68
            ship: "TIE Defender"
            sources: [ "TIE Defender Expansion Pack", ]
            skill: 1
            points: 30
            slots: [
                "Cannon",
                "Missile",
            ]
        "Onyx Squadron Pilot":
            name: "Onyx Squadron Pilot"
            id: 69
            ship: "TIE Defender"
            sources: [ "TIE Defender Expansion Pack", ]
            skill: 3
            points: 99
            slots: [
                "Cannon",
                "Missile",
            ]
        "Unspoiled PS6 TIE Defender Pilot":
            name: "Unspoiled PS6 TIE Defender Pilot"
            id: 70
            unique: true
            ship: "TIE Defender"
            sources: [ "TIE Defender Expansion Pack", ]
            skill: 6
            points: 99
            slots: [
                "Cannon",
                "Missile",
            ]
        "Unspoiled PS8 TIE Defender Pilot":
            name: "Unspoiled PS8 TIE Defender Pilot"
            id: 71
            unique: true
            ship: "TIE Defender"
            sources: [ "TIE Defender Expansion Pack", ]
            skill: 8
            points: 99
            slots: [
                "Cannon",
                "Missile",
            ]
        "Knave Squadron Pilot":
            name: "Knave Squadron Pilot"
            id: 72
            ship: "E-Wing"
            sources: [ "E-Wing Expansion Pack", ]
            skill: 1
            points: 27
            slots: [
                "System",
                "Torpedo",
                "Astromech",
            ]
        "Bloodmoon Squadron Pilot":
            name: "Bloodmoon Squadron Pilot"
            id: 73
            ship: "E-Wing"
            sources: [ "E-Wing Expansion Pack", ]
            skill: 3
            points: 99
            slots: [
                "System",
                "Torpedo",
                "Astromech",
            ]
        "Etahn A'baht":
            name: "Etahn A'baht"
            id: 74
            unique: true
            ship: "E-Wing"
            sources: [ "E-Wing Expansion Pack", ]
            skill: 5
            points: 32
            slots: [
                "Elite",
                "System",
                "Torpedo",
                "Astromech",
            ]
            text: """When an enemy ship inside your firing arc at Range 1-3 is defending, the attacker may change 1 of its <img class="icon-hit" alt="Hit" src="images/transparent.png" /> results to a <img class="icon-crit" alt="Crit" src="images/transparent.png" /> result."""
        "Unspoiled PS8 E-Wing Pilot":
            name: "Unspoiled PS8 E-Wing Pilot"
            id: 75
            unique: true
            ship: "E-Wing"
            sources: [ "E-Wing Expansion Pack", ]
            skill: 8
            points: 99
            slots: [
                "Elite",
                "System",
                "Torpedo",
                "Astromech",
            ]
        "Sigma Squadron Pilot":
            name: "Sigma Squadron Pilot"
            id: 76
            ship: "TIE Phantom"
            sources: [ "TIE Phantom Expansion Pack", ]
            skill: 3
            points: 25
            slots: [
                "System",
                "Crew",
            ]
        "Unspoiled PS5 TIE Phantom Pilot":
            name: "Unspoiled PS5 TIE Phantom Pilot"
            id: 77
            ship: "TIE Phantom"
            sources: [ "TIE Phantom Expansion Pack", ]
            skill: 5
            points: 99
            slots: [
                "System",
                "Crew",
            ]
        "Unspoiled PS6 TIE Phantom Pilot":
            name: "Unspoiled PS6 TIE Phantom Pilot"
            id: 78
            unique: true
            ship: "TIE Phantom"
            sources: [ "TIE Phantom Expansion Pack", ]
            skill: 6
            points: 99
            slots: [
                "System",
                "Crew",
            ]
        "Unspoiled PS7 TIE Phantom Pilot":
            name: "Unspoiled PS7 TIE Phantom Pilot"
            id: 79
            unique: true
            ship: "TIE Phantom"
            sources: [ "TIE Phantom Expansion Pack", ]
            skill: 7
            points: 99
            slots: [
                "System",
                "Crew",
            ]
        "CR90 Corvette (Fore)":
            name: "CR90 Corvette (Fore)"
            id: 80
            ship: "CR90 Corvette (Fore)"
            sources: [ "Tantive IV Expansion Pack", ]
            skill: 4
            points: 50
            slots: [
                "Crew",
                "Hardpoint",
                "Hardpoint",
                "Team",
                "Team",
                "Cargo",
            ]
        "CR90 Corvette (Aft)":
            name: "CR90 Corvette (Aft)"
            id: 81
            ship: "CR90 Corvette (Aft)"
            sources: [ "Tantive IV Expansion Pack", ]
            skill: 4
            points: 40
            slots: [
                "Crew",
                "Hardpoint",
                "Team",
                "Cargo",
            ]

    exportObj.upgrades =
        "Ionengeschütz":
            name: "Ionengeschütz"
            id: 0
            slot: "Turret"
            sources: [ "Y-Wing Expansion Pack", "HWK-290 Expansion Pack", ]
            points: 5
            attack: 3
            range: "1-2"
            text: """<strong>Angriff:</strong> Greife 1 Schiff an (es muss nicht in deinem Feuerwinkel sein).<br /><br />Wenn der Angriff trifft, nimmt das verteidigende Schiff 1 Schaden und erhält 1 Ionenmarker. Dann werden alle übrigen Würfelergebnisse negiert."""
        "Protonen-Torpedos":
            name: "Protonen-Torpedos"
            id: 1
            slot: "Torpedo"
            sources: [ "Core", "X-Wing Expansion Pack", "Y-Wing Expansion Pack", "B-Wing Expansion Pack", ]
            points: 4
            attack: 4
            range: "2-3"
            text: """<strong>Angriff (Zielerfassung):</strong>Gib eine Zielerfassung aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Du darfst eines deiner <img class="icon-focus" alt="Focus" src="images/transparent.png" /> in ein <img class="icon-crit" alt="Crit" src="images/transparent.png" /> ändern."""
        "R2 Astromechdroide":
            name: "R2 Astromechdroide"
            id: 2
            slot: "Astromech"
            sources: [ "Y-Wing Expansion Pack", ]
            points: 1
            text: """Du darfst alle Manöver mit Geschwindigkeit 1 und 2 wie grüne Manöver behandeln."""
        "R2-D2":
            name: "R2-D2"
            aka: [ "R2-D2 (Crew)", ]
            id: 3
            unique: true
            slot: "Astromech"
            sources: [ "Core", ]
            points: 4
            text: """Nachdem du ein grünes Manöver ausgeführt hast, darfst du 1 Schild wiederaufladen (bis maximal zum Schildwert)."""
        "R2-F2":
            name: "R2-F2"
            id: 4
            unique: true
            slot: "Astromech"
            sources: [ "Core", ]
            points: 3
            text: """<strong>Aktion:</strong> Erhöhe deinen Wendigkeitswert bis zum Ende der Spielrunde um 1."""
        "R5-D8":
            name: "R5-D8"
            id: 5
            unique: true
            slot: "Astromech"
            sources: [ "Y-Wing Expansion Pack", ]
            points: 3
            text: """<strong>Aktion:</strong> Wirf 1 Verteidigungswürfel.<br /><br />Lege bei <img class="icon-evade" alt="Evade" src="images/transparent.png" /> oder <img class="icon-focus" alt="Focus" src="images/transparent.png" /> 1 deiner verdeckten Schadenskarten ab."""
        "R5-K6":
            name: "R5-K6"
            id: 6
            unique: true
            slot: "Astromech"
            sources: [ "X-Wing Expansion Pack", ]
            points: 2
            text: """Wirf 1 Verteidigungswürfel nachdem du deine Zielerfassungsmarker ausgegeben hast.<br /><br />Bei <img class="icon-evade" alt="Evade" src="images/transparent.png" /> nimmst du dasselbe Schiff sofort wieder in die Zielerfassung. Für diesen Angriff kannst du die Zielerfassungsmarker nicht erneut ausgeben."""
        "R5 Astromechdroide":
            name: "R5 Astromechdroide"
            id: 7
            slot: "Astromech"
            sources: [ "X-Wing Expansion Pack", ]
            points: 1
            text: """Wähle während der Endphase 1 deiner offnen Schadenskarte mit dem Attribut <strong>Schiff</strong> und drehe sie um."""
        "Entschlossenheit":
            name: "Entschlossenheit"
            id: 8
            slot: "Elite"
            sources: [ "Core", "TIE Fighter Expansion Pack", ]
            points: 1
            text: """Wenn du eine offene Schadenskarte mit dem Attribut <b>Pilot</b> erhältst, wird diese sofort abgelegt (ohne dass der Kartentext in Kraft tritt)."""
        "Schwarmtaktik":
            name: "Schwarmtaktik"
            id: 9
            slot: "Elite"
            sources: [ "TIE Fighter Expansion Pack", "TIE Advanced Expansion Pack", ]
            points: 2
            text: """Wähle zu Beginn der Kampfphase 1 freundliches Schiff in Reichweite 1.<br /><br />Bis zum Ende dieser Phase wird das gewählte Schiff so behandelt, als hätte es denselben Pilotenwert wie du."""
        "Staffelführer":
            name: "Staffelführer"
            id: 10
            unique: true
            slot: "Elite"
            sources: [ "TIE Advanced Expansion Pack", ]
            points: 2
            text: """<strong>Aktion:</strong> Wähle ein Schiff in Reichweite 1-2 mit einem geringeren Pilotenwert als du.<br /><br />Das gewählte Schiff darf sofort 1 freie Aktion durhführen."""
        "Flugkunst":
            name: "Flugkunst"
            id: 11
            slot: "Elite"
            sources: [ "X-Wing Expansion Pack", "TIE Advanced Expansion Pack", ]
            points: 2
            text: """<strong>Aktion:</strong> Führe eine Fassrolle durch. Wenn du kein <img class="icon-barrel-roll" alt="Barrel Roll" src="images/transparent.png" />-Symbol hast, erhälst du 1 Stressmarker.<br /><br />Dann darfst du 1 feindlichen Zielerfassungsmarker von deinem Schiff entfernen."""
        "Treffsicherheit":
            name: "Treffsicherheit"
            id: 12
            slot: "Elite"
            sources: [ "Core", "X-Wing Expansion Pack", ]
            points: 3
            text: """<strong>Aktion:</strong> Wenn du in dieser Runde angreifst, darfst du eines deiner <img class="icon-focus" alt="Focus" src="images/transparent.png" /> in ein <img class="icon-crit" alt="Crit" src="images/transparent.png" /> und alle anderen <img class="icon-focus" alt="Focus" src="images/transparent.png" /> in <img class="icon-hit" alt="Hit" src="images/transparent.png" /> ändern."""
        "Erschütterungsraketen":
            name: "Erschütterungsraketen"
            id: 13
            slot: "Missile"
            sources: [ "TIE Advanced Expansion Pack", "A-Wing Expansion Pack", "Millennium Falcon Expansion Pack", ]
            points: 4
            attack: 4
            range: "2-3"
            text: """<strong>Angriff (Zielerfassung):</strong> Gib deine Zielerfassungsmarker aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Du darfst eine deiner Leerseiten in ein <img class="icon-hit" alt="Hit" src="images/transparent.png" /> ändern."""
        "Cluster-Raketen":
            name: "Cluster-Raketen"
            id: 14
            slot: "Missile"
            sources: [ "TIE Advanced Expansion Pack", "A-Wing Expansion Pack", ]
            points: 4
            attack: 3
            range: "1-2"
            text: """<strong>Angriff (Zielerfassung):</strong> Gib deine Zielerfassungsmaker aus und lege diese Karte ab, um mit dieser Sekundärwaffe <strong>zwei Mal</strong> anzugreifen."""
        "Daredevil":
            name: "Daredevil"
            id: 15
            slot: "Elite"
            sources: [ "TIE Interceptor Expansion Pack", ]
            points: 3
            text: """<strong>Aktion:</strong> Führe ein rotes (<img class="icon-turnleft" alt="Turn Left" src="images/transparent.png" /> 1) oder (<img class="icon-turnright" alt="Turn Right" src="images/transparent.png" /> 1) Manöver aus.<br /><br />Wenn du kein <img class="icon-boost" alt="Boost" src="images/transparent.png" />-Aktionssymbol hast, musst du dann 2 Angriffswürfel werfen. Du nimmst allen gewürfelten Schaden (<img class="icon-hit" alt="Hit" src="images/transparent.png" />) und kritischen Schaden (<img class="icon-crit" alt="Crit" src="images/transparent.png" />)."""
        "Schwer zu Treffen":
            name: "Schwer zu Treffen"
            id: 16
            slot: "Elite"
            sources: [ "TIE Interceptor Expansion Pack", "Millennium Falcon Expansion Pack", ]
            points: 2
            text: """Wenn du verteidigst, darfst du 1 Stressmarker nehmen, um 1 Angriffswürfel zu wählen. Diesen muss der Angreifer neu würfeln.<br /><br />Du kannst diese Fähigkeit nicht einsetzen, solange du 1 oder mehrere Stressmarker hast."""
        "Lenkraketen":
            name: "Lenkraketen"
            id: 17
            slot: "Missile"
            sources: [ "A-Wing Expansion Pack", "Slave I Expansion Pack", ]
            attack: 4
            range: "2-3"
            points: 5
            text: """<strong>Angriff (Zielerfassung):</strong> Lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Bei diesem Angriff kann der Verteidiger keine Ausweichmarker ausgeben."""
        "Bis an die Grenzen":
            name: "Bis an die Grenzen"
            id: 18
            slot: "Elite"
            sources: [ "A-Wing Expansion Pack", "Imperial Aces Expansion Pack", ]
            points: 3
            text: """Einmal pro Runde darfst du nach dem Durchführen einer Aktion eine freie Aktion aus deiner Aktionsleiste durhführen.<br /><br />Dann erhältst du 1 Stressmarker."""
        "Meisterschütze":
            name: "Meisterschütze"
            id: 19
            slot: "Elite"
            sources: [ "A-Wing Expansion Pack", ]
            points: 1
            text: """Du darfst die Bedingung "Angriff (Zielerfassung):" in "Angriff (Fokussierung):" ändern.<br /><br />Wenn ein Angriff das Ausgeben von Zielerfassungsmarkern erfordert, darfst du stattdessen auch einen Fokusmarker ausgeben."""
        "Aggressiv":
            name: "Aggressiv"
            id: 20
            slot: "Elite"
            sources: [ "Slave I Expansion Pack", ]
            points: 4
            text: """<strong>Aktion:</strong> Bis zum Ende der Runde steigt dein Primärwaffenwert um 1, dafür sinkt dein Wendigkeitswert um 1."""
        "Bordschütze":
            name: "Bordschütze"
            id: 21
            slot: "Crew"
            sources: [ "Slave I Expansion Pack", ]
            points: 5
            text: """Führe, unmittelbar nachdem du mit einem Angriff verfehlt hast, einen weiteren Angriff mit deiner Primärwaffe aus. Danach kannst du in dieser Runde nicht noch einmal angreifen."""
        "Ionenkanonen":
            name: "Ionenkanonen"
            id: 22
            slot: "Cannon"
            sources: [ "Slave I Expansion Pack", "B-Wing Expansion Pack", "TIE Defender Expansion Pack" ]
            points: 3
            attack: 3
            range: "1-3"
            text: """<strong>Angriff:</strong> Greife 1 Schiff mit dieser Sekundärwaffe an.<br /><br />Wenn du triffst, nimmt das verteidigende Schiff 1 Schaden und erhält 1 Ionenmarker. Dann werden <b>alle</b> übrigen Würfelergebnisse negiert."""
        "Schwere Laserkanone":
            name: "Schwere Laserkanone"
            id: 23
            slot: "Cannon"
            sources: [ "Slave I Expansion Pack", "Lambda-Class Shuttle Expansion Pack", ]
            points: 7
            attack: 4
            range: "2-3"
            text: """<strong>Attack:</strong> Greife 1 Schiff mit dieser Sekundärwaffe an.<br /><br />Unmittelbar nach dem Angriffswurf musst du alle <img class="icon-crit" alt="Crit" src="images/transparent.png" /> in <img class="icon-hit" alt="Hit" src="images/transparent.png" /> ändern."""
        "Seismische Bomben":
            name: "Seismische Bomben"
            id: 24
            slot: "Bomb"
            sources: [ "Slave I Expansion Pack", "TIE Bomber Expansion Pack", ]
            points: 2
            text: """Nach dem Aufdecken deines Manöverrads darfst du diese Karte ablegen um 1 Seismischen Bomben-Marker zu <strong>legen</strong>.<br /><br />Der Marker <strong>detoniert</strong> am Ende der Aktivierungsphase."""
        "Angeheuerter Kopilot":
            name: "Angeheuerter Kopilot"
            id: 25
            slot: "Crew"
            sources: [ "Slave I Expansion Pack", ]
            points: 2
            text: """Wenn du ein Ziel in Reichweite 3 angreifst, darfst du eines deiner <img class="icon-hit" alt="Hit" src="images/transparent.png" />  in ein <img class="icon-crit" alt="Crit" src="images/transparent.png" /> ändern."""
        "Angriffsraketen":
            name: "Angriffsraketen"
            id: 26
            slot: "Missile"
            sources: [ "Millennium Falcon Expansion Pack", "Slave I Expansion Pack", "TIE Bomber Expansion Pack", "Z-95 Headhunter Expansion Pack" ]
            points: 5
            attack: 4
            range: "2-3"
            text: """Angriff (Zielerfassung): Gib deine Zielerfassungsmarker aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Wenn du triffst, nimmt jedes andere Schiff in Reichweite 1 des verteidigenden Schiffs 1 Schaden."""
        "Veteraneninstinkte":
            name: "Veteraneninstinkte"
            id: 27
            slot: "Elite"
            sources: [ "Millennium Falcon Expansion Pack", "Slave I Expansion Pack", ]
            points: 1
            text: """Dein Pilotenwert steigt um 2."""
            modifier_func: (stats) ->
                stats.skill += 2
        "Annährungsminen":
            name: "Annährungsminen"
            id: 28
            slot: "Bomb"
            sources: [ "Slave I Expansion Pack", ]
            points: 3
            text: """<strong>Aktion:</strong> Lege diese Karte ab, um 1 Annährungsminen-Marker zu <strong>legen</strong>.<br /><br />Der Marker <strong>detoniert</strong>, wenn sich beim Ausführen eines Manövers die Basis eines Schiffs oder die Manöverschablone mit dem Marker überschneidet."""
        "Waffen-Techniker":
            name: "Waffen-Techniker"
            id: 29
            slot: "Crew"
            sources: [ "Millennium Falcon Expansion Pack", "Slave I Expansion Pack", "Lambda-Class Shuttle Expansion Pack", ]
            points: 3
            text: """Du darfst 2 verschiedene Schiffe gleichzeitig in Zielerfassung haben (maximal 1 Zielerfassung pro feindlichem Schiff).<br /><br />Wenn du die Aktion Zielerfassung durchführst darfst du zwei verschiedene Schiffe als Ziele erfassen."""
        "Das Feuer auf mich ziehen":
            name: "Das Feuer auf mich ziehen"
            id: 30
            slot: "Elite"
            sources: [ "Millennium Falcon Expansion Pack", ]
            points: 1
            text: """Wenn ein freundliches Schiff in Reichweite 1 durch einen Angriff getroffen wird, darfst du anstelle dieses Schiffs den Schaden für 1 nicht-negiertes <img class="icon-crit" alt="Crit" src="images/transparent.png" /> auf dich nehmen."""
        "Luke Skywalker":
            name: "Luke Skywalker"
            id: 31
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            sources: [ "Millennium Falcon Expansion Pack", ]
            points: 7
            text: """Führe, unmittelbar nachdem du mit einem Angriff verfehlt hast, einen weiteren Angriff mit deiner Primärwaffe aus. Du darfst ein <img class="icon-focus" alt="Focus" src="images/transparent.png" /> in ein <img class="icon-hit" alt="Hit" src="images/transparent.png" /> ändern. Danach kannst du in dieser Runde nicht noch einmal angreifen."""
        "Nien Nunb":
            name: "Nien Nunb"
            id: 32
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            sources: [ "Millennium Falcon Expansion Pack", ]
            points: 1
            text: """Du darfst alle <img class="icon-straight" alt="Straight" src="images/transparent.png" />-Manöver wie grüne Manöver behandeln."""
        "Chewbacca":
            name: "Chewbacca"
            id: 33
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            sources: [ "Millennium Falcon Expansion Pack", ]
            points: 4
            text: """Wenn du eine Schadenskarte erhältst, darfst du sie sofort ablegen und 1 Schild wiederaufladen.<br /><br />Danach wird diese Aufwertungskarte abgelegt."""
        "Verstärkte Protonen-Torpedos":
            name: "Verstärkte Protonen-Torpedos"
            id: 34
            slot: "Torpedo"
            attack: 5
            range: "1"
            sources: [ "B-Wing Expansion Pack", "TIE Bomber Expansion Pack", ]
            points: 6
            text: """<strong>Angriff (Zielerfassung):</strong> Gib eine Zielerfassung aus und lege diese Karte ab um mit dieser Sekundärwaffe anzugreifen.<br /><br />Du darfst bis zu 3 deiner Leerseiten in <img class="icon-focus" alt="Focus" src="images/transparent.png" /> ändern."""
        "Repertierblaster":
            name: "Repertierblaster"
            id: 35
            slot: "Cannon"
            attack: 3
            range: "1"
            sources: [ "B-Wing Expansion Pack", ]
            points: 5
            text: """<strong>Angriff:</strong> Greife 1 Schiff mit dieser Sekundärwaffe an.<br /><br />Deine <img class="icon-hit" alt="Hit" src="images/transparent.png" /> können von Verteidigungswürfeln nicht negiert werden.<br /><br />Der Verteidiger darf <img class="icon-crit" alt="Crit" src="images/transparent.png" /> negieren, bevor alle <img class="icon-hit" alt="Hit" src="images/transparent.png" /> negiert wurden."""
        "Feuerkontrollsystem":
            name: "Feuerkontrollsystem"
            id: 36
            slot: "System"
            sources: [ "B-Wing Expansion Pack", "TIE Phantom Expansion Pack" ]
            points: 2
            text: """Nachdem du angegriffen hast, darfst du eine Zielerfassung auf den Verteidiger durchführen."""
        "Blastergeschütz":
            name: "Blastergeschütz"
            id: 37
            slot: "Turret"
            sources: [ "HWK-290 Expansion Pack", ]
            points: 4
            attack: 3
            range: "1-2"
            text: """<strong>Angriff (Fokussierung):</strong> Gib 1 Fokusmarker aus, um 1 Schiff mit dieser Sekundärwaffe anzugreifen (es muss nicht in deinem Feuerwinkel sein)."""
        "Aufklärungs-Experte":
            name: "Aufklärungs-Experte"
            id: 38
            slot: "Crew"
            sources: [ "HWK-290 Expansion Pack", "TIE Phantom Expansion Pack" ]
            points: 3
            text: """Wenn du die Aktion Fokussieren durchführst, lege 1 zusätzlichen Fokusmarker neben dein Schiff."""
        "Saboteur":
            name: "Saboteur"
            id: 39
            slot: "Crew"
            sources: [ "HWK-290 Expansion Pack", ]
            points: 2
            text: """<strong>Aktion:</strong> Wähle 1 feindliches Schiff in Reichweite 1 und wirf 1 Angriffswürfel. Bei <img class="icon-hit" alt="Hit" src="images/transparent.png" /> oder <img class="icon-crit" alt="Crit" src="images/transparent.png" />, wähle 1 zufällige verdeckte Schadenskarte des Schiffs, decke sie auf und handle sie ab."""
        "Geheimagent":
            name: "Geheimagent"
            id: 40
            slot: "Crew"
            sources: [ "HWK-290 Expansion Pack", "Lambda-Class Shuttle Expansion Pack", ]
            points: 1
            text: """Wähle zu Beginn der Aktivierungsphase 1 feindliches Schiff in Reichweite 1-2. Du darfst dir das ausgewählte Manöver dieses Schiffs ansehen."""
        "Protonenbomben":
            name: "Protonenbomben"
            id: 41
            slot: "Bomb"
            sources: [ "TIE Bomber Expansion Pack", ]
            points: 5
            text: """Nach dem Aufdecken deines Manöverrads darfst du diese Karte ablegen um 1 Protonenbomben-Marker zu <strong>legen</strong>.<br /><br />Der Marker <strong>detoniert</strong> am Ende der Aktivierungsphase."""
        "Adrenalinschub":
            name: "Adrenalinschub"
            id: 42
            slot: "Elite"
            sources: [ "TIE Bomber Expansion Pack", ]
            points: 1
            text: """Wenn du ein rotes Manöver aufdeckst, darfst du diese Karte ablegen, um das Manöver bis zum Ende der Aktivierungsphase wie ein weißes Manöver zu behandeln."""
        "Verbesserte Sensoren":
            name: "Verbesserte Sensoren"
            id: 43
            slot: "System"
            sources: [ "Lambda-Class Shuttle Expansion Pack", "E-Wing Expansion Pack" ]
            points: 3
            text: """Unmittelbar vor dem Aufdecken deines Manövers darfst du 1 freie Aktion durchführen.<br /><br />Wenn du diese Fähigkeit nutzt, musst du den Schritt "Aktion durchführen" in dieser Runde überspringen."""
        "Störsender":
            name: "Störsender"
            id: 44
            slot: "System"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 4
            text: """Beim Verteidigen darfst du eines der <img class="icon-hit" alt="Hit" src="images/transparent.png" /> des Angreifers in ein <img class="icon-focus" alt="Focus" src="images/transparent.png" /> ändern.<br /><br />Der Angreifer darf den veränderten Würfel nicht neu würfeln."""
        "Darth Vader":
            name: "Darth Vader"
            id: 45
            unique: true
            faction: "Galactic Empire"
            slot: "Crew"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 3
            text: """Nachdem du ein feindliches Schiff angegriffen hast, darfst du 2 Schaden nehmen, damit dieses Schiff 1 kritischen Schaden nimmt."""
        "Gefangener Rebell":
            name: "Gefangener Rebell"
            id: 46
            unique: true
            faction: "Galactic Empire"
            slot: "Crew"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 3
            text: """Ein Mal pro Runde erhält das erste Schiff, das einen Angriff gegen dich ansagt, sofort 1 Stressmarker."""
        "Fluglehrer":
            name: "Fluglehrer"
            id: 47
            slot: "Crew"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 4
            text: """Beim Verteidigen darfst du 1 deiner <img class="icon-focus" alt="Focus" src="images/transparent.png" /> neu würfeln. Hat der Angreifer einen Pilotenwert von 2 oder weniger, darfst du stattdessen 1 deiner Leerseiten neu würfeln."""
        "Navigator":
            name: "Navigator"
            id: 48
            slot: "Crew"
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 3
            text: """Nach dem Aufdecken deines Manöverrads darfst du das Rad auf ein anderes Manöver mit gleicher Flugrichtung drehen.<br /><br />Wenn du bereits Stressmarker hast, darfst du es nicht auf ein rotes Manöver drehen."""
        "Opportunist":
            name: "Opportunist"
            id: 49
            slot: "Elite"
            sources: [ "Imperial Aces Expansion Pack", ]
            points: 4
            text: """When attacking, if the defender does not have any focus or evade tokens, you may receive 1 stress token to roll 1 additional attack die.<br /><br />You cannot use this ability if you have any stress tokens."""
        "Comms Booster":
            name: "Comms Booster"
            id: 50
            slot: "Cargo"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 4
            text: """<strong>Energy:</strong> Spend 1 energy to remove all stress tokens from a friendly ship at Range 1-3.  Then assign 1 focus token to that ship."""
        "Slicer Tools":
            name: "Slicer Tools"
            id: 51
            slot: "Cargo"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 7
            text: """<strong>Action:</strong> Choose 1 or more ships at Range 1-3 that have a stress token.  For each ship chosen, you may spend 1 energy to cause that ship to suffer 1 damage."""
        "Shield Projector":
            name: "Shield Projector"
            id: 52
            slot: "Cargo"
            sources: [ "Rebel Transport Expansion Pack", ]
            points: 4
            text: """When an enemy ship is declaring either a small or large ship as the target of its attack, you may spend 3 energy to force that ship to target you if possible."""
        "Ion Pulse Missiles":
            name: "Ion Pulse Missiles"
            id: 53
            slot: "Missile"
            sources: [ "Z-95 Headhunter Expansion Pack", "TIE Defender Expansion Pack" ]
            points: 3
            attack: 3
            range: """2-3"""
            text: """<strong>Attack (target lock):</strong> Discard this card to perform this attack.<br /><br />If this attack hits, the defender suffers 1 damage and receives 2 ion tokens.  Then cancel <strong>all<strong> dice results."""
        "Wingman":
            name: "Wingman"
            id: 54
            slot: "Elite"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            points: 99
            text: """This card has not yet been released."""
        "Decoy":
            name: "Decoy"
            id: 55
            slot: "Elite"
            sources: [ "Z-95 Headhunter Expansion Pack", ]
            points: 99
            text: """This card has not yet been released."""
        "Outmaneuver":
            name: "Outmaneuver"
            id: 56
            slot: "Elite"
            sources: [ "TIE Defender Expansion Pack", "E-Wing Expansion Pack" ]
            points: 99
            text: """This card has not yet been released."""
        "Predator":
            name: "Predator"
            id: 57
            slot: "Elite"
            sources: [ "TIE Defender Expansion Pack", ]
            points: 99
            text: """This card has not yet been released."""
        "Flechette Torpedoes":
            name: "Flechette Torpedoes"
            id: 58
            slot: "Torpedo"
            sources: [ "E-Wing Expansion Pack", ]
            points: 2
            attack: 3
            range: """2-3"""
            text: """This card has not yet been released."""
        "R7 Astromech":
            name: "R7 Astromech"
            id: 59
            slot: "Astromech"
            sources: [ "E-Wing Expansion Pack", ]
            points: 99
            text: """This card has not yet been released."""
        "R7-T1":
            name: "R7-T1"
            id: 60
            unique: true
            slot: "Astromech"
            sources: [ "E-Wing Expansion Pack", ]
            points: 3
            text: """<strong>Action:</strong> Choose an enemy ship at Range 1-2.  If you are inside that ship's firing arc, you may acquire a target lock on that ship.  Then, you may perform a free boost action."""
        "Tactician":
            name: "Tactician"
            id: 61
            slot: "Crew"
            sources: [ "TIE Phantom Expansion Pack", ]
            points: 99
            text: """This card has not yet been released."""
        "R2-D2 (Crew)":
            name: "R2-D2 (Crew)"
            aka: [ "R2-D2", ]
            id: 62
            unique: true
            slot: "Crew"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
            faction: "Rebel Alliance"
            text: """At the end of the End phase, if you have no shields, you may recover 1 shield and roll 1 attack die.  On a <img class="icon-hit" alt="Hit" src="images/transparent.png" /> result, randomly flip 1 of your facedown Damage cards faceup and resolve it."""
        "C-3PO":
            name: "C-3PO"
            id: 63
            unique: true
            slot: "Crew"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 3
            faction: "Rebel Alliance"
            text: """Once per round, before you roll 1 or more defense dice, you may guess aloud a number of <img class="icon-evade" alt="Evade" src="images/transparent.png" /> results.  If you roll that many <img class="icon-evade" alt="Evade" src="images/transparent.png" /> results (before modifying dice), add 1 <img class="icon-evade" alt="Evade" src="images/transparent.png" /> result."""
        "Single Turbolasers":
            name: "Single Turbolasers"
            id: 64
            slot: "Hardpoint"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 8
            energy: 2
            attack: 4
            range: "3-5"
            text: """<strong>Attack (Energy):</strong> Spend 2 energy from this card to perform this attack.  The defender doubles his agility value against this attack.  You may change 1 of your <img class="icon-focus" alt="Focus" src="images/transparent.png" /> results to a <img class="icon-hit" alt="Hit" src="images/transparent.png" /> result."""
        "Quad Laser Cannons":
            name: "Quad Laser Cannons"
            id: 65
            slot: "Hardpoint"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 6
            energy: 2
            attack: 3
            range: "1-2"
            text: """<strong>Attack (Energy):</strong> Spend 1 energy from this card to perform this attack.  If this attack does not hit, you may immediately spend 1 energy from this card to perform this attack again."""
        "Tibanna Gas Supplies":
            name: "Tibanna Gas Supplies"
            id: 66
            slot: "Cargo"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
            limited: true
            text: """<strong>Energy:</strong> You may discard this card to gain 3 energy."""
        "Ionization Reactor":
            name: "Ionization Reactor"
            id: 67
            slot: "Cargo"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
            energy: 5
            limited: true
            text: """<strong>Energy:</strong> Spend 5 energy from this card and discard this card to cause each other ship at Range 1 to suffer 1 damage and receive 1 ion token."""
        "Engine Booster":
            name: "Engine Booster"
            id: 68
            slot: "Cargo"
            sources: [ "Tantive IV Expansion Pack", ]
            points: 3
            limited: true
            text: """Immediately before you reveal your maneuver dial, you may spend 1 energy to execute a white (<img class="icon-straight" alt="Straight" src="images/transparent.png" /> 1) maneuver.  You cannot use this ability if you would overlap another ship."""

    exportObj.modifications =
        "Tarnvorrichtung":
            name: "Tarnvorrichtung"
            id: 1
            points: 3
            sources: [ "Slave I Expansion Pack", ]
            text: """Dein Wendigkeitswert steigt um 1. Lege diese Karte ab, wenn du von einem Angriff getroffen wirst."""
            modifier_func: (stats) ->
                stats.agility += 1
        "Verbesserte Schilde":
            name: "Verbesserte Schilde"
            id: 2
            points: 4
            sources: [ "Millennium Falcon Expansion Pack", "Imperial Aces Expansion Pack", ]
            text: """Dein Schildwert steigt um 1."""
            modifier_func: (stats) ->
                stats.shields += 1
        "Verbessertes Triebwerk":
            name: "Verbessertes Triebwerk"
            id: 3
            points: 4
            sources: [ "Millennium Falcon Expansion Pack", ]
            text: """Füge deiner Aktionsleiste ein <img class="icon-boost" alt="Boost" src="images/transparent.png" />-Symbol hinzu."""
            modifier_func: (stats) ->
                stats.actions.push 'Boost' if 'Boost' not in stats.actions
        "Kurzstreckenlaser":
            name: "Kurzstreckenlaser"
            id: 4
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            points: 2
            text: """Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, das zur Überschneidung mit deinem Schiff führt, wirf 1 Angriffswürfel. Bei <img class="icon-hit" alt="Hit" src="images/transparent.png" /> oder <img class="icon-crit" alt="Crit" src="images/transparent.png" /> nimmt das feindliche Schiff 1 Schaden."""
            restriction_func: (ship) ->
                ship.data.large ? false
        "Targeting Computer":
            name: "Targeting Computer"
            id: 5
            sources: [ "Imperial Aces Expansion Pack", ]
            points: 2
            text: """Your action bar gains the <img class="icon-target-lock" alt="Target Lock" src="images/transparent.png" /> action icon."""
            modifier_func: (stats) ->
                stats.actions.push 'Target Lock' if 'Target Lock' not in stats.actions
        "Hull Upgrade":
            name: "Hull Upgrade"
            id: 6
            sources: [ "Imperial Aces Expansion Pack", ]
            points: 3
            text: """Increase your hull value by 1."""
            modifier_func: (stats) ->
                stats.hull += 1
        "Munitions Failsafe":
            name: "Munitions Failsafe"
            id: 7
            sources: [ "Z-95 Headhunter Expansion Pack", "TIE Defender Expansion Pack" ]
            points: 99
            text: """This card has not yet been released."""
        "Stygium Particle Accelerator":
            name: "Stygium Particle Accelerator"
            id: 8
            sources: [ "TIE Phantom Expansion Pack", ]
            points: 2
            text: """This card has not yet been released."""
        "Advanced Cloaking Device":
            name: "Advanced Cloaking Device"
            id: 9
            sources: [ "TIE Phantom Expansion Pack", ]
            points: 99
            text: """This card has not yet been released."""
            restriction_func: (ship) ->
                ship.data.name == "TIE Phantom"


    exportObj.titles =
        "Sklave I":
            name: "Sklave I"
            id: 1
            sources: [ "Slave I Expansion Pack", ]
            unique: true
            points: 0
            ship: "Firespray-31"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Torpedo"
                },
            ]
            text: """Füge deiner Aktionsleiste ein <img class="icon-torpedo" alt="Torpedo" src="images/transparent.png" />-Symbol hinzu."""
        "Millennium Falke":
            name: "Millennium Falke"
            id: 2
            sources: [ "Millennium Falcon Expansion Pack", ]
            unique: true
            points: 1
            ship: "YT-1300"
            actions: "Evade"
            text: """Füge deiner Aktionsleiste ein <img class="icon-evade" alt="Evade" src="images/transparent.png" />-Symbol hinzu."""
            modifier_func: (stats) ->
                stats.actions.push 'Evade' if 'Evade' not in stats.actions
        "Moldy Crow":
            name: "Moldy Crow"
            id: 3
            sources: [ "HWK-290 Expansion Pack", ]
            unique: true
            points: 3
            ship: "HWK-290"
            text: """In der Endphase werden von diesem Schiff keine unbenutzen Fokusmarker entfernt."""
        "ST-321":
            name: "ST-321"
            id: 4
            sources: [ "Lambda-Class Shuttle Expansion Pack", ]
            unique: true
            points: 3
            ship: "Lambda-Class Shuttle"
            text: """Wenn du eine Zielerfassung durchführst, darfst du ein beliebiges feindliches Schiff auf der Spielfläche als Ziel erfassen."""
        "Royal Guard TIE":
            name: "Royal Guard TIE"
            id: 5
            sources: [ "Imperial Aces Expansion Pack", ]
            points: 0
            ship: "TIE Abfangjäger"
            text: """You may equip up to 2 different Modification upgrades (instead of 1).<br /><br />You cannot equip this card if your pilot skill value is "4" or lower."""
            confersAddons: [
                {
                    type: exportObj.Modification,
                },
            ]
            restriction_func: (ship) ->
                ship.effectiveStats().skill > 4
        "Dodonna's Pride":
            name: "Dodonna's Pride"
            id: 6
            unique: true
            sources: [ "Tantive IV Expansion Pack", ]
            points: 4
            ship: "CR90 Corvette (Fore)"
            text: """When you perform a coordinate action, you may choose 2 friendly ships (instead of 1).  Those ships may each perform 1 free action."""

    exportObj.expansions = {}

    exportObj.pilotsById = {}
    for pilot_name, pilot of exportObj.pilots
        exportObj.pilotsById[pilot.id] = pilot
        for source in pilot.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.pilotsById).length != Object.keys(exportObj.pilots).length
        throw "At least one pilot shares an ID with another"

    exportObj.upgradesById = {}
    for upgrade_name, upgrade of exportObj.upgrades
        exportObj.upgradesById[upgrade.id] = upgrade
        for source in upgrade.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.upgradesById).length != Object.keys(exportObj.upgrades).length
        throw "At least one upgrade shares an ID with another"

    exportObj.modificationsById = {}
    for modification_name, modification of exportObj.modifications
        exportObj.modificationsById[modification.id] = modification
        for source in modification.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.modificationsById).length != Object.keys(exportObj.modifications).length
        throw "At least one modification shares an ID with another"

    exportObj.titlesById = {}
    for title_name, title of exportObj.titles
        exportObj.titlesById[title.id] = title if title.text?
        for source in title.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.titlesById).length != Object.keys(exportObj.titles).length
        throw "At least one title shares an ID with another"

    exportObj.titlesByShip = {}
    for title_name, title of exportObj.titles
        if title.ship not of exportObj.titlesByShip
            exportObj.titlesByShip[title.ship] = []
        exportObj.titlesByShip[title.ship].push title

    exportObj.expansions = Object.keys(exportObj.expansions).sort()
