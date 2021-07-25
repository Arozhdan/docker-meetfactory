<template>
  <div class="container-full mx-auto">
    <h1 class="text-3xl text-red-800">
      COMPONENTS
    </h1>
    <Input
      :rules="{
        required:true,
        min:3,
        email:true
      }"
    >
      My label
    </Input>
    <div class="mt-10">
      <Cover>
        <template #title>
          Divadlo MeetFactory
        </template>
      </Cover>
    </div>
    <div class="mt-10">
      <Cover
        :links=" [
          {
            link: 'https://google.com',
            icon: 'Spotify'
          },
          {
            link: 'https://google.com',
            icon: 'ApplePodcast'
          },
          {
            link: 'https://google.com',
            icon: 'GooglePodcast'
          },
          {
            link: 'https://google.com',
            icon: 'PocketPodcast'
          },
          {
            link: 'https://google.com',
            icon: 'RadioPublic'
          },
          {
            link: 'https://google.com',
            icon: 'Breaker'
          }
        ]"
      >
        <template #title>
          Podcasty
        </template>
      </Cover>
    </div>
    <div class="mt-10">
      <CoverCenter
        :info="
          [{
            title:'Info 1',
            icon:'Camera'
          },{
            title:'Info 2',
            icon:'CalendarBlank'
          }
          ]"
        :tags="[
          {
            title:'Tag',
            link:'https://google.com',
            type:'white'
          },{
            title:'Tag2',
            link:'https://google.com',
            type:'black'
          },{
            title:'Tag3',
            link:'https://google.com',
            type:'red'
          }]"
        bg="https://images.unsplash.com/photo-1502872364588-894d7d6ddfab?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"
      >
        <template #title>
          Divadlo MeetFactory
        </template>
      </CoverCenter>
    </div>
    <div class="p-14">
      <div class="tag tag--black">
        123
      </div>
    </div>
    <div class="bg-gray-50 py-14 flex">
      <Button class="ml-4">
        Label
      </Button>
      <Button class="ml-4" icon="QrCode">
        Label
      </Button>
      <Button class="ml-4" icon="QrCode" disabled>
        Disabled
      </Button>
      <Button class="ml-4" icon="Icon">
        Lorem ipsum dolor sit amet.
      </Button>
    </div>
    <div class="bg-gray-50 py-14 flex">
      <Button class="ml-4 button--secondary">
        Label
      </Button>
      <Button class="ml-4 button--secondary" icon="QrCode">
        Label
      </Button>
      <Button class="ml-4 button--secondary" icon="QrCode" disabled>
        Disabled
      </Button>
      <Button class="ml-4 button--secondary" icon="Icon">
        Lorem ipsum dolor sit amet.
      </Button>
    </div>
    <div>
      <Searchbox />
    </div>
    <div class="w-2/3 mx-auto my-32">
      <Select :options=" ['foo', 'bar', 'baz', '1', '2', '3', '4', '5', 'foo1', 'bar1', 'baz1', '11', '21', '31', '41', '51']" />
    </div>
    <div class="w-2/3 mx-auto my-32">
      <Select label="Secondary" :white="true" :options=" ['foo', 'bar', 'baz', '1', '2', '3', '4', '5', 'foo1', 'bar1', 'baz1', '11', '21', '31', '41', '51']" />
    </div>
    <div class="flex mb-10">
      <Date />
      <Date class="ml-4" />
    </div>
    <div class="py-32 flex">
      <BigLink class="mr-2">
        Big button
      </BigLink>
      <BigLink type="white" class="ml-2">
        Big button
      </BigLink>
    </div>
    <div class="mt-12 mob--full-width">
      <EventCard />
    </div>
    <div class="mt-12 flex flex-wrap gap-x-4  mob--full-width">
      <EventCard />
      <EventCard />
      <EventCard />
      <EventCard class="w-full" />
      <EventCard />
      <EventCard />
    </div>
    <div class="my-12">
      <FullCalendar />
    </div>
    <div class="flex">
      <div class="">
        <EventCardSecondary />
      </div>
      <div class="ml-10">
        <EventCardSecondary />
      </div>
      <div class="ml-10">
        <EventCardSecondary />
      </div>
    </div>
    <div class="my-12 p-12 bg-black">
      <CustomCheck />
    </div>
    <div class="my-12 w-1/3">
      <h1 class="mb-3">
        Jak se k nám dostat?
      </h1>
      <client-only>
        <Map />
      </client-only>
      {{ $screen }}
    </div>
  </div>
</template>

<script>
// eslint-disable-next-line no-unused-vars
import { required, minLength, email, maxLength, sameAs } from 'vuelidate/lib/validators'
export default {
}
</script>
