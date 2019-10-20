<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">{{region.region_name}}（{{region.region_name_kana}}）地方の情報</h4>
  </div>
</template>

<script>
  import axios from 'axios';
  export default {
    name: 'RegionShow',
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
      this.setRegion(this.id);
    },
    methods: {
      setRegion(id){
          axios.get(`/api/regions/${id}.json`).then(res => {
          this.region.id = res.data.id;
          this.region.region_name = res.data.region_name;
          this.region.region_name_kana = res.data.region_name_kana;
        });
      },
    }
  }
</script>

<style scoped></style>