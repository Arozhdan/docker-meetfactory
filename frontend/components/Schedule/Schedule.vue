<template>
  <div class="schedule" :class="{'schedule--black' : color==='black'} ">
    <a
      v-for="i in items"
      :key="i.id"
      href="#"
      class="schedule__item py-4 block"
      :class="{'schedule__item--border':i.id===activeItem,'schedule__item--crossed': i.type.includes('crossed')}"
      @mouseenter="$emit('hover', i)"
    >
      <h3 class="h3 mb-1">
        {{ i.title }}
      </h3>
      <p class="text-black opacity-60">
        {{ i.category }}
      </p>
    </a>
  </div>
</template>

<script>
import './schedule.pcss'
export default {
  name: 'Schedule',
  props: {
    color: {
      type: String,
      default: 'white'
    },
    items: {
      type: Array,
      default: () => ([
        {
          title: 'Event name',
          category: 'Dramaturgy',
          type: '',
          id: '12321'
        },
        {
          title: 'Event name',
          category: 'Dramaturgy',
          type: 'crossed',
          id: '214214'
        },
        {
          title: 'Event name',
          category: 'Dramaturgy',
          type: 'border',
          id: '32142'
        },
        {
          title: 'Event name',
          category: 'Dramaturgy',
          type: '',
          id: '214'
        },
        {
          title: 'Event name',
          category: 'Dramaturgy',
          type: '',
          id: '12412'
        },
        {
          title: 'Event name',
          category: 'Dramaturgy',
          type: 'crossed',
          id: '12421'
        }
      ])
    },
    activeItem: {
      type: String,
      default: ''
    }
  }
}
</script>
