#import "@preview/ilm:3.0.0"
#import "@preview/glossy:0.9.2"

#set text(lang: "it")

#let custom-both(mode, short, long) = {
  if mode == "short" or long == none {
    short
  } else if mode == "long" {
    long
  } else if mode == "both" {
    [#short (#emph(long))]
  }
}
#show: glossy.init-glossary.with(
  yaml("glossary.yaml"),
  term-links: true,
  format-term: custom-both,
)

#let today = datetime.today()
#let months_italian = (
  "gennaio", "febbraio", "marzo", "aprile", "maggio", "giugno",
  "luglio", "agosto", "settembre", "ottobre", "novembre", "dicembre",
)
#show: ilm.ilm.with(
  title: [Appunti di un radioamatore],
  authors: "Francesco Frassinelli",
  abstract: [
    Appunti personali di un radioamatore italiano che si prepara all'esame per la licenza di radioamatore in Norvegia
  ],
  paper-size: "a4",
  date: today,
  date-format: "[day padding:none] " + months_italian.at(today.month() - 1) + " [year]",
)
#ilm.cover-page()

#outline()

#include "chapters/introduzione.typ"
#include "chapters/fondamenti.typ"

#pagebreak()

#glossy.glossary(title: "Glossario")