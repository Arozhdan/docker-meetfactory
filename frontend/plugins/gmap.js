import Vue from 'vue'
import * as VueGoogleMaps from 'vue2-google-maps'

Vue.use(VueGoogleMaps, {
  load: {
    key: 'AIzaSyAWpdCIQGRiub4_62kCJf_2qteaVgR26L8',
    libraries: 'places',
    region: 'CS',
    language: 'cs'
  }
})
