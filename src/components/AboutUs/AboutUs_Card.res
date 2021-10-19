open AboutUs_Styles
module Icons = AboutUs_Icons

let variants = x => {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~x, ()),
    visible: variant(
      ~opacity=1.0,
      ~x=0,
      ~transition=transition(~delay=0.35, ~duration=0.6, ()),
      (),
    ),
  }
}

@react.component
let make = (~name, ~description, ~role, ~photo as src, ~github, ~telegram, ~twitter, ~initialX) => {
  let (innerRef, inView) = IntersectionObserver.useInView()
  let controls = FramerMotion.useAnimation()

  React.useEffect1(() => {
    if inView {
      controls.start(. #visible)
    }

    None
  }, [inView])

  let trackLinkClick = (url, _) => {
    Mixpanel.track(
      "Clicou no Link da Redes Sociais",
      Some({
        "URL da Rede Social": url,
      }),
    )
  }

  <Motion.Div
    innerRef
    animate=#controlled(controls)
    initial=#hidden
    variants={variants(initialX)}
    className=card>
    <div className=photo> <Next.Image src width="120" height="120" alt=name /> </div>
    <p className=title> {name->React.string} </p>
    <p className=subtitle> {role->React.string} </p>
    <div className=iconsWrapper>
      <a
        onClick={trackLinkClick(github)}
        target="_blank"
        rel="noopener noreferrer"
        ariaLabel="github"
        className=icon
        href=github>
        <Icons.Github />
      </a>
      <a
        onClick={trackLinkClick(telegram)}
        target="_blank"
        rel="noopener noreferrer"
        ariaLabel="telegram"
        className=icon
        href=telegram>
        <Icons.Telegram />
      </a>
      <a
        onClick={trackLinkClick(twitter)}
        target="_blank"
        rel="noopener noreferrer"
        ariaLabel="twitter "
        className=icon
        href=twitter>
        <Icons.Twitter />
      </a>
    </div>
    <Text.P> {description} </Text.P>
  </Motion.Div>
}
