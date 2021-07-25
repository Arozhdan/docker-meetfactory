<template>
  <div v-if="url" class="embed">
    <div class="embed__inner">
      <div class="embed__ratio">
        <video-embed :src="url" />
      </div>
    </div>
  </div>
</template>
<script>
import './embed.pcss'
export default {
  name: 'Embed',
  props: {
    url: {
      type: String,
      default: ''
    }
  }
}
</script>

<style scoped>

</style>
