open CssJs

let paragraph = style(.[
  color(Theme.Colors.text),
  fontFamily(Theme.fontFamily->#custom),
  transition(~duration=400, "color"),
  hover([transition(~duration=400, "color")]),
  Media.xs([fontSize(1.6->rem)]),
  Media.sm([fontSize(1.8->rem)]),
])
