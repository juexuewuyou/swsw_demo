import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
// import Login from '../views/Login.vue'
import Register from '../views/Register.vue'
import Shouye from '../tasting/Shouye.vue'
import isLogin from '../tasting/isLogin.vue'
import shucheng from '../tasting/shucheng.vue'
import fenlei from '../tasting/fenlei.vue'
import wode from '../tasting/Wode.vue'
// import erlou from '../tasting/erlou.vue'
import details from '../tasting/details.vue'



// 嵌套
// import sanBd from '../components/sanBd.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/details',
    name: ' details',
    component: details
  },
  {
    path: '/shucheng',
    name: ' shucheng',
    component: shucheng,
    prors:true
  },
  {
    path: '/wode',
    name: ' wode',
    component: wode
  },
  {
    path: '/fenlei',
    name: ' fenlei',
    component: fenlei
  },
  {
    path: '/shouye',
    name: 'Shouye',
    component: Shouye
  },
  {
    path: '/',
    name: 'isLogin',
    component: isLogin
  },
  // {
  //   path: '/login',
  //   name: 'Login',
  //   component: Login
  // },
  {
    path: '/register',
    name: 'Register',
    component: Register
  },
  {
    path: '/home',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
