<template>
  <div class="mobile-menu">
    <div class="mobile-menu__search">
      <Search />
    </div>
    <img class="mobile-menu__close" src="../../assets/icons/Close.svg" alt="" @click="$emit('closeMobMenu')">

    <div class="mobile-menu__links">
      <nuxt-link :to="{name:'gallery'}" class="mobile-menu__link">
        Galerie
      </nuxt-link>
      <nuxt-link :to="{name:'residence'}" class="mobile-menu__link">
        Rezidence
      </nuxt-link>
      <nuxt-link :to="{name:'theater'}" class="mobile-menu__link">
        Divadlo
      </nuxt-link>
      <nuxt-link :to="{name:'music'}" class="mobile-menu__link">
        Hudba
      </nuxt-link>
      <a href="#" class="mobile-menu__link">Další akce</a>
      <a href="#" class="mobile-menu__link">Podcasty</a>
      <a href="#" class="mobile-menu__link">E-shop</a>
      <a href="#" class="mobile-menu__link">O nás</a>
      <a href="#" class="mobile-menu__link">Kontakt</a>
    </div>
  </div>
</template>

<script>
import './mobile-menu.pcss'
export default {
  name: 'MobileMenu'
}
</script>

<style scoped>

</style>
