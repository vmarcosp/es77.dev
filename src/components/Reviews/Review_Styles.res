open CssJs

let wrapper = style(.[
  //
  maxWidth(Theme.Constants.maxWidth),
  margin4(~top=zero, ~bottom=0.0->rem, ~left=auto, ~right=auto),
  padding2(~v=12.4->rem, ~h=zero),
])

let _photo = (~isStudentReview) =>
  style(.[
    width(isStudentReview ? 6.0->rem : 7.2->rem),
    height(isStudentReview ? 6.0->rem : 7.2->rem),
    borderRadius(50.0->pct),
    marginRight(2.4->rem),
  ])

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

let header = style(.[
  //
  display(#flex),
  alignItems(center),
])

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
        backgroundSize(#size(200.0->pct, 100.0->pct)),
        backgroundPosition(100.0->#percent),
        transitions([
          Transition.shorthand(~duration=400, "padding"),
          Transition.shorthand(~duration=400, "background-position"),
        ]),
      ],
    ),
    before([
      contentRule("assets/quotes.svg"->#url),
      position(absolute),
      top(-3->px),
      left(zero),
      width(2.0->rem),
      height(2.0->rem),
      whiteSpace(#pre),
    ]),
  ])

let reviews = style(.[
  //
  display(#flex),
  flexWrap(#wrap),
  flex3(~grow=1.0, ~shrink=0.0, ~basis=50.0->pct),
])

let review = (~isStudentReview) =>
  style(.[
    borderRadius(6->px),
    display(#flex),
    flexDirection(isStudentReview ? columnReverse : column),
    padding(5.2->rem),
    flex3(~grow=1.0, ~shrink=0.0, ~basis=50.0->pct),
    unsafe("cursor", Cursor.lighting),
    hover([
      selector("> p", [color(Theme.Colors.white)]),
      selector(
        "> p > span",
        [
          unsafe("background-position", "0% 100%"),
          transitionDuration(400),
          transitions([
            Transition.shorthand(~duration=400, "padding"),
            Transition.shorthand(~duration=400, "background-position"),
          ]),
        ],
      ),
    ]),
  ])

let subtitle = style(.[
  color(Theme.Colors.white),
  fontSize(2.4->rem),
  fontFamily(Theme.fontFamily->#custom),
  fontWeight(700->#num),
  marginTop(11.2->rem),
  marginLeft(3.6->rem),
])
