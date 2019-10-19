<template>
  <div class="container">
    <h4 class="#f3e5f5 blue lighten-5 center">タグ登録</h4>
    <form class="col">
      <div class="row">
        <div class="input-field">
          <input placeholder="Name" type="text" class="validate" v-model="tag.tag_name" required="required">
          <br>
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <input placeholder="Content" type="text" class="validate" v-model="tag.tag_content" required="required">
        </div>
      </div>
      <div class="btn btn-info waves-effect waves-light" v-on:click="createTag">タグを登録</div>
    </form>
  </div>
</template>

<script>
  import axios from 'axios';
  export default {
    data: function() {
      return {
        tag: {
          tag_name: '',
          tag_content: '',
        }
      }
    },
    methods: {
      createTag: function () {
        if (!this.tag.tag_name) return;
        axios.post('/api/tags', { tag: this.tag }).then((res) => {
          this.$router.push({ path: '/tags' });
        }, (error) => {
          console.log(error);
        });
      }
    },
  }
</script>

<style scoped></style>