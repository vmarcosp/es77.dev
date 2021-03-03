open CssJs

let wrapper = style(.[
  //
  maxWidth(Theme.Constants.maxWidth),
  margin2(~v=10.0->rem, ~h=auto),
  display(#flex),
  flexDirection(column),
  alignItems(center),
  justifyContent(center),
])

let symbolWrapper = style(.[width(35.0->rem)])

let text = style(.[
  //
  color(Theme.Colors.white),
  fontFamily(Theme.fontFamily->#custom),
  fontSize(6.0->rem),
  textAlign(#center),
  maxWidth(1000->px),
  position(relative),
  top(-100->px),
  selector(
    "> span",
    [
      //
      unsafe(
        "background",
        "linear-gradient(180deg, #FF89DE -17.85%, #FF68D5 30.22%, #9361FF 77.87%, #743AF0 118.28%)",
      ),
      unsafe("background-clip", "text"),
      unsafe("-webkit-background-clip", "text"),
      unsafe("-webkit-text-fill-color", "transparent"),
    ],
  ),
])
