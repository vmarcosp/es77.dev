type mediaQuery =
  | Max(float)
  | Min(float)

let ofString = value =>
  switch value {
  | Max(size) => j`(max-width: ${size->Belt.Float.toString}px )`
  | Min(size) => j`(min-width: ${size->Belt.Float.toString}px )`
  }

let mediaQuery = (kind, rules) => kind->ofString->CssJs.media(rules)

let maxWidth = value => mediaQuery(Max(value))
let minWidth = value => mediaQuery(Min(value))

let xs = maxWidth(576.)
let sm = minWidth(576.)
let md = minWidth(768.)
let lg = minWidth(992.)
let xl = minWidth(1200.)
let xxl = minWidth(1400.)
let xxxl = minWidth(1600.)
