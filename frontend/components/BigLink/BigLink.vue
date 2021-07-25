<template>
  <nuxt-link :to="to" class="big-link" :class="{'big-link--white': type === 'white','big-link--transparent': type === 'transparent', 'w-full': !customWidth}">
    <div class="big-link__ratio">
      <div class="big-link__inner">
        <Arrow />
        <div v-resize-text="{ratio:1.5, minFontSize: '38px', maxFontSize: '100px', delay:0}" class="big-link__title">
          <slot />
        </div>
      </div>
    </div>
  </nuxt-link>
</template>

<script>
import './biglink.pcss'
export default {
  name: 'BigLink',
  props: {
    type: {
      type: String,
      default: 'black'
    },
    customWidth: {
      type: Boolean,
      default: false
    },
    // eslint-disable-next-line vue/require-prop-types
    to: {
      default: '/'
    }
  }

}
</script>
