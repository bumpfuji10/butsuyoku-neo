<template>
  <div>
    <p>{{ msg }}</p>
    <input v-model="msg">
  </div>
</template>

<script>
export default {
  name: "amema",
  props: ['msg'], //親コンポーネントからmessageを受け取る
};
</script>
