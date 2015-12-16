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
        '.view-as-text' : '<span class="hidden-phone"><i class="icon-print"></i>&nbsp;Imprimer/Afficher commme </span>Texte'
        '.randomize' : 'Aléatoire'
        '.randomize-options' : 'Options…'
        '.notes-container > span' : 'Squad Notes'
        # Print/View modal
        '.bbcode-list' : 'Copiez le BBCode ci-dessous et collez-le dans votre post.<textarea></textarea><button class="btn btn-copy">Copiez</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Copiez</button>'
        '.vertical-space-checkbox' : """Ajouter de l'espace pour les cartes d'amélioration et de dégâts lors de l'impression <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Imprimer en couleur <input type="checkbox" class="toggle-color-print" />"""
        '.print-list' : '<i class="icon-print"></i>&nbsp;Imprimer'
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
            text: """Quand vous attaquez à portée 1, vous pouvez échanger 1 de vos résultats %HIT% contre 1 résultat %CRIT%."""
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
            text: """Quand vous attaquez, le défenseur reçoit 1 marqueur de stress s'il annule au moins 1 résultat %CRIT%."""
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
            text: """Quand vous attaquez à portée 1-2, vous pouvez changer 1 de vos résultats %FOCUS% en résultat %CRIT%."""
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
            text: """Quand vous défendez, vous pouvez échanger 1 de vos résultats %FOCUS% contre un résultat %EVADE%."""
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
            text: """Quand un vaisseau ennemi située dans votre arc de tir et à portée 1-3 se défend, l'attaquant peut changer 1 des ses résultats %HIT% en résultat %CRIT%."""
        "Corran Horn":
            text: """Au début de la phase de dénouement, vous pouvez effectuer une attaque. Vous ne pouvez pas attaquer au tour suivant."""
        # As Rebelles
        "Jake Farrell":
            text: """Après avoir effectué une action de concentration ou reçu un marqueur de concentration, vous pouvez effectuer une action gratuite d'accélération ou de tonneau."""
        "Gemmer Sojan":
            text: """Tant que vous êtes à portée 1 d'au moins 1 vaisseau ennemi, augmentez de 1 votre valeur d'agilité."""
        "Keyan Farlander":
            text: """Quand vous attaquez, vous pouvez retirer 1 marqueur de stress pour changer tous vos résultats %FOCUS% en résultats %HIT%."""
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
        "Kaa'To Leeachos":
            ship: "Chasseur de têtes Z-95"
            text: """Au début de la phase de combat, vous pouvez enlever 1 marqueur de concentration ou d'évasion d'un autre vaisseau allié situé à portée 1-2 et vous l'assigner."""
        "Latts Razzi":
            text: """When a friendly ship declares an attack, you may spend a target lock you have on the defender to reduce its agility by 1 for that attack."""
        "Graz the Hunter":
            text: """When defending, if the attacker is inside your firing arc, roll 1 additional defense die."""
        "Esege Tuketu":
            text: """When another friendly ship at Range 1-2 is attacking, it may treat your focus tokens as its own."""
        '"Redline"':
            text: """You may maintain 2 target locks on the same ship.  When you acquire a target lock, you may acquire a second lock on that ship."""
        '"Deathrain"':
            text: """When dropping a bomb, you may use the front guides of your ship.  After dropping a bomb, you may perform a free barrel roll action."""
        "Moralo Eval":
            text: """You can perform %CANNON% secondary attacks against ships inside your auxiliary firing arc."""
        'Gozanti-class Cruiser':
            text: """After you execute a maneuver, you may deploy up to 2 attached ships."""
        '"Scourge"':
            text: """When attacking a defender that has 1 or more Damage cards, roll 1 additional attack die."""
        "The Inquisitor":
            text: """When attacking with your primary weapon at Range 2-3, treat the range of the attack as Range 1."""
        "Zuckuss":
            text: """When attacking, you may roll 1 additional attack die.  If you do, the defender rolls 1 additional defense die."""
        "Dengar":
            text: """Once per round after defending, if the attacker is inside your firing arc, you may perform an attack against the that ship."""
        # T-70
        "Poe Dameron":
            text: """When attacking or defending, if you have a focus token, you may change 1 of your %FOCUS% results to a %HIT% or %EVADE% result."""
        '"Blue Ace"':
            text: """When performing a boost action, you may use the (%TURNLEFT% 1) or (%TURNRIGHT% 1) template."""
        # TIE/fo
        '"Omega Ace"':
            text: """When attacking, you may spend a focus token and a target lock you have on the defender to change all of your results to %CRIT% results."""
        '"Epsilon Leader"':
            text: """At the start of the Combat phase, remove 1 stress token from each friendly ship at Range 1."""
        '"Zeta Ace"':
            text: """When performing a barrel roll you may use the (%STRAIGHT% 2) template instead of the (%STRAIGHT% 1) template."""
        '"Red Ace"':
            text: '''The first time you remove a shield token from your ship each round, assign 1 evade token to your ship.'''
        '"Omega Leader"':
            text: '''Enemy ships that you have locked cannot modify any dice when attacking you or defending against your attacks.'''
        'Hera Syndulla':
            text: '''When you reveal a green or red maneuver, you may rotate your dial to another maneuver of the same difficulty.'''
        '"Youngster"':
            text: """Friendly TIE fighters at Range 1-3 may perform the action on your equipped %ELITE% Upgrade card."""
        '"Wampa"':
            text: """When attacking, you may cancel all die results.  If you cancel a %CRIT% result, deal 1 facedown Damage card to the defender."""
        '"Chaser"':
            text: """When another friendly ship at Range 1 spends a focus token, assign a focus token to your ship."""
        'Ezra Bridger':
            text: """When defending, if you are stressed, you may change 2 of your %FOCUS% results to %EVADE% results."""
        '"Zeta Leader"':
            text: '''When attacking, if you are not stressed, you may receive 1 stress token to roll 1 additional die.'''
        '"Epsilon Ace"':
            text: '''While you do not have any Damage cards, treat your pilot skill value as "12."'''
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
        'Ello Asty':
            text: '''While you are not stressed, you may treat your %TROLLLEFT% and %TROLLRIGHT% maneuvers as white maneuvers.'''

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
            text: """<strong>Action :</strong> en attaquant ce tour-ci, vous pouvez échanger 1 de vos résultats %FOCUS% contre 1 résultat %CRIT%, et tous vos autres résultats %FOCUS% contre des résultats %HIT%."""
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
            text: """Quand vous attaquez, vous pouvez dépenser un marqueur de concentration pour changer 1 de vos résultats %FOCUS% en un résultat %CRIT%."""
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
            text: """Votre bandeau d'amélioration gagne l'icône d'amélioration %ELITE%.%LINEBREAK%Vous ne pouvez pas équiper cette amélioration si vous avez déjà une icône d'amélioration %ELITE% ou si votre valeur de pilotage est de "2" ou moins."""
        # Torpilles
        "Proton Torpedoes":
            name: "Torpilles à protons"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Vous pouvez échanger 1 de vos résultats %FOCUS% contre 1 résultat %CRIT%."""
        "Advanced Proton Torpedoes":
            name: "Torpilles à protons avancées"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Vous pouvez échanger jusqu'à 3 de vos résultats vierge contre autant de résultats %FOCUS%."""
        "Flechette Torpedoes":
            name: "Torpilles fléchettes"
            text: """<strong>Attaque (acquisition de cible) :</strong> défaussez cette carte et dépensez votre acquisition de cible pour effectuer cette attaque.%LINEBREAK%Après que vous avez effectué cette attaque, le défenseur reçoit 1 marqueur de stress si sa valeur de coque est de "4" ou moins."""
        "Ion Torpedoes": # Traduction non officielle
            name: "Torpilles ioniques"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Si cette attaique touche, le défenseur et chaque vaisseau situé à portée 1 de celui-ci reçoit 1 marqueur ionique."""
        "Bomb Loadout":
            name: "Chargement de bombes"
            text: """<span class="card-restriction">Y-Wing uniquement. Limité.</span>%LINEBREAK%Votre bandeau d'amélioration gagne l'icone d'amélioration %BOMB%."""
        # Tourelles
        "Ion Cannon Turret":
            name: "Tourelles à canons ioniques"
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau (même s'il se situe en dehors de votre arc de tir).%LINEBREAK%Si cette attaque touche la cible, cette dernière subit 1 dégât et reçoit 1 marqueur ionique. Ensuite, annulez tous les résultats des dés."""
        "Blaster Turret":
            name: "Tourelles blaster"
            text: """<strong>Attaque (concentration) :</strong> dépensez un marqueur concentration pour effectuer cette attaque contre 1 vaisseau (même s'il se situe en dehors de votre arc de tir)."""
        "Autoblaster Turret":
            name: "Tourelle autoblaster"
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau (même s'il se trouve en dehors de votre arc de tir).%LINEBREAK%Vos résultats %HIT% ne peuvent pas être annulés par des dés de défense. Le défenseur peut annuler les résultats %CRIT% avant les résultats %HIT%."""
        # Missiles
        "Concussion Missiles":
            name: "Missiles à concussion"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.%LINEBREAK%Vous pouvez échanger 1 de vos résultats vierges contre 1 résultat %HIT%."""
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
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau.%LINEBREAK%Juste après avoir lancé vos dés d'attaque, vous devez changer tous vos résultats %CRIT% en résultats %HIT%."""
        "Autoblaster":
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau.%LINEBREAK%Vos résultats %HIT% ne peuvent pas être annulés par des dés de défense. Le défenseur peut annuler les résultats %CRIT% avant les résultats %HIT%."""
        "Flechette Cannon":
            name: "Canon à fléchettes"
            text: """<strong>Attaque :</strong> Attaquez 1 vaisseau.%LINEBREAK%Si cette attaque touche, le défenseur subit 1 dégât et, si le défenseur n'est pas sous l'effet du stress, il reçoit aussi 1 marqueur de stress. Ensuite, annulez le résultat de <strong>tous</strong> les dés."""
        '"Mangler" Cannon':
            name: "Canon \"Lacérateur\""
            text: """<strong>Attaque :</strong> Attaquez 1 vaisseau.%LINEBREAK% Quand vous attaquez, vous pouvez échanger 1 de vos résultats %HIT% contre 1 résultat %CRIT%."""
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
            text: """Quand vous défendez, vous pouvez changer un des résultats %HIT% de l'attaquant en résultat %FOCUS%. L'attaquant ne peut pas relancer le dés au résultat modifié."""
        "Accuracy Corrector":
            name: "Correcteur de Précision"
            text: """Quand vous attaquez, vous pouvez annuler le résultat de tous vos dés. Puis, vous pouvez ajouter 2 résultats %HIT%.%LINEBREAK%Vos dés ne peuvent pas être modifiés à nouveau lors de cette attaque."""
        # Équipages
        "Gunner":
            name: "Cannonier"
            text: """Après avoir effectué une attaque qui ne touche pas, vous pouvez effectuer immédiatement une attaque d'arme principale. Vous ne pouvez pas effectuer d'autre attaque ce tour-ci."""
        "Mercenary Copilot":
            name: "Copilote mercenaire"
            text: """Quand vous attaquez à portée 3, vous pouvez échanger 1 de vos résultats %HIT% contre 1 résultat %CRIT%."""
        "Weapons Engineer":
            name: "Ingénieur en armement"
            text: """Vous pouvez verrouiller 2 cibles (1 seule acquisition de cible par vaisseau ennemi).%LINEBREAK%Quand vous verrouillez une cible, vous pouvez verrouiller 2 vaisseaux différents."""
        "Luke Skywalker":
            text: """%FR_REBELONLY%%LINEBREAK%Quand vous effectuez une attaque qui ne touche pas, effectuez aussitôt une attaque d'arme principale. Vous pouvez échanger un résultat %FOCUS% contre 1 résultat %HIT%. Vous ne pouvez pas effectuer d'autre attaque ce tour-ci."""
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
            text: """Quand vous défendez, vous pouvez relancer 1 de vos résultats %FOCUS%. Si la valeur de pilotage de l'attaquant est de 2 ou moins, vous pouvez relancer 1 de vos résultats vierges à la place."""
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
            text: """%FR_REBELONLY%%LINEBREAK%Quand vous attaquez, si vous avez verrouillé le défenseur, vous pouvez dépenser ce marqueur d'acquisition de cible pour changer tous vos résultats %FOCUS% en résultats %HIT%."""
        "Leia Organa":
            text: """%FR_REBELONLY%%LINEBREAK%Au début de la phase d'activation, vous pouvez défausser cette carte pour permettre à tous les vaisseaux alliés qui dévoilent une manœuvre rouge de considérer cette dernière comme une manœuvre blanche jusqu'à la fin de la phase."""
        "WED-15 Repair Droid":
            name: "Droïde de réparation WED-15"
            text: """%FR_HUGESHIPONLY% %FR_REBELONLY%%LINEBREAK%<strong>Action :</strong> dépensez 1 énergie pour défausser 1 de vos cartes de dégâts face cachée, ou dépensez 3 énergie pour défausser 1 de vos cartes de dégâts face visible."""
        "Carlist Rieekan":
            text: """%FR_HUGESHIPONLY% %FR_REBELONLY%%LINEBREAK%Au début de la phase d'activation, vous pouvez défausser cette carte pour traiter la valeur de pilotage de chaque vaisseau allié comme si elle s'élevait à "12", jusqu'à la fin de la phase."""
        "Jan Dodonna":
            text: """%FR_HUGESHIPONLY% %FR_REBELONLY%%LINEBREAK%Quand un autre vaisseau allié situé à portée 1 attaque, il peut échanger 1 de ses résultats %HIT% contre un résultat %CRIT%."""
        "Tactician":
            name: "Tacticien"
            text: "Après que vous avez effectué une attaque contre un vaisseau situé dans votre arc de tir à portée 2, ce vaisseau reçoit 1 marqueur de stress."
        "R2-D2 (Crew)":
            name: "R2-D2 (Équipage)"
            text: """%FR_REBELONLY%%LINEBREAK%À la fin de la phase de dénouement, si vous n'avez pas de boucliers, vous pouvez récupérer 1 bouclier et lancer 1 dé d'attaque. Sur un résultat %HIT%, prenez au hasard 1 de vos cartes de dégâts face cachée, retournez-la et résolvez-la."""
        "C-3PO":
            name: "Z-6PO"
            text: """%FR_REBELONLY%%LINEBREAK%Une fois par tour, avant de lancer 1 ou plusieurs dés de défense, vous pouvez tenter d'en deviner à voix haute le nombre de résultats %EVADE%. Si vous obtenez le nombre annoncé (avant de modifier des dés), ajoutez 1 résultat %EVADE%."""
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
        # Point d'Attache
        "Single Turbolasers":
            name: "Turbolaser"
            text: """<strong>Attaque (énergie) :</strong> dépensez 2 énergie de cette carte pour effectuer cette attaque. Le défenseur double sa valeur d'agilité contre cette attaque. Vous pouvez changer 1 de vos résultats %FOCUS% en résultat %HIT%."""
        "Quad Laser Cannons":
            name: "Canons quadrilaser"
            text: """<strong>Attaque (énergie) :</strong> dépensez 1 énergie de cette carte pour effectuer cette attaque. Si cette attaque ne touche pas, vous pouvez aussitôt dépenser 1 énergie de cette carte pour effectuer à nouveau cette attaque."""
        # Équipe
        "Gunnery Team":
            name: "Équipe d'artilleurs"
            text: """Une fois par tour, quand vous attaquez avec une arme secondaire, vous pouvez dépenser 1 énergie pour change 1 de vos résultats vierges en résultat %HIT%."""
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
            text: """%IMPERIALONLY%%LINEBREAK%Once per round, you may change a friendly ship's die result to any other die result.  That die result cannot be modified again."""
        "Bossk":
            text: """%SCUMONLY%%LINEBREAK%After you perform an attack that does not hit, if you are not stressed, you <strong>must</strong> receive 1 stress token. Then assign 1 focus token to your ship and acquire a target lock on the defender."""
        "Lightning Reflexes":
            text: """%SMALLSHIPONLY%%LINEBREAK%After you execute a white or green maneuver on your dial, you may discard this card to rotate your ship 180&deg;.  Then receive 1 stress token <strong>after</strong> the "Check Pilot Stress" step."""
        "Twin Laser Turret":
            text: """<strong>Attack:</strong> Perform this attack <strong>twice</strong> (even against a ship outside your firing arc).<br /><br />Each time this attack hits, the defender suffers 1 damage.  Then cancel <strong>all</strong> dice results."""
        "Plasma Torpedoes":
            text: """<strong>Attack (target lock):</strong> Spend your target lock and discard this card to perform this attack.<br /><br />If this attack hits, after dealing damage, remove 1 shield token from the defender."""
        "Ion Bombs":
            text: """When you reveal your maneuver dial, you may discard this card to <strong>drop</strong> 1 ion bomb token.<br /><br />This token <strong>detonates</strong> at the end of the Activation phase.<br /><br /><strong>Ion Bombs Token:</strong> When this bomb token detonates, each ship at Range 1 of the token receives 2 ion tokens.  Then discard this token."""
        "Conner Net":
            text: """<strong>Action:</strong> Discard this card to <strong>drop</strong> 1 Conner Net token.<br /><br />When a ship's base or maneuver template overlaps this token, this token <strong>detonates</strong>.<br /><br /><strong>Conner Net Token:</strong> When this bomb token detonates, the ship that moved through or overlapped this token suffers 1 damage, receives 2 ion tokens, and skips its "Perform Action" step.  Then discard this token."""
        "Bombardier":
            text: """When dropping a bomb, you may use the (%STRAIGHT% 2) template instead of the (%STRAIGHT% 1) template."""
        "Cluster Mines":
            text: """<strong>Action:</strong> Discard this card to <strong>drop</strong> 3 cluster mine tokens.<br /><br />When a ship's base or maneuver template overlaps a cluster mine token, that token <strong>detonates</strong>.<br /><br /><strong>Cluster Mines Tokens:</strong> When one of these bomb tokens detonates, the ship that moved through or overlapped this token rolls 2 attack dice and suffers all damage (%HIT%) rolled.  Then discard this token."""
        'Crack Shot':
            text: '''When attacking a ship inside your firing arc, you may discard this card to cancel 1 of the defender's %EVADE% results.'''
        "Advanced Homing Missiles":
            text: """<strong>Attack (target lock):</strong> Discard this card to perform this attack.%LINEBREAK%If this attack hits, deal 1 faceup Damage card to the defender.  Then cancel <strong>all</strong> dice results."""
        'Agent Kallus':
            text: '''%IMPERIALONLY%%LINEBREAK%At the start of the first round, choose 1 enemy small or large ship.  When attacking or defending against that ship, you may change 1 of your %FOCUS% results to a %HIT% or %EVADE% result.'''
        'XX-23 S-Thread Tracers':
            text: """<strong>Attack (focus):</strong> Discard this card to perform this attack.  If this attack hits, each friendly ship at Range 1-2 of you may acquire a target lock on the defender.  Then cancel <strong>all</strong> dice results."""
        "Tractor Beam":
            text: """<strong>Attack:</strong> Attack 1 ship.%LINEBREAK%If this attack hits, the defender receives 1 tractor beam token.  Then cancel <strong>all</strong> dice results."""
        "Cloaking Device":
            text: """%SMALLSHIPONLY%%LINEBREAK%<strong>Action:</strong> Perform a free cloak action.%LINEBREAK%At the end of each round, if you are cloaked, roll 1 attack die.  On a %FOCUS% result, discard this card, then decloak or discard your cloak token."""
        "Shield Technician":
            text: """%HUGESHIPONLY%%LINEBREAK%When you perform a recover action, instead of spending all of your energy, you can choose any amount of energy to spend."""
        "Weapons Guidance":
            text: """When attacking, you may spend a focus token to change 1 of your blank results to a %HIT% result."""
        "BB-8":
            text: """When you reveal a green maneuver, you may perform a free barrel roll action."""
        "R5-X3":
            text: """Before you reveal your maneuver, you may discard this card to ignore obstacles until the end of the round."""
        "Wired":
            text: """When attacking or defending, if you are stressed, you may reroll 1 or more of your %FOCUS% results."""
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
            text: """Votre barre d'actions gagne l'icône d'action %BOOST%."""
        "Anti-Pursuit Lasers":
            name: "Lasers antipoursuite"
            text: """%FR_LARGESHIPONLY%Quand un vaisseau ennemi exécute une manœuvre qui l'oblige à chevaucher votre appareil, lancez 1 dé d'attaque. Sur un résultat %HIT% ou %CRIT%, le vaisseau ennemi subit 1 dégât."""
        "Targeting Computer":
            name: "Ordinateur de visée"
            text: """Votre barre d'action gagne l'icône d'action %TARGETLOCK%."""
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
            text: """<span class="card-restriction">B-Wing uniquement.</span>%LINEBREAK%Votre bandeau d'améliorations gagne l'icône d'amélioration %CREW%."""
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
            text: """Quand vous défendez, si vous êtes au-delà de la portée 2 ou en dehors de l'arc de tir de l'attaquant, vous pouvez changer 1 de vos résultats vierges en un résultat %EVADE%. Vous ne pouvez vous équiper de cette carte que si vous avez l'icône d'action %BOOST%."""
        "Twin Ion Engine Mk. II":
            text: """You may treat all bank maneuvers (%BANKLEFT% and %BANKRIGHT%) as green maneuvers."""
        "Maneuvering Fins":
            text: """When you reveal a turn maneuver (%TURNLEFT% or %TURNRIGHT%), you may rotate your dial to the corresponding bank maneuver (%BANKLEFT% or %BANKRIGHT%) of the same speed."""
        "Ion Projector":
            text: """%LARGESHIPONLY%%LINEBREAK%After an enemy ship executes a maneuver that causes it to overlap your ship, roll 1 attack die.  On a %HIT% or %CRIT% result, the enemy ship receives 1 ion token."""
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

    title_translations =
        "Slave I":
            text: """<span class="card-restriction">Firespray-31 uniquement.</span>%LINEBREAK%Votre bandeau d'amélioration gagne l'icône %TORPEDO%."""
        "Millennium Falcon":
            name: "Faucon Millenium"
            text: """<span class="card-restriction">YT-1300 uniquement.</span>%LINEBREAK%Votre barre d'actions gagne l'icône d'action %EVADE%."""
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
            text: """<span class="card-restriction">A-Wing uniquement.</span>%LINEBREAK%Votre bandeau d'amélioration gagne 1 icône d'amélioration %ELITE%.%LINEBREAK%Vous ne pouvez pas équiper 2 cartes amélioration %ELITE% identiques. Vous ne pouvez pas vous équiper de cette carte si votre valeur de pilotage est des "1" ou moins."""
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
            text: """<span class="card-restriction">StarViper uniquement.</span>%LINEBREAK%Votre bandeau d'amélioration gagne les icônes d'amélioration %SYSTEM% et %ILLICIT%.%LINEBREAK%Vous ne pouvez pas vous équiper de cette carte si votre valeur de pilotage est de \"3\" ou moins."""
        '"Heavy Scyk" Interceptor (Cannon)':
            name: 'Intercepteur "Scyk Lourd" (Cannon)'
            ship: "Intercepteur M3-A"
            text: """<span class="card-restriction">Intercepteur M3-A uniquement. Titre.</span>%LINEBREAK%Votre bandeau d'amélioration gagne l'icône d'amélioration %CANNON%, %TORPEDO%, ou %MISSILE%."""
        '"Heavy Scyk" Interceptor (Torpedo)':
            name: 'Intercepteur "Scyk Lourd" (Torpille)'
            ship: "Intercepteur M3-A"
            text: """<span class="card-restriction">Intercepteur M3-A uniquement. Titre.</span>%LINEBREAK%Votre bandeau d'amélioration gagne l'icône d'amélioration %CANNON%, %TORPEDO%, ou %MISSILE%."""
        '"Heavy Scyk" Interceptor (Missile)':
            name: 'Intercepteur "Scyk Lourd" (Missile)'
            ship: "Intercepteur M3-A"
            text: """<span class="card-restriction">Intercepteur M3-A uniquement. Titre.</span>%LINEBREAK%Votre bandeau d'amélioration gagne l'icône d'amélioration %CANNON%, %TORPEDO%, ou %MISSILE%."""
        "IG-2000":
            text: """<span class="card-restriction">Aggressor uniquement.</span>%LINEBREAK%Vous avez la capacité de pilote de chaque autre vaisseau allié avec la carte d'amélioration <em>IG-2000</em> (en plus de votre capacité de pilote)."""
        "BTL-A4 Y-Wing":
            name: "Y-wing BTL-A4"
            text: """<span class="card-restriction">Y-Wing uniquement. Titre.</span>%LINEBREAK%Vous ne pouvez pas attaquer les vaisseaux en dehors de votre arc de tir. Après avoir effectué une attaque d'arme principale, vous pouvez immédiatement effectuer une attaque avec une arme secondaire %TURRET%."""
        "Andrasta":
            text: """Votre bandeau d'amélioration gagne deux icônes d'amélioration %BOMB% supplémentaires."""
        "TIE/x1": # Traduit de l'anglais
            text: """<span class="card-restriction">TIE Advanced uniquement. Titre.</span>%LINEBREAK%Votre bandeau d'améliorations gagne l'icône d'amélioration %SYSTEM%.%LINEBREAK%Si vous êtes équipé d'une amélioration %SYSTEM%, ses points d'escadron sont réduits de 4 (jusqu'à un minimum de 0)."""
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
        "Assailer":
            text: """<span class="card-restriction"><em>Raider</em>-class corvette aft section only.</span>%LINEBREAK%When defending, if the targeted section has a reinforce token, you may change 1 %FOCUS% result to a %EVADE% result."""
        "Instigator":
            text: """<span class="card-restriction"><em>Raider</em>-class corvette aft section only.</span>%LINEBREAK%After you perform a recover action, recover 1 additional shield."""
        "Impetuous":
            text: """<span class="card-restriction"><em>Raider</em>-class corvette aft section only.</span>%LINEBREAK%After you perform an attack that destroys an enemy ship, you may acquire a target lock."""
        'TIE/x7':
            text: '''<span class="card-restriction">TIE Defender only.</span>%LINEBREAK%Your upgrade bar loses the %CANNON% and %MISSILE% upgrade icons.%LINEBREAK%After executing a 3-, 4-, or 5-speed maneuver, you may assign 1 evade token to your ship.'''
        'TIE/D':
            text: '''<span class="card-restriction">TIE Defender only.</span>%LINEBREAK%Once per round, after you perform an attack with a %CANNON% secondary weapon that costs 3 or fewer squad points, you may perform a primary weapon attack.'''
        'TIE Shuttle':
            text: '''<span class="card-restriction">TIE Bomber only.</span>%LINEBREAK%Your upgrade bar loses all %TORPEDO%, %MISSILE%, and %BOMB% upgrade icons and gains 2 %CREW% upgrade icons.  You cannot equip a %CREW% Upgrade card that costs more than 4 squad points.'''

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations
