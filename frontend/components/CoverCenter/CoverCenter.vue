<template>
  <div class="cover--center" style="padding-bottom:38%;" :style="'backgroundImage:url('+ bg +')'">
    <!-- Change padding bottom in CMS to update proportion -->
    <h3 class="cover--center__title">
      <slot name="title" />
    </h3>
    <div class="cover--center__inner">
      <div class="cover--center__info">
        <div v-for="i in info" :key="i">
          <img :src="require(`~/assets/icons/${i.icon}.svg`)" alt=""> <span>{{ i.title }}</span>
        </div>
      </div>
      <div class="cover--center__tags">
        <div v-for="tag in tags" :key="tag">
          <a class="tag" :class="tag.type? 'tag--'+ tag.type : ''" :href="tag.link">{{ tag.title }}</a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import './cover.pcss'
export default {
  name: 'Cover',
  props: {
    info: {
      type: Array,
      default: () => ([])
    },
    tags: {
      type: Array,
      default: () => ([])
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

<style scoped>

</style>
