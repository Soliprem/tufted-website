#import "../index.typ": *
#set text(lang: "it")
#show: template

= Introduzione
Durante il corso si è molto discusso delle componenti tecniche che delineano le difficoltà di implementazione di una mobilità aerea sostenibile. Allo stesso tempo, sono stati presentati diversi degli avanzamenti che sono stati raggiunti da un punto di vista tecnologico per arrivare ad una mobilità aerea che sia in effetti sostenibile. Per quanto non sia possibile mettere in dubbio la necessità di un'analisi tecnica —per ovvie ragioni—, trovo altrettanto essenziale analizzare come questi avanzamenti poi si diffondano all'interno della società. A tal proposito, in questo elaborato vorrei analizzare 3 componenti: In primis, un approccio classico (teorie basate su pattern assodati, in particolare la famosissima _S curve_). In secondo luogo, un'analisi sui possibili ostacoli di mercato, in particolare quelli legati alla specifica industria della mobilità aerea#footnote[ci sono diversi possibili esempi a cui uno può attingere. In particolare mi concentrerò sulla natura oligopolica del mercato, e di una forte discrepanza nell'elasticità fra tipi di viaggiatori diversi]. Infine, un'osservazione sommaria su teorie che personalmente trovo più interessanti: formulazioni della diffusione come analisi di network. Quest'ultimo approccio in particolare è interessante se informato da principi tratti dal secondo, e testato su dati assodati raccolti nei casi studio che formulano il primo. La componente sperimentale è fuori dal campo di questo elaborato, che si limiterà a fare un'analisi esplorativa usando dati esistenti.

= Classici modelli di diffusione

Tutti conosciamo il classico grafico ad S (@grafico-s).

#figure(caption: [curva dell'adozione di una tecnologia],  image("./s-curve.png")) <grafico-s>

In questo grafico, ovviamente basato su grandi quantità di aggregazione ed astrazione di movimenti che raramente sono interamente così lisci e "lineari" (si tratta infatti della funzione cumulativa di una distribuzione normale), viene reso evidente un trend che viene corroborato molto dai dati (@grafici-s): nuove tecnologie (od idee, in modo più generalizzabile) tendono ad avere distinte "fasi" di adozioni, distinte dalla velocità di espansione della loro adozione. 


Questi dati si prestano a varie interpretazioni. Nella loro versione più basilare, c'è una semplice osservazione che si può fare sulla maturità della tecnologia (è l'interpretazione che viene enfatizzata dalle legende in @grafico-s): mano a mano che una tecnologia acquisisce utilizzatori, tende a  migliorare. Divenire meno costosa, divenire più efficace. Col tempo, se l'idea si mantiene valida, è naturale presumere che diventi un nuovo standard, e che con ciò acquisisca utenti dagli standard uscenti. Il ciclo diviene virtuoso, il che porta all'accelerazione nella parte centrale del grafico, e poi termina quando non rimane più semplicemente nessuno da convertire. Per quanto convincente, quest'interpretazione è carente in diversi punti critici:
- È eccessivamente ottimistica: implica che non ci siano attriti oltre alla semplice qualità del prodotto. 
- Implica un'impossibilità di intervenire: secondo quest'analisi ogni prodotto ha esattamente il numero di utenti che si "merita" in un dato momento.
- È "pigra", perché non fornisce meccanismi causali espliciti. È l'equivalente di —in economia— proporre che certe azioni sono semplicemente dettate da una preferenza insindacabile di un agente#footnote[l'esempio che comunemente viene portato è quello delle recessioni: è possibile sostenere che l'intera popolazione abbia semplicemente deciso simultaneamente di spendere meno perché si è svegliata storta. Ovviamente non è una spiegazione a cui viene dato particolare valore, per quanto sarebbe una spiegazione valida da un punto di vista strettamente modellistico, essendo le preferenze una possibile primitiva nei modelli microeconomici.].

#figure(caption: [Dati corroboranti dell'idea delle curve ad S], image("./s-curves.png")) <grafici-s>

Osservando quindi dei grafici che raffigurino dei dati reali e non un'astrazione, possiamo osservare dei trend in più che possano permetterci di formulare dei modelli più utili. 

In questo grafico in @grafici-s è possibile osservare come in tempi più recenti la curva di adozione cresca più rapidamente. Questo sicuramente può aprire delle ipotesi interessanti sui modelli che si basino sulla diffusione di informazione, visto che corrisponde temporalmente all'aumento di velocità nella trasmissione di informazione dell'internet, e ne parlerò più avanti sotto le teorie dei Network. In questa sezione mi concentrerò sul modello di Bass.

== Modello di Bass

Il modello di Bass, sviluppato da Frank Bass @bass1969, è una semplice equazione differenziale, descrivente il processo di adozione di nuovi prodotti da una popolazione. L'idea che formalizza è che un nuovo utente può essere un _innovatore_ od un _imitatore_.

Il modello si concentra principalmente sulle prime due fasi del ciclo di vita di un prodotto (Introduzione e Crescita), anche se estensioni formulate successivamente al modello pubblicato nel 1969 da Bass includono formulazioni matematiche anche per gli ultimi (Maturità e Declino).

Il modello si presenta come segue:

$
f(t) / (1 - F(t)) = p + q F(t)\
(d F) / (d t) = p - F(p - q) - q F^2
$ <bass-model>

Dove:
- $F(t)$ è la frazione di installazione di partenza
- $f(y)$ è il tasso di incremento della frazione $F(t)$ (i.e. $f(t) = F'(t)$)
- $p$ è il coefficiente di innovazione
- $q$ è il coefficiente di imitazione

I punti di interesse nella calibrazione di questo modello sono nell'osservare le variazioni di $q$ e $p$, e come la loro interazione influenza le previsioni del modello. Intuibilmente, qualora $q < p$, l'imitazione procede più rapidamente dell'innovazione. Questo porta ad una crescita di mercato del prodotto. Viceversa, $q < p$ porta ad una contrazione delle vendite dopo il periodo di lancio.

La naturale conclusione di questo modello è la forse ovvia conclusione che è necessario massimizzare la propensità di imitazione nella popolazione obbiettivo.

= Modelli di Mercato

Per poter implementare un cambiamento di paradigma, è necessario che riesca ad inserirsi nel mercato attivo in cui vuole instaurarsi. Il mercato della mobilità aerea è particolarmente complicato per diverse ragioni @doganis2019:
+ Ha livelli di elasticità molto diversi fra diversi settori di consumatori
+ Opera su margini molto stretti
+ È fortemente oligopolico 

== Elasticità

Il mercato per i voli aerei è diviso in due fasce principali: i voli presi per _lavoro_ ed i voli presi per _piacere_. Mentre la domanda per i primi è naturalmente inelastica poiché sono spostamenti che avvengono per necessità, i dati mostrano che la domanda per il secondo è invece _molto_ elastica @doganis2019. Si può notare nel declino nei voli in periodi di crisi economica, come anche in periodi di crisi sociale. Si pensi semplicemente alla forte diminuzione dei voli verso gli USA dopo l'elezione di Trump nel 2024 e l'imposizione dei dazi. In modo intuitivo, si può dire semplicemente che una viaggio è una cosa che è semplice scegliere di non fare, comportando una spesa spesso importante. 

L'implicazione più importante per l'obbiettivo di questo elaborato è che un'elasticità così alta significa che anche incrementi di prezzo non particolarmente ingenti hanno la possibilità di causare grandi perdite di flusso di denaro per l'azienda che dovesse implementarli. Nel caso delle compagnie aeree, questo comporta dei rischi importanti.

== Margini

Molte compagnie aeree operano con margini molto stretti. Per via di una competizione, per quanto oligopolica, molto efficace (e soprattutto grazie ad enti regolatori generalmente molto severi per quanto riguarda la rottura di cartelli), le compagnie si trovano spesso con margini di profitto molto bassi (il che è visibile nel relativamente alto tasso di fallimento delle aziende) @doganis2019. Dal punto di vista delle linee, quindi, uno shock relativamente piccolo può causare danni ingenti alla loro capacità di operare, il che può portare ad ulteriori accentramenti. Un aumento dell'accentramento di un mercato è raramente preferibile, perché fa divergere gli incentivi economici della compagnia da quelli del consumatore, e quindi il sistema di mercato smette di portare ad un risultato tendente all'utilità collettiva, favorendo la compagnia, che ottiene un potere spropositato.

== Oligopoli

Oltre alla tendenza agli accentramenti dovuti ai fallimenti di cui è stato discusso sopra, ci sono altre considerazioni da fare riguardo l'accentramento del mercato dell'aviazione. Infatti, il mercato dell'aviazione e della mobilità aerea in generale è ideale per la formazione di oligopoli per diverse ragioni @doganis2019. In primis ci sono costi d'ingresso smisurati. In secondo luogo è necessario un importante livello di procedura per poter fabbricare velivoli commerciali, e come anche per poterli far volare. 

== Soluzioni
Quando si combinano questi tre elementi, e conoscendo grazie ai modelli di mercato gli effetti negativi dei monopoli (o, per essere più precisi, di compagnie che brandiscono potere di mercato), diventa chiaro che è necessario agire con cautela per assicurarsi che in qualche modo gli eventuali costi di uno spostamento non rechino danno alle compagnie che lo intraprendono.

Fra le possibili metodologie di interventi che possa fare un policy-maker, trovo queste essere le più interessanti:
- Una tassa Pigouviana accoppiata ad un sistema di sussidio basato su criteri di impatto ambientale
- Nazionalizzazione dei voli

=== Tasse Pigouviane

Una tassa si dice Pigouviana quando la sua funzione principale è inserire nei costi di un'azienda un'esternalità negativa che prima era in grado di ignorare. Si tratta di un tipo di tassa non distrorsionaria, che significa che non impone inefficienze in un mercato nemmeno a livello puramente teorico (in cui si da per assunto che il mercato operi in modo altrimenti efficiente. Questo tipo di modello è di per se irrealistico. Lo utilizzo perché si tratta del caso peggiore per giustificare un intervento di policy).

L'esempio classico di una tassa Pigouviana è la _carbon tax_. Sosterrei che in questo caso, il primo set per assicurarsi una transizione verso forme di mobilità sostenibile sia introdurre una tassa aggressiva su forme di energia non sostenibile. Alzandone il prezzo artificialmente, si favorisce lo spostamento del consumo verso alternative pulite.

Con i ricavati della tassa è possibile sostenere sussidi per le compagnie in fase di transizione, destinati ad i programmi di transizione. È necessario però assicurarsi che le compagnie non dipendano dai sussidi per fare un profitto, poiché non è l'intenzione di questa policy la nazionalizzazione delle compagnie. Per quanto quella sia un'alternativa valida, richiederebbe un cambio di paradigma importante.

=== Nazionalizzazione

Parlare di nazionalizzazione, e quindi introdurre un central planner, non è particolarmente entusiasmante. Il motivo, semplicemente, è che più che un esercizio di modello per quanto riguarda gli incentivi diventa un esercizio di modello sulle elezioni politiche di una nazione, che è fuori dal campo di questo elaborato. Gli incentivi di un central planner si presumono essere allineati con quelli della società, ed i suoi fallimenti si possono presumere nati da errore e non malizia, tendenzialmente. Per questi motivi, sebbene fosse necessario quantomeno menzionare questa ipotesi, non ne condurrò un'analisi.


= Modelli di diffusione su Network

Arriviamo infine ad un approccio più recente. Se l'approccio di Bass è uno di aggregazione, un approccio di network ad agenti è un approccio più simulazionistico o strutturale @jackson2008. Personalmente trovo l'idea di studiare la diffusione delle innovazioni come un problema di diffusione di informazioni molto azzeccata. Come avevo detto prima, c'è stato un incremento nella velocità di diffusione del primo quando è aumentata la velocità di comunicazione nel secondo. Inoltre, trovo i concetti siano strettamente legati a livello intuitivo.

Ad un livello più pratico, è possibile formulare dei modelli che imitino gli effetti del Bass, la cui efficacia in grandi linee (date buone stime di $p$ e $q$) è dimostrata.

== Progettare un modello

La proposta che trovo più interessante è la seguente:
- si prenda un modello classico di un network
- si applichi a ciascun nodo $x$ un valore threshold $T$, che rappresenti la frazione di nodi adiacenti che abbiano già innovato per cui è necessario che il nodo consideri di innovare a sua volta @granovetter1978. 

Le proprietà di questo modello sono difficili da quantificare senza fare una simulazione per la quale, al momento della scrittura, non ho le risorse. Tuttavia, è possibile fare un'analisi qualitativa: si percepirà un inizio lento, in cui solamente i più grandi innovatori ($forall x | T = 0$) innoveranno. Gli innovatori però raggiungeranno porteranno al superamento del threshold di altri nodi, il che porterà, nel caso in cui ci sia una struttura di incentivi sufficientemente solida, ad un circolo vizioso non dissimile da quello descritto dai modelli di diffusione di Bass. 

Il vantaggio di un approccio di Network è che fornisce ulteriori spunti su come formulare della policy, perché simula in modo più preciso le dinamiche della società, che è in fondo un network di agenti @jackson2008. Per fare un esempio, dovessimo come policy maker incentivare la coltivazione di carote al costo dei cavoli, sarebbe più efficace creare dei sistemi di incentivi per nodi che siano dei ponti o dei broker, di modo da massimizzare la diffusione dell'innovazione.#footnote[nel momento in cui immergiamo il concetto di network all'interno di un ambiente di mercato, il concetto di vicinanza è più collegato alle cooperazioni od alle competizioni fra compagnie piuttosto che alla vicinanza fisica.]

