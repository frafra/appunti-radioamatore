#import "@preview/gentle-clues:1.3.3": info
#import "../figures/circuiti.typ": simbolo-componente, serie-parallelo

= Fondamenti <ch:fondamenti>

== Concetti base

Un @circuito elettrico è composto da @componente:pl elettrici collegati tra loro tramite @conduttore:pl.

Uno @schema_circuitale descrive un modello del circuito reale, solitamente semplificato: ad esempio, parte dell'energia elettrica che passa in un cavo viene sempre dissipata sotto forma di calore. Tali non idealità del circuito possono essere trascurate o tenute in considerazione in base alle necessità, tramite l'aggiunta di elementi nello schema circuitale per creare un modello più fedele. In seguito, salvo diversa indicazione, si farà riferimento al modello descritto dallo schema circuitale.

È quindi il momento di introdurre un po' di nomi, grandezze e unità di misura.

L'energia si misura in joule (J) e il tempo in secondi (s). Nella tabella, $e$ indica il valore assoluto della carica di un elettrone.

#table(
  columns: 4,
  table.header([Grandezza], [Simbolo], [Unità], [Equivalenza]),
  [@corrente], [I], [A, ampere], [$approx "6,24" dot 10^18 thin e \/ "s"$],
  [@carica], [Q], [C, coulomb], [$"A" dot "s"$],
  [@tensione], [U], [V, volt], [J/C],
  [@flusso_concatenato], [$Psi$], [Wb, weber], [$"V" dot "s"$],
  [@potenza], [P], [W, watt], [J/s],
  [@resistenza], [R], [Ω, ohm], [V/A],
  [@capacita], [C], [F, farad], [C/V],
  [@induttanza], [L], [H, henry], [Wb/A],
)

La corrente $I$ è la quantità netta di carica elettrica che attraversa una sezione del conduttore per unità di tempo. Un'analogia comune è la portata dell'acqua in un tubo, ma è anche comune imbattersi in rappresentazioni di tubi contenenti palline che lo attraversano in un secondo. Tali analogie possono risultare utili, ma hanno dei limiti. Quello principale è che gli elettroni di conduzione rimbalzano in maniera caotica (interagendo sia tra di loro sia con gli elettroni degli atomi del conduttore) e si muovono mediamente in una direzione (tramite un movimento di deriva) molto lentamente: nel cavo che ricarica il cellulare questo movimento è solitamente inferiore al millimetro al secondo.

La tensione $U$ tra due punti è la differenza di potenziale elettrico. Per una tensione positiva, il segno $+$ indica il punto a potenziale maggiore e il segno $-$ quello a potenziale minore. In un resistore la corrente scorre dal potenziale maggiore a quello minore. Quando si è iniziato a studiare l'elettricità non si sapeva che nei conduttori metallici la corrente fosse trasportata dagli elettroni, per cui si è scoperto solo in seguito che questi si muovono nel senso opposto rispetto al verso che era stato precedentemente definito per la corrente.
Nelle soluzioni acquose, all’interno delle batterie e nei semiconduttori possono contribuire alla corrente anche altri portatori di carica, ma non è il caso di approfondire questi meccanismi ora.

Il mondo dei circuiti è pervaso di coppie di grandezze fisiche e componenti che sembrano gli uni lo specchio degli altri, come la tensione e la corrente, il condensatore e l'induttore, il campo elettrico e il campo magnetico. Nelle relazioni che li descrivono, gli elementi di queste coppie possono scambiarsi di ruolo. Questa corrispondenza prende il nome di dualità.

== Componenti

=== Resistore

#align(center, simbolo-componente("resistore", $R$))

Un @resistore è un componente che si oppone al passaggio della corrente, determinando una caduta di tensione ai suoi capi e dissipando energia elettrica sotto forma di calore. È caratterizzato da una propria resistenza $R$.

La legge di Ohm lega la tensione alla corrente per un resistore a resistenza costante (ohmico):

$ U = R dot I $

=== Condensatore

#align(center, simbolo-componente("condensatore", $C$))

Un @condensatore è formato da due superfici conduttrici separate da un isolante, ed è caratterizzato da una propria capacità $C$. Il condensatore immagazzina energia nel campo elettrico.

Quando si applica una tensione $U$ ai suoi capi, sulle due superfici si accumulano cariche elettriche uguali in valore assoluto e di segno opposto, $+Q$ e $-Q$.

$ Q = C dot U $

La corrente indica quanto rapidamente varia la carica accumulata. Quando la carica è costante, la corrente è zero.

=== Induttore

#align(center, simbolo-componente("induttore", $L$))

Un @induttore è spesso realizzato con una bobina di filo conduttore, ed è caratterizzato da una propria induttanza $L$. L'induttore immagazzina energia nel campo magnetico.

Ogni giro della bobina è chiamato spira. Il @flusso_magnetico attraverso ciascuna spira dipende dalla corrente e dai parametri costruttivi della bobina stessa (numero di spire, diametro, distanza tra le spire e materiale al suo interno). Sommando i flussi delle singole spire si ottiene il flusso concatenato $Psi$.

Quando una corrente $I$ attraversa l'induttore, genera un flusso concatenato $Psi$ pari a:

$ Psi = L dot I $

La tensione ai capi dell'induttore indica quanto rapidamente varia il flusso concatenato. Quando il flusso concatenato è costante, la tensione è zero.

