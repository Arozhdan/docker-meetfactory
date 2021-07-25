<template>
  <div class="homepage ">
    <div class="container-full">
      <div class="homepage__top mb-9">
        <div class="homepage__top__left pt-8">
          <InfoCard :content="activeEvent" />
        </div>
        <div class="pt-8">
          <OverlayImage :picture="activeEvent.picture" />
        </div>
        <div>
          <p class="text-black opacity-60 font-neue-disp pl-4 text-base leading-none">
            Dnes v MeetFactory
          </p>
          <Schedule :items="events" :active-item="activeEvent.id" @hover="setActive" @mouseenter.native="hovered = true" @mouseleave.native="hovered = false" />
          <Button class="ml-4 mt-3" style="width: calc(100% - 16px);" icon="Icon">
            Celý program
          </Button>
        </div>
      </div>
      <div class="view-tablet mob--full-width">
        <client-only>
          <swiper :options="$store.state.swiperOptions">
            <swiper-slide>
              <MobileEventExpanded />
            </swiper-slide>
            <swiper-slide>
              <MobileEventExpanded />
            </swiper-slide>
            <swiper-slide>
              <MobileEventExpanded />
            </swiper-slide>
            <div slot="pagination" class="swiper-pagination" />
          </swiper>
        </client-only>
      </div>
      <div>
        <h1 class="h1">
          Výstavy probíhající v MeetFactory
        </h1>
        <div class="flex mt-8 mob--full-width gap-0 md:gap-x-10 flex-wrap">
          <EventCard />
          <EventCard />
          <EventCard />
        </div>
      </div>
      <div class="mt-9">
        <h1 class="h1">
          Nyní hrajeme v divadle
        </h1>
        <div class="grid grid-cols-1 md:grid-cols-3 mob--full-width mt-8 gap-0 md:gap-x-10 flex-wrap">
          <EventCard />
          <EventCard />
        </div>
      </div>
      <div class="mt-9">
        <h1 class="h1">
          Nenechte si ujít
        </h1>
        <div class="flex mt-8 mob--full-width gap-0 md:gap-x-10 flex-wrap">
          <EventCard img="https://images.unsplash.com/photo-1515342724109-4653eccad95f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" orientation="landscape" />
          <EventCard img="https://images.unsplash.com/photo-1515342724109-4653eccad95f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80" orientation="landscape" />
        </div>
      </div>
      <div class="flex justify-between mob--full-width flex-nowrap overflow-mob-scroll gap-10">
        <div>
          <h2 class="h2 mb-2">
            Plánované výstavy
          </h2>
          <OverlayImage />
        </div>
        <div>
          <h2 class="h2 mb-2">
            Plánované výstavy
          </h2>
          <OverlayImage />
        </div>
        <div>
          <h2 class="h2 mb-2">
            Plánované výstavy
          </h2>
          <OverlayImage />
        </div>
        <div>
          <h2 class="h2 mb-2">
            Plánované výstavy
          </h2>
          <OverlayImage />
        </div>
      </div>
      <div class="my-12">
        <FullCalendar />
      </div>
      <div class="flex mb-12">
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
      <div class="contacts">
        <div class="contacts__left">
          <h1 class="mb-10">
            Kontakt
          </h1>
          <h2 class="mb-4">
            MeetFactory, o. p. s.
          </h2>
          <p>
            Ke Sklárně 3213/15 <br>
            150 00 Praha 5 <br><br>
            IČO: 26466708<br>
            DIČ: CZ26466708 <br><br>
            č. ú.: 51-90790287/0100
          </p>
          <div class="contacts__contacts mt-1">
            <a href="#"><img src="../assets/icons/Phone.svg" alt=""><span>+420 251 551 796</span>  (kancelář)</a>
            <a href="#"><img src="../assets/icons/Phone.svg" alt=""><span>+420 226 209 027</span> (pokladna)</a>
            <a href="#"><img src="../assets/icons/Email.svg" alt=""><span>info@meetfactory.cz</span> </a>
          </div>
        </div>
        <div class="contacts__center">
          <h1>
            Otevírací doba
          </h1>
          <h2 class="mt-10 mb-4">
            MeetFactory
          </h2>
          <p>Denně od 13:00 do 20:00 hodin + dle večerního programu.</p>
          <h2 class="mt-7 mb-4">
            Galerie MeetFactory
          </h2>
          <p>Denně od 13:00 do 20:00 hodin.</p>
          <h2 class="mt-7 mb-4">
            Galerie Kostka
          </h2>
          <p>Denně od 13:00 do 20:00 hodin.</p>
          <h2 class="mt-7 mb-4">
            Divadlo
          </h2>
          <p>Dle představení od 19:00 do 22:00 hodin.</p>
          <h2 class="mt-7 mb-4">
            Letní kino Zeď
          </h2>
          <p>Středa po setmění, v červnu a červenci od 21:30, v srpnu a v září pak od 20:30.</p>
        </div>
        <div class="contacts__right">
          <h1 class="mb-3">
            Jak se k nám dostat?
          </h1>
          <client-only>
            <div class="mob--full-width">
              <Map />
            </div>
          </client-only>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import '../assets/css/pages/homepage.pcss'
// eslint-disable-next-line no-unused-vars
import { required, minLength, email, maxLength, sameAs } from 'vuelidate/lib/validators'
import events from '~/placeholder/events.json'
export default {
  data: () => ({
    events,
    activeEvent: undefined,
    interval: undefined,
    hovered: false,
    index: 0
  }),
  created () {
    this.activeEvent = events[0]
  },
  mounted () {
    this.interval = setInterval(() => {
      if (!this.hovered) {
        if (this.index < this.events.length) {
          this.activeEvent = this.events[this.index]
        }
        if (this.index + 1 < this.events.length) {
          this.index++
        } else {
          this.index = 0
        }
      }
    }, 4000)
  },
  methods: {
    setActive (item) {
      this.activeEvent = item
      this.index = this.events.findIndex(x => x.id === this.activeEvent.id)
    }
  }
}
</script>
