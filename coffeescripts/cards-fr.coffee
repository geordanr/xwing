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
    ui:
        shipSelectorPlaceholder: "Choisissez un vaisseau"
        pilotSelectorPlaceholder: "Choisissez un pilote"
        upgradePlaceholder: (translator, language, slot) ->
            "Amélioration #{translator language, 'slot', slot}"
        modificationPlaceholder: "Modification"
        titlePlaceholder: "Titre"
        upgradeHeader: (translator, language, slot) ->
            "Amélioration #{translator language, 'slot', slot}"
        unreleased: "non disponible"
        epic: "épique"
    byCSSSelector:
        '.xwing-card-browser .translate.sort-cards-by': 'Trier les cartes par'
        '.xwing-card-browser option[value="name"]': 'Nom'
        '.xwing-card-browser option[value="source"]': 'Source'
        '.xwing-card-browser option[value="type-by-points"]': 'Type (par Points)'
        '.xwing-card-browser option[value="type-by-name"]': 'Type (par Nom)'
        '.xwing-card-browser .translate.select-a-card': 'Sélectionnez une carte depuis la liste sur la guache.'
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
    

    # Names don't need updating, but text needs to be set
    pilot_translations =
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
            text: """Quand vous attque en dehors de l'arc de tir du défenseur, lancez 1 dé d'attaque supplémentaire."""
        '"Dark Curse"':
            ship: "Chasseur TIE"
            text: """Quand vous défendez, les vaisseaux qui vous attquent ne peuvent ni utiliser de marquers de concentration, ni relancer les dés d'attaque."""
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
            text: """Quand vous attaquez à portée 2-3, vous pouvez dépenser 1 marqueur d'évasion pour ajouter 1 résultat %HIT% result à votre jet."""
        "Tetran Cowall":
            ship: "Intercepteur TIE"
            text: """Quand vous révélez une manœuvre %UTURN% maneuver, vous pouvez considérer la vitesse de celle-ci comme "1", "3" ou "5"."""
        "Turr Phennir":
            ship: "Intercepteur TIE"
            text: """Après avoir effectué une attaque, vous pouvez effectuer une action gratuite d'accélération ou de tonneau."""
        "Carnor Jax":
            ship: "Intercepteur TIE"
            text: """Les vaisseaux ennemis situés à portée 1 ne peuvent pas effectuer d'actions de concentration ou d'évasion, et ne peuvent pas dépenser de marqueur de concentration ou d'évasion."""
        "Soontir Fel":
            ship: "Intercepteur TIE"
            text: """When you receive a stress token, you may assign 1 focus token to your ship."""
        "Lieutenant Blount":
            text: """When attacking, the defender is hit by your attack, even if he does not suffer any damage."""
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
            text: """Quand vous attaquez, juste après avoir lancé les dés d'attaque, vous pouvez vérouiller le défenseur s'il a déjà un marqueur d'acquisition de cible rouge."""
        "Rexler Brath":
            ship: "Défenseur TIE"
            text: """Après avoir effectué une attque qui inflige au moins 1 carte de dégâts au défenseur, vous pouvez dépenser 1 marqueur de concentration pour retourner ces cartes face visible."""
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
        "Rear Admiral Chiraneau":
            ship: "Décimateur VT-49"
            name: "Vice-Amiral Chiraneau"
            text: """Quand vous attaquez à portée 1-2, vous pouvez échanger 1 de vos résultats %FOCUS% contre un résultat %CRIT%."""
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
            name: "Pilote de l'escadron Bleu"
        "Blue Squadron Pilot":
            name: "Pilote de l'escadron Dague"
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
            text: """Au début de la phase de dénouement, vous pouvez effectuer une attauqe. Vous ne pouvez pas attaquer au tour suivant."""
        # As Rebelles
        "Jake Farrell":
            text: """Après avoir effectué une action de concentration ou reçu un marqueur de concentration, vous pouvez effectuer une action gratuite d'accélération ou de tonneau."""
        "Gemmer Sojan": # Traduction non officielle
            text: """Tant que vous êtes à portée 1 d'au moins 1 vaisseau ennemi, augmentez votre valeur d'agilité de 1."""
        "Keyan Farlander":
            text: """Quand vous attaquez, vous pouvez retirer 1 marqueur de stress pour changer tous vos résultats %FOCUS% en résultats %HIT%."""
        "Unspoiled PS5 B-Wing Pilot":
            name: "Pilote de B-Wing de VP5 non dévoilé"
            text: """Cette carte n'a pas encore été dévoilée."""
        # Transport Rebelle
        "GR-75 Medium Transport":
            name: "Transport moyen GR-75"
            ship: "Transport moyen GR-75"
        # CR90
        "CR90 Corvette (Crippled Fore)":
            ship: "Corvette CR90 (proue)"
            name: "Corvette CR90 (proue abîmée)"
        "CR90 Corvette (Fore)":
            ship: "Corvette CR90 (proue)"
            name: "Corvette CR90 (proue)"
            text: """Quand vous attaquez avec votre arme principale, vous pouvez dépenser 1 énergie pour lancer 1 dé d'attaque supplémentaire."""
        "CR90 Corvette (Crippled Aft)":
            ship: "Corvette CR90 (poupe)"
            name: "Corvette CR90 (poupe abîmée)"
            text: """Vous ne pouvez pas choisir ou exécuter de manœuvre (%STRAIGHT% 4), (%BANKLEFT% 2), et (%BANKRIGHT% 2)."""
        "CR90 Corvette (Aft)":
            ship: "Corvette CR90 (poupe)"
            name: "Corvette CR90 (poupe)"
        # YT-2400, traduit de l'anglais
        "Dash Rendar":
            text: """Vous pouvez ignorer les obstacles durant la phase d'activation et lorsque vous effectuez des actions."""
        "Unspoiled PS3 YT-2400 Pilot":
            name: "Pilote de YT-2400 de VP3 non dévoilé"
        "Unspoiled PS5 YT-2400 Pilot":
            name: "Pilote de YT-2400 de VP5 non dévoilé"

    upgrade_translations =
        #Traits de pilotes
        "Determination":
            name: "Détermination"
            text: """Quand vous recevez une carte de dégâts assortie du trait Pilote face visible, défaussez-la aussitôt (sans résoudre sa capacité)."""
        "Swarm Tactics":
            name: "Tactique de nuée"
            text: """Au début de la phase de combat, choisissez 1 vaisseau allié situé à portée 1.<br /><br />Jusqu'à la fin de cette phase, considérez que la valeur de pilotage du vaisseau en question est égale à la vôtre."""
        "Squad Leader":
            name: "Chef d'escouade"
            text: """<strong>Action :</strong> choisissez 1 vaisseau situé à portée 1 ou 2 dont la valeur de pilotage est inférieure à la vôtre.<br /><br />Ce vaisseau peut aussitôt effectuer 1 action gratuite."""
        "Expert Handling":
            name: "As de l'espace"
            text: """<strong>Action :</strong> effectuez une <strong>action gratuite</strong> de tonneau. Si vous n'avez pas l'icône d'action %BARRELROLL%, recevez 1 marqueur de stress.<br /><br />Ensuite, vous pouvez retirer 1 acquisition de cible ennemie de votre vaisseau."""
        "Marksmanship":
            text: """<strong>Action :</strong> When attacking this round, you may change 1 of your %FOCUS% results to a %CRIT% result and all of your other %FOCUS% results to %HIT% results."""
        "Daredevil":
            name: "Casse-cou"
            text: """<strong>Action :</strong> exécuter une manœuvre blanche (%TURNLEFT% 1) ou (%TURNRIGHT% 1).  Puis, recevez un marqueur de stress.<br /><br />Ensuite, si vous n'avez pas l'icône d'action %BOOST%, lancez 2 dés d'attaque et subissez les dégâts (%HIT%) et les dégâts critiques (%CRIT%) obtenus."""
        "Elusiveness":
            name: "Insaisissable"
            text: """Quand vous défendez, vous pouvez recevoir un marqueur de stress pour choisir 1 dé d'attaque.<br /><br />Si vous avez au moins un marqueur de stress, vous ne pouvez pas utiliser cette capacité."""
        "Push the Limit":
            name: "Repousser les limites"
            text: """Une fois par tour, après avoir effectué une action, vous pouvez effectuer 1 action gratuite figurant dans votre barre d'action.<br /><br />Recevez ensuite un marqueur de stress."""
        "Deadeye":
            name: "Tireur d'élite"
            text: """Vous pouvez considérer l'intitulé "<strong>Attaque (acquisition de cible)</strong>" comme un intitulé "<strong>Attaque (concentration)</strong>".<br /><br />Quand une attaque vous demande d'utiliser un marqueur d'acquisition de cible, vous pouvez utiliser un marqueur de concentration à la place."""
        "Expose":
            name: "Prise de risque"
            text: """<strong>Action :</strong> jusqu'à la fin du tour, augmentez votre valeur d'arme principale de 1 et réduisez votre valeur d'agilité de 1."""
        "Wingman":
            text: """At the start of the Combat phase, remove 1 stress token from another friendly ship at Range 1."""
        "Decoy":
            text: """At the start of the Combat phase, you may choose 1 friendly ship at Range 1-2.  Exchange your pilot skill with that ship's pilot skill until the end of the phase."""
        "Outmaneuver":
            text: """When attacking a ship inside your firing arc, if you are not inside that ship's firing arc, reduce its agility value by 1 (to a minimum of 0)."""
        "Predator":
            text: """When attacking, you may reroll 1 attack die.  If the defender's pilot skill value is "2" or lower, you may instead reroll up to 2 attack dice."""
        "Draw Their Fire":
            name: "Je les attire !"
            text: """Quand un vaisseau allié situé à portée 1 est touché par une attaque, vous pouvez subir 1 des résultats %CRIT% non annulés à la place de l'appareil visé."""
        "Adrenaline Rush":
            name: "Montée d'adrénaline"
            text: """Quand vous révélez une manœuvre rouge, vous pouvez défausser cette carte pour traiter cette manœuvre comme une manœuvre blanche jusqu'à la fin de la phase d'activation."""
        "Veteran Instincts":
            name: "Instinct de vétéran"
            text: """Augmentez votre valeur de pilotage de 2."""
        # Astromechs
        "R2 Astromech":
            name: "Astromech R2"
            text: """Considérez toutes les manœuvres à vitesse 1 ou 2 comme des manœuvres vertes."""
        "R2-D2":
            text: """Après avoir exécuté une manœuvre verte, vous pouvez récupérer 1 bouclier (sans pouvoir dépasser votre valeur de boucliers)."""
        "R2-F2":
            text: """<strong>Action :</strong> augmentez votre valeur d'agilité de 1 jusqu'à la fin de ce tour."""
        "R5-D8":
            text: """<strong>Action :</strong> lancez 1 dé de défense.<br /><br />Sur un résultat %EVADE% ou %FOCUS%, défaussez 1 de vos cartes de dégâts face cachée."""
        "R5-K6":
            text: """Après avoir utilisé votre acquisition de cible, lancez 1 dé de défense.<br /><br />Sur un résultat %EVADE%, verrouillez aussitôt le même vaisseau. Vous ne pouvez cependant pas utiliser cette nouvelle acquisition de cible durant cette attaque."""
        "R5 Astromech":
            name: "Astromech R5"
            text: """Pendant la phase de dénouement, choisissez une de vos cartes dégâts face visible assortie du trait <strong>Vaisseau</strong>, et retournez-la face cachée."""
        "R7 Astromech":
            name: "Astromech R7"
            text: """Once per round when defending, if you have a target lock on the attacker, you may spend the target lock to choose any or all attack dice.  The attacker must reroll the chosen dice."""
        "R7-T1":
            text: """<strong>Action :</strong> Choose an enemy ship at Range 1-2.  If you are inside that ship's firing arc, you may acquire a target lock on that ship.  Then, you may perform a free boost action."""
        # Torpilles
        "Proton Torpedoes":
            name: "Torpilles à protons"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.<br /><br />Vous pouvez échanger 1 de vos résultats %FOCUS% contre 1 resultat %CRIT%."""
        "Advanced Proton Torpedoes":
            name: "Torpilles à protons avancées"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.<br /><br />Vous pouvez échanger jusqu'à 3 de vos résultats vierge contre autant de résultats %FOCUS%."""
        "Flechette Torpedoes":
            text: """<strong>Attaque (acquisition de cible) :</strong> Discard this card and spend your target lock to perform this attack.<br /><br />After you perform this attack, the defender receives 1 stress token if its hull value is "4" or lower."""
        # Tourelles
        "Ion Cannon Turret":
            name: "Tourelles à canons ioniques"
            text: """<strong>Attaque :</strong> attaquez 1 vaisseau (même s'il se situe en dehors de votre arc de tir).<br /><br />Si cette attaque touche la cible, cette dernière subit 1 dégât et reçoit 1 marqueur ionique. Ensuite, annulez tous les résultats des dés."""
        "Blaster Turret":
            name: "Tourelles blaster"
            text: """<strong>Attaque (concentration) :</strong> dépensez un marqueur concentration pour effectuer cette attaque contre 1 vaisseau (même s'il se situe en dehors de votre arc de tir)."""
        # Missiles
        "Concussion Missiles":
            name: "Missiles à concussion"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.<br /><br />Vous pouvez échanger 1 de vos résultats vierges contre 1 résultat %HIT%."""
        "Cluster Missiles":
            name: "Missiles groupés"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque <strong>deux fois</strong>."""
        "Homing Missiles":
            name: "Missiles à tête chercheuse"
            text: """<strong>Attaque (acquisition de cible) :</strong> défaussez cette carte pour effectuer cette attaque.<br /><br />Le défenseur ne peut pas utiliser de marqueurs d'évasion durant cette attaque."""
        "Assault Missiles":
            name: "Missiles d'assaut"
            text: """<strong>Attaque (acquisition de cible) :</strong> utilisez votre acquisition de cible et défaussez cette carte pour effectuer cette attaque.<br /><br />Si cette attaque touche, chaque vaisseau situé à portée 1 du défenseur subit 1 dégât."""
        "Ion Pulse Missiles":
            name: "Missiles à pulsations ioniques"
            text: """<strong>Attaque (acquisition de cible) :</strong> défaussez cette carte pour effectuer cette attaque.<br /><br />Si cette attaque touche, le défenseur subit 1 dégât et reçoit 2 marqueurs ioniques. Ensuite, annulez le résultat de <strong>tous<strong> les dés."""
        "Chardaan Refit":
            name: "Radoub à Chardaan"
            text: """Cette carte a un coût en points d'escadron négatif."""
        # Bombes
        "Seismic Charges":
            name: "Charges sismiques"
            text: """Quand vous révélez votre cadran de manoeuvres, vous pouvez défausser cette carte pour  <strong>larguer</strong> 1 marqueur de charges sismiques.<br /><br />Ce marqueur <strong>explose</strong> à la fin de la phase d'activation."""
        "Proximity Mines":
            name: "Mines de proximité"
            text: """<strong>Action :</strong> défaussez cette carte pour <strong>larguer</strong> 1 marqueur de mines de proximité. Quand un vaisseau exécute une manœuvre, si son socle ou son gabarit de manœuvre chevauche ce marqueur, ce marqueur <strong>explose</strong>."""
        "Proton Bomb":
            name: "Bombes à protons"
            text: """Quand vous révélez votre cadran de manoeuvres, vous pouvez défausser cette carte pour <strong>larguer</strong> 1 marqueur de bombe à protons.<br /><br />Ce marqueur <strong>explose</strong> à la fin de la phase d'activation."""
        # Canons
        # Senseurs
        "Enhanced Scopes":
            name: "Radars améliorés"
            text: """Durant la phase d'activation, considérez que votre valeur de pilotage est égale à "0"."""
        "Gunner":
            text: """After you perform an attack that does not hit, you may immediately perform a primary weapon attack.  You cannot perform another attack this round."""
        "Ion Cannon":
            text: """<strong>Attack:</strong> Attack 1 ship.<br /><br />If this attack hits, the defender suffers 1 damage and receives 1 ion token.  Then cancel all dice results."""
        "Heavy Laser Cannon":
            text: """<strong>Attack:</strong> Attack 1 ship.<br /><br />Immediately after rolling your attack dice, you must change all of your %CRIT% results to %HIT% results."""
        "Mercenary Copilot":
            text: """When attacking at Range 3, you may change 1 of your %HIT% results to a %CRIT% result."""
        "Weapons Engineer":
            text: """You may maintain 2 target locks (only 1 per enemy ship).<br /><br />When you acquire a target lock, you may lock onto 2 different ships."""
        "Luke Skywalker":
            text: """After you perform an attack that does not hit, you may immediately perform a primary weapon attack.  You may change 1 %FOCUS% result to a %HIT% result.  You cannot perform another attack this round."""
        "Nien Nunb":
            text: """You may treat all %STRAIGHT% maneuvers as green maneuvers."""
        "Chewbacca":
            text: """When you are dealt a Damage card, you may immediately discard that card and recover 1 shield.<br /><br />Then, discard this Upgrade card."""
        "Autoblaster":
            text: """<strong>Attack:</strong> Attack 1 ship.<br /><br />Your %HIT% results cannot be canceled by defense dice.<br /><br />The defender may cancel %CRIT% results before %HIT% results."""
        "Fire-Control System":
            text: """After you perform an attack, you may acquire a target lock on the defender."""
        "Recon Specialist":
            text: """When you perform a focus action, assign 1 additional focus token to your ship."""
        "Saboteur":
            text: """<strong>Action :</strong> Choose 1 enemy ship at Range 1 and roll 1 attack die.  On a %HIT% or %CRIT% result, choose 1 random facedown Damage card assigned to that ship, flip it faceup, and resolve it."""
        "Intelligence Agent":
            text: """At the start of the Activation phase, choose 1 enemy ship at Range 1-2.  You may look at that ship's chosen maneuver."""
        "Advanced Sensors":
            text: """Immediately before you reveal your maneuver, you may perform 1 free action.<br /><br />If you use this ability, you must skip your "Perform Action" step during this round."""
        "Sensor Jammer":
            text: """When defending, you may change 1 of the attacker's %HIT% results into a %FOCUS% result.<br /><br />The attacker cannot reroll the die with the changed result."""
        "Darth Vader":
            text: """After you perform an attack against an enemy ship, you may suffer 2 damage to cause that ship to suffer 1 critical damage."""
        "Rebel Captive":
            text: """Once per round, the first ship that declares you as the target of an attack immediately receives 1 stress token."""
        "Flight Instructor":
            text: """When defending, you may reroll 1 of your %FOCUS% results.  If the attacker's pilot skill value is "2" or lower, you may reroll 1 of your blank results instead."""
        "Navigator":
            text: """When you reveal a maneuver, you may rotate your dial to another maneuver with the same bearing.<br /><br />You cannot rotate to a red maneuver if you have any stress tokens."""
        "Opportunist":
            text: """When attacking, if the defender does not have any focus or evade tokens, you may receive 1 stress token to roll 1 additional attack die.<br /><br />You cannot use this ability if you have any stress tokens."""
        "Comms Booster":
            text: """<strong>Energy:</strong> Spend 1 energy to remove all stress tokens from a friendly ship at Range 1-3.  Then assign 1 focus token to that ship."""
        "Slicer Tools":
            text: """<strong>Action :</strong> Choose 1 or more ships at Range 1-3 that have a stress token.  For each ship chosen, you may spend 1 energy to cause that ship to suffer 1 damage."""
        "Shield Projector":
            text: """When an enemy ship is declaring either a small or large ship as the target of its attack, you may spend 3 energy to force that ship to target you if possible."""
        "Tactician":
            text: """After you perform an attack against a ship inside your firing arc at Range 2, that ship receives 1 stress token."""
        "R2-D2 (Crew)":
            text: """At the end of the End phase, if you have no shields, you may recover 1 shield and roll 1 attack die.  On a %HIT% result, randomly flip 1 of your facedown Damage cards faceup and resolve it."""
        "C-3PO":
            text: """Once per round, before you roll 1 or more defense dice, you may guess aloud a number of %EVADE% results.  If you roll that many %EVADE% results (before modifying dice), add 1 %EVADE% result."""
        "Single Turbolasers":
            text: """<strong>Attack (Energy):</strong> Spend 2 energy from this card to perform this attack.  The defender doubles his agility value against this attack.  You may change 1 of your %FOCUS% results to a %HIT% result."""
        "Quad Laser Cannons":
            text: """<strong>Attack (Energy):</strong> Spend 1 energy from this card to perform this attack.  If this attack does not hit, you may immediately spend 1 energy from this card to perform this attack again."""
        "Tibanna Gas Supplies":
            text: """<strong>Energy:</strong> You may discard this card to gain 3 energy."""
        "Ionization Reactor":
            text: """<strong>Energy:</strong> Spend 5 energy from this card and discard this card to cause each other ship at Range 1 to suffer 1 damage and receive 1 ion token."""
        "Engine Booster":
            text: """Immediately before you reveal your maneuver dial, you may spend 1 energy to execute a white (%STRAIGHT% 1) maneuver.  You cannot use this ability if you would overlap another ship."""
        "R3-A2":
            text: """When you declare the target of your attack, if the defender is inside your firing arc, you may receive 1 stress token to cause the defender to receive 1 stress token."""
        "R2-D6":
            text: """Your upgrade bar gains the %ELITE% upgrade icon.<br /><br />You cannot equip this upgrade if you already have a %ELITE% upgrade icon or if your pilot skill value is "2" or lower."""
        "Proton Rockets":
            text: """<strong>Attack (Focus):</strong> Discard this card to perform this attack.<br /><br />You may roll additional attack dice equal to your agility value, to a maximum of 3 additional dice."""
        "Kyle Katarn":
            text: """After you remove a stress token from your ship, you may assign a focus token to your ship."""
        "Jan Ors":
            text: """Once per round, when a friendly ship at Range 1-3 performs a focus action or would be assigned a focus token, you may assign it an evade token instead."""
        "Toryn Farr":
            text: """<strong>Action :</strong> Spend any amount of energy to choose that many enemy ships at Range 1-2.  Remove all focus, evade, and blue target lock tokens from those ships."""
        "R4-D6":
            text: """When you are hit by an attack and there are at least 3 uncanceled %HIT% results, you may choose to cancel those results until there are 2 remaining.  For each result canceled this way, receive 1 stress token."""
        "R5-P9":
            text: """At the end of the Combat phase, you may spend 1 of your focus tokens to recover 1 shield (up to your shield value)."""
        "WED-15 Repair Droid":
            text: """<strong>Action :</strong> Spend 1 energy to discard 1 of your facedown Damage cards, or spend 3 energy to discard 1 of your faceup Damage cards."""
        "Carlist Rieekan":
            text: """At the start of the Activation phase, you may discard this card to treat each friendly ship's pilot skill value as "12" until the end of the phase."""
        "Jan Dodonna":
            text: """When another friendly ship at Range 1 is attacking, it may change 1 of its %HIT% results to a %CRIT%."""
        "Expanded Cargo Hold":
            text: """Once per round, when you would be dealt a faceup Damage card, you may draw that card from either the fore or aft Damage deck."""
        "Backup Shield Generator":
            text: """At the end of each round, you may spend 1 energy to recover 1 shield (up to your shield value)."""
        "EM Emitter":
            text: """When you obstruct an attack, the defender rolls 3 additional defense dice (instead of 1)."""
        "Frequency Jammer":
            text: """When you perform a jam action, choose 1 enemy ship that does not have a stress token and is at Range 1 of the jammed ship.  The chosen ship receives 1 stress token."""
        "Han Solo":
            text: """When attacking, if you have a target lock on the defender, you may spend that target lock to change all of your %FOCUS% results to %HIT% results."""
        "Leia Organa":
            text: """At the start of the Activation phase, you may discard this card to allow all friendly ships that reveal a red maneuver to treat that maneuver as a white maneuver until the end of the phase."""
        "Targeting Coordinator":
            text: """<strong>Energy:</strong> You may spend 1 energy to choose 1 friendly ship at Range 1-2.  Acquire a target lock, then assign the blue target lock token to the chosen ship."""
        "Raymus Antilles":
            text: """At the start of the Activation phase, choose 1 enemy ship at Range 1-3.  You may look at that ship's chosen maneuver.  If the maneuver is white, assign that ship 1 stress token."""
        "Gunnery Team":
            text: """Once per round, when attacking with a secondary weapon, you may spend 1 energy to change 1 of your blank results to a %HIT% result."""
        "Sensor Team":
            text: """When acquiring a target lock, you may lock onto an enemy ship at Range 1-5 instead of 1-3."""
        "Engineering Team":
            text: """During the Activation phase, when you reveal a %STRAIGHT% maneuver, gain 1 additional energy during the "Gain Energy" step."""
        "Lando Calrissian":
            text: """<strong>Action :</strong> Roll 2 defense dice.  For each %FOCUS% result, assign 1 focus token to your ship.  For each %EVADE% result, assign 1 evade token to your ship."""
        "Mara Jade":
            text: """At the end of the Combat phase, each enemy ship at Range 1 that does not have a stress token receives 1 stress token."""
        "Fleet Officer":
            text: """<strong>Action :</strong> Choose up to 2 friendly ships within Range 1-2 and assign 1 focus token to each of those ships.  Then receive 1 stress token."""

    modification_translations =
        "Stealth Device":
            name: "Système d'occultation"
            text: """Augmentez votre valeur d'agilité de 1. Si une attaque vous touche, défaussez cette carte."""
        "Shield Upgrade":
            name: "Boucliers améliorés"
            text: """Augmentez votre valeur de boucliers de 1."""
        "Engine Upgrade":
            name : "Moteurs améliorés"
            text: """Votre barre d'actions gagne l'icône d'action %BOOST%."""
        "Anti-Pursuit Lasers":
            name: "Lasers antipoursuite"
            text: """Quand un vaisseau ennemi exécute une manœuvre qui l'oblige à chevaucher votre appareil, lancez 1 dé d'attaque. Sur un résultat %HIT% ou %CRIT%, le vaisseau ennemi subit 1 dégât."""
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
        "Advanced Cloaking Device":
            name: "Système d'occulation avancé"
            text: """Après avoir effectué une attaque, vous pouvez effectuer une action de d'occultation gratuite."""
        "Combat Retrofit":
            name: "Préparé pour le combat"
            text: """Augmentez votre valeur de coque de 2 et votre valeur de boucliers de 1."""
        "B-Wing/E2":
            text: """Votre barre d'améliorations gagne l'icône d'amélioration %CREW%."""

    title_translations =
        "Slave I":
            text: """Your upgrade bar gains the %TORPEDO% upgrade icon."""
        "Millennium Falcon":
            name: "Faucon Millenium"
            text: """Votre barre d'actions gagne l'icône d'action %EVADE%."""
        "Moldy Crow":
            text: """During the End phase, do not remove unused focus tokens from your ship."""
        "ST-321":
            text: """When acquiring a target lock, you may lock onto any enemy ship in the play area."""
        "Royal Guard TIE":
            text: """You may equip up to 2 different Modification upgrades (instead of 1).<br /><br />You cannot equip this card if your pilot skill value is "4" or lower."""
        "Dodonna's Pride":
            text: """When you perform a coordinate action, you may choose 2 friendly ships (instead of 1).  Those ships may each perform 1 free action."""
        "A-Wing Test Pilot":
            name: "Pilote d'essai sur A-Wing"
            text: """Votre bandeau d'amélioration gagne 1 icône d'amélioration %ELITE%.<br /><br />Vous ne pouvez pas équiper 2 cartes amélioration %ELITE% identiques. Vous ne pouvez pas vous équiper de cette carte si votre valeur de pilotage est des "1" ou moins."""
        "Tantive IV":
            text: """Your fore section upgrade bar gains 1 additional %CREW% and 1 additional %TEAM% upgrade icon."""
        "Bright Hope":
            text: """A reinforce action assigned to your fore section adds 2 %EVADE% results (instead of 1)."""
        "Quantum Storm":
            text: """At the start of the End phase, if you have 1 or fewer energy tokens, gain 1 energy token."""
        "Dutyfree":
            text: """When performing a jam action, you may choose an enemy ship at Range 1-3 (instead of at Range 1-2)."""
        "Jaina's Light":
            text: """When defending, once per attack, if you are dealt a faceup Damage card, you may discard it and draw another faceup Damage card."""
        "Outrider":
            text: """While you have a %CANNON% Upgrade card equipped, you <strong>cannot</strong> perform primary weapon attacks and you may perform %CANNON% secondary weapon attacks against ships outside your firing arc."""

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations
