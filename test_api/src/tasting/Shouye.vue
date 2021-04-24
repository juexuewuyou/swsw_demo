<template>
  <div>
    <!-- 顶部 -->
    <mt-navbar v-model="selected">
  <mt-tab-item id="1">推荐</mt-tab-item>
  <mt-tab-item id="2">女生</mt-tab-item>
  <mt-tab-item id="3">男生</mt-tab-item>
</mt-navbar>
<!-- tab-container -->
<mt-tab-container v-model="selected">
  <mt-tab-container-item id="1">
      <h1>推荐模块</h1>
  </mt-tab-container-item>
  <mt-tab-container-item id="2">
    <mt-cell  title="tab-container 2"></mt-cell>
  </mt-tab-container-item>
  <mt-tab-container-item id="3">
    <mt-cell  title="tab-container 3"></mt-cell>
  </mt-tab-container-item>
</mt-tab-container>

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
        <img
          v-if="activede == 'sc'"
          slot="icon"
          src="../assets/icon/sc_1.png"
        />
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
        <img
          v-if="activede == 'wd'"
          slot="icon"
          src="../assets/icon/wd_1.png"
        />
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
      selected: "1",
      activede: "sj",
      n:'1',
      popupVisible:true
    };
  },
  watch: {
    activede(val) {
      if (val == "sc") {
        this.$router.push("/shucheng");
      } else if (val == "fl") {
        this.$router.push("/fenlei");
      } else if (val == "wd") {
        this.$router.push("/wode");
      }
    },
  },
};
</script>