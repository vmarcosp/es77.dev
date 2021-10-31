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
  type modules = [#1 | #2 | #3 | #4 | #5 | #extra]
  @react.component
  let make = (~title, ~description, ~number, ~released, ~footer=?) => {
    let src = `/assets/${switch number {
      | #1 => `1.png`
      | #2 => `2.png`
      | #3 => `3.png`
      | #4 => `4.png`
      | #5 => `5.png`
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
      <Box
        display=[xs(#flex)]
        flexDirection=[xs(#column)]
        ml=[md(11)]
        position=[xs(#relative)]
        zIndex=[xs(10)]>
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
          flexGrow=[xs(#num(3.0))]
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
    pt=[xs(20), md(22), lg(24)]
    px=[xs(4), md(6)]>
    <Box width=[xs(100.0->#pct)] maxW=[xs(Theme.Constants.maxWidth)]>
      <Title> {`Módulos do curso`} </Title>
      <Grid spacing=[xs(4)] justifyContent=[xs(#center)]>
        <Box columns=[lg(#6)]>
          <ModuleCard
            title=`Introdução ao ReScript`
            description=`Este módulo será a base para sua jornada com ReScript. Com ele, você irá aprender as principais features da linguagem e o ecossistema.`
            number=#1
            released=true
            footer={() => <> <Tag> {`15 aulas`} </Tag> <Tag> {`12h de conteúdo`} </Tag> </>}
          />
        </Box>
        <Box columns=[lg(#6)]>
          <ModuleCard
            title=`Programação Funcional`
            description={`Neste módulo, você irá aprender diversas técnicas de programação funcional que podem ser aplicadas tanto em ReScript quanto em JavaScript. Sim, você finalmente vai entender o que é uma Monad.`}
            number=#2
            released=false
            footer={() => <Tag> {`Em desenvolvimento`} </Tag>}
          />
        </Box>
        <Box columns=[lg(#6)]>
          <ModuleCard
            title=`ReScript Avançado`
            description=`Neste módulo, você irá aprender técnicas e conceitos avançados de ReScript envolvendo React, sistema de módulos e outras features avançadas da linguagem que são importantes para a construção de aplicações reais.`
            number=#3
            released=false
            footer={() => <Tag> {`Em desenvolvimento`} </Tag>}
          />
        </Box>
        <Box columns=[lg(#6)]>
          <ModuleCard
            title=`GraphQL, REST e Next`
            description=`GraphQL, Next e ReScript são combinações poderosas. Neste módulo você irá aprender o porquê GraphQL funciona tão bem com ReScript através de exemplos práticos utilizando Relay, Apollo e Next. E claro, abordaremos  também integrações com APIs REST.`
            number=#4
            released=false
            footer={() => <Tag> {`Em desenvolvimento`} </Tag>}
          />
        </Box>
        <Box columns=[lg(#6)]>
          <ModuleCard
            title=`Dicas e Truques`
            description=`ReScript possui uma ótima documentação e canais de dúvidas. No entanto, existem alguns segredos e truques que apenas pessoas que dominam a linguagem sabem. Neste módulo, vamos te apresentar os principais truques e segredos do ReScript.`
            number=#5
            released=false
            footer={() => <Tag> {`Em desenvolvimento`} </Tag>}
          />
        </Box>
        <Box columns=[lg(#6)]>
          <ModuleCard
            title=`Conteúdo extras!`
            description=`Você vai ter acesso a um Discord exclusivo onde terá acesso a materiais e recursos relacionados à ReScript. Além disso, você terá contato direto com os instrutores e outras pessoas que estão participando da mesma jornada de aprendizado de ReScript que você.`
            number=#extra
            released=true
            footer={() => <Tag> {`Em desenvolvimento`} </Tag>}
          />
        </Box>
      </Grid>
    </Box>
  </Box>
}
