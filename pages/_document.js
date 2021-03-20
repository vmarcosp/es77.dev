import Document, { Html, Head, Main, NextScript } from "next/document";
import SEO, { JSONSchema } from "./seo";

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
            EcmaScript 2077 | Aprenda programação funcional e ReScript de
            maneira prática e descomplicada
          </title>
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
