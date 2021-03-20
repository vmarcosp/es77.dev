open Review_Styles
open Render

let variants = delay => {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(~opacity=1.0, ~y=0, ~transition=transition(~delay, ~duration=0.6, ()), ()),
  }
}

@react.component
let make = (
  ~controls,
  ~id,
  ~photo,
  ~name,
  ~role,
  ~description,
  ~translatedDescription=?,
  ~isStudentReview=false,
) => {
  let (showTranslation, setShowTranslation) = React.useState(_ => false)

  let toggleTranslation = _ => setShowTranslation(_ => !showTranslation)

  let index = id->float_of_int
  <Motion.Div
    animate=#controlled(controls)
    initial=#hidden
    variants={variants(index *. 0.6)}
    className={review(~isStudentReview)}>
    <div className=header>
      <Motion.Div
        className=_photo
        animate=#controlled(controls)
        initial=#hidden
        variants={variants(index *. 0.4)}>
        <Next.Image alt=name src=photo width="72" height="72" />
      </Motion.Div>
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
    {switch translatedDescription {
    | None =>
      <Text.P
        animate=#controlled(controls)
        initial=#hidden
        variants={variants(index *. 0.7)}
        className={_description(~isStudentReview)}>
        description
      </Text.P>

    | Some(translated) =>
      <Text.P
        animate=#controlled(controls)
        initial=#hidden
        variants={variants(index *. 0.7)}
        className={_description(~isStudentReview)}>
        {showTranslation ? translated : description}
      </Text.P>
    }}
    {switch translatedDescription {
    | None => React.null
    | Some(_) =>
      <button onClick=toggleTranslation className=translateButton>
        {showTranslation ? j`Ver original`->str : j`Ver tradução`->str}
      </button>
    }}
  </Motion.Div>
}
