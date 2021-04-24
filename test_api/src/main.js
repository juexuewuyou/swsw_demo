import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

import MintUI from 'mint-ui'
import 'mint-ui/lib/style.css'
import axios from 'axios'
import moment from 'moment'

//组件
import erLou from './components/erlou.vue'
import Banner from './components/banner.vue'
import Sanlou from './components/sanlou.vue'
Vue.component('my-erlou',erLou)
Vue.component('my-sanlou',Sanlou)
Vue.component('my-banner', Banner)

Vue.use(MintUI)
Vue.prototype.moment=moment
Vue.prototype.axios=axios
axios.defaults.baseURL='http://127.0.0.1:3000/'
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
