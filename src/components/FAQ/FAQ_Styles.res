open CssJs

let wrapper = style(.[
  //
  maxWidth(Theme.Constants.maxWidth),
  margin4(~top=zero, ~bottom=0.0->rem, ~left=auto, ~right=auto),
  padding2(~v=12.4->rem, ~h=zero),
])

let listWrapper = style(.[
  //
  display(#flex),
  flexWrap(#wrap),
])

let faqWrapper = style(.[
  //
  flex3(~grow=1.0, ~shrink=0.0, ~basis=50.0->pct),
  nthChild(#odd, [paddingRight(7.0->rem)]),
  nthChild(#even, [paddingLeft(7.0->rem)]),
  marginBottom(6.4->rem),
])

let _title = style(.[
  //
  fontSize(2.4->rem),
  color(Theme.Colors.white),
  fontFamily(Theme.fontFamily->#custom),
  fontWeight(600->#num),
  marginBottom(1.6->rem),
])
