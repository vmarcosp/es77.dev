open FAQ_Styles
open Render

let variants = delay => {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(~opacity=1.0, ~y=0, ~transition=transition(~delay, ~duration=0.6, ()), ()),
  }
}

@react.component
let make = (~title, ~description, ~controls, ~id) => {
  let index = id->float_of_int
  <Motion.Div
    animate=#controlled(controls)
    initial=#hidden
    variants={variants(index *. 0.4)}
    className=faqWrapper>
    <Motion.H1
      animate=#controlled(controls)
      initial=#hidden
      variants={variants(index *. 0.5)}
      className=_title>
      {title->str}
    </Motion.H1>
    <Text.P animate=#controlled(controls) initial=#hidden variants={variants(index *. 0.6)}>
      {description->str}
    </Text.P>
  </Motion.Div>
}
