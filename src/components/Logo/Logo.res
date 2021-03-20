let logo = {
  open CssJs
  style(.[Media.xs([display(#none)])])
}

let logoMinimal = {
  open CssJs
  style(.[display(none), Media.xs([display(#block)])])
}

@react.component
let make = () => {
  <>
    <div className=logo>
      <Next.Image
        width="260"
        height="56"
        src="/assets/white-logo.svg"
        alt="EcmaScript2077 | Incoming from the future"
      />
    </div>
    <div className=logoMinimal>
      <Next.Image
        width="160"
        height="50"
        src="/assets/logo-minimal.svg"
        alt="EcmaScript2077 | Incoming from the future"
      />
    </div>
  </>
}