Si può quindi formulare un insieme di criteri per stimare l'impatto di una decisione di policy quando si va a cercare di massimizzare l'effetto del sussidio proposto sopra.

I due criteri fondamentali che diventa necessario aggiungere sono il concetto di connettività e peso.

Possiamo definire l'influenza di un nodo come la sua centralità di grado, quantificata come la quantità di link che un nodo ha, normalizzata sul numero totale di link presente nel sistema (per permetterci di svolgere comparazioni fra network diversi):
$
C_D(x) = deg(x) / (N - 1)
$<deg-centrality>

Per definire il peso, invece, serve osservare —dati due nodi $a,b$ collegati fra loro— la frazione dell'attività del nodo $b$ "catturata" dal nodo $a$ per calcolare la componente $b$ del peso di $a$ (e viceversa). Una somma delle componenti, normalizzata sulla media del sistema, darebbe il peso totale di un nodo. Si può vedere come il "peso" di ciascun link.

Un'alternativa più semplice da derivare perché non richiede un'analisi sistematica di ogni interazione (per cui diventa molto complicato avere dati aggiornati e sincronizzati), che è usare la centralità di intermediazione, quantificata come la frequenza con cui un nodo agisce come "ponte" lungo il percorso più breve tra due altri nodi qualsiasi. Per un nodo $x in XX$:

