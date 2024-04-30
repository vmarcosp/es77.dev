open About_Styles
module Concepts = About_Concepts

let variants = delay => {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(~opacity=1.0, ~y=0, ~transition=transition(~delay, ~duration=0.6, ()), ()),
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

  <section id="sobre-o-curso" className=wrapper>
    <Title
      innerRef=containerRef initial=#hidden animate=#controlled(controls) variants={variants(0.2)}>
      "Sobre o curso"
    </Title>
    <Text.P initial=#hidden animate=#controlled(controls) variants={variants(0.4)}>
      {`
        O objetivo do curso é te ensinar do zero, como desenvolver aplicações com ReScript, 
        utilizando React, bibliotecas JavaScript e outras ferramentas do próprio ecossistema ReScript. 
        Além disso, você irá aprender de forma prática e descomplicada, 
        vários conceitos de programação funcional e como aplicar esses conceitos no desenvolvimento de aplicações reais. 
        Além dos módulos e o conteúdo do curso, você terá acesso total ao suporte dos instrutores, discord e telegram
        oficial do curso, podendo entrar em contato para tirar dúvidas sempre que necessário.
      `->React.string}
    </Text.P>
    <Concepts />
  </section>
}
