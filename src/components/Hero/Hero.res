open Hero_Styles

module Content = Hero_Content

module Symbol = {
  @react.component @module("./Animated")
  external make: unit => React.element = "Symbol"
}

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

  Hooks.useMount(() => controls.start(. #visible))

  <section className=wrapper>
    <div className=symbolWrapper> <Symbol /> </div>
    <Motion.H1
      initial=#hidden animate=#controlled(controls) variants={variants(1.75)} className=text>
      {Content.heroText}
    </Motion.H1>
    <Motion.A
      initial=#hidden
      animate=#controlled(controls)
      variants={variants(2.0)}
      href="#garanta-sua-vaga"
      className=button>
      {"GARANTA SUA VAGA"->React.string}
    </Motion.A>
  </section>
}
