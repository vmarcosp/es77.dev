open CssJs

let wrapper = style(.[
  //
  maxWidth(Theme.Constants.maxWidth),
  margin2(~v=zero, ~h=auto),
])

let card = style(.[
  //
  backgroundColor(Theme.Colors.shape02),
  borderRadius(6->px),
  display(#flex),
  flexDirection(column),
  padding(5.2->rem),
])

let _photo = style(.[
  //
  width(10.0->rem),
  height(10.0->rem),
  borderRadius(50.0->pct),
  marginRight(2.4->rem),
])

let _name = style(.[
  //
  color(Theme.Colors.white),
  fontSize(1.8->rem),
  fontWeight(700->#num),
  fontFamily(Theme.fontFamily->#custom),
  marginBottom(0.4->rem),
])

let _role = style(.[
  //
  color(Theme.Colors.gray1),
  fontSize(1.6->rem),
  fontWeight(500->#num),
  fontFamily(Theme.fontFamily->#custom),
  margin(zero),
])

let cardHeader = style(.[
  //
  display(#flex),
  alignItems(center),
])

let _description = style(.[
  position(relative),
  paddingLeft(2.6->rem),
  marginTop(3.2->rem),
  before([
    //
    contentRule("assets/quotes.svg"->#url),
    position(absolute),
    top(-3->px),
    left(zero),
    width(2.0->rem),
    height(2.0->rem),
    whiteSpace(#pre),
  ]),
])
