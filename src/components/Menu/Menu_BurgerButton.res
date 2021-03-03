module S = Menu_Styles

@react.component
let make = (~isOpen, ~onClick) => {
  <button onClick className={S.burgerButton(~isOpen)} />
}
