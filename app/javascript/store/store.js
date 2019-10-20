import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    tags: [],
  },
  mutations: {
    GetTags(state) {
      state.tags = [];
      axios.get('/api/tags.json').then(response => {
        state.tags = response.data;
      });
    },
  },
})