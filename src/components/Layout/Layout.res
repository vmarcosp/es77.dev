module S = {
  open CssJs
  let wrapper = style(.[])
}
@react.component
let make = (~children) => <div className=S.wrapper> {children} </div>
