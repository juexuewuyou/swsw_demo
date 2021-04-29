<template>
  <div class="shucheng">
    <!-- <mt-header title="书城"></mt-header> -->
    <mt-navbar v-model="selected" class="tit" fixed>
      <mt-tab-item id="3" class="font_title">推荐</mt-tab-item>
      <mt-tab-item id="2" class="font_title">女生</mt-tab-item>
      <mt-tab-item id="1" class="font_title">男生</mt-tab-item>
    </mt-navbar>
    <mt-tab-container
      style="margin-top: 46px"
      v-model="selected"
      :swipeable="true"
    >
      <mt-tab-container-item id="1">
        <!-- <h1>推荐模块</h1> -->
        <!-- 轮播图 -->
        <my-banner />
        <!-- 二楼 -->
        <my-erlou />
        <!-- 三楼 -->
        <my-sanlou />
        <!-- 有时间再写 -->
        <!-- 五楼 -->
        <my-wulou />
        <div
          style="
            height: 100px;
            text-align: center;
            line-height: 68px;
            background: #ddd;
          "
        >
          已经到底啦~~
        </div>
      </mt-tab-container-item>
      <!-- 女生区 -->
      <mt-tab-container-item id="2">
        <my-banner />
        <!-- 全局組件 -->
        <my-erlou />
        <!-- 三楼 -->
        <my-sanlou />
        <!-- 有时间再写 -->
        <!-- 五楼 -->
        <my-wulou />
      </mt-tab-container-item>
      <mt-tab-container-item id="3">
        <my-banner />
        <!-- 全局組件 -->
        <my-erlou />
        <!-- 三楼 -->
        <my-sanlou />
        <!-- 有时间再写 -->
        <!-- 五楼 -->
        <my-wulou />
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
<style>
/* @import '../assets/css/erlou.css'; */
.shucheng .tit {
  background-image: linear-gradient(to right, #e5b6a0, #febf85);
}
</style>
<script>
export default {
  data() {
    return {
      selected: "2",
      activede: "sc",
      h: "100px",
      phb: "1",
    };
  },
  methods: {},
  watch: {
    activede(val) {
      if (val == "sj") {
        this.$router.push("/shouye");
      } else if (val == "fl") {
        this.$router.push("/fenlei");
      } else if (val == "wd") {
        this.$router.push("/wode");
      }
    },
    selected() {
      this.axios
        .get("/shucheng", {
          params: {
            sid: this.selected,
          },
        })
        .then((res) => {
          console.log(res);
        });
    },
  },
  mounted() {},
};
</script>



