<template>
  <div class="residence-page">
    <Cover bg="https://images.unsplash.com/photo-1568823657762-27a57a631b28?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80">
      <template #title>
        Rezidence a rezidenti
      </template>
    </Cover>
    <div class="container-full my-8">
      <p class="w-full md:w-1/2">
        Mezinárodní rezidenční programu byl založen v roce 2007 a je největším ateliérovým programem v České republice. MeetFactory dává k dispozici deset ateliérů, do kterých každoročně zve více než třicet výtvarných umělců, kurátorů, hudebníků, divadelních režisérů a spisovatelů. Podporujeme zapojení našich umělců nejen v rámci programu MeetFactory (otevřené ateliéry, prezentace, Veřejný dům, muzejní noci, atd.) a jeho tří výstavních prostor (výstavy, performance, komentované prohlídky atd.), ale také do kontextu české a evropských uměleckých scén.
      </p>
    </div>
    <div class="container-full my-7">
      <div class="w-1/2">
        <h1 class="h1 mb-4">
          Koncepce rezidenčního programu
        </h1>
        <p>
          Mezinárodní rezidenční program je jednou z klíčových částí dramaturgické koncepce MeetFactory. Program stojí na dvou pilířích: na rezidenčních pobytech zahraničních umělců u nás a na výměnných programech (recipročních rezidencích).
          MeetFactory disponuje v prvním patře budovy prostory o rozloze 3500 m2 s 15 ateliéry. Ročně je poskytuje pro rezidenci až 15 zahraničním umělcům. Základem jsou mezinárodní rezidence umělců zaměřených na vizuální umění. V průběhu let měla MeetFactory čest hostit umělce z různých částí světa.
          MeetFactory uchopuje umění unikátním způsobem a proto se chce rezidenční program otevřít tématům a ideám, která souvisejí s identitou střední Evropy. Momentálně pracujeme na projektu, který kombinuje současné politické problémy, kulturní studie a spekulativní možnosti umění.
        </p>
        <h2 class="h2 mt-7 mb-3">
          Kurátoři
        </h2>
        <a href="#" class="link--person block">Lucia Kvočáková</a>
        <a href="#" class="link--person block mt-2">Piotr Sikora</a>
        <div class="my-8">
          <Embed url="https://www.youtube.com/watch?v=io-BG2YhXrA" />
        </div>
      </div>
    </div>
    <div style="margin-left: -2px; margin-right: -2px;" class="flex my-8 ">
      <BigLink type="white" to="/residence/residences">
        Otevřené výzvy
      </BigLink>
      <BigLink type="white" to="/residence" class="big-link--no-left-border">
        Rezidence
      </BigLink>
    </div>
    <div class="container-full my-9">
      <h1 class="h1">
        Rezidenti v MeetFactory
      </h1>
      <div class="gallery-page__settings mb-4">
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
        <Searchbox class="self-center" placeholder="Jméno rezidenta" />
      </div>
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-x-10 gap-y-4 mob--full-width  mt-9">
        <EventCard :to="{name:'residence-residences-event', params: {event: 'event-title'}}" />
        <EventCard :to="{name:'residence-residences-event', params: {event: 'event-title'}}" />
        <EventCard :to="{name:'residence-residences-event', params: {event: 'event-title'}}" />
        <EventCard :to="{name:'residence-residences-event', params: {event: 'event-title'}}" />
        <EventCard :to="{name:'residence-residences-event', params: {event: 'event-title'}}" />
        <EventCard :to="{name:'residence-residences-event', params: {event: 'event-title'}}" />
      </div>
    </div>
  </div>
</template>

<script>
import '~/assets/css/pages/residence.pcss'
export default {
  name: 'Residence'
}
</script>

<style scoped>

</style>
