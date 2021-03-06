import { motion } from "framer-motion";

const fadeAnimation = ({
  delay = 0.25,
  duration = 0.2,
  x: [fromX, toX],
  y: [fromY, toY],
}) => ({
  hidden: { opacity: 0, x: fromX, y: fromY },
  visible: {
    opacity: 1,
    x: toX,
    y: toY,
    transition: {
      duration,
      delay,
    },
  },
});

export const FadeIn = ({
  children,
  controls,
  className,
  x = [0, 0],
  y = [0, 0],
  delay,
  duration,
}) =>
  console.log(controls) || (
    <motion.div
      className={className}
      animate={controls || "visible"}
      initial="hidden"
      variants={fadeAnimation({ x, y, delay, duration })}
    >
      {children}
    </motion.div>
  );
