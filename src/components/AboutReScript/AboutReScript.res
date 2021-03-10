open AboutReScript_Styles

module SnippetExample = AboutRescript_Snippet
module Texts = AboutRescript_Texts

let variants = {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(
      ~opacity=1.0,
      ~y=0,
      ~transition=transition(~delay=0.35, ~duration=0.6, ()),
      (),
    ),
  }
}

@react.component
let make = () => {
  <section id="o-que-e-rescript" className=wrapper>
    <SnippetExample /> <div className=content> <Texts /> </div>
  </section>
}
