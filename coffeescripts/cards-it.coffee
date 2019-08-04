exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.it = 'Italiano'

exportObj.translations ?= {}
exportObj.translations.Italiano =

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.Italiano = () ->
    exportObj.cardLanguage = 'Italiano'

    pilot_translations =
        "4-LOM":
           display_name: """4-LOM"""
           text: """Dopo che hai eseguito completamente una manovra rossa, ottieni 1 segnalino calcolo.%LINEBREAK%All’inizio della Fase Finale, puoi scegliere 1 nave a gittata 0-1. Se lo fai, trasferisci 1 tuo segnalino tensione a quella nave."""
        "Nashtah Pup":
           display_name: """Nashtah Pup"""
           text: """Puoi schierarti solo tramite uno schieramento di emergenza e possiedi il nome, l’iniziativa, le %CHARGE% della nave e la capacità del pilota dell’<strong>Hound’s Tooth</strong> amico distrutto.%LINEBREAK%<strong>Navetta di Fuga:</strong> <strong>Preparazione:</strong>Richiede l’<strong>Hound’s Tooth</strong>. Devi iniziare la partita attraccato all’<strong>Hound’s Tooth</strong>."""
        "AP-5":
           display_name: """AP-5"""
           text: """Mentre coordini, se scegli una nave con esattamente 1 segnalino tensione, quella nave può effettuare azioni.%LINEBREAK%<strong>Navetta di Comunicazione:</strong> Mentre sei attraccato, la tua nave madre ottiene %COORDINATE%. Prima che la tua nave madre si attivi, può effettuare 1 azione %COORDINATE%."""
        "Academy Pilot":
           display_name: """Pilota di Accademia"""
           text: """<i class = flavor_text>L’Impero Galattico usa il rapido e agile TIE/ln, sviluppato dalla Sienar Fleet Systems e prodotto in quantità smisurate, come suo astrocaccia primario.</i>"""
        "Ahhav":
           display_name: """Ahhav"""
           text: """Mentre difendi o effettui un attacco, se la nave nemica è di taglia superiore alla tua, tira 1 dado aggiuntivo.%LINEBREAK%<strong>Stabilizzatori Ridotti:</strong> Mentre ti muovi, ignori gli asteroidi."""
        "Airen Cracken":
           display_name: """Airen Cracken"""
           text: """Dopo che hai effettuato un attacco, puoi scegliere 1 nave amica a gittata 1. Quella nave può effettuare 1 azione, considerandola come se fosse rossa."""
        "Alpha Squadron Pilot":
           display_name: """Pilota dellaSquadriglia Alfa"""
           text: """<i class = flavor_text>L’Intercettore TIE, progettato dalla Sienar Fleet Systems, era dotato di quattro cannoni laser montati sulle ali che gli conferivano una potenza di fuoco superiore a quella di tutti i suoi predecessori.</i>%LINEBREAK%<strong>Propulsori Automatici:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BARRELROLL% o %BOOST% rossa. """
        "Arvel Crynyd":
           display_name: """Arvel Crynyd"""
           text: """Puoi effettuare attacchi primari a gittata 0. %LINEBREAK%Se stai per fallire un’azione %BOOST% a causa della sovrapposizione a un’altra nave, risolvila invece come se stessi effettuando parzialmente una manovra.%LINEBREAK%<strong>Propulsori Vettoriali:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BOOST% rossa."""
        "Asajj Ventress":
           display_name: """Asajj Ventress"""
           text: """All’inizio della Fase di Ingaggio, puoi scegliere 1 nave nemica nel tuo %SINGLETURRETARC% a gittata 0-2 e spendere 1 %FORCE%. Se lo fai, quella nave ottiene 1 segnalino tensione a meno che non rimuova 1 segnalino verde."""
        "Autopilot Drone":
           display_name: """Drone Autopilota"""
           text: """<i class = flavor_text>A volte le avvertenze di fabbricazione sono fatte per essere ignorate.</i>%LINEBREAK%<strong>Celle Energetiche Manomesse:</strong> Durante la Fase di Sistema, se non sei attraccato, perdi 1 %CHARGE%. Alla fine della Fase di Attivazione, se non possiedi %CHARGE% attive, sei distrutto. Prima di essere rimosso, ogni nave a gittata 0-1 subisce 1 danno %CRIT%."""
        "Bandit Squadron Pilot":
           display_name: """Pilota della Squadriglia Bandit"""
           text: """<i class = flavor_text>L’Headhunter Z-95 funse da principale ispiratore per l’astrocaccia Ala-X T-65 della Incom Corporation. Anche se considerato datato per i parametri moderni, rimane un caccia monoposto versatile e potente.</i>"""
        "Baron of the Empire":
           display_name: """Barone dell’Impero"""
           text: """<i class = flavor_text>Il TIE Advanced v1 della Sienar Fleet System è un modello di astrocaccia rivoluzionario, dotato di motori potenziati, un lancia missili e alettoni-S ripiegabili. </i>"""
        "Ben Teene":
           display_name: """Ben Teene"""
           text: """Dopo che hai effettuato un attacco, se il difensore è nel tuo %SINGLETURRETARC%, assegna la condizione <strong>Sconquassato</strong> al difensore."""
        "Benthic Two Tubes":
           display_name: """Benthic Due Tubi"""
           text: """Dopo che hai effettuato un’azione %FOCUS%, puoi trasferire 1 tuo segnalino concentrazione a una nave amica a gittata 1-2."""
        "Biggs Darklighter":
           display_name: """Biggs Darklighter"""
           text: """Mentre un’altra nave amica a gittata 0-1 difende, prima del passo “Neutralizzare i Risultati”, se sei nell’arco di attacco, puoi subire 1 danno %HIT% o %CRIT% per annullare 1 risultato corrispondente."""
        "Binayre Pirate":
           display_name: """Pirata di Binayre"""
           text: """<i class = flavor_text>La banda di contrabbandieri e pirati di Kath Scarlet, attiva sui Mondi Gemelli di Talus e Tralus, non è considerata onorevole o affidabile nemmeno dagli altri criminali.</i>"""
        "Black Squadron Ace":
           display_name: """Asso dellaSquadriglia Nera"""
           text: """<i class = flavor_text>I piloti scelti dei Caccia TIE/In della Squadriglia Nera seguirono Darth Vader in un assalto devastante alle forze Ribelli durante la Battaglia di Yavin.</i>"""
        "Black Squadron Ace (T-70)":
           display_name: """Asso della Squadriglia Nera (T-70)"""
           text: """<i class = flavor_text>Durante la Guerra Fredda, la Squadriglia Nera di Poe Dameron condusse una serie di audaci operazioni clandestine contro il Primo Ordine, sfidando i trattati ratificati dal Senato della Nuova Repubblica.</i>%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria %CANNON%, %TORPEDO% o %MISSILE%."""
        "Black Squadron Scout":
           display_name: """Esploratore della Squadriglia Nera"""
           text: """<i class = flavor_text>Questi vascelli atmosferici pesantemente armati fanno uso delle loro speciali ali mobili per ottenere ulteriore velocità e manovrabilità.</i>%LINEBREAK%<strong>Alettoni ad Assetto Variabile:</strong> Prima di rivelare il tuo indicatore, se non sei in tensione, devi eseguire una manovra bianca [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] o [1&nbsp;%BANKRIGHT%]."""
        "Black Sun Ace":
           display_name: """Asso del Sole Nero"""
           text: """<i class = flavor_text>Il caccia d’assalto Kihraxz fu sviluppato specificamente per il consorzio criminale del Sole Nero, i cui assi del volo, pagati profumatamente, esigevano una nave agile e potente, all’altezza delle loro abilità.</i>"""
        "Black Sun Assassin":
           display_name: """Assassino del Sole Nero"""
           text: """<i class = flavor_text>Anche se un delitto può essere commesso con uno sparo nel buio o con l’aggiunta di una sostanza letale in una bevanda, una navetta in fiamme che precipita dal cielo trasmette un messaggio ben preciso. </i>%LINEBREAK%<strong>Micropropulsori:</strong> Mentre effettui un avvitamento, devi usare il modello %BANKLEFT% o %BANKRIGHT% invece del modello %STRAIGHT%."""
        "Black Sun Enforcer":
           display_name: """Esecutoredel Sole Nero"""
           text: """<i class = flavor_text>Il principe Xizor in persona collaborò con la MandalMotors per progettare la Piattaforma d’Attacco Classe StarViper, uno dei più formidabili astrocaccia della galassia.</i>%LINEBREAK%<strong>Micropropulsori:</strong> Mentre effettui un avvitamento, devi usare il modello %BANKLEFT% o %BANKRIGHT% invece del modello %STRAIGHT%."""
        "Black Sun Soldier":
           display_name: """Soldato del Sole Nero"""
           text: """<i class = flavor_text>Il vasto e influente consorzio criminale del Sole Nero riesce sempre a fare buon uso dei piloti di talento, purché non siano troppo schizzinosi sulla provenienza dei loro crediti. </i>"""
        "Blade Squadron Veteran":
           display_name: """Veterano della Squadriglia Blade"""
           text: """<i class = flavor_text>Uno speciale sistema giroscopico stabilizzante circonda l’abitacolo dell’Ala-B, assicurandosi che il pilota rimanga sempre stazionario durante i combattimenti.</i>"""
        "Blue Squadron Escort":
           display_name: """Scorta della Squadriglia Blu"""
           text: """<i class = flavor_text>L’Ala-X T-65, progettato dalla Incom Corporation, si rivelò rapidamente uno dei più efficaci e versatili veicoli militari della galassia e una vera e propria benedizione per la Ribellione.</i>"""
        "Blue Squadron Pilot":
           display_name: """Pilota della Squadriglia Blu"""
           text: """<i class = flavor_text>Grazie al suo arsenale di armi pesanti e alla sua resistente schermatura, l’Ala-B si è consolidato come il caccia d’assalto più innovativo dell’Alleanza Ribelle.</i>"""
        "Blue Squadron Recruit":
           display_name: """Recluta della Squadriglia Blu"""
           text: """<i class = flavor_text>I giovani di tutta la galassia sono cresciuti ascoltando le storie degli atti eroici della Guerra Civile Galattica e molti di loro hanno imparato a volare negli stessi abitacoli in cui i loro genitori combatterono contro l’Impero.</i>%LINEBREAK%<strong>Girostabilizzatori Affinati:</strong> Puoi ruotare il tuo segnalatore %SINGLETURRETARC% solo sui tuoi %FRONTARC% o %REARARC%. Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BOOST% o %ROTATEARC% rossa."""
        "Blue Squadron Rookie":
           display_name: """Matricola della Squadriglia Blu"""
           text: """<i class = flavor_text>L’Ala-X T-70 della Incom-FreiTek fu progettato per migliorare la flessibilità tattica del vetusto T-65. L’innesto avanzato per droidi di cui è dotato lo rende compatibile con una vasta gamma di droidi astromeccanici e i suoi blocchi di armi modulari permettono al pilota di adattare l’arsenale ai bisogni di ogni specifica missione.</i>%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria&nbsp;%CANNON%, %TORPEDO% o %MISSILE%."""
        "Blue Squadron Scout":
           display_name: """Esploratore della Squadriglia Blu"""
           text: """<i class = flavor_text>L’Ala-U UT-60D, usato per schierare truppe con il favore dell’oscurità o nella foga della battaglia, soddisfa il bisogno della Ribellione di un trasporto truppe che sia rapido e allo stesso tempo solido.</i>"""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """Mentre difendi o effettui un attacco, puoi ripetere il tiro di 1 tuo dado per ogni nave nemica a gittata 0-1."""
        "Bodhi Rook":
           display_name: """Bodhi Rook"""
           text: """Le navi amiche possono acquisire come bersaglio gli oggetti a gittata 0-3 da qualsiasi nave amica."""
        "Bossk":
           display_name: """Bossk"""
           text: """Mentre effettui un attacco primario, dopo il passo “Neutralizzare i Risultati”, puoi spendere 1 risultato %CRIT% per aggiungere 2 risultati&nbsp;%HIT%."""
        "Bounty Hunter":
           display_name: """Cacciatore di Taglie"""
           text: """<i class = flavor_text>Il Pattugliatore Classe Firespray è noto per essere la nave di scelta dei letali cacciatori di taglie Jango Fett e Boba Fett, che hanno dotato il loro mezzo di innumerevoli armamenti letali.</i>"""
        "Braylen Stramm":
           display_name: """Braylen Stramm"""
           text: """Mentre difendi o effettui un attacco, se sei in tensione, puoi ripetere il tiro di 2 tuoi dadi."""
        "Captain Cardinal":
           display_name: """Capitano Cardinal"""
           text: """Mentre una nave amica a gittata 1-2 con iniziativa inferiore alla tua difende o effettua un attacco, se possiedi %CHARGE% attive, quella nave può ripetere il tiro di 1 risultato %FOCUS%.%LINEBREAK%Dopo che una nave nemica a gittata 0-3 è stata distrutta, perdi 1&nbsp;%CHARGE%.%LINEBREAK%<strong>Batteria Collegata:</strong> Mentre effettui un attacco %CANNON%, tira 1 dado aggiuntivo."""
        "Captain Feroph":
           display_name: """Capitano Feroph"""
           text: """Mentre difendi, se l’attaccante non possiede segnalini verdi, puoi cambiare 1 tuo risultato %FOCUS%/vuoto in 1 risultato %EVADE%.%LINEBREAK%<strong>Alettoni ad Assetto Variabile:</strong> Prima di rivelare il tuo indicatore, se non sei in tensione, devi eseguire una manovra bianca [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] o [1&nbsp;%BANKRIGHT%]."""
        "Captain Jonus":
           display_name: """Capitano Jonus"""
           text: """Mentre una nave amica a gittata 0-1 effettua un attacco %TORPEDO% o %MISSILE%, può ripetere il tiro di un massimodi 2 dadi di attacco. %LINEBREAK%<strong>Bombardiere Agile:</strong> Se stai per sganciare un congegno usando un modello %STRAIGHT%, puoi invece usare un modello %BANKLEFT% o %BANKRIGHT% con la stessa velocità."""
        "Captain Jostero":
           display_name: """Capitano Jostero"""
           text: """Dopo che una nave nemica ha subito danni, se non sta difendendo, puoi effettuare 1 attacco bonus contro quella nave."""
        "Captain Kagi":
           display_name: """Capitano Kagi"""
           text: """All’inizio della Fase di Ingaggio, puoi scegliere 1 o più navi amiche a gittata 0-3. Se lo fai, trasferisci tutti i segnalini bersaglio acquisito nemici dalle navi scelte a te."""
        "Captain Nym":
           display_name: """Capitano Nym"""
           text: """Prima che una bomba o una mina amica stia per detonare, puoi spendere 1 %CHARGE%per prevenirne la detonazione.%LINEBREAK%Mentre difendi contro un attacco ostruito da una bomba o da una mina, tira 1 dado di difesa aggiuntivo."""
        "Captain Oicunn":
           display_name: """Capitano Oicunn"""
           text: """Puoi effettuare attacchi primari a gittata 0."""
        "Captain Rex":
           display_name: """Capitano Rex"""
           text: """Dopo che hai effettuato un attacco, assegna la condizione <strong>Fuoco di Soppressione</strong> al difensore."""
        "Captain Seevor":
           display_name: """Capitano Seevor"""
           text: """Mentre difendi o effettui un attacco, prima che i dadi di attacco siano tirati, se non sei nel %BULLSEYEARC% della nave nemica, puoi spendere 1 %CHARGE%. Se lo fai, la nave nemica ottiene 1 segnalino disturbo.%LINEBREAK%<strong>Stabilizzatori Ridotti:</strong> Mentre ti muovi, ignori gli asteroidi."""
        "Cartel Executioner":
           display_name: """Esecutore del Cartello"""
           text: """<i class = flavor_text>Molti piloti veterani al servizio dei kajidic degli Hutt e di altre organizzazioni criminali sceglievano il Kimogila M12-L sia per la sua potenza di fuoco che per la sua temibile reputazione.</i>%LINEBREAK%<strong>Nessuna Via di Fuga:</strong> Mentre effettui un attacco, se il difensore è nel tuo %BULLSEYEARC%, i dadi di difesa non possono essere modificati usando segnalini verdi."""
        "Cartel Marauder":
           display_name: """Predone del Cartello"""
           text: """<i class = flavor_text>Il versatile Kihraxz fu modellato sul popolare astrocaccia Ala-X della Incom, ma la vasta gamma di modifiche non ufficiali disponibili diede origine a numerosi modelli diversi. </i>"""
        "Cartel Spacer":
           display_name: """Navigante del Cartello """
           text: """<i class = flavor_text>L’intercettore M3-A “Scyk” della MandalMotors viene acquistato in grandi quantità dal Cartello degli Hutt e dai contrabbandieri di Car’das, grazie al suo basso costo e all’elevato potenziale di personalizzazione.</i>%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria %CANNON%, %TORPEDO% o %MISSILE%."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """All’inizio della Fase di Attivazione, puoi scegliere 1 nave amica a gittata 1-3. Se lo fai, quella nave rimuove 1 segnalino tensione."""
        "Cat":
           display_name: """Cat"""
           text: """Mentre effettui un attacco primario, se il difensore è a gittata 0-1 da un congegno amico, tira 1 dado aggiuntivo."""
        "Cavern Angels Zealot":
           display_name: """Zelota degli Angelidella Caverna"""
           text: """<i class = flavor_text>A differenza di molte cellule Ribelli, i partigiani di Saw Gerrera sono disposti a ricorrere a mezzi estremi per ostacolare gli obiettivi dell’Impero Galattico in numerose e accanite battaglie da Geonosis a Jedha.</i>"""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """Prima che ti stia per essere inflitta 1 carta danno a faccia in su, puoi spendere 1 %CHARGE% per farti invece infliggere quella carta a faccia in giù."""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca (Resistance)"""
           text: """Dopo che una nave amica a gittata 0-3 è stata distrutta, puoi effettuare 1 azione. Poi puoi effettuare 1 attacco bonus."""
        "Cobalt Squadron Bomber":
           display_name: """Bombardiere della Squadriglia Cobalt """
           text: """<i class = flavor_text>Che i silos degli armamenti di uno StarFortress siano carichi di bombe protoniche o di scorte di emergenza, gli eroici membri della Squadriglia Cobalt sono comunque votati a fare la differenza nella galassia, anche a costo della vita.</i>"""
        "Colonel Jendon":
           display_name: """Colonnello Jendon"""
           text: """All’inizio della Fase di Attivazione, puoi spendere 1&nbsp;%CHARGE%. Se lo fai, mentre le navi amiche acquisiscono bersagli in questo round, devono acquisire bersagli oltre gittata 3 invece che a gittata 0-3."""
        "Colonel Vessery":
           display_name: """Colonnello Vessery """
           text: """Mentre effettui un attacco contro una nave acquisita come bersaglio, dopo che hai tirato i dadi di attacco, puoi acquisire il difensore come bersaglio.%LINEBREAK%<strong>A Tutta Velocità:</strong> Dopo aver eseguito completamente una manovra a velocità 3-5, puoi effettuare 1 azione %EVADE%."""
        "Commander Malarus":
           display_name: """Comandante Malarus"""
           text: """All’inizio della Fase di Impegno, puoi spendere 1 %CHARGE% e ottenere 1 segnalino tensione. Se lo fai, fino alla fine del round, mentre difendi o effettui un attacco, puoi cambiare tutti i tuoi risultati %FOCUS% in risultati %EVADE% o %HIT%."""
        "Constable Zuvio":
           display_name: """Conestabile Zuvio"""
           text: """Se stai per sganciare un congegno, puoi invece lanciarlo usando il modello [1&nbsp;%STRAIGHT%].%LINEBREAK%<strong>Apparato Traente da Rimorchiatore:</strong> <strong>Azione:</strong> Scegli 1 nave nel tuo %FRONTARC% a gittata 1. Quella nave ottiene 1 segnalino raggio traente, oppure 2 segnalini raggio traente se è nel tuo %BULLSEYEARC% a gittata 1."""
        "Contracted Scout":
           display_name: """Esploratore Assoldato"""
           text: """<i class = flavor_text>Il JumpMaster 5000, dotato di armamenti leggeri e concepito per le missioni di ricognizione a lunga distanza e il tracciamento di nuove rotte iperspaziali, viene spesso riconfigurato drasticamente con abbondanti migliorie personali.</i>"""
        "Corran Horn":
           display_name: """Corran Horn"""
           text: """Durante la Fase di Ingaggio, a iniziativa 0, puoi effettuare un attacco primario bonus contro una nave nemica nel tuo %BULLSEYEARC%. Se lo fai, all’inizio della Fase di Pianificazione successiva ottieni 1 segnalino disarmo.%LINEBREAK%<strong>Scanner Sperimentali:</strong> Puoi acquisire bersagli oltre gittata 3. Non puoi acquisire bersagli a gittata 1."""
        "Countess Ryad":
           display_name: """Contessa Ryad """
           text: """Mentre stai per eseguire una manovra %STRAIGHT%, puoi aumentare la difficoltà della manovra. Se lo fai, esegui invece quella manovra come se fosse una manovra %KTURN%.%LINEBREAK%<strong>A Tutta Velocità:</strong> Dopo aver eseguito completamente una manovra a velocità 3-5, puoi effettuare 1 azione %EVADE%."""
        "Crymorah Goon":
           display_name: """Sgherro di Crymorah"""
           text: """<i class = flavor_text>Anche se tutt’altro che agile, l’Ala-Y vanta uno scafo pesante, scudi robusti e cannoni su torretta che ne fanno un ottimo vascello da pattuglia.</i>"""
        "Cutlass Squadron Pilot":
           display_name: """Pilota dellaSquadriglia Cutlass"""
           text: """<i class = flavor_text>Il progetto del TIE Punisher porta il successo del Bombardiere TIE allo stadio successivo, dotandolo di scudi, di una seconda riserva di bombe e di tre innesti di armamenti aggiuntivi, ognuno dotato di un motore ionico gemello a parte.</i>"""
        "Dace Bonearm":
           display_name: """Dace Bonearm"""
           text: """Dopo che una nave nemica a gittata 0-3 ha ricevuto 1 o più segnalini ioni, puoi spendere 3 %CHARGE%. Se lo fai, quella nave ottiene 2 segnalini ioni aggiuntivi."""
        "Dalan Oberos (StarViper)":
           display_name: """Dalan Oberos (StarViper)"""
           text: """Dopo che hai eseguito completamente una manovra, puoi ottenere 1 segnalino tensione per ruotare la tua nave di 90°.%LINEBREAK%<strong>Micropropulsori:</strong> Mentre effettui un avvitamento, devi usare il modello %BANKLEFT% o %BANKRIGHT% invece del modello %STRAIGHT%."""
        "Dalan Oberos":
           display_name: """Dalan Oberos"""
           text: """All’inizio della Fase di Ingaggio, puoi scegliere una nave dotata di scudi nel tuo %BULLSEYEARC% e spendere 1 %CHARGE%. Se lo fai, quella nave perde 1 scudo e tu recuperi 1 scudo.%LINEBREAK%<strong>Nessuna Via di Fuga:</strong> Mentre effettui un attacco, se il difensore è nel tuo %BULLSEYEARC%, i dadi di difesa non possono essere modificati usando segnalini verdi."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """Dopo che hai effettuato un’azione, puoi spendere 1&nbsp;%FORCE% per effettuare 1 azione.%LINEBREAK%<strong>Computer d’Attacco Avanzato:</strong> Mentre effettui un attacco primario contro un difensore che hai acquisito come bersaglio, tira 1 dado di attacco aggiuntivo e cambia 1 risultato %HIT% in 1 risultato %CRIT%."""
        "Dash Rendar":
           display_name: """Dash Rendar"""
           text: """Mentre muovi, ignora gli ostacoli.%LINEBREAK%<strong>Punto Cieco dei Sensori:</strong> Mentre effettui un attacco primario a gittata di attacco 0-1, non applicare il bonus di gittata 0-1 e tira 1 dado di attacco in meno."""
        "Del Meeko":
           display_name: """Del Meeko"""
           text: """Mentre una nave amica a gittata 0-2 difende contro un attaccante danneggiato, il difensore può ripetere il tiro di 1 dado di difesa."""
        "Delta Squadron Pilot":
           display_name: """Pilota dellaSquadriglia Delta"""
           text: """<i class = flavor_text>In aggiunta ai suoi lanciamissili e ai sei cannoni laser sulla punta delle ali, lo straordinario TIE Defender è dotato anche di scudi deflettori e di iperguida. </i>%LINEBREAK%<strong>A Tutta Velocità:</strong> Dopo aver eseguito completamente una manovra a velocità 3-5, puoi effettuare 1 azione %EVADE%."""
        "Dengar":
           display_name: """Dengar"""
           text: """Dopo che hai difeso, se l’attaccante è nel tuo %FRONTARC%, puoi spendere 1 %CHARGE% per effettuare 1 attacco bonus contro l’attaccante."""
        "Drea Renthal":
           display_name: """Drea Renthal"""
           text: """Mentre una nave amica non limitata effettua un attacco, se il difensore è nel tuo arco di fuoco, l’attaccante può ripetere il tiro di 1 dado di attacco."""
        "Edon Kappehl":
           display_name: """Edon Kappehl"""
           text: """Dopo che hai eseguito completamente una manovra blu o bianca, se non hai sganciato o lanciato un congegno in questo round, puoi sganciare 1 congegno."""
        "Edrio Two Tubes":
           display_name: """Edrio Due Tubi"""
           text: """Prima di attivarti, se sei concentrato,puoi effettuare 1 azione."""
        "Ello Asty":
           display_name: """Ello Asty"""
           text: """Dopo che hai rivelato una manovra avvitamento di Tallon [<lefttalon> o <righttalon>] rossa, se possiedi 2 o meno segnalini tensione, considera quella manovra come se fosse bianca.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria&nbsp;%CANNON%, %TORPEDO% o 󲁐."""
        "Emon Azzameen":
           display_name: """Emon Azzameen"""
           text: """Se stai per sganciare un congegno usando il modello [1&nbsp;%STRAIGHT%], puoi invece usare il modello [3&nbsp;%TURNLEFT%], [3&nbsp;%STRAIGHT%] o [3&nbsp;%TURNRIGHT%]."""
        "Epsilon Squadron Cadet":
           display_name: """Cadetto della Squadriglia Epsilon"""
           text: """<i class = flavor_text>Addestrati fin dall’infanzia a bordo degli Star Destroyer Classe Resurgent nello spazio profondo, molti piloti di TIE del Primo Ordine non hanno mai messo piede sulla superficie di un pianeta.</i>"""
        "Esege Tuketu":
           display_name: """Esege Tuketu"""
           text: """Mentre una nave amica a gittata 0-2 difende o effettua un attacco, può spendere i tuoi segnalini concentrazione come se fossero i suoi."""
        "Evaan Verlaine":
           display_name: """Evaan Verlaine"""
           text: """All’inizio della Fase di Ingaggio, puoi spendere 1 segnalino concentrazione per scegliere 1 nave amica a gittata 0-1. Se lo fai, quella nave tira 1 dado di difesa aggiuntivo mentre difende fino alla fine del round."""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """Mentre difendi o effettui un attacco, se sei in tensione, puoi spendere 1 %FORCE% per cambiare fino a 2 tuoi risultati %FOCUS% in risultati %EVADE% o %HIT%.%LINEBREAK%<strong>Carico e Pronto:</strong> Mentre sei attraccato, dopo che la tua nave madre ha effettuato un attacco primario %FRONTARC% o un attacco %TURRET%, può effettuare un attacco primario %REARARC% bonus."""
        "Ezra Bridger (Sheathipede)":
           display_name: """Ezra Bridger (Sheathipede)"""
           text: """Mentre difendi o effettui un attacco, se sei in tensione, puoi spendere 1 %FORCE% per cambiare fino a 2 tuoi risultati %FOCUS% in risultati %EVADE% /%HIT%. %LINEBREAK%<strong>Navetta di Comunicazione:</strong> Mentre sei attraccato, la tua nave madre ottiene %COORDINATE%. Prima che la tua nave madre si attivi, può effettuare 1 azione %COORDINATE%."""
        "Ezra Bridger (TIE Fighter)":
           display_name: """Ezra Bridger (TIE Fighter)"""
           text: """Mentre difendi o effettui un attacco, se sei in tensione, puoi spendere 1 %FORCE% per cambiare fino a 2 tuoi risultati %FOCUS% in risultati %EVADE% o %HIT%."""
        "Fenn Rau (Sheathipede)":
           display_name: """Fenn Rau (Sheathipede)"""
           text: """Dopo che una nave nemica nel tuo arco di fuoco ha ingaggiato, se non sei in tensione, puoi ottenere 1 segnalino tensione. Se lo fai, quella nave non può spendere segnalini per modificare dadi mentre effettua un attacco durante questa fase.%LINEBREAK%<strong>Navetta di Comunicazione:</strong> Mentre sei attraccato, la tua nave madre ottiene %COORDINATE%. Prima che la tua nave madre si attivi, può effettuare 1 azione %COORDINATE%."""
        "Fenn Rau":
           display_name: """Fenn Rau"""
           text: """Mentre difendi o effettui un attacco, se la gittata di attacco è 1, puoi tirare 1 dado aggiuntivo.%LINEBREAK%<strong>Carica Frontale di Concordia:</strong> Mentre difendi, se la gittata di attacco è 1 e sei nel %FRONTARC% dell’attaccante, cambia 1 risultato in 1 risultato %EVADE%."""
        "Finch Dallow":
           display_name: """Finch Dallow"""
           text: """Prima che tu stia per sganciare una bomba, puoi invece collocare quella bomba nell’area di gioco a contatto con te."""
        "First Order Test Pilot":
           display_name: """Pilota Collaudatoredel Primo Ordine"""
           text: """<i class = flavor_text>Il TIE Silencer, progettato per raggiungere velocità incredibili e fornire una manovrabilità di precisione, è devastante nelle mani di chi è in grado di sfruttarne appieno il potenziale. I piloti meno abili rischiano di essere sopraffatti e di perdere il controllo di questo agile vascello.</i>%LINEBREAK%<strong>Propulsori Automatici:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BARRELROLL% o %BOOST% rossa."""
        "Foreman Proach":
           display_name: """Capomastro Proach"""
           text: """Prima di impegnare, puoi scegliere 1 nave nemica nel tuo %BULLSEYEARC% a gittata 1-2 e ottenere 1 segnalino disarmo. Se lo fai, quella nave ottiene 1 segnalino raggio traente.%LINEBREAK%<strong>Stabilizzatori Ridotti:</strong> Mentre ti muovi, ignori gli asteroidi."""
        "Freighter Captain":
           display_name: """Capitano di Mercantile"""
           text: """<i class = flavor_text>Molti naviganti si guadagnano da vivere percorrendo la Fascia Esterna, dove il confine tra contrabbandieri e legittimi mercanti si fa spesso sottile. Ai margini della galassia civilizzata i compratori non si curano troppo della provenienza della merce, almeno finché il prezzo è conveniente.</i>"""
        "Gamma Squadron Ace":
           display_name: """Asso dellaSquadriglia Gamma """
           text: """<i class = flavor_text>Anche se deve sacrificare parte della sua velocità e manovrabilità rispetto a un TIE/ln, il Bombardiere TIE vanta armamenti in abbondanza, sufficienti a distruggere praticamente ogni bersaglio nemico.</i>%LINEBREAK%<strong>Bombardiere Agile:</strong> Se stai per sganciare un congegno usando un modello %STRAIGHT%, puoi invece usare un modello %BANKLEFT% o %BANKRIGHT% con la stessa velocità."""
        "Gand Findsman":
           display_name: """Cercatore di Gand"""
           text: """<i class = flavor_text>I leggendari Cercatori di Gand venerano le nebbie che avviluppano il loro pianeta natio e fanno uso di presagi, premonizioni e rituali mistici per rintracciare le loro prede.</i>"""
        "Garven Dreis (X-Wing)":
           display_name: """Garven Dreis (X-Wing)"""
           text: """Dopo che hai speso un segnalino concentrazione, puoi scegliere 1 nave amica a gittata 1-3. Quella nave ottiene 1 segnalino concentrazione."""
        "Garven Dreis":
           display_name: """Garven Dreis"""
           text: """Dopo che hai speso un segnalino concentrazione, puoi scegliere 1 nave amica a gittata 1-3. Quella nave ottiene 1 segnalino concentrazione."""
        "Gavin Darklighter":
           display_name: """Gavin Darklighter"""
           text: """Mentre una nave amica effettua un attacco, se il difensore è nel tuo %FRONTARC%, l’attaccante può cambiare 1 risultato %HIT% in 1 risultato %CRIT%.%LINEBREAK%<strong>Scanner Sperimentali:</strong> Puoi acquisire bersagli oltre gittata 3. Non puoi acquisire bersagli a gittata 1."""
        "Genesis Red":
           display_name: """Genesis Red"""
           text: """Dopo aver acquisito un bersaglio, devi rimuovere tutti i tuoi segnalini concentrazione e schivata. Poi ottieni lo stesso numero di segnalini concentrazione e schivata posseduti dalla nave acquisita come bersaglio.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria %CANNON%, %TORPEDO% o %MISSILE%."""
        "Gideon Hask":
           display_name: """Gideon Hask"""
           text: """Mentre effettui un attacco contro un difensore danneggiato, tira 1 dado di attacco aggiuntivo."""
        "Gold Squadron Veteran":
           display_name: """Veterano della Squadriglia Oro"""
           text: """<i class = flavor_text>La Squadriglia Oro, comandata da Jon “Dutch” Vander, svolse un ruolo cruciale nelle Battaglie di Scarif e Yavin.</i>"""
        "Grand Inquisitor":
           display_name: """Grande Inquisitore"""
           text: """Mentre difendi a gittata diattacco 1, puoi spendere 1 %FORCE% per prevenire il bonus di gittata 1.%LINEBREAK%Mentre effettui un attacco contro un difensore a gittata di attacco 2-3, puoi spendere 1 %FORCE% per applicare il bonus di gittata 1."""
        "Gray Squadron Bomber":
           display_name: """Bombardiere della Squadriglia Grigia"""
           text: """<i class = flavor_text>Anche molto tempo dopo essere stato scartato dall’Impero Galattico, l’Ala-Y rimase una colonna portante della flotta Ribelle graziealla sua resistenza, alla sua affidabilità e ai suoi armamenti pesanti.</i>"""
        "Graz":
           display_name: """Graz"""
           text: """Mentre difendi, se sei dietro l’attaccante, tira 1 dado di difesa aggiuntivo.%LINEBREAK%Mentre effettui un attacco, se sei dietro il difensore, tira 1 dado di attacco aggiuntivo."""
        "Green Squadron Expert":
           display_name: """Esperto della Squadriglia Verde"""
           text: """<i class = flavor_text>Il frutto di anni di modifiche e collaudi sul campo si è concretizzato nel modello RZ-2, ma i piloti più temerari vedono nella maggiore affidabilità della nave una sfida a spingere le sue prestazioni verso nuovi limiti.</i>%LINEBREAK%<strong>Girostabilizzatori Affinati:</strong> Puoi ruotare il tuo segnalatore %SINGLETURRETARC% solo sui tuoi %FRONTARC% o %REARARC%. Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BOOST% o %ROTATEARC% rossa."""
        "Green Squadron Pilot":
           display_name: """Pilota della Squadriglia Verde"""
           text: """<i class = flavor_text>Grazie ai suoi comandi sensibili e alla sua alta manovrabilità, l’abitacolo di un Ala-A era un luogo riservato soltanto ai piloti più dotati.</i>%LINEBREAK%<strong>Propulsori Vettoriali:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BOOST% rossa."""
        "Greer Sonnel":
           display_name: """Greer Sonnel"""
           text: """Dopo che hai eseguito completamente una manovra, puoi ruotare il tuo segnalatore %SINGLETURRETARC%.%LINEBREAK%<strong>Girostabilizzatori Affinati:</strong> Puoi ruotare il tuo segnalatore %SINGLETURRETARC% solo sui tuoi %FRONTARC% o %REARARC%. Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BOOST% o %ROTATEARC% rossa."""
        "Guri":
           display_name: """Guri"""
           text: """All’inizio della Fase di Ingaggio, se ci sono navi nemiche a gittata 0-1, puoi ottenere 1 segnalino concentrazione.%LINEBREAK%<strong>Micropropulsori:</strong> Mentre effettui un avvitamento, devi usare il modello %BANKLEFT% o %BANKRIGHT% invece del modello %STRAIGHT%."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """Dopo che hai tirato i dadi, se sei a gittata 0-1 da un ostacolo, puoi ripetere il tiro di tutti i tuoi dadi. Questo non è considerato un tiro ripetuto al fine degli altri effetti."""
        "Han Solo (Scum)":
           display_name: """Han Solo (Scum)"""
           text: """Mentre difendi o effettui un attacco primario, se l’attacco è ostruito da un ostacolo, puoi ripetere il tiro di 1 dado aggiuntivo."""
        "Han Solo (Resistance)":
           display_name: """Han Solo (Resistance)"""
           text: """<strong>Preparazione:</strong> Puoi essere collocato in un qualsiasi punto dell’area di gioco oltre gittata 3 dalle navi nemiche."""
        "Heff Tobber":
           display_name: """Heff Tobber"""
           text: """Dopo che una nave nemica ha eseguito una manovra, se è a gittata 0, puoi effettuare 1 azione."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """Dopo che hai rivelato una manovra rossa o blu, puoi selezionare un’altra manovra della stessa difficoltà sul tuo indicatore.%LINEBREAK%<strong>Carico e Pronto:</strong> Mentre sei attraccato, dopo che la tua nave madre ha effettuato un attacco primario %FRONTARC% o un attacco %TURRET%, può effettuare un attacco primario %REARARC% bonus."""
        "Hera Syndulla (VCX-100)":
           display_name: """Hera Syndulla (VCX-100)"""
           text: """Dopo che hai rivelato una manovra rossa o blu, puoi regolare il tuo indicatore su un’altra manovra della stessa difficoltà.%LINEBREAK%<strong>Cannone Caudale:</strong> Mentre possiedi una nave attraccata, possiedi un’arma primaria %REARARC% con un valore di attacco pari al valore di attacco dell’arma primaria %FRONTARC% della tua nave attraccata."""
        "Hired Gun":
           display_name: """Sicario Prezzolato"""
           text: """<i class = flavor_text>È sufficiente parlare di crediti Imperiali per vedere una schiera di individui poco affidabili accorrere al proprio fianco.</i>"""
        "Horton Salm":
           display_name: """Horton Salm"""
           text: """Mentre effettui un attacco, puoi ripetere il tiro di 1 dado di attacco per ogni altra nave amica a gittata 0-1 dal difensore."""
        "IG-88A":
           display_name: """IG-88A"""
           text: """All’inizio della Fase di Ingaggio, puoi scegliere 1 nave amica a gittata 1-3 con %CALCULATE% nella sua barra delle azioni. Se lo fai, trasferisci 1 tuo segnalino calcolo a quella nave. %LINEBREAK%<strong>Cervello Droide Evoluto:</strong> Dopo che hai effettuato un’azione %CALCULATE%, ottieni 1 segnalino calcolo."""
        "IG-88B":
           display_name: """IG-88B"""
           text: """Dopo che hai effettuato un attacco che ha mancato, puoi effettuare 1 attacco %CANNON% bonus.%LINEBREAK%<strong>Cervello Droide Evoluto:</strong> Dopo che hai effettuato un’azione %CALCULATE%, ottieni 1 segnalino calcolo."""
        "IG-88C":
           display_name: """IG-88C"""
           text: """Dopo che hai effettuato un’azione %BOOST%, puoi effettuare 1 azione %EVADE%.%LINEBREAK%<strong>Cervello Droide Evoluto:</strong> Dopo che hai effettuato un’azione %CALCULATE%, ottieni 1 segnalino calcolo."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """Mentre esegui una manovra loop di Segnor (%SLOOPLEFT% o %SLOOPRIGHT%), puoi invece usare il modello curva (%TURNLEFT% o %TURNRIGHT%) con la stessa direzione e velocità oppure il modello dritta (%STRAIGHT%) con la stessa velocità.%LINEBREAK%<strong>Cervello Droide Evoluto:</strong> Dopo che hai effettuato un’azione %CALCULATE%, ottieni 1 segnalino calcolo."""
        "Ibtisam":
           display_name: """Ibtisam"""
           text: """Dopo che hai eseguito completamente una manovra, se sei in tensione, puoi tirare 1 dado di attacco. Con un risultato %HIT% o %CRIT%, rimuovi 1 segnalino tensione."""
        "Iden Versio":
           display_name: """Iden Versio"""
           text: """Prima che un Caccia TIE/ln a gittata 0-1 stia per subire 1 o più danni, puoi spendere 1 %CHARGE%. Se lo fai, previeni quei danni."""
        "Imdaar Test Pilot":
           display_name: """Pilota Collaudatoredi Imdaar"""
           text: """<i class = flavor_text>Il TIE Phantom, il risultato primario della struttura di ricerca segreta chiamata Imdaar Alfa, è ciò che molti consideravano impossibile: un piccolo astrocaccia dotato di un evoluto dispositivo di occultamento.</i>%LINEBREAK%<strong>Apparato di Stygium:</strong> Dopo che ti sei deoccultato, puoi effettuare 1 azione %EVADE%. All’inizio della Fase Finale, puoi spendere 1 segnalino schivata per ottenere 1 segnalino occultamento."""
        "Inaldra":
           display_name: """Inaldra"""
           text: """Mentre difendi o effettui un attacco, puoi subire 1 danno %HIT% per ripetere il tiro di un qualsiasi numero di tuoi dadi.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria %CANNON%, %TORPEDO% o %MISSILE%."""
        "Inquisitor":
           display_name: """Inquisitore"""
           text: """<i class = flavor_text>I temibili Inquisitori dispongono di un alto grado di autonomia e possono accedere alle tecnologie più evolute dell’Impero, come i prototipi del TIE Advanced v1.</i>"""
        "Jake Farrell":
           display_name: """Jake Farrell"""
           text: """Dopo che hai effettuato un’azione %BARRELROLL% o %BOOST%, puoi scegliere 1 nave amica a gittata 0-1. Quella nave può effettuare 1 azione %FOCUS%.%LINEBREAK%<strong>Propulsori Vettoriali:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BOOST% rossa."""
        "Jakku Gunrunner":
           display_name: """Mercante d’Armidi Jakku"""
           text: """<i class = flavor_text>Il Rimorchiatore Spaziale Quadrijet, comunemente chiamato “Quadjumper”, è un vascello agile sia nello spazio che in atmosfera, qualità che lo rende popolare sia presso i contrabbandieri che gli esploratori.</i>%LINEBREAK%<strong>Apparato Traente da Rimorchiatore:</strong> <strong>Azione:</strong> Scegli 1 nave nel tuo %FRONTARC% a gittata 1. Quella nave ottiene 1 segnalino raggio traente, oppure 2 segnalini raggio traente se è nel tuo %BULLSEYEARC% a gittata 1."""
        "Jan Ors":
           display_name: """Jan Ors"""
           text: """Mentre una nave amica nel tuo arco di fuoco effettua un attacco primario, se non sei in tensione, puoi ottenere 1 segnalino tensione. Se lo fai, quella nave può tirare 1 dado di attacco aggiuntivo."""
        "Jaycris Tubbs":
           display_name: """Jaycris Tubbs"""
           text: """Dopo che hai eseguito completamente una manovra blu, puoi scegliere 1 nave amica a gittata 0-1. Se lo fai, quella nave rimuove 1 segnalino tensione.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria %CANNON%, %TORPEDO% o 󲁐."""
        "Jek Porkins":
           display_name: """Jek Porkins"""
           text: """Dopo che hai ricevuto un segnalino tensione, puoi tirare 1 dado di attacco per rimuoverlo. Con un risultato %HIT%, subisci 1 danno&nbsp;%HIT%."""
        "Jessika Pava":
           display_name: """Jessika Pava"""
           text: """Mentre difendi o effettui un attacco, puoi spendere 1 %CHARGE% o 1 %CHARGE% non ricorsiva da una miglioria %ASTROMECH% di cui sei dotato per ripetere il tiro di 1 tuo dado perogni altra nave amica a gittata 0-1.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria&nbsp;%CANNON%, %TORPEDO% o 󲁐."""
        "Joph Seastriker":
           display_name: """Joph Seastriker"""
           text: """Dopo che hai perso 1 scudo, ottieni 1 segnalino schivata.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria&nbsp;%CANNON%, %TORPEDO% o %MISSILE%."""
        "Joy Rekkoff":
           display_name: """Joy Rekkoff"""
           text: """Mentre effettui un attacco, puoi spendere 1 %CHARGE% da una miglioria %TORPEDO% di cui sei dotato. Se lo fai, il difensore tira 1 dado di difesa in meno.%LINEBREAK%<strong>Carica Frontale di Concordia:</strong> Mentre difendi, se la gittata di attacco è 1 e sei nel %FRONTARC% dell’attaccante, cambia 1 risultato in 1 risultato %EVADE%."""
        "Kaa'to Leeachos":
           display_name: """Kaa’to Leeachos"""
           text: """All’inizio della Fase di Ingaggio, puoi scegliere 1 nave amica a gittata 0-2. Se lo fai, trasferisci 1 segnalino concentrazione o schivata da quella nave a te stesso."""
        "Kad Solus":
           display_name: """Kad Solus"""
           text: """Dopo che hai eseguito completamente una manovra rossa, ottieni 2 segnalini concentrazione.%LINEBREAK%<strong>Carica Frontale di Concordia:</strong> Mentre difendi, se la gittata di attacco è 1 e sei nel %FRONTARC% dell’attaccante, cambia 1 risultato in 1 risultato %EVADE%."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """Mentre una nave amica nel tuo arco di fuoco difende, puoi spendere 1 %FORCE%. Se lo fai, l’attaccante tira 1 dado di attacco in meno.%LINEBREAK%<strong>Cannone Caudale:</strong> Mentre possiedi una nave attraccata, possiedi un’arma primaria %REARARC% con un valore di attacco pari al valore di attacco dell’arma primaria %FRONTARC% della tua nave attraccata."""
        "Kare Kun":
           display_name: """Kare Kun"""
           text: """Mentre acceleri, puoi usare invece il modello [1 %TURNLEFT%] o [1 %TURNRIGHT%].%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria&nbsp;%CANNON%, %TORPEDO% o %MISSILE%."""
        "Kashyyyk Defender":
           display_name: """Difensore di Kashyyyk"""
           text: """<i class = flavor_text>Dotata di tre cannoni laser binati Sureggi ad ampio raggio, la cannoniera Auzituck costituiva un potente deterrente per le operazioni degli schiavisti nel sistema Kashyyyk.</i>"""
        "Kath Scarlet":
           display_name: """Kath Scarlet"""
           text: """Mentre effettui un attacco primario, se ci sono navi amiche non limitate a gittata 0 dal difensore, tira 1 dadodi attacco aggiuntivo."""
        "Kavil":
           display_name: """Kavil"""
           text: """Mentre effettui un attacco non %FRONTARC%, tira 1 dado di attacco aggiuntivo."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """All’inizio della Fase di Ingaggio, puoi scegliere 1 nave in entrambi i tuoi %FRONTARC% e %SINGLETURRETARC% a gittata 0-1. Se lo fai, quella nave ottiene 1 segnalino raggio traente."""
        "Knave Squadron Escort":
           display_name: """Scorta dellaSquadriglia Knave"""
           text: """<i class = flavor_text>L’Ala-E, progettato per unire i tratti migliori della serie Ala-X e quelli della serie Ala-A, vanta una potenza di fuoco, una velocità e una manovrabilità superiori.</i>%LINEBREAK% <strong>Scanner Sperimentali:</strong> Puoi acquisire bersagli oltre gittata 3. Non puoi acquisire bersagli a gittata 1."""
        "Koshka Frost":
           display_name: """Koshka Frost"""
           text: """Mentre difendi o effettui un attacco, se la nave nemica è in tensione, puoi ripetere il tiro di 1 tuo dado."""
        "Krassis Trelix":
           display_name: """Krassis Trelix"""
           text: """Puoi effettuare attacchi speciali %FRONTARC% dal tuo %REARARC%.%LINEBREAK%Mentre effettui un attacco speciale, puoi ripetere il tiro di 1 dado di attacco."""
        "Kullbee Sperado":
           display_name: """Kullbee Sperado"""
           text: """Dopo che hai effettuato un’azione %BARRELROLL% o %BOOST%, puoi girare la carta miglioria %CONFIG% di cui sei dotato."""
        "Kyle Katarn":
           display_name: """Kyle Katarn"""
           text: """All’inizio della Fase di Ingaggio, puoi trasferire 1 tuo segnalino concentrazione su una nave amica nel tuo arco di fuoco."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """Dopo che hai difeso, puoi spendere 1 %FORCE% per assegnare la condizione <strong>Ti Mostrerò il Lato Oscuro</strong> all’attaccante.%LINEBREAK%<strong>Propulsori Automatici:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BARRELROLL% o %BOOST% rossa."""
        "L3-37":
           display_name: """L3-37"""
           text: """Se non possiedi scudi attivi, riduci la difficoltà delle tue manovre curva (%BANKLEFT% e %BANKRIGHT%)."""
        "L3-37 (Escape Craft)":
           display_name: """L3-37 (Escape Craft)"""
           text: """Se non possiedi scudi attivi, riduci la difficoltà delle tue manovre curva (%BANKLEFT% e %BANKRIGHT%).%LINEBREAK%<strong>Copilota:</strong> Mentre sei attraccato, la tua nave madre possiede la tua capacità del pilota in aggiunta alla sua."""
        "Laetin A'shera":
           display_name: """Laetin A’shera"""
           text: """Dopo che hai difeso o effettuato un attacco, se l’attacco ha mancato, ottieni 1 segnalino schivata.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria %CANNON%, %TORPEDO% o %MISSILE%."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """Dopo che hai eseguito completamente una manovra blu, puoi scegliere 1 nave amica a gittata 0-3. Quella nave può effettuare 1 azione."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian (Scum)"""
           text: """Dopo che hai tirato i dadi, se non sei in tensione, puoi ottenere 1 segnalino tensione per ripetere il tiro di tutti i tuoi risultati vuoto."""
        "Lando Calrissian (Scum) (Escape Craft)":
           display_name: """Lando Calrissian (Scum) (Escape Craft)"""
           text: """Dopo che hai tirato i dadi, se non sei in tensione, puoi ottenere 1 segnalino tensione per ripetere il tiro di tutti i tuoi risultati vuoto.%LINEBREAK%<strong>Copilota:</strong> Mentre sei attraccato, la tua nave madre possiede la tua capacità del pilota in aggiunta alla sua."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """All’inizio della Fase di Ingaggio, puoi scegliere 1 nave a gittata 1 e spendere 1 bersaglio acquisito che possiedi su quella nave. Se lo fai, quella nave ottiene 1 segnalino raggio traente."""
        "Leevan Tenza":
           display_name: """Leevan Tenza"""
           text: """Dopo che hai effettuato un’azione %BARRELROLL% o %BOOST%, puoi effettuare 1 azione %EVADE% rossa."""
        "Lieutenant Bastian":
           display_name: """Tenente Bastian"""
           text: """Dopo che a una nave a gittata 1-2 è stata inflitta una carta danno, puoi acquisire quella nave come bersaglio.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria %CANNON%, %TORPEDO% o %MISSILE%."""
        "Lieutenant Blount":
           display_name: """Tenente Blount"""
           text: """Mentre effettui un attacco primario, se ci sono altre navi amiche a gittata 0-1 dal difensore, puoi tirare 1 dado di attacco aggiuntivo."""
        "Lieutenant Dormitz":
           display_name: """Tenente Dormitz"""
           text: """<strong>Preparazione</strong>: Dopo che sei stato collocato, le altre navi amiche possono essere collocate in qualsiasi punto dell’area di gioco a gittata 0-2 da te.%LINEBREAK%<strong>Batteria Collegata:</strong> Mentre effettui un attacco %CANNON%, tira 1 dado aggiuntivo."""
        "Lieutenant Karsabi":
           display_name: """Tenente Karsabi"""
           text: """Dopo che hai ottenuto un segnalino disarmo, se non sei in tensione, puoi ottenere 1 segnalino tensione per rimuovere 1 segnalino disarmo."""
        "Lieutenant Kestal":
           display_name: """Tenente Kestal"""
           text: """Mentre effettui un attacco, dopo che il difensore ha tirato i dadi di difesa, puoi spendere 1 segnalino concentrazione per annullare tutti i risultati vuoto/%FOCUS% del difensore."""
        "Lieutenant Rivas":
           display_name: """Tenente Rivas"""
           text: """Dopo che una nave a gittata 1-2 ha ottenuto un segnalino rosso o arancione, se non hai acquisito quella nave come bersaglio, puoi acquisirla come bersaglio."""
        "Lieutenant Sai":
           display_name: """Tenente Sai"""
           text: """Dopo che hai effettuato un’azione %COORDINATE%, se la nave che hai scelto ha effettuato un’azione nella tua barra delle azioni, puoi effettuare quell’azione."""
        "Lieutenant Tavson":
           display_name: """Tenente Tavson"""
           text: """Dopo che hai subito danni, puoi spendere 1 %CHARGE% per effettuare 1 azione.%LINEBREAK%<strong>Batteria Collegata:</strong> Mentre effettui un attacco %CANNON%, tira 1 dado aggiuntivo."""
        "Lok Revenant":
           display_name: """Redivivo di Lok"""
           text: """<i class = flavor_text>Fu il Collettivo Ingegneristico Nubiano a progettare il Bombardiere Scurrg H-6 puntando alla versatilità in combattimento, dotandolo di potenti scudi e di un armamentario differenziato e devastante.</i>"""
        "Lothal Rebel":
           display_name: """Ribelle di Lothal"""
           text: """<i class = flavor_text>Il VCX-100, un altro modello di grande successo della Corellian Engineering Corporation, è più grande della diffusissima serie YT e offre spazi interni più ampi e maggiori opzioni di personalizzazione.</i>%LINEBREAK%<strong>Cannone Caudale:</strong> Mentre possiedi una nave attraccata, possiedi un’arma primaria %REARARC% con un valore di attacco pari al valore di attacco dell’arma primaria %FRONTARC% della tua nave attraccata."""
        "Lowhhrick":
           display_name: """Lowhhrick"""
           text: """Dopo che una nave amica a gittata 0-1 è diventata il difensore, puoi spendere 1 segnalino rinforzo. Se lo fai, quella nave ottiene 1 segnalino schivata."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """Dopo che sei diventato il difensore (prima che i dadi siano tirati), puoi recuperare 1&nbsp;%FORCE%."""
        "L'ulo L'ampar":
           display_name: """L’ulo L’ampar"""
           text: """Mentre difendi o effettui un attacco primario, se sei in tensione, <b>devi </b>tirare 1 dado di difesa in meno o 1 dado di attacco aggiuntivo.%LINEBREAK%<strong>Girostabilizzatori Affinati:</strong> Puoi ruotare il tuo segnalatore %SINGLETURRETARC% solo sui tuoi %FRONTARC% o %REARARC%. Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BOOST% o %ROTATEARC% rossa."""
        "Maarek Stele":
           display_name: """Maarek Stele"""
           text: """Mentre effettui un attacco, se al difensore sta per essere inflitta una carta danno a faccia in su, pesca invece 3 carte danno, scegline 1 e scarta le altre.%LINEBREAK%<strong>Computer d’Attacco Avanzato:</strong> Mentre effettui un attacco primario contro un difensore che hai acquisito come bersaglio, tira 1 dado di attacco aggiuntivo e cambia 1 risultato %HIT% in 1 risultato %CRIT%."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """Quando una nave amica a gittata 0-2 difende, l’attaccante non può ripetere il tiro di più di 1 dado di attacco."""
        "Major Rhymer":
           display_name: """Maggiore Rhymer"""
           text: """Mentre effettui un attacco %TORPEDO% o %MISSILE%, puoi aumentare o ridurre di 1 il requisito di gittata, fino a un limite di 0-3.%LINEBREAK%<strong>Bombardiere Agile:</strong> Se stai per sganciare un congegno usando un modello %STRAIGHT%, puoi invece usare un modello %BANKLEFT% o %BANKRIGHT% con la stessa velocità."""
        "Major Stridan":
           display_name: """Maggiore Stridan"""
           text: """Mentre coordini o risolvi gli effetti di una tua miglioria, puoi considerare le navi amiche a gittata 2-3 come se fossero a gittata 0 o 1.%LINEBREAK%<strong>Batteria Collegata:</strong> Mentre effettui un attacco %CANNON%, tira 1 dado aggiuntivo."""
        "Major Vermeil":
           display_name: """Maggiore Vermeil"""
           text: """Mentre effettui un attacco, se il difensore non possiede segnalini verdi, puoi cambiare 1 tuo risultato %FOCUS%/vuoto in 1 risultato %HIT%. %LINEBREAK%<strong>Alettoni ad Assetto Variabile:</strong> Prima di rivelare il tuo indicatore, se non sei in tensione, devi eseguire una manovra bianca [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] o [1&nbsp;%BANKRIGHT%]."""
        "Major Vynder":
           display_name: """Maggiore Vynder"""
           text: """Mentre difendi, se sei disarmato, tira 1 dado di difesa aggiuntivo."""
        "Manaroo":
           display_name: """Manaroo"""
           text: """All’inizio della Fase di Ingaggio, puoi scegliere 1 nave amica a gittata 0-1. Se lo fai, trasferisci tutti i tuoi segnalini verdi a quella nave."""
        "Mining Guild Sentry":
           display_name: """Sentinella dellaGilda Mineraria"""
           text: """<i class = flavor_text>Come parte del suo accordo con l’Impero, la Gilda Mineraria riceve dei Caccia TIE/ln Modificati con cui proteggere le sue operazioni. Agli stabilizzatori di questi vascelli sono stati rimossi alcuni pannelli solari per incrementare la visibilità. I caccia sono inoltre dotati di sistemi di supporto vitale più estesi, a tutela dei piloti della corporazione.</i>%LINEBREAK%<strong>Stabilizzatori Ridotti:</strong> Mentre ti muovi, ignori gli asteroidi."""
        "Mining Guild Surveyor":
           display_name: """Ispettore dellaGilda Mineraria"""
           text: """<i class = flavor_text>I progetti di costruzione Imperiali consumano materie prime a ritmi ineguagliati e la Gilda Mineraria sfrutta senza pietà tutti i giacimenti di doonio che trova su mondi come Batonn, Lothal e Umbara.</i>%LINEBREAK%<strong>Stabilizzatori Ridotti:</strong> Mentre ti muovi, ignori gli asteroidi."""
        "Miranda Doni":
           display_name: """Miranda Doni"""
           text: """Mentre effettui un attacco primario, puoi spendere 1 scudo per ripetere il tiro di 1 dado di attacco oppure, se non possiedi scudi attivi, puoi tirare 1 dado di attacco in meno per recuperare 1 scudo."""
        "Moralo Eval":
           display_name: """Moralo Eval"""
           text: """Se stai per fuggire, puoi spendere 1 %CHARGE%. Se lo fai, collocati invece in riserva. All’inizio della Fase di Pianificazione successiva, collocati entro gittata 1 dal margine dell’area di gioco da cui stavi per fuggire."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """Dopo che hai ottenuto un segnalino tensione, se ci sono navi nemiche nel tuo %FRONTARC% a gittata 0-1, puoi rimuovere quel segnalino tensione.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria&nbsp;%CANNON%, %TORPEDO% o 󲁐."""
        "Norra Wexley (Y-Wing)":
           display_name: """Norra Wexley (Y-Wing)"""
           text: """Mentre difendi, se ci sono navi nemiche a gittata 0-1, puoi aggiungere 1 risultato %EVADE% ai risultati dei tuoi dadi."""
        "Norra Wexley":
           display_name: """Norra Wexley"""
           text: """Mentre difendi, se ci sono navi nemiche a gittata 0-1, puoi aggiungere 1 risultato %EVADE% ai risultati dei tuoi dadi."""
        "Nu Squadron Pilot":
           display_name: """Pilota dellaSquadriglia Nu"""
           text: """<i class = flavor_text>Lo Star Wing Classe Alfa, la cui estetica si ispirava agli altri vascelli della Cygnus Spaceworks, era una nave versatile, assegnata alle unità specialistiche della Flotta Imperiale bisognose di un astrocaccia che potesse svolgere molte mansioni diverse.</i>"""
        "N'dru Suhlak":
           display_name: """N’dru Suhlak"""
           text: """Mentre effettui un attacco primario, se non ci sono altre navi amiche a gittata 0-2,tira 1 dado di attacco aggiuntivo."""
        "Obsidian Squadron Pilot":
           display_name: """Pilota dellaSquadriglia Obsidian"""
           text: """<i class = flavor_text>Il sistema a motori ionici gemelli del Caccia TIE era basato sulla velocità e faceva del TIE/ln uno degli astrocaccia più manovrabili mai prodotti in massa. </i>"""
        "Old Teroch":
           display_name: """Old Teroch"""
           text: """All’inizio della Fase di Ingaggio, puoi scegliere 1 nave nemica a gittata 1. Se lo fai e sei nel suo %FRONTARC%, quella nave rimuove tutti i suoi segnalini verdi.%LINEBREAK%<strong>Carica Frontale di Concordia:</strong> Mentre difendi, se la gittata di attacco è 1 e sei nel %FRONTARC% dell’attaccante, cambia 1 risultato in 1 risultato %EVADE%."""
        "Omega Squadron Ace":
           display_name: """Asso dellaSquadriglia Omega"""
           text: """<i class = flavor_text>Soltanto i piloti che hanno dimostrato un’abilità straordinaria e una dedizione incrollabile vengono ricompensati con un’ambita posizione nelle squadriglie del Primo Ordine, che agiscono in segreto contro la Nuova Repubblica durante la Guerra Fredda</i>."""
        "Omega Squadron Expert":
           display_name: """Esperto della Squadriglia Omega"""
           text: """<i class = flavor_text>Il TIE/sf è un astrocaccia versatile che monta armamenti specializzati e sistemi sperimentali per le operazioni a lungo raggio delle Forze Speciali del Primo Ordine.</i>%LINEBREAK%<strong>Torretta Arma Pesante:</strong> Puoi ruotare il tuo segnalatore %SINGLETURRETARC% soltanto sui tuoi %FRONTARC% o %REARARC%. <b>Devi</b> considerare il requisito %FRONTARC% delle migliorie %MISSILE% di cui sei dotato come se fosse %SINGLETURRETARC%."""
        "Omicron Group Pilot":
           display_name: """Pilota delGruppo Omicron"""
           text: """<i class = flavor_text>La navetta Classe Lambda, nota per la sua struttura a tre ali e il suo evoluto apparato di sensori, svolgeva un ruolo essenziale come vascello di supporto leggero nella Flotta Imperiale.</i>"""
        "Onyx Squadron Ace":
           display_name: """Asso dellaSquadriglia Onyx"""
           text: """<i class = flavor_text>Il TIE Defender è un caccia sperimentale che surclassa qualsiasi altro astrocaccia contemporaneo, anche se la sua taglia, la sua velocità e la sua gamma di armamenti richiedono un ingente costo in crediti.</i>%LINEBREAK%<strong>A Tutta Velocità:</strong> Dopo aver eseguito completamente una manovra a velocità 3-5, puoi effettuare 1 azione %EVADE%."""
        "Onyx Squadron Scout":
           display_name: """Esploratore della Squadriglia Onyx"""
           text: """<i class = flavor_text>Il TIE/ag, concepito per ingaggi prolungati, è comandato soprattutto da quei piloti scelti e addestrati per sfruttare al meglio sia i suoi armamenti unici che la sua manovrabilità.</i>"""
        "Outer Rim Pioneer":
           display_name: """Pioniere della Fascia Esterna"""
           text: """Le navi amiche a gittata 0-1 possono effettuare attacchi a gittata 0 dagli ostacoli.%LINEBREAK%<strong>Copilota:</strong> Mentre sei attraccato, la tua nave madre possiede la tua capacità del pilota in aggiunta alla sua."""
        "Outer Rim Smuggler":
           display_name: """Contrabbandiere della Fascia Esterna"""
           text: """<i class = flavor_text>L’YT-1300, noto per la sua longevità e la sua struttura modulare, è uno dei mercantili più popolari e diffusi in tutta la galassia ed è spesso sottoposto a estese modifiche personali. </i>"""
        "Overseer Yushyn":
           display_name: """Supervisore Yushyn"""
           text: """Prima che una nave amica a gittata 1 stia per ottenere un segnalino disarmo, se quella nave non è in tensione, puoi spendere 1 %CHARGE%. Se lo fai, quella nave ottiene invece 1 segnalino tensione.%LINEBREAK%<strong>Stabilizzatori Ridotti:</strong> Mentre ti muovi, ignori gli asteroidi."""
        "Palob Godalhi":
           display_name: """Palob Godalhi"""
           text: """All’inizio della Fase di Ingaggio, puoi scegliere 1 nave nemica nel tuo arco di fuoco a gittata 0-2.Se lo fai, trasferisci 1 segnalino concentrazione o schivata da quella nave a te stesso."""
        "Partisan Renegade":
           display_name: """Rinnegato dei Partigiani"""
           text: """<i class = flavor_text>In origine i partigiani di Saw Gerrera furono fondati per opporsi alle forze dei Separatisti su Onderon durante le Guerre dei Cloni, ma continuarono a combattere contro la tirannia galattica quando l’Impero ascese al potere.</i>"""
        "Patrol Leader":
           display_name: """Capopattuglia"""
           text: """<i class = flavor_text>Ottenere il comando di un Decimator VT-49 era considerato una promozione importante per un ufficiale di medio rango della Flotta Imperiale.</i>"""
        "Petty Officer Thanisson":
           display_name: """Sergente Thanisson"""
           text: """Durante la Fase di Attivazione o di Impegno, dopo che una nave nel tuo %FRONTARC% a gittata 0-2 ha ottenuto 1 segnalino tensione, puoi spendere 1 %CHARGE%. Se lo fai, quella nave ottiene 1 segnalino raggio traente.%LINEBREAK%<strong>Batteria Collegata:</strong> Mentre effettui un attacco %CANNON%, tira 1 dado aggiuntivo."""
        "Phoenix Squadron Pilot":
           display_name: """Pilota della Squadriglia Phoenix"""
           text: """<i class = flavor_text>Guidati dal comandante Jun Sato, i coraggiosi ma inesperti piloti della Squadriglia Phoenix devono affrontare avversità soverchianti nella loro lotta contro l’Impero Galattico.</i>%LINEBREAK%<strong>Propulsori Vettoriali:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BOOST% rossa."""
        "Planetary Sentinel":
           display_name: """Sentinella Planetaria"""
           text: """<i class = flavor_text>Per proteggere le sue molte installazioni militari, l’Impero ha bisogno di forze difensive agili e vigili.</i>%LINEBREAK%<strong>Alettoni ad Assetto Variabile:</strong> Prima di rivelare il tuo indicatore, se non sei in tensione, devi eseguire una manovra bianca [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] o [1&nbsp;%BANKRIGHT%]."""
        "Poe Dameron":
           display_name: """Poe Dameron"""
           text: """Dopo che hai effettuato un’azione, puoi spendere 1 %CHARGE% per effettuare 1 azione bianca, considerandola come se fosse rossa.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria&nbsp;%CANNON%, %TORPEDO% o 󲁐."""
        "Prince Xizor":
           display_name: """Principe Xizor"""
           text: """Mentre difendi, dopo il passo “Neutralizzare i Risultati”, 1 altra nave amica a gittata 0-1 e nell’arco di attacco può subire 1 danno %HIT% o %CRIT%. Se lo fa, annulla 1 risultato corrispondente.%LINEBREAK%<strong>Micropropulsori:</strong> Mentre effettui un avvitamento, devi usare il modello %BANKLEFT% o %BANKRIGHT% invece del modello %STRAIGHT%."""
        "Quinn Jast":
           display_name: """Quinn Jast"""
           text: """All’inizio della Fase di Ingaggio, puoi ottenere 1 segnalino disarmo per recuperare 1 %CHARGE% su una miglioria di cui sei dotato.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria %CANNON%, %TORPEDO% o %MISSILE%."""
        "Rear Admiral Chiraneau":
           display_name: """Contrammiraglio Chiraneau"""
           text: """Mentre effettui un attacco, se sei rinforzato e il difensore è nel %FULLFRONTARC% o %FULLREARARC% corrispondente al tuo segnalino rinforzo, puoi cambiare 1 tuo risultato %FOCUS% in 1 risultato %CRIT%."""
        "Rebel Scout":
           display_name: """Esploratore Ribelle"""
           text: """<i class = flavor_text>Progettate dalla Corellian Engineering Corporation per assomigliare a un uccello in volo, le navi della serie Hawk sono vascelli da trasporto esemplari. L’HWK-290, rapido e resistente, è spesso usato dagli agenti Ribelli come base operativa mobile.</i>"""
        "Red Squadron Expert":
           display_name: """Esperto della Squadriglia Rossa"""
           text: """<i class = flavor_text>Sebbene il grosso del Corpo degli Astrocaccia della Resistenza sia composto da giovani volontari della Nuova Repubblica, i suoi ranghi vengono rimpolpati dai veterani della Guerra Civile Galattica, determinati a finire ciò che iniziarono decenni or sono.</i>%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria&nbsp;%CANNON%, %TORPEDO% o %MISSILE%."""
        "Red Squadron Veteran":
           display_name: """Veterano della Squadriglia Rossa"""
           text: """<i class = flavor_text>La Squadriglia Rossa, concepita come squadriglia di astrocaccia d’elite, includeva alcuni dei migliori piloti dell’Alleanza Ribelle.</i>"""
        "Resistance Sympathizer":
           display_name: """Simpatizzante della Resistenza"""
           text: """<i class = flavor_text>Dopo avere assistito al Cataclisma di Hosnian, molti naviganti prestarono volontariamente aiuto alla Resistenza usando i mezzi di cui disponevano.</i>"""
        "Rexler Brath":
           display_name: """Rexler Brath"""
           text: """Dopo che hai effettuato un attacco che ha colpito, se stai schivando, esponi 1 carta danno del difensore.%LINEBREAK%<strong>A Tutta Velocità:</strong> Dopo aver eseguito completamente una manovra a velocità 3-5, puoi effettuare 1 azione %EVADE%."""
        "Rey":
           display_name: """Rey"""
           text: """Mentre difendi o effettui un attacco, se la nave nemica è nel tuo %FRONTARC%, puoi spendere 1 %FORCE% per cambiare 1 tuo risultato vuoto in 1 risultato %EVADE% o %HIT%."""
        "Rho Squadron Pilot":
           display_name: """Pilota dellaSquadriglia Rho """
           text: """<i class = flavor_text>I piloti scelti della Squadriglia Rho prestavano servizio in numerose campagne di terrore contro la Ribellione, usando sia la configurazione d’assalto Xg-1 che gli armamenti dell’arsenale Os-1 dello Star Wing Classe Alfa con effetti devastanti. </i>"""
        "Roark Garnet":
           display_name: """Roark Garnet"""
           text: """All’inizio della Fase di Ingaggio, puoi scegliere 1 nave nel tuo arco di fuoco. Se lo fai, quella nave ingaggia a iniziativa 7 invece che al suo valore di iniziativa standard in questa fase."""
        "Rogue Squadron Escort":
           display_name: """Scorta della Squadriglia Rogue"""
           text: """<i class = flavor_text>I piloti scelti della Squadriglia Rogue sono alcuni tra i migliori piloti di tutta la Ribellione.</i>%LINEBREAK% <strong>Scanner Sperimentali:</strong> Puoi acquisire bersagli oltre gittata 3. Non puoi acquisire bersagli a gittata 1."""
        "Saber Squadron Ace":
           display_name: """Asso dellaSquadriglia Saber"""
           text: """<i class = flavor_text>I piloti della Squadriglia Saber, guidati dal barone Soontir Fel, sono tra i migliori dell’Impero. I loro Intercettori TIE sono contrassegnati con una striscia rossa, conferita ai piloti che possono vantare almeno dieci abbattimenti confermati.</i>%LINEBREAK%<strong>Propulsori Automatici:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BARRELROLL% o %BOOST% rossa. """
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """Prima di attivarti, puoi effettuare 1 azione %BARRELROLL% o %BOOST%.%LINEBREAK%<strong>Carico e Pronto:</strong> Mentre sei attraccato, dopo che la tua nave madre ha effettuato un attacco primario %FRONTARC% o un attacco %TURRET%, può effettuare un attacco primario %REARARC% bonus."""
        "Sabine Wren (TIE Fighter)":
           display_name: """Sabine Wren (TIE Fighter)"""
           text: """Prima di attivarti, puoi effettuare 1 azione %BARRELROLL% o %BOOST%."""
        "Sabine Wren (Scum)":
           display_name: """Sabine Wren (Scum)"""
           text: """Mentre difendi, se l’attaccante è nel tuo %SINGLETURRETARC% a gittata 0-2, puoi aggiungere 1 risultato %FOCUS% ai risultati dei tuoi dadi."""
        "Sarco Plank":
           display_name: """Sarco Plank"""
           text: """Mentre difendi, puoi considerare il tuo valore di agilità come se fosse pari alla velocità della manovra che hai eseguito in questo round.%LINEBREAK%<strong>Apparato Traente da Rimorchiatore:</strong> <strong>Azione:</strong> Scegli 1 nave nel tuo %FRONTARC% a gittata 1. Quella nave ottiene 1 segnalino raggio traente, oppure 2 segnalini raggio traente se è nel tuo %BULLSEYEARC% a gittata 1."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """Mentre una nave amica danneggiata a gittata 0-3 effettua un attacco, può ripetere il tiro di 1 dado di attacco."""
        "Scarif Base Pilot":
           display_name: """Pilota della Base di Scarif"""
           text: """<i class = flavor_text>Il TIE Reaper era concepito per trasportare le truppe scelte nei punti più caldi delle battaglie ed era noto per aver trasportato i temibili assaltatori della morte del Direttore Krennic alla Battaglia di Scarif.</i>%LINEBREAK%<strong>Alettoni ad Assetto Variabile:</strong> Prima di rivelare il tuo indicatore, se non sei in tensione, devi eseguire una manovra bianca [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] o [1&nbsp;%BANKRIGHT%]."""
        "Scimitar Squadron Pilot":
           display_name: """Pilota dellaSquadriglia Scimitar """
           text: """<i class = flavor_text>Il TIE/sa è straordinariamente agile per essere un bombardiere ed è in grado di puntare con precisione un bersaglio anche mentre evita gli ingenti danni collaterali nell’area circostante.</i>%LINEBREAK%<strong>Bombardiere Agile:</strong> Se stai per sganciare un congegno usando un modello %STRAIGHT%, puoi invece usare un modello %BANKLEFT% o %BANKRIGHT% con la stessa velocità."""
        "Serissu":
           display_name: """Serissu"""
           text: """Mentre una nave amica a gittata 0-1 difende, può ripetere il tiro di 1 suo dado.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria %CANNON%, %TORPEDO% o %MISSILE%."""
        "Seventh Sister":
           display_name: """Settima Sorella"""
           text: """Mentre effettui un attacco primario, prima del passo “Neutralizzare i Risultati”, puoi spendere 2 %FORCE% per annullare 1 risultato&nbsp;%EVADE%."""
        "Seyn Marana":
           display_name: """Seyn Marana"""
           text: """Mentre effettui un attacco, puoi spendere 1 risultato %CRIT%. Se lo fai, infliggi 1 carta danno a faccia in giù al difensore, poi annulla i tuoi risultati rimanenti."""
        "Shadowport Hunter":
           display_name: """Cacciatore dei Porti Ombra"""
           text: """<i class = flavor_text>I consorzi criminali potenziano le letali abilità dei loro professionisti più fedeli con le migliori tecnologie disponibili, come il veloce e formidabile Inseguitore Classe Lancer.</i>"""
        "Shara Bey":
           display_name: """Shara Bey"""
           text: """Mentre difendi o effettui un attacco primario, puoi spendere 1 bersaglio acquisito che possiedi sulla nave nemica per aggiungere 1 risultato %FOCUS% ai risultati dei tuoi dadi."""
        "Sienar Specialist":
           display_name: """Specialista della Sienar"""
           text: """<i class = flavor_text>Durante lo sviluppo del TIE Aggressor, la Sienar Fleet Systems diede la precedenza alle sue prestazioni e alla sua versatilità, anziché alla cruda efficienza in costo.</i>"""
        "Sienar-Jaemus Engineer":
           display_name: """Ingegnere dellaSienar-Jaemus"""
           text: """<i class = flavor_text>Il TIE/vn Silencer, sviluppato dalla Sienar-Jaemus Fleet Systems come successore del rinomato TIE Defender, monta tecnologie all’avanguardia sviluppate presso le strutture di ricerca nascoste nelle Regioni Inesplorate.</i>%LINEBREAK%<strong>Propulsori Automatici:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BARRELROLL% o %BOOST% rossa."""
        "Sigma Squadron Ace":
           display_name: """Asso dellaSquadriglia Sigma"""
           text: """<i class = flavor_text>Il TIE Phantom, dotato di iperguida e di scudi, vanta anche cinque cannoni laser che gli forniscono una potenza di fuoco notevole per un caccia Imperiale.</i>%LINEBREAK%<strong>Apparato di Stygium:</strong> Dopo che ti sei deoccultato, puoi effettuare 1 azione %EVADE%. All’inizio della Fase Finale, puoi spendere 1 segnalino schivata per ottenere 1 segnalino occultamento."""
        "Skull Squadron Pilot":
           display_name: """Pilota dellaSquadriglia Skull"""
           text: """<i class = flavor_text>Gli assi della Squadriglia Skull prediligono un approccio aggressivo e usano la tecnologia ad ali ruotanti del loro vascello per acquisire un’agilità ineguagliata all’inseguimento delle loro prede.</i>%LINEBREAK%<strong>Carica Frontale di Concordia:</strong> Mentre difendi, se la gittata di attacco è 1 e sei nel %FRONTARC% dell’attaccante, cambia 1 risultato in 1 risultato %EVADE%."""
        "Sol Sixxa":
           display_name: """Sol Sixxa"""
           text: """Se stai per sganciare un congegno usando il modello [1&nbsp;%STRAIGHT%], puoi invece sganciarlo usando un qualsiasi altro modello a velocità 1."""
        "Soontir Fel":
           display_name: """Soontir Fel"""
           text: """All’inizio della Fase di Ingaggio, se ci sono navi nemiche nel tuo %BULLSEYEARC%, ottieni 1 segnalino concentrazione.%LINEBREAK%<strong>Propulsori Automatici:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BARRELROLL% o %BOOST% rossa. """
        "Spice Runner":
           display_name: """Mercantile Leggero HWK-290"""
           text: """<i class = flavor_text>Anche se la capienza della sua stiva è limitata rispetto agli altri mercantili leggeri, il piccolo e rapido HWK-290 è uno dei vascelli preferiti di quei contrabbandieri che si specializzano nel trasporto di merci preziose con discrezione.</i>"""
        "Starkiller Base Pilot":
           display_name: """Pilota dellaBase Starkiller"""
           text: """<i class = flavor_text>La Navetta di Comando Classe Upsilon funge da base operativa per molti ufficiali e agenti di alto rango del Primo Ordine. I potenti sensori e i sistemi di comunicazione di cui è dotata le consentono di orchestrare la campagna di terrore che il Primo Ordine conduce in tutta la galassia.</i>%LINEBREAK%<strong>Batteria Collegata:</strong> Mentre effettui un attacco %CANNON%, tira 1 dado aggiuntivo."""
        "Storm Squadron Ace":
           display_name: """Asso dellaSquadriglia Storm"""
           text: """<i class = flavor_text>Il TIE Advanced x1 fu prodotto in quantità limitate, ma in seguito gli ingegneri della Sienar incorporarono molte delle sue qualità migliori nel modello successivo: l’Intercettore TIE.</i>%LINEBREAK%<strong>Computer d’Attacco Avanzato:</strong> Mentre effettui un attacco primario contro un difensore che hai acquisito come bersaglio, tira 1 dado di attacco aggiuntivo e cambia 1 risultato %HIT% in 1 risultato %CRIT%."""
        "Sunny Bounder":
           display_name: """Sunny Bounder"""
           text: """Mentre difendi o effettui un attacco, dopo che hai tirato o ripetuto il tiro dei tuoi dadi, se ottieni lo stesso risultato su ogni tuo dado, puoi aggiungere 1 risultato corrispondente.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria %CANNON%, %TORPEDO% o %MISSILE%."""
        "TN-3465":
           display_name: """TN-3465"""
           text: """Mentre un’altra nave amica effettua un attacco, se sei a gittata 0-1 dal difensore, puoi subire 1 danno %CRIT% per cambiare 1 risultato dell’attaccante in 1 risultato %CRIT%."""
        "Tala Squadron Pilot":
           display_name: """Pilota dellaSquadriglia Tala"""
           text: """<i class = flavor_text>La serie AF4 è l’ultima di una lunga linea di modelli Headhunter. Questo caccia economico e relativamente resistente è uno dei veicoli preferiti dalle organizzazioni indipendenti come la Ribellione.</i>"""
        "Tallissan Lintra":
           display_name: """Tallissan Lintra"""
           text: """Mentre una nave nemica nel tuo %BULLSEYEARC% effettua un attacco, puoi spendere 1 %CHARGE%. Se lo fai, il difensore tira 1 dado aggiuntivo.%LINEBREAK%<strong>Girostabilizzatori Affinati:</strong> Puoi ruotare il tuo segnalatore %SINGLETURRETARC% solo sui tuoi %FRONTARC% o %REARARC%. Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BOOST% o %ROTATEARC% rossa."""
        "Talonbane Cobra":
           display_name: """Talonbane Cobra"""
           text: """Mentre difendi a gittata di attacco 3 o effettui un attacco a gittata di attacco 1, tira 1 dado aggiuntivo."""
        "Tansarii Point Veteran":
           display_name: """Veterano di Punta Tansarii"""
           text: """<i class = flavor_text>La sconfitta dell’asso del Sole Nero Talonbane Cobra per mano dei contrabbandieri di Car’das segnò un punto di svolta nella Battaglia della Stazione di Punta Tansarii. I sopravvissuti dello scontro sono ora rispettati in tutto il settore.</i>%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria %CANNON%, %TORPEDO% o %MISSILE%."""
        "Tel Trevura":
           display_name: """Tel Trevura"""
           text: """Se stai per essere distrutto, puoi spendere 1 %CHARGE%. Se lo fai, scarta invece tutte le tue carte danno, subisci 5 danni %HIT% e collocati in riserva. All’inizio della Fase di Pianificazione successiva, collocati entro gittata 1 dal tuo margine del giocatore."""
        "Temmin Wexley":
           display_name: """Temmin Wexley"""
           text: """Dopo che hai eseguito completamente una manovra a velocità 2-4, puoi effettuare 1 azione %BOOST%.%LINEBREAK%<strong>Innesto Armato:</strong> Puoi dotarti di 1 miglioria&nbsp;%CANNON%, %TORPEDO% o 󲁐."""
        "Tempest Squadron Pilot":
           display_name: """Pilota dellaSquadriglia Tempest"""
           text: """<i class = flavor_text>Il TIE Advanced x1 migliorò il popolare modello del TIE/ln con l’aggiunta di scudi, armamenti migliori, pannelli solari ricurvi e un’iperguida.</i>%LINEBREAK%<strong>Computer d’Attacco Avanzato:</strong> Mentre effettui un attacco primario contro un difensore che hai acquisito come bersaglio, tira 1 dado di attacco aggiuntivo e cambia 1 risultato %HIT% in 1 risultato %CRIT%."""
        "Ten Numb":
           display_name: """Ten Numb"""
           text: """Mentre difendi o effettui un attacco, puoi spendere 1 segnalino tensione per cambiare tutti i tuoi risultati %FOCUS% in risultati %EVADE% o %HIT%."""
        "Thane Kyrell":
           display_name: """Thane Kyrell"""
           text: """Mentre effettui un attacco, puoi spendere 1 risultato %FOCUS%, %HIT% o %CRIT% per guardare le carte danno a faccia in giù del difensore, sceglierne 1 ed esporla."""
        "Tomax Bren":
           display_name: """Tomax Bren"""
           text: """Dopo che hai effettuato un’azione %RELOAD%, puoi recuperare 1 %CHARGE% su 1 carta miglioria %TALENT% di cui sei dotato.%LINEBREAK%<strong>Bombardiere Agile:</strong> Se stai per sganciare un congegno usando un modello %STRAIGHT%, puoi invece usare un modello %BANKLEFT% o %BANKRIGHT% con la stessa velocità."""
        "Torani Kulda":
           display_name: """Torani Kulda"""
           text: """Dopo che hai effettuato un attacco, ogni nave nemica nel tuo %BULLSEYEARC% subisce 1 danno %HIT% a meno che non rimuova 1 segnalino verde.%LINEBREAK%<strong>Nessuna Via di Fuga:</strong> Mentre effettui un attacco, se il difensore è nel tuo %BULLSEYEARC%, i dadi di difesa non possono essere modificati usando segnalini verdi."""
        "Torkil Mux":
           display_name: """Torkil Mux"""
           text: """All’inizio della Fase di Ingaggio, puoi scegliere 1 nave nel tuo arco di fuoco. Se lo fai, quella nave ingaggia a iniziativa 0 invece che al suo valore di iniziativa standard in questa fase."""
        "Trandoshan Slaver":
           display_name: """Schiavista Trandoshano"""
           text: """<i class = flavor_text>Lo spazioso modello a tre ponti dell’YV-666 rende questo vascello uno dei preferiti dai cacciatori di taglie e dagli schiavisti, che spesso riconfigurano un intero ponte per adibirlo al trasporto dei prigionieri.</i>"""
        "Turr Phennir":
           display_name: """Turr Phennir"""
           text: """Dopo aver effettuato un attacco, puoi effettuare 1 azione %BARRELROLL% o %BOOST% anche se sei in tensione.%LINEBREAK%<strong>Propulsori Automatici:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BARRELROLL% o %BOOST% rossa. """
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """All’inizio della Fase di Ingaggio, se ci sono altre navi a gittata 0, tu e ogni altra nave a gittata 0 ottenete 1 segnalino raggio traente.%LINEBREAK%<strong>Apparato Traente da Rimorchiatore:</strong> <strong>Azione:</strong> Scegli 1 nave nel tuo %FRONTARC% a gittata 1. Quella nave ottiene 1 segnalino raggio traente, oppure 2 segnalini raggio traente se è nel tuo %BULLSEYEARC% a gittata 1."""
        "Valen Rudor":
           display_name: """Valen Rudor"""
           text: """Dopo che una nave amica a gittata 0-1 ha difeso (dopo che i danni sono stati risolti, se ce ne sono), puoi effettuare 1 azione."""
        "Ved Foslo":
           display_name: """Ved Foslo"""
           text: """Mentre esegui una manovra, puoi invece eseguire una manovra con la stessa traiettoria e difficoltà e con velocità superiore o inferiore di 1.%LINEBREAK%<strong>Computer d’Attacco Avanzato:</strong> Mentre effettui un attacco primario contro un difensore che hai acquisito come bersaglio, tira 1 dado di attacco aggiuntivo e cambia 1 risultato %HIT% in 1 risultato %CRIT%."""
        "Vennie":
           display_name: """Vennie"""
           text: """Mentre difendi, se l’attaccante è nel %SINGLETURRETARC% di una nave amica, puoi aggiungere 1 risultato %FOCUS% al tuo tiro."""
        "Viktor Hel":
           display_name: """Viktor Hel"""
           text: """Dopo che hai difeso, se non hai tirato esattamente 2 dadi di difesa, l’attaccante ottiene 1 segnalino tensione."""
        "Warden Squadron Pilot":
           display_name: """Pilota della Squadriglia Warden"""
           text: """<i class = flavor_text>L’Ala-K della Koensayr Manufacturing vantava un evoluto Motore ad Accelerazione Subluce (SLAM) e montava ben 18 innesti armati, un’attrezzatura che gli forniva velocità e potenza di fuoco ineguagliate.</i>"""
        "Wedge Antilles":
           display_name: """Wedge Antilles"""
           text: """Mentre effettui un attacco, il difensore tira 1 dado di difesa in meno."""
        "Wild Space Fringer":
           display_name: """Navigante dello Spazio Inesplorato"""
           text: """<i class = flavor_text>Anche se i normali mercantili leggeri YT-2400 sono dotati di spazio in abbondanza per la merce, quello spazio viene spesso dedicato all’installazione di armamenti modificati e motori sovradimensionati.</i>%LINEBREAK%<strong>Punto Cieco dei Sensori:</strong> Mentre effettui un attacco primario a gittata di attacco 0-1, non applicare il bonus di gittata 0-1 e tira 1 dado di attacco in meno."""
        "Wullffwarro":
           display_name: """Wullffwarro"""
           text: """Mentre effettui un attacco primario, se sei danneggiato, puoi tirare 1 dado di attacco aggiuntivo."""
        "Zari Bangel":
           display_name: """Zari Bangel"""
           text: """Dopo che hai eseguito parzialmente una manovra, non saltare il tuo passo “Effettuare l’Azione”.%LINEBREAK%<strong>Girostabilizzatori Affinati:</strong> Puoi ruotare il tuo segnalatore %SINGLETURRETARC% solo sui tuoi %FRONTARC% o %REARARC%. Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BOOST% o %ROTATEARC% rossa."""
        "Zealous Recruit":
           display_name: """Recluta Zelante"""
           text: """<i class = flavor_text>I piloti dei Caccia Fang mandaloriani devono imparare a padroneggiare la Carica Frontale di Concordia, una manovra che sfrutta l’esile profilo di attacco delle loro navi per lanciarsi in una micidiale carica frontale.</i>%LINEBREAK%<strong>Carica Frontale di Concordia:</strong> Mentre difendi, se la gittata di attacco è 1 e sei nel %FRONTARC% dell’attaccante, cambia 1 risultato in 1 risultato %EVADE%."""
        "Zertik Strom":
           display_name: """Zertik Strom"""
           text: """Durante la Fase Finale, puoi spendere 1 bersaglio acquisito che possiedi su una nave nemica per esporre 1 sua carta danno.%LINEBREAK%<strong>Computer d’Attacco Avanzato:</strong> Mentre effettui un attacco primario contro un difensore che hai acquisito come bersaglio, tira 1 dado di attacco aggiuntivo e cambia 1 risultato %HIT% in 1 risultato %CRIT%."""
        "Zeta Squadron Pilot":
           display_name: """Pilota dellaSquadriglia Zeta"""
           text: """<i class = flavor_text>Senza il fardello di un’ingombrante burocrazia galattica, le tecnologie sperimentate in origine per il programma dei TIE Advanced dell’Impero vengono ora prodotte in massa per gli astrocaccia del Primo Ordine. Di conseguenza, i piloti dei Caccia TIE/fo beneficiano di un tasso di sopravvivenza più elevato rispetto ai loro predecessori nell’Impero Galattico.</i>"""
        "Zeta Squadron Survivor":
           display_name: """Sopravvissuto della Squadriglia Zeta"""
           text: """<i class = flavor_text>Umiliati dal loro fallimento, i piloti sopravvissuti della Base Starkiller sono impazienti di riscattarsi dando la caccia alle forze della Resistenza.</i>%LINEBREAK%<strong>Torretta Arma Pesante:</strong> Puoi ruotare il tuo segnalatore %SINGLETURRETARC% soltanto sui tuoi %FRONTARC% o %REARARC%. <b>Devi</b> considerare il requisito %FRONTARC% delle migliorie %MISSILE% di cui sei dotato come se fosse %SINGLETURRETARC%."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """Mentre effettui un attacco primario, puoi tirare 1 dado di attacco aggiuntivo. Se lo fai, il difensore tira 1 dado di difesa aggiuntivo."""
        '"Avenger"':
           display_name: """“Avenger”"""
           text: """Dopo che un’altra nave amica è stata distrutta, puoi effettuare 1 azione, anche mentre sei in tensione.%LINEBREAK%<strong>Propulsori Automatici:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BARRELROLL% o %BOOST% rossa."""
        '"Backdraft"':
           display_name: """“Backdraft”"""
           text: """Mentre effettui un attacco primario %SINGLETURRETARC%, se il difensore è neltuo %REARARC%, tira 1 dado aggiuntivo.%LINEBREAK%<strong>Torretta Arma Pesante:</strong> Puoi ruotare il tuo segnalatore %SINGLETURRETARC% soltanto sui tuoi %FRONTARC% o %REARARC%. <b>Devi</b> considerare il requisito %FRONTARC% delle migliorie %MISSILE% di cui sei dotato come se fosse %SINGLETURRETARC%."""
        '"Blackout"':
           display_name: """“Blackout”"""
           text: """Mentre effettui un attacco, se l’attacco è ostruito da un ostacolo, il difensore tira 2 dadi di difesa in meno.%LINEBREAK%<strong>Propulsori Automatici:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BARRELROLL% o %BOOST% rossa."""
        '"Chopper"':
           display_name: """“Chopper”"""
           text: """All’inizio della Fase di Ingaggio, ogni nave nemica a gittata 0 ottiene 2 segnalini disturbo.%LINEBREAK%<strong>Cannone Caudale:</strong> Mentre possiedi una nave attraccata, possiedi un’arma primaria %REARARC% con un valore di attacco pari al valore di attacco dell’arma primaria %FRONTARC% della tua nave attraccata."""
        '"Countdown"':
           display_name: """“Countdown”"""
           text: """Mentre difendi, dopo il passo “Neutralizzare i Risultati”, se non sei in tensione, puoi subire 1 danno %HIT% e ottenere 1 segnalino tensione. Se lo fai, annulla tutti i risultati dei dadi.%LINEBREAK%<strong>Alettoni ad Assetto Variabile:</strong> Prima di rivelare il tuo indicatore, se non sei in tensione, devi eseguire una manovra bianca [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] o [1&nbsp;%BANKRIGHT%]."""
        '"Deathfire"':
           display_name: """“Deathfire”"""
           text: """Dopo che sei stato distrutto, puoi effettuare un attacco e sganciare o lanciare 1 congegno.%LINEBREAK%<strong>Bombardiere Agile:</strong> Se stai per sganciare un congegno usando un modello %STRAIGHT%, puoi invece usare un modello %BANKLEFT% o %BANKRIGHT% con la stessa velocità."""
        '"Deathrain"':
           display_name: """“Deathrain”"""
           text: """Dopo che hai sganciato o lanciato un congegno, puoi effettuare 1 azione."""
        '"Double Edge"':
           display_name: """“Double Edge”"""
           text: """Dopo che hai effettuato un attacco %TURRET% o %MISSILE% che ha mancato,puoi effettuare 1 attacco bonus usando un’arma diversa."""
        '"Duchess"':
           display_name: """“Duchess”"""
           text: """Puoi scegliere di non usare i tuoi <strong>Alettoni ad Assetto Variabile</strong>.%LINEBREAK%Puoi usare i tuoi <strong>Alettoni ad Assetto Variabile</strong> anche mentre sei in tensione.%LINEBREAK%<strong>Alettoni ad Assetto Variabile:</strong> Prima di rivelare il tuo indicatore, se non sei in tensione, devi eseguire una manovra bianca [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] o [1&nbsp;%BANKRIGHT%]."""
        '"Dutch" Vander':
           display_name: """“Dutch” Vander"""
           text: """Dopo che hai effettuato un’azione %LOCK%, puoi scegliere 1 nave amica a gittata 1-3. Quella nave può acquisire come bersaglio l’oggetto che hai acquisito come bersaglio, ignorando le restrizioni di gittata."""
        '"Echo"':
           display_name: """“Echo”"""
           text: """Mentre ti deocculti, devi usare il modello [2&nbsp;%BANKLEFT%] o [2&nbsp;%BANKRIGHT%] invece del modello [2&nbsp;%STRAIGHT%].%LINEBREAK%<strong>Apparato di Stygium:</strong> Dopo che ti sei deoccultato, puoi effettuare 1 azione %EVADE%. All’inizio della Fase Finale, puoi spendere 1 segnalino schivata per ottenere 1 segnalino occultamento."""
        '"Howlrunner"':
           display_name: """“Howlrunner”"""
           text: """Mentre una nave amica a gittata 0-1 effettua un attacco primario, quella nave può ripetere il tiro di 1 dado di attacco."""
        '"Leebo"':
           display_name: """“Leebo”"""
           text: """Dopo che hai difeso o effettuato un attacco, se hai speso segnalini calcolo, ottieni 1 segnalino calcolo.%LINEBREAK%<strong>Punto Cieco dei Sensori:</strong> Mentre effettui un attacco primario a gittata di attacco 0-1, non applicare il bonus di gittata 0-1 e tira 1 dado di attacco in meno."""
        '"Longshot"':
           display_name: """“Longshot”"""
           text: """Mentre effettui un attacco primario a gittata di attacco 3, tira 1 dado di attacco aggiuntivo"""
        '"Mauler" Mithel':
           display_name: """“Mauler” Mithel"""
           text: """Mentre effettui un attacco a gittata di attacco 1, tira 1 dado di attacco aggiuntivo."""
        '"Midnight"':
           display_name: """“Midnight”"""
           text: """Mentre difendi o effettui un attacco, se hai acquisito la nave nemica come bersaglio, i dadi di quella nave non possono essere modificati."""
        '"Muse"':
           display_name: """“Muse”"""
           text: """All’inizio della Fase di Impegno, puoi scegliere 1 nave amica a gittata 0-1. Se lo fai, quella nave rimuove 1 segnalino tensione."""
        '"Night Beast"':
           display_name: """“Night Beast”"""
           text: """Dopo che hai eseguito completamente una manovra blu, puoi effettuare 1 azione %FOCUS%."""
        '"Null"':
           display_name: """“Null”"""
           text: """Mentre non sei danneggiato, considera il tuo valore di iniziativa come se fosse pari a 7."""
        '"Pure Sabacc"':
           display_name: """“Pure Sabacc”"""
           text: """Mentre effettui un attacco, se possiedi 1 o meno carte danno, puoi tirare 1 dado di attacco aggiuntivo.%LINEBREAK%<strong>Alettoni ad Assetto Variabile:</strong> Prima di rivelare il tuo indicatore, se non sei in tensione, devi eseguire una manovra bianca [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] o [1&nbsp;%BANKRIGHT%]."""
        '"Quickdraw"':
           display_name: """“Quickdraw”"""
           text: """Dopo che hai perso uno scudo, puoi spendere 1 %CHARGE%. Se lo fai, puoi effettuare 1 attacco primario bonus.%LINEBREAK%<strong>Torretta Arma Pesante:</strong> Puoi ruotare il tuo segnalatore %SINGLETURRETARC% soltanto sui tuoi %FRONTARC% o %REARARC%. <b>Devi</b> considerare il requisito %FRONTARC% delle migliorie %MISSILE% di cui sei dotato come se fosse %SINGLETURRETARC%."""
        '"Recoil"':
           display_name: """“Recoil”"""
           text: """Mentre sei in tensione, puoi considerare le navi nemiche nel tuo %FRONTARC% a gittata 0-1 come se fossero nel tuo %BULLSEYEARC%.%LINEBREAK%<strong>Propulsori Automatici:</strong> Dopo che hai effettuato un’azione, puoi effettuare 1 azione %BARRELROLL% o %BOOST% rossa."""
        '"Redline"':
           display_name: """“Redline”"""
           text: """Puoi mantenere fino a 2 bersagli acquisiti.%LINEBREAK%Dopo che hai effettuato un’azione, puoi acquisire un bersaglio."""
        '"Scorch"':
           display_name: """“Scorch”"""
           text: """Mentre effettui un attacco primario, se non sei in tensione, puoi ottenere 1 segnalino tensione per tirare 1 dado di attacco aggiuntivo."""
        '"Scourge" Skutu':
           display_name: """“Scourge” Skutu"""
           text: """Mentre effettui un attacco contro un difensore nel tuo %BULLSEYEARC%, tira 1 dado di attacco aggiuntivo."""
        '"Static"':
           display_name: """“Static”"""
           text: """Mentre effettui un attacco primario, puoi spendere il tuo bersaglio acquisito sul difensore e 1 segnalino concentrazione per cambiare tutti i tuoi risultati in risultati %CRIT%."""
        '"Vizier"':
           display_name: """“Vizier”"""
           text: """Dopo che hai eseguito completamente una manovra a velocità 1 usando la tua capacità di nave <strong>Alettoni ad Assetto Variabile</strong>, puoi effettuare 1 azione %COORDINATE%. Se lo fai, salta il tuo passo “Effettuare l'Azione”.%LINEBREAK%<strong>Alettoni ad Assetto Variabile:</strong> Prima di rivelare il tuo indicatore, se non sei in tensione, devi eseguire una manovra bianca [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] o [1&nbsp;%BANKRIGHT%]."""
        '"Wampa"':
           display_name: """“Wampa”"""
           text: """Mentre effettui un attacco, puoi spendere 1&nbsp;%CHARGE% per tirare 1 dado di attacco aggiuntivo.%LINEBREAK%Dopo aver difeso, perdi 1&nbsp;%CHARGE%."""
        '"Whisper"':
           display_name: """“Whisper”"""
           text: """Dopo che hai effettuato un attacco che ha colpito, ottieni 1 segnalino schivata.%LINEBREAK%<strong>Apparato di Stygium:</strong> Dopo che ti sei deoccultato, puoi effettuare 1 azione %EVADE%. All’inizio della Fase Finale, puoi spendere 1 segnalino schivata per ottenere 1 segnalino occultamento."""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """Mentre difendi, i risultati %CRIT% sono neutralizzati prima dei risultati %HIT%.%LINEBREAK%<strong>Carico e Pronto:</strong> Mentre sei attraccato, dopo che la tua nave madre ha effettuato un attacco primario %FRONTARC% o un attacco %TURRET%, può effettuare un attacco primario %REARARC% bonus."""
        '"Zeb" Orrelios (Sheathipede)':
           display_name: """“Zeb” Orrelios (Sheathipede)"""
           text: """Mentre difendi, i risultati %CRIT% sono neutralizzati prima dei risultati %HIT%.%LINEBREAK%<strong>Navetta di Comunicazione:</strong> Mentre sei attraccato, la tua nave madre ottiene %COORDINATE%. Prima che la tua nave madre si attivi, può effettuare 1 azione %COORDINATE%."""
        '"Zeb" Orrelios (TIE Fighter)':
           display_name: """“Zeb” Orrelios (TIE Fighter)"""
           text: """Mentre difendi, i risultati %CRIT% sono neutralizzati prima dei risultati %HIT%."""



    upgrade_translations =
        "0-0-0":
           display_name: """0-0-0"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE MEDarth Vader</i>%LINEBREAK%All’inizio della Fase di Ingaggio, puoi scegliere 1 nave nemica a gittata 0-1. Se lo fai, ottieni 1 segnalino calcolo a meno che quella nave non scelga di ottenere 1 segnalino tensione."""
        "4-LOM":
           display_name: """4-LOM"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un attacco, dopo aver tirato i dadi di attacco, puoi dichiarare un tipo di segnalino verde. Se lo fai, ottieni 2 segnalini ioni e, durante questo attacco, il difensore non può spendere segnalini del tipo dichiarato."""
        "Andrasta":
           display_name: """Andrasta"""
           text: """<i>CHANGE ME%RELOAD%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Aggiungi 1 slot %DEVICE%."""
        "Black One":
           display_name: """Nero Uno"""
           text: """<i>CHANGE ME%SLAM%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai effettuato un’azione %SLAM%, perdi 1 %CHARGE%. Poi puoi ottenere 1 segnalino ioni per rimuovere 1 segnalino disarmo.%LINEBREAK%Se la tua %CHARGE% è inattiva, non puoi effettuare l’azione %SLAM%."""
        "Dauntless":
           display_name: """Dauntless"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai eseguito parzialmente una manovra, puoi effettuare 1 azione bianca, considerandola come se fosse rossa."""
        "Ghost":
           display_name: """Ghost"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Puoi far attraccare 1 Navetta di Attacco o 1 Navetta Classe Sheathipede.%LINEBREAK%Le tue navi attraccate possono essere schierate soltanto dalle tue guide posteriori."""
        "Havoc":
           display_name: """Havoc"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Rimuovi 1 slot %CREW%. Aggiungi 1 slot %SENSOR% e 1 slot %ASTROMECH%."""
        "Hound's Tooth":
           display_name: """Hound’s Tooth"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Puoi far attraccare 1 Headhunter Z-95-AF4."""
        "IG-2000":
           display_name: """IG-2000"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Possiedi la capacità del pilota di ogni altra nave amica con la miglioria <strong>IG-2000</strong>."""
        "Marauder":
           display_name: """Marauder"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un attacco primario %REARARC%, puoi ripetere il tiro di 1 dado di attacco.%LINEBREAK%Aggiungi 1 slot %GUNNER%."""
        "Millennium Falcon":
           display_name: """Millennium Falcon"""
           text: """<i>CHANGE ME%EVADE%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre difendi, se stai schivando, puoi ripetere il tiro di 1 dado di difesa."""
        "Mist Hunter":
           display_name: """Mist Hunter"""
           text: """<i>CHANGE ME%BARRELROLL%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Aggiungi 1 slot %CANNON%."""
        "Moldy Crow":
           display_name: """Moldy Crow"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%Ottieni un’arma primaria %FRONTARC% con un valore pari a 3.%LINEBREAK%Durante la Fase Finale, non rimuovere fino a 2 segnalini concentrazione.%LINEBREAK%"""
        "Outrider":
           display_name: """Outrider"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un attacco ostruito, il difensore tira 1 dado di difesa in meno.%LINEBREAK%Dopo che hai eseguito completamente una manovra, se ti sei mosso attraverso un ostacolo o ti sei sovrapposto ad esso, puoi rimuovere 1 tuo segnalino rosso o arancione."""
        "Phantom":
           display_name: """Phantom"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Puoi attraccare a gittata 0-1."""
        "Punishing One":
           display_name: """Punishing One"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un attacco primario, se il difensore è nel tuo %FRONTARC%, tira 1 dado di attacco aggiuntivo.%LINEBREAK%Rimuovi 1 slot %CREW%. Aggiungi 1 slot %ASTROMECH%."""
        "ST-321":
           display_name: """ST-321"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai effettuato un’azione %COORDINATE%, puoi scegliere 1 nave nemica a gittata 0-3 dalla nave che hai coordinato. Se lo fai, acquisisci quella nave nemica come bersaglio, ignorando le restrizioni di gittata."""
        "Shadow Caster":
           display_name: """Shadow Caster"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai effettuato un attacco che ha colpito, se il difensore è in entrambi i tuoi %SINGLETURRETARC% e %FRONTARC%, quel difensore ottiene 1 segnalino raggio traente."""
        "Slave I":
           display_name: """Slave I"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai rivelato una manovra svolta (%TURNLEFT% o %TURNRIGHT%) o curva (%BANKLEFT% o %BANKRIGHT%), puoi selezionare la manovra con la stessa velocità e traiettoria ma direzione opposta sul tuo indicatore. %LINEBREAK%Aggiungi 1 slot %TORPEDO%."""
        "Virago":
           display_name: """Virago"""
           text: """Durante la Fase Finale, puoi spendere 1 %CHARGE% per effettuare 1 azione %BOOST% rossa.%LINEBREAK%Aggiungi 1 slot %MODIFICATION%."""
        "Ablative Plating":
           display_name: """Blindatura Ablativa"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%Prima che tu stia per subire danni da un ostacolo o da una bomba amica che detona, puoi spendere 1&nbsp;%CHARGE%. Se lo fai, previeni 1 danno."""
        "Admiral Sloane":
           display_name: """Ammiraglio Sloane"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che un’altra nave amica a gittata 0-3 ha difeso, se è distrutta, l’attaccante ottiene 2 segnalini tensione.%LINEBREAK%Mentre una nave amica a gittata 0-3 effettua un attacco contro una nave in tensione, può ripetere il tiro di 1 dado di attacco.%LINEBREAK%"""
        "Adv. Proton Torpedoes":
           display_name: """Siluri Protonici Avanzati"""
           text: """<strong>Attacco (</strong>%LOCK%<strong>):</strong> Spendi 1&nbsp;%CHARGE%. Cambia 1 risultato %HIT% in 1 risultato %CRIT%."""
        "Advanced Optics":
           display_name: """Sensori Ottici Avanzati"""
           text: """Mentre effettui un attacco, puoi spendere 1 segnalino concentrazione per cambiare 1 tuo risultato vuoto in 1 risultato %HIT%."""
        "Advanced SLAM":
           display_name: """SLAM Avanzato"""
           text: """<i>CHANGE ME %SLAM%</i>%LINEBREAK%Dopo che hai effettuato un’azione %SLAM%, se hai eseguito completamente la manovra, puoi effettuare 1 azione bianca nella tua barra delle azioni considerandola come se fosse rossa."""
        "Advanced Sensors":
           display_name: """Sensori Avanzati"""
           text: """Dopo che hai rivelato il tuo indicatore, puoi effettuare 1 azione.%LINEBREAK%Se lo fai, non puoi effettuare altre azioni durante la tua attivazione."""
        "Afterburners":
           display_name: """Postbruciatori"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai eseguito completamente una manovra a velocità 3-5, puoi spendere 1 %CHARGE% per effettuare 1 azione %BOOST%, anche mentre sei in tensione."""
        "Agent Kallus":
           display_name: """Agente Kallus"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparazione:</strong> Assegna la condizione <strong>Braccato</strong> a 1 nave nemica.%LINEBREAK%Mentre effettui un attacco contro la nave con la condizione <strong>Braccato</strong>, puoi cambiare 1 tuo risultato %FOCUS% in 1 risultato %HIT%."""
        "Agile Gunner":
           display_name: """Artigliere Agile"""
           text: """Durante la Fase Finale, puoi ruotare il tuo segnalatore %SINGLETURRETARC%."""
        "BB Astromech":
           display_name: """Droide Astromeccanico BB"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Prima di eseguire una manovra blu, puoi spendere 1 %CHARGE% per effettuare 1 azione %BARRELROLL%."""
        "BB-8":
           display_name: """BB-8"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Prima di eseguire una manovra blu, puoi spendere 1 %CHARGE% per effettuare 1 azione&nbsp;%BARRELROLL% o&nbsp;%BOOST%."""
        "BT-1":
           display_name: """BT-1"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE MEDarth Vader</i>%LINEBREAK%Mentre effettui un attacco, puoi cambiare 1 risultato %HIT% in 1 risultato %CRIT% per ogni segnalino tensione posseduto dal difensore."""
        "Barrage Rockets":
           display_name: """Razzi di Sbarramento"""
           text: """<strong>Attacco (</strong>%FOCUS%<strong>):</strong> Spendi 1&nbsp;%CHARGE%. Se il difensore è nel tuo %BULLSEYEARC%, puoi spendere 1 o più %CHARGE% per ripetere il tiro di un pari ammontare di dadi di attacco."""
        "Baze Malbus":
           display_name: """Baze Malbus"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un’azione %FOCUS%, puoi considerarla come se fosse rossa. Se lo fai, ottieni 1 segnalino concentrazione aggiuntivo per ogni nave nemica a gittata 0-1, fino a un massimo di 2."""
        "Biohexacrypt Codes":
           display_name: """Codici Bioesacriptati"""
           text: """<i>CHANGE ME %LOCK% CHANGE ME <r>%LOCK%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre coordini o disturbi, se hai acquisito una nave come bersaglio, puoi spendere quel bersaglio acquisito per scegliere quella nave, ignorando le restrizioni di gittata."""
        "Bistan":
           display_name: """Bistan"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai effettuato un attacco primario, se sei concentrato, puoi effettuare un attacco %SINGLETURRETARC% bonus contro una nave che non hai già attaccato in questo round."""
        "Boba Fett":
           display_name: """Boba Fett"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparazione:</strong> Parti in riserva.%LINEBREAK%Alla fine della preparazione, collocati a gittata 0 da un ostacolo e oltre gittata 3 da qualsiasi nave nemica."""
        "Bomblet Generator":
           display_name: """Generatore di Bombe a Frammentazione"""
           text: """<strong>Bomba</strong>%LINEBREAK%Durante la Fase di Sistema, puoi spendere 1&nbsp;%CHARGE% per sganciare 1 bomba a frammentazione usando il modello [1&nbsp;%STRAIGHT%].%LINEBREAK%All’inizio della Fase di Attivazione, puoi spendere 1 scudo per recuperare 2 %CHARGE%."""
        "Bossk":
           display_name: """Bossk"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai effettuato un attacco primario che ha mancato, se non sei in tensione, devi ricevere 1 segnalino tensione per effettuare 1 attacco primario bonus contro lo stesso bersaglio."""
        "C-3PO":
           display_name: """C-3PO"""
           text: """<i>CHANGE ME%CALCULATE%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Prima di tirare i dadi di difesa, puoi spendere 1 segnalino calcolo per dichiarare a voce alta un numero pari o superiore a 1. Se lo fai e ottieni esattamente quel numero di risultati %EVADE%, aggiungi 1 risultato&nbsp;%EVADE%.%LINEBREAK%Dopo che hai effettuato un’azione %CALCULATE%, ottieni 1 segnalino calcolo."""
        "C-3PO (Resistance)":
           display_name: """C-3PO (Resistance)"""
           text: """<i>CHANGE ME%CALCULATE% ,  <r>%COORDINATE%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre coordini, puoi scegliere le navi amiche oltre gittata 2 che possiedono %CALCULATE% nella loro barra delle azioni.%LINEBREAK%Dopo che hai effettuato un’azione %CALCULATE% o %COORDINATE%, ottieni 1 segnalino calcolo."""
        "Cad Bane":
           display_name: """Cad Bane"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai sganciato o lanciato un congegno, puoi effettuare 1 azione %BOOST% rossa."""
        "Captain Phasma":
           display_name: """Capitano Phasma"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Alla fine della Fase di Impegno, ogni nave nemica a gittata 0-1 che non sia in tensione ottiene 1 segnalino tensione."""
        "Cassian Andor":
           display_name: """Cassian Andor"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante la Fase di Sistema, puoi scegliere 1 nave nemica a gittata 1-2 e dichiarare a voce alta una traiettoria e una velocità, poi guarda l’indicatore di quella nave. Se la traiettoria e la velocità della nave scelta corrispondono a quelle dichiarate, puoi selezionare un’altra manovra sul tuo indicatore."""
        "Chewbacca":
           display_name: """Chewbacca"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%All’inizio della Fase di Ingaggio, puoi spendere 2 %CHARGE% per riparare 1 carta danno a faccia in su."""
        "Chewbacca (Scum)":
           display_name: """Chewbacca (Scum)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%All’inizio della Fase Finale, puoi spendere 1 segnalino concentrazione per riparare 1 tua carta danno a faccia in su."""
        "Chewbacca (Resistance)":
           display_name: """Chewbacca (Resistance)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparazione:</strong> Perdi 1&nbsp;%CHARGE%.%LINEBREAK%Dopo che a una nave amica a gittata 0-3 è stata inflitta 1 carta danno, recupera 1&nbsp;%CHARGE%.%LINEBREAK%Mentre effettui un attacco, puoi spendere 2&nbsp;%CHARGE% per cambiare 1 risultato %FOCUS% in 1 risultato&nbsp;%CRIT%."""
        "Ciena Ree":
           display_name: """Ciena Ree"""
           text: """<i>CHANGE ME %COORDINATE% CHANGE ME <r>%COORDINATE%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai effettuato un’azione %COORDINATE%, se la nave che hai coordinato ha effettuato un’azione %BARRELROLL% o %BOOST%, quella nave può ottenere 1 segnalino tensione per ruotare di 90°."""
        "Cikatro Vizago":
           display_name: """Cikatro Vizago"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante la Fase Finale, puoi scegliere 2 migliorie %ILLICIT% di cui siano dotate navi amiche a gittata 0-1. Se lo fai, puoi scambiare quelle migliorie.%LINEBREAK%<strong>Fine della Partita:</strong> Rimetti tutte le migliorie %ILLICIT% sulle loro navi originali."""
        "Cloaking Device":
           display_name: """Dispositivo Occultante"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%<strong>Azione:</strong> Spendi 1&nbsp;%CHARGE% per effettuare 1 azione %CLOAK%. %LINEBREAK%All’inizio della Fase di Pianificazione, tira 1 dado di attacco. Con un risultato %FOCUS%, deoccultati o scarta il tuo segnalino occultamento."""
        "Cluster Missiles":
           display_name: """Missili a Grappolo"""
           text: """<strong>Attacco (</strong>%LOCK%<strong>):</strong> Spendi 1&nbsp;%CHARGE%. Dopo questo attacco, puoi effettuare questo attacco come attacco bonus contro un bersaglio diverso a gittata 0-1 dal difensore, ignorando il requisito %LOCK%."""
        "Collision Detector":
           display_name: """Rilevatore di Collisione"""
           text: """Mentre effettui un’accelerazione o un avvitamento, puoi muoverti attraverso gli ostacoli e sovrapporti ad essi.%LINEBREAK%Dopo che ti sei mosso attraverso un ostacolo o ti sei sovrapposto ad esso, puoi spendere 1&nbsp;%CHARGE% per ignorarne gli effetti fino alla fine del round."""
        "Composure":
           display_name: """Compostezza"""
           text: """<i>CHANGE ME <r>%FOCUS%</r> CHANGE ME %FOCUS%</i>%LINEBREAK%Dopo che hai fallito un’azione, se non possiedi segnalini verdi, puoi effettuare 1 azione %FOCUS%."""
        "Concussion Missiles":
           display_name: """Missili a Concussione"""
           text: """<strong>Attacco (</strong>%LOCK%<strong>):</strong> Spendi 1&nbsp;%CHARGE%. Dopo che questo attacco ha colpito, ogni nave a gittata 0-1 dal difensore espone 1 sua carta danno."""
        "Conner Nets":
           display_name: """Reti Conner"""
           text: """<strong>Mina</strong>%LINEBREAK%Durante la Fase di Sistema, puoi spendere 1&nbsp;%CHARGE% per sganciare 1 rete conner usando il modello [1&nbsp;%STRAIGHT%].%LINEBREAK%Le %CHARGE% di questa carta non possono essere recuperate."""
        "Contraband Cybernetics":
           display_name: """Cibernetica di Contrabbando"""
           text: """Prima di attivarti, puoi spendere 1 %CHARGE%. Se lo fai, fino alla fine del round puoi effettuare azioni ed eseguire manovre rosse anche mentre sei in tensione."""
        "Crack Shot":
           display_name: """Colpo da Maestro"""
           text: """Mentre effettui un attacco primario, prima del passo “Neutralizzare i Risultati”, se il difensore è nel tuo %BULLSEYEARC%,puoi spendere 1&nbsp;%CHARGE% per annullare 1 risultato&nbsp;%EVADE%."""
        "Daredevil":
           display_name: """Temerario"""
           text: """<i>CHANGE ME %BOOST%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un’azione %BOOST% bianca, puoi considerarla come se fosse rossa per usare invece il modello [1&nbsp;%TURNLEFT%] o [1&nbsp;%TURNRIGHT%]."""
        "Darth Vader":
           display_name: """Darth Vader"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%All’inizio della Fase di Ingaggio, puoi scegliere 1 nave nel tuo arco di fuoco a gittata 0-2 e spendere 1 %FORCE%. Se lo fai, quella nave subisce 1 danno %HIT% a meno che non rimuova 1 segnalino verde."""
        "Deadman's Switch":
           display_name: """Dispositivo dell’Uomo Morto"""
           text: """Dopo che sei stato distrutto, ogni altra nave a gittata 0-1 subisce 1 danno&nbsp;%HIT%."""
        "Death Troopers":
           display_name: """Assaltatori della Morte"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante la Fase di Attivazione, le navi nemiche a gittata 0-1 non possono rimuovere i segnalini tensione."""
        "Debris Gambit":
           display_name: """Azzardo dei Detriti"""
           text: """<i>CHANGE ME<r>%EVADE%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%Mentre effettui un’azione %EVADE% rossa, se ci sono ostacoli a gittata 0-1, considera invece l’azione come se fosse bianca."""
        "Dengar":
           display_name: """Dengar"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai difeso, se l’attaccante è nel tuo arco di fuoco, puoi spendere 1 %CHARGE%. Se lo fai, tira 1 dado di attacco a meno che l’attaccante non rimuova 1 segnalino verde. Con un risultato %HIT% o %CRIT%, l’attaccante subisce 1 danno&nbsp;%HIT%."""
        "Director Krennic":
           display_name: """Direttore Krennic"""
           text: """<i>CHANGE ME%LOCK%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparazione:</strong> Prima del passo “Collocare le Forze”, assegna la condizione <strong>Prototipo Ottimizzato</strong> a un’altra nave amica."""
        "Dorsal Turret":
           display_name: """Torretta Dorsale"""
           text: """<i>CHANGE ME%ROTATEARC%</i>%LINEBREAK%<strong>Attacco</strong>"""
        "Electronic Baffle":
           display_name: """Dispersore Elettronico"""
           text: """Durante la Fase Finale, puoi subire 1 danno %HIT% per rimuovere 1 segnalino rosso."""
        "Elusive":
           display_name: """Elusivo"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%Mentre difendi, puoi spendere 1&nbsp;%CHARGE% per ripetere il tiro di 1 dado di difesa.%LINEBREAK%Dopo che hai eseguito completamente una manovra rossa, recupera 1&nbsp;%CHARGE%."""
        "Emperor Palpatine":
           display_name: """Imperatore Palpatine"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre un’altra nave amica difende o effettua un attacco, puoi spendere 1 %FORCE% per modificare 1 suo dado come se quella nave avesse speso 1&nbsp;%FORCE%."""
        "Engine Upgrade":
           display_name: """Miglioria ai Motori"""
           text: """CHANGE ME%LINEBREAK%<i>CHANGE ME%BOOST%</i>%LINEBREAK%<i>CHANGE ME <r>%BOOST%</r></i>%LINEBREAK%<i class = flavor_text>Le più grandi forzemilitari come l’Impero Galattico fanno uso di motori standardizzati, ma i singoli piloti e le organizzazioni spesso sostituiscono i giunti di potenza, aggiungono propulsori o fanno uso di combustibile ad alto rendimento per sfruttare al massimo la potenza dei loro motori. </i>"""
        "Expert Handling":
           display_name: """Acrobazia Esperta"""
           text: """CHANGE ME%LINEBREAK%<i>CHANGE ME%BARRELROLL%</i>%LINEBREAK%<i>CHANGE ME <r>%BARRELROLL%</r></i>%LINEBREAK%<i class = flavor_text>Sebbene i caccia pesanti possano spesso essere obbligati a effettuare un avvitamento, i piloti più esperti sanno come farlo senza compromettere l’integrità strutturale della nave o senza restare esposti agli attacchi nemici.</i>"""
        "Ezra Bridger":
           display_name: """Ezra Bridger"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai effettuato un attacco primario, puoi spendere 1 %FORCE% per effettuare un attacco %SINGLETURRETARC% bonus da un %SINGLETURRETARC% da cui non hai ancora attaccato in questo round. Se lo fai e sei in tensione, puoi ripetere il tiro di 1 dado di attacco."""
        "Fanatical":
           display_name: """Fanatico"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un attacco primario, se non possiedi scudi attivi, puoi cambiare 1 risultato %FOCUS% in 1 risultato %HIT%."""
        "Fearless":
           display_name: """Senza Paura"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un attacco primario %FRONTARC%, se la gittata di attacco è 1 e sei nel %FRONTARC% del difensore, puoi cambiare 1 tuo risultato in 1 risultato %HIT%."""
        "Feedback Array":
           display_name: """Apparato di Feedback"""
           text: """Prima di ingaggiare, puoi ottenere 1 segnalino ioni e 1 segnalino disarmo. Se lo fai, ogni nave a gittata 0 subisce 1 danno&nbsp;%HIT%."""
        "Ferrosphere Paint":
           display_name: """Verniciatura in Ferrosfera"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che una nave nemica ti ha acquisito come bersaglio, se non sei nel suo %BULLSEYEARC%, quella nave ottiene 1 segnalino tensione."""
        "Fifth Brother":
           display_name: """Quinto Fratello"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un attacco, puoi spendere 1 %FORCE% per cambiare 1 tuo risultato %FOCUS% in 1 risultato %CRIT%."""
        "Finn":
           display_name: """Finn"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre difendi o effettui un attacco primario, se la nave nemica è nel tuo %FRONTARC%, puoi aggiungere 1 risultato vuoto al tuo tiro (è possibile ripetere il tiro di questo dado o modificarlo in altri modi)."""
        "Fire-Control System":
           display_name: """Sistema di Mira Assistita"""
           text: """Mentre effettui un attacco, se hai acquisito il difensore come bersaglio, puoi ripetere il tiro di 1 dado di attacco. Se lo fai, non puoi spendere il tuo bersaglio acquisito durante questo attacco."""
        "Freelance Slicer":
           display_name: """Slicer Indipendente"""
           text: """Mentre difendi, prima che i dadi di attacco siano tirati, puoi spendere 1 bersaglio acquisito che possiedi sull’attaccante per tirare 1 dado di attacco. Se lo fai, l’attaccante ottiene 1 segnalino disturbo. Poi, con un risultato %HIT% o %CRIT%, ottieni 1 segnalino disturbo."""
        'GNK "Gonk" Droid':
           display_name: """Droide GNK “Gonk” """
           text: """<strong>Preparazione:</strong> Perdi 1&nbsp;%CHARGE%.%LINEBREAK%<strong>Azione:</strong> Recupera 1&nbsp;%CHARGE%.%LINEBREAK%<strong>Azione:</strong> Spendi 1&nbsp;%CHARGE% per recuperare 1 scudo."""
        "General Hux":
           display_name: """Generale Hux"""
           text: """<i>CHANGE ME %COORDINATE% CHANGE ME <r>%COORDINATE%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un’azione %COORDINATE% bianca, puoi considerarla come se fosse rossa. Se lo fai, puoi coordinare fino a 2 navi aggiuntive dello stesso tipo e ogni nave da te coordinata deve effettuare la stessa azione, considerandola come se fosse rossa."""
        "Grand Inquisitor":
           display_name: """Grande Inquisitore"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che una nave nemica a gittata 0-2 ha rivelato il suo indicatore, puoi spendere 1 %FORCE% per effettuare 1 azione bianca nella tua barra delle azioni, considerandola come se fosse rossa."""
        "Grand Moff Tarkin":
           display_name: """Gran Moff Tarkin"""
           text: """<i>CHANGE ME %LOCK% CHANGE ME <r>%LOCK%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante la Fase di Sistema, puoi spendere 2 %CHARGE%. Se lo fai, ogni nave amica può acquisire come bersaglio una nave che hai acquisito come bersaglio."""
        "Greedo":
           display_name: """Greedo"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un attacco, puoi spendere 1 %CHARGE% per cambiare 1 risultato %HIT% in 1 risultato %CRIT%.%LINEBREAK%Mentre difendi, se la tua %CHARGE% è attiva, l’attaccante può cambiare 1 risultato %HIT%  in 1 risultato %CRIT%."""
        "Han Solo":
           display_name: """Han Solo"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante la Fase di Ingaggio, a iniziativa 7, puoi effettuare un attacco %SINGLETURRETARC%. Non puoi attaccare di nuovo da quel %SINGLETURRETARC% in questo round."""
        "Han Solo (Scum)":
           display_name: """Han Solo (Scum)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Prima di ingaggiare, puoi effettuare 1 azione %FOCUS% rossa."""
        "Han Solo (Resistance)":
           display_name: """Han Solo (Resistance)"""
           text: """<i>CHANGE ME<r>%EVADE%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai effettuato un’azione %EVADE%, ottieni un ammontare di segnalini schivata aggiuntivi pari al numero di navi nemiche a gittata 0-1."""
        "Hate":
           display_name: """Odio"""
           text: """Dopo che hai subito 1 o più danni, recupera un pari ammontare di %FORCE%."""
        "Heavy Laser Cannon":
           display_name: """Cannone Laser Pesante"""
           text: """<strong>Attacco:</strong> Dopo il passo “Modificare i Dadi di Attacco”, cambia tutti i risultati %CRIT% in risultati %HIT%."""
        "Heightened Perception":
           display_name: """Percezione Ampliata"""
           text: """All’inizio della Fase di Ingaggio, puoi spendere 1 %FORCE%. Se lo fai, ingaggia a iniziativa 7 (invece che al tuo valore di iniziativa standard) per questa fase."""
        "Hera Syndulla":
           display_name: """Hera Syndulla"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Puoi eseguire le manovre rosse anche mentre sei in tensione. Dopo che hai eseguito completamente una manovra rossa, se possiedi 3 o più segnalini tensione, rimuovi 1 segnalino tensione e subisci 1 danno&nbsp;%HIT%."""
        "Heroic":
           display_name: """Eroico"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre difendi o effettui un attacco, se possiedi 2 o più risultati e solo risultati vuoto, puoi ripetere il tiro di un qualsiasi numero di tuoi dadi."""
        "Homing Missiles":
           display_name: """Missili Traccianti"""
           text: """<strong>Attacco (</strong>%LOCK%<strong>):</strong> Spendi 1&nbsp;%CHARGE%. Dopo che hai dichiarato il difensore, questi può scegliere di subire 1 danno %HIT%. Se lo fa, salta i passi “Dadi di Attacco” e “Dadi di Difesa” e considera l’attacco come se avesse colpito."""
        "Hotshot Gunner":
           display_name: """Artigliere Spericolato"""
           text: """Mentre effettui un attacco %SINGLETURRETARC%, dopo il passo “Modificare i Dadi di Difesa”, il difensore rimuove 1 segnalino concentrazione o calcolo."""
        "Hull Upgrade":
           display_name: """Miglioria allo Scafo"""
           text: """CHANGE ME%LINEBREAK%<i class = flavor_text>Per chi non può permettersi un generatore di scudo potenziato, saldare ulteriori strati di piastre sullo scafo di una nave può fungere da alternativa adeguata.</i>"""
        "Hyperspace Tracking Data":
           display_name: """Tracciatore di Dati Iperspaziali"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparazione:</strong> Prima del passo “Collocare le Forze”, puoi scegliere un numero tra 0 e 6. Durante la preparazione, considera il tuo valore di iniziativa come se fosse pari al valore scelto.%LINEBREAK%Dopo la preparazione, assegna 1 segnalino concentrazione o schivata a ogni nave amica a gittata 0-2."""
        "IG-88D":
           display_name: """IG-88D"""
           text: """<i>CHANGE ME%CALCULATE%</i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Possiedi la capacità del pilota di ogni altra nave amica con la miglioria <strong>IG-2000</strong>.%LINEBREAK%Dopo che hai effettuato un’azione %CALCULATE%, ottieni 1 segnalino calcolo."""
        "ISB Slicer":
           display_name: """Slicer dell’ISB"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante la Fase Finale, le navi nemiche a gittata 1-2 non possono rimuovere i segnalini disturbo."""
        "Inertial Dampeners":
           display_name: """Ammortizzatori Inerziali"""
           text: """Prima che tu stia per eseguire una manovra, puoi spendere 1 scudo. Se lo fai, esegui una manovra [0&nbsp;%STOP%] bianca invece della manovra che hai rivelato, poi ottieni 1 segnalino tensione."""
        "Informant":
           display_name: """Informatore"""
           text: """<strong>Preparazione:</strong> Dopo il passo “Collocare le Forze”, scegli 1 nave nemica e assegnale la condizione <strong>Dispositivo di Spionaggio</strong>."""
        "Instinctive Aim":
           display_name: """Mira Istintiva"""
           text: """Mentre effettui un attacco speciale, puoi spendere 1 %FORCE% per ignorare i requisiti %FOCUS% o %LOCK%."""
        "Integrated S-Foils":
           display_name: """Alettoni-S Integrati"""
           text: """<strong>Chiusi:</strong><i>CHANGE ME%BARRELROLL% ,  %FOCUS%&nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i>&nbsp;<r>%BARRELROLL%</r></i>%LINEBREAK%Mentre effettui un attacco primario, se il difensore non è nel tuo %BULLSEYEARC%, tira 1 dado di attacco in meno.%LINEBREAK%Prima di attivarti, puoi girare questa carta.%LINEBREAK%<strong>Aperti:</strong>Prima di attivarti, puoi girare questa carta."""
        "Intimidation":
           display_name: """Intimidazione"""
           text: """Mentre una nave nemica a gittata 0 difende, tira 1 dado di difesa in meno."""
        "Ion Cannon":
           display_name: """Cannone a Ioni"""
           text: """<strong>Attacco:</strong> Se questo attacco colpisce, spendi 1 risultato %HIT% o %CRIT% per far subire 1 danno %HIT% al difensore. Tutti i risultati %HIT%/%CRIT% rimanenti infliggono segnalini ioni invece di danni."""
        "Ion Cannon Turret":
           display_name: """Torretta Cannone a Ioni"""
           text: """<i>CHANGE ME%ROTATEARC%</i>%LINEBREAK%<strong>Attacco:</strong> Se questo attacco colpisce, spendi 1 risultato %HIT% o %CRIT% per far subire 1 danno %HIT% al difensore. Tutti i risultati %HIT%/%CRIT% rimanenti infliggono segnalini ioni invece di danni."""
        "Ion Missiles":
           display_name: """Missili Ionici"""
           text: """<strong>Attacco (</strong>%LOCK%<strong>):</strong> Spendi 1&nbsp;%CHARGE%.Se questo attacco colpisce, spendi 1 risultato %HIT% o %CRIT% per far subire 1 danno %HIT% al difensore. Tutti i risultati %HIT%/%CRIT% rimanenti infliggono segnalini ioni invece di danni."""
        "Ion Torpedoes":
           display_name: """Siluri Ionici"""
           text: """<strong>Attacco (</strong>%LOCK%<strong>):</strong> Spendi 1&nbsp;%CHARGE%. Se questo attacco colpisce, spendi 1 risultato %HIT% o %CRIT% per far subire 1 danno %HIT% al difensore. Tutti i risultati %HIT%/%CRIT% rimanenti infliggono segnalini ioni invece di danni."""
        "Jabba the Hutt":
           display_name: """Jabba the Hutt"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante la Fase Finale, puoi scegliere 1 nave amica a gittata 0-2 e spendere 1 %CHARGE%. Se lo fai, quella nave recupera 1 %CHARGE% su una miglioria %ILLICIT% di cui è dotata."""
        "Jamming Beam":
           display_name: """Raggio Disturbatore"""
           text: """<strong>Attacco:</strong> Se questo attacco colpisce, tutti i risultati %HIT%/%CRIT% infliggono segnalini disturbo invece di danni."""
        "Juke":
           display_name: """Galvanizzato"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%Mentre effettui un attacco, se stai schivando, puoi cambiare 1 risultato %EVADE% del difensore in 1 risultato %FOCUS%."""
        "Jyn Erso":
           display_name: """Jyn Erso"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Se una nave amica a gittata 0-3 sta per ottenere un segnalino concentrazione, può invece ottenere 1 segnalino schivata."""
        "Kanan Jarrus":
           display_name: """Kanan Jarrus"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che una nave amica a gittata 0-2 ha eseguito completamente una manovra bianca, puoi spendere 1 %FORCE% per rimuovere 1 segnalino tensione da quella nave."""
        "Ketsu Onyo":
           display_name: """Ketsu Onyo"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%All’inizio della Fase Finale, puoi scegliere 1 nave nemica nel tuo arco di fuoco a gittata 0-2. Se lo fai, quella nave non rimuove i suoi segnalini raggio traente."""
        "Kylo Ren":
           display_name: """Kylo Ren"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Azione:</strong> Scegli 1 nave nemica a gittata 1-3. Se lo fai, spendi 1 %FORCE% per assegnare la condizione <strong>Ti Mostrerò il Lato Oscuro</strong> a quella nave."""
        "L3-37":
           display_name: """L3-37"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparazione:</strong> Dotati di questa miglioria con questo lato a faccia in su.%LINEBREAK%Mentre difendi, puoi girare questa carta. Se lo fai, l’attaccante deve ripetere il tiro di tutti i dadi di attacco.%LINEBREAK%Se non possiedi scudi attivi, riduci la difficoltà delle tue manovre curva (%BANKLEFT% e %BANKRIGHT%)."""
        "Lando Calrissian":
           display_name: """Lando Calrissian"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Azione:</strong> Tira 2 dadi di difesa. Per ogni risultato %FOCUS%, ottieni 1 segnalino concentrazione. Per ogni risultato %EVADE%, ottieni 1 segnalino schivata. Se ottieni 2 risultati vuoto, ottieni 1 segnalino concentrazione o schivata a scelta del giocatore avversario."""
        "Lando Calrissian (Scum)":
           display_name: """Lando Calrissian (Scum)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai tirato i dadi, puoi spendere 1 segnalino verde per ripetere il tiro di un massimo di 2 tuoi dadi."""
        "Lando's Millennium Falcon":
           display_name: """Millennium Falcon di Lando"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Puoi far attraccare 1 Facet. %LINEBREAK%Mentre possiedi una Facet attraccata, puoi spendere i suoi scudi come se fossero sulla tua carta nave.%LINEBREAK%Mentre effettui un attacco primario contro una nave in tensione, tira 1 dado di attacco aggiuntivo."""
        "Latts Razzi":
           display_name: """Latts Razzi"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre difendi, se l’attaccante è in tensione, puoi rimuovere 1 segnalino tensione dall’attaccante per cambiare 1 tuo risultato vuoto/%FOCUS% in 1 risultato %EVADE%."""
        "Leia Organa":
           display_name: """Leia Organa"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%All’inizio della Fase di Attivazione, puoi spendere 3 %CHARGE%. Se lo fai, ogni nave amica riduce la difficoltà delle sue manovre rosse durante questa fase."""
        "Lone Wolf":
           display_name: """Lupo Solitario"""
           text: """Mentre difendi o effettui un attacco, se non ci sono altre navi amiche a gittata 0-2, puoi spendere 1&nbsp;%CHARGE% per ripetere il tiro di 1 tuo dado."""
        "Luke Skywalker":
           display_name: """Luke Skywalker"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%All’inizio della Fase di Ingaggio, puoi spendere 1 %FORCE% per ruotare il tuo segnalatore %SINGLETURRETARC%."""
        "M9-G8":
           display_name: """M9-G8"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre una nave che hai acquisito come bersaglio effettua un attacco, puoi scegliere 1 dado di attacco. Se lo fai, l’attaccante ripete il tiro di quel dado."""
        "Magva Yarro":
           display_name: """Magva Yarro"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai difeso, se l’attacco ha colpito, puoi acquisire l’attaccante come bersaglio."""
        "Marksmanship":
           display_name: """Mira Esperta"""
           text: """Mentre effettui un attacco, se il difensore è nel tuo %BULLSEYEARC%, puoi cambiare 1 risultato %HIT% in 1 risultato %CRIT%."""
        "Maul":
           display_name: """Maul"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE MEEzra Bridger CHANGE ME CHANGE MEEzra Bridger (Sheathipede) CHANGE ME CHANGE MEEzra Bridger (TIE Fighter)</i>%LINEBREAK%Dopo che hai subito danni, puoi ottenere 1 segnalino tensione per recuperare 1 %FORCE%.%LINEBREAK%Puoi dotarti di migliorie “Lato Oscuro”."""
        "Minister Tua":
           display_name: """Ministro Tua"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%All’inizio della Fase di Ingaggio, se sei danneggiato, puoi effettuare 1 azione %REINFORCE% rossa."""
        "Moff Jerjerrod":
           display_name: """Moff Jerjerrod"""
           text: """<i>CHANGE ME %COORDINATE% CHANGE ME <r>%COORDINATE%</r></i>%LINEBREAK%<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante la Fase di Sistema, puoi spendere 2 %CHARGE%. Se lo fai, scegli il modello [1&nbsp;%BANKLEFT%], [1&nbsp;%STRAIGHT%] o [1&nbsp;%BANKRIGHT%]. Ogni nave amica può effettuare 1 azione %BOOST% rossa usando quel modello."""
        "Munitions Failsafe":
           display_name: """Sicura per Munizioni"""
           text: """Mentre effettui un attacco %TORPEDO% o %MISSILE%, dopo aver tirato i dadi di attacco, puoi annullare tutti i risultati dei dadi per recuperare 1&nbsp;%CHARGE% spesa come costo dell’attacco."""
        "Nien Nunb":
           display_name: """Nien Nunb"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Riduci la difficoltà delle tue manovre curva (%BANKLEFT% e %BANKRIGHT%)."""
        "Novice Technician":
           display_name: """Tecnico Novizio"""
           text: """Alla fine del round, puoi tirare 1 dado di attacco per riparare 1 carta danno a faccia in su. Poi, con un risultato %HIT%, esponi 1 carta danno."""
        "Os-1 Arsenal Loadout":
           display_name: """Arsenale Armamenti Os-1"""
           text: """Mentre possiedi esattamente 1 segnalino disarmo, puoi comunque effettuare attacchi %TORPEDO% e %MISSILE% contro i bersagli che hai acquisito come bersaglio. Se lo fai, non puoi spendere il tuo bersaglio acquisito durante l’attacco.%LINEBREAK%Aggiungi 1 slot %TORPEDO% e 1 slot %MISSILE%."""
        "Outmaneuver":
           display_name: """Manovrabilità Superiore"""
           text: """Mentre effettui un attacco %FRONTARC%, se non sei nell’arco di fuoco del difensore, il difensore tira 1 dado di difesa in meno."""
        "Paige Tico":
           display_name: """Paige Tico"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai effettuato un attacco primario, puoi sganciare 1 bomba o ruotare il tuo %SINGLETURRETARC%.%LINEBREAK%Dopo che sei stato distrutto, puoi sganciare 1 bomba."""
        "Pattern Analyzer":
           display_name: """Matrice di Analisi"""
           text: """Mentre esegui completamente una manovra rossa, prima del passo “Controllare la Difficoltà”,puoi effettuare 1 azione."""
        "Perceptive Copilot":
           display_name: """Copilota Percettivo"""
           text: """Dopo che hai effettuato un’azione %FOCUS%, ottieni 1 segnalino concentrazione."""
        "Petty Officer Thanisson":
           display_name: """Sergente Thanisson"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante la Fase di Attivazione o di Impegno, dopo che una nave nemica nel tuo %FRONTARC% a gittata 0-1 ha ottenuto un segnalino rosso o arancione, se non sei in tensione, puoi ottenere 1 segnalino tensione. Se lo fai, quella nave ottiene 1 segnalino aggiuntivo dello stesso tipo."""
        "Pivot Wing":
           display_name: """Ali Orientabili"""
           text: """<strong>Chiuse:</strong>Mentre difendi, tira 1 dado di difesa in meno.%LINEBREAK%Dopo che hai eseguito una manovra [0 %STOP%], puoi ruotare la tua nave di 90° o 180°.%LINEBREAK%Prima di attivarti, puoi girare questa carta.%LINEBREAK%<strong>Aperte:</strong>Prima di attivarti, puoigirare questa carta."""
        "Predator":
           display_name: """Predatore"""
           text: """Mentre effettui un attacco primario, se il difensore è nel tuo %BULLSEYEARC%, puoi ripetere il tiro di 1 dado di attacco."""
        "Predictive Shot":
           display_name: """Colpo Precognitivo"""
           text: """Dopo che hai dichiarato un attacco, se il difensore è nel tuo %BULLSEYEARC%, puoi spendere 1 %FORCE%. Se lo fai, durante il passo “Tirare i Dadi di Difesa”, il difensore non può tirare più dadi di difesa del numero di tuoi risultati %HIT%/%CRIT%."""
        "Primed Thrusters":
           display_name: """Propulsori Ottimizzati"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre possiedi 2 o meno segnalini tensione, puoi effettuare le azioni %BARRELROLL% e %BOOST% anche mentre sei in tensione."""
        "Proton Bombs":
           display_name: """Bombe Protoniche"""
           text: """<strong>Bomba</strong>%LINEBREAK%Durante la Fase di Sistema, puoi spendere 1&nbsp;%CHARGE% per sganciare 1 bomba protonica usando il modello [1&nbsp;%STRAIGHT%]."""
        "Proton Rockets":
           display_name: """Razzi Protonici"""
           text: """<strong>Attacco (</strong>%FOCUS%<strong>):</strong> Spendi 1&nbsp;%CHARGE%."""
        "Proton Torpedoes":
           display_name: """Siluri Protonici"""
           text: """<strong>Attacco (</strong>%LOCK%<strong>):</strong> Spendi 1 %CHARGE%. Cambia 1 risultato %HIT% in 1 risultato %CRIT%."""
        "Proximity Mines":
           display_name: """Mine di Prossimità"""
           text: """<strong>Mina</strong>%LINEBREAK%Durante la Fase di Sistema, puoi spendere 1&nbsp;%CHARGE% per sganciare 1 mina di prossimità usando il modello [1&nbsp;%STRAIGHT%].%LINEBREAK%Le %CHARGE% di questa carta non possono essere recuperate."""
        "Qi'ra":
           display_name: """Qi’ra"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre ti muovi ed effettui attacchi, ignora gli ostacoli che hai acquisito come bersaglio."""
        "R2 Astromech":
           display_name: """Droide Astromeccanico R2"""
           text: """Dopo che hai rivelato il tuo indicatore, puoi spendere 1 %CHARGE% e ottenere 1 segnalino disarmo per recuperare 1 scudo."""
        "R2-D2 (Crew)":
           display_name: """R2-D2 (Crew)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante la Fase Finale, se sei danneggiato e non possiedi scudi attivi, puoi tirare 1 dado di attacco per recuperare 1 scudo. Con un risultato %HIT%, esponi 1 tua carta danno."""
        "R2-D2":
           display_name: """R2-D2"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai rivelato il tuo indicatore, puoi spendere 1 %CHARGE% e ottenere 1 segnalino disarmo per recuperare 1 scudo."""
        "R2-HA":
           display_name: """R2-HA"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre difendi, puoi spendere il tuo bersaglio acquisito sull’attaccante per ripetere il tiro di un qualsiasi numero di tuoi dadi di difesa."""
        "R3 Astromech":
           display_name: """Droide Astromeccanico R3"""
           text: """Puoi mantenere fino a 2 bersagli acquisiti, ciascuno su un oggetto diverso.%LINEBREAK%Dopo che hai effettuato un’azione %LOCK%, puoi acquisire un bersaglio.%LINEBREAK%"""
        "R4 Astromech":
           display_name: """Droide Astromeccanico R4"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Riduci la difficoltà delle tue manovre base a velocità 1-2 (%TURNLEFT%, %BANKLEFT%, %STRAIGHT%, %BANKRIGHT%, %TURNRIGHT%)."""
        "R5 Astromech":
           display_name: """Droide Astromeccanico R5"""
           text: """<strong>Azione:</strong> Spendi 1&nbsp;%CHARGE% per riparare 1 carta danno a faccia in giù.%LINEBREAK%<strong>Azione:</strong> Ripara 1 carta danno <strong>Nave</strong> a faccia in su."""
        "R5-D8":
           display_name: """R5-D8"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Azione:</strong> Spendi 1&nbsp;%CHARGE% per riparare 1 carta danno a faccia in giù.%LINEBREAK%<strong>Azione:</strong> Ripara 1 carta danno <strong>Nave</strong> a faccia in su."""
        "R5-P8":
           display_name: """R5-P8"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un attacco contro un difensore nel tuo %FRONTARC%, puoi spendere 1 %CHARGE% per ripetere il tiro di 1 dado di attacco. Se il risultato del tiro ripetuto è %CRIT%, subisci 1 danno&nbsp;%CRIT%."""
        "R5-TK":
           display_name: """R5-TK"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Puoi effettuare attacchi contro le navi amiche."""
        "R5-X3":
           display_name: """R5-X3"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Prima di attivarti o di impegnare, puoi spendere 1 %CHARGE% per ignorare gli ostacoli fino alla fine di questa fase."""
        "Rey":
           display_name: """Rey"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre difendi o effettui un attacco, se la nave nemica è nel tuo %SINGLETURRETARC%, puoi spendere 1 %FORCE% per cambiare 1 tuo risultato vuoto in 1 risultato %EVADE% o %HIT%."""
        "Rey's Millennium Falcon":
           display_name: """Millennium Falcon di Rey"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Se possiedi 2 o meno segnalini tensione, puoi eseguire le manovre loop di Segnor [%SLOOPLEFT% o %SLOOPRIGHT%] rosse ed effettuare le azioni %BOOST% e&nbsp;%ROTATEARC% anche mentre sei in tensione."""
        "Rigged Cargo Chute":
           display_name: """Rampa di Carico Attrezzata"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%<strong>Azione:</strong> Spendi 1 %CHARGE%. Sgancia 1 carico sparso usando il modello [1&nbsp;%STRAIGHT%]."""
        "Rose Tico":
           display_name: """Rose Tico"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre difendi o effettui un attacco, puoi spendere 1 tuo risultato per acquisire la nave nemica come bersaglio."""
        "Ruthless":
           display_name: """Senza Pietà"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un attacco, puoi scegliere 1 altra nave amica a gittata 0-1 dal difensore. Se lo fai, quella nave subisce 1 danno %HIT% e puoi cambiare 1 tuo risultato in 1 risultato %HIT%."""
        "Sabine Wren":
           display_name: """Sabine Wren"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparazione:</strong> Colloca 1 segnalino ioni, 1 segnalino disturbo, 1 segnalino tensione e 1 segnalino raggio traente su questa carta.%LINEBREAK%Dopo che una nave ha subito l’effetto di una bomba amica, puoi rimuovere 1 segnalino ioni, disturbo, tensione o raggio traente da questa carta. Se lo fai, quella nave ottiene 1 segnalino corrispondente."""
        "Saturation Salvo":
           display_name: """Salva di Saturazione"""
           text: """<i>CHANGE ME %RELOAD% CHANGE ME <r>%RELOAD%</r></i>%LINEBREAK%Mentre effettui un attacco %TORPEDO% o %MISSILE%, puoi spendere 1&nbsp;%CHARGE% da quella miglioria. Se lo fai, scegli 2 dadi di difesa. Il difensore deve ripetere il tiro di quei dadi."""
        "Saw Gerrera":
           display_name: """Saw Gerrera"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un attacco, puoi subire 1 danno %HIT% per cambiare tutti i tuoi risultati %FOCUS% in risultati %CRIT%."""
        "Seasoned Navigator":
           display_name: """Navigatore Esperto"""
           text: """Dopo che hai rivelato il tuo indicatore, puoi selezionare un’altra manovra non rossa della stessa velocità sul tuo indicatore. Mentre esegui quella manovra, aumenta la sua difficoltà."""
        "Seismic Charges":
           display_name: """Cariche Sismiche"""
           text: """<strong>Bomba</strong>%LINEBREAK%Durante la Fase di Sistema, puoi spendere 1&nbsp;%CHARGE% per sganciare 1 carica sismica usando il modello [1&nbsp;%STRAIGHT%]."""
        "Selfless":
           display_name: """Altruista"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre un’altra nave amica a gittata 0-1 difende, prima del passo “Neutralizzare i Risultati”, se sei nell’arco di attacco, puoi subire 1 danno %CRIT%per annullare 1 risultato %CRIT%."""
        "Sense":
           display_name: """Percezione della Forza"""
           text: """Durante la Fase di Sistema, puoi scegliere 1 nave a gittata 0-1 e guardare il suo indicatore. Se spendi 1 %FORCE%, puoi invece scegliere 1 nave a gittata 0-3."""
        "Servomotor S-Foils":
           display_name: """Alettoni-S a Servomotore"""
           text: """<strong>Chiusi:</strong><i>CHANGE ME%BOOST% ,  %FOCUS%&nbsp;<i class="xwing-miniatures-font xwing-miniatures-font-linked red"></i>&nbsp;<r>%BOOST%</r></i>%LINEBREAK%Mentre effettui un attacco primario, tira 1 dado di attacco in meno.%LINEBREAK%Prima di attivarti, puoi girare questa carta.%LINEBREAK%<strong>Aperti:</strong>Prima di attivarti, puoi girare questa carta."""
        "Seventh Sister":
           display_name: """Settima Sorella"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Se una nave nemica a gittata 0-1 sta per ottenere un segnalino tensione, puoi spendere 1 %FORCE% per farle invece ottenere 1 segnalino disturbo o raggio traente."""
        "Shield Upgrade":
           display_name: """Miglioria agli Scudi"""
           text: """CHANGE ME%LINEBREAK%<i class = flavor_text>Gli scudi deflettori costituiscono una linea di difesa essenziale per quasi tutte le astronavi al di fuori dei caccia più leggeri. Anche se potenziare la capacità di scudi di una nave può essere costoso, soltanto i piloti più arroganti o più avventati ignorano la validità di questo tipo di investimento.</i>"""
        "Skilled Bombardier":
           display_name: """Bombardiere Abile"""
           text: """Se stai per sganciare o lanciare un congegno, puoi usare un modello della stessa traiettoria con una velocità superiore o inferiore di 1."""
        "Special Forces Gunner":
           display_name: """Artigliere delle Forze Speciali"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un attacco primario %FRONTARC%, se il tuo %SINGLETURRETARC% è nel tuo %FRONTARC%, puoi tirare 1 dado di attacco aggiuntivo.%LINEBREAK%Dopo che hai effettuato un attacco primario %FRONTARC%, se il tuo %SINGLETURRETARC% è nel tuo %REARARC%, puoi effettuare 1 attacco primario %SINGLETURRETARC% bonus."""
        "Squad Leader":
           display_name: """Caposquadra"""
           text: """<i>CHANGE ME<r>%COORDINATE%</r></i>%LINEBREAK%Mentre coordini, la nave che scegli può effettuare un’azione solo se quell’azione si trova anche nella tua barra delle azioni."""
        "Static Discharge Vanes":
           display_name: """Antenne di Scarica Elettrostatica"""
           text: """Se stai per ottenere un segnalinoioni o disturbo, puoi scegliere 1 nave a gittata 0-1. Se lo fai, ottieni 1 segnalino tensione e trasferisci 1 segnalino ioni o disturbo su quella nave."""
        "Stealth Device":
           display_name: """Dispositivo Schermante"""
           text: """CHANGE ME%LINEBREAK%Mentre difendi, se la tua %CHARGE% è attiva, tira 1 dado di difesa aggiuntivo. %LINEBREAK%Dopo che hai subito danni, perdi 1&nbsp;%CHARGE%."""
        "Supernatural Reflexes":
           display_name: """Riflessi Soprannaturali"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Prima di attivarti, puoi spendere 1 %FORCE% per effettuare 1 azione %BARRELROLL% o %BOOST%. Poi, se lo fai e non possiedi l’azione effettuata nella barra delle azioni,subisci 1 danno&nbsp;%HIT%."""
        "Supreme Leader Snoke":
           display_name: """Leader Supremo Snoke"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante la Fase di Sistema, puoi scegliere un qualsiasi numero di navi nemiche oltre gittata 1. Se lo fai, spendi un pari ammontare di %FORCE% per girare a faccia in su l’indicatore di ogni nave scelta."""
        "Swarm Tactics":
           display_name: """Tattica dello Sciame"""
           text: """All’inizio della Fase di Ingaggio, puoi scegliere 1 nave amica a gittata 1. Se lo fai, quella nave considera la sua iniziativa pari alla tua fino alla fine del round."""
        "Tactical Officer":
           display_name: """Ufficiale Tattico"""
           text: """<i>CHANGE ME%COORDINATE%</i>%LINEBREAK%<i>CHANGE ME <r>%COORDINATE%</r></i>%LINEBREAK%<i class = flavor_text>Nel caos di una battaglia tra astrocaccia, un singolo ordine può fare la differenza tra una vittoria e un massacro.</i>"""
        "Tactical Scrambler":
           display_name: """Distorsore Tattico"""
           text: """<i>CHANGE MECHANGE ME CHANGE ME CHANGE ME</i>%LINEBREAK%Mentre ostruisci l’attacco di una nave nemica, il difensore tira 1 dado di difesa aggiuntivo."""
        "Targeting Synchronizer":
           display_name: """Sincronizzatore d’Attacco"""
           text: """<i>CHANGE ME %LOCK% CHANGE ME <r>%LOCK%</r></i>%LINEBREAK%Mentre una nave amica a gittata 1-2 effettua un attacco contro un bersaglio che hai acquisito come bersaglio, quella nave ignora il requisito di attacco&nbsp;%LOCK%."""
        "Tobias Beckett":
           display_name: """Tobias Beckett"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Preparazione:</strong> Dopo il passo “Collocare le Forze”, puoi scegliere 1 ostacolo nell’area di gioco. Se lo fai, collocalo in un qualsiasi punto dell’area di gioco oltre gittata 2 da ogni nave e margine del tabellone e oltre gittata 1 dagli altri ostacoli."""
        "Tractor Beam":
           display_name: """Raggio Traente"""
           text: """<strong>Attacco:</strong> Se questo attacco colpisce, tutti i risultati %HIT%/%CRIT% infliggono segnalini raggio traente invece di danni."""
        "Trajectory Simulator":
           display_name: """Simulatore di Traiettoria"""
           text: """Durante la Fase di Sistema, se stai per sganciare o lanciare una bomba, puoi invece lanciarla usando il modello [5&nbsp;%STRAIGHT%]."""
        "Trick Shot":
           display_name: """Tiro a Sorpresa"""
           text: """Mentre effettui un attacco ostruito da un ostacolo, tira 1 dado di attacco aggiuntivo."""
        "Unkar Plutt":
           display_name: """Unkar Plutt"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai eseguito parzialmente una manovra, puoi subire 1 danno %HIT% per effettuare 1 azione bianca."""
        "Veteran Tail Gunner":
           display_name: """Artigliere di Torretta Veterano"""
           text: """Dopo che hai effettuato un attacco primario, puoi effettuare un attacco %SINGLETURRETARC% bonus usando un %SINGLETURRETARC% da cui non hai ancora attaccato in questo round."""
        "Veteran Turret Gunner":
           display_name: """Artigliere di Torretta Veterano"""
           text: """<i>CHANGE ME <r>%ROTATEARC%</r> CHANGE ME %ROTATEARC%</i>%LINEBREAK%Dopo che hai effettuato un attacco primario, puoi effettuare un attacco %SINGLETURRETARC% bonus usando un %SINGLETURRETARC% da cui non hai ancora attaccato in questo round."""
        "Xg-1 Assault Configuration":
           display_name: """Configurazione d’Assalto Xg-1"""
           text: """Mentre possiedi esattamente 1 segnalino disarmo, puoi comunque effettuare attacchi %CANNON%.%LINEBREAK%Mentre effettui un attacco %CANNON% e sei disarmato, tira un massimo di 3 dadi di attacco.%LINEBREAK%Aggiungi 1 slot %CANNON%."""
        "Zuckuss":
           display_name: """Zuckuss"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Mentre effettui un attacco, se non sei in tensione, puoi scegliere 1 dado di difesa e ottenere 1 segnalino tensione. Se lo fai, il difensore deve ripetere il tiro di quel dado."""
        '"Chopper" (Crew)':
           display_name: """“Chopper” (Crew)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Durante il passo “Effettuare l’Azione”, puoi effettuare 1 azione anche mentre sei in tensione. Dopo che hai effettuato un’azione mentre sei in tensione, subisci 1 danno %HIT% a meno che tu non esponga 1 tua carta danno."""
        '"Chopper" (Astromech)':
           display_name: """“Chopper” (Astromech)"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%<strong>Azione:</strong> Spendi 1 %CHARGE% non ricorsivada un’altra miglioria di cui sei dotato per recuperare 1 scudo.%LINEBREAK%<strong>Azione:</strong> Spendi 2 scudi per recuperare 1 %CHARGE% non ricorsiva su una miglioria di cui sei dotato."""
        '"Genius"':
           display_name: """“Genius”"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Dopo che hai eseguito completamente una manovra, se non hai sganciato o lanciato un congegno in questo round, puoi sganciare 1 bomba."""
        '"Zeb" Orrelios':
           display_name: """“Zeb” Orrelios"""
           text: """<i>CHANGE MECHANGE ME</i>%LINEBREAK%Puoi effettuare attacchi primari a gittata 0. Le navi nemiche a gittata 0 possono effettuare attacchi primari contro di te."""
 
    condition_translations = {}

    exportObj.setupTranslationCardData pilot_translations, upgrade_translations, condition_translations
