import React from "react";
import { CourseJsonLd, ProductJsonLd } from "next-seo";

const JSONSchema = () => (
  <>
    <CourseJsonLd
      courseName="EcmaScript 2077"
      providerName="Gabriel Rubens e Marcos Oliveira"
      providerUrl="https://es2077.vercel.app"
      description="Aprenda programação funcional e ReScript do zero de forma prática e descomplicada!"
    />
    <ProductJsonLd
      courseName="EcmaScript 2077"
      images={[`https://es77.dev/assets/cover.png`]}
      description="Aprenda programação funcional e ReScript do zero de forma prática e descomplicada!"
      brand="EcmaScript 2077"
      reviews={[
        {
          author: {
            type: "Person",
            name: "Willian Justen",
          },
          datePublished: "2021-03-19T12:00:40Z",
          reviewBody:
            "Não existem pessoas mais experientes em ReScript no Brasil que o Marcos e Gabriel. Ambos são apaixonados por programação funcional e você consegue ver esse amor em cada explicação e trabalho que é feito por eles. Tendo trabalhado como instrutor por tantos anos, eu consigo ver claramente quem realmente tem paixão pelo ensino e didática de quem não tem, e posso afirmar que você vai aprender muito com os dois.",
          name: "Não existem pessoas mais experientes em ReScript no Brasil que o Marcos e Gabriel",
          reviewRating: {
            worstRating: "5",
            ratingValue: "5",
            worstRating: "5",
          },
        },
        {
          author: {
            type: "Person",
            name: "Fernando Daciuk",
          },
          datePublished: "2021-03-19T12:00:40Z",
          reviewBody:
            "Tive o prazer de trabalhar com o Marcos em projetos recentes, e é impossível não ver o brilho nos olhos quando ele está falando de Programação Funcional, JavaScript, React e Rescript. Esse curso é a sua oportunidade de aprender de verdade com quem entende do assunto.",
          name: "Aprenda com quem sabe de verdade",
          reviewRating: {
            bestRating: "5",
            ratingValue: "5",
            worstRating: "5",
          },
          publisher: {
            type: "Person",
            name: "Fernando Daciuk",
          },
        },
        ,
        {
          author: {
            type: "Person",
            name: "Vitor Mendrone",
          },
          datePublished: "2021-03-19T12:00:40Z",
          reviewBody:
            "Tive o prazer de trabalhar com o Marcos em projetos recentes, e é impossível não ver o brilho nos olhos quando ele está falando de Programação Funcional, JavaScript, React e Rescript. Esse curso é a sua oportunidade de aprender de verdade com quem entende do assunto.",
          name: "Ótima didática",
          reviewRating: {
            bestRating: "5",
            ratingValue: "5",
            worstRating: "1",
          },
          publisher: {
            type: "Person",
            name: "Vitor Mendrone",
          },
        },
        {
          author: {
            type: "Person",
            name: "Guilherme Decampo",
          },
          datePublished: "2021-03-19T12:00:40Z",
          reviewBody:
            "Nos últimos anos, o Gabriel tem liderado a adoção de ReScript na Astrocoders. Sem dúvidas, hoje ele é uma das principais referências que mais domina e conhece ReScript no Brasil. Tenho certeza que se você quer aprender ReScript, este é o melhor material de aprendizado disponível no mercado.",
          name: "Gabriel é uma refência de ReScript no Brasil",
          reviewRating: {
            bestRating: "5",
            ratingValue: "5",
            worstRating: "1",
          },
          publisher: {
            type: "Person",
            name: "Guilherme Decampo",
          },
        },
      ]}
      mpn="es2077"
      sku="es2077"
    />
  </>
);

export default JSONSchema;
