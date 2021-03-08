open AboutUs_Styles

@react.component
let make = (~name, ~description, ~role, ~photo as src) => {
  <div className=card>
    <img src alt=name className=photo />
    <p className=title> {name->React.string} </p>
    <p className=subtitle> {role->React.string} </p>
    <Text.P> {description->React.string} </Text.P>
  </div>
}
