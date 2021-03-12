open CssJs

let wrapper = style(.[
  //
  background(Theme.Colors.darkGradient),
  padding2(~h=zero, ~v=7.2->rem),
  margin2(~v=12.4->rem, ~h=zero),
  unsafe("cursor", Cursor.rocket),
])

let content = style(.[
  //
  maxWidth(Theme.Constants.maxWidth),
  margin2(~v=zero, ~h=auto),
])

let text = style(.[
  //
  color("B399C8"->hex),
  selector(
    "> span",
    [
      //
      fontWeight(600->#num),
      color(Theme.Colors.pink),
    ],
  ),
])

let form = style(.[
  display(#flex),
  marginTop(3.2->rem),
  selector(
    "> input",
    [
      color(Theme.Colors.white),
      padding2(~v=1.2->rem, ~h=1.8->rem),
      backgroundColor("211C2B"->hex),
      borderStyle(none),
      boxShadow(none),
      fontFamily(Theme.fontFamily->#custom),
      outlineStyle(none),
      fontSize(1.6->rem),
      borderBottomLeftRadius(6->px),
      borderTopLeftRadius(6->px),
      placeholder([color("7D7D7D"->hex)]),
    ],
  ),
  selector(
    "> button",
    [
      cursor(pointer),
      color(Theme.Colors.white),
      fontFamily(Theme.fontFamily->#custom),
      fontSize(1.6->rem),
      borderStyle(none),
      background(Theme.Colors.purple),
      padding2(~v=zero, ~h=3.2->rem),
      borderBottomRightRadius(6->px),
      borderTopRightRadius(6->px),
      transition(~duration=300, "background"),
      hover([
        transition(~duration=300, "background"),
        background(
          Polished.Color.darken(Theme.ColorsRaw.purple, ~amount=0.05)->Theme.Colors.toBsHex,
        ),
      ]),
    ],
  ),
])
