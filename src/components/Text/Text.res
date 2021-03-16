module Styles = Text_Styles

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
