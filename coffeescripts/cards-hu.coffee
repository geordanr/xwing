exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.hu = 'Magyar'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations.Magyar =
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
        "Sensor": '<i class="xwing-miniatures-font xwing-miniatures-font-system"></i>'
        "Torpedo": '<i class="xwing-miniatures-font xwing-miniatures-font-torpedo"></i>'
        "Turret": '<i class="xwing-miniatures-font xwing-miniatures-font-turret"></i>'
        "Illicit": '<i class="xwing-miniatures-font xwing-miniatures-font-illicit"></i>'
        "Configuration": '<i class="xwing-miniatures-font xwing-miniatures-font-configuration"></i>'
        "Modification": '<i class="xwing-miniatures-font xwing-miniatures-font-modification"></i>'
        "Gunner": '<i class="xwing-miniatures-font xwing-miniatures-font-gunner"></i>'
        "Device": '<i class="xwing-miniatures-font xwing-miniatures-font-device"></i>'
        "Tech": '<i class="xwing-miniatures-font xwing-miniatures-font-tech"></i>'
        "Title": '<i class="xwing-miniatures-font xwing-miniatures-font-title"></i>'
    slot: #EDIT THIS
        "Astromech": "Astromech"
        "Force": "Erő"
        "Bomb": "Bomba"
        "Cannon": "Ágyú"
        "Crew": "Személyzet"
        "Missile": "Rakéta"
        "Sensor": "Szenzor"
        "Torpedo": "Torpedó"
        "Turret": "Toronylöveg"
        "Hardpoint": "Fegyverfelfüggesztő pont"
        "Illicit": "Tiltott"
        "Configuration": "Konfiguráció"
        "Talent": "Talentum"
        "Modification": "Módosítás"
        "Gunner": "Fegyverzet kezelő"
        "Device": "Eszköz"
        "Tech": "Tech"
        "Title": "Nevesítés"
    sources: #EDIT THIS
        "Second Edition Core Set": "Second Edition Core Set"
        "Rebel Alliance Conversion Kit": "Rebel Alliance Conversion Kit"
        "Galactic Empire Conversion Kit": "Galactic Empire Conversion Kit"
        "T-65 X-Wing Expansion Pack": "T-65 X-Wing Expansion Pack"
        "BTL-A4 Y-Wing Expansion Pack": "BTL-A4 Y-Wing Expansion Pack"
        "TIE/ln Fighter Expansion Pack": "TIE/ln Fighter Expansion Pack"
        "TIE Advanced x1 Expansion Pack": "TIE Advanced x1 Expansion Pack"
        "Slave 1 Expansion Pack": "Slave 1 Expansion Pack"
        "Fang Fighter Expansion Pack": "Fang Fighter Expansion Pack"
        "Lando's Millennium Falcon Expansion Pack": "Lando's Millennium Falcon Expansion Pack"
        "Saw's Renegades Expansion Pack": "Saw's Renegades Expansion Pack"
        "TIE Reaper Expansion Pack": "TIE Reaper Expansion Pack"
    ui:
        shipSelectorPlaceholder: "Válassz egy hajót"
        pilotSelectorPlaceholder: "Válassz egy pilótát"
        upgradePlaceholder: (translator, language, slot) ->
            "Nincs #{translator language, 'slot', slot} fejlesztés"
        modificationPlaceholder: "Nincs módosítás"
        titlePlaceholder: "Nincs nevesítés"
        upgradeHeader: (translator, language, slot) ->
            "#{translator language, 'slot', slot} fejlesztés"
        unreleased: "kiadatlan"
        epic: "epikus"
        limited: "korlátozott"
    byCSSSelector:
        # Warnings
        '.unreleased-content-used .translated': 'Ez a raj kiadatlan tartalmat használ!'
        '.collection-invalid .translated': 'Ez a lista nem vihető pályára a készletedből!'
        # Type selector
        '.game-type-selector option[value="standard"]': 'Sztandard'
        '.game-type-selector option[value="custom"]': 'Egyéni'
        '.game-type-selector option[value="epic"]': 'Epikus'
        '.game-type-selector option[value="team-epic"]': 'Team Epic'
        # Card browser
        '.xwing-card-browser option[value="name"]': 'Név'
        '.xwing-card-browser option[value="source"]': 'Forrás'
        '.xwing-card-browser option[value="type-by-points"]': 'Típus (pont szerint)'
        '.xwing-card-browser option[value="type-by-name"]': 'Típus (név szerint)'
        '.xwing-card-browser .translate.select-a-card': 'Válassz a bal oldalon lévő kártyákból.'
        '.xwing-card-browser .translate.sort-cards-by': 'Sort cards by'
        # Info well
        '.info-well .info-ship td.info-header': 'Hajó'
        '.info-well .info-skill td.info-header': 'Kezdeményezés'
        '.info-well .info-actions td.info-header': 'Akciók'
        '.info-well .info-upgrades td.info-header': 'Fejlesztések'
        '.info-well .info-range td.info-header': 'Távolság'
        # Squadron edit buttons
        '.clear-squad' : 'Új raj'
        '.save-list' : 'Mentés'
        '.save-list-as' : 'Mentés mint…'
        '.delete-list' : 'Törlés'
        '.backend-list-my-squads' : 'Raj betöltés'
        '.view-as-text' : '<span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Nyomtatás/Szövegnézet </span>'
        '.randomize' : 'Random!'
        '.randomize-options' : 'Randomizer opciók…'
        '.notes-container > span' : 'Jegyzetek'
        # Print/View modal
        '.bbcode-list' : 'Copy the BBCode below and paste it into your forum post.<textarea></textarea><button class="btn btn-copy">Másolás</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Másolás</button>'
        '.vertical-space-checkbox' : """Hagyj helyet a sérülés és fejlesztéskártyáknak nyomtatáskor <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Színes nyomtatás <input type="checkbox" class="toggle-color-print" checked="checked" />"""
        '.print-list' : '<i class="fa fa-print"></i>&nbsp;Nyomtatás'
        # Randomizer options
        '.do-randomize' : 'Randomize!'
        # Top tab bar
        '#browserTab' : 'Kártya tallózó'
        '#aboutTab' : 'Rólunk'
        # Obstacles
        '.choose-obstacles' : 'Choose Obstacles'
        '.choose-obstacles-description' : 'Choose up to three obstacles to include in the permalink for use in external programs. (This feature is in BETA; support for displaying which obstacles were selected in the printout is not yet supported.)'
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

    singular:
        'pilots': 'Pilóta'
        'modifications': 'Módosítás'
        'titles': 'Nevesítés'
    types:
        'Pilot': 'Pilóta'
        'Modification': 'Módosítás'
        'Title': 'Nevesítés'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.Magyar = () ->
    exportObj.cardLanguage = 'Magyar'

    # Assumes cards-common has been loaded
    basic_cards = exportObj.basicCardData()
    exportObj.canonicalizeShipNames basic_cards

    # English names are loaded by default, so no update is needed
    exportObj.ships = basic_cards.ships

    # Rename ships (below is an example of what it should look like. uncomment the # on the line to make it active. You must have all pilots that use the translated ship name use the tag ship:"Translated ship name")


    ###exportObj.renameShip 'X-Wing', 'X-Wing'
    exportObj.renameShip 'A-Wing', 'A-Wing'
    exportObj.renameShip 'Y-Wing', 'Y-Wing'
    exportObj.renameShip 'B-Wing', 'B-Wing'
    exportObj.renameShip 'E-Wing', 'E-Wing'
    exportObj.renameShip 'K-Wing', 'K-Wing'
    exportObj.renameShip 'U-Wing', 'U-Wing'
    exportObj.renameShip 'YT-1300', 'YT-1300'
    exportObj.renameShip 'YT-2400', 'YT-2400'
    exportObj.renameShip 'Z-95 Headhunter', 'Z-95 Headhunter'
    exportObj.renameShip 'VCX-100', 'VCX-100'
    exportObj.renameShip 'Attack Shuttle', 'Attack Shuttle'
    exportObj.renameShip 'ARC-170', 'ARC-170'
    exportObj.renameShip 'Auzituck Gunship', 'Auzituck Gunship'
    exportObj.renameShip 'Sheathipede-Class Shuttle', 'Sheathipede-Class Shuttle'
    exportObj.renameShip 'TIE Fighter', 'TIE Fighter'
    exportObj.renameShip 'TIE Advanced', 'TIE Advanced'
    exportObj.renameShip 'TIE Interceptor', 'TIE Interceptor'
    exportObj.renameShip 'TIE Bomber', 'TIE Bomber'
    exportObj.renameShip 'TIE Defender', 'TIE Defender'
    exportObj.renameShip 'TIE Phantom', 'TIE Phantom'
    exportObj.renameShip 'TIE Advanced Prototype', 'TIE Advanced Prototype'
    exportObj.renameShip 'TIE Striker', 'TIE Striker'
    exportObj.renameShip 'TIE Punisher', 'TIE Punisher'
    exportObj.renameShip 'TIE Aggressor', 'TIE Aggressor'
    exportObj.renameShip 'TIE Reaper', 'TIE Reaper'
    exportObj.renameShip 'Alpha-Class Star Wing', 'Alpha-Class Star Wing'
    exportObj.renameShip 'Lambda-Class Shuttle', 'Lambda-Class Shuttle'
    exportObj.renameShip 'VT-49 Decimator', 'VT-49 Decimator'
    exportObj.renameShip 'Firespray-31', 'Firespray-31'
    exportObj.renameShip 'M3-A Interceptor', 'M3-A Interceptor' 
    exportObj.renameShip 'HWK-290', 'HWK-290'
    exportObj.renameShip 'StarViper', 'StarViper'
    exportObj.renameShip 'Aggressor', 'Aggressor'
    exportObj.renameShip 'YV-666', 'YV-666'
    exportObj.renameShip 'Kihraxz Fighter', 'Kihraxz Fighter'
    exportObj.renameShip 'G-1A Starfighter', 'G-1A Starfighter'
    exportObj.renameShip 'Fang Fighter', 'Fang Fighter'
    exportObj.renameShip 'YT-1300 (Scum)', 'YT-1300 (Scum)'
    exportObj.renameShip 'JumpMaster 5000', 'JumpMaster 5000'
    exportObj.renameShip 'Lancer-Class Pursuit Craft', 'Lancer-Class Pursuit Craft'
    exportObj.renameShip 'Quadjumper', 'Quadjumper'
    exportObj.renameShip 'Scurrg H-6 Bomber', 'Scurrg H-6 Bomber'
    exportObj.renameShip 'M12-L Kimogila Fighter', 'M12-L Kimogila Fighter'
    exportObj.renameShip 'Escape Craft', 'Escape Craft'
    exportObj.renameShip 'Mining Guild TIE Fighter', 'Mining Guild TIE Fighter'

    exportObj.renameShip 'T-70 X-Wing', 'T-70 X-Wing'
    exportObj.renameShip 'RZ-2 A-Wing', 'RZ-2 A-Wing'
    exportObj.renameShip 'B/SF-17 Bomber', 'B/SF-17 Bomber'
    exportObj.renameShip 'YT-1300 (Resistance)', 'YT-1300 (Resistance)'
    
    exportObj.renameShip 'TIE/FO Fighter', 'TIE/FO Fighter'
    exportObj.renameShip 'TIE/SF Fighter', 'TIE/SF Fighter'
    exportObj.renameShip 'TIE Silencer', 'TIE Silencer'
    exportObj.renameShip 'Upsilon-Class Shuttle', 'Upsilon-Class Shuttle' ###   

    # Names don't need updating, but text needs to be set
    pilot_translations =
        "4-LOM":
           text: """miután teljesen végrehajtottál egy piros manővert, kapsz 1 kalkuláció jelzőt. A vége fázis elején választhatsz 1 hajót 0-1-es távolságban. Ha így teszel, add át 1 stressz jelződ annak a hajónak."""
        "Academy Pilot":
           text: """ """
        "Airen Cracken":
           text: """Miután végrehajtasz egy támadást, választhatsz 1 baráti hajót 1-es távolságban. Az a hajó végrehajthat egy akciót, pirosként kezelve."""
        "Alpha Squadron Pilot":
           text: """AUTOTHRUSTERS: Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy egy piros %BOOST% akciót."""
        "AP-5":
           text: """Amikor koordinálsz, ha a kiválasztott hajónak pontosan 1 stressz jelzője van, az végrehajthat akciókat. %LINEBREAK% COMMS SHUTTLE: Amikor dokkolva vagy, anyahajód %COORDINATE% akció lehetőséget kap. Anyahajód az aktiválása előtt végrehajthat egy %COORDINATE% akciót."""
        "Arvel Crynyd":
           text: """Végrehajthatsz elsődleges támadást 0-ás távolságban. Ha egy %BOOST% akcióddal átfedésbe kerülsz egy másik hajóval, úgy hajtsd végre, mintha csak részleges manőver lett volna. %LINEBREAK% VECTORED THRUSTERS: Miután végrehajtottál egy akciót, végrehajthatsz egy %BOOST% gyorsítás akciót."""
        "Asajj Ventress":
           text: """A ütközet fázis elején választhatsz egy ellenséges hajót a %SINGLETURRETARC% tűzívedben 0-2-es távolságban és költs 1 %FORCE% jelzőt. Ha így teszel, az a hajó kap egy stressz jelzőt, hacsak nem távolít el egy zöld jelzőt."""
        "Autopilot Drone":
           text: """RIGGED ENERGY CELLS: A rendszer fázis alatt, ha nem vagy dokkolva, elvesztesz 1 %CHARGE% jelzőt. Az aktivációs fázis végén, ha már nincs %CHARGE% jelződ, megsemmisülsz. Mielőtt levennéd a hajód minden 0-1-es távolságban lévő hajó elszenved 1 %CRIT% sérülést"""
        "Bandit Squadron Pilot":
           text: """ """
        "Baron of the Empire":
           text: """ """
        "Benthic Two-Tubes":
           text: """Miután végrehajtottál egy %FOCUS% akciót, átrakhatod 1 fókusz jelződ egy baráti hajóra 1-2-es távolságban"""
        "Biggs Darklighter":
           text: """Amikor baráti hajó védekezik tőled 0-1-es távolságban, az Eredménysemlegesítés lépés előtt, ha a támadó tűzívében vagy, elszenvedhetsz 1 %HIT% vagy %CRIT% találatot, hogy hatástalaníts egy azzal egyező találatot."""
        "Binayre Pirate":
           text: """ """
        "Black Squadron Ace":
           text: """ """
        "Black Squadron Scout":
           text: """ADAPTIVE AILERONS: Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre KELL hajtanod egy fehér (1 %BANKLEFT%), (1 %STRAIGHT%) vagy (1 %BANKRIGHT%) menővert."""
        "Black Sun Ace":
           text: """ """
        "Black Sun Assassin":
           text: """MICROTHRUSTERS: Mikor orsózást hajtasz végre, a (1 %BANKLEFT%) vagy (1 %BANKRIGHT%) sablont KELL használnod a (1 %STRAIGHT%) helyett."""
        "Black Sun Enforcer":
           text: """MICROTHRUSTERS: Mikor orsózást hajtasz végre, a (1 %BANKLEFT%) vagy (1 %BANKRIGHT%) sablont KELL használnod a (1 %STRAIGHT%) helyett."""
        "Black Sun Soldier":
           text: """ """
        "Blade Squadron Veteran":
           text: """ """
        "Blue Squadron Escort":
           text: """ """
        "Blue Squadron Pilot":
           text: """ """
        "Blue Squadron Scout":
           text: """ """
        "Boba Fett":
           text: """Amikor védekezel vagy végrehajtasz egy támadást, újradobhatsz 1 kockát, minden egyes 0-1-es távolságban lévő ellenséges hajó után."""
        "Bodhi Rook":
           text: """A baráti hajók bemérhetnek más baráti hajóktól 0-3-as távolságban lévő objektumokat."""
        "Bossk":
           text: """Amikor végrehajtasz egy elsődleges támadást, az 'Eredmények semlegesítése' lépés után, elkölthetsz egy %CRIT% eredményt, hogy hozzáadj 2 %HIT% eredményt a dobásodhoz."""
        "Bounty Hunter":
           text: """ """
        "Braylen Stramm":
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha stresszes vagy, újradobhatod legfeljebb 2 kockádat."""
        "Captain Feroph":
           text: """Amikor védekezel, ha a támadónak nincs zöld jelzője, megváltoztathatod 1 üres vagy %FOCUS% dobásod %EVADE% eredményre.%LINEBREAK% ADAPTIVE AILERONS: Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre KELL hajtanod egy fehér (1 %BANKLEFT%), (1 %STRAIGHT%) vagy (1 %BANKRIGHT%) menővert."""
        "Captain Jonus":
           text: """Amikor egy baráti hajó 0-1-es távolságban végrehajt egy %TORPEDO% vagy %MISSILE% támadást, az újradobhat akár 2 támadókockát.%LINEBREAK% NIMBLE BOMBER: Ha ledobsz egy eszközt a %STRAIGHT% sablon segítségével, használhatod az azonos sebességű %BANKLEFT% vagy %BANKRIGHT% sablonokat helyette."""
        "Captain Jostero":
           text: """Miután egy ellenséges hajó sérülést szenved és nem védekezett, végrehajthatsz egy bónusz támadást ellene."""
        "Captain Kagi":
           text: """A ütközet fázis elején választhatsz egy baráti hajót 0-3-es távolságban. Ha így teszel tedd át az összes ellenséges bemérés jelzőt a kiválasztott hajóról magadra."""
        "Captain Nym":
           text: """Mielőtt egy baráti bomba vagy akna felrobbanna, elkölthetsz 1 %CHARGE% jelzőt, hogy megakadályozd a felrobbanását. Mikor egy támadás ellen védekezel amely akadályozott egy bomba vagy akna által, 1-gyel több védekezőkockával dobj."""
        "Captain Oicunn":
           text: """Végrehajthatsz elsődleges támadást 0-ás távolságban."""
        "Captain Rex":
           text: """Miután végrehajtasz egy támadást, jelöld meg a védekezőt a 'Suppressive Fire' kondícióval."""
        "Cartel Executioner":
           text: """DEAD TO RIGHTS: Amikor végrehajtasz egy támadást, ha a védekező benne van a %BULLSEYEARC% tűzívedben, a védekezőkockák nem módosíthatók zöld jelzőkkel."""
        "Cartel Marauder":
           text: """ """
        "Cartel Spacer":
           text: """WEAPON HARDPOINT: Felszerelhetsz 1 %CANNON%, %TORPEDO% vagy %MISSILE% feljesztést."""
        "Cassian Andor":
           text: """Az aktivációs fázis elején választhatsz 1 baráti hajót 1-3-as távolságban. Ha így teszel, az a hajó eltávolít 1 stressz jelzőt."""
        "Cavern Angels Zealot":
           text: """ """
        "Chewbacca":
           text: """Mielőtt képpel felfelé fordított sebzéskártyát kapnál, elkölthetsz 1 %CHARGE%-et, hogy a lapot képpel lefelé húzd fel."""
        '"Chopper"':
           text: """A ütközet fázis elején minden 0-ás távolságban lévő ellenséges hajó 2 zavarás jelzőt kap.%LINEBREAK%TAIL GUN: Ha van bedokkolt a hajód, használhatod az elsődleges %REARARC% fegyvered, ugyanolyan támadási értékkel, mint a dokkolt hajó elsődleges %FRONTARC% értéke."""
        "Colonel Jendon":
           text: """Az aktivációs fázis elején elkölthetsz egy %CHARGE% jelzőt. Ha így teszel, amikor baráti hajók bemérés jelzőt tesznek fel ebben a körben, 3-as távolságon túl tehetik csak meg a 0-3-as távolság helyett."""
        "Colonel Vessery":
           text: """Amikor támadást hajtasz végre egy bemért hajó ellen, miután dobsz a kockákkal, feltehetsz egy bemérés jelzőt a védekezőre.%LINEBREAK% FULL THROTTLE: Miután teljesen végrehajtottál egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Constable Zuvio":
           text: """Amikor kidobnál egy eszközt, helyette ki is lőheted egy (1 %STRAIGHT%) sablon használatával.%LINEBREAK% SPACETUG TRACTOR ARRAY: AKCIÓ: Válassz egy hajót a %FRONTARC% tűzívedben 1-es távolságban. Az a hajó kap 1 vonósugár jelzőt vagy 2 vonósugár jelzőt, ha benne van a %BULLSEYEARC% tűzívedben 1-es távolságban."""
        "Contracted Scout":
           text: """ """
        "Corran Horn":
           text: """0-ás kezdeményezésnél végrehajthatsz egy bónusz elsődleges támadást egy ellenséges hajó ellen, aki a %BULLSEYEARC% tűzívedben van. Ha így teszel, a következő tervezés fázisban kapsz 1 inaktív fegyverzet jelzőt.%LINEBREAK% EXPERIMENTAL SCANNERS: 3-as távolságon túl is bemérhetsz. Nem mérhetsz be 1-es távolságra."""
        '"Countdown"':
           text: """Amikor védekezel, az 'Eredmények semlegesítése' lépés után, ha nem vagy stresszes, választhatod, hogy elszenvedsz 1 %HIT% sérülést és kapsz 1 stressz jelzőt. Ha így teszel, vess el minden kocka dobást.  %LINEBREAK% ADAPTIVE AILERONS: Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre KELL hajtanod egy fehér (1 %BANKLEFT%), (1 %STRAIGHT%) vagy (1 %BANKRIGHT%) menővert."""
        "Countess Ryad":
           text: """Amikor végrehajtanál egy %STRAIGHT% manővert, megnövelheted annak nehézségét. Ha így teszel, végrehajthatsz egy %KTURN% manővert helyette. %LINEBREAK% FULL THROTTLE: Miután teljesen végrehajtottál egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Crymorah Goon":
           text: """ """
        "Cutlass Squadron Pilot":
           text: """ """
        "Dace Bonearm":
           text: """Miután egy ellenséges hajó 0-3-as távolságban kap legalább 1 ion jelzőt, elkölthetsz 3 %CHARGE% jelzőt. Ha így teszel az a hajó kap 2 további ion jelzőt."""
        "Dalan Oberos":
           text: """A ütközet fázis elején választhatsz 1 pajzzsal rendelekező hajót a %BULLSEYEARC% tűzívedben és elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, az a hajó elveszít egy pajzsot, te pedig visszatölthetsz 1 pajzsot.%LINEBREAK% DEAD TO RIGHTS: Amikor végrehajtasz egy támadást, ha a védekező benne van a %BULLSEYEARC% tűzívedben, a védekezőkockák nem módosíthatók zöld jelzőkkel."""
        "Dalan Oberos (StarViper)":
           text: """Miután teljesen végrehajtasz egy manővert, kaphatsz 1 stressz jelzőt, hogy elforgasd a hajód 90 fokkal.  %LINEBREAK% MICROTHRUSTERS: Amikor orsózást hajtasz végre, a (1 %BANKLEFT%) vagy (1 %BANKRIGHT%) sablont KELL használnod a (1 %STRAIGHT%) helyett."""
        "Darth Vader":
           text: """Miután végrehajtasz egy akciót, elkölthetsz 1 %FORCE% jelzőt, hogy végrehajts egy akciót. %LINEBREAK% ADVANCED TARGETING COMPUTER: Amikor végrehajtasz egy elsődleges támadást egy olyan védekező ellen, akit bemértél, 1-gyel több támadókockával dobj és változtasd egy %HIT% eredményt %CRIT% eredményre."""
        "Dash Rendar":
           text: """Amikor mozogsz, hagyd figyelmen kívül az akadályokat. %LINEBREAK% SENSOR BLINDSPOT: Amikor elsődleges támadást hajtasz végre 0-1-es távolságban, nem érvényesül a 0-1-es távolságért járó bónusz és 1-gyel kevesebb támadókockával dobsz."""
        '"Deathfire"':
           text: """Miután megsemmisülsz, mielőtt levennéd a hajód, végrehajthatsz egy támadást és ledobhatsz vagy kilőhetsz egy eszközt. %LINEBREAK% NIMBLE BOMBER: Ha ledobsz egy eszközt a %STRAIGHT% sablon segítségével, használhatod az azonos sebességű %BANKLEFT% vagy %BANKRIGHT% sablonokat helyette."""
        '"Deathrain"':
           text: """Miután ledobsz vagy kilősz egy eszközt, végrehajthatsz egy akciót."""
        "Del Meeko":
           text: """Amikor egy baráti 0-2 tábvolságban védekezik egy sérült támadó ellen, a védekező újradobhat 1 védekezőkockát."""
        "Delta Squadron Pilot":
           text: """FULL THROTTLE: Miután teljesen végrehajtottál egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Dengar":
           text: """Miután védekeztél, ha a támadó benne van a %FRONTARC% tűzívedben, elkölthetsz egy %CHARGE% jelzőt, hogy végrehajts egy bónusz támadást a támadó ellen."""
        '"Double Edge"':
           text: """Miután végrehajtasz egy %TURRET% vagy %MISSILE% támadást ami nem talál, végrehajthatsz egy bónusz támadást egy másik fegyverrel."""
        "Drea Renthal":
           text: """Amikor egy baráti nem-limitált hajó végrehajt egy támadást, ha a védekező benne van a tűzívedben, a támadó újradobhatja 1 támadókockáját."""
        '"Duchess"':
           text: """Választhatsz úgy, hogy nem használod az ADAPTIVE AILERONS képességed. Használhatod akkor is ADAPTIVE AILERONS-t, amikor stresszes vagy.%LINEBREAK% ADAPTIVE AILERONS: Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre KELL hajtanod egy fehér (1 %BANKLEFT%), (1 %STRAIGHT%) vagy (1 %BANKRIGHT%) menővert."""
        '"Dutch" Vander':
           text: """Miután %LOCK% akciót hajtottál végre választhatsz 1 baráti hajót 1-3-as távolságban. Az a hajó is bemérheti az általad bemért objektumot, függetlenül a távolságtól."""
        '"Echo"':
           text: """Amikor kijössz az álcázásból, a (2 %BANKLEFT%) vagy (2 %BANKRIGHT%) sablont KELL használnod a (2 %STRAIGHT%) helyett. STYGUM ARRAY: Miután kijössz az álcázásból végrehajthatsz egy %EVADE% akciót. A vége fázis elején elkölthetsz 1 kitérés jelzőt, hogy kapj egy álcázás jelzőt."""
        "Edrio Two-Tubes":
           text: """Mielőtt aktiválódnál és van fókuszod, végrehajthatsz egy akciót."""
        "Emon Azzameen":
           text: """Ha ki szeretnél dobni egy eszközt az [1 %STRAIGHT%] sablonnal, használhatod helyette a [3 %TURNLEFT%], [3 %STRAIGHT%], vagy [3 %TURNRIGHT%] sablont."""
        "Esege Tuketu":
           text: """Amikor egy 0-2-es távolságban baráti hajó védekezik, vagy támadást hajt végre, elköltheti a te fókusz jelzőidet, mintha a saját hajójáé lenne."""
        "Evaan Verlaine":
           text: """A ütközet fázis elején elkölthetsz 1 fókusz jelzőt, hogy kiválassz egy baráti hajót 0-1-es távolságban. Ha így teszel, az a hajó a kör végéig minden védekezésénél 1-gyel több védekezőkockával dob."""
        "Ezra Bridger":
           text: """Amikor védekezel vagy támadást hajtasz végre, ha stresszes vagy, elkölthetsz 1 %FORCE%-t, hogy legfeljebb 2 %FOCUS% eredményt %EVADE% vagy %HIT% eredményre módosíts.%LINEBREAK%LOCKED AND LOADED: Amikor dokkolva vagy, miután anyahajód végrehajtott egy elsődleges %FRONTARC% vagy %TURRET% támadást, végrehajthat egy bónusz %REARARC% támadást."""
        "Ezra Bridger (Sheathipede)":
           text: """Amikor védekezel vagy támadást hajtasz végre, ha stresszes vagy, elkölthetsz 1 %FORCE%-t, hogy legfeljebb 2 %FOCUS% eredményt %EVADE% vagy %HIT% eredményre módosíts.%LINEBREAK% COMMS SHUTTLE: Amikor dokkolva vagy, anyahajód %COORDINATE% akció lehetőséget kap. Anyahajód az aktiválása előtt végrehajthat egy %COORDINATE% akciót."""
        "Ezra Bridger (TIE Fighter)":
           text: """Amikor védekezel vagy támadást hajtasz végre, ha stresszes vagy, elkölthetsz 1 %FORCE%-t, hogy legfeljebb 2 %FOCUS% eredményt %EVADE% vagy %HIT% eredményre módosíts."""
        "Fenn Rau":
           text: """Amikor védekezel vagy támadást hajtasz végre, ha a támadás 1-es távolságban történik, 1-gyel több kockával dobhatsz. %LINEBREAK% CONCORDIA FACEOFF: Amikor védekezel vagy támadást hajtasz végre, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% tűzívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "Fenn Rau (Sheathipede)":
           text: """Miután egy ellenséges hajó a tűzívedben sorra kerül az Ütközet fázisban, ha nem vagy stresszes, kaphatsz 1 stressz jelzőt. Ha így teszel, az a hajó nem költhet el jelzőt, hogy módosítsa támadókockáit e fázis alatt.%LINEBREAK% COMMS SHUTTLE: Amikor dokkolva vagy, anyahajód %COORDINATE% akció lehetőséget kap. Anyahajód az aktiválása előtt végrehajthat egy %COORDINATE% akciót."""
        "Freighter Captain":
           text: """ """
        "Gamma Squadron Ace":
           text: """NIMBLE BOMBER: Ha ledobsz egy eszközt a %STRAIGHT% sablon segítségével, használhatod az azonos sebességű %BANKLEFT% vagy %BANKRIGHT% sablonokat helyette."""
        "Gand Findsman":
           text: """ """
        "Garven Dreis":
           text: """Miután elköltesz egy fókusz jelzőt, választhatsz 1 baráti hajót 1-3-as távolságban. Az a hajó kap egy fókusz jelzőt."""
        "Garven Dreis (X-Wing)":
           text: """Miután elköltesz egy fókusz jelzőt, választhatsz 1 baráti hajót 1-3-as távolságban. Az a hajó kap egy fókusz jelzőt."""
        "Gavin Darklighter":
           text: """Amikor egy baráti hajó végrehajt egy támadást, ha a védekező a %FRONTARC%-odban van, a támadó 1 %HIT% találatát %CRIT% találatra módosíthatja. %LINEBREAK% EXPERIMENTAL SCANNERS: 3-as távolságon túl is bemérhetsz. Nem mérhetsz be 1-es távolságra."""
        "Genesis Red":
           text: """Miután feltettél egy bemérés jelzőt, le kell venned az összes fókusz és kitérés jelződet, aztán megkapsz annyi fókusz és kitérés jelzőt, ahány a bemért hajónak van.%LINEBREAK% WEAPON HARDPOINT: Felszerelhetsz 1 %CANNON%, %TORPEDO% vagy %MISSILE% feljesztést."""
        "Gideon Hask":
           text: """Amikor végrehajtasz egy támadást sérült védekező ellen, 1-gyel több támadókockával dobhatsz."""
        "Gold Squadron Veteran":
           text: """ """
        "Grand Inquisitor":
           text: """Amikor 1-es távolságban védekezel, elkölthetsz 1 %FORCE% tokent, hogy megakadályozd az 1-es távolság bónuszt. Amikor támadást hajtasz végre 2-3-as távolságban lévő védekező ellen, elkölthetsz 1 %FORCE% jelzőt, hogy megkapd az 1-es távolság bónuszt."""
        "Gray Squadron Bomber":
           text: """ """
        "Graz":
           text: """Amikor védekezel és a támadó mögött vagy, 1-gyel több védekezőkockával dobhatsz. Amikor végrehajtasz egy támadást és a védekező mögött vagy, 1-gyel több támadókockával dobhatsz."""
        "Green Squadron Pilot":
           text: """VECTORED THRUSTERS: Miután végrehajtottál egy akciót, végrehajthatsz egy piros %BOOST% akciót."""
        "Guri":
           text: """A ütközet fázis elején, ha legalább 1 ellenséges hajó van 0-1-es távolságban, kapsz egy fókusz jelzőt. %LINEBREAK% MICROTHRUSTERS: Amikor orsózást hajtasz végre, a (1 %BANKLEFT%) vagy (1 %BANKRIGHT%) sablont KELL használnod a (1 %STRAIGHT%) helyett."""
        "Han Solo (Scum)":
           text: """Amikor védekezel vagy támadást hajtasz vége, ha a támadás akadály által akadályozott, 1-gyel több támadókockával dobhatsz."""
        "Han Solo":
           text: """Miután dobtál, ha 0-1-es távolságban vagy akadálytól, újradobhatod az összes kockádat. Ez nem számít újradobásnak más hatások számára."""
        "Heff Tobber":
           text: """Miután egy ellenséges hajó végrehajt egy manővert, ha 0-ás távolságba kerül, végrehajthatsz egy akciót."""
        "Hera Syndulla":
           text: """Miután vörös vagy kék manővert fedtél fel, átállíthatod manőversablonod egy másik, azonos nehézségű manőverre. %LINEBREAK% LOCKED AND LOADED: Amikor dokkolva vagy, miután anyahajód végrehajtott egy elsődleges %FRONTARC% vagy %TURRET% támadást, végrehajthat egy bónusz %REARARC% támadást."""
        "Hera Syndulla (VCX-100)":
           text: """Miután vörös vagy kék manővert fedtél fel, átállíthatod manőversablonod egy másik, azonos nehézségű manőverre.%LINEBREAK%TAIL GUN: Ha van bedokkolt a hajód, használhatod az elsődleges %REARARC% fegyvered, ugyanolyan támadási értékkel, mint a dokkolt hajó elsődleges %FRONTARC% értéke."""
        "Hired Gun":
           text: """ """
        "Horton Salm":
           text: """Amikor támadást hajtasz végre, a védekezőtől 0-1-es távolságban lévő minden más baráti hajó után újradobhatsz 1-1 támadókockát."""
        '"Howlrunner"':
           text: """Amikor egy 0-1-es távolságban lévő baráti hajó támadást hajt végre, 1 támadókockát újradobhat."""
        "Ibtisam":
           text: """Amikor teljesen végrehajtod a manővered, ha stresszes vagy, dobhatsz 1 támadókockával. %HIT% vagy %CRIT% esetén eltávolíthatsz 1 stressz jelzőt."""
        "Iden Versio":
           text: """Mielőtt egy 0-1-es távolságban lévő baráti hajó elszenvedne 1 vagy több sérülést, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, megakadályozod a sérülést."""
        "IG-88A":
           text: """A ütközet fázis elején kiválaszthatsz egy %CALCULATE% akcióval rendelkező baráti hajót 1-3-as távolságban. Ha így teszel, add át 1 kalkuláció jelződet neki. %LINEBREAK% ADVANCED DROID BRAIN: Miután végrehajtottál egy %CALCULATE% akciót, kapsz 1 kalkuláció jelzőt."""
        "IG-88B":
           text: """Miután végrehajtottál egy támadást ami nem talált, végrehajthatsz egy bónusz %CANNON% támadást. %LINEBREAK% ADVANCED DROID BRAIN: Miután végrehajtottál egy %CALCULATE% akciót, kapsz 1 kalkuláció jelzőt."""
        "IG-88C":
           text: """Miután végrehajtottál egy %BOOST% akciót, végrehajthatsz egy %EVADE% akciót. %LINEBREAK% ADVANCED DROID BRAIN: Miután végrehajtottál egy %CALCULATE% akciót, kapsz 1 kalkuláció jelzőt."""
        "IG-88D":
           text: """Amikor végrehajtasz egy Segnor's Loop (%SLOOPLEFT% vagy %SLOOPRIGHT%) manővert, Használhatsz ugyanazon sebességű másik sablont helyette: vagy megegyező irányú kanyar (%TURNLEFT% vagy %TURNRIGHT%), vagy előre egyenes (%STRAIGHT%) sablont. %LINEBREAK% ADVANCED DROID BRAIN: Miután végrehajtottál egy %CALCULATE% akciót, kapsz 1 kalkuláció jelzőt."""
        "Imdaar Test Pilot":
           text: """STYGUM ARRAY: Miután kijössz az álcázásból végrehajthatsz egy %EVADE% akciót. A vége fázis elején elkölthetsz 1 kitérés jelzőt, hogy kapj egy álcázás jelzőt."""
        "Inaldra":
           text: """Amikor védekezel vagy támadást hajtasz végre, elszenvedhetsz egy %HIT% sérülést, hogy újradobj bármennyi kockát. %LINEBREAK% WEAPON HARDPOINT: Felszerelhetsz 1 %CANNON%, %TORPEDO% vagy %MISSILE% feljesztést."""
        "Inquisitor":
           text: """ """
        "Jake Farrell":
           text: """Miután %BARRELROLL%, vagy %BOOST% akciót hajtottál végre, választhatsz 1 baráti hajót 0-1-es távolságban. Az a hajó végrehajthat egy %FOCUS% akciót. %LINEBREAK% VECTORED THRUSTERS: Miután végrehajtottál egy akciót, végrehajthatsz egy piros %BOOST% akciót."""
        "Jakku Gunrunner":
           text: """SPACETUG TRACTOR ARRAY: AKCIÓ: Válassz egy hajót a %FRONTARC% tűzívedben 1-es távolságban. Az a hajó kap 1 vonósugár jelzőt vagy 2 vonósugár jelzőt, ha benne van a %BULLSEYEARC% tűzívedben 1-es távolságban."""
        "Jan Ors":
           text: """Amikor egy tűzíveden belüli baráti hajó elsődleges támadást hajt végre, ha nem vagy stresszes, kaphatsz 1 stressz jelzőt. Ha így teszel, az a hajó 1-gyel több támadókockával dobhat"""
        "Jek Porkins":
           text: """Miután kapsz egy stressz jelzőt, dobhatsz 1 támadó kockával, hogy levedd. %HIT% dobás esetén elszenvedsz 1 %HIT% sérülést."""
        "Joy Rekkoff":
           text: """Amikor támadást hajtasz végre, elkölthetsz 1 %CHARGE% jelzőt egy felszerelt %TORPEDO% fejlesztésről. Ha így teszel a védekező 1-gyel kevesebb védekezőkockával dob. %LINEBREAK% CONCORDIA FACEOFF: Amikor védekezel vagy támadást hajtasz végre, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% tűzívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "Kaa'to Leeachos":
           text: """A ütközet fázis elején kiválaszthatsz egy 0-2-es távolságban lévő baráti hajót. Ha így teszel, áttehetsz róla 1 fókusz vagy kitérés jelzőt a magadra."""
        "Kad Solus":
           text: """Miután végrehajtasz egy piros manővrt, kapsz 2 fókusz jelzőt."""
        "Kanan Jarrus":
           text: """Amikor egy tűzívedben lévő baráti hajó védekezik, elkölthetsz 1 %FORCE%-t. Ha így teszel, a támadó 1-gyel kevesebb támadókockával dob.%LINEBREAK%TAIL GUN: Ha van bedokkolt a hajód, használhatod az elsődleges %REARARC% fegyvered, ugyanolyan támadási értékkel, mint a dokkolt hajó elsődleges %FRONTARC% értéke."""
        "Kashyyyk Defender":
           text: """ """
        "Kath Scarlet":
           text: """Amikor támadást hajtasz végre és legalább 1 nem-limitált baráti hajó van 0-ás távolságra a védekezőtől, dobj 1-gyel több támadókockával."""
        "Kavil":
           text: """Amikor egy nem-%FRONTARC% támadást hajtasz végre, dobj 1-gyel több támadókockával."""
        "Ketsu Onyo":
           text: """A ütközet fázis elején választhatsz egy hajót ami a %FRONTARC% and %SINGLETURRETARC% tűzívedben is benne van 0-1-es távolságban. Ha így teszel, az a hajó kap egy vonósugár jelzőt."""
        "Knave Squadron Escort":
           text: """EXPERIMENTAL SCANNERS: 3-as távolságon túl is bemérhetsz. Nem mérhetsz be 1-es távolságra."""
        "Koshka Frost":
           text: """Amikor védekezel vagy támadást hajtasz végre, ha az ellenséges hajó stresszes, újradobhatod 1 kockádat"""
        "Krassis Trelix":
           text: """Végrehajthatsz egy %FRONTARC% speciális támadást a %REARARC% tűzívedből. Amikor speciális támadást hajtasz végre, újradobhatsz egy támadókockát."""
        "Kullbee Sperado":
           text: """Miután végrehajtottál egy %BARRELROLL% vagy %BOOST% akciót, megfordíthatod a felszerelt %CONFIG% fejlesztés kártyád."""
        "Kyle Katarn":
           text: """A ütközet fázis elején átadhatod 1 fókusz jelződet egy tűzívedben lévő baráti hajónak."""
        "L3-37 (Escape Craft)":
           text: """Ha nincs pajzsod, csökkentsd a nehézségét a (%BANKLEFT% és %BANKRIGHT%) manővereknek. %LINEBREAK% CO-PILOT: Amíg dokkolva vagy, az anyahajód megkapja a pilóta képességed, mintha a sajátja lenne."""
        "L3-37":
           text: """Ha nincs pajzsod, csökkentsd a nehézségét a (%BANKLEFT% és %BANKRIGHT%) manővereknek."""
        "Laetin A'shera":
           text: """Miután védekezel vagy támadást hajtasz végre, ha a támadás nem talált, kapsz 1 kitérés jelzőt. %LINEBREAK% WEAPON HARDPOINT: Felszerelhetsz 1 %CANNON%, %TORPEDO% vagy %MISSILE% feljesztést."""
        "Lando Calrissian (Scum) (Escape Craft)":
           text: """Miután dobsz a kockákkal, ha nem vagy stresszes, kaphatsz 1 stressz jelzőt, hogy újradobhasd az összes üres eredményed. %LINEBREAK% CO-PILOT: Amíg dokkolva vagy, az anyahajód megkapja a pilóta képességed, mintha a sajátja lenne."""
        "Lando Calrissian":
           text: """Miután teljesen végrehajtottál egy kék manővert, választhatsz 1 baráti hajót 0-3-as távolságban. Az a hajó végrehajthat egy akciót."""
        "Lando Calrissian (Scum)":
           text: """Miután dobsz a kockákkal, ha nem vagy stresszes, kaphatsz 1 stressz jelzőt, hogy újradobhasd az összes üres eredményed."""
        "Latts Razzi":
           text: """A ütközet fázis elején kiválaszthatsz egy hajót 1-es távolságban és elköltheted a rajta lévő bemérés jelződet. Ha így teszel, az a hajó kap egy vonosugár jelzőt."""
        '"Leebo"':
           text: """Miután védekeztél, vagy támadást hajtottál végre, ha elköltöttél egy kalkuláció jelzőt, kapsz 1 kalkuláció jelzőt. %LINEBREAK% SENSOR BLINDSPOT: Amikor elsődleges támadást hajtasz végre 0-1-es távolságban, nem érvényesül a 0-1-es távolságért járó bónusz és 1-gyel kevesebb támadókockával dobsz."""
        "Leevan Tenza":
           text: """Miután végrehajtottál egy %BARRELROLL% vagy %BOOST% akciót, végrehajthatsz egy piros %EVADE% akciót."""
        "Lieutenant Blount":
           text: """Amikor elsődleges támadást hajtasz végre, ha a védekezőtől legalább 1 másik baráti hajó van 0-1-es távolságban, 1-gyel több támadókockával dobhatsz."""
        "Lieutenant Karsabi":
           text: """Miután kapsz egy 'inakvív fegyverzet' jelzőt, ha nem vagy stresszes, kaphatsz 1 stressz jelzőt, hogy levedd az 'inakvív fegyverzet' jelzőt."""
        "Lieutenant Kestal":
           text: """Amikor támadást hajtasz végre, miután a védekező dob a kockáival, elkölthetsz 1 fókusz jelzőt, hogy semlegesítsd a védekező összes üres és fókusz eredményét."""
        "Lieutenant Sai":
           text: """Miután végrehajtottál egy %COORDINATE% akciót, ha a koordinált hajó olyan akciót hajt végre, ami a te akciósávodon is rajta van, végrehajthatod azt az akciót."""
        "Lok Revenant":
           text: """ """
        "Lothal Rebel":
           text: """TAIL GUN: Ha van bedokkolt a hajód, használhatod az elsődleges %REARARC% fegyvered, ugyanolyan támadási értékkel, mint a dokkolt hajó elsődleges %FRONTARC% értéke."""
        "Lowhhrick":
           text: """Miután egy 0-1-es távolságban lévő baráti hajó védekezővé vált, elkölthetsz 1 erősítés jelzőt. Ha így teszel, az a hajó kap 1 kitérés jelzőt."""
        "Luke Skywalker":
           text: """Miután védekező lettél (még a kockagurítás előtt), visszatölthetsz 1 %FORCE% jelzőt."""
        "Maarek Stele":
           text: """Amikor támadást hajtasz végre, ha a védekező felfordított sérülés kártyát kapna, helyette húzz te 3 lapot, válassz egyet, a többit dobd el. %LINEBREAK% ADVANCED TARGETING COPMUTER: Amikor végrehajtasz egy elsődleges támadást egy olyan védekező ellen, akit bemértél, 1-gyel több támadókockával dobj és változtasd egy %HIT% eredményt %CRIT% eredményre."""
        "Magva Yarro":
           text: """Amikor egy baráti hajó 0-2-es távolságban védekezik, a támadó maximum 1 kockáját dobhatja újra."""
        "Major Rhymer":
           text: """Amikor végrhajtasz egy %TORPEDO% vagy %MISSILE% támadást, növelheted vagy csökkentheted a fegyver távolság követelményét 1-gyel, a 0-3 korláton belül. %LINEBREAK% NIMBLE BOMBER: Ha ledobsz egy eszközt a %STRAIGHT% sablon segítségével, használhatod az azonos sebességű %BANKLEFT% vagy %BANKRIGHT% sablonokat helyette."""
        "Major Vermeil":
           text: """Amikor támadást hajtasz végre, ha a védekezőnek nincs egy zöld jelzője sem, megváltoztathatod 1 üres vagy %FOCUS% eredményedet %HIT% eredményre. %LINEBREAK% ADAPTIVE AILERONS: Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre KELL hajtanod egy fehér (1 %BANKLEFT%), (1 %STRAIGHT%) vagy (1 %BANKRIGHT%) menővert."""
        "Major Vynder":
           text: """Amikor védekezel és van 'inaktív fegyverzet' jelződ, dobj 1-gyel több védekezőkockával."""
        "Manaroo":
           text: """A ütközet fázis elején kiválaszthatsz egy 0-1-es távolságban lévő baráti hajót. Ha így teszel, add át neki az összes zöld jelződ."""
        '"Mauler" Mithel':
           text: """Amikor támadást hajtasz végre 1-es távolságban, dobj 1-gyel több támadókockával."""
        "Miranda Doni":
           text: """Amikor elsődleges támadást hajtasz végre, elkölthetsz 1 pajzsot, hogy 1-gyel több támadókockával dobj, vagy ha nincs pajzsod, dobhatsz 1-gyel kevesebb támadókockával, hogy visszatölts 1 pajzsot."""
        "Moralo Eval":
           text: """Ha lerepülsz a pályáról, elkölthetsz egy %CHARGE% jelzőt. Ha így teszel, helyezd a hajód tartalékba. A következő tervezési fázis elején helyezd a hajót a pálya széléntől 1-es távolságban azon az oldalon, ahol lerepültél."""
        "Nashtah Pup":
           text: """Csak vészhelyzet esetén válhatsz le az anyahajóról. Ebben az esetben megkapod a megsemmisült baráti Hound's Tooth pilóta nevet, kezdeményezést, pilóta képességet és hajó %CHARGE% jelzőt. %LINEBREAK% ESCAPE CRAFT SETUP: HOUND'S TOOTH szükséges. A HOUND'S TOOTH-ra dokkolva kell kezdened a játékot."""
        "N'dru Suhlak":
           text: """Amikor elődleges támadást hajtasz végre, ha nincs baráti hajó 0-2 távolságban, dobj 1-gyel több támadókockával."""
        '"Night Beast"':
           text: """Miután teljesen végrehajtasz egy kék manővert, végrehajthatsz egy %FOCUS% akciót."""
        "Norra Wexley":
           text: """Amikor védekezel, ha az ellenség 0-1-es távolságban van, hozzáadhatsz 1 %EVADE% eredményt dobásodhoz."""
        "Norra Wexley (Y-Wing)":
           text: """Amikor védekezel, ha az ellenség 0-1-es távolságban van, hozzáadhatsz 1 %EVADE% eredményt dobásodhoz."""
        "Nu Squadron Pilot":
           text: """ """
        "Obsidian Squadron Pilot":
           text: """ """
        "Old Teroch":
           text: """A ütközet fázis elején, kiválaszthatsz 1 ellenséges hajót 1-es távolságban. Ha így teszel és benne vagy a %FRONTARC% tűzívében, leveheted az összes zöld jelzőjét. %LINEBREAK% CONCORDIA FACEOFF: Amikor védekezel vagy támadást hajtasz végre, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% tűzívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "Omicron Group Pilot":
           text: """ """
        "Onyx Squadron Ace":
           text: """FULL THROTTLE: Miután teljesen végrehajtottál egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Onyx Squadron Scout":
           text: """ """
        "Outer Rim Pioneer":
           text: """Baráti hajók 0-1-es távolságban végrehajthatnak támadást az akadályon állva. %LINEBREAK% CO-PILOT: Amíg dokkolva vagy, az anyahajód megkapja a pilóta képességed, mintha a sajátja lenne."""
        "Outer Rim Smuggler":
           text: """ """
        "Palob Godalhi":
           text: """A ütközet fázis elején kiválaszthatsz 1 ellenséges hajót a tűzívedben 0-2 távolságban. Ha így teszel tedd át 1 fókusz vagy kitérés jelzőjét magadra."""
        "Partisan Renegade":
           text: """ """
        "Patrol Leader":
           text: """ """
        "Phoenix Squadron Pilot":
           text: """VECTORED THRUSTERS: Miután végrehajtottál egy akciót, végrehajthatsz egy piros %BOOST% akciót."""
        "Planetary Sentinel":
           text: """ADAPTIVE AILERONS: Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre KELL hajtanod egy fehér (1 %BANKLEFT%), (1 %STRAIGHT%) vagy (1 %BANKRIGHT%) menővert."""
        "Prince Xizor":
           text: """Amikor védekezel, az 'eredmények semlegesítése' lépésben egy másik baráti hajó 0-1 távolságban a támadó tűzívében elszenvedhet 1 %HIT% vagy %CRIT% sérülést. Ha így tesz, hatástalaníts 1 ennek megfelelő eredményt. %LINEBREAK% MICROTHRUSTERS: Amikor orsózást hajtasz végre, a (1 %BANKLEFT%) vagy (1 %BANKRIGHT%) sablont KELL használnod a (1 %STRAIGHT%) helyett."""
        '"Pure Sabacc"':
           text: """Amikor támadást hajtasz végre, ha 1 vagy kevesebb sérüléskártyád van, 1-gyel több támadókockával dobhatsz. %LINEBREAK% ADAPTIVE AILERONS: Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre KELL hajtanod egy fehér (1 %BANKLEFT%), (1 %STRAIGHT%) vagy (1 %BANKRIGHT%) menővert."""
        "Quinn Jast":
           text: """Az ütközet fázis elején kaphatsz 1 'inaktív fegyverzet' jelzőt, hogy visszatölts 1 %CHARGE% jelzőt egy felszerelt fejlesztésen. %LINEBREAK% WEAPON HARDPOINT: Felszerelhetsz 1 %CANNON%, %TORPEDO% vagy %MISSILE% feljesztést."""
        "Rear Admiral Chiraneau":
           text: """Amikor támadást hajtasz végre, ha van 'reinforce' jelződ és a védekező a reinforce-nak megfelelő %FULLFRONTARC% vagy %FULLREARARC% tűzívedben van, megváltoztathatod 1 %FOCUS% eredményed %CRIT% eredményre."""
        "Rebel Scout":
           text: """ """
        "Red Squadron Veteran":
           text: """ """
        '"Redline"':
           text: """Fenntarthatsz 2 bemérő jelzőt. Miután végrehajtottál egy akciót, feltehetsz egy bemérő jelzőt."""
        "Rexler Brath":
           text: """Amikor végrehajtasz egy támadást, ami talál, ha van kitérés jelződ, fordítsd fel a védekező egy sérülés kártyáját. %LINEBREAK% FULL THROTTLE: Miután teljesen végrehajtottál egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Rho Squadron Pilot":
           text: """ """
        "Roark Garnet":
           text: """A ütközet fázis elején választhatsz egy tűzívedben lévő hajót. Ha így teszel, a kezdeményezési értéke ebben a fázisban 7 lesz, függetlenül a nyomtatott értékétől."""
        "Rogue Squadron Escort":
           text: """EXPERIMENTAL SCANNERS: 3-as távolságon túl is bemérhetsz. Nem mérhetsz be 1-es távolságra."""
        "Saber Squadron Ace":
           text: """AUTOTHRUSTERS: Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy egy piros %BOOST% akciót."""
        "Sabine Wren":
           text: """Mielőtt aktiválnád, végrehajthatsz egy %BARRELROLL% vagy egy %BOOST% akciót.%LINEBREAK%LOCKED AND LOADED: Amikor dokkolva vagy, miután anyahajód végrehajtott elsődleges %FRONTARC% vagy %TURRET% típusú támadást, végrehajthat egy bónusz %REARARC% támadást."""
        "Sabine Wren (Scum)":
           text: """Amikor védekezel, ha a támadó benne van a %SINGLETURRETARC% tűzívedben 0-2-es távolságban, hozzáadhatsz 1 %FOCUS% eredményt a dobásodhoz."""
        "Sabine Wren (TIE Fighter)":
           text: """Mielőtt aktiválnád, végrehajthatsz egy %BARRELROLL% vagy egy %BOOST% akciót."""
        "Sarco Plank":
           text: """Amikor védekezel kezelheted a mozgékonyság értékedet úgy, hogy az megegyezzen az ebben a körben végrehajtott manővered sebességével. %LINEBREAK% SPACETUG TRACTOR ARRAY: AKCIÓ: Válassz egy hajót a %FRONTARC% tűzívedben 1-es távolságban. Az a hajó kap 1 vonósugár jelzőt vagy 2 vonósugár jelzőt, ha benne van a %BULLSEYEARC% tűzívedben 1-es távolságban."""
        "Saw Gerrera":
           text: """Amikor egy sérült baráti hajó 0-3-as távolságban végrehajt egy támadást, újradobhat 1 támadókockát."""
        "Scarif Base Pilot":
           text: """ADAPTIVE AILERONS: Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre KELL hajtanod egy fehér (1 %BANKLEFT%), (1 %STRAIGHT%) vagy (1 %BANKRIGHT%) menővert."""
        "Scimitar Squadron Pilot":
           text: """NIMBLE BOMBER: Ha ledobsz egy eszközt a %STRAIGHT% sablon segítségével, használhatod az azonos sebességű %BANKLEFT% vagy %BANKRIGHT% sablonokat helyette."""
        '"Scourge" Skutu':
           text: """Amikor végrehajtasz egy támadást a %BULLSEYEARC% tűzívedben lévő védekező ellen, dobj 1-gyel több támadókockával."""
        "Serissu":
           text: """Amikor egy baráti hajó 0-1-es távolságban védekezik, újradobhatja 1 kockáját. %LINEBREAK% WEAPON HARDPOINT: Felszerelhetsz 1 %CANNON%, %TORPEDO% vagy %MISSILE% feljesztést."""
        "Seventh Sister":
           text: """Amikor végrehajtasz egy elsődleges támadást, az 'Eredmények semlegesítése' lépés előtt elkölthetsz 2 %FORCE% jelzőt, hogy hatástalaníts 1 %EVADE% eredményt."""
        "Seyn Marana":
           text: """Amikor végrehajtasz egy támadást elkölthetsz 1 %CRIT% eredményt. Ha így teszel, ossz 1 lefordított sérülés kártyát a védekezőnek, majd hatástalanítsd a többi dobás eredményed."""
        "Shadowport Hunter":
           text: """ """
        "Shara Bey":
           text: """Amikor védekezel vagy elsődleges támadást hajtasz végre, elköltheted az ellenfeledre tett bemérés jelződet, hogy hozzáadj 1 %FOCUS% eredményt dobásodhoz."""
        "Sienar Specialist":
           text: """ """
        "Sigma Squadron Ace":
           text: """STYGUM ARRAY: Miután kijössz az álcázásból végrehajthatsz egy %EVADE% akciót. A vége fázis elején elkölthetsz 1 kitérés jelzőt, hogy kapj egy álcázás jelzőt."""
        "Skull Squadron Pilot":
           text: """CONCORDIA FACEOFF: Amikor védekezel vagy támadást hajtasz végre, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% tűzívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "Sol Sixxa":
           text: """Ha ledobnál egy eszközt az [1 %STRAIGHT%] sablon használatával, helyette ledobhatod más 1-es sebességű sablonnal."""
        "Soontir Fel":
           text: """Az ütközet fázis elején ha van ellenséges hajó a %BULLSEYEARC% tűzívedben, kapsz 1 fókusz jelzőt. %LINEBREAK% AUTOTHRUSTERS: Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy egy piros %BOOST% akciót."""
        "Spice Runner":
           text: """ """
        "Storm Squadron Ace":
           text: """ADVANCED TARGETING COPMUTER: Amikor végrehajtasz egy elsődleges támadást egy olyan védekező ellen, akit bemértél, 1-gyel több támadókockával dobj és változtasd egy %HIT% eredményt %CRIT% eredményre."""
        "Sunny Bounder":
           text: """Amikor védekezel vagy támadást hajtasz végre, miután dobtál vagy újradobtál kockákat, ha minden eredményed egyforma, hozzáadhatsz egy ugyanolyan eredményt a dobáshoz. %LINEBREAK% WEAPON HARDPOINT: Felszerelhetsz 1 %CANNON%, %TORPEDO% vagy %MISSILE% feljesztést."""
        "Tala Squadron Pilot":
           text: """ """
        "Talonbane Cobra":
           text: """Amikor 3-as távolságban védekezel vagy 1-es távolságban támadást hajtasz végre, dobj 1-gyel több kockával."""
        "Tansarii Point Veteran":
           text: """WEAPON HARDPOINT: Felszerelhetsz 1 %CANNON%, %TORPEDO% vagy %MISSILE% feljesztést."""
        "Tel Trevura":
           text: """Ha megsemmisülnél, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, dobd el az összes sérülés kártyádat, szenvedj el 5 %HIT% sérülést, majd helyezd magad tartalékba. A következő tervezési fázis elején helyezd fel a hajód 1-es távolságban a saját oldaladon."""
        "Tempest Squadron Pilot":
           text: """ADVANCED TARGETING COPMUTER: Amikor végrehajtasz egy elsődleges támadást egy olyan védekező ellen, akit bemértél, 1-gyel több támadókockával dobj és változtasd egy %HIT% eredményt %CRIT% eredményre."""
        "Ten Numb":
           text: """Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1 stressz jelzőt, hogy minden %FOCUS% eredményű kockád értékét megváltoztasd %EVADE% vagy %HIT% találatra."""
        "Thane Kyrell":
           text: """Amikor támadást hajtasz végre, elkölthetsz 1 %FOCUS%, %HIT% vagy %CRIT% eredményt, hogy megnézd a védekező képpel lefelé fordított sérülés kártyáit, kiválassz egyet és megfordítsd."""
        "Tomax Bren":
           text: """Miután végrehajtasz egy %RELOAD% akciót, visszatölthetsz 1 %CHARGE% jelzőt 1 felszerelt %TALENT% fejlesztés kártyán. %LINEBREAK% NIMBLE BOMBER: Ha ledobsz egy eszközt a %STRAIGHT% sablon segítségével, használhatod az azonos sebességű %BANKLEFT% vagy %BANKRIGHT% sablonokat helyette."""
        "Torani Kulda":
           text: """Miután végrehajtasz egy támadást, minden ellenséges hajó a %BULLSEYEARC% tűzívedben elszenved 1 %HIT% sérülést, hacsak el nem dob 1 zöld jelzőt. %LINEBREAK% DEAD TO RIGHTS: Amikor végrehajtasz egy támadást, ha a védekező benne van a %BULLSEYEARC% tűzívedben, a védekezőkockák nem módosíthatók zöld jelzőkkel."""
        "Torkil Mux":
           text: """Az ütközet fázis elején kiválaszthatsz 1 hajót a tűzívedben. Ha így teszel, az a hajó ebben a körben 0-ás kezdeményezéssel kerül sorra a normál kezdeményezése helyett."""
        "Trandoshan Slaver":
           text: """ """
        "Turr Phennir":
           text: """Miután végrehajtasz egy támadást, végrehajthatsz egy %BARRELROLL% vagy %BOOST% akciót akkor is ha stresszes vagy. %LINEBREAK% AUTOTHRUSTERS: Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy egy piros %BOOST% akciót."""
        "Unkar Plutt":
           text: """Az ütközet fázis elején, ha van egy vagy több másik hajó 0-ás távolságban tőled, te és a 0-ás távolságra lévő hajók kapnak egy vonósugár jelzőt. %LINEBREAK% AKCIÓ: Válassz egy hajót a %FRONTARC% tűzívedben 1-es távolságban. Az a hajó kap 1 vonósugár jelzőt vagy 2 vonósugár jelzőt, ha benne van a %BULLSEYEARC% tűzívedben 1-es távolságban."""
        "Valen Rudor":
           text: """Miután egy baráti hajó 0-1-es távolságban védekezik - a sérülések elkönyvelése után -, végrehajthatsz egy akciót."""
        "Ved Foslo":
           text: """Amikor végrehajtasz egy manővert, végrehajthatsz egy manővert ugyanabban az irányban és nehézségben, 1-gyel kisebb vagy nagyobb sebességgel. %LINEBREAK% ADVANCED TARGETING COPMUTER: Amikor végrehajtasz egy elsődleges támadást egy olyan védekező ellen, akit bemértél, 1-gyel több támadókockával dobj és változtasd egy %HIT% eredményt %CRIT% eredményre."""
        "Viktor Hel":
           text: """Miután védekeztél, ha nem pontosan 2 védekezőkockával dobtál, a támadó kap 1 stress jelzőt."""
        '"Vizier"':
           text: """Miután teljesen végrehajtottál egy 1-es sebességű manővert az Adaptive Ailerons képességed használatával, végrehajthatsz egy %COORDINATE% akciót. Ha így teszel, hagyd ki az 'Akció végrehajtása' lépést. %LINEBREAK% ADAPTIVE AILERONS: Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre KELL hajtanod egy fehér (1 %BANKLEFT%), (1 %STRAIGHT%) vagy (1 %BANKRIGHT%) menővert."""
        '"Wampa"':
           text: """Amikor végrehajtasz egy támadást, elkölthetsz 1 %CHARGE% jelzőt, hogy 1-gyel több támadókockával dobj. Védekezés után elvesztesz 1 %CHARGE% jelzőt."""
        "Warden Squadron Pilot":
           text: """ """
        "Wedge Antilles":
           text: """Amikor támadást hajtasz végre, a védekező 1-gyel kevesebb védekezőkockával dob."""
        '"Whisper"':
           text: """Miután végrehajtasz egy támadást, ami talál, kapsz 1 kitérés jelzőt. STYGUM ARRAY: Miután kijössz az álcázásból végrehajthatsz egy %EVADE% akciót. A vége fázis elején elkölthetsz 1 kitérés jelzőt, hogy kapj egy álcázás jelzőt."""
        "Wild Space Fringer":
           text: """SENSOR BLINDSPOT: Amikor elsődleges támadást hajtasz végre 0-1-es távolságban, nem érvényesül a 0-1-es távolságért járó bónusz és 1-gyel kevesebb támadókockával dobsz."""
        "Wullffwarro":
           text: """Amikor elsődleges támadást hajtasz végre, ha sérült vagy, 1-gyel több támadókockával dobhatsz."""
        "Zealous Recruit":
           text: """CONCORDIA FACEOFF: Amikor védekezel vagy támadást hajtasz végre, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% tűzívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        '"Zeb" Orrelios':
           text: """Amikor védekezel a %CRIT% találatok előbb semlegesítődnek a %HIT% találatoknál.%LINEBREAK% LOCKED AND LOADED: Amikor dokkolva vagy, miután anyahajód végrehajtott egy elsődleges %FRONTARC% vagy %TURRET% támadást, végrehajthat egy bónusz %REARARC% támadást."""
        '"Zeb" Orrelios (Sheathipede)':
           text: """Amikor védekezel a %CRIT% találatok előbb semlegesítődnek a %HIT% találatoknál.%LINEBREAK% COMMS SHUTTLE: Amikor dokkolva vagy, anyahajód %COORDINATE% akció lehetőséget kap. Anyahajód az aktiválása előtt végrehajthat egy %COORDINATE% akciót."""
        '"Zeb" Orrelios (TIE Fighter)':
           text: """Amikor védekezel a %CRIT% találatok előbb semlegesítődnek a %HIT% találatoknál."""
        "Zertik Strom":
           text: """A vége fázis alatt elköltheted egy ellenséges hajón lévő bemérődet hogy felfordítsd egy sérülés kártyáját. %LINEBREAK% ADVANCED TARGETING COPMUTER: Amikor végrehajtasz egy elsődleges támadást egy olyan védekező ellen, akit bemértél, 1-gyel több támadókockával dobj és változtasd egy %HIT% eredményt %CRIT% eredményre."""
        "Zuckuss":
           text: """Amikor végrehajtasz egy elsődleges támadást, 1-gyel több támadókockával dobhatsz. Ha így teszel, a védekező 1-gyel több védekezőkockával dob."""
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
           text: """<i>Követelmény: Scum vagy Darth Vader</i> %LINEBREAK% Az ütközet fázis elején, kiválaszthatsz 1 ellenséges hajót 0-1-es távolságban. Ha így teszel kapsz egy kalkuláció jelzőt, hacsak a hajó nem választja, hogy kap 1 stressz jelzőt."""
        "4-LOM":
           text: """Amikor végrehajtasz egy támadást, a támadókockák eldobása után, megnevezhetsz egy zöld jelző típust. Ha így teszel, kapsz 2 ion jelzőt és ezen támadás alatt a védekező nem költheti el a megnevezett típusú jelzőt."""
        "Ablative Plating":
           text: """<i>Követelmény: közepes vagy nagy talp</i> %LINEBREAK% Mielőtt sérülést szenvednél egy akadálytól vagy baráti bomba robbanástól, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, megakadályozol 1 sérülést."""
        "Admiral Sloane":
           text: """Miután másik baráti hajó 0-3 távolságban védekezik, ha megsemmisül a támadó kap 2 stressz jelzőt. Amikor egy baráti hajó 0-3 távolságban végrehajt egy támadást egy stresszelt hajó ellen, 1 támadókockát újradobhat."""
        "Adv. Proton Torpedoes":
           text: """Támadás (%LOCK%): Költs el 1 %CHARGE% jelzőt. Változtass 1 %HIT% eredményt %CRIT% eredményre."""
        "Advanced Sensors":
           text: """Miután felfeded a tárcsádat, végrehajthatsz 1 akciót. Ha így teszel, nem hajthatsz végre másik akciót a saját aktivációdban."""
        "Advanced SLAM":
           text: """<i>Követelmény: %SLAM%</i> %LINEBREAK% Miután végrehajtasz egy %SLAM% akciót, ha teljesen végrehajtod azt a manővert, végrehajthatsz egy fehér akciót az akciósávodról pirosként kezelve."""
        "Afterburners":
           text: """<i>Követelmény: kis talp</i> %LINEBREAK% Miután teljesen végrehajtasz egy 3-5 sebességű manővert, elkölthetsz 1 %CHARGE% jelzőt, hogy végrehajts egy %BOOST% akciót, még ha stresszes is vagy."""
        "Agent Kallus":
           text: """Felhelyezés: rendelt hozzá a 'Hunted' kondíciót 1 ellenséges hajóhoz. Amikor végrehajtasz egy támadást a 'Hunted' kondícióval rendelkező hajó ellen, 1 %FOCUS% eredményed %HIT% eredményre változtathatod."""
        "Agile Gunner":
           text: """A vége fázisban forgathatod a %SINGLETURRETARC% mutatódat."""
        "Andrasta":
           text: """<i>Kapott akció: %RELOAD%</i> %LINEBREAK% Kapsz egy %DEVICE% fejlesztés helyet."""
        "Barrage Rockets":
           text: """Támadás (%FOCUS%): Költs el 1 %CHARGE% jelzőt. Ha a védekező benne van a %BULLSEYEARC% tűzívedben, elkölthetsz 1 vagy több %CHARGE% jelzőt, hogy újradobj azzal egyenlő számú támadókockát."""
        "Baze Malbus":
           text: """Amikor végrehajtasz egy %FOCUS% akciót, kezelheted pirosként. Ha így teszel minden egyes 0-1 távolságban lévő ellenséges hajó után kapsz 1 további fókusz jelzőt, de maximum 2 darabot."""
        "Bistan":
           text: """Amikor végrehajtasz egy elsődleges támadást, ha van fókusz jelződ, végrehajthatsz egy bónusz %SINGLETURRETARC% támadást egy olyan hajó ellen, akit még nem támadtál ebben a körben."""
        "Boba Fett":
           text: """Felhelyezés: tartalékban kezdesz. A felrakási fázis végén tedd a hajód 0 távolságra egy akadálytól, de 3-as távolságon túl az ellenséges hajóktól."""
        "Bomblet Generator":
           text: """[Bomba] A rendszer fázisban elkölthetsz 1 %CHARGE% jelzőt, hogy ledobd a Bomblet bombát a [1 %STRAIGHT%] sablonnal. Az aktivációs fázis elején elkölthetsz 1 pajzsot, hogy visszatölts 2 %CHARGE% jelzőt."""
        "Bossk":
           text: """Amikor végrehajtasz egy elsődleges támadást ami nem talál, ha nem vagy stresszes kapsz 1 stressz jelzőt és végrehajtasz egy bónusz támadást ugyanazon célpont ellen."""
        "BT-1":
           text: """<i>Követelmény: Scum vagy Darth Vader</i> %LINEBREAK% Amikor végrehajtasz egy támadást, megváltoztathatsz 1 %HIT% eredményt %CRIT% eredményre minden stressz  jelző után ami a védekezőnek van."""
        "C-3PO":
           text: """<i>Kapott akció: %CALCULATE%</i> %LINEBREAK% Védekezőkocka gurítás előtt, elkölthetsz 1 kalkuláció jelzőt hogy hangosan tippelhess egy 1 vagy nagyobb számra. Ha így teszel és pontosan annyi %EVADE% eredményt dobsz, adjál hozzá még 1 %EVADE% eredményt. Miután végrehajtasz egy %CALCULATE% akciót, kapsz 1 kalkuláció jelzőt."""
        "Cad Bane":
           text: """Miután ledobsz vagy kilősz egy eszközt, végrehajthatsz egy piros %BOOST% akciót."""
        "Cassian Andor":
           text: """A rendszer fázis alatt választhatsz 1 ellenséges hajót 1-2-es távolságban. Tippeld meg hangosan menővere irányát és sebességét, aztán nézd meg a tárcsáját. Ha az iránya és sebessége egyezik a tippeddel, megváltoztathatod a saját tárcsádat egy másik manőverre."""
        "Chewbacca":
           text: """Az ütközet fázis elején elkölthetsz 2 %CHARGE% jelzőt, hogy megjavíts 1 felfordított sérülés kártyát."""
        "Chewbacca (Scum)":
           text: """A vége fázis elején elkölthetsz 1 focus jelzőt, hogy megjavíts 1 felfordított sérülés kártyát."""
        '"Chopper" (Astromech)':
           text: """Akció: Költs el 1 nem-újratölthető %CHARGE% jelzőt egy másik felszerelt fejlesztésről, hogy visszatölts 1 pajzsot%LINEBREAK% Akció: költs el 2 pajzsot, hogy visszatölts 1 nem-újratölthető %CHARGE% jelzőt egy felszerelt fejlesztésen."""
        '"Chopper" (Crew)':
           text: """Az 'Akció végrehajtása' lépés közben végrehajthatsz 1 akciót, még stresszes is. Miután stresszesen végrehajtasz egy akciót szenvedj el 1 %HIT% sérülést vagy fordítsd fel 1 sérülés kártyád."""
        "Ciena Ree":
           text: """<i>Követelmény: %COORDINATE%</i> %LINEBREAK% Miután végrehajtasz egy %COORDINATE% akciót, ha a koordinált hajó végrehajt egy %BARRELROLL% vagy %BOOST% akciót, kaphat 1 stressz jelzőt, hogy elforduljon 90 fokot."""
        "Cikatro Vizago":
           text: """A vége fázis alatt, választhatsz 2 %ILLICIT% fejlesztést ami baráti hajókra van felszerelve 0-1-es távolságban. Ha így teszel, megcserélheted ezeket a fejlesztéseket. A játék végén: tegyél vissza minden %ILLICIT% fejlesztést az eredeti hajójára."""
        "Cloaking Device":
           text: """<i>Követelmény: kis vagy közepes talp</i> %LINEBREAK% Akció: költs el 1 %CHARGE% jelzőt, hogy végrehajts egy %CLOAK% akciót. A tervezési fázis elején dobj 1 támadó kockával. %FOCUS% eredmény esetén hozd ki a hajód álcázásból vagy vedd le az álcázás jelzőt."""
        "Cluster Missiles":
           text: """Támadás (%LOCK%): Költs el 1 %CHARGE% jelzőt. Ezen támadás után végrehajthatod ezt a támadást mint bónusz támaáds egy másik célpont ellen 0-1 távolságra a védekezőtől, figyelmen kívül hagyva a %LOCK% követelményt."""
        "Collision Detector":
           text: """Amikor orsózol vagy gyorsítasz átmozoghatsz vagy rámozoghatsz akadályra. Miután átmozogtál vagy rámozogtál egy akadályra, elkölthetsz 1 %CHARGE% jelzőt, hogy figyelmen kívül hagyhatsd az akadály hatását a kör végéig."""
        "Composure":
           text: """<i>Követelmény: %FOCUS%</i> %LINEBREAK% Ha nem sikerül végrehajtani egy akciót és nincs zöld jelződ, végrehajthatsz egy %FOCUS% akciót."""
        "Concussion Missiles":
           text: """Támadás (%LOCK%): Költs el 1 %CHARGE% jelzőt. Ha a támadás talált, a védekezőtől 0-1 távolságban lévő minden hajó felfordítja egy sérülés kártyáját."""
        "Conner Nets":
           text: """[Akna] A rendszer fázisban elkölthetsz 1 %CHARGE% jelzőt, hogy ledobj egy Conner Net aknát a [1 %STRAIGHT%] sablonnal. Ennak a kártyának a %CHARGE% jelzője NEM újratölthető."""
        "Contraband Cybernetics":
           text: """Mielőtt aktiválódnál, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, a kör végéig végrehajthatsz akciókat és piros manővereket, még stresszesen is."""
        "Crack Shot":
           text: """Amikor végrehajtasz egy elsődleges támadást, ha a védekező benne van a %BULLSEYEARC% tűzívedben, még az 'Eredmények semlegesítése' lépés előtt elkölthetsz 1 %CHARGE% jelzőt hogy hatástalaníts 1 %EVADE% eredményt."""
        "Daredevil":
           text: """<i>Követelmény: fehér %BOOST% és kis talp</i> %LINEBREAK% Amikor végrehajtasz egy fehér %BOOST% akciót, kezelheted pirosként, hogy a [1%TURNLEFT%] vagy [1 %TURNRIGHT%] sablokokat használhasd."""
        "Darth Vader":
           text: """Az ütközet fázis elején, válaszhatsz 1 hajót a tűzívedben 0-2-es távolságban és költs el 1 %FORCE% jelzőt. Ha így teszel, az a hajó elszenved 1 %HIT% sérülést, hacsak úgy nem dönt, hogy eldob 1 zöld jelzőt."""
        "Dauntless":
           text: """Miután részlegesen hajtottál végre egy manővert, végrehajthatsz 1 fehér akciót pirosként kezelve."""
        "Deadman's Switch":
           text: """Miután megsemmisültél, minden hajó 0-1 távolságban elszenved 1 %HIT% sérülést."""
        "Death Troopers":
           text: """Az aktivációs fázis alatt az ellenséges hajók 0-1-es távolságban nem vehetik le a stressz jelzőjüket."""
        "Debris Gambit":
           text: """<i>Követelmény: kis vagy közepes talp. Kapott akció: <r>%EVADE%</r></i> %LINEBREAK% Amikor végrehajtasz egy piros %EVADE% akciót, ha van 0-1-es távolságban egy akadály, kezeld az akciót fehérként."""
        "Dengar":
           text: """Miután védekezel, ha a támadó a tűzívedben van, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, dobj 1 támadókockával, hacsak a támadó úgy nem dönt, hogy eldobja 1 zöld jelzőjét. %HIT% vagy %CRIT% eredmény esetén a támadó elszenved 1 %HIT% sérülést."""
        "Director Krennic":
           text: """<i>Kapott akció: %LOCK%</i> %LINEBREAK% Felhelyezés: a hajók felhelyezése előtt, rendeld hozzá az 'Optimized Prototype' kondíciót egy másik baráti hajóhoz."""
        "Dorsal Turret":
           text: """<i>Kapott akció: %ROTATEARC%</i>"""
        "Electronic Baffle":
           text: """A vége fázis alatt, elszenvedhetsz 1 %HIT% sérülést, hogy levegyél 1 piros jelzőt."""
        "Elusive":
           text: """<i>Követelmény: kis vagy közepes talp</i> %LINEBREAK% Amikor védekezel, elkölthetsz 1 %CHARGE% jelzőt, hogy újradobj 1 védekezőkockát. Miután teljesen végrehajtottál egy piros manővert, visszatölthetsz 1 %CHARGE% jelzőt."""
        "Emperor Palpatine":
           text: """Amikor egy másik baráti hajó védekezik vagy végrehajt egy támadást, elkölthetsz 1 %FORCE% jelzőt, hogy módosít annak 1 kockáját úgy, mintha az a hajó költött volna el 1 %FORCE% jelzőt."""
        "Engine Upgrade":
           text: """<i>Követelmény: <r>%BOOST%</r>. Kapott akció: %BOOST% %LINEBREAK% Ennek a fejlesztésnek változó a költsége. 3, 6 vagy 9 pont attól függően, hogy kis, közepes vagy nagy talpú hajóra tesszük fel.</i>"""
        "Expert Handling":
           text: """<i>Követelmény: <r>%BARRELROLL%</r>. Kapott akció: %BARRELROLL% %LINEBREAK%  Ennek a fejlesztésnek változó a költsége. 2, 4 vagy 6 pont attól függően, hogy kis, közepes vagy nagy talpú hajóra tesszük fel.</i>"""
        "Ezra Bridger":
           text: """Amikor végrehajtasz egy elsődleges támadást, elkölthetsz 1 %FORCE% jelzőt, hogy végrehajts egy bónusz %SINGLETURRETARC% támadást egy olyan %SINGLETURRETARC% fegyverrel, amivel még nem támadtál ebben a körben. Ha így teszel és stresszes vagy, újradobhatsz 1 támadókockát."""
        "Fearless":
           text: """Amikor végrehajtasz egy %FRONTARC% elsődleges támadást, ha a támádási távolság 1 és benne vagy a védekező %FRONTARC% tűzívében, megváltoztathatsz 1 eredményedet %HIT% eredményre."""
        "Feedback Array":
           text: """Mielőtt sor kerül rád az üzközet fázisban, kaphatsz 1 ion jelzőt és 1 'inaktív fegyverzet' jelzőt. Ha így teszel, minden hajó 0-ás távolságban elszenved 1 %HIT% sérülést."""
        "Fifth Brother":
           text: """Amikor végrehajtasz egy támadást, elkölthetsz 1 %FORCE% jelzőt, hogy megváltoztass 1 %FOCUS% eredményed %CRIT% eredményre."""
        "Fire-Control System":
           text: """Amikor végrehajtasz egy támadást, ha van bemérőd a védekezőn, újradobhatod 1 támadókockádat. Ha így teszel, nem költheted el a bemérődet ebben a támadásban."""
        "Freelance Slicer":
           text: """Amikor védekezel, mielőtt a támadó kockákat eldobnák, elköltheted a támadón lévő bemérődet, hogy dobj 1 támadókockával. Ha így teszel, a támadó kap 1 zavarás jelzőt. Majd %HIT% vagy %CRIT% eredménynél kapsz 1 zavarás jelzőt."""
        '"Genius"':
           text: """Miután teljesen végrehajtottál egy manővert, ha még nem dobtál vagy lőttél ki eszközt ebben a körben, kidobhatsz 1 bombát."""
        "Ghost":
           text: """Bedokkoltathatsz 1 Attack shuttle-t vagy Sheathipede-class shuttle-t. A dokkolt hajót csak a hátsó pöcköktől dokkolhatod ki."""
        "Grand Inquisitor":
           text: """Miután egy ellenséges hajó 0-2-es távolságban felfedi a tárcsáját, elkölthetsz 1 %FORCE% jelzőt, hogy végrehajts 1 fehér akciót az akciósávodról, pirosként kezelve azt."""
        "Grand Moff Tarkin":
           text: """<i>Követelmény: %LOCK%</i> %LINEBREAK% A rendszer fázis alatt elkölthetsz 2 %CHARGE% jelzőt. Ha így teszel, minden baráti hajó kap egy bemérőt arra a hajóra, amit te is bemértél."""
        "Greedo":
           text: """Amikor végrehajtasz egy támadást, elkölthetsz 1 %CHARGE% jelzőt, hogy megváltoztass 1 %HIT% eredméynyt %CRIT% eredményre. Amikor védekezel, ha a %CHARGE% jelződ aktív, a támadó megváltoztathat 1 %HIT% eredméynyt %CRIT% eredményre."""
        "Han Solo":
           text: """Az ütközet fázis alatt, 7-es kezdeményezésnél, végrehajthatsz egy SINGLETURRETARC% támadást. Nem támadhatsz újra ezzel a %SINGLETURRETARC% fegyverrel ebben a körben."""
        "Han Solo (Scum)":
           text: """Mielőtt sor kerül rád az üzközet fázisban, végrehajthatsz egy piros %FOCUS% akciót."""
        "Havoc":
           text: """Elveszted a %CREW% fejlesztés helyet. Kapsz egy %SENSOR% és egy %ASTROMECH% fejlesztés helyet."""
        "Heavy Laser Cannon":
           text: """Támadás: a 'Támadókockák módosítása' lépés után változtasd az összes %CRIT% eredményt %HIT% eredményre."""
        "Heightened Perception":
           text: """Az ütközet fázis elején, elkölthetsz 1 %FORCE% jelzőt. Ha így teszel, 7-es kezdeményezéssel kerülsz sorra ebben a fázisban a rendes kezdeményezésed helyett."""
        "Hera Syndulla":
           text: """Stresszesen is végrehajthatsz piros manővert. Miután teljesen végrehajtottál egy piros manővert, ha 3 vagy több stressz jelződ van, vegyél le egy stressz jelzőt és szenvedj el 1 %HIT% sérülést."""
        "Homing Missiles":
           text: """Támadás (%LOCK%): Költs el 1 %CHARGE% jelzőt. Miután kijelölted a védekezőt, a védekező dönthet úgy, hogy elszenved 1 %HIT% sérülést. Ha így tesz, ugorjátok át a 'Támadó és védekező kockák' lépést és a támadást találtnak kezeljétek."""
        "Hotshot Gunner":
           text: """Amikor végrehajtasz egy %SINGLETURRETARC% támadást, a 'Védekezőkockák módosítása' lépés után a védekező dobja el 1 fókusz vagy kalkuláció jelzőjét."""
        "Hound's Tooth":
           text: """1 Z-95 AF4 headhunter bedokkolhat."""
        "Hull Upgrade":
           text: """Adj 1 szerkezeti értéket a hajódhoz.%LINEBREAK%<i>Ennek a fejlesztésnek változó a költsége. 2, 3, 5 vagy 7 pont attól függően, hogy a hajó 0, 1, 2 vagy 3 védekezésű.</i>"""
        "IG-2000":
           text: """Megkapod minden másik IG-2000 fejlesztéssel felszerelt baráti hajó pilóraképességét."""
        "IG-88D":
           text: """<i>Kapott akció: %CALCULATE%</i> %LINEBREAK% Megkapod minden IG-2000 fejlesztéssel felszerelt baráti hajó pilóraképességét. Miután végrehajtasz egy %CALCULATE% akciót, kapsz 1 kalkuláció jelzőt."""
        "Inertial Dampeners":
           text: """Mielőtt végrehajtanál egy manővert, elkölthetsz 1 pajzsot. Ha így teszel, hajts végre egy fehér [0 %STOP%] manővert a tárcsázott helyett, aztán kapsz 1 stressz jelzőt."""
        "Informant":
           text: """Felhelyezés: a hajók felhelyezése után válassz 1 ellenséges hajót és rendeld hozzá a 'Listening Device' kondíciót."""
        "Instinctive Aim":
           text: """Amikor végrehajtasz egy speciális támadást, elkölthetsz 1 %FORCE% jelzőt, hogy vigyelmen kívül hagyhatsd a %FOCUS% vagy %LOCK% követelményt."""
        "Intimidation":
           text: """Amikor egy ellenséges hajó 0-ás távolságban védekezik, 1-gyel kevesebb védekezőkockával dob."""
        "Ion Cannon Turret":
           text: """<i>Kapott akció: %ROTATEARC%</i> %LINEBREAK% Támadás: ha a támadás talált, költs egy 1 %HIT% vagy %CRIT% eredményt, hogy a védekező elszenvedjen 1 %HIT% sérülést. Minden fennmaradó %HIT%/%CRIT% eredmény után sérülés helyett ion jelzőt kap a védekező."""
        "Ion Cannon":
           text: """Támadás: ha a támadás talált, költs egy 1 %HIT% vagy %CRIT% eredményt, hogy a védekező elszenvedjen 1 %HIT% sérülést. Minden fennmaradó %HIT%/%CRIT% eredmény után sérülés helyett ion jelzőt kap a védekező"""
        "Ion Missiles":
           text: """Támadás (%LOCK%): Költs el 1 %CHARGE% jelzőt. ha a támadás talált, költs egy 1 %HIT% vagy %CRIT% eredményt, hogy a védekező elszenvedjen 1 %HIT% sérülést. Minden fennmaradó %HIT%/%CRIT% eredmény után sérülés helyett ion jelzőt kap a védekező."""
        "Ion Torpedoes":
           text: """Támadás (%LOCK%): Költs el 1 %CHARGE% jelzőt. ha a támadás talált, költs egy 1 %HIT% vagy %CRIT% eredményt, hogy a védekező elszenvedjen 1 %HIT% sérülést. Minden fennmaradó %HIT%/%CRIT% eredmény után sérülés helyett ion jelzőt kap a védekező."""
        "ISB Slicer":
           text: """A vége fázis alatt az ellenséges hajók 1-2-es távban nem vehetik le a zavarás jelzőket."""
        "Jabba the Hutt":
           text: """A vége fázis alatt, kiválaszthatsz 1 baráti hajót 0-2-es távolságban, majd költs el 1 %CHARGE% jelzőt. Ha így teszel, a kiválasztott hajó visszatölthet 1 %CHARGE% jelzőt 1 felszerelt %ILLICIT% fejlesztésén."""
        "Jamming Beam":
           text: """Támadás: ha a támadás talált, minden %HIT%/%CRIT% eredmény után sérülés helyett zavarás jelzőt kap a védekező."""
        "Juke":
           text: """<i>Követelmény: kis vagy közepes talp</i> %LINEBREAK% Amikor végrehajtasz egy támadást, ha van kitérés jelződ, megváltoztathatod a védekező 1 %EVADE% eredményét %FOCUS% eredményre."""
        "Jyn Erso":
           text: """Ha egy baráti hajó 0-3 távolságban fókusz jelzőt kapna, helyette kaphat 1 kitérés jelzőt."""
        "Kanan Jarrus":
           text: """Miután egy baráti hajó 0-2-es távolságban teljesen végrehajt egy manővert, elkölthetsz 1 %FORCE% jelzőt, hogy levegyél róla 1 stressz jelzőt."""
        "Ketsu Onyo":
           text: """A vége fázis elején, kiválaszthatsz 1 ellenséges hajót 0-2-es távolságban a tűzívedben. Ha így teszel, aza a hajó nem veheti le a vonósugár jelzőit."""
        "L3-37":
           text: """Felhelyezés: felfordítva szereld fel ezt a kártyát. Amikor védekezel, lefordíthatod ezt a kártyát. Ha így teszel, a támadónak újra kell dobnia az összes támadókockát.%LINEBREAK%<i>L3-37 programja:</i> Ha nincs pajzsod, csökkentsd a nehézségét a (%BANKLEFT% és %BANKRIGHT%) manővereknek."""
        "Lando Calrissian":
           text: """Akció: dobj 2 védekezőkockával. Minden egyes %FOCUS% eredmény után kapsz 1 fókusz jelzőt. Minden egyes %EVADE% eredmény után kapsz 1 kitérés jelzőt. Ha mindkettő eredmény üres, az ellenfeled választ, hogy fókusz vagy kitérés. Kapsz 1, a választásnak megfelelő jelzőt."""
        "Lando Calrissian (Scum)":
           text: """Kockadobás után elkölthetsz 1 zöld jelzőt, hogy újradobj 2 kockádat."""
        "Lando's Millennium Falcon":
           text: """1 Escape Craft be lehet dokkolva. Amikor egy Escape Craft be van dokkolva, elköltheted a pajzsait, mintha a te hajódon lenne. Amikor végrehajtasz egy elsődleges támadást stresszelt hajó ellen, dobj 1-gyel több támadókockával."""
        "Latts Razzi":
           text: """Amikor védekezel, ha a támadó stresszelt, levehetsz 1 stressz jelzőt a támadóról, hogy megváltoztass 1 üres/%FOCUS% eredményed %EVADE% eredményre."""
        "Leia Organa":
           text: """Az aktivációs fázis elején, elkölthetsz 3 %CHARGE% jelzőt. Ezen fázis alatt minden baráti hajó csökkentse a piros manőverei nehézségét."""
        "Lone Wolf":
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha nincs másik baráti hajó 0-2-es távolságban, elkölthetsz 1 %CHARGE% jelzőt, hogy újradobj 1 kockádat."""
        "Luke Skywalker":
           text: """Az ütközet fázis elején, elkölthetsz 1 %FORCE% jelzőt, hogy forgasd a %SINGLETURRETARC% mutatódat."""
        "Magva Yarro":
           text: """Miután védekezel, ha a támadás talált, feltehetsz egy bemérőt a támadóra."""
        "Marauder":
           text: """Amikor végrehajtasz egy elsődleges %REARARC% támadást, újradobhatsz 1 támadókockádat. Kapsz egy %GUNNER% fejlesztés helyet."""
        "Marksmanship":
           text: """Amikor végrehajtasz egy támadást, ha a védekező benne van a %BULLSEYEARC% tűzívedben, megváltoztathatsz 1 %HIT% eredményt %CRIT% eredményre."""
        "Maul":
           text: """<i>Követelmény: Scum vagy Ezra Bridger</i> %LINEBREAK% miután sérülést szenvedsz, kaphatsz 1 stressz jelzőt, hogy visszatölts 1 %FORCE% jelzőt. Felszerelhetsz \"Dark Side\" fejlesztéseket."""
        "Millennium Falcon":
           text: """<i>Kapott akció: %EVADE%</i> %LINEBREAK% Amikor védekezel, ha van kitérés jelződ, újradobhatsz 1 védekezőkockát."""
        "Minister Tua":
           text: """Az ütközet fázis elején, ha sérült vagy, végrehajthatsz egy piros %REINFORCE% akciót."""
        "Mist Hunter":
           text: """<i>Kapott akció: %BARRELROLL% </i> %LINEBREAK% Kapsz egy %CANNON% fejlesztés helyet."""
        "Moff Jerjerrod":
           text: """<i>Követelmény: %COORDINATE%</i> %LINEBREAK% A rendszer fázis alatt, elkölthetsz 2 %CHARGE% jelzőt. Ha így teszel, válassz a (1 %BANKLEFT%), (1 %STRAIGHT%) vagy (1 %BANKRIGHT%) sablonokból. Minden baráti hajó végrehajthat egy piros %BOOST% akciót a kiválasztott sablonnal."""
        "Moldy Crow":
           text: """Kapsz egy %FRONTARC% elsődleges fegyvert 3-as támadóértékkel. A vége fázis alatt megtarthatsz maximum 2 fókusz jelzőt."""
        "Munitions Failsafe":
           text: """Amikor végrehajtasz egy %TORPEDO% vagy %MISSILE% támadást, a támadókockák eldobása után, elvetheted az összes kocka eredményed, hogy visszatölts 1 %CHARGE% jelzőt, amit a támadáshoz elköltöttél."""
        "Nien Nunb":
           text: """Csökkentsd az íves manőverek [%BANKLEFT% és %BANKRIGHT%] nehézségét."""
        "Novice Technician":
           text: """A kör végén dobhatsz 1 támadó kockával, hogy megjavíts egy felfordított sérülés kártyát. %HIT% eredménynél, fordíts fel egy sérülés kártyát."""
        "Os-1 Arsenal Loadout":
           text: """Amikor pontosan 1 'inaktív fegyverzet' jelződ van, akkor is végre tudsz hajtani %TORPEDO% és %MISSILE% támadást bemért célpontok ellen. Ha így teszel, nem használhatod el a bemérődet a támadás alatt. Kapsz egy %TORPEDO% és egy %MISSILE% fejlesztés helyet."""
        "Outmaneuver":
           text: """Amikor végrehajtasz egy %FRONTARC% támadást, ha nem vagy a védekező tűzívében, a védekező 1-ggyel kevesebb védekezőkockával dob."""
        "Outrider":
           text: """Amikor végrehajtasz egy támadást ami egy akadály által akadályozott, a védekező 1-gyel kevesebb védekezőkockával dob. Miután teljesen végrehajtottál egy manővert, ha áthaladtál vagy átfedésbe kerültél egy akadállyal, levehetsz 1 piros vagy narancs jelződet."""
        "Perceptive Copilot":
           text: """Miután végrehajtasz egy %FOCUS% akciót, kapsz 1 fókusz jelzőt."""
        "Phantom":
           text: """Be tudsz dokkolni 0-1 távolságból."""
        "Phantom (Sheathipede)":
           text: """Be tudsz dokkolni 0-1 távolságból."""
        "Pivot Wing":
           text: """<b>Csukva:</b> Amikor védekezel, 1-gyel kevesebb védekezőkockával dobsz. Miután végrehajtasz egy [0 %STOP%] manővert, elforgathatod a hajód 90 vagy 180 fokkal. Mielőtt aktiválódsz, megfordíthatod ezt a kártyát. %LINEBREAK% <b>Nyitva:</b> Mielőtt aktiválódsz, megfordíthatod ezt a kártyát."""
        "Predator":
           text: """Amikor végrehajtasz egy elsődleges támadást, ha a védekező benne van a %BULLSEYEARC% tűzívedben, újradobhatsz 1 támadókockát."""
        "Proton Bombs":
           text: """[Bomba] A rendszer fázisban elkölthetsz 1 %CHARGE% jelzőt, hogy kidobj egy Proton bombát az [1 %STRAIGHT%] sablonnal."""
        "Proton Rockets":
           text: """Támadás (%FOCUS%): Költs el 1 %CHARGE% jelzőt."""
        "Proton Torpedoes":
           text: """Támadás (%LOCK%): Költs el 1 %CHARGE% jelzőt. Változtass 1 %HIT% eredményt %CRIT% eredményre."""
        "Proximity Mines":
           text: """[Akna] A rendszer fázisban elkölthetsz 1 %CHARGE% jelzőt, hogy ledobj egy Proximity aknát az [1 %STRAIGHT%] sablonnal. Ennak a kártyának a %CHARGE% jelzője NEM újratölthető."""
        "Punishing One":
           text: """Amikor végrehajtasz egy elsődleges támadást, ha a védekező benne van a %FRONTARC% tűzívedben, dobj 1-gyel több támadókockával. Elveszted a %CREW% fejlesztés helyet. Kapsz egy %ASTROMECH% fejlesztés helyet. """
        "Qi'ra":
           text: """Amikor mozogsz vagy támadást hajtasz végre, figyelmen kívül hagyhatod az összes akadályt, amit bemértél."""
        "R2 Astromech":
           text: """Miután felfeded a tárcsád, elkölthetsz 1 %CHARGE% jelzőt és kapsz 1 'inaktív fegyverzet' jelzőt, hogy visszatölts egy pajzsot."""
        "R2-D2":
           text: """Miután felfeded a tárcsád, elkölthetsz 1 %CHARGE% jelzőt és kapsz 1 'inaktív fegyverzet' jelzőt, hogy visszatölts egy pajzsot."""
        "R2-D2 (Crew)":
           text: """A vége fázis alatt, ha sérült vagy és nincs pajzsod, dobhatsz 1 támadókockával, hogy visszatölts 1 pajzsot. %HIT% eredménynél, fordíts fel 1 sérüléskártyát."""
        "R3 Astromech":
           text: """Fenntarthatsz 2 bemérőt. Mindegyik bemérő más célponton kell legyen. Miután végrehajtasz egy %LOCK% akciót, feltehetsz egy bemérőt."""
        "R4 Astromech":
           text: """<i>Követelmény: kis talp</i> %LINEBREAK% Csökkentsd a nehézségét az 1-2 sebességű alapmanővereidnek (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%)."""
        "R5 Astromech":
           text: """Akció: Költs el 1 %CHARGE% jelzőt, hogy megjavíts egy lefordított sérülés kártyát.%LINEBREAK%Akció: Javíts meg 1 felfordított 'Ship' sérülés kártyát."""
        "R5-D8":
           text: """Akció: Költs el 1 %CHARGE% jelzőt, hogy megjavíts egy lefordított sérülés kártyát.%LINEBREAK%Akció: Javíts meg 1 felfordított 'Ship' sérülés kártyát."""
        "R5-P8":
           text: """Amikor végrehajtasz egy támadást a %FRONTARC% tűzívedben lévő védekező ellen, elkölthetsz 1 %CHARGE% jelzőt, hogy újradobj 1 támadókockát. Ha az újradobott eredmény %CRIT%, szenved el 1 %CRIT% sérüléste."""
        "R5-TK":
           text: """Végrehajthatsz támadást baráti hajó ellen."""
        "Rigged Cargo Chute":
           text: """<i>Követelmény: közepes vagy nagy talp</i> %LINEBREAK% Akció: Költs el 1 %CHARGE% jelzőt. Dobj ki 1 rakomány jelzőt az [1 %STRAIGHT%] sablonnal."""
        "Ruthless":
           text: """Amikor végrehajtasz egy támadást, kiválaszthatsz másik  baráti hajót 0-1-es távolságra a védekezőtől. Ha így teszel, a kiválasztott hajó elszenved 1 %HIT% sérülést és te megváltoztathatsz 1 kocka eredményed %HIT% eredményre."""
        "Sabine Wren":
           text: """Felhelyezés: tegyél fel 1 ion, 1 zavarás, 1 stressz és 1 vonósugár jelzőt erre a kártyára. Miután egy hajó sérülést szenved egy baráti bombától, levehetsz 1 ion, 1 zavarás, 1 stressz vagy 1 vonosugár jelzőt erről a kártyáról. Ha így teszel, az a hajó megkapja ezt a jelzőt."""
        "Saturation Salvo":
           text: """<i>Követelmény: %RELOAD%</i> %LINEBREAK% Amikor végrehajtasz egy %TORPEDO% vagy %MISSILE% támadást, elkölthetsz 1 %CHARGE% jelzőt arról a kártyától. Ha így teszel, válassz 2 védekezőkockát. A védekezőnek újra kell dobnia azokat a kockákat."""
        "Saw Gerrera":
           text: """Amikor végrehajtasz egy támadást, elszenvedhetsz 1 %HIT% sérülést, hogy megváltoztasd az összes %FOCUS% eredményed %CRIT% eredményre."""
        "Seasoned Navigator":
           text: """Miután felfedted a tárcsádat, átállíthatod egy másik nem piros manőverre ugyanazon sebességen. Amikor végrehajtod azt a manővert növeld meg a nehézségét."""
        "Seismic Charges":
           text: """[Bomba] A rendszer fázisban elkölthetsz 1 %CHARGE% jelzőt, hogy ledobj egy Seismic Charge bombát az [1 %STRAIGHT%] sablonnal."""
        "Selfless":
           text: """Amikor másik baráti hajó 0-1-es távolságban védekezik, az 'eredmények semlegesítése' lépés előtt, ha benne vagy a támadási tűzívben, elszenvedhetsz 1 %CRIT% sérülést, hogy semlegesíts 1 %CRIT% eredményt."""
        "Sense":
           text: """A rendszer fázis alatt kiválaszthatsz 1 hajót 0-1-es távolságban és megnézheted a tárcsáját. Ha elköltesz 1 %FORCE% jelzőt választhatsz 0-3-as távolságból is hajót."""
        "Servomotor S-Foils":
           text: """<b>Csukva:</b> Amikor végrehajtasz egy elsődleges támadást, 1-gyel kevesebb védekezőkockával dobj. Mielőtt aktiválódsz, megfordíthatod ezt a kártyát. %LINEBREAK% <i>Kapott akciók: %BOOST%, %FOCUS% > <r>%BOOST%</r></i> %LINEBREAK% <b>Nyitva:</b> Mielőtt aktiválódsz, megfordíthatod ezt a kártyát"""
        "Seventh Sister":
           text: """Ha egy ellenséges hajó 0-1-es távolságra egy stressz jelzőt kapna, elkölthetsz 1 %FORCE% jelzőt, hogy 1 zavarás vagy vonósugár jelzőt kapjon helyette."""
        "Shadow Caster":
           text: """Miután végrehajtasz egy támadást ami talál, ha a védekező benne van egyszerre a %SINGLETURRETARC% és %FRONTARC% tűzívedben, a védekező kap 1 vonósugár jelzőt."""
        "Shield Upgrade":
           text: """Adj 1 pajzs értéket a hajódhoz.%LINEBREAK%<i>Ennek a fejlesztésnek változó a költsége. 3, 4, 6 vagy 8 pont attól függően, hogy a hajó 0, 1, 2 vagy 3 védekezésű.</i>"""
        "Skilled Bombardier":
           text: """Ha ledobsz vagy kilősz egy eszközt, megegyező irányban használhatsz 1-gyel nagyob vagy kisebb sablont."""
        "Slave I":
           text: """Miután felfedtél egy kanyar (%TURNLEFT% or %TURNRIGHT%) vagy ív (%BANKLEFT% or %BANKRIGHT%) manővert, átforgathatod a tárcsádat az ellenkező irányba megtartva a sebességet és a mozgásformát. Kapsz egy %TORPEDO% fejlesztés helyet."""
        "Squad Leader":
           text: """<i>Kapott akció: <r>%COORDINATE%</r></i> %LINEBREAK% Amikor koordinálsz, a kiválasztott hajó csak olyan akciót hajthat végre, ami a te akciósávodon is rajta van."""
        "ST-321":
           text: """Amikor végrehajtasz egy %COORDINATE% akciót, kiválaszthatsz egy ellenséges hajót 0-3-as távolságban a koordinált hajótól. Ha így teszel, tegyél fel egy bemérőt arra az ellenséges hajóra figyelmen kívül hagyva a távolság megkötéseket."""
        "Static Discharge Vanes":
           text: """Mielőtt kapnál 1 ion vagy zavarás jelzőt, ha nem vagy stresszes, választhatsz egy másik hajót 0-1-es távolságban és kapsz 1 stressz jelzőt. Ha így teszel, a kiválasztott hajó kapja meg az ion vagy zavarás jelzőt helyetted."""
        "Stealth Device":
           text: """Amikor védekezel, ha a %CHARGE% jelződ aktív, dobj 1-gyel több védekezőkockával. Miután elszenvedsz egy sérülés, elvesztesz 1 %CHARGE% jelzőt. %LINEBREAK%<i>Ennek a fejlesztésnek változó a költsége. 3, 4, 6 vagy 8 pont attól függően, hogy a hajó 0, 1, 2 vagy 3 védekezésű.</i>"""
        "Supernatural Reflexes":
           text: """<i>Követelmény: kis talp</i> %LINEBREAK% Mielőtt aktiválódsz, elkölthetsz 1 %FORCE% jelzőt, hogy végrehajts egy %BARRELROLL% vagy %BOOST% akciót. Ha olyan akciót hajtottál végre, ami nincs az akciósávodon, elszenvedsz 1 %HIT% sérülést."""
        "Swarm Tactics":
           text: """Az ütközet fázis elején, kiválaszthatsz 1 baráti hajót 1-es távolságban. Ha így teszel, az a hajó a kör végéig kezelje úgy a kezdeményezés értékét, mintha egyenlő lenne a tiéddel."""
        "Tactical Officer":
           text: """<i>Követelmény: <r>%COORDINATE%</r>. Kapott akció: %COORDINATE%</i>"""
        "Tactical Scrambler":
           text: """<i>Követelmény: közepes vagy nagy talp</i> %LINEBREAK% Amikor akadályozod egy ellenséges hajó támadását, a védekező 1-gyel több védekezőkockával dob."""
        "Tobias Beckett":
           text: """Felhelyezés: a hajók felhelyezése után, kiválaszthatsz 1 akadályt a pályáról. Ha így teszel, helyezd át bárhová 2-es távolságra a szélektől vagy hajóktól és 1-es távolságra más akadályoktól."""
        "Tractor Beam":
           text: """Támadás: ha a támadás talált, minden %HIT%/%CRIT% eredmény után sérülés helyett vonósugár jelzőt kap a védekező."""
        "Trajectory Simulator":
           text: """A rendszer fázis alatt, ha ledobsz vagy kilősz egy bombát, kilőheted a (5 %STRAIGHT%) sablonnal."""
        "Trick Shot":
           text: """Amikor végrehajtasz egy támadást ami akadályozott egy akadály által, dobj 1-gyel több támadókockával."""
        "Unkar Plutt":
           text: """Miután részlegesen végrehajtottál egy manővert, elszenvedhetsz 1 %HIT% sérülést, hogy végrehajts 1 fehér akciót."""
        "Veteran Tail Gunner":
           text: """<i>Követelmény: %REARARC%</i> %LINEBREAK% miután végrehajtasz egy elsődleges %FRONTARC% támadást, végrehajthatsz egy bónusz elsődleges %REARARC% támadást."""
        "Veteran Turret Gunner":
           text: """<i>Követelmény: %ROTATEARC%</i> %LINEBREAK% Amikor végrehajtasz egy elsődleges támadást, végrehajthatsz egy bónusz %SINGLETURRETARC% egy olyan %SINGLETURRETARC% fegyverrel, amit még nem használtál ebben a körben."""
        "Virago":
           text: """A vége fázis alatt, elkölthetsz 1 %CHARGE% jelzőt, hogy végrehajts egy piros %BOOST% akciót. Kapsz egy %MODIFICATION% fejlesztés helyet. Adj 1 pajzs értéket a hajódhoz."""
        "Xg-1 Assault Configuration":
           text: """Amikor pontosan 1 'inaktív fegyverzet' jelződ van, akkor is végrehajthatsz %CANNON% támadást. Amikor %CANNON% támadást hajtasz végre 'inaktív fegyverzet' jelzővel, maximum 3 támadókockával dobhatsz. Kapsz egy %CANNON% fejlesztés helyet."""
        '"Zeb" Orrelios':
           text: """Végrehajthatsz elsődleges támadást 0-ás távolságban. Az ellenséges hajók 0-ás távolságban végrehajthatnak elsődleges támadást ellened."""
        "Zuckuss":
           text: """Amikor végrehajtasz egy támadást, ha nem vagy stresszes, válaszhatsz 1 védekezőkockát és kapsz 1 stressz jelzőt. Ha így teszel, a védekezőnek újra kell dobnia azt a kockát."""
        'GNK "Gonk" Droid':
           text: """Felhelyezés: Elvesztesz 1 %CHARGE% jelzőt. Akció: tölts vissza 1 %CHARGE% jelzőt. Akció: Költs el 1 %CHARGE% jelzőt, hogy visszatölts egy pajzsot."""
        "Hardpoint: Cannon":
           text: """Kapsz egy %CANNON% fejlesztés helyet."""
        "Hardpoint: Missile":
           text: """Kapsz egy %MISSILE% fejlesztés helyet."""
        "Hardpoint: Torpedo":
           text: """Kapsz egy %TORPEDO% fejlesztés helyet."""
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
           text: '''Amikor végrehajtasz egy támadást más hajó ellen mint <strong>Captain Rex</strong>, dobj 1-gyel kevesebb kockával. %LINEBREAK% Miután <strong>Captain Rex</strong> védekezik, vedd le ezt a kártyát.  %LINEBREAK% Az ütközet fázis végén, ha <strong>Captain Rex</strong> nem hajtott végre támadást ebben a fázisban, vedd le ezt a kártyát. %LINEBREAK% Miután <strong>Captain Rex</strong> megsemmisült, vedd le ezt a kártyát.'''
        'Hunted':
           text: '''Miután megsemmisültél, választanod kell egy baráti hajót és átadni neki ezt a kondíció kártyát.'''
        'Listening Device':
           text: '''A rendszer fázisban, ha egy ellenséges hajó az <strong>Informant</strong> fejlesztéssel 0-2-es távolságban van, fedd fel a tárcsád.'''
        'Optimized Prototype':
           text: '''Amikor végrehajtasz egy elsődleges %FRONTARC% támadást egy olyan hajó ellen, amit bemért <strong>Director Krennic</strong> fejlesztéssel felszerelt hajó, elkölthetsz 1 %HIT%/%CRIT%/%FOCUS% eredményt. Ha így teszel, választhatsz, hogy a védekező elveszt 1 pajzsot vagy a védekező felfordítja 1 sérüléskártyáját.'''
        '''I'll Show You the Dark Side''': 
           text: ''' ??? '''
        'Proton Bomb':
           text: '''(Bomba jelző) - Az aktivációs fázis végén ez az eszköz felrobban. Amikor ez az eszköz felrobban, minden hajó 0–1-es távolságban elszenved 1 %CRIT% sérülést.'''
        'Seismic Charge':
           text: '''(Bomb jelző) - Az aktivációs fázis végén ez az eszköz felrobban. Amikor ez az eszköz felrobban, válassz 1 akadály 0–1-es távolságban. Minden hajó 0–1-es távolságra az akadálytól elszenved 1 %HIT% sérülést. Aztán vedd le az akadályt. '''
        'Bomblet':
           text: '''(Bomb jelző) - Az aktivációs fázis végén ez az eszköz felrobban. Amikor ez az eszköz felrobban, minden hajó 0–1-es távolságban dob 2 támadókockával. Minden hajó elszenved 1 %HIT% sérülést minden egyes %HIT%/%CRIT% eredmény után.'''
        'Loose Cargo':
           text: '''(Űrszemég jelző) - A kidobott rakomány űrszemétnek számít.'''
        'Conner Net':
           text: '''(Akna jelző) - Miután egy hajó átmozog vagy átfedésbe kerül ezzel az eszközzel, az felrobban. Amikor ez az eszköz felrobban, a hajó elszenved 1 %HIT% sérülést és kap 3 ion jelzőt.'''
        'Proximity Mine':
           text: '''(Akna jelző) - Miután egy hajó átmozog vagy átfedésbe kerül ezzel az eszközzel,  az felrobban. Amikor ez az eszköz felrobban, a hajó dob 2 támadókockával, aztán elszenved 1 %HIT%, valamint a dobott eremény szerint 1-1 %HIT%/%CRIT% sérülést.'''
            
    modification_translations =

    title_translations =
            
    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, condition_translations, modification_translations, title_translations, 
