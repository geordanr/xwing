# This must be loaded before any of the card language modules!
exportObj = exports ? this

# Returns an independent copy of the data which can be modified by translation modules.
exportObj.ruleLoaders ?= {}
exportObj.ruleLoaders.Deutsch = () ->
    # console.log("German rules file active")
    exportObj.rulesEntries = ->
        # console.log("German rules file accessed")
        version:
            number: "1.4.5"
            date: "06/09/23"
        glossary:
            "ABSETZEN":
                name: "Absetzen"
                text: """Siehe Andocken."""
            "ABWERFEN":
                name: "Abwerfen"
                text: """Siehe Gerät."""
            "AKTIONEN":
                name: "Aktionen"
                text: """Schiffe können Aktionen durchführen. Diese beschreiben thematisch die Handlungen des Piloten, der beispielsweise defensiv fliegt oder seine Position leicht verändert. Wenn ein Schiff zum Durchführen einer Aktion angewiesen wird, kann es eine <strong>Standardaktion</strong> (angegeben in der Aktionsleiste seiner Schiffskarte) oder eine Fähigkeit mit dem Stichwort „<strong>Aktion:</strong>“ auf einer seiner Zustandskarten-, Schadenskarten, Schiffskarten- oder Aufwertungskarten durchführen. <br>• Solange ein Schiff gestresst ist, kann es keine Aktionen durchführen. <br>• Manche Aufwertungskarten haben eine Aktionsleiste, in der 1 oder mehrere Aktionen stehen. Diese werden zur Aktionsleiste der Schiffskarte hinzugefügt und gehören somit zu den Standardaktionen, die das Schiff durchführen kann. <br>• Manche Schiffs- und Aufwertungskarten haben eine gekoppelte Aktionsleiste. Diese ermöglicht das Durchführen einer gekoppelte Aktion. <br>• Manche Aktionen können scheitern. <br>• Aktionen haben drei Schwierigkeiten: weiß, rot oder violett. Weiß ist die niedrigste Schwierigkeit gefolgt von rot und dann violett. <br>◊ Als Kosten für den Versuch, eine rote Aktion durchzuführen, erhält ein Schiff 1 Stressmarker. <br>◊ Als Kosten für den Versuch, eine violette Aktion durchzuführen, muss ein Schiff 1 %FORCE% ausgeben. <br>◊ Wird ein Schiff zum Durchführen einer Aktion angewiesen, ist diese Aktion immer weiß, sofern nichts anderes angegeben ist. <br>◊ Falls zwei oder mehr Effekte die Standardfarbe einer Aktion verändern würden („Behandle die Aktion als wäre sie rot“), wird die Aktion so behandelt, als hätte sie die Farbe mit den meisten Beschränkungen. <br>• Es gibt keine Obergrenze für die Anzahl an Aktionen, die ein Schiff pro Runde durchführen kann. Allerdings kann ein Schiff innerhalb einer Runde nicht mehrmals dieselbe Aktion durchführen oder eine Aktion durchführen die diese Runde bereits gescheitert ist. <br>◊ Hat ein Schiff mehrere gleichnamige Schadenskarten, zählt die Fähigkeit jeder Schadenskarte als andere Aktion. <br>◊ Manche Karten haben mehrere Absätze mit dem Stichwort „<strong>Aktion:</strong>“. Jeder dieser Absätze stellt eine andere Aktion dar. <br>◊ Spieleffekte wie „erhalte 1 Fokusmarker“, „gib Schub“ oder „Ziel erfassen“ sind keine Aktionen, was bedeutet, dass ein Schiff sie beliebig oft pro Runde abhandeln kann. Spieleffekte wie „führe eine %FOCUS%-Aktion durch“, „führe eine %BOOST%-Aktion durch“ oder „führe eine %LOCK%-Aktion durch“ sind hingegen Aktionen, d. h. jedes Schiff kann jede dieser Aktionen nur ein Mal pro Runde durchführen. <br>• Während des Schrittes „Aktion durchführen“ der Aktivierung eines Schiffes darf das Schiff eine Aktion durchführen. <br>• Wenn ein Schiff den Schritt „Aktion durchführen“ abhandelt oder wenn ihm eine Aktion gewährt wird, kann es auch entscheiden, keine Aktion durchzuführen."""
            "AKTIVIERUNG":
                name: "Aktivierung"
                text: """Siehe Aktivierungsphase."""
            "AKTIVIERUNGSPHASE":
                name: "Aktivierungsphase"
                text: """Die Aktivierungsphase ist die dritte Phase einer Runde. Während dieser Phase wird jedes Schiff einzeln <strong>aktiviert</strong>. Es beginnt das Schiff mit der niedrigsten Initiative, dann geht es weiter in aufsteigender Reihenfolge. Jedes Schiff wird aktiviert, indem es folgende Schritte der Reihe nach abhandelt: <br>1. <strong>Rad aufdecken:</strong> Das zugeordnete Rad des Schiffes wird <strong>aufgedeckt</strong>, d. h. auf die offene Seite gedreht und neben der Schiffskarte platziert. <br>2. <strong>Manöver ausführen:</strong> Das Schiff führt das Manöver aus, das auf seinem aufgedeckten Rad eingestellt ist. <br>3. <strong>Aktion durchführen:</strong> Das Schiff darf 1 Aktionen durchführen. <br>Nachdem alle Schiffe aktiviert worden sind, geht es weiter mit der Kampfphase. <br>• Hat ein Spieler mehrere Schiffe mit gleichem Initiativwert, aktiviert er sie in beliebiger Reihenfolge, wobei er die Aktivierung eines Schiffes vollständig abschließen muss, bevor er die Aktivierung eines anderen Schiffes mit gleicher Initiative beginnen kann. <br>• Haben mehrere Spieler Schiffe mit gleichem Initiativwert, bestimmt die Spielerreihenfolge, in welcher Reihenfolge sie aktiviert werden. Zuerst aktiviert der Startspieler alle seine Schiffe mit diesem Initiativwert in beliebiger Reihenfolge, dann aktiviert der zweite Spieler alle seine Schiffe mit diesem Initiativwert in beliebiger Reihenfolge. <br>• Überspringt ein Schiff beim Aktivieren den Schritt „Rad aufdecken“, kann es keine Fähigkeiten abhandeln, die nach dem Aufdecken seines Rades ausgelöst werden. <br>• Ein gestresstes Schiff kann keine roten Manöver ausführen und keine Aktionen durchführen. <br>• Versucht ein gestresstes Schiff ein rotes Manöver auszuführen, führt es stattdessen ein <strong>Stressmanöver</strong> aus. Das Stressmanöver ist ein weißes [%STRAIGHT% 2]-Manöver. Flugrichtung, Schwierigkeit und Geschwindigkeit dieses Manövers können nicht verändert werden, es sei denn, eine Fähigkeit bezieht sich ausdrücklich auf das Stressmanöver. <br>• Versucht ein Schiff ohne aktive %FORCE% ein violettes Manöver auszuführen, führt es stattdessen ein Stressmanöver aus."""
            "ANDOCKEN":
                name: "Andocken"
                text: """Manche Fähigkeiten erlauben, dass ein Schiff von einem anderen befreundeten Schiff geschleppt wird oder in dessen Hangar mitfliegt. Wenn eine Kartenfähigkeit ein Schiff zum <strong>andocken</strong> an einem Trägerschiff auffordert, wird das angedockte Schiff in der Reserve platziert. Ein angedocktes Schiff kann während der Systemphase von seinem Trägerschiff <strong>abgesetzt</strong> werden, indem es folgende Schritte durchführt: <br>1. Auf dem Rad des angedockten Schiffes wird ein Manöver gewählt, das nicht stationär und nicht rückwärts ist. <br>2. Unter Verwendung der zugehörigen Schablone führt das angedockte Schiff das Manöver aus, wobei es die vorderen oder hinteren Stopper des Trägerschiffes verwendet, als wären sie seine Ausgangsposition. <br>3. Das Schiff darf 1 Aktion durchführen. <br>• Falls das Schiff beim Absetzen sein Manöver teilweise ausführen würde und nicht platziert werden kann, ohne sich mit einem anderen Schiff zu überschneiden, scheitert das Absetzen und das Schiff bleibt in der Reserve. <br>• Ein Schiff, das während der Systemphase absetzt, wird nicht in der Aktivierungsphase aktiviert. <br>Während der Systemphase kann ein Schiff, das in Reichweite 0 seines Trägerschiffes ist, an diesem andocken und in der Reserve platziert werden. Ein Schiff kann nicht während derselben Systemphase andocken und abgesetzt werden. Ein Schiff, das während der Systemphase andockt, handelt nicht sein zugeordnetes Rad ab oder wird in der Aktivierungsphase aktiviert. <br>• Nachdem ein Schiff, das andocken kann, ein Manöver teilweise ausgeführt hat und ein befreundetes Trägerschiff überschneidet, darf es in der Reserve platziert werden. Falls es das tut, werden die Effekte der Überschneidung nicht abgehandelt. <br>Wird ein Trägerschiff zerstört, können alle angedockten Schiffe eine <strong>Notabsetzung</strong> durchführen, bevor der Träger von der Spielfläche entfernt wird. Die Notabsetzung wird ähnlich wie eine normale Absetzung durchgeführt (siehe oben), außer dass das Schiff zuerst 1 %CRIT%-Schaden erleidet und nach dem Ausführen des Manövers nicht die Gelegenheit zum Durchführen einer Aktion hat. <br>• Falls das angedockte Schiff sein Manöver für die Notabsetzung teilweise ausführen würde und nicht platziert werden kann, ohne sich mit einem anderen Schiff zu überschneiden, scheitert das Absetzen und das Schiff wird zerstört. <br>• Ein Schiff, das während der Kampfphase per Notabsetzung abgesetzt wurde, kann immer noch bei seiner Initiative kämpfen, es sei denn, seine Initiative war in dieser Runde bereits an der Reihe; in diesem Fall kann es in dieser Phase nicht mehr kämpfen. <br>Außerdem gilt: <br>• Ein Beispiel für das Absetzen findet sich im Anhang. <br>• Andockfähige Schiffe können das Spiel angedockt beginnen. Vor dem Schritt „Streitkräfte platzieren“ des Spielaufbaus muss man deklarieren, welche Schiffe an welchen Trägerschiffen angedockt sind. <br>• Während der Systemphase wird die Initiative des andockenden oder abgesetzten Schiffes verwendet und nicht die Initiative des Trägerschiffes."""
            "ANGREIFEN":
                name: "Angreifen"
                text: """Schiffe können Angriffe durchführen. Thematisch bedeutet das, dass sie ihre Blasterkanonen, Raketen und anderen Waffen auf den Feind richten und abfeuern. Wenn ein Schiff einen Angriff durchführt, wird es zum Angreifer und befolgt anschließend die unten stehenden Schritte: <br>1. <strong>Ziel deklarieren:</strong> Während dieses Schrittes ermittelt und benennt der angreifende Spieler den Verteidiger des Angriffs. <br>a. <strong>Reichweite abmessen:</strong> Der angreifende Spieler misst die Reichweite vom Angreifer zu beliebig vielen feindlichen Schiffen und bestimmt, welche feindlichen Schiffe in welchem Winkel des Angreifers sind. <br>b. <strong>Waffe wählen:</strong> Der angreifende Spieler wählt 1 der Primär- oder Spezialwaffen des Angreifers. <br>c. <strong>Verteidiger deklarieren:</strong> Der angreifende Spieler wählt ein feindliches Schiff und macht es zum Verteidiger. Der Verteidiger muss die Bedingungen der gewählten Waffe erfüllen. <br>d. <strong>Kosten bezahlen:</strong> Der Angreifer muss sämtliche Kosten für das  Durchführen des Angriffs bezahlen. <br>• Während des Schrittes „Ziel deklarieren“ ist der Winkel der gewählten Waffe der Angriffswinkel. Die Angriffsreichweite ist die kürzeste Distanz zwischen Angreifer und Verteidiger <strong>im</strong> Angriffswinkel (die Reichweite, gemessen vom nächsten Punkt des Angreifers zum nächsten Punkt des Verteidigers, die sich im Angriffswinkel befindet). <br>• Primärwaffen setzen eine Angriffsreichweite von 0–3 voraus. Standardmäßig haben Primärwaffen keine Kosten. <br>• Spezialwaffen haben andere Bedingungen, die bei der Quelle des jeweiligen Angriffs angegeben sind. <br>• Falls es für die gewählte Waffe kein zulässiges Ziel gibt oder der Angreifer die erforderlichen Kosten für den Angriff nicht bezahlen kann, wählt der angreifende Spieler entweder eine andere Waffe oder er beschließt, nicht anzugreifen. <br>2. <strong>Angriffswürfel:</strong> Während dieses Schrittes wirft der angreifende Spieler seine Angriffswürfel. Diese können von beiden Spielern modifiziert werden. <br>a. <strong>Angriffswürfel werfen:</strong> Der angreifende Spieler bestimmt die Anzahl der zu werfenden Angriffswürfel auf Grundlage des Angriffswertes. Auf diesen werden sämtliche Effekte, welche die Anzahl der Angriffswürfel erhöhen oder verringern (beispielsweise der Reichweitenbonus und andere Effekte) angewandt. Falls die Minimal- oder Maximalanzahl von Würfeln begrenzt worden ist, wird im Anschluss diese Grenze angewandt. Es gilt grundsätzlich ein Minimum von 0 und ein Maximum von 6. Dann wirft er die entsprechende Anzahl an Würfeln. <br>• Solange ein Primärangriff in Angriffsreichweite 0 durchgeführt wird, können keine Angriffswürfel hinzugefügt werden. <br>b. <strong>Angriffswürfel modifizieren:</strong> Die Spieler handeln alle Fähigkeiten ab, mit denen Angriffswürfel modifiziert werden. Der verteidigende Spieler handelt seine Fähigkeiten zuerst ab, dann handelt der angreifende Spieler seine Fähigkeiten ab. <br>• Solange ein Primärangriff in Angriffsreichweite 0 durchgeführt wird, können die Würfel des Angreifers nicht modifiziert werden, außer durch den Verteidiger. <br>• Üblicherweise modifiziert der Angreifer die Angriffswürfel durch Ausgeben von Fokusmarkern oder einer Zielerfassung, die er auf dem Verteidiger hat. <br>• Jeder Angriffswürfel kann höchstens ein Mal pro Angriff neu geworfen werden. <br>3. <strong>Verteidigungswürfel:</strong> Während dieses Schrittes wirft der verteidigende Spieler Verteidigungswürfel in Höhe des Wendigkeitswertes des Schiffes. Diese können von beiden Spielern modifiziert werden. <br>a. <strong>Verteidigungswürfel werfen:</strong> Der verteidigende Spieler bestimmt die Anzahl der zu werfenden Verteidigungswürfel auf Grundlage des Wendigkeitswertes des Verteidigers. Auf diesen werden sämtliche Effekte, welche die Anzahl der Verteidigungswürfel erhöhen oder verringern (beispielsweise der Reichweitenbonus, die Versperrung des Angriffs durch ein Hindernis und andere Effekte) angewandt. Falls die Minimal- oder Maximalanzahl von Würfeln begrenzt worden ist, wird im Anschluss diese Grenze angewandt. Es gilt grundsätzlich ein Minimum von 0 und einMaximum von 6. Dann wirft er die entsprechende Anzahl an Würfeln. <br>b. <strong>Verteidigungswürfel modifizieren:</strong> Die Spieler handeln alle Fähigkeiten ab, mit denen Verteidigungswürfel modifiziert werden. Der angreifende Spieler handelt seine Fähigkeiten zuerst ab, dann handelt der verteidigende Spieler seine Fähigkeiten ab. <br>• Solange du in Reichweite 0 verteidigst, können feindliche Schiffe die Anzahl der Verteidigungswürfel, die du wirfst, nicht reduzieren, deine Ergebnisse nicht negieren und nicht modifizieren. <br>• Üblicherweise modifiziert der Verteidiger die Verteidigungswürfel, indem er Fokus- oder Ausweichmarker ausgibt. <br>• Jeder Verteidigungswürfel kann höchstens ein Mal pro Angriff neu geworfen werden. <br>4. <strong>Ergebnisse neutralisieren:</strong> Während dieses Schrittes <strong>neutralisieren</strong> sich die Angriffs- und Verteidigungswürfel paarweise. Dies geschieht in folgender Reihenfolge: <br>a. Paare von %EVADE%- und %HIT%-Ergebnissen werden negiert. <br>b. Paare von %EVADE%- und %CRIT%-Ergebnissen werden negiert. <br> Der Angriff trifft, falls mindestens 1 %HIT%- oder %CRIT%-Ergebnis nicht negiert wurde; andernfalls verfehlt er. <br>5. <strong>Schaden zuteilen:</strong> Falls der Angriff trifft, erleidet der Verteidiger für alle nicht-negierten %HIT%- und %CRIT%-Ergebnisse Schaden, und zwar in dieser Reihenfolge: <br>a. Der Verteidiger erleidet 1 %HIT%-Schaden für jedes nicht-negierte %HIT%-Ergebnis. Dann werden alle %HIT%-Ergebnisse negiert. <br>b. Der Verteidiger erleidet 1 %CRIT%-Schaden für jedes nicht-negierte %CRIT%-Ergebnis. Dann werden alle %CRIT%-Ergebnisse negiert. <br>6. <strong>Nachwirkungen:</strong> Fähigkeiten, die nach einem Angriff ausgelöst werden, werden in folgender Reihenfolge abgehandelt. <br>a. Alle Fähigkeiten des verteidigenden Spielers, die ausgelöst werden, nachdem ein Schiff verteidigt hat oder zerstört worden ist, mit Ausnahme von Fähigkeiten, die einen Bonusangriff gewähren. <br>b. Alle Fähigkeiten des angreifenden Spielers, die ausgelöst werden, nachdem ein Schiff einen Angriff durchgeführt hat oder zerstört worden ist, mit Ausnahme von Fähigkeiten, die einen Bonusangriff gewähren. <br>c. Alle Fähigkeiten des verteidigenden Spielers, die ausgelöst werden, nachdem ein Schiff verteidigt hat oder zerstört worden ist und die einen Bonusangriff gewähren. <br>d. Alle Fähigkeiten des angreifenden Spielers, die ausgelöst werden, nachdem ein Schiff einen Angriff durchgeführt hat oder zerstört worden ist und die einen Bonusangriff gewähren. <br>• Jedes Schiff darf 1 Standardangriff durchführen, sobald es in der Kampfphase kämpft. <br>• Falls ein Schiff bei einem Initiativschritt während der Kampfphase zerstört wird, entfernt man es erst, nachdem alle Schiffe mit derselben Initiative wie der Angreifer gekämpft haben. <br>• Während eines Angriffes kann ein Schiff nicht freiwillig entscheiden, weniger Würfel zu werfen, als es werfen soll. <br>• Reichen die verfügbaren Würfel nicht aus, wirft man alle vorhandenen und notiert die erzielten Ergebnisse. Dann wirft man sie erneut, bis man die erforderliche Anzahl an Würfeln (die eigentlich gleichzeitig geworfen werden sollten) erreicht hat. Was das Modifizieren von Würfeln betrifft, zählt dies nicht als Neuwerfen"""
            "ANGRIFFSREICHWEITE":
                name: "Angriffsreichweite"
                text: """Während eines Angriffs wird die kürzeste Distanz zwischen Angreifer und Verteidiger (die Reichweite, gemessen vom nächsten Punkt des Angreifers zum nächsten Punkt des Verteidigers) im Angriffswinkel als <strong>Angriffsreichweite</strong> bezeichnet. <br>• Beim Abmessen der Reichweite für Fähigkeiten, die nicht explizit von der Angriffsreichweite sprechen, wird die Reichweite vom nächsten Punkt des Angreifers zum nächsten Punkt des Verteidigers (unabhängig vom Angriffswinkel) gemessen. <br>• Solange ein Schiff in Reichweite 0 angegriffen wird, ist die Angriffsreichweite immer 0."""
            "ANGRIFFSWINKEL":
                name: "Angriffswinkel"
                text: """Während eines Angriffs wird der Winkel der verwendeten Waffe des Angreifers als <strong>Angriffswinkel</strong> bezeichnet. Während des Schrittes „Verteidiger deklarieren“ muss das feindliche Schiff im Angriffswinkel sein."""
            "ANSTRENGUNG":
                name: "Anstrengung"
                text: """Solange ein Schiff mindestens 1 Anstrengungsmarker (%STRAIN%) hat, ist es <strong>angestrengt</strong>. Solange ein angestrengtes Schiff verteidigt, wirft es 1 Verteidigungswürfel weniger. Der Anstrengungsmarker ist ein roter Marker. <br>• Nachdem ein angestrengtes Schiff den Effekt, 1 Verteidigungswürfel weniger zu werfen, auf diese Weise angewandt hat, entfernt es 1 Anstrengungsmarker. <br>• Nachdem ein angestrengtes Schiff ein blaues Manöver durchgeführt hat, entfernt es 1 Anstrengungsmarker."""
            "AUFBAU":
                name: "Aufbau"
                text: """"Vor dem Spiel werden folgende Schritte abgehandelt: <br>1. <strong>Streitkräfte sammeln:</strong> Jeder Spieler platziert seine Schiffs- und Aufwertungskarten vor sich auf dem Tisch. Für jedes Schiff, das über einen Schildwert, eine Ladungskapazität oder ein Machtvermögen verfügt, werden die jeweiligen %SHIELD%, %CHARGE% oder %FORCE% oberhalb der Schiffs- und/oder Aufwertungskarten platziert. Jeder Spieler ordnet jedem seiner Schiffe ID-Marker zu. <br>2. <strong>Spielreihenfolge festlegen:</strong> Die Spielreihenfolge wird folgendermaßen zufällig festgelegt: <br>a. Jeder Spieler wirft 3 Angriffswürfel. Der Spieler mit den meisten %CRIT%-Ergebnissen ist Startspieler. <br>b. Herrscht Gleichstand, ist der Spieler mit den meisten %FOCUS%-Ergebnissen Startspieler. <br>c. Herrscht immer noch Gleichstand, ist der Spieler mit den meisten %HIT%-Ergebnissen Startspieler. <br>d. Herrscht immer noch Gleichstand, würfeln die Spieler erneut und beginnen wieder bei Punkt a), bis der Gleichstand aufgelöst ist. <br>• Diese Würfe können nicht durch Spieleffekte beeinflusst werden. <br>3. <strong>Spielfläche abstecken:</strong> Auf einem flachen Untergrund wird eine 3‘ x 3‘ (91 cm x 91 cm) große Spielfläche abgesteckt. Alternativ kann eine Spielmatte wie die Starfield Playmat von Fantasy Flight Games verwendet werden. Anschließend wählen die Spieler gegenüberliegende Ränder der Spielfläche als ihre Spielflächenränder aus. <br>4. <strong>Hindernisse platzieren:</strong> In Spielerreihenfolge wählen die Spieler abwechselnd je 1 Hindernis und platzieren es auf der Spielfläche, bis alle 6 Hindernisse platziert worden sind. Hindernisse müssen jenseits von Reichweite 1 zueinander und jenseits von Reichweite 2 zu jedem Spielflächenrand platziert werden. <br>5. <strong>Streitkräfte platzieren:</strong> In aufsteigender Initiativreihenfolge (beginnend mit der niedrigsten Initiative) platzieren die Spieler ihre Schiffe auf der Spielfläche. Bei Gleichstand entscheidet die Spielerreihenfolge. Jeder Spieler muss seine Schiffe innerhalb von Reichweite 1 zu seinem Spielflächenrand platzieren. Wenn ein Schiff mit einem Geschützturm-Winkelanzeiger platziert wird, dreht der Spieler den Winkel, um einen Standardwinkel auszuwählen. Jedes Schiff mit einer Geschützturm-Winkelanzeiger kann seine Anzeige drehen, wenn das Schiff platziert wird. <br>6. <strong>Sonstiges Material vorbereiten:</strong> Der Schadensstapel wird gemischt und verdeckt außerhalb der Spielfläche platziert. Besitzen die Spieler mehr als einen Schadensstapel, verwendet jeder seinen eigenen. Neben der Spielfläche wird ein Vorrat aus Maßstab, Schablonen, Würfeln und Markern gebildet. <br>Außerdem gilt: <br>• Hat eine Karte das Stichwort „<strong>Aufbau:</strong>“, wird die Fähigkeit, die diesem Stichwort folgt, während des geeigneten Aufbau-Schrittes abgehandelt."""
            "AUFDECKEN":
                name: "Aufdecken"
                text: """Siehe Aktivierungsphase"""
            "AUFWERTUNGSKARTEN":
                name: "Aufwertungskarten"
                text: """Beim Zusammenstellen einer Staffel kann man Ausstattungspunkte ausgeben, um Aufwertungskarten zu kaufen und Schiffe damit auszurüsten. Jedes Schiff hat einen Ausstattungswert und eine Aufwertungsleiste, die angeben, wie viele Aufwertungen welcher Art ein Schiff ausrüsten kann. Manche Aufwertungen haben 1 oder mehrere der folgenden Einträge in ihrem Beschränkungsfeld: <br>• <strong>Rebellen/Imperium/Abschaum/...:</strong> Diese Aufwertungskarte kann nur von einem Schiff der jeweiligen Fraktion ausgerüstet werden. <br>• <strong>Kleines/mittleres/großes/riesiges Schiff:</strong> Diese Aufwertung kann nur von einem Schiff der jeweiligen Größe ausgerüstet werden. <br>• <strong>Schiffstyp:</strong> Ist an dieser Stelle ein Schiffstyp angegeben, kann die Aufwertung nur von einem Schiff dieses Typs ausgerüstet werden. <br>• <strong>Aktion:</strong> Steht an dieser Stelle ein Aktionssymbol, kann die Aufwertung nur von einem Schiff ausgerüstet werden, das diese Aktion in seiner Aktionsleiste hat. Eine Aktion in der gekoppelten Aktionsleiste zählt hierbei nicht. <br>• Ein Schiff kann nicht mehr als 1 Kopie derselben Karte ausrüsten. <br>• Alle Karten einer Staffel unterliegen den Regeln für limitierte und Solitär-Karten. <br>• Einige Effekte können während des Spielaufbaus oder danach Aufwertungskarten zwischen zwei Schiffen „austauschen“ oder „ausrüsten“. <br>◊ Ein Effekt kann eine Aufwertung zu einem Schiff bewegen, das kein passendes Aufwertungssymbol in seiner Aufwertungsleiste hat. <br>◊ Ein Effekt kann eine Aufwertung nicht zu einem Schiff bewegen, das die im Beschränkungsfeld der Aufwertungskarte genannten Voraussetzungen nicht erfüllt, es sei denn, der Effekt erlaubt ausdrücklich, Beschränkungen zu ignorieren."""
            "AUFWERTUNGSSYMBOLE":
                name: "Aufwertungssymbole"
                text: """Jedes Aufwertungssymbol hat einen Namen. Es folgt eine Übersicht:<br>• %TALENT% Talent<br>• %ASTROMECH% Astromech<br>• %TORPEDO% Torpedo<br>• %MISSILE% Rakete<br>• %CANNON% Kanone<br>• %TURRET% Geschütz <br>• %DEVICE% Nutzlast<br>• %CREW% Mannschaft<br>• %CONFIGURATION% Konfiguration <br>• %SENSOR% Sensor <br>• %TITLE% Titel<br>• %MODIFICATION% Modifikation <br>• %ILLICIT% Schmuggelware <br>• %TECH% Technik<br>• %GUNNER% Bordschütze<br>• %FORCEPOWER% Macht-Fähigkeit <br>• %TACTICALRELAY% Taktische Leitung <br>• (Wir haben dieses Icon nicht...) Hyperantrieb"""
            "AUS DEM SPIEL ENTFERNT":
                name: "Aus dem Spiel entfernt"
                text: """Nachdem ein Schiff zerstört worden oder geflohen ist, wird es <strong>aus dem Spiel entfernt</strong>. Wenn das passiert, kommen alle seine Marker in den Vorrat zurück, seine Schiffskarte wird auf die Rückseite gedreht und das Schiff wird auf seiner Schiffskarte platziert. <br>• Falls am Ende einer Runde alle Schiffe eines Spielers aus dem Spiel entfernt worden sind, endet die Partie und der andere Spieler gewinnt. <br>• Schiffe, die in der Reserve platziert werden, sind nicht aus dem Spiel entfernt."""
            "AUSWEICHEN":
                name: "Ausweichen"
                text: """Piloten können ausweichen, um defensiv zu fliegen. Sobald ein Schiff eine %EVADE%-Aktion durchführt, erhält es 1 Ausweichmarker. Solange ein Schiff mindestens 1 Ausweichmarker hat, spricht man davon, dass das Schiff <strong>ausweicht</strong>. Ausweichmarker sind kreisförmige, grüne Marker. Solange ein ausweichendes Schiff verteidigt, kann es während des Schrittes „Verteidigungswürfel modifizieren“ einen oder mehrere Ausweichmarker ausgeben, um ebenso viele seiner Leerseiten oder %FOCUS%-Ergebnisse in %EVADE%-Ergebnisse zu ändern. <br>• Wenn eine Fähigkeit besagt, dass ein Schiff einen Ausweichmarker erhält, ist dies etwas anderes als das Durchführen einer %EVADE%-Aktion. Ein Schiff, das einen Ausweichmarker erhält, ohne die Aktion durchzuführen, kann in dieser Runde immer noch die %EVADE%-Aktion durchführen."""
            "BEFREUNDET":
                name: "Befreundet"
                text: """Alle Schiffe/Geräte, die vom selben Spieler kontrolliert werden, sind miteinander <strong>befreundet</strong>, es sei denn, eine Karte, ein Spielmodus, ein Szenario oder ein anderer Effekt besagt etwas anderes. Alle Würfel, die man selbst wirft, sind mit diesen Schiffen befreundet. Befreundet ist etwas anderes als feindlich und verbündet. <br>• Schiffe können keine Angriffe gegen befreundete Schiffe durchführen, es sei denn, etwas anderes ist ausdrücklich angegeben. <br>• Ein Schiff ist befreundet mit sich selbst und kann alle seine Fähigkeiten, die „befreundete Schiffe“ betreffen, auch auf sich selbst anwenden, es sei denn, die Fähigkeiten beziehen sich ausdrücklich auf „andere“ befreundete Schiffe."""
            "BERECHNEN":
                name: "Berechnen"
                text: """Piloten können berechnen, wobei sie modernste Computertechnologie einsetzen, um ihre Leistungen im Kampf zu steigern. Sobald ein Schiff eine %CALCULATE%-Aktion durchführt, erhält es 1 Berechnungsmarker. Solange ein Schiff mindestens 1 Berechnungsmarker hat, ist es <strong>berechnend</strong>. Berechnungsmarker sind kreisförmige grüne Marker. Für ein berechnendes Schiff gelten folgende Regeln: <br>• Solange ein berechnendes Schiff einen Angriff durchführt, darf es während des Schrittes „Angriffswürfel modifizieren“ 1 oder mehrere Berechnungsmarker ausgeben, um ebenso viele seiner %FOCUS%-Ergebnisse in %HIT%-Ergebnisse zu ändern. <br>• Solange ein berechnendes Schiff verteidigt, darf es während des Schrittes „Verteidigungswürfel modifizieren“ 1 oder mehrere Berechnungsmarker ausgeben, um ebenso viele seiner %FOCUS%-Ergebnisse in %EVADE%-Ergebnisse zu ändern. <br>Außerdem gilt:<br>• Ein Schiff kann keine Berechnungsmarker ausgeben, um %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern, falls es keine 󲁀-Ergebnisse hat. <br>• Wenn eine Fähigkeit besagt, dass ein Schiff einen Berechnungsmarker erhält, ist dies etwas anderes als das Durchführen einer %CALCULATE%-Aktion. Ein Schiff, das einen Berechnungsmarker erhält, ohne die Aktion durchzuführen, kann in dieser Runde immer noch die %CALCULATE%-Aktion durchführen."""
            "BEWEGEN":
                name: "Bewegen"
                text: """Ein Schiff <strong>bewegt</strong> sich, wenn es ein Manöver ausführt oder anderweitig unter Verwendung einer Schablone seine Position verändert (z. B. bei einer Fassrolle oder einem Schub). Ein Schiff bewegt sich durch ein Objekt <strong>hindurch</strong>, wenn die Schablone beim Bewegen auf dem Objekt platziert wird. <br>• Bewegt sich ein Schiff durch ein Hindernis hindurch, erleidet es die Effekte jenes Hindernisses. <br>• Bewegt sich ein Schiff durch ein Gerät hindurch, kann es je nach Gerät bestimmte Effekte erleiden. <br>• Bewegt sich ein Schiff durch ein anderes Schiff hindurch, gibt es an sich keinen Effekt. Da das Plastikmodell des anderen Schiffes physisch den Weg versperrt, sollte man seine Position markieren und es vorübergehend entfernen. Um die Position eines im Weg stehenden Schiffes zu markieren, kann man entweder die Positionsmarkierung aus dem Grundspiel verwenden oder Schablonen zwischen den Stopper des Schiffes oder an seinen Basiskanten platzieren. Nach Abschluss der Bewegung werden alle entfernten Schiffe in ihre Ursprungspositionen zurückgebracht."""
            "BOMBEN":
                name: "Bombe"
                text: """Eine Bombe ist eine Art von Gerät, das über den Karteneffekt einer %DEVICE%-Aufwertungskarte auf die Spielfläche kommt. Die zugehörige Aufwertungskarte hat das Merkmal „Bombe“ über ihrem Kartentext. Bomben können während der Systemphase abgeworfen oder gestartet werden und detonieren am Ende der Aktivierungsphase."""
            "BONUSANGRIFF":
                name: "Bonusangriff"
                text: """Wird ein Schiff von einem Karteneffekt zum Durchführen eines Bonusangriffs aufgefordert, führt es während des Schrittes „Nachwirkungen“ einen zusätzlichen Angriff durch. <br>• Manche Spezialwaffen gewähren einen Bonusangriff unter Verwendung derselben Waffe. Sofern nichts anderes angegeben ist, gelten für das Durchführen solcher Bonusangriffe dieselben Bedingungen (Winkel, Reichweite, Kosten). <br>◊ Beispiel: Ein Schiff, das mit der Karte „Clusterraketen“ angegriffen hat, kann einen Bonusangriff gegen ein anderes Schiff in Reichweite 1 des Verteidigers durchführen und dabei die %LOCK%-Voraussetzung ignorieren. Die Reichweite (1–2), der Winkel (%FRONTARC%) und die Kosten (1 %CHARGE%) gelten auch für den Bonusangriff. <br>• Ein Schiff kann nur 1 Bonusangriff pro Runde durchführen. <br>• Haben beide Spieler einen Bonusangriff, der nach dem Angriff ausgelöst wird, handelt der verteidigende Spieler seinen Bonusangriff zuerst ab. <br>• Für riesige Schiffe gibt es Zusatzregeln für Bonusangriffe (vgl. Anhang: Riesige Schiffe)."""
            "BRAND":
                name: "Brand"
                text: """Sobald dieses Objekt platziert wird, werden seine Stopper an die Aussparung der Brandbombe angelegt. Nachdem dieses Objekt platziert worden ist, wird ein Zeitzünder auf es platziert. <br>• Während der Endphase wird jeder Brand ohne Zeitzünder entfernt, dann wird 1 Zeitzünder von jedem Brand entfernt. Wenn sich ein Schiff bewegt und sich dabei durch ein Brand-Hindernis hindurchbewegt oder es überschneidet, erleidet es den folgenden Effekt: <br>• Nachdem die Bewegung abgehandelt wurde, wirf einen Angriffswürfel. Bei einem %HIT%- oder %CRIT%-Ergebnis erleidet das Schiff 1 %HIT%-Schaden, bei einem %FOCUS%-Ergebnis erhält es 1 Stressmarker. Dann überspringt das Schiff seinen Schritt „Aktion durchführen“ dieser Runde. <br>Nachdem ein Remote so neu positioniert worden ist, dass es danach in Reichweite 0 eines Brand-Hindernisses ist, erleidet es 1 %HIT%-Schaden. Falls ein Schiff verteidigt und der Angriff durch einen Brand versperrt wird, wirft es 1 zusätzlichen Verteidigungswürfel."""
            "DEFIZIT":
                name: "Defizit"
                text: "Falls die Summe der Kommandopunkte eines Spielers kleiner ist als der maximal erlaubte Kommandowert, subtrahiert vor Spielbeginn den Kommandopunktewert der gesamten Staffel vom erlaubten Maximum. Dieser Wert stellt das <strong>Defizit</strong> des Spielers dar. <br>• Zu Beginn des Spiels verdient jeder Spieler Missionspunkte in Höhe des gegnerischen Defizits."
            "DREHUNG":
                name: "Drehung"
                text: "%BANKLEFT% und %BANKRIGHT%; Siehe Flugrichtung"
            "EINHEIT":
                name: "Einheit"
                text: "Schiffe und Remotes sind Einheiten."
            "ELEKTRODÜPPEL-WOLKE":
                name: "Elektrodüppel-Wolke"
                text: "Siehe Hindernisse."
            "ENDPHASE":
                name: "Endphase"
                text: "Die Endphase ist die fünfte Phase der Runde. Während der Endphase passiert Folgendes in dieser Reihenfolge: <br> 1. Fähigkeiten, die „zu Beginn der Endphase“ ausgelöst werden, bilden eine Fähigkeits-Warteschlange und werden abgehandelt. <br>2. Fähigkeiten, die „während der Endphase“ ausgelöst werden, bilden eine Fähigkeits-Warteschlange und werden abgehandelt. <br>3. Alle kreisförmigen Marker werden von allen Schiffen entfernt (zuerst grüne, dann orangefarbene). <br>4. Jede Karte mit mindestens einem Symbol für wiederkehrende Ladungen stellt ebenso viele Ladungen wieder her. Jede Karte mit mindestens einem Symbol für negative wiederkehrende Ladungen verliert ebenso viele Ladungen. <br>Nach dieser Phase werden die Siegbedingungen überprüft. Ist die Partie nicht vorbei, beginnt die nächste Runde mit der Planungsphase."
            "ENTTARNEN":
                name: "Enttarnen"
                text: "Siehe Tarnen."
            "ENTWAFFNET":
                name: "Entwaffnet"
                text: "Ein Schiff ist entwaffnet, falls es mindestens 1 Entwaffnet-Marker hat. Ein entwaffnetes Schiff kann keine Angriffe durchführen. Der Entwaffnet-Marker ist ein kreisförmiger, orangefarbener Marker und wird während der Endphase entfernt. <br>• Während der Kampfphase kämpfen auch entwaffnete Schiffe (obwohl sie keine Angriffe durchführen können)."    
            "ERLEIDEN":
                name: "Erleiden"
                text: "Siehe Schaden."
            "ERSCHÖPFT":
                name: "Erschöpft"
                text: "Ein Schiff ist <strong>erschöpft</strong>, solange es mindestens 1 Erschöpfungsmarker (%DEPLETE%) hat. Solange ein erschöpftes Schiff einen Angriff durchführt, wirft es 1 Angriffswürfel weniger. Erschöpfungsmarker sind rote Marker. <br>• Nachdem ein erschöpftes Schiff den Effekt, 1 Angriffswürfel weniger zu werfen, angewandt hat, entfernt es 1 Erschöpfungsmarker. <br>• Nachdem ein erschöpftes Schiff ein blaues Manöver ausgeführt hat, entfernt es 1 Erschöpfungsmarker"
            "FÄHIGKEITEN":
                name: "Fähigkeiten"
                text: "Manche Texte von Zustands-, Schadens-, Schiffs- und Aufwertungskarten sind <strong>Fähigkeiten</strong>. Diese bestehen aus einem Zeitpunkt und einem Effekt. <br>• Kartenfähigkeiten sind verpflichtend und müssen zwangsweise abgehandelt werden, es sei denn, eine Kartenfähigkeit verwendet eine Form von „dürfen“ oder das Stichwort „<strong>Aktion</strong>“ oder „<strong>Angriff</strong>“. <br>• Ein Schiff kann keine Marker eines anderen Schiffes ausgeben oder entfernen, es sei denn, ein Effekt besagt ausdrücklich etwas anderes. Ebenso kann ein Schiff die Würfelergebnisse eines anderen Schiffes nicht ausgeben, modifizieren oder entfernen, es sei denn, ein Effekt besagt ausdrücklich etwas anderes. <br>• Falls mehrere Fähigkeiten gleichzeitig abgehandelt werden müssten, nutzt man die sogenannte Fähigkeits-Warteschlange, um die Reihenfolge ihrer Abhandlung zu bestimmen. <br>• Die Kartenfähigkeit eines zerstörten Schiffes bleibt aktiv, bis jenes Schiff entfernt wird, es sei denn, die Kartenfähigkeit gibt ausdrücklich an, zu welchem Zeitpunkt ihr Effekt endet, z. B. „bis zum Ende der Kampfphase“. Solche Effekte bleiben bis zum Ende der angegebenen Zeit aktiv. <br><h5>Piloten- und Schiffsfähigkeiten</h5> Manche Schiffskarten haben zusätzlich zu ihrem atmosphärischen Text (oder stattdessen) eine Fähigkeit. Alle limitierten Schiffe verfügen über individuelle <strong>Pilotenfähigkeiten</strong> und haben keine atmosphärischen Texte. Zudem haben manche Schiffe unterhalb ihrer Pilotenfähigkeit oder ihrem atmosphärischen Text eine <strong>Schiffsfähigkeit</strong>, die bei allen Schiffen dieses Typs gleich ist.<br><h5>Ersetzungseffekte</h5> Manche Fähigkeiten haben eine ersetzende Funktion – sie verändern die normale Abhandlung eines Effekts. Man erkennt sie an den Wörtern „anstatt“, „statt“ und „stattdessen“ sowie an der Verwendung des Konjunktivs. <br>• Ersetzungseffekte werden nicht ans Ende der Fähigkeits-Warteschlange gestellt, da sie gleichzeitig mit dem ersetzten Effekt abgehandelt werden. <br>• Wenn ein Ersetzungseffekt abgehandelt wird, behandelt man den ersetzten Effekt, als wäre er niemals eingetreten. <br>◊ Beispiel: Jyn Ersos Fähigkeit besagt: „Falls ein befreundetes Schiff in Reichweite 0–3 einen Fokusmarker erhalten würde, darf es stattdessen 1 Ausweichmarker erhalten.“ Falls diese Fähigkeit verwendet wird, kann ein Effekt, der nach dem Erhalt eines Fokusmarker ausgelöst wird, nicht ausgelöst werden. <br>• Gibt es mehrere Ersetzungseffekte, die denselben Effekt abändern, kann nur 1 Effekt den ursprünglichen Effekt ersetzen. <br>◊ Beispiel: Ein Schiff ist gerade dabei, einen Fokusmarker zu erhalten, und hat die beiden Fähigkeiten „Bevor du einen Fokusmarker erhalten würdest, erhalte stattdessen einen Ausweichmarker“ und „Bevor du einen Fokusmarker erhalten würdest, erhalte stattdessen einen Berechnungsmarker“. Nur 1 dieser Fähigkeiten kann abgehandelt werden.<br><h5>Kosten bezahlen</h5>Ein Schiff kann die Kosten eines Effekts nur dann bezahlen, wenn der Effekt auch abgehandelt werden kann. <br>• Beispiel: Die Fähigkeit des GNK-„Gonk“-Droiden besagt: „Aktion: Gib 1 %CHARGE% aus, um 1 Schild wiederherzustellen.“ Hat das Schiff keine inaktiven Schilde, kann es die Ladung nicht ausgeben. <br>• Ersetzungseffekte können die Kosten ersetzen, die ein Schiff für einen Effekt ausgeben muss. Werden Kosten so ersetzt, wird der Effekt trotzdem abgehandelt."
            "FÄHIGKEITS-WARTESCHLANGE":
                name: "Fähigkeits-Warteschlange"
                text: "Die <strong>Fähigkeits-Warteschlange</strong> wird verwendet, um die Abhandlungsreihenfolge von Fähigkeiten zu klären, die innerhalb desselben Zeitfensters ausgelöst werden. Fähigkeiten in der Warteschlange werden von vorne nach hinten abgehandelt. Folgende Regeln gelten für das Hinzufügen von Fähigkeiten zur Warteschlange: <br>1. Haben beide Spieler Fähigkeiten, die durch dasselbe Ereignis ausgelöst werden, werden die Fähigkeiten in Spielerreihenfolge in die Warteschlange gestellt. <br>2. Hat ein Spieler mehrere Fähigkeiten, die durch dasselbe Ereignis ausgelöst werden, bestimmt er selbst die Reihenfolge, in der die Fähigkeiten in die Warteschlange gestellt werden. <br>3. Werden durch das Abhandeln eines Effekts aus der Fähigkeits-Warteschlange weitere Effekte auslöst, werden sie gemäß den oben genannten Regeln ans vordere Ende der Warteschlange gestellt. <br>2 Beispiele für die Fähigkeits-Warteschlange finden sich im Anhang: Beispiele. <br>• Wenn ein Spieleffekt dasselbe Zeitfenster wie die Fähigkeit eines Spielers hat, wird der Spieleffekt immer zuerst abgehandelt. <br>◊ Beispiel: Ein Schiff mit einer Fähigkeit, die nach dem Durchführen einer Fassrolle ausgelöst wird, führt eine rote Fassrolle-Aktion durch. Bevor die Fähigkeit abgehandelt wird, erhält das Schiff einen Stressmarker, da es sich dabei um einen Spieleffekt handelt. <br>• Falls die Voraussetzungen einer Fähigkeit nicht erfüllt sind, kann sie der Fähigkeits-Warteschlange nicht hinzugefügt werden. Beispiel: Ein Schiff hat eine Fähigkeit, die zu Beginn der Kampfphase ausgelöst wird und voraussetzt, dass das Schiff gefangen ist. Nun beginnt die Kampfphase. Falls das Schiff nicht gefangen ist, kann es seine Fähigkeit nicht zur Warteschlange hinzufügen. Das gilt auch dann, wenn zu Beginn derselben Kampfphase eine andere Fähigkeit zur Warteschlange hinzugefügt wird, deren Abhandlung dazu führen wird, dass das Schiff gefangen wird. <br>• Falls ein Schiff entfernt würde, solange sich noch eine oder mehrere Fähigkeiten in der Warteschlange befinden, wird es nicht entfernt, bis sich keine Fähigkeiten mehr in der Warteschlange befinden"
            "FANGSTRAHL":
                name: "Fangstrahl"
                text: "Ein Schiff ist <strong>gefangen</strong>, solange es eine bestimmte Anzahl an Fangstrahlmarkern (%TRACTOR%), abhängig von seiner Größe, hat; mindestens 1 bei einem kleinen Schiff, mindestens 2 bei einem mittleren Schiff und mindestens 3 bei einem großen Schiff. Fangstrahlmarker sind orangefarbene Marker. Immer, wenn ein Schiff das erste Mal in einer Runde gefangen worden ist, darf der Spieler, dessen Effekt den Fangstrahlmarker angewendet hat, 1 der folgenden Effekte wählen:<br>• Das Schiff führt unter Verwendung der [1 %STRAIGHT%]-Manöverschablone eine Fassrolle durch. Der Spieler, der den Effekt anwendet, bestimmt die Richtung der Fassrolle sowie die Endposition des Schiffes. <br>• Das Schiff führt unter Verwendung der [1 %STRAIGHT%]-Manöverschablone einen Schub durch.<br>Diese Bewegung kann nicht dazu führen, dass sich das Schiff mit einem Hindernis überschneidet oder sich durch es hindurchbewegt. Nachdem ein Schiff auf diese Art bewegt worden ist, falls ein Gegner es bewegt hat, darf der Spieler des Schiffes wählen, das Schiff um 90° nach rechts oder links zu drehen. Falls er dies tut, erhält das Schiff einen Stressmarker. Solange ein gefangenes Schiff verteidigt, wirft es 1 Verteidigungswürfel weniger.<br>• Manche Spezialwaffen fügen Fangstrahlmarker zu, anstatt Schaden zuzuteilen. <br>• Riesige Schiffe haben zusätzliche Fangstrahl-Regeln (vgl. Anhang: Riesige Schiffe)"
            "FASSROLLE":
                name: "Fassrolle"
                text: "Piloten können eine Fassrolle fliegen, um ihr Schiff seitwärts zu steuern und ihre Position leicht anzupassen. Sobald ein kleines Schiff eine %BARRELROLL%-Aktion durchführt, werden die nachstehenden Schritte befolgt: <br>1. Die [1 %STRAIGHT%]-Schablone wird herausgesucht. <br>2. Das kurze Ende der Schablone wird bündig an der linken oder rechten Seite der Schiffsbasis platziert. Die Schablone muss so platziert werden, dass ihre Mittellinie auf einer Höhe mit der Markierung an der Seite der Basis ist. <br>3. Das Schiff wird von der Spielfläche angehoben und so platziert, dass die Markierung an der anderen Basisseite auf einer Höhe mit der Vorderkante, Mittellinie oder Hinterkante des anderen kurzen Endes der Schablone ist. <br>4. Die Schablone wird in den Vorrat zurückgelegt.<br>Wenn ein mittleres oder großes Schiff eine Fassrolle fliegt, wird in der obigen Anleitung „kurzes Ende“ durch „langes Ende“ ersetzt.<br>• Sobald eine Fassrolle deklariert wird, muss man auch deklarieren, ob das Schiff die Fassrolle nach links oder nach rechts fliegt. Anschließend darf man die drei möglichen Endpositionen (vorne, Mitte, hinten) ausprobieren, ehe man sich für eine entscheidet und das Schiff platziert.<br>• Die Fassrolle kann scheitern, falls bei dem Versuch, das Schiff am Ende der Fassrolle zu platzieren, eine der folgenden Situationen eintritt: <br>◊ Das Schiff würde sich an allen drei Positionen mit einem anderen Schiff überschneiden. <br>◊ Alle drei Positionen würden dazu führen, dass das Schiff sich durch ein Hindernis hindurchbewegt oder sich mit einem Hindernis überschneidet. <br>◊ Alle drei Positionen würden dazu führen, dass das Schiff außerhalb der Spielfläche wäre (und somit fliehen würde). <br>• Falls eine Fassrolle scheitert, wird das Schiff in die Ausgangsposition zurückgesetzt, die es vor der versuchten Fassrolle innehatte. Falls dies Bestandteil einer %BARRELROLL%-Aktion ist, scheitert diese Aktion. <br>• Gibt es eine Position, die nicht zum Scheitern der Aktion führt, kann man sich nicht freiwillig dafür entscheiden, die Fassrolle scheitern zu lassen. <br>• Das Durchführen einer Fassrolle zählt nicht als Ausführen eines Manövers, aber es zählt als Bewegung. <br>• Wenn eine Fähigkeit ein Schiff zum Fliegen einer Fassrolle auffordert, ist dies etwas anderes als das Durchführen einer %BARRELROLL%-Aktion. Ein Schiff, das eine Fassrolle fliegt, ohne die Aktion durchzuführen, kann in dieser Runde immer noch die %BARRELROLL%-Aktion durchführen."
            "FEINDLICH":
                name: "Feindlich"
                text: "Alle Schiffe/Geräte, die von Gegenspielern kontrolliert werden, sind <strong>feindliche</strong> Schiffe/Geräte. Alle Würfel, die ein Gegenspieler wirft, sind feindliche Würfel. Das Gegenteil von feindlich ist befreundet."
            "FEUERWINKEL":
                name: "Feuerwinkel"
                text: "Siehe Winkel."
            "FLANKIEREN":
                name: "Flankieren"
                text: "Siehe Winkel."
            "FLIEHEN":
                name: "Fliehen"
                text: "Ein Schiff <strong>flieht</strong>, falls irgendein Teil seiner Basis zu irgendeinem Zeitpunkt außerhalb der Spielfläche ist. Ein geflohenes Schiff wird aus dem Spiel entfernt. <br>• Ein Schiff flieht nicht, falls beim Bewegen ausschließlich die Schablone über den Spielflächenrand hinausragt. <br>• Ein geflohenes Schiff kann vor seiner Entfernung aus dem Spiel nur Effekte abhandeln, die ausgelöst werden, sobald es flieht. <br>• Solange ein Schiff Schub gibt, eine Fassrolle fliegt, sich enttarnt oder SLAM abhandelt, kann es nicht zur Flucht des Schiffes kommen. <br>• Ein teilweise ausgeführtes Manöver kann zur Flucht eines Schiffes führen, falls nach dem Manöver irgendein Teil der Schiffsbasis außerhalb der Spielfläche ist."
            "FLUGRICHTUNG":
                name: "Flugrichtung"
                text: "Jedes Manöver besteht aus drei Elementen: Geschwindigkeit (eine Zahl zwischen 0 und 5), Schwierigkeit (rot, weiß oder blau) und Flugrichtung (ein Pfeil oder ein anderes Symbol). Jede Flugrichtung wird zudem durch eine <strong>Orientierung</strong> (z. B. links, rechts oder gerade) näher definiert. Alle Manöver sind entweder Basismanöver oder Expertenmanöver. Zudem gelten alle Manöver, die an den vorderen Stoppern beginnen, als <strong>Vorwärtsmanöver</strong>.<br><h5>Basismanöver</h5>Folgende Flugrichtungen sind <strong>Basismanöver</strong>. Für sie gelten die normalen Regeln für das Ausführen von Manövern.<br> • <strong>Gerade:</strong> Die Flugrichtung %STRAIGHT% (Gerade) lässt das Schiff geradeaus vorwärts fliegen.<br> • <strong>Drehung:</strong> Die Flugrichtungen %BANKLEFT% (linke Drehung) und %BANKRIGHT% (rechte Drehung) lassen das Schiff eine sanfte Kurve fliegen, wobei sich seine Blickrichtung um 45° ändert.<br> • <strong>Wende:</strong> Die Flugrichtungen %TURNLEFT% (linke Wende) und %TURNRIGHT% (rechte Wende) lassen das Schiff eine enge Kurve fliegen, wobei sich seine Blickrichtung um 90° ändert. <br><h5>Expertenmanöver</h5> Folgende Manöver sind <strong>Expertenmanöver</strong>. Für sie gelten die normalen Regeln für das Ausführen von Manövern mit einigen Ausnahmen.<br> • <strong>Koiogran-Wende:</strong> Die Flugrichtung %KTURN% (Koiogran-Wende) lässt das Schiff geradeaus vorwärts fliegen, und dann seine Blickrichtung um 180° drehen. Hierfür wird dieselbe Schablone wie für das %STRAIGHT%-Manöver verwendet.<br> ◊ Falls das Schiff das Manöver vollständig ausführt, schiebt man es mit den vorderen Stoppern um das Ende der Schablone anstatt mit den hinteren Stoppern.<br> • <strong>Segnor-Looping:</strong> Die Flugrichtungen %SLOOPLEFT% (linker Segnor-Looping) und %SLOOPRIGHT% (rechter Segnor-Looping) lassen das Schiff eine sanfte Kurve fliegen und dann seine Blickrichtung um 180° drehen. Hierfür wird dieselbe Schablone wie für die %BANKLEFT%- und %BANKRIGHT%-Manöver verwendet.<br> ◊ Falls das Schiff das Manöver vollständig ausführt, schiebt man es mit den vorderen Stoppern um das Ende der Schablone anstatt mit den hinteren Stoppern.<br> • <strong>Tallon-Rolle:</strong> Die Flugrichtungen %TROLLLEFT% (linke Tallon-Rolle) und %TROLLRIGHT% (rechte Tallon- Rolle) lassen das Schiff eine enge Kurve fliegen, wobei sich seine Blickrichtung um 180° ändert. Hierfür wird dieselbe Schablone wie für die %TURNLEFT%- und %TURNRIGHT%-Manöver verwendet.<br>◊ Falls das Schiff das Manöver vollständig ausführt, wird es vor seiner Platzierung am anderen Ende der Schablone um 90° gedreht (nach links für eine %TROLLLEFT%, nach rechts für eine %TROLLRIGHT%). Dann platziert man das Schiff so, dass die Markierung an der Basisseite auf einer Höhe mit der linken Kante, der Mittellinie oder der rechten Kante des Endes der Schablone ist (ähnlich wie bei einer Fassrolle).<br> Überschneidet sich ein Schiff beim Ausführen einer Koiogran-Wende, eines Segnor-Loopings oder einer Tallon-Rolle mit einem anderen Schiff, führt es das Manöver teilweise aus und verwendet dabei seine hinteren Stopper, als würde es das Basismanöver ausführen, das dieselbe Schablone verwendet.<br> • <strong>Stationär:</strong> Die Flugrichtung %STOP% (Stationär) lässt das Schiff auf seiner gegenwärtigen Position verharren. Zu dieser Flugrichtung gibt es keine Schablone.<br> ◊ Ein Schiff, das dieses Manöver ausführt, zählt, als hätte es ein Manöver ausgeführt, es überschneidet sich nicht mit irgendwelchen Schiffen, löst Effekte durch Überschneidungen mit Hindernissen in Reichweite 0 aus und es bleibt in Reichweite 0 zu allen Objekten, die es vor dem Ausführen des Manövers berührt hat.<br> ◊ Stationäre Manöver sind keine Vorwärtsmanöver.<br> ◊ Ein Schiff, das ein stationäres Manöver ausführt, führt dieses Manöver stets vollständig aus.<br> Jedes <strong>Rückwärtsmanöver</strong> beginnt damit, dass die Schablone zwischen die hinteren Stopper der Schiffsbasis geschoben wird (und nicht zwischen die vorderen). Anschließend schiebt man das Schiff mit den vorderen Stoppern um das andere Ende der Schablone (anstatt mit den hinteren).<br> • <strong>Rückwärtsgerade:</strong> Die Flugrichtung %REVERSESTRAIGHT% (Rückwärtsgerade) lässt das Schiff geradewegs nach hinten fliegen. Hierfür wird dieselbe Schablone wie für das %STRAIGHT%-Manöver verwendet.<br> ◊ Eine Rückwärtsgerade ist ein Rückwärtsmanöver und kein Vorwärtsmanöver.<br> • Rückwärtsdrehung: Die Flugrichtungen %REVERSEBANKLEFT% (linke Rückwärtsdrehung) und %REVERSEBANKRIGHT% (rechte Rückwärtsdrehung) lassen das Schiff eine sanfte Kurve fliegen, wobei sich seine Blickrichtung um 45° ändert. Hierfür werden dieselben Schablonen wie für die %BANKLEFT%- und %BANKRIGHT%-Manöver verwendet.<br> ◊ Eine Rückwärtsdrehung ist ein Rückwärtsmanöver und kein Vorwärtsmanöver."
            "FOKUSSIEREN":
                name: "Fokussieren"
                text: "Piloten können fokussieren, um sich zu konzentrieren und ihre Kampfkraft zu stärken. Sobald ein Schiff die %FOCUS%-Aktion durchführt, erhält es 1 Fokusmarker. Solange ein Schiff mindestens 1 Fokusmarker hat, ist es <strong>fokussiert</strong>. Fokusmarker sind kreisförmige, grüne Marker. Für fokussierte Schiffe gelten folgende Regeln:<br> • Solange ein fokussiertes Schiff einen Angriff durchführt, darf es während des Schrittes „Angriffswürfel modifizieren“ einen Fokusmarker ausgeben, um alle seine %FOCUS%-Ergebnisse in %HIT%-Ergebnisse zu ändern.<br> • Solange ein fokussiertes Schiff verteidigt, darf es während des Schrittes „Verteidigungswürfel modifizieren“ einen Fokusmarker ausgeben, um alle seine %FOCUS%-Ergebnisse in %EVADE%-Ergebnisse zu ändern.<br> Außerdem gilt:<br> • Hat ein Schiff keine %FOCUS%-Ergebnisse, kann es keinen Fokusmarker ausgeben, um %FOCUS%-Ergebnisse in %EVADE%- oder %HIT%-Ergebnisse zu ändern.<br> • Wenn eine Fähigkeit besagt, dass ein Schiff einen Fokusmarker erhält, ist dies etwas anderes als das Durchführen einer %FOCUS%-Aktion. Ein Schiff, das einen Fokusmarker erhält, ohne die Aktion durchzuführen, kann in dieser Runde immer noch die %FOCUS%-Aktion durchführen."
            "FRAKTION":
                name: "Fraktion"
                text: "Aktuell gibt es sieben Spielfraktionen: Rebellen (die Rebellen-Allianz), Imperium (das Galaktische Imperium), Abschaum (Abschaum und Kriminelle), Widerstand, Erste Ordnung, Republik (die Galaktische Republik) und Separatisten (Separatistenallianz). Alle Schiffskarten sowie einige Aufwertungskarten gehören einer dieser Fraktionen an. Im Normalfall ist es nicht möglich, dass eine Staffel Karten aus mehreren Fraktionen enthält.<br> • Aufwertungskarten können von jeder Fraktion verwendet werden, es sei denn, sie haben eine Beschränkung."
            "GEHEIME ZUSTÄNDE":
                name: "Geheime Zustände"
                text: "Siehe Zustandskarten."
            "GEKOPPELTE AKTION":
                name: "Gekoppelte Aktionen"
                text: """Gekoppelte Aktionen erlauben, dass ein Schiff nach dem Durchführen einer Aktion eine zweite Aktion durchführt. Schiffs- und Aufwertungskarten können rechts neben ihrer Aktionsleiste eine gekoppelte Aktionsleiste haben. Nachdem ein Schiff eine Aktion aus seiner Aktionsleiste durchgeführt hat, kann es die damit verknüpfte Aktion aus der gekoppelten Aktionsleiste durchführen.<br> • Wenn man nach dem Durchführen einer Aktion, die mit einer gekoppelten Aktion verknüpft ist, die gekoppelte Aktion abhandeln will, wird sie der Fähigkeits-Warteschlange hinzugefügt. Falls ein Schiff mehrere Aktionen hat, die an dieselbe Anfangsaktion gekoppelt sind (z. B. %FOCUS%<i class="xwing-miniatures-font xwing-miniatures-font-linked"></i>%BARRELROLL% und %FOCUS%<i class="xwing-miniatures-font xwing-miniatures-font-linked"></i>%BOOST% ), kann es nur eine gekoppelte Aktion wählen und sie der Warteschlange hinzufügen.<br> • Eine gekoppelte Aktion kann nach dem Durchführen der verknüpften Aktion durchgeführt werden, auch wenn diese Aktion durch einen Karteneffekt oder anderen Spieleffekt gewährt wurde.<br> • Nachdem ein Schiff eine gekoppelte Aktion durchgeführt hat, kann es jene Aktion nicht verwenden, um der Warteschlange eine weitere gekoppelte Aktion hinzuzufügen. Falls ein Schiff zum Beispiel sowohl %FOCUS%<i class="xwing-miniatures-font xwing-miniatures-font-linked"></i>%BARRELROLL% als auch %BARRELROLL%<i class="xwing-miniatures-font xwing-miniatures-font-linked"></i>%EVADE% auf seiner Aktionsleiste hat, kann es die gekoppelte %BARRELROLL%-Aktion, die mit %FOCUS% verknüpft ist, nicht als %BARRELROLL%-Aktion nutzen, um eine gekoppelte %FOCUS%-Aktion durchzuführen."""
            "GENORMT":
                name: "Genormt"
                text: "Einige Aufwertungskarten haben die Beschränkung <strong>genormt</strong>. Wenn ein Spieler beim Zusammenstellen seiner Staffel eines seiner Schiffe mit einer genormten Karte ausrüstet, muss er jedes Schiff dieses Schiffstyps (d. h. mit dem exakt gleichen Schiffsnamen) in seiner Staffel mit einer Kopie jener genormten Karte ausrüsten, falls es die Schiffsfähigkeit besitzt, die auf jener Karte benannt wird.<br> • Standardausstattung-Schiffe können keine zusätzlichen Aufwertungen ausrüsten und ignorieren die Beschränkung <strong>genormt</strong>."
            "GERADE":
                name: "Gerade"
                text: "%STRAIGHT%; Siehe Flugrichtung."
            "GERÄT":
                name: "Gerät"
                text: "Geräte sind Objekte, die auf der Spielfläche existieren und durch Markierungen
