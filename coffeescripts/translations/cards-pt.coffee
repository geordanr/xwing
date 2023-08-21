exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.pt = 'Português'

exportObj.translations ?= {}
exportObj.translations.Português =
# ui translation goes here
    restrictions:
        "Restrictions": "Restrições"
        "Initiative": "Iniciativa"
        "Agility": "Agilidade"
        "Non-Limited": "Não-Limitado"
        " or Squad Including": " ou Squadrão Incluindo"
        "Ship": "Nave"
        "Extra": "Extra"
        "Vectored Thrusters": "Propulsores Vetorizados"
        "Autothrusters": "Autopropulsores"
        "Networked Calculations": "Cálculos Interligados"
        "X-wing": "X-wing"
        "Limited": "Limitado"
        "Light Side": "Lado da Luz"
        "Dark Side": "Lado Sombrio"
        "Mandalorian": "Mandaloriano"
        "TIE": "TIE"
        "Bounty Hunter": "Caçador de Recompensas"
        "Clone": "Clone"
        "A-wing": "A-wing"
        "Y-wing": "Y-wing"
    faction:
        "Rebel Alliance": "Aliança Rebelde"
        "Galactic Empire": "Império Galático"
        "Scum and Villainy": "Escória e Vilania"
        "Resistance": "Resistência"
        "First Order": "Primeira Ordem"
        "Galactic Republic": "República Galática"
        "Separatist Alliance": "Aliança Separatista"

    slot:
        "Astromech": "Astromecânico"
        "Force": "Força"
        "Bomb": "Bomba"
        "Cannon": "Canhão"
        "Crew": "Tripulação"
        "Missile": "Míssil"
        "Sensor": "Sensor"
        "Torpedo": "Torpedo"
        "Turret": "Torre"
        "HardpointShip": "Encaixe de Arma"
        "VersatileShip": "Chassi Versátil"
        "Hardpoint": "Hardpoint"
        "Illicit": "Ilícito"
        "Configuration": "Configuração"
        "Talent": "Talento"
        "Modification": "Modificação"
        "Gunner": "Atirador"
        "Device": "Dispositivo"
        "Tech": "Tecnologia"
        "Title": "Título"
        "Tactical Relay": "Central Tática"
        "Command": "Comando"
        "Hyperdrive": "Hyperdrive"
        "Team": "Equipe"
        "Cargo": "Carga"


    sources: 
        "Second Edition Core Set": "Caixa Base Segunda Edição"
        "Rebel Alliance Conversion Kit": "Kit de Conversão Aliança Rebelde"
        "Galactic Empire Conversion Kit": "Kit de Conversão Império Galático"
        "Scum and Villainy Conversion Kit": "Kit de Conversão Escória e Vilania"
        "T-65 X-Wing Expansion Pack": "Pacote de Expansão X-Wing T-65"
        "BTL-A4 Y-Wing Expansion Pack": "Pacote de Expansão BTL-A4 Y-Wing"
        "TIE/ln Fighter Expansion Pack": "Pacote de Expansão TIE/ln Fighter"
        "TIE Advanced x1 Expansion Pack": "Pacote de Expansão TIE Advanced x1 "
        "Slave 1 Expansion Pack": "Pacote de Expansão Slave 1 "
        "Fang Fighter Expansion Pack": "Pacote de Expansão Fang Fighter "
        "Lando's Millennium Falcon Expansion Pack": "Pacote de Expansão Lando's Millennium Falcon "
        "Saw's Renegades Expansion Pack": "Pacote de Expansão Renegados de Saw"
        "TIE Reaper Expansion Pack": "Pacote de Expansão TIE Reaper "
        "ARC-170 Starfighter Expansion": "Pacote de Expansão ARC-170 Starfighter Expansion"
        "Fugitives and Collaborators Squadron Pack": "Pacote de Esquadrão Fugitivos e Colaboradores"
        "First Order Conversion Kit": "Kit de Conversão Primeira Ordem"
        "M3-A Interceptor Expansion Pack": "Pacote de Expansão M3-A Interceptor "
        "Loose Ships": "Naves Soltas"
    ui:
        "shipSelectorPlaceholder": "Selecione uma Nave"
        "pilotSelectorPlaceholder": "Selecione um Piloto"
        upgradePlaceholder: (translator, slot) ->
            "Sem Melhoria  #{translator 'slot', slot}"
        "modificationPlaceholder": "Sem Modificação"
        "titlePlaceholder": "Sem Título"
        upgradeHeader: (translator, slot) ->
            "#{translator 'slot', slot} Melhoria"
        "unreleased": "Não Lançado"
        "epic": "épico"
        "Quickbuild": "Construção Rápida"
        "limited": "limitado"
        "Unreleased content warning": "Este esquadrão usa conteúdo não lançado!"
        "Broken squad link warning": "Parece que você seguiu um link quebrado. Nenhum esquadrão pôde ser carregado!"
        "Collection warning": "Você não consegue preencher essa lista usando sua coleção!"
        "Ship number warning": "Um esquadrão legal para torneios deve conter 3-8 naves!"
        "Multi-Faction warning": "Listas Multi-Facção NUNCA são legais para torneios!"
        "XWS Import Dialog": "Importe sua lista por XWS no YASB.<br><i>XWS é um formato comum para compartilhar listas entre aplicativos.</i>"
        "Copy below simple text": "<p>Copie o texto abaixo e cole em outro lugar.</p>"
        "Copy below markdown": "<p>Copie o texto abaixo e cole em sua postagem do reddit.</p><p>Confira que o editor de postagem esteja definido no modo markdown.</p>"
        "Copy below TTS": "<p>Copie o texto abaixo e cole no Tabletop Simulator.</p>"
        "Copy below BBCode": "<p>Copie o BBcode abaixo e cole em sua postagem de fórum.</p>"
        "Copy below HTML": "<p>Copie o texto abaixo e cole em outro lugar.</p>"
        "Copy below XWS":"<p>Copie o texto abaixo e cole em um aplicativo compátivel com XWS.</p>"
        "Use INI prefix": "Coloque INI como prefixo na frente dos nomes."
        "Choose obstacles dialog": "Escolha até três obstáculos, para incluí-los no permalink para uso em softwares externos"
        "Mark obstacles": "Marque os três obstáculos que você está usando."
        "Scan QR-Code": "Escaneie para abrir a sua lista no construtor"
        "View in YASB": "Ver no YASB 2"
        "YASB advertisment": "YASB 2 é uma forma simples, rápida e fácil de construir esquadrões para o X-Wing Miniatures da Atomic Mass Games."
        collectionContentShips: (translator, number) ->
            "You have #{number} #{if number == 1 then 'modelo' else 'modelos'} de nave na sua coleção."
        collectionContentShipsAndPilots: (translator, data) -> # data[0] is ships, data[1] is pilots
            "You have #{data[0]} ship #{if data[0] == 1 then 'model' else 'models'} and #{data[1]} pilot #{if data[1] == 1 then 'card' else 'cards'} in your collection."
        collectionContentUpgrades: (translator, number) ->
            "You have #{number} in your collection."
        varPointCostsPoints: (translator, points) ->
            "<b>Custo em Pontos:</b> #{points} when "
        varPointCostsConditionAgility: (translator, values) ->
            "agilidade é #{values}"
        varPointCostsConditionIni: (translator, values) ->
            "iniciativa é #{values}"
        varPointCostsConditionBase: (translator, values) ->
            "tamanho de base é pequeno, médio, grande ou enrome"
        "Missing Item List:": "Para montar este esquadrão você precisa dos seguintes itens adicionais:" 
        pilotFlyingShip: (translator, pilot, ship) ->
            "Piloto #{pilot} pilotando #{ship}"
        "Placeholder Textsearch Browser": "Procure por nome, texto ou nave"
        noXYselected: (translator, xy) ->
            "No #{translator('ui', xy)} selected"
        "Select a card": "Selecione uma carta da lista a esquerda."
        yourXYsquads: (translator, faction) ->
            "Seus Esquadrões #{translator('faction', faction)}"
        reallyDeleteSquadXY: (translator, squadname) -> 
            "Deletar #{squadname}?"
        "No saved squads": "Não tem nada aqui. Vá salvar um esquadrão!"
        "name required": "É necessário um nome"
        "Name in use": "Você já possui um esquadrão com esse nome"
        "select OAuth provider": "Selecione um dos provedores Oauth para entrar e começar a salvar esquadrões."
        "OAuth explanation" : """
                    <p>
                        <a href="http://en.wikipedia.org/wiki/OAuth" target="_blank">OAuth</a> é um sistema de de autorização que permite que você prove sua identeidade em um site sem precisar criar uma nova conta. Ao invés disso, você pede para que algum provedor em que já possua uma conta (ex. Google ou Facebook) prove para este site que você é quem diz ser. Dessa forma, da próxima vez que você visitar, este site vai se lembrar que você é aquele usuário do Google.
                    </p>
                    <p>
                        A melhor parte disso é que você não precisa criar um novo nome de usuário ou se lembrar de outra senha. e não se preocupe, eu não vou coletar quaisquer dados seus do provedors about you. Eu defini o escopo de dados para o menor possível, mas alguns lugares enviam no mínimo um punhado de dados. Eu os descarto. Tudo o que eu olho é um identificador único (normalmente um número gigante).
                    </p>
                    <p>
                        Para mais informações, leia isso <a href="http://hueniverse.com/oauth/guide/intro/" target="_blank">introduction to OAuth</a>.
                    </p>
                    """
        "Intro Card YASB": """
                    <h2>YASB para X-Wing 2.5</h2>
                    <p>YASB (Yet Another Squad Builder) é uma forma simples, rápida e fácil de construir esquadrões para o X-Wing Miniatures da <a href="https://www.atomicmassgames.com/">Atomic Mass Games</a>.</p>
                    <p>Current Version: 11/25/2022</p>
                    <h5>Creditos</h5>
                    <p>Feito a partir do maravilhoso original <a href="https://geordanr.github.io/xwing/">Yet Another Squad Builder</a>.</p>
                    <p>YASB é atualizado e mantido por Stephen Kim.</p>
                    <p>Créditos adicionais:<br>
                    Dados de Atualização 2.5: Devon Monkhouse, Perry Low, Andrew Oehler.<br>
                    Dados de Lançamento 2.0: Evan Cameron, Jonathan Hon, Devon Monkhouse, and Mark Stewart.<br>
                    Equipe de Tradução: Patrick Mischke, godgremos, Clément Bourgoin, ManuelWittke, kksuke, Rodrigo Marshal, Shavarski<br>
                    Logo do site: Thomas Kohler<br>
                    Suporte de Quick Build: Patrick Mischke</p>
                    <p>Este construtor não é oficial e não está afiliado a Atomic Mass Games, Lucasfilm Ltd., ou Disney.</p>
                    <p>Este site sempre será gratuito, e sempre estára 100% disponível para que todos possam usá-lo. Entretanto, se você quiser doar, há um botão preparado para você.</p>
                    <p><button class="btn btn-primary paypal" onclick="window.open('https://paypal.me/raithos');">Faça uma Doação</button> <button class="btn btn-primary paypal" onclick="window.open('https://www.patreon.com/raithos');">Patreon</button></p>
        """
        "Continue to OAuth provider": "Isto abrirá uma nova janela para permitir que você autentique com o provedor escolhido. Você talvez precise permitir pop ups para este site."
        "iOS requires cross-site control": """Devido a um novo recurso no sistema iOS o OAuth não irá funcionar a menos que você habilite "cross-site control"."""
        "login in progress": "OAuth login em progresso. Por favor finalize a autorização no provedor específico usando a janela que acabou de ser criada."
        "Squads reloaded": "Todos os Esquadrões Desta Facção Foram Recarregados."
        "Sure to delete?": "Tem certeza que deseja excluir este esquadrão?"
        "Unsaved Changes Warning": "Você não salvou as alterações neste esquadrão. Deseja voltar e salvar?"
        adds: (translator, data) -> # data will most likely be a string of some symbols, but you never know
            "Adds: #{translator('ui', data)}"
        removes: (translator, data) -> # data will most likely be a string of some symbols, but you never know
            "Removes: #{translator('ui', data)}"
        "Less upgrades": "Menos melhorias"
        "Epic": "Épico"
        "Hyperspace": "Hyperespace"
        "Extended": "Estendido"
        "Unnamed Squadron": "Esquadrão Sem Nome"
        "Unsaved Squadron": "Esquadrão não Salvo"
        "New Squadron": "Novo Esquadrão"
        "Name your squad...": "Nomeie seu Esquadrão..."
        "Your Collection": "Sua Coleção"
        "Only available from 1st edition": "Disponível apenas na 1ª edição"
        "Randomize!": "Aleatório!"
        "Copy": "Copiar"
        "Print": "Imprimir"
        "Random Squad Builder Options": "Opções de Construção Aleatória"
        "Miscellaneous Settings": "Configurações Diversas"
        "Card Search": "Busca de Cartas"
        "from": "de"
        "to": "para"
        "Submit Bug/Feature Request": "Enviar alerta de Bug/Pedido de recurso"
        "Card Browser": "Procurar Cartas"
        "Rules": "Regras"
        "About": "Sobre"
        "Remove Pilot": "Remover Piloto"
        "Clone Pilot": "Duplicar Piloto"
        "Wingmates": "Companheiro"
        "Total": "Total"
        "X-Wing Squadron by YASB 2.0: ": "Esquadrão de X-Wing por YASB 2.0"
        "Points Destroyed": "Pontos Destruidos"
        "Half Points": "Metade de Pontos"
        "Threshold": "Limite"
        "Yes, Delete": "Sim, Exclua"
        "Cancel": "Cancelar"
        "Never Mind": "Cancelar"
        "Really Delete": "Sim, Exclua"
        "Save": "Salvar"
        "Unsaved Changes": "Modificações Não Salvas"
        "Name is available": "O nome está disponível"
        "Checking name availability...": "Verificando disponibilidade do nome..."
        "Go Back": "Voltar"
        "Save Squad As...": "Salvar esquadrão como..."
        "Convert": "Converter"
        "Convert to Extended?": "Converter para Estendido?"
        "Recalculate Points": "Recalcular Pontos"
        "Archived": "Arquivado"
        "Archive": "Arquivar"
        "QB": "QB"
        "Hyper": "Hiper"
        "Ext": "Ext"
        "All": "Tudo"
        "Delete Selected": "Excluir Selecionado"
        "Archive Selected": "Arquivar Selecionado"
        "Select All": "Selecionar Tudo"
        "Fetching squads...": "Procurando Esquadrões..."
        "Well done!": "Muito bem!"
        "Log in with OAuth": "Conectando-se com o OAuth"
        "Log In": "Log In"
        "Log Out": "Log Out"
        "What's this?": "O que é isso?"
        "Close": "Fechar"
        "Roll!": "Gerar!"
        "Maximum Seconds to Spend Randomizing": "Quantidade Máxima de Segundos Gastos para Randomizar"
        "Always fill 0-point slots": "Sempre preencher espaços de 0 pontos"
        "Sets and Expansions": "Kits e Expansões"
        "Limit to collection": "Limitar à Coleção"
        "More upgrades": "Mais melhorias"
        "Maximum Ship Count": "Quantidade Máxima de Naves"
        "Upgrades": "Melhorias"
        "Range": "Alcance"
        "Actions": "Ações"
        "Sources:": "Fontes"
        "Source": "Fonte"
        "Engagement": "Engajamento"
        "Rules search": "Buscar Regras"
        "Rules Search": "Buscar Regras"
        "Base": "Base"
        "Ship": "Nave"
        "Points": "Pontos"
        "Initiative": "Iniciativa"
        "Force:": "Força:"
        "Name": "Nome"
        "Sort by": "Ordenar Por"
        "Type (by Points)": "Tipo (por pontos)"
        "Type (by Name)": "Tipo (por nome)"
        "Recurring": "Recursiva"
        "Not recurring": "Recursão Negativa"
        "Charges:": "Cargas :"
        "Only upgrades requiring multiple slots": "Apenas melhorias que utilizam vários espaços"
        "Used double-slot:": "Espaços duplos utilizados:"
        "Used slot:": "Espaços utilizados:"
        "Large": "Grande"
        "Medium": "Média"
        "Small": "Pequena"
        "Huge": "Enorme"
        "Base size:": "Tamanho da Base:"
        "Agility:": "Agilidade:"
        "Shields:": "Escudos:"
        "Hull:": "Casco:"
        "Initiative:": "Iniciativa:"
        "Linked actions:": "Ações Vinculadas:"
        "Actions:": "Ações:"
        "Actions": "Ações"
        "actions": "ações"
        "Slots:": "Espaços:"
        "slots": "espaços"
        "Ships and Pilots": "Naves e Pilotos"
        "General": "Geral"
        "Hyperspace legal": "Permitido no Hyperspace"
        "Is not unique": "Não é único"
        "Is unique": "É único"
        "Misc:": "Diversos:"
        "Owned copies:": "Cópias possuídas:"
        "Point costs:": "Custo em Pontos:"
        "Point cost:": "Custo em Pontos:"
        "Loadout cost:": "Custo de arsenal:"
        "Factions:": "Facções:"
        "Textsearch:": "Busca textual:"
        "Squad Notes:": "Notas do Esquadrão :"
        "Tag:": "Etiqueta:"
        "Choose Obstacles": "Escolher Obstáculos"
        "XWS": "XWS"
        "HTML": "HTML"
        "TTS": "TTS"
        "Text": "Texto"
        "Reddit": "Reddit"
        "BBCode": "BBCode"
        "Fancy": "Bonitinho"
        "Simple": "Simples"
        "Include QR codes": "Incluir QR codes"
        "Include Obstacle Choices": "Incluir Obstáculos Escolhidos"
        "Print Color": "Impressão Colorida"
        "Expand Shield and Hull": "Expandir Escudos e Casco"
        "Space for Cards": "Espaço para as Cartas"
        "Include Maneuvers Chart": "Incluir Lista de Manobras"
        "Skip Card Text": "Remover Texto da Carta"
        "XWS Import": "Importar XWS"
        "New Squad": "Novo Esquadrão"
        "Load Squad": "Carregar Esquadrão"
        "Delete": "Excluir"
        "Save As...": "Salvar Como..."
        "Misc Settings": "Configurações Diversas"
        "Randomizer Options": "Opções do Aleatório"
        "Print/Export": "Imprimir/Exportar"
        "Discard Changes": "Descartar Mudanças"
        "Got it!": "Entendi!"
        "Term:": "Termo"
        "Version": "Versão"
        "New Squad Name": "Nome do Novo Esquadrão"
        "Import": "Importar"
        "Other Stuff": "Outras Coisas"
        "MultiFaction": "Multi-Facção"
        "Search for game term or card": "Procurar por termo de jogo ou carta"
        "Core Asteroid 0": "Asteróide base 0"
        "Core Asteroid 1": "Asteróide base 1"
        "Core Asteroid 2": "Asteróide base 2"
        "Core Asteroid 3": "Asteróide base 3"
        "Core Asteroid 4": "Asteróide base 4"
        "Core Asteroid 5": "Asteróide base 5"
        "VT49 Debris 0": "Destroços VT49 0"
        "VT49 Debris 1": "Destroços VT49 1"
        "VT49 Debris 2": "Destroços VT49 2"
        "YT2400 Debris 0": "Destroços YT2400 0"
        "YT2400 Debris 1": "Destroços YT2400 1"
        "YT2400 Debris 2": "Destroços YT2400 2"
        "Force Awakens Asteroid 0": "Asteróide Despertar da Força 0"
        "Force Awakens Asteroid 1": "Asteróide Despertar da Força 1"
        "Force Awakens Asteroid 2": "Asteróide Despertar da Força 2"
        "Force Awakens Asteroid 3": "Asteróide Despertar da Força 3"
        "Force Awakens Asteroid 4": "Asteróide Despertar da Força 4"
        "Force Awakens Asteroid 5": "Asteróide Despertar da Força 5"
        "Gas Cloud 1": "Nuvem de gás 1"
        "Gas Cloud 2": "Nuvem de gás 2"
        "Gas Cloud 3": "Nuvem de gás 3"
        "Gas Cloud 4": "Nuvem de gás 4"
        "Gas Cloud 5": "Nuvem de gás 5"
        "Gas Cloud 6": "Nuvem de gás 6"
        "Pride of Mandalore Debris 1": "Destroços Orgulho de Mandalore 1"
        "Pride of Mandalore Debris 2": "Destroços Orgulho de Mandalore 2"
        "Pride of Mandalore Debris 3": "Destroços Orgulho de Mandalore 3"
        "Pride of Mandalore Rock 1": "Pedra Orgulho de Mandalore 1"
        "Pride of Mandalore Rock 2": "Pedra Orgulho de Mandalore 2"
        "Pride of Mandalore Rock 3": "Pedra Orgulho de Mandalore 3"
        "Undamaged": "Não-Danificado"
        "Standard": "Padrão"
        "Faction": "Fação"
        "Loadout": "Arsenal"
        "Standard legal": "Legal no Standard"
        "Keywords:": "Palavras Chave:"
        "Show Points Destroyed": "Mostrar Pontos Destruídos"
        "Hide Points Destroyed": "Ocultar Pontos Destruídos"
        "This squad was created for an older version of X-Wing.": "Este Esquadrão foi Criado para uma versão anterior do X-Wing."
        "Damage Threshold": "Limite de Dano"
        "X-Wing Squadron by YASB 2: ": "Esquadrão de X-Wing por YASB2"
        "Ship Cost": "Custo da Nave"
        "Paste XWS here": "Cole o XWS aqui"
        "All sets and expansions": "Todos os kits e expansões"
        "All factions": "Todas as Facções"
        "Has multiple of the chosen slots": "Possui vários do espaço escolhido"
        "keywords": "palavras chave"
        "Checking auth status...": "Verificando estado de autenticação"
        "New squad saved successfully.": "Novo esquadrão salvo com sucesso."
        "Squad updated successfully.": "Esquadrão atualizado com sucesso."
        "Unselect": "Desmarcar"
        "Sort cards by": "Organizar cartas por"
        "Saving squad...": "salvando esquadrão..."
        "Notes:": "Notas :"
        "XWS QR-Code": "XWS QR-Code"

    singular:
        'pilots': 'Piloto'
        'modifications': 'Modificação'
        'titles': 'Título'
        'ships' : 'Nave'
    
    gameterms:
        'Small': 'Pequena'
        'Medium': 'Média'
        'Large': 'Grande'
        'Huge': 'Enorme'
        'Solitary': 'Solitário'
        'Standardized': 'Padronizada'

    types:
        'Pilot': 'Piloto'
        'Modification': 'Modificação'
        'Title': 'Título'
        'Ship': 'Nave'
    rulestypes:
        'glossary': 'Glossário'
        'faq': 'FAQ'
    action:
        'Boost': 'Impulso'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.Português = () ->
    exportObj.cardLanguage = 'Português'
 # Rename ships
    exportObj.renameShip """Modified YT-1300 Light Freighter""", """Cargueiro Leve YT-1300 Modificado"""
    exportObj.renameShip """StarViper-class Attack Platform""", """Plataforma de Ataque Classe Starviper"""
    exportObj.renameShip """Scurrg H-6 Bomber""", """Bombardeiro Scurrg-H-6"""
    exportObj.renameShip """YT-2400 Light Freighter""", """Cargueiro Leve YT-2400"""
    exportObj.renameShip """Auzituck Gunship""", """Nave de Ataque Auzituck"""
    exportObj.renameShip """Kihraxz Fighter""", """Caça Kihraxz"""
    exportObj.renameShip """Sheathipede-Class Shuttle""", """Transporte Classe Sheathipede"""
    exportObj.renameShip """Quadrijet Transfer Spacetug""", """Rebocador Orbital Quadrijet"""
    exportObj.renameShip """Firespray-class Patrol Craft""", """Nave de Patrulha Classe Firespray"""
    exportObj.renameShip """TIE/ln Fighter""", """Caça TIE/ln"""
    exportObj.renameShip """BTL-A4 Y-wing""", """Y-Wing BTL-A4"""
    exportObj.renameShip """TIE Advanced x1""", """TIE Advanced x1"""
    exportObj.renameShip """Alpha-Class Star Wing""", """Star Wing Classe Alfa"""
    exportObj.renameShip """UT-60D U-wing""", """U-Wing UT-60D"""
    exportObj.renameShip """TIE/sk Striker""", """TIE/sk Striker"""
    exportObj.renameShip """A/SF-01 B-wing""", """B-Wing A/SF-01"""
    exportObj.renameShip """TIE/d Defender""", """TIE/d Defender"""
    exportObj.renameShip """TIE/sa Bomber""", """TIE/sa Bomber"""
    exportObj.renameShip """TIE/ca Punisher""", """TIE/ca Punisher"""
    exportObj.renameShip """Aggressor Assault Fighter""", """Caça de Assalto Aggressor"""
    exportObj.renameShip """G-1A Starfighter""", """Caça Estelar G-1A"""
    exportObj.renameShip """VCX-100 Light Freighter""", """Cargueiro Leve VCX-100"""
    exportObj.renameShip """YV-666 Light Freighter""", """Cargueiro Leve YV-666"""
    exportObj.renameShip """TIE Advanced v1""", """TIE Advanced v1"""
    exportObj.renameShip """Lambda-class T-4a Shuttle""", """Transporte T-4A Classe Lambda"""
    exportObj.renameShip """TIE/ph Phantom""", """TIE/ph Phantom"""
    exportObj.renameShip """VT-49 Decimator""", """VT-49 Decimator"""
    exportObj.renameShip """TIE/ag Aggressor""", """TIE/ag Agressor"""
    exportObj.renameShip """BTL-S8 K-wing""", """K-Wing BTL-S8"""
    exportObj.renameShip """ARC-170 Starfighter""", """Caça Estelar ARC-170"""
    exportObj.renameShip """Attack Shuttle""", """Transporte de Ataque"""
    exportObj.renameShip """T-65 X-wing""", """X-Wing T-65"""
    exportObj.renameShip """HWK-290 Light Freighter""", """Cargueiro Leve HWK-290"""
    exportObj.renameShip """RZ-1 A-wing""", """A-Wing RZ-1"""
    exportObj.renameShip """Fang Fighter""", """Caça Fang"""
    exportObj.renameShip """Z-95-AF4 Headhunter""", """Z-95-AF4 Headhunter"""
    exportObj.renameShip """M12-L Kimogila Fighter""", """Caça Kimogila M12-L"""
    exportObj.renameShip """E-wing""", """E-Wing"""
    exportObj.renameShip """TIE/in Interceptor""", """TIE/in Interceptor"""
    exportObj.renameShip """Lancer-Class Pursuit Craft""", """Nave de Perseguição Classe Lancer"""
    exportObj.renameShip """TIE Reaper""", """TIE Reaper"""
    exportObj.renameShip """M3-A Interceptor""", """M3-A Interceptor"""
    exportObj.renameShip """JumpMaster 5000""", """JumpMaster 5000"""
    exportObj.renameShip """Customized YT-1300 Light Freighter""", """Cargueiro Leve YT-1300 Customizado"""
    exportObj.renameShip """Escape Craft""", """Nave de Fuga"""
    exportObj.renameShip """TIE/fo Fighter""", """Caça TIE/fo"""
    exportObj.renameShip """TIE/sf Fighter""", """Caça TIE/sf"""
    exportObj.renameShip """Upsilon-Class Command Shuttle""", """Transporte de Comando Classe Ípsilon"""
    exportObj.renameShip """TIE/vn Silencer""", """TIE/vn Silencer"""
    exportObj.renameShip """T-70 X-wing""", """X-Wing T-70"""
    exportObj.renameShip """RZ-2 A-wing""", """A-Wing RZ-2"""
    exportObj.renameShip """MG-100 StarFortress""", """MG-100 StarFortress"""
    exportObj.renameShip """Modified TIE/ln Fighter""", """Caça TIE/ln Modificado"""
    exportObj.renameShip """Scavenged YT-1300""", """YT-1300 Recuperada"""
    exportObj.renameShip """V-19 Torrent Starfighter""", """Caça Estelar V-19 Torrent"""    
    exportObj.renameShip """Belbullab-22 Starfighter""", """Caça Estelar Bellbullab-22"""
    exportObj.renameShip """Vulture-class Droid Fighter""", """Caça Dróide Classe Vulture"""
    exportObj.renameShip """Sith Infiltrator""", """Sith-Infiltrator"""
    exportObj.renameShip """Delta-7 Aethersprite""", """Delta-7 Aethersprite"""
    exportObj.renameShip """Delta-7b Aethersprite""", """Delta-7b Aethersprite"""
    exportObj.renameShip """Naboo Royal N-1 Starfighter""", """Caça Estelar Real de Naboo N-1"""
    exportObj.renameShip """Hyena-class Droid Bomber""", """Bombardeiro Dróide Classe Hyena"""
    exportObj.renameShip """Resistance Transport Pod""", """Módulo de Transporte da Resistência"""
    exportObj.renameShip """Resistance Transport""", """Transporte da Resistência"""
    exportObj.renameShip """Nantex-Class Starfighter""", """Caça Estelar Classe Nantex"""
    exportObj.renameShip """TIE/ba Interceptor""", """TIE/ba Interceptor"""
    exportObj.renameShip """Xi-class Light Shuttle""", """Transporte Leve Classe Xi"""
    exportObj.renameShip """HMP Droid Gunship""", """Nave de Ataque Droide HMP"""
    exportObj.renameShip """LAAT/i Gunship""", """Nave de Ataque LAAT/i"""
    exportObj.renameShip """TIE/rb Heavy""", """TIE/rb Heavy"""
    exportObj.renameShip """Droid Tri-fighter""", """Dróide Tri-fighter"""
    exportObj.renameShip """Nimbus-class V-wing""", """V-Wing Classe Nimbus"""
    exportObj.renameShip """Eta-2 Actis""", """Actis Eta-2"""
    exportObj.renameShip """Syliure-class Hyperspace Ring""", """Anel de Hiperespaço classe Syliure"""
    exportObj.renameShip """BTA-NR2 Y-wing""", """Y-Wing BTA-NR2"""
    exportObj.renameShip """TIE/wi Whisper Modified Interceptor""", """Interceptador Modificado TIE/wi Whisper"""
    exportObj.renameShip """TIE/se Bomber""", """Bombardeiro TIE/se"""
    exportObj.renameShip """Gauntlet Fighter""", """Caça Gauntlet"""
    exportObj.renameShip """ST-70 Assault Ship""", """Nave de Assalto ST-70"""
    exportObj.renameShip """Clone Z-95 Headhunter""", """Z-95 Headhunter Clone"""
    exportObj.renameShip """Rogue-class Starfighter""", """Caça Estelar Classe Rogue"""
    exportObj.renameShip """CR90 Corellian Corvette""", """Corveta Coreliana CR90"""
    exportObj.renameShip """Raider-class Corvette""", """Corveta Classe Raider"""
    exportObj.renameShip """GR-75 Medium Transport""", """Transporte Médio GR-75"""
    exportObj.renameShip """Gozanti-class Cruiser""", """Cruzador Classe Gozanti"""
    exportObj.renameShip """C-ROC Cruiser""", """Cruzador C-ROC"""
    exportObj.renameShip """Trident-class Assault Ship""", """Nave de Assalto Classe Trident"""
 

    pilot_translations =
#Rebel Alliance Pilots
        #ARC-170       
        "Ibtisam":
           display_name: """Ibtisam"""
           text: """Após você executar completamente uma manobra, se você estiver estressado, você pode rolar 1 dado de ataque. Em um resultado %HIT% ou %CRIT%, remova 1 ficha de estresse."""
        "Garven Dreis":
           display_name: """Garven Dreis"""
           text: """Após você gastar uma ficha de foco, você pode escolher 1 nave amiga em alcance 1-3. A nave escolhida recebe 1 ficha de foco."""
        "Shara Bey":
           display_name: """Shara Bey"""
           text: """Quando você defender ou realizar um ataque primário, você pode gastar 1 mira que você possua na nave inimiga para adicionar 1 resultado %FOCUS% ao resultado de seus dados."""
        "Norra Wexley":
           display_name: """Norra Wexley"""
           text: """Quando você defender, se houver uma nave inimiga em alcance 0-1, adicione 1 resultado %EVADE% ao resultado de seus dados."""

       #RZ-1 A-wing 
        "Phoenix Squadron Pilot":
           display_name: """Piloto do Esquadrão Fênix"""
           text: """<i class = flavor_text>Liderados pelo Comandante Jun Sato, os bravos porém inexperientes pilotos do Esquadrão Fênix enfrentam situações impressionantes em suas batalhas contra o Império Galático.</i>"""
        "Green Squadron Pilot":
           display_name: """Piloto do Esquadrão Verde"""
           text: """<i class = flavor_text>Devido aos seus controles sensitivos e alta manobrabilidade, somente os pilotos mais talentosos ocupavam a cabine de uma A-wing."""
        "Derek Klivian":
           display_name: """Derek Klivian"""
           text: """Após você adquirir ou gastar uma mira, você pode remover 1 ficha vermelha de si mesmo."""
        "Arvel Crynyd":
           display_name: """Arvel Crynyd"""
           text: """Se você falharia uma ação %BOOST% por sobrepor outra nave, ao invés disso, resolva-a como se estivesse executando parcialmente uma manobra.%LINEBREAK% Quando Você realizar um ataque em alcance 0, trate-o como um ataque em alcance 1."""
        "Shara Bey (A-Wing)":
           display_name: """Shara Bey"""
           text: """Quando você defender ou realizar um ataque primário, você pode gastar 1 mira que você possua na nave inimiga para adicionar 1 resultado %FOCUS% ao resultado de seus dados."""
        "Jake Farrell":
           display_name: """Jake Farrell"""
           text: """Após você realizar uma ação %BARRELROLL% ou %BOOST%, você pode escolher uma nave amiga em alcance 0-1. A nave escolhida pode realizar uma ação %FOCUS%."""
        "Wedge Antilles (A-Wing)":
           display_name: """Wedge Antilles"""
           text: """Quando você realizar um ataque primário, se o defensor estiver em seu %FRONTARC%, o defensor rola 1 dado de defesa a menos."""
        "Sabine Wren (A-Wing)":
           display_name: """Sabine Wren"""
           text: """Quando você defender ou realizar um ataque, se o alcance do ataque for 1 e você estiver no %FRONTARC% da nave inimiga, você pode trocar 1 dos seus resultados para um resultado %EVADE% ou %HIT%."""
        "Hera Syndulla (A-Wing)":
           display_name: """Hera Syndulla"""
           text: """Quando outra nave amiga em alcance 1-2 defender ou realizar um ataque, durante uma etapa Modificar Dados, você pode transferir 1 das suas fichas de foco, desvio ou mira para aquela nave."""
        "Ahsoka Tano (A-Wing)":
           display_name: """Ahsoka Tano"""
           text: """Após você executar completamente uma manobra, você pode escolher uma nave amiga em alcance 1-2 e gastar 2 %FORCE%. A nave escolhida pode realizar uma ação, mesmo estressada."""
        "Keo Venzee":
           display_name: """Keo Venzee"""
           text: """Se você não tiver %FORCE% ativa, depois que você revelar uma manobra curva [%BANKLEFT% ou %BANKRIGHT%] ou curva fechada [%TURNLEFT% ou %TURNRIGHT%], você pode aumentar a dificuldade da manobra, se o fizer, realize essa manobra como uma derrapagem e recupere 1 %FORCE%."""
        "Tycho Celchu":
           display_name: """Tycho Celchu"""
           text: """Enquanto você possuir 2 fichas de estresse ou menos, você pode realizar ações, mesmo se estiver estressado."""

       #B-wing
        "Blue Squadron Pilot":
           display_name: """Piloto do Esquadrão Azul"""
           text: """<i class = flavor_text>Devido ao seu conjunto de armas pesadas e escudo resiliente, a B-wing se consolidou como o caça de assalto mais inovador da Aliança Rebelde.</i>"""
        "Blade Squadron Veteran":
           display_name: """Veterano do Esquadrão Lâmina"""
           text: """<i class = flavor_text>Um sistema de estabilização giroscópica único foi projetado em volta da cabine da B-wing, garantindo que o piloto permaneça estacionário durante o voo..</i>"""
        "Netrem Pollard":
           display_name: """Netrem Pollard"""
           text: """Após você realizar uma pirueta, você pode escolher 1 nave amiga que não está estressada em alcance 0-1. A nave escolhida recebe 1 ficha de estresse, então você rotaciona 180º."""
        "Ten Numb":
           display_name: """Ten Numb"""
           text: """Quando você defender ou realizar um ataque, você pode gastar 1 ficha de estresse para mudar todos os seus resultados %FOCUS% para resultados %EVADE% ou %HIT%."""
        "Gina Moonsong":
           display_name: """Gina Moonsong"""
           text: """No início da Fase de Engajamento, você deve transferir 1 de suas fichas de estresse para outra nave amiga em alcance 0-2."""
        "Braylen Stramm":
           display_name: """Braylen Stramm"""
           text: """Quando você defender ou realizar um ataque, se você estiver estressado, você pode rerrolar até 2 de seus dados."""
        "Hera Syndulla (B-Wing)":
           display_name: """Hera Syndulla"""
           text: """Quando outra nave amiga em alcance 1-2 defender ou realizar um ataque, durante uma etapa Modificar Dados, você pode transferir 1 das suas fichas de foco, desvio ou mira para aquela nave."""

       #Rebel Tie/ln
        '"Zeb" Orrelios (TIE Fighter)':
           display_name: """“Zeb” Orrelios"""
           text: """Quando você defender, os resultados %CRIT% são neutralizados antes dos resultados %HIT%."""
        "Captain Rex":
           display_name: """Capitão Rex"""
           text: """Após você realizar um ataque, atribua a condição <strong>Tiro Supressivo</strong> ao defensor."""
        "Ezra Bridger (TIE Fighter)":
           display_name: """Ezra Bridger"""
           text: """Quando você defender ou realizar um ataque, se você estiver estressado, você pode gastar 1 %FORCE% para mudar até 2 de seus resultados %FOCUS% para resultados %EVADE% ou %HIT%."""
        "Sabine Wren (TIE Fighter)":
           display_name: """Sabine Wren"""
           text: """Antes de você ativar, você pode realizar 1 ação %BARRELROLL% ou %BOOST%."""

       #E-wing
        "Knave Squadron Escort":
           display_name: """Escolta do Esq. Valete"""
           text: """<i class = flavor_text>Projetada para combinar as melhores características das séries X-wing e A-wing, a E-wing apresenta poder de fogo, velocidade e manobrabilidade superiores."""
        "Rogue Squadron Escort":
           display_name: """Escolta do Esq. Rogue"""
           text: """<i class = flavor_text>Os pilotos de elite do Esquadrão Rogue estão entre os melhores da Rebelião."""
        "Gavin Darklighter":
           display_name: """Gavin Darklighter"""
           text: """Quando uma nave amiga realizar um ataque, se o defensor estiver em seu %FRONTARC%, o atacante pode mudar 1 resultado %HIT% para um resultado %CRIT%."""
        "Corran Horn":
           display_name: """Corran Horn"""
           text: """Em iniciativa 0, você pode realizar um ataque primário bônus contra uma nave inimiga em seu %BULLSEYEARC%. Se o fizer, no início da próxima Fase de Planejamento, receba 1 ficha de desarmamento."""

       #HWK-290
        "Rebel Scout":
           display_name: """Batedor Rebelde"""
           text: """<i class = flavor_text>Projetadas pela Corellian Engineering Corporation para se parecerem com pássaros em voo, as naves da série “hawk” são naves de transporte exemplares. Rápidas e robustas, a HWK-290 é comumente empregada por agentes Rebeldes como base de operações móvel.</i>"""
        "Kyle Katarn":
           display_name: """Kyle Katarn"""
           text: """No início da Fase de Engajamento, você pode transferir 1 de suas fichas de foco para uma nave amiga em seu arco de tiro."""
        "Roark Garnet":
           display_name: """Roark Garnet"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave em seu arco de tiro. Se o fizer, a nave escolhida engaja no valor de iniciativa 7, ao invés do valor de iniciativa normal dela."""
        "Jan Ors":
           display_name: """Jan Ors"""
           text: """Quando uma nave amiga em seu arco de tiro realizar um ataque primário, se você não estiver estressado, você pode receber 1 ficha de estresse. Se o fizer, a nave amiga pode rolar 1 dado de ataque adicional."""

       #K-wing
        "Warden Squadron Pilot":
           display_name: """Piloto do Esq. Protetor"""
           text: """<i class = flavor_text>A K-wing fabricada pela Koensayr Manufacturing dispunha de um avançado Motor de Aceleração Sub-Luz (SLAM) e incríveis 18 pontos de encaixe, garantindo velocidade e poder de fogo sem igual.</i>"""
        "Miranda Doni":
           display_name: """Miranda Doni"""
           text: """Quando você realizar um ataque primário, você pode gastar 1 escudo para rolar dado de ataque adicional ou, se não possuir escudos, você pode rolar 1 dado de ataque a menos para recuperar 1 escudo."""
        "Esege Tuketu":
           display_name: """Esege Tuketu"""
           text: """Quando uma nave amiga em alcance 0-2 defender ou realizar um ataque, ela pode gastar as suas fichas de foco como se fossem dela."""

       #Fang Fighter
        "Bodica Venj":
           display_name: """Bodica Venj"""
           text: """Depois que outra nave amiga defender, se você não estiver exausto, você pode realizar um ataque primário bônus contra o atacante. Se você fizer isso, depois de realizar este ataque, receba uma ficha de exaustão."""
        "Clan Wren Volunteer":
           display_name: """Voluntário do Clã Wren"""
           text: """Quando você realizar um ataque em alcance 1, se a velocidade da sua manobra revelada for igual a de uma nave amiga em alcance 1, você pode rerolar 1 dado de ataque.."""
        "Dirk Ullodin":
           display_name: """Dirk Ullodin"""
           text: """Depois que você realizar completamente uma manobra vermelha ou realizar uma ação vermelha, você pode travar uma mira em uma nave inimiga em seu %FRONTARC% em alcance 1."""
        "Fenn Rau (Rebel Fang)":
           display_name: """Fenn Rau"""
           text: """Antes de uma nave amiga em alcance 1-2 engajar, se houver uma nave inimiga no %FRONTARC% dela em alcance 1, essa nave amiga pode remover 1 ficha vermelha que não seja uma mira."""

       #Auzituck
        "Kashyyyk Defender":
           display_name: """Defensor Kashyyyk"""
           text: """<i class = flavor_text>Equipada com três canhões laser paralelos Sureggi de longo alcance, a Nave de Ataque Auzituck age como um poderoso dissuasor das operações escravagistas do sistema Kashyyyk.</i>"""
        "Lowhhrick":
           display_name: """Lowhhrick"""
           text: """Após uma nave amiga em alcance 0-1 se tornar defensora, você pode gastar 1 ficha de reforço. Se o fizer, a nave defensora recebe 1 ficha de desvio."""
        "Wullffwarro":
           display_name: """Wullffwarro"""
           text: """Quando você realizar um ataque primário, se você estiver danificado, você pode rolar 1 dado de ataque adicional."""

       #Sheathipede
        "AP-5":
           display_name: """AP-5"""
           text: """Quando você coordenar, se escolher uma nave com exatamente 1 ficha de estresse, ela pode realizar ações."""
        '"Zeb" Orrelios (Sheathipede)':
           display_name: """“Zeb” Orrelios"""
           text: """Quando você defender, os resultados %CRIT% são neutralizados antes dos resultados %HIT%."""
        "Ezra Bridger (Sheathipede)":
           display_name: """Ezra Bridger"""
           text: """Quando você defender ou realizar um ataque, se você estiver estressado, você pode gastar 1 %FORCE% para mudar até 2 de seus resultados %FOCUS% para resultados %EVADE% ou %HIT%."""
        "Fenn Rau (Sheathipede)":
           display_name: """Fenn Rau"""
           text: """Antes de uma nave inimiga em seu arco de tiro engajar, se você não estiver estressado, você pode receber 1 ficha de estresse. Se o fizer, a nave inimiga engajando não pode gastar fichas para modificar dados enquanto estiver realizando um ataque nesta fase."""

       #Attack Shuttle
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """Quando você defender, os resultados %CRIT% são neutralizados antes dos resultados %HIT%."""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """Quando você defender ou realizar um ataque, se você estiver estressado, você pode gastar 1 %FORCE% para mudar até 2 de seus resultados %FOCUS% para resultados %EVADE% ou %HIT%."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """Antes de você ativar, você pode realizar 1 ação %BARRELROLL% ou %BOOST%."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """Após você revelar uma manobra vermelha ou azul, você pode colocar seu disco em outra manobra de mesma dificuldade."""

       #U-wing
        "Blue Squadron Scout":
           display_name: """Batedor do Esq. Azul"""
           text: """<i class = flavor_text>Usada para deslocar tropas encoberta pela escuridão ou até focos de batalha, a U-wing UT-60D atende a necessidade da aliança de ter um transporte de tropas rápido e robusto.</i>"""
        "Partisan Renegade":
           display_name: """Partidário Renegado """
           text: """<i class = flavor_text>Os partidários de Saw Gerrera foram estabelecidos para opor forças Separatistas em Onderon durante as Guerras Clônicas, e continuaram a guerrear contra a tirania galáctica quando o Império assumiu o poder.</i>"""
        "Heff Tobber":
           display_name: """Heff Tobber"""
           text: """Após uma nave inimiga executar uma manobra, se ela estiver em alcance 0, você pode realizar uma ação."""
        "Benthic Two Tubes":
           display_name: """Benthic Two Tubes"""
           text: """Após você realizar uma ação %FOCUS%, você pode transferir 1 de suas fichas de foco para uma nave amiga em alcance 1-2."""
        "K-2SO":
           display_name: """K-2SO"""
           text: """Após receber uma ficha de estresse, receba 1 ficha de cálculo."""
        "Bodhi Rook":
           display_name: """Bodhi Rook"""
           text: """Naves amigas podem adquirir miras em objetos em alcance 0-3 de qualquer nave amiga."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """Quando uma nave amiga em alcance 0-2 defender, o atacante não pode rerrolar mais que 1 dado de ataque."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """No início da Fase de Ativação, você pode escolher 1 nave amiga em alcance 1-3. Se o fizer, a nave escolhida remove 1 ficha de estresse."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """Quando uma nave amiga danificada em alcance 0-3 realizar um ataque, ela pode rerrolar 1 dado de ataque."""

       #VCX-100
        "Lothal Rebel":
           display_name: """Rebelde de Lothal"""
           text: """<i class = flavor_text>Mais um projeto de sucesso de cargueiro da Corellian Engineering Corporation, o VCX-100 é maior que a popular série YT, dispondo de mais espaço interno e maior capacidade de personalização.</i>"""
        '"Chopper"':
           display_name: """Chopper"""
           text: """No início da Fase de Engajamento, cada nave inimiga em alcance 0 recebe 2 fichas de interferência."""
        "Alexsandr Kallus":
           display_name: """Alexsandr Kallus"""
           text: """Quando você defender, se o atacante modificou qualquer dado de ataque, você pode rolar 1 dado adicional de defesa."""
        "Hera Syndulla (VCX-100)":
           display_name: """Hera Syndulla"""
           text: """Após você revelar uma manobra vermelha ou azul, você pode colocar seu disco em outra manobra de mesma dificuldade."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """Quando uma nave amiga em seu arco de tiro defender, você pode gastar 1 %FORCE%. Se o fizer, o atacante rola 1 dado de ataque a menos."""

       #X-wing T-65
        "Blue Squadron Escort":
           display_name: """Escolta do Esquadrão Azul"""
           text: """<i class = flavor_text>Projetada pela Incom Corporation, a X-wing T-65 se mostrou rapidamente ser um dos veículos militares mais efetivos da galáxia e uma dádiva para a Rebelião.</i>"""
        "Cavern Angels Zealot":
           display_name: """Fanático dos Cavern Angels"""
           text: """<i class = flavor_text>Diferente da maioria das células Rebeldes, os partidários de Saw estão prontos para usar métodos extremos para prejudicar os objetivos do Império Galáctico em batalhas brutais, de Geonosis a Jedha.</i>"""
        "Red Squadron Veteran":
           display_name: """Veterano do Esq. Vermelho"""
           text: """<i class = flavor_text>Criado para ser um esquadrão de caças estelares de elite, o Esquadrão Vermelho inclui alguns dos melhores pilotos da Aliança Rebelde.</i>"""
        "Edrio Two Tubes":
           display_name: """Edrio Two Tubes"""
           text: """Antes de você ativar, se você estiver focado, você pode realizar uma ação."""
        "Leevan Tenza":
           display_name: """Leevan Tenza"""
           text: """Após você realizar uma ação %BARRELROLL% ou %BOOST%, você pode realizar uma ação %EVADE% vermelha."""
        "Jek Porkins":
           display_name: """Jek Porkins"""
           text: """Após receber uma ficha de estresse, você pode rolar 1 dado de ataque para removê-la. Em um resultado %HIT%, sofra 1 dano %HIT%."""
        "Kullbee Sperado":
           display_name: """Kullbee Sperado"""
           text: """Após você realizar uma ação %BARRELROLL% ou %BOOST%, você pode virar sua carta de melhoria %CONFIG% equipada."""
        "Garven Dreis (X-Wing)":
           display_name: """Garven Dreis"""
           text: """Após você gastar uma ficha de foco, você pode escolher 1 nave amiga em alcance 1-3. A nave escolhida recebe 1 ficha de foco."""
        "Biggs Darklighter":
           display_name: """Biggs Darklighter"""
           text: """Quando outra nave amiga em alcance 0-1 defender, antes da etapa Neutralizar Resultados, se você estiver no arco de ataque, você pode sofrer 1 dano %HIT% ou %CRIT% para cancelar 1 resultado correspondente."""
        "Thane Kyrell":
           display_name: """Thane Kyrell"""
           text: """Quando você realizar um ataque, você pode gastar 1 resultado %FOCUS%, %HIT% ou %CRIT% para olhar as cartas de dano viradas para baixo do defensor, escolher 1 e expô-la."""
        "Wedge Antilles":
           display_name: """Wedge Antilles"""
           text: """Quando você realizar um ataque, o defensor rola 1 dado de defesa a menos."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """Após você se tornar o defensor (antes dos dados serem rolados), você pode recuperar 1 %FORCE%."""
        "Corran Horn (X-Wing)":
           display_name: """Corran Horn"""
           text: """Depois de declarar o defensor de um ataque, se você possuir uma mira no defensor, uma nave amiga pode transferir uma mira que tenha em você para o defensor."""
        "Biggs Darklighter (BoY)":
           display_name: """Biggs Darklighter (BdY)"""
           text: """Durante a Fase de Sistema, você pode escolher 1 nave amiga em alcance 1. Se o fizer, trate sua iniciativa igual a da nave escolhida até o fim da fase de Ativação."""
        "Garven Dreis (BoY)":
           display_name: """Garven Dreis (BdY)"""
           text: """Depois que você gastar uma ficha de foco, você pode escolher 1 nave amiga em alcance 1-3. Essa nave recebe 1 ficha de foco."""
        "Jek Porkins (BoY)":
           display_name: """Jek Porkins (BdY)"""
           text: """Depois que você receber uma ficha de estresse, você pode rolar 1 dado de ataque para removê-la. Em um resultado %HIT%, sofra 1 dano %HIT%."""
        "Luke Skywalker (BoY)":
           display_name: """Luke Skywalker (BdY)"""
           text: """Depois que você for declarado como defensor durante um ataque, você pode recuperar 1 %FORCE%."""
        "Wedge Antilles (BoY)":
           display_name: """Wedge Antilles (BdY)"""
           text: """Quando você realizar um ataque primário, se houver outra nave amiga no arco de tiro do defensor, o defensor rola 1 dado de defesa a menos."""
        "Wes Janson":
           display_name: """Wes Janson"""
           text: """Depois que você realizar um ataque, você pode gastar 1 %CHARGE% para que o defensor receba 1 ficha de interferência.%LINEBREAK%Depois que você defender, você pode gastar 1 %CHARGE% para que o defensor receba 1 ficha de interferência."""

       #YT-1300
        "Outer Rim Smuggler":
           display_name: """Contrabandistada Orla Exterior"""
           text: """<i class = flavor_text>Conhecido por sua durabilidade e modularidade, a YT-1300 é um dos cargueiros mais populares, mais usados e mais extensivamente personalizados da galáxia.</i>"""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """Antes de receber uma carta de dano virada para cima, você pode gastar 1 %CHARGE% para, ao invés disso, receber a carta virada para baixo."""
        "Leia Organa":
           display_name: """Leia Organa"""
           text: """Após uma nave amiga executar completamente uma manobra vermelha, se ela estiver em alcance 0-3, você pode gastar 1 %FORCE%. Se o fizer, a nave amiga recebe 1 ficha de foco ou recupera 1 %FORCE%."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """Após você executar completamente uma manobra azul, você pode escolher uma nave amiga em alcance 0-3. A nave escolhida pode realizar uma ação."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """Após você rolar dados, se você estiver em alcance 0-1 de um obstáculo, você pode rerrolar todos os seus dados. Para todos os outros efeitos, isto não conta como uma rerrolagem."""
        "Han Solo (BoY)":
           display_name: """Han Solo (BdY)"""
           text: """Depois de realizar um ataque que acertou, você pode gastar 1 %CHARGE% para realizar uma ação %COORDINATE%.%LINEBREAK%<strong>Solo:</strong> Quando você defender ou realizar um ataque, se não houver outras naves amigas em alcance 0-1, você pode gastar 1 %CHARGE% para rerolar 1 de seus dados."""

       #YT-2400
        "Wild Space Fringer":
           display_name: """Marginal do Espaço Selvagem"""
           text: """<i class = flavor_text>Apesar dos cargueiros leves YT-2400 de fábrica possuírem um grande espaço de carga, esse espaço geralmente é ocupado por sistemas bélicos modificados e motores turbinados."""
        '"Leebo"':
           display_name: """“Leebo”"""
           text: """Após você defender ou realizar um ataque, se você gastou uma ficha de cálculo, receba 1 ficha de cálculo."""
        "Dash Rendar":
           display_name: """Dash Rendar"""
           text: """Quando você se move, você ignora obstáculos."""

        #Expansão YT-2400
        "Dash Rendar (YLF)":
           display_name: """Dash Rendar (YLF)"""
           text: """Durante a Fase de Engajamento, você ignora os efeitos dos obstáculos que você estiver sobrepondo."""
        "Dash Rendar (YLF-SL)":
           display_name: """Dash Rendar (YLF-SL)"""
           text: """Depois que você receber uma ficha vermelha como resultado de se mover através ou sobrepor um obstáculo, você pode transferir esta ficha vermelha para uma nave amiga em alcance 0-1."""
        '"Leebo" (YLF)':
           display_name: """“Leebo” (YLF)"""
           text: """Depois que você se defender ou realizar um ataque, se você gastou uma ficha de cálculo, receba 1 ficha de cálculo."""
        '"Leebo" (YLF-SL)':
           display_name: """“Leebo” (YLF-SL)"""
           text: """No começo da Fase de Engajamento, você pode gastar uma ficha de cálculo para adquirir uma mira em uma nave inimiga em alcance 2-3."""


       #Y-wing
        "Gray Squadron Bomber":
           display_name: """Bombardeiro do Esquadrão Cinza"""
           text: """<i class = flavor_text>Muito tempo depois da Y-wing ser descontinuada pelo Império Galático, sua durabilidade, confiabilidade e armamento pesado ainda faz dela um recurso fundamental à frota Rebelde.</i>"""
        "Gold Squadron Veteran":
           display_name: """Veterano do Esquadrão Dourado"""
           text: """<i class = flavor_text>Comandado por Jon “Dutch” Vander, o Esquadrão Ouro desempenhou um papel fundamental nas Batalhas de Scarif e Yavin.</i>"""
        "Evaan Verlaine":
           display_name: """Evaan Verlaine"""
           text: """No início da Fase de Engajamento, você pode gastar 1 ficha de foco para escolher uma nave amiga em alcance 0-1. Se você fizer isso, a nave escolhida rola 1 dado de defesa adicional quando defender até o final da rodada."""
        "Horton Salm":
           display_name: """Horton Salm"""
           text: """Quando realizar um ataque, você pode rerrolar 1 dado de ataque para cada outra nave amiga em alcance 0-1 do defensor."""
        '"Dutch" Vander':
           display_name: """“Dutch” Vander"""
           text: """Após você realizar a ação %LOCK%, você pode escolher 1 nave amiga em alcance 1-3. A nave escolhida pode adquirir uma mira no objeto que você travou a mira, ignorando as restrições de alcance."""
        "Norra Wexley (Y-Wing)":
           display_name: """Norra Wexley"""
           text: """Quando você defender, se houver uma nave inimiga em alcance 0-1, adicione 1 resultado %EVADE% ao resultado de seus dados."""
        '"Pops" Krail':
           display_name: """“Pops” Krail"""
           text: """Depois que você executar completamente uma manobra branca, você pode escolher uma nave amiga em alcance 0-1. A nave escolhida pode realizar uma ação %FOCUS%."""
        "Dex Tiree (BoY)":
           display_name: """Dex Tiree (BdY)"""
           text: """Quando você defender, se houver pelo menos 1 outra nave amiga em alcance 0-1, você pode rolar 1 dado de defesa adicional."""
        "Hol Okand (BoY)":
           display_name: """Hol Okand (BdY)"""
           text: """Durante a Fase de Sistema, se não houver naves inimigas em alcance 1-2, você pode recuperar 1 %CHARGE% em qualquer melhoria."""
        '"Pops" Krail (BoY)':
           display_name: """“Pops” Krail (BdY)"""
           text: """Quando você realizar um ataque %SINGLETURRETARC%, você pode rerolar até 2 dados de ataque."""
        '"Dutch" Vander (BoY)':
           display_name: """“Dutch” Vander (BdY)"""
           text: """Depois que você gastar uma mira durante um ataque, escolha uma nave amiga em alcance 1-3. A nave escolhida pode adquirir uma mira no defensor."""

       #Z-95
        "Bandit Squadron Pilot":
           display_name: """Piloto do Esquadrão Bandido"""
           text: """<i class = flavor_text>A Z-95 Headhunter foi a principal inspiração da Incom Corporation para criar o caça estelar X-wing T-65. Apesar de ser considerada ultrapassada para os padrões modernos, ela continua sendo um caça versátil e potente.</i>"""
        "Tala Squadron Pilot":
           display_name: """Piloto do Esq. Tala"""
           text: """<i class = flavor_text>A série AF4 é o modelo mais recente de uma longa lista de projetos Headhunter. Barata e relativamente durável, ela é uma das naves favoritas entre grupos independentes como a Rebelião.</i>"""
        "Lieutenant Blount":
           display_name: """Tenente Blount"""
           text: """Quando você realizar um ataque primário, se houver ao menos 1 outra nave amiga em alcance 0-1 do defensor, você pode rolar 1 dado de ataque adicional."""
        "Airen Cracken":
           display_name: """Airen Cracken"""
           text: """Após você realizar um ataque, você pode escolher 1 nave amiga em alcance 1. A nave escolhida pode realizar uma ação, tratando-a como vermelha."""

       #Gauntlet Fighter
        "Mandalorian Resistance Pilot":
           display_name: """Piloto da Resistência Mandaloriana"""
           text: """Alguns guerreiros mandalorianos, como os do Clã Kryze, não se curvaram e continuam lutando contra o governo colaboracionista do Clã Saxon e seus mestres imperiais. A mistura de velocidade e poder de fogo do Caça Gauntlet fazem dele o transporte ideal para seus ataques."""
        "Ezra Bridger (Gauntlet Fighter)":
           display_name: """Ezra Bridger"""
           text: """Quando você defender ou realizar um ataque, se você estiver estressado, você pode gastar 1 %FORCE% para mudar até 2 de seus resultados %FOCUS% para resultados %EVADE% ou %HIT%."""
        '"Chopper" (Gauntlet Fighter)':
           display_name: """Chopper"""
           text: """No início da Fase de Engajamento, cada nave inimiga em alcance 0 recebe 2 fichas de interferência."""

#Scum Pilots
       
       #Scurrg
        "Lok Revenant":
           display_name: """Espectro de Lok"""
           text: """<i class = flavor_text>A Nubian Design Collective criou o Bombardeiro Scurrg H-6 tendo em mente a versatilidade em combate, equipando-o com escudos reforçados e um vasto conjunto de armamentos destrutivos.</i>"""
        "Sol Sixxa":
           display_name: """Sol Sixxa"""
           text: """Se você for soltar um dispositivo usando um gabarito [1&nbsp;%STRAIGHT%], você pode soltá-lo usando, ao invés desse, qualquer outro gabarito de velocidade 1."""
        "Captain Nym":
           display_name: """Capitão Nym"""
           text: """Antes de uma bomba ou mina amiga detonar, você pode gastar 1 %CHARGE% para evitar que ela detone.%LINEBREAK%Quando você defender contra um ataque obstruído por uma bomba ou mina, role 1 dado de defesa adicional."""

       #Aggressor
        "IG-88A":
           display_name: """IG-88A"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave amiga em alcance 1-3 que tenha %CALCULATE% na barra de ações. Se o fizer, transfira 1 de suas fichas de cálculo para ela."""
        "IG-88B":
           display_name: """IG-88B"""
           text: """Após você realizar um ataque que errou, você pode fazer um ataque %CANNON% bônus.%LINEBREAK%<strong>Cérebro Droide Avançado:</strong> Após realizar uma ação %CALCULATE%, receba 1 ficha de cálculo."""
        "IG-88C":
           display_name: """IG-88C"""
           text: """Após você realizar uma ação %BOOST%, você pode realizar uma ação %EVADE%..%LINEBREAK%<strong>Cérebro Droide Avançado:</strong> Após realizar uma ação %CALCULATE%, receba 1 ficha de cálculo."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """Quando você executar uma manobra Loop de Segnor (%SLOOPLEFT% ou %SLOOPRIGHT%), você pode usar outro gabarito de mesma velocidade de: curva acentuada (%TURNLEFT% ou %TURNRIGHT%) da mesma direção ou linha reta (%STRAIGHT%)."""

       #G1-A
        "Gand Findsman":
           display_name: """Findsman Gand"""
           text: """<i class = flavor_text>Os lendários Rastreadores de Gand veneram a névoa que encobre seu planeta natal, usando sinais, presságios e rituais mágicos para rastrear suas presas.</i>"""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """Quando você realizar um ataque primário, você pode rolar 1 dado de ataque adicional. Se o fizer, o defensor rola 1 dado de defesa adicional."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """Após você executar completamente uma manobra vermelha, receba 1 ficha de cálculo. No início da Fase Final, você pode escolher 1 nave em alcance 0-1. Se o fizer, transfira 1 de suas fichas de estresse para a nave escolhida."""

       #Fang Fighter
        "Zealous Recruit":
           display_name: """Recruta Diligente"""
           text: """<i class = flavor_text>Os pilotos do caça Mandaloriano Fang devem dominar a manobra Afronta de Concordia, aproveitando a silhueta esguia de suas naves para executar ataques frontais mortais.</i>"""
        "Skull Squadron Pilot":
           display_name: """Piloto do Esq. Caveira"""
           text: """<i class = flavor_text>Os ases do Esquadrão Caveira preferem aproximações agressivas, utilizando a tecnologia de asas pivotantes para alcançar uma agilidade imbatível durante perseguições.</i>"""
        "Joy Rekkoff":
           display_name: """Joy Rekkoff"""
           text: """Quando você realizar um ataque, você pode gastar 1 %CHARGE% de uma melhoria %TORPEDO% equipada. Se o fizer, o defensor rola 1 dado de defesa a menos."""
        "Kad Solus":
           display_name: """Kad Solus"""
           text: """Após você executar completamente uma manobra vermelha, receba 2 fichas de foco."""
        "Old Teroch":
           display_name: """Velho Teroch"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave inimiga em alcance 1. Se o fizer e estiver no %FRONTARC% da nave escolhida, ela remove todas as fichas verdes dela."""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """Quando você defender ou realizar um ataque, se o alcance do ataque for 1, você pode rolar 1 dado adicional."""
        "Mandalorian Royal Guard":
           display_name: """Guarda Real Mandaloriana"""
           text: """Quando uma nave amiga que não seja pequena defende, se você estiver no arco de ataque, você pode receber 1 ficha de de exaustão e 1 ficha de desgaste. Se o fizer, o defensor pode mudar 1 resultado para um resultado %EVADE%."""
        "Tor Phun":
           display_name: """Tor Phun"""
           text: """Depois que você realizar um ataque, se o defensor foi destruído, você pode realizar uma ação, mesmo se estiver estressado. E então você pode receber 2 fichas de desgaste para realizar um ataque bônus."""

       #Kihraxz
        "Cartel Marauder":
           display_name: """Saqueador de Cartel"""
           text: """<i class = flavor_text>A versátil Kihraxz foi projetada com base no popular caça estelar X-wing da Incom, porém uma série de kits de modificação garantiu uma gama enorme de variações.</i>"""
        "Black Sun Ace":
           display_name: """Ás do Sol Negro"""
           text: """<i class = flavor_text>O caça de assalto Kihraxz foi especialmente desenvolvido para a organização criminosa Sol Negro, cujos áses muito bem pagos exigiam uma nave ágil e poderosa à altura de suas habilidades.</i>"""
        "Captain Jostero":
           display_name: """Capitão Jostero"""
           text: """Após uma nave inimiga sofrer dano, se ela não estiver defendendo, você pode realizar um ataque bônus contra ela."""
        "Viktor Hel":
           display_name: """Viktor Hel"""
           text: """Após você defender, se você não rolou exatamente 2 dados de defesa, o atacante recebe 1 ficha de estresse."""
        "Graz":
           display_name: """Graz"""
           text: """Quando você defender, se você estiver atrás do atacante, role 1 dado de defesa adicional.%LINEBREAK%Quando você atacar, se você estiver atrás do defensor, role 1 dado de ataque adicional."""
        "Talonbane Cobra":
           display_name: """Talonbane Cobra"""
           text: """Quando você defender em alcance de ataque 3 ou realizar um ataque em alcance de ataque 1, role 1 dado adicional."""

       #Kimogila
        "Cartel Executioner":
           display_name: """Carrasco de Cartel"""
           text: """<i class = flavor_text>Muitos pilotos veteranos à serviço dos kajidics Hutt e outras organizações criminosas escolhem a M12-L Kimogila devido à sua reputação aterradora e seu poder de fogo."""
        "Dalan Oberos":
           display_name: """Dalan Oberos"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave com escudos em seu %BULLSEYEARC% e gastar 1 %CHARGE%. Se o fizer, a nave escolhida perde 1 escudo e você recupera 1 escudo."""
        "Torani Kulda":
           display_name: """Torani Kulda"""
           text: """Após você realizar um ataque, cada nave inimiga em seu %BULLSEYEARC% sofre 1 dano %HIT% a menos que ela remova 1 ficha verde."""

       #Mining TIE
        "Mining Guild Sentry":
           display_name: """Sentinela da Guilda dos Mineradores"""
           text: """<i class = flavor_text>Como parte do acordo com o Império, a Guilda dos Mineradores recebe TIE/ln Fighters modificadas para proteger suas operações. Estas naves tiveram alguns painéis solares removidos de seus estabilizadores para favorecer a visibilidade, e apresentam sistemas de suporte à vida mais completos para beneficiar seus pilotos contratados."""
        "Mining Guild Surveyor":
           display_name: """Inspetor da Guilda dos Mineradores"""
           text: """<i class = flavor_text>Com os projetos de construção do Império consumindo recursos em um ritmo nunca visto antes, a Guilda dos Mineradores explora impiedosamente novos depósitos de minério de doonium em mundos como Batonn, Lothal e Umbara."""
        "Overseer Yushyn":
           display_name: """Supervisor Yushyn"""
           text: """Antes de uma nave amiga em alcance 1 receber uma ficha de desarmamento, se ela não estiver estressada, você pode gastar 1 %CHARGE%. Se o fizer, ao invés da ficha de desarmamento, ela recebe 1 ficha de estresse."""
        "Ahhav":
           display_name: """Ahhav"""
           text: """Quando você defender ou realizar um ataque, se a nave inimiga for maior que você, role 1 dado adicional."""
        "Captain Seevor":
           display_name: """Capitão Seevor"""
           text: """Quando você defender ou realizar um ataque, antes dos dados de ataque serem rolados, se você não estiver no %BULLSEYEARC% do inimigo, você pode gastar 1 %CHARGE%. Se o fizer, a nave inimiga recebe 1 ficha de interferência."""
        "Foreman Proach":
           display_name: """Chefe Proach"""
           text: """Antes de você engajar, você pode escolher 1 nave inimiga em seu %BULLSEYEARC% em alcance 1-2 e receber 1 ficha de desarmamento. Se o fizer, a nave escolhida recebe 1 ficha de tração."""
        "Lapin":
           display_name: """Lapin"""
           text: """Quando você defender ou realizar um ataque, se a nave inimiga estiver estressada, os dados dessa nave não podem ser modificados."""

       #HWK290
        "Spice Runner":
           display_name: """Contrabandista de Especiarias"""
           text: """<i class = flavor_text>Apesar de ter espaço de carga limitado se comparada com outros cargueiros leves, a pequena e ágil HWK-290 é uma das escolhas de contrabandistas especializados em transportar bens discretamente.</i>"""
        "Dace Bonearm":
           display_name: """Dace Bonearm"""
           text: """Após uma nave inimiga em alcance 0-3 receber ao menos 1 ficha de íon, você pode gastar 3 %CHARGE%. Se o fizer, a nave inimiga recebe 2 fichas de íon adicionais."""
        "Gamut Key":
           display_name: """Gamut Key"""
           text: """No início da Fase Final, você pode gastar 2 %CHARGE% para escolher você mesmo ou uma nave em seu %SINGLETURRETARC% com 1 ou mais fichas circulares. Durante a Fase Final, fichas circulares não são removidas da nave escolhida."""
        "Tápusk":
           display_name: """Tápusk"""
           text: """Durante a Fase Final, antes que uma nave inimiga em seu %SINGLETURRETARC% recupera 1 %CHARGE% ou %FORCE% recursiva, você pode gastar 2 %CHARGE%. Se o fizer, a nave inimiga não recupera aquela %CHARGE% ou %FORCE%."""        
        "Torkil Mux":
           display_name: """Torkil Mux"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave em seu arco de tiro. Se o fizer, a nave escolhida engaja na iniciativa 0 ao invés do seu valor normal de iniciativa nessa rodada."""
        "Palob Godalhi":
           display_name: """Palob Godalhi"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave inimiga em seu arco de tiro em alcance 0-2. Se o fizer, transfira 1 ficha de foco ou desvio da nave escolhida para você."""
        "Kanan Jarrus (HWK-290)":
           display_name: """Kanan Jarrus"""
           text: """Quando você ou uma nave em seu %SINGLETURRETARC% defender, você pode gastar 1 %FOCE%. Se o fizer, o atacante rola 1 dado de ataque a menos."""

       #YT-1300 Scum
        "Freighter Captain":
           display_name: """Capitão de Cargueiro"""
           text: """<i class = flavor_text>Muitos pilotos ganhavam a vida em viagens à Orla Exterior, onde a diferença entre contrabando e comércio legalizado é muitas vezes inexistente. Às margens da civilização, os compradores raramente questionavam a origem das mercadorias, pelo menos enquanto o preço era baixo o suficiente.</i>"""
        "L3-37":
           display_name: """L3-37"""
           text: """Se você não tiver escudos, diminua a dificuldade das suas manobras de curva (%BANKLEFT% e %BANKRIGHT%)."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian"""
           text: """Após você rolar dados, se você não estiver estressado, você pode receber 1 ficha de estresse para rerrolar todos os seus resultados em branco."""
        "Han Solo (Scum)":
           display_name: """Han Solo"""
           text: """Quando você defender ou realizar um ataque, se o ataque estiver obstruído por um obstáculo, você pode rolar 1 dado adicional."""

      #YV-666
        "Trandoshan Slaver":
           display_name: """Escravista Trandoshano"""
           text: """<i class = flavor_text>O design espaçoso de convés triplo da YV-666 faz dela uma nave muito popular entre os caçadores de recompensa e escravistas, que normalmente reformam um convés inteiro para o transporte de prisioneiros.</i>"""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """No início da Fase de Engajamento, você pode escolher uma nave em alcance 1 e gastar uma mira que você tem na nave escolhida. Se o fizer, a nave escolhida recebe 1 ficha de tração."""
        "Bossk":
           display_name: """Bossk"""
           text: """Quando você realizar um ataque primário, após a etapa Neutralizar Resultados, você pode gastar 1 resultado %CRIT% para adicionar 2 resultados %HIT%."""
        "Moralo Eval":
           display_name: """Moralo Eval"""
           text: """Se você iria fugir, você pode gastar 1 %CHARGE%. Se o fizer, coloque-se na reserva, ao invés de fugir. No início da próxima Fase de Planejamento, coloque-se dentro do alcance 1 da borda da área de jogo pela qual você fugiu."""
        "Doctor Aphra":
           display_name: """Dra. Aphra"""
           text: """Antes de você engajar, você pode gastar 1 ficha verde e 1 %CHARGE%. Se o fizer, você pode escolher outra nave em alcance 0-1 que não esteja estressada. A nave escolhida recebe 1 ficha de estresse."""

      #Jumpaster-5000
        "Contracted Scout":
           display_name: """Batedor Contratado"""
           text: """<i class = flavor_text>Construída para reconhecimento de longa distância e para traçar novas rotas pelo hiperespaço, a levemente armada JumpMaster 5000 geralmente é atualizada extensivamente com melhorias personalizadas.</i>"""
        "Nom Lumb":
           display_name: """Nom Lumb"""
           text: """Após você se tornar o defensor, se o atacante não estiver em seu %SINGLETURRETARC%, você deve rotacionar seu indicador %SINGLETURRETARC% para o arco convencional que o atacante está."""
        "Tel Trevura":
           display_name: """Tel Trevura"""
           text: """Se você seria destruído, você pode gastar 1 %CHARGE%. Se o fizer, descarte todas as suas cartas de dano, sofra 5 danos %HIT%, e coloque-se na reserva. No início da próxima Fase de Planejamento, posicione-se dentro do alcance 1 da sua borda de jogador."""
        "Manaroo":
           display_name: """Manaroo"""
           text: """No início da Fase de Engajamento, você pode escolher uma nave amiga em alcance 0-1. Se o fizer, transfira todas as fichas verdes atribuidas a você para a nave escolhida."""
        "Dengar":
           display_name: """Dengar"""
           text: """Após você defender, se o atacante estiver em seu %FRONTARC%, você pode gastar 1 %CHARGE% para realizar um ataque bônus contra o atacante."""

       #M3-A
        "Cartel Spacer":
           display_name: """Piloto de Cartel"""
           text: """<i class = flavor_text>As M3-A "Scyk" Interceptors da MandalMotors foram compradas em grandes quantidades pelo Cartel Hutt e pelos contrabandistas Car'das devido à sua capacidade de customização e seu baixo custo."""
        "Tansarii Point Veteran":
           display_name: """Veterano de Ponto Tansarii"""
           text: """<i class = flavor_text>A derrota do ás do Sol Negro Talonbane Cobra para contrabandistas Car'das virou o jogo durante a Batalha da Estação Ponto Tansarii. Os sobreviventes do combate são respeitados por todo o setor."""
        "Sunny Bounder":
           display_name: """Sunny Bounder"""
           text: """Quando você defender ou realizar um ataque, após você rolar ou rerrolar seus dados, se você obteve o mesmo resultado em todos os dados, você pode adicionar 1 resultado correspondente."""
        "G4R-GOR V/M":
           display_name: """G4R-GOR V/M"""
           text: """Após você defender, cada outra nave em alcance 0 sofre 1 dano %CRIT%."""
        "Inaldra":
           display_name: """Inaldra"""
           text: """Quando você defender ou realizar um ataque, você pode sofrer 1 dano %HIT% para rerrolar qualquer número de seus dados."""
        "Laetin A'shera":
           display_name: """Laetin A’shera"""
           text: """Após você defender ou realizar um ataque, se o ataque errou, receba 1 ficha de desvio."""
        "Genesis Red":
           display_name: """Gênesis Vermelho"""
           text: """Após você adquirir uma mira, você deve remover todas as suas fichas de foco e desvio. Então, receba a mesma quantidade de fichas de foco e desvio que a nave mirada possui."""
        "Quinn Jast":
           display_name: """Quinn Jast"""
           text: """No início da Fase de Engajamento, você pode receber 1 ficha de desarmamento para recuperar 1 %CHARGE% de uma de suas melhorias equipadas."""
        "Serissu":
           display_name: """Serissu"""
           text: """Quando uma nave amiga em alcance 0-1 defender, ela pode rerrolar 1 dos dados dela."""

      #Scape Craft
        "Autopilot Drone":
           display_name: """Piloto Automático"""
           text: """<i class = flavor_text>Às vezes, os avisos dos fabricantes devem ser desobedecidos. %LINEBREAK%<strong>Células de Energia Viciadas:</strong> Durante a Fase de Sistema, se você não estiver acoplado, perca 1 %CHARGE%. No final da Fase de Ativação, se você tiver 0 %CHARGE%, você é destruído. Antes de você ser removido, cada nave em alcance 0-1 sofre 1 dano %CRIT%."""
        "L3-37 (Escape Craft)":
           display_name: """L3-37"""
           text: """Se você não tiver escudos, diminua a dificuldade das suas manobras de curva (%BANKLEFT% e %BANKRIGHT%)."""
        "Outer Rim Pioneer":
           display_name: """Pioneiro da Orla Exterior"""
           text: """Naves amigas em alcance 0-1 podem realizar ataques em alcance 0 de obstáculos."""
        "Lando Calrissian (Scum) (Escape Craft)":
           display_name: """Lando Calrissian"""
           text: """Após você rolar dados, se você não estiver estressado, você pode receber 1 ficha de estresse para rerrolar todos os seus resultados em branco."""

      #Firespray
        "Bounty Hunter":
           display_name: """Caçador de Recompensas"""
           text: """<i class = flavor_text>A infame nave de patrulha classe Firespray é assim reconhecida devido à sua associação com os caçadores de recompensa Jango Fett e Boba Fett, que equipavam suas naves com incontáveis armamamentos letais.</i>"""
        "Krassis Trelix":
           display_name: """Krassis Trelix"""
           text: """Você pode realizar ataques especiais %FRONTARC% usando seu %REARARC%.%LINEBREAK%Quando você realizar um ataque especial, você pode rerrolar 1 dado de ataque."""
        "Koshka Frost":
           display_name: """Koshka Frost"""
           text: """Quando você realizar um ataque, se a nave inimiga estiver estressada, você pode rerrolar 1 dos seus dados."""
        "Emon Azzameen":
           display_name: """Emon Azzameen"""
           text: """Se você for soltar um dispositivo usando um gabarito [1 %STRAIGHT$], você pode usar, ao invés disso, o gabarito [3 %TURNLEFT%], [3 %STRAIGHT%], [3 %TURNRIGHT%]."""
        "Kath Scarlet":
           display_name: """Kath Scarlet"""
           text: """Quando você realizar um ataque primário, se houver ao menos 1 nave amiga não limitada em alcance 0 do defensor, role 1 dado de ataque adicional."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """Quando você defender ou realizar um ataque, você pode rerrolar 1 dos seus dados para cada nave inimiga em alcance 0-1."""
        "Hondo Ohnaka":
           display_name: """Hondo Ohnaka"""
           text: """<strong>Ação:</strong> Escolha 2 naves que não sejam enormes em alcance 0-3 de você que não sejam amigas entre si. Cada uma das naves podem realizar uma ação da sua barra de ações, mesmo se estiverem estressadas, na ordem que você definir. E então, receba 1 ficha de cálculo."""

      #Lancer Class
        "Shadowport Hunter":
           display_name: """Caçador de Shadowport"""
           text: """<i class = flavor_text>As organizações criminosas potencializam as habilidades mortais de seus leais contratados com as melhores tecnologias disponíveis, como a veloz e formidável nave de perseguição classe Lancer.</i>"""
        "Sabine Wren (Scum)":
           display_name: """Sabine Wren (Scum)"""
           text: """Quando você defender, se o atacante estiver em seu %SINGLETURRETARC% em alcance 0-2, você pode adicionar 1 resultado %FOCUS% ao resultado de seus dados."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave que esteja tanto em seu %FRONTARC% quanto em seu %SINGLETURRETARC% em alcance 0-1. Se o fizer, a nave escolhida recebe 1 ficha de tração."""
        "Asajj Ventress":
           display_name: """Asajj Ventress"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave inimiga em seu %SINGLETURRETARC% em alcance 0-2 e gastar 1 %FORCE%. Se o fizer, a nave escolhida recebe 1 ficha de estresse a menos que ela remova 1 ficha verde."""

      #Starviper
        "Black Sun Enforcer":
           display_name: """Executor do Sol Negro"""
           text: """<i class = flavor_text>O príncipe Xizor em pessoa colaborou com a MandalMotors para desenvolver o projeto da plataforma de ataque classe StarViper, um dos caças estelares mais formidáveis da galáxia."""
        "Black Sun Assassin":
           display_name: """Assassino do Sol Negro"""
           text: """<i class = flavor_text>Apesar de assassinatos serem normalmente executados com um tiro certeiro ou com uma substância colocada em uma bebida, uma nave em chamas caindo do céu manda um outro tipo bem especial de mensagem."""
        "Dalan Oberos (StarViper)":
           display_name: """Dalan Oberos"""
           text: """Após você executar completamente uma manobra, você pode receber 1 ficha de estresse para rotacionar sua nave 90º."""
        "Prince Xizor":
           display_name: """Príncipe Xizor"""
           text: """Quando você defender, após a etapa Neutralizar Resultados, outra nave amiga em alcance 0-1 e no arco de ataque pode sofrer 1 dano %HIT% ou %CRIT%. Se ela o fizer, cancele 1 resultado correspondente."""
        "Guri":
           display_name: """Guri"""
           text: """No início da Fase de Engajamento, se houver ao menos 1 nave inimiga em alcance 0-1, você pode receber 1 ficha de foco."""

      #Quadjumper
        "Jakku Gunrunner":
           display_name: """Contrabandistade Armas de Jakku"""
           text: """<i class = flavor_text>O rebocador orbital Quadrijet, comumente chamado de "Quadjumper", é ágil tanto no espaço quanto na atmosfera, o que o tornou popular entre contrabandistas e exploradores."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """No início da Fase de Engajamento, se houver uma ou mais outras naves em alcance 0, você e cada outra nave em alcance 0 recebem 1 ficha de tração."""
        "Sarco Plank":
           display_name: """Sarco Plank"""
           text: """Quando você defender, você pode tratar seu valor de agilidade como se fosse igual à velocidade da manobra que você executou nesta rodada."""
        "Constable Zuvio":
           display_name: """Condestável Zuvio"""
           text: """Se você for soltar um dispositivo, você pode, ao invés disso, lançá-lo usando um gabarito [1 %STRAIGHT%]."""

       #Y-wing scum
        "Crymorah Goon":
           display_name: """Capanga de Crymorah"""
           text: """<i class = flavor_text>Apesar de não muito ágil, a fuselagem pesada, o escudo potente e os canhões em torre da Y-wing fazem dela uma ótima nave de patrulha.</i>"""
        "Jinata Security Officer":
           display_name: """Oficial da Segurança Jinata"""
           text: """<i class = flavor_text>Com sede na antiga fortaleza Imperial de Vardos, a Segurança Jinata continua seus esforços de reconstrução no planeta devastado, até mesmo colaborando com o programa de rearmamento da Primeira Ordem.</i>"""
        "Hired Gun":
           display_name: """Mercenário"""
           text: """<i class = flavor_text>A mera menção de créditos Imperiais pode atrair uma legião de indivíduos não muito confiáveis para o seu lado.</i>"""
        "Amaxine Warrior":
           display_name: """Guerreiro Amaxine"""
           text: """<i class = flavor_text>Décadas após a Batalha de Endor, antigos Imperiais permanecem ativos na Nova República. Muitos se juntaram a organizações paramilitares, como os Guerreiros Amaxine, que se apropriam das tradições e cultura marciais para espalhar a ideologia detestável da Primeira Ordem entre aqueles mais vulneráveis a ela.</i>"""
        "Padric":
           display_name: """Padric"""
           text: """Após um dispositivo amigo no qual você possui uma mira detonar, cada nave inimiga em alcance 0-1 desse dispositivo recebe 1 ficha de desgaste."""
        "Arliz Hadrassian":
           display_name: """Arliz Hadrassian"""
           text: """Quando você realizar um ataque %FRONTARC%, se você estiver danificado, você pode mudar 1 dos seus resultados %FOCUS% para um resultado %CRIT%.%LINEBREAK%Quando você defender, se você estiver danificado, antes da etapa Modificar Dados de Defesa, você deve mudar 1 dos seus resultados %FOCUS% para um resultado em branco."""
        "Leema Kai":
           display_name: """Leema Kai"""
           text: """Antes de você engajar, se você não estiver no %FRONTARC% de qualquer nave inimiga, você pode adquirir uma mira em uma nave inimiga em seu %FULLFRONTARC%."""
        "Kavil":
           display_name: """Kavil"""
           text: """Quando realizar um ataque não %FRONTARC%, role 1 dado de ataque adicional."""
        "Drea Renthal":
           display_name: """Drea Renthal"""
           text: """Quando uma nave amiga não limitada realizar um ataque, se o defensor estiver em seu arco de tiro, o atacante pode rerrolar 1 dado de ataque."""

       #Z-95 Scum
        "Binayre Pirate":
           display_name: """Pirata Binayre"""
           text: """<i class = flavor_text>Operando à partir dos Mundos Gêmeos, Talus e Tralus, a gangue de contrabandistas de Kath Scarlet nunca foi reconhecida por boa reputação ou confiabilidade, mesmo por outros criminosos.</i>"""
        "Black Sun Soldier":
           display_name: """Soldado do Sol Negro"""
           text: """<i class = flavor_text>O vasto e influente sindicato criminoso Sol Negro está sempre em busca de pilotos talentosos, contanto que eles não questionem o que precisam fazer para receber seus créditos.</i>"""
        "Nashtah Pup":
           display_name: """Nashtah Pup"""
           text: """Você pode desacoplar apenas por uma desacoplagem de emergência e possui o nome, a iniciativa, a habilidade de piloto e a %CHARGE% da Hound’s Tooth amiga destruída.%LINEBREAK%<strong> Módulo de Fuga: Preparação:</strong: Requer a Hound’s Tooth. Você deve iniciar o jogo acoplado na <strong>Hound’s Tooth</strong>."""
        "Kaa'to Leeachos":
           display_name: """Kaa’to Leeachos"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave amiga em alcance 0-2. Se o fizer, transfira 1 ficha de foco ou desvio da nave escolhida para você."""
        "Bossk (Z-95 Headhunter)":
           display_name: """Bossk"""
           text: """Quando você realizar um ataque primário, após a etapa Neutralizar Resultados, você pode gastar 1 resultado %CRIT% para adicionar 2 resultados %HIT%.%LINEBREAK%<strong>Nave de Persguição:</strong> Após você desacoplar, você pode adquirir uma mira em uma nave que a <strong>Hound’s Tooth</strong> amiga possui mira."""
        "N'dru Suhlak":
           display_name: """N’dru Suhlak"""
           text: """Quando você realizar um ataque primário, se não houver outra nave amiga em alcance 0-2, role 1 dado de ataque adicional."""

      #Gauntlet Scum
        "Shadow Collective Operator":
           display_name: """Operador do Coletivo das Sombras"""
           text: """<i class = flavor_text>Os antigos soldados do Olho da Morte que juraram lealdade a Lorde Maul continuam operando seus versáteis Caça Gauntlet, muitas vezes os utilizando como bombardeiros nas lutas pessoais de Maul.</i>"""       
        "Maul":
           display_name: """Maul"""
           text: """Quando você realizar uma ação %COORDINATE%, se você escolher uma nave com um valor de iniciativa menor que o seu, você pode gastar 1 %FORCE%. Se o fizer, trate a ação como branca e você pode coordenar 1 nave amiga adicional com um valor de iniciativa menor que o seu; cada nave amiga que você coordenar dessa forma recebe 1 ficha de desgaste"""
        "Rook Kast":
           display_name: """Rook Kast"""
           text: """Antes de você engajar, você pode receber 1 ficha de desgaste. Quando você realizar um ataque primário, se você estiver desgastado, você pode mudar 1 de seus resultados %FOCUS% ou em branco para um resultado %HIT%."""

      #Rogue Class Scum
        "Outer Rim Hunter":
           display_name: """Caçador da Orla Exterior"""
           text: """<i class = flavor_text>Devido a sua associação com Cad Bane, o Caça Estelar Classe Rogue passou a ser usado por outros caçadores de recompensas, principalmente aqueles que operam na perigosa Orla Exterior.</i>"""       
        "Nom Lumb (Rogue)":
           display_name: """Nom Lumb"""
           text: """No começo da Fase de Engajamento, você pode escolher 1 nave inimiga em seu %FRONTARC%. Se o fizer, trate sua iniciativa igual a daquela nave até o fim da rodada."""
        "Durge":
           display_name: """Durge"""
           text: """Quando você defender, depois da etapa de Neutralizar Resultados, se houver mais resultado %HIT%/%CRIT% do que seus %SHIELD% ativos, você pode mudar 1 resultado %HIT% para um resultado %CRIT% e cancelar 1 resultado %HIT%."""
        "Cad Bane":
           display_name: """Cad Bane"""
           text: """Depois que você realizar um ataque que acertou, você pode gastar 2 %CHARGE% para transferir 1 de suas fichas laranjas ou vermelhas que não seja uma mira para o defensor."""

                  #ST-70
        "Outer Rim Enforcer":
           display_name: """Executor da Orla Exterior"""
           text: """<i class = flavor_text>Designada como uma nave militar, a Nave de Ataque ST70 é uma nave durável e versátil. Para alguem viajando pela Orla Exterior, esta nave pode ser um transporte, nave de combate, e casa, tudo em um lugar só.</i>"""
        "Guild Bounty Hunter":
           display_name: """Caçador de Recompensas da Guilda"""
           text: """Quando você realizar um ataque em alcance 1-2, você pode gastar 1 %CHARGE% não recursiva de 1 de suas melhorias %ILLICIT% equipadas para mudar 1 resultado %FOCUS% para um resultado %CRIT%"""
        "Q9-0":
           text: """Depois que você completar uma manobra avançada, você pode realizar uma ação %CALCULATE% ou %BARRELROLL%, mesmo se estiver estressado. Se o fizer, receba uma ficha de desgaste."""
        "The Mandalorian":
           display_name: """O Mandaloriano"""
           text: """Quando você defender ou realizar um ataque, se você estiver no %FRONTARC% em alcance 1-2 de 2 ou mais naves inimigas, você pode mudar 1 resultado em branco para um resultado %FOCUS%."""
    #Imperial Pilots
       #TIE/ln
        "Academy Pilot":
           display_name: """Piloto da Academia"""
           text: """<i class = flavor_text>Desenvolvida pela Sienar Fleet Systems e produzida em uma escala assustadora, a rápida e ágil TIE/ln é utilizada pelo Império Galático como seu principal caça estelar.</i>"""
        "Obsidian Squadron Pilot":
           display_name: """Piloto do Esquadrão Obsidiana"""
           text: """<i class = flavor_text>O sistema do Motor Iônico Gêmeo da TIE fighter foi projetado para entregar velocidade, fazendo da TIE/ln uma das mais ágeis naves estelares já produzidas.</i>"""
        "Black Squadron Ace":
           display_name: """Ás do Esquadrão Preto"""
           text: """<i class = flavor_text>O pilotos de TIE/ln de elite do Esquadrão Preto acompanharam Darth Vader em um ataque devastador contra as forças Rebeldes na Batalha de Yavin.</i>"""
        '"Night Beast"':
           display_name: """“Night Beast”"""
           text: """Após você executar completamente uma manobra azul, você pode realizar uma ação %FOCUS%."""
        "Valen Rudor":
           display_name: """Valen Rudor"""
           text: """Após uma nave amiga em alcance 0-1 defender (após o dano ser resolvido, se houver), você pode realizar uma ação."""
        '"Wampa"':
           display_name: """“Wampa”"""
           text: """Quando você realizar um ataque, você pode gastar 1 %CHARGE% para rolar 1 dado de ataque adicional.%LINEBREAK%Após defender, perca 1 %CHARGE%."""
        "Del Meeko":
           display_name: """Del Meeko"""
           text: """Quando uma nave amiga em alcance 0-2 defender de um atacante danificado, o defensor pode rerrolar 1 dado de defesa."""
        "Gideon Hask":
           display_name: """Gideon Hask"""
           text: """Quando você realizar um ataque contra um defensor danificado, role 1 dado de ataque adicional."""
        "Seyn Marana":
           display_name: """Seyn Marana"""
           text: """Quando você realizar um ataque, você pode gastar 1  resultado %CRIT%. Se o fizer, cause 1 carta virada para baixo no defensor, então cancele o restante de seus resultados."""
        '"Mauler" Mithel':
           display_name: """“Mauler” Mithel"""
           text: """Quando você realizar um ataque em alcance de ataque 1, role 1 dado de ataque adicional."""
        '"Scourge" Skutu':
           display_name: """“Scourge” Skutu"""
           text: """Quando você realizar um ataque contra um defensor em seu %BULLSEYEARC%, role 1 dado de ataque adicional."""
        "Iden Versio":
           display_name: """Iden Versio"""
           text: """Antes de um caça TIE/ln amigo em alcance 0-1 sofrer 1 ou mais danos, você pode gastar 1 %CHARGE%. Se o fizer, previna aquele dano."""
        '"Howlrunner"':
           display_name: """“Howlrunner”"""
           text: """Quando uma nave amiga em alcance 0-1 realizar um ataque primário, ela pode rerrolar 1 dado de ataque."""
        '"Backstabber" (BoY)': 
           display_name: """“Backstabber” (BdY)"""
           text: """Quando você realizar um ataque primário, se um Darth Vader ou “Mauler” Mithel amigo estiver em seu %LEFTARC% ou %RIGHTARC% em alcance 0-1, role 1 dado de ataque adicional."""
        '"Dark Curse" (BoY)':
           display_name: """“Dark Curse” (BdY)"""
           text: """Quando você defender, os dados do atacante não podem ser modificados."""
        '"Mauler" Mithel (BoY)':
           display_name: """“Mauler” Mithel (BdY)"""
           text: """Quando você realizar um ataque primário, se um Darth Vader ou  “Backstabber” amigo estiver em seu %LEFTARC% ou %RIGHTARC% em alcance 0-1, role 1 dado de ataque adicional."""
        '"Wampa" (BoY)':
           display_name: """“Wampa” (BdY)"""
           text: """Quando você realizar um ataque você pode gastar 1 %CHARGE% para rolar 1 dado de ataque adicional.%LINEBREAK%Depois que você defender, perca 1 %CHARGE%."""
        "ISB Jingoist":
           display_name: """Extremista do BSI"""
           text: """Antes de você engajar, você pode escolher 1 nave inimiga em seu %FRONTARC% em alcance 0-1. Se você o fizer, essa nave recebe 1 ficha de desgaste ou exaustão a sua escolha a menos que ele decida remover 1 ficha verde."""
        "Magna Tolvan":
           display_name: """Magna Tolvan"""
           text: """Enquanto você possuir 2 fichas de estresse ou menos, você pode realizar ações brancas, mesmo estressado.%LINEBREAK%Depois que você receber uma ficha de estresse, você pode realizar uma ação branca, se possível."""
        "Yrica Quell":
           display_name: """Yrica Quell"""
           text: """Depois que você realizar completamente uma manobra, você pode adquirir uma mira em uma nave inimiga em seu %BULLSEYEARC%."""
        "Moff Gideon":
           display_name: """Moff Gideon"""
           text: """Quando uma nave inimiga em alcance 1-3 defender, antes dos dados de ataque serem rolados, você pode gastar 1 %CHARGE% e escolher uma nave amiga em alcance 0-1 do defensor. Se o fizer, dados de defesa não poderão ser modificados durante este ataque e a nave amiga escolhida recebe 1 ficha de desgaste."""
        "Patrol Leader":
           display_name: """Líder de Patrulha"""
           text: """<i class = flavor_text>Receber o comando de uma VT-49 Decimator é visto como uma promoção considerável para um oficial comum da Marinha Imperial.</i>"""
        "Captain Oicunn":
           display_name: """Capitão Oicunn"""
           text: """Quando você realizar um ataque em alcance 0, trate-o como um ataque em alcance 1.  %LINEBREAK%<i>Errata (Desde a referência de regras 1.4): Habilidade modificada para funcionar com as novas regras básicas</i>"""
        "Morna Kee":
           display_name: """Morna Kee"""
           text: """Durante a Fase Final, você pode gastar 1 %CHARGE% para virar uma das suas fichas de reforço para seu outro arco completo ao invés de removê-la."""
        "Rear Admiral Chiraneau":
           display_name: """Almirante deRetaguarda Chiraneau"""
           text: """Quando você realizar um ataque, se você estiver reforçado e o defensor estiver no %FULLFRONTARC% ou %FULLREARARC% correspondente à sua ficha de reforço, você pode mudar 1 dos seus resultados %FOCUS% para um resultado %CRIT%."""

       #Lambda Shuttle
        "Omicron Group Pilot":
           display_name: """Piloto do Grupo Omicron"""
           text: """<i class = flavor_text>Famosa por seu design de três asas e conjunto de sensores avançados, a transporte classe Lambda desempenha um papel crítico como uma nave leve de utilidade da Marinha Imperial.</i>"""
        "Lieutenant Sai":
           display_name: """Tenente Sai"""
           text: """Após você realizar uma ação %COORDINATE%, se a nave escolhida realizou uma ação presente na sua barra de ações, você pode realizar essa ação."""
        "Captain Kagi":
           display_name: """Capitão Kagi"""
           text: """No início da Fase de Engajamento, você pode escolher 1 ou mais naves amigas em alcance 0-3. Se o fizer, transfira todas as fichas de mira inimigas das naves escolhidas para você."""
        "Colonel Jendon":
           display_name: """Coronel Jendon"""
           text: """No início da Fase de Ativação, você pode gastar 1 %CHARGE%. Se o fizer, quando naves amigas adquirirem miras nessa rodada, elas devem adquirir miras além do alcance 3 ao invés de em alcance 0-3."""

       #Alpha Class
        "Nu Squadron Pilot":
           display_name: """Piloto do Esquadrão Nu"""
           text: """<i class = flavor_text>Com design inspirado por outras naves da Cygnus Spaceworks, a star wing classe Alfa é uma nave versátil designada a unidades especiais da Marinha Imperial que precisam de um caça estelar capaz de ser equipado para executar os mais diversos tipos de missão.</i>"""
        "Rho Squadron Pilot":
           display_name: """Piloto do Esquadrão Rô"""
           text: """<i class = flavor_text>Os pilotos de elite do Esquadrão Rô incitavam o terror contra a Rebelião, usando o efeito devastador tanto da configuração de assalto Xg-1 quanto da carga de arsenal Os-1 da star wing classe Alfa.</i>"""
        "Lieutenant Karsabi":
           display_name: """Tenente Karsabi"""
           text: """Após você receber uma ficha de desarmamento, se você não estiver estressado, você pode receber 1 ficha de estresse para remover 1 ficha de desarmamento."""
        "Major Vynder":
           display_name: """Major Vynder"""
           text: """Quando você defender, se você estiver desarmado, role 1 dado de defesa adicional."""

       #TIE/V1
        "Baron of the Empire":
           display_name: """Barão do Império"""
           text: """<i class = flavor_text>A TIE Advanced v1 da Sienar Fleet Systems é um projeto de caça estelar revolucionário, apresentando motores aprimorados, um lança-mísseis e s-foils dobráveis.</i>"""
        "Inquisitor":
           display_name: """Inquisidor"""
           text: """<i class = flavor_text>Os temidos Inquisidores tinham uma grande autonomia e acesso às tecnologias mais recentes do Império, como o protótipo TIE Advanced v1.</i>"""
        "Fifth Brother":
           display_name: """Quinto Irmão"""
           text: """Quando você realizar um ataque, após a etapa Neutralizar Resultados, se o ataque acertou, você pode gastar 2 %FORCE% para adicionar 1 resultado %CRIT%."""
        "Seventh Sister":
           display_name: """Sétima Irmã"""
           text: """Quando você realizar um ataque primário, antes da etapa Neutralizar Resultados, você pode gastar 2 %FORCE% para cancelar 1 resultado %EVADE%."""
        "Grand Inquisitor":
           display_name: """Grande Inquisidor"""
           text: """Quando você defender em alcance de ataque 1, você pode gastar 1 %FORCE% para impedir o bônus de alcance 1.%LINEBREAK%Quando você realizar um ataque contra um defensor em alcance de ataque 2-3, você pode gastar 1 %FORCE% para aplicar o bônus de alcance 1."""

      #TIE X1
        "Tempest Squadron Pilot":
           display_name: """Piloto do Esquadrão Tempestade"""
           text: """<i class = flavor_text>A TIE Advanced aprimorou o projeto do popular TIE/In ao adicionar escudo, um sistema de armas mais avançado, painéis solares curvos e um hiperpropulsor."""
        "Storm Squadron Ace":
           display_name: """Ás do Esquadrão Tormenta"""
           text: """<i class = flavor_text>A TIE Advanced x1 foi produzida em quantidade limitada, porém os engenheiros da Sienar incorporaram muitas de suas melhores qualidades em seu próximo modelo de TIE: a TIE Interceptor."""
        "Zertik Strom":
           display_name: """Zertik Strom"""
           text: """Durante a Fase Final, você pode gastar uma mira que você adquiriu em uma nave inimiga para expor 1 das cartas de dano dela."""
        "Ved Foslo":
           display_name: """Ved Foslo"""
           text: """Quando você executar uma manobra, você pode executar uma manobra de mesma direção e dificuldade com velocidade 1 maior ou menor."""
        "Maarek Stele":
           display_name: """Maarek Stele"""
           text: """Quando você realizar um ataque, se o defensor for receber uma carta de dano virada para cima, ao invés disso, compre 3 cartas de dano, escolha 1 e descarte o resto."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """Após você realizar uma ação, você pode gastar 1 %FORCE% para realizar uma ação."""
        "Darth Vader (BoY)":
           display_name: """Darth Vader (BdY)"""
           text: """Quando você realizar um ataque, você pode gastar 1 %FORCE% para mudar 1 resultado em branco para um resultado %HIT%."""
        "Juno Eclipse":
           display_name: """Juno Eclipse"""
           text: """Depois de você realizar uma ação, você pode realizar uma ação %BOOST% vermelha."""

       #TIE Aggressor
        "Sienar Specialist":
           display_name: """Especialista Sienar"""
           text: """<i class = flavor_text>Durante o desenvolvimento da TIE aggressor, a Sienar Fleet Systems valorizou mais a sua performance e versatilidade do que o custo-benefício.</i>"""
        "Onyx Squadron Scout":
           display_name: """Batedor do Esquadrão Ônix"""
           text: """<i class = flavor_text>Projetada para batalhas duradouras, a TIE/ag é pilotada principalmente por pilotos de elite treinados para dominar tanto seu armamento exclusivo quanto sua agilidade com eficiência total.</i>"""
        '"Double Edge"':
           display_name: """“Double Edge”"""
           text: """Após realizar um ataque %TURRET% ou %MISSILE% que errou, você pode realizar um ataque bônus usando uma arma diferente."""
        "Lieutenant Kestal":
           display_name: """Tenente Kestal"""
           text: """Quando você realizar um ataque, após o defensor rolar os dados de defesa, você pode gastar 1 ficha de foco para cancelar todos os resultados em branco/%FOCUS% do defensor."""

       #TIE Bomber
        "Scimitar Squadron Pilot":
           display_name: """Piloto do Esq. Cimitarra"""
           text: """<i class = flavor_text>A TIE/sa é excepcionalmente ágil para um bombardeiro, permitindo que ela localize seu alvo enquanto evita danos colaterais excessivos da área ao seu redor."""
        "Gamma Squadron Ace":
           display_name: """Ás do Esquadrão Gama"""
           text: """<i class = flavor_text>Apesar de sacrificar boa parte de sua velocidade e agilidade se comparada com uma TIE/ln, a capacidade de carga aumentada da TIE bomber pode carregar poder de fogo para destruir virtualmente qualquer alvo inimigo.</i> """
        '"Deathfire"':
           display_name: """“Deathfire”"""
           text: """Após você ser destruído, antes de você ser removido, você pode realizar um ataque e soltar ou lançar um dispositivo."""
        "Tomax Bren":
           display_name: """Tomax Bren"""
           text: """Após você realizar uma ação %RELOAD%, você pode recuperar 1 %CHARGE% em uma das suas cartas melhorias %TALENT% equipadas."""
        "Major Rhymer":
           display_name: """Major Rhymer"""
           text: """Quando realizar um ataque %TORPEDO% ou %MISSILE%, você pode aumentar ou diminuir o requisito de alcance em 1, até um limite de 0-3."""
        "Captain Jonus":
           display_name: """Capitão Jonus"""
           text: """Quando uma nave amiga em alcance 0-1 realizar um ataque %TORPEDO% ou %MISSILE%, o atacante pode rerrolar até 2 dados de ataque."""
        
        # TIE Bomber (TBE)
        '"Deathfire" (TBE)':
           display_name: """“Deathfire” (TBE)"""
           text: """Depois que você realizar completamente uma manobra 3-5, se você não tiver soltado ou lançado um dispositivo nessa rodada, você pode gastar 2 %CHARGE% para soltar ou lançar uma bomba usando o gabarito [3 %STRAIGHT%]."""
        "Major Rhymer (TBE)":
           display_name: """Major Rhymer (TBE)"""
           text: """Quando você realizar um ataque %TORPEDO%, se o defensor estiver em seu %BULLSEYEARC%, mude 1 resultado %FOCUS% para um resultado %CRIT%."""
        "Captain Jonus (TBE)":
           display_name: """Capitão Jonus (TBE)"""
           text: """Depois que você soltar ou lançar um dispositivo, receba uma ficha de desvio."""
        "Tomax Bren (TBE)":
           display_name: """Tomax Bren (TBE)"""
           text: """Depois que você realizar uma ação %BARRELROLL%, você pode gastar 2 %CHARGE%. Se você fizer isso, receba uma ficha de foco."""


       #TIE Defender
        "Delta Squadron Pilot":
           display_name: """Piloto do Esq. Delta"""
           text: """<i class = flavor_text>Além de seus lança-mísseis e dos seis canhões laser montados em suas asas, a formidável TIE defender é equipada com escudos defletores e um hiperpropulsor.</i>"""
        "Onyx Squadron Ace":
           display_name: """Ás do Esquadrão Ônix"""
           text: """<i class = flavor_text>A experimental TIE defender desbanca qualquer outro caça estelar contemporâneo, porém seu tamanho, velocidade e capacidade bélica vem acompanhados de um custo à altura de sua tremenda capacidade.</i>"""
        "Captain Dobbs":
           display_name: """Capitão Dobbs"""
           text: """Quando outra nave aliada em alcance 0-1 defender, antes da etapa Neutralizar Resultados, se você estiver no arco de ataque e não estiver ionizado, você pode receber 1 ficha de íon para cancelar 1 resultado %HIT%."""
        "Rexler Brath":
           display_name: """Rexler Brath"""
           text: """Após você realizar um ataque que acerte, se você estiver desviando, exponha 1 das cartas de dano do defensor."""
        "Countess Ryad":
           display_name: """Condessa Ryad"""
           text: """Quando você for executar uma manobra %STRAIGHT%, você pode aumentar a dificuldade da manobra. Se o fizer, execute-a como uma manobra %KTURN%."""
        "Colonel Vessery":
           display_name: """Coronel Vessery"""
           text: """Quando você realizar um ataque contra uma nave mirada, após você rolar os dados de ataque, você pode adquirir uma mira no defensor."""
        "Vult Skerris":
           display_name: """Vult Skerris"""
           text: """<strong>Ação:</strong> Receba 1 ficha de exaustão para recuperar 1 %CHARGE%.%LINEBREAK%Antes de você engajar, você pode gastar 1 %CHARGE% para realizar uma ação."""
        "Darth Vader (TIE Defender)":
           display_name: """Darth Vader"""
           text: """Você não pode gastar %FORCE%, exceto quando atacando. Quando você realizar um ataque, você pode gastar 1 %FORCE% para mudar 1 resultado em branco para um resultado %HIT%."""

       #TIE Heavy
        "Carida Academy Cadet":
           display_name: """Cadete da Academia Carida"""
           text: """<i class = flavor_text>Na Academia Carida, cadetes da Marinha Imperial são ensinados a serem implacáveis e leais, priorizando a vitória acima da vida de seus companheiros.</i>"""
        "Onyx Squadron Sentry":
           display_name: """Sentinela do Esquadrão Ônix"""
           text: """<i class = flavor_text>A TIE/rb heavy, às vezes chamada de “bruta”, é projetada para flexibilidade operacional. Sua armadura pesada e capacidade de transportar um copiloto droide integrado MGK-300 faz dela uma excelente nave de patrulha.</i>"""
        "Lyttan Dree":
           display_name: """Lyttan Dree"""
           text: """Quando uma nave amiga em alcance 0-2 realiza um ataque, se você estiver no %LEFTARC% ou %RIGHTARC% do defensor, o atacante pode rerrolar 1 dado de ataque."""
        '"Rampage"':
           display_name: """“Rampage”"""
           text: """Após você executar uma manobra de velocidade 3-4, você pode escolher uma nave em seu %SINGLETURRETARC% em alcance 0-1. Se o fizer, a nave escolhida recebe 1 ficha de desgaste, ou 2 fichas de desgaste se você estiver danificado."""
        "Flight Leader Ubbel":
           display_name: """Líder de Vôo Ubbel"""
           text: """Depois que uma nave amiga em alcance 0-2 defender, se ela recebeu uma carta de dano, você pode realizar um ataque bônus contra o atacante."""

       #TIE Interceptor
        "Alpha Squadron Pilot":
           display_name: """Piloto do Esquadrão Alfa"""
           text: """<i class = flavor_text>A Sienar Fleet Systems projetou a TIE interceptor com quatro canhões lasers em suas asas, um aumento drástico em seu poder de fogo se comparado com seus antecessores."""
        "Saber Squadron Ace":
           display_name: """Ás do Esq. Sabre"""
           text: """<i class = flavor_text>Liderados pelo Barão Soontir Fel, os pilotos do Esquadrão Sabre estão entre os melhores pilotos do Império. Suas TIE interceptors são marcadas com listras vermelhas para identificar pilotos com pelo menos dez abates confirmados."""
        "Nash Windrider":
           display_text: """Nash Windrider"""
           text: """Durante a Fase de Engajamento, após uma nave pequena amiga em alcance 0-3 ser destruída, se aquela nave não tiver engajado nessa fase, você pode gastar 1 %CHARGE%. Se o fizer, a nave engaja na iniciativa atual."""
        "Lieutenant Lorrir":
           display_text: """Tenente Lorrir"""
           text: """Quando você realizar uma pirueta, você <b>deve</b> usar o gabarito [%BANKLEFT% ou %BANKRIGHT%] ao invés do gabarito [%STRAIGHT%]."""
        "Turr Phennir":
           display_name: """Turr Phennir"""
           text: """Após você realizar um ataque, você pode realizar uma ação %BARRELROLL% ou %BOOST%, mesmo estressado."""
        "Commandant Goran":
           display_text: """Comandante Goran"""
           text: """No começo da Fase de Engajamento, escolha uma nave amiga em alcance 0-3 com uma iniciativa menor que a sua. A nave escolhida recebe 1 ficha de desvio e remove 1 ficha vermelha que não seja estresse.%LINEBREAK%<i>Errata (desde a referência de regras 1.4): habilidade refeita</i>"""
        "Vult Skerris (TIE Interceptor)":
           display_name: """Vult Skerris"""
           text: """<strong>Ação:</strong> Receba 1 ficha de exaustão para recuperar 1 %CHARGE%.%LINEBREAK%Antes de você engajar, você pode gastar 1 %CHARGE% para realizar uma ação."""
        "Gideon Hask (TIE Interceptor)":
           display_name: """Gideon Hask"""
           text: """Quando você realizar um ataque contra um defensor danificado, role 1 dado de ataque adicional."""
        "Ciena Ree":
           display_name: """Ciena Ree"""
           text: """Após você realizar um ataque, se o defensor foi destruído, receba 1 ficha de estresse. Após uma nave amiga em alcance 0-3 ser destruída, remova 1 ficha de estresse."""
        "Soontir Fel":
           display_name: """Soontir Fel"""
           text: """No início da Fase de Engajamento, se houver uma nave inimiga em seu %BULLSEYEARC%, receba 1 ficha de foco."""
        "Second Sister":
           display_name: """Segunda Irmã"""
           text: """Quando você realizar um ataque, depois do passo Neutralizar Resultados, se o ataque tiver acertado, você pode gastar 2 %FORCE%. Se o fizer, mude todos os seus resultados %HIT% para resultados %CRIT%."""
        "Iden Versio (BoY)": 
           display_name: """Iden Versio (BdY)"""
           text: """Antes de uma TIE amiga em alcance 0-1 receber dano, você pode gastar 2 %CHARGE%. Se o fizer, evite 1 dano.%LINEBREAK%<i>Errata (desde a referência de regras 1.4.4): Habilidade de piloto corrigida</i>"""
        "Sigma 4 (BoY)":
           display_name: """Sigma 4 (BdY)"""
           text: """Depois que você realizar uma ação %BARRELROLL%, você pode gastar 1 %CHARGE% para realizar uma ação %BOOST%."""
        "Sigma 5 (BoY)":
           display_name: """Sigma 5 (BdY)"""
           text: """Depois que você realizar um ataque que acertou, você pode gastar 1 %CHARGE% para realizar uma ação %EVADE%."""
        "Sigma 6 (BoY)":
           display_name: """Sigma 6 (BdY)"""
           text: """Depois que você executar completamente uma manobra 3-5, você pode gastar 1 %CHARGE% para realizar uma ação %SLAM%."""
        "Sigma 7 (BoY)":
           display_name: """Sigma 7 (BdY)"""
           text: """Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para travar uma mira em uma nave inimiga em alcance 0-1."""

       #TIE Phantom
        "Imdaar Test Pilot":
           display_name: """Piloto de Testes de Imdaar"""
           text: """<i class = flavor_text>Sendo o principal resultado de uma base de pesquisa escondida em Imdaar Alfa, a TIE phantom alcançou algo que muitos julgavam impossível: um pequeno caça estelar equipado com um dispositivo de camuflagem avançado."""
        "Sigma Squadron Ace":
           display_name: """Ás do Esquadrão Sigma"""
           text: """<i class = flavor_text>Dispondo de um hiperpropulsor e escudos, a TIE phantom também é equipada com cinco canhões laser, garantindo um poder de fogo considerável para um caça Imperial."""
        '"Echo"':
           display_name: """“Echo”"""
           text: """Quando descamuflar, você deve usar o gabarito [2 %BANKLEFT%] ou [2 %BANKRIGHT%] ao invés do gabarito [2 %STRAIGHT%]."""
        '"Whisper"':
           display_name: """“Whisper”"""
           text: """Após você realizar um ataque que acertou, receba 1 ficha de desvio."""

       #TIE Punisher
        "Cutlass Squadron Pilot":
           display_name: """Piloto do Esq. Espada"""
           text: """<i class = flavor_text>O projeto da TIE punisher se desenvolveu em torno do sucesso da TIE bomber, com a adição de escudo, um segundo lançador de bombas e outros três módulos bélicos, cada um equipado com um motor iônico gêmeo.</i>"""
        '"Deathrain"':
           display_name: """“Deathrain”"""
           text: """Após soltar ou lançar um dispositivo, você pode realizar uma ação."""
        '"Redline"':
           display_name: """“Redline”"""
           text: """Você pode ter até 2 miras travadas.%LINEBREAK%Após você realizar uma ação, você pode adquirir uma mira."""

       #TIE Reaper
        "Scarif Base Pilot":
           display_name: """Piloto da Base de Scarif"""
           text: """<i class = flavor_text>A TIE reaper foi desenvolvida para transportar tropas de elite até focos de conflito no campo de batalha, e deslocou notavelmente os temidos death troopers do Diretor Krennic durante a Batalha de Scarif."""
        '"Vizier"':
           display_name: """“Vizier”"""
           text: """Após você se mover usando sua habilidade de nave <b>Ailerons Controlados</b>, você pode realizar uma ação %COORDINATE%. Se o fizer, pule sua etapa Realizar Ação."""
        "Captain Feroph":
           display_name: """Capitão Feroph"""
           text: """Quando você defender, se o atacante não possuir fichas verdes, você pode mudar 1 de seus resultados em branco ou %FOCUS% para um resultado %EVADE%."""
        "Major Vermeil":
           display_name: """Major Vermeil"""
           text: """Quando você realizar um ataque, se o defensor não possuir fichas verdes, você pode mudar 1 de seus resultados em branco ou %FOCUS% para um resultado %HIT%."""

       #TIE Striker
        "Planetary Sentinel":
           display_name: """Sentinela Planetário"""
           text: """<i class = flavor_text>Para proteger suas várias instalações militares, o Império precisa de uma força de defesa rápida e vigilante."""
        "Black Squadron Scout":
           display_name: """Batedor do Esq. Preto"""
           text: """<i class = flavor_text>Estas naves atmosféricas amplamente armadas utilizam suas asas móveis especializadas para obter velocidade e agilidade adicionais."""
        '"Vagabond"':
           display_name: """Vagabond"""
           text: """Após você se mover usando seus <strong>Ailerons Adaptáveis</strong>, se você não estiver estressado, você pode soltar 1 dispositivo."""
        '"Countdown"':
           display_name: """“Countdown”"""
           text: """Quando você defender, após a etapa Neutralizar Resultados, se você não estiver estressado, você pode sofrer 1 %HIT% e receber 1 ficha de estresse. Se o fizer, cancele todos os resultados dos dados."""
        '"Pure Sabacc"':
           display_name: """“Pure Sabacc”"""
           text: """Quando você realizar um ataque, se você possuir 1 ou menos cartas de dano, você pode rolar 1 dado de ataque adicional."""
        '"Duchess"':
           display_name: """“Duchess”"""
           text: """Você pode escolher não usar seus <strong>Ailerons Adaptáveis</strong>.%LINEBREAK%Você pode usar seus <strong>Ailerons Adaptáveis</strong>, mesmo estressado."""

       #Gauntlet Imperial
        "Imperial Super Commando":
           display_name: """Super Soldado Imperial"""
           text: """<i class = flavor_text>Sob a liderança do Vice-Rei Gar Saxon, os guerreiros impiedosos que uma vez serviram Lorde Maul foram transformados em executores da nova ordem. O Caça Gauntlet Mandaloriano continua a servir como transporte de combate preferido por esses Super Soldados."""
        "Gar Saxon":
           display_name: """Gar Saxon"""
           text: """Quando uma unidade amiga em alcance 0-2 realiza um ataque primário, se o atacante estiver no %REARARC% do defensor, você pode gastar 1 %CHARGE%. Se o fizer, o atacante rola 1 dado adicional."""
        "Captain Hark":
           display_name: """Captão Hark"""
           text: """Depois que você revelar uma manobra [0 %STOP%], se você estiver equipado com <strong>Asas Giratórias (Abaixadas)</strong>, você deve, ao invés disso, realizar uma derrapagem [1 %BANKLEFT%] ou [1 %BANKRIGHT%] da mesma dificuldade, você deve virar a carta <strong>Asas Giratórias (Abaixadas)</strong>."""

    #First Order
       #TIE/FO
        "Epsilon Squadron Cadet":
           display_name: """Cadete do Esquadrão Épsilon"""
           text: """<i class = flavor_text>Treinados desde a infância a bordo dos Destróieres Estelares classe Resurgent nos confins do espaço, muitos pilotos de TIE da Primeira Ordem nunca sequer pisaram na superfície de um planeta.</i>"""
        "Zeta Squadron Pilot":
           display_name: """Zeta Squadron Pilot"""
           text: """<i class = flavor_text>Livres da morosa burocracia galáctica, as tecnologias originalmente desenvolvidas para o programa TIE Advanced do Império agora são empregadas em massa nos caças estelares da Primeira Ordem. Como resultado, os pilotos das TIE/fo desfrutam de maiores taxas de sobrevivência que seus antecessores do Império Galático.</i>"""
        "Omega Squadron Ace":
           display_name: """Omega Squadron Ace"""
           text: """<i class = flavor_text>Apenas pilotos que demonstram habilidade excepcional e dedicação inabalável são recompensados com as cobiçadas posições nos esquadrões da Primeira Ordem que realizam missões secretas contra a Nova República durante a Guerra Fria.</i>"""
        "Lieutenant Rivas":
           display_name: """Tenente Rivas"""
           text: """Após uma nave em alcance 1-2 receber uma ficha vermelha ou laranja, se você não tiver uma mira travada nessa nave, você pode adquirir uma mira nela."""
        "TN-3465":
           display_name: """TN-3465"""
           text: """Quando outra nave amiga realizar um ataque, se você estiver em alcance 0-1 do defensor, você pode sofrer 1 dano %CRIT% para mudar 1 dos resultados do atacante para um resultado %CRIT%."""
        '"Longshot"':
           display_name: """“Longshot”"""
           text: """Quando você realizar um ataque primário em alcance de ataque 3, role 1 dado de ataque adicional."""
        '"Muse"':
           display_name: """“Muse”"""
           text: """No início da Fase de Engajamento, você pode escolher uma nave amiga em alcance 0-1. Se o fizer, a nave escolhida remove 1 ficha de estresse."""
        '"Null"':
           display_name: """“Null”"""
           text: """Enquanto não estiver danificado, trate sua iniciativa como se ela fosse 7."""
        '"Static"':
           display_name: """“Static”"""
           text: """Quando você realizar um ataque primário, você pode gastar sua mira que está no defensor e uma ficha de foco para mudar todos os seus resultados para resultados %CRIT%."""
        "Commander Malarus":
           display_name: """Comandante Malarus"""
           text: """No início da Fase de Engajamento, você pode gastar 1 %CHARGE% e receber 1 ficha de estresse. Se o fizer, até o final da rodada, quando você defender ou realizar um ataque, você pode mudar todos os seus resultados %FOCUS% para resultados %EVADE% ou %HIT%."""
        '"Scorch"':
           display_name: """“Scorch”"""
           text: """Quando você realizar um ataque primário, se você não estiver estressado, você pode receber 1 ficha de estresse para rolar 1 dado de ataque adicional."""
        '"Midnight"':
           display_name: """“Midnight”"""
           text: """Quando você defender ou realizar um ataque, se você possuir uma mira na nave inimiga, os dados dela não podem ser modificados."""
        "DT-798":
           display_name: """DT-798"""
           text: """Quando você realizar um ataque primário, se você não estiver desgastado, você pode receber 1 ficha de desgaste para rolar 1 dado adicional"""
        "Lieutenant Galek":
           display_name: """Tenente Galek"""
           text: """Depois que outra nave amiga em alcance 0-2 for destruída, você pode realizar uma ação %COORDINATE%, mesmo se estiver estressado. Quando você coordenar, a nave que você escolher só poderá realizar uma ação se esta ação também estiver na sua barra de ações."""
        "Lin Gaava":
           display_name: """Lin Gaava"""
           text: """<strong>Preparação:</strong> Depois de posicionar as forças, aplique a condição <strong>Preparado para velocidade</strong> a você e mais 2 outras caças TIE/fo ou TIE/sf amigas que não possuam melhorias %MODIFICATION% equipadas."""

       #Upsilon
        "Starkiller Base Pilot":
           display_name: """Starkiller Base Pilot"""
           text: """<i class = flavor_text>A nave de comando classe Ípsilon serve de base de operações para muitos oficiais e agentes sênior da Primeira Ordem. Seus poderosos sensores e equipamentos de comunicação os permitem orquestrar a propagação do terror pela galáxia."""
        "Petty Officer Thanisson":
           display_name: """Suboficial Thanisson"""
           text: """Durante a Fase de Ativação ou de Engajamento, após uma nave em seu %FRONTARC% em alcance 0-2 receber 1 ficha de estresse, você pode gastar 1 %CHARGE%. Se o fizer, a nave que recebeu a ficha de estresse recebe 1 ficha de tração."""
        "Major Stridan":
           display_name: """Major Stridan"""
           text: """Quando você coordenar ou resolver o efeito de uma de suas melhorias, você pode tratar naves amigas em alcance 2-3 como se estivessem em alcance 0 ou 1."""
        "Captain Cardinal":
           display_name: """Capitão Cardinal"""
           text: """Quando uma nave amiga em alcance 1-2 de iniciativa mais baixa que a sua defender ou realizar um ataque, se você tiver ao menos 1 %CHARGE%, ela pode rerrolar 1 resultado %FOCUS%.%LINEBREAK% Após uma nave inimiga em alcance 0-3 ser destruída, perca 1 %CHARGE%."""
        "Lieutenant Tavson":
           display_name: """Tenente Tavson"""
           text: """Após você sofrer dano, você pode gastar 1 %CHARGE% para realizar uma ação."""
        "Lieutenant Dormitz":
           display_name: """Lieutenant Dormitz"""
           text: """<strong>Preparação:</strong> Após você ser posicionado, outras naves amigas pequenas podem ser colocadas em qualquer lugar na área de jogo em alcance 0-2 de você."""

       #TIE/FO Bomber
        "Sienar-Jaemus Test Pilot":
           display_name: """Piloto de Testes da Sienar-Jaemus"""
           text: """<i class = flavor_text>Equipada com quatro canhões laser e sistemas avançados, a TIE/se Bomber é uma nave altamente manobrável que traz uma artilharia devastadora para aqueles que ousam enfrentar a Primeira Ordem.</i>"""
        "First Order Cadet":
           display_name: """Cadete da Primeira Ordem"""
           text: """<i class = flavor_text>Os exercícios com tiros reais da Primeira Ordem têm como objetivo erradicar os fracos, reforçando a máxima que apenas os fortes sobrevivem.</i>"""
        '"Dread"':
           display_name: """“Dread”"""
           text: """Após você recarregar, cada nave no seu %BULLSEYEARC% recebe 1 ficha de exaustão."""
        '"Scorch" (TIE/Se Bomber)':
           display_name: '''"Scorch"'''
           text: """Quando uma nave amiga em alcance 0-1 realizar um ataque primário, ela pode gastar 1 resultado %HIT%. Se a nave amiga o fizer, o defensor recebe 1 ficha de desgaste."""
        '"Breach"':
           display_name: """“Breach”"""           
           text: """Após você executar completamente uma manobra ou realizar uma ação %BOOST%, se você se moveu através de uma nave inimiga, você pode adquirir uma mira nela."""
        '"Grudge"':
           display_name: """“Grudge”""" 
           text: """Quando uma bomba ou mina amiga em alcance 0-2 detonar, cada vez que dados de ataque forem rolados para resolver o efeito dela, você pode rerrolar até 1 desses dados."""
        "Jul Jerjerrod":
           display_name: """Jul Jerjerrod"""
           text: """Depois que você realizar uma ação %BOOST%, você pode gastar 1 %CHARGE% para remover 1 ficha laranja ou vermelha que não seja uma mira."""
      
       #TIE Silencer
        "Sienar-Jaemus Engineer":
           display_name: """Engenheiro da Sienar-Jaemus"""
           text: """<i class = flavor_text>Projetada pela Sienar-Jaemus Fleet Systems como sucessora da renomada TIE Defender, a TIE/vn Silencer incorpora tecnologias de ponta desenvolvidas em laboratórios de pesquisa escondidos nas Regiões Desconhecidas.</i>"""
        "First Order Test Pilot":
           display_name: """Piloto de Testes da Primeira Ordem"""
           text: """<i class = flavor_text>Projetada para altas velocidades e com uma manobrabilidade incrível, a TIE Silencer é devastadora nas mãos daqueles capazes de utilizar seu potencial máximo. Pilotos menos experientes perdem facilmente o controle desta ágil nave.</i>"""
        '"Avenger"':
           display_name: """“Avenger”"""
           text: """Após outra nave amiga ser destruída, você pode realizar uma ação, mesmo se estiver estressado."""
        '"Recoil"':
           display_name: """“Recoil”"""
           text: """Quando você estiver estressado, você pode tratar as naves inimigas em seu %FRONTARC% em alcance 0-1 como se estivessem em seu %BULLSEYEARC%."""
        '"Rush"':
           display_name: """“Rush”"""
           text: """Enquanto você estiver danificado, trate sua iniciativa como se fosse 6."""
        '"Blackout"':
           display_name: """“Blackout”"""
           text: """Quando você realizar um ataque, se o ataque estiver obstruído por um obstáculo, o defensor rola 2 dados de defesa a menos."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """Após você defender, você pode gastar 1 %FORCE% para atribuir a condição <strong>Contemple o Lado Sombrio</strong> ao atacante."""

       #TIE Whisper
        "Red Fury Zealot":
           display_name: """Fanático da Red Fury"""
           text: """<i class = flavor_text>Também chamada de Red Fury, a Legião 709 é encarregada pelo Líder Supremo Kylo Ren em erradicar os dissidentes Posto de Black Spire.</i>"""
        "709th Legion Ace":
           display_name: """Ás da Legião 709"""
           text: """<i class = flavor_text>Comandada pelo Líder Supremo Kylo Ren, a Legião 709 luta sem misericórdia ou remorso para esmagar a Resistência e espalhar o domínio da Primeira Ordem pela galáxia.</i>"""
        "Kylo Ren (TIE Whisper)":
           display_name: """Kylo Ren"""
           text: """Antes de uma nave inimiga em seu %BULLSEYEARC% receber uma carta de dano virada para baixo, você pode gastar 1 %FORCE%. Se o fizer, a carta de dano é atribuída virada para cima."""
        '"Wrath"':
           display_name: """“Wrath”"""
           text: """Após você realizar um ataque %BULLSEYEARC%, se você tiver 1 ou mais fichas laranjas ou vermelhas, exceto mira, você pode realizar um ataque bônus contra um alvo diferente."""
        '"Nightfall"':
           display_name: """“Nightfall”"""
           text: """Após você executar completamente uma manobra ou realizar uma ação %BOOST%, cada nave que você se moveu através recebe 2 fichas de interferência."""
        '"Whirlwind"':
           display_name: """“Whirlwind”"""
           text: """Antes de você engajar, você pode remover qualquer número de fichas de interferência, então você pode receber 1 ficha de foco para cada nave inimiga que tem você no %FRONTARC% dela."""

       #TIE/BA
        "First Order Provocateur":
           display_name: """Provocador da Primeira Ordem"""
           text: """<i class = flavor_text>A visão do Major Vonreg guiou o aprimoramento de projetos consolidados enquanto planejava essa nave única, precisa e letal da Sienar-Jaemus Fleet Systems.</i>"""
        "Major Vonreg":
           display_name: """Major Vonreg"""
           text: """Durante a Fase de Sistema, você pode escolher 1 nave inimiga em seu %BULLSEYEARC%. A nave escolhida recebe 1 ficha de exaustão ou desgaste, à sua escolha."""
        '"Ember"':
           display_name: """“Ember”"""
           text: """Quando você realizar um ataque, se houver uma nave danificada amiga do defensor em alcance 0-1 do defensor, o defensor não pode gastar fichas de foco ou de cálculo."""
        '"Holo"':
           display_name: """“Holo”"""
           text: """No início da Fase de Engajamento, você <b>deve</b> transferir 1 de suas fichas para outra nave amiga em alcance 0-2."""

       #TIE/SF
        "Zeta Squadron Survivor":
           display_name: """Sobrevivente do Esquadrão Zeta"""
           text: """<i class = flavor_text>Humilhados por seu fracasso, o restante dos pilotos da Base Starkiller estão ávidos para mostrar seu valor perseguindo a Resistência."""
        "Omega Squadron Expert":
           display_name: """Perito do Esquadrão Ômega"""
           text: """<i class = flavor_text>A TIE/sf é um caça estelar versátil com arsenal especializado e sistemas experimentais para operações de longo alcance das Forças Especiais da Primeira Ordem."""
        "Captain Phasma":
           display_name: """Capitã Phasma"""
           text: """Quando você defender, após a etapa Neutralizar Resultados, outra nave amiga em alcance 0-1 <b>deve</b> sofrer 1 dano %HIT%/%CRIT% para cancelar 1 resultado correspondente."""
        '"Backdraft"':
           display_name: """“Backdraft”"""
           text: """Quando você realizar um ataque primário %SINGLETURRETARC%, se o defensor estiver em seu %REARARC%, role 1 dado adicional."""
        "Lieutenant LeHuse":
           display_name: """Tenente LeHuse"""
           text: """Quando você realizar um ataque, você pode gastar a mira que outra nave amiga tenha no defensor para rerrolar qualquer número dos seus resultados."""
        '"Quickdraw"':
           display_name: """“Quickdraw”"""
           text: """Após você perder um escudo, você pode gastar 1 %CHARGE%. Se o fizer, você pode realizar um ataque primário bônus."""

       #XI-Class
        "First Order Courier":
           display_name: """Mensageiro da Primeira Ordem"""
           text: """<i class = flavor_text>A Primeira Ordem se esconde em várias bases escondidas em cantos obscuros da galáxia, espalhando lentamente sua influência insidiosa."""
        "Agent Terex":
           display_name: """Agente Terex"""
           text: """<strong>Preparação:</strong> Após posicionar as forças, escolha qualquer número de suas melhorias %ILLICIT% equipadas e as equipe em caças TIE/fo ou TIE/sf amigos. Cada nave pode receber apenas 1 %ILLICIT% dessa maneira.%LINEBREAK%<strong>Fim de Jogo:</strong> Retorne todas as melhorias %ILLICIT% para suas naves originais."""
        "Gideon Hask (Xi Shuttle)":
           display_name: """Gideon Hask"""
           text: """Quando você ou uma nave amiga pequena em alcance 0-2 realizar um ataque primário contra um defensor danificado, se o atacante rolou 2 ou menos dados de ataque, ele pode receber 1 ficha de desgaste para rolar 1 dado de ataque adicional."""
        "Commander Malarus (Xi Shuttle)":
           display_name: """Comandante Malarus"""
           text: """Quando uma nave amiga em alcance 0-2 realizar um ataque primário, antes da etapa Modificar Dados, se ela tiver 1 ou mais resultados em branco, a nave <b>deve</b> receber 1 ficha de desgaste para rerrolar 1 resultado em branco, se possível. %LINEBREAK% <i>Errata (RR: 1.2.0 [06/14/2021]): Adicionado janela de habilidade para impedir que jogadores evitem a parte ruim da habilidade</i>"""
        "Agent Tierny":
           display_name: """Agente Tierny"""
           text: """<strong>Preparação:</strong> Depois de posicionar forças, você <b>deve</b> aplicar a condição <strong>Confiança Quebrada</strong> a uma nave inimiga."""

     #Republic
       #ARC-170 Republic
        "104th Battalion Pilot":
           display_name: """Piloto do Batalhão 104"""
           text: """<i class = flavor_text>A ARC-170 foi projetada como um caça de escolta pesado com lasers dianteiras e traseiras potentes, artilharia e um astromecânico para navegação. Esquadrões dessa poderosa nave reforçavam a presença da Marinha da República em qualquer batalha que participassem.</i>"""
        "Squad Seven Veteran":
           display_name: """Veterano do Esquadrão Sete"""
           text: """<i class = flavor_text>A Esquadrilha Clone Sete serviu como parte da Frota Open Circle sob o comando de Generais Jedi lendários como Plo Koon e Obi-Wan Kenobi e conquistou a glória em batalhas como a de Coruscant e Cato Neimoidia.</i>"""
        '"Jag"':
           display_name: """“Jag”"""
           text: """Após uma nave amiga em alcance 1-2 em seu %LEFTARC% ou %RIGHTARC% defender, você pode adquirir uma mira no atacante."""
        '"Odd Ball" (ARC-170)':
           display_name: """“Odd Ball”"""
           text: """Após você executar completamente uma manobra vermelha ou realizar uma ação vermelha, se houver uma nave inimiga em seu %BULLSEYEARC%, você pode adquirir uma mira nessa nave."""
        '"Wolffe"':
           display_name: """“Wolffe”"""
           text: """Quando você realizar um ataque primário %FRONTARC%, você pode gastar 1 %CHARGE% para rerrolar 1 dado de ataque.%LINEBREAK%Quando você realizar um ataque primário %REARARC%, você pode recuperar 1 %CHARGE% para rolar 1 dado de ataque adicional."""
        '"Sinker"':
           display_name: """“Sinker”"""
           text: """Quando uma nave amiga em alcance 1-2 em seu %LEFTARC% ou %RIGHTARC% realizar um ataque primário, ela pode rerrolar 1 dado de ataque."""
        '"Odd Ball" (SoC)':
           display_name: """“Odd Ball” (CdC)"""
           text: """Depois que você realizar completamente uma manobra vermelha ou realizar uma ação vermelha, você pode escolher uma nave amiga em alcance 0-3 e uma nave inimiga em alcance 0-1. A nave amiga escolhida adquire uma mira na nave inimiga."""
        '"Wolffe" (SoC)':
           display_name: """“Wolffe” (CdC)"""
           text: """Quando você realizar um ataque primário %FRONTARC%, você pode gastar 1 %CHARGE% para rerolar 1 dado de ataque.%LINEBREAK%Quando você realizar um ataque primário %REARARC%, você pode recuperar 1 %CHARGE% para rolar 1 dado de ataque adicional."""
        '"Jag" (SoC)':
           display_name: """“Jag” (CdC)"""
           text: """Depois que uma nave amiga em alcance 0-2 em seu %LEFTARC% ou %RIGHTARC% realiza um ataque, se você não estiver desgastado, você pode adquirir uma mira no defensor."""

       #Delta-7
        "Jedi Knight":
           display_name: """Cavaleiro Jedi"""
           text: """<i class = flavor_text>Quando as Guerras Clônicas começaram, os Cavaleiros Jedi se uniram em prol da preservação da República, assumindo o comando de legiões de soldados clones e os liderando em batalha.</i>"""
        "Barriss Offee":
           display_name: """Barriss Offee"""
           text: """Quando uma nave amiga em alcance 0-2 realizar um ataque, se o defensor estiver no %BULLSEYEARC% do atacante, você pode gastar 1 %FORCE% para mudar 1 resultado %FOCUS% para um resultado %HIT% ou 1 resultado %HIT% para um resultado %CRIT%."""
        "Luminara Unduli":
           display_name: """Luminara Unduli"""
           text: """Quando uma nave amiga em alcance 0-2 defender, se ela não estiver no %BULLSEYEARC% do atacante, você pode gastar 1 %FORCE%. Se o fizer, mude 1 resultado %CRIT% para um resultado %HIT% ou 1 resultado %HIT% para um resultado %FOCUS%."""
        "Saesee Tiin":
           display_name: """Saesee Tiin"""
           text: """Após uma nave amiga em alcance 0-2 revelar o disco dela, você pode gastar 1 %FORCE%. Se o fizer, coloque o disco dela em outra manobra de mesma velocidade e dificuldade."""
        "Ahsoka Tano":
           display_name: """Ahsoka Tano"""
           text: """Após você executar completamente uma manobra, você pode escolher uma nave amiga em alcance 0-1 e gastar 1 %FORCE%. A nave escolhida pode fazer uma ação, mesmo estressada."""
        "Plo Koon":
           display_name: """Plo Koon"""
           text: """No início da Fase de Engajamento, você pode gastar 1 %FORCE% e escolher outra nave amiga em alcance 0-2. Se o fizer, você pode transferir 1 ficha verde para a nave escolhida ou transferir 1 ficha laranja da nave escolhida para você."""
        "Mace Windu":
           display_name: """Mace Windu"""
           text: """Após você executar completamente uma manobra vermelha, recupere 1 %FORCE%."""
        "Obi-Wan Kenobi":
           display_name: """Obi-Wan Kenobi"""
           text: """Após uma nave amiga em alcance 0-2 gastar uma ficha de foco, você pode gastar 1 %FORCE%. Se o fizer, a nave amiga recebe 1 ficha de foco."""
        "Anakin Skywalker":
           display_name: """Anakin Skywalker"""
           text: """Após você executar completamente uma manobra, se houver uma nave inimiga em seu %FRONTARC% em alcance 0-1 ou em seu %BULLSEYEARC%, você pode gastar 1 %FORCE% para remover 1 ficha de estresse."""
        "Adi Gallia":
           display_name: """Adi Gallia"""
           text: """Quando você se defender de um ataque em alcance 1, você pode gastar 1 %FORCE%. Se o fizer, o atacante não pode aplicar o bônus de alcance.%LINEBREAK%Quando você realizar um ataque contra um defensor em alcance 3, você pode gastar 1 %FORCE%. Se o fizer, o defensor não pode aplicar o bônus de alcance."""

       #Delta-7b
        "Jedi Knight (Delta-7b)":
           display_name: """Cavaleiro Jedi"""
           text: """<i class = flavor_text>Quando as Guerras Clônicas começaram, os Cavaleiros Jedi se uniram em prol da preservação da República, assumindo o comando de legiões de soldados clones e os liderando em batalha.</i>"""
        "Barriss Offee (Delta-7b)":
           display_name: """Barriss Offee"""
           text: """Quando uma nave amiga em alcance 0-2 realizar um ataque, se o defensor estiver no %BULLSEYEARC% do atacante, você pode gastar 1 %FORCE% para mudar 1 resultado %FOCUS% para um resultado %HIT% ou 1 resultado %HIT% para um resultado %CRIT%."""
        "Luminara Unduli (Delta-7b)":
           display_name: """Luminara Unduli"""
           text: """Quando uma nave amiga em alcance 0-2 defender, se ela não estiver no %BULLSEYEARC% do atacante, você pode gastar 1 %FORCE%. Se o fizer, mude 1 resultado %CRIT% para um resultado %HIT% ou 1 resultado %HIT% para um resultado %FOCUS%."""
        "Saesee Tiin (Delta-7b)":
           display_name: """Saesee Tiin"""
           text: """Após uma nave amiga em alcance 0-2 revelar o disco dela, você pode gastar 1 %FORCE%. Se o fizer, coloque o disco dela em outra manobra de mesma velocidade e dificuldade."""
        "Ahsoka Tano (Delta-7b)":
           display_name: """Ahsoka Tano"""
           text: """Após você executar completamente uma manobra, você pode escolher uma nave amiga em alcance 0-1 e gastar 1 %FORCE%. A nave escolhida pode fazer uma ação, mesmo estressada."""
        "Plo Koon (Delta-7b)":
           display_name: """Plo Koon"""
           text: """No início da Fase de Engajamento, você pode gastar 1 %FORCE% e escolher outra nave amiga em alcance 0-2. Se o fizer, você pode transferir 1 ficha verde para a nave escolhida ou transferir 1 ficha laranja da nave escolhida para você."""
        "Mace Windu (Delta-7b)":
           display_name: """Mace Windu"""
           text: """Após você executar completamente uma manobra vermelha, recupere 1 %FORCE%."""
        "Obi-Wan Kenobi (Delta-7b)":
           display_name: """Obi-Wan Kenobi"""
           text: """Após uma nave amiga em alcance 0-2 gastar uma ficha de foco, você pode gastar 1 %FORCE%. Se o fizer, a nave amiga recebe 1 ficha de foco."""
        "Anakin Skywalker (Delta-7b)":
           display_name: """Anakin Skywalker"""
           text: """Após você executar completamente uma manobra, se houver uma nave inimiga em seu %FRONTARC% em alcance 0-1 ou em seu %BULLSEYEARC%, você pode gastar 1 %FORCE% para remover 1 ficha de estresse."""
        "Adi Gallia (Delta-7B)":
           display_name: """Adi Gallia"""
           text: """Quando você se defender de um ataque em alcance 1, você pode gastar 1 %FORCE%. Se o fizer, o atacante não pode aplicar o bônus de alcance.%LINEBREAK%Quando você realizar um ataque contra um defensor em alcance 3, você pode gastar 1 %FORCE%. Se o fizer, o defensor não pode aplicar o bônus de alcance."""

       #ETA-2
        "Jedi General":
           display_name: """General Jedi"""
           text: """<i class = flavor_text>À medida que as Guerras Clônicas afetam as fileiras da Ordem Jedi, aqueles que permanecem devem assumir responsabilidades ainda maiores no Grande Exército da República.</i>"""
        "Yoda":
           display_name: """Yoda"""
           text: """Após outra nave amiga em alcance 0-3 gastar 1 ou mais %FORCE%, você pode gastar 1 %FORCE%. Se o fizer, a nave amiga recupera 1 %FORCE%."""
        "Shaak Ti":
           display_name: """Shaak Ti"""
           text: """No início da Fase Final, você pode gastar qualquer número de %FORCE% para escolher a mesma quantidade de naves em alcance 0-2. Cada nave escolhida não remove 1 ficha de foco ou desvio durante esta Fase Final."""
        "Aayla Secura":
           display_name: """Aayla Secura"""
           text: """Quando uma nave inimiga em seu %FRONTARC% em alcance 0-1 realizar um ataque, o defensor pode mudar 1 resultado em branco para um resultado %FOCUS%."""
        "Obi-Wan Kenobi (Eta-2)":
           display_name: """Obi-Wan Kenobi"""
           text: """Após você ou uma nave amiga <b>Anakin Skywalker</b> em alcance 0-3 realizar uma manobra, se houver mais naves inimigas do que outras naves amigas em alcance 0-1 da nave, você pode gastar 1 %FORCE%. Se o fizer, a nave recebe 1 ficha de foco."""
        "Anakin Skywalker (Eta-2)":
           display_name: """Anakin Skywalker"""
           text: """Após você ou uma nave amiga <b>Obi-Wan Kenobi</b> em alcance 0-3 ralizar uma manobra, se houver mais naves inimigas do que outras naves amigas em alcance 0-1 da nave, você pode gastar 1 %FORCE%. Se o fizer, a nave remove 1 ficha vermelha à sua escolha."""
        "Kit Fisto":
           display_name: """Kit Fisto"""
           text: """Quando outra nave amiga defender, se o atacante estiver no %BULLSEYEARC% dela, você pode gastar 1 %FORCE% para mudar 1 dos resultados em branco do defensor para um resultado %FOCUS%."""
        "Obi-Wan Kenobi (SoC)":
           display_name: """Obi-Wan Kenobi (CdC)"""
           text: """Depois que você ou uma nave amiga <b>Anakin Skywalker</b> em alcance 0-3 realiza completamente uma manobra, se houver mais naves inimigas do que outras naves amigas em alcance 0-1 dessa nave, você pode gastar 1 %FORCE%. Se você fizer isso, essa nave pode realizar uma ação %BOOST%."""
        "Shaak Ti (SoC)":
           display_name: """Shaak Ti (CdC)"""
           text: """No começo da Fase Final, você pode realizar uma ação %COORDINATE% roxa, mesmo se estiver estressado.%LINEBREAK%Depois que você realizar uma ação %COORDINATE%, se a nave escolhida possuir a a habilidade de nave  <b>Nascido para Isso</b>, você pode coordenar 1 nave adicional."""

       #LAAT
        "212th Battalion Pilot":
           display_name: """Piloto do Batalhão 212"""
           text: """<i class = flavor_text>Capaz de funcionar em tanto em ataques atmosféricos quanto em batalhas espaciais, a nave LAAT/I transporta tropas da República para as frentes de batalha em planetas sitiados pelos Separatistas.</i>"""
        '"Hawk"':
           display_name: """“Hawk”"""
           text: """No início da Fase Final, cada nave amiga em alcance 0-1 que tem uma manobra revelada de velocidade 3-5 pode receber 1 ficha de desgaste para realizar uma ação %BARRELROLL% ou %BOOST%."""
        '"Hound"':
           display_name: """“Hound”"""
           text: """Após uma nave amiga pequena em seu %SINGLETURRETARC% receber uma ficha de exaustão ou desgaste, se você não tiver fichas do mesmo tipo, você pode transferir a ficha para você."""
        '"Warthog"':
           display_name: """“Warthog”"""
           text: """Após você ou uma nave amiga não limitada em alcance 0-2 ser destruída durante a Fase de Engajamento, a nave não é removida até o final da fase."""
        '"Sicko"':
           display_name: """“Sicko”"""
           text: """Depois que você realizar uma manobra básica, você pode atribuir a condição <strong>Manobra Nauseante</strong> a você mesmo."""

       #Naboo
        "Bravo Flight Officer":
           display_name: """Oficial do Esquadrão Bravo"""
           text: """<i class = flavor_text>Os pilotos voluntários da Força Segurança Real de Naboo são dedicados a proteger as pessoas e os ideais de seu mundo natal e confiam em sua Rainha para enviá-los para a batalha apenas quando todas as outras opções falharem.</i>"""
        "Padmé Amidala":
           display_name: """Padmé Amidala"""
           text: """Quando uma nave inimiga em seu %FRONTARC% defender ou realizar um ataque, a nave inimiga pode modificar apenas 1 resultado %FOCUS% (outros resultados ainda podem ser modificados)."""
        "Anakin Skywalker (N-1 Starfighter)":
           display_name: """Anakin Skywalker"""
           text: """Antes de você revelar sua manobra, você pode gastar 1 %FORCE% para realizar uma pirueta (isso não é uma ação)."""
        "Ric Olié":
           display_name: """Ric Olié"""
           text: """Quando você defender ou realizar um ataque primário, se a velocidade da sua manobra revelada for maior que a da nave inimiga, role 1 dado adicional."""
        "Dineé Ellberger":
           display_name: """Dineé Ellberger"""
           text: """Quando você defender ou realizar um ataque, se a velocidade da sua manobra revelada for a mesma que a da nave inimiga, os dados da nave inimiga não podem ser modificados."""
        "Naboo Handmaiden":
           display_name: """Serva de Naboo"""
           text: """<strong>Preparação:</strong> Após posicionar as forças, atribua a condição <b>Chamariz</b> para 1 outra nave amiga que não seja <strong>Serva de Naboo.</strong>"""
        "Gavyn Sykes":
           display_name: """Gavyn Sykes"""
           text: """Quando você defender ou realizar um ataque, se a velocidade da sua manobra revelada for maior do que a da nave inimiga, você pode rerolar seus resultados em branco."""

       #V-19
        "Gold Squadron Trooper":
           display_name: """Soldado do Esquadrão Ouro"""
           text: """<i class = flavor_text>O caça estelar V-19 Torrent foi projetado como um escolta leve para os ágeis interceptadores Delta-7 pilotados pelos Cavaleiros Jedi e possui um perfil de voo único para refletir essa função.</i>"""
        "Blue Squadron Protector":
           display_name: """Protetor do Esquadrão Azul"""
           text: """<i class = flavor_text>Os pilotos clones de elite do Esquadrão Azul são treinados para pilotar seus V-19 em conjunto com Jedi e frequentemente apoiar comandantes famosos como Anakin Skywalker e Ahsoka Tano.</i>"""
        '"Tucker"':
           display_name: """“Tucker”"""
           text: """Após uma nave amiga em alcance 1-2 realizar um ataque contra uma nave inimiga em seu %FRONTARC%, você pode realizar uma ação %FOCUS%."""
        '"Axe"':
           display_name: """“Axe”"""
           text: """Após você defender ou realizar um ataque, você pode escolher uma nave amiga em alcance 1-2 em seu %LEFTARC% ou %RIGHTARC%. Se o fizer, transfira uma ficha verde para a nave escolhida."""
        '"Swoop"':
           display_name: """“Swoop”"""
           text: """Após uma nave amiga pequena ou média executar completamente uma manobra de velocidade 3-4, se ela estiver em alcance 0-1, ela pode realizar uma ação %BOOST% vermelha."""
        '"Kickback"':
           display_name: """“Kickback”"""
           text: """Após você realizar uma ação %BARRELROLL%, você pode realizar uma ação %LOCK% vermelha."""
        '"Odd Ball"':
           display_name: """“Odd Ball”"""
           text: """Após você executar completamente uma manobra vermelha ou realizar uma ação vermelha, se houver uma nave inimiga em seu %BULLSEYEARC%, você pode adquirir uma mira nessa nave."""
        '"Slammer"':
           display_name: """“Slammer”"""
           text: """Depois que você realizar uma manobra, você pode gastar 2 %CHARGE% para realizar uma ação %SLAM%, mesmo se estiver estressado."""
        '"Axe" (SoC)':
           display_name: """“Axe” (SoC)"""
           text: """Depois que você realizar um ataque, você pode escolher outra nave amiga com a habilidade <strong>Nascido para Isso</strong> em alcance 0-2 em seu %LEFTARC% ou %RIGHTARC%. A nave escolhida trava uma mira no defensor."""
        '"Kickback" (SoC)':
           display_name: """“Kickback” (SoC)"""
           text: """Depois que você realizar uma ação %BARRELROLL%, você pode realizar uma ação %LOCK% vermelha. Se você o fizer, antes de realizar a ação %LOCK%, você pode receber 1 ficha de desgaste para tratar a ação como branca."""

       #V-Wing
        "Loyalist Volunteer":
           display_name: """Voluntário Leal"""
           text: """<i class = flavor_text>A V-wing Classe Nimbus Alpha-3 da Kuat Systems Engineering é a nave escolhida por pilotos de caças clones e não clones. As técnicas pioneiras para produção de seus motores de íons precisos seria crucial no desenvolvimento da série TIE pela Sienar Fleet Systems.</i>"""
        "Shadow Squadron Escort":
           display_name: """Escolta do Esquadrão Sombra"""
           text: """<i class = flavor_text>Nos meses finais das Guerras Clônicas, as formações de clones de elite realizam missões críticas para o futuro da República, como a proteção do transporte pessoal do Supremo Chanceler Palpatine.</i>"""
        "Wilhuff Tarkin":
           display_name: """Wilhuff Tarkin"""
           text: """Durante a Fase de Sistema, você pode escolher um objeto no qual você possui uma mira em alcance 1-3. Outra nave amiga em alcance 1-3 pode adquirir uma mira no objeto escolhido."""
        '"Klick"':
           display_name: """“Klick”"""
           text: """Quando uma nave na qual você possui uma mira em alcance 1-3 defender ou realizar um ataque, você pode gastar 1 %CHARGE% para previnir que o bônus de alcance seja aplicado."""
        '"Contrail"':
           text: """Quando você defender ou realizar um ataque, se a direção da sua manobra revelada for a mesma da nave inimiga, você pode mudar 1 dos resultados %FOCUS% da nave inimiga para um resultado em branco."""
        '"Odd Ball" (V-wing)':
           display_name: """“Odd Ball”"""
           text: """Após você executar completamente uma manobra vermelha ou realizar uma ação vermelha, se houver uma nave inimiga em seu %BULLSEYEARC%, você pode adquirir uma mira nessa nave."""
        '"Contrail" (SoC)':
           display_name: """“Contrail” (SoC)"""
           text: """Quando você defender ou realizar um ataque se a direção da sua manobra revelada for igual a da nave inimiga, você pode mudar um dos resultados %FOCUS% da nave inimiga para um resultado em branco."""
        '"Klick" (SoC)':
           display_name: """“Klick” (SoC)"""
           text: """Quando uma nave que você tenha mira em alcance 1-3 defender ou realizar um ataque, você pode gastar 1 %CHARGE% para evitar que bônus de alcance sejam aplicados."""

       #Y-wing Republic
        "Shadow Squadron Veteran":
           display_name: """Veterano do Esquadrão Sombra"""
           text: """<i class = flavor_text>A V-wing Classe Nimbus Alpha-3 da Kuat Systems Engineering é a nave escolhida por pilotos de caças clones e não clones. As técnicas pioneiras para produção de seus motores de íons precisos seria crucial no desenvolvimento da série TIE pela Sienar Fleet Systems.</i>"""
        "Red Squadron Bomber":
           display_name: """Bombardeiro do Esquadrão Vermelho"""
           text: """<i class = flavor_text>Na batalha de Geonosis, o Esquadrão Vermelho forneceram apoio vital às naves LAAT destacadas para assegurar a área.</i>"""
        '"Goji"':
           display_name: """“Goji”"""
           text: """Quando uma nave amiga em alcance 0-3 defender, ela pode rolar 1 dado de defesa adicional para cada bomba amiga em alcance 0-1 dela.%LINEBREAK% <i>Errata (desde RR 1.1.0): Removido "ou mina"</i>"""
        '"Broadside"':
           display_name: """“Broadside”"""
           text: """Quando você realizar um ataque %SINGLETURRETARC%, se seu indicador %SINGLETURRETARC% estiver em seu %LEFTARC% ou %RIGHTARC%, você pode mudar 1 resultado em branco para um resultado %FOCUS%."""
        '"Matchstick"':
           display_name: """“Matchstick”"""
           text: """Quando você realizar um ataque primário ou %SINGLETURRETARC%, você pode rerrolar 1 dado de ataque para cada ficha vermelha que você tem."""
        '"Odd Ball" (Y-Wing)':
           display_name: """“Odd Ball”"""
           text: """Após você executar completamente uma manobra vermelha ou realizar uma ação vermelha, se houver uma nave inimiga em seu %BULLSEYEARC%, você pode adquirir uma mira nessa nave."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """No início da Fase de Engajamento, se houver uma nave inimiga em seu %REARARC%, receba 1 ficha de cálculo."""
        "Anakin Skywalker (Y-Wing)":
           display_name: """Anakin Skywalker"""
           text: """Após você executar completamente uma manobra, se houver uma nave inimiga em seu %FRONTARC% em alcance 0-1 ou em seu %BULLSEYEARC%, você pode gastar 1 %FORCE% para remover 1 ficha de estresse."""

       #Z-95 Clone
        "7th Sky Corps Pilot":
           display_name: """Piloto da 7ª Sky Corps."""
           text: """<i class = flavor_text>O caça estelar Z-95 ganhou respeito pela sua adaptabilidade e resistência, e o modelo da República para soldados clones foi adaptado para atender as habilidades únicas de seus pilotos.</i>"""
        '"Killer"':
           display_name: """“Killer”"""
           text: """Quando você realiza um ataque, se o defensor possuir 2 ou menos de casco restante, você pode rolar 1 dado de ataque adicional."""
        '"Drift"':
           display_name: """“Drift”"""
           text: """Quando uma nave amiga em alcance 0-1 realiza um ataque, se você possuir exatamente 1 ficha vermelha que não seja mira ou exatamente 1 ficha laranja, essa nave pode rerolar 1 dado de ataque."""
        '"Boost"':
           display_name: """“Boost”"""
           text: """No começo da Fase de Engajamento, se houver uma nave amiga em alcance 0-1 cuja manobra revelada seja azul, você pode realizar uma ação %BOOST%."""
        '"Stub"':
           display_name: """“Stub”"""
           text: """Quando você defender, se a velocidade da sua manobra revelada for par, role 1 dado de defesa adicional. Quando você realizar um ataque primário, se a velocidade da sua manobra revelada for ímpar, role 1 dado de ataque adicional."""
        '"Hawk" (Z-95)':
           display_name: """“Hawk”"""
           text: """No começo da Fase Final, cada nave amiga em alcance 0-1 que tenha revelado uma manobra 3-5 pode receber 1 ficha de desgaste para realizar uma ação %BOOST% ou %BARRELROLL%."""
        '"Slider"':
           display_name: """“Slider”"""
           text: """Quando você revelar uma manobra [2 %BANKLEFT%] ou [2 %BANKRIGHT%], você pode gastar 2 %CHARGE% para executar essa manobra como uma derrapagem."""
        '"Warthog" (Z-95)':
           display_name: """“Warthog”"""
           text: """Depois que você ou uma nave amiga não limitada em alcance 0-2 for destruída durante a Fase de Engajamento, essa nave não é removida até o fim dessa fase."""
        '"Knack"':
           display_name: """“Knack”"""
           text: """Depois que você for destruído, você pode escolher uma nave amiga não limitada em alcance 0-2 e atribuir a ela uma de suas melhorias %TALENT% equipada.%LINEBREAK%<strong>Fim do Jogo:</strong> Devolva todas as melhorias %TALENT% para suas naves originais"""
        "Reaper Squadron Scout":
           display_name: """Reaper Squadron Scout"""
           text: """<i class = flavor_text>Apesar da reputação pouco glamurosa da Z-95 Clone, o Esquadrão Reaper se tornou lendário pela sua habilidade com o caça em combates distantes, como a batalha sobre Castilon.</i>"""

       #Gauntlet Republic
        "Bo-Katan Kryze (Republic)":
           display_name: """Bo-Katan Kryze"""
           text: """Depois que você realizar completamente uma manobra, você pode receber 1 ficha de exaustão para escolher um objeto em seu %FRONTARC% em alcance 1-2. Se o fizer, outra nave amiga pode realizar uma ação %LOCK% para mirar neste objeto."""
        "Nite Owl Liberator":
           display_name: """Liberador das Corujas Noturnas"""
           text: """<i class = flavor_text>Segundo Bo-Katan Dryze, alguns antigos membros do Olho da Morte rejeitaram o direito de Maul de liderar Mandalore e, relutantes, fizeram uma aliança com a República. Os Caças Gauntlet das Corujas Noturnas são essenciais para montar a invasão que irá liberar seu planeta.</i>"""

     #Resistance
       #RZ-2 A-wing
        "Blue Squadron Recruit":
           display_name: """Recruta do Esquadrão Azul"""
           text: """<i class = flavor_text>Muitas crianças por toda a galáxia cresceram ouvindo histórias de atos heroicos realizados durante a Guerra Civil Galáctica, e muitos aprenderam a voar nas mesmas cabines em que seus pais lutaram contra o Império.</i>"""
        "Green Squadron Expert":
           display_name: """Green Squadron Expert"""
           text: """<i class = flavor_text>Anos de modificações de batalha foram padronizadas no projeto da RZ-2, mas os pilotos mais ousados enxergam a confiabilidade avançada da nave como um desafio para testar ainda mais os limites de sua performance.</i>"""
        "Merl Cobben":
           display_name: """Merl Cobben"""
           text: """Quando uma nave amiga em alcance 0-2 realizar um ataque primário, se você estiver no %BULLSEYEARC% do defensor, o defensor rola 1 dado de defesa a menos."""
        "Seftin Vanik":
           display_name: """Seftin Vanik"""
           text: """Após você realizar uma ação %BOOST%, você pode transferir 1 ficha de desvio para uma nave amiga em alcance 1."""
        "Suralinda Javos":
           display_name: """Suralinda Javos"""
           text: """Após você executar parcialmente uma manobra, você pode receber 1 ficha de desgaste para rotacionar 90º ou 180º."""
        "Wrobie Tyce":
           display_name: """Wrobie Tyce"""
           text: """Após você defender em alcance de ataque 1, se o atacante modificou os próprios dados, o atacante recebe 1 ficha de desgaste."""
        "Zizi Tlo":
           display_name: """Zizi Tlo"""
           text: """Após você defender ou realizar um ataque, você pode gastar 1 %CHARGE% para receber 1 ficha de foco ou desvio."""
        "Ronith Blario":
           display_name: """Ronith Blario"""
           text: """Quando você defender ou realizar um ataque, se a nave inimiga está dentro do %SINGLETURRETARC% de outra nave amiga, você pode gastar 1 ficha de foco dessa nave amiga para mudar 1 dos seus resultados %FOCUS% para um resultado %HIT% ou %EVADE%."""
        "L'ulo L'ampar":
           display_name: """L'ulo L'ampar"""
           text: """Quando você defender ou realizar um ataque primário, se estiver estressado, você <b>deve</b> rolar 1 dado de defesa a menos ou 1 dado de ataque adicional."""
        "Tallissan Lintra":
           display_name: """Tallissan Lintra"""
           text: """Quando uma nave inimiga em seu %SINGLETURRETARC% realizar um ataque, você pode gastar 1 %CHARGE%. Se o fizer, o defensor rola 1 dado adicional."""
        "Greer Sonnel":
           display_name: """Greer Sonnel"""
           text: """Após você executar completamente uma manobra, você pode rotacionar seu %SINGLETURRETARC%."""
        "Zari Bangel":
           display_name: """Zari Bangel"""
           text: """Você não pula a etapa Realizar Ação após você executar parcialmente uma manobra."""

       #Fireball
        "Colossus Station Mechanic":
           display_name: """Mecânico da Estação Colossus"""
           text: """<i class = flavor_text>Alguns pilotos ambiciosos e talentosos começam suas carreiras na corrida em equipes de solo, trabalhando sem parar para manter naves desmanteladas no céu de mundos distantes como Castilon.</i>"""
        "Jarek Yeager":
           display_name: """Jarek Yeager"""
           text: """Enquanto você tiver 2 fichas de estresse ou menos , se você estiver danificado, você pode executar manobras básicas vermelhas mesmo estressado. Se você estiver criticamente danificado, você pode executar manobras avançadas mesmo estressado."""
        "R1-J5":
           display_name: """R1-J5"""
           text: """Antes que você exponha 1 de suas cartas de dano, você pode, ao invés disso, olhar suas cartas de dano viradas para baixo, escolher 1 e expor a carta escolhida."""
        "Kazuda Xiono":
           display_name: """Kazuda Xiono"""
           text: """Quando você defender ou realizar um ataque primário, se a iniciativa da nave inimiga for maior que o número de cartas de dano que você tem, você pode rolar 1 dado adicional."""

       #MG-100
        "Cobalt Squadron Bomber":
           display_name: """Bombardeiro do Esquadrão Cobalto"""
           text: """<i class = flavor_text>Com seus porões carregados de bombas de prótons ou de suprimentos de emergência, a tripulação das StarFortresses do Esquadrão Cobalto dedicam suas vidas para fazer a diferença na galáxia.</i>"""
        "Cat":
           display_name: """Cat"""
           text: """Quando você realizar um ataque primário, se o defensor estiver em alcance 0-1 de pelo menos 1 dispositivo amigo, role 1 dado adicional."""
        "Vennie":
           display_name: """Vennie"""
           text: """Quando você defender, se o atacante estiver no %SINGLETURRETARC% de uma nave amiga, você pode adicionar 1 resultado %FOCUS% à sua rolagem."""
        "Ben Teene":
           display_name: """Ben Teene"""
           text: """Após você realizar um ataque, se o defensor estiver em seu %SINGLETURRETARC%, atribua a condição <strong>Aturdido</strong> ao defensor."""
        "Edon Kappehl":
           display_name: """Edon Kappehl"""
           text: """Após você executar completamente uma manobra azul ou branca, se você não soltou nem lançou um dispositivo nesta rodada, você pode soltar 1 dispositivo."""
        "Finch Dallow":
           display_name: """Finch Dallow"""
           text: """Quando você for soltar uma bomba, em vez disso, você pode colocá-la na área de jogo tocando sua nave."""
        "Paige Tico":
           display_name: """Paige Tico"""
           text: """Após você soltar um dispositivo, você pode gastar 1 %CHARGE% para soltar um dispositivo adicional."""

       #Transport POD
        "BB-8":
           display_name: """BB-8"""
           text: """Durante a Fase de Sistema, você pode realizar uma ação %BARRELROLL% ou %BOOST% vermelha. %LINEBREAK% <i>Errata (desde RR 1.4.2): Alterado o momento do efeito para Fase de Sistema</i>"""
        "Vi Moradi":
           display_name: """Vi Moradi"""
           text: """<strong>Preparação:</strong> Após posicionar as forças, atribua a condição <b>Informação Comprometedora</b> a 1 nave inimiga."""
        "Finn":
           display_name: """Finn"""
           text: """Quando você defender ou realizar um ataque, você pode adicionar 1 resultado em branco, ou, ao invés disso, você pode receber 1 ficha de desgaste para adicionar 1 resultado f."""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """Quando você defender ou realizar um ataque, você pode rerrolar até 1 dos seus resultados para cada outra nave amiga no arco de ataque."""

       #Resistance Transport
        "Logistics Division Pilot":
           display_name: """Piloto da Divisão de Logística"""
           text: """<i class = flavor_text>Sem o suporte da Nova República, membros da Resistência frequentemente trabalham dobrado como pilotos de transporte ou mecânicos, colocando suas habilidades e conhecimento técnico em uso na luta contra a Primeira Ordem.</i>"""
        "Pammich Nerro Goode":
           display_name: """Pammich Nerro Goode"""
           text: """Enquanto você tiver 2 ou menos fichas de estresse, você pode executar manobras vermelhas mesmo estressado."""
        "Cova Nell":
           display_name: """Cova Nell"""
           text: """Quando você defender ou realizar um ataque primário, se a sua manobra revelada for vermelha, role 1 dado adicional."""
        "Nodin Chavdri":
           display_name: """Nodin Chavdri"""
           text: """Após você coordenar ou ser coordenado, se você tiver 2 ou menos fichas de estresse, você pode realizar 1 ação de sua barra de ações como uma ação vermelha, mesmo estressado."""
        "Taka Jamoreesa":
           display_name: """Taka Jamoreesa"""
           text: """Depois que você interferir, você <b>deve</b> aplicar 1 ficha de interferência em outra nave em alcance 0-1 da nave interferida, se possível."""

      #X-wing T-70
        "Blue Squadron Rookie":
           display_name: """Novato do Esquadrão Azul"""
           text: """<i class = flavor_text>A X-wing T-70 da Incom-FreiTek foi projetada visando aperfeiçoar ainda mais a flexibilidade tática da venerável T-65. Seu soquete avançado de droide é compatível com uma grande variedade de astromecânicos, e seus encaixes modulares de armas permitem que seu arsenal seja adaptado para missões específicas.</i>"""
        "Red Squadron Expert":
           display_name: """Perito do Esquadrão Vermelho"""
           text: """<i class = flavor_text>Apesar da maior parte do Corpo de Caças Estelares da Resistência ser composta de jovens voluntários da Nova República, seus pelotões são reforçados por veteranos da Guerra Civil Galáctica determinados a concluir a tarefa que começaram décadas atrás.</i>"""
        "Black Squadron Ace (T-70)":
           display_name: """Ás do Esquadrão Preto"""
           text: """<i class = flavor_text>Durante a Guerra Fria, o Esquadrão Preto de Poe Dameron realizou audaciosas operações secretas contra a Primeira Ordem resistindo aos tratados promulgados pelo Senado da Nova República.</i>"""
        "Jaycris Tubbs":
           display_name: """Jaycris Tubbs"""
           text: """Após você executar completamente uma manobra azul, você pode escolher uma nave amiga em alcance 0-1. Se o fizer, a nave escolhida remove 1 ficha de estresse."""
        "Poe Dameron (HoH)":
           display_name: "Poe Dameron (AdE)"
           text: """Após uma nave amiga em alcance 0-2 realizar uma ação durante a ativação dela, você pode gastar 2 %CHARGE%. Se o fizer, a nave que realizou a ação pode realizar uma ação branca, tratando-a como vermelha."""
        "Temmin Wexley (HoH)":
           display_name: "Temmin Wexley (AdE)"
           text: """No início da Fase de Engajamento, cada X-wing T-70 amiga em alcance 0-3 pode receber 1 ficha de desgaste para virar sua melhoria %CONFIGURATION% equipada. Se a nave o fizer, ela ganha 1 ficha de cálculo."""
        "C'ai Threnalli":
           display_name: """C'ai Threnalli"""
           text: """Após você executar completamente uma manobra, se você se moveu através de uma nave amiga, você pode realizar uma ação %EVADE%."""
        "Nimi Chireen":
           display_name: """Nimi Chireen"""
           text: """Quando você realizar um ataque, se a iniciativa do defensor for maior que a sua, você pode mudar 1 resultado em branco para um resultado %FOCUS%."""
        "Jessika Pava":
           display_name: """Jessika Pava"""
           text: """Quando você defender ou realizar um ataque, você pode gastar 1 %CHARGE% ou 1 %CHARGE% não recursiva de sua melhoria %ASTROMECH% equipada para rerrolar até 1 de seus dados para cada outra nave amiga em alcance 0-1."""
        "Joph Seastriker":
           display_name: """Joph Seastriker"""
           text: """Após você perder 1 escudo, receba 1 ficha de desvio."""
        "Kare Kun":
           display_name: """Kare Kun"""
           text: """Quando você impulsionar, você pode usar o gabarito [1 %TURNLEFT%] ou [1 %TURNRIGHT%]."""
        "Lieutenant Bastian":
           display_name: """Tenente Bastian"""
           text: """Após uma nave em alcance 1-2 receber uma carta de dano, você pode adquirir uma mira nela."""
        "Temmin Wexley":
           display_name: """Temmin Wexley"""
           text: """Após você executar completamente uma manobra de velocidade 2-4, você pode realizar uma ação %BOOST%."""
        "Ello Asty":
           display_name: """Ello Asty"""
           text: """Após você revelar uma manobra Curva Tallon [%TROLLLEFT% ou %TROLLRIGHT%] vermelha, se você tiver 2 ou menos fichas de estresse, trate essa manobra como se ela fosse branca."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """Após você receber uma ficha de estresse, se houver uma nave inimiga em seu %FRONTARC% em alcance 0-1, você pode remover essa ficha de estresse."""
        "Poe Dameron":
           display_name: """Poe Dameron"""
           text: """Após você realizar uma ação, você pode gastar 1 %CHARGE% para realizar uma ação branca, tratando-a como vermelha."""
        "Venisa Doza":
           display_name: """Venisa Doza"""
           text: """Quando você realizar um ataque %TORPEDO% ou %MISSILE%, você pode tratar o requisito %FRONTARC% como %REARARC% para esse ataque. Se você o fizer, trate o requisito de alcance como 1-2."""
        "Zay Versio":
           display_name: """Zay Versio"""
           text: """Quando você defender, se o atacante estiver danificado, você pode rerolar 1 dado de defesa."""

      #YT-1300 Resistance
        "Resistance Sympathizer":
           display_name: """Simpatizante da Resistência"""
           text: """<i class = flavor_text>Após testemunharem o Cataclisma de Hosnian, alguns espaçadores ajudaram voluntariamente a Resistência utilizando quaisquer naves que tinham.</i>"""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca"""
           text: """Após uma nave amiga em alcance 0-3 ser destruída, antes da nave ser removida, você pode realizar um ação. Então, você pode realizar um ataque bônus.%LINEBREAK%<i><strong>Nota:</strong>A frase "antes da nave ser removida" não está impressa na carta, mas estava no construtor oficial.</i>"""
        "Han Solo (Resistance)":
           display_name: """Han Solo"""
           text: """<strong>Preparação:</strong> Você consegue ser posicionado em qualquer lugar da área de jogo além de alcance 3 de naves inimigas."""
        "Rey":
           display_name: """Rey"""
           text: """Quando você defender ou realizar um ataque, se a nave inimiga estiver em seu %FRONTARC%, você pode gastar 1 %FORCE% para mudar 1 de seus resultados em branco para um resultado %EVADE% ou %HIT%."""
        "Lando Calrissian (Resistance)":
           display_name: """Lando Calrissian"""
           text: """Depois que você realizar completamente uma manobra vermelha ou realizar uma ação vermelha, você pode gastar qualquer quantidade de %CHARGE% para escolher a mesma quantidade de naves amigas em alcance 0-2. As naves escolhidas podem realizar uma ação mesmo se estiverem estressadas."""
        "Poe Dameron (YT-1300)":
           display_name: """Poe Dameron"""
           text: """Antes de você realizar uma manobra, você pode gastar 1 %CHARGE%. Se você o fizer, ignore obstáculos durante essa manobra.%LINEBREAK%Depois que você realizar completamente uma manobra, você pode gastar 2 %CHARGE% para realizar uma ação %BOOST% branca ou uma ação %BARRELROLL% vermelha. Então, se você realizou uma ação %BARRELROLL% vermelha, exponha 1 carta de dano, se possível."""

       #Y-wing Resistance
        "New Republic Patrol":
           display_name: """Patrulha da Nova República"""
           text: """<i class = flavor_text>Projetada para personalizações, a Y-wing BTA-NR2 é utilizada por várias organizações militares em toda a galáxia para diferentes funções, de naves de policiamento a bombardeiros de guerra.</i>"""
        "Kijimi Spice Runner":
           display_name: """Contrabandista de Kijimi"""
           text: """<i class = flavor_text>Liderados por Zorii Bliss, os Contrabandistas de Especiarias de Kijimi deixaram de lado suas vidas mercenárias para enfrentar a Ordem Final na Batalha de Exogol.</i>"""
        "Corus Kapellim":
           display_name: """Corus Kapellim"""
           text: """Antes de você engajar, você pode escolher 1 nave em seu arco de tiro em alcance 0-1. Se o fizer, transfira 1 ficha verde da nave escolhida para você."""
        "C'ai Threnalli (Y-Wing)":
           display_name: """C'ai Threnalli"""
           text: """Após você executar completamente uma manobra, se você se moveu através de uma nave amiga, você pode realizar uma ação %EVADE%."""
        "Lega Fossang":
           display_name: """Lega Fossang"""
           text: """Quando você realizar um ataque primário ou %TURRET%, você pode rerrolar 1 dado de ataque para cada dispositivo aliado ou nave amiga calculando no arco de ataque."""
        "Shasa Zaro":
           display_name: """Shasa Zaro"""
           text: """Após você defender, você pode escolher uma nave amiga em seu %FULLREARARC% em alcance 0-2 e 1 de suas fichas verdes. Se o fizer, a nave escolhida ganha uma ficha correspondente."""
        "Teza Nasz":
           display_name: """Teza Nasz"""
           text: """Quando uma nave amiga em alcance 0-2 realizar um ataque, se o defensor tiver uma nave amiga do atacante em cada um de seus arcos laterais (%LEFTARC% e %RIGHTARC%), o atacante pode rerrolar 1 dado de ataque."""
        "Wilsa Teshlo":
           display_name: """Wilsa Teshlo"""
           text: """Após você realizar um ataque, se o defensor recebeu uma carta de dano virada para cima, o defensor recebe 1 ficha de desgaste a menos que o defensor escolha 1 %CHARGE% não recursiva de 1 de suas melhorias equipadas e perca a %CHARGE% escolhida."""
        "Aftab Ackbar":
           display_name: """Aftab Ackbar"""
           text: """Após você executar completamente uma manobra básica vermelha ou realizar uma ação vermelha, se você tiver exatamente 1 ficha de estresse, você pode ganhar 1 ficha de desgaste para remover a ficha de estresse."""
        "Zorii Bliss":
           display_name: """Zorii Bliss"""
           text: """Após uma nave em alcance 1 realizar uma ação durante sua etapa Realizar Ação, se a ação realizada estiver em sua barra de ações, você pode gastar 1 %CHARGE% para realizar a ação, tratando-a como vermelha."""

    #Separatist
        #Belbulab
        "Feethan Ottraw Autopilot":
           display_name: """Autopiloto da Feethan Ottraw"""
           text: """<i class = flavor_text>Ao contrário dos caças mais descartáveis que também construiu para os Separatistas, a Feethan Ottraw Scalable Assemblies projetou o Belbullab-22 com uma sólida mistura de poder de fogo, durabilidade e velocidade.</i>"""
        "Skakoan Ace":
           display_name: """Ás dos Skakoan"""
           text: """<i class = flavor_text>Com seus poderosos motores, devastadores canhões de laser triplo e alta personalização, o Belbullab-22 é a nave escolhida por vários pilotos de elite da Aliança Separatista, incluindo o infame General Grievous.</i>"""
        "Wat Tambor":
           display_name: """Wat Tambor"""
           text: """Quando você realizar um ataque primário, você pode rerrolar 1 dado de ataque para cada nave amiga calculando em alcance 1 do defensor."""
        "General Grievous":
           display_name: """General Grievous"""
           text: """Quando você realizar um ataque primário, se você não estiver no arco de tiro do defensor, você pode rerrolar até 2 dados de ataque."""
        "Captain Sear":
           display_name: """Capitão Sear"""
           text: """Quando uma nave amiga em alcance 0-3 realizar um ataque primário, se o defensor estiver no %BULLSEYEARC% do atacante, antes da etapa Neutralizar Resultados, a nave amiga pode gastar 1 ficha de cálculo para cancelar 1 resultado %EVADE%."""

       #Hyena
        "Techno Union Bomber":
           display_name: """Bombardeiro da União Tecnológica"""
           text: """<i class = flavor_text>A Baktoid Armor Workshop desenvolveu a Hyena como uma nave de combate compatível com as táticas de enxame dos Vultures da Federação do Comércio.</i>"""
        "Separatist Bomber":
           display_name: """Bombardeiro Separatista"""
           text: """<i class = flavor_text>Os exércitos droides dos Separatistas são insensíveis ao sofrimento dos civis e não se esforçam para limitar os danos colaterais.</i>"""
        "Baktoid Prototype":
           display_name: """Protótipo da Baktoid"""
           text: """Quando você realizar um ataque especial, se uma nave amiga com a habilidade de nave <b>Cálculos Interligados</b> tiver uma mira no defensor, você pode ignorar o requisito %FOCUS%, %CALCULATE% ou %LOCK% do ataque."""
        "Bombardment Drone":
           display_name: """Drone de Bombardeio"""
           text: """Se você for soltar um dispositivo, você pode, ao invés disso, lançá-lo, usando o mesmo gabarito."""
        "DBS-404":
           display_name: """DBS-404"""
           text: """Quando você realiza um ataque em alcance 1, você <B>deve</B> rolar 1 dado de ataque adicional.  Após o ataque acertar, sofra 1 dano %CRIT%.%LINEBREAK%<i>Errata (Desde RR 1.4): Alterada a restrição da habilidade"</i>"""
        "DBS-32C":
           display_name: """DBS-32C"""
           text: """No início da Fase de Engajamento, você pode gastar 1 ficha de cálculo para realizar uma ação %COORDINATE%. Você não pode coordenar naves que não possuem a habilidade de nave <b>Cálculos Interligados</b>."""
        "Baktoid Prototype (SoC)":
           display_name: """Baktoid Prototype (CdC)"""
           text: """Quando você realizar um ataque especial, se uma nave amiga com a habilidade de nave <b>Cálculos Interligados</b> tiver uma mira no defensor, você pode ignorar o requisito %FOCUS%, %CALCULATE% ou %LOCK% do ataque."""
        "DBS-32C (SoC)":
           display_name: """DBS-32C (CdC)"""
           text: """Depois que você realizar uma ação %CALCULATE%, você pode gastar 1 %CHARGE% para realizar uma ação %JAM%."""
        "DBS-404 (SoC)":
           display_name: """DBS-404 (CdC)"""
           text: """Quando você realiza um ataque em alcance 1, você <B>deve</B> rolar 1 dado de ataque adicional.  Após o ataque acertar, sofra 1 dano %CRIT%."""

       #Vulture
        "Trade Federation Drone":
           display_name: """Drone da Federação do Comércio"""
           text: """<i class = flavor_text>A Federação do Comércio usou incontáveis droides Vulture na batalha de Naboo e continua a usar esses caças econômicos nas Guerras Clônicas.</i>"""
        "Separatist Drone":
           display_name: """Drone Separatista"""
           text: """<i class = flavor_text>Com a escalada das Guerras Clônicas, a Aliança Separatista continua a desenvolver a tecnologia de caças estelares droides, assim como os droides táticos que os comandam.</i>"""
        "Haor Chall Prototype":
           display_name: """Haor Chall Prototype"""
           text: """Após uma nave inimiga em seu %BULLSEYEARC% em alcance 0-2 declarar outra nave amiga como defensora, você pode realizar uma ação %CALCULATE% ou %LOCK%."""
        "DFS-081":
           display_name: """DFS-081"""
           text: """Quando uma nave amiga em alcance 0-1 defender, ela pode gastar 1 ficha de cálculo para mudar todos os resultados %CRIT% para resultados %HIT%."""
        "DFS-311":
           display_name: """DFS-311"""
           text: """No início da Fase de Engajamento, você pode transferir 1 de suas fichas de cálculo para outra nave amiga em alcance 0-3."""
        "Precise Hunter":
           display_name: """Caçador Preciso"""
           text: """Quando você realizar um ataque, se o defensor estiver em seu %BULLSEYEARC%, você pode rerrolar 1 resultado em branco."""
        "The Iron Assembler":
           display_name: """O Montador de Ferro"""
           text: """Depois que uma nave amiga em alcance 0-1 pula sua fase de realizar manobra, você pode gastar 1 %CHARGE%. Se você fizer isso, e houver um asteróide ou nuvem de destroços em alcance 0 dela, essa nave pode consertar 1 dano."""
        "Kelrodo-Ai Holdout":
           display_name: """Resistência de Kelrodo-Ai"""
           text: """Depois que você for destruído, você pode transferir cada uma de suas miras e fichas verdes para outra <b>Resistência de Kelrodo-Ai</b> em alcance 0-3."""
        "DFS-081 (SoC)":
           display_name: """DFS-081 (CdC)"""
           text: """Quando estiver defendendo, você pode gastar 1 %CHARGE% e 1 ficha de cálculo para cancelar 1 resultado %CRIT%."""
        "DFS-311 (SoC)":
           display_name: """DFS-311 (CdC)"""
           text: """No início da Fase de Engajamento, você pode transferir 1 de suas fichas de cálculo para outra nave amiga em alcance 0-3."""
        "Haor Chall Prototype (SoC)":
           display_name: """Protótipo de Haor Chall (CdC)"""
           text: """Depois que uma nave inimiga em seu %BULLSEYEARC% declarar um objeto no cenário ou outra nave amiga como o defensor, você pode realizar uma ação %CALCULATE% ou %LOCK%."""

       #Nantex
        "Sun Fac":
           display_name: """Sun Fac"""
           text: """Quando você realizar um ataque primário, se o defensor estiver tracionado, role 1 dado de ataque adicional."""
        "Stalgasin Hive Guard":
           display_name: """Guarda da Colméia de Stalgasin"""
           text: """<i class = flavor_text>Projetados para a fisiologia única dos pilotos Geonosianos, os caças estelares classe Nantex são capazes de manobras que destruiriam a maioria das naves - e pilotos.</i>"""
        "Petranaki Arena Ace":
           display_name: """Ás da Arena Petranaki"""
           text: """<i class = flavor_text>A Arena Petranaki é uma construção enorme em Geonosis que foi um local chave na primeira batalha das Guerras Clônicas.</i>"""
        "Berwer Kret":
           display_name: """Berwer Kret"""
           text: """Após você realizar um ataque que acerte, cada nave amiga com a em sua barra de ação %CALCULATE% com uma mira no defensor pode realizar uma ação %CALCULATE% vermelha."""
        "Chertek":
           display_name: """Chertek"""
           text: """Quando você realizar um ataque primário, se o defendor estiver tracionado, você pode rerrolar até 2 dados de ataque."""
        "Gorgol":
           display_name: """Gorgol"""
           text: """Durante a Fase de Sistema, você pode receber 1 ficha de desarmamento e escolher uma nave amiga em alcance 1-2. Se o fizer, a nave escolhida recebe 1 ficha de tração, então repara 1 de suas cartas de dano viradas para cima com o atributo Nave."""

       #Tri-Fighter
        "Separatist Interceptor":
           display_name: """Interceptador Separatista"""
           text: """<i class = flavor_text>Introduzidos no final das Guerras Clônicas, esses caças estelares agressivos e os destrutivos buzz droides que carregam representam uma séria ameaça até mesmo para pilotos Jedi veteranos.</i>"""
        "Colicoid Interceptor":
           display_name: """Interceptador Colicóide"""
           text: """<i class = flavor_text>Projetados pela Colicoid Creation Nest e fabricados pela Phlac-Arphocc Automata Industries, os processadores heurísticos dos Droid Tri-Fighters permitem que essas naves letais analisem e se adaptem às táticas inimigas em voo.</i>"""
        "Phlac-Arphocc Prototype":
           display_name: """Protótipo da Phlac-Arphocc"""
           text: """Durante a Fase de Sistema, você pode gastar uma mira sua que está em uma nave para olhar o disco daquela nave."""
        "Fearsome Predator":
           display_name: """Predador Terrível"""
           text: """<strong>Preparação:</strong> Após posicionar as forças, atribua a condição <b>Presa Assustada</b> a 1 nave inimiga."""
        "DIS-347":
           display_name: """DIS-347"""
           text: """No início da Fase de Engajamento, você pode adquirir uma mira em um objeto em alcance 1-3 que está com uma mira amiga."""
        "DIS-T81":
           display_name: """DIS-T81"""
           text: """Quando você defender ou realizar um ataque, você pode gastar 1 ficha de cálculo de uma nave amiga no arco de tiro da nave inimiga para mudar 1 resultado %FOCUS% para um resultado %EVADE% ou %HIT%."""
        "DIS-347 (SoC)":
           display_name: """DIS-347 (CdC)"""
           text: """No início da Fase de Engajamento, você pode adquirir uma mira em um objeto em alcance 1-3 que está com uma mira amiga."""
        "DIS-T81 (SoC)":
           display_name: """DIS-T81 (CdC)"""
           text: """Quando você defender ou realizar um ataque, você pode rerolar qualquer quantidade de dados. Então, se você estava defendendo, receba 1 ficha de desgaste para cada dado que foi rerolado. Ou então, se você estava atacando, recebe 1 ficha de exaustão para cada dado que foi rerolado."""
        "Phlac-Arphocc Prototype (SoC)":
           display_name: """Protótipo da Phlac-Arphocc (CdC)"""
           text: """No começo da Fase de Engajamento, se houver uma nave inimiga em seu %BULLSEYEARC%, receba uma ficha de cálculo."""
        "Volan Das":
           display_name: """Volan Das"""
           text: """Depois que você executar completamente uma manobra vermelha, você pode escolher uma nave inimiga em alcance 1. A nave escolhida recebe 1 ficha de desgaste e você você remover 1 ficha de estresse."""

       #Infiltrator
        "Dark Courier":
           display_name: """Dark Courier"""
           text: """<i class = flavor_text>A nave chamada Scimitar foi muito modificada, equipada com tecnologias de camuflagem e dispositivos de vigilância avançados para missões de infiltração e assassinato.</i>"""
        "0-66":
           display_name: """0-66"""
           text: """Após você defender, você pode gastar 1 ficha de cálculo para realizar uma ação."""
        "Count Dooku":
           display_name: """Conde Dookan"""
           text: """Após você defender, se o atacante estiver em seu arco de tiro, você pode gastar 1 %FORCE% para remover 1 de suas fichas azuis ou vermelhas.%LINEBREAK%Após você realizar um ataque que acerte, você pode gastar 1 %FORCE% para realizar uma ação."""
        "Count Dooku (SoC)":
           display_name: """Conde Dookan (CdC)"""
           text: """Durante um ataque, antes que uma nave em alcance 0-2 role dados de ataque ou dados de defesa, se todas as suas %FORCE% estiverem ativas, você pode gastar 1 %FORCE% e nomear um resultado, se a rolagem não contiver o resultado nomeado, a nave deve mudar 1 dado para aquele resultado."""
        "Darth Maul":
           display_name: """Darth Maul"""
           text: """Após você realizar um ataque, você pode gastar 2 %FORCE% para realizar um ataque primário bônus contra um alvo diferente. Se o seu ataque errou, você pode realizar o ataque primário bônus, ao invés disso, contra o mesmo alvo."""

       #HMP
        "Baktoid Drone":
           display_name: """Drone da Baktoid"""
           text: """<i class = flavor_text>Um desenvolvimento tardio na guerra para a Confederação dos Sistemas Independentes, a nave de ataque droide usa repulsores especializados para bombardear agilmente alvos e destacar precisamente droides de batalha.</i>"""
        "Separatist Predator":
           display_name: """Predador Separatista"""
           text: """<i class = flavor_text>Armado com artilharia e protegido por escudos, uma nave de ataque droide pode devastar formações de infantaria da República e caças estelares com a mesma proficiência.</i>"""
        "DGS-286":
           display_name: """DGS-286"""
           text: """Antes de você engajar, você pode escolher outra nave amiga em alcance 0-1. A nave escolhida transfere 1 ficha de cálculo para você."""
        "DGS-047":
           display_name: """DGS-047"""
           text: """Após você realizar um ataque, se o defensor estiver em seu %FRONTARC%, você pode adquirir uma mira nele. Se o defensor estiver em seu %BULLSEYEARC%, ele recebe 1 ficha de desgaste."""
        "Geonosian Prototype":
           display_name: """Protótipo Geonosiano"""
           text: """Quando você realizar um ataque %MISSILE% ou %CANNON%, você pode remover 1 ficha de tração do defensor para rerrolar até 2 dados de ataque."""
        "Onderon Oppressor":
           display_name: """Opressor de Onderon"""
           text: """Após você realizar uma pirueta ou derrapagem, se você estiver estressado, receba 1 ficha de cálculo."""

       #Firespray Separatist
        "Separatist Racketeer":
           display_name: """Extorsionário Separatista"""
           text: """<i class = flavor_text>Encorajados pelo amargo impasse dos Cercos da Orla Exterior, grupos mercenários de toda a galáxia aproveitam a oportunidade para lucrar com a guerra em andamento.</i>"""
        "Boba Fett (Separatist)":
           display_name: """Boba Fett"""
           text: """Quando você defender, se não houver outras naves amigas em alcance 0-2, você pode mudar 1 dos seus resultados em branco para um resultado %FOCUS%."""
        "Zam Wesell":
           display_name: """Zam Wesell"""
           text: """<strong>Preparação:</strong> Perca 2 %CHARGE%.%LINEBREAK% Durante a Fase de Sistema, você pode atribuir uma das suas condições secretas virada para baixo a você mesmo: <strong>%LINEBREAK%Você Deveria Me Agradecer %LINEBREAK%É Melhor Falar Sério. </strong>"""
        "Jango Fett":
           display_name: """Jango Fett"""
           text: """Quando você defender ou realizar um ataque, se a dificuldade da sua manobra revelada for menor que a da nave inimiga, você pode mudar 1 dos resultados %FOCUS% da nave inimiga para um resultado em branco."""
        "Aurra Sing":
           display_name: """Aurra Sing"""
           text: """Antes de você engajar, você pode gastar 1 %FORCE% para escolher 2 naves inimigas em alcance 0-1. Transfira qualquer quantidade de fichas entre essas duas naves."""

       #Rogue-Class Separatist
        "Cad Bane (Separatist)":
           display_name: """Cad Bane"""
           text: """Durante a Fase de Engajamento, depois que outra nave em alcance 0-3 for destruída, você pode gastar 1 %CHARGE% para realizar uma ação, mesmo se estiver estressado"""
        "Durge (Separatist)":
           display_name: """Durge"""
           text: """Quando você seria destruído, você pode gastar 1 %CHARGE% para revelar todas as suas cartas viradas para baixo. Se você fizer isso, descarte todos os <strong>Tiro Direto!</strong> e cada carta do tipo <strong>Piloto</strong>, e então conserte todas suas cartas de dano viradas para cima."""
        "IG-101":
           display_name: """IG-101"""
           text: """No começo da Fase de Sistema, você pode consertar 1 carta de dano virada para cima."""
        "IG-102":
           display_name: """IG-102"""
           text: """Quando você estiver defendendo, se a iniciativa do atacante for maior ou igual a sua, você pode mudar 1 resultado em branco para um resultado %FOCUS%."""
        "IG-111":
           display_name: """IG-111"""
           text: """Depois que você realizar um ataque que errou, você pode escolher 1 nave inimiga em seu %BULLSEYEARC% e receber 1 ficha de exaustão. Se você fizer isso, essa nave sofre 1 dano %HIT%."""
        "MagnaGuard Executioner":
           display_name: """Executor da MagnaGuard"""
           text: """<i class = flavor_text>Além de proteger os líderes Separatistas, os droides MagnaGuard muitas vezes são despachados em Caças Estelares Classe Rogue para eliminar seus inimigos</i>"""
        "MagnaGuard Protector":
           display_name: """MagnaGuard Protector"""
           text: """<strong>Preparação:</strong> Depois de posicionar forças, atribua a condição Protegido a 1 nave amiga que não seja um <strong>Protetor MagnaGuard</strong>."""

       #Gauntlet Separatist
        "Bo-Katan Kryze":
           display_name: """Bo-Katan Kryze"""
           text: """Antes de uma nave amiga em alcance 0-2 ativar, você pode gastar 1 %CHARGE%. Se você fizer isso, essa nave pode receber 1 ficha de desgaste para remover 1 ficha laranja ou vermelha que não seja um estresse."""
        "Death Watch Warrior":
           display_name: """Guerreiro do Olho da Morte"""
           text: """<i class = flavor_text>Apesar do apoio incerto dos Separatistas, o Olho da Morte pretende restaurar o passado guerreiro e as antigas tradições de Mandalore. A manobrabilidade e os assentos rebaixados do Caça Gauntlet o tornam uma excelente plataforma para enviar esses orgulhosos soldados em batalha.</i>"""
        "Pre Vizsla":
           display_name: """Pre Vizsla"""
           text: """Quando você estiver atacando, se a iniciativa do defensor for igual ou maior que a sua, você pode gastar 2 %CHARGE% para rolar 1 dado adicional."""


        # Starter Packs
        "Darth Vader (SSP)":
           display_name: """Darth Vader (SSP)"""
           text: """Depois que você realizar uma ação, você pode gastar 1 %FORCE% para realizar uma ação."""
        "Maarek Stele (SSP)":
           display_name: """Maarek Stele (SSP)"""
           text: """Quando você realizar um ataque, se o defensor for receber uma carta de dano virada para cima, ao invés disso compre 3 cartas de dano, escolha 1 e descarte o resto. """
        "Captain Jonus (SSP)":
           display_name: """Capitão Jonus (SSP)"""
           text: """Quando uma nave amiga em alcance 0-1 realiza um ataque %TORPEDO% ou %MISSILE%, essa nave pode rerolar até 2 dados de ataque. """
        "Tomax Bren (SSP)":
           display_name: """Tomax Bren (SSP)"""
           text: """Depois que você realizar uma ação %RELOAD%, você pode recuperar 1 ficha %CHARGE% em 1 de suas cartas de melhoria %TALENT% equipadas. """
        '"Night Beast" (SSP)':
           display_name: """“Night Beast” (SSP)"""
           text: """Depois que você realizar completamente uma manobra azul, você pode realizar uma ação %FOCUS%."""
        "Valen Rudor (SSP)":
           display_name: """Valen Rudor (SSP)"""
           text: """Depois que uma nave amiga em alcance 0-1 defender (depois que o dano for resolvido, se houver), você pode realizar uma ação."""
        "Iden Versio (SSP)":
           display_name: """Iden Versio (SSP)"""
           text: """Antes de um caça TIE/ln amigo em alcance 0-1 sofrer 1 ou mais danos, você pode gastar 1 %CHARGE%. Se o fizer, evite esse dano."""
        "Luke Skywalker (SSP)":
           display_name: """Luke Skywalker (SSP)"""
           text: """Depois que você se tornar o defensor (antes dos dados serem rolados), você pode recuperar 1 %FORCE%."""
        "Jek Porkins (SSP)":
           display_name: """Jek Porkins (SSP)"""
           text: """Depois que você receber uma ficha de estresse, você pode rolar 1 dado de ataque para removê-la. Em um resultado %HIT%, sofra 1 dano %HIT%."""
        '"Dutch" Vander (SSP)':
           display_name: """“Dutch” Vander (SSP)"""
           text: """Depois que você realizar uma ação %LOCK%, você pode escolher 1 nave amiga em alcance 1-3. Essa nave pode adquirir uma mira no objeto que você mirou, ignorando restrições de alcance."""
        "Horton Salm (SSP)":
           display_name: """Horton Salm (SSP)"""
           text: """Quando você realizar um ataque, você pode rerolar 1 dado de ataque para cada outra nave amiga em alcance 0-1 do defensor."""
        "Arvel Crynyd (SSP)":
           display_name: """Arvel Crynyd (SSP)"""
           text: """Se você falharia uma ação %BOOST% por sobrepor outra nave, ao invés disso, resolva-a como se estivesse executando parcialmente uma manobra.%LINEBREAK% Quando Você realizar um ataque em alcance 0, trate-o como um ataque em alcance 1."""
        "Jake Farrell (SSP)":
           display_name: """Jake Farrell (SSP)"""
           text: """Depois que você realizar uma ação %BARRELROLL% ou %BOOST%, você pode escolher uma nave amiga em alcance 0-1. Essa nave pode realizar uma ação %FOCUS%."""
        "Shara Bey (SSP)":
           display_name: """Shara Bey (SSP)"""
           text: """Quando você defender ou realizar um ataque primário, você pode gastar 1 mira que você possua na nave inimiga e adicionar 1 resultado %FOCUS% ao resultado dos seus dados. """


    upgrade_translations =
     #Atiradores
        "Ahsoka Tano":
           display_name: """Ahsoka Tano"""
           text: """Depois que você executar uma manobra, você pode gastar 1 %FORCE% e escolher uma nave amiga em alcance 1-3 em seu arco de tiro. Se o fizer, ela pode realizar uma ação %FOCUS% vermelha, mesmo se estiver estressada."""
        "Wolfpack":
           display_name: """Alcatéia"""
           text: """Depois que uma nave amiga em alcance 0-3 defender, se o atacante estiver em seu arco de tiro, o defensor pode receber 1 ficha de desgaste para travar uma mira no atacante."""
        "Agile Gunner":
           display_name: """Atirador Ágil"""
           text: """Durante a Fase Final, você pode rotacionar seu %SINGLETURRETARC%."""
        "Seventh Fleet Gunner":
           display_name: """Seventh Fleet Gunner"""
           text: """Quando outra nave amiga realizar um ataque primário, se o defensor estiver em seu arco de tiro, você pode gastar 1 %CHARGE%. Se o fizer, o atacante rola 1 dado de ataque adicional, até o máximo de 4. Durante a Fase de Sistema, você pode ganhar uma ficha de desarme para recuperar 1 %CHARGE%."""
        "Special Forces Gunner":
           display_name: """Atirador das Forças Especiais"""
           text: """Quando você realizar um ataque primário %FRONTARC%, se seu %SINGLETURRETARC% estiver em seu %FRONTARC%, você pode rolar 1 dado de ataque adicional.%LINEBREAK%Depois que você realizar um ataque primário %FRONTARC%, se seu %SINGLETURRETARC% estiver em seu %REARARC%, você pode realizar um ataque primário %SINGLETURRETARC% bônus."""
        "Veteran Tail Gunner":
           display_name: """Atirador de Cauda Veterano"""
           text: """Depois que você realizar um ataque primário %FRONTARC%, você pode realizar um ataque primário %REARARC% bônus."""
        "Veteran Turret Gunner":
           display_name: """Atirador de Torre Veterano"""
           text: """Depois que você realizar um ataque primário, você pode realizar um ataque %SINGLETURRETARC% bônus usando um %SINGLETURRETARC% que você não tenha usado para atacar nessa rodada."""
        "Hotshot Gunner":
           display_name: """Atirador Experiente"""
           text: """Quando você realizar um ataque %SINGLETURRETARC%, depois da etapa Modificar Dados de Defesa, o defensor remove 1 ficha de foco ou de cálculo."""
        "Suppressive Gunner":
           display_name: """Atirador Supressivo"""
           text: """Quando você realizar um ataque, você pode gastar 1 resultado %FOCUS%. Se o fizer, o defensor recebe 1 ficha de exaustão a menos que ele escolha sofrer 1 dano %HIT%."""
        "Bistan":
           display_name: """Bistan"""
           text: """Depois que você realizar um ataque primário, se você estiver focado, você pode realizar um ataque %SINGLETURRETARC% bônus contra uma nave que você não tenha atacado nessa rodada."""
        "Boba Fett (Separatist)":
           display_name: """Boba Fett"""
           text: """Quando você realizar um ataque, se não houver nenhuma outra nave no arco de ataque, você pode mudar 1 de seus resultados %FOCUS% para um resultado %HIT%."""
        "Skilled Bombardier":
           display_name: """Bombardeiro Habilidoso"""
           text: """Se você for soltar ou lançar um dispositivo, você pode usar um gabarito da mesma direção com 1 velocidade maior ou menor."""
        "Bossk":
           display_name: """Bossk"""
           text: """Depois de realizar um ataque primário que errou, se você não estiver estressado, você <strong>deve</strong> receber 1 ficha de estresse para realizar um ataque primário bônus contra o mesmo alvo."""
        "BT-1":
           display_name: """BT-1"""
           text: """Quando você realizar um ataque, você pode mudar 1 resultado %HIT% para um resultado %CRIT% para cada ficha de estresse que o defensor tiver."""
        "Clone Captain Rex":
           display_name: """Capitão Clone Rex"""
           text: """Quando você realizar um ataque, você pode gastar um resultado %FOCUS%, se o fizer, cada nave amiga que tiver o defensor em seu %BULLSEYEARC% pode ganhar uma ficha de desgaste para realizar uma ação de %FOCUS%."""
        "Clone Commander Cody":
           display_name: """Comandante Clone Cody"""
           text: """Depois que você realizar um ataque que errou, se 1 ou mais resultados %HIT%/%CRIT% foram neutralizados, o defensor recebe 1 ficha de desgaste."""
        "Ghost Company":
           display_name: """Companhia Fantasma"""
           text: """Depois que você realizar um ataque primário, se você estiver focando, você pode realizar um ataque %SINGLETURRETARC% contra uma nave que não tenha atacado nessa rodada como um ataque bônus."""
        "Dengar":
           display_name: """Dengar"""
           text: """Depois que você defender, se o atacante estiver em seu arco de tiro, você pode gastar 1 %CHARGE%. Se o fizer, role um dado de ataque a menos que o atacante escolha remover 1 ficha verde. Em um resultado %HIT% ou %CRIT%, o atacante sofre um dano %HIT%."""
        "DT-798":
           display_name: """DT-798"""
           text: """No começo da Fase de Engajamento, você pode escolher uma nave amiga em seu arco de tiro. Se você o fizer, essa nave recebe 1 ficha de desgaste. %LINEBREAK% Quando você realizar um ataque, você pode rerolar até 1 dado de ataque para cada nave no arco de ataque com 1 ou mais fichas vermelhas ou laranjas que não sejam mira."""
        "Corsair Crew":
           display_name: """Tripulação de Corsários"""
           text: """Quando você realizar um ataque contra uma nave padrão, você pode gastar 1 resultado %HIT%. Se o fizer, o defensor recebe uma ficha de exaustão."""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """Depois que você realizar um ataque primário, você pode gastar 1 %FORCE% para realizar um ataque bonus %SINGLETURRETARC% de um %SINGLETURRETARC% que você ainda não tenha atirado nessa rodada. Se você o fizer e estiver estressado, você pode rerolar 1 dado de ataque."""
        "Finn":
           display_name: """Finn"""
           text: """Quando você defender ou realizar um ataque primário, se a nave inimiga estiver em seu %FRONTARC%, você pode adicionar 1 resultado em branco a sua rolagem (este dado pode ser rerolado ou modificado de outras formas)"""
        "Gar Saxon (Gunner)":
           display_name: """Gar Saxon"""
           text: """Quando você realizar a ação %LOCK%, você pode apenas escolher objetos que estejam em seu %FRONTARC% ou %REARARC%. %LINEBREAK%Quando você realizar um ataque primário, se o defensor estiver em seu %FRONTARC% ou %REARARC%, você pode remover 1 ficha laranja ou vermelha do defensor para rolar 1 dado adicional, até um máximo de 4 dados."""
        "Greedo":
           display_name: """Greedo"""
           text: """Quando você realizar um ataque, você pode gastar 1 %CHARGE% para mudar 1 resultado %HIT% para um resultado %CRIT%.%LINEBREAK%Quando você defender, se sua %CHARGE% estiver ativa, o atacante pode mudar 1 resultado %HIT% para um resultado %CRIT%."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """Durante a Fase de Engajamento, na inciativa 7, você pode realizar um ataque %SINGLETURRETARC%. Você não pode atacar por esse %SINGLETURRETARC% novamente nessa rodada."""
        "Han Solo (Scum)":
           display_name: """Han Solo"""
           text: """Antes de você engajar você pode realizar uma ação %FOCUS% vermelha."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """No começo da Fase de Engajamento, você gastar 1 %FORCE% e receber 1 ficha de exaustão para rotacionar seu indicador %SINGLETURRETARC%.%LINEBREAK%<i>Errata (desde RR 1.4): Acrescentado custo adicional</i>"""
        "Migs Mayfeld":
           display_name: """Migs Mayfeld"""
           text: """Depois que você realizar um ataque %FRONTARC%, você pode realizar um ataque %REARARC% ou %SINGLETURRETARC% como um ataque bônus contra um alvo diferente que possua 1 ou mais fichas vermelhas ou laranjas."""
        "Weapons Systems Officer":
           display_name: """Oficial de Sistemas de Armas"""
           text: """Depois que você realizar um ataque especial com o requisito %LOCK%, você pode travar uma mira no defensor."""
        "Paige Tico":
           display_name: """Paige Tico"""
           text: """Depois que você realizar um ataque primário, você pode soltar 1 bomba ou rotacionar seu %SINGLETURRETARC%.%LINEBREAK%Depois que você for destruído, você pode soltar 1 bomba."""
        "Fifth Brother":
           display_name: """Quinto Irmão"""
           text: """Quando você realizar um ataque, você pode gastar 1 %FORCE% para mudar 1 de seus resultado %FOCUS% para um resultado %CRIT%."""
        "Rey":
           display_name: """Rey"""
           text: """Quando você defender ou realizar um ataque, se a nave inimiga estiver em seu %SINGLETURRETARC%, você pode gastar 1 %FORCE% para mudar 1 de seus resultados em branco para um resultado %EVADE% ou %HIT%."""
        "Sabine Wren (Gunner)":
           display_name: """Sabine Wren"""
           text: """Depois que você realizar um ataque especial, você pode escolher um número de naves amigas em alcance 0-3 do defensor igual ao número de cartas de dano causadas no defensor durante este ataque. Cada nave escolhida pode remover 1 ficha de estresse ou desgaste."""
        "First Order Ordnance Tech":
           display_name: """Técnico de Artilharia da Primeira Ordem"""
           text: """<i class = flavor_text>A primeira Ordem treina seus pilotos e atiradores para serem fanaticamente leais, priorizando a vitória até mesmo sobre a própria vida.</i>"""
        "Tiber Saxon":
           display_name: """Tiber Saxon"""
           text: """Depois que você realizar um ataque em alcance 1-2 que acertou, se o defensor não possuir cartas de dano viradas para cima, você pode gastar 1 ou mais %CHARGE%. para cada %CHARGE% que você gastar o defensor recebe uma ficha de desgaste."""
        "Ursa Wren (Gunner)":
           display_name: """Ursa Wren"""
           text: """Depois que você mirar em uma unidade inimiga além do alcance 2, se não houver unidades amigas em alcance 0-1 da unidade mirada, receba uma ficha de cálculo."""


      #Astromecânicos
        '"Chopper" (Astromech)':
           display_name: """“Chopper”"""
           text: """<strong>Ação:</strong> Gaste 1 %CHARGE% não recursiva de outra melhoria equipada para recuperar 1 escudo.%LINEBREAK%<strong>Ação:</strong> Gaste 2 escudos para recuperar 1 %CHARGE% não recursiva de uma melhoria equipada."""
        '"Genius"':
           display_name: """“Genius”"""
           text: """Após você executar completamente uma manobra, se você não soltou ou lançou um dispositivo nessa rodada, você pode soltar 1 bomba."""
        "Q7 Astromech":
           display_name: """Astromecânico Q7"""
           text: """Quando você realizar uma pirueta ou impulso, você pode se mover através e sobrepor obstáculos."""
        "R2 Astromech":
           display_name: """Astromecânico R2"""
           text: """Após você revelar seu disco, você pode gastar 1 %CHARGE% e receber 1 ficha de desarmamento para recuperar 1 escudo."""
        "R3 Astromech":
           display_name: """Astromecânico R3"""
           text: """Você pode manter até 2 miras. Cada mira deve estar em um objeto diferente.%LINEBREAK%Após você realizar uma ação %LOCK%, você pode adquirir uma mira."""
        "R4 Astromech":
           display_name: """Astromecânico R4"""
           text: """Reduza a dificuldade das suas manobras básicas de velocidade 1-2 (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%)."""
        "R4-P Astromech":
           display_name: """Astromecânico R4-P"""
           text: """Antes de você executar uma manobra básica, você pode gastar 1 %CHARGE%. Se o fizer, enquanto você executar a manobra, reduza sua dificuldade."""
        "R5 Astromech":
           display_name: """Astromecânico R5"""
           text: """<strong>Ação:</strong> Gaste 1 %CHARGE% para reparar 1 carta de dano virada para baixo.%LINEBREAK% <strong>Ação</strong>: Repare 1 carta de dano Nave virada para cima."""
        "Watchful Astromech":
           display_name: """Astromecânico Vigilante"""
           text: """Após você realizar uma ação %RELOAD% ou %ROTATEARC%, se você estiver no arco de tiro de uma nave inimiga, você pode realizar uma ação %CALCULATE% vermelha."""
        "BB Astromech":
           display_name: """BB Astromech"""
           text: """Antes de você executar uma manobra azul, você pode gastar 1 %CHARGE% para realizar uma ação %BARRELROLL%.%LINEBREAK% <i>Errata (desde RR 1.4.2): Período da habilidade alterado para Fase de Sistema</i>"""
        "BB-8":
           display_name: """BB-8"""
           text: """Antes de você executar uma manobra azul, você pode gastar 1 %CHARGE% para realizar uma ação %BARRELROLL% ou %BOOST%.%LINEBREAK% <i>Errata (desde RR 1.4.2): Período da habilidade alterado para Fase de Sistema</i>"""
        "C1-10P":
           display_name: """C1-10P"""
           text: """<strong>Preparação:</strong> Equipe este lado virado para cima.%LINEBREAK%Após você executar uma manobra, você pode gastar 1 %CHARGE% para realizar uma ação e vermelha, mesmo estressado.%LINEBREAK%Durante a Fase Final, se essa carta possuir 0 %CHARGE% ativa, vire-a. %LINEBREAK% <strong>C1-10P (Instável):</strong> Após você executar completamente uma manobra, você <strong>deve</strong> escolher uma nave em alcance 0-1, a nave escolhida recebe 1 ficha de interferência.%LINEBREAK%<i>Errata (desde RR 1.4): adicionado "completamente"</i>"""
        "L4E-R5":
           display_name: """L4E-R5"""
           text: """No início da Fase de Engajamento, você pode transferir 1 ficha de cálculo para uma nave amiga em seu arco de tiro."""
        "M9-G8":
           display_name: """M9-G8"""
           text: """Quando uma nave mirada por você realizar um ataque, você pode escolher 1 dado de ataque. Se o fizer, o atacante rerrola o dado escolhido."""
        "R1-J5":
           display_name: """R1-J5"""
           text: """Enquanto você tiver 2 ou menos fichas de estresse, você pode realizar ações em cartas de dano mesmo estressado.%LINEBREAK% Após você reparar uma carta de dano com o atributo <b>Nave</b>, você pode gastar 1 %CHARGE% para reparar a carta novamente."""
        "R2-A6":
           display_name: """R2-A6"""
           text: """Após você revelar seu disco, você pode colocar seu disco em uma manobra de mesma direção com velocidade 1 maior ou menor."""
        "R2-C4":
           display_name: """R2-C4"""
           text: """Quando você realizar um ataque, você pode gastar 1 ficha de desvio para mudar 1 resultado %FOCUS% para um resultado %HIT%."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """Após você revelar seu disco, você pdoe gastar 1 %CHARGE% e receber 1 ficha de desarmamento para recuperar 1 escudo."""
        "R2-D2 (Republic)":
           display_name: """R2-D2"""
           text: """Após você ativar, você pode gastar 1 %CHARGE% e receber 1 ficha de exaustão parar reparar 1 carta de dano, recuperar 1 escudo ou remover 1 dispositivo em alcance 0-1."""
        "R2-D2 (Resistance)":
           display_name: """R2-D2"""
           text: """Durante a Fase Final, você pode gastar 1 %CHARGE% e 1 %SHIELD% para remover 1 ficha vermelha.%LINEBREAK% Durante a Fase Final, se você não tiver %SHIELD% ativo, você pode gastar 2 %CHARGE% para recuperar 1 %SHIELD% e receber 1 ficha de exaustão."""
        "R2-HA":
           display_name: """R2-HA"""
           text: """Quando você defender, você pode gastar sua mira no atacante para rerrolar qualquer número de seus dados de defesa."""
        "R4-B11":
           display_name: """R4-B11"""
           text: """Quando você realizar um ataque, você pode remover 1 ficha laranja ou vermelha do defensor para rerrolar qualquer número de dados de defesa."""
        "R4-P17":
           display_name: """R4-P17"""
           text: """Após você executar completamente uma manobra vermelha, você pode gastar 1 %CHARGE% para realizar uma ação, mesmo estressado."""
        "R4-P44":
           display_name: """R4-P44"""
           text: """Após você executar completamente uma manobra, se houver uma nave inimiga em seu %BULLSEYEARC%, receba 1 ficha de cálculo."""
        "R5-D8":
           display_name: """R5-D8"""
           text: """<strong>Ação:</strong> Gaste 1 %CHARGE% para reparar 1 carta de dano virada para baixo. %LINEBREAK%<strong> Ação:</strong> Repare 1 carta de dano <b>Nave</b> virada para cima."""
        "R5-P8":
           display_name: """R5-P8"""
           text: """Quando você realizar um ataque, contra um defensor em seu %FRONTARC%, você pode gastar 1 %CHARGE% para rerrolar 1 dado de ataque. Se o resultado rerrolado for um resultado %CRIT%, sofra 1 dano %CRIT%."""
        "R5-TK":
           display_name: """R5-TK"""
           text: """Você pode realizar ataques contra naves aliadas."""
        "R5-X3":
           display_name: """R5-X3"""
           text: """Antes você ativar ou engajar, você pode gastar 1 %CHARGE% para ignorar obstáculos até o final desta fase."""
        "R6-D8":
           display_name: """R6-D8"""
           text: """Quando você realizar um ataque, você pode rerrolar um número de dados de ataque até o número de naves amigas em alcance 0-3 que estão com o defensor em seus %BULLSEYEARC%."""
        "R7-A7":
           display_name: """R7-A7"""
           text: """Quando você realizar um ataque, você pode gastar 1 %CHARGE% para mudar 1 resultado %HIT% para um resultado %CRIT%."""

       #Canhões
        "Autoblasters":
           display_name: """Autoblasters"""
           text: """<strong>Ataque: </strong>Se o defensor estiver em seu %BULLSEYEARC%, role 1 dado adicional. Durante a etapa Neutralizar Resultados, se você não estiver no %FRONTARC% do defensor, resultados %EVADE% não cancelam resultados %CRIT%."""
        "Underslung Blaster Cannon":
           display_name: """Canhão de Baster Suspenso"""
           text: """Após uma nave inimiga executar uma manobra, você pode realizar este ataque contra ela como um ataque bônus.%LINEBREAK%Ataque (%LOCK%): Seus dados só podem ser modificados apenas gastando uma mira para seu efeito padrão."""
        "Heavy Laser Cannon":
           display_name: """Canhão de Laser Pesado"""
           text: """<strong>Ataque: </strong>Após a etapa Modificar Dados de Ataque, mude todos os resultados %CRIT% para resultados %HIT%."""
        "Ion Cannon":
           display_name: """Canhão Iônico"""
           text: """<strong>Ataque:</strong> Se este ataque acertar, gaste 1 resultado %HIT% ou %CRIT% para fazer com que o defensor sofra 1 dano %HIT%. Todos os resultados %HIT%/%CRIT% restantes atribuem fichas de íon ao invés de causarem dano."""
        "Synced Laser Cannons":
           display_name: """Canhões de Laser Sincronizado"""
           text: """<strong>Ataque:</strong> Se você estiver calculando, o defensor não aplica o bônus de alcance."""
        "Jamming Beam":
           display_name: """Feixe de Interferência"""
           text: """<strong>Ataque:</strong> Se este ataque acertar, todos os resultados %HIT%/%CRIT% atribuem fichas de interferência ao invés de causarem dano."""
        "Tractor Beam":
           display_name: """Feixe de Tração"""
           text: """<strong>Ataque:</strong> Se este ataque acertar, todos os resultados %HIT%/%CRIT% atribuem fichas de tração ao invés de causarem dano."""

      #Central Tática
        "K2-B4":
           display_name: """K2-B4"""
           text: """Quando uma nave amiga em alcance 0-3 defender, ela pode gastar 1 ficha de cálculo. Se ela fizer isso, adicione 1 resultado %EVADE% a menos que o atacante escolha receber 1 ficha de desgaste."""
        "Kalani":
           display_name: """Kalani"""
           text: """Depois que uma nave inimiga executar uma manobra, se ela estiver no %BULLSEYEARC% de uma nave amiga em alcance 0-3, você pode gastar 1 %CHARGE%. Se você fizer isso, aquela nave amiga adquire uma mira naquela nave inimiga, e então recebe 1 ficha de estresse."""
        "Kraken":
           display_name: """Kraken"""
           text: """Durante a Fase Final, você pode escolher até 3 naves amigas em alcance 0-3. Se fizer isso, cada uma dessas naves não removem 1 ficha de cálculo."""
        "TA-175":
           display_name: """TA-175"""
           text: """Depois que uma nave amiga em alcance 0-3 com %CALCULATE% em sua barra de ações for destruída, cada nave amiga em alcance 0-3 com %CALCULATE% em sua barra de ações recebe 1 ficha de cálculo."""
        "TV-94":
           display_name: """TV-94"""
           text: """Quando uma nave amiga em alcance 0-3 realiza um ataque primário contra um defensor no %BULLSEYEARC% dela, se houver 2 dados de ataque ou menos, ela pode gastar 1 ficha de cálculo para adicionar um resultado %HIT%."""

       #Configuração
        'Alpha-3B "Besh"':
           display_name: """Alpha-3B “Besh”"""
           text: """Quando você realizar um ataque primário, você pode gastar sua mira no defensor para mudar 1 dos seus resultados em branco ou %FOCUS% para um resultado %HIT%. %LINEBREAK%Adicione o encaixe %DEVICE%."""
        'Alpha-3E "Esk"':
           display_name: """Alpha-3E “Esk”"""
           text: """Quando você realizar um ataque primário, antes de rolar os dados de ataque, você pode gastar 2 %CHARGE%. Se o fizer, seus resultados %CRIT% atribuem fichas de íon ao invés de causarem dano."""
        "Swivel Wing":
           display_name: """Asas Giratórias"""
           text: """<strong>Asa Giratória (Abaixada)</strong> %LINEBREAK% Depois que você realizar uma manobra [0 %STOP%], você pode rotacionar sua nave 90º ou 180º. Se o fizer, você <b>deve</b> virar esta carta. %LINEBREAK% <strong>Asa Giratória (Erguida)</strong> %LINEBREAK% Quando você defender, role 1 dado de defesa a menos. %LINEBREAK% Depois que você realizar completamente uma manobra não estácionária [%STOP%], você pode virar esta carta."""
        "Pivot Wing":
           display_name: """Asas Pivotantes"""
           text: """<strong>Fechadas: </strong>Quando você defender, role 1 dado de defesa a menos. %LINEBREAK%Após você executar uma manobra (0 %STOP%), você pode rotacionar sua nave 90º ou 180º.%LINEBREAK%Antes de você ativar, você pode virar esta carta.%LINEBREAK%<strong>Abertas:</Strong> Antes de você ativar, você pode virar esta carta."""
        "Maneuver-Assist MGK-300":
           display_name: """Assistente de Manobras MGK-300"""
           text: """Reduza a dificuldade de suas manobras retas (%STRAIGHT%) e curvas (%BANKLEFT% ou %BANKRIGHT%) de velocidade 3."""
        "Target-Assist MGK-300":
           display_name: """Assistente de Mira MGK-300"""
           text: """Antes de você engajar, se você não tiver fichas verdes e não estiver estressado, receba 1 ficha de cálculo para cada nave inimiga em alcance 2-3 em seu arco de tiro, até um máximo de 2."""
        "Vectored Cannons (RZ-1)":
           display_name: """Canhões Vetorizados"""
           text: """Receba um indicador %SINGLETURRETARC%. Trate o requisito de arco seu ataque primário %FRONTARC% como %SINGLETURRETARC%.%LINEBREAK%Substitua sua habilidade de nave Propulsores Vetorizados com a seguinte:%LINEBREAK%Canhões Vetorizados: Durante a Fase de Sistema, você pode realizar uma ação %BOOST% vermelha ou %ROTATEARC% vermelha. Você consegue rotacionar seu indicador %SINGLETURRETARC% apenas para seu %FRONTARC% ou %REARARC%."""
        "Os-1 Arsenal Loadout":
           display_name: """Carga de Arsenal Os-1"""
           text: """Quando você tiver exatamente 1 ficha de desarmamento, você pode realizar ataques %TORPEDO% e %MISSILE% contra alvos que você tem uma mira. Se o fizer, você não pode gastar sua mira durante o ataque.%LINEBREAK%Adicione os encaixes %TORPEDO% e %MISSILE%."""
        "Wartime Loadout":
           display_name: """Carregamento de Guerra"""
           text: """Adicione 1 encaixe %TORPEDO% e 1 encaixe %MISSILE%. Substitua sua habilidade de nave com a seguinte:%LINEBREAK%Barragem Devastadora: Quando você realizar um ataque %TORPEDO% ou %MISSILE%, se o defensor estiver em seu %BULLSEYEARC%, seus resultados %CRIT% não podem ser cancelados por resultados %EVADE%."""
        "Xg-1 Assault Configuration":
           display_name: """Configuração de Assalto Xg-1"""
           text: """Quando você tiver exatamente 1 ficha de desarmamento, você pode realizar ataques %CANNON%. Quando você realizar um ataque %CANNON% enquanto estiver desarmado, role um máximo de 3 dados de ataque."""
        "Sensitive Controls":
           display_name: """Controles Sensíveis"""
           text: """Substitua sua habilidade de nave <strong>Autopropulsores</strong> pela habilidade:%LINEBREAK%<strong>Controles Sensíveis:</strong> Durante a Fase de Sistema, você pode realizar uma ação %BARRELROLL% vermelha ou %BOOST% vermelha."""
        "Delta-7B":
           display_name: """Delta-7B"""
           text: """<i class = flavor_text>A Delta-7B foi projetada como uma variante mais pesada do interceptor Delta-7 classe Aethersprite, identificável pelo encaixe reposicionado do astromecânico. Muitos generais Jedi preferem o maior poder de fogo e durabilidade desta nave.</i>"""
        "Enhanced Jamming Suite":
           display_name: """Dispositivo de Interferência Aprimorado"""
           text: """Quando você interferir, você pode escolher você mesmo ou outra nave amiga.%LINEBREAK%Quando você defender, se o atacante não tiver fichas verdes ou se houver uma nave interferida no arco de ataque, você pode rolar 1 dado de defesa adicional."""
        "Repulsorlift Stabilizers":
           display_name: """Estabilizadores de Repulsão"""
           text: """<strong>Inativo: Preparação:</strong> Equipe este lado virado para cima.%LINEBREAK%Reduza a dificuldade de suas manobras retas (%STRAIGHT%).%LINEBREAK%Após você executar completamente uma manobra, você pode virar esta carta.%LINEBREAK%<strong>Ativo:</strong> Após você revelar uma manobra curva (%BANKLEFT% ou %BANKRIGHT%) ou curva fechada (%TURNLEFT% ou %TURNRIGHT%), você deve realizar a manobra como uma derrapagem, então vire esta carta.%LINEBREAK%Após você executar completamente uma manobra que não seja derrapagem, você pode virar esta carta."""
        "Calibrated Laser Targeting":
           display_name: """Mira a Laser Calibrada"""
           text: """Quando você realizar um ataque primário, se o defensor estiver em seu %BULLSEYEARC%, adicione 1 resultado %FOCUS%."""
        "Intercept Booster":
           display_name: """Propulsores de Interceptação"""
           text: """<strong>Conectado:</strong> %SLAM% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <r>%LOCK%</r></i>%LINEBREAK% <strong>Preparação:</strong> Equipe este lado virado para cima.%LINEBREAK%<i>(Ações Adicionadas Estão Disponíveis Apenas Deste Lado)</i>%LINEBREAK%Durante a Fase de Sistema, receba 1 ficha de desarmamento a menos que você vire esta carta.%LINEBREAK%No final da Fase Final, se você não tiver %CHARGE% ativa, vire esta carta.%LINEBREAK% <strong>Desconectado:</strong> <i>Vazio</i>"""
        "Corsair Refit":
           display_name: """Restauração Corsária"""
           text: """Ataque Bônus: Gaste 1 %ENERGY para realizar um ataque %CANNON%, %TURRET% ou %MISSILE%."""
        "Servomotor S-Foils":
           display_name: """Servomotor de S-Foils"""
           text: """<strong>Fechado: </strong><i>%BOOST%, %FOCUS% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <r>%BOOST%</r></i>%LINEBREAK% Quando você realizar um ataque primário, role 1 dado de ataque a menos.%LINEBREAK%Antes de você ativar, você pode virar esta carta.%LINEBREAK%<strong>Aberto:</strong> Antes de você ativar, você pode virar esta carta."""
        "Stabilized S-Foils":
           display_name: """S-Foils Estabilizado"""
           text: """<strong>Fechado: </strong><i><r>%RELOAD%</r>, %BARRELROLL% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i><r> %EVADE%</r></i>%LINEBREAK% Antes de você ativar, se você não estiver criticamente danificado, você pode virar esta carta. %LINEBREAK% <strong>Aberto:</strong> <i>%BARRELROLL% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i><r> %LOCK%</r></i>%LINEBREAK% Após você realizar um ataque, você pode gastar sua mira que está no defensor para realizar um ataque %CANNON% bônus contra a nave usando uma melhoria %CANNON% com a qual você não tenha atacado este turno.%LINEBREAK%Antes de você ativar, se você não estiver criticamente danificado, você pode virar esta carta."""
        "Integrated S-Foils":
           display_name: """S-Foils Integrados"""
           text: """<strong>Fechado: </strong><i>%BARRELROLL%, %FOCUS% <i class="xwing-miniatures-font xwing-miniatures-font-linked"></i> <r>%BARRELROLL%</r></i>%LINEBREAK% Antes de você ativar, você pode virar esta carta. %LINEBREAK% <b>Aberto:</b> Quando você realizar um ataque primário, se o defensor não estiver em seu %BULLSEYEARC%, role 1 dado de ataque a menos.%LINEBREAK%Antes de você ativar, você pode virar esta carta."""
        "Landing Struts":
           display_name: """Suportes de Aterrissagem"""
           text: """Fechados:%LINEBREAK%<strong>Preparação:</strong> Equipe este lado virado para cima.%LINEBREAK%Quando você executar uma manobra, se você sobrepor um asteróide ou nuvem de destroços e houver 1 ou menos outras naves amigas em alcance 0 deste obstáculo, você pode virar esta carta.%LINEBREAK% Abertos:%LINEBREAK% Você ignora obstáculos em alcance 0 e quando move através deles. Após você revelar seu disco, se você revelou uma manobra diferente de [2 %STRAIGHT%] e está em alcance 0 de um asteróide ou nuvem de destroços, pula sua etapa Executar Manobra e remova 1 ficha de estresse; se você revelou uma manobra esquerda ou direita, rotacione sua nave 90º nessa direção. Após você executar uma manobra, vire esta carta.%LINEBREAK%<i>Errata (desde RR 1.4): Texto atualizado para funcionar como era a intenção</i>"""
        "Grappling Struts":
           display_name: """Suportes de Fixação"""
           text: """Fechados:%LINEBREAK%<strong>Preparação:</strong> Equipe este lado virado para cima.%LINEBREAK%Quando você executar uma manobra, se você sobrepor um asteróide ou nuvem de destroços e houver 1 ou menos outras naves amigas em alcance 0 deste obstáculo, você pode virar esta carta.%LINEBREAK% Abertos:%LINEBREAK% Você ignora obstáculos em alcance 0 e quando move através deles. Após você revelar seu disco, se você revelou uma manobra diferente de [2 %STRAIGHT%] e está em alcance 0 de um asteróide ou nuvem de destroços, pula sua etapa Executar Manobra e remova 1 ficha de estresse; se você revelou uma manobra esquerda ou direita, rotacione sua nave 90º nessa direção. Após você executar uma manobra, vire esta carta.%LINEBREAK%<i>Errata (desde RR 1.4): Texto atualizado para funcionar como era a intenção</i>"""
        "TIE Defender Elite":
           display_name: """TIE Defender Elite"""
           text: """Reduza a dificuldade de suas manobras de curva fechada (%TURNLEFT% ou %TURNRIGHT%). Aumente a dificuldade de suas manobras Koiogran (%KTURN%). Substitua sua habilidade de nave Força Total pela seguinte:%LINEBREAK%Controle de Tiro Avançado: Após você realizar um ataque %CANNON% ou %MISSILE%, se você possuir uma mira no defensor, você pode realizar um ataque primário bônus contra o defensor."""

      #Dispositivos
        "Electro-Proton Bomb":
           display_name: """Bomba de Elétro-Próton"""
           text: """<strong>Bomba</strong>%LINEBREAK%Durante a Fase de sistema você pode gastar 1 %CHARGE% para soltar uma Bomba de Elétro-Próton usando o gabarito [1 %STRAIGHT%]. Em seguida coloque 1 marcador de fuso sobre aquele dispositivo.%LINEBREAK%A %CHARGE% desta carta não pode ser recuperada."""
        "Concussion Bombs":
           display_name: """Bombas de Concussão"""
           text: """Durante a Fase de Sistema, se qualquer %CHARGE% desta carta estiver inativa, você <b>deve</b> gastar 1 %CHARGE% para soltar uma bomba de concussão usando o gabarito [1 %STRAIGHT%], se possível. Caso contrário, você pode gastar 1 %CHARGE% para soltar 1 bomba de concussão.%LINEBREAK% <i>Errata (desde RR 1.3.0): Adicionado ""usando o gabarito [1 %STRAIGHT%]"</i>"""
        "Ion Bombs":
           display_name: """Bombas de Íon"""
           text: """<strong>Bomba</strong>%LINEBREAK% Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para soltar uma Bomba de Íon usando o gabarito [1 %STRAIGHT%]."""
        "Proton Bombs":
           display_name: """Bombas de Prótons"""
           text: """<strong>Bomba</strong>%LINEBREAK%Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para soltar uma Bomba de Prótons usando o gabarito [1 %STRAIGHT%]."""
        "Seismic Charges":
           display_name: """Cargas Sísmicas"""
           text: """<strong>Bomba</strong>%LINEBREAK%Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para soltar uma Carga Sísmica usando o gabarito [1 %STRAIGHT%]."""
        "Cluster Mines":
           display_name: """Minas de Fragmentação"""
           text: """<strong>Mina</strong>%LINEBREAK% Durante a Fase de sistema você pode gastar 1 %CHARGE% para soltar um Conjunto de minas usando o gabarito [1 %STRAIGHT%].%LINEBREAK%A %CHARGE% desta carta não pode ser recuperada."""
        "Thermal Detonators":
           display_name: """Detonadores Térmicos"""
           text: """<strong>Bomba</strong>%LINEBREAK% Durante a Fase de Sistema, você pode gastar até 2 %CHARGE% para soltar a mesma quantidade de Detonadores Térmicos usando o gabarito [1 %STRAIGHT%] ou [2 %STRAIGHT%]. Cada um deve ser posicionado usando um gabarito diferente.%LINEBREAK%Quando você recarregar esta carta, recupere 1 %CHARGE% adicional."""
        "Bomblet Generator":
           display_name: """Gerador de Bombas Fragmentadas"""
           text: """<strong>Bomba</strong>%LINEBREAK%Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para soltar uma Mini-bomba com o gabarito [1 %STRAIGHT%].%LINEBREAK%No começo da Fase de Ativação, você pode gastar 1 escudo para recuperar 2 %CHARGE%."""
        "Proximity Mines":
           display_name: """Minas de Proximidade"""
           text: """<strong>Mina</strong>%LINEBREAK%Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para soltar uma Mina de Proximidade usando o gabarito [1 %STRAIGHT%].%LINEBREAK%A %CHARGE% desta carta não pode ser recuperada."""
        "Conner Nets":
           display_name: """Redes Conner"""
           text: """<strong>Mina</strong>%LINEBREAK%Durante a Fase de sistema você pode gastar 1 %CHARGE% para soltar uma Rede Conner usando o gabarito [1 %STRAIGHT%].%LINEBREAK%A %CHARGE% desta carta não pode ser recuperada."""
        "Blazer Bomb":
           display_name: """Bomba de Labareda"""
           text: """<strong>Bomba</strong>%LINEBREAK% Durante a Fase de sistema você pode gastar 1 %CHARGE% para soltar uma Bomba de Labareda usando o gabarito [1 %STRAIGHT%]"""

       #Força
        "Compassion":
           display_name: """Compaixão"""
           text: """Antes que outra nave amiga em alcance 0-2 receba uma carta de dano virada para cima do tipo <strong>Piloto</strong> ou <strong>Equipe</strong>, você pode gastar 1 %FORCE%. Se você fizer isso, essa carta de dano é descartada, e você recebe 1 carta de dano virada para baixo. Então, se você tiver 2 ou mais cartas de dano, recupere 2 %FORCE%."""
        "Brilliant Evasion":
           display_name: """Evasão Brilhante"""
           text: """Quando você se defender, se você não estiver no %BULLSEYEARC% do atacante, você pode gastar 1 %FORCE% para mudar 2 de seus resultados %FOCUS% para resultados %EVADE%."""
        "Malice":
           display_name: """Malícia"""
           text: """Quando você realizar um ataque, você pode gastar 1 %FORCE% para mudar 1 resultado %FOCUS% ou %HIT% para um resultado %CRIT%. Se você fizer isso, depois que realizar o ataque, se o defensor recebeu 1 ou mais cartas viradas para cima do tipo <strong>Piloto</strong> ou <strong>Equipe</strong> recupere 2 %FORCE%."""
        "Extreme Maneuvers":
           display_name: """Manobras Extremas"""
           text: """Quando você realizar uma ação %BOOST%, você pode gastar 1 %FORCE% para usar os gabaritos de curva fechada [%TURNLEFT% ou %TURNRIGHT%]."""
        "Battle Meditation":
           display_name: """Meditação de Batalha"""
           text: """Você não pode coordenar naves limitadas.%LINEBREAK% Quando você realizar uma ação %COORDINATE% roxa, você pode coordenar 1 nave amiga não-limitada adicional do mesmo tipo. Ambas as naves devem realizar a mesma ação."""
        "Instinctive Aim":
           display_name: """Mira Instintiva"""
           text: """Quando realizar um ataque especial, você pode gastar 1 %FORCE% para ignorar o requisito %FOCUS% ou %LOCK%."""
        "Hate":
           display_name: """Ódio"""
           text: """Depois que você sofrer 1 ou mais dano, recupere a mesma quantidade de %FORCE%."""
        "Patience":
           display_name: """Paciência"""
           text: """No começo da Fase de Engajamento, se houver uma nave inimiga em seu %FRONTARC%, você pde receber 1 ficha de exaustão para recuperar 1 %FORCE%."""
        "Heightened Perception":
           display_name: """Percepção Aguçada"""
           text: """No início da Fase de Engajamento, você pode gastar 1 %FORCE%. Se fizer isso, engaje na iniciativa 7 ao invés do seu valor normal de iniciativa."""
        "Predictive Shot":
           display_name: """Predictive Shot"""
           text: """Depois que você declarar um ataque, se o defensor estiver em seu %BULLSEYEARC%, você pode gastar 1 %FORCE%. Se o fizer, durante o passo de Rolar Dados de Defesa, o defensor não pode rolar mais dados de defesa do que a quantidade de seus resultados %HIT%/%CRIT%."""
        "Foresight":
           display_name: """Previsão"""
           text: """Depois que uma nave inimiga executar uma manobra, você pode gastar 1 %FORCE% para realizar este ataque contra ela como um ataque bônus.%LINEBREAK%<strong>Ataque:</strong> Você pode mudar 1 resultado %FOCUS% para um resultado %HIT%; seus dados não podem ser modificados de outra forma."""
        "Precognitive Reflexes":
           display_name: """Reflexos Precognitivos"""
           text: """Depois que você revelar seu disco de manobras, você pode gastar 1 %FORCE% para realizar uma ação %BARRELROLL% ou %BOOST%. Então, se você realizou uma manobra que não está na sua barra de ações, receba 1 ficha de desgaste.%LINEBREAK%Se você fizer isso, você não pode realizar outra ação durante sua ativação."""
        "Supernatural Reflexes":
           display_name: """Reflexos Sobrenaturais"""
           text: """Antes de você ativar você pode gastar 1 %FORCE% para realizar uma ação %BARRELROLL% ou %BOOST%. Então, se você realizou uma manobra que não está na sua barra de ações, sofra 1 dano %HIT%"""
        "Sense":
           display_name: """Sentir"""
           text: """Durante a Fase de Sistema, você pode escolher 1 nave em alcance 0-1 e olhar o disco de manobras dela. Se você gastar 1 %FOCE%, você pode escolher uma nave em alcance 0-3."""
        "Shattering Shot":
           display_name: """Tiro Destruidor"""
           text: """Quando você realizar um ataque, se o ataque estiver obstruído por um obstáculo ou o defensor estiver em alcance 0 de um obstáculo, você pode gastar 1 %FORCE% para adicionar 1 resultado %FOCUS%."""

       #Ilícitos
        "Babu Frik":
           display_name: """Babu Frik"""
           text: """Antes de você receber uma ficha laranja ou vermelha, que não seja uma mira, você pode gastar 1 %CHARGE% para, ao invés disso, colocá-la nessa carta. Durante a Fase de Sistema, se houver 1 ou mais fichas nessa carta, você <strong>deve</strong> gastar 1 %CHARGE%. Se você não puder, remova os tokens dessa carta, e receba tokens iguais."""
        "Inertial Dampeners":
           display_name: """Amortecedores Inerciais"""
           text: """Antes de você executar uma manobra, você pode gastar 1 escudo. Se você fizer isso, realize uma manobra [0 %STOP%] branca ao inves da manobra que você revelou, e então receba 1 ficha de estresse."""
        "Hotshot Tail Blaster":
           text: """Você pode realizar este ataque em alcance 0.%LINEBREAK%strong>Ataque: </strong>Gaste 1 %CHARGE%."""
        "Contraband Cybernetics":
           display_name: """Cibernética Ilegal"""
           text: """Antes de você ativar, você pode gastar 1 %CHARGE%. Se o fizer, até o fim da rodada, você pode realizar ações e executar manobras vermelhas mesmo se estiver estressado.%LINEBREAK% A %CHARGE% desta carta não pode ser recuperada. %LINEBREAK% <i>Errata (desde RR 1.4.2): Adicionada restrição na recuperação de cargas</i>"""
        "False Transponder Codes":
           display_name: """Códigos de Transponder Falsos"""
           text: """Depois que você adquirir uma mira em um objeto ou um objeto adquirir mira em você, se você tiver 1 %CHARGE% ativa, perca 1 %CHARGE% e interfira aquele objeto ignorando as restrições de alcance."""
        "Cloaking Device":
           display_name: """Dispositivo de Camuflagem"""
           text: """<strong>Ação: </strong> Gaste 1 %CHARGE% para realizar uma ação %CLOAK%.%LINEBREAK% No começo da Fase de Planejamento, role 1 dado de ataque. Em um resultado %FOCUS%, descamufle ou descarte sua ficha de camuflagem."""
        "Deadman's Switch":
           display_name: """Dispositivo de Homem Morto"""
           text: """Depois que você for destruído, todas as outras naves em alcance 0-1 sofrem 1 dano %HIT%."""
        "Rigged Cargo Chute":
           display_name: """Ejetor de Carregamento"""
           text: """<strong>Ação:</strong> Gaste 1 %CHARGE%. Solte 1 carga solta usando o gabarito [1 %STRAIGHT%]."""
        "Scanner Baffler":
           display_name: """Scanner Baffler"""
           text: """No fim da Preparação, você pode escolher até seis outras naves padrão amigas em sua área de saída em alcance 0-1. Se você o fizer, coloque essas naves em qualquer lugar em alcance 0-1."""
        "Tracking Fob":
           display_name: """Fob de Rastreamento"""
           text: """<strong>Preparação: </strong>Depois de posicionar forças, escolha um oponente; ele atribui  a condição <strong> Marcado para Eliminação</strong> a 1 de suas naves. Ele deve atribir a condição a uma nave limitada, se possível.%LINEBREAK% Você ignora restrições de alcance quando adquirir miras na nave com a condição<strong> Marcado para Eliminação</strong>."""
        "Saboteur's Map":
           display_name: """Mapa do Sabotador"""
           text: """No fim da Preparação, você pode gastar até 1 %CHARGE%de cada uma de suas melhorias <strong>Mina</strong> equipadas para posicionar o dispositivo correspondente na área de jogo além do alcance 2 de qualquer nave inimiga ou outro dispositivo."""
        "Feedback Array":
           display_name: """Matriz de Retorno"""
           text: """Antes de você engajar, você pode receber 1 ficha de íon e 1 ficha de desarme. Se você fizer isso, cada nave em alcance 0 sofre 1 dano %HIT%."""
        "Overtuned Modulators":
           display_name: """Moduladores Tunados"""
           text: """Durane a Fase de Sistema, se você não estiver estressado você pode gastar 1 %CHARGE% para receber 3 fichas de cálculo.%LINEBREAK%Durante a Fase Final, se sua %CHARGE% estiver inativa, para cada ficha verde que você remover, receba 1 ficha de desgaste."""
        "Coaxium Hyperfuel":
           display_name: """Super Combustível de Coaxium"""
           text: """Você pode realizar a ação %SLAM% mesmo se estiver estressado. Se você fizer isso, você sofre 1 dano %CRIT% a menos que exponha 1 de suas cartas de dano.%LINEBREAK%Depois que você executar parcialmente uma manobra, você pode expor 1 de suas cartas de dano ou sofrer 1 dano %CRIT% para realizar uma ação %SLAM%."""
        "Quick-Release Locks":
           display_name: """Travas de Abertura Rápida"""
           text: """Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para colocar 1 carga de caixas a deriva em seu %REARARC% em alcance 0. Ele não pode sobrepor uma nave.%LINEBREAK% A %CHARGE% dessa carta não pode ser recuperada."""

       #Míssil
        "Multi-Missile Pods":
           display_name: """Cápsula Multi-Mísseis"""
           text: """<strong>Ataque [%CALCULATE% ou %LOCK%]: </strong>Gaste 1 %CHARGE%. %LINEBREAK%Se o defensor estiver em seu %FRONTARC%, você pode gastar 1 %CHARGE% para rolar 1 dado de ataque adicional. Ao invés disso, se o defensor estiver em seu %BULLSEYEARC% você pode gastar até 2 %CHARGE% para rolar a mesma quantidade de dados de ataque."""
        "Energy-Shell Charges":
           display_name: """Cargas de Energia"""
           text: """<strong>Ataque[%CALCULATE%]:</strong> Gaste 1 %CHARGE%.%LINEBREAK%Quando você realizar este ataque, você pode gastar 1 ficha de cálculo para mudar 1 resultado %FOCUS% para um resultado %CRIT%.%LINEBREAK%<strong>Ação:</strong> Recarregue esta carta."""
        "Proton Rockets":
           display_name: """Foguetes de Prótons"""
           text: """<strong>Ataque [%FOCUS%]:</strong> Gaste 1 %CHARGE%."""
        "Cluster Missiles":
           display_name: """Mísseis de Fragmentação"""
           text: """<strong>Ataque [%LOCK%]:</strong> Gaste 1 %CHARGE%.%LINEBREAK%Depois deste ataque, você pode realizar este ataque como um ataque bônus contra um alvo diferente em alcance 0-1 do defensor, ignorando o requerimento de %LOCK%."""
        "Discord Missiles":
           display_name: """Mísseis Divergentes"""
           text: """No começo da Fase de Engajamento, você pode gastar 1 ficha de cálculo e 1 %CHARGE% para lançar um enxame de droides zunidores usando o gabarito [3 %BANKLEFT%], [3 %STRAIGHT%] ou [3 %BANKRIGHT%].%LINEBREAK%A %CHARGE% dessa carta não pode ser recuperada."""
        "Ion Missiles":
           display_name: """Mísseis Iônicos"""
           text: """<strong>Ataque[%LOCK%]:</strong> Gaste 1 %CHARGE%.%LINEBREAK%Se este ataque acertar, gaste 1 resultado %HIT% ou %CRIT% para causar 1 dano %HIT% no defensor. Todos os resultados %HIT%/%CRIT% restantes causam fichas de íon ao invés de dano."""
        "Homing Missiles":
           display_name: """Mísseis Teleguiados"""
           text: """<strong>Ataque[%LOCK%]:</strong> Gaste 1 %CHARGE%.%LINEBREAK%Depois que você declarar o defensor, o defensor pode escolher sofrer 1 dano %HIT%. Se o fizer, pule as etapas de Dados de Ataque e Dados de Defesa e o ataque é tratado como um acerto."""
        "Concussion Missiles":
           display_name: """Mísseis de Concussão"""
           text: """<strong>Ataque[%LOCK%]: </strong>Gaste 1 %CHARGE%.%LINEBREAK%Depois que esse ataque acertar, cada nave em alcance 0-1 do defensor expõe uma de suas cartas de dano."""
        "Diamond-Boron Missiles":
           display_name: """Mísseis de Diamante-Boro"""
           text: """<strong>Ataque [%LOCK%]:</strong> Gaste 1 %CHARGE%.%LINEBREAK%Depois que este ataque acertar, você pode gastar 1 %CHARGE%. Se o fizer, cada nave em alcance 0-1 do defensor com agilidade igual ou menor que a do defensor rola um dado de ataque e sofre 1 dano %HIT%/%CRIT% para cada resultado equivalente."""
        "Electro-Chaff Missiles":
           display_name: """Mísseis de Electro-Chaff"""
           text: """Durante a Fase de Sistema, você pode gastar 1 %CHARGE% dessa carta para lançar 1 nuvem de electro-chaff usando o gabarito [3 %BANKLEFT%], [3 %BANKRIGHT%] ou [4 %STRAIGHT%]. Então coloque 1 marcador de fuso nela.%LINEBREAK%A %CHARGE% desta carta não pode ser recuperada."""
        "Mag-Pulse Warheads":
           display_name: """Ogiva de Pulso Magnético"""
           text: """<strong>Ataque[%LOCK%]:</strong> Gaste 1 %CHARGE%.%LINEBREAK%Se este ataque acertar, o defensor sofre 1 dano %CRIT% e recebe 1 ficha de exaustão e 1 ficha de interferência. Então cancele todos os resultados %HIT%/%CRIT%."""
        "Barrage Rockets":
           display_name: """Torrente de Foguetes"""
           text: """<strong>Ataque [%FOCUS%]:</strong> Gaste 1 %CHARGE%.%LINEBREAK%Se o defensor estiver em seu %BULLSEYEARC%, você pode gastar 1 ou mais %CHARGE% para rerrolar a mesma quantidade de dados."""
        "XX-23 S-Thread Tracers":
           display_name: """Fibras de Rastreamento XX-23 S"""
           text: """Ataque [%FOCUS%, %CALCULATE% ou %LOCK%]: Gaste 1 %CHARGE%. Se este ataque acertar, cada nave amiga em alcance 1-3 do defensor pode travar uma mira no defensor. E então cancele todos os resultados dos dados."""

       #Modificação
        "Munitions Failsafe":
           display_name: """Abortar Disparo"""
           text: """Quando você realizar um ataque %TORPEDO% ou %MISSILE%, depois de rolar dados de ataque, você pode cancelar todos os resultados para recuperar 1 %CHARGE% que você tenha gasto como custo deste ataque."""
        "Drop-Seat Bay":
           display_name: """Assentos Rebaixados"""
           text: """Se você for soltar um remoto %CREW% usando um gabarito reto [%STRAIGHT%], você pode, ao invés disso, usar um gabarito de curva [%BANKLEFT% ou %BANKRIGHT%] da mesma velocidade e pode alinhar a linha do meio do gabarito com a linha do meio nas laterais direita ou esquerda da sua nave, ao invés da guia traseira."""
        "Spare Parts Canisters":
           display_name: """Caixa de Peças Sobressalentes"""
           text: """<strong>Ação: </strong>Gaste 1 %CHARGE% para recuperar 1 carga em uma das suas melhorias %ASTROMECH% equipadas. %LINEBREAK%Ação: Gaste 1 %CHARGE% para soltar 1 peças sobressalentes, e então quebre todas as miras em você."""
        "Independent Calculations":
           display_name: """Cálculos Independentes"""
           text: """Substitua sua habilidade de nave <strong>Cálculos Interligados</strong> pela seguinte habilidade:%LINEBREAK%<strong>Cálculos Independentes:</strong> Quando você realizar uma ação a branca, você pode tratá-la como vermelha para receber 1 ficha de cálculo adicional. Outras naves não podem usar suas fichas de cálculo usando a habilidade de nave Cálculos Interligados."""
        "Deuterium Power Cells":
           display_name: """Células de Energia de Deutério"""
           text: """Durante a Fase de Sistema, você pode gastar 1 %CHARGE% e receber uma ficha de desarme para recuperar 1 %SHIELD%.%LINEBREAK%Quando você for receber 1 ficha, exceto ficha de mira, ao invés disso se você não estiver estressado, você pode gastar 1 %CHARGE% para receber uma ficha de estresse."""
        "Targeting Computer":
           display_name: """Computador de Mira"""
           text: """<i class = flavor_text>Computadores de mira são componentes padrão na maioria das naves, especialmente aquelas que carregam artilharia pesada. Alguns caças leves e naves de transporte não possuem esse tipo de ajuda em suas armas, apesar dela poder ser instalada como uma modificação.</i>"""
        "Synchronized Console":
           display_name: """Console Sincronizado"""
           text: """Depois que você realizar um ataque, você pode escolher uma nave amiga em alcance 1 ou uma nave amiga com a melhoria Console Sincronizado em alcance 1-3 e gastar uma mira que você possui no defensor. Se o fizer, a nave amiga que você escolheu pode travar uma mira no defensor."""
        "Angled Deflectors":
           display_name: """Defletores Angulares"""
           text: """<i class = flavor_text>Escudos de caças normalmente possuem controles manuais que permite que sejam angulados para aumentar a proteção traseira ou dianteira. Entretanto, ao fazer isso a nave fica exposta a possíveis falhas de percepção do piloto.</i>"""
        "Static Discharge Vanes":
           display_name: """Descarga Estática"""
           text: """Antes de você receber 1 ficha de íon ou interferência, se você não estiver estressado, você pode escolher outra nave em alcance 0-1 e receber 1 ficha de estresse. Se você o fizer, a nave escolhida recebe aquela ficha de íon ou interferência, então você sofre 1 dano %HIT%.%LINEBREAK%<i>Errata (desde RR 1.1.0): Alterado de "Se você for receber 1 ficha de íon ou interferência, se você não estiver estressado, você pode escolher outra nave em alcance 0-1 e receber 1 ficha de estresse e transfira 1 ficha de íon ou interferência para aquela nave."</i>"""
        "Electronic Baffle":
           display_name: """Desorientador Eletrônico"""
           text: """Durante a Fase Final, você pode sofrer 1 dano para remover 1 ficha vermelha."""
        "Stealth Device":
           display_name: """Dispositivo de Ocultamento"""
           text: """Quando você defender, se sua %CHARGE% estiver ativa, role 1 dado de defesa adicional.%LINEBREAK%Depois que você sofrer dano, perca 1 %CHARGE%."""
        "Tactical Scrambler":
           display_name: """Embaralhador Tático"""
           text: """Quando você obstruir o ataque de uma nave inimiga, o defensor rola 1 dado de defesa adicional."""
        "Delayed Fuses":
           display_name: """Fusos Aumentados"""
           text: """Depois que você soltar, lançar ou colocar uma bomba ou mina, você pode colocar 1 marcador de fuso neste dispositivo."""
        "Gauntlet":
           display_name: """Gauntlet"""
           text: """Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para consertar 1 carta do tipo <strong>Nave</strong> virada para cima."""
        "Hull Upgrade":
           display_name: """Melhoria de Casco"""
           text: """<i class = flavor_text>Para aqueles que não podem pagar por um gerador de escudo melhorado, fixar placas adicionais no casco da nave pode ser um substituto adequado.</i>"""
        "Shield Upgrade":
           display_name: """Melhoria de Escudo"""
           text: """<i class = flavor_text>Escudos defletores são uma linha de defesa importante para a maioria das naves espaciais além dos caças leves. Melhorar a capacidade de escudos de uma nave pode ser cara, mas todos os pilotos, exceto alguns irresponsáveis, enxergam a importância desse tipo de investimento.</i>"""
        "Engine Upgrade":
           display_name: """Melhoria de Motor"""
           text: """<i class = flavor_text>Grandes forças militares como o Império Galatico possuem motores padronizados, mas alguns pilotos e pequenas organizações normalmente substituem os conectores de energia e propulsores, ou usam combustíveis de alta performance para conseguir aquele impulso extra dos seus motores.</i>"""
        "Precision Ion Engines":
           display_name: """Motores Iônicos Precisos"""
           text: """Antes de você realizar uma manobra Koiogran de velocidade 1-3 [%KTURN%], você pode, ao invés disso, gastar 1 %CHARGE% para realizar essa manobra como um Loop de Segnor [%SLOOPLEFT% ou %SLOOPRIGHT%]."""
        "Nightbrother":
           display_name: """Nightbrother"""
           text: """Depois que você revelar uma manobra que não seja azul, se você estiver estressado, você pode gastar 2 %CHARGE% para receber 1 ficha de foco ou evade."""
        "Mandalorian Optics":
           display_name: """Visores Mandalorianos"""
           text: """Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para travar uma mira em um objeto em seu %FRONTARC%.%LINEBREAK%Quando você realiza um ataque primário, se você possuir uma mira no defensor, ignore obstáculos além do alcance 0 que estejam obstruindo o ataque."""
        "Afterburners":
           display_name: """Pós-Combustores"""
           text: """Depois que você realizar completamente uma manobra de velocidade 3-5, você pode gastar 1 %CHARGE% para realizar uma ação %BOOST%, mesmo se estiver estressado."""
        "Burnout Thrusters":
           display_name: """Propulsores Poderosos"""
           text: """Depois que você realizar uma ação %SLAM%, perca 1 %CHARGE%. Então você pode receber 1 ficha de exaustão para remover 1 ficha de desarme.%LINEBREAK%Se sua %CHARGE% estiver inativa, você não pode realizar a ação %SLAM%."""
        "Ablative Plating":
           display_name: """Revestimento Ablativo"""
           text: """Antes de você sofrer dano de um obstáculo ou de uma bomba amiga detonando, você pode gastar 1 %CHARGE%. Se o fizer, evite 1 dano."""
        "Impervium Plating":
           display_name: """Revestimento de Impervium"""
           text: """Antes de você receber uma carta do tipo <strong>Nave</strong> virada para cima, você pode gastar 1 %CHARGE% para descartá-la."""
        "Beskar Reinforced Plating":
           display_name: """Revestimento Reforçado de Beskar"""
           text: """Quando você defender, se o atacante estiver em seu %FRONTARC%, antes de você receber uma carta de dano virada para cima, você pode gastar 1 %CHARGE% para receber esta carta virada para baixo, ou gastar 2 %CHARGE% para descartá-la imediatamente."""
        "Advanced SLAM":
           display_name: """SLAM Avançado"""
           text: """Depois que você realizar uma ação %SLAM%, se você executou completamente a manobra, você pode realizar uma ação branca da sua barra de ações, tratando-a como vermelha."""
        "Overdrive Thruster":
           display_name: """Propulsores Sobrecarregados"""
           text: """Quando você realizar uma ação vermelha %BOOST%, %BARRELROLL% ou %SLAM%, você <strong>deve</strong> usar um gabarito 1 velocidade maior, se possível."""

       #Sensor
        "Collision Detector":
           display_name: """Detector de Colisão"""
           text: """Quando você realiza uma pirueta ou impulso, você pode se mover através e sobrepor obstáculos.%LINEBREAK%Depois que você se mover através ou sobrepor um obstáculo, você pode gastar 1 %CHARGE% para ignorar seus efeitos até o fim da rodada."""
        "Advanced Sensors":
           display_name: """Sensores Avançados"""
           text: """Depois que você revelar seu disco de manobra, você pode realizar 1 ação.%LINEBREAK%Se o fizer, você não pode realizar outra ação durante sua ativação."""
        "Passive Sensors":
           display_name: """Sensores Passivos"""
           text: """<strong>Ação:</strong> Gaste 1 %CHARGE%. Você pode realizar esta ação apenas durante seu passo de Realizar Ação.%LINEBREAK%Enquanto sua %CHARGE% estiver inativa, você não pode ser coordenado. Antes de você engajar, se sua %CHARGE% estiver inativa, você pode realizar uma ação de a ou %LOCK%."""
        "Trajectory Simulator":
           display_name: """Simulador de Trajetória"""
           text: """Durante a Fase de Sistema, se você for soltar ou lançar uma bomba, você pode, em vez disso, lançá-la usando o gabarito [5 %STRAIGHT%]."""
        "Fire-Control System":
           display_name: """Sistema de Controle de Tiro"""
           text: """Quando você realiza um ataque, se você tiver uma mira no defensor, você pode rerrolar 1 dado de ataque. Se o fizer, você não pode gastar sua mira durante este ataque."""

       #Talento
        "Backwards Tailslide":
           display_name: """Deslizamento de Cauda"""
           text: """Quando você realizar um impulso ou pirueta, se sua carta de melhoria %CONFIGURATION% estiver com o lado “(Fechada)” para cima, você pode se mover através e sobrepor obstáculos.%LINEBREAK%Depois que você realizar um impulso ou pirueta através de um obstáculo, se você não estiver em alcance 0 dele, receba 1 ficha de desvio."""
        "Selfless":
           display_name: """Autruísmo"""
           text: """Quando outra nave amiga em alcance 0-1 defende, antes do passo Neutralizar Resultados, se você estiver no arco de ataque, você pode sofrer 1 dano %CRIT% para cancelar 1 resultado %CRIT%."""
        "Selfless (BoY)":
           display_name: """Autruísmo"""
           text: """Quando outra nave amiga em alcance 0-1 defende, antes do passo Neutralizar Resultados, se você estiver no arco de ataque, você pode sofrer 1 dano %CRIT% para cancelar 1 resultado %CRIT%."""
        "Composure":
           display_name: """Compostura"""
           text: """Depois que você falhar uma ação, se você não possuir fichas verdes, você pode realizar uma ação %FOCUS% Se o fizer, você não pode realizar ações adicionais nesta rodada.%LINEBREAK% <i>Errata (desde RR 1.1.0): Adicionado "Se o fizer, você não pode realizar ações adicionais nesta rodada."</i>"""
        "Debris Gambit":
           display_name: """Contornar Destroços"""
           text: """Quando Realizar uma ação %EVADE% vermelha, se houver um obstáculo em alcance 0-1, trate a ação como branca."""
        "Dedicated":
           display_name: """Dedicado"""
           text: """Quando outra nave amiga em seu %LEFTARC% ou %RIGHTARC% em alcance 0-2 defende, se ela for limitada ou possuir a melhoria <strong>Dedicado</strong> e você não estiver desgastado, você pode receber 1 ficha de desgaste. Se o fizer, o defensor rerrola 1 de seus resultados em branco.%LINEBREAK%<i>Errata (desde RR 1.4): Removida a restrição não-limitada e adicionada a restrição Clone</i>"""
        "Gravitic Deflection":
           display_name: """Deflexão Magnética"""
           text: """Quando você defender, você pode rerrolar 1 dado de defesa para cada nave tracionada no arco de ataque."""
        "Cutthroat":
           display_name: """Degolar"""
           text: """Depois que outra nave amiga em alcance 0-3 for destruída, se essa nave for limitada ou possuir a melhoria <strong>Degolar</strong>, você pode remover 1 de suas fichas vermelhas ou laranjas, ou recuperar 1 %CHARGE% não recursiva na sua carta de piloto ou de suas cartas de melhorias equipadas."""
        "Fearless":
           display_name: """Destemido"""
           text: """Quando você realizar um ataque primário %FRONTARC%, se o defensor estiver em alcance 1 e você estiver no %FRONTARC% do defensor, você pode mudar um de seus resultados para um resultado %HIT%."""
        "Disciplined":
           display_name: """Disciplinado"""
           text: """Depois que outra nave amiga em alcance 0-3 for destruída, se essa nave for limitada ou possuir a melhoria <strong>Disciplinado</strong>, você pode realizar uma ação %LOCK% ou %BARRELROLL%."""
        "Enduring":
           display_name: """Durável"""
           text: """Quando você defender, se você não estiver no %BULLSEYEARC% do atacante, resultados %CRIT% são cancelados antes de resultados %HIT%.%LINEBREAK%Depois que você sofrer dano %CRIT%, você pode realizar uma ação %CALCULATE% ou %FOCUS% na sua barra de ações, mesmo se estiver estressado, tratando essa ação como vermelha."""
        "Elusive":
           display_name: """Evasivo"""
           text: """Quando defender, você pode gastar 1 %CHARGE% para rerollar 1 dado de defesa.%LINEBREAK%Depois que realizar completamente uma manobra vermelha, recupere 1 %CHARGE%."""
        "Ensnare":
           display_name: """Enredar"""
           text: """No final da Fase de Ativação, se você estiver tracionado, você pode escolher 1 nave em seu arco %SINGLETURRETARC% em alcance 0-1. Transfira 1 ficha de tração para ela."""
        "Hopeful":
           display_name: """Esperançoso"""
           text: """Depois que outra nave amiga em alcance 0-3 for destruída, se aquela nave for limitada ou possuir a melhoria <strong>Esperançoso</strong>, você pode realizar uma ação de %FOCUS% ou %BOOST%."""
        "Ion Limiter Override":
           display_name: """Exceder o Limitador Iônico"""
           text: """Depois que você executar completamente uma manobra vermelha, você pode realizar uma ação %BARRELROLL% mesmo estressado. Se o fizer, role um dado de ataque: em um resultado %HIT% receba uma ficha de desgaste, e em um resultado %CRIT% receba uma ficha de íon."""
        "Fanatical":
           display_name: """Fanático"""
           text: """Quando você realizar um ataque primário, se você não possuir escudos ativos, você pode mudar 1 resultado %FOCUS% para um resultado %HIT%."""
        "Juke":
           display_name: """Finta"""
           text: """Quando realizar um ataque, se você estiver desviando, você pode mudar 1 resultado %EVADE% do defensor para um resultado %FOCUS%."""
        "Heroic":
           display_name: """Heróico"""
           text: """Quando você defender ou realizar um ataque, se você possuir apenas resultados em branco e tiver 2 ou mais resultados, você pode rerrolar qualquer quantidade dos seus dados."""
        "Ruthless":
           display_name: """Impiedoso"""
           text: """Quando você realizar um ataque, você pode escolher outra nave amiga em alcance 0-1 do defensor. Se você o fizer, essa nave sofre 1 dano %HIT% e você pode mudar 1 de seus resultados para um resultado %HIT%."""
        "Intimidation":
           display_name: """Intimidação"""
           text: """Quando uma nave em alcance 0 defende, ela rola 1 dado de defesa a menos."""
        "Squad Leader":
           display_name: """Líder de Esquadrão"""
           text: """Quando você coordenar, a nave que você escolheu só pode realizar uma ação que também esteja na sua barra de ações."""
        "Lone Wolf":
           display_name: """Lobo Solitário"""
           text: """Quando você defender ou realizar um ataque, se não houver outras naves amigas em alcance 0-2, você pode gastar 1 %CHARGE% para rerrolar 1 de seus dados."""
        "Starbird Slash":
           display_name: """Manobra Atordoante"""
           text: """Depois que você realizar completamente uma manobra, você pode escolher 1 nave inimiga que você tenha se movido através. Essa nave recebe 1 ficha de desgaste. Então, se você estiver no arco de tiro dessa nave, você ganha 1 ficha de desgaste."""
        "Interloper Turn":
           display_name: """Manobra Clandestina"""
           text: """Antes de você realizar uma curva [%TURNLEFT% ou %TURNRIGHT%) de velocidade 1-2 ou uma Manobra Koiogran [%KTURN%] de velocidade 1-2, se você estiver em alcance 0-1 de um asteroide, estrutura, ou nave enorme, você pode receber uma ficha de tração."""
        "Marg Sabl Closure":
           display_name: """Manobra Marg Sabl"""
           text: """Depois que você realizar uma manobra, se você se moveu através de um obstáculo, estrutura ou nave enorme, ou se você destacou, você pode escolher 1 nave inimiga em seu %FRONTARC% em alcance 1-2. Essa nave recebe 1 ficha de desgaste."""
        "Expert Handling":
           display_name: """Pilotagem Experiente"""
           text: """<i class = flavor_text>Enquanto caças pesados podem ser forçados em uma pirueta, pilotos experientes sabem como fazer isso sem colocar estresse desnecessário em suas naves ou deixá-los abertos a um ataque.</i>"""
        "Notorious":
           display_name: """Notório"""
           text: """Depois que você defender, se o atacante estiver em seu arco de tiro, você pode gastar 1 %CHARGE%. Se o fizer, o atacante recebe 1 ficha de desgaste.%LINEBREAK%Quando você realiza um ataque, se o defensor estiver desgastado, você pode rerrolar 1 resultado em branco."""
        "Daredevil":
           display_name: """Ousado"""
           text: """Quando você realizar uma ação %BOOST% branca, você pode tratá-la como vermelha para usar o gabarito [1 %TURNLEFT%] ou [1 %TURNRIGHT%]."""
        "Outmaneuver":
           display_name: """Outmaneuver"""
           text: """Quando você realizar um ataque %FRONTARC%, se você não estiver no arco de tiro do defensor, o defensor rola 1 dado de defesa a menos."""
        "Marksmanship":
           display_name: """Franco-Atirador"""
           text: """Quando você realiza um ataque, se o defensor estiver em seu %BULLSEYEARC%, você pode mudar 1 resultado %HIT% para um resultado %CRIT%."""
        "Predator":
           display_name: """Predador"""
           text: """Quando você realizar um ataque primário, se o defensor estiver em seu %BULLSEYEARC%, você pode rerrolar 1 dado de ataque."""
        "Saturation Salvo":
           display_name: """Rajada Massiva"""
           text: """Quando você realizar um ataque %TORPEDO% ou %MISSILE%, você pode gastar 1 %CHARGE% daquela melhoria. Se o fizer, escolha dois dados de defesa. O defensor deve rerrolar estes dados."""
        "Tierfon Belly Run":
           display_name: """Rasante de Tierfon"""
           text: """Você pode realizar ataques especiais mesmo estando em alcance 0 de asteroides.%LINEBREAK%Quando você defender, se você estiver em alcance 0 de um obstáculo, os dados de ataque não podem ser rerrolados."""
        "Feedback Ping":
           display_name: """Sinal de Retorno"""
           text: """Depois que uma nave inimiga realizar uma manobra, se ela estiver em alcance 0-1 de um dispositivo amigo, você pode travar uma mira nessa nave, ignorando as restrições de alcance."""
        "Swarm Tactics":
           display_name: """Táticas de Enxame"""
           text: """No começo da Fase de Engajamento, você pode escolher 1 nave amiga em alcance 1. Se o fizer, essa nave trata sua iniciativa igual a sua até o final da rodada."""
        "Trick Shot":
           display_name: """Tiro Ardiloso"""
           text: """Quando você realizar um ataque que está obstruído por um obstáculo, role 1 dado de ataque adicional."""
        "Deadeye Shot":
           display_name: """Tiro no Alvo"""
           text: """Quando você realizar um ataque primário, se o defensor estiver em seu %BULLSEYEARC%, você pode gastar 1 resultado %HIT% ou mudar 1 resultado %CRIT% para um resultado %HIT%. Se o fizer, o defensor expõe uma de suas cartas de dano."""
        "Crack Shot":
           display_name: """Tiro Certeiro"""
           text: """Quando realizar um ataque primário, se o defensor estiver em seu %BULLSEYEARC%, antes do passo de Neutralizar Resultados, você pode gastar 1 %CHARGE% para cancelar 1 resultado %EVADE%."""
        "Snap Shot":
           display_name: """Tiro Rápido"""
           text: """Depois que uma nave inimiga executar uma manobra, você pode realizar este ataque como um ataque bônus.%LINEBREAK%<strong>Ataque:</strong> Seus dados não podem ser modificados."""
        "Proud Tradition":
           display_name: """Tradição Orgulhosa"""
           text: """<strong>Tradição Orgulhosa</strong>%LINEBREAK%<strong>Preparação:</strong> Equipe este lado para cima.%LINEBREAK%Enquanto você tiver 2 fichas de estresse ou menos, você pode realizar ações %FOCUS% mesmo se estiver estressado.%LINEBREAK%Depois de realizar um ataque, se você estiver estressado, o defensor pode gastar 1 ficha de foco ou sofrer 1 dano %CRIT% para virar esta carta. %LINEBREAK% <strong>Tradição Falsa</strong>%LINEBREAK% Trate sua ação %FOCUS% como vermelha."""
        "Treacherous":
           display_name: """Traiçoeiro"""
           text: """Quando você defender, você pode escolher uma nave obstruindo o ataque e gastar 1 %CHARGE%. Se o fizer, cancele 1 resultado %HIT% ou %CRIT%, e a nave que você escolher recebe 1 ficha de desgaste.%LINEBREAK%Depois que uma nave em alcance 0-3 for destruída, recupere 1 %CHARGE%."""
        "Clan Training":
           display_name: """Treinamento de Clã"""
           text: """Antes de você engajar, se você não estiver focado e houver uma nave inimiga no seu %FRONTARC% em alcance1, você pode gastar 1 %CHARGE% para realizar uma ação %FOCUS% vermelha.%LINEBREAK%Depois que você realizar um ataque, se o defensor foi destruído, recupere 1 %CHARGE%."""

       #Tecnologias
        "Primed Thrusters":
           display_name: """Propulsores Preparados"""
           text: """Enquanto você possuir 2 fichas de estresse ou menos, você pode realizar ações de %BARRELROLL% e %BOOST% mesmo se estiver estressado."""
        "Pattern Analyzer":
           display_name: """Analista de Padrões"""
           text: """Quando você realizar completamente uma manobra vermelha, antes da fase Checar Dificuldade, você pode realizar 1 ação."""
        "Biohexacrypt Codes":
           display_name: """Códigos Biohexacripto"""
           text: """Quando você coordenar ou interferir, se você possuir uma mira na nave, você pode gastar essa mira para escolher essa nave, ignorando restrições de alcance."""
        "Sensor Scramblers":
           display_name: """Confundir Sensores"""
           text: """<strong>Preparação:</strong> Receba 1 ficha de camuflagem.%LINEBREAK%Enquanto você estiver camuflado, outras naves não podem travar miras em você.%LINEBREAK%Durante a Fase Final, se você estiver camuflado e houver uma nave inimiga em alcance 0-3, você <strong>deve</strong> descamuflar. Se o fizer, e a descamuflagem falhar, perca 1 ficha de camuflagem."""
        "Sensor Buoy Suite":
           display_name: """Conjunto de Bóias de Sensor"""
           text: """<strong>Preparação:</strong> Antes de posicionar as forças, coloque 2 remotos bóias de sensor além do alcance 2 de qualquer borda.%LINEBREAK%Antes de engajar você pode travar uma mira em uma nave em alcance 0-1 de uma bóia de sensor amiga, ignorando restrições de alcance."""
        "Hyperspace Tracking Data":
           display_name: """Dados de Rastreamento do Hiperespaço"""
           text: """<strong>Preparação:</strong> Antes de posicionar as forças, você pode escolher um número entre 0 e 6. Trate sua iniciativa como o valor escolhido durante a Preparação.%LINEBREAK%Depois da Preparação, atribua 1 ficha de foco ou desvio para cada nave aliada em alcance 0-2."""
        "Enhanced Jamming Suite":
           display_name: """Equipamento de Interferência Otimizado"""
           text: """Quando você interferir, você pode escolher você mesmo ou outra nave amiga.%LINEBREAK%Quando você defender, se o atacante não possuir fichas verdes ou se houver uma nave interferida no arco de ataque, você pode rolar um dado de defesa adicional."""
        "Advanced Optics":
           display_name: """Ótica Avançada"""
           text: """Quando você realiza um ataque, você pode gastar 1 ficha de foco para mudar um dos seus resultados em branco para um resultado %HIT%."""
        "Ferrosphere Paint":
           display_name: """Pintura de Ferrosfera"""
           text: """Depois que uma nave inimiga travar mira em você, se você não estiver no %BULLSEYEARC% dessa nave, essa nave ganha uma ficha de estresse a menos que ela escolha quebrar a mira.%LINEBREAK%<i>Errata (desde RR 1.4): Habilidade ajustada para permitir contrajogo</i>"""
        "Automated Target Priority":
           display_name: """Prioridade de Alvo Automatizada"""
           text: """Quando você realizar um ataque, você <strong>deve</strong> escolher um defensor no alcance de ataque válido mais próximo.%LINEBREAK%Depois que você realizar um ataque que errou, coloque 1 ficha de cálculo nessa carta.%LINEBREAK%Antes de você engajar, você pode remover 1 ficha de cálculo desta carta para receber uma ficha de cálculo."""
        "Targeting Synchronizer":
           display_name: """Sincronizador de Alvos"""
           text: """Enquanto uma nave aliada em alcance 1-2 realiza um ataque contra um alvo que você possua mira, essa nave ignora o requerimento %LOCK% do ataque."""

      #Torpedo
        "Plasma Torpedoes":
           display_name: """Torpedos de Plasma"""
           text: """<strong>Ataque [%LOCK%]:</strong> Gaste 1 %CHARGE%.%LINEBREAK%Durante o passo Neutralizar Resultados, resultados %CRIT% são cancelados antes de resultados %HIT%. Depois que este ataque acertar, o defensor perde 1 escudo."""
        "Proton Torpedoes":
           display_name: """Torpedos de Próton"""
           text: """<strong>Ataque [%LOCK%]:</strong> Gaste 1 %CHARGE%.%LINEBREAK%Mude 1 resultado %HIT% para um resultado %CRIT%."""
        "Adv. Proton Torpedoes":
           display_name: """Torpedos de Próton Avançados"""
           text: """<strong>Ataque [%LOCK%]:</strong> Gaste 1 %CHARGE%.%LINEBREAK%Mude 1 resultado %HIT% para um resultado %CRIT%."""
        "Ion Torpedoes":
           display_name: """Torpedos Iônicos"""
           text: """<strong>Ataque[%LOCK%]: </strong> Gaste 1 %CHARGE%.%LINEBREAK%Se este ataque acertar, gaste 1 resultado %HIT% ou %CRIT% para causar 1 dano %HIT% ao defensor. Todos os resultados %HIT%/%CRIT% restantes causam fichas de íon ao invés de dano."""
        "Tracking Torpedoes":
           display_name: """Torpedos Rastreadores"""
           text: """Durante a Fase de Sistema, você pode gastar até 3 %CHARGE% para lançar a mesma quantidade de torpedos rastreadores usando os gabaritos [%BANKLEFT% 3], [%STRAIGHT% 4] e [%BANKRIGHT% 3]. Cada dispositivo deve usar um gabarito diferente. Então cada dispositivo pode adquirir uma mira em um objeto que você possua mira, ignorando as restrições de alcance."""
        "Homing Torpedoes":
           display_name: """Torpedos Teleguiados"""
           text: """<strong>Ataque [%LOCK%]:</strong> Gaste 1 %CHARGE%.%LINEBREAK%Depois que você declarar o defensor, o defensor pode escolher sofrer um dano %CRIT%. Se o fizer, pule as etapas de Dados de Ataque e Dados de Defesa e o ataque é tratado como acerto."""

       #Torre
        "Ion Cannon Turret":
           display_name: """Torre de Canhão de Íons"""
           text: """<strong>Ataque: </strong> Se este ataque acertar, gaste um resultado %HIT% ou %CRIT% para fazer o defensor sofrer 1 dano %HIT%. Todos os resultados %HIT%/%CRIT% restantes causam fichas de íon ao invés de dano."""
        "Dorsal Turret":
           display_name: """Torre Dorsal"""
           text: """<strong>Ataque</strong>"""

       #Título
        "Andrasta":
           display_name: """Andrasta"""
           text: """ """
        "B6 Blade Wing Prototype":
           display_name: """Protótipo B6 Blade Wing"""
           text: """ """
        "B6 Blade Wing Prototype (Epic)":
           display_name: """Protótipo B6 Blade Wing (Épico)"""
           text: """<strong>Ataque [%LOCK%]: </strong>Receba 1 ficha de íon para realizar este ataque. Se este ataque acertar, o defensor sofre 1 dano %HIT%/%CRIT% adicional para cada resultado igual não cancelado depois do primeiro."""
        "Black One":
           display_name: """Black One"""
           text: """Depois que você realizar uma ação %SLAM% perca 1 %CHARGE%. E então você pode receber 1 ficha de íon para remover 1 ficha de desarme.%LINEBREAK%Se sua %CHARGE% estiver inativa, você não pode realizar a ação %SLAM%."""
        "Ghost":
           display_name: """Ghost"""
           text: """Você pode acoplar 1 transporte de ataque ou um transporte classe Sheathipede.%LINEBREAK%Suas naves acopladas podem destacar apenas pelas suas guias traseiras."""
        "Havoc":
           display_name: """Havoc"""
           text: """  """
        "Hound's Tooth":
           display_name: """Hound's Tooth"""
           text: """1 Z-95-AF4 headhunter pode acoplar em você."""
        "IG-2000":
           display_name: """IG-2000"""
           text: """Você possui a habilidade de cada outra nave amiga com a melhoria <strong>IG-2000</strong>."""
        "Kaz's Fireball":
           display_name: """Fireball do Kaz"""
           text: """<strong>Preparação: </strong> Quando você resolver o <strong>Explosão com Asas</strong>, você pode procurar o baralho de dano e escolha uma carta de dano do tipo <strong>Nave</strong>; você recebe essa carta. Então, embaralhe o baralho de dano.%LINEBREAK%Você pode realizar ações de suas cartas de dano mesmo se estiver ionizado."""
        "Lando's Millennium Falcon":
           display_name: """Millennium Falcon do Lando"""
           text: """1 Nave de Fuga pode acoplar em você.%LINEBREAK%Quando você tiver uma Nave de Fuga acoplada, você pode tratar os escudos dela como se estivessem na sua carta de nave.%LINEBREAK%Quando você realiza um ataque primário contra uma nave estressada, role 1 dado de ataque adicional.%LINEBREAK%<i>Errata (desde o RR 1.1.0): Substituído “gastar" por "tratar"</i>"""
        "Marauder":
           display_name: """Marauder"""
           text: """Quando você realizar uma taque primário %REARARC% você pode rerrolar 1 dado de ataque."""
        "Millennium Falcon":
           display_name: """Millennium Falcon"""
           text: """Quando vcê defender, se você estiver desviando, você pode rerrolar 1 dado de defesa."""
        "Mist Hunter":
           display_name: """Mist Hunter"""
           text: """ """
        "Moldy Crow":
           display_name: """Moldy Crow"""
           text: """Ganhe uma arma primária %FRONTARC% com valor "3".%LINEBREAK%Durante a Fase Final, não remova até 2 fichas de foco."""
        "Outrider":
           display_name: """Outrider"""
           text: """Quando você realizar um ataque que está obstruído por um obstáculo, o defensor rola 1 dado de defesa a menos.%LINEBREAK%Depois que você executar completamente uma manobra, se você se moveu através ou sobrepôs um obstáculo, você pode remover 1 de suas fichas vermelhas ou laranjas.%LINEBREAK% <i>Errata (desde RR 1.0.2): alterado "ataque obstruído" para "um ataque que está obstruído por um obstáculo"</i>"""
        "Phantom":
           display_name: """Phantom"""
           text: """Você pode acoplar em alcance 1."""
        "Punishing One":
           display_name: """Punishing One"""
           text: """Quando você realizar um ataque primário, se o defensor estiver em seu %FRONTARC%, role 1 dado de ataque adicional."""
        "Razor Crest":
           display_name: """Razor Crest"""
           text: """<strong>Preparação: </strong> Coloque 1 melhoria %ILLICIT% não limitada virada para baixo sob esta carta.%LINEBREAK% Durante a Fase de Sistema, você pode revelar esta melhoria %ILLICIT% e equipá-la como se ela estivesse equipada durante a Preparação (sem pagar seu custo em pontos)."""
        "Rey's Millennium Falcon":
           display_name: """Millennium Falcon da Rey"""
           text: """Se você possuir 2 fichas de estresse ou menos, você pode realizar manobras Loop de Segnor vermelho [%SLOOPLEFT% ou %SLOOPRIGHT%] e realizar as ações %BOOST% e %ROTATEARC% mesmo se estiver estressado."""
        "ST-321":
           display_name: """ST-321"""
           text: """Depois que você realizar uma ação %COORDINATE%, você pode escolher uma nave inimiga em alcance 0-3 da nave que você coordenou. Se o fizer, adquira uma mira nessa nave inimiga, ignorando restrições de alcance."""
        "Scimitar":
           display_name: """Scimitar"""
           text: """<strong>Preparação: </strong> Depois do passo Posicionar Forças, você pode camuflar.%LINEBREAK%Depois que você descamuflar, você pode escolher uma nave inimiga em seu %BULLSEYEARC%. Se fizer isso, ela recebe 1 ficha de interferência."""
        "Shadow Caster":
           display_name: """Shadow Caster"""
           text: """Depois que você realizar um ataque que acertou, se o defensor estiver em seu %SINGLETURRETARC% e seu %FRONTARC%, o defensor recebe uma ficha de tração."""
        "Slave I (Separatist)":
           display_name: """Slave I"""
           text: """Quando você realizar um ataque %FRONTARC%, se você estiver no %FULLREARARC% do defensor, você pode mudar 1 resultado %HIT% para um resultado %CRIT%."""
        "Slave I":
           display_name: """Slave I"""
           text: """Depois que você revelar uma manobra curva [%TURNLEFT% ou %TURNRIGHT%] ou curva suave [%BANKLEFT% ou %BANKRIGHT%] você pode mudar seu disco para outra manobra de mesma velocidade e sentido, para outra direção.%LINEBREAK%<i>Errata (desde RR 1.0.2): removido "você pode receber 1 ficha de estresse. Se você fizer isso,"</i>"""
        "Virago":
           display_name: """Virago"""
           text: """Durante a fase final, você pode gastar 1 %CHARGE% para realizar uma ação %BOOST% vermelha."""
        "Soulless One":
           display_name: """Soulless One"""
           text: """Quando você defender, se o atacante estiver forca do seu arco de tiro, você pode rerrolar 1 dado de defesa."""
        "Xanadu Blood":
           display_name: """Xanadu Blood"""
           text: """ """

      #Tripulação
        "0-0-0":
           display_name: """0-0-0"""
           text: """No começo da Fase de Engajamento, você pode escolher 1 nave inimiga em alcance 0-1. Se o fizer,  você recebe 1 ficha de cálculo a menos que a nave inimiga escolha receber 1 ficha de estresse."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """Quando você realizar um ataque, depoisd e rolar dados de ataque, você pode nomear um tipo de ficha verde. Se você o fizer, receba 2 fichas de íon, durante este ataque, o defensor não pode gastar fichas do tipo nomeado."""
        "Aayla Secura":
           display_name: """Aayla Secura"""
           text: """Quando uma nave inimiga em seu %BULLSEYEARC% realiza um ataque, se o defensor for uma nave amiga e estiver em alcnace 0-2, o defensor pode mudar 1 resultado em branco para um resultado %FOCUS%."""
        "Agent Kallus":
           display_name: """Agente Kallus"""
           text: """<strong>Preparação: </strong> deopis de posicionar as forças, atribua a condição <strong>Caçado</strong> a uma nave inimiga.%LINEBREAK%Quando você realizar um ataque contra a nave com a condição <strong>Caçado</strong>, você pode mudar 1 de seus resultados %FOCUS% para um resultado %HIT%.%LINEBREAK%<i>Errata (desde RR 1.1.0)</i>:"Adicionado depois de posicionar as forças,"</i>"""
        "Agent Terex":
           display_name: """Agente Terex"""
           text: """<strong>Preparação: </strong> Equipe este lado para cima e coloque 3 fichas de cálculo nesta carta.%LINEBREAK%No começo da Fase de Engajamento, você pode escolher uma nave amiga em alcance 0-3 e remover 1 ficha de cálculo desta carta para que aquela carta ganhe uma ficha igual. Então, se não houver fichas de cáculo nesta carta, vire-a. %LINEBREAK%<strong>Ciborgue:</strong> Durante a Fase de Sistema, role 1 dado de ataque. em um resultado %HIT% ou %CRIT%, receba 1 ficha de cálculo. Caso contrário, receba 1 ficha de interferência.%LINEBREAK%<strong>Ação: </strong>Transfira 1 ficha de cálculo ou de interferência para uma nave em alcance 0-3."""
        "Ahsoka Tano (Crew)":
           display_name: """Ahsoka Tano"""
           text: """Após você realizar completamente uma manobra, você pode gastar 1 %FORCE% para escolher 1 nave amiga em seu %FULLREARARC% em alcance 1-2. Se você o fizer, aquela nave pode realizar uma ação %FOCUS% vermelha, mesmo se estiver estressada."""
        "Prime Minister Almec":
           display_name: """Primeiro Ministro Almec"""
           text: """<strong>Preparação: </strong>Equipe este lado para cima.%LINEBREAK%Depois que uma nave amiga em alcance 0-2 revelar uma manobra branca, se ela não possuir fichas verdes, ela pode receber 1 ficha de estresse para receber 1 ficha de cálculo.%LINEBREAK%Durante a Fase Final, se você possuir 2 ou mais fichas de estresse, vire essa carta. %LINEBREAK% <strong>Almec, o Fantoche de Maul</strong> %LINEBREAK% Depois que uma nave amiga em alcance 0-2 realizar completamente uma manobra vermelha, essa nave pode realizar uma ação %CALCULATE% OU %FOCUS% da sua barra de ações, mesmo se estiver estressada."""
        "Amilyn Holdo":
           display_name: """Amilyn Holdo"""
           text: """Antes de você engajar, você pode escolher outra nave amiga em alcnace 1-2. Você pode transferir para aquela nave 1 ficha de 1 tipo que ela não tenha. Aquela nave pode transferir para você 1 ficha de um tipo que você não tenha."""
        "Baze Malbus":
           display_name: """Baze Malbus"""
           text: """Quando você realizar uma ação %FOCUS%, você pode tratá-la como vermelha. Se o fizer, receba 1 ficha de foco adicional para cada nave inimiga em alcance 0-1, até um máximo de 2."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """<strong>Preparação: </strong>Comece na reserva.%LINEBREAK%No fim da Preparação, se coloque em alcance 0 de um obstáculo e além do alcance 3 de qualquer nave inimiga."""
        "Bo-Katan Kryze (Republic/Separatist)":
           display_name: """Bo-Katan Kryze"""
           text: """Quando você realizar um ataque, se você estiver em alcance 0-1 do defensor, você pode rerrolar 1 dado de ataque."""
        "Bo-Katan Kryze (Rebel/Scum)":
           display_name: """Bo-Katan Kryze"""
           text: """Depois que você realizar um ataque, se o defensor foi destruído, cada nave amiga em alcance 0-2 pode remover 1 ficha vermelha ou laranja."""
        "C-3PO":
           display_name: """C-3PO"""
           text: """Antes de rolar dados de defesa, você pode gastar 1 ficha de cálculo para chutar um númer 1 ou maior. Se você o fizer e rolar exatamente a mesma quantidade de resultados %EVADE%, adicione 1 resultado %EVADE%.%LINEBREAK%Depois que você realizar a ação %CALCULATE%, receba 1 ficha de cálculo."""
        "C-3PO (Resistance)":
           display_name: """C-3PO"""
           text: """Quando você coordenar, você pode escolher naves amigas além do alcance 2 se elas possuírem %CALCULATE% em sua barra de ações.%LINEBREAK%Depois qeu você realizar a ação %CALCULATE% ou %COORDINATE%, receba 1 ficha de cálculo."""
        "C-3PO (Republic)":
           display_name: """C-3PO"""
           text: """Quando você defender, se você estiver calculando, você pode rerrolar 1 dado de defesa.%LINEBREAK%Depois que você realizar uma ação de %CALCULATE%, receba 1 ficha de cálculo."""
        "Cad Bane":
           display_name: """Cad Bane"""
           text: """Depois que você soltar ou lançar um dispositivo, você pode realizar uma ação %BOOST% vermelha."""
        "Captain Hark":
           display_name: """Captão Hark"""
           text: """Depois que você executar completamente uma manobra vermelha, se você não estiver focado, você pode gastar 1 %CHARGE% para receber 1 ficha de foco."""
        "Captain Phasma":
           display_name: """Captã Phasma"""
           text: """No final da Fase de Engajamento, cada nave inimiga em alcance 0-1 que não esteja estressada recebe 1 ficha de estresse."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """Durante a Fase de Sistema, você pode escolher 1 nave inimiga em alcance 1-2 e tentar adivinhar a velocidade e direção da manobra e olhar o disco de manobra daquela nave. Se a velocidade e direção coincidirem com o seu palpite, você pode mudar seu disco para outra manobra."""
        "Chancellor Palpatine":
           display_name: """Chancellor Palpatine"""
           text: """Chanceler Palpatine:%LINEBREAK%<strong>Preparação:</strong> Equipe este lado para cima.%LINEBREAK%Depois que você defender, se o atacante estiver em alcance 0-2, você pode gastar 1 %FORCE%. Se você fizer isso, o atacante recebe 1 ficha de estresse.%LINEBREAK%Durante a Fase Final, você pode virar esta carta.%LINEBREAK%Darth Sidious%LINEBREAK%Depois que você realizar uma ação %COORDINATE% roxa, a nave que você coordenou recebe 1 ficha de estresse. E Então, ela recebe 1 ficha de foco ou recupera 1 %FORCE%."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """No começo da fase de engajamento, você pode gastar 2 %CHARGE% para consertar 1 carta de dano virada para cima."""
        "Chewbacca (Scum)":
           display_name: """Chewbacca"""
           text: """No começo da Fase Final, você pode gastar 1 ficha de foco para consertar 1 de suas cartas de dano viradas para cima."""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca"""
           text: """<strong>Preparação: </strong>Perca 1 %CHARGE%.%LINEBREAK%Depois que uma nave amiga em alcance 0-3 receber 1 carta de dano, recupere 1  %CHARGE%.%LINEBREAK%Quando você realizar um ataque, você pode gastar 2 %CHARGE% para mudar 1 resultado %FOCUS% para um resultado %CRIT%."""
        '"Chopper" (Crew)':
           display_name: """“Chopper”"""
           text: """Durante o passo de Realizar Ação, você pode realizar 1 ação, mesmo se estiver estressado. Depois que você realizar uma ação estressado, sofra 1 dano %HIT% a menos que você exponha 1 de suas cartas de dano."""
        "Ciena Ree":
           display_name: """Ciena Ree"""
           text: """Depois que você realizar uma ação %COORDINATE%, se a nave que você coordenou realizaou uma ação %BARRELROLL% ou %BOOST%, ela pode receber 1 ficha de estresse para girar 90º."""
        "Cikatro Vizago":
           display_name: """Cikatro Vizago"""
           text: """Durante a Fase Final, você pode escolher 2 melhorias %ILLICIT% equipadas em naves amigas em alcance 0-1. Se o fizer, você pode trocar essas melhorias entre si.%LINEBREAK%<strong>Fim do Jogo: </strong>Devolva todas as melhorias %ILLICIT% a suas naves originais."""
        "Clan Wren Commandos":
           display_name: """Comandos do Clã Wren"""
           text: """Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para soltar um remoto Equipe de Comando usando o gabarito [1 %STRAIGHT%]. Você pode colocar este dispositivo usasndo suas guias frontais ou traseiras.%LINEBREAK%A %CHARGE% dessa carta não pode ser recuperada."""
        "Death Watch Commandos":
           display_name: """Comandos do Olho da Morte"""
           text: """Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para soltar um remoto Equipe de Comando usando o gabarito [1 %STRAIGHT%]. Você pode colocar este dispositivo usasndo suas guias frontais ou traseiras.%LINEBREAK%A %CHARGE% dessa carta não pode ser recuperada."""
        "Nite Owl Commandos":
           display_name: """Comandos das Corujas Noturnas"""
           text: """Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para soltar um remoto Equipe de Comando usando o gabarito [1 %STRAIGHT%]. Você pode colocar este dispositivo usasndo suas guias frontais ou traseiras.%LINEBREAK%A %CHARGE% dessa carta não pode ser recuperada."""
        "Imperial Super Commandos":
           display_name: """Super Comandos Imperiais"""
           text: """Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para soltar um remoto Equipe de Comando usando o gabarito [1 %STRAIGHT%]. Você pode colocar este dispositivo usasndo suas guias frontais ou traseiras.%LINEBREAK%A %CHARGE% dessa carta não pode ser recuperada."""
        "Mandalorian Super Commandos":
           display_name: """Super Comandos Mandalorianos"""
           text: """Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para soltar um remoto Equipe de Comando usando o gabarito [1 %STRAIGHT%]. Você pode colocar este dispositivo usasndo suas guias frontais ou traseiras.%LINEBREAK%A %CHARGE% dessa carta não pode ser recuperada."""
        "Commander Malarus":
           display_name: """Comandante Malarus"""
           text: """<strong>Preparação: </strong>Equipe este lado para cima.%LINEBREAK%Quando uma nave amiga não limitada em alcance 0-1 realiza um ataque primário, essa nave pode rerrolar 1 resultado em branco. Se ela fizer isso e o ataque não acertar, você <strong>deve</strong> virar essa carta.%LINEBREAK%<strong>Aperfeiçoada:</strong> Quando você realizar um ataque, se o defensor estiver em seu %BULLSEYEARC%, você <strong>deve</strong> converter todos seus resultados %FOCUS% para resultados %HIT% e receber 1 ficha de estresse. Então, se você possuir 2 ou mais fichas de estresse, sofra 1 dano %HIT%."""
        "Commander Pyre":
           display_name: """Comandante Pyre"""
           text: """<strong>Preparação: </strong>Depois que posicionar forças, escolha uma nave inimiga, ela recebe 2 fichas de estresse.%LINEBREAK%Quando você defender, se o atacante estiver estressado, você pode rerrolar 1 dado de defesa."""
        "Count Dooku":
           display_name: """Conde Dookan"""
           text: """Durante um ataque, Antes que uma nave em alcance 0-2 role dado de ataque ou defesa, se todas as suas %FORCE% estiverem ativas, você pode gastar 1 %FORCE% e nomear um resultado. Se a rolagem não conter o restulado nomeado, a nave deve mudar 1 dado para esse resultado.%LINEBREAK%<i>Errata (desde RR 1.4): Adicionado "Durante um ataque,"</i>"""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """No começo da Fase de Engajamento, você pode escolher 1 nave em seu arco de tiro em alcance 0-2 e gastar 1 %FORCE%. Se você fizer isso, essa nave sofre 1 dano %HIT% a menos que escolha remover 1 ficha verde."""
        "Death Troopers":
           display_name: """Death Troopers"""
           text: """Durante a Fase de ativação, naves inimigas em alcance 0-1 não podem remover fichas de estresse."""
        "Director Krennic":
           display_name: """Director Krennic"""
           text: """<strong>Preparação: </strong>Antes de posicionar as forças, atribua a condição <strong>Protótipo Otimizado</strong> a outra nave amiga."""
        "Emperor Palpatine":
           display_name: """Imperador Palpatine"""
           text: """Quando outra nave amiga defender ou realizar um ataque, você pode gastar 1 %FORCE% para modificar 1 dado dela, como se se aquela nave tivesse gasto 1 %FORCE%."""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """Antes que uma nave amiga em alcance 0-2 engaje, se a manobra revelada dela for 1 velocidade maior ou mais e houver 1 nave inimiga no %FRONTARC% dela em alcance 1, essa nave amiga pode remover 1 ficha vermelha que não seja uma mira."""
        '"Fives"':
           display_name: """“Fives”"""
           text: """Depois que você realizar um ataque que errou, se a iniciativa do defensor for igual ou maior que a sua iniciativa, coloque 1 ficha de foco ou desvio nesta carta.%LINEBREAK%Antes de você engajar, você pode remover 1 ficha desta carta para receber 1 ficha igual."""
        "Freelance Slicer":
           display_name: """Invasor Independente"""
           text: """Quando você defender, antes dos dados de ataque serem rolados, você pode gastar 1 mira que você possuir no atacante para rolar 1 dado de ataque. Se você fizer isso, o atacante recebe 1 ficha de interferência. Então, em um resultado %HIT% ou %CRIT%, receba 1 ficha de interferência."""
        "GA-97":
           display_name: """GA-97"""
           text: """<strong>Preparação: </strong>Antes de posicionar as forças, você pode gastar 3-5 %CHARGE%. Se você fizer isso, escolha outra nave amiga e atribua a condição <strong>É a Resistência</strong> a ela."""
        "Gamut Key":
           display_name: """Gamut Key"""
           text: """No começo da Fase Final, você pode gastar 2 %CHARGE% para escolher uma nave em alcance 0-1 com 1 ou mais fichas circulares. Durante a Fase Final, fichas circulares não são removidas dessa nave."""
        "Gar Saxon":
           display_name: """Gar Saxon"""
           text: """Quando uma unidade amiga em alcance 1-3 com uma iniciativa 4 ou menor realizar um ataque contra um defensor em que você possura mira, o atacante pode mudar 1 resultado %FOCUS% para um resultado %HIT%."""
        "General Grievous":
           display_name: """General Grievous"""
           text: """Quando você defender, depois da etapa de Neutralizar Resultados, se houver 2 ou mais resultados %HIT%/%CRIT%, você pode gastar 1 %CHARGE% para cancelar 1 resultado %HIT% ou %CHRIT%.%LINEBREAK%Depois que uma nave amiga for destruída, recupere 1 %CHARGE%."""
        "General Hux":
           display_name: """General Hux"""
           text: """Quando você realiza uma ação %COORDINATE% branca, você pode tratá-la como vermelha. Se você fizer isso, você pode coordenar até 2 naves adicionais do mesmo tipo, e cada nave que você coordenar deve realizar a mesma ação, tratando-a como vermelha."""
        "Ghost Company":
           display_name: """Ghost Company"""
           text: """Depois que você realizar um ataque primário, se você estiver focado, você pode realizar um ataque %SINGLETURRETARC% contra uma nave que você não tenha atacado nesta rodada como um ataque bônus."""
        'GNK "Gonk" Droid':
           display_name: """GNK “Gonk” Droide"""
           text: """<strong>Preparação: </strong>Perca 1 %CHARGE%.%LINEBREAK%<strong>Ação: </strong>Recupere 1 %CHARGE%.%LINEBREAK%strong>Ação: </strong>Gaste 1 %CHARGE% para recuperar 1 escudo."""
        "Grand Inquisitor":
           display_name: """Grand Inquisitor"""
           text: """Depois que uma nave inimiga em alcance 0-2 revelar seu disco, você pode gastar 1 %FORCE% para realizar 1 ação branca em sua barra de ações, tratando essa ação como vermelha."""
        "Grand Moff Tarkin":
           display_name: """Grand Moff Tarkin"""
           text: """Durante a Fase de Sistema, você pode gastar 2 %CHARGE%. Se você o fizer, todas as naves amigas podem adquirir uma mira em uma nave que você tenha mirado."""
        "Greef Karga":
           display_name: """Greef Karga"""
           text: """Você pode coordenar naves aliadas como se fossem naves amigas.%LINEBREAK%Depois que você coordenar uma nave, ela pode adquirir uma mira em um objeto que você tenha mirado."""
        "Han Solo (Resistance)":
           display_name: """Han Solo"""
           text: """Depois que você realizar uma ação %EVADE%, receba fichas de desvio adicionais igual a quantidade de naves inimigas em alcance 0-1."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """Você pode executar manobras vermelhas mesmo se estiver estressado, Depois que você realizar completamente uma manobra vermelha, se você possuir 3 ou mais fichas de estresse, remova 1 ficha de estresse e sofra 1 dano %HIT%."""
        "Hondo Ohnaka":
           display_name: """Hondo Ohnaka"""
           text: """<strong>Ação: </strong>Escolha 2 naves em alcane 1-3 de você que sejam amigas entre si. Coordene uma das naves escolhidas, e interfira na outra, ignorando restrições de alcance."""
        "IG-11":
           display_name: """IG-11"""
           text: """<strong>Setup:</strong> <strong>Preparação: </strong>Equipe este lado para cima.%LINEBREAK%Quando for receber uma carta de dano virada para cima, ao invés disso, você <strong>deve</strong> colocar 1 marcador de fuso nesta carta e receber 1 ficha de cálculo. Então, se houver 2 marcadores de fuso nesta carta, vire-a. %LINEBREAK% <strong>IG-11 (Protocolo Anti-Captura)</strong> %LINEBREAK% Durante a Fase Final, remova 1 marcador de fuso desta carta. Então, se esta carta não possuir marcadores de fuso, você é destruído e cada nave em alcance 0-1 sofre 1 dano %CRIT%.%LINEBREAK%<strong>Ação: </strong>Coloque 1 marcador de fuso nesta carta."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """Você possui a habilidade de piloto de outras naves amigas com a melhoria IG-2000.%LINEBREAK%Depois que você realizar uma ação %CALCULATE% receba 1 ficha de cálculo."""
        "Informant":
           display_name: """Informante"""
           text: """<strong>Preparação: </strong>Depois de posicionar forças, escolha 1 nave inimiga e atribua a condição <strong>Dispositivo de Escuta</strong> a ela."""
        "ISB Slicer":
           display_name: """Invasor do BSI"""
           text: """Durante a Fase Final, naves inimigas em alcance 1-2 não podem remover fichas de interferência."""
        "Jabba the Hutt":
           display_name: """Jabba the Hutt"""
           text: """Durante a Fase Final, você pode escolher 1 nave amiga em alcance 0-2 e gastar 1 %CHARGE%. Se você fizer isso, aquela nave recupera 1 %CHARGE% em uma de suas melhorias %ILLICIT% equipadas."""
        "Jango Fett":
           display_name: """Jango Fett"""
           text: """Quando você defender ou realizar um ataque, você pode gastar uma mira que você tenha na nave inimiga apra mudar 1 dos resultados %FOCUS% da nave inimiga para um resultado em branco."""
        "Jyn Erso":
           display_name: """Jyn Erso"""
           text: """Quando uma nave amiga em alcance 0-3 for receber 1 ficha de foco, ela pode, ao invés disso, receber 1 ficha de desvio."""
        "K-2SO":
           display_name: """K-2SO"""
           text: """Durante a Fase de Sistema, você pode escolher uma nave amiga em alcance 0-3. Essa nave recebe 1 ficha de cálculo e 1 ficha de estresse."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """Depois que uma nave amiga em alcance 0-2 executa completamente uma manobra branca, você pode gastar 1 %FORCE% para remover 1 ficha de estresse dessa nave."""
        "Kaydel Connix":
           display_name: """Kaydel Connix"""
           text: """Depois que você revelar seu disco de manobras, você pode mudar seu disco para uma manobra basica uma velocidade maior. Quando você executar essa manobra, aumente sua dificuldade."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """No começo da Fase Final, você pode escolher 1 nave inimiga em alcance 0-2 em seu arco de tiro. Se fizer isso, aquela nave não remove suas fichas de tração."""
        "Kit Fisto":
           display_name: """Kit Fisto"""
           text: """No começo da Fase de Engajamento, você pode escolher 1 nave amiga em alcance 0-1 e gastar 1 %FORCE%. Se você fizer isso, ela pode realizar uma ação %EVADE% vermelha."""
        "Korkie Kryze":
           display_name: """Korkie Kryze"""
           text: """Depois que uma nave amiga em seu %FULLFRONTARC% em alcance 1-2 se torna o defensor, você pode transferir uma ficha verde para ela.%LINEBREAK%Quando uma nave amiga em seu %FULLFRONTARC% em alcance 1-2 defende, se você obstruir o ataque, o defensor rola 1 dado de defesa adicional."""
        "Korr Sella":
           display_name: """Korr Sella"""
           text: """Depois que você completar uma manobra azul, remova todas as suas fichas de estresse."""
        "Kuiil":
           display_name: """Kuiil"""
           text: """<strong>Ação: </strong>Role 1 dado de ataque para cada carta de dano que você tiver. Para cada resultado %HIT%, conserte 1 carta de dano do tipo <strong><i>Nave</i></strong>, então, para cada resultado %CRIT% conserte 1 carta de dano virada para baixo. Para cada resultado em branco, remova 1 ficha laranja, e para cada resultado %FOCUS%, receba 1 ficha de foco."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """<strong>Ação: </strong>Escolha 1 nave inimiga em alcance 1-3. Se você fizer isso, gaste 1 %FORCE% para atribuir a condição <strong>Contemple o Lado Sombrio</strong> a essa nave."""
        "L3-37":
           display_name: """L3-37"""
           text: """<strong>Preparação: </strong>Equipe este lado para cima.%LINEBREAK%Quando você defender, você pode virar esta carta. Se o fizer, o atacante deve rerrolar todos os dados de ataque.%LINEBREAK%<strong>Programação da L3-37:</strong> Se você não possuir escudos ativos, reduza a dificuldade das suas manobras curva [%BANKLEFT% e %BANKRIGHT%]."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """<strong>Ação: </strong> Role 2 dados de defesa. Para cada resultado %FOCUS% receba 1 ficha de foco. Para cada resultado %EVADE% receba 1 ficha de desvio. Se ambos os resultados forem em branco, o jogador adversário escolhe foco ou desvio. Você recebe 1 ficha daquele tipo."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian"""
           text: """Depois que você rolar dados, você pode gastar 1 ficha verde para rerrolar até 2 dos seus resultados."""
        "Larma D'Acy":
           display_name: """Larma D'Acy"""
           text: """Quando você possuir 2 fichas de estresse ou menos, você pode realizar as ações %REINFORCE%, %COORDINATE% e %JAM%, mesmo se estiver estressado.%LINEBREAK%Quando você realizar uma ação %REINFORCE%, %COORDINATE% ou %JAM% branca, se você estiver estressado, trate essa ação como vermelha."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """Quando você defender, se o atacante estiver estressado, você pode remover 1 ficha de estresse do atacante para mudar 1 de seus resultados branco/%FOCUS% para um resultado %EVADE%."""
        "Leia Organa":
           display_name: """Leia Organa"""
           text: """No começo da Fase de Ativação, você pode gastar 3 %CHARGE%. Durante esta fase, todas as naves amigas reduzem a dificuldade de suas manobras vermelhas."""
        "Leia Organa (Resistance)":
           display_name: """Leia Organa"""
           text: """Depois que uma nave amiga revelar uma manobra que não seja [0 %STOP%], você pode gastar 1 %FORCE%. Se fizer isso, a nave escolhida reduz a dificuldade daquela manobra.%LINEBREAK%<i>Errata (desde RR 1.4): Adicionada restrição no tipo de manobra)</i>"""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """Depois que você defender, se o ataque acertou, você pode adquirir uma mira no atacante."""
        "Maul":
           display_name: """Maul"""
           text: """Depois que você sofrer dano, você pode receber 1 ficha de estresse para recuperar 1 %FORCE%.%LINEBREAK%Você pode equipar melhorias "Lado Sombrio"."""
        "Minister Tua":
           display_name: """Ministra Tua"""
           text: """No começo da Fase de Engajamento, se você estiver danificado, você pode realizar uma ação %REINFORCE% vermelha."""
        "Moff Jerjerrod":
           display_name: """Moff Jerjerrod"""
           text: """Durante a Fase de Sistema, você pode gastar 2 %CHARGE%. Se o fizer, escolha o gabarito [1 %BANKLEFT%],  ]1 %STRAIGHT%] ou [1 %BANKRIGHT%]. Todas as naves amigas podem realizar uma ação %BOOST% vermelha usando aquele gabarito."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """Reduza a dificuldade das suas manobras curva [%BANKLEFT% e %BANKRIGHT%]."""
        "Novice Technician":
           display_name: """Técnico Novato"""
           text: """At the end of the round, you may roll 1 attack die to repair 1 faceup damage card. Then on a %HIT% result, expose 1 damage card."""
        "Obi-Wan Kenobi":
           display_name: """Obi-Wan Kenobi"""
           text: """Depois que uma nave amiga em alcance 0-2 gastar uma ficha de foco ou desvio, você pode gastar 1 %FORCE%. Se fizer isso, aquela nave recebe 1 ficha de foco."""
        "Peli Motto":
           display_name: """Peli Motto"""
           text: """Durante a Fase de Sistema, você pode realizar uma ação em uma de suas cartas de dano, mesmo se estiver estressado.%LINEBREAK%Depois que você reparar uma carta virada pra cima do tipo <strong><i>Nave</i></strong>, você pode rolar 1 dado de ataque. Em um resultado %HIT%, repare outra carta virada para cima do tipo <strong><i>Nave</i></strong>. Em um resultado %CRIT%, exponha 1 carta de dano."""
        "Perceptive Copilot":
           display_name: """Co-Piloto Perspicaz"""
           text: """Depois que você realizar uma ação %FOCUS%, receba 1 ficha de foco."""
        "Petty Officer Thanisson":
           display_name: """Suboficial Thanisson"""
           text: """Durante a Fase de Ativação ou Engajamento, depois que uma nave inimiga em seu %FRONTARC% em alcance 0-1 receber uma ficha vermelha ou laranja, se você não estiver estressado, você pode receber 1 ficha de estresse. Se você fizer isso, aquela nave recebe 1 ficha adicional do tipo que recebeu."""
        "Plo Koon":
           text: """No começo da Fase Final, se você estiver reforçando, você pode escolher 1 nave amiga em alcance 0 ou em seu %LEFTARC% ou %RIGHTARC% em alcance 1. Essa nave remove 1 ficha de exaustão ou desgaste, ou conserta 1 carta de dano virada para cima."""
        "Pre Vizsla":
           display_name: """Pre Vizsla"""
           text: """Quando você realizar uma ação %COORDINATE%, você pode escolher um remoto %CREW% amigo ao invés de uma nave amiga. Ao invés de realizar uma ação, este remoto realoca para frente usando o gabarito [1 %TURNLEFT%], [1 %TURNRIGHT%] ou [2 %STRAIGHT%]."""
        "Protectorate Gleb":
           text: """Depois que você coordenar uma nave amiga, você pode trasnferir 1 ficha laranja ou vermelha para a nave que você coordenou. %LINEBREAK% <i>Errata (desde RR: 1.2.0 [06/14/2021]): Adicionada restrição para naves amigas</i>"""
        "PZ-4CO":
           display_name: """PZ-4CO"""
           text: """No fim da Fase de Ativação, você pode escolher 1 nave amiga em alcance 1-2. Se você fizer isso, transfira 1 ficha de cálculo para aquela nave. Se sua manobra revelada for azul, você pode, ao invés disso, transferir 1 ficha de foco."""
        "Qi'ra":
           display_name: """Qi'ra"""
           text: """Quando você se mover e realizar ataques, você ignora obstáculos em que possua uma mira."""
        "R2-D2 (Crew)":
           display_name: """R2-D2"""
           text: """Durante a Fase Final, se você estiver danificado e não possuir escudos ativos, você pode rolar 1 dado de ataque para recuperar 1 escudo. Em um resultado %HIT%, exponha 1 de suas cartas de dano."""
        "Rook Kast":
           display_name: """Rook Kast"""
           text: """Depois que você realizar uma ação vermelha, você pode receber 1 ficha de desgaste.%LINEBREAK%Quando você realizar um ataque, se você estiver desgastado, você pode mudar 1 de seus resultados em branco ou %FOCUS% para um resultado %HIT%."""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """Quando você defender ou realizar um ataque, você pode gastar 1 de seus resultados para adquirir uma mira na nave inimiga."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """<strong>Preparação: </strong>Posicione 1 ficha de íon, 1 ficha de interferência, 1 ficha de estresse e 1 ficha de tração nesta carta.%LINEBREAK%Depois que uma nave sofrer o efeito de uma bomba amiga, você pode remover 1 fica de íon, interferência, estresse ou tração desta carta. Se o fizer, aquela nave recebe uma ficha igual."""
        "Satine Kryze":
           display_name: """Satine Kryze"""
           text: """No começo da Fase de Engajamento, você pode gastar 2 %CHARGE%. Se você fizer isso, cada nave amiga pode escolher receber 1 ficha de exaustão e 1 ficha de foco, ou receber 1 ficha de desarme e 1 ficha de desvio."""
        "Savage Opress":
           display_name: """Savage Opress"""
           text: """Depois que uma nave amiga em seu %FRONTARC% em alcance 1-2 receber uma ficha de estresse ou desgaste, você pode gastar 1 %FORCE%. Se fizer isso, aquela nave recebe 1 ficha de foco."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """Quando vê realizar um ataque, você pode sofrer 1 dano %HIT% para mudar todos os seus resultados %FOCUS% para resultados %CRIT%."""
        "Seasoned Navigator":
           display_name: """Navegador Experiente"""
           text: """Depois que você revelar seu disco de manobras, você pode colocar seu disco em outra manobra que não seja vermelha da mesma velocidade. Quando realizar essa manobra, aumente sua dificuldade."""
        "Seventh Sister":
           display_name: """Seventh Sister"""
           text: """Quando uma nave inimiga em alcance 0-1 for receber uma ficha de estresse, você pode gastar 1 %FORCE% para que ela receba 1 ficha de interferência ou 1 ficha de tração, ao invés da ficha de estresse."""
        "Supreme Leader Snoke":
           display_name: """Supreme Leader Snoke"""
           text: """Durante a Fase de Sistema, você pode escolher qualquer quantidade de naves inimigas além do alcance 1. Se você fizer isso, gaste a mesma quantidade de %FORCE% para virar o disco de manobras de cada uma dessas naves para cima."""
        "Tal Merrik":
           display_name: """Tal Merrik"""
           text: """<strong>Preparação: </strong>Antes de posicionar as forças, escolha 1 nave inimiga e atribua a condição <strong>Falso Amigo</strong> a ela.%LINEBREAK%<strong>Ação: </strong> Se a condição <strong>Falso Amigo</strong> não estiver atribuida a nenhuma nave, atribua a condição a uma nave inimiga em seu %FRONTARC% em alcance 0-2."""
        "Tactical Officer":
           display_name: """Oficial Tático"""
           text: """<i class = flavor_text>No Caos de uma batalha estelar, uma ordem pode significar a diferença entre uma vitória e um massacre.</i>"""
        "The Child":
           display_name: """A Criança"""
           text: """<strong>Preparação: </strong>Depois de posicionar forças, escolha um oponente; ele atribui a condição <strong>Perseguição Impiedosa</strong> a duas de suas naves.%LINEBREAK%Sua %FORCE% perde o icone de recursiva. Depois que você defender, se você sofreu dano durante este ataque, recupere 1 %FORCE%."""
        "The Mandalorian":
           display_name: """O Mandaloriano"""
           text: """Durante a Fase Final, se você não defendeu nessa rodada, recupere 1 %FORCE% não recorrente, se possível."""
        "Tobias Beckett":
           display_name: """Tobias Beckett"""
           text: """<strong>Preparação: </strong>Depois de posicionar as forças, você pode escolher 1 obstáculo na área de jogo. Se o fizer, coloque-o em qualquer lugar da área de jogo além do alcance 2 de qualquer borda ou nave, e além do alcance 1 de qualquer outro obstáculo."""
        "Tristan Wren":
           display_name: """Tristan Wren"""
           text: """Quando uma unidade amiga em alcance 0-3 realiza um ataque %RANGEBONUS%, você pode gastar 1 %CHARGE%. Se o fizer, o atacante pode mudar 1 resultado %HIT% para um resultado %CRIT%."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """Depois que você executar parcialmente uma manobra, você pode sofrer 1 dano %HIT% para realizar 1 ação branca."""
        "Ursa Wren":
           display_name: """Ursa Wren"""
           text: """Você pode manter até 2 miras. Cada mira deve estar em um objeto diferente.%LINEBREAK%Depois que uma nave amiga em alcance 0-3 for mirada, você pode realizar uma ação %LOCK%. %LINEBREAK% <i>Errata (desde RR 1.4.2): Texto atualizado para funcionar como era a inteção</i>"""
        "Yoda":
           display_name: """Yoda"""
           text: """Depois que outra nave amiga em alcance 0-2 executa completamente uma manobra roxa ou realiza uma ação roxa, você pode gastar 1 %FORCE%. Se o fizer, essa nave recupera 1 %FORCE%."""
        "Zam Wesell":
           display_name: """Zam Wesell"""
           text: """<strong>Preparação:</strong> Perca 2 %CHARGE%.%LINEBREAK% Durante a Fase de Sistema, você pode atribuir uma das suas condições secretas virada para baixo a você mesmo: <strong>%LINEBREAK%Você Deveria Me Agradecer %LINEBREAK%É Melhor Falar Sério. </strong>"""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """Quando você realizar um ataque em alcance 0, você pode gastar fichas de foco para seu efeito padrão para modificar seus resultados. Quando você defenderem alcance 0, o atacante pode usar fichas de foco para seu efeito padrão para modificar os resultados.%LINEBREAK%<i>Errata (desde RR 1.4): Habilidade refeita</i>"""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """Quando você realizar um ataque, se você não estiver estressado, você pode escolher 1 dado de defesa e receber 1 ficha de estresse. Se o fizer, o defensor deve rerrolar esse dado."""
 
       #Melhorias Standard Loadout
        "Fanatic (BoY)":
           display_name: """Fanático"""
           text: """Quando você realizar um ataque primário, se você estiver danificado, você pode mudar 1 resultado %FOCUS% para um resultado %HIT%."""
        "Vengeful (BoY)":
           display_name: """Vingativo"""
           text: """Depois que uma nave amiga em alcance 0-3 for destruída, se essa nave for limitada, você pode remover 1 de suas fichas vermelhas ou recuperar 1 carga recorrente de suas cartas."""
        "Chewbacca (BoY)":
           display_name: """Chewbacca"""
           text: """Depois que você fizer uma ação %EVADE%, você pode receber 1 ficha de foco."""
        "L3-37's Programming (BoY)":
           display_name: """Programação da L3-37"""
           text: """Se você não possuir escudos, reduza a dificuldade das suas manobras curva (%BANKLEFT% and %BANKRIGHT%)."""
        "Unstable Sublight Engines (BoY)":
           display_name: """Motores Subluz Instáveis"""
           text: """Depois que você for destruído, você <b>deve</b> realizar uma manobra [1 %STRAIGHT%], então cada nave em alcance 0-1 sofre 1 dano %HIT%."""
        "Attack Speed (BoY)":
           display_name: """Velocidade de Ataque"""
           text: """Depois que você realizar completamente uma manobra [3 %STRAIGHT%] ou [4 %STRAIGHT%], Você pode realizar um boost usando o gabarito [1 %STRAIGHT%]. (Isto não é uma ação)."""
        "R2-D2 (BoY)":
           display_name: """R2-D2"""
           text: """Depois que você revelar seu disco, você pode gastar 1 %CHARGE% e receber 1 ficha de desarme para recuperar 1 escudo."""
        "R2-F2 (BoY)":
           display_name: """R2-F2"""
           text: """Depois que você revelar seu disco, você pode gastar 1 %CHARGE% e receber 1 ficha de desarme para recuperar 1 escudo."""
        "R2-A3 (BoY)":
           display_name: """R2-A3"""
           text: """Depois que você revelar seu disco, você pode gastar 1 %CHARGE% e receber 1 ficha de desarme para recuperar 1 escudo."""
        "R5-D8 (BoY)":
           display_name: """R5-D8"""
           text: """<strong>Ação:</strong> Gaste 1 %CHARGE% para consertar 1 carta de dano virada para baixo. %LINEBREAK% <strong>Ação:</strong> Conserte 1 carta de dano virada para cima do tipo <strong>Nave</strong>."""
        "R5-K6 (BoY)":
           display_name: """R5-K6"""
           text: """<strong>Ação:</strong> Gaste 1 %CHARGE% para consertar 1 carta de dano virada para baixo. %LINEBREAK% <strong>Ação:</strong> Conserte 1 carta de dano virada para cima do tipo <strong>Nave</strong>."""
        "Precise Astromech (BoY)":
           display_name: """Astromecânico Preciso"""
           text: """Depois que você realizar uma ação, você pode gastar 1 %CHARGE% para realizar uma ação %LOCK% vermelha."""
        "Targeting Astromech (BoY)":
           display_name: """Astromecânico de Mira"""
           text: """Depois que você realizar uma ação %LOCK%, você pode realizar uma ação %ROTATEARC% vermelha."""
        "Dorsal Turret (BoY)":
           display_name: """Torre Dorsal"""
           text: """<strong>Ataque</strong>"""
        "Sensor Jammer (BoY)":
           display_name: """Bloqueador de Sensores"""
           text: """Quando estiver defendendo, se houver uma nave amiga no atacante, você pode mudar 1 dos resultados %HIT% do atacante para um resultado %FOCUS%."""
        "Ancillary Ion Weapons (SoC)":
           display_name: """Armas de Íon Auxiliares"""
           text: """Quando você realizar um ataque primário %FRONTARC%, antes de rolar dados de ataque, você pode gastar 2 %CHARGE%. Se fizer isso, seus resultados %CRIT% causam fichas de íon ao invés de dano."""
        "Roiling Anger (SoC)":
           display_name: """Fúria Cegante"""
           text: """No começo da Fase de Engajamento, se você estiver no %FRONTARC% de uma nave inimiga, você pode receber 1 ficha de desgaste para recuperar 1 %FORCE%."""
        "Contingency Protocol (SoC)":
           display_name: """Protocolo de Contingência"""
           text: """Depois que esta nave for destruída outra nave amiga em alcance 0-3 com <b>Protocolo de Contingência</b> pode realizar uma ação, mesmo se estiver estressada."""
        "Evasion Sequence 7 (SoC)":
           display_name: """Sequência de Evasão 7"""
           text: """Quando você realizar uma ação %EVADE% vermelha, se houver um obstáculo, objeto de cenário em alcance 1, trate a ação como branca."""
        "Strut-Lock Override (SoC)":
           display_name: """Desativar Travas de Suporte"""
           text: """No começo da sua ativação, você pode gastar 1 %CHARGE%. Se você fizer isso, ignore obstáculos se você se mover por eles durante esta rodada."""
        "R4-P17 (SoC)":
           display_name: """R4-P17"""
           text: """Quando você for receber uma carta de dano, se você não estiver defendendo, você pode gastar 1 %CHARGE% e receber 1 ficha de desgaste para descartá-la."""
        "Wolfpack (SoC)":
           display_name: """Matilha"""
           text: """Quando você realizar um ataque, você pode gastar uma mira pertencente a uma nave <b>Plo Koon</b> aliada ou uma nave com a habilidade <b>Nascido para Isso</b> que esteja no defensor para rerrolar qualquer quantidade de dados de ataque."""
    condition_translations = 
    
        'Suppressive Fire':
           display_name: 'Tiro Supressivo'
           text: '''Quando você realizar um ataque contra uma nave que não seja <strong>Capitão Rex</strong>, role 1 dado de ataque a menos.%LINEBREAK%Após <strong>Capitão Rex</strong> defender, remova essa carta. No final da Fase de Engajamento, se <strong>Capitão Rex</strong> não realizou um ataque nessa fase, remova essa carta.%LINEBREAK%Após <strong>Capitão Rex</strong> ser destruído, remova essa carta.'''
        'Hunted':
           display_name: 'Caçado'
           text: '''Depois que você for destruído, você deve escolher outra nave amiga e atribuir esta condição a ela, se possível.'''
        'Listening Device':
           display_name: 'Dispositivo de Escuta'
           text: '''Durante a Fase de Sistema, se uma nave inimiga com a melhoria <strong>Informante</strong> estiver em alcance 0-2 vire seu disco de manobras para cima.'''
        'Rattled':
           display_name: 'Aturdido'
           text: '''Depois que uma bomba ou mina em alcance 0-1 detonar, sofra 1 %CRIT%. Then, remove this card. %LINEBREAK% <strong>Action:</strong> Se não houver bombas ou minas em alcnace 0-1, remova esta carta.'''
        'Optimized Prototype':
           display_name: 'Protótipo Otimizado'
           text: '''Quando você realizar um ataque primário %FRONTARC% contra uma nave que esteja mirada por uma nave amiga com a melhoria <strong>Director Krennic</strong>, você pode gastar 1 resultado %HIT%/%CRIT%/%FOCUS%. Se você fizer isso, escolha um: o defensor perde 1 escudo ou o defensor vira uma carta de dano para cima.'''
        '''I'll Show You the Dark Side''':
           display_name: 'Contemple o Lado Sombrio'
           text: '''Quando esta carta for atribuída, se não houver uma carta de dano virada para cima nela, o jogador que a atribuiu procura no baralho de dano por 1 carta de dano <strong>Piloto</strong> e a coloca virada para cima nesta carta. Então, embaralhe o baralho de dano. Quando você for sofrer 1 dano %CRIT%, você recebe a carta virada para cima sobre esta carta. Então, remova esta carta. '''
        'Proton Bomb':
           display_name: 'Bomba de Prótons'
           text: '''<strong>Tipos:</strong> Dispositivo, Bombaa %LINEBREAK% No final da Fase de Ativação, este dispositivo detona. Quando este dispositivo detona, cada nave e remoto em alcance 0-1 sofre 1 dano %CRIT.%LINEBREAK%<i>Errata (Discussão de Regras Oficial 03/2019): Adicionado: "e remoto"</i>'''
        'Seismic Charge':
           display_name: 'Cargas Sísmicas'
           text: '''<strong>Tipos:</strong> Dispositivo, Bomba %LINEBREAK% No final da Fase de Ativação, este dispositivo detona. Quando este dispositivo detona, escolha 1 obstáculo em alcance 0-1. Cada nave e remoto em alcance 0-1 do obstáculo sofre 1 dano d. Então remova o obstáculo.%LINEBREAK%<i>Errata (Discussão de Regras Oficial 03/2019): Adicionado: "e remoto"</i> '''
        'Bomblet':
           display_name: 'Bomba Fragmentada'
           text: '''<strong>Tipos:</strong> Dispositivo, Bomba %LINEBREAK% No final da Fase Ativação, este dispositivo detona. Quando este dispositivo detona, cada nave e remoto em alcance 0-1 rola 2 dados de ataque. Cada nave ou remoto sofre 1 dano %HIT% para cada resultado %HIT%/%CRIT%.%LINEBREAK%<i>Errata (Discussão de Regras Oficial 03/2019): Adicionado: "e remoto"</i>'''
        'Loose Cargo':
           display_name: 'Carregamento Solto'
           text: '''<strong>Tipos:</strong> Obstáculo, Colocado %LINEBREAK% '''
        'Spare Parts':
           display_name: 'Peças Sobressalentes'
           text: '''<strong>Tipos:</strong> Obstáculo, Colocado %LINEBREAK% Quando este objeto é solto, encaixe-o nas guias traseiras da nave.'''
        'Conner Net':
           display_name: 'Rede Conner'
           text: '''<strong>Tipos:</strong> Dispositivo, Mina %LINEBREAK% Após uma nave sobrepor ou se mover através deste dispositivo, ele detona. Quando este dispositivo detona, a nave sofre 1 dano %HIT% e recebe 3 fichas de íon.'''
        'Proximity Mine':
           display_name: 'Minas de Proximidade'
           text: '''<strong>Tipos:</strong> Dispositivo, Mina %LINEBREAK% Após uma nave sobrepor ou se mover através deste dispositivo, ele detona. Quando este dispositivo detona, a nave rola 2 dados de ataque. Essa nave sofre 1 dano %HIT% mais 1 dano %HIT%/%CRIT% para cada resultado correspondente.%LINEBREAK%<i>Errata (desde RR 1.0.2): Adicionado: "1 %HIT% mais"</i>'''
        'DRK-1 Probe Droid':
           display_name: 'Sonda Droide Dark Eye'
           text: '''INI: 0 <br>AGILIDADE: 3 <br>CASCO: 1 %LINEBREAK% <strong>Tipos:</strong> Dispositivo, Remoto %LINEBREAK%  <strong>Fase de Sistema:</strong> o controlador da sonda droide DRK-1 pode escolher um gabarito [2 %BANKLEFT%], [2 STRAIGHT%] ou [2 %BANKRIGHT%] e qualquer conjunto de guias do DRK-1. O jogador então realoca o remoto, colocando o DRK-1 na outra extremidade do gabarito. Ele pode sobrepor um objeto dessa maneira.%LINEBREAK%Se o DRK-1 sobrepor uma nave, use o marcador de posição para marcar a posição da nave, então coloque a nave em cima do remoto.%LINEBREAK%<strong>Fase de Ativação, Engajamento e Final:</strong> Sem efeitos.%LINEBREAK% <strong>Outras Regras:</strong> Quando uma nave trava uma mira ou interfere uma nave inimiga, ela pode medir o alcance a partir de uma sonda droide DRK-1 amiga.%LINEBREAK%Após uma nave inimiga executar uma manobra que faz com que ela sobreponha uma sonda droide DRK-1, o controlador da nave rola um dado de ataque. Em um resultado %FOCUS%, a sonda droide DRK-1 sofre 1 dano %HIT%.'''
        'Buzz Droid Swarm':
           display_name: 'Enxame de Buzz Droids'
           text: '''INI: 0 <br>AGILITY: 1 <br>HULL: 1 %LINEBREAK% <strong>Tipos:</strong> Dispositivo, Remoto %LINEBREAK% <strong>Fase de Sistema, Ativação e Final: Sem efeitos.</strong>%LINEBREAK%<strong>Fase de Engajamento:</strong> Quando você engaja, cada nave inimiga em alcance 0 do enxame de buzz droids sofre 1 dano %CRIT%.%LINEBREAK%<strong>Outras Regras:</strong> Após uma nave inimiga sobrepor ou mover através de um enxame de buzz droids, o jogador que controla o enxame realoca ele alinhando as guias do remoto com as guias frontais ou traseiras da nave (essa nave está em alcance 0 do enxame). O enxame não pode ser alinhado com as guias de uma nave, se isso fizer com que o enxame sobreponha um objeto. Se o enxame não pode ser alinhado com as guias escolhidas, o jogador controlador deve alinhá-lo com o outro conjunto de guias da nave. Se ele não pode ser alinhado nos dois conjuntos de guias, o enxame e a nave inimiga que sobrepôs ou moveu através do enxame sofrem 1 dano %HIT%. %LINEBREAK%<i>Errata (desde RR 1.4): Agilidade ajustada para equilibrio.</i>'''
        '''It's the Resistance''':
           display_name: 'É a Resistência'
           text: '''<strong>Preparação:</strong> Comece na reserva. %LINEBREAK% Quando você for posicionado, você pode ser colocado no alcance 1 de qualquer borda da mesa e além do alcance 3 de qualquer nave inimiga. %LINEBREAK% No começo da rodada, se todas as %CHARGE% do <strong>GA-97</strong> amigo estiverem ativas você <strong>deve</strong> ser posicionado. Então remova esta carta. Depois que o <strong>GA-97</strong> amigo for destruído, você <strong>deve</strong> ser posicionado. Então receba 1 ficha de desarme e descarte esta carta.'''
        'Electro-Proton Bomb':
           display_name: 'Bomba de Elétro-Próton'
           text: '''<strong>Tipos:</strong> Dispositivo, Bomba %LINEBREAK%  No final da Fase de Ativação este dispositivo detona. Quando este dispositivo detonar, cada nave e remoto em alcance 0-2 rola 4 dados de ataque. Cada nave perde 1 escudo para cada resultado em branco, recebe 1 ficha de íon para cada resultado %FOCUS%/%HIT%, e recebe 1 ficha de desarme para cada resultado %CRIT%. Cada remoto em alcance 0-1 perde 1 escudo para cada resultado em branco, e sofre 1 dano para cada resultado %FOCUS%/%HIT%.'''
        'Decoyed':
           display_name: 'Chamariz'
           text: '''Quando você defender, cada <strong>Serva de Naboo</strong> amiga no arco de ataque pode gastar 1 ficha de desvio para mudar um dos seus resultados para um resultado %EVADE%.%LINEBREAK%Se você for um Caça Estelar Real de Naboo N-1, cada <strong>Serva de Naboo</strong> amiga no arco de ataque pode gastar 1 ficha de desvio para, ao invés disso, adicionar 1 resultado %EVADE%.'''
        'Compromising Intel':
           display_name: 'Inteligência Comprometedora'
           text: '''Durante a Fase de Sistema, se a <strong>Vi Moradi</strong> inimiga estiver em alcance 0-3, vire seu disco para cima.%LINEBREAK%Quando você defender ou realizar um ataque contra a <strong>Vi Moradi inimiga</strong>, você não pode gastar fichas de foco.'''
        'Cluster Mine':
           display_name: 'Mina Fragmentada'
           text: '''<strong>Tipos:</strong> Dispositivo, Mina %LINEBREAK%  Um conjunto de Mina de Fragmentação consiste em 3 dispositivos Mina deFragmentação.%LINEBREAK%Quando uma Mina de Fragmentação é colocada, a peça central é colocada normalmente e as duas Minas de Fragmentação adicionais são colocadas nos espaços laterais como mostrado.%LINEBREAK%Após uma nave sobrepor ou se mover através de qualquer peça individual da Mina de Fragmentação, ela detona. Peças não sobrepostas ou que a nave não tenha movido através, não detonam.%LINEBREAK%Quando cada um destes dispositivos detona, aquela nave rola 2 dados de ataque. A nave sofre 1 dano %HIT%/%CRIT% para cada resultado correspondente.'''
        'Ion Bomb':
           display_name: 'Bomba de Íon'
           text: '''<strong>Tipos:</strong> Dispositivo, Bomba %LINEBREAK% No fim da Fase de Ativação, este dispositivo detona. Quando este dispositivo detonar, cada nave em alcance 0-1 rece 3 fichas de íon, e cada remoto em alcance 0-1 sofre 1 dano %HIT%.'''
        'Concussion Bomb':
           display_name: 'Bomba de Concussão'
           text: '''<strong>Tipos:</strong> Dispositivo, Bomba %LINEBREAK% No fim da Fase de Ativação, este dispositivo detona. Quando este dispositivo detonar, cada nave e remoto em alcance 0-1 recebe 1 carta de dano virada para baixo. Então, cada nave em alcance 0-1 deve expor 1 carta de dano, a menos que ela escolha receber 1 ficha de desgaste.'''
        'Thermal Detonator':
           display_name: 'Detonador Térmico'
           text: '''<strong>Tipos:</strong> Dispositivo, Bomba %LINEBREAK% No final da Fase de Ativação, este dispositivo detona. Quando este dispositivo detonar, cada nave e remoto em alcance 0-1 rola 1 dado de ataque. Cada nave recebe 1 ficha de desgaste para cada resultado %FOCUS%, e cada nave e remoto sofre 1 dano %HIT%/%CRIT% para cada resultado correspondente.'''
        'Sensor Buoy':
           display_name: 'Bóia de Sensor'
           text: '''INI: 0 <br>AGILIDADE: 3 <br>CASCO: 2 %LINEBREAK% <strong>Tipos:</strong> Dispositivo, Remoto %LINEBREAK% SBoias de sensores são remotos em pares (um azul e um vermelho, cada um com sua própria carta de remoto) e são colocados com a carta de melhoria <strong>Conjunto de Boias de Sensores</strong>. Além de serem remotos e interagirem com a carta, eles não possuem regras adicionais.'''
        'Electro-Chaff Cloud':
           display_name: 'Nuvem de Electro-Chaff'
           text: '''An electro-chaff cloud is a device and an obstacle. %LINEBREAK% Durante a Fase Final, remova cada nuvem de electro-chaff sem marcadores de fuso, então remova um marcador de fuso de cada nuvem de electro-chaff. Uma nuvem de electro-chaff nunca pode ter mais de um marcador de fuso.'''
        'Tracking Torpedoes':
           display_name: 'Torpedos Rastreadores'
           text: '''INI: 0 <br>AGILIDADE: 3 <br>CASCO: 3 %LINEBREAK% <strong>Tipos:</strong> Dispositivo, Remoto %LINEBREAK%<strong>Fase de sistema:</strong> na iniciativa desse remoto, o jogador que o controla realoca este remoto para frente usando o gabarito [3 %BANKLEFT%], [3 %BANKRIGHT%] ou [4 %STRAIGHT%].%LINEBREAK% <strong>Fase de Ativação:</strong> sem efeito.%LINEBREAK% <strong>Fase de Engajamento:</strong> na iniciativa do remoto, se um objeto que ele possui uma mira estiver em seu %FRONTARC% em alcance 0-1, este remoto detona.%LINEBREAK% <strong>Fase Final:</strong> durante a Fase Final, se este remoto não possuir uma mira em nenhum objeto, este remoto deve adquirir uma mira em um objeto no seu %FRONTARC% em alcance 1-3, se for possível.%LINEBREAK% <strong>Outras Regras:</strong> após este remoto ser destruído, role 1 dado de ataque. Em um resultado %HIT% ou %CRIT%, este remoto detona.%LINEBREAK% Quando este remoto detona, cada nave, remoto e estrutura em alcance 0 ou em seu %FRONTARC% em alcance 1 rola 4 dados de ataque e sofre 1 dano para cada resultado %HIT% e %CRIT%.'''
        'Fearful Prey':
           display_name: 'Presa Assustada'
           text: '''Após você defender contra um <strong>Predador Terrível</strong> inimigo, se você não gastou ao menos 1 ficha verde durante o ataque, receba 1 ficha de desgaste.'''
        'You Should Thank Me':
           display_name: 'Você Deveria Me Agradecer'
           text: '''Esta condição é atribuída virada para baixo. Revele-a após você defender.%LINEBREAK% Após você defender, <strong>Zam Wesell</strong> recupera 1 %CHARGE%. Então, você pode adquirir uma mira no atacante.%LINEBREAK% No final da Fase de Engajamento, se esta carta estiver virada para baixo e você estiver no arco de tiro de uma nave inimiga, você pode revelar esta carta e gastar 2 %CHARGE% de <strong>Zam Wesell</strong>. Se o fizer, você pode realizar um ataque bônus.%LINEBREAK% No início da Fase de Sistema, remova esta condição.'''
        '''You'd Better Mean Business''':
           display_name: 'É Melhor Falar Sério'
           text: '''Esta condição é atribuída virada para baixo. Revele-a após você defender.%LINEBREAK% Após você defender, você pode gastar 2 %CHARGE% de <strong>Zam Wesell</strong>. Se o fizer, realize um ataque bônus contra o atacante.%LINEBREAK% No final da Fase de Engajamento, se esta carta estiver virada para baixo e você estiver no arco de tiro de uma nave inimiga, você pode revelar esta carta. Se o fizer, <strong>Zam Wesell</strong> recupera 2 %CHARGE%.%LINEBREAK% No início da Fase de Sistema, remova esta condição.'''
        '''Merciless Pursuit''':
           display_name: 'Perseguição Impiedosa'
           text: '''Depois que você realizar um ataque, se o defensor estiver equipado com <strong>A Criança</strong>, você pode adquirir uma mira no defensor.'''
        '''Marked for Elimination''':
           display_name: 'Marcado para Eliminação'
           text: '''Quando você defender, se o atacante estiver equipado com <strong>Fob de Rastreamento</strong> e possuir uma mira em você, você não pode gastar fichas verdes.'''
        '''False Friend''':
           display_name: 'Falso Amigo'
           text: '''Durante a Fase de Sistema, se uma nave inimiga com a melhoria <strong> Tal Merrik</strong> estiver em alcance 0-2 ou um remoto inimigo estiver em alcance 0-2, Vire seu disco de manobras para cima.%LINEBREAK%<strong>Ação</strong> Receba 1 ficha de desgaste e 1 ficha de estresse para descartar esta condição.'''
        '''Trials of the Darksaber''':
           display_name: 'Testes do Sabre Negro'
           text: '''Quando você realizar um ataque em alcance 0-2, você pode gastar 1 resultado %CRIT%. Se o fizer, se o jogador controlando a nave tiver mais %POINT% que você, ele perde 1 %POINT%. Posicione este %POINT% nesta carta. %LINEBREAK% Depois qeu você defender, se você for destruído por uma nave inimiga em alcance 0-2, atribua a condição <strong>Testes do Sabre Negro</strong> ao atacante (todos os %POINT% permanecem nesta carta).%LINEBREAK% No final do jogo, esta nave pontua todos os %POINT% nesta carta.'''
        '''Blazer Bomb''':
           display_name: 'Bomba de Labareda'
           text: '''<strong>Tipos:</strong> Dispositivo, Bomba %LINEBREAK% No final da Fase de Ativação, este dispositivo detona.%LINEBREAK%Quando este dispositivo detona, cada nave e remoto em alcance 0-1 rolaum dado de ataque. Cada nave ou remoto sofre 1 dano %HIT% para cadaresultado %HIT%/%CRIT%.%LINEBREAK% Após este dispositivo detonar, coloque uma Labareda alinhando as guias daLabareda com o encaixe do dispositivo.%LINEBREAK%Uma Labareda é um obstáculo. Após este obstáculo ser posicionado, coloque um marcador de fuso sobre ele.%LINEBREAK%Durante a Fase Final, remova cada Labareda sem marcadores de fuso, e então remova um marcador de fuso de cada Labareda.'''
        '''Clan Wren Commandos''':
           display_name: 'Comandos do Clã Wren'
           text: '''INI: 2 <br> %FRONTARC%: 2 %RANGEBONUS%, ALCANCE: 1-2 <br>%AGILITY%: 2, %HULL%: 2, %CHARGE%: 2 %LINEBREAK% <strong>Tipos:</strong> Dispositivo, Remoto %LINEBREAK% Depois que uma nave inimiga sobrepor você, ela recebe 1 ficha de desgaste.%LINEBREAK%<strong>Fase de Ativação:</strong> No começo dessa fase, você pode realocar para frente usando o gabarito [1 %TURNLEFT%], [2 %STRAIGHT%], ou [1 %TURNRIGHT%].%LINEBREAK% <strong>Fase de Engajamento:</strong> Você não pode atacar se houver naves inimigas em alcance 0. Para realizar 1 ataque você deve gastar 1 %CHARGE%. Quando você realiza um ataque, você pode mudar 1 resultado %FOCUS% para um resultado %HIT%.'''
        '''Death Watch Commandos''':
           display_name: 'Comandos do Olho da Morte'
           text: '''INI: 2 <br> %FRONTARC%: 2 %RANGEBONUS%, ALCANCE: 1-2 <br>%AGILITY%: 2, %HULL%: 2, %CHARGE%: 2 %LINEBREAK% <strong>Tipos:</strong> Dispositivo, Remoto %LINEBREAK% Depois que uma nave inimiga sobrepor você, ela recebe 1 ficha de desgaste.%LINEBREAK%<strong>Fase de Ativação:</strong> No começo dessa fase, você pode realocar para frente usando o gabarito [1 %TURNLEFT%], [2 %STRAIGHT%], ou [1 %TURNRIGHT%].%LINEBREAK% <strong>Fase de Engajamento:</strong> Você não pode atacar se houver naves inimigas em alcance 0. Para realizar 1 ataque você deve gastar 1 %CHARGE%. Quando você realiza um ataque, você pode mudar 1 resultado %FOCUS% para um resultado %HIT%.'''
        '''Nite Owl Commandos''':
           display_name: 'Comandos das Corujas Noturnas'
           text: '''INI: 2 <br> %FRONTARC%: 2 %RANGEBONUS%, ALCANCE: 1-2 <br>%AGILITY%: 2, %HULL%: 2, %CHARGE%: 2 %LINEBREAK% <strong>Tipos:</strong> Dispositivo, Remoto %LINEBREAK% Depois que uma nave inimiga sobrepor você, ela recebe 1 ficha de desgaste.%LINEBREAK%<strong>Fase de Ativação:</strong> No começo dessa fase, você pode realocar para frente usando o gabarito [1 %TURNLEFT%], [2 %STRAIGHT%], ou [1 %TURNRIGHT%].%LINEBREAK% <strong>Fase de Engajamento:</strong> Você não pode atacar se houver naves inimigas em alcance 0. Para realizar 1 ataque você deve gastar 1 %CHARGE%. Quando você realiza um ataque, você pode mudar 1 resultado %FOCUS% para um resultado %HIT%.'''
        '''Imperial Super Commandos''':
           display_name: 'Super Comandos Imperiais'
           text: '''INI: 2 <br> %FRONTARC%: 2 %RANGEBONUS%, ALCANCE: 1-2 <br>%AGILITY%: 2, %HULL%: 2, %CHARGE%: 2 %LINEBREAK% <strong>Tipos:</strong> Dispositivo, Remoto %LINEBREAK% Depois que uma nave inimiga sobrepor você, ela recebe 1 ficha de desgaste.%LINEBREAK%<strong>Fase de Ativação:</strong> No começo dessa fase, você pode realocar para frente usando o gabarito [1 %TURNLEFT%], [2 %STRAIGHT%], ou [1 %TURNRIGHT%].%LINEBREAK% <strong>Fase de Engajamento:</strong> Você não pode atacar se houver naves inimigas em alcance 0. Para realizar 1 ataque você deve gastar 1 %CHARGE%. Quando você realiza um ataque, você pode mudar 1 resultado %FOCUS% para um resultado %HIT%.'''
        '''Mandalorian Super Commandos''':
           display_name: 'Super Comandos Mandalorianos'
           text: '''INI: 2 <br> %FRONTARC%: 2 %RANGEBONUS%, ALCANCE: 1-2 <br>%AGILITY%: 2, %HULL%: 2, %CHARGE%: 2 %LINEBREAK% <strong>Tipos:</strong> Dispositivo, Remoto %LINEBREAK% Depois que uma nave inimiga sobrepor você, ela recebe 1 ficha de desgaste.%LINEBREAK%<strong>Fase de Ativação:</strong> No começo dessa fase, você pode realocar para frente usando o gabarito [1 %TURNLEFT%], [2 %STRAIGHT%], ou [1 %TURNRIGHT%].%LINEBREAK% <strong>Fase de Engajamento:</strong> Você não pode atacar se houver naves inimigas em alcance 0. Para realizar 1 ataque você deve gastar 1 %CHARGE%. Quando você realiza um ataque, você pode mudar 1 resultado %FOCUS% para um resultado %HIT%.'''
        '''Guarded''':
           display_name: 'Protegido'
           text: '''Quando você defender, se você não estiver no %BULLSEYEARC% do atacante, role 1 dado de defesa adicional para cada <b>Protetor MagnaGuard</b> calculando ou desviando no arco de ataque.'''
        '''Sickening Maneuver''':
           display_name: 'Manobra Nauseante'
           text: '''Você pode realizar manobras vermelhas mesmo se estiver estressado. %LINEBREAK% Depois que você revelar uma manobra curva [%BANKLEFT% or %BANKRIGHT%] ou curva fechada [%TURNLEFT% or %TURNRIGHT%], você <b>deve</b> receber 1 ficha de desgaste e realizar a manobra como uma derrapagem.%LINEBREAK%Depois que você revelar uma manobra [%STRAIGHT%], você deve realizar esta manobra como uma manobra Koiogran vermelha [%KTURN%].%LINEBREAK% Depois que você realizar uma manobra, remova esta condição.'''
        '''Primed For Speed''':
           display_name: 'Preparado para Velocidade'
           text: '''Adicione uma ação %SLAM% branca a sua barra de ações. %LINEBREAK% Depois que você realizar um %SLAM%, você deve sofrer 1 dano %HIT% para remover 1 ficha de desarme.'''
        '''Broken Trust''':
           display_name: 'Confiança Quebrada'
           text: '''Trate naves amigas como aliadas.%LINEBREAK% Naves não inimigas tratam você como aliada. %LINEBREAK%Quando realizar um ataque, antes de declarar o defensor, cada nave aliada no arco de ataque que não estiver estressada recebe 1 ficha de estresse. Depois que você defender ou realizar um ataque, se o defensor recebeu pelo menos 1 carta de dano virada para cima, ou foi destruído, remova esta condição.'''

    chassis_translations = 
        "Vectored Thrusters":
           display_name: "Propulsores Vetorizados"
           text: """Após realizar uma ação, você pode realizar uma ação %BOOST% vermelha"""
        "Advanced Targeting Computer":
           display_name: "Computador de Mira Avançado"
           text: """Quando você realizar um ataque primário contra um defensor em quem você tem uma mira travada, role 1 dado de ataque adicional e mude 1 resultado %HIT% para um resultado %CRIT%."""
        "Autothrusters":
           display_name: "Autopropulsores"
           text: """Após realizar uma ação, você pode realizar uma ação %BARRELROLL% vermelha ou %BOOST% vermelha."""
        "Nimble Bomber":
           display_name: "Bombardeiro Ágil"
           text: """Se você for soltar um dispositivo usando um gabarito %STRAIGHT%, você pode, ao invés disso, usar um gabarito %BANKLEFT% ou %BANKRIGHT% de mesma velocidade"""
        "Full Throttle":
           display_name: "Força Total"
           text: """Após você executar completamente uma manobra de velocidade 3-5, você pode realizar uma ação %EVADE%."""
        "Experimental Scanners":
           display_name: "Sensores Experimentais"
           text: """Você pode travar miras além do alcance 3. Você não pode adquirir miras em alcance 1."""
        "Stygium Array":
           display_name: "Matriz de Stygium"
           text: """Após descamuflar, você pode realizar uma ação de %EVADE%. No início da Fase Final, você pode gastar 1 ficha de desvio para ganhar 1 ficha de camuflagem."""
        "Sensor Blindspot":
           display_name: "Ponto Cego nos Sensores"
           text: """Quando você realizar um ataque primário em alcance de ataque 0-1, não aplique o bônus de alcance 0-1 e role 1 dado de ataque a menos."""
        "Sensor Blackout":
           display_name: "Apagão nos Sensores"
           text: """Quando você realizar um ataque primário em alcance 0-1, role 1 dado de ataque a menos. %LINEBREAK% Quando você defender em alcance 1, role 1 dado de defesa a menos."""
        "Microthrusters":
           display_name: "Micropropulsores"
           text: """Quando você realizar uma pirueta, você <b>deve</b> usar o gabarito %BANKLEFT% ou %BANKRIGHT% ao invés do gabarito %STRAIGHT%."""
        "Weapon Hardpoint":
           display_name: "Encaixe de Arma"
           text: """Você pode equipar 1 melhoria %CANNON%, %TORPEDO% ou %MISSILE%."""
        "Advanced Droid Brain":
           display_name: "Cérebro Dróide Avançado"
           text: """Após realizar uma ação %CALCULATE%, receba 1 ficha de cálculo."""
        "Tail Gun":
           display_name: "Arma de Cauda"
           text: """Quando tiver uma nave acoplada, você tem uma arma primária %REARARC% com um valor de ataque igual ao valor de ataque primário %FRONTARC% da nave acoplada."""
        "Locked and Loaded":
           display_name: "Pronta para o Ataque"
           text: """Quando você estiver acoplada, após seu porta-naves realizar um ataque primário %FRONTARC% ou %TURRET%, ele pode realizar um ataque primário %REARARC% bônus."""
        "Concordia Faceoff":
           display_name: "Afronta de Concórdia"
           text: """Quando você defender, se o alcance de ataque for 1 e você estiver no %FRONTARC% do atacante, mude 1 resultado para um resultado %EVADE%."""
        "Spacetug Tractor Array":
           display_name: "Feixe de Rebocamento Espacial"
           text: """<strong>Ação:</strong> Escolha uma nave em seu %FRONTARC% em alcance 1. A nave escolhida recebe 1 ficha de tração, ou 2 fichas de tração se estiver em seu %BULLSEYEARC% em alcance 1."""
        "Hope":
           display_name: "Esperança"
           text: """Após outra nave amiga em alcance 0-3 ser destruída, você pode realizar uma ação %FOCUS% ou %BOOST%."""
        "Solo":
           display_name: "Solo"
           text: """Quando você defender ou realizar um ataque, se não houver outras naves amigas em alcance 0-1, você pode gastar 1 %CHARGE% para rerolar 1 de seus dados."""
        "Sensitive Controls":
           display_name: "Controles Sensíveis"
           text: """Durante a Fase de Sistema, você pode realizar uma ação %BOOST% ou %BARRELROLL% vermelha."""
        "Vectored Cannons":
           display_name: "Canhões Vetorizados"
           text: """Durante a Fase de Sistema, você pode realizar uma ação %BOOST% vermelha ou uma ação %ROTATEARC% vermelha. Você pode girar seu indicador %SINGLETURRETARC% apenas para seu %FRONTARC% ou %REARARC%."""
        "Advanced Fire Control":
           display_name: "Controle de Tiro Avançado"
           text: """Depois que você realizar um ataque %CANNON% ou %MISSILE%, se você possuir uma mira no defensor, você pode realizar um ataque primário bônus contra o defensor."""
        "Networked Calculations":
           display_name: "Cálculos Interligados"
           text: """Quando você defender ou realizar um ataque, você pode gastar 1 ficha de cálculo de uma nave amiga em alcance 0-1 para mudar 1 resultado %FOCUS% para um resultado %EVADE% ou %HIT%."""
        "Independent Calculations":
           display_name: "Cálculos Independentes"
           text: """Quando você realizar uma ação %CALCULATE% branca, você pode tratá-la como vermelha para receber 1 ficha de cálculo adicional. Outras naves não podem gastar suas fichas de cálculo usando a habilidade de nave <strong>Cálculos Interligados</strong>."""
        "Adaptive Ailerons":
           display_name: "Ailerons Adaptáveis"
           text: """Antes de revelar seu disco, se você não estiver estressado, você <b>deve</b> impulsionar. %LINEBREAK% <i>Errata (desde RR 1.4.2): Alterada a habilidade da nave</i>"""
        "Pursuit Craft":
           display_name: "Nave de Perseguição"
           text: """Após você desacoplar, você pode adquirir uma mira em uma nave que a <strong>Hound’s Tooth</strong> amiga possui mira."""
        "Dead to Rights":
           display_name: "Na Palma da Mão"
           text: """Quando você realizar um ataque, se o defensor estiver em seu %BULLSEYEARC%, os dados de defesa não podem ser modificados usando fichas verdes."""
        "Comms Shuttle":
           display_name: "Transporte de Comunicação"
           text: """Quando você estiver acoplado, seu porta-naves ganha %COORDINATE%. Antes do porta-naves ativar, ele pode realizar uma ação %COORDINATE%."""
        "Controlled Ailerons":
           display_name: "Ailerons Controlados"
           text: """Antes de revelar seu disco, se você não estiver estressado, você pode impulsionar. %LINEBREAK% <i>Errata (desde RR 1.4.2): Alterada a habilidade da nave</i>"""
        "Co-Pilot":
           display_name: "Co-Piloto"
           text: """Quando você estiver acoplado, seu porta-naves possui sua habilidade de piloto além da habilidade dele."""
        "Rigged Energy Cells":
           display_name: "Células de Energia Viciadas"
           text: """Durante a Fase de Sistema, se você não estiver acoplado, perca 1 %CHARGE%. No final da Fase de Ativação, se você tiver 0 %CHARGE%, você é destruído. Antes de você ser removido, cada nave em alcance 0-1 sofre 1 dano %CRIT%."""
        "Refined Gyrostabilizers":
           display_name: "Giroestabilizadores Aprimorados"
           text: """Você consegue rotacionar seu indicador %SINGLETURRETARC% apenas para seu %FRONTARC% ou %REARARC%. Após você realizar uma ação, você pode realizar uma ação %BOOST% vermelha ou %ROTATEARC% vermelha."""
        "Heavy Weapon Turret":
           display_name: "Torre de Arma Pesada"
           text: """Você consegue rotacionar seu indicador %SINGLETURRETARC% apenas para seu %FRONTARC% ou %REARARC%. Você deve tratar o requisito %FRONTARC% de suas melhorias %MISSILE% equipadas como %SINGLETURRETARC%."""
        "Linked Battery":
           display_name: "Bateria Interligada"
           text: """Quando você realizar um ataque %CANNON%, role 1 dado de ataque adicional."""
        "Notched Stabilizers":
           display_name: "Estabilizadores Dentados"
           text: """Quando você se mover, ignore asteroides."""
        "Fine-Tuned Controls":
           display_name: "Controles Ajustados"
           text: """Após você executar completamente uma manobra, você pode gastar 1 %FORCE% para realizar uma ação %BARRELROLL% ou %BOOST%."""
        "Pinpoint Tractor Array":
           display_name: "Matriz de Tração Precisa"
           text: """Você não pode rotacionar seu %SINGLETURRETARC% para seu %REARARC%. Após você executar completamente uma manobra, você pode receber 1 ficha de tração para realizar uma ação %ROTATEARC%.%LINEBREAK%<i>Errata (desde RR 1.4): Adicionado: "completamente"</i>"""
        "Plated Hull":
           display_name: "Casco Blindado"
           text: """Quando você defender, se você não estiver criticamente danificado, mude 1 resultado %CRIT% para um resultado %HIT%."""
        "Explosion with Wings":
           display_name: "Explosão com Asas"
           text: """<strong>Preparação:</strong> Você recebe uma carta de dano virada para baixo. Após você realizar uma ação %SLAM%, você pode expor 1 carta de dano para remover 1 ficha de desarmamento."""
        "Fine-Tuned Thrusters":
           display_name: "Propulsores Ajustados"
           text: """Após você executar completamente uma manobra, se você não estiver exausto ou desgastado, você pode receber 1 ficha de exaustão ou desgaste para realizar uma ação %LOCK% ou %BARRELROLL%."""
        "Networked Aim":
           display_name: "Miras Interligadas"
           text: """Você não pode gastar suas miras para rerrolar dados de ataque. Quando você realizar um ataque, você pode rerrolar um número de dados de ataque até o mesmo número de miras amigas no defensor."""
        "Fire Convergence":
           display_name: "Disparos Convergentes"
           text: """Quando uma nave amiga realizar um ataque não-%SINGLETURRETARC%, se o defensor estiver em seu %SINGLETURRETARC%, você pode gastar 1 %CHARGE%. Se o fizer, o atacante rerrola até 2 dados de ataque."""
        "Rotating Cannons":
           display_name: "Canhões Rotatórios"
           text: """Você pode rotacionar seu indicador %SINGLETURRETARC% apenas para seu %FRONTARC% ou %REARARC%. Você deve tratar o requisito %FRONTARC% de suas melhorias %CANNON% equipadas como %SINGLETURRETARC%."""
        "Twin Ion Engines":
           display_name: "Motor Gêmeo de Íons"
           text: """Ignore a restrição de nave “TIE” em cartas de melhoria"""
        "Intuitive Controls":
           display_name: "Controles Intuitivos"
           text: """Durante a Fase de Sistema, você pode realizar uma ação %BARRELROLL% roxa ou %BOOST% roxa."""
        "Intuitive Interface":
           display_name: "Interface Intuitiva"
           text: """Após você realizar uma ação adicionada à sua barra de ações por uma melhoria %TALENT%, %ILLICIT% ou %MODIFICATION%, você pode realizar uma ação %CALCULATE%."""
        "Devastating Barrage":
           display_name: "Ataque Devastador"
           text: """Quando você realizar um ataque %TORPEDO% ou %MISSILE%, se o defensor estiver em seu %BULLSEYEARC%, seus resultados %CRIT% não podem ser cancelados por resultados %EVADE%."""
        "Pursuit Thrusters":
           display_name: "Propulsores de Perseguição"
           text: """Durante a Fase de Sistema, você pode realizar uma ação %BOOST%."""
        "Versatile Frame":
           display_name: "Chassi Versátil"
           text: """Você pode equipar 1 melhoria %TORPEDO% ou %MISSILE%. Quando sua manobra revelada for azul, adicione um %BOOST% branco a sua barra de ações."""
        "Born for This":
           display_name: "Nascido Para Isso"
           text: """Quando outra nave amiga em alcance 0-2 defender, se você não estiver desgastado, ela pode gastar suas fichas de foco e desvio como se fossem dela. Se ela fizer isso, você recebe 1 ficha de desgaste."""
        "Modified for Organics":
           display_name: "Modificado para Orgânicos"
           text: """Esta nave não é afetada pela restrição <strong>Padronizada</strong>. Reduza a dificuldade de suas manobras curvas suave [%BANKLEFT% ou %BANKRIGHT%] de velocidade 2 e 3. Aumente a dificuldade de suas curvas [%TURNLEFT% ou %TURNRIGHT%] de velocidade 3."""

    damage_translations =
        "Panicked Pilot":
           display_name: """Piloto em Pânico"""
           text:"Receba 2 fichas de estresse. Então, repare esta carta."
        "Blinded Pilot":
           display_name: """Piloto Cegado"""
           text:"Quando você realizar um ataque, você pode modificar seus dados apenas gastando %FORCE% para seu efeito padrão.%LINEBREAK%<strong>Ação:</strong> Repare esta carta. "
        "Wounded Pilot":
           display_name: """Piloto Ferido"""
           text:"Após você realizar uma ação, role 1 dado de ataque. Em um resultado %HIT% ou %CRIT%, receba 1 ficha de estresse.%LINEBREAK%<strong>Ação:</strong> Repare esta carta. "
        "Stunned Pilot":
           display_name: """Piloto Atordoado"""
           text:"Após executar uma manobra, se você se moveu através ou sobrepôs um obstáculo, sofra 1 dano %HIT%. "
        "Console Fire":
           display_name: """Incêndio no Console"""
           text:"Antes de você engajar, role 1 dado de ataque. Em um resultado %HIT%, sofra 1 dano %HIT%. %LINEBREAK%<strong>Ação:</strong> Repare esta carta. "
        "Damaged Engine":
           display_name: """Motor Danificado"""
           text:"Aumente a dificuldade das suas manobras de curva acentuada (%TURNLEFT% and %TURNRIGHT%)"
        "Weapons Failure":
           display_name: """Falha nas Armas"""
           text:"Quando você realizar um ataque, role 1 dado de ataque a menos. %LINEBREAK%<strong>Ação:</strong> Repare esta carta. "
        "Hull Breach":
           display_name: """Ruptura do Casco"""
           text:"Antes de você sofrer 1 ou mais danos %HIT%, em vez disso, sofra a mesma quantidade de dano %CRIT%.%LINEBREAK%<strong>Ação:</strong> Repare esta carta.  "
        "Structural Damage":
           display_name: """Dano Estrutural"""
           text:"Quando você defender, role 1 dado de defesa a menos."
        "Damaged Sensor Array":
           display_name: """Matriz de Sensores Danificada"""
           text:"Você não pode realizar ações, exceto a ação %FOCUS% e as ações das cartas de dano.%LINEBREAK%<strong>Ação:</strong> Repare esta carta.  "
        "Loose Stabilizer":
           display_name: """Estabilizador Solto"""
           text:"Após executar uma manobra não-reta (%STRAIGHT%) você sofre 1 dano %HIT% e repara esta carta. %LINEBREAK%<strong>Ação:</strong> Repare esta carta.  "
        "Disabled Power Regulator":
           display_name: """Regulador de Força Desativado"""
           text:"Antes de você engajar, receba 1 ficha de íon. Após você executar uma manobra iônica, repare esta carta."
        "Fuel Leak":
           display_name: """Vazamento de Combustível"""
           text:"Após você sofrer 1 dano %CRIT%, sofra 1 dano %HIT% e repare esta carta.%LINEBREAK%<strong>Ação:</strong> Repare esta carta.  "
        "Direct Hit!":
           display_name: """Acerto em Cheio!"""
           text:"Sofra 1 dano %HIT%. Então, repare esta carta. "
            
    exportObj.setupTranslationCardData pilot_translations, upgrade_translations, condition_translations, chassis_translations, damage_translations
