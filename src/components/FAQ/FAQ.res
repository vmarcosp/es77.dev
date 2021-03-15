open FAQ_Styles
open FAQ_Content
open Render

module FAQItem = FAQ_Item

let variants = {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(~opacity=1.0, ~y=0, ~transition=transition(~delay=0.2, ~duration=0.6, ()), ()),
  }
}

@react.component
let make = () => {
  let (highlightsRef, inView) = IntersectionObserver.useInView()
  let controls = FramerMotion.useAnimation()

  React.useEffect1(() => {
    if inView {
      controls.start(. #visible)
    }

    None
  }, [inView])

  <div className=wrapper>
    <Title animate=#controlled(controls) initial=#hidden variants innerRef=highlightsRef>
      "FAQ"
    </Title>
    <Motion.Div className=listWrapper>
      {items->map((item, id) => {
        <FAQItem id controls key={id->toString} title=item.title description=item.description />
      })}
    </Motion.Div>
  </div>
}
