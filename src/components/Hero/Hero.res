module Styles = Hero_Styles

module Symbol = {
  @react.component @module("./Animated")
  external make: unit => React.element = "Symbol"
}

module Title = {
  @react.component @module("./Animated")
  external make: (~children: React.element, ~className: string=?) => React.element = "Title"
}

@react.component
let make = () => {
  open Styles

  <div className=wrapper>
    <div className=symbolWrapper> <Symbol /> </div>
    <Title className=text>
      <Text> "Aprenda uma linguagem" </Text>
      <Text tag=#span> " funcional " </Text>
      <Text> "e focada em " </Text>
      <Text tag=#span> "React" </Text>
    </Title>
  </div>
}
