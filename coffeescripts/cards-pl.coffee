exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.pl = 'Polski'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations['Polski'] =
    action :
        "Barrel Roll": "Beczka"
        "Boost": "Dopalacz"
        "Evade": "Unik"
        "Focus": "Skupienie"
        "Target Lock": "Namierzenie celu"
        "Recover": "Naprawa"
        "Reinforce": "Umocnienie"
        "Jam": "Zakłócanie"
        "Coordinate": "Koordynacja"
        "Cloak": "Maskowanie"
    slot:
        "Astromech": "Astromech"
        "Bomb": "Bomba"
        "Cannon": "Działo"
        "Crew": "Załoga"
        "Elite": "Talent elitarny"
        "Missile": "Rakiety"
        "System": "System"
        "Torpedo": "Torpedy"
        "Turret": "Wieżyczka"
        "Cargo": "Ładunek"
        "Hardpoint": "Punkt konstrukcyjny"
        "Team": "Drużyna"
        "Illicit": "Kontrabanda"
        "Salvaged Astromech": "Złomowane astromechy"
    sources: # needed?
        "Core": "Zestaw Podstawowy"
        "A-Wing Expansion Pack": "Zestaw dodatkowy A-Wing"
        "B-Wing Expansion Pack": "Zestaw dodatkowy B-Wing"
        "X-Wing Expansion Pack": "Zestaw dodatkowy X-Wing"
        "Y-Wing Expansion Pack": "Zestaw dodatkowy Y-Wing"
        "Millennium Falcon Expansion Pack": "Zestaw dodatkowy Sokół Millennium"
        "HWK-290 Expansion Pack": "Zestaw dodatkowy HWK-290"
        "TIE Fighter Expansion Pack": "Zestaw dodatkowy Myśliwiec TIE"
        "TIE Interceptor Expansion Pack": "Zestaw dodatkowy TIE Interceptor"
        "TIE Bomber Expansion Pack": "Zestaw dodatkowy Bombowiec TIE"
        "TIE Advanced Expansion Pack": "Zestaw dodatkowy TIE Advanced"
        "Lambda-Class Shuttle Expansion Pack": "Zestaw dodatkowy Prom typu Lambda"
        "Slave I Expansion Pack": "Zestaw dodatkowy Slave I"
        "Imperial Aces Expansion Pack": "Zestaw dodatkowy Asy Imperium"
        "Rebel Transport Expansion Pack": "Zestaw dodatkowy Rebeliancki transportowiec"
        "Z-95 Headhunter Expansion Pack": "Zestaw dodatkowy Z-95 Łowca Głów"
        "TIE Defender Expansion Pack": "Zestaw dodatkowy TIE Defender"
        "E-Wing Expansion Pack": "Zestaw dodatkowy E-Wing"
        "TIE Phantom Expansion Pack": "Zestaw dodatkowy TIE Phantom"
        "Tantive IV Expansion Pack": "Zestaw dodatkowy Tantive IV"
        "Rebel Aces Expansion Pack": "Zestaw dodatkowy Asy Rebelii"
        "YT-2400 Freighter Expansion Pack": "Zestaw dodatkowy YT-2400"
        "VT-49 Decimator Expansion Pack": "Zestaw dodatkowy Decimator VT-49"
        "StarViper Expansion Pack": "Zestaw dodatkowy StarViper"
        "M3-A Interceptor Expansion Pack": "Zestaw dodatkowy M3-A Interceptor"
        "IG-2000 Expansion Pack": "Zestaw dodatkowy IG-2000"
        "Most Wanted Expansion Pack": "Zestaw dodatkowy Poszukiwani"
        "Imperial Raider Expansion Pack": "Zestaw dodatkowy Imperialny Patrolowiec"
        "The Force Awakens Core Set": "The Force Awakens Core Set"
    ui:
        shipSelectorPlaceholder: "Wybór statków"
        pilotSelectorPlaceholder: "Wybór pilotów"
        upgradePlaceholder: (translator, language, slot) ->
            "#{translator language, 'slot', slot}"
        modificationPlaceholder: "Modyfikacje"
        titlePlaceholder: "Tytuł"
        upgradeHeader: (translator, language, slot) ->
            "Amélioration #{translator language, 'slot', slot}"
        unreleased: "niewydane"
        epic: "epickie"
    byCSSSelector:
        # Warnings
        '.unreleased-content-used .translated': 'This squad uses unreleased content!</span>'
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
        '.xwing-card-browser .translate.sort-cards-by': 'Sortuj karty po'
        '.xwing-card-browser option[value="name"]': 'nazwie'
        '.xwing-card-browser option[value="source"]': 'źródle'
        '.xwing-card-browser option[value="type-by-points"]': 'typie (po punktach)'
        '.xwing-card-browser option[value="type-by-name"]': 'typie (po nazwie)'
        '.xwing-card-browser .translate.select-a-card': 'Wybierz kartę z listy po prawej'
        '.xwing-card-browser .info-range td': 'Zasięg’'
        # Info well
        '.info-well .info-ship td.info-header': 'Statek'
        '.info-well .info-skill td.info-header': 'Umiejętność pilota'
        '.info-well .info-actions td.info-header': 'Akcje'
        '.info-well .info-upgrades td.info-header': 'Ulepszenia'
        '.info-well .info-range td.info-header': 'Zasięg'
        # Squadron edit buttons
        '.clear-squad' : 'Wyczyść eskadrę'
        '.save-list' : 'Zapisz'
        '.save-list-as' : 'Zapisz jako ...'
        '.delete-list' : 'Usuń'
        '.backend-list-my-squads' : 'Lista eskadr'
        '.view-as-text' : '<span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Drukuj \ Wyświetl jako </span>Tekst'
        '.randomize' : 'randomizuj'
        '.randomize-options' : 'Opcje ...'
        '.notes-container > span' : 'Squad Notes'
        # Print/View modal
        '.bbcode-list' : 'Skopiuj BBCode poniżej i wklej go do swojego posta.<textarea></textarea><button class="btn btn-copy">Skopiuj</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Skopiuj</button>'
        '.vertical-space-checkbox' : """Dodaj miejsce na karty ulepszeń \ uszkodzeń podczas drukowania <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Wydrukuj w kolorze <input type="checkbox" class="toggle-color-print" />"""
        '.print-list' : '<i class="fa fa-print"></i>&nbsp;Drukuj'
        # Randomizer options
        '.do-randomize' : 'Generuj'
        # Top tab bar
        '#empireTab' : 'Imperium Galaktyczne'
        '#rebelTab' : 'Sojusz Rebeliancki'
        '#scumTab' : 'Szumowiny i Nikczemnicy'
        '#browserTab' : 'Przeglądarka kart'
        '#aboutTab' : 'O stronie'

    singular:
        'pilots': 'Pilot'
        'modifications': 'Modyfikacja'
        'titles': 'Tytuł'
    types:
        'Pilot': 'Pilot'
        'Modification': 'Modyfikacja'
        'Title': 'Tytuł'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders['Polski'] = () ->
    exportObj.cardLanguage = 'Polski'

    # Assumes cards-common has been loaded
    basic_cards = exportObj.basicCardData()
    exportObj.canonicalizeShipNames basic_cards

    # English names are loaded by default, so no update is needed
    exportObj.ships = basic_cards.ships

    # Rename ships
    exportObj.renameShip 'TIE Fighter', 'Myśliwiec TIE'
    exportObj.renameShip 'TIE Bomber', 'Bombowiec TIE'
    exportObj.renameShip 'Lambda-Class Shuttle', 'Prom typu Lambda'
    exportObj.renameShip 'VT-49 Decimator', 'Decimator VT-49'
    exportObj.renameShip 'Z-95 Headhunter', 'Z-95 Łowca głów'
    exportObj.renameShip 'CR90 Corvette (Aft)', 'Korweta CR90 (rufa)'
    exportObj.renameShip 'CR90 Corvette (Fore)', 'Corvette CR90 (dziób)'
    exportObj.renameShip 'GR-75 Medium Transport', 'Średni transportowiec GR-75'


    # Names don't need updating, but text needs to be set
    pilot_translations =
        # Empire
        # Myśliwiec TIE
        "Academy Pilot":
            ship: "Myśliwiec TIE"
            name: "Pilot z Akademii"
        "Obsidian Squadron Pilot":
            ship: "Myśliwiec TIE"
            name: "Pilot Eskadry Obsydianowych"
        "Black Squadron Pilot":
            ship: "Myśliwiec TIE"
            name: "Pilot Eskadry Czarnych"
        '"Winged Gundark"':
            name: "Skrzydlaty Gundark"
            ship: "Myśliwiec TIE"
            text: """Kiedy atakujesz w Zasięgu 1, możesz zmienić 1 ze swoich wyników %HIT% na wynik %CRIT%."""
        '"Night Beast"':
            name: "Nocny Potwór"
            ship: "Myśliwiec TIE"
            text: """Po wykonaniu zielonego manewru możesz wykonać darmową akcję skupienia."""
        '"Backstabber"':
            ship: "Myśliwiec TIE"
            text: """Kiedy atakujesz będąc poza polem rażenia broniącego się statku, rzucasz 1 dodatkową kością ataku."""
        '"Dark Curse"':
            name: "Mroczna Klątwa"
            ship: "Myśliwiec TIE"
            text: """Kiedy się bronisz statki które cię atakują nie mogą wydawać żetonów skupienia ani przerzucać kości ataku."""
        '"Mauler Mithel"':
            ship: "Myśliwiec TIE"
            text: """Kiedy atakujesz w Zasięgu 1, rzucasz 1 dodatkową kością ataku."""
        '"Howlrunner"':
            ship: "Myśliwiec TIE"
            text: """Kiedy inny przyjazny statek w zasięgu 1 atakuje przy pomocy swojej podstawowej broni, może przerzucić 1 kość ataku."""
        # TIE Interceptor
        "Alpha Squadron Pilot":
            name: "Pilot Eskadry Alfa"
        "Avenger Squadron Pilot":
            name: "Pilot Eskadry Mścicieli"
        "Saber Squadron Pilot":
            name: "Pilot Eskadry Szabel"
        "Royal Guard Pilot":
            name: "Pilot imperialny gwardzista"
        "\"Fel's Wrath\"":
            name: "\"Gniew Fel'a\""
            text: """Zostajesz zniszczony dopiero pod koniec fazy walki, w której liczba kart uszkodzeń przypisanych do ciebie będzie równa, lub wyższa od twojej wartości kadłuba."""
        "Lieutenant Lorrir":
            name: "Porucznik Lorrir"
            text: """Kiedy wykonujesz akcję "beczka", możesz otrzymać 1 żeton stresu, aby zamiast wzornika manewru (%STRAIGHT% 1) użyć (%BANKLEFT% 1) lub (%BANKRIGHT% 1)."""
        "Kir Kanos":
            text: """Kiedy atakujesz w Zasięgu 2-3, możesz wydać 1 żeton uników, aby dodać 1 %HIT% do swojego wyniku."""
        "Tetran Cowall":
            text: """Kiedy ujawnisz manewr %UTURN% możesz traktować go tak, jakby jego prędkość wynosiła "1", "3" lub "5"."""
        "Turr Phennir":
            text: """Po wykonaniu ataku możesz wykonać darmową akcję "dopalacz" lub "beczka"."""
        "Carnor Jax":
            text: """Wrogie statki w Zasięgu 1 nie mogą wykonywać akcji "skupienie" oraz "unik", ani wydawać żetonów skupienia i uników."""
        "Soontir Fel":
            text: """Kiedy otrzymujesz żeton stresu, możesz przypisać do swojego statku 1 żeton skupienia."""
        # TIE Phantom
        "Sigma Squadron Pilot":
            name: "Pilot Eskadry Sigma"
        "Shadow Squadron Pilot":
            name: "Pilot Eskadry Cieni"
        '"Echo"':
            text: """Kiedy się demaskujesz musisz użyć wzornika manewru (%BANKLEFT% 2) lub (%BANKRIGHT% 2) zamiast wzornika (%STRAIGHT% 2)."""
        '"Whisper"':
            name: "Szept"
            text: """Po tym jak wykonasz atak, który trafi cel, możesz przypisać do swojego statku 1 żeton skupienia."""
        # TIE Defender
        "Onyx Squadron Pilot":
            name: "Pilot Eskadry Onyx"
        "Delta Squadron Pilot":
            name: "Pilot Eskadry Delta"
        "Colonel Vessery":
            name: "Pułkownik Vessery"
            text: """Kiedy atakujesz, zaraz po swoim rzucie kośćmi ataku możesz namierzyć obrońcę, jeśli ma na sobie czerwony żeton namierzonego celu."""
        "Rexler Brath":
            text: """Po tym jak wykonasz atak, który zada obrońcy co najmniej jedną kartę uszkodzenia, możesz wydać żeton skupienia aby odkryć te karty."""
        # Bombowiec TIE
        "Scimitar Squadron Pilot":
            ship: "Bombowiec TIE"
            name: "Pilot Eskadry Sejmitarów"
        "Gamma Squadron Pilot":
            ship: "Bombowiec TIE"
            name: "Pilot Eskadry Gamma"
        "Captain Jonus":
            ship: "Bombowiec TIE"
            name: "Kapitan Jonus"
            text: "Kiedy inny przyjazny statek w Zasięgu 1 atakuje przy pomocy dodatkowej broni, może przerzucić maksymalnie 2 kości ataku."
        "Major Rhymer":
            ship: "Bombowiec TIE"
            text: "Kiedy atakujesz przy pomocy dodatkowej broni, możesz zwiększyć lub zmniejszyć zasięg broni o 1. Musisz przy tym zachować limit zasięgu 1-3."
        # TIE Advanced
        "Tempest Squadron Pilot":
            name: "Pilot Eskadry Burzy"
        "Storm Squadron Pilot":
            name: "Pilot Eskadry Szturmu"
        "Maarek Stele":
            text: """Kiedy twój atak zadaje obrońcy odkrytą kartę uszkodzenia, wylosuj 3 karty uszkodzeń, wybierz 1 z nich, którą zadajesz, a pozostałe odrzuć."""
        "Darth Vader":
            text: """Podczas swojego kroku "Wykonywania akcji" możesz wykonać 2 akcje."""
        "Commander Alozen":
            name: "Komandor Alozen"
            text: """Na początku fazy walki możesz namierzyć wrogi statek znajdujący się w Zasięgu 1 od ciebie."""
        # Firespray
        "Bounty Hunter":
            name:"Łowca nagród"
        "Kath Scarlet":
            text: """Kiedy atakujesz, obrońca otrzymuje 1 żeton stresu, jeśli anuluje co najmniej jeden wynik %CRIT%."""
        "Boba Fett":
            text: """Kiedy ujawniasz manewr skrętu (%BANKLEFT% lub %BANKRIGHT%) możesz przestawić swój wskaźnik manewrów na drugi manewr skrętu o tej samej prędkości."""
        "Krassis Trelix":
            text: """Kiedy atakujesz przy pomocy dodatkowej broni, możesz przerzucić 1 kość ataku."""
        # Prom typu Lambda
        "Captain Kagi":
            ship: "Prom typu Lambda"
            name: "Kapitan Kagi"
            text: """Kiedy wrogi statek namierza cel, musi namierzyć twój statek, jeśli to możliwe."""
        "Colonel Jendon":
            name: "Pułkownik Jendon"
            ship: "Prom typu Lambda"
            text: """Na początku fazy walki możesz przypisać 1 ze swoich niebieskich żetonów namierzonego celu do przyjaznego statku w Zasięgu 1, jeśli ten nie ma niebieskiego żetonu namierzonego celu."""
        "Captain Yorr":
            ship: "Prom typu Lambda"
            name: "Kapitan Yorr"
            text: """Kiedy inny przyjazny statek w Zasięgu 1-2 ma otrzymać żeton stresu, gdy ty masz 2 lub mniej żetonów stresu, możesz przypisać do siebie ten żeton stresu."""
        "Omicron Group Pilot":
            ship: "Prom typu Lambda"
            name: "Pilot grupy Omicron"
        # VT-49 Decimator
        "Captain Oicunn":
            ship: "Decimator VT-49"
            name: "Kapitan Oicunn"
            text: """Po wykonaniu manewru, każdy wrogi statek z którym się stykasz, otrzymuje 1 uszkodzenie."""
        "Rear Admiral Chiraneau":
            ship: "Decimator VT-49"
            name: "Kontradmirał Chiraneau"
            text: """Kiedy atakujesz w Zasięgu 1-2, możesz zmienić jeden ze swoich wyników %FOCUS% na wynik %CRIT%."""
        "Patrol Leader":
            ship: "Decimator VT-49"
            name: "Dowódca Patrolu"
        "Commander Kenkirk":
            ship: "Decimator VT-49"
            name: "Commandant Kenkirk"
            text: """Jeśli nie masz żadnych osłon i masz przypisaną co najmniej 1 kartę uszkodzenia, wartość twojej zwrotności wzrasta o 1."""
        "Juno Eclipse":
            text: """When you reveal your maneuver, you may increase or decrease its speed by 1 (to a minimum of 1)."""
        "Zertik Strom":
            text: """Enemy ships at Range 1 cannot add their range combat bonus when attacking."""
        "Lieutenant Colzet":
            text: """At the start of the End phase, you may spend a target lock you have on an enemy ship to flip 1 random facedown Damage card assigned to it faceup."""

        # Rebels
        # X-Wing
        "Red Squadron Pilot":
            name: "Pilot Eskadry Czerwonych"
        "Rookie Pilot":
            name: "Niedoświadczony pilot"
        "Wedge Antilles":
            text: """Kiedy atakujesz zredukuj wartość zwrotności obrońcy o 1 (do minimum 0)."""
        "Garven Dreis":
            text: """Po tym jak wydasz żeton skupienia możesz umieścić dany żeton na dowolnym innym przyjaznym statku w Zasięgu 1-2 (zamiast go odrzucać)."""
        "Biggs Darklighter":
            text: """Inne przyjazne statki w Zasięgu 1 nie mogą być wybierane na cel ataku, jeśli atakujący może na cel wybrać ciebie."""
        "Luke Skywalker":
            text: """Kiedy się bronisz, możesz zmienić 1 ze swoich wyników %FOCUS% na wynik %EVADE%."""
        "Wes Janson":
            text: """Po wykonaniu ataku możesz usunąć z obrońcy 1 żeton skupienia, uników, lub niebieski żeton namierzonego celu."""
        "Jek Porkins":
            text: """Kiedy otrzymujesz żeton stresu możesz usunąć go i rzucić 1 kością ataku. Jeśli wypadnie %HIT%, ten statek otrzymuje 1 zakrytą kartę uszkodzenia."""
        '"Hobbie" Klivian':
            text: """Kiedy zdobywasz lub wydajesz żeton namierzonego celu, możesz usunąć ze swojego statku 1 żeton stresu."""
        "Tarn Mison":
            text: """Kiedy wrogi statek wybiera cię na cel ataku, możesz namierzyć ten statek."""
        # Y-Wing
        "Gold Squadron Pilot":
            name: "Pilot Eskadry Złotych"
        "Gray Squadron Pilot":
            name: "Pilot Eskadry Szarych"
        '"Dutch" Vander':
            text: """Po namierzeniu celu wybierz przyjazny statek w Zasięgu 1-2. Wybrany statek może natychmiast namierzyć cel."""
        "Horton Salm":
            text: """Kiedy atakujesz w Zasięgu 2-3, możesz przerzucić dowolne ze swoich kości, na których wypadły puste ścianki."""
        # A-Wing
        "Green Squadron Pilot":
            name: "Pilot Eskadry Zielonych"
        "Prototype Pilot":
            name: "Pilot prototypu"
        "Tycho Celchu":
            text: """Możesz wykonywać akcje nawet jeśli posiadasz żetony stresu."""
        "Arvel Crynyd":
            text: """Możesz wybrać na cel swojego ataku wrogi statek, z którym się stykasz, jeżeli ten znajduje się w twoim polu rażenia."""
        # YT-1300
        "Outer Rim Smuggler":
            name: "Przemytnik z Zewnętrznych Rubierzy"
        "Chewbacca":
            text: """Kiedy otrzymujesz odkrytą kartę uszkodzenia, natychmiast ją zakryj (bez rozpatrywania jej efektu)."""
        "Lando Calrissian":
            text: """Po wykonaniu zielonego manewru wybierz jeden inny przyjazny statek w Zasięgu 1. Statek ten może wykonać 1 darmową akcję przedstawioną na jego pasku akcji."""
        "Han Solo":
            text: """Kiedy atakujesz możesz przerzucić wszystkie swoje kości ataku. Jeśli zdecydujesz się to zrobić musisz przerzucić tyle ze swoich kości, ile możesz."""
        # B-Wing
        "Dagger Squadron Pilot":
            name: "Pilot Eskadry Sztyletów"
        "Blue Squadron Pilot":
            name: "Pilot Eskadry Niebieskich"
        "Ten Numb":
            text: """Kiedy atakujesz, 1 z twoich wyników [crt-hit] nie może być anulowany przy pomocy kości obrony."""
        "Ibtisam":
            text: """Kiedy atakujesz lub się bronisz mając co najmniej 1 żeton stresu, możesz przerzucić jedną ze swoich kości."""
        # HWK-290
        "Rebel Operative":
            name: "Agent rebeliantów"
        "Roark Garnet":
            text: '''Na początku fazy walki wybierz 1 inny przyjazny statek w zasięgu 1-3. Do końca tej fazy traktuj wartość umiejętności tego pilota jakby wynosiła "12".'''
        "Kyle Katarn":
            text: """Na początku fazy walki możesz przypisać 1 ze swoich żetonów skupienia do innego przyjaznego statku w Zasięgu 1-3."""
        "Jan Ors":
            text: """Kiedy inny przyjazny statek w Zasięgu 1-3 atakuje, gdy nie masz żadnych żetonów stresu, możesz otrzymać 1 żeton stresu aby umożliwić mu rzut 1 dodatkową kością ataku."""
        # Z-95
        "Bandit Squadron Pilot":
            name: "Pilot Eskadry Bandytów"
            ship: "Z-95 Łowca głów"
        "Tala Squadron Pilot":
            name: "Pilot Eskadry Tala"
            ship: "Z-95 Łowca głów"
        "Lieutenant Blount":
            name: "Porucznik Blount"
            ship: "Z-95 Łowca głów"
            text: "Kiedy atakujesz, obrońca zostaje trafiony twoim atakiem nawet jeśli nie otrzymał żadnych uszkodzeń."
        "Airen Cracken":
            ship: "Z-95 Łowca głów"
            text: """Po wykonaniu ataku możesz wybrać inny przyjazny statek w Zasięgu 1. Dany statek może wykonać 1 darmową akcję."""
        # E-Wing
        "Knave Squadron Pilot":
            name: "Pilot Eskadry Szelm"
        "Blackmoon Squadron Pilot":
            name: "Pilot Eskadry Czarnego Księżyca"
        "Etahn A'baht":
            text: """Kiedy wrogi statek w twoim polu rażenia, w Zasięgu 1-3 się broni, atakujący może zmienić 1 z jego wyników %HIT% na wynik %CRIT%."""
        "Corran Horn":
            text: """Na początku fazy końcowej możesz wykonać jeden atak. Nie możesz atakować w następnej rundzie."""
        # Asy Rebelii
        "Jake Farrell":
            text: """Po tym jak wykonasz akcję skupienia lub zostanie ci przypisany żeton skupienia, możesz wykonać darmową akcję "dopalacz" lub "beczka"."""
        "Gemmer Sojan":
            text: """Dopóki znajdujesz się w Zasięgu 1 od co najmniej 1 wrogiego statku, zwiększ swoją wartość zwrotności o 1."""
        "Keyan Farlander":
            text: """Kiedy atakujesz możesz usunąć 1 żeton stresu aby zmienić wszystkie swoje wyniki %FOCUS% na %HIT%."""
        "Nera Dantels":
            text: """Możesz wykonać atak dodatkową bronią %TORPEDO%, skierowany przeciwko wrogim statkom znajdującym się poza twoim polem rażenia."""
        # Transportowiec Rebelii
        "GR-75 Medium Transport":
            name: "Średni transportowiec GR-75"
            ship: "Średni transportowiec GR-75"
        # CR90
        "CR90 Corvette (Fore)":
            ship: "Korweta CR90 (dziób)"
            name: "Korweta CR90 (dziób)"
            text: """Kiedy atakujesz przy pomocy swojej głównej broni, możesz wydać 1 żeton energii aby rzucać 1 dodatkową kością ataku."""
        "CR90 Corvette (Aft)":
            ship: "Korweta CR90 (rufa)"
            name: "Korweta CR90 (rufa)"
        # YT-2400
        "Dash Rendar":
            text: """Podczas fazy aktywacji i w czasie wykonywania akcji możesz ignorować przeszkody."""
        '"Leebo"':
            text: """Kiedy otrzymujesz odkrytą kartę uszkodzenia, dobierz 1 dodatkową kartę uszkodzenia. Rozpatrz jedną z nich a drugą odrzuć."""
        "Eaden Vrill":
            text: """Podczas wykonywania ataku przy pomocy broni podstawowej, którego celem jest statek z żetonem stresu, rzucasz 1 dodatkową kością."""
        "Wild Space Fringer":
            name: "Outsider z Dzikiej Przestrzeni"

        # Scum and Villainy
        # Starviper
        "Prince Xizor":
            name: "Książe Xizor"
            text: """Kiedy się bronisz, przyjazny statek w Zasięgu 1 może otrzymać 1 nieanulowany wynik %HIT% lub %CRIT% (zamiast ciebie)."""
        "Guri":
            text: """Na początku fazy walki, jeśli jesteś w Zasięgu 1 od wrogiego statku, możesz przypisać do swojego statku 1 żeton skupienia."""
        "Black Sun Vigo":
            name: "Vigo Czarnego Słońca"
        "Black Sun Enforcer":
            name: "Wysłannik Czarnego Słońca"
        # Interceptor M3-A
        "Cartel Spacer":
            name: "Pilot kartelu"
        "Tansarii Point Veteran":
            name: "Weteran Tansarii Point"
        "Serissu":
            text: """Kiedy inny przyjazny statek w Zasięgu 1 się broni, może przerzucić 1 kość obrony."""
        "Laetin A'shera":
            text: "Po tym jak obronisz się przed atakiem, jeśli atak nie trafił, możesz przypisać do swojego statku 1 żeton uniku."
        # Agressor
        "IG-88A":
            text: """Po tym jak wykonasz atak, który zniszczy obrońcę, możesz odzyskać 1 osłonę."""
        "IG-88B":
            text: """Raz na rundę, po tym jak wykonasz atak, który nie trafi w wybrany cel, możesz wykonać atak przy pomocy dodatkowej broni %CANON%, w którą jesteś wyposażony."""
        "IG-88C":
            text: """Po tym jak wykonasz akcję „dopalacz” możesz przypisać do swojego statku 1 żeton uniku."""
        "IG-88D":
            text: """Możesz wykonać manewr (%SLOOPLEFT% 3) lub (%SLOOPRIGHT% 3) używając odpowiednio wzornika (%TURNLEFT% 3) lub (%TURNRIGHT% 3)."""
        # Firespray
        "Boba Fett (Scum)":
            name: """Boba Fett (Szumowiny)"""
            text: """Kiedy atakujesz lub się bronisz możesz przerzucić 1 ze swoich kości za każdy wrogi statek w Zasięgu 1."""
        "Kath Scarlet (Scum)":
            name: """Kath Scarlet (Szumowiny)"""
            text: """Kiedy atakujesz statek znajdujący się w twoim pomocniczym polu rażenia, rzucasz 1 dodatkową kością ataku."""
        "Emon Azzameen":
            text: """Kiedy zrzucasz bombę, możesz użyć wzornika [%TURNLEFT% 3], [%STRAIGHT% 3], lub [%TURNRIGHT% 3] (zamiast wzornika [%STRAIGHT% 1])."""
        "Mandalorian Mercenary":
            name: "Mandaloriański najemnik"
        # Y-Wing
        "Kavil":
            text: """Kiedy atakujesz statek znajdujący się poza twoim polem rażenia, rzucasz 1 dodatkową kością ataku."""
        "Drea Renthal":
            text: """Po tym jak wydasz żeton namierzonego celu, możesz otrzymać 1 żeton stresu, aby namierzyć cel."""
        "Hired Gun" :
            name: "Najemnik"
        "Syndicate Thug":
            name: "Zbir z syndykatu"
        # HWK
        "Dace Bonearm":
            text: """Kiedy wrogi statek w Zasięgu 1-3 otrzyma co najmniej jeden żeton jonów, a ty nie masz żetonu stresu, możesz otrzymać 1 żeton stresu aby sprawić, żeby dany statek otrzymał 1 uszkodzenie."""
        "Palob Godalhi":
            text: """Na początku fazy walki możesz usunąć 1 żeton skupienia lub uników z wrogiego statku w Zasięgu 1-2 i przypisać go do siebie."""
        "Torkil Mux":
            text: """Na koniec fazy aktywacji wybierz jeden wrogi statek w Zasięgu 1-2. Do końca fazy walki wartość umiejętności pilota wybranego statku wynosi "0"."""
        "Spice Runner":
            name: "Przemytnik przyprawy"
        # Z-95
        "Black Sun Soldier":
            name: "Żolnierz Czarnego Słońca"
            ship: "Z-95 Łowca głów"
        "Binayre Pirate":
            name: "Pirat z Binayre"
            ship: "Z-95 Łowca głów"
        "N'Dru Suhlak":
            ship: "Z-95 Łowca głów"
            text: """Kiedy atakujesz rzucasz 1 dodatkową kością ataku, jeśli w Zasięgu 1-2 nie ma żadnych innych przyjaznych statków."""
        "Kaa'To Leeachos":
            ship: "Z-95 Łowca głów"
            text: """Na początku fazy walki możesz usunąć 1 żeton skupienia lub uników z innego przyjaznego statku w Zasięgu 1-2 i przypisać go do siebie."""
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
            text: """When defending, if you are stressed, you may change up to 2 of your %FOCUS% results to %EVADE% results."""
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
        "Valen Rudor":
            text: """After defending, you may perform a free action."""
        "4-LOM":
            text: """At the start of the End phase, you may assign 1 of your stress tokens to another ship at Range 1."""
        "Tel Trevura":
            text: """The first time you would be destroyed, instead cancel any remaining damage, discard all Damage cards, and deal 4 facedown Damage cards to this ship."""
        "Manaroo":
            text: """At the start of the Combat phase, you may assign all focus, evade, and target lock tokens assigned to you to another friendly ship."""
        '"Deathfire"':
            text: '''When you reveal your maneuver dial or after you perform an action, you may perform a %BOMB% Upgrade card action as a free action.'''
        "Maarek Stele (TIE Defender)":
            text: """When your attack deals a faceup Damage card to the defender, instead draw 3 Damage cards, choose 1 to deal, and discard the others."""
        "Countess Ryad":
            text: """When you reveal a %STRAIGHT% maneuver, you may treat it as a %KTURN% maneuver."""
        "Poe Dameron (PS9)":
            text: """When attacking or defending, if you have a focus token, you may change 1 of your %FOCUS% results to a %HIT% or %EVADE% result."""
        "Rey":
            text: """When attacking or defending, if the enemy ship is inside of your firing arc, you may reroll up to 2 of your blank results."""
        'Han Solo (TFA)':
            text: '''When you are placed during setup, you can be placed anywhere in the play area beyond Range 3 of enemy ships.'''
        'Chewbacca (TFA)':
            text: '''After another friendly ship at Range 1-3 is destroyed (but has not fled the battlefield), you may perform an attack.'''
        'Norra Wexley':
            text: '''When attacking or defending, you may spend a target lock you have on the enemy ship to add 1 %FOCUS% result to your roll.'''
        'Shara Bey':
            text: '''When another friendly ship at Range 1-2 is attacking, it may treat your blue target lock tokens as its own.'''
        'Thane Kyrell':
            text: '''After an enemy ship in your firing arc at Range 1-3 attacks another friendly ship, you may perform a free action.'''
        'Braylen Stramm':
            text: '''After you execute a maneuver, you may roll an attack die.  On a %HIT% or %CRIT% result, remove 1 stress token from your ship.'''
        '"Quickdraw"':
            text: '''Once per round, when you lose a shield token, you may perform a primary weapon attack.'''
        '"Backdraft"':
            text: '''When attacking a ship inside your auxiliary firing arc, you may add 1 %CRIT% result.'''
        'Fenn Rau':
            text: '''When attacking or defending, if the enemy ship is at Range 1, you may roll 1 additional die.'''
        'Old Teroch':
            text: '''At the start of the Combat phase, you may choose 1 enemy ship at Range 1.  If you are inside its firing arc, it discards all focus and evade tokens.'''
        'Kad Solus':
            text: '''After you execute a red maneuver, assign 2 focus tokens to your ship.'''
        'Ketsu Onyo':
            text: '''At the start of the Combat phase, you may choose a ship at Range 1.  If it is inside your primary <strong>and</strong> mobile firing arcs, assign 1 tractor beam token to it.'''
        'Asajj Ventress':
            text: '''At the start of the Combat phase, you may choose a ship at Range 1-2.  If it inside your mobile firing arc, assign 1 stress token to it.'''
        'Sabine Wren (Scum)':
            text: '''When defending against an enemy ship inside your mobile firing arc at Range 1-2, you may add 1 %FOCUS% result to your roll.'''
        'Sabine Wren (TIE Fighter)':
            text: '''Immediately before you reveal your maneuver, you may perform a free boost or barrel roll action.'''
        '"Zeb" Orrelios (TIE Fighter)':
            text: '''When defending, you may cancel %CRIT% results before %HIT% results.'''
        'Kylo Ren':
            text: '''The first time you are hit by an attack each round, deal the "I'll Show You the Dark Side" Condition card to the attacker.'''
        'Unkar Plutt':
            text: '''At the end of the Activation phase, you <strong>must</strong> assign a tractor beam token to each ship you are touching.'''
        'Cassian Andor':
            text: '''At the start of the Activation phase, you may remove 1 stress token from 1 other friendly ship at Range 1-2.'''
        '''"Duchess"''':
            text: '''While you have the "Adaptive Ailerons" Upgrade card equipped, you may choose to ignore its card ability.'''
        'Nien Nunb':
            text: '''When you receive a stress token, if there is an enemy ship inside your firing arc at Range 1, you may discard that stress token.'''
        '"Snap" Wexley':
            text: '''After you execute a 2-, 3-, or 4-speed maneuver, if you are not touching a ship, you may perform a free boost action.'''
        'Jess Pava':
            text: '''When attacking or defending, you may reroll 1 of your dice for each other friendly ship at Range 1.'''
        'Ahsoka Tano':
            text: '''At the start of the Combat phase, you may spend 1 focus token to choose a friendly ship at Range 1.  It may perform 1 free action.'''
        'Captain Rex':
            text: '''After you perform an attack, assign the "Suppressive Fire" Condition card to the defender.'''
        'Major Stridan':
            text: '''For the purpose of your actions and Upgrade cards, you may treat friendly ships at Range 2-3 as being at Range 1.'''
        'Lieutenant Dormitz':
            text: '''During setup, friendly ships may placed anywhere in the play area at Range 1-2 of you.'''
        'Constable Zuvio':
            text: '''When you reveal a reverse maneuver, you may drop a bomb using your front guides (including a bomb with the "<strong>Action:</strong>" header).'''

    upgrade_translations =
        #Elitarna zdolność
        "Determination":
            name: "Determinacja"
            text: """Kiedy otrzymujesz odkrytą kartę uszkodzenia z cechą "Pilot", natychmiast ją odrzuć bez rozpatrywania jej efektu."""
        "Swarm Tactics":
            name: "Taktyka roju"
            text: """Na początku fazy walki wybierz 1 przyjazny statek w Zasięgu 1. Do końca tej fazy traktuj wybrany statek, jakby jego wartość umiejętności pilota była równa twojej."""
        "Squad Leader":
            name: "Dowódca eskadry"
            text: """<strong>Akcja:</strong> Wybierz 1 statek w Zasięgu 1-2, który ma niższą wartość umiejętności pilota niż ty. %LINEBREAK% Wybrany statek może natychmiast wykonać 1 darmową akcję."""
        "Expert Handling":
            name: "Mistrzowskie manewrowanie"
            text: """„<strong>Akcja:</strong> Wykonaj darmową akcję „beczka”. Jeśli nie masz symbolu akcji %BARRELROLL%, otrzymujesz 1 żeton stresu. Następnie możesz usunąć jeden wrogi żeton namierzonego celu znajdujący się na Twoim statku."""
        "Marksmanship":
            name: "Celność"
            text: """<strong>Akcja:</strong> Kiedy atakujesz w tej rundzie, możesz zamienić 1 swój wynik %FOCUS% na %CRIT%, a wszystkie pozostałe wyniki %FOCUS% na %HIT%."""
        "Daredevil":
            name: "Ryzykant"
            text: """<strong>Akcja:</strong> Wykonaj biały manewr (%TURNLEFT% 1) lub (%TURNRIGHT% 1)". Następnie otrzymujesz żeton stresu. %LINEBREAK% Następnie, jeśli nie masz symbolu akcji %BOOST%, rzuć 2 kośćmi ataku. Otrzymujesz wszystkie wyrzucone uszkodzenia %HIT% i uszkodzenia krytyczne %CRIT%."""
        "Elusiveness":
            name: "Nieuchwytność"
            text: """Kiedy się bronisz możesz otrzymać 1 żeton stresu, aby wybrać jedną kość ataku. Atakujący musi przerzucić tą kość. Nie możesz skorzystać z tej zdolności, jeśli jeśli masz co najmniej 1 żeton stresu."""
        "Push the Limit":
            name: "Na granicy ryzyka"
            text: """Raz na rundę po wykonaniu akcji, możesz wykonać 1 darmową akcję przedstawioną na twoim pasku akcji. Następnie otrzymujesz 1 żeton stresu."""
        "Deadeye":
            name: "Strzelec wyborowy"
            text: """Możesz traktować nagłówek <strong>"Atak (namierzony cel):"</strong> jako <strong>"Atak (skupienie):"</strong>. %LINEBREAK% Kiedy atak zmusza cię do wydania żetonu namierzonego celu, możesz zamiast niego wydać żeton skupienia."""
        "Expose":
            name: "Odsłonięcie"
            text: """<strong>Akcja:</strong> Do końca rundy zwiększ wartość swojej podstawowej broni o 1 i zmniejsz wartość zwrotności o 1."""
        "Wingman":
            name: "Skrzydłowy"
            text: """Na początku fazy walki usuń 1 żeton stresu z innego przyjaznego statku w Zasięgu 1."""
        "Decoy":
            name: "Zmyłka"
            text: """Na początku fazy walki możesz wybrać 1 przyjazny statek w Zasięgu 1-2. Do końca fazy zamieniasz się z danym statkiem wartościami umiejętności pilota."""
        "Outmaneuver":
            name: "Wymanewrowanie"
            text: """Kiedy atakujesz statek w swoim polu rażenia, a nie znajdujesz się w polu rażenia danego statku, zmniejsz jego wartość zwrotności o 1 (do minimum 0)."""
        "Predator":
            name: "Drapieżnik"
            text: """Kiedy atakujesz, możesz przerzucić 1 kość ataku. Jeśli wartość umiejętnosci pilota obrońcy wynosi "2" lub mniej, możesz przerzucić maksymalnie 2 kości ataku (zamiast 1)."""
        "Draw Their Fire":
            name: "Ściągnięcie ognia"
            text: """Kiedy przyjazny statek w Zasięgu 1 zostaje trafiony podczas ataku, możesz zamiast niego otrzymać 1 z nie anulowanych %CRIT%."""
        "Adrenaline Rush":
            name: "Zastrzyk adrenaliny"
            text: """Kiedy ujawnisz czerwony manewr, możesz odrzucić tę kartę, aby do końca fazy aktywacji traktować ten manewr jako biały."""
        "Veteran Instincts":
            name: "Instynkt weterana"
            text: """Zwiększ swoją wartość umiejętności pilota o 2."""
        "Opportunist":
            name: "Oportunista"
            text: """Kiedy atakujesz, jeśli obrońca nie ma żadnych żetonów skupienia ani uników, możesz otrzymać 1 żeton stresu aby rzucić 1 dodatkową kością ataku.%LINEBREAK%Nie możesz skorzystać z tej zdolności, jeśli posiadasz żetony stresu."""
        "Lone Wolf":
            name : "Samotny wilk"
            text: """Jeśli w zasięgu 1-2 nie ma żadnych innych przyjaznych statków, kiedy się bronisz lub atakujesz, możesz przerzucić 1 wynik z pustą ścianką."""
        "Stay On Target":
            name: "Utrzymać cel"
            text: """Kiedy ujawnisz swój manewr możesz obrócić swój wskaźnik na inny manewr o tej samej prędkości.%LINEBREAK%Traktuj ten manewr jako czerwony."""
        "Ruthlessness":
            name: "Bezwzględność"
            text: """%PL_IMPERIALONLY%%LINEBREAK% Po tym jak przeprowadzisz atak, który trafi w cel, musisz wybrać 1 inny statek w Zasięgu 1 od obrońcy (nie siebie). Statek ten otrzymuje 1 uszkodzenie."""
        "Intimidation":
            name: "Zastraszenie"
            text: """Dopóki stykasz się z wrogim statkiem, jego zwrotność zostaje zmniejszona o 1."""
        "Calculation":
            name: "Kalkulacje"
            text: """Kiedy atakujesz, możesz wydać żeton skupienia, aby zmienić jeden ze swoich wyników %FOCUS% na wynik %CRIT%."""
        "Bodyguard":
            name : "Ochroniarz"
            text: """%PL_SCUMONLY%%LINEBREAK% Na początku fazy walki możesz wydać żeton skupienia aby wybrać przyjazny statek w Zasięgu 1 o wartości umiejętności pilota wyższej od ciebie. Do końca rundy zwiększ jego wartość zwrotności o 1."""
        # Astromechs
        "R2 Astromech":
            name: "Astromech R2"
            text: """Możesz traktować wszystkie manewry o prędkości 1 i 2, jakby były to zielone manewry."""
        "R2-D2":
            text: """Po wykonaniu zielonego manewru możesz odzyskać 1 osłonę (nie przekraczając swojej wartości osłon)."""
        "R2-F2":
            text: """<strong>Akcja:</strong> Do końca tej rundy zwiększ swoją wartość zwrotności o 1."""
        "R5-D8":
            text: """<strong>Akcja:</strong> Rzuć jedną kością obrony.%LINEBREAK% Jeżeli wypadnie wynik %EVADE% lub %FOCUS%, odrzuć jedną ze swoich zakrytych kart uszkodzeń."""
        "R5-K6":
            text: """Po wydaniu swojego rzetonu namierzonego celu rzuć 1 kością obrony.%LINEBREAK% Jeżeli wypadnie %EVADE% natychmiast zdobywasz żeton namierzonego celu dla tego samego statku. Nie możesz wydać nowego żetonu namierzonego celu podczas tego ataku."""
        "R5 Astromech":
            name: "Astromech R5"
            text: """Podczas fazy końcowej możesz wybrać 1 ze swoich odkrytych kart z cechą "Statek" i ją zakryć."""
        "R7 Astromech":
            name: "Astromech R7"
            text: """Raz na rundę kiedy się bronisz, jeśli namierzasz atakującego, możesz wydać żeton namierzonego celu aby wybrać dowolną liczbę kości ataku. Atakujący musi przerzucić wybrane kości."""
        "R7-T1":
            text: """<strong>Akcja:</strong> Wybierz wrogi statek w Zasięgu 1-2. Jeżeli znajdujesz się w polu rażenia wybranego statku, możesz namierzyć dany statek. Następnie możesz wykonać darmową akcję "dopalacz"."""
        "R4-D6":
            text: """Kiedy zostaniesz trafiony w wyniku ataku, a pośród wyników rzutu są co najmniej 3 nieaulowalne wyniki %HIT% możesz wybrać i anulować wszystkie poza 2. Za każdy wynik anulowany w ten sposób otrzymujesz 1 żeton stresu."""
        "R5-P9":
            text: """Na koniec fazy walki możesz wydać jeden ze swoich żetonów skupienia, aby odzyskać 1 osłonę (nie przekraczając swojej wartości osłon)."""
        "R3-A2":
            text: """Kiedy wybierzesz cel ataku, jeżeli obrońca znajduje się w twoim polu rażenia, możesz otrzymać 1 żeton stresu, aby sprawić żeby obrońca otrzymał 1 żeton stresu."""
        "R2-D6":
            text: """Twój pasek rowinięć zyskuje symbol %ELITE%.%LINEBREAK% Nie możesz przypisać tej karty rozwinięcia do swojego statku jeżeli masz już symbol rozwinięcia %ELITE% lub jeżeli wartość umiejętności pilota wynosi 2 lub mniej."""
        # Torpilles
        "Proton Torpedoes":
            name: "Torpedy protonowe"
            text: """<strong>Atak (namierzony cel):</strong> Wydaj swój żeton namierzonego celu i odrzuć tę kartę, aby wykonać ten atak. %LINEBREAK%Możesz zmienić 1 ze swoich wyników %FOCUS% na wynik %CRIT%."""
        "Advanced Proton Torpedoes":
            name: "Zaaw. torpedy protonowe"
            text: """<strong>Atak (namierzony cel):</strong> Wydaj swój żeton namierzonego celu i odrzuć tę kartę, aby wykonać ten atak. %LINEBREAK%Możesz zmienić maksymalnie 3 swoje puste ścianki na wyniki %FOCUS%."""
        "Flechette Torpedoes":
            name: "Torpedy rozpryskowe"
            text: """<strong>Atak (namierzony cel):</strong> Wydaj swój żeton namierzonego celu i odrzuć tę kartę, aby wykonać ten atak. %LINEBREAK%Po wykonaniu tego ataku obrońca otrzymuje 1 żeton stresu jeżeli jego wartość kadłuba wynosi 4 lub mniej."""
        "Ion Torpedoes":
            name: "Torpedy jonowe"
            text: """<strong>Atak (namierzony cel):</strong> Wydaj swój żeton namierzonego celu i odrzuć tę kartę, aby wykonać ten atak. %LINEBREAK%Jeżeli ten atak trafi w wybrany cel, obrońca oraz każdy statek w Zasięgu 1 od niego otrzymuje 1 żeton jonów."""
        "Bomb Loadout":
            name: "Ładunek bomb"
            text: """<span class="card-restriction">Tylko Y-wing. Ograniczenie.</span>%LINEBREAK%Twój pasek rozwinięć zyskuje symbol %BOMB%."""
        # Tourelles
        "Ion Cannon Turret":
            name: "Wieżyczka z działem jonowym"
            text: """<strong>Atak:</strong> Zaatakuj 1 statek (nawet poza twoim polem rażenia). %LINEBREAK%Jeśli atak ten trafi w wybrany statek, otrzymuje on 1 uszkodzenie oraz 1 żeton jonów. Następnie anuluj wszystkie wyniki kości."""
        "Blaster Turret":
            name: "Wieżyczka blasterowa"
            text: """<strong>Atak (skupienie):</strong> Wydaj 1 żeton skupienia, aby zaatakować 1 statek (nawet poza twoim polem rażenia)."""
        "Autoblaster Turret":
            name: "Wieżyczka autoblasterowa"
            text: """<strong>Atak: Zaatakuj 1 statek (nawet poza twoim polem rażenia). %LINEBREAK%Twoje wyniki %HIT% nie mogą być anulowane przy pomocy kości obrony. Obrońca może anulować wyniki %CRIT% przed %HIT%."""
        # Missiles
        "Concussion Missiles":
            name: "Rakiety wstrząsowe"
            text: """<strong>Atak (namierzony cel):</strong> Wydaj swój żeton namierzonego celu i odrzuć tę kartę, aby wykonać ten atak. %LINEBREAK%Możesz zmienić 1 ze swoich wyników z pustą ścianką na wynik %HIT%."""
        "Cluster Missiles":
            name: "Rakiety kasetonowe"
            text: """<strong>Atak (namierzony cel):</strong> Wydaj swój żeton namierzonego celu o odrzuć tę kartę, aby przeprowadzić ten atak dwukrotnie."""
        "Homing Missiles":
            name: "Rakiety samonaprowadzające"
            text: """<strong>Atak (namierzony cel):</strong> Odrzuć tę kartę, aby wykonać ten atak. %LINEBREAK%Podczas tego ataku obrońca nie może wydawać żetonów uniku."""
        "Assault Missiles":
            name: "Rakiety szturmowe"
            text: """<strong>Atak (namierzony cel):</strong> Wydaj swój żeton namierzonego celu i odrzuć tę kartę, aby wykonać ten atak. %LINEBREAK%Jeśli ten atak trafi w wybrany cel, każdy inny statek w Zasięgu 1 od obrońcy otrzymuje 1 uszkodzenie."""
        "Ion Pulse Missiles":
            name: "Jonowe rakiety pulsacyjne"
            text: """<strong>Atak (namierzony cel):</strong> Odrzuć tę kartę, aby wykonać ten atak. %LINEBREAK%Jeśli ten atak trafi, obrońca otrzymuje 1 uszkodzenie oraz 2 żetony jonów."""
        "Chardaan Refit":
            name: "Naprawy na Chardaanie"
            text: """<span class="card-restriction">Tylko A-wing.</span>%LINEBREAK%Ta karta ma ujemny koszt w punktach eskadry."""
        "Proton Rockets":
            name: "Rakiety protonowe"
            text: """<strong>Atak (skupienie):</strong> Odrzuć tę kartę, aby wykonać ten atak. %LINEBREAK%Możesz rzucić dodatkowymi kośćmi ataku w liczbie równej twojej zwrotności (nie wiecej niż 3)."""
        # Bombes
        "Seismic Charges":
            name: "Ładunki sejsmiczne"
            text: """Kiedy odkrywasz swój wskaźnik manewrów, możesz odrzucić tą kartę aby zrzucić 1 żeton ładunku sejsmicznego. %LINEBREAK%Żeton ten zostanie zdetonowany na koniec fazy aktywacji."""
        "Proximity Mines":
            name: "Miny zbliżeniowe"
            text: """<strong>Akcja:</strong> odrzuć tę kartę aby zrzucić 1 żeton miny zbliżeniowej. Kiedy statek wykona manewr w wyniku którego podstawka statku lub wzornik manewru będzie nachodzić na ten żeton, żeton ten zostaje zdetonowany."""
        "Proton Bombs":
            name: "Bomby protonowe"
            text: """Kiedy odkrywasz swój wskaźnik manewrów, możesz odrzucić tą kartę aby zrzucić 1 żeton bomby protonowej. %LINEBREAK%Żeton ten zostanie zdetonowany na koniec fazy aktywacji."""
        # Canons
        "Ion Cannon":
            name: "Działo Jonowe"
            text: """<strong>Atak: Zaatakuj 1 statek. %LINEBREAK%Jeżeli ten atak trafi wybrany cel, obrońca otrzymuje 1 uszkodzenie oraz 1 żeton jonów. Następnie anuluj wszystie wyniki kości."""
        "Heavy Laser Cannon":
            name: "Ciężkie działo laserowe"
            text: """<strong>Atak: Zaatakuj 1 statek. %LINEBREAK%Natychmiast po rzucie swoimi kośćmi ataku musisz zmienić wszystkie swoje wyniki %CRIT% na wyniki %HIT%."""
        "Autoblaster":
            text: """<strong>Atak: Zaatakuj 1 statek. %LINEBREAK%Twoje wyniki %HIT% nie mogą być anulowane przez kości obrony. Obrońca może anulować wyniki %CRIT% przed wynikami %HIT%."""
        "Flechette Cannon":
            name: "Działo rozpryskowe"
            text: """<strong>Atak: Zaatakuj 1 statek. %LINEBREAK%Jeżeli ten atak trafi, obrońca otrzymuje 1 uszkodzenie i, jeśli nie jest zestresowany, otrzymuje także 1 żeton stresu. Następnie anuluj wszystkie wyniki kości."""
        '"Mangler" Cannon':
            name: "Działo typu Mangler"
            text: """<strong>Atak: Zaatakuj 1 statek. %LINEBREAK%Kiedy atakujesz, możesz zmienić jeden ze swoich wyników %HIT% na wynik %CRIT%."""
        # Systèmes
        "Enhanced Scopes":
            name: "Wzmocnione radary"
            text: """Podczas fazy aktywacji traktuj swoją wartość umiejętności pilota jakby wynosiła "0"."""
        "Fire-Control System":
            name: "System kontroli ognia"
            text: """Po tym jak wykonasz atak, możesz namierzyć obroncę."""
        "Advanced Sensors":
            name: "Zaawanswowane sensory"
            text: """Zaraz przed tym jak ujawnisz swój manewr, możesz wykonać 1 darmową akcję. %LINEBREAK%Jeżeli skorzystawsz z tej zdolności, musisz w tej rundzie pominąć swój krok "Wykonywania akcji"."""
        "Sensor Jammer":
            name: "Zakłócacz sensorów"
            text: """Kiedy się bronisz możesz zmienić 1 z wyników %HIT% atakującego na wynik %FOCUS%. Atakujący nie może przerzucić kości ze zmienionym wynikiem."""
        "Accuracy Corrector":
            name: "Korektor celności"
            text: """Kiedy atakujesz, możesz anulować wszystkie swoje wyniki kości. Następnie możesz dodać 2 wyniki %HIT%.%LINEBREAK% Podczas tego ataku nie można ponownie modyfikować twoich kości."""
        "Advanced Targeting Computer":
            name: "Zaawansowany komputer celowniczy"
            text: """<span class="card-restriction">Tylko TIE Advanced.</span>%LINEBREAK% Kiedy atakujesz namierzonego przez siebie przeciwnika przy pomocy broni podstawowej, do wyniku rzutu kośćmi możesz dodać jeden wynik %CRIT%. Jeżeli to zrobisz, podczas tego ataku nie możesz wydać żetonu namierzonego celu."""
        # Équipages
        "Gunner":
            name: "Artylerzysta"
            text: """Po wykonaniu ataku, który nie trafił w wybrany cel, natychmiast wykonaj atak główną bronią. W tej rundzie nie możesz wykonać kolejnego ataku."""
        "Mercenary Copilot":
            name: "Najemny drugi pilot"
            text: """Kiedy atakujesz w Zasiegu 3 możesz zmienić 1 ze swoich wyników %HIT% na wynik %CRIT%."""
        "Weapons Engineer":
            name: "Inżynier uzbrojenia"
            text: """Możesz namierzać naraz 2 statki (każdy wrogi statek możesz namierzać tylko raz). %LINEBREAK%Kiedy namierzasz cel, możesz namierzyć 2 różne statki."""
        "Luke Skywalker":
            text: """%PL_REBELONLY%%LINEBREAK%Po wykonaniu ataku, który nie trafi w wybrany cel, natychmiast wykonaj atak główną bronią. Możesz zmienić 1 wynik %FOCUS% na %HIT%."""
        "Nien Nunb":
            text: """%PL_REBELONLY%%LINEBREAK%Możesz traktować wszystkie manewry %STRAIGHT%, jakby były to zielone manewry."""
        "Chewbacca":
            text: """%PL_REBELONLY%%LINEBREAK%Kiedy otrzymujesz kartę uszkodzenia, możesz natychmiast odrzucić tę kartę i odzyskać 1 żeton osłony. Następnie odrzuć tę kartę rozwinięcia."""
        "Recon Specialist":
            name: "Specjalista zwiadu"
            text: """Kiedy wykonujesz akcję skupienia, przypisz do swojego statku 1 dodatkowy żeton skupienia."""
        "Saboteur":
            name: "Sabotażysta"
            text: """<strong>Akcja:</strong> Wybierz 1 wrogi statek w Zasięgu 1 i rzuć 1 koscią ataku. Jeśli wypadnie %HIT% lub %CRIT%, wylosuj 1 zakrytą kartę uszkodzenia przypisaną do tego statku, odkryj ją i rozpatrz."""
        "Intelligence Agent":
            name: "Agent wywiadu"
            text: """Na początku fazy aktywacji wybierz 1 wrogi statek w zasięgu 1-2. Możesz podejrzeć manewr wybrany przez ten statek."""
        "Darth Vader":
            text: """%PL_IMPERIALONLY%%LINEBREAK%Tylko Imperium. Po tym jak wykonasz atak skierowany przeciwko wrogiemu statkowi, możesz otrzymać 2 uszkodzenia, aby zadać temu statkowi 1 krytyczne uszkodzenie."""
        "Rebel Captive":
            name: "Rebeliancki jeniec"
            text: """%PL_IMPERIALONLY%%LINEBREAK%Raz na rundę, pierwszy statek, który zadeklaruje ciebie jako cel ataku, natychmiast otrzymuje 1 żeton stresu."""
        "Flight Instructor":
            name: "Instruktor pilotażu"
            text: """Kiedy się bronisz, możesz przerzucić 1 ze swoich wyników %FOCUS%. Jeśli wartość umiejętności atakującego pilota wynosi "2" lub mniej, zamiast tego przerzuć 1 ze swoich pustych scianek.%FOCUS%."""
        "Navigator":
            name: "Nawigator"
            text: """Kiedy ujawnisz swój manewr, możesz obrócić swój wskaźnik na inny manewr tego samego kierunku. %LINEBREAK%Nie możesz przekręcić wskaźnika na czerwony manewr, jeśli posiadasz jakieś żetony stresu."""
        "Lando Calrissian":
            text: """%PL_REBELONLY%%LINEBREAK%<strong>Akcja:</strong> Rzuć 2 koścmi obrony. Za kazdy uzyskany wynik %FOCUS% przypisz do swojego statku 1 żeton skupienia. Za każdy wynik %EVADE% przypisz do swojego statku 1 żeton uniku.%FOCUS%"""
        "Mara Jade":
            text: """%PL_IMPERIALONLY%%LINEBREAK% Na koniec fazy walki kazdy wrogi statek w Zasięgu 1, który nie ma żetonu stresu, otrzymuje żeton stresu."""
        "Fleet Officer":
            name: "Oficer floty"
            text: """%PL_IMPERIALONLY%%LINEBREAK%<strong>Akcja:</strong> Wybierz maksymalnie 2 przyjazne statki w Zasięgu 1-2 i do każdego przypisz po 1 żetonie skupienia, następnie otrzymujesz 1 żeton stresu."""
        "Han Solo":
            text: """%PL_REBELONLY%%LINEBREAK%Tylko rebelianci. Kiedy atakujesz, jeśli namierzyłeś obrońcę, możesz wydać żeton namierzonego celu aby zmienić wszystkie swoje wyniki %FOCUS% na %HIT%."""
        "Leia Organa":
            text: """%PL_REBELONLY%%LINEBREAK%Na początku fazy aktywacji możesz odrzucić tę kartę, aby umożliwić wszystkim przyjaznym statkom, które ujawiniają czerwony manewr, traktowanie do końca fazy tego manewru jako białego."""
        "WED-15 Repair Droid":
            name: "Droid naprawczy WED-15"
            text: """%PL_HUGESHIPONLY%%LINEBREAK%<strong>Akcja:</strong> Wydaj 1 żeton energii aby odrzucić 1 ze swoich zakrytych kart uszkodzeń albo wydaj 3 żetony energii aby odrzucić 1 ze swoich odkrytych kart uszkodzeń."""
        "Carlist Rieekan":
            text: """%PL_HUGESHIPONLY% %PL_REBELONLY%%LINEBREAK%Na początku fazy aktywacji możesz odrzucić tę kartę aby do końca fazy traktować wartość umiejętności pilota każdego przyjaznego statku jakby wynosiła "12"."""
        "Jan Dodonna":
            text: """%PL_HUGESHIPONLY% %PL_REBELONLY%%LINEBREAK%Kiedy inny przyjazny statek w Zasięgu 1 wykonuje atak, możesz zmienić 1 z jego wyników %HIT% na %CRIT%."""
        "Tactician":
            name: "Taktyk"
            text: "Po tym jak wykonasz atak przeciwko statkowi znajdującemu się w twoim polu rażenia w Zasiegu 2, statek ten otrzymuje 1 żeton stresu."
        "R2-D2 (Crew)":
            name: "R2-D2 (Załoga)"
            text: """%PL_REBELONLY%%LINEBREAK%Na koniec fazy końcowej, jeśli nie masz żadnych osłon, możesz odzyskać 1 osłonę i rzucić 1 kością ataku. Jeśli wypadnie %HIT% odkryj 1 losową ze swoich zakrytych kart uszkodzeń i ją rozpatrz."""
        "C-3PO":
            text: """%PL_REBELONLY%%LINEBREAK%Raz na rundę, zanim wykonasz rzut co najmniej 1 koscią obrony, możesz na głos zgadnąć liczbę wyników %EVADE%. Jeśli wypadło tyle %EVADE% (przed modyfikacjami) dodaj 1 wynik %EVADE%."""
        "Kyle Katarn":
            text: """%PL_REBELONLY%%LINEBREAK%Po tym jak usuniesz ze swojego statku żeton stresu, możesz przypisać do swojego statku żeton skupienia."""
        "Jan Ors":
            text: """%PL_REBELONLY%%LINEBREAK%Raz na rundę, kiedy przyjazny statek w Zasięgu 1-3 wykonuje akcję skupienia lub miałby otrzymać żeton skupienia, możesz danemu statkowi przypisać żeton uniku (zamiast skupienia)."""
        "Toryn Farr":
            text: """%PL_HUGESHIPONLY% %PL_REBELONLY%%LINEBREAK%<strong>Akcja:</strong> Wydaj dowolną ilość żetonów energii aby wybrać taką samą liczbę wrogich statków w Zasiegu 1-2. Usuń z wybranych statków wszystkie żetony skupienia, uników i niebieskie żetony namierzonego celu."""
        "Targeting Coordinator":
            name: "Koordynator namierzania"
            text: """<strong>Energia:</strong> Możesz wydać 1 żeton energii aby wybrać 1 przyjazny statek w Zasięgu 1-2. Namierz cel, a następnie przydziel do wybranego statku niebieski żeton namierzonego celu."""
        "Raymus Antilles":
            text: """%PL_HUGESHIPONLY% %PL_REBELONLY%%LINEBREAK%Na początku fazy aktywacji wybierz 1 wrogi statek w Zasięgu 1-3. Możesz podejrzeć manewr wybrany dla tego statku. Jeżeli jest on biały, przydziel do niego 1 żeton stresu."""
        '"Leebo"':
            text: """%PL_REBELONLY%%LINEBREAK%<strong>Akcja:</strong> wykonaj darmową akcję "dopalacz". Następnie otrzymujesz 1 żeton jonów."""
        "Dash Rendar":
            text: """%PL_REBELONLY%%LINEBREAK%Możesz wykonywać ataki kiedy nachodzisz na przeszkodę. %LINEBREAK%Twoje ataki nie mogą być przyblokowane."""
        "Ysanne Isard":
            text: """%PL_IMPERIALONLY%%LINEBREAK%Na początku fazy walki, jeśli nie masz żadnych osłon, a do twojego statku przypisana jest co najmniej 1 karta uszkodzenia, możesz wykonać darmową akcję unik."""
        "Moff Jerjerrod":
            text: """%PL_IMPERIALONLY%%LINEBREAK%Kiedy otrzymujesz odkrytą kartę uszkodzenia, możesz odrzucić to rozwinięcie lub inną kartę rozwinięcia [crew] aby zakryć tę kartę uszkodzenia (bez rozpatrywania jej efektu)."""
        "Greedo":
            text: """%PL_SCUMONLY%%LINEBREAK%Za pierwszym razem kiedy atakujesz lub bronisz sie w każdej rundzie, pierwsza przypisana karta uszkodzenia jest odkryta."""
        "Outlaw Tech":
            name: "Mechanik wyjęty spod prawa"
            text: """%PL_SCUMONLY%%LINEBREAK%Po wykonaniu czerwonego manewru, możesz przypisać do swojego statku 1 żeton skupienia."""
        "K4 Security Droid":
            name: "Droid ochroniarz K4"
            text: """%PL_SCUMONLY%%LINEBREAK%Po wykonaniu zielonego manewru możesz namierzyć cel."""
        # Soute
        "Frequency Jammer":
            name: "Zakłócacz częstotliwości"
            text: """Kiedy wykonujesz akcję Zakłócanie, wybierz 1 wrogi statek, który nie ma żetonu stresu i znajduje się w Zasięgu 1 od zakłócanego statku. Wybrany statek otrzymuje 1 żeton stresu."""
        "Expanded Cargo Hold":
            ship: "Średni transportowiec GR-75"
            name: "Powiększona ładownia"
            text: """<span class="card-restriction">Tylko GR-75.</span>%LINEBREAK%Raz na rundę, kiedy masz otrzymać odkrytą kartę uszkodznia, możesz dobrać te kartę z talii uszkodzeń dziobu lub rufy."""
        "Comms Booster":
            name: "Wzmacniacz łączności"
            text: """<strong>Energia:</strong> Wydaj 1 żeton energii aby usunąć wszystkie żetony stresu z przyjaznego statku w Zasięgu 1-3, następnie przydziel do tego statku 1 żeton skupienia."""
        "Slicer Tools":
            name: "Narzędzia hakera"
            text: """<strong>Akcja:</strong> Wybierz co najmniej 1 wrogi statek w Zasięgu 1-3, na ktorym znajduje się żeton stresu. Za każdy wybrany statek możesz wydać 1 żeton energii aby sprawić, żeby dany statek otrzymał 1 uszkodzenie."""
        "Shield Projector":
            name: "Projektor osłon"
            text: """Kiedy wrogi statek stanie się podczas fazy walki, możesz wydać 3 żetony energii aby do końca fazy zmusić go do zaatakowania ciebie, jeśli to możliwe."""
        "Tibanna Gas Supplies":
            name: "Zapasy gazu Tibanna"
            text: """<strong>Energia:</strong> Możesz odrzucić tę kartę aby otrzymać 3 żetony energii."""
        "Ionization Reactor":
            name: "Reaktor jonizacyjny"
            text: """<strong>Energia:</strong> Wydaj 5 żetonów energii z tej karty i odrzuć tą kartę aby sprawić żeby każdy statek w Zasięgu 1 otrzymał 1 uszkodzneie i 1 żeton jonów."""
        "Engine Booster":
            name: "Dopalacz silnika"
            text: """Tuż przed tym jak odkryjesz swój wskaźnik manewrów, możesz wydać 1 żeton energii aby wykonać biały manewr (%STRAIGHT% 1). Nie możesz skorzystać z tej zdolności, jeśli w jej wyniku będziesz nachodzić na inny statek."""
        "Backup Shield Generator":
            name: "Zapasowy generator osłon"
            text: """Na koniec każdej rudny możesz wydać 1 żeton energii aby odzyskać 1 osłonę (nie przekraczając swojej wartości osłon)."""
        "EM Emitter":
            name: "Emiter elektro-magnetyczny"
            text: """Kiedy przyblokujesz atak, obrońca rzuca 3 dodatkowymi kośmi obrony (zamiast 1)."""
        # Hardpiont
        "Ion Cannon Battery":
            name: "Bateria działa jonowego"
            text: """<strong>Atak (energia):</strong> Aby wykonać ten atak, wydaj 2 żetony energii z tej karty. Jeżeli atak ten trafi w wybrany statek, otrzymuje on 1 krytyczne uszkodzenie oraz 1 żeton jonów. Następnie anuluj wszystkie wyniki kości."""
        "Single Turbolasers":
            name: "Pojedyńcze Turbolasery"
            text: """<strong>Atak (energia):</strong> Wydaj 2 żetony energii z tej karty aby wykonać ten atak. Obronca podwaja swoją wartość zwrotności przeciwko temu atakowi. Możesz zmienić jeden ze swoich wyników %FOCUS% na %HIT%."""
        "Quad Laser Cannons":
            name: "Poczwórne działka laserowe"
            text: """<strong>Atak (energia):</strong> Wydaj 1 żeton energii z tej karty aby wykonać ten atak. Jeśli ten atak nie trafi, możesz natychmiast wydać 1 żeton energii z tej karty aby ponownie przeprowadzić ten atak."""
        # Équipe
        "Gunnery Team":
            name: "Zespół artylerzystów"
            text: """Raz na rundę kiedy atakujesz przy pomocy daodatkowej broni, możesz wydać 1 żeton energii aby zmienić 1 ze swoich pustych wyników na %HIT%."""
        "Sensor Team":
            name: "Zespół obsługi sensorów"
            text: """Kiedy namierzasz cel, możesz namierzyć wrogi statek w Zasięgu 1-5 (zamiast Zasięgu 1-3)."""
        "Engineering Team":
            name: "Zespół techników"
            text: """Podczas fazy aktywacji, kiedy ujawnisz manewr %STRAIGHT%, otrzymujesz 1 dodatkowy żeton energii podczas kroku Otrzymywania energii."""
        # Illégal
        "Inertial Dampeners":
            name: "Tłumiki inercyjne"
            text: """Kiedy ujawniasz swój manewr, możesz odrzucić tę kartę żeby zamiast tego wykonać biały manewr [0%STOP%]. Następnie otrzymujesz 1 żeton stresu."""
        "Dead Man's Switch":
            name: "Włącznik samobójcy"
            text: """Kiedy zostajesz zniszczony, każdy statek w Zasięgu 1 otrzymuje 1 uszkodzenie."""
        "Feedback Array":
            name: "System zwrotny"
            text: """Podczas fazy walki, zamiast wykonywać jakiekolwiek ataki, możesz otrzymać 1 żeton jonów i 1 uszkodzenie aby wybrać wrogi statek w Zasięgu 1. Wybrany statek otrzymuje 1 uszkodzenie."""
        '"Hot Shot" Blaster':
            name: "Gorący strzał"
            text: """<strong>Atak:</strong> Odrzuć tę kartę, aby zaatakować 1 statek (nawet poza twoim polem rażenia)."""
        # Astromech récupéré
        "Salvaged Astromech":
            name: "Astromech z odzysku"
            text: "Kiedy otrzymujesz kartę uszkodzenia z cechą Statek, natychmiast możesz ją odrzucić (przed rozpatrzeniem efektu). %LINEBREAK%Następnie odrzuć tę kartę rozwinięcia.%LINEBREAK%."
        '"Genius"':
            name: "Geniusz"
            text: """Jeśli jesteś wyposażony w bombę, która może zostać zrzucona przed ujawnieniem twojego manewru, zamiast tego możesz ją zrzucić po tym jak wykonasz swój manewr."""
        "Unhinged Astromech":
            name: "Szalony astromech"
            text: """Możesz traktować manewry o prędkości 3 jako zielone."""
        "R4-B11":
            text: """Kiedy atakujesz namierzonego przez siebie obrońcę, możesz wydać żeton namierzonego celu aby wybrać dowolne kości obrony (nawet wszystkie). Następnie obrońca musi przerzucić wybrane przez ciebie kości."""
        "R4 Agromech":
            name: "Agromech R4"
            text: """Kiedy atakujesz, po wydaniu żetonu skupienia, możesz namierzyć obrońcę."""
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
            text: """%LARGESHIPONLY%%LINEBREAK%After defending, if you suffered a combination of 3 or more damage and critical damage during the attack, recover 1 shield (up to your shield value)."""
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
        'Construction Droid':
            text: '''%HUGESHIPONLY% %LIMITED%%LINEBREAK%When you perform a recover action, you may spend 1 energy to discard 1 facedown Damage card.'''
        'Cluster Bombs':
            text: '''After defending, you may discard this card.  If you do, each other ship at Range 1 of the defending section rolls 2 attack dice, suffering all damage (%HIT%) and critical damage (%CRIT%) rolled.'''
        "Adaptability":
            text: """<span class="card-restriction">Dual card.</span>%LINEBREAK%<strong>Side A:</strong> Increase your pilot skill value by 1.%LINEBREAK%<strong>Side B:</strong> Decrease your pilot skill value by 1."""
        "Electronic Baffle":
            text: """When you receive a stress token or an ion token, you may suffer 1 damage to discard that token."""
        "4-LOM":
            text: """%SCUMONLY%%LINEBREAK%When attacking, during the "Modify Attack Dice" step, you may receive 1 ion token to choose 1 of the defender's focus or evade tokens.  That token cannot be spent during this attack."""
        "Zuckuss":
            text: """%SCUMONLY%%LINEBREAK%When attacking, you may receive any number of stress tokens to choose an equal number of defense dice.  The defender must reroll those dice."""
        'Rage':
            text: """<strong>Action:</strong> Assign 1 focus token to your ship and receive 2 stress tokens.  Until the end of the round, when attacking, you may reroll up to 3 attack dice."""
        "Attanni Mindlink":
            text: """%SCUMONLY%%LINEBREAK%Each time you are assigned a focus or stress token, each other friendly ship with Attanni Mindlink must also be assigned the same type of token if it does not already have one."""
        "Boba Fett":
            text: """%SCUMONLY%%LINEBREAK%After performing an attack, if the defender was dealt a faceup Damage card, you may discard this card to choose and discard 1 of the defender's Upgrade cards."""
        "Dengar":
            text: """%SCUMONLY%%LINEBREAK%When attacking, you may reroll 1 attack die.  If the defender is a unique pilot, you may instead reroll up to 2 attack dice."""
        '"Gonk"':
            text: """%SCUMONLY%%LINEBREAK%<strong>Action:</strong> Place 1 shield token on this card.%LINEBREAK%<strong>Action:</strong> Remove 1 shield token from this card to recover 1 shield (up to your shield value)."""
        "R5-P8":
            text: """Once per round, after defending, you may roll 1 attack die.  On a %HIT% result, the attacker suffers 1 damage.  On a %CRIT% result, you and the attacker each suffer 1 damage."""
        'Thermal Detonators':
            text: """When you reveal your maneuver dial, you may discard this card to <strong>drop</strong> 1 thermal detonator token.%LINEBREAK%This token <strong>detonates</strong> at the end of the Activation phase.%LINEBREAK%<strong>Thermal Detonator Token:</strong> When this bomb token detonates, each ship at Range 1 of the token suffers 1 damage and receives 1 stress token.  Then discard this token."""
        "Overclocked R4":
            text: """During the Combat phase, when you spend a focus token, you may receive 1 stress token to assign 1 focus token to your ship."""
        'Systems Officer':
            text: '''%IMPERIALONLY%%LINEBREAK%After you execute a green maneuver, choose another friendly ship at Range 1.  That ship may acquire a target lock.'''
        'Tail Gunner':
            text: '''When attacking from your rear-facing auxiliary firing arc, reduce the defender's agility by 1 (to a minimum of "0").'''
        'R3 Astromech':
            text: '''Once per round, when attacking with a primary weapon, you may cancel 1 of your %FOCUS% results during the "Modify Attack Dice" step to assign 1 evade token to your ship.'''
        'Collision Detector':
            text: '''When performing a boost, barrel roll, or decloak, your ship and maneuver template can overlap obstacles.%LINEBREAK%When rolling for obstacle damage, ignore all %CRIT% results.'''
        'Sensor Cluster':
            text: '''When defending, you may spend a focus token to change 1 of your blank results to an %EVADE% result.'''
        'Fearlessness':
            text: '''%SCUMONLY%%LINEBREAK%When attacking, if you are inside the defender's firing arc at Range 1 and the defender is inside your firing arc, you may add 1 %HIT% result to your roll.'''
        'Ketsu Onyo':
            text: '''%SCUMONLY%%LINEBREAK%At the start of the End phase, you may choose 1 ship in your firing arc at Range 1-2.  That ship does not remove its tractor beam tokens.'''
        'Latts Razzi':
            text: '''%SCUMONLY%%LINEBREAK%When defending, you may remove 1 stress token from the attacker to add 1 %EVADE% result to your roll.'''
        'IG-88D':
            text: '''%SCUMONLY%%LINEBREAK%You have the pilot ability of each other friendly ship with the <em>IG-2000</em> Upgrade card (in addition to your own pilot ability).'''
        'Rigged Cargo Chute':
            text: '''%LARGESHIPONLY%%LINEBREAK%<strong>Action:</strong> Discard this card to <strong>drop</strong> one cargo token.'''
        'Seismic Torpedo':
            text: '''<strong>Action:</strong> Discard this card to choose an obstacle at Range 1-2 and inside your primary firing arc.  Each ship at Range 1 of the obstacle rolls 1 attack die and suffers any damage (%HIT%) or critical damage (%CRIT%) rolled.  Then remove the obstacle.'''
        'Black Market Slicer Tools':
            text: '''<strong>Action:</strong> Choose a stressed enemy ship at Range 1-2 and roll 1 attack die. On a (%HIT%) or (%CRIT%) result, remove 1 stress token and deal it 1 facedown Damage card.'''
        # Wave X
        'Kylo Ren':
            text: '''%IMPERIALONLY%%LINEBREAK%<strong>Action:</strong> Assign the "I'll Show You the Dark Side" Condition card to an enemy ship at Range 1-3.'''
        'Unkar Plutt':
            text: '''%SCUMONLY%%LINEBREAK%After executing a maneuver that causes you to overlap an enemy ship, you may suffer 1 damage to perform 1 free action.'''
        'A Score to Settle':
            text: '''During setup, before the "Place Forces" step, choose 1 enemy ship and deal the "A Debt to Pay" Condition card to it.%LINEBREAK%Wehn attacking a ship that has the "A Debt to Pay" Condition card, you may change 1 %FOCUS% result to a %CRIT% result.'''
        'Jyn Erso':
            text: '''%REBELONLY%%LINEBREAK%<strong>Action:</strong> Choose 1 friendly ship at Range 1-2. Assign 1 focus token to that ship for each enemy ship inside your firing arc at Range 1-3.  You cannot assign more than 3 focus tokens in this way.'''
        'Cassian Andor':
            text: '''%REBELONLY%%LINEBREAK%At the end of the Planning phase, you may choose an enemy ship at Range 1-2.  Guess aloud that ship's bearing and speed, then look at its dial.  If you are correct, you may rotate your dial to another maneuver.'''
        'Finn':
            text: '''%REBELONLY%%LINEBREAK%When attacking with a primary weapon or defending, if the enemy ship is inside your firing arc, you may add 1 blank result to your roll.'''
        'Rey':
            text: '''%REBELONLY%%LINEBREAK%At the start of the End phase, you may place 1 of your ship's focus tokens on this card.  At the start of the Combat phase, you may assign 1 of those tokens to your ship.'''
        'Burnout SLAM':
            text: '''%LARGESHIPONLY%%LINEBREAK%Your action bar gains the %SLAM% action icon.%LINEBREAK%After you perform a SLAM action, discard this card.'''
        'Primed Thrusters':
            text: '''%SMALLSHIPONLY%%LINEBREAK%Stress tokens do not prevent you from performing boost or barrel roll actions unless you have 3 or more stress tokens.'''
        'Pattern Analyzer':
            text: '''When executing a maneuver, you may resolve the "Check Pilot Stress" step after the "Perform Action" step (instead of before that step).'''
        'Snap Shot':
            text: '''After an enemy ship executes a maneuver, you may perform this attack against that ship.  <strong>Attack:</strong> Attack 1 ship.  You cannot modify your attack dice and cannot attack again this phase.'''
        'M9-G8':
            text: '''%REBELONLY%%LINEBREAK%When a ship you have locked is attacking, you may choose 1 attack die.  The attacker must reroll that die.%LINEBREAK%You can acquire target locks on other friendly ships.'''
        'EMP Device':
            text: '''During the Combat phase, instead of performing any attacks, you may discard this card to assign 2 ion tokens to each ship at Range 1.'''
        'Captain Rex':
            text: '''%REBELONLY%%LINEBREAK%After you perform an attack that does not hit, you may assign 1 focus token to your ship.'''
        'General Hux':
            text: '''%IMPERIALONLY%%LINEBREAK%<strong>Action:</strong> Choose up to 3 friendly ships at Range 1-2.  Assign 1 focus token to each and assign the "Fanatical Devotion" Condition card to 1 of them.  Then receive 1 stress token.'''
        'Operations Specialist':
            text: '''%LIMITED%%LINEBREAK%After a friendly ship at Range 1-2 performs an attack that does not hit, you may assign 1 focus token to a friendly ship at Range 1-3 of the attacker.'''
        'Targeting Synchronizer':
            text: '''When a friendly ship at Range 1-2 is attacking a ship you have locked, the friendly ship treats the "<strong>Attack (target lock):</strong> header as "<strong>Attack:</strong>."  If a game effect instructs you to spend a target lock, it may spend your target lock instead.'''
        'Hyperwave Comm Scanner':
            text: '''At the start of the "Place Forces" step, you may choose to treat your pilot skill value as "0," "6," or "12" until the end of the step.%LINEBREAK%During setup, after another friendly ship is placed at Range 1-2, you may assign 1 focus or evade token to it.'''
        'Trick Shot':
            text: '''When attacking, if the attack is obstructed, you may roll 1 additional attack die.'''
        'Hotshot Co-pilot':
            text: '''When attacking with a primary weapon, the defender must spend 1 focus token if able.%LINEBREAK%When defending, the attacker must spend 1 focus token if able.'''
        '''Scavenger Crane''':
            text: '''After a ship at Range 1-2 is destroyed, you may choose a discarded %TORPEDO%, %MISSILE%, %BOMB%, %CANNON%, %TURRET%, or Modification Upgrade card that was equipped to your ship and flip it faceup.  Then roll 1 attack die.  On a blank result, discard Scavenger Crane.'''

    modification_translations =
        "Shield Upgrade":
            name: "Ulepszenie osłon"
            text: """Zwiększ wartość swoich osłon o 1."""
        "Advanced Cloaking Device":
            name: "Zaawansowany system maskowania"
            text: """<span class="card-restriction">Tylko TIE Phantom.</span>%LINEBREAK%Po tym jak wykonasz atak, możesz wykonać darmową akcję maskowanie."""
            ship: "TIE Phantom"
        "Stealth Device":
            name: "Urządzenie maskujące"
            text: """Zwiększ wartość swojej zwrotności o 1. Jeśli zostaniesz trafiony podczas ataku, odrzuć tę kartę."""
        "Engine Upgrade":
            name : "Ulepszenie silnika"
            text: """Twój pasek rozwinięć zyskuje symbol akcji %BOOST%."""
        "Anti-Pursuit Lasers":
            name: "Lasery antypościgowe"
            text: """%PL_LARGESHIPONLY%Po tym jak wrogi statek wykona manewr, który sprawi że będzie zachodzić na ciebie, rzuć 1 kością ataku. Jeśli wypadnie %HIT% lub %CRIT%, wrogi statek otrzymuje 1 uszkodzenie."""
        "Targeting Computer":
            name: "Komputer celowniczy"
            text: """Twój pasek akcji zyskuje symbol akcji %TARGETLOCK%."""
        "Hull Upgrade":
            name: "Ulepszenie kadłuba"
            text: """Zwiększ wartość swojego kadłuba o 1."""
        "Munitions Failsafe":
            name: "Zabezpieczenie amunicji"
            text: """Kiedy atakujesz przy pomocy broni dodatkowej, która nakazuje odrzucenie karty po wykonaniu ataku, nie odrzucasz jej jeśli atak nie trafi."""
        "Stygium Particle Accelerator":
            name: "Akcelerator cząsteczek stygium"
            text: """Kiedy się demaskujesz lub wykonasz akcję maskowanie, możesz wykonać darmową akcję unik."""
        "Combat Retrofit":
            name: "Modyfikacja bojowa"
            text: """<span class="card-restriction">Tylko GR-75.</span>%LINEBREAK%Zwiększ wartość swojego kadłuba o 2 i wartość swoich osłon o 1."""
            ship: "Transport moyen GR-75"
        "B-Wing/E2":
            text: """<span class="card-restriction">Tylko B-wing.</span>%LINEBREAK%Twój pasek rozwinięć zyskuje symbol rozwinięcia %CREW%."""
        "Countermeasures":
            name: "Środki profilaktyczne"
            text: """%PL_LARGESHIPONLY%%LINEBREAK%Na początku fazy walki możesz odrzucić tę kartę, aby do końca rundy zwiększyć swoją zwrotność o 1. Następnie możesz usunąć ze swojego statku 1 wrogi żeton namierzonego celu."""
        "Experimental Interface":
            name: "Eksperymentalny interfejs"
            text: """Raz na rundę. Po tym jak wykonasz akcję możesz wykonać 1 darmową akcję z karty rozwinięcia z nagłówkiem <strong>Akcja:</strong>, w którą jesteś wyposażony. Następnie otrzymujesz 1 żeton stresu."""
        "Tactical Jammer":
            name: "Zakłócacz taktyczny"
            text: """%PL_LARGESHIPONLY%%LINEBREAK%Twój statek może przyblokowywać wrogie ataki."""
        "Autothrusters":
            name: "Autodopalacze"
            text: """Kiedy się bronisz, jeśli jesteś poza Zasięgiem 2 albo znajdujesz się poza polem rażenia atakującego, możesz zmienić 1 ze swoich pustych wyników na %EVADE%. Możesz wyposażyć swój statek w tę kartę tylko jeśli masz symbol akcji %BOOST%."""
        "Twin Ion Engine Mk. II":
            text: """You may treat all bank maneuvers (%BANKLEFT% and %BANKRIGHT%) as green maneuvers."""
        "Maneuvering Fins":
            text: """<span class="card-restriction">YV-666 only.</span>%LINEBREAK%When you reveal a turn maneuver (%TURNLEFT% or %TURNRIGHT%), you may rotate your dial to the corresponding bank maneuver (%BANKLEFT% or %BANKRIGHT%) of the same speed."""
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
        "Guidance Chips":
            text: """Once per round, when attacking with a %TORPEDO% or %MISSILE% secondary weapon, you may change 1 die result to a %HIT% result (or a %CRIT% result if your primary weapon value is "3" or higher)."""
        'Vectored Thrusters':
            text: '''%SMALLSHIPONLY%%LINEBREAK%Your action bar gains the %BARRELROLL% action icon.'''
        'Smuggling Compartment':
            text: '''<span class="card-restriction">YT-1300 and YT-2400 only.</span>%LINEBREAK%Your upgrade bar gains the %ILLICIT% upgrade icon.%LINEBREAK%You may equip 1 additional Modification upgrade that costs 3 or fewer squad points.'''
        'Gyroscopic Targeting':
            text: '''<span class="card-restriction">Lancer-class Pursuit Craft only.</span>%LINEBREAK%At the end of the Combat phase, if you executed a 3-, 4-, or 5-speed maneuver this round, you may rotate your mobile firing arc.'''
        'Captured TIE':
            text: '''<span class="card-restriction">TIE Fighter only.</span>%REBELONLY%%LINEBREAK%Enemy ships with a pilot skill value lower than yours cannot declare you as the target of an attack.  After you perform an attack or when you are the only remaining friendly ship, discard this card.'''
        'Spacetug Tractor Array':
            text: '''<span class="card-restriction">Quadjumper only.</span>%LINEBREAK%<strong>Action:</strong> Choose a ship inside your firing arc at Range 1 and assign a tractor beam token to it.  If it is a friendly ship, resolve the effect of the tractor beam token as though it were an enemy ship.'''

    title_translations =
        "Slave I":
            text: """<span class="card-restriction">Tylko Firespray-31.</span>%LINEBREAK%Twój pasek rozwinięć zyskuje symbol %TORPEDO%."""
        "Millennium Falcon":
            name: "Sokół Millenium"
            text: """<span class="card-restriction">Tylko YT-1300.</span>%LINEBREAK% Twój pasek akcji zyskuje symbol akcji %EVADE%."""
        "Moldy Crow":
            text: """<span class="card-restriction">Tylko HWK-290.</span>%LINEBREAK%Podczas fazy końcowej nie usuwaj ze swojego statku niewykorzystanych żetonów skupienia."""
        "ST-321":
            ship: "Navette de classe Lambda"
            text: """<span class="card-restriction">Navette de classe <em>Lambda</em> uniquement.</span>%LINEBREAK%Quand vous verrouillez une cible, vous pouvez verrouiller n'importe quel vaisseau ennemi situé dans la zone de jeu."""
        "Royal Guard TIE":
            ship: "TIE Interceptor"
            name: "TIE Imperialnego Gwardzisty"
            text: """<span class="card-restriction">Tylko TIE Interceptor.</span>%LINEBREAK%Możesz dołączyć do swojego statku maksymalnie 2 różne karty Modyfikacji (zamiast 1). Nie możesz dołączyć tej karty do swojego statku, jeśli wartość umiejętności pilota wynosi "4" lub mniej."""
        "Dodonna's Pride":
            name: "Duma Dodonny"
            ship: "Korweta CR90 (dziób)"
            text: """<span class="card-restriction">Tylko sekcja dziobowa CR90.</span>%LINEBREAK%Kiedy wykonujesz akcję "Koordynacja", możesz wybrać 2 przyjazne statki (zamiast 1). Statki te mogą wykonać po 1 darmowej akcji."""
        "A-Wing Test Pilot":
            name: "Pilot testowy A-winga"
            text: """<span class="card-restriction">Tylko A-wing.</span>%LINEBREAK%Twój pasek rozwinięć zyskuje symbol rozwinięcia %ELITE%. Nie możesz wyposażyć się w 2 takie same karty rozwinięcia [elite talent]. Nie możesz wyposażyć się w tę kartę, jeśli twoja wartość umiejętności pilota wynosi "1" lub mniej."""
        "Tantive IV":
            ship: "Korweta CR90 (dziób)"
            text: """<span class="card-restriction">Tylko sekcja dziobowa CR90.</span>%LINEBREAK%Twój pasek rozwinięć sekcji dziobowej zyskuje po 1 symbolu rozwinięcia %CREW% i %TEAM%."""
        "Bright Hope":
            ship: "Średni transportowiec GR-75"
            text: """<span class="card-restriction">Tylko GR-75.</span>%LINEBREAK%Żetony wsparcia przypisane do twojej sekcji dziobowej dostają 2 wyniki %EVADE% (zamiast 1)."""
        "Quantum Storm":
            ship: "Średni transportowiec GR-75"
            text: """<span class="card-restriction">Tylko GR-75.</span>%LINEBREAK%Na początku fazy końcowej, jeśli masz nie więcej niż 1 żeton energi, otrzymujesz 1 żeton energii."""
        "Dutyfree":
            ship: "Średni transportowiec GR-75"
            text: """<span class="card-restriction">Tylko GR-75.</span>%LINEBREAK%Kiedy wykonujesz akcję Zakłócenie, możesz wybrać wrogi statek w Zasięgu 1-3 (zamiast Zasięgu 1-2)."""
        "Jaina's Light":
            ship: "Korweta CR90 (dziób)"
            text: """<span class="card-restriction">Tylko sekcja dziobowa CR90.</span>%LINEBREAK%Kiedy się bronisz, raz na atak, jeśli otrzymujesz odkrytą kartę uszkodzenia, możesz ją odrzucić i dobrać nową odkrytą kartę uszkodzenia."""
        "Outrider":
            text: """<span class="card-restriction">Tylko YT-2400.</span>%LINEBREAK%Dopóki jesteś wyposażony w kartę rozwinięcia [cannon], nie możesz wykonywać ataków bronią podstawową. Przy pomocy dodatkowej broni [cannon] możesz wykonywać ataki skierowane przeciwko statkom znajdujacym się poza twoim polem rażenia. """
        "Dauntless":
            ship: "Décimateur VT-49"
            text: """<span class="card-restriction">Tylko Decimator VT-49.</span>%LINEBREAK%Po tym jak wykonasz manewr, który sprawi że będziesz nachodzić na inny statek, możesz wykonać 1 darmową akcję. Następnie otrzymujesz 1 żeton stresu."""
        "Virago":
            text: """<span class="card-restriction">Tylko StarViper.</span>%LINEBREAK%Twój pasek rozwinięć zyskuje symbole rozwinięć %SYSTEM% i %ILLICIT%. Nie możesz wyposażyć swojego statku w tę kartę jeśli wartość umiejętności twojego pilota wynosi „3” lub mniej."""
        '"Heavy Scyk" Interceptor (Cannon)':
            name: 'Interceptor typu Heavy Scyk (Działo)'
            text: """<span class="card-restriction">Tylko Interceptor M3-A.</span>%LINEBREAK%Twój pasek rozwinięć zyskuje jeden z symboli rozwinięć: %CANNON%, %TORPEDO% lub %MISSILE%."""
        '"Heavy Scyk" Interceptor (Torpedo)':
            name: 'Interceptor typu Heavy Scyk (Torpeda)'
            text: """<span class="card-restriction">Tylko Interceptor M3-A.</span>%LINEBREAK%Twój pasek rozwinięć zyskuje jeden z symboli rozwinięć: %CANNON%, %TORPEDO% lub %MISSILE%."""
        '"Heavy Scyk" Interceptor (Missile)':
            name: 'Intercepteur "Scyk Lourd" (Rakieta)'
            text: """<span class="card-restriction">Tylko Interceptor M3-A.</span>%LINEBREAK%Twój pasek rozwinięć zyskuje jeden z symboli rozwinięć: %CANNON%, %TORPEDO% lub %MISSILE%."""
        "IG-2000":
            text: """<span class="card-restriction">Tylko Aggressor.</span>%LINEBREAK%Masz zdolność pilota każdego innego przyjaznego statku z kartą ulepszenia IG-2000 (jako dodatek do swojej zdolności pilota)."""
        "BTL-A4 Y-Wing":
            text: """<span class="card-restriction">Tylko Y-wing.</span>%LINEBREAK%Nie możesz atakować statków znajdujących się poza twoim polem rażenia. Po wykonaniu ataku przy pomocy broni podstawowej, możesz natychmiast wykonać atak przy pomocy dodatkowej broni %TURRET%."""
        "Andrasta":
            text: """<span class="card-restriction">Tylko Firespray-31.</span>%LINEBREAK%Twój pasek rozwinięć zyskuje dwa symbole %BOMB%."""
        "TIE/x1":
            text: """<span class="card-restriction">Tylko TIE Advanced.</span>%LINEBREAK%Twój pasek rozwinięć zyskuje symbol rozwinięcia %SYSTEM%. %LINEBREAK%Koszt przypisanej do tego statku karty rozwinięcia %SYSTEM% jest obniżony o 4 punkty (do minimum 0)."""
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
        'Requiem':
            text: '''%GOZANTIONLY%%LINEBREAK%When you deploy a ship, treat its pilot skill value as "8" until the end of the round.'''
        'Vector':
            text: '''%GOZANTIONLY%%LINEBREAK%After you execute a maneuver, you may deploy up to 4 attached ships (instead of 2).'''
        'Suppressor':
            text: '''%GOZANTIONLY%%LINEBREAK%Once per round, after you acquire a target lock, you may remove 1 focus, evade, or blue target lock token from that ship.'''
        'Black One':
            text: '''After you perform a boost or barrel roll action, you may remove 1 enemy target lock from a friendly ship at Range 1.  You cannot equip this card if your pilot skill is "6" or lower.'''
        'Millennium Falcon (TFA)':
            text: '''After you execute a 3-speed bank maneuver (%BANKLEFT% or %BANKRIGHT%), if you are not touching another ship and you are not stressed, you may receive 1 stress token to rotate your ship 180&deg;.'''
        'Alliance Overhaul':
            text: '''<span class="card-restriction">ARC-170 only.</span>%LINEBREAK%When attacking with a primary weapon from your primary firing arc, you may roll 1 additional attack die.  When attacking from your auxiliary firing arc, you may change 1 of your %FOCUS% results to a %CRIT% result.'''
        'Special Ops Training':
            text: '''<span class="card-restriction">TIE/sf only.</span>%LINEBREAK%When attacking with a primary weapon from your primary firing arc, you may roll 1 additional attack die.  If you do not, you may perform an additional attack from your auxiliary firing arc.'''
        'Concord Dawn Protector':
            text: '''<span class="card-restriction">Protectorate Starfighter only.</span>%LINEBREAK%When defending, if you are inside the attacker's firing arc and at Range 1 and the attacker is inside your firing arc, add 1 %EVADE% result.'''
        'Shadow Caster':
            text: '''<span class="card-restriction">Lancer-class Pursuit Craft only.</span>%LINEBREAK%After you perform an attack that hits, if the defender is inside your mobile firing arc and at Range 1-2, you may assign the defender 1 tractor beam token.'''
        # Wave X
        '''Sabine's Masterpiece''':
            text: '''<span class="card-restriction">TIE Fighter only.</span>%REBELONLY%%LINEBREAK%Your upgrade bar gains the %CREW% and %ILLICIT% upgrade icons.'''
        '''Kylo Ren's Shuttle''':
            text: '''<span class="card-restriction">Upsilon-class Shuttle only.</span>%LINEBREAK%At the end of the Combat phase, choose an unstressed enemy ship at Range 1-2.  Its owner must assign a stress token to it or assign a stress token to another ship at Range 1-2 of you that that player controls.'''
        '''Pivot Wing''':
            text: '''<span class="card-restriction">U-Wing only.</span> %DUALCARD%%LINEBREAK%<strong>Side A (Attack):</strong> Increase your agility by 1.%LINEBREAK%After you execute a maneuver, you may flip this card.%LINEBREAK%<strong>Side B (Landing):</strong> When you reveal a (0 %STOP%) maneuver, you may rotate your ship 180&deg;.%LINEBREAK%After you execute a maneuver, you may flip this card.'''
        '''Adaptive Ailerons''':
            text: '''<span class="card-restriction">TIE Striker only.</span>%LINEBREAK%Immediately before you reveal your dial, if you are not stressed, you <strong>must</strong> execute a white (%BANKLEFT% 1), (%STRAIGHT% 1), or (%BANKRIGHT% 1) maneuver.'''

    condition_translations =
        '''I'll Show You the Dark Side''':
            text: '''When this card is assigned, if it is not already in play, the player who dealt it searches the Damage deck for 1 Damage card with the <strong><em>Pilot</em></strong> trait and may place it faceup on this card. Then shuffle the damage deck.%LINEBREAK%When you suffer critical damage from an attack, you are instead dealt the chosen faceup Damage card.%LINEBREAK%When there is no Damage card on this card, remove it.'''
        'Suppressive Fire':
            text: '''When attacking a ship other than "Captain Rex," roll 1 fewer attack die.%LINEBREAK% When you declare an attack targeting "Captain Rex" or when "Captain Rex" is destroyed, remove this card.%LINEBREAK%At the end of the Combat phase, if "Captain Rex" did not perform an attack this phase, remove this card.'''
        'Fanatical Devotion':
            text: '''When defending, you cannot spend focus tokens.%LINEBREAK%When attacking, if you spend a focus token to change all %FOCUS% results to %HIT% results, set aside the first %FOCUS% result that you change. The set-aside %HIT% result cannot be canceled by defense dice, but the defender may cancel %CRIT% results before it.%LINEBREAK%During the End phase, remove this card.'''
        'A Debt to Pay':
            text: '''When attacking a ship that has the "A Score to Settle" Upgrade card equipped, you may change 1 %FOCUS% result to a %CRIT% result.'''

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations, condition_translations
