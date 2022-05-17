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
        {j`Sobre os instrutores`}
      </Title>
      <div className=cardsContainer>
        <Card
          github="https://github.com/vmarcosp"
          twitter="https://twitter.com/vmaarcosp"
          telegram={makeTelegramUrl("vmarcosp")}
          initialX={-40}
          photo="/assets/marcos.webp"
          name="Marcos Oliveira"
          role="Tech Lead na Porto Lab"
          description={<>
            {j`Front-End Developer há alguns anos, meio metido a designer e conhecido como o`->str}
            <i> {j`"Chatão do ReScript"`->str} </i>
            {j` por onde passa 😂. Sempre envolvido na comunidade JavaScript e ReScript, organizando e criando meetups, eventos, palestras e artigos relacionados a ReScript, JavaScript e programação funcional.`->str}
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
          description={j`Software Engineer na Walnut, desenvolvedor para toda obra, professor 
            e evangelista de ReScript e Programação Funcional. 
            Já palestra e produz conteúdo sobre Reason e ReScript há mais 
            de 3 anos e é autor de inúmeras biblitotecas como ReForm e ReasonApolloHooks.`->str}
        />
      </div>
    </div>
  </>
}