aus Pappe dargestellt werden. Bestimmte Karten erlauben es einem Schiff, einen
bestimmten Gerätetyp auf die Spielfläche zu legen, und stellen zusätzliche Regeln
bereit, wie sich dieses Gerät verhält. Es gibt verschiedene Möglichkeiten, wie ein
Gerät auf der Spielfläche erscheint oder seine Position verändert. Manche Geräte
geben spezifische Anweisungen, wie sie auf der Spielfläche platziert werden,
während andere einen oder mehrere der folgenden Prozesse nutzen:<br>
Um ein Gerät <strong>abzuwerfen</strong>, befolgt man die nachstehenden Schritte:<br>
1. Die auf der Aufwertungskarte genannte Schablone wird herausgesucht.<br>
2. Die Schablone wird zwischen die hinteren Stopper des Schiffes gesteckt.<br>
3. Das auf der Aufwertungskarte genannte Gerät wird auf der Spielfläche platziert
und seine Stopper werden um das andere Ende der Schablone geschoben.
Dann wird die Schablone entfernt.<br>
Um ein Gerät zu <strong>starten</strong>, befolgt man die nachstehenden Schritte:<br>
1. Die auf der Aufwertungskarte genannte Schablone wird herausgesucht.<br>
2. Die Schablone wird zwischen die vorderen Stopper des Schiffes gesteckt.<br>
3. Das auf der Aufwertungskarte genannte Gerät wird auf der Spielfläche platziert
und seine Stopper werden um das andere Ende der Schablone geschoben.
Dann wird die Schablone entfernt.<br>
Um ein Gerät <strong>neu zu positionieren</strong>, befolgt man die folgenden Schritte:<br>
1. Das Gerät wird so genommen und versetzt, wie im Effekt beschrieben wird,
der die Neupositionierung hervorruft. Dies kann eine Schablone erfordern oder
das Gerät kann an den Schiffsstoppern platziert werden.<br>
2. Ein Gerät, das neu positioniert wird, zählt nicht, als würde es Hindernisse
überschneiden oder sich durch diese hindurchbewegen.<br>
Manche Geräte können <strong>detonieren</strong>. Sobald ein Gerät detoniert, werden abhängig
von der Art des Gerätes bestimmte Effekte ausgelöst. Nachdem diese Effekte
abgehandelt worden sind, wird jenes Gerät entfernt.<br>
• Beispiele für das Abwerfen und Starten finden sich im Anhang.<br>
• Auf einer Seite jedes Geräts befindet sich ein weißer Rand, um zu erkennen, zu
welchem Spieler es gehört.<br>
• Die meisten Geräte werden während der Systemphase platziert. Jedes Schiff
kann nur ein Mal pro Systemphase ein Gerät platzieren.<br>
• Die meisten Geräte haben eine zugehörige Aufwertungskarte, die es dem
Spieler erlaubt, das Gerät durch Ausgeben von %CHARGE% zu platzieren. Viele dieser
Karten sind Aufwertungen vom Typ Nutzlast (%DEVICE%).<br>
• Sobald ein Effekt ein Schiff anweist, ein Gerät zu platzieren, das zu einer
anderen Karte gehört (z. B. „Wirf 1 Bombe ab“), muss jenes Schiff sämtliche
Kosten bezahlen (z. B. %CHARGE% ausgeben) und das Gerät so platzieren, wie es die
zugehörige Karte vorschreibt. Andere Effekte können die Art, wie das Gerät
platziert wird, wie gewohnt verändern (z. B. die „Wendiger Bomber“-Fähigkeit
des TIE-Bombers).<br>
• Jedes Schiff kann sich nicht in derselben Phase enttarnen und ein Gerät
platzieren.<br>
• Geräte sind keine Hindernisse, aber sie sind Objekte, es sei denn, eine Regel
besagt etwas anderes.<br>
• Wird ein Gerät in Überschneidung mit einem Schiff platziert, platziert man es
unter der Schiffsbasis.<br>
• Wird ein Gerät, das bei Überschneidung detoniert, unter mehr als
1 Schiffsbasis platziert, detoniert es sofort und der Spieler, der das Gerät
platziert, entscheidet, welches Schiff davon betroffen ist.<br>
• Die Stopper eines Gerätes zählen als Bestandteil des Gerätes, wenn es darum
geht, die Reichweite von oder zu ihm abzumessen oder zu bestimmen, ob sich
etwas mit dem Gerät überschneidet oder sich durch es hindurchbewegt.<br>
• Ein Gerät kann nicht (auch nicht partiell) außerhalb der Spielfläche platziert
werden. Wenn das passieren würde, wird das Spiel auf den Zustand vor dem
Platzieren des Gerätes zurückgesetzt – das Gerät wird nicht platziert, ggf.
ausgegebene Ladungen werden wiederhergestellt, andere bezahlte Kosten
werden zurückerstattet und der Spieler kann entscheiden, das Gerät nicht zu
platzieren.<br>
• Führt ein Schiff ein Manöver teilweise aus, zählt nur der Teil der Schablone, der
zwischen Ausgangs- und Endposition des Schiffes liegt, für Überschneidungen
mit Geräten sowie für die Frage, ob sich das Schiff durch ein Gerät
hindurchbewegt hat. Der Teil der Schablone, über den das Schiff zurückbewegt
wurde, wird ignoriert."
            "GESCHÜTZTURM-WINKEL":
                name: "Geschützturm-Winkel"
                text: "%TURRETARC%; Siehe Winkel"
            "GESCHWINDIGKEIT":
                name: "Geschwindigkeit"
                text: "Jedes Manöver besteht aus drei Elementen: Geschwindigkeit (eine Zahl zwischen
