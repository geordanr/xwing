exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.hu = 'Magyar'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations.Magyar =
    action:
        "Barrel Roll": "Orsózás"
        "Boost": "Gyorsítás"
        "Evade": "Kitérés"
        "Focus": "Fókusz"
        "Target Lock": "Célpontbemérő"
        "Recover": "Recover"
        "Reinforce": "Reinforce"
        "Jam": "Jam"
        "Coordinate": "Coordinate"
        "Cloak": "Álcázás"
        "SLAM": "SLAM"
    slot:
        "Astromech": "Asztrodroid"
        "Bomb": "Bomba"
        "Cannon": "Ágyú"
        "Crew": "Személyzet"
        "Elite": "Elit"
        "Missile": "Rakéta"
        "System": "Rendszer"
        "Torpedo": "Torpedó"
        "Turret": "Löveg"
        "Cargo": "Rakomány"
        "Hardpoint": "Fegyverfelfüggesztés"
        "Team": "Csapat"
        "Illicit": "Illegális"
        "Salvaged Astromech": "Zsákmányolt Astromech"
    sources: # needed?
        "Core": "Core"
        "A-Wing Expansion Pack": "A-Wing Expansion Pack"
        "B-Wing Expansion Pack": "B-Wing Expansion Pack"
        "X-Wing Expansion Pack": "X-Wing Expansion Pack"
        "Y-Wing Expansion Pack": "Y-Wing Expansion Pack"
        "Millennium Falcon Expansion Pack": "Millennium Falcon Expansion Pack"
        "HWK-290 Expansion Pack": "HWK-290 Expansion Pack"
        "TIE Fighter Expansion Pack": "TIE Fighter Expansion Pack"
        "TIE Interceptor Expansion Pack": "TIE Interceptor Expansion Pack"
        "TIE Bomber Expansion Pack": "TIE Bomber Expansion Pack"
        "TIE Advanced Expansion Pack": "TIE Advanced Expansion Pack"
        "Lambda-Class Shuttle Expansion Pack": "Lambda-Class Shuttle Expansion Pack"
        "Slave I Expansion Pack": "Slave I Expansion Pack"
        "Imperial Aces Expansion Pack": "Imperial Aces Expansion Pack"
        "Rebel Transport Expansion Pack": "Rebel Transport Expansion Pack"
        "Z-95 Headhunter Expansion Pack": "Z-95 Headhunter Expansion Pack"
        "TIE Defender Expansion Pack": "TIE Defender Expansion Pack"
        "E-Wing Expansion Pack": "E-Wing Expansion Pack"
        "TIE Phantom Expansion Pack": "TIE Phantom Expansion Pack"
        "Tantive IV Expansion Pack": "Tantive IV Expansion Pack"
        "Rebel Aces Expansion Pack": "Rebel Aces Expansion Pack"
        "YT-2400 Freighter Expansion Pack": "YT-2400 Freighter Expansion Pack"
        "VT-49 Decimator Expansion Pack": "VT-49 Decimator Expansion Pack"
        "StarViper Expansion Pack": "StarViper Expansion Pack"
        "M3-A Interceptor Expansion Pack": "M3-A Interceptor Expansion Pack"
        "IG-2000 Expansion Pack": "IG-2000 Expansion Pack"
        "Most Wanted Expansion Pack": "Most Wanted Expansion Pack"
        "Imperial Raider Expansion Pack": "Imperial Raider Expansion Pack"
        "Hound's Tooth Expansion Pack": "Hound's Tooth Expansion Pack"
        "Kihraxz Fighter Expansion Pack": "Kihraxz Fighter Expansion Pack"
        "K-Wing Expansion Pack": "K-Wing Expansion Pack"
        "TIE Punisher Expansion Pack": "TIE Punisher Expansion Pack"
        "The Force Awakens Core Set": "The Force Awakens Core Set"
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
        limited: "limitált"
    byCSSSelector:
        # Warnings
        '.unreleased-content-used .translated': 'Ez a raj kiadatlan dolgokat használ!'
        '.epic-content-used .translated': 'Ez a raj Epic dolgokat használ!'
        '.illegal-epic-too-many-small-ships .translated': 'Nem szerepeltethetsz több mint 12 egyforma típusú kis hajót!'
        '.illegal-epic-too-many-large-ships .translated': 'Nem szerepeltethetsz több mint 6 egyforma típusú nagy hajót!'
        '.collection-invalid .translated': 'You cannot field this list with your collection!'
        # Type selector
        '.game-type-selector option[value="standard"]': 'Standard'
        '.game-type-selector option[value="custom"]': 'Egyéni'
        '.game-type-selector option[value="epic"]': 'Epikus'
        '.game-type-selector option[value="team-epic"]': 'Csapat epikus'
        # Card browser
        '.xwing-card-browser option[value="name"]': 'Név'
        '.xwing-card-browser option[value="source"]': 'Forrás'
        '.xwing-card-browser option[value="type-by-points"]': 'Típus (pont szerint)'
        '.xwing-card-browser option[value="type-by-name"]': 'Típus (név szerint)'
        '.xwing-card-browser .translate.select-a-card': 'Válassz egy kártyát a bal oldali listából.'
        '.xwing-card-browser .translate.sort-cards-by': 'Kártya rendezés'
        # Info well
        '.info-well .info-ship td.info-header': 'Hajó'
        '.info-well .info-skill td.info-header': 'Skill'
        '.info-well .info-actions td.info-header': 'Akciók'
        '.info-well .info-upgrades td.info-header': 'Fejlesztések'
        '.info-well .info-range td.info-header': 'Hatótáv'
        # Squadron edit buttons
        '.clear-squad' : 'Új raj'
        '.save-list' : 'Mentés'
        '.save-list-as' : 'Mentés mint…'
        '.delete-list' : 'Törlés'
        '.backend-list-my-squads' : 'Raj betöltése'
        '.view-as-text' : '<span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Nyomtatás/Nézet mint </span>szöveg'
        '.randomize' : 'Jó napom van!'
        '.randomize-options' : 'Véletlenszerű beállítások…'
        '.notes-container > span' : 'Raj jegyzet'
        # Print/View modal
        '.bbcode-list' : 'Másold a BBCode-t és illeszd a fórum hozzászólásba.<textarea></textarea><button class="btn btn-copy">Másolás</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Másolás</button>'
        '.vertical-space-checkbox' : """Legyen hely a sérülés/fejlesztés kártyáknak <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Színes nyomtatás <input type="checkbox" class="toggle-color-print" />"""
        '.print-list' : '<i class="icon-print"></i>&nbsp;Nyomtatás'
        # Randomizer options
        '.do-randomize' : 'Jó napom van!'
        # Top tab bar
        '#empireTab' : 'Birodalom'
        '#rebelTab' : 'Lázadók'
        '#scumTab' : 'Söpredék'
        '#browserTab' : 'Kártyák'
        '#aboutTab' : 'Rólunk'
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

    # Names don't need updating, but text needs to be set
    pilot_translations =
        "Wedge Antilles":
            text: """Támadáskor eggyel csökkenti a védekező mozgékonyságát (nem mehet 0 alá)."""
        "Garven Dreis":
            text: """Fókusz felhasználás után áthelyezheted azt egy 1-2 hatótávban lévő másik baráti hajóra (ahelyett, hogy eldobnád). [FAQ]"""
        "Biggs Darklighter":
            text: """Biggs-től 1-es távolságban lévő másik baráti hajó támadásakor, Biggs-et kell támadni, ha támadható. [FAQ]"""
        "Luke Skywalker":
            text: """Védekezéskor egy %FOCUS%-odat átforgathatsz %EVADE%-re."""
        '"Dutch" Vander':
            text: """Miután feltettél egy célpontbemérőt, válassz egy baráti hajót 1-2 távolságban. A kiválasztott hajó azonnal feltehet egy célpontbemérőt."""
        "Horton Salm":
            text: """2-3-as távolságban támadáskor, bármennyi üres kockát újradobhatsz."""
        '"Winged Gundark"':
            text: """1-es távolságban támadáskor, 1 %HIT%-ot átfogathatsz %CRIT%-re."""
        '"Night Beast"':
            text: """Miután végrehajtottál egy zöld manővert, végrehajthatsz egy ingyenes fókusz akciót."""
        '"Backstabber"':
            text: """Mikor a védekező tüzelési szögén kívülről támadsz, 1 plusz támadó kockával guríthatsz."""
        '"Dark Curse"':
            text: """Mikor védekezel, a téged támadó hajó nem használhatja a fókusz jelzőjét vagy dobhatja újra a támadó kockáit."""
        '"Mauler Mithel"':
            text: """Mikor 1-es távolságban támadsz, 1 plusz támadó kockával guríthatsz."""
        '"Howlrunner"':
            text: """Mikor 1-es távolságban lévő baráti hajó támad az elsődleges fegyverével, 1 támadó kockáját újradobhatja."""
        "Maarek Stele":
            text: """Mikor támadásodból felfordítot sérüléskártyát húzna a védekező, húzz te 3-at, válassz ki egyet és add át a védekezőnek. A többit dobd el."""
        "Darth Vader":
            text: """Az akció végrehajtása fázisban 2 akciót hajthat végre."""
        "\"Fel's Wrath\"":
            text: """Ha a hajóhoz tartozó sérülés lapok száma egyenlő vagy meghaladja a hajó szerkezeti erősségét, nem semmisül meg a harci fázis végéig."""
        "Turr Phennir":
            text: """Miután végrehajtottad a támadásod, végrehajthatsz egy ingyen %BOOST% vagy %BARRELROLL% akciót."""
        "Soontir Fel":
            text: """Mikor kapsz egy stressz jelzőt, kaphatsz egy %FOCUS% jelzőt is."""
        "Tycho Celchu":
            text: """Akkor is végrehajthatsz akciót, ha van stressz jelződ."""
        "Arvel Crynyd":
            text: """Olyan célpontot is válaszhatsz, akivel érintkezel, ha az a tüzelési szögedben van."""
        "Chewbacca":
            text: """Ha kapsz egy felfordított sérülés kártyát, fordítsd le, így nem fejti ki hatását."""
        "Lando Calrissian":
            text: """Zöld manőver végrehajtása után válassz ki egy másik baráti hajót 1 távolságban. Ez a hajó végrehajthat egy ingyen akciót az akciósávjáról."""
        "Han Solo":
            text: """Támadáskor újradobhatsz a kockákkal, de az összes lehetségessel."""
        "Kath Scarlet":
            text: """Támadásodkor a védekező kap egy stresszt, ha kivéd legalább egy %CRIT% találatot."""
        "Boba Fett":
            text: """Ha felfedsz egy (%BANKLEFT%) vagy (%BANKRIGHT%) manővert, átforgathatod hasonló sebességű, de másik irányúra."""
        "Krassis Trelix":
            text: """Mikor támadsz a másodlagos fegyverrel, egy támadó kockát újradobhatsz."""
        "Ten Numb":
            text: """Támadásodkor egy %CRIT% dobásod nem védhető ki védő kockával."""
        "Ibtisam":
            text: """Támadáskor vagy védekezéskor, ha van legalább 1 stressz jelződ, 1 kockádat újradobhatod."""
        "Roark Garnet":
            text: '''A támadás fázis kezdetekor válassz egy másik baráti hajót 1-3 távolságban. A fázis végéig a hajó pilótája 12-esnek minősül.'''
        "Kyle Katarn":
            text: """A támadás fázis kezdetekor hozzárendelheted egy %FOCUS% jelződ egy baráti hajóhoz 1-3 távolságban."""
        "Jan Ors":
            text: """Ha egy baráti hajó 1-3 távolságban támad és nincs stressz jelződ, kaphatsz egy stressz jelzőt, hogy a másik hajó plusz egy kockával támadhasson."""
        "Captain Jonus":
            text: """Ha egy baráti hajó 1-es távolságban támad a másodlagos fegyverével, újradobhat akár 2 kpockával is."""
        "Major Rhymer":
            text: """Mikor másodlagos fegyverrel támadsz, növelheted vagy csökkentheted a fegyver hatótávját eggyel (az 1-3 határon belül)."""
        "Captain Kagi":
            text: """Ha egy ellenséges hajó célpontbemérőt tesz más hajóra, a te hajódon kell végezze, ha az lehetséges."""
        "Colonel Jendon":
            text: """A támadás fázis kezdetekor a célpontbemérőd átadhatod egy baráti hajónak 1-es távolságban, ha neki még nincsen."""
        "Captain Yorr":
            text: """Ha egy baráti hajó 1-2 távolságban egy stressz jelzőt kap és neked 2 vagy kevesebb van, megkaphatod helyette."""
        "Lieutenant Lorrir":
            text: """%BARRELROLL% akció végrehajtásakor, kaphatsz egy stressz jelzőt, hogy az (%STRAIGHT% 1) helyett a (%BANKLEFT% 1) vagy (%BANKRIGHT% 1) sablont használd."""
        "Tetran Cowall":
            text: """Ha felfordítasz egy (%UTURN%) manővert, választhetsz 1-es, 3-as vagy 5-ös sebességet."""
        "Kir Kanos":
            text: """ Ha 2-3-as távolságba támadsz, elkölthetsz egy kitérés jelzőt, hogy hozzáadj egy 1 %HIT%-ot a dobásodhoz."""
        "Carnor Jax":
            text: """1-es távolságban lévő ellenséges hajók, nem hajthatnak végre %FOCUS% vagy %EVADE% akciót és nem költhetnek %FOCUS% vagy %EVADE% jelzőt."""
        "Lieutenant Blount":
            text: """Támadásod akkor is találatnak számít, ha a védő nem sérül."""
        "Airen Cracken":
            text: """Miután végrehajtottad a támadásod, választhatsz egy baráti hajót 1-es távolságban. Ez a hajó végrehajthat egy ingyenes akciót."""
        "Colonel Vessery":
            text: """Támadáskor, a kocka dobás után közvetlenül feltehetsz egy célpontbemérőt a védekezőre, ha már van rajta piros célpontbemérő jelző."""
        "Rexler Brath":
            text: """Ha a támadásodra legalább 1 sérülés kártyát kap a védekező, elkölthetsz egy %FOCUS% jelzőt, hogy felfordítsd azokat."""
        "Etahn A'baht":
            text: """Mikor egy ellenséges hajó a tüzelési szögedben 1-3 távolságban védekezik, a támadó 1 %HIT% találata átforgatható %CRIT%-ra."""
        "Corran Horn":
            text: """A befejező fázis kezdetén végrehajthatsz egy támadást, de nem támadhatsz a következő körben. (FAQ)"""
        '"Echo"':
            text: """Mikor kijössz álcázásból, (%STRAIGHT% 2) helyett használhatod a (%BANKLEFT% 2) vagy (%BANKRIGHT% 2) sablont. (FAQ)"""
        '"Whisper"':
            text: """Ha támadásod talált, kaphatsz egy %FOCUS% jelzőt."""
        "Wes Janson":
            text: """Miután végrehajtottad a támadást, levehetsz egy %FOCUS%, %EVADE% vagy kék célpontbemérő jelzőt a védekezőről."""
        "Jek Porkins":
            text: """Mikor stressz jelzőt kapsz, leveheted egy támadó kocka gurításért cserébe. Ha a dobásod %HIT%, kapsz egy lefordított sérülés kártyát."""
        '"Hobbie" Klivian':
            text: """Mikor szerzel vagy elköltesz egy célpontbemérőt, levehetsz egy stressz jelzőt a hajódról."""
        "Tarn Mison":
            text: """Mikor egy ellenfél téged jelöl célpontjának, kaphatsz egy célpontbemérőt a támadó hajóra."""
        "Jake Farrell":
            text: """Miután végrehajtasz egy %FOCUS% akciót vagy kapsz egy %FOCUS% jelzőt, végrehajthatsz egy ingyenes %BOOST% vagy %BARRELROLL% akciót."""
        "Gemmer Sojan":
            text: """Amíg 1-es távolságban vagy egy ellenséges hajótól, növeld az mozgékonyságod eggyel."""
        "Keyan Farlander":
            text: """Támadáskor eldobhatsz egy stressz jelzőt, hogy az összes %FOCUS%-t %HIT%-ra változtass. (FAQ)"""
        "Nera Dantels":
            text: """Végrehajthatsz %TORPEDO% másodlagos támadást a tüzelési szögeden kívüli ellenfélre is."""
        "CR90 Corvette (Fore)":
            text: """Mikor támadsz az elsődleges fegyvereddel, elkölthetsz egy energiát, hogy dobj egy plusz támadó kockával."""
        # "CR90 Corvette (Crippled Aft)":
        #     text: """Nem választhatsz vagy hajthatsz végre (%STRAIGHT% 4), (%BANKLEFT% 2) vagy (%BANKRIGHT% 2) manővert."""
        "Dash Rendar":
            text: """Figyelmen kívül hagyhatod az akadályokat az aktivációs fázisban és akció végrehajtáskor. (FAQ)"""
        '"Leebo"':
            text: """Mikor felfordítasz egy sérülés kártyát, húzz még egyet, válassz, egyet hajts végre, a másikat dobd el. (FAQ)"""
        "Eaden Vrill":
            text: """Mikor elsődleges fegyverrel támadsz egy stresszelt hajót, dobj eggyel több támadó kockával."""
        "Rear Admiral Chiraneau":
            text: """Mikor 1-2 távolságba támadsz, megváltoztathatsz egy %FOCUS%-t %CRIT%-re."""
        "Commander Kenkirk":
            text: """Ha már nincs pajzsod és legalább egy sérülés kártyád, növeld a mozgékonyságod eggyel."""
        "Captain Oicunn":
            text: """Manőver végrehajtás után minden veled érintkező hajó elszenved egy sérülést."""
        "Prince Xizor":
            text: """Mikor védekezel, egy baráti hajó 1-es távolságban elszenvedhet egy kivédhetetlen %HIT% vagy %CRIT% találatot helyetted."""
        "Guri":
            text: """A támadás fázis elején, ha ellenséges hajó van 1-es távolságban, kaphatsz egy %FOCUS% jelzőt."""
        "Serissu":
            text: """Mikor egy baráti hajó védekezik 1-es távolságban, újra dobhat egy védekező kockával."""
        "Laetin A'shera":
            text: """Miután védekeztél egy támadás ellen és a támadás nem talált, kaphatsz egy %EVADE% jelzőt."""
        "IG-88A":
            text: """Miután a támadásodban az ellenfél megsemmisült, visszatölthetsz egy pajzsot."""
        "IG-88B":
            text: """Egyszer körönként, miután végrehajtottál egy támadást ami nem talált, végrehajthatsz egy támadás a felszerelt %CANNON% másodlagos fegyvereddel."""
        "IG-88C":
            text: """Miután végrehajtottál egy %BOOST% akciót, végrehajthatsz egy ingyenes %EVADE% akciót."""
        "IG-88D":
            text: """Mégrehajthatod a (%SLOOPLEFT% 3) vagy (%SLOOPRIGHT% 3) manővert a (%TURNLEFT% 3) vagy (%TURNRIGHT% 3) sablonnal."""
        "Boba Fett (Scum)":
            text: """Mikor támadsz vagy védekezel, újradobhatsz annyi kockát, ahágy ellenséges hajó van 1-es távolságban."""
        "Kath Scarlet (Scum)":
            text: """Mikor támadszt a hátsó kiegészítő tüzelési szögben, plusz egy támadó kockával dobhatsz."""
        "Emon Azzameen":
            text: """Mikor bombát dobsz , hasznákhatod a (%TURNLEFT% 3), (%STRAIGHT% 3) vagy (%TURNRIGHT% 3) sablont a (%STRAIGHT% 1) helyett."""
        "Kavil":
            text: """Mikor a hajó tüzelési szögén kívül támadsz, plusz egy kockával dobhatsz."""
        "Drea Renthal":
            text: """Miután elköltesz egy célpontbemérőt, egy stressz jelzőért feltehetsz egy újat."""
        "Dace Bonearm":
            text: """Mikor egy ellenséges hajó 1-3 távolságban kap legalább egy ion jelzőt, és nincs stressz jelződ, egy stressz jelzőért cserébe az a hajó elszenved egy sérülést."""
        "Palob Godalhi":
            text: """A támadás fázis elején, elvehetsz egy %FOCUS% vagy %EVADE% jelzőt egy 1-2 távolságban lévő ellenséges hajóról és magadra rakhatod."""
        "Torkil Mux":
            text: """Az aktivációs fázis végén válassz egy ellenséges hajót 1-2 távolságban. A támadás fázis végéig azt a pilótát 0-ás pilóta képességűnek kell kezelni."""
        "N'Dru Suhlak":
            text: """Mikor támadsz és nincs másik baráti hajó 1-2 távolságban, plusz egy támadó kockával dobhatsz."""
        "Kaa'To Leeachos":
            text: """A támadás fázis elején, elvehetsz egy %FOCUS% vagy %EVADE% jelzőt egy baráti hajótól 1-2 távolságban és magadra rakhatod."""
        "Commander Alozen":
            text: """A támadás fázis elején, feltehetsz egy célpontbemérőt 1-es távolságban lévő ellenséges hajóra."""
        "Raider-class Corvette (Fore)":
            text: """Körönként egyszer, miután végrehajtottál egy elsődleges fegyver támadást, elkölthetsz 2 energiát, hogy végrehajts egy másik elsődleges fegyver támadást."""
        "Bossk":
            text: """Mikor a támadásod talált, mielőtt a találatokat kiosztanád, 1 %CRIT% helyett 2 %HIT%-et oszthatsz."""
        "Talonbane Cobra":
            text: """Mikor támadsz vagy védekezel, a távolság bonuszoknak duplázd meg."""
        "Miranda Doni":
            text: """Körönként egyszer támadáskor, elkölthetsz egy pajzsot, hogy plusz egy támadó kockával dobj <strong>vagy</strong> dobj egy kockával kevesebbel, hogy visszatölts egy pajzsot."""
        '"Redline"':
            text: """Tarthatsz 2 célpontbemérőt egyazon hajón. Mikor felteszel egy célpontbemérőt, feltehetsz egy másodikat is arra a hajóra."""
        '"Deathrain"':
            text: """Előre is tudsz bombát dobni. Bombázás után végrehajthatsz egy ingyenes %BARRELROLL% akciót."""
        "Juno Eclipse":
            text: """Mikor felfeded a manővered, növelheted vagy csökkentheted a sebességed eggyel (minimum 1 legyen)."""
        "Zertik Strom":
            text: """Ellenséges hajó 1-es távolságban nem használhatja a távolság harci bónuszát támadáskor."""
        "Lieutenant Colzet":
            text: """A befejező fázis kezdetén, elköltheted a célpontbemérődet, hogy egy lefordított sérülés kártyát felfordíts a célzott hajón."""
        "Latts Razzi":
            text: """Mikor egy baráti hajó támad és célpontbemérőd van a védekezőn, elköltheted azt, hogy erre a támadásra eggyel csökkentsd a mozgékonyságát."""
        "Graz the Hunter":
            text: """Védekezéskor, ha a támadó a tüzelési szögedben van, eggyel több védekező kockával dobhatsz."""
        "Esege Tuketu":
            text: """Ha egy baráti hajó támad 1-2 távolságban, sajátjának tekintheti a %FOCUS% jelződ."""
        "Moralo Eval":
            text: """Támadhatsz a %CANNON% másodlagos fegyvereddel a kiegészítő tüzelési szögeden is."""
        'Gozanti-class Cruiser':
            text: """Manőver végrehajtás után bevethetsz akár 2 dokkolt hajót is."""
        '"Scourge"':
            text: """Mikor támadsz és a védekezőnek már van sérülés kártyája, plusz egy támadó kockával dobhatsz."""
        "The Inquisitor":
            text: """Mikor az elsődleges fegyvereddel 2-3 távolságban támadsz, kezeld 1-es távolságként."""
        "Zuckuss":
            text: """Támadáskor plusz egy kockával dobhatsz. Ha így teszel, a védekező is egy kockával többel dob."""
        "Dengar":
            text: """Körönként egyszer védekezés után, ha a támadó a tüzelési szögedben van, végrehajthatsz egy támadást ellene. [FAQ]"""
        # T-70
        "Poe Dameron":
            text: """Támadáskor vagy védekezéskor, ha van %FOCUS% jelződ, megváltoztathatod egy %FOCUS% dobásod %HIT% vagy %EVADE% eredményre."""
        '"Blue Ace"':
            text: """<em>(Kék Ász)</em> Mikor végrehajtasz egy %BOOST% akciót, használhatod a (%TURNLEFT% 1) vagy (%TURNRIGHT% 1) sablont."""
        # TIE/fo
        '"Omega Ace"':
            text: """<em>(Omega Ász)</em> Mikor támadsz, elkölthetsz egy fókusz jelzőt és a védekezőn lévő célpontbemérőt, hogy az összes kockát %CRIT%-re forgass."""
        '"Epsilon Leader"':
            text: """<em>(Epszilon vezér)</em> A harci fázis kezdetén, levehetsz 1 stressz jelzőt minden 1-es távolságban lévő bartáti hajóról."""
        '"Zeta Ace"':
            text: """<em>(Dzéta Ász)</em> Mikor végrehajtasz egy %BARRELROLL% akciót, használhatod a (%STRAIGHT% 2) sablont a (%STRAIGHT% 1) helyett."""

        '"Red Ace"':
            text: '''Miután először elvesztesz egy pajzsot, utána minden körben kapsz egy %EVADE% jelzőt.'''
        '"Omega Leader"':
            text: '''Az a hajó amin célpontbemérőed van, nem módosíthat kockát veled szemben támadáskor vagy védekezéskor.'''
        'Hera Syndulla':
            text: '''Mikor felfedsz egy zöld vagy piros manővert, átforgathatod a tárcsát egy ugyanolyan nehézségűre.'''
        '"Youngster"':
            text: """A baráti TIE vadászok 1-3 távolságon belül végrehajthatják az erre a hajóra felszerelt %ELITE% fejlesztés kártya akciót. [FAQ]"""
        '"Wampa"':
            text: """Támadáskor, az eredmények összehasonlítása kezdetén, törölheted az összes dobásod. Minden törölt %CRIT% találatra a védekező kap egy lefordított sérülés kártyát. [FAQ/ERRATA]"""
        '"Chaser"':
            text: """Mikor egy  1-es távolságban lévő baráti hajó elkölt egy %FOCUS% jelzőt, kapsz egy %FOCUS% jelzőt."""
        'Ezra Bridger':
            text: """Védekezéskor, ha stresszelve vagy, átfordíthatsz akár 2 %FOCUS% dobást %EVADE%-re."""
        '"Zeta Leader"':
            text: '''Mikor támadsz és nem vagy stresszelve, kaphatsz egy stressz jelzőt, hogy plusz egy kockával dobj.'''
        '"Epsilon Ace"':
            text: '''Amíg nincs sérülés kártyád, a pilóta képességed 12-esnek számít'''
        "Kanan Jarrus":
            text: """Mikor egy ellenséges hajó 1-2 távolságban támad, elkölthetsz egy %FOCUS% jelzőt. Ha ezt teszed, a támadó eggyel kevesebb támadó kockával dob."""
        '"Chopper"':
            text: """A harci fázis kezdetén, minden ellenséges hajó amivel érintkezel, kap egy stressz jelzőt."""
        'Hera Syndulla (Attack Shuttle)':
            text: """Mikor felfedsz egy zöld vagy piros manővert, átforgathatod a tárcsát egy ugyanolyan nehézségűre."""
        'Sabine Wren':
            text: """Közvetlenül mielőtt felfeded a tárcsád, végrehajthatsz egy ingyenes %BOOST% vagy %BARRELROLL% akciót."""
        '"Zeb" Orrelios':
            text: '''Mikor védekezel, a %CRIT% dobásokat előbb semlegesítheted, mint a %HIT% dobásokat.'''
        'Tomax Bren':
            text: '''Körönként egyszer, miután eldobtál egy %ELITE% fejlesztés kártyát, fordítsd fel azt a kártyát.'''
        'Ello Asty':
            text: '''Ha nem vagy stresszelve, kezeld a (%TROLLLEFT%) és (%TROLLRIGHT%) menővert fehérként.'''
        "Valen Rudor":
            text: """Védekezés után végrehajthatsz egy ingyen akciót."""
        "4-LOM":
            text: """A befejező fázis kezdetén, 1 stressz jelződet átadhatod egy ellenséges hajónak 1-es távolságon belül."""
        "Tel Trevura":
            text: """Első alkalommal, mikor megsemmisülnél, dobj el minden addigi sérülés kártyád, és osszál 4 sérülés lapot lefordítva a hajódhoz."""
        "Manaroo":
            text: """A harci fázis kezdetén hozzárendelheted az összes fókuszt, kitérés és kék célpontbemérő jelződet egy baráti hajónak."""
        '"Deathfire"':
            text: '''Mikor felfeded a manőver tárcsád vagy miután végrehajtasz egy akciót, végrehajthatsz egy %BOMB% fejlesztés kártya akciót ingyen.'''
        "Maarek Stele (TIE Defender)":
            text: """Mikor támadásodból felfordítot sérüléskártyát húzna a védekező, húzz te 3-at, válassz ki egyet és add át a védekezőnek. A többit dobd el."""
        "Countess Ryad":
            text: """Mikor felfedsz egy (%STRAIGHT%) manővert, kezelheted (%KTURN%) manőverként."""
        "Poe Dameron (PS9)":
            text: """Támadáskor vagy védekezéskor, ha van %FOCUS% jelződ, megváltoztathatod egy %FOCUS% dobásod %HIT% vagy %EVADE% eredményre."""
        "Rey":
            text: """Támadáskor vagy védekezéskor, ha az ellenséges hajó benne van a tüzelési szögedben, újradobhatsz akár 2 üres kockát is."""
        'Han Solo (TFA)':
            text: '''A hajók felhelyezésénél, bárhova elhelyezheted a hajót az ellenséges hajóktól legalább 3-as távolságra.'''
        'Chewbacca (TFA)':
            text: '''Miután egy baráti hajó 1-3-as távolságban megsemmisül (de nem leesik a pályáról), végrehajthatsz egy támadást.'''
        'Norra Wexley':
            text: '''Támadáskor vagy védekezéskor, elkölthetsz egy célpontbemérőt, ami az ellenfél hajóján van, hogy egy %FOCUS% eredményt adhass a dobásodhoz.'''
        'Shara Bey':
            text: '''Ha egy 1-2-es távolságban lévő másik baráti hajó támad, a te kék célpontbemérő jelződet sajátjaként kezelheti.'''
        'Thane Kyrell':
            text: '''Miután a tüzelési szögedben 1-3-as távolságban lévő ellenséges hajó megtámadott egy másik baráti hajót, végrehajthatsz egy ingyen akciót.'''
        'Braylen Stramm':
            text: '''Egy manőver végrehajtása után dobhatsz egy támadókockával. Ha a dobás %HIT% vagy %CRIT%, vegyél le egy stressz jelzőt a hajódról.'''
        '"Quickdraw"':
            text: '''Körönként egyszer, mikor elvesztesz egy pajzsot, végrehajthatsz egy elsődleges fegyver támadást.'''
        '"Backdraft"':
            text: '''Mikor támadsz a kiegészítő tüzelési szögedben, adj a dobásodhoz egy 1 %CRIT% kockát.'''
        'Fenn Rau':
            text: '''Támadáskor vagy védekezéskor, ha az ellenséges hajó 1-es távolságban van, további egy kockával dobhatsz.'''
        'Old Teroch':
            text: '''A harci fázis elején, válaszhatsz egy ellenséges hajót 1-es távolságban. Ha benne vagy a tüzelési szögében, dobja el minden %FOCUS% és %EVADE% jelzőjét.'''
        'Kad Solus':
            text: '''Miután végrehajtasz egy piros manővert, adj 2 %FOCUS% jelzőt a hajódhoz.'''
        'Ketsu Onyo':
            text: '''A harci fázis kezdetén, választhatsz egy hajót 1-es távolságban és ha az benne van az elsődleges <strong>vagy</strong> a változtatható tüzelési szögedben, kap egy vonósugár jelzőt.'''
        'Asajj Ventress':
            text: '''A harci fázis kezdetén, választhatsz egy hajót 1-2-es távolságban. Ha az benne van a változtatható tüzelési szögedben, kap egy stressz jelzőt.'''
        'Sabine Wren (Scum)':
            text: '''Védekezéskor, ha a támadó 2-es távolságon és a változtatható tüzelési szögeden belül van, adhatsz egy %FOCUS% kockát a dobásodhoz.'''
        # Wave X
        'Sabine Wren (TIE Fighter)':
            text: '''Közvetlenül mielőtt felfeded a tárcsád, végrehajthatsz egy ingyenes %BOOST% vagy %BARRELROLL% akciót.'''
        '"Zeb" Orrelios (TIE Fighter)':
            text: '''Mikor védekezel, a %CRIT% dobásokat előbb semlegesítheted, mint a %HIT% dobásokat.'''
        'Kylo Ren':
            text: '''Körönként, mikor először eltalálnak, adj egy "Megmutatom a sötét oldalt" feltétel kártyát a támadónak.'''
        'Unkar Plutt':
            text: '''Az aktivációs fázis végén, adnod <strong>kell</strong> egy vonósugár jelzőt minden hajónak amivel érintkezel.'''
        'Cassian Andor':
            text: '''Az aktivációs fázis kezdetén, elvehetsz egy stressz jelzőt egy 1-2 távolságban lévő másik baráti hajóról.'''
        'Bodhi Rook':
            text: '''Mikor egy baráti hajó célpontbemérőt rak fel, bemérhet egy ellenséges hajót amely 1-3 távolságban van bármely baráti hajótól.'''
        'Heff Tobber':
            text: '''Miután egy ellenséges hajó végrehajtotta a manőverét, ami átlapolást eredményezett a te hajóddal, végrehajthatsz egy ingyen akciót.'''
        '''"Duchess"''':
            text: '''Ha fel vagy szerelve egy "Adaptive Ailerons" fejlesztéssel, figyelmen kívül hagyhatod a kártya képességét.'''
        '''"Pure Sabacc"''':
            text: '''Támadáskor, ha 1 vagy kevesebb sérülés kártyád van, plusz egy támadókockával dobhatsz When attacking.'''
        '''"Countdown"''':
            text: '''Védekezéskor, ha nem vagy stresszelve - az eredmény összehasonlítás lépésben -, elszenvedhetsz egy sérülést, hogy töröld az összes kockadobást. Ha így teszel, kapsz egy stressz jelzőt.'''
        'Nien Nunb':
            text: '''Ha kapsz egy stressz jelzőt és van egy ellenséges hajó a tüzelési szögedben 1-es távolságban, eldobhatod a stressz jelzőt.'''
        '"Snap" Wexley':
            text: '''Miután végrehajtasz egy 2, 3 vagy 4-es sebességű manővert és nem érintkezel hajóval, végrehajthatsz egy ingyenes %BOOST% akciót.'''
        'Jess Pava':
            text: '''Támadáskor vagy védekezéskor, minden 1-es távolságban lévő másik baráti hajó után újradobhatsz egy kockát.'''
        'Ahsoka Tano':
            text: '''A harci fázis kezdetén, elkölthetsz 1 %FOCUS% jelzőt, hogy egy kiválasztott 1-es távolságban lévő baráti hajó végrehajthasson egy ingyenes akciót.'''
        'Captain Rex':
            text: '''Miután végrehajtasz egy támadást, add a "Suppressive Fire" feltétel kártyát a védekezőhöz.'''
        'Major Stridan':
            text: '''Az akciók és fejlesztés kártyák 2-3 távolságban lévő baráti hajóra hivatkoznak, kezeld úgy mintha 1 távolságra hivatkoznának.'''
        'Lieutenant Dormitz':
            text: '''A felrakás fázisban, a baráti hajókat bárhova rakhatod tőled 1-2 távolságra.'''
        'Constable Zuvio':
            text: '''Mikor felfedsz egy hátra manővert, dobhatsz bombát az elülső pöckök használatával (beleértve az "<strong>Akció:</strong>" fejlécű bombákat).'''
        'Sarco Plank':
            text: '''Védekezéskor, a mozgékonyság értéked helyett dobhatsz annyi kockával amekkora sebességű manővert végeztél ebben a körben.'''

    upgrade_translations =
        "Ion Cannon Turret":
            text: """<strong>Támadás:</strong> támadj meg egy hajót (akkor is, ha a hajó kívül esik a tüzelési szögeden). Ha ez a támadás eltalálja a célpont hajót, az elszenved 1 sérülést és kap 1 ion jelzőt. Ezután az összes kocka eredményét érvényteleníteni kell."""
        "Proton Torpedoes":
            text: """<strong>Támadás (célpontbemérő):</strong> költs el egy célpontbemérő jelzőt és dobd el ezt a lapot, hogy végrehajtsd a támadást. Egy %FOCUS% dobásod eredményét %CRIT%-ra módosíthatod."""
        "R2 Astromech":
            text: """Minden egyes és kettes sebességű manőver zöldnek számít."""
        "R2-D2":
            text: """Miután egy zöld manővert hajtasz végre, visszakapsz egy pajzs jelzőt. (Nem haladhatja meg a kezdeti értéket.)"""
        "R2-F2":
            text: """<strong>Akció:</strong> Növeld eggyel a mozgékonyság értékedet a kör végéig."""
        "R5-D8":
            text: """<strong>Akció:</strong> Dobj egy védekező kockával. Ha az eredmény %EVADE% vagy %FOCUS% dobj el egy képpel lefelé lévő sérülés kártyát."""
        "R5-K6":
            text: """Miután elhasználtad a célpontbemérő jelzőt, dobj egy védekező kockával. Ha az eredmény %EVADE%, azonnal visszateheted ugyanarra a hajóra a célbemérés jelzőt. Ezt a jelzőt nem használhatod el ebben a támadásban."""
        "R5 Astromech":
            text: """A kör vége fázisban egy szöveggel felfelé lévő [Ship] típusú sérüléskártyát lefordíthatsz."""
        "Determination":
            text: """Ha felfordított [Pilot] sérülés kártyát húznál, azonnal eldobhatod anélkül, hogy végrehajtanád."""
        "Swarm Tactics":
            text: """A harci fázis kezdetén válassz egy baráti hajót, ami 1-es távolságon belül van. A fázis végéig a hajó pilótaképzettsége meg fog egyezni a tiéddel."""
        "Squad Leader":
            text: """<strong>Akció:</strong> válassz egy hajót 1-2 távolságon belül, akinek a pilótaképzettsége alacsonyabb mint a sajátod. A választott hajó azonnal végrehajthat egy szabad akciót."""
        "Expert Handling":
            text: """<strong>Akció:</strong> hajts végre egy orsózás akciót. Ha nem rendelkezel %BARRELROLL% képességgel, kapsz egy stressz jelzőt. Ezután eltávolíthatsz egy ellenséges célpontbemérő jelzőt a hajódról."""
        "Marksmanship":
            text: """<strong>Akció:</strong> amikor támadsz ebben a körben, egy %FOCUS% eredményt %CRIT% eredményre, az összes többi %FOCUS% dobásod pedig %HIT%-ra változtathatod."""
        "Concussion Missiles":
            text: """<strong>Támadás (célpontbemérő):</strong> költs el a célpontbemérő jelzőt és dobd el ezt a kártyát is, hogy végrehajtsd a támadást. Egy üres dobást %HIT%-ra fordíthatsz."""
        "Cluster Missiles":
            text: """<strong>Támadás (célpontbemérő):</strong> költs el a célpontbemérő jelzőt és dobd el ezt a kártyát is, hogy végrehajtsd a támadást kétszer."""
        "Daredevil":
            text: """<strong>Akció:</strong>: Hajts végre egy fehér (%TURNLEFT% 1) vagy (%TURNRIGHT% 1) manővert. Ezután kapsz egy stressz jelzőt. Ha nem rendelkezel %BOOST% ikonnal, dobj két támadás kockával. Elszenveded az összes kidobott %HIT% és %CRIT% sérülést."""
        "Elusiveness":
            text: """Amikor védekezel, kaphatsz egy stressz jelzőt, hogy kiválassz egy támadó kockát. A támadónak azt a kockát újra kell dobnia. Ha már legalább egy stressz jelzővel is rendelkezel, nem használhatod ezt a képességet."""
        "Homing Missiles":
            text: """<strong>Támadás (célpontbemérő):</strong> dobd el ezt a kártyát, hogy végrehajtsd a támadást. A védekező nem használhatja a kitérés jelzőket e támadás ellen."""
        "Push the Limit":
            text: """Körönként egyszer, miután végrehajtottál egy akciót, végrehajthatsz egy szabad akciót az akciósávodról. Ezután kapsz egy stressz jelzőt."""
        "Deadeye":
            text: """<span class="card-restriction">Csak kis hajó.</span>%LINEBREAK%Kezelheted a <strong>Támadás (célpontbemérő):</strong> fejlécet <strong>Támadás (fókusz):</strong> fejlécként. Amikor egy támadás azt kívánja, hogy elhasználj egy célpontbemérő jelzőt, akkor fókusz jelzőt is használhatsz helyette."""
        "Expose":
            text: """<strong>Akció:</strong> A kör végéig növeld meg eggyel az elsődleges fegyvered értékét és csökkentsd eggyel a mozgékonyság értékedet."""
        "Gunner":
            text: """Miután végrehajtottál egy támadást, ami nem talált, azonnal végrehajthatsz egy támadást az elsődleges fegyverrel. Nem hajthatsz végre másik támadást ebben a körben."""
        "Ion Cannon":
            text: """<strong>Támadás:</strong> Támadj meg egy hajót. Ha ez a támadás eltalálja a célpont hajót, az kap egy sérülést és egy ion jelzőt. Ezután az összes kocka eredményét érvényteleníteni kell. Támadó kockák: 3; Hatótáv: 1-3"""
        "Heavy Laser Cannon":
            text: """<strong>Támadás:</strong> Támadj meg egy hajót. Közvetlenül a dobás után minden %CRIT% eredményt át kell fordítani %HIT% eredményre. Támadó kockák: 4; Hatótáv: 2-3"""
        "Seismic Charges":
            text: """Amikor felfeded a manőveredet, eldobhatod ezt a kártyát, hogy <strong>letehess</strong> 1 Seismic Charges (szeizmikus töltetek) jelzőt. Ez a jelző az Aktivációs fázis végén <strong>felrobban</strong>.%LINEBREAK%Minden hajó 1-es távolságban elszenved 1 sérülést. Aztán a jelzőt le kell venni."""
        "Mercenary Copilot":
            text: """Amikor 3-as távolságra támadsz, egy %HIT% eredményt %CRIT% eredményre változtathatsz."""
        "Assault Missiles":
            text: """<strong>Támadás (célpontbemérő):</strong> dobd el a célpontbemérő jelzőt és dobd el ezt a kártyát is, hogy végrehajtsd a támadást. Ha ez a támadás talál, a védekezőtől egyes távolságra lévő összes hajó kap egy sérülést. Támadó kockák: 4; Hatótáv: 2-3."""
        "Veteran Instincts":
            text: """<em>(Veterán ösztönök)</em> Növeld kettővel a pilótaképzettség értékedet."""
        "Proximity Mines":
            text: """<strong>Akció:</strong> Dobd el ezt a kártyát, hogy letehess egy Proximity Mine (közelségi gyújtós akna) jelzőt. Ha egy hajó a manőver végrehajtása során a talpával vagy a manőver sablonjával átlapolja a jelzőt, akkor az akna felrobban.%LINEBREAK%A érintett hajók dobnak  3 támadó kockával és elszenvednek minden %HIT% és %CRIT% dobást.  Aztán a jelzőt le kell venni."""
        "Weapons Engineer":
            text: """Egyszerre két célpontbemérőd lehet (egy ellenséges hajóra csak egyet tehetsz). Amikor kapsz egy célpontbemérőt, bemérhetsz két ellenséges hajót."""
        "Draw Their Fire":
            text: """Ha egy baráti hajót egyes távolságon belül eltalál egy támadás, dönthetsz úgy, hogy a célpont helyett bevállalsz egy %CRIT%-t, amit nem lehet érvényteleníteni."""
        "Luke Skywalker":
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Miután végrehajtottál egy támadást, ami nem talált, azonnal végrehajthatsz egy támadást az elsődleges fegyverrel. Egy %FOCUS% eredményt %HIT% eredményre változtathatsz. Nem hajthatsz végre másik támadást ebben a körben."""
        "Nien Nunb":
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Az összes %STRAIGHT% manővert zöld manőverként kezelheted."""
        "Chewbacca":
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Amikor sérülés kártyát húznál, azonnal eldobhatod azt a kártyát, és kapsz egy pajzs jelzőt. Ezután dobd el ezt a fejlesztés kártyát."""
        "Advanced Proton Torpedoes":
            text: """<strong>Támadás (célpontbemérő):</strong> költs el egy célpontbemérő jelzőt és dobd el ezt a kártyát, hogy végrehajtsd a támadást. Legfeljebb három üres dobásod eredményét %FOCUS%-ra módosíthatod."""
        "Autoblaster":
            text: """<strong>Támadás:</strong> Támadj meg egy hajót.%LINEBREAK%A %HIT% dobásaidat nem érvényetelenítik a védő kockák. A védekező érvénytelenítheti a %CRIT% dobásokat a %HIT% előtt."""
        "Fire-Control System":
            text: """Miután végrehajtasz egy támadást, tehetsz egy célpontbemérő jelzőt a védekező hajóra."""
        "Blaster Turret":
            text: """<strong>Támadás (fókusz):</strong> költs el egy fókusz jelzőt, hogy végrehajthass egy támadást egy hajó ellen (akkor is, ha a hajó kívül esik a tüzelési szögeden)."""
        "Recon Specialist":
            text: """<em>(Felderítő specialista)</em> Amikor %FOCUS% akciót hajtasz végre, egy további %FOCUS% jelzőt tehetsz a hajódhoz."""
        "Saboteur":
            text: """<strong>Akció:</strong>Válassz egy ellenséges hajót 1-es távolságon belül, és dobj egy támadó kockával. Ha az eredmény %HIT% vagy %CRIT%, válassz egyet a hajóhoz tartozó képpel lefordított sérülés kártyák közül, fordítsd fel, és hajtsátok végre a hatását."""
        "Intelligence Agent":
            text: """Az aktiválási fázis kezdetén válasz egy ellenséges hajót 1-2 távolságon belül. Megnézheted, hogy az a hajó milyen manővert fog végrehajtani."""
        "Proton Bombs":
            text: """Amikor felfeded a manőveredet, eldobhatod ezt a kártyát, hogy <strong>letehess</strong> egy proton bomba jelzőt. Ez a jelző az Aktivációs fázis végén <strong>felrobban</strong>.%LINEBREAK%Minden 1-es távolságon belüli hajó kap 1 felfordított sérülés kártyát.  Aztán a jelzőt le kell venni."""
        "Adrenaline Rush":
            text: """<em>(Adrenalinlöket)</em> Amikor felfedsz egy piros manővert, eldobhatod ezt a lapot, hogy az a manőver fehér színűnek számítson az aktiválási fázis végéig."""
        "Advanced Sensors":
            text: """Közvetlen a manőver tárcsa felfedése előtt végrehajthatsz egy szabad akciót. Amennyiben használod ezt a képességet, hagyd ki ebből a körből az "Akció végrehajtása" fázist."""
        "Sensor Jammer":
            text: """Amikor védekezel, megváltoztathatod a támadó egyik %HIT% eredményét %FOCUS% eredményre. A támadó nem dobhatja újra az átforgatott kockát."""
        "Darth Vader":
            text: """<span class="card-restriction">Csak birodalmiak.</span>%LINEBREAK%Miután végrehajtottál egy támadást egy ellenséges hajó ellen, kioszthatsz magadnak két sérülést, hogy az a hajó kritikus találatot kapjon."""
        "Rebel Captive":
            text: """<span class="card-restriction">Csak birodalmiak.</span>%LINEBREAK%Körönként egyszer az első hajó, aki ellened támadást intéz, azonnal kap egy stressz jelzőt."""
        "Flight Instructor":
            text: '''Amikor védekezel, újradobhatod egyik %FOCUS% dobásod. Ha a támadó pilótaképzettsége "2" vagy alacsonyabb, egy üres eredményt dobhatsz újra.'''
        "Navigator":
            text: """Amikor felfeded a manővered, áttekerheted a tárcsádat egy másik, de az eredeti iránnyal egyező manőverre. Nem választhatsz piros manővert, ha már van rajtad egy stressz jelző."""
        "Opportunist":
            text: """Amikor támadsz, és a védekező hajónak nincs se fókusz se kitérés jelzője, akkor kaphatsz egy stressz jelzőt, hogy plusz egy támadókockával guríts. Nem használhatod ezt a képességet, ha már van stressz jelződ."""
        "Comms Booster":
            text: """<strong>Energia:</strong> Költs el egy energiát, így leveheted az összes stressz jelzőt egy 1-3 távolságra lévő baráti hajóról. Ezek után tégy egy fókusz jelzőt arra a hajóra."""
        "Slicer Tools":
            text: """<strong>Akció:</strong> Válassz egy vagy több olyan ellenséges hajót 1-3 távolságon belül, amelyeken van stressz jelző. Minden ilyen kiválasztott hajó esetében elkölthetsz egy energia jelzőt, hogy annak a hajónak 1 pontnyi sérülést okozz."""
        "Shield Projector":
            text: """Amikor egy ellenséges hajó eldönti, hogy vagy egy kis vagy egy nagy méretű hajót megtámad, elkölthetsz 3 energiát annak érdekében, rákényszerítsd azt a hajót (ha lehetséges) arra, hogy téged támadjon meg."""
        "Ion Pulse Missiles":
            text: """<strong>Támadás (célpontbemérő)</strong>: Dobd el ezt a kártyát, hogy végrehajtsd a támadást. Ha ez a támadás eltalálja a célpont hajót, az 1 sérülést szenved és kap 2 ion jelzőt. Ezután az <strong>összes</strong> kocka eredményét érvényteleníteni kell."""
        "Wingman":
            text: """A harc fázis elején távolíts el 1 stressz jelzőt egy 1-es távolságon belül lévő másik baráti hajóról."""
        "Decoy":
            text: """A Harci fázis kezdetén választhatsz egy 1-2 távolságra lévő saját hajót. Cseréld ki a pilóta képességeteket a fázis végéig"""
        "Outmaneuver":
            text: """Amikor a saját tüzelési szögeden belül támadsz, és kívül esel a támadott hajó tüzelési szögén (magyarul, ha hátba támadod), csökkentsd a mozgékonyságát 1-el (minimum 0-ig)."""
        "Predator":
            text: """Támadáskor újradobhatsz 1 kockát. Amennyiben a védekező pilóta képessége 2 vagy kevesebb, 2 kockával dobhatsz újra."""
        "Flechette Torpedoes":
            text: """<strong>Támadás (célpontbemérő):</strong> költs el egy célpontbemérő jelzőt és dobd el ezt a kártyát, hogy végrehajtsd a támadást. Miután végrehajtottad a támadást, a védekező fél kap egy stressz jelzőt, ha a szerkezeti értéke 4-es vagy annál kevesebb."""
        "R7 Astromech":
            text: """Körönként egyszer védekezéskor, ha van célpontbemérő jelződ a támadón, azt elköltve kiválaszthatsz akármennyi támadó kockát. A támadónak azokat újra kell dobnia."""
        "R7-T1":
            text: """<strong>Action:</strong> Válassz 1 ellenséges hajót 1-2 távolságra. Ha benne vagy a tüzelési szögében, tehetsz rá célpontbemérőt. Ezután végrehajthatsz egy ingyenes %BOOST% akciót."""
        "Tactician":
			      text: """Amikor megtámadsz egy 2-es távolságra és a tüzelési szögedben lévő hajót, az kap egy stressz jelzőt."""
        "R2-D2 (Crew)":
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Ha a kör végén nincs pajzsod, kapsz 1 pajzs jelzőt és dobnod kell egy támadókockával. %HIT% esetén véletlenszerűen fordítsd fel az egyik sebzés kártyádat és hajtsd végre."""
        "C-3PO":
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Egyszer egy körben, mielőtt akár egy védekező kockával is dobnál, hangosan megtippelheted, hogy hány %EVADE% fogsz dobni. Ha sikerült pontosan tippelned (mielőtt módosítottad volna a kockát), akkor az eredményhez hozzá adhatsz még egy plusz %EVADE%-t."""
        "Single Turbolasers":
            text: """<strong>Támadás (Energia):</strong> költs el 2 energiát erről a kártyáról hogy ezzel a fegyverrel támadhass. A védekező mozgékonyság értéke megduplázódik e támadás ellen. Egy %FOCUS% dobásod átfordíthatod %HIT%-ra."""
        "Quad Laser Cannons":
            text: """<strong>Támadás (energia):</strong> költs el 1 energiát erről a kártyáról, hogy támadhass ezzel a fegyverrel. Amennyiben nem találod el az ellenfelet, azonnal elkölthetsz még 1 energiát erről a kártyáról egy újabb támadáshoz."""
        "Tibanna Gas Supplies":
            text: """<span class="card-restriction">Limitált.</span>%LINEBREAK%<strong>Energia:</strong> A kártya eldobásának fejében, kaphatsz 3 energiát."""
        "Ionization Reactor":
            text: """<span class="card-restriction">Limitált.</span>%LINEBREAK%<strong>Energia:</strong> Költs el 5 energiát erről a kártyáról és dobd el ezt a kártyát, annak érdekében, hogy használhasd. Minden 1-es távolságban lévő másik hajó elszenved egy sérülést és kap egy ion jelzőt."""
        "Engine Booster":
            text: """<span class="card-restriction">Limitált.</span>%LINEBREAK%Rögtön mielőtt felfednéd a manőver tárcsádat, elkölthetsz egy energiát, ilyenkor végrehajthatsz egy fehér (%STRAIGHT% 1) manővert. Nem használhatod ezt a képességet, ha a manőver által ütköznél egy másik hajóval."""
        "R3-A2":
            text: """Mikor kijelölöd a támadásod célpontját és a védő a tüzelési szögeden belül van, kaphatsz 1 stressz jelzőt azért, hogy a védő is kapjon 1-et."""
        "R2-D6":
            text: """A fejlesztési sávod kap egy %ELITE% jelzőt.%LINEBREAK%Nem szerelheted fel, ha már van %ELITE% ikonod vagy a pilóta képességed 2 vagy kevesebb."""
        "Enhanced Scopes":
            text: """Az Aktiválási fázis során, vedd úgy, hogy a pilótaképzettséged "0"."""
        "Chardaan Refit":
            text: """<span class="card-restriction">Csak A-Wing.</span>%LINEBREAK%Ennek a kártyának negatív osztag módosító értéke van."""
        "Proton Rockets":
            text: """<strong>Támadás (fókusz)</strong>. Dobd el ezt a kártyát, hogy végrehajthasd a támadást. Annyi plusz kockával dobhatsz, mint amennyi a mozgékonyságod értéke, de maximum 3-mal."""
        "Kyle Katarn":
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Miután levettél egy stressz jelzőt a hajódról, rárakhatsz egy fókusz jelzőt."""
        "Jan Ors":
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Körönként egyszer, ha egy 1-3 távolságra lévő szövetséges hajó fókusz akciót hajtana végre vagy egy fókusz jelzőt kapna, ahelyett adhatsz neki egy kitérés jelzőt."""
        "Toryn Farr":
            text: """<span class="card-restriction">Csak óriás hajó. Csak lázadók.</span> %LINEBREAK%<strong>Akció:</strong> Költs el bármennyi energiát majd válassz ugyanennyi ellenséges hajót 1-2 távolságra. Vegyél le róluk minden fókusz, kitérés és kék bemérés jelzőt."""
        "R4-D6":
            text: """Amikor eltalálnak és legalább három olyan %HIT% találat van, amit nem tudsz érvényteleníteni, változtasd meg őket addig, míg 2 nem marad. Minden egyes így érvénytelenített találatért kapsz 1 stressz jelzőt."""
        "R5-P9":
            text: """A Harci fázis végén elkölthetsz 1 fókusz jelzőt, hogy visszakapj 1 pajzsot (max. pajzs értékig)."""
        "WED-15 Repair Droid":
            text: """<span class="card-restriction">Csak óriás hajó.</span>%LINEBREAK%<strong>Akció:</strong> Költs el 1 energiát, hogy eldobhasd 1 lefordított sérülés kártyádat, vagy költs el 3-at, hogy eldobhass 1 felfordított sérüléskártyát."""
        "Carlist Rieekan":
            text: """<span class="card-restriction">Csak óriás hajó. Csak lázadók.</span> %LINEBREAK%Csak nagy hajók. Csak lázadók. Az aktiválási fázis elején, eldobhatod ez a kártyát, annak érdekében, hogy minden szövetséges hajó pilóta képzettségét megnöveld "12"-re, a kör végéig."""
        "Jan Dodonna":
            text: """<span class="card-restriction">Csak óriás hajó. Csak lázadók.</span> %LINEBREAK%Amikor egy 1 távolságra lévő szövetséges hajó támad, az egyik %HIT%-t %CRIT%-ra változtathatja."""
        "Expanded Cargo Hold":
            text: """<span class="card-restriction">Csak GR-75.</span> Egy körben egyszer lehet csak igénybe venni. Ha kapnál egy felfordított sebzés kártyát (kritikus sebzés után), akkor eldöntheted, hogy azt az orr, vagy a tat pakliból veszed ki."""
        "Backup Shield Generator":
            text: """<span class="card-restriction">Limitált.</span>%LINEBREAK%Minden kör végén beválthatsz egy energiát egy pajzsra. (nem mehet a maximum érték fölé.)"""
        "EM Emitter":
            text: """<span class="card-restriction">Limitált.</span>%LINEBREAK%Amikor egy támadás kereszttüzébe kerülsz, a védekező fél 3 kockával dobhat (1 helyett)."""
        "Frequency Jammer":
            text: """<span class="card-restriction">Limitált.</span>%LINEBREAK%Amikor egy zavarás akciót hajtasz végre, válassz ki egy olyan ellenséges hajót aminek nincs stressz jelzője és legfeljebb 1-es távolságra van a zavart hajótól. Ez a hajó is kap egy stressz jelzőt."""
        "Han Solo":
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Amikor támadsz, és van célpont bemérése jelződ a védekező félen, felhasználhatód azt annak érdekében, hogy az összes %FOCUS% dobásod %HIT% találatra forgathasd."""
        "Leia Organa":
            text: """<span class="card-restriction">Csak lázadó.</span>%LINEBREAK%Az aktivációs fázis elején eldobhatod a kártyát, így minden baráti hajó, amelyik piros manővert választott, fehérként használhatja azt a fázis végéig."""
        "Targeting Coordinator":
            text: """<span class="card-restriction">Csak óriás hajó. Limitált. </span>%LINEBREAK%<strong>Energia:</strong> Költs el 1 energiát, válassz egy saját hajót 1-2 távolságra. Hajtsd végre egy cél bemérést, majd helyezz 1 kék bemérés jelzőt a választott hajóra."""
        "Raymus Antilles":
            text: """<span class="card-restriction">Csak óriás hajó. Csak lázadó.</span> %LINEBREAK%Az Aktiválási fázis elején válassz 1 ellenséges hajót 1-3 távolságra. Megnézheted a választott manőverét. Amennyiben az fehér, kap 1 stressz jelzőt."""
        "Gunnery Team":
            text: """<span class="card-restriction">Limitált.</span>Egy körben egyszer, amikor másodlagos fegyverrel támadsz, elkölthetsz egy energiát annak érdekében, hogy egy üres kockát %HIT%-ra forgathass."""
        "Sensor Team":
            text: """A célpont bemérését 1-5 távolságra lévő hajón is használhatod (1-3 helyett)."""
        "Engineering Team":
            text: """<span class="card-restriction">Limitált.</span>%LINEBREAK%Az aktiválási fázis során, hogy ha egy %STRAIGHT% manővert fedsz fel, kapsz egy plusz energiát az “Energia növelése” lépés során."""
        "Lando Calrissian":
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%<strong>Akció:</strong> Dobj két védekező kockával. Annyi fókusz jelzőt adj a hajódnak, amennyi %FOCUS%-t, valamint annyi kitérés jelzőt, ahány %EVADE%-t dobtál."""
        "Mara Jade":
            text: """<span class="card-restriction">Csak birodalmiak.</span>%LINEBREAK%A Harci fázis végén minden olyan 1 távolságra lévő ellenséges hajó, amin nincs stressz jelző, kap egy stressz jelzőt."""
        "Fleet Officer":
            text: """<span class="card-restriction">Csak birodalmiak.</span>%LINEBREAK%<strong>Akció:</strong>Válassz ki maximum 2 hajót 1-2 távolságon belül és adj nekik 1-1 fókusz jelzőt. Ezután kapsz egy stressz jelzőt."""
        "Lone Wolf":
            text: """Amikor támadsz vagy védekezel, és nincs 1-2 távolságra tőled másik baráti hajó, újradobhatod egy üres dobásodat."""
        "Stay On Target":
            text: """Amikor felfeded a manővertárcsád, átforgathatod a tárcsát egy másik, de ugyanekkora sebességű manőverre. Azt a manővert pirosnak kell tekinteni."""
        "Dash Rendar":
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Akkor is támadhatsz, ha egy akadállyal fedésben vagy. A támadásod nem zavarható."""
        '"Leebo"':
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%<strong>Akció:</strong> végrehajthatsz egy ingyen gyorsítás akciót. Ezután kapsz egy ion jelzőt."""
        "Ruthlessness":
            text: """<span class="card-restriction">Csak birodalmiak.</span>%LINEBREAK%Ha olyan támadást hajtasz végre, ami talál, ki <strong>kell</strong> választanod egy másik hajót a védekezőtől 1 távolságra (másikat, mint tied). Az a hajó 1 sérülést szenved. (Megj.: ha nincs ellenséges hajó, akkor a baráti hajót kell választanod)."""
        "Intimidation":
            text: """Amíg egy ellenséges hajóval érintkezel, annak a hajónak a mozgékonyságát csökkentsd eggyel."""
        "Ysanne Isard":
            text: """<span class="card-restriction">Csak birodalmiak.</span>%LINEBREAK%A Harci fázis elején, ha nincs pajzsod és legalább egy sérülés jelző van a hajódon, végrehajthatsz egy ingyen kitérés akciót."""
        "Moff Jerjerrod":
            text: """<span class="card-restriction">Csak birodalmiak.</span>%LINEBREAK%Csak birodalmiak. Amikor kapnál egy felfordított sérülés kártyát, eldobhatod ezt vagy egy másik %CREW% fejlesztés kártyádat, hogy a sérülés kártyát lefelé fordítsd (a hatása így nem érvényesül)."""
        "Ion Torpedoes":
            text: """<strong>Támadás (célpontbemérő):</strong> költs el egy célpontbemérő jelzőt és dobd el ezt a kártyát, hogy végrehajtsd a támadást. Ha ez a támadás talál, akkor a célpont és a tőle 1-es távolságra lévő hajók kapnak 1 ion jelzőt."""
        "Bodyguard":
            text: """<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%A Harci fázis elején egy fókuszt elköltve kiválaszthatsz egy 1-es távolságra lévő baráti hajót, aminek a tiednél nagyobb a pilóta képzettsége. A kör végéig annak a hajónak növeld meg eggyel a mozgékonyságát."""
        "Calculation":
            text: """Amikor támadsz, elkölthetsz egy fókusz jelzőt, hogy egy %FOCUS% dobásod %CRIT%-ra módosíts."""
        "Accuracy Corrector":
            text: """Amikor támadsz, a "Támadó kocka módosítás" lépésben, törölheted az összes kockád eredményét. Ezután a dobásodhoz hozzáadhatsz 2 %HIT%-t. E támadás során a kockáid eredményét nem módosíthatod még egyszer."""
        "Inertial Dampeners":
            text: """Amikor felfeded a manővertárcsád eredményét, eldobhatod ezt a kártyát, hogy végrehajts egy fehér (0 %STOP%) manővert. Ezután kapsz egy stressz jelzőt."""
        "Flechette Cannon":
            text: """<strong>Támadás:</strong> Támadj meg egy hajót. Ha a támadás során a védő találatot kap, akkor 1 sérülést szenved, valamint, ha nincs rajta stressz jelző, akkor kap egyet. Ezután a többi kocka eredményét érvényteleníteni kell. Támadó kockák: 3; Hatótáv: 1-3."""
        '"Mangler" Cannon':
            text: """<strong>Támadás:</strong> Támadj meg egy hajót. Támadáskor egyik %HIT% találatod %CRIT%-re módosíthatod. Támadó kockák: 3; Hatótáv: 1-3."""
        "Dead Man's Switch":
            text: """Amikor megsemmisülsz, minden, tőled 1-es távolságra lévő hajó elszenved 1 sérülést."""
        "Feedback Array":
            text: """A Harci fázis alatt, ahelyett, hogy támadnál, kaphatsz egy ion jelzőt és elszenvedhetsz 1 sérülést, hogy kiválaszthass egy 1-es távolságra lévő ellenséges hajót. Az a hajó elszenved 1 sérülést."""
        '"Hot Shot" Blaster':
            text: """<strong>Támadás:</strong>: Dobd el ezt a kártyát, hogy megtámadhass 1 hajót (akkor is, ha a tüzelési szögeden kívülre esik). Támadó kockák: 3; Hatótáv: 1-2."""
        "Greedo":
            text: """<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%Minden körben, amikor először támadsz, illetve minden körben, amikor először védekezel, az első sérülés kártyát fel kell fordítani."""
        "Salvaged Astromech":
            text: """Amikor olyan sérülés kártyát húzol, amin a <strong>Ship</strong> szó szerepel, azonnal dobd el (mielőtt kifejtené hatását). Ezután dobd el ezt a fejlesztés kártyát."""
        "Bomb Loadout":
            text: """<span class="card-restriction">Csak Y-wing. Limitált.</span>%LINEBREAK%A fejlesztés sávod megkapja a %BOMB% fejlesztés ikont."""
        '"Genius"':
            text: """Ha olyan bombával vagy felszerelve, amit a manővertárcsád felfedése előtt kell ledobni, azt a bombát a mozgásod <strong>után</strong> is ledobhatod."""
        "Unhinged Astromech":
            text: """Az összes 3-as sebességű manővert vedd zöld színűnek."""
        "R4-B11":
            text: """Ha támadsz és ha már elhelyeztél egy célpontbemérő jelzőt a célponton, akkor válaszd ki a védő bármelyik vagy akár mindegyik kockáját. Ezekkel neki újra kell dobnia."""
        "Autoblaster Turret":
            text: """<strong>Támadás:</strong> Támadj meg egy hajót. A %HIT% dobásaid nem lehet a védekező kockákkal érvényteleníteni. A védő a %CRIT% dobásokat a %HIT%-ok előtt semlegesítheti."""
        "R4 Agromech":
            text: """Amikor támadsz, a fókusz jelző felhasználásával egy célpontbemérő jelzőt helyezhetsz el a célponton."""
        "K4 Security Droid":
            text: """<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%Egy zöld manőver végrehajtása után végrehajthatsz egy célpont bemérése akciót."""
        "Outlaw Tech":
            text: """<span class="card-restriction">Csak söpredék. Limitált.</span>%LINEBREAK%Miután végrehajtottál egy piros manővert, adhatsz a hajódnak egy fókusz jelzőt."""
        "Advanced Targeting Computer":
            text: """<span class="card-restriction">Csak TIE Advanced.</span>%LINEBREAK%Amikor az elsődleges fegyvereddel támadsz, ha már elhelyeztél egy célpontbemérő jelzőt a célponton, akkor a dobásaidhoz adj 1 %CRIT% eredményt. Ha megteszed, e támadás során már nem költheted el a célbepontbemérésed."""
        "Ion Cannon Battery":
            text: """<strong>Támadás (Energia):</strong> költs el 2 energiát erről a kártyáról hogy ezzel a fegyverrel támadhass. Ha ez a támadás talál, a védő egy kritikus sérülést szenved és kap egy ion jelzőt. Ezután töröld a dobásod minden eredményét."""
        "Extra Munitions":
            text: """<span class="card-restriction">Limitált.</span>%LINEBREAK%Amikor hozzárendeled ezt a kártyád a hajódhoz, tégy 1 hadianyag jelzőt minden a hajóra felszerelt %TORPEDO%, %MISSILE% és %BOMB% fejlesztés kártyára. Amikor azt az utasítást kapod, hogy dobd el a fejlesztés kártyádat, ahelyett az azon a kártyán található hadianyag jelzőt is eldobhatod."""
        "Cluster Mines":
            text: """<strong>Akció:</strong> Dobd el ezt a kártyát, hogy <strong>letehess</strong> 1 Cluster Mine jelzőt. Amikor egy hajó alapja vagy manőver sablonja érinti ezt a jelzőt, a bomba <strong>felrobban</strong>. <br />Az érintett hajó dob 2 kockával és minden %HIT% és %CRIT% után sérülést szenved. Aztán a akna jelzőt le kell venni."""
        "Glitterstim":
            text: """A Harci fázis elején eldobhatod ezt a kártyát és kaphatsz 1 stressz jelzőt. Ha megteszed, a kör végéig mind támadásnál, mind védekezésnél minden %FOCUS% dobásod %HIT%-ra vagy %EVADE%-re módosíthatod."""
        "Grand Moff Tarkin":
            text: """<span class="card-restriction">Csak óriási hajók. Csak birodalmiak.</span> %LINEBREAK%Csak óriási hajók. Csak birodalmiak. A Harci fázis elején kiválaszthatsz egy 1-4 távolságra lévő másik hajót. Vagy leveszel róla 1 fókusz jelzőt, vagy adsz neki egyet."""
        "Captain Needa":
            text: """<span class="card-restriction">Csak óriási hajók. Csak birodalmiak.</span> %LINEBREAK%Ha az Aktivációs fázis során átfedésbe kerülnél egy akadállyal, nem kapsz 1 felfordított sérülés kártyát. Helyette dobj 1 támadó kockával. %HIT% vagy %CRIT% találat esetén 1 sérülést szenvedsz el."""
        "Admiral Ozzel":
            text: """<span class="card-restriction">Csak óriási hajók. Csak birodalmiak.</span> %LINEBREAK%<strong>Energia:</strong> Maximum 3 pajzsot levehetsz a hajódról. Minden levett pajzs után kapsz 1 energiát."""
        "Emperor Palpatine":
            text: """<span class="card-restriction">Csak birodalmiak.</span>%LINEBREAK%Körönként egyszer egy baráti hajó egyik kockájának eredményét megváltoztathatod bármely másra. Ezt az eredményt már nem lehet ismét módosítani."""
        "Bossk":
            text: """<span class="card-restriction">Csak söpredék.</span>%LINEBREAK% Ha egy támadásod nem talál és nincs rajtad stressz jelző, mindenképpen kapsz egy stressz jelzőt. Ezután tégy egy fókusz jelzőt a hajód mellé, majd alkalmazd a célpontbemérő akciót a védőn."""
        "Lightning Reflexes":
            text: """<span class="card-restriction">Csak kis hajók.</span>%LINEBREAK%Miután végrehajtottál egy fehér vagy zöld manővert, eldobhatod ezt a kártyát és megfordíthatod a hajód 180&deg;-kal. A „Pilóta Stresszhelyzetének ellenőrzése” lépés után 1 stressz jelzőt kapsz."""
        "Twin Laser Turret":
            text: """<strong>Támadás:</strong> hajtsd végre ezt a támadást <strong>kétszer</strong> (akár a tüzelési szögeden kívül eső hajók ellen is). Minden alkalommal, ha a lövés talál, a védő 1 sérülést szenved el. Ezután az <strong>összes</strong> kocka eredményét hagyd figyelmen kívül."""
        "Plasma Torpedoes":
            text: """<strong>Támadás (célpontbemérő):</strong> költs el egy célpontbemérő jelzőt és dobd el ezt a kártyát, hogy végrehajtsd a támadást. Ha ez a támadás talál, a sebzés kiosztása után végy le egy pajzs jelzőt a védőről."""
        "Ion Bombs":
            text: """Amikor felfeded a manővertárcsád, <strong>eldobhatod</strong> ezt a kártyát, hogy letehess egy 1 ion bomba jelzőt. Ez a bomba az aktivációs fázis végén <strong>felrobban</strong>.<br />A bombától mért 1 távolságra minden hajó kap 2 ion jelzőt. Aztán a jelzőt le kell venni."""
        "Conner Net":
            text: """<strong>Akció:</strong> Dobd el ezt a kártyát, hogy <strong>letehess</strong> 1 Conner Net (Conner háló) jelzőt. Amikor egy hajó alapja vagy manőver sablonja érinti ezt a jelzőt, a bomba <strong>felrobban</strong>.<br />Az érintett hajó elszenved 1 sérülést és kap 2 ion jelzőt, valamint a kihagyja az akció végrehajtása lépést.  Aztán a jelzőt le kell venni."""
        "Bombardier":
            text: """Amikor ledobsz egy bombát, használhatod a (%STRAIGHT% 2) sablont a (%STRAIGHT% 1) helyett."""
        'Crack Shot':
            text: '''Ha egy hajót a tüzelési szögeden belül támadsz, az eredmény összehasonlítása lépés kezdetén, eldobhatod ezt a lapot, hogy az ellenfél egy %EVADE% dobás eredményét semlegesítsd.'''
        "Advanced Homing Missiles":
            text: """<strong>Támadás (célpontbemérő):</strong> dobd el ezt a kártyát, hogy végrehajthasd a támadást. Ha ez a támadás talál, ossz ki 1 felfordított sebzés kártyát a védőnek. Ezután az <strong>összes</strong> kocka eredményét hagyd figyelmen kívül."""
        'Agent Kallus':
            text: '''<span class="card-restriction">Csak birodalmiak.</span>%LINEBREAK%At the start of the first round, choose 1 enemy small or large ship.  When attacking or defending against that ship, you may change 1 of your %FOCUS% results to a %HIT% or %EVADE% result.'''
        'XX-23 S-Thread Tracers':
            text: """<strong>Támadás (fókusz):</strong> Discard this card to perform this attack.  If this attack hits, each friendly ship at Range 1-2 of you may acquire a target lock on the defender.  Then cancel <strong>all</strong> dice results."""
        "Tractor Beam":
            text: """<strong>Támadás:</strong> Attack 1 ship.%LINEBREAK%If this attack hits, the defender receives 1 tractor beam token.  Then cancel <strong>all</strong> dice results."""
        "Cloaking Device":
            text: """<span class="card-restriction">Csak kis hajók.</span>%LINEBREAK%<strong>Action:</strong> Perform a free cloak action.%LINEBREAK%At the end of each round, if you are cloaked, roll 1 attack die.  On a %FOCUS% result, discard this card, then decloak or discard your cloak token."""
        "Shield Technician":
            text: """<span class="card-restriction">Csak óriási hajók.</span>%LINEBREAK%Amikor végrehajtasz egy visszanyerés akciót, ahelyett, hogy elköltenéd az összes energiádat, te döntheted el, mennyi energiát használsz fel."""
        "Weapons Guidance":
            text: """<em>(Fegyvervezérlés)</em> Támadáskor elkölthetsz egy fókusz jelzőt, hogy egy üres kockát %HIT%-ra forgass."""
        "BB-8":
            text: """Mikor felfedsz egy zöld manővert, végrehajthatsz egy ingyen %BARRELROLL% akciót."""
        "R5-X3":
            text: """Mielőtt felfeded a tárcsád, eldobhatod ezt a lapot, hogy figyelmen kívül hagyhatsd az akadályokat a kör végéig."""
        "Wired":
            name: "Wired (Felpörögve)"
            text: """Támadáskor és védekezéskor, ha stresszes vagy, újradobhatsz egy vagy több %FOCUS% eredményt."""
        'Cool Hand':
            text: '''Mikor stressz jelzőt kapsz, eldobhatod ezt a kártyát, hogy kaphass %FOCUS% vagy %EVADE% jelzőt.'''
        'Juke':
            text: '''<span class="card-restriction">Csak kis hajók.</span>%LINEBREAK%Támadáskor, ha van %EVADE% jelződ, megváltoztathatod a védekező egy %EVADE% dobását %FOCUS%-ra.'''
        'Comm Relay':
            text: '''Nem lehet több, mint egy %EVADE% jelződ.%LINEBREAK%A befejező fázis alatt, ne távolítsd el a megmaradt %EVADE% jelződ.'''
        'Dual Laser Turret':
            text: '''<span class="card-restriction">Csak Gozanti.</span>%LINEBREAK%<strong>Támadás (energia):</strong> Költs el egy energiát erről a kártyáról, hogy végrehajtd ezt a támadást egy hajó ellen (akár a tüzelési szögeden kívül eső hajók ellen is).'''
        'Broadcast Array':
            text: '''<span class="card-restriction">Csak Gozanti.</span>%LINEBREAK%Az akciósávod megkapja a %JAM% akció ikont.'''
        'Rear Admiral Chiraneau':
            text: '''<span class="card-restriction">Csak óriási hajók. Csak birodalmiak.</span> %LINEBREAK%<strong>Akció:</strong> Hajts végre egy fehér (%STRAIGHT% 1) manővert.'''
        'Ordnance Experts':
            text: '''Egy körben egyszer, mikor egy baráti hajó 1-3 távolságban végrehajt egy támadást %TORPEDO% vagy %MISSILE% másodlagos fegyverrel, egy üres dobását %HIT%-re forgathatja.'''
        'Docking Clamps':
            text: '''<span class="card-restriction">Csak Gozanti. Limitált.</span> %LIMITED%%LINEBREAK%Dokkolhatsz akár 4 TIE fighter, TIE interceptor, TIE bomber vagy TIE Advanced hajót. Az összes dokkolt hajónak egyforma típusúnak kell lennie.'''
        '"Zeb" Orrelios':
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%A tüzelési szögedben lévő ellenséges hajók amelyekkel érintkezel, nem számítanak érintkezésnek, mikor te vagy ők aktiválódnak a harci fázisban."""
        'Kanan Jarrus':
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Körönként egyszer, miután egy baráti hajó 1-2 távolságban végrehajt egy fehér manővert, levehetsz egy stressz jelzőt róla."""
        'Reinforced Deflectors':
            text: """<span class="card-restriction">Csak nagy hajók.</span>%LINEBREAK%Védekezés után, ha elszenvedtél 3 vagy több %HIT% vagy %CRIT% találatot a támadás alatt, visszatölthetsz 1 pajzsot. (Nem haladhatja meg a kezdeti értéket.)"""
        'Dorsal Turret':
            text: """<strong>Támadás:</strong>Támadj meg egy hajót (akár a tüzelési szögeden kívül is).%LINEBREAK%Ha a célpont 1 távolságban van, plusz egy kockával dobhatsz."""
        'Targeting Astromech':
            text: '''Miután végrehajtasz egy piros menővert, felrakhatsz egy célpontbemérőt.'''
        'Hera Syndulla':
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Tárcsázhatsz és végrehajthatsz egy piros manővert mégha stresszes vagy is."""
        'Ezra Bridger':
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Támadáskor, ha stresszes vagy, egy %FOCUS% dobást %CRIT%-ra forgathatsz."""
        'Sabine Wren':
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%A fejlesztés sávod kap egy %BOMB% ikont. Körönként egyszer, mielőtt egy baráti bomba lekerül a játéktérről, válassz egy ellenséges hajót a jelzőtől 1 távolságra. Ez a hajó elszenved egy sérülést."""
        '"Chopper"':
            text: """<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Végrehajthatsz akciókat, még ha stresszes vagy is.%LINEBREAK%Miután végrehajtasz egy akciót, miközben stresszes vagy, elszenvedsz egy sérülést."""
        'Construction Droid':
            text: '''<span class="card-restriction">Csak nagy hajók. Limitált</span> %LIMITED%%LINEBREAK%Mikor végrehajtasz egy recover akciót, elkölthetsz egy energiát, hogy eldobhass egy lefordított sérülés kártyát.'''
        'Cluster Bombs':
            text: '''Védekezés után eldobhatod ezt a kártyát. Ha ezt teszed, minden más hajó 1 távolságban dob 2 támadó kockával és elszenved minden (%HIT%) és (%CRIT%) találatot.'''
        "Adaptability":
            text: """<span class="card-restriction">Kettős kártya.</span>%LINEBREAK%<strong>A oldal:</strong> Növeld a pilóta képességed eggyel.%LINEBREAK%<strong>B oldal:</strong> Csökkentsd a pilóta képességed eggyel. [FAQ]"""
        "Electronic Baffle":
            text: """Mikor kapsz egy stressz vagy ion jelzőt, eldobhatod, ha elszenvedsz egy sérülést."""
        "4-LOM":
            text: """<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%Támadáskor a támadókockák módosítása lépésben kaphatsz egy ion jelzőt, hogy kiválassz a támadó egy %FOCUS% vagy %EVADE% jelzőjét. Ez a jelző nem költhető el ebben a támadásban."""
        "Zuckuss":
            text: """<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%Támadáskor, annyi stressz jelzőt kaphatsz, ahány védekező kockát kiválasztasz. A védekezőnek újra kell dobnia azokat a kockákat."""
        'Rage':
            text: """<strong>Akció:</strong> Adj egy %FOCUS% jelzőt a hajódhoz és kapsz 2 stressz jelzőt. A kör végéig támadáskor újradobhatsz akár 3 kockát."""
        "Attanni Mindlink":
            text: """<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%Minden esetben mikor fókusz vagy stressz jelzőt kapsz, az összes többi baráti hajó, amely fel van szerelve Attanni Mindlink fejlesztéssel szintén megkapja ezt a fajta jelzőt, ha még nincs neki."""
        "Boba Fett":
            text: """<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%Miután végrehajtottál egy támadást, és a védekező kapott egy felfordított sérülés kártyát, eldobhatod azt, hogy helyette kiválassz és eldobj egy fejlesztés kártyát."""
        "Dengar":
            text: """<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%Támadáskor újradobhatsz egy támadó kockát. Ha a védekező egyedi pilóta, 2 kockát is újradobhatsz."""
        '"Gonk"':
            text: """<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%<strong>Akció:</strong> Helyezz el egy pajzs jelzőt ezen a kártyán.%LINEBREAK%<strong>Akció:</strong> Vedd el a pajzs jelzőt a kártyáról és töltsd vissza vele a pajzsod (csak az eredeti értékig)."""
        "R5-P8":
            text: """Körönként egyszer, védekezés után dobj egy támadó kockával. %HIT% dobáskor a támadó leszenved egy sérülést. %CRIT% dobáskor mindketten elszenvedtek egy séerülést."""
        'Thermal Detonators':
            text: """Mikor felfeded tárcsád eldobhatod ezt a kártyát, hogy ledobj egy thermal detonator jelzőt.%LINEBREAK%Ez a jelző felrobban az aktiválási fázis végén.%LINEBREAK%<strong>Thermal Detonator:</strong> Mikor felrobban, minden hajó 1 távolságban elszenved 1 sérülést és kap egy stressz jelzőt. Aztán dobd el ezt a jelzőt."""
        "Overclocked R4":
            text: """A harci fázis alatt, mikor elköltesz egy %FOCUS% jelzőt, egy stressz jelzővel együtt kaphatsz egy újabb %FOCUS% jelzőt."""
        'Systems Officer':
            text: '''<span class="card-restriction">Csak birodalmiak.</span>%LINEBREAK%Miután végrehajtottál egy zöld menővert, válassz ki egy másik baráti hajót 1 távolságban. Az a hajó feltehet egy célpontbemérőt.'''
        'Tail Gunner':
            text: '''<em>(Faroklövész)</em> Mikor a hátsó kiegészítő tüzelési szögedből támadsz, csökkentd a védekező mozgékonyságát eggyel (nem mehet 0 alá).'''
        'R3 Astromech':
            text: '''Körönként egyszer, mikor az elsődleges fegyvereddel támadsz, törölhetsz egy %FOCUS% dobásod a támadókockák módosítása lépésben, hogy kaphass egy %EVADE% jelzőt.'''
        'Collision Detector':
            text: '''Mikor végrehajtasz egy %BOOST%, %BARRELROLL% vagy visszaálcázás műveletet, a hajód és a manőver sablonod átfedhet egy akadályt.%LINEBREAK%Mikor dobsz az akadály sérülésért figyelmen kívül hagyhatod a %CRIT% dobást.'''
        'Sensor Cluster':
            text: '''Védekezéskor, elkölthetsz egy %FOCUS% jelzőt, hogy egy üres dobást %EVADE%-re forgass.'''
        'Fearlessness':
            text: '''<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%<em>(Vakmerőség)</em> Támadáskor, ha a védekezővel egymás tüzelési szögében vagytok 1-es távolságon belül, hozzáadhatsz egy %HIT% eredményt a dobásodhoz.'''
        'Ketsu Onyo':
            text: '''<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%A befejező fázis kezdetén, kiválaszthatsz egy ellenséges hajót a tüzelési szögedben 1-2 távolságban. Ez a hajó nem dobhatja el a vonósugár jelzőjét.'''
        'Latts Razzi':
            text: '''<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%Védekezéskor levehetsz egy stressz jelzőt a támadóról, hogy hozzáadj 1 %EVADE% eredményt a dobásodhoz.'''
        'IG-88D':
            text: '''<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%Megkapod a pilóta képességét minden más baráti hajónak amely a IG-2000 fejlesztés kártyával felszerelt (a saját képességed mellett).'''
        'Rigged Cargo Chute':
            text: '''<span class="card-restriction">Csak nagy hajók.</span>%LINEBREAK%<em>(Módosított rakománykatapult)</em> <strong>Akció:</strong> Dobd el ezt a kártyát, hogy letehess egy rakomány jelzőt.'''
        'Seismic Torpedo':
            text: '''<em>(Szeizmikus torpedó)</em> <strong>Akció:</strong>Dobd el ezt a lapot és válassz ki egy, 1-2-es távolságon belüli, a támadási szögedben lévő akadályt. Minden hajó, ami 1-es távolságban van az akadálytól, dob egy támadókockával és elszenvedi a dobott %HIT% vagy %CRIT% sérülést. Aztán vedd le az akadályt.'''
        'Black Market Slicer Tools':
            text: '''<em>(Illegális hackereszközök)</em> <strong>Akció:</strong>Válassz egy stresszelt ellenséges hajót 1-2-es távolságban és dobj egy támadókockával. %HIT% vagy %CRIT% dobásnál vedd le róla a stressz jelzőt és ossz ki neki egy lefordított sérülés kártyát.'''
        # Wave X
        'Kylo Ren':
            text: '''<span class="card-restriction">Csak birodalmiak.</span>%LINEBREAK%<strong>Akció:</strong> Rendeld a "I'll Show You the Dark Side" állapot kártyát egy 1-3 távolságban lévő ellenséges hajóhoz.'''
        'Unkar Plutt':
            text: '''<span class="card-restriction">Csak söpredék.</span>%LINEBREAK%Miután végrehajtottál egy menővert amivel átfedésbe kerültél egy ellenséges hajóval, elszenvedhetsz egy sérülést, hogy végrehajts egy ingyenes akciót.'''
        'A Score to Settle':
            text: '''A hajók felhelyezéskor, válassz ki egy ellenséges hajót és oszd neki a "A Debt to Pay" állapot kártyát.%LINEBREAK%Mikor a "A Debt to Pay" állapot kártyával rendelkező hajó támadásakor 1 %FOCUS% eredményt %CRIT%-re változtathatsz.'''
        'Jyn Erso':
            text: '''<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%<strong>Akció:</strong> Válassz ki egy baráti hajót 1-2 távolságban. Adj egy %FOCUS% jelzőt ennek a hajónak minden egyes, a tüzelési szögében 1-3 távolságra lévő ellenséges hajó után. Maximum 3 jelzőt kaphat így.'''
        'Cassian Andor':
            text: '''<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%A tervezési fázis végén, válassz egy ellenséges hajót 1-2 távolságra. Tippeld meg hangosan a hajó manőverét, aztán nézzétek meg. Ha jól tippeltél átforgathatod a tárcsádat.'''
        'Finn':
            text: '''<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Mikor támadsz az elsődleges fegyvereddel vagy védekezel és az ellenséges hajó a tüzelési szögedben van, hozzáadhatsz egy üres kockát a dobásodhoz.'''
        'Rey':
            text: '''<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%A befejező fázis kezdetekor, leteheted a hajód egy %FOCUS% jelzőjét erre a kártyára. A harci fázis kezdetén megkaphat a hajód 1 jelzőt erről a kártyáról.'''
        'Burnout SLAM':
            text: '''<span class="card-restriction">Csak nagy hajók.</span>%LINEBREAK%Az akciósávod megkapja a %SLAM% ikont.%LINEBREAK%Miután végrehajtottál egy SLAM akciót, dobd el ezt a kártyát.'''
        'Primed Thrusters':
            text: '''<span class="card-restriction">Csak kis hajók.</span>%LINEBREAK%A stressz jelző nem akadályoz meg abban, hogy végrehajts egy %BOOST% vagy %BARRELROLL% akciót, hacsak nincs 3 vagy több stressz jelződ.'''
        'Pattern Analyzer':
            text: '''When executing a maneuver, you may resolve the "Check Pilot Stress" step after the "Perform Action" step (instead of before that step).'''
        'Snap Shot':
            text: '''Miután egy ellenséges hajó végrehajt egy manővert, végrehajthatsz egy támadást e hajó ellen.  <strong>Támadás:</strong> Támadj egy hajót. Nem módosíthatod a dobásodat és nem támadhatsz újra ebben a fázisban.'''
        'M9-G8':
            text: '''<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Mikor a hajó, amin célpontbemérőd van támad, kiválaszthatsz egy támadó kockát. A támadónak újra kell dobnia azt a kockát.%LINEBREAK%Feltehetsz egy célpontbemérőt egy másik baráti hajóra.'''
        'EMP Device':
            text: '''A harci fázis alatt, ahelyett, hogy támadnál, eldobdhatod ezt a lapo, hogy kiossz 2 ion jelzőt minden hajónak 1 távolságban.'''
        'Captain Rex':
            text: '''<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Miután végrehajtottál egy  támadást ami nem talált, adj egy %FOCUS% jelzőt a hajódhoz.'''
        'General Hux':
            text: '''%LINEBREAK%<strong>Akció:</strong> Válassz maximum 3 baráti hajót 1-2 távolságban. Adj 1 %FOCUS% jelzőt mindegyiknek és add a "Fanatical Devotion" állapot kártyát egyiküknek. Aztán kapsz egy stressz jelzőt.'''
        'Operations Specialist':
            text: '''<span class="card-restriction">Limitált.</span>%LIMITED%%LINEBREAK%Miután egy baráti hajó 1-2 távolságban végrehajt egy támadást ami nem talált, a támadó hajó 1-3 távolságában lévő összes baráti hajó kaphat egy %FOCUS% jelzőt.'''
        'Targeting Synchronizer':
            text: '''Mikor egy baráti hajó 1-2 távolságban támad egy hajót amin célpontbemérőd van, a baráti hajó kezelje a <strong>Támadás (célpontbemérő):</strong> fejlécet mint as <strong>Támadás:</strong>. Ha az instrukció célpontbemérő költést ír elő a hajónak, elköltheti a te célbepombemérésedet.'''
        'Hyperwave Comm Scanner':
            text: '''A hajók lehelyezése lépés kezdetén kezelheted a pilóta képzettséged minr 0, 6 vagy 12 a lehelyezés végéig.%LINEBREAK%Az előkészítés alatt, miután egy baráti hajót leteszel 1-2 távolságban, adhatsz neki egy %FOCUS% vagy %EVADE% jelzőt.'''
        'Trick Shot':
            text: '''Támadáskor, ha a támadás akadályon át történik, plusz 1 támadó kockával dobhatsz.'''
        'Hotshot Co-pilot':
            text: '''Mikor támadsz egy elsődleges fegyverrel, a védekezőnek egy kell költenie 1 %FOCUS% jelzőt, ha tud. Védekezéskor egy kell költenie 1 %FOCUS% jelzőt, ha tud.'''
        '''Scavenger Crane''':
            text: '''Miután egy hajó 1-2 távolságban megsemmisül kiválasthatsz egy már eldobott %TORPEDO%, %MISSILE%, %BOMB%, %CANNON%, %TURRET%, or módosítás fejlesztés kártyát és felszrelheted vele a hajódat. Aztán dobj egy támadó kockával. Üres dobásnál dobd el ezt a kártyát.'''
        'Bodhi Rook':
            text: '''<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Mikor felteszel egy célpontbemérőt, bemérhetsz bármely baráti hajótól 1-3 távolságban lévő ellenséget.'''
        'Baze Malbus':
            text: '''<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Miután végrehajtottál egy támadást ami nem talált, azonnal végrehajthatsz egy támadást az elsődleges fegyvereddel egy másik hajó ellen. Nem támadhatsz többet ebben a körben.'''
        'Inspiring Recruit':
            text: '''Körönként egyszer, mikor egy baráti hajó levesz egy stressz jelzőt, levehet még egyet is.'''
        'Swarm Leader':
            text: '''Mikor végrehajtasz egy támadást az elsődleges fegyvereddel, kiválaszthatsz akár 2 másik baráti hajót amelyek tüzelési szögében 1-3 távolságban benne van a védekező. Vegyél le 1 %EVADE% jelzőt minden kiválasztott hajóról, hogy plusz 1 támadó kockával dobhass minden levett jelző után.'''
        'Bistan':
            text: '''<span class="card-restriction">Csak lázadók.</span>%LINEBREAK%Mikor 1-2 távolságban támadsz, egy %HIT% dobást %CRIT%-re forgathatsz.'''
        'Expertise':
            text: '''Támadáskor, ha nem vagy stresszes, átfogathatod az osszes %FOCUS% dobásod %HIT%-re.'''
        'BoShek':
            text: '''Mikor a hajó amivel érintkezel aktiválódik, megnézheted a kiválasztott menőverét. Ha így teszel, az gazdájának át kell forgatni a tárcsát egy szomszédos manőverre. A hajó ezt a manővert fedi fel és hajtja végre, még ha stresszes is.'''
        # C-ROC
        'Heavy Laser Turret':
            text: '''<span class="card-restriction">C-ROC Cruiser only.</span>%LINEBREAK%<strong>Attack (energy):</strong> Spend 2 energy from this card to perform this attack against 1 ship (even a ship outside of your firing arc).'''
        'Cikatro Vizago':
            text: '''%SCUMONLY%%LINEBREAK%At the start of the End phase, you may discard this card to replace a faceup %ILLICIT% or %CARGO% Upgrade card you have equipped with another Upgrade card of the same type of equal or fewer squad points.'''
        'Azmorigan':
            text: '''%HUGESHIPONLY% %SCUMONLY%%LINEBREAK%At the start of the End phase, you may spend 1 energy to replace a faceup %CREW% or %TEAM% Upgrade card you have equipped with another Upgrade card of the same type of equal or fewer squad points.'''

    modification_translations =
        "Stealth Device":
            text: """Növeld eggyel a mozgékonyság értékedet. Ha egy támadás eltalál, dobd el ezt a fejlesztés kártyát."""
        "Shield Upgrade":
            text: """Növeld eggyel a pajzsod értékét."""
        "Engine Upgrade":
            text: """Az akció sávod megkapja a %BOOST% akció ikont."""
        "Anti-Pursuit Lasers":
            text: """<span class="card-restriction">Csak nagy hajók.</span>%LINEBREAK%Miután egy ellenséges hajó végrehajtotta a manőverét, ami átlapolást eredményezett a te hajóddal, dobj egy támadó kockával. %HIT% vagy %CRIT% eredmény esetén az ellenséges hajó elszenved 1 sérülést."""
        "Targeting Computer":
            text: """Az akciósávod megkapja a %TARGETLOCK% akció ikont."""
        "Hull Upgrade":
            text: """Eggyel növeld a hajód szerkezeti értékét."""
        "Munitions Failsafe":
            text: """Amikor egy olyan másodlagos fegyverrel támadsz, ami eldobatná veled a fegyver lapját, nem kell eldobnod, csak ha a támadásod talált."""
        "Stygium Particle Accelerator":
            text: """Amikor végrehajtod az álcázás akciót vagy leveszed az álcát, végrehajthatsz egy szabad kitérés akciót."""
        "Advanced Cloaking Device":
            text: """<span class="card-restriction">Csak TIE Phantom.</span>Miután végrehajtottál egy támadást, végrehajthatsz egy szabad álcázás akciót."""
        "Combat Retrofit":
            text: """<span class="card-restriction">Csak GR-75. Csak óriási hajó.</span>%LINEBREAK%Növeld a hajód szerkezeti értékét kettővel, a pajzsát meg eggyel."""
        "B-Wing/E2":
            text: """<span class="card-restriction">Csak B-Wing.</span>%LINEBREAK%Csak B-Wing. Módosítás. A fejlesztés sávod megkapja a %CREW% fejlesztés ikont."""
        "Countermeasures":
            text: """<span class="card-restriction">Csak nagy hajók.</span>%LINEBREAK%A Harci fázis elején eldobhatod ezt a kártyát, hogy eggyel megnöveld a mozgékonyság értékedet a kör végéig. Levehetsz egy ellenséges célpontbemérő jelzőt a hajódról."""
        "Experimental Interface":
            text: """Körönként egyszer, miután végrehajtottál egy akciót, végrehajthatsz egy ingyen akciót egy "<strong>Action:</strong>" fejléccel rendelkező Fejlesztés kártyáról. Ezután kapsz egy stressz jelzőt."""
        "Tactical Jammer":
            text: """<span class="card-restriction">Csak nagy hajók.</span>%LINEBREAK%<em>(Taktikai blokkoló)</em> A hajód képes az ellenfél támadásait akadályozni."""
        "Autothrusters":
            text: """Ha védekezel és 2-nél nagyobb távolságra vagy a támadótól, vagy kívül vagy a tüzelési szögén, egy üres dobásod %EVADE%-re módosíthatod. Ezt a kártyát csak akkor szerelheted fel a hajódra, ha van %BOOST% képessége."""
        "Advanced SLAM":
            text: """A SLAM akció végrehajtása után, ha a hajód nem kerül átfedésbe egy akadállyal vagy egy másik hajóval, végrehajthatsz egy ingyen akciót."""
        "Twin Ion Engine Mk. II":
            text: """<span class="card-restriction">Csak TIE.</span>%LINEBREAK%Minden enyhe fordulód (%BANKLEFT% vagy %BANKRIGHT%) zöld manővernek számít."""
        "Maneuvering Fins":
            text: """<span class="card-restriction">Csak YV-666.</span>%LINEBREAK%A manővertárcsád felfedésekor, ha egy %TURNLEFT% vagy %TURNRIGHT% fordulót hajtanál végre, a tárcsád átforgathatod egy annak megfelelő sebességű és irányú %BANKLEFT% vagy %BANKRIGHT% manőverre."""
        "Ion Projector":
            text: """<span class="card-restriction">Csak nagy hajók.</span>%LINEBREAK%Ha egy ellenséges hajó olyan manővert hajt végre, ami miatt átfedésbe kerül a hajóddal, dobj 1 támadó kockával. %HIT% vagy %CRIT% dobás esetén az ellenséges hajó 1 ion jelzőt kap."""
        'Integrated Astromech':
            text: '''<span class="card-restriction">Csak X-wing.</span>%LINEBREAK%Mikor kapsz egy sérülés kártyát, eldobhtsz egy %ASTROMECH% fejlesztés kártyádat, hogy eldobhasd a sérülés kártyát.'''
        'Optimized Generators':
            text: '''<span class="card-restriction">Csak óriás hajók.</span>%LINEBREAK%Körönként egyszer, mikor kiosztasz egy energiát egy felszerelt fejlesztés kártyádra, kapsz 2 energiát.'''
        'Automated Protocols':
            text: '''<span class="card-restriction">Csak óriás hajók.</span>%LINEBREAK%Körönként egyszer, miután végrehajtottál egy akciót ami nem recover vagy reinforce akció, költhetsz egy energiát, hogy végrehajts egy ingyen recover vagy reinforce akciót.'''
        'Ordnance Tubes':
            text: '''<span class="card-restriction">Csak óriás hajók.</span>%LINEBREAK%Kezelhetsz minden egyes %HARDPOINT% fejlesztés ikonodat mint %TORPEDO% vagy %MISSILE% ikon.%LINEBREAK%Mikor az at utasítás, hogy dobd el a %TORPEDO% vagy %MISSILE% kátyát, nem kell megtenned.'''
        'Long-Range Scanners':
            text: '''Feltehetsz célpontbemérőt 3 vagy azon túli távolságban lévő hajóra. Viszont nem teheted meg 1-2 távolságban lévőkre. Csak akkor hasznáhatod ezt a lapot, ha %TORPEDO% és %MISSILE% ikon is van a fejlesztés sávodon.'''
        "Guidance Chips":
            text: """Körönként egyszer, mikor %TORPEDO% vagy %MISSILE% másodlagos fegyverrel támadsz, 1 dobást megváltoztathatsz %HIT% eredményre (vagy %CRIT%-re ha az elsődleges fegyver értéked 3 vagy nagyobb)."""
        'Vectored Thrusters':
            text: '''<span class="card-restriction">Csak kis hajók.</span>%LINEBREAK%<em>(Vektorhajtómű)</em> Az akciósávod megkapja a %BARRELROLL% akció ikont.'''
        'Smuggling Compartment':
            text: '''<span class="card-restriction">Csak YT-1300 és YT-2400.</span>%LINEBREAK%A fejlesztés sávod megkapja az %ILLICIT% ikont.%LINEBREAK%Felszerelhetsz még egy módosítás fejlesztést is ami nem több, mint 3 pont.'''
        'Gyroscopic Targeting':
            text: '''<span class="card-restriction">Csak Lancer-class Pursuit Craft.</span>%LINEBREAK%<em>(Giroszkópos célzórendszer)</em> Ha ebben a körben 3, 4 vagy 5-ös sebességű manővert hajtottál végre, a harci fázisod végén átforgathatod a változtatható tüzelési szöged.'''
        'Captured TIE':
            text: '''<span class="card-restriction">Csak TIE Fighter. Csak lázadók.</span> %LINEBREAK%Kisebb pilótaképzettségű ellenséges hajók nem tudnak célpontként megjelölni. Miután végrehajtottál egy támadást vagy csak ez a hajó maradt, dobd el ezt a kártyát.'''
        'Spacetug Tractor Array':
            text: '''<span class="card-restriction">Csak Quadjumper.</span>%LINEBREAK%<strong>Akció:</strong> Válassz egy hajót a tüzelési szögedban 1 távolságban és rakj rá egy vonósugár jelzőt. Ha ez baráti hajó, a vonósugár hatást érvényesítsd rajta, mintha ellenséges hajó lenne.'''
        'Lightweight Frame':
            text: '''<span class="card-restriction">Csak TIE.</span>%LINEBREAK%Védekezéskor, védekező kockák dobása után, ha több támadó kocka volt, mint védekező, dobj még egy védekező kockával.%LINEBREAK%Nem használhatod, ha az mozgékonyságod 3 vagy nagyobb.'''

    title_translations =
        "Slave I":
            text: """<span class="card-restriction">Csak Firespray-31.</span>%LINEBREAK%A fejlesztés sávod kap egy %TORPEDO% fejlesztés ikont."""
        "Millennium Falcon":
            text: """<span class="card-restriction">Csak YT-1300.</span>%LINEBREAK%Az akció sávod megkapja a %EVADE% ikont."""
        "Moldy Crow":
            text: """<span class="card-restriction">Csak HWK-290.</span>%LINEBREAK%A Befejező fázisban ne vedd le a hajóról az el nem használt fókusz jelzőket."""
        "ST-321":
            text: """<span class="card-restriction">Csak Lambda-Class Shuttle.</span>%LINEBREAK%Amikor végrehajt egy célpont bemérése akciót, akkor a játéktéren lévő bármely ellenséges hajót bemérheti."""
        "Royal Guard TIE":
            text: """<span class="card-restriction">Csak TIE Interceptor.</span>%LINEBREAK%A hajód 2 módosítás fejlesztés kártyát kaphat (1 helyett). Nem rendelheted ezt a kártyát a hajódhoz, ha a pilótaképzettséged "4" vagy kevesebb."""
        "Dodonna's Pride":
            text: """<span class="card-restriction">Csak CR90 elülső része.</span>%LINEBREAK%Amikor egy összehangolt akciót hajtasz végre, 2 szövetséges hajót választhatsz 1 helyett. A választott hajók végrehajthatnak egy ingyen akciót."""
        "A-Wing Test Pilot":
            text: """<span class="card-restriction">Csak A-Wing.</span>%LINEBREAK%A fejlesztés sávod kap egy %ELITE% ikont. Nem tehetsz a hajóra 2 ugyanolyan %ELITE% fejlesztés kártyát. Nem használhatod ezt a fejlesztés kártyát, ha a pilótád képzettsége "1" vagy kisebb."""
        "Tantive IV":
            text: """<span class="card-restriction">Csak CR90 elülső része.</span>%LINEBREAK%Az elülső rész fejlesztés sávja kap 1 %CREW% és 1 %TEAM% ikont."""
        "Bright Hope":
            text: """<span class="card-restriction">Csak GR-75.</span>%LINEBREAK%A hajó elülső részéhez rendelt megerősítés jelző két %EVADE%-t ad (egy helyett)."""
        "Quantum Storm":
            text: """<span class="card-restriction">Csak GR-75.</span>%LINEBREAK%Ha a befejező fázis kezdetekor 1 vagy kevesebb energia jelződ van, kapsz 1 energia jelzőt."""
        "Dutyfree":
            text: """<span class="card-restriction">Csak GR-75.</span>%LINEBREAK%Amikor egy zavarás akciót hajtasz végre, 1-3 távolságra lévő ellenséges hajót választhatsz (1-2 távolságra lévő helyett)."""
        "Jaina's Light":
            text: """<span class="card-restriction">Csak a CR90 elülső része.</span>%LINEBREAK%Ha védekezel, támadásonként egyszer, ha felfordított sérülés kártyát kapnál (kritikus sebzés után), eldobhatod és új felfordított sérülés kártyát húzhatsz helyette."""
        "Outrider":
            text: """<span class="card-restriction">Csak YT-2400.</span>%LINEBREAK%Amíg van egy %CANNON% fejlesztés kártyád a hajódon, nem támadhatsz az elsődleges fegyvereddel, viszont a tüzelési szögeden kívüli hajókat a másodlagos %CANNON% fegyvereddel megtámadhatod."""
        "Dauntless":
            text: """<span class="card-restriction">Csak VT-49 Decimator.</span>%LINEBREAK%Ha egy manőver végrehajtása után átfedésbe kerülsz egy másik hajóval, végrehajthatsz 1 szabad akciót. Ezután kapsz egy stressz jelzőt."""
        "Virago":
            text: """<span class="card-restriction">Csak StarViper.</span>%LINEBREAK%A fejlesztési sávod megkapja a %SYSTEM% és az %ILLICIT% fejlesztés ikonokat. Nem használhatod ezt a kártyát, ha a pilóta képességed 3 vagy kevesebb."""
        '"Heavy Scyk" Interceptor (Cannon)':
            text: """<span class="card-restriction">Csak M3-A Interceptor.</span>%LINEBREAK%A fejlesztési sávod megkapja az %CANNON%, %TORPEDO% vagy %MISSILE% ikont.%LINEBREAK%Növeld a szerkeszeti erősséged (hull) eggyel."""
        '"Heavy Scyk" Interceptor (Torpedo)':
            text: """<span class="card-restriction">Csak M3-A Interceptor.</span>%LINEBREAK%A fejlesztési sávod megkapja az %CANNON%, %TORPEDO% vagy %MISSILE% ikont.%LINEBREAK%Növeld a szerkeszeti erősséged (hull) eggyel."""
        '"Heavy Scyk" Interceptor (Missile)':
            text: """<span class="card-restriction">Csak M3-A Interceptor.</span>%LINEBREAK%A fejlesztési sávod megkapja az %CANNON%, %TORPEDO% vagy %MISSILE% ikont.%LINEBREAK%Növeld a szerkeszeti erősséged (hull) eggyel."""
        "IG-2000":
            text: """<span class="card-restriction">Csak Agressor.</span>%LINEBREAK%Megkapod az összes IG-2000 fejlesztés kártyával rendelkező hajód pilóta képességét (a saját pilótaképességeden felül)."""
        "BTL-A4 Y-Wing":
            text: """<span class="card-restriction">Csak Y-Wing.</span>%LINEBREAK%Nem támadhatod meg a tüzelési íveden kívül eső hajókat. Miután támadtál az elsődleges fegyvereddel, azonnal támadhatsz a %TURRET% másodlagos fegyvereddel is."""
        "Andrasta":
            text: """<span class="card-restriction">Csak Firespray-31.</span>%LINEBREAK%.A fejlesztés sávod kap két további %BOMB% fejlesztés ikont."""
        "TIE/x1":
            text: """<span class="card-restriction">Csak TIE Advanced.</span>%LINEBREAK%Az akció sávod megkapja a %SYSTEM% fejlesztés ikont. Ha a hajódra %SYSTEM% fejlesztés kártyát teszel, a raj pontértéke 4-gyel csökken (minimum 0-ig)."""
        "Hound's Tooth":
            text: """<span class="card-restriction">Csak YV-666.</span>%LINEBREAK%Amikor ez a hajó megsemmisül, mielőtt levennéd a játéktérről, <strong>leteheted Nastah Pup</strong> pilótát. Ebben a körben nem támadhat."""
        "Ghost":
            text: """<span class="card-restriction">Csak VCX-100.</span>%LINEBREAK%Szerelj fel a <em>Phantom</em> kártyával egy baráti Attack Shuttle-t és dokkold a hajóhoz.%LINEBREAK%Miután végrehajtottál egy manővert, harcba küldheted, a hátsó bütykeidtől indítva."""
        "Phantom":
            text: """Míg dokkolva vagy, a <em>Ghost</em> lőhet az elsődleges fegyverével a speciális tüzelési szögen és a harci fázis végén végrehajthat egy plusz támadást a felszerelt %TURRET% fegyverrel.Ha végrehatotta ezt a támadást, nem támadhat újra ebben a körben."""
        "TIE/v1":
            text: """<span class="card-restriction">Csak TIE Advanced Prototype.</span>%LINEBREAK%Miután feltettél egy célbemérrőt, végrehajthatsz egy ingyen %EVADE% akciót."""
        "Mist Hunter":
            text: """<span class="card-restriction">Csak G-1A starfighter.</span>%LINEBREAK%Az akciósávod megkapja a %BARRELROLL% ikont.%LINEBREAK%Fel <strong>kell</strong> szerelned 1 Tractor Beam fejlesztést (megfizetve a költségét)."""
        "Punishing One":
            text: """<span class="card-restriction">Csak JumpMaster 5000.</span>%LINEBREAK%Növeld az elsődleges fegyver értékét eggyel."""
        "Assailer":
            text: """<span class="card-restriction">Csak Raider-osztályú korvett tat része.</span>%LINEBREAK%Védekezésnél, ha a becélzott részen van egy megerősítés jelző, 1 %FOCUS% dobásodat %EVADE%-re módosíthatod."""
        "Instigator":
            text: """<span class="card-restriction">Csak Raider-osztályú korvett tat része.</span>%LINEBREAK%Miután végrehajtottál egy visszanyerés akciót, további 1 pajzsot kapsz."""
        "Impetuous":
            text: """<span class="card-restriction">Csak Raider-osztályú korvett tat része.</span>%LINEBREAK%Ha egy támadásod során egy ellenséges hajó megsemmisül, utána végrehajthatsz egy célpont bemérése akciót."""
        'TIE/x7':
            text: '''<span class="card-restriction">Csak TIE Defender.</span>%LINEBREAK%A fejlesztés sávod elveszti a %CANNON% és %MISSILE% ikonokat.%LINEBREAK%Miután végrehajtottál egy 3, 4 vagy 5 sebességű manővert, egy %EVADE% jelződ kaphatsz.'''
        'TIE/D':
            text: '''<span class="card-restriction">Csak TIE Defender.</span>%LINEBREAK%Körönként egyszer, miután végrehajtottál egy támadást a %CANNON% másodlagos fegyvereddel ami 3 vagy kevesebb pontba került, végrehajthatsz egy elsődleges fegyver támadást.'''
        'TIE Shuttle':
            text: '''<span class="card-restriction">Csak TIE Bomber.</span>%LINEBREAK%A fejlesztés sávod elveszti az összes %TORPEDO%, %MISSILE% és %BOMB% ikont és kap 2 %CREW% ikont. Nem használhatsz 4 pontnál drágább %CREW% fejlesztést kártyát.'''
        'Requiem':
            text: '''<span class="card-restriction">Csak Gozanti.</span>%LINEBREAK%Mikor harca küldesz egy hajót, kezeld a pilóta képzettségét 8-asnak a kör végéig.'''
        'Vector':
            text: '''<span class="card-restriction">Csak Gozanti.</span>%LINEBREAK%Miután végrehajtottál egy manővert, harba indíthatod mind a 4 hajód, (nem csak 2-t).'''
        'Suppressor':
            text: '''<span class="card-restriction">Csak Gozanti.</span>%LINEBREAK%Körönként egyszer, miután kiosztottál egy célpontbemérőt, levehetsz 1 %FOCUS%, %EVADE% vagy kék célpontbemérő jelzőt arról a hajóról.'''
        'Black One':
            text: '''Miután végrehajtottál egy %BOOST% vagy %BARRELROLL%, levehetsz egy ellenséges célpontbemérőt egy 1 távolságban lévő baráti hajóról. Nem használhatod ezt a kártyát, ha a pilóta képzettséges 6 vagy alacsonyabb.'''
        'Millennium Falcon (TFA)':
            text: '''Miután végrehajtottál egy 3-as sebességű (%BANKLEFT% vagy %BANKRIGHT%) manővert és nem érintkezel másik hajóval és nem vagy stresszes, kaphatsz egy stressz tokent, hogy 180 fokban megfordítsd a hajód'''
        'Alliance Overhaul':
            text: '''<span class="card-restriction">Csak ARC-170.</span>%LINEBREAK%<em>(Szövetségi felújítás)</em> Mikor az elsődleges fegyvereddel támadsz az elsődleges tüzelési szögedben, plusz 1 támadó kockával dobhatsz. Mikor a kiegészítő tüzelési szögedből támadsz 1 %FOCUS% találadod %CRIT%-re változtathatod.'''
        'Special Ops Training':
            text: '''<span class="card-restriction">Csak TIE/sf.</span>%LINEBREAK%Mikor az elsődleges fegyvereddel támadsz agy elsődleges tüzelési szögedben, plusz egy kockával dobhatsz. Ha nem így teszel, végrehajthatsz egy plusz támadást a hátsó tüzelési szögedből.'''
        'Concord Dawn Protector':
            text: '''<span class="card-restriction">Csak Protectorate Starfighter.</span>%LINEBREAK%Védekezéskor, ha a támadóval egymás tüzelési szögében vagytok 1-es távolságon belül, adj egy %EVADE% eredményt a dobásodhoz.'''
        'Shadow Caster':
            text: '''<span class="card-restriction">Csak Lancer-class Pursuit Craft.</span>%LINEBREAK%<em>(Árnyékvető)</em> Miután végrehajtottál egy támadást ami talált és a védekező a változtatható tüzelési szögedben van 1-2 távolságban, adhatsz a védekezőnek egy vonósugár jelzőt.'''
        # Wave X
        '''Sabine's Masterpiece''':
            text: '''<span class="card-restriction">Csak TIE Fighter. Csak lázadók</span>%LINEBREAK%A fejlesztés sévod kap egy %CREW% és %ILLICIT% ikont.'''
        '''Kylo Ren's Shuttle''':
            text: '''<span class="card-restriction">Csak Upsilon-class Shuttle.</span>%LINEBREAK%A harci fázis végén válassz egy nem stresszelt ellenséges hajót 1-2 távolságban. A gazdájának stressz token kell adnia ennek vagy tőled 1-2 távolságban lévő hajónak, amit ő irányít.'''
        '''Pivot Wing''':
            text: '''<span class="card-restriction">Csak U-Wing. Kettős kártya</span> %DUALCARD%%LINEBREAK%<strong>A oldal (támadás):</strong> Növeld a mozgékonyságod eggyel.%LINEBREAK%Miután végrehajtottál egy manővert átfogathatod a kártyát.%LINEBREAK%<strong>B oldal (landolás):</strong> Mikor felfedsz egy (0 %STOP%) manővert, elforgathatod a hajót 180 fokban.%LINEBREAK%Miután végrehajtottál egy manővert átfogathatod a kártyát.'''
        '''Adaptive Ailerons''':
            text: '''<span class="card-restriction">Csak TIE Striker.</span>%LINEBREAK%Közvetlenül a tárcsád felfedése előtt, ha nem vagy stresszelve, végre <strong>kell</strong> hajts egy fehér (%BANKLEFT% 1), (%STRAIGHT% 1) vagy (%BANKRIGHT% 1) manővert.'''
        # C-ROC
        '''Merchant One''':
            text: '''<span class="card-restriction">C-ROC Cruiser only.</span>%LINEBREAK%Your upgrade bar 1 additional %CREW% upgrade icon and 1 additional %TEAM% upgrade icon and loses 1 %CARGO% upgrade icon.'''
        '''"Light Scyk" Interceptor''':
            text: '''<span class="card-restriction">M3-A Interceptor only.</span>%LINEBREAK%All Damage cards dealt to you are dealt faceup.  You may treat all bank maneuvers (%BANKLEFT% or %BANKRIGHT%) as green maneuvers.  You cannot equip Modification upgrades.'''

    condition_translations =
        '''I'll Show You the Dark Side''':
            text: '''Mikor a kártya kihelyezésre kerül, ha nem volt már játékban, a játékos aki kiosztotta, keressen a sérülés pakliban egy <strong><em>Pilóta</em></strong> kártyát és csapja fel erre a kártyára. Aztán keverje meg a sérülés paklit.%LINEBREAK%Amikor  - akinél a kártya van - kapna egy kritikus sérülést, az ezen lévő kritikus sérülést szenvedi el. Ha nincs sérülés kártya ezen a kártyán, távolítsd el.'''
        'Suppressive Fire':
            text: '''Ha más hajót támadsz mint "Captain Rex", egy támadó kockával kevesebbel dobsz.%LINEBREAK%Ha a támadásod célpontja "Captain Rex" vagy mikor "Captain Rex" megsemmisül, vedd le ezt a kártyát.%LINEBREAK%A harci fázis végén, ha Captain Rex nem hajtott végre támadást ebben a fázisban, vedd le a kártyát.'''
        'Fanatical Devotion':
            text: '''Védekezéskor nem tudsz %FOCUS% jelzőt elkölteni.%LINEBREAK%Támadáskor, ha %FOCUS% jelzőt költenél, hogy az összes %FOCUS% dobást átfogasd %HIT%-re, tedd az első %FOCUS% dobásod félre. A félretett immár  %HIT% dobás nem semlegesíthető védő kockával, de a védekező a %CRIT% dobásokat semlegesíthető elébb.%LINEBREAK%A befejező fázis alatt vedd le ezt a kártyát.'''
        'A Debt to Pay':
            text: '''Az "A Score to Settle" fejlesztés kártyával rendelkező hajót támadva, átforgathatsz egy %FOCUS% dobást %CRIT%-re.'''

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations, condition_translations
