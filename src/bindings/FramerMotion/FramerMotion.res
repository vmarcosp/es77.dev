type controlStatus = [#visible | #hidden]

type controls = {start: (. controlStatus) => unit}

@module("framer-motion")
external useAnimation: unit => controls = "useAnimation"
