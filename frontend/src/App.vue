<script>
// componentをこの中で呼び出す
import HelloWorld from './components/HelloWorld.vue'
import Users from './components/Users.vue';

export default {
  name: "App",
  components: {
    HelloWorld,
    Users
  }
};
</script>

<template>
  <!--フロントエンドで共通しているview部分をここで記述-->
  <HelloWorld msg="Vite + Vue"></HelloWorld>
  <Users></Users>
</template>

<!---同じくフロントエンドで共通しているviewのスタイルをここで記述-->
<style scoped>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}
</style>
