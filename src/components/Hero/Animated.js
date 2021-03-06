import React from "react";
import { motion } from "framer-motion";

export const Symbol = () => {
  return (
    <motion.svg
      variants={{
        hidden: { opacity: 0, scale: 0 },
        visible: {
          opacity: 1,
          scale: 1,
          transition: {
            duration: 0.35,
            delayChildren: 0.45,
            staggerChildren: 0.5,
          },
        },
      }}
      initial="hidden"
      animate="visible"
      fill="none"
      viewBox="0 0 314 279"
      xmlns="http://www.w3.org/2000/svg"
    >
      <g fillOpacity=".7">
        <motion.path
          d="M60.315 164.096l86.916-150.494c4.316-7.473 15.104-7.469 19.415.008l21.916 38.017a11.209 11.209 0 01.226 10.784l-58.721 112.477a11.206 11.206 0 01-9.935 6.021H70.02c-8.628 0-14.02-9.341-9.705-16.813z"
          fill="url(#b)"
          variants={{
            hidden: { y: -20, pathLength: 0, opacity: 0 },
            visible: { y: 0, pathLength: 1, opacity: 1 },
          }}
        />
        <motion.path
          d="M296.009 237.749l-87.754-152.02c-4.423-7.663-15.564-7.42-19.648.43L165.12 131.29a11.209 11.209 0 00.237 10.779l61.736 106.887a11.206 11.206 0 009.705 5.602h49.505c8.627 0 14.019-9.339 9.706-16.81z"
          fill="url(#c)"
          variants={{
            hidden: { x: 20, pathLength: 0, opacity: 0 },
            visible: { x: 0, pathLength: 1, opacity: 1 },
          }}
        />
        <motion.path
          d="M27.224 254.801H198.46c8.668 0 14.055-9.418 9.661-16.889l-24.037-40.871a11.207 11.207 0 00-9.678-5.526l-123.624.191a11.208 11.208 0 00-9.68 5.588l-23.575 40.68c-4.33 7.472 1.062 16.827 9.697 16.827z"
          fill="url(#d)"
          variants={{
            hidden: { y: 20, pathLength: 0, opacity: 0 },
            visible: { y: 0, pathLength: 1, opacity: 1 },
          }}
        />
      </g>
      <defs>
        <linearGradient
          id="b"
          gradientUnits="userSpaceOnUse"
          x1="156.678"
          x2="156.678"
          y1="-36.048"
          y2="299.916"
        >
          <stop stopColor="#DF64BD" />
          <stop offset=".353" stopColor="#9A3F81" stopOpacity=".69" />
          <stop offset=".703" stopColor="#28174A" stopOpacity=".75" />
          <stop offset=".906" stopOpacity="0" />
        </linearGradient>
        <linearGradient
          id="c"
          gradientUnits="userSpaceOnUse"
          x1="156.678"
          x2="156.678"
          y1="-36.048"
          y2="299.916"
        >
          <stop stopColor="#DF64BD" />
          <stop offset=".353" stopColor="#9A3F81" stopOpacity=".69" />
          <stop offset=".703" stopColor="#28174A" stopOpacity=".75" />
          <stop offset=".906" stopOpacity="0" />
        </linearGradient>
        <linearGradient
          id="d"
          gradientUnits="userSpaceOnUse"
          x1="156.678"
          x2="156.678"
          y1="-36.048"
          y2="299.916"
        >
          <stop stopColor="#DF64BD" />
          <stop offset=".353" stopColor="#9A3F81" stopOpacity=".69" />
          <stop offset=".703" stopColor="#28174A" stopOpacity=".75" />
          <stop offset=".906" stopOpacity="0" />
        </linearGradient>
      </defs>
    </motion.svg>
  );
};
