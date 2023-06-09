#import "font.typ": *

#let abstemp(
    mode: "",
    abstract: [],
    keywords: [],
) = {

  align(center)[
    #heading(
      outlined: false,
      numbering: none,
      text(fs_2, weight: "black")[
        #if mode == "cn" {"摘    要"}
        else {"ABSTRACT"}
      ]
    )
  ]

  par(first-line-indent: 2em)[
    #text(fs_l4, abstract)
  ]

  text(fs_l4, weight: "black")[
    #linebreak()

    #if mode == "cn" {
        "关键词："
      } else {
        "Keywords: "
    }
  ]
  
  text(fs_l4, keywords)
  pagebreak()
}
