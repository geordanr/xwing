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
        '.game-type-selector option[value="hyperspace"]': 'Hyperspace'
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
        'ships' : 'Ship'
    types:
        'Pilot': 'Pilote'
        'Modification': 'Modification'
        'Title': 'Titre'
        'Ship': 'Ship'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders['Français'] = () ->
    exportObj.cardLanguage = 'Français'

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
    exportObj.renameShip """Attack Shuttle""", """Navette d’Attaque"""
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
    exportObj.renameShip """M3-A Interceptor""", """Intercepteur M3-A"""
    exportObj.renameShip """JumpMaster 5000""", """JumpMaster 5000"""
    exportObj.renameShip """Customized YT-1300""", """Cargo léger YT-1300 personnalisé"""
    exportObj.renameShip """Escape Craft""", """Vaisseau de secours"""


    pilot_translations =
        "0-66":
           display_name: """0-66"""
           text: """Après avoir défendu, vous pouvez dépenser 1 marqueur de calcul pour effectuer une action."""
        "104th Battalion Pilot":
           display_name: """Pilote du 104ème Bataillon"""
           text: """<i class = flavor_text>L’ARC-170 a été conçu en tant que chasseur d’escorte lourd, armé de canons laser à l’avant et à l’arrière, d’artillerie et d’un astromech de navigation. Les escadrons de ces redoutables chasseurs renforcent les forces de la Marine Républicaine au cours des batailles dans lesquelles ils sont déployés.</i>"""
        "4-LOM":
           display_name: """4-LOM"""
           text: """Après avoir entièrement exécuté une manœuvre rouge, gagnez 1 marqueur de calcul.%LINEBREAK%Au début de la phase de dénouement, vous pouvez choisir un vaisseau à portée 0-1. Dans ce cas, transférez 1 de vos marqueurs de stress à ce vaisseau."""
        "Nashtah Pup":
           display_name: """Nashtah Pup"""
           text: """Vous ne pouvez être déployé que par un déploiement d’urgence, et vous avez le nom, l’initiative, la capacité de pilote, et les %CHARGE% du vaisseau allié Hound’s Tooth qui a été détruit.%LINEBREAK%Vaisseau de Secours : Mise en Place : nécessite le Hound’s Tooth. Vous devez commencer la partie arrimé au Hound’s Tooth."""
        "AP-5":
           display_name: """AP-5"""
           text: """Tant que vous coordonnez, si vous choisissez un vaisseau qui a exactement 1 marqueur de stress, il peut effectuer des actions. %LINEBREAK%<strong>Navette de Communication :</strong> tant que vous êtes arrimé, votre vaisseau porteur gagne %COORDINATE%. Avant que votre vaisseau porteur ne s’active, il peut effectuer une action %COORDINATE%."""
        "Academy Pilot":
           display_name: """Pilote de l’Académie"""
           text: """<i class = flavor_text>Produit en masse, rapide et maniable, le TIE/ln développé par Sienar Fleet Systems est le principal chasseur de l’Empire Galactique.</i>"""
        "Ahhav":
           display_name: """Ahhav"""
           text: """Tant que vous défendez ou effectuez une attaque, si le vaisseau ennemi a une taille supérieure à la vôtre, lancez 1 dé supplémentaire.%LINEBREAK%<strong>Notched Stabilizers:</strong> While you move, you ignore asteroids."""
        "Ahsoka Tano":
           display_name: """Ahsoka Tano"""
           text: """Après avoir entièrement exécuté une manœuvre, vous pouvez choisir un vaisseau allié à portée&nbsp;0-1 et dépenser 1&nbsp;%FORCE%. Ce vaisseau peut effectuer une action, même s’il est stressé.%LINEBREAK%<strong>Commandes Réactives :</strong> après avoir entièrement exécuté une manœuvre, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une action %BOOST% ou %BARRELROLL%."""
        "Airen Cracken":
           display_name: """Airen Cracken"""
           text: """Après avoir effectué une attaque, vous pouvez choisir 1 vaisseau allié à portée 1. Ce vaisseau peut effectuer une action, en la considérant comme rouge."""
        "Alpha Squadron Pilot":
           display_name: """Pilote de l’Escadron Alpha"""
           text: """<i class = flavor_text>Sienar Fleet Systems a doté les ailes de l’intercepteur TIE de quatre canons laser qui lui confèrent une puissance de feu bien supérieure à celle des précédents modèles.</i>%LINEBREAK%<strong>Autopropulseurs :</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou %BOOST% rouge."""
        "Anakin Skywalker":
           display_name: """Anakin Skywalker"""
           text: """Après avoir entièrement exécuté une manœuvre, s'il y a un vaisseau ennemi dans votre %FRONTARC% à portée&nbsp;0-1 ou dans votre %BULLSEYEARC%, vous pouvez dépenser 1&nbsp;%FORCE% pour retirer 1 marqueur de stress.%LINEBREAK%<strong>Commandes Réactives :</strong> après avoir entièrement exécuté une manœuvre, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une action %BOOST% ou %BARRELROLL%."""
        "Anakin Skywalker (N-1 Starfighter)":
           display_name: """Anakin Skywalker"""
           text: """Avant de révéler votre manœuvre, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer un tonneau (ce n’est pas une action).%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action&nbsp;%EVADE%."""
        "Anakin Skywalker (Y-Wing)":
           display_name: """Anakin Skywalker"""
           text: """Après avoir entièrement exécuté une manœuvre, s’il y a un vaisseau ennemi dans votre %FRONTARC% à portée&nbsp;0-1 ou dans votre %BULLSEYEARC%, vous pouvez dépenser 1&nbsp;%FORCE% pour retirer 1&nbsp;marqueur de stress.%LINEBREAK%<strong>Coque Blindée :</strong> tant que vous défendez, si vous n’êtes pas critiquement endommagé, changez 1 résultat&nbsp;%CRIT% en un résultat&nbsp;%HIT%."""
        "Arvel Crynyd":
           display_name: """Arvel Crynyd"""
           text: """Vous pouvez effectuer des attaques principales à portée 0.%LINEBREAK%Si vous deviez échouer à une action %BOOST% qui vous amènerait à chevaucher un autre vaisseau, résolvez-la comme si vous exécutiez partiellement une manœuvre à la place.%LINEBREAK%<strong>Propulseurs Vectoriels :</strong> après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge."""
        "Asajj Ventress":
           display_name: """Asajj Ventress"""
           text: """Au début de la phase d’engagement, vous pouvez choisir 1 vaisseau ennemi dans votre %SINGLETURRETARC% à portée 0-2 et dépenser 1 %FORCE%. Dans ce cas, ce vaisseau gagne 1 marqueur de stress sauf s’il retire 1 marqueur vert."""
        "Autopilot Drone":
           display_name: """Drone Automatique"""
           text: """<i class = flavor_text>Il est parfois utile d’ignorer les avertissements de sécurité préconisés par les fabricants…</i>%LINEBREAK%Cellules Énergétiques Bidouillées&nbsp;: pendant la phase de système, si vous n’êtes pas arrimé, perdez 1 &nbsp;%CHARGE%. À la fin de la phase d’activation, vous êtes détruit si vous avez 0 %CHARGE%. Avant de retirer votre figurine, chaque vaisseau à porté 0-1 subit 1 dégât %CRIT%."""
        "BB-8":
           display_name: """BB-8"""
           text: """Pendant la phase de système, vous pouvez effectuer une action %BARRELROLL% rouge ou %BOOST% rouge."""
        "Bandit Squadron Pilot":
           display_name: """Pilote de l’Escadron Bandit"""
           text: """<i class = flavor_text>Le Chasseur de Têtes Z-95 a été la principale source d’inspiration d’Incom Corporation pour la conception du X-wing T-65. Bien que considéré comme obsolète, le Chasseur de Têtes Z-95 reste un appareil léger polyvalent et robuste.</i>"""
        "Baron of the Empire":
           display_name: """Baron de l’Empire"""
           text: """<i class = flavor_text>Le TIE Advanced v1 de Sienar Fleet Systems est un chasseur révolutionnaire, pourvu de moteurs améliorés, d’un lance-missiles et d’ailes mobiles.</i>"""
        "Barriss Offee":
           display_name: """Barriss Offee"""
           text: """Tant qu’un vaisseau allié à portée&nbsp;0-2 effectue une attaque, si le défenseur est dans son %BULLSEYEARC%, vous pouvez dépenser 1&nbsp;%FORCE% pour changer 1 résultat %FOCUS% en un résultat %HIT% ou 1 résultat %HIT% en un résultat %CRIT%.%LINEBREAK%<strong>Commandes Réactives :</strong> après avoir entièrement exécuté une manœuvre, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une action %BOOST% ou %BARRELROLL%."""
        "Ben Teene":
           display_name: """Ben Teene"""
           text: """Après avoir effectué une attaque, si le défenseur est dans votre %SINGLETURRETARC%, assignez-lui l’état Ébranlé."""
        "Benthic Two Tubes":
           display_name: """Benthic Deux-Tubes"""
           text: """Après avoir effectué une action %FOCUS%, vous pouvez transférer 1 de vos marqueurs de concentration à un vaisseau allié à portée 1-2."""
        "Berwer Kret":
           display_name: """Berwer Kret"""
           text: """Après que vous avez effectué une attaque qui touche, chaque vaisseau allié avec %CALCULATE% dans sa barre d’action et un verrouillage sur le défenseur peut effectuer une action&nbsp;%CALCULATE%&nbsp;rouge.%LINEBREAK%<strong>Dispositif Tracteur de Précision :</strong> vous ne pouvez pas faire pivoter votre %SINGLETURRETARC% vers votre %REARARC%. Après avoir exécuté une manœuvre, vous pouvez gagner 1&nbsp;marqueur de rayon tracteur pour effectuer une action&nbsp;%ROTATEARC%."""
        "Biggs Darklighter":
           display_name: """Biggs Darklighter"""
           text: """Tant qu’un autre vaisseau allié à portée 0-1 défend, avant l’étape «&nbsp;Neutraliser les résultats&nbsp;», si vous êtes dans l’arc de l’attaque, vous pouvez subir 1 dégât&nbsp;%HIT% ou %CRIT% pour annuler 1 dégât correspondant."""
        "Binayre Pirate":
           display_name: """Pirate Binayre"""
           text: """<i class = flavor_text>Le groupe de contrebandiers et de pirates de Kath Scarlet, qui agit depuis les Mondes Doubles de Talus et Tralus, n’a pas la réputation d’être fiable ni même honorable. Et ce ne sont pas les autres criminels qui diront le contraire…</i>"""
        "Black Squadron Ace":
           display_name: """As de l’Escadron Noir"""
           text: """<i class = flavor_text>Au cours de la Bataille de Yavin, les pilotes d’élite des chasseurs TIE/ln de l’Escadron Noir escortèrent Dark Vador lors d’une attaque dévastatrice contre les forces Rebelles.</i>"""
        "Black Squadron Ace (T-70)":
           display_name: """As de l’Escadron Noir"""
           text: """<i class = flavor_text>Lors de la Guerre Froide, l’Escadron Noir de Poe Dameron entreprit d’audacieuses missions secrètes contre le Premier Ordre, sans tenir compte des traités ratifiés par le Sénat de la Nouvelle République.</i>%LINEBREAK%<strong>Emplacement d’Arme :</strong> vous pouvez vous équiper de 1 amélioration&nbsp;%CANNON%, %TORPEDO% ou %MISSILE%."""
        "Black Squadron Scout":
           display_name: """Éclaireur de l’Escadron Noir"""
           text: """<i class = flavor_text>Ce vaisseau atmosphérique lourdement armé se sert de ses ailes mobiles pour gagner en vitesse et manœuvrabilité.</i>%LINEBREAK%<strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n’êtes pas stressé, vous devez exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] ou [1&nbsp;%BANKRIGHT%]."""
        "Black Sun Ace":
           display_name: """As du Soleil Noir"""
           text: """<i class = flavor_text>Le chasseur d’assaut Kihraxz fut développé expressément pour l’organisation criminelle du Soleil Noir, dont les as, très généreusement payés, exigeaient des appareils agiles et puissants, à la hauteur de leur talent.</i>"""
        "Black Sun Assassin":
           display_name: """Assassin du Soleil Noir"""
           text: """<i class = flavor_text>Abattre sa cible au coin d’une ruelle sombre ou ajouter une goutte de poison à une boisson sont des méthodes courantes d’assassinat, mais une navette en feu s’écrasant au sol fait passer un tout autre message. </i>%LINEBREAK%<strong>Micropropulseurs :</strong> tant que vous effectuez un tonneau, vous devez utiliser le gabarit %BANKLEFT% ou %BANKRIGHT% à la place du gabarit %STRAIGHT%."""
        "Black Sun Enforcer":
           display_name: """Homme de Main du Soleil Noir"""
           text: """<i class = flavor_text>Le prince Xizor en personne collabora avec MandalMotors pour concevoir la plateforme d’attaque de classe StarViper, l’un des plus redoutables chasseurs de la galaxie. </i>%LINEBREAK%<strong>Micropropulseurs :</strong> tant que vous effectuez un tonneau, vous devez utiliser le gabarit %BANKLEFT% ou %BANKRIGHT% à la place du gabarit %STRAIGHT%."""
        "Black Sun Soldier":
           display_name: """Soldat du Soleil Noir"""
           text: """<i class = flavor_text>La vaste et influente organisation criminelle du Soleil Noir a toujours besoin de pilotes de talent, pourvu qu’ils ne soient pas trop regardants sur l’origine de leur paye.</i>"""
        "Blade Squadron Veteran":
           display_name: """Vétéran de l’Escadron Blade"""
           text: """<i class = flavor_text>Un système de stabilisation gyroscopique unique enveloppe le cockpit du B-wing et assure la stabilité du pilote.</i>"""
        "Blue Squadron Escort":
           display_name: """Escorte de l’Escadron Bleu"""
           text: """<i class = flavor_text>Conçu par Incom Corporation, le X-wing T-65 compta rapidement parmi les appareils militaires les plus efficaces de la galaxie et fut d’un réel secours pour la Rébellion.</i>"""
        "Blue Squadron Pilot":
           display_name: """Pilote de l’Escadron Bleu"""
           text: """<i class = flavor_text>Grâce à son impressionnant panel d’armes lourdes et à ses boucliers très résistants, le B-wing s’est imposé comme le plus redoutable chasseur d’assaut de l’Alliance Rebelle.</i>"""
        "Blue Squadron Protector":
           display_name: """Protecteur de l’Escadron Bleu"""
           text: """<i class = flavor_text>Les pilotes d’élite clones de l’Escadron Bleu sont capables de faire voler leur V-19 conjointement avec les appareils des Jedi et servent le plus souvent de soutien auprès d’illustres commandants comme Anakin Skywalker et Ahsoka Tano.</i>"""
        "Blue Squadron Recruit":
           display_name: """Recrue de l’Escadron Bleu"""
           text: """<i class = flavor_text>Toute une génération a grandi avec des récits d’exploits héroïques lors de la Guerre Civile Galactique, et nombreux sont ceux qui ont appris à piloter dans les mêmes cockpits qui avaient accueilli leurs parents dans leur combat contre l’Empire.</i>%LINEBREAK%<strong>Gyrostabilisateurs Perfectionnés:</strong> vous pouvez pivoter votre indicateur %SINGLETURRETARC% uniquement vers votre %FRONTARC% ou %REARARC%.Après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge ou %ROTATEARC% rouge.."""
        "Blue Squadron Rookie":
           display_name: """Pilote débutant de l’Escadron Bleu"""
           text: """<i class = flavor_text>Le X-wing T-70 d’Incom-FreiTek a été conçu pour être plus polyvalent que son prédécesseur, le X-wing T-65. L’emplacement du droïde a été amélioré et permet de recevoir un large éventail d’astromechs, et les points d’emport modulaires permettent au personnel au sol d’adapter l’armement du T-70 en fonction de ses missions.</i>%LINEBREAK%<strong>Emplacement d’Arme:</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Blue Squadron Scout":
           display_name: """Éclaireur de l’Escadron Bleu"""
           text: """<i class = flavor_text>Utilisé pour déployer des troupes sous couvert de l’obscurité ou sur les théâtres d’opérations les plus dangereux, le U-wing UT-60D rendit de fiers services à l’Alliance Rebelle qui avait désespérément besoin de transports résistants.</i>"""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """Tant que vous défendez ou effectuez une attaque, vous pouvez relancer 1 de vos dés pour chaque vaisseau ennemi à portée 0-1."""
        "Bodhi Rook":
           display_name: """Bodhi Rook"""
           text: """Les vaisseaux alliés peuvent verrouiller des objets à portée 0-3 de n’importe quel vaisseau allié."""
        "Bossk":
           display_name: """Bossk"""
           text: """Tant que vous effectuez une attaque principale, après l’étape «&nbsp;Neutraliser les résultats&nbsp;», vous pouvez dépenser 1 résultat %CRIT% pour ajouter 2 résultats&nbsp;%HIT%."""
        "Bounty Hunter":
           display_name: """Chasseur de Primes"""
           text: """<i class = flavor_text>La sinistre réputation du Patrouilleur de Classe Firespray a pour origine les chasseurs de primes Jango Fett et Boba Fett, qui modifièrent leur appareil avec d’innombrables armes terrifiantes.</i>"""
        "Bravo Flight Officer":
           display_name: """Officier de l’Escadron Bravo"""
           text: """<i class = flavor_text>Les pilotes volontaires des Forces Royales de Sécurité de Naboo sont déterminés à protéger le peuple et les idéaux de leur monde natal, et font confiance à leur Reine pour les envoyer au combat seulement quand toutes les autres options ont échoué.</i>%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action&nbsp;%EVADE%."""
        "Braylen Stramm":
           display_name: """Braylen Stramm"""
           text: """Tant que vous défendez ou effectuez une attaque, si vous êtes stressé, vous pouvez relancer jusqu’à 2 de vos dés."""
        "Captain Cardinal":
           display_name: """Captain Cardinal"""
           text: """Tant qu’un vaisseau allié à portée 1-2 avec une initiative inférieure à la vôtre défend ou effectue une attaque, si vous avez au moins 1&nbsp;%CHARGE%, ce vaisseau allié peut relancer 1 résultat %FOCUS%.%LINEBREAK%Après qu’un vaisseau ennemi à portée 0-3 a été détruit, perdez 1&nbsp;%CHARGE%.%LINEBREAK%<strong>Batteries Jumelées:</strong> tant que vous effectuez une attaque %CANNON%, lancez 1 dé supplémentaire."""
        "Captain Feroph":
           display_name: """Capitaine Feroph"""
           text: """Tant que vous défendez, si l’attaquant n’a aucun marqueur vert, vous pouvez changer 1 de vos résultats Vierge ou %FOCUS% en un résultat %EVADE%.%LINEBREAK%<strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n’êtes pas stressé, vous <b>devez</b> exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], ou [1&nbsp;%BANKRIGHT%]."""
        "Captain Jonus":
           display_name: """Captain Jonus"""
           text: """Tant qu’un vaisseau allié à portée 0-1 effectue une attaque %TORPEDO% ou %MISSILE%, il peut relancer jusqu’à 2 dés d’attaque. %LINEBREAK%<strong>Bombardier Agile :</strong> si vous devez utiliser un gabarit %STRAIGHT% pour larguer un engin, vous pouvez utiliser un gabarit %BANKLEFT% ou %BANKRIGHT% de même vitesse à la place."""
        "Captain Jostero":
           display_name: """Captain Jostero"""
           text: """Après qu’un vaisseau ennemi a subi des dégâts, s’il n’est pas en train de défendre, vous pouvez effectuer une attaque bonus contre ce vaisseau."""
        "Captain Kagi":
           display_name: """Capitaine Kagi"""
           text: """Au début de la phase d’engagement, vous pouvez choisir 1 ou plusieurs vaisseaux alliés à portée 0-3. Dans ce cas, transférez tous les marqueurs de verrouillage ennemis des vaisseaux choisis vers vous."""
        "Captain Nym":
           display_name: """Capitaine Nym"""
           text: """Avant qu’une bombe ou mine alliée n’explose, vous pouvez dépenser 1 %CHARGE% pour empêcher son explosion.%LINEBREAK% Tant que vous défendez contre une attaque gênée par une bombe ou une mine, lancez 1 dé de défense supplémentaire."""
        "Captain Oicunn":
           display_name: """Capitaine Oicunn"""
           text: """Vous pouvez effectuer vos attaques principales à portée 0."""
        "Captain Rex":
           display_name: """Capitaine Rex"""
           text: """Après avoir effectué une attaque, assignez l’état Tir de Suppression au défenseur."""
        "Captain Sear":
           display_name: """Capitaine Sear"""
           text: """Tant qu’un vaisseau allié à portée&nbsp;0-3 effectue une attaque principale, si le défenseur est dans son %BULLSEYEARC%, avant l’étape «&nbsp;Neutraliser les résultats&nbsp;», le vaisseau allié peut dépenser 1 marqueur de calcul pour annuler 1 résultat %EVADE%."""
        "Captain Seevor":
           display_name: """Capitaine Seevor"""
           text: """Tant que vous défendez ou effectuez une attaque, avant de lancer les dés d’attaque, si vous n’êtes pas dans le %BULLSEYEARC% du vaisseau ennemi, vous pouvez dépenser 1 %CHARGE%. Dans ce cas, le vaisseau ennemi gagne 1 marqueur de brouillage.%LINEBREAK%<strong>Stabilisateurs Crantés</strong> tant que vous vous déplacez, ignorez les astéroïdes.."""
        "Cartel Executioner":
           display_name: """Exécuteur du Cartel"""
           text: """<i class = flavor_text>De nombreux pilotes chevronnés au service des kajidics Hutt et d’autres organisations criminelles utilisent le chasseur M12-L Kimogila à cause de sa puissance de feu et de la peur qu’il inspire.</i>%LINEBREAK%<strong>Dans le Mille :</strong> tant que vous effectuez une attaque, si le défenseur est dans votre %BULLSEYEARC%, les dés de défense ne peuvent pas être modifiés en utilisant des marqueurs verts."""
        "Cartel Marauder":
           display_name: """Marauder du Cartel"""
           text: """<i class = flavor_text>Le polyvalent Kihraxz fut inspiré du très populaire chasseur X-wing d’Incom, mais toutes sortes d’options permettaient de le personnaliser à loisir. </i>"""
        "Cartel Spacer":
           display_name: """Astropilote du Cartel"""
           text: """<i class = flavor_text>L’Intercepteur « Scyk » M3-A de MandalMotors est acheté en grande quantité par le Cartel Hutt et les contrebandiers Car’das en raison de son prix bas et de ses nombreuses possibilités de personnalisation. </i>%LINEBREAK%<strong>Emplacement d’Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """Au début de la phase d’activation, vous pouvez choisir 1 vaisseau allié à portée 1-3. Dans ce cas, ce vaisseau allié retire 1 marqueur de stress."""
        "Cat":
           display_name: """Cat"""
           text: """Tant que vous effectuez une attaque principale, si le défenseur est à portée 0-1 d’au moins un engin allié, lancez 1 dé supplémentaire."""
        "Cavern Angels Zealot":
           display_name: """Extrémiste Anges des Cavernes"""
           text: """<i class = flavor_text>Contrairement à la plupart des cellules Rebelles, les Partisans de Saw Gerrera utilisèrent des méthodes jugées trop radicales pour lutter contre l’Empire Galactique, au cours des sanglants combats qui ravagèrent Géonosis et Jedha.</i>"""
        "Chertek":
           display_name: """Chertek"""
           text: """Tant que vous effectuez une attaque principale, si le défenseur est tracté, vous pouvez relancer jusqu’à 2 dés d’attaque.%LINEBREAK%<strong>Dispositif Tracteur de Précision :</strong> vous ne pouvez pas faire pivoter votre %SINGLETURRETARC% vers votre %REARARC%. Après avoir exécuté une manœuvre, vous pouvez gagner 1&nbsp;marqueur de rayon tracteur pour effectuer une action&nbsp;%ROTATEARC%."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """Avant qu’une carte de dégât ne vous soit attribuée face visible, vous pouvez dépenser 1 %CHARGE% pour qu’elle vous soit attribuée face cachée à la place."""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca"""
           text: """Après qu’un vaisseau allié à portée 0-3 a été détruit, vous pouvez effectuer une action. Puis vous pouvez effectuer une attaque bonus."""
        "Cobalt Squadron Bomber":
           display_name: """Bombardier de l’Escadron Cobalt"""
           text: """<i class = flavor_text>Peu importe que les silos d’artillerie de leurs forteresses stellaires soient chargés de bombes à protons ou de matériel de première nécessité, les valeureux équipages de l’Escadron Cobalt consacrent leur vie à changer la face de la galaxie..</i>"""
        "Colonel Jendon":
           display_name: """Colonel Jendon"""
           text: """Au début de la phase d’activation, vous pouvez dépenser 1 %CHARGE%. Dans ce cas, lorsqu’un vaisseau allié verrouille une cible à ce round, il doit le faire au-delà de la portée 3 à la place de la portée 0-3."""
        "Colonel Vessery":
           display_name: """Colonel Vessery"""
           text: """Tant que vous effectuez une attaque contre un vaisseau verrouillé, après avoir lancé vos dés d’attaque, vous pouvez verrouiller le défenseur. %LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action %EVADE%."""
        "Commander Malarus":
           display_name: """Commander Malarus"""
           text: """Au début de la phase d’engagement, vous pouvez dépenser 1&nbsp;%CHARGE% et gagner 1 marqueur de stress. Dans ce cas, jusqu’à la fin du round, tant que vous défendez ou effectuez une attaque, vous pouvez changer tous vos résultats %FOCUS% en résultats %EVADE% ou %HIT%"""
        "Constable Zuvio":
           display_name: """Officier Zuvio"""
           text: """Si vous êtes censé larguer un engin, vous pouvez le lancer en utilisant un gabarit [1&nbsp;%STRAIGHT%] à la place.%LINEBREAK%<strong>Dispositif Tracteur de Remorqueur Spatial :</strong> <strong>Action :</strong> choisissez un vaisseau dans votre %FRONTARC% à portée 1. Il gagne 1 marqueur de rayon tracteur, ou 2 marqueurs de rayon tracteur s’il est dans votre %BULLSEYEARC% à portée 1."""
        "Contracted Scout":
           display_name: """Éclaireur Sous Contrat"""
           text: """<i class = flavor_text>Conçu pour les missions de reconnaissance de long cours et le calcul de nouveaux itinéraires hyperspatiaux, le JumpMaster 5000, pourvu d’un armement léger, est souvent réaménagé par ses propriétaires.</i>"""
        "Corran Horn":
           display_name: """Corran Horn"""
           text: """À l’initiative 0, vous pouvez effectuer une attaque principale bonus contre un vaisseau ennemi situé dans votre %BULLSEYEARC%. Dans ce cas, au début de la prochaine phase de préparation, gagnez 1 marqueur de désarmement. %LINEBREAK%<strong>Scanners Expérimentaux :</strong> vous pouvez verrouiller une cible au-delà de la portée 3. Vous ne pouvez pas verrouiller de cible à portée 1."""
        "Count Dooku":
           display_name: """Comte Dooku"""
           text: """Après avoir défendu, si l’attaquant est dans votre arc de tir, vous pouvez dépenser 1&nbsp;%FORCE% pour retirer 1 de vos marqueurs bleus ou rouges.%LINEBREAK%Après avoir effectué une attaque qui touche, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une action."""
        "Countess Ryad":
           display_name: """Comtesse Ryad"""
           text: """Tant que vous exécutez une manœuvre %STRAIGHT%, vous pouvez augmenter la difficulté de la manœuvre. Dans ce cas, exécutez-la comme une manœuvre %KTURN% à la place.%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action %EVADE%."""
        "Cova Nell":
           display_name: """Cova Nell"""
           text: """Tant que vous défendez ou effectuez une attaque principale, si votre manœuvre révélée est rouge, lancez 1 dé supplémentaire."""
        "Crymorah Goon":
           display_name: """Sbire du Crymorah"""
           text: """<i class = flavor_text>Bien qu’il ne soit pas toujours très maniable, le Y-wing bénéficie d’une solide coque, de boucliers substantiels et de canons montés sur une tourelle qui en font un excellent appareil de patrouille.</i>"""
        "Cutlass Squadron Pilot":
           display_name: """Pilote de l’Escadron Cutlass"""
           text: """<i class = flavor_text>Le TIE Punisher a été conçu après le bombardier TIE, qui connut un grand succès. Il est pourvu de boucliers, d’une seconde trappe de largage et de trois nacelles d’artillerie supplémentaires, toutes équipées de moteurs ioniques jumelés.</i>"""
        "DBS-32C":
           display_name: """DBS-32C"""
           text: """Au début de la phase d’engagement, vous pouvez dépenser 1 marqueur de calcul pour effectuer une action %COORDINATE%. Vous ne pouvez pas coordonner des vaisseaux qui n’ont pas la capacité de vaisseau <strong>Calculs en Réseau</strong>.%LINEBREAK%<strong>Calculs en Réseau :</strong> tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de calcul d’un vaisseau allié à portée&nbsp;0-1 pour changer 1 résultat&nbsp;%FOCUS% en un résultat %EVADE% ou %HIT%."""
        "DBS-404":
           display_name: """DBS-404"""
           text: """Vous pouvez effectuer des attaques principales à portée&nbsp;0. Tant que vous effectuez une attaque à portée d’attaque&nbsp;0-1, vous <b>devez</b> lancer 1&nbsp;dé supplémentaire. Après que l’attaque a touché, subissez 1 dégât&nbsp;%CRIT%.%LINEBREAK%<strong>Calculs en Réseau :</strong> tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de calcul d’un vaisseau allié à portée&nbsp;0-1 pour changer 1 résultat&nbsp;%FOCUS% en un résultat %EVADE% ou %HIT%."""
        "DFS-081":
           display_name: """DFS-081"""
           text: """Tant qu’un vaisseau allié à portée&nbsp;0-1 défend, il peut dépenser 1 marqueur de calcul pour changer tous les résultats %CRIT% en résultats %HIT%.%LINEBREAK%<strong>Calculs en Réseau :</strong> tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de calcul d’un vaisseau allié à portée&nbsp;0-1 pour changer 1 résultat&nbsp;%FOCUS% en un résultat %EVADE% ou %HIT%."""
        "DFS-311":
           display_name: """DFS-311"""
           text: """Au début de la phase d’engagement, vous pouvez transférer 1 de vos marqueurs de calcul à un autre vaisseau allié à portée&nbsp;0-3.%LINEBREAK%<strong>Calculs en Réseau :</strong> tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de calcul d’un vaisseau allié à portée&nbsp;0-1 pour changer 1 résultat&nbsp;%FOCUS% en un résultat %EVADE% ou %HIT%."""
        "Dace Bonearm":
           display_name: """Dace Bonearm"""
           text: """Après qu’un vaisseau ennemi à portée 0-3 a reçu au moins 1 marqueur ionique, vous pouvez dépenser 3 %CHARGE%. Dans ce cas, ce vaisseau ennemi gagne 2 marqueurs ioniques supplémentaires."""
        "Dalan Oberos (StarViper)":
           display_name: """Dalan Oberos"""
           text: """Après avoir entièrement exécuté une manœuvre, vous pouvez gagner 1 marqueur de stress pour pivoter votre vaisseau de 90°. %LINEBREAK%<strong>Micropropulseurs :</strong> tant que vous effectuez un tonneau, vous devez utiliser le gabarit %BANKLEFT% ou %BANKRIGHT% à la place du gabarit %STRAIGHT%."""
        "Dalan Oberos":
           display_name: """Dalan Oberos"""
           text: """Au début de la phase d’engagement, vous pouvez choisir 1 vaisseau protégé dans votre %BULLSEYEARC% et dépenser 1 %CHARGE%. Dans ce cas, ce vaisseau perd 1 bouclier et vous récupérez 1 bouclier. %LINEBREAK%<strong>Dans le Mille :</strong> tant que vous effectuez une attaque, si le défenseur est dans votre %BULLSEYEARC%, les dés de défense ne peuvent pas être modifiés en utilisant des marqueurs verts."""
        "Dark Courier":
           display_name: """Messager Noir"""
           text: """<i class = flavor_text>Le Scimitar est un appareil lourdement modifié, équipé de technologies furtives et de dispositifs de surveillance avancés, afin de mener des missions d’infiltration et d’assassinat.</i>"""
        "Darth Maul":
           display_name: """Dark Maul"""
           text: """Après avoir effectué une attaque, vous pouvez dépenser 2&nbsp;%FORCE% pour effectuer une attaque principale bonus contre une cible différente. Si votre attaque était ratée, vous pouvez effectuer cette attaque principale bonus contre la même cible à la place."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """Après avoir effectué une action, vous pouvez dépenser 1 %FORCE% pour effectuer une action.%LINEBREAK%<strong>Ordinateur de Visée Avancé :</strong> tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d’attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Dash Rendar":
           display_name: """Dash Rendar"""
           text: """Tant que vous vous déplacez, ignorez les obstacles. %LINEBREAK%<strong>Angle Mort des Senseurs :</strong> tant que vous effectuez une attaque principale à portée d’attaque 0-1, n’appliquez pas le bonus de portée 0-1 et lancez 1 dé d’attaque en moins."""
        "Del Meeko":
           display_name: """Del Meeko"""
           text: """Tant qu’un vaisseau allié à portée 0-2 défend contre un attaquant endommagé, le défenseur peut relancer 1 dé de défense."""
        "Delta Squadron Pilot":
           display_name: """Pilote de l’Escadron Delta"""
           text: """<i class = flavor_text>En plus de ses six canons laser et de ses lance-missiles, le redoutable défenseur TIE est équipé d’écrans déflecteurs et d’un hyperdrive.</i>%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action %EVADE%."""
        "Dengar":
           display_name: """Dengar"""
           text: """Après avoir défendu, si l’attaquant est dans votre %FRONTARC%, vous pouvez dépenser 1 %CHARGE% pour effectuer une attaque bonus contre cet attaquant."""
        "Dineé Ellberger":
           display_name: """Dineé Ellberger"""
           text: """Tant que vous défendez ou effectuez une attaque, si la vitesse de votre manœuvre révélée est identique à celle du vaisseau ennemi, les dés de ce vaisseau ennemi ne peuvent pas être modifiés.%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action&nbsp;%EVADE%."""
        "Drea Renthal":
           display_name: """Drea Renthal"""
           text: """Tant qu’un vaisseau allié non-limité effectue une attaque, si le défenseur est dans votre arc de tir, l’attaquant peut relancer 1 dé d’attaque."""
        "Edon Kappehl":
           display_name: """Edon Kappehl"""
           text: """Après avoir entièrement exécuté une manœuvre bleue ou blanche, si vous n’avez pas largué ou lancé d’engin à ce round, vous pouvez larguer 1 engin."""
        "Edrio Two Tubes":
           display_name: """Edrio Deux-Tubes"""
           text: """Avant votre activation, si vous êtes concentré, vous pouvez effectuer une action."""
        "Ello Asty":
           display_name: """Ello Asty"""
           text: """Après avoir révélé une manœuvre rouge Tonneau de Tallon (%TROLLLEFT% ou %TROLLRIGHT%), si vous avez 2 marqueurs de stress ou moins, considérez cette manœuvre comme blanche. %LINEBREAK%<strong>Emplacement d’Arme:</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Emon Azzameen":
           display_name: """Emon Azzameen"""
           text: """Si vous êtes censé larguer un engin en utilisant un gabarit [1&nbsp;%STRAIGHT%], vous pouvez utiliser le gabarit [3&nbsp;%TURNLEFT%], [3&nbsp;%STRAIGHT%] ou [3&nbsp;%TURNRIGHT%] à la place."""
        "Epsilon Squadron Cadet":
           display_name: """Cadet de l’Escadron Epsilon"""
           text: """<i class = flavor_text>Formés depuis le plus jeune âge au cœur des Star Destroyers de classe Resurgent, de nombreux pilotes de TIE du Premier Ordre n’ont jamais foulé le sol d’une planète..</i>"""
        "Esege Tuketu":
           display_name: """Esege Tuketu"""
           text: """Tant qu’un vaisseau allié à portée 0-2 défend ou effectue une attaque, il peut dépenser vos marqueurs de concentration comme s’ils étaient à lui."""
        "Evaan Verlaine":
           display_name: """Evaan Verlaine"""
           text: """Au début de la phase d’engagement, vous pouvez dépenser 1 marqueur de concentration pour choisir un vaisseau allié à portée 0-1. Dans ce cas, ce vaisseau allié lance 1 dé de défense supplémentaire tant qu’il défend, jusqu’à la fin du round."""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """Tant que vous défendez ou effectuez une attaque, si vous êtes stressé, vous pouvez dépenser 1 %FORCE% pour changer jusqu’à 2 de vos résultats %FOCUS% en résultats %EVADE% ou %HIT%.%LINEBREAK%<strong>Chargé et Prêt à Tirer :</strong> tant que vous êtes arrimé, après que votre vaisseau porteur a effectué une attaque principale %FRONTARC% ou %TURRET%, il peut effectuer une attaque principale %REARARC% bonus."""
        "Ezra Bridger (Sheathipede)":
           display_name: """Ezra Bridger"""
           text: """Tant que vous défendez ou effectuez une attaque, si vous êtes stressé, vous pouvez dépenser 1 %FORCE% pour changer jusqu’à 2 de vos résultats %FOCUS% en résultats %EVADE% ou %HIT%.%LINEBREAK%<strong>Navette de Communication :</strong> tant que vous êtes arrimé, votre vaisseau porteur gagne %COORDINATE%. Avant que votre vaisseau porteur ne s’active, il peut effectuer une action %COORDINATE%."""
        "Ezra Bridger (TIE Fighter)":
           display_name: """Ezra Bridger"""
           text: """Tant que vous défendez ou effectuez une attaque, si vous êtes stressé, vous pouvez dépenser 1 %FORCE% pour changer jusqu’à 2 de vos résultats %FOCUS% en résultats %EVADE% ou %HIT%."""
        "Feethan Ottraw Autopilot":
           display_name: """Pilote Automatique Feethan Ottraw"""
           text: """<i class = flavor_text>Contrairement aux chasseurs de conception fragile mais facilement remplaçables construits pour les Séparatistes, Feethan Ottraw Scalable Assemblies a également conçu le Belbullab-22, un appareil qui allie puissance de feu, résistance et vitesse.</i>"""
        "Fenn Rau (Sheathipede)":
           display_name: """Fenn Rau"""
           text: """Après qu’un vaisseau ennemi situé dans votre arc de tir vous a engagé, si vous n’êtes pas stressé, vous pouvez gagner 1 marqueur de stress. Dans ce cas, ce vaisseau ennemi ne peut pas dépenser de marqueur pour modifier des dés tant qu’il effectue une attaque pendant cette phase. %LINEBREAK%<strong>Navette de Communication :</strong> tant que vous êtes arrimé, votre vaisseau porteur gagne %COORDINATE%. Avant que votre vaisseau porteur ne s’active, il peut effectuer une action %COORDINATE%."""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """Tant que vous défendez ou effectuez une attaque, si la portée d’attaque est 1, vous pouvez lancer 1 dé supplémentaire. %LINEBREAK%<strong>Opposition Concordia :</strong> tant que vous défendez, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% de l’attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Finch Dallow":
           display_name: """Finch Dallow"""
           text: """Avant que vous ne larguiez une bombe, vous pouvez la placer dans la zone de jeu au contact de votre vaisseau à la place."""
        "Finn":
           display_name: """Finn"""
           text: """Tant que vous défendez ou effectuez une attaque, vous pouvez ajouter 1&nbsp;résultat vierge, ou vous pouvez gagner 1&nbsp;marqueur de contrainte pour ajouter 1&nbsp;résultat concentration à la place."""
        "First Order Test Pilot":
           display_name: """Pilote d’Essai du Premier Ordre"""
           text: """<i class = flavor_text>Conçu pour la vitesse et particulièrement maniable, le TIE Silencer est un appareil dévastateur entre les mains des pilotes qui savent en tirer tout son potentiel. Des pilotes moins talentueux seraient incapables de maîtriser la vélocité de ce vaisseau.</i>%LINEBREAK%<strong>Autopropulseurs:</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou une action %BOOST% rouge."""
        "Foreman Proach":
           display_name: """Contremaître Proach"""
           text: """Avant de vous engager, vous pouvez choisir 1 vaisseau ennemi dans votre %BULLSEYEARC% à portée 1-2 et gagner 1 marqueur de désarmement. Dans ce cas, ce vaisseau ennemi gagne 1 marqueur de rayon tracteur.%LINEBREAK%<strong>Stabilisateurs Crantés</strong> tant que vous vous déplacez, ignorez les astéroïdes.."""
        "Freighter Captain":
           display_name: """Capitaine de Cargo"""
           text: """<i class = flavor_text>De nombreux astropilotes gagnent leur vie en parcourant la Bordure Extérieure, un secteur où la différence entre contrebandier et marchand honnête est souvent ténue. Aux frontières de la civilisation, les clients sont beaucoup moins exigeants sur l’origine des marchandises, tant que les prix sont suffisamment attractifs.</i>"""
        "Gamma Squadron Ace":
           display_name: """As de l’Escadron Gamma"""
           text: """<i class = flavor_text>Bien qu’il ne soit pas aussi maniable et rapide qu’un TIE/ln, le Bombardier TIE a une puissance de feu suffisante pour détruire à peu près n’importe quelle cible. </i>%LINEBREAK%<strong>Bombardier Agile :</strong> si vous devez utiliser un gabarit %STRAIGHT% pour larguer un engin, vous pouvez utiliser un gabarit %BANKLEFT% ou %BANKRIGHT% de même vitesse à la place."""
        "Gand Findsman":
           display_name: """Trouveur Gand"""
           text: """<i class = flavor_text>Les légendaires Trouveurs de Gand vouaient un véritable culte aux brumes qui recouvraient leur planète natale et se servaient de signes, d’augures et de rituels mystiques pour traquer leurs proies.</i>"""
        "Garven Dreis (X-Wing)":
           display_name: """Garven Dreis"""
           text: """Après voir dépensé un marqueur de concentration, vous pouvez choisir 1 vaisseau allié à portée 1-3. Ce vaisseau gagne 1 marqueur de concentration."""
        "Garven Dreis":
           display_name: """Garven Dreis"""
           text: """Après avoir dépensé un marqueur de concentration, vous pouvez choisir 1 vaisseau allié à portée 1-3. Ce vaisseau allié gagne 1 marqueur de concentration."""
        "Gavin Darklighter":
           display_name: """Gavin Darklighter"""
           text: """Tant qu’un vaisseau allié effectue une attaque, si le défenseur est dans votre %FRONTARC%, l’attaquant peut changer 1 résultat&nbsp;%HIT% en un résultat %CRIT%.%LINEBREAK%<strong>Scanners Expérimentaux :</strong> vous pouvez verrouiller une cible au-delà de la portée 3. Vous ne pouvez pas verrouiller de cible à portée 1."""
        "General Grievous":
           display_name: """Général Grievous"""
           text: """Tant que vous effectuez une attaque principale, si vous n’est pas dans l’arc de tir du défenseur, vous pouvez relancer jusqu’à 2 dés d’attaque."""
        "Genesis Red":
           display_name: """Genesis Red"""
           text: """Après avoir verrouillé une cible, vous devez retirer tous vos marqueurs de concentration et d’évasion. Puis, gagnez autant de marqueurs de concentration et d’évasion qu’a le vaisseau verrouillé. %LINEBREAK%<strong>Emplacement d’Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Gideon Hask":
           display_name: """Gideon Hask"""
           text: """Tant que vous effectuez une attaque contre un défenseur endommagé, lancez 1 dé d’attaque supplémentaire."""
        "Gold Squadron Trooper":
           display_name: """Soldat de l’Escadron Or"""
           text: """<i class = flavor_text>Le chasseur Torrent V-19 a été conçu en tant que vaisseau léger d’escorte afin d’accompagner les intercepteurs Delta-7 pilotés par les chevaliers Jedi et bénéficie d’un profil aérodynamique unique lui permettant d’assurer parfaitement ce rôle.</i>"""
        "Gold Squadron Veteran":
           display_name: """Vétéran de l’Escadron Or"""
           text: """<i class = flavor_text>Sous le commandement de Jon «Dutch» Vander, l’Escadron Or a joué un rôle déterminant au cours des Batailles de Scarif et de Yavin.</i>"""
        "Gorgol":
           display_name: """Gorgol"""
           text: """Pendant la phase de système, vous pouvez gagner 1&nbsp;marqueur de désarmement et choisir un vaisseau allié à porté&nbsp;1-2. Dans ce cas, il gagne 1&nbsp;marqueur de rayon tracteur, puis il répare 1 de ses cartes de dégât face visible <strong> Vaisseau</strong>.%LINEBREAK%<strong>Dispositif Tracteur de Précision :</strong> vous ne pouvez pas faire pivoter votre %SINGLETURRETARC% vers votre %REARARC%. Après avoir exécuté une manœuvre, vous pouvez gagner 1&nbsp;marqueur de rayon tracteur pour effectuer une action&nbsp;%ROTATEARC%."""
        "Grand Inquisitor":
           display_name: """Grand Inquisiteur"""
           text: """Tant que vous défendez à portée d’attaque 1, vous pouvez dépenser 1 %FORCE% pour prévenir le bonus de portée 1. %LINEBREAK%Tant que vous effectuez une attaque contre un défenseur à portée d’attaque 2-3, vous pouvez dépenser 1 %FORCE% pour appliquer le bonus de portée 1."""
        "Gray Squadron Bomber":
           display_name: """Bombardier de l’Escadron Gris"""
           text: """<i class = flavor_text>Grâce à sa vitesse, sa robustesse et son armement lourd, le Y-wing resta un élément essentiel de la flotte Rebelle longtemps après sa mise en retraite par l’Empire Galactique.</i>"""
        "Graz":
           display_name: """Graz"""
           text: """Tant que vous défendez, si vous êtes derrière l’attaquant, lancez 1 dé de défense supplémentaire. %LINEBREAK%Tant que vous effectuez une attaque, si vous êtes derrière le défenseur, lancez 1 dé d’attaque supplémentaire."""
        "Green Squadron Expert":
           display_name: """Green Squadron Expert"""
           text: """<i class = flavor_text>Le RZ-2 intègre en série les modifications apportées au fil des ans à son prédécesseur. Les pilotes les plus audacieux considèrent que la meilleure fiabilité de ce modèle les autorise à repousser encore plus les limites de l’appareil.</i>%LINEBREAK%<strong>Gyrostabilisateurs Perfectionnés:</strong> vous pouvez pivoter votre indicateur %SINGLETURRETARC% uniquement vers votre %FRONTARC% ou %REARARC%.Après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge ou %ROTATEARC% rouge.."""
        "Green Squadron Pilot":
           display_name: """Pilote de l’Escadron Vert"""
           text: """<i class = flavor_text>À cause de ses commandes sensibles et de son extrême manœuvrabilité, seuls les meilleurs pilotes﻿ osent prendre place dans le cockpit d’un A-wing.</i>%LINEBREAK%<strong>Propulseurs Vectoriels :</strong> après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge."""
        "Greer Sonnel":
           display_name: """Greer Sonnel"""
           text: """Après avoir entièrement exécuté une manœuvre, vous pouvez pivoter votre %SINGLETURRETARC%.%LINEBREAK%<strong>Gyrostabilisateurs Perfectionnés:</strong> vous pouvez pivoter votre indicateur %SINGLETURRETARC% uniquement vers votre %FRONTARC% ou %REARARC%.Après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge ou %ROTATEARC% rouge.."""
        "Guri":
           display_name: """Guri"""
           text: """Au début de la phase d’engagement, s’il y a au moins 1 vaisseau ennemi à portée 0-1, vous pouvez gagner 1 marqueur de concentration. %LINEBREAK%<strong>Micropropulseurs :</strong> tant que vous effectuez un tonneau, vous devez utiliser le gabarit %BANKLEFT% ou %BANKRIGHT% à la place du gabarit %STRAIGHT%."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """Après avoir lancé des dés, si vous êtes à portée 0-1 d’un obstacle, vous pouvez relancer tous vos dés. Cela n’est pas considéré comme une relance pour les autres effets."""
        "Han Solo (Scum)":
           display_name: """Han Solo"""
           text: """Tant que vous défendez ou effectuez une attaque principale, si l’attaque est gênée par un obstacle, vous pouvez lancer 1 dé supplémentaire."""
        "Han Solo (Resistance)":
           display_name: """Han Solo"""
           text: """<strong>Mise en Place:</strong> vous pouvez être placé n’importe où dans la zone de jeu au-delà de la portée 3 de tout vaisseau ennemi."""
        "Heff Tobber":
           display_name: """Heff Tobber"""
           text: """Après qu’un vaisseau ennemi a exécuté une manœuvre, s’il est à portée 0, vous pouvez effectuer une action."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """Après avoir révélé une manœuvre bleue ou rouge, vous pouvez régler votre cadran sur une autre manœuvre de même difficulté.%LINEBREAK%<strong>Chargé et Prêt à Tirer :</strong> tant que vous êtes arrimé, après que votre vaisseau porteur a effectué une attaque principale %FRONTARC% ou %TURRET%, il peut effectuer une attaque principale %REARARC% bonus."""
        "Hera Syndulla (VCX-100)":
           display_name: """Hera Syndulla"""
           text: """Après avoir révélé une manœuvre bleue ou rouge, vous pouvez régler votre cadran sur une autre manœuvre de même difficulté.%LINEBREAK%<strong>Artillerie de Poupe :</strong> tant que vous avez un vaisseau arrimé, vous bénéficiez d’une arme principale %REARARC% avec une valeur d’attaque égale à celle de l’attaque principale %FRONTARC% du vaisseau arrimé."""
        "Hired Gun":
           display_name: """ Soudard"""
           text: """<i class = flavor_text>La simple évocation de crédits Impériaux peut attirer toutes sortes d’individus totalement amoraux dans votre camp.</i>"""
        "Horton Salm":
           display_name: """Horton Salm"""
           text: """Tant que vous effectuez une attaque, vous pouvez relancer 1 dé d’attaque pour chaque autre vaisseau allié à portée 0-1 du défenseur."""
        "IG-88A":
           display_name: """IG-88A"""
           text: """Au début de la phase d’engagement, vous pouvez choisir 1 vaisseau allié à portée 1-3 avec %CALCULATE% dans sa barre d’action. Dans ce cas, transférez-lui 1 de vos marqueurs de calcul. %LINEBREAK%<strong>Cerveau Droïde Avancé :</strong> après avoir effectué une action %CALCULATE%, gagnez 1 marqueur de calcul."""
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
           text: """Après avoir entièrement exécuté une manœuvre, si vous êtes stressé, vous pouvez lancer 1 dé d’attaque. Sur un résultat %HIT% ou %CRIT%, retirez 1 marqueur de stress."""
        "Iden Versio":
           display_name: """Iden Versio"""
           text: """Avant qu’un chasseur TIE/ln allié à portée 0-1 ne subisse 1 ou plusieurs dégâts, vous pouvez dépenser 1&nbsp;%CHARGE%. Dans ce cas, prévenez ce dégât."""
        "Imdaar Test Pilot":
           display_name: """Pilote d’Essai Imdaar"""
           text: """<i class = flavor_text>Conçu dans un centre de recherches secret sur Imdaar Alpha, le TIE Fantôme concrétise ce qui semblait impossible : un petit chasseur furtif équipé d’un système d’occultation avancé.</i>%LINEBREAK%<strong>Réseau de Stygium :</strong> après vous être désocculté, vous pouvez effectuer une action %EVADE%. Au début de la phase de dénouement, vous pouvez dépenser 1 marqueur d’évasion pour gagner 1 marqueur d’occultation. """
        "Inaldra":
           display_name: """Inaldra"""
           text: """Tant que vous défendez ou effectuez une attaque, vous pouvez subir 1 dégât&nbsp;%HIT% pour relancer n’importe quel nombre de vos dés. %LINEBREAK%<strong>Emplacement d’Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Inquisitor":
           display_name: """Inquisiteur"""
           text: """<i class = flavor_text>Les redoutables Inquisiteurs bénéficient d’une grande autonomie et ont accès aux technologies les plus récentes de l’Empire, comme le prototype TIE Advanced v1.</i>"""
        "Jake Farrell":
           display_name: """Jake Farrell"""
           text: """Après avoir effectué une action %BARRELROLL% ou %BOOST%, vous pouvez choisir un vaisseau allié à portée 0-1. Ce vaisseau peut effectuer une action %FOCUS%.%LINEBREAK%Propulseurs Vectoriels : après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge."""
        "Jakku Gunrunner":
           display_name: """Trafiquant d’Armes de Jakku"""
           text: """<i class = flavor_text>Le Remorqueur Spatial de Transfert Quadrimoteur, surnommé « Quad jumper », était aussi manœuvrable sous atmosphère que dans l’espace, ce qui le rendait extrêmement populaire auprès des contrebandiers et des explorateurs. </i>%LINEBREAK%<strong>Dispositif Tracteur de Remorqueur Spatial :</strong> <strong>Action :</strong> choisissez un vaisseau dans votre %FRONTARC% à portée 1. Il gagne 1 marqueur de rayon tracteur, ou 2 marqueurs de rayon tracteur s’il est dans votre %BULLSEYEARC% à portée 1."""
        "Jan Ors":
           display_name: """Jan Ors"""
           text: """Tant qu’un vaisseau allié situé dans votre arc de tir effectue une attaque principale, si vous n’êtes pas stressé, vous pouvez gagner 1 marqueur de stress. Dans ce cas, ce vaisseau peut lancer 1 dé d’attaque supplémentaire."""
        "Jaycris Tubbs":
           display_name: """Jaycris Tubbs"""
           text: """Après avoir entièrement exécuté une manœuvre bleue, vous pouvez choisir un vaisseau allié à portée 0-1. Dans ce cas, ce vaisseau allié retire 1 marqueur de stress.%LINEBREAK%<strong>Emplacement d’Arme :</strong> vous pouvez vous équiper de 1 amélioration&nbsp;%CANNON%, %TORPEDO% ou %MISSILE%."""
        "Jedi Knight":
           display_name: """Chevalier Jedi"""
           text: """<i class = flavor_text>Lorsque la Guerre des Clones débuta, les chevaliers Jedi rallièrent la cause de la sauvegarde de la République, prenant le commandement de légions composées de soldats clones et les menant au combat.</i>%LINEBREAK%<strong>Commandes Réactives :</strong> après avoir entièrement exécuté une manœuvre, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une action %BOOST% ou %BARRELROLL%."""
        "Jek Porkins":
           display_name: """Jek Porkins"""
           text: """Après avoir reçu un marqueur de stress, vous pouvez lancer 1 dé d’attaque pour le retirer.%LINEBREAK%Sur un résultat %HIT%, subissez 1 dégât %HIT%."""
        "Jessika Pava":
           display_name: """Jessika Pava"""
           text: """Tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 %CHARGE% ou 1 %CHARGE% non-récurrente de votre amélioration %ASTROMECH% équipée pour relancer jusqu’à 1 de vos dés pour chaque autre vaisseau allié à portée 0-1%LINEBREAK%<strong>Emplacement d’Arme:</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Joph Seastriker":
           display_name: """Joph Seastriker"""
           text: """Après avoir perdu 1 bouclier, gagnez 1 marqueur d’évasion..%LINEBREAK%<strong>Emplacement d’Arme:</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Joy Rekkoff":
           display_name: """Joy Rekkoff"""
           text: """Tant que vous effectuez une attaque, vous pouvez dépenser 1 %CHARGE% d’une amélioration %TORPEDO% équipée. Dans ce cas, le défenseur lance 1 dé de défense en moins. %LINEBREAK%<strong>Opposition Concordia :</strong> tant que vous défendez, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% de l’attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Kaa'to Leeachos":
           display_name: """Kaa’to Leeachos"""
           text: """Au début de la phase d’engagement, vous pouvez choisir 1 vaisseau allié à portée 0-2. Dans ce cas, transférez 1 marqueur de concentration ou d’évasion de ce vaisseau au vôtre."""
        "Kad Solus":
           display_name: """Kad Solus"""
           text: """Après avoir entièrement exécuté une manœuvre rouge, gagnez 2 marqueurs de concentration.%LINEBREAK%<strong>Opposition Concordia :</strong> tant que vous défendez, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% de l’attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """Tant qu’un vaisseau allié situé dans votre arc de tir défend, vous pouvez dépenser 1 %FORCE%. Dans ce cas, l’attaquant lance 1 dé d’attaque en moins.%LINEBREAK%<strong>Artillerie de Poupe :</strong> tant que vous avez un vaisseau arrimé, vous bénéficiez d’une arme principale %REARARC% avec une valeur d’attaque égale à celle de l’attaque principale %FRONTARC% du vaisseau arrimé."""
        "Kare Kun":
           display_name: """Kare Kun"""
           text: """Tant que vous accélérez, vous pouvez utiliser le gabarit [1 %TURNLEFT%] ou [1 %TURNRIGHT%] à la place.%LINEBREAK%<strong>Emplacement d’Arme:</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Kashyyyk Defender":
           display_name: """Défenseur de Kashyyyk"""
           text: """<i class = flavor_text>Équipée de trois canons laser jumelés Sureggi longue portée, la canonnière Auzituck donnait du fil à retordre aux esclavagistes dans le système de Kashyyyk.</i>"""
        "Kath Scarlet":
           display_name: """Kath Scarlet"""
           text: """Tant que vous effectuez une attaque principale, si au moins 1 vaisseau allié non-limité est à portée 0 du défenseur, lancez 1 dé d’attaque supplémentaire."""
        "Kavil":
           display_name: """Kavil"""
           text: """Tant que vous effectuez une attaque non-%FRONTARC%, lancez 1 dé d’attaque supplémentaire."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """Au début de la phase d’engagement, vous pouvez choisir 1 vaisseau à portée 0-1 qui est à la fois dans votre %FRONTARC% et dans votre %SINGLETURRETARC%. Dans ce cas, ce vaisseau gagne 1 marqueur de rayon tracteur."""
        "Knave Squadron Escort":
           display_name: """Escorte de l’Escadron Knave"""
           text: """<i class = flavor_text>Conçu pour combiner les meilleurs atouts de l’A-wing et du X-wing, l’E-wing dispose d’une puissance de feu, d’une vitesse et d’une manœuvrabilité supérieures.</i>%LINEBREAK%<strong>Scanners Expérimentaux :</strong> vous pouvez verrouiller une cible au-delà de la portée 3. Vous ne pouvez pas verrouiller de cible à portée 1."""
        "Koshka Frost":
           display_name: """Koshka Frost"""
           text: """Tant que vous défendez ou effectuez une attaque, si le vaisseau ennemi est stressé, vous pouvez relancer 1 de vos dés."""
        "Krassis Trelix":
           display_name: """Krassis Trelix"""
           text: """Vous pouvez effectuer des attaques spéciales %FRONTARC% depuis votre %REARARC%.%LINEBREAK%Tant que vous effectuez une attaque spéciale, vous pouvez relancer 1 dé d’attaque."""
        "Kullbee Sperado":
           display_name: """Kullbee Sperado"""
           text: """Après avoir effectué une action %BARRELROLL% ou %BOOST%, vous pouvez retourner votre carte d’amélioration %CONFIG% équipée."""
        "Kyle Katarn":
           display_name: """Kyle Katarn"""
           text: """Au début de la phase d’engagement, vous pouvez transférer 1 de vos marqueurs de concentration à un vaisseau allié situé dans votre arc de tir."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """Après avoir défendu, vous pouvez dépenser 1 %FORCE% pour assigner l’état <strong>Je Vous Montrerai le Côté Obscur</strong> à l’attaquant.%LINEBREAK%<strong>Autopropulseurs:</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou une action %BOOST% rouge."""
        "L3-37":
           display_name: """L3-37"""
           text: """Si vous n'êtes pas protégé, diminuez la difficulté de vos manœuvres de virages sur l’aile (%BANKLEFT% et %BANKRIGHT%)."""
        "L3-37 (Escape Craft)":
           display_name: """L3-37"""
           text: """Si vous n'êtes pas protégé, diminuez la difficulté de vos manœuvres de virages sur l’aile (%BANKLEFT% et %BANKRIGHT%).%LINEBREAK%Copilote : tant que vous êtes arrimé, votre vaisseau porteur bénéficie de votre capacité de pilote en plus de la sienne."""
        "Laetin A'shera":
           display_name: """Laetin A’shera"""
           text: """Après avoir défendu ou effectué une attaque, si l’attaque est ratée, gagnez 1 marqueur d’évasion. %LINEBREAK%<strong>Emplacement d’Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """Après avoir entièrement exécuté une manœuvre bleue, vous pouvez choisir un vaisseau allié à portée 0-3. Ce vaisseau peut effectuer une action."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian"""
           text: """Après avoir lancé des dés, si vous n’êtes pas stressé, vous pouvez gagner 1 marqueur de stress pour relancer tous vos résultats vierges."""
        "Lando Calrissian (Scum) (Escape Craft)":
           display_name: """Lando Calrissian"""
           text: """Après avoir lancé des dés, si vous n’êtes pas stressé, vous pouvez gagner 1 marqueur de stress pour relancer tous vos résultats vierges.%LINEBREAK%<strong>Copilote :</strong> tant que vous êtes arrimé, votre vaisseau porteur bénéficie de votre capacité de pilote en plus de la sienne."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """Au début de la phase d’engagement, vous pouvez choisir un vaisseau à portée 1 et dépenser un marqueur de verrouillage que vous avez sur ce vaisseau. Dans ce cas, ce vaisseau gagne 1 marqueur de rayon tracteur."""
        "Leevan Tenza":
           display_name: """Leevan Tenza"""
           text: """Après avoir effectué une action %BARRELROLL% ou %BOOST%, vous pouvez effectuer une action %EVADE% rogue."""
        "Lieutenant Bastian":
           display_name: """Lieutenant Bastian"""
           text: """Après qu’une carte de dégât a été attribuée à un vaisseau à portée 1-2, vous pouvez verrouiller ce vaisseau.%LINEBREAK%<strong>Emplacement d’Arme :</strong> vous pouvez vous équiper de 1 amélioration&nbsp;%CANNON%, %TORPEDO% ou %MISSILE%."""
        "Lieutenant Blount":
           display_name: """Lieutenant Blount"""
           text: """Tant que vous effectuez une attaque principale, si au moins 1 autre vaisseau allié est à portée 0-1 du défenseur, vous pouvez lancer 1 dé d’attaque supplémentaire."""
        "Lieutenant Dormitz":
           display_name: """Lieutenant Dormitz"""
           text: """<strong>Setup</strong>: après vous être placé, les autres vaisseaux alliés peuvent être placés n’importe où dans la zone de jeu à portée 0-2 de vous..%LINEBREAK%<strong>Batteries Jumelées:</strong> tant que vous effectuez une attaque %CANNON%, lancez 1 dé supplémentaire."""
        "Lieutenant Karsabi":
           display_name: """Lieutenant Karsabi"""
           text: """Après avoir gagné un marqueur de désarmement, si vous n’êtes pas stressé, vous pouvez gagner 1 marqueur de stress pour retirer 1 marqueur de désarmement."""
        "Lieutenant Kestal":
           display_name: """Lieutenant Kestal"""
           text: """Tant que vous effectuez une attaque, après que le défenseur a lancé les dés de défense, vous pouvez dépenser 1 marqueur de concentration pour annuler tous les résultats Vierge/%FOCUS% du défenseur."""
        "Lieutenant Rivas":
           display_name: """Lieutenant Rivas"""
           text: """Après qu’un vaisseau à portée 1-2 a gagné un marqueur rouge ou orange, si vous n’avez pas de verrouillage sur ce vaisseau, vous pouvez le verrouiller."""
        "Lieutenant Sai":
           display_name: """Lieutenant Sai"""
           text: """Après avoir effectué une action %COORDINATE%, si le vaisseau que vous avez choisi effectue une action de votre barre d’action, vous pouvez effectuer cette action."""
        "Lieutenant Tavson":
           display_name: """Lieutenant Tavson"""
           text: """Après avoir subi des dégâts, vous pouvez dépenser 1 %CHARGE% pour effectuer une action.%LINEBREAK%<strong>Batteries Jumelées:</strong> tant que vous effectuez une attaque %CANNON%, lancez 1 dé supplémentaire."""
        "Logistics Division Pilot":
           display_name: """Pilote de la Division Logistique"""
           text: """<i class = flavor_text>En l’absence de soutien de la Nouvelle République, les membres de la Résistance ont souvent une double fonction en tant que pilote de transport et mécanicien, mettant à profit leurs compétences et leur savoir technique au service du combat contre le Premier Ordre. </i>"""
        "Lok Revenant":
           display_name: """Revenant de Lok"""
           text: """<i class = flavor_text>Le Collectif de Conception Nubien créa le Bombardier Scurrg H-6 en songeant avant tout à sa polyvalence au combat, l’équipant de puissants boucliers et d’un large éventail d’armes destructrices.</i>"""
        "Lothal Rebel":
           display_name: """Rebelle de Lothal"""
           text: """<i class = flavor_text>Autre réussite commerciale de la Corporation Technique Corellienne, le cargo VCX-100 est plus gros que les légendaires appareils de la série YT, et propose un espace de vie plus volumineux et de meilleures possibilités de personnalisation.</i>%LINEBREAK%<strong>Artillerie de Poupe :</strong> tant que vous avez un vaisseau arrimé, vous bénéficiez d’une arme principale %REARARC% avec une valeur d’attaque égale à celle de l’attaque principale %FRONTARC% du vaisseau arrimé."""
        "Lowhhrick":
           display_name: """Lowhhrick"""
           text: """Après qu’un vaisseau allié à portée 0-1 est devenu le défenseur, vous pouvez dépenser 1 marqueur de renforcement. Dans ce cas, le vaisseau défenseur gagne 1 marqueur d’évasion."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """Après être devenu le défenseur (avant que les dés ne soient lancés), vous pouvez récupérer 1 %FORCE%."""
        "Luminara Unduli":
           display_name: """Luminara Unduli"""
           text: """Tant qu’un vaisseau allié à portée&nbsp;0-2 défend, s’il n’est pas dans l’%BULLSEYEARC% de l’attaquant, vous pouvez dépenser 1&nbsp;%FORCE%. Dans ce cas, changez 1 résultat %CRIT% en un résultat %HIT% ou 1 résultat %HIT% en un résultat %FOCUS%.%LINEBREAK%<strong>Commandes Réactives :</strong> après avoir entièrement exécuté une manœuvre, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une action %BOOST% ou %BARRELROLL%."""
        "L'ulo L'ampar":
           display_name: """L’ulo L’ampar"""
           text: """Tant que vous défendez ou effectuez une attaque principale, si vous êtes stressé, vous <b>devez</b> lancer 1 dé de défense en moins ou 1 dé d’attaque supplémentaire.%LINEBREAK%<strong>Gyrostabilisateurs Perfectionnés:</strong> vous pouvez pivoter votre indicateur %SINGLETURRETARC% uniquement vers votre %FRONTARC% ou %REARARC%.Après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge ou %ROTATEARC% rouge.."""
        "Maarek Stele":
           display_name: """Maarek Stele"""
           text: """Tant que vous effectuez une attaque, si une carte de dégât devrait être attribuée face visible au défenseur, piochez 3 cartes de dégât à la place, choisissez-en 1, et défaussez les autres. %LINEBREAK%<strong>Ordinateur de Visée Avancé :</strong> tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d’attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Mace Windu":
           display_name: """Mace Windu"""
           text: """Après avoir entièrement exécuté une manœuvre rouge, récupérez 1&nbsp;%FORCE%.%LINEBREAK%<strong>Commandes Réactives :</strong> après avoir entièrement exécuté une manœuvre, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une action %BOOST% ou %BARRELROLL%."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """Tant qu’un vaisseau allié à portée 0-2 défend, l’attaquant ne peut pas relancer plus de 1 dé d’attaque."""
        "Major Rhymer":
           display_name: """Major Rhymer"""
           text: """Tant que vous effectuez une attaque %TORPEDO% ou %MISSILE%, vous pouvez augmenter ou réduire de 1 le prérequis de portée, dans une limite de 0-3. %LINEBREAK%<strong>Bombardier Agile :</strong> si vous devez utiliser un gabarit %STRAIGHT% pour larguer un engin, vous pouvez utiliser un gabarit %BANKLEFT% ou %BANKRIGHT% de même vitesse à la place."""
        "Major Stridan":
           display_name: """Major Stridan"""
           text: """Tant que vous coordonnez ou résolvez l’effet d’une de vos améliorations, vous pouvez considérer les vaisseaux alliés à portée 2-3 comme étant à portée 0 ou à portée 1.%LINEBREAK%<strong>Batteries Jumelées:</strong> tant que vous effectuez une attaque %CANNON%, lancez 1 dé supplémentaire."""
        "Major Vermeil":
           display_name: """Major Vermeil"""
           text: """Tant que vous effectuez une attaque, si le défenseur n’a aucun marqueur vert, vous pouvez changer 1 de vos résultats Vierge ou %FOCUS% en un résultat %HIT%.%LINEBREAK% %LINEBREAK%<strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n’êtes pas stressé, vous <b>devez</b> exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], ou [1&nbsp;%BANKRIGHT%]."""
        "Major Vynder":
           display_name: """Major Vynder"""
           text: """Tant que vous défendez, si vous êtes désarmé, lancez 1 dé de défense supplémentaire."""
        "Manaroo":
           display_name: """Manaroo"""
           text: """Au début de la phase d’engagement, vous pouvez choisir un vaisseau allié à portée 0-1. Dans ce cas, transférez à ce vaisseau tous vos marqueurs verts."""
        "Mining Guild Sentry":
           display_name: """Guetteur de la Guilde Minière"""
           text: """<i class = flavor_text>Dans le cadre de ses accords avec l’Empire, la Guilde Minière a obtenu des chasseurs TIE/ln modifiés pour protéger ses installations. Le retrait de deux panneaux solaires améliore la vision périphérique de l’appareil et l’ajout d’un équipement de survie perfectionné est très prisé des pilotes de la corporation.</i>%LINEBREAK%<strong>Stabilisateurs Crantés</strong> tant que vous vous déplacez, ignorez les astéroïdes.."""
        "Mining Guild Surveyor":
           display_name: """Prospecteur de la Guilde Minière"""
           text: """<i class = flavor_text>Les projets impériaux consommant de plus en plus de matières premières, la Guilde Minière exploite avidement les gisements de minerai de doonium récemment mis au jour sur des planètes telles que Batonn, Lothal ou Umbara..</i>%LINEBREAK%<strong>Stabilisateurs Crantés</strong> tant que vous vous déplacez, ignorez les astéroïdes.."""
        "Miranda Doni":
           display_name: """Miranda Doni"""
           text: """Tant que vous effectuez une attaque principale, vous pouvez soit dépenser 1 bouclier pour lancer 1 dé d’attaque supplémentaire, soit, si vous n’êtes pas protégé, vous pouvez lancer 1 dé d’attaque en moins pour récupérer 1 bouclier."""
        "Moralo Eval":
           display_name: """Moralo Eval"""
           text: """Si vous êtes censé fuir, vous pouvez dépenser 1 %CHARGE%. Dans ce cas, mettez-vous en réserve à la place. Au début de la prochaine phase de préparation, placez-vous intégralement à portée 1 du bord de la zone de jeu par lequel vous auriez dû fuir."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """Après avoir gagné un marqueur de stress, si un vaisseau ennemi est dans votre %FRONTARC% à portée 0-1, vous pouvez retirer ce marqueur de stress.%LINEBREAK%<strong>Emplacement d’Arme:</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Nodin Chavdri":
           display_name: """Nodin Chavdri"""
           text: """Après avoir coordonné ou avoir été coordonné, si vous avez 2 marqueurs de stress ou moins, vous pouvez effectuer 1&nbsp;action de votre barre d’action en tant qu’action rouge, même si vous êtes stressé."""
        "Norra Wexley (Y-Wing)":
           display_name: """Norra Wexley"""
           text: """Tant que vous défendez, si un vaisseau ennemi est à portée 0-1, ajoutez 1 résultat&nbsp;%EVADE% à vos résultats de dés."""
        "Norra Wexley":
           display_name: """Norra Wexley"""
           text: """Tant que vous défendez, si un vaisseau ennemi est à portée 0-1, vous pouvez ajouter 1 résultat %EVADE% aux résultats de vos dés."""
        "Nu Squadron Pilot":
           display_name: """Pilote de l’Escadron Nu"""
           text: """<i class = flavor_text>D’une conception similaire aux autres vaisseaux développés par Cygnus Spaceworks, le Star Wing de classe Alpha est un appareil polyvalent attribué aux unités spécialisées de la Marine Impériale qui ont besoin d’un chasseur facilement adaptable pour des missions variées.</i>"""
        "N'dru Suhlak":
           display_name: """N’dru Suhlak"""
           text: """Tant que vous effectuez une attaque principale, si aucun autre vaisseau allié n’est à portée 0-2, lancez 1 dé d’attaque supplémentaire."""
        "Obi-Wan Kenobi":
           display_name: """Obi-Wan Kenobi"""
           text: """Après qu’un vaisseau allié à portée&nbsp;0-2 a dépensé un marqueur de concentration, vous pouvez dépenser 1&nbsp;%FORCE%. Dans ce cas, ce vaisseau allié gagne 1 marqueur de concentration.%LINEBREAK%<strong>Commandes Réactives :</strong> après avoir entièrement exécuté une manœuvre, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une action %BOOST% ou %BARRELROLL%."""
        "Obsidian Squadron Pilot":
           display_name: """Pilote de l’Escadron Obsidian"""
           text: """<i class = flavor_text>Le moteur ionique jumelé des chasseurs TIE a été conçu pour la vitesse, ce qui classe ces derniers parmi les vaisseaux les plus maniables jamais produits.</i>"""
        "Old Teroch":
           display_name: """Vieux Teroch"""
           text: """Au début de la phase d’engagement, vous pouvez choisir 1 vaisseau ennemi à portée 1. Dans ce cas, si vous êtes dans son %FRONTARC%, il retire tous ses marqueurs verts.%LINEBREAK%<strong>Opposition Concordia :</strong> tant que vous défendez, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% de l’attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Omega Squadron Ace":
           display_name: """As de l’Escadron Omega"""
           text: """<i class = flavor_text>Seuls les pilotes qui ont fait la démonstration de leur talent et d’un dévouement sans faille peuvent accéder aux postes privilégiés des escadrons du Premier Ordre et mener des missions secrètes contre la Nouvelle République.</i>"""
        "Omega Squadron Expert":
           display_name: """Expert de l’Escadron Omega"""
           text: """<i class = flavor_text>Le TIE/sf est un appareil polyvalent qui embarque de l’armement spécialisé et des systèmes expérimentaux utilisés lors des opérations à long rayon d’action des Forces spéciales du Premier Ordre..</i>%LINEBREAK%<strong>Tourelle d’Arme Lourde: </strong> vous pouvez pivoter votre indicateur %SINGLETURRETARC% uniquement vers votre %FRONTARC% ou %REARARC%. Vous devez considérer le prérequis %FRONTARC% de vos améliorations %MISSILE% équipées comme étant %SINGLETURRETARC%."""
        "Omicron Group Pilot":
           display_name: """Pilote du Groupe Omicron"""
           text: """<i class = flavor_text>Appareil utilitaire léger, la navette de classe Lambda, reconnaissable à sa triple aile caractéristique, joue un rôle de premier plan dans la Marine Impériale, grâce à ses senseurs avancés.</i>"""
        "Onyx Squadron Ace":
           display_name: """As de l’Escadron Onyx"""
           text: """<i class = flavor_text>L’appareil expérimental qu’est le défenseur TIE surclasse tous les vaisseaux de sa génération, mais sa taille, sa vitesse et son arsenal augmentent considérablement son coût de fabrication.</i>%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action %EVADE%."""
        "Onyx Squadron Scout":
           display_name: """Éclaireur de l’Escadron Onyx"""
           text: """<i class = flavor_text>Conçu pour les engagements de longue haleine, le TIE/ag est habituellement confié aux pilotes d’élite entraînés pour tirer le meilleur parti de son armement et de sa manœuvrabilité.</i>"""
        "Outer Rim Pioneer":
           display_name: """Colon de la Bordure Extérieure"""
           text: """Les vaisseaux alliés à portée 0-1 peuvent effectuer des attaques en étant à portée 0 des obstacles.%LINEBREAK%Copilote : tant que vous êtes arrimé, votre vaisseau porteur bénéficie de votre capacité de pilote en plus de la sienne."""
        "Outer Rim Smuggler":
           display_name: """Contrebandier de la Bordure Extérieure"""
           text: """<i class = flavor_text>Connu pour sa robustesse et sa conception modulaire, le YT-1300 est l’un des cargos les plus populaires et répandus de la galaxie.</i>"""
        "Overseer Yushyn":
           display_name: """Superviseur Yushyn"""
           text: """Avant qu’un vaisseau allié à portée 1 ne gagne un marqueur de désarmement, si ce vaisseau allié n’est pas stressé, vous pouvez dépenser 1 %CHARGE%. Dans ce cas, le vaisseau allié gagne 1 marqueur de stress à la place..%LINEBREAK%<strong>Stabilisateurs Crantés</strong> tant que vous vous déplacez, ignorez les astéroïdes.."""
        "Padmé Amidala":
           display_name: """Padmé Amidala"""
           text: """Tant qu’un vaisseau ennemi dans votre %FRONTARC% défend ou effectue une attaque, ce vaisseau ennemi ne peut modifier que 1 seul résultat&nbsp;%FOCUS% (les autres résultats peuvent toujours être modifiés).%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action&nbsp;%EVADE%."""
        "Palob Godalhi":
           display_name: """Palob Godalhi"""
           text: """Au début de la phase d’engagement, vous pouvez choisir 1 vaisseau ennemi dans votre arc de tir, à portée 0-2. Dans ce cas, transférez 1 marqueur de concentration ou d’évasion de ce vaisseau au vôtre."""
        "Pammich Nerro Goode":
           display_name: """Pammich Nerro Goode"""
           text: """Tant que vous avez 2&nbsp;marqueurs de stress ou moins, vous pouvez exécuter des manœuvres rouges même si vous êtes stressé."""
        "Partisan Renegade":
           display_name: """Renégat Partisan"""
           text: """<i class = flavor_text>Les Partisans de Saw Gerrera se rassemblèrent d’abord pour combattre les troupes Séparatistes sur Onderon lors de la Guerre des Clones, puis ils continuèrent de lutter contre la tyrannie galactique instaurée par l’Empire.</i>"""
        "Patrol Leader":
           display_name: """Chef de Patrouille"""
           text: """<i class = flavor_text>Recevoir le commandement d’un Décimateur VT-49 est une promotion de taille pour un officier moyen de la Marine Impériale.</i>"""
        "Petranaki Arena Ace":
           display_name: """As de l’Arène Petranaki"""
           text: """<i class = flavor_text>L’Arène de Petranaki est un gigantesque édifice de Géonosis qui a été le lieu principal de la première bataille de la Guerre des Clones.</i>%LINEBREAK%<strong>Dispositif Tracteur de Précision :</strong> vous ne pouvez pas faire pivoter votre %SINGLETURRETARC% vers votre %REARARC%. Après avoir exécuté une manœuvre, vous pouvez gagner 1&nbsp;marqueur de rayon tracteur pour effectuer une action&nbsp;%ROTATEARC%."""
        "Petty Officer Thanisson":
           display_name: """Petty Officer Thanisson"""
           text: """Pendant la phase d’activation ou d’engagement, après qu’un vaisseau dans votre %FRONTARC% à portée 0-2 a gagné 1 marqueur de stress, vous pouvez dépenser 1&nbsp;%CHARGE%. Dans ce cas, ce vaisseau gagne 1 marqueur de rayon tracteur..%LINEBREAK%<strong>Batteries Jumelées:</strong> tant que vous effectuez une attaque %CANNON%, lancez 1 dé supplémentaire."""
        "Phoenix Squadron Pilot":
           display_name: """Pilote de l’Escadron Phœnix"""
           text: """<i class = flavor_text>Dirigés par le commandant Jun Sato et malgré leur manque d’expérience, les courageux pilotes de l’Escadron Phœnix firent face à des défis complexes dans leur lutte contre l’Empire Galactique.</i>%LINEBREAK%<strong>Propulseurs Vectoriels :</strong> après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge."""
        "Planetary Sentinel":
           display_name: """Sentinelle Planétaire"""
           text: """<i class = flavor_text>Pour protéger ses installations militaires, l’Empire a besoin d’une force de défense rapide et vigilante.</i>%LINEBREAK%<strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n’êtes pas stressé, vous devez exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] ou [1&nbsp;%BANKRIGHT%]."""
        "Plo Koon":
           display_name: """Plo Koon"""
           text: """Au début de la phase d’engagement, vous pouvez dépenser 1&nbsp;%FORCE% et choisir un autre vaisseau allié à portée&nbsp;0-2. Dans ce cas, vous pouvez transférer 1 marqueur vert à ce vaisseau ou transférer 1 marqueur orange de ce vaisseau au vôtre.%LINEBREAK%<strong>Commandes Réactives :</strong> après avoir entièrement exécuté une manœuvre, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une action %BOOST% ou %BARRELROLL%."""
        "Poe Dameron":
           display_name: """Poe Dameron"""
           text: """Après avoir effectué une action, vous pouvez dépenser 1 %CHARGE% pour effectuer une action blanche, en la considérant comme rouge.%LINEBREAK%<strong>Emplacement d’Arme:</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Prince Xizor":
           display_name: """Prince Xizor"""
           text: """Tant que vous défendez, après l’étape «&nbsp;Neutraliser les résultats&nbsp;», un autre vaisseau allié à portée 0-1 et dans l’arc de l’attaque peut subir 1 dégât&nbsp;%HIT% ou %CRIT%. Dans ce cas, annulez 1 dégât correspondant.%LINEBREAK%<strong>Micropropulseurs :</strong> tant que vous effectuez un tonneau, vous devez utiliser le gabarit %BANKLEFT% ou %BANKRIGHT% à la place du gabarit %STRAIGHT%."""
        "Quinn Jast":
           display_name: """Quinn Jast"""
           text: """Au début de la phase d’engagement, vous pouvez gagner 1 marqueur de désarmement pour récupérer 1 %CHARGE% sur 1 de vos améliorations équipées.%LINEBREAK%<strong>Emplacement d’Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """Au début de la phase d’engagement, s’il y a un vaisseau ennemi dans votre %REARARC%, gagnez 1 marqueur de calcul.%LINEBREAK%<strong>Coque Blindée :</strong> tant que vous défendez, si vous n’êtes pas critiquement endommagé, changez 1 résultat&nbsp;%CRIT% en un résultat&nbsp;%HIT%."""
        "Rear Admiral Chiraneau":
           display_name: """Vice-Amiral Chiraneau"""
           text: """Tant que vous effectuez une attaque, si vous êtes renforcé et si le défenseur est dans l’arc %FULLFRONTARC% ou %FULLREARARC% correspondant à votre marqueur de renforcement, vous pouvez changer 1 de vos résultats %FOCUS% en un résultat %CRIT%."""
        "Rebel Scout":
           display_name: """Éclaireur Rebelle"""
           text: """<i class = flavor_text>Conçue par la Corporation Technique Corellienne et inspirée d’un oiseau  en vol, la série « hawk » a produit d’excellents cargos légers. Rapide et résistant, le HWK-290 est souvent utilisé par les agents Rebelles en tant que base mobile d’opérations.</i>"""
        "Red Squadron Bomber":
           display_name: """Bombardier de l’Escadron Rouge"""
           text: """<i class = flavor_text>Durant la bataille de Géonosis, l’Escadron Rouge a fourni une couverture indispensable aux canonnières TO/BA déployées pour sécuriser la surface.</i>%LINEBREAK%<strong>Coque Blindée :</strong> tant que vous défendez, si vous n’êtes pas critiquement endommagé, changez 1 résultat&nbsp;%CRIT% en un résultat&nbsp;%HIT%."""
        "Red Squadron Expert":
           display_name: """Expert de l’Escadron Rouge"""
           text: """<i class = flavor_text>Le Corps des Chasseurs de la Résistance est en grande partie constitué de jeunes volontaires issus de la Nouvelle République, mais aussi de vétérans de la Guerre Civile Galactique déterminés à terminer ce qu’ils ont commencé quelques décennies plus tôt.</i>%LINEBREAK%<strong>Emplacement d’Arme:</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Red Squadron Veteran":
           display_name: """Vétéran de l’Escadron Rouge"""
           text: """<i class = flavor_text>Conçu comme une unité d’élite pour les combats spatiaux, l’Escadron Rouge comprend certains des meilleurs pilotes de l’Alliance Rebelle.</i>"""
        "Resistance Sympathizer":
           display_name: """Sympathisant de la Résistance"""
           text: """<i class = flavor_text>Après avoir assisté au Cataclysme Hosnien, nombreux furent les astropilotes à mettre leurs vaisseaux à la disposition de la Résistance.</i>"""
        "Rexler Brath":
           display_name: """Rexler Brath"""
           text: """Après avoir effectué une attaque qui touche, si vous avez un marqueur d’évasion, exposez 1 des cartes de dégât du défenseur.%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action %EVADE%."""
        "Rey":
           display_name: """Rey"""
           text: """Tant que vous défendez ou effectuez une attaque, si le vaisseau ennemi est dans votre %FRONTARC%, vous pouvez dépenser 1 %FORCE% pour changer 1 de vos résultats vierges en un résultat %EVADE% ou %HIT%."""
        "Rho Squadron Pilot":
           display_name: """Pilote de l’Escadron Rho"""
           text: """<i class = flavor_text>Les pilotes d’élite de l’escadron Rho distillent la peur au sein de la Rébellion, la configuration d’assaut Xg-1 et l’arsenal Os-1 embarqué du Star Wing de classe Alpha ayant des effets dévastateurs.</i>"""
        "Ric Olié":
           display_name: """Ric Olié"""
           text: """Tant que vous défendez ou effectuez une attaque principale, si la vitesse de votre manœuvre révélée est plus élevée que celle du vaisseau ennemi, lancez 1&nbsp;dé supplémentaire.%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action&nbsp;%EVADE%."""
        "Roark Garnet":
           display_name: """Roark Garnet"""
           text: """Au début de la phase d’engagement, vous pouvez choisir 1 vaisseau situé dans votre arc de tir. Dans ce cas, pendant cette phase, il s’engage à l’initiative 7 au lieu de le faire à sa valeur d’initiative standard."""
        "Rogue Squadron Escort":
           display_name: """Escorte de l’Escadron Rogue"""
           text: """<i class = flavor_text>Les pilotes d’élite de l’Escadron Rogue font partie des meilleurs pilotes de la Rébellion.</i>%LINEBREAK%<strong>Scanners Expérimentaux :</strong> vous pouvez verrouiller une cible au-delà de la portée 3. Vous ne pouvez pas verrouiller de cible à portée 1."""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """Tant que vous défendez ou effectuez une attaque, vous pouvez relancer jusqu’à 1&nbsp;de vos dés pour chaque autre vaisseau allié situé dans l’arc d’attaque."""
        "Saber Squadron Ace":
           display_name: """As de l’Escadron Sabre"""
           text: """<i class = flavor_text>Dirigés par le Baron Fel Soontir, les pilotes de l’escadron Sabre sont parmi les meilleurs de l’Empire. Leurs Intercepteurs TIE sont marqués avec des bandes rouges pour désigner les pilotes ayant au moins dix victoires confirmées.</i>%LINEBREAK% <strong>Autopropulseurs :</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou %BOOST% rouge."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """Avant votre activation, vous pouvez effectuer une action %BARRELROLL% ou %BOOST%.%LINEBREAK%<strong>Chargé et Prêt à Tirer :</strong> tant que vous êtes arrimé, après que votre vaisseau porteur a effectué une attaque principale %FRONTARC% ou %TURRET%, il peut effectuer une attaque principale %REARARC% bonus."""
        "Sabine Wren (TIE Fighter)":
           display_name: """Sabine Wren"""
           text: """Avant votre activation, vous pouvez effectuer une action %BARRELROLL% ou %BOOST%."""
        "Sabine Wren (Scum)":
           display_name: """Sabine Wren"""
           text: """Tant que vous défendez, si l’attaquant est dans votre %SINGLETURRETARC% à portée 0-2, vous pouvez ajouter 1 résultat %FOCUS% aux résultat de vos dés."""
        "Saesee Tiin":
           display_name: """Saesee Tiin"""
           text: """Après qu’un vaisseau allié à portée&nbsp;0-2 a révélé son cadran, vous pouvez dépenser 1&nbsp;%FORCE%. Dans ce cas, réglez son cadran sur une autre manœuvre de même vitesse et de même difficulté.%LINEBREAK%<strong>Commandes Réactives :</strong> après avoir entièrement exécuté une manœuvre, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une action %BOOST% ou %BARRELROLL%."""
        "Sarco Plank":
           display_name: """Sarco Plank"""
           text: """Tant que vous défendez, vous pouvez considérer que votre valeur d’agilité est égale à la vitesse de la manœuvre que vous exécutez à ce round.%LINEBREAK%<strong>Dispositif Tracteur de Remorqueur Spatial :</strong> <strong>Action :</strong> choisissez un vaisseau dans votre %FRONTARC% à portée 1. Il gagne 1 marqueur de rayon tracteur, ou 2 marqueurs de rayon tracteur s’il est dans votre %BULLSEYEARC% à portée 1."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """Tant qu’un vaisseau allié endommagé à portée 0-3 effectue une attaque, il peut relancer 1 dé d’attaque."""
        "Scarif Base Pilot":
           display_name: """Pilote de la Base de Scarif"""
           text: """<i class = flavor_text>Le TIE Reaper fut conçu pour déposer des troupes d’élite sur les points chauds des champs de bataille, comme les terrifiants Death Troopers du Directeur Krennic lors de la Bataille de Scarif.</i>%LINEBREAK%<strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n’êtes pas stressé, vous <b>devez</b> exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], ou [1&nbsp;%BANKRIGHT%]."""
        "Scimitar Squadron Pilot":
           display_name: """Scimitar Squadron Pilot"""
           text: """<i class = flavor_text>Le TIE/sa est particulièrement précis pour un bombardier, lui permettant des frappes ciblées tout en évitant d’infliger des dommages collatéraux excessifs à la zone environnante.</i>%LINEBREAK%<strong>Bombardier Agile :</strong> si vous devez utiliser un gabarit %STRAIGHT% pour larguer un engin, vous pouvez utiliser un gabarit %BANKLEFT% ou %BANKRIGHT% de même vitesse à la place."""
        "Separatist Bomber":
           display_name: """Bombardier Séparatiste"""
           text: """<i class = flavor_text>Les armées droïdes des Séparatistes sont insensibles à la détresse des civils et ne font aucun effort pour limiter les dommages collatéraux.</i>%LINEBREAK%<strong>Calculs en Réseau :</strong> tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de calcul d’un vaisseau allié à portée&nbsp;0-1 pour changer 1 résultat&nbsp;%FOCUS% en un résultat %EVADE% ou %HIT%."""
        "Separatist Drone":
           display_name: """Drone Séparatiste"""
           text: """<i class = flavor_text>Alors que la Guerre des Clones s’intensifie, l’Alliance Séparatiste continue d’améliorer la technologie des chasseurs droïdes, ainsi que les droïdes tactiques qui les dirigent.</i>%LINEBREAK%<strong>Calculs en Réseau :</strong> tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de calcul d’un vaisseau allié à portée&nbsp;0-1 pour changer 1 résultat&nbsp;%FOCUS% en un résultat %EVADE% ou %HIT%."""
        "Serissu":
           display_name: """Serissu"""
           text: """Tant qu’un vaisseau allié à portée 0-1 défend, il peut relancer 1 de ses dés. %LINEBREAK%<strong>Emplacement d’Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Seventh Sister":
           display_name: """La Septième Sœur"""
           text: """Tant que vous effectuez une attaque principale, avant l’étape «&nbsp;Neutraliser les résultats&nbsp;», vous pouvez dépenser 2 %FORCE% pour annuler 1 résultat %EVADE%."""
        "Seyn Marana":
           display_name: """Seyn Marana"""
           text: """Tant que vous effectuez une attaque, vous pouvez dépenser 1 résultat %CRIT%. Dans ce cas, attribuez 1 carte de dégât face cachée au défenseur, puis annuler vos résultats restants."""
        "Shadow Squadron Veteran":
           display_name: """Vétéran de l’Escadron Shadow"""
           text: """<i class = flavor_text>l’Escadron Shadow, actif depuis les tout premiers jours de la Guerre des Clones, a remporté des victoires prestigieuses à Kadavo et contre le vaisseau amiral de Grievous, le Malveillance.</i>%LINEBREAK%<strong>Coque Blindée :</strong> tant que vous défendez, si vous n’êtes pas critiquement endommagé, changez 1 résultat&nbsp;%CRIT% en un résultat&nbsp;%HIT%."""
        "Shadowport Hunter":
           display_name: """Chasseur des Ports Fantômes"""
           text: """<i class = flavor_text>Les organisations criminelles confient à leurs agents loyaux des vaisseaux disposant de la meilleure technologie possible, comme le véloce et redoutable Appareil de Poursuite de Classe Lancer, afin de renforcer leurs aptitudes létales.</i>"""
        "Shara Bey":
           display_name: """Shara Bey"""
           text: """Tant que vous défendez ou effectuez une attaque principale, vous pouvez dépenser 1 marqueur de verrouillage que vous avez sur le vaisseau ennemi pour ajouter 1 résultat&nbsp;%FOCUS% aux résultats de vos dés."""
        "Sienar Specialist":
           display_name: """Spécialiste Sienar"""
           text: """<i class = flavor_text>Lors du développement du TIE Aggressor, Sienar Fleet Systems accorda d’avantage d’importance aux performances et à la polyvalence qu’à la maîtrise des coûts.</i>"""
        "Sienar-Jaemus Engineer":
           display_name: """Ingénieur Sienar-Jaemus"""
           text: """<i class = flavor_text>Conçu par Sienar-Jaemus Fleet Systems pour succéder au fameux TIE Defender, le TIE/vn Silencer intègre des technologies de pointe développées par des centres de recherche dissimulés dans les Régions Inconnues.</i>%LINEBREAK%<strong>Autopropulseurs:</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou une action %BOOST% rouge."""
        "Sigma Squadron Ace":
           display_name: """As de l’Escadron Sigma"""
           text: """<i class = flavor_text>Équipé d’un hyperdrive et de boucliers, le TIE Fantôme dispose également de cinq canons laser qui lui confèrent une puissance de feu inouïe pour un chasseur Impérial.</i>%LINEBREAK%<strong>Réseau de Stygium :</strong> après vous être désocculté, vous pouvez effectuer une action %EVADE%. Au début de la phase de dénouement, vous pouvez dépenser 1 marqueur d’évasion pour gagner 1 marqueur d’occultation. """
        "Skakoan Ace":
           display_name: """As Skakoan"""
           text: """<i class = flavor_text>Doté de propulseurs puissants, armé de triples canons laser dévastateurs et modifiable à volonté, le chasseur Belbullab-22 a été adopté par de nombreux pilotes d'élite de l’Alliance Séparatiste, dont le tristement célèbre Général Grievous.</i>"""
        "Skull Squadron Pilot":
           display_name: """Pilote de l’Escadron Skull"""
           text: """<i class = flavor_text>Les as de l’Escadron Skull privilégient une approche agressive, profitant de la technologie d’ailes montées sur pivot de leurs appareils, ce qui leur confère une maniabilité exceptionnelle quand ils poursuivent leurs proies. </i>%LINEBREAK%<strong>Opposition Concordia :</strong> tant que vous défendez, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% de l’attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Sol Sixxa":
           display_name: """Sol Sixxa"""
           text: """Si vous êtes censé larguer un engin en utilisant un gabarit [1&nbsp;%STRAIGHT%], vous pouvez le larguer en utilisant n’importe quel autre gabarit de vitess﻿e 1 à la place."""
        "Soontir Fel":
           display_name: """Soontir Fel"""
           text: """Au début de la phase d’engagement, si un vaisseau ennemi est dans votre %BULLSEYEARC%, gagnez 1 marqueur de concentration. %LINEBREAK%<strong>Autopropulseurs :</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou %BOOST% rouge."""
        "Spice Runner":
           display_name: """Trafiquant d’Épice"""
           text: """<i class = flavor_text>Bien que ses soutes soient plus étroites que celles d’autres cargos légers, le petit mais véloce HWK-290 est un vaisseau de prédilection pour ceux qui se spécialisent dans le transport discret de biens précieux.</i>"""
        "Squad Seven Veteran":
           display_name: """Vétéran de l’Escadron Sept"""
           text: """<i class = flavor_text>Le Vol Clone Sept en tant qu’unité de la flotte Open Circle a servi auprès de généraux Jedi légendaires comme Plo Koon ou Obi-Wan Kenobi et a obtenu ses titres de gloire au cours des batailles de Coruscant et de Cato Neimoidia.</i>"""
        "Stalgasin Hive Guard":
           display_name: """Garde de la Ruche Stalgasin"""
           text: """<i class = flavor_text>Conçu pour la physiologie spécifique des pilotes Géonosiens, les chasseurs de classe Nantex sont capables de manœuvres qui briseraient la plupart des vaisseaux et des pilotes.</i>%LINEBREAK%<strong>Dispositif Tracteur de Précision :</strong> vous ne pouvez pas faire pivoter votre %SINGLETURRETARC% vers votre %REARARC%. Après avoir exécuté une manœuvre, vous pouvez gagner 1&nbsp;marqueur de rayon tracteur pour effectuer une action&nbsp;%ROTATEARC%."""
        "Starkiller Base Pilot":
           display_name: """Pilote de la Base Starkiller"""
           text: """<i class = flavor_text>La navette de commandement de classe <unitalic>Upsilon</unitalic> sert de base d’opérations pour de nombreux agents et officiers d’élite du Premier Ordre. Ils peuvent facilement semer l’effroi à travers la galaxie grâce à ses équipements de communication et senseurs avancés..</i>%LINEBREAK%<strong>Batteries Jumelées:</strong> tant que vous effectuez une attaque %CANNON%, lancez 1 dé supplémentaire."""
        "Storm Squadron Ace":
           display_name: """As de l’Escadron Storm"""
           text: """<i class = flavor_text>Le Tie Advanced x1 a été produit en quantités limitées, mais les ingénieurs de Sienar incorporèrent la plus grande partie de ses innovations dans leur nouveau modèle de TIE : l’Intercepteur TIE.</i>%LINEBREAK%<strong>Ordinateur de Visée Avancé :</strong> tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d’attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Sun Fac":
           display_name: """Sun Fac"""
           text: """Tant que vous effectuez une attaque principale, si le défenseur est tracté, lancez 1&nbsp;dé d’attaque supplémentaire.%LINEBREAK%<strong>Dispositif Tracteur de Précision :</strong> vous ne pouvez pas faire pivoter votre %SINGLETURRETARC% vers votre %REARARC%. Après avoir exécuté une manœuvre, vous pouvez gagner 1&nbsp;marqueur de rayon tracteur pour effectuer une action&nbsp;%ROTATEARC%."""
        "Sunny Bounder":
           display_name: """Sunny Bounder"""
           text: """Tant que vous défendez ou effectuez une attaque, après avoir lancé ou relancé vos dés, si vous obtenez le même résultat sur chacun de vos dés, vous pouvez ajouter 1 résultat correspondant. %LINEBREAK%<strong>Emplacement d’Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "TN-3465":
           display_name: """TN-3465"""
           text: """Tant qu’un autre vaisseau allié effectue une attaque, si vous êtes à portée 0-1 du défenseur, vous pouvez subir 1 dégât&nbsp;%CRIT% pour changer 1 des résultats de l’attaquant en un résultat %CRIT%."""
        "Tala Squadron Pilot":
           display_name: """Pilote de l’Escadron Tala"""
           text: """<i class = flavor_text>L’AF4 est la toute dernière génération du modèle Chasseur de Têtes. Robuste et bon marché, il est très populaire auprès des organisations indépendantes comme la Rébellion.</i>"""
        "Tallissan Lintra":
           display_name: """Tallissan Lintra"""
           text: """Tant qu’un vaisseau ennemi dans votre %BULLSEYEARC% effectue une attaque, vous pouvez dépenser 1 %CHARGE%. Dans ce cas, le défenseur lance 1 dé supplémentaire..%LINEBREAK%<strong>Gyrostabilisateurs Perfectionnés:</strong> vous pouvez pivoter votre indicateur %SINGLETURRETARC% uniquement vers votre %FRONTARC% ou %REARARC%.Après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge ou %ROTATEARC% rouge.."""
        "Talonbane Cobra":
           display_name: """Talonbane Cobra"""
           text: """Tant que vous défendez à portée d’attaque 3 ou effectuez une attaque à portée d’attaque 1, lancez 1 dé supplémentaire."""
        "Tansarii Point Veteran":
           display_name: """Vétéran de Tansarii Point"""
           text: """<i class = flavor_text>La défaite de l’as du Soleil Noir, Talonbane Cobra, abattu par des contrebandiers Car’das, changea le cours de la bataille de la station Tansarii Point. Les survivants de cet affrontement sont respectés dans tout le secteur. </i>%LINEBREAK%<strong>Emplacement d’Arme :</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Techno Union Bomber":
           display_name: """Bombardier du Techno-Syndicat"""
           text: """<i class = flavor_text>Les Armureries Baktoid ont développé le Hyena comme un vaisseau d’assaut compatible avec les tactiques de nuée des chasseurs Vulture de la Fédération du Commerce.</i>%LINEBREAK%<strong>Calculs en Réseau :</strong> tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de calcul d’un vaisseau allié à portée&nbsp;0-1 pour changer 1 résultat&nbsp;%FOCUS% en un résultat %EVADE% ou %HIT%."""
        "Tel Trevura":
           display_name: """Tel Trevura"""
           text: """Si vous devez être détruit, vous pouvez dépenser 1 %CHARGE%. Dans ce cas, défaussez toutes vos cartes de dégât, subissez 5 dégâts&nbsp;%HIT%, et placez-vous en réserve à la place. Au début de la prochaine phase de préparation, placez-vous intégralement à portée 1 de votre bord Joueur."""
        "Temmin Wexley":
           display_name: """Temmin Wexley"""
           text: """Après avoir entièrement exécuté une manœuvre à vitesse 2-4, vous pouvez effectuer une action %BOOST%%LINEBREAK%<strong>Emplacement d’Arme:</strong> vous pouvez vous équiper de 1 amélioration %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Tempest Squadron Pilot":
           display_name: """Pilote de l’Escadron Tempest"""
           text: """<i class = flavor_text>Le TIE Advanced est une version améliorée du célèbre chasseur TIE/ln disposant de boucliers, d’un meilleur système d’armement, de panneaux solaires incurvés et d’un hyperdrive.</i>%LINEBREAK%<strong>Ordinateur de Visée Avancé :</strong> tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d’attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Ten Numb":
           display_name: """Ten Numb"""
           text: """Tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de stress pour changer tous vos résultats %FOCUS% en résultats %EVADE% ou %HIT%."""
        "Thane Kyrell":
           display_name: """Thane Kyrell"""
           text: """Tant que vous effectuez une attaque, vous pouvez dépense 1 résultat %FOCUS%, %HIT% ou %CRIT% pour regarder les cartes de dégât face cachée du défenseur, en choisir 1 et l’exposer."""
        "Tomax Bren":
           display_name: """Tomax Bren"""
           text: """Après avoir effectué une action %RELOAD%, vous pouvez récupérer 1 marqueur %CHARGE% sur 1 de vos cartes d’amélioration %TALENT% équipée. %LINEBREAK%<strong>Bombardier Agile :</strong> si vous devez utiliser un gabarit %STRAIGHT% pour larguer un engin, vous pouvez utiliser un gabarit %BANKLEFT% ou %BANKRIGHT% de même vitesse à la place."""
        "Torani Kulda":
           display_name: """Torani Kulda"""
           text: """Après avoir effectué une attaque, chaque vaisseau ennemi dans votre %BULLSEYEARC% subit 1 dégât&nbsp;%HIT% sauf s’il retire 1 marqueur vert. %LINEBREAK%<strong>Dans le Mille :</strong> tant que vous effectuez une attaque, si le défenseur est dans votre %BULLSEYEARC%, les dés de défense ne peuvent pas être modifiés en utilisant des marqueurs verts."""
        "Torkil Mux":
           display_name: """Torkil Mux"""
           text: """Au début de la phase d’engagement, vous pouvez choisir 1 vaisseau dans votre arc de tir. Dans ce cas, ce vaisseau s’engage à ce round à l’initiative 0 à la place de sa valeur d'initiative standard."""
        "Trade Federation Drone":
           display_name: """Drone de la Fédération du Commerce"""
           text: """<i class = flavor_text>La Fédération du Commerce a déployé d’innombrables droïdes Vulture lors de la Bataille de Naboo, et continue d’utiliser ces chasseurs peu coûteux durant la Guerre des Clones.</i>%LINEBREAK%<strong>Calculs en Réseau :</strong> tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de calcul d’un vaisseau allié à portée&nbsp;0-1 pour changer 1 résultat&nbsp;%FOCUS% en un résultat %EVADE% ou %HIT%."""
        "Trandoshan Slaver":
           display_name: """Esclavagiste Trandosien"""
           text: """<i class = flavor_text>Le spacieux YV-666 est très populaire auprès des chasseurs de primes et des esclavagistes avec ses trois ponts, dont l’un était souvent aménagé pour le transport de prisonniers.</i>"""
        "Turr Phennir":
           display_name: """Turr Phennir"""
           text: """Après avoir effectué une attaque, vous pouvez effectuer une action %BARRELROLL% ou %BOOST%, même si vous êtes stressé.%LINEBREAK%<strong>Autopropulseurs :</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou %BOOST% rouge."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """Au début de la phase d’engagement, si un ou plusieurs autres vaisseaux sont à portée 0, vous et chaque autre vaisseau à portée 0 gagnez 1 marqueur de rayon tracteur. %LINEBREAK%<strong>Dispositif Tracteur de Remorqueur Spatial :</strong> <strong>Action :</strong> choisissez un vaisseau dans votre %FRONTARC% à portée 1. Il gagne 1 marqueur de rayon tracteur, ou 2 marqueurs de rayon tracteur s’il est dans votre %BULLSEYEARC% à portée 1."""
        "Valen Rudor":
           display_name: """Valen Rudor"""
           text: """Après qu’un vaisseau allié à portée 0-1 a défendu (après la résolution des dégâts, s’il y en a), vous pouvez effectuer une action."""
        "Ved Foslo":
           display_name: """Ved Foslo"""
           text: """Tant que vous exécutez une manœuvre, vous pouvez exécuter une manœuvre de même direction et de même difficulté mais avec une vitesse supérieure ou inférieure de 1 à la place.%LINEBREAK%<strong>Ordinateur de Visée Avancé :</strong> tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d’attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Vennie":
           display_name: """Vennie"""
           text: """Tant que vous défendez, si l’attaquant est dans le %SINGLETURRETARC% d’un vaisseau allié, vous pouvez ajouter 1 résultat %FOCUS% à votre lancer."""
        "Vi Moradi":
           display_name: """Vi Moradi"""
           text: """<strong>Mise en Place :</strong> après avoir placé les forces, assignez l’état <strong>Information Compromettante</strong> à 1&nbsp;vaisseau ennemi."""
        "Viktor Hel":
           display_name: """Viktor Hel"""
           text: """Après avoir défendu, si vous n’avez pas lancé exactement 2 dés de défense, l’attaquant gagne 1 marqueur de stress."""
        "Warden Squadron Pilot":
           display_name: """Pilote de l’Escadron Warden"""
           text: """<i class = flavor_text>Le K-wing de Koensayr Manufacturing peut s’enorgueillir de son moteur à accélération subluminique avancé et de dix-huit points d’emport, ce qui lui confère une vitesse et une puissance de feu inégalées.</i>"""
        "Wat Tambor":
           display_name: """Wat Tambor"""
           text: """Tant que vous effectuez une attaque principale, vous pouvez relancer 1 dé d’attaque pour chaque vaisseau allié calculateur à portée&nbsp;1 du défenseur."""
        "Wedge Antilles":
           display_name: """Wedge Antilles"""
           text: """Tant que vous effectuez une attaque, le défenseur lance 1 dé de défense en moins."""
        "Wild Space Fringer":
           display_name: """Frontalier de l’Espace Sauvage"""
           text: """<i class = flavor_text>Certes, le cargo léger YT-2400 possédait une soute de bonne taille, mais celle-ci était souvent encombrée de systèmes d’armement modifiés et de moteurs énormes.</i>%LINEBREAK%<strong>Angle Mort des Senseurs :</strong> tant que vous effectuez une attaque principale à portée d’attaque 0-1, n’appliquez pas le bonus de portée 0-1 et lancez 1 dé d’attaque en moins."""
        "Wullffwarro":
           display_name: """Wullffwarro"""
           text: """Tant que vous effectuez une attaque principale, si vous êtes endommagé, vous pouvez lancer 1 dé d’attaque supplémentaire."""
        "Zari Bangel":
           display_name: """Zari Bangel"""
           text: """Vous ne sautez pas votre étape «&nbsp;Effectuer une action&nbsp;» après avoir partiellement exécuté une manœuvre. %LINEBREAK%<strong>Gyrostabilisateurs Perfectionnés:</strong> vous pouvez pivoter votre indicateur %SINGLETURRETARC% uniquement vers votre %FRONTARC% ou %REARARC%.Après avoir effectué une action, vous pouvez effectuer une action %BOOST% rouge ou %ROTATEARC% rouge.."""
        "Zealous Recruit":
           display_name: """Recrue Zélée"""
           text: """<i class = flavor_text>Les pilotes de Chasseur Fang Mandalorien doivent maîtriser la manœuvre dite de l’Opposition Concordia, profitant du profil de leurs appareils pour mener des charges sans concession. </i>%LINEBREAK%<strong>Opposition Concordia :</strong> tant que vous défendez, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% de l’attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Zertik Strom":
           display_name: """Zertik Strom"""
           text: """Pendant la phase de dénouement, vous pouvez dépenser un marqueur de verrouillage que vous avez sur un vaisseau ennemi pour exposer 1 carte de dégât de ce dernier. %LINEBREAK%<strong>Ordinateur de Visée Avancé :</strong> tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d’attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Zeta Squadron Pilot":
           display_name: """Pilote de l’Escadron Zeta"""
           text: """<i class = flavor_text>Libérées des lourdeurs administratives de la bureaucratie galactique, les technologies qui furent développées par l’Empire pour le programme TIE Advanced peuvent désormais être produites en série sur les chasseurs du Premier Ordre. Les taux de survie des pilotes de TIE/fo sont par conséquent plus élevés que ceux de leurs prédécesseurs de l’Empire Galactique.</i>"""
        "Zeta Squadron Survivor":
           display_name: """Survivant de l’Escadron Zeta"""
           text: """<i class = flavor_text>Humiliés par leur défaite, les pilotes rescapés de la base Starkiller sont impatients de démontrer leur talent face aux combattants de la Résistance.</i>%LINEBREAK%<strong>Tourelle d’Arme Lourde: </strong> vous pouvez pivoter votre indicateur %SINGLETURRETARC% uniquement vers votre %FRONTARC% ou %REARARC%. Vous devez considérer le prérequis %FRONTARC% de vos améliorations %MISSILE% équipées comme étant %SINGLETURRETARC%."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """Tant que vous effectuez une attaque principale, vous pouvez lancer 1 dé d’attaque supplémentaire. Dans ce cas, le défenseur lance 1 dé de défense supplémentaire."""
        '"Avenger"':
           display_name: """“Avenger”"""
           text: """Après qu’un autre vaisseau allié a été détruit, vous pouvez effectuer une action, même si vous êtes stressé.%LINEBREAK%%LINEBREAK%<strong>Autopropulseurs:</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou une action %BOOST% rouge."""
        '"Axe"':
           display_name: """“Axe”"""
           text: """Après avoir défendu ou effectué une attaque, vous pouvez choisir un vaisseau allié à portée&nbsp;1-2 situé dans votre %LEFTARC% ou %RIGHTARC%. Dans ce cas, transférez 1 marqueur vert à ce vaisseau."""
        '"Backdraft"':
           display_name: """“Backdraft”"""
           text: """Tant que vous effectuez une attaque principale %SINGLETURRETARC%, si le défenseur est dans votre %REARARC%, lancez 1 dé supplémentaire..%LINEBREAK%<strong>Tourelle d’Arme Lourde: </strong> vous pouvez pivoter votre indicateur %SINGLETURRETARC% uniquement vers votre %FRONTARC% ou %REARARC%. Vous devez considérer le prérequis %FRONTARC% de vos améliorations %MISSILE% équipées comme étant %SINGLETURRETARC%."""
        '"Blackout"':
           display_name: """“Blackout”"""
           text: """Tant que vous effectuez une attaque, si elle est gênée par un obstacle, le défenseur lance 2 dés de défense en moins..%LINEBREAK%<strong>Autopropulseurs:</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou une action %BOOST% rouge."""
        '"Broadside"':
           display_name: """“Broadside”"""
           text: """Tant que vous effectuez une attaque&nbsp;%SINGLETURRETARC%, si votre indicateur&nbsp;%SINGLETURRETARC% est dans votre %LEFTARC%&nbsp;ou&nbsp;%RIGHTARC%, vous pouvez changer 1 résultat vierge en un résultat %FOCUS%.%LINEBREAK%<strong>Coque Blindée :</strong> tant que vous défendez, si vous n’êtes pas critiquement endommagé, changez 1 résultat&nbsp;%CRIT% en un résultat&nbsp;%HIT%."""
        '"Chopper"':
           display_name: """“Chopper”"""
           text: """Au début de la phase d’engagement, chaque vaisseau ennemi à portée 0 gagne 2 marqueurs de brouillage. %LINEBREAK%<strong>Artillerie de Poupe :</strong> tant que vous avez un vaisseau arrimé, vous bénéficiez d’une arme principale %REARARC% avec une valeur d’attaque égale à celle de l’attaque principale %FRONTARC% du vaisseau arrimé."""
        '"Countdown"':
           display_name: """“Countdown”"""
           text: """Tant que vous défendez, après l’étape «&nbsp;Neutraliser les résultats&nbsp;», si vous n’êtes pas stressé, vous pouvez subit 1 dégât %HIT% et gagner 1 marqueur de stress. Dans ce cas, annulez tous les résultats des dés.%LINEBREAK%<strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n’êtes pas stressé, vous devez exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] ou [1&nbsp;%BANKRIGHT%]."""
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
           text: """Vous pouvez choisir de ne pas utiliser vos Ailerons Adaptables. %LINEBREAK%Vous pouvez utiliser vos Ailerons Adaptables même si vous êtes stressé.%LINEBREAK%<strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n’êtes pas stressé, vous devez exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] ou [1&nbsp;%BANKRIGHT%]."""
        '"Dutch" Vander':
           display_name: """“Dutch” Vander"""
           text: """Après avoir effectué l’action %LOCK%, vous pouvez choisir 1 vaisseau allié à portée 1-3. Ce vaisseau allié peut verrouiller l’objet que vous avez verrouillé, en ignorant les restrictions de portée."""
        '"Echo"':
           display_name: """“Echo”"""
           text: """Lorsque vous vous désoccultez, vous devez utiliser le gabarit [2&nbsp;%BANKLEFT%] ou [2&nbsp;%BANKRIGHT%] à la place du gabarit [2&nbsp;%STRAIGHT%].%LINEBREAK%<strong>Réseau de Stygium :</strong> après vous être désocculté, vous pouvez effectuer une action %EVADE%. Au début de la phase de dénouement, vous pouvez dépenser 1 marqueur d’évasion pour gagner 1 marqueur d’occultation. """
        '"Goji"':
           display_name: """“Goji”"""
           text: """Tant qu’un vaisseau allié à portée&nbsp;0-3 défend, il peut lancer 1 dé de défense supplémentaire pour chaque bombe ou mine alliée à portée&nbsp;0-1 de lui.%LINEBREAK%<strong>Coque Blindée :</strong> tant que vous défendez, si vous n’êtes pas critiquement endommagé, changez 1 résultat&nbsp;%CRIT% en un résultat&nbsp;%HIT%."""
        '"Howlrunner"':
           display_name: """“Howlrunner”"""
           text: """Tant qu’un vaisseau allié à portée 0-1 effectue une attaque principale, il peut relancer 1 dé d’attaque."""
        '"Jag"':
           display_name: """“Jag”"""
           text: """Après qu’un vaisseau allié à portée&nbsp;1-2 situé dans votre %LEFTARC% ou %RIGHTARC% a défendu, vous pouvez verrouiller l’attaquant."""
        '"Kickback"':
           display_name: """“Kickback”"""
           text: """Après avoir effectué une action %BARRELROLL%, vous pouvez effectuer une action %LOCK% rouge."""
        '"Leebo"':
           display_name: """“Leebo”"""
           text: """Après avoir défendu ou effectué une attaque, si vous avez dépensé un marqueur de calcul, gagnez 1 marqueur de calcul.%LINEBREAK%<strong>Angle Mort des Senseurs :</strong> tant que vous effectuez une attaque principale à portée d’attaque 0-1, n’appliquez pas le bonus de portée 0-1 et lancez 1 dé d’attaque en moins."""
        '"Longshot"':
           display_name: """“Longshot”"""
           text: """Tant que vous effectuez une attaque principale à portée d’attaque 3, lancez 1 dé d’attaque supplémentaire."""
        '"Matchstick"':
           display_name: """“Matchstick”"""
           text: """Tant que vous effectuez une attaque principale ou une attaque %SINGLETURRETARC%, vous pouvez relancer 1&nbsp;dé d’attaque pour chaque marqueur rouge que vous avez.%LINEBREAK%<strong>Coque Blindée :</strong> tant que vous défendez, si vous n’êtes pas critiquement endommagé, changez 1 résultat&nbsp;%CRIT% en un résultat&nbsp;%HIT%."""
        '"Mauler" Mithel':
           display_name: """“Mauler” Mithel"""
           text: """Tant que vous effectuez une attaque à portée d’attaque 1, lancez 1 dé d’attaque supplémentaire."""
        '"Midnight"':
           display_name: """“Midnight”"""
           text: """Tant que vous défendez ou effectuez une attaque, si vous avez un verrouillage sur le vaisseau ennemi, les dés de ce vaisseau ennemi ne peuvent pas être modifiés."""
        '"Muse"':
           display_name: """“Muse”"""
           text: """Au début de la phase d’engagement, vous pouvez choisir un vaisseau allié à portée 0-1. Dans ce cas, ce vaisseau allié retire 1 marqueur de stress."""
        '"Night Beast"':
           display_name: """“Night Beast”"""
           text: """Après avoir entièrement exécuté une manœuvre bleue, vous pouvez effectuer une action %FOCUS%."""
        '"Null"':
           display_name: """“Null”"""
           text: """Tant que vous n’êtes pas endommagé, considérez que votre valeur d’initiative est 7."""
        '"Odd Ball"':
           display_name: """“Odd Ball”"""
           text: """Après avoir entièrement exécuté une manœuvre rouge ou effectué une action rouge, s'il y a un vaisseau ennemi dans votre %BULLSEYEARC%, vous pouvez verrouiller ce vaisseau."""
        '"Odd Ball" (ARC-170)':
           display_name: """“Odd Ball”"""
           text: """Après avoir entièrement exécuté une manœuvre rouge ou effectué une action rouge, s'il y a un vaisseau ennemi dans votre %BULLSEYEARC%, vous pouvez verrouiller ce vaisseau."""
        '"Odd Ball" (Y-Wing)':
           display_name: """“Oddball”"""
           text: """Après avoir entièrement exécuté une manœuvre rouge ou effectué une action rouge, s’il y a un vaisseau ennemi dans votre %BULLSEYEARC%, vous pouvez verrouiller ce vaisseau.%LINEBREAK%<strong>Coque Blindée :</strong> tant que vous défendez, si vous n’êtes pas critiquement endommagé, changez 1 résultat&nbsp;%CRIT% en un résultat&nbsp;%HIT%."""
        '"Pure Sabacc"':
           display_name: """“Pure Sabacc”"""
           text: """Tant que vous effectuez une attaque, si vous avez 1 carte de dégât ou moins, vous pouvez lancer 1 dé d’attaque supplémentaire. %LINEBREAK%Ailerons Adaptables : avant de révéler votre cadran, si vous n’êtes pas stressé, vous devez exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] ou [1&nbsp;%BANKRIGHT%]."""
        '"Quickdraw"':
           display_name: """“Quickdraw”"""
           text: """Après avoir perdu un bouclier, vous pouvez dépenser 1 %CHARGE%. Dans ce cas, vous pouvez effectuer une attaque principale bonus.%LINEBREAK%<strong>Tourelle d’Arme Lourde: </strong> vous pouvez pivoter votre indicateur %SINGLETURRETARC% uniquement vers votre %FRONTARC% ou %REARARC%. Vous devez considérer le prérequis %FRONTARC% de vos améliorations %MISSILE% équipées comme étant %SINGLETURRETARC%."""
        '"Recoil"':
           display_name: """“Recoil”"""
           text: """Tant que vous êtes stressé, vous pouvez considérer les vaisseaux ennemis dans votre %FRONTARC% à portée 0-1 comme étant dans votre %BULLSEYEARC%.%LINEBREAK%<strong>Autopropulseurs:</strong> après avoir effectué une action, vous pouvez effectuer une action %BARRELROLL% rouge ou une action %BOOST% rouge."""
        '"Redline"':
           display_name: """“Redline”"""
           text: """Vous pouvez maintenir jusqu’à 2 cibles verrouillées.%LINEBREAK% Après avoir effectué une action, vous pouvez verrouiller une cible."""
        '"Scorch"':
           display_name: """“Scorch”"""
           text: """Tant que vous effectuez une attaque principale, si vous n’êtes pas stressé, vous pouvez gagner 1 marqueur de stress pour lancer 1 dé d’attaque supplémentaire."""
        '"Scourge" Skutu':
           display_name: """“Scourge” Skutu"""
           text: """Tant que vous effectuez une attaque contre un défenseur dans votre %BULLSEYEARC%, lancez 1 dé d’attaque supplémentaire."""
        '"Sinker"':
           display_name: """“Sinker”"""
           text: """Tant qu’un vaisseau allié à portée&nbsp;1-2 situé dans votre %LEFTARC% ou %RIGHTARC% effectue une attaque principale, il peut relancer 1 dé d’attaque."""
        '"Static"':
           display_name: """“Static”"""
           text: """Tant que vous effectuez une attaque principale, vous pouvez dépenser votre verrouillage sur le défenseur et un marqueur de concentration pour changer tous vos résultats en résultats %CRIT%."""
        '"Swoop"':
           display_name: """“Swoop”"""
           text: """Après qu’un petit ou moyen vaisseau allié a entièrement exécuté une manœuvre à vitesse 3-4, s’il est à portée&nbsp;0-1, il peut effectuer une action %BOOST% rouge."""
        '"Tucker"':
           display_name: """“Tucker”"""
           text: """Après qu’un vaisseau allié à portée&nbsp;1-2 a effectué une attaque contre un vaisseau ennemi dans votre %FRONTARC%, vous pouvez effectuer une action&nbsp;%FOCUS%."""
        '"Vizier"':
           display_name: """“Vizier”"""
           text: """Après avoir entièrement exécuté une manœuvre à vitesse 1 en utilisant votre capacité <strong>Ailerons Adaptables</strong>, vous pouvez effectuer une action %COORDINATE%. Dans ce cas, sautez votre étape “Effectuer une action”.%LINEBREAK%<strong>Ailerons Adaptables :</strong> avant de révéler votre cadran, si vous n’êtes pas stressé, vous <b>devez</b> exécuter une manœuvre blanche [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%], ou [1&nbsp;%BANKRIGHT%]."""
        '"Wampa"':
           display_name: """“Wampa”"""
           text: """Tant que vous effectuez une attaque, vous pouvez dépenser 1 %CHARGE% pour lancer 1 dé d’attaque supplémentaire%LINEBREAK%Après avoir défendu, perdez 1 %CHARGE%."""
        '"Whisper"':
           display_name: """“Whisper”"""
           text: """Après avoir effectué une attaque qui touche, gagnez 1 marqueur d’évasion. %LINEBREAK%<strong>Réseau de Stygium :</strong> après vous être désocculté, vous pouvez effectuer une action %EVADE%. Au début de la phase de dénouement, vous pouvez dépenser 1 marqueur d’évasion pour gagner 1 marqueur d’occultation. """
        '"Wolffe"':
           display_name: """“Wolffe”"""
           text: """Tant que vous effectuez une attaque principale %FRONTARC%, vous pouvez dépenser 1&nbsp;%CHARGE% pour relancer 1 dé d’attaque. Tant que vous effectuez une attaque principale %REARARC%, vous pouvez récupérer 1&nbsp;%CHARGE% pour lancer 1 dé d’attaque supplémentaire."""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """Tant que vous défendez, les résultats %CRIT% sont neutralisés avant les résultats %HIT%.%LINEBREAK%<strong>Chargé et Prêt à Tirer :</strong> tant que vous êtes arrimé, après que votre vaisseau porteur a effectué une attaque principale %FRONTARC% ou %TURRET%, il peut effectuer une attaque principale %REARARC% bonus."""
        '"Zeb" Orrelios (Sheathipede)':
           display_name: """“Zeb” Orrelios"""
           text: """Tant que vous défendez, les résultats %CRIT% sont neutralisés avant les résultats %HIT%.%LINEBREAK%<strong>Navette de Communication :</strong> tant que vous êtes arrimé, votre vaisseau porteur gagne %COORDINATE%. Avant que votre vaisseau porteur ne s’active, il peut effectuer une action %COORDINATE%."""
        '"Zeb" Orrelios (TIE Fighter)':
           display_name: """“Zeb” Orrelios"""
           text: """Tant que vous défendez, les résultats %CRIT% sont neutralisés avant les résultats %HIT%."""
        "Baktoid Prototype":
           display_name: """Prototype Baktoid"""
           text: """Tant que vous effectuez une attaque spéciale, si un vaisseau allié avec la capacité de vaisseau <strong>Calculs en Réseau</strong> a un verrouillage sur le défenseur, vous pouvez ignorer les prérequis %FOCUS%, %CALCULATE% ou %LOCK% de cette attaque.%LINEBREAK%<strong>Calculs en Réseau :</strong> tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de calcul d’un vaisseau allié à portée&nbsp;0-1 pour changer 1 résultat&nbsp;%FOCUS% en un résultat %EVADE% ou %HIT%."""
        "Haor Chall Prototype":
           display_name: """Prototype Haor Chall"""
           text: """Après qu’un vaisseau ennemi dans votre %BULLSEYEARC% à portée&nbsp;0-2 a déclaré un autre vaisseau allié pour être le défenseur, vous pouvez effectuer une action %CALCULATE% ou %LOCK%.%LINEBREAK%<strong>Calculs en Réseau :</strong> tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de calcul d’un vaisseau allié à portée&nbsp;0-1 pour changer 1 résultat&nbsp;%FOCUS% en un résultat %EVADE% ou %HIT%."""
        "Naboo Handmaiden":
           display_name: """Servante de Naboo"""
           text: """<strong>Mise en Place :</strong> après avoir placé les forces, assignez l’état <strong>Dupé</strong> à 1&nbsp;vaisseau allié autre que <strong>Servante de Naboo</strong>.%LINEBREAK%<strong>Plein Gaz :</strong> après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez effectuer une action&nbsp;%EVADE%."""
        "Bombardment Drone":
           display_name: """Drone de Bombardement"""
           text: """Si vous êtes censé larguer un engin, vous pouvez le lancer à la place, en utilisant le même gabarit.%LINEBREAK%<strong>Calculs en Réseau :</strong> tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de calcul d’un vaisseau allié à portée&nbsp;0-1 pour changer 1 résultat&nbsp;%FOCUS% en un résultat %EVADE% ou %HIT%."""
        "Precise Hunter":
           display_name: """Chasseur Méticuleux"""
           text: """Tant que vous effectuez une attaque, si le défenseur est dans votre %BULLSEYEARC%, vous pouvez relancer 1 résultat vierge.%LINEBREAK%<strong>Calculs en Réseau :</strong> tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 marqueur de calcul d’un vaisseau allié à portée&nbsp;0-1 pour changer 1 résultat&nbsp;%FOCUS% en un résultat %EVADE% ou %HIT%."""



    upgrade_translations =
        "0-0-0":
           display_name: """0-0-0"""
           text: """<i>Racailles et Scélérats ou contient Dark Vador ou contient Darth Vader uniquement</i>%LINEBREAK%Au début de la phase d’engagement, vous pouvez choisir 1 vaisseau ennemi à portée 0-1. Dans ce cas, vous gagnez 1 marqueur de calcul sauf si ce vaisseau choisit de gagner 1 marqueur de stress."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, après avoir lancé les dés d’attaque, vous pouvez nommer un type de marqueur vert. Dans ce cas, gagnez 2 marqueurs ioniques et, pendant cette attaque, le défenseur ne peut pas dépenser de marqueur du type nommé."""
        "Andrasta":
           display_name: """Andrasta"""
           text: """<i>Ajoute %RELOAD%</i>%LINEBREAK%<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Ajoutez un emplacement %DEVICE%."""
        "Black One":
           display_name: """Black One"""
           text: """<i>Ajoute %SLAM%</i>%LINEBREAK%<i>CHANGE ME uniquement</i>%LINEBREAK%Après avoir effectué une action %SLAM%, perdez 1 %CHARGE%. Puis vous pouvez gagner 1 marqueur ionique pour retirer 1 marqueur de désarmement.%LINEBREAK%Si votre %CHARGE% est inactive, vous ne pouvez pas effectuer l’action %SLAM%."""
        "Dauntless":
           display_name: """Dauntless"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Après avoir partiellement exécuté une manœuvre, vous pouvez effectuer 1 action blanche, en la considérant comme rouge."""
        "Ghost":
           display_name: """Ghost"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%1 navette d’attaque ou de classe Sheathipede peut s’arrimer à vous.%LINEBREAK%Les vaisseaux arrimés ne peuvent être déployés que par vos glissières arrière."""
        "Havoc":
           display_name: """Havoc"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Retirez un emplacement %CREW%.Ajoutez un emplacement %SENSOR% et un emplacement %ASTROMECH%."""
        "Hound's Tooth":
           display_name: """Hound’s Tooth"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%1 Chasseur de Têtes Z-95-AF4 peut s’arrimer à vous."""
        "IG-2000":
           display_name: """IG-2000"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Vous avez la capacité de pilote de chaque autre vaisseau allié qui possède l’amélioration <strong>IG-2000</strong>."""
        "Marauder":
           display_name: """Marauder"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque principale %REARARC%, vous pouvez relancer 1 dé d’attaque.%LINEBREAK%Ajoutez un emplacement %GUNNER%."""
        "Millennium Falcon":
           display_name: """Faucon Millenium"""
           text: """<i>Ajoute %EVADE%</i>%LINEBREAK%<i>Alliance Rebelle uniquement</i>%LINEBREAK%Tant que vous défendez, si vous avez un marqueur d’évasion, vous pouvez relancer 1 dé de défense."""
        "Mist Hunter":
           display_name: """Mist Hunter"""
           text: """<i>Ajoute %BARRELROLL%</i>%LINEBREAK%<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Ajoutez un emplacement %CANNON%."""
        "Moldy Crow":
           display_name: """Moldy Crow"""
           text: """<i>Alliance Rebelle ou Racailles et Scélérats uniquement</i>%LINEBREAK%Gagnez une arme principale %FRONTARC% avec une valeur de «&nbsp;3&nbsp;».%LINEBREAK%Pendant la phase de dénouement, ne retirez pas jusqu’à 2 marqueurs de concentration."""
        "Outrider":
           display_name: """Outrider"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque qui est gênée, le défenseur lance 1 dé de défense en moins.%LINEBREAK%Après avoir entièrement exécuté une manœuvre, si vous avez traversé ou chevauché un obstacle, vous pouvez retirer 1 de vos marqueurs rouges ou orange."""
        "Phantom":
           display_name: """Phantom"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Vous pouvez vous arrimer à portée 0-1."""
        "Punishing One":
           display_name: """Punishing One"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque principale, si le défenseur est dans votre %FRONTARC%, lancez 1 dé d’attaque supplémentaire.%LINEBREAK% Retirez un emplacement %CREW%. Ajoutez un emplacement %ASTROMECH%."""
        "ST-321":
           display_name: """ST-321"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Après avoir effectué une action %COORDINATE%, vous pouvez choisir un vaisseau ennemi à portée 0-3 du vaisseau coordonné. Dans ce cas, verrouillez ce vaisseau ennemi, en ignorant toute restriction de portée."""
        "Scimitar":
           display_name: """Scimitar"""
           text: """<i>Ajoute <r>%CLOAK%</r> ,  %JAM%</i>%LINEBREAK%<i>Separatist Alliance uniquement</i>%LINEBREAK%<strong>Mise en Place :</strong> après l’étape «&nbsp;Placer les forces&nbsp;», vous pouvez vous occulter.%LINEBREAK%Après vous être désocculté, vous pouvez choisir un vaisseau ennemi dans votre %BULLSEYEARC%. Dans ce cas, il gagne 1 marqueur de brouillage."""
        "Shadow Caster":
           display_name: """Shadow Caster"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Après avoir effectué une attaque qui touche, si le défenseur est dans votre %SINGLETURRETARC% et votre %FRONTARC%, il gagne 1 marqueur de rayon tracteur."""
        "Slave I":
           display_name: """Slave I"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Après avoir révélé une manœuvre de virage (%TURNLEFT% or %TURNRIGHT%) ou de virage sur l’aile (%BANKLEFT% or %BANKRIGHT%), vous pouvez régler votre cadran sur la manœuvre de même vitesse mais de direction opposée. %LINEBREAK%Ajoutez un emplacement %TORPEDO%."""
        "Soulless One":
           display_name: """Soulless One"""
           text: """<i>Separatist Alliance uniquement</i>%LINEBREAK%Tant que vous défendez, si l’attaquant est hors de votre arc de tir, vous pouvez relancer 1 dé de défense."""
        "Virago":
           display_name: """Virago"""
           text: """Pendant la phase de dénouement, vous pouvez dépenser 1 %CHARGE% pour effectuer une action %BOOST% rouge.%LINEBREAK%Ajoutez un emplacement %MODIFICATION%."""
        "Ablative Plating":
           display_name: """Blindage Ablatif"""
           text: """<i>Vaisseau grand ou Vaisseau moyen uniquement</i>%LINEBREAK%Avant de subir des dégâts à cause d’un obstacle ou de l’explosion d’une bombe alliée, vous pouvez dépenser 1&nbsp;%CHARGE%. Dans ce cas, prévenez 1 dégât."""
        "Admiral Sloane":
           display_name: """Amiral Sloane"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Après qu’un autre vaisseau allié à portée 0-3 a défendu, s’il est détruit, l’attaquant gagne 2 marqueurs de stress. %LINEBREAK%Tant qu’un vaisseau allié à portée 0-3 effectue une attaque contre un vaisseau stressé, il peut relancer 1 dé d’attaque."""
        "Adv. Proton Torpedoes":
           display_name: """Torpilles à Protons Avancées"""
           text: """<strong>Attaque (%LOCK%) :</strong> dépensez 1 %CHARGE%. Changez 1 résultat&nbsp;%HIT% en un résultat %CRIT%."""
        "Advanced Optics":
           display_name: """Optiques Avancées"""
           text: """Tant que vous effectuez une attaque, vous pouvez dépenser 1 marqueur de concentration pour changer 1 de vos résultats vierges en un résultat %HIT%."""
        "Advanced SLAM":
           display_name: """MASL Avancé"""
           text: """<i>Requiert %SLAM%</i>%LINEBREAK%Après avoir effectué une action %SLAM%, si vous avez entièrement exécuté la manœuvre, vous pouvez effectuer une action blanche de votre barre d’action, en la considérant comme rouge."""
        "Advanced Sensors":
           display_name: """Senseurs Avancés"""
           text: """Après avoir révélé votre cadran, vous pouvez effectuer 1 action.%LINEBREAK%Dans ce cas, vous ne pouvez pas effectuer d’autre action pendant votre activation."""
        "Afterburners":
           display_name: """Postcombustion"""
           text: """<i>Vaisseau petit uniquement</i>%LINEBREAK%Après avoir entièrement exécuté une manœuvre à vitesse 3-5, vous pouvez dépenser 1&nbsp;%CHARGE% pour effectuer une action %BOOST%, même tant que vous êtes stressé."""
        "Agent Kallus":
           display_name: """Agent Kallus"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%<strong>Mise en Place :</strong> assignez l’état <strong>Traqué</strong> à 1 vaisseau ennemi.%LINEBREAK%Tant que vous effectuez une attaque contre le vaisseau qui possède l’état <strong>Traqué</strong>, vous pouvez changer 1 de vos résultats %FOCUS% en un résultat %HIT%."""
        "Agile Gunner":
           display_name: """Canonnier Adroit"""
           text: """Pendant la phase de dénouement, vous pouvez faire pivoter votre indicateur %SINGLETURRETARC%."""
        "Ahsoka Tano":
           display_name: """Ahsoka Tano"""
           text: """<i>Galactic Republic uniquement</i>%LINEBREAK%Après avoir exécuté une manœuvre, vous pouvez dépenser 1&nbsp;%FORCE% et choisir un vaisseau allié dans votre arc de tir à portée&nbsp;1-3. Dans ce cas, il peut effectuer une action&nbsp;%FOCUS%&nbsp;rouge, même s’il est stressé."""
        "Amilyn Holdo":
           display_name: """Amilyn Holdo"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Avant de vous engager, vous pouvez choisir un autre vaisseau allié à portée&nbsp;1-2. Vous pouvez transférer à ce vaisseau 1 marqueur d’un type qu’il ne possède pas. Il peut vous transférer 1 marqueur d’un type que vous ne possédez pas."""
        "Angled Deflectors":
           display_name: """Déflecteurs Orientables"""
           text: """<i>Ajoute %REINFORCE%</i>%LINEBREAK%<i>Vaisseau petit ou Vaisseau moyen uniquement</i>%LINEBREAK%<i class = flavor_text>Les boucliers des chasseurs bénéficient souvent d’un contrôle manuel qui permet de les réorienter pour augmenter la protection avant ou arrière. Cependant, en agissant ainsi le vaisseau est exposé si la vigilance du pilote faiblit.</i>"""
        "Autoblasters":
           display_name: """Autoblasters"""
           text: """<strong>Attaque :</strong> si le défenseur est dans votre %BULLSEYEARC%, lancez 1 dé supplémentaire. Lors de l’étape «&nbsp;Neutraliser les résultats&nbsp;», si vous n’êtes pas dans le&nbsp;%FRONTARC% du défenseur, les résultats&nbsp;%EVADE% n’annulent pas les résultats&nbsp;%CRIT%."""
        "BB Astromech":
           display_name: """BB Astromech"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK% Avant d’exécuter une manœuvre bleue, vous pouvez dépenser 1 %CHARGE% pour effectuer une action %BARRELROLL%."""
        "BB-8":
           display_name: """BB-8"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Avant d’exécuter une manœuvre bleue, vous pouvez dépenser 1 %CHARGE% pour effectuer une action %BARRELROLL% ou %BOOST%. """
        "BT-1":
           display_name: """BT-1"""
           text: """<i>Racailles et Scélérats ou contient Dark Vador ou contient Darth Vader uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, vous pouvez changer 1 résultat&nbsp;%HIT% en un résultat %CRIT% pour chaque marqueur de stress qu’a le défenseur."""
        "Barrage Rockets":
           display_name: """Roquettes de Barrage"""
           text: """<strong>Attaque (%FOCUS%) :</strong> dépensez 1 %CHARGE%. Si le défenseur est dans votre %BULLSEYEARC%, vous pouvez dépenser 1 ou plusieurs %CHARGE% pour relancer autant de dés d’attaque."""
        "Battle Meditation":
           display_name: """Méditation de Bataille"""
           text: """<i>Ajoute %COORDINATE%</i>%LINEBREAK%<i>Galactic Republic uniquement</i>%LINEBREAK%Vous ne pouvez pas coordonner des vaisseaux limités.%LINEBREAK%Tant que vous effectuez une action %COORDINATE% violette, vous pouvez coordonner 1 vaisseau allié non-limité supplémentaire du même type. Les deux vaisseaux doivent effectuer la même action."""
        "Baze Malbus":
           display_name: """Baze Malbus"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Tant que vous effectuez une action %FOCUS%, vous pouvez considérer qu’elle est rouge. Dans ce cas, gagnez 1 marqueur de concentration supplémentaire pour chaque vaisseau ennemi à portée 0-1, pour un maximum de 2."""
        "Biohexacrypt Codes":
           display_name: """Codes bio-hexacrypt"""
           text: """<i>Requiert %LOCK% ou <r>%LOCK%</r></i>%LINEBREAK%<i>CHANGE ME uniquement</i>%LINEBREAK%Tant que vous coordonnez ou brouillez, si vous avez un verrouillage sur un vaisseau, vous pouvez dépenser ce verrouillage pour choisir ce vaisseau, en ignorant toutes les restrictions de portées."""
        "Bistan":
           display_name: """Bistan"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Après avoir effectué une attaque principale, si vous êtes concentré, vous pouvez effectuer une attaque bonus %SINGLETURRETARC% contre un vaisseau que vous n’avez pas encore attaqué à ce round."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%<strong>Mise en Place :</strong> débutez en réserve.%LINEBREAK%À la fin de la Mise en place, placez-vous à portée 0 d’un obstacle et au-delà de la portée 3 de tout vaisseau ennemi."""
        "Bomblet Generator":
           display_name: """Générateur de Sous-Munitions"""
           text: """<strong>Bombe</strong>%LINEBREAK%Pendant la phase de système, vous pouvez dépenser 1&nbsp;%CHARGE% pour larguer une sous-munition avec le gabarit [1&nbsp;%STRAIGHT%].%LINEBREAK%Au début de la phase d’activation, vous pouvez dépenser 1 bouclier pour récupérer 2 %CHARGE%."""
        "Bossk":
           display_name: """Bossk"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Après avoir effectué une attaque principale ratée, si vous n’êtes pas stressé, vous devez recevoir 1 marqueur de stress pour effectuer une attaque principale bonus contre la même cible."""
        "Brilliant Evasion":
           display_name: """As de la Manœuvre"""
           text: """Tant que vous défendez, si vous n’êtes pas dans le %BULLSEYEARC% de l’attaquant, vous pouvez dépenser 1&nbsp;%FORCE% pour changer 2 de vos résultats %FOCUS% en résultats %EVADE%."""
        "C-3PO":
           display_name: """C-3PO"""
           text: """<i>Ajoute %CALCULATE%</i>%LINEBREAK%<i>Alliance Rebelle uniquement</i>%LINEBREAK%Avant de lancer les dés de défense, vous pouvez dépenser 1 marqueur de calcul pour dire à voix haute un nombre supérieur ou égal à 1. Dans ce cas et si vous obtenez exactement cette quantité de résultats %EVADE% sur votre lancer, ajoutez 1&nbsp;résultat %EVADE%.%LINEBREAK%Après avoir effectué l’action %CALCULATE%, gagnez 1 marqueur de calcul. """
        "C-3PO (Resistance)":
           display_name: """C-3PO (Resistance)"""
           text: """<i>Ajoute %CALCULATE% ,  <r>%COORDINATE%</r></i>%LINEBREAK%<i>CHANGE ME uniquement</i>%LINEBREAK%Tant que vous coordonnez, vous pouvez choisir des vaisseaux alliés au-delà de la portée 2 s’ils ont l’icône %CALCULATE% dans leur barre d’action.%LINEBREAK%Après avoir effectué l’action %CALCULATE% ou %COORDINATE%, gagnez 1 marqueur de calcul."""
        "C-3PO":
           display_name: """C-3PO"""
           text: """<i>Ajoute %CALCULATE%</i>%LINEBREAK%<i>Galactic Republic uniquement</i>%LINEBREAK%Tant que vous défendez, si vous êtes calculateur, vous pouvez relancer 1 dé de défense.%LINEBREAK%Après avoir effectué une action %CALCULATE%, gagnez 1&nbsp;marqueur de calcul."""
        "C1-10P":
           display_name: """C1-10P"""
           text: """<i>Galactic Republic uniquement</i>%LINEBREAK%<strong>C1-10P:</strong><strong>Mise en Place : </strong> à équiper avec cette face visible.%LINEBREAK%Après avoir exécuté une manœuvre, vous pouvez dépenser 1&nbsp;%CHARGE% pour effectuer une action&nbsp;%EVADE% rouge, même si vous êtes stressé.%LINEBREAK%Lors de la phase de dénouement, si cette carte a 0&nbsp;active, retournez-la.%LINEBREAK%<strong>C1-10P (Erratique)</strong>%LINEBREAK%Après avoir exécuté une manœuvre, vous <b>devez</b> choisir un vaisseau à portée&nbsp;0-1.Il gagne 1&nbsp;marqueur de brouillage."""
        "Cad Bane":
           display_name: """Cad Bane"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Après avoir largué ou lancé un engin, vous pouvez effectuer une action %BOOST% rouge."""
        "Calibrated Laser Targeting":
           display_name: """Visée Laser Calibrée"""
           text: """Tant que vous effectuez une attaque principale, si le défenseur est dans votre %BULLSEYEARC%, ajoutez 1 résultat&nbsp;%FOCUS%."""
        "Captain Phasma":
           display_name: """Capitaine Phasma"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%À la fin de la phase d’engagement, chaque vaisseau ennemi à portée 0-1 qui n’est pas stressé gagne 1 marqueur de stress."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Pendant la phase de système, vous pouvez choisir 1 vaisseau ennemi à portée 1-2, dire à voix haute une direction et une vitesse, puis regarder le cadran de ce vaisseau. Si la direction et la vitesse du vaisseau choisi correspondent à ce que vous avez dit, vous pouvez régler votre cadran sur une autre manœuvre."""
        "Chancellor Palpatine":
           display_name: """Chancelier Palpatine"""
           text: """<i>Ajoute <f>%COORDINATE%</f></i>%LINEBREAK%<i>Separatist Alliance ou Galactic Republic uniquement</i>%LINEBREAK%<strong>Chancelier Palpatine:</strong>%LINEBREAK%<strong>Mise en Place:</strong> à équiper avec cette face visible.%LINEBREAK%Après avoir défendu, si l’attaquant est à portée&nbsp;0-2, vous pouvez dépenser 1&nbsp;%FORCE%. Dans ce cas, l’attaquant gagne 1 marqueur de stress.%LINEBREAK%Pendant la phase de dénouement, vous pouvez retourner cette carte.%LINEBREAK%<strong>Darth Sidious:</strong>%LINEBREAK%Après avoir effectué une action %COORDINATE% violette, le vaisseau que vous avez coordonné gagne 1 marqueur de stress. Puis il gagne 1 marqueur de concentration ou récupère 1&nbsp;%FORCE%."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Au début de la phase d’engagement, vous pouvez dépenser 2 %CHARGE% pour réparer 1 carte de dégât face visible."""
        "Chewbacca (Scum)":
           display_name: """Chewbacca (Scum)"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Au début de la phase de dénouement, vous pouvez dépenser 1 marqueur de concentration pour réparer 1 de vos cartes de dégât face visible."""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca (Resistance)"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%<strong>Mise en place :</strong> perdez 1 %CHARGE%.%LINEBREAK%Après qu’une carte de dégât a été attribuée à un vaisseau allié à portée 0-3, récupérez 1 %CHARGE%.%LINEBREAK%Tant que vous effectuez une attaque, vous pouvez dépenser 2 %CHARGE% pour changer 1 résultat %FOCUS% en un résultat %CRIT%."""
        "Ciena Ree":
           display_name: """Ciena Ree"""
           text: """<i>Requiert %COORDINATE% ou <r>%COORDINATE%</r></i>%LINEBREAK%<i>Empire Galactique uniquement</i>%LINEBREAK%Après avoir effectué une action %COORDINATE%, si le vaisseau coordonné effectue une action %BARRELROLL% ou %BOOST%, il peut gagner 1 marqueur de stress pour pivoter de 90°."""
        "Cikatro Vizago":
           display_name: """Cikatro Vizago"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Pendant la phase de dénouement, vous pouvez choisir 2 améliorations %ILLICIT% équipant des vaisseaux alliés à portée 0-1. Dans ce cas, vous pouvez échanger ces améliorations. %LINEBREAK%<strong>Fin de Partie&nbsp;:</strong> remettez toutes les améliorations %ILLICIT% sur leurs vaisseaux d’origine."""
        "Cloaking Device":
           display_name: """Appareil d’Occultation"""
           text: """<i>Vaisseau petit ou Vaisseau moyen uniquement</i>%LINEBREAK%<strong>Action :</strong> dépensez 1 %CHARGE% pour effectuer une action %CLOAK%.%LINEBREAK%Au début de la phase de préparation, lancez 1 dé d’attaque. Sur un résultat %FOCUS%, désoccultez-vous ou défaussez votre marqueur d’occultation."""
        "Clone Commander Cody":
           display_name: """Commandant Clone Cody"""
           text: """<i>Galactic Republic uniquement</i>%LINEBREAK%Après avoir effectué une attaque qui a raté, si au moins 1 résultat %HIT%/%CRIT% a été neutralisé, le défenseur gagne 1 marqueur de contrainte."""
        "Cluster Missiles":
           display_name: """Missiles Groupés"""
           text: """<strong>Attaque (%LOCK%) :</strong> dépensez 1 %CHARGE%. Après cette attaque, vous pouvez effectuer cette attaque en tant qu’attaque bonus contre une cible différente à portée 0-1 du défenseur, en ignorant le prérequis %LOCK%."""
        "Collision Detector":
           display_name: """Détecteur Anti-Collision"""
           text: """Tant que vous accélérez ou que vous effectuez un tonneau, vous pouvez vous déplacer à travers ou chevaucher les obstacles. %LINEBREAK%Après vous être déplacé à travers ou avoir chevauché un obstacle, vous pouvez dépenser 1&nbsp;%CHARGE% pour ignorer ses effets jusqu’à la fin du round."""
        "Composure":
           display_name: """Maîtrise de Soi"""
           text: """<i>Requiert <r>%FOCUS%</r> ou %FOCUS%</i>%LINEBREAK%Après avoir échoué à une action, si vous n’avez aucun marqueur vert, vous pouvez effectuer une action %FOCUS%."""
        "Concussion Missiles":
           display_name: """Missiles à Concussion"""
           text: """<strong>Attaque (%LOCK%) :</strong> dépensez 1 %CHARGE%. Après que cette attaque a touché, chaque vaisseau à portée 0-1 du défenseur expose 1 de ses cartes de dégât."""
        "Conner Nets":
           display_name: """Filet Conner"""
           text: """<strong>Mine</strong>%LINEBREAK%Pendant la phase de système, vous pouvez dépenser 1 %CHARGE% pour larguer un filet Conner en utilisant le gabarit [1&nbsp;%STRAIGHT%].%LINEBREAK%La %CHARGE% de cette carte ne peut pas être récupérée."""
        "Contraband Cybernetics":
           display_name: """Cybernétique de Contrebande"""
           text: """Avant votre activation, vous pouvez dépenser 1 %CHARGE%. Dans ce cas, jusqu’à la fin du round, vous pouvez effectuer des actions et exécuter des manœuvres rouges, même si vous êtes stressé."""
        "Count Dooku":
           display_name: """Comte Dooku"""
           text: """<i>Separatist Alliance uniquement</i>%LINEBREAK%Avant qu’un vaisseau à portée&nbsp;0-2 ne lance des dés d’attaque ou de défense, si toutes vos %FORCE% sont actives, vous pouvez dépenser 1&nbsp;%FORCE% et nommer un résultat. Si le lancer ne contient pas le résultat nommé, le vaisseau doit changer 1&nbsp;dé pour ce résultat."""
        "Crack Shot":
           display_name: """Tireur Hors Pair"""
           text: """Tant que vous effectuez une attaque principale, si le défenseur est dans votre %BULLSEYEARC%, avant l’étape « Neutraliser les résultats », vous pouvez dépenser 1&nbsp;%CHARGE% pour annuler 1 résultat %EVADE%."""
        "DRK-1 Probe Droids":
           display_name: """Droïdes Sondes DRK-1"""
           text: """<i>Separatist Alliance uniquement</i>%LINEBREAK%Pendant la phase de dénouement, vous pouvez dépenser 1&nbsp;%CHARGE% pour larguer ou lancer 1 droïde sonde DRK-1 en utilisant un gabarit de vitesse 3.%LINEBREAK%Les %CHARGE% de cette carte ne peuvent pas être récupérées."""
        "Daredevil":
           display_name: """Casse-Cou"""
           text: """<i>Requiert %BOOST%</i>%LINEBREAK%<i>Vaisseau petit uniquement</i>%LINEBREAK%Tant que vous effectuez une action %BOOST% blanche, vous pouvez considérer qu’elle est rouge pour utiliser le gabarit [1&nbsp;%TURNLEFT%] ou [1&nbsp;%TURNRIGHT%] à la place."""
        "Darth Vader":
           display_name: """Dark Vador"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Au début de la phase d’engagement, vous pouvez choisir 1 vaisseau dans votre arc de tir à portée 0-2 et dépenser 1 %FORCE%. Dans ce cas, ce vaisseau subit 1 dégât&nbsp;%HIT% sauf s’il choisit de retirer 1 marqueur vert."""
        "Deadman's Switch":
           display_name: """Salve Automatique"""
           text: """Après que vous avez été détruit, chaque autre vaisseau à portée 0-1 subit 1 dégât&nbsp;%HIT%."""
        "Death Troopers":
           display_name: """Death Troopers"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Pendant la phase d’activation, les vaisseaux ennemis à portée 0-1 ne peuvent pas retirer de marqueurs de stress."""
        "Debris Gambit":
           display_name: """Gambit des Astéroïdes"""
           text: """<i>Ajoute <r>%EVADE%</r></i>%LINEBREAK%<i>Vaisseau petit ou Vaisseau moyen uniquement</i>%LINEBREAK%Tant que vous effectuez une action %EVADE% rouge, s’il y a un obstacle à portée 0-1, considérez cette action comme blanche à la place."""
        "Dedicated":
           display_name: """Dévoué"""
           text: """<i>Galactic Republic uniquement</i>%LINEBREAK%Tant qu’un autre vaisseau allié situé dans votre %LEFTARC% ou %RIGHTARC% à portée&nbsp;0-2 défend, s’il est limité ou possède l’amélioration <strong>Dévoué</strong> et que vous n’êtes pas contraint, vous pouvez gagner 1 marqueur de contrainte. Dans ce cas, le défenseur relance 1 de ses résultats vierges."""
        "Delayed Fuses":
           display_name: """Détonateur à Retardement"""
           text: """Après avoir largué, lancé ou placé une bombe ou une mine, vous pouvez placer dessus 1&nbsp;marqueur d’amorce."""
        "Delta-7B":
           display_name: """Delta-7B"""
           text: """<i class = flavor_text>Le Delta-7B a été conçu comme une variante plus large de l’Intercepteur de classe Aethersprite Delta-7, reconnaissable à son emplacement repositionné pour droïde astromech. De nombreux généraux Jedi plébiscitent la puissance de feu et la résistance de cet appareil.</i>"""
        "Dengar":
           display_name: """Dengar"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Après avoir défendu, si l’attaquant est dans votre arc de tir, vous pouvez dépenser 1&nbsp;%CHARGE%. Dans ce cas, lancez 1 dé d’attaque sauf si l’attaquant choisit de retirer 1 marqueur vert. Sur un résultat %HIT% ou %CRIT%, l’attaquant subit 1 dégât&nbsp;%HIT%."""
        "Diamond-Boron Missiles":
           display_name: """Missiles Diamant-Bore"""
           text: """<strong>Attaque (%LOCK%) :</strong> dépensez 1&nbsp;%CHARGE%. Après que cette attaque a touché, vous pouvez dépenser 1&nbsp;%CHARGE%. Dans ce cas, chaque vaisseau à portée&nbsp;0-1 du défenseur dont l’agilité est inférieure ou égale à celle du défenseur lance 1&nbsp;dé d’attaque et subit 1 dégât&nbsp;%HIT%/%CRIT% pour chaque résultat correspondant."""
        "Director Krennic":
           display_name: """Directeur Krennic"""
           text: """<i>Ajoute %LOCK%</i>%LINEBREAK%<i>Empire Galactique uniquement</i>%LINEBREAK%<strong>Mise en Place :</strong> avant de placer les forces, assignez l’état <strong>Prototype Optimisé</strong> à un autre vaisseau allié."""
        "Dorsal Turret":
           display_name: """Tourelle Dorsale"""
           text: """<i>Ajoute %ROTATEARC%</i>%LINEBREAK%<strong>Attaque</strong>"""
        "Electro-Proton Bomb":
           display_name: """Bombe Électro-Protonique"""
           text: """<i>Requiert %RELOAD% ou <r>%RELOAD%</r></i>%LINEBREAK%<strong>Bombe</strong>%LINEBREAK%Pendant la phase de système, vous pouvez dépenser 1&nbsp;%CHARGE% pour larguer une Bombe Électro-Protonique avec le gabarit [1&nbsp;%STRAIGHT%]. Puis placez 1 marqueur d’amorce sur cet engin.%LINEBREAK%La %CHARGE% de cette carte ne peut pas être récupérée."""
        "Electronic Baffle":
           display_name: """Déflecteur Électronique"""
           text: """Pendant la phase de dénouement, vous pouvez subir 1 dégât&nbsp;%HIT% pour retirer 1 marqueur rouge."""
        "Elusive":
           display_name: """Insaisissable"""
           text: """<i>Vaisseau petit ou Vaisseau moyen uniquement</i>%LINEBREAK%Tant que vous défendez, vous pouvez dépenser 1 %CHARGE% pour relancer 1 dé de défense.%LINEBREAK%Après avoir entièrement exécuté une manœuvre rouge, récupérez 1 %CHARGE%."""
        "Emperor Palpatine":
           display_name: """Empereur Palpatine"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Tant qu’un autre vaisseau allié défend ou effectue une attaque, vous pouvez dépenser 1&nbsp;%FORCE% pour modifier 1 de ses dés comme si ce vaisseau avait dépensé 1&nbsp;%FORCE%."""
        "Energy-Shell Charges":
           display_name: """Obus Énergétiques"""
           text: """<i>Requiert %CALCULATE% ou <r>%CALCULATE%</r></i>%LINEBREAK%<i>Separatist Alliance uniquement</i>%LINEBREAK%<strong>Attaque (%CALCULATE%) :</strong> dépensez 1&nbsp;%CHARGE%. Tant que vous effectuez cette attaque, vous pouvez dépenser 1 marqueur de calcul pour changer 1 résultat %FOCUS% en un résultat %CRIT%.%LINEBREAK%<strong>Action</strong> : rechargez cette carte."""
        "Engine Upgrade":
           display_name: """Moteurs Améliorés"""
           text: """<i>Ajoute %BOOST%</i>%LINEBREAK%<i>Requiert <r>%BOOST%</r></i>%LINEBREAK%<i class = flavor_text>Les armées de grande taille comme celles de l’Empire Galactique ont des vaisseaux équipés de moteurs standardisés, mais les pilotes indépendants ou les petites organisations remplacent souvent les accouplements, rajoutent des propulseurs ou utilisent du carburant haute performance afin d’obtenir une poussée plus forte.</i>"""
        "Ensnare":
           display_name: """Enchevêtrement"""
           text: """À la fin de la phase d’activation, si vous êtes tracté, vous pouvez choisir 1&nbsp;vaisseau situé dans votre arc %SINGLETURRETARC% à portée&nbsp;0-1. Transférez-lui 1&nbsp;marqueur de rayon tracteur."""
        "Expert Handling":
           display_name: """As de l’Espace"""
           text: """<i>Ajoute %BARRELROLL%</i>%LINEBREAK%<i>Requiert <r>%BARRELROLL%</r></i>%LINEBREAK%<i class = flavor_text>Bien que les chasseurs lourds puissent être déportés lors d’un tonneau, les pilotes chevronnés savent comment s’y prendre sans malmener leur vaisseau ou se rendre vulnérable à une attaque.</i>"""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Après avoir effectué une attaque principale, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une attaque bonus %SINGLETURRETARC% depuis une %SINGLETURRETARC% avec laquelle vous n’avez pas attaqué à ce round. Dans ce cas et si vous êtes stressé, vous pouvez relancer 1 dé d’attaque."""
        "Fanatical":
           display_name: """Fanatique"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK% Tant que vous effectuez une attaque principale, si vous n’êtes pas protégé, vous pouvez changer 1 résultat %FOCUS% en un résultat %HIT%."""
        "Fearless":
           display_name: """Intrépide"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque principale %FRONTARC%, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% du défenseur, vous pouvez changer 1 de vos résultats en un résultat %HIT%."""
        "Feedback Array":
           display_name: """Dispositif de Retour"""
           text: """Avant de vous engager, vous pouvez gagner 1 marqueur ionique et 1 marqueur de désarmement. Dans ce cas, chaque vaisseau à portée 0 subit 1 dégât %HIT%."""
        "Ferrosphere Paint":
           display_name: """Peinture Ferrosphère"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Après qu’un vaisseau ennemi vous a verrouillé, si vous n’êtes pas dans son %BULLSEYEARC%, il gagne 1 marqueur de stress."""
        "Fifth Brother":
           display_name: """Le Cinquième Frère"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, vous pouvez dépenser 1&nbsp;%FORCE% pour changer 1 de vos résultats %FOCUS% en un résultat %CRIT%."""
        "Finn":
           display_name: """Finn"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Tant que vous défendez ou effectuez une attaque principale, si le vaisseau ennemi est dans votre %FRONTARC%, vous pouvez ajouter 1 résultat vierge à votre lancer (ce dé peut être relancé ou modifié autrement)."""
        "Fire-Control System":
           display_name: """Système de Commande de Tir"""
           text: """Tant que vous effectuez une attaque, si vous avez un verrouillage sur le défenseur, vous pouvez relancer 1 dé d’attaque. Dans ce cas, vous ne pouvez pas dépenser votre marqueur de verrouillage pendant cette attaque."""
        "Foresight":
           display_name: """Clairvoyance"""
           text: """Après qu’un vaisseau ennemi a exécuté une manœuvre, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer cette attaque contre lui en tant qu’attaque bonus.%LINEBREAK%<strong>Attaque :</strong> vous pouvez changer 1 résultat&nbsp;%FOCUS% en un résultat&nbsp;%HIT%&nbsp;; vos dés ne peuvent pas être modifiés autrement."""
        "Freelance Slicer":
           display_name: """Slicer Free-lance"""
           text: """Tant que vous défendez et avant que les dés d’attaque ne soient lancés, vous pouvez dépenser un marqueur de verrouillage que vous avez sur l’attaquant pour lancer 1 dé d’attaque. Dans ce cas, l’attaquant gagne 1 marqueur de brouillage. Puis, sur un résultat %HIT% ou %CRIT%, gagnez 1 marqueur de brouillage."""
        "GA-97":
           display_name: """GA-97"""
           text: """<i>Ajoute %CALCULATE%</i>%LINEBREAK%<i>CHANGE ME uniquement</i>%LINEBREAK%<strong> Mise en Place :</strong> avant de placer les forces, vous pouvez dépenser 3-5&nbsp;%CHARGE%. Dans ce cas, choisissez un autre vaisseau allié et assignez-lui l’état <strong>C’est la Résistance</strong>."""
        'GNK "Gonk" Droid':
           display_name: """Droïde “Gonk” GNK"""
           text: """<strong>Mise en Place :</strong> perdez 1 %CHARGE%.%LINEBREAK%<strong>Action :</strong> récupérez 1 %CHARGE%.%LINEBREAK%<strong>Action :</strong> dépensez 1 %CHARGE% pour récupérer 1 bouclier."""
        "General Grievous":
           display_name: """Général Grievous"""
           text: """<i>Separatist Alliance uniquement</i>%LINEBREAK%Tant que vous défendez, après l’étape «&nbsp;Neutraliser les résultats&nbsp;», s’il y a au moins 2 résultats %HIT%/%CRIT%, vous pouvez dépenser 1&nbsp;%CHARGE% pour annuler 1 résultat %HIT% ou %CRIT%.%LINEBREAK%Après qu’un vaisseau allié a été détruit, récupérez 1&nbsp;%CHARGE%."""
        "General Hux":
           display_name: """Général Hux """
           text: """<i>Requiert %COORDINATE% ou <r>%COORDINATE%</r></i>%LINEBREAK%<i>CHANGE ME uniquement</i>%LINEBREAK%Tant que vous effectuez une action %COORDINATE% blanche, vous pouvez considérer qu’elle est rouge. Dans ce cas, vous pouvez coordonner jusqu’à 2 vaisseaux supplémentaires du même type, et chaque vaisseau que vous coordonnez doit effectuer la même action, en la considérant comme rouge."""
        "Grand Inquisitor":
           display_name: """Grand Inquisiteur"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Après qu’un vaisseau ennemi à portée 0-2 a révélé son cadran, vous pouvez dépenser 1 %FORCE% pour effectuer 1 action blanche de votre barre d’action, en considérant cette action comme rouge."""
        "Grand Moff Tarkin":
           display_name: """Grand Moff Tarkin"""
           text: """<i>Requiert %LOCK% ou <r>%LOCK%</r></i>%LINEBREAK%<i>Empire Galactique uniquement</i>%LINEBREAK%Pendant la phase de système, vous pouvez dépenser 2&nbsp;%CHARGE%. Dans ce cas, chaque vaisseau allié peut verrouiller un vaisseau que vous avez verrouillé."""
        "Grappling Struts":
           display_name: """Supports d’Ancrage (Repliés)"""
           text: """<strong>Repliés: Mise en Place :</strong> à équiper avec cette face visible.%LINEBREAK%Tant que vous exécutez une manœuvre, si vous chevauchez un astéroïde ou un nuage de débris et qu’il y a 1 autre vaisseau allié ou moins à portée&nbsp;0 de cet obstacle, vous pouvez retourner cette carte.%LINEBREAK%<strong>Dépliés:</strong>%LINEBREAK%Ignorez les obstacles à portée&nbsp;0 et tant que vous vous déplacez à travers. Après avoir révélé votre cadran, si vous avez révélé une manœuvre autre que [2&nbsp;%STRAIGHT%] et êtes à portée&nbsp;0 d’un astéroïde ou d’un nuage de débris, sautez votre étape «&nbsp;Exécuter la manœuvre&nbsp;» et retirez 1 marqueur de stress&nbsp;; si vous avez révélé une manouvre à droite ou à gauche, faites pivoter votre vaisseau de 90° dans cette direction. Après avoir exécuté une manœuvre, retournez cette carte."""
        "Gravitic Deflection":
           display_name: """Déflexion Gravitationnelle"""
           text: """Tant que vous défendez, vous pouvez relancer 1 dé de défense pour chaque vaisseau tracté situé dans l’arc d’attaque."""
        "Greedo":
           display_name: """Greedo"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, vous pouvez dépenser 1&nbsp;%CHARGE% pour changer 1 résultat %HIT% en un résultat %CRIT%.%LINEBREAK%Tant que vous défendez, si votre %CHARGE% est active, l’attaquant peut changer 1 résultat %HIT% en un résultat %CRIT%."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Pendant la phase d’engagement, à l’initiative 7, vous pouvez effectuer une attaque %SINGLETURRETARC%. Vous ne pouvez pas effectuer d’autre attaque avec cette %SINGLETURRETARC% à ce round."""
        "Han Solo (Scum)":
           display_name: """Han Solo (Scum)"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Avant de vous engager, vous pouvez effectuer une action %FOCUS% rouge."""
        "Han Solo (Resistance)":
           display_name: """Han Solo (Resistance)"""
           text: """<i>Ajoute <r>%EVADE%</r></i>%LINEBREAK%<i>CHANGE ME uniquement</i>%LINEBREAK%Après avoir effectué une action %EVADE%, gagnez un nombre de marqueurs d’évasion supplémentaires égal au nombre de vaisseaux ennemis à portée 0-1."""
        "Hate":
           display_name: """Haine"""
           text: """Après avoir subi 1 ou plusieurs dégâts, récupérez autant de %FORCE%."""
        "Heavy Laser Cannon":
           display_name: """Canon Laser Lourd"""
           text: """<strong>Attaque :</strong> après l’étape «&nbsp;Modifier les dés d’attaque&nbsp;», changez tous les résultats %CRIT% en résultats %HIT%."""
        "Heightened Perception":
           display_name: """Perception Renforcée"""
           text: """Au début de la phase d’engagement, vous pouvez dépenser 1&nbsp;%FORCE%. Dans ce cas, pendant cette phase, engagez-vous à l’initiative 7 au lieu de le faire à votre valeur d’initiative standard."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Vous pouvez exécuter des manœuvres rouges même si vous êtes stressé. Après avoir entièrement exécuté une manœuvre rouge, si vous avez au moins 3 marqueurs de stress, retirez 1 marqueur de stress et subissez 1 dégât&nbsp;%HIT%."""
        "Heroic":
           display_name: """Héroïque"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Tant que vous défendez ou effectuez une attaque, si vous n’avez que des résultats vierges et au moins 2 résultats, vous pouvez relancer n’importe quel nombre de vos dés."""
        "Homing Missiles":
           display_name: """Missiles à Tête Chercheuse"""
           text: """<strong>Attaque (%LOCK%) :</strong> dépensez 1 %CHARGE%. Après que vous avez déclaré le défenseur, il peut choisir de subir 1 dégât&nbsp;%HIT%. Dans ce cas, sautez les étapes «&nbsp;Dés d’attaque&nbsp;» et «&nbsp;Dés de défense&nbsp;» et considérez que l’attaque a touché."""
        "Hotshot Gunner":
           display_name: """Artilleur Hors Pair"""
           text: """Tant que vous effectuez une attaque %SINGLETURRETARC%, après l’étape «&nbsp;Modifier les dés de défense&nbsp;», le défenseur retire 1 marqueur de concentration ou de calcul."""
        "Hull Upgrade":
           display_name: """Coque Améliorée"""
           text: """<i class = flavor_text>Quand on ne peut pas s’offrir un générateur de boucliers améliorés, souder des plaques de blindage sur la coque du vaisseau peut être un bon substitut.</i>"""
        "Hyperspace Tracking Data":
           display_name: """Données de Pistage Hyperspatial"""
           text: """<i>Vaisseau grand uniquement</i>%LINEBREAK%<i>CHANGE ME uniquement</i>%LINEBREAK%<strong>Mise en place&nbsp;:</strong> avant de placer les forces, vous pouvez choisir un nombre entre 0 et 6. Pendant la mise en place, considérez que votre initiative est égale au nombre choisi.%LINEBREAK%Après la Mise en place, assignez 1 marqueur de concentration ou d’évasion à chaque vaisseau allié à portée 0-2."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """<i>Ajoute %CALCULATE%</i>%LINEBREAK%<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Vous avez la capacité de pilote de chaque autre vaisseau allié qui possède l’amélioration <strong>IG-2000</strong>.%LINEBREAK%Après avoir effectué une action %CALCULATE%, gagnez 1 marqueur de calcul."""
        "ISB Slicer":
           display_name: """Slicer du BSI"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Pendant la phase de dénouement, les vaisseaux ennemis à portée 1-2 ne peuvent pas retirer de marqueurs de brouillage."""
        "Impervium Plating":
           display_name: """Blindage en Impervium"""
           text: """Avant qu’une carte de dégât face visible <strong>Vaisseau</strong> ne vous soit attribuée, vous pouvez dépenser 1&nbsp;%CHARGE% pour la défausser à la place."""
        "Inertial Dampeners":
           display_name: """Amortisseurs Inertiels"""
           text: """Avant d’exécuter une manœuvre, vous pouvez dépenser 1 bouclier. Dans ce cas, exécutez une manœuvre [0&nbsp;%STOP%] blanche à la place de celle que vous avez révélée, puis gagnez 1 marqueur de stress."""
        "Informant":
           display_name: """Informateur"""
           text: """<strong>Mise en Place :</strong> après avoir placé les forces, choisissez 1 vaisseau ennemi et assignez-lui l’état <strong>Dispositif d’Écoute</strong>."""
        "Instinctive Aim":
           display_name: """Visée Instinctive"""
           text: """Tant que vous effectuez une attaque spéciale, vous pouvez dépenser 1&nbsp;%FORCE% pour ignorer le prérequis %FOCUS% ou %LOCK%."""
        "Integrated S-Foils":
           display_name: """S-foils Intégrés"""
           text: """<strong>Dépliés:</strong>%LINEBREAK%Avant votre activation, vous pouvez retourner cette carte.%LINEBREAK%<strong>Repliés:</strong>%LINEBREAK%<i>Ajoute %BARRELROLL% ,  %FOCUS%&nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i>&nbsp;<r>%BARRELROLL%</r></i>%LINEBREAK%Tant que vous effectuez une attaque principale, si le défenseur n’est pas dans votre %BULLSEYEARC%, lancez 1 dé d’attaque en moins.%LINEBREAK%Avant votre activation, vous pouvez retourner cette carte."""
        "Intimidation":
           display_name: """Intimidation"""
           text: """Tant qu’un vaisseau ennemi à portée 0 défend, il lance un dé de défense en moins."""
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
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Pendant la phase de dénouement, vous pouvez choisir 1 vaisseau allié à portée 0-2 et dépenser 1&nbsp;%CHARGE%. Dans ce cas, ce vaisseau récupère 1&nbsp;%CHARGE% sur 1 de ses améliorations %ILLICIT% équipées."""
        "Jamming Beam":
           display_name: """Rayon de Brouillage"""
           text: """<strong>Attaque :</strong> si cette attaque touche, tous les résultats %HIT%/%CRIT% infligent des marqueurs de brouillage au lieu des dégâts."""
        "Juke":
           display_name: """Feinte"""
           text: """<i>Vaisseau petit ou Vaisseau moyen uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, si vous avez un marqueur d’évasion, vous pouvez changer 1 des résultats %EVADE% du défenseur en un résultat %FOCUS%."""
        "Jyn Erso":
           display_name: """Jyn Erso"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Si un vaisseau allié à portée 0-3 est censé gagner un marqueur de concentration, il peut gagner 1 marqueur d’évasion à la place."""
        "K2-B4":
           display_name: """K2-B4"""
           text: """<i>Separatist Alliance uniquement</i>%LINEBREAK%Tant qu’un vaisseau allié à portée&nbsp;0-3 défend, il peut dépenser 1 marqueur de calcul. Dans ce cas, ajoutez 1 résultat %EVADE% sauf si l’attaquant choisit de gagner 1 marqueur de contrainte."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Après qu’un vaisseau allié à portée 0-2 a entièrement exécuté une manœuvre blanche, vous pouvez dépenser 1 %FORCE% pour retirer 1 marqueur de stress de ce vaisseau."""
        "Kaydel Connix":
           display_name: """Kaydel Connix"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Après avoir révélé votre cadran, vous pouvez régler votre cadran sur une manœuvre de base à la vitesse supérieure suivante. Tant que vous exécutez cette manœuvre, augmentez sa difficulté."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Au début de la phase de dénouement, vous pouvez choisir 1 vaisseau ennemi à portée 0-2 dans votre arc de tir. Dans ce cas, ce vaisseau ennemi ne retire pas ses marqueurs de rayon tracteur."""
        "Korr Sella":
           display_name: """Korr Sella"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Après avoir entièrement exécuté une manœuvre bleue, retirez tous vos marqueurs de stress."""
        "Kraken":
           display_name: """Kraken"""
           text: """<i>Ajoute %CALCULATE%</i>%LINEBREAK%<i>Separatist Alliance uniquement</i>%LINEBREAK%Pendant la phase de dénouement, vous pouvez choisir jusqu’à 3 vaisseaux alliés à portée&nbsp;0-3. Dans ce cas, chacun de ces vaisseaux ne retire pas 1 marqueur de calcul."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%<strong>Action :</strong> choisissez 1 vaisseau ennemi à portée 1-3. Dans ce cas, dépensez 1 %FORCE% pour assigner au vaisseau choisi la condition <strong>Je Vous Montrerai le Côté Obscur</strong>."""
        "L3-37":
           display_name: """L3-37"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%<strong>Mise en Place :</strong> équipez-vous avec cette face visible.%LINEBREAK%Tant que vous défendez, vous pouvez retourner cette carte. Dans ce cas, l'attaquant doit relancer tous les dés d'attaque. %LINEBREAK% %LINEBREAK%Si vous n'êtes pas protégé, diminuez la difficulté de vos manœuvres de virages sur l'aile (%BANKLEFT% et %BANKRIGHT%)."""
        "Landing Struts":
           display_name: """Supports d’Atterrissage"""
           text: """<strong>Repliés: </strong><strong>Mise en Place :</strong> à équiper avec cette face visible.%LINEBREAK%Tant que vous exécutez une manœuvre, si vous chevauchez un astéroïde ou un nuage de débris et qu’il y a 1&nbsp;autre vaisseau allié ou moins à portée&nbsp;0 de cet obstacle, vous pouvez retourner cette carte.%LINEBREAK%<strong>Dépliés:</strong>%LINEBREAK%Ignorez les obstacles à portée&nbsp;0 et tant que vous vous déplacez à travers. Après avoir révélé votre cadran, si vous avez révélé une manœuvre autre que [2&nbsp;%STRAIGHT%] et êtes à portée&nbsp;0 d’un astéroïde ou d’un nuage de débris, sautez votre étape «&nbsp;Exécuter la manœuvre&nbsp;» et retirez 1&nbsp;marqueur de stress&nbsp;; si vous avez révélé une manœuvre à droite ou à gauche, pivotez votre vaisseau de 90° dans cette direction. Après avoir exécuté une manœuvre, retournez cette carte."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%<strong>Action :</strong> lancez 2 dés de défense. Pour chaque résultat %FOCUS% obtenu, gagnez 1 marqueur de concentration. Pour chaque résultat %EVADE% obtenu, gagnez 1 marqueur d’évasion. Si les deux résultats sont vierges, le joueur adverse choisit concentration ou évasion. Vous gagnez 1 marqueur de ce type."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian (Scum)"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Après avoir lancé des dés, vous pouvez dépenser 1 marqueur vert pour relancer jusqu’à 2 de vos résultats."""
        "Lando's Millennium Falcon":
           display_name: """Faucon Millenium de Lando"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%1 Vaisseau de secours peut s’arrimer à vous.%LINEBREAK%Tant que vous avez un Vaisseau de secours arrimé, vous pouvez dépenser ses boucliers comme s’ils étaient sur votre carte de vaisseau.%LINEBREAK%Tant que vous effectuez une attaque principale contre un vaisseau stressé, lancez 1 dé d’attaque supplémentaire."""
        "Larma D'Acy":
           display_name: """Larma D’Acy"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Tant que vous avez 2 marqueurs de stress ou moins, vous pouvez effectuer des actions&nbsp;%REINFORCE%, %COORDINATE% et&nbsp;<jam>, même si vous êtes stressé.%LINEBREAK%Tant que vous effectuez une action blanche&nbsp;%REINFORCE%, %COORDINATE% ou&nbsp;<jam>, si vous êtes stressé, considérez cette action comme rouge."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Tant que vous défendez, si l’attaquant est stressé, vous pouvez retirer 1 marqueur de stress de l’attaquant pour changer 1 de vos résultats Vierge/%FOCUS% en un résultat %EVADE%."""
        "Leia Organa":
           display_name: """Leia Organa"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Au début de la phase d’activation, vous pouvez dépenser 3&nbsp;%CHARGE%. Pendant cette phase, chaque vaisseau allié réduit la difficulté de ses manœuvres rouges."""
        "Leia Organa (Resistance)":
           display_name: """Leia Organa (Resistance)"""
           text: """<i>Ajoute %COORDINATE%</i>%LINEBREAK%<i>CHANGE ME uniquement</i>%LINEBREAK%Après qu’un vaisseau allié a révélé son cadran, vous pouvez dépenser 1&nbsp;%FORCE%. Dans ce cas, ce vaisseau allié réduit la difficulté de sa manœuvre."""
        "Lone Wolf":
           display_name: """Loup Solitaire"""
           text: """Tant que vous défendez ou que vous effectuez une attaque, s’il n’y a aucun autre vaisseau allié à portée 0-2, vous pouvez dépenser 1 %CHARGE% pour relancer 1 de vos dés."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Au début de la phase d’engagement, vous pouvez dépenser 1&nbsp;%FORCE% pour faire pivoter votre indicateur %SINGLETURRETARC%."""
        "M9-G8":
           display_name: """M9-G8"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Tant qu’un vaisseau que vous avez verrouillé effectue une attaque, vous pouvez choisir 1 dé d’attaque. Dans ce cas, l’attaquant relance ce dé."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Après avoir défendu, si l’attaque touche, vous pouvez verrouiller l’attaquant."""
        "Marksmanship":
           display_name: """Adresse au Tir"""
           text: """Tant que vous effectuez une attaque, si le défenseur est dans votre %BULLSEYEARC%, vous pouvez changer 1 résultat %HIT% en un résultat %CRIT%."""
        "Maul":
           display_name: """Maul"""
           text: """<i>Racailles et Scélérats ou contient Ezra Bridger uniquement</i>%LINEBREAK%Après avoir subi des dégâts, vous pouvez gagner 1 marqueur de stress pour récupérer 1&nbsp;%FORCE%.%LINEBREAK%Vous pouvez vous équiper d’améliorations “Côté Obscur”."""
        "Minister Tua":
           display_name: """Ministre Tua"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Au début de la phase d’engagement, si vous êtes endommagé, vous pouvez effectuer une action %REINFORCE% rouge."""
        "Moff Jerjerrod":
           display_name: """Moff Jerjerrod"""
           text: """<i>Requiert %COORDINATE% ou <r>%COORDINATE%</r></i>%LINEBREAK%<i>Empire Galactique uniquement</i>%LINEBREAK%Pendant la phase de système, vous pouvez dépenser 2&nbsp;%CHARGE%. Dans ce cas, choisissez le gabarit [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] ou [1&nbsp;%BANKRIGHT%]. Chaque vaisseau allié peut effectuer une action %BOOST% rouge en utilisant ce gabarit."""
        "Munitions Failsafe":
           display_name: """Munitions à Sûreté Intégrée"""
           text: """Tant que vous effectuez une attaque %TORPEDO% ou %MISSILE%, après avoir lancé les dés d’attaque, vous pouvez annuler tous les résultats des dés pour récupérer 1 %CHARGE% que vous avez dépensée comme coût pour l’attaque."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Diminuez la difficulté de vos manœuvres de virages sur l’aile (%BANKLEFT% et %BANKRIGHT%)."""
        "Novice Technician":
           display_name: """Apprenti Technicien"""
           text: """À la fin du round, vous pouvez lancer 1 dé d’attaque pour réparer 1 carte de dégât face visible. Puis, sur un résultat %HIT%, exposez 1 carte de dégât."""
        "Os-1 Arsenal Loadout":
           display_name: """Arsenal Os-1 Embarqué"""
           text: """Tant que vous avez exactement 1 marqueur de désarmement, vous pouvez toujours effectuer des attaques %TORPEDO% et %MISSILE% contre des cibles que vous avez verrouillées. Dans ce cas, vous ne pouvez pas dépenser votre marqueur de verrouillage pendant cette attaque.%LINEBREAK%Ajoutez des emplacements %TORPEDO% et %MISSILE%."""
        "Outmaneuver":
           display_name: """Manœuvre Improbable"""
           text: """Tant que vous effectuez une attaque %FRONTARC%, si vous n’êtes pas dans l’arc de tir du défenseur, il lance 1 dé de défense en moins."""
        "PZ-4CO":
           display_name: """PZ-4CO"""
           text: """<i>Ajoute %CALCULATE%</i>%LINEBREAK%<i>CHANGE ME uniquement</i>%LINEBREAK%À la fin de la phase d’activation, vous pouvez choisir 1&nbsp;vaisseau allié à portée&nbsp;1-2. Dans ce cas, transférez 1&nbsp;marqueur de calcul à ce vaisseau. Si votre manœuvre révélée est bleue, vous pouvez transférer 1 marqueur de concentration à la place."""
        "Paige Tico":
           display_name: """Paige Tico"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Après avoir effectué une attaque principale, vous pouvez larguer 1 bombe ou pivoter votre indicateur %SINGLETURRETARC%. %LINEBREAK%Après avoir été détruit, vous pouvez larguer 1 bombe."""
        "Passive Sensors":
           display_name: """Senseurs Passifs"""
           text: """<strong>Action :</strong> dépensez 1&nbsp;%CHARGE%. Vous ne pouvez effectuer cette action que lors de votre étape «&nbsp;Effectuer une action&nbsp;».%LINEBREAK%Tant que votre&nbsp;%CHARGE% est inactive, vous ne pouvez pas être coordonné.%LINEBREAK%Avant de vous engager, si votre&nbsp;%CHARGE% est inactive, vous pouvez effectuer une action&nbsp;%CALCULATE% ou&nbsp;%LOCK%."""
        "Pattern Analyzer":
           display_name: """Analyseur de Modèles"""
           text: """Tant que vous exécutez entièrement une manœuvre rouge, avant l’étape «&nbsp;Vérifier la difficulté&nbsp;», vous pouvez effectuer 1 action."""
        "Perceptive Copilot":
           display_name: """Copilote Perspicace"""
           text: """Après avoir effectué une action %FOCUS%, gagnez 1 marqueur de concentration."""
        "Petty Officer Thanisson":
           display_name: """Sergent Thanisson"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Pendant la phase d’activation ou d’engagement, après qu’un vaisseau ennemi dans votre %FRONTARC% et à portée 0-1 a gagné un marqueur rouge ou orange, si vous n’êtes pas stressé, vous pouvez gagner 1 marqueur de stress. Dans ce cas, le vaisseau ennemi gagne 1 marqueur supplémentaire du type qu’il vient de gagner."""
        "Pivot Wing":
           display_name: """Aile Pivot (dépliée)"""
           text: """<strong>Dépliée:</strong>%LINEBREAK%Avant votre activation, vous pouvez retourner cette carte.%LINEBREAK%<strong>Repliée:</strong>%LINEBREAK%Tant que vous défendez, lancez 1 dé de défense en moins.%LINEBREAK%Après avoir exécuté une manœuvre [0&nbsp;%STOP%], vous pouvez faire pivoter votre vaisseau de 90° ou 180°.%LINEBREAK%Avant votre activation, vous pouvez retourner cette carte."""
        "Plasma Torpedoes":
           display_name: """Torpilles à Plasma"""
           text: """<strong>Attaque (%LOCK%) :</strong> dépensez 1&nbsp;%CHARGE%. Lors de l’étape «&nbsp;Neutraliser les résultats&nbsp;», les résultats&nbsp;%CRIT% sont annulés avant les résultats&nbsp;%HIT%. Après que cette attaque a touché, le défenseur perd 1&nbsp;bouclier."""
        "Precognitive Reflexes":
           display_name: """Réflexes Prémonitoires"""
           text: """<i>Vaisseau petit uniquement</i>%LINEBREAK%Après avoir révélé votre cadran, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une action&nbsp;%BARRELROLL%&nbsp;ou&nbsp;%BOOST%. Puis, si vous avez effectué une action qui n’est pas dans votre barre d’action, gagnez 1 marqueur de contrainte.%LINEBREAK%Si vous agissez ainsi, vous ne pouvez pas effectuer d’autre action pendant votre activation."""
        "Predator":
           display_name: """Prédateur"""
           text: """Tant que vous effectuez une attaque principale, si le défenseur est dans votre %BULLSEYEARC%, vous pouvez relancer 1 dé d’attaque."""
        "Predictive Shot":
           display_name: """Tir Prophétique"""
           text: """Après avoir déclaré une attaque, si le défenseur est dans votre %BULLSEYEARC%, vous pouvez dépenser 1&nbsp;%FORCE%. Dans ce cas, lors de l’étape « Lancez les dés de défense », le défenseur ne peut pas lancer plus de dés de défense que le nombre de vos résultats %HIT%/%CRIT%."""
        "Primed Thrusters":
           display_name: """Propulseurs Survitaminés"""
           text: """<i>Vaisseau petit uniquement</i>%LINEBREAK%Tant que vous avez 2 marqueurs de stress ou moins, vous pouvez effectuer les actions %BARRELROLL% et %BOOST% même si vous êtes stressé."""
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
           display_name: """Qi’ra"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Tant que vous vous déplacez et effectuez des attaques, vous ignorez les obstacles que vous verrouillez."""
        "R2 Astromech":
           display_name: """Astromech R2"""
           text: """Après avoir révélé votre cadran, vous pouvez dépenser 1 %CHARGE% et gagner 1 marqueur de désarmement pour récupérer 1 bouclier."""
        "R2-A6":
           display_name: """R2-A6"""
           text: """<i>Galactic Republic uniquement</i>%LINEBREAK%Après avoir révélé votre cadran, vous pouvez régler votre cadran sur une manœuvre de même direction mais avec une vitesse supérieure ou inférieure de&nbsp;1."""
        "R2-C4":
           display_name: """R2-C4"""
           text: """<i>Galactic Republic uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, vous pouvez dépenser 1&nbsp;marqueur d’évasion pour changer 1 résultat&nbsp;%FOCUS% en un résultat&nbsp;%HIT%."""
        "R2-D2 (Crew)":
           display_name: """R2-D2 (Crew)"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Pendant la phase de dénouement, si vous êtes endommagé et n’êtes pas protégé, vous pouvez lancer 1 dé d’attaque pour récupérer 1 bouclier. Sur un résultat %HIT%, exposez 1 de vos cartes de dégât."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Après avoir révélé votre cadran, vous pouvez dépenser 1&nbsp;%CHARGE% et gagner 1 marqueur de désarmement pour récupérer 1 bouclier."""
        "R2-HA":
           display_name: """R2-HA"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Tant que vous défendez, vous pouvez dépenser votre verrouillage sur l’attaquant pour relancer n’importe quel nombre de vos dés de défense."""
        "R3 Astromech":
           display_name: """Astromech R3"""
           text: """Vous pouvez maintenir jusqu’à 2 cibles verrouillées. Chaque verrouillage doit être sur un objet différent. %LINEBREAK%Après avoir effectué une action %LOCK%, vous pouvez verrouiller une cible."""
        "R4 Astromech":
           display_name: """Astromech R4"""
           text: """<i>Vaisseau petit uniquement</i>%LINEBREAK%Diminuez la difficulté de vos manœuvres de base (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%) ayant une vitesse 1-2."""
        "R4-P Astromech":
           display_name: """Astromech R4-P"""
           text: """<i>Galactic Republic uniquement</i>%LINEBREAK%Avant d’exécuter une manœuvre de base, vous pouvez dépenser 1&nbsp;%CHARGE%. Dans ce cas, tant que vous exécutez cette manœuvre, diminuez sa difficulté."""
        "R4-P17":
           display_name: """R4-P17"""
           text: """<i>Galactic Republic uniquement</i>%LINEBREAK%Après avoir entièrement exécuté une manœuvre rouge, vous pouvez dépenser 1&nbsp;%CHARGE% pour effectuer une action, même si vous êtes stressé."""
        "R4-P44":
           display_name: """R4-P44"""
           text: """<i>Galactic Republic uniquement</i>%LINEBREAK%Après avoir entièrement exécuté une manœuvre rouge, s’il y a un vaisseau ennemi dans votre %BULLSEYEARC%, gagnez 1 marqueur de calcul."""
        "R5 Astromech":
           display_name: """Astromech R5"""
           text: """<strong>Action :</strong> dépensez 1&nbsp;%CHARGE% pour réparer 1 carte de dégât face cachée.%LINEBREAK%<strong>Action :</strong> réparez 1 carte de dégât Vaisseau face visible."""
        "R5-D8":
           display_name: """R5-D8"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%<strong>Action :</strong> dépensez 1&nbsp;%CHARGE% pour réparer 1 carte de dégât face cachée.%LINEBREAK%<strong>Action :</strong> réparez 1 carte de dégât Vaisseau face visible."""
        "R5-P8":
           display_name: """R5-P8"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque contre un défenseur dans votre %FRONTARC%, vous pouvez dépenser 1&nbsp;%CHARGE% pour relancer 1 dé d’attaque. Si le résultat relancé est un résultat %CRIT%, subissez 1 dégât&nbsp;%CRIT%."""
        "R5-TK":
           display_name: """R5-TK"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Vous pouvez effectuer des attaques contre des vaisseaux alliés."""
        "R5-X3":
           display_name: """R5-X3"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Avant votre activation ou avant de vous engager, vous pouvez dépenser 1&nbsp;%CHARGE% pour ignorer les obstacles jusqu’à la fin de cette phase."""
        "Rey":
           display_name: """Rey"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Tant que vous défendez ou effectuez une attaque, si le vaisseau ennemi est dans votre %SINGLETURRETARC%, vous pouvez dépenser 1 %FORCE% pour changer 1 de vos résultats vierges en un résultat %EVADE% ou %HIT%."""
        "Rey's Millennium Falcon":
           display_name: """Rey’s Millennium Falcon"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%If you have 2 or fewer stress tokens, you can execute red Segnor’s Loop [%SLOOPLEFT% or %SLOOPRIGHT%] maneuvers and perform %BOOST% and&nbsp;%ROTATEARC% actions even while stressed."""
        "Rigged Cargo Chute":
           display_name: """Largage de Cargaison"""
           text: """<i>Vaisseau grand ou Vaisseau moyen uniquement</i>%LINEBREAK%<strong>Action :</strong> dépensez 1 %CHARGE%. Larguez 1 cargaison égarée en utilisant le gabarit [1&nbsp;%STRAIGHT%]."""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Tant que vous défendez ou effectuez une attaque, vous pouvez dépenser 1 de vos résultats pour verrouiller le vaisseau ennemi."""
        "Ruthless":
           display_name: """Impitoyable"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, vous pouvez choisir un autre vaisseau allié à portée 0-1 du défenseur. Dans ce cas, le vaisseau choisi subit 1 dégât&nbsp;%HIT% et vous pouvez changer 1 de vos résultats de dé en un résultat %HIT%."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%<strong>Mise en Place :</strong> placez sur cette carte les marqueurs suivants : 1 ionique, 1 brouillage, 1 stress, 1 rayon tracteur. %LINEBREAK%Après qu’un vaisseau a subi les effets d’une bombe alliée, vous pouvez retirer 1 marqueur ionique, de brouillage, de stress ou de rayon tracteur de cette carte. Dans ce cas, ce vaisseau gagne un marqueur correspondant."""
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
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Tant qu’un autre vaisseau allié à portée 0-1 défend, avant l’étape «&nbsp;Neutraliser les résultats&nbsp;», si vous êtes dans l’arc de l’attaque, vous pouvez subir 1 dégât %CRIT% pour annuler 1 résultat %CRIT%."""
        "Sense":
           display_name: """Sens"""
           text: """Pendant la phase de système, vous pouvez choisir 1 vaisseau à portée 0-1 et regarder son cadran. Si vous dépensez 1&nbsp;%FORCE%, vous pouvez choisir un vaisseau à portée 0-3 à la place."""
        "Servomotor S-Foils":
           display_name: """Servomoteur S-foils"""
           text: """<strong>Déplié:</strong>%LINEBREAK%Avant votre activation, vous pouvez retourner cette carte.%LINEBREAK%<strong>Replié:</strong>%LINEBREAK%<i>Ajoute %BOOST% ,  %FOCUS%&nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i>&nbsp;<r>%BOOST%</r></i>%LINEBREAK%Tant que vous effectuez une attaque principale, lancez 1 dé d’attaque en moins.%LINEBREAK%Avant votre activation, vous pouvez retourner cette carte."""
        "Seventh Fleet Gunner":
           display_name: """Artilleur de la Septième Flotte"""
           text: """<i>Galactic Republic uniquement</i>%LINEBREAK%Tant qu’un autre vaisseau allié effectue une attaque principale, si le défenseur est dans votre arc de tir, vous pouvez dépenser 1&nbsp;%CHARGE%. Dans ce cas, l’attaquant lance 1 dé supplémentaire, pour un maximum de 4. Pendant la phase de système, vous pouvez gagner 1 marqueur de désarmement pour récupérer 1&nbsp;%CHARGE%."""
        "Seventh Sister":
           display_name: """La Septième Sœur%LINEBREAK%"""
           text: """<i>Empire Galactique uniquement</i>%LINEBREAK%Si un vaisseau ennemi à portée 0-1 est censé gagner un marqueur de stress, vous pouvez dépenser 1 %FORCE% pour qu’il gagne 1 marqueur de brouillage ou de rayon tracteur à la place."""
        "Shield Upgrade":
           display_name: """Boucliers Améliorés"""
           text: """<i class = flavor_text>Les écrans déflecteurs sont la principale protection de la plupart des vaisseaux, à l’exception des chasseurs légers. Améliorer les boucliers d’un vaisseau peut se révéler coûteux, mais seuls les pilotes les plus présomptueux, ou les plus téméraires, songent à se passer de ce type d’investissement.</i>"""
        "Skilled Bombardier":
           display_name: """Bombardier Compétent"""
           text: """Si vous devez larguer ou lancer un engin, vous pouvez utiliser un gabarit de même direction mais avec une vitesse supérieure ou inférieure de 1."""
        "Snap Shot":
           display_name: """Tir Instantané"""
           text: """Après qu’un vaisseau ennemi a exécuté une manœuvre, vous pouvez effectuer cette attaque contre lui en tant qu’attaque bonus.%LINEBREAK%<strong>Attaque :</strong> vos dés ne peuvent pas être modifiés."""
        "Spare Parts Canisters":
           display_name: """Caisses de Pièces Détachées"""
           text: """<strong>Action :</strong> dépensez 1&nbsp;%CHARGE% pour récupérer 1&nbsp;charge sur l’une de vos améliorations %ASTROMECH% équipées.%LINEBREAK%<strong>Action :</strong> dépensez 1&nbsp;%CHARGE% pour larguer 1 pièces détachées, puis rompez tous les verrouillages qui vous sont assignés."""
        "Special Forces Gunner":
           display_name: """Artilleur des Forces Spéciales"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque principale %FRONTARC%, si votre %SINGLETURRETARC% est dans votre %FRONTARC%, vous pouvez lancer 1 dé d’attaque supplémentaire. %LINEBREAK%Après avoir effectué une attaque principale %FRONTARC%, si votre %SINGLETURRETARC% est dans votre %REARARC%, vous pouvez effectuer une attaque principale %SINGLETURRETARC% bonus."""
        "Squad Leader":
           display_name: """Chef d’Escouade"""
           text: """<i>Ajoute <r>%COORDINATE%</r></i>%LINEBREAK%Tant que vous coordonnez, le vaisseau que vous avez choisi peut effectuer une action seulement si celle-ci est également dans votre barre d’action. """
        "Static Discharge Vanes":
           display_name: """Ailettes Statiques de Décharge"""
           text: """Si vous devez gagner un marqueur ionique ou de brouillage, vous pouvez choisir un vaisseau à portée 0-1. Dans ce cas, gagnez 1 marqueur de stress et transférez 1 marqueur ionique ou de brouillage à ce vaisseau."""
        "Stealth Device":
           display_name: """Système d’Occultation"""
           text: """Tant que vous défendez, si votre %CHARGE% est active, lancez 1 dé de défense supplémentaire.%LINEBREAK%Après avoir subi des dégâts, perdez 1&nbsp;%CHARGE%."""
        "Supernatural Reflexes":
           display_name: """Réflexes Surnaturels"""
           text: """<i>Vaisseau petit uniquement</i>%LINEBREAK%Avant votre activation, vous pouvez dépenser 1&nbsp;%FORCE% pour effectuer une action %BARRELROLL% ou %BOOST%. Puis, si vous avez effectué une action qui n’est pas dans votre barre d’action, subissez 1 dégât %HIT%."""
        "Supreme Leader Snoke":
           display_name: """Suprême Leader Snoke"""
           text: """<i>CHANGE ME uniquement</i>%LINEBREAK%Pendant la phase de système, vous pouvez choisir n’importe nombre de vaisseaux ennemis au-delà de la portée 1. Dans ce cas, dépensez autant de %FORCE% pour retourner face visible le cadran de manœuvres de chaque vaisseau choisi."""
        "Swarm Tactics":
           display_name: """Tactique de Nuée"""
           text: """Au début de la phase d’engagement, vous pouvez choisir 1 vaisseau allié à portée 1. Dans ce cas, considérez que son initiative est égale à la vôtre jusqu’à la fin du round."""
        "Synchronized Console":
           display_name: """Console Synchronisée"""
           text: """<i>Requiert %LOCK% ou <r>%LOCK%</r></i>%LINEBREAK%<i>Galactic Republic uniquement</i>%LINEBREAK%Après avoir effectué une attaque, vous pouvez choisir un vaisseau allié à portée&nbsp;1 ou un vaisseau allié qui possède l’amélioration <strong>Console Synchronisée</strong> à portée&nbsp;1-3 et dépenser un verrouillage que vous avez sur le défenseur. Dans ce cas, le vaisseau allié que vous avez choisi peut verrouiller le défenseur."""
        "TA-175":
           display_name: """TA-175"""
           text: """<i>Separatist Alliance uniquement</i>%LINEBREAK%Après qu’un vaisseau allié à portée&nbsp;0-3 avec&nbsp;%CALCULATE% dans sa barre d’action a été détruit, chaque vaisseau allié à portée&nbsp;0-3 avec&nbsp;%CALCULATE% dans sa barre d’action gagne 1&nbsp;marqueur de calcul."""
        "TV-94":
           display_name: """TV-94"""
           text: """<i>Separatist Alliance uniquement</i>%LINEBREAK%Tant qu’un vaisseau allié à portée&nbsp;0-3 effectue une attaque principale contre un défenseur situé dans son %BULLSEYEARC%, s’il y a 2 dés d’attaque ou moins, il peut dépenser 1 marqueur de calcul pour ajouter 1 résultat %HIT%."""
        "Tactical Officer":
           display_name: """Officier Tactique"""
           text: """<i>Ajoute %COORDINATE%</i>%LINEBREAK%<i>Requiert <r>%COORDINATE%</r></i>%LINEBREAK%<i class = flavor_text>Dans la confusion d’un combat spatial, un simple ordre peut faire la différence entre une victoire et un carnage.</i>"""
        "Tactical Scrambler":
           display_name: """Brouilleur Tactique"""
           text: """<i>Vaisseau grand ou Vaisseau moyen uniquement</i>%LINEBREAK%Tant que vous gênez l’attaque d’un vaisseau ennemi, le défenseur lance 1 dé de défense supplémentaire."""
        "Targeting Computer":
           display_name: """Ordinateur de Visée"""
           text: """<i>Ajoute %LOCK%</i>%LINEBREAK%<i class = flavor_text>Les ordinateurs de visée sont des dispositifs standards sur beaucoup de vaisseaux et plus spécifiquement sur ceux conçus pour utiliser de l’artillerie. Certains chasseurs légers et appareils de transport n’ont pas ce genre de guidage d’armes, mais il est toujours possible d’en installer en tant que modification.</i>"""
        "Targeting Synchronizer":
           display_name: """Synchroniseur Télémétrique"""
           text: """<i>Requiert %LOCK% ou <r>%LOCK%</r></i>%LINEBREAK%Tant qu’un vaisseau allié à portée 1-2 effectue une attaque contre une cible que vous avez verrouillée, ce vaisseau allié ignore le prérequis d’attaque %LOCK%."""
        "Tobias Beckett":
           display_name: """Tobias Beckett"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%<strong>Mise en Place :</strong> après avoir placé les forces, vous pouvez choisir 1 obstacle dans la zone de jeu. Dans ce cas, placez-le n’importe où dans la zone de jeu au-delà de la portée 2 de tout bord ou vaisseau et au-delà de la portée 1 de tout autre obstacle."""
        "Tractor Beam":
           display_name: """Rayon Tracteur"""
           text: """<strong>Attaque :</strong> si cette attaque touche, tous les résultats %HIT%/%CRIT% infligent des marqueurs de rayon tracteur au lieu des dégâts."""
        "Trajectory Simulator":
           display_name: """Simulateur de Trajectoire"""
           text: """Pendant la phase de système, si vous êtes censé larguer ou lancer une bombe, vous pouvez la lancer en utilisant le gabarit [5&nbsp;%STRAIGHT%] à la place."""
        "Treacherous":
           display_name: """Perfide"""
           text: """<i>Separatist Alliance uniquement</i>%LINEBREAK%Tant que vous défendez, vous pouvez choisir un vaisseau gênant l’attaque et dépenser 1&nbsp;%CHARGE%. Dans ce cas, annulez 1 résultat %HIT% ou %CRIT% et le vaisseau que vous avez choisi gagne 1 marqueur de contrainte.%LINEBREAK%Après qu’un vaisseau à portée&nbsp;0-3 a été détruit, récupérez 1&nbsp;%CHARGE%."""
        "Trick Shot":
           display_name: """Tir Habile"""
           text: """Tant que vous effectuez une attaque qui est gênée par un obstacle, lancez 1 dé d’attaque supplémentaire."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Après avoir partiellement exécuté une manœuvre, vous pouvez subir 1 dégât&nbsp;%HIT% pour effectuer 1 action blanche."""
        "Veteran Tail Gunner":
           display_name: """Artilleur de Poupe Vétéran"""
           text: """Après avoir effectué une attaque principale %FRONTARC%, vous pouvez effectuer une attaque principale %REARARC% bonus."""
        "Veteran Turret Gunner":
           display_name: """Artilleur de Tourelle Vétéran"""
           text: """<i>Requiert <r>%ROTATEARC%</r> ou %ROTATEARC%</i>%LINEBREAK%Après avoir effectué une attaque principale, vous pouvez effectuer une attaque bonus %SINGLETURRETARC% en utilisant une %SINGLETURRETARC% que vous n’avez pas déjà utilisée pour attaquer à ce round."""
        "Xg-1 Assault Configuration":
           display_name: """Configuration d’Assaut Xg-1"""
           text: """Tant que vous avez exactement 1 marqueur de désarmement, vous pouvez toujours effectuer des attaques %CANNON%. Tant que vous effectuez une attaque %CANNON% alors que vous êtes désarmé, lancez 3 dés d’attaque au maximum. %LINEBREAK%Ajoutez un emplacement %CANNON%."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Tant que vous effectuez une attaque, si vous n’êtes pas stressé, vous pouvez choisir 1 dé de défense et gagner 1 marqueur de stress. Dans ce cas, le défenseur doit relancer le dé choisi."""
        '"Chopper" (Crew)':
           display_name: """“Chopper” (Crew)"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Pendant l’étape «&nbsp;Effectuer une action&nbsp;», vous pouvez effectuer 1 action, même si vous êtes stressé. Après avoir effectué une action en étant stressé, subissez 1 dégât&nbsp;%HIT% sauf si vous exposez 1 de vos cartes de dégât."""
        '"Chopper" (Astromech)':
           display_name: """“Chopper” (Astromech)"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%<strong>Action :</strong> dépensez 1&nbsp;%CHARGE% non-récurrente d’une autre amélioration équipée pour récupérer 1 bouclier. %LINEBREAK%<strong>Action :</strong> dépensez 2 boucliers pour récupérer 1&nbsp;%CHARGE% non-récurrente sur une amélioration équipée."""
        '"Genius"':
           display_name: """“Genius”"""
           text: """<i>Racailles et Scélérats uniquement</i>%LINEBREAK%Après avoir entièrement exécuté une manœuvre, si vous n’avez pas largué ou lancé d’engin à ce round, vous pouvez larguer 1 bombe."""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """<i>Alliance Rebelle uniquement</i>%LINEBREAK%Vous pouvez effectuer des attaques principales à portée 0. Les vaisseaux ennemis à portée 0 peuvent effectuer des attaques principales contre vous."""
        "Discord Missiles":
           display_name: """Missiles Discorde"""
           text: """<i>Separatist Alliance uniquement</i>%LINEBREAK%Au début de la phase d’engagement, vous pouvez dépenser 1 marqueur de calcul et 1&nbsp;%CHARGE% pour lancer 1 nuée de droïdes buzz en utilisant le gabarit [3&nbsp;%BANKLEFT%], [3&nbsp;%STRAIGHT%] ou [3&nbsp;%BANKRIGHT%.%LINEBREAK%La %CHARGE% de cette carte ne peut pas être récupérée."""
                    
    condition_translations =
        'Suppressive Fire':
           text: '''While you perform an attack against a ship other than <strong>Captain Rex</strong>, roll 1 fewer attack die. %LINEBREAK% After <strong>Captain Rex</strong> defends, remove this card.  %LINEBREAK% At the end of the Combat Phase, if <strong>Captain Rex</strong> did not perform an attack this phase, remove this card. %LINEBREAK% After <strong>Captain Rex</strong> is destroyed, remove this card.'''
        'Hunted':
           text: '''After you are destroyed, you must choose another friendly ship and assign this condition to it, if able.'''
        'Listening Device':
           text: '''During the System Phase, if an enemy ship with the <strong>Informant</strong> upgrade is at range 0-2, flip your dial faceup.'''
        'Optimized Prototype':
           text: '''While you perform a %FRONTARC% primary attack against a ship locked by a friendly ship with the <strong>Director Krennic</strong> upgrade, you may spend 1 %HIT%/%CRIT%/%FOCUS% result. If you do, choose one: the defender loses 1 shield or the defender flips 1 of its facedown damage cards.'''
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
  
    exportObj.setupTranslationCardData pilot_translations, upgrade_translations, condition_translations