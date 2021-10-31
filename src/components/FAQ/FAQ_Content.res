open Render

let makeTelegramUrl = username =>
  `https://t.me/${username}?text=Ol%C3%A1!%20Quero%20saber%20mais%20sobre%20o%20curso%20ES2077`

type faqItem = {
  title: string,
  description: React.element,
}

let items = [
  {
    title: j`Quais conhecimentos são necessários para fazer o curso?`,
    description: {
      j`É importante que você tenha conhecimento prévio em JavaScript, React e em ferramentas como yarn e npm para poder absorver melhor o conteúdo do curso.`->str
    },
  },
  {
    title: j`Quanto tempo tenho para assistir as aulas?`,
    description: {j`Leve o tempo que quiser para fazer o curso, o acesso é vitalício.`->str},
  },
  {
    title: j`O curso possui certificado?`,
    description: {
      j`Sim! O curso possui certificado e você poderá baixá-lo assim que finalizar todos os módulos do curso.`->str
    },
  },
  {
    title: j`Onde o conteúdo será disponibilizado?`,
    description: {j`Todo o conteúdo referente ao curso será disponibilizado na Hotmart.`->str},
  },
  {
    title: j`Sou aluno da primeira versão do curso, tenho acesso a esta versão também?`,
    description: {
      j`Como aluno do primeiro curso, você terá acesso apenas ao primeiro módulo deste curso, que possui o mesmo conteúdo que a primeira versão, porém com atualizações e novos materiais produzidos para esta versão.`->str
    },
  },
  {
    title: j`Cadastrei meu e-mail na campanha, mas não recebi meu desconto.`,
    description: {
      <>
        {j`Se você se cadastrou na campanha de pré-lançamento, mas não recebeu seu e-mail com o cupom de desconto, entre em contato conosco através do`->str}
        <a href={makeTelegramUrl("vmarcosp")}> {j` Telegram`->str} </a>
        {` ou`->str}
        <a href=`https://twitter.com/vmaarcosp` target="_blank"> {j` Twitter.`->str} </a>
      </>
    },
  },
  {
    title: j`Tenho outras dúvidas`,
    description: {
      <>
        {j`
          Caso você tenha outras dúvidas relacionadas ao curso, 
          ou se você é aluno da primeira versão do curso e tem alguma dúvida você pode chamar o
        `->str}
        <a href={makeTelegramUrl("vmarcosp")}> {j` Marcos`->str} </a>
        {j` e o`->str}
        <a href={makeTelegramUrl("fakenickels")}> {j` Gabriel`->str} </a>
        {j` pelo telegram.`->str}
      </>
    },
  },
]
