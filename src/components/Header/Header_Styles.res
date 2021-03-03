open CssJs

let wrapper = style(.[
  display(#flex),
  alignItems(#center),
  justifyContent(#spaceBetween),
  maxWidth(Theme.Constants.maxWidth),
  margin2(~v=zero, ~h=#auto),
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
