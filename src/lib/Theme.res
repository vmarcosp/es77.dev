module ColorsRaw = {
  let black = "#070707"
  let purple = "#743AF0"
  let pink = "#FF68D5"
  let shape01 = "#3C3C3C"
  let gray1 = "7D7D7D"
}

module Colors = {
  open CssJs
  let toBsHex = color => color->Js.String2.replace(_, "#", "")->CssJs.hex

  let black = ColorsRaw.black->toBsHex
  let purple = ColorsRaw.purple->toBsHex
  let pink = ColorsRaw.pink->toBsHex
  let shape01 = ColorsRaw.shape01->toBsHex
  let white = "FAFAFA"->toBsHex
  let gray1 = ColorsRaw.gray1->toBsHex
  let text = "CECECE"->toBsHex
  let gradient = linearGradient(
    180.0->deg,
    list{
      (17.85->pct, "FF89DE"->hex),
      (30.22->pct, "FF68D5"->hex),
      (77.87->pct, "9361FF"->hex),
      (118.28->pct, "743AF0"->hex),
    },
  )
  let darkGradient = linearGradient(
    180.0->deg,
    list{
      (17.85->pct, "20121c"->hex),
      (30.22->pct, "20111b"->hex),
      (77.87->pct, "19101e"->hex),
      (118.28->pct, "190b38"->hex),
      (118.28->pct, "130E1F"->hex),
    },
  )
}

module Constants = {
  open CssJs

  let maxWidth = 1200->px

  let clipBackground = [
    unsafe("background-clip", "text"),
    unsafe("-webkit-background-clip", "text"),
    unsafe("-webkit-text-fill-color", "transparent"),
  ]
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

module Radius = {
  open CssJs
  let xs = 0.6->rem
  let sm = 1.2->rem
  let md = 1.6->rem
}

let fontFamily = "'Poppins', sans-serif"
