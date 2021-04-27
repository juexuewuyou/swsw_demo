<template>
  <div class="login">
    <!-- 登录页标题 -->
    <mt-header title="账号登录" class="m-header">
      <router-link to="/register" slot="right">
        <mt-button>注册</mt-button>
      </router-link>
    </mt-header>
    <!-- logo -->
    <div class="logo">
      <img src="../assets/logo.png" alt="" width="100%" />
    </div>
    <!-- 用户登录 -->
    <mt-field
      type="text"
      v-model="username"
      label="用户名:"
      placeholder="请输入用户名/邮箱"
    ></mt-field>
    <mt-field
      name=""
      v-model="password"
      type="password"
      label="密码:"
      placeholder="请输入密码"
    ></mt-field>
    <!-- 登录按钮-->
    <mt-button class="btn" type="primary" size="large" @click="login"
      >登录</mt-button
    >
  </div>
</template>
<style>
.login .m-header {
  background: #fff;

  height: 56px;
  font-size: 16px;
  background-image: linear-gradient(to bottom, #fff, #fff);
}
.login .mint-header-title {
  font-size: 22px;
  color: #f89a43;
}
.login .mint-header-button.is-right {
  color: #8f8f8f;
  text-align: center;
}
.login .logo {
  margin: 0 auto;
  width: 300px;
  height: 195px;
}
.login .mint-button {
  height: 50px;
  border-radius: 30px;
}
.login .btn {
  background-image: linear-gradient(to right, #e5b6a0, #febf85);
}
</style>

<script>
export default {
  data() {
    return {
      username: "",
      password: "",
    };
  },

  methods: {
    _axios() {
      let username = this.username;
      let password = this.password;
      this.axios
        .post("/login", `uname=${username}&upwd=${password}`)
        .then((res) => {
          let result = res.data;
          if (result.code == 200) {
            this.$toast({
              message: "登陆成功",
              position: "bottom",
              duration: 3000,
            });
            console.log(result);
            //    //调用vueX,更新用户登录状态
            //    let user = res.data.result
            //     this.$store.commit('updataisLogin',user)
            //      sessionStorage.setItem('isLogin',1)
            //     sessionStorage.setItem('user',JSON.stringify(user))
            this.$router.push("/shouye");
          } else {
            this.$messagebox("登陆失败！密码或用户名错误~");
          }
        });
    },
    login() {
      //   this.$router.push('/shouye')
      this._axios();
    },
  },

  mounted() {},
};
</script>