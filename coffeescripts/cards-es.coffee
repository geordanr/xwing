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
        "T-70 X-Wing Expansion Pack": "Pack de Expansión T-70 Ala-X"
        "TIE/fo Fighter Expansion Pack": "Pack de Expansión Caza TIE/fo"
        "Imperial Assault Carrier Expansion Pack": "Pack de Expansión Portacazas de Asalto Imperial"
        "Ghost Expansion Pack": "Pack de Expansión Espíritu"
        "Inquisitor's TIE Expansion Pack": "Pack de Expansión TIE del Inquisidor"
        "Mist Hunter Expansion Pack": "Pack de Expansión Cazador de la Niebla"
        "Punishing One Expansion Pack": "Pack de Expansión Castigadora"
        "Imperial Veterans Expansion Pack": "Pack de Expansión Veteranos Imperiales"
        "Protectorate Starfighter Expansion Pack": "Pack de Expansión Caza estelar del Protectorado"
        "Shadow Caster Expansion Pack": "Pack de Expansión Sombra Alargada"
        "Special Forces TIE Expansion Pack": "Pack de Expansión TIE de las Fuerzas Especiales"
        "ARC-170 Expansion Pack": "Pack de Expansión ARC-170"
        "U-Wing Expansion Pack": "Pack de Expansión Ala-U"
        "TIE Striker Expansion Pack": "Pack de Expansión Fustigador TIE"
        "Upsilon-class Shuttle Expansion Pack": "Pack de Expansión Lanzadera clase Ípsilon"
        "Sabine's TIE Fighter Expansion Pack": "Pack de Expansión Caza TIE de Sabine"
        "Quadjumper Expansion Pack": "Pack de Expansión Saltador Quad"
        "C-ROC Cruiser Expansion Pack": "Pack de Expansión Crucero C-ROC"
        "TIE Aggressor Expansion Pack": "Pack de Expansión Tie Agresor"
        "Scurrg H-6 Bomber Expansion Pack": "Pack de Expansión Bombardero Scurrg H-6"
        "Auzituck Gunship Expansion Pack": "Pack de Expansión Cañonera Auzituck"
        "TIE Silencer Expansion Pack": "Pack de Expansión Silenciador TIE"
        "Alpha-class Star Wing Expansion Pack": "Pack de Expansión Ala Estelar clase Alfa"
        "Resistance Bomber Expansion Pack": "Pack de Expansión Bombardero de la Resistencia"
        "Phantom II Expansion Pack": "Pack de Expansión Fantasma II"
        "Kimogila Fighter Expansion Pack": "Pack de Expansión Caza M12-L Kimogila"
        "TIE Reaper Expansion Pack": "Pack de Expansión Segador TIE"
        "Saw's Renegades Expansion Pack": "Pack de Expansión Renegados de Saw"
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
        # Warnings
        '.unreleased-content-used .translated': 'This squad uses unreleased content!'
        '.epic-content-used .translated': 'This squad uses Epic content!'
        '.illegal-epic-too-many-small-ships .translated': 'You may not field more than 12 of the same type Small ship!'
        '.illegal-epic-too-many-large-ships .translated': 'You may not field more than 6 of the same type Large ship!'
        '.collection-invalid .translated': 'You cannot field this list with your collection!'
        # Type selector
        '.game-type-selector option[value="standard"]': 'Standard'
        '.game-type-selector option[value="custom"]': 'Custom'
        '.game-type-selector option[value="epic"]': 'Epic'
        '.game-type-selector option[value="team-epic"]': 'Team Epic'
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
        '.view-as-text' : '<span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Imprimir/Ver como </span>Text'
        '.randomize' : 'Aleatorio!'
        '.randomize-options' : 'Opciones de aleatoriedad…'
        '.notes-container > span' : 'Squad Notes'
        # Print/View modal
        '.bbcode-list' : 'Copia el BBCode de debajo y pegalo en el post de tu foro.<textarea></textarea><button class="btn btn-copy">Copia</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Copia</button>'
        '.vertical-space-checkbox' : """Añade espacio para cartas de daño/mejora cuando imprima. <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Imprima en color. <input type="checkbox" class="toggle-color-print" />"""
        '.print-list' : '<i class="fa fa-print"></i>&nbsp;Imprimir'
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
    exportObj.renameShip 'TIE Advanced Prototype', 'Prototipo de TIE Avanzado'
    exportObj.renameShip 'VT-49 Decimator', 'VT-49 Diezmador'
    exportObj.renameShip 'TIE/fo Fighter', 'Caza TIE/fo'
    exportObj.renameShip 'TIE/sf Fighter', 'Caza TIE/sf'
    exportObj.renameShip 'TIE Striker', 'Fustigador TIE'
    exportObj.renameShip 'Upsilon-class Shuttle', 'Lanzadera clase Ípsilon'
    exportObj.renameShip 'TIE Aggressor', 'TIE Agresor'
    exportObj.renameShip 'TIE Silencer', 'Silenciador TIE'
    exportObj.renameShip 'Alpha-class Star Wing', 'Ala Estelar clase Alfa'
    exportObj.renameShip 'TIE Reaper', 'Segador TIE'
    exportObj.renameShip 'A-Wing', 'Ala-A'
    exportObj.renameShip 'B-Wing', 'Ala-B'
    exportObj.renameShip 'E-Wing', 'Ala-E'
    exportObj.renameShip 'X-Wing', 'Ala-X'
    exportObj.renameShip 'Y-Wing', 'Ala-Y'
    exportObj.renameShip 'K-Wing', 'Ala-K'
    exportObj.renameShip 'Z-95 Headhunter', 'Z-95 Cazacabezas'
    exportObj.renameShip 'Attack Shuttle', 'Lanzadera de Ataque'
    exportObj.renameShip 'CR90 Corvette (Aft)', 'Corbeta CR90 (Popa)'
    exportObj.renameShip 'CR90 Corvette (Fore)', 'Corbeta CR90 (Proa)'
    exportObj.renameShip 'GR-75 Medium Transport', 'Transporte mediano GR-75'
    exportObj.renameShip 'T-70 X-Wing', 'T-70 Ala-X'
    exportObj.renameShip 'U-Wing', 'Ala-U'
    exportObj.renameShip 'Auzituck Gunship', 'Cañonera Auzituck'
    exportObj.renameShip 'B/SF-17 Bomber', 'Bombardero B/SF-17'
    exportObj.renameShip 'Sheathipede-class Shuttle', 'Lanzadera clase Sheathipede'
    exportObj.renameShip 'M3-A Interceptor', 'Interceptor M3-A'
    exportObj.renameShip 'StarViper', 'Víbora Estelar'
    exportObj.renameShip 'Aggressor', 'Agresor'
    exportObj.renameShip 'Kihraxz Fighter', 'Caza Kihraxz'
    exportObj.renameShip 'G-1A Starfighter', 'Caza Estelar G-1A'
    exportObj.renameShip 'JumpMaster 5000', 'Saltador Maestro 5000'
    exportObj.renameShip 'Protectorate Starfighter', 'Caza Estelar del Protectorado'
    exportObj.renameShip 'Lancer-class Pursuit Craft', 'Nave de persecución clase Lancero'
    exportObj.renameShip 'Quadjumper', 'Saltador Quad'
    exportObj.renameShip 'C-ROC Cruiser', 'Crucero C-ROC'
    exportObj.renameShip 'Scurrg H-6 Bomber', 'Bombardero Scurrg H-6'
    exportObj.renameShip 'M12-L Kimogila Fighter', 'Caza M12-L Kimogila'

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
            name: "Agente Rebelde"
            ship: "HWK-290"
        "Roark Garnet":
            text: """Al comienzo de la fase de Combate, elige otra nave aliada que tengas a alcance 1-3. Hasta el final de la fase, se considera que el piloto de esa nave tiene habilidad 12."""
            ship: "HWK-290"
        "Kyle Katarn":
            text: """Al comienzo de la fase de Combate, puedes asignar 1 de tus fichas de Concentración a otra nave aliada que tengas a alcance 1-3."""
            ship: "HWK-290"
        "Jan Ors":
            text: """Cuando otra nave aliada que tengas a alcance 1-3 efectúe un ataque, si no tienes fichas de Tensión puedes recibir 1 ficha de Tensión para que esa nave tire 1 dado de ataque adicional."""
            ship: "HWK-290"
        "Scimitar Squadron Pilot":
            name: "Piloto del escuadrón Cimitarra"
            ship: "Bombardero TIE"
        "Gamma Squadron Pilot":
            name: "Piloto del escuadrón Gamma"
            ship: "Bombardero TIE"
        "Gamma Squadron Veteran":
            name: "Veterano del escuadrón Gamma"
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
            name: "Piloto del grupo Ómicron"
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
            name: "Comandante Kenkirk"
            text: """Si no te quedan escudos y tienes asignada al menos 1 carta de Daño, tu Agilidad aumenta en 1."""
        "Captain Oicunn":
            name: "Capitán Oicunn"
            text: """Después de ejecutar un maniobra, toda nave enemiga con la que estés en contacto sufre 1 daño."""
            ship: "VT-49 Diezmador"
        "Black Sun Enforcer":
            name: "Ejecutor del Sol Negro"
            ship: "Víbora Estelar"
        "Black Sun Assassin":
            name: "Asesino del Sol Negro"
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
            name: "Agente del Cártel"
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
        "Kaa'to Leeachos":
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
            name: "Azote"
            ship: "Caza TIE"
            text: """Cuando ataques a un defensor que tiene 1 o más cartas de Daño, tira 1 dado de ataque adicional."""
        "The Inquisitor":
            name: "El Inquisidor"
            ship: "Prototipo de TIE Avanzado"
            text: """Cuando ataques con tu armamento principal a alcance 2-3, el alcance del ataque se considera 1."""
        "Zuckuss":
            ship: "Caza Estelar G-1A"
            text: """Cuando ataques, puedes tirar 1 dado de ataque adicional. Si decides hacerlo, el defensor tira 1 dado de defensa adicional."""
        "Ruthless Freelancer":
            name: "Mercenario Despiadado"
            ship: "Caza Estelar G-1A"
        "Gand Findsman":
            name: "Buscador Gandiano"
            ship: "Caza Estelar G-1A"
        "Dengar":
            ship: "Saltador Maestro 5000"
            text: """Una vez por ronda, después de que te defiendas, si el atacante está dentro de tu arco de fuego, puedes efectuar un ataque contra esa nave."""
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
            name: "Salteador del Cártel"
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
            name: "As Rojo"
            ship: "T-70 Ala-X"
            text: '''La primera vez que quites una ficha de Escudos de tu nave en cada ronda, asigna 1 ficha de Evasión a tu nave.'''
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
            name: "Jefe Omega"
            ship: "Caza TIE/fo"
            text: '''Las naves enemigas que tienes fijadas como blanco no pueden modificar ningún dado cuando te atacan o se defienden de tus ataques.'''
        'Hera Syndulla':
            text: '''Cuando reveles una maniobra verde o roja, puedes girar tu selector de maniobras para escoger otra maniobra del mismo color.'''
        '"Youngster"':
            name: "Pipiolo"
            ship: "Caza TIE"
            text: """Los Cazas TIE aliados que tengas a alcance 1-3 pueden realizar la acción de tu carta de Mejora %ELITE% equipada."""
        '"Wampa"':
            ship: "Caza TIE"
            text: """Cuando ataques, al comienzo del paso "Comparar los resultados", puedes anular todos los resultados de los dados. Si anulas al menos un resultado %CRIT%, inflinge 1 carta de Daño boca abajo al defensor."""
        '"Chaser"':
            name: "Perseguidor"
            ship: "Caza TIE"
            text: """Cuando otra nave aliada que tengas a alcance 1 gaste una ficha de Concentración, asigna 1 ficha de Concentración a tu nave."""
        'Ezra Bridger':
            ship: "Lanzadera de Ataque"
            text: """Cuando te defiendas, si estás bajo tensión, puedes cambiar hasta 2 de tus resultados %FOCUS% por resultados %EVADE%."""
        '"Zeta Leader"':
            name: "Jefe Zeta"
            text: '''Cuando ataques, si no estás bajo tensión, puedes recibir 1 ficha de Tensión para tirar 1 dado de ataque adicional.'''
            ship: "Caza TIE/fo"
        '"Epsilon Ace"':
            name: "As Epsilon"
            text: '''Mientras no tengas ninguna carta de Daño asignada, se considera que tienes Habilidad 12.'''
            ship: "Caza TIE/fo"
        "Kanan Jarrus":
            text: """Cuando una nave enemiga que tengas a alcance 1-2 efectúe un ataque, puedes gastar una ficha de Concentración. Si decides hacerlo, el atacante tira 1 dado de ataque menos."""
        '"Chopper"':
            text: """Al comienzo de la fase de Combate, toda nave enemiga con la que estés en contacto recibe 1 ficha de Tensión."""
        'Hera Syndulla (Attack Shuttle)':
            name: "Hera Syndulla (Lanzadera de Ataque)"
            ship: "Lanzadera de Ataque"
            text: """Cuando reveles una maniobra verde o roja, puedes girar tu selector de maniobras para escoger otra maniobra del mismo color."""
        'Sabine Wren':
            ship: "Lanzadera de Ataque"
            text: """Inmediatamente antes de revelar tu maniobra, puedes realizar una acción gratuita de impulso o tonel volado."""
        '"Zeb" Orrelios':
            ship: "Lanzadera de Ataque"
            text: '''Cuando te defiendas, puedes anular resultados %CRIT% antes de anular resultados %HIT%.'''
        "Lothal Rebel":
            name: "Rebelde de Lothal"
            ship: "VCX-100"
        'Tomax Bren':
            text: '''Una vez por ronda, después de que te descartes de una carta de Mejora %ELITE%, dale la vuelta a esa carta para ponerla boca arriba.'''
            ship: "Bombardero TIE"
        'Ello Asty':
            text: '''Mientras no estés bajo tensión, puedes ejecutar tus maniobras %TROLLLEFT% y %TROLLRIGHT% como maniobras blancas.'''
            ship: "T-70 Ala-X"
        "Valen Rudor":
            text: """Después de que te defiendas, puedes ralizar una acción gratuita."""
            ship: "Prototipo de TIE Avanzado"
        "4-LOM":
            ship: "Caza Estelar G-1A"
            text: """Al comienzo de la fase Final, puedes asignar 1 de tus fichas de Tensión a otra nave que tengas a alcance 1."""
        "Tel Trevura":
            ship: "Saltador Maestro 5000"
            text: """La primrea vez que seas destruido, en vez de eso anula todo el daño restante, descarta todas tus cartas de Daño e inflinge 4 cartas de Daño boca abajo a esta nave."""
        "Manaroo":
            ship: "Saltador Maestro 5000"
            text: """Al comienzo de la fase de Combate, puedes asignar a otra nave aliada a alcance 1 todas las fichas de Concentración, Evasión y Blanco Fijado que tengas asignadas."""
        "Contracted Scout":
            name: "Explorador Contratado"
            ship: "Saltador Maestro 5000"
        '"Deathfire"':
            name: "Muerte Ígnea"
            text: '''Cuando reveles tu selector de maniobras o después de que realices una acción, puedes realizar una acción de carta de Mejora %BOMB% como acción gratuita.'''
            ship: "Bombardero TIE"
        "Sienar Test Pilot":
            name: "Piloto de pruebas de Sienar"
            ship: "Prototipo de TIE Avanzado"
        "Baron of the Empire":
            name: "Barón del Imperio"
            ship: "Prototipo de TIE Avanzado"
        "Maarek Stele (TIE Defender)":
            name: "Maarek Stele (Defensor TIE)"
            text: """Cuando tu ataque inflija una carta de Daño boca arriba al defensor, en vez de eso roba 3 cartas de Daño, elige 1 de ellas a tu elección y luego descarta las otras."""
            ship: "Defensor TIE"
        "Countess Ryad":
            name: "Condesa Ryad"
            text: """Cuando reveles una maniobra %STRAIGHT%, puedes considerarla como una maniobra %KTURN%."""
            ship: "Defensor TIE"
        "Glaive Squadron Pilot":
            name: "Piloto del escuadrón Guja"
            ship: "Defensor TIE"
        "Poe Dameron (PS9)":
            text: """Cuando ataques o te defiendas, si tienes una ficha de Concentración, puedes cambiar 1 de tus resultados %FOCUS% por un resultado %HIT% o %EVADE%."""
            ship: "T-70 Ala-X"
        "Resistance Sympathizer":
            name: "Simpatizante de la Resistencia"
            ship: "YT-1300"
        "Rey":
            text: """Cuando ataques o te defiendas, si la nave enemiga está dentro de tu arco de fuego, puedes volver a tirar hasta 2 dados en los que hayas sacado caras vacías."""
        'Han Solo (TFA)':
            text: '''En el momento de desplegarte durante la preparación de la partida, se te puede colocar en cualquier parte de la zona de juego que esté más allá de alcance 3 de las naves enemigas.'''
        'Chewbacca (TFA)':
            text: '''Después de que otra nave aliada que tengas a alcance 1-3 sea destruida (pero no hay aabandonado el campo de batalla), puedes efectuar un ataque.'''
        'Norra Wexley':
            ship: "ARC-170"
            text: '''Cuando ataques o te defiendas, puedes gastar una ficha de Blanco fijado que tengas sobre la nave enemiga para añadir 1 resultado %FOCUS% a tu tirada.'''
        'Shara Bey':
            ship: "ARC-170"
            text: '''Cuando otra nave aliada que tengas a alcance 1-2 esté atacando, puede usar tus fichas azules de Blanco fijado como si fuesen suyas.'''
        'Thane Kyrell':
            ship: "ARC-170"
            text: '''Después de que una nave enemiga que tengas dentro de tu arco de fuego a alcance 1-3 ataque a otra nave aliada, puedes realizar una acción gratuita.'''
        'Braylen Stramm':
            ship: "ARC-170"
            text: '''Después de que ejecutes una maniobra, puedes tirar 1 dado de ataque. Si sacas %HIT% o %CRIT%, quita 1 ficha de Tensión de tu nave.'''
        '"Quickdraw"':
            name: "Centella"
            ship: "Caza TIE/sf"
            text: '''Una vez por ronda, cuando pierdas una ficha de Escudos, puedes realizar un ataque de armamento principal.'''
        '"Backdraft"':
            name: "Llamarada"
            ship: "Caza TIE/sf"
            text: '''Cuando ataques a una nave que esté dentro de tu arco de fuego auxiliar, puedes añadir 1 resultado %CRIT%.'''
        'Omega Specialist':
            name: "Especialista del Escuadrón Omega"
            ship: "Caza TIE/sf"
        'Zeta Specialist':
            name: "Especialista del Escuadrón Zeta"
            ship: "Caza TIE/sf"
        'Fenn Rau':
            ship: "Caza Estelar del Protectorado"
            text: '''Cuando ataques o te defiendas, si tienes la nave enemiga a alcance 1, puedes tirar 1 dado adicional.'''
        'Old Teroch':
            name: "Viejo Teroch"
            ship: "Caza Estelar del Protectorado"
            text: '''Al comienzo de la fase de Combate, puedes elegir 1 nave enemiga que tengas a alcance 1. Si estás dentro de su arco de fuego, esa nave descarta todas sus fichas de Concentración y Evasión.'''
        'Kad Solus':
            ship: "Caza Estelar del Protectorado"
            text: '''Después de que ejecutes una maniobra roja, asigna 2 fichas de Concentración a tu nave.'''
        'Concord Dawn Ace':
            name: "As de Concord Dawn"
            ship: "Caza Estelar del Protectorado"
        'Concord Dawn Veteran':
            name: "Veterano de Concord Dawn"
            ship: "Caza Estelar del Protectorado"
        'Zealous Recruit':
            name: "Recluta entusiasta"
            ship: "Caza Estelar del Protectorado"
        'Ketsu Onyo':
            ship: "Nave de persecución clase Lancero"
            text: '''Al comienzo de la fase de Combate, puedes elegir una nave que tengas a alcance 1. Si esa nave está dentro de tus arcos de fuego normal <strong>y</strong> móvil, asígnale 1 ficha de Campo de tracción.'''
        'Asajj Ventress':
            ship: "Nave de persecución clase Lancero"
            text: '''Al comienzo de la fase de Combate, puedes elegir una nave que tengas a alcance 1-2. Si esa nave está dentro de tu arco de fuego móvil, asígnale 1 ficha de Tensión.'''
        'Sabine Wren (Scum)':
            ship: "Nave de persecución clase Lancero"
            text: '''Cuando te defiendas contra una nave enemiga que tengas dentro de tu arco de fuego móvil a alcance 1-2, puedes añadir 1 resultado %FOCUS% a tu tirada.'''
        'Shadowport Hunter':
            name: "Cazador de puerto clandestino"
            ship: "Nave de persecución clase Lancero"
        'Sabine Wren (TIE Fighter)':
            ship: "Caza TIE"
            text: '''Inmediatametne antes de revelar tu maniobra, puedes realizar una acción gratuita de impulso o tonel volado.'''
        '"Zeb" Orrelios (TIE Fighter)':
            ship: "Caza TIE"
            text: '''Cuando te defiendas, puedes anular resultados %CRIT% antes de anular resultados %HIT%.'''
        'Kylo Ren':
            ship: "Lanzadera clase Ípsilon"
            text: '''La primera vez que seas impactado por un ataque en cada ronda, asigna la carta de Estad "Yo te mostraré el Lado Oscuro" al atacante.'''
        'Unkar Plutt':
            ship: "Saltador Quad"
            text: '''Al final de la fase de Activación, <strong>debes</strong> asignar una ficha de Campo de tracción a toda nave con la que estés en contacto.'''
        'Cassian Andor':
            ship: "Ala-U"
            text: '''Al comienzo de la fase de Activación, puedes quitar 1 ficha de Tensión de 1 otra nave aliada que tengas a alcance 1-2.'''
        'Bodhi Rook':
            ship: "Ala-U"
            text: '''Cuando una nave aliada fije un blanco, esa nave puede fijarlo sobre una nave enemiga que esté situada a alcance 1-3 de cualquier nave aliada.'''
        'Heff Tobber':
            ship: "Ala-U"
            text: '''Después de que una nave enemiga ejecute una maniobra que la haga solaparse con tu nave, puedes realizar una acción gratuita.'''
        '''"Duchess"''':
            ship: "Fustigador TIE"
            name: '"Duquesa"'
            text: '''Cuando tengas equipada la carta de Mejora "Alreones adaptativos", puedes elegir ignorar su capacidad de carta.'''
        '''"Pure Sabacc"''':
            ship: "Fustigador TIE"
            name: '"Sabacc Puro"'
            text: '''Cuando ataques, si tienes 1 o menos cartas de Daño, tira 1 dado de ataque adicional.'''
        '''"Countdown"''':
            ship: "Fustigador TIE"
            name: '"Cuenta Atrás"'
            text: '''Cuando te defiendas, si no estás bajo tensión, durante el paso "Comparar los resultados", puedes sufrir 1 punto de daño para anular <strong>todos</strong> los resultados de los dados. Si lo haces, recibes 1 ficha de Tensión.'''
        'Nien Nunb':
            ship: "T-70 Ala-X"
            text: '''Cuando recibas una ficha de Tensión, si hay alguna nave enemiga dentro de tu arco de fuego a alcance 1, puedes descartar esa ficha de Tensión.'''
        '"Snap" Wexley':
            ship: "T-70 Ala-X"
            text: '''Después de que ejecutes una maniobra de velocidad 2, 3 ó 4, si no estás en contacto con ninguna nave, puedes realizar una acción gratuita de impulso.'''
        'Jess Pava':
            ship: "T-70 Ala-X"
            text: '''Cuando ataques o te defiendas, puedes volver a tirar 1 de tus dados por cada otra nave aliada que tengas a Alcance 1.'''
        'Ahsoka Tano':
            ship: "Caza TIE"
            text: '''Al comienzo de la fase de Combate, puedes gastar 1 ficha de Concentración para elegir una nave aliada que tengas a alcance 1. Esa nave puede realizar 1 acción gratuita.'''
        'Captain Rex':
            ship: "Caza TIE"
            name: "Capitán Rex"
            text: '''Después de que efectúes un ataque, asigna la carta de Estado "Fuego de supresión" al defensor.'''
        'Major Stridan':
            ship: "Lanzadera clase Ípsilon"
            name: "Mayor Stridan"
            text: '''A efectos de tus acciones y cartas de Mejora, puedes considerar las naves aliadas que tengas a alcance 2-3 como si estuvieran a alcance 1.'''
        'Lieutenant Dormitz':
            ship: "Lanzadera clase Ípsilon"
            name: "Teniente Dormitz"
            text: '''Durante la preparación de la partida, las naves aliadas pueden ser colocadas en cualquier lugar de la zona de juego que esté situado a alcance 1-2 de ti.'''
        'Constable Zuvio':
            ship: "Saltador Quad"
            name: "Alguacil Zuvio"
            text: '''Cuando reveles una maniobra de retroceso, puedes soltar una bomba usando los salientes de la parte frontal de tu peana (incluso una bomba con el encabezado "<strong>Acción:</strong>").'''
        'Sarco Plank':
            ship: "Saltador Quad"
            text: '''Cuando te defiendas, en vez de usar tu valor de Agilidad, puedes tirar tantos dados de defensa como la velocidad de la maniobra que has ejecutado en esta ronda.'''
        "Blue Squadron Pathfinder":
            name: "Infiltrador del Escuadrón Azul"
            ship: "Ala-U"
        "Black Squadron Scout":
            name: "Explorador del Escuadrón Negro"
            ship: "Fustigador TIE"
        "Scarif Defender":
            name: "Defensor de Scarif"
            ship: "Fustigador TIE"
        "Imperial Trainee":
            name: "Cadete Imperial"
            ship: "Fustigador TIE"
        "Starkiller Base Pilot":
            ship: "Lanzadera clase Ípsilon"
            name: "Piloto de la base Starkiller"
        "Jakku Gunrunner":
            ship: "Saltador Quad"
            name: "Traficante de armas de Jakku"
        'Genesis Red':
            ship: "Interceptor M3-A"
            text: '''Después de que fijes un blanco, asigna fichas de Concentración y fichas de Evasión a tu nave hasta que tengas tantas fichas de cada tipo como la nave que has fijado.'''
        'Quinn Jast':
            ship: "Interceptor M3-A"
            text: '''Al comienzo de la fase de Combate, puedes recibir una ficha de Armas inutilizadas para poner boca arriba una de tus cartas de Mejora %TORPEDO% o %MISSILE% descartadas.'''
        'Inaldra':
            ship: "Interceptor M3-A"
            text: '''Cuando ataques o te defiendas, puedes gastar 1 ficha de Escudos para volver a tirar cualquier cantidad de tus dados.'''
        'Sunny Bounder':
            ship: "Interceptor M3-A"
            text: '''Una vez por ronda, después de que tires o vuelvas a tirar los dados, si has sacado el mismo resultado en cada uno de tus dados, puedes añadir 1 más de esos resultados a la tirada.'''
        'C-ROC Cruiser':
            ship: "Crucero C-ROC"
            name: "Crucero C-ROC"
        'Lieutenant Kestal':
            ship: "TIE Agresor"
            text: '''Cuando ataques, puedes gastar 1 ficha de Concentración para anular todos los resultados %FOCUS% y de cara vacía del defensor.'''
        '"Double Edge"':
            ship: "TIE Agresor"
            name: "Doble Filo"
            text: '''Una vez por ronda, después de que efectúes un ataque con un armamento secundario que no impacte, puedes efectuar un ataque con un arma diferente.'''
        'Onyx Squadron Escort':
            ship: "TIE Agresor"
            name: "Escolta del Escuadrón Ónice"
        'Sienar Specialist':
            ship: "TIE Agresor"
            name: "Especialista de Sienar"
        'Viktor Hel':
            ship: "Caza Kihraxz"
            text: '''Después de que te defiendas, si la tirada que realizaste no consistió exactamente en 2 dados de defensa, el atacante recibe 1 ficha de Tensión.'''
        'Lowhhrick':
            ship: "Cañonera Auzituck"
            text: '''Cuando otra nave aliada que tengas a alcance 1 se esté defendiendo, puedes gastar 1 ficha de Refuerzo. Si lo haces, el defensor añade 1 resultado %EVADE%.'''
        'Wullffwarro':
            ship: "Cañonera Auzituck"
            text: '''Cuando ataques, si no tienes ninguna ficha de Escudos y tienes asignada como mínimo 1 carta de Daño, tira 1 dado de ataque adicional.'''
        'Wookiee Liberator':
            name: "Libertador wookie"
            ship: "Cañonera Auzituck"
        'Kashyyyk Defender':
            name: "Defensor de Kashyyyk"
            ship: "Cañonera Auzituck"
        'Captain Nym (Scum)':
            name: "Capitán Nym (Scum)"
            ship: "Bombardero Scurrg H-6"
            text: '''Puedes ignorar las bombas aliadas. Cuando una nave aliada se está defendiendo, si el atacante mide el alcance a través de una ficha de Bomba aliada, el defensor puede añadir 1 resultado%EVADE%.'''
        'Captain Nym (Rebel)':
            name: "Capitán Nym (Rebelde)"
            ship: "Bombardero Scurrg H-6"
            text: '''Una vez por ronda, puedes impedir que una bomba aliada detone.'''
        'Lok Revenant':
            name: "Aparecido de Lok"
            ship: "Bombardero Scurrg H-6"
        'Karthakk Pirate':
            name: "Pirata de Karthakk"
            ship: "Bombardero Scurrg H-6"
        'Sol Sixxa':
            ship: "Bombardero Scurrg H-6"
            text: '''Cuando sueltes una bomba, puedes utilizar la plantilla de maniobra (%TURNLEFT% 1) o (%TURNRIGHT% 1) en vez de la plantilla de (%STRAIGHT% 1).'''
        'Dalan Oberos':
            ship: 'Víbora Estelar'
            text: '''Si no estás bajo tensión, cuando reveles una maniobra de giro, inclinación o giro de Segnor, puedes ejecutarla como si fuera una maniobra roja de giro Tallon con la misma dirección (izquierda o derecha) utilizando la plantilla de maniobra revelada originalmente.'''
        'Thweek':
            ship: 'Víbora Estelar'
            text: '''Durante la preparación de la partida, antes del paso "Desplegar fuerzas", puedes elegir 1 nave enemiga y asignarle la carta de Estado "Vigilado" o "Imitado".'''
        'Captain Jostero':
            name: "Capitán Jostero"
            ship: "Caza Kihraxz"
            text: '''Una vez por ronda, después de que una nave enemiga que no se está defendiendo contra un ataque sufra daño normal o daño crítico, puedes efectuar un ataque contra esa nave.'''
        'Major Vynder':
            ship: "Ala Estelar clase Alfa"
            name: "Mayor Vynder"
            text: '''Cuando te defiendas, si tienes asignada una ficha de Armas bloqueadas, tira 1 dado de defensa adicional.'''
        'Nu Squadron Pilot':
            name: "Piloto del Escuadrón Nu"
            ship: "Ala Estelar clase Alfa"
        'Rho Squadron Veteran':
            name: "Veterano del Escuadrón Rho"
            ship: "Ala Estelar clase Alfa"
        'Lieutenant Karsabi':
            ship: "Ala Estelar clase Alfa"
            name: "Teniente Karsabi"
            text: '''Cuando recibas una ficha de Armas bloqueadas, si no estás bajo tensión, puedes recibir 1 ficha de Tensión para retirar esa ficha de Armas bloqueadas.'''
        'Cartel Brute':
            name: "Secuaz del Cártel"
            ship: "Caza M12-L Kimogila"
        'Cartel Executioner':
            name: "Verdugo del Cártel"
            ship: "Caza M12-L Kimogila"
        'Torani Kulda':
            ship: "Caza M12-L Kimogila"
            text: '''Después de que efectúes un ataque, toda nave enemiga que tengas a alcance 1-3 y esté situada dentro de tu arco de fuego centrado debe elegir entre sufrir 1 daño o retirar todas sus fichas de Concrentración y Evasión.'''
        'Dalan Oberos (Kimogila)':
            ship: "Caza M12-L Kimogila"
            text: '''Al comienzo de la fase de Combate, puedes fijar como blanco una nave enemiga que tengas a alcance 1-3 y esté situada dentro de tu arco de fuego centrado.'''
        'Fenn Rau (Sheathipede)':
            ship: "Lanzadera clase Sheathipede"
            text: '''Cuando una nave enemiga que tengas a alcance 1-3 y esté situada dentro de tu arco de fuego pase a ser la nave activa durante la fase de Combate, si no estás bajo tensión, puedes recibir 1 ficha de Tensión. Si lo haces, esa nave no podrá gastar fichas para modificar sus dados cuando ataque en esta ronda.'''
        'Ezra Bridger (Sheathipede)':
            ship: "Lanzadera clase Sheathipede"
            text: """Cuando te defiendas, si estás bajo tensión, puedes cambiar hasta 2 de tus resultados %FOCUS% por resultados %EVADE%."""
        '"Zeb" Orrelios (Sheathipede)':
            ship: "Lanzadera clase Sheathipede"
            text: '''Cuando te defiendas, puedes anular resultados %CRIT% antes de anular resultados %HIT%.'''
        'AP-5':
            ship: "Lanzadera clase Sheathipede"
            text: '''Cuando realices la acción de coordinación, después de que elijas a una nave aliada y antes de que esa nave realice su acción gratuita, puedes recibir 2 fichas de Tensión para quitarle 1 ficha de Tensión a esa nave.'''
        'Crimson Squadron Pilot':
            name: "Piloto del Escuadrón Carmesí"
            ship: "Bombardero B/SF-17"
        '"Crimson Leader"':
            name: '"Jefe Carmesí"'
            ship: "Bombardero B/SF-17"
            text: '''Cuando ataques, si el defensor está situado dentro de tu arco de fuego, puedes gastar 1 resultado %HIT% o %CRIT% para asignar el estado "Estremecido" al defensor.'''
        '"Crimson Specialist"':
            name: '"Especialista Carmesí"'
            ship: "Bombardero B/SF-17"
            text: '''Cuando coloques una ficha de Bomba que has soltado después de revelar tu selector de maniobras, puedes colocarla en cualquier lugar de la zona de juego donde quede en contacto con tu nave.'''
        '"Cobalt Leader"':
            name: '"Jefe Cobalto"'
            ship: "Bombardero B/SF-17"
            text: '''Cuando ataques, si el defensor está situado a alcance 1 de una ficha de Bomba, el defensor tira 1 dado de defensa menos (hasta un mínimo de 0).'''
        'Sienar-Jaemus Analyst':
            name: "Analista de Sienar-Jaemus"
            ship: "Silenciador TIE"
        'First Order Test Pilot':
            name: "Piloto de pruebas de la Primera Orden"
            ship: "Silenciador TIE"
        'Kylo Ren (TIE Silencer)':
            name: "Kylo Ren (Silenciador TIE)"
            ship: "Silenciador TIE"
            text: '''La primera vez que seas impactado por un ataque en cada ronda, asigna la carta de Estado "Yo te mostraré el Lado Oscuro" al atacante.'''
        'Test Pilot "Blackout"':
            name: 'Piloto de pruebas "Apagón"'
            ship: "Silenciador TIE"
            text: '''Cuando ataques, si el ataque está obstruido, el defensor tira 2 dados de defensa menos (hasta un mínimo de 0).'''
        'Kullbee Sperado':
            ship: "Ala-X"
            text: '''Después de que realices una acción de impulso o de tonel volado, puedes darle la vuelta a la carta de Mejora "Alas móviles" que tengas equipada en tu nave.'''
        'Major Vermeil':
            ship: "Segador TIE"
            name: "Mayor Vermeil"
            text: '''Cuando ataques, si el defensor no tiene asignada ninguna ficha de Concentración ni de Evasión, puedes cambiar 1 de tus resultados %FOCUS% o de cara vacía por un resultado %HIT%.'''
        "Scarif Base Pilot":
            name: "Piloto de la base de Scarif"
            ship: "Segador TIE"
        '"Visir"':
            ship: "Segador TIE"
            text: '''Después de que una nave liada ejecute una maniobra con una velocidad de 1, si esa nave está situada a alcance 1 de ti y no se ha solapado con ninguna nave, puedes asignarle 1 de tus fichas de Concentración o Evasión.'''
        'Captain Feroph':
            ship: "Segador TIE"
            name: "Capitán Feroph"
            text: '''Cuando te defiendas, si el atacante está interferido, añade 1 resultado %EVADE% a tu tirada.'''
        'Leevan Tenza':
            ship: "Ala-X"
            text: '''Después de que realices una acción de impulso, puedes recibir 1 ficha de Tensión para recibir 1 ficha de Evasión.'''
        'Cavern Angels Zealot':
            name: "Fanático de los Ángeles Cavernarios"
            ship: "Ala-X"
        'Partisan Renegade':
            name: "Insurgente de los Partisanos"
            ship: "Ala-U"
        'Saw Gerrera':
            ship: "Ala-U"
            text: '''Cuando una nave aliada que tengas a alcance 1-2 efectúe un ataque, si esa nave está bajo tensión o tiene asignada por lo menos 1 carta de Daño, puede volver a tirar 1 dado de ataque.'''
        'Benthic Two-Tubes':
            ship: "Ala-U"
            name: "Benthic Dos Tubos"
            text: '''Después de que realices una acción de concentración, puedes retirar 1 de tus fichas de Concentración para asignarla a una nave aliada que tengas a alcance 1-2.'''
        'Magva Yarro':
            ship: "Ala-U"
            text: '''Cuando otra nave aliada que tengas a alcance 1-2 se defienda, el atacante no puede volver a tirar más de 1 dado de ataque.'''
        'Edrio Two-Tubes':
            ship: "Ala-X"
            name: "Edrio Dos Tubos"
            text: '''Cuando te conviertas en la nave activa durante la fase de Activación, si tienes asignadas 1 o más fichas de Concentración, puedes realizar una acción gratuita.'''

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
            text: """<strong>Acción:</strong> Realiza una acción gratuita de tonel volado. Si no tienes el icono de acción %BARRELROLL%, recibes una ficha de Tensión.<br /><br />Después puedes descartar 1 ficha enemiga de Blanco Fijado que esté asignada a tu nave."""
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
            text: """%SMALLSHIPONLY%%LINEBREAK%Puedes tratar la expresión <strong>"Ataque (blanco fijado)"</strong> como si dijera <strong>"Ataque (concentración)"</strong>.<br /><br />Cuando un ataque te obligue a gastar una ficha de Blanco Fijado, puedes gastar una ficha de Concentración en su lugar."""
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
            name: "Cañón Láser Pesado"
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
            text: """<strong>Acción:</strong> Descarta esta carta para <strong>soltar</strong> 1 ficha de Mina de Proximidad.<br /><br />Cuando la peana o la plantilla de maniobra de una nave se solape con esta ficha, ésta se <strong>detona</strong>.<br /><br /><strong>Ficha de Mina de proximidad:</strong> Cuando se detona una de estas fichas de Bomba, la nave que la haya atravesado o solapado tira 3 dados de ataque y sufre todo el daño (%HIT%) y daño crítico (%CRIT%) obtenido en la tirada. Después se descarta esta ficha."""
        "Weapons Engineer":
            name: "Ingeniero de Armamento"
            text: """Puedes tener 2 Blancos Fijados a la vez (pero sólo 1 para cada nave enemiga).<br /><br />Cuando fijes un blanco, puedes fijar como blanco a dos naves distintas."""
        "Draw Their Fire":
            name: "Atraer su fuego"
            text: """Cuando una nave aliada que tengas a alcance 1 sea alcanzada por un ataque, puedes sufrir tú 1 de sus resultados %CRIT% no anulados en vez de la nave objetivo."""
        "Luke Skywalker":
            text: """Después de que efectúes un ataque y lo falles, puedes realizar inmediatamente un ataque con tu armamento principal. Puedes cambiar 1 resultado %FOCUS% por 1 resultado %HIT%. No podrás realizar ningún otro ataque en esta misma ronda."""
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
            text: """%LIMITED%%LINEBREAK%Después de que efectúes un ataque contra una nave que esté situada dentro de tu arco de fuego a alcance 2, esa nave recibe 1 ficha de Tensión."""
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
            name: "Oficial de la Flota"
            text: """<strong>Acción:</strong> Elige un máximo de 2 naves aliadas que tengas a alcance 1-2 y asigna 1 ficha de Concentración a cada una de ellas. Luego recibes 1 ficha de Tensión."""
        "Lone Wolf":
            name: "Lobo solitario"
            text: """Cuando ataques o defiendas, si no tienes ninguna otra nave aliada a alcance 1-2, pues volver a tirar 1 dado en el que hayas sacado una cara vacía."""
        "Stay On Target":
            name: "Seguir al Objetivo"
            text: """Cuando reveles una maniobra, puedes girar tu selector para escoger otra maniobra que tenga la misma velocidad.<br /><br />Tu maniobra se considera roja."""
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
            text: """Cuando ataques, durante el paso "Modificar la tirada de ataque", puedes anular los resultados de todos tus dados. Después puedes añadir 2 resultados %HIT% a tu tirada.<br /><br />Si decides hacerlo, no podrás volver a modificar tus dados durante este ataque."""
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
            text: """Cuando recibas una carta de Daño boca arriba con el atributo <strong>Nave</strong>, puedes descartarla de inmediato (antes de resolver sus efectos).<br /><br />Luego descarta esta carta de Mejora."""
        '"Genius"':
            name: '"Genio"'
            text: """Si estás equipado con una bomba que puede soltarse cuando revelas tu selector de maniobras, puedes elegir soltar la bomba <strong>después</strong> de ejecutar tu maniobra."""
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
            text: """%IMPERIALONLY%%LINEBREAK%Una vez por ronda, antes de que una nave aliada vaya a tirar dados, puedes decir un resultado de dado. Tras tirarlos, se debe cambiar 1 de los resultados obtenidos por el resultado elegido antes. El resultado de ese dado no podrá volver a ser modificado."""
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
            text: """<strong>Acción:</strong> Descarta esta carta para <strong>soltar</strong> 1 conjunto de Minas de racimo.<br /><br />Cada ficha de Mina de racimo se <strong>detona</strong> cuando la peana o plantilla de maniobra de una nave se solapa con ella.<br /><br /><strong>Ficha de Mina de racimo:</strong> Cuando se detona una de estas fichas de Bomba, la nave que la haya atravesado o solapado tira 2 dados de ataque y sufre 1 punto de daño por cada %HIT% o %CRIT% obtenido en la tirada. Después se descarta esta ficha."""
        'Crack Shot':
            name: "Tiro Certero"
            text: '''Cuando ataques a una nave situada dentro de tu arco de fuego, al comienzo del paso "Comparar los resultados", puedes descartar esta carta para anular 1 resultado %EVADE% del defensor.'''
        "Advanced Homing Missiles":
            name: "Misiles Rastreadores Avanzados"
            text: """<strong>Ataque (Blanco fijado):</strong> Descarta esta carta para efectuar este ataque.%LINEBREAK%Si el ataque impacta, inflinge 1 carta de Daño boca arriba al defensor. Luego se anulan <strong>todos</strong> los resultados de los dados."""
        'Agent Kallus':
            name: "Agente Kallus"
            text: '''%IMPERIALONLY%%LINEBREAK%Al comienzo de la primera ronda, elige 1 nave enemiga pequeña o grande. Cuando ataques a esa nave o te defiendas de esa nave, puedes cambiar 1 de tus resultados %FOCUS% por un resultado %HIT% o %EVADE%.'''
        'XX-23 S-Thread Tracers':
            name: "Hiperrastreadores XX-23"
            text: """<strong>Ataque (Concentración):</strong> Descarta esta carta para efectuar este ataque. Si este ataque impacta, toda nave aliada que tengas a alcance 1-2 puede fijar al defensor como blanco. Después se anulan <strong>todos</strong> los resultados de los dados."""
        "Tractor Beam":
            name: "Proyector de Campo de Tracción"
            text: """<strong>Ataque:</strong> Ataca a 1 nave.%LINEBREAK%Si este ataque impacta, el defensor recibe 1 ficha de Campo de Tracción. Después se anulan <strong>todos</strong> los resultados de los dados."""
        "Cloaking Device":
            name: "Dispositivo de Camuflaje"
            text: """%SMALLSHIPONLY%%LINEBREAK%<strong>Acción:</strong> Realiza una acción gratuita de camuflaje.%LINEBREAK%Al final de cada ronda, si estás camuflado, tira 1 dado de ataque. Si sacas %FOCUS%, descarta esta carta y luego elige entre desactivar el camuflaje o retirar tu ficha de Camuflaje."""
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
            name: "Mano Firme"
            text: '''Cuando recibas una ficha de Tensión, puedes descartar esta carta para asignar 1 ficha de Concetración o de Evasión a tu nave.'''
        'Juke':
            name: "Finta"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Cuando ataques, si tienes una ficha de Evasión, puedes cambiar 1 de los resultados %EVADE% del defensor por un resultado %FOCUS%.'''
        'Comm Relay':
            name: "Repetidor de Comunicaciones"
            text: '''No puedes tener más de 1 ficha de Evasión.%LINEBREAK%Durante la fase Final, no retires de tu nave las fichas de Evasión que no hayas usado.'''
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
            text: """%REBELONLY%%LINEBREAK%Las naves enemigas dentro de tu arco de fuego que estén en contacto contigo no se consideran en contacto contigo cuando tú o ellas os activéis durante la fase de Combate."""
        'Kanan Jarrus':
            text: """%REBELONLY%%LINEBREAK%Una vez por ronda, después de que una nave aliada que tengas a alcance 1-2 ejecute una maniobra blanca, puedes quitar 1 ficha de Tensión de esa nave."""
        'Reinforced Deflectors':
            name: "Deflectores Reforzados"
            text: """%LARGESHIPONLY%%LINEBREAK%Tras defenderte, su durante el ataque has sufrido una combinación de 3 o más puntos de daño normal y crítico, recuperas 1 ficha de Escudos (hast aun máximo igual a tu valor de Escudos)."""
        'Dorsal Turret':
            name: "Torreta Dorsal"
            text: """<strong>Ataque:</strong> Ataca a 1 nave (aunque esté fuera de tu arco de fuego).%LINEBREAK%Si el objetivo de este ataque está a alcance 1, tiras 1 dado de ataque adicional."""
        'Targeting Astromech':
            name: "Droide Astromecánico de Selección de Blancos"
            text: '''Después de que ejecutes una maniobra roja, puedes fijar un blanco.'''
        'Hera Syndulla':
            text: """%REBELONLY%%LINEBREAK%Puedes revelar y ejectuar maniobras rojas incluso aunque estés bajo tensión."""
        'Ezra Bridger':
            text: """%REBELONLY%%LINEBREAK%Cuando ataques, si estás bajo tensión puedes cambiar 1 de tus resultados %FOCUS% por un resultado %CRIT%."""
        'Sabine Wren':
            text: """%REBELONLY%%LINEBREAK%Tu barra de mejoras gana el icono %BOMB%.  Una vez por ronda, antes de retirar una ficha de Bomba aliada, elige 1 nave enemiga situada a Alcance 1 de esa ficha. Esa nave sufre 1 de daño."""
        '"Chopper"':
            text: """%REBELONLY%%LINEBREAK%Puedes realizar acciones incluso aunque estés bajo tensión.%LINEBREAK%Después de que realices una acción mientras estás bajo tensión, sufres 1 de daño."""
        'Construction Droid':
            text: '''%HUGESHIPONLY% %LIMITED%%LINEBREAK%When you perform a recover action, you may spend 1 energy to discard 1 facedown Damage card.'''
        'Cluster Bombs':
            text: '''After defending, you may discard this card.  If you do, each other ship at Range 1 of the defending section rolls 2 attack dice, suffering all damage (%HIT%) and critical damage (%CRIT%) rolled.'''
        "Adaptability":
            name: "Adaptabilidad"
            text: """<span class="card-restriction">Carta dual.</span>%LINEBREAK%<strong>Cara A:</strong> La Habilidad de tu piloto se incrementa en 1.%LINEBREAK%<strong>Cara B:</strong> La habilidad de tu piloto se reduce en 1."""
        "Electronic Baffle":
            name: "Regulador Electrónico"
            text: """Cuando recibas una ficha de Tensión o una ficha de Iones, puedes sufrir 1 de daño para descartar esa ficha."""
        "4-LOM":
            text: """%SCUMONLY%%LINEBREAK%Cuando ataques, durante el paso "Modificar la tirada de ataque" puedes recibir 1 ficha de Iones para elegir 1 de las fichas de Concentración o Evasión del defensor. Esa ficha no se puede gastar durante este ataque."""
        "Zuckuss":
            text: """%SCUMONLY%%LINEBREAK%Cuando ataques, si no estás tensionado, puedes recibir tantas fichas de Tensión como quieras para elegir una cantidad igual de dados de defensa. El defensor debe volver a tirar esos dados."""
        'Rage':
            name: "Furia"
            text: """<strong>Acción:</strong> Asigna 1 ficha de Concentración a tu nave y recibe 2 fichas de Tensión. Hasta el final de la ronda, cuando ataques puedes volver a tirar hasta 3 dados de ataque."""
        "Attanni Mindlink":
            name: "Enlace Mental Attani"
            text: """%SCUMONLY%%LINEBREAK%Cada vez que se te asigne una ficha de Concentración o de Tensión, a todas las demás naves aliadas equipadas con "Enlace Mental Attani" se les debe asignar también una ficha de ese mismo tipo si es que no tienen ya una."""
        "Boba Fett":
            text: """%SCUMONLY%%LINEBREAK%Después de que efectúes un ataque, si al defensor se le infligió una carta de Daño boca arriba, puedes descartar esta carta para elegir y descartar 1 de las cartas de Mejora del defensor."""
        "Dengar":
            text: """%SCUMONLY%%LINEBREAK%Cuando ataques, puedes volver a tirar 1 dado de ataque. Si el defensor es un piloto único, en vez de eso puedes volver a tirar hasta 2 dados de ataque."""
        '"Gonk"':
            name: '"Gonk"'
            text: """%SCUMONLY%%LINEBREAK%<strong>Acción:</strong> Coloca 1 ficha de Escudos sobre esta carta.%LINEBREAK%<strong>Acción:</strong> Quita 1 ficha de Escudos de esta carta para recupera 1 de Escudos (hast aun máximo igual a tu valor de Escudos)."""
        "R5-P8":
            text: """Una vez por ronda, después de que te defiendas puedes volver a tirar 1 dado de ataque. Si sacas %HIT%, el atacante sufre 1 de daño. Si sacas %CRIT%, tanto tú como el atacante sufrís 1 de daño."""
        'Thermal Detonators':
            name: "Detonadores Térmicos"
            text: """Cuando reveles tu selector de maniobras, puedes descartar esta carta para <strong>soltar</strong> 1 ficha de Detonador térmico.%LINEBREAK%Esta ficha se <strong>detona</strong> al final de la fase de Activación.%LINEBREAK%<strong>Ficha de Detonador Térmico:</strong> Cuando esta bomba detona, cada nave a Alcance 1 de la ficha sufre 1 de daño y recibe 1 ficha de tensión.  Después, descarta esta ficha."""
        "Overclocked R4":
            name: "Droide R4 trucado"
            text: """Durante la fase de Combate, cuando gastes una ficha de Concentración puedes recibir 1 ficha de Tensión para asignar 1 ficha de Concentración a tu nave."""
        'Systems Officer':
            name: "Oficial de Sistemas"
            text: '''%IMPERIALONLY%%LINEBREAK%Después de que ejecutes una maniobra verde, elige otra nave aliada que tengas a alcance 1. Esa nave puede fijar un blanco.'''
        'Tail Gunner':
            name: "Artillero de cola"
            text: '''Cuando ataques desde tu arco de fuego auxiliar trasero, la Agilidad del defensor se reduce en 1 (hasta un mínimo de 0).'''
        'R3 Astromech':
            name: "Droide astromecánico R3"
            text: '''Una vez por ronda, cuando ataques con un armamento principal, durante el paso "Modificar la tirada de ataque" puedes anular 1 de tus resultados %FOCUS% para asignar 1 ficha de Evasión a tu nave.'''
        'Collision Detector':
            name: "Detector de colisiones"
            text: '''Cuando realices un impulso, un tonel volado o desactives tu camuflaje, tu nave y plantilla de maniobra se pueden solapar con obstáculos.%LINEBREAK%Cuando hagas una tirada de dados para determinar el daño causado por obstáculos, ignora todos tus resultados %CRIT%.'''
        'Sensor Cluster':
            name: "Conjunto de sensores"
            text: '''Cuando te defiendas, puedes gastar una ficha de Concentración para cambiar 1 de tus resultados de car avacía por 1 resultado %EVADE%.'''
        'Fearlessness':
            name: "Intrepidez"
            text: '''%SCUMONLY%%LINEBREAK%Cuando ataques, si estás dentro del arco de fuego del defensor a alcance 1 y el defensor está dentro de tu arco de fuego, puedes añadir 1 resultado %HIT% a tu tirada.'''
        'Ketsu Onyo':
            text: '''%SCUMONLY%%LINEBREAK%Al comienzo de la fase Final, puedes elegir 1 nave enemiga que tengas dentro de tu arco de fuego a alcance 1-2. Esa nave no retira sus fichas de Campo de tracción.'''
        'Latts Razzi':
            text: '''%SCUMONLY%%LINEBREAK%Cuando te defiendas, puedes quitarle al atacante 1 ficha de Tensión para añadir 1 resultado 1 %EVADE% a tu tirada.'''
        'IG-88D':
            text: '''%SCUMONLY%%LINEBREAK%Tu piloto tiene la misma capacidad especial que cualquier otra nave aliada equipada con la carta de Mejora <em>IG-2000</em> (además de su propia capacidad especial).'''
        'Rigged Cargo Chute':
            name: "Tolva de evacuación de carga"
            text: '''%LARGESHIPONLY%%LINEBREAK%<strong>Acción:</strong> Descarta esta carta para <strong>soltar</strong> 1 ficha de Cargamento.'''
        'Seismic Torpedo':
            name: "Torpedo sísmico"
            text: '''<strong>Acción:</strong> Descarta esta carta para elegir un obstáculo que tengas a alcance 1-2 y dentro de tu arco de fuego normal. Toda nave situada a alcance 1 del obstáculo tira 1 dado de ataque y sufre cualquier daño (%HIT%) o o daño crítico (%CRIT%) otenido. Luego retira el obstáculo.'''
        'Black Market Slicer Tools':
            name: "Sistemas ilegales de guerra electrónica"
            text: '''<strong>Acción:</strong> Elige una nave enemiga bajo tensión que tengas a alcance 1-2 y tira 1 dado de ataque. Si sacas %HIT% o %CRIT%, quítale 1 ficha de Tensión e inflíngele 1 carta de Daño boca abajo.'''
        # Wave X
        'Kylo Ren':
            text: '''%IMPERIALONLY%%LINEBREAK%<strong>Acción:</strong> Asigna la carta de Estado "Yo re mostraré el Lado Oscuro" a una nave enemiga que tengas a alcance 1-3.'''
        'Unkar Plutt':
            text: '''%SCUMONLY%%LINEBREAK%Después de que ejecutes una maniobra que te haga solaparte con una nave enemiga, puedes sufrir 1 de daño para realizar 1 acción gratuita.'''
        'A Score to Settle':
            name: "Una cuenta pendiente"
            text: '''Durante la preparación de la partida, antes del paso "Desplegar fuerzas", elige 1 nave enemiga y asígnale la carta de Estado "Una deuda por saldar"%LINEBREAK%Cuando ataques a una nave que tiene asignada la carta de Estado "Una deuda por saldar", puedes cambair 1 resultado %FOCUS% por un resultado %CRIT%.'''
        'Jyn Erso':
            text: '''%REBELONLY%%LINEBREAK%<strong>Acción:</strong> Elige 1 nave aliada que tengas a alcance 1-2. Asigna 1 ficha de Concentración a esa nave por cada nave enemiga que tengas dentro de tu arco de fuego a alcance 1-3. No puedes asignar más de 3 fichas de esta forma.'''
        'Cassian Andor':
            text: '''%REBELONLY%%LINEBREAK%Al final de la fase de Planificación, puedes elegir una nave enemiga que tengas a alcance 1-2. Di en voz alta la dirección y velocidad que crees que va a tener esa nave, y luego mira su selector d emaniobras. Si aciertas, puedes girar la rueda de tu selector para asignarle otra maniobra.'''
        'Finn':
            text: '''%REBELONLY%%LINEBREAK%Cuando ataques con un armamento principal o te defiendas, si la nave enemiga está dentro de tu arco de fuego, puedes añadir 1 resultado de cara vacía a tu tirada.'''
        'Rey':
            text: '''%REBELONLY%%LINEBREAK%Al comienzo de la fase Final, puedes colocar 1 de las fichas de Concentración de tu nave sobre esta carta. Al comienzo de la fase de Combate, puedes asignar 1 de esas fichas a tu nave.'''
        'Burnout SLAM':
            name: "Superacelerador de emergencia"
            text: '''%LARGESHIPONLY%%LINEBREAK%Tu barra de acciones gana el icono %SLAM%.%LINEBREAK%Después de que realices una acción de MASA, descarta esta carta.'''
        'Primed Thrusters':
            name: "Propulsores sobrealimentados"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Las fichas de Tensión no te impiden realizar acciones de impulso o de tonel volado a menos que tengas asignadas 3 fichas de Tensión o más.'''
        'Pattern Analyzer':
            name: "Analizador de patrones"
            text: '''Cuando ejecutes una maniobra, puedes resolver el paso "Comprobar Tensión del piloto" después del paso "Realizar una acción" (en vez de antes de ese paso).'''
        'Snap Shot':
            name: "Disparo de reacción"
            text: '''Después de que una nave enemiga ejecute una maniobra, puedes efectuar este ataque contra esa nave. <strong>Ataque:</strong> Ataca a 1 nave. No puedes modificar tus dados de ataque y no puedes volver a atacar en esta fase.'''
        'M9-G8':
            text: '''%REBELONLY%%LINEBREAK%Cuando una nave que tengas fijada como blanco esté atacando, puedes elegir 1 dado de ataque. El atacante debe volver a tirar ese dado.%LINEBREAK%Puedes fijar como blanco otras naves aliadas.'''
        'EMP Device':
            name: "Dispositivo de pulso electromagnético"
            text: '''Durante la fase de Combate, en vez de efecturas ningún ataque, puedes descartar esta carta para asignar 2 fichas de Iones a toda nave que tengas a alcance 1.'''
        'Captain Rex':
            name: "Capitán Rex"
            text: '''%REBELONLY%%LINEBREAK%Después de que efectúes un ataque no impacte, puedes asignar 1 ficha de Concentración a tu nave.'''
        'General Hux':
            text: '''%IMPERIALONLY%%LINEBREAK%<strong>Acción:</strong> Elige hasta 3 naves aliadas que tengas a alcance 1-2. Asigna 1 ficha de Concentración a cada una de esas naves y asigna la carta de Estado "Lealtad fanática" a 1 de ellas. Luego recibes 1 ficha de Tensión.'''
        'Operations Specialist':
            name: "Especialista en operaciones"
            text: '''%LIMITED%%LINEBREAK%Después de que una nave aliada que tengas a alcance 1-2 efectúe un ataque que no impacte, puedes asignar 1 ficha de Concentración a una nave aliada situada a alcance 1-3 del atacante.'''
        'Targeting Synchronizer':
            name: "Sincronizador de disparos"
            text: '''Cuando una nave aliada que tengas a alcance 1-2 ataque a una nave que tienes fijada como blanco, esa nave aliada considera el encabezado "<strong>Ataque (Blanco fijado):</strong> como si fuera "<strong>Ataque:</strong>." Si un efecto de juego indica a esa nave que gaste una ficha de Blanco fijada, en vez de eso puede gastar tu ficha de Blanco fijado.'''
        'Hyperwave Comm Scanner':
            name: "Escáner de frecuencias hiperlumínicas"
            text: '''Al comienzo del paso "Desplegar fuerzas", puedes elegir considerar la Habilidad de tu piloto como si fuera 0, 6 o 12 hasta el final del paso. Durante la preparación de la partida, después de que otra nave aliada sea colocada a alcance 1-2 de ti, puedes asignar 1 ficha de Concentración o Evasión a esa nave.'''
        'Trick Shot':
            name: "Disparo inverosímil"
            text: '''Cuando ataques, si el ataque se considera obstruido, puedes tirar 1 dado de ataque adicional.'''
        'Hotshot Co-pilot':
            name: "Copiloto extraordinario"
            text: '''Cuando ataques con un armamento princnipal, el defensor debe gastar 1 ficha de Concentración si le es posible.%LINEBREAK%Cuando te defiendas, el atacante debe gastar 1 ficha de Concentración si le es posible.'''
        '''Scavenger Crane''':
            name: "Grúa de salvamento"
            text: '''Después de que una nave que tengas a alcance 1-2 sea destruida, puedes elegir una carta de Mejora %TORPEDO%, %MISSILE%, %BOMB%, %CANNON%, %TURRET%, o Modificación que estuviera equipada en tu nave y ponerla boca arriba. Luego tira 1 dado de ataque. Si sacas una cara vacía, descarta tu "Grúa de salvamento".'''
        'Bodhi Rook':
            text: '''%REBELONLY%%LINEBREAK%Cuando fijes un blanco, puedes fijarlo sobre una nave enemiga que esté situada a alcance 1-3 de cualquier nave aliada.'''
        'Baze Malbus':
            text: '''%REBELONLY%%LINEBREAK%Después de que efectúes un ataque que no impacte, puedes realizar inmediatamente un ataque con tu armamento principal contra una nave diferente. No podrás realizar ningún otro ataque en esta misma ronda.'''
        'Inspiring Recruit':
            name: "Recluta inspirador"
            text: '''Una vez por ronda, cuando una nave aliada que tengas a alcance 1-2 se quite una ficha de Tensión, puede quitarse 1 ficha de Tensión adicional.'''
        'Swarm Leader':
            name: "Jefe de enjambre"
            text: '''Cuando ataques con un armamento principal, elige hasta 2 ortas naves aliadas que tengan al defensor dentro de sus arcos de fuego a alcance 1-3. Quita 1 ficha de Evasión de cada nave elegida para tirar 1 dado de ataque adicional por cada ficha quitada.'''
        'Bistan':
            text: '''%REBELONLY%%LINEBREAK%Cuando ataques a alcance 1-2, puedes cambiar 1 de tus resultados %HIT% por un resultado %CRIT%.'''
        'Expertise':
            name: "Maestría"
            text: '''Cuando ataques, si no estás bajo tensión, puedes cambair todos tus resultados %FOCUS% por resultados %HIT%.'''
        'BoShek':
            text: '''Cuando una nave con la que estás en contacto se activa, puedes mirar la maniobra que ha elegido. Si lo haces, el jugador que controla esa nave <strong>debe</strong> elegir en el selector una maniobra adyacente. La nave puede revelar y efectuar esa maniobra incluso aunque esté bajo tensión.'''
        # C-ROC
        'Heavy Laser Turret':
            ship: "Crucero C-ROC"
            name: "Torreta de láser pesado"
            text: '''<span class="card-restriction">Sólo crucero C-ROC</span>%LINEBREAK%<strong>Ataque (energía):</strong> Gasta 2 de Energía de esta carta para efectuar este ataque contra 1 nave (incluso contra una nave fuera de tu arco de fuego).'''
        'Cikatro Vizago':
            text: '''%SCUMONLY%%LINEBREAK%Al comienzo de la fase Final, puedes descartar esta carta pare reemplazar una carta de Mejora %ILLICIT% o %CARGO% que tengas equipada boca arriba por otra carta de Mejora de ese mismo tipo con un coste en puntos de escuadrón igual o inferior.'''
        'Azmorigan':
            text: '''%HUGESHIPONLY% %SCUMONLY%%LINEBREAK%Al comienzo de la fase Final, puedes gastar 1 de Energía para reemplazar una carta de Mejora %CREW% o %TEAM% que tengas equipada boca arriba por otra carta de Mejora de ese mismo tipo con un coste en puntos de escuadrón igual o inferior.'''
        'Quick-release Cargo Locks':
            name: "Enganches de carga de apertura rápida"
            text: '''%LINEBREAK%Al final de la fase de Activación puedes descartar esta carta para <strong>colocar</strong> 1 indicador de Contenedores.'''
        'Supercharged Power Cells':
            name: "Células de energía sobrealimentadas"
            text: '''Cuando ataques, puedes descartar esta carta para tirar 2 dados de ataque adicionales.'''
        'ARC Caster':
            name: "Proyector ARC"
            text: '''<span class="card-restriction">Sólo Escoria y Rebelde.</span>%DUALCARD%%LINEBREAK%<strong>Cara A:</strong>%LINEBREAK%<strong>Ataque:</strong> Ataca a 1 nave. Si este ataque impacta, debes elegir 1 otra nave a alcance 1 del defensor para que sufra 1 punto de daño.%LINEBREAK%Luego dale la vuelta a esta carta.%LINEBREAK%<strong>Cara B:</strong>%LINEBREAK%(Recargándose) Al comienzo de la fase de Combate, puedes recibir una ficha de Armas inutilizadas para darle la vuelta a esta carta.'''
        'Wookiee Commandos':
            name: "Comandos wookiees"
            text: '''Cuando ataques, puedes volver a tirar tus resultados %FOCUS%.'''
        'Synced Turret':
            name: "Torreta sincronizada"
            text: '''<strong>Ataque (Blanco fijado:</strong> Ataca a 1 nave (aunque esté fuera de tu arco de fuego).%LINEBREAK%Si el defensor está dentro de tu arco de fuego principal, puedes volver a tirar tantos dados de ataque como tu valor de Armamento principal.'''
        'Unguided Rockets':
            name: "Cohetes no guiados"
            text: '''<strong>Ataque (Concentración):</strong> Ataca a 1 nave.%LINEBREAK%Tus dados de ataque solo pueden ser modificados mediante el gasto de una ficha de Concentración para su efecto normal.'''
        'Intensity':
            name: "Ímpetu"
            text: '''%SMALLSHIPONLY% %DUALCARD%%LINEBREAK%<strong>Cara A:</strong> Después de que realices una acción de impulso o de tonel volado, puedes asignar 1 ficha de Concentración o de Evasión a tu nave. Si lo haces, dale la vuelta a esta carta.%LINEBREAK%<strong>Cara B:</strong> (Agotada) Al final de la fase de Combate, puedes gasta 1 ficha de Concentración o de Evasión para darle la vuelta a esta carta.'''
        'Jabba the Hutt':
            name: "Jabba el Hutt"
            text: '''%SCUMONLY%%LINEBREAK%Cuando equipes esta carta, coloca 1 ficha de Material Ilícito encima de cada carta de Mejora %ILLICIT% en tu escuadrón. Cuando debas descartar una carta de Mejora, en vez de eso puedes descartar 1 ficha de Material ilícito que esté encima de esa carta.'''
        'IG-RM Thug Droids':
            name: "Droides matones IG-RM"
            text: '''Cuando ataques, puedes cambiar 1 de tus resultados %HIT% por un resultado %CRIT%.'''
        'Selflessness':
            name: "Autosacrificio"
            text: '''%SMALLSHIPONLY% %REBELONLY%%LINEBREAK%Cuando una nave aliada que tengas a alcance 1 sea impactada por un ataque, puedes descartar esta carta para sufrir todos los resultados %HIT% no anulados en vez de la nave objetivo.'''
        'Breach Specialist':
            name: "Especialista en brechas"
            text: '''Cuando recibas una carta de Daño boca arriba, puedes gastar 1 ficha de Refuerzo para darle la vuelta y ponerla boca abajo (sin resolver su efecto). Si lo haces, hasta el final de la ronda, cuando recibas una carta de Daño boca arriba, dale la vuelta par aponerla boca abajo (sin resolver su efecto).'''
        'Bomblet Generator':
            name: "Generador de minibombas"
            text: '''Cuando reveles tu maniobra, puedes <strong>soltar</strong> 1 ficha de Minibomba%LINEBREAK%Esta ficha se <strong>detona</strong> al final de la fase de Activación.%LINEBREAK%<strong>Ficha de Minibomba:</strong> Cuando esta ficha detone, cada nave a Alcance 1 tira 2 dados de ataque y sufre todo el daño (%HIT%) y daño crítico (%CRIT%) obtenido en la tirada. Después se descarta esta ficha.'''
        'Cad Bane':
            text: '''%SCUMONLY%%LINEBREAK%Tu barra de mejoras gana el icono %BOMB%. Una vez por ronda, cuando una nave enemiga tire dados de ataque debido a la detonación de una bomba aliada, puedes elegir cualquier cantidad de resultados %FOCUS% y de cara vacía. La nave enemiga debe volver a tirar esos resultados.'''
        'Minefield Mapper':
            name: "Trazador de campos de minas"
            text: '''Durante la preparación de la partida, después del paso "Desplegar fuerzas", puedes descartar cualquier cantidad de tus cartas de Mejora %BOMB% equipadas. Coloca las correspondientes fichas de Bomba en la zona de juego más allá de alcance 3 de las naves enemigas.'''
        'R4-E1':
            text: '''Puedes realizar acciones que figuren en tus cartas de Mejora %TORPEDO% y %BOMB% incluso aunque estés bajo tensión. Después de que realices una acción de esta manera, puedes descartar esta carta para retirar 1 ficha de Tensión de tu nave.'''
        'Cruise Missiles':
            name: "Misiles de crucero"
            text: '''<strong>Ataque (Blanco Fijado):</strong> Descarta esta carta para efectuar este ataque. %LINEBREAK%Puedes tirar tantos dados de ataque adicionales como la velocidad de la maniobra que has ejecutado en esta ronda, hasta un máximo de 4 dados adicionales.'''
        'Ion Dischargers':
            name: "Descargadores de iones"
            text: '''Después de que recibas una ficha de Iones, puedes elegir una nave enemiga que tengas a alcance 1. Si lo haces retira esa ficha de Iones. A continuación, esa nave puede elegir recibir 1 ficha de Iones. Si lo hace, descarta esta carta.'''
        'Harpoon Missiles':
            name: "Misiles arpón"
            text: '''<strong>Ataque (Blanco fijado):</strong> Descarta esta carta para efcetuar este ataque.%LINEBREAK%Si este ataque impacta, después de resolver el ataque, asigna el estado "¡Arponeado!" al defensor.'''
        'Ordnance Silos':
            name: "Silos de munición"
            ship: "Bombardero B/SF-17"
            text: '''<span class="card-restriction">Sólo bombardero B/SF-17.</span>%LINEBREAK%Cuando te equipes con esta carta, coloca 3 fichas de Munición de artillería encima de cada otra carta de mejora %BOMB% que tengas equipada. Cuando debas descartar una carta de Mejora, en vez de eso puedes descartar 1 ficha de Munición de artillería que esté encima de esa carta.'''
        'Trajectory Simulator':
            name: "Simulador de trayectorias"
            text: '''Puedes lanzar bombas utilizando la plantilla de maniobra (%STRAIGHT% 5) en vez de soltarlas. No puedes lanzar de esta manera bombas que tengan el encabezado "<strong>Acción:</strong>".'''
        'Jamming Beam':
            name: "Haz de interferencias"
            text: '''<strong>Ataque:</strong> Ataca a 1 nave.%LINEBREAK%Si este ataque impacta, asígnale al defensor 1 ficha de Interferencia. Luego se anulan <strong>todos</strong> los resultados de los dados.'''
        'Linked Battery':
            name: "Batería enlazada"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Cuando ataques con tu armament principal o con un armamento secundario %CANNON%, puedes volver a tirar 1 dado de ataque.'''
        'Saturation Salvo':
            name: "Andanada de saturación"
            text: '''Después de que efectúes un ataque con un armamento secundario %TORPEDO% o %MISSILE% que no impacte, toda nave que esté situada a alcance 1 del defensor y que tenga una puntuación de Agilidad inferior al coste en puntos de escuadrón de la carta de Meora %TORPEDO% o %MISSILE% debe tirar 1 dado de ataque y sufrir cualquier daño normal (%HIT%) o daño crítico (%CRIT%) obtenido.'''
        'Contraband Cybernetics':
            name: "Ciberimplantes ilícitos"
            text: '''Cuando pases a ser la nave activa durante la fase de Activación, puedes descartar esta carta y recibir 1 ficha de Tensión. Si lo haces, hasta el final de la ornda, puedes llevar a cabo acciones y maniobras rojas incluso aunque estés bajo tensión.'''
        'Maul':
            text: '''%SCUMONLY% <span class="card-restriction">Ignora esta restricción si tu escuadrón contiene a "Ezra Bridger."</span>%LINEBREAK%Cuando ataques, si no estás bajo tensión, puedes recibir cualquier cantidad de fichas de Tensión para volver a tirar esa misma cantidad de dados de ataque.%LINEBREAK% Después de que realices un ataque que impacte, puedes retirar 1 de tus fichas de Tensión.'''
        'Courier Droid':
            name: "Droide mensajero"
            text: '''Al comienzo del paso "Desplegar fuerzas", puedes elegir que la puntuación de Habilidad de tu piloto se considere 0 u 8 hasta el final de este paso.'''
        '"Chopper" (Astromech)':
            text: '''<strong>Acción: </strong>Descarta 1 de tus otras cartas de Mejora equipadas para recuperar 1 ficha de Escudos.'''
        'Flight-Assist Astromech':
            name: "Droide astromecánico de ayuda al pilotaje"
            text: '''No puedes efectuar ataques ataques contra naves que estén situadas fuera de tu arco de fuego.%LINEBREAK%Después de que ejecutes una maniobra, si no te has solapado con una nave ni con un obstáculo, y no tienes ninguna nave enemiga a alcance 1-3 situada dentro de tu arco de fuego, puedes realizar una acción gratuita de impulso o tonel volado.'''
        'Advanced Optics':
            name: "Sensores ópticos avanzados"
            text: '''No puedes tener más de 1 ficha de Concentración.%LINEBREAK%Durante la fase Final, no retires de tu nave las fichas de Concentración que no hayas usado.'''
        'Scrambler Missiles':
            name: "Misiles interferidores"
            text: '''<strong>Ataque (Blanco fijado):</strong> Descarta esta carta para efectuar este ataque.%LINEBREAK%Si este ataque impacta, el defensor y toda otra nave que tenga a alcance 1 recibe 1 ficha de Interferencia. Luego se anulan <strong>todos</strong> los resultados de dados.'''
        'R5-TK':
            text: '''Puedes fijar como blanco naves aliadas.%LINEBREAK%Puedes efectuar ataques contra naves aliadas.'''
        'Threat Tracker':
            name: "Rastreador de amenazas"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Cuando una nave enemiga que tengas a alcance 1-2 y dentro de tu arco de fuego se convierta en la nave activa durante la fase de Combate, puedes gastar la ficha de Blanco fijado que tengas sobre esa nave para realizar una acción gratuita de impulso o tonel volado, si esa acción figura en tu barra de acciones.'''
        'Debris Gambit':
            name: "Treta de los desechos"
            text: '''%SMALLSHIPONLY%%LINEBREAK%<strong>Acción:</strong> Asigna 1 ficha de Evasión a tu nave por cada obstáculo que tengas a alcance 1, hast aun máximo de 2 fichas de Evasión.'''
        'Targeting Scrambler':
            name: "Interferidos de sistemas de puntería"
            text: '''Al comienzo de la fase de Planificación, puedes recibir una ficha de Armas bloqueadas para elegir una nave que tengas a alcance 1-3 y asignarle el Estado "Sistemas interferidos".'''
        'Death Troopers':
            name: "Soldados de la muerte"
            text: '''Después de que otr anave aliada que tengas a alcance 1 se convierta en el defensor, si estás situado a alcance 1-3 del atacante y dentro de su arco de fuego, el atacante recibe 1 ficha de Tensión.'''
        'ISB Slicer':
            name: "Técnico en guerra electrónica de la OSI"
            text: '''%IMPERIALONLY%%LINEBREAK%Después de que realices una acción de interferencia contra una nave enemiga, puedes elegir una nave que esté situada a alcance 1 de esa nave enemiga y no esté interferida, y asignarle 1 ficha de Interferencia.'''
        'Tactical Officer':
            name: "Oficial táctico"
            text: '''%IMPERIALONLY%%LINEBREAK%Tu barra de acciones gana el icono %COORDINATE%.'''
        'Saw Gerrera':
            text: '''%REBELONLY%%LINEBREAK%Cuando ataques, puedes sufrir 1 de daño para cambiar todos tus resultados %FOCUS% por resultados %CRIT%.'''
        'Director Krennic':
            text: '''Durante la preparación de la partida, antes del paso "Desplegar fuerzas", asigna el Estado "Prototipo optimizado" a una nave aliada del Imperio Galáctico que tenga un valor de Escudos igual o inferior a 3.'''
        'Magva Yarro':
            text: '''%REBELONLY%%LINEBREAK%Después de que te defiendas, puedes fijar como blanco al atacante.'''
        'Renegade Refit':
            name: "Reequipado por los Renegados"
            text: '''<span class="card-restriction">Sólo T-65 Ala-X y Ala-U.</span>%LINEBREAK%Te puedes equipar con un máximo de 2 mejoras de Modificación distintas.%LINEBREAK%El coste en puntos de escuadrón de cada una de las mejoras %ELITE% que tengas equipadas en tu nave se reduce en 1 (hasta un mínimo de 0).'''
        'Thrust Corrector':
            name: "Corrector de empuje"
            text: '''Cuando te defiendas, si no tienes asignadas más de 3 fichas de Tensión, puedes recibir 1 ficha de Tensión para anular todos los resultados de tus dados. Si lo haces, añade 1 resultado %EVADE% a tu tirada. No podrás volver a modificar tus dados durante este ataque.%LINEBREAK%Sólo puedes equipar esta Mejora en naves con una puntuación de Casco 4 o inferior.'''

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
            name: "Sistema de Munición a Prueba de Fallos"
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
            text: """Cuando te defiendas, si estás fuera del arco de fuego del atacante, o dentro de su arco de fuego pero más allá de alcance 2, puedes cambiar 1 de tus resultados de cara vacía por un resultado %EVADE%. Sólo puedes equiparte con esta carta si tienes el icono de acción %BOOST%."""
        "Twin Ion Engine Mk. II":
            name: "Motor Iónico Doble Modelo II"
            text: """<span class="card-restriction">Solo TIE.</span>%LINEBREAK%Puedes tratar todas las maniobras de inclinación (%BANKLEFT% y %BANKRIGHT%) como si fueran maniobras verdes."""
        "Maneuvering Fins":
            name: "Alerones de Estabilización"
            text: """<span class="card-restriction">Solo YV-666.</span>%LINEBREAK%Cuando reveles una maniobra de giro (%TURNLEFT% o %TURNRIGHT%), puedes rotar tu selector para elegir en su lugar la maniobra de inclinación correspondiente (%BANKLEFT% o %BANKRIGHT%) de igual velocidad."""
        "Ion Projector":
            name: "Proyector de Iones"
            text: """%LARGESHIPONLY%%LINEBREAK%Después de que una nave enemiga ejecute una maniobra que la solape con tu nave, tira 1 dado de ataque. Si sacas %HIT% o %CRIT%, la nave enemiga recibe 1 ficha de Iones."""
        "Advanced SLAM":
            name: "Motor Sublumínico Avanzado"
            text: """Después de efectuar una acción de MASA, si no te has solapado con un obstáculo ni con otra nave, puedes llevar a cabo una acctión gratuita."""
        'Integrated Astromech':
            name: "Droide Astromecánico Integrado"
            text: '''<span class="card-restriction">Solo X-wing.</span>%LINEBREAK%Cuando recibas una carta de Daño, puedes descartar 1 de tus cartas de Mejora %ASTROMECH% para descartar esa carta de Daño (sin resolver su efecto).'''
        'Optimized Generators':
            name: "Generadores optimizados"
            text: '''%HUGESHIPONLY%%LINEBREAK%Una vez por ronda, cuando asignes Energía a una carta de Mejora equipada, obtienes 2 de Energía.'''
        'Automated Protocols':
            name: "Procedimientos automatizados"
            text: '''%HUGESHIPONLY%%LINEBREAK%OUna vez por ronda, después de que realices una acción que no sea una acción de recuperación o de refuerzo, puedes gastar 1 de Energía para realizar una acción gratuita de recuperación o de refuerzo.'''
        'Ordnance Tubes':
            text: '''%HUGESHIPONLY%%LINEBREAK%You may treat each of your %HARDPOINT% upgrade icons as a %TORPEDO% or %MISSILE% icon.%LINEBREAK%When you are instructed to discard a %TORPEDO% or %MISSILE% Upgrade card, do not discard it.'''
        'Long-Range Scanners':
            name: "Sensores de Largo Alcance"
            text: '''Puedes fijar como blanco naves que tengas a alcance 3 o superior. No puedes fijar como blanco naves que tengas a alcance 1-2. Para poder equipar esta carta has de tener los iconos de mejora %TORPEDO% y %MISSILE% en tu barra de mejoras.'''
        "Guidance Chips":
            name: "Chips de Guiado"
            text: """Una vez por ronda, cuando ataques con un sistema de armamento secundario %TORPEDO% o %MISSILE%, puedes cambiar 1 de tus resultados de dado por un resultado %HIT% (o por un resultad %CRIT% si tu valor de Armamento principal es de 3 o más)."""
        'Vectored Thrusters':
            name: "Propulsores vectoriales"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Tu barra de acciones gana el icono de acción %BARRELROLL%.'''
        'Smuggling Compartment':
            name: "Compartimento para contrabando"
            text: '''<span class="card-restriction">Sólo YT-1300 y YT-2400.</span>%LINEBREAK%Tu barra de mejoras gana el icono %ILLICIT%.%LINEBREAK%Puedes equipar 1 mejora de Modificación adicional que no cueste más de 3 puntos de escuadrón.'''
        'Gyroscopic Targeting':
            name: "Estabilización giroscópica"
            ship: "Nave de persecución clase Lancero"
            text: '''<span class="card-restriction">Sólo Nave de persecución clase Lancero.</span>%LINEBREAK%Al final de la fase de Combate, si en esta ronda ejecutaste una maniobra de velocidad 3, 4 o 5, puedes reorientar tu arco de fuego móvil.'''
        'Captured TIE':
            ship: "Caza TIE"
            name: "TIE capturado"
            text: '''<span class="card-restriction">Sólo Caza TIE.</span>%REBELONLY%%LINEBREAK%Las naves enemigas cuyos pilotos tengan una Habilidad más baja que la tuya no pueden declararte como blanco de un ataque. Después de que efectúes un ataque o cuando seas la única nave aliada que queda en juego, descarta esta carta.'''
        'Spacetug Tractor Array':
            name: "Campos de tracción de remolque"
            ship: "Saltador Quad"
            text: '''<span class="card-restriction">Sólo Saltador Quad.</span>%LINEBREAK%<strong>Acción:</strong> Elige una nave que tengas dentro de tu arco de fuego a distancia 1 y asígnale una ficha de Campo de tracción. Si es una nave aliada, resuelve el efecto de la ficha de Campo de tracción como si se tratara de una nave enemiga.'''
        'Lightweight Frame':
            name: "Fuselaje ultraligero"
            text: '''<span class="card-restriction">Sólo TIE.</span>%LINEBREAK%Cuando te defiendas, tras tirar los dados de defensa, si hay más dados de ataque que dados de defensa, tira 1 dado de defensa adicional.%LINEBREAK%Esta mejora no puede equiparse en naves con puntuación de Agilidad 3 o superior.'''
        'Pulsed Ray Shield':
            name: "Escudo de rayos pulsátil"
            text: '''<span class="card-restriction">Sólo Escoria y Rebelde.</span>%LINEBREAK%Durante la fase Final, puedes recibir 1 ficha de Iones para recuperar 1 ficha de Escudos (pero no puedes exceder tu valor de Escudos). Sólo puedes equipar esta carta si tu valor de Escudos es 1.'''
        'Deflective Plating':
            name: "Blindaje deflector de impactos"
            ship: "Bombardero B/SF-17"
            text: '''<span class="card-restriction">Sólo bombardero B/SF-17.</span>%LINEBREAK%Cuando una bomba aliada se detone, puedes elegir no sufrir sus efectos. Si lo haces, tira un dado de ataque. Si sacas %HIT%, descarta esta carta.'''
        'Servomotor S-Foils':
            name: "Alas móviles"
            text: '''<span class="card-restriction">Sólo T-65 Ala-X.</span> %DUALCARD%%LINEBREAK%<strong>Cara A (Posición de ataque):</strong>Tu barra de acciones gana el icono %BARRELROLL%. Si no estás bajo tensión, cuando reveles una maniobra (%TURNLEFT% 3) o (3 %TURNRIGHT%), puedes considerarla como si fuera una maniobra (%TROLLLEFT% 3) o (%TROLLRIGHT% 3) con la misma dirección.%LINEBREAK%Al comienzo de la fase de Activación, puedes darle la vuelta a esta carta.%LINEBREAK%<strong>Cara B (Posición cerrada):</strong>Tu valor de Armamento principal se reduce en 1. Tu barra de acciones gana el icono %BOOST%. Tus maniobras (%BANKLEFT% 2) y (%BANKRIGHT% 2 ) se consideran verdes.%LINEBREAK%Al comienzo de la fase de Activación, puedes darle la vuelta a esta carta.'''
        'Multi-spectral Camouflage':
            name: "Camuflaje multiespectral"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Después de que recibas una ficha roja de Blanco fijado, si sólo tienes asignada 1 ficha roja de Blanco fijado, tira 1 dado de defensa. Si obtienes un resultado %EVADE%, retira esa ficha roja de Blanco fijado.'''

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
            text: """<span class="card-restriction">Solo TIE Interceptor.</span><br /><br />Puedes equipar un máximo de 2 mejoras  distintas de Modificación (en vez de 1).<br /><br />Esta mejora no puede equiparse en naves con pilotos de Habilidad 4 o inferior."""
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
            text: """<span class="card-restriction">Solo Interceptor M3-A.</span><br /><br />Tu barra de mejoras gana el icono %CANNON%. Tu valor de Casco se incrementa en 1."""
            ship: 'Interceptor M3-A'
        '"Heavy Scyk" Interceptor (Missile)':
            name: 'Interceptor "Scyk Pesado" (Misil)'
            text: """<span class="card-restriction">Solo Interceptor M3-A.</span><br /><br />Tu barra de mejoras gana el icono %MISSILE%. Tu valor de Casco se incrementa en 1."""
            ship: 'Interceptor M3-A'
        '"Heavy Scyk" Interceptor (Torpedo)':
            name: 'Interceptor "Scyk Pesado" (Torpedo)'
            text: """<span class="card-restriction">Solo Interceptor M3-A.</span><br /><br />Tu barra de mejoras gana el icono %TORPEDO%. Tu valor de Casco se incrementa en 1."""
            ship: 'Interceptor M3-A'
        "Dauntless":
            name: "Intrépido"
            text: """<span class="card-restriction">Solo VT-49 Diezmador.</span><br /><br />Después de que ejecutes una maniobra que te solape con otra nave, puedes realizar 1 acción gratuita. Luego recibes 1 ficha de Tensión."""
            ship: 'VT-49 Diezmador'
        "Ghost":
            name: "Espíritu"
            text: """<span class="card-restriction">Sólo VCX-100.</span>%LINEBREAK%Equipa la carta de Título <em>Fantasma</em> a una Lanzadera de ataque aliada y acóplala a esta nave.%LINEBREAK%Después de que ejecutes una maniobra, puedes desplegar la Lanzadera de ataque desde los salientes de la parte trasera de tu peana."""
        "Phantom":
            name: "Fantasma"
            text: """Mientras estás acoplado, el <em>Espíritu</em> puede efectuar ataques de armamento principal desde su arco de fuego especial y, al final de la fase de Combate, puede efectuar un ataque adicional con una %TURRET% equipada. Si efectúa este ataque, no puede volver a atacar durante esta ronda."""
            ship: 'Lanzadera de Ataque'
        "TIE/v1":
            text: """<span class="card-restriction">Solo Prototipo de TIE Av.</span>%LINEBREAK%Después de que fijes a un blanco, puedes realizar una acción gratuita de evasión."""
            ship: 'Prototipo de TIE Avanzado'
        "Mist Hunter":
            name: "Cazador de la Niebla"
            text: """<span class="card-restriction">Solo Caza Estelar G-1A.</span>%LINEBREAK%Tu barra de acción gana el icono %BARRELROLL%.%LINEBREAK%<strong>Debes</strong> equiparte con 1 carta de Mejora "Proyector de Campo de Tracción" (pagando su coste normal en puntos de escuadrón)."""
            ship: 'Caza Estelar G-1A'
        "Punishing One":
            name: "Castigadora"
            text: """<span class="card-restriction">Solo Saltador Maestro 5000.</span>%LINEBREAK%Tu valor de Armamento principal se incrementa en 1."""
            ship: 'Saltador Maestro 5000'
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
            text: '''<span class="card-restriction">Sólo TIE Defensor.</span>%LINEBREAK%Tu barra de mejoras pierde los iconos de mejora %CANNON% y %MISSILE%.%LINEBREAK%Después de que ejecutes una maniobra de velocidad 3, 4 o 5, si no te solapaste con un obstáculo o nave, puedes realizar una acción gratuita de evasión.'''
            ship: 'Defensor TIE'
        'TIE/D':
            text: '''<span class="card-restriction">Sólo TIE Defensor.</span>%LINEBREAK%Una vez por ronda, después de que efectúes un ataque con un armamento secundario %CANNON% con un coste en puntos de escuadrón inferior a 4, puedes efcetuar un ataque con tu armamento principal.'''
            ship: 'Defensor TIE'
        'TIE Shuttle':
            name: "Lanzadera TIE"
            text: '''<span class="card-restriction">Sólo TIE Bombardero.</span>%LINEBREAK%Tu barra de mejoras pierde todos los iconos de mejora %TORPEDO%, %MISSILE% y %BOMB% y gana 2 iconos de mejora %CREW%.  No puedes equipar ninguna carta de Mejora %CREW% con un coste en puntos de escuadrón superior a 4.'''
            ship: 'Bombardero TIE'
        'Requiem':
            text: '''%GOZANTIONLY%%LINEBREAK%When you deploy a ship, treat its pilot skill value as "8" until the end of the round.'''
        'Vector':
            text: '''%GOZANTIONLY%%LINEBREAK%After you execute a maneuver, you may deploy up to 4 attached ships (instead of 2).'''
        'Suppressor':
            text: '''%GOZANTIONLY%%LINEBREAK%Once per round, after you acquire a target lock, you may remove 1 focus, evade, or blue target lock token from that ship.'''
        'Black One':
            name: "Negro Uno"
            text: '''Después de que realices una acción de impulso o de tonel volado, puedes quitar 1 ficha de Blanco fijado enemiga de una nave aliada que tengas a alcance 1. Esta mejora no puede equiparse en naves con pilotos de Habilidad 6 o inferior.'''
            ship: "T-70 Ala-X"
        'Millennium Falcon (TFA)':
            name: "Halcón Milenario (TFA)"
            text: '''Después de que ejecutes una maniobra de inclinación (%BANKLEFT% o %BANKRIGHT%) de velocidad 3, si no estás en contacto con otra nave y no estás bajo tensión, puedes recibir 1 ficha de Tensión para cambiar la orientación de tu nave 180&deg;.'''
        'Alliance Overhaul':
            name: "Reacondicionado por la Alianza"
            text: '''<span class="card-restriction">Sólo ARC-170.</span>%LINEBREAK%Cuando ataques con un armamento principal desde tu arco de fuego normal, puedes tirar 1 dado de ataque adicional. Cuando ataques desde tu arco de fuego auxiliar, puedes cambiar 1 de tus resultados %FOCUS% por 1 resultado %CRIT%.'''
        'Special Ops Training':
            ship: "Caza TIE/sf"
            name: "Entrenamiento de operaciones especiales"
            text: '''<span class="card-restriction">Sólo TIE/sf.</span>%LINEBREAK%Cuando ataques con un armamento principal desde tu arco de fuego normal, puedes tirar 1 dado adicional de ataque. Si decides no hacerlo, puedes realizar un ataque adicional desde tu arco de fuego aixiliar.'''
        'Concord Dawn Protector':
            name: "Protector de Concord Dawn"
            ship: "Caza Estelar del Protectorado"
            text: '''<span class="card-restriction">Sólo Caza estelar del Protectorado.</span>%LINEBREAK%Cuando te defiendas, si estás dentro del arco de fuego del atacante y a alcance 1 y el atacante está dentro de tu arco de fuego, añade 1 resultado %EVADE%.'''
        'Shadow Caster':
            name: "Sombra Alargada"
            ship: "Nave de persecución clase Lancero"
            text: '''<span class="card-restriction">Sólo Nave de persecución clase Lancero</span>%LINEBREAK%Después de que efectúes un ataque que impacte, si el defensor está dentro de tu arco de fuego móvil y a alcance 1-2, puedes asignarle 1 ficha de Campo de tracción.'''
        # Wave X
        '''Sabine's Masterpiece''':
            ship: "Caza TIE"
            name: "Obra maestra de Sabine"
            text: '''<span class="card-restriction">Sólo Caza TIE.</span>%REBELONLY%%LINEBREAK%Tu barra de mejoras gana los iconos %CREW% y %ILLICIT%.'''
        '''Kylo Ren's Shuttle''':
            ship: "Lanzadera clase Ípsilon"
            name: "Lanzadera de Kylo Ren"
            text: '''<span class="card-restriction">Sólo Lanzadera clase Ípsilon.</span>%LINEBREAK%Al final de la fase de Combate, elige una nave enemiga que tengas a alcance 1-2 y no esté bajo tensión. El jugador que la controla debe asignarle una ficha de Tensión o asignar una ficha de Tensión a otra d esus naves que esté situada a alcance 1-2 de ti.'''
        '''Pivot Wing''':
            name: "Ala pivotante"
            ship: "Ala-U"
            text: '''<span class="card-restriction">Sólo Ala-U.</span> %DUALCARD%%LINEBREAK%<strong>Cara A (Ataque):</strong> Tu Agilidad se incrementa en 1.%LINEBREAK%Después de que ejecutes una maniobra, puedes darle la vuelta a esta carta.%LINEBREAK%<strong>Cara B (Aterrizaje):</strong> Cuando reveles una maniobra (%STOP% 0), puedes cambiar la orientación de tu nave en 180&deg;.%LINEBREAK%Después de que ejecutes una maniobra, puedes darle la vuelta a esta carta.'''
        '''Adaptive Ailerons''':
            name: "Alerones adaptativos"
            ship: "Fustigador TIE"
            text: '''<span class="card-restriction">Sólo Fustigador TIE.</span>%LINEBREAK%Inmediatamente antes de revelar tu selector de maniobras, si no estás bajo tensión, debes ejecutar una manibora blanca (%BANKLEFT% 1), (%STRAIGHT% 1) o (%BANKRIGHT% 1).'''
        # C-ROC
        '''Merchant One''':
            name: "Mercader Uno"
            ship: "Crucero C-ROC" 
            text: '''<span class="card-restriction">Sólo C-ROC Cruiser.</span>%LINEBREAK%Tu barra de mejoras gana 1 icono %CREW% adicional y 1 icono %TEAM% adicional y pierde 1 icono %CARGO%.'''
        '''"Light Scyk" Interceptor''':
            name: 'Interceptor "Scyk Ligero"'
            ship: "Interceptor M3-A"
            text: '''<span class="card-restriction">Sólo Interceptor M3-A.</span>%LINEBREAK%Toda slas cartas de Daño que te inflijan se te asignan boca arriba. Puedes ejecutar todas las maniobras de inclinación (%BANKLEFT% o %BANKRIGHT%) como maniobras verdes. No puedes equiparte con mejoras de Modificación.s.'''
        '''Insatiable Worrt''':
            name: "Worrt insaciable"
            ship: "Crucero C-ROC"            
            text: '''Después de que realices la acción de recuperación, ganas 3 de energía.'''
        '''Broken Horn''':
            name: "Cuerno Roto"
            ship: "Crucero C-ROC"
            text: '''Cuando te defiendas, si tienes asignada una ficha de Refuerzo, puedes añadir 1 resultado %EVADE% adicional.  Si lo haces, tras defenderte, descarta tu ficha de Refuerzo.'''
        'Havoc':
            name: "Estrago"
            ship: "Bombardero Scurrg H-6"
            text: '''<span class="card-restriction">Sólo Bombarder Scurrg H-6.</span>%LINEBREAK%Tu barra de mejoras gana los iconos %SYSTEM% y %SALVAGEDASTROMECH% y pierde el icono %CREW%.%LINEBREAK%No puedes equiparte con cartas de mejora %SALVAGEDASTROMECH% que no sean únicas.'''
        'Vaksai':
            ship: "Caza Kihraxz"
            text: '''<span class="card-restriction">Sólo Caza Kihraxz.</span>%LINEBREAK%El coste en puntos de escuadrón de cada una de tus mejoras equipadas se reduce en 1 (hast aun mínimo de 0).%LINEBREAK%Puedes equipar un máximo de 3 mejoras distintas de Modificación.'''
        'StarViper Mk. II':
            name: "Víbora Estelar modelo II"
            ship: "Víbora Estelar"
            text: '''<span class="card-restriction">Sólo Víbora Estelar.</span>%LINEBREAK%Puedes equipar un máximo de 2 mejoras distintas de Título.%LINEBREAK%Cuando realices una acción de tonel volado <strong>debes</strong> utilizar la plantilla (%BANKLEFT% 1) o (%BANKRIGHT% 1) en vez de la plantilla (%STRAIGHT% 1).'''
        'XG-1 Assault Configuration':
            ship: "Ala Estelar clase Alfa"
            name: "Configuración de asalto Xg-1"
            text: '''<span class="card-restriction">Sólo Ala Estelar clase Alfa.</span>%LINEBREAK%Tu barra de mejoras gana 2 iconos %CANNON%.%LINEBREAK%Puedes efectuar ataques con sistemas de armamento secundario %CANNON% con un coste igual o inferior a 2 puntos de escuadrón incluso aunque tengas asignada una ficha de Armas bloqueadas.'''
        'Enforcer':
            name: "Brazo Ejecutor"
            ship: "Caza M12-L Kimogila"
            text: '''<span class="card-restriction">Sólo Caza M12-L Kimogila.</span>%LINEBREAK%Después de que te defiendas, si el atacante está situado dentro de tu arco de fuego centrado, recibe 1 fciha de Tensión.'''
        'Ghost (Phantom II)':
            name: "Espíritu (Fantasma II)"
            text: '''<span class="card-restriction">Sólo VCX-100.</span>%LINEBREAK%Equipa la carta de Título <em>Fantasma II</em> a una Lanzadera clase <em>Sheathipede</em> aliada y acóplala a esta nave.%LINEBREAK%Después de que ejecutes una maniobra, puedes desplegar la nave que tienes acoplada desde los salientes de la parte trasera de tu peana.'''
        'Phantom II':
            name: "Fantasma II"
            ship: "Lanzadera clase Sheathipede"
            text: '''Mientras estés acoplado, el <em>Espíritu</em> puede efectuar ataques con su armamento principal desde su arco de fuego especial.%LINEBREAK%Mientras estés acoplado, al final de la fase de Activación, el <em>Espíritu</em> puede efectuar una acción gratuita de coordinación.'''
        'First Order Vanguard':
            name: "Vanguardia de la Primera Orden"
            ship: "Silenciador TIE"
            text: '''<span class="card-restriction">Sólo Silenciador TIE.</span>%LINEBREAK%Cuando ataques, si el defensor es la única nave que tienes dentro de tu arco de fuego a alcance 1-3, puedes volver a tirar 1 dado de ataque.%LINEBREAK%Cuando te defiendas, puedes descartar esta carta para volver a tirar todos tus dados de defensa.'''
        'Os-1 Arsenal Loadout':
            name: "Configuración de Arsenal Os-1"
            ship: "Ala Estelar clase Alfa"
            text: '''<span class="card-restriction">Sólo Ala Estelar clase Alfa.</span>%LINEBREAK%Tu barra de mejoras gana los iconos %TORPEDO% y %MISSILE%.%LINEBREAK%Puedes efectuar ataques con sistemas de armamento secundario %TORPEDO% y %MISSILE% contra naves que hayas fijado como blanco incluso aunque tengas asignada una ficha de Armas bloqueadas.'''
        'Crossfire Formation':
            name: "Formación de fuego cruzado"
            ship: "Bombardero B/SF-17"
            text: '''<span class="card-restriction">Sólo bombardero B/SF-17.</span>%LINEBREAK%Cuando te defiendas, si hay por lo menos 1 otra nave aliada de la Reistencia situada a alcance 1-2 del atacante, puedes añadir 1 resultado %FOCUS% a tu tirada.'''
        'Advanced Ailerons':
            name: "Alerones avanzados"
            ship: "Segador TIE"
            text: '''<span class="card-restriction">Sólo Segador TIE.</span>%LINEBREAK%Tus maniobras (%BANKLEFT%3) y (%BANKRIGHT%3) se consideran blancas.%LINEBREAK% Inmediatamente después de que reveles tu selector, si no estás bajo tensión, debes ejecutar una maniobra (%BANKLEFT%1), (%STRAIGHT%1) o (%BANKRIGHT%1) de color blanco.'''

    condition_translations =
        '''I'll Show You the Dark Side''':
            name: "Yo te mostraré el Lado Oscuro"
            text: '''Cuando esta carta es asignada, si no está ya en juego, el jugador que la ha asignado busca en el mazo de Daño 1 carta de Daño que tenga el atributo <strong><em>Piloto</em></strong> y puede colocarla boca arriba sobre esta carta de Estado. Luego vuelve a barajar el mazo de Daño.%LINEBREAKCuando sufras daño crítico durante un ataque, en vez de eso recibes la carta de Daño boca arriba que has elegido.%LINEBREAK%Cuando no haya ninguna carta de Daño sobre esta carta de Estado, retírala.'''
        'Suppressive Fire':
            name: "Fuego de supresión"
            text: '''Cuando ataques a una nave que no sea el "Capitán Rex", tira 1 dado de ataque menos.%LINEBREAK% Cuando declares un ataque que tenga como blanco al "Capitán Rex" o cuando el "Capitán Rex" sea destruido, retira esta carta.%LINEBREAK%Al final de la fase de Combate, si el "Capitán Rex" no ha efectuado un ataque en esta fase, retira esta carta.'''
        'Fanatical Devotion':
            name: "Lealtad Fanática"
            text: '''Cuando te defiendas, no pudes gastar fichas de Concentración.%LINEBREAK%Cuando ataques, si gastas una ficha de Concentración parar cambiar todos los resultados %FOCUS% por resultados %HIT%, deja aparte el primer resultado %FOCUS% que has cambiado. El resultado %HIT% que has dejado aparte no puede ser anulado por dados de defensa, pero el defensor puede anular resultados %CRIT% antes que él.%LINEBREAK%Durante la fase Final, retira esta carta.'''
        'A Debt to Pay':
            name: "Una deuda por saldar"
            text: '''Cuando ataques a una nave que tiene la carta de Mejora "Una cuenta pendiente", puedes cambiar 1 resultado %FOCUS% por un resultado %CRIT%.'''
        'Shadowed':
            name: "Vigilado" 
            text: '''Se considera que "Thweek" tiene el mismo valor de Habilidad que tu piloto tenía después de la preparación de la partida.%LINEBREAK%El valor de Habilidad de "Thweek" no cambia si el valor de Habilidad de tu piloto se modifica o eres destruido.'''
        'Mimicked':
            name: "Imitado"
            text: '''Se considera que "Thweek" tiene tu misma capacidad especial de piloto.%LINEBREAK%"Thweek" no puede utilizar tu capacidad especial de piloto para asignar una carta de Estado.%LINEBREAK%"Thweek" no pierde tu capacidad especial de piloto si eres destruido.'''
        'Harpooned!':
            name: "¡Arponeado!"
            text: '''Cuando seas impactado por un ataque, si hay al menos 1 resultad %CRIT% sin anular, toda otra nave que tengas a alcance 1 sufre 1 punto de daño. Luego descarta esta carta y recibe 1 carta de Daño boca abajo.%LINEBREAK%Cuando seas destruido, toda nave que tengas a alcance 1 sufre 1 punto de daño.%LINEBREAK%<strong>Acción:</strong> Descarta esta carta. Luego tira 1 dado de ataque. Si sacas %HIT% o %CRIT%, sufres 1 punto de daño.'''
        'Rattled':
            name: "Estremecido"
            text: '''Cuando sufras daño normal o daño crítico causado por una bomba, sufres 1 punto adicional de daño crítico. Luego, retira esta carta%LINEBREAK%<strong>Acción:</strong> Tira 1 dado de ataque. Si sacas %FOCUS% o %HIT%, retira esta carta.'''
        'Scrambled':
            name: "Sistemas interferidos"
            text: '''Cuando ataques a una nave que tengas a alcance 1 y esté equipada con la mejora "Interferidos de sistemas de puntería", no puedes modificar tus dados de ataque.%LINEBREAK%Al final de la fase de Combate, retira esta carta.'''
        'Optimized Prototype':
            name: "Prototipo optimizado"
            text: '''Tu valor de Escudos se incrementa en 1.%LINEBREAK%Una vez por ronda, cuando efectúes un ataque con tu armamento principal, puedes gastar 1 resultado de dado para retirar 1 ficha de Escudos del defensor.%LINEBREAK%Después de que efectúes un ataque con tu armamento principal, una nave aliada que tengas a alcance 1-2 y esté equipada con la carta de Mejora "Director Krennic" puede fijar como blanco al defensor.'''

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations, condition_translations
