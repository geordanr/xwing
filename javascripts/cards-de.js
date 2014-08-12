(function() {
  var exportObj;

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  if (exportObj.codeToLanguage == null) {
    exportObj.codeToLanguage = {};
  }

  exportObj.codeToLanguage.de = 'Deutsch';

  if (exportObj.translations == null) {
    exportObj.translations = {};
  }

  exportObj.translations.Deutsch = {
    action: {
      "Barrel Roll": "Fassrolle",
      "Boost": "Schub",
      "Evade": "Ausweichen",
      "Focus": "Fokussierung",
      "Target Lock": "Zielerfassung",
      "Recover": "Aufladen",
      "Reinforce": "Verstärken",
      "Jam": "Störsignal",
      "Coordinate": "Koordination",
      "Cloak": "Tarnen"
    },
    slot: {
      "Astromech": "Astromech",
      "Bomb": "Bombe",
      "Cannon": "Kanone",
      "Crew": "Crew",
      "Elite": "Elite",
      "Missile": "Rakete",
      "System": "System",
      "Torpedo": "Torpedo",
      "Turret": "Geschützturm",
      "Cargo": "Fracht",
      "Hardpoint": "Hardpoint",
      "Team": "Team"
    },
    sources: {
      "Core": "Grundspiel",
      "A-Wing Expansion Pack": "A-Wing Erweiterung",
      "B-Wing Expansion Pack": "B-Wing Erweiterung",
      "X-Wing Expansion Pack": "X-Wing Erweiterung",
      "Y-Wing Expansion Pack": "Y-Wing Erweiterung",
      "Millennium Falcon Expansion Pack": "Millenium Falke Erweiterung",
      "HWK-290 Expansion Pack": "HWK-290 Erweiterung",
      "TIE Fighter Expansion Pack": "TIE-Fighter Erweiterung",
      "TIE Interceptor Expansion Pack": "TIE-Abfangjäger Erweiterung",
      "TIE Bomber Expansion Pack": "TIE-Bomber Erweiterung",
      "TIE Advanced Expansion Pack": "TIE-Advanced Erweiterung",
      "Lambda-Class Shuttle Expansion Pack": "Raumfähre der Lambda-Klasse Erweiterung",
      "Slave I Expansion Pack": "Sklave I Erweiterung",
      "Imperial Aces Expansion Pack": "Fliegerasse des Imperiums Erweiterung",
      "Rebel Transport Expansion Pack": "Rebellentransporter Erweiterung",
      "Z-95 Headhunter Expansion Pack": "Z-95-Kopfjäger Erweiterung",
      "TIE Defender Expansion Pack": "TIE-Jagdbomber Erweiterung",
      "E-Wing Expansion Pack": "E-Wing Erweiterung",
      "TIE Phantom Expansion Pack": "TIE-Phantom Erweiterung",
      "Tantive IV Expansion Pack": "Tantive IV Erweiterung",
      "Rebel Aces Expansion Pack": "Fliegerasse der Rebellenallianz Erweiterung",
      "YT-2400 Freighter Expansion Pack": "YT-2400 Freighter Expansion Pack",
      "VT-49 Decimator Expansion Pack": "VT-49 Decimator Expansion Pack"
    },
    ui: {
      shipSelectorPlaceholder: "Wähle ein Schiff",
      pilotSelectorPlaceholder: "Wähle einen Piloten",
      upgradePlaceholder: function(translator, language, slot) {
        return "kein " + (translator(language, 'slot', slot)) + " Upgrade";
      },
      modificationPlaceholder: "keine Modifikation",
      titlePlaceholder: "kein Titel",
      upgradeHeader: function(translator, language, slot) {
        return "" + (translator(language, 'slot', slot)) + " Upgrade";
      },
      unreleased: "unveröffentlicht",
      epic: "Episch"
    },
    byCSSSelector: {
      '.translate.sort-cards-by': 'Sortiere Karten per',
      '.xwing-card-browser option[value="name"]': 'Name',
      '.xwing-card-browser option[value="source"]': 'Quelle',
      '.xwing-card-browser option[value="type-by-points"]': 'Typ (Punkte)',
      '.xwing-card-browser option[value="type-by-name"]': 'Typ (Name)',
      '.xwing-card-browser .translate.select-a-card': 'Wähle eine Karte aus der Liste.',
      '.xwing-card-browser .info-range td': 'Reichweite',
      '.info-well .info-ship td.info-header': 'Schiff',
      '.info-well .info-skill td.info-header': 'Skill',
      '.info-well .info-actions td.info-header': 'Aktionen',
      '.info-well .info-upgrades td.info-header': 'Upgrades',
      '.info-well .info-range td.info-header': 'Reichweite',
      '.clear-squad': 'Neues Squad',
      '.save-list': 'Speichern',
      '.save-list-as': 'Speichern als…',
      '.delete-list': 'Löschen',
      '.backend-list-my-squads': 'Squad laden',
      '.view-as-text': '<span class="hidden-phone"><i class="icon-print"></i>&nbsp;Drucken/Anzeigen als </span>Text',
      '.randomize': 'Zufallsliste!',
      '.randomize-options': 'Zufallslistenoptionen…',
      '.bbcode-list': 'Kopiere den BBCode von unten und füge ihn in deine Forenposts ein.<textarea></textarea>',
      '.vertical-space-checkbox': "<input type=\"checkbox\" class=\"toggle-vertical-space\" /> Platz für Schadenskarten und Upgrades im Druck berücksichtigen.",
      '.print-list': '<i class="icon-print"></i>&nbsp;Print',
      '.do-randomize': 'Zufall!',
      '#empireTab': 'Galaktisches Imperium',
      '#rebelTab': 'Rebellen Allianz',
      '#browserTab': 'Karten Browser',
      '#aboutTab': 'Über'
    },
    singular: {
      'pilots': 'Pilot',
      'modifications': 'Modifikation',
      'titles': 'Titel'
    },
    types: {
      'Pilot': 'Pilot',
      'Modification': 'Modifikation',
      'Title': 'Titel'
    }
  };

  if (exportObj.cardLoaders == null) {
    exportObj.cardLoaders = {};
  }

  exportObj.cardLoaders.Deutsch = function() {
    var basic_cards, modification_translations, pilot_translations, title_translations, upgrade_translations;
    exportObj.cardLanguage = 'Deutsch';
    basic_cards = exportObj.basicCardData();
    exportObj.ships = basic_cards.ships;
    exportObj.renameShip('TIE Interceptor', 'TIE-Abfangjäger');
    exportObj.renameShip('Z-95 Headhunter', 'Z-95-Kopfjäger');
    exportObj.renameShip('TIE Defender', 'TIE-Jagdbomber');
    exportObj.renameShip('Lambda-Class Shuttle', 'Raumfähre der Lambda-Klasse');
    exportObj.renameShip('GR-75 Medium Transport', 'Medium-Transporter GR-75');
    exportObj.renameShip('CR90 Corvette (Fore)', 'CR90-Korvette (Bug)');
    exportObj.renameShip('CR90 Corvette (Aft)', 'CR90-Korvette (Heck)');
    pilot_translations = {
      "Wedge Antilles": {
        text: "Wenn du angreifst, sinkt der Wendigkeitswert des Verteidigers um 1 (Minimum 0)."
      },
      "Garven Dreis": {
        text: "Wenn du einen Fokusmarker ausgibst, darfst du ihn auf ein anderes freundliches Schiff in Reichweite 1-2 legen (anstatt ihn abzulegen)."
      },
      "Red Squadron Pilot": {
        name: "Pilot der Rot-Staffel"
      },
      "Rookie Pilot": {
        name: "Anfängerpilot"
      },
      "Biggs Darklighter": {
        text: "Andere freundliche Schiffe in Reichweite 1 dürfen nur dann angegriffen werden, wenn der Angreifer dich nicht zum Ziel bestimmen kann."
      },
      "Luke Skywalker": {
        text: "Wenn du verteidigst, kannst du 1 deiner %FOCUS% in ein %EVADE% ändern."
      },
      "Gray Squadron Pilot": {
        name: "Pilot der Grau-Staffel"
      },
      '"Dutch" Vander': {
        text: "Wähle ein anderes freundliches Schiff in Reichweite 1-2, nachdem du eine Zielerfassung durchgeführt hast. Das gewählte Schiff darf sofort ebenfalls eine Zielerfassung durchführen."
      },
      "Horton Salm": {
        text: "Wenn du ein Ziel in Reichweite 2-3 angreifst, darfst du beliebig viele Leerseiten neu würfeln."
      },
      "Gold Squadron Pilot": {
        name: "Pilot der Gold-Staffel"
      },
      "Academy Pilot": {
        name: "Pilot der Akademie"
      },
      "Obsidian Squadron Pilot": {
        name: "Pilot der Obsidian-Staffel"
      },
      "Black Squadron Pilot": {
        name: "Pilot der Schwarz-Staffel"
      },
      '"Winged Gundark"': {
        name: '"Geflügelter Gundark"',
        text: "Wenn du ein Ziel in Reichweite 1 angreifst, darfst du eines deiner %HIT% in ein %CRIT% ändern."
      },
      '"Night Beast"': {
        name: '"Nachtbestie"',
        text: "Nachdem du ein grünes Manöver ausgeführt hast, darfst du als freie Aktion eine Fokussierung durchführen."
      },
      '"Backstabber"': {
        text: "Wenn du bei deinem Angriff nicht im Feuerwinkel des Verteidigers bist, erhältst du 1 zusätzlichen Angriffswürfel."
      },
      '"Dark Curse"': {
        text: "Wenn du verteidigst, können angreifende Schiffe keine Fokusmarker ausgeben oder Angriffswürfel neu würfeln."
      },
      '"Mauler Mithel"': {
        text: "Wirf 1 zusätzlichen Angriffswürfel, wenn du ein Ziel in Reichweite 1 angreifst."
      },
      '"Howlrunner"': {
        name: '"Kreischläufer"',
        text: "Wenn ein anderes freundliches Schiff in Reichweite 1 mit seinen Primärwaffen angreift, darf es 1 Angriffswürfel neu würfeln."
      },
      "Maarek Stele": {
        text: "Wenn ein Verteidiger durch deinen Angriff eine offene Schadenskarte erhalten würde, ziehst du stattdessen 3 Schadenskarten, wählst eine davon zum Austeilen und legst die restlichen ab."
      },
      "Tempest Squadron Pilot": {
        name: "Pilot der Tornado-Staffel"
      },
      "Storm Squadron Pilot": {
        name: "Pilot der Storm-Staffel"
      },
      "Darth Vader": {
        text: "Im Schritt \"Aktionen durchführen\" darfst du 2 Aktionen durchführen."
      },
      "Alpha Squadron Pilot": {
        name: "Pilot der Alpha-Staffel",
        ship: "TIE-Abfangjäger"
      },
      "Avenger Squadron Pilot": {
        name: "Pilot der Avenger-Staffel",
        ship: "TIE-Abfangjäger"
      },
      "Saber Squadron Pilot": {
        name: "Pilot der Saber-Staffel",
        ship: "TIE-Abfangjäger"
      },
      "\"Fel's Wrath\"": {
        ship: "TIE-Abfangjäger",
        text: "Wenn die Summe deiner Schadenskarten deinen Hüllenwert erreicht oder übersteigt, wirst du nicht sofort zerstört, sondern erst am Ende der Kampfphase."
      },
      "Turr Phennir": {
        ship: "TIE-Abfangjäger",
        text: "Nachdem du angegriffen hast, darfst du eine freie Aktion Schub oder Fassrolle durchführen."
      },
      "Soontir Fel": {
        ship: "TIE-Abfangjäger",
        text: "Immer wenn du einen Stressmarker erhältst, darfst du deinem Schiff auch einen Fokusmarker geben."
      },
      "Tycho Celchu": {
        text: "Du darfst auch dann Aktionen durchführen, wenn du Stressmarker hast."
      },
      "Arvel Crynyd": {
        text: "Wenn du angreifst, darfst du auch auf feindliche Schiffe zielen, deren Basen du berührst (vorausgesetzt sie sind innerhalb deines Feuerwinkels)."
      },
      "Green Squadron Pilot": {
        name: "Pilot der Grün-Staffel"
      },
      "Prototype Pilot": {
        name: "Testpilot"
      },
      "Outer Rim Smuggler": {
        name: "Schmuggler aus dem Outer Rim"
      },
      "Chewbacca": {
        text: "Wenn du eine offene Schadenskarte erhältst, wird sie sofort umgedreht (ohne dass ihr Kartentext in Kraft tritt)."
      },
      "Lando Calrissian": {
        text: "Wähle nach dem Ausführen eines grünen Manövers ein anderes freundliches Schiff in Reichweite 1. Dieses Schiff darf eine freie Aktion aus seiner Aktionsleiste durchführen."
      },
      "Han Solo": {
        text: "Wenn du angreifst, darfst du all deine Würfel neu würfeln. Tust du dies, musst du so viele Würfel wie möglich neu würfeln."
      },
      "Kath Scarlet": {
        text: "Wenn du angreifst und der Verteidiger mindestens 1 %CRIT% negiert, erhält er 1 Stressmarker."
      },
      "Boba Fett": {
        text: "Immer wenn du ein Eindrehmanöver (%BANKLEFT% oder %BANKRIGHT%) aufdeckst, kannst du das Eindrehmanöver mit gleicher Geschwindigkeit aber anderer Richtung auf deinem Rad nachträglich einstellen."
      },
      "Krassis Trelix": {
        text: "Wenn du mit einer Sekundärwaffe angreifst, darfst du 1 Angriffswürfel neu würfeln."
      },
      "Bounty Hunter": {
        name: "Kopfgeldjäger"
      },
      "Ten Numb": {
        text: "Wenn du angreifst, kann 1 deiner %CRIT% von Verteidigungswürfeln nicht negiert werden."
      },
      "Ibtisam": {
        text: "Beim Angreifen oder Verteidigen darfst du 1 deiner Würfel neu würfeln, sofern du mindestens 1 Stressmarker hast."
      },
      "Dagger Squadron Pilot": {
        name: "Pilot der Dagger-Staffel"
      },
      "Blue Squadron Pilot": {
        name: "Pilot der Blauen Staffel"
      },
      "Rebel Operative": {
        name: "Rebellenagent"
      },
      "Roark Garnet": {
        text: 'Wähle zu Beginn der Kampfphase 1 anderes freundliches Schiff in Reichweite 1-3. Bis zum Ende der Phase wird dieses Schiff behandelt, als hätte es einen Pilotenwert von 12.'
      },
      "Kyle Katarn": {
        text: "Zu Beginn der Kampfphase darfst du einem anderen freundlichen Schiff in Reichweite 1-3 einen deiner Fokusmarker geben."
      },
      "Jan Ors": {
        text: "Wenn ein anderes freundliches Schiff in Reichweite 1-3 angreift und du keine Stressmarker hast, darfst du 1 Stressmarker nehmen, damit dieses Schiff 1 zusätzlichen Angriffswürfel erhält."
      },
      "Scimitar Squadron Pilot": {
        name: "Pilot der Scimitar-Staffel"
      },
      "Gamma Squadron Pilot": {
        name: "Pilot der Gamma-Staffel"
      },
      "Captain Jonus": {
        text: "Wenn ein anderes freundliches Schiff in Reichweite 1 mit einer Sekundärwaffe angreift, darf es bis zu 2 Angriffswürfel neu würfeln."
      },
      "Major Rhymer": {
        text: "Beim Angreifen mit einer Sekundärwaffe darfst du die Reichweite der Waffe um 1 erhöhen oder verringern, bis zu einer Reichweite von 1-3."
      },
      "Captain Kagi": {
        ship: "Raumfähre der Lambda-Klasse",
        text: "Wenn ein feindliches Schiff eine Zielerfassung durchführt, muss es wenn möglich dich als Ziel erfassen."
      },
      "Colonel Jendon": {
        ship: "Raumfähre der Lambda-Klasse",
        text: "Zu Beginn der Kampfphase darfst du 1 deiner blauen Zielerfassungsmarker auf ein freundliches Schiff in Reichweite 1 legen, das noch keinen blauen Zielerfassungsmarker hat."
      },
      "Captain Yorr": {
        ship: "Raumfähre der Lambda-Klasse",
        text: "Wenn ein anderes freundliches Schiff in Reichweite 1-2 einen Stressmarker erhalten würde und du 2 oder weniger Stressmarker hast, darfst du statt ihm diesen Marker nehmen."
      },
      "Omicron Group Pilot": {
        ship: "Raumfähre der Lambda-Klasse",
        name: "Pilot der Omikron-Gruppe"
      },
      "Lieutenant Lorrir": {
        ship: "TIE-Abfangjäger",
        text: "Wenn du die Aktion Fassrolle ausführst, kannst du 1 Stressmarker erhalten, um die (%BANKLEFT% 1) oder (%BANKRIGHT% 1) Manöverschablone anstatt der (%STRAIGHT% 1) Manöverschablone zu benutzen."
      },
      "Royal Guard Pilot": {
        ship: "TIE-Abfangjäger",
        name: "Pilot der Roten Garde"
      },
      "Tetran Cowall": {
        ship: "TIE-Abfangjäger",
        text: "Immer wenn du ein %UTURN% Manöver aufdeckst, kannst du das Manöver mit einer Geschwindigkeit von \"1,\" \"3,\" oder \"5\" ausführen."
      },
      "Kir Kanos": {
        ship: "TIE-Abfangjäger",
        text: "Wenn du ein Ziel in Reichweite 2-3 angreifst, darfst du einen Ausweichmarker ausgeben, um 1 %HIT% zu deinem Wurf hinzuzufügen."
      },
      "Carnor Jax": {
        ship: "TIE-Abfangjäger",
        text: "Feindliche Schiffe in Reichweite 1 können weder Fokussierung und Ausweichen Aktionen durchführen noch Ausweichmarker und Fokusmarker ausgeben."
      },
      "GR-75 Medium Transport": {
        ship: "Medium-Transporter GR-75",
        name: "Medium-Transporter GR-75"
      },
      "Bandit Squadron Pilot": {
        ship: "Z-95-Kopfjäger",
        name: "Pilot der Bandit-Staffel"
      },
      "Tala Squadron Pilot": {
        ship: "Z-95-Kopfjäger",
        name: "Pilot der Tala-Staffel"
      },
      "Lieutenant Blount": {
        ship: "Z-95-Kopfjäger",
        name: "Lieutenant Blount",
        text: "Wenn du angreifst, triffst du immer, selbst wenn das verteidigende Schiff keinen Schaden nimmt."
      },
      "Airen Cracken": {
        ship: "Z-95-Kopfjäger",
        name: "Airen Cracken",
        text: "Nachdem du angegriffen hast, darfst du ein anderes freundliches Schiff in Reichweite 1 wählen. Dieses Schiff darf 1 freie Aktion durchführen."
      },
      "Delta Squadron Pilot": {
        ship: "TIE-Jagdbomber",
        name: "Pilot der Delta-Staffel"
      },
      "Onyx Squadron Pilot": {
        ship: "TIE-Jagdbomber",
        name: "Pilot der Onyx-Staffel"
      },
      "Colonel Vessery": {
        ship: "TIE-Jagdbomber",
        text: "Wenn du angreifst und der Verteidiger bereits einen roten Zielerfassungsmarker hat, darfst du ihn unmittelbar nach dem Angriffswurf in die Zielerfassung nehmen."
      },
      "Rexler Brath": {
        ship: "TIE-Jagdbomber",
        text: "Nachdem du angegriffen und damit dem Verteidiger mindestens 1 Schadenskarte zugeteilt hast, kannst du einen Fokusmarker ausgeben, um die soeben zugeteilte Schadenskarte aufzudecken."
      },
      "Knave Squadron Pilot": {
        name: "Pilot der Schurken-Staffel"
      },
      "Blackmoon Squadron Pilot": {
        name: "Pilot der Schwarzmond-Staffel"
      },
      "Etahn A'baht": {
        text: "Wenn sich ein feindliches Schiff in Reichweite 1-3 und innerhalb deines Feuerwinkels verteidigt, darf der Angreifer 1 seiner gewürfelten %HIT% in ein %CRIT% ändern."
      },
      "Corran Horn": {
        text: "Zu Beginn der Endphase kannst du einen Angriff durchführen. Tust du das, darfst du in der nächsten Runde nicht angreifen."
      },
      "Sigma Squadron Pilot": {
        name: "Pilot der Sigma-Staffel"
      },
      "Shadow Squadron Pilot": {
        name: "Pilot der Schatten-Staffel"
      },
      '"Echo"': {
        name: '"Echo"',
        text: "Wenn du dich enttarnst, musst du statt der (%STRAIGHT% 2)-Manöverschablone die (%BANKRIGHT% 2)- oder (%BANKLEFT% 2)-Schablone verwenden."
      },
      '"Whisper"': {
        name: '"Geflüster"',
        text: "Nachdem du mit einem Angriff getroffen hast, darfst du deinem Schiff 1 Fokusmarker geben."
      },
      "CR90 Corvette (Fore)": {
        name: "CR90-Korvette (Bug)",
        ship: "CR90-Korvette (Bug)",
        text: "Wenn du mit deinen Primärwaffen angreifst, kannst du 1 Energie ausgeben, um 1 zusätzlichen Angriffswürfel zu bekommen"
      },
      "CR90 Corvette (Aft)": {
        name: "CR90-Korvette (Heck)",
        ship: "CR90-Korvette (Heck)"
      },
      "Wes Janson": {
        text: "Nachdem du einen Angriff durchgeführt hast, darfst du 1 Fokus-, Ausweich- oder blauen Zielerfassungsmarker vom Verteidiger entfernen."
      },
      "Jek Porkins": {
        text: "Wenn du einen Stressmarker erhälst, darfst du ihn entfernen und 1 Angriffswürfel werfen. Bei %HIT% bekommt dein Schiff 1 verdeckte Schadenskarte."
      },
      '"Hobbie" Klivian': {
        text: "Wenn du ein Schiff in die Zielerfassung nimmst oder einen Zielerfassungsmarker ausgibst, kannst du 1 Stressmarker von deinem Schiff entfernen."
      },
      "Tarn Mison": {
        text: "Wenn ein feindliches Schiff einen Angriff gegen dich ansagt, kannst du dieses Schiff in die Zielerfassung nehmen."
      },
      "Jake Farrell": {
        text: "After you perform a focus action or are assigned a focus token, you may perform a free boost or barrel roll action."
      },
      "Gemmer Sojan": {
        name: "Gemmer Sojan",
        text: "While you are at Range 1 of at least 1 enemy ship, increase your agility value by 1."
      },
      "Keyan Farlander": {
        text: "When attacking, you may remove 1 stress token to change all of your %FOCUS% results to %HIT%results."
      },
      "Nera Dantels": {
        text: "You can perform %TORPEDO% secondary weapon attacks against enemy ships outside your firing arc."
      },
      "CR90 Corvette (Crippled Aft)": {
        name: "CR90-Korvette (Heck-Lahmgelegt)",
        ship: "CR90-Korvette (Heck)",
        text: "Folgende Manöver darfst du weder wählen noch ausführen: (%STRAIGHT% 4), (%BANKLEFT% 2), or (%BANKRIGHT% 2) ."
      },
      "CR90 Corvette (Crippled Fore)": {
        name: "CR90-Korvette (Bug-Lahmgelegt)",
        ship: "CR90-Korvette (Bug)"
      },
      "Dash Rendar": {
        text: "You may ignore obstacles during the Activation phase and when performing actions."
      },
      '"Leebo"': {
        text: "When you are dealt a faceup Damage card, draw 1 additional Damage card, choose 1 to resolve, and discard the other."
      },
      "Eaden Vrill": {
        text: "When performing a primary weapon attack against a stressed ship, roll 1 additional attack die."
      },
      "Rear Admiral Chiraneau": {
        text: "When attacking at Range 1-2, you may change 1 of your %FOCUS% results to a %CRIT% result."
      },
      "Commander Kenkirk": {
        text: "If you have no shields and at least 1 Damage card assigned to you, increase your agility value by 1."
      },
      "Captain Oicunn": {
        text: "After executing a maneuver, each enemy ship you are touching suffers 1 damage."
      }
    };
    upgrade_translations = {
      "Ion Cannon Turret": {
        name: "Ionengeschütz",
        text: "<strong>Angriff:</strong> Greife 1 Schiff an (es muss nicht in deinem Feuerwinkel sein).<br /><br />Wenn der Angriff trifft, nimmt das verteidigende Schiff 1 Schaden und erhält 1 Ionenmarker. Dann werden alle übrigen Würfelergebnisse negiert."
      },
      "Proton Torpedoes": {
        name: "Protonen-Torpedos",
        text: "<strong>Angriff (Zielerfassung):</strong>Gib eine Zielerfassung aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Du darfst eines deiner %FOCUS% in ein %CRIT% ändern."
      },
      "R2 Astromech": {
        name: "R2 Astromechdroide",
        text: "Du darfst alle Manöver mit Geschwindigkeit 1 und 2 wie grüne Manöver behandeln."
      },
      "R2-D2": {
        text: "Nachdem du ein grünes Manöver ausgeführt hast, darfst du 1 Schild wiederaufladen (bis maximal zum Schildwert)."
      },
      "R2-F2": {
        text: "<strong>Aktion:</strong> Erhöhe deinen Wendigkeitswert bis zum Ende der Spielrunde um 1."
      },
      "R5-D8": {
        text: "<strong>Aktion:</strong> Wirf 1 Verteidigungswürfel.<br /><br />Lege bei %EVADE% oder %FOCUS% 1 deiner verdeckten Schadenskarten ab."
      },
      "R5-K6": {
        text: "Wirf 1 Verteidigungswürfel nachdem du deine Zielerfassungsmarker ausgegeben hast.<br /><br />Bei %EVADE% nimmst du dasselbe Schiff sofort wieder in die Zielerfassung. Für diesen Angriff kannst du die Zielerfassungsmarker nicht erneut ausgeben."
      },
      "R5 Astromech": {
        name: "R5 Astromechdroide",
        text: "Wähle während der Endphase 1 deiner offnen Schadenskarte mit dem Attribut <strong>Schiff</strong> und drehe sie um."
      },
      "Determination": {
        name: "Entschlossenheit",
        text: "Wenn du eine offene Schadenskarte mit dem Attribut <b>Pilot</b> erhältst, wird diese sofort abgelegt (ohne dass der Kartentext in Kraft tritt)."
      },
      "Swarm Tactics": {
        name: "Schwarmtaktik",
        text: "Wähle zu Beginn der Kampfphase 1 freundliches Schiff in Reichweite 1.<br /><br />Bis zum Ende dieser Phase wird das gewählte Schiff so behandelt, als hätte es denselben Pilotenwert wie du."
      },
      "Squad Leader": {
        name: "Staffelführer",
        text: "<strong>Aktion:</strong> Wähle ein Schiff in Reichweite 1-2 mit einem geringeren Pilotenwert als du.<br /><br />Das gewählte Schiff darf sofort 1 freie Aktion durhführen."
      },
      "Expert Handling": {
        name: "Flugkunst",
        text: "<strong>Aktion:</strong> Führe eine Fassrolle durch. Wenn du kein %BARRELROLL%-Symbol hast, erhälst du 1 Stressmarker.<br /><br />Dann darfst du 1 feindlichen Zielerfassungsmarker von deinem Schiff entfernen."
      },
      "Marksmanship": {
        name: "Treffsicherheit",
        text: "<strong>Aktion:</strong> Wenn du in dieser Runde angreifst, darfst du eines deiner %FOCUS% in ein %CRIT% und alle anderen %FOCUS% in %HIT% ändern."
      },
      "Concussion Missiles": {
        name: "Erschütterungsraketen",
        text: "<strong>Angriff (Zielerfassung):</strong> Gib deine Zielerfassungsmarker aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Du darfst eine deiner Leerseiten in ein %HIT% ändern."
      },
      "Cluster Missiles": {
        name: "Cluster-Raketen",
        text: "<strong>Angriff (Zielerfassung):</strong> Gib deine Zielerfassungsmaker aus und lege diese Karte ab, um mit dieser Sekundärwaffe <strong>zwei Mal</strong> anzugreifen."
      },
      "Daredevil": {
        text: "<strong>Aktion:</strong> Führe ein rotes (%TURNLEFT% 1) oder (%TURNRIGHT% 1) Manöver aus.<br /><br />Wenn du kein %BOOST%-Aktionssymbol hast, musst du dann 2 Angriffswürfel werfen. Du nimmst allen gewürfelten Schaden (%HIT%) und kritischen Schaden (%CRIT%)."
      },
      "Elusiveness": {
        name: "Schwer zu Treffen",
        text: "Wenn du verteidigst, darfst du 1 Stressmarker nehmen, um 1 Angriffswürfel zu wählen. Diesen muss der Angreifer neu würfeln.<br /><br />Du kannst diese Fähigkeit nicht einsetzen, solange du 1 oder mehrere Stressmarker hast."
      },
      "Homing Missiles": {
        name: "Lenkraketen",
        text: "<strong>Angriff (Zielerfassung):</strong> Lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Bei diesem Angriff kann der Verteidiger keine Ausweichmarker ausgeben."
      },
      "Push the Limit": {
        name: "Bis an die Grenzen",
        text: "Einmal pro Runde darfst du nach dem Durchführen einer Aktion eine freie Aktion aus deiner Aktionsleiste durhführen.<br /><br />Dann erhältst du 1 Stressmarker."
      },
      "Deadeye": {
        name: "Meisterschütze",
        text: "Du darfst die Bedingung \"Angriff (Zielerfassung):\" in \"Angriff (Fokussierung):\" ändern.<br /><br />Wenn ein Angriff das Ausgeben von Zielerfassungsmarkern erfordert, darfst du stattdessen auch einen Fokusmarker ausgeben."
      },
      "Expose": {
        name: "Aggressiv",
        text: "<strong>Aktion:</strong> Bis zum Ende der Runde steigt dein Primärwaffenwert um 1, dafür sinkt dein Wendigkeitswert um 1."
      },
      "Gunner": {
        name: "Bordschütze",
        text: "Führe, unmittelbar nachdem du mit einem Angriff verfehlt hast, einen weiteren Angriff mit deiner Primärwaffe aus. Danach kannst du in dieser Runde nicht noch einmal angreifen."
      },
      "Ion Cannon": {
        name: "Ionenkanonen",
        text: "<strong>Angriff:</strong> Greife 1 Schiff mit dieser Sekundärwaffe an.<br /><br />Wenn du triffst, nimmt das verteidigende Schiff 1 Schaden und erhält 1 Ionenmarker. Dann werden <b>alle</b> übrigen Würfelergebnisse negiert."
      },
      "Heavy Laser Cannon": {
        name: "Schwere Laserkanone",
        text: "<strong>Attack:</strong> Greife 1 Schiff mit dieser Sekundärwaffe an.<br /><br />Unmittelbar nach dem Angriffswurf musst du alle %CRIT% in %HIT% ändern."
      },
      "Seismic Charges": {
        name: "Seismische Bomben",
        text: "Nach dem Aufdecken deines Manöverrads darfst du diese Karte ablegen um 1 Seismischen Bomben-Marker zu <strong>legen</strong>.<br /><br />Der Marker <strong>detoniert</strong> am Ende der Aktivierungsphase."
      },
      "Mercenary Copilot": {
        name: "Angeheuerter Kopilot",
        text: "Wenn du ein Ziel in Reichweite 3 angreifst, darfst du eines deiner %HIT%  in ein %CRIT% ändern."
      },
      "Assault Missiles": {
        name: "Angriffsraketen",
        text: "Angriff (Zielerfassung): Gib deine Zielerfassungsmarker aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Wenn du triffst, nimmt jedes andere Schiff in Reichweite 1 des verteidigenden Schiffs 1 Schaden."
      },
      "Veteran Instincts": {
        name: "Veteraneninstinkte",
        text: "Dein Pilotenwert steigt um 2."
      },
      "Proximity Mines": {
        name: "Annährungsminen",
        text: "<strong>Aktion:</strong> Lege diese Karte ab, um 1 Annährungsminen-Marker zu <strong>legen</strong>.<br /><br />Der Marker <strong>detoniert</strong>, wenn sich beim Ausführen eines Manövers die Basis eines Schiffs oder die Manöverschablone mit dem Marker überschneidet."
      },
      "Weapons Engineer": {
        name: "Waffen-Techniker",
        text: "Du darfst 2 verschiedene Schiffe gleichzeitig in Zielerfassung haben (maximal 1 Zielerfassung pro feindlichem Schiff).<br /><br />Wenn du die Aktion Zielerfassung durchführst darfst du zwei verschiedene Schiffe als Ziele erfassen."
      },
      "Draw Their Fire": {
        name: "Das Feuer auf mich ziehen",
        text: "Wenn ein freundliches Schiff in Reichweite 1 durch einen Angriff getroffen wird, darfst du anstelle dieses Schiffs den Schaden für 1 nicht-negiertes %CRIT% auf dich nehmen."
      },
      "Luke Skywalker": {
        text: "Führe, unmittelbar nachdem du mit einem Angriff verfehlt hast, einen weiteren Angriff mit deiner Primärwaffe aus. Du darfst ein %FOCUS% in ein %HIT% ändern. Danach kannst du in dieser Runde nicht noch einmal angreifen."
      },
      "Nien Nunb": {
        text: "Du darfst alle %STRAIGHT%-Manöver wie grüne Manöver behandeln."
      },
      "Chewbacca": {
        text: "Wenn du eine Schadenskarte erhältst, darfst du sie sofort ablegen und 1 Schild wiederaufladen.<br /><br />Danach wird diese Aufwertungskarte abgelegt."
      },
      "Advanced Proton Torpedoes": {
        name: "Verstärkte Protonen-Torpedos",
        text: "<strong>Angriff (Zielerfassung):</strong> Gib eine Zielerfassung aus und lege diese Karte ab um mit dieser Sekundärwaffe anzugreifen.<br /><br />Du darfst bis zu 3 deiner Leerseiten in %FOCUS% ändern."
      },
      "Autoblaster": {
        name: "Repertierblaster",
        text: "<strong>Angriff:</strong> Greife 1 Schiff mit dieser Sekundärwaffe an.<br /><br />Deine %HIT% können von Verteidigungswürfeln nicht negiert werden.<br /><br />Der Verteidiger darf %CRIT% negieren, bevor alle %HIT% negiert wurden."
      },
      "Fire-Control System": {
        name: "Feuerkontrollsystem",
        text: "Nachdem du angegriffen hast, darfst du eine Zielerfassung auf den Verteidiger durchführen."
      },
      "Blaster Turret": {
        name: "Blastergeschütz",
        text: "<strong>Angriff (Fokussierung):</strong> Gib 1 Fokusmarker aus, um 1 Schiff mit dieser Sekundärwaffe anzugreifen (es muss nicht in deinem Feuerwinkel sein)."
      },
      "Recon Specialist": {
        name: "Aufklärungs-Experte",
        text: "Wenn du die Aktion Fokussieren durchführst, lege 1 zusätzlichen Fokusmarker neben dein Schiff."
      },
      "Saboteur": {
        text: "<strong>Aktion:</strong> Wähle 1 feindliches Schiff in Reichweite 1 und wirf 1 Angriffswürfel. Bei %HIT% oder %CRIT%, wähle 1 zufällige verdeckte Schadenskarte des Schiffs, decke sie auf und handle sie ab."
      },
      "Intelligence Agent": {
        name: "Geheimagent",
        text: "Wähle zu Beginn der Aktivierungsphase 1 feindliches Schiff in Reichweite 1-2. Du darfst dir das ausgewählte Manöver dieses Schiffs ansehen."
      },
      "Proton Bomb": {
        name: "Protonenbomben",
        text: "Nach dem Aufdecken deines Manöverrads darfst du diese Karte ablegen um 1 Protonenbomben-Marker zu <strong>legen</strong>.<br /><br />Der Marker <strong>detoniert</strong> am Ende der Aktivierungsphase."
      },
      "Adrenaline Rush": {
        name: "Adrenalinschub",
        text: "Wenn du ein rotes Manöver aufdeckst, darfst du diese Karte ablegen, um das Manöver bis zum Ende der Aktivierungsphase wie ein weißes Manöver zu behandeln."
      },
      "Advanced Sensors": {
        name: "Verbesserte Sensoren",
        text: "Unmittelbar vor dem Aufdecken deines Manövers darfst du 1 freie Aktion durchführen.<br /><br />Wenn du diese Fähigkeit nutzt, musst du den Schritt \"Aktion durchführen\" in dieser Runde überspringen."
      },
      "Sensor Jammer": {
        name: "Störsender",
        text: "Beim Verteidigen darfst du eines der %HIT% des Angreifers in ein %FOCUS% ändern.<br /><br />Der Angreifer darf den veränderten Würfel nicht neu würfeln."
      },
      "Darth Vader": {
        text: "Nachdem du ein feindliches Schiff angegriffen hast, darfst du 2 Schaden nehmen, damit dieses Schiff 1 kritischen Schaden nimmt."
      },
      "Rebel Captive": {
        name: "Gefangener Rebell",
        text: "Ein Mal pro Runde erhält das erste Schiff, das einen Angriff gegen dich ansagt, sofort 1 Stressmarker."
      },
      "Flight Instructor": {
        name: "Fluglehrer",
        text: "Beim Verteidigen darfst du 1 deiner %FOCUS% neu würfeln. Hat der Angreifer einen Pilotenwert von 2 oder weniger, darfst du stattdessen 1 deiner Leerseiten neu würfeln."
      },
      "Navigator": {
        name: "Navigator",
        text: "Nach dem Aufdecken deines Manöverrads darfst du das Rad auf ein anderes Manöver mit gleicher Flugrichtung drehen.<br /><br />Wenn du bereits Stressmarker hast, darfst du es nicht auf ein rotes Manöver drehen."
      },
      "Opportunist": {
        name: "Opportunist",
        text: "Wenn du angreifst und der Verteidiger keine Fokusmarker oder Ausweichmarker hat, kannst du einen Stressmarker nehmen, um einen zusätzlichen Angriffswürfel zu erhalten.<br /><br />Du kannst diese Fähigkeit nicht nutzen, wenn du einen Stressmarker hast."
      },
      "Comms Booster": {
        name: "Kommunikationsverstärker",
        text: "<strong>Energie:</strong> Gib 1 Energie aus, um sämtliche Stressmarker von einem freundlichen Schiff in Reichweite 1-3 zu entfernen. Dann erhält jenes Schiff 1 Fokusmarker."
      },
      "Slicer Tools": {
        name: "Hackersoftware",
        text: "<strong>Aktion:</strong> Wähle 1 oder mehrere feindliche Schiffe mit Stressmarker in Reichweite 1-3. Bei jedem gewählten Schiff kannst du 1 Energie ausgeben, damit es 1 Schaden nimmt."
      },
      "Shield Projector": {
        name: "Schildprojektor",
        text: "Wenn ein feindliches Schiff in der Kampfphase an die Reihe kommt, kannst du 3 Energie ausgeben, um das Schiff bis zum Ende der Phase dazu zu zwingen dich anzugreifen, falls möglich.."
      },
      "Ion Pulse Missiles": {
        name: "Ionenpuls-Raketen",
        text: "<strong>Angriff (Zielerfassung):</strong> Lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Wenn du triffst, nimmt das verteidigende Schiff 1 Schaden und erhält 2 Ionenmarker. Dann werden <strong>alle<strong> übrigen Würfelergebnisse negiert."
      },
      "Wingman": {
        name: "Flügelmann",
        text: "Entferne zu Beginn der Kampfphase 1 Stressmarker von einem anderen freundlichen Schiff in Reichweite 1."
      },
      "Decoy": {
        name: "Täuschziel",
        text: "Zu Beginn der Kampfphase darfst du 1 freundliches Schiff in Reichweite 1-2 wählen. Bis zum Ende der Phase tauscht du mit diesem Schiff den Pilotenwert."
      },
      "Outmaneuver": {
        name: "Ausmanövrieren",
        text: "Wenn du ein Schiff innerhalb deines Feuerwinkels angreifst und selbst nicht im Feuerwinkel dieses Schiffs bist, wird seine Wendigkeit um 1 reduziert (Minimum 0)"
      },
      "Predator": {
        name: "Jagdinstinkt",
        text: "Wenn du angreifst, darfst du 1 Angriffswürfel neu würfeln. Ist der Pilotenwert des Verteidigers2 oder niedriger, darfst du stattdessen bis zu 2 Angriffswürfel neu würfeln."
      },
      "Flechette Torpedoes": {
        name: "Flechet-Torpedos",
        text: "<strong>Angriff (Zielerfassung):</strong> Gib deine Zielerfassungsmarker aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Nachdem du angegriffen hast, bekommt der Verteidiger 1 Stressmarker, sofern sein Hüllenwert 4 oder weniger beträgt."
      },
      "R7 Astromech": {
        name: "R7-Astromech-Droide",
        text: "Ein Mal pro Runde kannst du beim Verteidigen gegen den Angriff eines Schiffs, das du in Zielerfassung hast, die Zielerfassungsmarker ausgeben, um beliebige (oder alle) Angriffswürfel zu wählen. Diese muss der Angreifer neu würfeln."
      },
      "R7-T1": {
        name: "R7-T1",
        text: "<strong>Aktion:</strong> Wähle ein feindliches Schiff in Reichweite 1-2. Wenn du im Feuerwinkel dieses Schiffs bist, kannst du es in die Zielerfassung nehmen. Dann darfst du als freie Aktion einen Schub durchführen."
      },
      "Tactician": {
        name: "Taktiker",
        text: "Nachdem du ein Schiff in Reichweite 2 und innerhalb deines Feuerwinkels angegriffen hast, erhält es 1 Stressmarker."
      },
      "R2-D2 (Crew)": {
        name: "R2-D2 (Crew)",
        text: "Wenn du am Ende der Endphase keine Schilde hast, darfst du 1 Schild wieder aufladen und 1 Angriffswürfel werfen. Bei %HIT% musst du 1 deiner verdeckten Schadenskarten (zufällig gewählt) umdrehen und abhandeln."
      },
      "C-3PO": {
        name: "C-3PO",
        text: "Einmal pro Runde darfst du, bevor du 1 oder mehrere Verteidigungswürfel wirfst, laut raten, wie viele %EVADE% du würfeln wirst. Wenn du richtig geraten hast (bevor die Ergebnisse modifiziert werden), wird 1 %EVADE% hinzugefügt."
      },
      "Single Turbolasers": {
        name: "Einzelne Turbolasers",
        text: "<strong>Angriff (Energie):</strong> gib 2 Energie von dieser Karte aus, um mit dieser Sekundärwaffe anzugreifen. Der Verteidiger verwendet zum Verteidigen seinen doppelten Wendigkeitswert. Du darfst 1 deiner %FOCUS% in ein %HIT% ändern."
      },
      "Quad Laser Cannons": {
        name: "Vierlings-Laserkanone",
        text: "<strong>Angriff (Energie):</strong> Gib 1 Energie von dieser Karte aus, um mit dieser Sekundärwaffe anzugreifen. Wenn der Angriff verfehlt, kannst du sofort 1 Energie von dieser Karte ausgeben, um den Angriff zu wiederholen."
      },
      "Tibanna Gas Supplies": {
        name: "Tibanna-Gas-Vorräte",
        text: "<strong>Energie:</strong> Du kannst diese Karte ablegen, um 3 Energie zu erzeugen."
      },
      "Ionization Reactor": {
        name: "Ionenreaktor",
        text: "<strong>Energie:</strong> Gib 5 Energie von dieser Karte aus und lege sie ab, damit jedes andere Schiff in Reichweite 1 einen Schaden nimmt und einen Ionenmarker bekommt."
      },
      "Engine Booster": {
        name: "Nachbrenner",
        text: "Unmittelbar bevor du dein Manöverrad aufdeckst, kannst du 1 Energie ausgeben, um ein weißes (%STRAIGHT% 1)-Manöver auszuführen. Wenn es dadurch zur Überschneidung mit einem anderen Schiff käme, darfst du diese Fähigkeit nicht nutzen."
      },
      "R3-A2": {
        name: "R3-A2",
        text: "Nachdem du das Ziel deines Angriffs angesagt hast, darfst du, wenn der Verteidiger in deinem Feuerwinkel ist, 1 Stressmarker nehmen, damit der Verteidiger auch 1 Stressmarker bekommt."
      },
      "R2-D6": {
        name: "R2-D6",
        text: "Deine Aufwertungsleiste bekommt ein %ELITE%-Symbol.<br /><br />Du kannst diese Aufwertung nicht ausrüsten, wenn du bereits ein %ELITE%-Symbol hast oder dein Pilotenwert 2 oder weniger beträgt."
      },
      "Enhanced Scopes": {
        name: "Enhanced Scopes",
        text: "During the Activation phase, treat your pilot skill value as \"0\"."
      },
      "Chardaan Refit": {
        name: "Chardaan Refit",
        text: "This card has a negative squad point cost."
      },
      "Proton Rockets": {
        name: "Proton Rockets",
        text: "<strong>Attack (Focus):</strong> Discard this card to perform this attack.<br /><br />You may roll additional attack dice equal to your agility value, to a maximum of 3 additional dice."
      },
      "Kyle Katarn": {
        text: "After you remove a stress token from your ship, you may assign a focus token to your ship."
      },
      "Jan Ors": {
        text: "Once per round, when a friendly ship at Range 1-3 performs a focus action or would be assigned a focus token, you may assign it an evade token instead."
      },
      "Toryn Farr": {
        text: "<strong>Aktion:</strong> gib X Energie aus, um X feindliche Schiffe in Reichweite 1-2 zu wählen. Sämtliche Fokus-, Ausweich- und blauen Zielerfassungsmarker dieser Schiffe werden entfernt.."
      },
      "R4-D6": {
        text: "Wenn du von einem Angriff getroffen wirst und es mindest 3 nicht negierte %HIT% gibt, darfst du so viele %HIT% wählen und negieren, bis es nur noch 2 sind. Für jedes auf diese Weise negierte %HIT% bekommst du 1 Stressmarker."
      },
      "R5-P9": {
        text: "Am Ende der Kampfphase kannst du 1 deiner Fokusmarker ausgeben, um 1 Schild wiederaufzuladen (bis maximal zum Schildwert)."
      },
      "WED-15 Repair Droid": {
        name: "WED-15 Reparaturdroide",
        text: "<strong>Aktion:</strong> gib 1 Energie aus, um 1 deiner verdeckten Schadenskarten abzulegen oder gib 3 Energie aus, um 1 deiner offenen Schadenskarten abzulegen."
      },
      "Carlist Rieekan": {
        text: "zu Beginn der Aktivierungsphase kannst du diese Karte ablegen, damit bis zum Ende der Phase der Pilotenwert aller freundlichen Schiffe 12 beträgt."
      },
      "Jan Dodonna": {
        text: "Wenn ein anderes freundliches Schiff in Reichweite 1 angreift, darf es 1 seiner gewürfelten %HIT% in ein %CRIT% ändern."
      },
      "Expanded Cargo Hold": {
        name: "Erweiterter Ladebereich",
        text: "Ein Mal pro Runde darfst du, wenn du eine offene Schadenskarte erhältst, frei wählen, ob du sie vom Schadensstapel Bug oder Heck ziehen willst.",
        ship: "Medium-Transporter GR-75"
      },
      "Backup Shield Generator": {
        name: "Sekundärer Schildgenerator",
        text: "Am Ende jeder Runde kannst du 1 Energie ausgeben, um 1 Schild wiederaufzuladen (bis maximal zum Schildwert)."
      },
      "EM Emitter": {
        name: "EM-Emitter",
        text: "Wenn du bei einem Angriff die Schussbahn versperrst, bekommst der Verteidiger 3 zusätzliche Verteidigungswürfel (anstatt 1)."
      },
      "Frequency Jammer": {
        name: "Störsender (Fracht)",
        text: "Wenn du die Aktion Störsignal durchführst, wähle 1 feindliches Schiff ohne Stressmarker in Reichweite 1 des vom Störsignal betroffenen Schiffs. Das gewählte Schiff erhält 1 Stressmarker."
      },
      "Han Solo": {
        text: "Wenn du angreifst und den Verteidiger in Zielerfassung hast, kannst du diese Zielerfassung ausgeben, um all deine gewürfelten %FOCUS% in %HIT% zu ändern."
      },
      "Leia Organa": {
        text: "Zu Beginn der Aktivierungsphase kannst du diese Karte ablegen, damit alle freundlichen Schiffe, die ein rotes Manöver aufdecken, dieses bis zum Ende der Phase wie ein weißes Manöver behandeln dürfen."
      },
      "Raymus Antilles": {
        text: "Wähle zu Beginn der Aktivierungsphase 1 feindliches Schiff in Reichweite 1-3. Du kannst dir das gewählte Manöver dieses Schiffes ansehen. Wenn es weiß ist, bekommt dieses Schiff 1 Stressmarker."
      },
      "Gunnery Team": {
        name: "Bordschützenteam",
        text: "Einmal pro runde kannst du beim Angreifen mit einer Sekundärwaffe 1 Energie ausgeben, um 1 gewürfelte Leerseite in ein %HIT% zu ändern."
      },
      "Sensor Team": {
        name: "Sensortechnikerteam",
        text: "Du kannst feindliche Schiffe in Reichweite 1-5 in die Zielerfassung nehmen (anstatt in Reichweite 1-3)."
      },
      "Engineering Team": {
        name: "Ingenieurteam",
        text: "Wenn du in der Aktivierungsphase ein %STRAIGHT% Manöver aufdeckst, bekommst du im Schritt \"Energie gewinnen\" 1 zusätzlichen Energiemarker."
      },
      "Lando Calrissian": {
        text: "<strong>Action:</strong> Roll 2 defense dice.  For each %FOCUS% result, assign 1 focus token to your ship.  For each %EVADE% result, assign 1 evade token to your ship."
      },
      "Mara Jade": {
        text: "At the end of the Combat phase, each enemy ship at Range 1 that does not have a stress token receives 1 stress token."
      },
      "Fleet Officer": {
        text: "<strong>Action:</strong> Choose up to 2 friendly ships within Range 1-2 and assign 1 focus token to each of those ships.  Then receive 1 stress token."
      },
      "Targeting Coordinator": {
        name: "Zielkoordinator",
        text: "<strong>Energie:</strong> Du kannst 1 Energie ausgeben, um 1 freundliches Schiff in Reichweite1-2 zu wählen. Nimm dann ein Schiff in die Zielerfassung und gibt den blauen Zielerfassungsmarker dem gewählten Schiff."
      },
      "Lone Wolf": {
        text: "When attacking or defending, if there are no other friendly ships at Range 1-2, you may reroll 1 of your blank results."
      },
      "Stay On Target": {
        text: "When you reveal a maneuver, you may rotate your dial to another maneuver with the same speed.<br /><br />Treat that maneuver as a red maneuver."
      },
      "Dash Rendar": {
        text: "You may perform attacks while overlapping an obstacle.<br /><br />Your attacks cannot be obstructed."
      },
      '"Leebo"': {
        text: "<strong>Action:</strong> Perform a free boost action.  Then receive 1 ion token."
      },
      "Ruthlessness": {
        text: "After you perform an attack that hits, you <strong>must</strong> choose 1 other ship at Range 1 of the defender (other than yourself).  That ship suffers 1 damage."
      },
      "Intimidation": {
        text: "While you are touching an enemy ship, reduce that ship's agility value by 1."
      },
      "Ysanne Isard": {
        text: "At the start of the Combat phase, if you have no shields and at least 1 Damage card assigned to your ship, you may perform a free evade action."
      },
      "Moff Jerjerrod": {
        text: "When you are dealt a faceup Damage card, you may discard this Upgrade card or another %CREW% Upgrade card to flip that Damage card facedown (without resolving its effect)."
      },
      "Ion Torpedoes": {
        text: "<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack.<br /><br />If this attack hits, the defender and each ship at Range 1 of it receives 1 ion token."
      }
    };
    modification_translations = {
      "Stealth Device": {
        name: "Tarnvorrichtung",
        text: "Dein Wendigkeitswert steigt um 1. Lege diese Karte ab, wenn du von einem Angriff getroffen wirst."
      },
      "Shield Upgrade": {
        name: "Verbesserte Schilde",
        text: "Dein Schildwert steigt um 1."
      },
      "Engine Upgrade": {
        name: "Verbessertes Triebwerk",
        text: "Füge deiner Aktionsleiste ein %BOOST%-Symbol hinzu."
      },
      "Anti-Pursuit Lasers": {
        name: "Kurzstreckenlaser",
        text: "Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, das zur Überschneidung mit deinem Schiff führt, wirf 1 Angriffswürfel. Bei %HIT% oder %CRIT% nimmt das feindliche Schiff 1 Schaden."
      },
      "Targeting Computer": {
        name: "Zielerfassungssystem",
        text: "Deine Aufwertungsleiste erhält das %TARGETLOCK%-Symbol."
      },
      "Hull Upgrade": {
        name: "Verbesserte Hülle",
        text: "Erhöhe deinen Hüllenwert um 1."
      },
      "Munitions Failsafe": {
        name: "Ausfallsichere Munition",
        text: "Wenn du mit einer Sekundärwaffe angreifst, deren Kartentext besagt, dass sie zum Angriff abgelegt werden muss, legst du sie nur ab, falls du triffst."
      },
      "Stygium Particle Accelerator": {
        name: "Stygium-Teilchen-Beschleuniger",
        text: "immer wenn du dich enttarnst oder die Aktion Tarnen durchführst, darfst du als freie Aktion ausweichen."
      },
      "Advanced Cloaking Device": {
        name: "Verbesserte Tarnvorrichtung",
        text: "Nachdem du angegriffen hast, darfst du dich als freie Aktion tarnen."
      },
      "Combat Retrofit": {
        name: "Umrüstung für den Kampfeinsatz",
        ship: "Medium-Transporter GR-75",
        text: "Erhöhe deinen Hüllenwert um 2 und deinen Schildwert um 1."
      },
      "B-Wing/E2": {
        text: "Your upgrade bar gains the %CREW% upgrade icon."
      },
      "Countermeasures": {
        text: "At the start of the Combat phase, you may discard this card to increase your agility value by 1 until the end of the round.  Then you may remove 1 enemy target lock from your ship."
      },
      "Experimental Interface": {
        text: "Once per round, after you perform an action, you may perform 1 free action from an equipped Upgrade card with the \"<strong>Action:</strong>\" header.  Then receive 1 stress token."
      },
      "Tactical Jammer": {
        text: "Your ship can obstruct enemy attacks."
      }
    };
    title_translations = {
      "Slave I": {
        name: "Sklave I",
        text: "Füge deiner Aktionsleiste ein %TORPEDO%-Symbol hinzu."
      },
      "Millennium Falcon": {
        name: "Millennium Falke",
        text: "Füge deiner Aktionsleiste ein %EVADE%-Symbol hinzu."
      },
      "Moldy Crow": {
        text: "In der Endphase werden von diesem Schiff keine unbenutzen Fokusmarker entfernt."
      },
      "ST-321": {
        ship: "Raumfähre der Lambda-Klasse",
        text: "Wenn du eine Zielerfassung durchführst, darfst du ein beliebiges feindliches Schiff auf der Spielfläche als Ziel erfassen."
      },
      "Royal Guard TIE": {
        name: "TIE der Roten Garde",
        ship: "TIE-Abfangjäger",
        text: "Du kannst bis zu 2 verschiedene Modifikationen verwenden (statt einer).<br /><br />Du kannst diese Karte nicht verwenden, wenn der Pilotenwert \"4\" oder kleiner ist."
      },
      "Dodonna's Pride": {
        name: "Dodonnas Stolz",
        ship: "CR90-Korvette (Bug)",
        text: "Wenn du die Aktion Koordination durchführst, kannst du 2 freundliche Schiffe wählen (anstatt 1). Jedes dieser Schiffe darf 1 freie Aktion durchführen."
      },
      "A-Wing Test Pilot": {
        name: "A-Wing Test Pilot",
        text: "Your upgrade bar gains 1 %ELITE% upgrade icon.<br /><br />You cannot equip 2 of the same %ELITE% Upgrade cards.  You cannot equip this if your pilot skill value is \"1\" or lower."
      },
      "Tantive IV": {
        ship: "CR90-Korvette (Bug)",
        text: "Die Aufwertungsleiste deiner Bugsektion erhält 1 zusätzliches %CREW% und 1 zusätzliches %TEAM% ."
      },
      "Bright Hope": {
        ship: "Medium-Transporter GR-75",
        text: "Wenn neben deiner Bugsektion ein Verstärkungsmarker liegt, fügt er 2 %EVADE% hinzu (anstatt 1)."
      },
      "Quantum Storm": {
        ship: "Medium-Transporter GR-75",
        text: "Wenn du zu Beginn der Endphase 1 Energiemarker oder weniger hast, gewinnst du 1 Energiemarker."
      },
      "Dutyfree": {
        ship: "Medium-Transporter GR-75",
        text: "Bei der Aktion Störsignal kannst du ein feindliches Schiff in Reichweite 1-3 (statt 1-2) wählen."
      },
      "Jaina's Light": {
        name: "Jainas Licht",
        ship: "CR90-Korvette (Bug)",
        text: "Wenn du verteidigst, darfst du einmal pro Angriff eine soeben erhaltene, offene Schadenskarte ablegen und dafür eine neue offene Schadenskarte ziehen."
      },
      "Outrider": {
        text: "While you have a %CANNON% Upgrade card equipped, you <strong>cannot</strong> perform primary weapon attacks and you may perform %CANNON% secondary weapon attacks against ships outside your firing arc."
      },
      "Dauntless": {
        text: "After you execute a maneuver that causes you to overlap another ship, you may perform 1 free action.  Then receive 1 stress token."
      }
    };
    return exportObj.setupCardData(basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations);
  };

}).call(this);

//@ sourceMappingURL=cards-de.map