open CssJs
module Array = Belt.Array

let wrapper = style(.[
  Media.xs([
    padding2(~v=zero, ~h=3.2->rem),
    margin4(~top=17.2->rem, ~bottom=zero, ~left=auto, ~right=auto),
  ]),
  Media.sm([
    margin4(~top=22.4->rem, ~bottom=zero, ~left=auto, ~right=auto),
    padding2(~v=zero, ~h=4.6->rem),
  ]),
  Media.md([
    maxWidth(Theme.Constants.maxWidth),
    margin4(~top=27.2->rem, ~bottom=0.0->rem, ~left=auto, ~right=auto),
    padding2(~v=zero, ~h=4.6->rem),
  ]),
  Media.xl([
    margin4(~top=32.4->rem, ~bottom=zero, ~left=auto, ~right=auto),
    padding2(~v=zero, ~h=5.6->rem),
  ]),
  Media.xxl([padding2(~v=zero, ~h=zero)]),
])

let conceptsWrapper = style(.[
  display(#flex),
  justifyContent(spaceBetween),
  marginTop(6.4->rem),
  Media.xs([flexDirection(#column), alignItems(#flexStart)]),
  Media.sm([flexDirection(#column), alignItems(#flexStart)]),
  Media.lg([flexDirection(#row), alignItems(center)]),
])

let conceptsText = style(.[
  color(Theme.Colors.white),
  fontFamily(Theme.fontFamily->#custom),
  fontWeight(800->#num),
  Media.xs([fontSize(2.2->rem), marginBottom(5.6->rem)]),
  Media.sm([fontSize(3.2->rem), marginBottom(5.2->rem)]),
  Media.lg([marginRight(6.4->rem)]),
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
  Media.xs([minWidth(100.0->pct)]),
  selector(
    "> li",
    [
      paddingLeft(4.0->rem),
      marginBottom(1.2->rem),
      color(Theme.Colors.text),
      fontFamily(Theme.fontFamily->#custom),
      fontWeight(600->#num),
      fontSize(1.8->rem),
      Media.xs([fontSize(1.6->rem)]),
      Media.sm([fontSize(2.0->rem)]),
      Media.xs([fontSize(1.8->rem)]),
      position(relative),
      after([
        contentRule("assets/check-icon.svg"->#url),
        Media.sm([]),
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
