set names utf8;
drop database if exists swsw;
create database swsw charset=utf8;
use swsw;




########################################################


#用户信息表
 create table sw_user (
		uid  int primary key auto_increment,
		uname varchar(32) not null,
 		upwd  varchar(128) not null,
 		email varchar(32),
		nick_name varchar(12) unique,
		avatar varchar(126),    
 	gender boolean,
 		phone varchar(11),
		udate datetime
);


########################################################

#书籍类别表
create table sw_relations (
		rid  int  primary key auto_increment,
		rname varchar(12)  unique  not null,
		r_ascription int,
		foreign key(r_ascription) references sw_user(uid)
);

######################################################

#书籍表
create table sw_books (
		bid int primary key  auto_increment,
		bname  varchar(66) not null,
		b_auth  varchar(16),
		b_photo varchar(128),
		b_content text(1000000000) not null,
		b_ascription  int not null,
		b_date datetime,
        # 点赞,初始化零
        b_up int default 0,
		#书籍状态是否完结 0未完结
		b_state boolean ,
		#简介
		b_introduce varchar(516),
		foreign key(b_ascription) references sw_relations(rid)
);


##################################################################

#用户收藏表
create table sw_collection (
	cid int primary key auto_increment,
	cname varchar(66) not null,
	c_ascription int,
	foreign key(c_ascription) references sw_user(uid)
)



