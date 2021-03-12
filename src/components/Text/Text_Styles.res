open CssJs

let paragraph = style(.[
  color(Theme.Colors.text),
  fontFamily(Theme.fontFamily->#custom),
  fontSize(1.8->rem),
  transition(~duration=400, "color"),
  hover([transition(~duration=400, "color")]),
])
