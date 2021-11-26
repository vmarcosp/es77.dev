import Head from "next/head";
import ReScriptApp from "../src/App.bs";
import { CourseJsonLd, ProductJsonLd, SocialProfileJsonLd } from "next-seo";

import "./css/prism-theme.css";

export default function App(props) {
  return (
    <>
      <Head>
        <title>
          Curso ES2077 - Aprenda programação funcional com React e ReScript ◭
        </title>
        <meta name="facebook-domain-verification" content="lmawh5bqbh3i70n9yok2yyjkqbcs14" />
        <meta
          name="description"
          content="Aprenda de forma prática e descomplicada, diversos conceitos relacionados a programação funcional e como aplicá-los no seu dia a dia!"
        />
        <meta name="image" content="https://es77.dev/assets/cover.png" />

        <meta property="og:url" content="https://es2077.vercel.app/" />
        <meta property="og:type" content="website" />
        <meta
          property="og:title"
          content="ES2077 | Aprenda programação funcional com React e ReScript"
        />
        <meta
          property="og:description"
          content="Aprenda de forma prática e descomplicada, diversos conceitos relacionados a programação funcional e como aplicá-los no seu dia a dia!"
        />
        <meta
          property="og:image"
          content="https://es2077-site.vercel.app/assets/cover.png/"
        />
        <meta name="twitter:card" content="summary_large_image" />
        <meta property="twitter:domain" content="es2077.vercel.app/" />
        <meta property="twitter:url" content="https://es2077.vercel.app/" />
        <meta
          name="twitter:title"
          content="ES2077 | Aprenda programação funcional com React e ReScript"
        />
        <meta
          name="twitter:description"
          content="Aprenda de forma prática e descomplicada, diversos conceitos relacionados a programação funcional e como aplicá-los no seu dia a dia!"
        />
        <meta
          name="twitter:image"
          content="https://es77.dev/assets/cover.png"
        />
      </Head>
      <CourseJsonLd
        courseName="EcmaScript 2077"
        providerName="Gabriel Rubens e Marcos Oliveira"
        providerUrl="https://es2077.vercel.app"
        description="Aprenda programação funcional e ReScript do zero de forma prática e descomplicada!"
      />
      <ProductJsonLd
        productName="EcmaScript 2077"
        images={[`https://es77.dev/assets/cover.png`]}
        description="Aprenda programação funcional e ReScript do zero de forma prática e descomplicada!"
        brand="EcmaScript 2077"
        aggregateRating={{
          ratingValue: "5",
          reviewCount: "4",
        }}
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
            publisher: {
              type: "Person",
              name: "Willian Justen",
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
      <SocialProfileJsonLd
        type="Person"
        name="Marcos Oliveira"
        url="https://es77.dev"
        sameAs={[
          "https://twitter.com/vmaarcosp",
          "https://github.com/vmarcosp",
        ]}
      />
      <SocialProfileJsonLd
        type="Person"
        name="Gabriel Rubens"
        url="https://es77.dev"
        sameAs={[
          "https://twitter.com/fakenickels",
          "https://github.com/fakenickels",
        ]}
      />

      <ReScriptApp {...props} />

        <script
          dangerouslySetInnerHTML={{
            __html: `
    !function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window, document,'script',
'https://connect.facebook.net/en_US/fbevents.js');fbq('init', '446955093453188'); fbq('track', 'PageView');`,
          }}
        />
    </>
  );
}
