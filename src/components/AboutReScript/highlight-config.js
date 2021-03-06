export const highlightConfig = {
  string: {
    pattern: /"(?:\\(?:\r\n|[\s\S])|[^\\\r\n"])*"/,
    greedy: true
  },
  'class-name': /\b[A-Z]\w*/,
  keyword: /\b(?:and|as|assert|begin|class|constraint|do|done|downto|else|end|exception|external|for|fun|function|functor|if|in|include|inherit|initializer|lazy|let|method|module|mutable|new|nonrec|object|of|open|or|private|rec|sig|struct|switch|then|to|try|type|val|virtual|when|while|with)\b/,
  operator: /\.{3}|:[:=]|\|>|->|=(?:==?|>)?|<=?|>=?|[|^?'#!~`]|[+\-*\/]\.?|\b(?:mod|land|lor|lxor|lsl|lsr|asr)\b/
}

export const insertConfig = {
  character: {
    pattern: /'(?:\\x[\da-f]{2}|\\o[0-3][0-7][0-7]|\\\d{3}|\\.|[^'\\\r\n])'/,
    alias: 'string'
  },
  constructor: {
    pattern: /\b[A-Z]\w*\b(?!\s*\.)/,
    alias: 'variable'
  },
  label: {
    pattern: /\b[a-z]\w*(?=::)/,
    alias: 'symbol'
  },
  'decorator-symbol': {
    pattern: /@/
  },
  'decorator-name': {
    pattern: /react.component/
  },
  'jsx-tag': {
    pattern: /p|span|div|button/
  },
  'function-name': {
    pattern: /make/,
    alias: 'plain'
  },
  reserved: {
    pattern: /let/
  }
}

export const snippet = `
@react.component
let make = () => {
  let (show, setShow) = React.useState(_ => false)
  <div>
    <p> 
      {show ? React.string("Hello!") : React.null} 
    </p>
    <button onClick={_ => setShow(_ => !show)}>
      {React.string("Click here")}
    </button>
  </div>
}
`
