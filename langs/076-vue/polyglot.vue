<!-- polyglot-100 :: entry 076 :: Vue single-file component -->
<script setup>
import { computed, ref } from 'vue'

const entries = ref(100)
const sum = computed(() =>
  Array.from({ length: 10 }, (_, i) => i + 1).reduce((a, b) => a + b, 0)
)

function fib(n) {
  let [a, b] = [0, 1]
  for (let i = 0; i < n; i++) [a, b] = [b, a + b]
  return a
}

const fibTen = computed(() => fib(10))
const share = computed(() => `${100 / entries.value}%`)
</script>

<template>
  <section>
    <h1>Hello from Vue!</h1>
    <p>sum(1..10) = {{ sum }}</p>
    <p>fib(10) = {{ fibTen }}</p>
    <div class="bar" :style="{ '--share': share }" />
  </section>
</template>

<style scoped>
.bar { block-size: 0.75rem; inline-size: var(--share); }
</style>
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup  -->
<!-- Vue -- entry 076 of 100 in the polyglot-100 archive. Family: Markup & Style -->
