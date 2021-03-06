open AboutReScript_Styles

module Snippet = {
  @react.component @module("./Snippet.js")
  external make: (~showSnippets: bool) => React.element = "Snippet"
}

let link = "https://rescript-lang.org/try?code=AIJwpghgxgLgdFA9gWwA6IHZgzAUAGzBgAJkIBrMYgXmIAoBKGgPmIG9djjCS6BnABaIA7gBpifIgGUhwprQBKkWHACukqTAgwwdAPotiAMwj5JDTsQA8AEwCWAN2aWAkNdTO3XdoJHEA-MRK0PB8MCB2GADmdABEABJg+PiIAISxTABcQcrwGKrJAL6WXFYA9B64XtYARqowMJjEmADC+HZQ5NRsBtSskjAyIvqGqb5yhZ7e7MEqYRHRcW0d5MQCYOAZxdXldQ2YzqVl9k64hUA"

@react.component
let make = (~showSnippets) => {
  <div className=snippetWrapper>
    <Snippet showSnippets />
    <a href=link target="_blank" className=playgroundLink>
      {"Abrir no playground"->React.string}
    </a>
  </div>
}
