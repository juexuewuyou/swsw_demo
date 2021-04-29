<template>
    <div class="san">
          <div class="f_ph">
            <div class="ph">
              <span>排行榜 · 4月21日</span>
              <router-link to="/shucheng">
                <span style="color: #666"
                  >完整榜单
                  <img src="../assets/icon/right.png" alt="" />
                </span>
              </router-link>
            </div>
          </div>
          <!--路由嵌套  ╭榜单╮  -->
          <mt-navbar  v-model="bd" class="san_bd">
            <mt-tab-item id="wj"   class="font_bd">完结榜</mt-tab-item>
            <mt-tab-item id="dr" class="font_bd">大热榜</mt-tab-item>
            <mt-tab-item id="hp" class="font_bd">好评榜</mt-tab-item>
            <mt-tab-item id="tj" class="font_bd">推荐榜</mt-tab-item>
          </mt-navbar>
          <mt-tab-container v-model="bd">
            <mt-tab-container-item id="wj" >
              <!-- 完结榜 -->
              <div class="bd_container1">
               <div class="container_text"  v-for="i of 4">
                 <!-- 文本区域1 -->
                 <div style="width:64px;height:85px">
                   <!-- 书籍图片 -->
                   <img style="width:100%" src="../assets/books/ds_1.jpg" alt="">
                 </div>
                 <div class="bd_details">
                   <!-- 书名 -->
                  <span>国士无双</span>
                <span style="font-size:6px;color:gray">都市·言情</span>
                 </div>
               </div>
                
              </div>
              
            </mt-tab-container-item>
            <mt-tab-container-item id="dr">
              <!-- 大热榜 -->
                <div class="bd_container1">
               <div class="container_text"  v-for="i of 3">
                 <!-- 文本区域1 -->
                 <div style="width:64px;height:85px">
                   <!-- 书籍图片 -->
                   <img style="width:100%" src="../assets/books/ds_2.jpg" alt="">
                 </div>
                 <div class="bd_details">
                   <!-- 书名 -->
                  <span>王牌神医</span>
                <span style="font-size:6px;color:gray">都市·言情</span>
                 </div>
               </div>
                
              </div>
            </mt-tab-container-item>
            <mt-tab-container-item id="hp">
              <!-- 好评榜 -->
                <div class="bd_container1">
               <div class="container_text"  v-for="i of 3">
                 <!-- 文本区域1 -->
                 <div style="width:64px;height:85px">
                   <!-- 书籍图片 -->
                   <img style="width:100%" src="../assets/books/xh_2.jpg" alt="">
                 </div>
                 <div class="bd_details">
                   <!-- 书名 -->
                  <span>万古灵劫</span>
                <span style="font-size:6px;color:gray">玄幻·修真</span>
                 </div>
               </div>
                
              </div>
            </mt-tab-container-item>
            <mt-tab-container-item id="tj">
             <!-- 推荐榜 -->
               <div class="bd_container1">
               <div class="container_text"  v-for="i of 3">
                 <!-- 文本区域1 -->
                 <div style="width:64px;height:85px">
                   <!-- 书籍图片 -->
                   <img style="width:100%" src="../assets/books/xh_4.jpg" alt="">
                 </div>
                 <div class="bd_details">
                   <!-- 书名 -->
                  <span>灵武天下</span>
                <span style="font-size:6px;color:gray">玄幻·修真</span>
                 </div>
               </div>
                
              </div>
            </mt-tab-container-item>
          </mt-tab-container>
        </div>
</template>
<style>
  @import '../assets/css/sanlou.css';
</style>
<script>
export default {
  props:["p1","p2","p3","p4","p5","p6"],
  data(){
    return {
      bd:'wj',
    }
  }
}
</script>