#let chapter_tail = [
= #text("结    论")
#lorem(50)

= #text("致    谢")
#lorem(50)

= 参考文献
// yml 格式如下 (你也可以使用 `.bib`)
// https://github.com/typst/hayagriva/blob/main/docs/file-format.md
#bibliography("../refs.yml", title: none)

= #text("附    录")
#lorem(50)
]