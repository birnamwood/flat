<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">地域登録</h4>
    <form class="col">
      <div class="row">
        <div class="input-field">
          <input placeholder="Name" type="text" class="validate" v-model="region.region_name" required="required">
          <br>
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <input placeholder="カナ名" type="text" class="validate" v-model="region.region_name_kana" required="required">
        </div>
      </div>
      <div class="btn btn-info waves-effect waves-light" v-on:click="createRegion">地域を登録</div>
      <router-link to="/regions" class="btn btn-flat">地方一覧に戻る</router-link>
    </form>
  </div>
</template>

<script>
  import axios from 'axios';
  export default {
    data: function() {
      return {
        region: {
          region_name: '',
          region_name_kana: '',
        }
      }
    },
    methods: {
      createRegion: function () {
        if (!this.region.region_name) return;
        axios.post('/api/regions', { region: this.region }).then((res) => {
          this.$router.push({ path: '/regions' });
        }, (error) => {
          console.log(error);
        });
      }
    },
  }
</script>

<style scoped></style>