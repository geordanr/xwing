###
    X-Wing Squad Builder 2.0
    Stephen Kim <raithos@gmail.com>
    https://raithos.github.io
    Japanese translation by
    - k-keisuke
###

exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.jp = '日本語'

exportObj.translations ?= {}
exportObj.translations.日本語 =
    sloticon:
        "Astromech": '<i class="xwing-miniatures-font xwing-miniatures-font-astromech"></i>'
        "Force": '<i class="xwing-miniatures-font xwing-miniatures-font-forcepower"></i>'
        "Bomb": '<i class="xwing-miniatures-font xwing-miniatures-font-bomb"></i>'
        "Cannon": '<i class="xwing-miniatures-font xwing-miniatures-font-cannon"></i>'
        "Crew": '<i class="xwing-miniatures-font xwing-miniatures-font-crew"></i>'
        "Talent": '<i class="xwing-miniatures-font xwing-miniatures-font-talent"></i>'
        "Missile": '<i class="xwing-miniatures-font xwing-miniatures-font-missile"></i>'
        "Sensor": '<i class="xwing-miniatures-font xwing-miniatures-font-sensor"></i>'
        "Torpedo": '<i class="xwing-miniatures-font xwing-miniatures-font-torpedo"></i>'
        "Turret": '<i class="xwing-miniatures-font xwing-miniatures-font-turret"></i>'
        "Illicit": '<i class="xwing-miniatures-font xwing-miniatures-font-illicit"></i>'
        "Configuration": '<i class="xwing-miniatures-font xwing-miniatures-font-config"></i>'
        "Modification": '<i class="xwing-miniatures-font xwing-miniatures-font-modification"></i>'
        "Gunner": '<i class="xwing-miniatures-font xwing-miniatures-font-gunner"></i>'
        "Device": '<i class="xwing-miniatures-font xwing-miniatures-font-device"></i>'
        "Tech": '<i class="xwing-miniatures-font xwing-miniatures-font-tech"></i>'
        "Title": '<i class="xwing-miniatures-font xwing-miniatures-font-title"></i>'
        "Hardpoint": '<i class="xwing-miniatures-font xwing-miniatures-font-hardpoint"></i>'
        "Team": '<i class="xwing-miniatures-font xwing-miniatures-font-team"></i>'
        "Cargo": '<i class="xwing-miniatures-font xwing-miniatures-font-cargo"></i>'
        "Command": '<i class="xwing-miniatures-font xwing-miniatures-font-command"></i>'
        "HardpointShip": '<i class="xwing-miniatures-font xwing-miniatures-font-hardpoint"></i>'
        "Tactical Relay": '<i class="xwing-miniatures-font xwing-miniatures-font-tacticalrelay"></i>'

    restrictions:
        "Restrictions": "前提条件"
        "Initiative": "イニシアチブ"
        "Agility": "アジリティ"
        "Non-Limited": "非制限"
        " or Squad Including": "あるいはスコードが以下を含んでいる"
        "Ship": "宇宙船"
        "Extra": "追加必要スロット"

    faction:
        "Rebel Alliance": "反乱同盟"
        "Galactic Empire": "銀河帝国"
        "Scum and Villainy": "スカム"
        "Resistance": "レジスタンス"
        "First Order": "ファースト・オーダー"
        "Galactic Republic": "銀河共和国"
        "Separatist Alliance": "分離主義同盟"

    slot:
        "Astromech": "アストロメク"
        "Force": "フォース"
        "Bomb": "爆弾"
        "Cannon": "キャノン"
        "Crew": "クルー"
        "Missile": "ミサイル"
        "Sensor": "センサー"
        "Torpedo": "魚雷"
        "Turret": "タレット"
        "HardpointShip": "ハードポイント"
        "Hardpoint": "ハードポイント"
        "Illicit": "非合法"
        "Configuration": "コンフィグレーション"
        "Talent": "タレント"
        "Modification": "改造"
        "Gunner": "ガナー"
        "Device": "ペイロード"
        "Tech": "テック"
        "Title": "称号"
        "Tactical Relay": "戦術リレー"
        "Cargo": "カーゴ"
        "Command": "コマンド"
        "Hyperdrive": "ハイパードライブ"
        "Team": "チーム"

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
        shipSelectorPlaceholder: "宇宙船を選択"
        pilotSelectorPlaceholder: "パイロットを選択"
        upgradePlaceholder: (translator, slot) ->
            "#{translator 'slot', slot} アップグレード未設定"
        modificationPlaceholder: "改造未設定"
        titlePlaceholder: "称号未設定"
        upgradeHeader: (translator, slot) ->
            "#{translator 'slot', slot} アップグレード"
        unreleased: "リリース前"
        epic: "エピック"
        limited: "制限"
    byCSSSelector:
        # Warnings
        'Unreleased content warning': 'このスコードはリリース前のコンテンツを使用しています!'
        'Broken squad link warning': 'リンクが壊れていたようです。スコードをロードできませんでした!'
        'Collection warning': 'あなたのコレクションではこのリストを編成できません!'
        'Ship number warning': 'トーナメントリーガルなスコードは2-8機の宇宙船が必要です!'
        # Type selector
        'Extended': 'エクステンデッド'
        'Hyperspace': 'ハイパースペース'
        'Epic': 'エピック'
        'Quickbuild': 'クイックビルド'
        # Card browser
        'Name': '名前'
        'Source': '出典'
        'Type (by Points)': 'タイプ (ポイント順)'
        'Type (by Name)': 'タイプ (名前順)'
        'Select a card': '左のリストからカードを選んでください'
        'Sort cards by': 'ソート方法'
        # Info well
        'Ship': '宇宙船'
        'Initiative': 'イニシアチブ'
        'Actions': 'アクション'
        'Upgrades': 'アップグレード'
        'Range': 'レンジ'
        'Sources:': '出典:'
        # Squadron edit buttons
        'New Squad' : '新しいスコード'
        'Save' : 'セーブ'
        'Save As...' : '名前を付けてセーブ'
        'Delete' : '削除'
        'Load Squad' : 'スコードのロード'
        'Import' : 'インポート'
        'Print/Export' : 'リストの印刷/エクスポート'
        'Your Collection': 'あなたのコレクション'
        'Randomize!' : 'ランダム!'
        'Randomizer Options' : 'ランダマイザオプション…'
        'Squad Notes:' : 'スコードのノート:'
        'Tag:' : 'タグ:'
        # Print/View modal
        'Copy below BBCode' : '以下のBBCodeをコピーして、フォーラムのポストにペーストしてください'
        'Copy' : 'コピー'
        'Space for Cards' : """カードごとのスペースを追加"""
        'Print Color' : """カラー印刷"""
        'Print' : '印刷'
        # Randomizer options
        'Roll!' : 'ランダム!'
        # Top tab bar
        'Card Browser' : 'カードブラウザ'
        'About' : '詳細'
        # Obstacles
        'Choose Obstacles' : '障害物の選択'
        'Choose obstacles dialog' : '外部プログラムのリンクに含める障害物を3つまで選択します(選択した障害物をプリントアウトする機能は未サポートです)'
        'Core Asteroid' : 'コア・アステロイド'
        'YT2400 Debris' : 'YT2400・デブリ'
        'VT49 Debris' : 'VT49・デブリ'
        'Force Awakens Asteroid' : 'フォースの覚醒・アステロイド'
        # Collection

    byCSSSelector:
        '.coreasteroid0-select' : 'コア・アステロイド 0'
        '.coreasteroid1-select' : 'コア・アステロイド 1'
        '.coreasteroid2-select' : 'コア・アステロイド 2'
        '.coreasteroid3-select' : 'コア・アステロイド 3'
        '.coreasteroid4-select' : 'コア・アステロイド 4'
        '.coreasteroid5-select' : 'コア・アステロイド 5'
        '.yt2400debris0-select' : 'YT2400・デブリ 0'
        '.yt2400debris1-select' : 'YT2400・デブリ 1'
        '.yt2400debris2-select' : 'YT2400・デブリ 2'
        '.vt49decimatordebris0-select' : 'VT49・デブリ 0'
        '.vt49decimatordebris1-select' : 'VT49・デブリ 1'
        '.vt49decimatordebris2-select' : 'VT49・デブリ 2'
        '.core2asteroid0-select' : 'フォースの覚醒・アステロイド 0'
        '.core2asteroid1-select' : 'フォースの覚醒・アステロイド 1'
        '.core2asteroid2-select' : 'フォースの覚醒・アステロイド 2'
        '.core2asteroid3-select' : 'フォースの覚醒・アステロイド 3'
        '.core2asteroid4-select' : 'フォースの覚醒・アステロイド 4'
        '.core2asteroid5-select' : 'フォースの覚醒・アステロイド 5'
        '.gascloud1-select' : 'ガスクラウド 1'
        '.gascloud2-select' : 'ガスクラウド 2'
        '.gascloud3-select' : 'ガスクラウド 3'
        '.gascloud4-select' : 'ガスクラウド 4'
        '.gascloud5-select' : 'ガスクラウド 5'
        '.gascloud6-select' : 'ガスクラウド 6'

    singular:
        'pilots': 'パイロット'
        'modifications': '改造'
        'titles': '称号'
        'ships' : '宇宙船'
    types:
        'Pilot': 'パイロット'
        'Modification': '改造'
        'Title': '称号'
        'Ship': '宇宙船'
    rulestypes:
        'glossary': '用語集'
        'faq': 'FAQ'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.日本語 = () ->
    exportObj.cardLanguage = '日本語'

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
    exportObj.renameShip """M3-A Interceptor""", """M3-A Interceptor"""
    exportObj.renameShip """JumpMaster 5000""", """JumpMaster 5000"""
    exportObj.renameShip """Customized YT-1300""", """Customized YT-1300 Light Freighter"""
    exportObj.renameShip """Escape Craft""", """Escape Craft"""
    exportObj.renameShip """TIE/FO Fighter""", """TIE/FO Fighter"""
    exportObj.renameShip """TIE/SF Fighter""", """TIE/SF Fighter"""
    exportObj.renameShip """Upsilon-Class Command Shuttle""", """Upsilon-Class Command Shuttle"""
    exportObj.renameShip """TIE/VN Silencer""", """TIE/vn Silencer"""
    exportObj.renameShip """T-70 X-Wing""", """T-70 X-Wing"""
    exportObj.renameShip """RZ-2 A-Wing""", """RZ-2 A-Wing"""
    exportObj.renameShip """MG-100 StarFortress""", """MG-100 StarFortress"""
    exportObj.renameShip """Mining Guild TIE Fighter""", """Mining Guild TIE Fighter"""
    exportObj.renameShip """Scavenged YT-1300""", """Scavenged YT-1300"""


    pilot_translations =
        "0-66":
           display_name: """0-66"""
           text: """君が防御した後、君はカリキュレート・トークンを1つ消費し、アクションを実行しても良い。"""
        "104th Battalion Pilot":
           display_name: """104th Battalion Pilot"""
           text: """<i class = flavor_text>The ARC-170 was designed as a dominating heavy escort fighter with powerful front and rear lasers, ordnance, and an astromech for navigation. Squadrons of these mighty ships bolster the Republic Navy’s presence at any battle where they are deployed.</i>"""
        "4-LOM":
           display_name: """4-LOM"""
           text: """君が赤のマニューバを完全に実行した後、カリキュレート・トークンを1つ得る。%LINEBREAK%終了フェイズの開始時、君はレンジ0-1の宇宙船を1つ選んでも良い。もしそうするなら、君のストレス・トークンのうち1つをその宇宙船に転送する。"""
        "Nashtah Pup":
           display_name: """Nashtah Pup"""
           text: """君は緊急配置を通してのみ配置でき、破壊された友軍の<strong>Hound’s Tooth</strong>と同じ名前、イニシアチブ、パイロット能力、および船の%CHARGE%を持つ。%LINEBREAK%<strong>Escape Craft:</strong> <b>セットアップ:</b><strong>Hound’s Tooth</strong>が必要。君は<strong>Hound’s Tooth</strong>に格納された状態でゲームを<b>始めなければならない</b>。"""
        "AP-5":
           display_name: """AP-5"""
           text: """君がコーディネートする際、もし選んだ宇宙船にちょうど1つストレス・トークンがついているなら、その宇宙船はアクションを実行できる。%LINEBREAK%<strong>Comms Shuttle:</strong> 君がドックされている際、君のキャリア宇宙船は%COORDINATE%を得る。君のキャリア宇宙船のアクティベートの前に、それは%COORDINATE%アクションを実行しても良い。"""
        "Academy Pilot":
           display_name: """Academy Pilot"""
           text: """<i class = flavor_text>The Galactic Empire uses the fast and agile TIE/ln, developed by Sienar Fleet Systems and produced in staggering quantity, as its primary starfighter.</i>"""
        "Ahhav":
           display_name: """Ahhav"""
           text: """君が防御するか攻撃を実行する際、もし敵宇宙船のサイズが君よりも大きいなら、ダイスを追加で1つ振る。%LINEBREAK%<strong>Notched Stabilizers:</strong> 君が移動する際、君はアステロイドを無視する。"""
        "Ahsoka Tano":
           display_name: """Ahsoka Tano"""
           text: """君がマニューバを完全に実行した後、君はレンジ0-1の友軍宇宙船を選び、%FORCE%を1つ消費しても良い。その宇宙船はアクションを実行しても良い(ストレス状態であっても)。%LINEBREAK%<strong>Fine-tuned Controls:</strong> 君がマニューバを完全に実行した後、君は%FORCE%を1つ消費して、%BOOST%あるいは%BARRELROLL%アクションを実行しても良い。"""
        "Airen Cracken":
           display_name: """Airen Cracken"""
           text: """君が攻撃を実行した後、レンジ1の友軍宇宙船を1つ選んでも良い。その宇宙船はアクションを1つ、そのアクションを赤と扱って実行しても良い。"""
        "Alpha Squadron Pilot":
           display_name: """Alpha Squadron Pilot"""
           text: """<i class = flavor_text>Sienar Fleet Systems designed the TIE interceptor with four wing-mounted laser cannons, a dramatic increase in firepower over its predecessors.</i>%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        "Anakin Skywalker":
           display_name: """Anakin Skywalker"""
           text: """君がマニューバを完全に実行した後、もし敵宇宙船が君の%FRONTARC%レンジ0-1か君の%BULLSEYEARC%内にいるとき、君は%FORCE%を1つ消費して、ストレス・トークンを1つ取り除いても良い。%LINEBREAK%<strong>Fine-tuned Controls:</strong> 君がマニューバを完全に実行した後、君は%FORCE%を1つ消費して、%BOOST%あるいは%BARRELROLL%アクションを実行しても良い。"""
        "Anakin Skywalker (N-1 Starfighter)":
           text: """君が君のマニューバを公開する前に、君は%FORCE%を1つ消費して、バレル・ロールを実行しても良い(これはアクションではない)。%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Arvel Crynyd":
           display_name: """Arvel Crynyd"""
           text: """もし君が他の宇宙船に重なることにより%BOOST%アクションが失敗しようとする時、代わりにマニューバを部分的に実行するようにして解決する。 %LINEBREAK% 君が攻撃レンジ0で攻撃を実行する際、それを攻撃レンジ1の攻撃として扱う。 %LINEBREAK% <strong>Vectored Thrusters:</strong> 君がアクションを実行した後、君は赤の%BOOST%アクションを実行しても良い。"""
        "Asajj Ventress":
           display_name: """Asajj Ventress"""
           text: """エンゲージメント・フェイズの開始時、君は君の%SINGLETURRETARC%内レンジ0-2の宇宙船を1つ選び、%FORCE%を1つ消費しても良い。もしそうするなら、その宇宙船は緑のトークンを1つ取り除かない限り、ストレス・トークンを1つ得る。"""
        "Autopilot Drone":
           display_name: """Autopilot Drone"""
           text: """<i class = flavor_text>Sometimes, manufacturer’s warnings are made to be broken.</i>%LINEBREAK%<strong>Rigged Energy Cells:</strong> システム・フェイズの間、もし君がドックされていなければ、%CHARGE%を1つ失う。アクティベーション・フェイズの終了時、君の%CHARGE%が0なら、君は破壊される。君が取り除かれる前に、レンジ0-1の各宇宙船は%CRIT%ダメージを1つを受ける。"""
        "Bandit Squadron Pilot":
           display_name: """Bandit Squadron Pilot"""
           text: """<i class = flavor_text>The Z-95 Headhunter was the primary inspiration for Incom Corporation’s exemplary T-65 X-wing starfighter. Though it is considered outdated by modern standards, it remains a versatile and potent snub fighter.</i>"""
        "Baktoid Prototype":
           display_name: """Baktoid Prototype"""
           text: """君が特殊攻撃を実行する際、もしNetworked Calculation宇宙船能力を持った友軍宇宙船が、防御者へのロックを持っているなら、君はその攻撃の%FOCUS%%CALCULATE%あるいは%LOCK%必要条件を無視しても良い。%LINEBREAK%<strong>Networked Calculation:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Baron of the Empire":
           display_name: """Baron of the Empire"""
           text: """<i class = flavor_text>Sienar Fleet System’s TIE Advanced v1 is a groundbreaking starfighter design, featuring upgraded engines, a missile launcher, and folding s-foils.</i>"""
        "Barriss Offee":
           display_name: """Barriss Offee"""
           text: """レンジ0-2の友軍宇宙船が攻撃を実行する際、防御者がその%BULLSEYEARC%内にいるなら、君は%FORCE%を1つ消費して、%FOCUS%の結果1つを%HIT%の結果に変更するか、%HIT%の結果1つを%CRIT%の結果に変更しても良い。%LINEBREAK%<strong>Fine-tuned Controls:</strong> 君がマニューバを完全に実行した後、君は%FORCE%を1つ消費して、%BOOST%あるいは%BARRELROLL%アクションを実行しても良い。"""
        "Ben Teene":
           display_name: """Ben Teene"""
           text: """君が攻撃を実行した後、もし防御者が%SINGLETURRETARC%内にいるなら、防御者に<strong>Rattled</strong>コンディションをつける。"""
        "Benthic Two Tubes":
           display_name: """Benthic Two Tubes"""
           text: """君が%FOCUS%アクションを実行した後、君は君のフォーカス・トークンを、レンジ1-2の友軍宇宙船に転送しても良い。"""
        "Biggs Darklighter":
           display_name: """Biggs Darklighter"""
           text: """レンジ0-1の他の友軍宇宙船の防御の際、結果の相殺ステップの前に、もし君がその攻撃アーク内にいるなら、君は%HIT%あるいは%CRIT%を1つ受け、一致する結果1つをキャンセルしても良い。"""
        "Binayre Pirate":
           display_name: """Binayre Pirate"""
           text: """<i class = flavor_text>Operating from the Double Worlds, Talus and Tralus, Kath Scarlet’s gang of smugglers and pirates would never be described as reputable or dependable—even by other criminals.</i>"""
        "Black Squadron Ace":
           display_name: """Black Squadron Ace"""
           text: """<i class = flavor_text>The elite TIE/ln pilots of Black Squadron accompanied Darth Vader on a devastating strike against the Rebel forces at the Battle of Yavin.</i>"""
        "Black Squadron Scout":
           display_name: """Black Squadron Scout"""
           text: """<i class = flavor_text>These heavily armed atmospheric craft employ their specialized moveable wings to gain additional speed and maneuverability.</i>%LINEBREAK% <sasmall><strong>Adaptive Ailerons:</strong> 君が君のダイヤルを公開する前に、もし君がストレス状態でなければ、君は白の[1%BANKLEFT%][1%STRAIGHT%]あるいは[1%BANKRIGHT%]を<b>行わなければならない</b>。</sasmall>"""
        "Black Squadron Ace (T-70)":
           display_name: """Black Squadron Ace"""
           text: """<i class = flavor_text>During the Cold War, Poe Dameron’s Black Squadron conducted daring covert operations against the First Order in defiance of treaties ratified by the New Republic Senate.</i>%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Black Squadron Scout":
           display_name: """Black Squadron Scout"""
           text: """<i class = flavor_text>These heavily armed atmospheric craft employ their specialized moveable wings to gain additional speed and maneuverability.</i>%LINEBREAK% <strong>Adaptive Ailerons:</strong> 君が君のダイヤルを公開する前に、もし君がストレス状態でなければ、君は白の[1%BANKLEFT%][1%STRAIGHT%]あるいは[1%BANKRIGHT%]を<b>行わなければならない</b>。</sasmall>"""
        "Black Sun Ace":
           display_name: """Black Sun Ace"""
           text: """<i class = flavor_text>The Kihraxz assault fighter was developed specifically for the Black Sun crime syndicate, whose highly paid ace pilots demanded a nimble, powerful ship to match their skills.</i>"""
        "Black Sun Assassin":
           display_name: """Black Sun Assassin"""
           text: """<i class = flavor_text>Although assassinations can be handled with a shot in the dark or a dire substance added to a drink, a flaming shuttle tumbling from the sky sends a special kind of message.</i> %LINEBREAK% <strong>Microthrusters:</strong> 君がバレル・ロールを実行する際、君は%STRAIGHT%テンプレートの代わりに%BANKLEFT%あるいは%BANKRIGHT%テンプレートを<b>使用しなければならない</b>。"""
        "Black Sun Enforcer":
           display_name: """Black Sun Enforcer"""
           text: """<i class = flavor_text>Prince Xizor himself collaborated with MandalMotors to design the StarViper-class attack platform, one of the most formidable starfighters in the galaxy.</i> %LINEBREAK% <strong>Microthrusters:</strong> 君がバレル・ロールを実行する際、君は%STRAIGHT%テンプレートの代わりに%BANKLEFT%あるいは%BANKRIGHT%テンプレートを<b>使用しなければならない</b>。"""
        "Black Sun Soldier":
           display_name: """Black Sun Soldier"""
           text: """<i class = flavor_text>The vast and influential Black Sun crime syndicate can always find a use for talented pilots, provided they aren’t particular about how they earn their credits.</i>"""
        "Blade Squadron Veteran":
           display_name: """Blade Squadron Veteran"""
           text: """<i class = flavor_text>A unique gyrostabilization system surrounds the B-wing’s cockpit, ensuring that the pilot always remains stationary during flight.</i>"""
        "Blue Squadron Escort":
           display_name: """Blue Squadron Escort"""
           text: """<i class = flavor_text>Designed by Incom Corporation, the T-65 X-wing quickly proved to be one of the most effective and versatile military vehicles in the galaxy and a boon to the Rebellion.</i>"""
        "Blue Squadron Pilot":
           display_name: """Blue Squadron Pilot"""
           text: """<i class = flavor_text>Due to its heavy weapons array and resilient shielding, the B-wing has solidified itself as the Rebel Alliance’s most innovative assault fighter.</i>"""
        "Blue Squadron Protector":
           display_name: """Blue Squadron Protector"""
           text: """<i class = flavor_text>Blue Squadron’s elite clone pilots are trained to fly their V-19s in conjunction with Jedi and often support famous commanders such as Anakin Skywalker and Ahsoka Tano.</i>"""
        "Blue Squadron Recruit":
           display_name: """Blue Squadron Recruit"""
           text: """<i class = flavor_text>Young beings across the galaxy have grown up on tales of heroism in the Galactic Civil War, and many learned to fly in the same cockpits from which their parents fought the Empire.</i>%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> 君は君の%SINGLETURRETARC%インジケーターを%FRONTARC%あるいは%REARARC%にのみ回転できる。君がアクションを実行した後、君は赤の%BOOST%あるいは赤の%ROTATEARC%アクションを実行しても良い。"""
        "Blue Squadron Rookie":
           display_name: """Blue Squadron Rookie"""
           text: """<i class = flavor_text>The Incom-FreiTek T-70 X-Wing was designed to improve upon the tactical flexibility of the venerable T-65. The starfighter’s advanced droid socket is compatible with a wide array of astromechs, and its modular weapons pods allow ground crews to tailor its payload for specific missions.</i>%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Blue Squadron Scout":
           display_name: """Blue Squadron Scout"""
           text: """<i class = flavor_text>Used for deploying troops under the cover of darkness or into the heat of battle, the UT-60D U-wing fulfills the Rebellion’s need for a swift and hardy troop transport.</i>"""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """君が防御するか攻撃を実行する際、君はレンジ0-1の敵宇宙船1つにつき君のダイスを1つ振り直しても良い。"""
        "Bodhi Rook":
           display_name: """Bodhi Rook"""
           text: """友軍宇宙船は任意の友軍宇宙船のレンジ0-3のオブジェクトに対してロックを得ることができる。"""
        "Bossk":
           display_name: """Bossk"""
           text: """君が主武装による攻撃を実行する際、結果の相殺ステップの後、君は%CRIT%の結果を1つ消費して、%HIT%の結果を2つ足しても良い。"""
        "Bounty Hunter":
           display_name: """Bounty Hunter"""
           text: """<i class = flavor_text>The Firespray-class patrol craft is infamous for its association with the deadly bounty hunters Jango Fett and Boba Fett, who packed their craft with countless deadly armaments.</i>"""
        "Braylen Stramm":
           display_name: """Braylen Stramm"""
           text: """君が防御するか攻撃を実行する際、君がストレス状態なら、君は君のダイスを2つまで振り直しても良い。"""
        "Captain Cardinal":
           display_name: """Captain Cardinal"""
           text: """レンジ1-2の君よりもイニシアチブが低い友軍宇宙船が防御あるいは攻撃を実行する際、もし君が少なくとも1つの%CHARGE%を持っているなら、その宇宙船は%FOCUS%の結果を1つ振り直しても良い。%LINEBREAK%レンジ0-3の敵宇宙船が破壊された後、%CHARGE%を1つ失う。%LINEBREAK%<strong>Linked Battery:</strong> 君が%CANNON%攻撃を実行する際、攻撃ダイスを追加で1つ振る。"""
        "Captain Feroph":
           display_name: """Captain Feroph"""
           text: """君が防御する際、もし攻撃者が緑のトークンを全く持っていなければ、君の空白あるいは%FOCUS%の結果のうち1つを%EVADE%の結果に変えても良い。%LINEBREAK%<strong>Adaptive Ailerons:</strong> 君が君のダイヤルを公開する前に、君がストレス状態でなければ、君は白の[1%BANKLEFT%][1%STRAIGHT%]あるいは[1%BANKRIGHT%]を<b>行わなければならない</b>。"""
        "Captain Jonus":
           display_name: """Captain Jonus"""
           text: """レンジ0-1の友軍宇宙船が%TORPEDO%あるいは%MISSILE%による攻撃を実行する際、その宇宙船は2つまで攻撃ダイスを振り直しても良い。%LINEBREAK%<strong>Nimble Bomber:</strong> もし君が%STRAIGHT%テンプレートを使ってデバイスを投下する時、君は代わりに同じ速度の%BANKLEFT%あるいは%BANKRIGHT%テンプレートを使用しても良い。"""
        "Captain Jostero":
           display_name: """Captain Jostero"""
           text: """敵宇宙船がダメージを受けた後、もしその宇宙船が防御者でなければ、君はその宇宙船に対してボーナスの攻撃を実行しても良い。"""
        "Captain Kagi":
           display_name: """Captain Kagi"""
           text: """エンゲージメント・フェイズの開始時、君はレンジ0-3の友軍宇宙船を1つ以上選んでも良い。もしそうするなら、選んだ宇宙船についている全ての敵のロック・トークンを君に転送しても良い。"""
        "Captain Nym":
           display_name: """Captain Nym"""
           text: """友軍の爆弾あるいは機雷が爆発しようとする前に、君は%CHARGE%を1つ消費してそれの爆発をさせなくしても良い。%LINEBREAK%君が爆弾あるいは機雷に妨害された攻撃に対して防御する際、防御ダイスを追加で1つ振る。"""
        "Captain Oicunn":
           display_name: """Captain Oicunn"""
           text: """君が攻撃レンジ0で攻撃を実行する際、それを攻撃レンジ1の攻撃として扱う。"""
        "Captain Rex":
           display_name: """Captain Rex"""
           text: """君が攻撃を実行した後、防御者に<strong>Suppressive Fire</strong>コンディションをつける。"""
        "Captain Sear":
           display_name: """Captain Sear"""
           text: """レンジ0-3の友軍宇宙船が主武装による攻撃を実行する際、もし防御者がそれの%BULLSEYEARC%内にいるなら、結果の相殺ステップの前に、その友軍宇宙船はカリキュレート・トークン1つを消費して、%EVADE%の結果1つをキャンセルしても良い。"""
        "Captain Seevor":
           display_name: """Captain Seevor"""
           text: """君が防御するか攻撃を実行する際、攻撃ダイスが振られる前に、もし君が敵宇宙船の%BULLSEYEARC%内にいなければ、君は%CHARGE%を1つ消費しても良い。もしそうするなら、その敵宇宙船はジャム・トークンを1つ得る。%LINEBREAK%<strong>Notched Stabilizer:</strong> 君が移動する際、君はアステロイドを無視する。"""
        "Cartel Executioner":
           display_name: """Cartel Executioner"""
           text: """<i class = flavor_text>Many veteran pilots in the service of the Hutt kajidics and other criminal operations choose the M12-L Kimogila for its firepower and dreaded reputation alike.</i>%LINEBREAK% <strong>Dead to Rights:</strong> 君が攻撃を実行する際、もし防御者が君の%BULLSEYEARC%内にいるなら、防御ダイスは緑のトークンを使って修正できない。"""
        "Cartel Marauder":
           display_name: """Cartel Marauder"""
           text: """<i class = flavor_text>The versatile Kihraxz was modeled after Incom’s popular X-wing starfighter, but an array of after-market modification kits ensure a wide variety of designs. </i>"""
        "Cartel Spacer":
           display_name: """Cartel Spacer"""
           text: """<i class = flavor_text>MandalMotors’ M3-A “Scyk” Interceptor is purchased in large quantities by the Hutt Cartel and the Car’das smugglers due to its low cost and customizability.</i> %LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """アクティベーション・フェイズの開始時、君はレンジ1-3の友軍宇宙船を1つ選んでもよい。もしそうするなら、その宇宙船はストレス・トークンを1つ取り除く。"""
        "Cat":
           display_name: """Cat"""
           text: """君が主武装による攻撃を実行する際、もし防御者が少なくとも1つの友軍のデバイスのレンジ0-1にいるなら、攻撃ダイスを追加で1つ振る。"""
        "Cavern Angels Zealot":
           display_name: """Cavern Angels Zealot"""
           text: """<i class = flavor_text>Unlike most Rebel cells, Saw Gerrera’s partisans are willing to use extreme methods to undermine the Galactic Empire’s objectives in brutal battles that rage from Geonosis to Jedha.</i>"""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """君が表向きのダメージ・カードを1枚受け取ろうとする前に、君は%CHARGE%を1つ消費し、代わりにそのカードを裏向きで受け取って良い。"""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca"""
           text: """レンジ0-3の友軍宇宙船が破壊された後、君はアクションを1つ実行しても良い。その後、君はボーナスの攻撃を実行しても良い。"""
        "Cobalt Squadron Bomber":
           display_name: """Cobalt Squadron Bomber"""
           text: """<i class = flavor_text>Whether the ordnance silos of their StarFortresses are loaded with proton bombs or relief supplies, the heroic crews of Cobalt Squadron dedicate their lives to making a difference in the galaxy.</i>"""
        "Colonel Jendon":
           display_name: """Colonel Jendon"""
           text: """アクティベーション・フェイズの開始時、君は%CHARGE%を1つ消費しても良い。もうそうするなら、このラウンド、ロックを得る友軍宇宙船は、レンジ0-3の代わりに、レンジ3よりも遠くのロックを得なければならない。"""
        "Colonel Vessery":
           display_name: """Colonel Vessery"""
           text: """君がロック状態の宇宙船に対して攻撃を実行する際、君は攻撃ダイスを振った後に、君は防御者に対するロックを得ても良い。%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Commander Malarus":
           display_name: """Commander Malarus"""
           text: """エンゲージメント・フェイズの開始時、君は%CHARGE%を1つ消費し、ストレス・トークンを1つ得ても良い。もしそうするなら、ラウンドの終了まで、君が防御するか攻撃を実行する際、君は全ての%FOCUS%の結果を%EVADE%あるいは%HIT%に変更しても良い。"""
        "Constable Zuvio":
           display_name: """Constable Zuvio"""
           text: """もし君がデバイスを投下しようとする時、君は代わりに[1%STRAIGHT%]テンプレートを用いて射出しても良い。%LINEBREAK%<strong>Spacetug Tractor Array:</strong> <b>アクション:</b> レンジ1の君の%FRONTARC%内の宇宙船を1つ選ぶ。その宇宙船はトラクター・トークンを1つ得るか、あるいは君の%BULLSEYEARC%内レンジ1にいるならトラクター・トークンを2つ得る。"""
        "Contracted Scout":
           display_name: """Contracted Scout"""
           text: """<i class = flavor_text>Built for long-distance reconnaissance and plotting new hyperspace routes, the lightly armed JumpMaster 5000 is often extensively retrofitted with custom upgrades.</i>"""
        "Corran Horn":
           display_name: """Corran Horn"""
           text: """イニシアチブ0において、君は君の%BULLSEYEARC%内の敵宇宙船に対してボーナスの主武装攻撃を実行しても良い。もしそうするなら、次のプランニング・フェイズの開始時に、武装解除トークンを1つ得る。%LINEBREAK%<strong>Experimental Scanners:</strong> 君はレンジ3を越えてロックを得ることができる。君はレンジ1のロックを得ることができない。"""
        "Count Dooku":
           display_name: """Count Dooku"""
           text: """君が防御した後、攻撃者が君のファイアリング・アーク内にいるなら、君は%FORCE%を1つ消費し、君の青か赤のトークンを1つ取り除いても良い。%LINEBREAK%君が攻撃を実行しそれが命中した後、君は%FORCE%を1つ消費し、アクションを実行しても良い。"""
        "Countess Ryad":
           display_name: """Countess Ryad"""
           text: """君が%STRAIGHT%マニューバを実行しようとする際、君はマニューバの難易度を上げても良い。もしそうするなら、代わりにそれを%KTURN%として扱う。%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Crymorah Goon":
           display_name: """Crymorah Goon"""
           text: """<i class = flavor_text>Though far from nimble, the Y-wing’s heavy hull, substantial shielding, and turret-mounted cannons make it an excellent patrol craft.</i>"""
        "Cutlass Squadron Pilot":
           display_name: """Cutlass Squadron Pilot"""
           text: """<i class = flavor_text>The TIE punisher’s design builds upon the success of the TIE bomber, adding shielding, a second bomb chute, and three additional ordnance pods, each equipped with a twin ion engine.</i>"""
        "DBS-32C":
           display_name: """DBS-32C"""
           text: """エンゲージメント・フェイズの開始時、君はカリキュレート・トークンを1つ消費し、%COORDINATE%アクションを実行しても良い。君は<strong>Networked Calculations</strong>宇宙船能力を持っていない宇宙船をコーディネートできない。 %LINEBREAK%<strong>Networked Calculation:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "DBS-404":
           display_name: """DBS-404"""
           text: """君が攻撃レンジ1で攻撃を実行する際、君は追加で1つダイスを<b>振らなければならない</b>。攻撃が命中した後、君は%CRIT%ダメージを1つ受ける。%LINEBREAK%<strong>Networked Calculation:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "DFS-081":
           display_name: """DFS-081"""
           text: """レンジ0-1の友軍宇宙船が防御する際、君はカリキュレート・トークンを1つ消費して、全ての%CRIT%の結果を%HIT%の結果に変更しても良い。%LINEBREAK%<strong>Networked Calculation:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "DFS-311":
           display_name: """DFS-311"""
           text: """エンゲージメント・フェイズの開始時、君はレンジ0-3の他の友軍宇宙船に君のカリキュレート・トークンを1つ転送しても良い。%LINEBREAK%<strong>Networked Calculation:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Dace Bonearm":
           display_name: """Dace Bonearm"""
           text: """レンジ0-3の敵宇宙船が1つ以上のイオン・トークンを受け取った後、君は%CHARGE%を3つ消費しても良い。もしそうするなら、その宇宙船は追加で2つイオン・トークンを得る。"""
        "Dalan Oberos (StarViper)":
           display_name: """Dalan Oberos"""
           text: """君がマニューバを完全に実行した後、君はストレス・トークンを1つ受け取り、君の宇宙船を90度回転させても良い。%LINEBREAK%<strong>Microthrusters:</strong> 君がバレル・ロールを実行する際、君は%STRAIGHT%テンプレートの代わりに%BANKLEFT%あるいは%BANKRIGHT%テンプレートを<b>使用しなければならない</b>。"""
        "Dalan Oberos":
           display_name: """Dalan Oberos"""
           text: """エンゲージメント・フェイズの開始時、君は君の%BULLSEYEARC%内のシールド状態の宇宙船を1つ選び、%CHARGE%を1つ消費しても良い。もしそうするなら、その宇宙船はシールドを1つ失い、君はシールドを1つ回復する。%LINEBREAK%<strong>Dead to Rights:</strong> 君が攻撃を実行する際、もし防御者が君の%BULLSEYEARC%内にいるなら、防御ダイスは緑のトークンを使って修正できない。"""
        "Dark Courier":
           display_name: """Dark Courier"""
           text: """<i class = flavor_text>The vessel called the Scimitar was heavily modified, equipped with stealth technologies and advanced surveillance devices for infiltration and assassination missions.</i>"""
        "Darth Maul":
           display_name: """Darth Maul"""
           text: """君が攻撃を実行した後、君は違うターゲットに対しボーナスの主武装による攻撃を実行するために%FORCE%を2つ消費しても良い。もし君の攻撃が外れたなら、代わりに君は同じターゲットに対してボーナスの主武装による攻撃を実行しても良い。"""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """君がアクションを実行した後、君は%FORCE%を1つ消費して、アクションを実行しても良い。%LINEBREAK%<strong>Advanced Targeting Computer:</strong> 君がロックを持っている防御者に対し、君が主武装で攻撃を実行する際、君は攻撃ダイスを追加で1つ振り、%HIT%の結果1つを%CRIT%の結果に変更する。"""
        "Dash Rendar":
           display_name: """Dash Rendar"""
           text: """君が移動する際、君は障害物を無視する。%LINEBREAK%<strong>Sensor Blindspot:</strong> 君がレンジ0-1の主武装による攻撃を実行する際、レンジ0-1ボーナスを適用せず、攻撃ダイスを1つ少なく振る。"""
        "Del Meeko":
           display_name: """Del Meeko"""
           text: """レンジ0-2の友軍宇宙船がダメージ状態の攻撃者から防御する際、防御者は防御ダイスを1つ振り直しても良い。"""
        "Delta Squadron Pilot":
           display_name: """Delta Squadron Pilot"""
           text: """<i class = flavor_text>In addition to its missile launchers and six wingtip laser cannons, the formidable TIE defender is equipped with deflector shields and a hyperdrive.</i>%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Dengar":
           display_name: """Dengar"""
           text: """君が防御した後、攻撃者が%FRONTARC%内にいるなら、君は%CHARGE%を1つ消費して、攻撃者に対しボーナスの攻撃を実行しても良い。"""
        "Drea Renthal":
           display_name: """Drea Renthal"""
           text: """友軍の非制限宇宙船が攻撃を実行する際、もし防御者が君のファイアリング・アーク内にいるなら、攻撃者は攻撃ダイスを追加で1つ振る。"""
        "Edon Kappehl":
           display_name: """Edon Kappehl"""
           text: """君が青あるいは白のマニューバを完全に実行した後、もし君がこのラウンド、デバイスを投下あるいは射出していないなら、君はデバイスを1つ投下しても良い。"""
        "Edrio Two Tubes":
           display_name: """Edrio Two Tubes"""
           text: """君がアクティベートする前に、もし君がフォーカス状態なら、君はアクションを1つ実行しても良い。"""
        "Ello Asty":
           display_name: """Ello Asty"""
           text: """君が赤のタロン・ロール[%TROLLLEFT%あるいは%TROLLRIGHT%]マニューバを公開した後、もし君のストレス・トークンが2つ以下なら、そのマニューバを白として扱う。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Emon Azzameen":
           display_name: """Emon Azzameen"""
           text: """もし君が[1%STRAIGHT%]テンプレートを使用してデバイスを投下しようとする時、君は代わりに[3%TURNLEFT%]、[3%STRAIGHT%]あるいは[3%TURNRIGHT%]を使用しても良い。"""
        "Epsilon Squadron Cadet":
           display_name: """Epsilon Squadron Cadet"""
           text: """<i class = flavor_text>Trained from childhood aboard Resurgent-class Star Destroyers in deep space, many First Order TIE pilots have never even set foot on a planet’s surface.</i>"""
        "Esege Tuketu":
           display_name: """Esege Tuketu"""
           text: """レンジ0-2の友軍宇宙船が防御あるいは攻撃を実行する際、それは君のフォーカス・トークンを、自分が持っているかのように消費しても良い。"""
        "Evaan Verlaine":
           display_name: """Evaan Verlaine"""
           text: """エンゲージメント・フェイズの開始時、君はフォーカス・トークンを1つ消費し、レンジ0-1の友軍宇宙船を1つ選んでも良い。もしそうするなら、その宇宙船はラウンド終了まで、防御時に防御ダイスを追加で1つ振る。"""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """君が防御するか攻撃を実行する際、もし君がストレス状態なら、君は%FORCE%を1つ消費して、2つまでの%FOCUS%の結果を%EVADE%あるいは%HIT%の結果に変更しても良い。%LINEBREAK%<strong>Locked and Loaded:</strong> 君がドックされている際、君のキャリア宇宙船が主武装の%FRONTARC%あるいは%SINGLETURRETARC%による攻撃を実行した後、その宇宙船はボーナスの主武装の%REARARC%攻撃を実行しても良い。"""
        "Ezra Bridger (Sheathipede)":
           display_name: """Ezra Bridger"""
           text: """君が防御するか攻撃を実行する際、もし君がストレス状態なら、君は%FORCE%を1つ消費して、2つまでの%FOCUS%の結果を%EVADE%あるいは%HIT%の結果に変更しても良い。%LINEBREAK%<strong>Comms Shuttle:</strong> 君がドックされている際、君のキャリア宇宙船は%COORDINATE%を得る。君のキャリア宇宙船のアクティベートの前に、それは%COORDINATE%アクションを実行しても良い。"""
        "Ezra Bridger (TIE Fighter)":
           display_name: """Ezra Bridger"""
           text: """君が防御するか攻撃を実行する際、もし君がストレス状態なら、君は%FORCE%を1つ消費して、2つまでの%FOCUS%の結果を%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Feethan Ottraw Autopilot":
           display_name: """Feethan Ottraw Autopilot"""
           text: """<i class = flavor_text>Unlike the more disposable fighters it also built for the Separatists, Feethan Ottraw Scalable Assemblies designed the Belbullab-22 with a solid mix of firepower, durability, and speed.</i>"""
        "Fenn Rau (Sheathipede)":
           display_name: """Fenn Rau"""
           text: """君のファイアリング・アーク内の敵宇宙船がエンゲージする前、もし君がストレス状態でなければ、君はストレス・トークンを1つ得ても良い。もしそうするなら、その宇宙船はこのフェイズの間攻撃を実行する際、トークンを消費してダイスを修正することができない。%LINEBREAK%<strong>Comms Shuttle:</strong> 君がドックされている際、君のキャリア宇宙船は%COORDINATE%を得る。君のキャリア宇宙船のアクティベートの前に、それは%COORDINATE%アクションを実行しても良い。"""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """君が防御するか攻撃を実行する際、もし攻撃レンジが1なら、君はダイスを1つ多く振っても良い。%LINEBREAK%<strong>Concordia Faceoff:</strong> 君が防御する際、もし攻撃レンジが1であり、君が攻撃者の%FRONTARC%内にいるとき、結果の1つを%EVADE%に変更する。"""
        "Finch Dallow":
           display_name: """Finch Dallow"""
           text: """君が爆弾を投下しようとする前に、君はそれを代わりにプレイ・エリア内の君に接触する場所に置いても良い。"""
        "First Order Test Pilot":
           display_name: """First Order Test Pilot"""
           text: """<i class = flavor_text>Engineered for incredible speed and precise handling, the TIE Silencer is devastating in the hands of those who can unlock its full potential. Any lesser pilot could easily be overwhelmed and lose control of the nimble craft. </i>%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        "Foreman Proach":
           display_name: """Foreman Proach"""
           text: """君のエンゲージする前に、君は君の%BULLSEYEARC%レンジ1-2の敵宇宙船を1つ選び、武装解除トークンを1つ得ても良い。もしそうするなら、その宇宙船はトラクター・トークンを1つ得る。%LINEBREAK%<strong>Notched Stabilizer:</strong> 君が移動する際、君はアステロイドを無視する。"""
        "Freighter Captain":
           display_name: """Freighter Captain"""
           text: """<i class = flavor_text>Many spacers make a living traveling the Outer Rim, where the difference between smuggler and legitimate merchant is often murky. On the outskirts of civilization, buyers are rarely so discerning to ask where merchandise came from, at least as long as the price is low enough.</i>"""
        "Gamma Squadron Ace":
           display_name: """Gamma Squadron Ace"""
           text: """<i class = flavor_text>Though it sacrifices a degree of speed and maneuverability compared to a TIE/ln, the TIE bomber’s increased payload can carry enough firepower to destroy virtually any enemy target.</i> %LINEBREAK%<strong>Nimble Bomber:</strong> もし君が%STRAIGHT%テンプレートを使ってデバイスを投下する時、君は代わりに同じ速度の%BANKLEFT%あるいは%BANKRIGHT%テンプレートを使用しても良い。"""
        "Gand Findsman":
           display_name: """Gand Findsman"""
           text: """<i class = flavor_text>The legendary Findsmen of Gand worship the enshrouding mists of their home planet, using signs, augurs, and mystical rituals to track their quarry.</i>"""
        "Garven Dreis (X-Wing)":
           display_name: """Garven Dreis"""
           text: """君がフォーカス・トークンを消費した後、君はレンジ1-3の友軍宇宙船を1つ選んでも良い。その宇宙船はフォーカス・トークンを1つ得る。"""
        "Garven Dreis":
           display_name: """Garven Dreis"""
           text: """君がフォーカス・トークンを消費した後、君はレンジ1-3の友軍宇宙船を1つ選んでも良い。その宇宙船はフォーカス・トークンを1つ得る。"""
        "Gavin Darklighter":
           display_name: """Gavin Darklighter"""
           text: """友軍宇宙船が攻撃を実行する際、もし防御者が君の%FRONTARC%の中にいるなら、攻撃者は%HIT%の結果1つを%CRIT%の結果に変更しても良い。%LINEBREAK%<strong>Experimental Scanners:<\strong> 君はレンジ3を越えてロックを得ることができる。君はレンジ1のロックを得ることができない。"""
        "General Grievous":
           display_name: """General Grievous"""
           text: """君が主武装による攻撃を実行する際、もし君が防御者のファイアリング・アーク内にいないなら、君は攻撃ダイスを2つまで振り直しても良い。"""
        "Genesis Red":
           display_name: """Genesis Red"""
           text: """君がロックを得た後、君は君のフォーカスおよび回避トークンをすべて取り除かなければならない。その後、ロックした宇宙船が持っているのと同じ数のフォーカスおよび回避トークンを得る。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Gideon Hask":
           display_name: """Gideon Hask"""
           text: """君がダメージ状態の防御者に攻撃を実行する際、攻撃ダイスを追加で1つ振る。"""
        "Gold Squadron Trooper":
           display_name: """Gold Squadron Trooper"""
           text: """<i class = flavor_text>The V-19 Torrent starfighter was designed to be a light escort to nimble Delta-7 interceptors flown by Jedi Knights, and has a unique flight profile to reflect this role.</i>"""
        "Gold Squadron Veteran":
           display_name: """Gold Squadron Veteran"""
           text: """<i class = flavor_text>Commanded by Jon “Dutch” Vander, Gold Squadron played an instrumental role in the Battles of Scarif and Yavin.</i>"""
        "Grand Inquisitor":
           display_name: """Grand Inquisitor"""
           text: """君が攻撃レンジ1からでの防御の際、君は%FORCE%を1つ消費し、レンジ1ボーナスを適用させなくても良い。%LINEBREAK%君が攻撃レンジ2-3の防御者に対して攻撃を実行する際、君は%FORCE%を1つ消費し、レンジ1ボーナスを適用しても良い。"""
        "Gray Squadron Bomber":
           display_name: """Gray Squadron Bomber"""
           text: """<i class = flavor_text>Long after the Y-wing was phased out by the Galactic Empire, its durability, dependability, and heavy armament help it remain a staple in the Rebel fleet.</i>"""
        "Graz":
           display_name: """Graz"""
           text: """君が防御する際、もし君が攻撃者の背後にいるなら、防御ダイスを追加で1つ振る。%LINEBREAK%君が攻撃を実行する際、もし君が防御者の背後にいるなら、君は攻撃ダイスを追加で1つ振る。"""
        "Green Squadron Expert":
           display_name: """Green Squadron Expert"""
           text: """<i class = flavor_text>Years of field-expedient modifications were standardized in the RZ-2 design, but daring pilots see the ship’s improved reliability as a challenge to further push the limits of its performance.</i>%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> 君は君の%SINGLETURRETARC%インジケーターを%FRONTARC%あるいは%REARARC%にのみ回転できる。君がアクションを実行した後、君は赤の%BOOST%あるいは赤の%ROTATEARC%アクションを実行しても良い。"""
        "Green Squadron Pilot":
           display_name: """Green Squadron Pilot"""
           text: """<i class = flavor_text>Due to its sensitive controls and high maneuverability, only the most talented pilots belong in an A-wing cockpit.</i>%LINEBREAK%<strong>Vectored Thrusters:</strong> 君がアクションを実行した後、君は赤の%BOOST%アクションを実行しても良い。"""
        "Greer Sonnel":
           display_name: """Greer Sonnel"""
           text: """君がマニューバを完全に実行した後、君は君の%SINGLETURRETARC%をローテートしても良い。%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> 君は君の%SINGLETURRETARC%インジケーターを%FRONTARC%あるいは%REARARC%にのみ回転できる。君がアクションを実行した後、君は赤の%BOOST%あるいは赤の%ROTATEARC%アクションを実行しても良い。"""
        "Guri":
           display_name: """Guri"""
           text: """エンゲージメント・フェイズの開始時、レンジ0-1に敵宇宙船が1つ以上いるなら、君はフォーカス・トークンを1つ得ても良い。%LINEBREAK%<strong>Microthrusters:</strong> 君がバレル・ロールを実行する際、君は%STRAIGHT%テンプレートの代わりに%BANKLEFT%あるいは%BANKRIGHT%テンプレートを<b>使用しなければならない</b>。"""
        "Han Solo":
           display_name: """Han Solo"""
           text: """君がダイスを振った後、もし君が障害物からレンジ0-1にいるなら、君は君のダイスをすべて振り直しても良い。これは他の効果の目的のための振り直しと見なさない。"""
        "Han Solo (Scum)":
           display_name: """Han Solo"""
           text: """君が防御するか主武装による攻撃を実行する際、もし攻撃が障害物に妨害されていれば、君はダイスを追加で1つ振っても良い。"""
        "Han Solo (Resistance)":
           display_name: """Han Solo"""
           text: """<b>セットアップ:</b> 君はプレイエリア内の、敵宇宙船からレンジ3よりも遠い位置ならどこにでも置くことができる。"""
        "Heff Tobber":
           display_name: """Heff Tobber"""
           text: """敵宇宙船がマニューバを実行した後、もしそれがレンジ0にいるなら、君はアクションを実行しても良い。"""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """君が赤か青のマニューバを公開した後、君は君のダイヤルを同じ難易度の違うマニューバにセットしても良い。%LINEBREAK%<strong>Locked and Loaded:</strong> 君がドックされている際、君のキャリア宇宙船が主武装の%FRONTARC%あるいは%SINGLETURRETARC%による攻撃を実行した後、その宇宙船はボーナスの主武装の%REARARC%攻撃を実行しても良い。"""
        "Hera Syndulla (VCX-100)":
           display_name: """Hera Syndulla"""
           text: """君が赤か青のマニューバを公開した後、君は君のダイヤルを同じ難易度の別のマニューバにセットしても良い。%LINEBREAK%<strong>Tail Gun:</strong> 君に宇宙船がドックされているなら、君は主武装の%REARARC%攻撃を、ドックされた宇宙船の主武装の%FRONTARC%攻撃値と同じ攻撃値で持つ。"""
        "Hired Gun":
           display_name: """Hired Gun"""
           text: """<i class = flavor_text>Just the mention of Imperial credits can bring a host of less-than-trustworthy individuals to your side.</i>"""
        "Horton Salm":
           display_name: """Horton Salm"""
           text: """君が攻撃を実行する際、君は防御者のレンジ0-1にいる他の友軍宇宙船につき攻撃ダイスを1つ振り直しても良い。"""
        "IG-88A":
           display_name: """IG-88A"""
           text: """エンゲージメント・フェイズの開始時、君はレンジ1-3の、アクション・バーに%CALCULATE%を持つ友軍宇宙船を選んでも良い。もしそうするなら、君のカリキュレート・トークンのうち1つをそれに転送する。%LINEBREAK%<strong>Advanced Droid Brain:<strong> 君が%CALCULATE%アクションを実行した後、カリキュレート・トークンを1つ得る。"""
        "IG-88B":
           display_name: """IG-88B"""
           text: """君が攻撃を実行しそれがミスした後、君はボーナスの%CANNON%攻撃を実行しても良い。%LINEBREAK%<strong>Advanced Droid Brain:<strong> 君が%CALCULATE%アクションを実行した後、カリキュレート・トークンを1つ得る。"""
        "IG-88C":
           display_name: """IG-88C"""
           text: """君が%BOOST%アクションを実行した後、君は%EVADE%アクションを実行しても良い。%LINEBREAK%<strong>Advanced Droid Brain:<strong> 君が%CALCULATE%アクションを実行した後、カリキュレート・トークンを1つ得る。"""
        "IG-88D":
           display_name: """IG-88D"""
           text: """君が[%SLOOPLEFT%3]または[%SLOOPRIGHT%3]を実行する際、代わりに同じ速度の別のテンプレートを使用しても良い。同じ向きの[%TURNLEFT%]または[%TURNRIGHT%]あるいは%STRAIGHT%テンプレート。%LINEBREAK%<strong>Advanced Droid Brain:<strong> 君が%CALCULATE%アクションを実行した後、カリキュレート・トークンを1つ得る。"""
        "Ibtisam":
           display_name: """Ibtisam"""
           text: """君がマニューバを完全に実行した後、もし君がストレス状態なら、君は攻撃ダイスを1つ振っても良い。%HIT%あるいは%CRIT%の結果なら、君はストレス・トークンを1つ取り除く。"""
        "Iden Versio":
           display_name: """Iden Versio"""
           text: """レンジ0-1の友軍のTIE/ln Fighterが1つ以上のダメージを受けようとする前に、君は%CHARGE%を1つ消費しても良い。もしそうするなら、そのダメージをなくす。"""
        "Imdaar Test Pilot":
           display_name: """Imdaar Test Pilot"""
           text: """<i class = flavor_text>The primary result of a hidden research facility on Imdaar Alpha, the TIE phantom achieves what many thought was impossible: a small starfighter equipped with an advanced cloaking device.</i>%LINEBREAK%<strong>Stygium Array:</strong> 君がデクロークした後、君は%EVADE%アクションを実行しても良い。終了フェイズの開始時、君は回避トークンを1つ消費してクローク・トークンを1つ得ても良い。"""
        "Inaldra":
           display_name: """Inaldra"""
           text: """君が防御するか攻撃を実行する際、君は%HIT%ダメージを1つ受け、任意の数のダイスを振り直しても良い。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Inquisitor":
           display_name: """Inquisitor"""
           text: """<i class = flavor_text>The fearsome Inquisitors are given a great deal of autonomy and access to the Empire’s latest technology, like the prototype TIE Advanced v1.</i>"""
        "Jake Farrell":
           display_name: """Jake Farrell"""
           text: """君が%BARRELROLL%あるいは%BOOST%アクションを実行した後、君はレンジ0-1の友軍宇宙船を選んでも良い。その宇宙船は%FOCUS%アクションを実行しても良い。%LINEBREAK%<strong>Vectored Thrusters:</strong> 君がアクションを実行した後、君は赤の%BOOST%アクションを実行しても良い。"""
        "Jakku Gunrunner":
           display_name: """Jakku Gunrunner"""
           text: """<i class = flavor_text>The Quadrijet transfer spacetug, commonly called a "Quadjumper," is nimble in space and atmosphere alike, making it popular among both smugglers and explorers.</i> %LINEBREAK%<strong>Spacetug Tractor Array:</strong> <b>アクション:</b> レンジ1の君の%FRONTARC%内の宇宙船を1つ選ぶ。その宇宙船はトラクター・トークンを1つ得るか、あるいは君の%BULLSEYEARC%内レンジ1にいるならトラクター・トークンを2つ得る。"""
        "Jan Ors":
           display_name: """Jan Ors"""
           text: """君のファイアリング・アーク内の友軍宇宙船が主武装による攻撃を実行する際、もし君がストレス状態でなければ、ストレス・トークンを1つ受け取っても良い。もしそうするなら、その宇宙船は攻撃ダイスを追加で1つ振る。"""
        "Jaycris Tubbs":
           display_name: """Jaycris Tubbs"""
           text: """君が青のマニューバを完全に実行した後、君はレンジ0-1の友軍宇宙船を1つ選んでも良い。もしそうするなら、その宇宙船はストレス・トークンを1つ取り除く。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Jedi Knight":
           display_name: """Jedi Knight"""
           text: """<i class = flavor_text>When the Clone Wars began, the Jedi Knights rallied to the cause of preserving the Republic, assuming command of legions of clone troopers and leading them in battle.</i>%LINEBREAK%<strong>Fine-tuned Controls:</strong> 君がマニューバを完全に実行した後、君は%FORCE%を1つ消費して、%BOOST%あるいは%BARRELROLL%アクションを実行しても良い。"""
        "Jek Porkins":
           display_name: """Jek Porkins"""
           text: """君がストレス・トークンを受け取った後、君は攻撃ダイスを1つ振り、それを取り除いても良い。%HIT%の結果なら、%HIT%ダメージを1つ受ける。"""
        "Jessika Pava":
           display_name: """Jessika Pava"""
           text: """君が防御するか攻撃を実行する際、君は%CHARGE%を1つあるいは君が装備した%ASTROMECH%の自動変化しない%CHARGE%を1つ消費して、レンジ0-1の他の友軍宇宙船につき1つまでダイスを振り直しても良い。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Joph Seastriker":
           display_name: """Joph Seastriker"""
           text: """君がシールドを1つ失った後、回避トークンを1つ得る。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Joy Rekkoff":
           display_name: """Joy Rekkoff"""
           text: """君が攻撃を実行する際、君は装備した%TORPEDO%アップグレードの%CHARGE%を1つ消費しても良い。もしそうするなら、防御者はダイスを1つ少なく振る。%LINEBREAK%<strong>Concordia Faceoff:</strong> 君が防御する際、もし攻撃レンジが1であり、君が攻撃者の%FRONTARC%内にいるとき、結果の1つを%EVADE%に変更する。"""
        "Kaa'to Leeachos":
           display_name: """Kaa’to Leeachos"""
           text: """エンゲージメント・フェイズの開始時、君はレンジ0-2の友軍宇宙船を1つ選んでも良い。もしそうするなら、その宇宙船から君に、フォーカスあるいは回避トークン1つを転送しても良い。"""
        "Kad Solus":
           display_name: """Kad Solus"""
           text: """君は赤のマニューバを完全に実行した後、フォーカス・トークンを2つ得る。%LINEBREAK%<strong>Concordia Faceoff:</strong> 君が防御する際、もし攻撃レンジが1であり、君が攻撃者の%FRONTARC%内にいるとき、結果の1つを%EVADE%に変更する。"""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """君のファイアリング・アーク内の友軍宇宙船が防御する際、君は%FORCE%を1つ消費しても良い。もしそうするなら、攻撃者は攻撃ダイスを1つ少なく振る。%LINEBREAK%<strong>Tail Gun:</strong> 君に宇宙船がドックされているなら、君は主武装の%REARARC%攻撃を、ドックされた宇宙船の主武装の%FRONTARC%攻撃値と同じ攻撃値で持つ。"""
        "Kare Kun":
           display_name: """Kare Kun"""
           text: """君がブーストする際、君は代わりに[1%TURNLEFT%]あるいは[1%TURNRIGHT%]テンプレートを使用しても良い。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Kashyyyk Defender":
           display_name: """Kashyyyk Defender"""
           text: """<i class = flavor_text>Equipped with three wide-range Sureggi twin laser cannons, the Auzituck gunship acts as a powerful deterrent to slaver operations in the Kashyyyk system.</i>"""
        "Kath Scarlet":
           display_name: """Kath Scarlet"""
           text: """君が主武装による攻撃を実行する際、防御者のレンジ0に友軍の非制限宇宙船が1つ以上いるなら、攻撃ダイスを1つ追加で振る。"""
        "Kavil":
           display_name: """Kavil"""
           text: """君が%FRONTARC%攻撃ではない攻撃を実行する際、君は攻撃ダイスを追加で1つ振る。"""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """エンゲージメント・フェイズの開始時、君はレンジ0-1の君の%FRONTARC%および%SINGLETURRETARC%の両方にいる宇宙船1つを選んでも良い。もしそうするなら、それはトラクター・トークンを1つ得る。"""
        "Knave Squadron Escort":
           display_name: """Knave Squadron Escort"""
           text: """<i class = flavor_text>Designed to combine the best features of the X-wing series with the A-wing series, the E-wing boasts superior firepower, speed, and maneuverability.</i>%LINEBREAK% <strong>Experimental Scanners:</strong> 君はレンジ3を越えてロックを得ることができる。君はレンジ1のロックを得ることができない。"""
        "Koshka Frost":
           display_name: """Koshka Frost"""
           text: """君が防御するか攻撃を実行する際、もし敵宇宙船がストレス状態なら、君は君のダイスを1つ振り直しても良い。"""
        "Krassis Trelix":
           display_name: """Krassis Trelix"""
           text: """君は君の%FRONTARC%の特殊攻撃を%REARARC%から実行することができる。%LINEBREAK%特殊攻撃を実行する際、君は攻撃ダイスを1つ振り直しても良い。"""
        "Kullbee Sperado":
           display_name: """Kullbee Sperado"""
           text: """君が%BARRELROLL%あるいは%BOOST%アクションを実行した後、君は君が装備した%CONFIGURATION%アップグレード・カードを裏返しても良い。"""
        "Kyle Katarn":
           display_name: """Kyle Katarn"""
           text: """エンゲージメント・フェイズの開始時、君は君のファイアリング・アーク内の友軍宇宙船に君のフォーカス・トークンを1つ転送しても良い。"""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """君が防御する際、君は%FORCE%を1つ消費し、<strong>I’ll Show You the Dark Side</strong>コンディションを攻撃者につけても良い。%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        "L3-37":
           display_name: """L3-37"""
           text: """もし君がシールド状態でなければ、君のバンク(%BANKLEFT%あるいは%BANKRIGHT%)マニューバの難易度が下がる。"""
        "L3-37 (Escape Craft)":
           display_name: """L3-37"""
           text: """もし君がシールド状態でなければ、君のバンク(%BANKLEFT%あるいは%BANKRIGHT%)マニューバの難易度が下がる。%LINEBREAK%<strong>Co-Pilot:</strong> 君がドックされている間、君をドックしている宇宙船は君のパイロット能力を元の能力と追加で得る。"""
        "Laetin A'shera":
           display_name: """Laetin A’shera"""
           text: """君が防御するか攻撃を実行する際、攻撃がミスしたなら、回避トークンを1つ得る。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """君が青のマニューバを完全に実行した後、君はレンジ0-3の友軍宇宙船を1つ選んでも良い。その宇宙船はアクションを実行しても良い。"""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian"""
           text: """君がダイスを振った後、もし君がストレス状態でなければ、君はストレス・トークンを1つ得て、全ての空白の結果を振り直しても良い。"""
        "Lando Calrissian (Scum) (Escape Craft)":
           display_name: """Lando Calrissian"""
           text: """君がダイスを振った後、もし君がストレス状態でなければ、君はストレス・トークンを1つ得て、全ての空白の結果を振り直しても良い。%LINEBREAK%<strong>Co-Pilot:</strong> 君がドックされている間、君をドックしている宇宙船は君のパイロット能力を元の能力と追加で得る。"""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """エンゲージメント・フェイズの開始時、君はレンジ1の宇宙船を1つ選び、君の持っているその宇宙船へのロックを消費しても良い。もしそうするなら、その宇宙船はトラクター・トークンを1つ得る。"""
        "Leevan Tenza":
           display_name: """Leevan Tenza"""
           text: """君が%BARRELROLL%あるいは%BOOST%アクションを実行した後、君は赤の%EVADE%アクションを実行しても良い。"""
        "Lieutenant Bastian":
           display_name: """Lieutenant Bastian"""
           text: """レンジ1-2の宇宙船がダメージ・カードを受け取った後、君はその宇宙船へのロックを得ても良い。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Lieutenant Blount":
           display_name: """Lieutenant Blount"""
           text: """君が主武装による攻撃を実行する際、防御者のレンジ0-1に他の友軍宇宙船が1つ以上いるなら、君は攻撃ダイスを追加で1つ振っても良い。"""
        "Lieutenant Dormitz":
           display_name: """Lieutenant Dormitz"""
           text: """<b>セットアップ:</b> 君が置かれた後、友軍の小型宇宙船を君からレンジ0-2のプレイ・エリアのどこでも置くことができる。%LINEBREAK%<strong>Linked Battery:</strong> 君が%CANNON%攻撃を実行する際、攻撃ダイスを追加で1つ振る。"""
        "Lieutenant Karsabi":
           display_name: """Lieutenant Karsabi"""
           text: """君が武装解除トークンを得た後、もし君がストレス状態でなければ、君はストレス・トークンを1つ受け取り武装解除トークンを取り除いても良い。"""
        "Lieutenant Kestal":
           display_name: """Lieutenant Kestal"""
           text: """君が攻撃を実行する際、防御者が防御ダイスを振った後、君はフォーカス・トークンを1つ消費し、防御者の全ての空白/%FOCUS%の結果をキャンセルしても良い。"""
        "Lieutenant Rivas":
           display_name: """Lieutenant Rivas"""
           text: """レンジ1-2の宇宙船が赤あるいはオレンジのトークンを得た後、もし君がその宇宙船へのロックを持っていなければ、君はその宇宙船へのロックを得ても良い。"""
        "Lieutenant Sai":
           display_name: """Lieutenant Sai"""
           text: """君が%COORDINATE%アクションをした後、君が選んだ宇宙船が君のアクション・バーのアクションをしたなら、君はそのアクションを実行しても良い。"""
        "Lieutenant Tavson":
           display_name: """Lieutenant Tavson"""
           text: """君がダメージを受けた後、君は%CHARGE%を1つ消費してアクションを実行しても良い。%LINEBREAK%<strong>Linked Battery:</strong> 君が%CANNON%攻撃を実行する際、攻撃ダイスを追加で1つ振る。"""
        "Lok Revenant":
           display_name: """Lok Revenant"""
           text: """<i class = flavor_text>The Nubian Design Collective crafted the Scurrg H-6 Bomber with combat versatility in mind, arming it with powerful shields and a bristling array of destructive weaponry.</i>"""
        "Lothal Rebel":
           display_name: """Lothal Rebel"""
           text: """<i class = flavor_text>Another successful Corellian Engineering Corporation freighter design, the VCX-100 is larger than the ubiquitous YT-series, boasting more living space and customizability.</i>%LINEBREAK%<strong>Tail Gun:</strong> 君に宇宙船がドックされているなら、君は主武装の%REARARC%攻撃を、ドックされた宇宙船の主武装の%FRONTARC%攻撃値と同じ攻撃値で持つ。"""
        "Lowhhrick":
           display_name: """Lowhhrick"""
           text: """レンジ0-1の友軍宇宙船が防御者になった後、君はリインフォース・トークンを1つ消費しても良い。もしそうするなら、その宇宙船は回避トークンを1つ得る。"""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """君が防御者になった後(ダイスを振る前に)、君は%FORCE%を1つ回復しても良い。"""
        "Luminara Unduli":
           display_name: """Luminara Unduli"""
           text: """レンジ0-2の友軍宇宙船が防御する際、それが攻撃者の%BULLSEYEARC%内にいないなら、君は%FORCE%を1つ消費しても良い。もしそうするなら、%CRIT%の結果1つを%HIT%の結果に変更するか、%HIT%の結果1つを%FOCUS%の結果に変更しても良い。%LINEBREAK%<strong>Fine-tuned Controls:</strong> 君がマニューバを完全に実行した後、君は%FORCE%を1つ消費して、%BOOST%あるいは%BARRELROLL%アクションを実行しても良い。"""
        "L'ulo L'ampar":
           display_name: """L’ulo L’ampar"""
           text: """君が防御するか主武装による攻撃を実行する際、もし君がストレス状態なら、君は防御ダイスを1つ少なく振るか、攻撃ダイスを1つ多く振るか<b>しなければならない</b>。%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> 君は君の%SINGLETURRETARC%インジケーターを%FRONTARC%あるいは%REARARC%にのみ回転できる。君がアクションを実行した後、君は赤の%BOOST%あるいは赤の%ROTATEARC%アクションを実行しても良い。"""
        "Maarek Stele":
           display_name: """Maarek Stele"""
           text: """君が攻撃を実行する際、もし防御者が表向きのダメージ・カードを受け取ろうとするなら、代わりに3枚ダメージ・カードを引き、1つ選び、残りを捨て札にする。%LINEBREAK%<strong>Advanced Targeting Computer:</strong> 君がロックを持っている防御者に対し、君が主武装で攻撃を実行する際、君は攻撃ダイスを追加で1つ振り、%HIT%の結果1つを%CRIT%の結果に変更する。"""
        "Mace Windu":
           display_name: """Mace Windu"""
           text: """君は赤のマニューバを完全に実行した後、%FORCE%を1つ回復する。%LINEBREAK%<strong>Fine-tuned Controls:</strong> 君がマニューバを完全に実行した後、君は%FORCE%を1つ消費して、%BOOST%あるいは%BARRELROLL%アクションを実行しても良い。"""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """レンジ0-2の友軍宇宙船の防御の際、攻撃者は攻撃ダイスを1つよりも多く振り直すことができない。"""
        "Major Rhymer":
           display_name: """Major Rhymer"""
           text: """君が%TORPEDO%あるいは%MISSILE%攻撃を実行する際、君はレンジ制限を0-3の範囲で1増やすか減らすかしても良い。%LINEBREAK%<strong>Nimble Bomber:</strong> もし君が%STRAIGHT%テンプレートを使ってデバイスを投下する時、君は代わりに同じ速度の%BANKLEFT%あるいは%BANKRIGHT%テンプレートを使用しても良い。"""
        "Major Stridan":
           display_name: """Major Stridan"""
           text: """君がコーディネートするか、君のアップグレードのうち1つの効果を解決する際、君はレンジ2-3の友軍宇宙船をレンジ0あるいはレンジ1にいると扱っても良い。%LINEBREAK%<strong>Linked Battery:</strong> 君が%CANNON%攻撃を実行する際、攻撃ダイスを追加で1つ振る。"""
        "Major Vermeil":
           display_name: """Major Vermeil"""
           text: """君が攻撃を実行する際、もし防御者が緑のトークンを全く持っていなければ、君は空白あるいは%FOCUS%の結果のうち1つを%HIT%の結果に変えても良い。%LINEBREAK%<strong>Adaptive Ailerons:</strong> 君が君のダイヤルを公開する前に、君がストレス状態でなければ、君は白の[1%BANKLEFT%][1%STRAIGHT%]あるいは[1%BANKRIGHT%]を<b>行わなければならない</b>。"""
        "Major Vynder":
           display_name: """Major Vynder"""
           text: """君が防御する際、もし君が武装解除状態なら、防御ダイスを追加で1つ振る。"""
        "Manaroo":
           display_name: """Manaroo"""
           text: """エンゲージメント・フェイズの開始時、君はレンジ0-1の友軍宇宙船を1つ選んでも良い。もしそうするなら、その宇宙船に君につけられているすべての緑のトークンを転送する。"""
        "Mining Guild Sentry":
           display_name: """Mining Guild Sentry"""
           text: """<i class = flavor_text>As part of its arrangement with the Empire, the Mining Guild receives modified TIE/ln Fighters to protect its operations. These craft have solar panels removed from their stabilizers for improved visibility, and feature more extensive life support systems for the benefit of their corporate pilots.</i>%LINEBREAK%<strong>Notched Stabilizers:</strong> 君が移動する際、君はアステロイドを無視する。"""
        "Mining Guild Surveyor":
           display_name: """Mining Guild Surveyor"""
           text: """<i class = flavor_text>With Imperial construction projects consuming raw materials at an unprecedented rate, the Mining Guild ruthlessly exploits newly discovered deposits of doonium ore on worlds such as Batonn, Lothal, and Umbara.</i>%LINEBREAK%<strong>Notched Stabilizers:</strong> 君が移動する際、君はアステロイドを無視する。"""
        "Miranda Doni":
           display_name: """Miranda Doni"""
           text: """君が主武装による攻撃を実行する際、君はシールドを1つ消費して攻撃ダイスを1つ多く振るか、もしシールドがなければ、君は攻撃ダイスを1つ少なく振ってシールドを1つ回復しても良い。"""
        "Moralo Eval":
           display_name: """Moralo Eval"""
           text: """もし君が逃走しようとする時、君は%CHARGE%を1つ消費しても良い。もしそうするなら、代わりに君自身を予備の位置に置く。次のプランニング・フェイズの開始時、君が逃走したプレイエリアの端のレンジ1に君自身を置く。"""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """君がストレス・トークンを得た後、もし敵宇宙船が君の%FRONTARC%レンジ0-1にいるなら、君はそのストレス・トークンを取り除いても良い。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Norra Wexley (Y-Wing)":
           display_name: """Norra Wexley"""
           text: """君が防御する際、もしレンジ0-1に敵宇宙船がいるなら、君のダイスの結果に%EVADE%を1つ追加する。"""
        "Norra Wexley":
           display_name: """Norra Wexley"""
           text: """君が防御する際、敵宇宙船がレンジ0-1にいるなら、君は君のダイスの結果に%EVADE%を1つ追加する。"""
        "Nu Squadron Pilot":
           display_name: """Nu Squadron Pilot"""
           text: """<i class = flavor_text>With a design inspired by other Cygnus Spaceworks vessels, the Alpha-class star wing is a versatile craft assigned to Imperial Navy specialist units that need a starfighter they can outfit for multiple roles.</i>"""
        "N'dru Suhlak":
           display_name: """N’dru Suhlak"""
           text: """君が主武装による攻撃を実行する際、レンジ0-2に他の友軍宇宙船がいなければ、攻撃ダイスを追加で1つ振る。"""
        "Obi-Wan Kenobi":
           display_name: """Obi-Wan Kenobi"""
           text: """レンジ0-2の友軍宇宙船がフォーカス・トークンを消費した後、君は%FORCE%を1つ消費しても良い。もしそうするなら、その宇宙船はフォーカス・トークンを1つ得る。%LINEBREAK%<strong>Fine-tuned Controls:</strong> 君がマニューバを完全に実行した後、君は%FORCE%を1つ消費して、%BOOST%あるいは%BARRELROLL%アクションを実行しても良い。"""
        "Obsidian Squadron Pilot":
           display_name: """Obsidian Squadron Pilot"""
           text: """<i class = flavor_text>The TIE fighter’s Twin Ion Engine system was designed for speed, making the TIE/ln one of the most maneuverable starships ever mass-produced.</i>"""
        "Old Teroch":
           display_name: """Old Teroch"""
           text: """エンゲージメント・フェイズの開始時、君はレンジ1の敵宇宙船を1つ選んでも良い。もしそうして、君がそれの%FRONTARC%内にいるなら、それの緑のトークンを全て取り除く。%LINEBREAK%<strong>Concordia Faceoff:</strong> 君が防御する際、もし攻撃レンジが1であり、君が攻撃者の%FRONTARC%内にいるとき、結果の1つを%EVADE%に変更する。"""
        "Omega Squadron Ace":
           display_name: """Omega Squadron Ace"""
           text: """<i class = flavor_text>Only pilots who have demonstrated both exceptional skill and unwavering dedication are rewarded with coveted positions in the First Order squadrons operating secretly against the New Republic during the Cold War.</i>"""
        "Omega Squadron Expert":
           display_name: """Omega Squadron Expert"""
           text: """<i class = flavor_text>The TIE/sf is a versatile starfighter that carries specialized armament and experimental systems for long-range operations by First Order Special Forces.</i>%LINEBREAK%<strong>Heavy Weapon Turret:</strong> 君は%SINGLETURRETARC%インジケーターを%FRONTARC%か%REARARC%にだけローテートすることができる。君は装備した%MISSILE%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない。</b>"""
        "Omicron Group Pilot":
           display_name: """Omicron Group Pilot"""
           text: """<i class = flavor_text>Noted for its tri-wing design and advanced sensor suite, the Lambda-class shuttle serves a critical role as a light utility craft in the Imperial Navy.</i>"""
        "Onyx Squadron Ace":
           display_name: """Onyx Squadron Ace"""
           text: """<i class = flavor_text>The experimental TIE defender outclasses all other contemporary starfighters, though its size, speed, and array of weapons come at a tremendous cost in credits.</i>%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Onyx Squadron Scout":
           display_name: """Onyx Squadron Scout"""
           text: """<i class = flavor_text>Designed for extended engagements, the TIE/ag is flown primarily by elite pilots trained to leverage both its unique weapons loadout and its maneuverability to full effect.</i>"""
        "Outer Rim Pioneer":
           display_name: """Outer Rim Pioneer"""
           text: """レンジ0-1の友軍宇宙船は障害物からレンジ0でも攻撃を実行することができる。%LINEBREAK%<strong>Co-Pilot:</strong> 君がドックされている間、君をドックしている宇宙船は君のパイロット能力を元の能力と追加で得る。"""
        "Outer Rim Smuggler":
           display_name: """Outer Rim Smuggler"""
           text: """<i class = flavor_text>Known for its durability and modular design, the YT-1300 is one of the most popular, widely used, and extensively customized freighters in the galaxy.</i>"""
        "Overseer Yushyn":
           display_name: """Overseer Yushyn"""
           text: """レンジ1の友軍宇宙船が武装解除トークンを得ようとする前に、もしその宇宙船がストレス状態でなければ、君は%CHARGE%を1つ消費しても良い。もしそうするなら、その宇宙船はストレス・トークンを代わりに1つ得る。%LINEBREAK%<strong>Notched Stabilizers:</strong> 君が移動する際、君はアステロイドを無視する。"""
        "Padmé Amidala":
           display_name: """Padmé Amidala"""
           text: """君の%FRONTARC%内にいる敵宇宙船が防御あるいは攻撃を実行する際、その宇宙船は%FOCUS%の結果を1つだけ修正できる。(他の結果は修正できる)%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Palob Godalhi":
           display_name: """Palob Godalhi"""
           text: """エンゲージメント・フェイズの開始時、君は君のファイアリング・アーク内のレンジ0-2の敵宇宙船を1つ選んでも良い。もしそうするなら、その宇宙船から君自身にフォーカスあるいは回避トークンを1つ転送する。"""
        "Pammich Nerro Goode":
           text: """君のストレス・トークンが2つ以下の際、君はストレス状態でも赤のマニューバを実行しても良い。"""
        "Partisan Renegade":
           display_name: """Partisan Renegade"""
           text: """<i class = flavor_text>Saw Gerrera’s partisans were first established to oppose Separatist forces on Onderon during the Clone Wars, and continued to wage war against galactic tyranny as the Empire rose to power.</i>"""
        "Patrol Leader":
           display_name: """Patrol Leader"""
           text: """<i class = flavor_text>To be granted command of a VT-49 Decimator is seen as a significant promotion for a middling officer of the Imperial Navy.</i>"""
        "Petty Officer Thanisson":
           display_name: """Petty Officer Thanisson"""
           text: """アクティベーションあるいはエンゲージメント・フェイズの間、君の%FRONTARC%内レンジ0-2の宇宙船がストレス・トークンを1つ得た後、君は%CHARGE%を1つ消費しても良い。もしそうするなら、その宇宙船はトラクター・トークンを1つ得る。%LINEBREAK%<strong>Linked Battery:</strong> 君が%CANNON%攻撃を実行する際、攻撃ダイスを追加で1つ振る。"""
        "Phoenix Squadron Pilot":
           display_name: """Phoenix Squadron Pilot"""
           text: """<i class = flavor_text>Led by Commander Jun Sato, the brave but inexperienced pilots of Phoenix Squadron face staggering odds in their battle against the Galactic Empire.</i>%LINEBREAK%<strong>Vectored Thrusters:</strong> 君がアクションを実行した後、君は赤の%BOOST%アクションを実行しても良い。"""
        "Planetary Sentinel":
           display_name: """Planetary Sentinel"""
           text: """<i class = flavor_text>To protect its many military installations, the Empire requires a swift and vigilant defense force.</i>%LINEBREAK% <strong>Adaptive Ailerons:</strong> 君が君のダイヤルを公開する前に、もし君がストレス状態でなければ、君は白の[1%BANKLEFT%][1%STRAIGHT%]あるいは[1%BANKRIGHT%]を<b>行わなければならない</b>。"""
        "Plo Koon":
           display_name: """Plo Koon"""
           text: """エンゲージメント・フェイズの開始時、君は%FORCE%を1つ消費し、レンジ0-2の他の友軍宇宙船を選んでも良い。もしそうするなら、君はその宇宙船に緑のトークンを1つ転送するか、その宇宙船から君にオレンジのトークン1つを転送しても良い。%LINEBREAK%<strong>Fine-tuned Controls:</strong> 君がマニューバを完全に実行した後、君は%FORCE%を1つ消費して、%BOOST%あるいは%BARRELROLL%アクションを実行しても良い。"""
        "Poe Dameron":
           display_name: """Poe Dameron"""
           text: """君がアクションを実行した後、君は白のアクションを、それを赤と扱って実行するために%CHARGE%を1つ消費しても良い。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Prince Xizor":
           display_name: """Prince Xizor"""
           text: """君が防御する際、結果の相殺ステップの後に、レンジ0-1でその攻撃アーク内にいる他の友軍宇宙船は%HIT%あるいは%CRIT%ダメージを1つ受けても良い。もしそうするなら、一致する結果を1つキャンセルする。%LINEBREAK%<strong>Microthrusters:</strong> 君がバレル・ロールを実行する際、君は%STRAIGHT%テンプレートの代わりに%BANKLEFT%あるいは%BANKRIGHT%テンプレートを<b>使用しなければならない<\b>。"""
        "Quinn Jast":
           display_name: """Quinn Jast"""
           text: """エンゲージメント・フェイズの開始時、君は武装解除トークンを1つ得、君の装備したアップグレードのうちの1つの上にある%CHARGE%トークンを1つ回復させても良い。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Rear Admiral Chiraneau":
           display_name: """Rear Admiral Chiraneau"""
           text: """君が攻撃を実行する際、もし君がリインフォース状態で、防御者が君のリインフォース・トークンと一致する%FULLFRONTARC%あるいは%FULLREARARC%にいるなら、君は君の%FOCUS%の結果のうち1つを、%CRIT%の結果に変更しても良い。"""
        "Rebel Scout":
           display_name: """Rebel Scout"""
           text: """<i class = flavor_text>Designed to look like a bird in flight by the Corellian Engineering Corporation, “hawk” series ships are exemplary transport craft. Swift and rugged, the HWK-290 is often employed by Rebel agents as a mobile base of operations.</i>"""
        "Red Squadron Expert":
           display_name: """Red Squadron Expert"""
           text: """<i class = flavor_text>Although the bulk of the Resistance Starfighter Corps is made up of young volunteers from the New Republic, their ranks are bolstered by veterans of the Galactic Civil War determined to finish what they started decades ago.</i>%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Red Squadron Veteran":
           display_name: """Red Squadron Veteran"""
           text: """<i class = flavor_text>Created as an elite starfighter squad, Red Squadron includes some of the best pilots in the Rebel Alliance.</i>"""
        "Resistance Sympathizer":
           display_name: """Resistance Sympathizer"""
           text: """<i class = flavor_text>After witnessing the Hosnian Cataclysm, some spacers willingly aided the Resistance with whatever ships they had.</i>"""
        "Rexler Brath":
           display_name: """Rexler Brath"""
           text: """君が攻撃を実行し、それが命中した後、もし君が回避状態なら、防御者のダメージ・カードのうち1枚をエクスポーズする。%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Rey":
           display_name: """Rey"""
           text: """君が防御するか攻撃を実行する際、もしその敵宇宙船が君の%FRONTARC%内にいるなら、君は%FORCE%を1つ消費し、君の空白の結果1つを%EVADE%あるいは%HIT%に変更しても良い。"""
        "Rho Squadron Pilot":
           display_name: """Rho Squadron Pilot"""
           text: """<i class = flavor_text>The elite pilots of Rho Squadron instill terror in the Rebellion, using both the Xg-1 assault configuration and Os-1 arsenal loadout of the Alpha-class star wing to devastating effect.</i>"""
        "Roark Garnet":
           display_name: """Roark Garnet"""
           text: """エンゲージメント・フェイスの開始時、君は君のファイアリング・アーク内の宇宙船を1つ選んでも良い。もしそうするなら、その宇宙船はこのフェイズ、標準のイニシアチブ値の代わりにイニシアチブ7でエンゲージする。"""
        "Rogue Squadron Escort":
           display_name: """Rogue Squadron Escort"""
           text: """<i class = flavor_text>The elite pilots of Rogue Squadron are among the Rebellion’s very best.</i> %LINEBREAK% <strong>Experimental Scanners:</strong> 君はレンジ3を越えてロックを得ることができる。君はレンジ1のロックを得ることができない。"""
        "Rose Tico":
           text: """君が防御するか攻撃を実行する際、君は君の結果をその攻撃アーク内の他の友軍宇宙船ごとに1つまで振り直しても良い。"""
        "Saber Squadron Ace":
           display_name: """Saber Squadron Ace"""
           text: """<i class = flavor_text>Led by Baron Soontir Fel, the pilots of Saber Squadron are among the Empire’s best. Their TIE interceptors are marked with red stripes to designate pilots with at least ten confirmed kills. </i> %LINEBREAK%  <strong> Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """君がアクティベートする前に、君は%BARRELROLL%あるいは%BOOST%アクションを実行しても良い。%LINEBREAK%<strong>Locked and Loaded:</strong> 君がドックされている際、君のキャリア宇宙船が主武装の%FRONTARC%あるいは%SINGLETURRETARC%による攻撃を実行した後、その宇宙船はボーナスの主武装の%REARARC%攻撃を実行しても良い。"""
        "Sabine Wren (TIE Fighter)":
           display_name: """Sabine Wren"""
           text: """君がアクティベートする前に、君は%BARRELROLL%あるいは%BOOST%アクションを実行しても良い。"""
        "Sabine Wren (Scum)":
           display_name: """Sabine Wren"""
           text: """君が防御する際、もし攻撃者が君の%SINGLETURRETARC%内レンジ0-2にいるなら、君は君のダイスの結果に%FOCUS%の結果を1つ追加しても良い。"""
        "Saesee Tiin":
           display_name: """Saesee Tiin"""
           text: """レンジ0-2の友軍宇宙船がそのダイヤルを公開した後、君は%FORCE%を1つ消費しても良い。もしそうするなら、それのダイヤルを同じ速度で同じ難易度の別のマニューバにセットする。%LINEBREAK%<strong>Fine-tuned Controls:</strong> 君がマニューバを完全に実行した後、君は%FORCE%を1つ消費して、%BOOST%あるいは%BARRELROLL%アクションを実行しても良い。"""
        "Sarco Plank":
           display_name: """Sarco Plank"""
           text: """君が防御する際、君は君の敏捷値を、このラウンド君が実行したマニューバの速度と同じ値として扱っても良い。%LINEBREAK%<strong>Spacetug Tractor Array:</strong> <b>アクション:</b> レンジ1の君の%FRONTARC%内の宇宙船を1つ選ぶ。その宇宙船はトラクター・トークンを1つ得るか、あるいは君の%BULLSEYEARC%内レンジ1にいるならトラクター・トークンを2つ得る。"""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """レンジ0-3のダメージ状態の友軍宇宙船が攻撃を実行する際、それは攻撃ダイスを1つ振り直しても良い。"""
        "Scarif Base Pilot":
           display_name: """Scarif Base Pilot"""
           text: """<i class = flavor_text>The TIE reaper was designed to ferry elite troops to flashpoints on the battlefield, notably carrying Director Krennic’s dreaded death troopers at the Battle of Scarif.</i>%LINEBREAK%<strong>Adaptive Ailerons:</strong> 君が君のダイヤルを公開する前に、もし君がストレス状態でなければ、君は白の[1%BANKLEFT%][1%STRAIGHT%]あるいは[1%BANKRIGHT%]を<b>行わなければならない。</b>"""
        "Scimitar Squadron Pilot":
           display_name: """Scimitar Squadron Pilot"""
           text: """<i class = flavor_text>The TIE/sa is exceptionally nimble for a bomber, allowing it to pinpoint its target while avoiding excessive collateral damage to the surrounding area.</i> %LINEBREAK%<strong>Nimble Bomber:</strong> もし君が%STRAIGHT%テンプレートを使ってデバイスを投下する時、君は代わりに同じ速度の%BANKLEFT%あるいは%BANKRIGHT%テンプレートを使用しても良い。"""
        "Separatist Bomber":
           display_name: """Separatist Bomber"""
           text: """<i class = flavor_text>The droid armies of the Separatists are callous to the plight of civilians and make no effort to limit collateral damage.</i>%LINEBREAK%<strong>Networked Calculations:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Separatist Drone":
           display_name: """Separatist Drone"""
           text: """<i class = flavor_text>As the Clone Wars escalate, the Separatist Alliance continues to develop the technology of droid starfighters, as well as the tactical droids that command them.</i>%LINEBREAK%<strong>Networked Calculations:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Serissu":
           display_name: """Serissu"""
           text: """レンジ0-1の友軍宇宙船が防御する際、それはそのダイスのうち1つを振り直しても良い。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Seventh Sister":
           display_name: """Seventh Sister"""
           text: """君が主武装による攻撃を実行する際、結果の相殺ステップの前に、%FORCE%を2つ消費して、%EVADE%の結果を1つキャンセルしても良い。"""
        "Seyn Marana":
           display_name: """Seyn Marana"""
           text: """君が攻撃を実行する際、君は%CRIT%の結果を1つ消費しても良い。もしそうするなら、防御者は表向きのダメージ・カードを1枚受け取り、その後君の残った結果をすべてキャンセルする。"""
        "Shadowport Hunter":
           display_name: """Shadowport Hunter"""
           text: """<i class = flavor_text>Crime syndicates augment the lethal skills of their loyal contractors with the best technology available, like the fast and formidable Lancer-class pursuit craft.</i>"""
        "Shara Bey":
           display_name: """Shara Bey"""
           text: """君が防御するか主武装による攻撃を実行する際、君はその敵へのロックを1つ消費して、君のダイスの結果に%FOCUS%を1つ追加しても良い。"""
        "Sienar Specialist":
           display_name: """Sienar Specialist"""
           text: """<i class = flavor_text>During the development of the TIE aggressor, Sienar Fleet Systems valued performance and versatility over raw cost efficiency.</i>"""
        "Sienar-Jaemus Engineer":
           display_name: """Sienar-Jaemus Engineer"""
           text: """<i class = flavor_text>Developed by Sienar-Jaemus Fleet Systems as a successor to the vaunted TIE Defender, the TIE/vn Silencer incorporates bleeding-edge technologies developed at research facilities hidden in the Unknown Regions.</i>%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        "Sigma Squadron Ace":
           display_name: """Sigma Squadron Ace"""
           text: """<i class = flavor_text>Featuring a hyperdrive and shields, the TIE phantom is also equipped with five laser cannons, giving it substantial firepower for an Imperial fighter.</i>%LINEBREAK%<strong>Stygium Array:</strong> 君がデクロークした後、君は%EVADE%アクションを実行しても良い。終了フェイズの開始時、君は回避トークンを1つ消費してクローク・トークンを1つ得ても良い。"""
        "Skakoan Ace":
           display_name: """Skakoan Ace"""
           text: """<i class = flavor_text>With its powerful engines, devastating triple laser cannons, and high customizability, the Belbullab-22 is the chosen craft of several elite Separatist Alliance pilots, including the infamous General Grievous.</i>"""
        "Skull Squadron Pilot":
           display_name: """Skull Squadron Pilot"""
           text: """<i class = flavor_text>The aces of Skull Squadron favor an aggressive approach, using their craft’s pivot wing technology to achieve unmatched agility in the pursuit of their quarry.</i> %LINEBREAK% <strong>Concordia Faceoff:</strong> 君が防御する際、もし攻撃レンジが1であり、君が攻撃者の%FRONTARC%内にいるとき、結果の1つを%EVADE%に変更する。"""
        "Sol Sixxa":
           display_name: """Sol Sixxa"""
           text: """もし君が[1%STRAIGHT%]テンプレートを用いてデバイスを投下しようとする際、君は代わりに他の速度1のテンプレートを用いて投下しても良い。"""
        "Soontir Fel":
           display_name: """Soontir Fel"""
           text: """エンゲージメント・フェイズの開始時、もし敵宇宙船が君の%BULLSEYEARC%内にいるなら、フォーカス・トークンを1つ得る。%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        "Spice Runner":
           display_name: """Spice Runner"""
           text: """<i class = flavor_text>Though its cargo space is limited compared to other light freighters, the small, swift HWK-290 is a favorite choice of smugglers who specialize in discreetly transporting precious goods.</i>"""
        "Squad Seven Veteran":
           display_name: """Squad Seven Veteran"""
           text: """<i class = flavor_text>Clone Flight Seven serves as part of the Open Circle Fleet under legendary Jedi Generals such as Plo Koon and Obi-Wan Kenobi, and won glory at the battles of Coruscant and Cato Neimoidia.</i>"""
        "Starkiller Base Pilot":
           display_name: """Starkiller Base Pilot"""
           text: """<i class = flavor_text>The Upsilon-class command shuttle serves as a base of operations for many of the First Order's senior officers and agents. Its powerful sensors and communications equipment allow them to orchestrate the spread of terror across the galaxy.</i>%LINEBREAK%<strong>Linked Battery:</strong> 君が%CANNON%攻撃を実行する際、攻撃ダイスを追加で1つ振る。"""
        "Storm Squadron Ace":
           display_name: """Storm Squadron Ace"""
           text: """<i class = flavor_text>The TIE Advanced x1 was produced in limited quantities, but Sienar engineers incorporated many of its best qualities into their next TIE model: the TIE Interceptor.</i>%LINEBREAK%<strong>Advanced Targeting Computer:</strong> 君がロックを持っている防御者に対し、君が主武装で攻撃を実行する際、君は攻撃ダイスを追加で1つ振り、%HIT%の結果1つを%CRIT%の結果に変更する。"""
        "Sunny Bounder":
           display_name: """Sunny Bounder"""
           text: """君が防御するか攻撃を実行する際、君がダイスを振った後か振り直した後、もし全てのダイスが同じ結果なら、君は一致した結果を1つ追加しても良い。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "TN-3465":
           display_name: """TN-3465"""
           text: """友軍宇宙船が攻撃を実行する際、君が防御者のレンジ0-1にいるなら、君は%CRIT%ダメージを1つ受け、攻撃者の結果を1つ%CRIT%の結果に変更しても良い。"""
        "Tala Squadron Pilot":
           display_name: """Tala Squadron Pilot"""
           text: """<i class = flavor_text>The AF4 series is the latest in a long line of Headhunter designs. Cheap and relatively durable, it is a favorite among independent outfits like the Rebellion.</i>"""
        "Tallissan Lintra":
           display_name: """Tallissan Lintra"""
           text: """君の%BULLSEYEARC%内の敵宇宙船が攻撃を実行する際、君は%CHARGE%を1つ消費しても良い。もしそうするなら、防御者はダイスを追加で1つ振る。%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> 君は君の%SINGLETURRETARC%インジケーターを%FRONTARC%あるいは%REARARC%にのみ回転できる。君がアクションを実行した後、君は赤の%BOOST%あるいは赤の%ROTATEARC%アクションを実行しても良い。"""
        "Talonbane Cobra":
           display_name: """Talonbane Cobra"""
           text: """君がレンジ3で防御するか、攻撃レンジ1で攻撃を実行する際、ダイスを追加で1つ振る。"""
        "Tansarii Point Veteran":
           display_name: """Tansarii Point Veteran"""
           text: """<i class = flavor_text>The defeat of Black Sun ace Talonbane Cobra by Car’das smugglers turned the tide of the Battle of Tansarii Point Station. Survivors of the clash are respected throughout the sector.</i> %LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Techno Union Bomber":
           display_name: """Techno Union Bomber"""
           text: """<i class = flavor_text>Baktoid Armor Workshop developed the Hyena as a strike craft compatible with Trade Federation Vulture swarm tactics.</i>%LINEBREAK%<strong>Networked Calculations:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Tel Trevura":
           display_name: """Tel Trevura"""
           text: """もし君が破壊されようとするとき、君は%CHARGE%を1つ消費しても良い。もしそうするなら、代わりに全てのダメージ・カードを捨て札にし、%HIT%ダメージを5つ受け、そして君自身をリザーブ状態にする。次のプランニング・フェイズの開始時、君自身を君のプレイヤー・エッジのレンジ1に置く。"""
        "Temmin Wexley":
           display_name: """Temmin Wexley"""
           text: """君がレンジ2-4のマニューバを完全に実行した後、君は%BOOST%アクションを実行しても良い。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Tempest Squadron Pilot":
           display_name: """Tempest Squadron Pilot"""
           text: """<i class = flavor_text>The TIE Advanced improved on the popular TIE/ln design by adding shielding, better weapons systems, curved solar panels, and a hyperdrive.</i>%LINEBREAK%<strong>Advanced Targeting Computer:</strong> 君がロックを持っている防御者に対し、君が主武装で攻撃を実行する際、君は攻撃ダイスを追加で1つ振り、%HIT%の結果1つを%CRIT%の結果に変更する。"""
        "Ten Numb":
           display_name: """Ten Numb"""
           text: """君が防御するか攻撃を実行する際、君はストレス・トークンを1つ消費して、全ての%FOCUS%の結果を%EVADE%あるいは%HIT%に変更しても良い。"""
        "Thane Kyrell":
           display_name: """Thane Kyrell"""
           text: """君が攻撃を実行する際、君は防御者の裏向きのダメージ・カードを見て、1つ選び、それをエクスポーズするために、%FOCUS%%HIT%あるいは%CRIT%の結果を1つ消費しても良い。"""
        "Tomax Bren":
           display_name: """Tomax Bren"""
           text: """君が%RELOAD%アクションを実行した後、君は装備した%TALENT%アップグレード・カードのうちの1つの上にある%CHARGE%トークンを1つ回復しても良い。%LINEBREAK%<strong>Nimble Bomber:</strong> もし君が%STRAIGHT%テンプレートを使ってデバイスを投下する時、君は代わりに同じ速度の%BANKLEFT%あるいは%BANKRIGHT%テンプレートを使用しても良い。"""
        "Torani Kulda":
           display_name: """Torani Kulda"""
           text: """君が攻撃を実行する際、君の%BULLSEYEARC%内の各敵宇宙船は、緑のトークンを1つ取り除かない限り、%HIT%ダメージを1つ受ける。%LINEBREAK%<strong>Dead to Rights:</strong> 君が攻撃を実行する際、もし防御者が君の%BULLSEYEARC%内にいるなら、防御ダイスは緑のトークンを使って修正できない。"""
        "Torkil Mux":
           display_name: """Torkil Mux"""
           text: """エンゲージメント・フェイズの開始時、君は君のファイアリング・アーク内の敵宇宙船を1つ選んでも良い。もしそうするなら、その宇宙船はこのラウンド、通常のイニシアチブ値の代わりに、イニチアチブ0でエンゲージする。"""
        "Trade Federation Drone":
           display_name: """Trade Federation Drone"""
           text: """<i class = flavor_text>The Trade Federation deployed countless Vulture Droids at the Battle of Naboo, and continues to use these inexpensive starfighters in the Clone Wars.</i>%LINEBREAK%<strong>Networked Calculations:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Trandoshan Slaver":
           display_name: """Trandoshan Slaver"""
           text: """<i class = flavor_text>The spacious triple-decker design of the YV-666 makes it popular among bounty hunters and slavers, who often retrofit an entire deck for prisoner transport.</i>"""
        "Turr Phennir":
           display_name: """Turr Phennir"""
           text: """君が攻撃を実行した後、君は%BARRELROLL%あるいは%BOOST%アクションを実行しても良い(君がストレス状態であっても)。%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """エンゲージメント・フェイズの開始時、レンジ0に他の宇宙船が1つ以上いるなら、君とレンジ0の他の各宇宙船はトラクター・トークンを1つ得る。%LINEBREAK%<strong>Spacetug Tractor Array:</strong> <b>アクション:</b> レンジ1の君の%FRONTARC%内の宇宙船を1つ選ぶ。その宇宙船はトラクター・トークンを1つ得るか、あるいは君の%BULLSEYEARC%内レンジ1にいるならトラクター・トークンを2つ得る。"""
        "Valen Rudor":
           display_name: """Valen Rudor"""
           text: """レンジ0-1の友軍宇宙船の防御の後(もしあればダメージを適用した後)、君はアクションを実行しても良い。"""
        "Ved Foslo":
           display_name: """Ved Foslo"""
           text: """君がマニューバを実行する際、代わりに君は同じ向きで同じ難易度の、速度が1高いか低いマニューバを実行しても良い。%LINEBREAK%<strong>Advanced Targeting Computer:</strong> 君がロックを持っている防御者に対し、君が主武装で攻撃を実行する際、君は攻撃ダイスを追加で1つ振り、%HIT%の結果1つを%CRIT%の結果に変更する。"""
        "Vennie":
           display_name: """Vennie"""
           text: """君が防御する際、もし攻撃者が友軍宇宙船の%SINGLETURRETARC%内にいるなら、君は君のロールに%FOCUS%の結果を1つ追加しても良い。"""
        "Viktor Hel":
           display_name: """Viktor Hel"""
           text: """君が防御する際、もし君が防御ダイスをちょうど2つ振らなかったなら、攻撃者はストレス・トークンを1つ得る。"""
        "Warden Squadron Pilot":
           display_name: """Warden Squadron Pilot"""
           text: """<i class = flavor_text>Koensayr Manufacturing’s K-wing boasts an advanced SubLight Acceleration Motor and an unprecedented 18 hard points, granting it unrivaled speed and firepower.</i>"""
        "Wat Tambor":
           display_name: """Wat Tambor"""
           text: """君が主武装による攻撃を実行する際、君は防御者のレンジ1のカリキュレート状態の友軍宇宙船1つごとに攻撃ダイスを1つ振り直しても良い。"""
        "Wedge Antilles":
           display_name: """Wedge Antilles"""
           text: """君が攻撃を実行する際、防御者は防御ダイスを1つ少なく振る。"""
        "Wild Space Fringer":
           display_name: """Wild Space Fringer"""
           text: """<i class = flavor_text>Although stock YT-2400 light freighters have plenty of room for cargo, that space is often annexed to support modified weapon systems and oversized engines.</i>%LINEBREAK%<strong>Sensor Blindspot:</strong> 君がレンジ0-1の主武装による攻撃を実行する際、レンジ0-1ボーナスを適用せず、攻撃ダイスを1つ少なく振る。"""
        "Wullffwarro":
           display_name: """Wullffwarro"""
           text: """君が主武装による攻撃を実行する際、もし君がダメージ状態なら、君は攻撃ダイスを追加で1つ振っても良い。"""
        "Zari Bangel":
           display_name: """Zari Bangel"""
           text: """君は君がマニューバを部分的に実行した後、君のアクションの実行ステップをスキップしない。%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> 君は君の%SINGLETURRETARC%インジケーターを%FRONTARC%あるいは%REARARC%にのみ回転できる。君がアクションを実行した後、君は赤の%BOOST%あるいは赤の%ROTATEARC%アクションを実行しても良い。"""
        "Zealous Recruit":
           display_name: """Zealous Recruit"""
           text: """<i class = flavor_text>Mandalorian Fang fighter pilots must master the Concordia Faceoff maneuver, leveraging their ships’ narrow attack profile to execute deadly head-on charges.</i> %LINEBREAK% <strong>Concordia Faceoff:</strong> 君が防御する際、もし攻撃レンジが1であり、君が攻撃者の%FRONTARC%内にいるとき、結果の1つを%EVADE%に変更する。"""
        "Zertik Strom":
           display_name: """Zertik Strom"""
           text: """終了フェイズの間、君は敵宇宙船へのロックを消費して、その宇宙船のダメージ・カードを1枚エクスポーズしても良い。%LINEBREAK%<strong>Advanced Targeting Computer:</strong> 君がロックを持っている防御者に対し、君が主武装で攻撃を実行する際、君は攻撃ダイスを追加で1つ振り、%HIT%の結果1つを%CRIT%の結果に変更する。"""
        "Zeta Squadron Pilot":
           display_name: """Zeta Squadron Pilot"""
           text: """<i class = flavor_text>Unhampered by a cumbersome galactic bureaucracy, technologies originally researched by the Empire’s TIE Advanced program are now mass-produced on First Order starfighters. As a result, TIE/fo pilots enjoy higher survival rates than their predecessors in the Galactic Empire.</i>"""
        "Zeta Squadron Survivor":
           display_name: """Zeta Squadron Survivor"""
           text: """<i class = flavor_text>Humiliated by their failure, the remaining pilots from Starkiller Base are eager to prove their worth in pursuit of the Resistance.</i>%LINEBREAK%<strong>Heavy Weapon Turret:</strong> 君は%SINGLETURRETARC%インジケーターを%FRONTARC%か%REARARC%にだけローテートすることができる。君は装備した%MISSILE%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """君が主武装による攻撃を実行する際、君は攻撃ダイスを追加で1つ振っても良い。もしそうするなら、防御者は防御ダイスを追加で1つ振る。"""
        '"Avenger"':
           display_name: """“Avenger”"""
           text: """他の友軍宇宙船が破壊された後、君はアクションを1つ実行しても良い(ストレス状態でも)。%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        '"Axe"':
           display_name: """“Axe”"""
           text: """君が防御するか攻撃を実行した後、君は%LEFTARC%あるいは%RIGHTARC%内レンジ1-2の友軍宇宙船を選んでも良い。もしそうするなら、緑のトークンを1つその宇宙船に転送する。"""
        '"Backdraft"':
           display_name: """“Backdraft”"""
           text: """君が%SINGLETURRETARC%の主武装による攻撃を実行する際、もし防御者が君の%REARARC%内にいるなら、攻撃ダイスを追加で1つ振る。%LINEBREAK%<strong>Heavy Weapon Turret:</strong> 君は%SINGLETURRETARC%インジケーターを%FRONTARC%か%REARARC%にだけローテートすることができる。君は装備した%MISSILE%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        '"Blackout"':
           display_name: """“Blackout”"""
           text: """君が攻撃を実行する際、もし攻撃が障害物によって妨害されたなら、防御者は防御ダイスを2つ少なく振る。%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        '"Chopper"':
           display_name: """“Chopper”"""
           text: """エンゲージメント・フェイズの開始時、レンジ0の各敵宇宙船はジャム・トークンを2つ受け取る。%LINEBREAK%<strong>Tail Gun:</strong> 君に宇宙船がドックされているなら、君は主武装の%REARARC%攻撃を、ドックされた宇宙船の主武装の%FRONTARC%攻撃値と同じ攻撃値で持つ。"""
        '"Countdown"':
           display_name: """“Countdown”"""
           text: """君が防御する際、結果の相殺ステップの後に、もし君がストレス状態でなければ、君は%HIT%ダメージを1つ受け、ストレス・トークン1つを受け取っても良い。もしそうするなら、全てのダイスの結果をキャンセルする。%LINEBREAK%<strong>Adaptive Ailerons:</strong> 君が君のダイヤルを公開する前に、もし君がストレス状態でなければ、君は白の[1%BANKLEFT%][1%STRAIGHT%]あるいは[1%BANKRIGHT%]を<b>行わなければならない</b>。"""
        '"Deathfire"':
           display_name: """“Deathfire”"""
           text: """君が破壊された後、君が取り除かれる前に、君は1回攻撃し、デバイスを1つ投下あるいは射出しても良い。%LINEBREAK%<strong>Nimble Bomber:</strong> もし君が%STRAIGHT%テンプレートを使ってデバイスを投下する時、君は代わりに同じ速度の%BANKLEFT%あるいは%BANKRIGHT%テンプレートを使用しても良い。"""
        '"Deathrain"':
           display_name: """“Deathrain”"""
           text: """君がデバイスを投下あるいは射出した後、君はアクションを実行しても良い。"""
        '"Double Edge"':
           display_name: """“Double Edge”"""
           text: """君が%TURRET%あるいは%MISSILE%による攻撃を実行しそれをミスした後、君は違う武器を使用したボーナスの攻撃を実行しても良い。"""
        '"Duchess"':
           display_name: """“Duchess”"""
           text: """君は君の<strong>Adaptive Ailerons</strong>を使わないことを選んでも良い。%LINEBREAK%君は君の<strong>Adaptive Ailerons</strong>をストレス状態でも使っても良い。%LINEBREAK%<strong>Adaptive Ailerons:</strong> 君が君のダイヤルを公開する前に、もし君がストレス状態でなければ、君は白の[1%BANKLEFT%][1%STRAIGHT%]あるいは[1%BANKRIGHT%]を<b>行わなければならない</b>。"""
        '"Dutch" Vander':
           display_name: """“Dutch” Vander"""
           text: """君が%LOCK%アクションを実行した後、君はレンジ1-3の友軍宇宙船を選んでも良い。その宇宙船は君がロックしたオブジェクトへのロックを、距離の制限を無視して得る。"""
        '"Echo"':
           display_name: """“Echo”"""
           text: """君がデクロークする際、君は[%STRAIGHT%2]テンプレートの代わりに[%BANKLEFT%2]あるいは[%BANKRIGHT%2]テンプレートを<b>使用しなければならない</b>。%LINEBREAK%<strong>Stygium Array:</strong> 君がデクロークした後、君は%EVADE%アクションを実行しても良い。終了フェイズの開始時、君は回避トークンを1つ消費してクローク・トークンを1つ得ても良い。"""
        '"Howlrunner"':
           display_name: """“Howlrunner”"""
           text: """レンジ0-1の友軍宇宙船が主武装による攻撃を実行する際、その宇宙船は攻撃ダイスを1つ振り直しても良い。"""
        '"Jag"':
           display_name: """“Jag”"""
           text: """レンジ1-2の%LEFTARC%あるいは%RIGHTARC%内の友軍宇宙船の防御後、君は攻撃者へのロックを得ても良い。"""
        '"Kickback"':
           display_name: """“Kickback”"""
           text: """君が%BARRELROLL%アクションを実行した後、君は赤の%LOCK%アクションを実行しても良い。"""
        '"Leebo"':
           display_name: """“Leebo”"""
           text: """君が防御するか攻撃を実行した後、もし君がカリキュレート・トークンを消費したなら、カリキュレート・トークンを1つ得る。%LINEBREAK%<strong>Sensor Blindspot:</strong> 君がレンジ0-1の主武装による攻撃を実行する際、レンジ0-1ボーナスを適用せず、攻撃ダイスを1つ少なく振る。"""
        '"Longshot"':
           display_name: """“Longshot”"""
           text: """君が攻撃レンジ3の主武装による攻撃を実行する際、攻撃ダイスを追加で1つ振る。"""
        '"Mauler" Mithel':
           display_name: """“Mauler” Mithel"""
           text: """君がレンジ1で攻撃を実行する際、攻撃ダイスを追加で1つ振る。"""
        '"Midnight"':
           display_name: """“Midnight”"""
           text: """君が防御するか攻撃を実行する時、もし君がその宇宙船へのロックを持っているなら、その宇宙船のダイスは修正できない。"""
        '"Muse"':
           display_name: """“Muse”"""
           text: """エンゲージメント・フェイズの開始時、君はレンジ0-1の友軍宇宙船を1つ選んでも良い。もしそうするなら、その宇宙船はストレス・トークンを1つ取り除く。"""
        '"Night Beast"':
           display_name: """“Night Beast”"""
           text: """君が青のマニューバを完全に実行した後、君は%FOCUS%アクションを実行しても良い。"""
        '"Null"':
           display_name: """“Null”"""
           text: """君がダメージ状態ではない際、君のイニシアチブ値を7として扱う。"""
        '"Odd Ball"':
           display_name: """“Odd Ball”"""
           text: """君が赤のマニューバを完全に実行するか、赤のアクションを実行した後、君の%BULLSEYEARC%内に敵宇宙船がいるなら、君はその宇宙船へのロックを得ても良い。"""
        '"Odd Ball" (ARC-170)':
           display_name: """“Odd Ball”"""
           text: """君が赤のマニューバを完全に実行するか、赤のアクションを実行した後、君の%BULLSEYEARC%内に敵宇宙船がいるなら、君はその宇宙船へのロックを得ても良い。"""
        '"Pure Sabacc"':
           display_name: """“Pure Sabacc”"""
           text: """君が攻撃を実行する際、もし君のダメージ・カードが1枚以下なら、君は攻撃ダイスを追加で1つ振っても良い。%LINEBREAK%<strong>Adaptive Ailerons:</strong> 君が君のダイヤルを公開する前に、もし君がストレス状態でなければ、君は白の[1%BANKLEFT%][1%STRAIGHT%]あるいは[1%BANKRIGHT%]を<b>行わなければならない</b>。"""
        '"Quickdraw"':
           display_name: """“Quickdraw”"""
           text: """君がシールドを失った後、君は%CHARGE%を1つ消費しても良い。もしそうするなら、君はボーナスの主武装による攻撃を実行しても良い。%LINEBREAK%<strong>Heavy Weapon Turret:</strong> 君は%SINGLETURRETARC%インジケーターを%FRONTARC%か%REARARC%にだけローテートすることができる。君は装備した%MISSILE%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        '"Recoil"':
           display_name: """“Recoil”"""
           text: """君がストレス状態の際、君はレンジ0-1の%FRONTARC%内の敵宇宙船を君の%BULLSEYEARC%内にいるとして扱っても良い。%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        '"Redline"':
           display_name: """“Redline”"""
           text: """君はロックを2つまで保持できる。%LINEBREAK%君がアクションを実行した後、君はロックを得ても良い。"""
        '"Scorch"':
           display_name: """“Scorch”"""
           text: """君が主武装による攻撃を実行する際、もし君がストレス状態でなければ、君はストレス・トークンを1つ得て攻撃ダイスを追加で1つ振っても良い。"""
        '"Scourge" Skutu':
           display_name: """“Scourge” Skutu"""
           text: """君が君の%BULLSEYEARC%内の防御者に攻撃を実行する際、攻撃ダイスを追加で1つ振る。"""
        '"Sinker"':
           display_name: """“Sinker”"""
           text: """レンジ1-2の%LEFTARC%あるいは%RIGHTARC%内の友軍宇宙船が主武装による攻撃を実行する際、それは攻撃ダイスを1つ振り直しても良い。"""
        '"Static"':
           display_name: """“Static”"""
           text: """君が主武装による攻撃を実行する際、君の防御者へのロックとフォーカス・トークンを消費し、君は君の全ての結果を%CRIT%の結果に変更しても良い。"""
        '"Swoop"':
           display_name: """“Swoop”"""
           text: """小型あるいは中型船が速度3-4のマニューバを完全に実行した後、もしそれがレンジ0-1にいるなら、それは赤の%BOOST%アクションを実行しても良い。"""
        '"Tucker"':
           display_name: """“Tucker”"""
           text: """レンジ1-2の友軍宇宙船が君の%FRONTARC%内の敵宇宙船に攻撃した後、君は%FOCUS%アクションを実行しても良い。"""
        '"Vizier"':
           display_name: """“Vizier”"""
           text: """君が君の<strong>Adaptive Ailerons</strong>宇宙船能力を使った速度1のマニューバを完全に実行した後、君は%COORDINATE%アクションを実行しても良い。もしそうするなら、君のアクション実行ステップを飛ばす。%LINEBREAK%<strong>Adaptive Ailerons:</strong> 君が君のダイヤルを公開する前に、君がストレス状態でなければ、君は白の[1%BANKLEFT%][1%STRAIGHT%]あるいは[1%BANKRIGHT%]を<b>行わなければならない</b>。"""
        '"Wampa"':
           display_name: """“Wampa”"""
           text: """君が攻撃を実行する際、君は%CHARGE%を1つ消費して攻撃ダイスを追加で1つ振っても良い。%LINEBREAK%君が防御した後、%CHARGE%を1つ失う。"""
        '"Whisper"':
           display_name: """“Whisper”"""
           text: """君の攻撃が命中した後、回避トークンを1つ得る。%LINEBREAK%<strong>Stygium Array:</strong> 君がデクロークした後、君は%EVADE%アクションを実行しても良い。終了フェイズの開始時、君は回避トークンを1つ消費してクローク・トークンを1つ得ても良い。"""
        '"Wolffe"':
           display_name: """“Wolffe”"""
           text: """君が主武装による%FRONTARC%攻撃を実行する際、君は%CHARGE%を1つ消費して、攻撃ダイスを1つ振り直しても良い。%LINEBREAK%君が主武装による%REARARC%攻撃を実行する際、君は%CHARGE%を1つ回復して、攻撃ダイスを追加で1つ振っても良い。"""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """君が防御する際、君は%HIT%の結果の前に%CRIT%の結果を相殺しても良い。%LINEBREAK%<strong>Locked and Loaded:</strong> 君がドックされている際、君のキャリア宇宙船が主武装の%FRONTARC%あるいは%SINGLETURRETARC%による攻撃を実行した後、その宇宙船はボーナスの主武装の%REARARC%攻撃を実行しても良い。"""
        '"Zeb" Orrelios (Sheathipede)':
           display_name: """“Zeb” Orrelios"""
           text: """君が防御する際、君は%HIT%の結果の前に%CRIT%の結果を相殺しても良い。%LINEBREAK%<strong>Comms Shuttle:</strong> 君がドックされている際、君のキャリア宇宙船は%COORDINATE%を得る。君のキャリア宇宙船のアクティベートの前に、それは%COORDINATE%アクションを実行しても良い。"""
        '"Zeb" Orrelios (TIE Fighter)':
           display_name: """“Zeb” Orrelios"""
           text: """君が防御する際、君は%HIT%の結果の前に%CRIT%の結果を相殺しても良い。"""
        "Bombardment Drone":
           text: """もし君がデバイスを投下しようとする時、君は代わりに同じテンプレートを用いて射出しても良い。%LINEBREAK%<strong>Networked Calculations:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Haor Chall Prototype":
           display_name: """Haor Chall Prototype"""
           text: """君の%BULLSEYEARC%内レンジ0-2の敵宇宙船が他の友軍宇宙船を防御者と宣言した後、君は%CALCULATE%あるいは%LOCK%アクションを実行しても良い。%LINEBREAK%<strong>Networked Calculations:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Precise Hunter":
           display_name: """Precise Hunter"""
           text: """君が攻撃を実行する際、もし防御者が君の%BULLSEYEARC%内にいるなら、君は空白の結果を1つ振り直しても良い。%LINEBREAK%<strong>Networked Calculations:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """君が防御するか攻撃を実行する際、君は君の結果を攻撃アーク内の他の友軍宇宙船ごとに1つまで振り直しても良い。"""
        "Pammich Nerro Goode":
           display_name: """Pammich Nerro Goode"""
           text: """君のストレス・トークンが2つ以下の際、君はストレス状態でも赤のマニューバを実行しても良い。"""
        "Padmé Amidala":
           display_name: """Padmé Amidala"""
           text: """君の%FRONTARC%内にいる敵宇宙船が防御あるいは攻撃を実行する際、その宇宙船は%FOCUS%の結果を1つだけ修正できる。(他の結果は修正できる)%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Anakin Skywalker (N-1 Starfighter)":
           display_name: """Anakin Skywalker"""
           text: """君が君のマニューバを公開する前に、君は%FORCE%を1つ消費して、バレル・ロールを実行しても良い(これはアクションではない)。%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Ric Olié":
           display_name: """Ric Olié"""
           text: """君が防御するか主武装による攻撃を実行する際、もし君の公開したマニューバの速度が敵宇宙船よりも高いなら、ダイスを1つ追加で振る。%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Dineé Ellberger":
           display_name: """Dineé Ellberger"""
           text: """君が防御時あるいは攻撃を実行する際、もし君の公開したマニューバの速度が敵宇宙船と同じなら、その宇宙船のダイスは修正できない。%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Naboo Handmaiden":
           display_name: """Naboo Handmaiden"""
           text: """<b>セットアップ:</b> 戦力の配置後、<strong>Naboo Handmaiden</strong>以外の友軍宇宙船1つに<strong>Decoyed</strong>コンディションをつける。%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Bravo Flight Officer":
           display_name: """Bravo Flight Officer"""
           text: """<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "BB-8":
           display_name: """BB-8"""
           text: """システム・フェイズの間、君は赤の%BARRELROLL%あるいは%BOOST%アクションを実行しても良い。"""
        "Finn":
           display_name: """Finn"""
           text: """君が防御するか攻撃を実行する際、君は空白の結果を1つ追加しても良い。あるいは代わりにストレイン・トークンを1つ得て、フォーカスの結果を1つ追加しても良い。"""
        "Cova Nell":
           display_name: """Cova Nell"""
           text: """君が防御するか主武装による攻撃を実行する際、もし君の公開したマニューバが赤なら、ダイスを追加で1つ振る。"""
        "Nodin Chavdri":
           display_name: """Nodin Chavdri"""
           text: """君がコーディネートするかコーディネートされた後、もし君のストレス・トークンが2つ以下なら、君は君のアクション・バーのアクションを1つを赤のアクションとして実行しても良い(たとえストレス状態でも)。"""
        "Vi Moradi":
           display_name: """Vi Moradi"""
           text: """<b>セットアップ:</b> 戦力の配置後、<strong>Compromising Intel</strong>コンディションを敵宇宙船1つにつける。"""
        "Shadow Squadron Veteran":
           text: """<strong>Plated Hull:</strong> 君が防御する際、もし君がクリティカル・ダメージ状態でないなら、%CRIT%の結果を1つ%HIT%に変更する。"""
        "Red Squadron Bomber":
           text: """<strong>Plated Hull:</strong> 君が防御する際、もし君がクリティカル・ダメージ状態でないなら、%CRIT%の結果を1つ%HIT%に変更する。"""
        '"Goji"':
           text: """レンジ0-3の友軍宇宙船が防御する際、それはそれのレンジ0-1にある友軍の爆弾1つにつき防御ダイスを追加で1つ振っても良い。%LINEBREAK%<strong>Plated Hull:</strong> 君が防御する際、もし君がクリティカル・ダメージ状態でないなら、%CRIT%の結果を1つ%HIT%に変更する。"""
        '"Broadside"':
           text: """君が%SINGLETURRETARC%攻撃を実行する際、もし%SINGLETURRETARC%インジケーターが%LEFTARC%あるいは%RIGHTARC%にあるなら、君は空白の結果を1つ%FOCUS%に変えても良い。%LINEBREAK%<strong>Plated Hull:</strong> 君が防御する際、もし君がクリティカル・ダメージ状態でないなら、%CRIT%の結果を1つ%HIT%に変更する。"""
        '"Matchstick"':
           text: """君が主武装あるいは%SINGLETURRETARC%による攻撃を実行する際、君は君が持っている赤のトークン1つにつき攻撃ダイスを1つ振り直しても良い。%LINEBREAK%<strong>Plated Hull:</strong> 君が防御する際、もし君がクリティカル・ダメージ状態でないなら、%CRIT%の結果を1つ%HIT%に変更する。"""
        '"Odd Ball" (Y-Wing)':
           text: """君が赤のマニューバを完全に実行するか、赤のアクションを実行した後、もし敵宇宙船が%BULLSEYEARC%内にいるなら、君はその宇宙船へのロックを得ても良い。%LINEBREAK%<strong>Plated Hull:</strong> 君が防御する際、もし君がクリティカル・ダメージ状態でないなら、%CRIT%の結果を1つ%HIT%に変更する。"""
        "R2-D2":
           text: """エンゲージメント・フェイズの開始時、もし敵宇宙船が%REARARC%内にいるなら、カリキュレート・トークンを1つ得る。%LINEBREAK%<strong>Plated Hull:</strong> 君が防御する際、もし君がクリティカル・ダメージ状態でないなら、%CRIT%の結果を1つ%HIT%に変更する。"""
        "Anakin Skywalker (Y-Wing)":
           text: """君がマニューバを完全に実行した後、もし敵宇宙船が%FRONTARC%内レンジ0-1かあるいは%BULLSEYEARC%にいるなら、君は%FORCE%を1つ消費してストレス・トークンを1つ取り除いても良い。%LINEBREAK%<strong>Plated Hull:</strong> 君が防御する際、もし君がクリティカル・ダメージ状態でないなら、%CRIT%の結果を1つ%HIT%に変更する。"""
        "Sun Fac":
           text: """君が主武装による攻撃を実行する際、もし防御者がトラクター状態なら、攻撃ダイスを追加で1つ振る。%LINEBREAK%<strong>Pinpoint Tractor Array:</strong> 君は君の%SINGLETURRETARC%を%REARARC%に回転できない。君がマニューバを完全に実行した後、君はトラクター・トークンを1つ得て、%ROTATEARC%アクションを実行しても良い。"""
        "Stalgasin Hive Guard":
           text: """<strong>Pinpoint Tractor Array:</strong> 君は君の%SINGLETURRETARC%を%REARARC%に回転できない。君がマニューバを完全に実行した後、君はトラクター・トークンを1つ得て、%ROTATEARC%アクションを実行しても良い。"""
        "Petranaki Arena Ace":
           text: """<strong>Pinpoint Tractor Array:</strong> 君は君の%SINGLETURRETARC%を%REARARC%に回転できない。君がマニューバを完全に実行した後、君はトラクター・トークンを1つ得て、%ROTATEARC%アクションを実行しても良い。"""
        "Berwer Kret":
           text: """君が攻撃を実行しそれが命中した後、アクション・バーに%CALCULATE%を持ち、防御者へのロックを持つ各宇宙船は、赤の%CALCULATE%アクションを実行しても良い。%LINEBREAK%<strong>Pinpoint Tractor Array:</strong> 君は君の%SINGLETURRETARC%を%REARARC%に回転できない。君がマニューバを完全に実行した後、君はトラクター・トークンを1つ得て、%ROTATEARC%アクションを実行しても良い。"""
        "Chertek":
           text: """君が主武装による攻撃を実行する際、もし防御者がトラクター状態なら、君は攻撃ダイスを2つまで振り直しても良い。%LINEBREAK%<strong>Pinpoint Tractor Array:</strong> 君は君の%SINGLETURRETARC%を%REARARC%に回転できない。君がマニューバを完全に実行した後、君はトラクター・トークンを1つ得て、%ROTATEARC%アクションを実行しても良い。"""
        "Gorgol":
           text: """システム・フェイズの間に、君は武装解除トークンを1つ得て、レンジ1-2の友軍宇宙船を1つ選んでも良い。もしそうするなら、それはトラクター・トークンを1つ得、その後それの表向きの宇宙船トレイトのダメージ・カードを1つ修理する。%LINEBREAK%<strong>Pinpoint Tractor Array:</strong> 君は君の%SINGLETURRETARC%を%REARARC%に回転できない。君がマニューバを完全に実行した後、君はトラクター・トークンを1つ得て、%ROTATEARC%アクションを実行しても良い。"""
        "Kazuda Xiono":
           text: """君が防御するか主武装による攻撃を実行する際、もし敵宇宙船のイニシアチブが君の持っているダメージ・カードの数よりも大きいなら、君はダイスを追加で1つ振っても良い。%LINEBREAK%<strong>Explosion with Wings:</strong> 君は裏向きのダメージ・カード1枚を受けている。君が%SLAM%アクションを実行した後、君は1枚ダメージ・カードをエクスポーズし、武装解除トークンを1つ取り除いても良い。"""
        "Major Vonreg":
           text: """システム・フェイズの間、君は君の%BULLSEYEARC%内の敵宇宙船1つを選んでも良い。その宇宙船は君が選んだデプリートあるいはストレイン・トークン1つを得る。%LINEBREAK%<strong>Fine-Tuned Thrusters:</strong> 君がマニューバを完全に実行した後、君がデプリート状態でもストレイン状態でもなければ、%LOCK%あるいは%BARRELROLL%アクションを実行するためにデプリートあるいはストレイン・トークンを1つ得ても良い。"""
        "First Order Provocateur":
           text: """<strong>Fine-Tuned Thrusters:</strong> 君がマニューバを完全に実行した後、君がデプリート状態でもストレイン状態でもなければ、%LOCK%あるいは%BARRELROLL%アクションを実行するためにデプリートあるいはストレイン・トークンを1つ得ても良い。"""
        '"Ember"':
           text: """君が攻撃を実行する際、もし防御者のレンジ0-1に防御者の友軍であるダメージ状態の宇宙船がいるなら、その宇宙船はフォーカスあるいはカリキュレート・トークンを消費することができない。%LINEBREAK%<strong>Fine-Tuned Thrusters:</strong> 君がマニューバを完全に実行した後、君がデプリート状態でもストレイン状態でもなければ、%LOCK%あるいは%BARRELROLL%アクションを実行するためにデプリートあるいはストレイン・トークンを1つ得ても良い。"""
        '"Holo"':
           text: """エンゲージメント・フェイズの開始時、君はレンジ0-2の他の友軍宇宙船1つに君のトークンのうち1つを転送しなければならない。%LINEBREAK%<strong>Fine-Tuned Thrusters:</strong> 君がマニューバを完全に実行した後、君がデプリート状態でもストレイン状態でもなければ、%LOCK%あるいは%BARRELROLL%アクションを実行するためにデプリートあるいはストレイン・トークンを1つ得ても良い。"""
        "Captain Phasma":
           text: """君が防御する際、結果の相殺ステップの後に、レンジ0-1の他の友軍宇宙船は%HIT%/%CRIT%ダメージを1つ受け、マッチする結果1つを<b>キャンセルしなければならない</b>。%LINEBREAK%<strong>Heavy Weapon Turret:</strong> 君は%SINGLETURRETARC%インジケーターを%FRONTARC%か%REARARC%にだけローテートすることができる。君は装備した%MISSILE%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        '"Rush"':
           text: """君がダメージ状態の際、君のイニシアチブを6として扱う。%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        "Zizi Tlo":
           text: """君が防御するか攻撃を実行した後、君は%CHARGE%を1つ消費して、フォーカスあるいは回避トークンを得ても良い。%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> 君は君の%SINGLETURRETARC%インジケーターを%FRONTARC%あるいは%REARARC%にのみ回転できる。君がアクションを実行した後、君は赤の%BOOST%あるいは赤の%ROTATEARC%アクションを実行しても良い。"""
        "Ronith Blario":
           text: """君が防御するか攻撃を実行する際、もしその敵宇宙船が他の友軍宇宙船の%SINGLETURRETARC%にいるなら、君はその友軍宇宙船からフォーカス・トークンを消費し、君の%FOCUS%の結果のうち1つを%EVADE%あるいは%HIT%の結果に変更しても良い。%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> 君は君の%SINGLETURRETARC%インジケーターを%FRONTARC%あるいは%REARARC%にのみ回転できる。君がアクションを実行した後、君は赤の%BOOST%あるいは赤の%ROTATEARC%アクションを実行しても良い。"""
        "Gina Moonsong":
           text: """エンゲージメント・フェイズの開始時、君は君のストレス・トークンのうち1つを、レンジ0-2の他の友軍宇宙船に<b>転送しなければならない</b>。"""
        "K-2SO":
           text: """君がストレス・トークンを得た後、カリキュレート・トークンを1つ得る。"""
        "Alexsandr Kallus":
           text: """君が防御する際、もし攻撃者がいずれかの攻撃ダイスを修正したなら、君は防御ダイスを追加で1つ振っても良い。%LINEBREAK%<strong>Tail Gun:</strong> 君に宇宙船がドックされているなら、君は主武装の%REARARC%攻撃を、ドックされた宇宙船の主武装の%FRONTARC%攻撃値と同じ攻撃値で持つ。"""
        "Leia Organa":
           text: """友軍宇宙船が赤のマニューバを完全に実行した後、もしそれがレンジ0-3にいるなら、君は%FORCE%を1つ消費しても良い。もしそうするなら、その宇宙船はフォーカス・トークンを1つ得るか、%FORCE%を1つ回復する。"""
        "Paige Tico":
           text: """君がデバイスを投下した後、君は%CHARGE%を1つ消費し、追加のデバイスを投下しても良い。"""
        "Fifth Brother":
           text: """君が攻撃を実行する際、結果の相殺ステップの後に、もし攻撃が命中したなら、%FORCE%を2つ消費して、%CRIT%の結果を1つ追加しても良い。"""
        '"Vagabond"':
           text: """君が君の<strong>Adaptive Ailerons</strong>を使ったマニューバを完全に実行した後、もし君がストレス状態でなければ、君はデバイスを1つ投下しても良い。After you fully execute a maneuver using your <strong>Adaptive Ailerons</strong>, if you are not stressed you may drop 1 device. %LINEBREAK%<strong>Adaptive Ailerons:</strong> 君が君のダイヤルを公開する前に、もし君がストレス状態でなければ、君は白の[1%BANKLEFT%][1%STRAIGHT%]あるいは[1%BANKRIGHT%]を<b>行わなければならない</b>。"""
        "Morna Kee":
           text: """終了フェイズの間、君は%CHARGE%1つ消費して、君のリインフォース・トークンのうち1つを取り除く代わりにそれを裏返し別の全アークにしても良い。"""
        "Lieutenant LeHuse":
           text: """君が攻撃を実行する際、君は任意の数の君の結果をリロールするために、他の友軍宇宙船の防御者へのロックを消費しても良い。%LINEBREAK%<strong>Heavy Weapon Turret:</strong> 君は%SINGLETURRETARC%インジケーターを%FRONTARC%か%REARARC%にだけローテートすることができる。君は装備した%MISSILE%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        "Bossk (Z-95 Headhunter)":
           display_name: """Bossk"""
           text: """君が主武装による攻撃を実行する際、結果の相殺ステップの後に、君は%CRIT%の結果を1つ消費して%HIT%の結果2つを追加しても良い。%LINEBREAK%<strong>Pursuit Craft:</strong> 君を配置した後、君は友軍の<strong>Hound’s Tooth</strong>がロックしていた宇宙船へのロックを得ても良い。"""
        "G4R-GOR V/M":
           text: """君が防御する際、レンジ0の他の各宇宙船は%CRIT%ダメージを1つ受ける。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Nom Lumb":
           text: """君が防御者になった後、もし攻撃者が君の%SINGLETURRETARC%内にいないなら、君は君の%SINGLETURRETARC%インジケーターをスタンダードアークに攻撃者が入るように<b>ローテートしなければならない</b>。"""
        "Jarek Yeager":
           text: """君の持っているストレス・トークンの数が2つ以下の際、もし君がダメージ状態なら、君はストレス状態でも赤の基本マニューバを実行することができる。もし君がクリティカル・ダメージ状態なら、君はストレス状態でも赤の上級マニューバを実行することができる。%LINEBREAK%<strong>Explosion with Wings:</strong> 君は裏向きのダメージ・カード1枚を受けている。君が%SLAM%アクションを実行した後、君は1枚ダメージ・カードをエクスポーズし、武装解除トークンを1つ取り除いても良い。"""
        "R1-J5":
           text: """君がダメージ・カードを1枚エクスポーズする前に、君は代わりに裏向きのダメージ・カードを見て、1枚選びそのカードをエクスポーズしても良い。%LINEBREAK%<strong>Explosion with Wings:</strong> 君は裏向きのダメージ・カード1枚を受けている。君が%SLAM%アクションを実行した後、君は1枚ダメージ・カードをエクスポーズし、武装解除トークンを1つ取り除いても良い。"""
        "Colossus Station Mechanic":
           text: """<strong>Explosion with Wings:</strong> 君は裏向きのダメージ・カード1枚を受けている。君が%SLAM%アクションを実行した後、君は1枚ダメージ・カードをエクスポーズし、武装解除トークンを1つ取り除いても良い。"""
        "212th Battalion Pilot":
           text: """<strong>Fire Convergence:</strong> 友軍宇宙船が%SINGLETURRETARC%ではない攻撃を実行する際、もし防御者が君の%SINGLETURRETARC%内にいるなら、君は%CHARGE%を1つ消費しても良い。もしそうするなら、攻撃者は攻撃ダイスを2つまで振り直しても良い。"""
        '"Hawk"':
           text: """終了フェイズの開始時、速度3-5のマニューバを公開したレンジ0-1の各友軍宇宙船は、ストレイン・トークンを1つ得て%BARRELROLL%あるいは%BOOST%アクションを実行しても良い。%LINEBREAK%<strong>Fire Convergence:</strong> 友軍宇宙船が%SINGLETURRETARC%ではない攻撃を実行する際、もし防御者が君の%SINGLETURRETARC%内にいるなら、君は%CHARGE%を1つ消費しても良い。もしそうするなら、攻撃者は攻撃ダイスを2つまで振り直しても良い。"""
        '"Hound"':
           text: """君の%SINGLETURRETARC%内にいる友軍の小型宇宙船がデプリートあるいはストレイン・トークンを得た後、もし君がそのタイプのトークンを持っていないなら、君はそのトークンを君自身に転送しても良い。%LINEBREAK%<strong>Fire Convergence:</strong> 友軍宇宙船が%SINGLETURRETARC%ではない攻撃を実行する際、もし防御者が君の%SINGLETURRETARC%内にいるなら、君は%CHARGE%を1つ消費しても良い。もしそうするなら、攻撃者は攻撃ダイスを2つまで振り直しても良い。"""
        '"Warthog"':
           text: """君かレンジ0-2の非制限宇宙船がエンゲージメント・フェイズの間に破壊された後、その宇宙船はそのフェイズの終了まで取り除かれない。%LINEBREAK%<strong>Fire Convergence:</strong> 友軍宇宙船が%SINGLETURRETARC%ではない攻撃を実行する際、もし防御者が君の%SINGLETURRETARC%内にいるなら、君は%CHARGE%を1つ消費しても良い。もしそうするなら、攻撃者は攻撃ダイスを2つまで振り直しても良い。"""
        "Baktoid Drone":
           text: """%LINEBREAK%<strong>Networked Aim:</strong> 君は攻撃ダイスを振り直すために君のロックを消費できない。君が攻撃を実行する際、君は防御者への友軍のロックの数だけ攻撃ダイスを振り直すことができる。"""
        "Separatist Predator":
           text: """%LINEBREAK%<strong>Networked Aim:</strong> 君は攻撃ダイスを振り直すために君のロックを消費できない。君が攻撃を実行する際、君は防御者への友軍のロックの数だけ攻撃ダイスを振り直すことができる。"""
        "DGS-286":
           text: """君がエンゲージする前に、君はレンジ0-1の他の友軍宇宙船1つを選んでも良い。その宇宙船は君にカリキュレート・トークン1つを転送する。%LINEBREAK%<strong>Networked Aim:</strong> 君は攻撃ダイスを振り直すために君のロックを消費できない。君が攻撃を実行する際、君は防御者への友軍のロックの数だけ攻撃ダイスを振り直すことができる。"""
        "DGS-047":
           text: """君が攻撃した後、もし防御者が君の%FRONTARC%内にいるなら、君はそれへのロックを得ても良い。その後、もし防御者が君の%BULLSEYEARC%にいるなら、それはストレイン・トークンを1つ得る。%LINEBREAK%<strong>Networked Aim:</strong> 君は攻撃ダイスを振り直すために君のロックを消費できない。君が攻撃を実行する際、君は防御者への友軍のロックの数だけ攻撃ダイスを振り直すことができる。"""
        "Geonosian Prototype":
           text: """君が%MISSILE%あるいは%CANNON%による攻撃を実行する際、君は防御者からトラクター・トークンを1つ取り除き、攻撃ダイスを2つまで振り直しても良い。%LINEBREAK%<strong>Networked Aim:</strong> 君は攻撃ダイスを振り直すために君のロックを消費できない。君が攻撃を実行する際、君は防御者への友軍のロックの数だけ攻撃ダイスを振り直すことができる。"""
        "Onderon Oppressor":
           text: """君がバレル・ロールあるいはサイドスリップした後、もし君がストレス状態なら、カリキュレート・トークンを1つ得る。%LINEBREAK%<strong>Networked Aim:</strong> 君は攻撃ダイスを振り直すために君のロックを消費できない。君が攻撃を実行する際、君は防御者への友軍のロックの数だけ攻撃ダイスを振り直すことができる。"""
        "Jedi General":
           text: """<strong>Intuitive Controls:</strong> システム・フェイズの間、君は紫%BARRELROLL%あるいは紫%BOOST%アクションを実行しても良い。"""
        "Yoda":
           text: """レンジ0-3の他の友軍宇宙船が%FORCE%を1つ以上消費した後、君は%FORCE%を1つ消費しても良い。もしそうするなら、その宇宙船は%FORCE%を1つ回復する。%LINEBREAK%<strong>Intuitive Controls:</strong> システム・フェイズの間、君は紫%BARRELROLL%あるいは紫%BOOST%アクションを実行しても良い。"""
        "Shaak Ti":
           text: """終了フェイズの開始時、君は好きな数の%FORCE%を消費し、同じ数のレンジ0-2の友軍宇宙船を選択しても良い。選んだ各宇宙船は終了フェイズの間にフォーカスあるいは回避トークンを1つ取り除かない。%LINEBREAK%<strong>Intuitive Controls:</strong> システム・フェイズの間、君は紫%BARRELROLL%あるいは紫%BOOST%アクションを実行しても良い。"""
        "Aayla Secura":
           text: """君の%FRONTARC%内レンジ0-1の敵宇宙船が攻撃を実行する際、防御者は空白の結果1つを%FOCUS%の結果に変更しても良い。%LINEBREAK%<strong>Intuitive Controls:</strong> システム・フェイズの間、君は紫%BARRELROLL%あるいは紫%BOOST%アクションを実行しても良い。"""
        "Obi-Wan Kenobi (Eta-2)":
           display_name: """Obi-Wan Kenobi"""
           text: """君かレンジ0-3の友軍の<b>Anakin Skywalker</b>宇宙船がマニューバを実行した後、もしその宇宙船のレンジ0-1の敵宇宙船が他の友軍宇宙船よりも多いとき、君は%FORCE%を1つ消費しても良い。もしそうするなら、その宇宙船はフォーカス・トークンを1つ得る。%LINEBREAK%<strong>Intuitive Controls:</strong> システム・フェイズの間、君は紫%BARRELROLL%あるいは紫%BOOST%アクションを実行しても良い。"""
        "Anakin Skywalker (Eta-2)":
           display_name: """Anakin Skywalker"""
           text: """君かレンジ0-3の友軍の<b>Obi-Wan Kenobi</b>宇宙船がマニューバを実行した後、もしその宇宙船のレンジ0-1の敵宇宙船が他の友軍宇宙船よりも多いとき、君は%FORCE%を1つ消費しても良い。もしそうするなら、その宇宙船は君が選んだ赤のトークンを1つ取り除く。%LINEBREAK%<strong>Intuitive Controls:</strong> システム・フェイズの間、君は紫%BARRELROLL%あるいは紫%BOOST%アクションを実行しても良い。"""
        "TransGalMeg Control Link":
           text: """<strong>Hyperspace Docking Ring:</strong> Delta-7 Aethersprite, Eta-2 ActissあるいはNimbus-class V-wing1つを君にドックできる。%LINEBREAK%宇宙船が君にドックされている際、君はその宇宙船のイニシアチブを得て、その宇宙船のダイヤルがアサインされる。君がマニューバを実行する際、その速度を1に減らす。君が上級マニューバを実行する前に、代わりに白の停止マニューバ(%STOP%)を実行し、その後君は90度あるいは180度回転しても良い。%LINEBREAK%君に宇宙船がドックされていない間、君はマニューバダイヤルをアサインされず、アクティベートあるいはエンゲージもしない。"""
        "Jango Fett":
           text: """君が防御するか主武装による攻撃を実行する際、もし敵宇宙船の公開したマニューバよりも君の公開したマニューバの方が難易度が低いなら、君は敵宇宙船の%FOCUS%の結果1つを空白の結果に変更しても良い。"""
        "Separatist Interceptor":
           text: """ %LINEBREAK%<strong>Networked Calculations:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Colicoid Interceptor":
           text: """ %LINEBREAK%<strong>Networked Calculations:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Phlac-Arphocc Prototype":
           text: """システム・フェイズの間、君は君のある宇宙船へのロックを消費してその宇宙船のダイヤルを見ても良い。%LINEBREAK%<strong>Networked Calculations:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Fearsome Predator":
           text: """<b>セットアップ:</b> 戦力の配置後、敵宇宙船1つに<b>Fearful Prey</b>を付ける。%LINEBREAK%<strong>Networked Calculations:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "DIS-347":
           text: """エンゲージメント・フェイズの開始時、君は友軍からのロックを持つレンジ1-3のオブジェクトへのロックを得ても良い。%LINEBREAK%<strong>Networked Calculations:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "DIS-T81":
           text: """君が防御するか攻撃を実行する際、君は敵宇宙船のファイアリング・アーク内にいる友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。%LINEBREAK%<strong>Networked Calculations:</strong> 君が防御するか攻撃を実行する際、君はレンジ0-1の友軍宇宙船のカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Lyttan Dree":
           text: """レンジ0-2の友軍宇宙船が攻撃を実行する際、もし君が防御者の%LEFTARC%あるいは%RIGHTARC%にいるなら、攻撃者は攻撃ダイスを1つ振り直しても良い。%LINEBREAK% <strong>Rotating Cannons:</strong> 君は%SINGLETURRETARC%インジケーターを君の%FRONTARC%あるいは%REARARC%にだけローテートできる。君は君の装備した%CANNON%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        '"Rampage"':
           text: """君が速度3-4のマニューバを実行した後、君は君の%SINGLETURRETARC%内レンジ0-1の宇宙船1つを選んでも良い。もしそうするなら、その宇宙船はストレイン・トークンを1つ得るか、もし君がダメージ状態なら2つ得る。%LINEBREAK% <strong>Rotating Cannons:</strong> 君は%SINGLETURRETARC%インジケーターを君の%FRONTARC%あるいは%REARARC%にだけローテートできる。君は君の装備した%CANNON%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        "Onyx Squadron Sentry":
           text: """%LINEBREAK% <strong>Rotating Cannons:</strong> 君は%SINGLETURRETARC%インジケーターを君の%FRONTARC%あるいは%REARARC%にだけローテートできる。君は君の装備した%CANNON%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        "Carida Academy Cadet":
           text: """%LINEBREAK% <strong>Rotating Cannons:</strong> 君は%SINGLETURRETARC%インジケーターを君の%FRONTARC%あるいは%REARARC%にだけローテートできる。君は君の装備した%CANNON%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        "Poe Dameron (HoH)":
           text: """レンジ0-2の友軍宇宙船が自身のアクティベーションでアクションを実行した後、君は%CHARGE%を2つ消費しても良い。もしそうするなら、その宇宙船は白のアクションを、それを赤と扱って実行しても良い。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Temmin Wexley (HoH)":
           text: """エンゲージメント・フェイズの開始時、レンジ0-3の各友軍T-70 X-wingは装備した%CONFIGURATION%アップグレードを裏返すためにストレイン・トークンを1つ得ても良い。もしそうするなら、その宇宙船はカリキュレート・トークンを1つ得る。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "C'ai Threnalli":
           text: """君がマニューバを完全に実行した後、もし君が友軍宇宙船を通過したなら、君は%EVADE%アクションを実行しても良い。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Nimi Chireen":
           text: """君が攻撃を実行する際、もし防御者のイニシアチブが君のイニシアチブよりも高いなら、君は空白の結果1つを%FOCUS%の結果に変更しても良い。%LINEBREAK%<strong>Weapon Hardpoint:</strong> 君は%CANNON%、%TORPEDO%あるいは%MISSILE%アップグレードを1つ装備できる。"""
        "Merl Cobben":
           text: """レンジ0-2の友軍宇宙船が主武装による攻撃を実行する際、もし君が防御者の%BULLSEYEARC%にいるなら、防御者は防御ダイスを1つ少なく振る。%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> 君は君の%SINGLETURRETARC%インジケーターを%FRONTARC%あるいは%REARARC%にのみ回転できる。君がアクションを実行した後、君は赤の%BOOST%あるいは赤の%ROTATEARC%アクションを実行しても良い。"""
        "Seftin Vanik":
           text: """君が%BOOST%アクションを実行した後、君はレンジ1の友軍宇宙船に回避トークンを転送しても良い。%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> 君は君の%SINGLETURRETARC%インジケーターを%FRONTARC%あるいは%REARARC%にのみ回転できる。君がアクションを実行した後、君は赤の%BOOST%あるいは赤の%ROTATEARC%アクションを実行しても良い。"""
        "Suralinda Javos":
           text: """君がマニューバを部分的に実行した後、君はストレイン・トークンを1つ得て、90度あるいは180度回転しても良い。%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> 君は君の%SINGLETURRETARC%インジケーターを%FRONTARC%あるいは%REARARC%にのみ回転できる。君がアクションを実行した後、君は赤の%BOOST%あるいは赤の%ROTATEARC%アクションを実行しても良い。"""
        "Wrobie Tyce":
           text: """君が攻撃レンジ1で防御した後、もし攻撃者が自分のダイスを修正したなら、攻撃者はデプリート・トークンを1つ得る。%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> 君は君の%SINGLETURRETARC%インジケーターを%FRONTARC%あるいは%REARARC%にのみ回転できる。君がアクションを実行した後、君は赤の%BOOST%あるいは赤の%ROTATEARC%アクションを実行しても良い。"""
        "Agent Terex":
           text: """<b>セットアップ:</b> 戦力の配置後、君が装備した%ILLICIT%アップグレードを好きな数選び、それらをTIE/fo FighterあるいはTIE/sf Fighterに装備させる。各宇宙船はこの方法で1つの%ILLICIT%だけを割り当てられる。%LINEBREAK% <b>ゲームの終了時:</b> すべての%ILLICIT%アップグレードをもとの宇宙船に戻す。"""
        "Commander Malarus (Xi Shuttle)":
           display_name: """Commander Malarus"""
           text: """レンジ0-2の友軍宇宙船が主武装による攻撃を実行する際、ダイスの修正ステップの前に、もしそれが1つ以上の空白の結果があるなら、その宇宙船は可能なら空白の結果を1つ振り直すために、ストレイン・トークンを1つ<b>得なければならない</b>。"""
        "Gideon Hask (Xi Shuttle)":
           display_name: """Gideon Hask"""
           text: """君かレンジ0-2の友軍の小型宇宙船がダメージ状態の防御者に主武装による攻撃を実行する際、もし攻撃者が2つ以下の攻撃ダイスを振ったなら、それはストレイン・トークンを1つ得て攻撃ダイスを追加で1つ振る。"""
        "Loyalist Volunteer":
           text: """<strong>Twin Ion Engines:</strong> アップグレード・カードの"TIE"制約を無視する。"""
        "Shadow Squadron Escort":
           text: """<strong>Twin Ion Engines:</strong> アップグレード・カードの"TIE"制約を無視する。"""
        "Wilhuff Tarkin":
           text: """システム・フェイズの間、君はレンジ1-3の君がロックしたオブジェクトを1つ選んでも良い。レンジ1-3の他の友軍宇宙船はそのオブジェクトへのロックを得ても良い。%LINEBREAK%<strong>Twin Ion Engines:</strong> アップグレード・カードの"TIE"制約を無視する。"""
        '"Klick"':
           text: """君がロックしたレンジ1-3の宇宙船が防御あるいは攻撃を実行する際、君は%CHARGE%を1つ消費してレンジ・ボーナスが適用されるのを妨げても良い。%LINEBREAK%<strong>Twin Ion Engines:</strong> アップグレード・カードの"TIE"制約を無視する。"""
        '"Contrail"':
           text: """君が防御するか攻撃を実行する際、もし君が公開したマニューバの方向が敵の公開したマニューバのものと同じなら、君は敵の%FOCUS%の結果のうち1つを空白の結果に変更しても良い。%LINEBREAK%<strong>Twin Ion Engines:</strong> アップグレード・カードの"TIE"制約を無視する。"""
        '"Odd Ball" (V-Wing)':
           display_name: """“Odd Ball”"""
           text: """君が赤のマニューバを完全に実行するか赤のアクションを実行した後に、君の%BULLSEYEARC%内に敵宇宙船がいるなら、君はその宇宙船へのロックを得ても良い。%LINEBREAK%<strong>Twin Ion Engines:</strong> アップグレード・カードの"TIE"制約を無視する。"""
        "Boba Fett (Separatist)":
           display_name: """Boba Fett"""
           text: """君が防御する際、レンジ0-2に他の友軍宇宙船がいないなら、君は空白の結果のうち1つを%FOCUS%の結果に変えても良い。"""
        "Zam Wesell":
           text: """<b>セットアップ:</b> %CHARGE%を2つ失う。%LINEBREAK% システム・フェイズの間に、君は君のシークレット・コンディションのうち1つを裏向きにつけても良い。<strong> %LINEBREAK% You Should Thank Me %LINEBREAK% You'd Better Mean Business</strong>"""
        "Jango Fett":
           text: """君が防御するか主武装による攻撃を実行する際、もし敵宇宙船の公開したマニューバよりも君の公開したマニューバの方が難易度が低いなら、君は敵宇宙船の%FOCUS%の結果1つを空白の結果に変更しても良い。"""

        "Hera Syndulla (B-Wing)":
           display_name: """Hera Syndulla"""
           text: """他のレンジ1-2の友軍宇宙船が防御するか攻撃を実行する際、ダイスの修正ステップの間、君は君のフォーカス・トークン、回避トークンあるいはロックのうち1つをその宇宙船に転送しても良い。"""
        "Netrem Pollard":
           text: """君がバレル・ロールをした後、君はレンジ0-1の、ストレス状態ではない友軍宇宙船を1つ選んでも良い。その宇宙船はストレス・トークンを1つ得て、その後君は180度回転する。"""
        "Hera Syndulla (A-Wing)":
           display_name: """Hera Syndulla"""
           text: """他のレンジ1-2の友軍宇宙船が防御するか攻撃を実行する際、ダイスの修正ステップの間、君は君のフォーカス・トークン、回避トークンあるいはロックのうち1つをその宇宙船に転送しても良い。%LINEBREAK%<strong>Vectored Thrusters:</strong> 君がアクションを実行した後、君は赤の%BOOST%アクションを実行しても良い。"""
        "Wedge Antilles (A-Wing)":
           display_name: """Wedge Antilles"""
           text: """君が主武装攻撃を実行する際、もし防御者が君の%FRONTARC%にいるなら、防御者は防御ダイスを1つ少なく振る。%LINEBREAK%<strong>Vectored Thrusters:</strong> 君がアクションを実行した後、君は赤の%BOOST%アクションを実行しても良い。"""
        "Sabine Wren (A-Wing)":
           display_name: """Sabine Wren"""
           text: """君が防御するか主武装攻撃を実行する際、もし攻撃レンジが1で君が敵宇宙船の%FRONTARC%内にいるなら、君は君の結果のうち1つを%EVADE%あるいは%HIT%の結果に変更しても良い。%LINEBREAK%<strong>Vectored Thrusters:</strong> 君がアクションを実行した後、君は赤の%BOOST%アクションを実行しても良い。"""
        "Derek Klivian":
           text: """君がロックを得るか消費した後、君は君自身から赤のトークンを1つ取り除いても良い。%LINEBREAK%<strong>Vectored Thrusters:</strong> 君がアクションを実行した後、君は赤の%BOOST%アクションを実行しても良い。"""
        "Ahsoka Tano (A-Wing)":
           display_name: """Ahsoka Tano"""
           text: """君がマニューバを完全に実行した後、君はレンジ1-2の友軍宇宙船を1つ選び%FORCE%を2つ消費しても良い。その宇宙船はたとえストレス状態でもアクションを1つ実行しても良い。%LINEBREAK%<strong>Vectored Thrusters:</strong> 君がアクションを実行した後、君は赤の%BOOST%アクションを実行しても良い。"""
        "Shara Bey (A-Wing)":
           display_name: """Shara Bey"""
           text: """君が防御するか主武装攻撃を実行する際、君は君が持っているその敵宇宙船のロックを消費し、%FOCUS%の結果を1つ君のダイスの結果に追加しても良い。 %LINEBREAK%<strong>Vectored Thrusters:</strong> 君がアクションを実行した後、君は赤の%BOOST%アクションを実行しても良い。"""

        "Darth Vader (TIE Defender)":
           display_name: """Darth Vader"""
           text: """君は攻撃中を除いて%FORCE%を消費することができない。%LINEBREAK%君が攻撃を実行する際、君は%FORCE%を1つ消費し、空白の結果を命中に変更しても良い。%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Captain Dobbs":
           text: """レンジ0-1の他の宇宙船が防御する際、結果の相殺ステップの前に、もし君がその攻撃アーク内にいて、かつイオン状態でなければ、君はイオン・トークンを1つ得て、%HIT%の結果1つをキャンセルしても良い。%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Vult Skerris":
           text: """<b>アクション:</b>ストレイン・トークンを1つ得て、%CHARGE%を1つ回復する。%LINEBREAK% 君がエンゲージする前に、君は%CHARGE%を1つ消費し、アクションを実行しても良い。%LINEBREAK%<strong>Full Throttle:</strong> 君が速度3-5のマニューバを完全に実行した後、君は%EVADE%アクションを実行しても良い。"""
        "Vult Skerris (TIE Interceptor)":
           display_name: """Vult Skerris"""
           text: """<b>アクション:</b>ストレイン・トークンを1つ得て、%CHARGE%を1つ回復する。%LINEBREAK% 君がエンゲージする前に、君は%CHARGE%を1つ消費し、アクションを実行しても良い。%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        "Gideon Hask (TIE Interceptor)":
           display_name: """Gideon Hask"""
           text: """君がダメージ状態の防御者に攻撃を実行する際、攻撃ダイスを追加で1つ振る。%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        "Commandant Goran":
           text: """エンゲージメント・フェイズの開始時、レンジ0-3の君よりもイニシアチブが低い友軍宇宙船を1つ選ぶ。選ばれた宇宙船は回避トークンを1つ得て、ストレスではない赤のトークン1つを取り除く。 %LINEBREAK% <strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        "Nash Windrider":
           text: """エンゲージメント・フェイズの間、レンジ0-3の友軍宇宙船が破壊された後、もしその宇宙船がこのフェイズ、エンゲージしなかったなら、君は%CHARGE%を1つ消費しても良い。もしそうするなら、その宇宙船は現在のイニシアチブでエンゲージする。%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        "Ciena Ree":
           text: """君が攻撃を実行した後、もしその防御者が破壊されたなら、ストレス・トークンを1つ得る。%LINEBREAK%レンジ0-3の友軍宇宙船が破壊された後、ストレス・トークンを1つ取り除く。%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""
        "Lieutenant Lorrir":
           text: """君がバレル・ロールをする際、君は%STRAIGHT%テンプレートの代わりに、(%BANKLEFT%あるいは%BANKRIGHT%)テンプレートを<b>使用しなければならない。</b>%LINEBREAK%<strong>Autothrusters:</strong> 君がアクションを実行した後、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを実行しても良い。"""

        "Kanan Jarrus (HWK-290)":
           display_name: """Kanan Jarrus"""
           text: """君か君の%SINGLETURRETARC%内の友軍宇宙船が防御する際、君は%FORCE%を1つ消費しても良い。もしそうするなら、攻撃者は攻撃ダイスを1つ少なく振る。"""
        "Tápusk":
           text: """終了フェイズの間、君の%SINGLETURRETARC%内の敵宇宙船が自動変化する%CHARGE%か%FORCE%を回復する前に、君は%CHARGE%を2つ消費しても良い。もしそうするなら、その宇宙船はその%CHARGE%あるいは%FORCE%を回復しない。"""
        "Gamut Key":
           text: """終了フェイズの開始時、君は%CHARGE%を2つ消費して、1つ以上の丸いトークンを持つ、君自身か君の%SINGLETURRETARC%内の宇宙船を選んでも良い。終了フェイズの間、その宇宙船から丸いトークンを取り除かない。"""
        "Arliz Hadrassian":
           text: """君が%FRONTARC%攻撃を実行する際、もし君がダメージ状態なら、君は君の%FOCUS%の結果1つを%CRIT%に変更しても良い。%LINEBREAK%君が防御する際、もし君がダメージ状態なら、防御ダイスの修正ステップの前に、君は君の%FOCUS%の結果1つを空白の結果に<b>変更しなければならない。</b>"""
        "Leema Kai":
           text: """君がエンゲージする前に、もし君がいずれの敵宇宙船の%FRONTARC%内にもいないのなら、君は君の%FULLFRONTARC%内の敵宇宙船へのロックを得ても良い。"""
        "Padric":
           text: """君がロックした友軍デバイスが爆発した後、そのデバイスのレンジ0-1の各敵宇宙船はストレイン・トークンを1つ得る。"""
        "New Republic Patrol":
           text: """%LINEBREAK%<strong>Intuitive Interface:</strong> 君が%TALENT%、%ILLICIT%、あるいは%MODIFICATION%アップグレードによってアクション・バーに追加されたアクションを実行した後、君は%CALCULATE%アクションを実行しても良い。"""
        "Kijimi Spice Runner":
           text: """%LINEBREAK%<strong>Intuitive Interface:</strong> 君が%TALENT%、%ILLICIT%、あるいは%MODIFICATION%アップグレードによってアクション・バーに追加されたアクションを実行した後、君は%CALCULATE%アクションを実行しても良い。"""
        "Corus Kapellim":
           text: """君がエンゲージする前に、君は君のファイアリング・アーク内レンジ0-1の宇宙船を1機選んでも良い。もしそうするなら、その宇宙船から君自身に緑のトークンを1つ転送する。%LINEBREAK%<strong>Intuitive Interface:</strong> 君が%TALENT%、%ILLICIT%、あるいは%MODIFICATION%アップグレードによってアクション・バーに追加されたアクションを実行した後、君は%CALCULATE%アクションを実行しても良い。"""
        "C'ai Threnalli (Y-Wing)":
           display_name: """C'ai Threnalli"""
           text: """君がマニューバを完全に実行した後、もし君が友軍宇宙船を通過したなら、君は%EVADE%アクションを実行しても良い。%LINEBREAK%<strong>Intuitive Interface:</strong> 君が%TALENT%、%ILLICIT%、あるいは%MODIFICATION%アップグレードによってアクション・バーに追加されたアクションを実行した後、君は%CALCULATE%アクションを実行しても良い。"""
        "Lega Fossang":
           text: """君が主武装あるいは%TURRET%攻撃を行う際、君はその攻撃アーク内の友軍のデバイスあるいはカリキュレート状態の友軍宇宙船につき1つ、攻撃ダイスを振り直しても良い。%LINEBREAK%<strong>Intuitive Interface:</strong> 君が%TALENT%、%ILLICIT%、あるいは%MODIFICATION%アップグレードによってアクション・バーに追加されたアクションを実行した後、君は%CALCULATE%アクションを実行しても良い。"""
        "Shasa Zaro":
           text: """君が防御した後、君は君の%FULLREARARC%にいてレンジ0-2の友軍宇宙船と、君の緑のトークンのうち1つを選んでも良い。もしそうするなら、その宇宙船は一致するトークンを得る。%LINEBREAK%<strong>Intuitive Interface:</strong> 君が%TALENT%、%ILLICIT%、あるいは%MODIFICATION%アップグレードによってアクション・バーに追加されたアクションを実行した後、君は%CALCULATE%アクションを実行しても良い。"""
        "Teza Nasz":
           text: """レンジ0-2の友軍宇宙船が攻撃を実行する際、もし防御者のそれぞれのサイドアーク(%LEFTARC%あるいは%RIGHTARC%)に、攻撃者の友軍である宇宙船がいるなら、攻撃者は攻撃ダイスを1つ振り直しても良い。%LINEBREAK%<strong>Intuitive Interface:</strong> 君が%TALENT%、%ILLICIT%、あるいは%MODIFICATION%アップグレードによってアクション・バーに追加されたアクションを実行した後、君は%CALCULATE%アクションを実行しても良い。"""
        "Wilsa Teshlo":
           text: """君が攻撃を実行した後、もし防御者が表向きのダメージ・カードを受け取ったなら、防御者は、装備したアップグレードの1つから自動変化しない%CHARGE%を1つ選び、その%CHARGE%を失わない限り、ストレイン・トークンを1つ得る。%LINEBREAK%<strong>Intuitive Interface:</strong> 君が%TALENT%、%ILLICIT%、あるいは%MODIFICATION%アップグレードによってアクション・バーに追加されたアクションを実行した後、君は%CALCULATE%アクションを実行しても良い。"""
        "Aftab Ackbar":
           text: """君が赤の基本マニューバを実行するか赤のアクションを実行した後、もし君がストレス・トークンをちょうど1つ持っているなら、君はストレイン・トークンを1つ得てそのストレス・トークンを取り除いても良い。%LINEBREAK%<strong>Intuitive Interface:</strong> 君が%TALENT%、%ILLICIT%、あるいは%MODIFICATION%アップグレードによってアクション・バーに追加されたアクションを実行した後、君は%CALCULATE%アクションを実行しても良い。"""
        "Zorii Bliss":
           text: """レンジ1の宇宙船が、それのアクションの実行ステップにアクションを実行した後、もしそのアクションが君のアクション・バーにあるなら、君は%CHARGE%を1つ消費し、そのアクションを赤と扱って実行しても良い。%LINEBREAK%<strong>Intuitive Interface:</strong> 君が%TALENT%、%ILLICIT%、あるいは%MODIFICATION%アップグレードによってアクション・バーに追加されたアクションを実行した後、君は%CALCULATE%アクションを実行しても良い。"""
        "Kylo Ren (TIE Whisper)":
           display_name: """Kylo Ren"""
           text: """君の%BULLSEYEARC%内の敵宇宙船が裏向きのダメージ・カードを受け取る前に、君は%FORCE%を1つ消費しても良い。もしそうするなら、それは代わりに表向きのダメージ・カードを受け取る。%LINEBREAK%<strong>Heavy Weapon Turret:</strong> 君は君の%SINGLETURRETARC%インジケーターを、%FRONTARC%か%REARARC%にだけローテートすることができる。君は装備した%MISSILE%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        '"Wrath"':
           text: """君が%BULLSEYEARC%攻撃を実行した後、もし君が1つ以上のロック以外の赤かオレンジのトークンを持っているなら、君は違うターゲットに対してボーナス攻撃を行っても良い。%LINEBREAK%<strong>Heavy Weapon Turret:</strong> 君は君の%SINGLETURRETARC%インジケーターを、%FRONTARC%か%REARARC%にだけローテートすることができる。君は装備した%MISSILE%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        '"Nightfall"':
           text: """君がマニューバを完全に実行するか、%BOOST%アクションを実行した後、君が通過した各宇宙船はジャム・トークンを2つ得る。%LINEBREAK%<strong>Heavy Weapon Turret:</strong> 君は君の%SINGLETURRETARC%インジケーターを、%FRONTARC%か%REARARC%にだけローテートすることができる。君は装備した%MISSILE%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        '"Whirlwind"':
           text: """君がエンゲージする前に、君は好きな数のジャム・トークンを取り除いても良く、その後、君は君を%FRONTARC%内に持つ敵宇宙船につき1つのフォーカス・トークンを得ても良い。%LINEBREAK%<strong>Heavy Weapon Turret:</strong> 君は君の%SINGLETURRETARC%インジケーターを、%FRONTARC%か%REARARC%にだけローテートすることができる。君は装備した%MISSILE%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        "709th Legion Ace":
           text: """%LINEBREAK%<strong>Heavy Weapon Turret:</strong> 君は君の%SINGLETURRETARC%インジケーターを、%FRONTARC%か%REARARC%にだけローテートすることができる。君は装備した%MISSILE%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        "Red Fury Zealot":
           text: """%LINEBREAK%<strong>Heavy Weapon Turret:</strong> 君は君の%SINGLETURRETARC%インジケーターを、%FRONTARC%か%REARARC%にだけローテートすることができる。君は装備した%MISSILE%アップグレードの%FRONTARC%必要条件を%SINGLETURRETARC%として<b>扱わなければならない</b>。"""
        "Sienar-Jaemus Test Pilot":
           text: """%LINEBREAK%<strong>Pursuit Thrusters:</strong> システム・フェイズの間、 君は%BOOST%アクションを実行しても良い。"""
        "First Order Cadet":
           text: """%LINEBREAK%<strong>Pursuit Thrusters:</strong> システム・フェイズの間、 君は%BOOST%アクションを実行しても良い。"""
        '"Grudge"':
           text: """レンジ0-2の友軍の爆弾あるいは機雷が爆発する際、それの効果の解決のために攻撃ダイスが振られるたびに、君はそれらのダイスのうち1つを振り直しても良い。%LINEBREAK%<strong>Pursuit Thrusters:</strong> システム・フェイズの間、 君は%BOOST%アクションを実行しても良い。"""
        '"Dread"':
           text: """君がリロードした後、君の%BULLSEYEARC%内の各宇宙船はデプリート・トークンを1つ得る。%LINEBREAK%<strong>Pursuit Thrusters:</strong> システム・フェイズの間、 君は%BOOST%アクションを実行しても良い。"""
        '"Scorch" (TIE/Se Bomber)':
           display_name: '''"Scorch"'''
           text: """レンジ0-1の友軍宇宙船が主武装攻撃を行う際、それは%HIT%の結果を1つ消費しても良い。もしそうするなら、防御の後に、防御者はストレイン・トークンを1つ得る。%LINEBREAK%<strong>Pursuit Thrusters:</strong> システム・フェイズの間、 君は%BOOST%アクションを実行しても良い。"""
        '"Breach"':
           text: """君がマニューバを完全に実行するか、%BOOST%アクションを実行した後、もし君が敵宇宙船を通過したなら、君はその宇宙船へのロックを得ても良い。%LINEBREAK%<strong>Pursuit Thrusters:</strong> システム・フェイズの間、 君は%BOOST%アクションを実行しても良い。"""
        "Fenn Rau (Rebel Fang)":
           display_name: """Fenn Rau"""
           text: """レンジ1-2の友軍宇宙船がエンゲージする前に、もしその宇宙船の%FRONTARC%レンジ1に敵宇宙船がいるなら、その友軍宇宙船はロックではない赤のトークンを1つ取り除いても良い。%LINEBREAK%<strong>Concordia Faceoff:</strong> 君が防御する際、もし攻撃レンジが1であり、君が攻撃者の%FRONTARC%内にいるとき、結果の1つを%EVADE%に変更する。"""
        "Bodica Venj":
           display_name: """Bodica Venj"""
           text: """他の友軍宇宙船が防御した後、もし君がデプリート状態でないなら、君は攻撃者に対してボーナスの主武装攻撃を実行しても良い。もし君がそうするなら、その攻撃の実行の後、デプリート・トークンを1つ得る。%LINEBREAK%<strong>Concordia Faceoff:</strong> 君が防御する際、もし攻撃レンジが1であり、君が攻撃者の%FRONTARC%内にいるとき、結果の1つを%EVADE%に変更する。"""
        "Dirk Ullodin":
           display_name: """Dirk Ullodin"""
           text: """君が赤のマニューバを完全に実行するか、赤のアクションを実行した後、君は君の%FRONTARC%内レンジ1の敵宇宙船へのロックを得ても良い。%LINEBREAK%<strong>Concordia Faceoff:</strong> 君が防御する際、もし攻撃レンジが1であり、君が攻撃者の%FRONTARC%内にいるとき、結果の1つを%EVADE%に変更する。"""
        "Clan Wren Volunteer":
           display_name: """Clan Wren Volunteer"""
           text: """君がレンジ1で攻撃を実行する際、もし君が公開したマニューバの速度が、レンジ1の友軍宇宙船のものと一致するなら、君は攻撃ダイスを1つ振り直しても良い。%LINEBREAK%<strong>Concordia Faceoff:</strong> 君が防御する際、もし攻撃レンジが1であり、君が攻撃者の%FRONTARC%内にいるとき、結果の1つを%EVADE%に変更する。"""
        "Mandalorian Royal Guard":
           display_name: """Mandalorian Royal Guard"""
           text: """友軍の小型ではない宇宙船が防御する際、もし君がその攻撃アーク内にいるなら、君はデプリート・トークン1つとストレイン・トークン1つを得ても良い。もし君がそうするなら、防御者は結果を1つ%EVADE%の結果に変更しても良い。%LINEBREAK%<strong>Concordia Faceoff:</strong> 君が防御する際、もし攻撃レンジが1であり、君が攻撃者の%FRONTARC%内にいるとき、結果の1つを%EVADE%に変更する。"""
        "ISB Jingoist":
           display_name: """ISB Jingoist"""
           text: """君がエンゲージする前に、君は君の%FRONTARC%内レンジ0-1の敵宇宙船を1つ選んでも良い。もし君がそうするなら、その宇宙船は緑のトークンを1つ取り除くことを選ばない限り、君が選んだデプリートあるいはストレイン・トークンを1つ得る。"""
        "Moff Gideon":
           display_name: """Moff Gideon"""
           text: """レンジ1-3の敵宇宙船が防御する際、君は%CHARGE%を1つ消費し、防御者からレンジ0-1の友軍宇宙船を1つ選んでも良い。もし君がそうするなら、この攻撃の間、防御ダイスを修正できず、そして選んだ友軍宇宙船はストレイン・トークンを1つ得る。"""
        "Maul":
           display_name: """Maul"""
           text: """君が%COORDINATE%アクションを実行する際、もし君が君よりイニシアチブの低い宇宙船を選んだなら、君は%FORCE%を1つ消費しても良い。もし君がそうするなら、そのアクションを白として扱い、そして君は君よりイニシアチブの低い宇宙船を追加でコーディネートしても良い;この方法で君がコーディネートした各宇宙船はストレイン・トークンを1つ得る。"""
        "Bo-Katan Kryze":
           display_name: """Bo-Katan Kryze"""
           text: """レンジ0-2の友軍宇宙船がアクティベートする前に、君は%CHARGE%を1つ消費しても良い。もし君がそうするなら、その宇宙船はストレイン・トークンを1つ得て、ストレスではない赤かオレンジのトークン1つを取り除いても良い。"""
        "Bo-Katan Kryze (Republic)":
           display_name: """Bo-Katan Kryze"""
           text: """君がマニューバを完全に実行した後、君はデプリート・トークンを1つ受け取り、君の%FRONTARC%内レンジ1-2のオブジェクトを1つ選んでも良い。もし君がそうするなら、他の友軍宇宙船はそのオブジェクトをロックする%LOCK%アクションを実行しても良い。"""
        "Captain Hark":
           display_name: """Captain Hark"""
           text: """君が[0 %STOP%]マニューバを公開した後、もし君が<b>Swivel Wings (Down)</b>を装備しているなら、君は代わりに同じ難易度の[1 %BANKLEFT%]あるいは[1 %BANKRIGHT%]サイドスリップ・マニューバを実行しなければならない。君がそのマニューバを実行した後、君は<b>Swivel Wings (Down)</b>を<strong>裏返さなければならない。</strong>"""
        "Pre Vizsla":
           display_name: """Pre Vizsla"""
           text: """君が攻撃を実行する際、もし防御者のイニシアチブが君のイニシアチブ以上なら、君は%CHARGE%を2つ消費して攻撃ダイスを追加で1つ振っても良い。"""
        "Rook Kast":
           display_name: """Rook Kast"""
           text: """君がエンゲージする前に、君はストレイン・トークンを1つ得ても良い。君が主武装攻撃を実行する際、もし君がストレイン状態なら、君は君の空白あるいは%FOCUS%の結果のうち1つを%HIT%の結果に変更しても良い。"""
        "Ezra Bridger (Gauntlet Fighter)":
           display_name: """Ezra Bridger"""
           text: """君が防御するか攻撃を実行する際、もし君がストレス状態なら、君は%FORCE%を1つ消費して%FOCUS%の結果を2つまで%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Chopper (Gauntlet Fighter)":
           display_name: """Chopper"""
           text: """エンゲージメント・フェイズの開始時、レンジ0の各敵宇宙船は、ジャム・トークンを2つ得る。"""
        "The Mandalorian":
           display_name: """The Mandalorian"""
           text: """君が防御するか攻撃を実行する際、もし君が2つ以上の敵宇宙船の%FRONTARC%レンジ1-2の中にいるなら、君は君の空白の結果のうち1つを%FOCUS%の結果に変更しても良い。"""
        "Q9-0":
           display_name: """Q9-0"""
           text: """君が上級マニューバを完全に実行した後、君はたとえストレス状態でも、%CALCULATE%あるいは%BARRELROLL%アクションを実行しても良い。もし君がそうするなら、ストレイン・トークンを1つ得る。"""
        "Guild Bounty Hunter":
           display_name: """Guild Bounty Hunter"""
           text: """君が攻撃レンジ1-2で攻撃を実行する際、君は君の装備している%ILLICIT%アップグレードのうち1つから、自動変化しない%CHARGE%を1つ消費し、%FOCUS%の結果のうち1つを%CRIT%の結果に変更しても良い。"""

        # Epic Ships
        "Republic Judiciary":
           display_name: """Republic Judiciary"""
           text: """<i class = flavor_text>The Galactic Republic uses small, swift warships such as the CR90 corvette to respond rapidly to Separatist incursions across the galaxy.</i> %LINEBREAK% <strong>Broadside Batteries:</strong> 君はレンジ1-4でロックを得ることと主武装による攻撃ができる。"""
        "Alderaanian Guard":
           display_name: """Alderaanian Guard"""
           text: """<i class = flavor_text>A craft used since before the Clone Wars, the CR90 corvette is favored by the Royal House of Alderaan for its versatility.</i> %LINEBREAK% <strong>Broadside Batteries:</strong> 君はレンジ1-4でロックを得ることと主武装による攻撃ができる。"""
        "Outer Rim Patrol":
           display_name: """Outer Rim Patrol"""
           text: """<i class = flavor_text>The <untalic>Raider</untalic>-class corvette is one of the Empire's smallest warships, often used for reconnaissance missions, surgical strikes, or suppressing enemy starfighters with its powerful ordnance.</i> %LINEBREAK% <strong>Concentrated Batteries:</strong> 君が主武装、%TORPEDO%あるいは%MISSILE%による攻撃を実行する際、もし防御者が君の%BULLSEYEARC%内にいるなら、ダイスを追加で1つ振る。"""
        "First Order Collaborators":
           display_name: """First Order Collaborators"""
           text: """<i class = flavor_text>The First Order's supporters make use of former Imperial vessels, such as the <untalic>Raider</untalic>-class corvette. Though it has outlived the regime that created it, this craft still spreads terror across the galaxy.</i> %LINEBREAK% <strong>Concentrated Batteries:</strong> 君が主武装、%TORPEDO%あるいは%MISSILE%による攻撃を実行する際、もし防御者が君の%BULLSEYEARC%内にいるなら、ダイスを追加で1つ振る。"""
        "Echo Base Evacuees":
           display_name: """Echo Base Evacuees"""
           text: """<i class = flavor_text>The GR-75 medium transport acquitted itself well at battles such as the evacuation of Hoth, where several of these ships were pivotal to the Rebel forces' escape.</i> %LINEBREAK% <strong>Resupply Craft:</strong> レンジ0-1の他の友軍宇宙船がアクションを実行した後、君は%ENERGY%を1つ消費しても良い。もしそうするなら、それはオレンジあるいは赤のトークンを1つ取り除くか、シールドを1つ回復する。"""
        "New Republic Volunteers":
           display_name: """New Republic Volunteers"""
           text: """<i class = flavor_text>In use since the Galactic Civil War, groups within the New Republic still utilize the GR-75 medium transport for supply and aid missions.</i> %LINEBREAK% <strong>Resupply Craft:</strong> レンジ0-1の他の友軍宇宙船がアクションを実行した後、君は%ENERGY%を1つ消費しても良い。もしそうするなら、それはオレンジあるいは赤のトークンを1つ取り除くか、シールドを1つ回復する。"""
        "Outer Rim Garrison":
           display_name: """Outer Rim Garrison"""
           text: """<i class = flavor_text>Capable of carrying TIE fighters and operating independently for long periods of time, the <untalic>Gozanti</untalic>-class cruiser is a common sight in the skies of downtrodden worlds across the Outer Rim.</i> %LINEBREAK% <strong>Docking Clamps:</strong> 君は小型船を4つまでドックできる。"""
        "First Order Sympathizers":
           display_name: """First Order Sympathizers"""
           text: """<i class = flavor_text>The First Order's swift rise to power rests upon ruthless innovation. However, sympathizers often repurpose Imperial designs, like the venerable <untalic>Gozanti</untalic>-class cruiser, in surveillance and patrol operations.</i> %LINEBREAK% <strong>Docking Clamps:</strong> 君は小型船を4つまでドックできる。"""
        "Separatist Privateers":
           display_name: """Separatist Privateers"""
           text: """<i class = flavor_text>The Separatist Alliance makes use of all manner of unsavory contacts in its fight against the Galactic Republic, including corsairs and criminal cartels.</i> %LINEBREAK% <strong>Overdrive Burners:</strong> 君が防御する際、もし公開されたマニューバが速度3-5なら、防御ダイスを追加で1つ振る。"""
        "Syndicate Smugglers":
           display_name: """Syndicate Smugglers"""
           text: """<i class = flavor_text>Vessels like the C-ROC Cruiser allow criminal operations across the Outer Rim to move massive amounts of illicit materials, or project power that can bully small colonies into compliance.</i> %LINEBREAK% <strong>Overdrive Burners:</strong> 君が防御する際、もし公開されたマニューバが速度3-5なら、防御ダイスを追加で1つ振る。"""
        "Colicoid Destroyer":
           display_name: """Colicoid Destroyer"""
           text: """<i class = flavor_text>Designed by the Colicoid Creation Nest and equipped with powerful tentacles and a massive drill to tear through the hull of even the toughest starships and fortifications, the Trident-class Assault Ship is a terrifying testament to the threat posed by the Separatist Alliance.</i> %LINEBREAK% <b>Tractor Grasp:</b> 君が <b>Tractor Tentacles</b> 攻撃を実行し命中した後、防御者はトラクター・トークンを1つ得る。"""
        "Lawless Pirates":
           display_name: """Lawless Pirates"""
           text: """<i class = flavor_text>The Separatist Alliance has close ties to certain mercenaries and criminal groups and, as the war rages on, its technology sometimes finds its way into unsavory hands.</i> %LINEBREAK%  <b>Tractor Grasp:</b> 君が <b>Tractor Tentacles</b> 攻撃を実行し命中した後、防御者はトラクター・トークンを1つ得る。"""


    upgrade_translations =
        "0-0-0":
           display_name: """0-0-0"""
           text: """エンゲージメント・フェイズの開始時、君はレンジ0-1の敵宇宙船を1つ選んでもよい。もしそうするなら、その宇宙船がストレス・トークンを1つ得ることを選ばない限り、カリキュレート・トークンを1つ得る。"""
        "4-LOM":
           display_name: """4-LOM"""
           text: """君が攻撃を実行する際、攻撃ダイスを振った後、君は緑のトークンのタイプを1つ宣言しても良い。もしそうするなら、イオン・トークンを2つ得て、この攻撃の間、防御者は宣言したタイプのトークンを消費できない。"""
        "Andrasta":
           display_name: """Andrasta"""
           text: """ """
        "Black One":
           display_name: """Black One"""
           text: """君が%SLAM%アクションを実行した後、%CHARGE%を1つ失う。その後君はイオン・トークンを1つ得て武装解除トークンを1つ取り除いても良い。%LINEBREAK%もし君の%CHARGE%がアクティブではないなら、君は%SLAM%アクションを実行できない。"""
        "Dauntless":
           display_name: """Dauntless"""
           text: """君がマニューバを部分的に実行した後、君は白のアクション1つを、そのアクションが赤であると扱って実行しても良い。"""
        "Ghost":
           display_name: """Ghost"""
           text: """君はAtack ShuttleあるいはSheathipede-class Shuttle1つをドックできる。%LINEBREAK%君はドックした宇宙船を、君の後ろのガイドからのみ配置できる。"""
        "Havoc":
           display_name: """Havoc"""
           text: """ """
        "Hound's Tooth":
           display_name: """Hound’s Tooth"""
           text: """Z-95-AF4 Headhunterを1つ君にドックできる。"""
        "IG-2000":
           display_name: """IG-2000"""
           text: """君は<strong>IG-2000</strong>アップグレードを持つ他の友軍の各宇宙船のパイロット能力を持つ。"""
        "Marauder":
           display_name: """Marauder"""
           text: """君が%REARARC%の主武装による攻撃を実行する際、君は攻撃ダイスを1つ振り直しても良い。%LINEBREAK%%GUNNER%スロットを追加する。"""
        "Millennium Falcon":
           display_name: """Millennium Falcon"""
           text: """君が防御する際、もし君が回避状態なら、君は防御ダイスを1つ振り直しても良い。"""
        "Mist Hunter":
           display_name: """Mist Hunter"""
           text: """ """
        "Moldy Crow":
           display_name: """Moldy Crow"""
           text: """値が3の%FRONTARC%主武装攻撃を得る。%LINEBREAK%終了フェイズの間、2つまでフォーカス・トークンを取り除かない。"""
        "Outrider":
           display_name: """Outrider"""
           text: """君が障害物によって妨害された攻撃を実行する際、防御者は防御ダイスを1つ少なく振る。%LINEBREAK%君がマニューバを完全に実行した後、もし君が障害物を通過するか、障害物に重なったとき、君は赤あるいはオレンジのトークンを1つ取り除いても良い。"""
        "Phantom":
           display_name: """Phantom"""
           text: """君はレンジ0-1でドックできる。"""
        "Punishing One":
           display_name: """Punishing One"""
           text: """君が主武装による攻撃を実行する際、もし防御者が%FRONTARC%内にいるなら、攻撃ダイスを追加で1つ振る。%LINEBREAK%%CREW%スロットを取り除く。%ASTROMECH%スロットを追加する。"""
        "ST-321":
           display_name: """ST-321"""
           text: """君が%COORDINATE%アクションを実行した後、君は君がコーディネートした宇宙船のレンジ0-3の敵宇宙船を1つ選んでも良い。もしそうするなら、君はその敵宇宙船へのロックを、距離の制限を無視して得る。"""
        "Scimitar":
           display_name: """Scimitar"""
           text: """<b>セットアップ:</b> 戦力の配置ステップ、君はクロークしても良い。%LINEBREAK%君がデクロークした後、君は君の%BULLSEYEARC%内の敵宇宙船を選んでも良い。もしそうするなら、それはジャム・トークンを1つ得る。"""
        "Shadow Caster":
           display_name: """Shadow Caster"""
           text: """君が攻撃を実行しそれが命中した後、もし防御者が君の%SINGLETURRETARC%内かつ%FRONTARC%内にいるとき、防御者はトラクター・トークンを1つ受け取る。"""
        "Slave I":
           display_name: """Slave I"""
           text: """君がターン[%TURNLEFT%あるいは%TURNRIGHT%]あるいはバンク[%BANKLEFT%あるいは%BANKRIGHT%]マニューバを公開した後、君はダイヤルを同じ速度、同じ向きの左右逆のマニューバにセットしても良い。%LINEBREAK%%TORPEDO%スロットを追加する。"""
        "Virago":
           display_name: """Virago"""
           text: """終了フェイズの間、君は%CHARGE%を1つ消費して、赤の%BOOST%アクションを実行しても良い。%LINEBREAK%%MODIFICATION%スロットを追加する。"""
        "Soulless One":
           display_name: """Soulless One"""
           text: """君が防御する際、もし攻撃者が君のファイアリング・アーク外にいるなら、君は防御ダイスを1つ振り直しても良い。"""
        "Ablative Plating":
           display_name: """Ablative Plating"""
           text: """君が障害物あるいは友軍の爆弾の爆発からダメージを受けようとする前に、君は%CHARGE%を1つ消費しても良い。もしそうするなら、ダメージを1つ軽減する。"""
        "Admiral Sloane":
           display_name: """Admiral Sloane"""
           text: """レンジ0-3の他の友軍宇宙船が防御した後、もしそれが破壊されたなら、攻撃者はストレス・トークンを2つ得る。%LINEBREAK%レンジ0-3の友軍宇宙船が、ストレス状態の宇宙船に対して攻撃を実行する際、それは攻撃ダイスを1つ振り直しても良い。"""
        "Adv. Proton Torpedoes":
           display_name: """Adv. Proton Torpedoes"""
           text: """<b>攻撃 (%LOCK%):</b> %CHARGE%を1つ消費する。%HIT%の結果1つを%CRIT%に変更する。"""
        "Advanced Optics":
           display_name: """Advanced Optics"""
           text: """君が攻撃を実行する際、君はフォーカス・トークンを1つ消費して、空白の結果1つを%HIT%の結果に変更しても良い。"""
        "Advanced SLAM":
           display_name: """Advanced SLAM"""
           text: """君が%SLAM%アクションを実行した後、もし君がそのマニューバを完全に実行したなら、君は君のアクション・バーの白のアクションを赤と扱って実行しても良い。"""
        "Advanced Sensors":
           display_name: """Advanced Sensors"""
           text: """君が君のダイヤルを公開した後、君はアクションを1つ実行しても良い。%LINEBREAK%もしそうするなら、君はこのアクティベーションの間、君は他のアクションを実行できない。"""
        "Afterburners":
           display_name: """Afterburners"""
           text: """君が速度3-5のマニューバを完全に実行した後、君は%CHARGE%を1つ消費し、%BOOST%アクションを実行しても良い(たとえストレス状態であっても)。"""
        "Agent Kallus":
           display_name: """Agent Kallus"""
           text: """<b>セットアップ:</b> 戦力の配置後、敵宇宙船1つに<strong>Hunted</strong>コンディションをつける。%LINEBREAK%君が<strong>Hunted</strong>コンディションがついている宇宙船に対して攻撃を実行する際、君は%FOCUS%の結果の1つを%HIT%の結果に変更しても良い。"""
        "Agile Gunner":
           display_name: """Agile Gunner"""
           text: """終了フェイズの間、君は君の%SINGLETURRETARC%インジケーターを回転させても良い。"""
        "Autoblasters":
           text: """<b>攻撃:</b> もし防御者が君の%BULLSEYEARC%内にいるなら、攻撃ダイスを1つ追加で振る。結果の相殺ステップの間、君が防御者の%FRONTARC%内にいないなら、%EVADE%の結果で%CRIT%の結果をキャンセルできない。"""
        "BB Astromech":
           display_name: """BB Astromech"""
           text: """君が青のマニューバを実行する前に、君は%CHARGE%を1つ消費して、%BARRELROLL%アクションを実行しても良い。"""
        "BB-8":
           display_name: """BB-8"""
           text: """君が青のマニューバを実行する前に、君は%CHARGE%を1つ消費して、%BARRELROLL%あるいは%BOOST%アクションを実行しても良い。"""
        "BT-1":
           display_name: """BT-1"""
           text: """君が攻撃を実行する際、君は防御者が持っているストレス・トークン1つごとに%HIT%の結果1つを%CRIT%に変更しても良い。"""
        "Barrage Rockets":
           display_name: """Barrage Rockets"""
           text: """<b>攻撃 (%FOCUS%):</b> %CHARGE%を1つ消費する。もし防御者が君の%BULLSEYEARC%内にいるなら、君は%CHARGE%を1つ以上消費して、同じ数の攻撃ダイスを振り直しても良い。"""
        "Battle Meditation":
           display_name: """Battle Meditation"""
           text: """君は制限宇宙船をコーディネートできない。%LINEBREAK%君が紫の%COORDINATE%アクションを実行する際、君は追加で友軍の同じタイプの非制限宇宙船1つをコーディネートしても良い。両方の宇宙船は同じアクションを実行しなければならない。"""
        "Baze Malbus":
           display_name: """Baze Malbus"""
           text: """君が%FOCUS%アクションを実行する際、君はそれを赤として扱っても良い。もしそうするなら、君はレンジ0-1の敵宇宙船1つにつき追加のフォーカス・トークン(最大で2つまで)を得る。"""
        "Biohexacrypt Codes":
           display_name: """Biohexacrypt Codes"""
           text: """君がコーディネートあるいはジャムを実行する際、もし君が宇宙船にロックを持っているなら、君はそのロックを消費し、距離の制限を無視してその宇宙船を選んでも良い。"""
        "Bistan":
           display_name: """Bistan"""
           text: """君が主武装による攻撃を実行した後、君がフォーカス状態なら、君はボーナスの%SINGLETURRETARC%攻撃を、このラウンド君がまだ攻撃していない宇宙船に対して実行しても良い。"""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """<b>セットアップ:</b> リザーブ状態で開始する。%LINEBREAK%セットアップの終了時、君自身を障害物のレンジ0で、敵宇宙船のレンジ3よりも離れた場所に置く。"""
        "Bomblet Generator":
           display_name: """Bomblet Generator"""
           text: """<b>爆弾</b>%LINEBREAK%システム・フェイズの間に、君は%CHARGE%を1つ消費し、1%STRAIGHT%テンプレートを使ってBomletを投下しても良い。%LINEBREAK%アクティベーション・フェイズの開始時、君はシールドを1つ消費し、%CHARGE%を2つ回復しても良い。"""
        "Bossk":
           display_name: """Bossk"""
           text: """君が主武装による攻撃を実行し、命中しなかった後、君がストレス状態でなければ、君はストレス・トークンを1つ受け取り、同じターゲットに対してボーナスの主武装による<b>攻撃を実行しなければならない</b>。"""
        "Brilliant Evasion":
           display_name: """Brilliant Evasion"""
           text: """君が防御する際、もし君が攻撃者の%BULLSEYEARC%内にいないなら、君は%FORCE%を1つ消費し、君の%FOCUS%の結果の2つを%EVADE%の結果に変更しても良い。"""
        "C-3PO":
           display_name: """C-3PO"""
           text: """防御ダイスを振る前、君はカリキュレーション・トークンを1つ消費し、1以上の数を推測して発言しても良い。もしそうして、回避の結果の数と推測の数がちょうど同じなら、%EVADE%の結果を1つ追加する。%LINEBREAK%君が%CALCULATE%アクションを実行した後、カリキュレート・トークンを1つ得る。"""
        "C-3PO (Resistance)":
           display_name: """C-3PO"""
           text: """君がコーディネートする際、君はレンジ2より遠い、アクション・バーに%CALCULATE%がある友軍宇宙船を選ぶことができる。%LINEBREAK%君が%CALCULATE%あるいは%COORDINATE%アクションを実行した後、カリキュレート・トークンを1つ得る。"""
        "Cad Bane":
           display_name: """Cad Bane"""
           text: """君がデバイスを投下するか射出した後、君は赤の%BOOST%アクションを実行しても良い。"""
        "Calibrated Laser Targeting":
           display_name: """Calibrated Laser Targeting"""
           text: """君が主武装による攻撃を実行する際、もし防御者が%BULLSEYEARC%内にいるなら、%FOCUS%の結果を1つ追加する。"""
        "Captain Phasma":
           display_name: """Captain Phasma"""
           text: """エンゲージメント・フェイズの終了時、レンジ0-1のストレス状態ではない各敵宇宙船はストレス・トークンを1つ得る。"""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """システム・フェイズの間、君はレンジ1-2の敵宇宙船を1つ選び、向きと速度を推測し発言し、その後その宇宙船のダイヤルを見ても良い。もし選んだ宇宙船の向きと速度が君の推測と一致するなら、君は君のダイヤルを別のマニューバにセットしても良い。"""
        "Chancellor Palpatine":
           display_name: """Chancellor Palpatine"""
           text: """Chancellor Palpatine:%LINEBREAK%<b>セットアップ:</b> この面を表にして装備する。%LINEBREAK%君の防御後、攻撃者がレンジ0-2にいるなら、君は%FORCE%を1つ消費しても良い。もしそうするなら、攻撃者はストレス・トークンを1つ得る。%LINEBREAK%終了フェイズの間、君はこのカードを裏返しても良い。%LINEBREAK%Darth Sidious%LINEBREAK%君が紫の%COORDINATE%アクションを実行した後、君がコーディネートした宇宙船はストレス・トークンを得る。その後その宇宙船はフォーカス・トークンを1つ得るか、%FORCE%を1つ回復する。"""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """エンゲージメント・フェイズの開始時、君は%CHARGE%を2つ消費し、表向きのダメージ・カードを1枚修理しても良い。"""
        "Chewbacca (Scum)":
           display_name: """Chewbacca"""
           text: """終了フェイズの開始時、君はフォーカス・トークンを1つ消費し、表向きのダメージ・カードを1枚修理しても良い。"""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca"""
           text: """<b>セットアップ:</b> %CHARGE%を1つ失う。%LINEBREAK%レンジ0-3の友軍宇宙船がダメージ・カードを1枚受け取った後、%CHARGE%を1つ回復する。%LINEBREAK%君が攻撃を実行する際、君は%CHARGE%を2つ消費し、%FOCUS%の結果の1つを%CRIT%の結果に変更しても良い。"""
        "Ciena Ree":
           display_name: """Ciena Ree"""
           text: """君が%COORDINATE%アクションを実行した後、もし君がコーディネートした宇宙船が%BARRELROLL%あるいは%BOOST%アクションを実行したなら、それはストレス・トークンを1つ得て、90度回転しても良い。"""
        "Cikatro Vizago":
           display_name: """Cikatro Vizago"""
           text: """終了フェイズの間、君はレンジ0-1の友軍宇宙船に装備された%ILLICIT%アップグレードを2つ選んでも良い。もしそうするなら、君はそれらアップグレードを入れ替えても良い。%LINEBREAK%<b>ゲームの終了時:</b> すべての%ILLICIT%アップグレードをもとの宇宙船に戻す。"""
        "Cloaking Device":
           display_name: """Cloaking Device"""
           text: """<b>アクション:</b> %CHARGE%を1つ消費して%CLOAK%アクションを実行する。%LINEBREAK%プランニング・フェイズの開始時、攻撃ダイスを1つ振る。%FOCUS%の結果なら、デクロークするか君のクローク・トークンを捨てる。"""
        "Clone Commander Cody":
           display_name: """Clone Commander Cody"""
           text: """君が攻撃を実行しそれがミスした後、もし%HIT%/%CRIT%の結果が1つ以上相殺されたなら、防御者はストレイン・トークンを1つ得る。"""
        "Cluster Missiles":
           display_name: """Cluster Missiles"""
           text: """<b>攻撃 (%LOCK%):</b> %CHARGE%を1つ消費する。この攻撃の後、君は防御者のレンジ0-1の違うターゲットに対して、%LOCK%必要条件を無視してこの攻撃をボーナス攻撃として実行しても良い。"""
        "Collision Detector":
           display_name: """Collision Detector"""
           text: """君がブーストあるいはバレル・ロールをする際、君は障害物を通過することと、障害物に重なることができる。%LINEBREAK%君が障害物を通過するか、障害物に重なった後、君は%CHARGE%を1つ消費し、ラウンドの終了までその効果を無視しても良い。"""
        "Composure":
           display_name: """Composure"""
           text: """君がアクションを失敗した後、もし君が緑のトークンを持っていなければ、君は%FOCUS%アクションを実行しても良い。もしそうするなら、君はこのラウンド追加のアクションを実行できない。"""
        "Concussion Missiles":
           display_name: """Concussion Missiles"""
           text: """<b>攻撃 (%LOCK%):</b> %CHARGE%を1つ消費する。この攻撃が命中した後、防御者のレンジ0-1の全ての宇宙船はそのダメージ・カードのうち1つをエクスポーズする。"""
        "Conner Nets":
           display_name: """Conner Nets"""
           text: """<b>機雷</b>%LINEBREAK%システム・フェイズの間に、君は%CHARGE%を1つ消費し、1%STRAIGHT%テンプレートを使ってConner Netを投下しても良い。%LINEBREAK%このカードの%CHARGE%は回復できない。"""
        "Contraband Cybernetics":
           display_name: """Contraband Cybernetics"""
           text: """君がアクティベートする前に、君は%CHARGE%を1つ消費しても良い。もしそうするなら、ラウンドの終了まで、君はストレス状態でも、アクションの実行と赤のマニューバを実行することができる。"""
        "Count Dooku":
           display_name: """Count Dooku"""
           text: """攻撃の間、レンジ0-2の宇宙船が攻撃か防御ダイスを振る前に、もし君の%FORCE%がすべてアクティブなら、君は%FORCE%を1つ消費し、結果を宣言しても良い。もしロールに宣言した結果がないなら、その宇宙船はそのダイス1つをその結果に変更しなければならない。"""
        "Crack Shot":
           display_name: """Crack Shot"""
           text: """君が主武装による攻撃を実行する際、もし防御者が君の%BULLSEYEARC%内にいるなら、結果の相殺ステップの前に、君は%CHARGE%を1つ消費し、%EVADE%の結果を1つキャンセルしても良い。"""
        "DRK-1 Probe Droids":
           display_name: """DRK-1 Probe Droids"""
           text: """終了フェイズの間、君は%CHARGE%を1つ消費し、DRK-1 Probe Droidを速度3のテンプレートを使って、投下あるいは射出しても良い。%LINEBREAK%このカードの%CHARGE%は回復できない。"""
        "Daredevil":
           display_name: """Daredevil"""
           text: """君が白の%BOOST%アクションを実行する際、君は代わりにそれを赤として扱い、1%TURNLEFT%あるいは1%TURNRIGHT%テンプレートを使用しても良い。"""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """エンゲージメント・フェイズの開始時、君は君のファイアリング・アーク内のレンジ0-2の宇宙船を1つ選び、%FORCE%を1つ消費しても良い。もしそうするなら、その宇宙船は緑のトークンを1つ取り除くことを選ばない限り、%HIT%ダメージを1つ受ける。"""
        "Deadman's Switch":
           display_name: """Deadman’s Switch"""
           text: """君が破壊された後、レンジ0-1の他の宇宙船は%HIT%ダメージを1つ受ける。"""
        "Death Troopers":
           display_name: """Death Troopers"""
           text: """アクティベーション・フェイズの間、レンジ0-1の敵宇宙船はストレス・トークンを取り除けない。"""
        "Debris Gambit":
           display_name: """Debris Gambit"""
           text: """君が赤の%EVADE%アクションを実行する際、もし君が障害物のレンジ0-1にいるなら、そのアクションを代わりに白として扱う。"""
        "Dedicated":
           display_name: """Dedicated"""
           text: """レンジ0-2の%LEFTARC%あるいは%RIGHTARC%内にいる他の友軍宇宙船が防御する際、その宇宙船が制限宇宙船であるか<strong>Dedicated</strong>アップグレードを持っていて、君はストレイン状態でなければ、君はストレイン・トークンを1つ得ても良い。もしそうするなら、防御者は空白の結果の1つを振り直しても良い。"""
        "Delayed Fuses":
           display_name: """Delayed Fuses"""
           text: """君が爆弾あるいは機雷を投下、射出あるいは設置した後、君はそのデバイスの上にヒューズ・マーカーを1つ置いても良い。"""
        "Delta-7B":
           display_name: """Delta-7B"""
           text: """<i class = flavor_text>The Delta-7B was designed as a heavier variant of the Delta-7 Aethersprite-class Interceptor, identifiable by the repositioned astromech slot. Many Jedi Generals favor this craft’s greater firepower and durability.</i>"""
        "Dengar":
           display_name: """Dengar"""
           text: """君が防御した後、攻撃者が君のファイアリング・アーク内にいるなら、君は%CHARGE%を1つ消費しても良い。もしそうするなら、攻撃者が緑のトークンを1つ取り除くことを選ばない限り、攻撃ダイスを1つ振る。%HIT%あるいは%CRIT%の結果なら、攻撃者は%HIT%ダメージを1つ受ける。"""
        "Diamond-Boron Missiles":
           display_name: """Diamond-Boron Missiles"""
           text: """<b>攻撃 (%LOCK%):</b> %CHARGE%を1つ消費。この攻撃が命中した後、君は%CHARGE%を1つ消費しても良い。もしそうするなら、防御者のレンジ0-1の防御者の敏捷値と同じか低い敏捷値の各宇宙船は攻撃ダイスを1つ振り、%HIT%/%CRIT%の結果と一致するダメージを1つ受ける。"""
        "Director Krennic":
           display_name: """Director Krennic"""
           text: """<b>セットアップ:</b> 戦力を配置する前に、他の友軍宇宙船に<strong>Optimized Prototype</strong>コンディションを付ける。"""
        "Discord Missiles":
           display_name: """Discord Missiles"""
           text: """エンゲージメント・フェイズの開始時、君はカリキュレート・トークンを1つ消費し、%CHARGE%を1つ消費して、3%BANKLEFT%、3%STRAIGHT%あるいは3%BANKRIGHT%テンプレートを用いてBuzz Droid Swarmを1つ射出しても良い。%LINEBREAK%このカードの%CHARGE%は回復しない。"""
        "Dorsal Turret":
           display_name: """Dorsal Turret"""
           text: """<b>攻撃</b>"""
        "Electronic Baffle":
           display_name: """Electronic Baffle"""
           text: """終了フェイズの間、君は%HIT%ダメージを1つ受け、赤のトークンを1つ取り除いても良い。"""
        "Elusive":
           display_name: """Elusive"""
           text: """君が防御する際、君は%CHARGE%を1つ消費し、防御ダイスを1つ振り直しても良い。%LINEBREAK%君が赤のマニューバを完全に実行した後、%CHARGE%を1つ回復する。"""
        "Emperor Palpatine":
           display_name: """Emperor Palpatine"""
           text: """他の友軍宇宙船が防御あるいは攻撃を実行する際、君はその宇宙船が%FORCE%を1つ消費したかのように、そのダイスを修正するために%FORCE%を1つ消費しても良い。"""
        "Energy-Shell Charges":
           display_name: """Energy-Shell Charges"""
           text: """<b>攻撃 (%CALCULATE%):</b> %CHARGE%を1つ消費。君がこの攻撃を実行する際、君はカリキュレート・トークンを1つ消費し、%FOCUS%の結果1つを%CRIT%の結果に変更しても良い。%LINEBREAK%<strong>アクション</strong>: このカードをリロードする。"""
        "Engine Upgrade":
           display_name: """Engine Upgrade"""
           text: """<i class = flavor_text>Large military forces such as the Galactic Empire have standardized engines, but individual pilots and small organizations often replace the power couplings, add thrusters, or use high-performance fuel to get extra push out of their engines.</i>"""
        "Ensnare":
           text: """アクティベーション・フェイズの終了時、もし君がトラクター状態なら、君は君の%SINGLETURRETARC%内レンジ0-1の宇宙船1つを選んでも良い。トラクター・トークンを1つそれに転送する。"""
        "Expert Handling":
           display_name: """Expert Handling"""
           text: """<i class = flavor_text>While heavy fighters can often be coaxed into a barrel roll, seasoned pilots know how to do it without putting undue stress on their craft or leaving themselves open to attack.</i>"""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """君が主武装による攻撃を実行した後、君は%FORCE%を1つ消費し、このラウンド攻撃していない%SINGLETURRETARC%からボーナスの%SINGLETURRETARC%攻撃を実行しても良い。もしそうして、もし君がストレス状態なら、君は攻撃ダイスを1つ振り直しても良い。"""
        "Fanatical":
           display_name: """Fanatical"""
           text: """君が主武装による攻撃を実行する際、もし君がシールド状態でなければ、君は%FOCUS%の結果のうち1つを%HIT%の結果に変更しても良い。"""
        "Fearless":
           display_name: """Fearless"""
           text: """君が%FRONTARC%の主武装による攻撃を実行する際、もし攻撃レンジが1で、君が防御者の%FRONTARC%内にいるなら、君は君の結果のうち1つを%HIT%の結果に変えても良い。"""
        "Feedback Array":
           display_name: """Feedback Array"""
           text: """君がエンゲージする前に、君はイオン・トークンを1つと武装解除トークンを1つ得ても良い。もしそうするなら、レンジ0の各宇宙船は%HIT%ダメージを1つ受ける。"""
        "Ferrosphere Paint":
           display_name: """Ferrosphere Paint"""
           text: """敵宇宙船が君をロックした後、もし君がその宇宙船の%BULLSEYEARC%内にいなければ、その宇宙船はそのロックを解除することを選ばない限り、ストレス・トークンを1つ得る。"""
        "Fifth Brother":
           display_name: """Fifth Brother"""
           text: """君が攻撃を実行する際、君は%FORCE%を1つ消費して、%FOCUS%の結果の1つを%CRIT%の結果に変更しても良い。"""
        "Finn":
           display_name: """Finn"""
           text: """君が防御するか主武装による攻撃を実行する際、もし敵宇宙船が君の%FRONTARC%内にいるなら、君は空白の結果1つを君のロールに追加しても良い。(このダイスはリロールや他の効果によって修正されることができる)"""
        "Fire-Control System":
           display_name: """Fire-Control System"""
           text: """君が攻撃を実行する際、もし君が防御者へのロックを持っているなら、君は攻撃ダイスを1つ振り直しても良い。もしそうするなら、君はこの攻撃の間、ロックを消費できない。"""
        "Freelance Slicer":
           display_name: """Freelance Slicer"""
           text: """君が防御する際、攻撃ダイスが振られる前に、君は君が攻撃者に対して持っているロックを消費して、攻撃ダイスを1つ振っても良い。もしそうするなら、攻撃者はジャム・トークンを1つ得る。その後、%HIT%あるいは%CRIT%の結果なら、ジャム・トークンを1つ得る。"""
        "GA-97":
           text: """<b>セットアップ:</b> 戦力の配置の前に、君は%CHARGE%を3-5つ消費しても良い。もしそうするなら、他の友軍宇宙船を選び、それに<strong>It's the Resistance</strong>コンディションを付けても良い。"""
        'GNK "Gonk" Droid':
           display_name: """GNK “Gonk” Droid"""
           text: """<b>セットアップ:</b> %CHARGE%を1つ失う。%LINEBREAK%<b>アクション:</b> %CHARGE%を1つ回復する。%LINEBREAK%<b>アクション:</b> %CHARGE%を1つ消費し、シールドを1つ回復する。"""
        "General Grievous":
           display_name: """General Grievous"""
           text: """君が防御する際、結果の相殺ステップの後、もし2つ以上の%HIT%/%CRIT%の結果があるなら、君は%CHARGE%を1つ消費し、%HIT%/%CRIT%を1つキャンセルしても良い。%LINEBREAK%友軍宇宙船が破壊された後、%CHARGE%を1つ回復する。"""
        "General Hux":
           display_name: """General Hux"""
           text: """君が白の%COORDINATE%アクションを実行する際、君はそれを赤と扱っても良い。もしそうするなら、君は同じ宇宙船タイプの2つまでの宇宙船を追加でコーディネートしてもよく、君がコーディネートする各宇宙船は同じアクションを、赤と扱って実行しなければならない。"""
        "Grand Inquisitor":
           display_name: """Grand Inquisitor"""
           text: """レンジ0-2の敵宇宙船がそのダイヤルを公開した後、君は%FORCE%を1つ消費し、君のアクション・バーの白のアクションを、赤のアクションと扱って1つ実行しても良い。"""
        "Grand Moff Tarkin":
           display_name: """Grand Moff Tarkin"""
           text: """システム・フェイズの間、君は%CHARGE%を2つ消費しても良い。もしそうするなら、各友軍宇宙船は君がロックしている宇宙船に対するロックを得ても良い。"""
        "Grappling Struts":
           display_name: """Grappling Struts"""
           text: """Closed:%LINEBREAK%<b>セットアップ:</b> この面を表にして装備する。%LINEBREAK%君がマニューバを実行した後、もし君がアステロイドかデブリ雲に重なっており、その障害物のレンジ0にいる他の友軍宇宙船が1つ以下なら、このカードを裏返しても良い。もし君がそうするなら、君はアステロイドあるいはデブリ雲に重なることによる効果を受けない。%LINEBREAK%Open:%LINEBREAK%君はレンジ0の障害物を無視する。君は%BARRELROLL%アクションを実行することができない。君がダイヤルを公開した後、もし君が[2 %STRAIGHT%]ではないマニューバを公開し、アステロイドあるいはデブリ雲のレンジ0にいるなら、君のマニューバ実行ステップをスキップし、ストレス・トークンを1つ取り除く;もし君が右か左マニューバを公開したなら、君の宇宙船を90度その向きに回転させる。君がマニューバを実行した後、このカードを裏返す。"""
        "Greedo":
           display_name: """Greedo"""
           text: """君が攻撃を実行する際、君は%CHARGE%を1つ消費し、%HIT%の結果の1つを%CRIT%の結果に変更しても良い。%LINEBREAK%君が防御する際、もし君の%CHARGE%がアクティブなら、攻撃者は%HIT%の結果の1つを%CRIT%の結果に変更しても良い。"""
        "Han Solo":
           display_name: """Han Solo"""
           text: """エンゲージメント・フェイズの間、イニシアチブ7で、君は%SINGLETURRETARC%攻撃を実行しても良い。君はこのラウンド、再度その%SINGLETURRETARC%攻撃を実行することはできない。"""
        "Han Solo (Scum)":
           display_name: """Han Solo"""
           text: """君がエンゲージする前に、君は赤の%FOCUS%アクションを実行しても良い。"""
        "Han Solo (Resistance)":
           display_name: """Han Solo"""
           text: """君が%EVADE%アクションを実行した後、レンジ0-1の敵宇宙船の数と等しい回避トークンを追加で得る。"""
        "Hate":
           display_name: """Hate"""
           text: """君がダメージを1以上受けた後、同じ数%FORCE%が回復する。"""
        "Heavy Laser Cannon":
           display_name: """Heavy Laser Cannon"""
           text: """<b>攻撃:</b> 攻撃ダイスの修正ステップの後、全ての%CRIT%の結果を%HIT%の結果に変更する。"""
        "Heightened Perception":
           display_name: """Heightened Perception"""
           text: """エンゲージメント・フェイズの開始時、君は%FORCE%を1つ消費しても良い。もしそうするなら、このフェイズ、君の標準のイニシアチブの代わりに、イニシアチブ7でエンゲージする。"""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """君はストレス状態でも赤のマニューバを実行できる。君は赤のマニューバを完全に実行した後、君はストレス・トークンを3つ以上持っているなら、ストレス・トークンを1つ取り除き、%HIT%ダメージを1つ受ける。"""
        "Heroic":
           display_name: """Heroic"""
           text: """君が防御するか攻撃を実行する際、もし君が空白の結果しかなく、かつ結果が2つ以上あるとき、君は君のダイスを好きな数だけを振り直しても良い。"""
        "Homing Missiles":
           display_name: """Homing Missiles"""
           text: """<b>攻撃 (%LOCK%):</b> %CHARGE%を1つ消費。君が防御者を宣言した後、防御者は%HIT%ダメージを1つ受けることを選んでも良い。もしそうするなら、攻撃と防御ダイスステップを飛ばし、この攻撃は命中したと扱う。"""
        "Hotshot Gunner":
           display_name: """Hotshot Gunner"""
           text: """君が%SINGLETURRETARC%攻撃を実行する際、防御ダイスの修正ステップの後、防御者はフォーカスあるいはカリキュレート・トークンを1つ取り除く。"""
        "Hull Upgrade":
           display_name: """Hull Upgrade"""
           text: """<i class = flavor_text>For those who cannot afford an enhanced shield generator, bolting additional plates onto the hull of a ship can serve as an adequate substitute.</i>"""
        "Hyperspace Tracking Data":
           display_name: """Hyperspace Tracking Data"""
           text: """<b>セットアップ:</b> 戦力を配置する前に、君は0から6の間の数字を選んでも良い。セットアップの間、選んだ数字を君のイニシアチブとして扱う。%LINEBREAK%セットアップ後、レンジ0-2の友軍の各宇宙船にフォーカスあるいは回避トークンを1つつける。"""
        "IG-88D":
           display_name: """IG-88D"""
           text: """君は<strong>IG-2000</strong>アップグレードが付いた他の友軍の各パイロット能力を持つ。%LINEBREAK%君は%CALCULATE%アクションを実行した後、カリキュレート・トークンを1つ得る。"""
        "Ion Bombs":
           display_name: """Ion Bombs"""
           text: """<b>爆弾</b>%LINEBREAK% システム・フェイズの間、君は%CHARGE%を1つ消費し、[1 %STRAIGHT%]テンプレートを使ってIon Bombを投下しても良い。"""
        "ISB Slicer":
           display_name: """ISB Slicer"""
           text: """終了フェイズの間、レンジ1-2の敵宇宙船はジャム・トークンを取り除くことはできない。"""
        "Impervium Plating":
           display_name: """Impervium Plating"""
           text: """君が表向きの<b>宇宙船</b>ダメージ・カードを受けようとする前に、君は代わりに%CHARGE%を1つ消費してそれを捨て札にしても良い。"""
        "Inertial Dampeners":
           display_name: """Inertial Dampeners"""
           text: """君がマニューバを実行する前に、君はシールドを1つ消費しても良い。もしそうするなら、君が公開したマニューバの代わりに、白の[0%STOP%]を実行し、その後ストレス・トークンを1つ得る。"""
        "Informant":
           display_name: """Informant"""
           text: """<b>セットアップ:</b> 戦力を配置した後、敵宇宙船を1つ選び、それに<strong>Listening Device</strong>コンディションを付ける。"""
        "Instinctive Aim":
           display_name: """Instinctive Aim"""
           text: """君が特殊攻撃を実行する際、君は%FORCE%を1つ消費して、必要条件の%FOCUS%あるいは%LOCK%を無視しても良い。"""
        "Integrated S-Foils":
           display_name: """Integrated S-Foils"""
           text: """<strong>Closed: </strong><i>%BARRELROLL%、%FOCUS% &nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked"></i>&nbsp;<r>%BARRELROLL%</r>を追加</i>%LINEBREAK%君が主武装による攻撃を実行する際、もし防御者が君の%BULLSEYEARC%内にいなければ、攻撃ダイスを1つ少なく振る。%LINEBREAK%君がアクティベートする前に、君はこのカードを裏返しても良い。%LINEBREAK% <strong>Open:</strong> 君がアクティベートする前に、君はこのカードを裏返しても良い。"""
        "Intimidation":
           display_name: """Intimidation"""
           text: """レンジ0の敵宇宙船が防御する際、その宇宙船は防御ダイスを1つ少なく振る。"""
        "Ion Cannon":
           display_name: """Ion Cannon"""
           text: """<b>攻撃:</b> もしこの攻撃が命中したなら、%HIT%あるいは%CRIT%の結果を1つ消費し、%HIT%ダメージを1つ与える。その後残ったすべての%HIT%/%CRIT%の結果はダメージの代わりにイオン・トークンを与える。"""
        "Ion Cannon Turret":
           display_name: """Ion Cannon Turret"""
           text: """<b>攻撃:</b> もしこの攻撃が命中したなら、%HIT%あるいは%CRIT%の結果を1つ消費し、%HIT%ダメージを1つ与える。その後残ったすべての%HIT%/%CRIT%の結果はダメージの代わりにイオン・トークンを与える。"""
        "Ion Missiles":
           display_name: """Ion Missiles"""
           text: """<b>攻撃 (%LOCK%):</b> %CHARGE%を1つ消費する。もしこの攻撃が命中したなら、%HIT%あるいは%CRIT%の結果を1つ消費し、%HIT%ダメージを1つ与える。その後残ったすべての%HIT%/%CRIT%の結果はダメージの代わりにイオン・トークンを与える。"""
        "Ion Torpedoes":
           display_name: """Ion Torpedoes"""
           text: """<b>攻撃 (%LOCK%):</b> %CHARGE%を1つ消費する。もしこの攻撃が命中したなら、%HIT%あるいは%CRIT%の結果を1つ消費し、%HIT%ダメージを1つ与える。その後残ったすべての%HIT%/%CRIT%の結果はダメージの代わりにイオン・トークンを与える。"""
        "Jabba the Hutt":
           display_name: """Jabba the Hutt"""
           text: """終了フェイズの間、君はレンジ0-2の友軍宇宙船を1つ選び、%CHARGE%を1つ消費しても良い。もしそうするなら、その宇宙船はそれが装備した%ILLICIT%アップグレードのうち1つの%CHARGE%を1つ回復する。"""
        "Jamming Beam":
           display_name: """Jamming Beam"""
           text: """<b>攻撃:</b> もしこの攻撃が命中したなら、すべての%HIT%/%CRIT%の結果はダメージの代わりにジャム・トークンを与える。"""
        "Juke":
           display_name: """Juke"""
           text: """君が攻撃を実行する際、君が回避状態なら、君は防御者の%EVADE%の結果のうち1つを%FOCUS%の結果に変更しても良い。"""
        "Jyn Erso":
           display_name: """Jyn Erso"""
           text: """もしレンジ0-3の友軍宇宙船がフォーカス・トークンを得ようとする時、それは代わりに回避トークンを1つ得ても良い。"""
        "K2-B4":
           display_name: """K2-B4"""
           text: """レンジ0-3の友軍宇宙船が防御する際、それはカリキュレート・トークンを1つ消費しても良い。もしそうするなら、攻撃者がストレイン・トークンを1つ得ることを選ばない限り、%EVADE%の結果を1つ追加する。"""
        "Kaydel Connix":
           text: """君が君のダイヤルを公開した後、君は君のダイヤルを次に速い速度の基本マニューバにセットしても良い。そのマニューバを実行する際、その難易度を上げる。"""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """レンジ0-2の友軍宇宙船が白のマニューバを完全に実行した後、君は%FORCE%を1つ消費して、その宇宙船からストレス・トークンを1つ取り除いても良い。"""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """終了フェイズの開始時、君は君のファイアリング・アーク内のレンジ0-2の敵宇宙船を1つ選んでも良い。もしそうするなら、その宇宙船はトラクター・トークンを取り除かない。"""
        "Kraken":
           display_name: """Kraken"""
           text: """終了フェイズの間、君はレンジ0-3の友軍宇宙船を3つまで選んでも良い。もしそうするなら、それらの各宇宙船はカリキュレート・トークンを1つ取り除かない。"""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """<b>アクション:</b> レンジ1-3の敵宇宙船を1つ選ぶ。もしそうするなら、%FORCE%を1つ消費して、その宇宙船に<strong>I’ll Show You the Dark Side</strong>コンディションを付ける。"""
        "L3-37":
           display_name: """L3-37"""
           text: """<b>セットアップ:</b> この面を表にして装備する。%LINEBREAK%君が防御する際、君はこのカードを裏返しても良い。もしそうするなら、攻撃者は全ての攻撃ダイスを振り直さなければならない。%LINEBREAK%<strong>L3-37’s Programming:</strong> もし君がシールド状態でなければ、君のバンク[%BANKLEFT%および%BANKRIGHT%]マニューバの難易度を下げる。"""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """<b>アクション:</b> レンジ1-3の敵宇宙船を1つ選ぶ。もしそうするなら、%FORCE%を1つ消費して、その宇宙船に<strong>I’ll Show You the Dark Side</strong>コンディションを付ける。"""
        "Landing Struts":
           display_name: """Landing Struts"""
           text: """Closed:%LINEBREAK%<b>セットアップ:</b> この面を表にして装備する。%LINEBREAK%君がマニューバを実行した後、もし君がアステロイドかデブリ雲に重なっており、その障害物のレンジ0にいる他の友軍宇宙船が1つ以下なら、このカードを裏返しても良い。もし君がそうするなら、君はアステロイドあるいはデブリ雲に重なることによる効果を受けない。%LINEBREAK%Open:%LINEBREAK%君はレンジ0の障害物を無視する。君は%BARRELROLL%アクションを実行することができない。君がダイヤルを公開した後、もし君が[2 %STRAIGHT%]ではないマニューバを公開し、アステロイドあるいはデブリ雲のレンジ0にいるなら、君のマニューバ実行ステップをスキップし、ストレス・トークンを1つ取り除く;もし君が右か左マニューバを公開したなら、君の宇宙船を90度その向きに回転させる。君がマニューバを実行した後、このカードを裏返す。"""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """<b>アクション:</b> 防御ダイスを2つ振る。%FOCUS%の結果につき、フォーカス・トークンを1つ得る。%EVADE%の結果につき、回避トークンを1つ得る。もし両方の結果が空白なら、対戦相手のプレイヤーがフォーカスか回避を選ぶ。君はそのタイプのトークンを1つ得る。"""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian"""
           text: """君がダイスを振った後、君は緑のトークンを1つ消費して、君の結果のうち2つまでを振り直しても良い。"""
        "Lando's Millennium Falcon":
           display_name: """Lando’s Millennium Falcon"""
           text: """Escape Craftを1つ君にドックしても良い。%LINEBREAK%君がEscape Craftをドックしている際、君はそれのシールドを君の宇宙船カードの上にあるように扱っても良い。%LINEBREAK%君がストレス状態の宇宙船に主武装による攻撃を実行する際、攻撃ダイスを追加で1つ振る。"""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """君が防御する際、攻撃者がストレス状態なら、君は君の空白/%FOCUS%の結果のうちの1つを%EVADE%の結果に変更するために攻撃者のストレスを1つ取り除いても良い。"""
        "Leia Organa":
           display_name: """Leia Organa"""
           text: """アクティベーション・フェイズの開始時、君は%CHARGE%を3つ消費しても良い。このフェイズの間、各友軍宇宙船は、それの赤のマニューバの難易度を1つ下げる。"""
        "Lone Wolf":
           display_name: """Lone Wolf"""
           text: """君が防御するか攻撃を実行する際、もしレンジ0-2に他の友軍宇宙船がいないなら、君は%CHARGE%を1つ消費して、君のダイスのうち1つを振り直しても良い。"""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """エンゲージメント・フェイズの開始時、君は%FORCE%を1つ消費し、デプリート・トークンを1つ得て、%SINGLETURRETARC%インジケーターを回転させても良い。"""
        "M9-G8":
           display_name: """M9-G8"""
           text: """君がロックしている宇宙船が攻撃を実行する際、君は攻撃ダイスを1つ選んでも良い。もしそうするなら、攻撃者はそのダイスを振り直す。"""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """君が防御した後、もし攻撃が命中したなら、君は攻撃者に対してロックを得ても良い。"""
        "Marksmanship":
           display_name: """Marksmanship"""
           text: """攻撃が実行を実行する際、もし防御者が%BULLSEYEARC%内にいるなら、君は%HIT%の結果1つを%CRIT%の結果に変えても良い。"""
        "Maul":
           display_name: """Maul"""
           text: """君がダメージを受けた後、君は%FORCE%を1つ回復するためにストレス・トークンを1つ得ても良い。%LINEBREAK%君は“Dark Side”アップグレードを装備できる。"""
        "Minister Tua":
           display_name: """Minister Tua"""
           text: """エンゲージメント・フェイズの開始時、もし君がダメージ状態なら、君は赤の%REINFORCE%アクションを実行しても良い。"""
        "Moff Jerjerrod":
           display_name: """Moff Jerjerrod"""
           text: """システム・フェイズの間、君は%CHARGE%を2つ消費しても良い。もしそうするなら、[1%BANKLEFT%]、[1%STRAIGHT%]あるいは[1%BANKRIGHT%]テンプレートを選ぶ。各友軍宇宙船はそのテンプレートを使用して赤の%BOOST%アクションを実行しても良い。"""
        "Munitions Failsafe":
           display_name: """Munitions Failsafe"""
           text: """君が%TORPEDO%あるいは%MISSILE%による攻撃を実行する際、攻撃ダイスを振った後、君は全てのダイスの結果をキャンセルし、攻撃のコストとして消費した%CHARGE%を1つ回復しても良い。"""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """君のバンク・マニューバ[%BANKLEFT%および%BANKRIGHT%]の難易度を下げる。"""
        "Novice Technician":
           display_name: """Novice Technician"""
           text: """ラウンドの終了時、君は表向きのダメージ・カードを1枚修理するために攻撃ダイスを1つ振っても良い。その後、%HIT%の結果なら、ダメージ・カードを1枚エクスポーズする。"""
        "Os-1 Arsenal Loadout":
           display_name: """Os-1 Arsenal Loadout"""
           text: """君がちょうど1つの武装解除トークンを持っているとき、君はロックしたターゲットに対して%TORPEDO%あるいは%MISSILE%攻撃を実行できる。そうするとき、君はその攻撃の間、ロックを消費できない。%LINEBREAK%%TORPEDO%および%MISSILE%スロットを追加する。"""
        "Outmaneuver":
           display_name: """Outmaneuver"""
           text: """君が%FRONTARC%による攻撃を実行する際、もし君が防御者のファイアリング・アーク内にいないなら、防御者は防御ダイスを1つ少なく振る。"""
        "Paige Tico":
           display_name: """Paige Tico"""
           text: """君が主武装による攻撃を実行した後、君は爆弾を1つ投下するか、君の%SINGLETURRETARC%をローテートしても良い。%LINEBREAK%君が破壊された後、君は爆弾を1つ投下しても良い。"""
        "Pattern Analyzer":
           display_name: """Pattern Analyzer"""
           text: """君が赤のマニューバを完全に実行した後、難易度のチェックステップの前に、君はアクションを1つ実行しても良い。"""
        "Perceptive Copilot":
           display_name: """Perceptive Copilot"""
           text: """君が%FOCUS%アクションを実行した後、フォーカス・トークンを1つ得る。"""
        "Petty Officer Thanisson":
           display_name: """Petty Officer Thanisson"""
           text: """アクティベーションあるいはエンゲージメント・フェイズの間、君の%FRONTARC%内レンジ0-1の敵宇宙船が赤かオレンジのトークンを得た後、もし君がストレス状態でなければ、君はストレス・トークンを1つ得ても良い。もしそうするなら、その宇宙船はそれが得たのと同じタイプのトークンを1つ追加で得る。"""
        "Plasma Torpedoes":
           display_name: """Plasma Torpedoes"""
           text: """<b>攻撃 (%LOCK%):</b> %CHARGE%を1つ消費する。結果の相殺ステップの間、%HIT%の結果をキャンセルする前に%CRIT%の結果をキャンセルする。攻撃が命中した後、防御者はシールドを1つ失う。"""
        "Pivot Wing":
           display_name: """Pivot Wing"""
           text: """<strong>Closed: </strong>君が防御する際、君は防御ダイスを1つ少なく振る。%LINEBREAK%君が[0%STOP%]マニューバを実行した後、君は君の宇宙船を90度あるいは180度回転させても良い。%LINEBREAK%君がアクティベートする前に、君はこのカードを裏返しても良い。%LINEBREAK%<strong>Open:</Strong>君がアクティベートする前に、君はこのカードを裏返しても良い。"""
        "Predator":
           display_name: """Predator"""
           text: """君が主武装による攻撃を実行する際、もし防御者が君の%BULLSEYEARC%内にいるなら、君は攻撃ダイスを1つ振り直しても良い。"""
        "Predictive Shot":
           display_name: """Predictive Shot"""
           text: """君が攻撃を宣言した後、もし防御者が君の%BULLSEYEARC%内にいるなら、君は%FORCE%を1つ消費しても良い。もしそうするなら、防御ダイスのロールステップの間、防御者は君の%HIT%/%CRIT%の結果よりも多く防御ダイスを振ることができない。"""
        "Primed Thrusters":
           display_name: """Primed Thrusters"""
           text: """君のストレス・トークンが2つ以下の際、君は%BARRELROLL%あるいは%BOOST%アクションをたとえストレス状態でも実行できる。"""
        "Proton Bombs":
           display_name: """Proton Bombs"""
           text: """<b>爆弾</b>%LINEBREAK%システム・フェイズの間に、君は%CHARGE%を1つ消費し、1%STRAIGHT%テンプレートを使ってProton Bombを投下しても良い。"""
        "Proton Rockets":
           display_name: """Proton Rockets"""
           text: """<b>攻撃 (%FOCUS%):</b> %CHARGE%を1つ消費する。"""
        "Proton Torpedoes":
           display_name: """Proton Torpedoes"""
           text: """<b>攻撃 (%LOCK%):</b> %CHARGE%を1つ消費する。%HIT%の結果1つを%CRIT%の結果に変更する。"""
        "Proximity Mines":
           display_name: """Proximity Mines"""
           text: """<b>機雷</b>%LINEBREAK%システム・フェイズの間に、君は%CHARGE%を1つ消費し、1%STRAIGHT%テンプレートを使ってProximity Mineを投下しても良い。%LINEBREAK%このカードの%CHARGE%は回復できない。"""
        "Qi'ra":
           display_name: """Qi’ra"""
           text: """君が移動と攻撃を実行する際、君は君がロックした障害物を無視する。"""
        "R2 Astromech":
           display_name: """R2 Astromech"""
           text: """君が君のダイヤルを公開した後、君は%CHARGE%を1つ消費し武装解除トークンを1つ得て、シールドを1つ回復しても良い。"""
        "R2-C4":
           text: """君が攻撃を実行する際、君は回避トークンを1つ消費して%FOCUS%の結果1つを%HIT%の結果に変えても良い。"""
        "R2-D2 (Crew)":
           display_name: """R2-D2"""
           text: """終了フェイズの間、もし君がダメージ状態で、シールド状態でなければ、君はシールドを1つ回復するために攻撃ダイスを1つ振っても良い。%HIT%の結果なら、君のダメージ・カードのうち1つをエクスポーズする。"""
        "R2-D2":
           display_name: """R2-D2"""
           text: """君が君のダイヤルを公開した後、君は%CHARGE%を1つ消費し武装解除トークンを1つ得て、シールドを1つ回復しても良い。"""
        "R2-HA":
           display_name: """R2-HA"""
           text: """君が防御する際、君は君の攻撃者へのロックを消費して、好きな数の防御ダイスを振り直しても良い。"""
        "R3 Astromech":
           display_name: """R3 Astromech"""
           text: """君はロックを2つまで維持できる。それぞれのロックは違うオブジェクトに対してでなければならない。%LINEBREAK%君が%LOCK%アクションを実行した後、君はロックを1つ得ても良い。"""
        "R4 Astromech":
           display_name: """R4 Astromech"""
           text: """君の速度1-2の基本のマニューバ(%TURNLEFT%%BANKLEFT%%STRAIGHT%%BANKRIGHT%%TURNRIGHT%)の難易度を下げる。"""
        "R4-P Astromech":
           display_name: """R4-P Astromech"""
           text: """君が基本のマニューバを実行する前に、君は%CHARGE%を1つ消費しても良い。もしそうするなら、君はそのマニューバを難易度を下げて実行する。"""
        "R4-P17":
           display_name: """R4-P17"""
           text: """君が赤のマニューバを完全に実行した後、君はストレス状態でも%CHARGE%を1つ消費してアクションを実行しても良い。"""
        "R4-P44":
           display_name: """R4-P44"""
           text: """君が赤のマニューバを完全に実行した後、もし敵宇宙船が君の%BULLSEYEARC%内にいるなら、君はカリキュレート・トークンを1つ得る。"""
        "R5 Astromech":
           display_name: """R5 Astromech"""
           text: """<b>アクション:</b> %CHARGE%を1つ消費し、裏向きのダメージ・カードを1枚修理する。%LINEBREAK%<b>アクション:</b> 表向きのダメージカードを1枚修理する。"""
        "R5-D8":
           display_name: """R5-D8"""
           text: """<b>アクション:</b> %CHARGE%を1つ消費し、裏向きのダメージ・カードを1枚修理する。%LINEBREAK%<b>アクション:</b> 表向きのダメージカードを1枚修理する。"""
        "R5-P8":
           display_name: """R5-P8"""
           text: """君が君の%FRONTARC%内にいる防御者に対して攻撃を実行する際、君は攻撃ダイスを1つ振り直すために%CHARGE%を1つ消費しても良い。もし振り直した結果が%CRIT%の結果なら、%CRIT%ダメージを1つ受ける。"""
        "R5-TK":
           display_name: """R5-TK"""
           text: """君は友軍宇宙船に対して攻撃を実行することができる。"""
        "R5-X3":
           display_name: """R5-X3"""
           text: """君がアクティベートあるいはエンゲージする前に、君は%CHARGE%を1つ消費し、このフェイズの終了まで障害物を無視しても良い。"""
        "Rey":
           display_name: """Rey"""
           text: """君が防御するか攻撃を実行する際、もしその敵宇宙船が君の%FRONTARC%内にいるなら、君は%FORCE%を1つ消費して、君の空白の結果1つを%EVADE%あるいは%HIT%の結果に変更しても良い。"""
        "Rey's Millennium Falcon":
           display_name: """Rey’s Millennium Falcon"""
           text: """君のストレス・トークンが2つ以下なら、君はたとえストレス状態であっても、赤のセグナーズ・ループ・マニューバ[%SLOOPLEFT%あるいは%SLOOPRIGHT%]の実行および%BOOST%あるいは%ROTATEARC%アクションを実行しても良い。"""
        "Rigged Cargo Chute":
           display_name: """Rigged Cargo Chute"""
           text: """<b>アクション:</b> %CHARGE%を1つ消費する。[1%STRAIGHT%]テンプレートを用いてloose cargoを1つ投下する。"""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """君が防御するか攻撃を実行する際、君は君の結果のうち1つを消費し、その敵宇宙船に対するロックを得ても良い。"""
        "Ruthless":
           display_name: """Ruthless"""
           text: """君が攻撃を実行する際、君は防御者のレンジ0-1の他の友軍宇宙船を選んでも良い。もしそうするなら、その宇宙船は%HIT%ダメージを1つ受け、君は君のダイスの結果のうち1つを%HIT%の結果に変更しても良い。"""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """<b>セットアップ:</b> このカードの上にイオン、ジャム、ストレスおよびトラクター・ビーム・トークンを1つずつ置く。%LINEBREAK%友軍の爆弾の効果を宇宙船が受けた後、君はイオン、ジャム、ストレスあるいはトラクター・トークンをこのカードから1つ取り除いても良い。もしそうするなら、その宇宙船は一致するトークンを得る。"""
        "Saturation Salvo":
           display_name: """Saturation Salvo"""
           text: """君が%TORPEDO%あるいは%MISSILE%による攻撃を実行する際、君はそのアップグレードの%CHARGE%を1つ消費しても良い。もしそうするなら、防御ダイスを2つ選ぶ。防御者はそれらダイスを振り直さなければならない。"""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """君が攻撃を実行する際、君は君の%FOCUS%の結果全てを%CRIT%の結果に変更するために、%HIT%ダメージを1つ受けても良い。"""
        "Seasoned Navigator":
           display_name: """Seasoned Navigator"""
           text: """君が君のダイヤルを公開した後、君は君のダイヤルを他の同じ速度の赤ではないマニューバにセットしても良い。そのマニューバを実行する際、それの難易度を上げる。"""
        "Seismic Charges":
           display_name: """Seismic Charges"""
           text: """<b>爆弾</b>%LINEBREAK%システム・フェイズの間に、君は%CHARGE%を1つ消費し、1%STRAIGHT%テンプレートを使ってSeismic Chargeを投下しても良い。"""
        "Selfless":
           display_name: """Selfless"""
           text: """レンジ0-1の他の友軍宇宙船が防御する際、結果の相殺ステップの前に、もし君がその攻撃アーク内にいるなら、君は%CRIT%ダメージを1つ受け、%CRIT%の結果1つをキャンセルしても良い。"""
        "Sense":
           display_name: """Sense"""
           text: """システム・フェイズの間、君はレンジ0-1の宇宙船を1つ選び、そのダイヤルを見ても良い。もし君が%FORCE%を1つ消費するなら、君は代わりにレンジ0-3の宇宙船を1つ選ぶ。"""
        "Servomotor S-Foils":
           display_name: """Servomotor S-Foils"""
           text: """<strong>Closed: </strong><i>%BOOST%、%FOCUS%&nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked"></i>&nbsp;<r>%BOOST%</r>を追加</i>%LINEBREAK%君が主武装による攻撃を実行する際、攻撃ダイスを1つ少なく振る。%LINEBREAK%君がアクティベートする前に、君はこのカードを裏返しても良い。%LINEBREAK%<strong>Open:</strong> 君がアクティベートする前に、君はこのカードを裏返しても良い。"""
        "Seventh Fleet Gunner":
           display_name: """Seventh Fleet Gunner"""
           text: """他の友軍宇宙船が主武装による攻撃を実行する際、もし防御者が君のファイアリング・アーク内にいるなら、君は%CHARGE%を1つ消費しても良い。もしそうするなら、攻撃者は攻撃ダイスを1つ多く振る(最大で4つまで)。システム・フェイズの間、君は武装解除トークンを1つ得て、%CHARGE%を1つ回復しても良い。"""
        "Seventh Sister":
           display_name: """Seventh Sister"""
           text: """レンジ0-1の敵宇宙船がストレス・トークンを得ようとする際、代わりに君はそれがにジャムあるいはトラクター・トークンを1つ得るために%FORCE%を1つ消費しても良い。"""
        "Shield Upgrade":
           display_name: """Shield Upgrade"""
           text: """<i class = flavor_text>Deflector shields are a substantial line of defense on most starships beyond the lightest fighters. While enhancing a ship’s shield capacity can be costly, all but the most confident or reckless pilots see the value in this sort of investment.</i>"""
        "Skilled Bombardier":
           display_name: """Skilled Bombardier"""
           text: """もし君がデバイスを投下あるいは射出するとき、君は同じ向きで速度が1高いか低いテンプレートを使用しても良い。"""
        "Spare Parts Canisters":
           display_name: """Spare Parts Canisters"""
           text: """<b>アクション:</b> 君は装備した%ASTROMECH%アップグレードの1つのチャージを1つ回復するために%CHARGE%を消費する。%LINEBREAK%<b>アクション:</b> %CHARGE%を1つ消費して、Spare Partsを投下し、その後君につけられたすべてのロックを解除する。"""
        "Special Forces Gunner":
           display_name: """Special Forces Gunner"""
           text: """君が主武装による%FRONTARC%攻撃を実行する際、もし君の%SINGLETURRETARC%が%FRONTARC%にあるなら、君は攻撃ダイスを追加で1つ振っても良い。%LINEBREAK%君が主武装による%FRONTARC%攻撃を実行した後、もし君の%SINGLETURRETARC%が%REARARC%にあるなら、君はボーナスの%SINGLETURRETARC%攻撃を実行しても良い。"""
        "Squad Leader":
           display_name: """Squad Leader"""
           text: """君がコーディネートを実行する際、君が選んだ宇宙船は、君のアクション・バーにもあるアクションのみを実行できる。"""
        "Static Discharge Vanes":
           display_name: """Static Discharge Vanes"""
           text: """君がイオンあるいはジャム・トークンを1つ受け取ろうとする前に、もし君がストレス状態でないなら、君はレンジ0-1の他の宇宙船を選び、そしてストレス・トークンを1つ受け取っても良い。もし君がそうするなら、選んだ宇宙船は代わりにそのイオンあるいはジャム・トークンを得る。その後、君は%HIT%ダメージを1つ受ける。"""
        "Stealth Device":
           display_name: """Stealth Device"""
           text: """君が防御する際、君の%CHARGE%がアクティブなら、防御ダイスを追加で1つ振る。%LINEBREAK%君がダメージを受けた後、%CHARGE%を1つ失う。"""
        "Supernatural Reflexes":
           display_name: """Supernatural Reflexes"""
           text: """君がアクティベートする前に、君は%FORCE%を1つ消費し、%BARRELROLL%あるいは%BOOST%アクションを実行しても良い。その後、君が実行したアクションが君のアクション・バーにないなら、1%HIT%ダメージを受ける。"""
        "Supreme Leader Snoke":
           display_name: """Supreme Leader Snoke"""
           text: """システム・フェイズの間、君はレンジ1よりも遠い好きな数の敵宇宙船を選んでも良い。もしそうするなら、選んだ数だけ%FORCE%を消費し、選んだ各宇宙船のダイヤルを表にする。"""
        "Swarm Tactics":
           display_name: """Swarm Tactics"""
           text: """エンゲージメント・フェイズの開始時、君はレンジ1の友軍宇宙船を1つ選んでも良い。もしそうするなら、その宇宙船はラウンドの終了まで、イニシアチブを君の値と同じものとして扱う。"""
        "Synchronized Console":
           display_name: """Synchronized Console"""
           text: """君が攻撃を実行した後、君はレンジ1の友軍宇宙船かレンジ1-3のSynchronized Consoleアップグレードを付けた友軍宇宙船を選び、そして君が持っている防御者へのロックを消費しても良い。もしそうするなら、その友軍宇宙船はその防御者へのロックを得ても良い。"""
        "TA-175":
           display_name: """TA-175"""
           text: """レンジ0-3のアクション・バーに%CALCULATE%がある友軍宇宙船が破壊された後、君のレンジ0-3のアクション・バーに%CALCULATE%がある各友軍宇宙船はカリキュレート・トークンを1つ得る。"""
        "TV-94":
           display_name: """TV-94"""
           text: """レンジ0-3の友軍宇宙船が、それの%BULLSEYEARC%内の防御者に対して攻撃を実行する時、もし攻撃ダイスが2つ以下なら、それはカリキュレート・トークンを1つ消費して、%HIT%の結果を追加しても良い。"""
        "Tactical Officer":
           display_name: """Tactical Officer"""
           text: """<i class = flavor_text>In the chaos of a starfighter battle, a single order can mean the difference between a victory and a massacre.</i>"""
        "Tactical Scrambler":
           display_name: """Tactical Scrambler"""
           text: """君が敵宇宙船の攻撃を妨害する際、防御者は防御ダイスを追加で1つ振る。"""
        "Targeting Computer":
           text: """ """
        "Targeting Synchronizer":
           display_name: """Targeting Synchronizer"""
           text: """レンジ1-2の友軍宇宙船が、君がロックした対象に攻撃を実行する際、その宇宙船は攻撃の%LOCK%必要条件を無視する。"""
        "Tobias Beckett":
           display_name: """Tobias Beckett"""
           text: """<b>セットアップ:</b> 戦力を配置した後、君はプレイエリアの障害物を1つ選んでも良い。もしそうするなら、それをいずれかのボードの端あるいは宇宙船からレンジ2より離れ、他の障害物よりレンジ1より離れた好きな場所に置く。"""
        "Tractor Beam":
           display_name: """Tractor Beam"""
           text: """<b>攻撃:</b> もしこの攻撃が命中したなら、すべての%HIT%/%CRIT%の結果はダメージの代わりにトラクター・トークンを与える。"""
        "Trajectory Simulator":
           display_name: """Trajectory Simulator"""
           text: """システム・フェイズの間、君が爆弾を投下あるいは射出しようとするとき、君は代わりに[5%STRAIGHT%]テンプレートを使ってそれを射出しても良い。"""
        "Treacherous":
           display_name: """Treacherous"""
           text: """君が防御する際、君は攻撃を妨害している宇宙船を1つ選び%CHARGE%を1つ消費しても良い。もしそうするなら、%HIT%あるいは%CRIT%の結果1つをキャンセルし、君が選んだ宇宙船はストレイン・トークンを1つ得る。%LINEBREAK%レンジ0-3の宇宙船が破壊された後、%CHARGE%を1つ回復する。"""
        "Trick Shot":
           display_name: """Trick Shot"""
           text: """君が障害物によって妨害された攻撃を実行する際、攻撃ダイスを追加で1つ振る。"""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """君がマニューバを部分的に実行した後、君は白のアクションを1つ実行するために、%HIT%ダメージを1つ受けても良い。"""
        "Veteran Tail Gunner":
           display_name: """Veteran Tail Gunner"""
           text: """君が主武装による%FRONTARC%攻撃を実行した後、君はボーナスの主武装による%REARARC%攻撃を実行しても良い。"""
        "Veteran Turret Gunner":
           display_name: """Veteran Turret Gunner"""
           text: """君が主武装による攻撃を実行した後、君はこのラウンド使用していない%SINGLETURRETARC%を使用して、ボーナスの%SINGLETURRETARC%攻撃を実行しても良い。"""
        "Xg-1 Assault Configuration":
           display_name: """Xg-1 Assault Configuration"""
           text: """君がちょうど1つの武装解除トークンを持っている際、君は武装解除状態でも%CANNON%攻撃を実行できる。君が武装解除状態で%CANNON%攻撃を実行する際、最大で3つの攻撃ダイスを振る。%LINEBREAK%%CANNON%スロットを追加する。"""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """君が攻撃を実行する際、君がストレス状態でなければ、君は防御ダイスを1つ選び、ストレス・トークンを1つ得ても良い。もしそうするなら、防御者はそのダイスを振り直さなければならない。"""
        '"Chopper" (Crew)':
           display_name: """“Chopper”"""
           text: """アクションの実行ステップの間、君はストレス状態でも、アクションを1つ実行しても良い。君がストレス状態でアクションを実行した後、君のダメージ・カードを1枚エクスポーズしない限り、%HIT%ダメージを1つ受ける。"""
        '"Chopper" (Astromech)':
           display_name: """“Chopper”"""
           text: """<b>アクション:</b> シールドを1つ回復するために、装備した他のアップグレードの自動変化しない%CHARGE%を1つ消費する。%LINEBREAK%<b>アクション:</b> 装備したアップグレードの自動変化しない%CHARGE%を1つ回復するために、シールドを2つ消費する。"""
        '"Genius"':
           display_name: """“Genius”"""
           text: """君がマニューバを完全に実行した後、もし君がこのラウンドデバイスを投下か射出していないなら、君は爆弾を1つ投下しても良い。"""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """君が攻撃レンジ0で攻撃を実行する際、君はフォーカス・トークンを、デフォルトの効果でダイスを修正するために消費しても良い。君が攻撃レンジ0で防御する際、攻撃者はフォーカス・トークンを、デフォルトの効果でダイスを修正するために消費しても良い。"""
        "Kaydel Connix":
           display_name: """Kaydel Connix"""
           text: """君が君のダイヤルを公開した後、君は君のダイヤルを次に速い速度の基本マニューバにセットしても良い。そのマニューバを実行する際、その難易度を上げる。"""
        "Autoblasters":
           display_name: """Autoblasters"""
           text: """<b>攻撃:</b> もし防御者が君の%BULLSEYEARC%内にいるなら、攻撃ダイスを追加で1つ振る。結果の相殺ステップの間、君が防御者の%FRONTARC%内にいないなら、%EVADE%の結果で%CRIT%の結果をキャンセルできない。"""
        "R2-C4":
           display_name: """R2-C4"""
           text: """君が攻撃を実行する際、君は回避トークンを1つ消費して%FOCUS%の結果1つを%HIT%の結果に変えても良い。"""
        "Electro-Proton Bomb":
           display_name: """Electro-Proton Bomb"""
           text: """<b>爆弾</b>%LINEBREAK%システム・フェイズの間に、君は%CHARGE%を1つ消費し、1%STRAIGHT%テンプレートを使ってElectro-Proton Bombを投下しても良い。その後そのデバイスの上にヒューズ・マーカーを1つ置く。%LINEBREAK%このカードの%CHARGE%は回復できない。"""
        "Passive Sensors":
           display_name: """Passive Sensors"""
           text: """<b>アクション:</b> %CHARGE%を1つ消費する。君は君のアクションの実行ステップに、このアクションのみを実行できる。%LINEBREAK%君の%CHARGE%がアクティブ状態でない際、君はコーディネートされることができない。君のエンゲージの前に、もし君の%CHARGE%がアクティブ状態でないなら、君は%CALCULATE%あるいは%LOCK%アクションを実行しても良い。"""
        "R2-A6":
           display_name: """R2-A6"""
           text: """君が君のダイヤルを公開した後、君は君のダイヤルを同じ方向の速度が1高いか低いマニューバにセットしても良い。"""
        "Amilyn Holdo":
           display_name: """Amilyn Holdo"""
           text: """君のエンゲージの前に、君はレンジ1-2の他の友軍宇宙船を選んでも良い。君はその宇宙船にその宇宙船が持っていないタイプのトークンを1つ転送しても良い。その宇宙船は君に君が持っていないタイプのトークンを1つ転送しても良い。"""
        "Larma D'Acy":
           display_name: """Larma D'Acy"""
           text: """君のストレス・トークンが2つ以下なら、君はたとえストレス状態でも、%REINFORCE%、%COORDINATE%あるいは%JAM%アクションを実行できる。%LINEBREAK%君が白の%REINFORCE%、%COORDINATE%あるいは%JAM%アクションを実行する際、もし君がストレス状態なら、そのアクションを赤として扱う。"""
        "PZ-4CO":
           display_name: """PZ-4CO"""
           text: """ アクティベーション・フェイズの終了時、君はレンジ1-2の友軍宇宙船を1つ選んでも良い。もしそうするなら、その宇宙船にカリキュレート・トークンを1つ転送する。もし君の公開したマニューバが青なら、君は代わりにフォーカス・トークンを転送しても良い。"""
        "Leia Organa (Resistance)":
           display_name: """Leia Organa"""
           text: """友軍宇宙船が非[0 %STOP%]マニューバを公開した後、君は%FORCE%を1つ消費しても良い。もしそうするなら、選んだ宇宙船はそのマニューバの難易度を下げる。"""
        "Korr Sella":
           display_name: """Korr Sella"""
           text: """君が青のマニューバを完全に実行した後、君のストレス・トークンをすべて取り除く。"""
        "Precognitive Reflexes":
           display_name: """Precognitive Reflexes"""
           text: """君がダイヤルを公開した後、君は%FORCE%を1つ消費し、%BARRELROLL%あるいは%BOOST%アクションを実行しても良い。その後、君が実行したアクションが君のアクション・バーにないなら、ストレイン・トークンを1つ得る。%LINEBREAK%もしそうするなら、君は君のアクティベーションの間、他のアクションを実行できない。"""
        "Foresight":
           display_name: """Foresight"""
           text: """敵宇宙船がマニューバを実行した後、君は%FORCE%を1つ消費してこの攻撃をその宇宙船に対してボーナス攻撃として実行しても良い。%LINEBREAK% <b>攻撃:</b> 君は%FOCUS%の結果を1つ%HIT%に変えても良い。君のダイスはその他の方法で修正できない。"""
        "Angled Deflectors":
           display_name: """Angled Deflectors"""
           text: """ """

        "C1-10P":
           display_name: """C1-10P"""
           text: """<strong>C1-10P: </strong>セットアップ: こちらの面を表にして装備する。%LINEBREAK%君がマニューバを完全に実行した後、君は%CHARGE%を1つ消費して、ストレス状態でも赤の%EVADE%アクションを実行しても良い。%LINEBREAK%終了フェイズの間に、もしこのカードの上にアクティブな%CHARGE%がなければ、それを裏返す。%LINEBREAK% <strong>C1-10P (Erratic):</strong> 君がマニューバを完全に実行した後、君はレンジ0-1の宇宙船を<b>選ばなければならない</b>。それはジャム・トークンを1つ得る。"""
        "Ahsoka Tano":
           display_name: """Ahsoka Tano"""
           text: """君がマニューバを実行した後、君は%FORCE%を1つ消費して、君のファイアリング・アーク内のレンジ1-3の友軍宇宙船を1つ選んでも良い。もしそうするなら、それはストレス状態でも、赤の%FOCUS%アクションを実行しても良い。"""
        "C-3PO (Republic)":
           display_name: """C-3PO"""
           text: """君が防御する際、もし君がカリキュレート状態なら、君は防御ダイスを1つ振り直しても良い。%LINEBREAK%君が%CALCULATE%アクションを実行した後、君はカリキュレート・トークンを1つ得る。"""
        "Gravitic Deflection":
           display_name: """Gravitic Deflection"""
           text: """君が防御する際、君は攻撃アーク内のトラクター状態の宇宙船1つにつき防御ダイスを1つ振り直しても良い。"""
        "Snap Shot":
           display_name: """Snap Shot"""
           text: """敵宇宙船がマニューバを実行した後、君はこの攻撃をその宇宙船に対してボーナス攻撃として実行しても良い。%LINEBREAK% <b>攻撃:</b> 君のダイスは修正できない。"""
        "Deuterium Power Cells":
           display_name: """Deuterium Power Cells"""
           text: """システム・フェイズの間、君は%CHARGE%を1つ消費し、%SHIELD%を1つ回復するために武装解除トークンを得ても良い。%LINEBREAK%君がロックではないトークンを1つ得ようとする前に、もし君がストレス状態でなければ、%CHARGE%を1つ消費し代わりにストレス・トークンを1つ得ても良い。"""
        "Mag-Pulse Warheads":
           display_name: """Mag-Pulse Warheads"""
           text: """<b>攻撃 (%LOCK%):</b> %CHARGE%を1つ消費。もしこの攻撃が命中したなら、防御者は%CRIT%ダメージを1つ受け、デプリート・トークン1つとジャム・トークン1つを得る。その後、全ての%HIT%/%CRIT%の結果をキャンセルする。"""
        "Coaxium Hyperfuel":
           display_name: """Coaxium Hyperfuel"""
           text: """君は%SLAM%アクションをストレス状態でも実行できる。もしそうするなら、君は君のダメージ・カードのうち1つをエクスポーズしない限り、君は%CRIT%ダメージを1つ受ける。%LINEBREAK%君がマニューバを部分的に実行した後、君は%SLAM%アクションを実行するために、君のダメージ・カードのうちの1つをエクスポーズするか、%CRIT%ダメージを1つ受けても良い。"""
        "R1-J5":
           display_name: """R1-J5"""
           text: """君のストレス・トークンが2つ以下の際、君はストレス状態でもダメージ・カードのアクションを実行することができる。%LINEBREAK%君が<b>宇宙船</b>特性のダメージ・カードを修理した後、君は%CHARGE%を1つ消費し、そのカードを再度修理しても良い。"""
        "Stabilized S-Foils":
           display_name: """Stabilized S-Foils"""
           text: """<strong>Closed: </strong><i><r>%RELOAD%</r>、%BARRELROLL% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i><r> %EVADE%</r>を追加</i>%LINEBREAK%君がアクティベートする前に、もし君がクリティカル・ダメージ状態でなければ、君はこのカードを裏向きにしても良い。%LINEBREAK% <strong>Open:</strong> <i>%BARRELROLL% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i><r> %LOCK%</r></i>%LINEBREAK%君が攻撃を実行した後に、君は防御者へのロックを消費し、その宇宙船に対して、このターン攻撃していない%CANNON%アップグレードによりボーナス攻撃を実行しても良い。%LINEBREAK%君がアクティベートする前に、もし君がクリティカル・ダメージ状態でなければ、君はこのカードを裏向きにしても良い。"""
        "K-2SO":
           text: """%CALCULATE%、%JAM%を追加%LINEBREAK%システム・フェイズの間、君はレンジ0-3の友軍宇宙船を選んでも良い。その宇宙船はカリキュレート・トークンを1つとストレス・トークンを1つ得る。"""
        "Proud Tradition":
           text: """<strong>Proud Tradition</strong>%LINEBREAK%<b>セットアップ:</b> この面を表にして装備する。%LINEBREAK%君が2つ以下のストレス・トークンを持っている際、君はストレス状態でも%FOCUS%アクションを実行できる。君が攻撃を実行した後、もし君がストレス状態なら、防御者はフォーカス・トークンを1つ消費するか、%CRIT%ダメージを1つ受けこのカードを裏返しても良い。%LINEBREAK% <strong>False Tradition</strong>%LINEBREAK%君の%FOCUS%アクションは赤として扱う。"""
        "Cluster Mines":
           text: """<b>機雷</b>%LINEBREAK% システム・フェイズの間に、君は%CHARGE%を1つ消費し、1%STRAIGHT%テンプレートを使ってCluster Mineのセットを投下しても良い。%LINEBREAK%このカードの%CHARGE%は回復できない。"""
        "Kaz's Fireball":
           text: """<b>セットアップ:</b> 君が<strong>Explosion with Wings</strong>を解決する時、君はダメージ・デッキをサーチし、<b>宇宙船</b>特性のダメージ・カードを1枚選んでも良い: 君は代わりにそのカードを受ける。その後、ダメージ・デッキをシャッフルする。%LINEBREAK%君はイオン状態でもダメージ・カードのアクションを実行できる。"""
        "Agent Terex":
           text: """<b>セットアップ:</b> こちらの面を表で装備し、このカードの上にカリキュレート・トークンを3つ置く。%LINEBREAK%エンゲージメント・フェイズの開始時、君はレンジ0-3の友軍宇宙船を1つ選び、このカードの上からカリキュレート・トークンを1つ取り除き、その宇宙船は一致するトークンを得ても良い。その後、もしこのカードの上にカリキュレート・トークンがないなら、それを裏返す。%LINEBREAK%<strong>Cyborg:</strong> システム・フェイズの間、攻撃ダイスを1つ振る。%HIT%あるいは%CRIT%なら、カリキュレート・トークンを1つ得る。それ以外ならジャム・トークンを1つ得る。%LINEBREAK% <b>アクション:</b> レンジ0-3の宇宙船にカリキュレート・トークン1つかジャム・トークン1つを転送する。"""
        "Clone Captain Rex":
           text: """君が攻撃を実行する際、君は%FOCUS%の結果を1つ消費しても良い。もしそうするなら、防御者の%BULLSEYEARC%内にいる友軍の各宇宙船は、ストレイン・トークンを1つ得て%FOCUS%アクションを実行しても良い。"""
        '"Fives"':
           text: """君が攻撃を実行しミスした後、もし防御者のイニシアチブが君のイニシアチブと同じかより高いなら、このカードの上に回避あるいはフォーカス・トークンを1つ置く。%LINEBREAK%君がエンゲージする前に、君はこのカードの上からトークンを1つ取り除き、一致するトークンを1つ得ても良い。"""
        "Suppressive Gunner":
           text: """君が攻撃を実行する際、君は%FOCUS%の結果を1つ消費しても良い。もしそうするなら、防御者は%HIT%ダメージを1つ受けることを選ばないなら、デプリート・トークンを1つ得る。"""
        "Ghost Company":
           text: """君が主武装による攻撃を実行した後、もし君がフォーカス状態なら、このラウンドまだ君が攻撃していない宇宙船に対し、ボーナス攻撃として%SINGLETURRETARC%攻撃を実行しても良い。"""
        "Wolfpack":
           text: """レンジ0-3の友軍宇宙船が防御した後、もし攻撃者が君のファイアリング・アーク内にいるなら、防御者はストレイン・トークンを1つ得て攻撃者に対してロックを得ても良い。"""
        "Yoda":
           text: """レンジ0-2の他の友軍宇宙船が紫のマニューバを完全に実行するか、紫のアクションを実行した後、君は%FORCE%を1つ消費しても良い。もしそうするなら、その宇宙船は%FORCE%を1つ回復する。"""
        "Kit Fisto":
           text: """エンゲージメント・フェイズの開始時、君はレンジ0-1の友軍宇宙船を1つ選び、%FORCE%を1つ消費しても良い。もしそうするなら、それは赤の%EVADE%アクションを実行しても良い。"""
        "Plo Koon":
           text: """終了フェイズの開始時、もし君がリインフォース状態なら、君はレンジ0の友軍宇宙船か、レンジ1で%LEFTARC%あるいは%RIGHTARC%内の友軍宇宙船を1つ選んでも良い。その宇宙船はデプリートあるいはストレイン・トークンを1つ取り除くか、表向きのダメージ・カードを1枚修理する。"""
        "Aayla Secura":
           text: """君の%BULLSEYEARC%内にいる敵宇宙船が攻撃を実行する際、もし防御者が友軍でレンジ0-2にいるなら、防御者は空白の結果1つを%FOCUS%の結果に変更しても良い。"""
        "Repulsorlift Stabilizers":
           text: """<strong>Inactive:</strong> <b>セットアップ:</b> この面を表にして装備する。君の%STRAIGHT%マニューバの難易度を下げる。%LINEBREAK%君がマニューバを完全に実行した後、君はこのカードを裏返しても良い。%LINEBREAK%<strong>Active: </strong>君がバンク(%BANKLEFT%あるいは%BANKRIGHT%)あるいはターン(%TURNLEFT%あるいは%TURNRIGHT%)マニューバを公開した後、君はそのマニューバをサイドスリップとして<b>実行しなければならない</b>。その後このカードを裏返す。%LINEBREAK%君がサイドスリップではないマニューバを完全に実行した後、このカードを裏返しても良い。"""
        "Multi-Missile Pods":
           text: """<b>攻撃 (%CALCULATE% あるいは %LOCK%):</b> %CHARGE%を1つ消費する。もし防御者が%FRONTARC%内にいるなら、%CHARGE%を1つ消費して追加の攻撃ダイスを1つ振っても良い。もし防御者が%BULLSEYEARC%内にいるなら、代わりに%CHARGE%を2つまで消費して同じ数の攻撃ダイスを追加で振っても良い。"""
        "Synced Laser Cannons":
           text: """<b>攻撃:</b> もし君がカリキュレート状態なら、防御者はレンジボーナスを適用しない。"""
        "Concussion Bombs":
           text: """システム・フェイズの間に、もしこのカードの%CHARGE%が1つでもアクティブ状態でなければ、君は可能なら%CHARGE%を1つ消費し、1%STRAIGHT%テンプレートを使ってConcussion Bombを1つ<b>投下しなければならない</b>。そうでなければ、君は%CHARGE%を1つ消費してConcussion Bombを投下しても良い。"""
        "Maneuver-Assist MGK-300":
           text: """君の速度3の直進[%STRAIGHT%]およびバンク[%BANKLEFT%あるいは%BANKRIGHT%]マニューバの難易度を下げる。"""
        "Target-Assist MGK-300":
           text: """君がエンゲージする前に、もし君に緑のトークンがついていなくストレス状態でなければ、君のファイアリング・アーク内レンジ2-3の敵宇宙船につき1つカリキュレート・トークンを、最大2つまで得る。"""
        "Deadeye Shot":
           text: """君が主武装による攻撃を実行する際、もし防御者が君の%BULLSEYEARC%内にいるなら、君は%HIT%の結果1つを消費するか、%CRIT%の結果1つを%HIT%に変更しても良い。もしそうするなら、防御者はダメージ・カードを1つエクスポーズする。"""
        "Marg Sabl Closure":
           text: """君がマニューバを完全に実行した後、もし君が障害物、構造物、あるいは巨大船を通過したなら、君は君の%FRONTARC%内レンジ1-2の敵宇宙船を1つ選ぶ。その宇宙船はストレイン・トークンを1つ得る。"""
        "Hondo Ohnaka":
           text: """<b>アクション:</b> 君のレンジ1-3にいて、お互いが友軍の宇宙船を2つ選ぶ。君は距離の制限を無視して、選んだ宇宙船のうち1つをコーディネートし、その後もう片方をジャムする。"""
        "Boba Fett (Separatist)":
           text: """君が攻撃を実行する際、もしその攻撃アーク内に他の宇宙船がいないなら、君は君の%FOCUS%の結果のうち1つを%HIT%の結果に変更しても良い。"""
        "R2-D2 (Republic)":
           text: """君がアクティベートした後、君はダメージカードを1つ修理するか、シールドを1つ回復するか、あるいはレンジ0-1のデバイスを1つ取り除くために、%CHARGE%を1つ消費し、デプリート・トークンを1つ得ても良い。"""
        "Patience":
           text: """エンゲージメント・フェイズの開始時、もし君の%FRONTARC%内に敵がいるなら、君はデプリート・トークンを1つ得て、%FORCE%を1つ回復しても良い。"""
        "Syliure-31 Hyperdrive":
           text: """<b>セットアップ:</b>  君は障害物からレンジ1より離れて、敵宇宙船からレンジ3より離れて、敵のテーブルの端からレンジ3より離れたプレイエリアの好きな場所に配置できる。"""
        "Jedi Commander":
           text: """<b>セットアップ面:</b>%LINEBREAK%<b>セットアップ:</b> この面を表にして装備する。%LINEBREAK%君は<b>ウィング・リーダー</b>である。君のウィングメイトは2-5つのV-19 Torrentsあるいは2-5つのNimbus-class V-wingsでなければならない。%LINEBREAK%<b>プレイ面:</b> 君は置かれた後、このカードを裏返す。%LINEBREAK% <b>プレイ面:</b>%LINEBREAK%君のウィングメイトが紫のマニューバを実行する際、それらはそのマニューバを代わりに赤として扱う。%LINEBREAK% 君が防御する際、その攻撃アーク内の2つまでのウィングメイトは、一致する結果1つをキャンセルするために、それぞれ%HIT%/%CRIT%を1つ受けても良い。"""
        "Extreme Maneuvers":
           text: """君が%BOOST%アクションを実行する際、君は%FORCE%を1つ消費し、代わりにターン(%TURNLEFT%あるいは%TURNRIGHT%)テンプレートを使用しても良い。"""
        "Starbird Slash":
           text: """君がマニューバを完全に実行した後、君は通過した敵宇宙船を1つ選んでも良い。その宇宙船はストレイン・トークンを1つ得る。その後、君がその宇宙船のファイアリング・アーク内にいるなら、君はストレイン・トークンを1つ得る。"""
        "Backwards Tailslide":
           text: """君がブーストかバレル・ロールをする際、もし君の装備した%CONFIGURATION%アップグレードが"(Closed)"の面が表なら、君は障害物の通過と、障害物に重なることができる。%LINEBREAK% 君が障害物を通過してブーストかバレル・ロールをした後、もし君がそれのレンジ0にいないなら、回避トークンを1つ得る。"""
        "Overdrive Thruster":
           text: """君が赤の%BOOST%、%BARRELROLL%あるいは%SLAM%アクションを実行する際、君は可能なら速度が1つ速いテンプレートを<b>使用しなければならない</b>。"""
        "R2-D2 (Resistance)":
           text: """終了フェイズの間、君は%CHARGE%1つと%SHIELD%1つを消費して赤のトークン1つを取り除いても良い。%LINEBREAK%終了フェイズの間、もし君がアクティブな%SHIELD%を持っていないなら、君は%CHARGE%を2つ消費し、%SHIELD%を1つ回復し、デプリート・トークンを1つ得ても良い。"""
        "R6-D8":
           text: """君が攻撃を実行する際、君はレンジ0-3で防御者が自分の%BULLSEYEARC%内にいる友軍宇宙船の数だけ攻撃ダイスを振り直しても良い。"""
        "Underslung Blaster Cannon":
           text: """敵宇宙船がマニューバを実行した後、君はこの攻撃をその宇宙船に対してボーナス攻撃として実行しても良い。%LINEBREAK% <b>攻撃 (%LOCK%):</b>君のダイスはロックを消費することによる通常の効果でのみ修正できる。"""
        "Commander Pyre":
           text: """<b>セットアップ:</b> 戦力の配置後、敵宇宙船を1つ選ぶ。それはストレス・トークンを2つ得る。%LINEBREAK%君が防御する際、もし攻撃者がストレス状態なら、君は防御ダイスを1つ振り直しても良い。"""
        "Commander Malarus":
           text: """<b>セットアップ:</b> この面を表にして装備する。%LINEBREAK%レンジ0-1の友軍の非制限の宇宙船が主武装による攻撃を実行する際、その宇宙船は空白の結果を1つ振り直しても良い。もしそうしてその攻撃が命中しなかったなら、君はこのカードを<b>裏返さなければならない</b>。%LINEBREAK%<strong>Perfected:</strong>君が攻撃を実行する際、もし防御者が君の%BULLSEYEARC%内にいるなら、君は全ての%FOCUS%の結果を%HIT%の結果に変換し、ストレス・トークンを1つ得なければならない。その後、もし君がストレス・トークンを2つ以上持っているなら、%HIT%ダメージを1つ受ける。"""
        "Automated Target Priority":
           text: """君が攻撃を実行する際、君は最も近い有効な攻撃レンジにいる防御者を<b>選ばなければならない</b>。%LINEBREAK%君が攻撃を実行してそれがミスだった後、このカードの上にカリキュレート・トークンを1つ置く。%LINEBREAK%君がエンゲージする前に、君はこのカードからカリキュレート・トークンを1つ取り除き、一致するトークンを得ても良い。"""
        "Sensor Buoy Suite":
           text: """<b>セットアップ:</b> 戦力の配置前、すべての端からレンジ2より離して sensor buoy リモートを2つ配置する。%LINEBREAK% 君がエンゲージする前に、君はレンジ制限を無視して、友軍の sensor buoy のレンジ0-1の宇宙船に対してロックを得ても良い。"""
        "Kalani":
           text: """敵宇宙船がマニューバを実行した後、もしそれがレンジ0-3の友軍宇宙船の%BULLSEYEARC%にいるなら、君は%CHARGE%を1つ消費しても良い。もしそうするなら、その友軍宇宙船はその敵宇宙船に対してロックを得、その後ストレス・トークンを1つ得る。"""
        'Alpha-3B "Besh"':
           text: """君が主武装による攻撃を実行する際、君は君の防御者へのロックを消費し、空白あるいは%FOCUS%の結果1つを%HIT%の結果に変更しても良い。%LINEBREAK%%DEVICE%スロットを追加する。"""
        'Alpha-3E "Esk"':
           text: """君が主武装による攻撃を実行する際、攻撃ダイスを振る前に、君は%CHARGE%を2つ消費しても良い。もしそうするなら、君の%CRIT%の結果はダメージの代わりにイオン・トークンを与える。"""
        "Thermal Detonators":
           text: """<b>爆弾</b>%LINEBREAK% システム・フェイズの間、君は%CHARGE%を2つまで消費し、同じ数のThermal Detonatorを[1%STRAIGHT%]あるいは[2%STRAIGHT%]テンプレートを使って投下しても良い。それぞれは違うテンプレートを使って設置されなければならない。%LINEBREAK%君がこのカードをリロードする時、追加で%CHARGE%が1つ回復する。"""
        "R7-A7":
           text: """君が攻撃を実行する際、君は%CHARGE%を1つ消費し、%HIT%の結果を%CRIT%の結果に変更しても良い。"""
        "Q7 Astromech":
           text: """君がバレル・ロールかブーストを実行する際、君は障害物を通過するか、あるいは障害物に重なっても良い。"""
        "Ion Limiter Override":
           text: """君が赤のマニューバを完全に実行した後、君はストレス状態でも、%BARRELROLL%アクションを実行しても良い。もしそうするなら、攻撃ダイスを1つ振る。%HIT%の結果ならストレイン・トークンを1つ得る。%CRIT%の結果ならイオン・トークンを1つ得る。"""
        "Precision Ion Engines":
           text: """君が速度1-3のコイオグラン・ターン(%KTURN%)を実行する前に、君は%CHARGE%を1つ消費し代わりにそのマニューバをセグナーズ・ループ(%SLOOPLEFT% あるいは %SLOOPRIGHT%)として実行しても良い。"""
        "Intercept Booster":
           text: """<strong>Attached:</strong> <b>セットアップ:</b> この面を表にして装備する。%LINEBREAK%システム・フェイズの間、君はもしこのカードを裏返さないなら、武装解除トークンを1つ得る。%LINEBREAK%終了フェイズの最後に、もしアクティブな%CHARGE%がなければ、このカードを裏返す。%LINEBREAK% <strong>Detached:</strong> <i>Empty</i>"""
        "XX-23 S-Thread Tracers":
           text: """<b>攻撃: [%FOCUS%, %CALCULATE%, あるいは %LOCK%]</b>%CHARGE%を1つ消費する。もしこの攻撃が命中したなら、防御者からレンジ1-3の各友軍宇宙船は防御者へのロックを得ても良い。その後すべてのダイスの結果をキャンセルする。"""
        "Independent Calculations":
           text: """君の<strong>Networked Calculations</strong>宇宙船能力を以下と置き換える: %LINEBREAK% <strong>Independent Calculations:</strong> 君が白の%CALCULATE%アクションを実行する際、君はそれを赤として扱い、追加のカリキュレート・トークンを1つ得ても良い。他の宇宙船は<strong>Networked Calculations</strong>宇宙船能力を使って君のカリキュレート・トークンを消費できない。"""
        "Jango Fett":
           text: """君が防御するか攻撃を実行する際、君は敵宇宙船へのロックを消費して、その敵宇宙船の%FOCUS%の結果のうち1つを空白の結果に変更しても良い。"""
        "Zam Wesell":
           text: """<b>セットアップ:</b> %CHARGE%を2つ失う。%LINEBREAK% システム・フェイズの間、君はシークレット・コンディションのうち1つを裏向きにつけても良い。: <strong> %LINEBREAK% You Should Thank Me %LINEBREAK% You'd Better Mean Business. </strong>"""
        "Boba Fett (Separatist)":
           display_name: "Boba Fett"
           text: """君が攻撃を実行する際、もしその攻撃アーク内に他の宇宙船がいないなら、君は君の%FOCUS%の結果のうち1つを%HIT%の結果に変更しても良い。"""
        "Slave I (Separatist)":
           display_name: "Slave I"
           text: """君が%FRONTARC%攻撃を実行する際、もし君が防御者の%FULLREARARC%にいるなら、君は%HIT%の結果1つを%CRIT%の結果に変更しても良い。%LINEBREAK%%GUNNER%スロットを追加する。"""
        "Weapons Systems Officer":
           text: """君が%LOCK%が必要条件の特殊攻撃を実行した後、君は防御者へのロックを得ても良い。"""
        "False Transponder Codes":
           text: """君があるオブジェクトに対してロックを得るか、あるオブジェクトが君に対してロックを得た後で、もし君がアクティブな%CHARGE%を1つ持っているなら、%CHARGE%を1つ消費し、距離の制限を無視してそのオブジェクトをジャムする。"""

        "Vectored Cannons (RZ-1)":
           text: """%SINGLETURRETARC%インジケーターを得る。君の%FRONTARC%主武装攻撃のアーク必要条件を%SINGLETURRETARC%として扱う。%LINEBREAK% 君の<strong>Vectored Thrusters</strong>宇宙船能力を以下と置き換える。%LINEBREAK%<strong>Vectored Cannons:</strong>システム・フェイズの間、君は赤の%BOOST%アクションか赤の%ROTATEARC%アクションを行っても良い。君は君の%SINGLETURRETARC%インジケーターを%FRONTARC%か%REARARC%にのみ回転できる。"""
        "B6 Blade Wing Prototype (Epic)":
           text: """<b>攻撃 (%LOCK%):</b> この攻撃を実行するために、イオン・トークンを1つ得る。もしこの攻撃が命中したなら、防御者はキャンセルされていない最初の%HIT%/%CRIT%の結果につき一致する追加ダメージを1つ受ける。"""
        "TIE Defender Elite":
           text: """君のターン・マニューバ(%TURNLEFT%あるいは%TURNRIGHT%)の難易度を下げる。君のコイオグラン・ターン(%KTURN%)の難易度を上げる。君の<strong>Full Throttle</strong>宇宙船能力を以下と置き換える。%LINEBREAK% <strong>Advanced Fire Control:</strong> 君が%CANNON%あるいは%MISSILE%攻撃を実行した後、もし君が防御者をロックしているなら、君は防御者に対してボーナスの主武装攻撃を行っても良い。"""
        "Sensitive Controls":
           text: """君の<strong>Autothrusters</strong>宇宙船能力を以下と置き換える。%LINEBREAK%<strong>Sensitive Controls:</strong> システム・フェイズの間、君は赤の%BARRELROLL%あるいは赤の%BOOST%アクションを行っても良い。"""
        "Cutthroat":
           text: """レンジ0-3の他の友軍宇宙船が破壊された後、もしその宇宙船が制限宇宙船であるか<strong>Cutthroat</strong>アップグレードを持っているなら、君は君のオレンジあるいは赤のトークンを1つ取り除くか、君の宇宙船カードあるいは君が装備したアップグレード・カードのうち1つの自動変化しない%CHARGE%を1つ回復しても良い。"""
        "Tierfon Belly Run":
           text: """君はアステロイドのレンジ0にいる際にも特殊攻撃を実行できる。%LINEBREAK% 君が防御する際、もし君が障害物のレンジ0にいるなら、攻撃ダイスを振り直すことができない。"""
        "B6 Blade Wing Prototype":
           text: """ """
        "Phoenix Squadron":
           text: """<b>セットアップ面:</b>%LINEBREAK%セットアップ: この面を表にして装備する。%LINEBREAK% 君は<b>ウィング・リーダー</b>である。君のウィングメイトは以下の2-5つでなければならない。 %LINEBREAK% - 0-1つのAttack Shuttle %LINEBREAK% - 0-1つのSheathipede-class Shuttle %LINEBREAK% - 0-5つのRZ-1 A-wings %LINEBREAK% 君が置かれた後、このカードを裏返す。 %LINEBREAK% <b>プレイ面:</b>%LINEBREAK% プランニング・フェイズの開始時、君にドック状態の君のウィングメイトのうちの1つは, ストレス・トークンを得ることなく君のウィングに参加しても良い。%LINEBREAK% 君か君のAttack ShuttleウィングメイトあるいはSheathipede-classウィングメイトが防御する際、攻撃アーク内の君のRZ-1 A-Wingウィングメイトのうち2つまでは、一致する結果1つをキャンセルするために、それぞれ%HIT%/%CRIT% ダメージを1つ受けても良い。"""
        "Hopeful":
           text: """レンジ0-3の他の友軍宇宙船が破壊された後、もしその宇宙船が制限宇宙船であるか<strong>Hopeful</strong>アップグレードを持っているなら、君は%FOCUS%あるいは%BOOST%アクションを実行しても良い。"""
        "Sabine Wren (Gunner)":
           display_name: """Sabine Wren"""
           text: """君が特殊攻撃を実行した後、君は防御者からレンジ0-3の友軍宇宙船を、その攻撃で防御者に渡したダメージ・カードの数まで選ぶ。選ばれた各宇宙船はストレインあるいはストレス・トークンを1つ取り除いても良い。"""
        "Disciplined":
           text: """レンジ0-3の他の友軍宇宙船が破壊された後、もしその宇宙船が制限宇宙船であるか<strong>Disciplined</strong>アップグレードを持っているなら、君は%LOCK%あるいは%BARRELROLL%アクションを実行しても良い。"""
        "Shadow Wing":
           text: """<b>セットアップ面:</b>%LINEBREAK%セットアップ: この面を表にして装備する。%LINEBREAK% 君は<b>ウィング・リーダー</b>である。君のウィングメイトは2-5つの君のタイプと同じ別の宇宙船でなければならない。 %LINEBREAK% 君が置かれた後、このカードを裏返す。 %LINEBREAK% <b>プレイ面:</b>%LINEBREAK% 君のウィングメイトは%BARRELROLL%あるいは%BOOST%アクションを実行できる。もしそうするなら、その宇宙船は自発的にウィングから離れる。%LINEBREAK% 君が防御する際、攻撃アーク内の君のウィングメイトのうち2つまでは、一致する結果1つをキャンセルするために、それぞれ%HIT%/%CRIT% ダメージを1つ受けても良い。"""
        "Skystrike Academy Class":
           text: """<b>セットアップ面:</b>%LINEBREAK%セットアップ: この面を表にして装備する。%LINEBREAK% 君は<b>ウィング・リーダー</b>である。君のウィングメイトは2-5つの君よりもイニシアチブの低いTIE/ln Fighterでなければならない。 %LINEBREAK% 君が置かれた後、このカードを裏返す。 %LINEBREAK% <b>プレイ面:</b>%LINEBREAK% 君がバレル・ロールあるいはブーストした後、君のウィングメイトはウィングから強制的に離れる。%LINEBREAK% 君が防御する際、攻撃アーク内の君のウィングメイトのうち5つまでは、一致する結果1つをキャンセルするために、それぞれ%HIT%/%CRIT% ダメージを1つ受けても良い。"""
        "In It For The Money":
           text: """<strong>In It For The Money:</strong>%LINEBREAK%セットアップ: この面を表にして装備する。 %LINEBREAK% 君は共和国、反乱、レジスタンスのスコードに入ることができる。 %LINEBREAK% 君のスコードの同盟軍の制限宇宙船が破壊された後、フォーカス・トークンを1つ得て、このカードを裏返す。%LINEBREAK% <strong>In It For Your Rebellion:</strong>%LINEBREAK% 君のスコードのスカムではない宇宙船は同盟軍の代わりに友軍として扱う。"""
        "Bounty":
           text: """<strong>Hired:</strong>%LINEBREAK%セットアップ: この面を表にして装備する。%LINEBREAK% 君は分離主義者、帝国、ファースト・オーダーのスコードに入ることができる。%LINEBREAK% 君が攻撃を実行した後、もし防御者が制限宇宙船であり、破壊されたなら、君は君の宇宙船カードおよび君のアップグレード・カードそれぞれの%CHARGE%を1つ回復しても良い。その後このカードを裏返す。%LINEBREAK% <strong>Paid:</strong>%LINEBREAK% """
        "Gamut Key":
           text: """終了フェイズの開始時、君は%CHARGE%を2つ消費して、1つ以上の丸いトークンを持つ、レンジ0-1の宇宙船を選んでも良い。終了フェイズの間、その宇宙船から丸いトークンを取り除かない。"""
        "Interloper Turn":
           text: """君が速度1-2のターン(%TURNLEFT% or %TURNRIGHT%)あるいは速度1-2のコイオグラン・ターン(%KTURN%)を実行する前に、もし君がアステロイド、構造物あるいは巨大船のレンジ0-1にいるなら、君はトラクター・トークンを1つ得ても良い。"""
        "Protectorate Gleb":
           text: """君が友軍宇宙船をコーディネートした後、君は君がコーディネートした宇宙船に、オレンジか赤のトークンを1つ転送しても良い。"""
        "R4-B11":
           text: """君が攻撃を実行する際、君は防御者からオレンジか赤のトークンを1つ取り除き、任意の数の防御ダイスを振り直させても良い。"""
        "Wartime Loadout":
           text: """%TORPEDO%スロット1つと%MISSILE%スロット1つを得る。君の宇宙船能力を以下と置き換える:  %LINEBREAK%<strong>Devastating Barrage:</strong> 君が%TORPEDO%あるいは%MISSILE%攻撃を行う際、もし防御者が君の%BULLSEYEARC%にいるなら、君の%CRIT%の結果は%EVADE%の結果でキャンセルできない。"""
        "Watchful Astromech":
           text: """君が%RELOAD%あるいは%ROTATEARC%アクションを実行した後、もし君が敵宇宙船のファイアリング・アーク内にいるなら、君は赤の%CALCULATE%アクションを実行しても良い"""
        "L4E-R5":
           text: """エンゲージメント・フェイズの開始時、君は君のファイアリング・アーク内の友軍宇宙船にカリキュレート・トークンを1つ転送しても良い。"""
        "Overtuned Modulators":
           text: """システム・フェイズの間、もし君がストレス状態でなければ、君は%CHARGE%を1つ消費し、カリキュレート・トークンを3つ得ても良い。%LINEBREAK%終了フェイズの間、もし君の%CHARGE%がアクティブでなければ、君が取り除く緑のトークンに1つにつき1つのストレイン・トークンを得る。"""
        "Sensor Scramblers":
           text: """<b>セットアップ:</b> クローク・トークンを1つ得る。%LINEBREAK% 君がクローク状態の際、他の宇宙船は君に対してロックを得ることができない。%LINEBREAK%終了フェイズの間、もし君がクローク状態で、レンジ0-3に敵宇宙船がいるなら、君は<b>デクロークしなければならない</b>。もしそうして、それがデクロークを失敗するなら、クローク・トークンを1つ失う。"""
        "Enhanced Jamming Suite":
           text: """君がジャムする際、君は君自身あるいは君以外の友軍宇宙船をジャムできる。%LINEBREAK%君が防御する際、もし攻撃者が緑のトークンを持っていないかあるいはその攻撃アーク内にジャム状態の宇宙船がいるなら、君は防御ダイスを1つ多く振っても良い。"""
        "Compassion":
           text: """レンジ0-2の他に友軍宇宙船が表向きの<b>パイロット</b>あるいは<b>クルー</b>のダメージ・カードを受け取ろうとする時、君は%FORCE%を1つ消費しても良い。もしそうするなら、そのダメージ・カードは代わりに捨て札にされ、そして君は裏向きのダメージ・カードを1枚受け取る。その後、もし君がダメージ・カードを2枚以上持っているなら、%CHARGE%を2つ回復する。"""
        "Malice":
           text: """君が攻撃を実行する際、君は%FORCE%を1つ消費し、%FOCUS%あるいは%HIT%の結果1つを%CRIT%に変更しても良い。もしそうするなら、君がその攻撃を実行した後、もし防御者が1枚以上の<b>パイロット</b>あるいは<b>クルー</b>ダメージ・カードを受け取ったなら、%FORCE%を2つ回復する。"""
        "Shattering Shot":
           text: """君が攻撃を実行する際、もし攻撃が障害物に妨害されるか、防御者が障害物のレンジ0にいるなら、君は%FORCE%を1つ消費し、%FOCUS%の結果を1つ追加しても良い。"""
        "DT-798":
           text: """エンゲージメント・フェイズの開始時に、君は君のファイアリング・アーク内の友軍宇宙船を1機選んでも良い。もしそうするなら、その宇宙船はストレイン・トークンを1つ得る。%LINEBREAK%君が攻撃を実行する際、君はその攻撃アーク内の、ロックではない赤のトークンかオレンジのトークンを1つでも持っている宇宙船の数につき1つ、ダイスを振り直しても良い。"""
        "Feedback Ping":
           text: """敵宇宙船がマニューバを実行した後、もしそれが友軍のデバイスのレンジ0-1にいるなら、君は距離の制限を無視してその宇宙船に対してロックを得ても良い。"""
        "Electro-Chaff Missiles":
           text: """システム・フェイズの間、君はこのカードから%CHARGE%を1つ消費し、[3 %BANKLEFT%]、[3 %BANKRIGHT%]、あるいは[4 %STRAIGHT%]テンプレートを使用して、electro-chaff cloudを1つ射出しても良い。その後それの上にフューズ・トークンを1つ置く。%LINEBREAK% このカードの%CHARGE%は回復できない。"""
        "Babu Frik":
           text: """君がロックではない赤のトークンかオレンジのトークンを受け取ろうとする前に、君は%CHARGE%を1つ消費し、代わりにそれをこのカードの上に置いても良い。システム・フェイズの間、もしこのカードの上1つ以上のトークンがあるなら、君は%CHARGE%を1つ<b>消費しなければならない</b>。もし君が消費できないなら、それらのトークンを取り除き、一致するトークンを得る。"""
        "Ahsoka Tano (Crew)":
           display_name: """Ahsoka Tano"""
           text: """君がマニューバを完全に実行した後、君は%FORCE%を1つ消費し、君の%FULLREARARC%内レンジ1-2の友軍宇宙船を1つ選んでも良い。もし君がそうするなら、その宇宙船は、ストレス状態であっても、赤の%FOCUS%アクションを行っても良い。"""
        "Bo-Katan Kryze (Republic/Separatist)":
           display_name: """Bo-Katan Kryze"""
           text: """君が攻撃を実行する際、もし君が防御者のレンジ0-1にいるなら、攻撃ダイスを1つ振り直しても良い。"""
        "Bo-Katan Kryze (Rebel/Scum)":
           display_name: """Bo-Katan Kryze"""
           text: """君が攻撃を実行した後、もし防御者が破壊されたなら、レンジ0-2の各友軍宇宙船は赤かオレンジのトークンを1つ取り除いても良い。"""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """レンジ0-2の友軍宇宙船がエンゲージする前に、もしそれの公開したマニューバの速度が1以上で、それの%FRONTARC%レンジ1に敵宇宙船がいるなら、その友軍宇宙船はロックではない赤のトークンを1つ取り除いても良い。"""
        "Captain Hark":
           display_name: """Captain Hark"""
           text: """君が赤のマニューバを完全に実行した後、もし君がフォーカス状態でないなら、君は%CHARGE%を1つ消費し、フォーカス・トークンを1つ得ても良い。"""
        "Gar Saxon":
           display_name: """Gar Saxon"""
           text: """イニシアチブ4以下のレンジ1-3の友軍ユニットが、君がロックした防御者に対して攻撃を実行する際、攻撃者は%FOCUS%の結果を1つ%HIT%に変更しても良い。"""
        "Gar Saxon (Gunner)":
           display_name: """Gar Saxon"""
           text: """君が%LOCK%アクションを実行する際、君は君の%FRONTARC%あるいは%REARARC%内のオブジェクトのみを選ぶことができる。%LINEBREAK%君が主武装攻撃を実行する際、もし防御者が君の%FRONTARC%あるいは%REARARC%内にいるなら、君は防御者からオレンジあるいは赤のトークンを1つ取り除き、追加でダイスを振っても良い(最大で4)。"""
        "Korkie Kryze":
           display_name: """Korkie Kryze"""
           text: """君の%FULLFRONTARC%内レンジ1-2の友軍宇宙船が防御者になった後、君はそれに緑のトークン1つを転送しても良い。%LINEBREAK%君の%FULLFRONTARC%内レンジ1-2の友軍宇宙船が防御する際、もし君がその攻撃を妨害するなら、防御者は防御ダイスを1つ追加で振る。"""
        "Obi-Wan Kenobi":
           display_name: """Obi-Wan Kenobi"""
           text: """レンジ0-2の友軍宇宙船がフォーカスあるいは回避トークンを消費した後、君が%FORCE%を1つ消費しても良い。もし君がそうするなら、その宇宙船はフォーカス・トークンを1つ得る。"""
        "Pre Vizsla":
           display_name: """Pre Vizsla"""
           text: """君が%COORDINATE%アクションを実行する際、君は他の友軍宇宙船の代わりに、友軍の%CREW%リモートを選んでも良い。アクションを実行する代わりに、そのリモートは[1 %TURNLEFT%], [1 %TURNRIGHT%], あるいは[2 %STRAIGHT%]テンプレートを使って前方に再配置する。"""
        "Rook Kast":
           display_name: """Rook Kast"""
           text: """君が赤のアクションを実行した後、君はストレイン・トークンを1つ得ても良い。%LINEBREAK%君が攻撃を実行する際、君がストレイン状態なら、君は空白あるいは%FOCUS%の結果のうち1つを、%HIT%に変更しても良い。"""
        "Satine Kryze":
           display_name: """Satine Kryze"""
           text: """エンゲージメント・フェイズの開始時、君は%CHARGE%を2つ消費しても良い。もし君がそうするなら、各友軍宇宙船はデプリート・トークン1つとフォーカス・トークン1つを得るか、武装解除トークン1つと回避トークン1つを得ても良い。"""
        "Savage Opress":
           display_name: """Savage Opress"""
           text: """君の%FRONTARC%内レンジ1-2の友軍宇宙船がストレスあるいはストレイン・トークンを得た後、君は%FOCUS%を1つ消費しても良い。もし君がそうするなら、その宇宙船はフォーカス・トークンを1つ得る。"""
        "Tal Merrik":
           display_name: """Tal Merrik"""
           text: """<b>セットアップ</b>: 戦力の配置の前に、敵宇宙船を1つ選び、それに<b>False Friend</b>コンディションをつける。%LINEBREAK%<b>アクション</b>: もし<b>False Friend</b>コンディションが敵宇宙船につけられていないなら、%FRONTARC%内レンジ0-2の敵宇宙船にそれをつける。"""
        "Tiber Saxon":
           display_name: """Tiber Saxon"""
           text: """君が攻撃レンジ1-2の攻撃を実行しそれが命中した後、もし防御者が表向きのダメージ・カードを持っていないなら、君は1つ以上%CHARGE%を消費しても良い。消費した%CHARGE%につき、防御者はストレイン・トークンを1つ得る。"""
        "Tristan Wren":
           display_name: """Tristan Wren"""
           text: """レンジ0-3の友軍宇宙船が%RANGEBONUS%攻撃を実行する際、君は%CHARGE%を1つ消費しても良い。もし君がそうするなら、攻撃者は%HIT%の結果1つを%CRIT%に変更しても良い。"""
        "Ursa Wren":
           display_name: """Ursa Wren"""
           text: """君はロックを2つ維持できる。それぞれのロックは別のオブジェクトへのものでなければならない。%LINEBREAK%レンジ0-3の友軍宇宙船がロックされた後、君は敵宇宙船へのロックを得ても良い。"""
        "Ursa Wren (Gunner)":
           display_name: """Ursa Wren"""
           text: """君がレンジ2よりも遠い敵ユニットのロックを得た後、もしロックしたユニットのレンジ0-1に友軍宇宙船がいないなら、カリキュレート・トークンを1つ得る。"""
        "Sabine Wren (Command)":
           display_name: """Sabine Wren"""
           text: """<b>セットアップ</b>: 戦力を設置する前に、<b>Trials of the Darksaber</b>コンディションを君自身に付ける。%LINEBREAK%君が%COORDINATE%アクションを実行する際、君は友軍の宇宙船を1つ追加でコーディネートしても良い。"""
        "Prime Minister Almec":
           display_name: """Prime Minister Almec"""
           text: """<b>セットアップ</b>:この面を表にして装備する。%LINEBREAK%レンジ0-2の友軍宇宙船が白のマニューバを公開した後、もしそれが緑のトークンを持っていないなら、それはストレス・トークンを1つ得て、カリキュレート・トークンを1つ得ても良い。%LINEBREAK%終了フェイズの間、もし君が2つ以上のストレス・トークンを持っているなら、このカードを裏返す%LINEBREAK% <strong>Almec, Maul's Puppet</strong> %LINEBREAK%レンジ0-2の友軍宇宙船が赤のマニューバを完全に実行した後、その宇宙船は、それのアクション・バーにある%CALCULATE%あるいは%FOCUS%アクションを、たとえストレス状態であっても実行しても良い。"""
        "Beskar Reinforced Plating":
           text: """君が防御する際、もし攻撃者が君の%FRONTARC%にいるなら、君が表向きのダメージ・カードを受け取ろうとする前に、君は%CHARGE%を1つ消費して代わりに裏向きで受け取るか、あるいは%CHARGE%を2つ消費して代わりにそれを捨て札にするかしても良い。"""
        "Blazer Bomb":
           text: """<b>爆弾</b>%LINEBREAK% システム・フェイズの間に、君は%CHARGE%を1つ消費し、[1 %STRAIGHT%]テンプレートを使ってBlazer Bombを投下しても良い。"""
        "Mandalorian Optics":
           text: """システム・フェイズの間、君は%CHARGE%を1つ消費して、君の%FRONTARC%内のオブジェクトに対するロックを得ても良い。%LINEBREAK%君が主武装攻撃を実行する際、もし君が防御者に対するロックを持っているなら、攻撃を妨害するレンジ0よりも遠い障害物を無視する。"""
        "Clan Training":
           text: """君がエンゲージする前に、もし君がフォーカス状態ではなく、君の%FRONTARC%内レンジ1に敵宇宙船がいるなら、君は%CHARGE%を1つ消費して赤の%FOCUS%アクションを実行しても良い。%LINEBREAK%君が攻撃を実行した後、もし防御者が破壊されたなら、%CHARGE%を1つ回復する。"""
        "Gauntlet":
           text: """システム・フェイズの間、君は%CHARGE%を1つ消費し、表向きの<b>宇宙船</b>ダメージ・カードを1つ修理しても良い。"""
        "Nightbrother":
           text: """君が青ではないマニューバを公開した後、もし君がストレス状態なら、%CHARGE%を2つ消費して、フォーカスあるいは回避トークンを1つ得ても良い。"""
        "Swivel Wing":
           text: """<strong>Swivel Wing (Down)</strong> %LINEBREAK% 君が[0 %STOP%]マニューバを実行した後、君は君の宇宙船を90度あるいは180度回転させても良い。もし君がそうするなら、君はこのカードを<b>裏返さなければならない。</b>%LINEBREAK% <strong>Swivel Wing (Up)</strong> %LINEBREAK% 君が防御する際、君は防御ダイスを1つ少なく振る。%LINEBREAK% 君が停止[%STOP%]ではないマニューバを完全に実行した後、君はこのカードを裏返しても良い。"""
        "Clan Wren Commandos":
           text: """システム・フェイズの間、君は%CHARGE%を1つ消費し、Commando Teamリモートを[1 %STRAIGHT%]テンプレートを用いて投下しても良い。君はそのデバイスを前か後のガイドを使って置くことができる。 %LINEBREAK% このカードの%CHARGE%は回復できない。"""
        "Razor Crest":
           text: """<b>セットアップ:</b> このカードの下に、非制限の%ILLICIT%を裏向きで置く。 %LINEBREAK% システム・フェイズの間、君はその%ILLICIT%アップグレードを公開して、それがセットアップ時に装備していたように装備しても良い(そのポイントコストを支払わずに)。"""
        "The Mandalorian":
           text: """終了フェイズの間、もし君がこのラウンド防御しなかったなら、可能なら自動変化しない%FORCE%を1つ回復する。"""
        "The Child":
           text: """<b>セットアップ:</b> 戦力を配置した後、対戦相手を選ぶ。そのプレイヤーは、そのプレイヤーの宇宙船2つに、<b>Merciless Pursuit</b>コンディションを付ける。 %LINEBREAK% 君の%FORCE%は自動変化アイコンを失う。君が防御した後、もし君がその攻撃の間ダメージを受けたなら、%FORCE%を1つ回復する。"""
        "Tracking Fob":
           text: """<b>セットアップ:</b> 戦力の配置の後に、対戦相手を選ぶ; そのプレイヤーは自分の宇宙船のうち1つに<b>Marked for Elimination</b>コンディションをつける。そのプレイヤーは可能なら制限宇宙船を選ばなければならない。 %LINEBREAK% 君は<b>Marked for Elimination</b>コンディションがついた宇宙船をロックする際、距離の制限を無視する。"""
        "Notorious":
           text: """君が防御した後、もし君が攻撃者のファイアリング・アーク内にいるなら、君は%CHARGE%を1つ消費しても良い。もし君がそうするなら、攻撃者はストレイン・トークンを1つ得る。%LINEBREAK% 君が攻撃を実行する際、もし防御者がストレイン状態なら、君は空白の結果1つを振り直しても良い。"""
        "Enduring":
           text: """君が防御する際、もし君が攻撃者の%BULLSEYEARC%にいないなら、%CRIT%の結果を%HIT%の結果の前に相殺する。 %LINEBREAK% 君が%CRIT%ダメージを受けた後、君はたとえストレス状態でも、君のアクション・バーの%CALCULATE%あるいは%FOCUS%アクションを、赤と扱って実行しても良い。"""
        "IG-11":
           text: """<b>セットアップ:</b> この面を表にして装備する。 %LINEBREAK% 君が表向きのダメージ・カードを受けようとする前に、君は代わりにこのカードの上にヒューズ・マーカーを1つ置き、カリキュレート・トークンを1つ<b>得なければならない。</b>その後、もしこのカードの上にヒューズ・マーカーが2つあるなら、裏返す。 %LINEBREAK% <strong>IG-11 (Anti-Capture Protocol)</strong> %LINEBREAK% 終了フェイズの間、このカードからヒューズ・マーカーを1つ取り除く。その後、もしこのカードの上にヒューズ・マーカーがないなら、君は破壊され、レンジ0-1の他の宇宙船は%CRIT%ダメージを1つ受ける。 %LINEBREAK% <b>アクション:</b> このカードの上にヒューズ・マーカーを1つ置く。"""
        "Greef Karga":
           text: """君は同盟の宇宙船を、それらが友軍であるかのようにコーディネートできる。 %LINEBREAK% 君が宇宙船をコーディネートした後、それは君がロックしているオブジェクトに対するロックを得ても良い。"""
        "Kuiil":
           text: """<b>アクション:</b> 君が持つダメージ・カード1枚につき1つ、攻撃ダイスを振る。%HIT%の結果ごとに、表向きの<b>宇宙船</b>ダメージ・カード1枚を修理し、その後%CRIT%の結果ごとに裏向きのダメージ・カード1枚を修理する。空白の結果ごとにオレンジのトークンを1つ取り除き、その後%FOCUS%の結果ごとにフォーカス・トークンを1つ得る。"""
        "Peli Motto":
           text: """システム・フェイズの間、君は君のダメージ・カードのうち1つのアクションを、たとえストレス状態でも実行しても良い。 %LINEBREAK% 君が表向きの<b>宇宙船</b>ダメージ・カードを修理した後、君は攻撃ダイスを1つ振っても良い。%HIT%の結果なら、他の<b>宇宙船</b>ダメージ・カードを修理する。%CRIT%の結果なら、ダメージ・カードを1枚エクスポーズする。"""
        "Migs Mayfeld":
           text: """君が%FRONTARC%攻撃を実行した後、君は赤かオレンジのトークンを1つ以上持った別のターゲットに対して、ボーナス攻撃として%REARARC%か%SINGLETURRETARC%攻撃を実行しても良い。"""
        "Burnout Thrusters":
           text: """君が%SLAM%アクションを実行した後、%CHARGE%を1つ消費する。その後君はデプリート・トークンを1つ得て、武装解除トークンを1つ取り除いても良い。 %LINEBREAK% もし君の%CHARGE%がアクティブでないなら、君は%SLAM%アクションを実行することができない。"""
        "Hotshot Tail Blaster":
           text: """この攻撃はレンジ0でも実行できる。 %LINEBREAK% <b>攻撃:</b> %CHARGE%を1つ消費する。"""

        # Epic upgrades
        "Admiral Ozzel":
           display_name: """Admiral Ozzel"""
           text: """友軍のレンジ0-3の大型あるいは巨大船がマニューバを実行する際、それは%HIT%ダメージを1つ受け、代わりに向きと難易度が同じで速度が1高いか低いマニューバを代わりに実行しても良い。"""
        "Azmorigan":
           display_name: """Azmorigan"""
           text: """終了フェイズの間、君はレンジ0-1の友軍宇宙船を2つまで選んでも良い。もしそうするなら、それらの宇宙船はそれぞれカリキュレートあるいは回避トークンを1つ取り除かない。"""
        "Captain Needa":
           display_name: """Captain Needa"""
           text: """レンジ0-4の友軍宇宙船がそれのダイヤルを公開した後、君は%CHARGE%を1つ消費しても良い。もしそうするなら、それはダイヤルを難易度と速度が同じ別のマニューバにセットする。"""
        "Strategic Commander":
           display_name: """Strategic Commander"""
           text: """レンジ0-4の友軍宇宙船がそれのダイヤルを公開した後、君は%CHARGE%を1つ消費しても良い。もしそうするなら、それはダイヤルを難易度と速度が同じ別のマニューバにセットする。"""
        "Carlist Rieekan":
           display_name: """Carlist Rieekan"""
           text: """レンジ0-2の友軍宇宙船が破壊された後、君はレンジ0-2の友軍宇宙船を選んでも良い。もしそうするなら、その宇宙船は赤の%EVADE%アクションを実行しても良い。"""
        "Jan Dodonna":
           display_name: """Jan Dodonna"""
           text: """レンジ0-3の友軍宇宙船は君のフォーカスあるいは回避トークンを消費することができる。"""
        "Raymus Antilles":
           display_name: """Raymus Antilles"""
           text: """	君が破壊された後、レンジ0-1の各友軍宇宙船はフォーカス・トークンを1つ得る。君が破壊された後、君はエンド・フェイズの終了まで取り除かれない"""
        "Stalwart Captain":
           display_name: """Stalwart Captain"""
           text: """君が破壊された後、君はエンド・フェイズの終了まで取り除かれない。"""
        "Agent of the Empire":
           display_name: """Agent of the Empire"""
           text: """君は<b>ウィング・リーダー</b>である。君のウィングメイトは、2,3,4あるいは5つのTIE/ln Fighterでなければならない。%LINEBREAK%君が防御する際、その攻撃アーク内の2つまでの君のウィングメイトは、一致する結果をキャンセルするために%HIT%あるいは%CRIT%1つを受けても良い。"""
        "First Order Elite":
           display_name: """First Order Elite"""
           text: """君は<b>ウィング・リーダー</b>である。君のウィングメイトは、2あるいは3つのTIE/fo FighterあるいはTIE/sf Fighterでなければならない。%LINEBREAK%君が防御する際、その攻撃アーク内の2つまでの君のウィングメイトは、一致する結果をキャンセルするために%HIT%あるいは%CRIT%1つを受けても良い。"""
        "Veteran Wing Leader":
           display_name: """Veteran Wing Leader"""
           text: """君は<b>ウィング・リーダー</b>である。君のウィングメイトは、君と同じ宇宙船タイプの、他の2,3,4あるいは5つの宇宙船でなければならない。%LINEBREAK%君が防御する際、その攻撃アーク内の2つまでの君のウィングメイトは、一致する結果をキャンセルするために%HIT%あるいは%CRIT%1つを受けても良い。"""
        "Dreadnought Hunter":
           display_name: """Dreadnought Hunter"""
           text: """君が巨大船に対して攻撃を実行する際、もしその攻撃が防御者に表向きのダメージ・カードを与え、防御者が君の%BULLSEYEARC%にいるなら、君はそのPrecision Shotの効果を、君が指定されたアークにいなくても適用しても良い。"""
        "Ion Cannon Battery":
           display_name: """Ion Cannon Battery"""
           text: """<b>オンライン: </b> セットアップ: この面を表にして装備する。%LINEBREAK% ボーナス攻撃: %ENERGY%を1つ消費する。もしこの攻撃が命中したなら、防御者は%CRIT%ダメージを1つ受け、そして全ての%HIT%/%CRIT%の結果がダメージの代わりにイオン・トークンを与える。%LINEBREAK%<b>オフライン: </b> %LINEBREAK% 君がエンゲージした後、君は%ENERGY%を2つ消費し、このカードを裏返しても良い。"""
        "Targeting Battery":
           display_name: """Targeting Battery"""
           text: """<b>オンライン: </b> セットアップ: この面を表にして装備する。%LINEBREAK% ボーナス攻撃: %ENERGY%を1つ消費する。君がこの攻撃を実行した後、君は防御者に対するロックを得ても良い。%LINEBREAK%<b>オフライン: </b> %LINEBREAK% 君がエンゲージした後、君は%ENERGY%を2つ消費し、このカードを裏返しても良い。"""
        "Ordnance Tubes":
           display_name: """Ordnance Tubes"""
           text: """<b>オンライン: </b> セットアップ: この面を表にして装備する。%LINEBREAK% 君は%TORPEDO%および%MISSILE%攻撃をボーナス攻撃としてのみ実行できる。君は装備した%TORPEDO%の必要条件を%FRONTARC%として、%MISSILE%の必要条件を%FULLFRONTARC%として扱わなければならない。%LINEBREAK%ボーナス攻撃: %TORPEDO%攻撃を行う。%LINEBREAK%<b>オフライン: </b> %LINEBREAK%君は君の装備した%TORPEDO%の必要条件を%FRONTARC%として、%MISSILE%の必要条件を%BULLSEYEARC%として扱わなければならない。%LINEBREAK% アクション: %ENERGY%を2つ消費してこのカードを裏返す。"""
        "Point-Defense Battery":
           display_name: """Point-Defense Battery"""
           text: """<b>オンライン: </b> セットアップ: この面を表にして装備する。%LINEBREAK% ボーナス攻撃: %ENERGY%を1つ消費する。%LINEBREAK% ボーナス攻撃: %ENERGY%を1つ消費する。%LINEBREAK% ボーナス攻撃: %ENERGY%を1つ消費する。%LINEBREAK% ボーナス攻撃: %ENERGY%を1つ消費する。%LINEBREAK%<b>オフライン: </b> %LINEBREAK% 君がエンゲージした後、君は%ENERGY%を2つ消費し、このカードを裏返しても良い。"""
        "Turbolaser Battery":
           display_name: """Turbolaser Battery"""
           text: """<b>オンライン: </b> セットアップ: この面を表にして装備する。%LINEBREAK% ボーナス攻撃 (%LOCK%): %ENERGY%を3つ消費する。もしこの攻撃が命中したなら、%HIT%の結果を3つ追加する。%LINEBREAK% <b>オフライン: </b> %LINEBREAK% 君がエンゲージした後、君は%ENERGY%を2つ消費し、このカードを裏返しても良い。"""
        "Bombardment Specialists":
           display_name: """Bombardment Specialists"""
           text: """君が攻撃を実行する際、君はカリキュレート・トークンを1つ消費して、0-5の範囲内で距離の必要条件を1増やすか減らすかしても良い。"""
        "Comms Team":
           display_name: """Comms Team"""
           text: """君が%COORDINATE%アクションを実行した後、君は%ENERGY%を2つまで消費して、同じ数だけ、君がコーディネートした宇宙船のレンジ0-1の追加の宇宙船をコーディネートしても良い。"""
        "IG-RM Droids":
           display_name: """IG-RM Droids"""
           text: """君が攻撃を実行する際、もし君がカリキュレート状態なら、君は%HIT%の結果1つを%CRIT%の結果に変更しても良い。"""
        "Gunnery Specialists":
           display_name: """Gunnery Specialists"""
           text: """君が主武装あるいは%HARDPOINT%攻撃を行う際、君は%ENERGY%を1つ以上消費して、同じ数の攻撃ダイスを振り直しても良い。"""
        "Damage Control Team":
           display_name: """Damage Control Team"""
           text: """君がエンゲージする前に、君が%ENERGY%を1つ以上消費して、同じ数の<b>オフライン</b>のアップグレード・カードを裏返しても良い。%LINEBREAK% アクション: %ENERGY%を1つ以上消費して、同じ数の表向きの<b>宇宙船</b>ダメージカードを修理する。"""
        "Ordnance Team":
           display_name: """Ordnance Team"""
           text: """君が%RELOAD%アクションを実行する際、君は3つまで%ENERGY%を消費して、装備した%MISSILE%/%TORPEDO%の同じ数の%CHARGE%をリロードしても良い。%LINEBREAK%君が%RELOAD%アクションを実行した後、君は%ENERGY%を1つ消費して装備解除トークンを1つ取り除いても良い。"""
        "Sensor Experts":
           display_name: """Sensor Experts"""
           text: """君は3つまで別のオブジェクトに対してロックを維持することができる。%LINEBREAK% 君が%LOCK%アクションを実行した後、君は2つまで%ENERGY%を消費して、同じ数の、君がロックしたオブジェクトのレンジ0-1のオブジェクトへのロックを、距離の修正を無視して得ても良い。"""
        "Quick-Release Locks":
           display_name: """Quick-Release Locks"""
           text: """システム・フェイズの間、君は%CHARGE%トークンを1つ消費し、カーゴ・クレート・ドリフトを1つ%REARARC%レンジ0に置く。それはこの方法で宇宙船に重ねることはできない。%LINEBREAK%このカードの%CHARGE%は回復できない。"""
        "Saboteur's Map":
           display_name: """Saboteur's Map"""
           text: """セットアップの終了時、君は君の装備した<b>機雷</b>アップグレードの%CHARGE%を1つ消費し、対応するデバイスをプレイエリアの任意の敵宇宙船あるいは他のデバイスからレンジ2よりも離れた位置に置いても良い。"""
        "Scanner Baffler":
           display_name: """Scanner Baffler"""
           text: """セットアップの終了時、君は6つまでの他の友好的な君のデプロイメントエリア内のレンジ0-1の標準の宇宙船を選んでも良い。もしそうするなら、それら宇宙船をレンジ0-1の好きな位置に置いても良い。"""
        "Adaptive Shields":
           display_name: """Adaptive Shields"""
           text: """レンジ0-1の友軍宇宙船の防御の際、もしそれが君よりもサイズが小さいなら、君は%SHIELD%を1つか%ENERGY%を2つ消費するかして、%HIT%あるいは%CRIT%の結果1つをキャンセルしても良い。"""
        "Boosted Scanners":
           display_name: """Boosted Scanners"""
           text: """君がロック、コーディネートあるいはジャムする際、君は3つまで%ENERGY%を消費して、君が選べるオブジェクトのレンジをこの方法で消費した%ENERGY%につき1だけ最大で5まで、レンジを伸ばしても良い。"""
        "Optimized Power Core":
           display_name: """Optimized Power Core"""
           text: """君が青のマニューバを実行した後、%ENERGY%を1つ回復する。"""
        "Tibanna Reserves":
           display_name: """Tibanna Reserves"""
           text: """<b>アクション:</b> %CHARGE%を1つ消費して、%ENERGY%を2つ回復する。"""
        "Toryn Farr":
           display_name: """Toryn Farr"""
           text: """君が友軍宇宙船をコーディネートした後、それは君がロックしている宇宙船へのロックを、距離の制限を無視して得ても良い。"""
        "Dodonna's Pride":
           display_name: """Dodonna's Pride"""
           text: """ """
        "Jaina's Light":
           display_name: """Jaina's Light"""
           text: """レンジ0-2の友軍宇宙船が防御する際、もし攻撃が障害物によって妨害されたなら、君は%ENERGY%を1つ消費しても良い。もしそうするなら、防御者は防御ダイスを1つ追加で振っても良い。"""
        "Liberator":
           display_name: """Liberator"""
           text: """君は小型船を2つまでドックできる。%LINEBREAK%宇宙船が君から配置した後、それは%FOCUS%あるいは%BARRELROLL%アクションを実行しても良い。"""
        "Tantive IV":
           display_name: """Tantive IV"""
           text: """君が防御する際、もし攻撃者が%REARARC%にいるなら、君は防御ダイスを1つ追加で振る。"""
        "Thunderstrike":
           display_name: """Thunderstrike"""
           text: """君がボーナス攻撃を実行する際、君がこのラウンド防御者に攻撃されていないなら、君は攻撃ダイスを1つ振り直しても良い。"""
        "Bright Hope":
           display_name: """Bright Hope"""
           text: """君は%FULLFRONTARC%にのみリインフォースができる。%LINEBREAK%君が防御する際、もし君がリインフォース状態で攻撃者が%FULLFRONTARC%にいるなら、君は防御ダイスを1つ追加で振っても良い。"""
        "Luminous":
           display_name: """Luminous"""
           text: """セットアップ: 君はリザーブ状態で置かれる。%LINEBREAK%セットアップの終了時、君はプレイエリア内の友軍宇宙船のレンジ0-2の場所に置かれる。"""
        "Quantum Storm":
           display_name: """Quantum Storm"""
           text: """君が白のマニューバを完全に実行した後、%ENERGY%を1つ回復する。"""
        "Assailer":
           display_name: """Assailer"""
           text: """君が防御する際、もし攻撃レンジが1なら、君は追加で1つ防御ダイスを振っても良い。"""
        "Corvus":
           display_name: """Corvus"""
           text: """君は小型船を2つまでドックできる。%LINEBREAK%君が%CALCULATE%アクションを実行した後、カリキュレート・トークンを1つ得る。"""
        "Impetuous":
           display_name: """Impetuous"""
           text: """君が攻撃を実行した後、もし防御者が破壊されたなら、君は%FOCUS%あるいは%LOCK%アクションを行っても良い。"""
        "Instigator":
           display_name: """Instigator"""
           text: """君が攻撃を実行する際、もし防御者がオレンジあるいは赤のトークンを持っているなら、君は攻撃ダイスを2つまで振り直しても良い。"""
        "Blood Crow":
           display_name: """Blood Crow"""
           text: """君が攻撃レンジ1-2で攻撃を実行する際、君は%FOCUS%の結果を1つ追加しても良い。"""
        "Requiem":
           display_name: """Requiem"""
           text: """宇宙船が君から配置された後、それは君がロックしている宇宙船へのロックを、距離の制限を無視して得ても良い。"""
        "Suppressor":
           display_name: """Suppressor"""
           text: """君が友軍宇宙船をコーディネートした後、君は%ENERGY%を1つ消費し、その宇宙船からレンジ0-2の敵宇宙船に距離の制限を無視してジャムしても良い。"""
        "Vector":
           display_name: """Vector"""
           text: """君から宇宙船が配置した後、それは%EVADE%あるいは%BOOST%アクションを行っても良い。"""
        "Broken Horn":
           display_name: """Broken Horn"""
           text: """もし君がダメージ状態なら、君の速度3-5のマニューバの難易度を下げる。"""
        "Merchant One":
           display_name: """Merchant One"""
           text: """ボーナス攻撃: %TURRET%攻撃を実行する。"""
        "Insatiable Worrt":
           display_name: """Insatiable Worrt"""
           text: """終了フェイズの間、君は追加で%SHIELD%を1つ回復するか%ENERGY%を1つ回復しても良い。"""
        "Corsair Refit":
           display_name: """Corsair Refit"""
           text: """ボーナス攻撃: %ENERGY%を1つ消費し、%CANNON% %TURRET%あるいは%MISSILE%攻撃を実行する。"""
        "Enhanced Propulsion":
           display_name: """Enhanced Propulsion"""
           text: """<b>セットアップ:</b> この面を表にして装備する。 %LINEBREAK% 終了フェイズの開始時、君は %ENERGY% を2つ消費し、白の[2 %STRAIGHT%], [1 %BANKLEFT%], あるいは [1 %BANKRIGHT%] を実行しても良い。 %LINEBREAK% """
        "Drill Beak":
           display_name: """Drill Beak"""
           text: """<b>セットアップ:</b> この面を表にして装備する。 %LINEBREAK% 君はこの攻撃をレンジ0で実行できる。
           %LINEBREAK% <b>ボーナス攻撃:</b> 1 %ENERGY%消費。もし攻撃レンジが0なら、全ての %HIT% の結果を %CRIT% の結果に変更する。"""
        "Tractor Tentacles":
           display_name: """Tractor Tentacles"""
           text: """<b>セットアップ:</b> この面を表にして装備する。
           %LINEBREAK% <b>ボーナス攻撃</b> %LINEBREAK% <b>ボーナス攻撃: </b> 1 %ENERGY% 消費。 %LINEBREAK% <b>ボーナス攻撃: </b> 1 %ENERGY% 消費。 %LINEBREAK% <b>ボーナス攻撃: </b> 1 %ENERGY% 消費。"""
        "Tracking Torpedoes":
           display_name: """Tracking Torpedoes"""
           text: """システム・フェイズの間、君は %CHARGE% を3つまで消費し、同じ数の tracking torpedoes を、[%BANKLEFT% 3]、[%STRAIGHT% 4] および [%BANKRIGHT% 3]テンプレートを使用して射出しても良い。各デバイスは別々のテンプレートを使用しなければならない。その後、各デバイスは君がロックしているオブジェクトへのロックを、距離の制限を無視して得ても良い。このカードの%CHARGE%を回復することはできない。"""
        "Proton Cannon Battery":
           display_name: """Proton Cannon Battery"""
           text: """<b>Setup:</b> この面を表にして装備する。
           %LINEBREAK% <b>ボーナス攻撃:</b> %HIT% の結果1つを %CRIT% の結果に変更する。%LINEBREAK% <b>ボーナス攻撃:</b> 1 %ENERGY% を消費。%HIT% の結果1つを %CRIT% の結果に変更する。"""
        "Tractor Technicians":
           display_name: """Tractor Technicians"""
           text: """終了フェイズの間、レンジ0-1の他の各宇宙船は、それのトラクター・トークンを取り除くことができない。%LINEBREAK%トラクター状態のレンジ0-1の敵宇宙船がダイヤルを公開する前に、君は %ENERGY% を1つ消費しても良い。もし君がそうするなら、その宇宙船がこのアクティベーションでそのマニューバを実行する際、それはそのマニューバの速度を1つ下げる(最小で1)。"""
        "Asajj Ventress (Command)":
           display_name: """Asajj Ventress"""
           text: """システム・フェイズの間、君は %FORCE% を1つ消費しても良い。もし君がそうするなら、君の %FRONTARC% 内レンジ0-1の各敵宇宙船は、それがジャム・トークンを1つ得ることを選ばない限り、ストレイン・トークンを1つ得る。"""
        "Hondo Ohnaka (Command)":
           display_name: """Hondo Ohnaka"""
           text: """システム・フェイズの間、君は %CHARGE% を1つ消費してレンジ0-1の友軍宇宙船を1つ選んでも良い。勝利トークンかオブジェクティブ・トークンをその宇宙船カードから君の宇宙船カードに移動するか、君の宇宙船カードからその宇宙船カードに移動する。 """
        "Zealous Captain":
           display_name: """Zealous Captain"""
           text: """エンゲージメント・フェイズの間、イニシアチブ4で、君は %ENERGY% を1つ消費し、ボーナスの %HARDPOINT% 攻撃を実行しても良い。"""
        "General Grievous (Command)":
           display_name: """General Grievous"""
           text: """エンゲージメント・フェイズの間、イニシアチブ4で、君は %ENERGY% を1つ消費し、ボーナスの %HARDPOINT% 攻撃を実行しても良い。%LINEBREAK%君は友軍宇宙船に対して攻撃を実行できる。%LINEBREAK%君が攻撃を実行した後、もし防御者が破壊されたなら、そのレンジ0-2の各友軍宇宙船は、 %CALCULATE% アクションを実行しても良い。"""
        "Mar Tuuk":
           display_name: """Mar Tuuk"""
           text: """<b>セットアップ:</b> 戦力を置いた設置した後に、それらのアクション・バーに %CALCULATE% がある友軍宇宙船ウイングを1つ選び、そのウイングをリザーブ状態にする。 %LINEBREAK% 終了フェイズの間、君はそのウイングを君のデプロイメント・エリア内かあるいは任意の敵宇宙船からレンジ2より離れた場所に置いても良い。その後、君は君からレンジ0-1の敵宇宙船を1つ選んでも良い。そのウイングの各宇宙船はその宇宙船へのロックを得る。"""
        "Riff Tamson":
           display_name: """Riff Tamson"""
           text: """エンゲージメント・フェイズの間、イニシアチブ5で、君は %ENERGY% を1つ消費し、ボーナスの %HARDPOINT% 攻撃を実行しても良い。%LINEBREAK%君が攻撃を実行した後、もし防御者が1枚以上の表向きのダメージ・カードを受け取ったなら、それはストレイン・トークンを2つ得る。"""
        "Corsair Crew":
           display_name: """Corsair Crew"""
           text: """君が標準宇宙船に攻撃を実行する際、君は %HIT% の結果を1つ消費しても良い。もし君がそうするなら、防御者はデプリート・トークンを1つ得る。"""
        "Grappler":
           display_name: """Grappler"""
           text: """君が<b>Drill Beak</b>攻撃を攻撃レンジ1で実行する際、もし防御者がトラクター状態なら、代わりにそれをレンジ0で実行されるように扱う。"""
        "Nautolan's Revenge":
           display_name: """Nautolan's Revenge"""
           text: """君がエンゲージする前に、君はカリキュレート・トークンを2つまで消費しても良い。もし君がそうするなら、同じ数の %ENERGY% を回復する。"""
        "Droid Crew":
           display_name: """Droid Crew"""
           text: """君が白の %FOCUS% アクションを実行する際、それは代わりに赤として扱う。%LINEBREAK% 終了フェイズの開始時、全ての君の表向きの<b>クルー</b>ダメージ・カードを修理する。"""
        "Trident":
           display_name: """Trident"""
           text: """君が宇宙船に重なるか、宇宙船が君に重なった後、もしそれがトラクター状態でなければ、君は %ENERGY% を1つ消費しても良い。もし君がそうするなら、それはトラクター・トークンを3つ得る。"""
        "Neimoidian Grasp":
           display_name: """Neimoidian Grasp"""
           text: """君が攻撃を実行した後、君は赤の %EVADE% アクションを実行しても良い。%LINEBREAK%君が防御する際、もし君が回避状態なら、君は防御ダイスを追加で1つ振っても良い。"""



    condition_translations =
        'Suppressive Fire':
           text: '''君が<strong>Captain Rex</strong>以外の宇宙船に対して攻撃を実行する際、攻撃ダイスを1つ少なく振る。%LINEBREAK%<strong>Captain Rex</strong>が防御した後、このカードを取り除く。%LINEBREAK%戦闘フェイズの終了時、<strong>Captain Rex</strong>がこのフェイズ攻撃していないなら、このカードを取り除く。%LINEBREAK%<strong>Captain Rex</strong>が破壊された後、このカードを取り除く。'''
        'Hunted':
           text: '''君が破壊された後、可能なら、君は他の友軍宇宙船を選び、このカードをそれにつけなければならない。'''
        'Listening Device':
           text: '''システム・フェイズの間、もし<strong>Informant</strong<アップグレードがついた敵宇宙船がレンジ0-2にいるなら、君のダイヤルを表向きにする。'''
        'Rattled':
           text: '''レンジ0-1の爆弾あるいは機雷が爆発した後、%CRIT%ダメージを1つ受ける。その後、このカードを取り除く。%LINEBREAK% <b>アクション:</b> もしレンジ0-1に爆弾あるいは機雷がないなら、このカードを取り除く。'''
        'Optimized Prototype':
           text: '''君が<strong>Director Krennic</strong>アップグレードのついた友軍宇宙船にロックされた宇宙船に対して主武装による%FRONTARC%攻撃を実行する時、君は%HIT%%CRIT%あるいは%FOCUS%の結果を1つ消費しても良い。もしそうするなら、1つ選ぶ: 防御者はシールドを失う、あるいは防御者は裏向きのダメージ・カードのうち1つを裏返す。'''
        '''I'll Show You the Dark Side''':
           text: ''' このカードが付けられたとき、もしそれの上に表向きのダメージカードがないなら、それをつけたプレイヤーがダメージデッキからパイロットのダメージカードを1枚探し、このカードの上に表向きで置く。その後、ダメージデッキをシャッフルする。%LINEBREAK%君が%CRIT%ダメージを1つ受けようとする際、君は代わりにこのカードの上の表向きのダメージカードを得る。その後このカードを取り除く。'''
        'Proton Bomb':
           text: '''(爆弾トークン) - アクティベーション・フェイズの終了時、このデバイスは爆発する。このデバイスが爆発する時、レンジ0-1の各宇宙船とリモートは%CRIT%ダメージを1つ受ける。'''
        'Seismic Charge':
           text: '''(爆弾トークン) - アクティベーション・フェイズの終了時、このデバイスは爆発する。このデバイスが爆発する時、レンジ0-1の障害物を1つ選ぶ。その障害物のレンジ0-1の各宇宙船とリモートは%HIT%ダメージを1つ受ける。その後、その障害物を取り除く。'''
        'Bomblet':
           text: '''(爆弾トークン) - このデバイスが爆発する時、レンジ0-1の各宇宙船とリモートは攻撃ダイスを2つ振る。各宇宙船あるいはリモートは、%HIT%/%CRIT%の各結果につき%HIT%ダメージを1つ受ける。'''
        'Loose Cargo':
           text: '''(デブリトークン) - Loose cargoはデブリ雲である。'''
        'Conner Net':
           text: '''(機雷トークン) - 宇宙船が、このデバイスと重なるか、上を通過して移動した後、それは爆発する。このデバイスが爆発する時、その宇宙船は%HIT%ダメージを1つ受け、イオン・トークンを3つ得る。'''
        'Proximity Mine':
           text: '''(機雷トークン) - 宇宙船が、このデバイスと重なるか、上を通過して移動した後、それは爆発する。このデバイスが爆発する時、その宇宙船は攻撃ダイスを2つ振る。その宇宙船は%HIT%ダメージを1つ受け、追加で各結果と一致する%HIT%/%CRIT%ダメージを受ける。'''
        'DRK-1 Probe Droid':
           text: '''イニシアチブ: 0 <br>敏捷値: 3 <br>装甲値: 1 %LINEBREAK% (リモート) - <b>システム・フェイズ:</b> DRK-1 probe droidをコントロールするプレイヤーは2%BANKLEFT%2%STRAIGHT%あるいは2%BANKRIGHT%テンプレートと、DRK-1の好きなガイドを選んでも良い。その後プレイヤーはリモートを、テンプレートの逆の端にDRK-1を置いて再配置する。それはこの方法で、オブジェクトに重ねることができる。%LINEBREAK%もしDRK-1が宇宙船に重なったとき、その宇宙船の位置を示すためにポジションマーカーを使い、宇宙船をリモートの上に置く。%LINEBREAK%<b>アクティベーション、エンゲージメント、終了フェイズ:</b> 効果なし。%LINEBREAK%<b>その他ルール:</b> 宇宙船がオブジェクトをロック、あるいは敵宇宙船をジャムする際、それは友軍のDRK-1 probe droidから距離を測っても良い。%LINEBREAK%敵宇宙船がマニューバを実行し、それによりDRK-1 probe droidに重なった後、その宇宙船のコントローラーは攻撃ダイスを1つ振る。%FOCUS%の結果なら、DRK-1 probe droidは%HIT%ダメージを1つ受ける。'''
        'Buzz Droid Swarm':
           text: '''イニシアチブ: 0 <br>敏捷値: 3 <br>装甲値: 1 %LINEBREAK% (リモート) - <b>システム、アクティベーションおよび終了フェイズ:</b> 効果なし。%LINEBREAK%<b>エンゲージメント・フェイズ:</b> 君がエンゲージする時、buzz droid swarmのレンジ0の各敵宇宙船は、%CRIT%ダメージを1つ受ける。%LINEBREAK%<b>その他ルール:</b> 敵宇宙船がbuzz droid swarmに重なるか上を通過した後、swarmをコントロールするプレイヤーは宇宙船の前か後のガイドに合うように再配置する(この宇宙船はswarmのレンジ0にいる)。swarmはオブジェクトに重なるような側の宇宙船のガイドにつけることはできない。もしswarmが選んだガイドの側に置けないなら、それをコントロールするプレイヤーは宇宙船のガイドの別の側につけなければならない。もしそれが別の側にもつけられないなら、swarmと重なるか通過した敵宇宙船はそれぞれ命中ダメージを1つ受ける。'''
        '''It's the Resistance''':
           text: '''<b>セットアップ:</b> リザーブ状態で開始する。%LINEBREAK%君のデプロイ時、君は任意のテーブルの端のレンジ1内で敵宇宙船からレンジ3よりも離れた場所に置く。%LINEBREAK%ラウンドの開始時、友軍の<strong>GA-97</strong>の全ての%CHARGE%がアクティブなら、君は配置しなければならない。その後このカードを取り除く。友軍の<strong>GA-97</strong>が破壊された後、君は配置しなければならない。その後武装解除トークンを1つ得て、このカードを取り除く。'''
        'Electro-Proton Bomb':
           text: '''(爆弾トークン) - アクティベーション・フェイズの終了時、このデバイスは爆発する。このデバイスが爆発する時、レンジ0-2の各宇宙船とリモートは攻撃ダイスを4つ振る。各宇宙船は空白の結果につきシールドを1つ失い、%FOCUS%/%HIT%の結果につきイオン・トークンを1つ得、%CRIT%の結果につき武装解除トークンを1つ得る。各リモートは空白の結果につきシールドを1つ失い、%FOCUS%/%HIT%の結果につき1ダメージを受ける。'''
        'Decoyed':
           text: '''君が防御する時、その攻撃アーク内の友軍の各<strong>Naboo Handmaiden</strong>は君の結果のうち1つを%EVADE%の結果に変更するために回避トークンを1つ消費しても良い。%LINEBREAK%もし君がNaboo N-1 Starfighterなら、その攻撃アーク内の友軍の各<strong>Naboo Handmaiden</strong>は代わりに%EVADE%の結果を1つ追加するために回避トークンを1つ消費しても良い。'''
        'Compromising Intel':
           text: '''システム・フェイズの間、もし敵の<strong>Vi Morandi</strong>がレンジ0-3にいるなら、君のダイヤルを表向きにする。%LINEBREAK%君が敵の<strong>Vi Morandi</strong>に対して防御あるいは攻撃を実行する際、君はフォーカス・トークンを消費できない。'''
        'Cluster Mine':
           text: '''(機雷トークン) - Cluster Mine Setは3つの独立なCluster Mineデバイスからなる。%LINEBREAK%Cluster Mine Setが置かれたとき、中央のCluster Mineを通常通り置く。その後2つの追加Cluster Mineをくぼみに置く。%LINEBREAK%宇宙船が、いずれかの独立なCluster Mineと重なるか、上を通過して移動した後、それは爆発する。重ならなかったかあるいは上を通過されなかった他のCluster Mineは爆発しない。%LINEBREAK%これらデバイスのうち1つが爆発する時、レンジ0の各宇宙船は攻撃ダイスを2つ振る。その宇宙船は一致した結果につき1%HIT%/%CRIT%を受ける。'''
        'Ion Bomb':
           text: '''(爆弾トークン) - アクティベーション・フェイズの終了時、このデバイスは爆発する。このデバイスが爆発する時、レンジ0-1の各宇宙船はイオン・トークンを3つ得て、レンジ0-1の各リモートは%HIT%ダメージを1つ受ける。'''
        'Concussion Bomb':
           text: '''(爆弾トークン) - アクティベーション・フェイズの終了時、このデバイスは爆発する。このデバイスが爆発する時、レンジ0-1の各宇宙船とリモートは、裏向きのダメージ・カードを1枚受ける。その後、レンジ0-1の各宇宙船は、ストレイン・トークンを1つ得ない限り、ダメージ・カードを1枚<b>エクスポーズしなければならない</b>。'''
        'Thermal Detonator':
           text: '''(爆弾トークン) - アクティベーション・フェイズの終了時、このデバイスは爆発する。このデバイスが爆発する時、レンジ0-1の各宇宙船とリモートは攻撃ダイスを1つ振る。各宇宙船は各%FOCUS%の結果につきストレイン・トークンを1つ得、各宇宙船とリモートは一致する%HIT%/%CRIT%の結果を受ける。'''
        'Sensor Buoy':
           text: '''イニシアチブ: 0 <br>敏捷値: 3 <br>装甲値: 2 %LINEBREAK% (リモート) - Sensor buoysは対になるリモートである (1つは赤、1つは青、それぞれ自分のリモートカードを持つ)、そして<strong>Sensor Buoy Suite</strong>アップグレード・カードによって配置される。リモートであることと、そのカードによりインタラクトする以外に、特別なルールはない'''
        'Fearful Prey':
           text: '''君が敵の<strong>Fearsome Predator</strong>に対して防御した後、もしその攻撃の間、君が緑のトークンを全く消費しなかったなら、ストレイン・トークンを1つ得る。'''
        'You Should Thank Me':
           text: '''このコンディションは裏向きでつけられる。君が防御した後公開する。%LINEBREAK%君が防御した後、<strong>Zam Wesell</strong>は%CHARGE%を1つ回復する。その後、攻撃者へのロックを得ても良い。%LINEBREAK%エンゲージメント・フェイズの終了時、もしこのカードが裏向きで、君が敵宇宙船のファイアリング・アーク内にいるなら、君はこのカードを公開し、<strong>Zam Wesell</strong>から2%CHARGE%を消費しても良い。もしそうするなら、君はボーナス攻撃を実行しても良い。%LINEBREAK%システム・フェイズの開始時、このコンディションを取り除く。'''
        '''You'd Better Mean Business''':
           text: '''このコンディションは裏向きでつけられる。君が防御した後公開する。%LINEBREAK%君が防御した後、君は<strong>Zam Wesell</strong>の%CHARGE%を2つ消費しても良い。もしそうするなら、君は攻撃者に対してボーナス攻撃を実行しても良い。%LINEBREAK%エンゲージメント・フェイズの終了時、もしこのカードが裏向きで君が敵宇宙船のファイアリング・アーク内にいるなら、君はこのカードを公開しても良い。もしそうするなら、<strong>Zam Wesell</strong>は%CHARGE%を2つ回復する。%LINEBREAK%システム・フェイズの開始時、このコンディションを取り除く。'''
        '''Merciless Pursuit''':
           text: '''君が攻撃を実行した後、もし防御者が<b>The Child</b>を装備しているなら、君は防御者へのロックを得ても良い。'''
        '''Marked for Elimination''':
           text: '''君が防御する際、もし攻撃者が<b>Tracking Fob</b>を装備していて、君へのロックを持っているなら、君は緑のトークンを消費できない。'''
        '''False Friend''':
           text: '''システム・フェイズの間、もし<b>Tal Merrik</b>アップグレードのついた敵宇宙船がレンジ0-2にいるか、敵リモートがレンジ0-2にいるなら、君のダイヤルを表にする。 %LINEBREAK% <b>アクション:</b> このカードを捨て札にするために、デプリート・トークン1つとストレス・トークン1つを得る。'''
        '''Trials of the Darksaber''':
           text: '''君が攻撃レンジ0-2で攻撃を実行する際、君は%CRIT%の結果を1つ消費しても良い。もし君がそうするなら、もし防御宇宙船のプレイヤーが君よりも%POINT%を獲得しているなら、そのプレイヤーは獲得した%POINT%を1つ失う。その%POINT%をこのカードの上に置く。 %LINEBREAK% 君が防御した後、もし君が敵宇宙船の攻撃レンジ0-2の攻撃で破壊されたなら、攻撃者に<b>Trials of the Darksaber</b>コンディションをつける(このカードの上の全ての%POINT%は残して)。 %LINEBREAK% ゲームの終了時、この宇宙船はこのカードの上の%POINT%を全て獲得する。'''
        '''Blaze Bomb''':
           text: '''<b>タイプ:</b> デバイス, 爆弾 %LINEBREAK% アクティベーション・フェイズの終了時、このデバイスは爆発する。 %LINEBREAK% このデバイスが爆発する時、レンジ0-1の各宇宙船とリモートは攻撃ダイスを1つ振る。各宇宙船とリモートは%HIT%/%CRIT%の結果につき%HIT%ダメージを1つ受ける。 %LINEBREAK% このデバイスが爆発した後、BlaczをBlazeのガイドとデバイスの出っ張りを合わせて置く。 %LINEBREAK% Blazeは障害物である。この障害物が置かれた後、ヒューズ・マーカーをその上に置く。 %LINEBREAK% 終了フェイズの間、ヒューズ・マーカーのないBlazeを取り除き、その後各Blazeからヒューズ・マーカーを1つ取り除く。'''

    exportObj.setupTranslationCardData pilot_translations, upgrade_translations, condition_translations
