let useMount = fn =>
  React.useEffect0(() => {
    let _ = fn()
    None
  })

@send
external scrollIntoView: (Dom.element, {"behavior": [#smooth | #auto]}) => unit = "scrollIntoView"

let useScrollTo = () => {
  let fields: React.ref<option<Dom.element>> = React.useRef(None)

  let registerField = () => {
    ReactDOM.Ref.callbackDomRef(domElement => {
      switch domElement->Js.Nullable.toOption {
      | Some(domElement) => fields.current = Some(domElement)
      | None => ()
      }
    })
  }

  let scrollTo = key => {
    switch fields.current {
    | None => Js.log(`${Obj.magic(key)} was not registered`)
    | Some(field) => field->scrollIntoView({"behavior": #smooth})
    }
  }
  (registerField, scrollTo)
}
