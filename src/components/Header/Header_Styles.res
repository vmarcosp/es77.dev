open CssJs

let wrapper = style(.[
  display(#flex),
  alignItems(#center),
  justifyContent(#spaceBetween),
  Media.xs([
    padding2(~v=4.5->rem, ~h=3.2->rem),
    margin2(~v=zero, ~h=#auto),
    maxWidth(Theme.Constants.maxWidth),
  ]),
  Media.sm([
    padding2(~v=4.5->rem, ~h=3.2->rem),
    margin2(~v=zero, ~h=#auto),
    maxWidth(Theme.Constants.maxWidth),
  ]),
])

let text = style(.[
  color(white),
  fontFamily(#custom(Theme.fontFamily)),
  fontSize(2.4->rem),
  fontWeight(#num(600)),
  position(relative),
  top(-6->px),
  marginLeft(0.75->rem),
])

let comingSoonWrapper = style(.[display(#flex), alignItems(#center)])
