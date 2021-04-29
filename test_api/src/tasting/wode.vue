<template>
  <div class="wode">
    <!-- touxiang -->
    <mt-header title="个人信息" class="min-head"></mt-header>
    <div style="padding:0 10px">
      <div class="touxiang" style="margin-top: 20px">
        <div style="width:80px;height:80px">
          <img style="width:100%" src="../assets/icon/user.png" alt="" />
        </div>

        <div class="span">
          <router-link to="/" ><div class="tz">登录&nbsp;&nbsp;</div></router-link>
          <router-link to="/register" ><div class="tz">&nbsp;&nbsp;注册</div></router-link>
        </div>
      </div>
    </div>
    <!-- biaoqian -->
    <div class="biaoqian">
      <router-link class="bq1" to="/">
        <mt-tab-item>
          <img slot="icon" src="../assets/icon/llls.png" />
          浏览历史
        </mt-tab-item>
      </router-link>
      <router-link class="bq2" to="/">
        <mt-tab-item>
          <img slot="icon" src="../assets/icon/pl.png" />
          评论
        </mt-tab-item>
      </router-link>
      <router-link class="bq3" to="/">
        <mt-tab-item>
          <img slot="icon" src="../assets/icon/ydcy.png" />
          阅读倡议
        </mt-tab-item>
      </router-link>
      <router-link class="bq4" to="/hobby">
        <mt-tab-item>
          <img slot="icon" src="../assets/icon/ydah.png" />
          阅读爱好
        </mt-tab-item>
      </router-link>
    </div>
    <!-- liebaio -->
    <div class="liebiao">
      <ul>
        <li onclick="location.href='/'">青少年模式</li>
        <li onclick="location.href='/'">防诈骗功能</li>
        <li onclick="location.href='/'">退出登录</li>
      </ul>
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
<style>
.wode .min-head {
  font: bold 22px simhei;
  background-color: #febf85;
  color:rgb(136, 130, 130);
  height: 56px;
  border-bottom-left-radius: 2px;
  border-bottom-right-radius: 2px;
}
.touxiang .span {
  margin-top: 16px;
}
.wo .span a:first-child{
  color:#000
}
.touxiang .span{
  width:100%;height:80px;
  display: flex;
  justify-content: space-around;
}
.touxiang .span div{
  width:100px;height:42px;
  border-radius: 40px;
  border:2px solid rgb(170, 151, 151);
  text-align: center;
  line-height:42px ;
}
.wode .touxiang {
  height: 200px;
  background-color: #febf85;
  /* background-image: linear-gradient(to right,#e5b6a0,#febf85); */
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  border: 1px solid #eee;
  box-shadow: 0px 0px 10px #999;
  margin-bottom: 20px;
  border-radius: 15px;
}

.wode .biaoqian {
  display: flex;
  justify-content: space-around;
  margin-top: 3px;
  color: gray;
  font-size: 23px;
  /* height: 150px;
  line-height: 150px; */
  background-color: white;
  /* border:1px solid #999; */
  border-radius: 15px;
  box-shadow: 0px 0px 10px burlywood;
}
.wode .biaoqian .bq1 {
  /* border: 1px solid skyblue; */
  border-radius: 50px;
  /* background-color: skyblue; */
  margin-right: 10px;
  margin-left: 10px;
  color: #999;
}
.wode .biaoqian .bq2 {
  border-radius: 50px;
  margin-right: 10px;
  color: #999;
}
.wode .biaoqian .bq3 {
  border-radius: 50px;
  margin-right: 10px;
  color: #999;
}
.wode .biaoqian .bq4 {
  border-radius: 50px;
  margin-right: 10px;
  color: #999;
}
.wode .liebiao {
  margin-top: 10px;
  background-color: white;
}
.wode .liebiao > ul {
  list-style: none;
  padding: 10px;
  margin: 0px;
}
.wode .liebiao > ul > li {
  border-bottom: 1px solid #e8e8e8;
  font-size: 20px;
  height: 80px;
  line-height: 80px;
  margin-left: 2px;
}
</style>
<script>
export default {
  data() {
    return {
      activede: "wd",
      w: "775px",
    };
  },
  methods: {
    // 初始化适配轮播图的高度
    initSwipe() {
      let picwidth = 583;
      let picheight = 775;
      // 屏幕宽
      let screenheight = window.screen.height;
      let width = Math.floor((picwidth * screenheight) / picheight) + "px";
      // 把计算得到的height，赋值给data中的变量，动态更新轮播图
      this.w = width;
    },
  },
  watch: {
    activede(val) {
      if (val == "sc") {
        this.$router.push("/shucheng");
      } else if (val == "fl") {
        this.$router.push("/fenlei");
      } else if (val == "sj") {
        this.$router.push("/shouye");
      }
    },
  },
};
</script>