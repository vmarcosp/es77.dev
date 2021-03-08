open AboutUs_Styles

module Card = AboutUs_Card

let titleVariants = {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(
      ~opacity=1.0,
      ~y=0,
      ~transition=transition(~delay=0.35, ~duration=0.6, ()),
      (),
    ),
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

  <>
    <img src="assets/triangle-2.svg" className=triangle />
    <div className=wrapper>
      <Title initial=#hidden animate=#controlled(controls) variants=titleVariants innerRef>
        {j`Quem somos nós`}
      </Title>
      <div className=cardsContainer>
        <Card
          initialX={-40}
          photo="assets/marcos.jpeg"
          name="Marcos Oliveira"
          role="Developer na brainn.co"
          description=j`Eu como instrutor, prezo sempre pela didática acima de tudo. Existem muitos cursos onde a qualidade de áudio/imagem/edição são o grande foco, mas o ensino nem tanto. Com o Vedovelli posso dizer que é tudo muito bem feito, em todos os aspectos.`
        />
        <Card
          initialX={40}
          photo="assets/gabriel.jpeg"
          name="Gabriel Rubens"
          role="CTO na Astrocoders"
          description=j`Eu como instrutor, prezo sempre pela didática acima de tudo. Existem muitos cursos onde a qualidade de áudio/imagem/edição são o grande foco, mas o ensino nem tanto. Com o Vedovelli posso dizer que é tudo muito bem feito, em todos os aspectos.`
        />
      </div>
    </div>
  </>
}
