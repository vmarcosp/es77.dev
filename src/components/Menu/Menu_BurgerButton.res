module S = Menu_Styles

@react.component
let make = (~isOpen, ~onClick) => {
  <button ariaLabel="botão" onClick className={S.burgerButton(~isOpen)} />
}
