<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">{{region.region_name}}（{{region.region_name_kana}}）の情報</h4>
    <router-link to="/regions" class="btn btn-flat">地方一覧へ</router-link>
    <router-link :to="{ path: `/region/edit/${region.id}` }" class="btn">{{region.region_name}}の編集</router-link>
    <router-link :to="{ path: `/prefecture/create/${region.id}` }" class="btn">都道府県新規登録</router-link>
    <br>
    <br>
      <div class="row #e3f2fd blue lighten-5">
        <h4 class="#f3e5f5 blue lighten-5 center">都道府県一覧</h4>
        <div class="col s4 m6" v-for="p in prefectures" :key="p.id">
          <div class="card btn tag-index-area">
            <router-link :to="{ path: `/prefecture/${p.id}` }" class="card-title">{{p.prefecture_name}}</router-link>
          </div>
        </div>
      </div>
  </div>
</template>

<script>
  import axios from 'axios';
  export default {
    name: 'RegionShow',
    data: function() {
      return {
        id: this.$route.params.id,
        region: {},
      }
    },
    computed: {
      prefectures() {
       return this.$store.state.prefectures
      }
    },
    mounted: function() {
      this.setRegion(this.id);
      this.getPrefectures(this.id);
    },
    methods: {
      setRegion(id){
          axios.get(`/api/regions/${id}.json`).then(res => {
          this.region = res.data;
        });
      },
      getPrefectures(id) {
        this.$store.commit('GetPrefectures', { id })
        // axios.get(`/api/regions/getprefectures/${id}.json`).then(response => {
        //   this.prefectures = response.data;
        // });
      },
    }
  }
</script>

<style scoped></style>