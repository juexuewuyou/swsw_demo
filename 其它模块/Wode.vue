<template>
  <div class="wode">
    <!-- touxiang -->
    <div class="touxiang">
      <img src="../assets/shujia/weidenglu.png" alt="" />
      <span class="span">
        <router-link class="tz" to="testLogin">登录&nbsp;&nbsp;</router-link>
        <router-link class="tz" to="Register">&nbsp;&nbsp;注册</router-link>
      </span>
    </div>
    <!-- biaoqian -->
    <div class="biaoqian">
      <router-link class="bq1" to="/">
        <mt-tab-item>
          <img slot="icon" src="../assets/ydls.png" />
          浏览历史
        </mt-tab-item>
      </router-link>
      <router-link class="bq2" to="/">
      <mt-tab-item>
          <img slot="icon" src="../assets/pl.png" />
          评论
        </mt-tab-item>
      </router-link>
      <router-link class="bq3" to="/">
      <mt-tab-item>
          <img slot="icon" src="../assets/ydcy.png" />
          阅读倡议
        </mt-tab-item>
      </router-link>
      <router-link class="bq4" to="/hobby">
      <mt-tab-item>
          <img slot="icon" src="../assets/ydah.png" />
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

    <mt-tabbar fixed>
      <mt-tab-item id="">
        <img
          v-if="false"
          src="../assets/shujia/shujia_1.png"
          alt=""
          slot="icon"
        />
        <img v-else src="../assets/shujia/shujia_0.png" alt="" slot="icon" />
        书架</mt-tab-item
      >
      <mt-tab-item id="shucheng">
        <img
          v-if="false"
          src="../assets/shujia/shucheng_1.png"
          alt=""
          slot="icon"
        />
        <img v-else src="../assets/shujia/shucheng_0.png" alt="" slot="icon" />
        书城</mt-tab-item
      >

      <mt-tab-item id="fenlei">
        <img
          v-if="false"
          src="../assets/shujia/fenlei_1.png"
          alt=""
          slot="icon"
        />
        <img v-else src="../assets/shujia/fenlei_0.png" alt="" slot="icon" />
        分类</mt-tab-item
      >

      <mt-tab-item id="wode">
        <img
          v-if="false"
          src="../assets/shujia/wode_1.png"
          alt=""
          slot="icon"
        />
        <img v-else src="../assets/shujia/wode_0.png" alt="" slot="icon" />
        我的</mt-tab-item
      >
    </mt-tabbar>
  </div>
</template>
<style>
.wode {
  /* background-color: #e8e8e8; */
  padding: 0  10px;
}
.touxiang .span{
  margin-top: 16px;
}
.wode .touxiang {
  height: 200px;
  background-color: #febf85;
  /* background-image: linear-gradient(to right,#e5b6a0,#febf85); */
  line-height: 200px;
  border: 1px solid #eee;
  box-shadow:0px 0px 10px #999;
  margin-bottom: 20px;
  display: flex;
 justify-content: center;
 border-radius: 15px;


}
.wode .touxiang img {
  width: 100px;
  height: 100px;
  position: absolute;
}
.wode .tz {
  border: 1px solid burlywood;
  background-color: blanchedalmond;
  border-radius: 30px;
  margin-right: 10px;
  margin-bottom: 10px;
  font-size: 20px;
  text-decoration: none;
 
  

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
   box-shadow:0px 0px 10px burlywood ;

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
.wode .liebiao > ul{
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
};
</script>