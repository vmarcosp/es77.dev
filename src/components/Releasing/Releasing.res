open Releasing_Styles
open Render
module Content = Releasing_Content

@scope("window") @val external setTimeout: (. unit => unit, int) => unit = "setTimeout"
@scope("window") @val external fetch: (string, {..}) => Js.Promise.t<unit> = "fetch"

type subscribeForm = {
  name: string,
  email: string,
}

type submissionState = Idle | Submitting | Submitted | Error

let variants = delay => {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(~opacity=1.0, ~y=0, ~transition=transition(~delay, ~duration=0.6, ()), ()),
  }
}

let submitForm = state =>
  fetch(
    "https://es2077.builtwithdark.com/subscribes",
    {
      "method": "POST",
      "headers": {
        "Content-type": "appplication/json",
      },
      "body": Js.Json.stringifyAny(state)->Belt.Option.getWithDefault("{}"),
    },
  )

@react.component
let make = () => {
  let (innerRef, inView) = IntersectionObserver.useInView()
  let controls = FramerMotion.useAnimation()
  let (submissionState, setSubmissionState) = React.useState(() => Idle)
  let (formState, setFormState) = React.useState(() => {
    name: "",
    email: "",
  })

  let handleSubmit = () => {
    setSubmissionState(_ => Submitting)
    submitForm(formState)
    ->Promise.then(() => {
      setTimeout(. () => {
        setFormState(_ => {name: "", email: ""})
        setSubmissionState(_ => Idle)
      }, 3000)
      setSubmissionState(_ => Submitted)
      Promise.resolve()
    })
    ->Promise.then(() => {
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
          {`Pré-Lançamento`}
        </Title>
        <Text.P
          animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=text>
          {Content.releasingText}
        </Text.P>
        <Text.P
          animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=text>
          <i> {`Fique tranquilo, nós não enviamos spam!`->str} </i> {` 😉`->str}
        </Text.P>
      </div>
      <form
        onSubmit={e => {
          e->ReactEvent.Form.preventDefault
          handleSubmit()
        }}>
        <Motion.Div
          animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=form>
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
        </Motion.Div>
      </form>
    </div>
  </Motion.Div>
}
