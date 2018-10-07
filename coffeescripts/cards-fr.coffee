###
    X-Wing Squad Builder 2.0
    Stephen Kim <raithos@gmail.com>
    https://raithos.github.io

    French translation by
    - Clément Bourgoin <c@iwzr.fr> https://github.com/iwazaru
###

exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.fr = 'Français'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations['Français'] =
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
        "Force": "Pouvoir de la Force"
        "Bomb": "Bombe"
        "Cannon": "Canon"
        "Crew": "Equipage"
        "Missile": "Missile"
        "Sensor": "Senseur"
        "Torpedo": "Torpille"
        "Turret": "Tourelle"
        "Hardpoint": "Point d'attache"
        "Illicit": "Illégal"
        "Configuration": "Configuration"
        "Talent": "Talent"
        "Modification": "Modification"
        "Gunner": "Artilleur"
        "Device": "Engin"
        "Tech": "Technologie"
        "Title": "Titre"
    sources: # needed?
        "Second Edition Core Set": "Boîte de base 2.0"
        "Rebel Alliance Conversion Kit": "Kit de Conversion Alliance Rebelle"
        "Galactic Empire Conversion Kit": "Kit de Conversion Empire Galactique"
        "Scum and Villainy Conversion Kit": "Kit de Conversion Racailles et Scélérats"
        "T-65 X-Wing Expansion Pack": "Paquet d'extension T-65 X-Wing"
        "BTL-A4 Y-Wing Expansion Pack": "Paquet d'extension BTL-A4 Y-Wing"
        "TIE/ln Fighter Expansion Pack": "Paquet d'extension Chasseur TIE/ln"
        "TIE Advanced x1 Expansion Pack": "Paquet d'extension TIE Advanced x1"
        "Slave I Expansion Pack": "Paquet d'extension Slave I"
        "Fang Fighter Expansion Pack": "Paquet d'extension Chasseur Fang"
        "Lando's Millennium Falcon Expansion Pack": "Paquet d'extension Faucon Millenium de Lando"
        "Saw's Renegades Expansion Pack": "Paquet d'extension Les Renégats de saw"
        "TIE Reaper Expansion Pack": "Paquet d'extension TIE Reaper"
    ui:
        shipSelectorPlaceholder: "Choisissez un vaisseau"
        pilotSelectorPlaceholder: "Choisissez un pilot"
        upgradePlaceholder: (translator, language, slot) ->
            "#{translator language, 'slot', slot} (sans amélioration)"
        modificationPlaceholder: "Pas de modification"
        titlePlaceholder: "Pas de titre"
        upgradeHeader: (translator, language, slot) ->
            "#{translator language, 'slot', slot}"
        unreleased: "inédit"
        epic: "épique"
        limited: "limité"
    byCSSSelector:
        # Warnings
        '.unreleased-content-used .translated': 'Cet escadron utilise du contenu inédit !'
        '.collection-invalid .translated': 'Vous ne pouvez pas ajouter cette liste à votre collection !'
        # Type selector
        '.game-type-selector option[value="standard"]': 'Standard'
        '.game-type-selector option[value="second_edition"]': 'Seconde Édition'
        '.game-type-selector option[value="custom"]': 'Personnalisé'
        # Card browser
        '.select2-choice' : '<span>Type (par nom)</span><abbr class="select2-search-choice-close"></abbr>   <div><b></b></div></a>'  # default-option
        '.xwing-card-browser option[value="name"]': 'Nom'
        '.xwing-card-browser option[value="source"]': 'Source'
        '.xwing-card-browser option[value="type-by-points"]': 'Type (par points)'
        '.xwing-card-browser option[value="type-by-name"]': 'Type (par nom)'
        '.xwing-card-browser .translate.select-a-card': 'Sélectionnez une carte dans la liste à gauche.'
        '.xwing-card-browser .translate.sort-cards-by': 'Trier les cartes par'
        # Info well
        '.info-well .info-ship td.info-header': 'Vaisseau'
        '.info-well .info-skill td.info-header': 'Initiative'
        '.info-well .info-actions td.info-header': 'Actions'
        '.info-well .info-upgrades td.info-header': 'Améliorations'
        '.info-well .info-range td.info-header': 'Portée'
        # Squadron edit buttons
        '.clear-squad' : 'Nouvel escadron'
        '.save-list' : 'Enregistrer'
        '.save-list-as' : 'Enregistrer sous…'
        '.delete-list' : 'Supprimer'
        '.backend-list-my-squads' : 'Charger un escadron'
        '.view-as-text' : '<span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Imprimer/</span>Exporter'
        '.collection': '<i class="fa fa-folder-open hidden-phone hidden-tabler"></i>&nbsp;Votre collection</a>'
        '.randomize' : 'Aléatoire !'
        '.randomize-options' : 'Options…'
        '.notes-container > span' : 'Notes sur l\'escadron'
        # Print/View modal
        '.bbcode-list' : 'Copiez le BBCode ci-dessous et collez-le dans votre post.<textarea></textarea><button class="btn btn-copy">Copiez</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Copiez</button>'
        '.vertical-space-checkbox' : """Ajouter de l'espace pour les cartes d'amélioration et de dégâts lors de l'impression <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Imprimer en couleur <input type="checkbox" class="toggle-color-print" checked="checked" />"""
        '.print-list' : '<i class="fa fa-print"></i>&nbsp;Imprimer'
        # Randomizer options
        '.do-randomize' : 'Générer aléatoirement !'
        # Top tab bar
        '#browserTab' : 'Cartes'
        '#aboutTab' : 'À propos'
        # Obstacles
        '.choose-obstacles' : 'Choisir des obstacles'
        '.choose-obstacles-description' : 'Choisir jusqu\'à trois obstacles à inclure dans le lien permanent à utiliser dans des programmes externes. (Cette fonctionnalité est en beta ; l\'affichage des obstacles sélectionnés dans l\'impression n\'est pas encore supporté.)'
        '.coreasteroid0-select' : 'Core Asteroid 0'
        '.coreasteroid1-select' : 'Core Asteroid 1'
        '.coreasteroid2-select' : 'Core Asteroid 2'
        '.coreasteroid3-select' : 'Core Asteroid 3'
        '.coreasteroid4-select' : 'Core Asteroid 4'
        '.coreasteroid5-select' : 'Core Asteroid 5'
        '.yt2400debris0-select' : 'YT2400 Debris 0'
        '.yt2400debris1-select' : 'YT2400 Debris 1'
        '.yt2400debris2-select' : 'YT2400 Debris 2'
        '.vt49decimatordebris0-select' : 'VT49 Debris 0'
        '.vt49decimatordebris1-select' : 'VT49 Debris 1'
        '.vt49decimatordebris2-select' : 'VT49 Debris 2'
        '.core2asteroid0-select' : 'Force Awakens Asteroid 0'
        '.core2asteroid1-select' : 'Force Awakens Asteroid 1'
        '.core2asteroid2-select' : 'Force Awakens Asteroid 2'
        '.core2asteroid3-select' : 'Force Awakens Asteroid 3'
        '.core2asteroid4-select' : 'Force Awakens Asteroid 4'
        '.core2asteroid5-select' : 'Force Awakens Asteroid 5'
        # Import/Export
        '.from-xws' : 'Importer depuis XWS (beta)'
        '.to-xws' : 'Exporter vers XWS (beta)'

    singular:
        'pilots': 'Pilote'
        'modifications': 'Modification'
        'titles': 'Titres'
    types:
        'Pilot': 'Pilote'
        'Modification': 'Modification'
        'Title': 'Titre'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders['Français'] = () ->
    exportObj.cardLanguage = 'Français'

    # Assumes cards-common has been loaded
    basic_cards = exportObj.basicCardData()
    exportObj.canonicalizeShipNames basic_cards

    # English names are loaded by default, so no update is needed
    exportObj.ships = basic_cards.ships

    exportObj.renameShip """YT-1300""", """Cargo Léger YT-1300 modifié"""
    exportObj.renameShip """StarViper""", """StarViper"""
    exportObj.renameShip """Scurrg H-6 Bomber""", """Bombardier Scurrg H-6"""
    exportObj.renameShip """YT-2400""", """Cargo YT-2400"""
    exportObj.renameShip """Auzituck Gunship""", """Canonnière Auzituck"""
    exportObj.renameShip """Kihraxz Fighter""", """Chasseur Kihraxz"""
    exportObj.renameShip """Sheathipede-Class Shuttle""", """Navette de classe Sheathipede"""
    exportObj.renameShip """Quadjumper""", """Quad jumper"""
    exportObj.renameShip """Firespray-31""", """Vaisseau de Patrouille de classe Firespray"""
    exportObj.renameShip """TIE Fighter""", """Chasseur TIE/ln"""
    exportObj.renameShip """Y-Wing""", """Y-wing BTL-A4"""
    exportObj.renameShip """TIE Advanced""", """TIE Advanced x1"""
    exportObj.renameShip """Alpha-Class Star Wing""", """Star Wing de classe Alpha"""
    exportObj.renameShip """U-Wing""", """U-wing"""
    exportObj.renameShip """TIE Striker""", """TIE Striker"""
    exportObj.renameShip """B-Wing""", """B-wing"""
    exportObj.renameShip """TIE Defender""", """Défenseur TIE"""
    exportObj.renameShip """TIE Bomber""", """Bombardier TIE"""
    exportObj.renameShip """TIE Punisher""", """TIE Punisher"""
    exportObj.renameShip """Aggressor""", """TIE Aggressor"""
    exportObj.renameShip """G-1A Starfighter""", """Chasseur G-1A"""
    exportObj.renameShip """VCX-100""", """VCX-100"""
    exportObj.renameShip """YV-666""", """YV-666"""
    exportObj.renameShip """TIE Advanced Prototype""", """TIE Advanced Prototype"""
    exportObj.renameShip """Lambda-Class Shuttle""", """Navette de classe Lambda"""
    exportObj.renameShip """TIE Phantom""", """TIE Fantôme"""
    exportObj.renameShip """VT-49 Decimator""", """Décimateur VT-49"""
    exportObj.renameShip """TIE Aggressor""", """TIE Agressor"""
    exportObj.renameShip """K-Wing""", """K-wing"""
    exportObj.renameShip """ARC-170""", """ARC-170"""
    exportObj.renameShip """Attack Shuttle""", """Navette d'Attaque"""
    exportObj.renameShip """X-Wing""", """X-wing T-65"""
    exportObj.renameShip """HWK-290""", """HWK-290"""
    exportObj.renameShip """A-Wing""", """A-wing"""
    exportObj.renameShip """Fang Fighter""", """Chasseur Fang"""
    exportObj.renameShip """Z-95 Headhunter""", """Chasseur de Têtes Z-95"""
    exportObj.renameShip """M12-L Kimogila Fighter""", """Chasseur M12-L Kimogila"""
    exportObj.renameShip """E-Wing""", """E-wing"""
    exportObj.renameShip """TIE Interceptor""", """Intercepteur TIE"""
    exportObj.renameShip """Lancer-Class Pursuit Craft""", """Vaisseau de poursuite de classe Lancer"""
    exportObj.renameShip """TIE Reaper""", """TIE Reaper"""
    exportObj.renameShip """JumpMaster 5000""", """JumpMaster 5000"""
    exportObj.renameShip """M3-A Interceptor""", """Intercepteur M3-A"""
    exportObj.renameShip """Scavenged YT-1300""", """Cargo léger YT-1300 personnalisé"""
    exportObj.renameShip """Escape Craft""", """Vaisseau de secours"""


    pilot_translations =
        "Academy Pilot":
           display_name: """Pilote de l'Académie"""
           text: """<i class = flavor_text>Produit en masse, rapide et maniable, le TIE/ln développé par Sienar Fleet Systems est le principal chasseur de l'Empire Galactique.</i>"""
        "Alpha Squadron Pilot":
           display_name: """Pilote de l'Escadron Alpha"""
           text: """<i class = flavor_text>Sienar Fleet Systems a doté les ailes de l'intercepteur TIE de quatre canons laser qui lui confèrent une puissance de feu bien supérieure à celle des précédents modèles.</i>%LINEBREAK%<strong>Autopropulseurs :</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou %BOOST% rouge."""
        "Bandit Squadron Pilot":
           display_name: """Pilote de l'Escadron Bandit"""
           text: """<i class = flavor_text>Le Chasseur de Têtes Z-95 a été la principale source d'inspiration d'Incom Corporation pour la conception du X-wing T-65. Bien que considéré comme obsolète, le Chasseur de Têtes Z-95 reste un appareil léger polyvalent et robuste.</i>"""
        "Baron of the Empire":
           display_name: """Baron de l'Empire"""
           text: """<i class = flavor_text>Le TIE Advanced v1 de Sienar Fleet Systems est un chasseur révolutionnaire, pourvu de moteurs améliorés, d'un lance-missiles et d'ailes mobiles.</i>"""
        "Binayre Pirate":
           display_name: """Pirate Binayre"""
           text: """<i class = flavor_text>Le groupe de contrebandiers et de pirates de Kath Scarlet, qui agit depuis les Mondes Doubles de Talus et Tralus, n'a pas la réputation d'être fiable ni même honorable. Et ce ne sont pas les autres criminels qui diront le contraire…</i>"""
        "Black Squadron Ace":
           display_name: """As de l'Escadron Noir"""
           text: """<i class = flavor_text>Au cours de la Bataille de Yavin, les pilotes d'élite des chasseurs TIE/ln de l'Escadron Noir escortèrent Dark Vador lors d'une attaque dévastatrice contre les forces Rebelles.</i>"""
        "Black Squadron Scout":
           display_name: """Éclaireur de l'Escadron Noir"""
           text: """<i class = flavor_text>Ce vaisseau atmosphérique lourdement armé se sert de ses ailes mobiles pour gagner en vitesse et manœuvrabilité.</i>%LINEBREAK%<strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n'êtes pas stressé, vous devez exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] ou [1&nbsp;%BANKRIGHT%]."""
        "Black Sun Ace":
           display_name: """As du Soleil Noir"""
           text: """<i class = flavor_text>Le chasseur d'assaut Kihraxz fut développé expressément pour l'organisation criminelle du Soleil Noir, dont les as, très généreusement payés, exigeaient des appareils agiles et puissants, à la hauteur de leur talent.</i>"""
        "Black Sun Assassin":
           display_name: """Assassin du Soleil Noir"""
           text: """<i class = flavor_text>Abattre sa cible au coin d'une ruelle sombre ou ajouter une goutte de poison à une boisson sont des méthodes courantes d'assassinat, mais une navette en feu s'écrasant au sol fait passer un tout autre message. </i>%LINEBREAK%<strong>Micropropulseurs :</strong> tant que vous effectuez un tonneau, vous devez utiliser le gabarit %BANKLEFT% ou %BANKRIGHT% à la place du gabarit %STRAIGHT%."""
        "Black Sun Enforcer":
           display_name: """Homme de Main du Soleil Noir"""
           text: """<i class = flavor_text>Le prince Xizor en personne collabora avec MandalMotors pour concevoir la plateforme d'attaque de classe StarViper, l'un des plus redoutables chasseurs de la galaxie. </i>%LINEBREAK%<strong>Micropropulseurs :</strong> tant que vous effectuez un tonneau, vous devez utiliser le gabarit %BANKLEFT% ou %BANKRIGHT% à la place du gabarit %STRAIGHT%."""
        "Black Sun Soldier":
           display_name: """Soldat du Soleil Noir"""
           text: """<i class = flavor_text>La vaste et influente organisation criminelle du Soleil Noir a toujours besoin de pilotes de talent, pourvu qu'ils ne soient pas trop regardants sur l'origine de leur paye.</i>"""
        "Blade Squadron Veteran":
           display_name: """Vétéran de l'Escadron Blade"""
           text: """<i class = flavor_text>Un système de stabilisation gyroscopique unique enveloppe le cockpit du B-wing et assure la stabilité du pilote.</i>"""
        "Blue Squadron Escort":
           display_name: """Escorte de l'Escadron Bleu"""
           text: """<i class = flavor_text>Conçu par Incom Corporation, le X-wing T-65 compta rapidement parmi les appareils militaires les plus efficaces de la galaxie et fut d'un réel secours pour la Rébellion.</i>"""
        "Blue Squadron Pilot":
           display_name: """Pilote de l'Escadron Bleu"""
           text: """<i class = flavor_text>Grâce à son impressionnant panel d'armes lourdes et à ses boucliers très résistants, le B-wing s'est imposé comme le plus redoutable chasseur d'assaut de l'Alliance Rebelle.</i>"""
        "Blue Squadron Scout":
           display_name: """Éclaireur de l'Escadron Bleu"""
           text: """<i class = flavor_text>Utilisé pour déployer des troupes sous couvert de l'obscurité ou sur les théâtres d'opérations les plus dangereux, le U-wing UT-60D rendit de fiers services à l'Alliance Rebelle qui avait désespérément besoin de transports résistants.</i>"""
        "Bounty Hunter":
           display_name: """Chasseur de Primes"""
           text: """<i class = flavor_text>La sinistre réputation du Patrouilleur de Classe Firespray a pour origine les chasseurs de primes Jango Fett et Boba Fett, qui modifièrent leur appareil avec d'innombrables armes terrifiantes.</i>"""
        "Cartel Executioner":
           display_name: """Exécuteur du Cartel"""
           text: """<i class = flavor_text>De nombreux pilotes chevronnés au service des kajidics Hutt et d'autres organisations criminelles utilisent le chasseur M12-L Kimogila à cause de sa puissance de feu et de la peur qu'il inspire.</i>%LINEBREAK%<strong>Dans le Mille :</strong> tant que vous effectuez une attaque, si le défenseur est dans votre %BULLSEYEARC%, les dés de défense ne peuvent pas être modifiés en utilisant des marqueurs verts."""
        "Cartel Marauder":
           display_name: """Marauder du Cartel"""
           text: """<i class = flavor_text>Le polyvalent Kihraxz fut inspiré du très populaire chasseur X-wing d'Incom, mais toutes sortes d'options permettaient de le personnaliser à loisir. </i>"""
        "Cartel Spacer":
           display_name: """Astropilote du Cartel"""
           text: """<i class = flavor_text>L'Intercepteur « Scyk » M3-A de MandalMotors est acheté en grande quantité par le Cartel Hutt et les contrebandiers Car'das en raison de son prix bas et de ses nombreuses possibilités de personnalisation. </i>%LINEBREAK%<strong>Emplacement d'Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Cavern Angels Zealot":
           display_name: """Extrémiste Anges des Cavernes"""
           text: """<i class = flavor_text>Contrairement à la plupart des cellules Rebelles, les Partisans de Saw Gerrera utilisèrent des méthodes jugées trop radicales pour lutter contre l'Empire Galactique, au cours des sanglants combats qui ravagèrent Géonosis et Jedha.</i>"""
        "Contracted Scout":
           display_name: """Éclaireur Sous Contrat"""
           text: """<i class = flavor_text>Conçu pour les missions de reconnaissance de long cours et le calcul de nouveaux itinéraires hyperspatiaux, le JumpMaster 5000, pourvu d'un armement léger, est souvent réaménagé par ses propriétaires.</i>"""
        "Crymorah Goon":
           display_name: """Sbire du Crymorah"""
           text: """<i class = flavor_text>Bien qu'il ne soit pas toujours très maniable, le Y-wing bénéficie d'une solide coque, de boucliers substantiels et de canons montés sur une tourelle qui en font un excellent appareil de patrouille.</i>"""
        "Cutlass Squadron Pilot":
           display_name: """Pilote de l'Escadron Cutlass"""
           text: """<i class = flavor_text>Le TIE Punisher a été conçu après le bombardier TIE, qui connut un grand succès. Il est pourvu de boucliers, d'une seconde trappe de largage et de trois nacelles d'artillerie supplémentaires, toutes équipées de moteurs ioniques jumelés.</i>"""
        "Delta Squadron Pilot":
           display_name: """Pilote de l'Escadron Delta"""
           text: """<i class = flavor_text>En plus de ses six canons laser et de ses lance-missiles, le redoutable défenseur TIE est équipé d'écrans déflecteurs et d'un hyperdrive.</i>%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action %EVADE%."""
        "Freighter Captain":
           display_name: """Capitaine de Cargo"""
           text: """<i class = flavor_text>De nombreux astropilotes gagnent leur vie en parcourant la Bordure Extérieure, un secteur où la différence entre contrebandier et marchand honnête est souvent ténue. Aux frontières de la civilisation, les clients sont beaucoup moins exigeants sur l'origine des marchandises, tant que les prix sont suffisamment attractifs.</i>"""
        "Gamma Squadron Ace":
           display_name: """As de l'Escadron Gamma"""
           text: """<i class = flavor_text>Bien qu'il ne soit pas aussi maniable et rapide qu'un TIE/ln, le Bombardier TIE a une puissance de feu suffisante pour détruire à peu près n'importe quelle cible. </i>%LINEBREAK%<strong>Bombardier Agile :</strong> si vous devez utiliser un gabarit %STRAIGHT% pour larguer un engin, vous pouvez utiliser un gabarit %BANKLEFT% ou %BANKRIGHT% de même vitesse à la place."""
        "Gand Findsman":
           display_name: """Trouveur Gand"""
           text: """<i class = flavor_text>Les légendaires Trouveurs de Gand vouaient un véritable culte aux brumes qui recouvraient leur planète natale et se servaient de signes, d'augures et de rituels mystiques pour traquer leurs proies.</i>"""
        "Gold Squadron Veteran":
           display_name: """Vétéran de l'Escadron Or"""
           text: """<i class = flavor_text>Sous le commandement de Jon «Dutch» Vander, l'Escadron Or a joué un rôle déterminant au cours des Batailles de Scarif et de Yavin.</i>"""
        "Gray Squadron Bomber":
           display_name: """Bombardier de l'Escadron Gris"""
           text: """<i class = flavor_text>Grâce à sa vitesse, sa robustesse et son armement lourd, le Y-wing resta un élément essentiel de la flotte Rebelle longtemps après sa mise en retraite par l'Empire Galactique.</i>"""
        "Green Squadron Pilot":
           display_name: """Pilote de l'Escadron Vert"""
           text: """<i class = flavor_text>À cause de ses commandes sensibles et de son extrême manœuvrabilité, seuls les meilleurs pilotes﻿ osent prendre place dans le cockpit d'un A-wing.</i>%LINEBREAK%<strong>Propulseurs Vectoriels :</strong> après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge."""
        "Hired Gun":
           display_name: """ Soudard"""
           text: """<i class = flavor_text>La simple évocation de crédits Impériaux peut attirer toutes sortes d'individus totalement amoraux dans votre camp.</i>"""
        "Imdaar Test Pilot":
           display_name: """Pilote d'Essai Imdaar"""
           text: """<i class = flavor_text>Conçu dans un centre de recherches secret sur Imdaar Alpha, le TIE Fantôme concrétise ce qui semblait impossible : un petit chasseur furtif équipé d'un système d'occultation avancé.</i>%LINEBREAK%<strong>Réseau de Stygium :</strong> après vous être désocculté, vous pouvez effectuer une action %EVADE%. Au début de la phase de dénouement, vous pouvez dépenser 1 marqueur d'évasion pour gagner 1 marqueur d'occultation. """
        "Inquisitor":
           display_name: """Inquisiteur"""
           text: """<i class = flavor_text>Les redoutables Inquisiteurs bénéficient d'une grande autonomie et ont accès aux technologies les plus récentes de l'Empire, comme le prototype TIE Advanced v1.</i>"""
        "Jakku Gunrunner":
           display_name: """Trafiquant d'Armes de Jakku"""
           text: """<i class = flavor_text>Le Remorqueur Spatial de Transfert Quadrimoteur, surnommé « Quad jumper », était aussi manœuvrable sous atmosphère que dans l'espace, ce qui le rendait extrêmement populaire auprès des contrebandiers et des explorateurs. </i>%LINEBREAK%<strong>Dispositif Tracteur de Remorqueur Spatial :</strong> <strong>Action :</strong> choisissez un vaisseau dans votre %FRONTARC% à portée 1. Il gagne 1 marqueur de rayon tracteur, ou 2 marqueurs de rayon tracteur s'il est dans votre %BULLSEYEARC% à portée 1."""
        "Kashyyyk Defender":
           display_name: """Défenseur de Kashyyyk"""
           text: """<i class = flavor_text>Équipée de trois canons laser jumelés Sureggi longue portée, la canonnière Auzituck donnait du fil à retordre aux esclavagistes dans le système de Kashyyyk.</i>"""
        "Knave Squadron Escort":
           display_name: """Escorte de l'Escadron Knave"""
           text: """<i class = flavor_text>Conçu pour combiner les meilleurs atouts de l'A-wing et du X-wing, l'E-wing dispose d'une puissance de feu, d'une vitesse et d'une manœuvrabilité supérieures.</i>%LINEBREAK%<strong>Scanners Expérimentaux :</strong> vous pouvez verrouiller une cible au-delà de la portée 3. Vous ne pouvez pas verrouiller de cible à portée 1."""
        "Lok Revenant":
           display_name: """Revenant de Lok"""
           text: """<i class = flavor_text>Le Collectif de Conception Nubien créa le Bombardier Scurrg H-6 en songeant avant tout à sa polyvalence au combat, l'équipant de puissants boucliers et d'un large éventail d'armes destructrices.</i>"""
        "Lothal Rebel":
           display_name: """Rebelle de Lothal"""
           text: """<i class = flavor_text>Autre réussite commerciale de la Corporation Technique Corellienne, le cargo VCX-100 est plus gros que les légendaires appareils de la série YT, et propose un espace de vie plus volumineux et de meilleures possibilités de personnalisation.</i>%LINEBREAK%<strong>Artillerie de Poupe :</strong> tant que vous avez un vaisseau arrimé, vous bénéficiez d'une arme principale %REARARC% avec une valeur d'attaque égale à celle de l'attaque principale %FRONTARC% du vaisseau arrimé."""
        "Nu Squadron Pilot":
           display_name: """Pilote de l'Escadron Nu"""
           text: """<i class = flavor_text>D'une conception similaire aux autres vaisseaux développés par Cygnus Spaceworks, le Star Wing de classe Alpha est un appareil polyvalent attribué aux unités spécialisées de la Marine Impériale qui ont besoin d'un chasseur facilement adaptable pour des missions variées.</i>"""
        "Obsidian Squadron Pilot":
           display_name: """Pilote de l'Escadron Obsidian"""
           text: """<i class = flavor_text>Le moteur ionique jumelé des chasseurs TIE a été conçu pour la vitesse, ce qui classe ces derniers parmi les vaisseaux les plus maniables jamais produits.</i>"""
        "Omicron Group Pilot":
           display_name: """Pilote du Groupe Omicron"""
           text: """<i class = flavor_text>Appareil utilitaire léger, la navette de classe Lambda, reconnaissable à sa triple aile caractéristique, joue un rôle de premier plan dans la Marine Impériale, grâce à ses senseurs avancés.</i>"""
        "Onyx Squadron Ace":
           display_name: """As de l'Escadron Onyx"""
           text: """<i class = flavor_text>L'appareil expérimental qu'est le défenseur TIE surclasse tous les vaisseaux de sa génération, mais sa taille, sa vitesse et son arsenal augmentent considérablement son coût de fabrication.</i>%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action %EVADE%."""
        "Onyx Squadron Scout":
           display_name: """Éclaireur de l'Escadron Onyx"""
           text: """<i class = flavor_text>Conçu pour les engagements de longue haleine, le TIE/ag est habituellement confié aux pilotes d'élite entraînés pour tirer le meilleur parti de son armement et de sa manœuvrabilité.</i>"""
        "Outer Rim Smuggler":
           display_name: """Contrebandier de la Bordure Extérieure"""
           text: """<i class = flavor_text>Connu pour sa robustesse et sa conception modulaire, le YT-1300 est l'un des cargos les plus populaires et répandus de la galaxie.</i>"""
        "Partisan Renegade":
           display_name: """Renégat Partisan"""
           text: """<i class = flavor_text>Les Partisans de Saw Gerrera se rassemblèrent d'abord pour combattre les troupes Séparatistes sur Onderon lors de la Guerre des Clones, puis ils continuèrent de lutter contre la tyrannie galactique instaurée par l'Empire.</i>"""
        "Patrol Leader":
           display_name: """Chef de Patrouille"""
           text: """<i class = flavor_text>Recevoir le commandement d'un Décimateur VT-49 est une promotion de taille pour un officier moyen de la Marine Impériale.</i>"""
        "Phoenix Squadron Pilot":
           display_name: """Pilote de l'Escadron Phœnix"""
           text: """<i class = flavor_text>Dirigés par le commandant Jun Sato et malgré leur manque d'expérience, les courageux pilotes de l'Escadron Phœnix firent face à des défis complexes dans leur lutte contre l'Empire Galactique.</i>%LINEBREAK%<strong>Propulseurs Vectoriels :</strong> après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge."""
        "Planetary Sentinel":
           display_name: """Sentinelle Planétaire"""
           text: """<i class = flavor_text>Pour protéger ses installations militaires, l'Empire a besoin d'une force de défense rapide et vigilante.</i>%LINEBREAK%<strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n'êtes pas stressé, vous devez exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] ou [1&nbsp;%BANKRIGHT%]."""
        "Rebel Scout":
           display_name: """Éclaireur Rebelle"""
           text: """<i class = flavor_text>Conçue par la Corporation Technique Corellienne et inspirée d'un oiseau  en vol, la série « hawk » a produit d'excellents cargos légers. Rapide et résistant, le HWK-290 est souvent utilisé par les agents Rebelles en tant que base mobile d'opérations.</i>"""
        "Red Squadron Veteran":
           display_name: """Vétéran de l'Escadron Rouge"""
           text: """<i class = flavor_text>Conçu comme une unité d'élite pour les combats spatiaux, l'Escadron Rouge comprend certains des meilleurs pilotes de l'Alliance Rebelle.</i>"""
        "Rho Squadron Pilot":
           display_name: """Pilote de l'Escadron Rho"""
           text: """<i class = flavor_text>Les pilotes d'élite de l'escadron Rho distillent la peur au sein de la Rébellion, la configuration d'assaut Xg-1 et l'arsenal Os-1 embarqué du Star Wing de classe Alpha ayant des effets dévastateurs.</i>"""
        "Rogue Squadron Escort":
           display_name: """Escorte de l'Escadron Rogue"""
           text: """<i class = flavor_text>Les pilotes d'élite de l'Escadron Rogue font partie des meilleurs pilotes de la Rébellion.</i>%LINEBREAK%<strong>Scanners Expérimentaux :</strong> vous pouvez verrouiller une cible au-delà de la portée 3. Vous ne pouvez pas verrouiller de cible à portée 1."""
        "Saber Squadron Ace":
           display_name: """As de l'Escadron Sabre"""
           text: """<i class = flavor_text>Dirigés par le Baron Fel Soontir, les pilotes de l'escadron Sabre sont parmi les meilleurs de l'Empire. Leurs Intercepteurs TIE sont marqués avec des bandes rouges pour désigner les pilotes ayant au moins dix victoires confirmées.</i>%LINEBREAK% <strong>Autopropulseurs :</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou %BOOST% rouge."""
        "Scarif Base Pilot":
           display_name: """Pilote de la Base de Scarif"""
           text: """<i class = flavor_text>Le TIE Reaper fut conçu pour déposer des troupes d'élite sur les points chauds des champs de bataille, comme les terrifiants Death Troopers du Directeur Krennic lors de la Bataille de Scarif.</i>%LINEBREAK%<sasmall><strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n'êtes pas stressé, vous <b>devez</b> exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], ou [1&nbsp;%BANKRIGHT%].</sasmall>"""
        "Scimitar Squadron Pilot":
           display_name: """Scimitar Squadron Pilot"""
           text: """<i class = flavor_text>Le TIE/sa est particulièrement précis pour un bombardier, lui permettant des frappes ciblées tout en évitant d'infliger des dommages collatéraux excessifs à la zone environnante.</i>%LINEBREAK%<strong>Bombardier Agile :</strong> si vous devez utiliser un gabarit %STRAIGHT% pour larguer un engin, vous pouvez utiliser un gabarit %BANKLEFT% ou %BANKRIGHT% de même vitesse à la place."""
        "Shadowport Hunter":
           display_name: """Chasseur des Ports Fantômes"""
           text: """<i class = flavor_text>Les organisations criminelles confient à leurs agents loyaux des vaisseaux disposant de la meilleure technologie possible, comme le véloce et redoutable Appareil de Poursuite de Classe Lancer, afin de renforcer leurs aptitudes létales.</i>"""
        "Sienar Specialist":
           display_name: """Spécialiste Sienar"""
           text: """<i class = flavor_text>Lors du développement du TIE Aggressor, Sienar Fleet Systems accorda d'avantage d'importance aux performances et à la polyvalence qu'à la maîtrise des coûts.</i>"""
        "Sigma Squadron Ace":
           display_name: """As de l'Escadron Sigma"""
           text: """<i class = flavor_text>Équipé d'un hyperdrive et de boucliers, le TIE Fantôme dispose également de cinq canons laser qui lui confèrent une puissance de feu inouïe pour un chasseur Impérial.</i>%LINEBREAK%<strong>Réseau de Stygium :</strong> après vous être désocculté, vous pouvez effectuer une action %EVADE%. Au début de la phase de dénouement, vous pouvez dépenser 1 marqueur d'évasion pour gagner 1 marqueur d'occultation. """
        "Skull Squadron Pilot":
           display_name: """Pilote de l'Escadron Skull"""
           text: """<i class = flavor_text>Les as de l'Escadron Skull privilégient une approche agressive, profitant de la technologie d'ailes montées sur pivot de leurs appareils, ce qui leur confère une maniabilité exceptionnelle quand ils poursuivent leurs proies. </i>%LINEBREAK%<strong>Opposition Concordia :</strong> tant que vous défendez, si la portée d'attaque est 1 et que vous êtes dans l'%FRONTARC% de l'attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Spice Runner":
           display_name: """Trafiquant d'Épice"""
           text: """<i class = flavor_text>Bien que ses soutes soient plus étroites que celles d'autres cargos légers, le petit mais véloce HWK-290 est un vaisseau de prédilection pour ceux qui se spécialisent dans le transport discret de biens précieux.</i>"""
        "Storm Squadron Ace":
           display_name: """As de l'Escadron Storm"""
           text: """<i class = flavor_text>Le Tie Advanced x1 a été produit en quantités limitées, mais les ingénieurs de Sienar incorporèrent la plus grande partie de ses innovations dans leur nouveau modèle de TIE : l'Intercepteur TIE.</i>%LINEBREAK%<strong>Ordinateur de Visée Avancé :</strong> tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d'attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Tala Squadron Pilot":
           display_name: """Pilote de l'Escadron Tala"""
           text: """<i class = flavor_text>L'AF4 est la toute dernière génération du modèle Chasseur de Têtes. Robuste et bon marché, il est très populaire auprès des organisations indépendantes comme la Rébellion.</i>"""
        "Tansarii Point Veteran":
           display_name: """Vétéran de Tansarii Point"""
           text: """<i class = flavor_text>La défaite de l'as du Soleil Noir, Talonbane Cobra, abattu par des contrebandiers Car'das, changea le cours de la bataille de la station Tansarii Point. Les survivants de cet affrontement sont respectés dans tout le secteur. </i>%LINEBREAK%<strong>Emplacement d'Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Tempest Squadron Pilot":
           display_name: """Pilote de l'Escadron Tempest"""
           text: """<i class = flavor_text>Le TIE Advanced est une version améliorée du célèbre chasseur TIE/ln disposant de boucliers, d'un meilleur système d'armement, de panneaux solaires incurvés et d'un hyperdrive.</i>%LINEBREAK%<strong>Ordinateur de Visée Avancé :</strong> tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d'attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Trandoshan Slaver":
           display_name: """Esclavagiste Trandosien"""
           text: """<i class = flavor_text>Le spacieux YV-666 est très populaire auprès des chasseurs de primes et des esclavagistes avec ses trois ponts, dont l'un était souvent aménagé pour le transport de prisonniers.</i>"""
        "Warden Squadron Pilot":
           display_name: """Pilote de l'Escadron Warden"""
           text: """<i class = flavor_text>Le K-wing de Koensayr Manufacturing peut s'enorgueillir de son moteur à accélération subluminique avancé et de dix-huit points d'emport, ce qui lui confère une vitesse et une puissance de feu inégalées.</i>"""
        "Wild Space Fringer":
           display_name: """Frontalier de l'Espace Sauvage"""
           text: """<i class = flavor_text>Certes, le cargo léger YT-2400 possédait une soute de bonne taille, mais celle-ci était souvent encombrée de systèmes d'armement modifiés et de moteurs énormes.</i>%LINEBREAK%<strong>Angle Mort des Senseurs :</strong> tant que vous effectuez une attaque principale à portée d'attaque 0-1, n'appliquez pas le bonus de portée 0-1 et lancez 1 dé d'attaque en moins."""
        "Zealous Recruit":
           display_name: """Recrue Zélée"""
           text: """<i class = flavor_text>Les pilotes de Chasseur Fang Mandalorien doivent maîtriser la manœuvre dite de l'Opposition Concordia, profitant du profil de leurs appareils pour mener des charges sans concession. </i>%LINEBREAK%<strong>Opposition Concordia :</strong> tant que vous défendez, si la portée d'attaque est 1 et que vous êtes dans l'%FRONTARC% de l'attaquant, changez 1 résultat en un résultat %EVADE%."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """Après avoir entièrement exécuté une manœuvre rouge, gagnez 1 marqueur de calcul.%LINEBREAK%Au début de la phase de dénouement, vous pouvez choisir un vaisseau à portée 0-1. Dans ce cas, transférez 1 de vos marqueurs de stress à ce vaisseau."""
        "Nashtah Pup":
           display_name: """Nashtah Pup"""
           text: """Vous ne pouvez être déployé que par un déploiement d'urgence, et vous avez le nom, l'initiative, la capacité de pilote, et les %CHARGE% du vaisseau allié Hound's Tooth qui a été détruit.%LINEBREAK%Vaisseau de Secours : Mise en Place : nécessite le Hound's Tooth. Vous devez commencer la partie arrimé au Hound's Tooth."""
        "AP-5":
           display_name: """AP-5"""
           text: """Tant que vous coordonnez, si vous choisissez un vaisseau qui a exactement 1 marqueur de stress, il peut effectuer des actions. %LINEBREAK%<strong>Navette de Communication :</strong> tant que vous êtes arrimé, votre vaisseau porteur gagne %COORDINATE%. Avant que votre vaisseau porteur ne s'active, il peut effectuer une action %COORDINATE%."""
        "Airen Cracken":
           display_name: """Airen Cracken"""
           text: """Après avoir effectué une attaque, vous pouvez choisir 1 vaisseau allié à portée 1. Ce vaisseau peut effectuer une action, en la considérant comme rouge."""
        "Arvel Crynyd":
           display_name: """Arvel Crynyd"""
           text: """Vous pouvez effectuer des attaques principales à portée 0.%LINEBREAK%Si vous deviez échouer à une action %BOOST% qui vous amènerait à chevaucher un autre vaisseau, résolvez-la comme si vous exécutiez partiellement une manœuvre à la place.%LINEBREAK%<strong>Propulseurs Vectoriels :</strong> après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge."""
        "Asajj Ventress":
           display_name: """Asajj Ventress"""
           text: """Au début de la phase d'engagement, vous pouvez choisir 1 vaisseau ennemi dans votre %SINGLETURRETARC% à portée 0-2 et dépenser 1 %FORCE%. Dans ce cas, ce vaisseau gagne 1 marqueur de stress sauf s'il retire 1 marqueur vert."""
        "Autopilot Drone":
           display_name: """Drone Automatique"""
           text: """<i class = flavor_text>Il est parfois utile d'ignorer les avertissements de sécurité préconisés par les fabricants…</i>%LINEBREAK%Cellules Énergétiques Bidouillées&nbsp;: pendant la phase de système, si vous n'êtes pas arrimé, perdez 1 &nbsp;%CHARGE%. À la fin de la phase d'activation, vous êtes détruit si vous avez 0 %CHARGE%. Avant de retirer votre figurine, chaque vaisseau à porté 0-1 subit 1 dégât %CRIT%."""
        "Benthic Two-Tubes":
           display_name: """Benthic Deux-Tubes"""
           text: """Après avoir effectué une action %FOCUS%, vous pouvez transférer 1 de vos marqueurs de concentration à un vaisseau allié à portée 1-2."""
        "Biggs Darklighter":
           display_name: """Biggs Darklighter"""
           text: """Tant qu'un autre vaisseau allié à portée 0-1 défend, avant l'étape «&nbsp;Neutraliser les résultats&nbsp;», si vous êtes dans l'arc de l'attaque, vous pouvez subir 1 dégât&nbsp;%HIT% ou %CRIT% pour annuler 1 dégât correspondant."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """Tant que vous défendez ou effectuez une attaque, vous pouvez relancer 1 de vos dés pour chaque vaisseau ennemi à portée 0-1."""
        "Bodhi Rook":
           display_name: """Bodhi Rook"""
           text: """Les vaisseaux alliés peuvent verrouiller des objets à portée 0-3 de n'importe quel vaisseau allié."""
        "Bossk":
           display_name: """Bossk"""
           text: """Tant que vous effectuez une attaque principale, après l'étape «&nbsp;Neutraliser les résultats&nbsp;», vous pouvez dépenser 1 résultat %CRIT% pour ajouter 2 résultats&nbsp;%HIT%."""
        "Braylen Stramm":
           display_name: """Braylen Stramm"""
           text: """Tant que vous défendez ou effectuez une attaque, si vous êtes stressé, vous pouvez relancer jusqu'à 2 de vos dés."""
        "Captain Feroph":
           display_name: """Capitaine Feroph"""
           text: """<smallbody>Tant que vous défendez, si l'attaquant n'a aucun marqueur vert, vous pouvez changer 1 de vos résultats Vierge ou %FOCUS% en un résultat %EVADE%.</smallbody>%LINEBREAK%<sasmall><strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n'êtes pas stressé, vous <b>devez</b> exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], ou [1&nbsp;%BANKRIGHT%].</sasmall>"""
        "Captain Jonus":
           display_name: """Captain Jonus"""
           text: """Tant qu'un vaisseau allié à portée 0-1 effectue une attaque %TORPEDO% ou %MISSILE%, il peut relancer jusqu'à 2 dés d'attaque. %LINEBREAK%<strong>Bombardier Agile :</strong> si vous devez utiliser un gabarit %STRAIGHT% pour larguer un engin, vous pouvez utiliser un gabarit %BANKLEFT% ou %BANKRIGHT% de même vitesse à la place."""
        "Captain Jostero":
           display_name: """Captain Jostero"""
           text: """Après qu'un vaisseau ennemi a subi des dégâts, s'il n'est pas en train de défendre, vous pouvez effectuer une attaque bonus contre ce vaisseau."""
        "Captain Kagi":
           display_name: """Capitaine Kagi"""
           text: """Au début de la phase d'engagement, vous pouvez choisir 1 ou plusieurs vaisseaux alliés à portée 0-3. Dans ce cas, transférez tous les marqueurs de verrouillage ennemis des vaisseaux choisis vers vous."""
        "Captain Nym":
           display_name: """Capitaine Nym"""
           text: """Avant qu'une bombe ou mine alliée n'explose, vous pouvez dépenser 1 %CHARGE% pour empêcher son explosion.%LINEBREAK% Tant que vous défendez contre une attaque gênée par une bombe ou une mine, lancez 1 dé de défense supplémentaire."""
        "Captain Oicunn":
           display_name: """Capitaine Oicunn"""
           text: """Vous pouvez effectuer vos attaques principales à portée 0."""
        "Captain Rex":
           display_name: """Capitaine Rex"""
           text: """Après avoir effectué une attaque, assignez l'état Tir de Suppression au défenseur."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """Au début de la phase d'activation, vous pouvez choisir 1 vaisseau allié à portée 1-3. Dans ce cas, ce vaisseau allié retire 1 marqueur de stress."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """Avant qu'une carte de dégât ne vous soit attribuée face visible, vous pouvez dépenser 1 %CHARGE% pour qu'elle vous soit attribuée face cachée à la place."""
        "Colonel Jendon":
           display_name: """Colonel Jendon"""
           text: """Au début de la phase d'activation, vous pouvez dépenser 1 %CHARGE%. Dans ce cas, lorsqu'un vaisseau allié verrouille une cible à ce round, il doit le faire au-delà de la portée 3 à la place de la portée 0-3."""
        "Colonel Vessery":
           display_name: """Colonel Vessery"""
           text: """Tant que vous effectuez une attaque contre un vaisseau verrouillé, après avoir lancé vos dés d'attaque, vous pouvez verrouiller le défenseur. %LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action %EVADE%."""
        "Constable Zuvio":
           display_name: """Officier Zuvio"""
           text: """Si vous êtes censé larguer un engin, vous pouvez le lancer en utilisant un gabarit [1&nbsp;%STRAIGHT%] à la place.%LINEBREAK%<strong>Dispositif Tracteur de Remorqueur Spatial :</strong> <strong>Action :</strong> choisissez un vaisseau dans votre %FRONTARC% à portée 1. Il gagne 1 marqueur de rayon tracteur, ou 2 marqueurs de rayon tracteur s'il est dans votre %BULLSEYEARC% à portée 1."""
        "Corran Horn":
           display_name: """Corran Horn"""
           text: """À l'initiative 0, vous pouvez effectuer une attaque principale bonus contre un vaisseau ennemi situé dans votre %BULLSEYEARC%. Dans ce cas, au début de la prochaine phase de préparation, gagnez 1 marqueur de désarmement. %LINEBREAK%<strong>Scanners Expérimentaux :</strong> vous pouvez verrouiller une cible au-delà de la portée 3. Vous ne pouvez pas verrouiller de cible à portée 1."""
        "Countess Ryad":
           display_name: """Comtesse Ryad"""
           text: """Tant que vous exécutez une manœuvre %STRAIGHT%, vous pouvez augmenter la difficulté de la manœuvre. Dans ce cas, exécutez-la comme une manœuvre %KTURN% à la place.%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action %EVADE%."""
        "Dace Bonearm":
           display_name: """Dace Bonearm"""
           text: """Après qu'un vaisseau ennemi à portée 0-3 a reçu au moins 1 marqueur ionique, vous pouvez dépenser 3 %CHARGE%. Dans ce cas, ce vaisseau ennemi gagne 2 marqueurs ioniques supplémentaires."""
        "Dalan Oberos (StarViper)":
           display_name: """Dalan Oberos (StarViper)"""
           text: """Après avoir entièrement exécuté une manœuvre, vous pouvez gagner 1 marqueur de stress pour pivoter votre vaisseau de 90°. %LINEBREAK%<strong>Micropropulseurs :</strong> tant que vous effectuez un tonneau, vous devez utiliser le gabarit %BANKLEFT% ou %BANKRIGHT% à la place du gabarit %STRAIGHT%."""
        "Dalan Oberos":
           display_name: """Dalan Oberos"""
           text: """Au début de la phase d'engagement, vous pouvez choisir 1 vaisseau protégé dans votre %BULLSEYEARC% et dépenser 1 %CHARGE%. Dans ce cas, ce vaisseau perd 1 bouclier et vous récupérez 1 bouclier. %LINEBREAK%<strong>Dans le Mille :</strong> tant que vous effectuez une attaque, si le défenseur est dans votre %BULLSEYEARC%, les dés de défense ne peuvent pas être modifiés en utilisant des marqueurs verts."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """Après avoir effectué une action, vous pouvez dépenser 1 %FORCE% pour effectuer une action.%LINEBREAK%<strong>Ordinateur de Visée Avancé :</strong> tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d'attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Dash Rendar":
           display_name: """Dash Rendar"""
           text: """Tant que vous vous déplacez, ignorez les obstacles. %LINEBREAK%<strong>Angle Mort des Senseurs :</strong> tant que vous effectuez une attaque principale à portée d'attaque 0-1, n'appliquez pas le bonus de portée 0-1 et lancez 1 dé d'attaque en moins."""
        "Del Meeko":
           display_name: """Del Meeko"""
           text: """Tant qu'un vaisseau allié à portée 0-2 défend contre un attaquant endommagé, le défenseur peut relancer 1 dé de défense."""
        "Dengar":
           display_name: """Dengar"""
           text: """Après avoir défendu, si l'attaquant est dans votre %FRONTARC%, vous pouvez dépenser 1 %CHARGE% pour effectuer une attaque bonus contre cet attaquant."""
        "Drea Renthal":
           display_name: """Drea Renthal"""
           text: """Tant qu'un vaisseau allié non-limité effectue une attaque, si le défenseur est dans votre arc de tir, l'attaquant peut relancer 1 dé d'attaque."""
        "Edrio Two-Tubes":
           display_name: """Edrio Deux-Tubes"""
           text: """Avant votre activation, si vous êtes concentré, vous pouvez effectuer une action."""
        "Emon Azzameen":
           display_name: """Emon Azzameen"""
           text: """Si vous êtes censé larguer un engin en utilisant un gabarit [1&nbsp;%STRAIGHT%], vous pouvez utiliser le gabarit [3&nbsp;%TURNLEFT%], [3&nbsp;%STRAIGHT%] ou [3&nbsp;%TURNRIGHT%] à la place."""
        "Esege Tuketu":
           display_name: """Esege Tuketu"""
           text: """Tant qu'un vaisseau allié à portée 0-2 défend ou effectue une attaque, il peut dépenser vos marqueurs de concentration comme s'ils étaient à lui."""
        "Evaan Verlaine":
           display_name: """Evaan Verlaine"""
           text: """Au début de la phase d'engagement, vous pouvez dépenser 1 marqueur de concentration pour choisir un vaisseau allié à portée 0-1. Dans ce cas, ce vaisseau allié lance 1 dé de défense supplémentaire tant qu'il défend, jusqu'à la fin du round."""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """Tant que vous défendez ou effectuez une attaque, si vous êtes stressé, vous pouvez dépenser 1 %FORCE% pour changer jusqu'à 2 de vos résultats %FOCUS% en résultats %EVADE% ou %HIT%.%LINEBREAK%<strong>Chargé et Prêt à Tirer :</strong> tant que vous êtes arrimé, après que votre vaisseau porteur a effectué une attaque principale %FRONTARC% ou %TURRET%, il peut effectuer une attaque principale %REARARC% bonus."""
        "Ezra Bridger (Sheathipede)":
           display_name: """Ezra Bridger (Sheathipede)"""
           text: """Tant que vous défendez ou effectuez une attaque, si vous êtes stressé, vous pouvez dépenser 1 %FORCE% pour changer jusqu'à 2 de vos résultats %FOCUS% en résultats %EVADE% ou %HIT%.%LINEBREAK%<strong>Navette de Communication :</strong> tant que vous êtes arrimé, votre vaisseau porteur gagne %COORDINATE%. Avant que votre vaisseau porteur ne s'active, il peut effectuer une action %COORDINATE%."""
        "Ezra Bridger (TIE Fighter)":
           display_name: """Ezra Bridger (TIE Fighter)"""
           text: """Tant que vous défendez ou effectuez une attaque, si vous êtes stressé, vous pouvez dépenser 1 %FORCE% pour changer jusqu'à 2 de vos résultats %FOCUS% en résultats %EVADE% ou %HIT%."""
        "Fenn Rau (Sheathipede)":
           display_name: """Fenn Rau (Sheathipede)"""
           text: """Après qu'un vaisseau ennemi situé dans votre arc de tir vous a engagé, si vous n'êtes pas stressé, vous pouvez gagner 1 marqueur de stress. Dans ce cas, ce vaisseau ennemi ne peut pas dépenser de marqueur pour modifier des dés tant qu'il effectue une attaque pendant cette phase. %LINEBREAK%<strong>Navette de Communication :</strong> tant que vous êtes arrimé, votre vaisseau porteur gagne %COORDINATE%. Avant que votre vaisseau porteur ne s'active, il peut effectuer une action %COORDINATE%."""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """Tant que vous défendez ou effectuez une attaque, si la portée d'attaque est 1, vous pouvez lancer 1 dé supplémentaire. %LINEBREAK%<strong>Opposition Concordia :</strong> tant que vous défendez, si la portée d'attaque est 1 et que vous êtes dans l'%FRONTARC% de l'attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Garven Dreis (X-Wing)":
           display_name: """Garven Dreis (X-Wing)"""
           text: """Après voir dépensé un marqueur de concentration, vous pouvez choisir 1 vaisseau allié à portée 1-3. Ce vaisseau gagne 1 marqueur de concentration."""
        "Garven Dreis":
           display_name: """Garven Dreis"""
           text: """Après avoir dépensé un marqueur de concentration, vous pouvez choisir 1 vaisseau allié à portée 1-3. Ce vaisseau allié gagne 1 marqueur de concentration."""
        "Gavin Darklighter":
           display_name: """Gavin Darklighter"""
           text: """Tant qu'un vaisseau allié effectue une attaque, si le défenseur est dans votre %FRONTARC%, l'attaquant peut changer 1 résultat&nbsp;%HIT% en un résultat %CRIT%.%LINEBREAK%<strong>Scanners Expérimentaux :</strong> vous pouvez verrouiller une cible au-delà de la portée 3. Vous ne pouvez pas verrouiller de cible à portée 1."""
        "Genesis Red":
           display_name: """Genesis Red"""
           text: """Après avoir verrouillé une cible, vous devez retirer tous vos marqueurs de concentration et d'évasion. Puis, gagnez autant de marqueurs de concentration et d'évasion qu'a le vaisseau verrouillé. %LINEBREAK%<strong>Emplacement d'Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Gideon Hask":
           display_name: """Gideon Hask"""
           text: """Tant que vous effectuez une attaque contre un défenseur endommagé, lancez 1 dé d'attaque supplémentaire."""
        "Grand Inquisitor":
           display_name: """Grand Inquisiteur"""
           text: """Tant que vous défendez à portée d'attaque 1, vous pouvez dépenser 1 %FORCE% pour prévenir le bonus de portée 1. %LINEBREAK%Tant que vous effectuez une attaque contre un défenseur à portée d'attaque 2-3, vous pouvez dépenser 1 %FORCE% pour appliquer le bonus de portée 1."""
        "Graz":
           display_name: """Graz"""
           text: """Tant que vous défendez, si vous êtes derrière l'attaquant, lancez 1 dé de défense supplémentaire. %LINEBREAK%Tant que vous effectuez une attaque, si vous êtes derrière le défenseur, lancez 1 dé d'attaque supplémentaire."""
        "Guri":
           display_name: """Guri"""
           text: """Au début de la phase d'engagement, s'il y a au moins 1 vaisseau ennemi à portée 0-1, vous pouvez gagner 1 marqueur de concentration. %LINEBREAK%<strong>Micropropulseurs :</strong> tant que vous effectuez un tonneau, vous devez utiliser le gabarit %BANKLEFT% ou %BANKRIGHT% à la place du gabarit %STRAIGHT%."""
        "Han Solo (Scum)":
           display_name: """Han Solo (Scum)"""
           text: """Après avoir lancé des dés, si vous êtes à portée 0-1 d'un obstacle, vous pouvez relancer tous vos dés. Cela n'est pas considéré comme une relance pour les autres effets."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """Tant que vous défendez ou effectuez une attaque principale, si l'attaque est gênée par un obstacle, vous pouvez lancer 1 dé supplémentaire."""
        "Heff Tobber":
           display_name: """Heff Tobber"""
           text: """Après qu'un vaisseau ennemi a exécuté une manœuvre, s'il est à portée 0, vous pouvez effectuer une action."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """Après avoir révélé une manœuvre bleue ou rouge, vous pouvez régler votre cadran sur une autre manœuvre de même difficulté.%LINEBREAK%<strong>Chargé et Prêt à Tirer :</strong> tant que vous êtes arrimé, après que votre vaisseau porteur a effectué une attaque principale %FRONTARC% ou %TURRET%, il peut effectuer une attaque principale %REARARC% bonus."""
        "Hera Syndulla (VCX-100)":
           display_name: """Hera Syndulla (VCX-100)"""
           text: """Après avoir révélé une manœuvre bleue ou rouge, vous pouvez régler votre cadran sur une autre manœuvre de même difficulté.%LINEBREAK%<strong>Artillerie de Poupe :</strong> tant que vous avez un vaisseau arrimé, vous bénéficiez d'une arme principale %REARARC% avec une valeur d'attaque égale à celle de l'attaque principale %FRONTARC% du vaisseau arrimé."""
        "Horton Salm":
           display_name: """Horton Salm"""
           text: """Tant que vous effectuez une attaque, vous pouvez relancer 1 dé d'attaque pour chaque autre vaisseau allié à portée 0-1 du défenseur."""
        "IG-88A":
           display_name: """IG-88A"""
           text: """Au début de la phase d'engagement, vous pouvez choisir 1 vaisseau allié à portée 1-3 avec %CALCULATE% dans sa barre d'action. Dans ce cas, transférez-lui 1 de vos marqueurs de calcul. %LINEBREAK%<strong>Cerveau Droïde Avancé :</strong> après avoir effectué une action %CALCULATE%, gagnez 1 marqueur de calcul."""
        "IG-88B":
           display_name: """IG-88B"""
           text: """Après avoir effectué une attaque ratée, vous pouvez effectuer une attaque bonus %CANNON%.%LINEBREAK%<strong>Cerveau Droïde Avancé :</strong> après avoir effectué une action %CALCULATE%, gagnez 1 marqueur de calcul."""
        "IG-88C":
           display_name: """IG-88C"""
           text: """Après avoir effectué une action %BOOST%, vous pouvez effectuer une action %EVADE%.%LINEBREAK%<strong>Cerveau Droïde Avancé :</strong> après avoir effectué une action %CALCULATE%, gagnez 1 marqueur de calcul."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """Tant que vous exécutez une manœuvre Boucle de Segnor (%SLOOPLEFT% ou %SLOOPRIGHT%), vous pouvez utiliser un autre gabarit de même vitesse à la place : soit le gabarit de virage (%TURNLEFT% ou %TURNRIGHT%) de même direction, soit le gabarit de ligne droite (%STRAIGHT%).%LINEBREAK%<strong>Cerveau Droïde Avancé :</strong> après avoir effectué une action %CALCULATE%, gagnez 1 marqueur de calcul."""
        "Ibtisam":
           display_name: """Ibtisam"""
           text: """Après avoir entièrement exécuté une manœuvre, si vous êtes stressé, vous pouvez lancer 1 dé d'attaque. Sur un résultat %HIT% ou %CRIT%, retirez 1 marqueur de stress."""
        "Iden Versio":
           display_name: """Iden Versio"""
           text: """Avant qu'un chasseur TIE/ln allié à portée 0-1 ne subisse 1 ou plusieurs dégâts, vous pouvez dépenser 1&nbsp;%CHARGE%. Dans ce cas, prévenez ce dégât."""
        "Inaldra":
           display_name: """Inaldra"""
           text: """Tant que vous défendez ou effectuez une attaque, vous pouvez subir 1 dégât&nbsp;%HIT% pour relancer n'importe quel nombre de vos dés. %LINEBREAK%<strong>Emplacement d'Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Jake Farrell":
           display_name: """Jake Farrell"""
           text: """Après avoir effectué une action %BARRELROLL% ou %BOOST%, vous pouvez choisir un vaisseau allié à portée 0-1. Ce vaisseau peut effectuer une action %FOCUS%.%LINEBREAK%Propulseurs Vectoriels : après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge."""
        "Jan Ors":
           display_name: """Jan Ors"""
           text: """Tant qu'un vaisseau allié situé dans votre arc de tir effectue une attaque principale, si vous n'êtes pas stressé, vous pouvez gagner 1 marqueur de stress. Dans ce cas, ce vaisseau peut lancer 1 dé d'attaque supplémentaire."""
        "Jek Porkins":
           display_name: """Jek Porkins"""
           text: """Après avoir reçu un marqueur de stress, vous pouvez lancer 1 dé d'attaque pour le retirer.%LINEBREAK%Sur un résultat %HIT%, subissez 1 dégât %HIT%."""
        "Joy Rekkoff":
           display_name: """Joy Rekkoff"""
           text: """Tant que vous effectuez une attaque, vous pouvez dépenser 1 %CHARGE% d'une amélioration %TORPEDO% équipée. Dans ce cas, le défenseur lance 1 dé de défense en moins. %LINEBREAK%<strong>Opposition Concordia :</strong> tant que vous défendez, si la portée d'attaque est 1 et que vous êtes dans l'%FRONTARC% de l'attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Kaa'to Leeachos":
           display_name: """Kaa'to Leeachos"""
           text: """Au début de la phase d'engagement, vous pouvez choisir 1 vaisseau allié à portée 0-2. Dans ce cas, transférez 1 marqueur de concentration ou d'évasion de ce vaisseau au vôtre."""
        "Kad Solus":
           display_name: """Kad Solus"""
           text: """Après avoir entièrement exécuté une manœuvre rouge, gagnez 2 marqueurs de concentration.%LINEBREAK%<strong>Opposition Concordia :</strong> tant que vous défendez, si la portée d'attaque est 1 et que vous êtes dans l'%FRONTARC% de l'attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """Tant qu'un vaisseau allié situé dans votre arc de tir défend, vous pouvez dépenser 1 %FORCE%. Dans ce cas, l'attaquant lance 1 dé d'attaque en moins.%LINEBREAK%<strong>Artillerie de Poupe :</strong> tant que vous avez un vaisseau arrimé, vous bénéficiez d'une arme principale %REARARC% avec une valeur d'attaque égale à celle de l'attaque principale %FRONTARC% du vaisseau arrimé."""
        "Kath Scarlet":
           display_name: """Kath Scarlet"""
           text: """Tant que vous effectuez une attaque principale, si au moins 1 vaisseau allié non-limité est à portée 0 du défenseur, lancez 1 dé d'attaque supplémentaire."""
        "Kavil":
           display_name: """Kavil"""
           text: """Tant que vous effectuez une attaque non-%FRONTARC%, lancez 1 dé d'attaque supplémentaire."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """Au début de la phase d'engagement, vous pouvez choisir 1 vaisseau à portée 0-1 qui est à la fois dans votre %FRONTARC% et dans votre %SINGLETURRETARC%. Dans ce cas, ce vaisseau gagne 1 marqueur de rayon tracteur."""
        "Koshka Frost":
           display_name: """Koshka Frost"""
           text: """Tant que vous défendez ou effectuez une attaque, si le vaisseau ennemi est stressé, vous pouvez relancer 1 de vos dés."""
        "Krassis Trelix":
           display_name: """Krassis Trelix"""
           text: """Vous pouvez effectuer des attaques spéciales %FRONTARC% depuis votre %REARARC%.%LINEBREAK%Tant que vous effectuez une attaque spéciale, vous pouvez relancer 1 dé d'attaque."""
        "Kullbee Sperado":
           display_name: """Kullbee Sperado"""
           text: """Après avoir effectué une action %BARRELROLL% ou %BOOST%, vous pouvez retourner votre carte d'amélioration %CONFIG% équipée."""
        "Kyle Katarn":
           display_name: """Kyle Katarn"""
           text: """Au début de la phase d'engagement, vous pouvez transférer 1 de vos marqueurs de concentration à un vaisseau allié situé dans votre arc de tir."""
        "L3-37":
           display_name: """L3-37"""
           text: """Si vous n'êtes pas protégé, diminuez la difficulté de vos manœuvres de virages sur l'aile (%BANKLEFT% et %BANKRIGHT%)."""
        "L3-37 (Escape Craft)":
           display_name: """L3-37 (Escape Craft)"""
           text: """Si vous n'êtes pas protégé, diminuez la difficulté de vos manœuvres de virages sur l'aile (%BANKLEFT% et %BANKRIGHT%).%LINEBREAK%Copilote : tant que vous êtes arrimé, votre vaisseau porteur bénéficie de votre capacité de pilote en plus de la sienne."""
        "Laetin A'shera":
           display_name: """Laetin A'shera"""
           text: """Après avoir défendu ou effectué une attaque, si l'attaque est ratée, gagnez 1 marqueur d'évasion. %LINEBREAK%<strong>Emplacement d'Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """Après avoir entièrement exécuté une manœuvre bleue, vous pouvez choisir un vaisseau allié à portée 0-3. Ce vaisseau peut effectuer une action."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian (Scum)"""
           text: """Après avoir lancé des dés, si vous n'êtes pas stressé, vous pouvez gagner 1 marqueur de stress pour relancer tous vos résultats vierges."""
        "Lando Calrissian (Scum) (Escape Craft)":
           display_name: """Lando Calrissian (Scum) (Escape Craft)"""
           text: """Après avoir lancé des dés, si vous n'êtes pas stressé, vous pouvez gagner 1 marqueur de stress pour relancer tous vos résultats vierges.%LINEBREAK%<strong>Copilote :</strong> tant que vous êtes arrimé, votre vaisseau porteur bénéficie de votre capacité de pilote en plus de la sienne."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """Au début de la phase d'engagement, vous pouvez choisir un vaisseau à portée 1 et dépenser un marqueur de verrouillage que vous avez sur ce vaisseau. Dans ce cas, ce vaisseau gagne 1 marqueur de rayon tracteur."""
        "Leevan Tenza":
           display_name: """Leevan Tenza"""
           text: """Après avoir effectué une action %BARRELROLL% ou %BOOST%, vous pouvez effectuer une action %EVADE% rogue."""
        "Lieutenant Blount":
           display_name: """Lieutenant Blount"""
           text: """Tant que vous effectuez une attaque principale, si au moins 1 autre vaisseau allié est à portée 0-1 du défenseur, vous pouvez lancer 1 dé d'attaque supplémentaire."""
        "Lieutenant Karsabi":
           display_name: """Lieutenant Karsabi"""
           text: """Après avoir gagné un marqueur de désarmement, si vous n'êtes pas stressé, vous pouvez gagner 1 marqueur de stress pour retirer 1 marqueur de désarmement."""
        "Lieutenant Kestal":
           display_name: """Lieutenant Kestal"""
           text: """Tant que vous effectuez une attaque, après que le défenseur a lancé les dés de défense, vous pouvez dépenser 1 marqueur de concentration pour annuler tous les résultats Vierge/%FOCUS% du défenseur."""
        "Lieutenant Sai":
           display_name: """Lieutenant Sai"""
           text: """Après avoir effectué une action %COORDINATE%, si le vaisseau que vous avez choisi effectue une action de votre barre d'action, vous pouvez effectuer cette action."""
        "Lowhhrick":
           display_name: """Lowhhrick"""
           text: """Après qu'un vaisseau allié à portée 0-1 est devenu le défenseur, vous pouvez dépenser 1 marqueur de renforcement. Dans ce cas, le vaisseau défenseur gagne 1 marqueur d'évasion."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """Après être devenu le défenseur (avant que les dés ne soient lancés), vous pouvez récupérer 1 %FORCE%."""
        "Maarek Stele":
           display_name: """Maarek Stele"""
           text: """Tant que vous effectuez une attaque, si une carte de dégât devrait être attribuée face visible au défenseur, piochez 3 cartes de dégât à la place, choisissez-en 1, et défaussez les autres. %LINEBREAK%<strong>Ordinateur de Visée Avancé :</strong> tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d'attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """Tant qu'un vaisseau allié à portée 0-2 défend, l'attaquant ne peut pas relancer plus de 1 dé d'attaque."""
        "Major Rhymer":
           display_name: """Major Rhymer"""
           text: """Tant que vous effectuez une attaque %TORPEDO% ou %MISSILE%, vous pouvez augmenter ou réduire de 1 le prérequis de portée, dans une limite de 0-3. %LINEBREAK%<strong>Bombardier Agile :</strong> si vous devez utiliser un gabarit %STRAIGHT% pour larguer un engin, vous pouvez utiliser un gabarit %BANKLEFT% ou %BANKRIGHT% de même vitesse à la place."""
        "Major Vermeil":
           display_name: """Major Vermeil"""
           text: """<smallbody>Tant que vous effectuez une attaque, si le défenseur n'a aucun marqueur vert, vous pouvez changer 1 de vos résultats Vierge ou %FOCUS% en un résultat %HIT%.</smallbody>%LINEBREAK% %LINEBREAK%<sasmall><strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n'êtes pas stressé, vous <b>devez</b> exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], ou [1&nbsp;%BANKRIGHT%].</sasmall>"""
        "Major Vynder":
           display_name: """Major Vynder"""
           text: """Tant que vous défendez, si vous êtes désarmé, lancez 1 dé de défense supplémentaire."""
        "Manaroo":
           display_name: """Manaroo"""
           text: """Au début de la phase d'engagement, vous pouvez choisir un vaisseau allié à portée 0-1. Dans ce cas, transférez à ce vaisseau tous vos marqueurs verts."""
        "Miranda Doni":
           display_name: """Miranda Doni"""
           text: """Tant que vous effectuez une attaque principale, vous pouvez soit dépenser 1 bouclier pour lancer 1 dé d'attaque supplémentaire, soit, si vous n'êtes pas protégé, vous pouvez lancer 1 dé d'attaque en moins pour récupérer 1 bouclier."""
        "Moralo Eval":
           display_name: """Moralo Eval"""
           text: """Si vous êtes censé fuir, vous pouvez dépenser 1 %CHARGE%. Dans ce cas, mettez-vous en réserve à la place. Au début de la prochaine phase de préparation, placez-vous intégralement à portée 1 du bord de la zone de jeu par lequel vous auriez dû fuir."""
        "Norra Wexley (Y-Wing)":
           display_name: """Norra Wexley (Y-Wing)"""
           text: """Tant que vous défendez, si un vaisseau ennemi est à portée 0-1, ajoutez 1 résultat&nbsp;%EVADE% à vos résultats de dés."""
        "Norra Wexley":
           display_name: """Norra Wexley"""
           text: """Tant que vous défendez, si un vaisseau ennemi est à portée 0-1, vous pouvez ajouter 1 résultat %EVADE% aux résultats de vos dés."""
        "N'dru Suhlak":
           display_name: """N'dru Suhlak"""
           text: """Tant que vous effectuez une attaque principale, si aucun autre vaisseau allié n'est à portée 0-2, lancez 1 dé d'attaque supplémentaire."""
        "Old Teroch":
           display_name: """Vieux Teroch"""
           text: """Au début de la phase d'engagement, vous pouvez choisir 1 vaisseau ennemi à portée 1. Dans ce cas, si vous êtes dans son %FRONTARC%, il retire tous ses marqueurs verts.%LINEBREAK%<strong>Opposition Concordia :</strong> tant que vous défendez, si la portée d'attaque est 1 et que vous êtes dans l'%FRONTARC% de l'attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Outer Rim Pioneer":
           display_name: """Colon de la Bordure Extérieure"""
           text: """Les vaisseaux alliés à portée 0-1 peuvent effectuer des attaques en étant à portée 0 des obstacles.%LINEBREAK%Copilote : tant que vous êtes arrimé, votre vaisseau porteur bénéficie de votre capacité de pilote en plus de la sienne."""
        "Palob Godalhi":
           display_name: """Palob Godalhi"""
           text: """Au début de la phase d'engagement, vous pouvez choisir 1 vaisseau ennemi dans votre arc de tir, à portée 0-2. Dans ce cas, transférez 1 marqueur de concentration ou d'évasion de ce vaisseau au vôtre."""
        "Prince Xizor":
           display_name: """Prince Xizor"""
           text: """Tant que vous défendez, après l'étape «&nbsp;Neutraliser les résultats&nbsp;», un autre vaisseau allié à portée 0-1 et dans l'arc de l'attaque peut subir 1 dégât&nbsp;%HIT% ou %CRIT%. Dans ce cas, annulez 1 dégât correspondant.%LINEBREAK%<strong>Micropropulseurs :</strong> tant que vous effectuez un tonneau, vous devez utiliser le gabarit %BANKLEFT% ou %BANKRIGHT% à la place du gabarit %STRAIGHT%."""
        "Quinn Jast":
           display_name: """Quinn Jast"""
           text: """Au début de la phase d'engagement, vous pouvez gagner 1 marqueur de désarmement pour récupérer 1 %CHARGE% sur 1 de vos améliorations équipées.%LINEBREAK%<strong>Emplacement d'Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Rear Admiral Chiraneau":
           display_name: """Vice-Amiral Chiraneau"""
           text: """Tant que vous effectuez une attaque, si vous êtes renforcé et si le défenseur est dans l'arc %FULLFRONTARC% ou %FULLREARARC% correspondant à votre marqueur de renforcement, vous pouvez changer 1 de vos résultats %FOCUS% en un résultat %CRIT%."""
        "Rexler Brath":
           display_name: """Rexler Brath"""
           text: """Après avoir effectué une attaque qui touche, si vous avez un marqueur d'évasion, exposez 1 des cartes de dégât du défenseur.%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action %EVADE%."""
        "Roark Garnet":
           display_name: """Roark Garnet"""
           text: """Au début de la phase d'engagement, vous pouvez choisir 1 vaisseau situé dans votre arc de tir. Dans ce cas, pendant cette phase, il s'engage à l'initiative 7 au lieu de le faire à sa valeur d'initiative standard."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """Avant votre activation, vous pouvez effectuer une action %BARRELROLL% ou %BOOST%.%LINEBREAK%<strong>Chargé et Prêt à Tirer :</strong> tant que vous êtes arrimé, après que votre vaisseau porteur a effectué une attaque principale %FRONTARC% ou %TURRET%, il peut effectuer une attaque principale %REARARC% bonus."""
        "Sabine Wren (TIE Fighter)":
           display_name: """Sabine Wren (TIE Fighter)"""
           text: """Avant votre activation, vous pouvez effectuer une action %BARRELROLL% ou %BOOST%."""
        "Sabine Wren (Scum)":
           display_name: """Sabine Wren (Scum)"""
           text: """Tant que vous défendez, si l'attaquant est dans votre %SINGLETURRETARC% à portée 0-2, vous pouvez ajouter 1 résultat %FOCUS% aux résultat de vos dés."""
        "Sarco Plank":
           display_name: """Sarco Plank"""
           text: """Tant que vous défendez, vous pouvez considérer que votre valeur d'agilité est égale à la vitesse de la manœuvre que vous exécutez à ce round.%LINEBREAK%<strong>Dispositif Tracteur de Remorqueur Spatial :</strong> <strong>Action :</strong> choisissez un vaisseau dans votre %FRONTARC% à portée 1. Il gagne 1 marqueur de rayon tracteur, ou 2 marqueurs de rayon tracteur s'il est dans votre %BULLSEYEARC% à portée 1."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """Tant qu'un vaisseau allié endommagé à portée 0-3 effectue une attaque, il peut relancer 1 dé d'attaque."""
        "Serissu":
           display_name: """Serissu"""
           text: """Tant qu'un vaisseau allié à portée 0-1 défend, il peut relancer 1 de ses dés. %LINEBREAK%<strong>Emplacement d'Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Seventh Sister":
           display_name: """La Septième Sœur"""
           text: """Tant que vous effectuez une attaque principale, avant l'étape «&nbsp;Neutraliser les résultats&nbsp;», vous pouvez dépenser 2 %FORCE% pour annuler 1 résultat %EVADE%."""
        "Seyn Marana":
           display_name: """Seyn Marana"""
           text: """Tant que vous effectuez une attaque, vous pouvez dépenser 1 résultat %CRIT%. Dans ce cas, attribuez 1 carte de dégât face cachée au défenseur, puis annuler vos résultats restants."""
        "Shara Bey":
           display_name: """Shara Bey"""
           text: """Tant que vous défendez ou effectuez une attaque principale, vous pouvez dépenser 1 marqueur de verrouillage que vous avez sur le vaisseau ennemi pour ajouter 1 résultat&nbsp;%FOCUS% aux résultats de vos dés."""
        "Sol Sixxa":
           display_name: """Sol Sixxa"""
           text: """Si vous êtes censé larguer un engin en utilisant un gabarit [1&nbsp;%STRAIGHT%], vous pouvez le larguer en utilisant n'importe quel autre gabarit de vitess﻿e 1 à la place."""
        "Soontir Fel":
           display_name: """Soontir Fel"""
           text: """Au début de la phase d'engagement, si un vaisseau ennemi est dans votre %BULLSEYEARC%, gagnez 1 marqueur de concentration. %LINEBREAK%<strong>Autopropulseurs :</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou %BOOST% rouge."""
        "Sunny Bounder":
           display_name: """Sunny Bounder"""
           text: """Tant que vous défendez ou effectuez une attaque, après avoir lancé ou relancé vos dés, si vous obtenez le même résultat sur chacun de vos dés, vous pouvez ajouter 1 résultat correspondant. %LINEBREAK%<strong>Emplacement d'Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Talonbane Cobra":
           display_name: """Talonbane Cobra"""
           text: """Tant que vous défendez à portée d'attaque 3 ou effectuez une attaque à portée d'attaque 1, lancez 1 dé supplémentaire."""
        "Tel Trevura":
           display_name: """Tel Trevura"""
           text: """Si vous devez être détruit, vous pouvez dépenser 1 %CHARGE%. Dans ce cas, défaussez toutes vos cartes de dégât, subissez 5 dégâts&nbsp;%HIT%, et placez-vous en réserve à la place. Au début de la prochaine phase de préparation, placez-vous intégralement à portée 1 de votre bord Joueur."""
        "Ten Numb":
           display_name: """Ten Numb"""
           text: """Tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de stress pour changer tous vos résultats %FOCUS% en résultats %EVADE% ou %HIT%."""
        "Thane Kyrell":
           display_name: """Thane Kyrell"""
           text: """Tant que vous effectuez une attaque, vous pouvez dépense 1 résultat %FOCUS%, %HIT% ou %CRIT% pour regarder les cartes de dégât face cachée du défenseur, en choisir 1 et l'exposer."""
        "Tomax Bren":
           display_name: """Tomax Bren"""
           text: """Après avoir effectué une action %RELOAD%, vous pouvez récupérer 1 marqueur %CHARGE% sur 1 de vos cartes d'amélioration %TALENT% équipée. %LINEBREAK%<strong>Bombardier Agile :</strong> si vous devez utiliser un gabarit %STRAIGHT% pour larguer un engin, vous pouvez utiliser un gabarit %BANKLEFT% ou %BANKRIGHT% de même vitesse à la place."""
        "Torani Kulda":
           display_name: """Torani Kulda"""
           text: """Après avoir effectué une attaque, chaque vaisseau ennemi dans votre %BULLSEYEARC% subit 1 dégât&nbsp;%HIT% sauf s'il retire 1 marqueur vert. %LINEBREAK%<strong>Dans le Mille :</strong> tant que vous effectuez une attaque, si le défenseur est dans votre %BULLSEYEARC%, les dés de défense ne peuvent pas être modifiés en utilisant des marqueurs verts."""
        "Torkil Mux":
           display_name: """Torkil Mux"""
           text: """Au début de la phase d'engagement, vous pouvez choisir 1 vaisseau dans votre arc de tir. Dans ce cas, ce vaisseau s'engage à ce round à l'initiative 0 à la place de sa valeur d'initiative standard."""
        "Turr Phennir":
           display_name: """Turr Phennir"""
           text: """Après avoir effectué une attaque, vous pouvez effectuer une action %BARRELROLL% ou %BOOST%, même si vous êtes stressé.%LINEBREAK%<strong>Autopropulseurs :</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou %BOOST% rouge."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """Au début de la phase d'engagement, si un ou plusieurs autres vaisseaux sont à portée 0, vous et chaque autre vaisseau à portée 0 gagnez 1 marqueur de rayon tracteur. %LINEBREAK%<strong>Dispositif Tracteur de Remorqueur Spatial :</strong> <strong>Action :</strong> choisissez un vaisseau dans votre %FRONTARC% à portée 1. Il gagne 1 marqueur de rayon tracteur, ou 2 marqueurs de rayon tracteur s'il est dans votre %BULLSEYEARC% à portée 1."""
        "Valen Rudor":
           display_name: """Valen Rudor"""
           text: """Après qu'un vaisseau allié à portée 0-1 a défendu (après la résolution des dégâts, s'il y en a), vous pouvez effectuer une action."""
        "Ved Foslo":
           display_name: """Ved Foslo"""
           text: """Tant que vous exécutez une manœuvre, vous pouvez exécuter une manœuvre de même direction et de même difficulté mais avec une vitesse supérieure ou inférieure de 1 à la place.%LINEBREAK%<strong>Ordinateur de Visée Avancé :</strong> tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d'attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Viktor Hel":
           display_name: """Viktor Hel"""
           text: """Après avoir défendu, si vous n'avez pas lancé exactement 2 dés de défense, l'attaquant gagne 1 marqueur de stress."""
        "Wedge Antilles":
           display_name: """Wedge Antilles"""
           text: """Tant que vous effectuez une attaque, le défenseur lance 1 dé de défense en moins."""
        "Wullffwarro":
           display_name: """Wullffwarro"""
           text: """Tant que vous effectuez une attaque principale, si vous êtes endommagé, vous pouvez lancer 1 dé d'attaque supplémentaire."""
        "Zertik Strom":
           display_name: """Zertik Strom"""
           text: """Pendant la phase de dénouement, vous pouvez dépenser un marqueur de verrouillage que vous avez sur un vaisseau ennemi pour exposer 1 carte de dégât de ce dernier. %LINEBREAK%<strong>Ordinateur de Visée Avancé :</strong> tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d'attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """Tant que vous effectuez une attaque principale, vous pouvez lancer 1 dé d'attaque supplémentaire. Dans ce cas, le défenseur lance 1 dé de défense supplémentaire."""
        '"Chopper"':
           display_name: """“Chopper”"""
           text: """Au début de la phase d'engagement, chaque vaisseau ennemi à portée 0 gagne 2 marqueurs de brouillage. %LINEBREAK%<strong>Artillerie de Poupe :</strong> tant que vous avez un vaisseau arrimé, vous bénéficiez d'une arme principale %REARARC% avec une valeur d'attaque égale à celle de l'attaque principale %FRONTARC% du vaisseau arrimé."""
        '"Countdown"':
           display_name: """“Countdown”"""
           text: """Tant que vous défendez, après l'étape «&nbsp;Neutraliser les résultats&nbsp;», si vous n'êtes pas stressé, vous pouvez subit 1 dégât %HIT% et gagner 1 marqueur de stress. Dans ce cas, annulez tous les résultats des dés.%LINEBREAK%<strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n'êtes pas stressé, vous devez exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] ou [1&nbsp;%BANKRIGHT%]."""
        '"Deathfire"':
           display_name: """“Deathfire”"""
           text: """Après avoir été détruit et avant de retirer votre figurine, vous pouvez effectuer une attaque et larguer ou lancer 1 engin. %LINEBREAK%<strong>Bombardier Agile :</strong> si vous devez utiliser un gabarit %STRAIGHT% pour larguer un engin, vous pouvez utiliser un gabarit %BANKLEFT% ou %BANKRIGHT% de même vitesse à la place."""
        '"Deathrain"':
           display_name: """“Deathrain”"""
           text: """Après avoir largué ou lancé un engin, vous pouvez effectuer une action."""
        '"Double Edge"':
           display_name: """“Double Edge”"""
           text: """Après avoir effectué une attaque %TURRET% ou %MISSILE% ratée, vous pouvez effectuer une attaque bonus en utilisant une arme différente."""
        '"Duchess"':
           display_name: """“Duchess”"""
           text: """Vous pouvez choisir de ne pas utiliser vos Ailerons Adaptables. %LINEBREAK%Vous pouvez utiliser vos Ailerons Adaptables même si vous êtes stressé.%LINEBREAK%<strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n'êtes pas stressé, vous devez exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] ou [1&nbsp;%BANKRIGHT%]."""
        '"Dutch" Vander':
           display_name: """“Dutch” Vander"""
           text: """Après avoir effectué l'action %LOCK%, vous pouvez choisir 1 vaisseau allié à portée 1-3. Ce vaisseau allié peut verrouiller l'objet que vous avez verrouillé, en ignorant les restrictions de portée."""
        '"Echo"':
           display_name: """“Echo”"""
           text: """Lorsque vous vous désoccultez, vous devez utiliser le gabarit [2&nbsp;%BANKLEFT%] ou [2&nbsp;%BANKRIGHT%] à la place du gabarit [2&nbsp;%STRAIGHT%].%LINEBREAK%<strong>Réseau de Stygium :</strong> après vous être désocculté, vous pouvez effectuer une action %EVADE%. Au début de la phase de dénouement, vous pouvez dépenser 1 marqueur d'évasion pour gagner 1 marqueur d'occultation. """
        '"Howlrunner"':
           display_name: """“Howlrunner”"""
           text: """Tant qu'un vaisseau allié à portée 0-1 effectue une attaque principale, il peut relancer 1 dé d'attaque."""
        '"Leebo"':
           display_name: """“Leebo”"""
           text: """Après avoir défendu ou effectué une attaque, si vous avez dépensé un marqueur de calcul, gagnez 1 marqueur de calcul.%LINEBREAK%<strong>Angle Mort des Senseurs :</strong> tant que vous effectuez une attaque principale à portée d'attaque 0-1, n'appliquez pas le bonus de portée 0-1 et lancez 1 dé d'attaque en moins."""
        '"Mauler" Mithel':
           display_name: """“Mauler” Mithel"""
           text: """Tant que vous effectuez une attaque à portée d'attaque 1, lancez 1 dé d'attaque supplémentaire."""
        '"Night Beast"':
           display_name: """“Night Beast”"""
           text: """Après avoir entièrement exécuté une manœuvre bleue, vous pouvez effectuer une action %FOCUS%."""
        '"Pure Sabacc"':
           display_name: """“Pure Sabacc”"""
           text: """Tant que vous effectuez une attaque, si vous avez 1 carte de dégât ou moins, vous pouvez lancer 1 dé d'attaque supplémentaire. %LINEBREAK%Ailerons Adaptables : avant de révéler votre cadran, si vous n'êtes pas stressé, vous devez exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] ou [1&nbsp;%BANKRIGHT%]."""
        '"Redline"':
           display_name: """“Redline”"""
           text: """Vous pouvez maintenir jusqu'à 2 cibles verrouillées.%LINEBREAK% Après avoir effectué une action, vous pouvez verrouiller une cible."""
        '"Scourge" Skutu':
           display_name: """“Scourge” Skutu"""
           text: """Tant que vous effectuez une attaque contre un défenseur dans votre %BULLSEYEARC%, lancez 1 dé d'attaque supplémentaire."""
        '"Vizier"':
           display_name: """“Vizier”"""
           text: """<smallbody>Après avoir entièrement exécuté une manœuvre à vitesse 1 en utilisant votre capacité <strong>Ailerons Adaptables</strong>, vous pouvez effectuer une action %COORDINATE%. Dans ce cas, sautez votre étape “Effectuer une action”.</smallbody>%LINEBREAK%<sasmall><strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n'êtes pas stressé, vous <b>devez</b> exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], ou [1&nbsp;%BANKRIGHT%].</sasmall>"""
        '"Wampa"':
           display_name: """“Wampa”"""
           text: """Tant que vous effectuez une attaque, vous pouvez dépenser 1 %CHARGE% pour lancer 1 dé d'attaque supplémentaire%LINEBREAK%Après avoir défendu, perdez 1 %CHARGE%."""
        '"Whisper"':
           display_name: """“Whisper”"""
           text: """Après avoir effectué une attaque qui touche, gagnez 1 marqueur d'évasion. %LINEBREAK%<strong>Réseau de Stygium :</strong> après vous être désocculté, vous pouvez effectuer une action %EVADE%. Au début de la phase de dénouement, vous pouvez dépenser 1 marqueur d'évasion pour gagner 1 marqueur d'occultation. """
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """Tant que vous défendez, les résultats %CRIT% sont neutralisés avant les résultats %HIT%.%LINEBREAK%<strong>Chargé et Prêt à Tirer :</strong> tant que vous êtes arrimé, après que votre vaisseau porteur a effectué une attaque principale %FRONTARC% ou %TURRET%, il peut effectuer une attaque principale %REARARC% bonus."""
        '"Zeb" Orrelios (Sheathipede)':
           display_name: """“Zeb” Orrelios (Sheathipede)"""
           text: """Tant que vous défendez, les résultats %CRIT% sont neutralisés avant les résultats %HIT%.%LINEBREAK%<strong>Navette de Communication :</strong> tant que vous êtes arrimé, votre vaisseau porteur gagne %COORDINATE%. Avant que votre vaisseau porteur ne s'active, il peut effectuer une action %COORDINATE%."""
        '"Zeb" Orrelios (TIE Fighter)':
           display_name: """“Zeb” Orrelios (TIE Fighter)"""
           text: """Tant que vous défendez, les résultats %CRIT% sont neutralisés avant les résultats %HIT%."""



    upgrade_translations =
        "0-0-0":
           display_name: """0-0-0"""
           text: """<i>Empire Galactique ou contient Dark Vador ou contient Darth Vader uniquement</i>%LINEBREAK%Au début de la phase d'engagement, vous pouvez choisir 1 vaisseau ennemi à portée 0-1. Dans ce cas, vous gagnez 1 marqueur de calcul sauf si ce vaisseau choisit de gagner 1 marqueur de stress."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, après avoir lancé les dés d'attaque, vous pouvez nommer un type de marqueur vert. Dans ce cas, gagnez 2 marqueurs ioniques et, pendant cette attaque, le défenseur ne peut pas dépenser de marqueur du type nommé."""
        "Andrasta":
           display_name: """Andrasta"""
           text: """<i>Ajoute %RELOAD%</i>%LINEBREAK%<i>Empire Galactique uniquement</i>%LINEBREAK%Ajoutez un emplacement %DEVICE%."""
        "Dauntless":
           display_name: """Dauntless"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Après avoir partiellement exécuté une manœuvre, vous pouvez effectuer 1 action blanche, en la considérant comme rouge."""
        "Ghost":
           display_name: """Ghost"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%1 navette d'attaque ou de classe Sheathipede peut s'arrimer à vous.%LINEBREAK%Les vaisseaux arrimés ne peuvent être déployés que par vos glissières arrière."""
        "Havoc":
           display_name: """Havoc"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Retirez un emplacement %CREW%.Ajoutez un emplacement %SENSOR% et un emplacement %ASTROMECH%."""
        "Hound's Tooth":
           display_name: """Hound's Tooth"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%1 Chasseur de Têtes Z-95-AF4 peut s'arrimer à vous."""
        "IG-2000":
           display_name: """IG-2000"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Vous avez la capacité de pilote de chaque autre vaisseau allié qui possède l'amélioration <strong>IG-2000</strong>."""
        "Marauder":
           display_name: """Marauder"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque principale %REARARC%, vous pouvez relancer 1 dé d'attaque.%LINEBREAK%Ajoutez un emplacement %GUNNER%."""
        "Millennium Falcon":
           display_name: """Faucon Millenium"""
           text: """<i>Ajoute %EVADE%</i>%LINEBREAK%<i>Alliance Rebelle uniquement</i>%LINEBREAK%Tant que vous défendez, si vous avez un marqueur d'évasion, vous pouvez relancer 1 dé de défense."""
        "Mist Hunter":
           display_name: """Mist Hunter"""
           text: """<i>Ajoute %BARRELROLL%</i>%LINEBREAK%<i>Empire Galactique uniquement</i>%LINEBREAK%Ajoutez un emplacement %CANNON%."""
        "Moldy Crow":
           display_name: """Moldy Crow"""
           text: """<i>Alliance Rebelle ou Empire Galactique uniquement</i>%LINEBREAK%Gagnez une arme principale %FRONTARC% avec une valeur de «&nbsp;3&nbsp;».%LINEBREAK%Pendant la phase de dénouement, ne retirez pas jusqu'à 2 marqueurs de concentration."""
        "Outrider":
           display_name: """Outrider"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque qui est gênée, le défenseur lance 1 dé de défense en moins.%LINEBREAK%Après avoir entièrement exécuté une manœuvre, si vous avez traversé ou chevauché un obstacle, vous pouvez retirer 1 de vos marqueurs rouges ou orange."""
        "Phantom":
           display_name: """Phantom"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Vous pouvez vous arrimer à portée 0-1."""
        "Punishing One":
           display_name: """Punishing One"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque principale, si le défenseur est dans votre %FRONTARC%, lancez 1 dé d'attaque supplémentaire.%LINEBREAK% Retirez un emplacement %CREW%. Ajoutez un emplacement %ASTROMECH%."""
        "ST-321":
           display_name: """ST-321"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Après avoir effectué une action %COORDINATE%, vous pouvez choisir un vaisseau ennemi à portée 0-3 du vaisseau coordonné. Dans ce cas, verrouillez ce vaisseau ennemi, en ignorant toute restriction de portée."""
        "Shadow Caster":
           display_name: """Shadow Caster"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Après avoir effectué une attaque qui touche, si le défenseur est dans votre %SINGLETURRETARC% et votre %FRONTARC%, il gagne 1 marqueur de rayon tracteur."""
        "Slave I":
           display_name: """Slave I"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Après avoir révélé une manœuvre de virage (%TURNLEFT% or %TURNRIGHT%) ou de virage sur l'aile (%BANKLEFT% or %BANKRIGHT%), vous pouvez régler votre cadran sur la manœuvre de même vitesse mais de direction opposée. %LINEBREAK%Ajoutez un emplacement %TORPEDO%."""
        "Virago":
           display_name: """Virago"""
           text: """Pendant la phase de dénouement, vous pouvez dépenser 1 %CHARGE% pour effectuer une action %BOOST% rouge.%LINEBREAK%Ajoutez un emplacement %MODIFICATION%."""
        "Ablative Plating":
           display_name: """Blindage Ablatif"""
           text: """<i>Vaisseau grand ou Vaisseau moyen uniquement</i>%LINEBREAK%Avant de subir des dégâts à cause d'un obstacle ou de l'explosion d'une bombe alliée, vous pouvez dépenser 1&nbsp;%CHARGE%. Dans ce cas, prévenez 1 dégât."""
        "Admiral Sloane":
           display_name: """Amiral Sloane"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Après qu'un autre vaisseau allié à portée 0-3 a défendu, s'il est détruit, l'attaquant gagne 2 marqueurs de stress. %LINEBREAK%Tant qu'un vaisseau allié à portée 0-3 effectue une attaque contre un vaisseau stressé, il peut relancer 1 dé d'attaque."""
        "Adv. Proton Torpedoes":
           display_name: """Torpilles à Protons Avancées"""
           text: """<strong>Attaque (%LOCK%) :</strong> dépensez 1 %CHARGE%. Changez 1 résultat&nbsp;%HIT% en un résultat %CRIT%."""
        "Advanced SLAM":
           display_name: """MASL Avancé"""
           text: """<i>Requiert %SLAM%</i>%LINEBREAK%Après avoir effectué une action %SLAM%, si vous avez entièrement exécuté la manœuvre, vous pouvez effectuer une action blanche de votre barre d'action, en la considérant comme rouge."""
        "Advanced Sensors":
           display_name: """Senseurs Avancés"""
           text: """Après avoir révélé votre cadran, vous pouvez effectuer 1 action.%LINEBREAK%Dans ce cas, vous ne pouvez pas effectuer d'autre action pendant votre activation."""
        "Afterburners":
           display_name: """Postcombustion"""
           text: """<i>Vaisseau petit uniquement</i>%LINEBREAK%Après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez dépenser 1&nbsp;%CHARGE% pour effectuer une action %BOOST%, même tant que vous êtes stressé."""
        "Agent Kallus":
           display_name: """Agent Kallus"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%<strong>Mise en Place :</strong> assignez l'état <strong>Traqué</strong> à 1 vaisseau ennemi.%LINEBREAK%Tant que vous effectuez une attaque contre le vaisseau qui possède l'état <strong>Traqué</strong>, vous pouvez changer 1 de vos résultats %FOCUS% en un résultat %HIT%."""
        "Agile Gunner":
           display_name: """Canonnier Adroit"""
           text: """Pendant la phase de dénouement, vous pouvez faire pivoter votre indicateur %SINGLETURRETARC%."""
        "BT-1":
           display_name: """BT-1"""
           text: """<i>Empire Galactique ou contient Dark Vador ou contient Darth Vader uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, vous pouvez changer 1 résultat&nbsp;%HIT% en un résultat %CRIT% pour chaque marqueur de stress qu'a le défenseur."""
        "Barrage Rockets":
           display_name: """Roquettes de Barrage"""
           text: """<strong>Attaque (%FOCUS%) :</strong> dépensez 1 %CHARGE%. Si le défenseur est dans votre %BULLSEYEARC%, vous pouvez dépenser 1 ou plusieurs %CHARGE% pour relancer autant de dés d'attaque."""
        "Baze Malbus":
           display_name: """Baze Malbus"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Tant que vous effectuez une action %FOCUS%, vous pouvez considérer qu'elle est rouge. Dans ce cas, gagnez 1 marqueur de concentration supplémentaire pour chaque vaisseau ennemi à portée 0-1, pour un maximum de 2."""
        "Bistan":
           display_name: """Bistan"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Après avoir effectué une attaque principale, si vous êtes concentré, vous pouvez effectuer une attaque bonus %SINGLETURRETARC% contre un vaisseau que vous n'avez pas encore attaqué à ce round."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%<strong>Mise en Place :</strong> débutez en réserve.%LINEBREAK%À la fin de la Mise en place, placez-vous à portée 0 d'un obstacle et au-delà de la portée 3 de tout vaisseau ennemi."""
        "Bomblet Generator":
           display_name: """Générateur de Sous-Munitions"""
           text: """<strong>Bombe</strong>%LINEBREAK%Pendant la phase de système, vous pouvez dépenser 1&nbsp;%CHARGE% pour larguer une sous-munition avec le gabarit [1&nbsp;%STRAIGHT%].%LINEBREAK%Au début de la phase d'activation, vous pouvez dépenser 1 bouclier pour récupérer 2 %CHARGE%."""
        "Bossk":
           display_name: """Bossk"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Après avoir effectué une attaque principale ratée, si vous n'êtes pas stressé, vous devez recevoir 1 marqueur de stress pour effectuer une attaque principale bonus contre la même cible."""
        "C-3PO":
           display_name: """C-3PO"""
           text: """<i>Ajoute %CALCULATE%</i>%LINEBREAK%<i>Alliance Rebelle uniquement</i>%LINEBREAK%Avant de lancer les dés de défense, vous pouvez dépenser 1 marqueur de calcul pour dire à voix haute un nombre supérieur ou égal à 1. Dans ce cas et si vous obtenez exactement cette quantité de résultats %EVADE% sur votre lancer, ajoutez 1&nbsp;résultat %EVADE%.%LINEBREAK%Après avoir effectué l'action %CALCULATE%, gagnez 1 marqueur de calcul. """
        "Cad Bane":
           display_name: """Cad Bane"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Après avoir largué ou lancé un engin, vous pouvez effectuer une action %BOOST% rouge."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Pendant la phase de système, vous pouvez choisir 1 vaisseau ennemi à portée 1-2, dire à voix haute une direction et une vitesse, puis regarder le cadran de ce vaisseau. Si la direction et la vitesse du vaisseau choisi correspondent à ce que vous avez dit, vous pouvez régler votre cadran sur une autre manœuvre."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Au début de la phase d'engagement, vous pouvez dépenser 2 %CHARGE% pour réparer 1 carte de dégât face visible."""
        "Chewbacca (Scum)":
           display_name: """Chewbacca (Scum)"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Au début de la phase de dénouement, vous pouvez dépenser 1 marqueur de concentration pour réparer 1 de vos cartes de dégât face visible."""
        "Ciena Ree":
           display_name: """Ciena Ree"""
           text: """<i>Requiert %COORDINATE% ou <r>%COORDINATE%</r></i>%LINEBREAK%<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Après avoir effectué une action %COORDINATE%, si le vaisseau coordonné effectue une action %BARRELROLL% ou %BOOST%, il peut gagner 1 marqueur de stress pour pivoter de 90°."""
        "Cikatro Vizago":
           display_name: """Cikatro Vizago"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Pendant la phase de dénouement, vous pouvez choisir 2 améliorations %ILLICIT% équipant des vaisseaux alliés à portée 0-1. Dans ce cas, vous pouvez échanger ces améliorations. %LINEBREAK%<strong>Fin de Partie&nbsp;:</strong> remettez toutes les améliorations %ILLICIT% sur leurs vaisseaux d'origine."""
        "Cloaking Device":
           display_name: """Appareil d'Occultation"""
           text: """<i>Vaisseau petit ou Vaisseau moyen uniquement</i>%LINEBREAK%<strong>Action :</strong> dépensez 1 %CHARGE% pour effectuer une action %CLOAK%.%LINEBREAK%Au début de la phase de préparation, lancez 1 dé d'attaque. Sur un résultat %FOCUS%, désoccultez-vous ou défaussez votre marqueur d'occultation."""
        "Cluster Missiles":
           display_name: """Missiles Groupés"""
           text: """<strong>Attaque (%LOCK%) :</strong> dépensez 1 %CHARGE%. Après cette attaque, vous pouvez effectuer cette attaque en tant qu'attaque bonus contre une cible différente à portée 0-1 du défenseur, en ignorant le prérequis %LOCK%."""
        "Collision Detector":
           display_name: """Détecteur Anti-Collision"""
           text: """Tant que vous accélérez ou que vous effectuez un tonneau, vous pouvez vous déplacer à travers ou chevaucher les obstacles. %LINEBREAK%Après vous être déplacé à travers ou avoir chevauché un obstacle, vous pouvez dépenser 1&nbsp;%CHARGE% pour ignorer ses effets jusqu'à la fin du round."""
        "Composure":
           display_name: """Maîtrise de Soi"""
           text: """<i>Requiert <r>%FOCUS%</r> ou %FOCUS%</i>%LINEBREAK%Après avoir échoué à une action, si vous n'avez aucun marqueur vert, vous pouvez effectuer une action %FOCUS%."""
        "Concussion Missiles":
           display_name: """Missiles à Concussion"""
           text: """<strong>Attaque (%LOCK%) :</strong> dépensez 1 %CHARGE%. Après que cette attaque a touché, chaque vaisseau à portée 0-1 du défenseur expose 1 de ses cartes de dégât."""
        "Conner Nets":
           display_name: """Filet Conner"""
           text: """<strong>Mine</strong>%LINEBREAK%Pendant la phase de système, vous pouvez dépenser 1 %CHARGE% pour larguer un filet Conner en utilisant le gabarit [1&nbsp;%STRAIGHT%].%LINEBREAK%La %CHARGE% de cette carte ne peut pas être récupérée."""
        "Contraband Cybernetics":
           display_name: """Cybernétique de Contrebande"""
           text: """Avant votre activation, vous pouvez dépenser 1 %CHARGE%. Dans ce cas, jusqu'à la fin du round, vous pouvez effectuer des actions et exécuter des manœuvres rouges, même si vous êtes stressé."""
        "Crack Shot":
           display_name: """Tireur Hors Pair"""
           text: """Tant que vous effectuez une attaque principale, si le défenseur est dans votre %BULLSEYEARC%, avant l'étape « Neutraliser les résultats », vous pouvez dépenser 1&nbsp;%CHARGE% pour annuler 1 résultat %EVADE%."""
        "Daredevil":
           display_name: """Casse-Cou"""
           text: """<i>Requiert %BOOST%</i>%LINEBREAK%<i>Vaisseau petit uniquement</i>%LINEBREAK%Tant que vous effectuez une action %BOOST% blanche, vous pouvez considérer qu'elle est rouge pour utiliser le gabarit [1&nbsp;%TURNLEFT%] ou [1&nbsp;%TURNRIGHT%] à la place."""
        "Darth Vader":
           display_name: """Dark Vador"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Au début de la phase d'engagement, vous pouvez choisir 1 vaisseau dans votre arc de tir à portée 0-2 et dépenser 1 %FORCE%. Dans ce cas, ce vaisseau subit 1 dégât&nbsp;%HIT% sauf s'il choisit de retirer 1 marqueur vert."""
        "Deadman's Switch":
           display_name: """Salve Automatique"""
           text: """Après que vous avez été détruit, chaque autre vaisseau à portée 0-1 subit 1 dégât&nbsp;%HIT%."""
        "Death Troopers":
           display_name: """Death Troopers"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Pendant la phase d'activation, les vaisseaux ennemis à portée 0-1 ne peuvent pas retirer de marqueurs de stress."""
        "Debris Gambit":
           display_name: """Gambit des Astéroïdes"""
           text: """<i>Ajoute <r>%EVADE%</r></i>%LINEBREAK%<i>Vaisseau petit ou Vaisseau moyen uniquement</i>%LINEBREAK%Tant que vous effectuez une action %EVADE% rouge, s'il y a un obstacle à portée 0-1, considérez cette action comme blanche à la place."""
        "Dengar":
           display_name: """Dengar"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Après avoir défendu, si l'attaquant est dans votre arc de tir, vous pouvez dépenser 1&nbsp;%CHARGE%. Dans ce cas, lancez 1 dé d'attaque sauf si l'attaquant choisit de retirer 1 marqueur vert. Sur un résultat %HIT% ou %CRIT%, l'attaquant subit 1 dégât&nbsp;%HIT%."""
        "Director Krennic":
           display_name: """Directeur Krennic"""
           text: """<i>Ajoute %LOCK%</i>%LINEBREAK%<i>Racailles et Scélérats uniquement</i>%LINEBREAK%<strong>Mise en Place :</strong> avant de placer les forces, assignez l'état <strong>Prototype Optimisé</strong> à un autre vaisseau allié."""
        "Dorsal Turret":
           display_name: """Tourelle Dorsale"""
           text: """<i>Ajoute %ROTATEARC%</i>%LINEBREAK%<strong>Attaque</strong>"""
        "Electronic Baffle":
           display_name: """Déflecteur Électronique"""
           text: """Pendant la phase de dénouement, vous pouvez subir 1 dégât&nbsp;%HIT% pour retirer 1 marqueur rouge."""
        "Elusive":
           display_name: """Insaisissable"""
           text: """<i>Vaisseau petit ou Vaisseau moyen uniquement</i>%LINEBREAK%Tant que vous défendez, vous pouvez dépenser 1 %CHARGE% pour relancer 1 dé de défense.%LINEBREAK%Après avoir entièrement exécuté une manœuvre rouge, récupérez 1 %CHARGE%."""
        "Emperor Palpatine":
           display_name: """Empereur Palpatine"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Tant qu'un autre vaisseau allié défend ou effectue une attaque, vous pouvez dépenser 1&nbsp;%FORCE% pour modifier 1 de ses dés comme si ce vaisseau avait dépensé 1&nbsp;%FORCE%."""
        "Engine Upgrade":
           display_name: """Moteurs Améliorés"""
           text: """Coût variable%LINEBREAK%<i>Ajoute %BOOST%</i>%LINEBREAK%<i>Requiert <r>%BOOST%</r></i>%LINEBREAK%<i class = flavor_text>Les armées de grande taille comme celles de l'Empire Galactique ont des vaisseaux équipés de moteurs standardisés, mais les pilotes indépendants ou les petites organisations remplacent souvent les accouplements, rajoutent des propulseurs ou utilisent du carburant haute performance afin d'obtenir une poussée plus forte.</i>"""
        "Expert Handling":
           display_name: """As de l'Espace"""
           text: """Coût variable%LINEBREAK%<i>Ajoute %BARRELROLL%</i>%LINEBREAK%<i>Requiert <r>%BARRELROLL%</r></i>%LINEBREAK%<i class = flavor_text>Bien que les chasseurs lourds puissent être déportés lors d'un tonneau, les pilotes chevronnés savent comment s'y prendre sans malmener leur vaisseau ou se rendre vulnérable à une attaque.</i>"""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Après avoir effectué une attaque principale, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une attaque bonus %SINGLETURRETARC% depuis une %SINGLETURRETARC% avec laquelle vous n'avez pas attaqué à ce round. Dans ce cas et si vous êtes stressé, vous pouvez relancer 1 dé d'attaque."""
        "Fearless":
           display_name: """Intrépide"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque principale %FRONTARC%, si la portée d'attaque est 1 et que vous êtes dans l'%FRONTARC% du défenseur, vous pouvez changer 1 de vos résultats en un résultat %HIT%."""
        "Feedback Array":
           display_name: """Dispositif de Retour"""
           text: """Avant de vous engager, vous pouvez gagner 1 marqueur ionique et 1 marqueur de désarmement. Dans ce cas, chaque vaisseau à portée 0 subit 1 dégât %HIT%."""
        "Fifth Brother":
           display_name: """Le Cinquième Frère"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, vous pouvez dépenser 1&nbsp;%FORCE% pour changer 1 de vos résultats %FOCUS% en un résultat %CRIT%."""
        "Fire-Control System":
           display_name: """Système de Commande de Tir"""
           text: """Tant que vous effectuez une attaque, si vous avez un verrouillage sur le défenseur, vous pouvez relancer 1 dé d'attaque. Dans ce cas, vous ne pouvez pas dépenser votre marqueur de verrouillage pendant cette attaque."""
        "Freelance Slicer":
           display_name: """Slicer Free-lance"""
           text: """Tant que vous défendez et avant que les dés d'attaque ne soient lancés, vous pouvez dépenser un marqueur de verrouillage que vous avez sur l'attaquant pour lancer 1 dé d'attaque. Dans ce cas, l'attaquant gagne 1 marqueur de brouillage. Puis, sur un résultat %HIT% ou %CRIT%, gagnez 1 marqueur de brouillage."""
        'GNK "Gonk" Droid':
           display_name: """Droïde “Gonk” GNK"""
           text: """<strong>Mise en Place :</strong> perdez 1 %CHARGE%.%LINEBREAK%<strong>Action :</strong> récupérez 1 %CHARGE%.%LINEBREAK%<strong>Action :</strong> dépensez 1 %CHARGE% pour récupérer 1 bouclier."""
        "Grand Inquisitor":
           display_name: """Grand Inquisiteur"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Après qu'un vaisseau ennemi à portée 0-2 a révélé son cadran, vous pouvez dépenser 1 %FORCE% pour effectuer 1 action blanche de votre barre d'action, en considérant cette action comme rouge."""
        "Grand Moff Tarkin":
           display_name: """Grand Moff Tarkin"""
           text: """<i>Requiert %LOCK% ou <r>%LOCK%</r></i>%LINEBREAK%<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Pendant la phase de système, vous pouvez dépenser 2&nbsp;%CHARGE%. Dans ce cas, chaque vaisseau allié peut verrouiller un vaisseau que vous avez verrouillé."""
        "Greedo":
           display_name: """Greedo"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, vous pouvez dépenser 1&nbsp;%CHARGE% pour changer 1 résultat %HIT% en un résultat %CRIT%.%LINEBREAK%Tant que vous défendez, si votre %CHARGE% est active, l'attaquant peut changer 1 résultat %HIT% en un résultat %CRIT%."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Pendant la phase d'engagement, à l'initiative 7, vous pouvez effectuer une attaque %SINGLETURRETARC%. Vous ne pouvez pas effectuer d'autre attaque avec cette %SINGLETURRETARC% à ce round."""
        "Han Solo (Scum)":
           display_name: """Han Solo (Scum)"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Avant de vous engager, vous pouvez effectuer une action %FOCUS% rouge."""
        "Heavy Laser Cannon":
           display_name: """Canon Laser Lourd"""
           text: """<strong>Attaque :</strong> après l'étape «&nbsp;Modifier les dés d'attaque&nbsp;», changez tous les résultats %CRIT% en résultats %HIT%."""
        "Heightened Perception":
           display_name: """Perception Renforcée"""
           text: """Au début de la phase d'engagement, vous pouvez dépenser 1&nbsp;%FORCE%. Dans ce cas, pendant cette phase, engagez-vous à l'initiative 7 au lieu de le faire à votre valeur d'initiative standard."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Vous pouvez exécuter des manœuvres rouges même si vous êtes stressé. Après avoir entièrement exécuté une manœuvre rouge, si vous avez au moins 3 marqueurs de stress, retirez 1 marqueur de stress et subissez 1 dégât&nbsp;%HIT%."""
        "Homing Missiles":
           display_name: """Missiles à Tête Chercheuse"""
           text: """<strong>Attaque (%LOCK%) :</strong> dépensez 1 %CHARGE%. Après que vous avez déclaré le défenseur, il peut choisir de subir 1 dégât&nbsp;%HIT%. Dans ce cas, sautez les étapes «&nbsp;Dés d'attaque&nbsp;» et «&nbsp;Dés de défense&nbsp;» et considérez que l'attaque a touché."""
        "Hotshot Gunner":
           display_name: """Artilleur Hors Pair"""
           text: """Tant que vous effectuez une attaque %SINGLETURRETARC%, après l'étape «&nbsp;Modifier les dés de défense&nbsp;», le défenseur retire 1 marqueur de concentration ou de calcul."""
        "Hull Upgrade":
           display_name: """Coque Améliorée"""
           text: """Coût variable%LINEBREAK%<i class = flavor_text>Quand on ne peut pas s'offrir un générateur de boucliers améliorés, souder des plaques de blindage sur la coque du vaisseau peut être un bon substitut.</i>"""
        "IG-88D":
           display_name: """IG-88D"""
           text: """<i>Ajoute %CALCULATE%</i>%LINEBREAK%<i>Empire Galactique uniquement</i>%LINEBREAK%Vous avez la capacité de pilote de chaque autre vaisseau allié qui possède l'amélioration <strong>IG-2000</strong>.%LINEBREAK%Après avoir effectué une action %CALCULATE%, gagnez 1 marqueur de calcul."""
        "ISB Slicer":
           display_name: """Slicer du BSI"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Pendant la phase de dénouement, les vaisseaux ennemis à portée 1-2 ne peuvent pas retirer de marqueurs de brouillage."""
        "Inertial Dampeners":
           display_name: """Amortisseurs Inertiels"""
           text: """Avant d'exécuter une manœuvre, vous pouvez dépenser 1 bouclier. Dans ce cas, exécutez une manœuvre [0&nbsp;%STOP%] blanche à la place de celle que vous avez révélée, puis gagnez 1 marqueur de stress."""
        "Informant":
           display_name: """Informateur"""
           text: """<strong>Mise en Place :</strong> après avoir placé les forces, choisissez 1 vaisseau ennemi et assignez-lui l'état <strong>Dispositif d'Écoute</strong>."""
        "Instinctive Aim":
           display_name: """Visée Instinctive"""
           text: """Tant que vous effectuez une attaque spéciale, vous pouvez dépenser 1&nbsp;%FORCE% pour ignorer le prérequis %FOCUS% ou %LOCK%."""
        "Intimidation":
           display_name: """Intimidation"""
           text: """Tant qu'un vaisseau ennemi à portée 0 défend, il lance un dé de défense en moins."""
        "Ion Cannon":
           display_name: """Canon Ionique"""
           text: """<strong>Attaque :</strong> si cette attaque touche, dépensez 1 résultat&nbsp;%HIT% ou %CRIT% pour faire subir 1 dégât %HIT% au défenseur. Tous les résultats %HIT%/%CRIT% restants infligent des marqueurs ioniques au lieu des dégâts."""
        "Ion Cannon Turret":
           display_name: """Tourelle à Canons Ioniques"""
           text: """<i>Ajoute %ROTATEARC%</i>%LINEBREAK%<strong>Attaque :</strong> si cette attaque touche, dépensez 1 résultat&nbsp;%HIT% ou %CRIT% pour faire subir 1 dégât&nbsp;%HIT% au défenseur. Tous les résultats %HIT%/%CRIT% restants infligent des marqueurs ioniques au lieu des dégâts."""
        "Ion Missiles":
           display_name: """Missiles Ioniques"""
           text: """<strong>Attaque (%LOCK%) :<strong> dépensez 1 %CHARGE%. Si cette attaque touche, dépensez 1 résultat&nbsp;%HIT% ou %CRIT% pour faire subir 1 dégât&nbsp;%HIT% au défenseur. Tous les résultats %HIT%/%CRIT% restants infligent des marqueurs ioniques au lieu des dégâts."""
        "Ion Torpedoes":
           display_name: """Torpilles Ioniques"""
           text: """<strong>Attaque (%LOCK%) :</strong> dépensez 1 %CHARGE%. Si cette attaque touche, dépensez 1 résultat&nbsp;%HIT% ou %CRIT% pour faire subir 1 dégât&nbsp;%HIT% au défenseur. Tous les résultats %HIT%/%CRIT% restants infligent des marqueurs ioniques au lieu des dégâts."""
        "Jabba the Hutt":
           display_name: """Jabba Le Hutt"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Pendant la phase de dénouement, vous pouvez choisir 1 vaisseau allié à portée 0-2 et dépenser 1&nbsp;%CHARGE%. Dans ce cas, ce vaisseau récupère 1&nbsp;%CHARGE% sur 1 de ses améliorations %ILLICIT% équipées."""
        "Jamming Beam":
           display_name: """Rayon de Brouillage"""
           text: """<strong>Attaque :</strong> si cette attaque touche, tous les résultats %HIT%/%CRIT% infligent des marqueurs de brouillage au lieu des dégâts."""
        "Juke":
           display_name: """Feinte"""
           text: """<i>Vaisseau petit ou Vaisseau moyen uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, si vous avez un marqueur d'évasion, vous pouvez changer 1 des résultats %EVADE% du défenseur en un résultat %FOCUS%."""
        "Jyn Erso":
           display_name: """Jyn Erso"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Si un vaisseau allié à portée 0-3 est censé gagner un marqueur de concentration, il peut gagner 1 marqueur d'évasion à la place."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Après qu'un vaisseau allié à portée 0-2 a entièrement exécuté une manœuvre blanche, vous pouvez dépenser 1 %FORCE% pour retirer 1 marqueur de stress de ce vaisseau."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Au début de la phase de dénouement, vous pouvez choisir 1 vaisseau ennemi à portée 0-2 dans votre arc de tir. Dans ce cas, ce vaisseau ennemi ne retire pas ses marqueurs de rayon tracteur."""
        "L3-37":
           display_name: """L3-37"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%<strong>Mise en Place :</strong> équipez-vous avec cette face visible.%LINEBREAK%Tant que vous défendez, vous pouvez retourner cette carte. Dans ce cas, l'attaquant doit relancer tous les dés d'attaque. %LINEBREAK% %LINEBREAK%Si vous n'êtes pas protégé, diminuez la difficulté de vos manœuvres de virages sur l'aile (%BANKLEFT% et %BANKRIGHT%)."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%<strong>Action :</strong> lancez 2 dés de défense. Pour chaque résultat %FOCUS% obtenu, gagnez 1 marqueur de concentration. Pour chaque résultat %EVADE% obtenu, gagnez 1 marqueur d'évasion. Si les deux résultats sont vierges, le joueur adverse choisit concentration ou évasion. Vous gagnez 1 marqueur de ce type."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian (Scum)"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Après avoir lancé des dés, vous pouvez dépenser 1 marqueur vert pour relancer jusqu'à 2 de vos résultats."""
        "Lando's Millennium Falcon":
           display_name: """Faucon Millenium de Lando"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%1 Vaisseau de secours peut s'arrimer à vous.%LINEBREAK%Tant que vous avez un Vaisseau de secours arrimé, vous pouvez dépenser ses boucliers comme s'ils étaient sur votre carte de vaisseau.%LINEBREAK%Tant que vous effectuez une attaque principale contre un vaisseau stressé, lancez 1 dé d'attaque supplémentaire."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Tant que vous défendez, si l'attaquant est stressé, vous pouvez retirer 1 marqueur de stress de l'attaquant pour changer 1 de vos résultats Vierge/%FOCUS% en un résultat %EVADE%."""
        "Leia Organa":
           display_name: """Leia Organa"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Au début de la phase d'activation, vous pouvez dépenser 3&nbsp;%CHARGE%. Pendant cette phase, chaque vaisseau allié réduit la difficulté de ses manœuvres rouges."""
        "Lone Wolf":
           display_name: """Loup Solitaire"""
           text: """Tant que vous défendez ou que vous effectuez une attaque, s'il n'y a aucun autre vaisseau allié à portée 0-2, vous pouvez dépenser 1 %CHARGE% pour relancer 1 de vos dés."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Au début de la phase d'engagement, vous pouvez dépenser 1&nbsp;%FORCE% pour faire pivoter votre indicateur %SINGLETURRETARC%."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Après avoir défendu, si l'attaque touche, vous pouvez verrouiller l'attaquant."""
        "Marksmanship":
           display_name: """Adresse au Tir"""
           text: """Tant que vous effectuez une attaque, si le défenseur est dans votre %BULLSEYEARC%, vous pouvez changer 1 résultat %HIT% en un résultat %CRIT%."""
        "Maul":
           display_name: """Maul"""
           text: """<i>Empire Galactique ou contient Ezra Bridger ou contient Ezra Bridger (Sheathipede) ou contient Ezra Bridger (TIE Fighter) uniquement</i>%LINEBREAK%Après avoir subi des dégâts, vous pouvez gagner 1 marqueur de stress pour récupérer 1&nbsp;%FORCE%.%LINEBREAK%Vous pouvez vous équiper d'améliorations “Côté Obscur”."""
        "Minister Tua":
           display_name: """Ministre Tua"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Au début de la phase d'engagement, si vous êtes endommagé, vous pouvez effectuer une action %FOCUS% rouge."""
        "Moff Jerjerrod":
           display_name: """Moff Jerjerrod"""
           text: """<i>Requiert %COORDINATE% ou <r>%COORDINATE%</r></i>%LINEBREAK%<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Pendant la phase de système, vous pouvez dépenser 2&nbsp;%CHARGE%. Dans ce cas, choisissez le gabarit [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] ou [1&nbsp;%BANKRIGHT%]. Chaque vaisseau allié peut effectuer une action %BOOST% rouge en utilisant ce gabarit."""
        "Munitions Failsafe":
           display_name: """Munitions à Sûreté Intégrée"""
           text: """Tant que vous effectuez une attaque %TORPEDO% ou %MISSILE%, après avoir lancé les dés d'attaque, vous pouvez annuler tous les résultats des dés pour récupérer 1 %CHARGE% que vous avez dépensée comme coût pour l'attaque."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Diminuez la difficulté de vos manœuvres de virages sur l'aile (%BANKLEFT% et %BANKRIGHT%)."""
        "Novice Technician":
           display_name: """Apprenti Technicien"""
           text: """À la fin du round, vous pouvez lancer 1 dé d'attaque pour réparer 1 carte de dégât face visible. Puis, sur un résultat %HIT%, exposez 1 carte de dégât."""
        "Os-1 Arsenal Loadout":
           display_name: """Arsenal Os-1 Embarqué"""
           text: """Tant que vous avez exactement 1 marqueur de désarmement, vous pouvez toujours effectuer des attaques %TORPEDO% et %MISSILE% contre des cibles que vous avez verrouillées. Dans ce cas, vous ne pouvez pas dépenser votre marqueur de verrouillage pendant cette attaque.%LINEBREAK%Ajoutez des emplacements %TORPEDO% et %MISSILE%."""
        "Outmaneuver":
           display_name: """Manœuvre Improbable"""
           text: """Tant que vous effectuez une attaque %FRONTARC%, si vous n'êtes pas dans l'arc de tir du défenseur, il lance 1 dé de défense en moins."""
        "Perceptive Copilot":
           display_name: """Copilote Perspicace"""
           text: """Après avoir effectué une action %FOCUS%, gagnez 1 marqueur de concentration."""
        "Pivot Wing":
           display_name: """Aile Pivot"""
           text: """<strong>Repliée :</strong> Tant que vous défendez, lancez 1 dé de défense en moins.%LINEBREAK%Après avoir exécuté une manœuvre [0&nbsp;%STOP%], vous pouvez faire pivoter votre vaisseau de 90° ou 180°.%LINEBREAK%Avant votre activation, vous pouvez retourner cette carte. %LINEBREAK% <strong>Dépliée :</strong> Avant votre activation, vous pouvez retourner cette carte. %LINEBREAK%"""
        "Predator":
           display_name: """Prédateur"""
           text: """Tant que vous effectuez une attaque principale, si le défenseur est dans votre %BULLSEYEARC%, vous pouvez relancer 1 dé d'attaque."""
        "Proton Bombs":
           display_name: """Bombe à Protons"""
           text: """<strong>Bombe</strong>%LINEBREAK%Pendant la phase de système, vous pouvez dépenser 1&nbsp;%CHARGE% pour larguer une bombe à protons en utilisant le gabarit [1&nbsp;%STRAIGHT%]."""
        "Proton Rockets":
           display_name: """Roquettes à Protons"""
           text: """<strong>Attaque (%FOCUS%) :</strong> dépensez 1&nbsp;%CHARGE%."""
        "Proton Torpedoes":
           display_name: """Torpilles à Protons"""
           text: """<strong>Attaque (%LOCK%) :</strong> dépensez 1 %CHARGE%. Changez 1 résultat&nbsp;%HIT% en un résultat %CRIT%."""
        "Proximity Mines":
           display_name: """Mine de Proximité"""
           text: """<strong>Mine</strong>%LINEBREAK%Pendant la phase de système, vous pouvez dépenser 1 %CHARGE% pour larguer une mine de proximité en utilisant le gabarit [1&nbsp;%STRAIGHT%].%LINEBREAK%Les %CHARGE% de cette carte ne peuvent pas être récupérées."""
        "Qi'ra":
           display_name: """Qi'ra"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Tant que vous vous déplacez et effectuez des attaques, vous ignorez les obstacles que vous verrouillez."""
        "R2 Astromech":
           display_name: """Astromech R2"""
           text: """Après avoir révélé votre cadran, vous pouvez dépenser 1 %CHARGE% et gagner 1 marqueur de désarmement pour récupérer 1 bouclier."""
        "R2-D2 (Crew)":
           display_name: """R2-D2 (Crew)"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Pendant la phase de dénouement, si vous êtes endommagé et n'êtes pas protégé, vous pouvez lancer 1 dé d'attaque pour récupérer 1 bouclier. Sur un résultat %HIT%, exposez 1 de vos cartes de dégât."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Après avoir révélé votre cadran, vous pouvez dépenser 1&nbsp;%CHARGE% et gagner 1 marqueur de désarmement pour récupérer 1 bouclier."""
        "R3 Astromech":
           display_name: """Astromech R3"""
           text: """Vous pouvez maintenir jusqu'à 2 cibles verrouillées. Chaque verrouillage doit être sur un objet différent. %LINEBREAK%Après avoir effectué une action %LOCK%, vous pouvez verrouiller une cible."""
        "R4 Astromech":
           display_name: """Astromech R4"""
           text: """<i>Vaisseau petit uniquement</i>%LINEBREAK%Diminuez la difficulté de vos manœuvres de base (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%) ayant une vitesse 1-2."""
        "R5 Astromech":
           display_name: """Astromech R5"""
           text: """<strong>Action :</strong> dépensez 1&nbsp;%CHARGE% pour réparer 1 carte de dégât face cachée.%LINEBREAK%<strong>Action :</strong> réparez 1 carte de dégât Vaisseau face visible."""
        "R5-D8":
           display_name: """R5-D8"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%<strong>Action :</strong> dépensez 1&nbsp;%CHARGE% pour réparer 1 carte de dégât face cachée.%LINEBREAK%<strong>Action :</strong> réparez 1 carte de dégât Vaisseau face visible."""
        "R5-P8":
           display_name: """R5-P8"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque contre un défenseur dans votre %FRONTARC%, vous pouvez dépenser 1&nbsp;%CHARGE% pour relancer 1 dé d'attaque. Si le résultat relancé est un résultat %CRIT%, subissez 1 dégât&nbsp;%CRIT%."""
        "R5-TK":
           display_name: """R5-TK"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Vous pouvez effectuer des attaques contre des vaisseaux alliés."""
        "Rigged Cargo Chute":
           display_name: """Largage de Cargaison"""
           text: """<i>Vaisseau grand ou Vaisseau moyen uniquement</i>%LINEBREAK%<strong>Action :</strong> dépensez 1 %CHARGE%. Larguez 1 cargaison égarée en utilisant le gabarit [1&nbsp;%STRAIGHT%]."""
        "Ruthless":
           display_name: """Impitoyable"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, vous pouvez choisir un autre vaisseau allié à portée 0-1 du défenseur. Dans ce cas, le vaisseau choisi subit 1 dégât&nbsp;%HIT% et vous pouvez changer 1 de vos résultats de dé en un résultat %HIT%."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%<strong>Mise en Place :</strong> placez sur cette carte les marqueurs suivants : 1 ionique, 1 brouillage, 1 stress, 1 rayon tracteur. %LINEBREAK%Après qu'un vaisseau a subi les effets d'une bombe alliée, vous pouvez retirer 1 marqueur ionique, de brouillage, de stress ou de rayon tracteur de cette carte. Dans ce cas, ce vaisseau gagne un marqueur correspondant."""
        "Saturation Salvo":
           display_name: """Salve de Saturation"""
           text: """<i>Requiert %RELOAD% ou <r>%RELOAD%</r></i>%LINEBREAK%Tant que vous effectuez une attaque %TORPEDO% ou %MISSILE%, vous pouvez dépenser 1&nbsp;%CHARGE% de cette amélioration. Dans ce cas, choisissez deux dés de défense. Le défenseur doit relancer ces dés."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, vous pouvez subir 1 dégât %HIT% pour changer tous vos résultats %FOCUS% en résultats %CRIT%."""
        "Seasoned Navigator":
           display_name: """Navigateur Chevronné"""
           text: """Après avoir révélé votre cadran de manœuvres, vous pouvez régler votre cadran sur une autre manœuvre non-rouge de même vitesse. Tant que vous exécutez cette manœuvre, augmentez sa difficulté."""
        "Seismic Charges":
           display_name: """Charges Sismiques"""
           text: """<strong>Bombe</strong>%LINEBREAK%Pendant la phase de système, vous pouvez dépenser 1 %CHARGE% pour larguer une charge sismique en utilisant le gabarit [1&nbsp;%STRAIGHT%]."""
        "Selfless":
           display_name: """Altruisme"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Tant qu'un autre vaisseau allié à portée 0-1 défend, avant l'étape «&nbsp;Neutraliser les résultats&nbsp;», si vous êtes dans l'arc de l'attaque, vous pouvez subir 1 dégât %CRIT% pour annuler 1 résultat %CRIT%."""
        "Sense":
           display_name: """Sens"""
           text: """Pendant la phase de système, vous pouvez choisir 1 vaisseau à portée 0-1 et regarder son cadran. Si vous dépensez 1&nbsp;%FORCE%, vous pouvez choisir un vaisseau à portée 0-3 à la place."""
        "Servomotor S-Foils":
           display_name: """Servomoteur S-Foils"""
           text: """<strong>Déplié :</strong> Avant votre activation, vous pouvez retourner cette carte. %LINEBREAK% <strong>Replié :</strong> <i>Ajoute %BOOST% ,  %FOCUS%&nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i>&nbsp;<r>%BOOST%</r></i>%LINEBREAK%Tant que vous effectuez une attaque principale, lancez 1 dé d'attaque en moins.%LINEBREAK%Avant votre activation, vous pouvez retourner cette carte."""
        "Seventh Sister":
           display_name: """La Septième Sœur%LINEBREAK%"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Si un vaisseau ennemi à portée 0-1 est censé gagner un marqueur de stress, vous pouvez dépenser 1 %FORCE% pour qu'il gagne 1 marqueur de brouillage ou de rayon tracteur à la place."""
        "Shield Upgrade":
           display_name: """Boucliers Améliorés"""
           text: """Coût variable%LINEBREAK%<i class = flavor_text>Les écrans déflecteurs sont la principale protection de la plupart des vaisseaux, à l'exception des chasseurs légers. Améliorer les boucliers d'un vaisseau peut se révéler coûteux, mais seuls les pilotes les plus présomptueux, ou les plus téméraires, songent à se passer de ce type d'investissement.</i>"""
        "Skilled Bombardier":
           display_name: """Bombardier Compétent"""
           text: """Si vous devez larguer ou lancer un engin, vous pouvez utiliser un gabarit de même direction mais avec une vitesse supérieure ou inférieure de 1."""
        "Squad Leader":
           display_name: """Chef d'Escouade"""
           text: """<i>Ajoute <r>%COORDINATE%</r></i>%LINEBREAK%Tant que vous coordonnez, le vaisseau que vous avez choisi peut effectuer une action seulement si celle-ci est également dans votre barre d'action. """
        "Static Discharge Vanes":
           display_name: """Ailettes Statiques de Décharge"""
           text: """Si vous devez gagner un marqueur ionique ou de brouillage, vous pouvez choisir un vaisseau à portée 0-1. Dans ce cas, gagnez 1 marqueur de stress et transférez 1 marqueur ionique ou de brouillage à ce vaisseau."""
        "Stealth Device":
           display_name: """Système d'Occultation"""
           text: """Coût variable%LINEBREAK%Tant que vous défendez, si votre %CHARGE% est active, lancez 1 dé de défense supplémentaire.%LINEBREAK%Après avoir subi des dégâts, perdez 1&nbsp;%CHARGE%."""
        "Supernatural Reflexes":
           display_name: """Réflexes Surnaturels"""
           text: """<i>Vaisseau petit uniquement</i>%LINEBREAK%Avant votre activation, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une action %BARRELROLL% ou %BOOST%. Puis, si vous avez effectué une action qui n'est pas dans votre barre d'action, subissez 1 dégât %HIT%."""
        "Swarm Tactics":
           display_name: """Tactique de Nuée"""
           text: """Au début de la phase d'engagement, vous pouvez choisir 1 vaisseau allié à portée 1. Dans ce cas, considérez que son initiative est égale à la vôtre jusqu'à la fin du round."""
        "Tactical Officer":
           display_name: """Officier Tactique"""
           text: """<i>Ajoute %COORDINATE%</i>%LINEBREAK%<i>Requiert <r>%COORDINATE%</r></i>%LINEBREAK%<i class = flavor_text>Dans la confusion d'un combat spatial, un simple ordre peut faire la différence entre une victoire et un carnage.</i>"""
        "Tactical Scrambler":
           display_name: """Brouilleur Tactique"""
           text: """<i>Vaisseau grand ou Vaisseau moyen uniquement</i>%LINEBREAK%Tant que vous gênez l'attaque d'un vaisseau ennemi, le défenseur lance 1 dé de défense supplémentaire."""
        "Tobias Beckett":
           display_name: """Tobias Beckett"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%<strong>Mise en Place :</strong> après avoir placé les forces, vous pouvez choisir 1 obstacle dans la zone de jeu. Dans ce cas, placez-le n'importe où dans la zone de jeu au-delà de la portée 2 de tout bord ou vaisseau et au-delà de la portée 1 de tout autre obstacle."""
        "Tractor Beam":
           display_name: """Rayon Tracteur"""
           text: """<strong>Attaque :</strong> si cette attaque touche, tous les résultats %HIT%/%CRIT% infligent des marqueurs de rayon tracteur au lieu des dégâts."""
        "Trajectory Simulator":
           display_name: """Simulateur de Trajectoire"""
           text: """Pendant la phase de système, si vous êtes censé larguer ou lancer une bombe, vous pouvez la lancer en utilisant le gabarit [5&nbsp;%STRAIGHT%] à la place."""
        "Trick Shot":
           display_name: """Tir Habile"""
           text: """Tant que vous effectuez une attaque qui est gênée par un obstacle, lancez 1 dé d'attaque supplémentaire."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Après avoir partiellement exécuté une manœuvre, vous pouvez subir 1 dégât&nbsp;%HIT% pour effectuer 1 action blanche."""
        "Veteran Tail Gunner":
           display_name: """Artilleur de Poupe Vétéran"""
           text: """Après avoir effectué une attaque principale %FRONTARC%, vous pouvez effectuer une attaque principale %REARARC% bonus."""
        "Veteran Turret Gunner":
           display_name: """Artilleur de Tourelle Vétéran"""
           text: """<i>Requiert <r>%ROTATEARC%</r> ou %ROTATEARC%</i>%LINEBREAK%Après avoir effectué une attaque principale, vous pouvez effectuer une attaque bonus %SINGLETURRETARC% en utilisant une %SINGLETURRETARC% que vous n'avez pas déjà utilisée pour attaquer à ce round."""
        "Xg-1 Assault Configuration":
           display_name: """Configuration d'Assaut Xg-1"""
           text: """Tant que vous avez exactement 1 marqueur de désarmement, vous pouvez toujours effectuer des attaques %CANNON%. Tant que vous effectuez une attaque %CANNON% alors que vous êtes désarmé, lancez 3 dés d'attaque au maximum. %LINEBREAK%Ajoutez un emplacement %CANNON%."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, si vous n'êtes pas stressé, vous pouvez choisir 1 dé de défense et gagner 1 marqueur de stress. Dans ce cas, le défenseur doit relancer le dé choisi."""
        '"Chopper" (Crew)':
           display_name: """“Chopper” (Crew)"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Pendant l'étape «&nbsp;Effectuer une action&nbsp;», vous pouvez effectuer 1 action, même si vous êtes stressé. Après avoir effectué une action en étant stressé, subissez 1 dégât&nbsp;%HIT% sauf si vous exposez 1 de vos cartes de dégât."""
        '"Chopper" (Astromech)':
           display_name: """“Chopper” (Astromech)"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%<strong>Action :</strong> dépensez 1&nbsp;%CHARGE% non-récurrente d'une autre amélioration équipée pour récupérer 1 bouclier. %LINEBREAK%<strong>Action :</strong> dépensez 2 boucliers pour récupérer 1&nbsp;%CHARGE% non-récurrente sur une amélioration équipée."""
        '"Genius"':
           display_name: """“Genius”"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Après avoir entièrement exécuté une manœuvre, si vous n'avez pas largué ou lancé d'engin à ce round, vous pouvez larguer 1 bombe."""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Vous pouvez effectuer des attaques principales à portée 0. Les vaisseaux ennemis à portée 0 peuvent effectuer des attaques principales contre vous."""

                    
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
           display_name: "Bombe à protons"
           text: '''(Bombe) - À la fin de la Phase d'activation, cet engin explose. %LINEBREAK% Lorsque cet engin explose, chaque vaisseau à portée 0–1 subit 1 dégât %CRIT%.'''
        'Seismic Charge':
           display_name: 'Charges sismiques'
           text: '''(Bombe) - À la fin de la Phase d'activation, cet engin explose. %LINEBREAK% Lorsque cet engin explose, choisissez 1 obstacle à portée 0–1. Chaque vaisseau à portée 0–1 de cet obstacle subit 1 dégât %HIT%. Puis retirez cet obstacle'''
        'Bomblet':
           display_name: 'Sous-munitions'
           text: '''(Bombe) - À la fin de la Phase d'activation, cet engin explose. %LINEBREAK% Lorsque l'engin explose, chaque vaisseau à portée 0–1 lance 2 dés d'attaque. Chaque vaisseau subit 1 dégât %HIT% pour chaque résultat %HIT%/%CRIT% obtenu.'''
        'Loose Cargo':
           display_name: 'Cargaison égarée'
           text: '''(Débris) - La cargaison égarée est considérée comme un nuage de débris.'''
        'Conner Net':
           display_name: 'Filet Conner'
           text: '''(Mine) - Après qu'un vaisseau a chevauché ou s'est déplacé à travers cet engin, ce dernier explose. Lorsque cet engin explose, le vaisseau subit 1 dégât %HIT% et gagne 3 marqueurs ioniques.'''
        'Proximity Mine':
           display_name: 'Mine de proximité'
           text: '''(Mine) - Après qu'un vaisseau a chevauché ou s'est déplacé à travers cet engin, ce dernier explose. Lorsque cet engin explose, le vaisseau lance 2 dés d'attaque. Puis ce vaisseau subit 1 dégât %HIT% plus 1 dégât %HIT%/%CRIT% pour chaque résultat correspondant obtenu.'''
       
    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, condition_translations, 
