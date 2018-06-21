exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.ru = 'Русский'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations['Русский'] =
    action:
        "Barrel Roll": "Бочка"
        "Boost": "Ускорение"
        "Evade": "Уклонение"
        "Focus": "Концентрация"
        "Target Lock": "Захват цели"
        "Recover": "Восстановление"
        "Reinforce": "Усиление"
        "Jam": "Заклинивание"
        "Coordinate": "Координирование"
        "Cloak": "Маскировка"
    slot:
        "Astromech": "Дроид-астромех"
        "Bomb": "Бомба"
        "Cannon": "Пушка"
        "Crew": "Экипаж"
        "Elite": "Элитный навык"
        "Missile": "Ракета"
        "System": "Система"
        "Torpedo": "Торпеда"
        "Turret": "Турель"
        "Cargo": "Груз"
        "Hardpoint": "Тяжелая установка"
        "Team": "Команда"
        "Illicit": "Незаконное"
        "Salvaged Astromech": "Трофейный астромех"
        "Tech": "Техника"
    sources: # needed?
        "Core": "Базовый набор"
        "A-Wing Expansion Pack": "Дополнение А-Крыл"
        "B-Wing Expansion Pack": "Дополнение Б-Крыл"
        "X-Wing Expansion Pack": "Дополнение Икс-Крыл"
        "Y-Wing Expansion Pack": "Дополнение У-Крыл"
        "Millennium Falcon Expansion Pack": "Дополнение Тысячелетний Сокол"
        "HWK-290 Expansion Pack": "Дополнение HWK-290"
        "TIE Fighter Expansion Pack": "Дополнение TIE-истребитель"
        "TIE Interceptor Expansion Pack": "Дополнение TIE-перехватчик"
        "TIE Bomber Expansion Pack": "Дополнение TIE-бомбардировщик"
        "TIE Advanced Expansion Pack": "Дополнение TIE-улучшенный"
        "Lambda-Class Shuttle Expansion Pack": "Дополнение Шаттл класса Лямбда"
        "Slave I Expansion Pack": "Дополнение Раб-1"
        "Imperial Aces Expansion Pack": "Дополнение Имперские асы"
        "Rebel Transport Expansion Pack": "Дополнение Транспорт повстанцев"
        "Z-95 Headhunter Expansion Pack": "Дополнение Z-95 Охотник за головами"
        "TIE Defender Expansion Pack": "Дополнение TIE-защитник"
        "E-Wing Expansion Pack": "Дополнение Е-Крыл"
        "TIE Phantom Expansion Pack": "Дополнение TIE-фантом"
        "Tantive IV Expansion Pack": "Дополнение Тантив IV"
        "Rebel Aces Expansion Pack": "Дополнение Асы повстанцев"
        "YT-2400 Freighter Expansion Pack": "Дополнение Грузовоз YT-2400"
        "VT-49 Decimator Expansion Pack": "Дополнение VT-49 Дециматор"
        "StarViper Expansion Pack": "Дополнение Звездная Гадюка"
        "M3-A Interceptor Expansion Pack": "Дополнение Перехватчик M3-A"
        "IG-2000 Expansion Pack": "Дополнение IG-2000"
        "Most Wanted Expansion Pack": "Дополнение Самые разыскиваемые"
        "Imperial Raider Expansion Pack": "Дополнение Имперский рейдер"
        "K-Wing Expansion Pack": "Дополнение К-Крыл"
        "TIE Punisher Expansion Pack": "Дополнение TIE-каратель"
        "Kihraxz Fighter Expansion Pack": "Дополнение Истребитель Кихраксз"
        "Hound's Tooth Expansion Pack": "Дополнение Зуб Гончей"
        "The Force Awakens Core Set": "Базовый набор Пробуждение Силы"
        "T-70 X-Wing Expansion Pack": "Дополнение Икс-Крыл T-70"
        "TIE/fo Fighter Expansion Pack": "Дополнение Истребитель TIE/пп"
        "Imperial Assault Carrier Expansion Pack": "Дополнение Имперский штурмовой носитель"
        "Ghost Expansion Pack": "Дополнение Призрак"
        "Inquisitor's TIE Expansion Pack": "Дополнение TIE инквизитора"
        "Mist Hunter Expansion Pack": "Дополнение Туманный охотник"
        "Punishing One Expansion Pack": "Дополнение Карающий Один"
        "Imperial Veterans Expansion Pack": "Дополнение Имперские ветераны"
        "Protectorate Starfighter Expansion Pack": "Дополнение Звездный истребитель Протектората"
        "Shadow Caster Expansion Pack": "Дополнение Наводящий Тень"
        "Special Forces TIE Expansion Pack": "Дополнение TIE специальных сил"
        "ARC-170 Expansion Pack": "Дополнение ARC-170"
        "U-Wing Expansion Pack": "Дополнение Ю-Крыл"
        "TIE Striker Expansion Pack": "Дополнение TIE-ударник"
        "Upsilon-class Shuttle Expansion Pack": "Дополнение Шаттл класса Ипсилон"
        "Sabine's TIE Fighter Expansion Pack": "Дополнение TIE-истребитель Сабины"
        "Quadjumper Expansion Pack": "Дополнение Квадджампер"
        "C-ROC Cruiser Expansion Pack": "Дополнение Крейсер C-ROC"
        "TIE Aggressor Expansion Pack": "Дополнение TIE-агрессор"
        "Scurrg H-6 Bomber Expansion Pack": "Дополнение Бомбардировщик Скуррг H-6"
        "Auzituck Gunship Expansion Pack": "Дополнение Канонерка Озитук"
        "TIE Silencer Expansion Pack": "Дополнение TIE-глушитель"
        "Alpha-class Star Wing Expansion Pack": "Pасширение Звездноое Крыло Альфа-класса"
        "Resistance Bomber Expansion Pack": "Дополнение Бомбардировщик сопротивления"
        "Phantom II Expansion Pack": "Дополнение Фантом II"
        "Kimogila Fighter Expansion Pack": "Дополнение Истребитель Кимогила"
    ui:
        shipSelectorPlaceholder: "Выбор корабля"
        pilotSelectorPlaceholder: "Выбор пилота"
        upgradePlaceholder: (translator, language, slot) ->
            switch slot
                when 'Elite'
                    "Элитный навык"
                when 'Astromech'
                    "Астромех"
                when 'Illicit'
                    "Незаконное"
                when 'Salvaged Astromech'
                    "Трофейный астромех"
                else
                    "Нет улучшения #{translator language, 'slot', slot}"
        modificationPlaceholder: "Модификация"
        titlePlaceholder: "Название"
        upgradeHeader: (translator, language, slot) ->
            switch slot
                when 'Elite'
                    "Элитный навык"
                when 'Astromech'
                    "Дроид-астромех"
                when 'Illicit'
                    "Незаконное"
                when 'Salvaged Astromech'
                    "Трофейный дроид-астромех"
                else
                    "Улучшение #{translator language, 'slot', slot}"
        unreleased: "не выпущено"
        epic: "эпик"
    byCSSSelector:
        # Warnings
        '.unreleased-content-used .translated': 'Этот отряд использует неизданный контент!'
        '.epic-content-used .translated': 'Этот отряд использует эпический контент!'
        '.illegal-epic-too-many-small-ships .translated': 'Вы не можете использовать более 12 малых кораблей одного типа!'
        '.illegal-epic-too-many-large-ships .translated': 'Вы не можете использовать более 6 больших кораблей одного типа!'
        '.collection-invalid .translated': 'Вы не можете использовать этот лист с вашей коллекцией!'
        # Type selector
        '.game-type-selector option[value="standard"]': 'Стандарт'
        '.game-type-selector option[value="custom"]': 'Свой'
        '.game-type-selector option[value="epic"]': 'Эпик'
        '.game-type-selector option[value="team-epic"]': 'Командный эпик'
        '.xwing-card-browser .translate.sort-cards-by': 'Сортировать по'
        '.xwing-card-browser option[value="name"]': 'Названию'
        '.xwing-card-browser option[value="source"]': 'Источнику'
        '.xwing-card-browser option[value="type-by-points"]': 'Типу (по очкам)'
        '.xwing-card-browser option[value="type-by-name"]': 'Типу (по названию)'
        '.xwing-card-browser .translate.select-a-card': 'Выберите карту из списка слева.'
        # Info well
        '.info-well .info-ship td.info-header': 'Корабль'
        '.info-well .info-skill td.info-header': 'Умение'
        '.info-well .info-actions td.info-header': 'Действия'
        '.info-well .info-upgrades td.info-header': 'Улучшения'
        '.info-well .info-range td.info-header': 'Дистанция'
        # Squadron edit buttons
        '.clear-squad' : 'Новая эскадрилья'
        '.save-list' : 'Сохранить'
        '.save-list-as' : 'Сохранить как...'
        '.delete-list' : 'Удалить'
        '.backend-list-my-squads' : 'Загрузить эскадрилью'
        '.view-as-text' : '<span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Imprimir/Ver como </span>Text'
        '.randomize' : 'Случайный'
        '.randomize-options' : 'Случайные опции…'
        '.notes-container > span' : 'Примечания отряда'
        # Print/View modal
        '.bbcode-list' : 'Скопируйте BBCode ниже и вставьте его в сообщение своего форума.<textarea></textarea><button class="btn btn-copy">Copia</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Copia</button>'
        '.vertical-space-checkbox' : """Добавить место для письма с ухудшением / улучшением при печати. <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Цветная печать. <input type="checkbox" class="toggle-color-print" />"""
        '.print-list' : '<i class="fa fa-print"></i>&nbsp;Imprimir'
        # Randomizer options
        '.do-randomize' : 'Сгенерировать случайным образом'
        # Top tab bar
        '#empireTab' : 'Галактическая Империя'
        '#rebelTab' : 'Альянс повстанцев'
        '#scumTab' : 'Пираты'
        '#browserTab' : 'Поиск по картам'
        '#aboutTab' : 'О нас'
    singular:
        'pilots': 'Пилоты'
        'modifications': 'Модификации'
        'titles': 'Названия'
    types:
        'Pilot': 'Пилот'
        'Modification': 'Модификация'
        'Title': 'Название'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders['Русский'] = () ->
    exportObj.cardLanguage = 'Русский'

    # Assumes cards-common has been loaded
    basic_cards = exportObj.basicCardData()
    exportObj.canonicalizeShipNames basic_cards

    exportObj.ships = basic_cards.ships

    # ship translations
    exportObj.renameShip 'Lambda-Class Shuttle', 'Шаттл класса Лямбда'
    exportObj.renameShip 'TIE Advanced', 'TIE улучшенный'
    exportObj.renameShip 'TIE Bomber', 'TIE бомбардировщик'
    exportObj.renameShip 'TIE Fighter', 'TIE истребитель'
    exportObj.renameShip 'TIE Interceptor', 'TIE перехватчик'
    exportObj.renameShip 'TIE Phantom', 'TIE фантом'
    exportObj.renameShip 'TIE Defender', 'TIE защитник'
    exportObj.renameShip 'TIE Punisher', 'TIE каратель'
    exportObj.renameShip 'TIE Advanced Prototype', 'TIE улучшенный прототип'
    exportObj.renameShip 'VT-49 Decimator', 'VT-49 Дециматор'
    exportObj.renameShip 'TIE/fo Fighter', 'Истребитель TIE/пп'
    exportObj.renameShip 'TIE/sf Fighter', 'Истребитель TIE/сс'
    exportObj.renameShip 'TIE Striker', 'TIE ударник'
    exportObj.renameShip 'Upsilon-class Shuttle', 'Шаттл класса Ипсилон'
    exportObj.renameShip 'TIE Aggressor', 'TIE агрессор'
    exportObj.renameShip 'TIE Silencer', 'TIE глушитель'
    exportObj.renameShip 'Alpha-class Star Wing', 'Звездное Крыло класса Альфа'
    exportObj.renameShip 'A-Wing', 'А-Крыл'
    exportObj.renameShip 'B-Wing', 'Б-Крыл'
    exportObj.renameShip 'E-Wing', 'Е-Крыл'
    exportObj.renameShip 'X-Wing', 'Икс-Крыл'
    exportObj.renameShip 'Y-Wing', 'У-Крыл'
    exportObj.renameShip 'K-Wing', 'К-Крыл'
    exportObj.renameShip 'Z-95 Headhunter', 'Z-95 охотник за головами'
    exportObj.renameShip 'Attack Shuttle', 'Атакующий шаттл'
    exportObj.renameShip 'CR90 Corvette (Aft)', 'Корвет CR90 (Корма)'
    exportObj.renameShip 'CR90 Corvette (Fore)', 'Корвет CR90 (Нос)'
    exportObj.renameShip 'GR-75 Medium Transport', 'Средний транспорт GR-75'
    exportObj.renameShip 'T-70 X-Wing', 'Икс-Крыл T-70'
    exportObj.renameShip 'U-Wing', 'Ю-Крыл'
    exportObj.renameShip 'Auzituck Gunship', 'Канонерка Озитук'
    exportObj.renameShip 'B/SF-17 Bomber', 'Бомбардировщик B/SF-17'
    exportObj.renameShip 'Sheathipede-class Shuttle', 'Шаттл класса Колчан'
    exportObj.renameShip 'M3-A Interceptor', 'Перехватчик M3-A'
    exportObj.renameShip 'StarViper', 'Звездная Гадюка'
    exportObj.renameShip 'Aggressor', 'Агрессор'
    exportObj.renameShip 'Kihraxz Fighter', 'Истребитель Кихраксз'
    exportObj.renameShip 'G-1A Starfighter', 'Звездный истребитель G-1A'
    exportObj.renameShip 'JumpMaster 5000', 'Джампмастер 5000'
    exportObj.renameShip 'Protectorate Starfighter', 'Звездный истребитель Протектората'
    exportObj.renameShip 'Lancer-class Pursuit Craft', 'Транспорт преследования класса Копьеносец'
    exportObj.renameShip 'Quadjumper', 'Квадджампер'
    exportObj.renameShip 'C-ROC Cruiser', 'Крейсер C-ROC'
    exportObj.renameShip 'Scurrg H-6 Bomber', 'Бомбардировщик Скуррг H-6'
    exportObj.renameShip 'M12-L Kimogila Fighter', 'Истребитель M12-L Кимогила'

    pilot_translations =
        "Wedge Antilles":
            name: "Ведж Антиллес"
            text: """При атаке сократите параметр маневренности защищающегося на 1 (но не ниже 0)."""
            ship: "Икс-Крыл"
        "Garven Dreis":
            name: "Гарвен Дрейс"
            text: """Применив жетон концентрации, вы можете положить его на любой дружественный корабль на расстоянии 1-2 (вместо того, чтобы его сбросить)"""
            ship: "Икс-Крыл"
        "Red Squadron Pilot":
            name: "Пилот Красной эскадрильи"
            ship: "Икс-Крыл"
        "Rookie Pilot":
            name: "Пилот новичок"
            ship: "Икс-Крыл"
        "Biggs Darklighter":
            name: "Биггс Дарклайтер"
            text: """Один раз за игру, в начале фазы Боя, вы можете выбрать, чтобы другие дружественные корабли на расстоянии 1 не могли быть выбраны целью атаки, если вместо них атакующий может выбрать вас целью."""
            ship: "Икс-Крыл"
        "Luke Skywalker":
            name: "Люк Скайуокер"
            text: """При защите вы можете заменить 1 результат %FOCUS% на результат %EVADE%."""
            ship: "Икс-Крыл"
        "Gray Squadron Pilot":
            name: "Пилот Серой эскадрильи"
            ship: "У-Крыл"
        '"Dutch" Vander':
            name: "Датч Вандер"
            text: """После получения захвата цели, выберите другой дружественный корабль на расстоянии 1-2. Выбранный корабль может немедленно получить захват цели."""
            ship: "У-Крыл"
        "Horton Salm":
            name: "Хортон Сальм"
            text: """Атакуя на расстоянии 2-3, вы можете перебросить все пустые результаты"""
            ship: "У-Крыл"
        "Gold Squadron Pilot":
            name: "Пилот Золотой эскадрильи"
            ship: "У-Крыл"
        "Academy Pilot":
            name: "Пилот академии"
            ship: "TIE истребитель"
        "Obsidian Squadron Pilot":
            name: "Пилот Обсидиановой эскадрильи"
            ship: "TIE истребитель"
        "Black Squadron Pilot":
            name: "Пилот Черной эскадрильи"
            ship: "TIE истребитель"
        '"Winged Gundark"':
            name: '"Крылатый Гандарк"'
            text: """Атакуя на расстоянии 1, вы можете изменить 1 результат %HIT% на результат %CRIT%"""
            ship: "TIE истребитель"
        '"Night Beast"':
            name: '"Ночной Зверь"'
            text: """После выполнения зеленого маневра, вы можете выполнить свободное действие Концентрации"""
            ship: "TIE истребитель"
        '"Backstabber"':
            name: '"Ударяющий в спину"'
            text: """Атакуя вне арки огня защищающегося, можете бросить 1 дополнительный кубик атаки"""
            ship: "TIE истребитель"
        '"Dark Curse"':
            name: '"Темное проклятье"'
            text: """Когда вы защищаетесь в фазу боя, атакующие корабли не могут тратить жетоны Концентрации или перебрасывать кубики атаки"""
            ship: "TIE истребитель"
        '"Mauler Mithel"':
            name: '"Кувалда Мител"'
            text: """ Атакуя на расстоянии 1, можете бросить 1 дополнительный кубик атаки."""
            ship: "TIE истребитель"
        '"Howlrunner"':
            name: '"Хоулраннер"'
            text: """Когда другой дружественный корабль атакует основным оружием на расстоянии 1, он может перебросить 1 кубик атаки"""
            ship: "TIE истребитель"
        "Tempest Squadron Pilot":
            name: "Пилот эскадрильи Буря"
            ship: "TIE улучшенный"
        "Storm Squadron Pilot":
            name: "Пилот эскадрильи Шторм"
            ship: "TIE улучшенный"
        "Maarek Stele":
            name: "Маарек Стил"
            text: """Когда ваша атака наносит противнику карточку повреждения лицом вверх, вместо этого вытяните 3 карты лицом вверх, выберите одну и сбросьте остальные."""
            ship: "TIE улучшенный"
        "Darth Vader":
            name: "Дарт Вейдер"
            text: """Во время шага «Выполнение действия» вы можете выполнить 2 действия."""
            ship: "TIE улучшенный"
        "Alpha Squadron Pilot":
            name: "Пилот эскадрильи Альфа"
            ship: "TIE перехватчик"
        "Avenger Squadron Pilot":
            name: "Пилот эскадрильи Мститель"
            ship: "TIE перехватчик"
        "Saber Squadron Pilot":
            name: "Пилот эскадрильи Сабля"
            ship: "TIE перехватчик"
        "\"Fel's Wrath\"":
            name: '"Ярость Фела"'
            ship: "TIE перехватчик"
            text: """Когда число карт повреждений корабля равно или превышает значение Прочности, корабль не уничтожен до конца фазы Боя."""
        "Turr Phennir":
            name: "Турр Феннир"
            ship: "TIE перехватчик"
            text: """После проведения атаки, вы можете выполнить свободное действие Бочка или Ускорение."""
        "Soontir Fel":
            name: "Сунтир Фел"
            ship: "TIE перехватчик"
            text: """Когда вы получаете жетон Стресса, вы можете назначить 1 жетон Концентрации на ваш корабль."""
        "Tycho Celchu":
            name: "Тайко Селчу"
            text: """Вы можете выполнять действия даже имея жетоны Стресса."""
            ship: "А-Крыл"
        "Arvel Crynyd":
            name: "Арвел Кринид"
            text: """Вы можете назначать корабль противника, которого касаетесь, целью атаки."""
            ship: "А-Крыл"
        "Green Squadron Pilot":
            name: "Пилот Зеленой эскадрильи"
            ship: "А-Крыл"
        "Prototype Pilot":
            name: "Пилот прототипа"
            ship: "А-Крыл"
        "Outer Rim Smuggler":
            name: "Контрабандист Внешнего Кольца"
        "Chewbacca":
            name: "Чубакка"
            text: """Когда вы получаете карту повреждений лицом вверх, немедленно переверните ее лицом вниз (не отрабатывая ее эффект)."""
        "Lando Calrissian":
            name: "Лэндо Калриссиан"
            text: """После выполнения зеленого маневра, выберите 1 другой дружественный корабль на расстоянии 1. Этот корабль может выполнить 1 свободное действие, отображенное в его списке действий."""
        "Han Solo":
            name: "Хан Соло"
            text: """Атакуя, вы можете перебросить все кубики атаки. Делая это, вы должны перебросить столько кубиков, сколько возможно."""
        "Bounty Hunter":
            name: "Охотник за головами"
        "Kath Scarlet":
            name: "Кат Скарлет"
            text: """При атаке, защищающийся получает 1 жетон Стресса если он отменяет хотя бы 1 результат %CRIT%."""
        "Boba Fett":
            name: "Боба Фетт"
            text: """Когда вы выполняете маневр крена (%BANKLEFT% или %BANKRIGHT%), вы можете повернуть диск маневра на другой маневр крена с той же скоростью."""
        "Krassis Trelix":
            name: "Крассис Треликс"
            text: """Атакуя вспомогательным оружием, вы можете перебросить 1 кубик атаки."""
        "Ten Numb":
            name: "Тен Намб"
            text: """При атаке 1 из ваших результатов %CRIT% не может быть отменен кубиком защиты."""
            ship: "Б-Крыл"
        "Ibtisam":
            name: "Ибитсам"
            text: """При атаке или защите, если у вас есть хотя бы 1 жетон Стресса, вы можете перебросить 1 из ваших кубиков."""
            ship: "Б-Крыл"
        "Dagger Squadron Pilot":
            name: "Пилот эскадрильи Кинжал"
            ship: "Б-Крыл"
        "Blue Squadron Pilot":
            name: "Пилот Синей эскадрильи"
            ship: "Б-Крыл"
        "Rebel Operative":
            name: "Повстанец-оперативник"
            ship: "HWK-290"
        "Roark Garnet":
            name: "Роарк Гарнет"
            text: """В начале фазы Боя, выберите 1 дружественный корабль на расстоянии 1-3. До конца фазы считайте навык Пилотирования этого корабля равным 12."""
            ship: "HWK-290"
        "Kyle Katarn":
            name: "Кайл Катарн"
            text: """В начале фазы боя вы можете назначить 1 из ваших жетонов Концентрации на другой дружественный корабль на расстоянии 1-3."""
            ship: "HWK-290"
        "Jan Ors":
            name: "Джан Орс"
            text: """Когда другой дружественный корабль на расстоянии 1-3 выполняет атаку, если у вас нет жетона Стресса, вы можете получить 1 жетон Стресса чтобы позволить дружественному кораблю бросить 1 дополнительный кубик атаки."""
            ship: "HWK-290"
        "Scimitar Squadron Pilot":
            name: "Пилот эскадрильи Ятаган"
            ship: "TIE бомбардировщик"
        "Gamma Squadron Pilot":
            name: "Пилот эскадрильи Гамма"
            ship: "TIE бомбардировщик"
        "Gamma Squadron Veteran":
            name: "Ветеран эскадрильи Гамма"
            ship: "TIE бомбардировщик"
        "Captain Jonus":
            name: "Капитан Джонус"
            ship: "TIE бомбардировщик"
            text: """Когда другой дружественный корабль на расстоянии 1 атакует вспомогательным оружием, он может перебросить до 2 кубиков атаки."""
        "Major Rhymer":
            name: "Майор Раймер"
            ship: "TIE бомбардировщик"
            text: """Атакуя второстепенным оружием, вы можете увеличить или уменьшить дистанцию оружия на 1 (до значения 1 или 3)."""
        "Omicron Group Pilot":
            name: "Пилот эскадрильи Омикрон"
            ship: "Шаттл класса Лямбда"
        "Captain Kagi":
            name: "Капитан Каги"
            text: """Когда вражеский корабль получает захват цели, он должен делать его на ваш корабль (если может)."""
            ship: "Шаттл класса Лямбда"
        "Colonel Jendon":
            name: "Полковник Джендон"
            text: """ В начале фазы боя вы можете назначить 1 из ваших синих жетонов захвата цели на союзный корабль на расстоянии 1, если у него еще нет синего жетона захвата цели."""
            ship: "Шаттл класса Лямбда"
        "Captain Yorr":
            name: "Капитан Йорр"
            text: """ Когда другой союзный корабль на расстоянии 1-2 получает жетон стресса, если у вас есть 2 жетона стресса или меньше, вы можете получить жетон стресса вместо него."""
            ship: "Шаттл класса Лямбда"
        "Lieutenant Lorrir":
            name: "Лейтенант Лоррир"
            ship: "TIE перехватчик"
            text: """При выполнении бочки, вы можете получить 1 жетон стресса чтобы использовать (%BANKLEFT% 1) или (%BANKRIGHT% 1) вместо (%STRAIGHT% 1)."""
        "Royal Guard Pilot":
            name: "Пилот Королевской Стражи"
            ship: "TIE перехватчик"
        "Tetran Cowall":
            name: "Тетран Коуэлл"
            ship: "TIE перехватчик"
            text: """Когда вы открываете маневр %UTURN%, вы можете считать скорость этого маневра равной 1, 3 или 5."""
        "Kir Kanos":
            name: "Кир Канос"
            ship: "TIE перехватчик"
            text: """Атакуя на расстоянии 2-3, можете потратить 1 жетон уклонения чтобы добавить 1 результат %HIT% к броску."""
        "Carnor Jax":
            name: "Карнор Джакс"
            ship: "TIE перехватчик"
            text: """Вражеские корабли на расстоянии 1 не могут выполнять действия Концентрации и Уклонения, а также не могут использовать жетоны концентрации и уклонения."""
        "GR-75 Medium Transport":
            name: "Средний транспорт GR-75"
            ship: "Средний транспорт GR-75"
        "Bandit Squadron Pilot":
            name: "Пилот эскадрильи Бандит"
            ship: "Z-95 Охотник за головами"
        "Tala Squadron Pilot":
            name: "Пилот эскадрильи Тала"
            ship: "Z-95 Охотник за головами"
        "Lieutenant Blount":
            name: "Лейтенант Блант"
            text: """При атаке считается, что она попала по противнику, даже если он не понес повреждений."""
            ship: "Z-95 Охотник за головами"
        "Airen Cracken":
            name: "Айрен Кракен"
            text: """После выполнения атаки, вы можете выбрать другой дружественный корабль на расстоянии 1. Этот корабль может выполнить 1 свободное действие."""
            ship: "Z-95 Охотник за головами"
        "Delta Squadron Pilot":
            name: "Пилот эскадрильи Дельта"
            ship: "TIE защитник"
        "Onyx Squadron Pilot":
            name: "Пилот эскадрильи Оникс"
            ship: "TIE защитник"
        "Colonel Vessery":
            name: "Полковник Вессери"
            text: """ Когда вы атакуете, сразу после броска кубиков атаки, вы можете назначить захват цели на защищающегося, если на нем уже есть красный жетон захвата."""
            ship: "TIE защитник"
        "Rexler Brath":
            name: "Рекслер Брас"
            text: """Когда вы выполнили атаку, которая нанесла хотя бы 1 карту повреждений защищающемуся, вы можете потратить 1 жетон концентрации, чтобы перевернуть эти карты лицом вверх."""
            ship: "TIE защитник"
        "Knave Squadron Pilot":
            name: "Пилот эскадрильи Негодяй"
            ship: "Е-Крыл"
        "Blackmoon Squadron Pilot":
            name: "Пилот эскадрильи Черная Луна"
            ship: "Е-Крыл"
        "Etahn A'baht":
            name: "Итан А'Бахт"
            text: """Когда вражеский корабль в вашей арке огня и на расстоянии 1-3 защищается, атакующий может заменить 1 результат %HIT% на 1 результат %CRIT%."""
            ship: "Е-Крыл"
        "Corran Horn":
            name: "Корран Хорн"
            text: """В начале фазы Окончания вы можете выполнить 1 атаку. Вы не можете атаковать в следующем ходу."""
            ship: "Е-Крыл"
        "Sigma Squadron Pilot":
            name: "Пилот эскадрильи Сигма"
            ship: "TIE фантом"
        "Shadow Squadron Pilot":
            name: "Пилот эскадрильи Тень"
            ship: "TIE фантом"
        '"Echo"':
            name: '"Эхо"'
            text: """При снятии маскировки, вы должны использовать (%BANKLEFT% 2) или (%BANKRIGHT% 2) вместо (%STRAIGHT% 2)."""
            ship: "TIE фантом"
        '"Whisper"':
            name: '"Шепот"'
            text: """После выполнения атаки, завершившейся попаданием, вы можете назначить 1 жетон концентрации на ваш корабль."""
            ship: "TIE фантом"
        "CR90 Corvette (Fore)":
            name: "Корвет CR90 (Нос)"
            ship: "Корвет CR90 (Нос)"
            text: """Атакуя основным оружием, вы можете потратить 1 энергии, чтобы бросить 1 дополнительный кубик атаки."""
        "CR90 Corvette (Aft)":
            name: "Корвет CR90 (Корма)"
            ship: "Корвет CR90 (Корма)"
        "Wes Janson":
            name: "Вес Дженсон"
            text: """После выполнения атаки, вы можете снять 1 жетон концентрации, уклонения или синий жетон захвата цели с защищавшегося."""
            ship: "Икс-Крыл"
        "Jek Porkins":
            name: "Джек Поркинс"
            text: """При получении жетона Стресса, вы можете убрать его и бросить 1 кубик атаки. При результате %HIT%, получите 1 карту повреждения на этот корабль лицом вниз."""
            ship: "Икс-Крыл"
        '"Hobbie" Klivian':
            name: "Хобби Кливиан"
            text: """При получении или использовании захвата цели, вы можете убрать 1 жетон Стресса."""
            ship: "Икс-Крыл"
        "Tarn Mison":
            name: "Тарн Майсон"
            text: """ Когда вражеский корабль объявляет вас объектом атаки, вы можете установить захват цели на этот корабль."""
            ship: "Икс-Крыл"
        "Jake Farrell":
            name: "Джек Фаррелл"
            text: """ После того, как вы выполните действие Концентрации или вам назначен жетон концентрации, вы можете совершить свободное действие Ускорение или Бочку."""
            ship: "А-Крыл"
        "Gemmer Sojan":
            name: "Геммер Соян"
            text: """Когда вы на расстоянии 1 от хотя бы 1 вражеского корабля, увеличьте параметр Уклонения на 1."""
            ship: "А-Крыл"
        "Keyan Farlander":
            name: "Кейан Фарлэндер"
            text: """Атакуя, вы можете убрать 1 жетон Стресса, чтобы заменить все результаты %FOCUS% на %HIT%."""
            ship: "Б-Крыл"
        "Nera Dantels":
            name: "Нера Дантелс"
            text: """Вы можете выполнять атаки вспомогательным оружием %TORPEDO% против кораблей вне вашей арки огня."""
            ship: "Б-Крыл"
        # "CR90 Corvette (Crippled Aft)":
        #     name: "CR90 Corvette (Crippled Aft)"
        #     ship: "Корвет CR90 (Корма)"
        #     text: """Вы не можете выбирать и выполнять маневры (%STRAIGHT% 4), (%BANKLEFT% 2), или (%BANKRIGHT% 2)."""
        # "CR90 Corvette (Crippled Fore)":
        #     name: "CR90 Corvette (Crippled Fore)"
        #     ship: "Корвет CR90 (Нос)"
        "Wild Space Fringer":
            name: "Пограничник дикого космоса"
            ship: "YT-2400"
        "Dash Rendar":
            name: "Даш Рендар"
            text: """Вы можете игнорировать препятствия в фазу Активации и при выполнении дествий."""
        '"Leebo"':
            name: "Лиибо"
            text: """Когда вы получаете карту повреждений лицом вверх, возьмите 1 дополнительную карту лицом вверх, выберите 1 из них и сбросьте вторую."""
        "Eaden Vrill":
            name: "Иден Врилл"
            text: """При атаке основным оружием против корабля, имеющего жетон Стресса, бросьте 1 дополнительный кубик атаки."""
        "Patrol Leader":
            name: "Лидер патруля"
            ship: "VT-49 Дециматор"
        "Rear Admiral Chiraneau":
            name: "Контр-адмирал Ширано"
            text: """Атакуя на расстоянии 1-2, вы можете заменить 1 результат %FOCUS% на результат %CRIT%."""
            ship: "VT-49 Дециматор"
        "Commander Kenkirk":
            ship: "VT-49 Дециматор"
            name: "Командор Кенкирк"
            text: """Если у вас нет щитов и вы имеете хотя бы 1 карту повреждений, ваше Уклонение повышается на 1."""
        "Captain Oicunn":
            name: "Капитан Ойкунн"
            text: """После выполнения маневра, каждый вражеский корабль, которого вы касаетесь, получает 1 повреждение."""
            ship: "VT-49 Дециматор"
        "Black Sun Enforcer":
            name: "Боевик Черного Солнца"
            ship: "Звездная Гадюка"
        "Black Sun Vigo":
            name: "Силовик Черного Солнца"
            ship: "Звездная Гадюка"
        "Prince Xizor":
            name: "Принц Ксизор"
            text: """При защите, союзный корабль на расстоянии 1 может получить 1 неотмененный %HIT% или %CRIT% вместо вас."""
            ship: "Звездная Гадюка"
        "Guri":
            name: "Гури"
            text: """В начале фазы Боя, если вы на расстоянии 1 от вражеского корабля, вы можете назначить 1 жетон Концентрации на свой корабль."""
            ship: "Звездная Гадюка"
        "Cartel Spacer":
            name: "Агент картеля"
            ship: "Перехватчик M3-A"
        "Tansarii Point Veteran":
            name: "Ветеран Тансари Поинт"
            ship: "Перехватчик M3-A"
        "Serissu":
            name: "Сериссу"
            text: """Когда другой дружественный корабль на расстоянии 1 защищается, он может перебросить 1 кубик защиты."""
            ship: "Перехватчик M3-A"
        "Laetin A'shera":
            name: "Летин А'Шера"
            text: """После того, как вы провели защиту от атаки, если атака не попала, вы можете назначить 1 жетон Уклонения на свой корабль."""
            ship: "Перехватчик M3-A"
        "IG-88A":
            text: """После выполнения атаки, уничтожившей корабль противника, вы можете восстановить 1 щит."""
            ship: "Агрессор"
        "IG-88B":
            text: """Раз за ход, проведя атаку, которая не попала, вы можете выполнить атаку вспомогательным оружием %CANNON% ."""
            ship: "Агрессор"
        "IG-88C":
            text: """После выполнения Ускорения, вы можете выполнить свободное действие Уклонения."""
            ship: "Агрессор"
        "IG-88D":
            text: """Вы можете выполнять (%SLOOPLEFT% 3) или (%SLOOPRIGHT% 3) используя соответствующий (%TURNLEFT% 3) или (%TURNRIGHT% 3) шаблон."""
            ship: "Агрессор"
        "Mandalorian Mercenary":
            name: "Мандалорский наемник"
        "Boba Fett (Scum)":
            name: "Боба Фетт (Пираты)"
            text: """Атакуя или защищаясь, вы можете перебросить 1 кубик за каждый вражеский корабль на расстоянии 1."""
        "Kath Scarlet (Scum)":
            name: "Кат Скарлет (Пираты)"
            text: """Атакуя корабль в вашей вторичной арке стрельбы, бросьте 1 дополнительный кубик атаки."""
        "Emon Azzameen":
            name: "Эмон Аззамин"
            text: """Бросая бомбу, вы можете использовать шаблон [%TURNLEFT% 3], [%STRAIGHT% 3] или [%TURNRIGHT% 3] вместо [%STRAIGHT% 1]."""
        "Kavil":
            name: "Кавил"
            ship: "У-Крыл"
            text: """Атакуя корабль вне вашей арки огня, бросьте 1 дополнительный кубик."""
        "Drea Renthal":
            name: "Дреа Рентал"
            text: """После того, как вы используете захват цели, вы можете получить 1 жетон Стресса, чтобы получить захват цели."""
            ship: "У-Крыл"
        "Syndicate Thug":
            name: "Головорез синдиката"
            ship: "У-Крыл"
        "Hired Gun":
            name: "Наемник"
            ship: "У-Крыл"
        "Spice Runner":
            name: "Контрабандист"
            ship: "HWK-290"
        "Dace Bonearm":
            name: "Дэйс Боунарм"
            text: """Когда вражеский корабль на расстоянии 1-3 получает хотя бы 1 ионный жетон, если вы не под Стрессом, вы можете получить 1 жетон Стресса чтобы тот корабль получил 1 повреждение."""
            ship: "HWK-290"
        "Palob Godalhi":
            name: "Палоб Годалхи"
            text: """В начале фазы боя вы можете убрать 1 жетон Концентрации или Уклонения с вражеского корабля на расстоянии 1-2 и назначить этот жетон вашему кораблю."""
        "Torkil Mux":
            name: "Торкил Мукс"
            text: """В конце фазы Активации, выберите 1 вражеский корабль на расстоянии 1-2. До конца фазы Боя считайте умение пилота этого корабля равным 0."""
        "Binayre Pirate":
            name: "Бинайрский пират"
            ship: "Z-95 Охотник за головами"
        "Black Sun Soldier":
            name: "Солдат Черного Солнца"
            ship: "Z-95 Охотник за головами"
        "N'Dru Suhlak":
            name: "Н'Дру Шулак"
            text: """При атаке, если нет других дружественных кораблей на расстоянии 1-2, бросьте 1 дополнительный кубик атаки."""
            ship: "Z-95 Охотник за головами"
        "Kaa'to Leeachos":
            name: "Каа'ту Личос"
            text: """В начале фазы Боя, вы можете убрать 1 жетон Концентрации или Уклонения с дружественного корабля на расстоянии 1-2 и назначить его на свой корабль."""
            ship: "Z-95 Охотник за головами"
        "Commander Alozen":
            name: "Командор Алозен"
            ship: "TIE улучшенный"
            text: """В начале фазы Боя, вы можете назначить захват цели на вражеский корабль на расстоянии 1."""
        "Juno Eclipse":
            name: "Джуно Эклипс"
            ship: "TIE улучшенный"
            text: """Когда открываете маневр, вы можете изменить его скорость на 1 (до минимума в 1)."""
        "Zertik Strom":
            name: "Зертик Штром"
            ship: "TIE улучшенный"
            text: """Вражеские корабли на расстоянии 1 не получают боевого бонуса за расстояние при атаке."""
        "Lieutenant Colzet":
            name: "Лейтенант Колзет"
            ship: "TIE улучшенный"
            text: """В начале фазы Завершения, вы можете потратить захват цели на вражеском корабле, чтобы заставить его перевернуть одну из полученных карт повреждений лицом вверх."""
        "Latts Razzi":
            name: "Латтс Рацци"
            text: """ Когда дружественный корабль объявляет атаку, вы можете потратить захват цели на защищающемся, чтобы уменьшить его Маневренность на 1 для этой атаки."""
        "Miranda Doni":
            name: "Миранда Дони"
            ship: 'К-Крыл'
            text: """ Один раз за ход, во время атаки, вы можете потратить 1 щит, чтобы бросить 1 дополнительный кубик атаки, <strong>или</strong> бросить на 1 кубик атаки меньше, чтобы восстановить 1 щит."""
        "Esege Tuketu":
            name: "Есеге Тукету"
            ship: 'К-Крыл'
            text: """Когда другой дружественный корабль на расстоянии 1-2 атакует, он может считать ваши жетоны Концентрации как свои собственные."""
        "Guardian Squadron Pilot":
            name: "Пилот эскадрильи Страж"
            ship: 'К-Крыл'
        "Warden Squadron Pilot":
            name: "Пилот эскадрильи Надзиратель"
            ship: 'К-Крыл'
        '"Redline"':
            name: '"Красная линия"'
            ship: 'TIE каратель'
            text: """Вы можете поддерживать 2 захвата цели на одном и том же корабле. Когда вы получаете захват цели, вы можете получить второй захват на том же корабле."""
        '"Deathrain"':
            name: '"Смертельный Дождь"'
            ship: 'TIE каратель'
            text: """Бросая бомбу, вы можете использовать передние направляющие вашего корабля. После сброса бомбы, вы можете выполнить свободное действие Бочку."""
        'Black Eight Squadron Pilot':
            name: "Пилот эскадрильи Черная Восьмерка"
            ship: 'TIE каратель'
        'Cutlass Squadron Pilot':
            name: "Пилот эскадрильи Палаш"
            ship: 'TIE каратель'
        "Moralo Eval":
            name: "Морало Эвал"
            text: """Вы можете выполнять атаки вспомогательным оружием %CANNON% против кораблей в вашей вторичной арке огня."""
        'Gozanti-class Cruiser':
            name: "Крейсер класса Гозанти"
            text: """После выполнения маневра, вы можете отстыковать до 2 присоединенных кораблей."""
        '"Scourge"':
            name: "Плеть"
            ship: "TIE истребитель"
            text: """При атаке, если у защищающегося уже есть 1 или более карт повреждений, бросьте 1 дополнительный кубик атаки."""
        "The Inquisitor":
            name: "Инквизитор"
            ship: "TIE улучшенный прототип"
            text: """Атакуя основным оружием на расстоянии 2-3, считайте расстояние атаки как 1."""
        "Zuckuss":
            name: "Закасс"
            ship: "Звездный истребитель G-1A"
            text: """Атакуя, вы можете бросить 1 дополнительный кубик атаки. Если вы делаете это, защищающийся бросает 1 дополнительный кубик защиты."""
        "Ruthless Freelancer":
            name: "Беспощадный наемник"
            ship: "Звездный истребитель G-1A"
        "Gand Findsman":
            name: "Гандский искатель"
            ship: "Звездный истребитель G-1A"
        "Dengar":
            name: "Денгар"
            ship: "Джампмастер 5000"
            text: """Один раз за ход, после защиты, если атакующий находится в вашей основной арке огня, вы можете провести атаку против этого корабля."""
        "Talonbane Cobra":
            name: "Кобра Гибельный Коготь"
            ship: "Истребитель Кихраксз"
            text: """Атакуя или защищаясь, удваивайте эффект бонусов за расстояние."""
        "Graz the Hunter":
            name: "Грац Охотник"
            ship: "Истребитель Кихраксз"
            text: """Защищаясь, если атакующий находится в вашей основной арке огня, бросьте 1 дополнительный кубик защиты."""
        "Black Sun Ace":
            name: "Ас Черного Солнца"
            ship: "Истребитель Кихраксз"
        "Cartel Marauder":
            name: "Мародер картеля"
            ship: "Истребитель Кихраксз"
        "Trandoshan Slaver":
            name: "Трандошанский работорговец"
            ship: "YV-666"
        "Bossk":
            name: "Босск"
            ship: "YV-666"
            text: """Когда вы выполняете атаку, завершившуюся попаданием, перед нанесением повреждений, вы можете отменить 1 из ваших результатов %CRIT%, чтобы нанести 2 результата %HIT%."""
        # T-70
        "Poe Dameron":
            name: "По Дэмерон"
            ship: "Икс-Крыл T-70"
            text: """Атакуя или защищаясь, если у вас есть жетон Концентрации, вы можете заменить 1 из ваших результатов %FOCUS% на результат %HIT% или %EVADE%."""
        '"Blue Ace"':
            name: '"Синий ас"'
            ship: "Икс-Крыл T-70"
            text: """Выполняя действие Ускорение, вы можете использовать шаблон (%TURNLEFT% 1) или (%TURNRIGHT% 1)."""
        "Red Squadron Veteran":
            name: "Ветеран Красной эскадрильи"
            ship: "Икс-Крыл T-70"
        "Blue Squadron Novice":
            name: "Новичок Синей эскадрильи"
            ship: "Икс-Крыл T-70"
        '"Red Ace"':
            name: "Красный ас"
            ship: "Икс-Крыл T-70"
            text: '''В первый раз за ход, когда вы убираете жетон щита с вашего корабля, назначьте 1 жетон Уклонения на ваш корабль.'''
        # TIE/fo
        '"Omega Ace"':
            name: '"Омега ас"'
            ship: "Истребитель TIE/пп"
            text: """Атакуя, вы можете потратить жетон Концентрации и захват цели на защищающемся, чтобы заменить все ваши результаты на результаты %CRIT%."""
        '"Epsilon Leader"':
            name: '"Эпсилон лидер"'
            ship: "Истребитель TIE/пп"
            text: """В начале фазы Боя, уберите 1 жетон Стресса с каждого дружественного корабля на расстоянии 1."""
        '"Zeta Ace"':
            name: '"Зета ас"'
            ship: "Истребитель TIE/пп"
            text: """Когда вы выполняете Бочку, вы можете использовать шаблон (%STRAIGHT% 2) вместо шаблона (%STRAIGHT% 1)."""
        "Omega Squadron Pilot":
            name: "Пилот эскадрильи Омега"
            ship: "Истребитель TIE/пп"
        "Zeta Squadron Pilot":
            name: "Пилот эскадрильи Зета"
            ship: "Истребитель TIE/пп"
        "Epsilon Squadron Pilot":
            name: "Пилот эскадрильи Эпсилон"
            ship: "Истребитель TIE/пп"
        '"Omega Leader"':
            name: "Омега лидер"
            ship: "Истребитель TIE/пп"
            text: '''Вражеские корабли, находящиеся в вашем захвате цели, не могут модифицировать кубики, атакуя вас или защищаясь от ваших атак.'''
        'Hera Syndulla':
            name: "Гера Синдулла"
            text: '''Когда вы открываете зеленый или красный маневр, вы можете повернуть ваш диск на другой маневр той же сложности.'''
        '"Youngster"':
            name: "Юнец"
            ship: "TIE истребитель"
            text: """Дружественные TIE истребители на расстоянии 1-3 могут выполнять действие с вашей экипированной карты улучшений %ELITE%."""
        '"Wampa"':
            name: "Вампа"
            ship: "TIE истребитель"
            text: """Атакуя, вы можете отменить все результаты кубиков. Если вы отменяете результат %CRIT%, назначьте 1 карту повреждений лицом вниз на защищающегося."""
        '"Chaser"':
            name: "Преследователь"
            ship: "TIE истребитель"
            text: """Когда другой дружественный корабль на расстоянии 1 тратит жетон Концентрации, назначьте жетон Концентрации на ваш корабль."""
        'Ezra Bridger':
            name: "Эзра Бриджер"
            ship: "Атакующий шаттл"
            text: """Защищаясь, если у вас есть Стресс, вы можете заменить до 2 ваших результатов %FOCUS% на результаты %EVADE%."""
        '"Zeta Leader"':
            name: "Зета лидер"
            text: '''Атакуя, если у вас нет Стресса, вы можете получить 1 жетон Стресса, чтобы бросить 1 дополнительный кубик атаки.'''
            ship: "Истребитель TIE/пп"
        '"Epsilon Ace"':
            name: "Эпсилон ас"
            text: '''Пока у вас нет карт повреждений, считайте ваше умение пилота равным 12.'''
            ship: "Истребитель TIE/пп"
        "Kanan Jarrus":
            name: "Кейнан Джаррус"
            text: """Когда вражеский корабль на расстоянии 1-2 атакует, вы можете потратить жетон Концентрации. Если вы делаете это, атакующий бросает на 1 кубик атаки меньше."""
        '"Chopper"':
            name: "Чоппер"
            text: """В начале фазы Боя, каждый вражеский корабль, которого вы касаетесь, получает 1 жетон Стресса."""
        'Hera Syndulla (Attack Shuttle)':
            name: "Гера Синдулла (Атакующий шаттл)"
            ship: "Атакующий шаттл"
            text: """Когда вы открываете зеленый или красный маневр, вы можете повернуть ваш диск на другой маневр той же сложности."""
        'Sabine Wren':
            name: "Сабина Врен"
            ship: "Атакующий шаттл"
            text: """Сразу перед открытием вашего маневра, вы можете выполнить свободное действие Ускорение или Бочку."""
        '"Zeb" Orrelios':
            name: "Зеб Ореллиос"
            ship: "Атакующий шаттл"
            text: '''Защищаясь, вы можете отменять результаты %CRIT% перед результатами %HIT%.'''
        "Lothal Rebel":
            name: "Повстанец с Лотала"
            ship: "VCX-100"
        'Tomax Bren':
            name: "Томакс Брен"
            text: '''Один раз за ход, после того, как вы сбрасываете карту улучшений %ELITE%, переверните эту карту обратно.'''
            ship: "TIE бомбардировщик"
        'Ello Asty':
            name: "Элло Эсти"
            text: '''Когда у вас нет жетонов Стресса, можете считать маневры %TROLLLEFT% и %TROLLRIGHT% белыми маневрами.'''
            ship: "Икс-Крыл T-70"
        "Valen Rudor":
            name: "Вален Рудор"
            text: """После защиты, вы можете выполнить свободное действие."""
            ship: "TIE улучшенный прототип"
        "4-LOM":
            ship: "Звездный истребитель G-1A"
            text: """В начале фазы Завершения, вы можете назначить 1 из ваших жетонов Стресса на другой корабль на расстоянии 1."""
        "Tel Trevura":
            name: "Тел Тревура"
            ship: "Джампмастер 5000"
            text: """В первый раз, когда вы должны быть уничтожены, вместо этого отмените все оставшиеся повреждения, сбросьте все карты повреждений, и назначьте 4 карты повреждений лицом вниз этому кораблю."""
        "Manaroo":
            name: "Манару"
            ship: "Джампмастер 5000"
            text: """В начале фазы Боя, вы можете назначить все жетоны Концентрации, Уклонения и захвата цели, назначенные вам, на другой дружественный корабль на расстоянии 1."""
        "Contracted Scout":
            name: "Разведчик-контрактник"
            ship: "Джампмастер 5000"
        '"Deathfire"':
            name: "Смертельное пламя"
            text: '''Когда вы открываете ваш диск маневров или после того, как вы выполняете действие, вы можете выполнить действие с карты улучшения %BOMB% как свободное действие.'''
            ship: "TIE бомбардировщик"
        "Sienar Test Pilot":
            name: "Сиенарский летчик-испытатель"
            ship: "TIE улучшенный прототип"
        "Baron of the Empire":
            name: "Барон Империи"
            ship: "TIE улучшенный прототип"
        "Maarek Stele (TIE Defender)":
            name: "Маарек Стил (TIE защитник)"
            text: """Когда ваша атака наносит защищающемуся карту повреждений в открытую, вместо этого вытяните 3 карты повреждений, выберите 1 для отработки и сбросьте остальные."""
            ship: "TIE защитник"
        "Countess Ryad":
            name: "Графиня Рияд"
            text: """Когда вы открываете маневр %STRAIGHT%, вы можете считать его маневром %KTURN%."""
            ship: "TIE защитник"
        "Glaive Squadron Pilot":
            name: "Пилот эскадрильи Глефа"
            ship: "TIE защитник"
        "Poe Dameron (PS9)":
            name: "По Дэмерон (УП9)"
            text: """Атакуя или защищаясь, если у вас есть жетон Концентрации, вы можете заменить 1 из ваших результатов %FOCUS% на результат %HIT% или %EVADE%."""
            ship: "Икс-Крыл T-70"
        "Resistance Sympathizer":
            name: "Сочувствующий повстанцам"
            ship: "YT-1300"
        "Rey":
            name: "Рэй"
            text: """Атакуя или защищаясь, если вражеский корабль находится в вашей основной арке огня, вы можете перебросить до 2 пустых результатов."""
        'Han Solo (TFA)':
            name: "Хан Соло (ПС)"
            text: '''Во время расстановки, вы можете быть расположены где угодно на игровом поле на расстоянии не ближе 3 от вражеских кораблей.'''
        'Chewbacca (TFA)':
            name: "Чубакка (ПС)"
            text: '''После того, как другой дружественный корабль на расстоянии 1-3 уничтожен (но не сбежал с поля боя), вы можете выполнить атаку.'''
        'Norra Wexley':
            name: "Норра Вэксли"
            ship: "ARC-170"
            text: '''Атакуя или защищаясь, вы можете потратить захват цели на защищающемся, чтобы добавить 1 результат %FOCUS% к вашему броску.'''
        'Shara Bey':
            name: "Шара Бэй"
            ship: "ARC-170"
            text: '''Когда другой дружественный корабль на расстоянии 1-2 атакует, он может считать ваши синие жетоны захвата цели как свои собственные.'''
        'Thane Kyrell':
            name: "Тейн Кирелл"
            ship: "ARC-170"
            text: '''После того, как вражеский корабль в вашей арке огня на расстоянии 1-3 атакует другой дружественный корабль, вы можете выполнить свободное действие.'''
        'Braylen Stramm':
            name: "Брайлен Штрамм"
            ship: "ARC-170"
            text: '''После того, как вы выполните маневр, вы можете бросить кубик атаки. При результате %HIT% или %CRIT%, уберите 1 жетон Стресса с вашего корабля.'''
        '"Quickdraw"':
            name: "Шустрый"
            ship: "Истребитель TIE/сс"
            text: '''Один раз за ход, когда вы теряете жетон щита, вы можете выполнить атаку основным оружием.'''
        '"Backdraft"':
            name: "Бэкдрафт"
            ship: "Истребитель TIE/сс"
            text: '''Атакуя корабль в вашей вторичной арке огня, вы можете добавить 1 результат %CRIT%.'''
        'Omega Specialist':
            name: "Омега специалист"
            ship: "Истребитель TIE/сс"
        'Zeta Specialist':
            name: "Зета специалист"
            ship: "Истребитель TIE/сс"
        'Fenn Rau':
            name: "Фенн Рау"
            ship: "Звездный истребитель Протектората"
            text: '''Атакуя или защищаясь, если вражеский корабль находится на расстоянии 1, вы можете бросить 1 дополнительный кубик.'''
        'Old Teroch':
            name: "Старый Терох"
            ship: "Звездный истребитель Протектората"
            text: '''В начале фазы Боя, вы можете выбрать 1 вражеский корабль на расстоянии 1. Если вы находитесь в его арке огня, он должен сбросить все жетоны Концентрации и Уклонения.'''
        'Kad Solus':
            name: "Кад Солус"
            ship: "Звездный истребитель Протектората"
            text: '''После выполнения красного маневра, назначьте 2 жетона Концентрации на ваш корабль.'''
        'Concord Dawn Ace':
            name: "Ас Рассвета Конкорда"
            ship: "Звездный истребитель Протектората"
        'Concord Dawn Veteran':
            name: "Ветеран Рассвета Конкорда"
            ship: "Звездный истребитель Протектората"
        'Zealous Recruit':
            name: "Рьяный рекрут"
            ship: "Звездный истребитель Протектората"
        'Ketsu Onyo':
            name: "Кетсу Онио"
            ship: "Корабль-преследователь класса Копьеносец"
            text: '''В начале фазы Боя, вы можете выбрать корабль на расстоянии 1. Если он находится в вашей основной <strong>и</strong> мобильной арках огня, назначьте на него 1 жетон Луча Захвата.'''
        'Asajj Ventress':
            name: "Асажж Вентресс"
            ship: "Корабль-преследователь класса Копьеносец"
            text: '''В начале фазы Боя, вы можете выбрать корабль на расстоянии 1-2. Если он находится в вашей мобильной арке огня, назначьте ему 1 жетон Стресса.'''
        'Sabine Wren (Scum)':
            name: "Сабина Врен (Пираты)"
            ship: "Корабль-преследователь класса Копьеносец"
            text: '''Защищаясь от вражеского корабля в вашей мобильной арке огня на расстоянии 1-2, вы можете добавить 1 результат %FOCUS% к вашему броску.'''
        'Shadowport Hunter':
            name: "Охотник Шэдоупорта"
            ship: "Корабль-преследователь класса Копьеносец"
        'Sabine Wren (TIE Fighter)':
            name: "Сабина Врен (TIE истребитель)"
            ship: "TIE истребитель"
            text: '''Сразу перед открытием вашего маневра, вы можете выполнить свободное действие Ускорение или Бочку.'''
        '"Zeb" Orrelios (TIE Fighter)':
            name: "Зеб Ореллиос (TIE истребитель)"
            ship: "TIE истребитель"
            text: '''Защищаясь, вы можете отменять результаты %CRIT% перед результатами %HIT%.'''
        'Kylo Ren':
            name: "Кайло Рен"
            ship: "Шаттл класса Ипсилон"
            text: '''В первый раз за ход, когда вы получаете попадание, назначьте атакующему карту состояния "Я покажу тебе Темную Сторону".'''
        'Unkar Plutt':
            name: "Анкар Платт"
            ship: "Квадджампер"
            text: '''В конце фазы Активации, вы <strong>должны</strong> назначить жетон Луча Захвата каждому кораблю, которого касаетесь.'''
        'Cassian Andor':
            name: "Кассиан Эндор"
            ship: "Ю-Крыл"
            text: '''В начале фазы Активации, вы можете убрать 1 жетон Стресса с 1 другого дружественного корабля на расстоянии 1-2.'''
        'Bodhi Rook':
            name: "Бодхи Рук"
            ship: "Ю-Крыл"
            text: '''Когда дружественный корабль получает захват цели на противника, этот корабль может захватывать вражеский корабль на расстоянии 1-3 от любого дружественного корабля.'''
        'Heff Tobber':
            name: "Хефф Тоббер"
            ship: "Ю-Крыл"
            text: '''После того, как вражеский корабль выполняет маневр, приводящий к наложению на ваш корабль, вы можете выполнить свободное действие.'''
        '''"Duchess"''':
            ship: "TIE ударник"
            name: '"Герцогиня"'
            text: '''Когда у вас есть экипированная карта улучшения "Адаптивные элероны", вы можете игнорировать особенность этой карты.'''
        '''"Pure Sabacc"''':
            ship: "TIE ударник"
            name: '"Пьюр Сабакк"'
            text: '''Атакуя, если у вас есть 1 или меньше карт повреждений, бросьте 1 дополнительный кубик атаки.'''
        '''"Countdown"''':
            ship: "TIE ударник"
            name: '"Обратный Отсчет"'
            text: '''Защищаясь, если у вас нет Стресса, во время шага "Сравнение результатов кубиков" вы можете получить 1 повреждение, чтобы отменить <strong>все</strong> результаты кубиков. Если вы делаете это, получите 1 жетон Стресса.'''
        'Nien Nunb':
            name: "Ниен Нанб"
            ship: "Икс-Крыл T-70"
            text: '''Когда вы получаете жетон Стресса, если в вашей арке огня на расстоянии 1 есть вражеский корабль, вы можете сбросить этот жетон стресса.'''
        '"Snap" Wexley':
            name: "Снэп Вексли"
            ship: "Икс-Крыл T-70"
            text: '''После того, как вы выполняете маневр со скоростью 2, 3 или 4, если вы не касаетесь другого корабля, вы можете выполнить свободное действие Бочку.'''
        'Jess Pava':
            name: "Джесс Пава"
            ship: "Икс-Крыл T-70"
            text: '''Атакуя или защищаясь, вы можете перебросить 1 из ваших кубиков за каждый другой дружественный корабль на расстоянии 1.'''
        'Ahsoka Tano':
            ship: "TIE истребитель"
            name: "Асока Тано"
            text: '''В начале фазы Боя, вы можете потратить 1 жетон Концентрации, чтобы выбрать дружественный корабль на расстоянии 1. Он может выполнить 1 свободное действие.'''
        'Captain Rex':
            ship: "TIE истребитель"
            name: "Капитан Рекс"
            text: '''После выполнения атаки, назначьте защищающемуся карту состояния "Подавляющий огонь".'''
        'Major Stridan':
            ship: "Шаттл класса Ипсилон"
            name: "Майор Стридан"
            text: '''С точки зрения ваший действий и карт улучшений, вы можете считать дружественные корабли на расстоянии 2-3 как находящиеся на расстоянии 1.'''
        'Lieutenant Dormitz':
            ship: "Шаттл класса Ипсилон"
            name: "Лейтенант Дормитц"
            text: '''Во время расстановки, дружественные корабли могут располагаться где угодно на игровом поле на расстоянии 1-2 от вас.'''
        'Constable Zuvio':
            ship: "Квадджампер"
            name: "Констебль Зувио"
            text: '''Когда вы открываете реверсивный маневр, вы можете сбрасывать бомбу, испольтзуя ваши передние направляющие (в том числе бомбы с указателем "<strong>Действие:</strong>").'''
        'Sarco Plank':
            name: "Сарко Планк"
            ship: "Квадджампер"
            text: '''Защищаясь, вместо того, чтобы использовать ваше значение Маневренности, вы можете бросить число кубиков защиты, равное скорости маневра, который вы выполняли на этом ходу.'''
        "Blue Squadron Pathfinder":
            name: "Следопыт Синей эскадрильи"
            ship: "Ю-Крыл"
        "Black Squadron Scout":
            name: "Скаут Черной эскадрильи"
            ship: "TIE ударник"
        "Scarif Defender":
            name: "Защитник Скарифа"
            ship: "TIE ударник"
        "Imperial Trainee":
            name: "Имперский кадет"
            ship: "TIE ударник"
        "Starkiller Base Pilot":
            ship: "Шаттл класса Ипсилон"
            name: "Пилот базы Старкиллер"
        "Jakku Gunrunner":
            ship: "Квадджампер"
            name: "Стрелок с Джакку"
        'Genesis Red':
            name: "Генезис Рэд"
            ship: "Перехватчик M3-A"
            text: '''После получения захвата цели, назначьте жетоны Концентрации и Уклонения на ваш корабль, пока у вас не будет такого же количества каждого жетона, как и на корабле в захвате.'''
        'Quinn Jast':
            name: "Квинн Джаст"
            ship: "Перехватчик M3-A"
            text: '''В начале фазы Боя, вы можете получить жетон "Орудие выведено из строя", чтобы перевернуть 1 из ваших сброшенных карт улучшений %TORPEDO% или %MISSILE%.'''
        'Inaldra':
            name: "Инальдра"
            ship: "Перехватчик M3-A"
            text: '''Атакуя или защищаясь, вы можете потратить 1 щит, чтобы перебросить любое количество ваших кубиков.'''
        'Sunny Bounder':
            name: "Санни Баундер"
            ship: "Перехватчик M3-A"
            text: '''Один раз за ход, после того, как вы бросаете или перебрасываете кубик, если у вас выпал тот же результат на каждом кубике, добавьте 1 соответствующий результат.'''
        'C-ROC Cruiser':
            ship: "Крейсер C-ROC"
            name: "Крейсер C-ROC"
        'Lieutenant Kestal':
            name: "Лейтенант Кестал"
            ship: "TIE агрессор"
            text: '''Атакуя, вы можете потратить 1 жетон Концентрации, чтобы отменить все пустые и %FOCUS% результаты защищающегося.'''
        '"Double Edge"':
            ship: "TIE агрессор"
            name: "Обоюдоострый"
            text: '''Один раз за ход, после того, как вы выполнили атаку вспомогательным оружием, которая не попала, вы можете выполнить атаку другим оружием.'''
        'Onyx Squadron Escort':
            ship: "TIE агрессор"
            name: "Эскорт эскадрильи Оникс"
        'Sienar Specialist':
            ship: "TIE агрессор"
            name: "Сиенарский специалист"
        'Viktor Hel':
            name: "Виктор Хел"
            ship: "Истребитель Кихраксз"
            text: '''После защиты, если вы не бросили ровно 2 кубика защиты, атакующий получает 1 жетон Стресса.'''
        'Lowhhrick':
            name: "Лоуххрик"
            ship: "Канонерка Озитук"
            text: '''Когда другой дружественный корабль на расстоянии 1 защищается, вы можете потратить 1 жетон Усиления. Если вы делаете это, защищающийся добавляет 1 результат %EVADE%.'''
        'Wullffwarro':
            name: "Вульфарро"
            ship: "Канонерка Озитук"
            text: '''Атакуя, если у вас нет щитов и есть хотя бы 1 назначенная карта повреждений, бросьте 1 дополнительный кубик атаки.'''
        'Wookiee Liberator':
            name: "Вуки-освободитель"
            ship: "Канонерка Озитук"
        'Kashyyyk Defender':
            name: "Защитник Кашиика"
            ship: "Канонерка Озитук"
        'Captain Nym (Scum)':
            name: "Капитан Ним (Пираты)"
            ship: "Бомбардировщик Скуррг H-6"
            text: '''Вы можете игнорировать дружественные бомбы. Когда дружественный корабль защищается, если атакующий меряет дистанцию через дружественный жетон бомбы, защищающийся может добавить 1 результат %EVADE%.'''
        'Captain Nym (Rebel)':
            name: "Капитан Ним (Повстанцы)"
            ship: "Бомбардировщик Скуррг H-6"
            text: '''Один раз за ход, вы можете предотвратить взрыв дружественной бомбы.'''
        'Lok Revenant':
            name: "Лок Ревенант"
            ship: "Бомбардировщик Скуррг H-6"
        'Karthakk Pirate':
            name: "Пират Картхакка"
            ship: "Бомбардировщик Скуррг H-6"
        'Sol Sixxa':
            name: "Сол Сиккса"
            ship: "Бомбардировщик Скуррг H-6"
            text: '''Сбрасывая бомбу, вы можете использовать шаблон (%TURNLEFT% 1) или (%TURNRIGHT% 1) вместо шаблона (%STRAIGHT% 1).'''
        'Dalan Oberos':
            name: "Далан Оберос"
            ship: 'Звездная Гадюка'
            text: '''Если у вас нет Стресса, когда вы открываете маневр крена, поворота или Петлю Сеньора, вместо этого вы можете считать это красным маневром Коготь того же направления (влево или вправо), используя шаблон изначально открытого маневра.'''
        'Thweek':
            name: "Твик"
            ship: 'Звездная Гадюка'
            text: '''Во время расстановки, перед шагом "Расстановка сил", вы можете выбрать 1 вражеский корабль и назначить ему карту состояния "Затененный" или "Мимикрированный".'''
        'Captain Jostero':
            name: "Капитан Жостеро"
            ship: "Истребитель Кихраксз"
            text: '''Один раз за ход, после того, как вражеский корабль, не защищающийся от атаки, получает повреждение или критическое повреждение, вы можете выполнить атаку против этого корабля.'''
        'Major Vynder':
            ship: "Звездное Крыло класса Альфа"
            name: "Майор Виндер"
            text: '''Защищаясь, если у вас есть жетон Оружие выведено из Строя, бросьте 1 дополнительный кубик защиты.'''
        'Nu Squadron Pilot':
            name: "Пилот эскадрильи Ню"
            ship: "Звездное Крыло класса Альфа"
        'Rho Squadron Veteran':
            name: "Ветеран эскадрильи Ро"
            ship: "Звездное Крыло класса Альфа"
        'Lieutenant Karsabi':
            ship: "Звездное Крыло класса Альфа"
            name: "Лейтенант Карсаби"
            text: '''Когда вы получаете жетон Оружие выведено из Строя, если вы не под Стрессом, вы можете получить 1 жетон Стресса, чтобы убрать его.'''
        'Cartel Brute':
            name: "Вышибала картеля"
            ship: "Истребитель M12-L Кимогила"
        'Cartel Executioner':
            name: "Палач картеля"
            ship: "Истребитель M12-L Кимогила"
        'Torani Kulda':
            name: "Торани Кулда"
            ship: "Истребитель M12-L Кимогила"
            text: '''После выполнения атаки, каждый вражеский корабль в вашей арке прицельного огня на расстоянии 1-3 должен выбрать: получить 1 повреждение или убрать все жетоны Концентрации и Уклонения.'''
        'Dalan Oberos (Kimogila)':
            name: "Далан Оберос (Кимогила)"
            ship: "Истребитель M12-L Кимогила"
            text: '''В начале фазы Боя, вы можете получить захват цели на вражеский корабль в вашей арке прицельного огня на расстоянии 1-3.'''
        'Fenn Rau (Sheathipede)':
            name: "Фенн Рау (Колчан)"
            ship: "Шаттл класса Колчан"
            text: '''Когда вражеский корабль в вашей арке огня на расстояниим 1-3 становится активным кораблем во время фазы Боя, если у вас нет Стресса, вы можете получить 1 жетон Стресса. Если вы делаете это, тот корабль не может тратить жетоны для модификации его кубиков во время атаки на этом ходу.'''
        'Ezra Bridger (Sheathipede)':
            name: "Эзра Бриджер (Колчан)"
            ship: "Шаттл класса Колчан"
            text: """Защищаясь, если у вас нет Стресса, вы можете заменить до 2 ваших результатов %FOCUS% на результаты %EVADE%."""
        '"Zeb" Orrelios (Sheathipede)':
            name: "Зеб Ореллиос (Колчан)"
            ship: "Шаттл класса Колчан"
            text: '''Защищаясь, вы можете отменять результаты %CRIT% перед результатами %HIT%.'''
        'AP-5':
            ship: "Шаттл класса Колчан"
            text: '''Когда вы выполняете действие Координации, после выбора дружественного корабля и перед выполнением им свободного действия, вы можете получить 2 жетона Стресса, чтобы убрать с него 1 жетон Стресса.'''
        'Crimson Squadron Pilot':
            name: "Пилот Багровой эскадрильи"
            ship: "Бомбардировщик B/SF-17"
        '"Crimson Leader"':
            name: '"Багровый лидер"'
            ship: "Бомбардировщик B/SF-17"
            text: '''Атакуя, если защищающийся находится в вашей арке огня, вы можете потратить 1 результат %HIT% или %CRIT%, чтобы назначить карту состояния "Разбитый" на защищающегося.'''
        '"Crimson Specialist"':
            name: '"Багровый специалист"'
            ship: "Bombardero B/SF-17"
            text: '''Размещая жетон бомбы, которую вы сбросили после открытия диска маневров, вы можете расположить жетон бомбы где угодно в игровой зоне, касаясь вашего корабля.'''
        '"Cobalt Leader"':
            name: '"Кобальтовый лидер"'
            ship: "Бомбардировщик B/SF-17"
            text: '''Атакуя, если защищающийся находится на расстоянии 1 от жетона бомбы, защищающийся бросает на 1 кубик защиты меньше.'''
        'Sienar-Jaemus Analyst':
            name: "Аналитик Сиенар-Джемус"
            ship: "TIE глушитель"
        'First Order Test Pilot':
            name: "Летчик-испытатель Первого Порядка"
            ship: "TIE глушитель"
        'Kylo Ren (TIE Silencer)':
            name: "Кайло Рен (TIE глушитель)"
            ship: "TIE глушитель"
            text: '''В первый раз за ход, когда вы получаете попадание, назначьте атакующему карту состояния "Я покажу тебе Темную Сторону".'''
        'Test Pilot "Blackout"':
            name: 'Летчик-испытатель "Затмение"'
            ship: "TIE глушитель"
            text: '''Атакуя, если атака идет через преграду, защищающийся бросает на 2 кубика защиты меньше.'''
        'Kullbee Sperado':
            name: "Кулби Сперадо"
            ship: "Икс-Крыл"
            text: '''After you perform a boost or barrel roll action, you may flip your equipped "Servomotor S-foils" upgrade card.'''
        'Major Vermeil':
            name: "Майор Вермейл"
            text: '''Атакуя, если у защищающегося нет жетонов Концентрации или Уклонения, вы можете заменить 1 из ваших пустых или %FOCUS% результатов на результат %HIT%.'''
        'Captain Feroph':
            text: '''When defending, if the attacker is jammed, add 1 %EVADE% result to your roll.'''
        '"Vizier"':
            text: '''After a friendly ship executes a 1-speed maneuver, if it is at Range 1 and did not overlap a ship, you may assign 1 of your focus or evade tokens to it.'''
        'Magva Yarro':
            text: '''When another friendly ship at Range 1-2 is defending, the attacker cannot reroll more than 1 attack die.'''
        'Edrio Two-Tubes':
            text: '''When you become the active ship during the Activation phase, if you have 1 or more focus tokens, you may perform a free action.'''

    upgrade_translations =
        "Ion Cannon Turret":
            name: "Ионная турель"
            text: """<strong>Атака:</strong> Атакуйте 1 корабль(даже корабль вне вашей арки стрельбы).<br /><br />Если атака попадает по кораблю-цели, корабль получает 1 повреждение и 1 ионный жетон. Затем отмените все результаты кубиков."""
        "Proton Torpedoes":
            name: "Протонные торпеды"
            text: """<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.<br /><br />Вы можете заменить 1 результат %FOCUS% на результат %CRIT%."""
        "R2 Astromech":
            name: "Астромех R2"
            text: """Можете считать все маневры со скоростью 1 и 2 зелеными маневрами."""
        "R2-D2":
            text: """После выполнения зеленого маневра, вы можете восстановить 1 щит (до максимального значения щитов)."""
        "R2-F2":
            text: """<strong>Действие:</strong> Увеличьте вашу Маневренность на 1 до конца этого хода."""
        "R5-D8":
            text: """<strong>Действие:</strong> Бросьте 1 кубик защиты.<br /><br />При результате %EVADE% или %FOCUS%, сбросьте 1 из ваших карт повреждений, лежащих лицом вниз."""
        "R5-K6":
            text: """После того, как вы потратили захват цели, бросьте 1 кубик защиты.<br /><br />При результате %EVADE% немедленно получите захват цели на том же корабле. Вы не можете использовать этот захват цели во время этой атаки."""
        "R5 Astromech":
            name: "Астромех R5"
            text: """Во время фазы Завершения, вы можете выбрать одну из ваших карт повреждений лицом вверх со свойством <strong>Корабль</strong> и перевернуть ее лицом вниз."""
        "Determination":
            name: "Решительность"
            text: """Если вы получили карту повреждений лицом вверх со свойством <strong>Пилот</strong>, сбросьте ее немедленно, не отрабатывая ее эффект."""
        "Swarm Tactics":
            name: "Тактика стаи"
            text: """В начале фазы Боя, вы можете выбрать 1 дружественный корабль на расстоянии 1.<br /><br />До конца этой фазы, считайте умение пилота выбранного корабля равным вашему."""
        "Squad Leader":
            name: "Лидер отряда"
            text: """<strong>Действие:</strong> Выберите 1 корабль на расстоянии 1-2, умение пилота которого ниже вашего.<br /><br />Выбранный корабль может немедленно выполнить 1 свободное действие."""
        "Expert Handling":
            name: "Мастерское управление"
            text: """<strong>Действие:</strong> Выполните свободное действие Бочку. Если у вас нет значка действий %BARRELROLL%, получите 1 жетон Стресса.<br /><br />Затем вы можете убрать 1 вражеский захват цели с вашего корабля."""
        "Marksmanship":
            name: "Меткость"
            text: """<strong>Действие:</strong> Атакуя в этот ход, вы можете сменить 1 из ваших результатов %FOCUS% на результат %CRIT% , и все прочие результаты %FOCUS% на результат %HIT%."""
        "Concussion Missiles":
            name: "Ударные ракеты"
            text: """<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.<br /><br />Вы можете сменить 1 пустой результат на результат %HIT%."""
        "Cluster Missiles":
            name: "Кластерные ракеты"
            text: """<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку <strong>дважды</strong>."""
        "Daredevil":
            name: "Сорвиголова"
            text: """<strong>Действие:</strong> Выполните белый (%TURNLEFT% 1) или (%TURNRIGHT% 1) маневр. Затем получите 1 жетон стресса.<br /><br />Затем, если у вас нет значка действия %BOOST%, бросьте 2 кубика атаки. Получите любое выброшенное повреждение(%HIT%) или критическое повреждение(%CRIT%)."""
        "Elusiveness":
            name: "Уклончивость"
            text: """Защищаясь, вы можете получить 1 жетон стресса чтобы выбрать 1 кубик атаки. Атакующий должен перебросить этот кубик.<br /><br />Если у вас есть хотя бы 1 жетон стресса, вы не можете использовать эту способность."""
        "Homing Missiles":
            name: "Самонаводящиеся ракеты"
            text: """<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.<br /><br />Защищающийся не может использовать жетоны уклонения во время этой атаки."""
        "Push the Limit":
            name: "Предел возможностей"
            text: """Один раз за ход, после выполнения действия, вы можете выполнить 1 свободное действие, отображенное на вашей полоске действий.<br /><br />Затем получите 1 жетон стресса."""
        "Deadeye":
            name: "Меткий глаз"
            text: """%SMALLSHIPONLY%%LINEBREAK%Вы можете считать <strong>"Атака (захват цели)"</strong> как <strong>"Атака (концентрация)"</strong>.<br /><br />Когда атака обязывает вас использовать захват цели, вместо этого вы можете использовать жетон Концентрации."""
        "Expose":
            name: "Раскрытие"
            text: """<strong>Действие:</strong> До конца хода увеличьте значение основной атаки на 1 и снизьте значение уклонения на 1."""
        "Gunner":
            name: "Стрелок"
            text: """После проведения атаки без попадания, вы можете немедленно выполнить атаку основным оружием. Вы не можете выполнять другую атаку на этом ходу."""
        "Ion Cannon":
            name: "Ионная пушка"
            text: """<strong>Атака:</strong> Атакуйте 1 корабль.<br /><br />Если атака попадает, защищающийся получает 1 повреждение и получает 1 ионный жетон. Затем отмените <b>все</b> результаты кубиков."""
        "Heavy Laser Cannon":
            name: "Тяжелая лазерная пушка"
            text: """<strong>Атака:</strong> Атакуйте 1 корабль.<br /><br />Сразу после броска кубиков атаки, вы должны заменить все результаты %CRIT% на результаты %HIT%."""
        "Seismic Charges":
            name: "Сейсмические заряды"
            text: """Когда вы открываете диск маневров, вы можете сбросить эту карту чтобы <strong>сбросить</strong> 1 жетон сейсмического заряда.<br /><br />Этот жетон <strong>взрывается</strong> в конце фазы Активации.<br /><br /><strong>Жетон сейсмического заряда:</strong> Когда этот жетон бомбы взрывается, каждый корабль на расстоянии 1 от жетона получает 1 повреждение. Затем сбросьте этот жетон."""
        "Mercenary Copilot":
            name: "Второй пилот-наемник"
            text: """Атакуя на расстоянии 3, вы можете сменить 1 результат %HIT% на результат %CRIT%."""
        "Assault Missiles":
            name: "Штурмовые ракеты"
            text: """<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.<br /><br />Если эта атака попадает, каждый другой корабль на расстоянии 1 от защищающегося получает 1 повреждение."""
        "Veteran Instincts":
            name: "Инстинкты ветерана"
            text: """Повышает умение пилотирования на 2."""
        "Proximity Mines":
            name: "Мины приближения"
            text: """<strong>Действие:</strong> Сбросьте эту карту чтобы <strong>сбросить</strong> 1 жетон мины приближения.<br /><br />Когда подставка корабля или шаблон маневра перекрывает этот жетон, он <strong>взрывается</strong>.<br /><br /><strong>Жетон мины приближения:</strong> Когда этот бомбовый жетон взрывается, корабль, прошедший через него или вставший на нем бросает 3 кубика атаки и получает все выброшенные результаты повреждений(%HIT%) и критических повреждений(%CRIT%). Затем сбросьте этот жетон."""
        "Weapons Engineer":
            name: "Инженер-оружейник"
            text: """Вы можете поддерживать 2 захвата цели(только 1 на каждый вражеский корабль).<br /><br />Когда вы получаете захват цели, вы можете захватывать 2 разных корабля."""
        "Draw Their Fire":
            name: "Огонь на себя"
            text: """Когда дружественный корабль на расстоянии 1 получает попадание от атаки, вы можете получить 1 из неотмененных %CRIT% результатов вместо целевого корабля."""
        "Luke Skywalker":
            name: "Люк Скайуокер"
            text: """После проведения атаки без попадания вы можете немедленно провести атаку основным оружием. Вы можете сменить 1 результат %FOCUS% на результат %HIT%. Вы не можете выполнять другую атаку в этот ход."""
        "Nien Nunb":
            name: "Ниен Нанб"
            text: """Вы можете считать все %STRAIGHT% маневры как зеленые маневры."""
        "Chewbacca":
            name: "Чубакка"
            text: """Когда вы получаете карту повреждений, вы можете немедленно сбросить эту карту и восстановить 1 щит.<br /><br />Затем сбросьте эту карту улучшения."""
        "Advanced Proton Torpedoes":
            name: "Улучшенные протонные торпеды"
            text: """<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.<br /><br />Вы можете заменить до 3 ваших пустых результатов на результаты %FOCUS%."""
        "Autoblaster":
            name: "Автобластер"
            text: """<strong>Атака:</strong> Атакуйте 1 корабль.<br /><br />Ваши %HIT% результаты не могут быть отменены кубиками защиты.<br /><br />Защищающийся может отменять результаты %CRIT% до результатов %HIT%."""
        "Fire-Control System":
            name: "Система контроля огня"
            text: """После выполнения атаки, вы можете получить захват цели на защищающемся."""
        "Blaster Turret":
            name: "Бластерная турель"
            text: """<strong>Атака(концентрация):</strong> Потратьте 1 жетон Концентрации чтобы выполнить эту атаку против 1 корабля (даже вне пределов вашей арки огня)."""
        "Recon Specialist":
            name: "Специалист разведки"
            text: """Когда вы выполняете действие Концентрации, назначьте 1 дополнительный жетон Концентрации на ваш корабль."""
        "Saboteur":
            name: "Саботажник"
            text: """<strong>Действие:</strong> Выберите 1 вражеский корабль на расстоянии 1 и бросьте 1 кубик атаки. При результате %HIT% или %CRIT%, выберите 1 случайную карту, лежащую лицом вниз на этом корабле, переверните ее и отработайте ее."""
        "Intelligence Agent":
            name: "Агент разведки"
            text: """В начале фазы Активации выберите 1 вражеский корабль на расстоянии 1-2. Вы можете посмотреть на выбранный маневр этого корабля."""
        "Proton Bombs":
            name: "Протонные бомбы"
            text: """Когда вы открываете ваш диск маневра, вы можете сбросить эту карту чтобы <strong>сбросить</strong> 1 жетон протонной бомбы.<br /><br />Этот жетон <strong>взрывается</strong> в конце фазы активации.<br /><br /><strong>Жетон протонной бомбы:</strong> Когда этот бомбовый жетон взрывается, каждый корабль на расстоянии 1 от жетона получает карту повреждения лицом вверх. Затем сбросьте этот жетон."""
        "Adrenaline Rush":
            name: "Выброс адреналина"
            text: """Когда вы открываете красный маневр, вы можете сбросить эту карту чтобы считать этот маневр как белый маневр до конца фазы Активации."""
        "Advanced Sensors":
            name: "Продвинутые сенсоры"
            text: """Сразу перед объявлением маневра, вы можете выполнить 1 свободное действие.<br /><br />Если вы используете эту способность, вы должны пропустить шаг "Выполнение действия" в этом ходу."""
        "Sensor Jammer":
            name: "Глушитель сенсоров"
            text: """Защищаясь, вы можете сменить 1 результат %HIT% атакующего на результат %FOCUS%.<br /><br />Атакующий не может перебрасывать кубик с измененным результатом."""
        "Darth Vader":
            name: "Дарт Вейдер"
            text: """После того, как вы выполните атаку вражеского корабля, вы можете получить 2 повреждения чтобы заставить тот корабль получить 1 критическое повреждение."""
        "Rebel Captive":
            name: "Пленный повстанец"
            text: """Один раз за ход, первый корабль, заявляющий вас целью атаки, немедленно получает 1 жетон стресса."""
        "Flight Instructor":
            name: "Полетный инструктор"
            text: """Защищаясь, вы можете перебросить 1 из ваших результатов %FOCUS%. Если умение пилота атакующего "2" или ниже, вместо этого вы можете перебросить 1 пустой результат."""
        "Navigator":
            name: "Навигатор"
            text: """Когда вы открываете маневр, вы можете повернуть ваш диск на другой маневр того же типа.<br /><br />Вы не можете выбирать красный маневр если у вас есть жетон(ы) Стресса."""
        "Opportunist":
            name: "Оппортунист"
            text: """При атаке, если защищающийся не имеет жетонов Концентрации или Уклонения, вы можете получить 1 жетон стресса чтобы бросить 1 дополнительный кубик атаки.<br /><br />Вы не можете использовать эту способность если у вас есть жетон(ы) стресса."""
        "Comms Booster":
            name: "Усилитель связи"
            text: """<strong>Энергия:</strong> Потратьте 1 энергии, чтобы убрать все жетоны Стресса с дружественного корабля на расстоянии 1-3. Затем назначьте 1 жетон Концентрации на тот корабль."""
        "Slicer Tools":
            name: "Электронные боевые системы"
            text: """<strong>Действие:</strong> Выберите 1 или более кораблей на расстоянии 1-3, имеющих жетон Стресса. За каждый выбранный корабль, вы можете потратить 1 энергии чтобы заставить этот корабль получить 1 повреждение."""
        "Shield Projector":
            name: "Проектор щита"
            text: """Когда вражеский корабль заявляет маленький или большой корабль целью атаки, вы можете потратить 3 энергии, чтобы заставить этот корабль атаковать вас (при возможности)."""
        "Ion Pulse Missiles":
            name: "Ионные импульсные ракеты"
            text: """<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.<br /><br />Если эта атака попадает, защищающийся получает 1 повреждение и 2 ионных жетона. Затем отмените <strong>все</strong> результаты кубиков."""
        "Wingman":
            name: "Ведомый"
            text: """В начале фазы Боя, уберите 1 жетон стресса с другого дружественного корабля на расстоянии 1."""
        "Decoy":
            name: "Приманка"
            text: """В начале фазы Боя, вы можете выбрать 1 дружественный корабль на расстоянии 1-2. Поменяйтесь умением пилота с умением пилота этого корабля до конца этой фазы."""
        "Outmaneuver":
            name: "Переманеврирование"
            text: """Атакуя корабль в вашей арке огня, если вы не находитесь в арке огня этого корабля, его Маневренность снижается на 1."""
        "Predator":
            name: "Хищник"
            text: """Атакуя, вы можете перебросить 1 кубик атаки. Если умение пилота защищающегося "2" или ниже, вместо этого вы можете перебросить до 2 кубиков атаки."""
        "Flechette Torpedoes":
            name: "Осколочные торпеды"
            text: """<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.<br /><br />После выполнения этой атаки, защищающийся получает 1 жетон стресса, если его значение корпуса 4 или ниже."""
        "R7 Astromech":
            name: "Астромех R7"
            text: """Один раз за ход, защищаясь, если у вас есть захват цели на атакующего, вы можете потратить этот захват цели чтобы выбрать любой или все кубики атаки. Атакующий должен перебросить выбранные кубики."""
        "R7-T1":
            name: "R7-T1"
            text: """<strong>Действие:</strong> Выберите вражеский корабль на расстоянии 1-2. Если вы находитесь в арке огня этого корабля, вы можете получить захват цели на этот корабль. Затем вы можете выполнить свободное действие Ускорения"""
        "Tactician":
            name: "Тактик"
            text: """%LIMITED%%LINEBREAK%После того, как вы выполните атаку против корабля в вашей арке стрельбы на расстоянии 2, этот корабль получает 1 жетон стресса."""
        "R2-D2 (Crew)":
            name: "R2-D2 (Экипаж)"
            text: """В конце фазы Завершения, если у вас нет щитов, вы можете восстановить 1 щит и бросить 1 кубик атаки. При результате %HIT%, случайным образом выберите и переверните 1 карту повреждений, лежащую лицом вниз, и отработайте ее."""
        "C-3PO":
            name: "C-3PO"
            text: """Один раз за ход, перед тем, как бросить 1 или более кубиков защиты, вы можете заявить вслух количество результатов %EVADE%. Если вы выбросили именно столько (до модификации кубиков), добавьте 1 %EVADE% результат."""
        "Single Turbolasers":
            name: "Одноствольные турболазеры"
            text: """<strong>Атака (Энергия):</strong> Потратьте 2 энергии с этой карты чтобы выполнить эту атаку. Защищающийся удваивает свою Маневренность против этой атаки. Вы можете сменить 1 из ваших результатов %FOCUS% на 1 результат %HIT%."""
        "Quad Laser Cannons":
            name: "Счетверенные лазерные пушки"
            text: """<strong>Атака (Энергия):</strong> Потратьте 1 энергии с этой карты чтобы выполнить эту атаку. Если атака не попала, вы можете немедленно потратить 1 энергии с этой карты чтобы выполнить эту атаку снова."""
        "Tibanna Gas Supplies":
            name: "Склад тибаннского газа"
            text: """<strong>Энергия:</strong> Вы можете сбросить эту карту чтобы получить 3 энергии."""
        "Ionization Reactor":
            name: "Ионизационный реактор"
            text: """<strong>Энергия:</strong> Потратьте 5 энергии с этой карты и сбросьте эту карту чтобы заставить каждый другой корабль на расстоянии 1 получить 1 повреждение и 1 ионный жетон"""
        "Engine Booster":
            name: "Ускоритель двигателя"
            text: """Сразу перед открытием вашего диска маневров, вы можете потратить 1 энергию чтобы выполнить белый (%STRAIGHT% 1)маневр. Вы не можете использовать эту способность если вы перекроете другой корабль."""
        "R3-A2":
            name: "R3-A2"
            text: """Когда вы заявляете цель для атаки, если защищающийся находится в вашей арке огня, вы можете получить 1 жетон Стресса чтобы заставить защищающегося получить 1 жетон стресса."""
        "R2-D6":
            name: "R2-D6"
            text: """Ваша панель улучшений получает значок улучшения %ELITE%.<br /><br />Вы не можете выбрать это улучшение если вы уже имеете значок улучшения %ELITE% или если ваше умение пилота "2" или ниже."""
        "Enhanced Scopes":
            name: "Улучшенная оптика"
            text: """Во время фазы Активации, считайте ваше умение пилота равным "0"."""
        "Chardaan Refit":
            name: "Чардаанский тюнинг"
            ship: "А-Крыл"
            text: """<span class="card-restriction">Только для А-Крыла.</span><br /><br />Эта карта имеет отрицательное значение очковой стоимости отряда."""
        "Proton Rockets":
            name: "Протонные ракеты"
            text: """<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.<br /><br />Вы можете бросить дополнительные кубики атаки, равные по количеству вашему значению Маневренности, до максимума в 3 кубика."""
        "Kyle Katarn":
            name: "Кайл Катарн"
            text: """После того, как вы снимаете жетон Стресса с вашего корабля, вы можете назначить жетон Концентрации на ваш корабль."""
        "Jan Ors":
            name: "Джан Орс"
            text: """Один раз за ход, когда дружественный корабль на расстоянии 1-3 выполняет действие Концентрации или получает жетон Концентрации, вы можете назначить ему жетон Уклонения вместо этого."""
        "Toryn Farr":
            name: "Торин Фарр"
            text: """<strong>Действие:</strong> Потратьте любое количество энергии чтобы выбрать это количество кораблей на расстоянии 1-2. Уберите все жетоны Концентрации, Уклонения, и синие жетоны захвата цели с этих кораблей."""
        # TODO Check card formatting
        "R4-D6":
            name: "R4-D6"
            text: """Когда вы получаете попадание от атаки и имеете по меньшей мере 3 неотмененных результата %HIT% , вы можете отменить эти результаты пока не останется 2. За каждый результат, отмененный этим способом, получите 1 жетон стресса."""
        "R5-P9":
            name: "R5-P9"
            text: """В конце фазы Боя, вы можете потратить 1 из ваших жетонов Концентрации чтобы восстановить 1 щит (до максимального значения ваших щитов)."""
        "WED-15 Repair Droid":
            name: "Ремонтный дроид WED-15"
            text: """<strong>Действие:</strong> Потратьте 1 энергии чтобы сбросить 1 из ваших карт повреждений, лежащих лицом вниз, или потратьте 3 энергии чтобы сбросить 1 из ваших карт повреждений, лежащих лицом вверх."""
        "Carlist Rieekan":
            name: "Карлист Риеекан"
            text: """В начале фазы Активации, вы можете сбросить эту карту чтобы считать умение пилота каждого дружественного корабля как "12" до конца фазы."""
        "Jan Dodonna":
            name: "Ян Додонна"
            text: """Когда другой дружественный корабль на расстоянии 1 атакует, он может сменить 1 результат %HIT% на 1 результат %CRIT%."""
        "Expanded Cargo Hold":
            name: "Расширенный грузовой отсек"
            text: """<span class="card-restriction">Только для GR-75</span><br /><br />Один раз за ход, когда вы должны получить карту повреждений лицом вверх, вы можете потянуть эту карту из колоды повреждений носовой или кормовой части."""
            ship: 'Средний транспорт GR-75'
        "Backup Shield Generator":
            name: "Вспомогательный генератор щита"
            text: """В конце каждого хода вы можете потратить 1 энергии чтобы восстановить 1 щит (до максимального значения щитов)."""
        "EM Emitter":
            name: "ЭМ эмиттер"
            text: """Когда вы перекрываете атаку, защищающийся бросает 3 дополнительных кубика защиты (вместо 1)."""
        "Frequency Jammer":
            name: "Глушитель частот"
            text: """Когда вы выполняете действие Заклинивания, выберите 1 вражеский корабль, не имеющий жетон стресса и находящийся на расстоянии 1 от заклинившего корабля. Выбранный корабль получает 1 жетон стресса."""
        "Han Solo":
            name: "Хан Соло"
            text: """Когда вы атакуете, если у вас есть захват цели на защищающемся, вы можете потратить этот захват цели чтобы сменить все результаты %FOCUS% на результаты %HIT%."""
        "Leia Organa":
            name: "Лея Органа"
            text: """В начале фазы Активации вы можете сбросить эту карту чтобы позволить всем дружественным кораблям, объявляющим красный маневр, считать этот маневр белым до конца фазы."""
        "Raymus Antilles":
            name: "Раймус Антиллес"
            text: """В начале фазы Активации, выберите 1 вражеский корабль на расстоянии 1-3. Вы можете посмотреть на выбранный маневр этого корабля. Если маневр белый, назначьте этому кораблю 1 жетон стресса."""
        "Gunnery Team":
            name: "Орудийная команда"
            text: """Один раз за ход, атакуя вспомогательным оружием, вы можете потратить 1 энергии чтобы сменить 1 пустой результат на результат %HIT%."""
        "Sensor Team":
            name: "Сенсорная команда"
            text: """При получении захвата цели, вы можете захватывать вражеский корабль на расстоянии 1-5 вместо 1-3."""
        "Engineering Team":
            name: "Инженерная команда"
            text: """Во время фазы активации, когда вы открываете %STRAIGHT% маневр, получите дополнительно 1 энергии во время шага "Получение энергии"."""
        "Lando Calrissian":
            name: "Лэндо Калриссиан"
            text: """<strong>Действие:</strong> Бросьте 2 кубика защиты. За каждый результат %FOCUS% назначьте 1 жетон Концентрации на ваш корабль. За каждый результат %EVADE% , назначьте 1 жетон Уклонения на ваш корабль."""
        "Mara Jade":
            name: "Мара Джейд"
            text: """В конце фазы Боя, каждый вражеский корабль на расстоянии 1, не имеющий жетона Стресса, получает 1 жетон Стресса."""
        "Fleet Officer":
            name: "Офицер флота"
            text: """<strong>Действие:</strong> Выберите до двух дружественных кораблей на расстоянии 1-2 и назначьте 1 жетон концентрации каждому из них. Затем получите 1 жетон Стресса."""
        "Lone Wolf":
            name: "Одинокий волк"
            text: """Атакуя или защищаясь, при отсутствии других дружественных кораблей на расстоянии 1-2, вы можете перебросить 1 из ваших пустых результатов."""
        "Stay On Target":
            name: "Оставайся на цели"
            text: """Когда вы открываете маневр, вы можете повернуть ваш диск на другой маневр с той же скоростью.<br /><br />Считайте эот маневр красным маневром."""
        "Dash Rendar":
            name: "Даш Рендар"
            text: """Вы можете проводить атаки, перекрывая подставкой препятствие.<br /><br />Ваши атаки не могут быть перекрыты."""
        '"Leebo"':
            name: "Лиибо"
            text: """<strong>Действие:</strong> Выполните свободное действие Ускорение. Затем получите 1 ионный жетон."""
        "Ruthlessness":
            name: "Беспощадность"
            text: """После того, как вы выполните атаку, которая попала, вы <strong>должны</strong> выбрать 1 корабль на расстоянии 1 от защищающегося (кроме себя). Этот корабль получает 1 повреждение."""
        "Intimidation":
            name: "Устрашение"
            text: """Когда вы касаетесь вражеского корабля, его Маневренность снижается на 1."""
        "Ysanne Isard":
            name: "Исанн Айсард"
            text: """В начале фазы Боя, если у вас нет щитов и на ваш корабль назначена хотя бы 1 карта повреждений, вы можете провести свободное действие Уклонения."""
        "Moff Jerjerrod":
            name: "Мофф Джерджеррод"
            text: """Когда вы получаете карту повреждений лицом вверх, вы можете сбросить эту карту или другую карту улучшений %CREW% типа, чтобы перевернуть эту карту повреждений лицом вниз (не отрабатывая ее эффект)."""
        "Ion Torpedoes":
            name: "Ионные торпеды"
            text: """<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.<br /><br />Если эта атака попадет, защищающийся и каждый корабль на расстоянии 1 получает 1 ионный жетон."""
        "Bomb Loadout":
            name: "Бомбовая загрузка"
            text: """<span class="card-restriction">Только для У-Крыла.</span><br /><br />Ваша панель улучшений получает значок %BOMB%."""
            ship: "У-Крыл"
        "Bodyguard":
            name: "Телохранитель"
            text: """%SCUMONLY%<br /><br />В начале фазы Боя, вы можете потратить жетон Концентрации, чтобы выбрать дружественный корабль с более высоким умением пилота на расстоянии 1. Увеличьте его значение Маневренности на 1 до конца хода."""
        "Calculation":
            name: "Счисление"
            text: """Атакуя, вы можете потратить жетон Концентрации, чтобы сменить 1 из ваших результатов %FOCUS% на результат %CRIT%."""
        "Accuracy Corrector":
            name: "Корректировщик огня"
            text: """Атакуя, во время шага "Модификация кубиков атаки", вы можете отменить все результаты кубиков. Затем, вы можете добавить 2 результата %HIT% к броску.<br /><br />Ваши кубики не могут быть модифицированы снова во время этой атаки."""
        "Inertial Dampeners":
            name: "Инерциальные амортизаторы"
            text: """Когда вы открываете ваш маневр, вы можете сбросить эту карту чтобы вместо него выполнить белый [0%STOP%] маневр. Затем получите 1 жетон Стресса."""
        "Flechette Cannon":
            name: "Осколочная пушка"
            text: """<strong>Атака:</strong> Атакуйте 1 корабль.%LINEBREAK% Если эта атака попадает, защищающийся получает 1 повреждение и, если он не имеет жетонов Стресса, также получает 1 жетон Стресса. Затем отмените <strong>все</strong> результаты кубиков."""
        '"Mangler" Cannon':
            name: 'Пушка "Потрошитель"'
            text: """<strong>Атака:</strong> Атакуйте 1 корабль.%LINEBREAK% Атакуя, вы можете заменить 1 результат %HIT% на результат %CRIT%."""
        "Dead Man's Switch":
            name: "Кнопка мертвеца"
            text: """Когда вы уничтожены, каждый корабль на расстоянии 1 получает 1 повреждение."""
        "Feedback Array":
            name: "Матрица обратной связи"
            text: """Во время фазы Боя, вместо выполнения каких-либо атак, вы можете получить 1 ионный жетон и 1 повреждение, чтобы выбрать 1 вражеский корабль на расстоянии 1. Этот корабль получает 1 повреждение."""
        '"Hot Shot" Blaster':
            name: "Бластер Пробивной"
            text: """<strong>Атака:</strong> Сбросьте эту карту, чтобы атаковать 1 корабль (даже корабль вне вашей арки огня)."""
        "Greedo":
            name: "Гридо"
            text: """%SCUMONLY%<br /><br />В первый раз за ход, когда вы атакуете, и в первый раз за ход, когда вы защищаетесь, первая нанесенная карта повреждений отрабатывается в открытую."""
        "Outlaw Tech":
            name: "Техник вне закона"
            text: """%SCUMONLY%<br /><br />После того, как вы выполнили красный маневр, вы можете назначить 1 жетон Концентрации на ваш корабль."""
        "K4 Security Droid":
            name: "Дроид безопасности K4"
            text: """%SCUMONLY%<br /><br />После выполнения зеленого маневра, вы можете получить захват цели."""
        "Salvaged Astromech":
            name: "Трофейный астромех"
            text: """Когда вы получаете карту повреждений лицом вверх с обозначением <strong>Корабль</strong>, вы можете немедленно сбросить эту карту (не отрабатывая ее эффект).<br /><br />Затем сбросьте эту карту."""
        '"Genius"':
            name: '"Гений"'
            text: """После того, как вы откроете и выполните маневр, если вы не перекрываете другой корабль, вы можете сбросить 1 из ваших карт улучшения %BOMB% без указателя <strong>Действие:</strong> чтобы сбросить соответствующий жетон бомбы."""
        "Unhinged Astromech":
            name: "Неподвешенный астромех"
            text: """Вы можете считать маневры со скоростью 3 зелеными маневрами."""
        "R4 Agromech":
            name: "Агромех R4"
            text: """Атакуя, после того, как вы потратили жетон Концентрации, вы можете получить захват цели на защищающегося."""
        "R4-B11":
            text: """Атакуя, если у вас есть захват цели на защищающегося, вы можете потратить захват цели чтобы выбрать любые кубики защиты. Защищающийся должен перебросить выбранные кубики."""
        "Autoblaster Turret":
            name: "Автобластерная турель"
            text: """<strong>Атака:</strong> Атакуйте 1 корабль (даже если он находится вне вашей арки огня).<br /><br />Ваши %HIT% результаты не могут быть отменены кубиками защиты.<br /><br />Защищающийся может отменять результаты %CRIT% до результатов %HIT%."""
        "Advanced Targeting Computer":
            ship: "TIE Улучшенный"
            name: "Улучшенный компьютер наведения"
            text: """<span class="card-restriction">Только для TIE улучшенный.</span>%LINEBREAK%Атакуя основным оружием, если у вас есть захват цели на защищающегося, вы можете добавить 1 результат %CRIT% к вашему броску. Если вы решаете это сделать, вы не можете использовать захваты цели во время этой атаки."""
        "Ion Cannon Battery":
            name: "Батарея ионных пушек"
            text: """<strong>Атака (Энергия):</strong> Потратьте 2 энергии с этой карты чтобы выполнить эту атаку. Если эта атака попадает, защищающийся получает 1 критическое повреждение и 1 ионный жетон. Затем отмените <strong>все</strong> результаты кубиков."""
        "Emperor Palpatine":
            name: "Император Палпатин"
            text: """%IMPERIALONLY%%LINEBREAK%Один раз за ход, до того как дружественный корабль бросает кубики, вы можете назвать результат кубика. После броска вы должны заменить 1 из ваших резултьтатов на кубиках на названный результат. Результат этого кубика не может быть модифицирован снова."""
        "Bossk":
            name: "Босск"
            text: """%SCUMONLY%%LINEBREAK%После того, как вы выполнили атаку, которая не попала, если у вас нет Стресса, вы <strong>должны</strong> получить 1 жетон Стресса. Затем получите 1 жетон Концентрации на ваш корабль, а также получите захват цели на защищающегося."""
        "Lightning Reflexes":
            name: "Молниеносные рефлексы"
            text: """%SMALLSHIPONLY%%LINEBREAK%После выполнения белого или зеленого маневра, вы можете сбросить эту карту чтобы развернуть корабль на 180°. Затем получите 1 жетон стресса <strong>после</strong> шага "Проверка стресса пилота."""
        "Twin Laser Turret":
            name: "Спаренная лазерная турель"
            text: """<strong>Атака:</strong> Выполните эту атаку <strong>дважды</strong> (даже против корабля вне вашей арки огня).<br /><br />Каждый раз, когда эта атака попадает, защищающийся получает 1 повреждение. Затем отмените <strong>все</strong> результаты кубиков."""
        "Plasma Torpedoes":
            name: "Плазменные торпеды"
            text: """<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.<br /><br />Если атака попадает, после нанесения повреждений, снимите 1 жетон щита с защищающегося."""
        "Ion Bombs":
            name: "Ионные бомбы"
            text: """Когда вы открываете диск маневров, вы можете сбросить эту карту чтобы <strong>сбросить</strong> 1 жетон ионной бомбы.<br /><br />Этот жетон <strong>взрывается</strong> в конце фазы Активации.<br /><br /><strong>Жетон ионной бомбы:</strong> Когда этот жетон бомбы взрывается, каждый корабль на расстоянии 1 от жетона получает 2 ионных жетона. Затем сбросьте этот жетон."""
        "Conner Net":
            name: "Сеть Коннер"
            text: """<strong>Действие:</strong> Сбросьте эту карту чтобы <strong>бросить</strong> 1 жетон сети Коннер.<br /><br />Когда подставка корабля или шаблон маневра перекрывает этот жетон, он <strong>взрывается</strong>.<br /><br /><strong>Жетон сети Коннер:</strong> Когда этот бомбовый жетон взрывается, корабль, прощедший через него или перекрывший его, получает 1 повреждение, 2 ионных жетона и пропускает шаг "Выполнение действия". Затем сбросьте этот жетон."""
        "Bombardier":
            name: "Бомбардир"
            text: """Сбрасывая бомбу, вы можете использовать шаблон (%STRAIGHT% 2) вместо шаблона (%STRAIGHT% 1)."""
        "Cluster Mines":
            name: "Кластерные мины"
            text: """<strong>Действие:</strong> Сбросьте эту карту чтобы <strong>бросить</strong> комплект кластерных мин (3 жетона).<br /><br />Когда подставка корабля или шаблон маневра перекрывает жетон кластерной мины, он <strong>взрывается</strong>.<br /><br /><strong>Жетоны кластерных мин:</strong> Когда один из этих жетонов бомб взрывается, корабль, прощедший через него или перекрывший его, бросает 2 кубика атаки и получает 1 повреждение за каждый результат %HIT% или %CRIT%. Затем сбросьте этот жетон."""
        'Crack Shot':
            name: "Точный выстрел"
            text: '''Когда вы атакуете корабль в вашей арке огня, в начале шага "Сравнение результатов", вы можете сбросить эту карту чтобы отменить 1 результат %EVADE% защищающегося.'''
        "Advanced Homing Missiles":
            name: "Улучшенные самонаводящиеся ракеты"
            text: """<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.%LINEBREAK%Если эта атака попадает, назначьте 1 карту повреждений лицом вверх защищающемуся. Затем отмените <strong>все</strong> результаты кубиков."""
        'Agent Kallus':
            name: "Агент Каллус"
            text: '''%IMPERIALONLY%%LINEBREAK%В начале первого хода, выберите 1 маленький или большой корабль врага. Атакуя или защищаясь против этого корабля, вы можете сменить 1 из ваших результатов %FOCUS% на результат %HIT% или %EVADE%.'''
        'XX-23 S-Thread Tracers':
            name: "Следящие маяки XX-23"
            text: """<strong>Атака (Концентрация):</strong> Cбросьте эту карту чтобы выполнить эту атаку.%LINEBREAK% Если эта атака попадает, каждый дружественный корабль на расстоянии 1-2 от вас может получить захват цели на защищающемся. Затем отмените <strong>все</strong> результаты кубиков."""
        "Tractor Beam":
            name: "Луч захвата"
            text: """<strong>Атака:</strong> Атакуйте 1 корабль.%LINEBREAK%Если эта атака попадает, защищающийся получает 1 жетон Луча Захвата. Затем отмените <strong>все</strong> результаты кубиков."""
        "Cloaking Device":
            name: "Маскировочное устройство"
            text: """%SMALLSHIPONLY%%LINEBREAK%<strong>Действие:</strong> Выполните свободное действие Маскировки.%LINEBREAK%В конце каждого хода, если вы замаскированы, бросьте 1 кубик атаки. При результатк %FOCUS%, сбросьте эту карту, затем размаскируйтесь или сбросьте ваш жетон Маскировки."""
        "Shield Technician":
            name: "Техник щита"
            text: """%HUGESHIPONLY%%LINEBREAK%Когда вы выполняете действие Восстановления, вместо того, чтобы потратить всю вашу энергию, вы можете выбрать количество энергии для использования."""
        "Grand Moff Tarkin":
            name: "Гранд Мофф Таркин"
            text: """%HUGESHIPONLY%%IMPERIALONLY%%LINEBREAK%В начале фазы Боя, вы можете выбрать другой корабль на расстоянии 1-4. Затем уберите 1 жетон Концентрации с выбранного корабля, или же назначьте 1 жетон концентрации на него."""
        "Captain Needa":
            name: "Капитан Нида"
            text: """%HUGESHIPONLY%%IMPERIALONLY%%LINEBREAK%Если вы перекрываете препятствие во время фазы Активации, не получайте 1 карту повреждений лицом вверх. Вместо этого, бросьте 1 кубик атаки. При результате %HIT% или %CRIT%, получите 1 повреждение."""
        "Admiral Ozzel":
            name: "Адмирал Оззел"
            text: """%HUGESHIPONLY%%IMPERIALONLY%%LINEBREAK%<strong>Энергия</strong>: Вы можете снять до 3 щитов с вашего корабля. За каждый убранный щит, получите 1 энергии."""
        'Glitterstim':
            name: "Глиттерстим"
            text: """В начале фазы Боя, вы можете сбросить эту карту и получить 1 жетон стресса. Если вы делаете это, до конца хода, защищаясь или атакуя, вы можете сменить все ваши результаты %FOCUS% на результаты %HIT% или %EVADE%."""
        'Extra Munitions':
            name: "Дополнительные боеприпасы"
            text: """Когда вы экипируете эту карту, положите 1 жетон боеприпасов на каждую экипированную карту улучшений %TORPEDO%, %MISSILE% и %BOMB%. Когда вы должны сбросить карту улучшений, вместо этого вы можете сбросить жетон боеприпасов с этой карты."""
        "Weapons Guidance":
            name: "Система наведения"
            text: """Атакуя, вы можете потратить жетон Концентрации, чтобы заменить 1 из ваших пустых результатов на результат %HIT%."""
        "BB-8":
            text: """Когда вы открываете зеленый маневр, вы можете выполнить свободное действие Бочку."""
        "R5-X3":
            text: """Перед открытием вашего маневра, вы можете сбросить эту карту, чтобы игнорировать препятствия до конца хода."""
        "Wired":
            name: "Подключенный"
            text: """Атакуя или защищаясь, если у вас есть жетон Стресса, вы можете перебросить 1 или более результатов %FOCUS%."""
        'Cool Hand':
            name: "Хладнокровный"
            text: '''Когда вы получаете жетон стресса, вы можете сбросить эту карту чтобы назначить 1 жетон Концентрации или Уклонения на ваш корабль.'''
        'Juke':
            name: "Финт"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Атакуя, если у вас есть жетон Уклонения, вы можете заменить 1 из результатов %EVADE% защищающегося на результат %FOCUS%.'''
        'Comm Relay':
            name: "Реле связи"
            text: '''Вы не можете иметь больше 1 жетона Уклонения.%LINEBREAK%Во время фазы Завершения, не убирайте неиспользованный жетон Уклонения с вашего корабля.'''
        'Twin Laser Turret':
            name: "Двойная лазерная турель"
            text: '''%GOZANTIONLY%%LINEBREAK%<strong>Атака (Энергия):</strong> Потратьте 1 энергии с этой карты чтобы выполнить эту атаку против 1 корабля (даже если он находится вне вашей арки огня).'''
        'Broadcast Array':
            name: "Реле вещания"
            text: '''%GOZANTIONLY%%LINEBREAK%Ваша панель действий получает значок %JAM%.'''
        'Rear Admiral Chiraneau':
            name: "Контр-адмирал Ширано"
            text: '''%HUGESHIPONLY% %IMPERIALONLY%%LINEBREAK%<strong>Действие:</strong> Выполните белый(%STRAIGHT% 1) маневр.'''
        'Ordnance Experts':
            name: "Ракетные эксперты"
            text: '''Один раз за ход, когда дружественный корабль на расстоянии 1-3 атакует вспомогательным оружием %TORPEDO% или %MISSILE%, он может заменить 1 пустой результат на результат %HIT%.'''
        'Docking Clamps':
            name: "Доковые порты"
            text: '''%GOZANTIONLY% %LIMITED%%LINEBREAK%Вы можете пристыковать до 4 TIE истребителей, TIE перехватчиков, TIE улучшенных или TIE бомбардировщиков к этому кораблю. Все пристыкованные корабли должны иметь один и тот же тип корабля.'''
        '"Zeb" Orrelios':
            name: "Зеб Ореллиос"
            text: """%REBELONLY%%LINEBREAK%Вражеские корабли в вашей арке огня, которых вы касаетесь, не считаются касающимися вас, когда они или вы активируетесь во время фазы Боя."""
        'Kanan Jarrus':
            name: "Кейнан Джаррус"
            text: """%REBELONLY%%LINEBREAK%Один раз за ход, после того, как дружественный корабль на расстоянии 1-2 выполняет белый маневр, вы можете снять 1 жетон Стресса с того корабля."""
        'Reinforced Deflectors':
            name: "Усиленные отражатели"
            text: """%LARGESHIPONLY%%LINEBREAK%После защиты, если вы получили 3 или более повреждений или критических повреждений во время атаки, восстановите 1 щит (до максимального значения щитов)."""
        'Dorsal Turret':
            name: "Палубная турель"
            text: """<strong>Атака:</strong> Атакуйте 1 корабль (даже если он находится вне вашей арки огня).%LINEBREAK%Если цель атаки находится на расстоянии 1, бросьте 1 дополнительный кубик атаки."""
        'Targeting Astromech':
            name: "Астромех наведения"
            text: '''После выполнения красного маневра, вы можете получить захват цели.'''
        'Hera Syndulla':
            name: "Гера Синдулла"
            text: """%REBELONLY%%LINEBREAK%Вы можете открывать и выполнять красные маневры, даже находясь под Стрессом."""
        'Ezra Bridger':
            name: "Эзра Бриджер"
            text: """%REBELONLY%%LINEBREAK%Атакуя, если вы под Стрессом, вы можете заменить 1 результат %FOCUS% на результат %CRIT%."""
        'Sabine Wren':
            name: "Сабина Врен"
            text: """%REBELONLY%%LINEBREAK%Ваша панель улучшений получает значок %BOMB%. Один раз за ход, перед тем, как убрать дружественный жетон бомбы, выберите 1 вражеский корабль на расстоянии 1 от этого жетона. Этот корабль получает 1 повреждение."""
        '"Chopper"':
            name: "Чоппер"
            text: """%REBELONLY%%LINEBREAK%Вы можете выполнять действия, находясь под Стрессом.%LINEBREAK%После того, как вы выполнили действие, находясь под Стрессом, получите 1 повреждение."""
        'Construction Droid':
            name: "Строительный дроид"
            text: '''%HUGESHIPONLY% %LIMITED%%LINEBREAK%Когда вы выполняете действие Восстановления, вы можете потратить 1 энергии, чтобы сбросить 1 карту повреждений, лежащую лицом вниз.'''
        'Cluster Bombs':
            name: "Кластерные бимбы"
            text: '''После защиты, вы можете сбросить эту карту. Если вы делаете это, любой другой корабль на расстоянии 1 от защищающейся секции бросает 2 кубика атаки, получая выброшенные повреждения (%HIT%) и критические повреждения (%CRIT%).'''
        "Adaptability":
            name: "Адаптивность"
            text: """<span class="card-restriction">Двойная карта.</span>%LINEBREAK%<strong>Сторона A:</strong> Увеличьте ваше умение пилота на  1.%LINEBREAK%<strong>Сторона Б:</strong> Уменьшите ваше умение пилота на 1."""
        "Electronic Baffle":
            name: "Электронный экран"
            text: """Когда вы получаете жетон стресса или ионный жетон, вы можете получить 1 повреждение чтобы сбросить этот жетон."""
        "4-LOM":
            text: """%SCUMONLY%%LINEBREAK%Атакуя, во время шага "Модификация кубиков атаки", вы можете получить 1 ионный жетон чтобы выбрать 1 из жетонов Концентрации или Уклонения защищающегося. Этот жетон не может использоваться во время этой атаки."""
        "Zuckuss":
            name: "Закасс"
            text: """%SCUMONLY%%LINEBREAK%Атакуя, если вы не под Стрессом, вы можете получить любое количество жетонов Стресса, чтобы выбрать равное количество кубиков защиты. Защищающийся должен перебросить эти кубики."""
        'Rage':
            name: "Гнев"
            text: """<strong>Действие:</strong> Назначьте 1 жетон Концентрации вашему кораблю и получите 2 жетона Стресса. До конца хода, при атаке, вы можете перебросить до 3 кубиков атаки."""
        "Attanni Mindlink":
            name: "Мысленная связь Аттанни"
            text: """%SCUMONLY%%LINEBREAK%Каждый раз, когда вы получаете жетон Концентрации или Стресса, каждый другой дружественный корабль с Мысленной связью Аттанни также должен получить тот же тип жетона, если его у него нет."""
        "Boba Fett":
            name: "Боба Фетт"
            text: """%SCUMONLY%%LINEBREAK%После выполнения атаки, если защищающийся получил карту повреждений лицом вверх, вы можете сбросить эту карту чтобы выбрать и сбросить 1 карту улучшений защищающегося."""
        "Dengar":
            name: "Денгар"
            text: """%SCUMONLY%%LINEBREAK%Атакуя, вы можете перебросить 1 кубик атаки. Если защищающийся - уникальный пилот, вы можете перебросить до 2 кубиков атаки."""
        '"Gonk"':
            name: '"Гонк"'
            text: """%SCUMONLY%%LINEBREAK%<strong>Действие:</strong> Положите 1 жетон щита на эту карту.%LINEBREAK%<strong>Действие:</strong> Уберите 1 жетон щита с этой карты чтобы восстановить 1 щит (до максимального значения щитов)."""
        "R5-P8":
            text: """Один раз за ход, после защиты, вы можете бросить 1 кубик атаки. При результате %HIT%, атакующий получает 1 повреждение. При результате %CRIT%, вы и атакующий получаете 1 повреждение каждый."""
        'Thermal Detonators':
            name: "Термальные детонаторы"
            text: """Когда вы открываете диск маневров, вы можете сбросить эту карту чтобы <strong>сбросить</strong> 1 жетон термального детонатора.<br /><br />Этот жетон <strong>взрывается</strong> в конце фазы Активации.<br /><br /><strong>Жетон термального детонатора:</strong> Когда этот жетон бомбы взрывается, каждый корабль на расстоянии 1 от жетона получает 1 повреждение и 1 жетон Стресса. Затем сбросьте этот жетон."""
        "Overclocked R4":
            name: "Разогнанный R4"
            text: """Во время фазы Боя, когда вы тратите жетон Концентрации, вы можете получить 1 жетон Стресса чтобы назначить 1 жетон Концентрации на ваш корабль."""
        'Systems Officer':
            name: "Системный офицер"
            text: '''%IMPERIALONLY%%LINEBREAK%После выполнения зеленого маневра, выберите другой дружественный корабль на расстоянии 1. Этот корабль может получить захват цели.'''
        'Tail Gunner':
            name: "Кормовой стрелок"
            text: '''Атакуя с кормовой вторичной арки огня, снизьте Маневренность защищающегося на 1.'''
        'R3 Astromech':
            name: "Астромех R3"
            text: '''Один раз за ход, атакуя основным оружием, во время шага "Модификация кубиков атаки", вы можете отменить один из ваших результатов %FOCUS%, чтобы назначить 1 жетон Уклонения на ваш корабль.'''
        'Collision Detector':
            name: "Детектор столкновений"
            text: '''Выполняя Ускорение, Бочку или Размаскировывание, ваш корабль и шаблон маневра могут накладываться на преграды.%LINEBREAK%При броске за повреждение от преград, игнорируйте все результаты %CRIT%.'''
        'Sensor Cluster':
            name: "Сенсорный кластер"
            text: '''Защищаясь, вы можете потратить жетон Концентрации, чтобы сменить 1 из ваших пустых результатов на результат %EVADE%.'''
        'Fearlessness':
            name: "Бесстрашие"
            text: '''%SCUMONLY%%LINEBREAK%Атакуя, если вы находитесь в арке огня защищающегося на расстоянии 1 и защищающийся находится в вашей арке огня, вы можете добавить 1 результат %HIT% к вашему броску.'''
        'Ketsu Onyo':
            name: "Кетсу Онио"
            text: '''%SCUMONLY%%LINEBREAK%В начале фазы Завершения, вы можете выбрать 1 корабль в вашей арке огня на расстоянии 1-2. Этот корабль не убирает свои жетоны Луча захвата.'''
        'Latts Razzi':
            name: "Латтс Рацци"
            text: '''%SCUMONLY%%LINEBREAK%Защищаясь, вы можете снять 1 жетон стресса с атакующего и добавить 1 результат %EVADE% к вашему броску.'''
        'IG-88D':
            text: '''%SCUMONLY%%LINEBREAK%Вы имеете способность пилота каждого другого дружественного корабля с картой улучшения <em>IG-2000</em> (в дополнение к вашей собственной способности пилота).'''
        'Rigged Cargo Chute':
            name: "Подъёмный грузовой желоб"
            text: '''%LARGESHIPONLY%%LINEBREAK%<strong>Действие:</strong> Сбросьте эту карту чтобы <strong>сбросить</strong> 1 жетон Груза.'''
        'Seismic Torpedo':
            name: "Сейсмическая торпеда"
            text: '''<strong>Действие:</strong> Сбросьте эту карту чтобы выбрать препятствие на расстоянии 1-2 и в вашей арке огня. Каждый корабль на расстоянии 1 от препятствия бросает 1 кубик атаки и получает любое выброшенное повреждение (%HIT%) или критическое повреждение (%CRIT%). Затем уберите препятствие.'''
        'Black Market Slicer Tools':
            name: "Боевые системы с черного рынка"
            text: '''<strong>Действие:</strong> Выберите вражеский корабль под Стрессом на расстоянии 1-2 и бросьте 1 кубик атаки. При результате %HIT% или %CRIT%, уберите 1 жетон стресса и нанесите ему 1 повреждение лицом вниз.'''
        # Wave X
        'Kylo Ren':
            name: "Кайло Рен"
            text: '''%IMPERIALONLY%%LINEBREAK%<strong>Действие:</strong> Назначьте карту состояния "Я покажу тебе Темную Сторону" на вражеский корабль на расстоянии 1-3.'''
        'Unkar Plutt':
            name: "Анкар Платт"
            text: '''%SCUMONLY%%LINEBREAK%После выполнения маневра, который приводит к наложению на вражеский корабль, вы можете получить 1 повреждение, чтобы выполнить 1 свободное действие.'''
        'A Score to Settle':
            name: "Личные счеты"
            text: '''Во время расстановки, перед шагом "Расстановка сил", выберите 1 вражеский корабль и назначьте ему карту состояния "Счет к оплате"."%LINEBREAK%Атакуя корабль, имеющий карту состояния "Счет к оплате", вы можете заменить 1 результат %FOCUS% на результат %CRIT%.'''
        'Jyn Erso':
            name: "Джин Эрсо"
            text: '''%REBELONLY%%LINEBREAK%<strong>Действие:</strong> Выберите 1 дружественный корабль на расстоянии 1-2. Назначьте 1 жетон Концентрации на этот корабль за каждый вражеский корабль в вашей арке огня на расстоянии 1-3. Вы не можете назначить более 3 жетонов Концентрации этим способом.'''
        'Cassian Andor':
            name: "Кассиан Эндор"
            text: '''%REBELONLY%%LINEBREAK%В конце фазы Планирования, вы можете выбрать вражеский корабль на расстоянии 1-2. Озвучьте скорость и направление маневра этого корабля, затем посмотрите на его диск маневров. Если вы правы, вы можете повернуть ваш диск на другой маневр.'''
        'Finn':
            name: "Финн"
            text: '''%REBELONLY%%LINEBREAK%Атакуя основным оружием или защищаясь, если вражеский корабль находится в вашей арке огня, вы можете добавить 1 пустой результат к вашему броску.'''
        'Rey':
            name: "Рэй"
            text: '''%REBELONLY%%LINEBREAK%В начале фазы Завершения, вы можете положить 1 из жетонов Концентрации вашего корабля на эту карту. В начале фазы Боя, вы можете назначить 1 из этих жетонов на ваш корабль.'''
        'Burnout SLAM':
            name: "Ускоритель ССДУ"
            text: '''%LARGESHIPONLY%%LINEBREAK%Ваша панель действий получает значок действия %SLAM%.%LINEBREAK%После выполнения действия ССДУ (СубСветовой Двигатель Ускорения), сбросьте эту карту.'''
        'Primed Thrusters':
            name: "Турбоускорители"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Вы можете выполнять действия Бочка и Ускорение, имея жетоны стресса, если их три или меньше.'''
        'Pattern Analyzer':
            name: "Шаблонный анализатор"
            text: '''При выполнении маневра, вы можете отрабатывать шаг "Проверка стресса пилота" после шага "Выполнение действий" (вместо того, чтобы отрабатывать его перед этим шагом).'''
        'Snap Shot':
            name: "Выстрел навскидку"
            text: '''После того, как вражеский корабль выполняет маневр, вы можете выполнить эту атаку против него.%LINEBREAK% <strong>Атака:</strong> Атакуйте 1 корабль. Вы не можете модифицировать кубики атаки и не можете атаковать снова в эту фазу.'''
        'M9-G8':
            text: '''%REBELONLY%%LINEBREAK%Когда корабль, на котором есть ваш жетон захвата, атакует, вы можете выбрать 1 кубик атаки. Атакующий должен перебросить этот кубик.%LINEBREAK%Вы можете заявлять захват цели на другие дружественные корабли.'''
        'EMP Device':
            name: "Прибор ЭМИ"
            text: '''Во время фазы Боя, вместо выполнения любых атак, вы можете сбросить эту карту, чтобы назначить 2 ионных жетона на каждый корабль на расстоянии 1.'''
        'Captain Rex':
            name: "Капитан Рекс"
            text: '''%REBELONLY%%LINEBREAK%После проведения атаки, не завершившейся попаданием, вы можете назначить 1 жетон Концентрации на ваш корабль.'''
        'General Hux':
            name: "Генерал Хакс"
            text: '''%IMPERIALONLY%%LINEBREAK%<strong>Действие:</strong> Выберите до 3 дружественных кораблей на расстоянии 1-2. Назначьте 1 жетон Концентрации на каждый из них, а также назначьте карту состояния "Фанатическая преданность" на 1 из них. Затем получите 1 жетон Стресса.'''
        'Operations Specialist':
            name: "Операционный специалист"
            text: '''%LIMITED%%LINEBREAK%После того, как дружественный корабль на расстоянии 1-2 выполняет атаку, не завершившуюся попаданием, вы можете назначить 1 жетон Концентрации на дружественный корабль на расстоянии 1-3 от атакующего.'''
        'Targeting Synchronizer':
            name: "Целевой синхронизатор"
            text: '''Когда дружественный корабль на расстоянии 1-2 атакует корабль, находящийся в вашем захвате, дружественный корабль считает указатель "<strong>Атака (Захват цели):</strong> как указатель "<strong>Атака:</strong>." Если игровой эффект обязывает этот корабль потратить захват цели, он может потратить ваш захват цели вместо этого.'''
        'Hyperwave Comm Scanner':
            name: "Гиперволновой сканер связи"
            text: '''В начале шага "Расстановка сил", вы можете считать ваше умение пилота равным "0", "6" или "12" до конца этого шага.%LINEBREAK% Во время расстановки, после того, как другой дружественный корабль выставляется на расстоянии 1-2, вы можете назначить ему 1 жетон Концентрации или Уклонения.'''
        'Trick Shot':
            name: "Ловкий выстрел"
            text: '''Атакуя, если вы стреляете через препятствие, вы можете бросить 1 дополнительный кубик атаки.'''
        'Hotshot Co-pilot':
            name: "Умелый второй пилот"
            text: '''Когда вы атакуете основным оружием, защищающийся должен потратить 1 жетон Концентрации при возможности.%LINEBREAK%Когда вы защищаетесь, атакующий должен потратить 1 жетон Концентрации при возможности.'''
        '''Scavenger Crane''':
            name: "Кран мусорщика"
            text: '''После того, как корабль на расстоянии 1-2 уничтожен, вы можете выбрать сброшенную карту %TORPEDO%, %MISSILE%, %BOMB%, %CANNON%, %TURRET%, или Модификационное улучшение, которое было экипировано на ваш корабль, и вернуть его. Затем бросьте 1 кубик атаки. При пустом результате, сбросьте Кран мусорщика.'''
        'Bodhi Rook':
            name: "Боди Рук"
            text: '''%REBELONLY%%LINEBREAK%Когда вы заявляете захват цели, вы можете захватывать корабль врага на расстоянии 1-3 от любого дружественного корабля.'''
        'Baze Malbus':
            name: "Бэйз Мальбус"
            text: '''%REBELONLY%%LINEBREAK%После выполнения атаки, которая не попала, вы можете немедленно выполнить атаку основным оружием против другого корабля. Вы не можете выполнять другую атаку в этот ход.'''
        'Inspiring Recruit':
            name: "Вдохновляющий рекрут"
            text: '''Один раз за ход, когда дружественный корабль на расстоянии 1-2 снимает жетон Стресса, он может снять 1 дополнительный жетон стресса.'''
        'Swarm Leader':
            name: "Лидер роя"
            text: '''Выполняя атаку основным оружием, выберите до 2 других дружественных кораблей, имеющих защищающегося в их арках огня на расстоянии 1-3. Снимите 1 жетон Уклонения с каждого выбранного корабля чтобы бросить 1 дополнительный кубик атаки за каждый убранный жетон Уклонения.'''
        'Bistan':
            name: "Бистан"
            text: '''%REBELONLY%%LINEBREAK%Атакуя на расстоянии 1-2, вы можете сменить 1 из ваших результатов %HIT% на результат %CRIT%.'''
        'Expertise':
            name: "Опытность"
            text: '''Атакуя, если вы не под стрессом, вы можете заменить все ваши результаты %FOCUS% на результаты %HIT%.'''
        'BoShek':
            name: "БоШек"
            text: '''Когда корабль, которого вы касаетесь, активируется, вы можете посмотреть на его выбранный маневр. Если вы это делаете, он должен повернуть диск на противоположный маневр. Корабль может объявлять и выполнять этот маневр, даже находясь под Стрессом.'''
        # C-ROC
        'Heavy Laser Turret':
            ship: "Крейсер C-ROC"
            name: "Тяжелая лазерная турель"
            text: '''<span class="card-restriction">Только крейсер C-ROC</span>%LINEBREAK%<strong>Атака (Энергия):</strong> Потратьте 2 энергии с этой карты, чтобы выполнить эту атаку против 1 корабля (даже если он находится вне вашей арки огня).'''
        'Cikatro Vizago':
            name: "Сикатро Визаго"
            text: '''%SCUMONLY%%LINEBREAK%В начале фазы Завершения, вы можете сбросить эту карту, чтобы заменить лежащую лицом вверх экипированную карту улучшения %ILLICIT% или %CARGO% на другую карту улучшения того же типа и той же (или меньшей) стоимости в очках отряда.'''
        'Azmorigan':
            name: "Азмориган"
            text: '''%HUGESHIPONLY% %SCUMONLY%%LINEBREAK%В начале фазы Завершения, вы можете потратить 1 энергии, чтобы заменить экипированную лежащую лицом вверх карту улучшений %CREW% или %TEAM% на другую карту улучшения того же типа и той же (или меньшей) стоимости в очках отряда.'''
        'Quick-release Cargo Locks':
            name: "Замки быстрого сброса груза"
            text: '''%LINEBREAK%В конце фазы Активации, вы можете сбросить эту карту, чтобы <strong>положить</strong> 1 жетон Контейнера.'''
        'Supercharged Power Cells':
            name: "Сверхзаряженные энергоячейки"
            text: '''Атакуя, вы можете сбросить эту карту, чтобы бросить 2 дополнительных кубика атаки.'''
        'ARC Caster':
            name: "Проектор ARC"
            text: '''<span class="card-restriction">Только для Повстанцев или Пиратов. Двойная карта.</span>%DUALCARD%%LINEBREAK%<strong>Сторона A:</strong>%LINEBREAK%<strong>Атака:</strong> Атакуйте 1 корабль. Если эта атака попадает, вы должны выбрать 1 другой корабль на расстоянии 1 от защищающегося. Этот корабль получает 1 повреждение.%LINEBREAK%Затем переверните эту карту.%LINEBREAK%<strong>Сторона Б:</strong>%LINEBREAK%(Перезарядка) В начале фазы Боя, вы можете получить жетон Отключения оружия, чтобы перевернуть эту карту.'''
        'Wookiee Commandos':
            name: "Вуки коммандос"
            text: '''Атакуя, вы можете перебросить ваши результаты %FOCUS%.'''
        'Synced Turret':
            name: "Синхронная турель"
            text: '''<strong>Атака (Захват цели):</strong> Атакуйте 1 корабль (даже если он находится вне вашей арки огня).%LINEBREAK%Если защищающийся находится в вашей арке огня, вы можете перебросить количество кубиков атаки, равное значению вашего основного оружия.'''
        'Unguided Rockets':
            name: "Неуправляемые ракеты"
            text: '''<strong>Атака (Концентрация):</strong> Атакуйте 1 корабль.%LINEBREAK%Ваши кубики атаки могут быть модифицированы только с помощью использования жетона Концентрации.'''
        'Intensity':
            name: "Интенсивность"
            text: '''%SMALLSHIPONLY% %DUALCARD%%LINEBREAK%<strong>Сторона A:</strong> После того, как вы выполните действие Ускорения или Бочку, вы можете назначить 1 жетон Концентрации или Уклонения на ваш корабль. Если вы делаете это, переверните эту карту.%LINEBREAK%<strong>Сторона Б:</strong> (Истощение) В конце фазы боя, вы можете потратить 1 жетон Концентрации или Уклонения, чтобы перевернуть эту карту.'''
        'Jabba the Hutt':
            name: "Джабба Хатт"
            text: '''%SCUMONLY%%LINEBREAK%Когда вы экипируете эту карту, положите 1 жетон Внезаконности на каждую карту улучшения %ILLICIT% в вашем отряде. Когда вы должны сбросить карту Улучшения, вместо этого вы можете сбросить 1 жетон Внезаконности с этой карты.'''
        'IG-RM Thug Droids':
            name: "Дроиды-головорезы IG-RM"
            text: '''Атакуя, вы можете заменить 1 из ваших результатов %HIT% на результат %CRIT%.'''
        'Selflessness':
            name: "Самоотверженность"
            text: '''%SMALLSHIPONLY% %REBELONLY%%LINEBREAK%Когда дружественный корабльт на расстоянии 1 получает попадание от атаки, вы можете сбросить эту карту, чтобы получить все неотмененные результаты %HIT% вместо корабля-цели.'''
        'Breach Specialist':
            name: "Специалист по пробоинам"
            text: '''Когда вы получаете карту повреждений лицом вверх, вы можете потратить 1 жетон Усиления, чтобы перевернуть ее лицом вниз (не отрабатывая ее эффект). Если вы делаете это, то до конца хода, когда вы получаете карту .'''
        'Bomblet Generator':
            name: "Генератор минибомб"
            text: '''Когда вы открываете маневр, вы можете <strong>сбросить</strong> 1 жетон Минибомбы.%LINEBREAK%Этот жетон <strong>взрывается</strong> в конце фазы Активации.%LINEBREAK%<strong>Жетон минибомбы:</strong> Когда этот жетон взрывается, каждый корабль на расстоянии 1 бросает 2 кубика атаки и получает все выброшенные повреждения(%HIT%) и критические повреждения (%CRIT%). Затем уберите этот жетон.'''
        'Cad Bane':
            name: "Кэд Бэйн"
            text: '''%SCUMONLY%%LINEBREAK%Ваша панель улучшений получает значок %BOMB%. Один раз за ход, когда вражеский корабль бросает кубики атаки из-за взрыва дружественной бомбы, вы можете выбрать любое количество пустых или %FOCUS% результатов. Он должен перебросить эти результаты.'''
        'Minefield Mapper':
            name: "Карта минных полей"
            text: '''Во время расстановки, после шага "Расстановка сил", вы можете сбросить любое количество карт улучшений %BOMB%. Расположите все соответствующие жетоны бомб на игровом поле на расстоянии 3 и дальше от вражеских кораблей.'''
        'R4-E1':
            text: '''Вы можете выполнять действия на ваших картах улучшения %TORPEDO% и %BOMB%, даже находясь под Стрессом. После выполнения действия этим способом, вы можете сбросить эту карту, чтобы убрать 1 жетон Стресса с вашего корабля.'''
        'Cruise Missiles':
            name: "Крейсирующие ракеты"
            text: '''<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.%LINEBREAK%Вы можете бросить дополнительные кубики атаки, равные по количеству скорости маневра, который вы выполнили в этот ход, до максимума в 4 дополнительных кубика.'''
        'Ion Dischargers':
            name: "Ионные разрядники"
            text: '''После получения ионного жетона, вы можете выбрать вражеский корабль на расстоянии 1. Если вы делаете это, сбросьте ионный жетон. Затем тот корабль может решить получить 1 ионный жетон. Если он делает это - сбросьте эту карту.'''
        'Harpoon Missiles':
            name: "Гарпунные ракеты"
            text: '''<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.%LINEBREAK%Если эта атака попадает, после отрабатывания атаки, назначьте защищающемуся карту состояния "Загарпунен!".'''
        'Ordnance Silos':
            name: "Бомболюки"
            ship: "Бомбардировщик B/SF-17"
            text: '''<span class="card-restriction">Только бомбардировщик B/SF-17.</span>%LINEBREAK%Когда вы экипируете эту карту, положите 3 жетона Боеприпасов на каждую экипированную карту улучшений %BOMB%. Когда вы должны сбросить карту улучшений, вместо этого вы можете сбросить с этой карты жетон Боеприпасов.'''
        'Trajectory Simulator':
            name: "Симулятор траектории"
            text: '''Вы можете запускать бомбы, используя шаблон (%STRAIGHT% 5) вместо того, стобы их сбрасывать. Вы не можете таким способом сбрасывать бомбы с указателем "<strong>Действие:</strong>".'''
        'Jamming Beam':
            name: "Луч заклинивания"
            text: '''<strong>Атака:</strong> Атакуйте 1 корабль.%LINEBREAK%Если эта атака попадает, назначьте защищающемуся 1 жетон Заклинивания. Затем отмените <strong>все</strong> результаты кубиков.'''
        'Linked Battery':
            name: "Спаренная батарея"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Атакуя основным или %CANNON% вспомогательным оружием, вы можете перебросить 1 кубик атаки.'''
        'Saturation Salvo':
            name: "Плотный залп"
            text: '''После того, как вы выполняете атаку вспомогательным оружием %TORPEDO% или %MISSILE%, которая не попала, каждый корабль на расстоянии 1 от защищающегося со значением Маневренности ниже, чем стоимость карты улучшения %TORPEDO% или %MISSILE% в очках отряда, должен бросить 1 кубик атаки и получить любое выброшенное повреждение (%HIT%) или критическое повреждение (%CRIT%).'''
        'Contraband Cybernetics':
            name: "Контрабандная кибернетика"
            text: '''Когда вы становитесь активным кораблем во время фазы Активации, вы можете сбросить эту карту и получить 1 жетон стресса. Если вы делаете это, до конца хода вы можете выполнять действия и красные маневры, даже находясь под Стрессом.'''
        'Maul':
            name: "Мол"
            text: '''%SCUMONLY% <span class="card-restriction">Игнорируйте это ограничение, если ваш отряд содержит Эзру Бриджера."</span>%LINEBREAK%Атакуя, если вы не под Стрессом, вы можете получить любое количество жетонов Стрееса, чтобы перебросить равное количество кубиков атаки.%LINEBREAK% После выполнения атаки, завершившейся попаданием, вы можете убрать 1 из ваших жетонов Стресса.'''
        'Courier Droid':
            name: "Дроид-курьер"
            text: '''В начале шага "Расположение сил", вы можете выбрать считать ваше умение пилота равным "0" или "8" до конца этого шага.'''
        '"Chopper" (Astromech)':
            text: '''<strong>Действие: </strong>Сбросьте 1 другую экипированную карту улучшений, чтобы восстановить 1 щит.'''
        'Flight-Assist Astromech':
            name: "Полетный астромех"
            text: '''Вы не можете атаковать корабли вне вашей арки огня.%LINEBREAK%После того, как вы выполните маневр, если вы не перекрываете корабль или преграду и не имеете кораблей врага в вашей арке огня на расстоянии 1-3, вы можете выполнить свободное действие Бочку или Ускорение.'''
        'Advanced Optics':
            name: "Улучшенная оптика"
            text: '''Вы не можете иметь более 1 жетона Концентрации.%LINEBREAK%Во время фазы Завершения, не убирайте неиспользованный жетон Концентрации с вашего корабля.'''
        'Scrambler Missiles':
            name: "Ракеты с помехами"
            text: '''<strong>Атака (Захват цели):</strong> Используйте захват цели и сбросьте эту карту чтобы выполнить эту атаку.%LINEBREAK%Если эта атака попадает, защищающийся и каждый другой корабль на расстоянии 1 получает 1 жетон Заклинивания. Затем отмените <strong>все</strong> результаты кубиков.'''
        'R5-TK':
            text: '''Вы можете заявлять захват цели на дружественные корабли.%LINEBREAK%Вы можете атаковать дружественные корабли.'''
        'Threat Tracker':
            name: "Детектор угроз"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Когда вражеский корабль в важей арке огня на расстоянии 1-2 становится активным кораблем во время фазы Боя, вы можете потратить захват цели на этом корабле, чтобы выполнить свободное действие Ускорение или Бочку, если оно есть на вашей панели действий.'''
        'Debris Gambit':
            name: "Уклонение в астероидах"
            text: '''%SMALLSHIPONLY%%LINEBREAK%<strong>Действие:</strong> Назначьте 1 жетон Уклонения на ваш корабль за каждую преграду на расстоянии 1, до максимума в 2 жетона Уклонения.'''
        'Targeting Scrambler':
            name: "Помехи наведения"
            text: '''В начале фазы Планирования, вы можете получить жетон Оружие выведено из строя, чтобы выбрать корабль на расстоянии 1-3 и назначить ему состояние "Помехи".'''
        'Death Troopers':
            name: "Штурмовики Смерти"
            text: '''После того, как другой дружественный корабль на расстоянии 1 становится защищающимся, если вы находитесь в арке огня атакующего на расстоянии 1-3, атакующий получает 1 жетон Стресса.'''
        'Saw Gerrera':
            name: "Со Геррера"
            text: '''%REBELONLY%%LINEBREAK%Атакуя, вы можете получить 1 повреждение, чтобы заменить все ваши результаты %FOCUS% на результаты %CRIT%.'''
        'Director Krennic':
            name: "Директор Кренник"
            text: '''Во время расстановки, перед шагом "Расстановка сил", назначьте состояние "Оптимизированный прототип" на дружественный корабль Галактической Империи с 3 или меньшим количеством щитов.'''
        'Tactical Officer':
            text: '''%IMPERIALONLY%%LINEBREAK%Your action bar gains %COORDINATE%.'''
        'ISB Slicer':
            text: '''After you perform a jam action against an enemy ship, you may choose a ship at Range 1 of that ship that is not jammed and assign it 1 jam token.'''
        'Thrust Corrector':
            text: '''When defending, if you have 3 or fewer stress tokens, you may receive 1 stress token to cancel all of your dice results.  If you do, add 1 %EVADE% result to your roll.  Your dice cannot be modified again during this attack.%LINEBREAK%You can equip this Upgrade only if your hull value is "4" or lower.'''

    modification_translations =
        "Stealth Device":
            name: "Маскировочное устройство"
            text: """Увеличьте вашу Маневренность на 1. Если вы получаете попадание от атаки, сбросьте эту карту."""
        "Shield Upgrade":
            name: "Улучшенный щит"
            text: """Ваше значение Щита увеличивается на 1."""
        "Engine Upgrade":
            name: "Улучшенный двигатель"
            text: """Ваша панель действий получает значок %BOOST%."""
        "Anti-Pursuit Lasers":
            name: "Оборонительные лазеры"
            text: """После того, как вражеский корабль выполняет маневр, приводящий к перекрытию им вашего корабля, бросьте 1 кубик атаки. При результате %HIT% или %CRIT%, вражеский корабль получает 1 повреждение."""
        "Targeting Computer":
            name: "Компьютер наведения"
            text: """Ваша панель действий получает значок %TARGETLOCK%."""
        "Hull Upgrade":
            name: "Укрепление корпуса"
            text: """Ваше значение Корпуса повышается на 1."""
        "Munitions Failsafe":
            name: "Корректор промаха"
            text: """Атакуя вспомогательным оружием, которое обязывает сбросить его для выполнения атаки, не сбрасывайте его, если атака не попала."""
        "Stygium Particle Accelerator":
            name: "Стигийский ускоритель частиц"
            text: """Когда вы размаскировываетесь или выполняете действие Маскировки, вы можете выполнить свободное действие Уклонения."""
        "Advanced Cloaking Device":
            name: "Улучшеный маскировочный прибор"
            text: """<span class="card-restriction">Только для TIE Фантом.</span><br /><br />После выполнения атаки, вы можете выполнить свободное действие Маскировки."""
            ship: "TIE Фантом"
        "Combat Retrofit":
            name: "Боевое оснащение"
            text: """<span class="card-restriction">Только для GR-75.</span><br /><br />Увеличьте ваше значение Корпуса на 2 и значение Щита на 1."""
            ship: 'Средний транспорт GR-75'
        "B-Wing/E2":
            text: """<span class="card-restriction">Только для Б-Крыла.</span><br /><br />Ваша панель улучшений получает значок улучшения %CREW%."""
            ship: "Б-Крыл"
        "Countermeasures":
            name: "Контрмеры"
            text: """В начале фазы Боя, вы можете сбросить эту карту, чтобы повысить вашу Маневренность на 1 до конца хода. Затем вы можете убрать 1 вражеский захват цели с вашего корабля."""
        "Experimental Interface":
            name: "Экспериментальный интерфейс"
            text: """Один раз за ход, после выполнения вами действия, вы можете выполнить 1 свободное действие с экипированной карты улучшений с указателем "<strong>Действие:</strong>". Затем получите 1 жетон Стресса."""
        "Tactical Jammer":
            name: "Тактический глушитель"
            text: """Ваш корабль может служить преградой для вражеских атак."""
        "Autothrusters":
            name: "Автоускорители"
            text: """Защищаясь, еслим вы далее расстояния 2 или находитесь вне арки огня атакующего, вы можете заменить 1 из ваших пустых результатов на результат %EVADE%. Вы можете экипировать это карту только при наличии значка %BOOST%."""
        "Twin Ion Engine Mk. II":
            name: "Двойной ионный двигатель Мк.II"
            text: """<span class="card-restriction">Только для TIE.</span>%LINEBREAK%Вы можете считать все маневры крена (%BANKLEFT% и %BANKRIGHT%) зелеными маневрами."""
        "Maneuvering Fins":
            name: "Маневровые кили"
            text: """<span class="card-restriction">Только для YV-666.</span>%LINEBREAK%Когда вы открываете маневр поворота (%TURNLEFT% или %TURNRIGHT%), вы можете повернуть ваш диск маневров на соответствующий маневр крена (%BANKLEFT% или %BANKRIGHT%) с той же скоростью."""
        "Ion Projector":
            name: "Ионный проектор"
            text: """%LARGESHIPONLY%%LINEBREAK%После того, как вражеский корабль выполняет маневр, приводящий к перекрытию им вашего корабля, бросьте 1 кубик атаки. При результате %HIT% или %CRIT%, вражеский корабль получает 1 ионный жетон."""
        "Advanced SLAM":
            name: "Улучшенный ССДУ"
            text: """После выполнения действия ССДУ, если вы не перекрываете преграду или другой корабль, вы можете выполнить свободное действие с вашей панели действий."""
        'Integrated Astromech':
            name: "Интегрированный астромех"
            text: '''<span class="card-restriction">Только для Икс-Крыла.</span>%LINEBREAK%Когда вы получаете карту повреждений, вы можете сбросить 1 из ваших карту улучшений %ASTROMECH% чтобы сбросить эту карту повреждений.'''
        'Optimized Generators':
            name: "Оптимизированные генераторы"
            text: '''%HUGESHIPONLY%%LINEBREAK%Один раз за ход, когда вы назначаете энергию на экипированную карту улучшений, получите 2 энергии.'''
        'Automated Protocols':
            name: "Автоматизированные протоколы"
            text: '''%HUGESHIPONLY%%LINEBREAK%Один раз за ход, после выполнения действия, не являющегося действием Восстановления или Усиления, вы можете потратить 1 энергии, чтобы выполнить свободное действие Восстановления или Усиления.'''
        'Ordnance Tubes':
            name: "Ракетные шахты"
            text: '''%HUGESHIPONLY%%LINEBREAK%Вы можете считать каждый из ваших значков улучшений %HARDPOINT% как значок %TORPEDO% или %MISSILE%.%LINEBREAK%Когда вы должны сбросить карту улучшений %TORPEDO% или %MISSILE%, не сбрасывайте ее.'''
        'Long-Range Scanners':
            name: "Сканеры дальнего действия"
            text: '''Вы можете объявлять захват цели на корабли на расстоянии 3 и дальше. Вы не можете объявлять захват цели на корабли на расстоянии 1-2. Вы можете екипировать эту карту только если у вас есть %TORPEDO% и %MISSILE% на вашей панели улучшений.'''
        "Guidance Chips":
            name: "Чипы наведения"
            text: """Один раз за ход, атакуя вспомогательным оружием %TORPEDO% или %MISSILE%, вы можете заменить один результат кубика на %HIT% (или на результат %CRIT% , если значение вашего основного оружия "3" или больше)."""
        'Vectored Thrusters':
            name: "Векторные ускорители"
            text: '''%SMALLSHIPONLY%%LINEBREAK%Ваша панель действий получает значок %BARRELROLL%.'''
        'Smuggling Compartment':
            name: "Отсек контрабанды"
            text: '''<span class="card-restriction">Только для YT-1300 и YT-2400.</span>%LINEBREAK%Ваша панель улучшений получает значок %ILLICIT%.%LINEBREAK%Вы можете экипировать 1 дополнительное Модификационное улучшение, которое стоит 3 или меньше очков отряда.'''
        'Gyroscopic Targeting':
            name: "Гироскопическое наведение"
            ship: "Корабль-преследователь класса Копьеносец"
            text: '''<span class="card-restriction">Только для Корабля-преследователя класса Копьеносец.</span>%LINEBREAK%В конце фазы Боя, если в этом ходу вы выполняли маневр со скоростью 3, 4 или 5, вы можете повернуть вашу мобильную арку огня.'''
        'Captured TIE':
            ship: "TIE истребитель"
            name: "TIE захваченный"
            text: '''<span class="card-restriction">только для TIE.</span>%REBELONLY%%LINEBREAK%Вражеские корабли с умением пилота ниже вашего не могут объявлять вас целью атаки. После того, как вы выполните атаку или останетесь единственным дружественным кораблем, сбросьте эту карту.'''
        'Spacetug Tractor Array':
            name: "Матрица космической тяги"
            ship: "Квадджампер"
            text: '''<span class="card-restriction">Только для Квадджампера.</span>%LINEBREAK%<strong>Действие:</strong> Выберите корабль в вашей арке огня на расстоянии 1 и назначьте ему жетон  Луча Захвата. Если это дружественный корабль, отработайте эффект жетона Луча Захвата, как если бы это был вражеский корабль.'''
        'Lightweight Frame':
            name: "Облегченный каркас"
            text: '''<span class="card-restriction">только для TIE.</span>%LINEBREAK%Защищаясь, после броска кубиков защиты, если кубиков атаки больше, чем кубиков защиты, бросьте 1 дополнительный кубик защиты.%LINEBREAK%Вы не можете экипировать эту карту, если ваша Маневренность "3" или выше.'''
        'Pulsed Ray Shield':
            name: "Импульсный лучевой щит"
            text: '''<span class="card-restriction">Только для Повстанцев и Пиратов.</span>%LINEBREAK%Во время фазы Завершения, вы можете получить 1 ионный жетон чтобы восстановить 1 щит (до максимального значения щитов). Вы можете экипировать эту карту только если ваше значение Щитов "1".'''
        'Deflective Plating':
            name: "Отражающее покрытие"
            ship: "Бомбардировщик B/SF-17"
            text: '''<span class="card-restriction">Только для бомбардировщика B/SF-17.</span>%LINEBREAK%Когда взрывается дружественный жетон бомбы, вы можете выбрать не получать соответствующий эффект. Если вы делаете это, бросьте кубик атаки. При результате %HIT%, сбросьте эту карту.'''
        'Multi-spectral Camouflage':
            text: '''%SMALLSHIPONLY%%LINEBREAK%After you receive a red target lock token, if you have only 1 red target lock token, roll 1 defense die.  On an %EVADE% result, remove 1 red target lock token.'''

    title_translations =
        "Slave I":
            name: "Раб 1"
            text: """<span class="card-restriction">Только для Огнедыщащего-31.</span><br /><br />Ваша панель улучшений получает значок улучшения %TORPEDO%."""
        "Millennium Falcon":
            name: "Тысячелетний сокол"
            text: """<span class="card-restriction">Только для YT-1300.</span><br /><br />Ваша панель действий получает значок %EVADE%."""
        "Moldy Crow":
            name: "Старый ворон"
            text: """<span class="card-restriction">Только для HWK-290.</span><br /><br />Во время фазы Завершения, не убирайте неиспользованные жетоны Концентрации с вашего корабля."""
        "ST-321":
            text: """<span class="card-restriction">Только для шаттла класса <em>Лямбда</em>.</span><br /><br />При объявлении захвата цели, вы можете захватывать вражеский корабль по всему игровому полю."""
            ship: "Шаттл класса Лямбда"
        "Royal Guard TIE":
            name: "TIE королевской стражи"
            ship: "TIE перехватчик"
            text: """<span class="card-restriction">Только для TIE перехватчика.</span><br /><br />Вы можете экипировать до двух различных Модификационных улучшений (вместо 1).<br /><br />Вы не можете экипировать эту карту, если ваше умение пилота "4" или ниже."""
        "Dodonna's Pride":
            name: "Гордость Додонны"
            text: """<span class="card-restriction">Только для носовой части CR90.</span><br /><br />Когда вы выполняете действие Координации, вы можете выбрать 2 дружественных корабля (вместо 1). Каждый из этих кораблей может выполнить 1 свободное действие."""
            ship: "Корвет CR90 (Нос)"
        "A-Wing Test Pilot":
            name: "Пилот-испытатель А-Крыла"
            text: """<span class="card-restriction">Только для А-Крыла.</span><br /><br />Ваша панель улучшений получает 1 значок %ELITE%.<br /><br />Вы не можете экипировать 2 одинаковых карты улучшений %ELITE%. Вы не можете экипировать эту карту, если ваше умение пилота "1" или ниже."""
            ship: "А-Крыл"
        "Tantive IV":
            name: "Тантив IV"
            text: """<span class="card-restriction">Только для носовой части CR90.</span><br /><br />Ваша панель улучшений носовой секции получает 1 дополнительный значок %CREW% и 1 дополнительный значок %TEAM%."""
            ship: "Корвет CR90 (Нос)"
        "Bright Hope":
            name: "Яркая Надежда"
            text: """<span class="card-restriction">Только для GR-75.</span><br /><br />Действие усиления, назначенное на вашу носовую часть, добавляет 2 результата %EVADE% вместо 1."""
            ship: 'Средний транспорт GR-75'
        "Quantum Storm":
            name: "Квантовый шторм"
            text: """<span class="card-restriction">Только для GR-75.</span><br /><br />В начале фазы Завершения, если у вас 1 или меньше жетонов энергии, получите 1 жетон энергии."""
            ship: 'Средний транспорт GR-75'
        "Dutyfree":
            name: "Дьюти-фри"
            text: """<span class="card-restriction">Только для GR-75./span><br /><br />При выполнении действия Заклинивания, вы можете выбрать вражеский корабль на расстоянии 1-3 (вместо 1-2)."""
            ship: 'Средний транспорт GR-75'
        "Jaina's Light":
            name: "Свет Джайны"
            text: """<span class="card-restriction">Только для носовой секции CR90.</span><br /><br />Защищаясь, один раз за атаку, если вы получаете карту повреждений лицом вверх, вы можете сбросить ее и вытянуть другую карту повреждений лицом вверх."""
        "Outrider":
            name: "Наездник"
            text: """<span class="card-restriction">Только для YT-2400.</span><br /><br />Когда у вас есть экипированная карта улучшения %CANNON%, вы <strong>не можете</strong> выполнять атаки основным оружием и можете выполнять атаки вспомогательным оружием %CANNON% против кораблей вне вашей арки огня."""
        "Andrasta":
            name: "Андраста"
            text: """<span class="card-restriction">Только для Огнедышащего-31.</span><br /><br />Ваша панель улучшений получает 2 дополнительных значка %BOMB%."""
        "TIE/x1":
            ship: "TIE улучшенный"
            text: """<span class="card-restriction">Только для TIE улучшенного.</span>%LINEBREAK%Ваша панель улучшений получает значок %SYSTEM%.%LINEBREAK%Если вы экипируете улучшение %SYSTEM%, его стоимость в очках отряда снижается на 4 (до минимума в 0)."""
        "BTL-A4 Y-Wing":
            name: "BTL-A4 У-Крыл"
            text: """<span class="card-restriction">Только для У-Крыла.</span><br /><br />Вы не можете атаковать корабли вне вашей арки огня. После выполнения атаки основным оружием, вы можете немедленно выполнить атаку вспомогательным оружием %TURRET%."""
            ship: "У-Крыл"
        "IG-2000":
            name: "IG-2000"
            text: """<span class="card-restriction">Только для Агрессора.</span><br /><br />Вы получаете способности пилотов каждого другого дружественного корабля с картой улучшения <em>IG-2000</em> (в дополнение к вашей собственной способности пилота)."""
            ship: "Агрессор"
        "Virago":
            name: "Мегера"
            text: """<span class="card-restriction">Только для Звездной Гадюки.</span><br /><br />Ваша панель улучшений получает значки %SYSTEM% и %ILLICIT%.<br /><br />Вы не можете экипировать эту карту, если ваше умение пилота "3" или ниже."""
            ship: 'Звездная гадюка'
        '"Heavy Scyk" Interceptor (Cannon)':
            name: 'Перехватчик "Тяжелый Сцик" (Пушечный)'
            text: """<span class="card-restriction">Только для перехватчика M3-A.</span><br /><br />Ваша панель улучшений получает значок %CANNON%. Ваше значение Корпуса повышается на 1."""
            ship: 'Перехватчик M3-A'
        '"Heavy Scyk" Interceptor (Missile)':
            name: 'Перехватчик "Тяжелый Сцик" (Ракетный)'
            text: """<span class="card-restriction">Только для перехватчика M3-A.</span><br /><br />Ваша панель улучшений получает значок %MISSILE%. Ваше значение Корпуса повышается на 1."""
            ship: 'Перехватчик M3-A'
        '"Heavy Scyk" Interceptor (Torpedo)':
            name: 'Перехватчик "Тяжелый Сцик" (Торпедный)'
            text: """<span class="card-restriction">Только для перехватчика M3-A.</span><br /><br />Ваша панель улучшений получает значок %TORPEDO%. Ваше значение Корпуса повышается на 1."""
            ship: 'Перехватчик M3-A'
        "Dauntless":
            name: "Неустрашимый"
            text: """<span class="card-restriction">Только для VT-49 Дециматора.</span><br /><br />После выполнения маневра, который привел к наложению на другой корабль, вы можете выполнить 1 свободное действие. Затем получите 1 жетон Стресса."""
            ship: 'VT-49 Дециматор'
        "Ghost":
            name: "Призрак"
            text: """<span class="card-restriction">Только для VCX-100.</span>%LINEBREAK%Екипируйте карту названия <em>Фантом</em> на дружественный Атакующий Шаттл, и пристыкуйте его к этому кораблю.%LINEBREAK%После выполнения маневра, вы можете отстыковать его из ваших задних направляющих."""
        "Phantom":
            name: "Фантом"
            text: """Когда вы пристыкованы, <em>Призрак</em> может выполнять атаки его основным оружием, используя его специальную арку огня, а также, в конце фазы Боя, он может выполнить дополнительную атаку экипированной %TURRET%. Если он не может выполнить эту атаку, он не может атаковать снова в этот ход."""
            ship: 'Атакующий шаттл'
        "TIE/v1":
            text: """<span class="card-restriction">Только для TIE улучшенного прототипа.</span>%LINEBREAK%После того, как вы получаете захват цели на другой корабль, вы можете выполнить свободное действие Уклонения."""
            ship: 'TIE улучшенный прототип'
        "Mist Hunter":
            name: "Туманный охотник"
            text: """<span class="card-restriction">Только для Звездного истребителя G-1A.</span>%LINEBREAK%Ваша панель действий получает значок %BARRELROLL%.%LINEBREAK%Вы <strong>должны</strong> экипировать 1 карту улучшений "Луч захвата"(считая ее стоимость в очках отряда как обычно)."""
            ship: 'Звездный истребитель G-1A'
        "Punishing One":
            name: "Карающий Один"
            text: """<span class="card-restriction">Только для Джампмастера 5000.</span>%LINEBREAK%Увеличивает значение вашего основного оружия на 1."""
            ship: 'Джампмастер 5000'
        "Hound's Tooth":
            name: "Зуб гончей"
            text: """<span class="card-restriction">Только для YV-666.</span>%LINEBREAK%После того, как вы уничтожены, но перед тем, как убрать корабль с игрового поля, вы можете </strong>выставить корабль <span>Щенок Наштаха</span>.%LINEBREAK%El <span>Щенок Наштаха</span> не может атаковать в этот ход."""
        "Assailer":
            name: "Наступающий"
            text: """<span class="card-restriction">Только для кормовой секции корвета класса <em>Рейдер</em>.</span>%LINEBREAK%Защищаясь, если целевая секция имеет жетон Усиления, вы можете заменить 1 результат %FOCUS% на 1 результат %EVADE%."""
        "Instigator":
            name: "Зачинщик"
            text: """<span class="card-restriction">Только для кормовой секции корвета класса <em>Рейдер</em>.</span>%LINEBREAK%После того, как вы выполняете действие Восстановления, восстановите 1 дополнительный щит."""
        "Impetuous":
            name: "Бушующий"
            text: """<span class="card-restriction">Только для кормовой секции корвета класса <em>Рейдер</em>.</span>%LINEBREAK%После того, как вы выполняете атаку, уничтожившую вражеский корабль, вы можете получить захват цели."""
        'TIE/x7':
            text: '''<span class="card-restriction">Только для TIE защитника.</span>%LINEBREAK%Ваша панель улучшений теряет значки улучшений %CANNON% и %MISSILE%.%LINEBREAK%После выполнения маневра со скоростью 3, 4 или 5, если вы не перекрываете преграду или корабль, вы можете выполнить свободное действие Уклонения.'''
            ship: 'TIE защитник'
        'TIE/D':
            text: '''<span class="card-restriction">Только для TIE защитника.</span>%LINEBREAK%Один раз за ход, после того, как вы выполнили атаку вспомогательным оружием %CANNON%, которое стоит 3 или менее очков отряда, вы можете выполнить атаку основным оружием.'''
            ship: 'TIE защитник'
        'TIE Shuttle':
            name: "TIE шаттл"
            text: '''<span class="card-restriction">Только для TIE бомбардировщика.</span>%LINEBREAK%Ваша панель улучшений теряет все значки улучшений %TORPEDO%, %MISSILE% и %BOMB% и получает 2 значка улучшений %CREW%.  Вы не можете экипировать карту улучшений %CREW%, которая стоит больше 4 очков отряда.'''
            ship: 'TIE бомбардировщик'
        'Requiem':
            name: "Реквием"
            text: '''%GOZANTIONLY%%LINEBREAK%Когда вы выставляете корабль, считайте его навык пилота равным "8" до конца хода.'''
        'Vector':
            name: "Вектор"
            text: '''%GOZANTIONLY%%LINEBREAK%После выполнения маневра, вы можете разместить до 4 присоединенных кораблей (вместо 2).'''
        'Suppressor':
            name: "Подавитель"
            text: '''%GOZANTIONLY%%LINEBREAK%Один раз за ход, после получения захвата цели на врага, вы можете убрать 1 жетон Концентрации, Уклонения или синий жетон захвата цели с этого корабля.'''
        'Black One':
            name: "Черный Один"
            text: '''<span class="card-restriction">Только для Икс-Крыла Т-70.</span>%LINEBREAK%После того, как вы выполнили действие Ускорения или Бочку, вы можете снять 1 вражеский захват цели с дружественного корабля на расстоянии 1. Вы не можете экипировать эту карту, если ваш навык пилота "6" или ниже.'''
            ship: "Икс-Крыл T-70"
        'Millennium Falcon (TFA)':
            name: "Тысячелетний Сокол (ПС)"
            text: '''После выполнения маневра крена со скоростью 3 (%BANKLEFT% или %BANKRIGHT%), если вы не касаетесь другого корабля и не находитесь под Стрессом, вы можете получить 1 жетон Стресса, чтобы развернуть ваш корабль на 180°.'''
        'Alliance Overhaul':
            name: "Обновления Альянса"
            text: '''<span class="card-restriction">Только для ARC-170.</span>%LINEBREAK%Атакуя основным оружием в вашей основной арке огня, вы можете бросить 1 дополнительный кубик атаки. Атакуя в вашей дополнительной арке огня, вы можете заменить 1 из ваших результатов %FOCUS% на 1 результат %CRIT%.'''
        'Special Ops Training':
            ship: "Истребитель TIE/сс"
            name: "Специальная оперативная подготовка"
            text: '''<span class="card-restriction">Только для TIE/сс.</span>%LINEBREAK%Атакуя основным оружием в вашей основной арке огня, вы можете бросить 1 дополнительный кубик атаки. Если вы не делаете этого, вы можете выполнить дополнительную атаку в вашей вспомогательной арке огня.'''
        'Concord Dawn Protector':
            name: "Протектор Рассвета Конкорда"
            ship: "Истребитель Протектората"
            text: '''<span class="card-restriction">Только для истребителя Протектората.</span>%LINEBREAK%Защищаясь, если вы назходитесь в арке огня атакующего на расстоянии 1, и атакующий находится в вашей арке огня, добавьте 1 результат %EVADE%.'''
        'Shadow Caster':
            name: "Наводящий Тень"
            ship: "Корабль-преследователь класса Копьеносец"
            text: '''<span class="card-restriction">Только для Корабля-преследователя класса Копьеносец</span>%LINEBREAK%После того, как вы выполнили атаку, которая попала, если защищающийся находится в вашей мобильной арке огня на расстоянии 1-2, вы можете назначить защищающемуся 1 жетон Луча захвата.'''
        # Wave X
        '''Sabine's Masterpiece''':
            ship: "TIE истребитель"
            name: "Шедевр Сабины"
            text: '''<span class="card-restriction">Только для TIE истребителя.</span>%REBELONLY%%LINEBREAK%Ваша панель улучшений получает значки улучшений %CREW% и %ILLICIT%.'''
        '''Kylo Ren's Shuttle''':
            ship: "Шаттл класса Ипсилон"
            name: "Шаттл Кайло Рена"
            text: '''<span class="card-restriction">Только для шаттла класса Ипсилон.</span>%LINEBREAK%В конце фазы Боя, выберите вражеский корабль на расстоянии 1-2, не имеющий стресса. Его владелец должен назначить ему жетон Стресса, или назначить жетон Стресса на другой его корабль на расстоянии 1-2 от вас.'''
        '''Pivot Wing''':
            name: "Поворотное крыло"
            ship: "Ю-Крыл"
            text: '''<span class="card-restriction">Только для Ю-Крыла.</span> %DUALCARD%%LINEBREAK%<strong>Сторона A (Боевое положение):</strong> Ваша Маневренность увеличивается на 1.%LINEBREAK%После выполнения маневра, вы можете перевернуть эту карту.%LINEBREAK%<strong>Сторона Б (Положение посадки):</strong> Когда вы открываете маневр (%STOP% 0), вы можете повернуть ваш корабль на 180°.%LINEBREAK%После выполнения маневра, вы можете перевернуть эту карту.'''
        '''Adaptive Ailerons''':
            name: "Адаптивные элероны"
            ship: "TIE ударник"
            text: '''<span class="card-restriction">Только для TIE ударника.</span>%LINEBREAK%Сразу перед открытием вашего диска, если у вас нет Стресса, вы <strong>должны</strong> выполнить белый маневр (%BANKLEFT% 1), (%STRAIGHT% 1) или (%BANKRIGHT% 1).'''
        # C-ROC
        '''Merchant One''':
            name: "Торговец"
            ship: "Крейсер C-ROC" 
            text: '''<span class="card-restriction">Только для крейсера C-ROC.</span>%LINEBREAK%Ваша панель улучшений получает 1 дополнительный значок улучшения %CREW% и 1 дополнительный значок улучшения %TEAM%, а также теряет 1 значок улучшения %CARGO%.'''
        '''"Light Scyk" Interceptor''':
            name: 'Перехватчик "Легкий Сцик"'
            ship: "Перехватчик M3-A"
            text: '''<span class="card-restriction">Только для Перехватчика M3-A.</span>%LINEBREAK%Все получаемые вами карты повреждений отрабатываются в открытую. Вы можете считать все маневры крена (%BANKLEFT% или %BANKRIGHT%) зелеными маневрами. Вы не можете экипировать Модификационные улучшения.'''
        '''Insatiable Worrt''':
            name: "Ненасытный Воррт"
            ship: "Крейсер C-ROC"            
            text: '''После выполнения действия Восстановления, получите 3 энергии.'''
        '''Broken Horn''':
            name: "Сломанный Рог"
            ship: "Крейсер C-ROC"
            text: '''Защищаясь, если у вас есть жетон Усиления, вы можете добавить  дополнительный результат %EVADE%. Если вы делаете это, после защиты, сбросьте ваш жетон Усиления.'''
        'Havoc':
            name: "Разрушение"
            ship: "Бомбардировщик Скуррг H-6"
            text: '''<span class="card-restriction">Только для бомбардировщика Скуррг H-6.</span>%LINEBREAK%Ваша панель улучшений получает значки %SYSTEM% и %SALVAGEDASTROMECH% и теряет значок улучшения %CREW%.%LINEBREAK%Вы не можете экипировать неуникальные карты улучшения %SALVAGEDASTROMECH%.'''
        'Vaksai':            
            name: "Ваксай"
            ship: "Истребитель Кихраксз"
            text: '''<span class="card-restriction">Только для истребителя Кихраксз.</span>%LINEBREAK%Стоимость в очках отряда для каждого из экипированных улучшений снижается на 1 (до минимума в 0).%LINEBREAK%Вы можете экипировать до 3 различных Модификационных улучшений.'''
        'StarViper Mk. II':
            name: "Звездная Гадюка Мк.II"
            ship: "Звездна Гадюка"
            text: '''<span class="card-restriction">Только для Звездной Гадюки.</span>%LINEBREAK%Вы можете экипировать до 2 различных улучшений Названий.%LINEBREAK%Выполняя действие Бочку, вы <strong>должны</strong> использовать шаблон (%BANKLEFT% 1) или (%BANKRIGHT% 1) вместо шаблона (%STRAIGHT% 1).'''
        'XG-1 Assault Configuration':
            ship: "Звездное Крыло класса Альфа"
            name: "Штурмовая конфигурация XG-1"
            text: '''<span class="card-restriction">Только для Звездного Крыла класса Альфа.</span>%LINEBREAK%Ваша панель улучшений получает 2 значка %CANNON%.%LINEBREAK%Вы можете выполнять атаки вспомогательным оружием %CANNON%, стоящим 2 или менее очков отряда, даже если у вас есть жетон Выведения оружия из строя.'''
        'Enforcer':
            name: "Инфорсер"
            ship: "Истребитель M12-L Кимогила"
            text: '''<span class="card-restriction">Только для истребителя M12-L Кимогила.</span>%LINEBREAK%После защиты, если атакующий находится в вашей арки прицельного огня, атакующий получает 1 жетон Стресса.'''
        'Ghost (Phantom II)':
            name: "Призрак (Фантом II)"
            text: '''<span class="card-restriction">Только для VCX-100.</span>%LINEBREAK%Экипируйте карту Названия <em>Фантом II</em> на дружественный шаттл класса <em>Колчан</em> и пристыкуйте его к вашему кораблю.%LINEBREAK%После выполнения маневра, вы можете отстыковать его с ваших задних направляющих.'''
        'Phantom II':
            name: "Фантом II"
            ship: "Шаттл класса Колчан"
            text: '''Когда вы пристыкованы, <em>Призрак</em> может выполнять атаки основным оружием в своей специальной арке огня.%LINEBREAK%Пока вы пристыкованы, до конца фазы Активации, <em>Призрак</em> может выполнять свободное действие Координации.'''
        'First Order Vanguard':
            name: "Авангард Первого Порядка"
            ship: "TIE глушитель"
            text: '''<span class="card-restriction">Только для TIE глушителя.</span>%LINEBREAK%Атакуя, если ащищающийся - единственный вражеский корабль в вашей арке огня на расстоянии 1-3, вы можете перебросить 1 кубик атаки.%LINEBREAK%Защищаясь, вы можете сбросить эту карту, чтобы перебросить все ваши кубики защиты.'''
        'Os-1 Arsenal Loadout':
            name: "Загрузка арсенала Os-1"
            ship: "Звездное Крыло класса Альфа"
            text: '''<span class="card-restriction">Только для Звездного Крыла класса Альфа.</span>%LINEBREAK%Ваша панель улучшений получает значки %TORPEDO% и %MISSILE%.%LINEBREAK%Вы можете выполнять атаки вспомогательным оружием %TORPEDO% и %MISSILE% против кораблей, находящихся в вашем захвате, даже если у вас есть жетон Оружия выведенного из строя.'''
        'Crossfire Formation':
            name: "Построение перекрестного огня"
            ship: "Бомбардировщик B/SF-17"
            text: '''<span class="card-restriction">Только для Бомбардировщика B/SF-17.</span>%LINEBREAK%Защищаясь, если есть по меньшей мере 1 дружественный корабль Сопротивления на расстоянии 1-2 от атакующего, вы можете добавить 1 результат %FOCUS% к вашему броску.'''
        'Advanced Ailerons':
            text: '''<span class="card-restriction">TIE Reaper only.</span>%LINEBREAK%Treat your (%BANKLEFT% 3) and (%BANKRIGHT% 3) maneuvers as white.%LINEBREAK%Immediately before you reveal your dial, if you are not stressed, you must execute a white (%BANKLEFT% 1), (%STRAIGHT% 1), or (%BANKRIGHT% 1) maneuver.'''

    condition_translations =
        '''I'll Show You the Dark Side''':
            name: "Я Покажу Тебе Темную Сторону"
            text: '''Когда эта карта назначена, если она уже не находится в игре, игрок, который ее назначил, выбирает из колоды 1 карту повреждений с указателем <strong><em>Пилот</em></strong> и может положить ее на эту карту лицом вверх. Затем перетасуйте колоду карт повреждений.%LINEBREAK% Когда вы получаете критическое повреждение во время атаки, вместо него вы отрабатываете выбранную карту повреждений.%LINEBREAK%Когда на этой карте нет больше карты повреждений, уберите ее.'''
        'Suppressive Fire':
            name: "Подавляющий огонь"
            text: '''Атакуя корабль, не являющийся кораблем "Капитан Рекс", бросьте на 1 кубик атаки меньше.%LINEBREAK% Когда вы объявляете атаку против "Капитана Рекса" или "Капитан Рекс" уничтожен - уберите эту карту.%LINEBREAK%В конце фазы Боя, если "Капитан Рекс" не выполнял атаку в эту фазу, уберите эту карту.'''
        'Fanatical Devotion':
            name: "Фанатическая преданность"
            text: '''Защищаясь, вы не можете использовать жетоны Концентрации.%LINEBREAK%Атакуя, если вы используете жетон Концентрации, чтобы заменить все результаты %FOCUS% на результаты %HIT%, отложите в сторону первый результат %FOCUS%, который вы заменили. Отставленный в сторону результат %HIT% не может быть отменен кубиками защиты, но защищающийся может отменять результаты %CRIT% до него.%LINEBREAK%Во время фазы Завершения, уберите эту карту.'''
        'A Debt to Pay':
            name: "Счет к оплате"
            text: '''Атакуя корабль, имеющий карту улучшения "Личные счеты", вы можете заменить 1 результат %FOCUS% на результат %CRIT%.'''
        'Shadowed':
            name: "Затененный" 
            text: '''"Твик" считается имеющим значение умения пилота, которое у вас было после фазы расстановки.%LINEBREAK%Умение пилота "Твика" не меняется, если ваше значение умения пилота изменяется или вы уничтожены.'''
        'Mimicked':
            name: "Мимикрированный"
            text: '''"Твик" считается имеющим вашу способность пилота.%LINEBREAK%"Твик" не может применить карту Состояния, используя вашу способность пилота.%LINEBREAK%"Твик" не теряет вашу способность пилота, если вы уничтожены.'''
        'Harpooned!':
            name: "Загарпунен!"
            text: '''Когда в вас попадает атака, если хотя бы 1 результат %CRIT% не отменен, каждый другой корабль на расстоянии 1 получает 1 повреждение. Затем сбросьте эту карту и получите 1 карту повреждений лицом вниз.%LINEBREAK%Когда вы уничтожены, каждый корабль на расстоянии 1 получает 1 повреждение.%LINEBREAK%<strong>Действие:</strong> Сбросьте эту карту. Затем бросьте 1 кубик атаки. При результате %HIT% или %CRIT%, получите 1 повреждение.'''
        'Rattled':
            name: "Разбитый"
            text: '''Когда вы получаете повреждение или критическое повреждение от бомбы, вы получаете 1 дополнительное критическое повреждение. Затем сбросьте эту карту.%LINEBREAK%<strong>Действие:</strong> Бросьте 1 кубик атакию. При результате %FOCUS% или %HIT%, сбросьте эту карту.'''
        'Scrambled':
            name: "Помехи"
            text: '''Атакуя корабль на расстоянии 1, оснащенный улучшением "Помехи наведения", вы не можете модифицировать кубики атаки.%LINEBREAK%В конце фазы Боя, сбросьте эту карту.'''
        'Optimized Prototype':
            name: "Оптимизированный прототип"
            text: '''Increase your shield value by 1.%LINEBREAK%Once per round, when performing a primary weapon attack, you may spend 1 die result to remove 1 shield from the defender.%LINEBREAK%After you perform a primary weapon attack, a friendly ship at Range 1-2 equipped with the "Director Krennic" Upgrade card may acquire a target lock on the defender.'''

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations, condition_translations