0 und 5), Schwierigkeit (rot, weiß oder blau) und Flugrichtung (ein Pfeil oder ein
anderes Symbol).<br>
• Die Geschwindigkeit eines Manövers kann nur im Rahmen der existierenden
Schablonen erhöht oder verringert werden.<br>
◊ Beispielsweise kann die Geschwindigkeit eines [3 %SLOOPRIGHT%]-Manövers nicht erhöht
und die Geschwindigkeit eines [1 %STRAIGHT%]-Manövers nicht verringert werden.<br>
• Die Geschwindigkeit eines [0 %STOP%]-Manövers kann weder erhöht noch verringert
werden.<br>
• Auch wenn ein Schiff ein Manöver nur teilweise ausführt, wird es behandelt,
als hätte es ein Manöver mit der angegebenen Geschwindigkeit ausgeführt."
            "GLEICHZEITIGER ANGRIFF":
                name: "Gleichzeitiger Angriff"
                text: "Schiffe mit gleichen Initiativwerten greifen im Grunde simultan an. Um dies
darzustellen, wird ein Schiff, das während der Kampfphase zerstört wird, erst
dann entfernt, nachdem alle Schiffe mit derselben Initiative wie das gegenwärtig
kämpfende Schiff gekämpft haben."
            "HINDERNISSE":
                name: "Hindernisse"
                text: "Hindernisse stellen Gefahren dar, die ein Schiff beeinträchtigen oder
beschädigen können. Ein Schiff kann bestimmte Effekte erleiden, wenn es sich
durch ein Hindernis hindurchbewegt, sich mit ihm überschneidet, oder solange
es in Reichweite 0 zu ihm ist.
Ein Schiff, das sich durch ein Hindernis hindurchbewegt oder sich mit ihm
überschneidet, erleidet je nach Art des Hindernisses einen Effekt, nachdem es
seine Bewegung abgehandelt hat:<br>
• <strong>Asteroid:</strong> Das Schiff erleidet 1 %HIT%-Schaden. Wirf 1 Angriffswürfel. Bei einem
%HIT%- oder %CRIT%-Ergebnis erleidet das Schiff 1 zusätzlichen %HIT%-Schaden.<br>
• <strong>Brandbombe:</strong> Wirf 1 Angriffswürfel. Bei einem %HIT%- oder 󲁨-Ergebnis
erleidet das Schiff 1 %HIT%-Schaden, bei einem %FOCUS%-Ergebnis erhält es
1 Stressmarker. Dann überspringt das Schiff seinen Schritt „Aktion
durchführen“ dieser Runde.<br>
• <strong>Elektrodüppel-Wolke:</strong> Das Schiff verliert sämtliche eigenen und fremden
Zielerfassungen und dann wird ihm 1 Störsignalmarker zugeordnet.
Wirf 1 Angriffswürfel. Bei einem %HIT%- oder %CRIT%-Ergebnis wird dem Schiff
1 Stressmarker zugeordnet.<br>
• <strong>Ersatzteile:</strong> Dem Schiff wird 1 Anstrengungsmarker zugeordnet.
Wirf 1 Angriffswürfel. Bei einem %HIT%- oder %CRIT%-Ergebnis wird dem Schiff
1 Stressmarker zugeordnet.<br>
• <strong>Freie Fracht:</strong> Dem Schiff wird 1 Anstrengungsmarker zugeordnet.
Wirf 1 Angriffswürfel. Bei einem %HIT%- oder %CRIT%-Ergebnis wird dem Schiff
1 Stressmarker zugeordnet.<br>
• <strong>Gaswolke:</strong> Das Schiff verliert sämtliche eigenen und fremden Zielerfassungen
und dann wird ihm 1 Anstrengungsmarker zugeordnet. Wirf 1 Angriffswürfel.
Bei einem %HIT%-Ergebnis wird dem Schiff 1 Ionenmarker zugeordnet. Bei einem
%CRIT%-Ergebnis werden dem Schiff 3 Ionenmarker zugeordnet.<br>
• <strong>Trümmerwolke:</strong> Dem Schiff wird 1 Stressmarker zugeordnet. Wirf 1
Angriffswürfel. Bei einem %HIT%-Ergebnis erleidet das Schiff 1 %HIT%-Schaden. Bei
einem %CRIT%-Ergebnis erleidet das Schiff 1 %CRIT%-Schaden.<br>
• Falls ein Schiff beim Beenden seines Manövers ein Hindernis überschneidet,
überspringt es seinen Schritt „Aktion durchführen“.
Solange ein Schiff in Reichweite 0 eines Hindernisses ist, kann es diverse
Effekte erleiden.<br>
• <strong>Asteroid:</strong> Das Schiff kann keine Angriffe durchführen.<br>
• <strong>Elektrodüppel-Wolke:</strong> Das Schiff kann keine Ziele erfassen und nicht als
Ziel erfasst werden.<br>
• <strong>Gaswolke:</strong> Das Schiff kann keine Ziele erfassen und nicht als Ziel erfasst
werden. Das Schiff kann keine Angriffe durchführen.<br>
• <strong>Trümmerwolke:</strong> Das Schiff kann keine Angriffe durchführen.
Solange ein Schiff einen Angriff durchführt und der Angriff durch ein Hindernis
versperrt ist, wirft der Verteidiger 1 zusätzlichen Verteidigungswürfel.<br>
Außerdem gilt:<br>
• Hindernisse werden während des Schrittes „Hindernisse platzieren“ des
Spielaufbaus platziert.<br>
• Einige Karten können während des Spiels ebenfalls Hindernisse platzieren,
ähnlich dem Platzieren von Geräten.<br>
• Falls ein Hindernis so platziert wird, dass es sich mit einem oder mehreren
Schiffen überschneidet, handeln diese Schiffe jegliche Effekte dieser
Überschneidung ab.<br>
• Ein Schiff, das sich mit einem Hindernis überschneidet, kann weiterhin
Aktionen durchführen, die ihm von anderen Spieleffekten gewährt werden.<br>
• Führt ein Schiff ein Manöver teilweise aus, zählt nur der Teil der Schablone, der
zwischen Ausgangs- und Endposition des Schiffes liegt, für Überschneidungen
mit Hindernissen. Der Teil der Schablone, über den das Schiff zurückbewegt
wurde, wird ignoriert.<br>
• Bewegt sich ein Schiff durch mehrere Hindernisse oder überschneidet
es sich mit mehreren Hindernissen, erleidet es die Effekte jedes
einzelnen Hindernisses, beginnend mit dem, das am nächsten zu seiner
Ausgangsposition ist und dann weiter entlang der Schablone.<br>
• Ist ein Schiff vor seiner Bewegung in Reichweite 0 eines Hindernisses, erleidet
es nicht die Effekte jenes Hindernisses, es sei denn, es bewegt sich erneut
durch das Hindernis hindurch oder überschneidet sich mit ihm.<br>
• Ist ein Schiff vor seiner Bewegung in Reichweite 0 eines Hindernisses, erleidet
es nicht die Effekte jenes Hindernisses, außer es überschneidet das Hindernis
erneut.<br>
• Riesige Schiffe haben eigene Regeln in Bezug auf Hindernisse (vgl. Anhang:
Riesige Schiffe)."
            "HINDURCHBEWEGEN":
                name: "Hindurchbewegen"
                text: "Siehe Bewegen."
            "HINTER":
                name: "Hinter"
                text: "Siehe Winkel."
            "HÜLLE":
                name: "Hülle"
                text: "Die gelbe Zahl auf der Schiffskarte gibt den Hüllenwert des
