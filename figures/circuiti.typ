#import "@preview/zap:0.6.0"

#let simbolo-componente(tipo, etichetta) = zap.circuit({
  let componente = (resistore: zap.resistor.with(variant: "ieee"), condensatore: zap.capacitor, induttore: zap.inductor).at(tipo)
  componente("componente", (0, 0), (3, 0), label: etichetta)
})

#let serie-parallelo() = grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  align(center)[
    *Serie*

    #zap.circuit({
      import zap: *
      resistor(variant: "ieee", "r1", (0, 0), (2.5, 0), label: $R_1$, i: $I$, u: (content: $U_1$, anchor: "south"))
      resistor(variant: "ieee", "r2", (2.5, 0), (5, 0), label: $R_2$, u: (content: $U_2$, anchor: "south"))
      node("a", (0, 0), label: (content: "A", anchor: "west"))
      node("b", (5, 0), label: "B")
    })
  ],
  align(center)[
    *Parallelo*

    #zap.circuit({
      import zap: *
      wire((0, 0), (0, 1.3), (0.5, 1.3))
      resistor(variant: "ieee", "r1", (0.5, 1.3), (3.5, 1.3), label: $R_1$, i: $I_1$, u: (content: $U$, anchor: "south"))
      wire((3.5, 1.3), (4, 1.3), (4, 0))
      wire((0, 0), (0, -1.3), (0.5, -1.3))
      resistor(variant: "ieee", "r2", (0.5, -1.3), (3.5, -1.3), label: $R_2$, i: $I_2$, u: (content: $U$, anchor: "south"))
      wire((3.5, -1.3), (4, -1.3), (4, 0))
      wire((-0.7, 0), (0, 0))
      wire((4, 0), (4.7, 0))
      node("giunzione-a", (0, 0))
      node("giunzione-b", (4, 0))
      node("a", (-0.7, 0), label: (content: "A", anchor: "west"))
      node("b", (4.7, 0), label: (content: "B", anchor: "east"))
    })
  ],
)
