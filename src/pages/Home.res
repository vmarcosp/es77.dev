let desktopContainer = {
  open CssJs
  style(.[display(#none), Media.xl([display(block)])])
}
let default = () => {
  <Layout>
    <Header />
    <Hero />
    <AboutReScript />
    <About />
    <AboutUs />
    <Releasing />
    <div className=desktopContainer> <Reviews /> <Partners /> <FAQ /> <Footer /> </div>
  </Layout>
}
