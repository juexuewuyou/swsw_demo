<template>
  <div class="fenlei">
    <!-- <mt-header title="分类"></mt-header> -->
    <mt-navbar v-model="selected" class="fl_tit" fixed>
      <mt-tab-item id="1" class="font_fl_title">女生</mt-tab-item>
      <mt-tab-item id="2" class="font_fl_title">男生</mt-tab-item>
    </mt-navbar>
    <!-- tab-container -->
    <div class="fl_container" fixed>
      <mt-tab-container v-model="selected">
        <mt-tab-container-item id="1">
          <!-- 弹性  左右分开 -->
          <div style="display: flex; width: 100%;">
            <!-- 分类  女生 -->
            <!-- 左侧导航区 -->
            <mt-navbar
              v-model="selectede"
              class="sc_left"
            >
              <mt-tab-item id="1">历史</mt-tab-item>
              <mt-tab-item id="2">现言 </mt-tab-item>
              <mt-tab-item id="3">武侠</mt-tab-item>
              <mt-tab-item id="4">玄幻</mt-tab-item>
              <mt-tab-item id="5">都市</mt-tab-item>
              <mt-tab-item id="6">古言</mt-tab-item>
              <mt-tab-item id="7">现实</mt-tab-item>
              <mt-tab-item id="8">励志</mt-tab-item>
              <mt-tab-item id="9">重生</mt-tab-item>
              <mt-tab-item id="10">轻小说</mt-tab-item>
              <mt-tab-item id="11">修真</mt-tab-item>
              <mt-tab-item id="12">悬疑</mt-tab-item>
              <mt-tab-item id="13">短篇</mt-tab-item>
            </mt-navbar>

            <!-- 右侧 书籍展示区 -->
            <div style="width:80% ;padding:10px 0 0 12px;background:#f5f5f5">
              <mt-tab-container v-model="selectede"     style="margin-top:10px">
                <!-- 1 -->
                <mt-tab-container-item id="1"  class="r_books">
                  <!-- container 书籍区开始-->
                  <div v-for="i of 6" :key="i">
                    <ul style="display:flex">
                      <ul style="width:68px"><img src="../assets/books/xh_0.jpg" 
                      style="width:100%"
                      alt=""></ul>
                      <!-- 书名 -->
                      <ul style="width:75% ;display:flex;flex-direction: column;justify-content:space-around;margin-left:8px" >
                        <li>混沌初始</li>
                      <!-- 所属类别 -->
                      <li>玄幻</li>
                      </ul>
                    </ul>
                  </div>
                </mt-tab-container-item>
                <!-- 2 -->
                <mt-tab-container-item id="2">
                  <!-- 书籍区开始 -->
                  <div v-for="i of 6" :key="i">
                    <ul style="display:flex">
                      <ul style="width:68px"><img src="../assets/books/xh_0.jpg" 
                      style="width:100%"
                      alt=""></ul>
                      <!-- 书名 -->
                      <ul style="width:75% ;display:flex;flex-direction: column;justify-content:space-around;margin-left:8px" >
                        <li>混沌初始</li>
                      <!-- 所属类别 -->
                      <li>玄幻</li>
                      </ul>
                    </ul>
                  </div>
                </mt-tab-container-item>
                <!-- 3 -->
                <mt-tab-container-item id="3">武侠</mt-tab-container-item>
                <!-- 4 -->
                <mt-tab-container-item id="4">玄幻</mt-tab-container-item>
                <!-- 5 -->
                <mt-tab-container-item id="5">都市</mt-tab-container-item>
                <mt-tab-container-item id="6">古言</mt-tab-container-item>
                <mt-tab-container-item id="7">现实</mt-tab-container-item>
                <mt-tab-container-item id="8">励志</mt-tab-container-item>
                <mt-tab-container-item id="9">重生</mt-tab-container-item>
                <mt-tab-container-item id="10">轻小说</mt-tab-container-item>
                <mt-tab-container-item id="11">修真</mt-tab-container-item>
                <mt-tab-container-item id="12">悬疑</mt-tab-container-item>
                <mt-tab-container-item id="13">短篇</mt-tab-container-item>
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
.fenlei .fl_tit  .mint-tab-item.is-selected{
 border-bottom:3px solid #e5b6a0;
  color:#000
}
.fenlei .fl_container {
  margin-top:46px;
   
}
.fenlei .sc_left {
  display: flex;
  flex-direction: column;
  align-items:center;
   width: 25% ;
   background:#e5b6a0;
}
.fenlei .sc_left a {
  text-align: center;
}
.fenlei .sc_left a div:last-child {
  font-size: 16px;
}
.fenlei .sc_left .mint-tab-item.is-selected {
   width:100%;
   border-bottom:3px solid #e5b6a0;
   border-top-right-radius:6px;
   border-bottom-right-radius:6px;
   color:#000;
    background-image: linear-gradient(to right, #e5b6a0, #febf85);
}
</style>