$
C_B(x) = sum_(a,b in XX) sigma(a, b | x)/ sigma(a, b) \
"normalizziamo" => C'_B(x) = C_B(x) / ((N-1)(N-2))
$<inter-centrality>

Dove $sigma(a, b)$ è il numero totale di percorsi minimi tra $s$ e $b$, e $sigma(a, b | x)$ è il numero di quei percorsi che passano per $x$.

I nodi con alta intermediazione sono cruciali per trasmettere l'innovazione tra cluster altrimenti isolati (es. voli intercontinentali che collegano mercati domestici distinti).

Un altro aspetto che non viene catturato dalla prima definizione di peso, ma che viene catturato dalla centralità di intermediazione è la direzione dei flussi di informazione su distanze più lunghe di 1.


Per avere infine una visione meno granulare, ma più d'impatto, potrebbe divenire possibile formulare un semplice indice di questi due valori. Ad esempio:

$
W(x) = C_D(x) * C'_B(x)
$<weight>

Ottenuti questi valori, si ha ottenuto una stima dell'influenza di un'azienda all'interno del mercato che si sta modellando. Questo permette di direzionare in modo più strategico i fondi ottenuti dalla tassa Pigouviana.

Avendo ora una misura più precisa dell'influenza di un nodo, possiamo ridefinire $T$ come la frazione di _influenza_ locale necessaria perché un nodo consideri l'innovazione @granovetter1978.#footnote[È naturale pensare che se il singolo cliente principale di un agente, mediante —ad esempio— il 70% delle sue transazioni, cambiasse necessità, anche se fosse solamente uno di molti clienti, l'agente cambierebbe comportamento]

