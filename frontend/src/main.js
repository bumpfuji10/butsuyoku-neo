import { createApp } from 'vue'
import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client'
import { createApolloProvider } from '@vue/apollo-option'
import './style.css'

import App from './App.vue'

const apolloClient = new ApolloClient({
  uri: 'http://localhost:3001/graphql',
  cache: new InMemoryCache(),
});

const app = createApp(App)

app.provider(
  createApolloProvider({
    defaultClient: apolloClient,
  })
)

app.mount('#app')
