<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">地方編集</h4>
    <form class="col s12">
      <div class="row">
        <div class="input-field">
          <label>地方名</label>
          <br>
          <input placeholder="地方名" type="text" class="validate" v-model="region.region_name" required="required">
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <label>地方名カナ</label>
          <br>
          <input placeholder="地方名カナ" type="text" class="validate" v-model="region.region_name_kana" required="required">
        </div>
      </div>
      <div class="btn" v-on:click="updateRegion(region.id)">情報更新</div>
      <div class="btn #e53935 red darken-1" v-on:click="deleteRegion(region.id)">情報削除</div>
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
        region: {
          id: '',
          region_name: '',
          region_name_kana: '',
        },
      }
    },
    mounted: function() {
      this.setRegionEdit(this.id);
    },
    methods: {
      setRegionEdit(id){
          axios.get(`/api/regions/${id}.json`).then(res => {
          this.region.id = res.data.id;
          this.region.region_name = res.data.region_name;
          this.region.region_name_kana = res.data.region_name_kana;
        });
      },
      updateRegion(id) {
        if (!this.region.region_name) return;
        axios.put(`/api/regions/${id}`, { region: this.region }).then((res) => {
          this.$router.push({ path: `/region/${id}` });
        }, (error) => {
          console.log(error);
        });
      },
      deleteRegion(id) {
        axios.delete(`/api/regions/${id}`).then(res => {
          this.$router.push({ path: '/regions' });
        })
      },
    }
  }
</script>

<style scoped></style>