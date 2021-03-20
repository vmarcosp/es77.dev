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
])

let _photo = style(.[selector("> div", [borderRadius(50.0->pct)]), marginRight(2.4->rem)])

let _name = style(.[
  color(Theme.Colors.white),
  fontSize(1.8->rem),
  fontWeight(700->#num),
  fontFamily(Theme.fontFamily->#custom),
  margin(zero),
])

let _role = style(.[
  color(Theme.Colors.gray1),
  fontSize(1.6->rem),
  fontWeight(500->#num),
  fontFamily(Theme.fontFamily->#custom),
  margin(zero),
  letterSpacing(-0.03->em),
])

let header = style(.[display(#flex), alignItems(center)])

let _description = (~isStudentReview) =>
  style(.[
    fontSize(isStudentReview ? 1.8->rem : 2.0->rem),
    fontWeight(isStudentReview ? 500->#num : 600->#num),
    position(relative),
    marginTop(3.2->rem),
    color("A6A6A6"->hex),
    selector(
      "span",
      [
        unsafe(
          "background",
          j`linear-gradient(to right, ${Theme.ColorsRaw.purple}, ${Theme.ColorsRaw.purple} 50%, transparent 50%)`,
        ),
        transition(~duration=200, "background-position"),
        backgroundSize(#size(210.0->pct, 100.0->pct)),
        backgroundPosition(100.0->#percent),
        transitions([
          Transition.shorthand(~duration=400, "padding"),
          Transition.shorthand(~duration=400, "background-position"),
        ]),
      ],
    ),
    before([
      contentRule("assets/quotes.webp"->#url),
      position(absolute),
      top(-3->px),
      left(zero),
      width(2.0->rem),
      height(2.0->rem),
      whiteSpace(#pre),
    ]),
    Media.xs([fontSize(1.8->rem)]),
  ])

let reviews = (~isStudentReview) =>
  style(.[
    display(#flex),
    flexWrap(#wrap),
    Media.xs([marginTop(isStudentReview ? 3.2->rem : 9.2->rem)]),
    Media.sm([marginTop(isStudentReview ? 4.6->rem : 7.2->rem)]),
  ])

let review = (~isStudentReview) =>
  style(.[
    position(relative),
    borderRadius(6->px),
    display(#flex),
    flexDirection(isStudentReview ? columnReverse : column),
    unsafe("cursor", Cursor.lighting),
    hover([
      selector("> p", [color(Theme.Colors.white)]),
      Media.sm([
        selector(
          "> p > span",
          [
            unsafe("background-position", "0% 100%"),
            transitionDuration(400),
            transitions([Transition.shorthand(~duration=400, "background-position")]),
          ],
        ),
      ]),
    ]),
    Media.xs([marginBottom(7.2->rem), selector("> p", [color(Theme.Colors.white)])]),
    Media.sm([marginBottom(4.6->rem)]),
    Media.md([
      flex3(~grow=1.0, ~shrink=0.0, ~basis=50.0->pct),
      marginBottom(7.2->rem),
      nthChild(#odd, [paddingRight(5.6->rem)]),
      nthChild(#even, [paddingLeft(5.6->rem)]),
    ]),
  ])

let subtitle = style(.[
  color(Theme.Colors.white),
  fontSize(2.4->rem),
  fontFamily(Theme.fontFamily->#custom),
  fontWeight(700->#num),
  marginTop(7.2->rem),
])

let translateButton = style(.[
  outlineStyle(none),
  background(none),
  borderStyle(none),
  padding(zero),
  position(absolute),
  left(zero),
  color(Theme.Colors.pink),
  fontFamily(Theme.fontFamily->#custom),
  fontSize(1.4->rem),
  fontWeight(#bold),
  cursor(pointer),
  opacity(0.7),
  transition(~duration=300, "opacity"),
  textDecoration(none),
  Media.xs([bottom(-2.0->rem)]),
  Media.sm([bottom(-2.0->rem)]),
  Media.md([bottom(1.6->rem)]),
  hover([
    opacity(1.0),
    transition(~duration=300, "opacity"),
    after([right(-4->px), transition(~duration=300, "right")]),
  ]),
])
