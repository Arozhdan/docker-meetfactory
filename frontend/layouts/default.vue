<template>
  <div class="app-wrapper">
    <transition name="menu">
      <Menu v-show="menuIsVisible && !blockMenu" @mouseleave.native="menuIsVisible=false" />
    </transition>
    <transition name="menu">
      <MobileMenu v-show="mobileMenuIsVisible && !blockMenu" @closeMobMenu="mobileMenuIsVisible = false" />
    </transition>
    <MobileNav @showMenu="mobileMenuIsVisible=true" />
    <Nuxt />
    <Footer />
    <FooterMob />
  </div>
</template>
<script>
export default {
  data: () => ({
    menuIsVisible: false,
    mobileMenuIsVisible: false,
    blockMenu: false,
    navScrollPosition: 0,
    y: 0,
    navShadow: ''
  }),
  watch: {
    $route () {
      this.blockMenu = true
      setTimeout(() => {
        this.blockMenu = false
        this.menuIsVisible = false
        this.mobileMenuIsVisible = false
      }, 1000)
    }
  },
  mounted () {
    window.addEventListener('scroll', () => {
      this.y = window.pageYOffset
      this.navShadow = window.pageYOffset > 40 ? 'shadow-md' : ''
      if (window.pageYOffset > this.navScrollPosition + 800 || window.pageYOffset < this.navScrollPosition - 400) {
        this.navScrollPosition = window.pageYOffset
        this.menuIsVisible = false
        if (!this.menuIsVisible) {
          this.blockMenu = true
          setTimeout(() => {
            this.blockMenu = false
          }, 1500)
        }
      }
      let timerId
      const debounceFunction = function (func, delay) {
        clearTimeout(timerId)
        timerId = setTimeout(func, delay)
      }
      const updateShadow = () => {
        if (this.navShadow !== 'shadow-sm') { this.navShadow = 'shadow-sm' }
      }
      debounceFunction(updateShadow, 1000)
    })
  }
}
</script>
<style>
.menu-enter-active, .menu-leave-active {
  transition: all .2s ease-in-out;
}

.menu-enter, .menu-leave-to {
  opacity: 0;
}

</style>
