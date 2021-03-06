type controlStatus = [#visible | #hidden]

type controls = {start: (. controlStatus) => unit}

@module("framer-motion")
external useAnimation: unit => controls = "useAnimation"

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
