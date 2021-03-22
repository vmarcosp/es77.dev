// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CssJs = require("bs-css-emotion/src/CssJs.bs.js");
var Media = require("../../lib/Media.bs.js");
var Theme = require("../../lib/Theme.bs.js");

var wrapper = CssJs.style([
      CssJs.maxWidth(Theme.Constants.maxWidth),
      CssJs.display("flex"),
      CssJs.justifyContent("center"),
      CssJs.alignItems("center"),
      CssJs.flexDirection(CssJs.column),
      Media.xs([
            CssJs.margin4(CssJs.rem(17.2), CssJs.auto, CssJs.zero, CssJs.auto),
            CssJs.padding2(CssJs.zero, CssJs.rem(3.2)),
            CssJs.after([CssJs.display("none")])
          ]),
      Media.sm([
            CssJs.maxWidth(Theme.Constants.maxWidth),
            CssJs.margin4(CssJs.rem(22.4), CssJs.auto, CssJs.zero, CssJs.auto),
            CssJs.padding2(CssJs.zero, CssJs.rem(4.6)),
            CssJs.after([CssJs.display("none")])
          ]),
      Media.md([
            CssJs.margin4(CssJs.rem(23.4), CssJs.auto, CssJs.rem(0.0), CssJs.auto),
            CssJs.padding2(CssJs.zero, CssJs.rem(4.6))
          ]),
      Media.lg([CssJs.after([CssJs.display("block")])])
    ]);

var link = CssJs.style([
      CssJs.cursor(CssJs.pointer),
      CssJs.textDecoration(CssJs.none)
    ]);

var partner = CssJs.style([
      CssJs.display("flex"),
      CssJs.justifyContent("center"),
      CssJs.alignItems("center"),
      CssJs.flexDirection(CssJs.column),
      CssJs.borderRadius(CssJs.px(6)),
      CssJs.transition(400, undefined, undefined, "background"),
      CssJs.position(CssJs.relative),
      CssJs.selector("svg, img", [CssJs.width(CssJs.rem(9.6))]),
      CssJs.selector("img", [
            CssJs.transitionDuration(400),
            CssJs.unsafe("filter", "contrast(0.5%)")
          ]),
      CssJs.selector("path", [CssJs.transition(400, undefined, undefined, "fill")]),
      CssJs.hover([
            CssJs.transition(400, undefined, undefined, "background"),
            CssJs.selector("path", [
                  CssJs.unsafe("fill", "#ffffff"),
                  CssJs.transition(400, undefined, undefined, "fill")
                ]),
            CssJs.selector("> .reasonbr path", [
                  CssJs.unsafe("fill", "#DD1350"),
                  CssJs.transition(400, undefined, undefined, "fill")
                ]),
            CssJs.selector("p", [
                  CssJs.transition(400, undefined, undefined, "color"),
                  CssJs.color(Theme.Colors.white)
                ]),
            CssJs.selector("img", [
                  CssJs.transitionDuration(400),
                  CssJs.unsafe("filter", "none")
                ])
          ]),
      CssJs.selector("p", [
            Media.xs([CssJs.display(CssJs.none)]),
            Media.sm([CssJs.display(CssJs.none)]),
            Media.lg([
                  CssJs.display(CssJs.block),
                  CssJs.transition(400, undefined, undefined, "color"),
                  CssJs.position(CssJs.absolute),
                  CssJs.bottom(CssJs.rem(4.0)),
                  CssJs.left(CssJs.pct(50.0)),
                  CssJs.transform(CssJs.translateX(CssJs.pct(-50.0))),
                  CssJs.fontFamily({
                        NAME: "custom",
                        VAL: Theme.fontFamily
                      }),
                  CssJs.fontWeight({
                        NAME: "num",
                        VAL: 700
                      }),
                  CssJs.fontSize(CssJs.rem(2.4)),
                  CssJs.color(CssJs.transparent)
                ])
          ]),
      Media.xs([
            CssJs.minHeight(CssJs.rem(18.0)),
            CssJs.width(CssJs.pct(100.0)),
            CssJs.bottom(CssJs.zero),
            CssJs.marginTop(CssJs.zero),
            CssJs.transition(400, undefined, undefined, "background"),
            CssJs.selector("svg, img", [CssJs.width(CssJs.rem(7.2))]),
            CssJs.marginBottom(CssJs.rem(3.2))
          ]),
      Media.sm([
            CssJs.selector("svg, img", [CssJs.width(CssJs.rem(7.2))]),
            CssJs.minHeight(CssJs.rem(22.4))
          ]),
      Media.md([
            CssJs.width(CssJs.pct(100.0)),
            CssJs.padding(CssJs.rem(5.2))
          ]),
      Media.lg([
            CssJs.padding(CssJs.rem(11.8)),
            CssJs.selector("svg, img", [CssJs.width(CssJs.rem(7.6))])
          ]),
      Media.xl([
            CssJs.padding(CssJs.rem(11.8)),
            CssJs.selector("svg, img", [CssJs.width(CssJs.rem(9.2))])
          ])
    ]);

var partners = CssJs.style([
      CssJs.width(CssJs.pct(100.0)),
      CssJs.display("flex"),
      Media.xs([CssJs.flexDirection(CssJs.column)]),
      Media.sm([CssJs.flexDirection(CssJs.column)]),
      Media.md([
            CssJs.flexDirection(CssJs.row),
            CssJs.justifyContent(CssJs.spaceBetween)
          ])
    ]);

exports.wrapper = wrapper;
exports.link = link;
exports.partner = partner;
exports.partners = partners;
/* wrapper Not a pure module */