Al fine di visualizzare concretamente il vantaggio teorico discusso, ho implementato una simulazione stilizzata (il cui codice sorgente è riportato in appendice).

Come evidenziato dai risultati in @simulazione-budget, l'utilizzo di qualunque degli indicatori suggeriti (Grado o Intermediazione) garantisce una diffusione dell'innovazione sistematicamente superiore rispetto ad una distribuzione casuale del budget di sussidio.

#figure(
  image("./simulation-with-budget.png"),
  caption: [Confronto dell'efficacia: in grassetto sono rappresentati i valori medi dei percorsi di diffusione. Il Network su cui si sta propagando è un Barabasi-Albert da 1000 nodi e $gamma=3$]
) <simulazione-budget>

#figure(
  image("./simulation-with-budget-high-sample.png"),
  caption: [Rispetto all'immagine precedente, usa un network di 10.000 nodi. Si può osservare che mentre la varianza dei percorsi strategici collassa, quella del percorso casuale rimane alta]
) <simulazione-budget-high-sample>

Questo modello è stilizzato e richiederebbe ulteriori sviluppi, come una calibrazione empirica e dei test su dati reali. Tuttavia, dimostra che un approccio network-based può informare policy più efficaci rispetto a sussidi uniformi.

== Applicazione del Modello

Avendo progettato un modello, possiamo calarlo nel contesto del traffico aereoportuale.

Riprendendo quanto detto nella sezione precedente, la struttura del mercato della mobilità aerea è già altamente centralizzato. Questo darà al network delle caratteristiche che possono essere sfruttate.

In particolare, ci possiamo aspettare poche _grandi_ hub con altissimi gradi di influenza. Questo li rende ottimi punti d'intervento.

=== Network come Rete a Invarianza di Scala
È importante quindi osservare che la distribuzione dei link nel mercato aereo non segue una Gaussiana, come implicitamente suggerito da alcuni modelli aggregati classici, ma una Legge di Potenza @guimera2005.

La possiamo quindi definire come una Rete a Invarianza di Scala: la distribuzione dei gradi dei suoi nodi segue la legge:
  $ P(k) tilde k^(-gamma) $
  Dove $P(k)$ è la probabilità che un nodo abbia $k$ connessioni e $gamma$ è un parametro tipicamente compreso tra 2 e 3.

In termini economici, questo è la manifestazione matematica dell'oligopolio citato nella Sezione 3. Esistono pochissimi nodi (Hub come Heathrow, Francoforte, Dubai) con un grado $k$ smisuratamente alto, e una "coda lunga" di nodi periferici con $k$ molto basso @guimera2005.
Questa struttura è estremamente resiliente agli errori casuali, ma —ed è questo il punto chiave per il policy maker— è estremamente sensibile agli attacchi mirati.

Nel nostro contesto, un "attacco mirato" non è inteso in senso distruttivo, ma costruttivo: una policy di sussidio mirata sui nodi della coda della distribuzione (gli Hub) ha un effetto di propagazione virale che non avrebbe mai se applicata a nodi scelti casualmente. Questo giustifica teoricamente l'abbandono di sussidi "a pioggia" in favore di incentivi selettivi basati sull'indice $W(x)$.

=== Dinamiche di Diffusione e Soglie

Torniamo al concetto di soglia $T$ introdotto all'inizio della sezione. In un mercato aereo caratterizzato da margini stretti, la soglia di adozione per una tecnologia costosa (es. idrogeno o SAF - Sustainable Aviation Fuel) è molto alta. Una compagnia aerea non adotterà la tecnologia finché non vedrà una frazione significativa $T$ dei suoi partner (aeroporti) o competitor averla già adottata, riducendo il rischio operativo.

