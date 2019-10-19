import Vue          from 'vue'
import VueRouter    from 'vue-router'
import MasterHome     from '../pages/MasterHome.vue'
import RegionIndex   from '../pages/RegionIndex.vue'
import TagIndex   from '../pages/TagIndex.vue'
import TagCreate   from '../pages/TagCreate.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/',  name: 'MasterHome', component: MasterHome },
  { path: '/tags',  component: TagIndex },
  { path: '/tag/create',  component: TagCreate },
  { path: '/regions',  component: RegionIndex },
];

export default new VueRouter({ routes });