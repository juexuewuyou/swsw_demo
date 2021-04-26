<template>
  <div class="shucheng">
    <!-- <mt-header title="书城"></mt-header> -->
    <mt-navbar v-model="selected" class="tit">
      <mt-tab-item id="1" class="font_title">推荐</mt-tab-item>
      <mt-tab-item id="2" class="font_title">女生</mt-tab-item>
      <mt-tab-item id="3" class="font_title">男生</mt-tab-item>
    </mt-navbar>
    <mt-tab-container v-model="selected" :swipeable="true">
      <mt-tab-container-item id="1">
        <!-- <h1>推荐模块</h1> -->
        <!-- 轮播图 -->
        <my-banner />
        <!-- 二楼 -->
        <my-erlou />
        <!-- 三楼 -->
        <my-sanlou />
        <!-- 有时间再写 -->
      
          <div class="list">
            <h3 style="align-self:flex-start">现代言情</h3>
            <!-- 有时间了 -->
            <div class="list_for">
              <!-- 推荐 -->
              <div class="list-top">
                <div style="width: 65px; height: 85px">
                  <img
                    src="../assets/books/ds_2.jpg"
                    alt=""
                    style="width: 100%"
                  />
                </div>
                <div class="list-details">
                  <span>少女成长记</span>
                  <span
                    >周旺从小都很倒霉南方喀换个就發綠小都很倒霉南方喀换个就發綠小都很倒霉南方喀换个就發綠小都很倒霉南方喀换个就發綠小都很倒霉南方喀换个就發綠小都很倒霉南方喀换个就發綠卡記</span
                  >
                </div>
              </div>
              <!-- 列表 -->
              <div class="list-bottom">
                <div class="list-b-contanier">
                  <div style="width:25%"  v-for="i of 8" :key="i">
                  <div class="container-b-text">
                    <!-- 文本区域1 -->
                    <div style="width: 100%; height: 85px">
                      <!-- 书籍图片 -->
                      <img
                        style="width: 100%"
                        src="../assets/books/xh_4.jpg"
                        alt=""
                      />
                    </div>
                    <div class="list-b-details">
                      <!-- 书名 -->
                      <span>灵武天下</span>
                    </div>
                  </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
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
      </mt-tab-container-item>
      <mt-tab-container-item id="3">
        <my-banner />
        <!-- 全局組件 -->
        <my-erlou />
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

.shucheng .list {
  padding: 16px;
  display: flex;
  flex-direction: column;
 align-items: center;
}
.shucheng .list .list_for {
  margin-top: 20px;
}
.shucheng .list .list-top {
  background: #e5b6a0;
}
.shucheng .list .list-top,
.shucheng .list .list-details {
  display: flex;
}
.shucheng .list .list-details {
  flex-direction: column;
  margin-left: 6px;
  width: 70%;
  height: 85px;
  padding: 6px 0px 0px 4px;
  overflow: hidden;
}
.shucheng .list .list-details span:first-child {
  font: bold 18px simhei;
}
.shucheng .list .list-details span:last-child {
  margin-top: 14px;
  font: bold 10px simhei;
}
/*  */
.shucheng .list-b-contanier {
  display: flex;
  flex-wrap: wrap;
  width: 100%;
  text-align: center;
  /* justify-content: space-between; */
  /* padding:0px 10px; */
  margin-top: 9px;
}

.shucheng .list-b-contanier .container-b-text {
  width: 64px;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  margin: 5px 10px;
  font: 12px simhei;
}
</style>
<script>
export default {
  data() {
    return {
      selected: "1",
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
  },
  mounted() {},
};
</script>



