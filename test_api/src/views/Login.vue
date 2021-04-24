<template>
    <div>
        <mt-header title="学前端,到学问">
            <router-link to="/register" slot="right">免费注册</router-link>
            <span slot="left">欢迎光临!</span>
        </mt-header>
        <div>
            <mt-field type="text" v-model="username" label="用户名:" placeholder="请输入用户名"></mt-field>
            <mt-field name="" v-model="password" type="password" label="密码:" placeholder="请输入密码"></mt-field>
            <mt-button type="primary" size="large" @click="login">快速登录</mt-button>
        </div>
    </div>
</template>
<script>
export default{
   data(){
       return{
           username:"",
           password:""
       }
   },
   
   methods:{
       _axios(){
            let username=this.username
           let password=this.password
            this.axios.post(
               "/login",
                `uname=${username}&upwd=${password}`
           ).then(res=>{
              let result= res.data
               if(result.code== 200){
                   this.$toast({
                       message:'登陆成功',
                       position:'bottom',
                       duration:3000
                   })
                   console.log(result)
                //    //调用vueX,更新用户登录状态
                //    let user = res.data.result
                //     this.$store.commit('updataisLogin',user)
                //      sessionStorage.setItem('isLogin',1)
                //     sessionStorage.setItem('user',JSON.stringify(user))
                //    this.$router.push('/shouye')
               }else{
                   this.$messagebox('登陆失败！密码或用户名错误~')
               }
           })
      },
       login(){
        //   this.$router.push('/shouye')
          this._axios()
   },
       },
       
   mounted(){
       
   }
}
</script>