L'intervento tramite Tassa Pigouviana e Sussidio Strategico agisce su due fronti dell'equazione: Dal lato dei costi, la tassa sull'energia sporca rende l'alternativa attuale più costosa, abbassando _de facto_ la soglia relativa di convenienza dell'innovazione. Dal lato network, Il sussidio concentrato sui nodi ad alto $W(x)$ (gli Hub) forza l'adozione nei punti nevralgici.

Poiché un Hub è connesso a centinaia di nodi periferici, la sua singola adozione conta come "un vicino che ha innovato" per centinaia di altri nodi. Questo porta istantaneamente moltissimi nodi periferici a superare la loro soglia critica locale $T$, innescando quella cascata di adozione che nel modello di Bass appariva come una semplice accelerazione esogena, ma che qui riveliamo essere una dinamica strutturale endogena.

== Complementarietà Strategiche ed Effetti di Rete Indiretti

Un ultimo livello di analisi necessario riguarda la natura del prodotto "volo". A differenza dell'acquisto di un bene di consumo (come un frigorifero nel modello di Bass), il volo è un bene che soffre di forti esternalità di rete indirette @jackson2008.

L'adozione di una tecnologia di propulsione sostenibile (es. idrogeno) richiede infrastrutture di terra compatibili sia all'origine che alla destinazione. Si crea quindi un problema di coordinamento:
- La compagnia aerea non compra aerei a idrogeno se gli aeroporti non hanno i tank.
- Gli aeroporti non installano i tank se le compagnie non hanno gli aerei.

Questo è un classico problema di _complementi strategici_ @jackson2008. In termini di Teoria dei Giochi, ci troviamo in una situazione di equilibri multipli: un equilibrio basso (nessuno adotta) e un equilibrio alto (tutti adottano). Il mercato, lasciato a se stesso, tende a rimanere incastrato nell'equilibrio basso a causa dell'avversione al rischio e dei bassi margini operativi discussi nella Sezione 3.

L'analisi di network ci suggerisce che per spostare il sistema dall'equilibrio basso a quello alto non serve coordinare tutti gli agenti simultaneamente (impossibile). È sufficiente alterare i payoff dei nodi con alta influenza (soprattutto centralità di intermediazione). Questi nodi, agendo da ponte, garantiscono alle compagnie aeree che una rotta critica è coperta, riducendo l'incertezza per l'intera flotta. Il sussidio, quindi, non è un regalo all'azienda, ma il costo necessario per risolvere il fallimento di coordinamento del mercato.

= Conclusione

In questo elaborato abbiamo attraversato tre livelli di astrazione per analizzare la transizione verso una mobilità aerea sostenibile. Siamo partiti dall'osservazione empirica delle curve a S (Modello di Bass), che descrivono _come_ avviene l'adozione, ma falliscono nello spiegare _perché_ essa spesso rallenti o si blocchi.

Abbiamo successivamente introdotto i vincoli reali del mercato: l'elasticità della domanda turistica, i margini operativi esigui e la struttura oligopolistica. Questi fattori ci hanno mostrato che l'ottimismo tecnologico non è sufficiente: in un mercato fragile ed avverso al rischio, l'innovazione non è garantita dalla semplice superiorità tecnica.

Infine, abbiamo proposto un approccio strutturale basato sulla Teoria dei Network. Abbiamo dimostrato che la struttura fortemente centralizzata del trasporto aereo, sebbene rappresenti un rischio in termini di concentrazione di potere, offre al policy-maker un'opportunità unica. Utilizzando metriche come le centralità di intermediazione e di grado, è possibile superare l'approccio dei sussidi a pioggia.

La proposta di policy che ne deriva è un sistema ibrido: una tassa Pigouviana per internalizzare i costi ambientali, i cui proventi vengono ridistribuiti non uniformemente, ma strategicamente, mirando ai nodi ad alto indice $W(x)$. Sfruttando la struttura del network e forzando l'adozione nei nodi che fungono da ponte e da hub, possiamo innescare quella cascata di adozione necessaria per spostare l'industria dall'equilibrio di stagnazione attuale verso un futuro sostenibile. La sostenibilità, in ultima analisi, non è solo un problema di ingegneria aerospaziale, ma anche un problema di coordinamento economico su rete complessa.

