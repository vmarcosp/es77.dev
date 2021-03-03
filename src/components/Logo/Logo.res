let logo = {
  open CssJs
  style(.[width(28.0->rem)])
}

@react.component
let make = () =>
  <img
    className={logo} src="assets/white-logo.svg" alt="EcmaScript2077 | Incoming from the future"
  />
