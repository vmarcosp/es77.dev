open Render

type review = {
  name: string,
  role: string,
  photo: string,
  description: React.element,
}

module TextWrapper = {
  @react.component
  let make = (~children) => <> {`\u00a0 \u00a0 \u00a0 \u00a0`->str} children </>
}

let highlights = [
  {
    name: "Fernando Daciuk",
    role: "Tech Lead na Brainn Co.",
    photo: "assets/reviews/daciuk.png",
    description: {
      <TextWrapper>
        {j`Tive o prazer de trabalhar com o Marcos em projetos recentes, e é impossível não ver o brilho nos olhos quando ele está falando de Programação Funcional, JavaScript, React e Rescript. Esse curso é a sua`->React.string}
        <Text.Span> {j` oportunidade de aprender de verdade `} </Text.Span>
        {j`com quem entende do assunto 😄`->React.string}
      </TextWrapper>
    },
  },
  {
    name: "Guilherme Decampo",
    role: "CEO na Astrocoders",
    photo: "assets/reviews/guilherme.jpeg",
    description: {
      <TextWrapper>
        {j`Nos últimos anos, o Gabriel tem liderado a adoção de ReScript na Astrocoders. Sem dúvidas, hoje ele é uma das principais referências que mais domina e conhece ReScript no Brasil. Tenho certeza que se você quer aprender ReScript, este é o `->React.string}
        <Text.Span> {j`melhor material de aprendizado disponível no mercado `} </Text.Span>
        {`🚀`->React.string}
      </TextWrapper>
    },
  },
  {
    name: "Diogo Moretti",
    role: "Developer Relations na Brainn Co.",
    photo: "assets/reviews/moretti.jpeg",
    description: {
      <TextWrapper>
        {j`Tive o prazer de trabalhar com o Marcos em projetos recentes, e é impossível não ver o brilho nos olhos quando ele está falando de Programação Funcional, JavaScript, React e Rescript. Esse curso é a sua`->React.string}
        <Text.Span> {j` oportunidade de aprender de verdade `} </Text.Span>
        {j`com quem entende do assunto 😄`->React.string}
      </TextWrapper>
    },
  },
  {
    name: "Vitor Mendrone",
    role: "CTO na Portolab",
    photo: "assets/reviews/mendrone.jpeg",
    description: {
      <TextWrapper>
        {j`Tive o prazer de trabalhar com o Marcos em projetos recentes, e é impossível não ver o brilho nos olhos quando ele está falando de Programação Funcional, JavaScript, React e Rescript. Esse curso é a sua`->React.string}
        <Text.Span> {j` oportunidade de aprender de verdade `} </Text.Span>
        {j`com quem entende do assunto 😄`->React.string}
      </TextWrapper>
    },
  },
]

let studentReviews = [
  {
    name: j`João Miguel`,
    role: "Developer na Lukin",
    photo: "assets/reviews/daciuk.png",
    description: {
      <TextWrapper>
        {j`O curso foi incrível! Não encontrei nenhum curso que ensinasse tão bem `->str}
        <span> {j`programação funcional de uma maneira prática e descomplicada`->str} </span>
        {j`. Certamente a próxima versão será ainda melhor que a primeira!`->str}
      </TextWrapper>
    },
  },
  {
    name: j`João Miguel`,
    role: "Developer na Lukin",
    photo: "assets/reviews/daciuk.png",
    description: {
      <TextWrapper>
        {j`O curso foi incrível! Não encontrei nenhum curso que ensinasse tão bem `->str}
        <span> {j`programação funcional de uma maneira prática e descomplicada`->str} </span>
        {j`. Certamente a próxima versão será ainda melhor que a primeira!`->str}
      </TextWrapper>
    },
  },
  {
    name: j`João Miguel`,
    role: "Developer na Lukin",
    photo: "assets/reviews/daciuk.png",
    description: {
      <TextWrapper>
        {j`O curso foi incrível! Não encontrei nenhum curso que ensinasse tão bem `->str}
        <span> {j`programação funcional de uma maneira prática e descomplicada`->str} </span>
        {j`. Certamente a próxima versão será ainda melhor que a primeira!`->str}
      </TextWrapper>
    },
  },
  {
    name: j`João Miguel`,
    role: "Developer na Lukin",
    photo: "assets/reviews/daciuk.png",
    description: {
      <TextWrapper>
        {j`O curso foi incrível! Não encontrei nenhum curso que ensinasse tão bem `->str}
        <span> {j`programação funcional de uma maneira prática e descomplicada`->str} </span>
        {j`. Certamente a próxima versão será ainda melhor que a primeira!`->str}
      </TextWrapper>
    },
  },
]
