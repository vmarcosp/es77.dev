open Render

let releasingText = {
  <>
    {j`Este será um curso vivo, onde os módulos serão lançados conforme o desenvolvimento. 
      No momento, estamos trabalhando no primeiro módulo e o lançamento oficial deverá ocorrer no dia `->str}
    <Text.Span> "31/10/2021" </Text.Span>
    {j`. Deixe seu e-mail ao lado para ficar por dentro do desenvolvimento do curso e garantir seu cupom de desconto.`->str}
  </>
}

let partnerText = partner => {
  <>
    {j`Este será um curso vivo, onde os módulos serão lançados conforme o desenvolvimento.
    No momento, estamos trabalhando no primeiro módulo e o lançamento oficial deverá ocorrer no dia
    `->str}
    <Text.Span> "31/10/2021" </Text.Span>
    {j`. Já que você chegou aqui através da ${switch partner {
      | #"heart-conf" => `He4rt Conf.`
      | #"react-conf" => `React Conf.`
      | _ => ""
      }} você tem direito a um desconto especial de pré-lançamento. 
    Deixe seu e-mail ao lado para ficar por dentro do desenvolvimento do curso e garantir seu cupom de desconto.`->str}
  </>
}
