open Releasing_Styles
open Render
module Content = Releasing_Content

@scope("window") @val external setTimeout: (. unit => unit, int) => unit = "setTimeout"
@scope("window") @val external fetch: (string, {..}) => Js.Promise.t<unit> = "fetch"

type contactTag = [#"react-conf" | #"heart-conf" | #"landing-page"]

type subscribeForm = {
  name: string,
  email: string,
  tag: contactTag,
}

type submissionState = Idle | Submitting | Submitted | Error

let variants = delay => {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(~opacity=1.0, ~y=0, ~transition=transition(~delay, ~duration=0.6, ()), ()),
  }
}

let submitForm = state => {
  Mixpanel.track(
    j`Inscrição pelo Formulário`,
    Some({
      "Name": state.name,
      "Email": state.email,
    }),
  )

  fetch(
    "https://es2077.builtwithdark.com/subscribe",
    {
      "method": "POST",
      "headers": {
        "Content-type": "appplication/json",
      },
      "body": Js.Json.stringifyAny(state)->Belt.Option.getWithDefault("{}"),
    },
  )
}
let tagFromQueryParam = query =>
  switch query->Js.Dict.get("t") {
  // | Some("react-conf") => #"react-conf"
  // | Some("heart-conf") => #"heart-conf"
  | _ => #"landing-page"
  }

module ReleasingCard = {
  @react.component
  let make = () => {
    let router = Next.Router.useRouter()
    let tag = tagFromQueryParam(router.query)
    let (innerRef, inView) = IntersectionObserver.useInView()
    let controls = FramerMotion.useAnimation()
    let (submissionState, setSubmissionState) = React.useState(() => Idle)
    let (formState, setFormState) = React.useState(() => {
      name: "",
      email: "",
      tag: #"landing-page",
    })

    let (registerField, scrollTo) = Hooks.useScrollTo()

    let handleSubmit = () => {
      setSubmissionState(_ => Submitting)
      submitForm(formState)
      ->Promise.then(() => {
        setTimeout(. () => {
          setFormState(_ => {name: "", email: "", tag: tagFromQueryParam(router.query)})
          setSubmissionState(_ => Idle)
        }, 3000)
        setSubmissionState(_ => Submitted)
        Promise.resolve()
      })
      ->Promise.catch(_ => {
        setSubmissionState(_ => Error)
        setTimeout(. () => {
          setSubmissionState(_ => Idle)
        }, 3000)
        Promise.resolve()
      })
      ->ignore
    }

    React.useEffect1(() => {
      if inView {
        controls.start(. #visible)
      }

      None
    }, [inView])

    React.useEffect1(() => {
      if tag !== #"landing-page" {
        scrollTo()
      }
      None
    }, [tag])

    <Motion.Div
      animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=wrapper>
      <div className=content ref={registerField()}>
        <div className=textWrapper>
          <Title
            animate=#controlled(controls)
            initial=#hidden
            variants={variants(0.4)}
            icon=#lighting
            innerRef>
            {switch tag {
            | #"heart-conf" => `Cupom de desconto He4rt Conf.`
            | #"react-conf" => `Cupom de desconto React Conf.`
            | _ => `Pré-Lançamento`
            }}
          </Title>
          <Text.P
            animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=text>
            {switch tag {
            | #"landing-page" => Content.releasingText
            | partner => Content.partnerText(partner)
            }}
          </Text.P>
          <Text.P
            animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=text>
            <i> {`Fique tranquilo, nós não enviamos spam!`->str} </i> {` 😉`->str}
          </Text.P>
        </div>
        <Motion.Form
          animate=#controlled(controls)
          initial=#hidden
          variants={variants(0.2)}
          className=form
          onSubmit={e => {
            e->ReactEvent.Form.preventDefault
            handleSubmit()
          }}>
          <input
            value=formState.name
            onChange={e => {
              let value = (e->ReactEvent.Form.target)["value"]
              setFormState(state => {...state, name: value})
            }}
            required=true
            placeholder="Nome"
          />
          <input
            value=formState.email
            type_="email"
            onChange={e => {
              let value = (e->ReactEvent.Form.target)["value"]
              setFormState(state => {...state, email: value})
            }}
            required=true
            placeholder="Email"
          />
          <button
            className={switch submissionState {
            | Submitting => submitButtonSubmitting
            | Submitted => submitButtonSent
            | _ => ""
            }}
            disabled={submissionState !== Idle}
            type_="submit">
            {{
              switch submissionState {
              | Idle => "Enviar"
              | Submitting => "Enviando..."
              | Submitted => `Tudo certo, confira seu e-mail 😃`
              | Error => `Ocorreu um erro, tente novamente`
              }
            }->React.string}
          </button>
        </Motion.Form>
      </div>
    </Motion.Div>
  }
}

module CheckoutCta = {
  @react.component
  let make = () => {
    let (innerRef, inView) = IntersectionObserver.useInView()
    let controls = FramerMotion.useAnimation()

    React.useEffect1(() => {
      if inView {
        controls.start(. #visible)
      }

      None
    }, [inView])

    <Motion.Div
      animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=wrapper>
      <div className=content>
        <div className=textWrapper>
          <Title
            animate=#controlled(controls)
            initial=#hidden
            variants={variants(0.4)}
            icon=#lighting
            innerRef>
            {`Compre agora o curso`}
          </Title>
          <Text.P
            animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=text>
            {`Garanta já a sua vaga em uma jornada de aprendizado em uma das alternativas mais promissoras ao JavaScript.`->str}
          </Text.P>
        </div>
        <div className=form>
          <a
            style={ReactDOMStyle.make(~textDecoration="none", ~width="%", ())}
            href=`https://pay.hotmart.com/R59895080O`
            target="_blank">
            {`Comprar agora`->str}
          </a>
        </div>
      </div>
    </Motion.Div>
  }
}

@react.component
let make = () => {
  let router = Next.Router.useRouter()

  switch router.query->Js.Dict.get("checkout") {
  | Some("1") => <CheckoutCta />
  | _ => <ReleasingCard />
  }
}
