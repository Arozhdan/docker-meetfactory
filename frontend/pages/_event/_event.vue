<template>
  <div class="event-page event-page--music mb-11">
    <div class="container-full event-page__inner">
      <div class="event-page__inner__top">
        <div class="event-page__inner__left">
          <img src="https://placeimg.com/620/640/arch" alt="">
        </div>
        <div class="event-page__inner__right">
          <h1 class="h1 mb-12">
            Lightning Glove + V0NT
          </h1>
          <div class="">
            <div class="event-page__info-item">
              <img src="~/assets/icons/CalendarBlank.svg" alt="">
              <span>27. 8. 2020</span>
            </div>
            <div class="event-page__info-item">
              <img src="~/assets/icons/Clock.svg" alt="">
              <span>20:00</span>
            </div>
          </div>
          <div class="event-page__inner__tags flex gap-x-4 mt-6 mb-12">
            <div class="tag tag--black">
              Koncert na dvorku
            </div>
            <div class="tag tag--black">
              + Více termínůo
            </div>
          </div>
          <div class="separator" />
          <p>Post-klubové trio Lightning Glove se letos navzdory karanténě probralo z hibernace a dle dosavadních pár koncertů jsou kluci v životní formě. Na dystopickém večírku na dvorku za MeetFactory si to rozdaj s maskovaným HW komandem V0NT. Bude to hlasité a zadýmené, bude to heavy.</p>
          <div class="event-page__inner__links pt-1">
            <a href="#" class="link my-2">https://lightningglove.bandcamp.com/</a>
            <a href="#" class="link my-2">https://v0nt.bandcamp.com/</a>
          </div>
          <div class="w-1/2">
            <Button class="w-full bg-blue mt-4 mb-8">
              Facebook událost
            </Button>
            <Button class="w-full" icon="QrCode">
              KOUPIT LISTKY
            </Button>
          </div>
          <h2 class="h2 mt-16 mb-3">
            LINE UP
          </h2>
          <p class="mb-8">
            20.00 door open <br>
            20.30 V0NT <br>
            22.00 Lightning Glove
          </p>
          <iframe
            width="100%"
            height="166"
            scrolling="no"
            frameborder="no"
            allow="autoplay fullscreen"
            src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/348543105&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true"
          /><div style="font-size: 10px; color: #cccccc;line-break: anywhere;word-break: normal;overflow: hidden;white-space: nowrap;text-overflow: ellipsis; font-family: Interstate,Lucida Grande,Lucida Sans Unicode,Lucida Sans,Garuda,Verdana,Tahoma,sans-serif;font-weight: 100;">
            <a href="https://soundcloud.com/neffexmusic" title="NEFFEX" target="_blank" style="color: #cccccc; text-decoration: none;">NEFFEX</a> · <a href="https://soundcloud.com/neffexmusic/fight-back" title="Fight Back 👊 🔥" target="_blank" style="color: #cccccc; text-decoration: none;">Fight Back 👊 🔥</a>
          </div>
          <Embed url="https://www.youtube.com/watch?v=io-BG2YhXrA" />
          <Embed url="https://vimeo.com/553596679" />
          <h2 class="h2 mt-9 mb-3">
            Vstupenky
          </h2>
          <ul class="list">
            <li><a href="#">180 Kč na www.meetfactory.cz</a></li>
            <li><a href="#">goout.cz</a></li>
            <li class="">
              220 Kč - na místě
            </li>
          </ul>
          <p class="mt-2">
            Předprodej končí v den akce v 18:00. <br>Pořádá MeetFactory, o. p. s.
          </p>
          <div class="w-1/2 my-5">
            <Button class="w-full" icon="QrCode">
              KOUPIT LISTKY
            </Button>
          </div>
        </div>
      </div>
    </div>
    <h1 class="h1 container-full mb-3">
      Fotogalerie
    </h1>
    <GalleryPreview :to="{name:$nuxt.$route.name+'-gallery', params:{event: $route.params.event, gallery:'gallery' }}" :images="images" />
  </div>
</template>

<script>
export default {
  name: 'Event',
  data: () => ({
    images: [
      'https://images.unsplash.com/photo-1622495805731-eefd22e836f4?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
      'https://images.unsplash.com/photo-1622549217773-2653d7463dd7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
      'https://images.unsplash.com/photo-1622549069429-c2053df4b69d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'https://images.unsplash.com/photo-1622498159371-15d14f8acdaa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2200&q=80https://images.unsplash.com/photo-1585399000684-d2f72660f092?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
      'https://images.unsplash.com/photo-1585399000684-d2f72660f092?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
      'https://images.unsplash.com/photo-1622496198859-7cebd677067f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
      'https://images.unsplash.com/photo-1622367688327-1004c837e139?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'https://images.unsplash.com/photo-1622396090014-0dc5f3844b72?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'
    ]
  })
}
</script>

<style scoped>

</style>
