<template>
  <div class="residence-page">
    <Cover bg="https://images.unsplash.com/photo-1419242902214-272b3f66ee7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1387&q=80">
      <template #title>
        Rezidence
      </template>
    </Cover>
    <div class="container-full my-8">
      <p class="w-full md:w-1/2">
        Mezinárodní rezidenční programu byl založen v roce 2007 a je největším ateliérovým programem v České republice. MeetFactory dává k dispozici deset ateliérů, do kterých každoročně zve více než třicet výtvarných umělců, kurátorů, hudebníků, divadelních režisérů a spisovatelů. Podporujeme zapojení našich umělců nejen v rámci programu MeetFactory (otevřené ateliéry, prezentace, Veřejný dům, muzejní noci, atd.) a jeho tří výstavních prostor (výstavy, performance, komentované prohlídky atd.), ale také do kontextu české a evropských uměleckých scén.
      </p>
    </div>
    <div class="big-links-wrapper block my-8 mx-4 sm:flex sm:mx-0 ">
      <BigLink type="white" :to="{name:'residence-residences'}" class="mb-11 sm:mx-0 sm:mb-0">
        Rezidence a rezidenti
      </BigLink>
      <BigLink type="white" class="big-link--no-left-border">
        Otevřené výzvy
      </BigLink>
    </div>
    <div class="container-full my-7">
      <h2 class="h2 mb-3">
        Spolupráce
      </h2>
      <p>MeetFactory spolupracuje s následujícími institucemi:</p>
      <ul class="list mt-1">
        <li>AIR Antwerpen </li>
        <li>ARTPORT Tel Aviv </li>
        <li>European Center for Contemporary Art Projects CEAAC Strasbourg, </li>
        <li>French Institute, Prague</li>
        <li>Goethe Institute, Prague</li>
        <li>U.S. Embassy, Prague</li>
      </ul>
      <h2 class="h2 mb-3 mt-7">
        Spolupráce
      </h2>
      <ul class="list mt-1">
        <li>Lucia Kvočáková </li>
        <li>Piotr Sikora </li>
      </ul>
    </div>
    <div class="container-full my-9">
      <h1 class="h1">
        Akce rezidentů
      </h1>
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-x-10 gap-y-4 mob--full-width  mt-9">
        <EventCard :to="{name:'residence-event', params:{event:'residence-event'}}" />
        <EventCard :to="{name:'residence-event', params:{event:'residence-event'}}" />
        <EventCard :to="{name:'residence-event', params:{event:'residence-event'}}" />
      </div>
    </div>
    <GalleryPreview :to="{name: 'residence-gallery', params:{gallery:'gallery-title'}}" :images="images" />
    <div class="big-links-wrapper block my-8 mx-4 sm:flex sm:mx-0 ">
      <BigLink type="white" :to="{name:'residence-residences'}" class="mb-11 sm:mx-0 sm:mb-0">
        Plány ateliérů
      </BigLink>
      <BigLink type="white" class="big-link--no-left-border">
        Otevřené výzvy
      </BigLink>
    </div>
  </div>
</template>

<script>
import '~/assets/css/pages/residence.pcss'
export default {
  name: 'Residence',
  data: () => ({
    images: [
      'https://images.unsplash.com/photo-1622495805731-eefd22e836f4?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
      'https://images.unsplash.com/photo-1622549217773-2653d7463dd7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
      'https://images.unsplash.com/photo-1622549069429-c2053df4b69d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'https://images.unsplash.com/photo-1622498159371-15d14f8acdaa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2200&q=80',
      'https://images.unsplash.com/photo-1585399000684-d2f72660f092?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80',
      'https://images.unsplash.com/photo-1622496198859-7cebd677067f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
      'https://images.unsplash.com/photo-1622367688327-1004c837e139?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      'https://images.unsplash.com/photo-1622396090014-0dc5f3844b72?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
      'https://images.unsplash.com/photo-1593642634443-44adaa06623a?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1225&q=80',
      'https://images.unsplash.com/photo-1622495519717-966150e7118e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=630&q=80'
    ]
  })
}
</script>
