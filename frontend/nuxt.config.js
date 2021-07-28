export default {
  // Global page headers: https://go.nuxtjs.dev/config-head
  server: {
    port: process.env.FRONTEND_PORT
  },
  head: {
    title: 'meetfactory',
    htmlAttrs: {
      lang: 'en'
    },
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: '' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
    ]
  },

  // Global CSS: https://go.nuxtjs.dev/config-css
  css: [
    './assets/css/tailwind.css',
    './assets/css/global.pcss',
    './assets/css/fonts.pcss',
    './assets/css/variables.pcss',
    './assets/css/modules.pcss'
  ],

  // Plugins to run before rendering page: https://go.nuxtjs.dev/config-plugins
  plugins: [
    { src: './plugins/fontsize.js', mode: 'client' },
    { src: './plugins/select.js', mode: 'client' },
    { src: './plugins/calendar.js', mode: 'client' },
    { src: './plugins/gmap.js', mode: 'client' },
    { src: './plugins/vue-awesome-swiper', mode: 'client' },
    { src: './plugins/embed', mode: 'client' },
    { src: './plugins/validation.js' }
  ],
  transpile: [/^vue2-google-maps($|\/)/],

  // Auto import components: https://go.nuxtjs.dev/config-components
  components: true,

  // Modules for dev and build (recommended): https://go.nuxtjs.dev/config-modules
  buildModules: [
    // https://go.nuxtjs.dev/eslint
    '@nuxtjs/eslint-module',
    '@nuxtjs/tailwindcss',
    '@nuxtjs/device'
  ],

  // Modules: https://go.nuxtjs.dev/config-modules
  modules: [
    // https://go.nuxtjs.dev/axios
    '@nuxtjs/axios',
    'vue-screen/nuxt',
    '@nuxtjs/router'
  ],

  // Axios module configuration: https://go.nuxtjs.dev/config-axios
  axios: {},
  // Build Configuration: https://go.nuxtjs.dev/config-build
  build: {
    postcss: {
      plugins: {
        'postcss-nested': {},
        autoprefixer: {}
      }
    }
  },
  storybook: {
    // Options
  }
}
