open CssJs

let wrapper = style(.[
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
    right(32->px),
    bottom(10.0->rem),
  ]),
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
  Media.md([margin4(~top=27.2->rem, ~bottom=0.0->rem, ~left=auto, ~right=auto)]),
  Media.lg([after([display(#block)])]),
  Media.xl([margin4(~top=32.4->rem, ~bottom=zero, ~left=auto, ~right=auto)]),
])

let triangle = style(.[position(absolute), zIndex(Theme.ZIndex.base - 1), left(zero)])

let card = style(.[
  background(Theme.Colors.shape02),
  color(white),
  display(#flex),
  justifyContent(center),
  flexDirection(column),
  alignItems(center),
  textAlign(center),
  borderRadius(Theme.Radius.xs),
  position(relative),
  zIndex(Theme.ZIndex.base),
  Media.xs([width(100.0->pct), firstChild([marginBottom(3.2->rem)]), padding(3.2->rem)]),
  Media.sm([
    width(100.0->pct),
    firstChild([marginBottom(3.2->rem)]),
    padding2(~h=5.6->rem, ~v=5.6->rem),
  ]),
  Media.lg([maxWidth(40.0->rem), firstChild([marginBottom(zero), marginRight(3.2->rem)])]),
])

let photo = style(.[
  Media.xs([width(10.0->rem), height(10.0->rem)]),
  Media.sm([
    //
    width(13.5->rem),
    height(13.5->rem),
  ]),
  borderRadius(50.0->pct),
  marginBottom(2.4->rem),
])

let cardsContainer = style(.[
  //
  display(#flex),
  marginTop(5.6->rem),
  flexDirection(#column),
  Media.xs([marginTop(3.2->rem)]),
  Media.lg([flexDirection(#row)]),
])

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

let iconsWrapper = style(.[display(#flex), marginTop(1.6->rem)])

let icon = style(.[
  width(2.4->rem),
  display(block),
  selector(":not(:last-child)", [marginRight(2.0->rem)]),
  selector("svg > path", [transition(~duration=300, "fill")]),
  hover([
    selector(
      "svg > path",
      [transition(~duration=300, "fill"), unsafe("fill", Theme.ColorsRaw.purple)],
    ),
  ]),
])
