open CssJs

type classes = {
  menuWrapper: string,
  overlay: string,
  email: string,
}

let createClasses = (~isOpen) => {
  let overlay = style(.[
    position(fixed),
    width(100.0->pct),
    height(100.0->pct),
    left(zero),
    top(isOpen ? zero : 10.0->rem),
    padding(zero),
    margin(zero),
    zIndex(Theme.ZIndex.above),
    backgroundColor(rgba(7, 7, 7, #num(0.95))),
    visibility(isOpen ? visible : hidden),
    opacity(isOpen ? 1.0 : 0.0),
    transitionDuration(400),
    display(#flex),
    alignItems(#center),
    Media.xs([padding2(~v=zero, ~h=3.2->rem)]),
    Media.sm([padding2(~v=zero, ~h=4.6->rem)]),
  ])

  let menuWrapper = style(.[
    maxWidth(Theme.Constants.maxWidth),
    width(100.0->pct),
    margin2(~v=zero, ~h=auto),
    display(#flex),
    alignItems(#flexEnd),
    justifyContent(spaceBetween),
    selector("ul", [padding(zero)]),
    Media.xs([
      //
      justifyContent(center),
      alignItems(center),
      flexDirection(column),
      selector(
        "ul",
        [
          padding(zero),
          display(#flex),
          flexDirection(column),
          alignItems(center),
          justifyContent(center),
        ],
      ),
    ]),
  ])

  let email = style(.[
    color(Theme.Colors.gray1),
    fontFamily(Theme.fontFamily->#custom),
    fontWeight(500->#num),
    fontSize(1.8->rem),
    cursor(pointer),
    textDecoration(#none),
    transition(~duration=300, "color"),
    hover([color(Theme.Colors.white)]),
  ])

  {menuWrapper: menuWrapper, overlay: overlay, email: email}
}

let link = style(.[
  listStyleType(none),
  marginBottom(4.2->rem),
  position(relative),
  selector(
    "> a",
    [
      Media.xs([fontSize(2.4->rem)]),
      Media.sm([fontSize(2.4->rem)]),
      Media.md([fontSize(3.2->rem)]),
      fontWeight(700->#num),
      textDecoration(none),
      color(Theme.Colors.white),
      fontFamily(Theme.fontFamily->#custom),
      hover([color(Theme.Colors.purple), transition(~duration=400, "width")]),
      overflow(hidden),
      unsafe(
        "background",
        j`linear-gradient(to right, ${Theme.ColorsRaw.purple}, ${Theme.ColorsRaw.purple} 50%, white 50%)`,
      ),
      unsafe("background-clip", "text"),
      unsafe("-webkit-background-clip", "text"),
      unsafe("-webkit-text-fill-color", "transparent"),
      transition(~duration=200, "background-position"),
      backgroundSize(#size(200.0->pct, 100.0->pct)),
      backgroundPosition(100.0->#percent),
      transitions([
        Transition.shorthand(~duration=400, "padding"),
        Transition.shorthand(~duration=400, "background-position"),
      ]),
      after([
        contentRule(" "->#text),
        width(0.0->rem),
        height(0.6->rem),
        backgroundColor(Theme.Colors.purple),
        position(absolute),
        left(zero),
        top(50.0->pct),
        transform(translateY(-50.0->pct)),
        transition(~duration=400, "width"),
      ]),
      hover([
        unsafe("background-position", "0% 100%"),
        paddingLeft(4.8->rem),
        transitionDuration(400),
        transitions([
          Transition.shorthand(~duration=400, "padding"),
          Transition.shorthand(~duration=400, "background-position"),
        ]),
        after([width(3.2->rem), transition(~duration=400, "width")]),
      ]),
    ],
  ),
])

let burgerButton = (~isOpen) => {
  style(.[
    padding(zero),
    margin(zero),
    borderStyle(none),
    outlineStyle(none),
    position(relative),
    height(12->px),
    width(25->px),
    backgroundColor(transparent),
    cursor(pointer),
    overflow(visible),
    zIndex(Theme.ZIndex.aboveAll),
    hover([
      selector(
        "&:after, &:before",
        [
          transitions([
            Transition.shorthand(~duration=200, "transform"),
            Transition.shorthand(~duration=300, "background-color"),
          ]),
        ],
      ),
    ]),
    selector(
      "&:after,&:before",
      [
        contentRule(#text(" ")),
        height(2->px),
        width(2.5->rem),
        backgroundColor(Theme.Colors.white),
        position(absolute),
        borderRadius(2->px),
        transitions([
          Transition.shorthand(~duration=200, "transform"),
          Transition.shorthand(~duration=300, "background-color"),
        ]),
      ],
    ),
    after([
      left(zero),
      bottom(isOpen ? 5->px : 0->px),
      transform(isOpen ? -45.0->deg->rotateZ : 0.0->deg->rotateZ),
    ]),
    before([
      left(zero),
      top(isOpen ? 5->px : 0->px),
      transform(isOpen ? 45.0->deg->rotateZ : 0.0->deg->rotateZ),
    ]),
  ])
}
