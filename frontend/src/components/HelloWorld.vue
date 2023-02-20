<template>
  <div>
    <p>{{ message }}</p>
    <input v-model="message">
  </div>
</template>

<script>
export default {
  name: "amema",
  data: () => ({
    message: "amema"
  })
};
</script>
