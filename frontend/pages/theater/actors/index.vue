<template>
  <div class="theater-page theater-page--actors ">
    <Cover bg="https://images.unsplash.com/photo-1624380867169-4bf24a22bd9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80">
      <template #title>
        Herci
      </template>
    </Cover>
    <div class="container-full my-8">
      <p class="w-full md:w-1/2">
        Několik vět o hercích, jaký je jejich vývoj a jak jsou důležití pro divadlo a především pro MF.
      </p>
    </div>

    <div class="container-full">
      <div class="theater-page__settings ">
        <Select label="Rok" :options=" ['2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021']" />
        <div class="flex-grow spacer" />
        <Searchbox class="self-center" placeholder="Hledat herce ..." />
      </div>
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-x-10 gap-y-4 mob--full-width mb-12">
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
        <EventCard :to="{name:'theater-event', params:{event:'theater-event'}}" />
      </div>
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
