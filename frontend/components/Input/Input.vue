<template>
  <div class="input" :class="{'input--empty':isEmpty, 'input--error':error}">
    <label>
      <span><slot /></span>
      <input v-model="$v.content.$model" type="text">
      <template v-if="rules.required">
        <img v-if="!isEmpty && !error" src="../../assets/icons/Check.svg" alt="">
        <img v-if="isEmpty || error" src="../../assets/icons/Asterisk.svg" alt="">
      </template>
    </label>
  </div>
</template>

<script>
import './input.pcss'
// eslint-disable-next-line no-unused-vars
import { required, minLength, email, maxLength, sameAs } from 'vuelidate/lib/validators'
export default {
  name: 'Inputs',
  props: {
    rules: {
      type: Object,
      default: () => { return { required: true } }
    }
  },
  data () {
    return {
      content: ''
    }
  },
  computed: {
    isEmpty () {
      return this.content.length === 0
    },
    error () {
      return this.$v.$dirty && this.$v.$invalid
    }
  },
  validations () {
    const check = []
    const task = () => {
      if (this.rules.required) {
        check.push(required)
      }
      if (this.rules.email) {
        check.push(email)
      }
      if (this.rules.min) {
        check.push(minLength(this.rules.min))
      }
    }
    task()
    return { content: { ...check } }
  }
}
</script>
