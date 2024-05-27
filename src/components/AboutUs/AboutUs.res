open AboutUs_Styles
open Render

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

let makeTelegramUrl = username =>
  `https://t.me/${username}?text=Ol%C3%A1!%20Quero%20saber%20mais%20sobre%20o%20curso%20ES2077`

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
    <img alt="|>" src="assets/triangle-2.svg" className=triangle />
    <div id="instrutores" className=wrapper>
      <Title initial=#hidden animate=#controlled(controls) variants=titleVariants innerRef>
        {`Sobre os instrutores`}
      </Title>
      <div className=cardsContainer>
        <Card
          github="https://github.com/vmarcosp"
          twitter="https://twitter.com/vmaarcosp"
          telegram={makeTelegramUrl("vmarcosp")}
          initialX={-40}
          photo="/assets/marcos.webp"
          name="Marcos Oliveira"
          role="SWE at VTEX"
          description={<>
            {`Front-End Developer com 10 anos de experiência em produtos digitais em diversas áreas como finanças, saúde, logística e ecommerce. Organiza, palestra e evangeliza sobre ReScript há 5 anos, sendo um dos pioneiros do tema no Brasil.`->str}
          </>}
        />
        <Card
          github="https://github.com/fakenickels"
          twitter="https://twitter.com/fakenickels"
          telegram={makeTelegramUrl("fakenickels")}
          initialX={40}
          photo="/assets/gabriel.webp"
          name="Gabriel Rubens"
          role="Tech Lead na Walnut"
          description={`Tech Lead na Walnut, desenvolvedor para toda obra, professor 
            e evangelista de ReScript e Programação Funcional. 
            Já palestra e produz conteúdo sobre Reason e ReScript desde 2017 e é autor de inúmeras biblitotecas como ReForm e Epitath.`->str}
        />
      </div>
    </div>
  </>
}
