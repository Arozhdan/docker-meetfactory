<template>
  <nuxt-link
    :to="to"
    class="overlay-image"
    :class="{'overlay-image--arrow-leave':arrowLeave}"
    @mouseleave.native="arrowLeave= true"
  >
    <div class="overlay-image__ratio">
      <img class="overlay-image__img" :class="{'overlay-image__img--transition':transition}" :src="picture" alt="">
      <div class="overlay-image__inner">
        <img v-if="status && status === 'cancelled'" src="../../assets/icons/CalendarRed.svg" alt="">
        <img v-if="status && status === 'ok'" src="../../assets/icons/Arrow-right-down--smaller.svg" alt="">
        <p v-if="title" class="h1 overlay-image__text">
          {{ title }}
        </p>
        <p v-if="title" class="h2 overlay-image__text">
          {{ title }}
        </p>
      </div>
      <div class="overlay-image__arrow">
        <img src="../../assets/icons/ArrowDownRight.svg" alt="">
      </div>
    </div>
  </nuxt-link>
</template>

<script>
/* eslint-disable vue/require-default-prop */
import './overlay-image.pcss'
export default {
  name: 'OverlayImage',
  props: {
    picture: {
      type: String,
      default: 'https://images.unsplash.com/photo-1579858784199-cfb3dc18ef9d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2200&q=80'
    },
    status: {
      type: String,
      default: 'ok'
    },
    title: {
      type: String,
      default: undefined
    },
    // eslint-disable-next-line vue/require-prop-types
    to: {
      default: '/'
    }
  },
  data: () => ({
    transition: false,
    arrowLeave: false
  }),
  watch: {
    picture () {
      this.transition = false
      setTimeout(() => {
        this.transition = true
      }, 100)
    },
    arrowLeave () {
      setTimeout(() => {
        this.arrowLeave = false
      }, 700)
    }
  }
}
</script>
