open Reviews_Content
open Review_Styles
open Render

let variants = {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(~opacity=1.0, ~y=0, ~transition=transition(~delay=0.2, ~duration=0.6, ()), ()),
  }
}

@react.component
let make = () => {
  let (highlightsRef, isHighlightsView) = IntersectionObserver.useInView()
  let (studentsRef, isStudentsView) = IntersectionObserver.useInView()
  let controls = FramerMotion.useAnimation()
  let studentsControls = FramerMotion.useAnimation()

  React.useEffect1(() => {
    if isHighlightsView {
      controls.start(. #visible)
    }

    None
  }, [isHighlightsView])

  React.useEffect1(() => {
    if isStudentsView {
      studentsControls.start(. #visible)
    }

    None
  }, [isStudentsView])

  <div className=wrapper>
    <Title animate=#controlled(controls) initial=#hidden variants innerRef=highlightsRef>
      "Pessoas que acreditam no curso"
    </Title>
    <div className=reviews>
      {highlights->map((review, id) =>
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
    <h2 className=subtitle ref=studentsRef> {`Alunos da primeira versão do curso`->str} </h2>
    <div className=reviews>
      {studentReviews->map((review, id) =>
        <ReviewItem
          id
          isStudentReview=true
          controls=studentsControls
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