Schiffes an. Der Hüllenwert besagt, wie viele Schadenskarten das
Schiff braucht, um zerstört zu werden.<br>
• Die <strong>übrige Hülle</strong> eines Schiffes ist die Differenz zwischen
seinem Hüllenwert und der Anzahl der Schadenskarten, die
es hat."
            "ID-MARKER":
                name: "ID-Marker"
                text: "ID-Marker verknüpfen die Schiffe auf der Spielfläche mit ihren jeweiligen
Schiffskarten und ggf. auch mit den Zielen, die sie erfasst haben. Während des
Spielaufbaus muss jedem Schiff ein ID-Marker zugeordnet werden.
Um einem Schiff einen ID-Marker zuzuordnen, platziert man 1 ID-Marker auf der
Schiffskarte und steckt anschließend 2 zugehörige ID-Marker in die Anhebung
der Schiffsbasis. Die nach außen zeigende Seite muss farblich zur Oberseite des
Markers auf der Schiffskarte passen.<br>
• ID-Marker dürfen auch individuell eingefärbt werden (mit Filzstiften, Pinsel
und Farbe etc.), solange jeder Spieler für alle seine aufgestellten Schiffe
gleichfarbige Marker verwendet.<br>
• Während des Spielaufbaus muss jeder Spieler ID-Marker verwenden, die
sich farblich von denen des Gegenspielers unterscheiden, damit jedes Schiff
eindeutig einer Seite zuzuordnen ist."
            "IONEN":
                name: "Ionen"
                text: "Ein Schiff ist <strong>ionisiert</strong>, solange es eine bestimmte Anzahl an
Ionenmarkern (%ION%), abhängig von seiner Größe, hat: mindestens 1 bei
einem kleinen Schiff, mindestens 2 bei einem mittleren Schiff und
mindestens 3 bei einem großen Schiff. Ionenmarker sind rote Marker. 
Ein ionisiertes Schiff kann keine Ziele erfassen und keine Zielerfassungen
aufrechterhalten. Sobald ein Schiff ionisiert wird, verliert es alle Zielerfassungen,
die es aufrechterhält.<br>
In der Aktivierungsphase wird ein ionisiertes Schiff wie folgt aktiviert:<br>
1. Das ionisierte Schiff deckt sein Rad wie gewohnt auf.<br>
2. Während des Schrittes „Manöver ausführen“ führt das ionisierte Schiff ein
ionenmanöVer mit derselben Orientierung aus, die auf dem Rad gezeigt wird.
Ein Ionenmanöver ist ein blaues Drehmanöver oder eine blaue Gerade [%TURNLEFT%, %STRAIGHT%, %TURNRIGHT%]
mit Geschwindigkeit 1.<br>
• Falls das Rad des ionisierten Schiffes ein stationäres Manöver [%STOP%] zeigt, führt
es sein Ionenmanöver als [1 %STRAIGHT%]-Manöver aus.<br>
• Flugrichtung, Schwierigkeit und Geschwindigkeit dieses Manövers können nicht
verändert werden, es sei denn, eine Fähigkeit bezieht sich ausdrücklich auf das
Ionenmanöver.<br>
3. Während des Schrittes „Aktion durchführen“ kann das Schiff nur die %FOCUS%-Aktion
durchführen.<br>
4. Falls ein ionisiertes Schiff ein Ionenmanöver ausgeführt hat, entfernt es am
Ende seiner Aktivierung alle seine Ionenmarker.<br>
Außerdem gilt:<br>
• Ein ionisiertes Schiff kann keine Aktionen außer der %FOCUS%-Aktion durchführen.<br>
• Schiffe können keine Fähigkeiten nutzen, die ausgelöst werden, wenn ein
ionisiertes Schiff sein Rad aufdeckt.<br>
• Falls ein Schiff, das während der Planungsphase ionisiert wurde, zu Beginn
seiner Aktivierung nicht länger ionisiert ist, wird das Schiff wie gewohnt
aktiviert."
            "INITIATIVE":
                name: "Initiative"
                text: "Der Initiativwert eines Schiffes ist die orangefarbene Zahl links neben dem
Schiffsnamen auf der Schiffskarte. Die Initiative bestimmt, in welcher Reihenfolge
die Schiffe während der Systemphase ihre Fähigkeiten verwenden können, während
der Aktivierungsphase aktiviert werden, während der Kampfphase kämpfen und
während des Spielaufbaus platziert werden.<br>
• Falls mehrere Fähigkeiten die Initiative eines Schiffes verändern, wird nur die
zuletzt verwendete Fähigkeit angewandt.<br>
◊ Endet der zuletzt verwendete Effekt (z. B. „am Ende der Kampfphase“),
bestimmt die zuletzt verwendete, immer noch aktive Fähigkeit den neuen
Initiativwert."
            "KAMPFPHASE":
                name: "Kampfphase"
                text: "Die Kampfphase ist die vierte Phase der Runde. Während dieser Phase
<strong>kämpfen</strong> alle Schiffe einzeln nacheinander, beginnend mit dem Schiff, das die
höchste Initiative hat, und dann weiter in absteigender Reihenfolge.
Sobald ein Schiff kämpft, darf es einen Angriff durchführen.<br>
• Nachdem alle Schiffe mit einer bestimmten Initiative gekämpft haben,
werden alle zerstörten Schiffe entfernt. Danach wird dieser Vorgang in
absteigender Initiativreihenfolge fortgesetzt, d. h. alle Schiffe mit der
nächstkleineren Initiative kämpfen, dann werden alle zerstörten Schiffe
entfernt usw.<br>
• Hat ein Spieler mehrere Schiffe mit gleicher Initiative, lässt er sie in beliebiger
Reihenfolge kämpfen, wobei ein Schiff fertig gekämpft haben muss, bevor das
nächste Schiff mit gleicher Initiative kämpfen kann.<br>
• Haben mehrere Spieler Schiffe mit gleicher Initiative, bestimmt die
Spielerreihenfolge, in welcher Reihenfolge sie kämpfen. Zuerst lässt der
Startspieler alle seine Schiffe mit diesem Initiativwert kämpfen, dann lässt der
zweite Spieler alle seine Schiffe mit diesem Initiativwert kämpfen.<br>
• Auch entwaffnete Schiffe kämpfen, obwohl sie keine Angriffe durchführen
können.<br>
• Jedes Schiff kämpft während dieser Phase nur ein Mal."
            "KOIOGRAN-WENDE":
                name: "Koiogran-Wende"
                text: "%KTURN%, Siehe Flugrichtung."
            "KOMMANDOPUNKTE":
                name: "Kommandopunkte"
                text: "Jede Schiffskarte kostet Kommandopunkte. Diese
Kosten werden während der Staffelzusammenstellung verwendet, um je nach
Spielmodus eine zulässige Staffel zu generieren. Die jeweiligen Punktekosten
können unter
www.asmodee.de/StarWars eingesehen werden."
            "KONFIGURATOR-SCHLÜSSELWÖRTER":
                name: "Konfigurator-Schlüsselwörter"
                text: "Siehe Staffelzusammenstellung."
            "KONSTRUKT":
                name: "Konstrukt"
                text: "Konstrukte sind eine kommende Spielmechanik, auf die sich manche Karten
beziehen, um mit zukünftigen Erweiterungen kompatibel zu sein. Aktuell gibt es
noch keine Konstrukte."
            "KOORDINIEREN":
                name: "Koordinieren"
                text: "Piloten können koordinieren, um befreundete Schiffe zu unterstützen. Sobald ein
Schiff die %COORDINATE%-Aktion durchführt, koordiniert es. Ein <strong>koordinierendes</strong> Schiff ist ein
Schiff, das in folgenden Schritten versucht zu koordinieren:<br>
1. Das koordinierende Schiff misst die Reichweite zu beliebig vielen befreundeten
Schiffen ab.<br>
2. Es wählt ein anderes befreundetes Schiff in Reichweite 1–2.<br>
3. Das gewählte Schiff darf 1 Aktion durchführen.<br>
Außerdem gilt:<br>
• Das Koordinieren scheitert, falls kein gültiges Schiff gewählt wird.<br>
◊ Das Koordinieren scheitert nicht, wenn das gewählte Schiff versucht eine
Aktion durchzuführen und dabei scheitert.<br>
• Wenn eine Fähigkeit ein Schiff zum Koordinieren auffordert, ist dies etwas
anderes als das Durchführen einer %COORDINATE%-Aktion.<br>
◊ Ein Schiff, das koordiniert, ohne die Aktion durchzuführen, kann in dieser
Runde immer noch die %COORDINATE%-Aktion durchführen.<br>
◊ Ein Schiff, das koordiniert, ohne die Aktion durchzuführen, darf ein
befreundetes, verbündetes oder feindliches Schiff wählen. Falls es ein Schiff
wählt, das von einem anderen Spieler kontrolliert wird, wählt der Spieler,
der das koordinierte Schiff kontrolliert, die Aktion, die das Schiff durchführt."
            "LADUNG":
                name: "Ladung"
                text: "<strong>Ladungen</strong> (%CHARGE%, %FORCE%, %SHIELD% und %ENERGY%) sind doppelseitige Marker, die bestimmte begrenzte Ressourcen
nachhalten. Auf einigen Schiffs- und Aufwertungskarten wird beschrieben, wie diese
Ladungen zu verwenden sind.
Alle Ladungen unterliegen den folgende Regeln:<br>
• Wenn ein Effekt besagt, dass ein Schiff eine Ladung <strong>wiederherstellt</strong>, wird
eine inaktive Ladung des Schiffes (von einer Schiffs- oder Aufwertungs karte)
auf die aktive Seite gedreht. Liegen alle Ladungen bereits auf der aktiven Seite,
kann das Schiff keine Ladung wiederherstellen.<br>
• Wenn ein Effekt besagt, dass ein Schiff eine Ladung <strong>verliert</strong>, wird eine
Ladung, die der betreffenden Karte zugeordnet ist, auf die inaktive Seite
gedreht.<br>
• Wenn ein Schiff eine Ladung <strong>ausgibt</strong>, verliert es jene Ladung. Ein Schiff kann
keine Ladung für einen Effekt ausgeben, falls alle seine Ladungen, die für jenen
Effekt zur Verfügung stehen, bereits inaktiv sind.<br>
• Jede Karte mit einer <strong>Ladungskapazität</strong> (eine Zahl) beginnt das Spiel mit
einer Anzahl Ladungen in Höhe der Ladungskapazität. Jede Ladung startet auf
ihre aktive Seite gedreht.<br>
• Die Ladungen, die zu einer Ladungskapazität mit Symbol für wiederkehrende
Ladungen gehören, werden <strong>wiederkehrende Ladungen</strong> genannt. Umgekehrt
werden die Ladungen, die zu einer Ladungskapazität ohne Symbol für
wiederkehrende Ladungen gehören, <strong>nicht-wiederkehrende Ladungen</strong>
genannt. Ladungen, die stattdessen über einen Zeitraum hinweg verloren
werden, heißen <strong>negative wiederkehrende Ladungen</strong>.
<h5>Ladungsarten</h5>
Es gibt vier unterschiedliche Ladungsarten:<br>
• <strong>Standardladungen</strong> (%CHARGE%). Sie repräsentieren eine begrenzte Ressource wie
Munition oder die Ausdauer eines Piloten und werden mit goldenen Zahlen
dargestellt.<br>
• <strong>Machtladungen</strong> (%FORCE%). Sie repräsentieren den Fluss der Macht und werden
mit violetten Zahlen dargestellt.<br>
• <strong>Schilde</strong> (%SHIELD%). Sie repräsentieren die Stärke des Verteidigungsschildes eines
Schiffes und werden mit blauen Zahlen dargestellt.<br>
• <strong>Energie</strong> (%ENERGY%). Sie repräsentiert den Energieverbrauch der Schiffsmaschinen
eines riesigen Schiffes (vgl. Anhang: Riesige Schiffe) und wird mit
magentafarbenen Zahlen dargestellt.<br>
<h5>Wiederkehrende Ladungen</h5>
Manche Ladungskapazitäten, Schildkapazitäten
und alle Machtvermögen haben ein Symbol für
wiederkehrende ladunGen. Während der Endphase
stellt jede Karte mit einem <strong>Symbol für wiederkehrende
Ladungen</strong> (%RECURRING%) 1 Ladung pro Symbol für wiederkehrende
Ladungen wieder her.
<h5>Negative wiederkehrende Ladungen</h5>
Manche Ladungskapazitäten haben ein Symbol für
<strong>negative wiederkehrende Ladungen</strong> (%NEGATIVERECURRING%). Während
der Endphase verliert jede Karte mit einem Symbol für
negative wiederkehrende Ladungen 1 Ladung pro Symbol
für negative wiederkehrende Ladungen.
<h5>Standardladung (%CHARGE%)</h5>
Standardladungen (%CHARGE%) können alles Mögliche von begrenzter Munition bis zu
erschöpfenden Tätigkeiten darstellen.<br>
• <strong>Schiffsladungen</strong> sind Ladungen auf Schiffen und <strong>Aufwertungsladungen</strong>
sind Ladungen auf Aufwertungskarten.<br>
• Hat eine Aufwertungskarte eine Ladungskapazität, werden die %CHARGE% oberhalb
dieser Aufwertungskarte platziert (nicht oberhalb der Schiffskarte, an die sie
angelegt ist).<br>
◊ Wird ein Schiff von einer Aufwertungskarte zum Ausgeben von %CHARGE% aufgefordert, werden die %CHARGE% von ebendieser Aufwertungskarte ausgegeben.
<h5>Machtladung (%FORCE%)</h5>
Machtladungen (%FORCE%) repräsentieren das Gespür mancher Piloten und
Crewmitglieder für die Macht.
Solange ein Schiff einen Angriff durchführt, kann es während des Schrittes
„Angriffswürfel modifizieren“ beliebig viele %FORCE% ausgeben, um ebenso viele seiner
%FOCUS%-Ergebnisse in %HIT%-Ergebnisse zu ändern. Solange ein Schiff verteidigt, kann
es während des Schrittes „Verteidigungswürfel modifizieren“ beliebig viele %FORCE%
ausgeben, um ebenso viele seiner %FOCUS%-Ergebnisse in %EVADE%-Ergebnisse zu ändern.<br>
• Hat eine Aufwertungskarte ein Machtvermögen, erhöht dies das
Machtvermögen des Schiffes. Die %FORCE% werden oberhalb der Schiffskarte
platziert, an welche die Aufwertungskarte angelegt ist (nicht oberhalb der
Aufwertung selbst).<br>
◊ Eine Schiffskarte ohne Machtvermögen hat ein Machtvermögen von 0.
Dieses kann durch Aufwertungskarten mit Machtvermögen erhöht werden.<br>
◊ Falls ein Schiff wiederkehrende %FORCE% aus verschiedenen Quellen hat, ist die
Anzahl der Symbole für wiederkehrende Ladungen nicht kumulativ. Während
der Endphase stellt jedes Schiff mit Machtvermögen eine Anzahl an %FORCE% in
Höhe der höchsten Anzahl an Symbolen für wiederkehrende Ladungen seiner
Karten mit Machtvermögen wieder her. Falls beispielsweise ein Schiff mit
einem Machtvermögen von 0 zwei %CREW%-Karten mit Machtvermögen „+1“
und jeweils einem Symbol für wiederkehrende %FORCE% besitzt, so hat es ein
gesamtes Machtvermögen von 2, stellt aber während der Endphase nur
1 %FORCE% wieder her.<br>
◊ Wird ein Schiff von einer Aufwertungskarte zum Ausgeben von %FORCE%
aufgefordert, werden die %FORCE% von der Schiffskarte ausgegeben.
<h5>Schild (%SHIELD%)</h5>
Schilde (%SHIELD%) stellen defensive Energiebarrieren dar. Solange ein Schiff mindestens
einen aktiven Schildmarker hat, <strong>hat es Schilde</strong>.
Solange ein Schiff verteidigt, bieten Schilde Schutz gegen Schaden (vgl. Schaden).
Außerdem gilt:<br>
• Falls eine Aufwertungskarte eine Schildkapazität hat, erhöht dies die
Schildkapazität des Schiffes. Die %SHIELD% werden oberhalb der Schiffskarte platziert,
an welche die Aufwertungskarte angelegt ist (nicht oberhalb der Aufwertung
selbst).<br>
◊ Ein Schiff ohne Schildkapazität auf seiner Karte besitzt eine Schildkapazität
von 0. Dieser Wert kann jedoch durch Aufwertungskarten mit
Schildkapazität erhöht werden.
◊ Während der Endphase stellt jedes Schiff mit einer Schildkapazität eine
Anzahl %SHIELD% in Höhe der Anzahl an Symbolen für wiederkehrende %SHIELD% her (nur
riesige Schiffe haben wiederkehrende %SHIELD%, vgl. Anhang: Riesige Schiffe).
◊ Falls eine Aufwertungskarte das Schiff anweist, %SHIELD% auszugeben, werden
diese %SHIELD% von der Schiffskarte ausgegeben.
<h5>Energie (%ENERGY%)</h5>
Energie (%ENERGY%) stellt eine spezielle Ladung dar und wird nur von riesigen Schiffen
verwendet (vgl. Anhang: Riesige Schiffe)."
            "LIMITIERT":
                name: "Limitiert"
                text: "Manche Schiffs- und Aufwertungskarten sind <strong>limitiert</strong>. Man erkennt sie an den
Punkten (•) links neben ihren Kartennamen. Bei der Staffelzusammenstellung kann
man nicht mehr Kopien einer gleichnamigen Karte in die Staffel aufnehmen, als
Punkte vor ihrem Namen stehen.<br>
• Beispiel: Wenn vor dem Namen einer Karte 1 Punkt steht, kann sie nur ein Mal
in die Staffel aufgenommen werden. Stehen 2 Punkte vor dem Namen einer
Karte, kann sie nur zwei Mal in die Staffel aufgenommen werden.<br>
• Diese Beschränkung gilt über Kartentypen hinweg. Beispiel: Wenn eine Karte
zwei Punkte vor dem Namen hat, kann man zwei Schiffskarten mit diesem
Namen, zwei Aufwertungskarten mit diesem Namen oder eine Schiffskarte und
eine Aufwertungskarte mit diesem Namen in die Staffel aufnehmen.<br>
• Wenn eine Aufwertung auf einer Standardausstattung-Karte in der Staffel
eines Spielers als limitiert angezeigt wird, muss er sich an diese Limitierung
halten und darf nicht mehr Kopien der Aufwertung in seine Staffel aufnehmen,
als die Standardausstattung-Karte angibt, selbst wenn diese Kopien nicht
anzeigen, dass sie limitiert sind (also keine oder andere Punkte haben)."
            "LIMITIERT 2 (••) UND 3 (•••)":
                name: "Limitiert 2 (••) und 3 (•••)"
                text: "Wie im Regelheft des Grundspiels und im obigen Abschnitt erklärt, haben limitierte
Karten vor ihrem Namen eine Anzahl an schwarzen Punkten (•), die ihrem Limitiert-Wert entspricht. Im Grundspiel gibt es einige Karten mit einem einzigen Punkt (•),
die also auf 1 limitiert sind.
Hat eine Karte zwei Punkte (••) vor dem Namen, ist sie Limitiert 2, d. h. man kann
nicht mehr als zwei Karten mit diesem Namen in seine Staffel aufnehmen; hat eine
Karte drei Punkte (•••), ist sie Limitiert 3, was bedeutet, dass man nicht mehr als
drei Karten dieses Namens in die Staffel aufnehmen kann."
            "MANÖVER":
                name: "Manöver"
                text: "Ein Manöver ist eine Art von Bewegung, die ein Schiff ausführen kann. Jedes
Manöver besteht aus drei Elementen: Geschwindigkeit (eine Zahl zwischen 0 und
5), Schwierigkeit (rot, weiß oder blau) und Flugrichtung (ein Pfeil oder ein anderes
Symbol). Jede Flugrichtung wird zudem durch eine Orientierung näher definiert.
Ein Schiff kann ein Manöver <strong>ausführen</strong>, indem es die folgenden Schritte der Reihe
nach abhandelt:<br>
1. <strong>Schiff manövrieren:</strong> Während dieses Schrittes bewegt sich das Schiff
unter Verwendung der passenden Manöverschablone.<br>
a. Die passende Schablone für das Manöver wird aus dem Vorrat
herausgesucht.<br>
b. Die Schablone wird zwischen die vorderen Stopper des Schiffes geschoben,
sodass sie bündig an der Basis anliegt.<br>
c. Das Schiff wird angehoben und am anderen Ende der Schablone platziert,
wobei die hinteren Stopper des Schiffes um das Ende der Schablone
geschoben werden.<br>
d. Die Schablone wird in den Vorrat zurückgelegt.<br>
2. <strong>Schwierigkeit überprüfen:</strong> Während dieses Schrittes wird die Farbe
des Manövers überprüft. Ist es rot, erhält das Schiff 1 Stressmarker; ist
das Manöver blau, entfernt das Schiff 1 Stress-, 1 Anstrengungsmarker und
1 Erschöpfungsmarker.<br>
Außerdem gilt:<br>
• Wenn ein Schiff beim Ausführen eines Manövers am Ende der Schablone
auf einem anderen Objekt platziert würde, überschneidet es sich mit diesem
Objekt.<br>
• Wird beim Ausführen eines Manövers nur die Schablone auf einem anderen
Objekt platziert, hat sich das Schiff durch das Objekt hindurchbewegt.
• Wenn ein Schiff ein Manöver ausführt, wird es von seiner Ausgangsposition
genommen und an seine Endposition platziert. Die volle Breite der Schiffsbasis
spielt nur an Ausgangs- und Endposition eine Rolle, ansonsten wird sie
ignoriert.<br>
• Versucht ein gestresstes Schiff, ein Manöver mit roter Schwierigkeit
auszuführen, führt es stattdessen ein weißes [2 %STRAIGHT%]-Manöver aus.<br>
• Karteneffekte können dazu führen, dass ein Schiff ein Manöver ausführt, das
nicht auf seinem Rad auftaucht.<br>
• Manche Fähigkeiten beziehen sich außerhalb der Aktivierung eines Schiffes
auf dessen <strong>aufgedecktes manöver</strong>. Das aufgedeckte Manöver eines
Schiffes ist das auf seinem Rad ausgewählte Manöver, das bis zur nächsten
Planungsphase offen neben seiner Schiffskarte liegen bleibt.<br>
◊ Falls das Rad eines Schiffes nicht aufgedeckt ist oder ihm in dieser Runde
kein Rad zugeordnet wurde, hat jenes Schiff kein aufgedecktes Manöver."
            "MARKER":
                name: "Marker"
                text: "Manche Fähigkeiten bewirken, dass ein Schiff Marker erhält, ausgibt oder entfernt.
Marker werden verwendet, um Effekte festzuhalten. Es gibt sie in verschiedenen
Farben.<br>
• Sobald ein Schiff angewiesen wird einen Marker zu <strong>erhalten</strong>, wird ein Marker
aus dem Vorrat neben dem Schiff auf der Spielfläche platziert.<br>
• Sobald ein Schiff angewiesen wird einen Marker <strong>auszugeben</strong> oder eine
Anweisung besagt, dass ein Marker von einem Schiff <strong>entfernt</strong> wird,
legt man einen Marker jener Art vom Schiff in den Vorrat zurück.<br>
• Sobald ein Schiff angewiesen wird einen Marker auf ein anderes Schiff zu
<strong>transferieren</strong>, wird der Marker vom ersten Schiff entfernt und dem anderen
Schiff zugeordnet.<br>
◊ Ist eines der involvierten Schiffe nicht in der Lage, den entsprechenden
Marker zu entfernen oder zu erhalten, kann der Transfer nicht stattfinden.
<h5>Markerfarben und -formen</h5>
Anhand der Farben und Formen der Marker kann man sich leicht merken,
wann ein Marker entfernt wird und ob sein Effekt positiv oder negativ ist.<br>
• Grüne und orangefarbene Marker werden während der Endphase entfernt.
Diese Marker sind kreisförmig.<br>
• Blaue und rote Marker können unter bestimmten Umständen entfernt oder
ausgegeben werden. Diese Marker sind quadratisch.<br>
Außerdem gilt:<br>
• Die physische Position eines Markers auf der Spielfläche hat keinen Effekt und
zeigt lediglich an, zu welchem Schiff der Marker gehört."
            "MINEN":
                name: "Minen"
                text: "Eine Mine ist eine Art von Gerät, das über den Karteneffekt einer
