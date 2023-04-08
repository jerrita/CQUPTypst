#import "template/template.typ": *
#import "template/abstract.typ": *
#import "chapters/foreword.typ": *
#import "chapters/main.typ": *
#import "chapters/tail.typ": *


// TODO:
// - [ ] 封面
// - [ ] 页眉页脚制作

#show: project.with(
  title: "CQUPTypst",
  authors: (
    (name: "jerrita", email: "je5r1ta@icloud.com"),
  ),
  abstract: [
    // This are two spaces between keywords.
    #abstemp(
        mode: "cn",
        abstract: "这是一段测试中文摘要。这是一段测试中文摘要。这是一段测试中文摘要。这是一段测试中文摘要。这是一段测试中文摘要。这是一段测试中文摘要。",
        keywords: "CQUPTypst  Typst  中文论文  模板",
    )
    #abstemp(
      mode: "en",
      abstract: lorem(40),
      keywords: "CQUPTypst, Typst, 中文论文, 模板"
    )
  ],
  date: "April 7, 2023",
  logo: "../resource/icon.png",
)

#set text(fs_l4)
#chapter_foreword
#pagebreak()

// Only main pages need numbering.
#set heading(numbering: content_numbering)
#chapter_main
#set heading(numbering: none)

#pagebreak()
#chapter_tail