=== Altri

Altri componenti comuni sono:
- @alimentatore, per fornire energia al circuito
- @trasformatore, per trasferire energia mediante induzione elettromagnetica, ad esempio per adattare la tensione alternata o isolare elettricamente due circuiti
- @diodo, principalmente per condurre la corrente in un verso
- @led, un diodo che, quando conduce in senso diretto, emette radiazione visibile, infrarossa o ultravioletta a seconda del tipo
- @transistore, per controllare la corrente tra due terminali mediante un segnale applicato al terzo
- @antenna, per irradiare onde elettromagnetiche a partire da un segnale elettrico e per ricavare un segnale elettrico dalle onde incidenti

== Leggi fondamentali

Potenza elettrica: $ P = U dot I $

Un @nodo è un punto in cui si collegano due o più terminali dei componenti del circuito. In un nodo la carica entrante per unità di tempo è uguale a quella uscente, perché la carica si conserva e nel nodo non si accumula. La legge di Kirchhoff ai nodi esprime questo bilancio di carica per unità di tempo e stabilisce che la somma algebrica delle correnti al nodo è zero.

$ sum I = 0 $

Una @maglia è un percorso chiuso nel circuito. In un giro completo si torna allo stesso potenziale, cioè allo stesso valore di energia potenziale elettrica per unità di carica. La legge di Kirchhoff alle maglie esprime questo bilancio di energia per unità di carica e stabilisce che la somma algebrica delle tensioni lungo la maglia è zero.

$ sum U = 0 $

Le somme sono algebriche: i segni dipendono dai versi di riferimento scelti per le tensioni e le correnti.

== Serie e parallelo

In un @collegamento_in_serie, i componenti sono collegati uno dopo l'altro, senza diramazioni tra loro. Per la legge di Kirchhoff ai nodi, la stessa corrente attraversa tutti i componenti in serie.

In un @collegamento_in_parallelo, i componenti sono collegati tra gli stessi due nodi. Ai capi di ciascun componente c'è quindi la stessa differenza di potenziale.

#figure(
  serie-parallelo(),
  caption: [Due resistori in serie, attraversati dalla stessa corrente, e in parallelo, collegati agli stessi nodi A e B.],
)

=== Resistenza equivalente

Un gruppo di resistori in serie o in parallelo può essere sostituito, nello schema, da un solo resistore con la stessa relazione tra tensione e corrente ai suoi terminali. La sua resistenza è indicata con $R_"eq"$.

In serie si sommano le resistenze. In parallelo si sommano i loro reciproci e si inverte il risultato.

$ R_"eq" = sum_i R_i quad "(serie)" quad R_"eq" = 1 / (sum_i 1 / R_i) quad "(parallelo)" $

#info(title: "Approfondimento")[

  In serie tutti i resistori sono attraversati dalla stessa corrente $I$. Si sommano le cadute di tensione $U_i = R_i dot I$, quindi $ U = sum_i U_i = I dot sum_i R_i$.

  In parallelo la tensione $U$ è la stessa ai capi di tutti i resistori. Si sommano le correnti $I_i = U / R_i$, quindi $I = sum_i I_i = U dot sum_i 1 / R_i$.
]

=== Condensatore equivalente

Un gruppo di condensatori in parallelo o in serie può essere sostituito, nello schema, da un condensatore di capacità equivalente $C_"eq"$.

In parallelo si sommano le capacità. In serie si sommano i loro reciproci e si inverte il risultato.

$ C_"eq" = sum_k C_k quad "(parallelo)" quad C_"eq" = 1 / (sum_k 1 / C_k) quad "(serie)" $

#info(title: "Approfondimento")[

  In parallelo la tensione $U$ è comune. Si sommano le cariche $Q_k = C_k dot U$, quindi $Q = sum_k Q_k = U dot sum_k C_k$.

  In serie la corrente è comune. Se i condensatori partono scarichi, accumulano tutti la stessa carica $Q$. Si sommano le tensioni $U_k = Q / C_k$, quindi $U = Q dot sum_k 1 / C_k$.
]

=== Induttore equivalente

Un gruppo di induttori in serie o in parallelo può essere sostituito, nello schema, da un induttore di induttanza equivalente $L_"eq"$. Le formule seguenti valgono se la tensione indotta da ciascun induttore negli altri è trascurabile.

In serie si sommano le induttanze. In parallelo si sommano i loro reciproci e si inverte il risultato.

$ L_"eq" = sum_k L_k quad "(serie)" quad L_"eq" = 1 / (sum_k 1 / L_k) quad "(parallelo)" $

#info(title: "Approfondimento")[

  In serie si sommano le tensioni, quindi la variazione del flusso concatenato equivalente è la somma delle variazioni dei singoli flussi concatenati. Partendo da flussi concatenati nulli, anche il flusso equivalente è la somma dei singoli flussi. Con la stessa corrente $I$ in tutti gli induttori, si ha $Psi = sum_k Psi_k = I dot sum_k L_k$.

  In parallelo la tensione è comune. Partendo da flussi concatenati nulli, questi variano allo stesso modo e restano uguali. Con lo stesso flusso $Psi$ in tutti gli induttori, si ha $I = sum_k I_k = Psi dot sum_k 1 / L_k$.
]
