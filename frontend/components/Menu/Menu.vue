<template>
  <div class="menu">
    <div class="menu__inner">
      <div class="menu__nav">
        <div class="nav">
          <div class="nav__links">
            <nuxt-link :to="{name:'gallery'}" class="nav__link" :class="{'nav__link--active':active==='gallery'}" @mouseenter.native="active='gallery'">
              Galerie
            </nuxt-link>
            <nuxt-link :to="{name:'residence'}" class="nav__link" :class="{'nav__link--active':active==='residence'}" @mouseenter.native="active='residence'">
              Residence
            </nuxt-link>
            <nuxt-link :to="{name:'theater'}" class="nav__link" :class="{'nav__link--active':active==='theater'}" @mouseenter.native="active='theater'">
              Divadlo
            </nuxt-link>
            <nuxt-link :to="{name:'music'}" class="nav__link" :class="{'nav__link--active':active==='music'}" @mouseenter.native="active='music'">
              Hudba
            </nuxt-link>
          </div>
          <div class="logo nav__logo">
            <Search />
          </div>
          <div class="nav__right">
            <nuxt-link to="/" href="#" class="nav__right__meet" @mouseenter="active=false">
              MeetFactory
            </nuxt-link>
            <button href="#" class="nav__right__lang">
              EN
            </button>
          </div>
        </div>
      </div>
      <div v-show="activeItem" class="menu__body">
        <div class="menu__body__left">
          <div class="h1">
            {{ activeItem.title }}
          </div>
          <ul class="my-4">
            <li v-for="i in activeItem.links" :key="i" class="text-white opacity-60">
              <a :href="i.href">{{ i.label }}</a>
            </li>
          </ul>
        </div>
        <div class="menu__body__center">
          <OverlayImage :bg="activeItem.cover" />
        </div>
        <div class="menu__body__right">
          <InfoSmallCard />
          <InfoSmallCard />
          <InfoSmallCard />
          <InfoSmallCard />
          <InfoSmallCard />
          <InfoSmallCard />
        </div>
      </div>
      <div v-show="!activeItem" class="menu__body menu__body--menu ">
        <div class="menu__body__left">
          <div class="h1">
            Program
          </div>
          <ul class="my-4">
            <li class="text-white opacity-60">
              <a href="#">Další akce</a>
            </li>
            <li class="text-white opacity-60">
              <a href="#">Letní kino</a>
            </li>
            <li class="text-white opacity-60">
              <a href="#">Edukační programy</a>
            </li>
            <li class="text-white opacity-60">
              <a href="#">Podcasty</a>
            </li>
          </ul>
        </div>
        <div class="menu__body__left">
          <div class="h1">
            O nás
          </div>
          <ul class="my-4">
            <li class="text-white opacity-60">
              <a href="#">Virtuální prohlídka</a>
            </li>
            <li class="text-white opacity-60">
              <a href="#">Pronájem</a>
            </li>
            <li class="text-white opacity-60">
              <a href="#">Pracovní nabídky</a>
            </li>
            <li class="text-white opacity-60">
              <a href="#">Bar</a>
            </li>
            <li class="text-white opacity-60">
              <a href="#">E-shop</a>
            </li>
            <li class="text-white opacity-60">
              <a href="#">Výroční zprávy</a>
            </li>
            <li class="text-white opacity-60">
              <a href="#">Partneři</a>
            </li>
          </ul>
        </div>
        <div class="menu__body__left">
          <div class="h1">
            Kontakt
          </div>
          <ul class="my-4">
            <li class="text-white opacity-60">
              <a href="#">Otevírací doba</a>
            </li>
            <li class="text-white opacity-60">
              <a href="#">Jak k nám</a>
            </li>
            <li class="text-white opacity-60">
              <a href="#">Press</a>
            </li>
            <li class="text-white opacity-60">
              <a href="#">Ztráty a nálezy</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import './menu.pcss'

export default {
  name: 'Menu',
  data: () => ({
    active: false,
    menuItems: [
      {
        type: 'music',
        title: 'Hudba',
        cover: 'https://images.unsplash.com/photo-1514320291840-2e0a9bf2a9ae?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
        links: [
          { label: 'Program', href: '#' },
          { label: 'Hudební dramaturgie', href: '#' },
          { label: 'Pro kapelyv', href: '#' },
          { label: 'Archiv', href: '#' }
        ]
      },
      {
        type: 'gallery',
        title: 'Galerie',
        cover: 'https://images.unsplash.com/photo-1507643179773-3e975d7ac515?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
        links: [
          { label: 'Výstavy', href: '#' },
          { label: 'Program pro veřejnost', href: '#' },
          { label: 'Galerijní dramaturgie', href: '#' },
          { label: 'Publikace', href: '#' },
          { label: 'Archiv', href: '#' }
        ]
      },
      {
        type: 'theater',
        title: 'Divadlo',
        cover: 'https://images.unsplash.com/photo-1562329265-95a6d7a83440?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1264&q=80',
        links: [
          { label: 'Program', href: '#' },
          { label: 'Připravujeme', href: '#' },
          { label: 'Divadelní dramaturgie', href: '#' },
          { label: 'Archiv', href: '#' }
        ]
      },
      {
        type: 'residence',
        title: 'Rezidence',
        cover: 'https://images.unsplash.com/photo-1609271368026-c91c7886c92e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80',
        links: [
          { label: 'Program', href: '#' },
          { label: 'Otevřené výzvy', href: '#' },
          { label: 'Rezidence a rezidenti', href: '#' },
          { label: 'Minifestival', href: '#' }
        ]
      }
    ]
  }),
  computed: {
    activeItem () {
      if (this.active) {
        return this.menuItems.find((el) => {
          return el.type === this.active
        })
      } else {
        return false
      }
    }
  }
}
</script>
