<template>
  <div class="gallery-page">
    <Cover bg="https://images.unsplash.com/photo-1623189839274-bd5f628be293?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80">
      <template #title>
        Doprovodné programy
      </template>
    </Cover>
    <div class="container-full my-8">
      <p class="w-full md:w-1/2">
        Mezinárodní rezidenční programu byl založen v roce 2007 a je největším ateliérovým programem v České republice. MeetFactory dává k dispozici deset ateliérů, do kterých každoročně zve více než třicet výtvarných umělců, kurátorů, hudebníků, divadelních režisérů a spisovatelů. Podporujeme zapojení našich umělců nejen v rámci programu MeetFactory (otevřené ateliéry, prezentace, Veřejný dům, muzejní noci, atd.) a jeho tří výstavních prostor (výstavy, performance, komentované prohlídky atd.), ale také do kontextu české a evropských uměleckých scén.
      </p>
    </div>
    <div class="gallery-page__settings container-full mb-4">
      <Select label="Rok" :options=" ['2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021']" />
      <Select label="Galerie" :options=" ['2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021']" />
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
        <EventCard :to="{name:'gallery-programs-event', params:{event:'event-name'}}" />
        <EventCard :to="{name:'gallery-programs-event', params:{event:'event-name2'}}" />
        <EventCard :to="{name:'gallery-programs-event', params:{event:'event-name3'}}" />
        <EventCard :to="{name:'gallery-programs-event', params:{event:'event-name4'}}" />
        <EventCard :to="{name:'gallery-programs-event', params:{event:'event-name5'}}" />
      </div>
    </div>
  </div>
</template>

<script>
import '~/assets/css/pages/gallery.pcss'
export default {
  name: 'Gallery Meetfactory'

}
</script>

<style scoped>

</style>
