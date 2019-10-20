<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">市町村登録</h4>
    <form class="col">
      <div class="row">
        <div class="input-field">
          <input placeholder="Name" type="text" class="validate" v-model="municipality.municipality_name" required="required">
          <br>
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <input placeholder="カナ名" type="text" class="validate" v-model="municipality.municipality_name_kana" required="required">
        </div>
      </div>
      <div class="btn btn-info waves-effect waves-light" v-on:click="createMunicipality">市町村を登録</div>
      <router-link :to="{ path: `/prefecture/${id}` }" class="btn btn-flat">{{prefecture.prefecture_name}}に戻る</router-link>
    </form>
  </div>
</template>

<script>
  import axios from 'axios';
  export default {
    data: function() {
      return {
        id: this.$route.params.id,
        municipality: {
          municipality_name: '',
          municipality_name_kana: '',
          prefecture_id: this.$route.params.id,
        },
        prefecture: {},
      }
    },
    mounted: function() {
      this.getPrefecture(this.id);
    },
    methods: {
      createMunicipality: function () {
        if (!this.municipality.municipality_name) return;
        axios.post('/api/municipalities', { municipality: this.municipality }).then((res) => {
          this.$router.push({ path: `/prefecture/${this.id}` });
        }, (error) => {
          console.log(error);
        });
      },
      getPrefecture(id) {
        axios.get(`/api/municipalities/getprefecture/${id}.json`).then(response => {
          this.prefecture = response.data;
        });
      },
    },
  }
</script>

<style scoped></style>