open CssJs

let wrapper = style(.[
  //
  maxWidth(Theme.Constants.maxWidth),
  margin4(~top=zero, ~bottom=0.0->rem, ~left=auto, ~right=auto),
  padding2(~v=12.4->rem, ~h=zero),
  display(#flex),
  justifyContent(#center),
  alignItems(#center),
  flexDirection(column),
])

let partner = style(.[
  //
  padding(11.8->rem),
  display(#flex),
  justifyContent(#center),
  alignItems(#center),
  flexDirection(column),
  borderRadius(6->px),
  transition(~duration=400, "background"),
  position(relative),
  marginRight(3.2->rem),
  hover([
    background("201F1F"->hex),
    transition(~duration=400, "background"),
    selector("path", [unsafe("fill", "#ffffff"), transition(~duration=400, "fill")]),
    selector(
      "p",
      [
        //
        transition(~duration=400, "color"),
        color(Theme.Colors.white),
      ],
    ),
  ]),
  selector(
    "p",
    [
      transition(~duration=400, "color"),
      position(absolute),
      bottom(4.0->rem),
      left(50.0->pct),
      transform(translateX(-50.0->pct)),
      marginTop(3.2->rem),
      fontFamily(Theme.fontFamily->#custom),
      fontWeight(700->#num),
      fontSize(2.4->rem),
      color(transparent),
    ],
  ),
  selector("svg", [width(9.6->rem)]),
  selector("path", [transition(~duration=400, "fill")]),
])

let partners = style(.[
  //
  display(#flex),
  marginTop(5.2->rem),
])
