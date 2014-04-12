exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.en = 'Español'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations['Español'] =
    action:
        "Barrel Roll": "Barrel Roll"
        "Boost": "Boost"
        "Evade": "Evade"
        "Focus": "Focus"
        "Target Lock": "Target Lock"
        "Recover": "Recover"
        "Reinforce": "Reinforce"
        "Jam": "Jam"
        "Coordinate": "Coordinate"
        "Cloak": "Cloak"
    slot:
        "Astromech": "Astromech"
        "Bomb": "Bomb"
        "Cannon": "Cannon"
        "Crew": "Crew"
        "Elite": "Elite"
        "Missile": "Missile"
        "System": "System"
        "Torpedo": "Torpedo"
        "Turret": "Turret"
        "Cargo": "Cargo"
        "Hardpoint": "Hardpoint"
        "Team": "Team"
    sources: # needed?
        "Core": "Core"
        "A-Wing Expansion Pack": "A-Wing Expansion Pack"
        "B-Wing Expansion Pack": "B-Wing Expansion Pack"
        "X-Wing Expansion Pack": "X-Wing Expansion Pack"
        "Y-Wing Expansion Pack": "Y-Wing Expansion Pack"
        "Millennium Falcon Expansion Pack": "Millennium Falcon Expansion Pack"
        "HWK-290 Expansion Pack": "HWK-290 Expansion Pack"
        "TIE Fighter Expansion Pack": "TIE Fighter Expansion Pack"
        "TIE Interceptor Expansion Pack": "TIE Interceptor Expansion Pack"
        "TIE Bomber Expansion Pack": "TIE Bomber Expansion Pack"
        "TIE Advanced Expansion Pack": "TIE Advanced Expansion Pack"
        "Lambda-Class Shuttle Expansion Pack": "Lambda-Class Shuttle Expansion Pack"
        "Slave I Expansion Pack": "Slave I Expansion Pack"
        "Imperial Aces Expansion Pack": "Imperial Aces Expansion Pack"
        "Rebel Transport Expansion Pack": "Rebel Transport Expansion Pack"
        "Z-95 Headhunter Expansion Pack": "Z-95 Headhunter Expansion Pack"
        "TIE Defender Expansion Pack": "TIE Defender Expansion Pack"
        "E-Wing Expansion Pack": "E-Wing Expansion Pack"
        "TIE Phantom Expansion Pack": "TIE Phantom Expansion Pack"
        "Tantive IV Expansion Pack": "Tantive IV Expansion Pack"
        "Rebel Aces Expansion Pack": "Rebel Aces Expansion Pack"
    ui:
        shipSelectorPlaceholder: "Select a ship"
        pilotSelectorPlaceholder: "Select a pilot"
        upgradePlaceholder: (translator, language, slot) ->
            "No #{translator language, 'slot', slot} Upgrade"
        modificationPlaceholder: "No Modification"
        titlePlaceholder: "No Title"
        upgradeHeader: (translator, language, slot) ->
            "#{translator language, 'slot', slot} Upgrade"
    byCSSSelector:
        '.xwing-card-browser .translate.sort-cards-by': 'Sort cards by'
        '.xwing-card-browser option[value="name"]': 'Name'
        '.xwing-card-browser option[value="source"]': 'Source'
        '.xwing-card-browser option[value="type-by-points"]': 'Type (by Points)'
        '.xwing-card-browser option[value="type-by-name"]': 'Type (by Name)'
        '.xwing-card-browser .translate.select-a-card': 'Select a card from the list at the left.'
    singular:
        'pilots': 'Pilot'
        'modifications': 'Modification'
        'titles': 'Title'
    types:
        'Pilot': 'Pilot'
        'Modification': 'Modification'
        'Title': 'Title'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders['Español'] = () ->
    exportObj.cardLanguage = 'Español'

    # Assumes cards-common has been loaded
    basic_cards = window.basicCardData()

    exportObj.ships = basic_cards.ships

    # ship translations
    exportObj.renameShip 'Lambda-Class Shuttle', 'Lanzadera clase Lambda'
    exportObj.renameShip 'TIE Advanced', 'TIE Avanzado'
    exportObj.renameShip 'TIE Bomber', 'Bombardero TIE'
    exportObj.renameShip 'TIE Fighter', 'Caza TIE'
    exportObj.renameShip 'TIE Interceptor', 'Interceptor TIE'
    exportObj.renameShip 'TIE Phantom', 'TIE Fantasma'
    exportObj.renameShip 'A-Wing', 'Ala-A'
    exportObj.renameShip 'B-Wing', 'Ala-B'
    exportObj.renameShip 'E-Wing', 'Ala-E'
    exportObj.renameShip 'X-Wing', 'Ala-X'
    exportObj.renameShip 'Y-Wing', 'Ala-Y'

    pilot_translations =
        "Wedge Antilles":
            text: """Cuando ataques, la agilidad del piloto se reduce en 1 (hasta un mínimo de 0)."""
            ship: "Ala-X"
        "Garven Dreis":
            text: """Después de gastar una ficha de concentración, en vez de descartarla puedes asignar esa ficha a cualquier otra nave aliada que tengas a rango 1-2."""
            ship: "Ala-X"
        "Red Squadron Pilot":
            name: "Piloto del escuadrón rojo"
            ship: "Ala-X"
        "Rookie Pilot":
            name: "Piloto Novato"
            ship: "Ala-X"
        "Biggs Darklighter":
            text: """Las demás naves aliadas que tengas a alcance 1 no pueden ser seleccionadas como objetivo de un ataque si en vez de eso el atacante pudiese seleccionarte a tí como objetivo."""
            ship: "Ala-X"
        "Luke Skywalker":
            text: """Wenn du verteidigst, kannst du 1 deiner %FOCUS% in ein %EVADE% ändern."""
            ship: "Ala-X"
        "Gray Squadron Pilot":
            name: "Pilot der Grau-Staffel"
        '"Dutch" Vander':
            text: """Wähle ein anderes freundliches Schiff in Reichweite 1-2, nachdem du eine Zielerfassung durchgeführt hast. Das gewählte Schiff darf sofort ebenfalls eine Zielerfassung durchführen."""
        "Horton Salm":
            text: """Wenn du ein Ziel in Reichweite 2-3 angreifst, darfst du beliebig viele Leerseiten neu würfeln."""
        "Gold Squadron Pilot":
            name: "Pilot der Gold-Staffel"
        "Academy Pilot":
            name: "Piloto de la academia"
            ship: "Caza TIE"
        "Obsidian Squadron Pilot":
            name: "Piloto del escuadrón Obsidiana"
            ship: "Caza TIE"
        "Black Squadron Pilot":
            name: "Piloto del escuadrón Negro"
            ship: "Caza TIE"
        '"Winged Gundark"':
            name: '"Gundark Alado"'
            text: """Cuando ataques a alcance 1 puedes cambiar uno de tus resultados %HIT% por uno %CRIT%"""
            ship: "Caza TIE"
        '"Night Beast"':
            name: '"Bestia Nocturna"'
            text: """Después de que ejecutes una acción verde puedes realizar una acción libre de concentración"""
            ship: "Caza TIE"
        '"Backstabber"':
            name: '"Asesino Furtivo"'
            text: """Cuando ataques desde fuera del arco de fuego el defensor, lanza 1 dado de atauque adicional."""
            ship: "Caza TIE"
        '"Dark Curse"':
            name: '"Maldición Oscura"'
            text: """Cuando te defiendas en combate, las naves que te ataquen no podrán gastar fichas de concentración ni volver a lanzar dados de ataque."""
            ship: "Caza TIE"
        '"Mauler Mithel"':
            name: '"Mutilador Mithel"'
            text: """Si atacas a alcance 1, lanza 1 dado de ataque adicional."""
            ship: "Caza TIE"
        '"Howlrunner"':
            name: '"Aullador Veloz"'
            text: """Cuando otra nave aliada que tengas a alcance 1 ataque con su armamento principal, podrá volver a lanzar 1 dado de ataque."""
            ship: "Caza TIE"
        "Tempest Squadron Pilot":
            name: "Piloto del escuadrón Tempestad"
            ship: "TIE Avanzado"
        "Storm Squadron Pilot":
            name: "Piloto del escuadrón Tormenta"
            ship: "TIE Avanzado"
        "Maarek Stele":
            text: """Cuando tu ataque inflija una carta de daño boca arriba al defensor, en vez de eso roba 3 cartas de daño, elige 1 de ellas a tu ellección y descarta las otras."""
            ship: "TIE Avanzado"
        "Darth Vader":
            text: """Puedes llevar a cabo dos acciones durante el paso de acción."""
            ship: "TIE Avanzado"
        "Alpha Squadron Pilot":
            name: "Piloto del escuadrón Alfa"
            ship: "Interceptor TIE"
        "Avenger Squadron Pilot":
            name: "Piloto del escuadrón Vengador"
            ship: "Interceptor TIE"
        "Saber Squadron Pilot":
            name: "Piloto del escuadrón Sable"
            ship: "Interceptor TIE"
        "\"Fel's Wrath\"":
            name: '"Ira de Fel"'
            ship: "Interceptor TIE"
            text: """Cuando tengas asignadas tantas cartas de Daño como tu Casco o más, no serás destruido hasta el final de la fase de Combate."""
        "Turr Phennir":
            ship: "Interceptor TIE"
            text: """Después de que efectúes un ataque, puedes llevar a cabo una acción gratuita de impulso o tonel volado."""
        "Soontir Fel":
            ship: "Interceptor TIE"
            text: """Cuando recibas una ficha de Tensión, puedes asignar 1 ficha de Concentración a tu nave."""
        "Tycho Celchu":
            text: """Puedes realizar acciones incluso cuando tengas fichas de tensión."""
            ship: "Ala-A"
        "Arvel Crynyd":
            text: """Puedes designar como objetivo de tu ataque a una nave enemiga que esté dentro de tu arco de ataque y en contacto contigo."""
            ship: "Ala-A"
        "Green Squadron Pilot":
            name: "Piloto del escuadrón verde"
            ship: "Ala-A"
        "Prototype Pilot":
            name: "Piloto de pruebas"
            ship: "Ala-A"
        "Outer Rim Smuggler":
            name: "Schmuggler aus dem Outer Rim"
        "Chewbacca":
            text: """Wenn du eine offene Schadenskarte erhältst, wird sie sofort umgedreht (ohne dass ihr Kartentext in Kraft tritt)."""
        "Lando Calrissian":
            text: """Wähle nach dem Ausführen eines grünen Manövers ein anderes freundliches Schiff in Reichweite 1. Dieses Schiff darf eine freie Aktion aus seiner Aktionsleiste durchführen."""
        "Han Solo":
            text: """Wenn du angreifst, darfst du all deine Würfel neu würfeln. Tust du dies, musst du so viele Würfel wie möglich neu würfeln."""
        "Bounty Hunter":
            name: "Cazarrecompensas"
        "Kath Scarlet":
            text: """Cuando ataques, el defensor recibe una ficha de tensión si anula al menos un resultado %CRIT%."""
        "Boba Fett":
            text: """Cuando realices una maniobra de inclinación (%BANKLEFT% o %BANKRIGHT%) puedes girar tu selector de maniobras para escoger la otra maniobra e inclinación de la misma velocidad."""
        "Krassis Trelix":
            text: """Cuando ataques con un armamento secundario puedes volver a lanzar 1 dado de ataque."""
        "Ten Numb":
            text: """Cuando ataques, uno de tus resultados %CRIT% no puede ser anulado por los dados de defensa."""
            ship: "Ala-B"
        "Ibtisam":
            text: """Cuando ataques o te defiendas, si tienes al menos una ficha de Tensión puedes volver a lanzar uno de tus dados."""
            ship: "Ala-B"
        "Dagger Squadron Pilot":
            name: "Piloto del escuadrón daga"
            ship: "Ala-B"
        "Blue Squadron Pilot":
            name: "Piloto del escuadrón azul"
            ship: "Ala-B"
        "Rebel Operative":
            name: "Operador Rebelde"
        "Roark Garnet":
            text: '''Al comienzo de la fase de combate, elige a otra nave aliada que tengas a alcance 1-3. Hasta el final de la fase, se considera que el piloto de esta nave tiene habilidad 12.'''
        "Kyle Katarn":
            text: """Al comienzo de la fase de combate, puedes asignar una de tus fichas de Concentración a otra nave aliada que tengas a alcance 1-3."""
        "Jan Ors":
            text: """Cuando otra nave aliada que tengas a alcance 1-3 efectúe un ataque, si no tienes fichas de Tensión puedes recibir una ficha de Tensión para que esa nave lance un dado de ataque adicional."""
        "Scimitar Squadron Pilot":
            name: "Piloto del escuadrón Cimitarra"
            ship: "Bombardero TIE"
        "Gamma Squadron Pilot":
            name: "Piloto del escuadrón Gamma"
            ship: "Bombardero TIE"
        "Captain Jonus":
            name: "Capitán Jonus"
            ship: "Bombardero TIE"
            text: """Cuando otra nave aliada que tengas a alcance 1 ataque con un sistema de armamento secundario, puede volver a lanzar un máximo de 2 dados de ataque."""
        "Major Rhymer":
            name: "Comandante Rhymer"
            ship: "Bombardero TIE"
            text: """Cuando ataques con un sistema de armamento secundario, puedes incrementar o disminuir el alcance del arma en 1 hasta un límite de alcance comprendido entre 1 y 3."""
        "Omicron Group Pilot":
            name: "Piloto del grupo omicrón"
            ship: "Lanzadera clase Lambda"
        "Captain Kagi":
            name: "Capitán Kagi"
            text: """Cuando una nave enemiga fije un blanco, deberá fijar tu nave como blanco si es posible."""
            ship: "Lanzadera clase Lambda"
        "Colonel Jendon":
            name: "Coronel Jendon"
            text: """Al comienzo de la fase de combate, puedes asignar una de tus fichas azules de Blanco Fijado a una nave aliada que tengas a rango 1 si no tiene ya una ficha azul de Blanco Fijado."""
            ship: "Lanzadera clase Lambda"
        "Captain Yorr":
            name: "Capitán Yorr"
            text: """Cuando otra nave aliada que tengas a alcance 1-2 vaya a recibir una ficha de Tensión, si tienes 2 fichas de Tensión o menos puedes recibir esa ficha en su lugar."""
            ship: "Lanzadera clase Lambda"
        "Lieutenant Lorrir":
            ship: "Interceptor TIE"
            text: """Wenn du die Aktion Fassrolle ausführst, kannst du 1 Stressmarker erhalten, um die (%BANKLEFT% 1) oder (%BANKRIGHT% 1) Manöverschablone anstatt der (%STRAIGHT% 1) Manöverschablone zu benutzen."""
        "Royal Guard Pilot":
            name: "Piloto de la guardia Real"
            ship: "Interceptor TIE"
            name: "Royal Guard Pilot"
        "Tetran Cowall":
            ship: "Interceptor TIE"
            text: """Cuando reveles una maniobra %UTURN%, puedes tratar la velocidad de esa maniobra como "1", "3" o "5"."""
        "Kir Kanos":
            ship: "Interceptor TIE"
            text: """Cuando ataques a una nave a alcance 2-3, puedes gastar un token de evadir para añadir 1 resultado %HIT% a tu tirada."""
        "Carnor Jax":
            ship: "Interceptor TIE"
            text: """Las naves enemigas a alcance 1 de esta nave no pueden realizar acciones de concentración o evadir, ni pueden gastar fichas de concentración ni evadir."""
        "GR-75 Medium Transport":
            name: "GR-75 Medium Transport"
        "Bandit Squadron Pilot":
            name: "Bandit Squadron Pilot"
        "Tala Squadron Pilot":
            name: "Tala Squadron Pilot"
        "Lieutenant Blount":
            name: "Leutnant Blount"
            text: """When attacking, the defender is hit by your attack, even if he does not suffer any damage."""
        "Airen Cracken":
            name: "Airen Cracken"
            text: """After you perform an attack, you may choose another friendly ship at Range 1.  That ship may perform 1 free action."""
        "Delta Squadron Pilot":
            name: "Piloto del escuadrón Delta"
        "Onyx Squadron Pilot":
            name: "Piloto del escuadrón Onyx"
        "Colonel Vessery":
            name: "Coronel Vessery"
            text: """Cuando ataques, inmediatamente después de que hayas lanzado los dados, puedes fijar blanco en el defensor si esa nave tiene ya una ficha roja de blanco fijado."""
        "Rexler Brath":
            text: """Después de que realices un ataque que haga al menos 1 carta de daño al defensor, tu puedes gastar una ficha de concentración para voltear esa carta boca arriba."""
        "Knave Squadron Pilot":
            name: "Knave Squadron Pilot"
        "Blackmoon Squadron Pilot":
            name: "Blackmoon Squadron Pilot"
        "Etahn A'baht":
            text: """When an enemy ship inside your firing arc at Range 1-3 is defending, the attacker may change 1 of its %HIT% results to a %CRIT% result."""
        "Corran Horn":
            text: """At the start of the ??? you may perform ??? cannot attack ???"""
        "Sigma Squadron Pilot":
            name: "Piloto del escuadrón Sigma"
            ship: "TIE Fantasma"
        "Shadow Squadron Pilot":
            name: "Piloto del escuadrón Sombra"
            ship: "TIE Fantasma"
        "Unspoiled PS6 TIE Phantom Pilot":
            name: "Piloto de habilidad 6 no publicado"
            ship: "TIE Fantasma"
        '"Whisper"':
            name: '"Susurro"'
            text: """Después de que efectúes un ataque que de en el blanco, puedes asignar una ficha de focus a tu nave."""
            ship: "TIE Fantasma"
        "CR90 Corvette (Fore)":
            name: "CR90 Corvette (Fore)"
        "CR90 Corvette (Aft)":
            name: "CR90 Corvette (Aft)"
        "Wes Janson":
            text: """Después de que realices un ataque, puedes remover una ficha de Concentración, Evadir o una ficha de fijar blanco azúl del defensor."""
            ship: "Ala-X"
        "Jek Porkins":
            text: """Cuando recibas una ficha de Tensión, puedes removerla y lanzar un dado de ataque. Si el resultado es de %HIT%, asigna una carta de daño boca abajo a tu nave."""
            ship: "Ala-X"
        '"Hobbie" Kilvan':
            text: """Cuando adquieras o gastes una ficha de fijar blanco, puedes remover una ficha de Tensión de tu nave."""
            ship: "Ala-X"
        "Tarn Mison":
            text: """Cuando una nave te declare como el objetivo de tu ataque, puedes fijar blanco en esa nave."""
            ship: "Ala-X"
        "Jake Farrell":
            text: """Después de que realices una acción de Concentración o te asignen una ficha de Concentración, puedes realizar una acción de impulso o de tonel volado."""
            ship: "Ala-A"
        "Unspoiled PS5 A-Wing Pilot":
            name: "Unspoiled PS5 A-Wing Pilot"
            text: """This card has not yet been revealed."""
            ship: "Ala-A"
        "Keyan Farlander":
            text: """Cuando ataques, puedes remover de tu nave una ficha de tensión para cambiar todos tus resultados %FOCUS% por %HIT%."""
            ship: "Ala-B"
        "Unspoiled PS5 B-Wing Pilot":
            name: "Unspoiled PS5 B-Wing Pilot"
            text: """This card has not yet been revealed."""
            ship: "Ala-B"

    upgrade_translations =
        "Ion Cannon Turret":
            name: "Ionengeschütz"
            text: """<strong>Angriff:</strong> Greife 1 Schiff an (es muss nicht in deinem Feuerwinkel sein).<br /><br />Wenn der Angriff trifft, nimmt das verteidigende Schiff 1 Schaden und erhält 1 Ionenmarker. Dann werden alle übrigen Würfelergebnisse negiert."""
        "Proton Torpedoes":
            name: "Protonen-Torpedos"
            text: """<strong>Angriff (Zielerfassung):</strong>Gib eine Zielerfassung aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Du darfst eines deiner %FOCUS% in ein %CRIT% ändern."""
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
            text: """Wähle zu Beginn der Kampfphase 1 freundliches Schiff in Reichweite 1.<br /><br />Bis zum Ende dieser Phase wird das gewählte Schiff so behandelt, als hätte es denselben Pilotenwert wie du."""
        "Squad Leader":
            name: "Staffelführer"
            text: """<strong>Aktion:</strong> Wähle ein Schiff in Reichweite 1-2 mit einem geringeren Pilotenwert als du.<br /><br />Das gewählte Schiff darf sofort 1 freie Aktion durhführen."""
        "Expert Handling":
            name: "Flugkunst"
            text: """<strong>Aktion:</strong> Führe eine Fassrolle durch. Wenn du kein %BARRELROLL%-Symbol hast, erhälst du 1 Stressmarker.<br /><br />Dann darfst du 1 feindlichen Zielerfassungsmarker von deinem Schiff entfernen."""
        "Marksmanship":
            name: "Treffsicherheit"
            text: """<strong>Aktion:</strong> Wenn du in dieser Runde angreifst, darfst du eines deiner %FOCUS% in ein %CRIT% und alle anderen %FOCUS% in %HIT% ändern."""
        "Concussion Missiles":
            name: "Erschütterungsraketen"
            text: """<strong>Angriff (Zielerfassung):</strong> Gib deine Zielerfassungsmarker aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Du darfst eine deiner Leerseiten in ein %HIT% ändern."""
        "Cluster Missiles":
            name: "Cluster-Raketen"
            text: """<strong>Angriff (Zielerfassung):</strong> Gib deine Zielerfassungsmaker aus und lege diese Karte ab, um mit dieser Sekundärwaffe <strong>zwei Mal</strong> anzugreifen."""
        "Daredevil":
            text: """<strong>Aktion:</strong> Führe ein rotes (%TURNLEFT% 1) oder (%TURNRIGHT% 1) Manöver aus.<br /><br />Wenn du kein %BOOST%-Aktionssymbol hast, musst du dann 2 Angriffswürfel werfen. Du nimmst allen gewürfelten Schaden (%HIT%) und kritischen Schaden (%CRIT%)."""
        "Elusiveness":
            name: "Schwer zu Treffen"
            text: """Wenn du verteidigst, darfst du 1 Stressmarker nehmen, um 1 Angriffswürfel zu wählen. Diesen muss der Angreifer neu würfeln.<br /><br />Du kannst diese Fähigkeit nicht einsetzen, solange du 1 oder mehrere Stressmarker hast."""
        "Homing Missiles":
            name: "Lenkraketen"
            text: """<strong>Angriff (Zielerfassung):</strong> Lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Bei diesem Angriff kann der Verteidiger keine Ausweichmarker ausgeben."""
        "Push the Limit":
            name: "Bis an die Grenzen"
            text: """Einmal pro Runde darfst du nach dem Durchführen einer Aktion eine freie Aktion aus deiner Aktionsleiste durhführen.<br /><br />Dann erhältst du 1 Stressmarker."""
        "Deadeye":
            name: "Meisterschütze"
            text: """Du darfst die Bedingung "Angriff (Zielerfassung):" in "Angriff (Fokussierung):" ändern.<br /><br />Wenn ein Angriff das Ausgeben von Zielerfassungsmarkern erfordert, darfst du stattdessen auch einen Fokusmarker ausgeben."""
        "Expose":
            name: "Aggressiv"
            text: """<strong>Aktion:</strong> Bis zum Ende der Runde steigt dein Primärwaffenwert um 1, dafür sinkt dein Wendigkeitswert um 1."""
        "Gunner":
            name: "Bordschütze"
            text: """Führe, unmittelbar nachdem du mit einem Angriff verfehlt hast, einen weiteren Angriff mit deiner Primärwaffe aus. Danach kannst du in dieser Runde nicht noch einmal angreifen."""
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
            text: """Angriff (Zielerfassung): Gib deine Zielerfassungsmarker aus und lege diese Karte ab, um mit dieser Sekundärwaffe anzugreifen.<br /><br />Wenn du triffst, nimmt jedes andere Schiff in Reichweite 1 des verteidigenden Schiffs 1 Schaden."""
        "Veteran Instincts":
            name: "Veteraneninstinkte"
            text: """Dein Pilotenwert steigt um 2."""
        "Proximity Mines":
            name: "Annährungsminen"
            text: """<strong>Aktion:</strong> Lege diese Karte ab, um 1 Annährungsminen-Marker zu <strong>legen</strong>.<br /><br />Der Marker <strong>detoniert</strong>, wenn sich beim Ausführen eines Manövers die Basis eines Schiffs oder die Manöverschablone mit dem Marker überschneidet."""
        "Weapons Engineer":
            name: "Waffen-Techniker"
            text: """Du darfst 2 verschiedene Schiffe gleichzeitig in Zielerfassung haben (maximal 1 Zielerfassung pro feindlichem Schiff).<br /><br />Wenn du die Aktion Zielerfassung durchführst darfst du zwei verschiedene Schiffe als Ziele erfassen."""
        "Draw Their Fire":
            name: "Das Feuer auf mich ziehen"
            text: """Wenn ein freundliches Schiff in Reichweite 1 durch einen Angriff getroffen wird, darfst du anstelle dieses Schiffs den Schaden für 1 nicht-negiertes %CRIT% auf dich nehmen."""
        "Luke Skywalker":
            text: """Cuando defiendes en combate puedes cambiar uno de tus resultados %FOCUS% por %EVADE%."""
        "Nien Nunb":
            text: """Du darfst alle %STRAIGHT%-Manöver wie grüne Manöver behandeln."""
        "Chewbacca":
            text: """Wenn du eine Schadenskarte erhältst, darfst du sie sofort ablegen und 1 Schild wiederaufladen.<br /><br />Danach wird diese Aufwertungskarte abgelegt."""
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
        "Proton Bomb":
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
            text: """Nachdem du ein feindliches Schiff angegriffen hast, darfst du 2 Schaden nehmen, damit dieses Schiff 1 kritischen Schaden nimmt."""
        "Rebel Captive":
            name: "Gefangener Rebell"
            text: """Ein Mal pro Runde erhält das erste Schiff, das einen Angriff gegen dich ansagt, sofort 1 Stressmarker."""
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
            name: "Comms Booster"
            text: """<strong>Energy:</strong> Spend 1 energy to remove all stress tokens from a friendly ship at Range 1-3.  Then assign 1 focus token to that ship."""
        "Slicer Tools":
            name: "Slicer Tools"
            text: """<strong>Action:</strong> Choose 1 or more ships at Range 1-3 that have a stress token.  For each ship chosen, you may spend 1 energy to cause that ship to suffer 1 damage."""
        "Shield Projector":
            name: "Shield Projector"
            text: """When an enemy ship is declaring either a small or large ship as the target of its attack, you may spend 3 energy to force that ship to target you if possible."""
        "Ion Pulse Missiles":
            name: "Ion Pulse Missiles"
            text: """<strong>Attack (target lock):</strong> Discard this card to perform this attack.<br /><br />If this attack hits, the defender suffers 1 damage and receives 2 ion tokens.  Then cancel <strong>all<strong> dice results."""
        "Wingman":
            name: "Wingman"
            text: """At the start of the Combat phase, remove 1 stress token from another friendly ship at Range 1."""
        "Decoy":
            name: "Decoy"
            text: """This card has not yet been released."""
        "Outmaneuver":
            name: "Outmaneuver"
            text: """When attacking a ship inside your firing arc, if you are not inside that ship's firing arc, reduce its agility value by 1 (to a minimum of 0)."""
        "Predator":
            name: "Predator"
            text: """When attacking, you may reroll 1 attack die.  If the defender's pilot skill value is "2" or lower, you may instead reroll up to 2 attack dice."""
        "Flechette Torpedoes":
            name: "Flechette Torpedoes"
            text: """<strong>Attack (target lock):</strong> Discard this card and spend your target lock to perform this attack.<br /><br />After you perform this attack, the defender receives 1 stress token if its hull value is "4" or lower."""
        "R7 Astromech":
            name: "R7 Astromech"
            text: """This card has not yet been released."""
        "R7-T1":
            name: "R7-T1"
            text: """<strong>Action:</strong> Choose an enemy ship at Range 1-2.  If you are inside that ship's firing arc, you may acquire a target lock on that ship.  Then, you may perform a free boost action."""
        "Tactician":
            name: "Tactician"
            text: """This card has not yet been released."""
        "R2-D2 (Crew)":
            name: "R2-D2 (Crew)"
            text: """At the end of the End phase, if you have no shields, you may recover 1 shield and roll 1 attack die.  On a %HIT% result, randomly flip 1 of your facedown Damage cards faceup and resolve it."""
        "C-3PO":
            name: "C-3PO"
            text: """Once per round, before you roll 1 or more defense dice, you may guess aloud a number of %EVADE% results.  If you roll that many %EVADE% results (before modifying dice), add 1 %EVADE% result."""
        "Single Turbolasers":
            name: "Single Turbolasers"
            text: """<strong>Attack (Energy):</strong> Spend 2 energy from this card to perform this attack.  The defender doubles his agility value against this attack.  You may change 1 of your %FOCUS% results to a %HIT% result."""
        "Quad Laser Cannons":
            name: "Quad Laser Cannons"
            text: """<strong>Attack (Energy):</strong> Spend 1 energy from this card to perform this attack.  If this attack does not hit, you may immediately spend 1 energy from this card to perform this attack again."""
        "Tibanna Gas Supplies":
            name: "Tibanna Gas Supplies"
            text: """<strong>Energy:</strong> You may discard this card to gain 3 energy."""
        "Ionization Reactor":
            name: "Ionization Reactor"
            text: """<strong>Energy:</strong> Spend 5 energy from this card and discard this card to cause each other ship at Range 1 to suffer 1 damage and receive 1 ion token."""
        "Engine Booster":
            name: "Engine Booster"
            text: """Immediately before you reveal your maneuver dial, you may spend 1 energy to execute a white (%STRAIGHT% 1) maneuver.  You cannot use this ability if you would overlap another ship."""
        "R3-A2":
            name: "R3-A2"
            text: """When you declare the target of your attack, if the defender is inside your firing arc, you may receive 1 stress token to cause the defender to receive 1 stress token."""
        "R2-D6":
            name: "R2-D6"
            text: """Your upgrade bar gains the %ELITE% upgrade icon.<br /><br />You cannot equip this upgrade if you already have a %ELITE% upgrade icon or if your pilot skill value is "2" or lower."""
        "Enhanced Scopes":
            name: "Enhanced Scopes"
            text: """During the Activation phase, treat your pilot skill value as "0"."""
        "Chardaan Refit":
            name: "Chardaan Refit"
            text: """This card has a negative squad point cost."""
        "Proton Rockets":
            name: "Proton Rockets"
            text: """This card has not yet been revealed."""
        "Kyle Katarn":
            text: """After you receive a stress token from your ship, you may assign a focus token to ???"""
        "Jan Ors":
            text: """This card has not yet been revealed."""

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
            text: """Nachdem ein feindliches Schiff ein Manöver ausgeführt hat, das zur Überschneidung mit deinem Schiff führt, wirf 1 Angriffswürfel. Bei %HIT% oder %CRIT% nimmt das feindliche Schiff 1 Schaden."""
        "Targeting Computer":
            name: "Zielerfassungssystem"
            text: """Deine Aufwertungsleiste erhält das %TARGETLOCK%-Symbol."""
        "Hull Upgrade":
            name: "Verbesserte Hülle"
            text: """Erhöhe deinen Hüllenwert um 1."""
        "Munitions Failsafe":
            name: "Munitions Failsafe"
            text: """When attacking with a secondary weapon that instructs you to discard it to perform the attack, do not discard it unless the attack hits."""
        "Stygium Particle Accelerator":
            name: "Stygium Particle Accelerator"
            text: """When you either decloak or perform a cloak action, you may perform a free evade action."""
        "Advanced Cloaking Device":
            name: "Advanced Cloaking Device"
            text: """After you perform an attack, you may perform a free cloak action."""


    title_translations =
        "Slave I":
            name: "Sklave I"
            text: """Füge deiner Aktionsleiste ein %TORPEDO%-Symbol hinzu."""
        "Millennium Falcon":
            name: "Millennium Falke"
            text: """Füge deiner Aktionsleiste ein %EVADE%-Symbol hinzu."""
        "Moldy Crow":
            text: """In der Endphase werden von diesem Schiff keine unbenutzen Fokusmarker entfernt."""
        "ST-321":
            text: """Wenn du eine Zielerfassung durchführst, darfst du ein beliebiges feindliches Schiff auf der Spielfläche als Ziel erfassen."""
        "Royal Guard TIE":
            name: "TIE der Roten Garde"
            ship: "Interceptor TIE"
            text: """Du kannst bis zu 2 verschiedene Modifikationen verwenden (statt einer).<br /><br />Du kannst diese Karte nicht verwenden, wenn der Pilotenwert "4" oder kleiner ist."""
        "Dodonna's Pride":
            name: "Dodonna's Pride"
            text: """When you perform a coordinate action, you may choose 2 friendly ships (instead of 1).  Those ships may each perform 1 free action."""
        "A-Wing Test Pilot":
            name: "A-Wing Test Pilot"
            text: """Your upgrade bar gains 1 %ELITE% upgrade icon.<br /><br />You cannot equip 2 of the same %ELITE% Upgrade cards.  You cannot equip this if your pilot skill value is "1" or lower."""
        "B-Wing/E":
            text: """Your upgrade bar gains the %CREW% upgrade icon."""
        "Tantive IV":
            text: """Your fore section upgrade bar gains 1 additional %CREW% and 1 additional %TEAM% upgrade icon."""

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations
