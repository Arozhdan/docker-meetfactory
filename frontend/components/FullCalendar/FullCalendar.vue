<template>
  <div class="full-calendar">
    <DatePicker
      v-model="selectedDate"
      :attributes="attrs"
      :locale="{ id: 'cs', firstDayOfWeek: 2, masks: { weekdays: shortTitles? 'WW' : 'WWWW' } }"
    />
  </div>
</template>

<script>
import './fullcalendar.pcss'
export default {
  name: 'FullCalendar',
  props: {
    shortTitles: {
      type: Boolean,
      default: false
    }
  },
  data: () => ({
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
  })
}
</script>

<style scoped>

</style>
