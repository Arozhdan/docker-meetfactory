<template>
  <div class="custom-check flex">
    <label>
      <input v-model="checked" type="checkbox">
      <span />
    </label>
    <div class="custom-check__text flex ml-4 text-white">
      <p class="cursor-pointer" @click="checked=!checked">
        Souhlasím se <a href="#" target="_blank" class="underline" @click.stop=""> zpracováním osobních údajů</a>
      </p>
    </div>
  </div>
</template>

<script>
import './custom-check.pcss'
export default {
  name: 'CustomCheck',
  data: () => ({
    checked: false
  })
}
</script>

<style scoped>

</style>
