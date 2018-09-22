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
        "Crew": "Équipage"
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
        '.game-type-selector option[value="custom"]': 'Personnalisé'
        '.game-type-selector option[value="epic"]': 'Épique'
        '.game-type-selector option[value="team-epic"]': 'Épique en équipe'
        # Card browser
        '.xwing-card-browser option[value="name"]': 'Nom'
        '.xwing-card-browser option[value="source"]': 'Source'
        '.xwing-card-browser option[value="type-by-points"]': 'Type (par Points)'
        '.xwing-card-browser option[value="type-by-name"]': 'Type (par Nom)'
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
        '.choose-obstacles-description' : 'Choisir jusqu\'à trois obstacles à inclure dans le lien permanent à utiliser dans des programmes externes. (Cette fonctionnalité est en beta ; l\'affichage des obstacles sélectionnés dans l\'impression n\'est pas encore supporté.'
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
        '.to-xws' : 'Importer vers XWS (beta)'

    singular:
        'pilots': 'Pilotes'
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

    # Rename ships (below is an example of what it should look like. uncomment 
    # the # on the line to make it active. You must have all pilots that use the 
    # translated ship name use the tag ship:"Translated ship name")

    # exportObj.renameShip 'Z-95 Headhunter', 'Chasseur de têtes Z-95'
    # exportObj.renameShip 'Attack Shuttle', 'Navette d\'attaque'
    # exportObj.renameShip 'Auzituck Gunship', 'Canonnière Auzituck'
    # exportObj.renameShip 'Sheathipede-Class Shuttle', 'Navette de classe Sheathipede'

    exportObj.renameShip 'TIE Fighter', 'Chasseur TIE'
    # exportObj.renameShip 'TIE Interceptor', 'Intercepteur TIE'
    # exportObj.renameShip 'TIE Bomber', 'Bombardier TIE'
    # exportObj.renameShip 'TIE Defender', 'Défenseur TIE'
    # exportObj.renameShip 'TIE Phantom', 'TIE Fantôme'
    # exportObj.renameShip 'Alpha-Class Star Wing', 'Star Wing de classe Alpha'
    # exportObj.renameShip 'Lambda-Class Shuttle', 'Navette de classe Lambda'
    # exportObj.renameShip 'VT-49 Decimator', 'Décimateur VT-49'
    
    # exportObj.renameShip 'M3-A Interceptor', 'Intercepteur M3-A'
    # exportObj.renameShip 'HWK-290', 'HWK-290'
    # exportObj.renameShip 'Kihraxz Fighter', 'Chasseur Kihraxz'
    # exportObj.renameShip 'G-1A Starfighter', 'Chasseur G-1A'
    exportObj.renameShip 'Fang Fighter', 'Chasseur Fang'
    # exportObj.renameShip 'Lancer-Class Pursuit Craft', 'Vaisseau de poursuite de classe Lancer'
    # exportObj.renameShip 'Scurrg H-6 Bomber', 'Bombardier Scurrg H-6'
    # exportObj.renameShip 'M12-L Kimogila Fighter', 'Chasseur M12-L Kimogila'
    exportObj.renameShip 'YT-1300 (Scum)', 'YT-1300 (Racailles)'
    exportObj.renameShip 'Escape Craft', 'Vaisseau de secours'
    # exportObj.renameShip 'Mining Guild TIE Fighter', 'TIE de la Guilde Minière'

    # exportObj.renameShip 'B/SF-17 Bomber', 'Bombardier B/SF-17'
    # exportObj.renameShip 'YT-1300 (Resistance)', 'YT-1300 (Résistance)'
    
    # exportObj.renameShip 'TIE/FO Fighter', 'Chasseur TIE/FO'
    # exportObj.renameShip 'TIE/SF Fighter', 'Chasseur TIE/SF'
    # exportObj.renameShip 'TIE Silencer', 'TIE Silencer'
    # exportObj.renameShip 'Upsilon-Class Shuttle', 'Navette de commandement de classe Upsilon'
    
    # Names don't need updating, but text needs to be set
    pilot_translations =
        "4-LOM":
           text: """After you fully execute a red maneuver, gain 1 calculate token. At the start of the End Phase, you may choose 1 ship at range 0-1. If you do, transfer 1 of your stress tokens to that ship."""
        "Academy Pilot":
           name: "Pilote de l'académie"
           #ship: "Chasseur TIE"
           text: """ """
        "Airen Cracken":
           text: """After you perform an attack, you may choose 1 friendly ship at range 1. That ship may perform an action, treating it as red."""
        "Alpha Squadron Pilot":
           text: """AUTOTHRUSTERS: After you perform an action. you may perform a red %BARRELROLL% or a red %BOOST% action."""
        "AP-5":
           text: """While you coordinate, if you chose a ship with exactly 1 stress token, it can perform actions. %LINEBREAK% COMMS SHUTTLE: While you are docked, your carrier ship gains %COORDINATE%. Before your carrier ship activates, it may perform a %COORDINATE% action."""
        "Arvel Crynyd":
           text: """You can perform primary attacks at range 0. If you would fail a %BOOST% action by overlapping another ship, resolve it as though you were partially executing a maneuver instead. %LINEBREAK% VECTORED THRUSTERS: After you perform an action, you may perform a red %BOOST% action."""
        "Asajj Ventress":
           text: """At the start of the Engagement Phase, you may choose 1 enemy ship in your %SINGLETURRETARC% at range 0-2 and spend 1 %FORCE% token. If you do, that ship gains 1 stress token unless it removes 1 green token."""
        "Autopilot Drone":
           name: "Drone Automatique"
           ship: "Vaisseau de secours"
           text: """Cellules Énergétiques Bidouillées : pendant la phase de système, si vous n’êtes pas arrimé, perdez 1 %CHARGE%. À la fin de la phase d’activation, vous êtes détruit si vous avez 0 %CHARGE%. Avant de retirer votre figurine, chaque vaisseau à porté 0–1 subit 1 dégât %CRIT%."""
        "Bandit Squadron Pilot":
           text: """ """
        "Baron of the Empire":
           text: """ """
        "Benthic Two-Tubes":
           text: """After you perform a %FOCUS% action, you may transfer 1 of your focus tokens to a friendly ship at range 1-2."""
        "Biggs Darklighter":
           text: """Tant qu’un autre vaisseau allié à portée 0–1 défend, avant l’étape « Neutraliser les résultats », si vous êtes dans l’arc de l’attaque, vous pouvez subir 1 dégât %HIT% ou %CRIT% pour annuler 1 dégât correspondant."""
        "Binayre Pirate":
           text: """ """
        "Black Squadron Ace":
           name: "As de l’Escadron Noir"
           ship: "Chasseur TIE"
           text: """ """
        "Black Squadron Scout":
           text: """ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        "Black Sun Ace":
           text: """ """
        "Black Sun Assassin":
           text: """MICROTHRUSTERS: While you perform a barrel roll, you MUST use the (1 %BANKLEFT%) or (1 %BANKRIGHT%) template instead of the [1 %STRAIGHT%] template."""
        "Black Sun Enforcer":
           text: """MICROTHRUSTERS: While you perform a barrel roll, you MUST use the (1 %BANKLEFT%) or (1 %BANKRIGHT%) template instead of the [1 %STRAIGHT%] template."""
        "Black Sun Soldier":
           text: """ """
        "Blade Squadron Veteran":
           text: """ """
        "Blue Squadron Escort":
           name: "Escorte de l’Escadron Bleu"
           text: """ """
        "Blue Squadron Pilot":
           text: """ """
        "Blue Squadron Scout":
           text: """ """
        "Boba Fett":
           text: """Tant que vous défendez ou effectuez une attaque, vous pouvez relancer 1 de vos dés pour chaque vaisseau ennemi à portée 0–1."""
        "Bodhi Rook":
           text: """Friendly ships can acquire locks onto objects at range 0-3 of any friendly ship."""
        "Bossk":
           text: """While you perform a primary attack, after the Neutralize Results step, you may spend 1 %CRIT% result to add 2 %HIT% results."""
        "Bounty Hunter":
           name: "Chasseur de Primes"
           text: """ """
        "Braylen Stramm":
           text: """While you defend or perform an attack, if you are stressed, you may reroll up to 2 of your dice."""
        "Captain Feroph":
           text: """While you defend, if the attacker does not have any green tokens, you may change 1 of your blank or %FOCUS% results to an %EVADE% result. %LINEBREAK% ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        "Captain Jonus":
           text: """While a friendly ship at range 0-1 performs a %TORPEDO% or %MISSILE% attack, that ship may reroll up to 2 attack dice. %LINEBREAK% NIMBLE BOMBER: If you would drop a device using a %STRAIGHT% template, you may use %BANKLEFT% a or %BANKRIGHT% tempate of the same speed instead."""
        "Captain Jostero":
           text: """After an enemy ship suffers damage, if it is not defending, you may perform a bonus attack against that ship."""
        "Captain Kagi":
           text: """At the start of the Engagement Phase, you may choose 1 or more friendly ships at range 0-3. If you do, transfer all enemy lock tokens from the chosen ships to you."""
        "Captain Nym":
           text: """Before a friendly bomb or mine would detonate, you may spend 1 %CHARGE% to prevent it from detonating. While you defend against an attack obstructed by a bomb or mine, roll 1 additional defense die."""
        "Captain Oicunn":
           text: """You can perform primary attacks at range 0."""
        "Captain Rex":
           text: """After you perform an attack, assign the Suppressive Fire condition to the defender."""
        "Cartel Executioner":
           text: """DEAD TO RIGHTS: While you perform an attack, if the defender is in your %BULLSEYEARC%, defense dice cannot be modified using green tokens."""
        "Cartel Marauder":
           text: """The versatile Kihraxz was modeled after Incom's popular X-wing starfighter, but an array of aftermarket modification kits ensure a wide variety of designs."""
        "Cartel Spacer":
           text: """WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Cassian Andor":
           text: """At the start of the Activation Phase, you may choose 1 friendly ship at range 1-3. If you do, that ship removes 1 stress token."""
        "Cavern Angels Zealot":
           text: """ """
        "Chewbacca":
           text: """Before you would be dealt a faceup damage card, you may spend 1 %CHARGE% to be dealt the card facedown instead."""
        '"Chopper"':
           text: """At the start of the Engagement Phase, each enemy ship at range 0 gains 2 jam tokens.TAIL GUN: While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship's Primary %FRONTARC% attack value."""
        "Colonel Jendon":
           text: """At the start of the Activation Phase, you may spend 1 %CHARGE%. If you do, while friendly ships acquire lock this round, they must acquire locks beyond range 3 instead of at range 0-3."""
        "Colonel Vessery":
           text: """While you perform an attack against a locked ship, after you roll attack dice, you may acquire a lock on the defender. %LINEBREAK% FULL THROTTLE: After you FULLY execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Constable Zuvio":
           text: """If you would drop a device, you may launch it using a [1 %STRAIGHT%] template instead. %LINEBREAK% SPACETUG TRACTOR ARRAY: ACTION: Choose a ship in your %FRONTARC% at range 1. That ship gains one tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1"""
        "Contracted Scout":
           text: """ """
        "Corran Horn":
           text: """At initiative 0, you may perform a bonus primary attack against an enemy ship in your %BULLSEYEARC%. If you do, at the start of the next Planning Phase, gain 1 disarm token. %LINEBREAK% EXPERIMENTAL SCANNERS: You can acquire locks beyond range 3. You cannot acquite locks at range 1."""
        '"Countdown"':
           text: """While you defend, after the Neutralize Results step, if you are not stressed, you may suffer 1 %HIT% damage and gain 1 stress token. If you do, cancel all dice results. %LINEBREAK% ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        "Countess Ryad":
           text: """While you would execute a %STRAIGHT% maneuver, you may increase the difficulty of the maneuver. If you do, execute it as a %KTURN% maneuver instead. %LINEBREAK% FULL THROTTLE: After you FULLY execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Crymorah Goon":
           text: """ """
        "Cutlass Squadron Pilot":
           text: """ """
        "Dace Bonearm":
           text: """After an enemy ship at range 0-3 receives at least 1 ion token, you may spend 3 %CHARGE%. If you do, that ship gains 2 additional ion tokens."""
        "Dalan Oberos":
           text: """At the start of the Engagement Phase, you may choose 1 shielded ship in your %BULLSEYEARC% and spend 1 %CHARGE%. If you do, that ship loses 1 shield and you recover 1 shield. %LINEBREAK% DEAD TO RIGHTS: While you perform an attack, if the defender is in your %BULLSEYEARC%, defense dice cannot be modified using green tokens."""
        "Dalan Oberos (StarViper)":
           text: """After you fully execute a maneuver, you may gain 1 stress token to rotate your ship 90˚.  %LINEBREAK% MICROTHRUSTERS: While you perform a barrel roll, you MUST use the (1 %BANKLEFT%) or (1 %BANKRIGHT%) template instead of the [1 %STRAIGHT%] template."""
        "Darth Vader":
           text: """Après avoir effectué une action, vous pouvez dépenser 1 %FORCE% pour effectuer une action. %LINEBREAK% Ordinateur de Visée Avancé : tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d’attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Dash Rendar":
           text: """While you move, you ignore obstacles. %LINEBREAK% SENSOR BLINDSPOT: While you perform a primary attack at range 0-1, do not apply the range 0-1 bonus and roll 1 fewer attack die."""
        '"Deathfire"':
           text: """After you are destroyed, before you are removed, you may perform an attack and drop or launch 1 device. %LINEBREAK% NIMBLE BOMBER: If you would drop a device using a %STRAIGHT% template, you may use %BANKLEFT% a or %BANKRIGHT% tempate of the same speed instead."""
        '"Deathrain"':
           text: """After you drop or launch a device, you may perform an action."""
        "Del Meeko":
           ship: "Chasseur TIE"
           text: """Tant qu’un vaisseau allié à portée 0–2 défend contre un attaquant endommagé, le défenseur peut relancer 1 dé de défense."""
        "Delta Squadron Pilot":
           text: """FULL THROTTLE: After you FULLY execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Dengar":
           text: """After you defend, if the attcker is in your %FRONTARC%, you may spend 1 %CHARGE% to perform a bonus attack against the attacker."""
        '"Double Edge"':
           text: """After you perform a %TURRET% or %MISSILE% attack that misses, you may perform a bonus attack using a different weapon."""
        "Drea Renthal":
           text: """While a friendly non-limited ship performs an attack, if the defender is in your firing arc, the attacker may reroll 1 attack die."""
        '"Duchess"':
           text: """You may choose not to use your Adaptive Ailerons. You may use your Adaptive Ailerons even while stressed. %LINEBREAK% ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        '"Dutch" Vander':
           text: """Après avoir effectué l’action %LOCK%, vous pouvez choisir 1 vaisseau allié à portée 1–3. Ce vaisseau allié peut verrouiller l’objet que vous avez verrouillé, en ignorant les restrictions de portée."""
        '"Echo"':
           text: """While you decloak, you must use the (2 %BANKLEFT%) or (2 %BANKRIGHT%) template instead of the (2 %STRAIGHT%) template. STYGUM ARRAY: After you decloak, you may perform an %EVADE% action. At the Start of the End Phase, you may spend 1 evade token to gain one cloak token."""
        "Edrio Two-Tubes":
           text: """Before you activate, if you are focused, you may perform an action."""
        "Emon Azzameen":
           text: """Si vous êtes censé larguer un engin en utilisant un gabarit [1 %STRAGHT%], vous pouvez utiliser le gabarit [3 %TURNLEFT%], [3 %STRAIGHT%] ou [3 %TURNRIGHT%] à la place."""
        "Esege Tuketu":
           text: """While a friendly ship at range 0-2 defends or performs an attack, it may spend your focus tokens as if that ship has them."""
        "Evaan Verlaine":
           text: """Au début de la phase d’engagement, vous pouvez dépenser 1 marqueur de concentration pour choisir un vaisseau allié à portée 0–1. Dans ce cas, ce vaisseau allié lance 1 dé de défense supplémentaire tant qu’il défend, jusqu’à la fin du round."""
        "Ezra Bridger":
           text: """While you defend or perform an attack, if you are stressed, you may spend 1 %FORCE% to change up to 2 of your %FOCUS% results to %EVADE% or %HIT% results. %LINEBREAK% LOCKED AND LOADED: While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus %REARARC% attack"""
        "Ezra Bridger (Sheathipede)":
           text: """While you defend or perform an attack, if you are stressed, you may spend 1 %FORCE% to change up to 2 of your %FOCUS% results to %EVADE%/%HIT% results. %LINEBREAK% COMMS SHUTTLE: While you are docked, your carrier ship gains %COORDINATE%. Before your carrier shpi activates, it may perform a %COORDINATE% action."""
        "Ezra Bridger (TIE Fighter)":
           text: """While you defend or perform an attack, if you are stressed, you may spend 1 %FORCE% to change up to 2 of your %FOCUS% results to %EVADE% or %HIT% results."""
        "Fenn Rau":
           ship: "Chasseur Fang"
           text: """Tant que vous défendez ou effectuez une attaque, si la portée d’attaque est 1, vous pouvez lancer 1 dé supplémentaire. %LINEBREAK% CONCORDIA FACEOFF: Opposition Concordia : tant que vous défendez, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% de l’attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Fenn Rau (Sheathipede)":
           text: """After an enemy ship in your firing arc engages, if you are not stressed, you may gain 1 stress token. If you do, that ship cannot spend tokens to modify dice while it performs an attack during this phase. %LINEBREAK% COMMS SHUTTLE: While you are docked, your carrier ship gains %COORDINATE%. Before your carrier shpi activates, it may perform a %COORDINATE% action."""
        "Freighter Captain":
           name: "Capitaine de Cargo"
           ship: "YT-1300 (Racailles)"
           text: """ """
        "Gamma Squadron Ace":
           text: """NIMBLE BOMBER: If you would drop a device using a %STRAIGHT% template, you may use %BANKLEFT% a or %BANKRIGHT% tempate of the same speed instead."""
        "Gand Findsman":
           text: """The legendary Findsmen of Gand worship enshrouding mists of their home planet, using signs, augurs, and mystical rituals to track their quarry."""
        "Garven Dreis":
           text: """Après voir dépensé un marqueur de concentration, vous pouvez choisir 1 vaisseau allié à portée 1–3. Ce vaisseau gagne 1 marqueur de concentration."""
        "Garven Dreis (X-Wing)":
           text: """Après voir dépensé un marqueur de concentration, vous pouvez choisir 1 vaisseau allié à portée 1–3. Ce vaisseau gagne 1 marqueur de concentration."""
        "Gavin Darklighter":
           text: """While a friendly ship performs an attack, if the defender is in your %FRONTARC%, the attacker may change 1 %HIT% result to a %CRIT% result. %LINEBREAK% EXPERIMENTAL SCANNERS: You can acquire locks beyond range 3. You cannot acquite locks at range 1."""
        "Genesis Red":
           text: """After you acquire a lock, you must remove all of your focus and evade tokens. Then gain the same number of focus and evade tokens that the locked ship has. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Gideon Hask":
           ship: "Chasseur TIE"
           text: """Tant que vous effectuez une attaque contre un défenseur endommagé, lancez 1 dé d’attaque supplémentaire."""
        "Gold Squadron Veteran":
           name: "Vétéran de l’Escadron Or"
           text: """ """
        "Grand Inquisitor":
           text: """While you defend at attack range 1, you may spend 1 %FORCE% to prevent the range 1 bonus. While you perform an attack against a defender at attack range 2-3, you may spend 1 %FORCE% to apply the range 1 bonus."""
        "Gray Squadron Bomber":
           name: "Bombardier de l’Escadron Gris"
           text: """ """
        "Graz":
           text: """While you defend, if you are behind the attacker, roll 1 additional defense die. While you perform an attack, if you are behind the defender roll 1 additional attack die."""
        "Green Squadron Pilot":
           text: """VECTORED THRUSTERS: After you perform an action, you may perform a red %BOOST% action."""
        "Guri":
           text: """At the start of the Engagement Phase, if there is at least 1 enemy ship at range 0-1, you may gain 1 focus token.  %LINEBREAK% MICROTHRUSTERS: While you perform a barrel roll, you MUST use the (1 %BANKLEFT%) or (1 %BANKRIGHT%) template instead of the [1 %STRAIGHT%] template."""
        "Han Solo (Scum)":
           name: "Han Solo (Racailles)"
           ship: "YT-1300 (Racailles)"
           text: """Tant que vous défendez ou effectuez une attaque principale, si l’attaque est gênée par un obstacle, vous pouvez lancer 1 dé supplémentaire."""
        "Han Solo":
           text: """After you roll dice, if you are at range 0-1 of an obstacle, you may reroll all of your dice. This does not count as rerolling for the purpose of other effects."""
        "Heff Tobber":
           text: """After an enemy ship executes a maneuver, if it is at range 0, you may perform an action."""
        "Hera Syndulla":
           text: """After you reveal a red or blue maneuver, you may set your dial to another maneuver of the same difficulty. %LINEBREAK% LOCKED AND LOADED: While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus %REARARC% attack"""
        "Hera Syndulla (VCX-100)":
           text: """After you reveal a red or blue maneuver, you may set your dial to another maneuver of the same difficulty. TAIL GUN: While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship's Primary %FRONTARC% attack value."""
        "Hired Gun":
           text: """Just the mention of Imperial credits can bring a host of less-than-trustworthy individuals to your side."""
        "Horton Salm":
           text: """Tant que vous effectuez une attaque, vous pouvez relancer 1 dé d’attaque pour chaque autre vaisseau allié à portée 0–1 du défenseur."""
        '"Howlrunner"':
           ship: "Chasseur TIE"
           text: """Tant qu’un vaisseau allié à portée 0–1 effectue une attaque principale, il peut relancer 1 dé d’attaque."""
        "Ibtisam":
           text: """After you fully execute a maneuver, if you are stressed, you may roll 1 attack die. On a %HIT% or %CRIT% result, remove 1 stress token."""
        "Iden Versio":
           ship: "Chasseur TIE"
           text: """Avant qu’un chasseur TIE/ln allié à portée 0–1 ne subisse 1 ou plusieurs dégâts, vous pouvez dépenser 1 %CHARGE%. Dans ce cas, prévenez ce dégât."""
        "IG-88A":
           text: """At the start of the Engagement Phase, you may choose 1 friendly ship with %CALCULATE% on its action bar at range 1-3. If you do, transfer 1 of your calculate tokens to it. %LINEBREAK% ADVANCED DROID BRAIN: After you perform a %CALCULATE% action, gain 1 calculate token."""
        "IG-88B":
           text: """After you perform an attack that misses, you may perform a bonus %CANNON% attack. %LINEBREAK% ADVANCED DROID BRAIN: After you perform a %CALCULATE% action, gain 1 calculate token."""
        "IG-88C":
           text: """After you perform a %BOOST% action, you may perform an %EVADE% action. %LINEBREAK% ADVANCED DROID BRAIN: After you perform a %CALCULATE% action, gain 1 calculate token."""
        "IG-88D":
           text: """While you execute a Segnor's Loop (%SLOOPLEFT% or %SLOOPRIGHT%) maneuver, you may use another template of the same speed instead: either the turn (%TURNLEFT% or %TURNRIGHT%) of the same direction or the straight (%STRAIGHT%) template. %LINEBREAK% ADVANCED DROID BRAIN: After you perform a %CALCULATE% action, gain 1 calculate token."""
        "Imdaar Test Pilot":
           text: """STYGUM ARRAY: After you decloak, you may perform an %EVADE% action. At the Start of the End Phase, you may spend 1 evade token to gain one cloak token."""
        "Inaldra":
           text: """While you defend or perform an attack, you may suffer 1 %HIT% damage to reroll any number of your dice. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Inquisitor":
           text: """The fearsome Inquisitors are given a great deal of autonomy and access to the Empire's latest technology, like the prototype TIE Advanced v1."""
        "Jake Farrell":
           text: """After you perform a %BARRELROLL% or %BOOST% action, you may choose a friendly ship at range 0-1. That ship may perform a %FOCUS% action. %LINEBREAK% VECTORED THRUSTERS: After you perform an action, you may perform a red %BOOST% action."""
        "Jakku Gunrunner":
           text: """SPACETUG TRACTOR ARRAY: ACTION: Choose a ship in your %FRONTARC% at range 1. That ship gains one tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1"""
        "Jan Ors":
           text: """While a friendly ship in your firing arc performs a primary attack, if you are not stressed, you may gain 1 stress token. If you do, that ship may roll 1 additional attack die."""
        "Jek Porkins":
           text: """Après avoir reçu un marqueur de stress, vous pouvez lancer 1 dé d’attaque pour le retirer. Sur un résultat %HIT%, subissez 1 dégat %HIT%."""
        "Joy Rekkoff":
           ship: "Chasseur Fang"
           text: """Tant que vous effectuez une attaque, vous pouvez dépenser 1 %CHARGE% d’une amélioration %TORPEDO% équipée. Dans ce cas, le défenseur lance 1 dé de défense en moins. %LINEBREAK% Opposition Concordia : tant que vous défendez, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% de l’attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Kaa'to Leeachos":
           text: """At the start of the Engagement Phase, you may choose 1 friendly ship at range 0-2. If you do, transfer 1 focus or evade token from that ship to yourself."""
        "Kad Solus":
           ship: "Chasseur Fang"
           text: """Après avoir entièrement exécuté une manœuvre rouge, gagnez 2 marqueurs de concentration. %LINEBREAK% Opposition Concordia : tant que vous défendez, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% de l’attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Kanan Jarrus":
           text: """While a friendly ship in your firing arc defends, you may spend 1 %FORCE%. If you do, the attacker rolls 1 fewer attack die. TAIL GUN: While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship's Primary %FRONTARC% attack value."""
        "Kashyyyk Defender":
           text: """Equipped with three wide-range Sureggi twin laser cannons, the Auzituck gunship acts as a powerful deterrent to slaver operations in the Kashyyyk system."""
        "Kath Scarlet":
           text: """Tant que vous effectuez une attaque principale, si au moins 1 vaisseau allié non-limité est à portée 0 du défenseur, lancez 1 dé d’attaque supplémentaire."""
        "Kavil":
           text: """While you perform a non-%FRONTARC% attack, roll 1 additional attack die."""
        "Ketsu Onyo":
           text: """At the start of the Engagement Phase, you may choose 1 ship in both your %FRONTARC% and %SINGLETURRETARC% at range 0-1. If you do, that ship gains 1 tractor token."""
        "Knave Squadron Escort":
           text: """EXPERIMENTAL SCANNERS: You can acquire locks beyond range 3. You cannot acquite locks at range 1."""
        "Koshka Frost":
           text: """Tant que vous défendez ou effectuez une attaque, si le vaisseau ennemi est stressé, vous pouvez relancer 1 de vos dés."""
        "Krassis Trelix":
           text: """Vous pouvez effectuer des attaques spéciales %FRONTARC% depuis votre %REARARC%. %LINEBREAK% Tant que vous effectuez une attaque spéciale, vous pouvez relancer 1 dé d’attaque."""
        "Kullbee Sperado":
           text: """After you perform a %BARRELROLL% or %BOOST% action, you may flip your equipped %CONFIG% upgrade card."""
        "Kyle Katarn":
           text: """At the start of the Engagement Phase, you may transfer 1 of your focus tokens to a friendly ship in your firing arc."""
        "L3-37 (Escape Craft)":
           name: "L3-37 (Vaisseau de secours)"
           ship: "Vaisseau de secours"
           text: """Si vous n'êtes pas protégé, diminuez la difficulté de vos manœuvres de virages sur l’aile (%BANKLEFT% and %BANKRIGHT%). %LINEBREAK% COPILOTE: tant que vous êtes arrimé, votre vaisseau porteur bénéficie de votre capacité de pilote en plus de la sienne."""
        "L3-37":
           ship: "YT-1300 (Racailles)"
           text: """Si vous n'êtes pas protégé, diminuez la difficulté de vos manœuvres de virages sur l’aile (%BANKLEFT% and %BANKRIGHT%)."""
        "Laetin A'shera":
           text: """After you defend or perform an attack, if the attack missed, gain 1 evade token. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Lando Calrissian (Scum) (Escape Craft)":
           name: "Lando Calrissian (Racailles) (Vaisseau de secours)"
           ship: "Vaisseau de secours"
           text: """Après avoir lancé des dés, si vous n’êtes pas stressé, vous pouvez gagner 1 marqueur de stress pour relancer tous vos résultats vierges. %LINEBREAK% COPILOTE: tant que vous êtes arrimé, votre vaisseau porteur bénéficie de votre capacité de pilote en plus de la sienne."""
        "Lando Calrissian":
           text: """After you fully execute a blue maneuver, you may choose a friendly ship at range 0-3. That ship may perform an action."""
        "Lando Calrissian (Scum)":
           name: "Lando Calrissian (Racailles)"
           ship: "YT-1300 (Racailles)"
           text: """Après avoir lancé des dés, si vous n’êtes pas stressé, vous pouvez gagner 1 marqueur de stress pour relancer tous vos résultats vierges."""
        "Latts Razzi":
           text: """At the start of the Engagement Phase, you may choose a ship at range 1 and spend a lock you have on that ship. If you do, that ship gains 1 tractor token."""
        '"Leebo"':
           text: """After you defend or perform an attack, if you spent a calculate token, gain 1 calculate token. %LINEBREAK% SENSOR BLINDSPOT: While you perform a primary attack at range 0-1, do not apply the range 0-1 bonus and roll 1 fewer attack die."""
        "Leevan Tenza":
           text: """After you perform a %BARRELROLL% or %BOOST% action, you may perform a red %EVADE% action."""
        "Lieutenant Blount":
           text: """While you perform a primary attack, if there is at least 1 other friendly ship at range 0-1 of the defender, you may roll 1 additional attack die."""
        "Lieutenant Karsabi":
           text: """After you gain a disarm token, if you are not stressed, you may gain 1 stress token to remove 1 disarm token."""
        "Lieutenant Kestal":
           text: """While you perform an attack, after the defender rolls defense dice, you may spend 1 focus token to cancel all of the defender's blank/%FOCUS% results."""
        "Lieutenant Sai":
           text: """After you a perform a %COORDINATE% action, if the ship you chose performed an action on your action bar, you may perform that action."""
        "Lok Revenant":
           text: """ """
        "Lothal Rebel":
           text: """TAIL GUN: While you have a docked ship, you have a primary %REARARC% weapon with an attack value equal to your docked ship's Primary %FRONTARC% attack value."""
        "Lowhhrick":
           text: """After a friendly ship at range 0-1 becomes the defender, you may spend 1 reinforce token. If you do, that ship gains 1 evade token."""
        "Luke Skywalker":
           text: """Après être devenu le défenseur (avant que les dés ne soient lancés), vous pouvez récupérer 1 %FORCE%."""
        "Maarek Stele":
           text: """Tant que vous effectuez une attaque, si une carte de dégât devrait être attribuée face visible au défenseur, piochez 3 cartes de dégât à la place, choisissez-en 1, et défaussez les autres. %LINEBREAK% Ordinateur de Visée Avancé : tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d’attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Magva Yarro":
           text: """While a friendly ship at range 0-2 defends, the attacker cannot reroll more than 1 attack die."""
        "Major Rhymer":
           text: """While you perform a %TORPEDO% or %MISSILE% attack, you may increase or decrease the range requirement by 1, to a limit of 0-3. %LINEBREAK% NIMBLE BOMBER: If you would drop a device using a %STRAIGHT% template, you may use %BANKLEFT% a or %BANKRIGHT% tempate of the same speed instead."""
        "Major Vermeil":
           text: """While you perform an attack, if the defender does not have any green tokens, you may change 1 of your  blank  or %FOCUS% results to a %HIT% result. %LINEBREAK% ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        "Major Vynder":
           text: """While you defend, if you are disarmed, roll 1 additional defense die."""
        "Manaroo":
           text: """At the start of the Engagement Phase, you may choose a friendly ship at range 0-1. If you do, transfer all green tokens assigned to you to that ship."""
        '"Mauler" Mithel':
           ship: "Chasseur TIE"
           text: """Tant que vous effectuez une attaque à portée d’attaque 1, lancez 1 dé d’attaque supplémentaire."""
        "Miranda Doni":
           text: """While you perform a primary attack, you may either spend 1 shield to roll 1 additional attack die or, if you are not shielded, you may roll 1 fewer attack die to recover 1 shield."""
        "Moralo Eval":
           text: """If you would flee, you may spend 1 %CHARGE%. If you do, place yourself in reserves instead. At the start of the next Planning Phase, place youself within range 1 of the edge of the play area that you fled from."""
        "Nashtah Pup":
           text: """You can deploy only via emergency deployment, and you have the name, initiative, pilot ability, and ship %CHARGE% of the friendly, destroyed Hound's Tooth. %LINEBREAK% ESCAPE CRAFT SETUP: Requires the HOUND'S TOOTH. You MUST begin the game docked with the HOUND'S TOOTH"""
        "N'dru Suhlak":
           text: """While you perform a primary attack, if there are no other friendly ships at range 0-2, roll 1 additional attack die."""
        '"Night Beast"':
           ship: "Chasseur TIE"
           text: """Après avoir entièrement exécuté une manœuvre bleue, vous pouvez effectuer une action %FOCUS%."""
        "Norra Wexley":
           text: """Tant que vous défendez, si un vaisseau ennemi est à portée 0–1, ajoutez 1 résultat %EVADE% à vos résultats de dés."""
        "Norra Wexley (Y-Wing)":
           text: """While you defend, if there is an enemy ship at range 0-1, you may add 1 %EVADE% result to your dice results."""
        "Nu Squadron Pilot":
           text: """ """
        "Obsidian Squadron Pilot":
           name: "Pilote de l’Escadron Obsidian"
           ship: "Chasseur TIE"
           text: """ """
        "Old Teroch":
           name: "Vieux Teroch"
           ship: "Chasseur Fang"
           text: """Au début de la phase d’engagement, vous pouvez choisir 1 vaisseau ennemi à portée 1. Dans ce cas, si vous êtes dans son , il retire tous ses marqueurs verts. %LINEBREAK% Opposition Concordia : tant que vous défendez, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% de l’attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Omicron Group Pilot":
           text: """ """
        "Onyx Squadron Ace":
           text: """FULL THROTTLE: After you FULLY execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Onyx Squadron Scout":
           text: """ """
        "Outer Rim Pioneer":
           name: "Colon de la Bordure Extérieure"
           ship: "Vaisseau de secours"
           text: """Les vaisseaux alliés à portée 0–1 peuvent effectuer des attaques en étant à portée 0 des obstacles. %LINEBREAK% COPILOTE: tant que vous êtes arrimé, votre vaisseau porteur bénéficie de votre capacité de pilote en plus de la sienne."""
        "Outer Rim Smuggler":
           text: """ """
        "Palob Godalhi":
           text: """At the start of the Engagement Phase, you may choose 1 enemy ship in your firing arc at range 0-2. If you do, transfer 1 focus or evade token from that ship to yourself."""
        "Partisan Renegade":
           text: """ """
        "Patrol Leader":
           text: """ """
        "Phoenix Squadron Pilot":
           text: """VECTORED THRUSTERS: After you perform an action, you may perform a red %BOOST% action."""
        "Planetary Sentinel":
           text: """ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        "Prince Xizor":
           text: """While you defend, after the Neutralize Results step, another friendly ship at range 0-1 and in the attack arc may suffer 1 %HIT% or %CRIT% damage. If it does, cancel 1 matching result.  %LINEBREAK% MICROTHRUSTERS: While you perform a barrel roll, you MUST use the (1 %BANKLEFT%) or (1 %BANKRIGHT%) template instead of the [1 %STRAIGHT%] template."""
        '"Pure Sabacc"':
           text: """While you perform an attack, if you have 1 or fewer damage cards, you may roll 1 additional attack die. %LINEBREAK% ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        "Quinn Jast":
           text: """At the start of the Engagement Phase, you may gain 1 disarm token to recover 1 %CHARGE% on 1 of your equipped upgrades. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Rear Admiral Chiraneau":
           text: """While you perform an attack, if you are reinforced and the defender is in the %FULLFRONTARC% or %FULLREARARC% matching your reinforce token, you may change 1 of your %FOCUS% results to a %CRIT% result."""
        "Rebel Scout":
           text: """ """
        "Red Squadron Veteran":
           name: "Vétéran de l’Escadron Rouge"
           text: """ """
        '"Redline"':
           text: """You can maintain up to 2 locks. After you perform an action, you may acquire a lock."""
        "Rexler Brath":
           text: """After you perform an attack that hits, if you are evading, expose 1 of the defender's damage cards. %LINEBREAK% FULL THROTTLE: After you FULLY execute a speed 3-5 maneuver, you may perform an %EVADE% action."""
        "Rho Squadron Pilot":
           text: """ """
        "Roark Garnet":
           text: """At the start of the Engagement Phase, you may choose 1 ship in your firing arc. If you do, it engages at initiative 7 instead of its standard initiative value this phase."""
        "Rogue Squadron Escort":
           text: """EXPERIMENTAL SCANNERS: You can acquire locks beyond range 3. You cannot acquire locks at range 1."""
        "Saber Squadron Ace":
           text: """AUTOTHRUSTERS: After you perform an action. you may perform a red %BARRELROLL% or a red %BOOST% action."""
        "Sabine Wren":
           text: """Before you activate, you may perform a %BARRELROLL% or %BOOST% action. %LINEBREAK% LOCKED AND LOADED: While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus %REARARC% attack"""
        "Sabine Wren (Scum)":
           text: """While you defend, if the attacker is in your %SINGLETURRETARC% at range 0-2, you may add 1 %FOCUS% result to your dice results."""
        "Sabine Wren (TIE Fighter)":
           text: """Before you activate, you may perform a %BARRELROLL% or %BOOST% action."""
        "Sarco Plank":
           text: """While you defend, you may treat your agility value as equal to the speed of the maneuver you executed this round. %LINEBREAK% SPACETUG TRACTOR ARRAY: ACTION: Choose a ship in your %FRONTARC% at range 1. That ship gains one tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1"""
        "Saw Gerrera":
           text: """While a damaged friendly ship at range 0-3 performs an attack, it may reroll 1 attack die."""
        "Scarif Base Pilot":
           text: """ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        "Scimitar Squadron Pilot":
           text: """NIMBLE BOMBER: If you would drop a device using a %STRAIGHT% template, you may use %BANKLEFT% a or %BANKRIGHT% template of the same speed instead."""
        '"Scourge" Skutu':
           ship: "Chasseur TIE"
           text: """Tant que vous effectuez une attaque contre un défenseur dans votre %BULLSEYEARC%, lancez 1 dé d’attaque supplémentaire."""
        "Serissu":
           text: """While a friendly ship at range 0-1 defends, it may reroll 1 of its dice. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Seventh Sister":
           text: """While you perform a primary attack, before the Neutralize Results step, you may spend 2 %FORCE% to cancel 1 %EVADE% result."""
        "Seyn Marana":
           ship: "Chasseur TIE"
           text: """Tant que vous effectuez une attaque, vous pouvez dépenser 1 résultat %CRIT%. Dans ce cas, attribuez 1 carte de dégât face cachée au défenseur, puis annuler vos résultats restants."""
        "Shadowport Hunter":
           text: """Crime syndicates augment the lethal skills of their loyal contractors with the best technology available, like the fast and formidable Lancer-class pursuit craft."""
        "Shara Bey":
           text: """While you defend or perform a primary attack, you may spend 1 lock you have on the enemy ship to add 1 %FOCUS% result to your dice results."""
        "Sienar Specialist":
           text: """ """
        "Sigma Squadron Ace":
           text: """STYGUM ARRAY: After you decloak, you may perform an %EVADE% action. At the Start of the End Phase, you may spend 1 evade token to gain one cloak token."""
        "Skull Squadron Pilot":
           name: "Pilote de l'Escadron Skull"
           ship: "Chasseur Fang"
           text: """Opposition Concordia : tant que vous défendez, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% de l’attaquant, changez 1 résultat en un résultat %EVADE%."""
        "Sol Sixxa":
           text: """If you would drop a device using a [1 %STRAIGHT%] template, you may drop it using any other speed 1 template instead."""
        "Soontir Fel":
           text: """At the start of the Engagement Phase, if there is an enemy ship in your %BULLSEYEARC%, gain 1 focus token. %LINEBREAK% AUTOTHRUSTERS: After you perform an action. you may perform a red %BARRELROLL% or a red %BOOST% action."""
        "Spice Runner":
           text: """ """
        "Storm Squadron Ace":
           name: "As de l'Escadron Storm"
           text: """Ordinateur de Visée Avancé : tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d’attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Sunny Bounder":
           text: """While you defend or perform an attack, after you roll or reroll your dice, if you have the same result on each of your dice, you may add 1 matching result. %LINEBREAK% WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Tala Squadron Pilot":
           text: """ """
        "Talonbane Cobra":
           text: """While you defend at attack range 3 or perform an attack at range 1, roll 1 additional die."""
        "Tansarii Point Veteran":
           text: """WEAPON HARDPOINT: You can equip 1 %CANNON%, %TORPEDO% or %MISSILE% upgrade."""
        "Tel Trevura":
           text: """If you would be destroyed, you may spend 1 %CHARGE%. If you do, discard all of your damage cards, suffer 5 %HIT% damage, and place yourself in reserves instead. At the start of the next planning phase, place yourself within range 1 of your player edge."""
        "Tempest Squadron Pilot":
           name: "Pilote de l’Escadron Tempest"
           text: """Ordinateur de Visée Avancé : tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d’attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Ten Numb":
           text: """While you defend or perform an attack, you may spend 1 stress token to change all of your %FOCUS% results to %EVADE% or %HIT% results."""
        "Thane Kyrell":
           text: """Tant que vous effectuez une attaque, vous pouvez dépenser 1 résultat %FOCUS%, %HIT% ou %CRIT% pour regarder les cartes de dégât face cachée du défenseur, en choisir 1 et l’exposer."""
        "Tomax Bren":
           text: """After you perform a %RELOAD% action, you may recover 1 %CHARGE% token on 1 of your equipped %TALENT% upgrade cards. %LINEBREAK% NIMBLE BOMBER: If you would drop a device using a %STRAIGHT% template, you may use %BANKLEFT% a or %BANKRIGHT% tempate of the same speed instead."""
        "Torani Kulda":
           text: """After you perform an attack, each enemy ship in your %BULLSEYEARC% suffers 1 %HIT% damage unless it removes 1 green token. %LINEBREAK% DEAD TO RIGHTS: While you perform an attack, if the defender is in your %BULLSEYEARC%, defense dice cannot be modified using green tokens."""
        "Torkil Mux":
           text: """At the start of the Engagement Phase, you may choose 1 ship in your firing arc. If you do, that ship engages at initiative 0 instead of its normal initiative value this round."""
        "Trandoshan Slaver":
           text: """ """
        "Turr Phennir":
           text: """After you perform an attack, you may perform a %BARRELROLL% or %BOOST% action, even if you are stressed. %LINEBREAK% AUTOTHRUSTERS: After you perform an action. you may perform a red %BARRELROLL% or a red %BOOST% action."""
        "Unkar Plutt":
           text: """At the start of the Engagement Phase, if there are one or more other ships at range 0, you and each other ship at range 0 gain 1 tractor token. %LINEBREAK% SPACETUG TRACTOR ARRAY: ACTION: Choose a ship in your %FRONTARC% at range 1. That ship gains one tractor token, or 2 tractor tokens if it is in your %BULLSEYEARC% at range 1"""
        "Valen Rudor":
           ship: "Chasseur TIE"
           text: """Après qu’un vaisseau allié à portée 0–1 a défendu (après la résolution des dégâts, s’il y en a), vous pouvez effectuer une action."""
        "Ved Foslo":
           text: """Tant que vous exécutez une manœuvre, vous pouvez exécuter une manœuvre de même direction et de même difficulté mais avec une vitesse supérieure ou inférieure de 1 à la place. %LINEBREAK% Ordinateur de Visée Avancé : tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d’attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Viktor Hel":
           text: """After you defend, if you did not roll exactly 2 defense dice, the attack gains 1 stress token."""
        '"Vizier"':
           text: """After you fully execute a speed 1 maneuver using your Adaptive Ailerons ship ability, you may perform a %COORDINATE% action. If you do, skip your Perform Action step. %LINEBREAK% ADAPTIVE AILERONS: Before you reveal your dial, if you are not stressed, you MUST execute a white (1 %BANKLEFT%), (1 %STRAIGHT%) or (1 %BANKRIGHT%)"""
        '"Wampa"':
           ship: "Chasseur TIE"
           text: """Tant que vous effectuez une attaque, vous pouvez dépenser 1 %CHARGE% pour lancer 1 dé d’attaque supplémentaire %LINEBREAK% Après avoir défendu, perdez 1 %CHARGE%."""
        "Warden Squadron Pilot":
           text: """ """
        "Wedge Antilles":
           text: """Tant que vous effectuez une attaque, le défenseur lance 1 dé de défense en moins."""
        '"Whisper"':
           text: """After you perform an attack that hits, gain 1 evade token. STYGUM ARRAY: After you decloak, you may perform an %EVADE% action. At the Start of the End Phase, you may spend 1 evade token to gain one cloak token."""
        "Wild Space Fringer":
           text: """SENSOR BLINDSPOT: While you perform a primary attack at range 0-1, do not apply the range 0-1 bonus and roll 1 fewer attack die."""
        "Wullffwarro":
           text: """While you perform a primary attack, if you are damaged, you may roll 1 additional attack die."""
        "Zealous Recruit":
           name: "Recrue Zélée"
           ship: "Chasseur Fang"
           text: """Opposition Concordia : tant que vous défendez, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% de l’attaquant, changez 1 résultat en un résultat %EVADE%."""
        '"Zeb" Orrelios':
           text: """While you defend, %CRIT% results are neutralized before %HIT% results. %LINEBREAK% LOCKED AND LOADED: While you are docked, after your carrier ship performs a primary %FRONTARC% or %TURRET% attack, it may perform a bonus %REARARC% attack"""
        '"Zeb" Orrelios (Sheathipede)':
           text: """While you defend, %CRIT% results are neutralized before %HIT% results. %LINEBREAK% COMMS SHUTTLE: While you are docked, your carrier ship gains %COORDINATE%. Before your carrier shpi activates, it may perform a %COORDINATE% action."""
        '"Zeb" Orrelios (TIE Fighter)':
           text: """While you defend, %CRIT% results are neutralized before %HIT% results."""
        "Zertik Strom":
           text: """Pendant la phase de dénouement, vous pouvez dépenser un marqueur de verrouillage que vous avez sur un vaisseau ennemi pour exposer 1 carte de dégât de ce dernier. %LINEBREAK% Ordinateur de Visée Avancé : tant que vous effectuez une attaque principale contre un défenseur que vous avez verrouillé, lancez 1 dé d’attaque supplémentaire et changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Zuckuss":
           text: """While you perform a primary attack, you may roll 1 additional attack die. If you do, the defender rolls 1 additional defense die."""
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
           text: """<i>Requires: Scum or Darth Vader</i> %LINEBREAK% At the start of the Engagement Phase, you may choose 1 enemy ship at range 0-1. If you do, you gain 1 calculate token unless that ship chooses to gain 1 stress token."""
        "4-LOM":
           text: """While you perform an attack, after rolling attack dice, you may name a type of green token. If you do, gain 2 ion tokens and, during this attack, the defender cannot spend tokens of the named type."""
        "Ablative Plating":
           text: """<i>Requires: Medium or Large Base</i> %LINEBREAK% Before you would suffer damage from an obstacle or from a friendly bomb detonating, you may spend 1 %CHARGE%. If you do, prevent 1 damage."""
        "Admiral Sloane":
           text: """After another friendly ship at range 0-3 defends, if it is destroyed, the attacker gains 2 stress tokens. While a friendly ship at range 0-3 performs an attack against a stressed ship, it may reroll 1 attack die."""
        "Adv. Proton Torpedoes":
           text: """Attack (%LOCK%): Spend 1 %CHARGE%. Change 1 %HIT% result to a %CRIT% result."""
        "Advanced Sensors":
           text: """After you reveal your dial, you may perform 1 action. If you do, you cannot perform another action during your activation."""
        "Advanced SLAM":
           text: """<i>Requires: %SLAM%</i> %LINEBREAK% After you perform a %SLAM% action, if you fully executed that maneuver, you may perform a white action on your action bar, treating that action as red."""
        "Afterburners":
           name: "Postcombustion"
           text: """<i>Requiert : petit vaisseau</i> %LINEBREAK% Après avoir entièrement exécuté une manœuvre à vitesse 3–5, vous pouvez dépenser 1 %CHARGE% pour effectuer une action %BOOST%, même tant que vous êtes stressé."""
        "Agent Kallus":
           text: """Setup: Assign the Hunted condition to 1 enemy ship. While you perform an attack against th eship with the Hunted condition, you may change 1 of your %FOCUS% results to a %HIT% result."""
        "Agile Gunner":
           name: "Canonnier adroit"
           text: """Pendant la phase de dénouement, vous pouvez faire pivoter votre indicateur %SINGLETURRETARC%."""
        "Andrasta":
           text: """<i>Ajoute : %RELOAD%</i> %LINEBREAK% Ajoutez un emplacement %DEVICE%."""
        "Barrage Rockets":
           text: """Attack (%FOCUS%): Spend 1 %CHARGE%. If the defender is in your %BULLSEYEARC%, you may spend 1 or more %CHARGE% to reroll that many attack dice."""
        "Baze Malbus":
           text: """While you perform a %FOCUS% action, you may treat it as red. If you do, gain 1 additional focus token for each enemy ship at range 0-1 to a maximum of 2."""
        "Bistan":
           text: """After you perform a primary attack, if you are focused, you may perform a bonus %SINGLETURRETARC% attack against a ship you have not already attacked this round."""
        "Boba Fett":
           text: """Mise en Place : débutez en réserve. %LINEBREAK% À la fin de la Mise en place, placez-vous à portée 0 d’un obstacle et au-delà de la portée 3 de tout vaisseau ennemi."""
        "Bomblet Generator":
           text: """Bomb During the System Phase, you may spend 1 %CHARGE% to drop a Bomblet with the [1 %STRAIGHT%] template. At the start of the Activation Phase, you may spend 1 shield to recover 2 %CHARGE%."""
        "Bossk":
           text: """After you perform a primary attack that misses, if you are not stressed you must receive 1 stress token to perform a bonus primary attack against the same target."""
        "BT-1":
           text: """<i>Requires: Scum or Darth Vader</i> %LINEBREAK% While you perform an attack, you may change 1 %HIT% result to a %CRIT% result for each stress token the defender has."""
        "C-3PO":
           text: """<i>Adds: %CALCULATE%</i> %LINEBREAK% Before rolling defense dice, you may spend 1 calculate token to guess aloud a number 1 or higher. If you do, and you roll exactly that many %EVADE% results, add 1 %EVADE% result. After you perform the %CALCULATE% action, gain 1 calculate token."""
        "Cad Bane":
           text: """After you drop or launch a device, you may perform a red %BOOST% action."""
        "Cassian Andor":
           text: """During the System Phase, you may choose 1 enemy ship at range 1-2 and guess aloud a bearing and speed, then look at that ship's dial. If the chosen ship's bearing and speed match your guess, you may set your dial to another maneuver."""
        "Chewbacca":
           text: """At the start of the Engagement Phase, you may spend 2 %CHARGE% to repair 1 faceup damage card."""
        "Chewbacca (Scum)":
           name: "Chewbacca (Racailles)"
           text: """Au début de la phase de dénouement, vous pouvez dépenser 1 marqueur de concentration pour réparer 1 de vos cartes de dégât face visible."""
        '"Chopper" (Astromech)':
           text: """Action: Spend 1 non-recurring %CHARGE% from another equipped upgrade to recover 1 shield. Action: Spend 2 shields to recover 1 non-recurring %CHARGE% on an equipped upgrade."""
        '"Chopper" (Crew)':
           text: """During the Perform Action step, you may perform 1 action, even while stressed. After you perform an action while stressed, suffer 1 %HIT% damage unless you expose 1 of your damage cards."""
        "Ciena Ree":
           text: """<i>Requires: %COORDINATE%</i> %LINEBREAK% After you perform a %COORDINATE% action, if the ship you coordinated performed a %BARRELROLL% or %BOOST% action, it may gain 1 stress token to rotate 90˚."""
        "Cikatro Vizago":
           text: """During the End Phase, you may choose 2 %ILLICIT% upgrades equipped to friendly ships at range 0-1. If you do, you may exchange these upgrades. End of Game: Return all %ILLICIT% upgrades to their original ships."""
        "Cloaking Device":
           text: """<i>Requires: Small or Medium Base</i> %LINEBREAK% Action: Spend 1 %CHARGE% to perform a %CLOAK% action. At the start of the Planning Phase, roll 1 attack die. On a %FOCUS% result, decloak or discard your cloak token."""
        "Cluster Missiles":
           name: "Missiles groupés"
           text: """Attaque (%LOCK%): dépensez 1 %CHARGE%. Après cette attaque, vous pouvez effectuer cette attaque en tant qu’attaque bonus contre une cible différente à portée 0–1 du défenseur, en ignorant le prérequis %LOCK%."""
        "Collision Detector":
           text: """While you boost or barrel roll, you can move through and overlap obstacles. After you move through or overlap an obstacle, you may spend 1 %CHARGE% to ignore its effects until the end of the round."""
        "Composure":
           name: "Maîtrise de soi"
           text: """<i>Requiert : %FOCUS%</i> %LINEBREAK% Après avoir échoué à une action, si vous n’avez aucun marqueur vert, vous pouvez effectuer une action %FOCUS%."""
        "Concussion Missiles":
           name: "Missiles à concussion"
           text: """Attaque (%LOCK%) : dépensez 1 %CHARGE%. Après que cette attaque a touché, chaque vaisseau à portée 0–1 du défenseur expose 1 de ses cartes de dégât."""
        "Conner Nets":
           text: """Mine During the System Phase, you may spend 1 %CHARGE% to drop a Conner Net using the [1 %STRAIGHT%] template. This card's %CHARGE% cannot be recovered."""
        "Contraband Cybernetics":
           text: """Before you activate, you may spend 1 %CHARGE%. If you do, until the end of the round, you can perform actions and execute red maneuvers, even while stressed."""
        "Crack Shot":
           name: "Tireur hors pair"
           text: """Tant que vous effectuez une attaque principale, si le défenseur est dans votre %BULLSEYEARC%, avant l’étape « Neutraliser les résultats », vous pouvez dépenser 1 %CHARGE% pour annuler 1 résultat %EVADE%."""
        "Daredevil":
           name: "Casse-cou"
           text: """<i>Requiert : Vaisseau petit, %BOOST% blanche</i> %LINEBREAK% ant que vous effectuez une action %BOOST% blanche, vous pouvez considérer qu’elle est rouge pour utiliser le gabarit [1 %TURNLEFT%] ou [1 %TURNRIGHT%] à la place."""
        "Darth Vader":
           text: """At the start of the Engagement Phase, you may choose 1 ship in your firing arc at range 0-2 and spend 1 %FORCE%. If you do, that ship suffers 1 %HIT% damage unless it chooses to remove 1 green token."""
        "Dauntless":
           text: """After you partially execute a maneuver, you may perform 1 white action, treating that action as red."""
        "Deadman's Switch":
           text: """After you are destroyed, each other ship at range 0-1 suffers 1 %HIT% damage."""
        "Death Troopers":
           text: """During the Activation Phase, enemy ships at range 0-1 cannot remove stress tokens."""
        "Debris Gambit":
           text: """<i>Requires: Small or Medium Base. Adds: <r>%EVADE%</r></i> %LINEBREAK% While you perform a red %EVADE% action, if there is an obstacle at range 0-1, treat the action as white instead."""
        "Dengar":
           text: """After you defend, if the attacker is in your firing arc, you may spend 1 %CHARGE%. If you do, roll 1 attack die unless the attacker chooses to remove 1 green token. On a %HIT% or %CRIT% result, the attacker suffers 1 %HIT% damage."""
        "Director Krennic":
           text: """<i>Adds: %LOCK%</i> %LINEBREAK% Setup: Before placing forces, assign the Optimized Prototype condition to another friendly ship."""
        "Dorsal Turret":
           text: """<i>Adds: %ROTATEARC%</i> %LINEBREAK%"""
        "Electronic Baffle":
           text: """During the End Phase, you may suffer 1 %HIT% damage to remove 1 red token."""
        "Elusive":
           name: "Insaisissable"
           text: """<i>Requiert : base petite ou moyenne</i> %LINEBREAK% Tant que vous défendez, vous pouvez dépenser 1 %CHARGE% pour relancer 1 dé de défense. %LINEBREAK% Après avoir entièrement exécuté une manœuvre rouge, récupérez 1 %CHARGE%."""
        "Emperor Palpatine":
           text: """While another friendly ship defends or performs an attack, you may spend 1 %FORCE% to modify 1 of its dice as though that ship had spent 1 %FORCE%."""
        "Engine Upgrade":
           text: """<i>Requires: <r>%BOOST%</r>. Adds: %BOOST% %LINEBREAK% This upgrade has a variable cost, worth 3, 6, or 9 points depending on if the ship base is small, medium or large respectively.</i>"""
        "Expert Handling":
           name: "As de l'espace"
           text: """<i>Requiert : <r>%BARRELROLL%</r>. Ajoute : %BARRELROLL% %LINEBREAK% Cette amélioration a un coût variable, de 2, 4, ou 6 points selon si le vaisseau a une base respectivement petite, moyenne ou grande.</i>"""
        "Ezra Bridger":
           text: """After you perform a primary attack, you may spend 1 %FORCE% to perform a bonus %SINGLETURRETARC% attack from a %SINGLETURRETARC% you have not attacked from this round. If you do and you are stressed, you may reroll 1 attack die."""
        "Fearless":
           name: "Intrépide"
           text: """Tant que vous effectuez une attaque principale %FRONTARC%, si la portée d’attaque est 1 et que vous êtes dans l’%FRONTARC% du défenseur, vous pouvez changer 1 de vos résultats en un résultat %HIT%."""
        "Feedback Array":
           text: """Before you engage, you may gain 1 ion token and 1 disarm token. If you do, each ship at range 0 suffers 1 %HIT% damage."""
        "Fifth Brother":
           text: """While you perform an attack, you may spend 1 %FORCE% to change 1 of your %FOCUS% results to a %CRIT% result."""
        "Fire-Control System":
           name: "Système de contrôle de tir"
           text: """Tant que vous effectuez une attaque, si vous avez un verrouillage sur le défenseur, vous pouvez relancer 1 dé d’attaque. Dans ce cas, vous ne pouvez pas dépenser votre marqueur de verrouillage pendant cette attaque."""
        "Freelance Slicer":
           text: """While you defend, before attack dice are rolled, you may spend a lock you have on the attacker to roll 1 attack die. If you do, the attacker gains 1 %JAM% token. Then, on a %HIT% or %CRIT% result, gain 1 %JAM% token."""
        '"Genius"':
           text: """After you fully execute a maneuver, if you have not dropped or launched a device this round, you may drop 1 bomb."""
        "Ghost":
           text: """You can dock 1 attack shuttle or Sheathipede-class shuttle. Your docked ships can deploy only from your rear guides."""
        "Grand Inquisitor":
           text: """After an enemy ship at range 0-2 reveals its dial, you may spend 1 %FORCE% to perform 1 white action on your action bar, treating that action as red."""
        "Grand Moff Tarkin":
           text: """<i>Requires: %LOCK%</i> %LINEBREAK% During the System Phase, you may spend 2 %CHARGE%. If you do, each friendly ship may acquire a lock on a ship that you have locked."""
        "Greedo":
           text: """While you perform an attack, you may spend 1 %CHARGE% to change 1 %HIT% result to a %CRIT% result. While you defend, if your %CHARGE% is active, the attacker may change 1 %HIT% result to a %CRIT% result."""
        "Han Solo":
           text: """During the Engagement Phase, at initiative 7, you may perform a %SINGLETURRETARC% attack. You cannot attack from that %SINGLETURRETARC% again this round."""
        "Han Solo (Scum)":
           name: "Han Solo (Racailles)"
           text: """Avant de vous engager, vous pouvez effectuer une action %FOCUS% rouge."""
        "Havoc":
           text: """Remove %CREW% slot. Add %SENSOR% and %ASTROMECH% slots."""
        "Heavy Laser Cannon":
           name: "Canon Laser Lourd"
           text: """Attaque : après l’étape « Modifier les dés d’attaque », changez tous les résultats %CRIT% en résultats %HIT%."""
        "Heightened Perception":
           name: "Perception renforcée"
           text: """Au début de la phase d’engagement, vous pouvez dépenser 1 %FORCE%. Dans ce cas, pendant cette phase, engagez-vous à l’initiative 7 au lieu de le faire à votre valeur d’initiative standard."""
        "Hera Syndulla":
           text: """You can execute red maneuvers even while stressed. After you fully execute a red maneuver, if you have 3 or more stress tokens, remove 1 stress token and suffer 1 %HIT% damage."""
        "Homing Missiles":
           text: """Attack (%LOCK%): Spend 1 %CHARGE%. After you declare the defender, the defender may choose to suffer 1 %HIT% damage. If it does, skip the Attack and Defense Dice steps and the attack is treated as hitting."""
        "Hotshot Gunner":
           text: """While you perform a %SINGLETURRETARC% attack, after the Modify Defense Dice step, the defender removes 1 focus or calculate token."""
        "Hound's Tooth":
           text: """1 Z-95 AF4 headhunter can dock with you."""
        "Hull Upgrade":
           name: "Coque améliorée"
           text: """Augmente la valeur de coque de 1. %LINEBREAK%<i>Cette amélioration a un coût variable, de 2, 3, 5, ou 7 points selon si l'agilité du vaisseau est respectivement de 0, 1, 2, ou 3.</i>"""
        "IG-2000":
           text: """You have the pilot ability of each other friendly ship with the IG-2000 upgrade."""
        "IG-88D":
           text: """<i>Adds: %CALCULATE%</i> %LINEBREAK% You have the pilot ability of each other friendly ship with the IG-2000 upgrade. After you perform a %CALCULATE% action, gain 1 calculate token. ADVANCED DROID BRAIN: After you perform a %CALCULATE% action, gain 1 calculate token."""
        "Inertial Dampeners":
           name: "Amortisseurs inertiels"
           text: """Avant d’exécuter une manœuvre, vous pouvez dépenser 1 bouclier. Dans ce cas, exécutez une manœuvre [0 %STOP%] blanche à la place de celle que vous avez révélée, puis gagnez 1 marqueur de stress."""
        "Informant":
           text: """Setup: After placing forces, choose 1 enemy ship and assign the Listening Device condition to it."""
        "Instinctive Aim":
           name: "Visée instinctive"
           text: """Tant que vous effectuez une attaque spéciale, vous pouvez dépenser 1 %FORCE% pour ignorer le prérequis %FOCUS% ou %LOCK%."""
        "Intimidation":
           text: """Tant qu’un vaisseau ennemi à portée 0 défend, il lance un dé de défense en moins."""
        "Ion Cannon Turret":
           name: "Tourelle à canon ioniques"
           text: """<i>Ajoute : %ROTATEARC%</i> %LINEBREAK% Attaque : si cette attaque touche, dépensez 1 résultat %HIT% ou %CRIT% pour faire subir 1 dégât %HIT% au défenseur. Tous les résultats %HIT%/%CRIT% restants infligent des marqueurs ioniques au lieu des dégâts."""
        "Ion Cannon":
           text: """Attack: If this attack hits, spend 1 %HIT% or %CRIT% result to cause the defender to suffer 1 %HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "Ion Missiles":
           text: """Attack (%LOCK%): Spend 1 %CHARGE%. If this attack hits, spend 1 %HIT% or %CRIT% result to cause the defender to suffer 1 %HIT% damage. All remaining %HIT%/%CRIT% results inflict ion tokens instead of damage."""
        "Ion Torpedoes":
           name: "Torpilles Ioniques"
           text: """Attaque (%LOCK%): dépensez 1 %CHARGE%. Si cette attaque touche, dépensez 1 résultat %HIT% ou %CRIT% pour faire subir 1 dégât %HIT% au défenseur. Tous les résultats %HIT%/%CRIT% restants infligent des marqueurs ioniques au lieu des dégâts."""
        "ISB Slicer":
           text: """During the End Phase, enemy ships at range 1-2 cannot remove jam tokens."""
        "Jabba the Hutt":
           text: """During the End Phase, you may choose 1 friendly ship at range 0-2 and spend 1 %CHARGE%. If you do, that ship recovers 1 %CHARGE% on 1 of its equipped %ILLICIT% upgrades."""
        "Jamming Beam":
           text: """Attack: If this attack hits, all %HIT%/%CRIT% results inflict jam tokens instead of damage."""
        "Juke":
           name: "Feinte"
           text: """<i>Requiert : vaisseau petit ou moyen</i> %LINEBREAK% Tant que vous effectuez une attaque, si vous avez un marqueur d’évasion, vous pouvez changer 1 des résultats %EVADE% du défenseur en un résultat %FOCUS%."""
        "Jyn Erso":
           text: """If a friendly ship at range 0-3 would gain a focus token, it may gain 1 evade token instead."""
        "Kanan Jarrus":
           text: """After a friendly ship at range 0-2 fully executes a white maneuver, you may spend 1 %FORCE% to remove 1 stress token from that ship."""
        "Ketsu Onyo":
           text: """At the start of the End Phase, you may choose 1 enemy ship at range 0-2 in your firing arc. If you do, that ship does not remove its tractor tokens."""
        "L3-37":
           text: """<b>L3-37:</b> Mise en Place : équipez-vous avec cette face visible. %LINEBREAK% Tant que vous défendez, vous pouvez retourner cette carte. Dans ce cas, l’attaquant doit relancer tous les dés d’attaque."""
        "Lando Calrissian":
           text: """Action: Roll 2 defense dice. For each %FOCUS% result, gain 1 focus token. For each %EVADE% result, gain 1 evade token. If both results are blank, the opposing player chooses focus or evade. You gain 1 token of that type."""
        "Lando Calrissian (Scum)":
           name: "Lando Calrissian (Racailles)"
           text: """Après avoir lancé des dés, vous pouvez dépenser 1 marqueur vert pour relancer jusqu’à 2 de vos résultats."""
        "Lando's Millennium Falcon":
           text: """1 Vaisseau de secours peut s’arrimer à vous. %LINEBREAK% Tant que vous avez un Vaisseau de secours arrimé, vous pouvez dépenser ses boucliers comme s’ils étaient sur votre carte de vaisseau. %LINEBREAK% Tant que vous effectuez une attaque principale contre un vaisseau stressé, lancez 1 dé d’attaque supplémentaire."""
        "Latts Razzi":
           text: """While you defend, if the attacker is stressed, you may remove 1 stress from the attacker to change 1 of your blank/%FOCUS% results to an %EVADE% result."""
        "Leia Organa":
           text: """At the start of the Activation Phase, you may spend 3 %CHARGE%. During this phase, each friendly ship reduces the difficulty of its red maneuvers."""
        "Lone Wolf":
           name: "Loup solitaire"
           text: """Tant que vous défendez ou que vous effectuez une attaque, s’il n’y a aucun autre vaisseau allié à portée 0–2, vous pouvez dépenser 1 %CHARGE% pour relancer 1 de vos dés."""
        "Luke Skywalker":
           text: """At the start of the Engagement Phase, you may spend 1 %FORCE% to rotate your %SINGLETURRETARC% indicator."""
        "Magva Yarro":
           text: """After you defend, if the attack hit, you may acquire a lock on the attacker."""
        "Marauder":
           name: "Marauder"
           text: """Tant que vous effectuez une attaque principale %REARARC%, vous pouvez relancer 1 dé d’attaque. %LINEBREAK% Ajoutez un emplacement %GUNNER%."""
        "Marksmanship":
           name: "Adresse au tir"
           text: """Tant que vous effectuez une attaque, si le défenseur est dans votre %BULLSEYEARC%, vous pouvez changer 1 résultat %HIT% en un résultat %CRIT%."""
        "Maul":
           text: """<i>Requires: Scum or Ezra Bridger</i> %LINEBREAK% After you suffer damage, you may gain 1 stress token to recover 1 %FORCE%. You can equip \"Dark Side\" upgrades."""
        "Millennium Falcon":
           text: """<i>Adds: %EVADE%</i> %LINEBREAK% While you defend, if you are evading, you may reroll 1 defense die."""
        "Minister Tua":
           text: """At the start of the Engagement Phase, if you are damaged, you may perform a red %REINFORCE% action."""
        "Mist Hunter":
           text: """<i>Adds: %BARRELROLL% </i> %LINEBREAK% Add %CANNON% slot."""
        "Moff Jerjerrod":
           text: """<i>Requires: %COORDINATE%</i> %LINEBREAK% During the System Phase, you may spend 2 %CHARGE%. If you do, choose the (1 %BANKLEFT%), (1 %STRAIGHT%), or (1 %BANKRIGHT%) template. Each friendly ship may perform a red %BOOST% action using that template."""
        "Moldy Crow":
           text: """Gain a %FRONTARC% primary weapon with a value of \"3.\" During the End Phase, do not remove up to 2 focus tokens."""
        "Munitions Failsafe":
           text: """While you perform a %TORPEDO% or %MISSILE% attack, after rolling attack dice, you may cancel all dice results to recover 1 %CHARGE% you spent as a cost for the attack."""
        "Nien Nunb":
           text: """Decrease the difficulty of your bank maneuvers [%BANKLEFT% and %BANKRIGHT%]."""
        "Novice Technician":
           text: """At the end of the round, you may roll 1 attack die to repair 1 faceup damage card. Then, on a %HIT% result, expose 1 damage card."""
        "Os-1 Arsenal Loadout":
           text: """While you have exactly 1 disarm token, you can still perform %TORPEDO% and %MISSILE% attacks against targets you have locked. If you do, you cannot spend you lock during the attack. Add %TORPEDO% and %MISSILE% slots."""
        "Outmaneuver":
           text: """Tant que vous effectuez une attaque %FRONTARC%, si vous n’êtes pas dans l’arc de tir du défenseur, il lance 1 dé de défense en moins."""
        "Outrider":
           text: """While you perform an attack that is obstructed by an obstacle, the defender rolls 1 fewer defense die. After you fully execute a maneuver, if you moved through or overlapped an obstacle, you may remove 1 of your red or orange tokens."""
        "Perceptive Copilot":
           name: "Copilote perspicace"
           text: """Après avoir effectué une action %FOCUS%, gagnez 1 marqueur de concentration."""
        "Phantom":
           text: """You can dock at range 0-1."""
        "Phantom (Sheathipede)":
           text: """You can dock at range 0-1."""
        "Pivot Wing":
           text: """<b>Closed:</b> While you defend, roll 1 fewer defense die. After you execute a [0 %STOP%] maneuver, you may rotate your ship 90˚ or 180˚. Before you activate, you may flip this card %LINEBREAK% <b>Open:</b> Before you activate, you may flip this card"""
        "Predator":
           name: "Prédateur"
           text: """Tant que vous effectuez une attaque principale, si le défenseur est dans votre %BULLSEYEARC%, vous pouvez relancer 1 dé d’attaque."""
        "Proton Bombs":
           name: "Bombe à protons"
           text: """<b>Bombe</b> %LINEBREAK% Pendant la phase de système, vous pouvez dépenser 1 %CHARGE% pour larguer une bombe à protons en utilisant le gabarit [1 %STRAIGHT%]."""
        "Proton Rockets":
           text: """Attack (%FOCUS%): Spend 1 %CHARGE%."""
        "Proton Torpedoes":
           name: "Torpilles à protons"
           text: """Attaque (%LOCK%): dépensez 1 %CHARGE%. Changez 1 résultat %HIT% en un résultat %CRIT%."""
        "Proximity Mines":
           name: "Mines de proximité"
           text: """<b>Mine</b> %LINEBREAK% Pendant la phase de système, vous pouvez dépenser 1 %CHARGE% pour larguer une mine de proximité en utilisant le gabarit [1 %STRAIGHT%]. %LINEBREAK% Les %CHARGE% de cette carte ne peuvent pas être récupérées."""
        "Punishing One":
           text: """When you perform a primary attack, if the defender is in your %FRONTARC%, roll 1 additional attack die. Remove %CREW% slot. Add %ASTROMECH% slot."""
        "Qi'ra":
           text: """Tant que vous vous déplacez et effectuez des attaques, vous ignorez les obstacles que vous verrouillez."""
        "R2 Astromech":
           name: "Astromech R2"
           text: """Après avoir révélé votre cadran, vous pouvez dépenser 1 %CHARGE% et gagner 1 marqueur de désarmement pour récupérer 1 bouclier."""
        "R2-D2":
           text: """Après avoir révélé votre cadran, vous pouvez dépenser 1 %CHARGE% et gagner 1 marqueur de désarmement pour récupérer 1 bouclier."""
        "R2-D2 (Crew)":
           text: """During the End Phase, if you are damaged and not shielded, you may roll 1 attack die to recover 1 shield. On a %HIT% result, expose 1 of your damage cards."""
        "R3 Astromech":
           name: "Astromech R3"
           text: """Vous pouvez maintenir jusqu’à 2 cibles verrouillées. Chaque verrouillage doit être sur un objet différent. %LINEBREAK% Après avoir effectué une action %LOCK%, vous pouvez verrouiller une cible."""
        "R4 Astromech":
           text: """<i>Requiert : vaisseau petit</i> %LINEBREAK% Diminuez la difficulté de vos manœuvres de base (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%) ayant une vitesse 1–2."""
        "R5 Astromech":
           name: "Astromech R5"
           text: """Action : dépensez 1 %CHARGE% pour réparer 1 carte de dégât face cachée. %LINEBREAK% Action : réparez 1 carte de dégât Vaisseau face visible."""
        "R5-D8":
           text: """Action : dépensez 1 %CHARGE% pour réparer 1 carte de dégât face cachée. %LINEBREAK% Action : réparez 1 carte de dégât Vaisseau face visible."""
        "R5-P8":
           text: """While you perform an attack against a defender in your %FRONTARC%, you may spend 1 %CHARGE% to reroll 1 attack die. If the rerolled results is a %CRIT%, suffer 1 %CRIT% damage."""
        "R5-TK":
           text: """You can perform attacks against friendly ships."""
        "Rigged Cargo Chute":
           name: "Largage de cargaison"
           text: """<i>Requiert : vaisseau moyen ou grand</i> %LINEBREAK% Action : dépensez 1 %CHARGE%. Larguez 1 cargaison égarée en utilisant le gabarit [1 %STRAIGHT%]."""
        "Ruthless":
           name: "Impitoyable"
           text: """Tant que vous effectuez une attaque, vous pouvez choisir un autre vaisseau allié à portée 0–1 du défenseur. Dans ce cas, le vaisseau choisi subit 1 dégât %HIT% et vous pouvez changer 1 de vos résultats de dé en un résultat %HIT%."""
        "Sabine Wren":
           text: """Setup: Place 1 ion, 1 jam, 1 stress, and 1 tractor token on this card. After a ship suffers the effect of a friendly bomb, you may remove 1 ion, jam, stress, or tractor token from this card. If you do, that ship gains a matching token."""
        "Saturation Salvo":
           text: """<i>Requires: %RELOAD%</i> %LINEBREAK% While you perform a %TORPEDO% or %MISSILE% attack, you may spend 1 charge from that upgrade. If you do, choose two defense dice. The defender must reroll those dice."""
        "Saw Gerrera":
           text: """While you perform an attack, you may suffer 1 %HIT% damage to change all of your %FOCUS% results to %CRIT% results."""
        "Seasoned Navigator":
           name: "Navigateur chevronné"
           text: """Après avoir révélé votre cadran de manœuvres, vous pouvez régler votre cadran sur une autre manœuvre non-rouge de même vitesse. Tant que vous exécutez cette manœuvre, augmentez sa difficulté."""
        "Seismic Charges":
           name: "Charges sismiques"
           text: """<b>Bombe</b> %LINEBREAK% Pendant la phase de système, vous pouvez dépenser 1 %CHARGE% pour larguer une charge sismique en utilisant le gabarit [1 %STRAIGHT%]."""
        "Selfless":
           name: "Altruisme"
           text: """Tant qu’un autre vaisseau allié à portée 0–1 défend, avant l’étape « Neutraliser les résultats », si vous êtes dans l’arc de l’attaque, vous pouvez subir 1 dégât %CRIT% pour annuler 1 résultat %HIT%."""
        "Sense":
           name: "Sens"
           text: """Pendant la phase de système, vous pouvez choisir 1 vaisseau à portée 0–1 et regarder son cadran. Si vous dépensez 1 %FORCE%, vous pouvez choisir un vaisseau à portée 0–3 à la place."""
        "Servomotor S-Foils":
           name: "Servomoteur S-Foils"
           text: """<b>Replié:</b> Tant que vous effectuez une attaque principale, lancez 1 dé d'attaque en moins. Avant votre activation, vous pouvez retourner cette carte. %LINEBREAK% <i>Ajoute : %BOOST%, %FOCUS% > <r>%BOOST%</r></i> %LINEBREAK% <b>Déplié:</b> Avant votre activation, vous pouvez retourner cette carte."""
        "Seventh Sister":
           text: """If an enemy ship at range 0-1 would gain a stress token, you may spend 1 %FORCE% to have it gain 1 jam or tractor token instead."""
        "Shadow Caster":
           text: """After you perform an attack that hits, if the defender is in your %SINGLETURRETARC% and your %FRONTARC%, the defender gains 1 tractor token."""
        "Shield Upgrade":
           name: "Boucliers améliorés"
           text: """Ajoute la valeur de bouclier de 1. %LINEBREAK%<i>Cette amélioration a un coût variable, de 3, 4, 6, ou 8 points selon si l'agilité du vaisseau est respectivement de 0, 1, 2, ou 3.</i>"""
        "Skilled Bombardier":
           text: """If you would drop or launch a device, you may use a template of the same bearing with a speed 1 higher or lower."""
        "Slave I":
           text: """Après avoir révélé une manœuvre de virage (%TURNLEFT% or %TURNRIGHT%) ou de virage sur l’aile (%BANKLEFT% or %BANKRIGHT%), vous pouvez régler votre cadran sur la manœuvre de même vitesse mais de direction opposée. %LINEBREAK% Ajoutez un emplacement %TORPEDO%."""
        "Squad Leader":
           name: "Chef d'escouade"
           text: """<i>Ajoute : <r>%COORDINATE%</r></i> %LINEBREAK% Tant que vous coordonnez, le vaisseau que vous avez choisi peut effectuer une action seulement si celle-ci est également dans votre barre d’action."""
        "ST-321":
           text: """After you perform a %COORDINATE% action, you may choose an enemy ship at range 0-3 of the ship you coordinated. If you do, acquire a lock on that enemy ship, ignoring range restrictions."""
        "Static Discharge Vanes":
           text: """Before you would gain 1 ion or jam token, if you are not stressed, you may choose another ship at range 0–1 and gain 1 stress token. If you do, the chosen ship gains that ion or jam token instead."""
        "Stealth Device":
           name: "Système d'occulation"
           text: """Tant que vous défendez, si votre %CHARGE% est active, lancez 1 dé de défense supplémentaire. %LINEBREAK% Après avoir subi des dégâts, perdez 1 %CHARGE%. %LINEBREAK%<i>Cette amélioration a un coût variable, de 3, 4, 6, ou 8 points selon si l'agilité du vaisseau est respectivement de 0, 1, 2, ou 3.</i>"""
        "Supernatural Reflexes":
           name: "Réflexes surnaturels"
           text: """<i>Requiert : petit vaisseau</i> %LINEBREAK% Avant votre activation, vous pouvez dépenser 1 %FORCE% pour effectuer une action %BARRELROLL% ou %BOOST%. Puis, si vous avez effectué une action qui n’est pas dans votre barre d’action, subissez 1 dégât %HIT%."""
        "Swarm Tactics":
           text: """At the start of the Engagement Phase, you may choose 1 friendly ship at range 1. If you do, that ship treats its initiative as equal to yours until the end of the round."""
        "Tactical Officer":
           text: """<i>Requires: <r>%COORDINATE%</r>. Adds: %COORDINATE%</i>"""
        "Tactical Scrambler":
           name: "Brouilleur tactique"
           text: """<i>Requiert : vaisseau moyen ou grand</i> %LINEBREAK% Tant que vous gênez l’attaque d’un vaisseau ennemi, le défenseur lance 1 dé de défense supplémentaire."""
        "Tobias Beckett":
           text: """Mise en Place : après avoir placé les forces, vous pouvez choisir 1 obstacle dans la zone de jeu. Dans ce cas, placez-le n’importe où dans la zone de jeu au-delà de la portée 2 de tout bord ou vaisseau et au-delà de la portée 1 de tout autre obstacle."""
        "Tractor Beam":
           text: """Attack: If this attack hits, all %HIT%/%CRIT% results inflict tractor tokens instead of damage."""
        "Trajectory Simulator":
           text: """During the System Phase, if you would drop or launch a bomb, you may launch it using the (5 %STRAIGHT%) tempplate instead."""
        "Trick Shot":
           text: """While you perform an attack that is obstructed by an obstacle, roll 1 additional attack die."""
        "Unkar Plutt":
           text: """After you partially excute a maneuver, you may suffer 1 %HIT% damage to perform 1 white action."""
        "Veteran Tail Gunner":
           name: "Artilleur de poupe vétéran"
           text: """<i>Requiert : %REARARC%</i> %LINEBREAK% Après avoir effectué une attaque principale %FRONTARC%, vous pouvez effectuer une attaque principale %REARARC% bonus."""
        "Veteran Turret Gunner":
           name: "Artilleur de tourelle vétéran"
           text: """<i>Requiert : %ROTATEARC%</i> %LINEBREAK% Après avoir effectué une attaque principale, vous pouvez effectuer une attaque bonus %SINGLETURRETARC% en utilisant une %SINGLETURRETARC% que vous n’avez pas déjà utilisée pour attaquer à ce round."""
        "Virago":
           text: """During the End Phase, you may spend 1 %CHARGE% to perform a red %BOOST% action. Add %MODIFICATION% slot."""
        "Xg-1 Assault Configuration":
           text: """While you have exactly 1 disarm token, you can still perform %CANNON% attacks. While you perform a %CANNON% attack while disarmed, roll a maximum of 3 attack dice. Add %CANNON% slot."""
        '"Zeb" Orrelios':
           text: """You can perform primary attacks at range 0. Enemy ships at range 0 can perform primary attacks against you."""
        "Zuckuss":
           text: """While you perform an attack, if you are not stressed, you may choose 1 defense die and gain 1 stress token. If you do, the defender must reroll that die."""
        'GNK "Gonk" Droid':
           text: """Setup: Lose 1 %CHARGE%. Action: Recover 1 %CHARGE%. Action: Spend 1 %CHARGE% to recover 1 shield."""
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
           text: '''(Bombe) - At the end of the Activation Phase, this device detonates. When this device detonates, each ship at range 0–1 suffers 1 %CRIT% damage.'''
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
            
    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, condition_translations, modification_translations, title_translations
