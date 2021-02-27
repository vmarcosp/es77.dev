open CssJs

let wrapper = style(.[
  display(#flex),
  alignItems(#center),
  maxWidth(Theme.Constants.maxWidth),
  margin2(~v=zero, ~h=#auto),
])
