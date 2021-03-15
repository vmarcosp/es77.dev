let toString = Js.Int.toString
let map = (items, fn) =>
  items->Belt.Array.mapWithIndex((index, item) => fn(item, index))->React.array

let str = React.string
