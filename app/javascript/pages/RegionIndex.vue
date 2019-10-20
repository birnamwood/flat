<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">地方一覧</h4>
    <!-- <router-link to="/region/create">地方新規登録</router-link> -->
      <div class="row #e3f2fd blue lighten-5">
        <div class="col s4 m6" v-for="r in regions" :key="r.id">
          <div class="card btn tag-index-area">
            <router-link :to="{ path: `/region/${r.id}` }" class="card-title">{{r.region_name}}</router-link>
          </div>
        </div>
      </div>
  </div>
</template>

<script>
import axios from 'axios';

  export default {
    name: 'RegionIndex',
    computed: {
      regions() {
       return this.$store.state.regions
      }
    },
    mounted:function() {
      this.$store.commit('GetRegions')
    },
  }
</script>

<style scoped>
</style>