<template>
  <div class="yuedu">
    <mt-header class="header" fixed title="阅读历史">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>

    <mt-navbar v-model="selected">
      <mt-tab-item id="1" class="ydls">浏览历史</mt-tab-item>
      <mt-tab-item id="2" class="sjls">书架历史</mt-tab-item>
    </mt-navbar>
    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="1">
        浏览历史
        <div class="mian">
          <router-link  to="/detail">
          <div class="mian1">
            <div class="shuimg"><img src="../assets/zrn.jpg" alt="" /></div>
              <div class="shunews">
                <h3>书名xxx</h3>
                <p class="zhangjie">第一章xxx</p>
                <p class="liuhan">浏览时间：xxx</p>
              </div>
              <div class="open">
                <router-link to="/">打开</router-link>
              </div>
              </div>
              </router-link>
            </div>
      </mt-tab-container-item>
      <mt-tab-container-item id="2">
        书架历史
        <div class="mian">
          <router-link  to="/detail">
          <div class="mian1">
            <div class="shuimg"><img src="../assets/zrn.jpg" alt="" /></div>
              <div class="shunews">
                <h3>书名aaa</h3>
                <p class="zhangjie">第二章xxx</p>
                <p class="liuhan">浏览时间：xxx</p>
              </div>
              <div class="open">
                <router-link to="/">打开</router-link>
              </div>
              </div>
              </router-link>
            </div>
      </mt-tab-container-item>
    </mt-tab-container>
  </div>
</template>
<script>
export default {
  data() {
    return {
      selected: "1",
    };
  },
};
</script>
<style>
.yuedu .header {
  background-color: orange;
  height: 70px;
  font-size: 24px;
  color: black;
  font-style: italic;
}
.yuedu .mian1 {
  display: flex;
}
.yuedu .mian1 .shuimg >img{
    width: 100px;height: 130px;
}
.yuedu .mian1 .shunews .zhangjie {
  font-size: 12px;
  color: #999;

}
.yuedu .mian1 .shunews .liuhan {
  font-size: 12px;
  color: #999;
}
.yuedu .mian1 .shunews{
    margin-left: 10px;
    width:170px;height: 120px;
}
.yuedu .mian1 .open{
    margin-top:60px ;
    width: 80px;height: 25px;
    border:1px solid #999;
    border-radius: 15px;
    text-align: center;
    color:#999;
   
}
.router-link-active{
 text-decoration: none;
}
</style>