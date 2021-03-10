open AboutReScript_Styles

module Snippet = {
  @react.component @module("./Snippet.js")
  external make: (~showSnippets: bool) => React.element = "Snippet"
}

let link = "https://rescript-lang.org/try?code=AIJwpghgxgLgdFA9gWwA6IHZgzAUAGzBgAJkIBrMYgXmIAoBKGgPmIG9djjCS6BnABaIA7gBpifIgGUhwprQBKkWHACukqTAgwwdAPotiAMwj5JDTsQA8AEwCWAN2aWAkNdTO3XdoJHEA-MRK0PB8MCB2GADmdABEABJg+PiIAISxTABcQcrwGKrJAL6WXFYA9B64XtYARqowMJjEmADC+HZQ5NRsBtSskjAyIvqGqb5yhZ7e7MEqYRHRcW0d5MQCYOAZxdXldQ2YzqVl9k64hUA"

let variants = {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(
      ~opacity=1.0,
      ~y=0,
      ~transition=transition(~delay=0.35, ~duration=0.6, ()),
      (),
    ),
  }
}

@react.component
let make = () => {
  let (innerRef, inView) = IntersectionObserver.useInView()
  let (showSnippets, setShowSnippets) = React.useState(_ => false)
  let controls = FramerMotion.useAnimation()

  React.useEffect1(() => {
    if inView {
      controls.start(. #visible)
      setShowSnippets(_ => true)
    }

    None
  }, [inView])

  <Motion.Div
    innerRef initial=#hidden animate=#controlled(controls) variants className=snippetWrapper>
    <Snippet showSnippets />
    <a href=link target="_blank" className=playgroundLink>
      {"Abrir no playground"->React.string}
    </a>
  </Motion.Div>
}
