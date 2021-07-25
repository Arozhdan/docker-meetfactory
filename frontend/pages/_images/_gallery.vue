<template>
  <div class="gallery-overview">
    <div class="gallery-overview__inner">
      <client-only>
        <swiper ref="gallerySlider" :options="$store.state.swiperGalleryOptions" class="gallery-overview__slider" @slideChange="changeSwiperIndex">
          <swiper-slide v-for="i in 5" :key="i">
            <div class="gallery-overview__image" :style="`background-image: url('https://placeimg.com/840/570/${i}')`" />
          </swiper-slide>
          <div slot="button-next" class="swiper-button-next gallery-overview__slider-nav" />
          <div slot="button-prev" class="swiper-button-prev gallery-overview__slider-nav" />
        </swiper>
      </client-only>

      <div class="gallery-overview__right">
        <h1 class="h1">
          Spiritualities: Three Contemporary Portrayals of Transcendence and Beliefs
        </h1>
        <p class="mt-4">
          Obrazy na zdi v dřevěném rámu resp. vitrína.
        </p>
        <div class="spacer" />
        <div class="flex">
          <a class="download-link" href="#">Stáhnout</a>
          <div class="spacer" />
          <span>{{ active }}/5</span>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import '~/assets/css/pages/gallery.pcss'
export default {
  name: 'Gallery',
  data: () => ({
    active: 1
  }),
  methods: {
    changeSwiperIndex () {
      this.active = this.$refs.gallerySlider.swiperInstance.activeIndex < 6 ? this.$refs.gallerySlider.swiperInstance.activeIndex : 1
    }
  }
}
</script>

<style scoped>

</style>
