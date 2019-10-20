import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    tags: [],
    regions: [],
    prefectures: [],
  },
  mutations: {
    GetTags(state) {
      state.tags = [];
      axios.get('/api/tags.json').then(response => {
        state.tags = response.data;
      });
    },
    GetRegions(state) {
      state.regions = [];
      axios.get('/api/regions.json').then(response => {
        state.regions = response.data;
      });
    },
    GetPrefectures(state, { id }) {
      state.prefectures = [];
        axios.get(`/api/regions/getprefectures/${id}.json`).then(response => {
          state.prefectures = response.data;
        });
    },
  },
})