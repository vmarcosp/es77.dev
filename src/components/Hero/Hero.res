module Styles = Hero_Styles

module Symbol = {
  @react.component @module("./Animated")
  external make: unit => React.element = "Symbol"
}

@react.component
let make = () => {
  open Styles

  <div className=wrapper>
    <div className=symbolWrapper> <Symbol /> </div>
    <Animated.FadeIn y=(0, -20) delay=1.75 duration=0.6>
      <h1 className=text>
        <Text> "Aprenda uma linguagem" </Text>
        <Text.Span> " funcional " </Text.Span>
        <Text> "e focada em " </Text>
        <Text.Span> "React" </Text.Span>
      </h1>
    </Animated.FadeIn>
    <Animated.FadeIn y=(0, -20) delay=2.0 duration=0.6>
      <a href="#o-que-e-rescript" className=button> {"SAIBA MAIS"->React.string} </a>
    </Animated.FadeIn>
  </div>
}
