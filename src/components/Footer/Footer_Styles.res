open CssJs

let wrapper = style(.[background(Theme.Colors.darkGradient), marginTop(7.2->rem)])

let content = style(.[
  maxWidth(Theme.Constants.maxWidth),
  margin4(~top=zero, ~bottom=zero, ~left=auto, ~right=auto),
  display(#flex),
  alignItems(#center),
  justifyContent(#spaceBetween),
  Media.xs([flexDirection(column), padding2(~v=5.6->rem, ~h=3.2->rem)]),
  Media.sm([padding2(~v=5.6->rem, ~h=3.2->rem)]),
])

let madeBy = style(.[
  fontFamily(Theme.fontFamily->#custom),
  fontSize(1.6->rem),
  color("AD9FC6"->hex),
  Media.xs([marginTop(4.2->rem)]),
  selector(
    "> a",
    [
      fontWeight(600->#num),
      color(Theme.Colors.pink),
      textDecoration(none),
      position(relative),
      hover([after([transition(~duration=300, "transform"), transform(scale(1.0, 1.0))])]),
      after([
        transition(~duration=300, "transform"),
        contentRule(" "->#text),
        position(absolute),
        bottom(-4->px),
        left(zero),
        width(100.0->pct),
        height(2->px),
        background(Theme.Colors.pink),
        transform(scale(0.0, 0.0)),
      ]),
    ],
  ),
])
