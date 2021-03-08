open CssJs
module Array = Belt.Array

let wrapper = style(.[maxWidth(Theme.Constants.maxWidth), margin2(~v=zero, ~h=auto)])

let conceptsWrapper = style(.[
  display(#flex),
  alignItems(center),
  justifyContent(spaceBetween),
  marginTop(6.4->rem),
])

let conceptsText = style(.[
  color(Theme.Colors.white),
  fontSize(3.2->rem),
  fontFamily(Theme.fontFamily->#custom),
  fontWeight(800->#num),
  marginRight(6.4->rem),
  selector(
    "> span",
    [background(Theme.Colors.gradient)]->Array.concat(Theme.Constants.clipBackground),
  ),
])

let topicsList = style(.[
  minWidth(42.0->rem),
  listStyleType(none),
  padding(zero),
  margin(zero),
  selector(
    "> li",
    [
      paddingLeft(4.0->rem),
      marginBottom(1.2->rem),
      color(Theme.Colors.text),
      fontFamily(Theme.fontFamily->#custom),
      fontWeight(600->#num),
      fontSize(1.8->rem),
      position(relative),
      after([
        contentRule("assets/check-icon.svg"->#url),
        width(2.4->rem),
        height(2.4->rem),
        position(absolute),
        left(zero),
        top(50.0->pct),
        marginTop(-1.2->rem),
      ]),
    ],
  ),
])
