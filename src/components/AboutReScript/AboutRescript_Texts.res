open AboutReScript_Styles

@react.component
let make = () =>
  <div>
    <Title> {j`O que é ReScript?`} </Title>
    <p className=text>
      <Text> "ReScript" </Text>
      <Text.Span> " (anteriormente ReasonML) " </Text.Span>
      <Text>
        {j`é uma linguagem focada em React 
          e no ecossistema JavaScropt. Criada dentro do Facebook, a linguagem tem 
          como objetivo trazer uma síntaxe amigável aos desenvolvedores(as) JavaScript, 
          com um poderoso sistema de tipos e diversas features de programação funcional.`}
      </Text>
    </p>
    <p className=text>
      {j`Por compartilhar do mesmo criador do React, ReScript possui 
        diversas features pensadas do zero para integração com o mesmo, 
        contando inclusive com um ótimo suporte a JSX nativo no seu compilador.`->React.string}
    </p>
    <p className=text>
      {j`
        Além disso, a linguagem foi pensada desde o início em interoperar com 
        códigos e bibliotecas escritas em JavaScript. O que significa, que 
        qualquer biblioteca JavaScript, pode ser utilizada com ReScript. 
      `->React.string}
    </p>
  </div>
