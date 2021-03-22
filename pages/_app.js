import Head from "next/head";
import ReScriptApp from "../src/App.bs";

import "./css/prism-theme.css";

export default function App(props) {
  return (
    <>
      <Head>
        <title>
          Curso ES2077 - Aprenda programação funcional com React e ReScript ◭
        </title>
        <meta
          name="description"
          content="Aprenda de forma prática e descomplicada, diversos conceitos relacionados a programação funcional e como aplicá-los no seu dia a dia!"
        />
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
        <meta
          property="twitter:url"
          content="https://es2077.vercel.app/"
        />
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

      <ReScriptApp {...props} />
    </>
  );
}
