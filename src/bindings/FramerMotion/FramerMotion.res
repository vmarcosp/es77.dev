type animateValue
type controlStatus = [#visible | #hidden]

type controls = {start: (. controlStatus) => unit}

type animate = [#controlled(controls) | #visible | #hidden]

@deriving(abstract)
type transition = {
  @optional duration: float,
  @optional delay: float,
  @optional staggeredChildren: float,
  @optional delayChildren: float,
}

@deriving(abstract)
type variant = {
  @optional opacity: float,
  @optional scale: int,
  @optional x: int,
  @optional y: int,
  @optional transition: transition,
}

type variants = {
  hidden: variant,
  visible: variant,
}

@module("framer-motion")
external useAnimation: unit => controls = "useAnimation"
