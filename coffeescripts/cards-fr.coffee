exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.fr = 'Français'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations['Français'] =
    action :
        "Barrel Roll": "Tonneau"
        "Boost": "Accélération"
        "Evade": "Évasion"
        "Focus": "Concentration"
        "Target Lock": "Acquisition de cible"
        "Recover": "Récupération"
        "Reinforce": "Renforcement"
        "Jam": "Brouillage"
        "Coordinate": "Coordination"
        "Cloak": "Occultation"
    slot:
        "Astromech": "Astromech"
        "Bomb": "Bombe"
        "Cannon": "Cannon"
        "Crew": "Équipage"
        "Elite": "Trait de pilote"
        "Missile": "Missile"
        "System": "Système"
        "Torpedo": "Torpille"
        "Turret": "Tourelle"
        "Cargo": "Soute"
        "Hardpoint": "Point d'Attache"
        "Team": "Équipe"
        "Illicit": "Illégal"
        "Salvaged Astromech": "Astromech Récupéré"
        "Tech": "Tech"
    sources: # needed?
        "Core": "Boite de base"
        "A-Wing Expansion Pack": "Paquet d'extension A-Wing"
        "B-Wing Expansion Pack": "Paquet d'extension B-Wing"
        "X-Wing Expansion Pack": "Paquet d'extension X-Wing"
        "Y-Wing Expansion Pack": "Paquet d'extension Y-Wing"
        "Millennium Falcon Expansion Pack": "Paquet d'extension Faucon Millennium"
        "HWK-290 Expansion Pack": "Paquet d'extension HWK-290"
        "TIE Fighter Expansion Pack": "Paquet d'extension Chasseur TIE"
        "TIE Interceptor Expansion Pack": "Paquet d'extension Intercepteur TIE"
        "TIE Bomber Expansion Pack": "Paquet d'extension Bombardier TIE"
        "TIE Advanced Expansion Pack": "Paquet d'extension TIE Advanced"
        "Lambda-Class Shuttle Expansion Pack": "Paquet d'extension Navette de classe Lambda"
        "Slave I Expansion Pack": "Paquet d'extension Slave I"
        "Imperial Aces Expansion Pack": "Paquet d'extension As Impériaux"
        "Rebel Transport Expansion Pack": "Paquet d'extension Transport Rebelle"
        "Z-95 Headhunter Expansion Pack": "Paquet d'extension Chasseur de têtes Z-95"
        "TIE Defender Expansion Pack": "Paquet d'extension Défenseur TIE"
        "E-Wing Expansion Pack": "Paquet d'extension E-Wing"
        "TIE Phantom Expansion Pack": "Paquet d'extension TIE Fantôme"
        "Tantive IV Expansion Pack": "Paquet d'extension Tantive IV"
        "Rebel Aces Expansion Pack": "Paquet d'extension As Rebelles"
        "YT-2400 Freighter Expansion Pack": "Paquet d'extension Cargo YT-2400"
        "VT-49 Decimator Expansion Pack": "Paquet d'extension Décimateur VT-49"
        "StarViper Expansion Pack": "Paquet d'extension StarViper"
        "M3-A Interceptor Expansion Pack": "Paquet d'extension Intercepteur M3-A"
        "IG-2000 Expansion Pack": "Paquet d'extension IG-2000"
        "Most Wanted Expansion Pack": "Paquet d'extension Ennemis Publics"
        "Imperial Raider Expansion Pack": "Imperial Raider Expansion Pack"
        "The Force Awakens Core Set": "The Force Awakens Core Set"
    ui:
        shipSelectorPlaceholder: "Choisissez un vaisseau"
        pilotSelectorPlaceholder: "Choisissez un pilote"
        upgradePlaceholder: (translator, language, slot) ->
            "#{translator language, 'slot', slot}"
        modificationPlaceholder: "Modification"
        titlePlaceholder: "Titre"
        upgradeHeader: (translator, language, slot) ->
            "Amélioration #{translator language, 'slot', slot}"
        unreleased: "inédit"
        epic: "épique"
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
        # Card browser
        '.xwing-card-browser .translate.sort-cards-by': 'Trier les cartes par'
        '.xwing-card-browser option[value="name"]': 'Nom'
        '.xwing-card-browser option[value="source"]': 'Source'
        '.xwing-card-browser option[value="type-by-points"]': 'Type (par Points)'
        '.xwing-card-browser option[value="type-by-name"]': 'Type (par Nom)'
        '.xwing-card-browser .translate.select-a-card': 'Sélectionnez une carte depuis la liste sur la gauche.'
        '.xwing-card-browser .info-range td': 'Portée'
        # Info well
        '.info-well .info-ship td.info-header': 'Vaisseau'
        '.info-well .info-skill td.info-header': 'Valeur de pilotage'
        '.info-well .info-actions td.info-header': 'Actions'
        '.info-well .info-upgrades td.info-header': 'Améliorations'
        '.info-well .info-range td.info-header': 'Portée'
        # Squadron edit buttons
        '.clear-squad' : 'Nouvel escadron'
        '.save-list' : 'Enregistrer'
        '.save-list-as' : 'Enregistrer sous…'
        '.delete-list' : 'Supprimer'
        '.backend-list-my-squads' : 'Charger un escadron'
        '.view-as-text' : '<span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Imprimer/Afficher commme </span>Texte'
        '.randomize' : 'Aléatoire'
        '.randomize-options' : 'Options…'
        '.notes-container > span' : 'Squad Notes'
        # Print/View modal
        '.bbcode-list' : 'Copiez le BBCode ci-dessous et collez-le dans votre post.<textarea></textarea><button class="btn btn-copy">Copiez</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Copiez</button>'
        '.vertical-space-checkbox' : """Ajouter de l'espace pour les cartes d'amélioration et de dégâts lors de l'impression <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Imprimer en couleur <input type="checkbox" class="toggle-color-print" />"""
        '.print-list' : '<i class="fa fa-print"></i>&nbsp;Imprimer'
        # Randomizer options
        '.do-randomize' : 'Générer'
        # Top tab bar
        '#empireTab' : 'Empire Galactique'
        '#rebelTab' : 'Alliance Rebelle'
        '#scumTab' : 'Racailles & Scélérats'
        '#browserTab' : 'Navigateur de cartes'
        '#aboutTab' : 'À propos'

    singular:
        'pilots': 'Pilote'
        'modifications': 'Modification'
        'titles': 'Titre'
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

    # Rename ships
    exportObj.renameShip 'TIE Fighter', 'Chasseur TIE'
    exportObj.renameShip 'TIE Interceptor', 'Intercepteur TIE'
    exportObj.renameShip 'TIE Defender', 'Défenseur TIE'
    exportObj.renameShip 'TIE Phantom', 'TIE Fantôme'
    exportObj.renameShip 'TIE Bomber', 'Bombardier TIE'
    exportObj.renameShip 'Lambda-Class Shuttle', 'Navette de classe Lambda'
    exportObj.renameShip 'VT-49 Decimator', 'Décimateur VT-49'
    exportObj.renameShip 'Z-95 Headhunter', 'Chasseur de têtes Z-95'
    exportObj.renameShip 'CR90 Corvette (Aft)', 'Corvette CR90 (poupe)'
    exportObj.renameShip 'CR90 Corvette (Fore)', 'Corvette CR90 (proue)'
    exportObj.renameShip 'GR-75 Medium Transport', 'Transport moyen GR-75'
    exportObj.renameShip 'M3-A Interceptor', 'Intercepteur M3-A'

    # Names don't need updating, but text needs to be set
    pilot_translations =
        # Empire
        # Chasseur TIE
        "Academy Pilot":
            ship: "Chasseur TIE"
            name: "Pilote de l'académie"
        "Obsidian Squadron Pilot":
            ship: "Chasseur TIE"
            name: "Pilote de l'escadron Obsidian"
        "Black Squadron Pilot":
            ship: "Chasseur TIE"
            name: "Pilote de l'escadron Noir"
        '"Winged Gundark"':
            ship: "Chasseur TIE"
            text: """Quand vous attaquez à portée 1, vous pouvez échanger 1 de vos résultats %HIT% contre 1 résultat %CRIT% ."""
        '"Night Beast"':
            ship: "Chasseur TIE"
            text: """Après avoir exécuté une manœuvre verte, vous pouvez effectuer une action de concentration gratuite."""
        '"Backstabber"':
            ship: "Chasseur TIE"
            text: """Quand vous attaquez en dehors de l'arc de tir du défenseur, lancez 1 dé d'attaque supplémentaire."""
        '"Dark Curse"':
            ship: "Chasseur TIE"
            text: """Quand vous défendez, les vaisseaux qui vous attaquent ne peuvent ni utiliser de marqueurs de concentration, ni relancer les dés d'attaque."""
        '"Mauler Mithel"':
            ship: "Chasseur TIE"
            text: """Quand vous attaquez à portée 1, lancez 1 dé d'attaque supplémentaire."""
        '"Howlrunner"':
            ship: "Chasseur TIE"
            text: """Quand un autre vaisseau allié situé à portée 1 attaque avec son arme principale, il peut relancer 1 dé d'attaque."""
        # Intercepteur TIE
        "Alpha Squadron Pilot":
            name: "Pilote de l'escadron Alpha"
            ship: "Intercepteur TIE"
        "Avenger Squadron Pilot":
            name: "Pilote de l'escadron Avenger"
            ship: "Intercepteur TIE"
        "Saber Squadron Pilot":
            name: "Pilote de l'escadron Sabre"
            ship: "Intercepteur TIE"
        "Royal Guard Pilot":
            name: "Pilote de la Garde royale"
            ship: "Intercepteur TIE"
        "\"Fel's Wrath\"":
            name: "\"Colère de Fel\""
            ship: "Intercepteur TIE"
            text: """Quand le nombre de cartes de dégâts qui vous est assigné est supérieur ou égal à votre valeur de coque, vous n'êtes pas détruit avant la fin de la phase de combat."""
        "Lieutenant Lorrir":
            ship: "Intercepteur TIE"
            text: """Quand vous effectuez une action de tonneau, vous pouvez recevoir 1 marqueur de stress pour utiliser le gabarit (%BANKLEFT% 1) ou (%BANKRIGHT% 1) à la place du gabarit (%STRAIGHT% 1)."""
        "Kir Kanos":
            ship: "Intercepteur TIE"
            text: """Quand vous attaquez à portée 2-3, vous pouvez dépenser 1 marqueur d'évasion pour ajouter 1 résultat %HIT% à votre jet."""
        "Tetran Cowall":
            ship: "Intercepteur TIE"
            text: """Quand vous révélez une manœuvre %UTURN%, vous pouvez considérer la vitesse de celle-ci comme "1", "3" ou "5"."""
        "Turr Phennir":
            ship: "Intercepteur TIE"
            text: """Après avoir effectué une attaque, vous pouvez effectuer une action gratuite d'accélération ou de tonneau."""
        "Carnor Jax":
            ship: "Intercepteur TIE"
            text: """Les vaisseaux ennemis situés à portée 1 ne peuvent pas effectuer d'actions de concentration ou d'évasion, et ne peuvent pas dépenser de marqueur de concentration ou d'évasion."""
        "Soontir Fel":
            ship: "Intercepteur TIE"
            text: """Quand vous recevez un marqueur de stress, vous pouvez assigner 1 marqueur de concentration à votre vaisseau."""
        # TIE Fantôme
        "Sigma Squadron Pilot":
            ship: "TIE Fantôme"
            name: "Pilote l'escadron Sigma"
        "Shadow Squadron Pilot":
            ship: "TIE Fantôme"
            name: "Pilote l'escadron Ombre"
        '"Echo"':
            ship: "TIE Fantôme"
            text: """Quand vous vous désoccultez, vous devez utiliser le gabarit (%BANKLEFT% 2) ou (%BANKRIGHT% 2) à la place du gabarit (%STRAIGHT% 2)."""
        '"Whisper"':
            ship: "TIE Fantôme"
            text: """Après avoir effectué une attaque qui touche, vous pouvez assigner un marqueur de concentration à votre vaisseau."""
        # Défenseur TIE
        "Onyx Squadron Pilot":
            ship: "Défenseur TIE"
            name: "Pilote l'escadron Onyx"
        "Delta Squadron Pilot":
            ship: "Défenseur TIE"
            name: "Pilote l'escadron Delta"
        "Colonel Vessery":
            ship: "Défenseur TIE"
            text: """Quand vous attaquez, juste après avoir lancé les dés d'attaque, vous pouvez verrouiller le défenseur s'il a déjà un marqueur d'acquisition de cible rouge."""
        "Rexler Brath":
            ship: "Défenseur TIE"
            text: """Après avoir effectué une attaque qui inflige au moins 1 carte de dégâts au défenseur, vous pouvez dépenser 1 marqueur de concentration pour retourner ces cartes face visible."""
        # Bombardier TIE
        "Scimitar Squadron Pilot":
            ship: "Bombardier TIE"
            name: "Pilote l'escadron Cimeterre"
        "Gamma Squadron Pilot":
            ship: "Bombardier TIE"
            name: "Pilote l'escadron Gamma"
        "Captain Jonus":
            ship: "Bombardier TIE"
            name: "Capitaine Jonus"
            text: "Quand un autre vaisseau allié situé à portée 1 attaque avec une arme secondaire, il peut relancer jusqu'à 2 dés d'attaque."
        "Major Rhymer":
            ship: "Bombardier TIE"
            text: "Quand vous attaquez avec une arme secondaire, vous pouvez augmenter ou réduire de 1 la portée de l'arme dans une limite de portée 1-3."
        # TIE Advanced
        "Tempest Squadron Pilot":
            name: "Pilote l'escadron Tempest"
        "Storm Squadron Pilot":
            name: "Pilote l'escadron Storm"
        "Maarek Stele":
            text: """Si votre attaque se solde par une carte de dégâts face visible pour le défenseur, piochez 3 cartes de dégâts, choisissez-en une que vous lui infligez et défaussez les autres."""
        "Darth Vader":
            name: "Dark Vador"
            text: """Vous pouvez effectuer 2 actions lors de l'étape "Effectuer une action"."""
        "Commander Alozen": # Traduit de l'anglais
            text: """Au début de la phase de combat, vous pouvez verrouiller un vaisseu ennemi situé à portée 1."""
        # Firespray
        "Bounty Hunter":
            name:"Chasseur de primes"
        "Kath Scarlet":
            text: """Quand vous attaquez, le défenseur reçoit 1 marqueur de stress s'il annule au moins 1 résultat %CRIT% ."""
        "Boba Fett":
            text: """Quand vous révélez une manœuvre de virage sur l'aile (%BANKLEFT% ou %BANKRIGHT%), vous pouvez tourner votre cadran sur la manœuvre de virage sur l'aile opposée, à la même vitesse."""
        "Krassis Trelix":
            text: """Quand vous attaquez avec une arme secondaire, vous pouvez relancer 1 dé d'attaque."""
        # Navette de classe Lambda
        "Captain Kagi":
            ship: "Navette de classe Lambda"
            name: "Capitaine Kagi"
            text: """Quand un vaisseau ennemi verrouille une cible, il doit verrouiller votre vaisseau, si possible."""
        "Colonel Jendon":
            ship: "Navette de classe Lambda"
            text: """Au début de la phase de combat, vous pouvez assigner 1 de vos marqueurs d'acquisition de cible bleus à un vaisseau allié situé à portée 1 s'il n'a pas de marqueur d'acquisition de cible bleu."""
        "Captain Yorr":
            ship: "Navette de classe Lambda"
            name: "Capitaine Yorr"
            text: """Quand un autre vaisseau allié situé à portée 1-2 est censé recevoir un marqueur de stress, vous pouvez le recevoir à sa place si vous n'avez pas déjà plus de 2 marqueurs de stress."""
        "Omicron Group Pilot":
            ship: "Navette de classe Lambda"
            name:"Pilote du groupe Omicron"
        # Décimateur VT-49
        "Captain Oicunn":
            ship: "Décimateur VT-49"
            name: "Capitaine Oicunn"
            text: """Après avoir exécuté une manœuvre, chaque vaisseau ennemi avec lequel vous êtes au contact subit 1 dégât."""
        "Rear Admiral Chiraneau":
            ship: "Décimateur VT-49"
            name: "Contre-Amiral Chiraneau"
            text: """Quand vous attaquez à portée 1-2, vous pouvez changer 1 de vos résultats %FOCUS% en résultat %CRIT% ."""
        "Patrol Leader":
            ship: "Décimateur VT-49"
            name: "Chef de Patrouille"
        "Commander Kenkirk":
            ship: "Décimateur VT-49"
            name: "Commandant Kenkirk"
            text: """Si vous n'avez pas de boucliers et qu'au moins 1 carte dégâts vous est assignée, augmentez de 1 votre valeur d'agilité."""
        "Juno Eclipse":
            text: """When you reveal your maneuver, you may increase or decrease its speed by 1 (to a minimum of 1)."""
        "Zertik Strom":
            text: """Enemy ships at Range 1 cannot add their range combat bonus when attacking."""
        "Lieutenant Colzet":
            text: """At the start of the End phase, you may spend a target lock you have on an enemy ship to flip 1 random facedown Damage card assigned to it faceup."""

        # Rebels
        # X-Wing
        "Red Squadron Pilot":
            name: "Pilote de l'escadron Rouge"
        "Rookie Pilot":
            name: "Pilote débutant"
        "Wedge Antilles":
            text: """Quand vous attaquez, réduisez la valeur d'agilité du défenseur de 1 (jusqu'à un minimum de 0)."""
        "Garven Dreis":
            text: """Après avoir utilisé un marqueur de concentration, vous pouvez placer ce dernier sur tout autre vaisseau allié situé à portée 1 ou 2 (plutôt que de le défausser)."""
        "Biggs Darklighter":
            text: """Les autres vaisseaux alliés situés à portée 1 ne peuvent être les cibles d'attaques si l'assaillant est en mesure de vous attaquer à la place."""
        "Luke Skywalker":
            text: """Quand vous défendez, vous pouvez échanger 1 de vos résultats %FOCUS% contre un résultat %EVADE% ."""
        "Wes Janson":
            text: """Après avoir effectué une attaque, vous pouvez retirer 1 marqueur de concentration, d'évasion ou d'acquisition de cible bleu au défenseur."""
        "Jek Porkins":
            text: """Quand vous recevez un marqueur de stress, vous pouvez le retirer et lancer 1 dé d'attaque. Sur un résultat %HIT%, infligez 1 carte de dégâts face cachée à ce vaisseau."""
        '"Hobbie" Klivian':
            text: """Quand vous effectuez ou dépensez une acquisition de cible, vous pouvez retirer 1 marqueur de stress de votre vaisseau."""
        "Tarn Mison":
            text: """Quand un vaisseau ennemi vous déclare comme cible d'une attaque, vous pouvez le verrouiller."""
        # Y-Wing
        "Gold Squadron Pilot":
            name: "Pilote de l'escadron Or"
        "Gray Squadron Pilot":
            name: "Pilote de l'escadron Gris"
        '"Dutch" Vander':
            text: """Après avoir verrouillé une cible, choisissez un vaisseau allié situé à portée 1 ou 2. Cet autre vaisseau peut aussitôt verrouiller une cible."""
        "Horton Salm":
            text: """Quand vous attaquez à portée 2 ou 3, vous pouvez relancer vos résultats vierges."""
        # A-Wing
        "Green Squadron Pilot":
            name: "Pilote de l'escadron Vert"
        "Prototype Pilot":
            name: "Pilote sur prototype"
        "Tycho Celchu":
            text: """Vous pouvez effectuer des actions même quand vous avez des marqueurs de stress."""
        "Arvel Crynyd":
            text: """Vous pouvez attaquer un vaisseau situé dans votre arc de tir, même si vos socles se touchent."""
        # YT-1300
        "Outer Rim Smuggler":
            name: "Contrebandier de la Bordure extérieure"
        "Chewbacca":
            text: """Quand vous recevez une carte de dégâts face visible, retournez-là aussitôt face cachée (sans résoudre sa capacité)."""
        "Lando Calrissian":
            text: """Après avoir exécuté une manœuvre verte, choisissez un autre vaisseau allié situé à portée 1. Ce vaisseau peut effectuer 1 action gratuite figurant dans sa barre d'action."""
        "Han Solo":
            text: """Quand vous attaquez, vous pouvez relancer tous vos dés. Si vous décidez de le faire, vous devez relancer autant de vos dés que possible."""
        # B-Wing
        "Dagger Squadron Pilot":
            name: "Pilote de l'escadron Dague"
        "Blue Squadron Pilot":
            name: "Pilote de l'escadron Bleu"
        "Ten Numb":
            text: """Quand vous attaquez ,1 de vos résultats %CRIT% ne peut pas être annulé par les dés de défense."""
        "Ibtisam":
            text: """Quand vous attaquez ou défendez, si vous avez au moins 1 marqueur de stress, vous pouvez relancer un de vos dés."""
        # HWK-290
        "Rebel Operative":
            name: "Agent rebelle"
        "Roark Garnet":
            text: '''Au début de la phase de combat, choisissez 1 autre vaisseau allié situé à portée 1-3. Jusqu'à la fin de la phase, considérez que la valeur de pilotage de ce vaisseau est égale à 12.'''
        "Kyle Katarn":
            text: """Au début de la phase de combat, vous pouvez assigner 1 de vos marqueurs de concentration à un autre vaisseau allié situé à portée 1-3."""
        "Jan Ors":
            text: """Quand un autre vaisseau allié situé à portée 1-3 attaque, si vous n'avez aucun marqueur de stress, vous pouvez recevoir 1 marqueur de stress pour permettre à ce vaisseau de lancer 1 dé d'attaque supplémentaire."""
        # Z-95
        "Bandit Squadron Pilot":
            name: "Pilote de l'escadron Bandit"
            ship: "Chasseur de têtes Z-95"
        "Tala Squadron Pilot":
            name: "Pilote de l'escadron Tala"
            ship: "Chasseur de têtes Z-95"
        "Lieutenant Blount":
            ship: "Chasseur de têtes Z-95"
            text: "Quand vous attaquez, le défenseur est touché par votre attaque, même s'il ne subit pas de dégâts."
        "Airen Cracken":
            ship: "Chasseur de têtes Z-95"
            text: """Après avoir effectué une attaque, vous pouvez choisir un autre vaisseau allié situé à portée 1. Ce vaisseau peut effectuer une action gratuite."""
        # E-Wing
        "Knave Squadron Pilot":
            name: "Pilote de l'escadron Valet"
        "Blackmoon Squadron Pilot":
            name: "Pilote de l'escadron Lune noire"
        "Etahn A'baht":
            text: """Quand un vaisseau ennemi située dans votre arc de tir et à portée 1-3 se défend, l'attaquant peut changer 1 des ses résultats %HIT% en résultat %CRIT% ."""
        "Corran Horn":
            text: """Au début de la phase de dénouement, vous pouvez effectuer une attaque. Vous ne pouvez pas attaquer au tour suivant."""
        # As Rebelles
        "Jake Farrell":
            text: """Après avoir effectué une action de concentration ou reçu un marqueur de concentration, vous pouvez effectuer une action gratuite d'accélération ou de tonneau."""
        "Gemmer Sojan":
            text: """Tant que vous êtes à portée 1 d'au moins 1 vaisseau ennemi, augmentez de 1 votre valeur d'agilité."""
        "Keyan Farlander":
            text: """Quand vous attaquez, vous pouvez retirer 1 marqueur de stress pour changer tous vos résultats %FOCUS% en résultats %HIT% ."""
        "Nera Dantels":
            text: """Vous pouvez effectuer des attaques d'arme secondaire %TORPEDO% contre des vaisseaux ennemis situés en dehors de votre arc de tir."""
        # Transport Rebelle
        "GR-75 Medium Transport":
            name: "Transport moyen GR-75"
            ship: "Transport moyen GR-75"
        # CR90
        "CR90 Corvette (Fore)":
            ship: "Corvette CR90 (proue)"
            name: "Corvette CR90 (proue)"
            text: """Quand vous attaquez avec votre arme principale, vous pouvez dépenser 1 énergie pour lancer 1 dé d'attaque supplémentaire."""
        "CR90 Corvette (Aft)":
            ship: "Corvette CR90 (poupe)"
            name: "Corvette CR90 (poupe)"
        # YT-2400
        "Dash Rendar":
            text: """Vous pouvez ignorer les obstacles durant la phase d'activation et quand vous effectuez des actions."""
        '"Leebo"':
            text: """Quand vous recevez une carte de dégâts face visible, piochez 1 carte de dégâts additionnelle ; choisissez-en 1 que vous résolvez et défaussez l'autre."""
        "Eaden Vrill":
            text: """Quand vous effectuez une attaque d'arme principale contre un vaisseau sous l'effet du stress, lancez 1 dé d'attaque additionnel."""
        "Wild Space Fringer":
            name: "Frontalier de l'espace sauvage"

        # Scum and Villainy
        # Starviper
        "Prince Xizor":
            text: """Quand vous défendez, un vaisseau allié à portée 1 peut subir 1 dégât %HIT% ou %CRIT% restant à votre place."""
        "Guri":
            text: """Au début de la phase de combat, si vous êtes à portée 1 d'un vaisseau ennemi, vous pouvez assigner 1 marqueur de concentration à votre vaisseau."""
        "Black Sun Vigo":
            name: "Vigo du Soleil Noir"
        "Black Sun Enforcer":
            name: "Homme de main du Soleil Noir"
        # Intercepteur M3-A
        "Cartel Spacer":
            name: "Astropilote du Cartel"
            ship: "Intercepteur M3-A"
        "Tansarii Point Veteran":
            name: "Vétéran de Tansarii Point"
            ship: "Intercepteur M3-A"
        "Serissu":
            ship: "Intercepteur M3-A"
            text: """Quand un autre vaisseau allié à portée 1 défend, it peut relancer 1 dé de défense."""
        "Laetin A'shera":
            ship: "Intercepteur M3-A"
            text: "Après avoir défendu contre une attaque, si cette dernière ne vous a pas touché, vous pouvez assigner 1 marqueur d'évasion à votre vaisseau."
        # Agressor
        "IG-88A":
            text: """Après avoir effectué une attaque qui détruit le défenseur, vous pouvez récupérer 1 bouclier."""
        "IG-88B":
            text: """Une fois par tour, après avoir effectué une attaque qui ne touche pas, vous pouvez effectuer une attaque avec une arme secondaire %CANON% équipée."""
        "IG-88C":
            text: """Après avoir effectué une action d'accélération, vous pouvez effectuer une action d'évasion gratuite."""
        "IG-88D":
            text: """Vous pouvez exécuter la manœuvre (%SLOOPLEFT% 3) ou (%SLOOPRIGHT% 3) en utilisant le gabarit (%TURNLEFT% 3) ou (%TURNRIGHT% 3) correspondant."""
        # Firespray
        "Boba Fett (Scum)":
            name: """Boba Fett (Racailles)"""
            text: """Quand vous attaquez ou défendez, vous pouvez relancer 1 de vos dés pour chaque vaisseau ennemi à portée 1."""
        "Kath Scarlet (Scum)":
            name: """Kath Scarlet (Racailles)"""
            text: """Quand vous attaquez un vaisseau dans votre arc de tir auxiliaire, lancez 1 dé d'attaque supplémentaire."""
        "Emon Azzameen":
            text: """Quand vous larguez une bombe, vous pouvez utiliser le gabarit [%TURNLEFT% 3], [%STRAIGHT% 3], ou [%TURNRIGHT% 3] au lieu du gabarit [%STRAIGHT% 1]."""
        "Mandalorian Mercenary":
            name: "Mercenaire mandalorien"
        # Y-Wing
        "Kavil":
            text: """Quand vous attaquez un vaisseau en dehors de votre arc de tir, lancez 1 dé d'attaque supplémentaire."""
        "Drea Renthal":
            text: """Après avoir dépensé une acquisition de cible, vous pouvez recevoir 1 marqueur de stress pour verrouiller une cible."""
        "Hired Gun" :
            name: "Soudard"
        "Syndicate Thug":
            name: "Malfrat"
        # HWK
        "Dace Bonearm":
            text: """Quand un vaisseau ennemi situé à portée 1-3 reçoit au moins 1 marqueur ionique, si vous n'êtes pas déjà sous l'effet du stress, vous pouvez recevoir 1 marqueur de stress pour que ce vaisseau subisse 1 dégât."""
        "Palob Godalhi":
            text: """Au début de la phase de combat, vous pouvez enlever 1 marqueur de concentration ou d'évasion d'un vaisseau ennemi situé à portée 1-2 et vous l'assigner."""
        "Torkil Mux":
            text: """À la fin de la phase d'activation, choisissez 1 vaisseau ennemi situé à portée 1-2. Jusqu'à la fin de la phase de combat, considérez la valeur de pilotage de ce vaisseau égale "0"."""
        "Spice Runner":
            name: "Trafiquant d'épice"
        # Z-95
        "Black Sun Soldier":
            name: "Soldat du Soleil Noir"
            ship: "Chasseur de têtes Z-95"
        "Binayre Pirate":
            name: "Pirate Binayre"
            ship: "Chasseur de têtes Z-95"
        "N'Dru Suhlak":
            ship: "Chasseur de têtes Z-95"
            text: """Quand vous attaquez, s'il n'y a pas d'autres vaisseaux alliés à portée 1-2, lancez 1 dé d'attaque supplémentaire."""
        "Kaa'to Leeachos":
            ship: "Chasseur de têtes Z-95"
            text: """Au début de la phase de combat, vous pouvez enlever 1 marqueur de concentration ou d'évasion d'un autre vaisseau allié situé à portée 1-2 et vous l'assigner."""
        "Latts Razzi":
            text: """Quand un vaisseau allié déclare une attaque, vous pouvez utiliser une acquisition de cible que vous avez sur le défenseur pour réduire de 1 son agilité pour cette attaque."""
        "Graz the Hunter":
            text: """Quand vous défendez, si l'attaquant se situe dans votre arc de tir, lancez 1 dé de défense supplémentaire."""
            name: "Graz le chasseur"
        "Esege Tuketu":
            text: """Quand un autre vaisseau allié situé à portée 1-2 attaque, il peut traiter vos marqueurs de concentration comme s'ils lui appartenaient."""
        '"Redline"':
            text: """Vous pouvez maintenir 2 acquisitions de cible sur le même vaisseau. Quand vous verrouillez une cible, vous pouvez verrouiller une seconde fois."""
        '"Deathrain"':
            text: """Quand vous larguez une bombe, vous pouvez utiliser les glissières avant de votre vaisseau. Après avoir largué une bombe, vous pouvez effectuer une action de tonneau gratuite."""
        "Moralo Eval":
            text: """Vous pouvez effectuer des attaques d'arme secondaire %CANNON%  contre des vaisseaux situés dans votre arc de tir auxiliaire."""
        'Gozanti-class Cruiser':
            text: """Après avoir exécuté une manoeuvre, vous pouvez déployer jusqu'à 2 vaisseaux arrimés."""
        '"Scourge"':
            text: """Quand vous attaquez un défenseur qui a au moins 1 carte de dégâts, lancez 1 dé d'attaque supplémentaire."""
        "The Inquisitor":
            text: """Quand vous attaquez avec votre arme principale à portée 2-3, considérez que votre attaque se fait à portée 1."""
            name: "L'Inquisiteur"
        "Zuckuss":
            text: """Quand vous attaquez, vous pouvez lancer 1 dé d'attaque supplémentaire. Dans ce cas, le défenseur lance 1 dé de défense supplémentaire."""
        "Dengar":
            text: """ Une fois par tour après avoir défendu, si l'attaquant se situe dans votre arc de tir, vous pouvez effectuer une attaque contre ce vaisseau."""
        # T-70
        "Poe Dameron":
            text: """Tant que vous défendez ou que vous attaquez, si vous avez un marqueur de concentration, vous pouvez changer un de vos résutats %FOCUS% pour un résultat %HIT% ou %EVADE% ."""
        '"Blue Ace"':
            name: "As Bleu"
            text: """ Lorsque vous effectuez une action accélération, vous pouvez utiliser le gabarit (%TURNLEFT% 1) or (%TURNRIGHT% 1)."""
        # TIE/fo
        '"Omega Ace"':
            name: "As Oméga"
            text: """Quand vous attaquez, vous pouvez dépenser un marqueur de concentration et une acquisition de cible que vous avez sur le défenseur pour changer tous vos résultats en résultats %CRIT% ."""
        '"Epsilon Leader"':
            text: """Au début de la phase de combat, retirez 1 marqueur de stress de chaque vaisseau allié situé à portée 1."""
        '"Zeta Ace"':
            name: "As Zeta"
            text: """Quand vous effectuez un tonneau, vous pouvez utiliser le gabarit de manoeuvre (%STRAIGHT% 2) à la place du gabarit (%STRAIGHT% 1)."""
        '"Red Ace"':
            name: "As Rouge"
            text: '''A chaque tour, la première fois que vous retirez un marqueur bouclier de votre vaisseau, assignez-lui 1 marqueur d'évasion.'''
        '"Omega Leader"':
            text: '''Les vaisseaux ennemis que vous avez vérouillez ne peuvent modifier leurs dés quand ils vous attaquent ou se défendent contre vos attaques.'''
        'Hera Syndulla':
            text: '''Quand vous révélez une manoeuvre verte ou rouge, vous pouvez tourner votre cadran sur une autre manoeuvre de même difficulté.'''
        '"Youngster"':
            text: """Les chasseurs TIE alliés situés à portée 1-3 peuvent effectuer l'action de votre carte d'amélioration %ELITE% dont vous êtes équipé."""
        '"Wampa"':
            text: """Quand vous attaquez, vous pouvez annuler le résultat de tous les dés. Si vous annulez au moins un résultat, assignez 1 carte dégâts face cachée au défenseur."""
        '"Chaser"':
            text: """Quand un autre vaisseau allié situé à portée 1 dépense un marqueur de concentration, assignez un marqueur de concentration à votre vaisseau."""
        'Ezra Bridger':
            text: """Quand vous défendez, si vous êtes sous l'effet du stress, vous pouvez changer jusqu'à 2 de vos résultats %FOCUS% en résultats %EVADE% ."""
        '"Zeta Leader"':
            text: '''Quand vous attaquez, si vous n'êtes pas stressé, vous pouvez recevoir 1 marqueur de stress pour jeter un dé d'attaque supplémentaire.'''
        '"Epsilon Ace"':
            name: "As Epsilon"
            text: '''Tant que vous n'avez pas de cartes de dégâts, considérez votre valeur de pilotage comme égale à "12".'''
        "Kanan Jarrus":
            text: """Quand un vaisseau ennemi situé à portée 1-2 attaque, vous pouvez dépenser un marqueur de concentration. Dans ce cas, l'attaquant lance 1 dé d'attaque de moins."""
        '"Chopper"':
            text: """Au début de la phase de combat, chaque vaisseau ennemi avec lequel vous êtes en contact reçoit 1 marqueur de stress."""
        'Hera Syndulla (Attack Shuttle)':
            text: """Quand vous révélez une manoeuvre verte ou rouge, vous pouvez tourner votre cadran sur une autre manoeuvre de même difficulté."""
        'Sabine Wren':
            text: """Juste avant de révéler votre manoeuvre, vous pouvez effectuer une action gratuite d'accélération ou de tonneau."""
        '"Zeb" Orrelios':
            text: '''Quand vous défendez, vous pouvez annuler les résultats %CRIT% avant les résultats %HIT% .'''
        'Tomax Bren':
            ship: "Bombardier TIE"
            text: '''Une fois par tour, après avoir défaussé une carte d'amélioration , retournez cette dernière face visible.'''
        'Ello Asty':
            text: ''' Tant que vous n'êtes pas stressé, vous pouvez considérer vos manoeuvres %TROLLLEFT% et %TROLLRIGHT% comme des manoeuvres blanches.'''
        "Valen Rudor":
            text: """Après avoir défendu, vous pouvez effectuer une action gratuite."""
        "4-LOM":
            text: """ Au début de la phase de dénouement, vous pouvez assigner 1 de vos marqueurs de stress à un autre vaisseau situé à portée 1."""
        "Tel Trevura":
            text: """La première fois que vous êtes censé être détruit, annulez les dégâts restants, défaussez toutes les cartes de dégâts et assignez 4 cartes de dégâts face cachée à ce vaisseau."""
        "Manaroo":
            text: """ Au début de la phase de combat, vous pouvez assigner tous les marqueurs de concentration, d'évasion et d'acquisition de cible qui vous sont assignés à un autre vaisseau allié."""
        '"Deathfire"':
            text: '''Quand vous révélez votre cadran de manoeuvre ou après avoir effectué une action, vous pouvez effectuer une action de carte d'amélioration %BOMB% en tant qu'action gratuite.'''
            ship: "Bombardier TIE"
        "Maarek Stele (TIE Defender)":
            text: """Quand votre attaque assigne une carte de dégât face visible au défenseur, piochez 3 cartes de dégât à la place, choisissez-en 1 que vous assignez et défaussez les autres."""
            ship: "Défenseur TIE"
        "Countess Ryad":
            text: """Quand vous révélez une manoeuvre %STRAIGHT% vous pouvez la traiter comme une manoeuvre %KTURN% ."""
            ship: "Défenseur TIE"
        "Glaive Squadron Pilot":
            ship: "Défenseur TIE"
            name: "Pilote de l'escadron Glaive"
        "Gamma Squadron Veteran":
            ship: "Bombardier TIE"
            name: "Vétéran de l'escadron Gamma"
        "Poe Dameron (PS9)":
            text: """Tant que vous défendez ou que vous attaquez, si vous avez un marqueur de concentration, vous pouvez changer un de vos résutats %FOCUS% pour un résultat %HIT% ou %EVADE% ."""
        "Rey":
            text: """When attacking or defending, if the enemy ship is inside of your firing arc, you may reroll up to 2 of your blank results."""
        'Han Solo (TFA)':
            text: ''' Quand vous vous positionnez pendant la phase de préparation, vous pouvez vous placer n'importe où dans la zone de jeu au-delà de portée 3 des vaisseaux ennemis.'''
        'Chewbacca (TFA)':
            text: ''' Quand un autre vaisseau allié situé à portée 1-3 est détruit (mais n'a pas quitté la zone de combat), vous pouvez effectuer une attaque.'''
        'Norra Wexley':
            text: '''Quand vous attaquez ou défendez, vous pouvez dépenser une acquisition de cible que vous avez sur le vaisseau ennemi pour ajouter 1 résultat %FOCUS% à votre jet.'''
        'Shara Bey':
            text: '''Quand un autre vaisseau allié situé à portée 1-2 attaque, il peut considérer vos marqueurs d'acquisition de cible bleus comme les siens.'''
        'Thane Kyrell':
            text: '''Après qu'un vaisseau ennemi situé dans votre arc de tir à portée 1-3 a attaqué un autre vaisseau allié, vous pouvez effectuer une action gratuite.'''
        'Braylen Stramm':
            text: '''Après avoir exécuté une manoeuvre, vous pouvez lancer un dé d'attaque.  Sur un résultat %HIT% ou %CRIT% retirez 1 marqueur de stress de votre vaisseau.'''
        '"Quickdraw"':
            text: '''Une fois par tour, quand vous perdez un marqueur de boucliers, vous pouvez effectuer une attaque d'arme principale.'''
        '"Backdraft"':
            text: '''Quand vous attaquez un vaisseau situé dans votre arc de tir auxiliaire, vous pouvez ajouter 1 résultat %CRIT% .'''
        'Fenn Rau':
            text: ''' Quand vous attaquez ou défendez, si le vaisseau ennemi est situé à portée 1, vous pouvez lancer 1 dé supplémentaire.'''
        'Old Teroch':
            name: "Vieux Teroch"
            text: '''Au début de la phase de combat, vous pouvez choisir 1 vaisseau ennemi situé à portée 1. Si vous êtes dans son arc de tir, il défausse tous ses marqueurs de concentration et d'évasion.'''
        'Kad Solus':
            text: '''Après avoir exécuté une manoeuvre rouge, assignez 2 marqueurs de concentration à votre vaisseau.'''
        'Ketsu Onyo':
            text: ''' Au début de la phase de combat, vous pouvez choisir un vaisseau situé à portée 1. Si il est dans votre arc de tir principal et dans votre arc de tir mobile, assignez lui 1 marqueur de rayon tracteur.'''
        'Asajj Ventress':
            text: ''' Au début de la phase de combat, vous pouvez choisir un vaisseau situé à portée 1-2. Si il est dans votre arc de tir mobile, assignez-lui 1 marqueur de stress.'''
        'Sabine Wren (Scum)':
            text: '''Quand vous défendez contre un vaisseau ennemi situé dans votre arc de tir mobile à portée 1-2, vous pouvez ajouter 1 résultat %FOCUS% à votre jet.'''
        'Sabine Wren (TIE Fighter)':
            ship: "Chasseur TIE"
            text: '''Juste avant de révéler votre manoeuvre, vous pouvez effectuer une action gratuite d'accélération ou de tonneau.'''
        '"Zeb" Orrelios (TIE Fighter)':
            ship: "Chasseur TIE"
            text: '''Quand vous défendez, vous pouvez annuler les résultats %CRIT% avant les résultats %HIT% .'''
        'Kylo Ren':
            text: '''La première fois que vous êtes touché par une attaque à chaque tour, assignez la carte d'état  "Je vous montrerai le Côté Obscur" à l'attaquant.'''
        'Unkar Plutt':
            text: ''' A la fin de la phase d'activation vous <strong>devez</strong> assigner un marqueur de rayon tracteur à chaque vaisseau avec lequel vous êtes en contact.'''
        'Cassian Andor':
            text: ''' Au début de la phase d'activation, vous pouvez retirer 1 marqueur de stress à 1 autre vaisseau allié situé à portée 1-2.'''
        'Bodhi Rook':
            text: '''Quand un vaisseau allié verrouille une cible, ce vaisseau peut verrouiller un vaisseau ennemi situé à portée 1-3 de n'importe quel vaisseau allié.'''
        'Heff Tobber':
            text: '''Après qu'un vaisseau ennemi a exécuté une manoeuvre qui l'amène à chevaucher votre vaisseau, vous pouvez effectuer une action gratuite.'''
        '''"Duchess"''':
            text: '''Tant que vous êtes équipé de la carte d'amélioration "Ailerons adaptables", vous pouvez choisir d'ignorer sa capacité de carte.'''
        '''"Pure Sabacc"''':
            text: '''Quand vous attaquez, si vous avez 1 ou moins carte de dégâts, lancez 1 dé d'attaque supplémentaire.'''
        '''"Countdown"''':
            text: '''Quand vous défendez, si vous n'êtes pas sous l'effet du stress durant l'étape "Comparer les résultats", vous pouvez subir 1 dégât pour annuler tous les résultats de dés. Dans ce cas, recevez 1 marqueur de stress.'''
        'Nien Nunb':
            text: '''Quand vous recevez un marqueur de stress, si il y a un vaisseau ennemi dans votre arc de tir à portée 1, vous pouvez défausser ce marqueur de stress.'''
        '"Snap" Wexley':
            text: '''Après avoir effectué une manoeuvre de vitesse 2, 3 ou 4, si vous ne touchez pas un vaisseau, vous pouvez effectuer une action gratuite d'accélération.'''
        'Jess Pava':
            text: '''Quand vous attaquez ou défendez, vous pouvez relancer 1 de vos dés pour chaque autre vaisseau allié situé à portée 1.'''
        'Ahsoka Tano':
            ship: "Chasseur TIE"
            text: '''Au début de la phase de combat, vous pouvez dépenser 1 marquer de concentration pour choisir un vaisseau allié situé à portée 1. Il peut effectuer 1 action gratuite.'''
        'Captain Rex':
            ship: "Chasseur TIE"
            text: '''Après avoir effectué une attaque, assignez la carte d'état "Tir de suppression" au défenseur.'''
        'Major Stridan':
            text: '''Dans la cadre de vos actions et cartes d'amélioration, vous pouvez considérer les vaisseaux alliés situés à portée 2-3 comme étant à portée 1.'''
        'Lieutenant Dormitz':
            text: ''' Durant la mise en place, les vaisseaux alliés peuvent être placés n'importe où dans la zone de jeu à portée 1-2 de vous.'''
        'Constable Zuvio':
            text: '''Quand vous révélez une manoeuvre de marche arrière, vous pouvez larguer une bombe en utilisant votre glissière avant (y compris une bombe avec l'en-tête "<strong>Action:</strong>").'''
        'Sarco Plank':
            text: '''Quand vous défendez, au lieu d'utiliser votre valeur d'agilité, vous pouvez lancer un nombre de dés de défense égal à la vitesse de la manoeuvre que vous avez exécuté ce tour.'''
        'Genesis Red':
            ship: "Intercepteur M3-A"
            text: '''Après avoir verrouillé une cible, assignez des marqueurs de concentration et d'evasion à votre vaisseau jusqu'a ce que vous ayez le même nombre de chacun de ces marqueurs que le vaisseau verrouillé '''
        'Quinn Jast':
            ship: "Intercepteur M3-A"
            text: '''Au début de la phase de combat, vous pouvez recevoir un marqueur d'armement neutralisé pour retourner face visible une de vos cartes %TORPEDO% ou %MISSILE% défaussée.'''
        'Inaldra':
            ship: "Intercepteur M3-A"
            text: '''Quand vous attaquez ou défendez, vous pouvez dépenser 1 bouclier pour relancer n'importe quel nombre de vos dés'''
        'Sunny Bounder':
            ship: "Intercepteur M3-A"
            text: '''Une fois par round, après avoir lancé ou relancé des dés, si vous avez le même résultat sur chacun de vos dés, vous pouvez ajouter 1 résultat correspondant'''
        'Kashyyyk Defender':
            name: "Défenseur de Kashyyyk"
        'Wookiee Liberator':
            name: "Libérateur Wookie"
        'Sienar Specialist':
            name: "Spécialiste Sienar"
        'Onyx Squadron Escort':
            name: "Escorte de l'escadron Onyx"
        'Lieutenant Kestal':
            text: '''Quand vous attaquez, vous pouvez dépenser 1 marqueur de concentration pour annuler tous les résultats vierges et %FOCUS% du défenseur.'''
        '"Double Edge"':
            text: '''Une fois par tour, après avoir effectué une attaque d'arme secondaire qui ne touche pas, vous pouvez effectuer une attaque avec une arme différente.'''
        'Viktor Hel':
            text: '''After defending, if you did not roll exactly 2 defense dice, the attacker receives 1 stress token.'''
        'Lowhhrick':
            text: '''Quand un autre vaisseau allié a portée 1 défend, vous pouvez dépenser 1 marqueur de renforcement, dans ce cas, le défenseur ajoute 1 résultat %EVADE%.'''
        'Wullffwarro':
            text: '''Quand vous attaquez, si vous n'avez pas de bouclier et qu'au moins 1 carte de dégâts vous est assignée, lancez 1 dé d'attaque supplémentaire.'''
        'Captain Nym (Scum)':
            text: '''Vous pouvez ignorer les bombes alliées. Quand un vaisseau allié défend, si l'attaquant mesure la portée au travers d'un marqueur de bombe allié, le défenseur peut ajouter 1 résultat %EVADE%.'''
        'Captain Nym (Rebel)':
            text: '''Une fois par tour, vous pouvez empêcher une bombe alliée d'exploser.'''
        'Sol Sixxa':
            text: '''Quand vous larguez une bombe, vous pouvez utiliser le gabarit (%TURNLEFT% 1) ou (%TURNRIGHT% 1) au lieu du gabarit (%STRAIGHT% 1) .'''
        'Karthakk Pirate':
            name: "Pirate de Karthakk"
        'Lok Revenant':
            name: "Revenant de Lok"
        'Dalan Oberos':
            text: '''If you are not stressed, when you reveal a turn, bank, or Segnor's Loop maneuver, you may instead treat it as a red Tallon Roll maneuver of the same direction (left or right) using the template of the original revealed maneuver.'''
        'Thweek':
            text: '''During setup, before the "Place Forces" step, you may choose 1 enemy ship and assign the "Shadowed" or "Mimicked" Condition card to it.'''

    upgrade_translations =
        #Traits de pilotes
        "Determination":
            name: "Détermination"
            text: """Quand vous recevez une carte de dégâts assortie du trait Pilote face visible, défaussez-la aussitôt (sans résoudre sa capacité)."""
        "Swarm Tactics":
            name: "Tactique de nuée"
            text: """Au début de la phase de combat, choisissez 1 vaisseau allié situé à portée 1.%LINEBREAK%Jusqu'à la fin de cette phase, considérez que la valeur de pilotage du vaisseau en question est égale à la vôtre."""
        "Squad Leader":
            name: "Chef d'escouade"
            text: """<strong>Action :</strong> choisissez 1 vaisseau situé à portée 1 ou 2 dont la valeur de pilotage est inférieure à la vôtre.%LINEBREAK%Ce vaisseau peut aussitôt effectuer 1 action gratuite."""
        "Expert Handling":
            name: "As de l'espace"
            text: """<strong>Action :</strong> effectuez une <strong>action gratuite</strong> de tonneau. Si vous n'avez pas l'icône d'action %BARRELROLL%, recevez 1 marqueur de stress.%LINEBREAK%Ensuite, vous pouvez retirer 1 acquisition de cible ennemie de votre vaisseau."""
        "Marksmanship":
            name: "Adresse au tir"
            text: """<strong>Action :</strong> en attaquant ce tour-ci, vous pouvez échanger 1 de vos résultats %FOCUS% contre 1 résultat %CRIT%, et tous vos autres résultats %FOCUS% contre des résultats %HIT% ."""
        "Daredevil":
            name: "Casse-cou"
            text: """<strong>Action :</strong> exécuter une manœuvre blanche (%TURNLEFT% 1) ou (%TURNRIGHT% 1).  Puis, recevez un marqueur de stress.%LINEBREAK%Ensuite, si vous n'avez pas l'icône d'action %BOOST%, lancez 2 dés d'attaque et subissez les dégâts (%HIT%) et les dégâts critiques (%CRIT%) obtenus."""
        "Elusiveness":
            name: "Insaisissable"
            text: """Quand vous défendez, vous pouvez recevoir un marqueur de stress pour choisir 1 dé d'attaque.%LINEBREAK%Si vous avez au moins un marqueur de stress, vous ne pouvez pas utiliser cette capacité."""
        "Push the Limit":
            name: "Repousser les limites"
            text: """Une fois par tour, après avoir effectué une action, vous pouvez effectuer 1 action gratuite figurant dans votre barre d'action.%LINEBREAK%Recevez ensuite un marqueur de stress."""
        "Deadeye":
            name: "Tireur d'élite"
            text: """Vous pouvez considérer l'intitulé "<strong>Attaque (acquisition de cible)</strong>" comme un intitulé "<strong>Attaque (concentration)</strong>".%LINEBREAK%Quand une attaque vous demande d'utiliser un marqueur d'acquisition de cible, vous pouvez utiliser un marqueur de concentration à la place."""
        "Expose":
            name: "Prise de risque"
            text: """<strong>Action :</strong> jusqu'à la fin du tour, augmentez votre valeur d'arme principale de 1 et réduisez votre valeur d'agilité de 1."""
        "Wingman":
            name: "Ailier"
            text: """Au début de la phase de combat, retirez 1 marqueur de stress d'un autre vaisseau allié situé à portée 1."""
        "Decoy":
            name: "Leurre"
            text: """Au début de la phase de combat, vous pouvez choisir 1 vaisseau allié situé à portée 1-2. Échangez votre valeur de pilotage avec celle de ce vaisseau jusqu'à la fin de la phase."""
        "Outmaneuver":
            name: "Manœuvre improbable"
            text: """Quand vous attaquez un vaisseau situé dans votre arc de tir, si vous n'êtes pas dans l'arc de tir de ce vaisseau, réduisez sa valeur d'agilité de 1 (jusqu'à un minimum de 0)."""
        "Predator":
            name: "Prédateur"
            text: """Quand vous attaquez, vous pouvez relancer 1 dé d'attaque. Si la valeur de pilote du défenseur est de "2" ou moins, vous pouvez relancer jusqu'à 2 dés d'attaque à la place."""
        "Draw Their Fire":
            name: "Je les attire !"
            text: """Quand un vaisseau allié situé à portée 1 est touché par une attaque, vous pouvez subir 1 des résultats %CRIT% non annulés à la place de l'appareil visé."""
        "Adrenaline Rush":
            name: "Montée d'adrénaline"
            text: """Quand vous révélez une manœuvre rouge, vous pouvez défausser cette carte pour traiter cette manœuvre comme une manœuvre blanche jusqu'à la fin de la phase d'activation."""
        "Veteran Instincts":
            name: "Instinct de vétéran"
            text: """Augmentez votre valeur de pilotage de 2."""
        "Opportunist":
            name: "Opportuniste"
            text: """Quand vous attaquez, si le défenseur n'a pas de marqueur de concentration ou d'évasion, vous pouvez recevoir 1 marqueur de stress pour lancer 1 dé d'attaque supplémentaire.%LINEBREAK%Vous ne pouvez pas utiliser cette capacité si vous avez au moins un marqueur de stress."""
        "Lone Wolf":
            name : "Loup Solitaire"
            text: """Quand vous attaquez ou défendez, s'il n'y a pas de vaisseaux alliés à portée 1-2, vous pouvez relancer 1 de vos résultats vierges."""
        "Stay On Target":
            name: "Restez en ligne"
            text: """Quand vous révélez une manœuvre, vous pouvez tourner votre cadran sur une autre manœuvre ayant la même vitesse.%LINEBREAK%Traitez cette manœuvre comme une manœuvre rouge."""
        "Ruthlessness":
            name: "Impitoyable"
            text: """%FR_IMPERIALONLY%%LINEBREAK%Après avoir effectué une attaque qui touche, vous <strong>devez</strong> choisir 1 autre vaisseau situé à portée 1 du défenseur (autre que vous-même). Ce vaisseau subit 1 dégât."""
        "Intimidation":
            text: """Tant que vous êtes au contact avec un vaisseau ennemi, réduisez de 1 la valeur d'agilité de ce vaisseau."""
        "Calculation":
            name: "Calcul"
            text: """Quand vous attaquez, vous pouvez dépenser un marqueur de concentration pour changer 1 de vos résultats %FOCUS% en un résultat %CRIT% ."""
        "Bodyguard":
            name : "Garde du corps"
            text: """%FR_SCUMONLY%%LINEBREAK%Au début de la phase de combat, vous pouvez dépenser un marqueur de concentration pour choisir un vaisseau allié à portée 1 ayant une valeur de pilotage supérieure à la votre. Augmentez sa valeur d'agilité de 1 jusqu'à la fin du tour."""
        # Astromechs
        "R2 Astromech":
            name: "Astromech R2"
            text: """Considérez toutes les manœuvres à vitesse 1 ou 2 comme des manœuvres vertes."""
        "R2-D2":
            text: """Après avoir exécuté une manœuvre verte, vous pouvez récupérer 1 bouclier (sans pouvoir dépasser votre valeur de boucliers)."""
        "R2-F2":
            text: """<strong>Action :</strong> augmentez votre valeur d'agilité de 1 jusqu'à la fin de ce tour."""
        "R5-D8":
            text: """<strong>Action :</strong> lancez 1 dé de défense.%LINEBREAK%Sur un résultat %EVADE% ou %FOCUS%, défaussez 1 de vos cartes de dégâts face cachée."""
        "R5-K6":
            text: """Après avoir utilisé votre acquisition de cible, lancez 1 dé de défense.%LINEBREAK%Sur un résultat %EVADE%, verrouillez aussitôt le même vaisseau. Vous ne pouvez cependant pas utiliser cette nouvelle acquisition de cible durant cette attaque."""
        "R5 Astromech":
            name: "Astromech R5"
            text: """Pendant la phase de dénouement, choisissez une de vos cartes dégâts face visible assortie du trait <strong>Vaisseau</strong>, et retournez-la face cachée."""
        "R7 Astromech":
            name: "Astromech R7"
            text: """Une fois par tour, quand vous défendez, si vous avez verrouillé l'attaquant, vous pouvez dépenser l'acquisition de cible pour choisir tout ou partie des dés d'attaque. L'attaquant doit relancer les dés choisis."""
        "R7-T1":
            text: """<strong>Action :</strong> choisissez un vaisseau ennemi situé à portée 1-2. Si vous êtes dans son arc de tir, vous pouvez le verrouiller. Ensuite, vous pouvez effectuer une action d'accélération gratuite."""
        "R4-D6":
            text: """Quand vous êtes touché par une attaque ayant généré au moins 3 résultats %HIT% non annulés, vous pouvez annuler les résultats que vous souhaitez jusqu'à ce qu'il n'en reste que 2. Pour chaque résultat annulé de la sorte, recevez 1 marqueur de stess."""
        "R5-P9":
            text: """À la fin de la phase de combat, vous pouvez dépenser 1 de vos marqueurs de concentration pour récupérer 1 bouclier (jusqu'à concurrence de votre valeur de boucliers)."""
        "R3-A2":
            text: """Quand vous déclarez la cible de votre attaque, si le défenseur est dans votre arc de tir, vous pouvez recevoir 1 marqueur de stress pour que le défenseur en reçoive 1 aussi."""
        "R2-D6":
            text: """Votre bandeau d'amélioration gagne l'icône d'amélioration %ELITE% .%LINEBREAK%Vous ne pouvez pas équiper cette amélioration si vous avez déjà une icône d'amélioration %ELITE% ou si votre valeur de pilotage est de "2" ou moins."""
        # Torpilles
        "Proton Torpedoes":
            name: "Torpilles à protons"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Vous pouvez échanger 1 de vos résultats %FOCUS% contre 1 résultat %CRIT% ."""
        "Advanced Proton Torpedoes":
            name: "Torpilles à protons avancées"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Vous pouvez échanger jusqu'à 3 de vos résultats vierge contre autant de résultats %FOCUS% ."""
        "Flechette Torpedoes":
            name: "Torpilles fléchettes"
            text: """<strong>Attaque (acquisition de cible) :</strong> défaussez cette carte et dépensez votre acquisition de cible pour effectuer cette attaque.%LINEBREAK%Après que vous avez effectué cette attaque, le défenseur reçoit 1 marqueur de stress si sa valeur de coque est de "4" ou moins."""
        "Ion Torpedoes": # Traduction non officielle
            name: "Torpilles ioniques"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Si cette attaique touche, le défenseur et chaque vaisseau situé à portée 1 de celui-ci reçoit 1 marqueur ionique."""
        "Bomb Loadout":
            name: "Chargement de bombes"
            text: """<span class="card-restriction">Y-Wing uniquement. Limité.</span>%LINEBREAK%Votre bandeau d'amélioration gagne l'icone d'amélioration %BOMB% ."""
        # Tourelles
        "Ion Cannon Turret":
            name: "Tourelles à canons ioniques"
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau (même s'il se situe en dehors de votre arc de tir).%LINEBREAK%Si cette attaque touche la cible, cette dernière subit 1 dégât et reçoit 1 marqueur ionique. Ensuite, annulez tous les résultats des dés."""
        "Blaster Turret":
            name: "Tourelles blaster"
            text: """<strong>Attaque (concentration) :</strong> dépensez un marqueur concentration pour effectuer cette attaque contre 1 vaisseau (même s'il se situe en dehors de votre arc de tir)."""
        "Autoblaster Turret":
            name: "Tourelle autoblaster"
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau (même s'il se trouve en dehors de votre arc de tir).%LINEBREAK%Vos résultats %HIT% ne peuvent pas être annulés par des dés de défense. Le défenseur peut annuler les résultats %CRIT% avant les résultats %HIT% ."""
        # Missiles
        "Concussion Missiles":
            name: "Missiles à concussion"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Vous pouvez échanger 1 de vos résultats vierges contre 1 résultat %HIT% ."""
        "Cluster Missiles":
            name: "Missiles groupés"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque <strong>deux fois</strong>."""
        "Homing Missiles":
            name: "Missiles à tête chercheuse"
            text: """<strong>Attaque (acquisition de cible) :</strong> défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Le défenseur ne peut pas utiliser de marqueurs d'évasion durant cette attaque."""
        "Assault Missiles":
            name: "Missiles d'assaut"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Si cette attaque touche, chaque vaisseau situé à portée 1 du défenseur subit 1 dégât."""
        "Ion Pulse Missiles":
            name: "Missiles à pulsations ioniques"
            text: """<strong>Attaque (acquisition de cible) :</strong> défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Si cette attaque touche, le défenseur subit 1 dégât et reçoit 2 marqueurs ioniques. Ensuite, annulez le résultat de <strong>tous<strong> les dés."""
        "Chardaan Refit":
            name: "Radoub à Chardaan"
            text: """<span class="card-restriction">A-Wing uniquement.</span>%LINEBREAK%Cette carte a un coût en points d'escadron négatif."""
        "Proton Rockets":
            name: "Roquettes à proton"
            text: """<strong>Attaque (concentration) :</strong> défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Vous pouvez lancer un nombre de dés d'attaque additionnels égal à votre valeur d'agilité, jusqu'à un maximum de 3 dés additionnels."""
        # Bombes
        "Seismic Charges":
            name: "Charges sismiques"
            text: """Quand vous révélez votre cadran de manoeuvres, vous pouvez défausser cette carte pour  <strong>larguer</strong> 1 marqueur de charges sismiques.%LINEBREAK%Ce marqueur <strong>explose</strong> à la fin de la phase d'activation."""
        "Proximity Mines":
            name: "Mines de proximité"
            text: """<strong>Action :</strong> défaussez cette carte pour <strong>larguer</strong> 1 marqueur de mines de proximité. Quand un vaisseau exécute une manœuvre, si son socle ou son gabarit de manœuvre chevauche ce marqueur, ce marqueur <strong>explose</strong>."""
        "Proton Bombs":
            name: "Bombes à protons"
            text: """Quand vous révélez votre cadran de manoeuvres, vous pouvez défausser cette carte pour <strong>larguer</strong> 1 marqueur de bombe à protons.%LINEBREAK%Ce marqueur <strong>explose</strong> à la fin de la phase d'activation."""
        # Canons
        "Ion Cannon":
            name: "Canon ionique"
            text: """<strong>Attaque :</strong> Attaque : attaquez 1 vaisseau.%LINEBREAK%Si cette attaque touche, le défenseur subit 1 dégât et reçoit 1 marqueur ionique. Ensuite annulez le résultat de tous les dés."""
        "Heavy Laser Cannon":
            name: "Canon laser lourd"
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau.%LINEBREAK%Juste après avoir lancé vos dés d'attaque, vous devez changer tous vos résultats %CRIT% en résultats %HIT% ."""
        "Autoblaster":
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau.%LINEBREAK%Vos résultats %HIT% ne peuvent pas être annulés par des dés de défense. Le défenseur peut annuler les résultats %CRIT% avant les résultats %HIT% ."""
        "Flechette Cannon":
            name: "Canon à fléchettes"
            text: """<strong>Attaque :</strong> Attaquez 1 vaisseau.%LINEBREAK%Si cette attaque touche, le défenseur subit 1 dégât et, si le défenseur n'est pas sous l'effet du stress, il reçoit aussi 1 marqueur de stress. Ensuite, annulez le résultat de <strong>tous</strong> les dés."""
        '"Mangler" Cannon':
            name: "Canon \"Lacérateur\""
            text: """<strong>Attaque :</strong> Attaquez 1 vaisseau.%LINEBREAK% Quand vous attaquez, vous pouvez échanger 1 de vos résultats %HIT% contre 1 résultat %CRIT% ."""
        # Systèmes
        "Enhanced Scopes":
            name: "Radars améliorés"
            text: """Durant la phase d'activation, considérez que votre valeur de pilotage est égale à "0"."""
        "Fire-Control System":
            name: "Système de commande de tir"
            text: """Après avoir effectué une attaque, vous pouvez verrouiller le défenseur."""
        "Advanced Sensors":
            name: "Senseurs avancés"
            text: """Juste avant de révéler votre manoeuvre, vous pouvez effectuer 1 action gratuite.%LINEBREAK%Si vous utilisez cette capacité, vous devez passer l'étape "Effectuer une action" ce tour-ci."""
        "Sensor Jammer":
            name: "Brouilleur de senseurs"
            text: """Quand vous défendez, vous pouvez changer un des résultats %HIT% de l'attaquant en résultat %FOCUS% . L'attaquant ne peut pas relancer le dés au résultat modifié."""
        "Accuracy Corrector":
            name: "Correcteur de Précision"
            text: """Quand vous attaquez, vous pouvez annuler le résultat de tous vos dés. Puis, vous pouvez ajouter 2 résultats %HIT% .%LINEBREAK%Vos dés ne peuvent pas être modifiés à nouveau lors de cette attaque."""
        # Équipages
        "Gunner":
            name: "Cannonier"
            text: """Après avoir effectué une attaque qui ne touche pas, vous pouvez effectuer immédiatement une attaque d'arme principale. Vous ne pouvez pas effectuer d'autre attaque ce tour-ci."""
        "Mercenary Copilot":
            name: "Copilote mercenaire"
            text: """Quand vous attaquez à portée 3, vous pouvez échanger 1 de vos résultats %HIT% contre 1 résultat %CRIT% ."""
        "Weapons Engineer":
            name: "Ingénieur en armement"
            text: """Vous pouvez verrouiller 2 cibles (1 seule acquisition de cible par vaisseau ennemi).%LINEBREAK%Quand vous verrouillez une cible, vous pouvez verrouiller 2 vaisseaux différents."""
        "Luke Skywalker":
            text: """%FR_REBELONLY%%LINEBREAK%Quand vous effectuez une attaque qui ne touche pas, effectuez aussitôt une attaque d'arme principale. Vous pouvez échanger un résultat %FOCUS% contre 1 résultat %HIT% . Vous ne pouvez pas effectuer d'autre attaque ce tour-ci."""
        "Nien Nunb":
            text: """%FR_REBELONLY%%LINEBREAK%Vous pouvez traiter toute les manœuvres %STRAIGHT% comme des manœuvres vertes."""
        "Chewbacca":
            text: """%FR_REBELONLY%%LINEBREAK%Quand vous recevez une carte de dégâts, vous pouvez la défaussez sur-le-champs et récupérer 1 bouclier. Ensuite, défaussez cette carte d'amélioration."""
        "Recon Specialist":
            name: "Officier en reconnaissance"
            text: """Quand vous effectuez une action de concentration, assignez 1 marqueur de concentration supplémentaire à votre vaisseau."""
        "Saboteur":
            text: """<strong>Action :</strong> choisissez 1 vaisseau ennemi situé à portée 1 et lancez 1 dé d'attaque. Sur un résultat %HIT% ou %CRIT%, choisissez au hasard une carte de dégâts face cachée assignée à ce vaisseau, retrounez-la et résolvez-la."""
        "Intelligence Agent":
            name: "Agent de renseignements"
            text: """Au début de la phase d'activation, choisissez 1 vaisseau ennemi situé à portée 1-2. Vous pouvez regarder la manoeuvre choisie pour ce vaisseau."""
        "Darth Vader":
            name: "Dark Vador"
            text: """%FR_IMPERIALONLY%%LINEBREAK%Après avoir effectué une attaque contre un vaisseau ennemi, vous pouvez subir 2 dégâts pour infliger 1 dégât critique à cet appareil."""
        "Rebel Captive":
            name: "Prisonnier rebelle"
            text: """%FR_IMPERIALONLY%%LINEBREAK%Une fois par tour, le premier vaisseau qui vous déclare comme la cible d'une attaque reçoit aussitôt 1 marqueur de stress."""
        "Flight Instructor":
            name: "Pilote instructeur"
            text: """Quand vous défendez, vous pouvez relancer 1 de vos résultats %FOCUS% . Si la valeur de pilotage de l'attaquant est de 2 ou moins, vous pouvez relancer 1 de vos résultats vierges à la place."""
        "Navigator":
            name: "Navigateur"
            text: """Quand vous révélez une manoeuvre, vous pouvez tourner le cadran sur une autre manoeuvre ayant la même direction.%LINEBREAK%Vous ne pouvez pas tourner le cadran sur une manoeuvre rouge si vous avez au moins un marqueurs de stress."""
        "Lando Calrissian":
            text: """%FR_REBELONLY%%LINEBREAK%<strong>Action :</strong> lancez 2 dés de défense. Pour chaque résultat %FOCUS%, assignez 1 marqueur de concentration à votre vaisseau. Pour chaque résultat %EVADE%, assignez 1 marqueur d'évasion à votre vaisseau."""
        "Mara Jade":
            text: """%FR_IMPERIALONLY%%LINEBREAK%À la fin de la phase de combat, chaque vaisseau ennemi situé à portée 1 qui n'a pas de marqueur de stress reçoit 1 marqueur de stress."""
        "Fleet Officer":
            name: "Officier de la flotte"
            text: """%FR_IMPERIALONLY%%LINEBREAK%<strong>Action :</strong> choisissez jusqu'à 2 vaisseaux alliés situés à portée 1-2 et assignez 1 marqueur de concentration à chacun d'eux. Ensuite, recevez 1 marqueur de stress."""
        "Han Solo":
            text: """%FR_REBELONLY%%LINEBREAK%Quand vous attaquez, si vous avez verrouillé le défenseur, vous pouvez dépenser ce marqueur d'acquisition de cible pour changer tous vos résultats %FOCUS% en résultats %HIT% ."""
        "Leia Organa":
            text: """%FR_REBELONLY%%LINEBREAK%Au début de la phase d'activation, vous pouvez défausser cette carte pour permettre à tous les vaisseaux alliés qui dévoilent une manœuvre rouge de considérer cette dernière comme une manœuvre blanche jusqu'à la fin de la phase."""
        "WED-15 Repair Droid":
            name: "Droïde de réparation WED-15"
            text: """%FR_HUGESHIPONLY% %FR_REBELONLY%%LINEBREAK%<strong>Action :</strong> dépensez 1 énergie pour défausser 1 de vos cartes de dégâts face cachée, ou dépensez 3 énergie pour défausser 1 de vos cartes de dégâts face visible."""
        "Carlist Rieekan":
            text: """%FR_HUGESHIPONLY% %FR_REBELONLY%%LINEBREAK%Au début de la phase d'activation, vous pouvez défausser cette carte pour traiter la valeur de pilotage de chaque vaisseau allié comme si elle s'élevait à "12", jusqu'à la fin de la phase."""
        "Jan Dodonna":
            text: """%FR_HUGESHIPONLY% %FR_REBELONLY%%LINEBREAK%Quand un autre vaisseau allié situé à portée 1 attaque, il peut échanger 1 de ses résultats %HIT% contre un résultat %CRIT% ."""
        "Tactician":
            name: "Tacticien"
            text: "Après que vous avez effectué une attaque contre un vaisseau situé dans votre arc de tir à portée 2, ce vaisseau reçoit 1 marqueur de stress."
        "R2-D2 (Crew)":
            name: "R2-D2 (Équipage)"
            text: """%FR_REBELONLY%%LINEBREAK%À la fin de la phase de dénouement, si vous n'avez pas de boucliers, vous pouvez récupérer 1 bouclier et lancer 1 dé d'attaque. Sur un résultat %HIT%, prenez au hasard 1 de vos cartes de dégâts face cachée, retournez-la et résolvez-la."""
        "C-3PO":
            name: "Z-6PO"
            text: """%FR_REBELONLY%%LINEBREAK%Une fois par tour, avant de lancer 1 ou plusieurs dés de défense, vous pouvez tenter d'en deviner à voix haute le nombre de résultats %EVADE% . Si vous obtenez le nombre annoncé (avant de modifier des dés), ajoutez 1 résultat %EVADE% ."""
        "Kyle Katarn":
            text: """%FR_REBELONLY%%LINEBREAK%Après avoir retiré un marqueur stress de votre vaisseau, vous pouvez assigner un marqueur concentration à votre vaisseau."""
        "Jan Ors":
            text: """%FR_REBELONLY%%LINEBREAK%Une fois par tour, quand un vaisseau allié à portée 1-3 effectue une action de concentration ou reçoit un marqueur de concentration, vous pouvez assigner un marqueur d'évasion à la place."""
        "Toryn Farr":
            text: """%FR_HUGESHIPONLY% %FR_REBELONLY%%LINEBREAK%<strong>Action :</strong> dépensez n'importe quelle quantité d'énergie pour choisir autant de vaisseaux ennemis situés à portée 1-2. Retirez tous les marqueurs de concentratino, d'évasion et d'acquisition de cible bleus de ces vaisseaux."""
        "Targeting Coordinator":
            name: "Coordinateur de visée"
            text: """<strong>Énergie :</strong> vous pouvez dépenser 1 énergie pour choisir un vaisseau allié situé à portée 1-2. Verrouillez une cible, puis assignez le marqueur d'acquisition de cible bleu au vaisseau choisi."""
        "Raymus Antilles":
            text: """%FR_HUGESHIPONLY% %FR_REBELONLY%%LINEBREAK%Au début de la phase d'activation, choisissez 1 vaisseau ennemi situé à portée 1-3. Vous pouvez regarder la manœuvre choisie pour ce vaisseau. Si la manœuvre est blanche, assignez 1 marqueur de stress à ce vaisseau."""
        '"Leebo"':
            text: """<strong>Action :</strong> Effectuez une action d'accélération gratuite. Ensuite, recevez 1 marqueur ionique."""
        "Dash Rendar":
            text: """%FR_REBELONLY%%LINEBREAK%Vous pouvez effectuer des attaques tout en chevauchant un obstacle.%LINEBREAK%Vos attaques ne peuvent pas être gênées."""
        "Ysanne Isard":
            text: """%FR_IMPERIALONLY%%LINEBREAK%Au début de la phase de combat, si vous n'avez pas de boucliers et qu'au moins 1 carte de dégâts est assignée à votre vaisseau, vous pouvez effectuer une action d'évasion gratuite."""
        "Moff Jerjerrod":
            text: """%FR_IMPERIALONLY%%LINEBREAK%Quand vous recevez une carte de dégâts face visible, vous pouvez défausser cette carte d'amélioration ou une autre carte d'amélioration %CREW% pour retourner cette carte dégâts face cachée (sans en résoudre l'effet)."""
        "Greedo":
            text: """%FR_SCUMONLY%%LINEBREAK%La première fois que vous attaquez à chaque tour et la première fois que vous défendez à chaque tour, la première carte dégâts infligée l'est face visible."""
        "Outlaw Tech":
            name: "Technicien hors la loi"
            text: """Après avoir exécuté une manœuvre rouge, vous pouvez assigner 1 marqueur de concentration à votre vaisseau."""
        # Soute
        "Frequency Jammer":
            name: "Brouilleurs de fréquence"
            text: """Quand vous effectuez une action de brouillage, choisissez 1 vaisseau ennemi qui n'a pas de marqueur de stress et se situe à portée 1 du vaisseau brouillé. Le vaisseau choisi reçoit 1 marqueur de stress."""
        "Expanded Cargo Hold":
            ship: "Transport moyen GR-75"
            name: "Compartiments supplémentaires"
            text: """<span class="card-restriction">GR-75 uniquement.</span>%LINEBREAK%Une fois par tour, quand vous êtes censé recevoir une carte de dégâts face visible, vous pouvez la piocher dans le paquet de dégâts de poupe ou de proue."""
        "Comms Booster":
            name: "Amplificateur Comm"
            text: """<strong>Énergie :</strong> dépensez 1 énergie pour retirer tous les marqueurs de stress d'un vaisseau allié situé à portée 1-3. Ensuite, assignez 1 marqueur de concentration à ce vaisseau."""
        "Slicer Tools":
            name: "Outils de slicer"
            text: """<strong>Action :</strong> choisissez 1 ou plusieurs vaisseaux ennemis situés à portée 1-3 ayant un marqueur de stress. Pour chaque vaisseau choisi, vous pouvez dépenser 1 énergie pour forcer ce vaisseau à subir 1 dégât."""
        "Shield Projector":
            name: "Projecteur de boucliers"
            text: """Quand un vaisseau ennemi devient le vaisseau actif durant la phase de combat, vous pouvez dépenser 3 énergie pour l'obliger à vous attaquer, si possible, jusqu'à la fin de la phase."""
        "Tibanna Gas Supplies":
            name: "Réserves de gaz Tibanna"
            text: """<strong>Énergie :</strong> vous pouvez défausser cette carte pour gagner 3 énergie."""
        "Ionization Reactor":
            name: "Réacteur à ionisation"
            text: """<strong>Énergie :</strong> dépensez 5 énergie de cette carte et défaussez-la pour que chaque autre vaisseau situé à portée 1 subisse 1 dégât et reçoive un marqueur ionique."""
        "Engine Booster":
            name: "Booster"
            text: """Juste avant de dévoiler votre cadran de manœuvres, vous pouvez dépenser 1 énergie pour exécuter une manœuvre (%STRAIGHT%) blanche. Vous ne pouvez pas utiliser cette capacité si elle vous fait chevaucher un autre vaisseau."""
        "Backup Shield Generator":
            name: "Générateur de boucliers auxiliaire"
            text: """À la fin de chaque tour, vous pouvez dépenser 1 énergie pour récupérer 1 bouclier (jusqu'à concurrence de votre valeur de boucliers)."""
        "EM Emitter":
            name: "Émetteur EM"
            text: """Quand vous gênez une attaque, le défenseur lance 3 dés de défense supplémentaires (au lieu de 1)."""
        "Ion Cannon Battery": # Traduit de l'anglais
            text: """<strong>Attaque (énergie):</strong> Dépensez 2 énergie de cette carte pour effectuer une attaque. Si cette attaque touche, le défenseur subit 1 dégât critique et reçoit 1 marqueur inioque. Puis annulez <strong>tous</strong> les résultats des dés."""
        "Extra Munitions":
            name: "Munitions supplémentaires"
            text: """Quand vous êtes équipé de cette carte, placez un marqueur "ordonnance" sur chaque carte d'amélioration %TORPEDO%, %MISSILE% ou %BOMB% équipé. Quand on vous demande de défausser une carte d'amélioration, vous pouvez défausser 1 marqueur ordonnance sur cette carte à la place."""
        # Point d'Attache
        "Single Turbolasers":
            name: "Turbolaser"
            text: """<strong>Attaque (énergie) :</strong> dépensez 2 énergie de cette carte pour effectuer cette attaque. Le défenseur double sa valeur d'agilité contre cette attaque. Vous pouvez changer 1 de vos résultats %FOCUS% en résultat %HIT% ."""
        "Quad Laser Cannons":
            name: "Canons quadrilaser"
            text: """<strong>Attaque (énergie) :</strong> dépensez 1 énergie de cette carte pour effectuer cette attaque. Si cette attaque ne touche pas, vous pouvez aussitôt dépenser 1 énergie de cette carte pour effectuer à nouveau cette attaque."""
        # Équipe
        "Gunnery Team":
            name: "Équipe d'artilleurs"
            text: """Une fois par tour, quand vous attaquez avec une arme secondaire, vous pouvez dépenser 1 énergie pour change 1 de vos résultats vierges en résultat %HIT% ."""
        "Sensor Team":
            name: "Équipe des senseurs"
            text: """Quand vous verrouillez une cible, vous pouvez verrouiller un vaisseau ennemi à portée 1-5 (au lieu de portée 1-3)."""
        "Engineering Team":
            name: "Équipe de mécaniciens"
            text: """Durant la phase d'activation, quand vous dévoilez une manœuvre %STRAIGHT%, gagnez 1 énergie supplémentaire lors de l'étape "Gagner de l'énergie"."""
        # Illégal
        "Inertial Dampeners":
            name: "Amortisseurs inertiels"
            text: """Quand vous révélez votre cadran de manœuvre, vous pouvez défausser cette carte pour exécuter une manœuvre blanche [0%STOP%] à la place. Ensuite, recevez 1 marqueur de stress."""
        "Dead Man's Switch":
            name: "Salve automatique"
            text: """Quand vous êtes détruit, chaque vaisseau à portée 1 subit 1 dégât."""
        "Feedback Array":
            name: "Dispositif de retour"
            text: """Lors de la phase de combat, au lieu d'effectuer des attaques, vous pouvez recevoir 1 marqueur ionique et subit 1 dégât pour choisir un vaisseau ennemi à portée 1. Ce vaisseau subit 1 dégât."""
        '"Hot Shot" Blaster':
            name: "Blaster \"de la mort\""
            text: """<strong>Attaque :</strong> défaussez cette carte pour attaquer 1 vaisseau (même s'il est en dehors de votre arc de tir)."""
        # Astromech récupéré
        "Salvaged Astromech":
            name: "Atromech récupéré"
            text: "Quand vous recevez une carte de dégâts ayant le trait <strong>Vaisseau</strong>, vous pouvez immédiatement la défausser (avant d'en résoudre l'effet).%LINEBREAK%Puis, défaussez cette carte d'amélioration."
        '"Genius"':
            name: "Génie"
            text: """Si vous êtes équipé d'une bombe qui peut être larguée avant que vous ne révéliez votre manœuvre, vous pouvez au lieu de cela larguer la bombe <strong>après</strong> avoir éxecuté votre manœuvre."""
        "Unhinged Astromech":
            name: "Atromech déglingué"
            text: """Vous pouvez considérer toutes les manœuvres de vitesse 3 comme manœuvres vertes."""
        "R4-B11":
            text: """Quand vous attaquez, si vous avez verrouillé le défenseur, vous pouvez dépenser l'acquisition de cible pour choisir tout ou partie des dés de défense. Le défenseur doit relancer les dés choisis."""
        "R4 Agromech":
            name: "Astromech R4"
            text: """Quand vous attaquez, après avoir dépensé un marqueur de concentration, vous pouvez verrouiller le défenseur."""
        "K4 Security Droid":
            name: "Droïde de sécurité K4"
            text: """%FR_SCUMONLY%%LINEBREAK%Après avoir exécuté une manœuvre verte, vous pouvez verrouiller cible."""
        "Advanced Targeting Computer": # Traduit de l'anglais
            text: """<span class="card-restriction">TIE Advanced uniquement.</span>%LINEBREAK%Quand vous attaquez avec votre arme principale, si vous avez verrouillé le défenseur, vous pouvez ajouter un résultat %CRIT% result à votre lancer de dés. Si vous le faîtes, vous ne pouvez pas dépenser de marqueur d'acquisition de cible durant cette attaque."""
        "Emperor Palpatine":
            name: "Empereur Palpatine"
            text: """%IMPERIALONLY%%LINEBREAK%Une fois par tour, vous pouvez échanger un résultat de dé d'un vaisseau allié contre n'importe quel autre résultat de dé. Ce résultat de dé ne peut pas être modifié à nouveau."""
        "Bossk":
            text: """%SCUMONLY%%LINEBREAK%Après avoir effectué une attaque qui ne touche pas, si vous n'êtes pas sous l'effet du stress, vous <strong>devez</strong> recevoir 1 marqueur de stress. Ensuite, assignez 1 marqueur de concentration à votre vaisseau et verrouillez le défenseur."""
        "Lightning Reflexes":
            name: "Réflexes éclairs"
            text: """%SMALLSHIPONLY%%LINEBREAK%Après avoir exécuté une manoeuvre blanche ou verte de votre cadran, vous pouvez défausser cette carte pour faire pivoter votre vaisseau de 180&deg. Ensuite, recevez 1 marqueur de stress <strong>après</strong> l'étape "Contrôler le stress du pilote"."""
        "Twin Laser Turret":
            name: "Tourelle laser jumelée"
            text: """<strong>Attaque :</strong> effectuez cette attaque deux fois (même contre un vaisseau situé en dehors de votre arc de tir).<br /><br />Chaque fois que cette attaque touche, le défenseur subit 1 dégât. Ensuite, annulez le résultat de tous les dés. """
        "Plasma Torpedoes":
            name: "Torpilles à plasma"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.<br /><br />Si cette attaque touche, retirez 1 marqueur de bouclier au défenseur. """
        "Ion Bombs":
            name: "Bombes ioniques"
            text: """ Quand vous révélez votre cadran de manoeuvres, vous pouvez défausser cette carte pour <strong>larger</strong> 1 marqueur de bombe ionique.<br /><br />Ce marqueur <strong>explose</strong> à la fin de la phase d'activation.<br /><br /><strong>Marqueur de bombes ioniques :</strong> quand ce marqueur de bombe explose, chaque vaisseau situé à portée 1 reçoit 2 marqueurs ioniques. Ensuite, défaussez ce marqueur."""
        "Conner Net":
            name: "Filet Conner"
            text: """<strong>Action:</strong> défaussez cette carte pour <strong>larger</strong> 1 marqueur de filet Conner.<br /><br />Quand le socle ou le gabarit de manoeuvre d'un vaisseau chevauche ce marqueur, ce dernier <strong>explose</strong>.<br /><br /><strong>Marqueur de filet Conner :</strong> quand ce marqueur de bombe explose, le vaisseau qui l'a traversé ou chevauché subit 1 dégât, reçoit 2 marqueurs ioniques et saute l'étape "Effectuer une action". Ensuite, défaussez ce marqueur."""
        "Bombardier":
            text: """Quand vous larguez une bombe, vous pouvez utiliser le gabarit (%STRAIGHT% 2) au lieu du gabarit (%STRAIGHT% 1) ."""
        "Cluster Mines":
            name: "Mines groupées"
            text: """<strong>Action :</strong> défaussez cette carte pour <strong>larger</strong> 1 ensemble de Mines groupées.<br /><br />Quand le socle ou le gabarit de manoeuvre d'un vaisseau chevauche un marqueur de Mines groupées, ce marqueur <strong>explose</strong>.<br /><br /><strong>Marqueur de mines groupées :</strong>quand un de ces marqueurs explose, le vaisseau qui l'a traversé ou chevauché lance 2 dés d'attaque et subit un dégats pour chaques %HIT% et %CRIT% obtenus. Ensuite, défaussez ce marqueur.  """
        'Glitterstim':
            text: '''Au début de votre phase de combat, vous pouvez défausser cette carte et recevoir 1 marqueur stress. Dans ce cas, jusqu'a la fin du tour, quand vous attaquez ou défendez, vous pouvez changer tous vos résultats %FOCUS% en résultat %EVADE% ou %HIT% .'''
        'Crack Shot':
            name: "Tireur hors pair"
            text: '''Quand vous attaquez un vaisseau situé dans votre arc de tir, vous pouvez défausser cette carte pour annuler 1 des résultats %EVADE% du défenseur.'''
        "Advanced Homing Missiles":
            name: "Missiles à tête chercheuse avancés"
            text: """<strong>Attaque (acquisition de cible) :</strong> défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Si cette attaque touche, le défenseur reçoit une carte de dégât face visible. Ensuite annulez le résultat de tous les dés."""
        'Agent Kallus':
            text: '''%IMPERIALONLY%%LINEBREAK%Au début du premier tour, choisissez vaisseau ennemi petit ou grand. Quand vous attaquez ou défendez contre ce vaisseau, vous pouvez échanger 1 de vos résultats %FOCUS% contre 1 résultat %HIT% ou %EVADE% .'''
        'XX-23 S-Thread Tracers':
            name: "Traceur XX-23 S"
            text: """<strong>Attaque (concentration):</strong> défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Si cette attaque touche, chaque vaisseau allié à portée 1-2 de vous peut verrouiller le défenseur. Ensuite, annulez le résultat de tous les dés."""
        "Tractor Beam":
            name: "Rayon tracteur"
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau.%LINEBREAK%Si cette attaque touche, le défenseur reçoit 1 marqueur de rayon tracteur. Ensuite annulez le résultat de tous les dés."""
        "Cloaking Device":
            name: "Appareil d'occultation"
            text: """%SMALLSHIPONLY%%LINEBREAK%<strong>Action:</strong> effectuez une action gratuite d'occultation.%LINEBREAK%A la fin de chaque tour, si vous êtes occulté, lancez 1 dé d'attaque. Sur un résultat %FOCUS% , défaussez cette carte, puis désoccultez-vous ou défaussez votre marqueur d'occultation."""
        "Shield Technician":
            name: "Technicien aux boucliers"
            text: """%HUGESHIPONLY%%LINEBREAK%Quand vous effectuez une action de récupération, au lieu de dépenser toute votre énergie, vous pouvez choisir la quantité d'énergie à dépenser."""
        "Weapons Guidance":
            name: "Ciblage assisté"
            text: """Quand vous attaquez, vous pouvez utiliser un marqueur de concentration pour changer 1 de vos résultats vierges en résultat %HIT% ."""
        "BB-8":
            text: """Quand vous révélez une manoeuvre verte, vous pouvez effectuer une action gratuite de tonneau."""
        "R5-X3":
            text: """Avant de révéler votre manoeuvre vous pouvez défausser cette carte pour ignorer tous les obstacles jusqu'à la fin du tour."""
        "Wired":
            name: "Galvanisé"
            text: """Quand vous attaquez ou défendez, si vous êtes stressé, vous pouvez relancer 1 ou plus de vos résultats %FOCUS% ."""
        'Cool Hand':
            name: "Mains sûres"
            text: '''Quand vous recevez un marqueur de stress, vous pouvez défausser cette carte pour assigner un marqueur de concentration ou d'évasion à votre vaisseau.'''
        'Juke':
            name: "Feinte"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Quand vous attaquez, si vous avez un marqueur d'évasion, vous pouvez échanger 1 des résultats %EVADE% du défenseur pour un résultat  %FOCUS% .'''
        'Comm Relay':
            name: "Relais de comm"
            text: '''Vous ne pouvez pas avoir plus de 1 marqueur d'évasion.%LINEBREAK%Pendant la phase de dénouement, ne retirez pas de votre vaisseau un marqueur d'évasion inutilisé.'''
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
            text: """%REBELONLY%%LINEBREAK% Les vaisseaux ennemis situés dans votre arc de tir avec lesquels vous êtes en contact ne sont pas considérés en contact avec vous quand vous ou eux êtes activés lors de la phase de combat."""
        'Kanan Jarrus':
            text: """%REBELONLY%%LINEBREAK%Une fois par tour, après qu'un vaisseau allié situé à portée 1-2 a exécuté une manoeuvre blanche, vous pouvez lui retirer 1 marqueur de stress."""
        'Reinforced Deflectors':
            name: "Déflecteurs renforcés"
            text: """%LARGESHIPONLY%%LINEBREAK%Après avoir subi au moins 3 dégâts d'une attaque, récupérez 1 bouclier (jusqu'à votre valeur de boucliers)."""
        'Dorsal Turret':
            name: "Tourelle dorsale"
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau (y compris un vaisseau situé en dehors de votre arc de tir).%LINEBREAK%Si la cible de cette attaque est situé à portée 1, lancez 1 dé d'attaque supplémentaire."""
        'Targeting Astromech':
            name: "Astromech de ciblage"
            text: '''Après que vous avez exécuté une manoeuvre rouge, vous pouvez verrouiller une cible.'''
        'Hera Syndulla':
            text: """%REBELONLY%%LINEBREAK%Vous pouvez révéler et exécuter des manoeuvre rouge même en étant sous l'effet du stress."""
        'Ezra Bridger':
            text: """%REBELONLY%%LINEBREAK%Quand vous attaquez, si vous êtes sous l'effet du stress, vous pouvez changer 1 de vos résultats %FOCUS% en résultat %CRIT% """
        'Sabine Wren':
            text: """%REBELONLY%%LINEBREAK%Votre bandeau d'amélioration gagne l'icône d’amélioration %BOMB% .  Une fois par tour, avant qu'un marqueur de bombe allié ne soit retiré, choisissez 1 vaisseau ennemi situé à portée 1 de ce marqueur. Ce vaisseau subit 1 dégât."""
        '"Chopper"':
            text: """%REBELONLY%%LINEBREAK%Vous pouvez effectuer des actions même en étant sous l'effet du stress.%LINEBREAK%Après avoir effectué une action sous l'effet du stress, subissez 1 dégât."""
        'Construction Droid':
            text: '''%HUGESHIPONLY% %LIMITED%%LINEBREAK%When you perform a recover action, you may spend 1 energy to discard 1 facedown Damage card.'''
        'Cluster Bombs':
            text: '''After defending, you may discard this card.  If you do, each other ship at Range 1 of the defending section rolls 2 attack dice, suffering all damage (%HIT%) and critical damage (%CRIT%) rolled.'''
        "Adaptability":
            name: "Adaptabilité"
            text: """<span class="card-restriction">Dual card.</span>%LINEBREAK%<strong>Side A:</strong> Augmentez de 1 votre valeur de pilotage.%LINEBREAK%<strong>Side B:</strong> Réduisez de 1 votre valeur de pilotage."""
        "Electronic Baffle":
            name: "Déflecteur électronique"
            text: """ Quand vous recevez un marqueur de stress ou un marqueur ionique, vous pouvez subir 1 dégât pour défausser ce marqueur."""
        "4-LOM":
            text: """%SCUMONLY%%LINEBREAK%Quand vous attaquez, durant l'étape "Modifier les dés d'attaque", vous pouvez recevoir 1 marqueur ionique pour choisir 1 des marqueurs de concentration ou d'évasion du défenseur. Ce marqueur choisi ne peut pas être dépensé durant cette attaque."""
        "Zuckuss":
            text: """%SCUMONLY%%LINEBREAK%Quand vous attaquez, vous pouvez recevoir n'importe quel nombre de marqueurs de stress pour choisir autant de dés de défense. Le défenseur doit relancer ces dés."""
        'Rage':
            text: """<strong>Action:</strong> assignez 1 marqueur de concentration à votre vaisseau et recevez 2 marqueurs de stress. Jusqu'à la fin du tour, quand vous attaquez, vous pouvez relancer jusqu'à 3 dés d'attaque."""
        "Attanni Mindlink":
            name: "Lien mental Attanni"
            text: """%SCUMONLY%%LINEBREAK%Chaque fois que vous vous voyez assigner un marqueur de concentration ou de stress, chaque autre vaisseau allié ayant Lien mental attanni doit aussi se voir assigner le même type de marqueur s'il n'en a pas déjà un."""
        "Boba Fett":
            text: """%SCUMONLY%%LINEBREAK%Après avoir effectué une attaque, si le défenseur s'est vu attribuer une carte de dégâts face visible, vous pouvez défausser Boba Fett pour choisir et défausser 1 des cartes d'amélioration du défenseur."""
        "Dengar":
            text: """%SCUMONLY%%LINEBREAK%Quand vous attaquez, vous pouvez relancer 1 dé d'attaque. Si le défenseur est un pilote unique, vous pouvez relancer jusqu'à 2 dés d'attaque à la place."""
        '"Gonk"':
            text: """%SCUMONLY%%LINEBREAK%<strong>Action:</strong> posez 1 marqueur de boucliers sur cette carte.%LINEBREAK%<strong>Action:</strong> retirez 1 marqueur de boucliers de cette carte pour récupérer 1 bouclier (jusqu'à votre valeur de boucliers)."""
        "R5-P8":
            text: """Une fois par tour, après avoir défendu, vous pouvez lancer 1 dé d'attaque. Sur un résultat %HIT% , l'attaquant subit 1 dégât. Sur un résultat %CRIT% , vous et l'attaquant subissez chacun 1 dégât."""
        'Thermal Detonators':
            name: "Détonateurs thermiques"
            text: """Quand vous révélez votre cadran de manoeuvres, vous pouvez défausser cette carte pour <strong>larguer</strong> 1 marqueur de détonateurs thermiques.%LINEBREAK%Ce marqueur <strong>explose</strong> à la fin de la phase d'activation. %LINEBREAK%<strong>Marqueur de détonateurs thermiques :</strong> quand ce marqueur de bombe explose, chaque vaisseau situé à portée 1 subit 1 dégât et reçoit 1 marqueur de stress. Ensuite, défaussez ce marqueur."""
        "Overclocked R4":
            name: "R4 sur-cadencé"
            text: """Lors de la phase de combat, quand vous dépensez un marqueur de concentration, vous pouvez recevoir 1 marqueur de stress pour assigner 1 marqueur de concentration à votre vaisseau."""
        'Systems Officer':
            name: "Officier systèmes"
            text: '''%IMPERIALONLY%%LINEBREAK%Après avoir exécuté une maoeuvre verte, choisissez un autre vaisseau allié situé à portée 1. Ce vaisseau peut verrouiller une cible.'''
        'Tail Gunner':
            name: "Artilleur de poupe"
            text: '''Quand vous attaquez depuis votre arc de tir auxiliaire de poupe, diminuez de 1 l'agilité du défenseur (jusqu'à un minimum de 0).'''
        'R3 Astromech':
            name: "Astromech R3"
            text: '''Une fois par tour, quand vous attaquez avec une arme principale, vous pouvez annuler 1 de vos résultats %FOCUS% durant l'étape "Modifier les dés d'attaque" pour assigner 1 marqueur d'évasion à votre vaisseau.'''
        'Collision Detector':
            name: "Détecteur anticollision"
            text: '''Quand vous effectuez une accélération, un tonneau ou vous désocultez, votre vaisseau et votre gabarit de manoeuvre peut chevaucher des obstacles.%LINEBREAK%Quand vous lancez les dégâts dus aux obstacles, ignorez tous les résultats %CRIT% .'''
        'Sensor Cluster':
            name: "Bloc senseurs"
            text: '''Quand vous défendez, vous pouvez dépenser un marqueur de concentration pour changer 1 de vos résultats vierges en résultat %EVADE% .'''
        'Fearlessness':
            name: "Intrépidité"
            text: '''%SCUMONLY%%LINEBREAK%Quand vous attaquez, si vous êtes dans l'arc de tir du défenseur à portée 1 et que le défenseur est dans votre arc de tir, vous pouvez ajouter 1 résultat %HIT% à votre jet.'''
        'Ketsu Onyo':
            text: '''%SCUMONLY%%LINEBREAK%Au début de la phase de dénouement, vous pouvez choisir un vaisseau ennemi situé dans votre arc de tir à portée 1-2. Ce vaisseau ne retire pas ses marqueurs de rayon tracteur.'''
        'Latts Razzi':
            text: '''%SCUMONLY%%LINEBREAK%Quand vous défendez, vous pouvez retirer 1 marqueur de stress de l'attaquant pour ajouter 1 résultat %EVADE% à votre jet.'''
        'IG-88D':
            text: '''%SCUMONLY%%LINEBREAK%Vous avez la capacité de pilote de chaque vaisseau allié avec la carte d'amélioration <em>IG-2000</em> (en plus de votre propre capacité de pilote).'''
        'Rigged Cargo Chute':
            name: "Largage de cargaison"
            text: '''%LARGESHIPONLY%%LINEBREAK%<strong>Action:</strong> défaussez cette carte pour larguer 1 marqueur de cargaison.'''
        'Seismic Torpedo':
            name: "Torpille sismique"
            text: '''<strong>Action:</strong> défaussez cette carte pour choisir un obstacle situé à portée 1-2 dans votre arc de tir principal.  Chaque vaisseaux situé à portée 1 de l'obstacle lance 1 dé d'attaque et subit tout dégât (%HIT%) ou dégât critique (%CRIT%) obtenu. Ensuite, retirez l'obstacle.'''
        'Black Market Slicer Tools':
            name: "Outils de slicer illicites"
            text: '''<strong>Action:</strong> choisissez un vaisseau ennemi sous l'effet du stress situé à portée 1-2 et lancez 1 dé d'attaque. Sur un résultat (%HIT%) ou (%CRIT%) , retirez-lui 1 marqueur de stress et infligez-lui 1 carte de dégâts face cachée.'''
        # Wave X
        'Kylo Ren':
            text: '''%IMPERIALONLY%%LINEBREAK%<strong>Action:</strong> assignez la carte d'état "Je vous montrerai le Côté Obscure" à un vaisseau ennemi situé à distance 1-3.'''
        'Unkar Plutt':
            text: '''%SCUMONLY%%LINEBREAK%Après avoir exécuté une manoeuvre vous amenant à chevaucher un vaisseau ennemi, vous pouvez subir 1 dégât pour effectuer 1 action gratuite.'''
        'A Score to Settle':
            name: "Un compte à régler"
            text: '''Durant la mise en place, avant l'étape "Placer les forces", choisissez 1 vaisseau ennemi et assignez lui la carte d'état "Une dette à payer".%LINEBREAK%Quand vous attaquez un vaisseau qui a la carte d'état "Une dette à payer", vous pouvez changer 1 résultat %FOCUS% en résultat %CRIT% .'''
        'Jyn Erso':
            text: '''%REBELONLY%%LINEBREAK%<strong>Action:</strong> choisissez 1 vaisseau allié situé à portée 1-2. Assignez 1 marqueur de concentration à ce vaisseau pour chaque vaisseau ennemi situé à portée 1-3 dans votre arc de tir. Vous ne pouvez pas assigner plus de 3 marqueurs de cette manière.'''
        'Cassian Andor':
            text: '''%REBELONLY%%LINEBREAK%Au début de la phase de préparation, vous pouvez choisir un vaisseau ennemi à portée 1-2. Tentez de deviner à haute voix la direction et la vitesse de ce vaisseau, puis regardez son cadran. Si vous avez vu juste, vous pouvez régler votre cadran sur une autre manoeuvre.'''
        'Finn':
            text: '''%REBELONLY%%LINEBREAK%Quand vous attaquez avec une arme principale ou que vous défendez, si le vaisseau ennemi est dans votre arc de tir, vous pouvez ajouter 1 résultat vierge à votre lancé.'''
        'Rey':
            text: '''%REBELONLY%%LINEBREAK%Au début de la phase de dénouement, vous pouvez placer 1 de vos marqueurs de concentration de ce vaisseau sur cette carte. Au début de la phase de combat, vous pouvez assigner 1 de ces marqueurs à votre vaisseau.'''
        'Burnout SLAM':
            name: "MASL postcombustion"
            text: '''%LARGESHIPONLY%%LINEBREAK%Votre barre d'action gagne l'icône d'action  %SLAM% .%LINEBREAK%Après avoir effectué une action MASL, défaussez cette carte. '''
        'Primed Thrusters':
            name: "Propulseurs survitaminés"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Les marqueurs de stress ne vous empêchent pas d'effectuer des actions d'accélération ou de tonneau à moins que vous n'ayez 3 marqueurs de stress ou plus.'''
        'Pattern Analyzer':
            name: "Analyseur de modèles"
            text: '''Quand vous effectuez une manoeuvre, vous pouvez résoudre l'étape "Vérifier le stress du pilote" après l'étape "Effectuer une action" (au lieu d’avant).'''
        'Snap Shot':
            name: "Tir rapide"
            text: '''Après qu'un vaisseau ennemi effectue une manoeuvre, vous pouvez effectuer cette attaque contre ce vaisseau.  <strong>Attaque :</strong> Attaquez 1 vaisseau. Vous ne pouvez pas modifier vos dés d'attaque et ne pouvez pas attaquer de nouveau pendant cette étape.'''
        'M9-G8':
            text: '''%REBELONLY%%LINEBREAK%Quand un vaisseau que vous avez verrouillé attaque, vous pouvez choisir 1 dé d'attaque. L'attaquant doit relancer ce dé.%LINEBREAK%Vous pouvez effectuer une acquisition de cible sur d'autres vaisseaux alliés.'''
        'EMP Device':
            name: "Système IEM"
            text: '''Durant la phase de combat, au lieu d'effectuer des attaques, vous pouvez défausser cette carte pour assigner 2 marqueurs ioniques à chaque vaisseau situé à portée 1.'''
        'Captain Rex':
            text: '''%REBELONLY%%LINEBREAK%After you perform an attack that does not hit, you may assign 1 focus token to your ship.'''
        'General Hux':
            text: '''%IMPERIALONLY%%LINEBREAK%<strong>Action:</strong> choisissez jusqu'à 3 vaisseaux alliés situés à portée 1-2. Assignez 1 marqueur de concentration à chacun de ces vaisseaux et assignez la carte d'état "Dévouement fanatique" à 1 d'eux. Puis recevez un marqueur de stress.'''
        'Operations Specialist':
            name: "Spécialiste des opérations"
            text: '''%LIMITED%%LINEBREAK%Après qu'un vaisseau allié situé à portée 1-2 a effectué une attaque qui ne touche pas, vous pouvez assigner 1 marqueur de concentration à un vaisseau allié situé à portée 1-3 de l'attaquant.'''
        'Targeting Synchronizer':
            name: "Synchroniseur télémétrique"
            text: '''Quand un vaisseau allié situé à portée 1-2 attaque un vaisseau que vous avez verrouillé, le vaisseau allié considère l'en-tête "<strong>Attaque (Acquisition de cible) :</strong> comme une "<strong>Attaque :</strong>."  Si un effet de jeu demande à ce vaisseau de dépenser une acquisition de cible, il peut dépenser la vôtre à la place.'''
        'Hyperwave Comm Scanner':
            name: "Scanner comm à hyperondes"
            text: '''Au début de l'étape "Placer les forces", vous pouvez considérer votre valeur de pilotage comme un  "0", "6" ou "12" jusqu'à la fin de l'étape.%LINEBREAK%Durant la mise en place, après qu'un autre vaisseau allié a été placé à portée 1-2, vous pouvez lui assigner 1 marqueur de concentration ou d'évasion.'''
        'Trick Shot':
            name: "Tir habile"
            text: '''Quand vous attaquez, si l'attaque est gênée, vous pouvez lancer 1 dé d'attaque supplémentaire.'''
        'Hotshot Co-pilot':
            name: "Copilote hors pair"
            text: '''Quand vous attaquez avec une arme principale, le défenseur doit dépenser 1 marqueur de concentration si il peut.%LINEBREAK%Quand vous défendez, l'attaquant doit dépenser 1 marqueur de concentration si il peut.'''
        '''Scavenger Crane''':
            name: "Grue de récupération"
            text: '''Après qu'un vaisseau situé à portée 1-2 a été détruit, vous pouvez choisir une carte %TORPEDO%, %MISSILE%, %BOMB%, %CANNON%, %TURRET% défaussée ou de modification qui équipait votre vaisseau et la retourner face visible. Puis lancez 1 dé d'attaque. Sur un résultat vierge, défaussez la Grue de récupération.'''
        'Bodhi Rook':
            text: '''%REBELONLY%%LINEBREAK%Quand vous verrouillez une cible, vous pouvez verrouiller un vaisseau ennemi situé à portée 1-3 de n'importe quel vaisseau allié.'''
        'Baze Malbus':
            text: '''%REBELONLY%%LINEBREAK%Après avoir effectué une attaque qui ne touche pas, vous pouvez immédiatement effectuer une attaque d'arme principale contre un vaisseau différent. Vous ne pouvez pas effectuer une autre attaque ce tour.'''
        'Inspiring Recruit':
            name: "Recrue enthousiaste"
            text: '''Une fois par tour, quand un vaisseau allié situé à portée 1-2 retire un marqueur de stress, il peut retirer un marqueur de stress supplémentaire.'''
        'Swarm Leader':
            name: "Chef de nuée"
            text: '''Quand vous effectuez une attaque d'arme principale, choisissez jusqu'à 2 autres vaisseaux alliés dont l'arc de tir contient le défenseur à portée 1-3. Retirez 1 marqueur d'évasion de chaque vaisseau choisi pour lancer 1 dé d'attaque supplémentaire par marqueur retiré.'''
        'Bistan':
            text: '''%REBELONLY%%LINEBREAK%Quand vous attaquez à portée 1-2, vous pouvez changer 1 de vos résultats %HIT% en résultat %CRIT% .'''
        'Expertise':
            text: '''Quand vous attaquez, si vous n'êtes pas sous l'effet du stress, vous pouvez changer tous vos résultats %FOCUS% en résultats %HIT% .'''
        'BoShek':
            text: '''Quand un vaisseau avec lequel vous êtes en contact est activé, vous pouvez regarder la manoeuvre qu'il a choisi. Dans ce cas, son propriétaire <strong>doit</strong> tourner le cadran sur une manoeuvre adjacente. Le vaisseau peut révéler et exécuter cette manoeuvre même s'il est sous l'effet du stress. '''
        # C-ROC
        'Heavy Laser Turret':
            text: '''<span class="card-restriction">C-ROC Cruiser only.</span>%LINEBREAK%<strong>Attack (energy):</strong> Spend 2 energy from this card to perform this attack against 1 ship (even a ship outside of your firing arc).'''
        'Cikatro Vizago':
            text: '''%SCUMONLY%%LINEBREAK%Au début de la phase de dénouement, vous pouvez défausser cette carte pour remplacer une carte d'amélioration %ILLICIT% ou %CARGO% face visible dont vous êtes equipé par une autre carte d'améiloration du même type ayant un nombre de points d'escadron inférieur ou égal.'''
        'Azmorigan':
            text: '''%HUGESHIPONLY% %SCUMONLY%%LINEBREAK%At the start of the End phase, you may spend 1 energy to replace a faceup %CREW% or %TEAM% Upgrade card you have equipped with another Upgrade card of the same type of equal or fewer squad points.'''
        'Quick-release Cargo Locks':
            text: '''%LINEBREAK%At the end of the Activation phase, you may discard this card to <strong>place</strong> 1 container token.'''
        'Supercharged Power Cells':
            text: '''When attacking, you may discard this card to roll 2 additional attack dice.'''
        'ARC Caster':
            name: "Arc foudroyant"
            text: '''<span class="card-restriction">Rebel and Scum only.</span>%DUALCARD%%LINEBREAK%<strong>Side A:</strong>%LINEBREAK%<strong>Attaque:</strong> Attaquez un vaisseau.  Si cette attaque touche, vous devez choisir 1 autre vaisseau à portée 1 du défenseur qui subit 1 dégât.%LINEBREAK%Puis retournez cette carte.%LINEBREAK%<strong>Side B:</strong>%LINEBREAK%(En charge) Au début de la phase de combat, vous pouvez recevoir un marqueur d'armement neutralisé pour retourner cette carte.'''
        'Wookiee Commandos':
            name: "Commandos Wookies"
            text: '''Quand vous attaquez, vous pouvez relancer vos résultats %FOCUS%.'''
        'Synced Turret':
            name: "Tourelle synchronisée"
            text: '''<strong>Attaque (Acquisition de cible):</strong> Attaquez 1 vaisseau (même un vaisseau situé en dehors de votre arc de tir).%LINEBREAK%Si le défenseur se situe dans votre arc de tir principal, vous pouvez relancer un nombre de dés d'attaque pouvant aller jusqu'à votre valeur d'arme principale.'''
        'Unguided Rockets':
            name: "Roquettes non guidées"
            text: '''<strong>Attaque (focus):</strong> Attaquez 1 vaisseau.%LINEBREAK%Vos dés d'attaque ne peuvent être modifié qu'en dépensant un marqueur concentration pour son effet normal.'''
        'Intensity':
            text: '''%SMALLSHIPONLY% %DUALCARD%%LINEBREAK%<strong>Side A:</strong> Après avoir affectué une action d'accélération ou de tonneau, vous pouvez assigner 1 marqueur concentration ou evasion à votre vaisseau. Dans ce cas retournez cette carte.%LINEBREAK%<strong>Side B:</strong> (Epuisée) A la fin de la phase de combat, vous pouvez dépenser 1 marqueur de concentration ou d'evasion pour retourner cette carte'''
        'Jabba the Hutt':
            text: '''%SCUMONLY%%LINEBREAK%Quand vous vous equipez de cette carte placez 1 marqueur illicite sur chaque carte d'amélioration %ILLICIT% dans votre escadron. Quand il vous est demandé de défausser une carte d'amélioration, vous pouvez défausser 1 marqueur illicite de la carte à la place.'''
        'IG-RM Thug Droids':
            text: '''When attacking, you may change 1 of your %HIT% results to a %CRIT% result.'''
        'Selflessness':
            name: "Altruisme"
            text: '''%SMALLSHIPONLY% %REBELONLY%%LINEBREAK%Quand un vaisseau allié situé à portée 1 est touché par une attaque, vous pouvez défausser cette carte pour subir tous les résultats %HIT% non annulé à la place du vaisseau ciblé.'''
        'Breach Specialist':
            name: "Spécialiste des brèches"
            text: '''Quand vous recevez une carte de dégâts face visible, vous pouvez dépenser 1 marqueur de renforcement pour la retourner face cachée (sans résoudre son effet). Dans ce cas, jusqu'à la fin du tour, quand vous recevez une carte de dégâts face visible, retournez-la face cachée (sans résoudre son effet).'''
        'Bomblet Generator':
            name: "Générateur de sous-munitions"
            text: '''Quand vous révélez votre manoeuvre, vous pouvez <strong>larger</strong> 1 marqueur de sous-munitions.%LINEBREAK%Ce marqueur <strong>explose</strong> à la fin de la phase d'activation.%LINEBREAK%<strong>Marqueur sous-munitions:</strong> Quand ce marqueur de bombe explose, chaque vaisseau situé a portée 1 du marqueur lance 2 dés d'attaque et subit tous les dégâts (%HIT%) et (%CRIT%) obtenu. Ensuite, défaussez ce marqueur.'''
        'Cad Bane':
            text: '''%SCUMONLY%%LINEBREAK%Votre bandeau d'améliorations gagne l'icone %BOMB% . une fois par tour, quand un vaisseau ennemi lance des dés d'attaque en raison d'une bombe alliée qui explose, vous pouvez choisir n'importe quel nombre de résultats %FOCUS% et vierge, il doit relancer ces résultats.'''
        'Minefield Mapper':
            name: "Traceur de chanp de mines"
            text: '''Durant la mise en place, après l'étape "placer les forces" vous pouvez défausser n'importe quel nombre de vos cartes d'amélioration %BOMB% équipées. Placez tous les marqueurs de bombes correspondants dans la zone de jeu à portée 4+ de vaisseaux ennemis '''
        'R4-E1':
            text: '''Vous pouvez effectuer des actions de vos cartes d'amélioration %TORPEDO% et %BOMB% même si vous êtes stressé. Après avoir effectué une action de la sorte, vous pouvez défausser cette carte pour retirer 1 marqueur de stress de votre vaisseau'''
        'Cruise Missiles':
            name: "Missile de croisière"
            text: '''<strong>Attaque (Acquisition de cible):</strong> Défaussez cette carte pour effectuer cette attque.%LINEBREAK%Vous pouvez lancer un nombre de dés d'attaque supplémentaires égal à la vitesse de la manoeuvre que vous avez effectuée à ce tour, jusqu'a un maximum de 4 dés supplémentaires'''
        'Ion Dischargers':
            text: '''After you receive an ion token, you may choose an enemy ship at Range 1.  If you do, remove that ion token. Then that ship may choose to receive 1 ion token. If it does, discard this card.'''

    modification_translations =
        "Shield Upgrade":
            name: "Boucliers améliorés"
            text: """Augmentez votre valeur de boucliers de 1."""
        "Advanced Cloaking Device":
            name: "Système d'occultation avancé"
            text: """<span class="card-restriction">TIE Fantôme uniquement.</span>%LINEBREAK%Après avoir effectué une attaque, vous pouvez effectuer une action d'occultation gratuite."""
            ship: "TIE Fantôme"
        "Stealth Device":
            name: "Système d'occultation"
            text: """Augmentez votre valeur d'agilité de 1. Si une attaque vous touche, défaussez cette carte."""
        "Engine Upgrade":
            name : "Moteurs améliorés"
            text: """Votre barre d'actions gagne l'icône d'action %BOOST% ."""
        "Anti-Pursuit Lasers":
            name: "Lasers antipoursuite"
            text: """%FR_LARGESHIPONLY%Quand un vaisseau ennemi exécute une manœuvre qui l'oblige à chevaucher votre appareil, lancez 1 dé d'attaque. Sur un résultat %HIT% ou %CRIT%, le vaisseau ennemi subit 1 dégât."""
        "Targeting Computer":
            name: "Ordinateur de visée"
            text: """Votre barre d'action gagne l'icône d'action %TARGETLOCK% ."""
        "Hull Upgrade":
            name: "Coque améliorée"
            text: """Augmentez votre valeur de coque de 1."""
        "Munitions Failsafe":
            name: "Munitions à sûreté intégrée"
            text: """Quand vous attaquez avec une arme secondaire qui vous demande de la défausser pour effectuer cette attaque, défaussez-la seulement si l'attaque touche."""
        "Stygium Particle Accelerator":
            name: "Accélérateur de particules de Stygium"
            text: """Quand vous vous désoccultez ou effectuez une action d'occultation, vous pouvez effectuer une action d'évasion gratuite."""
        "Combat Retrofit":
            name: "Préparé pour le combat"
            text: """<span class="card-restriction">GR-75 uniquement.</span>%LINEBREAK%Augmentez votre valeur de coque de 2 et votre valeur de boucliers de 1."""
            ship: "Transport moyen GR-75"
        "B-Wing/E2":
            text: """<span class="card-restriction">B-Wing uniquement.</span>%LINEBREAK%Votre bandeau d'améliorations gagne l'icône d'amélioration %CREW% ."""
        "Countermeasures":
            name: "Contre-mesures"
            text: """%FR_LARGESHIPONLY%%LINEBREAK%Au début de la phase de combat, vous pouvez défausser cette carte pour augmenter votre valeur d'agilité de 1 jusqu'à la fin du tour. Ensuite, vous pouvez retirer 1 acquisition de cible ennemie de votre vaisseau."""
        "Experimental Interface":
            name: "Interface expérimentale"
            text: """Une fois par tour, après avoir effectué une action, vous pouvez effectuer 1 action gratuite d'une de vos cartes amélioration équipée ayant l'entrée "<strong>Action :</strong>". Ensuite, recevez 1 marqueur de stress."""
        "Tactical Jammer":
            name: "Brouilleur tactique"
            text: """%FR_LARGESHIPONLY%%LINEBREAK%Votre vaisseau peut gêner les attaques ennemies."""
        "Autothrusters":
            name: "Autopropulseurs"
            text: """Quand vous défendez, si vous êtes au-delà de la portée 2 ou en dehors de l'arc de tir de l'attaquant, vous pouvez changer 1 de vos résultats vierges en un résultat %EVADE% . Vous ne pouvez vous équiper de cette carte que si vous avez l'icône d'action %BOOST% ."""
        "Twin Ion Engine Mk. II":
            name: "Moteurs ioniques jumelés Mk. II"
            text: """Vous pouvez traiter toutes les manoeuvres (%BANKLEFT% ou %BANKRIGHT%) comme des manoeuvres vertes."""
        "Maneuvering Fins":
            name: "Ailerons de manoeuvre"
            text: """<span class="card-restriction">YV-666 only.</span>%LINEBREAK%Quand vous révélez une manoeuvre de virage (%TURNLEFT% ou %TURNRIGHT%), vous pouvez tourner votre cadran sur la manoeuvre de virage sur l'aile (%BANKLEFT% ou %BANKRIGHT%) correspondante de même vitesse."""
        "Ion Projector":
            name: "Projecteur ionique"
            text: """%LARGESHIPONLY%%LINEBREAK%Après qu'un vaisseau ennemi a exécuté une manoeuvre l'amenant à chevaucher votre vaisseau, lancez 1 dé d'attaque. Sur un résultat %HIT% ou %CRIT% , le vaisseau ennemi reçoit 1 marqueur ionique."""
        'Integrated Astromech':
            name: "Astromech intégré"
            text: '''<span class="card-restriction">X-wing only.</span>%LINEBREAK%Quand vous recevez une carte de dégâts, vous pouvez défausser 1 de vos cartes d'amélioration %ASTROMECH% pour défausser cette carte de dégâts (sans en résoudre ses effets).'''
        'Optimized Generators':
            text: '''%HUGESHIPONLY%%LINEBREAK%Once per round, when you assign energy to an equipped Upgrade card, gain 2 energy.'''
        'Automated Protocols':
            text: '''%HUGESHIPONLY%%LINEBREAK%Once per round, after you perform an action that is not a recover or reinforce action, you may spend 1 energy to perform a free recover or reinforce action.'''
        'Ordnance Tubes':
            text: '''%HUGESHIPONLY%%LINEBREAK%You may treat each of your %HARDPOINT% upgrade icons as a %TORPEDO% or %MISSILE% icon.%LINEBREAK%When you are instructed to discard a %TORPEDO% or %MISSILE% Upgrade card, do not discard it.'''
        'Long-Range Scanners':
            name: " Scanners longue portée"
            text: '''Vous pouvez verrouiller des vaisseaux situés à portée 3 et au-delà. Vous ne pouvez pas verrouiller des vaisseaux situés à portée 1-2. Vous ne pouvez vous équiper de cette carte que si vous avez les icônes %TORPEDO% et %MISSILE% dans votre bandeau d'amélioration.'''
        "Guidance Chips":
            name: "Puce de guidage"
            text: """Une fois par tour, quand vous attaquez avec une arme secondaire %TORPEDO% ou %MISSILE% , vous pouvez changer 1 résultat de dé en résultat %HIT% (ou en résultat %CRIT% si votre valeur d'arme principale est de "3" ou plus)."""
        'Vectored Thrusters':
            name: "Propulseurs vectoriels"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Votre barre d'action gagne l'icône d'action %BARRELROLL% .'''
        'Smuggling Compartment':
            name: "Compartiment de contrebande"
            text: '''<span class="card-restriction">YT-1300 and YT-2400 only.</span>%LINEBREAK%Votre bandeau d'amélioration gagne l'icône %ILLICIT% .%LINEBREAK%Vous pouvez équiper 1 modification supplémentaire dont le coût en point d'escadron est 3 ou moins.'''
        'Gyroscopic Targeting':
            name: "Visée gyroscopique"
            text: '''<span class="card-restriction">Lancer-class Pursuit Craft only.</span>%LINEBREAK%A la fin de la phase de combat, si vous avez exécuté une manoeuvre à vitesse 3,4 ou 5 durant ce tour, vous pouvez pivoter votre arc de tir mobile.'''
        'Captured TIE':
            name: "TIE capturé"
            text: '''<span class="card-restriction">TIE Fighter only.</span>%REBELONLY%%LINEBREAK%Les vaisseaux ennemis avec une valeur de pilotage inférieur à la vôtre ne peuvent pas vous déclarer comme cible d'une attaque. Après avoir effectué une attaque ou quand vous êtes le seul vaisseau allié restant en jeu, défaussez cette carte.'''
        'Spacetug Tractor Array':
            name: "Dispositif tracteur de remorqueur spatial"
            text: '''<span class="card-restriction">Quadjumper only.</span>%LINEBREAK%<strong>Action:</strong> choisissez un vaisseau situé dans votre arc de tir à distance 1 et assignez-lui un marqueur de rayon tracteur. S'il s'agit d'un vaisseau allié, résolvez l'effet du marqueur de rayon tracteur comme s'il s'agissait d'un vaisseau ennemi.'''
        'Lightweight Frame':
            name: "Châssis allégé"
            text: '''<span class="card-restriction">TIE only.</span>%LINEBREAK%Quand vous défendez, après avoir lancé les dés de défense, s'il y a plus de dés d'attaque que de défense, lancez 1 dé de défense supplémentaire.%LINEBREAK%Vous ne pouvez pas vous équiper de cette carte si votre valeur d'agilité est de "3" ou plus.'''
        'Pulsed Ray Shield':
            text: '''<span class="card-restriction">Rebel and Scum only.</span>%LINEBREAK%Durant la phase de dénouement, vous pouvez recevoir 1 marqueur ionique pour récupérer 1 bouclier (à hauteur de votre valeur de boucliers). Vous ne pouvez vous equiper de cette carte que si votre valeur de boucliers est de "1". '''

    title_translations =
        "Slave I":
            text: """<span class="card-restriction">Firespray-31 uniquement.</span>%LINEBREAK%Votre bandeau d'amélioration gagne l'icône %TORPEDO% ."""
        "Millennium Falcon":
            name: "Faucon Millenium"
            text: """<span class="card-restriction">YT-1300 uniquement.</span>%LINEBREAK%Votre barre d'actions gagne l'icône d'action %EVADE% ."""
        "Moldy Crow":
            text: """<span class="card-restriction">HWK-290 uniquement.</span>%LINEBREAK%Lors de la phase de dénouement, ne retirez pas les marqueurs concentrations inutilisés de votre vaisseau."""
        "ST-321":
            ship: "Navette de classe Lambda"
            text: """<span class="card-restriction">Navette de classe <em>Lambda</em> uniquement.</span>%LINEBREAK%Quand vous verrouillez une cible, vous pouvez verrouiller n'importe quel vaisseau ennemi situé dans la zone de jeu."""
        "Royal Guard TIE":
            ship: "Intercepteur TIE"
            name: "TIE de la Garde royale"
            text: """<span class="card-restriction">TIE Interceptor uniquement.</span>%LINEBREAK%Vous pouvez vous équiper de 2 améliorations Modification différentes (au lieu de 1).%LINEBREAK%Cette carte ne peut pas équiper un vaisseau dont la valeur de pilotage est de "4" ou moins."""
        "Dodonna's Pride":
            ship: "Corvette CR90 (proue)"
            text: """<span class="card-restriction">CR90 fore section uniquement.</span>%LINEBREAK%Quand vous effectuez une action de coordination, vous pouvez choisir 2 vaisseaux alliés (au lieu de 1). Chacun de ces vaisseaux peut effectuer 1 action gratuite."""
        "A-Wing Test Pilot":
            name: "Pilote d'essai sur A-Wing"
            text: """<span class="card-restriction">A-Wing uniquement.</span>%LINEBREAK%Votre bandeau d'amélioration gagne 1 icône d'amélioration %ELITE% .%LINEBREAK%Vous ne pouvez pas équiper 2 cartes amélioration %ELITE% identiques. Vous ne pouvez pas vous équiper de cette carte si votre valeur de pilotage est des "1" ou moins."""
        "Tantive IV":
            ship: "Corvette CR90 (proue)"
            text: """<span class="card-restriction">CR90 (proue) uniquement.</span>%LINEBREAK%Le bandeau d'amélioration de votre proue gagne 1 icône %CREW% et 1 icône %TEAM% d'améliorations supplémentaires."""
        "Bright Hope":
            ship: "Transport moyen GR-75"
            text: """<span class="card-restriction">GR-75 uniquement.</span>%LINEBREAK%Un marqueur de renforcement assigné à votre proue ajoute 2 résultats %EVADE% (au lieu de 1)."""
        "Quantum Storm":
            ship: "Transport moyen GR-75"
            text: """<span class="card-restriction">GR-75 uniquement.</span>%LINEBREAK%Au début de la phase de dénouement, si vous avez 1 marqueur d'énergie ou moins, vous gagnez 1 marqueur d'énergie."""
        "Dutyfree":
            ship: "Transport moyen GR-75"
            text: """<span class="card-restriction">GR-75 uniquement.</span>%LINEBREAK%Quand vous effectuez une action de brouillage, vous pouvez choisir un vaisseau ennemi situé à portée 1-3 (au lieu de portée 1-2)."""
        "Jaina's Light":
            ship: "Corvette CR90 (proue)"
            text: """<span class="card-restriction">CR90 (proue) uniquement.</span>%LINEBREAK%Quand vous défendez, une fois par attaque, si vous recevez une carte de dégâts face visible, vous pouvez la défausser et piocher une autre carte de dégâts face visible."""
        "Outrider":
            text: """<span class="card-restriction">YT-2400 UNIQUEMENT. TITRE</span>%LINEBREAK%Tant que vous êtes équipé d'une carte d'amélioration %CANNON%, vous <strong>ne pouvez pas</strong> effectuer d'attaques d'arme principale et vous pouvez effectuer des attaques d'arme secondaire %CANNON% contre des vaisseaux situés en dehors de votre arc de tir."""
        "Dauntless":
            ship: "Décimateur VT-49"
            text: """<span class="card-restriction">Décimateur VT-49 uniquement.</span>%LINEBREAK%Après avoir exécuté une manœuvre qui vous fait chevaucher un autre vaisseau, vous pouvez effectuer 1 action gratuite. Ensuite, recevez 1 marqueur de stress."""
        "Virago":
            text: """<span class="card-restriction">StarViper uniquement.</span>%LINEBREAK%Votre bandeau d'amélioration gagne les icônes d'amélioration %SYSTEM% et %ILLICIT% .%LINEBREAK%Vous ne pouvez pas vous équiper de cette carte si votre valeur de pilotage est de \"3\" ou moins."""
        '"Heavy Scyk" Interceptor (Cannon)':
            name: 'Intercepteur "Scyk Lourd" (Cannon)'
            ship: "Intercepteur M3-A"
            text: """<span class="card-restriction">Intercepteur M3-A uniquement. Titre.</span>%LINEBREAK%Votre bandeau d'amélioration gagne l'icône d'amélioration %CANNON%, %TORPEDO%, ou %MISSILE% .%LINEBREAK%Augmentez de 1 votre valeur de coque"""
        '"Heavy Scyk" Interceptor (Torpedo)':
            name: 'Intercepteur "Scyk Lourd" (Torpille)'
            ship: "Intercepteur M3-A"
            text: """<span class="card-restriction">Intercepteur M3-A uniquement. Titre.</span>%LINEBREAK%Votre bandeau d'amélioration gagne l'icône d'amélioration %CANNON%, %TORPEDO%, ou %MISSILE% .%LINEBREAK%Augmentez de 1 votre valeur de coque"""
        '"Heavy Scyk" Interceptor (Missile)':
            name: 'Intercepteur "Scyk Lourd" (Missile)'
            ship: "Intercepteur M3-A"
            text: """<span class="card-restriction">Intercepteur M3-A uniquement. Titre.</span>%LINEBREAK%Votre bandeau d'amélioration gagne l'icône d'amélioration %CANNON%, %TORPEDO%, ou %MISSILE% .%LINEBREAK%Augmentez de 1 votre valeur de coque"""
        "IG-2000":
            text: """<span class="card-restriction">Aggressor uniquement.</span>%LINEBREAK%Vous avez la capacité de pilote de chaque autre vaisseau allié avec la carte d'amélioration <em>IG-2000</em> (en plus de votre capacité de pilote)."""
        "BTL-A4 Y-Wing":
            name: "Y-wing BTL-A4"
            text: """<span class="card-restriction">Y-Wing uniquement. Titre.</span>%LINEBREAK%Vous ne pouvez pas attaquer les vaisseaux en dehors de votre arc de tir. Après avoir effectué une attaque d'arme principale, vous pouvez immédiatement effectuer une attaque avec une arme secondaire %TURRET% ."""
        "Andrasta":
            text: """Votre bandeau d'amélioration gagne deux icônes d'amélioration %BOMB% supplémentaires."""
        "TIE/x1": # Traduit de l'anglais
            text: """<span class="card-restriction">TIE Advanced uniquement. Titre.</span>%LINEBREAK%Votre bandeau d'améliorations gagne l'icône d'amélioration %SYSTEM% .%LINEBREAK%Si vous êtes équipé d'une amélioration %SYSTEM%, ses points d'escadron sont réduits de 4 (jusqu'à un minimum de 0)."""
        "Ghost":
            text: """<span class="card-restriction">VCX-100 only.</span>%LINEBREAK%Equipez une navette d'attaque allié de la carte de titre <em>Phantom</em> et arrimez-la à ce vaisseau.%LINEBREAK%Après avoir exécuté une manoeuvre, vous pouvez le déployer le Phantom depuis vos glissières arrière."""
        "Phantom":
            text: """WTant que vous êtes arrimé, le <em>Ghost</em> peut effectuer des attaques d'arme principale depuis de son arc de tir spécial et, à la fin de la phase de combat, il peut effectuer une attaque supplémentaire avec une  équipée. S'il effectue cette attaque, il ne peut pas attaquer à nouveau ce tour."""
        "TIE/v1":
            text: """<span class="card-restriction">TIE Advanced Prototype only.</span>%LINEBREAK%Après avoir verrouillé une cible, vous pouvez effectuer une action d'évasion gratuite."""
        "Mist Hunter":
            text: """<span class="card-restriction">G-1A starfighter only.</span>%LINEBREAK%Votre barre d'action gagne l'icône %BARRELROLL% .%LINEBREAK%Vous devez vous équiper d'1 carte d'amélioration "Rayon tracteur" (en en payant le coût en points d'escadron)."""
        "Punishing One":
            text: """<span class="card-restriction">JumpMaster 5000 only.</span>%LINEBREAK%Augmentez de 1 votre valeur d'arme principale."""
        "Assailer":
            text: """<span class="card-restriction"><em>Raider</em>-class corvette aft section only.</span>%LINEBREAK%When defending, if the targeted section has a reinforce token, you may change 1 %FOCUS% result to a %EVADE% result."""
        "Instigator":
            text: """<span class="card-restriction"><em>Raider</em>-class corvette aft section only.</span>%LINEBREAK%After you perform a recover action, recover 1 additional shield."""
        "Impetuous":
            text: """<span class="card-restriction"><em>Raider</em>-class corvette aft section only.</span>%LINEBREAK%After you perform an attack that destroys an enemy ship, you may acquire a target lock."""
        'TIE/x7':
            ship: "Défenseur TIE"
            text: '''<span class="card-restriction">TIE Defender only.</span>%LINEBREAK%Votre bandeau d'améiloration perd les icônes d'amélioration %CANNON% et %MISSILE% .%LINEBREAK%Après avoir exécuté une manoeuvre à vitesse 3, 4 ou 5, vous pouvez assigner 1 marqueur d'évasion à votre vaisseau.'''
        'TIE/D':
            ship: "Défenseur TIE"
            text: '''<span class="card-restriction">TIE Defender only.</span>%LINEBREAK%Une fois par tour, après avoir effectué une attaque avec une arme secondaire %CANNON% qui coûte 3 points s'escadron ou moins, vous pouvez effectuer une attaque d'arme principale.'''
        'TIE Shuttle':
            name: "Navette TIE"
            ship: "Bombardier TIE"
            text: '''<span class="card-restriction">TIE Bomber only.</span>%LINEBREAK%Votre bandeau d'amélioration perd toutes les icônes d'amélioration %TORPEDO%, %MISSILE%, et %BOMB% et gagne 2 icônes d'amélioration %CREW% . Vous ne pouvez pas vous équiper d'une cartes d'amélioration  qui coûte plus de 4 points d'escadron.'''
        'Requiem':
            text: '''%GOZANTIONLY%%LINEBREAK%When you deploy a ship, treat its pilot skill value as "8" until the end of the round.'''
        'Vector':
            text: '''%GOZANTIONLY%%LINEBREAK%After you execute a maneuver, you may deploy up to 4 attached ships (instead of 2).'''
        'Suppressor':
            text: '''%GOZANTIONLY%%LINEBREAK%Once per round, after you acquire a target lock, you may remove 1 focus, evade, or blue target lock token from that ship.'''
        'Black One':
            text: '''Après avoir effectué une action d'accélération ou de tonneau, vous pouvez retirer un marqueur d'acquisition de cible ennemi d'un vaisseau allié situé à portée 1. Vous ne pouvez pas équiper cette carte si votre valeur de pilotage est de "6" ou moins.'''
        'Millennium Falcon (TFA)':
            name: "Millennium Falcon (HdlR)"
            text: '''Après avoir effectué un virage sur l'aile (%BANKLEFT% or %BANKRIGHT%)à vitesse 3, si vous ne touchez pas un autre vaisseau et si vous n'êtes pas sous l'effet du stress, vous pouvez recevoir un marqueur de stress pour faire pivoter votre vaisseau de 180&deg.'''
        'Alliance Overhaul':
            name: "Révision de l'Alliance"
            text: '''<span class="card-restriction">ARC-170 only.</span>%LINEBREAK%Quand vous attaquez avec une arme principale depuis votre arc de tir principal, vous pouvez lancer 1 dé d'attaque supplémentaire. Quand vous attaquez depuis votre arc de tir auxiliaire, vous pouvez changer 1 de vos résultats %FOCUS% en un résultat %CRIT% .'''
        'Special Ops Training':
            name: "Formation des opérations spéciales"
            text: '''<span class="card-restriction">TIE/sf only.</span>%LINEBREAK%Quand vous attaquez avec une arme principale depuis votre arc de tir principal, vous pouvez lancer 1 dé d'attaque supplémentaire. Si vous ne le faites pas, vous pouvez effectuer une attaque supplémentaire depuis votre arc de tir auxiliaire.'''
        'Concord Dawn Protector':
            text: '''<span class="card-restriction">Protectorate Starfighter only.</span>%LINEBREAK%Quand vous défendez, si vous êtes dans l'arc de tir de l'attaquant et à portée 1 et, que l'attaquant est dans votre arc de tir, ajouter 1 résultat %EVADE% .'''
        'Shadow Caster':
            text: '''<span class="card-restriction">Lancer-class Pursuit Craft only.</span>%LINEBREAK%Après avoir effectué une attaque qui touche, si le défenseur est dans votre arc de tir mobile et à portée 1-2, vous pouvez lui assigner 1 marqueur de rayon tracteur.'''
        # Wave X
        '''Sabine's Masterpiece''':
            name: "Chef-d'oeuvre de Sabine"
            ship: "Chasseur TIE"
            text: '''<span class="card-restriction">TIE Fighter only.</span>%REBELONLY%%LINEBREAK%Votre bandeau d'amélioration gagne les icônes d'amélioration %CREW% et %ILLICIT% .'''
        '''Kylo Ren's Shuttle''':
            name: "Navette de Kylo Ren"
            text: '''<span class="card-restriction">Upsilon-class Shuttle only.</span>%LINEBREAK%A la fin de la phase de combat, choisissez un vaisseau ennemi situé à portée 1-2 qui n'est pas sous l'effet du stress. Son propriétaire doit lui assigner un marqueur de stress ou assigner un marqueur de stress à un autre vaisseau situé à portée 1-2 de vous que ce joueur contrôle.'''
        '''Pivot Wing''':
            name: "Aile pivot"
            text: '''<span class="card-restriction">U-Wing only.</span> %DUALCARD%%LINEBREAK%<strong>Side A (Attack):</strong> Augmentez de 1 votre valeur d'agilité.%LINEBREAK%Après avoir exécuté une manoeuvre, vous pouvez retourner cette carte.%LINEBREAK%<strong>Side B (Landing):</strong> Quand vous révélez une manoeuvre (0 %STOP%) , vous pouvez faire pivoter votre vaisseau à 180&deg;.%LINEBREAK%Après avoir effectué une manoeuvre, vous pouvez retourner cette carte.'''
        '''Adaptive Ailerons''':
            name: "Ailerons adaptables"
            text: '''<span class="card-restriction">TIE Striker only.</span>%LINEBREAK%Juste avant de révéler votre manoeuvre, si vous n'êtes pas sous l'effet du stress, vous <strong>devez</strong> exécuter une manoeuvre blanche (%BANKLEFT% 1), (%STRAIGHT% 1), ou (%BANKRIGHT% 1) .'''
        # C-ROC
        '''Merchant One''':
            text: '''<span class="card-restriction">C-ROC Cruiser only.</span>%LINEBREAK%Your upgrade bar 1 additional %CREW% upgrade icon and 1 additional %TEAM% upgrade icon and loses 1 %CARGO% upgrade icon.'''
        '''"Light Scyk" Interceptor''':
            ship: "Intercepteur M3-A"
            name: 'Intercepteur "Scyk Léger"'
            text: '''<span class="card-restriction">M3-A Interceptor only.</span>%LINEBREAK%Toutes les cartes de dégâts qui vous sont assignées le sont face visible. vous pouvez considérer toutes les manoeuvres de virage sur l'aile (%BANKLEFT% ou %BANKRIGHT%) comme des manoeuvres vertes. Vous ne pouvez pas vous equiper d'améliorations Modification.'''
        '''Insatiable Worrt''':
            text: '''After you perform the recover action, gain 3 energy.'''
        '''Broken Horn''':
            text: '''When defending, if you have a reinforce token, you may add 1 additional %EVADE% result.  If you do, after defending, discard your reinforce token.'''
        'Havoc':
            text: '''<span class="card-restriction">Scurrg H-6 Bomber only.</span>%LINEBREAK%Votre bandeau d'amélioration gagne les icones %SYSTEM% et %SALVAGEDASTROMECH% et perd l'icone d'amélioration %CREW% .%LINEBREAK%Vous ne pouvez pas vous equiper de cartes d'amélioration %SALVAGEDASTROMECH% non uniques.'''
        'Vaksai':
            text: '''<span class="card-restriction">Kihraxz Fighter only.</span>%LINEBREAK%The squad point cost of each of your equipped upgrades is reduced by 1 (to a minimum of 0).%LINEBREAK%You may equip up to 3 different Modification upgrades.'''
        'StarViper Mk. II':
            text: '''<span class="card-restriction">StarViper only.</span>%LINEBREAK%You may equip up to 2 different title Upgrades.%LINEBREAK%When performing a barrel roll action, you <strong>must</strong> use the (%BANKLEFT% 1) or (%BANKRIGHT% 1) template instead of the (%STRAIGHT% 1) template.'''

    condition_translations =
        '''I'll Show You the Dark Side''':
            name: "Je vous montrerai le coté obscur"
            text: '''Quand cette carte est assignée, si elle n'est pas déjà en jeu, le joueur qui l'a assignée cherche 1 carte de dégats avec le trait <strong><em>Pilote</em></strong> dans le paquet de dégâts et peut la placer face visible sur cette carte. puis melangez le paquet de dégâts%LINEBREAK%Quand vous subissez une dégat critique durant une attaque, vous vous voyez assigner ca carte de dégât face visible choisie. %LINEBREAK%quand il n'y a aucune carte de dégâts sur cette carte, retirez la'''
        'Suppressive Fire':
            name: "Tir de suppression"
            text: '''Quand vous attaquez un vaisseau autre que "Capitaine Rex", lancez 1 dé d'attaque de moins.%LINEBREAK% Quand vous déclarez une attaque ciblant "Capitaine Rex" ou quand "Capitaine Rex" est détruit, retirez cette carte.%LINEBREAK%A la fin de la phase de combat, si "Capitaine Rex" n'a pas effectué d'attaque au cours de cette phase, retirez cette carte'''
        'Fanatical Devotion':
            name: "Dévouement fanatique"
            text: '''Quand vous défendez, vous ne pouvez pas dépenser de marqueurs concentration%LINEBREAK%Quand vous attaquez, si vous dépensez un marqueur de concentration pour changer tous vos résultats %FOCUS% en résultats %HIT%,mettez de coté le premier résultat %FOCUS% que vous changez. Le résultat %HIT% mis de coté ne peut pas être annulé par des dés de défense, mais le défenseur peut annuler des résultats %CRIT% avant lui.%LINEBREAK%Durant la phase de dénouement, retirez cette carte.'''
        'A Debt to Pay':
            name: "Une dette a payer"
            text: '''Quand vous attaquez un vaisseau qui a la carte d'amélioration "Un compte a régler", vous pouvez chancger 1 résultat %FOCUS% en résultat %CRIT% .'''
        'Shadowed':
            text: '''"Thweek" is treated as having the pilot skill value you had after setup.%LINEBREAK%The pilot skill value of "Thweek" does not change if your pilot skill value changes or you are destroyed.'''
        'Mimicked':
            text: '''"Thweek" is treated as having your pilot ability.%LINEBREAK%"Thweek" cannot apply a Condition card by using your pilot ability.%LINEBREAK%"Thweek" does not lose your pilot ability if you are destroyed.'''

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations, condition_translations
