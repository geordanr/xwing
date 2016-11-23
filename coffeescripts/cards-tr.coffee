exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.tr = 'Türkçe'

exportObj.translations ?= {}
# This is Turkish Traslation of (Yet Another) X-Wing Miniatures Squad Builder by ibrahimerol. 2016
exportObj.translations['Türkçe'] =
    action:
        "Barrel Roll": "Tam Dönüş"
        "Boost": "Destek"
        "Evade": "Kaçınma"
        "Focus": "Odaklanma"
        "Target Lock": "Hedefe Kilitlenme"
        "Recover": "Düzelmek"
        "Reinforce": "Takviye"
        "Jam": "Sıkışma"
        "Coordinate": "Koordinat"
        "Cloak": "Gizlenme"
    slot:
        "Astromech": "Astromekanik"
        "Bomb": "Bomba"
        "Cannon": "Top"
        "Crew": "Mürettabat"
        "Elite": "Elit"
        "Missile": "Füze"
        "System": "Sistem"
        "Torpedo": "Torpido"
        "Turret": "Taret"
        "Cargo": "Kargo"
        "Hardpoint": "Füze Tutucu"
        "Team": "Takım"
        "Illicit": "İllegal"
        "Salvaged Astromech": "Kurtarılan Astromekanik"
    sources: # needed?
        "Core": "Temel"
        "A-Wing Expansion Pack": "A-Wing Genişleme Paketi"
        "B-Wing Expansion Pack": "B-Wing Genişleme Paketi"
        "X-Wing Expansion Pack": "X-Wing Genişleme Paketi"
        "Y-Wing Expansion Pack": "Y-Wing Genişleme Paketi"
        "Millennium Falcon Expansion Pack": "Milenyum Şahini Genişleme Paketi"
        "HWK-290 Expansion Pack": "HWK-290 Genişleme Paketi"
        "TIE Fighter Expansion Pack": "TIE-Fighter Genişleme Paketi"
        "TIE Interceptor Expansion Pack": "TIE-Interceptor Genişleme Paketi"
        "TIE Bomber Expansion Pack": "TIE-Bomber Genişleme Paketi"
        "TIE Advanced Expansion Pack": "TIE-Advanced Genişleme Paketi"
        "Lambda-Class Shuttle Expansion Pack": "Lambda-class Shuttle Genişleme Paketi"
        "Slave I Expansion Pack": "Slave I Genişleme Paketi"
        "Imperial Aces Expansion Pack": "Imperial Aces Genişleme Paketi"
        "Rebel Transport Expansion Pack": "Rebel Transport Genişleme Paketi"
        "Z-95 Headhunter Expansion Pack": "Z-95-Headhunter Genişleme Paketi"
        "TIE Defender Expansion Pack": "TIE-Defender Genişleme Paketi"
        "E-Wing Expansion Pack": "E-Wing Genişleme Paketi"
        "TIE Phantom Expansion Pack": "TIE-Phantom Genişleme Paketi"
        "Tantive IV Expansion Pack": "Tantive IV Genişleme Paketi"
        "Rebel Aces Expansion Pack": "Rebel Aces Genişleme Paketi"
        "YT-2400 Freighter Expansion Pack": "YT-2400 Freighter Genişleme Paketi"
        "VT-49 Decimator Expansion Pack": "VT-49 Decimator Genişleme Paketi"
        "StarViper Expansion Pack": "StarViper Genişleme Paketi"
        "M3-A Interceptor Expansion Pack": "M3-A Interceptor Genişleme Paketi"
        "IG-2000 Expansion Pack": "IG-2000 Genişleme Paketi"
        "Most Wanted Expansion Pack": "Most Wanted Genişleme Paketi"
        "Imperial Raider Expansion Pack": "Imperial Raider Genişleme Paketi"
        "The Force Awakens Core Set": "The Force Awakens Temel Seti"
    ui:
        shipSelectorPlaceholder: "Gemi Seçiniz"
        pilotSelectorPlaceholder: "Pilot Seçiniz"
        upgradePlaceholder: (translator, language, slot) ->
            "#{translator language, 'slot', slot} Yükseltmesi Yok"
        modificationPlaceholder: "Modifikasyon Yok"
        titlePlaceholder: "Ünvan Yok"
        upgradeHeader: (translator, language, slot) ->
            "#{translator language, 'slot', slot} Yükseltmesi"
        unreleased: "Yayınlanmamış"
        epic: "Epik"
        limited: "Sınırlı"
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
        '.translate.sort-cards-by': 'Sıralama Ölçütü'
        '.xwing-card-browser option[value="name"]': 'İsim'
        '.xwing-card-browser option[value="source"]': 'Kaynak'
        '.xwing-card-browser option[value="type-by-points"]': 'Тür (Puan)'
        '.xwing-card-browser option[value="type-by-name"]': 'Тür (İsim)'
        '.xwing-card-browser .translate.select-a-card': 'Soldaki Listeden Bir Kart Seçiniz'
        # Info well
        '.info-well .info-ship td.info-header': 'Gemi'
        '.info-well .info-skill td.info-header': 'Yetenek'
        '.info-well .info-actions td.info-header': 'Aksiyon'
        '.info-well .info-upgrades td.info-header': 'Yükseltme'
        '.info-well .info-range td.info-header': 'Menzil'
        # Squadron edit buttons
        '.clear-squad' : 'Takımı Sil'
        '.save-list' : 'Kaydet'
        '.save-list-as' : 'Farklı Kaydet'
        '.delete-list' : 'Sil'
        '.backend-list-my-squads' : 'Takımı Yükle'
        '.view-as-text' : '<span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Metin Olarak</span> Baskı Önizleme'
        '.randomize' : 'Rastgele!'
        '.randomize-options' : 'Rastgele Seçenekleri'
        '.notes-container > span' : 'Takım Notları'
        # Print/View modal
        '.bbcode-list' : 'BBCode kopyalayın ve forum mesajına yapıştırın.<textarea></textarea><button class="btn btn-copy">Kopyala</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Kopyala</button>'
        '.vertical-space-checkbox' : """Hasar/Yükseltme kartları için yer ekleyin <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Renkli yazdır <input type="checkbox" class="toggle-color-print" />"""
        '.print-list' : '<i class="fa fa-print"></i>&nbsp;Yazdır'
        # Randomizer options
        '.do-randomize' : 'Rastgele!'
        # Top tab bar
        '#empireTab' : 'Galaktik İmparatorluk'
        '#rebelTab' : 'Asi İttifakı'
        '#scumTab' : 'Ayak Takımı'
        '#browserTab' : 'Kart Arayıcı'
        '#aboutTab' : 'Hakkında'
    singular:
        'pilots': 'Pilot'
        'modifications': 'Мodifikasyon'
        'titles': 'Başlık'
    types:
        'Pilot': 'Pilot'
        'Modification': 'Modifikasyon'
        'Title': 'Başlık'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders['Türkçe'] = () ->
    exportObj.cardLanguage = 'Türkçe'

    # Assumes cards-common has been loaded
    basic_cards = exportObj.basicCardData()
    exportObj.canonicalizeShipNames basic_cards

    exportObj.ships = basic_cards.ships

    pilot_translations =
        "Wedge Antilles":
            text: """Saldırırken savunanın çeviklik değerini 1 düşürünüz (minimum 0)."""
        "Garven Dreis":
            text: """Bir Odaklanma (Focus) fişini kullandıktan sonra bunu 1-2 menzil içindeki herhangi bir dost gemiye yerleştirebilirsiniz (kaldırmak yerine)."""
        "Biggs Darklighter":
            text: """Eğer saldırgan sizi hedef alabiliyorsa 1 menzildeki diğer dost gemileri hedef alamaz."""
        "Luke Skywalker":
            text: """Savunurken %FOCUS% fişlerinizden birini %EVADE% fişiyle değiştirebilirsiniz"""
        '"Dutch" Vander':
            text: """Bir Hedefe Kilitlenme (Target Lock) kazandıktan sonra 1-2 menzilde başka bir dost gemi seçiniz. Seçilen gemi anında Hedefe Kilitlenme kazanacaktır."""
        "Horton Salm":
            text: """2-3 menzile saldırırken boş gelen zarlardan birini tekrar atınız."""
        '"Winged Gundark"':
            text: """1 menzile saldırırken %HIT% sonuçlardan birini %CRIT% sonuca çevirebilirsiniz."""
        '"Night Beast"':
            text: """Bir yeşil manevradan sonra ücretsiz bir Odaklanma (Focus) aksiyonu yapabilirsin."""
        '"Backstabber"':
            text: """Savunanın ateş yayının dışından saldırıyorsanız bir tane ek saldırı zarı atınız."""
        '"Dark Curse"':
            text: """Savunurken size saldıran gemiler Odaklanma (Focus) fişi kullanamaz veya saldırı zarını tekrar atamaz."""
        '"Mauler Mithel"':
            text: """1 menzile saldırırken bir tane fazladan saldırı zar atınız."""
        '"Howlrunner"':
            text: """1 menzildeki başka bir dost gemi birincil silahıyla ateş ederken bir saldırı zarını tekrar atabilir."""
        "Maarek Stele":
            text: """Eğer saldırınız savunana açık bir Hasar kartı veriyorsa, bunun yerine 3 Hasar kartı çekiniz, 1 tane vermek için seçiniz ve diğerlerini kaldırınız."""
        "Darth Vader":
            text: """ "Aksiyon Yapma" adımında 2 aksiyon yapabilirsiniz."""
        "\"Fel's Wrath\"":
            text: """Size verilen Hasar kartları sizin Gövde (Hull) değerinize eşit veya aşıyorsa Savaş safhasının sonuna kadar yok edilmezsiniz."""
        "Turr Phennir":
            text: """Bir saldırı yaptıktan sonra ücretsiz bir Destek (Boost) veya Tam Dönüş (Barrel Roll) yapabilirsiniz."""
        "Soontir Fel":
            text: """Bir Stres fişi aldığınızda 1 Odaklanma (Focus) fişini geminize atayabilirsiniz."""
        "Tycho Celchu":
            text: """Stres fişiniz olsa bile aksiyon gerçekleştirebilirsiniz."""
        "Arvel Crynyd":
            text: """Size temas halindeki bir düşman gemisini saldırınızın hedefi olarak ateş yayı içinde ilan edebilirsiniz."""
        "Chewbacca":
            text: """Eğer açık bir Hasar kartıyla karşılaşırsan onu anında kapat (yeteneğini uygulamadan)."""
        "Lando Calrissian":
            text: """Yeşil bir manevra yaptıktan sonra 1 menzilde başka bir dost gemi seçiniz. Bu gemi aksiyon barında gösterilen 1 ücretsiz aksiyonu gerçekleştirebilir."""
        "Han Solo":
            text: """Saldırırken tüm zarlarınızı tekrar atabilirsiniz. Eğer böyle yapmayı seçerseniz mümkün olan tüm zarlarınızı atmalısınız."""
        "Kath Scarlet":
            text: """Saldırırken, savunan 1 Stres fişi alır, eğer onu iptal ederse en az bir %CRIT% ile sonuçlanır."""
        "Boba Fett":
            text: """Eğer bir kenar manevrası yaparsanız (%BANKLEFT% veya %BANKRIGHT%), kadranınızı aynı hızdaki diğer kenar manevrasına çevirebilirsiniz."""
        "Krassis Trelix":
            text: """İkincil bir silahla saldırırken 1 Saldırı zarını tekrar atabilirsiniz."""
        "Ten Numb":
            text: """Saldırırken, %CRIT% sonuçlarınızdan biri savunma zarı ile iptal edilemez."""
        "Ibtisam":
            text: """Saldırırken veya savunurken en az bir Stres fişiniz varsa zarlarınızdan birini tekrar atabilirsiniz."""
        "Roark Garnet":
            text: '''Savaş fazının başında 1-3 menzilde başka bir dost gemi seçiniz. Bu fazın sonuna kadar bu geminin pilotunun yetenek değerini "12" sayın'''
        "Kyle Katarn":
            text: """Savaş fazının başında 1-3 menzilde başka bir dost gemiye Odaklanma (Focus) fişlerinizden birini verebilirsiniz."""
        "Jan Ors":
            text: """1-3 menzildeki başka bir dost gemi saldırı yaparken eğer Stres fişiniz yoksa, bu geminin ek bir saldırı zarı atması için bir Stres fişi alabilirsiniz."""
        "Captain Jonus":
            text: """Başka bir dost gemi, 1 menzile ikincil silahla saldırırken en fazla iki saldırı zarını tekrar atabilir."""
        "Major Rhymer":
            text: """Bir ikincil silahla saldırırken, silah menzilini 1-3 menzili içinde olacak şekilde 1 yükseltebilirsiniz veya 1 düşürebilirsiniz"""
        "Captain Kagi":
            text: """Bir düşman gemisi Hedefe Kilitlenme (Target Lock) hakkına sahip olursa, mümkünse sizin geminize kilitlenmek zorundadır."""
        "Colonel Jendon":
            text: """Savaş fazının başında Mavi Hedefe Kilitlenme (Target Lock) fişlerinizden birini bir menzildeki Mavi Hedefe Kilitlenme fişi olmayan başka bir dost gemisine atayabilirsiniz."""
        "Captain Yorr":
            text: """1-2 menzilde bir diğer dost gemi stres fişi alırken eğer sizin 2 veya daha az stres fişiniz varsa, onun yerine bu fişi alabilirsiniz."""
        "Lieutenant Lorrir":
            text: """Bir Tam Dönüş (Barrel Roll)aksiyonu yaparken, (%STRAIGHT% 1) şablonu yerine (%BANKLEFT% 1) veya (%BANKRIGHT% 1) şablonu kullanmak için 1 stres fişi alabilirsiniz."""
        "Tetran Cowall":
            text: """Bir %UTURN% manevrası sergilerken, bu manevranın hızını "1," "3," veya "5" sayabilirsiniz."""
        "Kir Kanos":
            text: """2-3 menzile saldırırken, 1 kaçınma (evade) fişini zarınıza 1 %HIT% sonucu eklemek için kullanabilirsiniz."""
        "Carnor Jax":
            text: """1 menzildeki düşman gemileri odaklanma (focus) veya kaçınma (evade) aksiyonlarını yapamaz ve odaklanma veya kaçınma fişlerini kullanamaz."""
        "Lieutenant Blount":
            text: """Saldırırken, savunan herhangi bir hasar almasa bile sizin saldırınızdan isabet alır."""
        "Airen Cracken":
            text: """Bir saldırı gerçekleştirdikten sonra, 1 menzilde başka bir dost gemi seçebilirsiniz. Bu gemi fazladan 1 aksiyon gerçekleştirebilir."""
        "Colonel Vessery":
            text: """Saldırırken, saldırı zarını attıktan hemen sonra, eğer savunan bir kırmızı hedefe kilitlenme fişine (target lock) halihazırda sahipse ona bir hedefe kilitlenme fişi atayabilirsiniz."""
        "Rexler Brath":
            text: """Savunana en az bir hasar kartı veren bir saldırı gerçekleştirdikten sonra, bu kartları açık hale çevirmek için bir odaklanma (focus) fişi harcayabilirsiniz."""
        "Etahn A'baht":
            text: """Ateş yayınız içinde 1-3 menzilde bir düşman gemisi savunurken, saldıran %HIT% sonuçlarından birini %CRIT% sonucu ile değiştirebilir."""
        "Corran Horn":
            text: """Son fazının başlangıcında bir saldırı gerçekleştirebilirsiniz. Bir sonraki rauntta saldırı yapamazsınız."""
        '"Echo"':
            text: """Tekrar görünür olduğunuzda, (%STRAIGHT% 2) şablonu yerine (%BANKLEFT% 2) veya (%BANKRIGHT% 2) şablonu kullanmak zorundasınız."""
        '"Whisper"':
            text: """İsabetli bir saldırı yaptıktan sonra, geminize 1 odaklanma (focus) fişi verebilirsiniz."""
        "Wes Janson":
            text: """Bir saldırı yaptıktan sonra, savunandan 1 Odaklanma (Focus), Kaçınma (Evade) veya Mavi Hedefe Kilitlenme (Target Lock) fişi kaldırabilirsiniz."""
        "Jek Porkins":
            text: """Bir stres fişi aldığınızda, bunu kaldırabilir ve 1 saldırı zarı atabilirsiniz.  %HIT% sonucunda bu gemiye 1 kapalı Hasar kartı veriniz."""
        '"Hobbie" Klivian':
            text: """Bir Hedefe Kilitlenme (Target Lock) aldığınızda veya harcadığınızda geminizden 1 Stres fişi kaldırabilirsiniz."""
        "Tarn Mison":
            text: """Bir düşman gemisi sizi bir saldırının hedefi olarak ilan ederse, bu gemiye bir Hedefe Kilitlenme (Target Lock) yapabilirsiniz."""
        "Jake Farrell":
            text: """Bir Odaklanma (Focus) aksiyonu gerçekleştirdikten veya Odaklanma fişi atandıktan sonra, bir ücretsiz Destek (Boost) veya Tam Dönüş (Barrel Rool) aksiyonu gerçekleştirebilirsiniz."""
        "Gemmer Sojan":
            text: """En az 1 düşman gemisinin 1 menzilindeyken Çeviklik (Agility) değerinizi 1 arttırın."""
        "Keyan Farlander":
            text: """Saldırırken tüm %FOCUS% sonuçlarınızı %HIT% sonuçlarına çevirmek için 1 stres fişi alabilirsiniz."""
        "Nera Dantels":
            text: """%TORPEDO% ikincil silah saldırılarınızı ateş yayınız dışındaki düşman gemilere gerçekleştirebilirsiniz."""
        "CR90 Corvette (Fore)":
            text: """Birincil silahınızla saldırırken 1 fazladan saldırı zarı atmak için 1 enerji harcayabilirsiniz."""
        "Dash Rendar":
            text: """Aktivasyon safhasında ve aksiyon gerçekleştirirken engelleri yok sayabilirsiniz."""
        '"Leebo"':
            text: """Bir açık hasar kartı aldığınızda 1 tane daha hasar kartı çekiniz. Uygulamak için 1 tanesini seçiniz ve diğerini kaldırınız."""
        "Eaden Vrill":
            text: """Stresli bir gemiye birincil silahınızla saldırı gerçekleştirirken fazladan bir saldırı zarı atınız."""
        "Rear Admiral Chiraneau":
            text: """1-2 menzile saldırırken 1 %FOCUS% sonucunuzu %CRIT% sonucuna çevirebilirsiniz."""
        "Commander Kenkirk":
            text: """Kalkanınız (Shield) yoksa ve en az 1 Hasar kartı aldıysanız çeviklik değerinizi 1 arttırınız."""
        "Captain Oicunn":
            text: """Bir manevra gerçekleştirdikten sonra temas ettiğiniz her düşman gemisi 1 hasar alır."""
        "Prince Xizor":
            text: """Savunurken, 1 menzildeki bir dost gemi sizin yerinize engellenemez %HIT% veya %CRIT%'e maruz kalır."""
        "Guri":
            text: """Savaş safhasının başında bir düşman gemisinin 1 menzilindeyseniz geminize 1 odaklanma (fokus) fişi atayabilirsiniz."""
        "Serissu":
            text: """1 menzildeki bir dost gemi savunurken, 1 savunma zarını tekrar atabilir."""
        "Laetin A'shera":
            text: """Bir saldırıya karşı savunduktan sonra eğer saldırı vuramamışsa, geminize 1 Kaçınma (evade) fişi atayabilirsiniz."""
        "IG-88A":
            text: """Savunanı yok eden bir saldırı yaptıktan sonra 1 kalkan (shield) geri kazanırsınız."""
        "IG-88B":
            text: """Vurmayan bir saldırıdan sonra, donanılmış bir %CANNON% ikincil silahla her turda bir defaya mahsus olmak üzere bir saldırı yapabilirsiniz."""
        "IG-88C":
            text: """Bir destek (boost) aksiyonu gerçekleştirdikten sonra fazladan bir kaçınma (evade) aksiyonu gerçekleştirebilirsiniz."""
        "IG-88D":
            text: """Karşılık gelen (%TURNLEFT% 3) veya (%TURNRIGHT% 3) şablonu ile (%SLOOPLEFT% 3) veya (%SLOOPRIGHT% 3) manevrası gerçekleştirebilirsiniz."""
        "Boba Fett (Scum)":
            text: """Saldırırken veya savunurken, 1 menzildeki her düşman gemisi için zarlarınızdan birini tekrar atabilirsiniz."""
        "Kath Scarlet (Scum)":
            text: """Ek ateş yayınızdaki bir gemiye saldırırken fazladan bir saldırı zarı atınız."""
        "Emon Azzameen":
            text: """Bomba bırakırken [%STRAIGHT% 1] şablonu yerine [%TURNLEFT% 3], [%STRAIGHT% 3], veya [%TURNRIGHT% 3] şablonu kullanabilirsiniz."""
        "Kavil":
            text: """Ateş yayı dışında bir gemiye saldırırken fazladan 1 saldırı zarı atınız."""
        "Drea Renthal":
            text: """Bir Hedefe Kilitlenme (Target Lock) harcadıktan sonra bir Hedefe Kilitlenme kazanmak için 1 stres fişi alabilirsiniz."""
        "Dace Bonearm":
            text: """1-3 menzildeki bir düşman gemisi en az 1 iyon fişi aldığında stresli değilseniz bu geminin 1 hasar almasına sebep olmak için 1 stres fişi alabilirsiniz."""
        "Palob Godalhi":
            text: """Savaş safhasının başında 1-2 menzildeki bir düşman gemisinden 1 %FOCUS% veya %EVADE% fişini kendinize atamak için kaldırabilirsiniz."""
        "Torkil Mux":
            text: """Aktivasyon safhasının başında 1-2 menzilde bir düşman gemisi seçiniz. Savaş safhasının sonuna kadar bu geminin pilot yetenek değerini "0" olarak ele alınız."""
        "N'Dru Suhlak":
            text: """Saldırırken 1-2 menzilde başka bir dost gemi yoksa fazladan 1 saldırı zarı atınız."""
        "Kaa'To Leeachos":
            text: """Savaş safhasının başında 1-2 menzildeki bir dost gemiden 1 %FOCUS% veya %EVADE% fişini kaldırıp kendinize atayabilirsiniz."""
        "Commander Alozen":
            text: """Savaş safhasının başında 1 menzildeki bir düşman gemisine Hedefe Kilitlenme (Target Lock) atayabilirsiniz."""
        "Raider-class Corvette (Fore)":
            text: """Her turda bir defa, birincil silah saldırısı gerçekleştirdikten sonra başka bir birincil silah saldırısı gerçekleştirmek için 2 enerji harcayabilirsiniz."""
        "Juno Eclipse":
            text: """Manevranızı açtığınızda bunun hızını 1 arttırabilir veya 1 azaltabilirsiniz (en az 1 olacak şekilde)."""
        "Zertik Strom":
            text: """1 menzildeki düşman gemileri saldırırken menzil savaş bonusunu ekleyemezler."""
        "Lieutenant Colzet":
            text: """Son safhanın başında, düşman gemisine atamış olduğunuz bir Hedefe Kilitlenme (Target Lock) kartını ona atanmış bir kapalı hasar kartını açmak için harcayabilirsiniz."""
        "Latts Razzi":
            text: """Bir dost gemi bir saldırı ilan ettiğinde savunana atamış olduğunuz bir Hedefe Kilitlenme (Target Lock) kartını onun çevikliğini (agility) 1 düşürmek için harcayabilirsiniz."""
        "Graz the Hunter":
            text: """Savunurken, eğer saldıran sizin ateş yayınızın içindeyse fazladan 1 savunma zarı atınız."""
        "Esege Tuketu":
            text: """1-2 menzildeki diğer bir dost gemisi saldırırken sizin %FOCUS% fişleriniz kendininmiş gibi davranabilir."""
        '"Redline"':
            text: """Aynı gemide 2 tane Hedefe Kilitlenme (target lock) muhafaza edebilirsiniz. Bu gemide bir Hedefe Kilitlenme elde ettiğinizde bir ikinci kilitlenme de elde edebilirsiniz."""
        '"Deathrain"':
            text: """Bir bomba bırakırken geminizin ön kılavuzlarını kullanabilirsiniz. Bir bomba bıraktıktan sonra bir ücretsiz Tam Dönüş (barrel roll) gerçekleştirebilirsiniz."""
        "Moralo Eval":
            text: """Yan ateş yayınız içindeki gemilere %CANNON% ikincil saldırısı gerçekleştirebilirsiniz."""
        'Gozanti-class Cruiser':
            text: """Bir manevra gerçekleştirdikten sonra 2 taneye kadar bağlı gemiyi konuşlandırabilirsiniz."""
        '"Scourge"':
            text: """1 veya daha fazla hasar kartına sahip bir savunana saldırırken fazladan 1 saldırı zarı atınız."""
        "The Inquisitor":
            text: """2-3 menzile birincil silahınızla saldırırken bu saldırının menzili 1 gibi davranınız."""
        "Zuckuss":
            text: """Saldırırken fazladan 1 saldırı zarı atabilirsiniz. Eğer yaparsanız savunan fazladan 1 savunma zarı atar."""
        "Dengar":
            text: """Savunduktan sonra her turda bir defa, eğer saldıran sizin ateş yayınızın içindeyse, bu gemiye karşı bir saldırı gerçekleştirebilirsiniz."""
        # T-70
        "Poe Dameron":
            text: """Saldırırken veya savunurken eğer odaklanma (focus) fişiniz varsa, %FOCUS% sonuçlarınızdan birini %HIT% veya %EVADE% sonucuyla değiştirebilirsiniz."""
        '"Blue Ace"':
            text: """Bir destek (boost) aksiyonu gerçekleştirince, (%TURNLEFT% 1) veya (%TURNRIGHT% 1) şablonu kullanabilirsiniz."""
        # TIE/fo
        '"Omega Ace"':
            text: """Saldırırken, tüm sonuçlarınızı  %CRIT%  sonucu ile değiştirmek için bir odaklanma (focus) ve savunanda sahip olduğunuz hedefe kilitlenme (target lock) fişlerini harcayabilirsiniz."""
        '"Epsilon Leader"':
            text: """Savaş safhasının başlangıcında 1 menzildeki tüm dost gemilerden 1 stres fişi kaldırınız."""
        '"Zeta Ace"':
            text: """Bir tam dönüş (barrel roll) gerçekleştirdiğinizde (%STRAIGHT% 1) şablonu yerine (%STRAIGHT% 2) şablonu kullanabilirsiniz."""
        '"Red Ace"':
            text: '''Her turda ilk defa geminizden bir kalkan (shield) fişi kaldırdığınızda geminize 1 kaçınma (evade) fişi atayınız.'''
        '"Omega Leader"':
            text: '''Kilitlendiğiniz düşman gemileri size saldırırken veya sizin atağınızı savunurken hiçbir zarını değiştiremez.'''
        'Hera Syndulla':
            text: '''Bir yeşil veya bir kırmızı manevra açıkladığınızda, kadranınızı aynı zorlukta başka bir manevraya döndürebilirsiniz.'''
        '"Youngster"':
            text: """1-3 menzildeki dost TIE fighter'lar sizin eklenmiş %ELITE% geliştirme kartınızdaki aksiyonu gerçekleştirebilir."""
        '"Wampa"':
            text: """Saldırırken tüm zar sonuçlarını iptal edebilirsiniz. Eğer bir %CRIT% sonucunu iptal ederseniz savunana 1 kapalı Hasar kartı uygulayınız."""
        '"Chaser"':
            text: """1 menzildeki başka dost gemi odaklanma (focus) fişi harcayınca kendi geminize bir odaklanma fişi adayınız.."""
        'Ezra Bridger':
            text: """Savunurken, eğer stresliyseniz 2 taneye kadar %FOCUS% sonucunuzu %EVADE% sonucuna çevirebilirsiniz."""
        '"Zeta Leader"':
            text: '''Saldırırken, eğer stresli değilseniz fazladan 1 saldırı zarı için 1 stres fişi alabilirsiniz.'''
        '"Epsilon Ace"':
            text: '''Herhangi bir Hasar kartınız yoksa, pilot yetenek değerini "12" gibi davranınız'''
        "Kanan Jarrus":
            text: """1-2 menzildeki bir düşman gemisine saldırırken bir odaklanama (focus) fişi harcayabilirsiniz. Eğer böyle yaparsanız saldıran 1 eksik saldırı zarı atar."""
        '"Chopper"':
            text: """Savaş safhasının başlangıcında temas ettiğiniz her düşman gemisi 1 stres fişi alır."""
        'Hera Syndulla (Attack Shuttle)':
            text: """Bir yeşil veya bir kırmızı manevra açıkladığınızda, kadranınızı aynı zorlukta başka bir manevraya döndürebilirsiniz."""
        'Sabine Wren':
            text: """Manevranızı açıklamadan hemen önce bir ücretsiz destek (boost) veya bir tam dönüş (barrel roll) aksiyonu gerçekleştirebilirsiniz."""
        '"Zeb" Orrelios':
            text: '''Savunurken, %CRIT% sonuçlarınızı %HIT% sonuçlarınızdan önce iptal edebilirsiniz.'''
        'Tomax Bren':
            text: '''Her turda bir defa %ELITE% geliştirme kartınızı kapattıktan sonra bu kartınızı açabilirsiniz.'''
        'Ello Asty':
            text: '''Stresli değilken, %TROLLLEFT% ve %TROLLRIGHT% manevralarınızı beyaz manevralar olarak kabul edebilirsiniz.'''
        "Valen Rudor":
            text: """Savunduktan sonra ücretsiz bir aksiyon gerçekleştirebilirsiniz."""
        "4-LOM":
            text: """Son safhanın başlangıcında stres fişlerinizden birini 1 menzildeki başka bir gemiye atayabilirsiniz."""
        "Tel Trevura":
            text: """İlk defa imha edilecekken bunu yerine kalan herhangi hasar kartını iptal edin, tüm hasar kartlarını kaldırın ve bu gemiye 4 kapalı hasar kartı uygulayınız."""
        "Manaroo":
            text: """Savaş safhasının başlangıcında, size atanmış tüm odaklanma (focus), kaçınma (evade) ve hedefe kilitlenme (target lock) fişlerinibaşka bir dost gemiye atayabilirsiniz."""
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
        "Rey":
            text: """When attacking or defending, if the enemy ship is inside of your firing arc, you may reroll up to 2 of your blank results."""
        'Han Solo (TFA)':
            text: '''When you are placed during setup, you can be placed anywhere in the play area beyond Range 3 of enemy ships.'''
        'Chewbacca (TFA)':
            text: '''After another friendly ship at Range 1-3 is destroyed (but has not fled the battlefield), you may perform an attack.'''
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
        "Ion Cannon Turret":
            text: """<strong>Saldırı:</strong> Bir gemiye saldırın (ateş yayınızın dışında bir gemi olsa bile).%LINEBREAK%Eğer bu saldırı hedef gemiyi vurursa, gemi 1 hasara uğrar ve 1 iyon fişi alır. Sonrasında tüm zar sonuçlarını iptal ediniz."""
        "Proton Torpedoes":
            text: """<strong>Saldırı (Hedefe Kilitlenme):</strong>Bu saldırıyı gerçekleştirebilmek için hedefe kilitlenmenizi (target lock) harcayınız ve bu kartı kapatınız.%LINEBREAK% %FOCUS% sonuçlarınızdan birini %CRIT% sonucuyla değiştirebilirsiniz."""
        "R2 Astromech":
            text: """Tüm 1- ve 2- hızındaki manevralarınızı yeşil manevralar olarak kabul edebilirsiniz."""
        "R2-D2":
            text: """Yeşil bir manevra gerçekleştirdikten sonra 1 kalkan (shield) geri kazanın (sizin kalkan değerinize kadar)."""
        "R2-F2":
            text: """<strong>Aksiyon:</strong> Bu oyun yurunun sonuna kadar çeviklik (agility) değerinizi 1 arttırınız."""
        "R5-D8":
            text: """<strong>Aksiyon:</strong>1 savunma zarı atınız. %LINEBREAK%В Bir %EVADE% veya %FOCUS% sonucunda kapalı Hasar kartlarından birini kaldırınız."""
        "R5-K6":
            text: """Hedefe kilitlenme (target lock) fişi harcadıktan sonra bir savunma zarı atınız.%LINEBREAK%В %EVADE% sonucunda anında aynı gemiye bir hedefe kilitlenme ekleyiniz. Bu hedefe kilitlenmeyi bu saldırı sırasında harcayamazsınız."""
        "R5 Astromech":
            text: """Son safhada geminizdeki açık Hasar kartlarınızdan birini seçebilir ve onu kapatabilirsiniz."""
        "Determination":
            text: """Pilot özelliği ile açık bir hasar kartına maruz kalırsanız etkisini uygulamadan onu kapatınız."""
        "Swarm Tactics":
            text: """Savaş safhasının başlangıcında bir dost gemi seçebilirsiniz. %LINEBREAK%Bu safhanın sonuna kadar seçilen geminin pilot yeteneğini sizin pilot yeteğeneğinize eşitmiş gibi sayınız."""
        "Squad Leader":
            text: """<strong>Aksiyon:</strong> 1-2 menzilde sizden düşük pilot yeteneğinde bir gemi seçiniz.<br/>Seçilen gemi anında ücretsiz bir aksiyon gerçekleştirir."""
        "Expert Handling":
            text: """<strong>Aksiyon:</strong> Ücretsiz bir Tam Dönüş (barrel roll) aksiyonu gerçekleştiriniz. Eğer %BARRELROLL% ikonunuz yoksa 1 stres fişi alınız.%LINEBREAK%Bundan sonra geminizden bir düşman hedefe kilitlenme kaldırabilirsiniz."""
        "Marksmanship":
            text: """<strong>Aksiyon:</strong> Вu tur saldırırken %FOCUS% sonuçlarınızdan birini %CRIT% sonucuyla, tüm diğer %FOCUS% sonuçlarınızı %HIT% sonuçlarıyla değiştirebilirsiniz."""
        "Concussion Missiles":
            text: """<strong>Saldırı (Hedefe Kilitlenme): </strong> Bu saldırıyı gerçekleştirmek için hedefe kilitlenmenizi (target lock) harcayınız ve bu kartı kapatınız. %LINEBREAK%Вoş sonuçlarınızdan birini %HIT% sonucuna değiştirebilirsiniz."""
        "Cluster Missiles":
            text: """<strong>Saldırı (Hedefe Kilitlenme): </strong> Bu saldırıyı iki defa gerçekleştirmek için hedefe kilitlenmenizi (target lock) harcayınız ve bu kartı kapatınız.."""
        "Daredevil":
            text: """<strong>Aksiyon: </strong>Bir beyaz (%TURNLEFT% 1) veya (%TURNRIGHT% 1) manevrası gerçekleştiriniz, sonrasında 1 stres fişi alınız. %LINEBREAK%Eğer %BOOST% aksiyonu ikonunuz yoksa 2 saldırı zarı atınız, gelen her hasar %HIT% ve kritik hasar %CRIT% zarına maruz kalınız."""
        "Elusiveness":
            text: """Savunurken 1 saldırı zarı seçmek için 1 stres fişi alabilirsiniz. Saldıran bu zarı tekrar atmak zorundadır. %LINEBREAK%En az 1 stres fişiniz varsa bu yeteneği kullanamazsınız."""
        "Homing Missiles":
            text: """<strong>Saldırı (Hedefe Kilitlenme): </strong>Bu saldırıyı gerçekleştirmek için bu kartı kapatınız.%LINEBREAK%Savunan kaçınma (evade) fişlerini bu saldırı sırasında kullanamaz."""
        "Push the Limit":
            text: """Her turda bir defa, bir aksiyon yaptıktan sonra, aksiyon barınızda gösterilen 1 ücretsiz aksiyon yapabilirsiniz.%LINEBREAK%Sonrasında 1 stres fişi alınız."""
        "Deadeye":
            text: """<strong>Saldırı [Hedefe Kilitlenme]:</strong> başlığını <strong>Saldırı [Odaklanma]:</strong> olarak sayabilirsiniz<br/> Bir saldırı size bir hedefe kilitlenme harcamanız talimatını veriyorsa, bunu yerine bir odaklanma (focus) fişi harcayabilirsiniz."""
        "Expose":
            text: """<strong>Aksiyon: </strong>Turun sonuna kadar, birincil silahınızın değerini 1 arttırınız ve çeviklik değerinizi 1 düşürünüz."""
        "Gunner":
            text: """İsabet etmeyen bir saldırı gerçekleştirdikten sonra, anında bir birincil silah saldırısı yapabilirsiniz. Bu turda başka bir saldırı yapamazsınız."""
        "Ion Cannon":
            text: """<strong>Saldırı: </strong>Bir gemiye saldırın. %LINEBREAK%Eğer bu saldırı isabet ederse, savunan 1 hasara maruz kalır ve 1 iyon fişi alır. Sonra tüm zar sonuçlarını iptal ediniz."""
        "Heavy Laser Cannon":
            text: """<strong>Saldırı: </strong>Bir gemiye saldırın. %LINEBREAK% Saldırı zarını attıktan sonra anında tüm %CRIT% sonuçlarınızı %HIT% sonuçlarına çeviriniz."""
        "Seismic Charges":
            text: """Manevra kadranınızı açtığınızda bu kartı kapatarak 1 sismik şarj fişi bırakabilirsiniz. %LINEBREAK%Bu fiş aktivasyon safhasının sonunda patlar.%LINEBREAK%<strong>Sismik şarj fişi:</strong> Bu bomba fişi patladığında fişin 1 menzilindeki her gemi 1 hasar alır. Sonrasında bu fişi kaldırınız."""
        "Mercenary Copilot":
            text: """3 menzile saldırırken %HIT% sonuçlarınızdan birini %CRIT% sonucuna çevirebilirsiniz."""
        "Assault Missiles":
            text: """<strong>Saldırı (Hedefe Kilitlenme): </strong> Bu saldırıyı gerçekleştirmek için Hedefe kilitlenmenizi harcayınız ve bu kartı kapatınız.%LINEBREAK% Eğer bu saldırı isabetliyse, savunanın 1 menzilindeki diğer tüm gemiler 1 hasar alır."""
        "Veteran Instincts":
            text: """Pilot yetenek değerinizi 2 arttırınız."""
        "Proximity Mines":
            text: """<strong>Aksiyon:</strong> Bir tane yakınlık mayını fişi <strong>bırakmak</strong> için bu kartı kaldırınız.%LINEBREAK%Bir geminin tabanı veya manevra şablonu bu fişin üzerine gelirse bu fiş <strong>patlar</strong>. %LINEBREAK%<strong>Yakınlık mayını fişi:</strong>Bu bomba patladığında tabanı veya manevra şablonu bu fişin üzerine gelen gemi 3 saldırı zarı atar, gelen %HIT% ve %CRIT% sonuçlarının hepsine maruz kalır. Sonrasında bu fişi kaldırınız."""
        "Weapons Engineer":
            text: """2 tane hedefe kilitlenme kullanabilirsiniz (düşman gemisi başına 1 tane).<br /><br />Hedefe kilitlenme aldığınızda 2 farklı gemiye kilitlenebilirsiniz."""
        "Draw Their Fire":
            text: """1 menzilde bir dost gemi bir saldırıda isabet alırsa, iptal olmayan %CRIT% hasarlardan birine bu gemi yerine siz maruz kalırsınız."""
        "Luke Skywalker":
            text: """%REBELONLY%%LINEBREAK%İsabet almayan bir saldırı yaptıktan sonra birincil silah saldırısı gerçekleştirebilirsiniz. Bir %FOCUS% sonucunuzu %HIT% sonucuna çevirebilirsiniz. Bu tur başak bir saldırı gerçekleştiremezsiniz."""
        "Nien Nunb":
            text: """%REBELONLY%%LINEBREAK%Tüm %STRAIGHT% manevralarınızı yeşil manevra olarak sayabilirsiniz."""
        "Chewbacca":
            text: """%REBELONLY%%LINEBREAK%Bir hasar kartına maruz kalırsanız, o kartı hemen kaldırıp 1 kalkan (shield) geri kazanabilirsiniz.%LINEBREAK%Sonrasında bu geliştirme kartını kaldırınız."""
        "Advanced Proton Torpedoes":
            text: """<strong>Saldırı (Hedefe Kilitlenme): </strong>Bu saldırıyı gerçekleştirmek için Hedefe kilitlenmenizi harcayınız ve bu kartı kaldırınız.%LINEBREAK%3 taneye kadar boş sonucunuzu %FOCUS% sonucuna değiştirebilirsiniz."""
        "Autoblaster":
            text: """<strong>Saldırı: </strong>Bir gemiye saldırın.%LINEBREAK% %HIT% sonuçlarınız savunma zarıyla iptal edilemez.%LINEBREAK%Savunan %HIT% sonuçlarınızdan önce %CRIT% sonuçlarını iptal edebilir."""
        "Fire-Control System":
            text: """Bir saldırı gerçekleştirdikten sonra savunana bir hedefe kilitlenme (target lock) atayabilirsiniz."""
        "Blaster Turret":
            text: """<strong>Saldırı (Odaklanma): </strong> Bir gemiyee karşı bu saldırıyı gerçekleştirmek için bir odaklanma (focus) fişi harcayınız. (Bu gemi ateş yayınızın dışında olsa bile)"""
        "Recon Specialist":
            text: """Bir odaklanma (focus) aksiyonu gerçekleştirdiğinizde geminize fazladan bir odaklanma fişi atayınız."""
        "Saboteur":
            text: """<strong>Aksiyon: </strong>1 menzilde bir düşman gemisi seçiniz ve bir saldırı zarı atınız. Bir %HIT% veya %CRIT% sonucunda bu gemiye atanmış rastgele kapalı hasar kartı seçiniz, açınız ve uygulayınız."""
        "Intelligence Agent":
            text: """Aktivasyon safhasının başında 1-2 menzilde bir düşman gemisi seçiniz. Bu geminin seçilmiş manevrasına bakabilirsiniz."""
        "Proton Bombs":
            text: """Manevra kadranınızı açıkladıktan sonra bu kartı kapatarak 1 proton bombası fişi <strong>bırakabilirsiniz.</strong> %LINEBREAK%Bu fiş aktivasyon safhasının başında <strong>patlar.</strong> %LINEBREAK%<strong>Proton Bombası Fişi:</strong>Bu bomba fişi patladığında 1 menzildeki tüm gemilere kapalı bir hasar kartı veriniz. Sonrasında fişi kaldırınız."""
        "Adrenaline Rush":
            text: """Kırmızı bir manevra açıkladığınızda, bu manevrayı aktivasyon safhasının sonuna kadar beyaz manevra saymak için bu kartı kapatınız.."""
        "Advanced Sensors":
            text: """Manevranızı yapmadan hemen önce bir ücretsiz aksiyon yapabilirsiniz.%LINEBREAK%Eğer bu yeteneği kullanırsanız bu turda Aksiyon Gerçekleştirme safhasını atlamalısınız."""
        "Sensor Jammer":
            text: """Savunurken, saldıranın %HIT% sonuçlarından birini %FOCUS% sonucuna değiştirebilirsiniz.%LINEBREAK%Saldıran sonucu değiştirilmiş zarı tekrar atamaz."""
        "Darth Vader":
            text: """%IMPERIALONLY%%LINEBREAK%Bir düşman gemisine karşı bir saldırı gerçekleştirdikten sonra, bu geminin 1 kritik hasar almasını sağlamak için 2 hasar alabilirsiniz."""
        "Rebel Captive":
            text: """%IMPERIALONLY%%LINEBREAK%Her turda bir defa olmak üzere, sizi bir saldırının hedefi ilan eden ilk gemi anında bir stres fişi alır."""
        "Flight Instructor":
            text: """Savunurken, %FOCUS% sonuçlarınızdan birini tekrar atabilirsiniz. Eğer saldıranın pilot yetenek değeri 2 veya altındaysa bunu yerine boş sonuçlarınızdan birini tekrar atabilirsiniz."""
        "Navigator":
            text: """Manevra kadranınızı açıkladıktan sonra, kadranınızı aynı rotadaki başka bir manevraya çevirebilirsiniz.%LINEBREAK%Eğer herhangi bir stres fişiniz varsa, kırmızı bir manevraya çeviremezsiniz."""
        "Opportunist":
            text: """Saldırırken, eğer savunanın herhangi bir odaklanma (focus) veya kaçınma (evade) fişi yoksa, fazladan bir saldırı zarı atmak için bir stres fişi alabilirsiniz. %LINEBREAK%Eğer herhangi bir stres fişiniz varsa bu yeteneği kullanamazsınız."""
        "Comms Booster":
            text: """<strong>Enerji:</strong> 1-3 menzildeki bir dost gemisinden tüm stres fişlerini kaldırmak için 1 enerji harcayınız. Sonrasında bu gemiye 1 odaklanma (focus) fişi atayınız."""
        "Slicer Tools":
            text: """<strong>Aksiyon:</strong> 1-3 menzilde stres fişi olan 1 veya daha fazla gemi seçiniz. Seçilen her geminin birer hasar almasını sağlamak için birer enerji harcayın."""
        "Shield Projector":
            text: """Bir düşman gemi bir küçük veya büyük gemiyi saldırısının hedefi olarak ilan ettiğinde, eğer mümkünse, 3 enerji harcayarak sizi hedeflemeye zorlayabilirsiniz."""
        "Ion Pulse Missiles":
            text: """<strong>Saldırı (Hedefe Kilitlenme): </strong><br/>Bu saldırıyı gerçekleştirmek için bu kartı kapatınız.%LINEBREAK%Bu saldırı isabet ederse, savunan 1 hasara maruz kalır ve 2 iyon fişi alır. Sonrasında tüm zar sonuçlarını iptal ediniz."""
        "Wingman":
            text: """Savaş safhasının başlangıcında 1 menzildeki başka bir dost gemiden 1 stres fişi kaldırınız."""
        "Decoy":
            text: """Savaş safhasının başlangıcında 1-2 menzilde başka bir dost gemi seçebilirsiniz. Safhanın sonuna kadar pilot yeteneğinizi bu geminin pilot yeteneği ile değiştiriniz."""
        "Outmaneuver":
            text: """Ateş yayınız içindeki bir gemiye saldırırken eğer bu geminin ateş yayı içinde değilseniz, onun çeviklik (agility) değerini 1 düşünürüz (en az 1'e)."""
        "Predator":
            text: """Saldırırken, 1 saldırı zarını tekrar atabilirsiniz. Eğer savunanın pilot yetenek değeri 2 veya altıysa bunun yerine 2 saldırı zarını tekrar atabilirsiniz."""
        "Flechette Torpedoes":
            text: """<strong>Saldırı (Hedefe Kilitlenme): </strong><br/>Bu saldırıyı gerçekleştirmek için bu kartı kapatınız ve hedefe kilitlenmenizi (target lock) harcayınız.%LINEBREAK%Bu saldırıyı gerçekleştirdikten sonra, eğer savunanın zırh (hull) değeri 4 veya altındaysa savunan 1 stres fişi alır."""
        "R7 Astromech":
            text: """Savunurken, her turda bir defa olmak üzere, eğer saldıranda Hedefe Kilitlenmeniz varsa, bu hedefe kilitlenmeyi herhangi bir veya tüm saldırı zarlarını seçmek için harcayabilirsiniz. Saldıran seçilen zarları tekrar atmak zorundadır."""
        "R7-T1":
            text: """<strong>Aksiyon: </strong> 1-2 menzilde bir düşman gemisi seçiniz. Eğer bu geminin ateş yayı içindeyseniz bu gemiye bir Hedefe Kilitlenme atayın. Sonasında ücretsiz bir Destek (boost) aksiyonu gerçekleştirebilirsiniz."""
        "Tactician":
            text: """2 menzilde ateş yayınızdaki bir gemiye saldırı gerçekleştirdikten sonra bu gemi 1 stres fişi alır."""
        "R2-D2 (Crew)":
            text: """%REBELONLY%%LINEBREAK% Son safhanın sonunda, eğer kalkanınız yoksa 1 kalkanınızı geri kazanabilirsiniz ve 1 saldırı zarı atınız. %HIT% sonucunda kapalı hasar kartlarından rastgele birini açınız ve uygulayınız."""
        "C-3PO":
            text: """%REBELONLY%%LINEBREAK%Her turda bir defa olmak üzere, bir veya daha fazla savunma zarı atmadan önce %EVADE% sonuçlarınızın sayısını sesli olarak tahmin edebilirsiniz. Eğer tahmin ettiğiniz kadar %EVADE% sonucu atarsanız (zarı modifiye etmeden önce), 1 %EVADE% sonucu ekleyiniz."""
        "Single Turbolasers":
            text: """<strong>Saldırı (Enerji): </strong>%LINEBREAK%Bu saldırıyı gerçekleştirmek için bu karttan 2 enerji harcayınız. Savunan, bu saldırıya karşı çeviklik (agility) değerini ikiye katlar. Siz, %FOCUS% sonuçlarınızdan birini %HIT% sonucuna çevirebilirsiniz."""
        "Quad Laser Cannons":
            text: """<strong>Saldırı (Enerji): </strong>%LINEBREAK%Bu saldırıyı gerçekleştirmek için bu karttan 1 enerji harcayınız. Eğer saldırınız isabet etmezse, anında bu karttan bir enerji harcayarak bu saldırıyı tekrarlayabilirsiniz."""
        "Tibanna Gas Supplies":
            text: """<strong>Enerji:</strong> 3 enerji kazanmak için bu kartı kapatınız."""
        "Ionization Reactor":
            text: """<strong>Энергия:</strong> 1 menzildeki diğer tüm gemilere 1 hasar ve 1 iyon fişi vermek için bu karttan 5 enerji harcayınız ve bu kartı kapatınız."""
        "Engine Booster":
            text: """Manevra kadranınızı açmadan hemen önce bir beyaz (%STRAIGHT% 1) manevrası gerçekleştirmek için 1 enerji harcayabilirsiniz. Eğer başka bir geminin üzerine biniyorsanız bu özelliği kullanamazsınız."""
        "R3-A2":
            text: """Saldırınızın hedefini ilan ettiğinizde eğer savunan sizin ateş yayınızın içindeyse, savunanın 1 stres fişi almasını sağlamak için 1 stres fişi alabilirsiniz."""
        "R2-D6":
            text: """Geliştirme barınız %ELITE% geliştirme ikonu kazanır.%LINEBREAK%Eğer halihazırda %ELITE% geliştirme ikonunuz varsa veya pilot yetenek değeriniz 2 beya altıysa bu geliştirmeyi donatamazsınız."""
        "Enhanced Scopes":
            text: """Aktivasyon safhasında pilot yetenek değerinizi "0" olarak sayınız."""
        "Chardaan Refit":
            text: """Sadece A-WING için. %LINEBREAK%Bu kartın eksi takım puanı vardır."""
        "Proton Rockets":
            text: """<strong>Saldırı (Odaklanma): </strong>%LINEBREAK%Bu saldırıyı gerçekleştirmek için bu kartı kapatınız. %LINEBREAK% Çeviklik (agility) değeriniz kadar fazladan saldırı zarı atabilirsiniz (maksimum 3 fazladan zara kadar)."""
        "Kyle Katarn":
            text: """%REBELONLY%%LINEBREAK%Geminizden bir stres fişi kaldırdıktan sonra geminize bir odaklanma (focus) fişi atayabilirsiniz."""
        "Jan Ors":
            text: """%REBELONLY%%LINEBREAK%Her turda bir defa, 1-3 menzildeki bir dost gemi bir odaklanma (focus) aksiyonu gerçekleştirince veya odaklanma fişi alması muhtemel olunca, bunun yerine ona bir kaçınma (evade) fişi atayabilirsiniz."""
        "Toryn Farr":
            text: """%HUGESHIPONLY% %REBELONLY%%LINEBREAK%<strong>Aksiyon:</strong> 1-2 menzildeki seçeceğiniz düşman gemisi sayısı kadar enerji harcayınız. Bu gemilerden tüm odaklanma (focus), kaçınma (evade) ve mavi hedefe kilitlenme (target lock) fişlerini kaldırınız."""
        "R4-D6":
            text: """Eğer bir saldırıdan isabet aldıysan ve en az 3 iptal edilmeyen %HIT% sonucu varsa, bu sonuçları 2 tane kalıncaya kadar iptal etmeyi seçebilirsiniz. Bu yolla iptal ettiğiniz her sonuç için 1 stres fişi alınız."""
        "R5-P9":
            text: """Savaş safhasının sonunda, odaklanma (focus) fişlerinizden birini harcayarak 1 kalkanınızı (shield) geri kazanabilirsiniz (kalkan değerinize kadar)."""
        "WED-15 Repair Droid":
            text: """%HUGESHIPONLY%%LINEBREAK%<strong>Aksiyon:</strong> Kapalı hasar kartlarınızdan birini kaldırmak için 1 enerji harcayınız veya açık hasar kartlarınızdan birini kaldırmak için 3 enerji harcayınız."""
        "Carlist Rieekan":
            text: """%HUGESHIPONLY% %REBELONLY%%LINEBREAK%Aktivasyon safhasının başında her dost geminin pilot yetenek değerini turun sonuna kadar 12 saymak için bu kartı kaldırabilirsiniz."""
        "Jan Dodonna":
            text: """%HUGESHIPONLY% %REBELONLY%%LINEBREAK%1 menzildeki başka bir dost gemi saldırırken, onun %HIT% sonuçlarından birini %CRIT% sonucuna çevirebilirsiniz."""
        "Expanded Cargo Hold":
            text: """<span class="card-restriction">Sadece GR-75 için.</span>%LINEBREAK%Her turda bir defa olmak üzere, bir açık hasar kartı almanız muhtemel olduğunda, bu kartı hasar destenizin ister başından ister sonundan çekebilirsiniz."""
        "Backup Shield Generator":
            text: """Her turun sonunda, 1 kalkan (shield) geri kazanmak için 1 enerji harcayabilirsiniz ((kalkan değerinize kadar)."""
        "EM Emitter":
            text: """Bir saldırıyı engellediğinizde, savunan fazladan 3 savunma zarı atar (1 yerine)."""
        "Frequency Jammer":
            text: """Bir karışıklık (jam) aksiyonu gerçekleştirdiğinizde, stres fişi olmayan ve karışıklık olan gemiye 1 menzilde bir düşman gemisi seçiniz.  Seçilen gemi 1 stres fişi alır."""
        "Han Solo":
            text: """%REBELONLY%%LINEBREAK%Saldırırken, eğer savunanda hedefe kilitlenmeniz (target lock) varsa, bu hedefe kilitlenmeyi tüm %FOCUS% sonuçlarınızı %HIT% sonuçlarına çevirmek için kullanabilirsiniz."""
        "Leia Organa":
            text: """%REBELONLY%%LINEBREAK%Aktivasyon safhasının başlangıcında, kırmızı manevra açıklamış tüm dost gemilerinin bu manevralarını safhanın sonuna kadar beyaz manevra kabul etmek için bu kartı kapatabilirsiniz."""
        "Targeting Coordinator":
            text: """<strong>Energy:</strong> 1-2 menzilde 1 dost gemi seçmek için 1 enerji harcayınız. Bir hedefe kilitlenme (target lock) edinin, sonra mavi hedefe kilitlenmeyi seçilen gemiye atayın."""
        "Raymus Antilles":
            text: """%HUGESHIPONLY% %REBELONLY%%LINEBREAK%Aktivasyon safhasının başlangıcında, 1-3 menzilde 1 düşman gemisi seçiniz. Bu geminin seçilen manevrasına bakabilirsiniz. Eğer manevra beyazsa bu gemiye 1 stres fişi atayınız."""
        "Gunnery Team":
            text: """Her turda bir defa, ikincil silahla saldırdığınızda boş sonuçlarınızdan birini bir %HIT% sonucuna çevirmek için 1 enerji harcayabilirsiniz."""
        "Sensor Team":
            text: """Bir hedefe kilitlenme (target lock) edinirken, 1-3 menzil yerine 1-5 menzile kilitlenebilirsiniz."""
        "Engineering Team":
            text: """Aktivasyon safhası sırasında %STRAIGHT% manevrası açıklarsanız, "Enerji Kazanma" adımında 1 fazladan enerji kazanınız."""
        "Lando Calrissian":
            text: """%REBELONLY%%LINEBREAK%<strong>Aksiyon: </strong>%LINEBREAK% 2 savunma zarı atınız. Her %FOCUS% sonucu için geminize fazladan 1 odaklanma (focus) fişi atayınız. Her %EVADE% sonucu için geminize fazladan 1 kaçınma (evade) fişi atayınız."""
        "Mara Jade":
            text: """%IMPERIALONLY%%LINEBREAK%Savaş safhasının sonunda, 1 menzildeki stres fişi olmayan her düşman gemisi 1 stres fişi alır."""
        "Fleet Officer":
            text: """<strong>Aksiyon: </strong>%LINEBREAK% 1-2 menzilde iki taneye kadar dost gemi seçiniz ve bu gemilerden her birine 1 odaklanma (focus) fişi atayınız. Sonrasında 1 stres fişi alınız."""
        "Lone Wolf":
            text: """Saldırırken veya savunurken, 1-2 menzilinizde başka bir dost gemi yoksa, boş sonuçlarınızdan birini tekrar atabilirsiniz."""
        "Stay On Target":
            text: """Bir manevreyı açıkladığınızda, kadranınızı aynı hızdaki başka bir manevraya çevirebilirsiniz.%LINEBREAK%Bu manevrayı kırmızı manevra sayınız."""
        "Dash Rendar":
            text: """%REBELONLY%%LINEBREAK%Bir engelin üzerindeyken saldırı gerçekleştirebilirsiniz. Saldırılarınız engellenmez."""
        '"Leebo"':
            text: """%REBELONLY%%LINEBREAK%<strong>Aksiyon: </strong>%LINEBREAK% Ücretsin bir Destek (boost) aksiyonu gerçekleştiriniz. Sonrasında 1 iyon fişi alınız."""
        "Ruthlessness":
            text: """%IMPERIALONLY%%LINEBREAK%İsabet eden bir saldırı gerçekleştirdikten sonra, savunanın 1 menzilinde kendinizden başka bir gemi seçmek <strong>zorundasınız</strong>. Bu gemi 1 hasar alır."""
        "Intimidation":
            text: """Bir düşman gemiye temas ederken, bu geminin çeviklik (agility) değerini 1 düşürünüz."""
        "Ysanne Isard":
            text: """%IMPERIALONLY%%LINEBREAK%Savaş safhasının başlangıcında, kalkanınız (shield) yoksa ve en az 1 Hasar kartı geminize eklendiyse, ücretsiz bir %EVADE% aksiyonu yapabilirsiniz."""
        "Moff Jerjerrod":
            text: """%IMPERIALONLY%%LINEBREAK%Açık bir hasar kartına maruz kaldığınızda, bu geliştirme kartını veya başka bir %CREW% geliştirme kartını bu hasar kartını kapalıya çevirmek için kaldırabilirsiniz (etkisini uygulamadan)."""
        "Ion Torpedoes":
            text: """<strong>Saldırı (Hedefe Kilitlenme): </strong>%LINEBREAK%Bu saldırıyı gerçekleştirmek için Hedefe Kilitlenmenizi (target lock) harcayınız ve bu kartı kaldırınız. %LINEBREAK%Eğer bu saldırı isabet ederse, savunan ve 1 menzilindeki her gemi 1 iyon fişi alır."""
        "Bodyguard":
            text: """%SCUMONLY%%LINEBREAK%Savaş safhasının başlangıcında, 1 menzildeki sizden pilot yetenek değeri yüksek bir dost gemi seçmek için 1 odaklanma (focus) fişi harcayabilirsiniz. Turun sonuna kadar onun çeviklik (agility) değerini 1 arttırınız."""
        "Calculation":
            text: """Saldırırken, %FOCUS% sonuçlarınızdan birini %CRIT% sonucuna değiştirmek için 1 odaklanma (focus) fişi harcayabilirsiniz."""
        "Accuracy Corrector":
            text: """Saldırırken, "Saldırı Zarlarını Değiştirme" adımında, tüm zarlarınızı iptal edebilirsiniz. Sonrasında, zar atışınıza iki adet %HIT% sonucu ekleyebilirsiniz.%LINEBREAK%Bu saldırı sırasında zarlarınız tekrar değiştirilemez."""
        "Inertial Dampeners":
            text: """Manevranızı açıkladığınızda, bunun yerine bir beyaz [0%STOP%] manevrası gerçekleştirmek için bu kartı kapatabilisiniz. Sonrasında 1 stres fişi alırsınız."""
        "Flechette Cannon":
            text: """<strong>Saldırı: </strong>1 gemiye saldırın.%LINEBREAK%Eğer bu saldırı isabetli olursa savunan 1 hasara maruz kalır, savunanın stres fişi yoksa ayrıca 1 stres fişi alır. Sonrasında <strong>tüm</strong> zar sonuçlarını iptal ediniz."""
        '"Mangler" Cannon':
            text: """<strong>Saldırı: </strong>1 gemiye saldırın.%LINEBREAK%Saldırırken %HIT% sonuçlarınızdan birini %CRIT% sonucuna değiştirebilirsiniz."""
        "Dead Man's Switch":
            text: """Yok edildiğinizde, 1 menzildeki tüm gemiler 1 hasar alır."""
        "Feedback Array":
            text: """Savaş safhası sırasında, herhangi bir saldırı yapmak yerine 1 menzilde 1 düşman gemisi seçmek için 1 iyon fişi alıp 1 hasara maruz kalabilirsiniz. Bu gemi 1 hasar alır."""
        '"Hot Shot" Blaster':
            text: """<strong>Saldırı: </strong>%LINEBREAK%Bir gemiye saldırmak için bu kartı kaldırınız (Ateş yayınızın dışında bir gemi olsa bile)."""
        "Greedo":
            text: """%SCUMONLY%%LINEBREAK%Her turda ilk defa saldırdığınızda  ve her turda ilk defa savunduğunuzda, etkilenilen ilk hasar kartı açık olarak etkiler."""
        "Salvaged Astromech":
            text: """Bir <strong>gemi </strong>özelliği ile açık hasar kartına maruz kalıyorsanız, o kartı anında kaldırabilirsiniz (sonucuna maruz kalmadan).%LINEBREAK%Sonrasında bu geliştirme kartını kaldırınız."""
        "Bomb Loadout":
            text: """<span class="card-restriction">Sadece Y-Wing.</span>%LINEBREAK%Geliştirme barınız %BOMB% ikonu kazanır."""
        '"Genius"':
            text: """Eğer manevranızı açıklarken bırakabileceğiniz bir bomba ile donatılmışsanız, bunu yerine bombayı manevranızı gerçekleştirdikten <strong>sonra</strong> da bırakabilirsiniz."""
        "Unhinged Astromech":
            text: """Tüm 3 hızındaki manevralarınızı yeşil manevra sayabilirsiniz."""
        "R4-B11":
            text: """Saldırırken, eğer savunanda Hedefe Kilitlenmeniz varsa, savunma zarlarından herhangi birini veya hepsini seçmek için bu Hedefe Kilitlenmeyi kullanabilirsiniz. Savunan seçilen zarları tekrar atmak zorundadır."""
        "Autoblaster Turret":
            text: """<strong>Saldırı: </strong>1 gemiye saldırınız (bir gemi ateş yayınızın dışında olsa bile)%LINEBREAK% %HIT% sonuçlarınız savunma zarıyla engellenemez. Savunan %HIT% sonuçlarınızdan önce %CRIT% sonuçlarınızı iptal edebilir."""
        "R4 Agromech":
            text: """Saldırırken, bir odaklanma (focus) fişi harcadıktan sonra savunana bir Hedefe Kilitlenme (target lock) atayabilirsiniz."""
        "K4 Security Droid":
            text: """%SCUMONLY%%LINEBREAK%Yeşil bir manevra gerçekleştirdikten sonra Hedefe Kilitlenme (target lock) atayabilirsiniz."""
        "Outlaw Tech":
            text: """%SCUMONLY%%LINEBREAK%Kırmızı bir manevra gerçekleştirdikten sonra geminize 1 odaklanma (focus) fişi atayabilirsiniz."""
        "Advanced Targeting Computer":
            text: """<span class="card-restriction">Sadece TIE Advanced.</span>%LINEBREAK%Birincil silahınızla saldırırken, eğer savunanda Hedefe Kilitlenmeniz varsa zarınıza 1 adet %CRIT% sonucu ekleyiniz. Eğer bunu yaparsanız bu saldırı sırasında Hedefe Kilitlenme harcayamazsınız."""
        "Ion Cannon Battery":
            text: """<strong>Saldırı (enerji):</strong> Bu saldırıyı gerçekleştirmek için bu karttan 2 enerji harcayınız. Eğer bu saldırı isabetli olursa, savunan 1 kritik hasara maruz kalır ve 1 iyon fişi alır. Sonrasında <strong>tüm<strong> zar sonuçlarını iptal ediniz."""
        "Emperor Palpatine":
            text: """%IMPERIALONLY%%LINEBREAK%Her turda bir defa bir dost geminin zar sonucunu herhangi başka bir zar sonucuna değiştirebilirsiniz. Bu zar sonucu tekrar değiştirilemez."""
        "Bossk":
            text: """%SCUMONLY%%LINEBREAK%İsabet etmeyen bir saldırı gerçekleştirdikten sonra eğer stresli değilseniz 1 stres fişi almak <strong>zorundasınız</strong>. Sonrasında geminize 1 odaklanma (focus) fişi atayınız ve savunana bir hedefe kilitlenme (target lock) ekleyin."""
        "Lightning Reflexes":
            text: """%SMALLSHIPONLY%%LINEBREAK%Kadranınızda bir beyaz veya yeşil manevra yaptıktan sonra, geminizi 180&deg çevirmek için bu kartı kaldırınız. "Pilotun Stresini Kontrol Et" adımından <strong>sonra</strong> 1 stres fişi alınız."""
        "Twin Laser Turret":
            text: """<strong>Saldırı:</strong> Bu saldırıyı <strong>iki kez</strong> gerçekleştiriniz (ateş yayınızın dışında bir gemiye karşı olsa da).<br /><br />Bu saldırı her isabet ettiğinde savunan 1 hasara maruz kalır. Sonrasında <strong>tüm</strong> zar sonuçlarını iptal ediniz."""
        "Plasma Torpedoes":
            text: """<strong>Saldırı (hedefe kilitlenme):</strong> Bu saldırıyı gerçekleştirmek için hedefe kilitlenmenizi (target lock) harcayınız ve bu kartı kaldırınız.<br /><br />Eğer bu saldırı isabet ederse, hasar verdikten sonra savunandan 1 kalkan kaldırınız."""
        "Ion Bombs":
            text: """Manevra kadranınızı açıkladığınızda, 1 iyon bombaları fişi <strong>bırakmak</strong> için bu kartı kaldırabilirsiniz.<br /><br />Bu fiş aktivasyon safhasının sonunda <strong>patlar</strong>.<br /><br /><strong>Ion Bombaları Fişi:</strong> Bu bomba fişi patladığında, 1 menzildeki tüm gemiler 2 iyon fişi alır. Sonrasında bu fişi kaldırınız."""
        "Conner Net":
            text: """<strong>Aksiyon:</strong> 1 Conner ağı fişi <strong>bırakmak</strong> için bu kartı kaldırabilirsiniz.<br /><br /> Bir geminin tabanı veya manevra şablonu bu fişin üzerine gelirse bu fiş <strong>patlar</strong>.<br /><br /><strong>Conner Ağı Fişi:</strong> Bu bomba fişi patladığında, bu fişin üzerine gelen veya üzerinden geçen gemi 1 hasara maruz kalır, 2 iyon fişi alır ve "Aksiyon Gerçekleştirme" adımını atlar. Sonrasında bu fişi kaldırınız."""
        "Bombardier":
            text: """Bomba bırakırken, (%STRAIGHT% 1) şablonu yerine (%STRAIGHT% 2) şablonu kullanabilirsiniz."""
        "Cluster Mines":
            text: """<strong>Aksiyon:</strong> 3 küme mayın (cluster mine) fişi <strong>bırakmak</strong> için bu kartı kaldırınız.<br /><br />Bir geminin tabanı veya manevra şablonu küme mayın fişinin üzerine gelirse bu fiş <strong>patlar</strong>.<br /><br /><strong>Küme mayın fişleri:</strong> Bu bomba fişlerinden biri patlarsa, bu fişin üzerine gelen veya üzerinden geçen gemi 2 saldırı zarı atar ve gelen tüm (%HIT%) hasarına maruz kalır. Sonrasında bu fişi kaldırınız."""
        'Crack Shot':
            text: '''Ateş yayınızın içindeki bir gemiye saldırırken, savunanın %EVADE% sonuçlarından birini iptal etmek için bu kartı kaldırabilirsiniz.'''
        "Advanced Homing Missiles":
            text: """<strong>Saldırı (hedefe kilitlenme):</strong> Bu saldırıyı gerçekleştirmek için bu kartı kaldırınız.%LINEBREAK%Eğer bu saldırı isabet ederse, savunana açık bir Hasar kartı uygulayınız. Sonrasında <strong>tüm</strong> zar sonuçlarını iptal ediniz."""
        'Agent Kallus':
            text: '''%IMPERIALONLY%%LINEBREAK% İlk turun başlangıcında, 1 küçük veya büyük düşman gemisi seçiniz. Bu gemiye saldırırken veya savunurken %FOCUS% sonuçlarınızdan birini %HIT% veya %EVADE% sonucuna çevirebilirsiniz.'''
        'XX-23 S-Thread Tracers':
            text: """<strong>Saldırı (odaklanma):</strong> Bu saldırıyı gerçekleştirmek için bu kartı kaldırınız. Eğer bu saldırı isabet ederse, 1-2 menzilinizdeki her dost gemi savunana hedefe kilitlenme (target lock) atayabilir. Sonrasında <strong>tüm</strong> zar sonuçlarını iptal ediniz."""
        "Tractor Beam":
            text: """<strong>Saldırı:</strong> 1 gemiye saldırınız.%LINEBREAK%Eğer bu saldırı isabet ederse, savunan 1 çekici ışın (tractor beam) fişi alır. Sonrasında <strong>tüm</strong> zar sonuçlarını iptal ediniz."""
        "Cloaking Device":
            text: """%SMALLSHIPONLY%%LINEBREAK%<strong>Aksiyon:</strong> Ücretsiz bir gizlenme aksiyonu gerçekleştiriniz.%LINEBREAK%Her turun sonunda, eğer gizlenmişseniz, 1 saldırı zarı atınız. %FOCUS% sonucunda, bu kartı kaldırın, sonrasında görünür olun veya gizlenme fişinizi kaldırın."""
        "Shield Technician":
            text: """%HUGESHIPONLY%%LINEBREAK%Bir geri kazanma aksiyonu gerçekleştirince, tüm enerjinizi harcamak yerine, harcayacağınız enerji miktarını seçebilirsiniz."""
        "Weapons Guidance":
            text: """Saldırırken, boş sonuçlarınızdan birini %HIT% sonucuna çevirmek için 1 odaklanma (focus) fişi harcayabilirsiniz."""
        "BB-8":
            text: """Yeşil bir manevra açıkladığınızda, bir ücretsiz tam dönüş (barrel roll) aksiyonu gerçekleştirebilirsiniz."""
        "R5-X3":
            text: """Maneranızı açıklamadan önce, turun sonuna kadar engelleri ihmal etmek için bu kartı kaldırabilirsiniz."""
        "Wired":
            text: """Saldırırken veya savunurken, stresli değilseniz, %FOCUS% sonuçlarınızdan 1 veya daha fazlasını tekrar atabilirsiniz."""
        'Cool Hand':
            text: '''Bir stres fişi aldığınızda, geminize 1 odaklanma (focus) veya kaçınma (evade) fişi atamak için bu kartı kaldırabilirsiniz.'''
        'Juke':
            text: '''%SMALLSHIPONLY%%LINEBREAK%Saldırırken, eğer bir kaçınma (evade) fişiniz varsa, savunanın %EVADE% sonuçlarından birini %FOCUS% sonucuna çevirebilirsiniz.'''
        'Comm Relay':
            text: '''Birden fazla kaçınma (evade) fişine sahip olamazsınız.%LINEBREAK%Son safhada, kullanılmamış kaçınma fişini geminizden kaldırmayınız.'''
        'Dual Laser Turret':
            text: '''%GOZANTIONLY%%LINEBREAK%<strong>Saldırı (enerji):</strong> Bir gemiye karşı bu saldırıyı gerçekleştirmek için bu karttan 1 enerji harcayınız (gemi ateş yayınızın dışında olsa bile).'''
        'Broadcast Array':
            text: '''%GOZANTIONLY%%LINEBREAK%Aksiyon barınız %JAM% aksiyonu ikonu kazanır.'''
        'Rear Admiral Chiraneau':
            text: '''%HUGESHIPONLY% %IMPERIALONLY%%LINEBREAK%<strong>Aksiyon:</strong> Bir beyaz (%STRAIGHT% 1) manevrası gerçekleştirin.'''
        'Ordnance Experts':
            text: '''Her turda bir defa, 1-3 menzilde bir dost gemi %TORPEDO% veya %MISSILE% ikincil silahıyla bir saldırı gerçekleştirirse, boş sonuçlarından birini %HIT% sonucuna değiştirebilir.'''
        'Docking Clamps':
            text: '''%GOZANTIONLY% %LIMITED%%LINEBREAK%Bu gemiye 4 taneye kadar TIE fighter, TIE interceptor, TIE bomber veya TIE Advanced bağlayabilirsiniz. Tüm bağlanan gemiler aynı gemi tipinde olmalıdır.'''
        '"Zeb" Orrelios':
            text: """%REBELONLY%%LINEBREAK%Ateş yayınız içindeki dokunduğunuz düşman gemileri siz veya onlar Savaş safhasında aktive edilmiş olsanız bile size dokunmuyor sayılır. (Daha doğru bir çeviri iyi olurdu hani)"""
        'Kanan Jarrus':
            text: """%REBELONLY%%LINEBREAK%Her turda bir defa, 1-2 menzildeki bir dost gemi bir beyaz manevra gerçekleştirdikten sonra, bu gemiden 1 stres fişi kaldırabilirsiniz."""
        'Reinforced Deflectors':
            text: """%LARGESHIPONLY%%LINEBREAK%Bir saldırıdan 3 veya daha fazla hasara maruz kaldıktan sonra, 1 kalkan (shield) geri kazanın (kalkan değerinize kadar)."""
        'Dorsal Turret':
            text: """<strong>Saldırı:</strong> Bir gemiye saldırınız (gemi ateş yayınızın dışında olsa bile).%LINEBREAK%Eğer bu saldırının hedefi 1 menzildeyse, fazladan 1 saldırı zarı atınız."""
        'Targeting Astromech':
            text: '''Bir kırmızı manevra gerçekleştirdikten sonra, bir hedefe kilitlenme (target lock) edinebilirsiniz.'''
        'Hera Syndulla':
            text: """%REBELONLY%%LINEBREAK%Stresli olsanız bile kırmızı manevra açıklayabilir ve gerçekleştirebilirsiniz."""
        'Ezra Bridger':
            text: """%REBELONLY%%LINEBREAK%Saldırırken, eğer stresliyseniz, %FOCUS% sonuçlarınızdan birini %CRIT% sonucuna değiştirebilirsiniz."""
        'Sabine Wren':
            text: """%REBELONLY%%LINEBREAK%Geliştirme barınız %BOMB% geliştirme ikonu kazanır. Her turda bir defa, dost bomba fişi kaldırılmadan önce, Fişin 1 menzilinde 1 düşman gemisi seçiniz. Bu gemi 1 hasara maruz kalır."""
        '"Chopper"':
            text: """%REBELONLY%%LINEBREAK%Stresli olsanız bile aksiyon gerçekleştirebilirsiniz.%LINEBREAK%Stresliyken bir aksiyon gerçekleştirdikten sonra 1 hasara maruz kalınız."""
        'Construction Droid':
            text: '''%HUGESHIPONLY% %LIMITED%%LINEBREAK%Bir geri kazanma aksiyonu gerçekleştirince, kapalı bir Hasar kartını kaldırmak için 1 enerji harcayabilirsiniz.'''
        'Cluster Bombs':
            text: '''Savunduktan sonra, bu kartı kaldırabilirsiniz. Eğer bunu yaparsanız, savunan kısmın 1 menzilindeki tüm diğer gemiler 2 saldırı zarı atar, gelen tüm (%HIT%) hasarına ve (%CRIT%) kritik hasarına maruz kalırlar.'''
        "Adaptability":
            text: """<span class="card-restriction">Dual card.</span>%LINEBREAK%<strong>Side A:</strong> Pilot yetenek değerinizi 1 arttırınız.%LINEBREAK%<strong>Side B:</strong> Pilot yetenek değerinizi 1 düşürünüz."""
        "Electronic Baffle":
            text: """Bir stres fişi veya bir iyon fişi aldığınızda, bu fişi kaldırmak için 1 hasara maruz kalabilirsiniz."""
        "4-LOM":
            text: """%SCUMONLY%%LINEBREAK%Saldırırken, "Saldırı Zarı Değiştirme" basamağı sırasında, savunanın odaklanma (focus) veya kaçınma (evade) fişlerinden birini seçmek için 1 iyon fişi alabilirsiniz. Seçilen fiş saldırı sırasında kullanılamaz."""
        "Zuckuss":
            text: """%SCUMONLY%%LINEBREAK%Saldırırken, herhangi sayıda savunma zarı seçmek için eşit sayıda stres fişi alabilirsiniz. Savunan bu zarları tekrar atmak zorundadır."""
        'Rage':
            text: """<strong>Aksiyon:</strong> Geminize 1 odaklanma (focus) fişi atayınız ve 2 stres fişi alınız. Turun sonuna kadar, saldırırken 3 taneye kadar saldırı zarını tekrar atabilirsiniz."""
        "Attanni Mindlink":
            text: """%SCUMONLY%%LINEBREAK%Bir odaklanma (focus) veya stres fişi aldığınız her seferinde, Attanni Mindlink sahibi diğer dost gemilerin her biri de zaten bir taneye sahip değilse aynı tip fiş almak zorundadır."""
        "Boba Fett":
            text: """%SCUMONLY%%LINEBREAK%Bir saldırı gerçekleştirdikten sonra, eğer savunan bir açık Hasar kartına maruz kalırsa, savunanın Geliştirme kartlarından birini seçmek ve kaldırmak için bu kartı kaldırabilirsiniz."""
        "Dengar":
            text: """%SCUMONLY%%LINEBREAK%Saldırırken 1 saldırı zarını tekrar atabilirsiniz. Eğer savunan eşsiz (unique) bir pilotsa, bunun yerine 2 taneye kadar saldırı zarı tekrar atabilirsiniz."""
        '"Gonk"':
            text: """%SCUMONLY%%LINEBREAK%<strong>Aksiyon:</strong> Bu kartın üzerine 1 kalkan (shield) fişi yerleştirin.%LINEBREAK%<strong>Aksiyon:</strong> 1 kalkanınızı geri kazanmak için bu karttan 1 kalkan kaldırınız (kalkan değerinize kadar)."""
        "R5-P8":
            text: """Her turda bir defa, savunduktan sonra 1 saldırı zarı tekrar atabilirsiniz. Bir %HIT% sonucunda, saldıran 1 hasara maruz kalır. Bir %CRIT% sonucunda, siz ve saldıran birer hasara maruz kalırsınız."""
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
        "Stealth Device":
            text: """Çeviklik (agility) değerinizi 1 arttırınız. Eğer bir saldırıdan isabet alırsanız bu kartı kaldırınız."""
        "Shield Upgrade":
            text: """Kalkan (shield) değerinizi 1 arttırınız."""
        "Engine Upgrade":
            text: """Aksiyon barınız %BOOST% aksiyon ikonu kazanır."""
        "Anti-Pursuit Lasers":
            text: """%DE_LARGESHIPONLY%%LINEBREAK%Bir düşman gemisi sizin geminizle çakışmaya sebep olan bir manevra gerçekleştirdikten sonra 1 saldırı zarı atınız. Bir %HIT% veya %CRIT% sonucunda düşman gemisi 1 hasara maruz kalır."""
        "Targeting Computer":
            text: """Aksiyon barınız %TARGETLOCK% aksiyon ikonu kazanır."""
        "Hull Upgrade":
            text: """Zırh (hull) değerinizi 1 arttırınız."""
        "Munitions Failsafe":
            text: """Saldırıyı gerçekleştirmek için kaldırılması talimatı veren bir ikincil silahla saldırırken, onu saldırı isabet edinceye kadar kaldırmayın."""
        "Stygium Particle Accelerator":
            text: """Gizlenme veya görünür olma aksiyonu gerçekleştirirken, ücretsiz bir kaçınma (evade) aksiyonu gerçekleştirebilirsiniz."""
        "Advanced Cloaking Device":
            text: """Bir saldırı gerçekleştirdikten sonra, ücretsiz bir gizlenme aksiyonu gerçekleştirebilirsiniz."""
        "Combat Retrofit":
            text: """<span class="card-restriction">Sadece GR-75.</span>%LINEBREAK%Zırh (hull) değerinizi 2 ve kalkan (shield) değerinizi 1 arttırınız."""
        "B-Wing/E2":
            text: """Geliştirme barınız %CREW% geliştirme ikonu kazanır."""
        "Countermeasures":
            text: """%DE_LARGESHIPONLY%%LINEBREAK%Savaş safhasının başlangıcında, turun sonuna kadar çeviklik (agility) değerinizi 1 arttırmak için bu kartı kaldırınız. Sonrasında geminizden 1 düşman hedefe kilitlenme (target lock) kaldırabilirsiniz."""
        "Experimental Interface":
            text: """Her turda bir defa, bir aksiyon gerçekleştirdikten sonra, bir donatılmış geliştirme kartınızdan ücretsiz <strong>Aksiyon:</strong> başlıklı bir aksiyon gerçekleştirebilirsiniz. Sonrasında 1 stres fişi alınız."""
        "Tactical Jammer":
            text: """%DE_LARGESHIPONLY%%LINEBREAK%Geminiz düşman saldırılarına engel olabilir."""
        "Autothrusters":
            text: """Savunurken, eğer 2 menzilin ötesindeyseniz veya saldıranın ateş yayı dışındaysanız, boş sonuçlarınızdan birini %EVADE% sonucuna değiştirebilirsiniz. Bu kartı sadece %BOOST% aksiyon ikonunuz varsa donatabilirsiniz."""
        "Twin Ion Engine Mk. II":
            text: """Tüm kenar (bank) manevralarını (%BANKLEFT% veya %BANKRIGHT%) yeşil manevra olarak sayabilirsiniz."""
        "Maneuvering Fins":
            text: """<span class="card-restriction">Sadece YV-666.</span>%LINEBREAK%Bir dönüş (turn) manevrası açıkladığınızda (%TURNLEFT% veya %TURNRIGHT%), kadranınızı aynı hızda eşdeğer kenar (bank) manevrasına (%BANKLEFT% or %BANKRIGHT%) çevirebilirsiniz."""
        "Ion Projector":
            text: """%LARGESHIPONLY%%LINEBREAK%Bir düşman gemisi geminizle çakışan bir manevra gerçekleştirdikten sonra 1 saldırı zarı atınız. %HIT% veya %CRIT% sonucunda bu düşman gemisi 1 iyon fişi alır."""
        'Integrated Astromech':
            text: '''<span class="card-restriction">Sadece X-wing.</span>%LINEBREAK%Bir Hasar kartına maruz kaldığınızda, %ASTROMECH% Geliştirme kartlarınızdan birini bu Hasar kartını kaldırmak için kaldırabilirsiniz.'''
        'Optimized Generators':
            text: '''%HUGESHIPONLY%%LINEBREAK%Her turda bir defa, kuşanılan bir Geliştirme kartına bir enerji atadığınızda 2 enerji kazanınız.'''
        'Automated Protocols':
            text: '''%HUGESHIPONLY%%LINEBREAK%Her turda bir defa, iyileşme veya takviye aksiyonu olmayan bir aksiyon gerçekleştirdikten sonra, ücretsiz bir iyileşme veya takviye aksiyonu gerçekleştirmek için 1 enerji harcayabilirsiniz.'''
        'Ordnance Tubes':
            text: '''%HUGESHIPONLY%%LINEBREAK%%HARDPOINT% geliştirme ikonlarınızın herbirini %TORPEDO% veya %MISSILE% ikonu olarak sayabilirsiniz.%LINEBREAK%%TORPEDO% veya %MISSILE% Geliştirme kartlarınızı kaldırma talimatı verildiğinde kartınızı kaldırmayınız.'''
        'Long-Range Scanners':
            text: '''3 menzil veya ötesindeki gemilere hedefe kilitlenme (target lock) edinebilirsiniz. 1-2 menzildeki gemilere hedefe kilitlenme edinemezsiniz. Bu kartı sadece geliştirme barınızda %TORPEDO% veya %MISSILE% varsa donatabilirsiniz.'''
        "Guidance Chips":
            text: """Her turda bir defa, bir %TORPEDO% veya %MISSILE% ikincil silahınızla saldırırken, 1 zar sonucunu bir %HIT% sonucuna çevirebilirsiniz (veya birincil silahınızın değeri "3" veya daha fazla ise bir %CRIT% sonucu)."""
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
            text: """<span class="card-restriction">Sadece Firespray-31.</span>%LINEBREAK%Geliştirme barınız %TORPEDO% geliştirme ikonu kazanır."""
        "Millennium Falcon":
            text: """<span class="card-restriction">Sadece YT-1300.</span>%LINEBREAK%Aksiyon barınız %EVADE% aksiyon ikonu kazanır."""
        "Moldy Crow":
            text: """<span class="card-restriction">Sadece HWK-290.</span>%LINEBREAK%Son safha sırasında, kullanılmayan odaklanma (focus) fişlerinizi geminizden kaldırmayınız."""
        "ST-321":
            text: """<span class="card-restriction"><em>Sadece Lambda</em>-sınıfı Mekik.</span>%LINEBREAK%Hedefe Kilitlenme (target lock) yaparken oyun alanındaki herhangi bir gemiye kilitlenebilirsiniz."""
        "Royal Guard TIE":
            text: """<span class="card-restriction">Sadece TIE Interceptor.</span>%LINEBREAK%2 taneye kadar farklı modifiye geliştirmesi donatılabilirsiniz (1 tane yerine).%LINEBREAK%Eğer pilot yetenek değeriniz "4" veya altındaysa bu kartı donatılamazsınız."""
        "Dodonna's Pride":
            text: """<span class="card-restriction">Sadece CR90 ön kısmı.</span>%LINEBREAK%Bir koordinat aksiyonu gerçekleştirdiğinizde 2 tane dost gemi seçebilirsiniz (1 tane yerine). Bu gemilerin her ikisi de 1 ücretsiz aksiyon gerçekleştirir."""
        "A-Wing Test Pilot":
            text: """<span class="card-restriction">Sadece A-Wing.</span>%LINEBREAK%Geliştirme barınız bir %ELITE% geliştirme ikonu alır.%LINEBREAK%2 tane aynı %ELITE% geliştirme kartı donatılamazsınız. Eğer pilot yetenek değeriniz "1" veya altındaysa bu kartı donatılamazsınız."""
        "Tantive IV":
            text: """<span class="card-restriction">Sadece CR90 ön kısmı.</span>%LINEBREAK%Ön kısım geliştirme barı fazladan 1 %CREW% ve fazladan 1 %TEAM% geliştirme ikonu kazanır."""
        "Bright Hope":
            text: """<span class="card-restriction">Sadece GR-75.</span>%LINEBREAK%Ön kısmınıza atanan bir takviye aksiyonu 2 %EVADE% sonucu ekler (1 yerine)."""
        "Quantum Storm":
            text: """<span class="card-restriction">Sadece GR-75.</span>%LINEBREAK%Son safhanın başlangıcında, eğer 1 veya daha az enerji fişiniz varsa, 1 enerji fişi kazanın."""
        "Dutyfree":
            text: """<span class="card-restriction">Sadece GR-75.</span>%LINEBREAK%Bir sıkıştırma (jam) aksiyonu gerçekleştirirken, 1-3 menzilde bir düşman gemisi seçebilirsiniz (1-2 menzil yerine)."""
        "Jaina's Light":
            text: """<span class="card-restriction">Sadece CR90 ön kısmı.</span>%LINEBREAK%Savunurken, her saldırıda bir, açık bir Hasar kartına maruz kaldıysanız onu kaldırıp başka bir açık Hasar kartı çekebilirsiniz."""
        "Outrider":
            text: """<span class="card-restriction">Sadece YT-2400.</span>%LINEBREAK%Bir %CANNON% geliştirme kartı donatılmışsanız, birincil silah saldırıları <strong>gerçekleştiremezsiniz</strong> ve ateş yayınızın dışındaki gemilere karşı %CANNON% ikincil silah saldırıları gerçekleştirebilirsiniz."""
        "Dauntless":
            text: """<span class="card-restriction">Sadece VT-49 Decimator.</span>%LINEBREAK%Başka bir gemi ile çakışan bir manevra yaptıktan sonra 1 ücretsiz aksiyon gerçekleştirebilirsiniz. Sonrasında 1 stres fişi alınız."""
        "Virago":
            text: """<span class="card-restriction">Sadece StarViper.</span>%LINEBREAK%Geliştirme barınız %SYSTEM% ve %ILLICIT% geliştirme ikonları kazanır.%LINEBREAK%Eğer pilot yetenek değeriniz "3" veya altındaysa bu kartı donatılamazsınız."""
        '"Heavy Scyk" Interceptor (Cannon)':
            text: """<span class="card-restriction">Sadece M3-A Interceptor.</span>%LINEBREAK%Geliştirme barınız %CANNON%, %TORPEDO% veya %MISSILE% geliştirme ikonu kazanır."""
        '"Heavy Scyk" Interceptor (Torpedo)':
            text: """<span class="card-restriction">Sadece M3-A Interceptor.</span>%LINEBREAK%Geliştirme barınız %CANNON%, %TORPEDO% veya %MISSILE% geliştirme ikonu kazanır."""
        '"Heavy Scyk" Interceptor (Missile)':
            text: """<span class="card-restriction">Sadece M3-A Interceptor.</span>%LINEBREAK%Geliştirme barınız %CANNON%, %TORPEDO% veya %MISSILE% geliştirme ikonu kazanır."""
        "IG-2000":
            text: """<span class="card-restriction">Sadece Aggressor.</span>%LINEBREAK%<em>IG-2000</em> geliştirme kartı bulunan diğer tüm dost gemilerin pilot yeteneklerine sahip olursunuz(kendi pilot yeteneğinize ek olarak)."""
        "BTL-A4 Y-Wing":
            text: """<span class="card-restriction">Sadece Y-Wing.</span>%LINEBREAK%Ateş yayınızın dışındaki gemilere saldıramazsınız. Birincil silah saldırısı gerçekleştirdikten sonra, hemen %TURRET% ikincil silahınızla saldırı gerçekleştirebilirsiniz."""
        "Andrasta":
            text: """<span class="card-restriction">Sadece Firespray-31.</span>%LINEBREAK%Geliştirme barınız fazladan iki %BOMB% geliştirme ikonu kazanır."""
        "TIE/x1":
            text: """<span class="card-restriction">Sadece TIE Advanced.</span>%LINEBREAK%Geliştirme barınız %SYSTEM% geliştirme ikonu kazanır.%LINEBREAK%Eğer %SYSTEM% geliştirmesi donatılmışsanız, takım puan maliyeti "4" düşürülür (minimum "0"a)."""
        "Ghost":
            text: """<span class="card-restriction">Sadece VCX-100.</span>%LINEBREAK%<em>Phantom</em> ünvan kartını bir dost Saldırı Mekiğine (Attack Shuttle) donatın ve onu bu gemiye kenetleyin.%LINEBREAK%Bir manevra gerçekleştirdikten sonra, onu sizin arka kılavuzunuzdan konuşlandırabilirsiniz."""
        "Phantom":
            text: """Kenetlenmişseniz, <em>Ghost</em> özel ateş yayından birincil silah saldırıları gerçekleştirebilir ve Savaş safhasının sonunda donatılmış %TURRET% ile fazladan bir saldırı gerçekleştirebilir. Eğer bu saldırıyı gerçekleştirirse, bu turda tekrar saldıramaz."""
        "TIE/v1":
            text: """<span class="card-restriction">Sadece TIE Advanced Prototip.</span>%LINEBREAK%Hedefe kilitlenme (target lock) edindikten sonra, ücretsiz bir kaçınma (evade) aksiyonu gerçekleştirebilirsiniz."""
        "Mist Hunter":
            text: """<span class="card-restriction">Sadece G-1A starfighter.</span>%LINEBREAK%Geliştirme barınız %BARRELROLL% geliştirme ikonu kazanır.%LINEBREAK%Bir tane "Tractor Beam" geliştirme kartı donatılmak <strong>zorundasınız</strong> (takım puan maliyetini normal ödersiniz)."""
        "Punishing One":
            text: """<span class="card-restriction">Sadece JumpMaster 5000.</span>%LINEBREAK%Birincil silah değerinizi 1 arttırın."""
        "Assailer":
            text: """<span class="card-restriction"><em>Sadece Raider</em>-class corvette arka kısmı.</span>%LINEBREAK%Savunurken, hedef alınan kısım takviye (reinforce) fişine sahipse, 1 %FOCUS% sonucunuzu bir %EVADE% sonucuna değiştirebilirsiniz."""
        "Instigator":
            text: """<span class="card-restriction"><em>Sadece Raider</em>-class corvette arka kısmı.</span>%LINEBREAK%Bir geri kazanma (recover) aksiyonu gerçekleştirdikten sonra, fazladan 1 kalkan (shield) geri kazanın."""
        "Impetuous":
            text: """<span class="card-restriction"><em>Sadece Raider</em>-class corvette arka kısmı.</span>%LINEBREAK%Bir düşman gemisini yokeden bir saldırı gerçeleştirdikten sonra, bir hedefe kilitlenme (target lock) edinirsiniz."""
        'TIE/x7':
            text: '''<span class="card-restriction">Sadece TIE Defender.</span>%LINEBREAK%Geliştirme barınız %CANNON% ve %MISSILE% geliştirme ikonlarını kaybeder.%LINEBREAK%Bir 3-, 4- veya 5- hızlı manevra gerçekleştirdikten sonra, geminize 1 kaçınma (evade) fişi atayabilirsiniz.'''
        'TIE/D':
            text: '''<span class="card-restriction">Sadece TIE Defender.</span>%LINEBREAK%Her turda bir defa, 3 veya daha az takım puan maliyeti olan bir %CANNON% ikincil silahla bir saldırı gerçekleştirdikten sonra, bir birincil silah saldırısı gerçekleştirebilirsiniz.'''
        'TIE Shuttle':
            text: '''<span class="card-restriction">Sadece TIE Bomber.</span>%LINEBREAK%Geliştirme barınız tüm %TORPEDO%, %MISSILE% ve %BOMB% geliştirme ikonlarını kaybeder ve 2 %CREW% geliştirme ikonu kazanır.  4 takım puanından daha maliyetli bir %CREW% geliştirme kartı donatılamazsınız.'''
        'Requiem':
            text: '''%GOZANTIONLY%%LINEBREAK%Bir gemi konuşlandırdığınızda, turun sonuna kadar onun pilot yetenek değerini "8" varsayın.'''
        'Vector':
            text: '''%GOZANTIONLY%%LINEBREAK%ABir manevra gerçekleştirdikten sonra, 4 tane bağlı gemi konuşlandırabilirsiniz (2 tane yerine).'''
        'Suppressor':
            text: '''%GOZANTIONLY%%LINEBREAK%Her turda bir defa, bir hedefe kilitlenme (target lock) elde ettikten sonra, bu gemiden 1 odaklanma (focus), kaçınma (evade) veya mavi hedefe kilitlenme fişi kaldırabilirsiniz.'''
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
