module S = {
  open CssJs
  let logo = style(.[width(30.0->rem)])
}
@react.component
let make = () =>
  <img
    className={S.logo} src="assets/white-logo.svg" alt="EcmaScript2077 | Incoming from the future"
  />
