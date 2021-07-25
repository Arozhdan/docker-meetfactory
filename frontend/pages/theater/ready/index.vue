<template>
  <div class="theater-page">
    <Cover bg="https://images.unsplash.com/photo-1624380867169-4bf24a22bd9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80">
      <template #title>
        Připravujeme
      </template>
    </Cover>
    <div class="container-full my-8">
      <p class="w-full md:w-1/2">
        Stručný text o divadle v MeetFactory, aby lidé věděli (a Google také) o co jde a proč to tu je. Stručný text o divadle v MeetFactory, aby lidé věděli (a Google také) o co jde a proč to tu je. Stručný text o divadle v MeetFactory...
      </p>
    </div>
    <div class="container-full">
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-x-10 gap-y-4 mob--full-width mb-12">
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
      </div>
    </div>
    <div style="margin-left: -2px; margin-right: -2px;" class="flex my-8 gap-0.5">
      <BigLink :to="{name:'theater-repertoire'}">
        Repertoár
      </BigLink>
      <BigLink>
        Právě hrajeme
      </BigLink>
      <BigLink :to="{name:'theater-actors'}">
        Herci
      </BigLink>
      <BigLink :to="{name:'theater-archive'}">
        Archiv
      </BigLink>
    </div>
  </div>
</template>

<script>
import '~/assets/css/pages/theater.pcss'
export default {
  name: 'Theater'
}
</script>

<style scoped>

</style>
