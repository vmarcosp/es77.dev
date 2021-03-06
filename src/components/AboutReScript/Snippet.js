import React from "react";
import Highlight, { defaultProps } from "prism-react-renderer";
import Prism from "prismjs";
import Typist from "react-typist";

import { highlightConfig, insertConfig, snippet } from "./highlight-config";

Prism.languages.reason = Prism.languages.extend("clike", highlightConfig);
Prism.languages.insertBefore("reason", "class-name", insertConfig);

const highlightProps = {
  ...defaultProps,
  Prism: Prism,
  code: snippet,
  language: "reason",
};

export const Snippet = ({ showSnippets }) => (
  <Highlight {...highlightProps}>
    {({ className, style, tokens, getLineProps, getTokenProps }) => (
      <pre className={className} style={style}>
        {showSnippets ? (
          <Typist avgTypingDelay={10}>
            {tokens.map(renderToken(getLineProps, getTokenProps))}
          </Typist>
        ) : null}
      </pre>
    )}
  </Highlight>
);

const renderToken = (getLineProps, tokenProps) => (line, tokenId) => {
  const lineProps = getLineProps({ line, key: tokenId });

  return (
    <div key={tokenId} {...lineProps}>
      {line.map((token, key) => (
        <span key={key} {...tokenProps({ token, key })} />
      ))}
    </div>
  );
};
