<template>
  <div>
    <h1>ユーザー一覧</h1>
    <p>利用者:</p>
    <User />
  </div>
</template>

<script>
import User from "../components/User.vue";

export default {
  name: 'UsersIndex',
  components: {
    User
  }
}
</script>

<style>

</style>
