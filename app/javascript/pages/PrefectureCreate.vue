<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">都道府県登録</h4>
    <form class="col">
      <div class="row">
        <div class="input-field">
          <input placeholder="Name" type="text" class="validate" v-model="prefecture.prefecture_name" required="required">
          <br>
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <input placeholder="カナ名" type="text" class="validate" v-model="prefecture.prefecture_name_kana" required="required">
        </div>
      </div>
      <div class="btn btn-info waves-effect waves-light" v-on:click="createPrefecture">当道府県を登録</div>
      <router-link :to="{ path: `/region/${id}` }" class="btn btn-flat">{{region.region_name}}に戻る</router-link>
    </form>
  </div>
</template>

<script>
  import axios from 'axios';
  export default {
    data: function() {
      return {
        id: this.$route.params.id,
        prefecture: {
          prefecture_name: '',
          prefecture_name_kana: '',
          region_id: this.$route.params.id,
        },
        region: {},
      }
    },
    mounted: function() {
      this.getRegion(this.id);
    },
    methods: {
      createPrefecture: function () {
        if (!this.prefecture.prefecture_name) return;
        axios.post('/api/prefectures', { prefecture: this.prefecture }).then((res) => {
          this.$router.push({ path: `/region/${this.id}` });
        }, (error) => {
          console.log(error);
        });
      },
      getRegion(id) {
        axios.get(`/api/prefectures/getregion/${id}.json`).then(response => {
          this.region = response.data;
        });
      },
    },
  }
</script>

<style scoped></style>