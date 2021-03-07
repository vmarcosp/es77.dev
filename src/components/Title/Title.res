let title = {
  open CssJs
  style(.[
    color(white),
    fontFamily(Theme.fontFamily->#custom),
    fontSize(3.2->rem),
    position(relative),
    paddingLeft(4.8->rem),
    marginBottom(3.2->rem),
    after([
      contentRule("assets/triangle-icon.svg"->#url),
      width(3.2->rem),
      height(3.2->rem),
      position(absolute),
      left(zero),
    ]),
  ])
}

@react.component
let make = (~children, ~animate=?, ~initial=?, ~variants=?) => {
  <Motion.H1 ?initial ?animate ?variants className=title> {children->React.string} </Motion.H1>
}
