open Render

let makeTelegramUrl = username =>
  `https://t.me/${username}?text=Ol%C3%A1!%20Quero%20saber%20mais%20sobre%20o%20curso%20ES2077`

type faqItem = {
  title: string,
  description: React.element,
}

let items = [
  {
    title: `Quais conhecimentos são necessários para fazer o curso?`,
    description: {
      `É importante que você tenha conhecimento prévio em JavaScript, React e em ferramentas como yarn e npm para poder absorver melhor o conteúdo do curso.`->str
    },
  },
  {
    title: `Quanto tempo tenho para assistir as aulas?`,
    description: {`Leve o tempo que quiser para fazer o curso, o acesso é vitalício.`->str},
  },
  {
    title: `O curso possui certificado?`,
    description: {
      `Sim! O curso possui certificado e você poderá baixá-lo assim que finalizar todos os módulos do curso.`->str
    },
  },
  {
    title: `Onde o conteúdo será disponibilizado?`,
    description: {`Todo o conteúdo referente ao curso será disponibilizado na Hotmart.`->str},
  },
  {
    title: `Sou aluno da primeira versão do curso, tenho acesso a esta versão também?`,
    description: {
      `Como aluno do primeiro curso, você terá acesso apenas ao primeiro módulo deste curso, que possui o mesmo conteúdo que a primeira versão, porém com atualizações e novos materiais produzidos para esta versão.`->str
    },
  },
  {
    title: `Cadastrei meu e-mail na campanha, mas não recebi meu desconto.`,
    description: {
      <>
        {`Se você se cadastrou na campanha de pré-lançamento, mas não recebeu seu e-mail com o cupom de desconto, entre em contato conosco através do`->str}
        <a href={makeTelegramUrl("vmarcosp")}> {` Telegram`->str} </a>
        {` ou`->str}
        <a href={`https://twitter.com/vmaarcosp`} target="_blank"> {` Twitter.`->str} </a>
      </>
    },
  },
  {
    title: `Tenho outras dúvidas`,
    description: {
      <>
        {`
          Caso você tenha outras dúvidas relacionadas ao curso, 
          ou se você é aluno da primeira versão do curso e tem alguma dúvida você pode chamar o
        `->str}
        <a href={makeTelegramUrl("vmarcosp")}> {` Marcos`->str} </a>
        {` e o`->str}
        <a href={makeTelegramUrl("fakenickels")}> {` Gabriel`->str} </a>
        {` pelo telegram.`->str}
      </>
    },
  },
]
