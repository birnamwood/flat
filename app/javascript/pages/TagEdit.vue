<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">タグ編集</h4>
    <form class="col s12">
      <div class="row">
        <div class="input-field">
          <input placeholder="タグ名" type="text" class="validate" v-model="tag.tag_name" required="required">
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <input placeholder="タグ説明" type="text" class="validate" v-model="tag.tag_content" required="required">
        </div>
      </div>
      <div class="btn" v-on:click="updateTag(tag.id)">タグ情報更新</div>
    </form>
  </div>
</template>

<script>
  import axios from 'axios';
  export default {
    name: 'TagEdit',
    data: function() {
      return {
        id: this.$route.params.id,
        tag: {
          id: '',
          tag_name: '',
          tag_content: '',
        },
      }
    },
    mounted: function() {
      this.settagEdit(this.id);
    },
    methods: {
      settagEdit(id){
        axios.get(`/api/tags/${id}.json`).then(res => {
          this.tag.id = res.data.id;
          this.tag.tag_name = res.data.tag_name;
          this.tag.tag_content = res.data.tag_content;
        });
      },
      updateTag(id) {
        if (!this.tag.tag_name) return;
        axios.put(`/api/tags/${id}`, { tag: this.tag }).then((res) => {
          this.$router.push({ path: '/tags' });
        }, (error) => {
          console.log(error);
        });
      },
    }
  }
</script>

<style scoped></style>