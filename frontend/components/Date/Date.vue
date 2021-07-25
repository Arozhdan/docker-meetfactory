<template>
  <div class="date-wrapper">
    <div class="filter" @click="visible=!visible">
      <span><slot /></span>
      <!--      {{ title.getDate() + ' / ' + title.getMonth() }}-->
      <img src="../../assets/icons/Filter.svg" alt="">
    </div>
    <div v-show="visible">
      <DatePicker
        v-model="selectedDate"
        :attributes="attrs"
        :locale="{ id: 'cs', firstDayOfWeek: 2, masks: { weekdays: 'WW' } }"
      />
    </div>
  </div>
</template>

<script>
import './date.pcss'
export default {
  name: 'Date',
  data: () => ({
    visible: false,
    selectedDate: null,
    attrs: [
      {
        key: 'today',
        highlight: {
          class: 'today'
        },
        dates: new Date()
      }
    ]
  }),
  computed: {
    title () {
      return this.selectedDate ? this.selectedDate : 'title'
    }
  },
  watch: {
    selectedDate () {
      this.visible = false
    }
  }
}
</script>

<style scoped>

</style>
