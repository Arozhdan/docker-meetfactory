<template>
  <div class="search-box">
    <!--suppress HtmlFormInputWithoutLabel -->
    <input ref="inputRef" :placeholder="placeholder" class="search" type="text">
    <div class="search__icon" @click="focusInput" />
  </div>
</template>

<script>
import './searchbox.pcss'
export default {
  name: 'Searchbox',
  props: {
    placeholder: {
      type: String,
      default: 'Hledat...'
    }
  },
  methods: {
    focusInput () {
      this.$refs.inputRef.focus()
    }
  }
}
</script>

<style scoped>

</style>
