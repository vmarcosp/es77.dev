open About_Styles

module Topic = {
  @react.component @module("./Animated.js")
  external make: (
    ~children: React.element,
    ~index: int,
    ~animate: FramerMotion.controls,
  ) => React.element = "Topic"
}

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
    <p className=conceptsText>
      <Text> {j`Você irá aprender de forma `} </Text>
      <Text.Span> {j`prática`} </Text.Span>
      <Text> " e" </Text>
      <Text.Span> " descomplicada" </Text.Span>
      <Text>
        {j`, diversos conceitos relacionados a programação funcional e como aplicá-los no seu dia a dia.`}
      </Text>
    </p>
    <ul className=topicsList>
      {concepts->Render.map((text, index) =>
        <Topic animate=controls index key={index->Render.toString}> {text->React.string} </Topic>
      )}
    </ul>
  </div>
}