%DEVICE%-Aufwertungskarte auf die Spielfläche kommt. Die zugehörige Aufwertungskarte
hat das Merkmale „Mine“ über ihrem Kartentext. Minen können während der
Systemphase abgeworfen oder gestartet werden und detonieren normalerweise,
nachdem ein Schiff sich durch sie hindurchbewegt oder sich mit ihnen
überschnitten hat."
            "MINIATUREN":
                name: "Miniaturen"
                text: "Ein Spieler muss alle Miniaturen für die Schiffe seiner Staffel besitzen. Sie dürfen
modifiziert sein, dabei müssen aber folgende Richtlinien befolgt werden:<br>
• Die Miniatur muss zum größten Teil aus Miniaturteilen der
Star Wars: 
X-Wing-Reihe bestehen.<br>
• Die Miniatur muss leicht als das Schiff erkennbar sein, das sie darstellt.<br>
• Die Miniatur darf nicht so modifiziert sein, dass irgendein Teil von ihr etwas
darstellt, das nicht geistiges Eigentum von Lucasfilm ist, u. A.: geschützte
Logos, Symbole oder andere ikonische bzw. ikonografische Elemente.<br>
• Die Größe oder From der Miniatur darf den Spielablauf nicht stören.<br>
• Soweit möglich muss die Miniatur muss auf einer offiziellen
Star Wars: 
X-Wing-Basis montiert sein, die der richtigen Größe und Form der originalen
Miniatur entspricht. Falls eine mögliche Berührung von zwei oder mehr
Miniaturen im Spiel zu einem Konflikt bei der Bewegung oder dem Platzieren
der Schiffe führen könnte, dürfen die Spieler die Miniaturen von ihren Plastik-Haltestäbchen entfernen, bis der Konflikt beigelegt ist.<br>
• Die Spieler dürfen die Basen der Schiffe weder in Form noch Größe verändern.<br>
• Haltestäbchen (einschließlich der Verbindungsaufnahme, die an den
Schiffsminiaturen befestigt ist) dürfen modifiziert oder durch eine alternative
Verbindungsmethode ersetzt werden.<br>
• Auf jede Schiffskarte findet sich zentriert im unteren Bereich ein Schiffstyp. 
Die Spieler können jede Miniatur von 
Star Wars: X-Wing verwenden, die 
dasselbe Schiffsmodell darstellen wie der Pilot in ihrer Staffel, solange es ohne
Schwierigkeiten als das Schiff, das es darstellt, zu erkennen ist und solange es
den passenden Schiffsmarker in seiner Basis hat. Beispiel: Die Modifzierter-YT-1300-Frachter-Miniatur kann verwendet werden, um eine YT1300-vom-Schrottplatz-Miniatur zu repräsentieren, falls die Rettungskapsel entfernt ist
und der passende Schiffsmarker in der Basis liegt."
            "MISSIONSPUNKTE":
                name: "Missionspunkte"
                text: "Missionspunkte entscheiden darüber, wer das Spiel gewinnt. Die Szenarioregeln
bestimmen, wie Missionspunkte verdient werden.<br>
• Zu Beginn des Spiels verdient jeder Spieler Missionspunkte in Höhe des
feindlichen Defizits.<br>
• Die Spieler halten ihre Missionspunkte mit Siegmarkierungen nach."
            "NACHLADEN":
                name: "Nachladen"
                text: "Piloten können nachladen, um neue Raketen scharf zu machen oder frische
Munition einzulegen. Sobald ein Schiff die %RELOAD%-Aktion durchführt, lädt es in folgenden
Schritten nach:<br>
1. Das Schiff wählt 1 seiner ausgerüsteten %TORPEDO%-, %MISSILE%- oder %DEVICE%-Aufwertungskarten,
deren aktive %CHARGE% unter ihrer Ladungskapazität sind.<br>
2. Jene Karte stellt 1 %CHARGE% wieder her.<br>
3. Das Schiff erhält 1 Entwaffnet-Marker.<br>
Außerdem gilt:<br>
• Wenn eine Fähigkeit einen Spieler zum Nachladen auffordert, ist dies etwas
anderes als das Durchführen der %RELOAD%-Aktion. Ein Schiff, das nachlädt, ohne die
Aktion durchzuführen, kann in dieser Runde immer noch die %RELOAD%-Aktion durchführen."
            "NEGATIVE WIEDERKEHRENDE LADUNGEN":
                name: "Negative wiederkehrende Ladungen"
                text: "%NEGATIVERECURRING%, Siehe Ladung"
            "NEGIEREN":
                name: "Negieren"
                text: "Wird ein Würfelergebnis negiert, nimmt man 1 Würfel, der das negierte Ergebnis
zeigt, und entfernt ihn physisch aus dem gemeinsamen Spielbereich. Alle negierten
Ergebnisse werden ignoriert.<br>
• Das Negieren von Würfeln zählt nicht als Würfelmodifikation."
            "OBJEKTE":
                name: "Objekte"
                text: "Schiffe, Hindernisse und Geräte sind allesamt <strong>Objekte</strong>, deren exakte Position auf
der Spielfläche festgehalten wird und durch Spieleffekte beschränkt ist.<br>
• Schiffe können Objekte als Ziele erfassen.<br>
• Schiffe können sich durch Objekte hindurchbewegen."
            "ORIENTIERUNG":
                name: "Orientierung"
                text: "Siehe Flugrichtung."
            "PILOTENFÄHIGKEIT":
                name: "Pilotenfähigkeit"
                text: "Siehe Fähigkeiten."
            "PLANUNGSPHASE":
                name: "Planungsphase"
                text: "Die Planungsphase ist die erste Phase der Runde. Während der Planungsphase
wählt jeder Spieler im Geheimen ein Manöver für jedes seiner Schiffe. Dazu nimmt
er ein zum Schiffstyp passendes Rad und dreht es so lange, bis der Pfeil auf das
gewünschte Manöver zeigt. Anschließend platziert er das Rad verdeckt auf der
Spielfläche neben dem passenden Schiff. Nachdem jedem Schiff ein Rad zugeordnet
worden ist, würfeln die Spieler, um die Spielerreihenfolge festzulegen:<br>
a. Jeder Spieler wirft 3 Angriffswürfel. Der Spieler mit den meisten
%CRIT%-Ergebnissen ist Startspieler.<br>
b. Herrscht Gleichstand, ist der Spieler mit den meisten %FOCUS%-Ergebnissen
Startspieler.<br>
c. Herrscht immer noch Gleichstand, ist der Spieler mit den meisten
%HIT%-Ergebnissen Startspieler.<br>
d. Herrscht immer noch Gleichstand, würfeln die Spieler erneut und beginnen
wieder bei Punkt a), bis der Gleichstand aufgelöst ist.<br>
• Diese Würfe können nicht durch Spieleffekte beeinflusst werden.
Nachdem die Spielerreihenfolge festgelegt worden ist, wird mit der Systemphase
fortgefahren.<br>
• Die Phase endet, nachdem die Spieler gewürfelt haben, um die
Spielerreihenfolge festzulegen.<br>
• Es gibt keine festgelegte Reihenfolge für das Zuordnen von Rädern.<br>
• Die Spieler dürfen ihre ausgewählten Manöver so lange ändern, bis die Spieler
gewürfelt haben, um die Spielerreihenfolge festzulegen.<br>
• Wer während der System- oder Aktivierungsphase eines seiner Räder
berühren oder ansehen will, muss seinen Gegner vorher informieren.<br>
• Falls ein Spieler vergisst, einem Schiff während der Planungsphase ein Rad
zuzuordnen, erhält das Schiff während seiner Aktivierung 1 Stressmarker und
führt dann ein <strong>Stressmanöver</strong> aus. Ein <strong>Stressmanöver</strong> ist ein weißes
[%STRAIGHT% 2]-Manöver."
            "POSITIONSMARKIERUNG":
                name: "Positionsmarkierung"
                text: "Positionsmarkierungen werden verwendet, um die Position von
Schiffen, die bei der Bewegung anderer Schiffe im Weg stehen,
festzuhalten. Dazu platziert man einen Positionsmarkierung an der
Ecke eines im Weg stehenden Schiffes und richtet die Aussparungen
des Markers an den Stoppern des Schiffes aus. Auf diese Weise wird
die Position des Schiffes präzise festgehalten, damit es später an
seinen exakten Ursprungsort zurückgesetzt werden kann."
            "PRIMÄRWAFFEN":
                name: "Primärwaffen"
                text: "Jedes Schiff hat bis zu zwei Primärwaffen auf seiner
Schiffskarte. Jede Primärwaffe hat ein Winkelsymbol und
einen roten Angriffswert. Während eines Angriffs wählt
das angreifende Schiff eine Waffe, mit der es den Angriff
durchführen will. Führt es den Angriff mit einer Primärwaffe
durch, bestimmt der Angriffswert, wie viele Angriffswürfel es
während des Schrittes „Angriffswürfel werfen“ wirft, und das
Winkelsymbol besagt, wo sich der Verteidiger befinden muss.<br>
• Primärwaffen setzen eine Angriffsreichweite von 0–3 voraus. Standardmäßig
haben Primärwaffen keine Kosten.<br>
• Da Primärwaffen keine Spezialwaffen sind, profitieren sie nicht von Fähigkeiten,
die durch das Durchführen eines Spezialangriffs ausgelöst werden."
            "RAD":
                name: "Rad"
                text: "Für jeden Schiffstyp gibt es ein individuelles
Rad. Erweiterungssets enthalten Räder
für alle Schiffe im Set. Während der
Planungsphase werden Räder verwendet,
um im Geheimen die Manöver der Schiffe
auszuwählen.<br>
• Wird ein Spieler angewiesen, das Rad
eines Schiffes einzustellen, kann er sich,
sofern nichts anderes angegeben ist,
auch für das Manöver entscheiden, das
bereits auf dem Rad eingestellt ist.<br>
• Es ist nicht erlaubt, das verdeckte Rad eines Gegners zu berühren oder
anzusehen. Wer ein eigenes verdecktes Rad berühren oder ansehen möchte,
muss seinen Gegner über sein Vorhaben informieren, bevor er das Rad
berührt.<br>
• Für jede Fraktion gibt es ein
Manöverrad-Aufrüstungsset, dessen
Räder etwas anders aufgebaut sind, da bei ihnen das Manöver über einen
ovalen Anzeiger ausgewählt wird."
            "REICHWEITE":
                name: "Reichweite"
                text: "Die <strong>Reichweite</strong> ist die Distanz zwischen zwei Objekten und wird mit dem Maßstab
abgemessen. Der Maßstab ist in drei nummerierte Reichweitenabschnitte
unterteilt.
Um die Reichweite zwischen zwei Objekten abzumessen, platziert man den
Maßstab an dem Punkt des ersten Objekts, der dem zweiten Objekt am
nächsten ist, und richtet das andere Ende des Maßstabes auf den Punkt des
zweiten Objekts, der am nächsten zum ersten Objekt ist. Ein Objekt ist <strong>in</strong> einer
Reichweite, wenn der nächste Punkt des zweiten Objekts in den entsprechenden
Reichweitenabschnitt des Maßstabes fällt.
Beim Abmessen der <strong>Angriffsreichweite</strong> für einen Angriff misst der Angreifer
von seinem Angriffswinkel zum nächsten Punkt des Zielschiffes, der <strong>im</strong>
Angriffswinkel des Angreifers liegt.<br>
• Folgende Begriffe werden in Bezug auf Reichweite verwendet:<br>
◊ <strong>Reichweite #–#:</strong> Die Reichweite enthält alle Reichweitenabschnitte vom
angegebenen Minimum bis zum angegebenen Maximum.<br>
◊ <strong>In:</strong> Ein Objekt ist in einer bestimmten Reichweite, wenn sein nächster Punkt
in diesen Reichweitenabschnitt fällt.<br>
◊ <strong>Innerhalb:</strong> Ein Objekt ist innerhalb einer bestimmten Reichweite,
wenn es komplett innerhalb dieses Reichweitenabschnitts ist und nicht
darüber hinausragt.<br>
◊ <strong>Jenseits:</strong> Ein Objekt ist jenseits einer bestimmten Reichweite, wenn kein
Teil von ihm zwischen dem Ausgangsobjekt und diesem Reichweitenabschnitt
liegt.<br>
• Wird die Reichweite zu einem Schiff gemessen, misst man stets zum nächsten
Punkt der Schiffsbasis und nie zum Schiffsmarker oder Modell.<br>
• Wird die Reichweite zu einem Nicht-Schiff-Objekt gemessen, misst man stets
zu dem Punkt des Objekts, der am nächsten zur Basis des Ausgangsschiffes
ist.<br>
• Beim Abmessen der Reichweite wird eine einzelne Kante des Maßstabes
verwendet; Breite und Dicke des Maßstabes spielen keine Rolle.<br>
• Reichweite 0 steht nicht auf dem Maßstab, wird aber verwendet, um die
Reichweite von Objekten zu beschreiben, die einander physisch berühren.<br>
◊ Nachdem ein Schiff ein Manöver teilweise ausgeführt hat, ist es in
Reichweite 0 des letzten Schiffes, mit dem es sich überschnitten hat.<br>
◊ Liegt ein Objekt physisch auf einem Hindernis oder Gerät, ist es in
Reichweite 0 zu ihm.<br>
◊ Wenn zwei Schiffe sich physisch berühren, sind sie in Reichweite 0
zueinander.<br>
◊ Zwei Schiffe, die in Reichweite 0 zueinander sind, bleiben in Reichweite 0,
bis eines der Schiffe sich so bewegt oder dreht dass ihre Basen keinen
physischen Kontakt mehr haben.<br>
◊ Es ist möglich, wenn auch selten, dass ein Schiff sich in Reichweite 0 eines
anderen Schiffes (also in physischen Kontakt mit ihm) bewegt, ohne sich mit
ihm überschnitten zu haben."
            "REICHWEITENBONUS":
                name: "Reichweitenbonus"
                text: "Während eines Angriffs kann es passieren, dass Angreifer oder Verteidiger
aufgrund der Angriffsreichweite zusätzliche Würfel werfen. Bei einer
Angriffsreichweite von 1 wirft der Angreifer während des Schrittes „Angriffswürfel
werfen“ 1 zusätzlichen Angriffswürfel. Bei einer Angriffsreichweite von 3 wirft der
Verteidiger während des Schrittes „Verteidigungswürfel werfen“ 1 zusätzlichen
Verteidigungswürfel.<br>
• Sofern nichts anderes angegeben ist, wird der Reichweitenbonus auf alle Angriffe angewandt. Manche Spezialwaffen
haben ein kleines Raketensymbol (%RANGEBONUS%), was bedeutet, dass bei
Angriffen mit diesen Waffen keine Reichweitenbonusse
angewandt werden.<br>
• Für riesige Schiffe gelten zusätzliche Regeln für Angriffe in Reichweite 4 und 5 (vlg. Anhang: Riesige Schiffe)"
            "REMOTES":
                name: "Remotes"
                text: "Remotes sind Geräte, die einen Initiativ-, Wendigkeits- und Hüllenwert haben und
angegriffen werden können. Schiffe können sich durch Remotes hindurchbewegen,
sie überschneiden oder sich in Reichweite 0 zu ihnen befinden.
<h5>Remotes angreifen</h5>
Ein Remote kann als Verteidiger deklariert werden. Solange ein Remote angegriffen
wird, wird es wie ein Schiff behandelt, mit folgenden Ausnahmen und Hinweisen:<br>
• Effekte, die sich auf „befreundete Schiffe“ oder „verbündete Schiffe“ beziehen,
werden nicht auf Remotes angewendet.<br>
• Effekte, die sich auf „feindliche Schiffe“ beziehen, werden nur dann auf Remotes
angewendet, falls der Angreifer der Ursprung des Effekts ist.<br>
• Falls ein Remote aufgedruckte Winkel und zentrale Linien hat, erstrecken sich
diese Winkel von Reichweite 0–3. Ein Schiff kann sich genau wie bei anderen
Schiffen innerhalb dieser Winkel oder Zonen befinden.<br>
• Falls ein Remote keine Mittellinie hat, kann ein Schiff es weder flankieren noch
sich davor oder dahinter befinden.<br>
• Falls ein Remote keine Winkel hat, kann sich kein Schiff innerhalb oder
außerhalb eines Winkels dieses Remotes befinden.<br>
• Ein Angriff gegen ein Remote kann versperrt sein und Reichweitenbonusse
werden wie gewohnt angewendet.<br>
• Falls die Größe eines Remotes nicht spezifiziert ist, wird es bei der Abhandlung
von Effekten weder als kleiner noch größer als ein Schiff behandelt.
<h5>Remotes beschädigen</h5>
Falls ein Remote 1 oder mehr %HIT%/%CRIT%-Schaden erleidet, werden ihm ebenso
viele verdeckte Schadenskarten zugeteilt. Falls es eine Anzahl Schadenskarten in
Höhe seines Hüllenwerts oder mehr hat, wird das Remote zerstört. Nachdem ein
Remote zerstört worden ist, wird es von der Spielfläche entfernt. Falls der Angriff
bei derselben Initiative wie die Initiative des Remotes stattgefunden hat, wird es
erst entfernt, nachdem alle Effekte bei dieser Initiative abgehandelt wurden, siehe
gleichzeitiger Angriff.
<h5>Remotes verwenden</h5>
Ein Remote handelt während der Systemphase Effekte ab, wird während der
Aktivierungsphase aktiviert, und es kämpft in der Kampfphase bei seiner
aufgeführten Initiative, verhält sich aber ausschließlich entsprechend der Angaben in
seinem Eintrag. Außerdem gilt Folgendes für Remotes:<br>
• Remotes können keine Aktionen durchführen und ihnen können keine Marker
zugeordnet werden, außer Zielerfassungen.<br>
• Markierungen können einem Remote zugeordnet werden, sofern ein Effekt die
Anweisung dazu gibt – platziert sie auf der Remote-Karte.<br>
• Wenn ein Effekt die Anweisung gibt, ein Remote auf einer Schiffskarte zu
platzieren, wird es hochgehoben und auf der jeweiligen Schiffskarte platziert.
Nur Spieleffekte, die es auf die Spielfläche zurückbringen, wirken sich auf das
Remote aus. Seine Schadenskarten werden nicht entfernt.<br>
• Manche Geräte können wie in ihren individuellen Einträgen beschrieben
Remotes beschädigen. Falls ein Gerät nicht besagt, dass es Remotes betrifft,
betrifft es keine Remotes.
<h5>Remotes neu positionieren</h5>
Wenn ein Remote durch einen Effekt neu positioniert wird, hebt der kontrollierende
Spieler es hoch und platziert es gemäß den Anweisungen des Effekts an seiner
neuen Position. Außerdem gilt:<br>
• Es gibt auch Effekte, die dazu anweisen, ein Remote unter Verwendung einer
bestimmten Schablone (oder einer Auswahl an Schablonen) vorwärts neu zu
positionieren. Dazu platziert der Spieler die genannte Schablone an den
vorderen Stoppern des Remotes, hebt das Remote hoch und platziert seine
hinteren Stopper am anderen Ende der Schablone, ähnlich wie beim Bewegen
eines Schiffes.<br>
• Wenn das Neupositionieren eines Remotes dazu führen würde, dass irgendein
Teil des Remotes außerhalb der Spielfläche landet, flieht es auf dieselbe
Weise, wie ein Schiff fliehen würde, und wird entfernt."
            "RESERVE":
                name: "Reserve"
                text: "Manche Karteneffekte führen dazu, dass Schiffe in der Reserve platziert werden.
Ein Schiff, das in der Reserve platziert wird, kommt auf seine Schiffskarte. Solange
ein Schiff in der Reserve ist, wird ihm kein Rad zugeordnet, es kann keine Aktionen
durchführen und es kann nicht angreifen.<br>
• Alle Schiffe, die in der Reserve sein können, haben einen Effekt, durch den sie
auf der Spielfläche platziert werden.<br>
• Schiffe, die in der Reserve platziert werden, sind nicht aus dem Spiel entfernt.<br>
• Die Fähigkeiten von Schiffen in der Reserve sind inaktiv, es sei denn, sie
besagen ausdrücklich, dass sie verwendet werden können, solange das Schiff
in der Reserve ist.<br>
• Angedockte Schiffe werden in der Reserve platziert.<br>
• Während der Endphase entfernen auch Schiffe in der Reserve alle ihre
kreisförmigen Marker und stellen mit allen ihren Karten, die ein Symbol für
wiederkehrende Ladungen haben, Ladungen wieder her."
            "ROTIEREN":
                name: "Rotieren"
                text: "Piloten können rotieren, um ihrem Bordschützen Befehle zu erteilen oder eines
ihrer Geschütze neu auszurichten. Sobald ein Schiff die %ROTATEARC%-Aktion durchführt,
dreht es seinen Geschützturm-Winkelanzeiger auf einen beliebigen anderen
Standardwinkel.<br>
• Wird ein Doppel-Geschützturm-Winkelanzeiger rotiert, muss er auf die zwei
anderen Standardwinkel gedreht werden, auf die er zuvor nicht gezeigt hat.<br>
• Wenn eine Fähigkeit ein Schiff anweist, seinen %SINGLETURRETARC%-Indikator zu drehen, ist dies
anders als das Durchführen einer %ROTATEARC%-Aktion. Ein Schiff, das seinen %SINGLETURRETARC%-Indikator
dreht, ohne die Aktion durchzuführen, kann in dieser Runde noch eine %ROTATEARC%-Aktion
durchführen.<br>
• Manche Fähigkeiten weisen ein Schiff dazu an, sich um eine bestimmte
Gradzahl zu drehen. Dabei handelt es sich um etwas anderes als rotieren,
siehe Schiffe drehen."
            "RÜCKWÄRTSDREHUNG":
                name: "Rückwärtsdrehung"
                text: "%REVERSEBANKLEFT% und %REVERSEBANKRIGHT%; Siehe Flugrichtung"
            "RÜCKWÄRTSGERADE":
                name: "Rückwärtsgerade"
                text:  "%REVERSESTRAIGHT%; Siehe Flugrichtung"
            "RUNDE":
                name: "Runde"
                text: "Eine <strong>Runde</strong>besteht aus fünf Phasen, die in der unten stehenden Reihenfolge
abgehandelt werden:<br>
1. Planungsphase<br>
2. Systemphase<br>
3. Aktivierungsphase<br>
4. Kampfphase<br>
5. Endphase<br>
Die erste Runde beginnt nach dem Spielaufbau."
            "SCHADEN":
                name: "Schaden"
                text: "Schaden stellt die strukturellen Beschädigungen eines Schiffes dar und wird über
Schadenskarten festgehalten. Ein Schiff ist zerstört, sobald die Anzahl seiner
Schadenskarten seinen Hüllenwert erreicht oder überschreitet.
Es gibt zwei Arten von Schaden: %HIT% (normalen Schaden) und %CRIT% (kritischen
Schaden). Wenn ein Schiff Schaden erleidet, wird 1 Schaden nach dem anderen
erlitten. Für jeden erlittenen Schaden, verliert das Schiff 1 Schild, indem es ihn auf
die inaktive Seite dreht. Hat es keine aktiven Schilde mehr, wird ihm stattdessen
eine Schadenskarte zugeteilt. Bei %HIT%-Schaden wird die Karte <strong>verdeckt</strong> zugeteilt;
bei %CRIT%-Schaden wird sie <strong>offen</strong> zugeteilt und ihr Text wird abgehandelt. Es wird
zuerst aller %HIT%-Schaden erlitten, bevor %CRIT%-Schaden erlitten wird.
Ein Schiff ist <strong>beschädigt</strong>, solange es mindestens 1 Schadenskarte hat. Ein Schiff
ist <strong>kritisch beschädigt</strong>, solange es mindestens 1 offene Schadenskarte hat.<br>
• Falls ein Effekt dazu auffordert, einem Schiff eine Schadenskarte zuzuteilen, ist
dies etwas anderes als das Erleiden von Schaden. Die Karte wird dem Schiff
zugeteilt, egal ob es aktive Schilde hat oder nicht.<br>
• Wenn ein Schiff Schaden erleidet oder anderweitig Schadenskarten zugeteilt
bekommt, die über seinen Hüllenwert hinausgehen, werden die überschüssigen
Schadenskarten trotzdem zugeteilt."
            "SCHADENSKARTEN":
                name: "Schadenskarten"
                text: "Schadenskarten werden verwendet, um festzuhalten, wie viel
