type t

@module external mixpanel: t = "mixpanel-browser"

@send external init: (t, string) => unit = "init"
@send external track: (t, string, option<{..}>) => unit = "track"
@val @scope(("process", "env")) external projectToken: option<string> = "NEXT_PUBLIC_MIXPANEL_TOKEN"

let track = (event, value) =>
  switch projectToken {
  | None => ()
  | Some(_) => mixpanel->track(event, value)
  }
