open CssJs

let wrapper = style(.[
  Media.xs([
    margin4(~top=17.2->rem, ~bottom=zero, ~left=auto, ~right=auto),
    padding2(~v=zero, ~h=3.2->rem),
    after([display(#none)]),
  ]),
  Media.sm([
    maxWidth(Theme.Constants.maxWidth),
    margin4(~top=22.4->rem, ~bottom=zero, ~left=auto, ~right=auto),
    padding2(~v=zero, ~h=4.6->rem),
    after([display(#none)]),
  ]),
  Media.md([
    margin4(~top=23.4->rem, ~bottom=0.0->rem, ~left=auto, ~right=auto),
    padding2(~v=zero, ~h=4.6->rem),
  ]),
  Media.lg([after([display(#block)])]),
])

let listWrapper = style(.[display(#flex), flexWrap(#wrap)])

let faqWrapper = style(.[
  Media.md([
    flex3(~grow=1.0, ~shrink=0.0, ~basis=50.0->pct),
    nthChild(#odd, [paddingRight(7.0->rem)]),
    nthChild(#even, [paddingLeft(7.0->rem)]),
  ]),
  marginBottom(6.4->rem),
])

let _title = style(.[
  fontSize(2.4->rem),
  color(Theme.Colors.white),
  fontFamily(Theme.fontFamily->#custom),
  fontWeight(600->#num),
  marginBottom(1.6->rem),
])

let text = style(.[
  selector(
    "a",
    [
      color(Theme.Colors.pink),
      fontFamily(Theme.fontFamily->#custom),
      fontWeight(#bold),
      cursor(pointer),
      opacity(0.7),
      transition(~duration=300, "opacity"),
      textDecoration(none),
      hover([opacity(1.0), transition(~duration=300, "opacity")]),
      color(Theme.Colors.purple),
    ],
  ),
])
