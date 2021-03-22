// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var $$Text = require("../Text/Text.bs.js");
var Title = require("../Title/Title.bs.js");
var React = require("react");
var About_Styles = require("./About_Styles.bs.js");
var FramerMotion = require("framer-motion");
var About_Concepts = require("./About_Concepts.bs.js");
var ReactIntersectionObserver = require("react-intersection-observer");

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

function About(Props) {
  var controls = FramerMotion.useAnimation();
  var match = ReactIntersectionObserver.useInView();
  var inView = match[1];
  React.useEffect((function () {
          if (inView) {
            controls.start("visible");
          }
          
        }), [inView]);
  return React.createElement("section", {
              className: About_Styles.wrapper,
              id: "sobre-o-curso"
            }, React.createElement(Title.make, {
                  children: "Sobre o curso",
                  innerRef: match[0],
                  animate: {
                    NAME: "controlled",
                    VAL: controls
                  },
                  initial: "hidden",
                  variants: variants(0.2)
                }), React.createElement($$Text.P.make, {
                  children: "\n        O objetivo do curso é te ensinar do zero, como desenvolver aplicações com ReScript, \n        utilizando React, bibliotecas JavaScript e outras ferramentas do próprio ecossistema ReScript. \n        Além disso, você irá aprender de forma prática e descomplicada, \n        vários conceitos de programação funcional e como aplicar esses conceitos no desenvolvimento de aplicações reais. \n        Além dos módulos e o conteúdo do curso, você terá acesso total ao suporte dos instrutores, discord e telegram\n        oficial do curso, podendo entrar em contato para tirar dúvidas sempre que necessário.\n      ",
                  animate: {
                    NAME: "controlled",
                    VAL: controls
                  },
                  initial: "hidden",
                  variants: variants(0.4)
                }), React.createElement(About_Concepts.make, {}));
}

var Concepts;

var make = About;

exports.Concepts = Concepts;
exports.variants = variants;
exports.make = make;
/* Text Not a pure module */
