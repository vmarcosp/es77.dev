open CssJs

let wrapper = style(.[
  //
  background(Theme.Colors.darkGradient),
])

let content = style(.[
  //
  maxWidth(Theme.Constants.maxWidth),
  margin4(~top=zero, ~bottom=zero, ~left=auto, ~right=auto),
  padding2(~v=6.4->rem, ~h=zero),
  display(#flex),
  alignItems(#center),
  justifyContent(#spaceBetween),
])

let madeBy = style(.[
  //
  fontFamily(Theme.fontFamily->#custom),
  fontSize(1.6->rem),
  color("AD9FC6"->hex),
  selector(
    "> a",
    [
      //
      fontWeight(600->#num),
      color(Theme.Colors.pink),
      textDecoration(none),
      position(relative),
      hover([
        //
        after([
          //
          transition(~duration=300, "transform"),
          transform(scale(1.0, 1.0)),
        ]),
      ]),
      after([
        //

        transition(~duration=300, "transform"),
        contentRule(" "->#text),
        position(absolute),
        bottom(-4->px),
        left(zero),
        width(100.0->pct),
        height(2->px),
        background(Theme.Colors.pink),
        transform(scale(0.0, 0.0)),
      ]),
    ],
  ),
])
