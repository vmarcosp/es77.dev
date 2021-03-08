open AboutUs_Styles

let variants = x => {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~x, ()),
    visible: variant(
      ~opacity=1.0,
      ~x=0,
      ~transition=transition(~delay=0.35, ~duration=0.6, ()),
      (),
    ),
  }
}

@react.component
let make = (~name, ~description, ~role, ~photo as src, ~initialX) => {
  let (innerRef, inView) = IntersectionObserver.useInView()
  let controls = FramerMotion.useAnimation()

  React.useEffect1(() => {
    if inView {
      controls.start(. #visible)
    }

    None
  }, [inView])

  <Motion.Div
    innerRef
    animate=#controlled(controls)
    initial=#hidden
    variants={variants(initialX)}
    className=card>
    <img src alt=name className=photo />
    <p className=title> {name->React.string} </p>
    <p className=subtitle> {role->React.string} </p>
    <Text.P> {description->React.string} </Text.P>
  </Motion.Div>
}
