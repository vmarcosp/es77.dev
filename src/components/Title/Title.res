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
    margin(zero),
    marginBottom(2.4->rem),
    Media.xs([fontSize(2.2->rem)]),
    after([
      contentRule(iconUrl->#url),
      position(absolute),
      left(zero),
      Media.xs([top(2->px), width(2.4->rem), height(2.4->rem)]),
      Media.sm([top(4->px), width(3.2->rem), height(3.2->rem)]),
    ]),
  ])
}

@react.component
let make = (~children, ~innerRef=?, ~animate=?, ~initial=?, ~variants=?, ~icon=#triangle) => {
  <Motion.H1 ?initial ?animate ?innerRef ?variants className={title(~icon)}>
    {children->React.string}
  </Motion.H1>
}
