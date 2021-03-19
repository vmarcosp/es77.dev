module S = Menu_Styles
module BurgerButton = Menu_BurgerButton

type link = {
  sectionId: string,
  label: string,
}

let links = [
  {
    sectionId: "#o-que-e-rescript",
    label: j`O que é ReScript?`,
  },
  {
    sectionId: "#sobre-o-curso",
    label: "Sobre o curso",
  },
  {
    sectionId: "#instrutores",
    label: "Instrutores",
  },
  {
    sectionId: "#reviews",
    label: "Reviews",
  },
  {
    sectionId: "#parceiros",
    label: "Parceiros",
  },
  {
    sectionId: "#faq",
    label: "Perguntas frequentes",
  },
]

module Link = {
  @react.component
  let make = (~label, ~href, ~onClick) => {
    let handleClick = _ => {
      onClick()
    }
    <li className=S.link> <a href onClick={handleClick}> {label->React.string} </a> </li>
  }
}

@react.component
let make = () => {
  let (isOpen, setIsOpen) = React.useState(_ => false)
  let onClick = () => setIsOpen(_ => false)
  let toggleMenu = _ => setIsOpen(_ => !isOpen)
  let classes = S.createClasses(~isOpen)
  <>
    <BurgerButton onClick=toggleMenu isOpen />
    <div className={classes.overlay}>
      <div className={classes.menuWrapper}>
        <ul>
          {links->Render.map(({sectionId, label}, id) =>
            <Link href={sectionId} key={id->Render.toString} onClick label />
          )}
        </ul>
        <a href="mailto:contato@es77.dev" className={classes.email}>
          {"contato@es77.dev"->React.string}
        </a>
      </div>
    </div>
  </>
}
