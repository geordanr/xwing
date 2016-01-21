exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.es = 'Español'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations['Español'] =
    action:
        "Barrel Roll": "Tonel Volado"
        "Boost": "Impulso"
        "Evade": "Evadir"
        "Focus": "Concentración"
        "Target Lock": "Blanco Fijado"
        "Recover": "Recuperar"
        "Reinforce": "Reforzar"
        "Jam": "Interferir"
        "Coordinate": "Coordinar"
        "Cloak": "Camuflaje"
    slot:
        "Astromech": "Droide Astromech"
        "Bomb": "Bomba"
        "Cannon": "Cañón"
        "Crew": "Tripulación"
        "Elite": "Élite"
        "Missile": "Misiles"
        "System": "Sistemas"
        "Torpedo": "Torpedos"
        "Turret": "Torreta"
        "Cargo": "Carga"
        "Hardpoint": "Hardpoint"
        "Team": "Equipo"
        "Illicit": "Ilícita"
        "Salvaged Astromech": "Droide Astromech Remendado"
        "Tech": "Tecnología"
    sources: # needed?
        "Core": "Caja Básica"
        "A-Wing Expansion Pack": "Pack de Expansión Ala-A"
        "B-Wing Expansion Pack": "Pack de Expansión Ala-B"
        "X-Wing Expansion Pack": "Pack de Expansión Ala-X"
        "Y-Wing Expansion Pack": "Pack de Expansión Ala-Y"
        "Millennium Falcon Expansion Pack": "Pack de Expansión Halcón Milenario"
        "HWK-290 Expansion Pack": "Pack de Expansión HWK-290"
        "TIE Fighter Expansion Pack": "Pack de Expansión Caza TIE"
        "TIE Interceptor Expansion Pack": "Pack de Expansión Interceptor TIE"
        "TIE Bomber Expansion Pack": "Pack de Expansión Bombardero TIE"
        "TIE Advanced Expansion Pack": "Pack de Expansión TIE Avanzado"
        "Lambda-Class Shuttle Expansion Pack": "Pack de Expansión Lanzadera clase LAmbda"
        "Slave I Expansion Pack": "Pack de Expansión Esclavo 1"
        "Imperial Aces Expansion Pack": "Pack de Expansión Ases Imperiales"
        "Rebel Transport Expansion Pack": "Pack de Expansión Transporte Rebelde"
        "Z-95 Headhunter Expansion Pack": "Pack de Expansión Z-95 Cazacabezas"
        "TIE Defender Expansion Pack": "Pack de Expansión Defensor TIE"
        "E-Wing Expansion Pack": "Pack de Expansión Ala-E"
        "TIE Phantom Expansion Pack": "Pack de Expansión TIE Fantasma"
        "Tantive IV Expansion Pack": "Pack de Expansión Tantive IV"
        "Rebel Aces Expansion Pack": "Pack de Expansión Ases Rebeldes"
        "YT-2400 Freighter Expansion Pack": "Pack de Expansión Carguero YT-2400"
        "VT-49 Decimator Expansion Pack": "Pack de Expansión VT-49 Diezmador"
        "StarViper Expansion Pack": "Pack de Expansión Víbora Estelar"
        "M3-A Interceptor Expansion Pack": "Pack de Expansión Interceptor M3-A"
        "IG-2000 Expansion Pack": "Pack de Expansión IG-2000"
        "Most Wanted Expansion Pack": "Pack de Expansión Los Más Buscados"
        "Imperial Raider Expansion Pack": "Pack de Expansión Incursor Imperial"
        "K-Wing Expansion Pack": "Pack de Expansión Ala-K"
        "TIE Punisher Expansion Pack": "Pack de Expansión Castigador TIE"
        "Kihraxz Fighter Expansion Pack": "Pack de Expansión Caza Kihraxz"
        "Hound's Tooth  Expansion Pack": "Pack de Expansión Diente de Perro"
        "The Force Awakens Core Set": "Caja Básica El Despertar de la Fuerza"
    ui:
        shipSelectorPlaceholder: "Selecciona una nave"
        pilotSelectorPlaceholder: "Selecciona un piloto"
        upgradePlaceholder: (translator, language, slot) ->
            switch slot
                when 'Elite'
                    "Sin Talento de Élite"
                when 'Astromech'
                    "Sin Droide Astromecánico"
                when 'Illicit'
                    "Sin Mejora Ilícita"
                when 'Salvaged Astromech'
                    "Sin Droide Astromech Remendado"
                else
                    "Sin Mejora de #{translator language, 'slot', slot}"
        modificationPlaceholder: "Sin Modificación"
        titlePlaceholder: "Sin Título"
        upgradeHeader: (translator, language, slot) ->
            switch slot
                when 'Elite'
                    "Talento de Élite"
                when 'Astromech'
                    "Droide Astromecánico"
                when 'Illicit'
                    "Mejora Ilícita"
                when 'Salvaged Astromech'
                    "Droide Astromech Remendado"
                else
                    "Mejora de #{translator language, 'slot', slot}"
        unreleased: "inédito"
        epic: "épico"
    byCSSSelector:
        '.xwing-card-browser .translate.sort-cards-by': 'Ordenar cartas por'
        '.xwing-card-browser option[value="name"]': 'Nombre'
        '.xwing-card-browser option[value="source"]': 'Fuente'
        '.xwing-card-browser option[value="type-by-points"]': 'Tipo (por Puntos)'
        '.xwing-card-browser option[value="type-by-name"]': 'Tipo (por Nombre)'
        '.xwing-card-browser .translate.select-a-card': 'Selecciona una carta del listado de la izquierda.'
        # Info well
        '.info-well .info-ship td.info-header': 'Nave'
        '.info-well .info-skill td.info-header': 'Habilidad'
        '.info-well .info-actions td.info-header': 'Acciones'
        '.info-well .info-upgrades td.info-header': 'Mejoras'
        '.info-well .info-range td.info-header': 'Alcance'
        # Squadron edit buttons
        '.clear-squad' : 'Nuevo Escuadron'
        '.save-list' : 'Grabar'
        '.save-list-as' : 'Grabar como...'
        '.delete-list' : 'Eliminar'
        '.backend-list-my-squads' : 'Cargar Escuadron'
        '.view-as-text' : '<span class="hidden-phone"><i class="icon-print"></i>&nbsp;Imprimir/Ver como </span>Text'
        '.randomize' : 'Aleatorio!'
        '.randomize-options' : 'Opciones de aleatoriedad…'
        '.notes-container > span' : 'Squad Notes'
        # Print/View modal
        '.bbcode-list' : 'Copia el BBCode de debajo y pegalo en el post de tu foro.<textarea></textarea><button class="btn btn-copy">Copia</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Copia</button>'
        '.vertical-space-checkbox' : """Añade espacio para cartas de daño/mejora cuando imprima. <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Imprima en color. <input type="checkbox" class="toggle-color-print" />"""
        '.print-list' : '<i class="icon-print"></i>&nbsp;Imprimir'
        # Randomizer options
        '.do-randomize' : 'Genera Aleatoriamente!'
        # Top tab bar
        '#empireTab' : 'Imperio Galactico'
        '#rebelTab' : 'Alianza Rebelde'
        '#scumTab' : 'Escoria y Villanos'
        '#browserTab' : 'Explorador de Cartas'
        '#aboutTab' : 'Acerca de'
    singular:
        'pilots': 'Piloto'
        'modifications': 'Modificación'
        'titles': 'Título'
    types:
        'Pilot': 'Piloto'
        'Modification': 'Modificación'
        'Title': 'Título'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders['Español'] = () ->
    exportObj.cardLanguage = 'Español'

    # Assumes cards-common has been loaded
    basic_cards = exportObj.basicCardData()
    exportObj.canonicalizeShipNames basic_cards

    exportObj.ships = basic_cards.ships

    # ship translations
    exportObj.renameShip 'Lambda-Class Shuttle', 'Lanzadera clase Lambda'
    exportObj.renameShip 'TIE Advanced', 'TIE Avanzado'
    exportObj.renameShip 'TIE Bomber', 'Bombardero TIE'
    exportObj.renameShip 'TIE Fighter', 'Caza TIE'
    exportObj.renameShip 'TIE Interceptor', 'Interceptor TIE'
    exportObj.renameShip 'TIE Phantom', 'TIE Fantasma'
    exportObj.renameShip 'TIE Defender', 'Defensor TIE'
    exportObj.renameShip 'TIE Punisher', 'Castigador TIE'
    exportObj.renameShip 'VT-49 Decimator', 'VT-49 Diezmador'
    exportObj.renameShip 'TIE/fo Fighter', 'Caza TIE/fo'
    exportObj.renameShip 'A-Wing', 'Ala-A'
    exportObj.renameShip 'B-Wing', 'Ala-B'
    exportObj.renameShip 'E-Wing', 'Ala-E'
    exportObj.renameShip 'X-Wing', 'Ala-X'
    exportObj.renameShip 'Y-Wing', 'Ala-Y'
    exportObj.renameShip 'K-Wing', 'Ala-K'
    exportObj.renameShip 'Z-95 Headhunter', 'Z-95 Cazacabezas'
    exportObj.renameShip 'CR90 Corvette (Aft)', 'Corbeta CR90 (Popa)'
    exportObj.renameShip 'CR90 Corvette (Fore)', 'Corbeta CR90 (Proa)'
    exportObj.renameShip 'GR-75 Medium Transport', 'Transporte mediano GR-75'
    exportObj.renameShip 'T-70 X-Wing', 'T-70 Ala-X'
    exportObj.renameShip 'M3-A Interceptor', 'Interceptor M3-A'
    exportObj.renameShip 'StarViper', 'Víbora Estelar'
    exportObj.renameShip 'Aggressor', 'Agresor'
    exportObj.renameShip 'Kihraxz Fighter', 'Caza Kihraxz'

    pilot_translations =
        "Wedge Antilles":
            text: """Cuando ataques, la Agilidad del piloto se reduce en 1 (hasta un mínimo de 0)."""
            ship: "Ala-X"
        "Garven Dreis":
            text: """Después de gastar una ficha de Concentración, en vez de descartarla puedes asignar esa ficha a cualquier otra nave aliada que tengas a alcance 1-2."""
            ship: "Ala-X"
        "Red Squadron Pilot":
            name: "Piloto del escuadrón Rojo"
            ship: "Ala-X"
        "Rookie Pilot":
            name: "Piloto Novato"
            ship: "Ala-X"
        "Biggs Darklighter":
            text: """Las demás naves aliadas que tengas a alcance 1 no pueden ser seleccionadas como objetivo de ataques si en vez de eso el atacante pudiese seleccionarte a tí como objetivo."""
            ship: "Ala-X"
        "Luke Skywalker":
            text: """Cuando te defiendas en combate puedes cambiar 1 de tus resultados %FOCUS% por un resultado %EVADE%."""
            ship: "Ala-X"
        "Gray Squadron Pilot":
            name: "Piloto del escuadrón Gris"
            ship: "Ala-Y"
        '"Dutch" Vander':
            text: """Después de que fijes un blanco, elige otra nave aliada que tengas a alcance 1-2. La nave elegida podrá fijar un blanco inmediatamente."""
            ship: "Ala-Y"
        "Horton Salm":
            text: """Cuando ataques a alcance 2-3, puedes volver a lanzar cualesquier dados en los que hayas sacado caras vacías."""
            ship: "Ala-Y"
        "Gold Squadron Pilot":
            name: "Piloto del escuadrón Oro"
            ship: "Ala-Y"
        "Academy Pilot":
            name: "Piloto de la Academia"
            ship: "Caza TIE"
        "Obsidian Squadron Pilot":
            name: "Piloto del escuadrón Obsidiana"
            ship: "Caza TIE"
        "Black Squadron Pilot":
            name: "Piloto del escuadrón Negro"
            ship: "Caza TIE"
        '"Winged Gundark"':
            name: '"Gundark Alado"'
            text: """Cuando ataques a alcance 1, puedes cambiar 1 de tus resultados %HIT% por un resultado %CRIT%"""
            ship: "Caza TIE"
        '"Night Beast"':
            name: '"Bestia Nocturna"'
            text: """Después de que ejecutes una maniobra verde, puedes realizar una acción gratuita de Concentración"""
            ship: "Caza TIE"
        '"Backstabber"':
            name: '"Asesino Furtivo"'
            text: """Cuando ataques desde fuera del arco de fuego del defensor, tira 1 dado de ataque adicional."""
            ship: "Caza TIE"
        '"Dark Curse"':
            name: '"Maldición Oscura"'
            text: """Cuando te defiendas en combate, las naves que te ataquen no podrán gastar fichas de Concentración ni volver a tirar dados de ataque."""
            ship: "Caza TIE"
        '"Mauler Mithel"':
            name: '"Mutilador Mithel"'
            text: """Si atacas a alcance 1, tira 1 dado de ataque adicional."""
            ship: "Caza TIE"
        '"Howlrunner"':
            name: '"Aullador Veloz"'
            text: """Cuando otra nave aliada que tengas a alcance 1 ataque con su armamento principal, podrá volver a tirar 1 dado de ataque."""
            ship: "Caza TIE"
        "Tempest Squadron Pilot":
            name: "Piloto del escuadrón Tempestad"
            ship: "TIE Avanzado"
        "Storm Squadron Pilot":
            name: "Piloto del escuadrón Tormenta"
            ship: "TIE Avanzado"
        "Maarek Stele":
            text: """Cuando tu ataque inflija una carta de Daño boca arriba al defensor, en vez de eso roba 3 cartas de Daño, elige 1 de ellas a tu elección y luego descarta las otras."""
            ship: "TIE Avanzado"
        "Darth Vader":
            text: """Puedes llevar a cabo dos acciones durante tu paso de acción."""
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
            text: """Puedes realizar acciones incluso aunque tengas fichas de Tensión."""
            ship: "Ala-A"
        "Arvel Crynyd":
            text: """Puedes designar como objetivo de tu ataque a una nave enemiga que esté dentro de tu arco de ataque y en contacto contigo."""
            ship: "Ala-A"
        "Green Squadron Pilot":
            name: "Piloto del escuadrón Verde"
            ship: "Ala-A"
        "Prototype Pilot":
            name: "Piloto de pruebas"
            ship: "Ala-A"
        "Outer Rim Smuggler":
            name: "Contrabandista del Borde Exterior"
        "Chewbacca":
            text: """Cuando recibas una carta de Daño boca arriba, ponla boca abajo inmediatamente sin resolver su texto de reglas."""
        "Lando Calrissian":
            text: """Después de que ejecutes una maniobra verde, elige otra nave aliada que tengas a alcance 1. Esa nave podrá realizar una acción gratuita de las indicadas en su barra de acciones."""
        "Han Solo":
            text: """Cuando ataques, puedes volver a tirar todos tus dados. Si decides hacerlo, debes volver a tirar tantos como te sea posible."""
        "Bounty Hunter":
            name: "Cazarrecompensas"
        "Kath Scarlet":
            text: """Cuando ataques, el defensor recibe 1 ficha de Tensión si anula al menos 1 resultado %CRIT%."""
        "Boba Fett":
            text: """Cuando realices una maniobra de inclinación (%BANKLEFT% o %BANKRIGHT%), puedes girar tu selector de maniobras para escoger la otra maniobra de inclinación de la misma velocidad."""
        "Krassis Trelix":
            text: """Cuando ataques con un armamento secundario, puedes volver a tirar 1 dado de ataque."""
        "Ten Numb":
            text: """Cuando atacas, 1 de tus resultados %CRIT% no puede ser anulado por los dados de defensa."""
            ship: "Ala-B"
        "Ibtisam":
            text: """Cuando atacas o te defiendes, si tienes al menos 1 ficha de Tensión, puedes volver a tirar 1 de tus dados."""
            ship: "Ala-B"
        "Dagger Squadron Pilot":
            name: "Piloto del escuadrón Daga"
            ship: "Ala-B"
        "Blue Squadron Pilot":
            name: "Piloto del escuadrón Azul"
            ship: "Ala-B"
        "Rebel Operative":
            name: "Operador Rebelde"
        "Roark Garnet":
            text: """Al comienzo de la fase de Combate, elige otra nave aliada que tengas a alcance 1-3. Hasta el final de la fase, se considera que el piloto de esa nave tiene habilidad 12."""
        "Kyle Katarn":
            text: """Al comienzo de la fase de Combate, puedes asignar 1 de tus fichas de Concentración a otra nave aliada que tengas a alcance 1-3."""
        "Jan Ors":
            text: """Cuando otra nave aliada que tengas a alcance 1-3 efectúe un ataque, si no tienes fichas de Tensión puedes recibir 1 ficha de Tensión para que esa nave tire 1 dado de ataque adicional."""
        "Scimitar Squadron Pilot":
            name: "Piloto del escuadrón Cimitarra"
            ship: "Bombardero TIE"
        "Gamma Squadron Pilot":
            name: "Piloto del escuadrón Gamma"
            ship: "Bombardero TIE"
        "Captain Jonus":
            name: "Capitán Jonus"
            ship: "Bombardero TIE"
            text: """Cuando otra nave aliada que tengas a alcance 1 ataque con un sistema de armamento secundario, puede volver a tirar un máximo de 2 dados de ataque."""
        "Major Rhymer":
            name: "Comandante Rhymer"
            ship: "Bombardero TIE"
            text: """Cuando atacas con un sistema de armamento secundario, puedes incrementar o reducir en 1 el alcance del arma (hasta un límite de alcance comprendido entre 1 y 3)."""
        "Omicron Group Pilot":
            name: "Piloto del grupo Omicrón"
            ship: "Lanzadera clase Lambda"
        "Captain Kagi":
            name: "Capitán Kagi"
            text: """Cuando una nave enemiga fije un blanco, deberá fijar tu nave como blanco (si es posible)."""
            ship: "Lanzadera clase Lambda"
        "Colonel Jendon":
            name: "Coronel Jendon"
            text: """Al comienzo de la fase de Combate, puedes asignar 1 de tus fichas azules de Blanco Fijado a una nave aliada que tengas a alcance 1 si no tiene ya una ficha azul de Blanco Fijado."""
            ship: "Lanzadera clase Lambda"
        "Captain Yorr":
            name: "Capitán Yorr"
            text: """Cuando otra nave aliada que tengas a alcance 1-2 vaya a recibir una ficha de Tensión, si tienes 2 fichas de Tensión o menos puedes recibirla tú en su lugar."""
            ship: "Lanzadera clase Lambda"
        "Lieutenant Lorrir":
            ship: "Interceptor TIE"
            text: """Cuando realices una acción de tonel volado, puedes recibir 1 ficha de Tensión para utilizar la plantilla (%BANKLEFT% 1) o la de (%BANKRIGHT% 1) en vez de la plantilla de (%STRAIGHT% 1)."""
        "Royal Guard Pilot":
            name: "Piloto de la Guardia Real"
            ship: "Interceptor TIE"
        "Tetran Cowall":
            ship: "Interceptor TIE"
            text: """Cuando reveles una maniobra %UTURN%, puedes ejecutarla como si su velocidad fuese de 1, 3 ó 5."""
        "Kir Kanos":
            ship: "Interceptor TIE"
            text: """Cuando ataques desde alcance 2-3, puedes gastar 1 ficha de Evasión para añadir 1 resultado %HIT% a tu tirada."""
        "Carnor Jax":
            ship: "Interceptor TIE"
            text: """Las naves enemigas que tengas a alcance 1 no pueden realizar acciones de Concentración o Evasión, y tampoco pueden gastar fichas de Concentración ni de Evasión."""
        "GR-75 Medium Transport":
            name: "Transporte mediano GR-75"
            ship: "Transporte mediano GR-75"
        "Bandit Squadron Pilot":
            name: "Piloto del escuadrón Bandido"
            ship: "Z-95 Cazacabezas"
        "Tala Squadron Pilot":
            name: "Piloto del escuadrón Tala"
            ship: "Z-95 Cazacabezas"
        "Lieutenant Blount":
            name: "Teniente Blount"
            text: """Cuando ataques, el defensor es alcanzado por tu ataque, incluso aunque no sufra ningún daño."""
            ship: "Z-95 Cazacabezas"
        "Airen Cracken":
            name: "Airen Cracken"
            text: """Después de que realices un ataque, puedes elegir otra nave aliada a alcance 1. Esa nave puede llevar a cabo 1 acción gratuita."""
            ship: "Z-95 Cazacabezas"
        "Delta Squadron Pilot":
            name: "Piloto del escuadrón Delta"
            ship: "Defensor TIE"
        "Onyx Squadron Pilot":
            name: "Piloto del escuadrón Ónice"
            ship: "Defensor TIE"
        "Colonel Vessery":
            name: "Coronel Vessery"
            text: """Cuando ataques, inmediatamente después de tirar los dados de ataque puedes fijar al defensor como blanco si éste ya tiene asignada una ficha de Blanco Fijado."""
            ship: "Defensor TIE"
        "Rexler Brath":
            text: """Después de que efectúes un ataque que inflinja al menos 1 carta de Daño al defensor, puedes gastar 1 ficha de Concentración para poner esas cartas boca arriba."""
            ship: "Defensor TIE"
        "Knave Squadron Pilot":
            name: "Piloto del escuadrón Canalla"
            ship: "Ala-E"
        "Blackmoon Squadron Pilot":
            name: "Piloto del escuadrón Luna Negra"
            ship: "Ala-E"
        "Etahn A'baht":
            text: """Cuando una nave neemiga situada dentro de tu arco de fuego a alcance 1-3 se defienda, el atacante puede cambiar 1 de sus resultados %HIT% por 1 resultado %CRIT%."""
            ship: "Ala-E"
        "Corran Horn":
            text: """Puedes efectuar 1 ataque al comienzo de la fase Final, pero si lo haces no podrás atacar en la ronda siguiente."""
            ship: "Ala-E"
        "Sigma Squadron Pilot":
            name: "Piloto del escuadrón Sigma"
            ship: "TIE Fantasma"
        "Shadow Squadron Pilot":
            name: "Piloto del escuadrón Sombra"
            ship: "TIE Fantasma"
        '"Echo"':
            name: '"Eco"'
            text: """Cuando desactives tu camuflaje, debes usar la plantilla de maniobra (%BANKLEFT% 2) o la de (%BANKRIGHT% 2) en lugar de la plantilla (%STRAIGHT% 2)."""
            ship: "TIE Fantasma"
        '"Whisper"':
            name: '"Susurro"'
            text: """Después de que efectúes un ataque que impacte, puedes asignar una ficha de Concentración a tu nave."""
            ship: "TIE Fantasma"
        "CR90 Corvette (Fore)":
            name: "Corbeta CR90 (Proa)"
            ship: "Corbeta CR90 (Proa)"
            text: """Cuando ataques con tu armamento principal, puedes gastar 1 de Energía para tirar 1 dado de ataque adicional."""
        "CR90 Corvette (Aft)":
            name: "Corbeta CR90 (Popa)"
            ship: "Corbeta CR90 (Popa)"
        "Wes Janson":
            text: """Después de que efectúes un ataque, puedes eliminar 1 ficha de Concentración, Evasión o Blanco Fijado (azul) del defensor."""
            ship: "Ala-X"
        "Jek Porkins":
            text: """Cuando recibas una ficha de Tensión, puedes descartarla y tirar 1 dado de ataque. Si sacas %HIT%, esta nave recibe 1 carta de Daño boca abajo."""
            ship: "Ala-X"
        '"Hobbie" Klivian':
            text: """Cuando fijes un blanco o gastes una ficha de Blanco Fijado, puedes quitar 1 ficha de Tensión de tu nave."""
            ship: "Ala-X"
        "Tarn Mison":
            text: """Cuando una nave enemiga te declare como objetivo de un ataque, puedes fijar esa nave como blanco."""
            ship: "Ala-X"
        "Jake Farrell":
            text: """Después de que realices una acción de Concentración o te asignen una ficha de Concentración, puedes efectuar una acción gratuita de impulso o tonel volado."""
            ship: "Ala-A"
        "Gemmer Sojan":
            text: """Mientras te encuentres a alcance 1 de al menos 1 nave enemiga, tu Agilidad aumenta en 1."""
            ship: "Ala-A"
        "Keyan Farlander":
            text: """Cuando ataques, puedes quitarte 1 ficha de Tensión  para cambiar todos tus resultados %FOCUS% por %HIT%."""
            ship: "Ala-B"
        "Nera Dantels":
            text: """Puedes efectuar ataques con armamentos secundarios %TORPEDO% contra naves enemigas fuera de tu arco de fuego."""
            ship: "Ala-B"
        # "CR90 Corvette (Crippled Aft)":
        #     name: "CR90 Corvette (Crippled Aft)"
        #     ship: "Corbeta CR90 (Popa)"
        #     text: """No puedes seleccionar ni ejecutar maniobras (%STRAIGHT% 4), (%BANKLEFT% 2), o (%BANKRIGHT% 2)."""
        # "CR90 Corvette (Crippled Fore)":
        #     name: "CR90 Corvette (Crippled Fore)"
        #     ship: "Corbeta CR90 (Proa)"
        "Wild Space Fringer":
            name: "Fronterizo del Espacio Salvaje"
            ship: "YT-2400"
        "Dash Rendar":
            text: """Puedes ignorar obstáculos durante la fase de Activación y al realizar acciones."""
        '"Leebo"':
            text: """Cuando recibas una carta de Daño boca arriba, roba 1 carta de Daño adicional, resuelve 1 de ellas a tu elección y descarta la otra."""
        "Eaden Vrill":
            text: """Si efectúas un ataque con un armamento principal contra una nave que tenga fichas de Tensión, tiras 1 dado de ataque adicional."""
        "Patrol Leader":
            name: "Jefe de Patrulla"
            ship: "VT-49 Diezmador"
        "Rear Admiral Chiraneau":
            name: "Contralmirante Chiraneau"
            text: """Cuando atacas a alcance 1-2, puedes cambiar 1 de tus resultados de %FOCUS% por un resultado %CRIT%."""
            ship: "VT-49 Diezmador"
        "Commander Kenkirk":
            ship: "VT-49 Diezmador"
            text: """Si no te quedan escudos y tienes asignada al menos 1 carta de Daño, tu Agilidad aumenta en 1."""
        "Captain Oicunn":
            name: "Capitán Oicunn"
            text: """Después de ejecutar un maniobra, toda nave enemiga con la que estés en contacto sufre 1 daño."""
            ship: "VT-49 Diezmador"
        "Black Sun Enforcer":
            name: "Ejecutor del Sol Negro"
            ship: "Víbora Estelar"
        "Black Sun Vigo":
            name: "Vigo del Sol Negro"
            ship: "Víbora Estelar"
        "Prince Xizor":
            name: "Príncipe Xizor"
            text: """Cuando te defiendas, una nave aliada que tengas a alcance 1 puede sufrir en tu lugar 1 resultado %HIT% o %CRIT% no anulado."""
            ship: "Víbora Estelar"
        "Guri":
            text: """Al comienzo de la fase de Combate, si tienes alguna nave enemiga a alcance 1 puedes asignar 1 ficha de Concentración a tu nave."""
            ship: "Víbora Estelar"
        "Cartel Spacer":
            name: "Agente del Cartel"
            ship: "Interceptor M3-A"
        "Tansarii Point Veteran":
            name: "Veterano de Punto Tansarii"
            ship: "Interceptor M3-A"
        "Serissu":
            text: """Cuando otra nave aliada situada a alcance 1 se defienda, puede volver a tirar 1 dado de defensa."""
            ship: "Interceptor M3-A"
        "Laetin A'shera":
            text: """Después de que te hayas defendido de un ataque, si el ataque no impactó, puedes asignar 1 ficha de Evasión a tu nave."""
            ship: "Interceptor M3-A"
        "IG-88A":
            text: """Después de que efectúes un ataque que destruya al defensor, puedes recuperar 1 ficha de Escudos."""
            ship: "Agresor"
        "IG-88B":
            text: """Una vez por ronda, después de que efectúes un ataque y lo falles, puedes efectuar un ataque con un sistema de armamento secundario %CANNON% que tengas equipado."""
            ship: "Agresor"
        "IG-88C":
            text: """Después de que realices una acción de impulso, puedes llevar a cabo una acción gratuita de Evasión."""
            ship: "Agresor"
        "IG-88D":
            text: """Puedes ejecutar la maniobra (%SLOOPLEFT% 3) o (%SLOOPRIGHT% 3) utilizando la plantilla (%TURNLEFT% 3) o (%TURNRIGHT% 3) correspondiente."""
            ship: "Agresor"
        "Mandalorian Mercenary":
            name: "Mercenario Mandaloriano"
        "Boba Fett (Scum)":
            text: """Cuando ataques o te defiendas, puedes volver a tirar 1 de tus dados por cada nave enemiga que tengas a alcance 1."""
        "Kath Scarlet (Scum)":
            text: """Cuando ataques una nave que esté dentro de tu arco de fuego auxiliar, tira 1 dado de ataque adicional."""
        "Emon Azzameen":
            text: """Cuando sueltes una bomba, puedes utilizar la plantilla de maniobra [%TURNLEFT% 3], [%STRAIGHT% 3] o [%TURNRIGHT% 3] en vez de la plantilla de [%STRAIGHT% 1]."""
        "Kavil":
            ship: "Ala-Y"
            text: """Cuando ataques una nave que esté fuera de tu arco de fuego, tira 1 dado de ataque adicional."""
        "Drea Renthal":
            ship: "Ala-Y"
            text: """Después de gastar una ficha de Blanco Fijado, puedes recibir 1 ficha de Tensión para fijar un blanco."""
        "Syndicate Thug":
            name: "Esbirro del sindicato"
            ship: "Ala-Y"
        "Hired Gun":
            name: "Piloto de fortuna"
            ship: "Ala-Y"
        "Spice Runner":
            name: "Traficante de Especia"
            ship: "HWK-290"
        "Dace Bonearm":
            text: """Cuando una nave enemiga a alcance 1-3 reciba como mínimo 1 ficha de iones, si no tienes fichas de Tensión puedes recibir 1 ficha de Tensión para que esa nave sufra 1 de daño."""
            ship: "HWK-290"
        "Palob Godalhi":
            text: """Al comienzo de la fase de Combate, puedes quitar 1 ficha de Concentración o Evasión de una nave enemiga a alcance 1-2 y asignar esa ficha a tu nave."""
        "Torkil Mux":
            text: """Al final de la fase de Activación, elige 1 nave enemiga a alcance 1-2. Hasta el final de la fase de Combate, se considera que el piloto de esa nave tiene Habilidad 0."""
        "Binayre Pirate":
            name: "Pirata Binayre"
            ship: "Z-95 Cazacabezas"
        "Black Sun Soldier":
            name: "Sicario del Sol Negro"
            ship: "Z-95 Cazacabezas"
        "N'Dru Suhlak":
            text: """Cuando ataques, si no tienes ninguna otra nave aliada a alcance 1-2, tira 1 dado de ataque adicional."""
            ship: "Z-95 Cazacabezas"
        "Kaa'To Leeachos":
            text: """Al comienzo de la fase de Combate, puedes quitar 1 ficha de Concentración o Evasión de otra nave aliada que tengas a alcance 1-2 y asignar esa ficha a tu nave."""
            ship: "Z-95 Cazacabezas"
        "Commander Alozen":
            name: "Comandante Alozen"
            ship: "TIE Avanzado"
            text: """Al comienzo de la fase de Combate, puedes fijar como blanco una nave enemiga que tengas a alcance 1."""
        "Juno Eclipse":
            ship: "TIE Avanzado"
            text: """Cuando reveles tu maniobra, puedes incrementar o reducir en 1 la velocidad de la maniobra (hasta un mínimo de 1)."""
        "Zertik Strom":
            ship: "TIE Avanzado"
            text: """Las naves enemigas que tengas a alcance 1 no pueden aplicar su modificador al combate por alcance cuando ataquen."""
        "Lieutenant Colzet":
            name: "Teniente Colzet"
            ship: "TIE Avanzado"
            text: """Al comienzo de la fase Final, puedes gastar una de tus fichas de Blanco fijado asignadas a una nave enemiga para seleccionar al azar y poner boca arriba 1 carta de Daño que esa nave tenga asignada boca abajo."""
        "Latts Razzi":
            text: """Cuando una nave aliada declare un ataque, puedes gastar una ficha de Blanco Fijado que hayas asignado al defensor para reducir su Agilidad en 1 contra el ataque declarado."""
        "Miranda Doni":
            ship: 'Ala-K'
            text: """Una vez por ronda, cuando ataques, puedes elegir entre gastar 1 de Escudos para tirar 1 dado de ataque adicional <strong>o bien</strong> tirar 1 dado de ataque menos para recuperar 1 de Escudos."""
        "Esege Tuketu":
            ship: 'Ala-K'
            text: """Cuando otra nave aliada que tengas a alcance 1-2 esté atacando, puede usar tus fichas de Concentración."""
        "Guardian Squadron Pilot":
            name: "Piloto del Escuadrón Guardián"
            ship: 'Ala-K'
        "Warden Squadron Pilot":
            name: "Piloto del Escuadrón Custodio"
            ship: 'Ala-K'
        '"Redline"':
            name: '"Velocidad Terminal"'
            ship: 'Castigador TIE'
            text: """Puedes mantener 2 blancos fijados sobre una misma nave. Cuando fijes un blanco, puedes fijar la misma nave como blanco por segunda vez."""
        '"Deathrain"':
            name: '"Lluvia de Muerte"'
            ship: 'Castigador TIE'
            text: """Cuando sueltes una bomba, puedes usar los salientes frontales de la peana de tu nave. Puedes realizar una acción gratuita de tonel volado después de soltar una bomba."""
        'Black Eight Squadron Pilot':
            name: "Piloto del Escuadrón Ocho Negro"
            ship: 'Castigador TIE'
        'Cutlass Squadron Pilot':
            name: "Piloto del Escuadrón Alfanje"
            ship: 'Castigador TIE'
        "Moralo Eval":
            text: """Puedes efectuar ataques con sistemas de armamento secundarios %CANNON% contra naves que estén dentro de tu arco de fuego auxiliar."""
        'Gozanti-class Cruiser':
            text: """After you execute a maneuver, you may deploy up to 2 attached ships."""
        '"Scourge"':
            ship: "Caza TIE"
            text: """When attacking a defender that has 1 or more Damage cards, roll 1 additional attack die."""
        "The Inquisitor":
            text: """When attacking with your primary weapon at Range 2-3, treat the range of the attack as Range 1."""
        "Zuckuss":
            text: """When attacking, you may roll 1 additional attack die.  If you do, the defender rolls 1 additional defense die."""
        "Dengar":
            text: """Once per round after defending, if the attacker is inside your firing arc, you may perform an attack against the that ship."""
        "Talonbane Cobra":
            ship: "Caza Kihraxz"
            text: """Cuando ataques o te defiendas, duplica el efecto de tus bonificaciones al combate por alcance."""
        "Graz the Hunter":
            name: "Graz el Cazador"
            ship: "Caza Kihraxz"
            text: """Cuando te defiendas, tira 1 dado de defensa adicional si el atacante está situado dentro de tu arco de fuego."""
        "Black Sun Ace":
            name: "As del Sol Negro"
            ship: "Caza Kihraxz"
        "Cartel Marauder":
            name: "Salteador del Cartel"
            ship: "Caza Kihraxz"
        "Trandoshan Slaver":
            name: "Esclavista Trandoshano"
            ship: "YV-666"
        "Bossk":
            ship: "YV-666"
            text: """Cuando realices un ataque con éxito, antes de inflingir el daño puedes anular 1 de tus resultados %CRIT% para añadir 2 resultados %HIT%."""
        # T-70
        "Poe Dameron":
            ship: "T-70 Ala-X"
            text: """Cuando ataques o te defiendas, si tienes una ficha de Concentración, puedes cambiar 1 de tus resultados %FOCUS% por un resultado %HIT% o %EVADE%."""
        '"Blue Ace"':
            name: '"As Azul"'
            ship: "T-70 Ala-X"
            text: """Cuando realices una acción de impulso, puedes utilizar la plantilla de maniobra (%TURNLEFT% 1) o (%TURNRIGHT% 1)."""
        "Red Squadron Veteran":
            name: "Veterano del Esc. Rojo"
            ship: "T-70 Ala-X"
        "Blue Squadron Novice":
            name: "Novato del Esc. Azul"
            ship: "T-70 Ala-X"
        '"Red Ace"':
            ship: "T-70 Ala-X"
            text: '''The first time you remove a shield token from your ship each round, assign 1 evade token to your ship.'''
        # TIE/fo
        '"Omega Ace"':
            name: '"As Omega"'
            ship: "Caza TIE/fo"
            text: """Cuando ataques a un defensor que has fijado como blanco, puedes gastar las fichas de Blanco Fijado y una ficha de Concentración para cambiar todos tus resultados de dados por resultados %CRIT%."""
        '"Epsilon Leader"':
            name: '"Jefe Epsilon"'
            ship: "Caza TIE/fo"
            text: """Al comienzo de la fase de Combate, retira 1 ficha de Tensión de cada nave aliada que tengas a alcance 1."""
        '"Zeta Ace"':
            name: '"As Zeta"'
            ship: "Caza TIE/fo"
            text: """Cuando realices una acción de tonel volado, puedes utilizar la plantilla de maniobra (%STRAIGHT% 2) en vez de la plantilla (%STRAIGHT% 1)."""
        "Omega Squadron Pilot":
            name: "Piloto del Esc. Omega"
            ship: "Caza TIE/fo"
        "Zeta Squadron Pilot":
            name: "Piloto del Esc. Zeta"
            ship: "Caza TIE/fo"
        "Epsilon Squadron Pilot":
            name: "Piloto del Esc. Epsilon"
            ship: "Caza TIE/fo"
        '"Omega Leader"':
            ship: "Caza TIE/fo"
            text: '''Enemy ships that you have locked cannot modify any dice when attacking you or defending against your attacks.'''
        'Hera Syndulla':
            text: '''When you reveal a green or red maneuver, you may rotate your dial to another maneuver of the same difficulty.'''
        '"Youngster"':
            ship: "Caza TIE"
            text: """Friendly TIE fighters at Range 1-3 may perform the action on your equipped %ELITE% Upgrade card."""
        '"Wampa"':
            ship: "Caza TIE"
            text: """When attacking, you may cancel all die results.  If you cancel a %CRIT% result, deal 1 facedown Damage card to the defender."""
        '"Chaser"':
            ship: "Caza TIE"
            text: """When another friendly ship at Range 1 spends a focus token, assign a focus token to your ship."""
        'Ezra Bridger':
            text: """When defending, if you are stressed, you may change 2 of your %FOCUS% results to %EVADE% results."""
        '"Zeta Leader"':
            text: '''When attacking, if you are not stressed, you may receive 1 stress token to roll 1 additional die.'''
            ship: "Caza TIE/fo"
        '"Epsilon Ace"':
            text: '''While you do not have any Damage cards, treat your pilot skill value as "12."'''
            ship: "Caza TIE/fo"
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
            ship: "Bombardero TIE"
        'Ello Asty':
            text: '''While you are not stressed, you may treat your %TROLLLEFT% and %TROLLRIGHT% maneuvers as white maneuvers.'''
            ship: "T-70 Ala-X"
        "Valen Rudor":
            text: """After defending, you may perform a free action."""
        "4-LOM":
            text: """At the start of the End phase, you may assign 1 of your stress tokens to another ship at Range 1."""

    upgrade_translations =
        "Ion Cannon Turret":
            name: "Torreta de cañones de iones"
            text: """<strong>Ataque:</strong> Ataca 1 nave (aunque esté fuera de tu arco de fuego).<br /><br />Si este ataque impacta, el defensor sufre 1 punto de daño y recibe 1 ficha de Iones. Después se anulan todos los resultados de los dados."""
        "Proton Torpedoes":
            name: "Torpedos de protones"
            text: """<strong>Ataque (Blanco Fijado):</strong> Gasta tu ficha de Blanco Fijado y descarta esta carta para efectuar este ataque.<br /><br />Puedes cambiar 1 de tus resultados %FOCUS% por un resultado %CRIT%."""
        "R2 Astromech":
            name: "Droide Astromecánico R2"
            text: """Puedes ejecutar todas las maniobras de velocidad 1 y 2 como maniobras verdes."""
        "R2-D2":
            text: """Después de que ejecutes una maniobra verde, puedes recuperar 1 ficha de Escudos (pero no puedes tener más fichas que tu valor de Escudos)."""
        "R2-F2":
            text: """<strong>Acción:</strong> Tu valor de agilidad aumenta en 1 hasta el final de esta ronda de juego."""
        "R5-D8":
            text: """<strong>Acción:</strong> Tira 1 dado de defensa.<br /><br />Si sacas %EVADE% o %FOCUS%, descarta 1 carta de Daño que tengas boca abajo."""
        "R5-K6":
            text: """Después de gastar tu ficha de Blanco Fijado, tira 1 dado de defensa.<br /><br />Si sacas un resultado %EVADE% puedes volver a fijar la misma nave como blanco inmediatamente. No puedes gastar esta nueva ficha de Blanco Fijado durante este ataque."""
        "R5 Astromech":
            name: "Droide Astromecánico R5"
            text: """Durante la fase Final, puedes elegir 1 de las cartas de Daño con el atributo <strong>Nave</strong> que tengas boca arriba, darle la vuelta y dejarla boca abajo."""
        "Determination":
            name: "Determinación"
            text: """Cuando se te asigne una carta de Daño boca arriba que tenga el atributo <strong>Piloto</strong>, descártala inmediatamente sin resolver su efecto."""
        "Swarm Tactics":
            name: "Táctica de Enjambre"
            text: """Al principio de la fase de Combate, elige 1 nave aliada que tengas a alcance 1.<br /><br />Hasta el final de esta fase, se considera que el valor de Habilidad de la nave elejida es igual que el tuyo."""
        "Squad Leader":
            name: "Jefe de Escuadrón"
            text: """<strong>Acción:</strong> Elije una nave a alcance 1-2 cuyo pilioto tenga una Habilidad más baja que la tuya.<br /><br />La nave elegida puede llevar a cabo 1 acción gratuita de inmediato."""
        "Expert Handling":
            name: "Pericia"
            text: """<strong>Acción:</strong> Realiza una acción gratuita de tonel volado. Si no tienes el icono de acción %BARRELROLL%, recibes una ficha de Tensión.<br /><br />Después puedes descartar una ficha enemiga de Blanco Fijado que esté asignada a tu nave."""
        "Marksmanship":
            name: "Puntería"
            text: """<strong>Acción:</strong> Cuando ataques en esta ronda puedes cambiar 1 de tus resultados %FOCUS% por un resultado %CRIT% y tus demás resultados %FOCUS% por resultados %HIT%."""
        "Concussion Missiles":
            name: "Misiles de Impacto"
            text: """<strong>Ataque (Blanco Fijado):</strong> Gasta tu ficha de Blanco Fijado y descarta esta carta para efectuar este ataque.<br /><br />Puedes cambiar 1 resultado de cara vacía por un resultado %HIT%."""
        "Cluster Missiles":
            name: "Misiles de Racimo"
            text: """<strong>Ataque (Blanco Fijado):</strong> Gasta tu ficha de Blanco Fijado y descarta esta carta para efectuar este ataque <strong>dos veces</strong>."""
        "Daredevil":
            name: "Temerario"
            text: """<strong>Acción:</strong> Ejecuta una maniobra blanca (%TURNLEFT% 1) o (%TURNRIGHT% 1) y luego recibe 1 ficha de Tensión.<br /><br />Después, si no tienes el ícono de acción %BOOST%, tira 2 dados de ataque y sufre todos los daños normales (%HIT%) y críticos (%CRIT%) obtenidos."""
        "Elusiveness":
            name: "Escurridizo"
            text: """Cuando te defiendas en combate, puedes recibir 1 ficha de Tensión para elegir 1 dado de ataque. El atacante deberá volver a lanzar ese dado.<br /><br />No puedes usar esta habilidad si ya tienes una ficha de Tensión."""
        "Homing Missiles":
            name: "Misiles Rastreadores"
            text: """<strong>Ataque (Blanco Fijado):</strong> Descarta esta carta para efectuar este ataque.<br /><br />El defensor no puede gastar fichas de evasión durante este ataque."""
        "Push the Limit":
            name: "Máximo Esfuerzo"
            text: """Una vez por ronda, después de que realices una acción podras realizar a cabo 1 acción gratuita de entre las que figuren en tu barra de acciones.<br /><br />Después recibes 1 ficha de Tensión."""
        "Deadeye":
            name: "Certero"
            text: """Puedes tratar la expresión <strong>"Ataque (blanco fijado)"</strong> como si dijera <strong>"Ataque (concentración)"</strong>.<br /><br />Cuando un ataque te obligue a gastar una ficha de Blanco Fijado, puedes gastar una ficha de Concentración en su lugar."""
        "Expose":
            name: "Expuesto"
            text: """<strong>Acción:</strong> Hasta el final de la ronda, el valor de tu armamento principal se incrementa en 1 y tu Agilidad se reduce en 1."""
        "Gunner":
            name: "Artillero"
            text: """Después de que efectúes un ataque y lo falles, puedes realizar inmediatamente un ataque con tu armamento principal.  No podrás realizar ningún otro ataque en esta misma ronda."""
        "Ion Cannon":
            name: "Cañón de Iones"
            text: """<strong>Ataque:</strong> Ataca a 1 nave.<br /><br />Si este ataque impacta, el defensor sufre 1 de daño y recibe 1 ficha de Iones. Después se anulan <b>todos</b> los resultados de los dados."""
        "Heavy Laser Cannon":
            name: "Cañón Laser Pesado"
            text: """<strong>Ataque:</strong> Ataca a 1 nave.<br /><br />Inmediatamente después de lanzar los dados de ataque, debes cambiar todos tus resultados %CRIT% por resultados %HIT%."""
        "Seismic Charges":
            name: "Cargas Sísmicas"
            text: """Cuando reveles tu selector de maniobras, puedes descartar esta carta para <strong>soltar</strong> 1 ficha de Carga Sísmica.<br /><br />Esta ficha se <strong>detona</strong> al final de la fase de Activación."""
        "Mercenary Copilot":
            name: "Copiloto Mercenario"
            text: """Cuando ataques a alcance 3, puedes cambiar 1 de tus resultados %HIT% por un resultado %CRIT%."""
        "Assault Missiles":
            name: "Misiles de Asalto"
            text: """<strong>Ataque (Blanco Fijado):</strong> Gasta tu ficha de Blanco Fijado y descarta esta carta para efectuar este ataque.<br /><br />Si este ataque impacta al objetivo, toda otra nave que haya a alcance 1 del defensor sufre 1 daño."""
        "Veteran Instincts":
            name: "Instinto de Veterano"
            text: """La Habilidad de tu piloto se incrementa en 2."""
        "Proximity Mines":
            name: "Minas de Proximidad"
            text: """<strong>Acción:</strong> Descarta esta carta para <strong>soltar</strong> 1 ficha de Mina de Proximidad.<br /><br />Cuando la peana o la plantilla de maniobra de una nave se solape con esta ficha, ésta se <strong>detona</strong>."""
        "Weapons Engineer":
            name: "Ingeniero de Armamento"
            text: """Puedes tener 2 Blancos Fijados a la vez (pero sólo 1 para cada nave enemiga).<br /><br />Cuando fijes un blanco, puedes fijar como blanco a dos naves distintas."""
        "Draw Their Fire":
            name: "Atraer su fuego"
            text: """Cuando una nave aliada que tengas a alcance 1 sea alcanzada por un ataque, puedes sufrir tú 1 de sus resultados %CRIT% no anulados en vez de la nave objetivo."""
        "Luke Skywalker":
            text: """Después de que efectúes un ataque y lo falles, realiza inmediatamente un ataque con tu armamento principal. Puedes cambiar 1 resultado %FOCUS% por 1 resultado %HIT%. No podrás realizar ningún otro ataque en esta misma ronda."""
        "Nien Nunb":
            text: """Todas las maniobras %STRAIGHT% se consideran verdes para ti."""
        "Chewbacca":
            text: """Cuando recibas una carta de Daño, puedes descartarla de inmediato y recuperar 1 de Escudos.<br /><br />Luego descarta esta carta de Mejora."""
        "Advanced Proton Torpedoes":
            name: "Torpedos de protones avanzados"
            text: """<strong>Ataque (Blanco Fijado):</strong> Gasta tu ficha de Blanco Fijado y descarta esta carta para efectuar este ataque. Puedes cambiar hasta 3 resultados de caras vacías por resultados %FOCUS%."""
        "Autoblaster":
            name: "Cañón Blaster Automático"
            text: """<strong>Ataque:</strong> Ataca a 1 nave.<br /><br />Tus resultados %HIT% no pueden ser anulados por los dados de defensa.<br /><br />El defensor puede anular tus resultados %CRIT% antes que los %HIT%."""
        "Fire-Control System":
            name: "Sistema de Control de Disparo"
            text: """Después de que efectúes un ataque, puedes fijar al defensor como blanco."""
        "Blaster Turret":
            name: "Torreta Bláster"
            text: """<strong>Ataque (Concentración):</strong> Gasta 1 ficha de Concentración para efectuar este ataque contra una nave (aunque esté fuera de tu arco de fuego)."""
        "Recon Specialist":
            name: "Especialista en Reconocimiento"
            text: """Cuando realices una acción de Concentración, asigna 1 ficha de Concentración adicional a tu nave."""
        "Saboteur":
            name: "Saboteador"
            text: """<strong>Acción:</strong> Elige 1 nave enemiga que tengas a alcance 1 y tira 1 dado de ataque. Si sacas %HIT% o %CRIT%, elige al azar 1 carta de Daño que esa nave tenga asignada boca abajo, dale la vuelta y resuélvela."""
        "Intelligence Agent":
            name: "Agente del Servicio de Inteligencia"
            text: """Al comienzo de la fase de Activación, elige 1 nave enemiga que tengas a alcance 1-2. Puedes mirar el selector de maniobras de esa nave."""
        "Proton Bombs":
            name: "Bombas de Protones"
            text: """Cuando reveles tu selector de maniobras, puedes descartar esta carta para <strong>soltar</strong> 1 ficha de Bombas de Protones.<br /><br />Esta ficha se <strong>detona</strong> al final de la fase de Activación."""
        "Adrenaline Rush":
            name: "Descarga de Adrenalina"
            text: """Cuando reveles una maniobra roja, puedes descartar esta carta para tratarla como si fuera una maniobra blanca hasta el final de la fase de Activación."""
        "Advanced Sensors":
            name: "Sensores Avanzados"
            text: """Inmediatamente antes de que reveles tu maniobra, puedes realizar 1 acción gratuita.<br /><br />Si utilizas esta capacidad, debes omitir tu paso de "Realizar una acción" durante esta ronda."""
        "Sensor Jammer":
            name: "Emisor de Interferencias"
            text: """Cuando te defiendas, puedes cambiar 1 de los resultados %HIT% por uno %FOCUS%.<br /><br />El atacante no puede volver a lanzar el dado cuyo resultado hayas cambiado."""
        "Darth Vader":
            text: """Después de que ataques a una nave enemiga, puedes sufrir 2 de daño para que esa nave reciba 1 de daño crítico."""
        "Rebel Captive":
            name: "Prisionero Rebelde"
            text: """Una vez por ronda, la primera nave que te declare como objetivo de un ataque recibe inmediatamente 1 ficha de Tensión."""
        "Flight Instructor":
            name: "Instructor de Vuelo"
            text: """Cuando te defiendas, puedes volver a tirar 1 dado en el que hayas sacado %FOCUS%. Si la Habilidad del piloto atacante es de 2 o menos, puedes volver a tirar 1 dado en el que hayas sacado una cara vacía."""
        "Navigator":
            name: "Oficial de Navegación"
            text: """Cuando reveles una maniobra, puedes rotar el selector para escoger otra maniobra que tenga la misma dirección.<br /><br />Si tienes alguna ficha de Tensión, no puedes rotar el selector para escoger una maniobra roja."""
        "Opportunist":
            name: "Oportunista"
            text: """Cuando ataques, si el defensor no tiene fichas de Concentración o de Evasión, puedes recibir 1 ficha de Tensión para tirar 1 dado de ataque adicional.<br /><br />No puedes utilizar esta capacidad si tienes fichas de Tensión."""
        "Comms Booster":
            name: "Amplificador de Comunicaciones"
            text: """<strong>Energía:</strong> Gasta 1 de Energía para descartar todas las fichas de Tensión de una nave aliada que tengas a alcance at Range 1-3. Luego asigna 1 ficha de Concentración a esa nave."""
        "Slicer Tools":
            name: "Sistemas de Guerra Electrónica"
            text: """<strong>Acción:</strong> Elige 1 o mas naves enemigas situadas a alcance 1-3 y que tengan fichas de Tensión. Por cada nave elegida, puedes gastar 1 de Energía para que esa nave sufra 1 daño."""
        "Shield Projector":
            name: "Proyector de Escudos"
            text: """Cuando una nave enemiga pase a ser la nave activa durante la fase de Combate, puedes gastar 3 de Energía para obligar a esa nave a atacarte (si puede) hasta el final de la fase."""
        "Ion Pulse Missiles":
            name: "Misiles de Pulso Iónico"
            text: """<strong>Ataque (Blanco Fijado):</strong> Descarta esta carta para efectuar este ataque.<br /><br />Si este ataque impacta, el defensor sufre 1 daño y recibe 2 fichas de Iones. Después se anulan <strong>todos</strong> los resultados de los dados."""
        "Wingman":
            name: "Nave de Escolta"
            text: """Al comienzo de la fase de Combate, quita 1 ficha de tensión de otra nave aliada que tengas a alcance 1."""
        "Decoy":
            name: "Señuelo"
            text: """Al comienzo de la fase de Combate, puedes elegir 1 nave aliada que tengas a alcance 1-2. Intercambia tu Habilidad de piloto por la Habilidad de piloto de esa nave hasta el final de la fase."""
        "Outmaneuver":
            name: "Superioridad Táctica"
            text: """Cuando ataques a una nave situada dentro de tu arco de fuego, si tú no estás dentro del arco de fuego de esa nave, su Agilidad se reduce en 1 (hasta un mínimo de 0)."""
        "Predator":
            name: "Depredador"
            text: """Cuando ataques, puedes volver a tirar 1 dado de ataque. Si la Habilidad del piloto defensor es 2 o menor, en vez de eso puedes volver a tirar hasta 2 dados de ataque."""
        "Flechette Torpedoes":
            name: "Torpedos de Fragmentación"
            text: """<strong>Ataque (Blanco Fijado):</strong> Gasta tu ficha de Blanco Fijado y descarta esta carta para efectuar este ataque.<br /><br />Después de que realices este ataque, el defensor recibe 1 ficha de Tensión si su Casco es de 4 o inferior."""
        "R7 Astromech":
            name: "Droide Astromecánico R7"
            text: """Una vez por ronda cuando te defiendas, si tienes al atacante fijado como blanco, puedes gastar esa ficha de Blanco Fijado para elegir algunos o todos sus dados de ataque. El atacante debe volver a tirar los dados que hayas elegido."""
        "R7-T1":
            name: "R7-T1"
            text: """<strong>Acción:</strong> Elije 1 nave enemiga a alcance 1-2. Si te encuentras dentro de su arco de fuego, puedes fijarla como blanco. Después puedes realizar una acción gratuita de impulso."""
        "Tactician":
            name: "Estratega"
            text: """Después de que efectúes un ataque contra una nave que esté situada dentro de tu arco de fuego a alcance 2, esa nave recibe 1 ficha de Tensión."""
        "R2-D2 (Crew)":
            name: "R2-D2 (Tripulante)"
            text: """Al final de la fase Final, si no tienes Escudos, puedes recuperar 1 de Escudos y tirar 1 dado de ataque. Si sacas %HIT%, pon boca arriba 1 de las cartas de Daño que tengas boca abajo (elegida al azar) y resuélvela."""
        "C-3PO":
            name: "C-3PO"
            text: """Una vez por ronda, antes de que tires 1 o mas dados de defensa, puedes decir en voz alta cuántos resultados %EVADE% crees que vas a sacar. Si aciertas (antes de modificar los dados), añade 1 %EVADE% al resultado."""
        "Single Turbolasers":
            name: "Batería de Turboláseres"
            text: """<strong>Ataque (Energía):</strong> Gasta 2 de Energía de esta carta para efectuar este ataque. La Agilidad del defensor se duplica contra este ataque. Puedes cambiar 1 de tus resultados de  %FOCUS% por 1 resultado de %HIT%."""
        "Quad Laser Cannons":
            name: "Cañones Láser Cuádruples"
            text: """<strong>Ataque (Energía):</strong> Gasta 1 de Energía de esta carta para efectuar este ataque. Si no impacta, puedes gastar inmediatamente 1 de Energía de esta carta para repetir el ataque."""
        "Tibanna Gas Supplies":
            name: "Suministro de Gas Tibanna"
            text: """<strong>Energía:</strong> Puedes descartar esta carta para obtener 3 de Energía."""
        "Ionization Reactor":
            name: "Reactor de Ionización"
            text: """<strong>Energía:</strong> Gasta 5 de Energía de esta carta y descártala para para que todas las demás naves situadas a alcance 1 sufran 1 de daño y reciban 1 ficha de Iones."""
        "Engine Booster":
            name: "Motor Sobrepotenciado"
            text: """Immediatamente antes de revelar tu selector de maniobras, puedes gastar 1 de Energía para ejecutar 1 maniobra blanca de (%STRAIGHT% 1). No puedes usar esta capacidad si al hacerlo te solapas con otra nave."""
        "R3-A2":
            name: "R3-A2"
            text: """Cuando declares al objetivo de tu ataque, si el defensor está dentro de tu arco de fuego, puedes recibir 1 ficha de Tensión para hacer que el defensor reciba 1 ficha de Tensión."""
        "R2-D6":
            name: "R2-D6"
            text: """Tu barra de mejoras gana el icono de mejora %ELITE%.<br /><br />No puedes equiparte esta mejora si ya tienes un icono de mejora %ELITE% o si la Habilidad de de tu piloto es de 2 o menos."""
        "Enhanced Scopes":
            name: "Radar Mejorado"
            text: """La Habilidad de tu piloto se considera 0 durante la fase de Activación."""
        "Chardaan Refit":
            name: "Reequipado en Chardaan"
            ship: "Ala-A"
            text: """<span class="card-restriction">Solo Ala-A.</span><br /><br />Esta carta tiene un coste negativo en puntos de escuadrón."""
        "Proton Rockets":
            name: "Cohetes de Protones"
            text: """<strong>Ataque (Concentración):</strong> Descarta esta carta para efectuar este ataque.<br /><br />Puedes tirar tantos dados de ataque adicionales como tu puntuación de Agilidad, hasta un máximo de 3 dados adicionales."""
        "Kyle Katarn":
            text: """Despues de que quites una ficha de Tensión de tu nave, puedes asiganar una ficha de Concentración a tu nave."""
        "Jan Ors":
            text: """Una vez por ronda, cuando una nave aliada que tengas a alcance 1-3 realice una accion de Concentración o vaya a recibir una ficha de Concentración, en vez de eso puedes asignarle a esa nave una ficha de Evasión."""
        "Toryn Farr":
            text: """<strong>Acción:</strong> Gasta cualquier cantidad de Energía para elegir ese mismo número de naves enemigas que tengas a alcance 1-2. Descarta todas las fichas de Concentración, Evasión y Blanco Fijado (azules) de las naves elegidas."""
        # TODO Check card formatting
        "R4-D6":
            name: "R4-D6"
            text: """Cuando seas alcanzado por un ataque y haya al menos 3 resultados %HIT% sin anular, puedes anular todos los que quieras hasta que solo queden 2.  Recibes 1 ficha de Tensión por cada resultado que anules de este modo."""
        "R5-P9":
            name: "R5-P9"
            text: """Al final de la fase de Combate, puedes gastar 1 de tus fichas de Concentración para recuperar 1 ficha de Escudos (hasta un máximo igual a tu puntuación de Escudos)."""
        "WED-15 Repair Droid":
            name: "Droide de Reparaciones WED-15"
            text: """<strong>Acción:</strong> Gasta 1 de Energia para descartar 1 carta de Daño que tengas boca abajo, o bien gasta 3 de Energía para descartar 1 carta de Daño que tengas boca arriba."""
        "Carlist Rieekan":
            name: "Carlist Rieekan"
            text: """Al pincipio de la fase de Activación, puedes descartar esta carta para que la Habilidad de todas tus naves se considere 12 hasta el final de la fase."""
        "Jan Dodonna":
            name: "Jan Dodonna"
            text: """Cuando otra nave aliada que tengas a alcance 1 efectúe un ataque, podrá cambiar 1 de sus resultados de %HIT% por 1 resultado de %CRIT%."""
        "Expanded Cargo Hold":
            name: "Bodega de Carga Ampliada"
            text: """<span class="card-restriction">Solo GR-75</span><br /><br />Una vez por ronda, cuando tengas que recibir una carta de Daño boca arriba, puedes robar esa carta del mazo de Daño de proa o del mazo de Daño de popa."""
            ship: 'Transporte mediano GR-75'
        "Backup Shield Generator":
            name: "Generador de Escudos Auxiliar"
            text: """Al final de cada ronda, puedes gastar 1 de Energía para recuperar 1 de Escudos (hasta el maximo igual a tu puntuación de Escudos)."""
        "EM Emitter":
            name: "Emisor de señal Electromagnética"
            text: """Cuando obstruyas un ataque, el defensor tira 3 dados de defensa adicionales en vez de 1."""
        "Frequency Jammer":
            name: "Inhibidor de Frecuencias"
            text: """Cuando lleves a cabo una acción de intereferencia, elige 1 nave enemiga que no tenga fichas de Tensión y se encuentre a alcance 1 de la nave interferida. La nave elegida recibe una ficha de Tension."""
        "Han Solo":
            name: "Han Solo"
            text: """Cuando ataques, si tienes la defensor fijado como blanco, puedes gastar esa ficha de Blanco Fijado para cambiar todos tus resultados de %FOCUS% por resultados de %HIT%."""
        "Leia Organa":
            name: "Leia Organa"
            text: """Al comienzo de la fase de Activación, puedes descartar esta carta para que todas las naves aliadas que muestren una maniobra roja seleccionada la traten como si fuera una maniobra blanca hasta el final de la fase."""
        "Raymus Antilles":
            name: "Raymus Antilles"
            text: """Al comiuenzo de la fase de Activación, elige 1 nave enemiga que tengas a alcance 1-3. Puedes mirar su selector de maniobras. Si ha seleccionado una maniobra blanca, adjudica 1 ficha de Tensión a esa nave."""
        "Gunnery Team":
            name: "Dotación de Artillería"
            text: """Una vez por ronda, cuando ataques con un armamento secudario, puedes gastar 1 de Energía para cambiar 1 cara de dado vacía por 1 resultado de %HIT%."""
        "Sensor Team":
            name: "Equipo de Control de Sensores"
            text: """Cuando fijes un blanco, puedes fijar como blanco una nave enemiga a alcance 1-5 (en lugar de 1-3)."""
        "Engineering Team":
            name: "Equipo de Ingeniería"
            text: """Durante la fase de Activación, si enseñas una maniobra %STRAIGHT%, recibes 1 de Energía adicional durante el paso de "Obtener Energía"."""
        "Lando Calrissian":
            name: "Lando Calrissian"
            text: """<strong>Acción:</strong> Tira 2 dados de defensa. Por cada %FOCUS% que saques, asigna 1 ficha de Concentración a tu nave. Por cada resultado de %EVADE% que saques, asigna 1 ficha de Evasión a tu nave."""
        "Mara Jade":
            name: "Mara Jade"
            text: """Al final de la fase de Combate, toda nave enemiga situada a alcance 1 que no tenga 1 ficha de Tensión recibe 1 ficha de Tensión."""
        "Fleet Officer":
            name: "Oficial de Flota"
            text: """<strong>Acción:</strong> Elige un máximo de 2 naves aliadas que tengas a alcance 1-2 y asigna 1 ficha de Concentración a cada una de ellas. Luego recibes 1 ficha de Tensión."""
        "Lone Wolf":
            name: "Lobo solitario"
            text: """Cuando ataques o defiendas, si no tienes ninguna nave aliada a alcance 1-2, pues volver a tirar 1 dado en el que hayas sacado una cara vacía."""
        "Stay On Target":
            name: "Seguir el Objetivo"
            text: """Cuando reveles una maniobra, puedes girar tu selector para escoger otra maniobra que tenga la misma velocidad.<br /><br />Esa maniobra se considera roja."""
        "Dash Rendar":
            text: """Puedes efectuar ataques mientras estés solapado con un obstáculo.<br /><br />Tus ataques no pueden ser obstruidos."""
        '"Leebo"':
            text: """<strong>Acción:</strong> Realiza una acción gratuita de Impulso. Después recibes 1 marcador de Iones."""
        "Ruthlessness":
            name: "Crueldad"
            text: """Después de que efectúes un ataque que impacte, <strong>debes</strong> elegir otra nave situada a alcance 1 del defensor (exceptuando la tuya). Esa nave sufre 1 daño."""
        "Intimidation":
            name: "Intimidación"
            text: """Mientras estes en contacto con una nave enemiga, la Agilidad de esa nave se reduce en 1."""
        "Ysanne Isard":
            text: """Al comienzo de la fase de Combate, si no te quedan Escudos y tu nave tiene asignada al menos 1 carta de Daño, puedes realizar una acción gratuita de Evasión."""
        "Moff Jerjerrod":
            text: """Cuando recibas una carta de Daño boca arriba, puedes descartar esta carta de Mejora u otra carta de %CREW% para poner boca abajo esa carta de Daño sin resolver su efecto."""
        "Ion Torpedoes":
            name: "Torpedos de Iones"
            text: """<strong>Ataque (Blanco Fijado):</strong> Gasta tu ficha de Blanco Fijado y descarta esta carta para efectuar este ataque.<br /><br />Si este ataque impacta, el defensor y toda nave que esté a alcance 1 reciben 1 ficha de Iones cada una."""
        "Bomb Loadout":
            name: "Compartimento de Bombas"
            text: """<span class="card-restriction">Solo ala-Y.</span><br /><br />Tu barra de mejoras gana el icono %BOMB%."""
            ship: "Ala-Y"
        "Bodyguard":
            name: "Guardaespaldas"
            text: """%SCUMONLY%<br /><br />Al principio de la fase de Combate, puedes gastar 1 ficha de Concentración para elegir 1 nave aliada situada a alcance 1 cuyo piloto tenga una Habilidad más alta que la tuya. Hasta el final de la ronda, la puntuación de Agilidad de esa nave se incrementa en 1."""
        "Calculation":
            name: "Planificación"
            text: """Cuando ataques, puedes gastar 1 ficha de Concentración para cambiar 1 de tus resultados %FOCUS% por un resultado %CRIT%."""
        "Accuracy Corrector":
            name: "Corrector de Puntería"
            text: """Cuando ataques, puedes anular los resultados de todos tus dados. Después puedes añadir 2 resultados %HIT%.<br /><br />Si decides hacerlo, no podrás volver a modificar tus dados durante este ataque."""
        "Inertial Dampeners":
            name: "Amortiguadores de Inercia"
            text: """Cuando reveles tu maniobra, puedes descartar esta carta para ejecutar en su lugar una maniobra blanca [0%STOP%]. Después recibes 1 ficha de Tensión."""
        "Flechette Cannon":
            name: "Cañón de Fragmentación"
            text: """<strong>Ataque:</strong> Ataca a 1 nave.%LINEBREAK%Si este ataque impacta, el defensor sufre 1 de daño y, si no tiene asignada ninguna ficha de Tensión, recibe también 1 ficha de Tensión. Después se anulan <strong>todos</strong> los resultados de los dados."""
        '"Mangler" Cannon':
            name: 'Cañón "Mutilador"'
            text: """<strong>Ataque:</strong> Ataca a 1 nave.%LINEBREAK%Durante este ataque, puedes cambiar 1 de tus resultados %HIT% por un resultado %CRIT%."""
        "Dead Man's Switch":
            name: "Dispositivo de Represalia"
            text: """Cuando seas destruido, toda nave que tengas a alcance 1 sufre 1 daño."""
        "Feedback Array":
            name: "Transmisor de Sobrecargas"
            text: """Durante la fase de Combate, en vez de efectuar ataques, puedes recibir 1 ficha de Iones y sufrir 1 daño para elegir 1 nave enemiga a alcance 1. Esa nave sufre 1 daño."""
        '"Hot Shot" Blaster':
            name: "Cañón Bláster Desechable"
            text: """<strong>Ataque:</strong> Descarta esta carta para atacar a 1 nave (aunque esté fuera de tu arco de fuego)."""
        "Greedo":
            text: """%SCUMONLY%<br /><br />La primera vez que ataques cada ronda y la primera vez que te defiendas cada ronda, la primera carta de Daño inflingida será asignada boca arriba."""
        "Outlaw Tech":
            name: "Técnico Clandestino"
            text: """%SCUMONLY%<br /><br />Después de que ejecutes una maniobra roja, puedes asignar 1 ficha de Concentración a tu nave."""
        "K4 Security Droid":
            name: "Droide de Seguridad K4"
            text: """%SCUMONLY%<br /><br />Después de que ejecutes una maniobra verde, puedes fijar un blanco."""
        "Salvaged Astromech":
            name: "Droide Astromecánico Remendado"
            text: """Cuando recibas una carta de Daño con el atributo <strong>Nave</strong>, puedes descartarla de inmediato (antes de resolver sus efectos).<br /><br />Luego descarta esta carta de Mejora."""
        '"Genius"':
            name: '"Genio"'
            text: """Si estás equipado con una bomba que puede soltarse antes de revelar tu selector de maniobras, puedes elegir soltar la bomba <strong>después</strong> de ejecutar tu maniobra."""
        "Unhinged Astromech":
            name: "Droide Astromecánico Desquiciado"
            text: """Puedes ejecutar todas las maniobras de velocidad 3 como maniobras verdes."""
        "R4 Agromech":
            name: "Droide Agromecánico R4"
            text: """Cuando ataques, después de gastar una ficha de Concentración puedes fijar al defensor como blanco."""
        "R4-B11":
            text: """Cuando ataques, si tienes al defensor fijado como blanco, puedes gastar la ficha de Blanco Fijado para elegir cualquier o todos sus dados de defensa. El defensor debe volver a tirar los dados elegidos."""
        "Autoblaster Turret":
            name: "Torreta de Bláster Automático"
            text: """<strong>Ataque:</strong> Ataca a 1 nave (aunque esté fuera de tu arco de fuego).<br /><br />Tus resultados %HIT% no pueden ser anulados por los dados de defensa.<br /><br />El defensor puede anular tus resultados %CRIT% antes que los %HIT%."""
        "Advanced Targeting Computer":
            ship: "TIE Avanzado"
            name: "Computadora de Selección de Blancos Avanzada"
            text: """<span class="card-restriction">Solo TIE Avanzado.</span>%LINEBREAK%Cuando ataques con tu armamento principal, si tienes al defensor fijado como blanco, puedes añadir 1 %CRIT% al resultado de tu tirada. Si decides hacerlo, no podrás gastar fichas de Blanco Fijado durante este ataque."""
        "Ion Cannon Battery":
            name: "Batería de Cañones de Iones"
            text: """<strong>Ataque (Energía):</strong> Gasta 2 de Energía de esta carta para efectuar este ataque. Si este ataque impacta, el defensor sufre 1 de daño crítico y recibe 1 ficha de Iones. Después se anulan <strong>todos<strong> los resultados de los dados."""
        "Emperor Palpatine":
            name: "Emperador Palpatine"
            text: """%IMPERIALONLY%%LINEBREAK%Una vez por ronda, puedes cambiar el resultado de una tirada de dado efectuada por cualquier nave aliada por el de cualquier otro resultado posible para ese dado. El resultado de ese dado no podrá volver a ser modificado."""
        "Bossk":
            text: """%SCUMONLY%%LINEBREAK%Después de que realices un ataque y falles, si no tienes fichas de Tensión <strong>debes</strong> recibir 1 ficha de Tensión. Después asigna 1 ficha de Concentración a tu nave y fija al defensor como blanco."""
        "Lightning Reflexes":
            name: "Reflejos Rápidos"
            text: """%SMALLSHIPONLY%%LINEBREAK%Después de que ejecutes una maniobra blanca o verde en tu selector, puedes descartar esta carta para rotar tu nave 180º. Luego recibes 1 ficha de Tensión <strong>después</strong> del paso de "comprobar Tensión del piloto."""
        "Twin Laser Turret":
            name: "Torreta Láser Doble"
            text: """<strong>Ataque:</strong> Efectúa este ataque <strong>dos veces</strong> (incluso contra una nave situada fuera de tu arco de fuego).<br /><br />Cada vez que este ataque impacte, el defensor sufre 1 de daño. Luego se anulan <strong>todos</strong> los resultados de los dados."""
        "Plasma Torpedoes":
            name: "Torpedos de Plasma"
            text: """<strong>Ataque (Blanco fijado):</strong> Gasta tu ficha de Blanco fijado y descarta esta carta para efectuar este ataque.<br /><br />Si el ataque impacta, después de inflingir daños quita 1 ficha de Escudos del defensor."""
        "Ion Bombs":
            name: "Bombas de Iones"
            text: """Cuando reveles tu selector de maniobras, puedes descartar esta carta para <strong>soltar</strong> 1 ficha de Bomba de iones.<br /><br />Esta ficha <strong>detona</strong> al final de la fase de Activación.<br /><br /><strong>Ficha de Bomba de iones:</strong> Cuando se detona esta ficha de Bomba, toda nave que se encuentre a alcance 1 de ella recibe 2 fichas de Iones. Después se descarta esta ficha."""
        "Conner Net":
            name: "Red Conner"
            text: """<strong>Acción:</strong> Descarta esta carta para <strong>soltar</strong> 1 ficha de Red Conner.<br /><br />Esta ficha se <strong>detona</strong> cuando la peana o plantilla de maniobra de una nave se solape con ella.<br /><br /><strong>Ficha de Red Conner:</strong> Cuando es detona esta ficha de Bomba, la nave que la haya atravesado o solapado sufre 1 daño, recibe 2 fichas de Iones y se salta su paso de "Realizar una acción". Después se descarta esta ficha."""
        "Bombardier":
            name: "Bombardero"
            text: """Cuando sueltes una bomba, puedes usar la plantilla (%STRAIGHT% 2) en lugar de la plantilla (%STRAIGHT% 1)."""
        "Cluster Mines":
            name: "Minas de Racimo"
            text: """<strong>Acción:</strong> Descarta esta carta para <strong>soltar</strong> 1 conjunto de Minas de racimo.<br /><br />Cada ficha de Mina de racimo se <strong>detona</strong> cuando la peana o plantilla de maniobra de una nave se solapa con ella.<br /><br /><strong>Ficha de Mina de racimo:</strong> Cuando se detona una de estas fichas de Bomba, la nave que la haya atravesado o solapado tira 2 dados de ataque y sufre todo el daño (%HIT%) obtenido en la tirada. Después se descarta esta ficha."""
        'Crack Shot':
            name: "Tiro Certero"
            text: '''Cuando ataques a una nave situada dentro de tu arco de fuego, puedes descartar esta carta para anular 1 resultad %EVADE% del defensor.'''
        "Advanced Homing Missiles":
            name: "Misiles Rastreadores Avanzados"
            text: """<strong>Ataque (Blanco fijado):</strong> Descarta esta carta para efectuar este ataque.%LINEBREAK%Si el ataque impacta, inflinge 1 carta de Daño boca arriba al defensor. Luego se anulan <strong>todos</strong> los resultados de los dados."""
        'Agent Kallus':
            text: '''%IMPERIALONLY%%LINEBREAK%At the start of the first round, choose 1 enemy small or large ship.  When attacking or defending against that ship, you may change 1 of your %FOCUS% results to a %HIT% or %EVADE% result.'''
        'XX-23 S-Thread Tracers':
            text: """<strong>Attack (focus):</strong> Discard this card to perform this attack.  If this attack hits, each friendly ship at Range 1-2 of you may acquire a target lock on the defender.  Then cancel <strong>all</strong> dice results."""
        "Tractor Beam":
            text: """<strong>Attack:</strong> Attack 1 ship.%LINEBREAK%If this attack hits, the defender receives 1 tractor beam token.  Then cancel <strong>all</strong> dice results."""
        "Cloaking Device":
            text: """%SMALLSHIPONLY%%LINEBREAK%<strong>Action:</strong> Perform a free cloak action.%LINEBREAK%At the end of each round, if you are cloaked, roll 1 attack die.  On a %FOCUS% result, discard this card, then decloak or discard your cloak token."""
        "Shield Technician":
            name: "Técnico de Escudos"
            text: """%HUGESHIPONLY%%LINEBREAK%Cuando lleves a cabo una acción de recuperación, en vez de retirar todas tus fichas de Energía, puedes elegir qué cantidad de fichas de Energía deseas retirar."""
        "Grand Moff Tarkin":
            text: """%HUGESHIPONLY%%IMPERIALONLY%%LINEBREAK%Al comienzo de la fase de Combate, puedes elegir otra nave que tengas a alcance 1-4. Escoge entre retirar 1 ficha de Concentración de la nave elegida o asignarle 1 ficha de Concentración a esa nave."""
        "Captain Needa":
            name: "Capitán Needa"
            text: """%HUGESHIPONLY%%IMPERIALONLY%%LINEBREAK%Si durante la fase de Activación te solapas con un obstáculo, en vez de recibir 1 carta de Daño boca arriba, tira 1 dado de ataque. Si sacas %HIT% o %CRIT%, sufres 1 de daño."""
        "Admiral Ozzel":
            name: "Almirante Ozzel"
            text: """%HUGESHIPONLY%%IMPERIALONLY%%LINEBREAK%<strong>ENERGÍA</strong>: Puedes descartar hasta 3 fichas de Escudos de tu nave. Por cada ficha de Escudos descartada, obtienes 1 de Energía."""
        'Glitterstim':
            name: "Brillestim"
            text: """Al comienzo de la fase de Combate, puedes descartar esta carta y recibir 1 ficha de Tensión. Si lo haces, hasta el final de la ronda, cuando ataques o defiendes puedes cambiar todos tus resultados %FOCUS% por resultados %HIT% o %EVADE%."""
        'Extra Munitions':
            name: "Munición Adicional"
            text: """Cuando te equipas con esta carta, coloca 1 ficha de Munición de artillería sobre cada carta de Mejora %TORPEDO%, %MISSILE% y %BOMB% que tengas equipada. Cuando se te indique que descartes una carta de Mejora, en vez de eso puedes descartar 1 ficha de Munición de artillería que haya encima de esa carta."""
        "Weapons Guidance":
            name: "Sistema de Guiado de Armas"
            text: """Cuando ataques, puedes gastar una ficha de Concentración para cambiar 1 de tus resultados de cara vacia por un resultado %HIT%."""
        "BB-8":
            text: """Cuando reveles una maniobra verde, puedes realizar una acción gratuita de tonel volado."""
        "R5-X3":
            text: """Antes de revelar tu maniobra, puedes descartar esta carta para ignorar todos los obstáculos hasta el final de la ronda."""
        "Wired":
            name: "Enardecido"
            text: """Cuando ataques o te defiendas, si estás bajo tensión, puedes volver a tirar 1 o más de tus resultados %FOCUS%."""
        'Cool Hand':
            text: '''When you receive a stress token, you may discard this card to assign 1 focus or evade token to your ship.'''
        'Juke':
            text: '''%SMALLSHIPONLY%%LINEBREAK%When attacking, if you have an evade token, you may change 1 of the defender's %EVADE% results into a %FOCUS% result.'''
        'Comm Relay':
            text: '''You cannot have more than 1 evade token.%LINEBREAK%During the End phase, do not remove an unused evade token from your ship.'''
        'Dual Laser Turret':
            text: '''%GOZANTIONLY%%LINEBREAK%<strong>Attack (energy):</strong> Spend 1 energy from this card to perform this attack against 1 ship (even a ship outside your firing arc).'''
        'Broadcast Array':
            text: '''%GOZANTIONLY%%LINEBREAK%Your action bar gains the %JAM% action icon.'''
        'Rear Admiral Chiraneau':
            text: '''%HUGESHIPONLY% %IMPERIALONLY%%LINEBREAK%<strong>Action:</strong> Execute a white (%STRAIGHT% 1) maneuver.'''
        'Ordnance Experts':
            text: '''Once per round, when a friendly ship at Range 1-3 performs an attack with a %TORPEDO% or %MISSILE% secondary weapon, it may change 1 of its blank results to a %HIT% result.'''
        'Docking Clamps':
            text: '''%GOZANTIONLY% %LIMITED%%LINEBREAK%You may attach 4 up to TIE fighters, TIE interceptors, TIE bombers, or TIE Advanced to this ship.  All attached ships must have the same ship type.'''
        '"Zeb" Orrelios':
            text: """%REBELONLY%%LINEBREAK%Enemy ships inside your firing arc that you are touching are not considered to be touching you when either you or they activate during the Combat phase."""
        'Kanan Jarrus':
            text: """%REBELONLY%%LINEBREAK%Once per round, after a friendly ship at Range 1-2 executes a white maneuver, you may remove 1 stress token from that ship."""
        'Reinforced Deflectors':
            text: """%LARGESHIPONLY%%LINEBREAK%After you suffer 3 or more damage from an attack, recover one shield (up to your shield value)."""
        'Dorsal Turret':
            text: """<strong>Attack:</strong> Attack 1 ship (even a ship outside your firing arc).%LINEBREAK%If the target of this attack is at Range 1, roll 1 additional attack die."""
        'Targeting Astromech':
            text: '''After you execute a red maneuver, you may acquire a target lock.'''
        'Hera Syndulla':
            text: """%REBELONLY%%LINEBREAK%You may reveal and execute red maneuvers even while you are stressed."""
        'Ezra Bridger':
            text: """%REBELONLY%%LINEBREAK%When attacking, if you are stressed, you may change 1 of your %FOCUS% results to a %CRIT% result."""
        'Sabine Wren':
            text: """%REBELONLY%%LINEBREAK%Your upgrade bar gains the %BOMB% upgrade icon.  Once per round, before a friendly bomb token is removed, choose 1 enemy ship at Range 1 of that token. That ship suffers 1 damage."""
        '"Chopper"':
            text: """%REBELONLY%%LINEBREAK%You may perform actions even while you are stressed.%LINEBREAK%After you perform an action while you are stressed, suffer 1 damage."""
        'Construction Droid':
            text: '''%HUGESHIPONLY% %LIMITED%%LINEBREAK%When you perform a recover action, you may spend 1 energy to discard 1 facedown Damage card.'''
        'Cluster Bombs':
            text: '''After defending, you may discard this card.  If you do, each other ship at Range 1 of the defending section rolls 2 attack dice, suffering all damage (%HIT%) and critical damage (%CRIT%) rolled.'''
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
            name: "Dispositivo de Sigilo"
            text: """Tu Agilidad se incrementa en 1. Descarta esta carta si eres alcanzado por un ataque."""
        "Shield Upgrade":
            name: "Escudos Mejorados"
            text: """Tu valor de Escudos se incrementa en 1."""
        "Engine Upgrade":
            name: "Motor Mejorado"
            text: """Tu barra de acciones gana el ícono %BOOST%."""
        "Anti-Pursuit Lasers":
            name: "Cañones Láser Antipersecución"
            text: """Después de que una nave enemiga ejecute una maniobra que le cause solapar su peana con la tuya, lanza un dado de ataque. Si el resultado es %HIT% o %CRIT%, el enemigo sufre 1 de daño."""
        "Targeting Computer":
            name: "Computadora de Selección de Blancos"
            text: """Tu barra de acciones gana el icono %TARGETLOCK%."""
        "Hull Upgrade":
            name: "Blindaje mejorado"
            text: """Tu valor de Casco se incrementa en 1."""
        "Munitions Failsafe":
            name: "Sistema de Munición a Prueba de Fallas"
            text: """Cuando ataques con un armamento secundario que requiera descartarlo para efectuar el ataque, no se descarta a menos que el ataque impacte al objetivo."""
        "Stygium Particle Accelerator":
            name: "Acelerador de Partículas de Estigio"
            text: """<span class="card-restriction">Soo TIE Fantasma.</span><br /><br />Cuando realices una acción de camuflaje o desactives tu camuflaje, puedes realizar una acción gratuita de Evasión."""
        "Advanced Cloaking Device":
            name: "Dispositivo de Camuflaje Avanzado"
            text: """Despues de que efectúes un ataque, puedes realizar una acción gratuita de camuflaje."""
            ship: "TIE Fantasma"
        "Combat Retrofit":
            name: "Equipamiento de Combate"
            text: """<span class="card-restriction">Solo GR-75.</span><br /><br />Tu valor de casco se incrementa en 2 y tu valor de escudos se incrementa en 1."""
            ship: 'Transporte mediano GR-75'
        "B-Wing/E2":
            text: """<span class="card-restriction">Solo Ala-B.</span><br /><br />Tu barra de mejoras gana el icono de mejora %CREW%."""
            ship: "Ala-B"
        "Countermeasures":
            name: "Contramedidas"
            text: """Al comienzo de la fase de Combate, puedes descartar esta carta para aumentar en 1 tu Agilidad hasta el final de la ronda. Después puedes quitar 1 ficha enemiga de Blanco Fijado de tu nave."""
        "Experimental Interface":
            name: "Interfaz Experimental"
            text: """Una vez por ronda, después de que realices una acción, puedes llevar a cabo 1 acción gratuita de una carta de Mejora equipada que tenga el encabezado "<strong>Acción:</strong>". Después recibes 1 ficha de Tension."""
        "Tactical Jammer":
            name: "Inhibidor Táctico"
            text: """Tu nave puede obstruir ataques enemigos."""
        "Autothrusters":
            name: "Propulsores Automatizados"
            text: """Cuando te defiendas, si estás más allá de alcance 2 o fuera del arco de fuego del atacante, puedes cambiar 1 de tus resultados de cara vacía por un resultado %EVADE%. Sólo puedes equiparte con esta carta si tienes el icono de acción %BOOST%."""
        "Twin Ion Engine Mk. II":
            name: "Motor Iónico Doble Modelo II"
            text: """Puedes tratar todas las maniobras de inclinación (%BANKLEFT% y %BANKRIGHT%) como si fueran maniobras verdes."""
        "Maneuvering Fins":
            name: "Alerones de Estabilización"
            text: """Cuando reveles una maniobra de giro (%TURNLEFT% o %TURNRIGHT%), puedes rotar tu selector para elegir en su lugar la maniobra de inclinación correspondiente (%BANKLEFT% o %BANKRIGHT%) de igual velocidad."""
        "Ion Projector":
            name: "Proyector de Iones"
            text: """%LARGESHIPONLY%%LINEBREAK%Después de que una nave enemiga ejecute una maniobra que la solape con tu nave, tira 1 dado de ataque. Si sacas %HIT% o %CRIT%, la nave enemiga recibe 1 ficha de Iones."""
        "Advanced SLAM":
            name: "Motor Sublumínico Avanzado"
            text: """Después de efectuar una acción de MASA, si no te has solapado con un obstáculo ni con otra nave, puedes llevar a cabo una acctión gratuita."""
        'Integrated Astromech':
            text: '''<span class="card-restriction">X-wing only.</span>%LINEBREAK%When you are dealt a Damage card, you may discard 1 of your %ASTROMECH% Upgrade cards to discard that Damage card.'''
        'Optimized Generators':
            text: '''%HUGESHIPONLY%%LINEBREAK%Once per round, when you assign energy to an equipped Upgrade card, gain 2 energy.'''
        'Automated Protocols':
            text: '''%HUGESHIPONLY%%LINEBREAK%Once per round, after you perform an action that is not a recover or reinforce action, you may spend 1 energy to perform a free recover or reinforce action.'''
        'Ordnance Tubes':
            text: '''%HUGESHIPONLY%%LINEBREAK%You may treat each of your %HARDPOINT% upgrade icons as a %TORPEDO% or %MISSILE% icon.%LINEBREAK%When you are instructed to discard a %TORPEDO% or %MISSILE% Upgrade card, do not discard it.'''
        'Long-Range Scanners':
            text: '''You can acquire target locks on ships at Range 3 and beyond.  You cannot acquire target locks on ships at Range 1-2.  You can equip this card only if you have %TORPEDO% and %MISSILE% in your upgrade bar.'''
        "Guidance Chips":
            text: """Once per round, when attacking with a %TORPEDO% or %MISSILE% secondary weapon, you may change 1 die result to a %HIT% result (or a %CRIT% result if your primary weapon value is "3" or higher)."""

    title_translations =
        "Slave I":
            name: "Esclavo 1"
            text: """<span class="card-restriction">Solo Firespray-31.</span><br /><br />Tu barra de mejoras gana el icono %TORPEDO%."""
        "Millennium Falcon":
            name: "Halcón Milenario"
            text: """<span class="card-restriction">Solo YT-1300.</span><br /><br />Tu barra de acciones gana el icono %EVADE%."""
        "Moldy Crow":
            name: "Cuervo Oxidado"
            text: """<span class="card-restriction">Solo HWK-290.</span><br /><br />Durante la fase Final, no retires de tu nave las fichas de Concentración que no hayas usado."""
        "ST-321":
            text: """<span class="card-restriction">Solo Lanzadera clase <em>Lambda</em>.</span><br /><br />Cuando fijas un blanco, puedes hacerlo con cualquier nave enemiga de la zona de juego."""
            ship: "Lanzadera clase Lambda"
        "Royal Guard TIE":
            name: "TIE de la Guardia Real"
            ship: "Interceptor TIE"
            text: """<span class="card-restriction">Solo TIE Interceptor.</span><br /><br />Puedes equipar un máximo de 2 mejoras de Modificación (en vez de 1).<br /><br />Esta mejora no puede equiparse en naves con pilotos de Habilidad 4 o inferior."""
        "Dodonna's Pride":
            name: "Orgullo de Donna"
            text: """<span class="card-restriction">Solo sección de proa de CR90.</span><br /><br />Cuando realices una accion de Coordinación, puedes elegir 2 naves aliadas en vez de 1. Cada una de estas naves pueden realizar 1 accion gratuita."""
            ship: "Corbeta CR90 (Proa)"
        "A-Wing Test Pilot":
            name: "Piloto de Ala-A experimental"
            text: """<span class="card-restriction">Solo Ala-A.</span><br /><br />Tu barra de mejoras gana 1 icono de mejora %ELITE%.<br /><br />No puedes equipar 2 cartas de Mejora %ELITE% iguales. Tampoco te puedes equipar con esta carta si la Habilidad de tu piloto es 1 o inferior."""
            ship: "Ala-A"
        "Tantive IV":
            name: "Tantive IV"
            text: """<span class="card-restriction">Solo sección de proa de CR90.</span><br /><br />La barra de mejoras de tu sección de proa gana 1 icono adicional de %CREW% y 1 icono adicional de %TEAM%."""
            ship: "Corbeta CR90 (Proa)"
        "Bright Hope":
            name: "Esperanza Brillante"
            text: """<span class="card-restriction">Solo GR-75.</span><br /><br />Una ficha de Refuerzo asignada a tu seccion de proa añade 2 resultados de %EVADE% en vez de 1."""
            ship: 'Transporte mediano GR-75'
        "Quantum Storm":
            name: "Tormenta Cuántica"
            text: """<span class="card-restriction">Solo GR-75.</span><br /><br />Al principio de la fase Final, si tienes 1 ficha de Energía o menos, ganas 1 ficha de Energía."""
            ship: 'Transporte mediano GR-75'
        "Dutyfree":
            name: "Libre de Impuestos"
            text: """<span class="card-restriction">Solo GR-75./span><br /><br />Cuando realices una acción de Interferencia, puedes elegir una nave enemiga situada a alcance 1-3 en lugar de 1-2."""
            ship: 'Transporte mediano GR-75'
        "Jaina's Light":
            name: "Luz de Jaina"
            text: """<span class="card-restriction">Solo sección de proa de CR90.</span><br /><br />Cuando te defiendas, una vez por ataque, si recibes una carta de Daño boca arriba, puedes descartarla y robar otra carta de Daño boca arriba."""
        "Outrider":
            name: "Jinete del Espacio"
            text: """<span class="card-restriction">Solo YT-2400.</span><br /><br />Mientras tu nave tenga equipada una mejora de %CANNON%, <strong>no puedes</strong> atacar con tu armamento principal y puedes atacar con armamentos secundarios %CANNON% contra naves enemigas fuera de tu arco de fuego."""
        "Andrasta":
            name: "Andrasta"
            text: """<span class="card-restriction">Solo Firespray-31.</span><br /><br />Tu barra de mejoras gana 2 iconos %BOMB% adicionales."""
        "TIE/x1":
            ship: "TIE Avanzado"
            text: """<span class="card-restriction">Solo TIE Avanzado.</span>%LINEBREAK%Tu barra de mejoras gana el icono %SYSTEM%.%LINEBREAK%Si te equipas con una mejora %SYSTEM%, su coste en puntos de escuadrón se reduce en 4 (hasta un mínimo de 0)."""
        "BTL-A4 Y-Wing":
            name: "BTL-A4 Ala-Y"
            text: """<span class="card-restriction">Solo Ala-Y.</span><br /><br />No puedes atacar naves que estén fuera de tu arco de fuego. Después de que efectúes un ataque con tu armamento principal, puedes realizar inmediatamente un ataque con arma secundaria %TURRET%."""
            ship: "Ala-Y"
        "IG-2000":
            name: "IG-2000"
            text: """<span class="card-restriction">Solo Agresor.</span><br /><br />Tu piloto tiene la misma capacidad especial que cualquier otra nave aliada equipada con la carta de Mejora <em>IG-2000</em> (además de su propia capacidad especial)."""
            ship: "Agresor"
        "Virago":
            name: "Virago"
            text: """<span class="card-restriction">Solo Víbora Estelar.</span><br /><br />Tu barra de mejoras gana los iconos %SYSTEM% y %ILLICIT%.<br /><br />Esta mejora no puede equiparse en naves con pilotos de Habilidad 3 o inferior."""
            ship: 'Víbora Estelar'
        '"Heavy Scyk" Interceptor (Cannon)':
            name: 'Interceptor "Scyk Pesado" (Cañón)'
            text: """<span class="card-restriction">Solo Interceptor M3-A.</span><br /><br />Tu barra de mejoras gana el icono %CANNON%."""
            ship: 'Interceptor M3-A'
        '"Heavy Scyk" Interceptor (Missile)':
            name: 'Interceptor "Scyk Pesado" (Misil)'
            text: """<span class="card-restriction">Solo Interceptor M3-A.</span><br /><br />Tu barra de mejoras gana el icono %MISSILE%."""
            ship: 'Interceptor M3-A'
        '"Heavy Scyk" Interceptor (Torpedo)':
            name: 'Interceptor "Scyk Pesado" (Torpedo)'
            text: """<span class="card-restriction">Solo Interceptor M3-A.</span><br /><br />Tu barra de mejoras gana el icono %TORPEDO%."""
            ship: 'Interceptor M3-A'
        "Dauntless":
            name: "Intrépido"
            text: """<span class="card-restriction">Solo VT-49 Diezmador.</span><br /><br />Después de que ejecutes una maniobra que te solape con otra nave, puedes realizar 1 acción gratuita. Luego recibes 1 ficha de Tensión."""
            ship: 'VT-49 Diezmador'
        "Ghost":
            text: """<span class="card-restriction">VCX-100 only.</span>%LINEBREAK%Equip the <em>Phantom</em> title card to a friendly Attack Shuttle and dock it to this ship.%LINEBREAK%After you execute a maneuver, you may deploy it from your rear guides."""
        "Phantom":
            text: """While you are docked, the <em>Ghost</em> can perform primary weapon attacks from its special firing arc, and, at the end of the Combat phase, it may perform an additional attack with an equipped %TURRET%. If it performs this attack, it cannot attack again this round."""
        "TIE/v1":
            text: """<span class="card-restriction">TIE Advanced Prototype only.</span>%LINEBREAK%After you acquire a target lock, you may perform a free evade action."""
        "Mist Hunter":
            text: """<span class="card-restriction">G-1A starfighter only.</span>%LINEBREAK%Your upgrade bar gains the %BARRELROLL% Upgrade icon.%LINEBREAK%You <strong>must</strong> equip 1 "Tractor Beam" Upgrade card (paying its squad point cost as normal)."""
        "Punishing One":
            text: """<span class="card-restriction">JumpMaster 5000 only.</span>%LINEBREAK%Increase your primary weapon value by 1."""
        "Hound's Tooth":
            name: "Diente de Perro"
            text: """<span class="card-restriction">Solo YV-666.</span>%LINEBREAK%Después de que seas destruido, y antes de retirarte de la zona de juego, puedes <strong>desplegar</strong> al Piloto del <span>Cachorro de Nashtah</span>.%LINEBREAK%El <span>Cachorro de Nashtah</span> no puede atacar en esta ronda."""
        "Assailer":
            name: "Acometedor"
            text: """<span class="card-restriction">Sólo sección de popa de corbeta clase <em>Incursor</em>.</span>%LINEBREAK%Cuando te defiendas, si la sección atacada tiene asginada una ficha de Refuerzo, puedes cambiar 1 resultado de %FOCUS% por 1 resultado %EVADE%."""
        "Instigator":
            name: "Instigador"
            text: """<span class="card-restriction">Sólo sección de popa de corbeta clase <em>Incursor</em>.</span>%LINEBREAK%ADespués de que hayas llevado a cabo una acción de recuperación, recuperas 1 de Escudos adicional."""
        "Impetuous":
            name: "Impetuoso"
            text: """<span class="card-restriction">Sólo sección de popa de corbeta clase <em>Incursor</em>.</span>%LINEBREAK%Después de que hayas efectuado un ataque que destruya una nave enemiga, puedes fijar un blanco."""
        'TIE/x7':
            text: '''<span class="card-restriction">TIE Defender only.</span>%LINEBREAK%Your upgrade bar loses the %CANNON% and %MISSILE% upgrade icons.%LINEBREAK%After executing a 3-, 4-, or 5-speed maneuver, you may assign 1 evade token to your ship.'''
        'TIE/D':
            text: '''<span class="card-restriction">TIE Defender only.</span>%LINEBREAK%Once per round, after you perform an attack with a %CANNON% secondary weapon that costs 3 or fewer squad points, you may perform a primary weapon attack.'''
        'TIE Shuttle':
            text: '''<span class="card-restriction">TIE Bomber only.</span>%LINEBREAK%Your upgrade bar loses all %TORPEDO%, %MISSILE%, and %BOMB% upgrade icons and gains 2 %CREW% upgrade icons.  You cannot equip a %CREW% Upgrade card that costs more than 4 squad points.'''
        'Requiem':
            text: '''%GOZANTIONLY%%LINEBREAK%When you deploy a ship, treat its pilot skill value as "8" until the end of the round.'''
        'Vector':
            text: '''%GOZANTIONLY%%LINEBREAK%After you execute a maneuver, you may deploy up to 4 attached ships (instead of 2).'''
        'Suppressor':
            text: '''%GOZANTIONLY%%LINEBREAK%Once per round, after you acquire a target lock, you may remove 1 focus, evade, or blue target lock token from that ship.'''

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations
