#import "custom.typ": *
#import "template.typ": *

#import "@preview/codly:1.0.0": *
#show: codly-init.with()

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  meta: (
    title: "KMD A/S Ferieplanlægger",
    theme: "Insert theme name",
    project_period: "Fall Semester 2024",
    project_group: "cs-24-sw-3-01",
    participants: (
      (name: "Dandan Zhao", email: "dzhao23@student.aau.dk"),
      (name: "Elma Vukicevic", email: "evukic23@student.aau.dk"),
      (name: "Graziella Zafir Rosager Lund", email: "glund23@student.aau.dk"),
      (name: "Mads Ludvig Timm Fagerlund", email: "mfager23@student.aau.dk"),
      (name: "Marc Nygaard", email: "mnygaa23@student.aau.dk"),
      (name: "Sille Dalberg Korsbakke", email: "skorsb21@student.aau.dk"),
      (name: "Thorbjørn Dige Larsen", email: "tdla23@student.aau.dk"),
    ),
    supervisor: (
      (name: "Asger Horn Brorholt", email: "asgerhb@cs.aau.dk"),
    ),
    date: datetime.today().display()
  ),
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  abstract: [This is the abstract, please write something here. #lorem(59)],
  department: "Computer Science",
)

// This is the primary file in the project.
// Commonly referred to as 'master' in LaTeX, and wokenly called 'main' in Typst.

#include "chapters/chapter1.typ"
#pagebreak(weak: true)


#include "chapters/chapter2.typ"
#pagebreak(weak: true)

#include "chapters/components.typ"
#pagebreak(weak: true)

#bibliography("sources/sources1.bib")
