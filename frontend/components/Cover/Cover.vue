<template>
  <div class="cover" style="padding-bottom:38%;" :style="'backgroundImage:url('+ bg +')'">
    <!-- Change padding bottom in CMS to update proportion -->
    <div class="cover__inner md:flex">
      <h3 class="cover__title">
        <slot name="title" />
      </h3>
      <div v-if="links.length" class="cover__links flex justify-end mt-4 md:block md:mt-0">
        <a v-for="link in links" :key="link.src" :href="link.link">
          <img :src="require(`~/assets/icons/${link.icon}.svg`)" alt="">
        </a>
      </div>
    </div>
  </div>
</template>

<script>
import './cover.pcss'
export default {
  name: 'Cover',
  props: {
    links: {
      type: Array,
      default: () => { return [] }
    },
    bg: {
      type: String,
      default: () => { return 'https://via.placeholder.com/1668x600?text=Image+Placeholder' }
    }
  },
  data: () => ({
  })
}
</script>
