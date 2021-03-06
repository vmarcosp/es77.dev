import { motion } from 'framer-motion'

const variants = {
  hidden: { opacity: 0, y: -20 },
  visible: {
    opacity: 1,
    y: 0,
    transition: {
      duration: 0.35
    }
  }
}

export const Wrapper = ({ children, ...props }) => (
  <motion.header
    animate='visible'
    initial='hidden'
    variants={variants}
    {...props}
  >
    {children}
  </motion.header>
)
