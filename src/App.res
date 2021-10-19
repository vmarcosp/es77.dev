GlobalStyles.addStyles()

type pageProps

module PageComponent = {
  type t = React.component<pageProps>
}

type props = {
  @as("Component")
  component: PageComponent.t,
  pageProps: pageProps,
}

switch Mixpanel.projectToken {
| None => ()
| Some(token) => Mixpanel.mixpanel->Mixpanel.init(token)
}

let default = (props: props): React.element => {
  let {component, pageProps} = props
  let content = React.createElement(component, pageProps)

  React.useEffect0(() => {
    Mixpanel.track("Acessou o Site", None)
    None
  })

  content
}
