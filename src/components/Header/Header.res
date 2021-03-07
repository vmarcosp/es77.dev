open Header_Styles

let variants = {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=-20, ()),
    visible: variant(
      ~opacity=1.0,
      ~y=0,
      ~transition=transition(~delay=0.35, ~duration=0.6, ()),
      (),
    ),
  }
}

@react.component
let make = () => {
  <Motion.Header animate=#visible initial=#hidden variants className=wrapper>
    <Logo /> <Menu />
  </Motion.Header>
}
