module S = Menu_Styles
module BurgerButton = Menu_BurgerButton

type link = {
  sectionId: string,
  label: string,
}

let links = [
  {sectionId: "", label: j`Início`},
  {
    sectionId: "",
    label: j`O que é ReScript?`,
  },
  {
    sectionId: "",
    label: "Sobre o curso",
  },
  {
    sectionId: "",
    label: "Depoimentos",
  },
  {
    sectionId: "",
    label: "Apoiadores",
  },
  {
    sectionId: "",
    label: "FAQ",
  },
]

module Link = {
  @react.component
  let make = (~label, ~href) => {
    <li className=S.link> <a href> {label->React.string} </a> </li>
  }
}

@react.component
let make = () => {
  let (isOpen, setIsOpen) = React.useState(_ => false)

  let toggleMenu = _ => setIsOpen(_ => !isOpen)
  let classes = S.createClasses(~isOpen)
  <>
    <BurgerButton onClick=toggleMenu isOpen />
    <div className={classes.overlay}>
      <div className={classes.menuWrapper}>
        <ul>
          {links->Render.map(({sectionId, label}, id) =>
            <Link href={sectionId} key={id->Render.toString} label />
          )}
        </ul>
        <a href="mailto:contato@es77.dev" className={classes.email}>
          {"contato@es77.dev"->React.string}
        </a>
      </div>
    </div>
  </>
}
