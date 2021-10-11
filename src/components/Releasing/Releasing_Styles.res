open CssJs

let wrapper = style(. [
  background(Theme.Colors.darkGradient),
  padding2(~h=zero, ~v=7.2->rem),
  Media.xs([margin4(~top=17.2->rem, ~bottom=zero, ~left=auto, ~right=auto)]),
  Media.sm([margin4(~top=22.4->rem, ~bottom=zero, ~left=auto, ~right=auto)]),
  Media.md([margin4(~top=23.4->rem, ~bottom=zero, ~left=auto, ~right=auto)]),
])

let content = style(. [
  display(#flex),
  Media.xs([padding2(~v=zero, ~h=3.2->rem), flexDirection(column), justifyContent(#center)]),
  Media.sm([padding2(~v=zero, ~h=4.6->rem), flexDirection(column), justifyContent(#center)]),
  Media.md([flexDirection(row), justifyContent(spaceBetween), alignItems(center)]),
  Media.lg([maxWidth(Theme.Constants.maxWidth), margin2(~v=zero, ~h=auto)]),
])

let textWrapper = style(. [Media.md([flexBasis(60.0->pct)])])

let text = style(. [
  color("B399C8"->hex),
  selector("> span", [fontWeight(500->#num), color(Theme.Colors.purple)]),
])

let form = style(. [
  display(#flex),
  flexDirection(column),
  Media.md([flexBasis(35.0->pct)]),
  selector(
    "> input",
    [
      marginBottom(1.6->rem),
      color(Theme.Colors.white),
      width(100.0->pct),
      padding2(~v=1.2->rem, ~h=1.8->rem),
      backgroundColor("211C2B"->hex),
      borderStyle(none),
      boxShadow(none),
      fontFamily(Theme.fontFamily->#custom),
      outlineStyle(none),
      fontSize(1.6->rem),
      borderRadius(6->px),
      placeholder([color("877B87"->hex)]),
      transition(~duration=300, "box-shadow"),
      focus([
        transition(~duration=300, "box-shadow"),
        unsafe("box-shadow", `inset 0 0 0 2px ${Theme.ColorsRaw.purple}`),
      ]),
      Media.xs([marginBottom(1.6->rem), padding2(~v=1.2->rem, ~h=1.8->rem), borderRadius(6->px)]),
    ],
  ),
  selector(
    "> button, > a",
    [
      textAlign(#center),
      padding2(~v=1.2->rem, ~h=1.8->rem),
      textTransform(uppercase),
      cursor(pointer),
      color(Theme.Colors.white),
      fontFamily(Theme.fontFamily->#custom),
      fontSize(1.6->rem),
      borderStyle(none),
      fontWeight(600->#num),
      background(Theme.Colors.purple),
      transition(~duration=300, "background"),
      borderRadius(6->px),
      hover([
        transition(~duration=300, "background"),
        background(
          Polished.Color.darken(Theme.ColorsRaw.purple, ~amount=0.05)->Theme.Colors.toBsHex,
        ),
      ]),
    ],
  ),
])

let submitButtonSubmitting = style(. [opacity(0.6), cursor(wait)])

let submitButtonSent = style(. [pointerEvents(none)])
