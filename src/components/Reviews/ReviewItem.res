open Review_Styles

let variants = delay => {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(~opacity=1.0, ~y=0, ~transition=transition(~delay, ~duration=0.6, ()), ()),
  }
}

@react.component
let make = (~controls, ~id, ~photo, ~name, ~role, ~description) => {
  <Motion.Div
    animate=#controlled(controls)
    initial=#hidden
    variants={variants(id->float_of_int *. 0.6)}
    className=review>
    <div className=header>
      <Motion.Img
        animate=#controlled(controls)
        initial=#hidden
        variants={variants(0.4)}
        className=_photo
        src=photo
      />
      <div>
        <Motion.H2
          animate=#controlled(controls) initial=#hidden variants={variants(0.5)} className=_name>
          {name->React.string}
        </Motion.H2>
        <Motion.P
          animate=#controlled(controls) initial=#hidden variants={variants(0.6)} className=_role>
          {role->React.string}
        </Motion.P>
      </div>
    </div>
    <Text.P
      animate=#controlled(controls) initial=#hidden variants={variants(0.8)} className=_description>
      description
    </Text.P>
  </Motion.Div>
}
