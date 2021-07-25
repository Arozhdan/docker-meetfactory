<template>
  <nuxt-link :to="to" class="event-card">
    <div class="event-card__top" :class="'event-card__top--'+orientation" :style="'backgroundImage:url('+img+')'">
      <div class="event-card__top__inner">
        <div class="event-card__top-cover">
          <img src="../../assets/icons/ArrowDownRight.svg" alt="">
        </div>
        <div class="event-card__tags">
          <div class="tag">
            Some realy long tag
          </div>
          <div class="tag tag--black">
            wooow this one is even longer
          </div>
          <div class="tag tag--black">
            tag
          </div>
        </div>
      </div>
    </div>
    <div class="event-card__bottom">
      <div>
        <h2 class="event-card__title">
          Title
        </h2>
      </div>
      <div class="event-card__info">
        <div class="event-card__info-item">
          <img src="../../assets/icons/CalendarBlank.svg" alt="">
          <span>Date</span>
        </div>
        <div class="event-card__info-item">
          <img src="../../assets/icons/Clock.svg" alt="">
          <span>Time</span>
        </div>
      </div>
      <div class="event-card__categories">
        <span>Category</span>
      </div>
      <div class="event-card__description">
        Description
      </div>
    </div>
  </nuxt-link>
</template>

<script>
import './event-card.pcss'
export default {
  name: 'EventCard',
  props: {
    orientation: {
      type: String,
      default: 'portrait'
    },
    img: {
      type: String,
      default: 'https://images.unsplash.com/photo-1486074051793-e41332bf18fc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'
    },
    // eslint-disable-next-line vue/require-prop-types
    to: {
      default: '/'
    }
  }
}
</script>

<style scoped>

</style>
