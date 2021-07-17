open Releasing_Styles
open Render
module Content = Releasing_Content

let variants = delay => {
  open FramerMotion
  {
    hidden: variant(~opacity=0.0, ~y=20, ()),
    visible: variant(~opacity=1.0, ~y=0, ~transition=transition(~delay, ~duration=0.6, ()), ()),
  }
}

type subscribeForm = {
  name: string,
  email: string,
}

type submissionState = Idle | Submitting | Submitted

let submitToDark: subscribeForm => Js.Promise.t<unit> = %raw(`function(state){
 return fetch('https://es2077.builtwithdark.com/subscribe', {
   method: 'POST',
   headers: {
     'Content-type': 'appplication/json',
   },
   body: JSON.stringify(state),
 })
}`)

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
    let _: Js.Promise.t<'a> = submitToDark(formState) |> Js.Promise.then_(() => {
      setSubmissionState(_ => Submitted)
      Js.Promise.resolve()
    })
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
      <Title
        animate=#controlled(controls)
        initial=#hidden
        variants={variants(0.4)}
        icon=#lighting
        innerRef>
        {j`Pré-Lançamento`}
      </Title>
      <Text.P animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=text>
        {Content.releasingText}
      </Text.P>
      <Text.P animate=#controlled(controls) initial=#hidden variants={variants(0.2)} className=text>
        <i> {j`Fique tranquilo, nós não enviamos spam!`->str} </i> {j` 😉`->str}
      </Text.P>
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
          <button disabled={submissionState !== Idle} type_="submit">
            {{
              switch submissionState {
              | Idle => "Enviar"
              | Submitting => "Enviando"
              | Submitted => "Cadastrado"
              }
            }->React.string}
          </button>
        </Motion.Div>
      </form>
    </div>
  </Motion.Div>
}
