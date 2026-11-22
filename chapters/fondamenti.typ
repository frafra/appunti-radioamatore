= Fondamenti <ch:fondamenti>

== Componenti

Un @circuito elettrico è composto da componenti elettrici collegati tra loro tramite conduttori.

#table(
  columns: 4,
  table.header([Grandezza], [Componente], [Simbolo], [Unità]),
  [@tensione], [—], [U], [V, volt],
  [@corrente], [—], [I], [A, ampere],
  [@potenza], [—], [P], [W, watt],
  [@carica], [—], [Q], [C, coulomb],
  [@resistenza], [@resistore], [R], [Ω, ohm],
  [@capacita], [@condensatore], [C], [F, farad],
  [@induttanza], [@induttore], [L], [H, henry],
)

Altri componenti comuni sono:
- @alimentatore
- @trasformatore
- @diodo
- @transistore
- @antenna

== Leggi

Legge di Ohm (resistore ohmico): $ U = R dot I $

Potenza elettrica: $ P = U dot I $

Legge di Kirchhoff alle maglie: $ sum U = 0 $

Legge di Kirchhoff ai nodi: $ sum I = 0 $

Le somme sono algebriche: i segni dipendono dai versi di riferimento scelti per le tensioni e le correnti.
