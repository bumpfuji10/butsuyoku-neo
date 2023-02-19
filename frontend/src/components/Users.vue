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
import gql from 'graphql-tag'

const USERS_QUERY = gql`
query users{
  users {
    name
    email
  }
}`

export default {
  name: 'users',
  data () {
    return {
      users: []
    }
  },
  apollo: {
    users: {
      query: USERS_QUERY
    }
  }
}

</script>