#bibliography("soli_list.yml")

#set text(font: "Courier New", size: 8pt)
= Appendice: Codice della Simulazione
Il Codice è stato scritto in Julia
```
$ julia -v
julia version 1.12.1
```
Segue il testo del codice
```jl
ENV["GKSwstype"] = "100"

using Graphs
using StatsBase
using Random
using Plots
using Statistics

const N = 10000
const M = 3
const SIMS = 100
const STEPS = 10
const BUDGET_FRAC = 0.05

results_rnd = zeros(STEPS, SIMS)
results_str1 = zeros(STEPS, SIMS)
results_str2 = zeros(STEPS, SIMS)
results_str3 = zeros(STEPS, SIMS)

function run_sim(strategy::Symbol)
    g = barabasi_albert(N, M)

    thresholds = clamp.(randn(N) .* 0.1 .+ 0.25, 0.0, 1.0)
    
    node_costs = degree(g)
    total_budget = sum(node_costs) * BUDGET_FRAC
    
    # Determine Candidate Order
    if strategy == :random
        candidates = shuffle(1:N)
    elseif strategy == :strategic1
        # Combined: Betweenness * Degree
        bc = betweenness_centrality(g)
        dc = degree_centrality(g)
        w_scores = bc .* dc
        candidates = sortperm(w_scores, rev=true)
    elseif strategy == :strategic2
        # Betweenness only
        bc = betweenness_centrality(g)
        candidates = sortperm(bc, rev=true)
    elseif strategy == :strategic3
        # Degree only
        dc = degree_centrality(g)
        candidates = sortperm(dc, rev=true)
    end
    
    # Select seeds until budget is exhausted
    current_spend = 0
    seeds = Int[]
    
    for node in candidates
        cost = node_costs[node]
        if current_spend + cost <= total_budget
            push!(seeds, node)
            current_spend += cost
        end
    end

    # Simulation Loop
    status = falses(N)
    status[seeds] .= true
    history = Float64[]
    
    for _ in 1:STEPS
        push!(history, sum(status) / N)
        new_status = copy(status)
        
        for v in vertices(g)
            if status[v] continue end
            
            nbs = neighbors(g, v)
            if isempty(nbs) continue end
            
            total_weight = sum((node_costs[n] for n in nbs); init=0)
            adopted_weight = sum((node_costs[n] for n in nbs if status[n]); init=0)
            
            if (adopted_weight / total_weight) >= thresholds[v]
                new_status[v] = true
            end
        end
        status = new_status
    end
    return history
end

println("Running on $(Threads.nthreads()) threads with Budget Fraction $(BUDGET_FRAC)...")

# Native Multithreading loop
Threads.@threads for i in 1:SIMS
    results_rnd[:, i] = run_sim(:random)
    results_str1[:, i] = run_sim(:strategic1)
    results_str2[:, i] = run_sim(:strategic2)
    results_str3[:, i] = run_sim(:strategic3)
end

# Averaging
avg_rnd = mean(results_rnd, dims=2)
avg_str1 = mean(results_str1, dims=2)
avg_str2 = mean(results_str2, dims=2)
avg_str3 = mean(results_str3, dims=2)

println("Saving plot...")
p = plot(results_str1, label=false, lw=0.1, color=:red, title="Diffusion with Cost Constraint (Budget=$(BUDGET_FRAC))", xlabel="Steps", ylabel="Adoption %", legend=:bottomright)
plot!(p, avg_str1, label="Strat1 (C_B*D_C)", lw=3, color=:red)

plot!(p, results_str2, label=false, lw=0.1, color=:purple)
plot!(p, avg_str2, label="Strat2 (C_B)", lw=3, color=:purple)

plot!(p, results_str3, label=false, lw=0.1, color=:pink)
plot!(p, avg_str3, label="Strat3 (C_D)", lw=3, color=:pink)

plot!(p, results_rnd, label=false, lw=0.1, color=:blue)
plot!(p, avg_rnd, label="Random", lw=3, color=:blue)

savefig(p, "risultato_simulazione_budget.png")
println("Done. Saved as risultato_simulazione_budget.png")

```
