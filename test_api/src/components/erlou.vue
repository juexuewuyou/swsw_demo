
<template>
   <div id="er">
        <div class="erpdd">
          <div class="er_container">
            <div class="left" v-if="p1">
              <div class="myleft">
                <div>
                  <span>{{p1.cname}}</span>
                  <p></p>
                </div>
              </div>
            </div>
            <div class="right">
              <div class="myright">
                <div>
                  <span>{{p2.cname}}</span>
                  <p>热门小说畅读</p>
                </div>
              </div>
            </div>
            <div class="bottom">
              <div class="mybottom">
                <span>{{p3.cname}}</span>
                <p>爽文·升级</p>
              </div>
            </div>
            <div class="bottom">
              <div class="mybottom">
                <span>{{p4.cname}}</span>
                <p> 经典·必读</p>
              </div>
            </div>
             <div class="bottom">
              <div class="mybottom">
                <span>{{p5.cname}}</span>
                <p>眼光·格局</p>
              </div>
            </div>
          </div>
        </div>
      </div>
</template>
<script>
export default {
    props:["p1","p2","p3","p4","p5","p6"],
    data() {
      return {

      }
    },
    methods:{
     
    },
    mounted(){
     
    }
}
</script>
<style>
  @import '../assets/css/erlou.css';
</style>