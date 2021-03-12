open Partners_Styles

module Logos = Partners_Logo

@react.component
let make = () => {
  <div className=wrapper>
    <Title> "Nossos parceiros" </Title>
    <div className=partners>
      <div className=partner> <Logos.Brainn /> <p> {`Brainn Co.`->React.string} </p> </div>
      <div className=partner> <Logos.ReasonBR /> <p> {`ReasonBR`->React.string} </p> </div>
      <div className=partner> <Logos.Brainn /> <p> {`Astrocoders`->React.string} </p> </div>
    </div>
  </div>
}
