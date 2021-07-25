<template>
  <button class="button">
    <span><img v-if="icon" :src="require(`~/assets/icons/${icon}.svg`)" alt=""> <slot /></span>
  </button>
</template>
<script>
import './button.pcss'
export default {
  name: 'Button',
  props: {
    icon: {
      type: String,
      default: ''
    }
  }
}
</script>
