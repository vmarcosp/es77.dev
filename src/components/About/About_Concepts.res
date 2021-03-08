open About_Styles
let toFloat = Js.Int.toFloat

let concepts = [
  j`Filosofia e conceitos da linguagem`,
  j`Setup e Tooling de projetos`,
  j`Type Driven Development`,
  j`Interoperabilidade com JavaScript`,
  j`Integrações REST e GraphQL`,
  j`CSS in ReScript`,
  j`Integração com React`,
  j`Programação Funcional`,
]

let variants = index => {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(
      ~opacity=1.0,
      ~y=0,
      ~transition=transition(~delay=index->toFloat *. 0.2, ~duration=0.6, ()),
      (),
    ),
  }
}

@react.component
let make = () => {
  let controls = FramerMotion.useAnimation()
  let (containerRef, inView) = IntersectionObserver.useInView()

  React.useEffect1(() => {
    if inView {
      controls.start(. #visible)
    }
    None
  }, [inView])

  <div ref=containerRef className=conceptsWrapper>
    <Motion.P
      initial=#hidden animate=#controlled(controls) variants={variants(1)} className=conceptsText>
      <Text> {j`Você irá aprender de forma `} </Text>
      <Text.Span> {j`prática`} </Text.Span>
      <Text> " e" </Text>
      <Text.Span> " descomplicada" </Text.Span>
      <Text>
        {j`, diversos conceitos relacionados a programação funcional e como aplicá-los no seu dia a dia.`}
      </Text>
    </Motion.P>
    <ul className=topicsList>
      {concepts->Render.map((text, index) =>
        <Motion.Li
          animate=#controlled(controls)
          variants={variants(index)}
          initial=#hidden
          key={index->Render.toString}>
          {text->React.string}
        </Motion.Li>
      )}
    </ul>
  </div>
}
