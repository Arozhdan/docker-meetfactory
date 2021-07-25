<template>
  <div class="nav" :class="navShadow">
    <div class="nav__links">
      <nuxt-link :to="{name:'gallery'}" class="nav__link" @mouseenter.native="$emit('showMenu')">
        Galerie
      </nuxt-link>
      <nuxt-link :to="{name:'residence'}" class="nav__link" @mouseenter.native="$emit('showMenu')">
        Rezidence
      </nuxt-link>
      <nuxt-link :to="{name:'theater'}" class="nav__link" @mouseenter.native="$emit('showMenu')">
        Divadlo
      </nuxt-link>
      <nuxt-link :to="{name:'music'}" class="nav__link" @mouseenter.native="$emit('showMenu')">
        Hudba
      </nuxt-link>
    </div>
    <div class="logo nav__logo">
      <nuxt-link to="/">
        <img src="~/assets/logos/Logo.svg" alt="">
      </nuxt-link>
    </div>
    <div class="nav__right">
      <nuxt-link to="/" class="nav__right__meet" @mouseenter.native="$emit('showMenu')">
        MeetFactory
      </nuxt-link>
      <button href="#" class="nav__right__lang">
        EN
      </button>
    </div>
  </div>
</template>

<script>
import './nav.pcss'
export default {
  name: 'Nav',
  props: {
    navShadow: {
      type: String,
      default: ''
    }
  }
}
</script>

<style scoped>

</style>
