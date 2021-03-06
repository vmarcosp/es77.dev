type motionElement

type initial = [#hidden | #visible]

@deriving(abstract)
type motionProps = {
  @optional className: string,
  @optional @as("ref") innerRef: ReactDOM.domRef,
  @optional id: string,
  @optional initial: initial,
  @optional variants: FramerMotion.variants,
  @optional animate: FramerMotion.controls,
}

@bs.module("react")
external createElement: (motionElement, motionProps, React.element) => React.element =
  "createElement"

@bs.module("react")
external createVoidElement: (motionElement, motionProps) => React.element = "createElement"

module type IMakeElement = {
  let element: motionElement
}

module MakeElement = (M: IMakeElement) => {
  @react.component
  let make = (~className=?, ~initial=?, ~variants=?, ~animate=?, ~innerRef=?, ~id=?, ~children) => {
    let props = motionProps(~className?, ~innerRef?, ~id?, ~initial?, ~animate?, ~variants?, ())
    createElement(M.element, props, children)
  }
}
