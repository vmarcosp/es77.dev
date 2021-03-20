open Footer_Styles
open Render

@react.component
let make = () => {
  <footer className=wrapper>
    <div className=content>
      <Logo />
      <p className=madeBy>
        {`Design por`->str}
        <a rel="noopener noreferrer" href="https://dribbble.com/rebgonzalez">
          {` Rebecca Gonzalez`->str}
        </a>
      </p>
    </div>
  </footer>
}
