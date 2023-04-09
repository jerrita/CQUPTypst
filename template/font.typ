// 中文字号 到 pt 的转换
// https://www.runoob.com/w3cnote/px-pt-em-convert-table.html

#let fs_2 = 22pt
#let fs_l2 = 18pt
#let fs_3 = 16pt
#let fs_l3 = 15pt
#let fs_4 = 14pt
#let fs_l4 = 12pt

// 1.5 倍行距约为 18pt
#let s_par_gap = 18pt

#let content_numbering(..nums) = {
  if nums.pos().len() == 1 {
    "第 " + str(nums.pos().last()) + " 章 "
  } else if nums.pos().len() <= 3 {
    nums.pos().map(str).join(".") + " "
  } else if nums.pos().len() == 4 {
    str(nums.pos().last()) + ") "
  } else if nums.pos().len() == 5 {
    "(" + str(nums.pos().last()) + ") "
  }
}
