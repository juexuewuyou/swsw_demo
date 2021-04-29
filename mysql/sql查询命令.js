/////////////////////////登录和注册/////////////////////////////
//注册
//   接口     用户名    密码
/register    uname     upwd
    
//登录
//  接口       用户名      密码
/login         uname      upwd

///////////////////////////////////////////////////////////////////////////////
///  书籍表      ////   用户信息表  ////   书籍分类表   /////   收藏表          //
///////////////////////////////////////////////////////////////////////////////
///// sw_books  //     sw_user     //    sw_relations  ////   sw_collection  //
///////////////////////////////////////////////////////////////////////////////






//////////////////////分类查询///////////////////////////////////

// 查询现实分类下有哪些书籍;b_ascription=90
 // select * from sw_books where b_ascription=(select rid from sw_relations where rname="现实");
 
 // 查询都市分类下有哪些书籍;b_ascription=40
 // select * from sw_books where b_ascription=(select rid from sw_relations where rname="都市");
 
 // 查询历史分类下有哪些书籍;b_ascription=80
 //select * from sw_books where b_ascription=(select rid from sw_relations where rname="历史");
 
 // 查询历史分类下有哪些书籍;b_ascription=70
 //select * from sw_books where b_ascription=(select rid from sw_relations where rname="玄幻");