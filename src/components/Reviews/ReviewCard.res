open Review_Styles

@react.component
let make = (~photo as maybePhoto, ~name, ~role, ~description) => {
  <div className=card>
    <div className=cardHeader>
      {switch maybePhoto {
      | Some(photo) => <img className=_photo src=photo />
      | None => React.null
      }}
      <div>
        <h3 className=_name> {name->React.string} </h3>
        <p className=_role> {role->React.string} </p>
      </div>
    </div>
    <Text.P className=_description> {description->React.string} </Text.P>
  </div>
}
