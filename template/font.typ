// 中文字号 到 pt 的转换
// https://www.runoob.com/w3cnote/px-pt-em-convert-table.html

#let fs_2 = 20pt
#let fs_l2 = 18pt
#let fs_3 = 16pt
#let fs_l3 = 15pt
#let fs_4 = 14pt
#let fs_l4 = 12pt

#let s_par_gap = 20pt

#let get_num_spell(pos, class) = {
  let cn_spell = "一二三四五六七".split("")
  if class == "cn" {
    cn_spell.at(pos)
  }
}

#let content_numbering(..nums) = {
  if nums.pos().len() == 1 {
    "第" + get_num_spell(nums.pos().last(), "cn") + "章"
  } else if nums.pos().len() == 2 {
    "第" + get_num_spell(nums.pos().last(), "cn") + "节"
  } else if nums.pos().len() == 3{
    get_num_spell(nums.pos().last(), "cn") + "、"
  } else if nums.pos().len() == 4 {
    str(nums.pos().last()) + "、"
  } else {
    "(" + str(nums.pos().last()) + ")、"
  }
}
