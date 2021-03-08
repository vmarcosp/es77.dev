open AboutUs_Styles

module Card = AboutUs_Card

@react.component
let make = () => {
  <>
    <img src="assets/triangle-2.svg" className=triangle />
    <div className=wrapper>
      <Title> {j`Quem somos nós`} </Title>
      <div className=cardsContainer>
        <Card
          photo="assets/marcos.jpeg"
          name="Marcos Oliveira"
          role="Developer na brainn.co"
          description=j`Eu como instrutor, prezo sempre pela didática acima de tudo. Existem muitos cursos onde a qualidade de áudio/imagem/edição são o grande foco, mas o ensino nem tanto. Com o Vedovelli posso dizer que é tudo muito bem feito, em todos os aspectos.`
        />
        <Card
          photo="assets/gabriel.jpeg"
          name="Gabriel Rubens"
          role="CTO na Astrocoders"
          description=j`Eu como instrutor, prezo sempre pela didática acima de tudo. Existem muitos cursos onde a qualidade de áudio/imagem/edição são o grande foco, mas o ensino nem tanto. Com o Vedovelli posso dizer que é tudo muito bem feito, em todos os aspectos.`
        />
      </div>
    </div>
  </>
}
