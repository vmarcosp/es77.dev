// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var $$Text = require("../Text/Text.bs.js");
var React = require("react");
var Motion = require("../../bindings/FramerMotion/Motion.bs.js");
var Render = require("../../lib/Render.bs.js");
var FAQ_Styles = require("./FAQ_Styles.bs.js");

function variants(delay) {
  return {
          hidden: {
            opacity: 0.0,
            y: 20
          },
          visible: {
            opacity: 1.0,
            y: 0,
            transition: {
              duration: 0.6,
              delay: delay
            }
          }
        };
}

function FAQ_Item(Props) {
  var title = Props.title;
  var description = Props.description;
  var controls = Props.controls;
  var id = Props.id;
  var index = id;
  return React.createElement(Motion.Div.make, {
              className: FAQ_Styles.faqWrapper,
              initial: "hidden",
              variants: variants(index * 0.4),
              animate: {
                NAME: "controlled",
                VAL: controls
              },
              children: null
            }, React.createElement(Motion.H1.make, {
                  className: FAQ_Styles._title,
                  initial: "hidden",
                  variants: variants(index * 0.5),
                  animate: {
                    NAME: "controlled",
                    VAL: controls
                  },
                  children: Render.str(title)
                }), React.createElement($$Text.P.make, {
                  children: Render.str(description),
                  animate: {
                    NAME: "controlled",
                    VAL: controls
                  },
                  initial: "hidden",
                  variants: variants(index * 0.6)
                }));
}

var make = FAQ_Item;

exports.variants = variants;
exports.make = make;
/* Text Not a pure module */
