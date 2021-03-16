open Releasing_Styles
module Content = Releasing_Content

let variants = delay => {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(~opacity=1.0, ~y=0, ~transition=transition(~delay, ~duration=0.6, ()), ()),
  }
}

@react.component
let make = () => {
  let (innerRef, inView) = IntersectionObserver.useInView()
  let controls = FramerMotion.useAnimation()

  React.useEffect1(() => {
    if inView {
      controls.start(. #visible)
    }

    None
  }, [inView])

  <Motion.Div
    animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=wrapper>
    <div className=content>
      <Title
        animate=#controlled(controls)
        initial=#hidden
        variants={variants(0.4)}
        icon=#lighting
        innerRef>
        {j`Pré lançamento`}
      </Title>
      <Text.P animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=text>
        {Content.releasingText}
      </Text.P>
      <Motion.Div
        animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=form>
        <input placeholder="Digite aqui o seu melhor e-mail" />
        <button> {`Enviar`->React.string} </button>
      </Motion.Div>
    </div>
  </Motion.Div>
}
