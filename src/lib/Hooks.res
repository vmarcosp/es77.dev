let useMount = fn =>
  React.useEffect0(() => {
    let _ = fn()
    None
  })
