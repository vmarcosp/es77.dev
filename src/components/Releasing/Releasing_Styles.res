open CssJs

let wrapper = style(.[
  background(Theme.Colors.darkGradient),
  padding2(~h=zero, ~v=7.2->rem),
  Media.xs([margin4(~top=17.2->rem, ~bottom=zero, ~left=auto, ~right=auto)]),
  Media.sm([margin4(~top=22.4->rem, ~bottom=zero, ~left=auto, ~right=auto)]),
  Media.md([margin4(~top=27.2->rem, ~bottom=zero, ~left=auto, ~right=auto)]),
  Media.xl([margin4(~top=32.4->rem, ~bottom=zero, ~left=auto, ~right=auto)]),
])

let content = style(.[
  Media.xs([padding2(~v=zero, ~h=3.2->rem)]),
  Media.sm([padding2(~v=zero, ~h=4.6->rem)]),
  Media.lg([maxWidth(Theme.Constants.maxWidth), margin2(~v=zero, ~h=auto)]),
])

let text = style(.[
  color("B399C8"->hex),
  selector("> span", [fontWeight(600->#num), color(Theme.Colors.pink)]),
])

let form = style(.[
  display(#flex),
  marginTop(3.2->rem),
  Media.xs([flexDirection(#column)]),
  Media.sm([maxWidth(52.0->rem)]),
  selector(
    "> input",
    [
      color(Theme.Colors.white),
      width(100.0->pct),
      padding2(~v=1.2->rem, ~h=1.8->rem),
      backgroundColor("211C2B"->hex),
      borderStyle(none),
      boxShadow(none),
      fontFamily(Theme.fontFamily->#custom),
      outlineStyle(none),
      fontSize(1.6->rem),
      fontWeight(600->#num),
      borderBottomLeftRadius(6->px),
      borderTopLeftRadius(6->px),
      placeholder([color("7D7D7D"->hex)]),
      transition(~duration=300, "box-shadow"),
      focus([
        transition(~duration=300, "box-shadow"),
        unsafe("box-shadow", `inset 0 0 0 2px ${Theme.ColorsRaw.purple}`),
      ]),
      Media.xs([marginBottom(1.6->rem), padding2(~v=1.2->rem, ~h=1.8->rem), borderRadius(6->px)]),
    ],
  ),
  selector(
    "> button",
    [
      textTransform(uppercase),
      cursor(pointer),
      color(Theme.Colors.white),
      fontFamily(Theme.fontFamily->#custom),
      fontSize(1.6->rem),
      borderStyle(none),
      fontWeight(600->#num),
      background(Theme.Colors.purple),
      padding2(~v=zero, ~h=3.2->rem),
      transition(~duration=300, "background"),
      borderBottomRightRadius(6->px),
      borderTopRightRadius(6->px),
      Media.xs([padding2(~v=1.2->rem, ~h=1.8->rem), borderRadius(6->px)]),
      hover([
        transition(~duration=300, "background"),
        background(
          Polished.Color.darken(Theme.ColorsRaw.purple, ~amount=0.05)->Theme.Colors.toBsHex,
        ),
      ]),
    ],
  ),
])
