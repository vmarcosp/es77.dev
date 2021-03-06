open AboutReScript_Styles

module SnippetExample = AboutRescript_Snippet
module Texts = AboutRescript_Texts

@react.component
let make = () => {
  let (containerRef, inView) = IntersectionObserver.useInView()
  let (showSnippets, setShowSnippets) = React.useState(_ => false)
  let controls = FramerMotion.useAnimation()

  React.useEffect1(() => {
    if inView {
      controls.start(. #visible)
      setShowSnippets(_ => true)
    }

    None
  }, [inView])

  <Animated.FadeIn y={(0, -20)} delay=0.35 duration=0.6 controls={controls}>
    <div id="o-que-e-rescript" ref=containerRef className=wrapper>
      <SnippetExample showSnippets /> <div className=content> <Texts /> </div> //<a className=button> <span> {"Saiba mais"->React.string} </span> </a>
    </div>
  </Animated.FadeIn>
}
