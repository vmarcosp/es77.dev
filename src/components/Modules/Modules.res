open Ancestor.Default
open Render

@module("@emotion/css") external css: {..} => string = "css"

let roundedBorder = css({"borderRadius": "5px"})

module Tag = {
  @react.component
  let make = (~children) =>
    <Box
      mr=[xs(2)]
      className=roundedBorder
      bgColor=[xs(#hex("#181818"))]
      py=[xs(1)]
      px=[xs(2)]
      fontSize=[xs(1.4->#rem)]
      color=[xs(#hex("#fafafa"))]>
      {children->str}
    </Box>
}

module ModuleCard = {
  type modules = [#1 | #2 | #3 | #4 | #extra]
  @react.component
  let make = (~title, ~description, ~number, ~released, ~footer=?) => {
    let src = `/assets/${switch number {
      | #1 => `1.png`
      | #2 => `2.png`
      | #3 => `3.png`
      | #4 => `4.png`
      | #extra => `+.png`
      }}`

    <Box
      px=[xs(3)]
      height=[xs(100.0->#pct)]
      py=[xs(4)]
      className=roundedBorder
      bgColor=[xs(Theme.ColorsRaw.shape02->#hex)]
      position=[xs(#relative)]>
      <Box position=[xs(#absolute)] left=[xs(2.4->#rem)] top=[xs(3.2->#rem)] right=[xs(#zero)]>
        <Base
          width=[
            xs(
              switch number {
              | #1 => 3.2->#rem
              | _ => 5.6->#rem
              },
            ),
            md(
              switch number {
              | #1 => 6.4->#rem
              | _ => 11.0->#rem
              },
            ),
          ]
          tag=#img
          src
        />
      </Box>
      {switch released {
      | false =>
        <Box
          position=[xs(#absolute)]
          top=[xs(3.2->#rem)]
          right=[xs(-3.2->#rem)]
          tag=#span
          mr=[xs(2)]
          className=roundedBorder
          bgColor=[xs(#hex("#dbca03"))]
          py=[xs(1)]
          px=[xs(2)]
          fontSize=[xs(1.2->#rem)]
          fontWeight=[xs(#700)]
          color=[xs(#hex("#000000"))]>
          {`EM BREVE`->str}
        </Box>
      | true => React.null
      }}
      <Box ml=[md(11)] position=[xs(#relative)] zIndex=[xs(10)]>
        <Typography
          tag=#h2
          maxW=[
            xs(
              switch released {
              | true => 100.0->#pct
              | false => 156->#px
              },
            ),
            sm(100.0->#pct),
          ]
          ml=[xs(6), md(0)]
          m=[xs(0)]
          mb=[xs(2)]
          color=[xs(#hex("#fafafa"))]
          fontSize=[xs(2.4->#rem)]
          lineHeight=[xs(3.4->#rem)]
          fontWeight=[xs(#600)]>
          {title->str}
        </Typography>
        <Typography
          tag=#p
          m=[xs(0)]
          color=[xs(#hex("#cecece"))]
          fontSize=[xs(1.6->#rem)]
          lineHeight=[xs(2.6->#rem)]>
          {description->str}
        </Typography>
        <Box mt=[xs(2)] display=[xs(#flex)]>
          {switch footer {
          | Some(footer) => footer()
          | _ => React.null
          }}
        </Box>
      </Box>
    </Box>
  }
}

@react.component
let make = () => {
  <Box
    className={css({"fontFamily": Theme.fontFamily})}
    display=[xs(#flex)]
    justifyContent=[xs(#center)]
    pt=[xs(24)]
    px=[xs(4)]>
    <Box width=[xs(100.0->#pct)] maxW=[xs(Theme.Constants.maxWidth)]>
      <Title> {`Módulos do curso`} </Title>
      <Grid spacing=[xs(4)] justifyContent=[xs(#center)]>
        <Box columns=[lg(#6)]>
          <ModuleCard
            title=`Introdução ao ReScript`
            description=`Este módulo será a base para sua jornada em ReScript. Com ele, você irá aprender as principais features da linguagem e o funcionamento do tooling e ecossistema.`
            number=#1
            released=true
            footer={() => <> <Tag> {`10 aulas`} </Tag> <Tag> {`12h de conteúdo`} </Tag> </>}
          />
        </Box>
        <Box columns=[lg(#6)]>
          <ModuleCard
            title=`Programação Funcional`
            description=`Aqui vai algum textinho bem legal e tchópe super descritivo sobre o módulo do curso, rsrsrs mais algumas coisinhas e mais e mais e mais e mais um pouquin, quase acabando, deu bjs`
            number=#2
            released=false
            footer={() => <Tag> {`Aproxidamente 12h de conteúdo`} </Tag>}
          />
        </Box>
        <Box columns=[lg(#6)]>
          <ModuleCard
            title=`ReScript Avançado`
            description=`Aqui vai algum textinho bem legal e tchópe super descritivo sobre o módulo do curso, rsrsrs mais algumas coisinhas e mais e mais e mais e mais um pouquin, quase acabando, deu bjs`
            number=#3
            released=false
            footer={() => <Tag> {`Aproxidamente 12h de conteúdo`} </Tag>}
          />
        </Box>
        <Box columns=[lg(#6)]>
          <ModuleCard
            title=`Integrações com APIs`
            description=`Aqui vai algum textinho bem legal e tchópe super descritivo sobre o módulo do curso, rsrsrs mais algumas coisinhas e mais e mais e mais e mais um pouquin, quase acabando, deu bjs`
            number=#4
            released=false
            footer={() => <Tag> {`Aproxidamente 12h de conteúdo`} </Tag>}
          />
        </Box>
        <Box columns=[lg(#6)]>
          <ModuleCard
            title=`Conteúdo extras!`
            description=`Aqui vai algum textinho bem legal e tchópe super descritivo sobre o módulo do curso, rsrsrs mais algumas coisinhas e mais e mais e mais e mais um pouquin, quase acabando, deu bjs`
            number=#extra
            released=true
            footer={() => <Tag> {`Aproxidamente 12h de conteúdo`} </Tag>}
          />
        </Box>
      </Grid>
    </Box>
  </Box>
}
