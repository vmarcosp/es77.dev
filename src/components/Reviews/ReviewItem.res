open Review_Styles

let variants = delay => {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(~opacity=1.0, ~y=0, ~transition=transition(~delay, ~duration=0.6, ()), ()),
  }
}

@react.component
let make = (~controls, ~id, ~photo, ~name, ~role, ~description, ~isStudentReview=false) => {
  let index = id->float_of_int
  <Motion.Div
    animate=#controlled(controls)
    initial=#hidden
    variants={variants(index *. 0.6)}
    className={review(~isStudentReview)}>
    <div className=header>
      <Motion.Img
        animate=#controlled(controls)
        initial=#hidden
        variants={variants(index *. 0.4)}
        className={_photo(~isStudentReview)}
        src=photo
      />
      <div>
        <Motion.H2
          animate=#controlled(controls)
          initial=#hidden
          variants={variants(index *. 0.5)}
          className=_name>
          {name->React.string}
        </Motion.H2>
        <Motion.P
          animate=#controlled(controls)
          initial=#hidden
          variants={variants(index *. 0.6)}
          className=_role>
          {role->React.string}
        </Motion.P>
      </div>
    </div>
    <Text.P
      animate=#controlled(controls)
      initial=#hidden
      variants={variants(index *. 0.7)}
      className={_description(~isStudentReview)}>
      description
    </Text.P>
  </Motion.Div>
}
