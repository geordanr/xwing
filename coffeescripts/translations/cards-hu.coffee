exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.hu = 'Magyar'

exportObj.translations ?= {}
exportObj.translations.Magyar =
    slot:
        "Astromech": "Astromech"
        "Force": "Erő"
        "Bomb": "Bomba"
        "Cannon": "Ágyú"
        "Crew": "Személyzet"
        "Missile": "Rakéta"
        "Sensor": "Szenzor"
        "Torpedo": "Torpedó"
        "Turret": "Lövegtorony"
        "Hardpoint": "Fegyverfelfüggesztés"
        "Illicit": "Tiltott"
        "Configuration": "Konfiguráció"
        "Talent": "Talentum"
        "Modification": "Módosítás"
        "Gunner": "Fegyverzet kezelő"
        "Device": "Töltet"
        "Tech": "Tech"
        "Title": "Nevesítés"
    sources:
        "Second Edition Core Set": "Second Edition Core Set"
        "Rebel Alliance Conversion Kit": "Rebel Alliance Conversion Kit"
        "Galactic Empire Conversion Kit": "Galactic Empire Conversion Kit"
        "Scum and Villainy Conversion Kit": "Scum and Villainy Conversion Kit"
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
        upgradePlaceholder: (translator, slot) ->
            "Nincs #{translator 'slot', slot} fejlesztés"
        modificationPlaceholder: "Nincs módosítás"
        titlePlaceholder: "Nincs nevesítés"
        upgradeHeader: (translator, slot) ->
            "#{translator 'slot', slot} fejlesztés"
        unreleased: "kiadatlan"
        epic: "epikus"
        limited: "korlátozott"
    byCSSSelector:
        # Warnings
        'Unreleased content warning': 'Ez a raj kiadatlan tartalmat használ!'
        'Broken squad link warning': 'It appears that you followed a broken link. No squad could be loaded!'
        'Collection warning': 'Ez a lista nem vihető pályára a készletedből!'
        'Ship number warning': 'Egy versenylista 2-8 hajót kell tartalmazzon!'
        # Type selector
        'Extended': 'Kiterjesztett'
        'Hyperspace': 'Hyperspace'
        'Epic': 'Epic'
        'Quickbuild': 'Quick Build'
        # Card browser
        'Name': 'Név'
        'Source': 'Forrás'
        'Type (by Points)': 'Típus (pont szerint)'
        'Type (by Name)': 'Típus (név szerint)'
        'Select a card': 'Válassz a bal oldalon lévő kártyákból.'
        'Sort cards by': 'Sort cards by'
        # Info well
        'Ship': 'Hajó'
        'Initiative': 'Kezdeményezés'
        'Actions': 'Akciók'
        'Upgrades': 'Fejlesztések'
        'Range': 'Távolság'
        'Sources:':  'Források:'
        # Squadron edit buttons
        'New Squad' : 'Új raj'
        'Save' : 'Mentés'
        'Save As...' : 'Mentés mint…'
        'Delete' : 'Törlés'
        'Load Squad' : 'Raj betöltés'
        'Print/Export' : 'Nyomtatás/Szövegnézet'
        'Randomize!' : 'Random!'
        'Randomizer Options' : 'Randomizer opciók…'
        'Squad Notes:' : 'Jegyzetek:'
        'Tag:' : 'Tag:'        
        # Print/View modal
        'Copy below BBCode' : '<p>Copy the BBCode below and paste it into your forum post.</p>'
        'Copy' : 'Másolás'
        'Space for Cards' : """Hagyj helyet a sérülés és fejlesztéskártyáknak nyomtatáskor"""
        'Print Color' : """Színes nyomtatás"""
        'Print' : 'Nyomtatás'
        # Randomizer options
        'Roll!' : 'Randomize!'
        # Top tab bar
        'Card Browser' : 'Kártya tallózó'
        'About' : 'Rólunk'
        # Obstacles
        'Choose Obstacles' : 'Válassz akadályt'
        'Choose obstacles dialog' : 'Choose up to three obstacles to include in the permalink for use in external programs. (Support for displaying which obstacles were selected in the printout is not yet supported.)'
        # Collection
        'Your Collection': 'Gyűjteményed'

    singular:
        'pilots': 'Pilóta'
        'modifications': 'Módosítás'
        'titles': 'Nevesítés'
        'ships' : 'Ship'
    types:
        'Pilot': 'Pilóta'
        'Modification': 'Módosítás'
        'Title': 'Nevesíés'
        'Ship' : 'Ship'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.Magyar = () ->
    exportObj.cardLanguage = 'Magyar'

    exportObj.renameShip """YT-1300""", """Modified YT-1300 Light Freighter"""
    exportObj.renameShip """StarViper""", """StarViper-class Attack Platform"""
    exportObj.renameShip """Scurrg H-6 Bomber""", """Scurrg H-6 Bomber"""
    exportObj.renameShip """YT-2400""", """YT-2400 Light Freighter"""
    exportObj.renameShip """Auzituck Gunship""", """Auzituck Gunship"""
    exportObj.renameShip """Kihraxz Fighter""", """Kihraxz Fighter"""
    exportObj.renameShip """Sheathipede-Class Shuttle""", """Sheathipede-class Shuttle"""
    exportObj.renameShip """Quadjumper""", """Quadrijet Transfer Spacetug"""
    exportObj.renameShip """Firespray-31""", """Firespray-class Patrol Craft"""
    exportObj.renameShip """TIE Fighter""", """TIE/ln Fighter"""
    exportObj.renameShip """Y-Wing""", """BTL-A4 Y-Wing"""
    exportObj.renameShip """TIE Advanced""", """TIE Advanced x1"""
    exportObj.renameShip """Alpha-Class Star Wing""", """Alpha-class Star Wing"""
    exportObj.renameShip """U-Wing""", """UT-60D U-Wing"""
    exportObj.renameShip """TIE Striker""", """TIE/sk Striker"""
    exportObj.renameShip """B-Wing""", """A/SF-01 B-Wing"""
    exportObj.renameShip """TIE Defender""", """TIE/D Defender"""
    exportObj.renameShip """TIE Bomber""", """TIE/sa Bomber"""
    exportObj.renameShip """TIE Punisher""", """TIE/ca Punisher"""
    exportObj.renameShip """Aggressor""", """Aggressor Assault Fighter"""
    exportObj.renameShip """G-1A Starfighter""", """G-1A Starfighter"""
    exportObj.renameShip """VCX-100""", """VCX-100 Light Freighter"""
    exportObj.renameShip """YV-666""", """YV-666 Light Freighter"""
    exportObj.renameShip """TIE Advanced Prototype""", """TIE Advanced v1"""
    exportObj.renameShip """Lambda-Class Shuttle""", """Lambda-class T-4a Shuttle"""
    exportObj.renameShip """TIE Phantom""", """TIE/ph Phantom"""
    exportObj.renameShip """VT-49 Decimator""", """VT-49 Decimator"""
    exportObj.renameShip """TIE Aggressor""", """TIE/ag Aggressor"""
    exportObj.renameShip """K-Wing""", """BTL-S8 K-Wing"""
    exportObj.renameShip """ARC-170""", """ARC-170 Starfighter"""
    exportObj.renameShip """Attack Shuttle""", """Attack Shuttle"""
    exportObj.renameShip """X-Wing""", """T-65 X-Wing"""
    exportObj.renameShip """HWK-290""", """HWK-290 Light Freighter"""
    exportObj.renameShip """A-Wing""", """RZ-1 A-Wing"""
    exportObj.renameShip """Fang Fighter""", """Fang Fighter"""
    exportObj.renameShip """Z-95 Headhunter""", """Z-95-AF4 Headhunter"""
    exportObj.renameShip """M12-L Kimogila Fighter""", """M12-L Kimogila Fighter"""
    exportObj.renameShip """E-Wing""", """E-Wing"""
    exportObj.renameShip """TIE Interceptor""", """TIE Interceptor"""
    exportObj.renameShip """Lancer-Class Pursuit Craft""", """Lancer-class Pursuit Craft"""
    exportObj.renameShip """TIE Reaper""", """TIE Reaper"""
    exportObj.renameShip """JumpMaster 5000""", """JumpMaster 5000"""
    exportObj.renameShip """M3-A Interceptor""", """M3-A Interceptor"""
    exportObj.renameShip """Scavenged YT-1300""", """Scavenged YT-1300 Light Freighter"""
    exportObj.renameShip """Escape Craft""", """Escape Craft"""

    # Names don't need updating, but text needs to be set
    pilot_translations =
        "Academy Pilot":
           display_name: """Academy Pilot"""
           text: """ """
        "Alpha Squadron Pilot":
           display_name: """Alpha Squadron Pilot"""
           text: """<strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Bandit Squadron Pilot":
           display_name: """Bandit Squadron Pilot"""
           text: """ """
        "Baron of the Empire":
           display_name: """Baron of the Empire"""
           text: """ """
        "Binayre Pirate":
           display_name: """Binayre Pirate"""
           text: """ """
        "Black Squadron Ace":
           display_name: """Black Squadron Ace"""
           text: """ """
        "Black Squadron Scout":
           display_name: """Black Squadron Scout"""
           text: """<strong>Adaptive Ailerons:</strong> Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre <b>kell</b> hajtanod egy fehér [1&nbsp;%BANKLEFT%), [1&nbsp;%STRAIGHT%] vagy [1&nbsp;%BANKRIGHT%] manővert."""
        "Black Sun Ace":
           display_name: """Black Sun Ace"""
           text: """ """
        "Black Sun Assassin":
           display_name: """Black Sun Assassin"""
           text: """<strong>Microthrusters:</strong> Amikor orsózást hajtasz végre, a %BANKLEFT% vagy %BANKRIGHT% sablont <b>kell</b> használnod a %STRAIGHT% helyett."""
        "Black Sun Enforcer":
           display_name: """Black Sun Enforcer"""
           text: """<strong>Microthrusters:</strong> Amikor orsózást hajtasz végre, a %BANKLEFT% vagy %BANKRIGHT% sablont <b>kell</b> használnod a %STRAIGHT% helyett."""
        "Black Sun Soldier":
           display_name: """Black Sun Soldier"""
           text: """ """
        "Blade Squadron Veteran":
           display_name: """Blade Squadron Veteran"""
           text: """ """
        "Blue Squadron Escort":
           display_name: """Blue Squadron Escort"""
           text: """ """
        "Blue Squadron Pilot":
           display_name: """Blue Squadron Pilot"""
           text: """ """
        "Blue Squadron Scout":
           display_name: """Blue Squadron Scout"""
           text: """ """
        "Bounty Hunter":
           display_name: """Bounty Hunter"""
           text: """ """
        "Cartel Executioner":
           display_name: """Cartel Executioner"""
           text: """ <strong>Dead to Rights:</strong> Amikor végrehajtasz egy támadást, ha a védekező benne van a %BULLSEYEARC% ívedben, a védekezőkockák nem módosíthatók zöld jelzőkkel."""
        "Cartel Marauder":
           display_name: """Cartel Marauder"""
           text: """ """
        "Cartel Spacer":
           display_name: """Cartel Spacer"""
           text: """<strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Cavern Angels Zealot":
           display_name: """Cavern Angels Zealot"""
           text: """ """
        "Contracted Scout":
           display_name: """Contracted Scout"""
           text: """ """
        "Crymorah Goon":
           display_name: """Crymorah Goon"""
           text: """ """
        "Cutlass Squadron Pilot":
           display_name: """Cutlass Squadron Pilot"""
           text: """ """
        "Delta Squadron Pilot":
           display_name: """Delta Squadron Pilot"""
           text: """<strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Freighter Captain":
           display_name: """Freighter Captain"""
           text: """"""
        "Gamma Squadron Ace":
           display_name: """Gamma Squadron Ace"""
           text: """<strong>Nimble Bomber:</strong> Ha ledobnál egy eszközt a %STRAIGHT% sablon segítségével, használhatod az azonos sebességű %BANKLEFT% vagy %BANKRIGHT% sablonokat helyette."""
        "Gand Findsman":
           display_name: """Gand Findsman"""
           text: """ """
        "Gold Squadron Veteran":
           display_name: """Gold Squadron Veteran"""
           text: """ """
        "Gray Squadron Bomber":
           display_name: """Gray Squadron Bomber"""
           text: """ """
        "Green Squadron Pilot":
           display_name: """Green Squadron Pilot"""
           text: """<strong>Vectored Thrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% akciót."""
        "Hired Gun":
           display_name: """Hired Gun"""
           text: """ """
        "Imdaar Test Pilot":
           display_name: """Imdaar Test Pilot"""
           text: """<strong>Stygium Array:</strong> Miután kijössz az álcázásból végrehajthatsz egy %EVADE% akciót. A Vége fázis elején elkölthetsz 1 kitérés jelzőt, hogy kapj egy álcázás jelzőt."""
        "Inquisitor":
           display_name: """Inquisitor"""
           text: """ """
        "Jakku Gunrunner":
           display_name: """Jakku Gunrunner"""
           text: """<strong>Spacetug Tractor Array:</strong> <strong>Akció:</strong>: válassz egy hajót a %FRONTARC% ívedben 1-es távolságban. Az a hajó kap 1 vonósugár jelzőt vagy 2 vonósugár jelzőt, ha benne van a %BULLSEYEARC% ívedben 1-es távolságban."""
        "Kashyyyk Defender":
           display_name: """Kashyyyk Defender"""
           text: """ """
        "Knave Squadron Escort":
           display_name: """Knave Squadron Escort"""
           text: """<strong>Experimental Scanners:</strong> 3-as távolságon túl is bemérhetsz. Nem mérhetsz be 1-es távolságra."""
        "Lok Revenant":
           display_name: """Lok Revenant"""
           text: """ """
        "Lothal Rebel":
           display_name: """Lothal Rebel"""
           text: """<strong>Tail Gun:</strong> ha van bedokkolt hajód, használhatod az elsődleges %REARARC% fegyvered, ugyanolyan támadási értékkel, mint a dokkolt hajó elsődleges %FRONTARC% támadási értéke."""
        "Nu Squadron Pilot":
           display_name: """Nu Squadron Pilot"""
           text: """ """
        "Obsidian Squadron Pilot":
           display_name: """Obsidian Squadron Pilot"""
           text: """ """
        "Omicron Group Pilot":
           display_name: """Omicron Group Pilot"""
           text: """ """
        "Onyx Squadron Ace":
           display_name: """Onyx Squadron Ace"""
           text: """<strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Onyx Squadron Scout":
           display_name: """Onyx Squadron Scout"""
           text: """ """
        "Outer Rim Smuggler":
           display_name: """Outer Rim Smuggler"""
           text: """ """
        "Partisan Renegade":
           display_name: """Partisan Renegade"""
           text: """ """
        "Patrol Leader":
           display_name: """Patrol Leader"""
           text: """ """
        "Phoenix Squadron Pilot":
           display_name: """Phoenix Squadron Pilot"""
           text: """<strong>Vectored Thrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% akciót."""
        "Planetary Sentinel":
           display_name: """Planetary Sentinel"""
           text: """<strong>Adaptive Ailerons:</strong> Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre <b>kell</b> hajtanod egy fehér [1&nbsp;%BANKLEFT%), [1&nbsp;%STRAIGHT%] vagy [1&nbsp;%BANKRIGHT%] manővert."""
        "Rebel Scout":
           display_name: """Rebel Scout"""
           text: """ """
        "Red Squadron Veteran":
           display_name: """Red Squadron Veteran"""
           text: """ """
        "Rho Squadron Pilot":
           display_name: """Rho Squadron Pilot"""
           text: """ """
        "Rogue Squadron Escort":
           display_name: """Rogue Squadron Escort"""
           text: """<strong>Experimental Scanners:</strong> 3-as távolságon túl is bemérhetsz. Nem mérhetsz be 1-es távolságra."""
        "Saber Squadron Ace":
           display_name: """Saber Squadron Ace"""
           text: """<strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Scarif Base Pilot":
           display_name: """Scarif Base Pilot"""
           text: """<strong>Adaptive Ailerons:</strong> Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre <b>kell</b> hajtanod egy fehér [1&nbsp;%BANKLEFT%), [1&nbsp;%STRAIGHT%] vagy [1&nbsp;%BANKRIGHT%] manővert."""
        "Scimitar Squadron Pilot":
           display_name: """Scimitar Squadron Pilot"""
           text: """<strong>Nimble Bomber:</strong> Ha ledobnál egy eszközt a %STRAIGHT% sablon segítségével, használhatod az azonos sebességű %BANKLEFT% vagy %BANKRIGHT% sablonokat helyette."""
        "Shadowport Hunter":
           display_name: """Shadowport Hunter"""
           text: """ """
        "Sienar Specialist":
           display_name: """Sienar Specialist"""
           text: """ """
        "Sigma Squadron Ace":
           display_name: """Sigma Squadron Ace"""
           text: """<strong>Stygium Array:</strong> Miután kijössz az álcázásból végrehajthatsz egy %EVADE% akciót. A Vége fázis elején elkölthetsz 1 kitérés jelzőt, hogy kapj egy álcázás jelzőt."""
        "Skull Squadron Pilot":
           display_name: """Skull Squadron Pilot"""
           text: """<strong>Concordia Faceoff:</strong> Amikor védekezel, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% ívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "Spice Runner":
           display_name: """Spice Runner"""
           text: """ """
        "Storm Squadron Ace":
           display_name: """Storm Squadron Ace"""
           text: """<strong>Advanced Targeting Computer:</strong> Amikor végrehajtasz egy elsődleges támadást egy olyan védekező ellen, akit bemértél, 1-gyel több támadókockával dobj és változtasd 1&nbsp;%HIT% eredményed %CRIT% eredményre."""
        "Tala Squadron Pilot":
           display_name: """Tala Squadron Pilot"""
           text: """ """
        "Tansarii Point Veteran":
           display_name: """Tansarii Point Veteran"""
           text: """<strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Tempest Squadron Pilot":
           display_name: """Tempest Squadron Pilot"""
           text: """<strong>Advanced Targeting Computer:</strong> Amikor végrehajtasz egy elsődleges támadást egy olyan védekező ellen, akit bemértél, 1-gyel több támadókockával dobj és változtasd 1&nbsp;%HIT% eredményed %CRIT% eredményre."""
        "Trandoshan Slaver":
           display_name: """Trandoshan Slaver"""
           text: """ """
        "Warden Squadron Pilot":
           display_name: """Warden Squadron Pilot"""
           text: """ """
        "Wild Space Fringer":
           display_name: """Wild Space Fringer"""
           text: """<strong>Sensor Blindspot:</strong> Amikor elsődleges támadást hajtasz végre 0-1-es távolságban, nem érvényesül a 0-1-es távolságért járó bónusz és 1-gyel kevesebb támadókockával dobsz."""
        "Zealous Recruit":
           display_name: """Zealous Recruit"""
           text: """<strong>Concordia Faceoff:</strong> Amikor védekezel, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% ívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """Miután teljesen végrehajtasz egy piros manővert, kapsz 1 kalkuláció jelzőt. A Vége fázis elején választhatsz 1 hajót 0-1-es távolságban. Ha így teszel, add át 1 stressz jelződ annak a hajónak."""
        "Nashtah Pup":
           display_name: """Nashtah Pup"""
           text: """Csak vészhelyzet esetén válhatsz le az anyahajóról. Ebben az esetben megkapod a megsemmisült baráti Hound's Tooth pilóta nevet, kezdeményezést, pilóta képességet és hajó %CHARGE% jelzőt. <br> <strong>Escape Craft:</strong> <strong>Setup:</strong> <strong>Hound’s Tooth</strong> szükséges. A <strong>Hound’s Tooth</strong>-ra dokkolva <b>kell</b> kezdened a játékot."""
        "AP-5":
           display_name: """AP-5"""
           text: """Amikor koordinálsz, ha a kiválasztott hajónak pontosan 1 stressz jelzője van, az végrehajthat akciókat.<br><strong>Comms Shuttle:</strong> Amikor dokkolva vagy az anyahajód %COORDINATE% akció lehetőséget kap. Az anyahajód aktiválása előtt végrehajthat egy %COORDINATE% akciót."""
        "Airen Cracken":
           display_name: """Airen Cracken"""
           text: """Miután végrehajtasz egy támadást, választhatsz 1 baráti hajót 1-es távolságban. Az a hajó végrehajthat egy akciót, pirosként kezelve."""
        "Arvel Crynyd":
           display_name: """Arvel Crynyd"""
           text: """Végrehajthatsz elsődleges támadást 0-ás távolságban. Ha egy %BOOST% akcióddal átfedésbe kerülsz egy másik hajóval, úgy hajtsd végre, mintha csak részleges manőver lett volna. <br><strong>Vectored Thrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% gyorsítás akciót."""
        "Asajj Ventress":
           display_name: """Asajj Ventress"""
           text: """Az Ütközet fázis elején választhatsz 1 ellenséges hajót a %SINGLETURRETARC% ívedben 0-2-es távolságban és költs 1&nbsp;%FORCE% jelzőt. Ha így teszel, az a hajó kap 1 stressz jelzőt, hacsak nem távolít el 1 zöld jelzőt."""
        "Autopilot Drone":
           display_name: """Autopilot Drone"""
           text: """<strong>Rigged Energy Cells:</strong> A Rendszer fázis alatt, ha nem vagy dokkolva, elvesztesz 1&nbsp;%CHARGE% jelzőt. Az aktivációs fázis végén, ha már nincs %CHARGE% jelződ, megsemmisülsz. Mielőtt levennéd a hajód minden 0-1-es távolságban lévő hajó elszenved 1&nbsp;%CRIT% sérülést."""
        "Benthic Two Tubes":
           display_name: """Benthic Two Tubes"""
           text: """Miután végrehajtasz egy %FOCUS% akciót, átrakhatod 1 fókusz jelződ egy baráti hajóra 1-2-es távolságban."""
        "Biggs Darklighter":
           display_name: """Biggs Darklighter"""
           text: """Amikor baráti hajó védekezik tőled 0-1-es távolságban, az <strong>Eredmények semlegesítése</strong> lépés előtt, ha a támadó ívében vagy, elszenvedhetsz 1&nbsp;%HIT% vagy %CRIT% találatot, hogy hatástalaníts 1 azzal egyező találatot."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, újradobhatsz 1 kockát, minden egyes 0-1-es távolságban lévő ellenséges hajó után."""
        "Bodhi Rook":
           display_name: """Bodhi Rook"""
           text: """Baráti hajók bemérhetnek más baráti hajóktól 0-3-as távolságban lévő objektumokat."""
        "Bossk":
           display_name: """Bossk"""
           text: """Amikor végrehajtasz egy elsődleges támadást, az <strong>Eredmények semlegesítése</strong> lépés után, elkölthetsz egy %CRIT% eredményt, hogy hozzáadj 2 %HIT% eredményt a dobásodhoz."""
        "Braylen Stramm":
           display_name: """Braylen Stramm"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha stresszes vagy, újradobhatod legfeljebb 2 kockádat."""
        "Captain Feroph":
           display_name: """Captain Feroph"""
           text: """Amikor védekezel, ha a támadónak nincs zöld jelzője, megváltoztathatod 1 üres vagy %FOCUS% dobásod %EVADE% eredményre.<br><strong>Adaptive Ailerons:</strong> Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre <b>kell</b> hajtanod egy fehér [1&nbsp;%BANKLEFT%), [1&nbsp;%STRAIGHT%] vagy [1&nbsp;%BANKRIGHT%] manővert."""
        "Captain Jonus":
           display_name: """Captain Jonus"""
           text: """Amikor egy baráti hajó 0-1-es távolságban végrehajt egy %TORPEDO% vagy %MISSILE% támadást, az újradobhat legfeljebb 2 támadókockát.<br><strong>Nimble Bomber:</strong> Ha ledobnál egy eszközt a %STRAIGHT% sablon segítségével, használhatod az azonos sebességű %BANKLEFT% vagy %BANKRIGHT% sablonokat helyette."""
        "Captain Jostero":
           display_name: """Captain Jostero"""
           text: """Miután egy ellenséges hajó sérülést szenved és nem védekezett, végrehajthatsz egy bónusz támadást ellene."""
        "Captain Kagi":
           display_name: """Captain Kagi"""
           text: """Az Ütközet fázis elején választhatsz egy vagy több baráti hajót 0-3-es távolságban. Ha így teszel, tedd át az összes ellenséges bemérés jelzőt a kiválasztott hajókról magadra."""
        "Captain Nym":
           display_name: """Captain Nym"""
           text: """Mielőtt egy baráti bomba vagy akna felrobbanna, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy megakadályozd a felrobbanását.<br>Mikor egy támadás ellen védekezel, amely akadályozott egy bomba vagy akna által, 1-gyel több védekezőkockával dobj."""
        "Captain Oicunn":
           display_name: """Captain Oicunn"""
           text: """Végrehajthatsz elsődleges támadást 0-ás távolságban."""
        "Captain Rex":
           display_name: """Captain Rex"""
           text: """Miután végrehajtasz egy támadást, jelöld meg a védekezőt a <strong>Suppressive Fire</strong> állapotkártyával."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """Az Aktivációs fázis elején választhatsz 1 baráti hajót 1-3-as távolságban. Ha így teszel, az a hajó eltávolít 1 stressz jelzőt."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """Mielőtt felfordított sebzéskártyát kapnál, elkölthetsz 1&nbsp;%CHARGE%-et, hogy a lapot képpel lefelé húzd fel."""
        "Colonel Jendon":
           display_name: """Colonel Jendon"""
           text: """Az Aktivációs fázis elején elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, amikor baráti hajók bemérés jelzőt tesznek fel ebben a körben, 3-as távolságon túl tehetik csak meg a 0-3-as távolság helyett."""
        "Colonel Vessery":
           display_name: """Colonel Vessery"""
           text: """Amikor támadást hajtasz végre egy bemért hajó ellen, miután dobsz a kockákkal, feltehetsz egy bemérés jelzőt a védekezőre.<br><strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Constable Zuvio":
           display_name: """Constable Zuvio"""
           text: """Amikor kidobnál egy eszközt, helyette ki is lőheted egy [1&nbsp;%STRAIGHT%] sablon használatával.<br><strong>Spacetug Tractor Array:</strong> <strong>Akció:</strong>: Válassz egy hajót a %FRONTARC% ívedben 1-es távolságban. Az a hajó kap 1 vonósugár jelzőt vagy 2 vonósugár jelzőt, ha benne van a %BULLSEYEARC% ívedben 1-es távolságban."""
        "Corran Horn":
           display_name: """Corran Horn"""
           text: """0-ás kezdeményezésnél végrehajthatsz egy bónusz elsődleges támadást egy ellenséges hajó ellen, aki a %BULLSEYEARC% ívedben van. Ha így teszel, a következő Tervezés fázisban kapsz 1 'inaktív fegyverzet' jelzőt.<br><strong>Experimental Scanners:</strong> 3-as távolságon túl is bemérhetsz. Nem mérhetsz be 1-es távolságra."""
        "Countess Ryad":
           display_name: """Countess Ryad"""
           text: """Amikor végrehajtanál egy %STRAIGHT% manővert, megnövelheted annak nehézségét. Ha így teszel, helyette végrehajthatod mint %KTURN% manőver.<br><strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Dace Bonearm":
           display_name: """Dace Bonearm"""
           text: """Miután egy ellenséges hajó 0-3-as távolságban kap legalább 1 ion jelzőt, elkölthetsz 3&nbsp;%CHARGE% jelzőt. Ha így teszel, az a hajó kap 2 további ion jelzőt."""
        "Dalan Oberos (StarViper)":
           display_name: """Dalan Oberos"""
           text: """Miután teljesen végrehajtasz egy manővert, kaphatsz 1 stressz jelzőt, hogy elforgasd a hajód 90 fokkal.<br> <strong>Microthrusters:</strong> Amikor orsózást hajtasz végre, a %BANKLEFT% vagy %BANKRIGHT% sablont <b>kell</b> használnod a %STRAIGHT% helyett."""
        "Dalan Oberos":
           display_name: """Dalan Oberos"""
           text: """Az Ütközet fázis elején választhatsz 1 pajzzsal rendelkező hajót a %BULLSEYEARC% ívedben és elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, az a hajó elveszít egy pajzsot, te pedig visszatöltesz 1 pajzsot.<br><strong>Dead to Rights:</strong> Amikor végrehajtasz egy támadást, ha a védekező benne van a %BULLSEYEARC% ívedben, a védekezőkockák nem módosíthatók zöld jelzőkkel."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """Miután végrehajtasz egy akciót, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts egy akciót.<br><strong>Advanced Targeting Computer:</strong> Amikor végrehajtasz egy elsődleges támadást egy olyan védekező ellen, akit bemértél, 1-gyel több támadókockával dobj és változtasd 1&nbsp;%HIT% eredményed %CRIT% eredményre."""
        "Dash Rendar":
           display_name: """Dash Rendar"""
           text: """Amikor mozogsz, hagyd figyelmen kívül az akadályokat.<br><strong>Sensor Blindspot:</strong> Amikor elsődleges támadást hajtasz végre 0-1-es távolságban, nem érvényesül a 0-1-es távolságért járó bónusz és 1-gyel kevesebb támadókockával dobsz."""
        "Del Meeko":
           display_name: """Del Meeko"""
           text: """Amikor egy baráti 0-2 távolságban védekezik egy sérült támadó ellen, a védekező újradobhat 1 védekezőkockát."""
        "Dengar":
           display_name: """Dengar"""
           text: """Miután védekeztél, ha a támadó benne van a %FRONTARC% ívedben, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy végrehajts egy bónusz támadást a támadó ellen."""
        "Drea Renthal":
           display_name: """Drea Renthal"""
           text: """Amikor egy baráti nem-limitált hajó végrehajt egy támadást, ha a védekező benne van a tűzívedben, a támadó újradobhatja 1 támadókockáját."""
        "Edrio Two Tubes":
           display_name: """Edrio Two Tubes"""
           text: """Mielőtt aktiválódnál és van fókuszod, végrehajthatsz egy akciót."""
        "Emon Azzameen":
           display_name: """Emon Azzameen"""
           text: """Ha ki szeretnél dobni egy eszközt az [1&nbsp;%STRAIGHT%] sablonnal, használhatod helyette a [3&nbsp;%TURNLEFT%], [3&nbsp;%STRAIGHT%], vagy [3&nbsp;%TURNRIGHT%] sablont."""
        "Esege Tuketu":
           display_name: """Esege Tuketu"""
           text: """Amikor egy 0-2-es távolságban lévő baráti hajó védekezik vagy támadást hajt végre, elköltheti a te fókusz jelzőidet, mintha a saját hajójáé lenne."""
        "Evaan Verlaine":
           display_name: """Evaan Verlaine"""
           text: """Az Ütközet fázis elején elkölthetsz 1 fókusz jelzőt, hogy kiválassz egy baráti hajót 0-1-es távolságban. Ha így teszel, az a hajó a kör végéig minden védekezésénél 1-gyel több védekezőkockával dob."""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha stresszes vagy, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy legfeljebb 2 %FOCUS% eredményt %EVADE% vagy %HIT% eredményre módosíts.<br><strong>Locked and Loaded:</strong> Amikor dokkolva vagy, miután az anyahajód végrehajtott egy elsődleges %FRONTARC% vagy %TURRET% támadást, végrehajthat egy bónusz %REARARC% támadást."""
        "Ezra Bridger (Sheathipede)":
           display_name: """Ezra Bridger"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha stresszes vagy, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy legfeljebb 2 %FOCUS% eredményt %EVADE% vagy %HIT% eredményre módosíts.<br><strong>Comms Shuttle:</strong> Amikor dokkolva vagy az anyahajód %COORDINATE% akció lehetőséget kap. Az anyahajód aktiválása előtt végrehajthat egy %COORDINATE% akciót."""
        "Ezra Bridger (TIE Fighter)":
           display_name: """Ezra Bridger"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha stresszes vagy, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy legfeljebb 2 %FOCUS% eredményt %EVADE% vagy %HIT% eredményre módosíts."""
        "Fenn Rau (Sheathipede)":
           display_name: """Fenn Rau"""
           text: """Mielőtt egy ellenséges hajó a tűzívedben sorra kerül az Ütközet fázisban, ha nem vagy stresszes, kaphatsz 1 stressz jelzőt. Ha így teszel, az a hajó nem költhet el jelzőt, hogy módosítsa támadókockáit e fázis alatt.<br><strong>Comms Shuttle:</strong> Amikor dokkolva vagy az anyahajód %COORDINATE% akció lehetőséget kap. Az anyahajód aktiválása előtt végrehajthat egy %COORDINATE% akciót."""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha a támadás 1-es távolságban történik, 1-gyel több kockával dobhatsz.<br><strong>Concordia Faceoff:</strong> Amikor védekezel, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% ívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "Garven Dreis (X-Wing)":
           display_name: """Garven Dreis"""
           text: """Miután elköltesz egy fókusz jelzőt, választhatsz 1 baráti hajót 1-3-as távolságban. Az a hajó kap 1 fókusz jelzőt."""
        "Garven Dreis":
           display_name: """Garven Dreis"""
           text: """Miután elköltesz egy fókusz jelzőt, választhatsz 1 baráti hajót 1-3-as távolságban. Az a hajó kap 1 fókusz jelzőt."""
        "Gavin Darklighter":
           display_name: """Gavin Darklighter"""
           text: """Amikor egy baráti hajó végrehajt egy támadást, ha a védekező a %FRONTARC% ívedben van, a támadó 1&nbsp;%HIT% eredményét %CRIT% eredményre módosíthatja.<br><strong>Experimental Scanners:</strong> 3-as távolságon túl is bemérhetsz. Nem mérhetsz be 1-es távolságra."""
        "Genesis Red":
           display_name: """Genesis Red"""
           text: """Miután feltettél egy bemérés jelzőt, le kell venned az összes fókusz és kitérés jelződet, aztán megkapsz annyi fókusz és kitérés jelzőt, ahány a bemért hajónak van.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Gideon Hask":
           display_name: """Gideon Hask"""
           text: """Amikor végrehajtasz egy támadást sérült védekező ellen, dobj 1-gyel több támadókockával."""
        "Grand Inquisitor":
           display_name: """Grand Inquisitor"""
           text: """Amikor 1-es távolságban védekezel, elkölthetsz 1&nbsp;%FORCE% tokent, hogy megakadályozd az 1-es távolság bónuszt. Amikor támadást hajtasz végre 2-3-as távolságban lévő védekező ellen, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy megkapd az 1-es távolság bónuszt."""
        "Graz":
           display_name: """Graz"""
           text: """Amikor védekezel, ha a támadó mögött vagy, 1-gyel több védekezőkockával dobhatsz. Amikor végrehajtasz egy támadást, ha a védekező mögött vagy, 1-gyel több támadókockával dobhatsz."""
        "Guri":
           display_name: """Guri"""
           text: """Az Ütközet fázis elején, ha legalább 1 ellenséges hajó van 0-1-es távolságban, kaphatsz egy fókusz jelzőt.<br> <strong>Microthrusters:</strong> Amikor orsózást hajtasz végre, a %BANKLEFT% vagy %BANKRIGHT% sablont <b>kell</b> használnod a %STRAIGHT% helyett."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """Miután dobtál, ha 0-1-es távolságban vagy akadálytól, újradobhatod az összes kockádat. Ez nem számít újradobásnak más hatások számára."""
        "Han Solo (Scum)":
           display_name: """Han Solo"""
           text: """Amikor védekezel vagy végrehajtasz egy elsődleges támadást, ha a támadás akadály által akadályozott, 1-gyel több kockával dobhatsz."""
        "Heff Tobber":
           display_name: """Heff Tobber"""
           text: """Miután egy ellenséges hajó végrehajt egy manővert, ha 0-ás távolságba kerül, végrehajthatsz egy akciót."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """Miután piros vagy kék manővert fedtél fel, átállíthatod manőversablonod egy másik, azonos nehézségű manőverre.<br><strong>Locked and Loaded:</strong> Amikor dokkolva vagy, miután az anyahajód végrehajtott egy elsődleges %FRONTARC% vagy %TURRET% támadást, végrehajthat egy bónusz %REARARC% támadást."""
        "Hera Syndulla (VCX-100)":
           display_name: """Hera Syndulla"""
           text: """Miután piros vagy kék manővert fedtél fel, átállíthatod manőversablonod egy másik, azonos nehézségű manőverre.<br><strong>Tail Gun:</strong> ha van bedokkolt hajód, használhatod az elsődleges %REARARC% fegyvered, ugyanolyan támadási értékkel, mint a dokkolt hajó elsődleges %FRONTARC% támadási értéke."""
        "Horton Salm":
           display_name: """Horton Salm"""
           text: """Amikor támadást hajtasz végre, a védekezőtől 0-1-es távolságban lévő minden más baráti hajó után újradobhatsz 1 támadókockát."""
        "IG-88A":
           display_name: """IG-88A"""
           text: """Az Ütközet fázis elején kiválaszthatsz egy %CALCULATE% akcióval rendelkező baráti hajót 1-3-as távolságban. Ha így teszel, add át 1 kalkuláció jelződet neki.<br><strong>Advanced Droid Brain:</strong> Miután végrehajtasz egy %CALCULATE% akciót, kapsz 1 kalkuláció jelzőt."""
        "IG-88B":
           display_name: """IG-88B"""
           text: """Miután végrehajtasz egy támadást ami nem talált, végrehajthatsz egy bónusz %CANNON% támadást.<br><strong>Advanced Droid Brain:</strong> Miután végrehajtasz egy %CALCULATE% akciót, kapsz 1 kalkuláció jelzőt."""
        "IG-88C":
           display_name: """IG-88C"""
           text: """Miután végrehajtasz egy %BOOST% akciót, végrehajthatsz egy %EVADE% akciót.<br><strong>Advanced Droid Brain:</strong> Miután végrehajtasz egy %CALCULATE% akciót, kapsz 1 kalkuláció jelzőt."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """Amikor végrehajtasz egy Segnor's Loop [%SLOOPLEFT% vagy %SLOOPRIGHT%] manővert, használhatsz ugyanazon sebességű másik sablont helyette: vagy megegyező irányú kanyar [%TURNLEFT% vagy %TURNRIGHT%] vagy előre egyenes [%STRAIGHT%] sablont.<br><strong>Advanced Droid Brain:</strong> Miután végrehajtasz egy %CALCULATE% akciót, kapsz 1 kalkuláció jelzőt."""
        "Ibtisam":
           display_name: """Ibtisam"""
           text: """Miután teljesen végrehajtasz egy manővert, ha stresszes vagy, dobhatsz 1 támadókockával. %HIT% vagy %CRIT% eredmény esetén távolíts el 1 stressz jelzőt."""
        "Iden Versio":
           display_name: """Iden Versio"""
           text: """Mielőtt egy 0-1-es távolságban lévő baráti TIE/ln hajó elszenvedne 1 vagy több sérülést, elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, megakadályozod a sérülést."""
        "Inaldra":
           display_name: """Inaldra"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, elszenvedhetsz 1&nbsp;%HIT% sérülést, hogy újradobj bármennyi kockát.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Jake Farrell":
           display_name: """Jake Farrell"""
           text: """Miután végrehajtasz egy %BARRELROLL% vagy %BOOST% akciót, választhatsz egy baráti hajót 0-1-es távolságban. Az a hajó végrehajthat egy %FOCUS% akciót.<br><strong>Vectored Thrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% akciót."""
        "Jan Ors":
           display_name: """Jan Ors"""
           text: """Amikor egy tűzíveden belüli baráti hajó elsődleges támadást hajt végre, ha nem vagy stresszes, kaphatsz 1 stressz jelzőt. Ha így teszel, az a hajó 1-gyel több támadókockával dobhat."""
        "Jek Porkins":
           display_name: """Jek Porkins"""
           text: """Miután kapsz egy stressz jelzőt, dobhatsz 1 támadó kockával, hogy levedd. %HIT% eredmény esetén elszenvedsz 1&nbsp;%HIT% sérülést."""
        "Joy Rekkoff":
           display_name: """Joy Rekkoff"""
           text: """Amikor támadást hajtasz végre, elkölthetsz 1&nbsp;%CHARGE% jelzőt egy felszerelt %TORPEDO% fejlesztésről. Ha így teszel a védekező 1-gyel kevesebb védekezőkockával dob.<br><strong>Concordia Faceoff:</strong> Amikor védekezel, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% ívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "Kaa'to Leeachos":
           display_name: """Kaa’to Leeachos"""
           text: """Az Ütközet fázis elején kiválaszthatsz egy 0-2-es távolságban lévő baráti hajót. Ha így teszel, áttehetsz róla 1 fókusz vagy kitérés jelzőt a magadra."""
        "Kad Solus":
           display_name: """Kad Solus"""
           text: """Miután teljesen végrehajtasz egy piros manővert, kapsz 2 fókusz jelzőt.<br><strong>Concordia Faceoff:</strong> Amikor védekezel, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% ívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """Amikor egy tűzívedben lévő baráti hajó védekezik, elkölthetsz 1&nbsp;%FORCE% jelzőt. Ha így teszel, a támadó 1-gyel kevesebb támadókockával dob.<br><strong>Tail Gun:</strong> ha van bedokkolt hajód, használhatod az elsődleges %REARARC% fegyvered, ugyanolyan támadási értékkel, mint a dokkolt hajó elsődleges %FRONTARC% támadási értéke."""
        "Kath Scarlet":
           display_name: """Kath Scarlet"""
           text: """Amikor támadást hajtasz végre, ha legalább 1 nem-limitált baráti hajó van 0-ás távolságra a védekezőtől, dobj 1-gyel több támadókockával."""
        "Kavil":
           display_name: """Kavil"""
           text: """Amikor egy nem-%FRONTARC% támadást hajtasz végre, dobj 1-gyel több támadókockával."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """Az Ütközet fázis elején választhatsz 1 hajót ami a %FRONTARC% és %SINGLETURRETARC% ívedben is benne van 0-1-es távolságban. Ha így teszel, az a hajó kap egy vonósugár jelzőt."""
        "Koshka Frost":
           display_name: """Koshka Frost"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha az ellenséges hajó stresszes, újradobhatod 1 kockádat."""
        "Krassis Trelix":
           display_name: """Krassis Trelix"""
           text: """Végrehajthatsz egy %FRONTARC% speciális támadást a %REARARC% ívedből. Amikor speciális támadást hajtasz végre, újradobhatsz egy támadókockát."""
        "Kullbee Sperado":
           display_name: """Kullbee Sperado"""
           text: """Miután végrehajtasz egy %BARRELROLL% vagy %BOOST% akciót, megfordíthatod a felszerelt %CONFIG% fejlesztés kártyád."""
        "Kyle Katarn":
           display_name: """Kyle Katarn"""
           text: """Az Ütközet fázis elején átadhatod 1 fókusz jelződet egy tűzívedben lévő baráti hajónak."""
        "L3-37":
           display_name: """L3-37"""
           text: """Ha nincs pajzsod, csökkentsd a nehézségét a (%BANKLEFT% és %BANKRIGHT%) manővereknek."""
        "L3-37 (Escape Craft)":
           display_name: """L3-37"""
           text: """Ha nincs pajzsod, csökkentsd a nehézségét a (%BANKLEFT% és %BANKRIGHT%) manővereknek.<br><strong>Co-Pilot:</strong> Amíg dokkolva vagy, az anyahajód megkapja a pilóta képességed, mintha a sajátja lenne."""
        "Laetin A'shera":
           display_name: """Laetin A’shera"""
           text: """Miután védekezel vagy végrehajtasz egy támadást, ha a támadás nem talált, kapsz 1 kitérés jelzőt.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """Miután teljesen végrehajtasz egy kék manővert, választhatsz egy baráti hajót 0-3-as távolságban. Az a hajó végrehajthat egy akciót."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian"""
           text: """Miután dobsz a kockákkal, ha nem vagy stresszes, kaphatsz 1 stressz jelzőt, hogy újradobhasd az összes üres eredményed."""
        "Lando Calrissian (Scum) (Escape Craft)":
           display_name: """Lando Calrissian"""
           text: """Miután dobsz a kockákkal, ha nem vagy stresszes, kaphatsz 1 stressz jelzőt, hogy újradobhasd az összes üres eredményed.<br><strong>Co-Pilot:</strong> Amíg dokkolva vagy, az anyahajód megkapja a pilóta képességed, mintha a sajátja lenne."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """Az Ütközet fázis elején kiválaszthatsz egy hajót 1-es távolságban és elköltheted a rajta lévő bemérés jelződet. Ha így teszel, az a hajó kap egy vonósugár jelzőt."""
        "Leevan Tenza":
           display_name: """Leevan Tenza"""
           text: """Miután végrehajtasz egy %BARRELROLL% vagy %BOOST% akciót, végrehajthatsz egy piros %EVADE% akciót."""
        "Lieutenant Blount":
           display_name: """Lieutenant Blount"""
           text: """Amikor elsődleges támadást hajtasz végre, ha legalább 1 másik baráti hajó van 0-1-es távolságban a védekezőtől, 1-gyel több támadókockával dobhatsz."""
        "Lieutenant Karsabi":
           display_name: """Lieutenant Karsabi"""
           text: """Miután kapsz egy inaktív fegyverzet jelzőt, ha nem vagy stresszes, kaphatsz 1 stressz jelzőt, hogy levegyél 1 inaktív fegyverzet jelzőt."""
        "Lieutenant Kestal":
           display_name: """Lieutenant Kestal"""
           text: """Amikor támadást hajtasz végre, miután a védekező dob a kockáival, elkölthetsz 1 fókusz jelzőt, hogy semlegesítsd a védekező összes üres és fókusz eredményét."""
        "Lieutenant Sai":
           display_name: """Lieutenant Sai"""
           text: """Miután végrehajtasz egy %COORDINATE% akciót, ha a koordinált hajó olyan akciót hajt végre, ami a te akciósávodon is rajta van, végrehajthatod azt az akciót."""
        "Lowhhrick":
           display_name: """Lowhhrick"""
           text: """Miután egy 0-1-es távolságban lévő baráti hajó védekezővé válik, elkölthetsz 1 erősítés jelzőt. Ha így teszel, az a hajó kap 1 kitérés jelzőt."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """Miután védekező lettél (még a kockagurítás előtt), visszatölthetsz 1&nbsp;%FORCE% jelzőt."""
        "Maarek Stele":
           display_name: """Maarek Stele"""
           text: """Amikor támadást hajtasz végre, ha a védekező felfordított sérülés kártyát kapna, helyette húzz te 3 lapot, válassz egyet, a többit dobd el.<br><strong>Advanced Targeting Computer:</strong> Amikor végrehajtasz egy elsődleges támadást egy olyan védekező ellen, akit bemértél, 1-gyel több támadókockával dobj és változtasd 1&nbsp;%HIT% eredményed %CRIT% eredményre."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """Amikor egy baráti hajó 0-2-es távolságban védekezik, a támadó maximum 1 kockáját dobhatja újra."""
        "Major Rhymer":
           display_name: """Major Rhymer"""
           text: """Amikor végrhajtasz egy %TORPEDO% vagy %MISSILE% támadást, növelheted vagy csökkentheted a fegyver távolság követelményét 1-gyel, a 0-3 korláton belül.<br><strong>Nimble Bomber:</strong> Ha ledobnál egy eszközt a %STRAIGHT% sablon segítségével, használhatod az azonos sebességű %BANKLEFT% vagy %BANKRIGHT% sablonokat helyette."""
        "Major Vermeil":
           display_name: """Major Vermeil"""
           text: """Amikor támadást hajtasz végre, ha a védekezőnek nincs egy zöld jelzője sem, megváltoztathatod 1 üres vagy %FOCUS% eredményedet %HIT% eredményre.<br> <br><strong>Adaptive Ailerons:</strong> Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre <b>kell</b> hajtanod egy fehér [1&nbsp;%BANKLEFT%), [1&nbsp;%STRAIGHT%] vagy [1&nbsp;%BANKRIGHT%] manővert."""
        "Major Vynder":
           display_name: """Major Vynder"""
           text: """Amikor védekezel és van 'inaktív fegyverzet' jelződ, dobj 1-gyel több védekezőkockával."""
        "Manaroo":
           display_name: """Manaroo"""
           text: """Az Ütközet fázis elején kiválaszthatsz egy 0-1-es távolságban lévő baráti hajót. Ha így teszel, add át neki az összes zöld jelződ."""
        "Miranda Doni":
           display_name: """Miranda Doni"""
           text: """Amikor elsődleges támadást hajtasz végre, elkölthetsz 1 pajzsot, hogy 1-gyel több támadókockával dobj, vagy ha nincs pajzsod, dobhatsz 1-gyel kevesebb támadókockával, hogy visszatölts 1 pajzsot."""
        "Moralo Eval":
           display_name: """Moralo Eval"""
           text: """Ha lerepülsz a pályáról, elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, helyezd a hajód tartalékba. A következő Tervezési fázis elején helyezd el a hajót a pálya szélétől 1-es távolságban azon az oldalon, ahol lerepültél."""
        "Norra Wexley (Y-Wing)":
           display_name: """Norra Wexley"""
           text: """Amikor védekezel, ha van egy ellenséges hajó 0-1-es távolságban van, adj 1&nbsp;%EVADE% eredményt a dobásodhoz."""
        "Norra Wexley":
           display_name: """Norra Wexley"""
           text: """Amikor védekezel, ha van egy ellenséges hajó 0-1-es távolságban van, adj 1&nbsp;%EVADE% eredményt a dobásodhoz."""
        "N'dru Suhlak":
           display_name: """N’dru Suhlak"""
           text: """Amikor elődleges támadást hajtasz végre, ha nincs baráti hajó 0-2 távolságban, dobj 1-gyel több támadókockával."""
        "Old Teroch":
           display_name: """Old Teroch"""
           text: """Az Ütközet fázis elején, kiválaszthatsz 1 ellenséges hajót 1-es távolságban. Ha így teszel és benne vagy a %FRONTARC% ívében, leveheted az összes zöld jelzőjét.<br><strong>Concordia Faceoff:</strong> Amikor védekezel, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% ívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "Outer Rim Pioneer":
           display_name: """Outer Rim Pioneer"""
           text: """Baráti hajók 0-1-es távolságban végrehajthatnak támadást akadálytól 0 távolságra.<br><strong>Co-Pilot:</strong> Amíg dokkolva vagy, az anyahajód megkapja a pilóta képességed, mintha a sajátja lenne."""
        "Palob Godalhi":
           display_name: """Palob Godalhi"""
           text: """Az Ütközet fázis elején kiválaszthatsz 1 ellenséges hajót a tűzívedben 0-2 távolságban. Ha így teszel tedd át 1 fókusz vagy kitérés jelzőjét magadra."""
        "Prince Xizor":
           display_name: """Prince Xizor"""
           text: """Amikor védekezel, az <strong>Eredmények semlegesítése</strong> lépés után, egy 0-1 távolságban lévő másik baráti hajó, aki benne van a támadó tűzívében, elszenvedhet 1&nbsp;%HIT% vagy %CRIT% sérülést. Ha így tesz, hatástalaníts 1 ennek megfelelő eredményt.<br><strong>Microthrusters:</strong> Amikor orsózást hajtasz végre, a %BANKLEFT% vagy %BANKRIGHT% sablont <b>kell</b> használnod a %STRAIGHT% helyett."""
        "Quinn Jast":
           display_name: """Quinn Jast"""
           text: """Az Ütközet fázis elején kaphatsz 1 'inaktív fegyverzet' jelzőt, hogy visszatölts 1&nbsp;%CHARGE% jelzőt egy felszerelt fejlesztésen.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Rear Admiral Chiraneau":
           display_name: """Rear Admiral Chiraneau"""
           text: """Amikor támadást hajtasz végre, ha van 'reinforce' jelződ és a védekező a reinforce-nak megfelelő %FULLFRONTARC% vagy %FULLREARARC% ívedben van, megváltoztathatod 1&nbsp;%FOCUS% eredményed %CRIT% eredményre."""
        "Rexler Brath":
           display_name: """Rexler Brath"""
           text: """Miután végrehajtasz egy támadást, ami talál, ha van kitérés jelződ, fordítsd fel a védekező egy sérülés kártyáját.<br><strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Roark Garnet":
           display_name: """Roark Garnet"""
           text: """Az Ütközet fázis elején választhatsz 1 tűzívedben lévő hajót. Ha így teszel, a kezdeményezési értéke ebben a fázisban 7 lesz, függetlenül a nyomtatott értékétől."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """Mielőtt aktiválódsz, végrehajthatsz egy %BARRELROLL% vagy %BOOST% akciót.<br><strong>Locked and Loaded:</strong> Amikor dokkolva vagy, miután az anyahajód végrehajtott egy elsődleges %FRONTARC% vagy %TURRET% támadást, végrehajthat egy bónusz %REARARC% támadást."""
        "Sabine Wren (TIE Fighter)":
           display_name: """Sabine Wren"""
           text: """Mielőtt aktiválódsz, végrehajthatsz egy %BARRELROLL% vagy %BOOST% akciót."""
        "Sabine Wren (Scum)":
           display_name: """Sabine Wren"""
           text: """Amikor védekezel, ha a támadó benne van a %SINGLETURRETARC% ívedben 0-2-es távolságban, hozzáadhatsz 1&nbsp;%FOCUS% eredményt a dobásodhoz."""
        "Sarco Plank":
           display_name: """Sarco Plank"""
           text: """Amikor védekezel kezelheted a mozgékonyság értékedet úgy, hogy az megegyezzen az ebben a körben végrehajtott manővered sebességével.<br><strong>Spacetug Tractor Array:</strong> <strong>Akció:</strong>: Válassz egy hajót a %FRONTARC% ívedben 1-es távolságban. Az a hajó kap 1 vonósugár jelzőt vagy 2 vonósugár jelzőt, ha benne van a %BULLSEYEARC% ívedben 1-es távolságban."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """Amikor egy sérült baráti hajó 0-3-as távolságban végrehajt egy támadást, újradobhat 1 támadókockát."""
        "Serissu":
           display_name: """Serissu"""
           text: """Amikor egy baráti hajó 0-1-es távolságban védekezik, újradobhatja 1 kockáját.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Seventh Sister":
           display_name: """Seventh Sister"""
           text: """Amikor végrehajtasz egy elsődleges támadást, az <strong>Eredmények semlegesítése</strong> lépés előtt elkölthetsz 2 %FORCE% jelzőt, hogy hatástalaníts 1&nbsp;%EVADE% eredményt."""
        "Seyn Marana":
           display_name: """Seyn Marana"""
           text: """Amikor végrehajtasz egy támadást elkölthetsz 1&nbsp;%CRIT% eredményt. Ha így teszel, a védekező kap 1 lefordított sérülés kártyát, majd hatástalanítsd a többi dobás eredményed."""
        "Shara Bey":
           display_name: """Shara Bey"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, elköltheted az ellenfeledre tett bemérés jelződet, hogy hozzáadj 1&nbsp;%FOCUS% eredményt dobásodhoz."""
        "Sol Sixxa":
           display_name: """Sol Sixxa"""
           text: """Ha ledobnál egy eszközt az [1&nbsp;%STRAIGHT%] sablon használatával, helyette ledobhatod más 1-es sebességű sablonnal."""
        "Soontir Fel":
           display_name: """Soontir Fel"""
           text: """Az Ütközet fázis elején, ha van ellenséges hajó a %BULLSEYEARC% ívedben, kapsz 1 fókusz jelzőt.<br><strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Sunny Bounder":
           display_name: """Sunny Bounder"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, miután dobtál vagy újradobtál kockákat, ha minden eredményed egyforma, hozzáadhatsz 1 ugyanolyan eredményt a dobáshoz.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Talonbane Cobra":
           display_name: """Talonbane Cobra"""
           text: """Amikor 3-as távolságban védekezel vagy 1-es távolságban végrehajtasz egy támadást, dobj 1-gyel több kockával."""
        "Tel Trevura":
           display_name: """Tel Trevura"""
           text: """Ha megsemmisülnél, elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, dobd el az összes sérülés kártyádat, szenvedj el 5&nbsp;%HIT% sérülést, majd helyezd magad tartalékba. A következő Tervezési fázis elején helyezd fel a hajód 1-es távolságban a saját oldaladon."""
        "Ten Numb":
           display_name: """Ten Numb"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1 stressz jelzőt, hogy minden %FOCUS% eredményed megváltoztasd %EVADE% vagy %HIT% eredményre."""
        "Thane Kyrell":
           display_name: """Thane Kyrell"""
           text: """Amikor támadást hajtasz végre, elkölthetsz 1&nbsp;%FOCUS%, %HIT% vagy %CRIT% eredményt, hogy megnézd a védekező képpel lefelé fordított sérülés kártyáit, kiválassz egyet és megfordítsd."""
        "Tomax Bren":
           display_name: """Tomax Bren"""
           text: """Miután végrehajtasz egy %RELOAD% akciót, visszatölthetsz 1&nbsp;%CHARGE% jelzőt 1 felszerelt %TALENT% fejlesztés kártyán.<br><strong>Nimble Bomber:</strong> Ha ledobnál egy eszközt a %STRAIGHT% sablon segítségével, használhatod az azonos sebességű %BANKLEFT% vagy %BANKRIGHT% sablonokat helyette."""
        "Torani Kulda":
           display_name: """Torani Kulda"""
           text: """Miután végrehajtasz egy támadást, minden ellenséges hajó a %BULLSEYEARC% ívedben elszenved 1&nbsp;%HIT% sérülést, hacsak el nem dob 1 zöld jelzőt.<br><strong>Dead to Rights:</strong> Amikor végrehajtasz egy támadást, ha a védekező benne van a %BULLSEYEARC% ívedben, a védekezőkockák nem módosíthatók zöld jelzőkkel."""
        "Torkil Mux":
           display_name: """Torkil Mux"""
           text: """Az Ütközet fázis elején kiválaszthatsz 1 hajót a tűzívedben. Ha így teszel, az a hajó ebben a körben 0-ás kezdeményezéssel kerül sorra a normál kezdeményezése helyett."""
        "Turr Phennir":
           display_name: """Turr Phennir"""
           text: """Miután végrehajtasz egy támadást, végrehajthatsz egy %BARRELROLL% vagy %BOOST% akciót akkor is ha stresszes vagy.<br><strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """Az Ütközet fázis elején, ha van egy vagy több másik hajó 0-ás távolságban tőled, te és a 0-ás távolságra lévő hajók kapnak egy vonósugár jelzőt.<br><strong>Spacetug Tractor Array:</strong> <strong>Akció:</strong>: Válassz egy hajót a %FRONTARC% ívedben 1-es távolságban. Az a hajó kap 1 vonósugár jelzőt vagy 2 vonósugár jelzőt, ha benne van a %BULLSEYEARC% ívedben 1-es távolságban."""
        "Valen Rudor":
           display_name: """Valen Rudor"""
           text: """Miután egy baráti hajó 0-1-es távolságban védekezik - a sérülések elkönyvelése után, ha volt -, végrehajthatsz egy akciót."""
        "Ved Foslo":
           display_name: """Ved Foslo"""
           text: """Amikor végrehajtasz egy manővert, helyette végrehajthatsz egy manővert ugyanabban az irányban és nehézségben 1-gyel kisebb vagy nagyobb sebességgel.<br><strong>Advanced Targeting Computer:</strong> Amikor végrehajtasz egy elsődleges támadást egy olyan védekező ellen, akit bemértél, 1-gyel több támadókockával dobj és változtasd 1&nbsp;%HIT% eredményed %CRIT% eredményre."""
        "Viktor Hel":
           display_name: """Viktor Hel"""
           text: """Miután védekeztél, ha nem pontosan 2 védekezőkockával dobtál, a támadó kap 1 stress jelzőt."""
        "Wedge Antilles":
           display_name: """Wedge Antilles"""
           text: """Amikor támadást hajtasz végre, a védekező 1-gyel kevesebb védekezőkockával dob."""
        "Wullffwarro":
           display_name: """Wullffwarro"""
           text: """Amikor elsődleges támadást hajtasz végre, ha sérült vagy, 1-gyel több támadókockával dobhatsz."""
        "Zertik Strom":
           display_name: """Zertik Strom"""
           text: """A Vége fázis alatt elköltheted egy ellenséges hajón lévő bemérődet hogy felfordítsd egy sérülés kártyáját.<br><strong>Advanced Targeting Computer:</strong> Amikor végrehajtasz egy elsődleges támadást egy olyan védekező ellen, akit bemértél, 1-gyel több támadókockával dobj és változtasd 1&nbsp;%HIT% eredményed %CRIT% eredményre."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """Amikor végrehajtasz egy elsődleges támadást, 1-gyel több támadókockával dobhatsz. Ha így teszel, a védekező 1-gyel több védekezőkockával dob."""
        '"Chopper"':
           display_name: """“Chopper”"""
           text: """Az Ütközet fázis elején minden 0-ás távolságban lévő ellenséges hajó 2 zavarás jelzőt kap.<br><strong>Tail Gun:</strong> ha van bedokkolt hajód, használhatod az elsődleges %REARARC% fegyvered, ugyanolyan támadási értékkel, mint a dokkolt hajó elsődleges %FRONTARC% támadási értéke."""
        '"Countdown"':
           display_name: """“Countdown”"""
           text: """Amikor védekezel, az <strong>Eredmények semlegesítése</strong> lépés után, ha nem vagy stresszes, választhatod, hogy elszenvedsz 1&nbsp;%HIT% sérülést és kapsz 1 stressz jelzőt. Ha így teszel, vess el minden kocka dobást.<br><strong>Adaptive Ailerons:</strong> Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre <b>kell</b> hajtanod egy fehér [1&nbsp;%BANKLEFT%), [1&nbsp;%STRAIGHT%] vagy [1&nbsp;%BANKRIGHT%] manővert."""
        '"Deathfire"':
           display_name: """“Deathfire”"""
           text: """Miután megsemmisülsz, mielőtt levennéd a hajód, végrehajthatsz egy támadást és ledobhatsz vagy kilőhetsz 1 eszközt.<br><strong>Nimble Bomber:</strong> Ha ledobnál egy eszközt a %STRAIGHT% sablon segítségével, használhatod az azonos sebességű %BANKLEFT% vagy %BANKRIGHT% sablonokat helyette."""
        '"Deathrain"':
           display_name: """“Deathrain”"""
           text: """Miután ledobsz vagy kilősz egy eszközt, végrehajthatsz egy akciót."""
        '"Double Edge"':
           display_name: """“Double Edge”"""
           text: """Miután végrehajtasz egy %TURRET% vagy %MISSILE% támadást ami nem talál, végrehajthatsz egy bónusz támadást egy másik fegyverrel."""
        '"Duchess"':
           display_name: """“Duchess”"""
           text: """Választhatsz úgy, hogy nem használod az <strong>Adaptive Ailerons</strong> képességed. Használhatod akkor is <strong>Adaptive Ailerons</strong> képességed, amikor stresszes vagy.<br><strong>Adaptive Ailerons:</strong> Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre <b>kell</b> hajtanod egy fehér [1&nbsp;%BANKLEFT%), [1&nbsp;%STRAIGHT%] vagy [1&nbsp;%BANKRIGHT%] manővert."""
        '"Dutch" Vander':
           display_name: """“Dutch” Vander"""
           text: """Miután %LOCK% akciót hajtottál végre választhatsz 1 baráti hajót 1-3-as távolságban. Az a hajó is bemérheti az általad bemért objektumot, függetlenül a távolságtól."""
        '"Echo"':
           display_name: """“Echo”"""
           text: """Amikor kijössz az álcázásból, a [2&nbsp;%BANKLEFT%] vagy [2&nbsp;%BANKRIGHT%] sablont <b>kell</b> használnod a [2&nbsp;%STRAIGHT%] helyett.<br><strong>Stygium Array:</strong> Miután kijössz az álcázásból végrehajthatsz egy %EVADE% akciót. A Vége fázis elején elkölthetsz 1 kitérés jelzőt, hogy kapj egy álcázás jelzőt."""
        '"Howlrunner"':
           display_name: """“Howlrunner”"""
           text: """Amikor egy 0-1-es távolságban lévő baráti hajó elsődleges támadást hajt végre, 1 támadókockát újradobhat."""
        '"Leebo"':
           display_name: """“Leebo”"""
           text: """Miután védekeztél vagy támadást hajtottál végre, ha elköltöttél egy kalkuláció jelzőt, kapsz 1 kalkuláció jelzőt.<br><strong>Sensor Blindspot:</strong> Amikor elsődleges támadást hajtasz végre 0-1-es távolságban, nem érvényesül a 0-1-es távolságért járó bónusz és 1-gyel kevesebb támadókockával dobsz."""
        '"Mauler" Mithel':
           display_name: """“Mauler” Mithel"""
           text: """Amikor támadást hajtasz végre 1-es távolságban, dobj 1-gyel több támadókockával."""
        '"Night Beast"':
           display_name: """“Night Beast”"""
           text: """Miután teljesen végrehajtasz egy kék manővert, végrehajthatsz egy %FOCUS% akciót."""
        '"Pure Sabacc"':
           display_name: """“Pure Sabacc”"""
           text: """Amikor támadást hajtasz végre, ha 1 vagy kevesebb sérüléskártyád van, 1-gyel több támadókockával dobhatsz.<br><strong>Adaptive Ailerons:</strong> Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre <b>kell</b> hajtanod egy fehér [1&nbsp;%BANKLEFT%), [1&nbsp;%STRAIGHT%] vagy [1&nbsp;%BANKRIGHT%] manővert."""
        '"Redline"':
           display_name: """“Redline”"""
           text: """Fenntarthatsz 2 bemérő jelzőt. Miután végrehajtasz egy akciót, feltehetsz egy bemérő jelzőt."""
        '"Scourge" Skutu':
           display_name: """“Scourge” Skutu"""
           text: """Amikor végrehajtasz egy támadást a %BULLSEYEARC% ívedben lévő védekező ellen, dobj 1-gyel több támadókockával."""
        '"Vizier"':
           display_name: """“Vizier”"""
           text: """Miután teljesen végrehajtasz egy 1-es sebességű manővert az <strong>Adaptive Ailerons</strong> képességed használatával, végrehajthatsz egy %COORDINATE% akciót. Ha így teszel, hagyd ki az <strong>Akció végrehajtása</strong> lépést.<br><strong>Adaptive Ailerons:</strong> Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre <b>kell</b> hajtanod egy fehér [1&nbsp;%BANKLEFT%), [1&nbsp;%STRAIGHT%] vagy [1&nbsp;%BANKRIGHT%] manővert."""
        '"Wampa"':
           display_name: """“Wampa”"""
           text: """Amikor végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy 1-gyel több támadókockával dobj. Védekezés után elvesztesz 1&nbsp;%CHARGE% jelzőt."""
        '"Whisper"':
           display_name: """“Whisper”"""
           text: """Miután végrehajtasz egy támadást ami talál, kapsz 1 kitérés jelzőt.<br><strong>Stygium Array:</strong> Miután kijössz az álcázásból végrehajthatsz egy %EVADE% akciót. A Vége fázis elején elkölthetsz 1 kitérés jelzőt, hogy kapj egy álcázás jelzőt."""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """Amikor védekezel a %CRIT% találatok előbb semlegesítődnek a %HIT% találatoknál.<br><strong>Locked and Loaded:</strong> Amikor dokkolva vagy, miután az anyahajód végrehajtott egy elsődleges %FRONTARC% vagy %TURRET% támadást, végrehajthat egy bónusz %REARARC% támadást."""
        '"Zeb" Orrelios (Sheathipede)':
           display_name: """“Zeb” Orrelios"""
           text: """Amikor védekezel a %CRIT% találatok előbb semlegesítődnek a %HIT% találatoknál.<br><strong>Comms Shuttle:</strong> Amikor dokkolva vagy az anyahajód %COORDINATE% akció lehetőséget kap. Az anyahajód aktiválása előtt végrehajthat egy %COORDINATE% akciót."""
        '"Zeb" Orrelios (TIE Fighter)':
           display_name: """“Zeb” Orrelios"""
           text: """Amikor védekezel a %CRIT% találatok előbb semlegesítődnek a %HIT% találatoknál."""
        "Poe Dameron":
           text: """Miután végrehajtasz egy akciót, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy végrehajts egy fehér akciót pirosként kezelve.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Lieutenant Bastian":
           text: """Miután egy hajó 1-2-es távolságban felhúz egy sérülés kártyát, felrakhatsz rá egy bemérő jelzőt.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        '"Midnight"':
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha van bemérőd azon az ellenséges hajón, az nem módosíthatja a kockáit."""
        '"Longshot"':
           text: """Amikor elsődleges támadást hajtasz végre 3-as távolságban, dobj 1-gyel több támadókockával."""
        '"Muse"':
           text: """Az Ütközet fázis elején válaszhatsz egy baráti hajót 0-1-es távolságban. Ha így teszel, az a hajó vegyen le 1 stressz jelzőt."""
        "Kylo Ren":
           text: """Miután védekeztél, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy hozzárendeled az <strong>I'll Show You the Dark Side</strong> állapotkártyát a támadódhoz.<br><strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        '"Blackout"':
           text: """Amikor végrehajtasz egy támadást, ha a támadás akadályozott egy akadály által, a védekező 2-vel kevesebb védekezőkockával dob.<br><strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Lieutenant Dormitz":
           text: """<strong>Felhelyezés:</strong> Miután  felhelyezésre kerültél, a többi kistalpas baráti hajó bárhova helyezhető a játékterületen tőled 0-2-es távolságban.<br><strong>Linked battery:</strong> Amikor végrehajtasz egy %CANNON% támadást, dobj 1-gyel több támadókockával."""
        '"Backdraft"':
           text: """Amikor végrehajtasz egy %SINGLETURRETARC% elsődleges támadást, ha a védekező benne van a %REARARC% ívedben dobj 1-gyel több kockával.<br><strong>Heavy Weapon Turret:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %MISSILE% fejlesztésed %FRONTARC% követelményét úgy <b>kell</b> kezelned mintha %SINGLETURRETARC% lenne."""
        '"Quickdraw"':
           text: """Miután elvesztesz egy pajzsot, elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, végrehajthatsz egy bónusz elsődleges támadást.<br><strong>Heavy Weapon Turret:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %MISSILE% fejlesztésed %FRONTARC% követelményét úgy <b>kell</b> kezelned mintha %SINGLETURRETARC% lenne."""
        "Zeta Squadron Survivor":
           text: """<strong>Heavy Weapon Turret:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %MISSILE% fejlesztésed %FRONTARC% követelményét úgy <b>kell</b> kezelned mintha %SINGLETURRETARC% lenne."""
        "Rey":
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha az ellenséges hajó benne van a %FRONTARC% ívedben, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy 1 üres eredményed %EVADE% vagy %HIT% eredményre változtasd."""
        "Han Solo (Resistance)":
           text: """<strong>Felhelyezés:</strong> Bárhova felhelyezheted a hajód a játékterületre 3-as távolságon túl az ellenséges hajóktól."""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca"""
           text: """Miután egy baráti hajó 0-3-as távolságban megsemmisül, végrehajthatsz egy akciót. Aztán végrehajthatsz egy bónusz támadást."""
        "Captain Seevor":
           text: """Amikor védekezel vagy végrehajtasz egy támadást, mielőtt a támadókockát elgurulnának, ha nem vagy az ellenséges hajó %BULLSEYEARC% ívében, elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, az ellenséges hajó kap egy zavarás jelzőt.<br><strong>Notched Stabilizers:</strong> Amikor mozogsz, hagyd figyelmen kívül az aszteroidákat."""
        "Mining Guild Surveyor":
           text: """<strong>Notched Stabilizers:</strong> Amikor mozogsz, hagyd figyelmen kívül az aszteroidákat."""
        "Mining Guild Sentry":
           text: """<strong>Notched Stabilizers:</strong> Amikor mozogsz, hagyd figyelmen kívül az aszteroidákat."""
        "Ahhav":
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha az elleséges hajó nagyobb talpméretű, dobj 1-gyel több kockával.<br><strong>Notched Stabilizers:</strong> Amikor mozogsz, hagyd figyelmen kívül az aszteroidákat."""
        "Finch Dallow":
           text: """Mielőtt ledobnál egy bombát, ledobás helyett elhelyezheted a játékterületen úgy, hogy érintkezzen veled."""
        "Major Stridan":
           text: """Amikor koordinálsz vagy egy fejlesztés kártyád hatását alkalmaznád, kezelheted úgy a 2-3-as távolságban lévő baráti hajókat, mintha 0 vagy 1-es távolságban lennének.<br><strong>Linked battery:</strong> Amikor végrehajtasz egy %CANNON% támadást, dobj 1-gyel több támadókockával."""
        "Kare Kun":
           text: """Amikor gyorsítasz (%BOOST%), használhatod a [1&nbsp;%TURNLEFT%] vagy [1&nbsp;%TURNRIGHT%] sablonokat is.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Joph Seastriker":
           text: """Miután elvesztesz 1 pajzsod, kapsz 1&nbsp;%EVADE% jelzőt.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Lieutenant Bastian":
           text: """Miután egy hajó 1-2-es távolságban felhúz egy sérülés kártyát, felrakhatsz rá egy bemérő jelzőt.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Jaycris Tubbs":
           text: """Miután teljesen végrehajtasz egy kék manővert, választhatsz egy baráti hajót 0-1-es távolságban. Ha így teszel, az a hajó levesz egy stressz jelzőt.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Black Squadron Ace (T-70)":
           display_name: """Black Squadron Ace"""
           text: """<strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Red Squadron Expert":
           text: """<strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Blue Squadron Rookie":
           text: """<strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Cobalt Squadron Bomber":
           text: """ """
        "TN-3465":
           text: """Amikor egy másik baráti hajó támadást hajt végre, ha 0-1 távolságban vagy a védekezőtől, elszenvedhetsz 1&nbsp;%CRIT% sérülést, hogy a támadó 1 eredményét %CRIT% eredményre változtassa."""
        '"Scorch"':
           text: """Amikor elsődleges támadást hajtasz végre, ha nem vagy stresszes, kaphatsz 1 stressz jelzőt, hogy 1-gyel több támadókockával dobj."""
        '"Longshot"':
           text: """Amikor elsődleges támadást hajtasz végre 3-as távolságban, dobj 1-gyel több támadókockával."""
        '"Static"':
           text: """Amikor elsődleges támadást hajtasz végre, elköltheted a védekezőn lévő bemérődet és egy %FOCUS% jelződ, hogy minden eredményed %CRIT% eredményre változtass."""
        "Lieutenant Rivas":
           text: """Miután egy hajó 1-2-es távolságban kap egy piros vagy narancs jelzőt, ha nem volt bemérőd a hajón, feltehetsz egyet rá."""
        "Commander Malarus":
           text: """Az Ütközet fázis elején elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy kapj 1 stressz jelzőt. Ha így teszel, a kör végéig ha védekezel vagy végrehajtasz egy támadást, megváltoztathatsz minden %FOCUS% eredményed %EVADE% vagy %HIT% eredményre."""
        "Omega Squadron Ace":
           text: """"""
        "Zeta Squadron Pilot":
           text: """"""
        "Epsilon Squadron Cadet":
           text: """"""
        "Greer Sonnel":
           text: """Miután teljesen végrehajtasz egy manővert, forgathatod a %SINGLETURRETARC% ívedet.<br><strong>Refined Gyrostabilizers:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% vagy %ROTATEARC% akciót."""
        "L'ulo L'ampar":
           text: """Amikor védekezel vagy végrehajtasz egy elsődleges támadást, ha stresszes vagy, 1-gyel kevesebb védekezőkockával vagy 1-gyel több támadókockával <strong>kell</strong> dobnod.<br><strong>Refined Gyrostabilizers:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% vagy %ROTATEARC% akciót."""
        "Zari Bangel":
           text: """Ne hagyd ki az <strong>Akció végrehajtása</strong> lépést, miután részlegesen hajtottál végre egy manővert.<br><strong>Refined Gyrostabilizers:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% vagy %ROTATEARC% akciót."""
        "Tallissan Lintra":
           text: """Amikor egy ellenséges hajó a %BULLSEYEARC% ívedben végrehajt egy támadást, elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, a védekező 1-gyel több kockával dob.<br><strong>Refined Gyrostabilizers:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% vagy %ROTATEARC% akciót."""
        "Darth Maul":
           text: """Miután végrehajtasz egy támadást, elkölthetsz 2 %FORCE% jelzőt, hogy végrehajts egy bónusz elsődleges támadást egy másik célpont ellen. Ha az első támadás nem talált, a bónusz támadást végrehajthatod ugyanazon célpont ellen."""
        '"Sinker"':
           text: """Amikor 1-2-es távolságban és a %LEFTARC% vagy %RIGHTARC% ívedben lévő baráti hajó végrehajt egy elsődleges támadást, újradobhat 1 támadókockát."""
        "Petty Officer Thanisson":
           text: """Az Aktivációs vagy Ütközet fázis közben, miután egy hajó a %FRONTARC% ívedben 1-2-es távolságban kap 1 stressz jelzőt, elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, az a hajó kap egy vonósugár jelzőt.<br><strong>Linked battery:</strong> Amikor végrehajtasz egy %CANNON% támadást, dobj 1-gyel több támadókockával."""
        "Captain Cardinal":
           text: """Amikor egy baráti hajó 1-2-es távolságban, a tiédnél alacsonyabb kezdeményezéssel védekezik vagy támadást hajt végre, ha van legalább 1&nbsp;%CHARGE% jelződ, az a hajó újradobhat 1&nbsp;%FOCUS% eredményét. Miután egy ellenséges hajó 0-3-as távolságban megsemmisül, elvesztesz 1&nbsp;%CHARGE% jelzőt.<br><strong>Linked battery:</strong> Amikor végrehajtasz egy %CANNON% támadást, dobj 1-gyel több támadókockával."""
        '"Avenger"':
           text: """Miután egy másik baráti hajó megsemmisül, végrehajthatsz egy akciót, akkor is, ha stresszes vagy. <br><strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        '"Recoil"':
           text: """Amikor stresszes vagy, kezelheted úgy a %FRONTARC% ívedben 0-1-es távolságban lévő ellenséges hajókat, mintha a %BULLSEYEARC% ívedben lennének.<br><strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Omega Squadron Expert":
           text: """<strong>Heavy Weapon Turret:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %MISSILE% fejlesztésed %FRONTARC% követelményét úgy <b>kell</b> kezelned mintha %SINGLETURRETARC% lenne."""
        "Sienar-Jaemus Engineer":
           text: """<strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "First Order Test Pilot":
           text: """<strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Starkiller Base Pilot":
           text: """<strong>Linked battery:</strong> Amikor végrehajtasz egy %CANNON% támadást, dobj 1-gyel több támadókockával."""
        "Lieutenant Tavson":
           text: """Miután sérülést szenvedsz el, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy végrehajts egy akciót.<br><strong>Linked battery:</strong> Amikor végrehajtasz egy %CANNON% támadást, dobj 1-gyel több támadókockával."""
        '"Null"':
           text: """Amíg nem vagy sérült, kezeld a kezdeményezési értéked 7-esként."""
        "Cat":
           text: """Amikor elsődleges támadást hajtasz végre, ha a védekező 0-1-es távolságban van legalább 1 baráti eszköztől, dobj 1-gyel több kockával."""
        "Ben Teene":
           text: """Miután végrehajtasz egy támadást, ha a védekező benne van a %SINGLETURRETARC% ívedben, rendeld hozzá a <strong>Rattled</strong> állapotkártyát a védekezőhöz."""
        "Vennie":
           text: """Amikor védkezel, ha a támadó benne van egy baráti hajó %SINGLETURRETARC% ívében, hozzáadhatsz 1&nbsp;%FOCUS% eredményt a dobásodhoz."""
        "Edon Kappehl":
           text: """Miután teljesen végrehajtasz egy kék vagy fehér manővert, ha még nem dobtál vagy lőttél ki eszközt ebben a körben, kidobhatsz egy eszközt."""
        "Resistance Sympathizer":
           text: """"""
        "Jessika Pava":
           text: """Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CHARGE% jelzőt vagy a felszerelt %ASTROMECH% fejlesztéseden lévő 1 nem visszatölthető %CHARGE% jelzőt, hogy újradobj 1 kockát minden 0-1-es távolságban lévő baráti hajó után.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Temmin Wexley":
           text: """Miután teljesen végrehajtasz egy 2-4 sebességű manővert, végrehajthatsz egy %BOOST% akciót<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Nien Nunb":
           text: """Miután kapsz egy stressz jelzőt, ha van ellenséges hajó a %FRONTARC% ívedben 0-1 távolságban, leveheted a kapott stressz jelzőt.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Ello Asty":
           text: """Miután felfedtél egy piros Tallon Roll (%TROLLLEFT% vagy %TROLLRIGHT%) manővert, ha 2 vagy kevesebb stressz jelződ van, kezeld a manővert fehérként.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Blue Squadron Recruit":
           text: """<strong>Refined Gyrostabilizers:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% vagy %ROTATEARC% akciót."""
        "Green Squadron Expert":
           text: """<strong>Refined Gyrostabilizers:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% vagy %ROTATEARC% akciót."""
        "Foreman Proach":
           text: """Mielőtt sorra kerülsz az Ütközet fázisban, választhasz 1 ellenséges hajót a %BULLSEYEARC% ívedben 1-2-es távolságban és kapsz 1 'inaktív fegyverzet' jelzőt. Ha így teszel, az a hajó kap 1 vonósugár jelzőt.<br><strong>Notched Stabilizers:</strong> Amikor mozogsz, hagyd figyelmen kívül az aszteroidákat."""
        "Overseer Yushyn":
           text: """Mielőtt egy baráti hajó 1-es távolságban kapna 1 'inaktív fegyverzet' jelzőt, ha az a hajó nem stresszes, elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, az a hajó 1 stressz jelzőt kap helyette.<br><strong>Notched Stabilizers:</strong> Amikor mozogsz, hagyd figyelmen kívül az aszteroidákat."""
        "General Grievous":
           text: """Amikor elsődleges támadást hajtasz végre, ha nem vagy a védekező tűzívében, újradobhatod akár 2 támadókockádat is."""
        "Wat Tambor":
           text: """Amikor elsődleges támadást hajtasz végre, újradobhatsz 1 támadókockát minden kalkuláció tokennel rendelkező baráti hajó után ami a védekezőtől 1-es távolságban van."""
        "Captain Sear":
           text: """Amikor egy baráti hajó 0-3-as távolságban végrehajt egy elsődleges támadást, ha a védekező benne van annak %BULLSEYEARC% ívében, az <strong>Eredmények semlegesítése</strong> lépés előtt a baráti hajó elkölthet 1&nbsp;%CALCULATE% jelzőt, hogy semlegesítsen 1&nbsp;%EVADE% eredményt."""
        "Precise Hunter":
           text: """Amikor támadást hajtasz végre, ha a védekező benne van a %BULLSEYEARC% ívedben, újradobhatsz 1 üres eredményt.<br><strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "Haor Chall Prototype":
           text: """Miután egy ellenséges hajó a %BULLSEYEARC% ívedben 0-2-es távolságban védekezőnek jelöl egy másik baráti hajót, végrehajthatsz egy %CALCULATE% vagy %LOCK% akciót.<br><strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "DFS-081":
           text: """Amikor egy baráti hajó 0-1 távolságban védekezik, elkölthet 1&nbsp;%CALCULATE% jelzőt, hogy az összes %CRIT% eredményt %HIT% eredményre változtassa.<br><strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "Obi-Wan Kenobi":
           text: """Miután egy baráti hajó 0-2-es távolságban elkölt egy %FOCUS% jelzőt, elkölthetsz 1&nbsp;%FORCE% jelzőt. Ha így teszel, az a hajó kap 1&nbsp;%FOCUS% jelzőt.<br> FINE-TUNED CONTROLS: Miután teljesen végrehajtasz egy manővert, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts egy %BOOST% vagy %BARRELROLL% akciót."""
        "Jedi Knight":
           text: """FINE-TUNED CONTROLS: Miután teljesen végrehajtasz egy manővert, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts egy %BOOST% vagy %BARRELROLL% akciót.""" 
        "Ahsoka Tano":
           text: """Miután teljesen végrehajtasz egy manővert, választhatsz egy baráti hajót 0-1-es távolságban és költs el 1&nbsp;%FORCE% jelzőt. Az a hajó végrehajthat egy akciót még ha stresszes is. <br> FINE-TUNED CONTROLS: Miután teljesen végrehajtasz egy manővert, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts egy %BOOST% vagy %BARRELROLL% akciót.""" 
        "Anakin Skywalker":
           text: """Miután teljesen végrehajtasz egy manővert, ha van egy ellenséges hajó a %FRONTARC% ívedben 0-1 távolságban vagy a %BULLSEYEARC% ívedben, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy levegyél 1 stressz jelzőt.<br> FINE-TUNED CONTROLS: Miután teljesen végrehajtasz egy manővert, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts egy %BOOST% vagy %BARRELROLL% akciót.""" 
        "Barriss Offee":
           text: """Amikor egy baráti hajó 0-2-es távolságban támadást hajt végre, ha a védekező benne van annak %BULLSEYEARC% ívében, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy átforgass 1&nbsp;%FOCUS% eredményt %HIT% eredményre vagy 1&nbsp;%HIT% eredményt %CRIT% eredményre.<br> FINE-TUNED CONTROLS: Miután teljesen végrehajtasz egy manővert, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts egy %BOOST% vagy %BARRELROLL% akciót.""" 
        "Luminara Unduli":
           text: """Amikor egy baráti hajó 0-2-es távolságban védekezik, ha az nincs a támadó %BULLSEYEARC% ívében, elkölthetsz 1&nbsp;%FORCE% jelzőt. Ha így teszel, forgass át 1&nbsp;%CRIT% eredményt %HIT% eredményre vagy 1&nbsp;%HIT% eredményt %FOCUS% eredményre.<br> FINE-TUNED CONTROLS: Miután teljesen végrehajtasz egy manővert, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts egy %BOOST% vagy %BARRELROLL% akciót.""" 
        "Plo Koon":
           text: """Az Ütközet fázis elején elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy válassz egy másik baráti hajót 0-2-es távolságban. Ha így teszel, átadhatsz 1 zöld jelzőt neki vagy átvehetsz egy narancs jelzőt magadra.<br> FINE-TUNED CONTROLS: Miután teljesen végrehajtasz egy manővert, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts egy %BOOST% vagy %BARRELROLL% akciót."""
        "Saesee Tiin":
           text: """Miután egy baráti hajó 0-2-es távolságban felfedi a tárcsáját elkölthetsz 1&nbsp;%FORCE% jelzőt. Ha így teszel, állítsd át a tárcsáját egy másik hasonló sebességű és nehézségű manőverre.<br> FINE-TUNED CONTROLS: Miután teljesen végrehajtasz egy manővert, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts egy %BOOST% vagy %BARRELROLL% akciót."""
        "Mace Windu":
           text: """Miután teljesen végrehajtasz egy piros manővert, tölts vissza 1&nbsp;%FORCE% jelzőt.<br> FINE-TUNED CONTROLS: Miután teljesen végrehajtasz egy manővert, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts egy %BOOST% vagy %BARRELROLL% akciót."""
        '"Kickback"':
           text: """Miután végrehajtasz egy %BARRELROLL% akciót, végrehajthatsz egy piros %LOCK% akciót."""
        '"Odd Ball"':
           text: """Miután teljesen végrehajtasz egy piros manővert vagy piros akciót, ha van egy ellenséges hajó a %BULLSEYEARC% ívedben, feltehetsz egy bemérőt arra a hajóra."""
        '"Sinker"':
           text: """Amikor egy baráti hajó 1-2-es távolságban a %LEFTARC% vagy %RIGHTARC% ívedben elsődleges támadást hajt végre, újradobhat 1 támadókockát."""
        '"Swoop"':
           text: """Miután egy baráti kis vagy közepes hajó teljesen végrehajt egy 3-4 sebességű manővert, ha az 0-1-es távolságban van tőled, végrehajthat egy piros %BOOST% akciót."""
        '"Axe"':
           text: """Miután védekezel vagy végrehajtasz egy támadást, választhatsz egy baráti hajót 1-2-es távolságban a %LEFTARC% vagy %RIGHTARC% ívedben. Ha így teszel add át 1 zöld jelződet annak a hajónak."""
        '"Tucker"':
           text: """Miután egy baráti hajó 1-2-es távolságban végrehajt egy támadást egy ellenséges hajó ellen a %FRONTARC% ívedben, végrehajthatsz egy %FOCUS% akciót."""
        "Bombardment Drone":
           text: """Amikor ledobnál egy eszközt, ki is lőheted, ugyanazt a sablont használva. <br><strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "Count Dooku":
           text: """Miután védekeztél, ha a támadó benne van a tűzívedben, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy levedd egy kék vagy piros jelződ.<br> Miután végrehajtasz egy támadást ami talált, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts egy akciót."""
        "0-66":
           text: """Miután védekezel, elkölthetsz 1&nbsp;%CALCULATE% jelzőt, hogy végrehajts egy akciót."""
        "DFS-311":
           text: """Az Ütközet fázis elején, átteheted 1&nbsp;%CALCULATE% jelződet egy másik baráti hajóra 0-3-as távolságban. <br><strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        '"Odd Ball" (ARC-170)':
           text: """Miután teljesen végrehajtasz egy piros manővert vagy piros akciót, ha van egy ellenséges hajó a %BULLSEYEARC% ívedben, feltehetsz egy bemérőt arra a hajóra."""
        '"Jag"':
           text: """Miután egy baráti hajó 1-2-es távolságban a %LEFTARC% vagy %RIGHTARC% ívedben védekezik, feltehetsz egy bemérőt a támadóra."""
        '"Wolffe"':
           text: """Amikor végrehajtasz egy elsődleges %FRONTARC% támadást, elkölthetsz 1 %CHARGE% jelzőt, hogy újradobj 1 támadókockát. <br> Amikor végrehajtasz egy elsődleges %REARARC% támadást, visszaállíthatsz 1 %CHARGE% jelzőt, hogy 1-gyel több támadókockával dobj"""
        "Baktoid Prototype":
           display_name: """Baktoid Prototype"""
           text: """Amikor speciális támadást hajtasz végre, ha egy baráti hajónak a <strong>Networked Calculations</strong> képességgel bemérője van a védekezőn, figyelmen kívül hagyhatod a támadás %FOCUS%, %CALCULATE% vagy %LOCK% követelményét.<br><strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "DBS-32C":
           display_name: """DBS-32C"""
           text: """Az Ütközet fázis elején elkölthetsz 1&nbsp;%CALCULATE% jelzőt, hogy végrehajts egy %COORDINATE% akciót, Nem koordinálhatsz olyan hajót, amely nem rendelkezik a <strong>Networked Calculations</strong> képességgel.<br><strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "DBS-404":
           display_name: """DBS-404"""
           text: """Végrehajthatsz támadást 0-ás távolságban. Amikor 0-1-es távolságban támadást hajtasz végre, 1-gyel több támadókockával <strong>kell</strong> dobnod. Miután a támadás talált, szenvedj el 1 %CRIT% sérülést.<br><strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "Separatist Bomber":
           display_name: """Separatist Bomber"""
           text: """<strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "Separatist Drone":
           display_name: """Separatist Drone"""
           text: """<strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "Techno Union Bomber":
           display_name: """Techno Union Bomber"""
           text: """<strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "Trade Federation Drone":
           display_name: """Trade Federation Drone"""
           text: """<strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, újradobhatsz 1 eredményed minden a ívben lévő másik baráti hajó után."""
        "Pammich Nerro Goode":
           display_name: """Pammich Nerro Goode"""
           text: """Amíg 2 vagy kevesebb stress jelződ van, végrehajthatsz piros manővert, még ha stresszes is vagy."""
        "Padmé Amidala":
           display_name: """Padmé Amidala"""
           text: """Amikor egy ellenséges hajó a %FRONTARC% ívedben védekezik vagy támadást hajt végre, csak 1 %FOCUS% eredményt módosíthat (más eredmények módosíthatók).<br><strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Anakin Skywalker (N-1 Starfighter)":
           display_name: """Anakin Skywalker"""
           text: """Mielőtt felfeded a manővered, elkölthetsz 1 %FORCE% jelzőt, hogy végrehajts egy orsózást (ez nem számít akciónak).<br><strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Ric Olié":
           display_name: """Ric Olié"""
           text: """Amikor védekezel vagy végrehajtasz egy elsődleges támadást, ha a felfedett manőver sebességed magasabb a védekezőénél, dobj 1-gyel több kockával.<br><strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Dineé Ellberger":
           display_name: """Dineé Ellberger"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha a felfedett manőver sebességed megegyezik az ellenséges hajóéval, az nem módosíthatja a kockáit.<br><strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Naboo Handmaiden":
           display_name: """Naboo Handmaiden"""
           text: """<strong>Felhelyezés:</strong> Miután felhelyezed a hajóid, rendeld hozzá a <strong>Decoyed</strong> állapotkártyát 1 baráti hajóhoz ami nem <strong>Naboo Handmaiden</strong>.<br><strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Bravo Flight Officer":
           display_name: """Bravo Flight Officer"""
           text: """<strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "BB-8":
           display_name: """BB-8"""
           text: """A Rendszer fázis alatt végrehajthatsz egy piros %BARRELROLL% vagy %BOOST% akciót."""
        "Finn":
           display_name: """Finn"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, adj a dobáshoz 1 üres eredményt vagy kaphatsz 1 túlterhelés jelzőt, hogy üres helyett fókusz eredményt adhass hozzá."""
        "Cova Nell":
           display_name: """Cova Nell"""
           text: """Amikor védekezel vagy végrehajtasz egy elsődleges támadást, ha a felfedett manővered piros, dobj 1-gyel több kockával."""
        "Nodin Chavdri":
           display_name: """Nodin Chavdri"""
           text: """Miután koordinálsz vagy koordinálnak, ha 2 vagy kevesebb stressz jelződ van, végrehajthatsz 1 akciót az akciósávodról pirosként kezelve, még ha stresszes is vagy."""
        "Vi Moradi":
           display_name: """Vi Moradi"""
           text: """<strong>Felhelyezés:</strong> Miután felhelyezed a hajóid, rendeld hozzá a <strong>Compromising Intel</strong> állapotkártyát 1 ellenséges hajóhoz."""
        "Shadow Squadron Veteran":
           text: """<strong>Plated Hull:</strong> Amikor védekezel, ha nincs kritikus sérülésed, változtass 1 %CRIT% eredményt %HIT% eredményre."""
        "Red Squadron Bomber":
           text: """<strong>Plated Hull:</strong> Amikor védekezel, ha nincs kritikus sérülésed, változtass 1 %CRIT% eredményt %HIT% eredményre."""
        '"Goji"':
           text: """Amikor egy baráti hajó 0-3-as távolságban védekezik, további 1 védőkockával dobhat minden tőle 0-1 távolságban lévő baráti bomba vagy akna után. <br><strong>Plated Hull:</strong> Amikor védekezel, ha nincs kritikus sérülésed, változtass 1 %CRIT% eredményt %HIT% eredményre."""
        '"Broadside"':
           text: """Amikor végrehajtasz egy %SINGLETURRETARC% támadást, ha a %SINGLETURRETARC% a %LEFTARC% vagy %RIGHTARC% ívedben van, 1 üres eredményed %FOCUS% eredményre változtathatsz. <br><strong>Plated Hull:</strong> Amikor védekezel, ha nincs kritikus sérülésed, változtass 1 %CRIT% eredményt %HIT% eredményre."""
        '"Matchstick"':
           text: """Amikor végrehajtasz egy elsődleges vagy %SINGLETURRETARC% támadást, újradobhatsz 1 támadókockát minden egyes rajtad lévő piros jelző után. <br><strong>Plated Hull:</strong> Amikor védekezel, ha nincs kritikus sérülésed, változtass 1 %CRIT% eredményt %HIT% eredményre."""
        '"Odd Ball" (Y-Wing)':
           text: """Miután teljesen végrehajtasz egy piros manővert vagy piros akciót, ha van egy ellenséges hajó a %BULLSEYEARC% ívedben, feltehetsz egy bemérőt arra a hajóra.<br><strong>Plated Hull:</strong> Amikor védekezel, ha nincs kritikus sérülésed, változtass 1 %CRIT% eredményt %HIT% eredményre."""
        "R2-D2":
           text: """Az Ütközet fázis elején, ha van ellenséges hajó a %REARARC% ívedben, kapsz 1 %CALCULATE% jelzőt.<br><strong>Plated Hull:</strong> Amikor védekezel, ha nincs kritikus sérülésed, változtass 1 %CRIT% eredményt %HIT% eredményre."""
        "Anakin Skywalker (Y-Wing)":
           text: """Miután teljesen végrehajthatsz egy manővert, ha van ellenséges hajó a %FRONTARC% ívedben 0-1-es távolságban, elkölthetsz 1 %FORCE% jelzőt, hogy levegyél egy stress jelzőt.<br><strong>Plated Hull:</strong> Amikor védekezel, ha nincs kritikus sérülésed, változtass 1 %CRIT% eredményt %HIT% eredményre."""
        "Sun Fac":
           text: """Amikor végrehajthatsz egy elsődleges támadást, ha a védekező vonósugarazva van, dobj 1-gyel több kockával<br> <strong>Pinpoint Tractor Array:</strong> A %SINGLETURRETARC% fegyveredet nem forgathatod a %REARARC% ívedbe. Miután végrehajtasz egy manővert, kaphatsz 1 vonósugár jelzőt, hogy végrehajts egy %ROTATEARC% akciót."""
        "Stalgasin Hive Guard":
           text: """<strong>Pinpoint Tractor Array:</strong> A %SINGLETURRETARC% fegyveredet nem forgathatod a %REARARC% ívedbe. Miután végrehajtasz egy manővert, kaphatsz 1 vonósugár jelzőt, hogy végrehajts egy %ROTATEARC% akciót."""
        "Petranaki Arena Ace":
           text: """<strong>Pinpoint Tractor Array:</strong> A %SINGLETURRETARC% fegyveredet nem forgathatod a %REARARC% ívedbe. Miután végrehajtasz egy manővert, kaphatsz 1 vonósugár jelzőt, hogy végrehajts egy %ROTATEARC% akciót."""
        "Berwer Kret":
           text: """Miután végrehajtasz egy támadást, ami talált, minden baráti hajó, aminek van %CALCULATE% az akciósávján és bemérő jelzője a védekezőn, végrehajthat egy piros %CALCULATE% akciót  <br><strong>Pinpoint Tractor Array:</strong> A %SINGLETURRETARC% fegyveredet nem forgathatod a %REARARC% ívedbe. Miután végrehajtasz egy manővert, kaphatsz 1 vonósugár jelzőt, hogy végrehajts egy %ROTATEARC% akciót."""
        "Chertek":
           text: """Amikor végrehajtasz egy elsődleges támadást, ha a védekező vonósugarazva van, újradobhatsz akár 2 támadókockát. <br><strong>Pinpoint Tractor Array:</strong> A %SINGLETURRETARC% fegyveredet nem forgathatod a %REARARC% ívedbe. Miután végrehajtasz egy manővert, kaphatsz 1 vonósugár jelzőt, hogy végrehajts egy %ROTATEARC% akciót."""
        "Gorgol":
           text: """A Rendszer fázis alatt, kaphatsz 1 'inaktív fegyverzet' jelzőt, hogy válassz egy baráti hajót 1-2-es távolságban. Ha így teszel, az kap 1 vonósugár jelzőt, hogy megjavítsa 1 felfordított <strong>Ship</strong> sérüléskártyáját. <br><strong>Pinpoint Tractor Array:</strong> A %SINGLETURRETARC% fegyveredet nem forgathatod a %REARARC% ívedbe. Miután végrehajtasz egy manővert, kaphatsz 1 vonósugár jelzőt, hogy végrehajts egy %ROTATEARC% akciót."""
        "Kazuda Xiono":
           text: """Amikor védekezel vagy végrehajtasz egy elsődleges támadást, ha az ellenséges hajó kezdeményezése nagyobb mint a sérüléskártyáid száma, dobj 1-gyel több támadókockával. <br><strong>Explosion with Wings:</strong> Kapsz 1 lefordított sérüléskártyát. Miután végrehajtasz egy %SLAM% akciót, felfordíthatsz 1 sérüléskártyát, hogy levegyél 1 'inaktív fegyverzet' jelzőt."""
        "Major Vonreg":
           text: """A Rendszer fázis alatt választhatsz 1 ellenséges hajót a %BULLSEYEARC% ívedben. Az a hajó kap 1 'deplete' vagy 'strain' jelzőt a választásod szerint.<br><strong>Fine-Tuned Thrusters:</strong> Miután teljesen végrehajtasz egy manővert, ha nincs 'deplete' vagy 'strain' jelződ, kaphatsz 1 'deplete' vagy 'strain' jelzőt, hogy végrehajts egy %LOCK% vagy %BARRELROLL% akciót."""
        "First Order Provocateur":
           text: """<strong>Fine-Tuned Thrusters:</strong> Miután teljesen végrehajtasz egy manővert, ha nincs 'deplete' vagy 'strain' jelződ, kaphatsz 1 'deplete' vagy 'strain' jelzőt, hogy végrehajts egy %LOCK% vagy %BARRELROLL% akciót."""
        '"Ember"':
           text: """Amikor végrehajtasz egy támadást, ha van egy sérült baráti hajó a védekezőtől 0-1-es távolságra, a védekező nem költhet %FOCUS% vagy %CALCULATE% jelzőt.<br><strong>Fine-Tuned Thrusters:</strong> Miután teljesen végrehajtasz egy manővert, ha nincs 'deplete' vagy 'strain' jelződ, kaphatsz 1 'deplete' vagy 'strain' jelzőt, hogy végrehajts egy %LOCK% vagy %BARRELROLL% akciót."""
        '"Holo"':
           text: """A Ütközet fázis elején át <b>kell</b> adnod 1 jelződet egy másik baráti hajónak 0-2-es távolságban.<br><strong>Fine-Tuned Thrusters:</strong> Miután teljesen végrehajtasz egy manővert, ha nincs 'deplete' vagy 'strain' jelződ, kaphatsz 1 'deplete' vagy 'strain' jelzőt, hogy végrehajts egy %LOCK% vagy %BARRELROLL% akciót."""
        "Captain Phasma":
           text: """Amikor védekezel, az <strong>Eredmények semlegesítése</strong> lépés után egy másik baráti hajónak el kell szenvednie 1 %HIT%/%CRIT% sérülést, hogy semlegesítsen 1 vele egyező sérülést.<br><strong>Heavy Weapon Turret:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %MISSILE% fejlesztésed %FRONTARC% követelményét úgy <b>kell</b> kezelned mintha %SINGLETURRETARC% lenne."""
        '"Rush"':
           text: """Amikor sérült vagy, kezeld a kezdeményezés értéked 6-osként. <br><strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Zizi Tlo":
           text: """Miután védekezel vagy végrehajtasz egy támadást, elkölthetsz 1 %CHARGE% jelzőt, hogy szerezz 1 %FOCUS% vagy %EVADE% jelzőt. <br><strong>Refined Gyrostabilizers:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% vagy %ROTATEARC% akciót."""
        "Ronith Blario":
           text: """Miután védekezel vagy végrehajtasz egy támadást, ha az ellenséges hajó benne van baráti hajó %SINGLETURRETARC% ívében, elkölthetsz 1 %FOCUS% jelzőt attól a baráti hajótól, hogy megváltoztass 1 %FOCUS% eredményed %EVADE% vagy %HIT% eredményre.<br><strong>Refined Gyrostabilizers:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% vagy %ROTATEARC% akciót."""
        "Gina Moonsong":
           text: """Az Ütközet fázis elején, át kell adnod 1 stressz jelződ egy másik baráti hajónak 0-2-es távolságban."""
        "K-2SO":
           text: """Miután kapsz egy stressz jelzőt, kapsz 1 %CALCULATE% jelzőt."""
        "Alexsandr Kallus":
           text: """Amikor védekezel, ha a támadó támadókockát módosít, 1-gyel több védezekőkockával dobhatsz.<br><strong>Tail Gun:</strong> ha van bedokkolt hajód, használhatod az elsődleges %REARARC% fegyvered, ugyanolyan támadási értékkel, mint a dokkolt hajó elsődleges %FRONTARC% támadási értéke."""
        "Leia Organa":
           text: """Miután egy baráti hajó teljesen végrehajt egy piros manővert, ha az 0-3-as távolságban van, elkölthetsz 1 %FORCE% jelzőt. Ha így teszel, az a hajó kap 1 %FOCUS% jelzőt vagy visszatölt 1 %FORCE% jelzőt."""
        "Paige Tico":
           text: """Miután kidobsz egy eszközt, elkölthetsz 1 %CHARGE% jelzőt, hogy kidobj egy további eszközt."""
        "Fifth Brother":
           text: """Amikor végrehajtasz egy támadást, az <strong>Eredmények semlegesítése</strong> lépés után, ha a támadás talált, elkölthetsz 2 %FORCE% jelzőt, hogy hozzáadj 1 %CRIT% eredményt a dobáshoz."""
        '"Vagabond"':
           text: """Miután teljesen végrehajtasz egy manővert az <strong>Adaptive Ailerons</strong> használatával, ha nem vagy stresszes, kidobhatsz 1 eszközt.<br><strong>Adaptive Ailerons:</strong> Mielőtt felfednéd a tárcsád, ha nem vagy stresszes, végre <b>kell</b> hajtanod egy fehér [1&nbsp;%BANKLEFT%), [1&nbsp;%STRAIGHT%] vagy [1&nbsp;%BANKRIGHT%] manővert."""
        "Morna Kee":
           text: """A Vége fázis alatt, elkölthetsz 1 %CHARGE% jelzőt, hogy átfordíts 1 erősítés jelződet ahelyett, hogy levennéd."""
        "Lieutenant LeHuse":
           text: """Amikor végrehajtasz egy támadást, elköltheted egy másik baráti hajó védekezőn lévő bemérőjét, hogy újradobj bármennyi kockádat.<br><strong>Heavy Weapon Turret:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %MISSILE% fejlesztésed %FRONTARC% követelményét úgy <b>kell</b> kezelned mintha %SINGLETURRETARC% lenne."""
        "Bossk (Z-95 Headhunter)":
           display_name: """Bossk"""
           text: """Amikor végrehajtasz egy elsődleges támadást, az <strong>Eredmények semlegesítése</strong> lépés után, elkölthetsz egy %CRIT% eredményt, hogy hozzáadj 2 %HIT% eredményt a dobásodhoz. <br><strong>Pursuit Craft:</strong> Miután kidokkoltál, bemérőt tehetsz arra a hajóra , amin a baráti <strong>Hound's Tooth</strong> hajónak is van bemérője."""
        "G4R-GOR V/M":
           text: """Miután védekezel, minden másik 0-ás távolságra lévő hajó elszenved 1 %CRIT% sérülést.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Nom Lumb":
           text: """Miután védekező lettél, ha a támadó nincs a %SINGLETURRETARC% ívedben, át kell forgasd a %SINGLETURRETARC% ív jelződ, abba a standard ívbe, ahol a támadó van."""
        "Jarek Yeager":
           text: """Amikor 2 vagy kevesebb stressz jelződ van, ha sérült vagy, végrehajthatsz piros alapmanővereket akár stresszesen is. Ha kritikus sérülésed van, végrehajthatsz összetett piros manővereket akár stresszesen is. <br><strong>Explosion with Wings:</strong> Kapsz 1 lefordított sérüléskártyát. Miután végrehajtasz egy %SLAM% akciót, felfordíthatsz 1 sérüléskártyát, hogy levegyél 1 'inaktív fegyverzet' jelzőt."""
        "R1-J5":
           text: """Mielőtt felfordítasz 1 sérüléskártyád, nézd meg a lefordított sérüléskártyáid, válassz 1-et és azt fordítsd fel.<br><strong>Explosion with Wings:</strong> Kapsz 1 lefordított sérüléskártyát. Miután végrehajtasz egy %SLAM% akciót, felfordíthatsz 1 sérüléskártyát, hogy levegyél 1 'inaktív fegyverzet' jelzőt."""
        "Colossus Station Mechanic":
           text: """<strong>Explosion with Wings:</strong> Kapsz 1 lefordított sérüléskártyát. Miután végrehajtasz egy %SLAM% akciót, felfordíthatsz 1 sérüléskártyát, hogy levegyél 1 'inaktív fegyverzet' jelzőt."""
        "212th Battalion Pilot":
           text: """<strong>Fire Convergence:</strong> amikor egy baráti hajó végrehajt egy nem %SINGLETURRETARC% támadást, ha a védekező benne van a löveg tűzívedben, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, a támadó újradobhat akár 2 kockát is."""
        '"Hawk"':
           text: """A Vége fázis elején minden baráti hajó 0-1-es távolságban, ami 3-5 sebességű manővert fedett fel kaphat 1 'strain' jelzőt, hogy végrehajtson egy %BARRELROLL% vagy %BOOST% akciót.<br><strong>Fire Convergence:</strong> amikor egy baráti hajó végrehajt egy nem %SINGLETURRETARC% támadást, ha a védekező benne van a löveg tűzívedben, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, a támadó újradobhat akár 2 kockát is."""
        '"Hound"':
           text: """Miután egy baráti kis hajó a %SINGLETURRETARC% ívedben kap egy 'deplete' vagy 'strain' jelzőt, ha még nincs olyan jelződ, átteheted azt magadhoz.<br><strong>Fire Convergence:</strong> amikor egy baráti hajó végrehajt egy nem %SINGLETURRETARC% támadást, ha a védekező benne van a löveg tűzívedben, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, a támadó újradobhat akár 2 kockát is."""
        '"Warthog"':
           text: """Miután te vagy egy baráti nem-limitált hajó 0-2-es távolságban megsemmisül az Ütközet fázisban, az a hajó a fázis végéig a pályán maradhat. <br><strong>Fire Convergence:</strong> amikor egy baráti hajó végrehajt egy nem %SINGLETURRETARC% támadást, ha a védekező benne van a löveg tűzívedben, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, a támadó újradobhat akár 2 kockát is."""
        "Baktoid Drone":
           text: """<br><strong>Networked Aim:</strong> Nem költheted el a bemérődet, hogy újradobd a támadókockáidat. Amikor végrehajtasz egy támadást, újradobhatsz annyi támadókockát, amennyi baráti bemérő van a védekezőn."""
        "Separatist Predator":
           text: """<br><strong>Networked Aim:</strong> Nem költheted el a bemérődet, hogy újradobd a támadókockáidat. Amikor végrehajtasz egy támadást, újradobhatsz annyi támadókockát, amennyi baráti bemérő van a védekezőn."""
        "DGS-286":
           text: """Mielőtt rád kerülne a sor az Ütközet fázisban, választhatsz egy baráti hajót 0-1-es távolságban. Az a hajó átad 1 %CALCULATE% jelzőt neked.<br><strong>Networked Aim:</strong> Nem költheted el a bemérődet, hogy újradobd a támadókockáidat. Amikor végrehajtasz egy támadást, újradobhatsz annyi támadókockát, amennyi baráti bemérő van a védekezőn."""
        "DGS-047":
           text: """Miután végrehajtasz egy támadást, ha a védekező benne van a %FRONTARC% ívedben, tehetsz rá egy bemérőt. Aztán, ha a védekező benne van a %BULLSEYEARC% ívedben, kap 1 'strain' jelzőt.<br><strong>Networked Aim:</strong> Nem költheted el a bemérődet, hogy újradobd a támadókockáidat. Amikor végrehajtasz egy támadást, újradobhatsz annyi támadókockát, amennyi baráti bemérő van a védekezőn."""
        "Geonosian Prototype":
           text: """Amikor végrehajtasz egy %MISSILE% vagy %CANNON% támadást, levehetsz 1 vonósugár jelzőt a védekezőről, hogy újradobj akár 2 kockát is.<br><strong>Networked Aim:</strong> Nem költheted el a bemérődet, hogy újradobd a támadókockáidat. Amikor végrehajtasz egy támadást, újradobhatsz annyi támadókockát, amennyi baráti bemérő van a védekezőn."""
        "Onderon Oppressor":
           text: """Miután orsózol vagy oldalazol, ha stresszes vagy kapsz 1 %CALCULATE% jelzőt.<br><strong>Networked Aim:</strong> Nem költheted el a bemérődet, hogy újradobd a támadókockáidat. Amikor végrehajtasz egy támadást, újradobhatsz annyi támadókockát, amennyi baráti bemérő van a védekezőn."""
        "Jedi General":
           text: """<strong>Intuitive Controls:</strong> A Rendszer fázis alatt végrehajthatsz egy lila %BARRELROLL% vagy lila %BOOST% akciót."""
        "Yoda":
           text: """Miután egy másik baráti hajó 0-3-as távolságban elkölt 1 vagy több %FORCE% jelzőt, elkölthetsz 1 %FORCE% jelzőt. Ha így teszel, az a hajó visszatölthet 1 %FORCE% jelzőt.<br><strong>Intuitive Controls:</strong> A Rendszer fázis alatt végrehajthatsz egy lila %BARRELROLL% vagy lila %BOOST% akciót."""
        "Shaak Ti":
           text: """A Vége fázis elején elkölthetsz bármennyi %FORCE% jelzőt, hogy kiválassz ugyanannyi baráti hajót 0-2-es távolságból. Minden kiválasztott hajó megtarthat 1 %FOCUS% vagy %EVADE% jelzőjét a Vége fázis alatt.<br><strong>Intuitive Controls:</strong> A Rendszer fázis alatt végrehajthatsz egy lila %BARRELROLL% vagy lila %BOOST% akciót."""
        "Aayla Secura":
           text: """Amikor egy ellenséges hajó a %FRONTARC% ívedben 0-1-es távolságban végrehajt egy támadást, a védekező kicserélhet 1 üres eredményt %FOCUS% eredményre.<br><strong>Intuitive Controls:</strong> A Rendszer fázis alatt végrehajthatsz egy lila %BARRELROLL% vagy lila %BOOST% akciót."""
        "Obi-Wan Kenobi (Eta-2)":
           display_name: """Obi-Wan Kenobi"""
           text: """Miután te vagy egy baráti <b>Anakin Skywalker</b> hajó 0-3-as távolságban végrehajt egy manővert, ha több az ellenséges hajó, mint a baráti 0-1-es távolságban, elkölthetsz 1 %FORCE% jelzőt. Ha így teszel, az a hajó kap 1 %FOCUS% jelzőt.<br><strong>Intuitive Controls:</strong> A Rendszer fázis alatt végrehajthatsz egy lila %BARRELROLL% vagy lila %BOOST% akciót."""
        "Anakin Skywalker (Eta-2)":
           display_name: """Anakin Skywalker"""
           text: """Miután te vagy egy baráti <b>Obi-Wan Kenobi</b> hajó 0-3-as távolságban végrehajt egy manővert, ha több az ellenséges hajó, mint a baráti 0-1-es távolságban, elkölthetsz 1 %FORCE% jelzőt. Ha így teszel, az a hajó levehet egy piros jelzőt.<br><strong>Intuitive Controls:</strong> A Rendszer fázis alatt végrehajthatsz egy lila %BARRELROLL% vagy lila %BOOST% akciót."""
        "TransGalMeg Control Link":
           text: """<strong>Hyperspace Docking Ring:</strong> 1 Delta-7 Aethersprite, Eta-2 Actis vagy Nimbus-class V-wing dokkolhat vele.<br>Amikor egy hajó be van dokkolva, megkapod a hajó kezdeményező értékét és tárcsáját. Amikor végrehajtasz egy manővert, csökkentsd annak sebességét 1-gyel. Mielőtt végrehajtasz egy haladó manővert, helyette hajtsál végre egy fehér megállás (%STOP%) manővert, majd elforgathatod a hajót 90 vagy 180 fokkal.<br>Amikor nincs bedokkolva hajó, nincs tárcsa hozzárendelésed, aktivációd és ütközeted."""
        "Separatist Interceptor":
           text: """<strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "Colicoid Interceptor":
           text: """<strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "Phlac-Arphocc Prototype":
           text: """A Rendszer fázis alatt elköltheted a bemérőd, hogy megnézhetsd annak a hajónak a tárcsáját, amin rajta van.<br><strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "Fearsome Predator":
           text: """<strong>Felhelyezés:</strong> Miután felhelyezted a hajóidat, rendeld a <b>Fearful Prey</b> állapotkártyát 1 ellenséges hajóhoz.<br><strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "DIS-347":
           text: """Az Ütközet fázis elején , feltehetsz egy bemérőt egy objektumra 1-3-as távolságban, amin már van baráti bemérő.<br><strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "DIS-T81":
           text: """Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1 %CALCULATE% jelzőt az ellenséges hajó tűzívében lévő baráti hajóról, hogy 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre változtass.<br><strong>Networked Calculations:</strong> Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt egy 0-1-es távolságban lévő baráti hajóról, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        "Lyttan Dree":
           text: """Amikor egy baráti hajó 0-2-es távolságban végrehajt egy támadást, ha benne vagy a védekező %LEFTARC% vagy %RIGHTARC% ívében, a támadó újradobhatja 1 támadókockáját.<br><strong>Rotating Cannons:</strong> A %SINGLETURRETARC% jelződet csak a %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %CANNON% %FRONTARC% követelményét %SINGLETURRETARC% ívként kell kezelned."""
        '"Rampage"':
           text: """Miután végrehajtasz egy 3-4-es sebességű manővert, választhatsz egy hajót a %SINGLETURRETARC% ívedben 0-1-es távolságban. Ha így teszel az a hajó kap egy 'strain' jelzőt vagy 2 'strain' jelzőt, ha sérült vagy.<br><strong>Rotating Cannons:</strong> A %SINGLETURRETARC% jelződet csak a %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %CANNON% %FRONTARC% követelményét %SINGLETURRETARC% ívként kell kezelned."""
        "Onyx Squadron Sentry":
           text: """<br> <strong>Rotating Cannons:</strong> A %SINGLETURRETARC% jelződet csak a %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %CANNON% %FRONTARC% követelményét %SINGLETURRETARC% ívként kell kezelned."""
        "Carida Academy Cadet":
           text: """<br> <strong>Rotating Cannons:</strong> A %SINGLETURRETARC% jelződet csak a %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %CANNON% %FRONTARC% követelményét %SINGLETURRETARC% ívként kell kezelned."""
        "Poe Dameron (HoH)":
           text: """Miután egy baráti hajó 0-2-es távolságban végrehajt egy akciót az aktivációs fázisában, elkölthetsz 2 %CHARGE% jelzőt. Ha így teszel, az a hajó végrehajthat egy fehér akciót pirosként kezelve.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Temmin Wexley (HoH)":
           text: """Az Ütközet fázis elején minden baráti T-70 X-wing 0-3 távolságban kaphat 1 'strain' jelzőt, hogy megfordítsa a %CONFIGURATION% fejlesztését. Ha így tesz, az a hajó kap 1 %CALCULATE% jelzőt.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "C'ai Threnalli":
           text: """Miután teljesen végrehajtasz egy manővert, ha átmozogtál egy baráti hajón, végrehajthatsz egy %EVADE% akciót.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Nimi Chireen":
           text: """Amikor végrehajtasz egy támadást, ha a védekező kezdeményező értéke magasabb, mint a tiéd, 1 üres eredményt %FOCUS% eredményre cserélhetsz.<br><strong>Weapon Hardpoint:</strong> Felszerelhetsz 1&nbsp;%CANNON%, %TORPEDO% vagy %MISSILE% fejlesztést."""
        "Merl Cobben":
           text: """Amikor egy baráti hajó 0-2-es távolságban végrehajt egy elsődleges támadást, ha benne vagy a védekező %BULLSEYEARC% ívében, a védekező 1-gyel kevesebb védekezőkockával dob.<br><strong>Refined Gyrostabilizers:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% vagy %ROTATEARC% akciót."""
        "Seftin Vanik":
           text: """Miután végrehajtasz egy %BOOST% akciót, átadhatsz 1 %EVADE% jelzőt egy baráti hajónak 1-es távolságban.<br><strong>Refined Gyrostabilizers:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% vagy %ROTATEARC% akciót."""
        "Suralinda Javos":
           text: """Miután részlegesen végrehajtasz egy manővert, kaphatsz 1 'strain' jelzőt, hogy elforgasd a hajód 90 vagy 180 fokkal.<br><strong>Refined Gyrostabilizers:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% vagy %ROTATEARC% akciót."""
        "Wrobie Tyce":
           text: """Miután védekezel 1-es távolságú támadás ellen, ha a támadó módosította a kockáit, a támadó kap 1 'delpete' jelzőt.<br><strong>Refined Gyrostabilizers:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% vagy %ROTATEARC% akciót."""
        "Agent Terex":
           text: """<strong>Felhelyezés:</strong> A hajók felhelyezése után válassz, bármennyi felszerelt %ILLICIT% fejlesztésed felszerelheted baráti TIE/fo vagy TIE/sf hajókra. Minden hajó csaj 1 %ILLICIT% fejlesztést kaphat ezen a módon.<br><strong>Játék vége:</strong> Tegyél vissza minden %ILLICIT% fejlesztést az eredeti hajóra."""
        "Commander Malarus (Xi Shuttle)":
           display_name: """Commander Malarus"""
           text: """Amikor egy baráti hajó 0-2-es távolságban végrehajt egy elsődleges támadást, a kocka módosítás lépés előtt, ha 1 vagy több üres eredménye van, a hajó kötelezően kap 1 'strain' jelzőt, hogy újradobjon 1 üres eredményt, ha tud."""
        "Gideon Hask (Xi Shuttle)":
           display_name: """Gideon Hask"""
           text: """Amikor te vagy egy baráti kis hajó 0-2-es távolságban végrehajt egy elsődleges támadást sérült védekező ellen, ha a támadó 2 vagy kevesebb támadókockával dobott, kaphat 1 'strain' jelzőt, hogy dobjon 1 további kockával."""
        "Loyalist Volunteer":
           text: """<strong>Twin Ion Engines:</strong> Hagyd figyelmen kívül a 'TIE' megkötést a fejlesztés kártyákon."""
        "Shadow Squadron Escort":
           text: """<strong>Twin Ion Engines:</strong> Hagyd figyelmen kívül a 'TIE' megkötést a fejlesztés kártyákon."""
        "Wilhuff Tarkin":
           text: """A Rendszer fázis alatt választhatsz egy bemért objektumot 1-es távolságban. Másik baráti hajó 1-3-as távolságban rátehet egy bemérőt arra az objektumra. <br><strong>Twin Ion Engines:</strong> Hagyd figyelmen kívül a 'TIE' megkötést a fejlesztés kártyákon."""
        '"Klick"':
           text: """Amikor egy hajó amit bemértél 1-3-as távolságban védekezik vaqy végrehajt egy támadást, elkölthetsz 1 %CHARGE% jelzőt, hogy megakadályozd a távolság bónusz alkalmazását.<br><strong>Twin Ion Engines:</strong> Hagyd figyelmen kívül a 'TIE' megkötést a fejlesztés kártyákon."""
        '"Contrail"':
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha a felfedett manővered iránya megegyezik az ellenséges hajóéval, az ellenséges hajó 1 %FOCUS% eredményét üres eredményre változtathatod.<br><strong>Twin Ion Engines:</strong> Hagyd figyelmen kívül a 'TIE' megkötést a fejlesztés kártyákon."""
        '"Odd Ball" (V-Wing)':
           display_name: """“Odd Ball”"""
           text: """Miután teljesen végrehajtottál egy piros manővert vagy végrehajtottál egy piros akciót, ha van egy ellenséges hajó a %BULLSEYEARC% ívedben, feltehetsz rá egy bemérőt.<br><strong>Twin Ion Engines:</strong> Hagyd figyelmen kívül a 'TIE' megkötést a fejlesztés kártyákon."""
        "Boba Fett (Separatist)":
           display_name: """Boba Fett"""
           text: """Amikor védekezel, ha nincs másik baráti hajó 0-2-es távolságban, 1 üres eredményed %FOCUS% eredményre változtathatsz."""
        "Zam Wesell":
           text: """<strong>Felhelyezés:</strong> Használj el 2 %CHARGE% jelzőt.<br>A Rendszer fázis alatt magadhoz rendelhetsz 1 titkos állapotkártyádat lefordítva: <strong>You Should Thank Me</strong> vagy <strong>You'd Better Mean Business.</strong>"""
        "Jango Fett":
           text: """Amikor védekezel vagy végrehajtasz egy elsődleges támadást, ha a felfedett manővered nehézsége kisebb, mint az ellenséges hajónak, megváltoztathatod az ellenséges hajó 1 %FOCUS% eredményét üresre."""
        "Hera Syndulla (B-Wing)":
           display_name: """Hera Syndulla"""
           text: """Amikor egy másik baráti hajó 1-2-es távolságban védekezik vagy végrehajt egy támadást, a kocka módosítás lépés alatt átadhatsz 1 %FOCUS%, %EVADE% vagy bemérő jelzőt annak a hajónak."""
        "Netrem Pollard":
           text: """Miután orsózol, választhatsz egy nem stresszes baráti hajót 0-1-es távolságban. Az a hajó kap 1 stressz jelzőt, majd forgasd el magad 180 fokkal."""
        "Hera Syndulla (A-Wing)":
           display_name: """Hera Syndulla"""
           text: """Amikor egy másik baráti hajó 1-2-es távolságban védekezik vagy végrehajt egy támadást, a kocka módosítás lépés alatt átadhatsz 1 %FOCUS%, %EVADE% vagy bemérő jelzőt annak a hajónak.<br><strong>Vectored Thrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% akciót."""
        "Wedge Antilles (A-Wing)":
           display_name: """Wedge Antilles"""
           text: """Amikor végrehajtasz egy elsődleges támadást, ha a védekező benne van a %FRONTARC% ívedben, a védekező 1-gyel kevesebb védekezőkockával dob. <br><strong>Vectored Thrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% akciót."""
        "Sabine Wren (A-Wing)":
           display_name: """Sabine Wren"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha a támadási távolság 1 és benne vagy az ellenség %FRONTARC% ívében, megváltoztathatsz 1 eredményt %EVADE% vagy %HIT% eredményre. <br><strong>Vectored Thrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% akciót."""
        "Derek Klivian":
           text: """Miután kapsz vagy elköltesz egy bemérőt, levehetsz egy piros jelződ magadról. <br><strong>Vectored Thrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% akciót."""
        "Ahsoka Tano (A-Wing)":
           display_name: """Ahsoka Tano"""
           text: """Miután végrehajtasz egy manővert, választhatsz egy baráti hajót 1-2-es távolságban és költs el 2 %FORCE% jelzőt. Az a hajó végrehajthat egy akciót akár stresszesen is. <br><strong>Vectored Thrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% akciót."""
        "Shara Bey (A-Wing)":
           display_name: """Shara Bey"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, elköltheted az ellenfeledre tett bemérés jelződet, hogy hozzáadj 1&nbsp;%FOCUS% eredményt dobásodhoz. <br><strong>Vectored Thrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BOOST% akciót."""
        "Darth Vader (TIE Defender)":
           display_name: """Darth Vader"""
           text: """Csak támadáshoz költhetsz %FORCE% jelzőt. <br>Amikor végrehajtasz egy támadást, elkölthetsz 1 %FORCE% jelzőt, hogy 1 üres eredményt %HIT% eredményre változtass. <br><strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Captain Dobbs":
           text: """Amikor egy másik baráti hajó 0-1 távolságban védekezik, az 'Eredmények semlegesítése' lépés előtt, ha benne vagy a támadási tűzívben és nem vagy ionizálva, kaphatsz 1 ion jelzőt, hogy semlegesíts 1 %HIT% eredményt.<br><strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Vult Skerris":
           text: """<strong>Akció:</strong> Kapsz 1 'strain' jelzőt, hogy visszatölts 1 %CHARGE% jelzőt.<br>Mielőtt rád kerülne a sor az Ütközet fázisban, elkölthetsz 1 %CHARGE% jelzőt, hogy végrehajts egy akciót.<br><strong>Full Throttle:</strong> Miután teljesen végrehajtasz egy 3-5 sebességű manővert, végrehajthatsz egy %EVADE% akciót."""
        "Vult Skerris (TIE Interceptor)":
           display_name: """Vult Skerris"""
           text: """<strong>Akció:</strong> Kapsz 1 'strain' jelzőt, hogy visszatölts 1 %CHARGE% jelzőt.<br>Mielőtt rád kerülne a sor az Ütközet fázisban, elkölthetsz 1 %CHARGE% jelzőt, hogy végrehajts egy akciót.<br><strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Gideon Hask (TIE Interceptor)":
           display_name: """Gideon Hask"""
           text: """Amikor végrehajtasz egy támadást sérült védekező ellen, dobj 1-gyel több támadókockával<br><strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Commandant Goran":
           text: """Miután egy baráti hajó 0-3-as távolságban a tiedénél alacsonyabb kezdeményezéssel részelgesen végrehajt egy manővert, végrehajthat egy piros %FOCUS% akciót.<br><strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Nash Windrider":
           text: """Az Ütközet fázisban, miután egy baráti kis hajó 0-3-as távolságban megsemmisül, ha az a hajó nem támadott még ebben a fázisban, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, az a hajó ebben a kezdeményezés körben támad.<br><strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Ciena Ree":
           text: """Miután végrehajtasz egy támadást, ha a védekező megsemmisült, kapsz 1 stressz jelzőt.<br><strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Lieutenant Lorrir":
           text: """Amikor orsózol, a (%BANKLEFT% vagy %BANKRIGHT%) sablonokat <b>kell</b> használnod.<br><strong>Autothrusters:</strong> Miután végrehajtasz egy akciót, végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Kanan Jarrus (HWK-290)":
           display_name: """Kanan Jarrus"""
           text: """Amikor te vagy egy hajó a %SINGLETURRETARC% ívedben védekezik, elkölthetsz 1 %FORCE% jelzőt. Ha így teszel a támadó 1-gyel kevesebb támadókockával dob."""
        "Tápusk":
           text: """A vége fázis alatt, mielőtt egy ellenséges hajó a %SINGLETURRETARC% ívedben visszaállít 1 visszatöltődő %CHARGE% vagy %FORCE% jelzőt, elkölthetsz 2 %CHARGE% jelzőt. Ha így teszel az a hajó nem tölti vissza azt a %CHARGE% vagy %FORCE% jelzőt."""
        "Gamut Key":
           text: """A Vége fázis elején elkölthetsz 2 %CHARGE% jelzőt, hogy válasszd magad vagy egy hajót a %SINGLETURRETARC% ívedben 1 vagy több kör alakú jelzővel. A Vége fázis alatt ezek a kör alakú jelzők nem kerülnek le a hajóról."""
        "Arliz Hadrassian":
           text: """Amikor végrehajtasz egy %FRONTARC% támadást, ha sérült vagy, a kocka módosítás lépés előtt változthatsz egy %FOCUS% eredményt %CRIT% eredményre.<br>Amikor védekezel, ha sérült vagy, 1 %FOCUS% eredményed üresre <b>kell</b> változtass."""
        "Leema Kai":
           text: """Mielőtt rád kerül a sor az Ütközet fázisban , ha nem vagy egy ellenséges hajó %FRONTARC% ívében sem, tehetsz egy bemérőt egy ellenséges hajóra a %FULLFRONTARC% ívedben."""
        "Padric":
           text: """Miután egy baráti eszköz amit bemértél, felrobban, az eszköztől 0-1-es távolságban lévő minden ellenséges hajó kap 1 'strain' jelzőt."""
        "New Republic Patrol":
           text: """%LINEBREAK%<strong>Intuitive Interface:</strong> Miután végrehajtasz egy olyan akciót, amelyet %TALENT%, %ILLICIT% vagy %MODIFICATION% fejlesztés adott az akciósávodhoz, végrehajthatsz egy %CALCULATE% akciót."""
        "Kijimi Spice Runner":
           text: """%LINEBREAK%<strong>Intuitive Interface:</strong> Miután végrehajtasz egy olyan akciót, amelyet %TALENT%, %ILLICIT% vagy %MODIFICATION% fejlesztés adott az akciósávodhoz, végrehajthatsz egy %CALCULATE% akciót."""
        "Corus Kapellim":
           text: """Mielőtt rád kerül a sor az Ütközet fázisban, választhatsz 1 hajót a tűzívedben, 0-1-es távolságban. Ha így teszel, tegyél át 1 zöld jelzőt arról a hajóról a magadra.<br><strong>Intuitive Interface:</strong> Miután végrehajtasz egy olyan akciót, amelyet %TALENT%, %ILLICIT% vagy %MODIFICATION% fejlesztés adott az akciósávodhoz, végrehajthatsz egy %CALCULATE% akciót."""
        "C'ai Threnalli (Y-Wing)":
           display_name: """C'ai Threnalli"""
           text: """Miután teljesen végrehajtasz egy manővert, ha átmozogsz egy baráti hajón, végrehajthatsz egy %EVADE% akciót.<br><strong>Intuitive Interface:</strong> Miután végrehajtasz egy olyan akciót, amelyet %TALENT%, %ILLICIT% vagy %MODIFICATION% fejlesztés adott az akciósávodhoz, végrehajthatsz egy %CALCULATE% akciót."""
        "Lega Fossang":
           text: """Amikor végrehajtasz egy elsődleges vagy %TURRET% támadást, újradobhatsz 1 támadó kockát minden baráti eszköz vagy %CALCULATE% jelzővel rendelkező baráti hajó után a támadási tűzívben.<br><strong>Intuitive Interface:</strong> Miután végrehajtasz egy olyan akciót, amelyet %TALENT%, %ILLICIT% vagy %MODIFICATION% fejlesztés adott az akciósávodhoz, végrehajthatsz egy %CALCULATE% akciót."""
        "Shasa Zaro":
           text: """Miután védekeztél, választhatsz egy baráti hajót a %FULLREARARC% ívedben 0-2-es távolságban és választhatsz 1 zöld jelölőd. Ha így teszel, az a hajó kap egy ilyen jelölőt.<br><strong>Intuitive Interface:</strong> Miután végrehajtasz egy olyan akciót, amelyet %TALENT%, %ILLICIT% vagy %MODIFICATION% fejlesztés adott az akciósávodhoz, végrehajthatsz egy %CALCULATE% akciót."""
        "Teza Nasz":
           text: """Amikor egy baráti hajó 0-2-es távolságban végrehajt egy támadást, ha a védekezőnek van baráti hajója a támadó mindkét oldalsó ívében (%LEFTARC% vagy %RIGHTARC%), a támadó újradobhatja 1 támadókockáját.<br><strong>Intuitive Interface:</strong> Miután végrehajtasz egy olyan akciót, amelyet %TALENT%, %ILLICIT% vagy %MODIFICATION% fejlesztés adott az akciósávodhoz, végrehajthatsz egy %CALCULATE% akciót."""
        "Wilsa Teshlo":
           text: """Miután végrehajtasz egy támadást, ha a védekező kap egy felfordított sérüléskártyát, a védekező kap 1 'strain' jelzőt, hacsak nem dobja el egy felszerelt nem újratölthető %CHARGE% jelölőjét.<br><strong>Intuitive Interface:</strong> Miután végrehajtasz egy olyan akciót, amelyet %TALENT%, %ILLICIT% vagy %MODIFICATION% fejlesztés adott az akciósávodhoz, végrehajthatsz egy %CALCULATE% akciót."""
        "Aftab Ackbar":
           text: """Miután végrehajtasz egy piros alap manővert, ha pontosan 1 stressz jelződ van, kaphatsz 1 'strain' jelzőt, hogy levedd a stress jelzőt.<br><strong>Intuitive Interface:</strong> Miután végrehajtasz egy olyan akciót, amelyet %TALENT%, %ILLICIT% vagy %MODIFICATION% fejlesztés adott az akciósávodhoz, végrehajthatsz egy %CALCULATE% akciót."""
        "Zorii Bliss":
           text: """Miután egy hajó 1-es távolságban végrehajt egy akciót annak Akció végrehajtása lépésében, ha az az akció rajta van a te akciósávodon, elkölthetsz 1 %CHARGE% jelzőt, hogy végrehajtsd azt az akciót pirosként kezelve.<br><strong>Intuitive Interface:</strong> Miután végrehajtasz egy olyan akciót, amelyet %TALENT%, %ILLICIT% vagy %MODIFICATION% fejlesztés adott az akciósávodhoz, végrehajthatsz egy %CALCULATE% akciót."""
        "Kylo Ren (TIE Whisper)":
           display_name: """Kylo Ren"""
           text: """Mielőtt egy ellenséges hajó a %BULLSEYEARC% ívedben egy lefordított sérülés kártyát kap, elkölthetsz 1 %FORCE% jelzőt. Ha így teszel, azt a sérülés kártyát felfordítva kapja meg.<br><strong>Heavy Weapon Turret:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %MISSILE% fejlesztésed %FRONTARC% követelményét úgy <b>kell</b> kezelned mintha %SINGLETURRETARC% lenne."""
        '"Wrath"':
           text: """Miután végrehajtasz egy %BULLSEYEARC% támadást, ha van 1 vagy több nem bemérő piros vagy narancs jelződ, végrehajthatsz egy bónusz támádást egy másik célpont ellen.<br><strong>Heavy Weapon Turret:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %MISSILE% fejlesztésed %FRONTARC% követelményét úgy <b>kell</b> kezelned mintha %SINGLETURRETARC% lenne."""
        '"Nightfall"':
           text: """Miután teljesen végrehajtasz egy manővert vagy egy %BOOST% akciót, minden hajó amin átmozogtál kap 2 zavarás jelzőt.<br><strong>Heavy Weapon Turret:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %MISSILE% fejlesztésed %FRONTARC% követelményét úgy <b>kell</b> kezelned mintha %SINGLETURRETARC% lenne."""
        '"Whirlwind"':
           text: """Mielőtt rád kerül a sor az Ütközet fázisban, bármennyi zavarás jelzőt levehetsz magadról, hogy kaphass 1 %FOCUS% jelzőt minden ellenséges hajó után, amelynek benne vagy a %FRONTARC% ívében.<br><strong>Heavy Weapon Turret:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %MISSILE% fejlesztésed %FRONTARC% követelményét úgy <b>kell</b> kezelned mintha %SINGLETURRETARC% lenne."""
        "709th Legion Ace":
           text: """%LINEBREAK%<strong>Heavy Weapon Turret:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %MISSILE% fejlesztésed %FRONTARC% követelményét úgy <b>kell</b> kezelned mintha %SINGLETURRETARC% lenne."""
        "Red Fury Zealot":
           text: """%LINEBREAK%<strong>Heavy Weapon Turret:</strong> A %SINGLETURRETARC% jelződet csak %FRONTARC% vagy %REARARC% irányba forgathatod. A felszerelt %MISSILE% fejlesztésed %FRONTARC% követelményét úgy <b>kell</b> kezelned mintha %SINGLETURRETARC% lenne."""
        "Sienar-Jaemus Test Pilot":
           text: """%LINEBREAK%<strong>Pursuit Thrusters:</strong> A Rendszer fázis alatt végrehajthatsz egy %BOOST% akciót."""
        "First Order Cadet":
           text: """%LINEBREAK%<strong>Pursuit Thrusters:</strong> A Rendszer fázis alatt végrehajthatsz egy %BOOST% akciót."""
        '"Grudge"':
           text: """Amikor egy baráti bombája vagy aknája 0-2-es tá olságban felrobban, minannyiszor, ha támadókocka dobás történik annak hatása által, 1 kockát újradobhatsz.<br><strong>Pursuit Thrusters:</strong> A Rendszer fázis alatt végrehajthatsz egy %BOOST% akciót."""
        '"Dread"':
           text: """Miután újratöltesz, minden hajó a %BULLSEYEARC% ívedben kap 1 'deplete' jelzőt. <br><strong>Pursuit Thrusters:</strong> A Rendszer fázis alatt végrehajthatsz egy %BOOST% akciót."""
        '"Scorch" (TIE/Se Bomber)':
           display_name: '''"Scorch"'''
           text: """Amikor egy baráti hajó 0-1-es távolságban végrehajt egy elsődleges támadást, elkölthet 1 %HIT% eredményt. Ha így tesz, a védekező a védekezés után kap 1 'strain' jelzőt.<br><strong>Pursuit Thrusters:</strong> A Rendszer fázis alatt végrehajthatsz egy %BOOST% akciót."""
        '"Breach"':
           text: """Miután teljesen végrehajtasz egy manővert vagy végrehajtasz egy  %BOOST% akciót, ha átmozogtál egy ellenséges hajót, feltehetsz rá egy bemérőt.<br><strong>Pursuit Thrusters:</strong> A Rendszer fázis alatt végrehajthatsz egy %BOOST% akciót."""
        "Fenn Rau (Rebel Fang)":
           display_name: """Fenn Rau"""
           text: """Mielőtt egy baráti hajóra kerül a sor az az Ütközet fázisban 1-2-es távolságban, ha van ellenséges hajó annak %FRONTARC% ívében 1-es távolságban, az a baráti hajó levehet 1 nem-bemérő piros jelzőt.<br><strong>Concordia Faceoff:</strong> Amikor védekezel, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% ívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "Bodica Venj":
           display_name: """Bodica Venj"""
           text: """Miután másik baráti hajó védekezik, ha nincs 'deplete' jelződ, végrehajthatsz egy bónusz elsődleges támadást a támadó ellen. Ha így teszel, miután végrehajtottad a támadást, kapsz 1 'deplete' jelzőt.<br><strong>Concordia Faceoff:</strong> Amikor védekezel, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% ívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "Dirk Ullodin":
           display_name: """Dirk Ullodin"""
           text: """Miután teljesen végrehajtasz egy piros manővert vagy piros akciót, feltehetsz egy bemérőt egy ellenséges hajóra a %FRONTARC% ívedben 1-es távolságban.<br><strong>Concordia Faceoff:</strong> Amikor védekezel, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% ívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "Clan Wren Volunteer":
           display_name: """Clan Wren Volunteer"""
           text: """Amikor végrehajtasz egy támadást 1-es távolságban, ha a manővered sebessége megegyezik az 1-es távolságban lévő baráti hajó sebességével, újradobhatsz 1 támadókockát<br><strong>Concordia Faceoff:</strong> Amikor védekezel, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% ívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "Mandalorian Royal Guard":
           display_name: """Mandalorian Royal Guard"""
           text: """Amikor egy baráti nem-kistalpas hajó védekezik, ha a támadási ívben vagy, kaphatsz 1 'deplete' és 1 'strain' jelzőt. Ha így teszel, a védekező megváltoztathat 1 eredményt %EVADE% eredményre.<br><strong>Concordia Faceoff:</strong> Amikor védekezel, ha a támadás 1-es távolságban történik és benne vagy a támadó %FRONTARC% ívében, megváltoztathatod 1 dobás eredményed %EVADE% eredményre."""
        "ISB Jingoist":
           display_name: """ISB Jingoist"""
           text: """Mielőtt rád kerül a sor az Ütközet fázisban, választhatsz 1 ellenséges hajót a %FRONTARC% ívedben 0-1-es távolságban. Ha így teszel, az a hajó kap 1 'deplete' vagy 'strain' jelzőt választásod szerint, hacsak nem dönt úgy, hogy levesz 1 zöld jelzőt."""
        "Moff Gideon":
           display_name: """Moff Gideon"""
           text: """Amikor egy ellenséges hajó 1-3-as távolságban védekezik, mielőtt a támadókockákkal dobnátok, elkölthetsz 1 %CHARGE% jelzőt, hogy válassz egy baráti hajót a védekezőtől 0-1-es távolságra. Ha így teszel a védekező kockák nem módosítható ezen támadás alatt és a kiválasztott baráti hajó kap 1 'strain' jelzőt."""
        "Maul":
           display_name: """Maul"""
           text: """Amikor végrehajtasz egy %COORDINATE% akciót, ha a kiválasztott hajó kezdeményező értéke kisebb, mint a tied, elkölthetsz 1 %FORCE% jelzőt. Ha így teszel, kezeld az akciót fehérként és koordinálhatsz 1 további baráti hajót, aminek a kezdeményező értéke kisebb, mint a tied. Minden így koordinált baráti hajó kap 1 'strain' jelzőt."""
        "Bo-Katan Kryze":
           display_name: """Bo-Katan Kryze"""
           text: """Mielőtt egy baráti hajó 0-2-es távolságban aktiválódik, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, az a hajó kaphat 1 'strain' jelzőt, hogy levegyen 1 nem-stressz piros vagy narancs jelzőt."""
        "Bo-Katan Kryze (Republic)":
           display_name: """Bo-Katan Kryze"""
           text: """Miután teljesen végrehajtasz egy manővert, kaphatsz 1 'deplete' jelzőt, hogy válassz egy objektumot a %FRONTARC% ívedben 1-2-es távolságban. Ha így teszel, egy másik baráti hajó vélrehajthat egy %LOCK% akciót, hogy bemérje azt az objektumot."""
        "Captain Hark":
           display_name: """Captain Hark"""
           text: """Miután felfedsz egy [0 %STOP%] manővert, ha fel vagy szerelve <b>Swivel Wings (Down)</b> fejlesztéssel, helyette végre <b>kell</b> hajtanod egy [1 %BANKLEFT%] vagy [1 %BANKRIGHT%] oldalazó manővert hasonló nehézségben. Miután végrehajtottad a manővert meg <b>kell</b> fordítanod a <b>Swivel Wings (Down)</b> kártyát."""
        "Gar Saxon":
           display_name: """Gar Saxon"""
           text: """Amikor egy baráti egység 0-2 távolságban végrehajt egy elsődleges támadást, ha a támadó benne van a védekező %REARARC% ívében, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, a támadó 1-gyel több támadókockával dob."""
        "Pre Vizsla":
           display_name: """Pre Vizsla"""
           text: """Amikor végrehajtasz egy támadást, ha a védekező kezdeményező értéke egyenlő vagy naegyobb mint a tiéd, elkölthetsz 2 %CHARGE% jelzőt, hogy 1-gyel több támadókockával dobj."""
        "Rook Kast":
           display_name: """Rook Kast"""
           text: """Mielőtt sorra került az Ütközet fázisban, kaphatsz 1 'strain' jelzőt. Amikor végrehajtasz egy elsődleges támadást, ha van 'strain' jelződ, 1 üres vagy %FOCUS% eredményt %HIT% eredményre változtathatsz."""
        "Ezra Bridger (Gauntlet Fighter)":
           display_name: """Ezra Bridger"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha stresszes vagy elkölthetsz 1 %FORCE% jelzőt, hogy megváltoztass akár 2 %FOCUS% eredményt %EVADE% vagy %HIT% eredményre."""
        '"Chopper" (Gauntlet Fighter)':
           display_name: """Chopper"""
           text: """Az Ütközet fázis elején minden ellenséges hajó 0-ás távolságban kap 2 zavaró jelzőt."""
        "The Mandalorian":
           display_name: """The Mandalorian"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha benne vagy 2 vagy több ellenséges hajó %FRONTARC% ívében 1-2-es távolságban, 1 üres eredményedet %FOCUS% eredményre változtathatod."""
        "Q9-0":
           display_name: """Q9-0"""
           text: """Miután teljesen végrehajtottál egy összetett manővert, végrehajthatsz egy %CALCULATE% vagy %BARRELROLL% akciót, akár stresszesen is. Ha így teszelm kapsz 1 'strain' jelzőt."""
        "Guild Bounty Hunter":
           display_name: """Guild Bounty Hunter"""
           text: """Amikor végrehajtasz egy támadást 1-2-es távolságban, elkölthetsz 1 nem-újratölthető %CHARGE% jelzőt 1 felszerelt %ILLICIT% fejlesztésedről, hogy 1 %FOCUS% eredményt %CRIT% eredményre változtass."""

        # Epic Ships
        "Republic Judiciary":
           display_name: """Republic Judiciary"""
           text: """<i class = flavor_text>The Galactic Republic uses small, swift warships such as the CR90 corvette to respond rapidly to Separatist incursions across the galaxy.</i> <br> <strong>Broadside Batteries:</strong> You can acquire locks and perform primary attacks at range 1-4."""
        "Alderaanian Guard":
           display_name: """Alderaanian Guard"""
           text: """<i class = flavor_text>A craft used since before the Clone Wars, the CR90 corvette is favored by the Royal House of Alderaan for its versatility.</i> <br> <strong>Broadside Batteries:</strong> You can acquire locks and perform primary attacks at range 1-4."""
        "Outer Rim Patrol":
           display_name: """Outer Rim Patrol"""
           text: """<i class = flavor_text>The <untalic>Raider</untalic>-class corvette is one of the Empire's smallest warships, often used for reconnaissance missions, surgical strikes, or suppressing enemy starfighters with its powerful ordnance.</i> <br> <strong>Concentrated Batteries:</strong> While you perform a primary, %TORPEDO%, or %MISSILE% attack, if the defender is in your %BULLSEYEARC%, roll 1 additional die."""
        "First Order Collaborators":
           display_name: """First Order Collaborators"""
           text: """<i class = flavor_text>The First Order's supporters make use of former Imperial vessels, such as the <untalic>Raider</untalic>-class corvette. Though it has outlived the regime that created it, this craft still spreads terror across the galaxy.</i> <br> <strong>Concentrated Batteries:</strong> While you perform a primary, %TORPEDO%, or %MISSILE% attack, if the defender is in your %BULLSEYEARC%, roll 1 additional die."""
        "Echo Base Evacuees":
           display_name: """Echo Base Evacuees"""
           text: """<i class = flavor_text>The GR-75 medium transport acquitted itself well at battles such as the evacuation of Hoth, where several of these ships were pivotal to the Rebel forces' escape.</i> <br> <strong>Resupply Craft:</strong> After another friendly ship at range 0-1 performs an action, you may spend 1 %ENERGY%. If you do, it removes 1 orange or red token, or recovers 1 shield."""
        "New Republic Volunteers":
           display_name: """New Republic Volunteers"""
           text: """<i class = flavor_text>In use since the Galactic Civil War, groups within the New Republic still utilize the GR-75 medium transport for supply and aid missions.</i> <br> <strong>Resupply Craft:</strong> After another friendly ship at range 0-1 performs an action, you may spend 1 %ENERGY%. If you do, it removes 1 orange or red token, or recovers 1 shield."""
        "Outer Rim Garrison":
           display_name: """Outer Rim Garrison"""
           text: """<i class = flavor_text>Capable of carrying TIE fighters and operating independently for long periods of time, the <untalic>Gozanti</untalic>-class cruiser is a common sight in the skies of downtrodden worlds across the Outer Rim.</i> <br> <strong>Docking Clamps:</strong> You can dock up to 4 small ships."""
        "First Order Sympathizers":
           display_name: """First Order Sympathizers"""
           text: """<i class = flavor_text>The First Order's swift rise to power rests upon ruthless innovation. However, sympathizers often repurpose Imperial designs, like the venerable <untalic>Gozanti</untalic>-class cruiser, in surveillance and patrol operations.</i> <br> <strong>Docking Clamps:</strong> You can dock up to 4 small ships."""
        "Separatist Privateers":
           display_name: """Separatist Privateers"""
           text: """<i class = flavor_text>The Separatist Alliance makes use of all manner of unsavory contacts in its fight against the Galactic Republic, including corsairs and criminal cartels.</i> <br> <strong>Overdrive Burners:</strong> While you defend, if your revealed maneuver is speed 3-5, roll 1 additional defense die."""
        "Syndicate Smugglers":
           display_name: """Syndicate Smugglers"""
           text: """<i class = flavor_text>Vessels like the C-ROC Cruiser allow criminal operations across the Outer Rim to move massive amounts of illicit materials, or project power that can bully small colonies into compliance.</i> <br> <strong>Overdrive Burners:</strong> While you defend, if your revealed maneuver is speed 3-5, roll 1 additional defense die."""

    upgrade_translations =
        "0-0-0":
           display_name: """0-0-0"""
           text: """<i>Söpredék vagy Darth Vader a csapatban</i><br>Az Ütközet fázis elején, kiválaszthatsz 1 ellenséges hajót 0-1-es távolságban. Ha így teszel, kapsz egy kalkuláció jelzőt, hacsak a hajó nem választja, hogy kap 1 stressz jelzőt."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """<i>csak Söpredék</i><br>Amikor végrehajtasz egy támadást, a támadókockák eldobása után, megnevezhetsz egy zöld jelző típust. Ha így teszel, kapsz 2 ion jelzőt és ezen támadás alatt a védekező nem költheti el a megnevezett típusú jelzőt."""
        "Andrasta":
           display_name: """Andrasta"""
           text: """<i>csak Söpredék</i><br><i>Kapott akció %RELOAD%</i><br>Kapsz egy %DEVICE% fejlesztés helyet."""
        "Dauntless":
           display_name: """Dauntless"""
           text: """<i>csak Birodalom</i><br>Miután részlegesen hajtottál végre egy manővert, végrehajthatsz 1 fehér akciót pirosként kezelve."""
        "Ghost":
           display_name: """Ghost"""
           text: """<i>csak Lázadók</i><br>Bedokkoltathatsz 1 Attack shuttle-t vagy Sheathipede-class shuttle-t. A dokkolt hajót csak a hátsó pöcköktől dokkolhatod ki."""
        "Havoc":
           display_name: """Havoc"""
           text: """<i>csak Söpredék</i><br>Elveszted a %CREW% fejlesztés helyet. Kapsz egy %SENSOR% és egy %ASTROMECH% fejlesztés helyet."""
        "Hound's Tooth":
           display_name: """Hound’s Tooth"""
           text: """<i>csak Söpredék</i><br>1 Z-95-AF4 headhunter bedokkolhat."""
        "IG-2000":
           display_name: """IG-2000"""
           text: """<i>csak Söpredék</i><br>Megkapod minden másik <strong>IG-2000</strong> fejlesztéssel felszerelt baráti hajó pilóraképességét."""
        "Marauder":
           display_name: """Marauder"""
           text: """<i>csak Söpredék</i><br>Amikor végrehajtasz egy elsődleges %REARARC% támadást, újradobhatsz 1 támadókockádat. Kapsz egy %GUNNER% fejlesztés helyet."""
        "Millennium Falcon":
           display_name: """Millennium Falcon"""
           text: """<i>csak Lázadók</i><br><i>Kapott akció %EVADE%</i><br>Amikor védekezel, ha van kitérés jelződ, újradobhatsz 1 védekezőkockát."""
        "Mist Hunter":
           display_name: """Mist Hunter"""
           text: """<i>csak Söpredék</i><br><i>Kapott akció %BARRELROLL%</i><br>Kapsz egy %CANNON% fejlesztés helyet."""
        "Moldy Crow":
           display_name: """Moldy Crow"""
           text: """<i>csak Lázadók vagy Söpredék</i><br>Kapsz egy %FRONTARC% elsődleges fegyvert 3-as támadóértékkel. A Vége fázis alatt megtarthatsz maximum 2 fókusz jelzőt."""
        "Outrider":
           display_name: """Outrider"""
           text: """<i>csak Lázadók</i><br>Amikor végrehajtasz egy támadást ami egy akadály által akadályozott, a védekező 1-gyel kevesebb védekezőkockával dob. Miután teljesen végrehajtasz egy manővert, ha áthaladtál vagy átfedésbe kerültél egy akadállyal, levehetsz 1 piros vagy narancs jelződet."""
        "Phantom":
           display_name: """Phantom"""
           text: """<i>csak Lázadók</i><br>Be tudsz dokkolni 0-1 távolságból."""
        "Punishing One":
           display_name: """Punishing One"""
           text: """<i>csak Söpredék</i><br>Amikor végrehajtasz egy elsődleges támadást, ha a védekező benne van a %FRONTARC% ívedben, dobj 1-gyel több támadókockával. Elveszted a %CREW% fejlesztés helyet. Kapsz egy %ASTROMECH% fejlesztés helyet."""
        "ST-321":
           display_name: """ST-321"""
           text: """<i>csak Birodalom</i><br>Amikor végrehajtasz egy %COORDINATE% akciót, kiválaszthatsz egy ellenséges hajót 0-3-as távolságban a koordinált hajótól. Ha így teszel, tegyél fel egy bemérőt arra az ellenséges hajóra figyelmen kívül hagyva a távolság megkötéseket."""
        "Scimitar":
           display_name: """Scimitar"""
           text: """<i>Kapott akció: <r>%CLOAK%</r> , %JAM%</i><br><i>csak Szeparatisták</i><br><strong>Felhelyezés:</strong> A Hajók felhelyezése lépés után álcázhatod magad.<br>Miután kijössz az álcázásból, kiválaszthatsz egy ellenséges hajót a %BULLSEYEARC% ívedben. Ha így teszel, az kap 1 zavarás jelzőt."""
        "Shadow Caster":
           display_name: """Shadow Caster"""
           text: """<i>csak Söpredék</i><br>Miután végrehajtasz egy támadást ami talál, ha a védekező benne van a %SINGLETURRETARC% és %FRONTARC% ívedben is, a védekező kap 1 vonósugár jelzőt."""
        "Slave I":
           display_name: """Slave I"""
           text: """<i>csak Söpredék</i><br>Miután felfedtél egy kanyar (%TURNLEFT% vagy %TURNRIGHT%) vagy ív (%BANKLEFT% vagy %BANKRIGHT%) manővert, átforgathatod a tárcsádat az ellenkező irányba megtartva a sebességet és a mozgásformát. Kapsz egy %TORPEDO% fejlesztés helyet."""
        "Virago":
           display_name: """Virago"""
           text: """<i>Kapsz egy %MODIFICATION% fejlesztés helyet. Adj 1 pajzs értéket a hajódhoz.</i><br>A Vége fázis alatt, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy végrehajts egy piros %BOOST% akciót."""
        "Ablative Plating":
           display_name: """Ablative Plating"""
           text: """<i>közepes vagy nagy talp</i><br>Mielőtt sérülést szenvednél egy akadálytól vagy baráti bomba robbanástól, elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, megakadályozol 1 sérülést."""
        "Admiral Sloane":
           display_name: """Admiral Sloane"""
           text: """<i>csak Birodalom</i><br>Miután másik baráti hajó 0-3 távolságban védekezik, ha megsemmisül a támadó kap 2 stressz jelzőt. Amikor egy baráti hajó 0-3 távolságban végrehajt egy támadást egy stresszelt hajó ellen, 1 támadókockát újradobhat."""
        "Adv. Proton Torpedoes":
           display_name: """Adv. Proton Torpedoes"""
           text: """<strong>Támadás (%LOCK%):</strong>Támadás (%LOCK%): Költs el 1&nbsp;%CHARGE% jelzőt. Változtass 1&nbsp;%HIT% eredményt %CRIT% eredményre."""
        "Advanced SLAM":
           display_name: """Advanced SLAM"""
           text: """<i>Követelmény: %SLAM%</i><br>Miután végrehajtasz egy %SLAM% akciót, ha teljesen végrehajtod azt a manővert, végrehajthatsz egy fehér akciót az akciósávodról pirosként kezelve."""
        "Advanced Sensors":
           display_name: """Advanced Sensors"""
           text: """Miután felfeded a tárcsádat, végrehajthatsz 1 akciót. Ha így teszel, nem hajthatsz végre másik akciót a saját aktivációdban."""
        "Afterburners":
           display_name: """Afterburners"""
           text: """<i>csak kis hajó</i><br>Miután teljesen végrehajtasz egy 3-5 sebességű manővert, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy végrehajts egy %BOOST% akciót, még ha stresszes is vagy."""
        "Agent Kallus":
           display_name: """Agent Kallus"""
           text: """<i>csak Birodalom</i><br><strong>Felhelyezés:</strong> felhelyezés után rendelt hozzá a <strong>Hunted</strong> állapotkártyát 1 ellenséges hajóhoz. Amikor végrehajtasz egy támadást a <strong>Hunted</strong> állapotkártyával rendelkező hajó ellen, 1&nbsp;%FOCUS% eredményed %HIT% eredményre változtathatod."""
        "Agile Gunner":
           display_name: """Agile Gunner"""
           text: """A Vége fázisban elforgathatod a %SINGLETURRETARC% jelződet."""
        "BT-1":
           display_name: """BT-1"""
           text: """<i>Söpredék vagy Darth Vader a csapatban</i><br>Amikor végrehajtasz egy támadást, megváltoztathatsz 1&nbsp;%HIT% eredményt %CRIT% eredményre minden stressz jelző után ami a védekezőnek van."""
        "Barrage Rockets":
           display_name: """Barrage Rockets"""
           text: """<strong>Támadás (%FOCUS%):</strong> Költs el 1&nbsp;%CHARGE% jelzőt. Ha a védekező benne van a %BULLSEYEARC% ívedben, elkölthetsz 1 vagy több %CHARGE% jelzőt, hogy újradobj azzal egyenlő számú támadókockát."""
        "Baze Malbus":
           display_name: """Baze Malbus"""
           text: """<i>csak Lázadók</i><br>Amikor végrehajtasz egy %FOCUS% akciót, kezelheted pirosként. Ha így teszel minden egyes 0-1 távolságban lévő ellenséges hajó után kapsz 1 további fókusz jelzőt, de maximum 2 darabot."""
        "Bistan":
           display_name: """Bistan"""
           text: """<i>csak Lázadók</i><br>Amikor végrehajtasz egy elsődleges támadást, ha van fókusz jelződ, végrehajthatsz egy bónusz %SINGLETURRETARC% támadást egy olyan hajó ellen, akit még nem támadtál ebben a körben."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """<i>csak Söpredék</i><br><strong>Felhelyezés:</strong> tartalékban kezdesz. A Felrakási fázis végén tedd a hajód 0 távolságra egy akadálytól, de 3-as távolságon túl az ellenséges hajóktól."""
        "Bomblet Generator":
           display_name: """Bomblet Generator"""
           text: """<strong>Bomba</strong><br>A Rendszer fázisban elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy ledobd a Bomblet bombát a [1&nbsp;%STRAIGHT%] sablonnal. Az Aktivációs fázis elején elkölthetsz 1 pajzsot, hogy visszatölts 2 %CHARGE% jelzőt."""
        "Bossk":
           display_name: """Bossk"""
           text: """<i>csak Söpredék</i><br>Amikor végrehajtasz egy elsődleges támadást ami nem talál, ha nem vagy stresszes kapsz 1 stressz jelzőt, hogy végrehajts egy bónusz támadást ugyanazon célpont ellen."""
        "C-3PO":
           display_name: """C-3PO"""
           text: """<i>Kapott akció: %CALCULATE%</i><br><i>csak Lázadók</i><br>Védekezőkocka gurítás előtt, elkölthetsz 1&nbsp;%CALCULATE% jelzőt hogy hangosan tippelhess egy 1 vagy nagyobb számra. Ha így teszel és pontosan annyi %EVADE% eredményt dobsz, adjál hozzá még 1&nbsp;%EVADE% eredményt. Miután végrehajtasz a %CALCULATE% akciót, kapsz 1&nbsp;%CALCULATE% jelzőt."""
        "Cad Bane":
           display_name: """Cad Bane"""
           text: """<i>csak Söpredék</i><br>Miután ledobsz vagy kilősz egy eszközt, végrehajthatsz egy piros %BOOST% akciót."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """<i>csak Lázadók</i><br>A Rendszer fázis alatt választhatsz 1 ellenséges hajót 1-2-es távolságban. Tippeld meg hangosan manővere irányát és sebességét, aztán nézd meg a tárcsáját. Ha az iránya és sebessége egyezik a tippeddel, megváltoztathatod a saját tárcsádat egy másik manőverre."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """<i>csak Lázadók</i><br>Az Ütközet fázis elején elkölthetsz 2&nbsp;%CHARGE% jelzőt, hogy megjavíts 1 felfordított sérülés kártyát."""
        "Chewbacca (Scum)":
           display_name: """Chewbacca"""
           text: """<i>csak Söpredék</i><br>A Vége fázis elején elkölthetsz 1&nbsp;%FOCUS% jelzőt, hogy megjavíts 1 felfordított sérülés kártyát."""
        "Ciena Ree":
           display_name: """Ciena Ree"""
           text: """<i>Követelmény %COORDINATE% vagy <r>%COORDINATE%</r></i><br><i>csak Birodalom</i><br>Miután végrehajtasz egy %COORDINATE% akciót, ha a koordinált hajó végrehajt egy %BARRELROLL% vagy %BOOST% akciót, kaphat 1 stressz jelzőt, hogy elforduljon 90 fokot."""
        "Cikatro Vizago":
           display_name: """Cikatro Vizago"""
           text: """<i>csak Söpredék</i><br>A Vége fázis alatt, választhatsz 2&nbsp;%ILLICIT% fejlesztést ami baráti hajókra van felszerelve 0-1-es távolságban. Ha így teszel, megcserélheted ezeket a fejlesztéseket. A játék végén: tegyél vissza minden %ILLICIT% fejlesztést az eredeti hajójára."""
        "Cloaking Device":
           display_name: """Cloaking Device"""
           text: """<i>kis vagy közepes talp</i><br><strong>Akció:</strong> költs el 1&nbsp;%CHARGE% jelzőt, hogy végrehajts egy %CLOAK% akciót. A tervezési fázis elején dobj 1 támadó kockával. %FOCUS% eredmény esetén hozd ki a hajód álcázásból vagy vedd le az álcázás jelzőt."""
        "Cluster Missiles":
           display_name: """Cluster Missiles"""
           text: """<strong>Támadás (%LOCK%):</strong> Költs el 1&nbsp;%CHARGE% jelzőt. Ezen támadás után végrehajthatod ezt a támadást, mint bónusz támadás egy másik célpont ellen 0-1 távolságra a védekezőtől, figyelmen kívül hagyva a %LOCK% követelményt."""
        "Collision Detector":
           display_name: """Collision Detector"""
           text: """Amikor orsózol vagy gyorsítasz átmozoghatsz vagy rámozoghatsz akadályra. Miután átmozogtál vagy rámozogtál egy akadályra, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy figyelmen kívül hagyhatsd az akadály hatását a kör végéig."""
        "Composure":
           display_name: """Composure"""
           text: """<i>Követelmény <r>%FOCUS%</r> vagy %FOCUS%</i><br>Ha nem sikerül végrehajtani egy akciót és nincs zöld jelződ, végrehajthatsz egy %FOCUS% akciót. Ha így teszel, nem hajthatsz végre további akciót ebben a körben."""
        "Concussion Missiles":
           display_name: """Concussion Missiles"""
           text: """<strong>Támadás (%LOCK%):</strong> Költs el 1&nbsp;%CHARGE% jelzőt. Ha a támadás talált, a védekezőtől 0-1 távolságban lévő minden hajó felfordítja egy sérülés kártyáját."""
        "Conner Nets":
           display_name: """Conner Nets"""
           text: """<strong>Akna</strong><br>A Rendszer fázisban elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy ledobj egy Conner Net aknát a [1&nbsp;%STRAIGHT%] sablonnal. Ennek a kártyának a %CHARGE% jelzője <strong>nem</strong> újratölthető."""
        "Contraband Cybernetics":
           display_name: """Contraband Cybernetics"""
           text: """Mielőtt aktiválódnál, elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, a kör végéig végrehajthatsz akciókat és piros manővereket, akár stresszesen is."""
        "Crack Shot":
           display_name: """Crack Shot"""
           text: """Amikor végrehajtasz egy elsődleges támadást, ha a védekező benne van a %BULLSEYEARC% ívedben, még az <strong>Eredmények semlegesítése</strong> lépés előtt elkölthetsz 1&nbsp;%CHARGE% jelzőt hogy hatástalaníts 1&nbsp;%EVADE% eredményt."""
        "Daredevil":
           display_name: """Daredevil"""
           text: """<i>Követelmény %BOOST%</i><br><i>csak kis hajó</i><br>Amikor végrehajtasz egy fehér %BOOST% akciót, kezelheted pirosként, hogy a [1&nbsp;%TURNLEFT%] vagy [1&nbsp;%TURNRIGHT%] sablokokat használhasd."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """<i>csak Birodalom</i><br>Az Ütközet fázis elején, válaszhatsz 1 hajót a tűzívedben 0-2-es távolságban és költs el 1&nbsp;%FORCE% jelzőt. Ha így teszel, az a hajó elszenved 1&nbsp;%HIT% sérülést, hacsak úgy nem dönt, hogy eldob 1 zöld jelzőt."""
        "Deadman's Switch":
           display_name: """Deadman’s Switch"""
           text: """Miután megsemmisültél, minden hajó 0-1 távolságban elszenved 1&nbsp;%HIT% sérülést."""
        "Death Troopers":
           display_name: """Death Troopers"""
           text: """<i>csak Birodalom</i><br>Az Aktivációs fázis alatt az ellenséges hajók 0-1-es távolságban nem vehetik le a stressz jelzőjüket."""
        "Debris Gambit":
           display_name: """Debris Gambit"""
           text: """<i>Kapott akció: <r>%EVADE%</r></i><br><i>csak kis vagy közepes hajó</i><br>Amikor végrehajtasz egy piros %EVADE% akciót, ha van 0-1-es távolságban egy akadály, kezeld az akciót fehérként."""
        "Dengar":
           display_name: """Dengar"""
           text: """<i>csak Söpredék</i><br>Miután védekezel, ha a támadó a tűzívedben van, elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, dobj 1 támadókockával, hacsak a támadó úgy nem dönt, hogy eldobja 1 zöld jelzőjét. %HIT% vagy %CRIT% eredmény esetén a támadó elszenved 1&nbsp;%HIT% sérülést."""
        "Director Krennic":
           display_name: """Director Krennic"""
           text: """<i>Kapott akció %LOCK%</i><br><i>csak Birodalom</i><br><strong>Felhelyezés:</strong> a hajók felhelyezése előtt, rendeld hozzá az <strong>Optimized Prototype</strong> állapotkártyát egy másik baráti hajóhoz."""
        "Dorsal Turret":
           display_name: """Dorsal Turret"""
           text: """<i>Kapott akció %ROTATEARC%</i><br><strong>Támadás</strong>"""
        "Electronic Baffle":
           display_name: """Electronic Baffle"""
           text: """A Vége fázis alatt, elszenvedhetsz 1&nbsp;%HIT% sérülést, hogy levegyél 1 piros jelzőt."""
        "Elusive":
           display_name: """Elusive"""
           text: """<i>csak kis vagy közepes hajó</i><br>Amikor védekezel, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy újradobj 1 védekezőkockát. Miután teljesen végrehajtasz egy piros manővert, visszatölthetsz 1&nbsp;%CHARGE% jelzőt."""
        "Emperor Palpatine":
           display_name: """Emperor Palpatine"""
           text: """<i>csak Birodalom</i><br>Amikor egy másik baráti hajó védekezik vagy végrehajt egy támadást, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy módosít annak 1 kockáját úgy, mintha az a hajó költött volna el 1&nbsp;%FORCE% jelzőt."""
        "Engine Upgrade":
           display_name: """Engine Upgrade"""
           text: """<i>Kapott akció %BOOST%</i><br><i>Követelmény <r>%BOOST%</r></i><br><i class = flavor_text>Ennek a fejlesztésnek változó a költsége. 3, 6 vagy 9 pont attól függően, hogy kis, közepes vagy nagy talpú hajóra tesszük fel.</i>"""
        "Expert Handling":
           display_name: """Expert Handling"""
           text: """<i>Kapott akció %BARRELROLL%</i><br><i>Követelmény <r>%BARRELROLL%</r></i><br><i class = flavor_text>Ennek a fejlesztésnek változó a költsége. 2, 4 vagy 6 pont attól függően, hogy kis, közepes vagy nagy talpú hajóra tesszük fel.</i>"""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """<i>csak Lázadók</i><br>Amikor végrehajtasz egy elsődleges támadást, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts egy bónusz %SINGLETURRETARC% támadást egy olyan %SINGLETURRETARC% fegyverrel, amivel még nem támadtál ebben a körben. Ha így teszel és stresszes vagy, újradobhatsz 1 támadókockát."""
        "Fearless":
           display_name: """Fearless"""
           text: """<i>csak Söpredék</i><br>Amikor végrehajtasz egy %FRONTARC% elsődleges támadást, ha a támadási távolság 1 és benne vagy a védekező %FRONTARC% vében, megváltoztathatsz 1 eredményedet %HIT% eredményre."""
        "Feedback Array":
           display_name: """Feedback Array"""
           text: """Mielőtt sor kerül rád az Ütközet fázisban, kaphatsz 1 ion jelzőt és 1 'inaktív fegyverzet' jelzőt. Ha így teszel, minden hajó 0-ás távolságban elszenved 1&nbsp;%HIT% sérülést."""
        "Fifth Brother":
           display_name: """Fifth Brother"""
           text: """<i>csak Birodalom</i><br>Amikor végrehajtasz egy támadást, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy megváltoztass 1&nbsp;%FOCUS% eredményed %CRIT% eredményre."""
        "Fire-Control System":
           display_name: """Fire-Control System"""
           text: """Amikor végrehajtasz egy támadást, ha van bemérőd a védekezőn, újradobhatod 1 támadókockádat. Ha így teszel, nem költheted el a bemérődet ebben a támadásban."""
        "Freelance Slicer":
           display_name: """Freelance Slicer"""
           text: """Amikor védekezel, mielőtt a támadó kockákat eldobnák, elköltheted a támadón lévő bemérődet, hogy dobj 1 támadókockával. Ha így teszel, a támadó kap 1 zavarás jelzőt. Majd %HIT% vagy %CRIT% eredménynél te is kapsz 1 zavarás jelzőt."""
        'GNK "Gonk" Droid':
           display_name: """GNK “Gonk” Droid"""
           text: """<strong>Felhelyezés:</strong> Elvesztesz 1&nbsp;%CHARGE% jelzőt.<br><strong>Akció:</strong> tölts vissza 1&nbsp;%CHARGE% jelzőt. <strong>Akció:</strong>: költs el 1&nbsp;%CHARGE% jelzőt, hogy visszatölts egy pajzsot."""
        "Grand Inquisitor":
           display_name: """Grand Inquisitor"""
           text: """<i>csak Birodalom</i><br>Miután egy ellenséges hajó 0-2-es távolságban felfedi a tárcsáját, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts 1 fehér akciót az akciósávodról, pirosként kezelve azt."""
        "Grand Moff Tarkin":
           display_name: """Grand Moff Tarkin"""
           text: """<i>Követelmény %LOCK% vagy <r>%LOCK%</r></i><br><i>csak Birodalom</i><br>A Rendszer fázis alatt elkölthetsz 2&nbsp;%CHARGE% jelzőt. Ha így teszel, minden baráti hajó kap egy bemérőt arra a hajóra, amit te is bemértél."""
        "Greedo":
           display_name: """Greedo"""
           text: """<i>csak Söpredék</i><br>Amikor végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy megváltoztass 1&nbsp;%HIT% eredméynyt %CRIT% eredményre. Amikor védekezel, ha a %CHARGE% jelződ aktív, a támadó megváltoztathat 1&nbsp;%HIT% eredméynyt %CRIT% eredményre."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """<i>csak Lázadók</i><br>Az Ütközet fázis alatt, 7-es kezdeményezésnél, végrehajthatsz egy %SINGLETURRETARC% támadást. Nem támadhatsz újra ezzel a %SINGLETURRETARC% fegyverrel ebben a körben."""
        "Han Solo (Scum)":
           display_name: """Han Solo"""
           text: """<i>csak Söpredék</i><br>Mielőtt sor kerül rád az Ütközet fázisban, végrehajthatsz egy piros %FOCUS% akciót."""
        "Heavy Laser Cannon":
           display_name: """Heavy Laser Cannon"""
           text: """<strong>Támadás:</strong> a <strong>Támadókockák módosítása</strong> lépés után változtasd az összes %CRIT% eredményt %HIT% eredményre."""
        "Heightened Perception":
           display_name: """Heightened Perception"""
           text: """Az Ütközet fázis elején, elkölthetsz 1&nbsp;%FORCE% jelzőt. Ha így teszel, 7-es kezdeményezéssel kerülsz sorra ebben a fázisban a rendes kezdeményezésed helyett."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """<i>csak Lázadók</i><br>Stresszesen is végrehajthatsz piros manővert. Miután teljesen végrehajtasz egy piros manővert, ha 3 vagy több stressz jelződ van, vegyél le egy stressz jelzőt és szenvedj el 1&nbsp;%HIT% sérülést."""
        "Homing Missiles":
           display_name: """Homing Missiles"""
           text: """<strong>Támadás (%LOCK%):</strong> Költs el 1&nbsp;%CHARGE% jelzőt. Miután kijelölted a védekezőt, a védekező dönthet úgy, hogy elszenved 1&nbsp;%HIT% sérülést. Ha így tesz, ugorjátok át a <strong>Támadó és védekező kockák</strong> lépést és a támadást találtnak kezeljétek."""
        "Hotshot Gunner":
           display_name: """Hotshot Gunner"""
           text: """Amikor végrehajtasz egy %SINGLETURRETARC% támadást, a <strong>Védekezőkockák módosítása</strong> lépés után a védekező dobja el 1 fókusz vagy kalkuláció jelzőjét."""
        "Hull Upgrade":
           display_name: """Hull Upgrade"""
           text: """Adj 1 szerkezeti értéket a hajódhoz.<br><i>Ennek a fejlesztésnek változó a költsége. 2, 3, 5 vagy 7 pont attól függően, hogy a hajó 0, 1, 2 vagy 3 védekezésű.</i>"""
        "IG-88D":
           display_name: """IG-88D"""
           text: """<i>Kapott akció %CALCULATE%</i><br><i>csak Söpredék</i><br>Megkapod minden <strong>IG-2000</strong> fejlesztéssel felszerelt baráti hajó pilóraképességét. Miután végrehajtasz egy %CALCULATE% akciót, kapsz 1 kalkuláció jelzőt."""
        "Ion Bombs":
           display_name: """Ion Bombs"""
           text: """<strong>Bomba</strong><br>A Rendszer fázisban elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy kidobj egy Proton bombát az [1&nbsp;%STRAIGHT%] sablonnal."""
        "ISB Slicer":
           display_name: """ISB Slicer"""
           text: """<i>csak Birodalom</i><br>A Vége fázis alatt az ellenséges hajók 1-2-es távban nem vehetik le a zavarás jelzőket."""
        "Inertial Dampeners":
           display_name: """Inertial Dampeners"""
           text: """Mielőtt végrehajtanál egy manővert, elkölthetsz 1 pajzsot. Ha így teszel, hajts végre egy fehér [0&nbsp;%STOP%] manővert a tárcsázott helyett, aztán kapsz 1 stressz jelzőt."""
        "Informant":
           display_name: """Informant"""
           text: """<strong>Felhelyezés:</strong> a hajók felhelyezése után válassz 1 ellenséges hajót és rendeld hozzá a <strong>Listening Device</strong> állapotkártyát."""
        "Instinctive Aim":
           display_name: """Instinctive Aim"""
           text: """Amikor végrehajtasz egy speciális támadást, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy figyelmen kívül hagyhatsd a %FOCUS% vagy %LOCK% követelményt."""
        "Intimidation":
           display_name: """Intimidation"""
           text: """Amikor egy ellenséges hajó 0-ás távolságban védekezik, 1-gyel kevesebb védekezőkockával dob."""
        "Ion Cannon":
           display_name: """Ion Cannon"""
           text: """<strong>Támadás:</strong> ha a támadás talált, költs 1&nbsp;%HIT% vagy %CRIT% eredményt, hogy a védekező elszenvedjen 1&nbsp;%HIT% sérülést. Minden fennmaradó %HIT%/%CRIT% eredmény után sérülés helyett ion jelzőt kap a védekező."""
        "Ion Cannon Turret":
           display_name: """Ion Cannon Turret"""
           text: """<i>Kapott akció %ROTATEARC%</i><br><strong>Támadás:</strong> ha a támadás talált, költs 1&nbsp;%HIT% vagy %CRIT% eredményt, hogy a védekező elszenvedjen 1&nbsp;%HIT% sérülést. Minden fennmaradó %HIT%/%CRIT% eredmény után sérülés helyett ion jelzőt kap a védekező."""
        "Ion Missiles":
           display_name: """Ion Missiles"""
           text: """<strong>Támadás (%LOCK%):</strong> költs el 1&nbsp;%CHARGE% jelzőt. ha a támadás talált, költs 1&nbsp;%HIT% vagy %CRIT% eredményt, hogy a védekező elszenvedjen 1&nbsp;%HIT% sérülést. Minden fennmaradó %HIT%/%CRIT% eredmény után sérülés helyett ion jelzőt kap a védekező."""
        "Ion Torpedoes":
           display_name: """Ion Torpedoes"""
           text: """<strong>Támadás (%LOCK%):</strong> költs el 1&nbsp;%CHARGE% jelzőt. ha a támadás talált, költs 1&nbsp;%HIT% vagy %CRIT% eredményt, hogy a védekező elszenvedjen 1&nbsp;%HIT% sérülést. Minden fennmaradó %HIT%/%CRIT% eredmény után sérülés helyett ion jelzőt kap a védekező."""
        "Jabba the Hutt":
           display_name: """Jabba the Hutt"""
           text: """<i>csak Söpredék</i><br>A Vége fázis alatt, kiválaszthatsz 1 baráti hajót 0-2-es távolságban, majd költs el 1&nbsp;%CHARGE% jelzőt. Ha így teszel, a kiválasztott hajó visszatölthet 1&nbsp;%CHARGE% jelzőt 1 felszerelt %ILLICIT% fejlesztésén."""
        "Jamming Beam":
           display_name: """Jamming Beam"""
           text: """<strong>Támadás:</strong> ha a támadás talált, minden %HIT%/%CRIT% eredmény után sérülés helyett zavarás jelzőt kap a védekező."""
        "Juke":
           display_name: """Juke"""
           text: """<i>csak kis vagy közepes hajó</i><br>Amikor végrehajtasz egy támadást, ha van kitérés jelződ, megváltoztathatod a védekező 1&nbsp;%EVADE% eredményét %FOCUS% eredményre."""
        "Jyn Erso":
           display_name: """Jyn Erso"""
           text: """<i>csak Lázadók</i><br>Ha egy baráti hajó 0-3 távolságban fókusz jelzőt kapna, helyette kaphat 1 kitérés jelzőt."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """<i>csak Lázadók</i><br>Miután egy baráti hajó 0-2-es távolságban teljesen végrehajt egy fehér manővert, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy levegyél róla 1 stressz jelzőt."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """<i>csak Söpredék</i><br>A Vége fázis elején, kiválaszthatsz 1 ellenséges hajót 0-2-es távolságban a tűzívedben. Ha így teszel, aza a hajó nem veheti le a vonósugár jelzőit."""
        "L3-37":
           display_name: """L3-37"""
           text: """<i>csak Söpredék</i><br><strong>Felhelyezés:</strong> felfordítva szereld fel ezt a kártyát. Amikor védekezel, lefordíthatod ezt a kártyát. Ha így teszel, a támadónak újra kell dobnia az összes támadókockát.<br><i>L3-37 programja:</i> Ha nincs pajzsod, csökkentsd a nehézségét a (%BANKLEFT% és %BANKRIGHT%) manővereknek."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """<i>csak Lázadók</i><br><strong>Akció:</strong> dobj 2 védekezőkockával. Minden egyes %FOCUS% eredmény után kapsz 1 fókusz jelzőt. Minden egyes %EVADE% eredmény után kapsz 1 kitérés jelzőt. Ha mindkettő eredmény üres, az ellenfeled választ, hogy fókusz vagy kitérés. Kapsz 1, a választásnak megfelelő jelzőt."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian"""
           text: """<i>csak Söpredék</i><br>Kockadobás után elkölthetsz 1 zöld jelzőt, hogy újradobj 2 kockádat."""
        "Lando's Millennium Falcon":
           display_name: """Lando’s Millennium Falcon"""
           text: """<i>csak Söpredék</i><br>1 Escape Craft be lehet dokkolva. Amikor egy Escape Craft be van dokkolva, kezelheted úgy a pajzsait, mintha a te hajódon lenne. Amikor végrehajtasz egy elsődleges támadást stresszelt hajó ellen, dobj 1-gyel több támadókockával."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """<i>csak Söpredék</i><br>Amikor védekezel, ha a támadó stresszelt, levehetsz 1 stressz jelzőt a támadóról, hogy megváltoztass 1 üres/%FOCUS% eredményed %EVADE% eredményre."""
        "Leia Organa":
           display_name: """Leia Organa"""
           text: """<i>csak Lázadók</i><br>Az Aktivációs fázis elején, elkölthetsz 3&nbsp;%CHARGE% jelzőt. Ezen fázis alatt minden baráti hajó csökkentse a piros manőverei nehézségét."""
        "Lone Wolf":
           display_name: """Lone Wolf"""
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha nincs másik baráti hajó 0-2-es távolságban, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy újradobj 1 kockádat."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """<i>csak Lázadók</i><br>Az Ütközet fázis elején, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy forgasd a %SINGLETURRETARC% jelződet."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """<i>csak Lázadók</i><br>Miután védekezel, ha a támadás talált, feltehetsz egy bemérőt a támadóra."""
        "Marksmanship":
           display_name: """Marksmanship"""
           text: """Amikor végrehajtasz egy támadást, ha a védekező benne van a %BULLSEYEARC% ívedben, megváltoztathatsz 1&nbsp;%HIT% eredményt %CRIT% eredményre."""
        "Maul":
           display_name: """Maul"""
           text: """<i>Söpredék vagy Ezra Bridger a csapatban</i><br>Miután sérülést szenvedsz, kaphatsz 1 stressz jelzőt, hogy visszatölts 1&nbsp;%FORCE% jelzőt. Felszerelhetsz <strong>Dark Side</strong> fejlesztéseket."""
        "Minister Tua":
           display_name: """Minister Tua"""
           text: """<i>csak Birodalom</i><br>Az Ütközet fázis elején, ha sérült vagy, végrehajthatsz egy piros %REINFORCE% akciót."""
        "Moff Jerjerrod":
           display_name: """Moff Jerjerrod"""
           text: """<i>Követelmény: %COORDINATE% vagy <r>%COORDINATE%</r></i><br><i>csak Birodalom</i><br>A Rendszer fázis alatt, elkölthetsz 2&nbsp;%CHARGE% jelzőt. Ha így teszel, válassz a [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] vagy [1&nbsp;%BANKRIGHT%] sablonokból. Minden baráti hajó végrehajthat egy piros %BOOST% akciót a kiválasztott sablonnal."""
        "Munitions Failsafe":
           display_name: """Munitions Failsafe"""
           text: """Amikor végrehajtasz egy %TORPEDO% vagy %MISSILE% támadást, a támadókockák eldobása után, elvetheted az összes kocka eredményed, hogy visszatölts 1&nbsp;%CHARGE% jelzőt, amit a támadáshoz elköltöttél."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """<i>csak Lázadók</i><br>Csökkentsd az íves manőverek [%BANKLEFT% és %BANKRIGHT%] nehézségét."""
        "Novice Technician":
           display_name: """Novice Technician"""
           text: """A kör végén dobhatsz 1 támadó kockával, hogy megjavíts egy felfordított sérülés kártyát. %HIT% eredménynél, fordíts fel egy sérülés kártyát."""
        "Os-1 Arsenal Loadout":
           display_name: """Os-1 Arsenal Loadout"""
           text: """<i>Kapsz egy %TORPEDO% és egy %MISSILE% fejlesztés helyet.</i><br>Amikor pontosan 1 'inaktív fegyverzet' jelződ van, akkor is végre tudsz hajtani %TORPEDO% és %MISSILE% támadást a bemért célpontjaid ellen. Ha így teszel, nem használhatod el a bemérődet a támadás alatt."""
        "Outmaneuver":
           display_name: """Outmaneuver"""
           text: """Amikor végrehajtasz egy %FRONTARC% támadást, ha nem vagy a védekező tűzívében, a védekező 1-gyel kevesebb védekezőkockával dob."""
        "Perceptive Copilot":
           display_name: """Perceptive Copilot"""
           text: """Miután végrehajtasz egy %FOCUS% akciót, kapsz 1 fókusz jelzőt."""
        "Pivot Wing":
           display_name: """Pivot Wing"""
           text: """<strong>Csukva: </strong>Amikor védekezel, 1-gyel kevesebb védekezőkockával dobsz. Miután végrehajtasz egy [0&nbsp;%STOP%] manővert, elforgathatod a hajód 90 vagy 180 fokkal. Mielőtt aktiválódsz, megfordíthatod ezt a kártyát.<br><strong>Nyitva:</Strong> Mielőtt aktiválódsz, megfordíthatod ezt a kártyát."""
        "Predator":
           display_name: """Predator"""
           text: """Amikor végrehajtasz egy elsődleges támadást, ha a védekező benne van a %BULLSEYEARC% ívedben, újradobhatsz 1 támadókockát."""
        "Proton Bombs":
           display_name: """Proton Bombs"""
           text: """<strong>Bomba</strong><br>A Rendszer fázisban elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy kidobj egy Proton bombát az [1&nbsp;%STRAIGHT%] sablonnal."""
        "Proton Rockets":
           display_name: """Proton Rockets"""
           text: """<strong>Támadás (%FOCUS%):</strong> költs el 1&nbsp;%CHARGE% jelzőt."""
        "Proton Torpedoes":
           display_name: """Proton Torpedoes"""
           text: """<strong>Támadás (%LOCK%):</strong> költs el 1&nbsp;%CHARGE% jelzőt. Változtass 1&nbsp;%HIT% eredményt %CRIT% eredményre."""
        "Proximity Mines":
           display_name: """Proximity Mines"""
           text: """<strong>Akna</strong><br>A Rendszer fázisban elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy ledobj egy Proximity aknát az [1&nbsp;%STRAIGHT%] sablonnal. Ennek a kártyának a %CHARGE% jelzője <strong>nem</strong> újratölthető."""
        "Qi'ra":
           display_name: """Qi’ra"""
           text: """<i>csak Söpredék</i><br>Amikor mozogsz vagy támadást hajtasz végre, figyelmen kívül hagyhatod az összes akadályt, amit bemértél."""
        "R2 Astromech":
           display_name: """R2 Astromech"""
           text: """Miután felfeded a tárcsád, elkölthetsz 1&nbsp;%CHARGE% jelzőt és kapsz 1 'inaktív fegyverzet' jelzőt, hogy visszatölts egy pajzsot."""
        "R2-D2 (Crew)":
           display_name: """R2-D2"""
           text: """<i>csak Lázadók</i><br>A Vége fázis alatt, ha sérült vagy és nincs pajzsod, dobhatsz 1 támadókockával, hogy visszatölts 1 pajzsot. %HIT% eredménynél fordíts fel 1 sérüléskártyát."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """<i>csak Lázadók</i><br>Miután felfeded a tárcsád, elkölthetsz 1&nbsp;%CHARGE% jelzőt és kapsz 1 'inaktív fegyverzet' jelzőt, hogy visszatölts egy pajzsot."""
        "R3 Astromech":
           display_name: """R3 Astromech"""
           text: """Fenntarthatsz 2 bemérőt. Mindegyik bemérő más célponton kell legyen. Miután végrehajtasz egy %LOCK% akciót, feltehetsz egy bemérőt."""
        "R4 Astromech":
           display_name: """R4 Astromech"""
           text: """<i>csak kis hajó</i><br>Csökkentsd a nehézségét az 1-2 sebességű alapmanővereidnek (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%)."""
        "R5 Astromech":
           display_name: """R5 Astromech"""
           text: """<strong>Akció:</strong> költs el 1&nbsp;%CHARGE% jelzőt, hogy megjavíts egy lefordított sérülés kártyát.<br><strong>Akció:</strong> javíts meg 1 felfordított <strong>Ship</strong> sérülés kártyát."""
        "R5-D8":
           display_name: """R5-D8"""
           text: """<i>csak Lázadók</i><br><strong>Akció:</strong> költs el 1&nbsp;%CHARGE% jelzőt, hogy megjavíts egy lefordított sérülés kártyát.<br><strong>Akció:</strong> javíts meg 1 felfordított <strong>Ship</strong> sérülés kártyát."""
        "R5-P8":
           display_name: """R5-P8"""
           text: """<i>csak Söpredék</i><br>Amikor végrehajtasz egy támadást a %FRONTARC% ívedben lévő védekező ellen, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy újradobj 1 támadókockát. Ha az újradobott eredmény %CRIT%, szenvedj el 1&nbsp;%CRIT% sérülést."""
        "R5-TK":
           display_name: """R5-TK"""
           text: """<i>csak Söpredék</i><br>Végrehajthatsz támadást baráti hajó ellen."""
        "Rigged Cargo Chute":
           display_name: """Rigged Cargo Chute"""
           text: """<i>csak közepes vagy nagy hajó</i><br><strong>Akció:</strong> költs el 1&nbsp;%CHARGE% jelzőt. Dobj ki 1 rakomány jelzőt az [1&nbsp;%STRAIGHT%] sablonnal."""
        "Ruthless":
           display_name: """Ruthless"""
           text: """<i>csak Birodalom</i><br>Amikor végrehajtasz egy támadást, kiválaszthatsz másik baráti hajót 0-1-es távolságra a védekezőtől. Ha így teszel, a kiválasztott hajó elszenved 1&nbsp;%HIT% sérülést és te megváltoztathatsz 1 kocka eredményed %HIT% eredményre."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """<i>csak Lázadók</i><br><strong>Felhelyezés:</strong> tegyél fel 1 ion, 1 zavarás, 1 stressz és 1 vonósugár jelzőt erre a kártyára. Miután egy hajó sérülést szenved egy baráti bombától, levehetsz 1 ion, 1 zavarás, 1 stressz vagy 1 vonósugár jelzőt erről a kártyáról. Ha így teszel, az a hajó megkapja ezt a jelzőt."""
        "Saturation Salvo":
           display_name: """Saturation Salvo"""
           text: """<i>Követelmény %RELOAD% vagy <r>%RELOAD%</r></i><br>Amikor végrehajtasz egy %TORPEDO% vagy %MISSILE% támadást, elkölthetsz 1&nbsp;%CHARGE% jelzőt arról a kártyától. Ha így teszel, válassz 2 védekezőkockát. A védekezőnek újra kell dobnia azokat a kockákat."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """<i>csak Lázadók</i><br>Amikor végrehajtasz egy támadást, elszenvedhetsz 1&nbsp;%HIT% sérülést, hogy megváltoztasd az összes %FOCUS% eredményed %CRIT% eredményre."""
        "Seasoned Navigator":
           display_name: """Seasoned Navigator"""
           text: """Miután felfedted a tárcsádat, átállíthatod egy másik nem piros manőverre ugyanazon sebességen. Amikor végrehajtod azt a manővert növeld meg a nehézségét."""
        "Seismic Charges":
           display_name: """Seismic Charges"""
           text: """<strong>Bomba</strong><br>A Rendszer fázisban elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy ledobj egy Seismic Charge bombát az [1&nbsp;%STRAIGHT%] sablonnal."""
        "Selfless":
           display_name: """Selfless"""
           text: """<i>csak Lázadók</i><br>Amikor másik baráti hajó 0-1-es távolságban védekezik, az <strong>Eredmények semlegesítése</strong> lépés előtt, ha benne vagy a támadási tűzívben, elszenvedhetsz 1&nbsp;%CRIT% sérülést, hogy semlegesíts 1&nbsp;%CRIT% eredményt."""
        "Sense":
           display_name: """Sense"""
           text: """A Rendszer fázis alatt kiválaszthatsz 1 hajót 0-1-es távolságban és megnézheted a tárcsáját. Ha elköltesz 1&nbsp;%FORCE% jelzőt választhatsz 0-3-as távolságból hajót."""
        "Servomotor S-Foils":
           display_name: """Servomotor S-foils"""
           text: """<strong>Csukva: </strong><i>Kapott akciók: %BOOST% , %FOCUS%&nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked"></i>&nbsp;<r>%BOOST%</r></i><br> Amikor végrehajtasz egy elsődleges támadást, 1-gyel kevesebb támadókockával dobj.<br>Mielőtt aktiválódsz, megfordíthatod ezt a kártyát.<br><strong>Nyitva:</strong> Mielőtt aktiválódsz, megfordíthatod ezt a kártyát."""
        "Seventh Sister":
           display_name: """Seventh Sister"""
           text: """<i>csak Birodalom</i><br>Ha egy ellenséges hajó 0-1-es távolságra egy stressz jelzőt kapna, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy 1 zavarás vagy vonósugár jelzőt kapjon helyette."""
        "Shield Upgrade":
           display_name: """Shield Upgrade"""
           text: """Adj 1 pajzs értéket a hajódhoz.<br><i>Ennek a fejlesztésnek változó a költsége. 3, 4, 6 vagy 8 pont attól függően, hogy a hajó 0, 1, 2 vagy 3 védekezésű.</i>"""
        "Skilled Bombardier":
           display_name: """Skilled Bombardier"""
           text: """Ha ledobsz vagy kilősz egy eszközt, megegyező irányban használhatsz 1-gyel nagyob vagy kisebb sablont."""
        "Squad Leader":
           display_name: """Squad Leader"""
           text: """<i>Kapott akció <r>%COORDINATE%</r></i><br>WAmikor koordinálsz, a kiválasztott hajó csak olyan akciót hajthat végre, ami a te akciósávodon is rajta van."""
        "Static Discharge Vanes":
           display_name: """Static Discharge Vanes"""
           text: """Mielőtt kapnál 1 ion vagy zavarás jelzőt, ha nem vagy stresszes, választhatsz egy másik hajót 0-1-es távolságban és kapsz 1 stressz jelzőt. Ha így teszel, a kiválasztott hajó kapja meg az ion vagy zavarás jelzőt helyetted, majd szenvedj el egy %HIT% sérülést."""
        "Stealth Device":
           display_name: """Stealth Device"""
           text: """Amikor védekezel, ha a %CHARGE% jelződ aktív, dobj 1-gyel több védekezőkockával. Miután elszenvedsz egy sérülés, elvesztesz 1&nbsp;%CHARGE% jelzőt.<br><i>Ennek a fejlesztésnek változó a költsége. 3, 4, 6 vagy 8 pont attól függően, hogy a hajó 0, 1, 2 vagy 3 védekezésű.</i>"""
        "Supernatural Reflexes":
           display_name: """Supernatural Reflexes"""
           text: """<i>csak kis hajó</i><br>Mielőtt aktiválódsz, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy végrehajts egy %BARRELROLL% vagy %BOOST% akciót. Ha olyan akciót hajtottál végre, ami nincs az akciósávodon, elszenvedsz 1&nbsp;%HIT% sérülést."""
        "Swarm Tactics":
           display_name: """Swarm Tactics"""
           text: """Az ütközet fázis elején, kiválaszthatsz 1 baráti hajót 1-es távolságban. Ha így teszel, az a hajó a kör végéig kezelje úgy a kezdeményezés értékét, mintha egyenlő lenne a tiéddel."""
        "Tactical Officer":
           display_name: """Tactical Officer"""
           text: """<i>Kapott akció: %COORDINATE%</i><br><i>Követelmény: <r>%COORDINATE%</r></i>"""
        "Tactical Scrambler":
           display_name: """Tactical Scrambler"""
           text: """<i>csak közepes vagy nagy hajó</i><br>Amikor akadályozod egy ellenséges hajó támadását, a védekező 1-gyel több védekezőkockával dob."""
        "Tobias Beckett":
           display_name: """Tobias Beckett"""
           text: """<i>csak Söpredék</i><br><strong>Felhelyezés:</strong> a hajók felhelyezése után, kiválaszthatsz 1 akadályt a pályáról. Ha így teszel, helyezd át bárhová 2-es távolságra a szélektől vagy hajóktól és 1-es távolságra más akadályoktól."""
        "Tractor Beam":
           display_name: """Tractor Beam"""
           text: """<strong>Támadás:</strong> ha a támadás talált, minden %HIT%/%CRIT% eredmény után sérülés helyett vonósugár jelzőt kap a védekező."""
        "Trajectory Simulator":
           display_name: """Trajectory Simulator"""
           text: """A Rendszer fázis alatt, ha ledobsz vagy kilősz egy bombát, kilőheted a [5&nbsp;%STRAIGHT%] sablonnal."""
        "Trick Shot":
           display_name: """Trick Shot"""
           text: """Amikor végrehajtasz egy támadást ami akadályozott egy akadály által, dobj 1-gyel több támadókockával."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """<i>csak Söpredék</i><br>Miután részlegesen végrehajtasz egy manővert, elszenvedhetsz 1&nbsp;%HIT% sérülést, hogy végrehajts 1 fehér akciót."""
        "Veteran Tail Gunner":
           display_name: """Veteran Tail Gunner"""
           text: """<i>Követelmény: %REARARC%</i> <br>Miután végrehajtasz egy elsődleges %FRONTARC% támadást, végrehajthatsz egy bónusz elsődleges %REARARC% támadást."""
        "Veteran Turret Gunner":
           display_name: """Veteran Turret Gunner"""
           text: """<i>Követelmény: %ROTATEARC% vagy <r>%ROTATEARC%</r></i><br>Amikor végrehajtasz egy elsődleges támadást, végrehajthatsz egy bónusz %SINGLETURRETARC% támadást egy olyan %SINGLETURRETARC% ívben, amiből még nem támadtál ebben a körben."""
        "Xg-1 Assault Configuration":
           display_name: """Xg-1 Assault Configuration"""
           text: """Amikor pontosan 1 'inaktív fegyverzet' jelződ van, akkor is végrehajthatsz %CANNON% támadást. Amikor %CANNON% támadást hajtasz végre 'inaktív fegyverzet' jelzővel, maximum 3 támadókockával dobhatsz.<br>Kapsz egy %CANNON% fejlesztés helyet."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """<i>csak Söpredék</i><br>Amikor végrehajtasz egy támadást, ha nem vagy stresszes, válaszhatsz 1 védekezőkockát és kapsz 1 stressz jelzőt. Ha így teszel, a védekezőnek újra kell dobnia azt a kockát."""
        '"Chopper" (Crew)':
           display_name: """“Chopper”"""
           text: """<i>csak Lázadók</i><br>Az <strong>Akció végrehajtása</strong> lépés közben akár stresszesen is végrehajthatsz 1 akciót. Miután stresszesen végrehajtasz egy akciót szenvedj el 1&nbsp;%HIT% sérülést vagy fordítsd fel 1 sérülés kártyád."""
        '"Chopper" (Astromech)':
           display_name: """“Chopper”"""
           text: """<i>csak Lázadók</i><br><strong>Akció:</strong> költs el 1 nem-újratölthető %CHARGE% jelzőt egy másik felszerelt fejlesztésről, hogy visszatölts 1 pajzsot<br><strong>Akció:</strong> költs el 2 pajzsot, hogy visszatölts 1 nem-újratölthető %CHARGE% jelzőt egy felszerelt fejlesztésen."""
        '"Genius"':
           display_name: """“Genius”"""
           text: """<i>csak Söpredék</i><br>Miután teljesen végrehajtasz egy manővert, ha még nem dobtál vagy lőttél ki eszközt ebben a körben, kidobhatsz 1 bombát."""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """<i>csak Lázadók</i><br>Végrehajthatsz elsődleges támadást 0-ás távolságban. Az ellenséges hajók 0-ás távolságban végrehajthatnak elsődleges támadást ellened."""
        "Black One":
           text: """<i>Kapott akció: %SLAM%</i> <br> Miután végrehajtasz egy %SLAM% akciót, elvesztesz 1&nbsp;%CHARGE% jelzőt. Ezután kaphatsz 1 ion jelzőt, hogy levedd az inaktív fegyverzet jelzőt. Ha a %CHARGE% nem aktív, nem hajthatsz végre %SLAM% akciót."""
        "Heroic":
           text: """<i>csak Ellenállás</i><br>Amikor védekezel vagy végrehajtasz egy támadást, ha 2 vagy több csak üres eredményed van, újradobhatsz akárhány kockát."""
        "Rose Tico":
           text: """Amikor védekezel vagy végrehajtasz egy támadást, elkölthetsz egy dobás eredményed, hogy bemérőt rakj az ellenséges hajóra."""
        "Finn":
           text: """Amikor védekezel vagy végrehajtasz egy elsődleges támadást,ha az ellenséges hajó a %FRONTARC% ívedben van, hozzáadhatsz 1 üres eredményt a dobásodhoz (ez a kocka újradobható vagy módosítható)."""
        "Integrated S-Foils":
           text: """<strong>Csukva: </strong><i>Kapott akció %BARRELROLL%, %FOCUS% &nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked"></i>&nbsp;<r>%BARRELROLL%</r></i><br> Amikor végrehajtasz egy elsődleges támadást, ha a védekező nincs a %BULLSEYEARC% ívedben, 1-gyel kevesebb támadókockával dobj. Mielőtt aktiválódsz, megfordíthatod ezt a kártyát.<br> <b>Nyitva:</b> Mielőtt aktiválódsz, megfordíthatod ezt a kártyát."""
        "Targeting Synchronizer":
           text: """<i>Követelmény: %LOCK%</i> <br> Amikor egy baráti hajó 1-2-es távolságban végrehajt egy támadást olyan célpont ellen, amit már bemértél, az a hajó hagyja figyelmen kívül a %LOCK% támadási követelményt."""
        "Primed Thrusters":
           text: """<i>csak kis hajó</i> <br>Amikor 2 vagy kevesebb stressz jelződ van, végrehajthatsz %BARRELROLL% és %BOOST% akciót még ha stresszes is vagy."""
        "Kylo Ren":
           text: """<strong>Akció: </strong> Válassz 1 ellenséges hajót 1-3-as távolságban. Ha így teszel, költs el 1&nbsp;%FORCE% jelzőt, hogy hozzárendeled az <strong>I'll Show You the Dark Side</strong> állapotkártyát a kiválasztott hajóhoz."""
        "General Hux":
           text: """Amikor végrehajtasz egy fehér %COORDINATE% akciót, kezelheted pirosként. Ha így teszel, koordinálhatsz további 2 azonos típusú hajót, mindegyikét azonos akcióval és pirosként kezelve."""
        "Fanatical":
           text: """Amikor végrehajtasz egy elsődleges támadást, ha nincs pajzsod, megváltoztathatsz 1&nbsp;%FOCUS% eredményt %HIT% eredményre."""
        "Special Forces Gunner":
           text: """Amikor végrehajtasz egy elsődleges %FRONTARC% támadást, ha a %SINGLETURRETARC% íved a %FRONTARC% ívedben van, 1-gyel több kockával dobhatsz. Miután végrehajtasz egy elsődleges %FRONTARC% támadást, ha a %SINGLETURRETARC% íved a %REARARC% ívedben van, végrehajthatsz egy bónusz elsődleges %SINGLETURRETARC% támadást."""
        "Captain Phasma":
           text: """Az Ütközet fázis végén, minden 0-1 távolságban lévő ellenséges hajó ami nem stresszes, kap 1 stressz jelzőt."""
        "Supreme Leader Snoke":
           text: """A Rendszer fázis alatt kiválaszthatsz bármennyi hajót 1-es távolságon túl. Ha így teszel költs el annyi %FORCE% jelzőt, amennyi hajót kiválasztottál, hogy felfordítsd a tárcsájukat."""
        "Hyperspace Tracking Data":
           text: """<strong>Felhelyezés:</strong> a hajó felhelyezés előtt válassz egy számot 0 és 6 között. Kezeld a Initiative-od a kiválasztott számnak megfelelően. A felhelyezés után rendelj hozzá 1&nbsp;%FOCUS% vagy %EVADE% jelzőt minden baráti hajóra 0-2-es távolságban."""
        "Advanced Optics":
           text: """Amikor támadást hajtasz végre, elkölthetsz 1&nbsp;%FOCUS% jelzőt, hogy 1 üres eredményed %HIT% eredményre változtass."""
        "Rey":
           text: """Amikor védekezel vagy végrehajtasz egy támadást, ha az ellenséges hajó benne van a %FRONTARC% ívedben, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy 1 üres eredményed %EVADE% vagy %HIT% eredményre változtass."""
        "Chewbacca (Resistance)":
           text: """<strong>Felhelyezés:</strong>: elvesztesz el 1&nbsp;%CHARGE% jelzőt. <br> Miután egy baráti hajó 0-3-as távolságban felhúz 1 sérülés kártyát, állítsd helyre 1&nbsp;%CHARGE% jelzőt. Amikor támadást hajtasz végre elkölthetsz 2&nbsp;%CHARGE% jelzőt, hogy 1&nbsp;%FOCUS% eredményed %CRIT% eredményre változtass."""
        "Paige Tico":
           text: """Miután végrehajtasz egy elsődleges támadást, ledobhatsz egy bombát vagy forgathatod a %SINGLETURRETARC% ívedet. Miután megsemmisültél ledobhatsz 1 bombát."""
        "R2-HA":
           text: """Amikor védekezel, elköltheted a támadón lévő bemérődet, hogy újradobd bármennyi védőkockádat."""
        "C-3PO (Resistance)":
           text: """ <i>Kapott akció: %CALCULATE% <r>%COORDINATE%</r></i> <br> Amikor koordinálsz, választhatsz baráti hajót 2-es távolságon túl, ha annak van %CALCULATE% akciója. Miután végrehajtod a %CALCULATE% vagy %COORDINATE% akciót, kapsz 1&nbsp;%CALCULATE% jelzőt."""
        "Han Solo (Resistance)":
           text: """ <i>Kapott akció: <r>%EVADE%</r></i> <br>Miután végrehajtasz egy %EVADE% akciót, annyival több %EVADE% jelzőt kapsz, ahány ellenséges hajó van 0-1-es távolságban."""
        "Rey's Millennium Falcon":
           text: """Ha 2 vagy kevesebb stressz jelződ van, végrehajthatsz piros Segnor Csavar manővert [%SLOOPLEFT% vagy %SLOOPRIGHT%] és végrehajthatsz %BOOST% és %ROTATEARC% akciókat, még ha stresszes is vagy."""
        "Petty Officer Thanisson":
           text: """Az Aktivációs vagy Ütközet fázis közben, miután egy ellenséges hajó a %FRONTARC% ívedben 0-1-es távolságban kap egy piros vagy narancs jelzőt, ha nem vagy stresszes, kaphatsz egy stressz jelzőt. Ha így teszel, az a hajó kap még egy jelzőt abból, amit kapott."""
        "BB-8":
           text: """Mielőtt végrehajtasz egy kék manővert, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy végrehajts egy %BARRELROLL% vagy %BOOST% akciót."""
        "BB Astromech":
           text: """Mielőtt végrehajtasz egy kék manővert, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy végrehajts egy %BARRELROLL% akciót."""
        "M9-G8":
           text: """Amikor egy hajó amit bemértél végrehajt egy támadást, kiválaszthatsz egy támadókockát. Ha így teszel, a támadó újradobja azt a kockát."""
        "Ferrosphere Paint":
           text: """Miután egy ellenséges hajó bemért téged, ha nem vagy annak a hajónak a %BULLSEYEARC% ívében, az kap egy stressz jelzőt."""
        "Brilliant Evasion":
           text: """Amikor védekezel, ha nem vagy a támadó %BULLSEYEARC% ívében, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy 2&nbsp;%FOCUS% eredményed %EVADE% eredményre változtass."""
        "Calibrated Laser Targeting":
           text: """Amikor végrehajtasz egy elsődleges támadást, ha a védekező benne van a %BULLSEYEARC% ívedben, adj a dobásodhoz 1&nbsp;%FOCUS% eredményt."""
        "Delta-7B":
           text: """ <i>Kapott : 1 támadási érték, 2 pajzs <br> Elveszett: 1 védekezés</i> """
        "Biohexacrypt Codes":
           text: """Amikor koordinálsz vagy zavarsz, ha van bemérőd egy hajón, elköltheted azt a bemérőt, hogy a távolság követelményeket figyelmen kívül hagyd a hajó kiválasztákor."""
        "Predictive Shot":
           text: """Miután támadásra jelölsz egy célpontot, ha a védekező benne van a %BULLSEYEARC% ívedben, elkölthetsz 1&nbsp;%FORCE% jelzőt. Ha így teszel, a védekező a <strong>Védekezőkockák dobása</strong> lépésben nem dobhat több kockával, mint a %HIT%/%CRIT% eredményeid száma."""
        "Hate":
           text: """Miután elszenvedsz 1 vagy több sérülést, feltölthetsz ugyanannyi %FORCE% jelzőt."""
        "R5-X3":
           text: """Mielőtt aktiválódsz vagy rád kerül a sor az Ütközet fázisban, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy figyelmen kívül hagyd az akadályokat annak a fázisnak a végéig."""
        "Pattern Analyzer":
           text: """Amikor teljesen végrehajtasz egy piros manővert, a <strong>Nehézség ellenőrzése</strong> lépés előtt végrehajthatsz 1 akciót."""
        "Impervium Plating":
           text: """Mielőtt egy felfordított <b>Ship</b> sérüléskártyát kapnál, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy eldobd."""
        "Grappling Struts":
           text: """<strong>Csukva: </strong> Felhelyezés: ezzel az oldalával helyezd fel.<br>Amikor végrehajtasz egy manővert, ha átfedésbe kerülsz egy aszteroidával vagy űrszeméttel és 1 vagy kevesebb másik baráti hajó van 0-ás távolságra attól az akadálytól, megfordíthatod ezt a kártyát.<br> <b>Nyitva:</b> Hagyd figyelment kívül a 0-ás távolságnban lévő akadályokat amíg átmozogsz rajtuk. Miután felfeded a tárcsádat, ha más manővert fedtél fel mint [2 %STRAIGHT%] és 0-ás távolságra vagy egy aszteroidától vagy űrszeméttől, ugord át a 'Manőver végrehajtása' lépést és vegyél le 1 stresst jelzőt; ha jobb vagy bal manővert fedtél fel, forgasd a hajódat 90 fokkal abba az irányba. Miután végrehajtasz egy manővert fordítsd át ezt a kártyát."""
        "Energy-Shell Charges":
           text: """<i>Követelmény: %CALCULATE% vagy <r>%CALCULATE%</r></i><br><i>csak Szeparatisták</i><br> <strong>Támadás (%CALCULATE%):</strong> Költs el 1&nbsp;%CHARGE% jelzőt. Amikor végrehajtasz egy támadást, elkölthetsz 1&nbsp;%CALCULATE% jelzőt, hogy megváltoztass 1&nbsp;%FOCUS% eredményt %CRIT% eredményre.<br> <strong>Akció:</strong> Töltsd újra ezt a kártyát."""
        "Dedicated":
           text: """Amikor egy másik baráti hajó a %LEFTARC% vagy a %RIGHTARC% ívedben 0-2-es távolságban védekezik, ha az limitált vagy Dedicated fejlesztéssel felszerelt és nem vagy túlterhelve, kaphatsz 1 túlterhelés jelzőt. Ha így teszel a védekező újradobhatja 1 üres eredményét."""
        "Synchronized Console":
           text: """Miután végrehajtasz egy támadást, választhatsz egy baráti hajót 1-es távolságban vagy egy baráti hajót <strong>Synchronized Console</strong> fejlesztéssel 1-3 távolságban és költsd el a védekezőn lévő bemérődet. Ha így teszel, a kiválasztott baráti hajó kaphat egy bemérőt a védekezőre."""
        "Battle Meditation":
           text: """<i>Kapott akció: %F-COORDINATE%</i><br><i>csak Köztársaság</i><br>Nem koordinálhatsz limitált hajót.<br>Amikor végrehajtasz egy lila %COORDINATE% akciót, koordinálhatsz 1 további ugyanolyan típusú nem limitált baráti hajót. Mindkét hajónak ugyanazt az akciót kell végrehajtania."""
        "Spare Parts Canisters":
           text: """Akció: költs el 1&nbsp;%CHARGE% jelzőt, hogy visszatölts 1&nbsp;%CHARGE% jelzőt egy felszerelt %ASTROMECH% fejlesztéseden.<br>Akció: költs el 1&nbsp;%CHARGE% jelzőt, hogy kidobj 1 tartalék alkatrész jelzőt, aztán vegyél le minden rajtad lévő bemérőt."""
        "Chancellor Palpatine":
           text: """<strong>Felhelyezés:</strong> Ezzel az oldalával szereld fel.<br> Miután védekeztél, ha a támadó 0-2-es távolságban van, elkölthetsz 1&nbsp;%FORCE% jelzőt. Ha így teszel, a támadó kap egy stressz jelzőt.<br> A vége fázisban megfordíthatod ezt a kártyát.<br> <strong>Darth Sidious:</strong> Miután végrehajtasz egy lila %COORDINATE% akciót, a koordinált hajó kap 1 stressz jelzőt, majd kap 1&nbsp;%FOCUS% jelzőt vagy visszatölt 1&nbsp;%FORCE% jelzőt."""
        "Count Dooku":
           text: """<i>csak Szeparatisták</i><br>Mielőtt egy hajó 0-2-es távolságban támadó vagy védekező kockákat gurít, ha minden %FORCE% jelződ aktív, elkölthetsz 1&nbsp;%FORCE% jelzőt, hogy megnevezz egy eredményt. Ha a dobás nem tartalmazza megnevezett eredményt, a hajónak meg kell változtatni 1 kockáját arra az eredményre."""
        "General Grievous":
           text: """<i>csak Szeparatisták</i><br>Amikor védekezel, az <strong>Eredmények semlegesítése</strong> lépés után, ha 2 vagy több %HIT%/%CRIT% eredmény van, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy semlegesíts 1 %HIT% vagy %CRIT% eredményt.<br>Miután egy baráti hajó megsemmisül, tölts vissza 1&nbsp;%CHARGE% jelzőt."""
        "K2-B4":
           text: """<i>csak Szeparatisták</i><br>Amikor egy baráti hajó 0-3-as távolságban védekezik, elkölthet 1 %CALCULATE% jelzőt. Ha így tesz, adjon 1 %EVADE% eredményt a dobásához, hacsak a támadó nem tönt úgy, hogy kap 1 túlterhelés jelzőt."""
        "DRK-1 Probe Droids":
           text: """<i>csak Szeparatisták</i><br>A Vége fázis alatt elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy kidobj vagy kilőj 1 DRK-1 kutaszdroidot egy 3-as sebességű sablon segítségével.<br>E a kártya %CHARGE% jelzője nem visszatölthető."""
        "Kraken":
           text: """<i>Kapott akció: %CALCULATE%</i><br><i>csak Szeparatisták</i><br>A Vége fázis alatt kiválaszthatsz akár 3 baráti hajót 0-3-as távolságban. Ha így teszel, ezen hajók nem dobják el 1 %CALCULATE% jelzőjüket."""
        "TV-94":
           text: """<i>csak Szeparatisták</i><br>Amikor egy baráti hajó 0-3-as távolságban végrehajt egy elsődleges támadást egy a %BULLSEYEARC% ívében lévő védekező ellen, ha 2 vagy kevesebb a támadó kockák száma, elkölthet 1 %CALCULATE% jelzőt, hogy hozzáadjon a dobásához 1 %HIT% eredményt."""
        "Discord Missiles":
           text: """<i>csak Szeparatisták</i><br>Az Ütközet fázis elején elkölthetsz 1 %CALCULATE% jelzőt és 1 %CHARGE% jelzőt, hogy kilőj 1 'buzz droid swarm' jelzőt a [3 %BANKLEFT%], [3 %STRAIGHT%] vagy [3 %BANKRIGHT%] használatával. Ennek a kártyának a %CHARGE% jelzője nem tölthető újra."""
        "Clone Commander Cody":
           text: """Miután végrehajtasz egy támadást ami nem talált, ha 1 vagy több %HIT%/%CRIT% eredményt lett semlegesítve, a védekező kap 1 túlterhelés jelzőt."""
        "Seventh Fleet Gunner":
           text: """Amikor egy másik baráti hajó végrehajt egy elsődleges támadást, ha a védekező a tűzívedben van, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel a támadó 1-gyel több kockával dob, de maximum 4-gyel. A rendszer fázisban kaphatsz 1 'inaktív fegyverzet' jelzőt, hogy visszatölts 1&nbsp;%CHARGE% jelzőt."""
        "R4-P44":
           text: """Miután teljesen végrehajtasz egy piros manővert, ha van egy ellenséges hajó a %BULLSEYEARC% ívedben, kapsz 1 %CALCULATE% jelzőt."""
        "Treacherous":
           text: """<i>csak Szeparatisták</i><br>Amikor védekezel, kiválaszthatsz egy a támadást akadályozó hajót és költs el 1 %CHARGE% jelzőt. Ha így teszel, semlegesíts 1 %HIT% vagy %CRIT% eredményt és a kiválasztott hajó kap egy túlterhelés jelzőt. Ha egy hajó 0-3-as távolságban megsemmisül, tölts vissza 1 %CHARGE% jelzőt."""
        "Soulless One":
           text: """<i>csak Szeparatisták <br> Kapsz 2 hajótest erősítést</i><br> Amikor védekezel, ha a támadó a tűzíveden kívül van újradobhatsz 1 védekezőkockát."""
        "Autoblasters":
           text: """<strong>Támadás:</strong>Ha a védekező benne van a %BULLSEYEARC% ívedben, 1-gyel több támadókockával dobj. Az <strong>Eredmények semlegesítése</strong> lépés alatt, ha nem vagy a védekező %FRONTARC% ívében, az %EVADE% eredmények nem semlegesítik a %CRIT% eredményeket."""
        "Delayed Fuses":
           display_name: """Delayed Fuses"""
           text: """Miután kidobsz, kilősz vagy elhelyezel egy bombát vagy aknát, rátehetsz 1 késleltető jelzőt."""
        "Diamond-Boron Missiles":
           display_name: """Diamond-Boron Missiles"""
           text: """<strong>Támadás (%LOCK%):</strong> Költs el 1&nbsp;%CHARGE% jelzőt. Miután a támadás talált, elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, minden a védekezőtől 0-1-es távolságban lévő hajó, aminek a mozgékonysága egyenlő vagy kisebb a védekezőénél dob 1 kockával és elszenved a dobásnak megfelelő 1 %HIT%/%CRIT% sérülést."""
        "Ensnare":
           text: """Az Aktivációs fázis végén, ha vonósugarazva vagy, kiválaszthatsz 1 hajót a %SINGLETURRETARC% ívedben 0-1-es távolságban. Add át a vonósugár jelződ neki."""
        "GA-97":
           text: """<strong>Felhelyezés:</strong> mielőtt felhelyezed a hajóidat, elkölthetsz 3-5 %CHARGE% jelzőt. Ha így teszel válassz egy másik baráti hajót és rendeld hozzá az <strong>It's the Resistance</strong> állapotkártyát."""
        "Kaydel Connix":
           text: """Miután felfeded a tárcsád, átállíthatod 1-gyel gyorsabb alapmanőverre. Amíg végrehajtod azt a manővert, növeld meg a nehézségét."""
        "Plasma Torpedoes":
           text: """<strong>Támadás (%LOCK%):</strong> Költs el 1&nbsp;%CHARGE% jelzőt. Az <strong>Eredmények semlegesítése</strong> lépés alatt a %CRIT% eredmények a %HIT% eredmmények előtt semlegesítődnek. Ha a támadás talált, a védő elveszít 1 pajzsot (még a sérülés elszenvedés előtt)."""
        "R2-C4":
           text: """<i>csak Köztársaság</i><br>Amikor támadást hajtasz végre, elkölthetsz 1 %EVADE% jelzőt, hogy 1 %FOCUS% eredményt %HIT% eredményre változtass."""
        "R4-P Astromech":
           display_name: """R4-P Astromech"""
           text: """<i>csak Köztársaság</i><br>Mielőtt végrehajtasz egy alap manővert, elkölthetsz 1&nbsp;%CHARGE% jelzőt. Ha így teszel, a manőver végrehajtásakor csökkentsd annak nehézségét."""
        "R4-P17":
           display_name: """R4-P17"""
           text: """<i>csak Köztársaság</i><br>Miután teljesen végrehajtasz egy piros manővert, elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy végrehajts egy akciót, még ha stresszes is vagy."""
        "R4-P44":
           display_name: """R4-P44"""
           text: """<i>csak Köztársaság</i><br>Miután teljesen végrehajtasz egy piros manővert, ha van egy ellenséges hajó a %BULLSEYEARC% ívedben, kapsz 1 %CALCULATE% jelzőt."""
        "TA-175":
           display_name: """TA-175"""
           text: """Miután egy %CALCULATE% akcióval rendelkező baráti hajó 0-3-as távolságban megsemmisül, minden %CALCULATE% akcióval rendelkező baráti hajó kap 1 %CALCULATE% jelzőt."""
        "Targeting Computer":
           text: """Kapott akció: %LOCK%"""
        "Electro-Proton Bomb":
           display_name: """Electro-Proton Bomb"""
           text: """<strong>Bomba</strong><br>A Rendszer fázisban elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy ledobj egy Electro-Proton bombát a [1&nbsp;%STRAIGHT%] sablonnal. Aztán helyezz 1 késleltető jelzőt az eszközre. <br>Ennek a kártyának a %CHARGE% jelzője <strong>nem</strong> újratölthető."""
        "Passive Sensors":
           display_name: """Passive Sensors"""
           text: """<strong>Akció:</strong> Költs el 1 %CHARGE% jelzőt. Csak az 'Akció végrehajtása' lépésben hajthatod végre ezt az akciót. <br>Amíg a %CHARGE% jelző inaktív, nem koordinálhatnak. Mielőtt sorra kerülsz az Ütközet fázisban, ha a %CHARGE% inaktív, végrehajthatsz egy %CALCULATE% vagy %LOCK% akciót."""
        "R2-A6":
           display_name: """R2-A6"""
           text: """<i>csak Köztársaság</i><br>Miután felfeded a tárcsád, átállíthatod 1-gyel kisebbre vagy nagyobbra az irányt megtartva."""
        "Amilyn Holdo":
           display_name: """Amilyn Holdo"""
           text: """<i>csak Ellenállás</i><br>Mielőtt sorra kerülsz az Ütközet fázisban, kiválaszthatsz egy másik baráti hajót 1-2-es távolságban. Átadhatsz annak a hajónak 1 olyan jelzőt, ami neki még nincs. Az a hajó átadhat neked 1 jelzőt, ami neked még nincs."""
        "Larma D'Acy":
           display_name: """Larma D'Acy"""
           text: """<i>csak Ellenállás</i><br>Amíg 2 vagy kevesebb stressz jelződ van , végrehajthatsz %REINFORCE%, %COORDINATE% és %JAM% akciót, még ha stresszes is vagy.<br> Amikor fehér %REINFORCE%, %COORDINATE% vagy %JAM% akciót hajtasz végre, ha stresszes vagy kezeld az akciót pirosként."""
        "PZ-4CO":
           display_name: """PZ-4CO"""
           text: """<i>csak Ellenállás</i><br> <i>Kapott akció: %CALCULATE%</i><br>Az aktivációs fázis végén kiválaszthatsz 1 baráti hajót 1-2-es távolságban. Ha így teszel, adj át 1 %CALCULATE% jelzőt annak a hajónak. Ha a felfedett manővered kék, 1 %FOCUS% jelzőt is átadhadsz helyette."""
        "Leia Organa (Resistance)":
           display_name: """Leia Organa"""
           text: """<i>csak Ellenállás</i><br> <i>Kapott akció: %F-COORDINATE%</i><br>Miután egy baráti hajó felfedi a tárcsáját, elkölthetsz 1 %FORCE% jelzőt. Ha így teszel, a kiválasztott hajó csökkentse a manővere nehézségét."""
        "Korr Sella":
           display_name: """Korr Sella"""
           text: """<i>csak Ellenállás</i><br>Miutá teljesen végrehajtasz egy kék manővert, vedd le az összes stressz jelződ."""
        "Precognitive Reflexes":
           display_name: """Precognitive Reflexes"""
           text: """<i>csak kis hajó</i><br>Miután felfeded a tárcsád, elkölthetsz 1 %FORCE% jelzőt, hogy végrehajts egy %BARRELROLL% vagy %BOOST% akciót. Ha így olyan akciót hajtasz végre, ami nincs az akciósávodon , kapsz 1 túlterhelés jelzőt.<br> Ha így teszel, nem hajthatsz végre másik akciót az aktivációd alatt."""
        "Foresight":
           display_name: """Foresight"""
           text: """Miután egy ellenséges hajó végrehajt egy manővert, elkölthetsz 1 %FORCE% jelzőt, hogy végrehajts egy támadást ellene, mint bónusz támadás<br> <strong>Támadás:</strong> Megváltoztathatsz 1 %FOCUS% eredményt egy %HIT% eredményre; más kockamódosítást nem tehetsz."""
        "Angled Deflectors":
           display_name: """Angled Deflectors"""
           text: """<i>Legalább 1 pajzzsal rendelkező kis és közepes hajó.</i><br><i>Kapott akció: %REINFORCE%, vegyél le 1 pajzsot.</i>"""
        "C1-10P":
           display_name: """C1-10P"""
           text: """<strong>C1-10P: </strong>Felhelyezés: Ez az oldal legyen felfelé. <br> Miután végrehajtasz egy manővert, elkölthetsz 1 %CHARGE% jelzőt, hogy végrehajts egy piros %EVADE% akciót, még ha stresszes is  vagy. <br> A Vége fázis alatt, ha ennek a kártyának 0 aktív %CHARGE% jelzője van, fordítsd meg. <br> <strong>C1-10P (hibás):</strong> Miután végrehajtasz egy manővert, választanod <strong>kell</strong> egy hajtót 0-1-es távolságban, ami kap egy zavarás jelzőt."""
        "Ahsoka Tano":
           display_name: """Ahsoka Tano"""
           text: """Miután végrehajtasz egy manővert, elkölthetsz 1 %FORCE% jelzőt, hogy válassz egy tűzívedben lévő baráti hajót 1-3-as távolságban. Ha így teszel, az végrehajthat egy piros %FOCUS% akciót még ha stresses is."""
        "C-3PO (Republic)":
           display_name: """C-3PO"""
           text: """Amikor védekezel és van %CALCULATE% jelződ, újradobhatsz 1 védekezőkockát. <br> Miután végrehajtottál egy %CALCULATE% akciót, kapsz 1 %CALCULATE% jelzőt."""
        "Gravitic Deflection":
           display_name: """Gravitic Deflection"""
           text: """Amikor védekezel, újradobhatsz 1 védőkockát minden a támadási tűzívben lévő vonósugarazott hajó után."""
        "Snap Shot":
           display_name: """Snap Shot"""
           text: """Miután egy ellenséges hajó végrehajt egy manővert, végrehajthatsz egy támadást ellene, mint bónusz támadás.<br><strong>Támadás:</strong> A kockáid nem módosíthatók."""
        "Deuterium Power Cells":
           display_name: """Deuterium Power Cells"""
           text: """A Rendszer fázis alatt elkölthetsz 1 %CHARGE% jelzőt, kapsz 1 inaktív fegyverzet jelzőt, hogy visszatölts 1 %SHIELD% jelzőt. Mielőtt kapnál 1 nem bemérő jelzőt, ha nem vagy stresszes, elkölthetsz 1 %CHARGE% jelzőt, hogy stressz jelzőt kapjál helyette."""
        "Mag-Pulse Warheads":
           display_name: """Mag-Pulse Warheads"""
           text: """<strong>Támadás (%LOCK%):</strong> Költs el 1 %CHARGE% jelzőt. Ha a támadás talált, a védekező elszenved 1 %CRIT% sérülés és kap 1 'deplete' és 1 zavarás jelzőt. Aztán semlegesíts minden %HIT%/%CRIT% eredményt."""
        "Coaxium Hyperfuel":
           display_name: """Coaxium Hyperfuel"""
           text: """Akkor is tudsz %SLAM% akciót végrehajtani, ha stresszes vagy. Ha így teszel, elszenvedsz 1 %CRIT% sérülést, hacsak nem fordítasz fel 1 sérüléskártyád. Miután részlegesen végrehejtasz egy manővert, felfordíthatsz 1 sérüléskártyád, vagy elszenvedhetsz 1 %CRIT% sérülést, hogy végrehajts egy %SLAM% akciót."""
        "R1-J5":
           display_name: """R1-J5"""
           text: """Amikor 2 vagy kevesebb stressz jelződ van, végrehajthatsz sérüléskártyákon lévő akciókat akár stressesen is. Miután megjavítasz egy <b>Ship</b> sérüléskártyát, elkölthetsz 1 %CHARGE% jelzőt, hogy újra megjavítsd azt a kártyát."""
        "Stabilized S-Foils":
           display_name: """Stabilized S-Foils"""
           text: """<strong>Zárva: </strong><i>Kapott akciók: <r>%RELOAD%</r>, %BARRELROLL% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i><r> %EVADE%</r></i><br> Mielőtt aktiválódsz, ha nincs kritikus sérülésed, átfordíthatod ezt a kártyát. <br> <strong>Nyitva:</strong> <i>Kapott akciók: %BARRELROLL% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i><r> %LOCK%</r></i><br> Miután végrehajtasz egy támadást, elköltheted a védekezőn lévő bemérődet, hogy végrehajts egy bónusz %CANNON% támadást azon hajó ellen azzal a %CANNON% fejlesztéssel, amelyet még nem használtál ebben a körben. <br> Mielőtt aktiválódsz, ha nincs kritikus sérülésed, átfordíthatod ezt a kártyát."""
        "K-2SO":
           text: """Kapott akciók: %CALCULATE%, %JAM% <br> A Rendszer fázis alatt kiválaszthatsz egy baráti hajót 0-3-as távolságban. Az a hajó kap 1 %CALCULATE% jelzőt és 1 stressz jelzőt."""
        "Proud Tradition":
           text: """<strong>Proud Tradition</strong><br><strong>Felhelyezés:</strong> ezzel az oldalával szereld fel. <br> Amíg 2 vagy kevesebb stressz jelződ van, végrehajthatsz %FOCUS% akciót akár stresszesen is. Miután végrehajtasz egy támadást, ha stresszes vagy, a védekező elkölthet 1 %FOCUS% jelzőt vagy elszenvedhet 1 %CRIT% sérülést, hogy megfordítsa ezt a kártyát.<br> <strong>False Tradition</strong><br> Kezeld a %FOCUS% akciód pirosként."""
        "Cluster Mines":
           text: """A Rendszer fázisban elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy ledobj egy Cluster aknát az [1&nbsp;%STRAIGHT%] sablonnal. Ennek a kártyának a %CHARGE% jelzője <strong>nem</strong> újratölthető."""
        "Kaz's Fireball":
           text: """<strong>Felhelyezés:</strong> Amikor végrehajtod a <strong>Explosion with Wings</strong> hatást, kikereshetsz a sérülkártya paklidból egy <b>Ship</b> sérüléskártyát, hogy azt osszad ki magadnak. Aztán keverd meg a paklit.<br> Végrehajthatsz sérüléskártya akciót ionozáltan is."""
        "Agent Terex":
           text: """<strong>Felhelyezés:</strong> ezzel az oldalával szereld fel és helyezz rá 2 %CALCULATE% jelzőt.<br>Az Ütközet fázis elején választhatsz egy baráti hajót 0-3-as távolságban és vegyél le 1 %CALCULATE% jelzőt erről a kártyáról, hogy az a hajó kapjon egy ezzel megegyező jelzőt. Ha már nincs több %CALCULATE% jelző ezen a kártyán, fordítsd meg.<br><strong>Cyborg:</strong> A Rendszer fázis alatt dobj 1 támadókockával. %HIT% vagy %CRIT% eredmény esetén kapsz 1 %CALCULATE% jelzőt. Egyéb eredménynél 1 %JAM% jelzőt kapsz.<br><strong>Akció:</strong> tegyél át 1 %CALCULATE% vagy %JAM% jelzőt egy másik hajóra 0-3 távolságban."""
        "Clone Captain Rex":
           text: """Amikor végrehajtasz egy támadást, elkölthetsz 1 %FOCUS% jelzőt. Ha így teszel, minden baráti hajó, aminek a %BULLSEYEARC% ívében van a védekező, kaphat 1 'strain' jelzőt, hogy végrehajthasson egy %FOCUS% akciót."""
        '"Fives"':
           text: """Miután végrehajtasz egy támadást, ami nem talált, ha a védekező kezdeményező értéke egyenlő vagy nagyobb mint a tiéd, tegyél 1 %EVADE% vagy %FOCUS% jelzőt erre a kártyára<br>Mielőtt rád kerül a sor az Ütközet fázisban, levehetsz 1 jelzőt erről a kártyáról, hogy kaphass egy vele megegyezőt."""
        "Suppressive Gunner":
           text: """Amikor végrehajtasz egy támadást, elkölthetsz 1 %FOCUS% jelzőt. Ha így teszel a védekező kap 1 'deplete' jelzőt, hacsak nem szenved el 1 %HIT% sérülést."""
        "Ghost Company":
           text: """<i>Követelmény: %ROTATEARC%</i><br><i>Kapott akció: %ROTATEARC% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <r>%FOCUS%</r></i><br>Miután végrehajtasz egy elsődleges támadást, ha fókuszált vagy, végrehajthatsz egy bónusz %SINGLETURRETARC% támadást egy olyan hajó ellen, amelyet még nem támadtál ebben a körben."""
        "Wolfpack":
           text: """Miután egy baráti hajó 0-3-as távolságban védekezik, ha a támadó benne van a tűzívedben, a védekező kaphat 1 'strain' jelzőt, hogy feltegyen egy bemérőt a támadóra."""
        "Yoda":
           text: """<i>Kapott akció: <f>%COORDINATE%</f></i> <br>Miután egy másik baráti hajó 0-2-es távolságban teljesen végrehajt egy lila manővert vagy akciót, elkölthetsz 1 %FORCE% jelzőt. Ha így teszel, az a hajó visszatölthet 1 %FORCE% jelzőt."""
        "Kit Fisto":
           text: """<i>Kapott akció: <f>%EVADE%</f></i> <br>Az Ütközet fázis elején, választhatsz 1 baráti hajót 0-1-es távolságban, hogy elkölts 1 %FORCE% jelzőt. Ha így teszel, az végrehajthat egy piros %EVADE% akciót."""
        "Plo Koon":
           text: """<i>Kapott akció: <f>%REINFORCE%</f></i><br>A vége fázis elején, ha van 'reinforce' jelződ, választhatsz 1 baráti hajót 0 távolságban vagy a %LEFTARC% vagy %RIGHTARC% ívedben. Az a hajó levesz egy 'deplete' vagy 'strain' jelzőt vagy megjavít egy felfordított sérülés kártyát."""
        "Aayla Secura":
           text: """<i>Kapott akció: %FOCUS% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <f>%COORDINATE%</f></i><br>Amikor egy ellenséges hajó a %BULLSEYEARC% ívedben végrehajt egy támadást, ha a védekező egy baráti hajó és 0-2 távolságban van, megváltoztatja egy üres eredményét %FOCUS% eredményre."""
        "Repulsorlift Stabilizers":
           text: """<strong>Inaktív: Felhelyezés:</strong> ezzel az oldalával szereld fel. Csökkentsd a nehézségét a (%STRAIGHT%) manővereidnek. <br> Miután teljesen végrehajtasz egy manővert, megfordíthatod ezt a kártyát. <br><strong>Aktív: </strong> Miután felfedsz egy (%BANKLEFT% vagy %BANKRIGHT%) vagy (%TURNLEFT% vagy %TURNRIGHT%) manővert, azt oldalazva <b>kell</b> végrehajtanod, majd fordítsd meg ezt a kártyát.<br>Miután végrehajtottál egy nem oldalazó manővert, megfordíthatod ezt a kártyát."""
        "Multi-Missile Pods":
           text: """<strong>Támadás (%CALCULATE% vagy %LOCK%):</strong> Költs el 1 %CHARGE% jelzőt. Ha a védekező benne van a %FRONTARC% ívedben, elköthetsz 1 %CHARGE% jelzőt, hogy 1-gyel több támadókockával dobj. Ha a védekező benne van a %BULLSEYEARC% ívedben, elkölthetsz akár 2 %CHARGE% jelzőt, hogy annyival több támadókockával dobj."""
        "Synced Laser Cannons":
           text: """<strong>Támadás:</strong> ha van %CALCULATE% jelződ, a védekező nem alkalmazhatja a távolság bónuszt."""
        "Concussion Bombs":
           text: """A Rendszer fázis alatt, ha bármelyik %CHARGE% jelző inaktív, ha tudsz, el <b>kell</b> költsél 1 %CHARGE% jelzőt, hogy ledobj 1 'concussion' bombát. Egyébként elkölthetsz 1 %CHARGE% jelzőt, hogy ledobj egy 'concussion' bombát."""
        "Maneuver-Assist MGK-300":
           text: """<i>Kapott akciók: %CALCULATE%, %BARRELROLL% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <r>%CALCULATE%</r></i><br>CSökkentsd a nehézségét a 3-as (%STRAIGHT%) és (%BANKLEFT% vagy %BANKRIGHT%) manővereidnek."""
        "Target-Assist MGK-300":
           text: """<i>Kapott akciók: %CALCULATE%, %ROTATEARC% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> %CALCULATE%</i><br>Mielőtt rád kerül a sor az Ütközet fázisban, ha nincs zöld jelződ és nem vagy stresszes, kapsz 1 %CALCULATE% jelzőt minden a tűzívedben 2-3 távolságban lévő ellenséges hajó után, de maximum 2 darabot."""
        "Deadeye Shot":
           text: """Amikor végrehajtasz egy elsődleges támadást, ha a védekező benne van a %BULLSEYEARC% ívdben, elkölthetsz 1 %HIT% ereményt vagy átválthatsz 1 %CRIT% eredményt %HIT% eredményre. Ha így teszel,a  védekező felfordít 1 sérülés kártyáját."""
        "Ion Limiter Override":
           text: """Miután teljesen végrehajtasz egy piros manővert, végrehajthatsz egy %BARRELROLL% akciót akár stresszesen is. Ha így teszel dobj egy támadókockával: %HIT% eredményvél kapsz 1 'strain' jelzőt, %CRIT%  eredménynél 1 ion jelzőt."""
        "Marg Sabl Closure":
           text: """Miután teljesen végrehajtasz egy manővert, ha átmozogsz egy akadályon, szerkezeten vagy óriás hajón, vagy  leváltál az anyahajóról, választhatsz 1 ellenséges hajót a %FRONTARC% ívedben 1-2 távolságban. Az a hajó kap 1 'strain' jelzőt."""
        "Hondo Ohnaka":
           text: """<strong>Akció:</strong> Válassz 2 hajót 1-3-as távolságban akik barátiak egymásnak. Koordinálj egyet a választott hajók közül, aztán zavard a másikat a távolság koráltozást figyelmen kívül hagyva."""
        'Alpha-3B "Besh"':
           text: """Amikor végrehajtasz egy elsődleges támadást, elköltheted a védekezőn lévő bemérődet, hogy 1 üres vagy %FOCUS% ereményt %HIT% eredményre változtass.<br>Kapsz egy %DEVICE% fejlesztés helyet."""
        "R2-D2 (Republic)":
           text: """Miután aktiválódsz, elkölthetsz 1 %CHARGE% jelzőt és kapsz 1 'deplete' jelzőt, hogy megjavíts 1 sérülés kártyát vagy visszatölts 1 pajzsot vagy levegyél 1 eszközt 0-1 távolságban."""
        "Patience":
           text: """Az Ütközet fázis elején , ha van ellenséges hajó a %FRONTARC% ívedben, kaphatsz 1 'deplete' jelzőt, hogy visszaállíts 1 %FORCE% jelzőt."""
        "Syliure-31 Hyperdrive":
           text: """<strong>Felhelyezés:</strong> Bárhova felhelyezhetd a játéktérre, 1-es távolságon túl az akadályoktól, 3-as távolságon túl az ellenséges hajóktól és 3-as távolságon túl az ellenség alapvonalától."""
        "Jedi Commander":
           text: """Amikor a kísérőid lila manővert hajtanak végre, kezeljék  pirosként<br>Amikor védekezel, akár 2 kísérőd a támadási tűzívben elszenvedhet 1 %HIT%/%CRIT% sérülést, hogy semlegesíts egy neki megfelelő eredményt."""
        "Extreme Maneuvers":
           text: """Amikor végrehajtasz egy %BOOST% akciót, elkölthetsz 1 %FORCE% jelzőt, hogy a kanyar sablon használhasd hozzá."""
        "Starbird Slash":
           text: """Miután teljesen végrehajtasz egy manővert, választhatsz 1 ellenséges hajót, amin átmozogtál. Az a hajó kap 1 'strain' jelzőt. Aztán, ha benne vagy annak a hajónak a tűzívében kapsz egy 'strain' jelzőt."""
        "Backwards Tailslide":
           text: """Amikor gyorsítasz vagy orsózol, ha a felszerelt %CONFIGURATION% fejlesztésed a 'zárva' oldala van felfelé, átmozoghatsz vagy rámozoghatsz akadályra.<br>Miután átgyorsítasz vagy átorsózol egy akadályon, ha nem vagy 0 távolságban tőle, kapsz 1  %EVADE% jelzőt."""
        "Overdrive Thruster":
           text: """Amikor végrehajtasz egy piros %BOOST%, %BARRELROLL% vagy %SLAM% akciót, ha tudsz, 1-gyel gyorsabb sablont <b>kell</b> használnod."""
        "R2-D2 (Resistance)":
           text: """A Vége fázis alatt, elkölthetsz 1 %CHARGE% és 1 %SHIELD% jelzőt, hogy levegyél 1 piros jelzőt magadról.<br>A Vége fázis alatt, ha nincs aktív pajzsod, elkölthetsz 2 %CHARGE% jelzőt, hogy visszatölts 1 %SHIELD% jelzőt és kapj 1 'deplete' jelzőt."""
        "R6-D8":
           text: """Amikor végrehajtasz egy támadás, újradobhatsz annyi támadókockát, ahány 0-3-as távolságban lévő baráti hajónak a %BULLSEYEARC% ívében van a védekező."""
        "Underslung Blaster Cannon":
           text: """Miután egy ellenséges hajó végrehajt egy manővert, végrehajthatod ezt a támadást ellene, mint bónusz támadás.<br><strong>Támadás (%LOCK%):</strong> A kockáid csak a bemérő elköltésével módosíthatók alaphatásként. (?)"""
        "Commander Pyre":
           text: """<strong>Felhelyezés:</strong> A hajók felhelyezése után válassz egy ellenséges hajót. Az kap 2 stressz jelzőt<br>Amikor védekezel, ha a támadó stresszes, újradobhatsz 1 védekezőkockát."""
        "Commander Malarus":
           text: """<strong>Felhelyezés:</strong> ezzel az oldalával szereld fel.<br>Amikor egy baráti nem-limitált hajó 0-1-es távolságban végrehajt egy elsődleges támadást, az a hajó újradobhatja 1 üres eredményét. Ha így tesz és a támadás nem talált, meg <b>kell</b> fordítanod ezt a kártyát.<br><strong>Perfected:</strong> Amikor végrehajtasz egy támadást, ha a védekező benne van a %BULLSEYEARC% ívedben, minden %FOCUS% eredményed át <b>kell</b> fordíts %HIT% eredményre és kapsz 1 stressz jelzőt. Aztán ,ha 2 vagy több stressz jelződ van, elszenvedsz 1 %HIT% sérülést."""
        "Automated Target Priority":
           text: """Amikor végrehajtasz egy támadást, a legközelebbi érvényes támadási távolságból <b>kell</b> választanod védekezőt.<br>Amikor végrehajtasz egy támadást, ami nem talált, helyezz 1 %CALCULATE% jelzőt erre a kártyára.<br>Mielőtt az Ütközet fázisban rád kerülne sor, levehetsz 1 %CALCULATE% jelzőt erről a kártyáról, hogy megkapd ugyanezt a jelzőt."""
        "Sensor Buoy Suite":
           text: """<strong>Felhelyezés:</strong> mielőt felhelyezed a hajóidat, helyezz 2 érzékelő bóját 2-es távolságon túl bármelyik pályaszéltől.<br>Mielőtt rád kerül a sor az Ütközet fázisban, rakhatsz egy bemérőt egy baráti érzékelő bójától 0-1 távolságban lévő hajóra, figyelmen kívül hagyva a távolság korlátozást."""
        "Kalani":
           text: """Miután egy ellenséges hajó végrehajt egy manővert, ha az benne van egy 0-3-as távolságban lévő baráti hajó %BULLSEYEARC% ívében, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, az a hajó feltehet egy bemérőt arra az ellenséges hajóra, aztán kap egy stressz jelzőt."""
        'Alpha-3B "Besh"':
           text: """Amikor végrehajtasz egy elsődleges támadást, elköltheted a védekezőn lévő bemérődet, hogy egy üres vagy %FOCUS% eredményt %HIT% eredményre változtass."""
        'Alpha-3E "Esk"':
           text: """Amikor végrehajtasz egy elsődleges támadást, mielőtt elgurítod a támadókockákat, elkölthetsz 2 %CHARGE% jelzőt. Ha így teszel, a %CRIT% eredményeid sérülés helyett ion jelzőt adnak a védekezőnek."""
        "Thermal Detonators":
           text: """A Rendszer fázis alatt elkölthetsz akár 2 %CHARGE% jelzőt, hogy ledobje ugyanannyi Thermal Detonators jelzőt az [1 %STRAIGHT%] vagy [2 %STRAIGHT%] sablont használva. Mindegyiknél különboző sablont kell használj.<br>Amikor újratöltöd ezt a kártyát, egy további %CHARGE% jelzőt is tölthetsz."""
        "R7-A7":
           text: """Amikor végrehajtasz egy támadást, elkölthetsz %CHARGE% jelzőt, hogy 1 %HIT% eredményt %CRIT% eredményre változtass."""
        "Q7 Astromech":
           text: """Amikor orsózol vagy gyorsítasz, átmozoghatsz vagy átfedésbe kerülhetsz akadályokkal."""
        "Ion Limiter Override":
           text: """Miután teljesen végrehajtasz egy piros manővert, végrehajthatsz egy %BARRELROLL% akciót, még ha stresszes is vagy. Ha így teszel, dobj egy támadókockával: %HIT% eredménynél kapsz 1 'strain' jelzőt, %CRIT% eredménynél 1 ion jelzőt."""
        "Precision Ion Engines":
           text: """Mielőtt végrehajtasz 1-3 sebességű [%KTURN%] manővert, elkölthetsz 1 %CHARGE% jelzőt, hogy helyette [%SLOOPLEFT%] vagy [%SLOOPRIGHT%] manővert hajts végre."""
        "Intercept Booster":
           text: """<strong>Attached:</strong> %SLAM% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <r>%LOCK%</r></i><br> <strong>Felhelyezés:</strong> Ezzel az oldalával felfelé szereld fel.<br> <i>(Added Actions available on this side only)</i><br>A Rendszer fázis alatt kapsz 1 'inaktív fegyverzet' jelzőt, hacsak meg nem fordítod ezt a kártyát.<br>A Vége fázis végén, ha nincs aktív %CHARGE% jelződ, fordítsd meg ezt a kártyát.<br> <strong>Detached:</strong> <i>üres</i>"""
        "XX-23 S-Thread Tracers":
           text: """<strong>Támadás: [%FOCUS%, %CALCULATE%, vagy %LOCK%]</strong>Költs el 1 %CHARGE% jelzőt. Ha a támadás talál, minden baráti hajó 1-3-as távolságra a védekezőtől kaphat egy bemérőt a védekezőre. Aztán semlegesíts minden kocka eredményt."""
        "Independent Calculations":
           text: """Helyettesítsd a <strong>Networked Calculations</strong> hajó képességed a következővel:<br><strong>Independent Calculations:</strong> Amikor végrehajtasz egy fehér %CALCULATE% akciót, kezelheted pirosként, hogy kapj 1 további %CALCULATE% jelzőt. Más hajók nem költhetik el a %CALCULATE% jelzőidet a <strong>Networked Calculations</strong> hajó képességet használva."""
        "Jango Fett":
           text: """Amikor védekezel vagy végrehajtasz egy támadást, elköltheted az ellenséges hajón lévő bemérődet, hogy az ellenséges hajó %FOCUS% eredményét üres eredményre változtasd."""
        "Zam Wesell":
           text: """<strong>Felhelyezés:</strong> Használj el 2 %CHARGE% jelzőt.<br>A Rendszer fázis alatt magadhoz rendelhetsz 1 titkos állapotkártyádat lefordítva: <strong>You Should Thank Me</strong> vagy <strong>You'd Better Mean Business.</strong>"""
        "Boba Fett (Separatist)":
           display_name: """Boba Fett"""
           text: """Amikor végrehajtasz egy támadást, ha nincs másik hajó a támadási tűzívedben, 1 %FOCUS% eredményed %HIT% eredményre változtathatsz."""
        "Slave I (Separatist)":
           display_name: """Slave I"""
           text: """Amikor végrehajtasz egy %FRONTARC% támadást, ha a védekező %FULLREARARC% ívében vagy 1 %HIT% eredményed %CRIT% eredményre változtathatsz."""
        "Weapons Systems Officer":
           text: """Miután végrehajtasz egy speciális támadást %LOCK% követelménnyel, feltehetsz egy bemérőt a védekezőre."""
        "False Transponder Codes":
           text: """Miután felteszel egy bemérőt egy objektumra vagy egy objektum feltesz rád egy bemérőt, ha van 1 aktív %CHARGE% jelződ, használj el 1 %CHARGE% jelzőt és rakj egy zavaró jelzőt arra az objektumra, figyelmen kívül hagyva a távolsági korlátozást."""
        "Vectored Cannons (RZ-1)":
           text: """Kapsz egy %SINGLETURRETARC% jelzőt. Elsődleges támadásnál kezeld a %FRONTARC% ív követelményét, mintha %SINGLETURRETARC% lenne.<br>Cseréld le a <strong>Vectored Thrusters</strong> hajó képességet a következővel:<br><strong>Vectored Cannons:</strong> A Rendszer fázis alatt végrehajthatsz egy piros %BOOST% vagy piros %ROTATEARC% akciót. A %SINGLETURRETARC% jelződet csak a %FRONTARC% vagy %REARARC% irányba forgathatod."""
        "B6 Blade Wing Prototype (Epic)":
           text: """Támadás (%LOCK%): Kapsz 1 ion jelzőt, hogy végrehajtsd ezt a támadást. Ha a támadás talált, a védekező elszenved az elsőt követő minden nem semlegesített eredmény után 1 további vele egyező %HIT%/%CRIT% sérülést."""
        "TIE Defender Elite":
           text: """Csökkentsd a nehézségét a (%TURNLEFT% és %TURNRIGHT%) manővereknek. Növeld a nehézségét a visszaforduló (%KTURN%) manővereknek. Cseréled le a <strong>Full Throttle</strong> hajó képességet a következővel:<br><strong>Advanced Fire Control:</strong> Miután végrehajtasz egy %CANNON% vagy %MISSILE% támadást, ha van bemérőd a védekezőn, végrehajthatsz egy bónusz elsődleges támadást a védekező ellen."""
        "Sensitive Controls":
           text: """Cseréld le a <strong>Autothrusters</strong> hajó képességet a következővel:<br><strong>Sensitive Controls:</strong> A Rendszer fázis alatt végrehajthatsz egy piros %BARRELROLL% vagy piros %BOOST% akciót."""
        "Cutthroat":
           text: """Miután egy baráti hajó 0-3-as távolságban megsemmisült, ha az a hajó limitált vagy felszerelt a <strong>Cutthroat</strong> fejlesztéssel, leveheted egy narancs vagy piros jelződet vagy visszatöltheted egy nem visszatöltődő %CHARGE% jelződet a hajókártyádon vagy egy felszerelt fejlesztéseden."""
        "Tierfon Belly Run":
           text: """Végrehajthatsz speciális támadást, akkor is, ha 0 távolságra vagy egy aszteroidától.<br>Amikor védekezel , ha 0-as távolságra vagy egy akadálytól, a támadókockák nem újradobhatók."""
        "B6 Blade Wing Prototype":
           text: """ """
        "Phoenix Squadron":
           text: """<strong>Setup Side:</strong><br>Setup: Equip this side faceup. <br> You are a <b>wing leader</b>. Your wingmates must be 2-5 of the following: <br> - 0-1 Attack Shuttle <br> - 0-1 Sheathipede-class Shuttle <br> - 0-5 RZ-1 A-wings <br> After you are placed, flip this card. <br> <strong>Play Side:</strong><br> At the start of the Planning Phase, 1 of your wingmates that is docked with you may join your wing without gaining a stress token. <br> While you or your Attack Shuttle wingmate or Sheathipede-class wingmate defends, up to 2 of your RZ-1 A-Wing wingmates in the attack arc may each suffer 1 %HIT%/%CRIT% damage to cancel 1 matching result."""
        "Hopeful":
           text: """Miután egy baráti hajó 0-3-as távolságban megsemmisült, ha az a hajó limitált vagy felszerelt a <strong>Hopeful</strong> fejlesztéssel, végrehajthatsz egy %FOCUS% vagy %BOOST% akciót."""
        "Sabine Wren (Gunner)":
           display_name: """Sabine Wren"""
           text: """Miután végrehajtasz egy speciális támadást, kiválaszthatsz annyi baráti hajót a védekezőtől 0-3-as távolságban, amennyi sérülés kártyát kapott a védekező a támadás alatt. Minden kiválasztott hajó levehet magáról 1 'strain' vagy stressz jelzőt."""
        "Disciplined":
           text: """Miután egy baráti hajó 0-3-as távolságban megsemmisült, ha az a hajó limitált vagy felszerelt a <strong>Disciplined</strong> fejlesztéssel, végrehajthatsz egy %LOCK% vagy %BARRELROLL% akciót."""
        "Shadow Wing":
           text: """<strong>Setup Side:</strong><br>Setup: Equip this side faceup. <br> You are a <b>wing leader</b>. Your wingmates must be 2-5 other ships of your type. <br> After you are placed, flip this card. <br> <strong>Play Side:</strong><br> Your wingmates can perform %BARRELROLL% or %BOOST% actions. If they do, they voluntarily split from the wing. <br> While you defend, up to 2 of your wingmates in the attack arc may each suffer 1 %HIT%/%CRIT% damage to cancel 1 matching result."""
        "Skystrike Academy Class":
           text: """<strong>Setup Side:</strong><br>Setup: Equip this side faceup. <br> You are a <b>wing leader</b>. Your wingmates must be 2-5 TIE/ln FIghters with initiative lower than yours. <br> After you are placed, flip this card. <br> <strong>Play Side:</strong><br> After you barrel roll or boost, each of your wingmates is forced to split from the wing <br> While you defend, up to 5 of your wingmates in the attack arc may each suffer 1 %HIT%/%CRIT% damage to cancel 1 matching result."""
        "In It For The Money":
           text: """<strong>In It For The Money:</strong><br>Setup: Equip this side faceup. <br> You can be included in Republic, Rebel, and Resistance squads. <br> After an allied limited ship in your squad is destroyed, gain 1 focus token and flip this card. <br> <strong>In It For Your Rebellion:</strong><br> Non-Scum ships in your squad are treated as friendly instead of allied."""
        "Bounty":
           text: """<strong>Hired:</strong><br>Setup: Equip this side faceup. <br> You can be included in Separatist, Imperial , and First Order squads. <br> After you perform an attack, if the defender was a limited ship and was destroyed, you may recover 1 %CHARGE% on your ship card and each of your upgrade cards. Then flip this card. <br> <strong>Paid:</strong><br> """
        "Gamut Key":
           text: """A Vége fázis elején, elkölthetsz 2 %CHARGE% jelölőt, hogy válassz egy hajót 0-1-es távolságban 1 vagy több kör alakú jelzővel. A vége fázis alatt a kör alakú jelzők nem kerülnek le arról a hajóról."""
        "Interloper Turn":
           text: """Mielőtt végrehajtasz egy 1-2 sebességű kanyart (%TURNLEFT% vagy %TURNRIGHT%) vagy 1-2 sebességű visszafordulót (%KTURN%), ha 0-1 távolságban vagy egy aszteroidától, struktúrától vagy óriás hajótól, kaphatsz 1 vonósugár jelzőt."""
        "Protectorate Gleb":
           text: """Miután koordinálsz egy baráti hajót, átadhatsz 1 narancs vagy piros jelzőt a koordinált hajónak."""
        "R4-B11":
           text: """Amikor végrehajtasz egy támadást, levehetsz 1 narancs vagy piros jelzőt a védekezőről, hogy újradobj bármennyi védőkockát."""
        "Wartime Loadout":
           text: """Kapsz egy %TORPEDO% és egy %MISSILE% fejlesztés helyet.<br>Cseréld ki a hajó képességedet ezzel:<br><strong>Devastating Barrage:</strong> Amikor végrehajtasz egy %TORPEDO% vagy %MISSILE% támadást, ha a védekező benne van a %BULLSEYEARC% ívedben, a %CRIT% eredmények nem hatástalaníthatók %EVADE% eredménnyel."""
        "Watchful Astromech":
           text: """Miután végrehajtasz egy %RELOAD% vagy %ROTATEARC% akciót, ha benne vagy egy ellenséges hajó tűzívében, végrehajthatsz egy piros %CALCULATE% akciót."""
        "L4E-R5":
           text: """Az Ütközet fázis elején, átadhatsz 1 %CALCULATE% jelzőt egy baráti hajónak a tűzívedben."""
        "Overtuned Modulators":
           text: """A Rendszer fázis alatt, ha nem vagy stresszes, elkölthetsz 1 %CHARGE% jelzőt, hogy kapj 3 %CALCULATE% jelzőt.<br>A Vége fázis alatt, ha a %CHARGE% jelződ inaktív, minden levett zöld jelződ után kapsz 1 'strain' jelzőt."""
        "Sensor Scramblers":
           text: """<strong>Felhelyezés:</strong> Kapsz 1 %CLOAK% jelzőt.<br>Amíg álcázva vagy, más hajók nem tehetnek rád bemérőt.<br>A Vége fázis alatt ha álcázva vagy és 0-3-as távolságban van ellenséges hajó, vissza <b>kell</b> jönnöd álcázásból. Ha így teszel és a decloak nem sikerült, elvesztesz 1 %CLOAK% jelzőt."""
        "Enhanced Jamming Suite":
           text: """Amikor zavarás akciót hajtasz végre, választhatod magadat vagy egy másik baárti hajót.<br>Amikor védekezel, ha a támadónak nincs zöld jelzője vagy van zavart hajó a támadási tűzívben, 1-gyel több védekezőkockával dobhatsz."""
        "Compassion":
           text: """Mielőtt egy másik baráti hajó 0-2-es távolságban egy felfordított <b>Pilot</b> vagy <b>Crew</b> sérüléskártyát kap, elkölthetsz 1 %FORCE% jelzőt. Ha így teszel, azt a kártyát dobd ki és húzz 1 lefordított sérülés kártyát. Aztán, ha 2 vagy több sérülés kártyád van, tölts vissza 2 %FORCE%  jelzőt."""
        "Malice":
           text: """Amikor végrehajtasz egy támadást, elkölthetsz 1 %FORCE% jelzőt, hogy egy %FOCUS% vagy %HIT% eredményt %CRIT% eredményre változtass. Ha így teszel, ha a védekező 1 vagy több <b>Pilot</b> vagy <b>Crew</b> sérüléskártyát kap, tölts vissza 2 %FORCE%  jelzőt."""
        "Shattering Shot":
           text: """Amikor végrehajtasz egy támadást, ha a támadás akadályozott egy akadály által vagy a védekező 0 távolságra van egy akadálytól, elkölthetsz 1 %FORCE% jelzőt, hogy 1 %FOCUS% eredményt adj a dobásodhoz."""
        "DT-798":
           text: """Az Ütközet fázis elején választhatsz egy baráti hajót a tűzívedben. Ha így teszel, az a hajó kap 1 'strain' jelzőt.<br>Amikor végrehajtasz egy támadást, újradobhatsz 1 kockát minden támadási tűzívedben lévő nem bemérő piros vagy narancs jelző után."""
        "Feedback Ping":
           text: """Miután egy ellenséges hajó végrehajt egy manővert, ha az 0-1 távolságba kerül egy baráti eszközhöz, felhelyezhetsz egy bemérőt arra a hajóra, a távolság követelményet figyelmen kívül hagyva."""
        "Electro-Chaff Missiles":
           text: """A Rendszer fázisban elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy kilőjj 1 elektro fátyol felhőt a [3 %BANKLEFT%], [3 %BANKRIGHT%] vagy [4 %STRAIGHT%] sablonnal. Aztán helyezz 1 késleltető jelzőt az eszközre. <br>Ennek a kártyának a %CHARGE% jelzője <strong>nem</strong> újratölthető."""
        "Babu Frik":
           text: """Mielőtt kapnál egy nem bemérő piros vagy narancs jelzőt, elkölthetsz 1 %CHARGE% jelzőt, hogy elhelyezd azt ezen a kártyán. A Rendszer fázis alatt, ha 1 vagy több felrakott jelző van ezen a kártyán, el <b>kell</b> költsél 1 %CHARGE% jelzőt. Ha már nem tudsz elkölteni, vedd le a jelzőket, hogy a hajód kapja meg őket."""
        "Ahsoka Tano (Crew)":
           display_name: """Ahsoka Tano"""
           text: """Miután teljesen végrehajtasz egy manővert, elkölthetsz 1 %FORCE% jelzőt, hogy válassz 1 baráti hajót a %FULLREARARC% ívedben 1-2-es távolságban. Ha így teszel, az a hajó végrehajthat egy piros %FOCUS% akciót akár stresszesen is."""
        "Bo-Katan Kryze (Republic/Separatist)":
           display_name: """Bo-Katan Kryze"""
           text: """Amikor végrehajtasz egy támadást, ha 0-1-es távolságra vagy a védekezőtől, újradobhatsz 1 támadókockát."""
        "Bo-Katan Kryze (Rebel/Scum)":
           display_name: """Bo-Katan Kryze"""
           text: """Miután végrehajtasz egy támadást, ha a védekező megsemmisül, minden baráti hajó 0-2-es távolságban levehet 1 piros vagy narancs jelzőt."""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """Mielőtt egy baráti hajó 0-2-es távolságban támad, ha felfedett manővere 1-es vagy magasabb sebességű és van ellenséges hajó 1-es távolságban a %FRONTARC% ívében, az a abaráti hajó levehet egy nem-bemérő piros jelzőt."""
        "Captain Hark":
           display_name: """Captain Hark"""
           text: """Miután teljesen végrehajtottál egy piros manővert, ha nincs %FOCUS% jelződ, elkölthetsz 1 %CHARGE% jelzőt, hogy kapj 1 %FOCUS% jelzőt."""
        "Gar Saxon":
           display_name: """Gar Saxon"""
           text: """Amikor egy baráti hajó 1-3-as távolságban 4-es vagy kisebb kezdeményező értékkel végrehajt egy támadást egy olyan védekező ellen, akin rajta van a bemérőd, a támadó 1 %FOCUS% eredményt 1 %HIT% eredményre változtathat."""
        "Gar Saxon (Gunner)":
           display_name: """Gar Saxon"""
           text: """Amikor végrehajtasz egy %LOCK% akciót, csak a %FRONTARC% vagy %REARARC% ívedből választhatsz objektumot.<br>Amikor végrehajtasz egy elsődleges támadást, ha a védekező benne van a %FRONTARC% or %REARARC% ívedben, levehetsz 1 narancs vagy piros jelzőt a védekezőről, hogy további 1 támadókockával dobj, de legfeljebb 4-gyel."""
        "Korkie Kryze":
           display_name: """Korkie Kryze"""
           text: """Miután egy baráti hajó a %FULLFRONTARC% ívedben 1-2-es távolságban védekező lesz, átadhatsz neki 1 zöld jelzőt.<br>Amikor egy baráti hajó %FULLFRONTARC% ívedben 1-2-es távolságban védekezik, ha a támadás akadályozott, a védekező további 1 védekezőkockával dob."""
        "Obi-Wan Kenobi":
           display_name: """Obi-Wan Kenobi"""
           text: """Miután egy baráti hajó 1-2-es távolságban elkölt egy %FOCUS% vagy %EVADE% jelzőt, elkölthetsz 1 %FORCE% jelzőt. Ha így teszel, az a hajó kap 1 %FOCUS% jelzőt."""
        "Pre Vizsla":
           display_name: """Pre Vizsla"""
           text: """Amikor végrehajtasz egy %COORDINATE% akciót, választhatsz egy baráti %CREW% eszközt a baráti hajó helyett. Akció végrehajtása helyett az eszköz előre mozog a [1 %TURNLEFT%], [1 %TURNRIGHT%] vagy [2 %STRAIGHT%] sablon segítségével."""
        "Rook Kast":
           display_name: """Rook Kast"""
           text: """Miután végrehajtasz egy piros akciót, kaphatsz egy 'strain' jelzőt.<br>Amikor végrehajtasz egy támadást, ha van 'strain' jelződ, megváltoztathatsz 1 üres vagy %FOCUS% eredményt %HIT% eredményre."""
        "Satine Kryze":
           display_name: """Satine Kryze"""
           text: """Az Ütközet fázis elején elkölthetsz 2 %CHARGE% jelzőt. Ha így teszel, mindegyik baráti hajó választhat hogy kap 1 'deplete' és %FOCUS% jelzőt, vagy 1 'inaktív fegyverzet' és 1 %EVADE% jelzőt."""
        "Savage Opress":
           display_name: """Savage Opress"""
           text: """Miután egy baráti hajó a %FRONTARC% ívedben 1-2-es távolságban kap egy stressz vagy 'strain' jelzőt, elkölthetsz 1 %FORCE% jelzőt. Ha így teszel, az a hajó kap 1 %FOCUS% jelzőt."""
        "Tal Merrik":
           display_name: """Tal Merrik"""
           text: """<strong>Felhelyezés:</strong> Mielőtt felhelyezed a hajóidat, válassz 1  ellenséges hajót és rendeld hozzá a <b>False Friend</b> állapotkártyát.<br><strong>Akció:</strong> Ha a <b>False Friend</b> állapotkártya nincs hozzárendelve egy ellenséges hajóhoz, rendeld hozzá egy ellenséges hajóhoz a %FRONTARC% ívedben 0-2-es távolságban."""
        "Tiber Saxon":
           display_name: """Tiber Saxon"""
           text: """Miután végrehajtasz egy támadást, 1-2-es távolságban ami talált, ha a védekezőnek nincs felfordított sérülés kártyája, elkölthetsz 1 vagy több %CHARGE% jelzőt. Minden elköltött %CHARGE% jelződ után a védekező kap 1 'strain' jelzőt."""
        "Tristan Wren":
           display_name: """Tristan Wren"""
           text: """Amikor eegy baráti egység 0-3-as távolságban végrehajt egy %RANGEBONUS% támadást, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, a támadó megváltoztathat 1 %HIT% eredményt %CRIT% eredményre."""
        "Ursa Wren":
           display_name: """Ursa Wren"""
           text: """Fenntarthatsz 2 bemérő jelzőt. Mindegyik bemérő külöböző objektumon kell legyen.<br>Miután egy baráti hajót 0-3-as távolságban bemérnek, te is feltehetsz egy bemérőt egy ellenséges hajóra."""
        "Ursa Wren (Gunner)":
           display_name: """Ursa Wren"""
           text: """Miután felteszel egy bemérőt egy ellenséges egységre 2-es távolságon túl, ha nincs baráti egység 0-1-es távolságban a bemért egységtől, kapsz 1 %CALCULATE% jelzőt."""
        "Sabine Wren (Command)":
           display_name: """Sabine Wren"""
           text: """<strong>Felhelyezés:</strong> Mielőtt felhelyezed a hajóid, rendeld a <b>Trials of the Darksaber</b> állapotkártyát magadhoz.<br>Amikor végrehajtasz egy %COORDINATE% akciót, koordinálhatsz 1 további baráti hajót."""
        "Prime Minister Almec":
           display_name: """Prime Minister Almec"""
           text: """<strong>Felhelyezés:</strong> Ezzel az oldallal szereld fel.<br>Miután egy baráti hajó 0-2-es távolságban felfed egy fehér manővert, ha nincs zöld jelzője, kaphat 1 stressz jelzőt, hogy kapjon 1 %CALCULATE% jelzőt.<br> A Vége fázis alatt ha 2 vagy több stressz jelződ van fordítsd meg ezt a kártyát.<br><strong>Almec, Maul's Puppet</strong>: Miután egy baráti hajó 0-2-es távolságban végrehajt egy piros manővert, az a hajó végrehajthat egy %CALCULATE% vagy %FOCUS% akciót, akár stresszesen is."""
        "Beskar Reinforced Plating":
           text: """Amikor védekezel, ha a támadó benne van a %FRONTARC% ívedben, mielőtt kapsz egy felfordított sérülés kártyát, elkölthetsz 1 %CHARGE% jelzőt, hogy lefordítva kapd meg vagy elkölthetsz 2 %CHARGE% jelzőt, hogy eldobhasd."""
        "Blazer Bomb":
           text: """<strong>Bomba</strong><br>A Rendszer fázisban elkölthetsz 1&nbsp;%CHARGE% jelzőt, hogy ledobd a Blazer bombát a [1&nbsp;%STRAIGHT%] sablonnal."""
        "Mandalorian Optics":
           text: """A Rendszer fázis alatt elkölthetsz 1 %CHARGE% jelzőt, hogy feltegyél egy bemérőt egy objektumra a %FRONTARC% ívedben<br>Amikor végrehajtasz egy elsődleges támadást, ha van bemérőd a védekezőn, hagyd figyelmen kívül az akadályokat a 0 távolságon túli  akadályozott támadásnál."""
        "Clan Training":
           text: """Mielőtt sorra kerülsz az Ütközet fázisban, ha nincs %FOCUS% jelölőd és nincs ellenséges hajó a %FRONTARC% ívedben 1-es távolságban, elkölthetsz 1 %CHARGE% jelzőt, hogy végrehajts 1 piros %FOCUS% akciót.<br>Miután végrehajtasz egy támadást, ha a védekező megsemmisült, állíts vissza 1 %CHARGE% jelzőt."""
        "Gauntlet":
           text: """A Rendszer fázis alatt elkölthetsz 1 %CHARGE% jelzőt, hogy megjavíts 1 felfordított <b>Hajó</b> sérülés kártyát."""
        "Nightbrother":
           text: """Miután felfedsz egy nem-kék manővert, ha stresszes vagy elkölthetsz 2 %CHARGE% jelzőt, hogy kapj 1 %FOCUS% vagy %EVADE% jelzőt."""
        "Swivel Wing":
           text: """<strong>Swivel Wing (Down)</strong>: Miután végrehajtasz egy [0 %STOP%] manővert, elforgathatod a hajót 90 vagy 180 fokkal. Ha így teszel, meg <b>kell</b> fordítsd ezt a kártyát.<br><strong>Swivel Wing (Up)</strong>: Amikor védekezel, 1-ggyel kevesebb védekezőkockával dosz.<br>Miután feljesen végrehajtottál egy nem-álló [%STOP%] manővert, megfordíthatod ezt a kártyát."""
        "Clan Wren Commandos":
           text: """A rendszer fázis alatt elkölthetsz 1 %CHARGE% jelzőt, hogy kidobj egy 'Commando Team' lapkát a [1 %STRAIGHT%] sablont használva. Lehelyezheted ezt az eszközt az első és a hátsó segédpöckök segítségével.<br>Ennek a kártyának a %CHARGE% jelzői nem újratölthetők."""
        "Death Watch Commandos":
           text: """A rendszer fázis alatt elkölthetsz 1 %CHARGE% jelzőt, hogy kidobj egy 'Commando Team' lapkát a [1 %STRAIGHT%] sablont használva. Lehelyezheted ezt az eszközt az első és a hátsó segédpöckök segítségével.<br>Ennek a kártyának a %CHARGE% jelzői nem újratölthetők."""
        "Nite Owl Commandos":
           text: """A rendszer fázis alatt elkölthetsz 1 %CHARGE% jelzőt, hogy kidobj egy 'Commando Team' lapkát a [1 %STRAIGHT%] sablont használva. Lehelyezheted ezt az eszközt az első és a hátsó segédpöckök segítségével.<br>Ennek a kártyának a %CHARGE% jelzői nem újratölthetők."""
        "Imperial Super Commandos":
           text: """A rendszer fázis alatt elkölthetsz 1 %CHARGE% jelzőt, hogy kidobj egy 'Commando Team' lapkát a [1 %STRAIGHT%] sablont használva. Lehelyezheted ezt az eszközt az első és a hátsó segédpöckök segítségével.<br>Ennek a kártyának a %CHARGE% jelzői nem újratölthetők."""
        "Mandalorian Super Commandos":
           text: """A rendszer fázis alatt elkölthetsz 1 %CHARGE% jelzőt, hogy kidobj egy 'Commando Team' lapkát a [1 %STRAIGHT%] sablont használva. Lehelyezheted ezt az eszközt az első és a hátsó segédpöckök segítségével.<br>Ennek a kártyának a %CHARGE% jelzői nem újratölthetők."""
        "Razor Crest":
           text: """<strong>Felhelyezés:</strong> Helyezz 1 nem-limitált %ILLICIT% fejlesztést lefordítva e kártya alá.<br>A Rendszer fázis alatt felfedheted ezt az %ILLICIT% fejlesztést."""
        "The Mandalorian":
           text: """A Vége fázis alatt ha nem védekeztél ebben a körben, visszatölthetsz 1 nem-visszatölthető %FORCE% jelzőt, ha tudsz."""
        "The Child":
           text: """<strong>Felhelyezés:</strong> Miután felhelyezted a hajóidat, válassz egy ellenfelet, aki hozzárendeli a <b>Merciless Pursuit</b> állapotkártyát 2 hajódra.<br>Az erőd elveszti a visszatöltés lehetőségét. Miután védekezel, ha sérülést szenvedtél a támadás alatt, visszatölthetsz 1 %FORCE% jelzőt."""
        "Tracking Fob":
           text: """<strong>Felhelyezés:</strong> Miután felhelyezted a hajóidat, válassz egy ellenfelet, rendeld hozzá a <b>Marked for Elimination</b> állapotkártyát egyik hajójára. Limitált hajónak kell lenni, ha ez lehetséges.<br>Figyelmen kívül hagyhatod a távolság korlátozást amikor felteszel egy bemérőt a <b>Marked for Elimination</b> állapotkártyával rendelkező hajóra."""
        "Notorious":
           text: """Miután védekezel, ha a támadó a tűzívedben van, elkölthetsz 1 %CHARGE% jelzőt. Ha így teszel, a támadó kap 1 'strain' jelzőt.<br>Amikor végrehajtasz egy támadást, ha a védekezőnek van 'strain' jelzője, újradobhatsz 1 üres eredményt."""
        "Enduring":
           text: """Amikor védekezel, ha nem vagy a támadó %BULLSEYEARC% ívében, a %CRIT% eredmények a %HIT% eredmények előtt semlegesíthetők.<br>Miután elszenvedsz egy %CRIT% sérülést, végrehajthatsz egy %CALCULATE% vagy %FOCUS% akciót az akciósávodról, akár stresszesen is, pirosként kezelve."""
        "IG-11":
           text: """<strong>Felhelyezés:</strong> Ezzel az oldallal szereld fel.<br>Mielőtt kapnál egy felfordított sérülés kártyát, helyette el kell helyezz 1 időzítő jelzőt ezen a kártyán és kapsz 1 %CALCULATE% jelzőt. Ha 2 időzítő jelző van ezen a kártyán, fordítsd meg.<br> <strong>IG-11 (Anti-Capture Protocol)</strong> A Vége fázisban vegyél le 1 időzítő jelzőt erről a kártyáról. Ha a kártyán már nincs több időzítő jelző, megsemmisülsz és minden hajó 0-1-es távolságban elszenved 1 %CRIT% sérülést.<br><strong>Akció:</strong> Helyezz 1 időzítő jelzőt erre a kártyára."""
        "Greef Karga":
           text: """Koordinálhatsz szövetsége hajót, mintha baráti hajó lenne.<br>Miután koordináltál egy hajót, az feltehet egy bemérőt arra az objektumra amit bemértél."""
        "Kuiil":
           text: """<strong>Akció:</strong> Dobj 1 támadókockát minden sérüléskártyád után. Minden %HIT% eredmény után javíts meg 1 felfordított <b>Hajó</b> sérüléskártyát, minden %CRIT% eredmény után javíts meg 1 lefordított sérülés kártyát, minden üres eredmény után vegyél le 1 narancs jelzőt, minden %FOCUS% eredmény után kapsz 1 %FOCUS% jelzőt."""
        "Peli Motto":
           text: """A Rendszer fázis alatt végrehajthatsz egy sérüléskártya akciót, akár stresszesen is.<br>Miután megjavítottál egy <b>Hajó</b> sérüléskártyát, dobj 1 támadókockával. %HIT% eredménynél javíts meg egy másik <b>Hajó</b> sérüléskártyát %CRIT% eredménynél fordíts fel egy sérüléskártyát."""
        "Migs Mayfeld":
           text: """Miután végrahjtottál egy %FRONTARC% támadást, végrehajthatsz egy %REARARC% vagy %SINGLETURRETARC% bónusz támadást 1 vagy több narancs vagy piros jelzővel rendelkező másik célpontra."""
        "Burnout Thrusters":
           text: """Miután végrehajtasz egy %SLAM% akciót, elvesztesz 1 %CHARGE% jelzőt. Aztán kaphatsz 1 'deplete' jelzőt, hogy levegyél egy 'inaktív fegyverzet' jelzőt<br>Ha a %CHARGE% jelzőt inaktív, nem hajthatsz végre %SLAM% akciót."""
        "Hotshot Tail Blaster":
           text: """Ez a támadás végrehajtható 0-ás távolságban.<br><strong>Támadás:</strong> Költs el 1 %CHARGE% jelzőt."""
        "Drop-Seat Bay":
           text: """Ha kidobnál egy %CREW% eszközt egy [%STRAIGHT%] sablonnal, helyette használhatsz ugyanazon sebességű [%BANKLEFT% vagy %BANKRIGHT%] sablont és illesztheted a sablon középvonalát a hajód bal vagy jobb középvonalához a hátsó segédpöckök helyett."""
        "Combat Boarding Tube":
           text: """A Rendszer fázis alatt ha kidobnál egy %CREW% eszközt és egy ellenséges közepes, nagy vagy óriás hajó van a 0-1-es távolságban a %REARARC% ívedben, helyette elhelyezheted az eszközt a %REARARC% ívedben 0-1-es távolságban 0-ás távolságban az ellenséges hajótól. Ekkor az ellenséges hajó kap választásod szerint 1 'deplete', 'strain' vagy stressz jelzőt."""


        # Epic upgrades
        "Admiral Ozzel":
           display_name: """Admiral Ozzel"""
           text: """While a friendly large or huge ship at range 0-3 executes a maneuver, it may suffer 1 %HIT% damage to execute a maneuver of the same bearing and difficulty of a speed 1 higher or lower instead."""
        "Azmorigan":
           display_name: """Azmorigan"""
           text: """During the End Phase, you may choose up to 2 friendly ships at range 0-1. If you do, each of these ships does not remove 1 calculate or evade token."""
        "Captain Needa":
           display_name: """Captain Needa"""
           text: """After a friendly ship at range 0-4 reveals its dial, you may spend 1 %CHARGE%. If you do, it sets its dial to another maneuver of the same difficulty and speed."""
        "Strategic Commander":
           display_name: """Strategic Commander"""
           text: """After a friendly ship at range 0-4 reveals its dial, you may spend 1 %CHARGE%. If you do, it sets its dial to another maneuver of the same difficulty and speed."""
        "Carlist Rieekan":
           display_name: """Carlist Rieekan"""
           text: """After a friendly ship at range 0-2 is destroyed, you may choose a friendly ship at range 0-2. If you do, it may perform a red %EVADE% action."""
        "Jan Dodonna":
           display_name: """Jan Dodonna"""
           text: """Friendly ships at range 0-3 can spend your focus and evade tokens."""
        "Raymus Antilles":
           display_name: """Raymus Antilles"""
           text: """After you are destroyed, each friendly ship at range 0-1 gains 1 focus token. After you are destroyed, you are not removed until the end of the End Phase."""
        "Stalwart Captain":
           display_name: """Stalwart Captain"""
           text: """After you are destroyed, you are not removed until the end of the End Phase."""
        "Agent of the Empire":
           display_name: """Agent of the Empire"""
           text: """You are a <strong>wing leader</strong>. Your wingmates must be 2, 3, 4, or 5 TIE/ln fighters. <br> While you defend, up to 2 of your wingmates in the attack arc may suffer 1 %HIT% or %CRIT% damage to cancel a matching result."""
        "First Order Elite":
           display_name: """First Order Elite"""
           text: """You are a <strong>wing leader</strong>. Your wingmates must be 2 or 3 TIE/fo fighters or TIE/sf fighters. <br> While you defend, up to 2 of your wingmates in the attack arc may suffer 1 %HIT% or %CRIT% damage to cancel a matching result."""
        "Veteran Wing Leader":
           display_name: """Veteran Wing Leader"""
           text: """You are a <strong>wing leader</strong>. Your wingmates must be 2, 3, 4, or 5 other ships of your ship type. <br> While you defend, up to 2 of your wingmates in the attack arc may suffer 1 %HIT% or %CRIT% damage to cancel a matching result."""
        "Dreadnought Hunter":
           display_name: """Dreadnought Hunter"""
           text: """While you perform an attack against a huge ship, if the attack deals a faceup damage card to the defender and the defender is in your %BULLSEYEARC%, you may apply the <strong>Precision Shot</strong> effect even if you are not in the specified arc."""
        "Ion Cannon Battery":
           display_name: """Ion Cannon Battery"""
           text: """<strong>Online: </strong> Setup: Equip this side faceup.<br> Bonus Attack: Spend 1 %ENERGY%. If this attack hits, the defender suffers 1 %CRIT% damage, and all %HIT%/%CRIT% results inflict ion tokens instead of damage. <br><strong>Offline: </strong> <br> After you engage, you may spend 2 %ENERGY% to flip this card."""
        "Targeting Battery":
           display_name: """Targeting Battery"""
           text: """<strong>Online: </strong> Setup: Equip this side faceup.<br> Bonus Attack: Spend 1 %ENERGY%. After you perform this attack, you may acquire a lock on the defender. <br><strong>Offline: </strong> <br> After you engage, you may spend 2 %ENERGY% to flip this card."""
        "Ordnance Tubes":
           display_name: """Ordnance Tubes"""
           text: """<strong>Online: </strong> Setup: Equip this side faceup. <br> You can perform %TORPEDO% and %MISSILE% attacks only as bonus attacks. You <strong>must</strong> treat the %FRONTARC% requirement of your equipped %TORPEDO% and %MISSILE% upgrades as %FULLFRONTARC%. <br> Bonus Attack: Perform a %TORPEDO% attack. <br> Bonus Attack: Perform a %MISSILE% attack. <br><strong>Offline: </strong> <br> You must treat the %FRONTARC% requirement of your equipped %TORPEDO% and %MISSILE% upgrades as %BULLSEYEARC%. <br> Action: Spend 2 %ENERGY% to flip this card."""
        "Point-Defense Battery":
           display_name: """Point-Defense Battery"""
           text: """<strong>Online: </strong> Setup: Equip this side faceup. <br> Bonus Attack: Spend 1 %ENERGY%. <br> Bonus Attack: Spend 1 %ENERGY%. <br> Bonus Attack: Spend 1 %ENERGY%. <br> Bonus Attack: Spend 1 %ENERGY%. <br><strong>Offline: </strong> <br> After you engage, you may spend 2 %ENERGY% to flip this card."""
        "Turbolaser Battery":
           display_name: """Turbolaser Battery"""
           text: """<strong>Requires:</strong> 5 or more energy</i><br><i><strong>Online: </strong> Setup: Equip this side faceup.<br> Bonus Attack (%LOCK%): Spend 3 %ENERGY%. If this attack hits, add 3 %HIT% results. <br> <strong>Offline: </strong> <br> After you engage, you may spend 2 %ENERGY% to flip this card."""
        "Bombardment Specialists":
           display_name: """Bombardment Specialists"""
           text: """Adds %LOCK% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> %CALCULATE%. <br> While you perform an attack, you may spend 1 calculate token to increase or decrease the range requirement by 1, to a limit of 0-5."""
        "Comms Team":
           display_name: """Comms Team"""
           text: """Adds %COORDINATE% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> %CALCULATE%, %JAM% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> %CALCULATE%. <br> After you perform a %COORDINATE% action, you may spend up to 2 %ENERGY% to coordinate that many additional ships at range 0-1 of the ship you coordinated."""
        "IG-RM Droids":
           display_name: """IG-RM Droids"""
           text: """While you perform an attack, if you are calculating, you may change 1 %HIT% result to a %CRIT% result."""
        "Gunnery Specialists":
           display_name: """Gunnery Specialists"""
           text: """Adds %ROTATEARC% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> %CALCULATE%. <br> While you perform a primary or %HARDPOINT% attack, you may spend 1 or more %ENERGY% to reroll that many attack dice."""
        "Damage Control Team":
           display_name: """Damage Control Team"""
           text: """Adds %REINFORCE% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> %CALCULATE%. <br> Before you engage, you may spend 1 or more %ENERGY% to flip that many of your <strong>Offline</strong> upgrade cards.<br> Action: Spend 1 or more %ENERGY% to repair that many of your faceup <strong>Ship</strong> damage cards."""
        "Ordnance Team":
           display_name: """Ordnance Team"""
           text: """Adds %RELOAD% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> %CALCULATE%. <br> While you perform a %RELOAD% action, you may spend up to 3 %ENERGY% to reload that many additional %CHARGE% on your equipped %MISSILE%/%TORPEDO% upgrades. <br> After you perform a %RELOAD% action, you may spend 1 %ENERGY% to remove 1 disarm token."""
        "Sensor Experts":
           display_name: """Sensor Experts"""
           text: """Adds %LOCK% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> %CALCULATE%. <br> You can maintain up to 3 locks on different objects. <br> After you perform a %LOCK% action, you may spend up to 2 %ENERGY% to acquire a lock on that many other objects at range 0-1 of the object you locked, ignoring range restrictions."""
        "Quick-Release Locks":
           display_name: """Quick-Release Locks"""
           text: """During the System Phase, you may spend 1 %CHARGE% to drop 1 cargo crate drift using the [2 %BANKLEFT%], [2 %STRAIGHT%], or [2 %BANKRIGHT%] template. <br> This card's %CHARGE% cannot be recovered."""
        "Saboteur's Map":
           display_name: """Saboteur's Map"""
           text: """At the end of Setup, you may spend up to 1 %CHARGE% from each of your equipped <strong>Mine</strong> upgrades to place the corresponding device in the play area beyond range 2 of any enemy ship, strategic marker, or other device."""
        "Scanner Baffler":
           display_name: """Scanner Baffler"""
           text: """At the end of Setup, you may choose any number of other friendly, non-huge ships in your deployment area at range 0-1. If you do, place those ships anywhere in the same deployment area."""
        "Adaptive Shields":
           display_name: """Adaptive Shields"""
           text: """While another friendly ship at range 0-1 defends, if it is a smaller size than you, you may spend 1 shield or 2 %ENERGY% to cancel 1 %HIT% or %CRIT% result."""
        "Boosted Scanners":
           display_name: """Boosted Scanners"""
           text: """While you lock, coordinate, or jam, you may spend up to 3 %ENERGY% to increase the range at which you can choose an object by 1 per %ENERGY% spent this way, to a maximum of range 5."""
        "Optimized Power Core":
           display_name: """Optimized Power Core"""
           text: """After you execute a blue maneuver, recover 1 %ENERGY%."""
        "Tibanna Reserves":
           display_name: """Tibanna Reserves"""
           text: """Action: Spend 1 %CHARGE% to recover 2 %ENERGY%."""
        "Toryn Farr":
           display_name: """Toryn Farr"""
           text: """<i>Adds %LOCK% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <r>%COORDINATE%</r> <br>After you coordinate a friendly ship, it may acquire a lock on a ship you are locking, ignoring range restrictions."""
        "Dodonna's Pride":
           display_name: """Dodonna's Pride"""
           text: """<i>Adds %EVADE% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <r>%COORDINATE%</r>, %FOCUS% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <r>%COORDINATE%</r> <br> Removes 2 shields</i> <br> Adds %TEAM% and %CARGO% slots."""
        "Jaina's Light":
           display_name: """Jaina's Light"""
           text: """<i>Adds 1 shield. Removes 1 energy. <br></i> While a friendly ship at range 0-2 defends, if the attack is obstructed by an obstacle, you may spend 1 %ENERGY%. If you do, the defender rolls 1 additional defense die."""
        "Liberator":
           display_name: """Liberator"""
           text: """<i>Adds 1 energy. <br></i>You can dock up to 2 small ships. <br> After a ship deploys from you, it may perform a %FOCUS% or %BARRELROLL% action."""
        "Tantive IV":
           display_name: """Tantive IV"""
           text: """Add 2 %CREW% slots. <br> While you defend, if the attacker is in your %REARARC%, you may roll 1 additional defense die."""
        "Thunderstrike":
           display_name: """Thunderstrike"""
           text: """<i>Adds 3 hull. Removes 3 shields. <br></i> Adds %GUNNER% slot. <br> While you perform a bonus attack, if you have not attacked the defender this round, you may reroll 1 attack die."""
        "Bright Hope":
           display_name: """Bright Hope"""
           text: """You can reinforce only your %FULLFRONTARC%. <br> While you defend, if you are reinforced and the attacker is in your %FULLFRONTARC%, you may roll 1 additional defense die."""
        "Luminous":
           display_name: """Luminous"""
           text: """<i>Adds 2 energy. Removes 1 shield. <br></i>Setup: You are placed in reserve. <br> At the end of setup, you are placed in the play area at range 0-2 of a friendly ship."""
        "Quantum Storm":
           display_name: """Quantum Storm"""
           text: """<i>Adds 1 energy. <br></i>Adds %TEAM% and %CARGO% slots. <br> After you fully execute a white maneuver, recover 1 %ENERGY%."""
        "Assailer":
           display_name: """Assailer"""
           text: """<i>Adds 2 hull. Removes 2 shields. <br></i> Adds %GUNNER% slot. <br> While you defend, if the attack range is 1, you may roll 1 additional defense die."""
        "Corvus":
           display_name: """Corvus"""
           text: """You can dock up to 2 small ships. <br> After you perform a %CALCULATE% action, gain 1 calculate token."""
        "Impetuous":
           display_name: """Impetuous"""
           text: """<i>Adds 2 energy. Removes 2 shields. <br></i> Adds %CREW% slot. <br> After you perform an attack, if the defender was destroyed, you may perform a %FOCUS% or %LOCK% action."""
        "Instigator":
           display_name: """Instigator"""
           text: """Adds %TEAM% slot. <br> While you perform an attack, if the defender has an orange or red token, you may reroll up to 2 attack dice."""
        "Blood Crow":
           display_name: """Blood Crow"""
           text: """<i>Adds 2 energy. Removes 1 shield. <br></i> Adds %GUNNER% slot. <br> While you perform an attack at attack range 1-2, you may add 1 %FOCUS% result."""
        "Requiem":
           display_name: """Requiem"""
           text: """<i>Adds 1 energy. Removes 1 hull. <br></i> After a ship deploys from you, it may acquire a lock on one ship you are locking, ignoring range restrictions."""
        "Suppressor":
           display_name: """Suppressor"""
           text: """<i>Adds 2 shields. Removes 2 hull. <br></i> Adds %SENSOR% slot. <br> After you coordinate a friendly ship, you may spend 1 %ENERGY% to jam an enemy ship at range 0-2 of that ship, ignoring range restrictions."""
        "Vector":
           display_name: """Vector"""
           text: """Adds %CREW% and %CARGO% slots. <br> After a ship deploys from you, it may perform a %EVADE% or %BOOST% action."""
        "Broken Horn":
           display_name: """Broken Horn"""
           text: """Adds %CREW% and %ILLICIT% slots. <br> If you are damaged, reduce the difficulty of your speed 3-5 maneuvers."""
        "Merchant One":
           display_name: """Merchant One"""
           text: """Adds %TURRET%, %TEAM%, and %CARGO% slots. <br> Bonus Attack: Perform a %TURRET% attack."""
        "Insatiable Worrt":
           display_name: """Insatiable Worrt"""
           text: """<i>Adds 3 hull. Removes 1 shield and 1 energy. <br></i> Adds %CARGO% slot. <br> During the End Phase, you may recover 1 additional shield or 1 additional %ENERGY%."""
        "Corsair Refit":
           display_name: """Corsair Refit"""
           text: """<i>Adds 2 hull and 1 energy. Removes 2 shields. <br></i> Adds %CANNON%, %TURRET%, and %MISSILE% slots. <br> Bonus Attack: Spend 1 %ENERGY% to perform a %CANNON%, %TURRET%, or %MISSILE% attack."""

    condition_translations =
        'Suppressive Fire':
           text: '''Amikor végrehajtasz egy támadást más hajó ellen mint <strong>Captain Rex</strong>, dobj 1-gyel kevesebb kockával.<br> Miután <strong>Captain Rex</strong> védekezik, vedd le ezt a kártyát. <br> Az Ütközet fázis végén, ha <strong>Captain Rex</strong> nem hajtott végre támadást ebben a fázisban, vedd le ezt a kártyát. <br> Miután <strong>Captain Rex</strong> megsemmisült, vedd le ezt a kártyát.'''
        'Hunted':
           text: '''Miután megsemmisültél, választanod kell egy baráti hajót és átadni neki ezt az állapotkártyát.'''
        'Listening Device':
           text: '''A Rendszer fázisban, ha egy ellenséges hajó az <strong>Informant</strong> fejlesztéssel 0-2-es távolságban van, fedd fel a tárcsád.'''
        'Rattled':
           text: '''Miután egy bomba vagy akna 0-1-es távolságban felrobban, elszenvedsz 1 %CRIT% sérülést. Aztán vedd le ezt a kártyát.<br><strong>Akció:</strong> Ha nincs bomba vagy akna 0-1-es távolságban, vedd ele ezt a kártyát.'''
        'Optimized Prototype':
           text: '''Amikor végrehajtasz egy elsődleges %FRONTARC% támadást egy olyan hajó ellen, amit bemért <strong>Director Krennic</strong> fejlesztéssel felszerelt hajó, elkölthetsz 1&nbsp;%HIT%/%CRIT%/%FOCUS% eredményt. Ha így teszel, választhatsz, hogy a védekező elveszt 1 pajzsot vagy a védekező felfordítja 1 sérüléskártyáját.'''
        '''I'll Show You the Dark Side''': 
           text: '''Mikor ezt a kártyát hozzárendelik egy hajódhoz, ha nincs felfordított sérüléskártya rajta, az ellenfél kikeres a sérüléskártyáidból egy pilóta típusút és felfordítva ráteszi. Aztán megkeveri a paklit. Amikor elszenvednél 1&nbsp;%CRIT% sérülést, ezen a kártyán lévő sérüléskártyát kapod meg. Aztán vedd le ezt a lapot.'''
        'Proton Bomb':
           text: '''(Bomba jelző) - Az Aktivációs fázis végén ez az eszköz felrobban. Amikor ez az eszköz felrobban, minden hajó és távérzékelő 0–1-es távolságban elszenved 1&nbsp;%CRIT% sérülést.'''
        'Seismic Charge':
           text: '''(Bomba jelző) - Az Aktivációs fázis végén ez az eszköz felrobban. Amikor ez az eszköz felrobban, válassz 1 akadály 0–1-es távolságban. Minden hajó és távérzékelő 0–1-es távolságra az akadálytól elszenved 1&nbsp;%HIT% sérülést.'''
        'Bomblet':
           text: '''(Bomba jelző) - Az Aktivációs fázis végén ez az eszköz felrobban. Amikor ez az eszköz felrobban, minden hajó 0–1-es távolságban dob 2 támadókockával. Minden hajó és távérzékelő elszenved 1&nbsp;%HIT% sérülést minden egyes %HIT%/%CRIT% eredmény után.'''
        'Loose Cargo':
           text: '''(Űrszemét jelző) - A kidobott rakomány űrszemétnek számít.'''
        'Conner Net':
           text: '''(Akna jelző) - Miután egy hajó átmozog vagy átfedésbe kerül ezzel az eszközzel, az felrobban. Amikor ez az eszköz felrobban, a hajó elszenved 1&nbsp;%HIT% sérülést és kap 3 ion jelzőt.'''
        'Proximity Mine':
           text: '''(Akna jelző) - Miután egy hajó átmozog vagy átfedésbe kerül ezzel az eszközzel, az felrobban. Amikor ez az eszköz felrobban, a hajó dob 2 támadókockával, aztán elszenved 1&nbsp;%HIT%, valamint a dobott eremény szerint 1-1 %HIT%/%CRIT% sérülést.'''
        'DRK-1 Probe Droid':
           text: '''INIT: 0 / MOZGÉKONYSÁG: 3 / HULL: 1 (távérzékelő)<br>Amikor egy baráti hajó bemér egy objektumot vagy zavar egy ellenséges hajót, mérheti a távolságot tőled. Miután egy ellenséges hajó átfedésbe kerül veled, az dob egy támadókockával. %FOCUS% eredménynél elszenvedsz 1 %HIT% sérülést.<br>Rendszer fázis: a kezdeményezésednek megfelelően arrébb mozgathatod a [2 %BANKLEFT%], [2 %STRAIGHT%] vagy [2 %BANKRIGHT%] sablonnal.'''
        'Buzz Droid Swarm':
           text: '''INIT: 0 / MOZGÉKONYSÁG: 3 / HULL: 1 (távérzékelő)<br>Miután egy ellenséges hajó átmozog rajtad vagy átfedésbe kerül veled, átteheted annak első vagy hátsó pöckeihez (ilyenkor 0-ás távolságra vagy a hajótól). Nem lehetsz átfedésbe egy objektummal sem ily módon. Ha nem tudod elhelyezni a pöckökhöz, te és a hajó is elszenvedtek 1 %HIT% sérülést.<br>Ütközet fázis: a kezdeményezésednek megfelelően minden 0-ás távolságba nlévő hajó elszenved 1 %CRIT% sérülést.'''
        '''It's the Resistance''':
           text: """<strong>Felhelyezés:</strong> tartalékban kezdesz. <br> Amikor beszállsz a csatába, helyezd a hajót 1-es távolságra a játékterület bármely szélétől és 3-as távolságon túl bármely ellenséges hajótól.<br>A kör kezdetén ha a baráti <strong>GA-97</strong> összes %CHARGE% jelzője aktív, be <strong>kell</strong> szállnod a csatába. Ezután vedd le ezt a kártyát. Miután a baráti <strong>GA-97</strong> megsemmisül, csatába <strong>kell</strong> szállnod, majd kapsz 1 'inaktív fegyvezet' jelzőt és vedd le ezt a kártyát."""
        'Electro-Proton Bomb':
           text: """(Bomba jelző) - Az Aktivációs fázis végén ez az eszköz felrobban. Amikor ez az eszköz felrobban, minden hajó és távérzékelő 0–2-es távolságban dob 4 támadókockával. Minden hajó elveszti 1 pajzsát minden üres eredmény után, kap 1 ion jelzőt minden %FOCUS%/%HIT% eredmény után és kap 1 'inaktív fegyvezet' minden %CRIT% eredmény után. MInden távérzékelő 0-1-es távolságban elveszít 1 pajzsot minden üres eredmény után és elszenved 1 sérülést minden %FOCUS%/%HIT% eredmény után."""
        'Decoyed':
           text: '''Amikor védekezel, minden baráti <strong>Naboo Handmaiden</strong> a támadó tűzívében elkölthet 1 %EVADE% jelzőt, hogy megváltoztass egy dobás eredményed %EVADE% eredményre.<br> Ha Naboo Royal N-1 Starfighter vagy, minden minden baráti <strong>Naboo Handmaiden</strong> a támadó tűzívében elkölthet 1 %EVADE% jelzőt, hogy hozzáadj 1 %EVADE% eredményt a dobásodhoz.'''
        'Compromising Intel':
           text: '''A Rendszer fázis alatt, ha az ellenséges <strong>Vi Morandi</strong> 0-3-as távolságban van, fordítsd fel a tárcsád. Amikor védekezel vagy támadsz ellenséges <strong>Vi Morandi</strong> pilótát, nem költhetsz %FOCUS% jelzőt.'''
        'Cluster Mine':
           text: '''(Akna jelzők) - Egy Cluster Mine készlet 3 különálló Cluster Mine eszközből áll.<br>Amikor egy Cluster Mine készlet lehelyezésre kerül, a középső elemet a szokásos módon tesszük le, majd a két további elemet elhelyezzük a középső elem oldalvájataiba illesztve. Miután egy hajó átmozog vagy átfedésbe kerül bármelyik különálló Cluster Mine elemmel, az felrobban. A többi elem, amelyeken nem mozogtak át vagy kerültek átfedésbe, nem robban fel. Amikor bármelyik elem felrobban, a hajó dob 2 támadó kockával és elszenved 1 %HIT%/%CRIT% sérülést a dobott eredmény szerint.'''
        'Ion Bomb':
           text: '''(Bomba jelző) - Az Aktivációs fázis végén ez az eszköz felrobban. Amikor ez az eszköz felrobban, minden hajó 0-1-es távolságban kap 3 ion jelzőt és minden távérzékelő 0-1-es távolságban elszenved 1 %HIT% sérülést.'''
        'Concussion Bomb':
           text: '''(Bomba jelző) - Az Aktivációs fázis végén ez az eszköz felrobban. Amikor ez az eszköz felrobban, minden hajó 0-1-es távolságban kap 1 lefordított sérüléskártyát. Aztán minden  hajó 0-1-es távolságban felfordít 1 sérüléskártyát, hacsak nem kap 1 'strain' jelzőt.'''
        'Thermal Detonator':
           text: '''(Bomba jelző) - Az Aktivációs fázis végén ez az eszköz felrobban. Amikor ez az eszköz felrobban, minden hajó és távérzékelő 0-1-es távolságban dob 1 támadókockával. Minden hajó kap 1 strain jelzőt minden %FOCUS% eredmény után és minden hajó és távérzékelő elszenved 1 a dobásnak megfelelő %HIT%/%CRIT% sérülést.'''
        'Sensor Buoy':
           text: '''INIT: 0 / MOZGÉKONYSÁG: 3 / HULL: 2 (távérzékelő)<br>Az érzékelő bóják távérzékeők, melyek párban vannak (egy piros és egy kék, mindegyik saját kártyával) és a <strong>Sensor Buoy Suite</strong> fejlesztéshez tartoznak.'''
        'Fearful Prey':
           text: '''Miután védekezel egy ellenséges <strong>Fearsome Predator</strong> ellen, ha nem költöttél el legalább 1 zöld jelzőt a támadás alatt, kapsz 1 'strain' jelzőt.'''
        'You Should Thank Me':
           text: '''Ez a kártyát lefordítva rendeld a hajóhoz.<br>Védekezés után fordítsd fel.%LINEBREAK%Miután védekeztél <strong>Zam Wesell</strong> visszatölt 1 %CHARGE% jelzőt, majd feltehetsz egy bemérőt a támadóra.%LINEBREAK%Az Ütközet fázis végén, ha ez a kártya le van fordítva és benne vagy egy ellenséges hajó tűzívében, felfedheted ezt a kártyát, hogy elkölts 2 %CHARGE% jelzőt <strong>Zam Wesell</strong>-ről. Ha így teszel, végrehajthatsz egy bónusz támadást.%LINEBREAK%A Rendszer fázis elején távolítsd el ezt az állapotkártyát.'''
        '''You'd Better Mean Business''':
           text: '''Ez a kártyát lefordítva rendeld a hajóhoz.<br>Védekezés után fordítsd fel.%LINEBREAK%Miután védekeztél, elkölthetsz 2 %CHARGE% jelzőt <strong>Zam Wesell</strong>-ről. Ha így teszel, végrehajthatsz egy bónusz támadást a támadó ellen.%LINEBREAK%Az üzközet fázis végén, ha ez a kártya le van fordítva és benne vagy egy ellenséges hajó tűzívében, felfedheted ezt a kártyát. Ha így teszel <strong>Zam Wesell</strong> visszatölt 2 %CHARGE% jelzőt.%LINEBREAK%A Rendszer fázis elején távolítsd el ezt az állapotkártyát.'''
        '''Merciless Pursuit''':
           text: '''Miután végrehajtasz egy támadást, ha a védekező fel van szerelve a <b>The Child</b> fejlesztéssel, feltehetsz egy bemérőt a védekezőre.'''
        '''Marked for Elimination''':
           text: '''Amikor védekezel, ha a támadó fel van szerelve a <b>Tracking Fob</b> fejlesztéssel és van bemérője rajtad, nem költhetsz zöld jelzőket.'''
        '''False Friend''':
           text: '''A Rendszer fázis alatt ha egy ellenséges hajó <b>Tal Merrik</b> fejlesztéssel vagy egy ellenséges eszköz 0-2-es távolságban van, fordítsd fel a manőver tárcsádat.<br><strong>Akció:</strong> Kapsz 1 'deplete' és stressz jelzőt, hogy eldobd ezt az állapotkártyát.'''
        '''Trials of the Darksaber''':
           text: '''Amikor végrehajtasz egy támadást 0-2-es támadási ívben, elkölthetsz 1 %CRIT% eredményt. Ha így teszel, ha a védekező hajó több %POINT% jelzőt kapott, mint te, az elveszít 1 %POINT% jelzőt. Helyezd azt a %POINT% jelzőt erre a kártyára.<br>Miután védekeztél, ha megsemmisültél egy ellenséges hajó 0-2-es támadásától, helyezd a <b>Trials of the Darksaber</b> állapotkártyát a támadóra (az összes %POINT% marad a kártyán).<br>A játék végén ez a hajó megkapja az összes %POINT% jlezőt erről a kártyáról.'''
        '''Blazer Bomb''':
           text: '''<strong>Típusok:</strong> eszköz, bomba<br>Az Aktivációs fázis végén ez az eszköz felrobban.<br>Amikor ez az eszköz felrobban, minden hajó és eszköz 0-1-es távolságban gurít 1 támadókockával. Minden hajó és eszköz elszenved 1 %HIT% sérülést minden %HIT%/%CRIT% eredmény után.<br>Miután ez az eszköz felrobban helyezz egy Blase jelzőt a bomba lapkához igazítva<br>A Blaze akadálynak számít. Miután felhelyezted , tegyél rá 1 időzítő jelzőt.<br>A Vége fázis alatt vegyél le minden időzítő nélüli Blaze jelzőt, aztán vegyél le 1 időzítő jelzőt minden Blaze jelzőről.'''
        '''Clan Wren Commandos''':
           text: """INIT: 2 <br> %FRONTARC%: 2 %RANGEBONUS%, RANGE: 1-2 <br>%AGILITY%: 2, %HULL%: 2, %CHARGE%: 2 %LINEBREAK% <strong>Típusok:</strong> eszköz, távérzékelő<br>Mmiután egy ellenséges hajó átfedésbe kerül veled, kap egy 'strain' jelzőt<br><strong>Aktivációs fázis:</strong> A fázis kezdetén előre helyezheted a [1 %TURNLEFT%], [2 %STRAIGHT%] vagy [1 %TURNRIGHT%] segítségével.<br><strong>Ütközet fázis:</strong> nem támadhatsz 0-ás távolságban. A támadáshoz el kell költs 1 %CHARGE% jelzőt. Amikor végrehajtasz egy támadást megváltoztathatsz 1 %FOCUS% eredményt %HIT% eredményre."""
        '''Death Watch Commandos''':
           text: """INIT: 2 <br> %FRONTARC%: 2 %RANGEBONUS%, RANGE: 1-2 <br>%AGILITY%: 2, %HULL%: 2, %CHARGE%: 2 %LINEBREAK% <strong>Típusok:</strong> eszköz, távérzékelő<br>Mmiután egy ellenséges hajó átfedésbe kerül veled, kap egy 'strain' jelzőt<br><strong>Aktivációs fázis:</strong> A fázis kezdetén előre helyezheted a [1 %TURNLEFT%], [2 %STRAIGHT%] vagy [1 %TURNRIGHT%] segítségével.<br><strong>Ütközet fázis:</strong> nem támadhatsz 0-ás távolságban. A támadáshoz el kell költs 1 %CHARGE% jelzőt. Amikor végrehajtasz egy támadást megváltoztathatsz 1 %FOCUS% eredményt %HIT% eredményre."""
        '''Nite Owl Commandos''':
           text: """INIT: 2 <br> %FRONTARC%: 2 %RANGEBONUS%, RANGE: 1-2 <br>%AGILITY%: 2, %HULL%: 2, %CHARGE%: 2 %LINEBREAK% <strong>Típusok:</strong> eszköz, távérzékelő<br>Mmiután egy ellenséges hajó átfedésbe kerül veled, kap egy 'strain' jelzőt<br><strong>Aktivációs fázis:</strong> A fázis kezdetén előre helyezheted a [1 %TURNLEFT%], [2 %STRAIGHT%] vagy [1 %TURNRIGHT%] segítségével.<br><strong>Ütközet fázis:</strong> nem támadhatsz 0-ás távolságban. A támadáshoz el kell költs 1 %CHARGE% jelzőt. Amikor végrehajtasz egy támadást megváltoztathatsz 1 %FOCUS% eredményt %HIT% eredményre."""
        '''Imperial Super Commandos''':
           text: """INIT: 2 <br> %FRONTARC%: 2 %RANGEBONUS%, RANGE: 1-2 <br>%AGILITY%: 2, %HULL%: 2, %CHARGE%: 2 %LINEBREAK% <strong>Típusok:</strong> eszköz, távérzékelő<br>Mmiután egy ellenséges hajó átfedésbe kerül veled, kap egy 'strain' jelzőt<br><strong>Aktivációs fázis:</strong> A fázis kezdetén előre helyezheted a [1 %TURNLEFT%], [2 %STRAIGHT%] vagy [1 %TURNRIGHT%] segítségével.<br><strong>Ütközet fázis:</strong> nem támadhatsz 0-ás távolságban. A támadáshoz el kell költs 1 %CHARGE% jelzőt. Amikor végrehajtasz egy támadást megváltoztathatsz 1 %FOCUS% eredményt %HIT% eredményre."""
        '''Mandalorian Super Commandos''':
           text: """INIT: 2 <br> %FRONTARC%: 2 %RANGEBONUS%, RANGE: 1-2 <br>%AGILITY%: 2, %HULL%: 2, %CHARGE%: 2 %LINEBREAK% <strong>Típusok:</strong> eszköz, távérzékelő<br>Mmiután egy ellenséges hajó átfedésbe kerül veled, kap egy 'strain' jelzőt<br><strong>Aktivációs fázis:</strong> A fázis kezdetén előre helyezheted a [1 %TURNLEFT%], [2 %STRAIGHT%] vagy [1 %TURNRIGHT%] segítségével.<br><strong>Ütközet fázis:</strong> nem támadhatsz 0-ás távolságban. A támadáshoz el kell költs 1 %CHARGE% jelzőt. Amikor végrehajtasz egy támadást megváltoztathatsz 1 %FOCUS% eredményt %HIT% eredményre."""


    chassis_translations =
        "Versatile Frame":
           text: """You can equip 1 %TORPEDO% or %MISSILE% upgrade. While your revealed maneuver is blue, add white %BOOST% to your action bar."""


    exportObj.setupTranslationCardData pilot_translations, upgrade_translations, condition_translations, chassis_translations
