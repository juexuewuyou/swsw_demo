<template>
    <div class="detail">
    <div class="header">
        <img class="img" src="../assets/books/no_book.gif" alt="">
        <h3>沉迷大脑的记忆</h3>
        <span>作者：xxxxx</span>
     </div>
        <p>
            <a href="#">假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文
                假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文
                假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文
                假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文
                假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文假文</a>
        </p>
        <div class="middle">
           <img src="../assets/icon/menu.png" alt="">
            <button class="button">目录</button>
        </div>
            <div>
            <h3>热门评论</h3>
            <div class="foot"  >
                 <img src="../assets/icon/menu.png" alt="">
                  <div  class="right">
                      <div>
                      <div class="nicheng">昵称：XXX</div>
                      <div class="shijian">书籍时间</div>
                      </div>
                 <div class="dz">
                      <img  src="../assets/icon/menu.png" alt="">
                      <!-- <p>点赞数</p> -->
                 </div>
                 </div>
            </div>
            <div>Lorem ipdipisicing elit. Tempore accusantium quis, necessitatibus nihil ab rerum itaque similique tempora co </div> 
            </div>
        <mt-tabbar >
            <mt-tab-item>立即阅读</mt-tab-item>
            <mt-tab-item>加入书架</mt-tab-item>
        </mt-tabbar>
    </div>
</template>
<style scoped>
.detail .header{
    text-align: center;
} 
.detail .header>img {
    width:150px ;height: 200px;
}
.detail .middle{
    width: 80%;
    height: 30px;
    border: 1px solid #999;
    border-radius: 20px;
    box-shadow: 5px 5px 3px #999;
}
.detail .middle .button{
    border: 1px solid#fff;
    font-size: 16px;
    margin-top:1px ;
}
.detail .middle>img{
    width: 25px;
    height: 25px;
    margin-left:5px ;
}
.detail .foot{
    margin-left:2px;
    display: flex;
}
.detail .foot .right{
    width:280px ;
    display: flex; 
    justify-content: space-between;
}
/* 时间样式 */
.shijian{
    font-size: 12px;
    color: gray;
    margin-left: 5px;
    margin-top:5px ;
}
.detail .foot .right .dz{
    width: 25px;height: 25px;
}
.detail .foot .right .dz>img{
    width: 100%;
}
/* 头像样式 */
.detail .foot>img{
    width: 50px;height: 50px;
    margin-right: 2px;
    border-radius: 50%;
}
p{
    width: 350px;
    height: 60px;
    font-size: 14px;
    color: gray;
}
p>a{
    display: block;
    width:100%;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;

}
p>a:hover{
    display: block;
    width: 100%;
    overflow: auto;
    white-space: normal;
}
.detail .foot{
    margin-right:2px;
}
</style>
