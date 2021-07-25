<template>
  <div class="gallery">
    <nuxt-link v-for="image in images" :key="image" :to="to" class="gallery__image" :style="'backgroundImage:url('+image+')'" />
  </div>
</template>

<script>
import './gallery-preview.pcss'
export default {
  name: 'Gallery',
  props: {
    images: {
      type: Array,
      default: () => ([])
    },
    // eslint-disable-next-line vue/require-prop-types
    to: {
      default: '/'
    }
  }
}
</script>

<style scoped>

</style>
