<template>
  <footer class="footer">
    <div class="footer__nav">
      <a href="#" class="footer__nav__meet">
        MeetFactory
      </a>
      <div class="footer__nav__social">
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
      <div class="footer__nav__logo">
        <a href="#" class="">
          <img src="../../assets/logos/Logo-white.svg" alt="#">
        </a>
      </div>
    </div>
    <div class="footer__body">
      <div class="footer__body__links">
        <div>
          <a href="#" class="footer__body__link">Galerie</a>
          <a href="#" class="footer__body__link">Rezidence</a>
          <a href="#" class="footer__body__link">Divadlo</a>
          <a href="#" class="footer__body__link">Hudba</a>
          <a href="#" class="footer__body__link">Další akce</a>
        </div>
        <div>
          <a href="#" class="footer__body__link">Podcasty</a>
          <a href="#" class="footer__body__link">Program</a>
        </div>
        <div>
          <a href="#" class="footer__body__link">O nás</a>
          <a href="#" class="footer__body__link">Pronájem</a>
          <a href="#" class="footer__body__link">Partneři</a>
          <a href="#" class="footer__body__link">E-shop</a>
        </div>
        <div>
          <a href="#" class="footer__body__link">Press</a>
          <a href="#" class="footer__body__link">Kontakt</a>
        </div>
      </div>
      <div class="footer__body__subscribe">
        <h2 class="h2">
          Chcete vědět o všem v MeetFactory?
        </h2>
        <div class="flex flex-wrap py-4 my-2 gap-x-4 gap-y-2">
          <Input class="flex-grow max-w-md" :rules="{}">
            Zadejte Váš e-mail...
          </Input>
          <div class="w-2/5 max-w-sm">
            <Button class="border border-white">
              Přihlásit
            </Button>
          </div>
        </div>
        <CustomCheck />
      </div>
    </div>
    <div class="footer__copy">
      <p class="text-white footer__copy__top">
        Copyright © MeetFactory o.p.s. <a href="#">Ochrana osobních údajů</a> <a href="#">VOP</a>
      </p>
      <p class="text-white footer__copy__bottom">
        MeetFactory je v roce 2020 podporována grantem hl. m. Prahy ve výši 10.000.000 Kč.
      </p>
    </div>
  </footer>
</template>

<script>
import './footer.pcss'
export default {
  name: 'Footer'
}
</script>
