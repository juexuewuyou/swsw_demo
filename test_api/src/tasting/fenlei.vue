<template>
  <div class="fenlei">
    <!-- <mt-header title="分类"></mt-header> -->
    <mt-navbar v-model="selected" class="fl_tit">
      <mt-tab-item id="1" class="font_fl_title">女生</mt-tab-item>
      <mt-tab-item id="2" class="font_fl_title">男生</mt-tab-item>
    </mt-navbar>
    <!-- tab-container -->
    <div class="fl_container">
      <mt-tab-container v-model="selected">
        <mt-tab-container-item id="1">
          <!-- 弹性  左右分开 -->
          <div style="display: flex; width: 100%">
            <!-- 分类  女生 -->
            <!-- 左侧导航区 -->
            <mt-navbar
              v-model="selectede"
              class="sc_left"
              style=" width: 20%"
            >
              <mt-tab-item id="1"> 全部分类 </mt-tab-item>
              <mt-tab-item id="2">推荐榜</mt-tab-item>
              <mt-tab-item id="3">大热榜</mt-tab-item>
              <mt-tab-item id="4">完结榜</mt-tab-item>
              <mt-tab-item id="5">新书榜</mt-tab-item>
              <mt-tab-item id="6">热搜榜</mt-tab-item>
              <mt-tab-item id="7">好评榜</mt-tab-item>
              <mt-tab-item id="8">分类榜</mt-tab-item>
            </mt-navbar>

            <!-- 右侧 书籍展示区 -->
            <div style="width:80%">
              <mt-tab-container v-model="selectede">
                <mt-tab-container-item id="1">
                  <div>全部分類</div>
                </mt-tab-container-item>
                <mt-tab-container-item id="2">推荐榜</mt-tab-container-item>
                <mt-tab-container-item id="3">大热榜</mt-tab-container-item>
                <mt-tab-container-item id="4">完结榜</mt-tab-container-item>
                <mt-tab-container-item id="5">新书榜</mt-tab-container-item>
                <mt-tab-container-item id="6">热搜榜</mt-tab-container-item>
                <mt-tab-container-item id="7">好评榜</mt-tab-container-item>
                <mt-tab-container-item id="8">分类</mt-tab-container-item>
              </mt-tab-container>
            </div>
          </div>
        </mt-tab-container-item>

        <!--  -->
        <mt-tab-container-item id="2">
          <!-- 分类  男生 -->
          <mt-cell title="全部分类">男生</mt-cell>
        </mt-tab-container-item>
      </mt-tab-container>
    </div>

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
      activede: "fl",
      selectede: "1",
    };
  },
  watch: {
    activede(val) {
      console.log(val);
      if (val == "sj") {
        this.$router.push("/shouye");
      } else if (val == "sc") {
        this.$router.push("/shucheng");
      } else if (val == "wd") {
        this.$router.push("/wode");
      }
    },
  },
};
</script>
<style>
.fenlei .fl_tit {
  background-image: linear-gradient(to right, #e5b6a0, #febf85);
}
.fenlei .fl_container {
  margin-top: 3px;
}
.fenlei .sc_left {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  
}
.fenlei .sc_left a {
  text-align: center;
}
.fenlei .sc_left a div:last-child {
  font-size: 16px;
}
.fenlei .sc_left .mint-tab-item.is-selected {
   
  background: #febf85;
}
</style>