<template>
    <div>
        <h1>这是wode模块</h1>





         <!-- 底部导航 -->
    <mt-tabbar v-model="activede" fixed>
      <mt-tab-item id="sj">
        <img
          v-if="activede == 'sj'"
          slot="icon"
          src="../assets/icon/sj_1.png"
        />
        <img v-else slot="icon" src="../assets/icon/sj_0.png" />
        书架
      </mt-tab-item>
      <mt-tab-item id="sc">
        <img v-if="activede=='sc'" slot="icon" src="../assets/icon/sc_1.png" />
        <img v-else slot="icon" src="../assets/icon/sc_0.png" />
        书城
      </mt-tab-item>
      <mt-tab-item id="fl">
        <img
          v-if="activede == 'fl'"
          slot="icon"
          src="../assets/icon/fl_1.png"
        />
        <img v-else slot="icon" src="../assets/icon/fl_0.png" />
        分类
      </mt-tab-item>
      <mt-tab-item id="wd">
        <img v-if="activede=='wd'" slot="icon" src="../assets/icon/wd_1.png" />
        <img v-else slot="icon" src="../assets/icon/wd_0.png" />
        我的
      </mt-tab-item>
    </mt-tabbar>
    </div>
</template>
<script>
export default {
  data() {
    return {
      selected: "",
      activede:"wd"
    };
  },
  watch:{
    activede(val){
      if(val=='sc'){
        this.$router.push('/shucheng')
      }else if(val=='fl'){
        this.$router.push('/fenlei')
      }else if(val=='sj'){
        this.$router.push('/shouye')
      }
    }
  }
 };
</script>