<template>
  <div class="reg">
    <mt-header title="注册" class="tit">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <!-- <router-link to="/" slot="right" class="tex"> 已有账号?点击登录 </router-link> -->
    </mt-header>
    <!-- logo -->
    <div>
      <div class="logo">
        <img src="../assets/logo.png" alt="" width="100%" />
      </div>
    </div>
    <div class="bgdiu">
      <mt-field
        label="用户名:"
        v-model="userStr"
        type="text"
        placeholder="请输入用户名"
        :state="userNameState"
      ></mt-field>
      <!-- <mt-field
        label="邮箱:"
        v-model="emailStr"
        type="text"
        placeholder="请输入邮箱"
        :state="userEmail"
      ></mt-field> -->
      <mt-field
        label="密码:"
        v-model="pwdStr"
        :state="pwdState"
        type="password"
        placeholder="请输入密码"
      ></mt-field>
      <mt-field
        label="确认密码:"
        type="password"
        placeholder="请再次输入密码"
        v-model="regPwd"
        :state="regState"
      ></mt-field>
      <mt-button
        class="btn"
        type="primary"
        size="large"
        @click="check"
        :disabled="resa"
        >免费注册</mt-button
      >
    </div>
  </div>
</template>
<style>
.reg  .tit{
 background: rgba(0,0,0,0);
 color:maroon;
 font-size:20px
}
.reg .tex {
  font-size: 12px;
}
.reg .mint-button {
  height: 50px;
  border-radius: 30px;
}
.reg .btn {
  background-image: linear-gradient(to right, #e5b6a0, #febf85);
}
.reg .logo {
  margin: 0 auto;
  width: 300px;
  height: 140px;
}
.reg .bgdiu {
  padding-top: 15px;
}
</style>
<script>
export default {
  data() {
    return {
      userStr: "",
      userNameState: "",
      pwdStr: "",
      pwdState: "",
      regPwd: "",
      regState: "",
      // emailStr: "",
      // userEmail: "",
      resa: true,
    };
  },
  methods: {
    //   验证用户名
    usercheck() {
      if (this.userStr.trim() !== "") {
        let userName = this.userStr;
        let useReg = /^.{6,12}$/;
        let res = useReg.test(userName);
        if (res == true) {
          this.userNameState = "success";
          // return true;
        } else {
          this.userNameState = "error";
          this.resa = true;
          // return false;
        }
      } else {
        this.userNameState = "";
        this.resa = true;
      }
    },
    // //验证邮箱
    // emailcheck() {
    //   if (this.emailStr.trim() !== "") {
    //     let emailName = this.emailStr;
    //     let emailReg = /^([a-zA-Z\d])(\w|\-)+@[a-zA-Z\d]+\.[a-zA-Z]{2,4}$/;
    //     let res = emailReg.test(emailName);
    //     console.log(res)
    //     if (res == true) {
    //       this.userEmail = "success";
    //     } else {
    //       this.userNameState = "error";
    //       this.resa = true;
    //     }
    //   } else {
    //     this.userEmail = "";
    //     this.resa = true;
    //   }
    // },
    //验证密码
    pwdcheck() {
      let Reg = /^\d{6}$/;
      let pwd = this.pwdStr;
      let res = Reg.test(pwd);
      if (pwd.trim() !== "") {
        if (res == true) {
          this.pwdState = "success";
          // return true;
        } else {
          this.pwdState = "error";
          this.resa = true;
          // return false;
        }
      } else {
        this.pwdState = "";
        this.resa = true;
      }
    },
    //密码确认
    regcheck() {
      let Reg = /^\d{6}$/;
      let pwd = this.regPwd;
      let res = Reg.test(pwd);
      if (this.regPwd.trim() !== "") {
        if (this.pwdStr.trim() == this.regPwd && res == true) {
          this.regState = "success";
          this.resa = false;
          // return true;
        } else {
          this.regState = "error";
          this.resa = true;
          // return false;
        }
      } else {
        this.regState = "";
        this.resa = true;
      }
    },
    aa() {
      this.pwdcheck();
      this.regcheck();
      this.usercheck();
      // this.emailcheck()
    },
    //点击登录
    check() {
      let userstr = this.userStr;
      let pwdstr = this.pwdStr;
      // console.log(userstr,pwdstr)
      this.axios
        .post("/register", `uname=${userstr}&upwd=${pwdstr}`)
        .then((res) => {
          //注册成功或失败后执行的操作
          console.log(res.data);
        });
      this.userStr = "";
      this.pwdStr = "";
      this.regPwd = "";
      this.$router.push("/");
    },
  },
  watch: {
    userStr() {
      this.aa();
    },
    pwdStr() {
      this.aa();
    },
    regPwd() {
      this.aa();
    }
    //  emailStr(){
    //    this.aa()
    //  }
  },
};
</script>