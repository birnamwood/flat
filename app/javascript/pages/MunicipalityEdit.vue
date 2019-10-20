<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">市町村編集</h4>
    <form class="col s12">
      <div class="row">
        <div class="input-field">
          <label>市町村名</label>
          <br>
          <input placeholder="市町村名" type="text" class="validate" v-model="municipality.municipality_name" required="required">
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <label>市町村名カナ</label>
          <br>
          <input placeholder="市町村名カナ" type="text" class="validate" v-model="municipality.municipality_name_kana" required="required">
        </div>
      </div>
      <div class="btn" v-on:click="updateMunicipality(municipality.id)">情報更新</div>
      <div class="btn #e53935 red darken-1" v-on:click="deleteMunicipality(municipality.id)">削除</div>
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
        municipality: {},
        prefecture: {},
      }
    },
    mounted: function() {
      this.setMunicipalityEdit(this.id);
      this.getPrefecture(this.id);
    },
    methods: {
      setMunicipalityEdit(id){
          axios.get(`/api/municipalities/${id}.json`).then(res => {
          this.municipality = res.data;
        });
      },
      updateMunicipality(id) {
        if (!this.municipality.municipality_name) return;
        axios.put(`/api/municipalities/${id}`, { municipality: this.municipality }).then((res) => {
          this.$router.push({ path: `/prefecture/${this.prefecture.id}` });
        }, (error) => {
          console.log(error);
        });
      },
      deleteMunicipality(id) {
        axios.delete(`/api/municipalities/${id}`).then(res => {
          this.$router.push({ path: `/prefecture/${this.prefecture.id}` });
        })
      },
      getPrefecture(id) {
        axios.get(`/api/municipalities/getprefecture/${id}.json`).then(response => {
          this.prefecture = response.data;
        });
      },
    }
  }
</script>

<style scoped></style>