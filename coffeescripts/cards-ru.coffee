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
        "Recover": "Recover"
        "Reinforce": "Reinforce"
        "Jam": "Jam"
        "Coordinate": "Coordinate"
        "Cloak": "Маскировка"
    slot:
        "Astromech": "Астромех"
        "Bomb": "Бомба"
        "Cannon": "Дополнительное Орудие"
        "Crew": "Экипаж"
        "Elite": "Талант"
        "Missile": "Ракета"
        "System": "Система"
        "Torpedo": "Торпеда"
        "Turret": "Турель"
        "Cargo": "Cargo"
        "Hardpoint": "Hardpoint"
        "Team": "Team"
        "Illicit": "Нелегальный"
        "Salvaged Astromech": "захваченный Астромех"
    sources: # needed?
        "Core": "База"
        "A-Wing Expansion Pack": "Дополнение A-Wing"
        "B-Wing Expansion Pack": "Дополнение B-Wing"
        "X-Wing Expansion Pack": "Дополнение X-Wing"
        "Y-Wing Expansion Pack": "Дополнение Y-Wing"
        "Millennium Falcon Expansion Pack": "Дополнение Сокол Тысячелетия"
        "HWK-290 Expansion Pack": "Дополнение HWK-290"
        "TIE Fighter Expansion Pack": "Дополнение TIE-Fighter"
        "TIE Interceptor Expansion Pack": "Дополнение TIE-Interceptor"
        "TIE Bomber Expansion Pack": "Дополнение TIE-Bomber"
        "TIE Advanced Expansion Pack": "Дополнение TIE-Advanced"
        "Lambda-Class Shuttle Expansion Pack": "Дополнение Lambda-class Shuttle"
        "Slave I Expansion Pack": "Дополнение Sklave I"
        "Imperial Aces Expansion Pack": "Дополнение Imperial Aces"
        "Rebel Transport Expansion Pack": "Дополнение Rebel Transport"
        "Z-95 Headhunter Expansion Pack": "Дополнение Z-95-Headhunter"
        "TIE Defender Expansion Pack": "Дополнение TIE-Defender"
        "E-Wing Expansion Pack": "Дополнение E-Wing"
        "TIE Phantom Expansion Pack": "Дополнение TIE-Phantom"
        "Tantive IV Expansion Pack": "Дополнение Tantive IV"
        "Rebel Aces Expansion Pack": "Дополнение Rebel Aces"
        "YT-2400 Freighter Expansion Pack": "Дополнение YT-2400 Freighter"
        "VT-49 Decimator Expansion Pack": "Дополнение VT-49 Decimator"
        "StarViper Expansion Pack": "Дополнение StarViper"
        "M3-A Interceptor Expansion Pack": "Дополнение M3-A Interceptor"
        "IG-2000 Expansion Pack": "Дополнение IG-2000"
        "Most Wanted Expansion Pack": "Дополнение Most Wanted"
        "Imperial Raider Expansion Pack": "Дополнение Imperial Raider"
        "The Force Awakens Core Set": "The Force Awakens Core Set"
    ui:
        shipSelectorPlaceholder: "Выберите корабль"
        pilotSelectorPlaceholder: "Выберите пилота"
        upgradePlaceholder: (translator, language, slot) ->
            "Нет #{translator language, 'slot', slot} улучшения"
        modificationPlaceholder: "Нет модификации"
        titlePlaceholder: "Нет названия"
        upgradeHeader: (translator, language, slot) ->
            "#{translator language, 'slot', slot} улучшения"
        unreleased: "не выпущено"
        epic: "Эпик"
        limited: "ограничено"
    byCSSSelector:
        '.translate.sort-cards-by': 'Сортировать карты по'
        '.xwing-card-browser option[value="name"]': 'Имени'
        '.xwing-card-browser option[value="source"]': 'Источнику'
        '.xwing-card-browser option[value="type-by-points"]': 'Типу (Очки)'
        '.xwing-card-browser option[value="type-by-name"]': 'Типу (Имени)'
        '.xwing-card-browser .translate.select-a-card': 'Выберите карту из списка слева'
        '.xwing-card-browser .info-range td': 'Reichweite'
        # Info well
        '.info-well .info-ship td.info-header': 'Корабль'
        '.info-well .info-skill td.info-header': 'Мастерство'
        '.info-well .info-actions td.info-header': 'Действия'
        '.info-well .info-upgrades td.info-header': 'Улучшения'
        '.info-well .info-range td.info-header': 'Дистанция'
        # Squadron edit buttons
        '.clear-squad' : 'Новый отряд'
        '.save-list' : 'Сохранить'
        '.save-list-as' : 'Сохранить как'
        '.delete-list' : 'Удалить'
        '.backend-list-my-squads' : 'Загрузить отряд'
        '.view-as-text' : '<span class="hidden-phone"><i class="icon-print"></i>&nbsp;Печать\Просмотр как </span>Text'
        '.randomize' : 'Случайно'
        '.randomize-options' : 'Опции генератора случайности'
        '.notes-container > span' : 'Squad Notes'
        # Print/View modal
        '.bbcode-list' : 'Скопируйте BBCode ниже и вставьте в пост на форуме.<textarea></textarea><button class="btn btn-copy">Скопируйте</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Скопируйте</button>'
        '.vertical-space-checkbox' : """Добавить пространство для карт повреждений\улучшений на распечатке. <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Печать в цвете. <input type="checkbox" class="toggle-color-print" />"""
        '.print-list' : '<i class="icon-print"></i>&nbsp;Печать'
        # Randomizer options
        '.do-randomize' : 'Случайно!'
        # Top tab bar
        '#empireTab' : 'Галактическая империя'
        '#rebelTab' : 'Альянс повстанцев'
        '#scumTab' : 'Негодяи'
        '#browserTab' : 'Список карт'
        '#aboutTab' : 'О сервисе'
    singular:
        'pilots': 'Пилоты'
        'modifications': 'Модификации'
        'titles': 'Названия'
    types:
        'Pilot': 'Пилот'
        'Modification': 'Modifikation'
        'Title': 'Название'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders['Русский'] = () ->
    exportObj.cardLanguage = 'Русский'

    # Assumes cards-common has been loaded
    basic_cards = exportObj.basicCardData()
    exportObj.canonicalizeShipNames basic_cards

    exportObj.ships = basic_cards.ships

    pilot_translations =
        "Wedge Antilles":
            text: """Во время атаки, уменьшите значение Мобильности защищающегося на 1 (значение не может быть меньше нуля)."""
        "Garven Dreis":
            text: """После использования жетона Концентрации вы можете передать его любому другому дружественному кораблю, находящемуся на Дистанции 1-2 (вместо сброса)."""
        "Biggs Darklighter":
            text: """Другие дружественные корабли на Дистанции 1 не могут быть атакованы, если целью можете быть выбраны вы."""
        "Luke Skywalker":
            text: """Во время защиты вы можете заменить один из результатов %FOCUS% на результат %EVADE%"""
        '"Dutch" Vander':
            text: """После захвата цели, выберите любой другой дружественный корабль на Дистанции 1-2. Выбранный корабль может немедленно получить жетон Захвата Цели."""
        "Horton Salm":
            text: """Во время атаки на Дистанции 2-3 вы можете перебросить любое количество ваших кубиков, не имеющих какого-либо результата."""
        '"Winged Gundark"':
            text: """Во время атаки на Дистанции 1 вы можете заменить один из ваших %HIT% результатов на %CRIT% результат."""
        '"Night Beast"':
            text: """После выполнения зеленого манёвра вы можете выполнить свободное действие Концентрация."""
        '"Backstabber"':
            text: """Если во время атаки вы находитесь вне сектора стрельбы обороняющегося корабля, бросайте на один кубик атаки больше."""
        '"Dark Curse"':
            text: """Во время обороны, атакующие вас корабли, не могут использовать маркеры Концентрации или перебрасывать кубики атаки."""
        '"Mauler Mithel"':
            text: """Когда атакуете на Дистанции 1 бросайте на один кубик атаки больше."""
        '"Howlrunner"':
            text: """Когда другой дружественный корабль атакует на Дистанции 1 основным оружием, он может перебросить один кубик атаки."""
        "Maarek Stele":
            text: """Когда ваша атака наносит Критическое повреждение атакуемому кораблю, вместо 1 возьмите 3 карты Повреждений. Выберете 1 из них, а остальные сбросьте."""
        "Darth Vader":
            text: """Во время шага «Выполните Действие» в фазе Активации, вы можете выполнить 2 действия."""
        "\"Fel's Wrath\"":
            text: """Когда количество карт Повреждений будет равно или превышать значение корпуса вашего корабля, корабль не разрушается до конца этой боевой фазы."""
        "Turr Phennir":
            text: """После выполнения атаки вы можете выполнить свободное действие Бочка или Ускорение."""
        "Soontir Fel":
            text: """Когда вы получаете жетон Стресса, можете так же получить жетон Концентрация для этого корабля."""
        "Tycho Celchu":
            text: """Вы можете выполнять действия даже при наличии у вас жетона Стресса."""
        "Arvel Crynyd":
            text: """Вы можете выбрать целью для атаки вражеский корабль, находящийся в вашем секторе стрельбы, даже если вы его касаетесь."""
        "Chewbacca":
            text: """Если вы получили карту Повреждений лицом вверх, немедленно переверните эту карту лицом вниз (без применения ее свойств)."""
        "Lando Calrissian":
            text: """После выполнения зелёного манёвра, выберите 1 дружественный корабль на Дистанции 1. Этот корабль может выполнить любое из действий, указанных в его карте, как свободное."""
        "Han Solo":
            text: """Во время атаки вы можете перебросить все ваши кубики. Если вы выбрали это, то должно быть переброшено их максимальное возможное количество."""
        "Kath Scarlet":
            text: """Во время атаки, обороняющийся получает один жетон Стресса, если хотя бы один из результатов %CRIT% был отменён."""
        "Boba Fett":
            text: """Когда вы вскрываете манёвр %BANKLEFT% или %BANKRIGHT%, вы можете заменить его на другой манёвр той же скорости."""
        "Krassis Trelix":
            text: """Во время атаки Дополнительным оружием, вы можете перебросить один кубик атаки."""
        "Ten Numb":
            text: """Во время атаки, один из ваших результатов %CRIT% нельзя отменить кубиком защиты."""
        "Ibtisam":
            text: """Во время атаки или обороны вы можете перебросить один из ваших кубиков, если у вас есть хотя бы один жетон Стресса."""
        "Roark Garnet":
            text: '''После начала фазы боя, выберете любой другой дружественный корабль на Дистанции 1-3. До конца фазы, Мастерство пилота выбранного корабля считается равным 12.'''
        "Kyle Katarn":
            text: """В начале фазы боя вы можете передать один из ваших жетонов Концентрации другому дружественному кораблю на Дистанции 1-3."""
        "Jan Ors":
            text: """Когда другой дружественный корабль атакует на Дистанции 1-3 и у вас нет жетона Стресса, вы можете получить один жетон Стресса, чтобы позволить этому кораблю бросить один дополнительный кубик атаки."""
        "Captain Jonus":
            text: """Когда другой дружественный корабль атакует на Дистанции 1, используя дополнительное оружие, он может перебросить до двух кубиков атаки."""
        "Major Rhymer":
            text: """Во время атаки дополнительным оружием, вы можете увеличить или уменьшить дистанцию использования оружия на один, в пределах Дистанции 1-3."""
        "Captain Kagi":
            text: """Когда вражеский корабль получает жетон Захвата цели, он должен использовать ваш корабль в качестве цели, если может."""
        "Colonel Jendon":
            text: """В начале фазы боя, вы можете передать один из ваших голубых жетонов Захвата цели дружественному кораблю на Дистанции 1, если у него таковых не имеется."""
        "Captain Yorr":
            text: """Вы можете получить жетон Стресса вместо любого другого дружественного корабля на Дистанции 1-2, если у вас таких жетонов два или менее."""
        "Lieutenant Lorrir":
            text: """При выполнении действия Бочка вы можете получить 1 жетон Стресса и использовать шаблоны (%BANKLEFT% 1) или (%BANKRIGHT% 1) вместо (%STRAIGHT% 1)."""
        "Tetran Cowall":
            text: """Когда вы вскрываете маневр %UTURN%, вы можете считать скорость этого маневра как "1," "3," или "5"."""
        "Kir Kanos":
            text: """Во время атаки на Дистанции 2-3 вы можете сбросить один жетон уклонения, чтобы добавить к броску один %HIT% результат."""
        "Carnor Jax":
            text: """Вражеские корабли на Дистанции 1 не могут выполнять действия Уклонения или Концентрации, и не могут сбрасывать соответствующие жетоны."""
        "Lieutenant Blount":
            text: """Ваша атака считается успешной, даже если защищающийся успешно отменил все повреждения."""
        "Airen Cracken":
            text: """После выполнения атаки вы можете выбрать другой дружественный корабль на Дистанции 1. Этот корабль может выполнить ."""
        "Colonel Vessery":
            text: """Во время атаки, после броска ваших кубиков атаки, сразу можете получить Захват цели на защищающегося, если он уже имеет красный жетон захвата цели."""
        "Rexler Brath":
            text: """После выполнения атаки, принесшей противнику как минимум одну карту Повреждения, вы можете сбросить один жетон Концентрации для переворота нанесенных карт Повреждений лицом вверх."""
        "Etahn A'baht":
            text: """Когда корабль противника находится внутри вашего сектора стрельбы на Дистанции 1-3, и защищается, то атакующий может изменить один из %HIT% результатов на %CRIT% результат."""
        "Corran Horn":
            text: """В начале фазы Завершения вы можете выполнить одну атаку. Вы не можете атаковать в течении следующего раунда."""
        '"Echo"':
            text: """Когда вы сбрасываете режим Маскировки, вы должны использовать шаблоны (%BANKRIGHT% 2) или (%BANKLEFT% 2) вместо (%STRAIGHT% 2)."""
        '"Whisper"':
            text: """После выполнения успешной атаки вы можете получить один жетон КОнцентрации на ваш корабль."""
        "Wes Janson":
            text: """После выполнения атаки вы можете удалить один жетон Концентрации, Уклонения или голубой жетон захвата цели с защищающегося корабя."""
        "Jek Porkins":
            text: """Когда вы получаете жетон стресса, вы можете удалить его и бросить один кубик атаки. На результате %HIT% получите на этот корабль карту Повреждения лицом вниз."""
        '"Hobbie" Klivian':
            text: """Когда вы получаете или тратите Захват цели, вы можете удалить один жетон стресса с вашего корабля."""
        "Tarn Mison":
            text: """Когда корабль противника объявил вас целью для своей атаки, вы можете получить Захват цели на этот корабль."""
        "Jake Farrell":
            text: """После выполнения действия Концентрации или получения жетона Концентрации, вы можете совершить свободное действие Ускорение или Бочка."""
        "Gemmer Sojan":
            text: """Пока вы находитесь на Дистанции 1 от, по крайней мере одного, корабля противника, увеличьте показатель вашей маневренности на один."""
        "Keyan Farlander":
            text: """Когда атакуете, вы можете удалить один жетон Стресса для замены всех ваших %FOCUS% результатов на %HIT% результаты."""
        "Nera Dantels":
            text: """Вы можете выполнять атаки торпедами %TORPEDO% по кораблям противника, находящимися вне вашего сектора стрельбы."""
         "Dash Rendar":
            text: """Вы можете игнорировать жетоны преград в фазе Активации и когда совершаете Действия."""
        '"Leebo"':
            text: """Когда вы получаете карту Повреждения лицом вверх, вытяните одну дополнительную карту Повреждения, выберите одну для применения, вторую сбросьте."""
        "Eaden Vrill":
            text: """Когда вы атакуете основным орудием корабль с жетоном Стресса, кидайте один дополнительный кубик атаки."""
        "Rear Admiral Chiraneau":
            text: """При атаке на Дистанции 1-2, вы можете поменять один из ваших результатов %FOCUS% на %CRIT% результат."""
        "Commander Kenkirk":
            text: """Если у вас нет щитов и есть хотя бы одна карта Повреждения, увеличьте вашу маневренность на один."""
        "Captain Oicunn":
            text: """После выполнения маневра каждый вражеский корабль, с которым вы соприкасаетесь, получает одно повреждение."""
        "Prince Xizor":
            text: """При защите, дружественный корабль на Дистанции 1 может получить один неотмененный результат %HIT% или %CRIT% вместо вас."""
        "Guri":
            text: """В начале фазы Боя, если вы на Дистанции 1 от вражеского корабля, вы можете назначить один жетон концентрации вашему кораблю."""
        "Serissu":
            text: """Когда другой дружественный корабль на Дистанции 1 защищается, он может перебросить один кубик защиты."""
        "Laetin A'shera":
            text: """После того как вы выполнили защиту от вражеской атаки, если атака не попала, вы можете назначить один жетон уклонения вашему кораблю."""
        "IG-88A":
            text: """После выполнения вами атаки, которая уничтожила цель, вы можете восстановить один щит."""
        "IG-88B":
            text: """Единожды в раунд, после выполнения атаки, которая не попала, вы можете осуществить атаку из имеющегося дополнительного орудия %CANNON%."""
        "IG-88C":
            text: """После выполнения вами действия Ускорения, вы можете совершить свободное действие Уклонения."""
        "IG-88D":
            text: """Вы можете осуществлять маневры (%SLOOPLEFT% 3) или (%SLOOPRIGHT% 3) используя соответствующие шаблоны (%TURNLEFT% 3) или (%TURNRIGHT% 3) ."""
        "Boba Fett (Scum)":
            text: """При атаке или защите, вы можете перебросить один ваш кубик за каждый вражеский корабль на Дистанции 1."""
        "Kath Scarlet (Scum)":
            text: """При атаке корабля в вашем вспомогательном секторе стрельбы, бросайте один дополнительный кубик атаки."""
        "Emon Azzameen":
            text: """При сбросе бомбы, вы можете использовать шаблоны [%TURNLEFT% 3], [%STRAIGHT% 3], или [%TURNRIGHT% 3] вместо шаблона [%STRAIGHT% 1]."""
        "Kavil":
            text: """При атаке корабля вне вашего сектора обстрела бросайте один дополнительный кубик атаки."""
        "Drea Renthal":
            text: """После того как вы использовали Захват цели вы можете получить один жетон Стресса для выполнения Захвата цели."""
        "Dace Bonearm":
            text: """Когда вражеский корабль на Дистанции 1-3 получает как минимум один жетон Иона, и у вас нет жетонов Стресса, вы можете получить один жетон Стресса и нанести этому кораблю одно повреждение."""
        "Palob Godalhi":
            text: """В начале фазы Боя, вы можете удалить один жетон %FOCUS% или %EVADE% с вражеского корабля на Дистанции 1-2 и назначить его своему кораблю."""
        "Torkil Mux":
            text: """В начале фазы Активации выберите один вражеский корабль на Дистанции 1-2. До конца фазы Боя считайте Мастерство пилота этого корабля как "0"."""
        "N'Dru Suhlak":
            text: """При атаке, если на Дистанции 1-2 нет других дружественных кораблей, бростайте один дополнительный кубик атаки."""
        "Kaa'To Leeachos":
            text: """В начале фазы Боя вы можете удалить один жетон %FOCUS% или %EVADE% с другого дружественного корабля на Дистанции 1-2, и назначить его себе."""
        "Commander Alozen":
            text: """В начале фазы Боя вы можете получить Захват цели на вражеский корабль на Дистанции 1."""
        "Raider-class Corvette (Fore)":
            text: """Once per round, ??? perform a primary ??? attack, you may spend 2 e??? perform another primary wea???"""
        "Juno Eclipse":
            text: """Когда вы открываете свой маневр, вы можете увеличить или уменьшить его скорость на единицу (до минимума в 1)."""
        "Zertik Strom":
            text: """Вражеский корабль на Дистанции 1 не может использовать бонус дистанции при выполнении атаки."""
        "Lieutenant Colzet":
            text: """В начале фазы Завершения вы можете использовать имеющийся Захват цели на вражеский корабль, для того чтобы перевернуть лицом вверх одну случайную из имеющихся у него карт Повреждений."""
        "Latts Razzi":
            text: """Когда дружественный корабль объявляет атаку, вы можете использовать имеющийся Захват цели на защищающемся корабле для уменьшения его маневренности на единицу на время этой атаки."""
        "Graz the Hunter":
            text: """При защите, если атакующий в вашем секторе обстрела, бросайте один дополнительный кубик защиты."""
        "Esege Tuketu":
            text: """Когда другой дружественный корабль на Дистанции 1-2 атакует, вы можете считать ваш жетон %FOCUS% как принадлежащий ему."""
        '"Redline"':
            text: """Вы можете осуществлять два захвата цели на один корабль. Когда вы осуществляете Захват цели, вы можете получить второй Захват цели  на этот корабль."""
        '"Deathrain"':
            text: """При сбросе бомбы, вы можете использовать передние направляющие вашего корабля. После сброса бомбы вы можете осуществить свободное действие Бочка."""
        "Moralo Eval":
            text: """Вы можете осуществлять атаки дополнительным орудием %CANNON% против кораблей в вашем дополнительном секторе обстрела."""
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
        'Norra Wexley':
            text: '''When attacking or defending, you may spend a target lock you have on the enemy ship to add 1 %FOCUS% result to your roll.'''
        'Shara Bey':
            text: '''When another friendly ship at Range 1-2 is attacking, it may treat your blue target lock tokens as its own.'''
        '"Quickdraw"':
            text: '''Once per round, when you lose a shield token, you may perform a primary weapon attack.'''
        'Fenn Rau':
            text: '''When attacking or defending, if the enemy ship is at Range 1, you may roll 1 additional die.'''
        'Kad Solus':
            text: '''After you execute a red maneuver, assign 2 focus tokens to your ship.'''
        'Ketsu Onyo':
            text: '''At the start of the Combat phase, you may choose a ship at Range 1.  If it is inside your primary <strong>and</strong> mobile firing arcs, assign 1 tractor beam token to it.'''
        'Sabine Wren (Scum)':
            text: '''When defending against an enemy ship inside your mobile firing arc at Range 1-2, you may add 1 %FOCUS% result to your roll.'''

    upgrade_translations =
        "Ion Cannon Turret":
            text: """<strong>Атака:</strong> Атакуйте 1 корабль (даже если он находится вне сектора обстрела).%LINEBREAK%Если попадаете по цели, атакованный корабль получает 1 Повреждение и 1 жетон Иона. Затем отмените все результаты кубиков."""
        "Proton Torpedoes":
            text: """<strong>Атака (Захват цели):</strong>Потратьте жетон Захвата Цели и сбросьте эту карту для того, чтобы выполнить эту атаку. Вы можете заменить 1 из ваших %FOCUS% результатов на результат %CRIT%."""
        "R2 Astromech":
            text: """Манёвры со скоростью 1 и 2 вы можете считать как зелёные манёвры."""
        "R2-D2":
            text: """После выполнения зелёного манёвра вы можете восстановить 1 Щит (до максимума доступного вам)."""
        "R2-F2":
            text: """<strong>Действие:</strong> Вы можете увеличить значение Маневренности на 1 до конца текущего раунда."""
        "R5-D8":
            text: """<strong>Действие:</strong> Бросьте 1 кубик защиты. %LINEBREAK%В случае выпадения %EVADE% или %FOCUS% результата вы можете сбросить 1 карту из ваших не-критических Повреждений."""
        "R5-K6":
            text: """После сброса жетона Захвата цели, бросьте1 кубик защиты.%LINEBREAK%В случае выпадения результата %EVADE% немедленно получите жетон Захвата цели на тот же самый корабль. Вы не можете
потратить его во время этой атаки."""
        "R5 Astromech":
            text: """Во время фазы Завершения вы можете выбрать 1 из ваших карт Критических Повреждений с заголовком <strong>Корабль</strong>  и перевернуть её лицом вниз."""
        "Determination":
            text: """Когда вы получаете карту Критического повреждения
с заголовком <strong>Пилот</strong>, немедленно сбросьте её без выполнения её эффекта."""
        "Swarm Tactics":
            text: """В начале фазы Боя выберите дружественный корабль на Дистанции 1. %LINEBREAK%До конца этой фазы пилот выбранного корабля имеет значение Мастерства пилота такое же как, и у вас."""
        "Squad Leader":
            text: """<strong>Действие:</strong> Выберите один корабль на Дистанции 1-2, пилот которого имеет Мастерство ниже вашего.<br/>Выбранный корабль может немедленно выполнить 1 свободное действие."""
        "Expert Handling":
            text: """<strong>Действие:</strong> Выполните свободное действие Бочка. Если у вас нет пиктограммы действия %BARRELROLL%, получите 1 жетон Стресса.%LINEBREAK%Затем вы можете удалить с вашего корабля 1 жетон Захвата цели противника."""
        "Marksmanship":
            text: """<strong>Действие:</strong> Во время атаки в
текущем раунде вы можете поменять 1 ваш выпавший
результат %FOCUS% на %CRIT%, и все остальные ваши результаты %FOCUS% на результат %HIT%."""
        "Concussion Missiles":
            text: """<strong>Атака (Захват цели): </strong> Потратьте жетон
Захвата цели и сбросьте эту карту для того, чтобы выполнить эту атаку. %LINEBREAK%Вы можете заменить 1 выпавший пустой результат на %HIT% результат."""
        "Cluster Missiles":
            text: """<strong>Атака (Захват цели): </strong> Потратьте жетон
Захвата Цели и сбросьте эту карту для того, чтобы выполнить эту атаку
дважды."""
        "Daredevil":
            text: """<strong>Действие: </strong>Выполните белый
(%TURNLEFT% 1) или (%TURNRIGHT% 1) манёвр. Затем бросьте два кубика атаки, если вы не имеете действия %BOOST%. Получите
попадания %HIT% и %CRIT%, если таковые выпали."""
        "Elusiveness":
            text: """Во время защиты, вы можете получить 1 жетон Стресса
и выбрать 1 кубик атаки. Нападающий должен перебросить этот кубик.
Если у вас есть хотя бы 1 жетон Стресса, вы не можете использовать эту
способность."""
        "Homing Missiles":
            text: """<strong>Атака (Захват цели): </strong>Сбросьте эту карту для того, чтобы выполнить эту атаку.%LINEBREAK%Обороняющийся корабль не
может использовать жетон Уклонения во время этой атаки."""
        "Push the Limit":
            text: """Единожды во время раунда, после выполнения
действия вы можете выполнить 1 из имеющихся у вас на Панели действий,
как свободное.%LINEBREAK%Затем получите 1 жетон Стресса."""
        "Deadeye":
            text: """Вы можете считать «Атака [Захват Цели]», как «Атака [Концентрация]:»<br/> Когда правило Атаки гласит, что жетон Захвата Цели должен быть потрачен, вы можете потратить жетон Концентрации вместо этого."""
        "Expose":
            text: """<strong>Действие: </strong>До конца этого раунда увеличьте величину вашего основного оружия на 1, и уменьшите на 1 показатель вашей Маневренности."""
        "Gunner":
            text: """Если в результате выполнения атаки у вас нет попаданий, немедленно выполните атаку из основного оружия. Вы не можете выполнять других атак в этом раунде."""
        "Ion Cannon":
            text: """<strong>Атака: </strong>Атакуйте 1 корабль. %LINEBREAK%Если попадаете по цели, атакованный корабль получает 1 Повреждение и
1 жетон Иона. Затем отмените все результаты кубиков."""
        "Heavy Laser Cannon":
            text: """<strong>Атака: </strong>Атакуйте 1 корабль. %LINEBREAK%Сразу после броска кубиков атаки вы должны заменить все ваши %CRIT% результаты, на %HIT% результаты ."""
        "Seismic Charges":
            text: """После вскрытия своего маневра вы можете сбросить эту карту и <strong>выставить</strong> 1 жетон Сейсмического заряда.%LINEBREAK%Этот заряд <strong>детонирует</strong> в конце фазы активации."""
        "Mercenary Copilot":
            text: """Во время атаки на Дистанции 3, вы можете заменить один из ваших %HIT% результатов на %CRIT%."""
        "Assault Missiles":
            text: """<strong>Атака (Захват цели): </strong>Потратьте жетон
Захвата Цели и сбросьте эту карту для того, чтобы выполнить эту атаку.%LINEBREAK%Если эта атака попадёт, другие корабли на Дистанции 1 от обороняющегося получат 1 Повреждение."""
        "Veteran Instincts":
            text: """Увеличьте Мастерство вашего пилота на 2."""
        "Proximity Mines":
            text: """<strong>Действие:</strong> Сбросьте эту карту и <strong>выставите</strong> 1 жетон Мины.%LINEBREAK%При совершении кораблем манёвра, если его база и шаблон маневра накрывают этот жетон, мина <strong>детонирует</strong>."""
        "Weapons Engineer":
            text: """Вы можете иметь 2 Захвата цели (по 1 на каждом
из кораблей).<br /><br />Во время получения Захвата цели вы можете отметить 2 разных корабля."""
        "Draw Their Fire":
            text: """
Когда любой дружественный корабль на Дистанции 1 получает попадание от атаки, вы можете принять на себя 1 не отменённый %CRIT% результат, вместо этого корабля."""
        "Luke Skywalker":
            text: """%REBELONLY%%LINEBREAK%Если в результате выполнения атаки у вас нет попаданий, немедленно выполните атаку из основного оружия. Вы можете заменить 1 %FOCUS% результат на %HIT%. Вы не можете выполнять других атак в этом раунде."""
        "Nien Nunb":
            text: """%REBELONLY%%LINEBREAK%Вы можете считать
любые %STRAIGHT% манёвры зелёными."""
        "Chewbacca":
            text: """%REBELONLY%%LINEBREAK%Когда вы получаете карту Повреждения, вы можете немедленно сбросить эту карту и восстановить 1 щит.%LINEBREAK%Затем сбросьте эту карту улучшения."""
        "Advanced Proton Torpedoes":
            text: """<strong>Атака (Захват цели): </strong>Потратьте жетон Захвата цели и сбросьте эту карту для того, чтобы выполнить эту атаку.%LINEBREAK%Вы можете заменить до 3 пустых результатов на %FOCUS% результаты."""
        "Autoblaster":
            text: """<strong>Атака: </strong>Атакуйте один корабль.%LINEBREAK%Ваши %HIT% результаты не могут быть отменены кубиками защиты.%LINEBREAK%Обороняющий может отменять %CRIT% результаты до %HIT% результатов."""
        "Fire-Control System":
            text: """После выполнение атаки вы можете получить жетон Захвата Цели на оборонявшийся корабль"""
        "Blaster Turret":
            text: """<strong>Атака (Концентрация): </strong>Потратьте 1 жетон Концентрации для выполнения этой атаки против 1 корабля противника (даже если противник находится вне вашего сектора обстрела)."""
        "Recon Specialist":
            text: """При выполнении действия Концентрация добавьте ещё 1 жетон Концентрация вашему кораблю."""
        "Saboteur":
            text: """<strong>Действие: </strong>Выберите один вражеский корабль на Дистанции 1 и бросьте кубик атаки. При выпадении %HIT% или %CTRIT% результата, выберите одну перевернутую карту повреждений этого корабля, положите её лицом вверх и исполните указанные в ней инструкции."""
        "Intelligence Agent":
            text: """В начале фазы Активации выберите один корабль на Дистанции 1-2. Вы можете посмотреть на выбранный этим кораблём манёвр."""
        "Proton Bombs":
            text: """После вскрытия своего маневра вы можете сбросить эту карту чтобы <strong>выставить</strong> 1 жетон Протонной бомбы. %LINEBREAK%Этот заряд <strong>детонирует</strong> в конце фазы Активации."""
        "Adrenaline Rush":
            text: """При вскрытии красного манёвра вы можете сбросить эту карту и считать данный манёвр белым до конца фазы Активации."""
        "Advanced Sensors":
            text: """Непосредственно перед вскрытием вашего манёвра вы можете выполнить 1 свободное действие.%LINEBREAK%Если вы используете эту возможность, вы должны пропустить шаг «Выполнение Действия» в текущем раунде."""
        "Sensor Jammer":
            text: """Во время обороны вы можете заменить 1 из %HIT% результатов атакующего на %FOCUS% результат.%LINEBREAK%Атаковавший не может перебросить этот кубик."""
        "Darth Vader":
            text: """%IMPERIALONLY%%LINEBREAK%После выполнения вами атаки вражеского корабля вы можете получить 2 повреждения, чтобы вражеский корабль получил 1 критическое повреждение."""
        "Rebel Captive":
            text: """%IMPERIALONLY%%LINEBREAK%Единожды за раунд, первый корабль, объявивший вас целью для атаки, немедленно получает 1 жетон Стресса."""
        "Flight Instructor":
            text: """Во время обороны вы можете перебросить 1 из ваших %FOCUS% результатов. Если величина Мастерства нападающего пилота «2» или менее, вы можете перебросить 1 из ваших пустых результатов, вместо %FOCUS%."""
        "Navigator":
            text: """Во время вскрытия манёвра вы можете выбрать другой манёвр такого же направления.%LINEBREAK%Красный манёвр не может быть выбран, если у вас уже есть хотя бы 1 жетон Стресса."""
        "Opportunist":
            text: """Во время атаки, если защищающийся не имеет жетонов Концентрации или Уклонения, вы можете получить 1 жетон Стресса и бросить 1 дополнительный кубик атаки. %LINEBREAK%Вы не можете использовать эту способность при наличии у вас жетона Стресса."""
        "Comms Booster":
            text: """<strong>Энергия:</strong> Потратьте 1 энергию и удалите все жетоны стресса на дружественном корабле на Дистанции 1-3. Затем положите 1 жетон концентрации на этот корабль."""
        "Slicer Tools":
            text: """<strong>Действие:</strong> Выберите 1 или более вражеских кораблей, имеющих жетоны стресса на Дистанции 1-3. Для каждого выбранного корабля вы можете потратить 1 энергию, чтобы нанести 1 Повреждение."""
        "Shield Projector":
            text: """Когда корабль противника объявляет своей целью маленький или большой корабль, вы можете потратить 3 энергии, чтобы принудить этот корабль выбрать целью ва, если это возможно."""
        "Ion Pulse Missiles":
            text: """<strong>Атака (Захват цели): </strong><br/>Сбросьте эту карту для выполнения этой атаки.%LINEBREAK%Если эта атака попала, защищающийся получает 1 повреждение и 2 жетона иона. Затем все результаты кубиков отменяются."""
        "Wingman":
            text: """Вначале фазы Боя удалите 1 жетон стресса с другого дружественного корабля на Дистанции 1."""
        "Decoy":
            text: """В начале фазы Боя вы можете выбрать 1 дружественный корабль на Дистанции 1-2. Обменяйтесь показателями Мастерства пилота вашего и пилота выбранного корабля до конца фазы."""
        "Outmaneuver":
            text: """При атаке корабля, находящегося в вашем секторе обстрела, уменьшите значение Маневренности этого корабля на 1 (до минимума 0), если вы находитесь вне его сектора обстрела."""
        "Predator":
            text: """Во время атаки вы можете перебросить 1 кубик атаки. Если значение Мастерства защищающегося пилота равно ‘’2’’ или меньше, вы можете перебросить 2 кубика атаки."""
        "Flechette Torpedoes":
            text: """<strong>Атака (Захват цели): </strong><br/>Потратьте жетон захвата цели и сбросьте эту карту для того, чтобы выполнить эту атаку.%LINEBREAK%После выполнения этой атаки защищающийся получает 1 жетон стресса, если значение корпуса его корабля равно 4 или меньше."""
        "R7 Astromech":
            text: """Один раз за раунд во время
защиты, если вы имеете захват цели на нападающем, вы можете сбросить захват цели и выбрать любые или все брошенные кубики атаки. Атакующий должен перебросить выбранные кубики."""
        "R7-T1":
            text: """<strong>Действие: </strong> Выберите корабль противника на Дистанции 1-2. Если вы находитесь в секторе обстрела этого корабля, вы можете получить Захват цели на этот корабль. Затем вы можете выполнить свободное действие Ускорение."""
        "Tactician":
            text: """После выполнения атаки по кораблю, находящемуся в вашем секторе обстрела и на Дистанции 2, этот корабль получает 1 жетон стресса."""
        "R2-D2 (Crew)":
            text: """%REBELONLY%%LINEBREAK% В конце фазы Завершения, если у вашего корабля нет щитов, вы можете восстановить один щит и кинуть кубик атаки. В случае результата %HIT% случайно выберите одну из карт повреждений, лежащих лицом вниз, и переверните. Затем выполните её инструкции."""
        "C-3PO":
            text: """%REBELONLY%%LINEBREAK%Один раз за раунд, до броска 1 или более кубиков защиты, назовите количестве будущих результатов %EVADE%. Если выпало ровно столько %EVADE% результатов (до изменения результатов броска), добавьте 1 результат %EVADE%."""
        "Single Turbolasers":
            text: """<strong>Атака (Энергия): </strong>%LINEBREAK%Потратьте 2 энергии этой карты, чтобы выполнить атаку. Защищающийся удваивает значение Маневренности корабля против этой атаки. Вы можете поменять 1 из ваших %FOCUS% результатов на %HIT% результат."""
        "Quad Laser Cannons":
            text: """<strong>Атака (Энергия): </strong>%LINEBREAK%Потратьте 1 энергию этой карты, чтобы выполнить атаку. Если атака не принесла успеха, вы можете немедленно потратить 1 энергию этой карты, чтобы выполнить атаку снова."""
        "Tibanna Gas Supplies":
            text: """<strong>Энергия:</strong> Вы можете сбросить эту карту чтобы получить 3 жетона энергии."""
        "Ionization Reactor":
            text: """<strong>Энергия:</strong> Потратье 5 жетонов энергии с этой карты и сбросьте эту карту, чтобы каждый другой корабль на Дистанции 1 получил по 1 повреждению и по 1 жетону Иона."""
        "Engine Booster":
            text: """До вскрытия своего диска маневров вы можете потратить 1 энергию для выполнения белого маневра (%STRAIGHT% 1). Вы не можете воспользоваться этим умением, если есть угроза наложения на другой корабль."""
        "R3-A2":
            text: """При объявлении цели вашей атаки, если она находится в вашем секторе обстрела, вы можете получить 1 жетон Стресса чтобы защищающийся тоже получил 1 жетон Стресса."""
        "R2-D6":
            text: """Вам доступно %ELITE% Улучшение.%LINEBREAK%Вы не можете использовать экипировать этого дроида если %ELITE% уже есть на панели Улучшений, или мастерство вашего пилота 2 или меньше."""
        "Enhanced Scopes":
            text: """Во время фазы Активации, рассматривайте Мастерство вашего пилота как "0"."""
        "Chardaan Refit":
            text: """A-WING only. %LINEBREAK%Эта карта имеет отрицательную стоимость."""
        "Proton Rockets":
            text: """<strong>Атака (Концентрация): </strong>%LINEBREAK%Сбросьте эту карту для того, чтобы выполнить эту атаку. Вы можете бросить дополнительные кубики атаки в количестве, равном показателю вашей Маневренности, но не более 3."""
        "Kyle Katarn":
            text: """%REBELONLY%%LINEBREAK%После удаления жетона стресса с вашего корабля, вы можете назначить ему жетон концентрации."""
        "Jan Ors":
            text: """%REBELONLY%%LINEBREAK%Один раз в раунд вы можете назначить дружественному кораблю на Дистанции 1-3 жетон уклонения, вместо выполнения данным кораблем действия концентрации или получения этим кораблем жетона концентрации."""
        "Toryn Farr":
            text: """%HUGESHIPONLY% %REBELONLY%%LINEBREAK%<strong>Action:</strong> Spend any amount of energy to choose that many enemy ships at Range 1-2.  Remove all focus, evade, and blue target lock tokens from those ships."""
        # TODO Check card formatting
        "R4-D6":
            text: """Когда вас атаковали и есть как минимум 3 неотмененных %HIT% результата, вы можете выбрать отменить эти результаты, пока не останется 2. За каждый отмененный таким образом %HIT% получите 1 жетон стресса."""
        "R5-P9":
            text: """В конце фазы Боя вы можете потратить 1 из ваших жетонов концентрации для восстановления одного щита (до максимума, доступного вам)."""
        "WED-15 Repair Droid":
            text: """%HUGESHIPONLY%%LINEBREAK%<strong>Action:</strong> Spend 1 energy to discard 1 of your facedown Damage cards, or spend 3 energy to discard 1 of your faceup Damage cards."""
        "Carlist Rieekan":
            text: """%HUGESHIPONLY% %REBELONLY%%LINEBREAK%At the start of the Activation phase, you may discard this card to treat each friendly ship's pilot skill value as "12" until the end of the phase."""
        "Jan Dodonna":
            text: """%HUGESHIPONLY% %REBELONLY%%LINEBREAK%When another friendly ship at Range 1 is attacking, it may change 1 of its %HIT% results to a %CRIT%."""
        "Expanded Cargo Hold":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%Once per round, when you would be dealt a faceup Damage card, you may draw that card from either the fore or aft Damage deck."""
        "Backup Shield Generator":
            text: """At the end of each round, you may spend 1 energy to recover 1 shield (up to your shield value)."""
        "EM Emitter":
            text: """When you obstruct an attack, the defender rolls 3 additional defense dice (instead of 1)."""
        "Frequency Jammer":
            text: """When you perform a jam action, choose 1 enemy ship that does not have a stress token and is at Range 1 of the jammed ship.  The chosen ship receives 1 stress token."""
        "Han Solo":
            text: """%REBELONLY%%LINEBREAK%When attacking, if you have a target lock on the defender, you may spend that target lock to change all of your %FOCUS% results to %HIT% results."""
        "Leia Organa":
            text: """%REBELONLY%%LINEBREAK%В начале фазы Активации вы можете сбросить эту карту, чтобы позволить всем дружественным кораблям, раскрывающим красный маневр, рассматривать этот маневр белым до конца этой фазы."""
        "Targeting Coordinator":
            text: """<strong>Energy:</strong> You may spend 1 energy to choose 1 friendly ship at Range 1-2.  Acquire a target lock, then assign the blue target lock token to the chosen ship."""
        "Raymus Antilles":
            text: """%HUGESHIPONLY% %REBELONLY%%LINEBREAK%At the start of the Activation phase, choose 1 enemy ship at Range 1-3.  You may look at that ship's chosen maneuver.  If the maneuver is white, assign that ship 1 stress token."""
        "Gunnery Team":
            text: """Once per round, when attacking with a secondary weapon, you may spend 1 energy to change 1 of your blank results to a %HIT% result."""
        "Sensor Team":
            text: """When acquiring a target lock, you may lock onto an enemy ship at Range 1-5 instead of 1-3."""
        "Engineering Team":
            text: """During the Activation phase, when you reveal a %STRAIGHT% maneuver, gain 1 additional energy during the "Gain Energy" step."""
        "Lando Calrissian":
            text: """%REBELONLY%%LINEBREAK%<strong>Действие: </strong>%LINEBREAK% Киньте два зеленых кубика. За каждый %FOCUS% результат назначьте 1 жетон Концентрации вашему кораблю. За каждый %EVADE% результат назначьте 1 жетон Уклонения вашему кораблю."""
        "Mara Jade":
            text: """%IMPERIALONLY%%LINEBREAK%В конце фазы Боя каждый вражеский корабль на Дистанции 1, не имеющий жетона Стресса, получает 1 жетон Стресса."""
        "Fleet Officer":
            text: """<strong>Действие: </strong>%LINEBREAK% Выберите до 2 дружественных кораблей на Дистанции 1-2, и назначьте 1 жетон Концентрации каждому из этих кораблей. Затем получите жетон Стресса."""
        "Lone Wolf":
            text: """При атаке или защите, если не Дистанции 1-2 не других дружественных кораблей, вы можете перебросить один пустой результат."""
        "Stay On Target":
            text: """Когда вы вскрываете маневр, вы можете изменить его на другой доступный вам маневр той же скорости.%LINEBREAK% Считайте этот маневр как красный маневр."""
        "Dash Rendar":
            text: """%REBELONLY%%LINEBREAK%Вы можете атаковать находясь на препятствии."""
        '"Leebo"':
            text: """%REBELONLY%%LINEBREAK%<strong>Действие: </strong>%LINEBREAK% Осуществите свободное действие Ускорение. Затем получите 1 жетон Иона."""
        "Ruthlessness":
            text: """%IMPERIALONLY%%LINEBREAK%После совершения атаки, которая попала в цель, вы <strong>должны</strong> выбрать один другой корабль на Дистанции 1 от цели (кроме своего). Этот корабль получает 1 Повреждение."""
        "Intimidation":
            text: """Пока вы касаетесь вражеского корабля, уменьшите его значение Маневренности на 1."""
        "Ysanne Isard":
            text: """%IMPERIALONLY%%LINEBREAK%В начале фазы Боя, если у вас нет щитов и есть хотя бы одна карта Повреждения, вы можете выполнить свободное действие %EVADE%."""
        "Moff Jerjerrod":
            text: """%IMPERIALONLY%%LINEBREAK%Когда вы получаете карту Повреждения лицом вверх, вы можете сбросить эту карту, или другую карту %CREW% для того, чтобы перевернуть эту карту Повреждения рубашкой вверх (без применения её свойств)."""
        "Ion Torpedoes":
            text: """<strong>Атака (Захват цели): </strong>%LINEBREAK%Потратье захват цели и сбросьте эту карту чтобы выполнить эту атаку. %LINEBREAK%Если атака попала, то защищающийся и все корабли на Дистанции 1 от него получают по 1 жетону Иона."""
        "Bodyguard":
            text: """%SCUMONLY%%LINEBREAK%В начале фазы боя вы можете потратить жетон концентрации для выбора дружественного корабля на Дистанции 1, с мастерством пилота выше чем у вас. Увеличьте его значение Маневренности на 1 до конца раунда."""
        "Calculation":
            text: """При атаке вы можете потратить жетон Концентрации для изменения 1 значения %FOCUS% на значение %CRIT%."""
        "Accuracy Corrector":
            text: """При атаке, на шаге "Изменения кубиков атаки" вы можете отменить все значения ваших кубиков. Затем, вы можете добавить два результата %HIT% к броску.%LINEBREAK%Ваши кубики не могут быть модифицированы снова в течении этой атаки."""
        "Inertial Dampeners":
            text: """Когда вы вскрываете свой маневр, вы можете скинуть эту карту для выполнения белого маневра [0%STOP%] вместо выбранного. Затем получите 1 жетон Стресса."""
        "Flechette Cannon":
            text: """<strong>Атака: </strong>Атакуйте один корабль.%LINEBREAK%Если эта атака попала, защищающийся получает 1 повреждение и, если у него нет Стресса, он также получает 1 жетон Стресса. Затем отмените <strong>все</strong> результаты кубиков."""
        '"Mangler" Cannon':
            text: """<strong>Атака: </strong>Атакуйте один корабль%LINEBREAK%При атаке вы можете поменять один результат %HIT% на %CRIT%."""
        "Dead Man's Switch":
            text: """Когда ваш корабль уничтожен, каждый корабль на Дистанции 1 получает 1 Повреждение."""
        "Feedback Array":
            text: """В течении фазы Боя, вместо осуществления атаки вы можете получить 1 жетон Иона и 1 Повреждение для того, чтобы выбрать один вражеский корабль на Дистанции 1. Этот корабль получает 1 повреждение."""
        '"Hot Shot" Blaster':
            text: """<strong>Атака: </strong>%LINEBREAK%Сбросьте эту карту для атаки одного корабля (даже если он вне вашего  сектора обстрела)."""
        "Greedo":
            text: """%SCUMONLY%%LINEBREAK%Первый раз когда вы атакуете в каждом раунде, и первый раз когда вы защищаетесь в каждом раунде, первая карта Повреждения применяется рубашкой вниз."""
        "Salvaged Astromech":
            text: """Когда вы получаете карту Повреждения с заголовком <strong>Корабль</strong>, вы можете немедленно сбросить эту карту (до применения её эффекта).%LINEBREAK%Затем сбросьте эту карту."""
        "Bomb Loadout":
            text: """<span class="card-restriction">Y-Wing only.</span>%LINEBREAK%Ваша панель улучшений содержит пиктограмму %BOMB%"""
        '"Genius"':
            text: """Если вы снаряжены бомбой, которая сбрасывается при вскрытии маневра, то вы можете сбросить её <strong>после</strong> выполнения маневра."""
        "Unhinged Astromech":
            text: """Вы можете считать все маневры со скоростью 3 как зеленые маневры."""
        "R4-B11":
            text: """При атаке, если у вас есть захват цели на защищающегося, вы можете сбросить этот захват цели для выбора некоторых или всех кубиков защиты. Защищающийся должен перебросить выбранные кубики."""
        "Autoblaster Turret":
            text: """<strong>Атака: </strong>Атакуйте один корабль (даже если он вне вашего сектора обстрела)%LINEBREAK%Ваши результаты %HIT% не могут быть отменены кубиками защиты. Защищающийся может отменить результаты %CRIT% перед результатами %HIT%."""
        "R4 Agromech":
            text: """При атаке, после того как вы использовали жетон Концентрации, вы можете получить Захват цели на обороняющемся."""
        "K4 Security Droid":
            text: """%SCUMONLY%%LINEBREAK%После выполнения зеленого маневра вы можете осуществить Захват цели."""
        "Outlaw Tech":
            text: """%SCUMONLY%%LINEBREAK%После выполнения красного маневра вы можете получить 1 жетон Концентрации."""
        "Advanced Targeting Computer":
            text: """<span class="card-restriction">TIE Advanced only.</span>%LINEBREAK%При атаке из основного оружия, если у вас есть захват цели на обороняющемся, вы можете добавить 1 результат %CRIT% к вашим результатам. Если вы делаете это, то вы не можете потратить Захват цели в течении этой атаки."""
        "Ion Cannon Battery":
            text: """<strong>Attack (energy):</strong> Spend 2 energy from this card to perform this attack.  If this attack hits, the defender suffers 1 critical damage and receives 1 ion token.  Then cancel <strong>all<strong> dice results."""
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
        'Construction Droid':
            text: '''%HUGESHIPONLY% %LIMITED%%LINEBREAK%When you perform a recover action, you may spend 1 energy to discard 1 facedown Damage card.'''
        'Cluster Bombs':
            text: '''After defending, you may discard this card.  If you do, each other ship at Range 1 of the defending section rolls 2 attack dice, suffering all damage (%HIT%) and critical damage (%CRIT%) rolled.'''
        "Adaptability":
            text: """<span class="card-restriction">Dual card.</span>%LINEBREAK%<strong>Side A:</strong>%LINEBREAK%Increase your pilot skill value by 1.%LINEBREAK%<strong>Side B:</strong>%LINEBREAK%Decrease your pilot skill value by 1."""
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

    modification_translations =
        "Stealth Device":
            text: """Ваша Маневренности увеличена на 1. Сбросьте эту карту, если вы получили попадание при атаке."""
        "Shield Upgrade":
            text: """Щиты вашего корабля увеличиваются на 1."""
        "Engine Upgrade":
            text: """На Панель Действий добавляется действие %BOOST%"""
        "Anti-Pursuit Lasers":
            text: """%DE_LARGESHIPONLY%%LINEBREAK%После того как вражеский корабль совершит манёвр, который приводит его к столкновению с вашим, бросьте 1 кубик атаки. В случае выпадения %HIT% или %CRIT% результата вражеский корабль получает 1 повреждение."""
        "Targeting Computer":
            text: """На Панель действий добавляется действие %TARGETLOCK%."""
        "Hull Upgrade":
            text: """Значение корпуса вашего корабля увеличивается на 1."""
        "Munitions Failsafe":
            text: """При атаке второстепенным оружием, по инструкции которого вам требуется сбросить карту для выполнения этой атаки, не сбрасывайте карту, если атака не принесла успеха."""
        "Stygium Particle Accelerator":
            text: """Когда вы выполняете любое из действий Сброса Маскировки или Маскировки, вы можете получить свободное действие Уклонения."""
        "Advanced Cloaking Device":
            text: """После выполнения атаки, вы можете выполнить свободное действие маскировки."""
        "Combat Retrofit":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%Increase your hull value by 2 and your shield value by 1."""
        "B-Wing/E2":
            text: """На вашу панель Улучшений добавляется улучшение %CREW%."""
        "Countermeasures":
            text: """%DE_LARGESHIPONLY%%LINEBREAK%В начале фазы Боя вы можете сбросить эту карту для увеличения Маневрености вашего корабля на 1 до конца раунда. Затем вы можете скинуть 1 вражеский захват цели со своего корабля."""
        "Experimental Interface":
            text: """Единожды за раунд, после выполнения действия вы можете выполнить свободное действие c экипированной карты Улучшения с заголовком <strong>Действие</strong>. Затем получите 1 жетон Стресса."""
        "Tactical Jammer":
            text: """%DE_LARGESHIPONLY%%LINEBREAK%Ваш корабль может быть влияет на вражеские атаки как препятствие."""
        "Autothrusters":
            text: """При защите, если вы за пределами Дистанции 2 или вне сектора обстрела атакующего корабля, вы можете поменять один пустой результат на результат %EVADE%. Вы можете экипировать это улучшение только если корабль имеет действие %BOOST%."""
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
        "Guidance Chips":
            text: """Once per round, when attacking with a %TORPEDO% or %MISSILE% secondary weapon, you may change 1 die result to a %HIT% result (or a %CRIT% result if your primary weapon value is "3" or higher)."""


    title_translations =
        "Slave I":
            text: """<span class="card-restriction">Firespray-31 only.</span>%LINEBREAK%Ваша панель улучшений содержит пиктограмму %TORPEDO%."""
        "Millennium Falcon":
            text: """<span class="card-restriction">YT-1300 only</span>%LINEBREAK%Ваша панель Улучшений содержит пиктограмму %EVADE%"""
        "Moldy Crow":
            text: """<span class="card-restriction">HWK-290 only.</span>%LINEBREAK%В течении фазы Завершения не убирайте неиспользованные жетоны Концентрации с вашего корабля."""
        "ST-321":
            text: """<span class="card-restriction"><em>Lambda</em>-class Shuttle only.</span>%LINEBREAK%Вы можете осуществлять Захват цели на любой корабль на игровом поле."""
        "Royal Guard TIE":
            text: """<span class="card-restriction">TIE Interceptor only.</span>%LINEBREAK%Вы можете экипировать до двух разных Улучшений-модификации (вместо одного).%LINEBREAK%Вы не можете экипировать это улучшение если Мастерство пилота "4" и меньше."""
        "Dodonna's Pride":
            text: """<span class="card-restriction">CR90 fore section only.</span>%LINEBREAK%When you perform a coordinate action, you may choose 2 friendly ships (instead of 1).  Those ships may each perform 1 free action."""
        "A-Wing Test Pilot":
            text: """<span class="card-restriction">A-Wing only.</span>%LINEBREAK%Ваша панель Улучшений получает 1 пиктограмму %ELITE%.%LINEBREAK%Вы не можете экипировать 2 одинаковых Улучшения %ELITE%. Вы не можете экипировать это улучшение, если мастерство пилота "1" и меньше."""
        "Tantive IV":
            text: """<span class="card-restriction">CR90 fore section only.</span>%LINEBREAK%Your fore section upgrade bar gains 1 additional %CREW% and 1 additional %TEAM% upgrade icon."""
        "Bright Hope":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%A reinforce action assigned to your fore section adds 2 %EVADE% results (instead of 1)."""
        "Quantum Storm":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%At the start of the End phase, if you have 1 or fewer energy tokens, gain 1 energy token."""
        "Dutyfree":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%When performing a jam action, you may choose an enemy ship at Range 1-3 (instead of at Range 1-2)."""
        "Jaina's Light":
            text: """<span class="card-restriction">CR90 fore section only.</span>%LINEBREAK%When defending, once per attack, if you are dealt a faceup Damage card, you may discard it and draw another faceup Damage card."""
        "Outrider":
            text: """<span class="card-restriction">YT-2400 only.</span>%LINEBREAK%Пока вы снаряжены Дополнительным Орудием %CANNON% вы <strong>не можете</strong> атаковать основным орудием, и вы можете атаковать Дополнительным Орудием %CANNON% корабли вне вашего сектора обстрела."""
        "Dauntless":
            text: """<span class="card-restriction">VT-49 Decimator only.</span>%LINEBREAK%После выполнения маневра, который привел к перекрытию другого корабля вы можете осуществить 1 свободное действие. Затем получите 1 жетон Стресса."""
        "Virago":
            text: """<span class="card-restriction">StarViper only.</span>%LINEBREAK%Ваша панель Улучшений содержит пиктограммы %SYSTEM% и %ILLICIT%.%LINEBREAK%Вы не можете экипировать это улучшение, если Мастерство пилота "3" или ниже."""
        '"Heavy Scyk" Interceptor (Cannon)':
            text: """<span class="card-restriction">M3-A Interceptor only.</span>%LINEBREAK%Ваша панель Улучшений содержит пиктограмму %CANNON%, %TORPEDO%, или %MISSILE%."""
        '"Heavy Scyk" Interceptor (Torpedo)':
            text: """<span class="card-restriction">M3-A Interceptor only.</span>%LINEBREAK%Ваша панель Улучшений содержит пиктограмму %CANNON%, %TORPEDO%, или %MISSILE%."""
        '"Heavy Scyk" Interceptor (Missile)':
            text: """<span class="card-restriction">M3-A Interceptor only.</span>%LINEBREAK%Ваша панель Улучшений содержит пиктограмму %CANNON%, %TORPEDO%, или %MISSILE%."""
        "IG-2000":
            text: """<span class="card-restriction">Aggressor only.</span>%LINEBREAK%Вы обладаете способностью пилота каждого другого дружественного корабля с улучшением <em>IG-2000</em> (в дополнение к вашей способности пилота)."""
        "BTL-A4 Y-Wing":
            text: """<span class="card-restriction">Y-Wing only.</span>%LINEBREAK%Вы не можете атаковать корабли вне вашего сектора обстрела. После атаки основным оружием вы можете немедленно атаковать дополнительным орудием %TURRET%."""
        "Andrasta":
            text: """<span class="card-restriction">Firespray-31 only.</span>%LINEBREAK%Ваша панель Улучшений содержит две дополнительные пиктограммы %BOMB%."""
        "TIE/x1":
            text: """<span class="card-restriction">TIE Advanced only.</span>%LINEBREAK%Ваша панель улучшения содержит пиктограмму %SYSTEM%.%LINEBREAK%Если вы экипируете Улучшение %SYSTEM%, его стоимость уменьшается на 4 (до минимальной стоимости "0")."""
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

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations
