<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">{{prefecture.prefecture_name}}（{{prefecture.prefecture_name_kana}}）の情報</h4>
    <router-link :to="{ path:`/region/${region.id}` }" class="btn btn-flat">{{region.region_name}}のページへ</router-link>
    <router-link :to="{ path: `/prefecture/edit/${id}` }" class="btn">{{prefecture.prefecture_name}}の編集</router-link>
    <router-link :to="{ path: `/municipality/create/${prefecture.id}` }" class="btn">市町村の新規登録</router-link>
    <br>
    <br>
      <div class="row #e3f2fd blue lighten-5">
        <h4 class="#f3e5f5 blue lighten-5 center">市町村一覧</h4>
        <div class="col s4 m6" v-for="m in municipalities" :key="m.id">
          <div class="card btn tag-index-area">
            <router-link :to="{ path: `/municipality/edit/${m.id}` }" class="card-title">{{m.municipality_name}}</router-link>
          </div>
        </div>
      </div>
  </div>
</template>

<script>
  import axios from 'axios';
  export default {
    name: 'PrefectureShow',
    data: function() {
      return {
        id: this.$route.params.id,
        prefecture: {},
        region: {},
        municipalities: [],
      }
    },
    mounted: function() {
      this.setPrefecture(this.id);
      this.getRegion(this.id);
      this.getMunicipalities(this.id);
    },
    methods: {
      setPrefecture(id){
          axios.get(`/api/prefectures/${id}.json`).then(res => {
          this.prefecture = res.data;
        });
      },
      getRegion(id) {
        axios.get(`/api/prefectures/getregion/${id}.json`).then(response => {
          this.region = response.data;
        });
      },
      getMunicipalities(id) {
        axios.get(`/api/prefectures/getmunicipalities/${id}.json`).then(response => {
          this.municipalities = response.data;
        });
      },
    }
  }
</script>

<style scoped></style>