Schaden ein Schiff bereits erlitten hat. Wenn einem Schiff
Schadenskarten zugeteilt werden müssen, verwendet jeder
Spieler seinen eigenen Schadensstapel. Nachdem ein Schiff
zerstört worden ist, bleiben die Schadenskarten auf dem
Schiff liegen.
Manche Fähigkeiten führen dazu, dass Schadenskarten
umgedreht werden. Eine verdeckte Schadenskarte kann
<strong>offengelegt</strong> werden; dies bedeutet, dass sie auf die offene Seite gedreht und ihr
Effekt abgehandelt wird. Sowohl verdeckte als auch offene Schadenskarten können
<strong>repariert</strong> werden. Wird eine offene Schadenskarte repariert, dreht man sie auf
die verdeckte Seite. Verdeckte Schadenskarten werden beim Reparieren abgelegt.<br>
• Das Offenlegen einer Schadenskarte zählt nicht als Zuteilen einer
Schadenskarte und löst somit keine Fähigkeiten aus, die mit dem Erleiden von
Schaden zu tun haben.<br>
• Wenn eine Fähigkeit eine verdeckte Schadenskarte eines Schiffes offenlegt
oder repariert, und das Schiff mehrere verdeckte Schadenskarten hat, wird
aus allen verdeckten Schadenskarten des Schiffes eine zufällige ausgewählt.<br>
◊ Um eine zufällige verdeckte Schadenskarte auszuwählen, mischt man alle
diese Karten und lässt den Gegenspieler eine davon ziehen.<br>
• Erlaubt eine Fähigkeit das Reparieren einer Schadenskarte, ohne genau
anzugeben, ob es sich um eine offene oder eine verdeckte Karte handelt, kann
man eine Karte beliebiger Art reparieren.<br>
• Der Hüllenwert eines Schiffes wird durch das Zuteilen von Schadenskarten
nicht verringert.<br>
• Der Text einer verdeckten Schadenskarte eines Schiffes darf nicht angesehen
werden, es sei denn, ein Effekt erlaubt es ausdrücklich.<br>
• Wenn eine Schadenskarte zugeteilt oder gezogen werden muss und der
Schadensstapel leer ist, werden alle Karten von den zerstörten Schiffen
entfernt, auf die verdeckte Seite gedreht und zu einem neuen Schadensstapel
zusammengemischt.<br>
◊ Wenn trotzdem noch nicht ausreichend viele Schadenskarten in einem
Schadensstapel sind, wird auf einem Blatt Papier oder mit Markern notiert,
wie viele verdeckte Schadenskarten jedes Schiff hat, dann werden diese
verdeckten Schadenskarten zu einem neuen Stapel gemischt.<br>
• Jede Schadenskarte hat am unteren Kartenrand eine Zahl zwischen 1 und 14.
Die Punkte neben dieser Zahl geben an, wie viele Kopien dieser Schadenskarte
im Stapel sind. Dies ist hilfreich, wenn ermittelt werden soll, ob ein Stapel
vollständig ist und wenn nicht, welche Karten fehlen.<br>
• Riesige Schiffe haben eigene Schadenskarten (vgl. Anhang: Riesige Schiffe)."
            "SCHEITERN":
                name: "Scheitern"
                text: "Manche Effekte können <strong>scheitern</strong>, was bedeutet, dass der Effekt nicht
wie beabsichtigt abgehandelt werden konnte und stattdessen nach einer
Standardmethode abgehandelt wird.<br>
• Ein Schiff kann bei Folgendem scheitern: Fassrolle, Schub, Koordinieren,
Enttarnen, Absetzen, Störsignal, Zielerfassung und SLAM.<br>
• Ein gescheiterter Effekt löst keinerlei Effekte aus, die nach dem Abhandeln
jenes Effekts eintreten würden.<br>
• Scheitert eine Aktion, darf man keine andere Aktion zum Durchführen
auswählen oder entscheiden, den Effekt auf andere Art abzuhandeln.<br>
• Wenn eine Aktion scheitert, kann das betroffene Schiff keine gekoppelte Aktion
durchführen, da die Aktion nicht abgeschlossen wurde.<br>
• Nachdem eine rote Aktion gescheitert ist, erhält das Schiff einen
Stressmarker."
            "SCHIFF":
                name: "Schiff"
                text: "Ein Schiff besteht aus einem Schiffsmodell, einer Basis, Haltestäbchen,
einem Schiffsmarker und ID-Markern.<br>
• Das Schiffsmodell muss zu dem auf der Schiffskarte angegebenen Schiffstyp
passen.<br>
• Jedes Schiff muss das zu seinem Schiffstyp passende Rad verwenden.<br>
• Manche Schiffsmodelle ragen über ihre Plastikbasen hinaus. Aus diesem
Grund hat das Schiffsmodell keinerlei Einfluss auf das Spielgeschehen, d. h.
es darf sich ohne Konsequenzen mit Hindernissen überschneiden oder über
den Spielflächenrand hinausragen. Berühren sich zwei Schiffsmodelle oder
behindert das eine die Bewegung des anderen, kann man Haltestäbchen
hinzufügen oder entfernen, um diesen Kontakt zu vermeiden. Alternativ kann
man das Modell vorübergehend von der Basis entfernen und es nach der
Bewegung wieder zurückstecken."
            "SCHIFFE DREHEN":
                name: "Schiffe drehen"
                text: "Manche Fähigkeiten und Effekte weisen einen Spieler dazu an, ein Schiff unabhängig
von einem Manöver um eine bestimmte Gradzahl zu drehen. Der Wortlaut kann
unter anderem „drehe dein Schiff um X°“ oder „drehe dich um X°“ sein, doch das
wichtigste ist, dass eine Gradzahl dabei steht und nicht von Rotieren die Rede ist.<br>
• Schiffe zu drehen zählt nicht als Bewegung.<br>
• Falls beim Drehen eines Schiffes seine Basis ein Schiff überschneiden würde,
kann es nicht gedreht werden und der Effekt wird nicht abgehandelt.<br>
• Falls beim Drehen eines Schiffes seine Basis ein Objekt überschneiden würde
(beispielsweise wenn die vorderen oder hinteren Stopper physisch auf der
Basis des anderen Schiffes platziert würden), das kein Schiff ist (z. B. ein
Hindernis oder ein Gerät), handelt es den Überschneidungseffekt dieses
Objekts nicht ab. Allerdings ist es in Reichweite 0 zu diesem Objekt, wodurch
entsprechende Effekte ausgelöst werden können."
            "SCHIFFE ZERSTÖREN":
                name: "Schiffe zerstören"
                text: "Ein Schiff wird <strong>zerstört</strong>, nachdem die Anzahl seiner Schadenskarten seinen
Hüllenwert erreicht oder überschritten hat. Ein zerstörtes Schiff wird auf seiner
Schiffskarte platziert.<br>
• Nachdem ein Schiff in einer anderen Phase als der Kampfphase zerstört
worden ist, wird es aus dem Spiel entfernt.<br>
• Wird ein Schiff während der Kampfphase zerstört, entfernt man es erst,
nachdem alle Schiffe mit derselben Initiative wie das gegenwärtig kämpfende
Schiff gekämpft haben. Dies nennt man gleichzeitige Angriffe.<br>
• Wird ein Effekt nach dem Zerstören eines Schiffes ausgelöst, handelt man ihn
unverzüglich ab, bevor das Schiff entfernt wird.<br>
• Die Fähigkeiten eines zerstörten Schiffes bleiben aktiv, bis das Schiff entfernt
wird, es sei denn, die Fähigkeit gibt einen anderen Zeitpunkt an, zu dem ihr
Effekt endet (z. B. „bis zum Ende der Kampfphase“). Derartige Effekte bleiben
bis zum Ende des angegebenen Zeitpunktes aktiv."
            "SCHIFFSFÄHIGKEITEN":
                name: "Schiffsfähigkeiten"
                text: "Manche Schiffe haben <strong>Schiffsfähigkeiten</strong> auf ihren Schiffskarten. Diese stehen
unterhalb der Pilotenfähigkeit bzw. dem atmosphärischen Text. Alle Piloten eines
bestimmten Schiffstyps haben dieselbe Schiffsfähigkeit.<br>
• Manche Schiffsfähigkeiten werden durch das Stichwort „<strong>Aktion:</strong>“ eingeleitet.
Diese Aktionen werden <strong>Schiffsfähigkeitsaktionen</strong> genannt und tauchen
nicht in den Aktionsleisten der Schiffe auf."
            "SCHIFFSGRÖSSEN":
                name: "Schiffsgrößen"
                text: "Es gibt vier verschiedene Schiffsgrößen: klein, mittel, groß und riesig.
Kleine Schiffe verwenden Plastikbasen mit ca. 4 cm Seitenlänge. Da die Regeln
von
X-Wing für kleine Schiffe geschrieben sind, gelten für sie keine besonderen
Ausnahmen.
Mittlere Schiffe verwenden Plastikbasen mit ca. 6 cm Seitenlänge.
Für mittlere Schiffe gelten folgende Ausnahmen:<br>
• Ein mittleres Schiff benötigt 2 Ionenmarker, um ionisiert zu sein,
und 2 Fangstrahlmarker, um gefangen zu sein.<br>
• Mittlere Schiffe verfahren anders beim Fliegen von Fassrollen (auch beim
Enttarnen).<br>
Große Schiffe verwenden Plastikbasen mit ca. 8 cm Seitenlänge. Für große Schiffe
gelten folgende Ausnahmen:<br>
• Ein großes Schiff benötigt 3 Ionenmarker, um ionisiert zu sein, und
3 Fangstrahlmarker, um gefangen zu sein.<br>
• Große Schiffe verfahren anders beim Fliegen von Fassrollen (auch beim
Enttarnen).<br>
• Während des Spielaufbaus darf die Basis eines großen Schiffes über
Reichweite 1 des Spielflächenrandes hinausragen, solange sie die Breite
des Startgebiets vollständig ausfüllt. Ein großes Schiff darf nicht so platziert
werden, dass ein Teil seiner Basis außerhalb der Spielfläche ist.<br>
Riesige Schiffe verwenden mehr als eine Plastikbasis. Für sie gelten diverse
Sonderregeln, die in der ersten Edition von
X-Wing eingeführt wurden und mit
einer neuen Erweiterung zurückkehren werden."
            "SCHIFFSTYP":
                name: "Schiffstyp"
                text: "Jedes Schiff gehört einem Schiffstyp an, der am unteren Rand seiner Schiffskarte
vermerkt ist.<br>
• Jedes Schiff muss das zu seinem Schiffstyp passende Rad verwenden.<br>
• Manche Aufwertungskarten haben Schiffsbeschränkungen, die sich auf
bestimmte Schiffstypen beziehen."
            "SCHILD":
                name: "Schilde"
                text: "Schilde (%SHIELD%) sind eine Ladungsart. Siehe Ladungen."
            "SCHUB":
                name: "Schub"
                text: "Schub geben bedeutet, dass der Pilot zusätzliche Düsen zündet, um größere
Strecken zurückzulegen. Sobald ein Schiff eine %BOOST%-Aktion durchführt, gibt es Schub
und befolgt die nachstehenden Schritte:<br>
1. Eine der folgenden Schablonen wird gewählt [1 %BANKLEFT%], [1 %STRAIGHT] oder [1 %BANKRIGHT%].<br>
2. Die Schablone wird zwischen die vorderen Stopper des Schiffes geschoben.<br>
3. Das Schiff wird am anderen Ende der Schablone platziert und mit den hinteren
Stoppern um das Ende der Schablone geschoben.<br>
4. Die Schablone wird in den Vorrat zurückgelegt.<br>
• Sobald ein Schub deklariert wird, muss man auch deklarieren, ob das Schiff
nach links, nach rechts oder geradeaus Schub gibt.<br>
• Die Aktion kann scheitern, falls bei dem Versuch, das Schiff am Ende des
Schubes zu platzieren, eine der folgenden Situationen eintritt:<br>
◊ Das Schiff würde sich an seiner Endposition mit einem anderen Schiff
überschneiden.<br>
◊ Das Schiff würde sich durch ein Hindernis hindurchbewegen oder sich mit
einem Hindernis überschneiden.<br>
◊ Die Endposition des Schiffes würde sich außerhalb der Spielfläche befinden
(es würde also fliehen).<br>
• Falls der Schub scheitert, wird das Schiff in die Ausgangsposition
zurückgesetzt, die es vor dem versuchten Schub innehatte. Falls dies
Bestandteil einer %BOOST%-Aktion ist, scheitert diese Aktion.<br>
• Wenn die Endposition nicht zum Scheitern der Aktion führt, kann man sich
nicht freiwillig dafür entscheiden, den Schub scheitern zu lassen.<br>
• Das Durchführen eines Schubes zählt nicht als Ausführen eines Manövers,
aber es zählt als Bewegung.<br>
• Wenn eine Fähigkeit ein Schiff zum Schubgeben auffordert, ist dies etwas
anderes als das Durchführen einer %BOOST%-Aktion. Ein Schiff, das Schub gibt,
ohne die Aktion durchzuführen, kann in dieser Runde immer noch die
%BOOST%-Aktion durchführen"
            "SCHWIERIGKEIT":
                name: "Schwierigkeit"
                text: "Jedes Manöver besteht aus drei Elementen: Geschwindigkeit (eine Zahl zwischen 0
und 5), Schwierigkeit (rot, weiß, blau oder violett) und Flugrichtung (ein Pfeil oder
ein anderes Symbol).
Beim Ausführen eines Manövers wird während des Schrittes „Schwierigkeit
überprüfen“ die Farbe des Manövers überprüft. Ist es rot, erhält das Schiff
1 Stressmarker; ist das Manöver blau, entfernt das Schiff 1 Stressmarker; ist es
violett, muss das Schiff 1 %FORCE% als Kosten ausgeben, um das Manöver auszuführen.<br>
• Ein gestresstes Schiff kann keine roten Manöver ausführen und keine Aktionen
durchführen.<br>
• Erhöht ein Effekt die Schwierigkeit eines Manövers, wird blau zu weiß, und weiß
wird zu rot. Verringert ein Effekt die Schwierigkeit eines Manövers, wird rot zu
weiß, und weiß wird zu blau.<br>
◊ Eine Fähigkeit, welche die Schwierigkeit eines roten Manövers erhöht oder
die Schwierigkeit eines blauen Manövers verringert, kann abgehandelt
werden, hat jedoch keinen weiteren Effekt.<br>
◊ Falls mehrere Fähigkeiten die Schwierigkeit eines Manövers verändern, sind
die Effekte kumulativ. Beispiel: Ein Schiff deckt ein rotes [4 %STRAIGHT%]-Manöver auf.
Es hat einen Effekt, der die Schwierigkeit des Manövers erhöht und einen
anderen, der die Schwierigkeit des Manövers verringert. Das Manöver wird
also wie ein rotes Manöver behandelt.<br>
◊ Die Schwierigkeit eines violetten Manövers kann nicht erhöht oder verringert
werden und die Schwierigkeit eines nicht-violetten Manövers kann nicht
auf violett erhöht werden. Ein anderes Manöver kann durch eine Fähigkeit
als violett behandelt werden und ein violettes Manöver kann als eine
andere Farbe behandelt werden. Für Fähigkeiten, welche die Schwierigkeit
vergleichen, gelten violette Manöver als schwieriger als nicht-violette
Manöver und als gleich schwierig wie andere violette Manöver."
            "SEGNOR-LOOPING":
                name: "Segnor-Looping"
                text: "%SLOOPLEFT% und %SLOOPRIGHT%; Siehe Flugrichtung."
            "SIEGMARKIERUNGEN":
                name: "Siegmarkierungen"
                text: "Manche Szenarien verwenden <strong>Siegmarkierungen</strong> (%MISSIONPOINT%)
innerhalb der Spielfläche, um bestimmte Fortschritte oder
während des Spiels abgeschlossene Ziele nachzuhalten."
            "SLAM":
                name: "SLAM"
                text: "Piloten können ihren SLAM (Sublicht-Antriebsmotor) zünden, um mit ungeahnten
Geschwindigkeiten durchs All zu düsen. Ein Schiff führt die %SLAM%-Aktion in folgenden
Schritten durch:<br>
1. Der Spieler wählt ein Manöver auf dem Rad des Schiffes. Das Manöver muss
dieselbe Geschwindigkeit haben wie das Manöver, welches das Schiff in dieser
Runde ausgeführt hat.<br>
2. Das Schiff führt das gewählte Manöver aus.<br>
3. Das Schiff erhält 1 Entwaffnet-Marker.<br>
Ein Schiff kann eine %SLAM%-Aktion nur während seiner Aktivierung in der
Aktivierungsphase durchführen. Wird dem Schiff zu irgendeinem anderen Zeitpunkt
eine Aktion gewährt, kann es damit keine %SLAM%-Aktion durchführen.<br>
• Würde die Endposition dazu führen, dass das Schiff flieht, scheitert die
%SLAM%-Aktion.<br>
• Was Fähigkeiten betrifft, hat ein Schiff, das eine %SLAM%-Aktion durchführt,
sowohl eine Aktion durchgeführt als auch ein Manöver ausgeführt."
            "SLIP":
                name: "Slip"
                text: "Ein <strong>Slip</strong> ist ein Expertenmanöver, für das die Wendeschablone (%TURNLEFT% oder %TURNRIGHT%) oder die
Drehschablone (%BANKLEFT% oder %BANKRIGHT%) verwendet wird. Ein Slip wird wie folgt ausgeführt:<br>
1. Das kurze Ende der Schablone wird bündig an der Seite des Schiffes platziert.<br>
◊ Für einen <strong>linken</strong> (%TURNLEFT% oder %BANKLEFT%) Slip wird die Schablone an der <strong>rechten
Seite</strong> des Schiffes platziert.<br>
◊ Für einen <strong>rechten</strong> (%TURNLEFT% oder %BANKLEFT%) Slip wird sie an der <strong>linken Seite</strong> platziert.<br>
Die Schablone muss so platziert werden, dass ihre Mittellinie auf einer Höhe
mit der Markierung an der entsprechenden Seite der Basis ist. Das andere
Ende der Schablone muss im %FULLFRONTARC% des Schiffes sein.<br>
2. Das Schiff wird angehoben und am anderen Ende der Schablone so platziert,
dass die Markierung auf der gegenüberliegenden Seite des Schiffes auf einer
Höhe mit der Mittellinie der Schablone ist.<br>
Außerdem gilt:<br>
• Bei einem Slip wird die Manöverschablone mit derselben Ausrichtung platziert,
wie wenn sie vorne an das Schiff angelegt werden würde, aber sie wird an die
seitlichen Mittellinie des Schiffes angelegt. Das heißt, dass für einen Slip, der
das Schiff nach rechts bewegt, das linke Manöver eingestellt wird und dabei
die linke (%TURNLEFT% oder %BANKLEFT%)-Schablone verwendet wird, und umgekehrt.<br>
• Falls das Schiff einen Slip nicht vollständig ausführen
kann, führt es das Manöver teilweise unter Verwendung der
linken/rechten Mittellinie der Schiffsbasis aus (statt der vorderen/hinteren
Mittellinie der Schiffsbasis wie sonst üblich), um seine finale Position zu
bestimmen."
            "SOLITÄR":
                name: "Solitär"
                text: "Eine Staffel darf nicht mehr als 1 Karte derselben Aufwertungsart mit der „Solitär“-
Beschränkung beinhalten. Da alle %TACTICALRELAY%-Aufwertungen (Taktische Leitung) die „Solitär“-
Beschränkung haben, darf keine Staffel mehr als 1 %TACTICALRELAY%-Aufwertung beinhalten."
            "SPEZIALWAFFEN":
                name: "Spezialwaffen"
                text: "Spezialwaffen werden in Kartentexten durch das Stichwort „<strong>Angriff:</strong>“ eingeleitet.
Sie stellen zusätzliche Angriffsoptionen dar, die eine Alternative zu den Primärwaffen des Schiffes bieten.
Spezialwaffen setzen sich aus einer Kombination aus Winkelbedingungen,
Reichweitenbedingungen, Angriffswerten und ggf. anderen Bedingungen zusammen.
Das <strong>Winkelsymbol</strong> gibt an, wo sich das Ziel befinden muss, damit diese Waffe
verwendet werden kann. Die <strong>Reichweitenbedingung</strong> bezeichnet die Spanne
der zulässigen Angriffsreichweiten. Der rote <strong>Angriffswert</strong> bestimmt, wie viele
Angriffswürfel während des Schrittes „Angriffswürfel werfen“ geworfen werden.
Bei Karten mit speziellen Bedingungen müssen alle diese Bedingungen erfüllt sein,
damit der Angriff durchgeführt werden kann.<br>
• Manche Spezialwaffen haben ein kleines <strong>Raketensymbol</strong (%RANGEBONUS%).
Dies zeigt an, dass bei Angriffen mit diesen Waffen keine
Reichweitenbonusse angewandt werden.<br>
• Winkelbedingungen stehen in Form von Winkelsymbolen links neben dem
Angriffswert. Eine Winkelbedingung bedeutet, dass der Verteidiger in jenem
Winkel des Angreifers sein muss.<br>
• Reichweitenbedingungen stehen in Form von weißen Zahlen unter dem
Angriffswert und der Winkelbedingung.<br>
• Manche Angriffe haben zudem spezielle Voraussetzungen,
die hinter dem Stichwort „<strong>Angriff:</strong>“ in Klammern stehen.<br>
◊ Das Stichwort „<strong>Angriff (%TARGETLOCK%):</strong>“ bedeutet, dass der
Angreifer den Verteidiger als Ziel erfasst haben muss.<br>
◊ Das Stichwort „<strong>Angriff (%FOCUS%):</strong>“ bedeutet, dass der Angreifer einen
Fokusmarker haben muss.<br>
• Da Spezialwaffen keine Primärwaffen sind, profitieren sie nicht von Fähigkeiten,
die durch das Durchführen eines Primärangriffs ausgelöst werden.<br>
• Jede Art von Aufwertungskartenangriff (wie z. B. ein %CANNON%-Angriff) ist ein
Spezialangriff."
            "SPIELERMARKIERUNG":
                name: "Spielermarkierungen"
                text: "Spielermarkierungen werden in einigen Szenarien benutzt, um anzuzeigen, welcher
Spieler ein Einsatzziel kontrolliert."
            "SPIELERREIHENFOLGE":
                name: "Spielerreihenfolge"
                text: "Viele Spieleffekte greifen im Falle eines Gleichstands auf die
Spielerreihenfolge zurück. Soll ein Effekt in <strong>Spielerreihenfolge</strong>
abgehandelt werden, handelt zuerst der Startspieler alle seine
Effekte ab, dann handelt der zweite Spieler alle seine Effekte ab.
Während des Schrittes „Spielreihenfolge festlegen“ des
Spielaufbaus wird dem Startspieler die Startspielermarkierung
zugeordnet. Die Startspielermarkierung wird dem Startspieler in
jeder Runde gegeben, nachdem in der Planungsphase gewürfelt wurde, um die
Spielerreihenfolge festzulegen.<br>
• Während der System-, Aktivierungs- und Kampfphase entscheidet die
Spielerreihenfolge bei gleichen Initiativwerten.<br>
• Bei mehr als zwei Spielern muss die Spielerreihenfolge für alle teilnehmenden
Spieler festgelegt werden. Die Spieler würfeln wie gewohnt, um den
Startspieler zu bestimmen. Dann würfeln die übrigen Spieler, um den zweiten
Spieler zu bestimmen usw., bis die Spielerreihenfolge vollständig festgelegt ist."
            "SPIELDAUER UND NACHHALTEN VON RUNDEN":
                name: "Spieldauer und Nachhalten von Runden"
                text: "Standardspiele werden über 12 Runden gespielt. Die Spieler halten die Runden mit
Hilfe von Ladungsmarkern nach. Zu Beginn des Spiels werden 12 auf ihre aktive
Seite gedrehte Ladungsmarker in die Nähe der Spielfläche platziert. Am Ende jeder
Runde drehen die Spieler einen Ladungsmarker auf die inaktive Seite. Am Ende der
12. Runde endet das Spiel.<br>
• Falls alle Schiffe eines Spielers zerstört sind, endet das Spiel am Ende der
aktuellen Runde.<br>
• Wünschen die Spieler ein längeres oder kürzeres Spiel, können sie sich vor
dem Aufbau auf eine beliebige Rundenzahl einigen und platzieren zu Spielbeginn
eine entsprechende Anzahl Ladungsmarker in die Nähe de Spielfläche. Das
Spiel endet am Ende der letzten vereinbarten Runde."
            "SPIELFLÄCHE":
                name: "Spielfläche"
                text: "Die Spielfläche ist der zuvor abgesteckte Bereich eines flachen Untergrunds,
auf dem die Schiffe platziert werden. Falls nach dem Ausführen eines Manövers
irgendein Teil einer Schiffsbasis außerhalb der Spielfläche liegt,
ist das Schiff geflohen.
Die empfohlene Spielfläche für ein Standardspiel mit 20 Kommandopunkten ist
3‘ x 3‘ (91 x 91 cm) groß. Wird mit anderen Punktesummen gespielt, kann die
Länge und/oder Breite der Spielfläche entsprechend vergrößert oder verkleinert
werden."
            "SPIELMODUS":
                name: "Spielmodus"
                text: "Die verschiedenen Spielmodi beschränken die zur Verfügung stehenden Schiffe und
