<template>
  <div class="map" @mouseleave="recenter">
    <GmapMap
      ref="mapRef"
      :center="{lat:50.053257, lng:14.4059734}"
      :zoom="16"
      map-type-id="terrain"
      :options="{
        zoomControl: false,
        fullscreenControl: false,
        styles: mapStyles,
        mapTypeControl: false,
        streetViewControl: false,
        rotateControl: false,
        gestureHandling: 'auto',
        minZoom: 7
      }"
    >
      <GmapMarker
        :position="{lat:50.053257, lng:14.4059734}"
        :clickable="true"
        title="meetfactory"
        :icon="require('../../assets/icons/LocationMeet.svg')"
        @click="markerClick"
      />
    </GmapMap>
    <div class="h2 map__title">
      Jak do MeetFactory?
    </div>
  </div>
</template>

<script>
import styles from './style.json'
import './map.pcss'
export default {
  name: 'Map',
  data: () => ({
    mapStyles: styles,
    markerInfo: false
  }),
  mounted () {
    this.$refs.mapRef.$mapPromise.then((map) => {
      map.panTo({ lat: 50.053257, lng: 14.4059734 })
    })
  },
  methods: {
    recenter () {
      this.$refs.mapRef.$mapPromise.then((map) => {
        map.panTo({ lat: 50.053257, lng: 14.4059734 })
      })
    },
    markerClick () {
      const url = 'https://www.google.com/maps/place/MeetFactory,+Ke+Skl%C3%A1rn%C4%9B,+Prague+5-Sm%C3%ADchov/@50.0819889,14.4128241,14z/data=!4m5!3m4!1s0x470b9440f983eb57:0x4d27afd3ca133df5!8m2!3d50.053257!4d14.4081621'
      this.markerInfo = true
      window.open(url, '_blank').focus()
    }
  }
}
</script>
