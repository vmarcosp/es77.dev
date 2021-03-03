module ColorsRaw = {
  let black = "#070707"
  let purple = "#743AF0"
  let shape01 = "#3C3C3C"
  let gray1 = "7D7D7D"
}

module Colors = {
  let toBsHex = color => color->Js.String2.replace(_, "#", "")->CssJs.hex

  let black = ColorsRaw.black->toBsHex
  let purple = ColorsRaw.purple->toBsHex
  let shape01 = ColorsRaw.shape01->toBsHex
  let white = "FAFAFA"->toBsHex
  let gray1 = ColorsRaw.gray1->toBsHex
}

module Constants = {
  let maxWidth = 1200->CssJs.px
}

module ZIndex = {
  let aboveAll = 100
  let above = 50
  let base = 10
  let hidden = -1
}

module Spacing = {
  let xs = 0.8->CssJs.rem
  let sm = 1.2->CssJs.rem
  let md = 1.6->CssJs.rem
  let lg = 2.4->CssJs.rem
  let xlg = 3.2->CssJs.rem
}

let fontFamily = "'Poppins', sans-serif"
