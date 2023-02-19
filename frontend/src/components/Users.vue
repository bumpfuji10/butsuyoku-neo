<template>
  <div>
    <ul v-for="user in users" :key="user.id">
      <li>{{ user.name }}</li>
      <li>{{ user.email }}</li>
    </ul>
    <p>これはUser.vueに書いてあるコードです。</p>
  </div>
</template>

<script>
import { gql } from '@apollo/client'

const USERS_QUERY = gql`
  query users {
    users {
      id
      name
      email
    }
  }
`

export default {
  name: 'Users',
  data() {
    return {
      users: [],
    }
  },
  apollo: {
    users: {
      query: USERS_QUERY,
      // 結果が返ってきたときに実行される処理
      update: (data) => {
        this.users = data.users
      },
    },
  },
}
</script>
