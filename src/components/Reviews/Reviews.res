open Reviews_Content
open Review_Styles

let variants = {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(~opacity=1.0, ~y=0, ~transition=transition(~delay=0.2, ~duration=0.6, ()), ()),
  }
}

@react.component
let make = () => {
  let (innerRef, inView) = IntersectionObserver.useInView()
  let controls = FramerMotion.useAnimation()

  React.useEffect1(() => {
    if inView {
      controls.start(. #visible)
    }

    None
  }, [inView])

  <div className=wrapper>
    <Title animate=#controlled(controls) initial=#hidden variants innerRef>
      "Pessoas que acreditam no curso"
    </Title>
    <div className=reviews>
      {highlights->Render.map((review, id) =>
        <ReviewItem
          id
          controls
          key={id->Render.toString}
          photo=review.photo
          name=review.name
          role=review.role
          description=review.description
        />
      )}
    </div>
  </div>
}
