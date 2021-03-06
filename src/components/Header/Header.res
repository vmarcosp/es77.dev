open Header_Styles

module Wrapper = {
  @react.component @module("./Animated.js")
  external make: (~className: string, ~children: React.element) => React.element = "Wrapper"
}

@react.component
let make = () => {
  <Wrapper className=wrapper> <Logo /> <Menu /> </Wrapper>
}
