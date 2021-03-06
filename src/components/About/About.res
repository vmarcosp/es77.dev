open About_Styles
module Concepts = About_Concepts

@react.component
let make = () => {
  <section className=wrapper>
    <Title> "Sobre o curso" </Title>
    <p className=text>
      {j`
        O objetivo do curso é te ensinar do zero, como desenvolver aplicações com ReScript, 
        utilizando React e outras bibliotecas existentes, além das próprias ferramentas do 
        ecossistema ReScript. Além disso, você irá aprender de forma prática e descomplicada, 
        vários conceitos de programação funcional e como aplicar esses conceitos no desenvolvimento de aplicações reais. 
        Além dos módulos e conteúdo do curso, você terá acesso total ao suporte dos instrutores e acesso ao discord 
        oficial do curso, podendo entrar em contato para tirar dúvidas sempre que necessário.
      `->React.string}
    </p>
    <Concepts />
  </section>
}
