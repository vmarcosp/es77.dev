type tag = [#p | #span | #fragment]

@react.component
let make = (~children, ~tag=#fragment) => {
  let text = children->React.string

  switch tag {
  | #p => <p> text </p>
  | #span => <span> text </span>
  | #fragment => <> text </>
  }
}
