<template>
  <div class="gallery-page">
    <div class="flex flex-wrap">
      <OverlayImage title="Galerie MeetFactory" :to="{name:'gallery-meet'}" />
      <OverlayImage title="Galerie Kostka" :to="{name:'gallery-kostka'}" />
      <OverlayImage title="Doprovodné programy" :to="{name:'gallery-programs'}" />
    </div>
    <div>
      <h1 class="text-black container-full mt-9 mb-3">
        Program galerií
      </h1>
    </div>
    <div class="gallery-page__settings container-full">
      <Select label="Rok" :options=" ['2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021']" />
      <Select label="Galerie" :options=" ['Galerie MeetFactory','Galerie Kostka','Doprovodné programy']" />
      <Button class="button--secondary">
        aktuální
      </Button>
      <Button class="button--secondary">
        minulý
      </Button>
      <Button class="button--secondary">
        plánovaný
      </Button>
      <div class="flex-grow spacer" />
      <Searchbox class="self-center" />
    </div>
    <div class="container-full">
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-x-10 gap-y-4 mob--full-width mb-12">
        <EventCard :to="{name:'gallery-event', params:{event:'event-name'}}" />
        <EventCard :to="{name:'gallery-event', params:{event:'event-name2'}}" />
        <EventCard :to="{name:'gallery-event', params:{event:'event-name3'}}" />
        <EventCard :to="{name:'gallery-event', params:{event:'event-name4'}}" />
        <EventCard :to="{name:'gallery-event', params:{event:'event-name5'}}" />
      </div>
    </div>
  </div>
</template>

<script>
import '~/assets/css/pages/gallery.pcss'
export default {
  name: 'Gallery'
}
</script>

<style scoped>

</style>
