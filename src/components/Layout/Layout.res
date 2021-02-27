module S = {
  open CssJs
  let wrapper = style(.[padding2(~h=15.0->rem, ~v=5.6->rem)])
}
@react.component
let make = (~children) => <div className=S.wrapper> {children} </div>
