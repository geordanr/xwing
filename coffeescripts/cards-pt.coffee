exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.pt = 'Português'

exportObj.translations ?= {}
exportObj.translations.Português =

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.Português = () ->
    exportObj.cardLanguage = 'Português'

 

    pilot_translations =
        "4-LOM":
           display_name: """4-LOM"""
           text: """Após você executar completamente uma manobra vermelha, receba 1 ficha de cálculo.%LINEBREAK%No início da Fase Final, você pode escolher1 nave em alcance 0-1. Se fizerisso, transfira 1 de suas fichas deestresse para a nave escolhida."""
        "Nashtah Pup":
           display_name: """Nashtah Pup"""
           text: """Você consegue se destacar apenas com um destacamento de emergência, e possui o nome, a iniciativa, a habilidade de piloto e a %CHARGE% da <strong>Hound’s Tooth</strong> amiga destruída.%LINEBREAK%<strong>Módulo de Escape:</strong> <strong>Preparação:</strong>Requer a <strong>Hound’s Tooth</strong>. Você <b>deve</b>iniciar o jogo acoplado na <strong>Hound’s Tooth</strong>."""
        "AP-5":
           display_name: """AP-5"""
           text: """Quando você coordenar, se escolheruma nave com exatamente 1 ficha de estresse, ela consegue realizar ações.%LINEBREAK%<strong>Shuttle de Comunicação:</strong> Quandovocê estiver acoplado, seu porta-navesganha %COORDINATE%. Antes de o porta-naves ativar,ele pode realizar uma ação %COORDINATE%."""
        "Academy Pilot":
           display_name: """Piloto da Academia"""
           text: """<i class = flavor_text>Desenvolvida pela Sienar Fleet Systemse produzida em uma escala assustadora,a rápida e ágil TIE/ln é utilizada pelo Império Galático como seu principal caça estelar.</i>"""
        "Ahhav":
           display_name: """Ahhav"""
           text: """While you defend or perform an attack, if the enemy ship is a larger size than you, roll 1 additional die.%LINEBREAK%<strong>Notched Stabilizers:</strong> While you move, you ignore asteroids."""
        "Airen Cracken":
           display_name: """Airen Cracken"""
           text: """Após realizar um ataque, você pode escolher 1 nave amiga em alcance 1. A nave escolhida pode realizar uma ação, tratando-a como uma ação vermelha."""
        "Alpha Squadron Pilot":
           display_name: """Piloto do Esq. Alfa"""
           text: """<i class = flavor_text>A Sienar Fleet Systems projetou a TIE interceptor com quatro canhões lasers em suas asas, um aumento drástico em seu poder de fogo se comparado com seus antecessores.</i>%LINEBREAK%<strong>Autopropulsores:</strong> Após realizaruma ação, você pode realizaruma ação %BARRELROLL% ou %BOOST% vermelha."""
        "Arvel Crynyd":
           display_name: """Arvel Crynyd"""
           text: """Você consegue realizar ataquesprimários em alcance 0.%LINEBREAK%Se você for falhar em uma ação %BOOST% porque sobrepôs outra nave, em vez disso, resolva-a como se estivesse executando parcialmente uma manobra.%LINEBREAK%<strong>Propulsores Vetorizados:</strong> Após realizaruma ação, você pode realizar uma ação%BOOST% vermelha."""
        "Asajj Ventress":
           display_name: """Asajj Ventress"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave inimiga em seu %SINGLETURRETARC% em alcance 0-2 e gastar 1 ￼. Se você fizer isso, a nave escolhida recebe 1 ficha de estresse, a menos que ela remova1 ficha verde."""
        "Autopilot Drone":
           display_name: """Piloto Automático"""
           text: """<i class = flavor_text>Às vezes, os avisos dosfabricantes devem ser desobedecidos.</i>%LINEBREAK%<strong>Células de Energia Viciadas:</strong> Durante a Fase de Sistema, se você não estiver acoplado, perca 1 %CHARGE%. No final da Fase de Ativação, se você tiver 0 %CHARGE%, você é destruído. Antes de você ser removido, cada nave em alcance 0-1 sofre 1 dano %CRIT%."""
        "Bandit Squadron Pilot":
           display_name: """Piloto do Esq. Bandido"""
           text: """<i class = flavor_text>A Z-95 Headhunter foi a principal inspiraçãoda Incom Corporation para criar o caça estelar X-wing T-65. Apesar de ser considerada ultrapassada para os padrões modernos, ela continua sendo um caça versátil e potente.</i>"""
        "Baron of the Empire":
           display_name: """Barão do Império"""
           text: """<i class = flavor_text>A TIE Advanced v1 da Sienar Fleet Systems é um projeto de caça estelar revolucionário, apresentando motores aprimorados, um lança-mísseis e s-foils dobráveis.</i>"""
        "Ben Teene":
           display_name: """Ben Teene"""
           text: """After you perform an attack, if the defender is in your %SINGLETURRETARC%, assign the <strong>Rattled</strong> condition to the defender."""
        "Benthic Two Tubes":
           display_name: """Benthic Two Tubes"""
           text: """Após realizar uma ação %FOCUS%, você pode transferir 1 de suas fichas de foco para uma nave amiga em alcance 1-2."""
        "Biggs Darklighter":
           display_name: """Biggs Darklighter"""
           text: """Quando outra nave amiga emalcance 0-1 defender, antes da etapa Neutralizar Resultados, se vocêestiver no arco de ataque, você podesofrer 1&nbsp;dano %HIT% ou %CRIT% paracancelar 1 resultado correspondente."""
        "Binayre Pirate":
           display_name: """Pirata Binayre"""
           text: """<i class = flavor_text>Operando a partir dos Mundos Gêmeos, Talus e Tralus, a gangue de contrabandistas de Kath Scarlet nunca foi reconhecida por boa reputaçãoou confiabilidade - mesmo por outros criminosos.</i>"""
        "Black Squadron Ace":
           display_name: """Ás do Esquadrão Preto"""
           text: """<i class = flavor_text>O pilotos de TIE/ln de elite do EsquadrãoPreto acompanharam Darth Vader emum ataque devastador contra as forçasRebeldes na Batalha de Yavin.</i>"""
        "Black Squadron Ace (T-70)":
           display_name: """Black Squadron Ace (T-70)"""
           text: """<i class = flavor_text>During the Cold War, Poe Dameron’s Black Squadron conducted daring covert operations against the First Order in defiance of treaties ratified by the New Republic Senate.</i>%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Black Squadron Scout":
           display_name: """Batedor do Esq. Preto"""
           text: """<i class = flavor_text>Estas naves atmosféricas amplamentearmadas utilizam suas asas móveis especializadas para obter velocidade e agilidade adicionais.</i>%LINEBREAK%<strong>Ailerons Adaptáveis:</strong> Antes de revelarseu disco, se não estiver estressado,você <b>deve</b> executar uma manobra[%BANKLEFT% 1], [%STRAIGHT% 1] ou [%BANKRIGHT% 1] branca."""
        "Black Sun Ace":
           display_name: """Ás do Sol Negro"""
           text: """<i class = flavor_text>O caça de assalto Kihraxz foi especialmente desenvolvido para a organização criminosa Sol Negro, cujos áses muito bem pagos exigiam uma nave ágil e poderosa à altura de suas habilidades.</i>"""
        "Black Sun Assassin":
           display_name: """Assassino do Sol Negro"""
           text: """<i class = flavor_text>Apesar de assassinatos serem normalmente executados com um tiro certeiro ou com uma substância colocada em uma bebida, uma nave em chamas caindo do céu manda um outro tipo bem especial de mensagem. </i>%LINEBREAK%<strong>Micropropulsores:</strong> Quando realizaruma pirueta, você <b>deve</b> usar ogabarito %BANKLEFT% ou %BANKRIGHT% em vez do gabarito %STRAIGHT%."""
        "Black Sun Enforcer":
           display_name: """Executor do Sol Negro"""
           text: """<i class = flavor_text>O príncipe Xizor em pessoa colaboroucom a MandalMotors para desenvolver o projeto da plataforma de ataque classe StarViper, um dos caças estelares mais formidáveis da galáxia. </i>%LINEBREAK%<strong>Micropropulsores:</strong> Quando realizaruma pirueta, você <b>deve</b> usar ogabarito %BANKLEFT% ou %BANKRIGHT% em vez do gabarito %STRAIGHT%."""
        "Black Sun Soldier":
           display_name: """Soldado do Sol Negro"""
           text: """<i class = flavor_text>O vasto e influente sindicato criminosoSol Negro está sempre em busca de pilotos talentosos, contanto que eles não questionemo que precisam fazer para receber seus créditos.</i>"""
        "Blade Squadron Veteran":
           display_name: """Veterano do Esq. Lâmina"""
           text: """<i class = flavor_text>Um sistema de estabilização giroscópica único foi projetado em volta da cabine da B-wing, garantindo que o piloto permaneça estacionário durante o voo.</i>"""
        "Blue Squadron Escort":
           display_name: """Escolta do Esq. Azul"""
           text: """<i class = flavor_text>Projetada pela Incom Corporation,a X-wing T-65 se mostrou rapidamenteser um dos veículos militares mais efetivosda galáxia e uma dádiva para a Rebelião.</i>"""
        "Blue Squadron Pilot":
           display_name: """Piloto do Esq. Azul"""
           text: """<i class = flavor_text>Devido ao seu conjunto de armaspesadas e escudo resiliente, a B-wingse consolidou como o caça de assaltomais inovador da Aliança Rebelde.</i>"""
        "Blue Squadron Recruit":
           display_name: """Blue Squadron Recruit"""
           text: """<i class = flavor_text>Young beings across the galaxy have grown up on tales of heroism in the Galactic Civil War, and many learned to fly in the same cockpits from which their parents fought the Empire.</i>%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red <rotate> action."""
        "Blue Squadron Rookie":
           display_name: """Blue Squadron Rookie"""
           text: """<i class = flavor_text>The Incom-FreiTek T-70 X-Wing was designed to improve upon the tactical flexibility of the venerable T-65. The starfighter’s advanced droid socket is compatible with a wide array of astromechs, and its modular weapons pods allow ground crews to tailor its payload for specific missions.</i>%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Blue Squadron Scout":
           display_name: """Batedor do Esq. Azul"""
           text: """<i class = flavor_text>Usada para deslocar tropas encobertas pelaescuridão ou até focos de batalha, a U-wing UT-60D atende a necessidade da aliança de ter um transporte de tropas rápido e robusto.</i>"""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """Quando defender ou realizar um ataque,você pode rerrolar 1 de seus dados para cada nave inimiga em alcance 0-1."""
        "Bodhi Rook":
           display_name: """Bodhi Rook"""
           text: """Naves amigas conseguem travar mirasem objetos que estejam em alcance0-3 de qualquer nave amiga."""
        "Bossk":
           display_name: """Bossk"""
           text: """Quando realizar um ataque primário,após a etapa Neutralizar Resultados,você pode gastar 1 resultado %CRIT%para adicionar 2 resultados %HIT%."""
        "Bounty Hunter":
           display_name: """Caçador de Recompensas"""
           text: """<i class = flavor_text>A infame nave de patrulha classe Firespray é assim reconhecida devido à sua associação com os caçadores de recompensa Jango Fett e Boba Fett, que equipavam suas naves com incontáveis armamamentos letais.</i>"""
        "Braylen Stramm":
           display_name: """Braylen Stramm"""
           text: """Quando defender ou realizar um ataque, se estiver estressado, você tem a opção de rerrolar até 2 de seus dados."""
        "Captain Cardinal":
           display_name: """Captain Cardinal"""
           text: """While a friendly ship at range 1-2 with lower initiative than you defends or performs an attack, if you have at least 1&nbsp;%CHARGE%, that ship may reroll 1 %FOCUS% result.%LINEBREAK%After an enemy ship at range 0-3 is destroyed, lose 1&nbsp;%CHARGE%.%LINEBREAK%<strong>Linked Battery:</strong> While you perform a %CANNON% attack, roll 1 additional die."""
        "Captain Feroph":
           display_name: """Capitão Feroph"""
           text: """Quando defender, se o atacante não tiver fichas verdes, você pode mudar 1 de seus resultados em branco ou %FOCUS% para um resultado %EVADE%.%LINEBREAK%<strong>Ailerons Adaptáveis:</strong> Antes de revelarseu disco, se não estiver estressado,você <b>deve</b> executar uma manobra[%BANKLEFT% 1], [%STRAIGHT% 1] ou [%BANKRIGHT% 1] branca."""
        "Captain Jonus":
           display_name: """Capitão Jonus"""
           text: """Quando uma nave amiga em alcance 0-1 realizar um ataque %TORPEDO% ou %MISSILE%, ela pode rerrolar até 2 dados de ataque. %LINEBREAK%<strong>Bombardeiro Ágil:</strong> Se for soltar um dispositivo usando um gabarito %STRAIGHT%, você pode, em vez disso, usar um gabarito%BANKLEFT% ou %BANKRIGHT% de mesma velocidade."""
        "Captain Jostero":
           display_name: """Capitão Jostero"""
           text: """Após uma nave inimiga sofrer dano, se ela não estiver defendendo, você tem a opçãode realizar um ataque bônus contra ela."""
        "Captain Kagi":
           display_name: """Capitão Kagi"""
           text: """No início da Fase de Engajamento,você pode escolher 1 ou mais navesamigas em alcance 0-3. Se fizerisso, transfira todas as fichas de mira inimigas das naves escolhidas para você."""
        "Captain Nym":
           display_name: """Capitão Nym"""
           text: """Antes que uma bomba ou minaamiga for detonar, você pode gastar1 ￼ para evitar que ela detone.%LINEBREAK%Quando você defender de um ataque obstruído por uma bomba ou mina,role 1 dado de defesa adicional."""
        "Captain Oicunn":
           display_name: """Capitão Oicunn"""
           text: """Você consegue realizar ataquesprimários em alcance 0."""
        "Captain Rex":
           display_name: """Capitão Rex"""
           text: """Após realizar um ataque, atribua a condição <strong>Tiro Supressivo</strong> ao defensor."""
        "Captain Seevor":
           display_name: """Captain Seevor"""
           text: """While you defend or perform an attack, before attack dice are rolled, if you are not in the enemy ship’s %BULLSEYEARC%, you may spend 1&nbsp;%CHARGE%. If you do, the enemy ship gains 1&nbsp;jam token.%LINEBREAK%<strong>Notched Stabilizers:</strong> While you move, you ignore asteroids."""
        "Cartel Executioner":
           display_name: """Carrasco de Cartel"""
           text: """<i class = flavor_text>Muitos pilotos veteranos a serviço dos kajidics Hutt e outras organizações criminosas escolhem a M12-L Kimogila devido à sua reputação aterradora e seu poder de fogo.</i>%LINEBREAK%<strong>Na Palma da Mão:</strong> Quando você realizarum ataque, se o defensor estiver em seu %BULLSEYEARC%,os dados de defesa não podem ser modificados por fichas verdes."""
        "Cartel Marauder":
           display_name: """Saqueador de Cartel"""
           text: """<i class = flavor_text>A versátil Kihraxz foi projetada com baseno popular caça estelar da Incom X-wing,porém uma série de kits de modificaçãogarantiu uma gama enorme de variações. </i>"""
        "Cartel Spacer":
           display_name: """Piloto de Cartel"""
           text: """<i class = flavor_text>As M3-A "Scyk" Interceptors da MandalMotors foram compradas em grandes quantidades pelo Cartel Hutt e pelos contrabandistas Car'das devido à sua capacidade de customização e seu baixo custo. </i>%LINEBREAK%<strong>Encaixe de Arma:</strong> Você consegue equipar 1 melhoria %CANNON%, %TORPEDO%, ou %MISSILE%."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """No início da Fase de Ativação, vocêpode escolher 1 nave amiga em alcance 1-3. Se você fizer isso, a nave escolhida remove 1 ficha de estresse."""
        "Cat":
           display_name: """Cat"""
           text: """While you perform a primary attack, if the defender is at range 0-1 of at least 1&nbsp;friendly device, roll 1 additional die."""
        "Cavern Angels Zealot":
           display_name: """Fanático dos Cavern Angels"""
           text: """<i class = flavor_text>Diferente da maioria das células Rebeldes, os partidários de Saw Gerrera estão dispostos a usar métodos extremos para minar os objetivos do Império Galático em batalhas brutais que vão de Geonosis à Jedha.</i>"""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """Antes de receber uma carta de dano virada para cima, você pode gastar1 %CHARGE% para, em vez disso, receber acarta virada para baixo."""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca (Resistance)"""
           text: """After a friendly ship at range 0-3 is destroyed, before that ship is removed, you may perform an action. Then you may perform a bonus attack."""
        "Cobalt Squadron Bomber":
           display_name: """Cobalt Squadron Bomber"""
           text: """<i class = flavor_text>Whether the ordnance silos of their StarFortresses are loaded with proton bombs or relief supplies, the heroic crews of Cobalt Squadron dedicate their lives to making a difference in the galaxy.</i>"""
        "Colonel Jendon":
           display_name: """Coronel Jendon"""
           text: """No início da Fase de Ativação, você pode gastar 1 %CHARGE%. Se fizer isso, quando naves amigas travarem miras nesta rodada,elas devem travar miras além de alcance3, em vez de em alcance 0-3."""
        "Colonel Vessery":
           display_name: """Coronel Vessery"""
           text: """Quando realizar um ataque contra umanave mirada, após rolar os dados de ataque, você pode travar uma mira no defensor.%LINEBREAK%<strong>Força Total:</strong> Após executar completamente uma manobra de velocidade 3-5, você pode realizar uma ação %EVADE%."""
        "Commander Malarus":
           display_name: """Commander Malarus"""
           text: """At the start of the Engagement Phase, you may spend 1&nbsp;%CHARGE% and gain 1 stress token. If you do, until the end of the round, while you defend or perform an attack, you may change all of your %FOCUS% results to %EVADE% or %HIT% results."""
        "Constable Zuvio":
           display_name: """Oficial da Lei Zuvio"""
           text: """Se for soltar um dispositivo, você pode, em vez disso, lançá-lo usando um gabarito [1&nbsp;%STRAIGHT%].%LINEBREAK%<strong>Feixe de Rebocamento Espacial:</strong><strong>Ação:</strong> Escolha uma nave em seu %FRONTARC%em alcance 1. A nave escolhida recebe1 ficha de tração, ou 2 fichas de traçãose estiver em seu %BULLSEYEARC% em alcance 1."""
        "Contracted Scout":
           display_name: """Batedor Contratado"""
           text: """<i class = flavor_text>Construída para reconhecimento de longa distância e para traçar novas rotas pelo hiperespaço, a levemente armada JumpMaster 5000 geralmente é atualizada extensivamente com melhorias personalizadas.</i>"""
        "Corran Horn":
           display_name: """Corran Horn"""
           text: """Em iniciativa 0, você pode realizar um ataque primário bônus contra uma nave inimiga em seu %BULLSEYEARC%. Se fizer isso, no início da próxima Fase de Planejamento, receba 1 ficha de desarmamento.%LINEBREAK%<strong>Sensores Experimentais:</strong>Você consegue travar miras alémde alcance 3. Você não podetravar miras em alcance 1."""
        "Countess Ryad":
           display_name: """Condessa Ryad"""
           text: """Quando for executar uma manobra %STRAIGHT%, você pode aumentar a dificuldade dela. Se fizer isso, execute-a, em vez disso, como se ela fosse uma manobra %KTURN%.%LINEBREAK%<strong>Força Total:</strong> Após executar completamente uma manobra de velocidade 3-5, você pode realizar uma ação %EVADE%."""
        "Crymorah Goon":
           display_name: """Capanga da Crymorah"""
           text: """<i class = flavor_text>Apesar de não muito ágil, a fuselagempesada, o escudo potente e os canhõesem torre da Y-wing fazem dela umaótima nave de patrulha.</i>"""
        "Cutlass Squadron Pilot":
           display_name: """Piloto do Esq. Espada"""
           text: """<i class = flavor_text>O projeto da TIE punisher se desenvolveu em torno do sucesso da TIE bomber, com a adição de escudo, um segundo lançador de bombas e outros três módulos bélicos, cada um equipado com um motor iônico gêmeo.</i>"""
        "Dace Bonearm":
           display_name: """Dace Bonearm"""
           text: """Após uma nave inimiga em alcance0-3 receber ao menos 1 ficha de íon, você pode gastar 3 ￼. Se você fizer isso, a nave inimiga recebe 2 fichasde íon adicionais."""
        "Dalan Oberos (StarViper)":
           display_name: """Dalan Oberos (StarViper)"""
           text: """Após executar completamenteuma manobra, você pode receber 1 ficha de estresse para rotacionar sua nave em 90º.%LINEBREAK%<strong>Micropropulsores:</strong> Quando realizar uma pirueta, você<b>deve</b> usar o gabarito %BANKLEFT% ou %BANKRIGHT%em vez do gabarito %STRAIGHT%."""
        "Dalan Oberos":
           display_name: """Dalan Oberos"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave com escudo em seu %BULLSEYEARC% e gastar 1 ￼. Se você fizer isso, a nave escolhida perde 1 escudo e você recupera 1 escudo.%LINEBREAK%<strong>Na Palma da Mão:</strong> Quando você realizarum ataque, se o defensor estiver em seu %BULLSEYEARC%,os dados de defesa não podem ser modificados por fichas verdes."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """Após realizar uma ação, você podegastar 1 %FORCE% para realizar uma ação.%LINEBREAK%<strong>Computador de Mira Avançado:</strong> Quando você realizar um ataque primário contra um defensor em quem você tem uma mira travada, role 1 dado de ataque adicional e mude 1 resultado %HIT% para um resultado %CRIT%."""
        "Dash Rendar":
           display_name: """Dash Rendar"""
           text: """Quando você se mover, ignore obstáculos.%LINEBREAK%<strong>Ponto Cego nos Sensores:</strong> Quando você realizar um ataque primário com alcance de ataque 0-1, não aplique o bônus de alcance 0-1 e role 1 dado de ataque a menos."""
        "Del Meeko":
           display_name: """Del Meeko"""
           text: """Quando uma nave amiga emalcance 0-2 defender de umatacante danificado, o defensorpode rerrolar 1 dado de defesa."""
        "Delta Squadron Pilot":
           display_name: """Piloto do Esq. Delta"""
           text: """<i class = flavor_text>Além de seus lança-mísseis e dos seis canhões de laser montados em suas asas, a formidável TIE defender é equipada com escudos defletores e um hiperpropulsor.</i>%LINEBREAK%<strong>Força Total:</strong> Após executar completamente uma manobra de velocidade 3-5, você pode realizar uma ação %EVADE%."""
        "Dengar":
           display_name: """Dengar"""
           text: """Após defender, se o atacante estiver em seu %FRONTARC%, você pode gastar 1&nbsp;￼ para realizar umataque bônus contra o atacante."""
        "Drea Renthal":
           display_name: """Drea Renthal"""
           text: """Quando uma nave amiga não limitadarealizar um ataque, se o defensorestiver em seu arco de tiro, o atacantepode rerrolar 1 dado de ataque."""
        "Edon Kappehl":
           display_name: """Edon Kappehl"""
           text: """After you fully execute a blue or white maneuver, if you have not dropped or launched a device this round, you may drop 1 device."""
        "Edrio Two Tubes":
           display_name: """Edrio Two Tubes"""
           text: """Antes de ativar, se estiver focado, você pode realizar uma ação."""
        "Ello Asty":
           display_name: """Ello Asty"""
           text: """After you reveal a red Tallon Roll [<lefttalon> or <righttalon>] maneuver, if you have 2 or fewer stress tokens, treat that maneuver as white.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Emon Azzameen":
           display_name: """Emon Azzameen"""
           text: """Se for soltar um dispositivo usando um gabarito [1&nbsp;%STRAIGHT%], você pode, em vez disso,usar o gabarito [3&nbsp;%TURNLEFT%], [3&nbsp;%STRAIGHT%], ou [3&nbsp;%TURNRIGHT%]."""
        "Epsilon Squadron Cadet":
           display_name: """Epsilon Squadron Cadet"""
           text: """<i class = flavor_text>Trained from childhood aboard Resurgent-class Star Destroyers in deep space, many First Order TIE pilots have never even set foot on a planet’s surface.</i>"""
        "Esege Tuketu":
           display_name: """Esege Tuketu"""
           text: """Quando uma nave amiga em alcance0-2 defender ou realizar um ataque,ela pode gastar as suas fichas defoco como se fossem dela."""
        "Evaan Verlaine":
           display_name: """Evaan Verlaine"""
           text: """No início da Fase de Engajamento, você pode gastar 1 ficha de foco para escolher uma nave amiga em alcance 0-1. Se você fizer isso, a nave escolhida rola 1 dadode defesa adicional quando defender atéo final da rodada."""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """Quando defender ou realizar um ataque, se estiver estressado, você pode gastar 1 %FORCE% para mudar até 2 de seus resultados %FOCUS% para resultados %EVADE% ou %HIT%.%LINEBREAK%<strong>Pronto para o Ataque:</strong> Quando você estiver acoplado, após seu porta-naves realizar um ataque primário %FRONTARC% ou %TURRET%, ele pode realizar um ataque primário %REARARC% bônus."""
        "Ezra Bridger (Sheathipede)":
           display_name: """Ezra Bridger (Sheathipede)"""
           text: """Quando defender ou realizar um ataque, se estiver estressado, você pode gastar 1 %FORCE% para mudar até 2 de seus resultados %FOCUS% para resultados %EVADE%/%HIT%. %LINEBREAK%<strong>Shuttle de Comunicação:</strong> Quandovocê estiver acoplado, seu porta-navesganha %COORDINATE%. Antes de o porta-naves ativar,ele pode realizar uma ação %COORDINATE%."""
        "Ezra Bridger (TIE Fighter)":
           display_name: """Ezra Bridger (TIE Fighter)"""
           text: """Quando defender ou realizar um ataque,se estiver estressado, você podegastar 1 %FORCE% para mudar até 2 de seusresultados %FOCUS% para resultados %EVADE% ou %HIT%."""
        "Fenn Rau (Sheathipede)":
           display_name: """Fenn Rau (Sheathipede)"""
           text: """Após uma nave inimiga em seu arco de tiro engajar, se você não estiver estressado, você pode receber 1 ficha de estresse. Se você fizer isso, a nave inimiga engajando não pode gastar fichas para modificar dados enquanto estiver realizando um ataque nesta fase.%LINEBREAK%<strong>Shuttle de Comunicação:</strong> Quando vocêestiver acoplado, seu porta-naves ganha %COORDINATE%.Antes de o porta-naves ativar, ele poderealizar uma ação %COORDINATE%."""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """Quando defender ou realizar umataque, se o alcance de ataque for 1, você pode rolar 1 dado adicional.%LINEBREAK%<strong>Afronta de Concórdia:</strong> Quando você defender, se o alcance de ataque for 1 e você estiver no %FRONTARC% do atacante, mude 1 resultado para um resultado %EVADE%."""
        "Finch Dallow":
           display_name: """Finch Dallow"""
           text: """Before you would drop a bomb, you may place it in the play area touching you instead."""
        "First Order Test Pilot":
           display_name: """First Order Test Pilot"""
           text: """<i class = flavor_text>Engineered for incredible speed and precise handling, the TIE Silencer is devastating in the hands of those who can unlock its full potential. Any lesser pilot could easily be overwhelmed and lose control of the nimble craft. </i>%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "Foreman Proach":
           display_name: """Foreman Proach"""
           text: """Before you engage, you may choose 1&nbsp;enemy ship in your %BULLSEYEARC% at range 1-2 and gain 1 disarm token. If you do, that ship gains 1 tractor token.%LINEBREAK%<strong>Notched Stabilizers:</strong> While you move, you ignore asteroids."""
        "Freighter Captain":
           display_name: """Capitão de Cargueiro"""
           text: """<i class = flavor_text>Muitos pilotos ganhavam a vida em viagens à Orla Exterior, onde a diferença entre contrabando e comércio legalizado é muitas vezes inexistente.Às margens da civilização, os compradores raramente questionavam a origem das mercadorias, pelo menos enquanto o preço era baixo o suficiente.</i>"""
        "Gamma Squadron Ace":
           display_name: """Ás do Esquadrão Gama"""
           text: """<i class = flavor_text>Apesar de sacrificar boa parte de sua velocidade e agilidade se comparada com uma TIE/ln, a capacidade de carga aumentada da TIE bomber pode carregar poder de fogo para destruir virtualmente qualquer alvo inimigo. </i>%LINEBREAK%<strong>Bombardeiro Ágil:</strong> Se for soltar um dispositivo usando um gabarito %STRAIGHT%, você pode, em vez disso, usar um gabarito%BANKLEFT% ou %BANKRIGHT% de mesma velocidade."""
        "Gand Findsman":
           display_name: """Findsman Gand"""
           text: """<i class = flavor_text>Os lendários Findsmen de Gand venerama névoa que encobre seu planeta natal,usando sinais, presságios e rituais mágicospara rastrear suas presas.</i>"""
        "Garven Dreis (X-Wing)":
           display_name: """Garven Dreis (X-Wing)"""
           text: """Após gastar 1 ficha de foco, você pode escolher 1 nave amiga em alcance 1-3.A nave escolhida recebe 1 ficha de foco."""
        "Garven Dreis":
           display_name: """Garven Dreis"""
           text: """Após gastar 1 ficha de foco, você pode escolher 1 nave amiga em alcance 1-3.A nave escolhida recebe 1 ficha de foco."""
        "Gavin Darklighter":
           display_name: """Gavin Darklighter"""
           text: """Quando uma nave amiga realizar um ataque, se o defensor estiver em seu %FRONTARC%, o atacante pode mudar 1 resultado %HIT% para um resultado %CRIT%.%LINEBREAK%<strong>Sensores Experimentais:</strong> Você consegue travar miras alémde alcance 3. Você não podetravar miras em alcance 1.."""
        "Genesis Red":
           display_name: """Gênesis Vermelho"""
           text: """Após travar uma mira, você deveremover todas as suas fichas de focoe de desvio. Então, receba a mesma quantidade de fichas de foco e de desvioque a nave mirada possui.%LINEBREAK%<strong>Encaixe de Arma:</strong> Você consegueequipar 1 melhoria %CANNON%, %TORPEDO%, ou %MISSILE%."""
        "Gideon Hask":
           display_name: """Gideon Hask"""
           text: """Quando você realizar um ataquecontra um defensor danificado,role 1 dado de ataque adicional."""
        "Gold Squadron Veteran":
           display_name: """Veterano do Esq. Dourado"""
           text: """<i class = flavor_text>Comandado por Jon “Dutch” Vander, o Esquadrão Dourado desempenhou um papel fundamental nas Batalhas de Scarif e Yavin.</i>"""
        "Grand Inquisitor":
           display_name: """Grande Inquisidor"""
           text: """Quando defender em alcance de ataque 1, você pode gastar 1 %FORCE% para impedir o bônus de alcance 1. %LINEBREAK%Quando você realizar um ataque contra um defensor em alcance de ataque 2-3, você pode gastar 1 %FORCE% para aplicar o bônus de alcance 1."""
        "Gray Squadron Bomber":
           display_name: """Bombardeiro do Esquadrão Cinza"""
           text: """<i class = flavor_text>Muito tempo depois de a Y-wing ser descontinuada pelo Império Galático, sua durabilidade, confiabilidade e armamento pesado ainda fazdela um recurso fundamental à frota Rebelde.</i>"""
        "Graz":
           display_name: """Graz"""
           text: """Quando defender, se você estiver atrás do atacante, role 1 dado de defesa adicional.%LINEBREAK%Quando realizar um ataque, se vocêestiver atrás do defensor, role 1 dadode ataque adicional."""
        "Green Squadron Expert":
           display_name: """Green Squadron Expert"""
           text: """<i class = flavor_text>Years of field-expedient modifications were standardized in the RZ-2 design, but daring pilots see the ship’s improved reliability as a challenge to further push the limits of its performance.</i>%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red <rotate> action."""
        "Green Squadron Pilot":
           display_name: """Piloto do Esq. Verde"""
           text: """<i class = flavor_text>Devido aos seus controles sensitivos e alta manobrabilidade, somente os pilotos mais talentosos ocupavam a cabine de uma A-wing.</i>%LINEBREAK%<strong>Propulsores Vetorizados:</strong>Após realizar uma ação, você poderealizar uma ação %BOOST% vermelha."""
        "Greer Sonnel":
           display_name: """Greer Sonnel"""
           text: """After you fully execute a maneuver, you may rotate your %SINGLETURRETARC%.%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red <rotate> action."""
        "Guri":
           display_name: """Guri"""
           text: """No início da Fase de Engajamento,se houver ao menos uma nave inimiga em alcance 0-1, você pode receber1 ficha de foco.%LINEBREAK%<strong>Micropropulsores:</strong> Quando realizar uma pirueta, você <b>deve</b> usar o gabarito %BANKLEFT% ou %BANKRIGHT% em vez do gabarito %STRAIGHT%."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """Após rolar os dados, se estiver em alcance 0-1 de um obstáculo, você pode rerrolar todos os seus dados. Para todos os outros efeitos, isso não conta como uma rerrolagem."""
        "Han Solo (Scum)":
           display_name: """Han Solo (Scum)"""
           text: """Quando defender ou realizarum ataque primário, se o ataqueestiver obstruído por um obstáculo,você pode rolar 1 dado adicional."""
        "Han Solo (Resistance)":
           display_name: """Han Solo (Resistance)"""
           text: """<strong>Setup:</strong> You can be placed anywhere in the play area beyond range 3 of enemy ships."""
        "Heff Tobber":
           display_name: """Heff Tobber"""
           text: """Após uma nave inimiga executar uma manobra, se ela estiver em alcance 0, você pode realizar uma ação."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """Após revelar uma manobra vermelha ou azul, você pode rotacionar seu disco para outra manobra de mesma dificuldade.%LINEBREAK%<strong>Pronto para o Ataque:</strong> Quando você estiver acoplado, após seu porta-naves realizar um ataque primário %FRONTARC% ou %TURRET%, ele pode realizar um ataque primário %REARARC% bônus."""
        "Hera Syndulla (VCX-100)":
           display_name: """Hera Syndulla (VCX-100)"""
           text: """Após revelar uma manobra vermelha ou azul, você pode rotacionar seu disco para outra manobra de mesma dificuldade.%LINEBREAK%<strong>Arma de Cauda:</strong> Quando tiver uma nave acoplada, você tem uma arma primária %REARARC% com um valor de ataque igual ao valor de ataque primário da nave acoplada %FRONTARC%."""
        "Hired Gun":
           display_name: """Mercenário"""
           text: """<i class = flavor_text>A mera menção de créditos Imperiaispode atrair uma legião de indivíduosnão-muito-confiáveis para o seu lado.</i>"""
        "Horton Salm":
           display_name: """Horton Salm"""
           text: """Quando realizar um ataque, você pode rerrolar 1 dado de ataque para cada outra nave amiga em alcance 0-1 do defensor."""
        "IG-88A":
           display_name: """IG-88A"""
           text: """No início da Fase de Engajamento,você pode escolher 1 nave amiga emalcance 1-3 que tenha %CALCULATE% na barra de ações. Se fizer isso, transfira 1 desuas fichas de cálculo para ela. %LINEBREAK%<strong>Cérebro Droide Avançado:</strong> Após realizar uma ação %CALCULATE%, receba 1 ficha de cálculo."""
        "IG-88B":
           display_name: """IG-88B"""
           text: """Após realizar um ataque que errou, você pode realizar um ataque %CANNON% bônus.%LINEBREAK%<strong>Cérebro Droide Avançado:</strong> Após realizar uma ação %CALCULATE%, receba 1 ficha de cálculo."""
        "IG-88C":
           display_name: """IG-88C"""
           text: """Após realizar uma ação %BOOST%,você pode realizar uma ação %EVADE%.%LINEBREAK%<strong>Cérebro Droide Avançado:</strong> Após realizar uma ação %CALCULATE%, receba 1 ficha de cálculo."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """Quando executar uma manobra Loop de Segnor (%SLOOPLEFT% ou %SLOOPRIGHT%), você pode usar, em vez desses, outro gabarito de mesma velocidade de: curva acentuada (%TURNLEFT% ou %TURNRIGHT%) para a mesma direção ou linha reta (%STRAIGHT%).%LINEBREAK%<strong>Cérebro Droide Avançado:</strong> Após realizar uma ação %CALCULATE%, receba 1 ficha de cálculo."""
        "Ibtisam":
           display_name: """Ibtisam"""
           text: """Após executar completamenteuma manobra, se estiver estressado, você pode rolar 1 dado de ataque.Em um resultado %HIT% ou %CRIT%, remova1 ficha de estresse."""
        "Iden Versio":
           display_name: """Iden Versio"""
           text: """Antes de uma TIE/ln fighter amigaem alcance 0-1 sofrer 1 ou maisdanos, pode gastar 1 %CHARGE%. Se fizerisso, evite esse dano."""
        "Imdaar Test Pilot":
           display_name: """Pil. de Testes de Imdaar"""
           text: """<i class = flavor_text>Sendo o principal resultado de uma base de pesquisa escondida em Imdaar Alfa, a TIE phantom alcançou algo que muitos julgavam impossível: um pequeno caça estelar equipado com um dispositivo de camuflagem avançado.</i>%LINEBREAK%<strong>Matriz de Stygium:</strong> Após descamuflar, você pode realizar uma ação %EVADE%. No início da Fase Final, você pode gastar 1 ficha de desviopara receber 1 ficha de camuflagem."""
        "Inaldra":
           display_name: """Inaldra"""
           text: """Quando você defender ou realizarum ataque, você pode sofrer1 dano %HIT% para rerrolar qualquernúmero de seus dados.%LINEBREAK%<strong>Encaixe de Arma:</strong> Você consegueequipar 1 melhoria %CANNON%, %TORPEDO%, ou %MISSILE%."""
        "Inquisitor":
           display_name: """Inquisidor"""
           text: """<i class = flavor_text>Os temidos Inquisidores tinhamuma grande autonomia e acesso às tecnologias mais recentes do Império,como o protótipo TIE Advanced v1.</i>"""
        "Jake Farrell":
           display_name: """Jake Farrell"""
           text: """Após realizar uma ação %BARRELROLL% ou %BOOST%,você pode escolher uma nave amigaem alcance 0-1. A nave escolhidapode realizar uma ação %FOCUS%.%LINEBREAK%<strong>Propulsores Vetorizados:</strong>Após realizar uma ação, você poderealizar uma ação %BOOST% vermelha."""
        "Jakku Gunrunner":
           display_name: """Contrabandistade Armas de Jakku"""
           text: """<i class = flavor_text>O rebocador orbital Quadrijet, comumentechamado de "Quadjumper", é ágil tanto noespaço quanto na atmosfera, o que o tornou popular entre contrabandistas e exploradores. </i>%LINEBREAK%<strong>Feixe de Rebocamento Espacial: </strong><strong>Ação:</strong> Escolha uma nave em seu %FRONTARC% em alcance 1. A nave escolhida recebe 1 ficha de tração, ou 2 fichas de tração se estiver em seu %BULLSEYEARC% em alcance 1."""
        "Jan Ors":
           display_name: """Jan Ors"""
           text: """Quando uma nave amiga emseu arco de tiro realizar um ataque primário, se você não estiver estressado, você tem a opçãode receber 1 ficha de estresse.Se você fizer isso, a nave amiga pode rolar 1 dado de ataque adicional."""
        "Jaycris Tubbs":
           display_name: """Jaycris Tubbs"""
           text: """After you fully execute a blue maneuver, you may choose a friendly ship at range&nbsp;0-1. If you do, that ship removes 1&nbsp;stress token.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Jek Porkins":
           display_name: """Jek Porkins"""
           text: """Após receber uma ficha deestresse, você pode rolar 1 dadode ataque para removê-la. Em um resultado %HIT%, sofra 1 dano %HIT%."""
        "Jessika Pava":
           display_name: """Jessika Pava"""
           text: """While you defend or perform an attack, you may spend 1&nbsp;%CHARGE% or 1 non-recurring&nbsp;%CHARGE% from your equipped %ASTROMECH% upgrade to reroll up to 1&nbsp;of your dice for each other friendly ship at range 0-1.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Joph Seastriker":
           display_name: """Joph Seastriker"""
           text: """After you lose 1 shield, gain 1&nbsp;evade token.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Joy Rekkoff":
           display_name: """Joy Rekkoff"""
           text: """Quando realizar um ataque, vocêpode gastar 1 %CHARGE% de uma melhoria %TORPEDO% equipada. Se fizer isso, o defensorrola 1 dado de defesa a menos.%LINEBREAK%<strong>Afronta de Concórdia:</strong> Quando você defender, se o alcance de ataque for 1 e você estiver no %FRONTARC% do atacante, mude 1 resultado para um resultado %EVADE%."""
        "Kaa'to Leeachos":
           display_name: """Kaa’to Leeachos"""
           text: """No início da Fase de Engajamento,você pode escolher 1 naveamiga em alcance 0-2. Se fizer isso,transfira 1 ficha de foco ou de desvioda nave escolhida para você."""
        "Kad Solus":
           display_name: """Kad Solus"""
           text: """Após você executar completamente uma manobra vermelha, receba 2 fichas de foco.%LINEBREAK%<strong>Afronta de Concórdia:</strong> Quando você defender, se o alcance de ataque for 1 e você estiver no %FRONTARC% do atacante, mude 1 resultado para um resultado %EVADE%."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """Quando uma nave amiga em seu arcode tiro defender, você pode gastar 1 %FORCE%.Se você fizer isso, o atacante rola 1 dadode ataque a menos.%LINEBREAK%<strong>Arma de Cauda:</strong> Quando tiver uma nave acoplada, você tem uma arma primária %REARARC% com um valor de ataque igual ao valor de ataque primário da nave acoplada %FRONTARC%."""
        "Kare Kun":
           display_name: """Kare Kun"""
           text: """While you boost, you may use the [1 %TURNLEFT%] or [1 %TURNRIGHT%] template instead.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Kashyyyk Defender":
           display_name: """Defensor Kashyyyk"""
           text: """<i class = flavor_text>Equipada com três canhões laser paralelosSureggi de longo alcance, a Nave de Ataque Auzituck age como um poderoso dissuasor das operações escravagistas do sistema Kashyyyk.</i>"""
        "Kath Scarlet":
           display_name: """Kath Scarlet"""
           text: """Quando você realizar um ataque primário, se houver ao menos 1 nave amiga não limitada em alcance 0 do defensor, role 1 dado de ataque adicional."""
        "Kavil":
           display_name: """Kavil"""
           text: """Quando realizar um ataque não %FRONTARC%,role 1 dado de ataque adicional."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """No início da Fase de Engajamento,você pode escolher 1 nave que esteja tanto em seu %FRONTARC% quanto em seu %SINGLETURRETARC% em alcance 0-1. Se você fizer isso, a nave escolhida recebe 1 ficha de tração."""
        "Knave Squadron Escort":
           display_name: """Escolta do Esq. Valete"""
           text: """<i class = flavor_text>Projetada para combinar as melhores características das séries X-wing e A-wing, a E-wing apresenta poder de fogo, velocidade e manobrabilidade superiores.</i>%LINEBREAK%<strong>Sensores Experimentais:</strong>Você consegue travar miras alémde alcance 3. Você não podetravar miras em alcance 1."""
        "Koshka Frost":
           display_name: """Koshka Frost"""
           text: """Quando defender ou realizar um ataque, se a nave inimiga estiver estressada,você pode rerrolar 1 de seus dados."""
        "Krassis Trelix":
           display_name: """Krassis Trelix"""
           text: """Você consegue realizar ataquesespeciais %FRONTARC% usando seu %REARARC%.%LINEBREAK%Quando realizar um ataqueespecial, você pode rerrolar1 dado de ataque."""
        "Kullbee Sperado":
           display_name: """Kullbee Sperado"""
           text: """Após realizar uma ação %BARRELROLL% ou %BOOST%,você pode virar sua carta demelhoria %CONFIG% equipada."""
        "Kyle Katarn":
           display_name: """Kyle Katarn"""
           text: """No início da Fase de Engajamento, você pode transferir 1 de suas fichas de foco para uma nave amiga em seu arco de tiro."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """After you defend, you may spend 1&nbsp;%FORCE% to assign the <strong>I’ll Show You the Dark Side</strong> condition to the attacker.%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "L3-37":
           display_name: """L3-37"""
           text: """Se você não tiver escudos,reduza a dificuldade das suasmanobras de curva (%BANKLEFT% e %BANKRIGHT%)."""
        "L3-37 (Escape Craft)":
           display_name: """L3-37 (Escape Craft)"""
           text: """Se você não tiver escudos,reduza a dificuldade das suasmanobras de curva (%BANKLEFT% e %BANKRIGHT%).%LINEBREAK%<strong>Copiloto:</strong> Quando estiver acoplado,seu porta-naves possui sua habilidadede piloto além da habilidade dele."""
        "Laetin A'shera":
           display_name: """Laetin A’shera"""
           text: """Após você defender ou realizar um ataque, se o ataque errou, receba 1 ficha de desvio.%LINEBREAK%<strong>Encaixe de Arma:</strong> Você consegueequipar 1 melhoria %CANNON%, %TORPEDO%, ou %MISSILE%."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """Após executar completamente uma manobra azul, você pode escolher uma nave amiga em alcance 0-3. A nave escolhida pode realizar uma ação."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian (Scum)"""
           text: """Após rolar dados, se não estiver estressado, você pode receber1 ficha de estresse para rerrolartodos os seus resultados em branco."""
        "Lando Calrissian (Scum) (Escape Craft)":
           display_name: """Lando Calrissian (Scum) (Escape Craft)"""
           text: """Após rolar dados, se não estiver estressado, você pode receber1 ficha de estresse para rerrolartodos os seus resultados em branco.%LINEBREAK%<strong>Copiloto:</strong> Quando estiver acoplado,seu porta-naves possui sua habilidadede piloto além da habilidade dele."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """No início da Fase de Engajamento, você pode escolher uma nave em alcance 1 e gastar uma mira sua que estiver travada na nave escolhida. Se fizer isso, a nave escolhida recebe 1 ficha de tração."""
        "Leevan Tenza":
           display_name: """Leevan Tenza"""
           text: """Após realizar uma ação %BARRELROLL% ou %BOOST%, você pode realizar uma ação vermelha %EVADE%."""
        "Lieutenant Bastian":
           display_name: """Lieutenant Bastian"""
           text: """After a ship at range 1-2 is dealt a damage card, you may acquire a lock on that ship.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Lieutenant Blount":
           display_name: """Tenente Blount"""
           text: """Quando realizar um ataque primário,se houver ao menos 1 outra nave amiga em alcance 0-1 de um defensor, você pode rolar 1 dado de ataque adicional."""
        "Lieutenant Dormitz":
           display_name: """Lieutenant Dormitz"""
           text: """<strong>Setup</strong>: After you are placed, other friendly ships can be placed anywhere in the play area at range 0-2 of you.%LINEBREAK%<strong>Linked Battery:</strong> While you perform a %CANNON% attack, roll 1 additional die."""
        "Lieutenant Karsabi":
           display_name: """Tenente Karsabi"""
           text: """Após receber uma ficha de desarmamento, se não estiver estressado, você pode receber 1 ficha de estresse para remover1 ficha de desarmamento."""
        "Lieutenant Kestal":
           display_name: """Tenente Kestal"""
           text: """Quando realizar um ataque, após o defensor rolar os dados de defesa, você pode gastar 1 ficha de focopara cancelar todos os resultadosem branco/%FOCUS% do defensor."""
        "Lieutenant Rivas":
           display_name: """Lieutenant Rivas"""
           text: """After a ship at range 1-2 gains a red or orange token, if you do not have that ship locked, you may acquire a lock on that ship."""
        "Lieutenant Sai":
           display_name: """Tenente Sai"""
           text: """Após realizar uma ação %COORDINATE%, se a nave que você escolheu realizou uma ação presentena sua barra de ações, você pode realizar essa ação também."""
        "Lieutenant Tavson":
           display_name: """Lieutenant Tavson"""
           text: """After you suffer damage, you may spend 1&nbsp;%CHARGE% to perform an action.%LINEBREAK%<strong>Linked Battery:</strong> While you perform a %CANNON% attack, roll 1 additional die."""
        "Lok Revenant":
           display_name: """Espectro de Lok"""
           text: """<i class = flavor_text>A Nubian Design Collective criou o Bombardeiro Scurrg H-6 tendo em mente a versatilidade em combate, equipando-o com escudos reforçados e um vasto conjunto de armamentos destrutivos.</i>"""
        "Lothal Rebel":
           display_name: """Rebelde de Lothal"""
           text: """<i class = flavor_text>Mais um projeto de sucesso de cargueiroda Corellian Engineering Corporation,o VCX-100 é maior que a popular série YT, dispondo de mais espaço interno e maior capacidade de personalização.</i>%LINEBREAK%<strong>Arma de Cauda:</strong> Quando tiver uma nave acoplada, você tem uma arma primária %REARARC% com um valor de ataque igual ao valor de ataque primário da nave acoplada %FRONTARC%."""
        "Lowhhrick":
           display_name: """Lowhhrick"""
           text: """Após uma nave amiga em alcance 0-1se tornar defensora, você pode gastar1 ficha de reforço. Se você fizer isso,a nave que se tornou defensorarecebe 1 ficha de desvio."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """Após se tornar o defensor(antes de rolar os dados),você pode recuperar 1 %FORCE%."""
        "L'ulo L'ampar":
           display_name: """L’ulo L’ampar"""
           text: """While you defend or perform a primary attack, if you are stressed, you <b>must</b> roll 1 fewer defense die or 1 additional attack die.%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red <rotate> action."""
        "Maarek Stele":
           display_name: """Maarek Stele"""
           text: """Quando você realizar um ataque, se o defensor for receber uma carta de dano virada para cima, em vez disso, compre 3 cartas de dano, escolha 1 e descarte o resto.%LINEBREAK%<strong>Computador de Mira Avançado:</strong> Quando você realizar um ataque primário contra um defensor em quem você tem uma mira travada, role 1 dado de ataque adicional e mude 1 resultado %HIT% para um resultado %CRIT%."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """Quando uma nave amiga em alcance 0-2 defender, o atacante não pode rerrolar mais de 1 dado de ataque."""
        "Major Rhymer":
           display_name: """Major Rhymer"""
           text: """Quando realizar um ataque %TORPEDO% ou %MISSILE%, você pode aumentar ou diminuir o requisito de alcance em 1, até um limite de 0-3. %LINEBREAK%<strong>Bombardeiro Ágil:</strong> Se for soltar um dispositivo usando um gabarito %STRAIGHT%, você pode, em vez disso, usar um gabarito%BANKLEFT% ou %BANKRIGHT% de mesma velocidade."""
        "Major Stridan":
           display_name: """Major Stridan"""
           text: """While you coordinate or resolve the effect of one of your upgrades, you may treat friendly ships at range 2-3 as being at range 0 or range 1.%LINEBREAK%<strong>Linked Battery:</strong> While you perform a %CANNON% attack, roll 1 additional die."""
        "Major Vermeil":
           display_name: """Major Vermeil"""
           text: """Quando realizar um ataque, se o defensor não tiver fichas verdes, você pode mudar 1 de seus resultados em branco ou %FOCUS% para um resultado %HIT%. %LINEBREAK%<strong>Ailerons Adaptáveis:</strong> Antes de revelarseu disco, se não estiver estressado,você <b>deve</b> executar uma manobra[%BANKLEFT% 1], [%STRAIGHT% 1] ou [%BANKRIGHT% 1] branca."""
        "Major Vynder":
           display_name: """Major Vynder"""
           text: """Quando defender, se vocêestiver desarmado, role1 dado de defesa adicional."""
        "Manaroo":
           display_name: """Manaroo"""
           text: """No início da Fase de Engajamento, você pode escolher uma nave amiga em alcance 0-1. Se fizer isso, transfira todas as suas fichas verdes para a nave escolhida."""
        "Mining Guild Sentry":
           display_name: """Mining Guild Sentry"""
           text: """<i class = flavor_text>As part of its arrangement with the Empire, the Mining Guild receives modified TIE/ln Fighters to protect its operations. These craft have solar panels removed from their stabilizers for improved visibility, and feature more extensive life support systems for the benefit of their corporate pilots.</i>%LINEBREAK%<strong>Notched Stabilizers:</strong> While you move, you ignore asteroids."""
        "Mining Guild Surveyor":
           display_name: """Mining Guild Surveyor"""
           text: """<i class = flavor_text>With Imperial construction projects consuming raw materials at an unprecedented rate, the Mining Guild ruthlessly exploits newly discovered deposits of doonium ore on worlds such as Batonn, Lothal, and Umbara.</i>%LINEBREAK%<strong>Notched Stabilizers:</strong> While you move, you ignore asteroids."""
        "Miranda Doni":
           display_name: """Miranda Doni"""
           text: """Quando realizar um ataque primário, você pode gastar 1 escudo para rolar 1 dado de ataque adicional ou, se não tiver escudos, você pode rolar 1 dado de ataque a menos para recuperar 1 escudo."""
        "Moralo Eval":
           display_name: """Moralo Eval"""
           text: """Se for fugir, você pode gastar 1 ￼.Se fizer isso, coloque-se na reserva,em vez de fugir. No início da próximaFase de Planejamento, posicione-se dentro de alcance 1 da borda da áreade jogo por onde você fugiu."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """After you gain a stress token, if there is an enemy ship in your %FRONTARC% at range 0-1, you may remove that stress token.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Norra Wexley (Y-Wing)":
           display_name: """Norra Wexley (Y-Wing)"""
           text: """Quando defender, se houveruma nave inimiga em alcance 0-1,adicione 1 resultado %EVADE% aosresultados de seus dados."""
        "Norra Wexley":
           display_name: """Norra Wexley"""
           text: """Quando defender, se houver uma nave inimiga em alcance 0-1, você pode adicionar 1 resultado %EVADE% aos resultadosde seus dados."""
        "Nu Squadron Pilot":
           display_name: """Piloto do Esq. Nu"""
           text: """<i class = flavor_text>Com design inspirado por outras navesda Cygnus Spaceworks, a star wing classe Alfaé uma nave versátil designada a unidadesespeciais da Marinha Imperial que precisamde um caça estelar capaz de ser equipado para executar os mais diversos tipos de missão.</i>"""
        "N'dru Suhlak":
           display_name: """N’dru Suhlak"""
           text: """Quando você realizar um ataque primário,se não houver outra nave amiga em alcance 0-2, role 1 dado de ataque adicional."""
        "Obsidian Squadron Pilot":
           display_name: """Piloto do Esq. Obsidiana"""
           text: """<i class = flavor_text>O sistema do Motor Iônico Gêmeoda TIE fighter foi projetado para entregar velocidade, fazendo da TIE/ln uma dasmais ágeis naves estelares já produzidas.</i>"""
        "Old Teroch":
           display_name: """Velho Teroch"""
           text: """No início da Fase de Engajamento,você pode escolher 1 nave inimiga em alcance 1. Se você fizer isso e estiverno %FRONTARC% da nave escolhida, ela removetodas as fichas verdes dela.%LINEBREAK%<strong>Afronta de Concórdia:</strong> Quando você defender, se o alcance de ataque for 1e você estiver no %FRONTARC% do atacante, mude1 resultado para um resultado %EVADE%."""
        "Omega Squadron Ace":
           display_name: """Omega Squadron Ace"""
           text: """<i class = flavor_text>Only pilots who have demonstrated both exceptional skill and unwavering dedication are rewarded with coveted positions in the First Order squadrons operating secretly against the New Republic during the Cold War.</i>"""
        "Omega Squadron Expert":
           display_name: """Omega Squadron Expert"""
           text: """<i class = flavor_text>The TIE/sf is a versatile starfighter that carries specialized armament and experimental systems for long-range operations by First Order Special Forces.</i>%LINEBREAK%<strong>Heavy Weapon Turret:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You <b>must</b> treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%."""
        "Omicron Group Pilot":
           display_name: """Pil. do Grupo Omicron"""
           text: """<i class = flavor_text>Famosa por seu design de três asas e conjunto de sensores avançados, a shuttle classe Lambda desempenha um papel crítico como uma naveutilitária leve da Marinha Imperial.</i>"""
        "Onyx Squadron Ace":
           display_name: """Ás do Esquadrão Ônix"""
           text: """<i class = flavor_text>A experimental TIE defender desbanca qualquer outro caça estelar contemporâneo, porém seu tamanho, velocidade e capacidade bélica vêm acompanhados de um custo à altura de sua tremenda capacidade.</i>%LINEBREAK%<strong>Força Total:</strong> Após executar completamente uma manobra de velocidade 3-5, você pode realizar uma ação %EVADE%."""
        "Onyx Squadron Scout":
           display_name: """Batedor do Esq. Ônix"""
           text: """<i class = flavor_text>Projetada para batalhas duradouras,a TIE/ag é pilotada principalmente por pilotos de elite treinados para dominartanto seu armamento exclusivo quantosua agilidade com eficiência total.</i>"""
        "Outer Rim Pioneer":
           display_name: """Pioneiro da Orla Exterior"""
           text: """Naves amigas em alcance 0-1conseguem realizar ataques emalcance 0 de obstáculos.%LINEBREAK%<strong>Copiloto:</strong> Quando estiver acoplado,seu porta-naves possui sua habilidadede piloto além da habilidade dele."""
        "Outer Rim Smuggler":
           display_name: """Contrabandistada Orla Exterior"""
           text: """<i class = flavor_text>Conhecido por sua durabilidadee modularidade, a YT-1300 é um doscargueiros mais populares, mais usadose mais extensivamente personalizadosda galáxia.</i>"""
        "Overseer Yushyn":
           display_name: """Overseer Yushyn"""
           text: """Before a friendly ship at range 1 would gain a disarm token, if that ship is not stressed, you may spend 1&nbsp;%CHARGE%. If you do, that ship gains 1 stress token instead.%LINEBREAK%<strong>Notched Stabilizers:</strong> While you move, you ignore asteroids."""
        "Palob Godalhi":
           display_name: """Palob Godalhi"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave inimigaem seu arco de tiro em alcance 0-2.Se fizer isso, transfira 1 fichade foco ou de desvio da naveescolhida para você."""
        "Partisan Renegade":
           display_name: """Partidário Renegado """
           text: """<i class = flavor_text>Os partidários de Saw Gerrera foram formados inicialmente para opor às forças Separatistas em Onderon durante as Guerras Clônicas e continuaram a combater a tirania galática após a tomada do poder pelo Império.</i>"""
        "Patrol Leader":
           display_name: """Líder de Patrulha"""
           text: """<i class = flavor_text>Receber o comando de uma VT-49 Decimatoré visto como uma promoção considerávelpara um oficial comum da Marinha Imperial.</i>"""
        "Petty Officer Thanisson":
           display_name: """Petty Officer Thanisson"""
           text: """During the Activation or Engagement Phase, after a ship in your %FRONTARC% at range&nbsp;0-2 gains 1 stress token, you may spend 1&nbsp;%CHARGE%. If you do, that ship gains 1&nbsp;tractor token.%LINEBREAK%<strong>Linked Battery:</strong> While you perform a %CANNON% attack, roll 1 additional die."""
        "Phoenix Squadron Pilot":
           display_name: """Piloto do Esq. Fênix"""
           text: """<i class = flavor_text>Liderados pelo Comandante Jun Sato, os bravos porém inexperientes pilotos do Esquadrão Fênix enfrentam situações impressionantes em suas batalhas contra o Império Galático.</i>%LINEBREAK%<strong>Propulsores Vetorizados:</strong>Após realizar uma ação, você poderealizar uma ação %BOOST% vermelha."""
        "Planetary Sentinel":
           display_name: """Sentinela Planetário"""
           text: """<i class = flavor_text>Para proteger suas várias instalaçõesmilitares, o Império precisa de uma forçade defesa rápida e vigilante.</i>%LINEBREAK%<strong>Ailerons Adaptáveis:</strong> Antes de revelarseu disco, se não estiver estressado,você <b>deve</b> executar uma manobra[%BANKLEFT% 1], [%STRAIGHT% 1] ou [%BANKRIGHT% 1] branca."""
        "Poe Dameron":
           display_name: """Poe Dameron"""
           text: """After you perform an action, you may spend 1&nbsp;%CHARGE% to perform a white action, treating it as red.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Prince Xizor":
           display_name: """Príncipe Xizor"""
           text: """Quando você defender, após a etapa Neutralizar Resultados, outra nave amiga em alcance 0-1 e no arco de ataque pode sofrer 1&nbsp;dano %HIT% ou %CRIT%. Se ela fizer isso, cancele 1 resultado correspondente.%LINEBREAK%<strong>Micropropulsores:</strong> Quando realizaruma pirueta, você <b>deve</b> usar ogabarito %BANKLEFT% ou %BANKRIGHT% em vez do gabarito %STRAIGHT%."""
        "Quinn Jast":
           display_name: """Quinn Jast"""
           text: """No início da Fase de Engajamento, vocêpode receber 1 ficha de desarmamentopara recuperar 1 ￼ em 1 de suasmelhorias equipadas. %LINEBREAK%<strong>Encaixe de Arma:</strong> Você consegueequipar 1 melhoria %CANNON%, %TORPEDO%, ou %MISSILE%."""
        "Rear Admiral Chiraneau":
           display_name: """Almirante deRetaguarda Chiraneau"""
           text: """Quando realizar um ataque, se estiver reforçado e o defensor estiver no %FULLFRONTARC% ou %FULLREARARC% correspondente à sua ficha de reforço, você pode mudar 1 de seus resultados %FOCUS% para um resultado %CRIT%."""
        "Rebel Scout":
           display_name: """Batedor Rebelde"""
           text: """<i class = flavor_text>Projetadas pela Corellian Engineering Corporation para se parecerem com pássaros em voo, as naves da série “hawk” são naves de transporte exemplares. Rápidas e robustas, a HWK-290 é comumente empregada por agentes Rebeldes como base de operações móvel.</i>"""
        "Red Squadron Expert":
           display_name: """Red Squadron Expert"""
           text: """<i class = flavor_text>Although the bulk of the Resistance Starfighter Corps is made up of young volunteers from the New Republic, their ranks are bolstered by veterans of the Galactic Civil War determined to finish what they started decades ago.</i>%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Red Squadron Veteran":
           display_name: """Veterano do Esq. Vermelho"""
           text: """<i class = flavor_text>Criado para ser um esquadrão de caçasestelares de elite, o Esquadrão Vermelho inclui alguns dos melhores pilotos da Aliança Rebelde.</i>"""
        "Resistance Sympathizer":
           display_name: """Resistance Sympathizer"""
           text: """<i class = flavor_text>After witnessing the Hosnian Cataclysm, some spacers willingly aided the Resistance with whatever ships they had.</i>"""
        "Rexler Brath":
           display_name: """Rexler Brath"""
           text: """Após realizar um ataque que acertou, se você estiver desviando, exponha 1 dascartas de dano do defensor.%LINEBREAK%<strong>Força Total:</strong> Após executar completamente uma manobra de velocidade 3-5, você pode realizar uma ação %EVADE%."""
        "Rey":
           display_name: """Rey"""
           text: """While you defend or perform an attack, if the enemy ship is in your %FRONTARC%, you may spend 1&nbsp;%FORCE% to change 1 of your blank results to an %EVADE% or %HIT% result."""
        "Rho Squadron Pilot":
           display_name: """Piloto do Esq. Rô"""
           text: """<i class = flavor_text>Os pilotos de elite do Esquadrão Rô incitavam o terror contra a Rebelião, usando o efeito devastador tanto da configuração de assaltoXg-1 quanto da carga de arsenal Os-1 dastar wing classe Alfa.</i>"""
        "Roark Garnet":
           display_name: """Roark Garnet"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave em seu arco de tiro. Se você fizer isso,ela engaja nesta fase utilizandoum valor de iniciativa 7, em vezdo valor de iniciativa normal dela."""
        "Rogue Squadron Escort":
           display_name: """Escolta do Esq. Rogue"""
           text: """<i class = flavor_text>Os pilotos de elite do Esquadrão Rogue estão entre os melhores da Rebelião. </i>%LINEBREAK%<strong>Sensores Experimentais:</strong>Você consegue travar miras alémde alcance 3. Você não podetravar miras em alcance 1."""
        "Saber Squadron Ace":
           display_name: """Ás do Esq. Sabre"""
           text: """<i class = flavor_text>Liderados pelo Barão Soontir Fel, os pilotos do Esquadrão Sabre estão entre os melhores pilotos do Império. Suas TIE interceptors são marcadas com listras vermelhas para identificar pilotos com pelo menos dez abates confirmados.  </i>%LINEBREAK%<strong>Autopropulsores:</strong> Após realizaruma ação, você pode realizaruma ação %BARRELROLL% ou %BOOST% vermelha."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """Antes de ativar, você poderealizar 1&nbsp;ação %BARRELROLL% ou %BOOST%.%LINEBREAK%<strong>Pronto para o Ataque:</strong>Quando você estiver acoplado, após seu porta-naves realizar um ataque primário %FRONTARC% ou %TURRET%, ele pode realizar um ataque primário %REARARC% bônus."""
        "Sabine Wren (TIE Fighter)":
           display_name: """Sabine Wren (TIE Fighter)"""
           text: """Antes de ativar, você poderealizar 1&nbsp;ação %BARRELROLL% ou %BOOST%."""
        "Sabine Wren (Scum)":
           display_name: """Sabine Wren (Scum)"""
           text: """Quando defender, se o atacante estiver em seu %SINGLETURRETARC% em alcance 0-2, você pode adicionar 1&nbsp;resultado %FOCUS% aos resultados de seus dados."""
        "Sarco Plank":
           display_name: """Sarco Plank"""
           text: """Quando você defender, você podetratar seu valor de agilidade como sefosse igual à velocidade da manobraque você executou nesta rodada.%LINEBREAK%<strong>Feixe de Rebocamento Espacial: </strong><strong>Ação:</strong>Escolha uma nave em seu %FRONTARC% em alcance 1.A nave escolhida recebe 1 ficha de tração,ou 2 fichas de tração se estiver em seu%BULLSEYEARC% em alcance 1."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """Quando uma nave amiga danificada em alcance 0-3 realizar um ataque, ela pode rerrolar 1 dado de ataque."""
        "Scarif Base Pilot":
           display_name: """Piloto da Base de Scarif"""
           text: """<i class = flavor_text>A TIE reaper foi desenvolvida para transportar tropas de elite até focos de conflito no campo de batalha, e deslocou notavelmente os temidos death troopers do Diretor Krennic durante a Batalha de Scarif.</i>%LINEBREAK%<strong>Ailerons Adaptáveis:</strong> Antes de revelarseu disco, se não estiver estressado,você <b>deve</b> executar uma manobra[%BANKLEFT% 1], [%STRAIGHT% 1] ou [%BANKRIGHT% 1] branca."""
        "Scimitar Squadron Pilot":
           display_name: """Piloto do Esq. Cimitarra"""
           text: """<i class = flavor_text>A TIE/sa é excepcionalmente ágil paraum bombardeiro, permitindo que ela localizeseu alvo enquanto evita danos colaterais excessivos da área ao seu redor. </i>%LINEBREAK%<strong>Bombardeiro Ágil:</strong> Se for soltar um dispositivo usando um gabarito %STRAIGHT%, você pode, em vez disso, usar um gabarito%BANKLEFT% ou %BANKRIGHT% de mesma velocidade."""
        "Serissu":
           display_name: """Serissu"""
           text: """Quando uma nave amiga em alcance0-1 defender, ela pode rerrolar 1 de seus dados.%LINEBREAK%<strong>Encaixe de Arma:</strong> Você consegueequipar 1 melhoria %CANNON%, %TORPEDO%, ou %MISSILE%."""
        "Seventh Sister":
           display_name: """Sétima Irmã"""
           text: """Quando realizar um ataque primário, antes da etapa Neutralizar Resultados, você pode gastar2 %FORCE% para cancelar 1 resultado&nbsp;%EVADE%."""
        "Seyn Marana":
           display_name: """Seyn Marana"""
           text: """Quando realizar um ataque,você pode gastar 1 resultado&nbsp;%CRIT%.Se fizer isso, cause 1 carta de dano virada para baixo no defensor, então cancele o restante dos seus resultados."""
        "Shadowport Hunter":
           display_name: """Caçador de Shadowport"""
           text: """<i class = flavor_text>As organizações criminosas potencializam as habilidades mortais de seus leais contratados com as melhores tecnologias disponíveis, como a veloz e formidável nave de perseguição classe Lancer.</i>"""
        "Shara Bey":
           display_name: """Shara Bey"""
           text: """Quando defender ou realizar umataque primário, você pode gastar1 mira travada na nave inimiga para adicionar 1 resultado &nbsp;%FOCUS% aoresultado de seus dados."""
        "Sienar Specialist":
           display_name: """Especialista Sienar"""
           text: """<i class = flavor_text>Durante o desenvolvimento da TIE aggressor, a Sienar Fleet Systemsvalorizou mais a sua performance e versatilidade do que o custo-benefício.</i>"""
        "Sienar-Jaemus Engineer":
           display_name: """Sienar-Jaemus Engineer"""
           text: """<i class = flavor_text>Developed by Sienar-Jaemus Fleet Systems as a successor to the vaunted TIE Defender, the TIE/vn Silencer incorporates bleeding-edge technologies developed at research facilities hidden in the Unknown Regions.</i>%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        "Sigma Squadron Ace":
           display_name: """Ás do Esquadrão Sigma"""
           text: """<i class = flavor_text>Dispondo de um hiperpropulsor e escudos, a TIE phantom também é equipada com cinco canhõesde laser, garantindo poder de fogo considerávelpara um caça Imperial.</i>%LINEBREAK%<strong>Matriz de Stygium:</strong> Após descamuflar, você pode realizar uma ação %EVADE%. No início da Fase Final, você pode gastar 1 ficha de desvio para receber 1 ficha de camuflagem."""
        "Skull Squadron Pilot":
           display_name: """Piloto do Esq. Caveira"""
           text: """<i class = flavor_text>Os ases do Esquadrão Caveira preferem aproximações agressivas, utilizando a tecnologia de asas pivotantes para alcançar uma agilidade imbatível durante perseguições. </i>%LINEBREAK% <strong>Afronta de Concórdia:</strong> Quando você defender, se o alcance de ataque for 1 e você estiver no %FRONTARC% do atacante, mude 1 resultado para um resultado %EVADE%."""
        "Sol Sixxa":
           display_name: """Sol Sixxa"""
           text: """Se for soltar um dispositivo usandoum gabarito [1&nbsp;%STRAIGHT%], você pode soltá-lousando, em vez desse, qualquer outro gabarito de velocidade 1."""
        "Soontir Fel":
           display_name: """Soontir Fel"""
           text: """No início da Fase de Engajamento,se houver uma nave inimiga emseu %BULLSEYEARC%, receba 1 ficha de foco. %LINEBREAK%<strong>Autopropulsores:</strong> Após realizaruma ação, você pode realizaruma ação %BARRELROLL% ou %BOOST% vermelha."""
        "Spice Runner":
           display_name: """Contrabandistade Especiarias"""
           text: """<i class = flavor_text>Apesar de ter espaço de carga limitadose comparada com outros cargueirosleves, a pequena e ágil HWK-290 é uma das escolhas de contrabandistas especializados em transportar bens preciosos discretamente.</i>"""
        "Starkiller Base Pilot":
           display_name: """Starkiller Base Pilot"""
           text: """<i class = flavor_text>The Upsilon-class command shuttle serves as a base of operations for many of the First Order's senior officers and agents. Its powerful sensors and communications equipment allow them to orchestrate the spread of terror across the galaxy.</i>%LINEBREAK%<strong>Linked Battery:</strong> While you perform a %CANNON% attack, roll 1 additional die."""
        "Storm Squadron Ace":
           display_name: """Ás do Esq. Tormenta"""
           text: """<i class = flavor_text>A TIE Advanced x1 foi produzida em quantidade limitada, porém os engenheiros da Sienar incorporaram muitas de suas melhores qualidades em seu próximo modelo de TIE: a TIE Interceptor.</i>%LINEBREAK%<strong>Computador de Mira Avançado:</strong> Quando você realizar um ataque primário contra um defensor em quem você tem uma mira travada, role 1 dado de ataque adicional e mude 1 resultado %HIT% para um resultado %CRIT%."""
        "Sunny Bounder":
           display_name: """Sunny Bounder"""
           text: """Quando defender ou realizar um ataque, após rolar ou rerrolar seus dados,se você obteve o mesmo resultado emtodos os dados, você pode adicionarmais 1 resultado igual.%LINEBREAK%<strong>Encaixe de Arma:</strong> Você consegueequipar 1 melhoria %CANNON%, %TORPEDO%, ou %MISSILE%."""
        "TN-3465":
           display_name: """TN-3465"""
           text: """While another friendly ship performs an attack, if you are at range 0-1 of the defender, you may suffer 1&nbsp;%CRIT% damage to change 1 of the attacker’s results to a %CRIT% result."""
        "Tala Squadron Pilot":
           display_name: """Piloto do Esq. Tala"""
           text: """<i class = flavor_text>A série AF4 é o modelo mais recentede uma longa lista de projetos Headhunter.Barata e relativamente durável, ela éuma das naves favoritas entre grupos independentes como a Rebelião.</i>"""
        "Tallissan Lintra":
           display_name: """Tallissan Lintra"""
           text: """While an enemy ship in your %BULLSEYEARC% performs an attack, you may spend 1&nbsp;%CHARGE%.  If you do, the defender rolls 1 additional die.%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red <rotate> action."""
        "Talonbane Cobra":
           display_name: """Talonbane Cobra"""
           text: """Quando você defender em alcancede ataque 3 ou realizar um ataquecom alcance de ataque 1, role 1 dado adicional."""
        "Tansarii Point Veteran":
           display_name: """Veterano de Ponto Tansarii"""
           text: """<i class = flavor_text>A derrota do ás do Sol Negro Talonbane Cobrapara contrabandistas Car'das virou o jogodurante a Batalha da Estação Ponto Tansarii.Os sobreviventes do combate são respeitadospor todo o setor. </i>%LINEBREAK%<strong>Encaixe de Arma:</strong> Você consegue equipar 1 melhoria %CANNON%, %TORPEDO%, ou %MISSILE%."""
        "Tel Trevura":
           display_name: """Tel Trevura"""
           text: """Se for ser destruído, você pode gastar 1 ￼. Se fizer isso, em vez de ser destruído, descarte todas as suas cartas de dano, sofra 5 danos %HIT%, e coloque-se na reserva. No início da próxima Fase de Planejamento, posicione-se dentro de alcance 1 da sua borda de jogador."""
        "Temmin Wexley":
           display_name: """Temmin Wexley"""
           text: """After you fully execute a speed 2-4 maneuver, you may perform a %BOOST% action.%LINEBREAK%<strong>Weapon Hardpoint:</strong> You can equip 1&nbsp;%CANNON%, %TORPEDO%, or %MISSILE% upgrade."""
        "Tempest Squadron Pilot":
           display_name: """Piloto do Esq. Tempestade"""
           text: """<i class = flavor_text>A TIE Advanced aprimorou o projeto dopopular TIE/In ao adicionar escudo,um sistema de armas mais avançado,painéis solares curvos e um hiperpropulsor.</i>%LINEBREAK%<strong>Computador de Mira Avançado:</strong> Quando você realizar um ataque primário contra um defensor em quem você tem uma mira travada, role 1 dado de ataque adicional e mude 1 resultado %HIT% para um resultado %CRIT%."""
        "Ten Numb":
           display_name: """Ten Numb"""
           text: """Quando defender ou realizar um ataque, você pode gastar 1 fichade estresse para mudar todosos seus resultados %FOCUS% para resultados %EVADE% ou %HIT%."""
        "Thane Kyrell":
           display_name: """Thane Kyrell"""
           text: """Quando realizar um ataque,você pode gastar 1 resultado&nbsp;%FOCUS%, %HIT%, ou %CRIT%para olhar as cartas de danoviradas para baixo do defensor,escolher 1 e virá-la para cima."""
        "Tomax Bren":
           display_name: """Tomax Bren"""
           text: """Após realizar uma ação %RELOAD%, você pode recuperar 1 %CHARGE% em 1 de suas cartas de melhoria %TALENT% equipadas. %LINEBREAK%<strong>Bombardeiro Ágil:</strong> Se for soltar um dispositivo usando um gabarito %STRAIGHT%,você pode, em vez disso, usar um gabarito %BANKLEFT% ou %BANKRIGHT% de mesma velocidade."""
        "Torani Kulda":
           display_name: """Torani Kulda"""
           text: """Após você realizar um ataque, cada nave inimiga em seu %BULLSEYEARC% sofre 1 dano&nbsp;%HIT%,a menos que ela remova 1 ficha verde.%LINEBREAK%<strong>Na Palma da Mão:</strong> Quando você realizar um ataque, se o defensor estiver em seu %BULLSEYEARC%, os dados de defesa não podem ser modificados por fichas verdes."""
        "Torkil Mux":
           display_name: """Torkil Mux"""
           text: """No início da Fase de Engajamento, você pode escolher 1 nave em seu arco de tiro. Se fizer isso, a nave escolhida engaja com iniciativa 0 em vez de seu valor normal de iniciativa nesta rodada."""
        "Trandoshan Slaver":
           display_name: """Escravista Trandoshano"""
           text: """<i class = flavor_text>O design espaçoso de convés triplo da YV-666 faz dela uma nave muito popular entre os caçadores de recompensa e escravistas, que normalmente reformam um convés inteiro para o transporte de prisioneiros.</i>"""
        "Turr Phennir":
           display_name: """Turr Phennir"""
           text: """Após realizar um ataque, você poderealizar uma ação %BARRELROLL% ou %BOOST%,mesmo se estiver estressado.%LINEBREAK%<strong>Autopropulsores:</strong> Após realizaruma ação, você pode realizaruma ação %BARRELROLL% ou %BOOST% vermelha."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """No início da Fase de Engajamento, se houver uma ou mais naves em alcance 0, você e cada outra nave em alcance 0 recebem 1 ficha de tração.%LINEBREAK%<strong>Feixe de Rebocamento Espacial: </strong><strong>Ação:</strong> Escolha uma nave em seu %FRONTARC% em alcance 1.A nave escolhida recebe 1 ficha de tração,ou 2 fichas de tração se estiver em seu%BULLSEYEARC% em alcance 1."""
        "Valen Rudor":
           display_name: """Valen Rudor"""
           text: """Após uma nave amiga em alcance0-1 defender (após o dano serresolvido, se houver), você poderealizar uma ação."""
        "Ved Foslo":
           display_name: """Ved Foslo"""
           text: """Quando executar uma manobra, você pode executar uma manobra de mesma direção e dificuldade com velocidade 1 maior ou menor.%LINEBREAK%<strong>Computador de Mira Avançado:</strong> Quando você realizar um ataque primário contra um defensor em quem você tem uma mira travada, role 1 dado de ataque adicional e mude 1 resultado %HIT% para um resultado %CRIT%."""
        "Vennie":
           display_name: """Vennie"""
           text: """While you defend, if the attacker is in a friendly ship’s %SINGLETURRETARC%, you may add 1 %FOCUS% result to your roll."""
        "Viktor Hel":
           display_name: """Viktor Hel"""
           text: """Após defender, se você não tiverrolado exatamente 2 dados de defesa,o atacante recebe 1 ficha de estresse."""
        "Warden Squadron Pilot":
           display_name: """Piloto do Esq. Protetor"""
           text: """<i class = flavor_text>A K-wing fabricada pela Koensayr Manufacturing dispunha de um avançado Motor de Aceleração Sub-Luz (SLAM) e incríveis 18 pontos de encaixe, garantindo velocidade e poder de fogo sem igual.</i>"""
        "Wedge Antilles":
           display_name: """Wedge Antilles"""
           text: """Quando você realizar umataque, o defensor rola1 dado de defesa a menos."""
        "Wild Space Fringer":
           display_name: """Marginal do Espaço Selvagem"""
           text: """<i class = flavor_text>Apesar de os cargueiros leves YT-2400 de fábrica possuírem um grande espaço de carga, esse espaço geralmente é ocupado por sistemas bélicos modificados e motores turbinados.</i>%LINEBREAK%<strong>Ponto Cego nos Sensores:</strong> Quando você realizar um ataque primário com alcance de ataque 0-1, não aplique o bônus de alcance 0-1 e role 1 dado de ataque a menos."""
        "Wullffwarro":
           display_name: """Wullffwarro"""
           text: """Quando realizar um ataque primário,se estiver danificado, você pode rolar1 dado de ataque adicional."""
        "Zari Bangel":
           display_name: """Zari Bangel"""
           text: """You do not skip your Perform Action step after you partially execute a maneuver.%LINEBREAK%<strong>Refined Gyrostabilizers:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. After you perform an action, you may perform a red %BOOST% or red <rotate> action."""
        "Zealous Recruit":
           display_name: """Recruta Diligente"""
           text: """<i class = flavor_text>Os pilotos do caça Mandaloriano Fang devem dominar a manobra Afronta de Concórdia, aproveitando a silhueta esguia de suas naves para executar ataques frontais mortais. </i>%LINEBREAK%<strong>Afronta de Concórdia:</strong> Quando você defender, se o alcance de ataque for 1 e você estiver no %FRONTARC% do atacante, mude 1 resultado para um resultado %EVADE%."""
        "Zertik Strom":
           display_name: """Zertik Strom"""
           text: """Durante a Fase Final, você pode gastar uma mira que tiver em uma nave inimiga para expor 1 das cartas de dano dela.%LINEBREAK%<strong>Computador de Mira Avançado:</strong> Quando você realizar um ataque primário contra um defensor em quem você tem uma mira travada, role 1 dado de ataque adicional e mude 1 resultado %HIT% para um resultado %CRIT%."""
        "Zeta Squadron Pilot":
           display_name: """Zeta Squadron Pilot"""
           text: """<i class = flavor_text>Unhampered by a cumbersome galactic bureaucracy, technologies originally researched by the Empire’s TIE Advanced program are now mass-produced on First Order starfighters. As a result, TIE/fo pilots enjoy higher survival rates than their predecessors in the Galactic Empire.</i>"""
        "Zeta Squadron Survivor":
           display_name: """Zeta Squadron Survivor"""
           text: """<i class = flavor_text>Humiliated by their failure, the remaining pilots from Starkiller Base are eager to prove their worth in pursuit of the Resistance.</i>%LINEBREAK%<strong>Heavy Weapon Turret:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You <b>must</b> treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """Quando realizar um ataque primário, você pode rolar 1 dado de ataque adicional.Se você fizer isso, o defensor rola1 dado de defesa adicional."""
        '"Avenger"':
           display_name: """“Avenger”"""
           text: """After another friendly ship is destroyed, you may perform an action, even while stressed.%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        '"Backdraft"':
           display_name: """“Backdraft”"""
           text: """While you perform a %SINGLETURRETARC% primary attack, if the defender is in your %REARARC%, roll 1 additional die.%LINEBREAK%<strong>Heavy Weapon Turret:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You <b>must</b> treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%."""
        '"Blackout"':
           display_name: """“Blackout”"""
           text: """While you perform an attack, if the attack is obstructed by an obstacle, the defender rolls 2 fewer defense dice.%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        '"Chopper"':
           display_name: """Chopper"""
           text: """No início da Fase de Engajamento,cada nave inimiga em alcance 0recebe 2 fichas de interferência. %LINEBREAK%<strong>Arma de Cauda:</strong> Quando tiver uma nave acoplada, você tem uma arma primária %REARARC% com um valor de ataque igual ao valor de ataque primário da nave acoplada %FRONTARC%."""
        '"Countdown"':
           display_name: """“Countdown”"""
           text: """Quando defender, após a etapa Neutralizar Resultados, se não estiver estressado, você pode sofrer 1 dano %HIT% e receber 1 ficha de estresse. Se fizer isso, cancele todos os resultados dos dados.%LINEBREAK%<strong>Ailerons Adaptáveis:</strong> Antes de revelar seu disco, se não estiver estressado, você <b>deve</b> executar uma manobra [%BANKLEFT% 1], [%STRAIGHT% 1] ou [%BANKRIGHT% 1] branca."""
        '"Deathfire"':
           display_name: """“Deathfire”"""
           text: """Após ser destruído, antes de ser removido, você pode realizar umataque e soltar ou lançar 1 dispositivo.%LINEBREAK%<strong>Bombardeiro Ágil:</strong> Se for soltar um dispositivo usando um gabarito %STRAIGHT%, você pode, em vez disso, usar um gabarito%BANKLEFT% ou %BANKRIGHT% de mesma velocidade."""
        '"Deathrain"':
           display_name: """“Deathrain”"""
           text: """Após soltar ou lançarum dispositivo, você poderealizar uma ação."""
        '"Double Edge"':
           display_name: """“Double Edge”"""
           text: """Após realizar um ataque %TURRET% ou %MISSILE%que errou, você pode realizar um ataque bônus usando uma arma diferente."""
        '"Duchess"':
           display_name: """“Duchess”"""
           text: """Você pode não usar seus <strong>Ailerons Adaptáveis</strong>. %LINEBREAK%Você pode usar seus <strong>Ailerons Adaptáveis</strong> mesmo enquanto estiver estressado.%LINEBREAK%<strong>Ailerons Adaptáveis:</strong> Antes de revelarseu disco, se não estiver estressado,você <b>deve</b> executar uma manobra[%BANKLEFT% 1], [%STRAIGHT% 1] ou [%BANKRIGHT% 1] branca."""
        '"Dutch" Vander':
           display_name: """“Dutch” Vander"""
           text: """Após realizar a ação %LOCK%, você podeescolher 1 nave amiga em alcance 1-3.A nave escolhida tem a opção de travaruma mira no objeto que você travou amira, ignorando as restrições de alcance."""
        '"Echo"':
           display_name: """“Echo”"""
           text: """Quando descamuflar, você<strong> deve</strong>usar o gabarito [2&nbsp;%BANKLEFT%] ou [2&nbsp;%BANKRIGHT%] emvez do gabarito [2&nbsp;%STRAIGHT%].%LINEBREAK%<strong>Matriz de Stygium:</strong> Após descamuflar,você pode realizar uma ação %EVADE%. No início da Fase Final, você pode gastar 1 ficha de desvio para receber 1 ficha de camuflagem."""
        '"Howlrunner"':
           display_name: """“Howlrunner”"""
           text: """Quando uma nave amiga emalcance 0-1 realizar um ataqueprimário, ela pode rerrolar1 dado de ataque."""
        '"Leebo"':
           display_name: """“Leebo”"""
           text: """Após defender ou realizar um ataque,se você gastou uma ficha de cálculo,receba 1 ficha de cálculo.%LINEBREAK%<strong>Ponto Cego nos Sensores:</strong> Quando você realizar um ataque primário com alcance de ataque 0-1, não aplique o bônus de alcance 0-1 e role 1 dado de ataque a menos."""
        '"Longshot"':
           display_name: """“Longshot”"""
           text: """While you perform a primary attack at attack range 3, roll 1 additional attack die."""
        '"Mauler" Mithel':
           display_name: """“Mauler” Mithel"""
           text: """Quando você realizar um ataque com alcance de ataque 1, role 1 dado de ataque adicional."""
        '"Midnight"':
           display_name: """“Midnight”"""
           text: """While you defend or perform an attack, if you have a lock on the enemy ship, that ship’s dice cannot be modified."""
        '"Muse"':
           display_name: """“Muse”"""
           text: """At the start of the Engagement Phase, you may choose a friendly ship at range&nbsp;0-1. If you do, that ship removes 1&nbsp;stress token."""
        '"Night Beast"':
           display_name: """“Night Beast”"""
           text: """Após executar completamenteuma manobra azul, você poderealizar uma ação %FOCUS%."""
        '"Null"':
           display_name: """“Null”"""
           text: """While you are not damaged, treat your initiative value as 7."""
        '"Pure Sabacc"':
           display_name: """“Pure Sabacc”"""
           text: """Quando realizar um ataque, se tiver1 ou menos cartas de dano, você poderolar 1 dado de ataque adicional.%LINEBREAK%<strong>Ailerons Adaptáveis:</strong> Antes de revelar seu disco, se não estiver estressado, você <b>deve</b> executar uma manobra [%BANKLEFT% 1], [%STRAIGHT% 1] ou [%BANKRIGHT% 1] branca."""
        '"Quickdraw"':
           display_name: """“Quickdraw”"""
           text: """After you lose a shield, you may spend 1&nbsp;%CHARGE%. If you do, you may perform a bonus primary attack.%LINEBREAK%<strong>Heavy Weapon Turret:</strong> You can rotate your %SINGLETURRETARC% indicator only to your %FRONTARC% or %REARARC%. You <b>must</b> treat the %FRONTARC% requirement of your equipped %MISSILE% upgrades as %SINGLETURRETARC%."""
        '"Recoil"':
           display_name: """“Recoil”"""
           text: """While you are stressed, you may treat enemy ships in your %FRONTARC% at range 0-1 as being in your %BULLSEYEARC%.%LINEBREAK%<strong>Autothrusters:</strong> After you perform an action, you may perform a red %BARRELROLL% or red %BOOST% action."""
        '"Redline"':
           display_name: """“Redline”"""
           text: """Você consegue ter até 2 mirastravadas simultaneamente. %LINEBREAK%Após realizar uma ação, vocêpode travar uma mira."""
        '"Scorch"':
           display_name: """“Scorch”"""
           text: """While you perform a primary attack, if you are not stressed, you may gain 1 stress token to roll 1 additional attack die."""
        '"Scourge" Skutu':
           display_name: """“Scourge” Skutu"""
           text: """Quando você realizar um ataquecontra um defensor em seu %BULLSEYEARC%,role 1 dado de ataque adicional."""
        '"Static"':
           display_name: """“Static”"""
           text: """While you perform a primary attack, you may spend your lock on the defender and a focus token to change all of your results to %CRIT% results."""
        '"Vizier"':
           display_name: """“Vizier”"""
           text: """Após executar completamente uma manobra de velocidade 1 usando sua habilidade de nave <strong>Ailerons Adaptáveis</strong>, você pode realizar uma ação %COORDINATE%. Se você fizer isso, pule o passo Realizar Ação.%LINEBREAK%<strong>Ailerons Adaptáveis:</strong> Antes de revelarseu disco, se não estiver estressado,você <b>deve</b> executar uma manobra[%BANKLEFT% 1], [%STRAIGHT% 1] ou [%BANKRIGHT% 1] branca."""
        '"Wampa"':
           display_name: """“Wampa”"""
           text: """Quando realizar um ataque, vocêpode gastar 1 %CHARGE% para rolar1 dado de ataque adicional.%LINEBREAK%Após defender, perca 1 %CHARGE%."""
        '"Whisper"':
           display_name: """“Whisper”"""
           text: """Após você realizar um ataque queacertou, receba 1 ficha de desvio.%LINEBREAK%<strong>Matriz de Stygium:</strong> Após descamuflar, você pode realizar uma ação %EVADE%. No início da Fase Final, você pode gastar 1 ficha de desvio para receber 1 ficha de camuflagem."""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """Quando você defender, osresultados %CRIT% são neutralizadosantes dos resultados %HIT%.%LINEBREAK%<strong>Pronto para o Ataque:</strong> Quando você estiver acoplado, após seu porta-naves realizar um ataque primário %FRONTARC% ou %TURRET%, ele pode realizar um ataque primário %REARARC% bônus."""
        '"Zeb" Orrelios (Sheathipede)':
           display_name: """“Zeb” Orrelios (Sheathipede)"""
           text: """Quando você defender, os resultados %CRIT%são neutralizados antes dos resultados %HIT%.%LINEBREAK%<strong>Shuttle de Comunicação:</strong> Quandovocê estiver acoplado, seu porta-navesganha %COORDINATE%. Antes de o porta-naves ativar,ele pode realizar uma ação %COORDINATE%."""
        '"Zeb" Orrelios (TIE Fighter)':
           display_name: """“Zeb” Orrelios (TIE Fighter)"""
           text: """Quando você defender, os resultados %CRIT% são neutralizados antes dos resultados %HIT%."""



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

    exportObj.setupTranslationCardData pilot_translations, upgrade_translations, condition_translations