Aufwertungen für die Staffelzusammenstellung.<br>
• Manche Spielmodi haben eine Bannliste und eine Beschränkungsliste.<br>
• Die gebräuchlichsten Spielmodi sind „Standard“ und „Erweitert“. Die
Punktelisten auf der Produktseite unter www.asmodee.de/StarWars geben
genaue Auskunft darüber, welche Schiffe und welche Aufwertungen während
des Zusammenstellens der Staffel in jedem Spielmodus zur Verfügung stehen."
            "SPIELSIEG":
                name: "Spielsieg"
                text: "Während des Spiels halten die Spieler ihre Missionspunkte fest. Am Ende des
Spiels gewinnt der Spieler mit den meisten Missionspunkten.
Während eines Szenariospiels wird der Sieg auf Grundlage der szenariospezifischen
Siegbedingungen ermittelt."
            "STAFFELZUSAMMENSTELLUNG":
                name: "Staffelzusammenstellung"
                text: "Jeder Spieler stellt eine Staffel zusammen, indem er Schiffs- und
Aufwertungskarten wählt, deren Kommandopunktekosten die vom Spielmodus
vorgeschriebene Summe nicht überschreiten. Die empfohlene Summe für ein
Standardgefecht sind 20 Kommandopunkte.
Staffeln werden aus Schiffs- und Aufwertungskarten zusammengestellt.
Dabei gelten folgende Beschränkungen:<br>
• Jedes Schiff hat eine Aufwertungsleiste mit einer Reihe von
Aufwertungssymbolen. Diese bestimmen, wie viele Aufwertungen welcher Art
das Schiff ausrüsten kann. Unter www.
asmodee.de/StarWars gibt es eine
Liste mit allen Schiffen und ihren Aufwertungsleisten.<br>
• Beinahe alle Spielmodi beschränken die Auswahl der Schiffe auf eine Fraktion.
Alle Schiffskarten einer Staffel müssen derselben Fraktion angehören.
Zudem haben manche Aufwertungskarten Fraktionsbeschränkungen in ihrem
Beschränkungsfeld.<br>
• Manche Aufwertungskarten haben Schiffsgrößenbeschränkungen. Sie können
nur von Schiffen der jeweiligen Größe ausgerüstet werden.<br>
• Manche Aufwertungskarten haben Schiffstypenbeschränkungen. Sie können nur
von Schiffen des jeweiligen Typs ausgerüstet werden.<br>
• Manche Aufwertungskarten haben Konfigurator-Schlüsselwörter-Beschränkungen und können nur von Schiffen mit diesen Konfigurator-Schlüsselwörtern ausgerüstet werden. Die Konfigurator-Schlüsselwörter
sind in den Punktetabellen auf der X-Wing-Produktseite unter
Asmodee.de/StarWars zu finden.<br>
• Alle Karten einer Staffel unterliegen den Regeln für limitierte und Solitär-Karten.<br>
• Ein Schiff kann nicht mehr als 1 Kopie einer gleichnamigen Aufwertungskarte
ausrüsten."
            "STANDARDAUSSTATTUNG-SCHIFFSKARTEN":
                name: "Standardausstattung-Schiffskarten"
                text: "Manche Schiffskarten sind <strong>Standardausstattung-Schiffskarten</strong>.
Diese Schiffskarten sind größer als normale Schiffskarten und führen alle
Aufwertungen auf, die das abgebildete Schiff ausgerüstet hat. Manche
Standardausstattung-Schiffskarten haben einzigartige Schiffsfähigkeiten,
Aufwertungen oder Aktionsleisten. Standardausstattung-Schiffe können keine
weiteren Aufwertungen ausrüsten."
            "STANDARDSCHIFF":
                name: "Standardschiff"
                text: "Alle nicht-riesigen Schiffe sind Standardschiffe (siehe Anhang: Riesige Schiffe)."
            "STANDARDWINKEL":
                name: "Standardwinkel"
                text: "Siehe Winkel."
            "STARTEN":
                name: "Starten"
                text: "Siehe Gerät."
            "STARTSPIELER":
                name: "Startspieler"
                text: "Siehe Spielerreihenfolge."
            "STATIONÄR":
                name: "Stationär"
                text: "%STOP%; Siehe Flugrichtung."
            "STOPPER":
                name: "Stopper"
                text: "Jede Schiffsbasis hat zwei Stopperpaare, ein vorderes und ein hinteres.
Manche Geräte haben ebenfalls ein Stopperpaar.<br>
• Für das Abmessen der Reichweite sowie für die Frage, ob ein Schiff in einem
bestimmten Winkel ist, werden die Stopper an der Schiffsbasis ignoriert."
            "STÖRSIGNAL":
                name: "Störsignal"
                text: "Piloten können ein Störsignal senden, um mithilfe von
elektronischen Kampfmitteln die feindlichen Schiffssysteme zu
blockieren. Sobald ein Schiff die %JAM%-Aktion durchführt, sendet
es ein Störsignal. Ein <strong>störendes</strong> Schiff ist ein Schiff, das in
folgenden Schritten versucht ein Störsignal zu senden:<br>
1. Das störende Schiff misst die Reichweite zu beliebig vielen feindlichen
Schiffen ab.<br>
2. Es wählt ein feindliches Schiff in Reichweite 1 oder in Reichweite 1–2 im %BULLSEYEARC% 
des störenden Schiffes.<br>
3. Das gewählte Schiff erhält 1 Störsignalmarker.<br>
Ein Schiff ist <strong>gestört</strong>, falls es mindestens 1 Störsignalmarker hat. Störsignalmarker sind kreisförmige, orangefarbene Marker. Sobald ein Schiff gestört wird,
entscheidet der Spieler, dessen Effekt zum Erhalt des Störsignalmarkers geführt
hat, ob das Schiff 1 seiner grünen Marker entfernt oder 1 seiner Zielerfassungen
verliert. Wird einer dieser Effekte abgehandelt, entfernt das Schiff den Störsignal-
marker. Wenn das Schiff keine grünen Marker hat und momentan keine
Zielerfassungen aufrechterhält, bleibt es gestört.
Nachdem ein gestörtes Schiff einen grünen Marker erhalten oder ein Ziel erfasst
hat, entfernt das gestörte Schiff jenen Marker bzw. verliert jene Zielerfassung. Dann
entfernt es 1 Störsignalmarker.<br>
• Manche Spezialwaffen fügen Störsignalmarker zu, anstatt Schaden zuzuteilen.
• Das Störsignal scheitert, falls kein Schiff gewählt wird.<br>
• Eine Fähigkeit, die ein gestörtes Schiff einen grünen Marker erhalten oder ein
Ziel erfassen lässt, löst trotzdem Effekte aus, die durch das Abhandeln dieser
Fähigkeit eintreten, auch wenn der Marker sofort wieder entfernt wird bzw. die
Zielerfassung verloren geht. Der Störsignalmarker führt nicht zum Scheitern
der Fähigkeit.<br>
• Wenn eine Fähigkeit ein Schiff zum Senden eines Störsignals auffordert, ist
dies etwas anderes als das Durchführen einer %JAM%-Aktion. Ein Schiff, das ein
Störsignal sendet, ohne die Aktion durchzuführen, kann in dieser Runde immer
noch die %JAM%-Aktion durchführen.<br>
• Falls ein Schiff mehrere grüne Marker oder Zielerfassungen hat, wählt der
Spieler, dessen Effekt zum Erhalt des Störsignalmarkers geführt hat, welcher
grüne Marker entfernt wird oder welche Zielerfassung verloren wird."
            "STRESS":
                name: "Stress"
                text: "Solange ein Schiff mindestens 1 Stressmarker (%STRESS%) hat, ist es
<strong>gestresst</strong>. Ein gestresstes Schiff kann keine roten Manöver
ausführen und keine Aktionen durchführen. Stressmarker sind rote
Marker.<br>
• Ein Schiff erhält 1 Stressmarker, solange es ein rotes Manöver
ausführt, oder nachdem es eine rote Aktion durchgeführt hat.
Solange ein Schiff ein blaues Manöver ausführt, entfernt es 1 Stressmarker.<br>
• Versucht ein gestresstes Schiff, ein rotes Manöver auszuführen, führt es
stattdessen ein weißes [2 %STRAIGHT%]-Manöver aus.<br>
◊ Nachdem ein gestresstes Schiff ein rotes Manöver aufgedeckt hat, können
Fähigkeiten verwendet werden, die dieses Manöver verändern. Würde
das Schiff nach dem Abhandeln dieser Fähigkeiten immer noch ein rotes
Manöver ausführen, führt es stattdessen ein weißes [2 %STRAIGHT%]-Manöver aus.<br>
• Riesige Schiffe haben zusätzliche Regeln für Stress (vgl. Anhang: Riesige
Schiffe)."
            "SYSTEMPHASE":
                name: "Systemphase"
                text: "Die Systemphase ist die zweite Phase der Runde. Während dieser Phase wird
in aufsteigender Initiativreihenfolge gespielt, beginnend mit dem Schiff, das die
niedrigste Initiative hat.
Während dieser Phase bekommt jedes Schiff die Gelegenheit, beliebig viele
Fähigkeiten, die ausdrücklich während der Systemphase abgehandelt werden,
zu wählen und abzuhandeln.<br>
• Ohne spezielle Aufwertungen, Fähigkeiten oder Marker können die meisten
Schiffe während dieser Phase keine Effekte abhandeln. Zu den Fähigkeiten,
die zu diesem Zeitpunkt verwendet werden, gehört das Abwerfen und Starten
von Geräten, das Enttarnen sowie das Absetzen und Andocken von Schiffen.<br>
• Hat ein Spieler mehrere Schiffe mit gleichem Initiativwert, handelt er ihre
Fähigkeiten in beliebiger Reihenfolge ab, wobei er zuerst alle Fähigkeiten eines
Schiffes abhandeln muss, bevor er die Fähigkeiten des nächsten Schiffes mit
gleicher Initiative abhandeln kann.<br>
• Haben mehrere Spieler Schiffe mit gleichem Initiativwert, entscheidet die
Spielerreihenfolge. Zuerst handelt der Startspieler alle Fähigkeiten seiner
Schiffe mit diesem Initiativwert in beliebiger Reihenfolge ab, dann handelt
der zweite Spieler alle Fähigkeiten seiner Schiffe mit diesem Initiativwert in
beliebiger Reihenfolge ab usw."
            "TALLON-ROLLE":
                name: "Tallon-Rolle"
                text: "%TROLLLEFT% und %TROLLRIGHT%; Siehe Flugrichtung."
            "TARNEN":
                name: "Tarnen"
                text: "Schiffe können sich tarnen, um ihren Gegnern ein schlechteres
Ziel zu bieten, oder sich enttarnen, um plötzlich an anderer Stelle
aufzutauchen. Sobald ein Schiff die %CLOAK%-Aktion durchführt, erhält es
1 Tarnungsmarker.
Solange ein Schiff einen Tarnungsmarker hat, ist es <strong>getarnt.</strong> Tarnungsmarker sind
blaue Marker. Ein getarntes Schiff hat folgende Effekte:<br>
• Sein Wendigkeitswert ist um 2 erhöht.<br>
• Es ist entwaffnet.<br>
• Es kann die Aktion „Tarnen“ nicht durchführen und keinen zweiten
Tarnungsmarker erhalten.<br>
Während der Systemphase darf jedes getarnte Schiff seinen Tarnungsmarker
ausgeben, um sich zu <strong>enttarnen</strong>. Sobald ein kleines Schiff sich enttarnt,
muss es einen der folgenden Effekte wählen:<br>
1. Es fliegt eine Fassrolle unter Verwendung der [2 %STRAIGHT%]-Schablone.<br>
2. Es gibt Schub unter Verwendung der [2 %STRAIGHT%]-Schablone.<br>
Sobald ein mittleres oder großes Schiff sich enttarnt, muss es einen der folgenden
Effekte wählen:<br>
1. Es fliegt eine Fassrolle unter Verwendung der [1 %STRAIGHT%]-Schablone.<br>
2. Es gibt Schub unter Verwendung der [1 %STRAIGHT%]-Schablone.<br>
• Enttarnen zählt nicht als Ausführen eines Manövers und nicht als Durchführen
einer Aktion, aber es zählt als Bewegung.<br>
• Ein Schiff kann sich auch enttarnen, solange es gestresst ist.<br>
• Sobald die Enttarnung eines Schiffes deklariert wird, muss man auch
deklarieren, welche Art von Schub oder Fassrolle es durchführen wird, bevor
man eine Schablone auf der Spielfläche platziert.<br>
• Scheitert das Enttarnen, wird das Schiff in die Ausgangsposition
zurückgesetzt, die es vor der versuchten Enttarnung innehatte,
und sein Tarnungsmarker wird nicht entfernt.<br>
• Jedes Schiff darf in derselben Phase, in der es sich enttarnt, keine Geräte
abwerfen oder starten."
            "TEILWEISE AUSFÜHREN":
                name: "Teilweise ausführen"
                text: "Siehe Überschneiden."
            "TITEL":
                name: "Titel"
                text: "Ein Titel ist eine Art von Aufwertung, die ein ganz bestimmtes Exemplar eines
Schiffes darstellt. Aus diesem Grund ist jeder Titel auf einen bestimmten Schiffstyp
beschränkt. Ein Beispiel für eine %TITLE%-Aufwertung ist der
Millennium Falke."
            "TREFFEN":
                name: "Treffen"
                text: "Ein Angriff <strong>trifft</strong>, falls während des Schrittes „Ergebnisse neutralisieren“
mindestens 1 %HIT%- oder %CRIT%-Ergebnis übrig bleibt, ohne negiert zu werden.
Bleibt kein %HIT%- oder %CRIT%-Ergebnis übrig, verfehlt er Angriff."
            "ÜBERSCHNEIDEN":
                name: "Überschneiden"
                text: "Solange ein Schiff ein Manöver ausführt oder sich anderweitig bewegt,
<strong>überschneidet</strong> es sich mit einem Objekt, falls seine Endposition dieses Objekt
physisch überlappen würde.
Kommt es nicht zur Überschneidung mit einem anderen Schiff, führt das Schiff
sein Manöver <strong>vollständig</strong> aus. Überschneidet es sich beim Ausführen seines
Manövers mit einem anderen Schiff, muss es das Manöver <strong>teilweise</strong> ausführen.
Dies geschieht in folgenden Schritten:<br>
1. Das Schiff wird entlang der Schablone zurückbewegt, bis es kein anderes Schiff
mehr überlappt. Dabei wird das Schiff so ausgerichtet, dass die Markierungen
zwischen beiden Stopperpaaren auf die Mittellinie der Schablone zentriert sind.<br>
2. Sobald das Schiff kein anderes Schiff mehr überlappt, wird es so platziert,
dass es das letzte Schiff, über das es zurückbewegt wurde, berührt. (Dies
kann unter Umständen dazu führen, dass es an seine Ausgangsposition
zurückkehrt) Dann erleidet es nach dem Schritt „Schwierigkeit überprüfen“
einen Effekt in Abhängigkeit von dem überschnittenen Schiff, das ursprünglich
dafür verantwortlich war, dass es sein Manöver nur teilweise ausgeführt hat:<br>
• Falls das überschnittene Schiff befreundet oder verbündet war,
wirf 1 Angriffswürfel. Bei einem %HIT%- oder %CRIT%-Ergebnis erleidet das
überschneidende Schiff 1 %HIT%-Schaden. Dann überspringt es seinen Schritt
„Aktion durchführen“.<br>
• Falls das überschnittene Schiff feindlich ist, kann das überschneidende
Schiff, falls es nicht gestresst ist, sofort eine %FOCUS%- oder %CALCULATE%-Aktion aus
seiner Aktionsleiste durchführen, wobei die Aktion als rote Aktion behandelt
wird. Dann überspringt das überschneidende Schiff seinen Schritt „Aktion
durchführen“.<br>
◊ Das überschneidende Schiff kann während dieser Aktivierung keine
zusätzlichen Aktionen durchführen.<br>
• Falls es eine gleichzeitige Überschneidung von freundlichen oder verbündeten
und feindlichen Schiffen gab, wird der Effekt für die Überschneidung mit einem
befreundeten oder verbündeten Schiff abgehandelt.<br>
Auch wenn ein Schiff ein Manöver nur teilweise ausführt, wird es behandelt, als
hätte es ein Manöver mit der angegebenen Geschwindigkeit, Flugrichtung und
Schwierigkeit ausgeführt.
Außerdem gilt:<br>
• Nachdem ein Objekt platziert worden ist, falls es unterhalb eines oder
mehrerer Schiffe platziert worden ist, handeln diese Schiffe jegliche Effekte der
Überschneidung mit diesem Objekt ab."
            "VERBÜNDET":
                name: "Verbündet"
                text: "Manche Schiffe oder Geräte, die vom selben Spieler kontrolliert werden, sind nicht
miteinander befreundet, sondern <strong>verbündet</strong>. Verbündete Schiffe werden von ihrem
Spieler ähnlich wie befreundete Schiffe verwendet, doch sie interagieren nicht mit
Effekten, die sich auf „befreundete Schiffe“ beziehen.<br>
• Schiffe können keine Angriffe gegen verbündete Schiffe durchführen, außer
etwas anderes ist angegeben.<br>
• Verbündete Schiffe sind keine befreundeten Schiffe und Fähigkeiten, die sich
auf „befreundete Schiffe“ beziehen, beziehen sich nicht auf verbündete Schiffe.<br>
• Ein Schiff ist nie mit sich selbst „verbündet“. Fähigkeiten, die sich auf
„verbündete Schiffe“ beziehen, haben also keinen Einfluss auf das Schiff, das
diese Fähigkeiten hat."
            "VERFEHLEN":
                name: "Verfehlen"
                text: "Ein Angriff <strong>verfehlt</strong>, falls während des Schrittes „Ergebnisse neutralisieren“ kein
%HIT%- oder %CRIT%-Ergebnis übrig bleibt. Wird mindestens ein %HIT%- oder %CRIT%-Ergebnis
nicht negiert, trifft der Angriff.<br>
• Wenn ein Angriff verfehlt, wird der Schritt „Schaden zuteilen“ des Angriffs
übersprungen."
            "VERLIEREN":
                name: "Verlieren"
                text: "Siehe Zielerfassung oder Spielsieg."
            "VERTEIDIGEN":
                name: "Verteidigen"
                text: "Siehe Angreifen."
            "VERSPERRT":
                name: "Versperrt"
                text: "Ein Angriff ist <strong>versperrt</strong>, falls der Angreifer die Reichweite durch ein Objekt
hindurch abmisst. Ist der Angriff durch ein Schiff oder Gerät versperrt,
hat dies keinen Effekt. Versperrt ein Hindernis den Angriff, kommt es zu folgendem
zusätzlichen Effekt.<br>
• Falls der Angriff von mindestens 1 Hindernis versperrt ist, wirft der
Verteidiger während des Schrittes „Verteidigungswürfel werfen“ 1 zusätzlichen
Verteidigungswürfel.<br>
• Der Angreifer misst stets die kürzeste Strecke, also vom nächsten Punkt
seiner Basis zum nächsten Punkt der Basis des Verteidigers im Angriffswinkel.
Der Angreifer kann daher nicht von oder zu einem anderen Punkt messen, um
ein Objekt zu umgehen.<br>
◊ Gibt es mehrere Punkte in gleicher Entfernung (z. B. wenn Angreifer und
Verteidiger parallel zueinander stehen), wählt der Angreifer eine dieser
Strecken zum Abmessen der Reichweite von oder zu einem anderen Punkt.
Im unten stehenden Beispiel kann der X-Flügler wählen, ob sein Angriff
versperrt sein soll oder nicht."
            "VERSTÄRKEN":
                name: "Verstärken"
                text: "Piloten können verstärken, um ihre
Deflektorschilde zu kalibrieren und eine
Sektion ihres Schiffes besonders gut zu
schützen. Sobald ein Schiff die %REINFORCE%-Aktion
durchführt, erhält es einen Verstärkungs-
marker, bei dem entweder die Bugseite oder die Heckseite nach oben zeigt.
Ein Schiff ist <strong>verstärkt</strong>, solange ihm ein Verstärkungsmarker zugeordnet ist.
Verstärkungsmarker sind kreisförmige, grüne Marker. Solange ein verstärktes
Schiff verteidigt, falls der Angreifer innerhalb des vollen Winkels ist, der dem
Verstärkungsmarker entspricht (und nicht im anderen vollen Winkel), entfaltet der
Marker seine Wirkung. Für einen Bug-Verstärkungsmarker muss der Angreifer im
%FULLFRONTARC% des Verteidigers sein; für einen Heck-Verstärkungsmarker muss der Angreifer
im %FULLBACKARC% des Verteidigers sein.
Wenn sich während des Schrittes „Ergebnisse neutralisieren“ herausstellt,
dass der Angriff treffen würde und mehr als 1 %HIT%/%CRIT%-Ergebnis übrig ist,
wird 1 %EVADE%-Ergebnis hinzugefügt, um 1 Ergebnis zu negieren.<br>
• Ein Schiff kann auch mehrere Verstärkungsmarker haben. Hat ein Schiff
mehrere gleichartige Verstärkungsmarker, werden ihre Effekte einzeln
nacheinander angewandt. Damit zwei Verstärkungsmarker ihre Wirkung
entfalten können, müssen also mindestens drei %HIT%/%CRIT%-Ergebnisse übrig sein.<br>
• Sobald ein Schiff einen Verstärkungsmarker erhält, entscheidet sein
kontrollierender Spieler, ob es ein Bug- oder Heck-Verstärkungsmarker sein
soll, es sei denn, etwas anderes ist angegeben.<br>
• Schiffe geben ihre Verstärkungsmarker nicht aus, wenn sie deren Effekte
abhandeln.<br>
• Wenn eine Fähigkeit besagt, dass ein Schiff 1 Verstärkungsmarker erhält, ist
dies etwas anderes als das Durchführen einer %REINFORCE%-Aktion. Ein Schiff, das einen
Verstärkungsmarker erhält, ohne die Aktion durchzuführen, kann in dieser
Runde immer noch die %REINFORCE%-Aktion durchführen.<br>
• Verstärken kann auch gegen Angriffe in Reichweite 4–5 genutzt werden, selbst
wenn sich der %FULLFRONTARC% oder %FULLBACKARC% des Verteidigers normalerweise nur bis Reichweite
3 erstreckt. Falls der Angreifer in Reichweite 4–5 ist, wird der %FULLFRONTARC%- oder
%FULLBACKARC%-Winkel des Verteidigers behandelt, als würde er sich bis Reichweite 5
erstrecken, aber nur, um für den Verstärkungsmarker des Verteidigers zu
bestimmen, in welchem Winkel der Angreifer ist. (nicht für andere Effekte oder
Fähigkeiten)."
            "VERTEIDIGER":
                name: "Verteidiger"
                text: "Ein Schiff, das während des Unterschrittes „Verteidiger deklarieren“ des Schrittes
„Ziel deklarieren“ eines Angriffs gewählt wird, ist der Verteidiger.<br>
• Das Schiff bleibt der Verteidiger, bis im Schritt „Nachwirkungen“ alle „Nachdem
du einen Angriff durchgeführt hast“- und „Nachdem du verteidigt hast“-
Fähigkeiten abgehandelt worden sind."
            "VIOLETTE AKTIONEN":
                name: "Violette Aktionen"
                text: "Als Kosten zum Durchführen einer violetten Aktion muss das Schiff, das die Aktion
durchführt, 1 %FORCE% ausgeben."
            "VOLLER WINKEL":
                name: "Voller Winkel"
                text: "Siehe Winkel"
            "VOLLSTÄNDIG AUSFÜHREN":
                name: "Vollständig Ausführen"
                text: "Siehe Überschneiden."
            "VOR":
                name: "Vor"
                text: "Siehe Winkel."
            "VORRAT":
                name: "Vorrat"
                text: "Der Vorrat enthält das gemeinsame Spielmaterial, das momentan von keinem
Spieler verwendet wird, z. B. nicht zugeordnete Fokusmarker, nicht verwendete
Schiffskarten usw."
            "WENDIGKEIT":
                name: "Wendigkeit"
                text: "Die Wendigkeit eines Schiffes ist die grüne Zahl auf
der Schiffskarte. Dieser Wert bestimmt, wie viele
Verteidigungswürfel das Schiff wirft, solange es verteidigt.<br>
• Ein Schiff mit einem Wendigkeitswert von 0 kann
während eines Angriffs trotzdem alle zusätzlichen
Verteidigungswürfel werfen, die ihm durch Spieleffekte
wie den Reichweitenbonus, die Versperrung durch ein Hindernis oder durch
andere Kartenfähigkeiten gewährt werden.<br>
• Fähigkeiten und Spieleffekte, die bewirken, dass ein Schiff zusätzliche oder
weniger Verteidigungswürfel wirft, modifizieren nicht den Wendigkeitswert des
Verteidigers.<br>
• Alle Modifkationen der Wendigkeit sind kumulativ.<br>
• Falls nach Anwendung aller Modifikationen ein Wurf mit weniger als 0
Verteidigungswürfeln gemacht werden müsste, wird er wie ein Wurf mit 0
Würfeln behandelt.<br>
• Falls nach Anwendung aller Modifikationen ein Wurf mit mehr als
6 Verteidigungswürfeln gemacht werden müsste, wird er wie ein Wurf mit
6 Würfeln behandelt."
            "WINKEL":
                name: "Winkel"
                text: "Ein Winkel ist die Fläche zwischen zwei Linien, die durch Verlängerung der
