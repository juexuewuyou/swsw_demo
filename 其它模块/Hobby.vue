<template>
    <div class="hobby">
        <h2 class="reading">阅读爱好</h2>
        <div class="button">
         <div id="girl">
            <div :class="g" @click="girl">
                <router-link  to="/wode">女生小说</router-link>
            </div>
              <img v-if="lay" src="../assets/5.png"  alt="">
              <img v-else src="../assets/4.png"  alt="">
              </div> 
            <div id="man">
              <div  :class="m" @click="man">
                  <router-link  to="/wode">男生小说</router-link>
              </div>
              <img v-if="manImg" src="../assets/5.png"  alt="">
              <img v-else src="../assets/4.png"  alt="">
               </div>
              <div id="classic">
                
             <div :class="c" @click="classic">
                  <router-link  to="/wode">经典小说</router-link>
             </div>
               <img v-if="classImg" src="../assets/5.png" alt="">
               <img v-else src="../assets/4.png"  alt="">
            </div>
            <button class="confirm">确认选择</button>
         </div>
    </div>
</template>
<script>
export default {
   name:"",
   data() {
       return {
      lay:true,
      manImg:true,
      classImg:true,
       m:{
           man:true,
           man1:false
       },
       g:{
          man:true,
          man1:false 
       },
       c:{
           man:true,
          man1:false 
       }
     }
   },
   methods:{
      man(){
          if(!this.manImg){
              this.manImg=true;
              this.m.man=true;
              this.m.man1=false;
          }else{
              this.manImg=false
               this.m.man=false;
              this.m.man1=true;
          }
      },
     girl(){
          if(this.lay){
              this.lay=false;
              this.g.man=false;
              this.g.man1=true;
          }else{
              this.lay=true
               this.g.man=true;
              this.g.man1=false;
          }
      }, 
       classic(){
          if(this.classImg){
              this.classImg=false;
              this.c.man=false;
              this.c.man1=true;
          }else{
              this.classImg=true
               this.c.man=true;
              this.c.man1=false;
          }
      }, 
     
   },
}
</script>
<style>
/* 整个文本居中 */
.hobby{
    text-align: center;
}
.hobby .button{
   width:359px;height:500px ;
   border: 1px solid #fff;
}
.reading{
    margin-bottom: 10px;
}
 .hobby .button #girl{
    display: flex; 
}
.hobby .button #man{
    display: flex;
}
.hobby .button #classic{
    display: flex;
}
.hobby .button #girl>img{
     width: 25px;height: 25px;
      margin-top:50px ;
}
.hobby .button #man>img{
     width: 25px;height: 25px;
      margin-top:50px ;
}
.hobby .button #classic>img{
     width: 25px;height: 25px;
      margin-top:50px ;
}
.man{
     width: 260px;height: 120px;
      margin-bottom:10px;
      font-style:oblique;
      font-size: 30px;
      border-radius: 8px;
      margin-left: 48px;
      line-height: 120px;
      background-color: #999;
       background: rgba(0,0,0,0.2);
}
.man1{
    width: 260px;height: 120px;
      margin-bottom:10px;
      font-style:oblique;
      font-size: 30px;
      border-radius: 8px;
      margin-left: 48px;
      line-height: 120px;
      background-color: orange;
}
.hobby .button .confirm{
    width:260px;height: 40px;
    margin-top: 10px;
    border-radius: 20px;
    background-color: orange;
    font-size: 16px;
    border: none;
}
.router-link{
    text-decoration: none;
}
</style>