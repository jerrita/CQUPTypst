#import "font.typ": *

#let project(
  title: "",
  abstract: [],
  authors: (),
  date: none,
  logo: none,
  body,
) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: title)
  set page(numbering: "1", number-align: center)
  set text(font: ("Times New Roman", "Songti SC"))
  show par: set block(spacing: s_par_gap)
  show enum: set block(spacing: s_par_gap)
  show list: set block(spacing: s_par_gap)
  set list(spacing: s_par_gap) // You can add indent here it you want.
  set enum(spacing: s_par_gap)
  set par(justify: true, first-line-indent: 2em)
  set par(leading: s_par_gap)
  

  show heading: it => [
    #if it.level == 1 {
      set align(center)
      set text(fs_3, font: ("Times New Roman", "Heiti SC"), weight: "regular")
      it
      v(1em)
      h(2em)
    } else if it.level == 2 {
      v(0.5em)
      set text(fs_l3, font: ("Times New Roman", "Heiti SC"), weight: "regular")
      it
      v(1em)
      h(2em)
    } else if it.level == 3 {
      set text(fs_4, font: ("Times New Roman", "Heiti SC"), weight: "regular")
      it
      v(1em)
      h(2em)
    } else {
      set text(fs_l4)
      // set par(first-line-indent: 0em)
      if it.numbering != none {
        counter(heading).display()
      }
      it.body
      parbreak()
    }
  ]

  // TODO: Title page.
  v(0.6fr)
  if logo != none {
    align(right, image(logo, width: 26%))
  }
  v(9.6fr)

  text(1.1em, date)
  v(1.2em, weak: true)
  text(2em, weight: 700, title)

  // Author information.
  pad(
    top: 0.7em,
    right: 20%,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(start)[
        *#author.name* \
        #author.email
      ]),
    ),
  )

  text("This template is still working in the progress!")

  v(2.4fr)
  pagebreak()

  abstract

  // Table of contents.
  align(center)[
    #outline(title: [
      #text(fs_2, "目    录", weight: "bold")
      #linebreak()
      #linebreak()
    ], indent: true, depth: 3)
  ]
  
  pagebreak()


  // Main body.
  body
}