aufgedruckten Markierungen oder Winkellinien eines Schiffsmarkers auf Reichweite
3 entstehen. Ein Schiff ist <strong>in</strong> einem Winkel, falls seine Basis zumindest partiell auf
dieser Fläche steht.<br>
• Winkel werden jenseits der Schiffsbasis abgemessen. Der Teil eines Objekts,
der unter einem Schiff liegt, ist nicht in irgendeinem Winkel jenes Schiffes.
<h5>Standardwinkel</h5>
Es gibt drei Arten von Standardwinkeln, die durch das Kreuz aus diagonalen
Winkellinien gebildet werden:<br>
1. <strong>Vorderer Winkel (%FRONTARC%):</strong> Dieser Winkel erstreckt sich in Blickrichtung des
Schiffes. Die meisten Schiffe haben %FRONTARC%-Primärwaffen. Beinahe alle %CANNON%-, %TORPEDO%-
und %MISSILE%-Waffen verwenden diesen Winkel.<br>
2. <strong>Seitenwinkel:</strong> Diese beiden Winkel befinden sich auf der linken und rechten
Seite des Schiffes.<br>
3. <strong>Hinterer Winkel (%BACKARC%):</strong> Dieser Winkel erstreckt sich entgegengesetzt zur
Blickrichtung des Schiffes. Manche Schiffe haben %BACKARC%-Primärwaffen.
<h5>Zentraler Winkel</h5>
Jedes Schiff hat innerhalb seines vorderen Winkels einen zentralen Winkel.<br>
<strong>Zentraler Winkel (%BULLSEYEARC%):</strong> Dieser Winkel befindet sich innerhalb des %FRONTARC%.
Wenn etwas im %BULLSEYEARC%  eines Schiffes ist, so ist es immer auch in seinem %FRONTARC%.<br>
• Der %BULLSEYEARC%  hat die Breite und Länge des Maßstabes.<br>
• Angriffe auf ein Schiff im %BULLSEYEARC% haben an sich keinen besonderen Effekt,
jedoch können Kartenfähigkeiten darauf Bezug nehmen.
<h5>Volle Winkel</h5>
Es gibt 2 <strong>volle Winkel</strong> welche die Mittellinie, anstatt der aufgedruckten
Winkel verwenden.<br>
1. <strong>Vorderer voller Winkel (%FULLFRONTARC%):</strong> Dieser Winkel deckt den gesamten Bereich
vor dem Schiff ab. Manche Schiffe haben %FULLFRONTARC%-Primärwaffen.<br>
2. <strong>Hinterer voller Winkel (%FULLBACKARC%):</strong> Dieser Winkel deckt den gesamten Bereich
hinter dem Schiff ab.<br>
Über die Winkel %FULLFRONTARC% und %FULLBACKARC% sowie eine Verlängerung der Mittelinie auf Reichweite 3
lässt sich das räumliche Verhältnis von Schiffen zueinander beschreiben. Dabei
kommen folgende Begriffe zum Einsatz:<br>
• <strong>Hinter:</strong> Wenn Schiff A im %FULLBACKARC% von Schiff B ist und Schiff A nicht über die
Mittellinie von Schiff B hinausragt, dann ist Schiff A <strong>hinter</strong> Schiff B.<br>
• <strong>Vor:</strong> Wenn Schiff A im %FULLFRONTARC% von Schiff B ist und Schiff A nicht über die
Mittellinie von Schiff B hinausragt, dann ist Schiff A <strong>vor</strong> Schiff B.<br>
• <strong>Flankieren:</strong> Wenn Schiff A über die Mittellinie von Schiff B hinausragt, dann
wird Schiff B von Schiff A <strong>flankiert</strong>.
<h5>Geschützturm-Winkel</h5>
Manche Waffen haben einen drehbaren Winkel, dessen Position mit einem
Geschützturm-Winkelanzeiger markiert wird. Es gibt zwei Arten von Geschützturm-
Winkelanzeigern: einzel (%SINGLETURRETARC%) und doppel (%DOUBLETURRETARC%). Wenn ein Schiff eine %SINGLETURRETARC%- oder %DOUBLETURRETARC%-Waffe
als Primär- oder Spezialwaffe hat, wird während des Spielaufbaus ein passender
Geschützturm-Winkelanzeiger zu seiner Basis hinzugefügt.
Der Geschützturm-Winkelanzeiger zeigt auf einen der vier Standardwinkel des
Schiffes. Dieser Winkel ist weiterhin ein Standardwinkel, aber gleichzeitig auch ein
%SINGLETURRETARC%. Solange ein Schiff einen %SINGLETURRETARC%-Angriff durchführt, kann es ein Ziel in seinem %SINGLETURRETARC%
angreifen.
Ein Schiff mit einem Doppel-Geschützturm-Winkelanzeiger
hat zwei %SINGLETURRETARC% in entgegengesetzten Richtungen.
Mit der Aktion „Rotieren“ (%ROTATE%) kann ein Schiff seinen
Geschützturm-Winkelanzeiger auf einen (oder zwei) andere
Standardwinkel drehen.
Für riesige Schiffe gibt es Zusatzregeln für Geschützturm-
Winkelanzeiger (vgl. Anhang: Riesige Schiffe).
<h5>Feuerwinkel</h5>
Die feuerwinkel eines Schiffes umfassen alle eingefärbten Winkel auf dem
Schiffsmarker sowie alle %SINGLETURRETARC%, falls vorhanden.<br>
• Wenn eine Aufwertungskarte einem Schiff einen %SINGLETURRETARC% oder eine Primärwaffe mit
einem bestimmten Winkel verleiht, so sind diese Winkel ebenfalls Feuerwinkel."
            "WÜRFELMODIFIKATION":
                name: "Würfelmodifikation"
                text: "Die Spieler können verschiedene Marker ausgeben und Fähigkeiten abhandeln, um
Würfel zu modifizieren. Würfel können auf folgende Arten modifiziert werden:<br>
• <strong>Hinzufügen:</strong> Ein Würfelergebnis wird hinzugefügt, indem man einen
ungenutzten Würfel auf das jeweilige Ergebnis dreht und ihn neben den
geworfenen Würfeln platziert. Ein auf diese Weise hinzugefügter Würfel gilt in
allen Belangen als normaler Würfel und kann modifiziert und negiert werden.<br>
• <strong>Ändern:</strong> Ein Würfelergebnis wird geändert, indem man den Würfel auf das
neue Ergebnis dreht.<br>
• <strong>Neu werfen:</strong> Ein Würfelergebnis wird neu geworfen, indem man den Würfel
nimmt und ihn erneut wirft.<br>
• <strong>Ausgeben:</strong> Ein Würfelergebnis wird ausgegeben, indem man den Würfel aus
dem Würfelpool entfernt.<br>
Außerdem gilt:<br>
• Würfelmodifikationen finden während des Schrittes „Angriffswürfel
modifizieren“ bzw. „Verteidigungswürfel modifizieren“ statt, es sei denn,
etwas anderes ist angegeben.<br>
• Würfel können zwar von mehreren Effekten modifiziert werden, aber jeder
Würfel kann höchstens ein Mal neu geworfen werden.<br>
• Wenn eine Fähigkeit ein Schiff anweist, ein Ergebnis auszugeben, kann es
die Ergebnisse eines anderen Schiffes nicht ausgeben, sofern nicht anders
angegeben.<br>
• Das Negieren von Würfeln ist keine Würfelmodifikation.<br>
• Das Werfen zusätzlicher oder weniger Würfel ist keine Würfelmodifikation.<br>
• Wenn ein Würfel nicht zu einem bestimmten Ergebnis geändert werden kann,
passiert nichts.<br>
◊ Beispiel: Ein Angriffswürfel kann nicht auf ein %EVADE%-Ergebnis geändert werden,
da der Würfel dieses Symbol nicht hat."
            "ZEITPUNKTE":
                name: "Zeitpunkte"
                text: "Bestimmte Begriffe werden verwendet, um den genauen Zeitpunkt eines Effekts zu
definieren:<br>
• <strong>Bevor:</strong> Der Effekt wird unmittelbar vor dem genannten Zeitpunkt abgehandelt.<br>
• <strong>Zu Beginn des/der:</strong> Dieser Zeitpunkt ist mit einer bestimmte Phase oder
einem Spielschritt verbunden. Der Effekt wird ausgelöst, bevor irgendetwas
anderes während dieser Phase oder dieses Schrittes passiert.<br>
• <strong>Solange:</strong> Dieser Begriff wird oft im Zusammenhang mit Spieleffekten
verwendet, die aus mehreren Schritten bestehen (wie z. B. ein Angriff, eine
Aktion oder ein Manöver). Er ist nicht so spezifisch wie andere Begriffe, grenzt
aber den Zeitrahmen ein, in dem die Fähigkeit abgehandelt wird. Der genaue
Zeitpunkt, zu dem der Effekt angewandt wird, ergibt sich aus dem Kontext.<br>
◊ Beispiel: Eine Fähigkeit, die zusätzliche Angriffswürfel werfen lässt,
wird während des Schrittes „Angriffswürfel werfen“ ausgelöst. Eine
Fähigkeit, die Verteidigungswürfel modifiziert, wird während des Schrittes
„Verteidigungswürfel modifizieren“ ausgelöst.<br>
• <strong>Am Ende des/der:</strong> Dieser Zeitpunkt ist mit einer bestimmten Phase oder
einem Schritt der Schiffsaktivierung verbunden. Der Effekt wird ausgelöst,
nachdem die normalen Effekte der Phase oder des Schrittes eingetreten sind.<br>
• <strong>Nachdem:</strong> Der Effekt wird unmittelbar nach dem genannten Zeitpunkt
abgehandelt.<br>
Die Fähigkeits-Warteschlange hilft beim Abhandeln von Fähigkeiten, die eigentlich
gleichzeitig abgehandelt werden sollten."
            "ZEITZÜNDER":
                name: "Zeitzünder"
                text: "Ein Gerät oder Hindernis ist <strong>gezündet</strong>, solange es mindestens
1 Zeitzünder (%FUSE%) hat. Sobald ein gezündetes Gerät detonieren würde,
wird statt dessen 1 Zeitzünder von ihm entfernt und das Gerät
detoniert nicht. Sobald ein gezündetes Hindernis entfernt werden
würde, wird stattdessen 1 Zeitzünder von ihm entfernt und das
Hindernis wird nicht entfernt."
            "ZENTRALER WINKEL":
                name: "Zentraler Winkel"
                text: "%BULLSEYEARC%; Siehe Winkel."
            "ZIEL":
                name: "Ziel"
                text: "Das Ziel eines Angriffs wird während des Schrittes „Ziel deklarieren“ festgelegt.
Ein feindliches Schiff, das erfolgreich zum Ziel deklariert wurde, wird Verteidiger
genannt."
            "ZIELERFASSUNG":
                name: "Zielerfassung"
                text: "Piloten können ein Ziel erfassen, um Gefahrenstellen oder andere Schiffe vom
Bordcomputer analysieren zu lassen. Sobald ein Schiff eine %TARGETLOCK%-Aktion durchführt,
erfasst es ein Ziel. Ein <strong>erfassendes</strong> Schiff ist ein Schiff, das in folgenden Schritten
versucht, ein Ziel zu erfassen:<br>
Das erfassende Schiff misst die Reichweite zu beliebig vielen Objekten ab.<br>
1. Es wählt ein anderes Objekt in Reichweite 0–3.<br>
2. Dem gewählten Objekt wird ein Zielerfassungsmarker zugeordnet, dessen Nummer
dem ID-Marker des erfassenden Schiffes entspricht.<br>
Ein Objekt ist <strong>als Ziel erfasst</strong>, solange ihm mindestens 1 Zielerfassungsmarker
zugeordnet ist. Zielerfassungsmarker sind rote Marker. Solange ein Schiff ein anderes
Schiff als Ziel erfasst hat, gilt folgende Regel:<br>
• Beim Angreifen kann ein Schiff während des Schrittes „Angriffswürfel modifizieren“
einen Zielerfassungsmarker, den es auf dem Verteidiger hat, ausgeben, um 1 oder
mehrere seiner Angriffswürfel neu zu werfen.<br>
Außerdem gilt:<br>
• Besagt eine Anweisung, dass ein Schiff eine seiner Zielerfassungen <strong>verliert</strong>, wird
der zu seinem ID-Marker gehörende Zielerfassungsmarker entfernt.<br>
• Solange du ein Ziel erfasst, scheitert das nur, falls kein zulässiges Objekt gewählt
werden kann.<br>
• Ein Schiff kann sich nicht selbst als Ziel erfassen oder erfasst haben.<br>
• Ein Objekt kann auch von mehreren Schiffen gleichzeitig als Ziel erfasst sein.<br>
• Ein Schiff kann nur 1 Zielerfassung aufrechterhalten. Bevor ein Schiff ein zweites
Objekt als Ziel erfasst, wird der bisherige Zielerfassungsmarker entfernt.<br>
• Wenn eine Fähigkeit ein Schiff zum Erfassen eines Ziels auffordert, ist dies etwas
anderes als das Durchführen einer %TARGETLOCK%-Aktion. Ein Schiff, das ein Ziel erfasst,
ohne die Aktion durchzuführen, kann in dieser Runde immer noch die %TARGETLOCK%-Aktion
durchführen.<br>
◊ Wird ein Schiff dazu angewiesen, ein Ziel zu erfassen, muss das erfasste Objekt
in Reichweite 0–3 sein, es sei denn, etwas anderes ist angegeben."
            "ZUFÜGEN":
                name: "Zufügen"
                text: "Manche Spezialwaffen fügen Marker zu, anstatt Schaden zuzuteilen. Wenn ein Angriff
Marker zufügt, erhält der Verteidiger die genannte Anzahl und Art an Markern."
            "ZUSTANDSKARTEN":
                name: "Zustandskarten"
                text: "Zustandskarten sind Karten, die über Schiffs- und Aufwertungskarten zugeordnet
werden, und einen andauernden Spieleffekt darstellen. Eine Zustandskarte ist nicht
im Spiel, bis sie durch einen Spieleffekt einem Schiff zugeordnet wird. Sobald eine
Zustandskarte zugeordnet wird, handelt man ihren Text ab.
Nachdem einem Schiff eine Zustandskarte zugeordnet worden ist, wird dem Schiff
der passende Zustandsmarker zugeordnet, um an den andauernden Effekt der
Karte zu erinnern.<br>
• Ein Zustandsmarker wird entfernt, sobald die zugehörige Zustandskarte
entfernt wird.<br>
• Ein entfernter Zustand kann erneut zugeordnet werden.<br>
• Wird ein Schiff aus dem Spiel entfernt, werden alle Zustandskarten, die ihm
zugeordnet waren, nicht entfernt.
<h5>Limitierte Zustände</h5>
Manche Zustände sind limitiert. Das bedeutet, dass jeder Spieler diesen
Zustand nur in begrenzter Ausführung im Spiel haben kann. Wenn ein Effekt eine
neue Ausführung eines limitierten Zustands zuordnet und dadurch das Limit
eines Spielers für diesen Zustand überschritten wird, dann wählt der Spieler,
dessen Effekt zum Zuordnen des Zustands geführt hat, eine im Spiel befindliche
Ausführung des limitierten Zustands und entfernt sie. Anschließend ordnet er die
neue Ausführung jenes limitierten Zustands zu.
Beispiel: Ein Zustand ist Limitiert 1 und ein Spieler würde eine zweite Ausführung
dieses Zustands zugeordnet bekommen. In diesem Fall würde die erste Ausführung
der Zustandskarte entfernt und anschließend die zweite zugeordnet.
<h5>Geheime Zustände</h5>
<strong>Geheime Zustände</strong> sind Zustandskarten, die sich einen Zustandsmarker teilen
und die verdeckt statt offen zugeordnet werden. Ein geheimer Zustand wird von
einem Spieler zugeordnet und die anderen Spieler wissen nicht, welcher der
geheimen Zustände, die denselben Marker teilen, zugeordnet wurde. Sie werden
aufgedeckt, sobald ihr Effekt abgehandelt wird. Außerdem gilt:<br>
• Kein Schiff kann mehr als 1 geheimen Zustand mit demselben Zustandsmarker
haben.<br>
• Wird einem Schiff, das bereits einen geheimen Zustand hat, ein neuer
geheimer Zustand mit demselben Zustandsmarker zugeordnet, wird der
vorherige Zustand entfernt. (Falls er verdeckt war, wird er dabei nicht
aufgedeckt.)<br>
• Der Spieler, der durch einen Effekt den Zustand zugeordnet hat, darf sich die
verdeckte Zustandskarte jederzeit anschauen.<br>
• Für alle anderen Spieler sind der zugeordnete geheime Zustand sowie alle
nicht zugeordneten geheimen Zustände mit demselben Zustandsmarker
verborgene Informationen.<br>
• Der Text von geheimen Zuständen stellt eine offene Information dar und
kann von jedem Spieler jederzeit eingesehen werden. Produkte mit geheimen
Zuständen enthalten eine zusätzliche Kopie der geheimen Zustände zur Ansicht
aller Spieler. Dadurch muss der Zustand, der im Spiel ist, nicht enthüllt
werden."
                
        faq:
            "ABSETZEN":
                name: "Absetzen"
                text: """<strong>F: Falls ein Schiff, das mit Boba Fett ausgerüstet ist, nicht in Reichweite 0 zu einem Hindernis und jenseits von Reichweite 3 zu einem beliebigen feindlichen Schiff platziert werden kann, was passiert dann?</strong><br>A: Jenes Schiff wird stattdessen in Reichweite 1 zum Spielflächenrand des kontrollierenden Spielers aufgestellt."""
            "AKTIVIERUNGSPHASE UND AKTIONEN":
                name: "Aktivierungsphase und Aktionen"
                text: "<strong>F: Falls ein Effekt besagt, „behandle eine Aktion als violett“ und ein anderer „behandle eine Aktion als rot“, was passiert? </strong><br>A: Aktionen haben drei Schwierigkeiten, von wenig bis sehr restriktiv: weiß, rot, violett. Falls zwei oder mehr Effekte die Ausgangsfarbe einer Aktion verändern würden, wird die restriktivste Farbe angewandt. Wenn eine Aktion also zugleich als rot und als violett behandelt wird, wird sie als violett behandelt, da dies die restrikivste Farbe darstellt. <br><br><strong>F: Was ist die Schwierigkeit einer Aktion, deren Schwierigkeit nicht angegeben ist? (Z. B. Lando Calrissians (Rebellen, %CREW%) einzigartige Aktion oder die Koordinieren-Aktion, die „Wesir“ (TIE-Schnitter) als Teil seiner Pilotenfähigkeit durchführen kann.)</strong><br>A: Weiß. Allerdings verwendet ein Schiff die Schwierigkeit einer Aktion auf der Aktionsleiste, falls es dazu angewiesen wird, eine Aktion „auf seiner Aktionsleiste“ durchzuführen <br><br><strong>F: Falls ein Schiff ein rotes Ausweichen an eine andere Aktion gekoppelt hat (wie z. B. der TIE-Aggressor oder das Jagdshuttle), Trümmertanz (%TALENT%) ausgerüstet hat und in Reichweite eines Hindernisses ist, behandelt es dann das gekoppelte rote Ausweichen als weiß? </strong><br>A: Ja. Trümmertanz verändert jede rote Ausweichen-Aktion auf der Aktionsleiste des Schiffes, dazu zählen auch gekoppelte Aktionen. <br><br><strong>F: Kann ein ionisiertes Schiff nach dem Durchführen einer %FOCUS%-Aktion eine andere Aktion durchführen, die an die %FOCUS%-Aktion gekoppelt ist?</strong><br>A: Nein. Ein ionisiertes Schiff ist auf die Durchführung seiner %FOCUS%-Aktion beschränkt.<br><br><strong>F: Kann ein ionisiertes Schiff, dem nach dem Ausführen eines Manövers eine Nicht-%FOCUS%-Aktion gewährt wird (etwa ein Delta-7-Aethersprite, der unter Verwendung seiner Präzisionssteuerung eine %BARRELROLL%- oder %BOOST%-Aktion durchführt, oder ein TIE-Abwehrjäger, der mittels Vollgas eine %EVADE%-Aktion durchführt), diese Aktion durchführen?</strong><br>A: Nein. Ein ionisiertes Schiff ist auf die Durchführung seiner %FOCUS%-Aktion beschränkt. <br><br><strong>F: Falls ein Schiff versucht, eine violette Aktion durchzuführen (etwa eine %BARRELROLL%- oder %BOOST%-Aktion), und dabei scheitert, muss es trotzdem die %FORCE% bezahlen?</strong><br>A: Ja. Die %FORCE%-Kosten einer violetten Aktion sind „Kosten für den Versuch, eine violette Aktion durchzuführen“ (vgl. Aktionen) und müssen auch bezahlt werden, wenn der Versuch scheitert. <br><br><strong>F: Falls Anakin Skywalker (Königlicher N-1-Sternenjäger von Naboo) seine Pilotenfähigkeit für eine Fassrolle nutzt (was nicht als %BARRELROLL%-Aktion zählt) und scheitert, muss er trotzdem die %FORCE% bezahlen?</strong><br>A: Nein. Eine Fassrolle kann genauso wie eine %BARRELROLL%-Aktion scheitern, da aber Anakins Fähigkeit keine Aktion ist, sind die %FORCE%-Kosten nicht als Kosten für den Versuch eine Aktion durchzuführen, sondern als Kosten zur Abhandlung des Effektes zu sehen.<br><br><strong>F: Erfordert Gespür (%FORCEPOWER%) das Ausgeben von 1 %FORCE% vor dem Abmessen der Reichweite zu anderen Schiffen?</strong><br>A: Nein. Das Messen der Reichweite zur Überprüfung, welche Schiffe in Reichweite 0–1 und welche in Reichweite 0–3 sind, erfolgt vor der Entscheidung, ob %FORCE% ausgegeben wird, um ein Schiff in Reichweite 0–3 als Ziel wählen zu können.<br><br><strong>F: Was passiert, falls ein Quadrijet-Transferschlepper seine „Schlepperstrahl“-Aktion verwendet und kein Schiff in seinem vorderen Winkel in Reichweite 1 wählen kann? </strong><br>A: Die Aktion scheitert.<br><strong>A: Solange ein Schiff eine Tallon-Rolle ausführt und nicht an der mittleren Position platziert werden kann (Markierung an der Basisseite auf einer Höhe mit der Mittellinie der Schablone), kann es dann sein Manöver vollständig ausführen? </strong><br>A: Ja, solange es eine gültige Position gibt, wo es platziert werden kann. Solange das Schiff beim Ausführen einer Tallon-Rolle an mindestens einer der drei möglichen Positionen platziert werden kann (Markierung an der Basisseite auf einer Höhe mit der linken Kante, der Mittellinie oder der rechten Kante des Endes der Schablone), muss es eine der gültigen Positionen wählen und führt damit das Manöver vollständig aus. Falls eine gültige Position existiert, kann es keine ungültige Position wählen und so das Manöver nur teilweise ausführen. Wie beim Abhandeln einer Fassrolle kann der Spieler die drei unterschiedlichen Positionen ausprobieren, bevor er sich für eine davon entscheidet. <br><br><strong>F: Kann Ved Foslo [TIE-x1-Turbojäger] seine Schiffsfähigkeit verwenden, um die Geschwindigkeit eines [1 %BANKLEFT%]- oder [1 %BANKRIGHT%]-Manövers zu reduzieren und so ein [0 %BANKLEFT%]- oder [0 %BANKRIGHT%]-Manöver auszuführen?</strong><br> A: Nein. Drehmanöver mit Geschwindigkeit 0 können nur von riesigen Schiffen ausgeführt werden. Sie können nicht von Standardschiffen ausgeführt werden, selbst wenn ein bestimmtes Schiff die Fähigkeit zum Ausführen eines Manövers besitzt, das nicht auf seinem Rad aufgeführt ist.<br><br><strong>F: Was ist der Unterschied zwischen „ein Rad umdrehen“ und „ein Rad aufdecken“ und wann tritt was davon ein? </strong><br>A: „Ein Rad umdrehen“ bezeichnet das physische Umdrehen eines Rades, sodass die Oberseite (mit den Manövern) sichtbar ist. „Ein Rad aufdecken“ ist die Spielmechanik, die während der Aktivierung eines Schiffes eintritt. Ein Schiff, das sein Rad aufdeckt, dreht es dabei um. Allerdings decken andere Effekte, die sich auf das Umdrehen eines Rades beziehen, wie der Zustand Abhörgerät der Aufwertung Informant [%CREW%], ein Rad <strong>nicht</strong> auf, sodass Fähigkeiten, die ausgelöst werden, sobald ein Rad aufgedeckt wird, durch Umdrehen nicht ausgelöst werden. Außerdem kann ein Schiff sein Rad immer noch zum passenden Zeitpunkt seiner Aktivierung „aufdecken“ (und dadurch entsprechende Effekte auslösen), obwohl das Rad bereits umgedreht ist."
            "":
                name: ""
                text: ""
            "OTHER":
                name: "Auch hier fehlt noch was"
                text: "Vielleicht sollte ich das noch stärker automatisieren..."