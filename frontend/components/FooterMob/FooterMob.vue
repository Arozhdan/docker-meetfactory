<template>
  <footer class="footer-mob">
    <div class="footer-mob__inner">
      <div class="footer-mob__nav">
        <div class="footer-mob__nav__left">
          <nuxt-link :to="{name:'gallery'}" class="footer-mob__link" href="#">
            Galerie
          </nuxt-link>
          <nuxt-link :to="{name:'residence'}" class="footer-mob__link" href="#">
            Rezidence
          </nuxt-link>
          <nuxt-link :to="{name:'theater'}" class="footer-mob__link" href="#">
            Divadlo
          </nuxt-link>
          <nuxt-link :to="{name:'music'}" class="footer-mob__link" href="#">
            Hudba
          </nuxt-link>
          <a class="footer-mob__link" href="#">Další akce</a>
          <div class="footer-mob-divider" />
          <a class="footer-mob__link" href="#">Press</a>
          <a class="footer-mob__link" href="#">Kontakt</a>
        </div>
        <div class="footer-mob__nav__right">
          <a class="footer-mob__link" href="#">Podcasty</a>
          <a class="footer-mob__link" href="#">Program</a>
          <a class="footer-mob__link" href="#">Aktuality</a>
          <div class="footer-mob-divider" />
          <a class="footer-mob__link" href="#">O nás</a>
          <a class="footer-mob__link" href="#">Pronájem</a>
          <a class="footer-mob__link" href="#">Partneři</a>
          <a class="footer-mob__link" href="#">E-shop</a>
        </div>
      </div>
      <div class="footer-mob-divide" />
      <div class="footer-mob__social">
        <a href="#">
          <img src="../../assets/icons/Facebook.svg" alt="">
        </a>
        <a href="#">
          <img src="../../assets/icons/Instagram.svg" alt="">
        </a>
        <a href="#">
          <img src="../../assets/icons/Twitter.svg" alt="">
        </a>
        <a href="#">
          <img src="../../assets/icons/Youtube.svg" alt="">
        </a>
        <a href="#">
          <img src="../../assets/icons/Spotify.svg" alt="">
        </a>
      </div>
      <div class="footer-mob__copy">
        <p class="footer-mob__copy__top">
          Copyright © <span> MeetFactory o.p.s.</span>
        </p>
        <p class="footer-mob__copy__center">
          <a href="#">Ochrana osobních údajů</a>&nbsp;&nbsp;<a href="#">VOP</a>
        </p>
        <p class="footer-mob__copy__bottom">
          MeetFactory je v roce 2021 podporována grantem <br>
          hl. m. Prahy ve výši 10.000.000 Kč.
        </p>
      </div>
    </div>
  </footer>
</template>

<script>
import './footer-mob.pcss'
export default {
  name: 'FooterMob'
}
</script>

<style scoped>

</style>
