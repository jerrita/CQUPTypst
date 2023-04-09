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
        abstract: [
毕业设计是本科教学过程最后阶段的一种总结性实践教学环节。通过毕业设计，学生可以综合应用所学的各种理论知识和技能，进行全面、系统、严格的技术及基本能力的练习。为了提高毕业设计论文的质量，做到论文在内容和格式上的规范化与统一化，特制作本模板。

论文摘要是论文内容不加注释和评论的简短陈述，应以第三人称陈述，用语力求简洁、准确。中文摘要字数原则上为400-600字，英文摘要应与中文内容一致。

摘要是学位论文的浓缩，应具有独立性和自含性，即是一篇完整的短文，不阅读论文的全文，就能获得必要的信息。摘要内容应尽可能包括原论文的主要信息，包括研究工作的目的意义、主要问题、研究内容、研究方法、研究结果、主要结论，供读者确定有无必要阅读全文，也供文摘汇编等二次文献采用。摘要要用文字表达，不用图、表、化学结构式、公式、非公知公用的符号和术语。 

关键词是为了文献标引工作从论文中选取出来用以表示全文主题内容信息的单词或术语。自定义3-5个关键词，按外延由大到小排列，建议采用EI标准检索词，关键词间用逗号分开。如有可能，应尽量用《汉语主题词表》等词表提供的规范词。

“摘要”二字为黑体三号字居中，是一级标题。摘要与内容之间不空行，摘要内容与关键词间空一行。“关键词”三个字采用宋体小四号字加粗。摘要内容和关键词采用中文宋体、英文Times New Roman，小四号字，1.5倍行距。
        ],
        keywords: "毕业设计，论文格式，规范化，模板",
    )
    #abstemp(
      mode: "en",
      abstract: [
Abstract is a brief statement of the thesis without notes and comments, which should be stated in the third person with concise and accurate language in 600-800 Chinese characters and less than 700 words in foreign languages. The writing of an abstract should follow these principles:

+ Abstract should generally state out clearly the purpose, significance, problem, methods, results, main conclusion and its significance, creative achievements and new insights of the research program, and the results and conclusions should be emphasized. 
+ Abstract should be independent and self contained, which can offer the necessary information without reading the full text. It is the miniature and abbreviation of a thesis, which contains the thesis’s main points, views and conclusions in a short and clear way. Abstract is a complete short essay with data and conclusion, which can be adopted and referred to independently. 
+ Abstract should include main information of the original thesis as far as possible for the reader to determine whether to read the full text, which can also be applied for secondary sources. 
+ Abstract should be written in words without any appended drawings and photos. Unless there is no alternative way available, abstract should be presented without graphs, tables, chemical structural equations, non-public common symbols and terminology, subscripts, and other special symbols. It is the best policy to highlight the key points clearly with less data tables.

Keywords are words or terms selected from the thesis for literature indexing to represent the topic information entry. Generally, a thesis should have 3-5 keywords, which should be arranged from broad to narrow entry according to the principle of epitaxial order. EI standard retrieval words are recommended. The keywords should be separated by a comma and there is no punctuation after the last word. If possible, it is better to use the standard words from Chinese Thesauri and other dictionaries of the same type. 

Abstract should be centered in bold-3 word size. It is the primary heading without any blank line between the word “abstract” and its content. But there should be one blank line between the abstract content and the key words. The “keywords” should be in bold Song typeface with small-four word size. The content and the key words are written in Chinese song typeface, English Times New Roman, small-four word size and 1.5 spaced.
      ],
      keywords: "thesis, format, standardization, template"
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