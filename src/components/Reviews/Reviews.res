open Reviews_Content
open Review_Styles

@react.component
let make = () => {
  <div className=wrapper>
    <Title> "Pessoas que acreditam no curso" </Title>
    <Slick dots=true slidesToShow=2>
      {highlights->Render.map((review, id) =>
        <ReviewCard
          key={id->Render.toString}
          photo=review.photo
          name=review.name
          role=review.role
          description=review.description
        />
      )}
    </Slick>
  </div>
}
