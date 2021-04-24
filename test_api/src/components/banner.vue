<template>
  <div
          style="
            padding: 12px;
            background-image: linear-gradient(to right, #e5b6a0, #febf85);
            border-radius: 0px 0px 8px 8px;
            top: 100px;
          "
        >
         <!-- 轮播图 -->
    <mt-swipe
      class="swipe"
      :style="{ height: h }"
      :auto="2000"
      :speed="300"
      :show-indicators="true"
      :continuous="true"
    >
      <mt-swipe-item>
        <img
          src="../assets/banner/banner5.webp"
          style="width: 100%"
          class="s_img"
          alt=""
        />
      </mt-swipe-item>
      <mt-swipe-item>
        <img
          src="../assets/banner/banner6.webp"
          style="width: 100%"
          class="s_img"
          alt=""
        />
      </mt-swipe-item>
      <mt-swipe-item>
        <img
          src="../assets/banner/banner7.webp"
          style="width: 100%"
          class="s_img"
          alt=""
        />
      </mt-swipe-item>
      <mt-swipe-item>
        <img src="../assets/banner/banner8.webp" style="width: 100%" alt="" />
      </mt-swipe-item>
    </mt-swipe>
         
        </div>
</template>
<script>
export default {
  data() {
    return {
      h: "100px",
    };
  },
  mounted() {
    // 初始化适配轮播图的高度
    let picwidth = 1242;
    let picheight = 698;
    // 屏幕宽
    let screenwidth = window.screen.width;
    let height = Math.floor((picheight * screenwidth) / picwidth) + "px";
    // 把计算得到的height，赋值给data中的变量，动态更新轮播图
    this.h = height;
  },
};
</script>
