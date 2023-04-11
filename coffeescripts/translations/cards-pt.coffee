exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.pt = 'Português'

exportObj.translations ?= {}
exportObj.translations.Português =
# ui translation goes here

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.Português = () ->
    exportObj.cardLanguage = 'Português'

 

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
           text: """<i class = flavor_text>Após você adquirir ou gastar uma mira, você pode remover 1 ficha vermelha de si mesmo."""
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
           text: """Quando você defender ou realizar um ataque, se o alcance do ataque for 1, você pode rolar 1 dado de ataque adicional."""
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
       "Poe Dameron (AdE)":
           text: """Após uma nave amiga em alcance 0-2 realizar uma ação durante a ativação dela, você pode gastar 2 %CHARGE%. Se o fizer, a nave que realizou a ação pode realizar uma ação branca, tratando-a como vermelha."""
        "Temmin Wexley (AdE)":
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
           text: """Depois que você executar completamente uma manobra, você pode escolher uma nave inimiga em alcance 1. A nave escolhida recebe 1 ficha de desgaste e você você remover 1 ficha de estresse."""

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


    upgrade_translations =
        "0-0-0":
           display_name: """0-0-0"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE MEDarth Vader</i>%LINEBREAK%No início da Fase de Engajamento,você pode escolher 1 nave inimiga em alcance 0-1. Se fizer isso, você recebe 1 ficha de cálculo, a menos que a nave escolhida receba 1 ficha de estresse."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando realizar um ataque, após rolar os dados de ataque, você pode escolher um tipo de ficha verde.Se fizer isso, receba 2 fichas deíon e, durante este ataque, o defensor não pode gastar fichas do tipoque você escolheu."""
        "Andrasta":
           display_name: """Andrasta"""
           text: """<i>CHANGE ME%RELOAD%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Adicione o encaixede melhoria %DEVICE%."""
        "Black One":
           display_name: """Black One"""
           text: """<i>CHANGE ME%SLAM%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%After you perform a %SLAM% action, lose 1&nbsp;%CHARGE%. Then you may gain 1 ion token to remove 1 disarm token.%LINEBREAK%If your %CHARGE% is inactive, you cannot perform the %SLAM% action."""
        "Dauntless":
           display_name: """Intrépido"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após executar parcialmenteuma manobra, você pode realizar1 ação branca, tratando-a comose fosse vermelha."""
        "Ghost":
           display_name: """Ghost"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Você consegue acoplar 1 shuttle deataque ou shuttle classe Sheathipede.%LINEBREAK%Suas naves acopladas conseguemser destacadas apenas a partirde suas guias traseiras."""
        "Havoc":
           display_name: """Havoc"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Remova o encaixe demelhoria %CREW%. Adicione osencaixes de melhoria %SENSOR% e %ASTROMECH%."""
        "Hound's Tooth":
           display_name: """Hound’s Tooth"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%1 Z-95-AF4 Headhunterconsegue acoplar em você."""
        "IG-2000":
           display_name: """IG-2000"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Você tem a habilidade de pilotode cada outra nave amiga coma carta de melhoria <strong>IG-2000</strong>."""
        "Marauder":
           display_name: """Saqueador"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando realizar um ataqueprimário %REARARC%, você tem a opçãode rerrolar 1 dado de ataque.%LINEBREAK%Adicione o encaixe de melhoria %GUNNER%."""
        "Millennium Falcon":
           display_name: """Millennium Falcon"""
           text: """<i>CHANGE ME%EVADE%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando defender, se estiver desviando, você pode rolar 1 dado de defesa."""
        "Mist Hunter":
           display_name: """Mist Hunter"""
           text: """<i>CHANGE ME%BARRELROLL%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Adicione o encaixede melhoria %CANNON%."""
        "Moldy Crow":
           display_name: """Moldy Crow"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%Receba uma arma primária%FRONTARC% de valor “3”.%LINEBREAK%Durante a Fase Final, não removaaté 2 fichas de foco."""
        "Outrider":
           display_name: """Outrider"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando você realizar um ataque obstruído, o defensor rola 1 dadode defesa a menos.%LINEBREAK%Após executar completamente uma manobra, se você se moveu através ou sobrepôs um obstáculo, você pode remover 1 de suas fichas vermelhas ou laranjas."""
        "Phantom":
           display_name: """Phantom"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Você consegue acoplar em alcance 0-1."""
        "Punishing One":
           display_name: """Punishing One"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando realizar um ataque primário,se o defensor estiver em seu %FRONTARC%,role 1 dado de ataque adicional.%LINEBREAK%Remova o encaixe de melhoria %CREW%. Adicione o encaixe de melhoria %ASTROMECH%."""
        "ST-321":
           display_name: """ST-321"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após realizar uma ação %COORDINATE%, você tem a opção de escolher uma nave inimiga em alcance 0-3 da nave que você coordenou. Se fizer isso, trave uma mira na nave inimiga escolhida, ignorando as restrições de alcance."""
        "Shadow Caster":
           display_name: """Shadow Caster"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após você realizar um ataqueque acertou, se o defensor estiverem seu %SINGLETURRETARC% e em seu %FRONTARC%, ele recebe1 ficha de tração."""
        "Slave I":
           display_name: """Slave I"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após revelar uma manobracurva acentuada (%TURNLEFT% ou %TURNRIGHT%) oucurva (%BANKLEFT% ou %BANKRIGHT%), você pode selecionar a manobra de mesma direção e velocidade na direção oposta.%LINEBREAK%Adicione o encaixe de melhoria %TORPEDO%."""
        "Virago":
           display_name: """Virago"""
           text: """Durante a Fase Final,você pode gastar1 %CHARGE% para realizar uma ação %BOOST% vermelha.%LINEBREAK%Adicione o encaixede melhoria %MODIFICATION%."""
        "Ablative Plating":
           display_name: """Revestimento Ablativo"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%Antes de sofrer dano de um obstáculo ou da detonação de uma bomba amiga, você pode gastar 1&nbsp;%CHARGE%. Se fizer isso, evite 1 dano."""
        "Admiral Sloane":
           display_name: """Almirante Sloane"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após outra nave amiga em alcance 0-3 defender, se ela for destruída, o atacante recebe 2 fichas de estresse.%LINEBREAK%Quando uma nave amiga em alcance 0-3 realizar um ataque contra uma nave estressada, ela pode rerrolar1 dado de ataque."""
        "Adv. Proton Torpedoes":
           display_name: """Torpedos de Prótons Avan."""
           text: """<strong>Ataque (</strong>%LOCK%<strong>):</strong> Gaste1&nbsp;%CHARGE%. Mude 1 resultado%HIT% para um resultado %CRIT%."""
        "Advanced Optics":
           display_name: """Advanced Optics"""
           text: """While you perform an attack, you may spend 1 focus token to change 1 of your blank results to a %HIT% result."""
        "Advanced SLAM":
           display_name: """SLAM Avançado"""
           text: """<i>CHANGE ME %SLAM%</i>%LINEBREAK%Após realizar uma ação %SLAM%, se você executou completamente a manobra,você pode realizar uma ação brancade sua barra de ações, tratando-acomo uma ação vermelha."""
        "Advanced Sensors":
           display_name: """Sensores Avançados"""
           text: """Após revelar seu disco, vocêpode realizar 1 ação.%LINEBREAK%Se fizer isso, você não pode realizar outra ação durante sua ativação."""
        "Afterburners":
           display_name: """Pós-Combustores"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após executar completamente uma manobra de velocidade3-5, você pode gastar 1&nbsp;%CHARGE% para realizar uma ação %BOOST%, mesmo se estiver estressado."""
        "Agent Kallus":
           display_name: """Agente Kallus"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparação:</strong> Atribua a condição <strong>Caçado</strong> a 1 nave inimiga.%LINEBREAK%Quando realizar um ataque contraa nave com a condição <strong>Caçado</strong>, você pode mudar 1 de seus resultados %FOCUS% para um resultado %HIT%."""
        "Agile Gunner":
           display_name: """Atirador Ágil"""
           text: """Durante a Fase Final, você pode rotacionar seu indicador %SINGLETURRETARC%."""
        "BB Astromech":
           display_name: """BB Astromech"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Before you execute a blue maneuver, you may spend 1&nbsp;%CHARGE% to perform a %BARRELROLL% action."""
        "BB-8":
           display_name: """BB-8"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Before you execute a blue maneuver, you may spend 1&nbsp;%CHARGE% to perform a&nbsp;%BARRELROLL% or&nbsp;%BOOST% action."""
        "BT-1":
           display_name: """BT-1"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE MEDarth Vader</i>%LINEBREAK%Quando realizar um ataque, você pode mudar 1 resultado&nbsp;%HIT% para um resultado %CRIT% para cada ficha de estresse que o defensor tiver."""
        "Barrage Rockets":
           display_name: """Torrente de Foguetes"""
           text: """<strong>Ataque (</strong>%FOCUS%<strong>):</strong> Gaste1&nbsp;%CHARGE%. Se o defensorestiver em seu %BULLSEYEARC%, você pode gastar 1 ou mais %CHARGE% para rerrolar essa mesma quantidade em dados de ataque."""
        "Baze Malbus":
           display_name: """Baze Malbus"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando realizar uma ação %FOCUS%, você pode tratá-la como uma ação vermelha. Se fizer isso, receba 1 ficha de foco adicional para cada nave inimiga em alcance 0-1, até no máximo de 2."""
        "Biohexacrypt Codes":
           display_name: """Biohexacrypt Codes"""
           text: """<i>CHANGE ME %LOCK% CHANGE ME <r>%LOCK%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%While you coordinate or jam, if you have a lock on a ship, you may spend that lock to choose that ship, ignoring range restrictions."""
        "Bistan":
           display_name: """Bistan"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após realizar um ataque primário,se estiver focado, você pode realizar um ataque %SINGLETURRETARC% bônus contra uma nave que você ainda não atacou nesta rodada."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparação:</strong> Inicie na reserva.%LINEBREAK%No final da Preparação, posicione-se em alcance 0 de um obstáculo e além de alcance 3 de qualquer nave inimiga."""
        "Bomblet Generator":
           display_name: """Gerador de Bombas Fragmentadas"""
           text: """<strong>Bomba</strong>%LINEBREAK%Durante a Fase de Sistema,você pode gastar 1 %CHARGE% para soltar uma Bomba Fragmentada com o gabarito [1&nbsp;%STRAIGHT%].%LINEBREAK%No início da Fase de Ativação, você pode gastar 1 escudopara recuperar 2 %CHARGE%."""
        "Bossk":
           display_name: """Bossk"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após realizar um ataque primárioque errou, se não estiver estressado, você <b>deve</b> receber 1 ficha de estresse para realizar um ataque primáriobônus contra o mesmo alvo."""
        "C-3PO":
           display_name: """C-3PO"""
           text: """<i>CHANGE ME%CALCULATE%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Antes de rolar os dados de defesa, você pode gastar 1 ficha de cálculo para chutar em voz alta um número que seja 1 ou maior. Se você fizer isso e seu chute acertar o número exato de resultados %EVADE%, adicione1 resultado&nbsp;%EVADE%.%LINEBREAK%Após realizar a ação %CALCULATE%,receba 1 ficha de cálculo."""
        "C-3PO (Resistance)":
           display_name: """C-3PO (Resistance)"""
           text: """<i>CHANGE ME%CALCULATE% ,  <r>%COORDINATE%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%While you coordinate, you can choose friendly ships beyond range 2 if they have&nbsp;%CALCULATE% on their action bar.%LINEBREAK%After you perform the&nbsp;%CALCULATE% or&nbsp;%COORDINATE% action, gain 1&nbsp;calculate token."""
        "Cad Bane":
           display_name: """Cad Bane"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após soltar ou lançarum dispositivo, você poderealizar uma ação %BOOST% vermelha."""
        "Captain Phasma":
           display_name: """Captain Phasma"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%At the end of the Engagement Phase, each enemy ship at range 0-1 that is not stressed gains 1 stress token."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante a Fase de Sistema, você pode escolher 1 nave inimiga em alcance 1-2 e chutar em voz alta uma direção e velocidade, e então olhar o disco da nave escolhida. Se a direção e velocidade da nave escolhida for igual ao seu chute, você pode escolheroutra manobra em seu disco."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%No início da Fase de Engajamento, você pode gastar 2 %CHARGE% para reparar 1 carta de dano virada para cima."""
        "Chewbacca (Scum)":
           display_name: """Chewbacca (Scum)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%No início da Fase Final, você pode gastar 1 ficha de foco para reparar1 de suas cartas de dano viradas para cima."""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca (Resistance)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Setup:</strong> Lose 1&nbsp;%CHARGE%.%LINEBREAK%After a friendly ship at range&nbsp;0-3 is dealt 1&nbsp;damage card, recover 1&nbsp;%CHARGE%.%LINEBREAK%While you perform an attack, you may spend 2&nbsp;%CHARGE% to change 1&nbsp;%FOCUS% result to a&nbsp;%CRIT% result."""
        "Ciena Ree":
           display_name: """Ciena Ree"""
           text: """<i>CHANGE ME %COORDINATE% CHANGE ME <r>%COORDINATE%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após realizar uma ação %COORDINATE%, se a nave que você coordenou realizou uma ação %BARRELROLL% ou %BOOST%, ela pode receber 1 fichade estresse para rotacionar 90°."""
        "Cikatro Vizago":
           display_name: """Cikatro Vizago"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante a Fase Final, você pode escolher 2 melhorias %ILLICIT% equipadas em naves amigas em alcance 0-1. Se fizer isso, você pode trocar essas melhorias%LINEBREAK%<strong>Final do Jogo:</strong> Returne todas as melhorias %ILLICIT% para suas naves originais."""
        "Cloaking Device":
           display_name: """Dispositivo de Camuflagem"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%<strong>Ação:</strong> Gaste 1&nbsp;%CHARGE% para realizar uma ação %CLOAK%.%LINEBREAK%No início da Fase de Planejamento, role 1 dado de ataque. Em um resultado %FOCUS%, descamufle ou descarte sua ficha de camuflagem."""
        "Cluster Missiles":
           display_name: """Mísseis de Fragmentação"""
           text: """<strong>Ataque (</strong>%LOCK%<strong>):</strong> Gaste 1&nbsp;%CHARGE%. Após este ataque, vocêpode realizá-lo novamente como ataque bônus contraum alvo diferente em alcance 0-1 do defensor, ignorandoo requisito %LOCK%."""
        "Collision Detector":
           display_name: """Detector de Colisão"""
           text: """Quando realizar um impulso ou uma pirueta, você consegue se mover através e sobrepor obstáculos.%LINEBREAK%Após se mover através ou sobrepor um obstáculo, você pode gastar 1&nbsp;%CHARGE% para ignorar os efeitos do obstáculo até o final da rodada."""
        "Composure":
           display_name: """Compostura"""
           text: """<i>CHANGE ME <r>%FOCUS%</r> CHANGE ME %FOCUS%</i>%LINEBREAK%Após falhar em uma ação, se vocênão tiver fichas verdes, você pode realizar uma ação %FOCUS%."""
        "Concussion Missiles":
           display_name: """Mísseis de Concussão"""
           text: """<strong>Ataque (</strong>%LOCK%<strong>):</strong> Gaste 1&nbsp;%CHARGE%. Após este ataque acertar, cada nave em alcance 0-1do defensor expõe 1 desuas cartas de dano."""
        "Conner Nets":
           display_name: """Rede Conner"""
           text: """<strong>Mina</strong>%LINEBREAK%Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para soltar uma Rede Conner com o gabarito [1&nbsp;%STRAIGHT%].%LINEBREAK%A %CHARGE% dessa carta nãopode ser recuperada."""
        "Contraband Cybernetics":
           display_name: """Cibernética Ilegal"""
           text: """Antes de ativar, você pode gastar 1&nbsp;%CHARGE%. Se fizer isso, até o final da rodada, você consegue realizar ações e executar manobras vermelhas mesmo se estiver estressado."""
        "Crack Shot":
           display_name: """Tiro Certeiro"""
           text: """Quando realizar um ataque primário, se o defensor estiver em seu %BULLSEYEARC%, antes da etapa Neutralizar Resultados, você pode gastar 1 %CHARGE% paracancelar 1 resultado&nbsp;%EVADE%."""
        "Daredevil":
           display_name: """Audacioso"""
           text: """<i>CHANGE ME %BOOST%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando realizar uma ação %BOOST%branca, você pode tratá-lacomo se fosse vermelha parausar o gabarito [1&nbsp;%TURNLEFT%] ou [1&nbsp;%TURNRIGHT%]."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%No início da Fase de Engajamento, você pode escolher 1 nave em seu arco de tiro em alcance 0-2 e gastar 1&nbsp;%FORCE%. Se fizer isso, a nave escolhida sofre 1 dano&nbsp;%HIT%, a menos que ela escolha remover 1 ficha verde."""
        "Deadman's Switch":
           display_name: """Dispositivo de Homem-Morto"""
           text: """Após ser destruído, cada outra nave em alcance 0-1 sofre 1 dano&nbsp;%HIT%."""
        "Death Troopers":
           display_name: """Death Troopers"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante a Fase de Ativação, naves inimigas em alcance 0-1 não podem remover fichas de estresse."""
        "Debris Gambit":
           display_name: """Contornar Destroços"""
           text: """<i>CHANGE ME<r>%EVADE%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%Quando você realizar uma ação %EVADE% vermelha, se houver um obstáculo em alcance 0-1, trate a ação comose ela fosse branca."""
        "Dengar":
           display_name: """Dengar"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após defender, se o atacante estiver em seu arco de tiro, você pode gastar 1 %CHARGE%. Se fizer isso, role 1 dado de ataque, a menos que o atacante escolha remover 1 ficha verde. Em um resultado %HIT% ou %CRIT%, o atacante sofre 1 dano&nbsp;%HIT%."""
        "Director Krennic":
           display_name: """Diretor Krennic"""
           text: """<i>CHANGE ME%LOCK%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparação:</strong> Antes de posicionar as forças, atribua a condição <strong>Protótipo Otimizado</strong> a outra nave amiga."""
        "Dorsal Turret":
           display_name: """Torre Dorsal"""
           text: """<i>CHANGE ME%ROTATEARC%</i>%LINEBREAK%<strong>Ataque</strong>"""
        "Electronic Baffle":
           display_name: """Desviador Eletrônico"""
           text: """Durante a Fase Final, vocêpode sofrer 1&nbsp;dano %HIT%para remover 1 ficha vermelha."""
        "Elusive":
           display_name: """Manobra Evasiva"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%Quando defender, você pode gastar 1 %CHARGE% pararerrolar 1 dado de defesa.%LINEBREAK%Após executar completamente uma manobra vermelha, recupere 1&nbsp;%CHARGE%."""
        "Emperor Palpatine":
           display_name: """Imperador Palpatine"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando uma outra nave amiga defender ou realizar um ataque, você pode gastar 1 %FORCE% para modificar 1 de seus dados comose a nave escolhidativesse gastado 1 %FORCE%."""
        "Engine Upgrade":
           display_name: """Melhoria de Motor"""
           text: """CHANGE ME%LINEBREAK%<i>CHANGE ME%BOOST%</i>%LINEBREAK%<i>CHANGE ME <r>%BOOST%</r></i>%LINEBREAK%<i class = flavor_text>Grandes forças militares como o Império Galático possuem motores padronizados, mas alguns pilotos e organizações pequenas normalmente substituem os conectores de energia, adicionam propulsores ou usam combustível de alto rendimento para turbinar seus motores.</i>"""
        "Expert Handling":
           display_name: """Pilotagem Experiente"""
           text: """CHANGE ME%LINEBREAK%<i>CHANGE ME%BARRELROLL%</i>%LINEBREAK%<i>CHANGE ME <r>%BARRELROLL%</r></i>%LINEBREAK%<i class = flavor_text>Apesar de caças pesados serem plenamente capazes de realizar uma pirueta, apenas os pilotos mais experientes sabem como executá-la sem exercer estresse indevido à nave ou sem deixá-la exposta a ataques.</i>"""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após realizar um ataque primário, você pode gastar 1&nbsp;%FORCE% para realizar um ataque %SINGLETURRETARC% bônus usando um %SINGLETURRETARC% que ainda não tenha usado para atacar nessa rodada. Se fizer isso e estiver estressado,você tem a opção de rerrolar1 dado de ataque."""
        "Fanatical":
           display_name: """Fanatical"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%While you perform a primary attack, if you are not shielded, you may change 1&nbsp;%FOCUS% result to a %HIT% result."""
        "Fearless":
           display_name: """Destemido"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando realizar um ataque primário %FRONTARC%, se o alcance de ataque for 1 evocê estiver no %FRONTARC% do defensor,você pode mudar 1 de seusresultados para um resultado %HIT%."""
        "Feedback Array":
           display_name: """Matriz de Retorno"""
           text: """Antes de engajar, você podereceber 1 ficha de íon e1 ficha de desarmamento.Se você fizer isso, cada naveem alcance 0 sofre 1 dano&nbsp;%HIT%."""
        "Ferrosphere Paint":
           display_name: """Ferrosphere Paint"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%After an enemy ship locks you, if you are not in that ship’s %BULLSEYEARC%, that ship gains 1 stress token."""
        "Fifth Brother":
           display_name: """Quinto Irmão"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Ao realizar um ataque,você pode gastar 1 %FORCE% para mudar 1 de seus resultados %FOCUS% para um resultado %CRIT%."""
        "Finn":
           display_name: """Finn"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%While you defend or perform a primary attack, if the enemy ship is in your %FRONTARC%, you may add 1 blank result to your roll (this die can be rerolled or otherwise modified)."""
        "Fire-Control System":
           display_name: """Sistema de Controle de Tiro"""
           text: """Quando realizar um ataque, se você tiver uma mira travada no defensor, você pode rerrolar 1 dado de ataque. Se fizer isso, você não pode gastarsua mira durante este ataque."""
        "Freelance Slicer":
           display_name: """Invasor Independente"""
           text: """Quando defender, antes que osdados de ataque sejam rolados, você pode gastar uma mira sua travada no atacante para rolar 1 dado de ataque. Se você fizer isso, o atacante recebe 1 ficha de interferência. Então, em um resultado %HIT% ou %CRIT%, receba 1 ficha de interferência."""
        'GNK "Gonk" Droid':
           display_name: """Droide “Gonk” GNK"""
           text: """<strong>Preparação:</strong> Perca 1&nbsp;%CHARGE%.%LINEBREAK%<strong>Ação:</strong> Recupere 1&nbsp;%CHARGE%.%LINEBREAK%<strong>Ação:</strong> Gaste 1&nbsp;%CHARGE% para recuperar 1 escudo."""
        "General Hux":
           display_name: """General Hux"""
           text: """<i>CHANGE ME %COORDINATE% CHANGE ME <r>%COORDINATE%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%While you perform a white %COORDINATE% action, you may treat it as red. If you do, you may coordinate up to 2 additional ships of the same ship type, and each ship you coordinate must perform the same action, treating that action as red."""
        "Grand Inquisitor":
           display_name: """Grande Inquisidor"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após uma nave inimiga em alcance 0-2 revelar o disco dela, você pode gastar 1&nbsp;%FORCE% para realizar 1 ação branca de sua barra de ações, tratando-a como se fosse vermelha."""
        "Grand Moff Tarkin":
           display_name: """Grão Moff Tarkin"""
           text: """<i>CHANGE ME %LOCK% CHANGE ME <r>%LOCK%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante a Fase de Sistema, você pode gastar 2 %CHARGE%.Se fizer isso, cada nave amiga pode travar uma mira em uma nave que você tem uma mira travada."""
        "Greedo":
           display_name: """Greedo"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando realizar um ataque, você pode gastar 1 %CHARGE%para mudar 1 resultado %HIT% para um resultado %CRIT%.%LINEBREAK%Quando defender, se sua %CHARGE% estiver ativa, o atacantepode mudar 1 resultado %HIT%para um resultado %CRIT%."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante a Fase de Engajamento,você pode realizar um ataque %SINGLETURRETARC%com iniciativa 7. Você não podeatacar usando esse %SINGLETURRETARC% novamente nesta rodada."""
        "Han Solo (Scum)":
           display_name: """Han Solo (Scum)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Antes de engajar, você poderealizar uma ação %FOCUS% vermelha."""
        "Han Solo (Resistance)":
           display_name: """Han Solo (Resistance)"""
           text: """<i>CHANGE ME<r>%EVADE%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%After you perform an %EVADE% action, gain additional evade tokens equal to the number of enemy ships at range 0-1."""
        "Hate":
           display_name: """Hate"""
           text: """After you suffer 1 or more damage, recover that many %FORCE%."""
        "Heavy Laser Cannon":
           display_name: """Canhão de Laser Pesado"""
           text: """<strong>Ataque:</strong> Após a etapa Modificar Dados de Ataque, mude todos os resultados %CRIT% para resultados %HIT%."""
        "Heightened Perception":
           display_name: """Percepção Aguçada"""
           text: """No início da Fase de Engajamento,você pode gastar 1 %FORCE%. Se fizer isso, engaje em iniciativa 7 nesta fase em vez do seu valor de iniciativa normal."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Você consegue executar manobrasvermelhas mesmo se estiver estressado. Após executar completamente uma manobra vermelha, se tiver 3 ou mais fichas de estresse, remova 1 ficha de estresse e sofra 1 dano&nbsp;%HIT%."""
        "Heroic":
           display_name: """Heroic"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%While you defend or perform an attack, if you have only blank results and have 2 or more results, you may reroll any number of your dice."""
        "Homing Missiles":
           display_name: """Mísseis Teleguiados"""
           text: """<strong>Ataque (</strong>%LOCK%<strong>):</strong> Gaste 1&nbsp;%CHARGE%. Após você declarar o defensor, ele pode sofrer1 dano&nbsp;%HIT%. Se ele fizer isso, pule as etapas de Dadosde Ataque e de Defesae considere oataque um acerto."""
        "Hotshot Gunner":
           display_name: """Atirador Excepcional"""
           text: """Quando você realizar um ataque %SINGLETURRETARC%, após a etapa Modificar Dadosde Defesa, o defensor remove1 ficha de foco ou de cálculo."""
        "Hull Upgrade":
           display_name: """Melhoria de Casco"""
           text: """CHANGE ME%LINEBREAK%<i class = flavor_text>Aqueles que não podemadquirir um bom gerador de escudo, adicionam placas encouraçadas adicionais aocasco da nave para compensar.</i>"""
        "Hyperspace Tracking Data":
           display_name: """Hyperspace Tracking Data"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Setup:</strong> Before placing forces, you may choose a number between 0 and 6. Treat your initiative as the chosen value during Setup.%LINEBREAK%After Setup, assign 1 focus or evade token to each friendly ship at range&nbsp;0-2."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """<i>CHANGE ME%CALCULATE%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Você tem a habilidadede piloto de cada nave amiga com a carta de melhoria <strong>IG-2000</strong>.%LINEBREAK%Após realizar umaação %CALCULATE%, receba1 ficha de cálculo."""
        "ISB Slicer":
           display_name: """Invasor do DSI"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante a Fase Final, naves inimigas em alcance 1-2 não podem remover fichas de interferência."""
        "Inertial Dampeners":
           display_name: """Amortecedores Inerciais"""
           text: """Antes de executar uma manobra, você pode gastar 1 escudo. Se fizer isso, execute uma manobra [0&nbsp;%STOP%] brancaem vez da manobra que você revelou e,então, receba 1 ficha de estresse."""
        "Informant":
           display_name: """Informante"""
           text: """<strong>Preparação:</strong> Após posicionar as forças, escolha 1 nave inimiga e atribua a condição <strong>Dispositivo de Escuta</strong> a ela."""
        "Instinctive Aim":
           display_name: """Mira Instintiva"""
           text: """Quando realizar um ataqueespecial, você pode gastar1 %FORCE% para ignorar orequisito %FOCUS% ou %LOCK%."""
        "Integrated S-Foils":
           display_name: """Integrated S-foils"""
           text: """<strong>Closed: </strong><i>Adds %BARRELROLL%, %FOCUS% &nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked"></i>&nbsp;<r>%BARRELROLL%</r></i>%LINEBREAK% While you perform a primary attack, if the defender is not in your %BULLSEYEARC%, roll 1 fewer attack die. %LINEBREAK% Before you activate, you may flip this card. %LINEBREAK% <b>Open:</b> Before you activate, you may flip this card."""
        "Intimidation":
           display_name: """Intimidação"""
           text: """Quando uma nave inimiga emalcance 0 defender, ela rola1 dado de defesa a menos."""
        "Ion Cannon":
           display_name: """Canhão Iônico"""
           text: """<strong>Ataque:</strong> Se este ataque acertar, gaste 1 resultado %HIT% ou %CRIT% para fazer com que o defensor sofra 1 dano %HIT%. Todos os resultados %HIT%/%CRIT% restantes atribuem fichas de íon em vez de causarem dano."""
        "Ion Cannon Turret":
           display_name: """Torre de Canhão Iônico"""
           text: """<i>CHANGE ME%ROTATEARC%</i>%LINEBREAK%<strong>Ataque:</strong> Se este ataque acertar, gaste 1 resultado %HIT% ou %CRIT% para fazer com que o defensor sofra 1 dano %HIT%. Todos os resultados %HIT%/%CRIT% restantes atribuem fichas de íon em vez de causarem dano."""
        "Ion Missiles":
           display_name: """Mísseis Iônicos"""
           text: """<strong>Ataque (</strong>%LOCK%<strong>):</strong> Gaste 1&nbsp;%CHARGE%.Se este ataque acertar, gaste 1 resultado %HIT% ou %CRIT% para fazer com que o defensor sofra 1 dano %HIT%. Todos os resultados %HIT%/%CRIT% restantes atribuem fichas de íon em vez de causarem dano."""
        "Ion Torpedoes":
           display_name: """Torpedos Iônicos"""
           text: """<strong>Ataque (</strong>%LOCK%<strong>):</strong> Gaste 1&nbsp;%CHARGE%.Se este ataque acertar, gaste 1 resultado %HIT% ou %CRIT% para fazer com que o defensor sofra 1 dano %HIT%. Todos os resultados %HIT%/%CRIT% restantes atribuem fichas de íon em vez de causarem dano."""
        "Jabba the Hutt":
           display_name: """Jabba, o Hutt"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante a Fase Final,você pode escolher 1 nave amiga em alcance 0-2 e gastar 1 %CHARGE%. Se fizer isso,a nave escolhida recupera 1&nbsp;%CHARGE% em 1 de suas melhorias %ILLICIT% equipadas."""
        "Jamming Beam":
           display_name: """Feixe de Interferência"""
           text: """<strong>Ataque:</strong> Se este ataque acertar, todos os resultados %HIT%/%CRIT% atribuem fichasde interferência em vez de causarem dano."""
        "Juke":
           display_name: """Finta"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%Quando realizar um ataque, seestiver desviando, você podemudar 1 dos resultados %EVADE% dodefensor para um resultado %FOCUS%."""
        "Jyn Erso":
           display_name: """Jyn Erso"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Se uma nave amiga em alcance0-3 for receber uma ficha de foco,ela pode, em vez disso, receber1 ficha de desvio."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após uma nave amiga em alcance 0-2 executar completamente uma manobra branca, você pode gastar 1&nbsp;%FORCE% para remover 1 ficha de estresse dessa nave amiga."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%No início da Fase Final, você pode escolher 1 nave inimiga em alcance 0-2 em seu arco de tiro. Se você fizer isso, a nave escolhida não remove as fichas de tração atribuídas a ela."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Action:</strong> Choose 1 enemy ship at range 1-3. If you do, spend 1&nbsp;%FORCE% to assign the <strong>I’ll Show You the Dark Side</strong> condition to that ship."""
        "L3-37":
           display_name: """L3-37"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparação:</strong> Equipe estelado para cima.%LINEBREAK%Quando defender, você pode virar esta carta. Se fizer isso, o atacante devererrolar todos os dados de ataque.<i>CHANGE MECHANGE ME</i>%LINEBREAK%Se você não tiver escudos,reduza a dificuldade das suas manobras de curva (%BANKLEFT% e %BANKRIGHT%)."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Ação:</strong> Role 2 dados de defesa.Para cada resultado %FOCUS%, receba 1 ficha de foco. Para cada resultado %EVADE%, receba 1 ficha de desvio. Se os dois resultados forem em branco, o jogador adversário escolhe foco ou desvio. Você recebe 1 ficha do tipo escolhido."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian (Scum)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após rolar dados, você podegastar 1 ficha verde para rerrolaraté 2 de seus resultados."""
        "Lando's Millennium Falcon":
           display_name: """Millennium Falcon de Lando"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%1 Nave de Fuga pode acoplar com você.%LINEBREAK%Quando tiver um Nave de Fuga acoplado, você pode gastar os escudos dele como se estivessem em sua carta de nave.%LINEBREAK%Quando realizar um ataque primário contra uma nave estressada, role 1 dado de ataque adicional."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando defender, se o atacanteestiver estressado, você poderemover 1 estresse do atacantepara mudar 1 de seus resultadosem branco/%FOCUS% para um resultado %EVADE%."""
        "Leia Organa":
           display_name: """Leia Organa"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%No início da Fase de Ativação, você pode gastar 3 %CHARGE%. Durante esta fase,cada nave amiga reduz a dificuldade das próprias manobras vermelhas."""
        "Lone Wolf":
           display_name: """Lobo Solitário"""
           text: """Quando defender ou realizar um ataque,se não houver outranave amiga em alcance 0-2, você pode gastar1&nbsp;%CHARGE% para rerrolar 1 de seus dados."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%No início da Fasede Engajamento, vocêpode gastar 1 %FORCE%para rotacionarseu indicador %SINGLETURRETARC%."""
        "M9-G8":
           display_name: """M9-G8"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%While a ship you are locking performs an attack, you may choose 1 attack die. If you do, the attacker rerolls that die."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após defender, se o ataque acertou, você pode travar a mira no atacante."""
        "Marksmanship":
           display_name: """Franco-Atirador"""
           text: """Quando realizar um ataque,se o defensor estiver em seu %BULLSEYEARC%,você pode mudar 1 resultado %HIT%para um resultado %CRIT%."""
        "Maul":
           display_name: """Maul"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE MEEzra Bridger CHANGE ME CHANGE MEEzra Bridger (Sheathipede) CHANGE ME CHANGE MEEzra Bridger (TIE Fighter)</i>%LINEBREAK%Após sofrer dano,você pode receber1 ficha de estressepara recuperar 1 %FORCE%.%LINEBREAK%Você consegue equipar melhorias “Lado Sombrio”."""
        "Minister Tua":
           display_name: """Ministra Tua"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%No início da Fase de Engajamento, se você estiver danificado, você poderealizar uma ação %REINFORCE% vermelha."""
        "Moff Jerjerrod":
           display_name: """Moff Jerjerrod"""
           text: """<i>CHANGE ME %COORDINATE% CHANGE ME <r>%COORDINATE%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante a Fase de Sistema, você pode gastar 2 %CHARGE%.Se fizer isso, escolhao gabarito [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%],ou [1&nbsp;%BANKRIGHT%]. Cada nave amiga pode realizar uma ação %BOOST% vermelha usando o gabarito escolhido."""
        "Munitions Failsafe":
           display_name: """Abortar Disparo"""
           text: """Quando realizar um ataque %TORPEDO% ou %MISSILE%, após rolar os dados de ataque, você pode cancelar todos os resultados dos dados para recuperar 1 %CHARGE% que gastou como custo do ataque."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Reduza a dificuldade das suas manobras de curva (%BANKLEFT% e %BANKRIGHT%)."""
        "Novice Technician":
           display_name: """Técnico Novato"""
           text: """No final da rodada, você pode rolar1 dado de ataque para reparar 1 carta de dano virada para cima. Então, se o resultado foi um %HIT%, exponha 1 carta de dano."""
        "Os-1 Arsenal Loadout":
           display_name: """Carga de Arsenal Os-1"""
           text: """Quando tiver exatamente 1 fichade desarmamento, você ainda consegue realizar ataques %TORPEDO% e %MISSILE% contra alvosnos quais você tem uma mira travada.Se fizer isso, você não pode gastarsua trava de mira durante este ataque.%LINEBREAK%Adicione os encaixes de melhoria %TORPEDO% e %MISSILE%."""
        "Outmaneuver":
           display_name: """Perseguir"""
           text: """Quando realizar umataque %FRONTARC%, se você nãoestiver no arco de tirodo defensor, ele rola 1dado de defesa a menos."""
        "Paige Tico":
           display_name: """Paige Tico"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%After you perform a primary attack, you may drop 1 bomb or rotate your %SINGLETURRETARC%.%LINEBREAK%After you are destroyed, you may drop 1 bomb."""
        "Pattern Analyzer":
           display_name: """Pattern Analyzer"""
           text: """While you fully execute a red maneuver, before the Check Difficulty step, you may perform 1 action."""
        "Perceptive Copilot":
           display_name: """Co-piloto Perspicaz"""
           text: """Após realizar uma ação %FOCUS%,receba 1 ficha de foco."""
        "Petty Officer Thanisson":
           display_name: """Petty Officer Thanisson"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%During the Activation or Engagement Phase, after an enemy ship in your %FRONTARC% at range 0-1 gains a red or orange token, if you are not stressed, you may gain 1 stress token. If you do, that ship gains 1 additional token of the type that it gained."""
        "Pivot Wing":
           display_name: """Asas Pivotantes"""
           text: """<strong>Fechadas: </strong>Quando você defender, role 1 dado de defesa a menos.%LINEBREAK%Após executar uma manobra [0 %STOP%], você pode rotacionar sua nave em90° ou 180°.%LINEBREAK%Antes de ativar, você podevirar esta carta.%LINEBREAK%<strong>Abertas: </strong>Antes de ativar, você podevirar esta carta."""
        "Predator":
           display_name: """Predador"""
           text: """Quando realizar um ataque primário,se o defensor estiver em seu %BULLSEYEARC%,você pode rerrolar 1 dado de ataque."""
        "Predictive Shot":
           display_name: """Predictive Shot"""
           text: """After you declare an attack, if the defender is in your %BULLSEYEARC%, you may spend 1&nbsp;%FORCE%. If you do, during the Roll Defense Dice step, the defender cannot roll more defense dice than the number of your %HIT%/%CRIT% results."""
        "Primed Thrusters":
           display_name: """Primed Thrusters"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%While you have 2 or fewer stress tokens, you can perform %BARRELROLL% and %BOOST% actions even while stressed."""
        "Proton Bombs":
           display_name: """Bombas de Prótons"""
           text: """<strong>Bomba</strong>%LINEBREAK%Durante a Fase de Sistema, você pode gastar 1 %CHARGE%para soltar umaBomba de Prótonscom o gabarito [1&nbsp;%STRAIGHT%]."""
        "Proton Rockets":
           display_name: """Foguetes de Prótons"""
           text: """<strong>Ataque (</strong>%FOCUS%<strong>):</strong> Gaste 1&nbsp;%CHARGE%."""
        "Proton Torpedoes":
           display_name: """Torpedos de Prótons"""
           text: """<strong>Ataque (</strong>%LOCK%<strong>):</strong> Gaste 1&nbsp;%CHARGE%. Mude 1 resultado&nbsp;%HIT% para um resultado %CRIT%."""
        "Proximity Mines":
           display_name: """Minas de Proximidade"""
           text: """<strong>Mina</strong>%LINEBREAK%Durante a Fase deSistema, você pode gastar1 %CHARGE% para soltar uma Minade Proximidade como gabarito [1&nbsp;%STRAIGHT%].%LINEBREAK%A %CHARGE% dessa carta nãopode ser recuperada."""
        "Qi'ra":
           display_name: """Qi’ra"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando se mover e realizarataques, você ignora obstáculosem que tem uma mira travada."""
        "R2 Astromech":
           display_name: """Astromecânico R2"""
           text: """Após revelar seu disco, você pode gastar 1 %CHARGE%e receber 1 ficha de desarmamento para recuperar 1 escudo."""
        "R2-D2 (Crew)":
           display_name: """R2-D2 (Crew)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante a Fase Final, se vocêestiver danificado e não tiver escudos, você pode rolar 1 dado de ataque para recuperar 1 escudo. Em um resultado %HIT%, exponha 1 de suas cartas de dano."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após revelar seu disco, você pode gastar 1 %CHARGE% e receber 1 ficha de desarmamento para recuperar 1 escudo."""
        "R2-HA":
           display_name: """R2-HA"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%While you defend, you may spend your lock on the attacker to reroll any number of your defense dice."""
        "R3 Astromech":
           display_name: """Astromecânico R3"""
           text: """Você consegue ter até 2 miras travadas simultaneamente. Cada mira deve estar em um objeto diferente.%LINEBREAK%Após realizar uma ação %LOCK%,você pode travar uma mira."""
        "R4 Astromech":
           display_name: """Astromecânico R4"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Reduza a dificuldade de suasmanobras básicas de velocidade1-2 (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%)."""
        "R5 Astromech":
           display_name: """Astromecânico R5"""
           text: """<strong>Ação:</strong> Gaste 1 %CHARGE% para reparar 1 carta de dano virada para baixo.%LINEBREAK%<strong>Ação:</strong> Repare 1 cartade dano do tipo <strong>Nave</strong> virada para cima."""
        "R5-D8":
           display_name: """R5-D8"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Ação:</strong> Gaste 1 %CHARGE% para reparar 1 carta de dano virada para baixo.%LINEBREAK%<strong>Ação:</strong> Repare 1 cartade dano do tipo <strong>Nave</strong> virada para cima."""
        "R5-P8":
           display_name: """R5-P8"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando realizar um ataque contra um defensor emseu %FRONTARC%, você pode gastar 1 %CHARGE% para rerrolar 1 dado de ataque. Se o resultado rerrolado for um %CRIT%, sofra 1 dano %CRIT%."""
        "R5-TK":
           display_name: """R5-TK"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Você consegue realizar ataquescontra naves amigas."""
        "R5-X3":
           display_name: """R5-X3"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Before you activate or engage, you may spend 1&nbsp;%CHARGE% to ignore obstacles until the end of this phase."""
        "Rey":
           display_name: """Rey"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%While you defend or perform an attack, if the enemy ship is in your %SINGLETURRETARC%, you may spend 1&nbsp;%FORCE% to change 1 of your blank results to a %EVADE% or %HIT% result."""
        "Rey's Millennium Falcon":
           display_name: """Rey’s Millennium Falcon"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%If you have 2 or fewer stress tokens, you can execute red Segnor’s Loop [%SLOOPLEFT% or %SLOOPRIGHT%] maneuvers and perform %BOOST% and&nbsp;<rotate> actions even while stressed."""
        "Rigged Cargo Chute":
           display_name: """Ejetor de Carregamento"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%<strong>Ação:</strong> Gaste 1&nbsp;%CHARGE%.Solte 1 carregamento solto usando o gabarito [1&nbsp;%STRAIGHT%]."""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%While you defend or perform an attack, you may spend 1 of your results to acquire a lock on the enemy ship."""
        "Ruthless":
           display_name: """Impiedoso"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando realizar um ataque, você pode escolher outra nave amiga em alcance 0-1 do defensor. Se fizer isso, a nave escolhida sofre 1 dano&nbsp;%HIT% e você pode mudar 1 dos resultados de seus dados para um resultado %HIT%."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparação:</strong> Coloque 1 ficha de íon,1 de interferência, 1 de estresse e1 de tração nesta carta. %LINEBREAK%Após uma nave sofrer o efeito de uma bomba amiga, você pode remover 1 ficha de íon, de interferência, de estresse ou de tração desta carta. Se você fizer isso, a nave que sofreu o efeito da bomba recebe a ficha removida."""
        "Saturation Salvo":
           display_name: """Rajada Massiva"""
           text: """<i>CHANGE ME %RELOAD% CHANGE ME <r>%RELOAD%</r></i>%LINEBREAK%Quando realizar um ataque %TORPEDO% ou %MISSILE%, você pode gastar 1 %CHARGE% da melhoria utilizada. Se fizer isso, escolha dois dados de defesa. O defensor deve rerrolar os dados escolhidos."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Ao realizar um ataque, vocêpode sofrer 1&nbsp;dano %HIT% para mudar todos os seus resultados %FOCUS% para resultados %CRIT%."""
        "Seasoned Navigator":
           display_name: """Navegador Experiente"""
           text: """Após revelar seu disco, você pode selecionar, em seu disco, outra manobra não vermelha de mesma velocidade. Quando executar a manobra escolhida, aumente a dificuldade dela."""
        "Seismic Charges":
           display_name: """Cargas Sísmicas"""
           text: """<strong>Bomba</strong>%LINEBREAK%Durante a Fase de Sistema, você pode gastar 1 %CHARGE% para soltar uma Carga Sísmica com o gabarito [1&nbsp;%STRAIGHT%]."""
        "Selfless":
           display_name: """Altruísmo"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando outra nave amiga em alcance 0-1 defender, antes da etapa Neutralizar Resultados, se você estiver no arco de ataque, você pode sofrer 1&nbsp;dano %CRIT%para cancelar 1&nbsp;resultado %CRIT%."""
        "Sense":
           display_name: """Pressentimento"""
           text: """Durante a Fase de Sistema, vocêpode escolher 1 nave em alcance 0-1 e olhar o disco dela. Se gastar 1 %FORCE%, você pode escolher, em vez disso,uma nave em alcance 0-3."""
        "Servomotor S-Foils":
           display_name: """Servomotor de S-foils"""
           text: """<strong>Fechado: </strong><i>CHANGE ME%BOOST% ,  %FOCUS%&nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i>&nbsp;<r>%BOOST%</r></i>%LINEBREAK%Quando você realizar um ataque primário, role 1 dado de ataque a menos.%LINEBREAK%Antes de ativar, vocêpode virar esta carta.%LINEBREAK%<strong>Aberto: </strong>Antes de ativar, você podevirar esta carta."""
        "Seventh Sister":
           display_name: """Sétima Irmã"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Se uma nave inimiga em alcance 0-1 for receberuma ficha de estresse, você pode gastar 1 %FORCE% para fazer com que ela receba, em vez disso, 1 ficha de interferência ou de tração."""
        "Shield Upgrade":
           display_name: """Melhoria de Escudo"""
           text: """CHANGE ME%LINEBREAK%<i class = flavor_text>Escudos defletores são uma linha defesa fundamental para a maioria das naves estelares maiores que os caças leves. Apesar de geradores de escudo serem caros, todos os pilotos, exceto talvez os mais confiantes ou irresponsáveis, sabem do valor inestimável deste investimento.</i>"""
        "Skilled Bombardier":
           display_name: """Bombardeador Habilidoso"""
           text: """Se for soltar ou lançar umdispositivo, você pode usarum gabarito de mesma direçãocom velocidade 1 maior ou menor."""
        "Special Forces Gunner":
           display_name: """Special Forces Gunner"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%While you perform a primary %FRONTARC% attack, if your %SINGLETURRETARC% is in your %FRONTARC%, you may roll 1&nbsp;additional attack die.%LINEBREAK%After you perform a primary %FRONTARC% attack, if your %SINGLETURRETARC% is in your %REARARC%, you may perform a bonus primary %SINGLETURRETARC% attack."""
        "Squad Leader":
           display_name: """Líder de Esquadrão"""
           text: """<i>CHANGE ME<r>%COORDINATE%</r></i>%LINEBREAK%Quando você coordenar, a nave escolhida consegue realizar uma ação apenas se a ação em questão também estiver na sua barra de ações."""
        "Static Discharge Vanes":
           display_name: """Descarga Estática"""
           text: """Se você for receber uma ficha de íon ou de interferência, você pode escolher uma nave em alcance 0-1. Se fizer isso, receba 1 ficha de estresse e transfira1 ficha de íon ou de interferência paraa nave escolhida"""
        "Stealth Device":
           display_name: """Dispositivo de Ocultamento"""
           text: """CHANGE ME%LINEBREAK%Quando você defender, se sua %CHARGE% estiver ativa, role 1 dado de defesa adicional.%LINEBREAK%Após sofrer dano,perca 1&nbsp;%CHARGE%."""
        "Supernatural Reflexes":
           display_name: """Reflexos Sobrenaturais"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Antes de ativar, você podegastar 1&nbsp;%FORCE% para realizar umaação %BARRELROLL% ou %BOOST%. Então, se você realizou uma ação que não está emsua barra de ações, sofra 1 dano %HIT%."""
        "Supreme Leader Snoke":
           display_name: """Supreme Leader Snoke"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%During the System Phase, you may choose any number of enemy ships beyond range 1. If you do, spend that many %FORCE% to flip each chosen ship’s dial faceup."""
        "Swarm Tactics":
           display_name: """Tática de Enxame"""
           text: """No início da Fase de Engajamento,você pode escolher 1 nave amiga em alcance 1. Se fizer isso, trate a iniciativa da nave escolhida como se ela fosse igual à sua até o final da rodada."""
        "Tactical Officer":
           display_name: """Oficial Tático"""
           text: """<i>CHANGE ME%COORDINATE%</i>%LINEBREAK%<i>CHANGE ME <r>%COORDINATE%</r></i>%LINEBREAK%<i class = flavor_text>No caos de uma batalhade caças estelares,uma única ordem podesignificar a diferença entrea vitória e um massacre.</i>"""
        "Tactical Scrambler":
           display_name: """Embaralhador Tático"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%Quando você obstruir o ataquede uma nave inimiga, o defensorrola 1 dado de defesa adicional."""
        "Targeting Synchronizer":
           display_name: """Targeting Synchronizer"""
           text: """<i>CHANGE ME %LOCK% CHANGE ME <r>%LOCK%</r></i>%LINEBREAK%While a friendly ship at range 1-2 performs an attack against a target you have locked, that ship ignores the&nbsp;%LOCK% attack requirement."""
        "Tobias Beckett":
           display_name: """Tobias Beckett"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparação:</strong> Após posicionaras forças, você pode escolher 1 obstáculo da área de jogo. Se fizer isso, posicione-o em qualquer lugarda área de jogo além de alcance 2de qualquer borda ou nave e além de alcance 1 de outros obstáculos."""
        "Tractor Beam":
           display_name: """Feixe de Tração"""
           text: """<strong>Ataque:</strong> Se esteataque acertar, todosos resultados %HIT%/%CRIT% atribuem fichas de traçãoem vez de causarem dano."""
        "Trajectory Simulator":
           display_name: """Simulador de Trajetória"""
           text: """Durante a Fase de Sistema, se vocêfor soltar ou lançar uma bomba,você pode, em vez disso, lançá-la usando o gabarito [5&nbsp;%STRAIGHT%]."""
        "Trick Shot":
           display_name: """Tiro Ardiloso"""
           text: """Quando você realizar um ataque obstruído por um obstáculo,role 1 dado de ataque adicional."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após executar parcialmenteuma manobra, você pode sofrer1 dano %HIT% para realizar 1 ação branca."""
        "Veteran Tail Gunner":
           display_name: """Atirador de Cauda Veterano"""
           text: """Após realizar um ataqueprimário %FRONTARC%, você pode realizarum ataque primário %REARARC% bônus."""
        "Veteran Turret Gunner":
           display_name: """Atirador de Torre Veterano"""
           text: """<i>CHANGE ME <r>%ROTATEARC%</r> CHANGE ME %ROTATEARC%</i>%LINEBREAK%Após realizar um ataque primário,você pode realizar um ataque %SINGLETURRETARC%bônus usando um %SINGLETURRETARC% que ainda não tenha usado para atacar nessa rodada."""
        "Xg-1 Assault Configuration":
           display_name: """Configuração de Assalto Xg-1"""
           text: """Quando tiver exatamente 1 ficha de desarmamento, você ainda consegue realizar ataques %CANNON%. Quando realizar umataque %CANNON% enquanto está desarmado,role no máximo 3 dados de ataque.%LINEBREAK%Adicione o encaixe de melhoria %CANNON%."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Quando realizar um ataque, se não estiver estressado, você pode escolher 1 dado de defesa e receber 1 ficha de estresse. Se você fizer isso, o defensor deve rerrolar o dado escolhido."""
        '"Chopper" (Crew)':
           display_name: """“Chopper” (Crew)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante a etapa Realizar Ação,você pode realizar 1 ação, mesmose estiver estressado. Após realizar uma ação enquanto estressado, sofra 1 dano&nbsp;%HIT%, a menos que você exponha uma de suas cartas de dano."""
        '"Chopper" (Astromech)':
           display_name: """Chopper" (Astromech)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Ação:</strong> Gaste 1 %CHARGE% não recursiva de outra melhoria equipada para recuperar 1 escudo. %LINEBREAK%<strong>Ação:</strong> Gaste 2 escudos pararecuperar 1 %CHARGE% não recursivade uma melhoria equipada."""
        '"Genius"':
           display_name: """“Gênio”"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Após executar completamente uma manobra, se você não soltou nem lançou um dispositivo nesta rodada, você pode soltar 1 bomba."""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Você consegue realizar ataques primários em alcance 0. Naves inimigas em alcance 0 conseguem realizar ataques primários contra você."""

 
    condition_translations = {}

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


    exportObj.setupTranslationCardData pilot_translations, upgrade_translations, condition_translations, chassis_translations
