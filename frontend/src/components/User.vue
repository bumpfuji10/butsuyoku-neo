<template>
  <div>
    <h1>ユーザー一覧</h1>
    <p>利用者:</p>
    <p>{{ users }}</p>
    <button type="submit" @click="fetchUsers">fetchUsers</button>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: "User",
  data: () => ({
    users: []
  }),
  methods: {
      fetchUsers() {
        // GETリクエストを送信し、取得データをevents変数に代入する
        axios
          .get('http://localhost:3001/users')
          .then(response => {
            this.users = response.data;
          })
          .catch(error => {
            console.error(error);
          });
      }
    }
};
</script>
