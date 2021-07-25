module.exports = {
  purge: {
    content: [
      './src/**/*.pcss',
      './src/**/*.vue',
      './components/**/*.{vue,js}',
      './components/*.{vue,js}',
      './layouts/**/*.vue',
      './pages/**/*.vue',
      './plugins/**/*.{js,ts}',
      './nuxt.config.{js,ts}'
    ]
  },
  darkMode: false, // or 'media' or 'class'
  theme: {
    container: {
      center: true
    },
    extend: {
      colors: {
        black: '#1a1a1a',
        red: '#FF0000',
        blue: '#4267B2'
      }
    }
  },
  variants: {
    extend: {}
  },
  plugins: []
}
