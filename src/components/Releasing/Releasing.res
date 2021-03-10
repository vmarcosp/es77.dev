open Releasing_Styles

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
        {j`Este será um curso vivo, onde os módulos serão lançados conforme o desenvolvimento. No momento, estamos desenvolvendo os 2 primeiros módulos e o lançamento oficial deverá ocorrer no dia `->React.string}
        <Text.Span> "30/04/2020" </Text.Span>
        {j`. Caso você não queira perder o lançamento, nós podemos lhe comunicar via e-mail com antecedência.`->React.string}
      </Text.P>
      <Motion.Div
        animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=form>
        <input placeholder="Digite aqui o seu melhor e-mail" />
        <button> {`Enviar`->React.string} </button>
      </Motion.Div>
    </div>
  </Motion.Div>
}
