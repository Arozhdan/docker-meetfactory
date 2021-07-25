import Vue from 'vue'
import Router from 'vue-router'

// Pages --INDEX
import Homepage from '~/pages/index'
//

// Pages --Event
import EventPage from '~/pages/_event/_event'

// Pages --GalleryCarousel
import GalleryPage from '~/pages/_images/_gallery'

// Pages --Gallery
import Gallery from '~/pages/gallery/index'

import GalleryMeet from '~/pages/gallery/gallery-meet/index'
import GalleryKostka from '~/pages/gallery/gallery-kostka/index'
import GalleryPrograms from '~/pages/gallery/gallery-programs/index'

// Pages --Music
import IndexMusic from '~/pages/music/index'

// Pages --Residence
import IndexResidence from '~/pages/residence/index'
import ResidenceResidences from '~/pages/residence/residences/index'
//

// Pages --Theater
import IndexTheater from '~/pages/theater/index'

import TheaterRepertoire from '~/pages/theater/repertoire/index'

import TheaterReady from '~/pages/theater/ready/index'

import TheaterDramaturgy from '~/pages/theater/dramaturgy/index'

import TheaterArchive from '~/pages/theater/archive/index'

import TheaterActors from '~/pages/theater/actors/index'

//
Vue.use(Router)

export function createRouter () {
  return new Router({
    scrollBehavior (to, from, savedPosition) {
      const defaultPosition = false
      const scrollTopPosition = { x: 0, y: 0 }
      let position = defaultPosition
      if (savedPosition) {
        position = savedPosition
      } else if (to.matched.length < 2) {
        position = scrollTopPosition
      } else if (to.matched.some(child => child.components.default.options.scrollToTop)) {
        position = scrollTopPosition
      }

      return new Promise((resolve) => {
        window.$nuxt.$once('triggerScroll', () => {
          if (to.hash && document.querySelector(to.hash)) {
            position = { selector: to.hash }
          }

          resolve(position)
        })
      })
    },
    mode: 'history',
    routes: [
      {
        name: 'index',
        path: '/',
        component: Homepage
      }, {
        name: 'gallery',
        path: '/gallery',
        component: Gallery
      },
      {
        name: 'gallery-event',
        path: '/gallery/:event',
        component: EventPage
      },
      {
        name: 'gallery-event-gallery',
        path: '/gallery/:event/:gallery',
        component: GalleryPage
      },
      {
        name: 'gallery-meet',
        path: '/gallery-meet',
        component: GalleryMeet
      },
      {
        name: 'gallery-meet-gallery',
        path: '/gallery-meet/gallery/:gallery',
        component: GalleryPage
      },
      {
        name: 'gallery-meet-event',
        path: '/gallery-meet/:event',
        component: EventPage
      },
      {
        name: 'gallery-meet-event-gallery',
        path: '/gallery-meet/:event/:gallery',
        component: GalleryPage
      },
      {
        name: 'gallery-kostka',
        path: '/gallery-kostka',
        component: GalleryKostka
      },
      {
        name: 'gallery-kostka-gallery',
        path: '/gallery-kostka/gallery/:gallery',
        component: GalleryPage
      },
      {
        name: 'gallery-kostka-event',
        path: '/gallery-kostka/:event',
        component: EventPage
      },
      {
        name: 'gallery-kostka-event-gallery',
        path: '/gallery-kostka/:event/:gallery-title',
        component: GalleryPage
      },
      {
        name: 'gallery-programs',
        path: '/gallery-programs',
        component: GalleryPrograms
      },
      {
        name: 'gallery-programs-event',
        path: '/gallery-programs/:event',
        component: EventPage
      },
      {
        name: 'gallery-programs-event-gallery',
        path: '/gallery-programs/:event/:gallery',
        component: GalleryPage
      },
      {
        name: 'music',
        path: '/hudba',
        component: IndexMusic
      },
      {
        name: 'music-event',
        path: '/hudba/:event',
        component: EventPage
      },
      {
        name: 'music-event-gallery',
        path: '/hudba/:event/:gallery',
        component: GalleryPage
      },
      {
        name: 'residence',
        path: '/residence',
        component: IndexResidence
      },
      {
        name: 'residence-residences',
        path: '/residence/residences',
        component: ResidenceResidences
      },
      {
        name: 'residence-residences-event',
        path: '/residence/residences/:event',
        component: EventPage
      },
      {
        name: 'residence-residences-event-gallery',
        path: '/residence/residences/:event/:gallery',
        component: GalleryPage
      },
      {
        name: 'residence-event',
        path: '/residence/:event',
        component: EventPage
      },
      {
        name: 'residence-gallery',
        path: '/residence/images/:gallery',
        component: GalleryPage
      },
      {
        name: 'residence-event-gallery',
        path: '/residence/:event/:gallery',
        component: GalleryPage
      },
      {
        name: 'theater',
        path: '/divadlo',
        component: IndexTheater
      },
      {
        name: 'theater-repertoire',
        path: '/divadlo/repertoire',
        component: TheaterRepertoire
      },
      {
        name: 'theater-event-gallery',
        path: '/divadlo/:event/:gallery',
        component: GalleryPage
      },
      {
        name: 'theater-ready',
        path: '/divadlo/ready',
        component: TheaterReady
      },
      {
        name: 'theater-dramaturgy',
        path: '/divadlo/dramaturgy',
        component: TheaterDramaturgy
      },
      {
        name: 'theater-archive',
        path: '/divadlo/archive',
        component: TheaterArchive
      },
      {
        name: 'theater-actors',
        path: '/divadlo/actors',
        component: TheaterActors
      },
      {
        name: 'theater-event',
        path: '/divadlo/:event',
        component: EventPage
      }
    ]
  })
}
