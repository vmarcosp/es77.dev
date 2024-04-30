open About_Styles
module Content = About_Content

let toFloat = Js.Int.toFloat

let concepts = [
  `Filosofia e conceitos da linguagem`,
  `Setup e Tooling de projetos`,
  `Type Driven Development`,
  `Interoperabilidade com JavaScript`,
  `Integrações REST e GraphQL`,
  `CSS in ReScript`,
  `Integração com React`,
  `Programação Funcional`,
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
      {Content.descriptionText}
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
