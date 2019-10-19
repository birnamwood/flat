<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">タグ登録</h4>
    <router-link to="/tag/create">タグ新規登録</router-link>
      <div class="row #e3f2fd blue lighten-5">
        <div class="col s4 m6" v-for="t in tags" :key="t.id">
          <div class="card btn">
            <span class="card-title" v-on:click="setTagInfo(t.id)">
                  {{ t.tag_name }}
            </span>
            </div>
          </div>
        </div>
  </div>



</template>

<script>
import axios from 'axios';

  export default {
    name: 'TagIndex',
    data: function () {
      return {
        tags: []
      }
    },
    mounted () {
      axios
        .get('/api/tags.json')
        .then(response => (this.tags = response.data))
    },
  }
</script>

<style scoped>
</style>