import Vue          from 'vue'
import VueRouter    from 'vue-router'
import MasterHome     from '../pages/MasterHome.vue'
import RegionIndex   from '../pages/RegionIndex.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/',  name: 'MasterHome', component: MasterHome },
  { path: '/regions',  component: RegionIndex },
];

export default new VueRouter({ routes });