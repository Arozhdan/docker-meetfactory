<template>
  <nav class="mob-nav">
    <button class="mob-nav__lang justify-self-start ">
      EN
    </button>
    <a href="#"><img src="../../assets/logos/Logo.svg" alt=""></a>
    <button class="focus:outline-none justify-self-end" @click="$emit('showMenu')">
      <img src="../../assets/icons/Menu.svg" alt="">
    </button>
  </nav>
</template>

<script>
import './mobile-nav.pcss'
export default {
  name: 'MobileNav'
}
</script>

<style scoped>

</style>
