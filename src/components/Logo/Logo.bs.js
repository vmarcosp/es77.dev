// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var CssJs = require("bs-css-emotion/src/CssJs.bs.js");
var Media = require("../../lib/Media.bs.js");
var React = require("react");
var $$Image = require("next/image").default;

var logo = CssJs.style([Media.xs([CssJs.display("none")])]);

var logoMinimal = CssJs.style([
      CssJs.display(CssJs.none),
      Media.xs([CssJs.display("block")])
    ]);

function Logo(Props) {
  return React.createElement(React.Fragment, undefined, React.createElement("div", {
                  className: logo
                }, React.createElement($$Image, {
                      src: "/assets/white-logo.svg",
                      width: "260",
                      height: "56",
                      alt: "EcmaScript2077 | Incoming from the future"
                    })), React.createElement("div", {
                  className: logoMinimal
                }, React.createElement($$Image, {
                      src: "/assets/logo-minimal.svg",
                      width: "160",
                      height: "32",
                      alt: "EcmaScript2077 | Incoming from the future"
                    })));
}

var make = Logo;

exports.logo = logo;
exports.logoMinimal = logoMinimal;
exports.make = make;
/* logo Not a pure module */
