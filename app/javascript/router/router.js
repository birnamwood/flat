import Vue          from 'vue'
import VueRouter    from 'vue-router'
import MasterHome     from '../pages/MasterHome.vue'
import TagIndex   from '../pages/TagIndex.vue'
import TagCreate   from '../pages/TagCreate.vue'
import TagEdit   from '../pages/TagEdit.vue'
import RegionIndex   from '../pages/RegionIndex.vue'
import RegionShow   from '../pages/RegionShow.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/', component: MasterHome },
  { path: '/tags',  component: TagIndex },
  { path: '/tag/create',  component: TagCreate },
  { path: '/tag/edit/:id', component: TagEdit },
  { path: '/regions',  component: RegionIndex },
  { path: '/region/:id',  component: RegionShow },
];

export default new VueRouter({ routes });