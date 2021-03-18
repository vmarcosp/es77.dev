open CssJs

let wrapper = style(.[
  maxWidth(Theme.Constants.maxWidth),
  display(#flex),
  justifyContent(#center),
  alignItems(#center),
  flexDirection(column),
  Media.xs([
    margin4(~top=17.2->rem, ~bottom=zero, ~left=auto, ~right=auto),
    padding2(~v=zero, ~h=3.2->rem),
    after([display(#none)]),
  ]),
  Media.sm([
    maxWidth(Theme.Constants.maxWidth),
    margin4(~top=22.4->rem, ~bottom=zero, ~left=auto, ~right=auto),
    padding2(~v=zero, ~h=4.6->rem),
    after([display(#none)]),
  ]),
  Media.md([
    margin4(~top=27.2->rem, ~bottom=0.0->rem, ~left=auto, ~right=auto),
    padding2(~v=zero, ~h=4.6->rem),
  ]),
  Media.lg([after([display(#block)])]),
  Media.xl([margin4(~top=32.4->rem, ~bottom=zero, ~left=auto, ~right=auto)]),
])

let link = style(.[cursor(pointer), textDecoration(none)])

let partner = style(.[
  display(#flex),
  justifyContent(#center),
  alignItems(#center),
  flexDirection(column),
  borderRadius(6->px),
  transition(~duration=400, "background"),
  position(relative),
  selector("svg, img", [width(9.6->rem)]),
  selector("img", [transitionDuration(400), unsafe("filter", "contrast(0.5%)")]),
  selector("path", [transition(~duration=400, "fill")]),
  hover([
    Media.lg([background("0f0f0f"->hex)]),
    transition(~duration=400, "background"),
    selector("path", [unsafe("fill", "#ffffff"), transition(~duration=400, "fill")]),
    selector("p", [transition(~duration=400, "color"), color(Theme.Colors.white)]),
    selector("img", [transitionDuration(400), unsafe("filter", "brightness(5.5)")]),
  ]),
  selector(
    "p",
    [
      Media.xs([display(none)]),
      Media.sm([display(none)]),
      Media.lg([
        display(block),
        transition(~duration=400, "color"),
        position(absolute),
        bottom(4.0->rem),
        left(50.0->pct),
        transform(translateX(-50.0->pct)),
        fontFamily(Theme.fontFamily->#custom),
        fontWeight(700->#num),
        fontSize(2.4->rem),
        color(transparent),
      ]),
    ],
  ),
  Media.xs([
    minHeight(18.0->rem),
    width(100.0->pct),
    bottom(zero),
    marginTop(zero),
    transition(~duration=400, "background"),
    selector("svg, img", [width(7.2->rem)]),
    marginBottom(3.2->rem),
  ]),
  Media.sm([selector("svg, img", [width(7.2->rem)]), minHeight(22.4->rem)]),
  Media.md([width(100.0->pct), padding(5.2->rem)]),
  Media.lg([padding(11.8->rem), selector("svg, img", [width(7.6->rem)])]),
  Media.xl([padding(11.8->rem), selector("svg, img", [width(9.2->rem)])]),
])

let partners = style(.[
  width(100.0->pct),
  display(#flex),
  marginTop(5.2->rem),
  Media.xs([flexDirection(column)]),
  Media.sm([flexDirection(column)]),
  Media.md([flexDirection(row), justifyContent(spaceBetween)]),
])
