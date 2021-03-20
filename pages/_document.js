import Document, { Html, Head, Main, NextScript } from "next/document";
import JSONSchema from "./seo";

class AppDocument extends Document {
  static async getInitialProps(ctx) {
    const initialProps = await Document.getInitialProps(ctx);
    return { ...initialProps };
  }

  render() {
    return (
      <Html lang="pt-br">
        <Head>
          <title>
            ES2077 | Aprenda programação funcional com React e ReScript
          </title>
          <meta
            name="description"
            content="Aprenda de forma prática e descomplicada, diversos conceitos relacionados a programação funcional e como aplicá-los no seu dia a dia!"
          />
          <meta property="og:url" content="https://es2077-site.vercel.app/" />
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
          <meta property="twitter:domain" content="es2077-site.vercel.app/" />
          <meta
            property="twitter:url"
            content="https://es2077-site.vercel.app/"
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
            content="https://es2077-site.vercel.app/assets/cover.png"
          />
          <link rel="preconnect" href="https://fonts.gstatic.com" />
          <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap"
            rel="stylesheet"
          />
          <link
            href="https://fonts.googleapis.com/css2?family=Fira+Code&display=swap"
            rel="stylesheet"
          />
        </Head>
        <SEO />
        <body>
          <Main />
          <NextScript />
          <JSONSchema />
        </body>
      </Html>
    );
  }
}

export default AppDocument;
