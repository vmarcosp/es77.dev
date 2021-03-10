module Styles = Text_Styles

type tag = [#p | #span | #fragment]

@react.component
let make = (~children) => {
  <> {children->React.string} </>
}

module Span = {
  @react.component
  let make = (~children, ~className=?) => <span ?className> {children->React.string} </span>
}

module P = {
  @react.component
  let make = (~children, ~className="", ~animate=?, ~initial=?, ~variants=?) =>
    <Motion.P ?animate ?initial ?variants className={j`${Styles.paragraph} ${className}`}>
      {children}
    </Motion.P>
}
