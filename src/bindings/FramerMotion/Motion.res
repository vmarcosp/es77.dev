module Components = Motion_Components

module Div = Components.MakeElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "div"
})

module Form = Components.MakeElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "form"
})

module Header = Components.MakeElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "header"
})

module Section = Components.MakeElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "section"
})

module H1 = Components.MakeElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "h1"
})

module H2 = Components.MakeElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "h2"
})

module P = Components.MakeElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "p"
})

module A = Components.MakeElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "a"
})

module Li = Components.MakeElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "li"
})

module Img = Components.MakeVoidElement({
  @module("framer-motion") @scope("motion")
  external element: Components.motionElement = "img"
})
