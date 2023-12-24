// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  vite: {
    vue: {
      script: {
        defineModel: true,
      },
    },
  },
  devtools: { enabled: false }
})
