module Components = Motion_Components

module Div = Components.MakeElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "div"
})

module Section = Components.MakeElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "section"
})

module H1 = Components.MakeElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "h1"
})

module P = Components.MakeElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "p"
})
