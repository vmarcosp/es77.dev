import React from "react";
import { NextSeo, CourseJsonLd, ProductJsonLd } from "next-seo";

const JSONSchema = () => (
  <>
    <CourseJsonLd
      courseName="EcmaScript 2077"
      providerName="Gabriel Rubens e Marcos Oliveira"
      providerUrl="https://es2077.dev/"
      description="Aprenda programação funcional e ReScript do zero de forma prática e descomplicada!"
    />
    <ProductJsonLd
      courseName="EcmaScript 2077"
      images={["https://es2077-site.vercel.app/assets/cover.png"]}
      description="Aprenda programação funcional e ReScript do zero de forma prática e descomplicada!"
      brand="EcmaScript 2077"
      reviews={[
        {
          author: {
            type: "Person",
            name: "Fernando Daciuk",
          },
          datePublished: "2021-03-19T12:00:40Z",
          reviewBody:
            "Tive o prazer de trabalhar com o Marcos em projetos recentes, e é impossível não ver o brilho nos olhos quando ele está falando de Programação Funcional, JavaScript, React e Rescript. Esse curso é a sua oportunidade de aprender de verdade com quem entende do assunto.",
          name: "Aprenda com quem sabe de verdade!",
          reviewRating: {
            bestRating: "5",
            ratingValue: "5",
            worstRating: "1",
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

const SEO = () => (
  <NextSeo
    title="EcmaScript 2077 | Aprenda programação funcional e ReScript de uma forma prática e descomplicada!"
    description="Aprenda de forma prática e descomplicada, diversos conceitos relacionados a programação funcional e como aplicá-los no seu dia a dia."
    canonical="https://es2077.dev/"
    openGraph={{
      url: "https://es2077.dev/",
      title:
        "EcmaScript 2077 | Aprenda programação funcional e ReScript de uma forma prática e descomplicada!",
      description:
        "Aprenda de forma prática e descomplicada, diversos conceitos relacionados a programação funcional e como aplicá-los no seu dia a dia.",
      images: [{ url: "https://es2077-site.vercel.app/assets/cover.png" }],
      site_name: "EcmaScript 2077",
      locale: "pt_BR",
    }}
    twitter={{
      handle: "@vmaarcosp",
      site: "@site",
      cardType: "summary_large_image",
    }}
  />
);

export { JSONSchema };

export default SEO;
