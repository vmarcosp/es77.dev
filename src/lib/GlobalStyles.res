open CssJs

let addStyles = () => {
  global(.
    "html, body, #__next",
    [
      height(100.->pct),
      width(100.->pct),
      padding(zero),
      margin(zero),
      backgroundColor(Theme.Colors.black),
    ],
  )
  global(. "html", [fontSize(10->px), unsafe("scroll-behavior", "smooth")])
  global(.
    "*",
    [
      boxSizing(#borderBox),
      selection([color(Theme.Colors.purple), background(rgba(116, 58, 240, 10.0->#percent))]),
    ],
  )
}
