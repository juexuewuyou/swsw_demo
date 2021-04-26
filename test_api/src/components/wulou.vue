<template>
    <div class="list">
      <h3 style="align-self: flex-start">现代言情</h3>
      <!-- 有时间了 -->
      <div class="list_for">
        <!-- 推荐 -->
        <div class="list-top">
          <div style="width: 65px; height: 85px">
            <img src="../assets/books/ds_2.jpg" alt="" style="width: 100%" />
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
            <div style="width: 25%" v-for="i of 8" :key="i">
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
</template>
<style>
@import "../assets/css/everylou.vue";
</style>
