let title = (~icon) => {
  open CssJs

  let iconUrl = switch icon {
  | #triangle => "assets/triangle-icon.svg"
  | #lighting => "assets/voltage.svg"
  }

  style(.[
    color(white),
    fontFamily(Theme.fontFamily->#custom),
    fontSize(3.2->rem),
    position(relative),
    paddingLeft(4.8->rem),
    marginBottom(3.2->rem),
    after([
      contentRule(iconUrl->#url),
      width(3.2->rem),
      height(3.2->rem),
      position(absolute),
      left(zero),
      top(4->px),
    ]),
  ])
}

@react.component
let make = (~children, ~innerRef=?, ~animate=?, ~initial=?, ~variants=?, ~icon=#triangle) => {
  <Motion.H1 ?initial ?animate ?innerRef ?variants className={title(~icon)}>
    {children->React.string}
  </Motion.H1>
}
