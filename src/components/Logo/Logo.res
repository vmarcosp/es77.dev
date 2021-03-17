let logo = {
  open CssJs
  style(.[width(28.0->rem), Media.xs([display(#none)])])
}

let logoMinimal = {
  open CssJs
  style(.[width(16.2->rem), display(none), Media.xs([display(#block)])])
}

@react.component
let make = () => {
  <>
    <img
      className={logo} src="assets/white-logo.svg" alt="EcmaScript2077 | Incoming from the future"
    />
    <img
      className={logoMinimal}
      src="assets/logo-minimal.svg"
      alt="EcmaScript2077 | Incoming from the future"
    />
  </>
}
