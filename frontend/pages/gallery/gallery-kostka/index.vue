<template>
  <div class="gallery-page">
    <Cover bg="https://images.unsplash.com/photo-1623189183698-5248635274ca?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80">
      <template #title>
        Galerie Kostka
      </template>
    </Cover>
    <div class="container-full my-8">
      <p class="w-full md:w-1/2">
        Mezinárodní rezidenční programu byl založen v roce 2007 a je největším ateliérovým programem v České republice. MeetFactory dává k dispozici deset ateliérů, do kterých každoročně zve více než třicet výtvarných umělců, kurátorů, hudebníků, divadelních režisérů a spisovatelů. Podporujeme zapojení našich umělců nejen v rámci programu MeetFactory (otevřené ateliéry, prezentace, Veřejný dům, muzejní noci, atd.) a jeho tří výstavních prostor (výstavy, performance, komentované prohlídky atd.), ale také do kontextu české a evropských uměleckých scén.
      </p>
    </div>
    <div class="container-full">
      <h2 class="h2 mb-3">
        Fotogalerie
      </h2>
    </div>
    <GalleryPreview :to="{name:'gallery-kostka-gallery', params:{event: $route.params.event, gallery:'gallery-title' }}" :images="images" />

    <h1 class="container-full h1 mt-8 mb-3">
      Program galerie MeetFactory
    </h1>
    <div class="gallery-page__settings container-full mb-4">
      <Select label="Rok" :options=" ['2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021']" />
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
        <EventCard :to="{name:'gallery-kostka-event', params:{event:'event-name'}}" />
        <EventCard :to="{name:'gallery-kostka-event', params:{event:'event-other-name'}}" />
      </div>
    </div>
    <div style="margin-left: -2px; margin-right: -2px;" class="flex my-8 ">
      <BigLink>
        Výstavy
      </BigLink>
      <BigLink class="big-link--no-left-border">
        Program pro veřejnost
      </BigLink>
      <BigLink class="big-link--no-left-border">
        Galerijní dramaturgie
      </BigLink>
      <BigLink class="big-link--no-left-border">
        Publikace
      </BigLink>
    </div>
  </div>
</template>

<script>
import '~/assets/css/pages/gallery.pcss'
export default {
  name: 'Gallery Meetfactory',
  data: () => ({
    images: [
      'https://images.unsplash.com/photo-1622495805731-eefd22e836f4?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
      'https://images.unsplash.com/photo-1622549217773-2653d7463dd7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
      'https://images.unsplash.com/photo-1622549069429-c2053df4b69d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'https://images.unsplash.com/photo-1585399000684-d2f72660f092?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
      'https://images.unsplash.com/photo-1622496198859-7cebd677067f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'
    ]
  })
}
</script>

<style scoped>

</style>
