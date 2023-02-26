<template>
  <div>
    <p>{{ users }}</p>
    <button type="submit" id="fetchUsers" @click="fetchUsers">会員情報を取得する</button>
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

<style>
#fetchUsers {
  padding: 10px;
  font-size: 30px;
  font-family: Avenir, Helvetica, Arial, sans-serif;
}

#fetchUsers:hover {
  color: blue;
  cursor: pointer;
}
</style>
