const TRACKING = "GTM-W5687VH";

export const TagManager = () => (
  <>
    <script
      async
      src={`https://www.googletagmanager.com/gtag/js?id=${TRACKING}`}
    />
    <script
      dangerouslySetInnerHTML={{
        __html: `
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());
            gtag('config', '${TRACKING}', {
              page_path: window.location.pathname,
            });
          `,
      }}
    />
  </>
);

export default TagManager;
