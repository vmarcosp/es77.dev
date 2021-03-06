import React from "react";
import { motion } from "framer-motion";

const topicVariants = (index) => ({
  hidden: { y: 20, opacity: 0 },
  visible: {
    y: 0,
    opacity: 1,
    transition: {
      duration: 0.25,
      delay: index * 0.15,
    },
  },
});

export const Topic = ({ children, index, ...props }) => (
  <motion.li
    initial="hidden"
    key={index}
    variants={topicVariants(index)}
    {...props}
  >
    {children}
  </motion.li>
);
