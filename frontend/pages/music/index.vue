<template>
  <div class="music-page">
    <Cover bg="https://images.unsplash.com/photo-1507838153414-b4b713384a76?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80">
      <template #title>
        Hudba v MeetFactory
      </template>
    </Cover>
    <div class="container-full my-8">
      <p class="w-full md:w-1/2">
        Stručný text o divadle v MeetFactory, aby lidé věděli (a Google také) o co jde a proč to tu je. Stručný text o divadle v MeetFactory, aby lidé věděli (a Google také) o co jde a proč to tu je. Stručný text o divadle v MeetFactory...
      </p>
    </div>
    <div class="container-full">
      <h1 class="h1 my-8">
        Hrajeme
      </h1>
      <div class="music-page__settings ">
        <Date>Kalendář</Date>
        <FullCalendar :short-titles="true" />
        <Button class="button--secondary">
          7 dní
        </Button>
        <Button class="button--secondary">
          30 dní
        </Button>
        <Button class="button--secondary">
          90 dní
        </Button>
        <div class="flex-grow spacer" />
        <Searchbox class="self-center" placeholder="Hledat v hudbě ..." />
      </div>
    </div>
    <div class="container-full  mb-12">
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-x-10 gap-y-4 mob--full-width">
        <EventCard :to="{name:'music-event', params:{event: 'music-event'}}" />
        <EventCard :to="{name:'music-event', params:{event: 'music-event'}}" />
        <EventCard :to="{name:'music-event', params:{event: 'music-event'}}" />
        <EventCard :to="{name:'music-event', params:{event: 'music-event'}}" />
        <EventCard :to="{name:'music-event', params:{event: 'music-event'}}" />
        <EventCard :to="{name:'music-event', params:{event: 'music-event'}}" />
        <EventCard :to="{name:'music-event', params:{event: 'music-event'}}" />
      </div>
      <div class="flex justify-center items-center mt-4">
        <Button>
          Načíst další...
        </Button>
      </div>
    </div>
  </div>
</template>

<script>
import '~/assets/css/pages/music.pcss'
export default {
  name: 'Theater'
}
</script>

<style scoped>

</style>
