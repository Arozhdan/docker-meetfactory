<template>
  <div class="select__wrapper" :class="{'select__wrapper--empty':isEmpty && !search, 'select__wrapper--white' : white}">
    <client-only>
      <v-select
        ref="select"
        v-model="selected"
        :options="paginated"
        @open="onOpen"
        @close="onClose"
        @search="query => search = query"
      >
        <template #open-indicator="{ attributes }">
          <span v-bind="attributes"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M19.5 9L12 16.5L4.5 9" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
          </svg>
          </span>
        </template>
        <template #list-footer>
          <li v-show="hasNextPage" ref="loading" class="loader">
            Loading more options...
          </li>
        </template>
      </v-select>
    </client-only>
    <span class="select__placeholder">{{ label }}</span>
  </div>
</template>

<script>
import 'vue-select/dist/vue-select.css'
import './select.pcss'
export default {
  name: 'Select',
  props: {
    options: {
      type: Array,
      default: () => ([])
    },
    white: {
      type: Boolean,
      default: false
    },
    label: {
      type: String,
      default: 'Select'
    }
  },
  data () {
    return {
      selected: null,
      search: '',
      limit: 5
    }
  },
  computed: {
    isEmpty () {
      return this.selected === null
    },
    filtered () {
      return this.options.filter(item => item.includes(this.search))
    },
    paginated () {
      return this.filtered.slice(0, this.limit)
    },
    hasNextPage () {
      return this.paginated.length < this.filtered.length
    }
  },
  mounted () {
    this.observer = new IntersectionObserver(this.infiniteScroll)
  },
  methods: {
    async onOpen () {
      if (this.hasNextPage) {
        await this.$nextTick()
        this.observer.observe(this.$refs.loading)
      }
    },
    onClose () {
      this.observer.disconnect()
    },
    async infiniteScroll ([{ isIntersecting, target }]) {
      if (isIntersecting) {
        const ul = target.offsetParent
        const scrollTop = target.offsetParent.scrollTop
        this.limit += 10
        await this.$nextTick()
        ul.scrollTop = scrollTop
      }
    }
  }
}
</script>
