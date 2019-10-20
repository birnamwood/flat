<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">タグ一覧</h4>
    <router-link to="/tag/create" class="btn">タグ新規登録</router-link>
    <br>
    <br>
      <div class="row #e3f2fd blue lighten-5">
        <div class="col s4 m6" v-for="t in tags" :key="t.id">
          <div class="card btn tag-index-area">
            <router-link :to="{ path: `/tag/edit/${t.id}` }" class="card-title">{{t.tag_name}}</router-link>
          </div>
        </div>
      </div>
  </div>



</template>

<script>
import axios from 'axios';

  export default {
    name: 'TagIndex',
    computed: {
      tags() {
       return this.$store.state.tags
      }
    },
    mounted:function() {
      this.$store.commit('GetTags')
    },
  }
</script>

<style scoped>
</style>