open Render
open Ancestor.Default

module Styles = {
  open CssJs

  let wrapper = style(. [
    display(#flex),
    justifyContent(#spaceBetween),
    alignItems(#center),
    Media.xs([
      padding2(~v=zero, ~h=3.2->rem),
      margin4(~top=17.2->rem, ~bottom=zero, ~left=auto, ~right=auto),
      flexDirection(#column),
    ]),
    Media.sm([
      margin4(~top=22.4->rem, ~bottom=zero, ~left=auto, ~right=auto),
      padding2(~v=zero, ~h=4.6->rem),
      flexDirection(#column),
    ]),
    Media.md([
      maxWidth(Theme.Constants.maxWidth),
      margin4(~top=23.4->rem, ~bottom=0.0->rem, ~left=auto, ~right=auto),
      padding2(~v=zero, ~h=4.6->rem),
      flexDirection(#column),
    ]),
    Media.xl([padding2(~v=zero, ~h=5.6->rem), flexDirection(#row)]),
    Media.xxl([padding2(~v=zero, ~h=zero)]),
  ])

  let textWrapper = style(. [
    Media.xs([marginBottom(5.6->rem)]),
    Media.sm([marginBottom(5.6->rem)]),
    Media.md([flexBasis(50.0->pct)]),
  ])

  let card = style(. [
    borderRadius(5->px),
    padding(4.0->rem),
    width(41.6->rem),
    display(#flex),
    flexDirection(#column),
    alignItems(#center),
    background(Theme.Colors.darkGradient),
  ])

  let price = style(. [
    margin(zero),
    fontSize(4.8->rem),
    fontWeight(#bold),
    color(Theme.Colors.white),
    fontFamily(Theme.fontFamily->#custom),
  ])

  let originalPrice = style(. [
    margin(zero),
    fontSize(2.4->rem),
    fontWeight(#num(600)),
    color(#hex("615378")),
    selector("> span", [textDecoration(#lineThrough), textDecorationColor(#hex("8A7AA4"))]),
    fontFamily(Theme.fontFamily->#custom),
  ])

  let divider = style(. [
    height(1->px),
    width(100.0->pct),
    margin2(~v=2.4->rem, ~h=zero),
    backgroundColor(#hex("2E1829")),
  ])

  let items = style(. [
    alignSelf(#center),
    margin(zero),
    padding(zero),
    listStyleType(#none),
    display(#flex),
    flexDirection(#column),
    selector(
      "> li",
      [
        display(#flex),
        alignItems(#center),
        fontFamily(Theme.fontFamily->#custom),
        color(Theme.Colors.white),
        fontSize(1.8->rem),
        marginBottom(1.6->rem),
        selector("> img", [display(block), marginRight(1.6->rem)]),
      ],
    ),
  ])

  let button = style(. [
    textDecoration(none),
    display(#flex),
    justifyContent(#center),
    cursor(pointer),
    marginTop(2.4->rem),
    padding2(~v=1.2->rem, ~h=zero),
    borderStyle(#none),
    outlineStyle(#none),
    backgroundColor(Theme.Colors.purple),
    color(Theme.Colors.white),
    borderRadius(6->px),
    width(100.0->pct),
    fontSize(1.8->rem),
    fontFamily(Theme.fontFamily->#custom),
    transition(~duration=300, "background"),
    hover([
      transition(~duration=300, "background"),
      background(Polished.Color.darken(Theme.ColorsRaw.purple, ~amount=0.05)->Theme.Colors.toBsHex),
    ]),
  ])
}

let items = [
  `Acesso vitalício`,
  `Acesso ao discord dos alunos`,
  `Suporte dos instrutores`,
  `Conteúdos extras`,
]

@react.component
let make = () => {
  <div id="garantir-vaga" className=Styles.wrapper>
    <div className=Styles.textWrapper>
      <Title icon=#lighting> {`Garanta sua vaga!`} </Title>
      <Text.P>
        {`Este será um curso vivo, onde os módulos serão lançados conforme o desenvolvimento. 
          No entanto, você já pode adquirir o curso, com os três primeiros módulos já disponíveis.
          O acesso ao curso é vitalício e conta com um suporte direto dos instrutores.
        `->str}
      </Text.P>
    </div>
    <div className=Styles.card>
      <p className=Styles.originalPrice>
        {`De `->str} <span> {`R$ 720,00`->str} </span> {`  por`->str}
      </p>
      <p className=Styles.price> {`598,00`->str} </p>
      <div className=Styles.divider />
      <ul className=Styles.items>
        {items->map((item, key) => {
          <li key={key->Js.Int.toString}> <img src="assets/check-icon.svg" /> {item->str} </li>
        })}
      </ul>
      <Base
        onClick={_ => Mixpanel.track("Clicou no Botão para Comprar", None)}
        tag=#a
        target="_blank"
        href="https://hotmart.com/product/es77/R59895080O"
        className=Styles.button>
        {`Garantir minha vaga`->str}
      </Base>
    </div>
  </div>
}
