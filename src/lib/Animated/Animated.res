module FadeIn = {
  @react.component @module("./Animated.js")
  external make: (
    ~children: React.element,
    ~controls: FramerMotion.controls=?,
    ~x: (int, int)=?,
    ~y: (int, int)=?,
    ~delay: float=?,
    ~duration: float=?,
    ~className: string=?,
  ) => React.element = "FadeIn"
}
