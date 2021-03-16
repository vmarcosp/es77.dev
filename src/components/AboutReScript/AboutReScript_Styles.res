open CssJs

let wrapper = style(.[
  maxWidth(Theme.Constants.maxWidth),
  display(#flex),
  alignItems(#center),
  margin4(~top=zero, ~bottom=0.0->rem, ~left=auto, ~right=auto),
  padding2(~v=12.4->rem, ~h=zero),
])

let snippetWrapper = style(.[
  minWidth(62.0->rem),
  position(relative),
  left(-8.0->rem),
  selector(
    "pre",
    [
      margin(zero)->important,
      background(Theme.Colors.darkGradient),
      borderRadius(Theme.Radius.xs),
      padding4(~top=1.8->rem, ~bottom=zero, ~left=3.2->rem, ~right=3.2->rem)->important,
      minWidth(62.0->rem),
      height(42.0->rem),
    ],
  ),
  selector(".Cursor", [display(none)]),
])

let content = style(.[display(#flex), flexDirection(column)])

let button = style(.[
  borderStyle(none),
  boxShadow(none),
  background(none),
  position(relative),
  padding4(~top=1.2->rem, ~bottom=1.2->rem, ~left=2.0->rem, ~right=5.6->rem),
  cursor(pointer),
  alignSelf(flexEnd),
  selector(
    "> span",
    [
      color(Theme.Colors.purple),
      fontFamily(Theme.fontFamily->#custom),
      fontSize(1.8->rem),
      fontWeight(500->#num),
      position(relative),
      zIndex(5),
      transition(~duration=300, "color"),
    ],
  ),
  after([
    contentRule("assets/button-purple-arrow.svg"->#url),
    width(2.4->rem),
    height(1.6->rem),
    position(absolute),
    right(2.0->rem),
    top(50.0->pct),
    marginTop(-0.8->rem),
  ]),
  before([
    width(zero),
    contentRule(" "->#text),
    height(100.0->pct),
    position(absolute),
    left(zero),
    top(zero),
    backgroundColor(Theme.Colors.purple),
    borderRadius(2->px),
    transition(~duration=200, "width"),
  ]),
  hover([
    before([width(100.0->pct), transition(~duration=200, "width")]),
    selector("> span", [color(white), transition(~duration=300, "color")]),
    after([
      contentRule("assets/button-white-arrow.svg"->#url),
      transition(~duration=200, "content"),
    ]),
  ]),
])

let playgroundLink = style(.[
  position(absolute),
  right(3.2->rem),
  bottom(2.8->rem),
  color(Theme.Colors.pink),
  fontFamily(Theme.fontFamily->#custom),
  fontSize(1.4->rem),
  fontWeight(#bold),
  paddingRight(2.8->rem),
  cursor(pointer),
  opacity(0.7),
  transition(~duration=300, "opacity"),
  textDecoration(none),
  hover([
    opacity(1.0),
    transition(~duration=300, "opacity"),
    after([right(-4->px), transition(~duration=300, "right")]),
  ]),
  after([
    transition(~duration=300, "right"),
    contentRule("assets/button-pink-arrow.svg"->#url),
    position(absolute),
    right(zero),
    top(50.0->pct),
    marginTop(-0.9->rem),
    width(1.6->rem),
    height(1.6->rem),
  ]),
])
