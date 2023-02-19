import { createApp } from 'vue'
import { ApolloClient, InMemoryCache } from '@apollo/client'
import { createApolloProvider } from '@vue/apollo-option'
import './style.css'

import App from './App.vue'

const apolloClient = new ApolloClient({
  uri: 'http://localhost:3000/graphql',
  cache: new InMemoryCache(),
})

const app = createApp(App)

app.provide(
  createApolloProvider({
    defaultClient: apolloClient,
  })
)

app.mount('#app')
