open CssJs

let wrapper = style(.[
  maxWidth(Theme.Constants.maxWidth),
  // border(1->px, solid, red),
  margin4(~top=zero, ~bottom=0.0->rem, ~left=auto, ~right=auto),
  padding2(~v=12.4->rem, ~h=zero),
  display(#flex),
  justifyContent(center),
  flexDirection(column),
  alignItems(center),
  position(relative),
  after([
    contentRule("assets/triangle.svg"->#url),
    width(40.2->rem),
    height(40.2->rem),
    position(absolute),
    zIndex(Theme.ZIndex.base - 1),
    right(zero),
    bottom(10.0->rem),
  ]),
  before([]),
])

let triangle = style(.[
  //
  position(absolute),
  zIndex(Theme.ZIndex.base - 1),
  left(zero),
])

let card = style(.[
  background(Theme.Colors.shape02),
  color(white),
  display(#flex),
  justifyContent(center),
  flexDirection(column),
  alignItems(center),
  textAlign(center),
  padding2(~h=5.6->rem, ~v=5.6->rem),
  maxWidth(40.0->rem),
  borderRadius(Theme.Radius.xs),
  firstChild([marginRight(3.2->rem)]),
  position(relative),
  zIndex(Theme.ZIndex.base),
])

let photo = style(.[
  width(13.5->rem),
  height(13.5->rem),
  borderRadius(50.0->pct),
  marginBottom(2.4->rem),
])

let cardsContainer = style(.[display(#flex), marginTop(5.6->rem)])

let title = style(.[
  color(Theme.Colors.white),
  fontWeight(700->#num),
  fontFamily(Theme.fontFamily->#custom),
  fontSize(1.8->rem),
  margin(zero),
  marginBottom(4->px),
])

let subtitle = style(.[
  color(Theme.Colors.gray1),
  fontSize(1.6->rem),
  fontFamily(Theme.fontFamily->#custom),
  margin(zero),
])
