<template>
  <div class="info-card" :class="{'info-card--transition':transition}">
    <h1 class="h1">
      {{ content.title }}
    </h1>
    <p class="text-black mt-4 mb-8">
      {{ content.category }}
    </p>
    <div class="info-card__info">
      <div class="info-card__info-item">
        <img src="../../assets/icons/CalendarBlank.svg" alt="">
        <span>{{ date(content.dates[0].date) }}</span>
      </div>
      <div class="info-card__info-item">
        <img src="../../assets/icons/Clock.svg" alt="">
        <span>{{ content.dates[0].time }} – 23:30</span>
      </div>
    </div>
    <div class="info-card__tags mt-4 flex">
      <a v-for="tag in content.tags" :key="tag" href="#" class="tag mr-2" :class="'tag--'+ tag.type">{{ tag.title }}</a>
    </div>
  </div>
</template>

<script>
import './info-card.pcss'
export default {
  name: 'InfoCard',
  props: {
    content: {
      type: Object,
      default: () => ({
        title: '',
        category: '',
        date: '26. 7. 2020 – 12. 7. 2021',
        time: '20:00 – 23:30'
      })
    }
  },
  data: () => ({
    transition: false
  }),
  watch: {
    content () {
      this.transition = true
      setTimeout(() => {
        this.transition = false
      }, 1000)
    }
  },
  methods: {
    date (date) {
      return new Date(date).toLocaleDateString('cs-CS', {
        day: '2-digit',
        month: '2-digit',
        year: 'numeric'
      })
    }
  }
}
</script>

<style scoped>

</style>
