<template>
  <p>{{ counter }}</p>
  <p v-if="counter < 5">5보다 작습니다.</p>
  <p v-else-if="counter == 5">5와 같습니다</p>
  <p v-else>5보다 큽니다.</p>
  <button @click="counter++">클릭하면 숫자가 올라갑니다.</button>
</template>

<script>
import { ref } from "vue";

export default {
  // Composition API
  setup() {
    const counter = ref(0);
    return {
      counter,
    };
  },
};
</script>
