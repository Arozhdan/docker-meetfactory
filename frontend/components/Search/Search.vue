<template>
  <div class="search__wrapper">
    <!--suppress HtmlFormInputWithoutLabel -->
    <input ref="inputRef" placeholder="Hledat..." class="search" type="text">
    <div class="search__icon" @click="focusInput" />
  </div>
</template>

<script>
import './search.pcss'
export default {
  name: 'Search',
  methods: {
    focusInput () {
      this.$refs.inputRef.focus()
    }
  }
}
</script>
