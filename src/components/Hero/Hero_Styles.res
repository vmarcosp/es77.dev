module Array = Belt.Array
open CssJs

let wrapper = style(.[
  maxWidth(Theme.Constants.maxWidth),
  display(#flex),
  flexDirection(column),
  alignItems(center),
  justifyContent(center),
  paddingBottom(10.0->rem),
  margin4(~top=7.2->rem, ~bottom=32.4->rem, ~left=auto, ~right=auto),
])

let symbolWrapper = style(.[width(35.0->rem)])

let text = style(.[
  color(Theme.Colors.white),
  fontFamily(Theme.fontFamily->#custom),
  fontSize(6.0->rem),
  textAlign(#center),
  maxWidth(1000->px),
  position(relative),
  top(-100->px),
  selector(
    "> span",
    [background(Theme.Colors.gradient)]->Array.concat(Theme.Constants.clipBackground),
  ),
])

let arrowAnimation = keyframes(.[
  (0, [transform(translateY(5->px))]),
  (50, [transform(translateY(zero))]),
  (100, [transform(translateY(5->px))]),
])

let button = style(.
  [
    padding(zero),
    margin(zero),
    outlineStyle(none),
    borderStyle(none),
    background(Theme.Colors.gradient),
    fontFamily(Theme.fontFamily->#custom),
    fontSize(1.8->rem),
    fontWeight(600->#num),
    position(relative),
    cursor(pointer),
    top(-50->px),
    textDecoration(none),
    after([
      contentRule("assets/arrow-down.svg"->#url),
      position(absolute),
      bottom(-0.5->rem),
      width(2.0->rem),
      height(1.0->rem),
      left(50.0->pct),
      marginLeft(-1.0->rem),
      animation(~duration=1000, ~iterationCount=#infinite, arrowAnimation),
    ]),
  ]->Array.concat(Theme.Constants.clipBackground),
)
