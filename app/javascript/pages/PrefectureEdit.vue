<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">{{prefecture.prefecture_name}}編集</h4>
    <form class="col s12">
      <div class="row">
        <div class="input-field">
          <label>都道府県名</label>
          <br>
          <input placeholder="都道府県名" type="text" class="validate" v-model="prefecture.prefecture_name" required="required">
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <label>都道府県名カナ</label>
          <br>
          <input placeholder="都道府県名カナ" type="text" class="validate" v-model="prefecture.prefecture_name_kana" required="required">
        </div>
      </div>
      <div class="btn" v-on:click="updatePrefecture(prefecture.id)">情報更新</div>
      <div class="btn #e53935 red darken-1" v-on:click="DeletePrefecture(prefecture.id)">削除</div>
      <router-link :to="{ path:`/prefecture/${prefecture.id}` }" class="btn btn-flat">戻る</router-link>
    </form>
  </div>
</template>

<script>
  import axios from 'axios';
  export default {
    name: 'RegionEdit',
    data: function() {
      return {
        id: this.$route.params.id,
        prefecture: {},
        region: {},
      }
    },
    mounted: function() {
      this.setPrefectureEdit(this.id);
      this.getRegion(this.id);
    },
    methods: {
      setPrefectureEdit(id){
          axios.get(`/api/prefectures/${id}.json`).then(res => {
          this.prefecture = res.data;
        });
      },
      updatePrefecture(id) {
        if (!this.prefecture.prefecture_name) return;
        axios.put(`/api/prefectures/${id}`, { prefecture: this.prefecture }).then((res) => {
          this.$router.push({ path: `/prefecture/${id}` });
        }, (error) => {
          console.log(error);
        });
      },
      deletePrefecture(id) {
        axios.delete(`/api/prefecture/${id}`).then(res => {
          this.$router.push({ path: `/region/${region.id}` });
        })
      },
      getRegion(id) {
        axios.get(`/api/prefectures/getregion/${id}.json`).then(response => {
          this.region = response.data;
        });
      },
    }
  }
</script>

<style scoped></style>