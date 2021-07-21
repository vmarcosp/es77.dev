open Render

type review = {
  name: string,
  role: string,
  photo: string,
  description: React.element,
  translatedDescription: option<React.element>,
}

module TextWrapper = {
  @react.component
  let make = (~children) => <> {`\u00a0 \u00a0 \u00a0 \u00a0`->str} children </>
}

let highlights = [
  {
    name: "Fernando Daciuk",
    role: "Tech Lead na Brainn Co.",
    photo: "/assets/reviews/daciuk.webp",
    description: {
      <TextWrapper>
        {j`Tive o prazer de trabalhar com o Marcos em projetos recentes, e é impossível não ver o brilho nos olhos quando ele está falando de Programação Funcional, JavaScript, React e ReScript. Esse curso é a sua `->str}
        <Text.Span> {j`oportunidade de aprender de verdade`} </Text.Span>
        {j` com quem entende do assunto 😄`->str}
      </TextWrapper>
    },
    translatedDescription: None,
  },
  {
    name: "Willian Justen",
    role: "Instrutor na Udemy",
    photo: "/assets/reviews/justen.png",
    description: {
      <TextWrapper>
        {`Não existem pessoas mais experientes em ReScript no Brasil que o Marcos e Gabriel. Ambos são apaixonados por programação funcional e 
        você consegue ver esse amor em cada explicação e trabalho que é feito por eles. 
        Tendo trabalhado como instrutor por tantos anos, eu consigo ver claramente quem realmente 
        tem `->str}
        <Text.Span> {`paixão pelo ensino`} </Text.Span>
        {` e `->str}
        <Text.Span> `didática` </Text.Span>
        {` de quem não tem, e posso afirmar que você vai aprender muito com os dois.`->str}
      </TextWrapper>
    },
    translatedDescription: None,
  },
  {
    name: "Guilherme Decampo",
    role: "CEO na Astrocoders",
    photo: "/assets/reviews/guilherme.webp",
    description: {
      <TextWrapper>
        {j`Nos últimos anos, o Gabriel tem liderado a adoção de ReScript na Astrocoders. Sem dúvidas, hoje ele é uma das principais referências que mais domina e conhece ReScript no Brasil. Tenho certeza que se você quer aprender ReScript, este é o `->str}
        <Text.Span> {j`melhor material de aprendizado`} </Text.Span>
        {` disponível no mercado  🚀`->str}
      </TextWrapper>
    },
    translatedDescription: None,
  },
  {
    name: "Vitor Mendrone",
    role: "Head of Engineering na Portolab",
    photo: "/assets/reviews/mendrone.webp",
    description: {
      <TextWrapper>
        {`Além de ser um dos desenvolvedores mais brilhantes com quem já trabalhei, posso dizer que o conhecimento do Marcos em `->str}
        <Text.Span> {j`ReScript`} </Text.Span>
        {` e `->str}
        <Text.Span> {j`Programação Funcional`} </Text.Span>
        {` como um todo é impressionante, muito acima da média e`->str}
        {` caminha de mãos dadas com a `->str}
        <Text.Span> {`boa didática`} </Text.Span>
        {` que ele desenvolveu sendo um evangelizador informal da linguagem. `->str}
      </TextWrapper>
    },
    translatedDescription: None,
  },
  {
    name: "Gabriel Nordeborn",
    role: "Partner na Arizon Consulting",
    photo: "/assets/reviews/zth.webp",
    description: {
      <TextWrapper>
        {j`Gabriel does not merely have a fantastic first name (😂), he’s also an integral part of the ReScript community, having built `->str}
        <Text.Span> {j`excellent libraries like ReForm, lenses-ppx and more`} </Text.Span>
        {j`. Having Gabriel by your side on your ReScript journey `->str}
        <Text.Span> {j`means you’re in excellent hands!`} </Text.Span>
      </TextWrapper>
    },
    translatedDescription: {
      Some(
        <TextWrapper>
          {j`Gabriel não tem apenas um nome incrível (😂), ele também é parte integrante da comunidade ReScript, tendo construído `->str}
          <Text.Span> {j`bibliotecas excelentes como ReForm, lenses-ppx e muito mais`} </Text.Span>
          {j`. Ter Gabriel ao seu lado em sua jornada ReScript `->str}
          <Text.Span> {j`significa que você está em excelentes mãos!`} </Text.Span>
        </TextWrapper>,
      )
    },
  },
  {
    name: "Diogo Mafra",
    role: "co-CTO na T10 Digital",
    photo: "/assets/reviews/diogo.jpg",
    description: {
      <TextWrapper>
        {j`Foi através da ajuda de Gabriel e Marcos que me aprofundei em 
        ReScript e conseguimos começar a adoção na T10. Além de serem membros 
        super ativos na comunidade, com contribuições relevantes para o ecossistema, 
        são excelentes professores para a sua jornada de aprendizado.`->str}
      </TextWrapper>
    },
    translatedDescription: None,
  },
]

let studentReviews = [
  {
    name: j`Caio Henrique`,
    role: "Front-End Developer na Accenture",
    photo: "/assets/reviews/caio.webp",
    description: {
      <TextWrapper>
        {`ES2077 sem sombra de dúvidas trouxe conceitos que aumentaram minha perspectiva como programador. 
        O Gabriel sempre se manteve bastante atencioso para quaisquer dúvidas antes e depois do curso.`->str}
      </TextWrapper>
    },
    translatedDescription: None,
  },
  {
    name: j`Guilherme de Andrade`,
    role: "Software Engineer na New Work Se",
    photo: "/assets/reviews/andrade.webp",
    description: {
      <TextWrapper>
        {`ES2077 é um curso muito bem pensado e produzido. 
        Atráves dele, o Gabriel passa sua experiência com ReScript em produção de uma `->str}
        <Text.Span> {`forma clara e objetiva`} </Text.Span>
        {`. Acredito que este curso oferece toda a base necessária para quem deseja desenvolver utilizando ReScript.`->str}
      </TextWrapper>
    },
    translatedDescription: None,
  },
  {
    name: j`Celso Bonutti`,
    role: "Full-Stack Developer na Heliax",
    photo: "/assets/reviews/celso.webp",
    description: {
      <TextWrapper>
        {`Se o curso ES2077 existisse quando comecei os meus estudos de ReScript, certamente minha jornada de aprendizado teria sido muito melhor.
        O curso entrega todo o material e os recursos necessários para sair do `->str}
        <Text.Span> {`zero ao avançado`} </Text.Span>
        {` na linguagem.`->str}
      </TextWrapper>
    },
    translatedDescription: None,
  },
  {
    name: j`Arthur Barroso`,
    role: "Full-stack Developer na Brainn Co.",
    photo: "/assets/reviews/arthur.webp",
    description: {
      <TextWrapper>
        {`Meu principal objetivo em aprender ReScript era poder me aprofundar em uma linguagem 
        diferente da utilizada no trabalho e, assim, desenvolver outras linhas de abordagem para os problemas. Posso dizer que se hoje sou `->str}
        <span> {`um programador melhor`->str} </span>
        {` devo em muito ao ReScript e, principalmente ao Gabriel com seu curso e todo o suporte dado.`->str}
      </TextWrapper>
    },
    translatedDescription: None,
  },
]
