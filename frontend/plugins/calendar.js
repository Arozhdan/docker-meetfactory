import Vue from 'vue'
import Calendar from 'v-calendar/lib/components/calendar.umd'
import DatePicker from 'v-calendar/lib/components/date-picker.umd'

Vue.component('Calendar', Calendar)
Vue.component('DatePicker', DatePicker)

export default {
  components: {
    Calendar,
    DatePicker
  }
}
