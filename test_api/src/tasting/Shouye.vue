<template>
  <div>
  <!-- 顶部导航 -->
    <mt-header v-if="tit" title="三味阅读" fixed class="hr">
     <!--做插槽 -->
      <div slot="left" @click="search">
        <img v-if="l_tit" src="../assets/shujia/sousuo_0.png" alt="" />
      </div>
      <!-- 右插槽-->
      <div slot="right" class="moreover"> 
        <img :style="yc" @click="show" id="xslb" slot="icon" src="../assets/shujia/gengduo_0.png" alt="" />
        <span id="wancheng" @click="finish" :style="xss">完成</span>
      </div>
    </mt-header>

     <!-- input 搜索 -->
    <div v-else fixed class="sousuo">
      <mt-search 
      class="so"
      v-model="value"
      cancel-text="搜索"
      placeholder="搜索">
     </mt-search>
    </div>

    <!-- 显示更多列表 -->
     <div id="xs" :style="vi">
          <ul>
            <li>
            <img src="../assets/shujia/liebiao.png" alt="" slot="icon">
            <span @click="quanxuan">管理书架</span>
            </li>
          </ul>
    </div>

    <!-- 去登录跳转 -->
    <div :class="hear" >
        <div style="width:45px;height:45px">
        <img  width="100%" src="../assets/shujia/weidenglu.png" alt="" slot="icon" />
        </div>
        <span>登录后数据永不丢失&nbsp;&nbsp;</span>
        <router-link class="rk" to="/">去登录?</router-link>
    </div>
      <!-- 书架 router-link跳转按钮-->
      <div class="shujia">
        <div  class="sj_cb">
          
           <div  class="cb nuu"  v-for="item in sw_favorite" :key="item.fid">
            <div>
              <router-link to="/">
               <!-- <img width="100%" src="../assets/shujia/ds_0.jpg" alt=""> -->
                <img width="100%" :src="require('../assets/shujia/'+item.fimg)"/>
              </router-link>
              <div>
               <!--给每个复选按钮绑定同一个v-mode数组变量，数组里面有相应的value就被选中-->
                <input :style="xss" type='checkbox' v-model='arr' :value="item.fid" @click="fn2()">
                </div>
            </div>
        </div>
           <div class="cb nu"><router-link to="/">+</router-link></div>
        </div>
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
      activede: "sj",
      popupVisible:true,
       sw_favorite:[],
        b:[],
        arr:[],
        checked: false,
        // 更多图标开始是显示的
        yc:'display:inline',
        // 底部导航开始是显示的
        dbyc:'display:flex',
        //顶部完成两字 复选框 底部 全选和删除开始的时候都是隐藏的
        xss:'display:none',
        vi:'display:none',
        tit:true,
        l_tit:true,
        hear: {
          ms:true,
          ms1:false
    }}
  },
  methods: {
      

    fn2(){
        setTimeout(() => console.log(this.arr))
      },
      checkedAll: function() {
        if (this.checked) {//实现反选
          this.arr = [];//空数组 点击全选如果当前是true 就把全选取消  把数组置为空
        } else { //实现全选
          this.arr = [];  //如果一开始是false 点击全选实现全部选中,就是数据都添加到数组中
          this.sw_favorite.forEach( (item) => {
            this.arr.push(item.fid);
          });
        }
        setTimeout(() => console.log(this.arr))
      },
    
    search(){
      this.tit=false;
      if(this.hear){
        this.hear.ms=false,
        this.hear.ms1=true
      }
    },
    show(){
      if(this.vi=="display:none"){
         this.vi='display:block'
      }else {
       this.vi='display:none';
      };

    },
    quanxuan(){
      if(this.xss=="display:none"){
        this.xss="display:block";
        this.yc="display:none";
        this.dbyc="display:none";
      }
    },
    finish(){
      this.xss="display:none";
      this.vi="display:none";
      this.yc="dispaly:inline";
      this.dbyc="display:flex";
    },
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
    arr: {
        handler: function (val, oldVal) {
          if (this.arr.length === this.sw_favorite.length) {
            this.checked=true;
          } else {
            this.checked=false;
          }
        },
        deep: true
      }
  }
};
</script>
<style scoped>
/* 头部 */
.hr{
  height: 66px;
  color: #fff;
  font-size: 24px;
  background-color:#febf85;
}
/* 标题 */
 .mint-header-title {
  color: gray;
}
/* 搜索框 */
.sousuo .so{
  height: 10vh;
}
/* 头部导航栏 */
.mint-header img {
  height: 25px;
  width: 25px;
}
/* 显示列表书架管理 */
#xs{
  position: absolute;
  right: 5px;
  height: 100px;
  width: 120px;
  background-color:beige;
  border-radius: 5px;
  display: none;
}
#xs li{
  line-height: 100px; 
  margin: 0 auto;
}
 #xs img{
  width: 20px;
  height: 20px;
  margin-right: 10px; 
}
/* .rk{
  color: gray;
  background-color: #fedcbd;
  border-radius: 30px;
} */
.shujia{
  padding-left:12px
}
.sj_cb{
  width:100%;
  display: flex;
  flex-wrap: wrap;
}
.cb{
width:26%;height: 120px;

}
.nuu{
  margin:10px;
  background-color: red;
}
.nu{
  line-height: 120px;
  margin:10px;
  border: 1px solid gray;
  border-radius: 3px;
  text-align: center;
  box-shadow: 2px 1px 10px 3px #aaa;
  padding: 2px;
  color: gray;
  font-size: 25px;
}
.cb input{
  position: relative;
  top: -14px;
}

ul li {
  padding: 5px;
  margin-left: 5px;
  border-radius: 3px;
}
.ms {
  margin-top: 70px;
  display: flex;
  height: 60px;
  justify-content: left;
  align-items: center;
}
.ms1 {
  display: flex;
  height: 60px;
  justify-content: left;
  align-items: center;
}
.cr {
  margin-top: 20px;
}
/* 复选框 */
div>ul>li input{
  position: absolute;
  left: 5px;
  display: none;
}
#dibu{
  display: none;
  border: 1px solid #afdfe4;
  width: 100%;
  height: 55px;
  line-height: 55px;
  background-color: #afdfe4;
  position:absolute;
  bottom: 0;
}
#dibu .left{
  float: left;
  margin-left: 5px;
}
#dibu .right{
  float: right;
  margin-right: 5px;
}
</style>